#include "fpu.h"
#include <cassert>
#include <chrono>
#include <cstdio>
#include <cstring>
#include <fstream>
#include <iostream>
#include <stdint.h>
#include <stdlib.h>
#include <vector>

#define MEMSIZE 8192 * 8
#define MEMBASE 0x100000

typedef struct {
  uint32_t idx;
  uint32_t value;
} val_t;

typedef struct {
  std::vector<val_t> regs;
  std::vector<val_t> mem;
} check_t;

static uint32_t be2mask(uint8_t be) {
  uint32_t mask = 0;
  for (unsigned i = 0; i < 4; i++) {
    if (be & (1 << i)) {
      mask |= 0xff << i * 8;
    }
  }
  return mask;
}

static unsigned addr2idx(uint32_t addr, size_t mem_base) {
  return (addr - mem_base) / sizeof(uint32_t);
}

static bool finished = false;

static float simulate(FPU &model, ValueChangeDump<FPULayout> *vcd,
                      uint32_t *mem, size_t len, size_t mem_base,
                      unsigned max_cycles, bool verbose) {
  auto &FPU = model.view;
  float simFrequency = 0;
  FPU.io_req_bits_uop_uopc =
      0; // generators/boom/src/main/scala/v3/exu/execution-units/fpu.scala:172:14
  FPU.io_req_bits_uop_imm_packed =
      0; // generators/boom/src/main/scala/v3/exu/execution-units/fpu.scala:172:14
  FPU.io_req_bits_fcsr_rm =
      1; // generators/boom/src/main/scala/v3/exu/execution-units/fpu.scala:172:14
  FPU.io_req_valid = 0;
  FPU.reset = 1;
  FPU.clock = 1;
  model.eval();
  FPU.clock = 0;
  model.eval();
#ifdef TRACE
  vcd->writeTimestep(1);
#endif
  FPU.reset = 0;

  printf("starting");
  for (unsigned i = 0; i < 1000000; i++) {
    FPU.io_req_valid = 1;
    FPU.io_req_bits_rs1_data = Bytes<9>();
    FPU.io_req_bits_rs2_data = Bytes<9>();
    FPU.io_req_bits_rs3_data = Bytes<9>();
    FPU.clock = 1;
    model.eval();
    FPU.clock = 0;
    model.eval();
    FPU.io_req_valid = 1;
    FPU.io_req_valid = 0;
    while (!FPU.io_resp_valid) {
      printf("%d %d %d\n", FPU.io_resp_valid, FPU.io_resp_bits_fflags_valid,
             FPU.io_resp_bits_fflags_bits_flags); // prints 1
      FPU.clock = 1;
      model.eval();
      FPU.clock = 0;
      model.eval();
    }
  }
  return 0;
}

static bool dhrystone() {
  FPU FPU;
  ValueChangeDump<FPULayout> *vcd_ptr = nullptr;
#ifdef TRACE
  std::ofstream os("dhrystone.vcd");
  ValueChangeDump<FPULayout> vcd = FPU.vcd(os);
  vcd_ptr = &vcd;
#endif
  uint32_t mem[MEMSIZE];

  printf("simulating");
  finished = false;
  auto simFrequency =
      simulate(FPU, vcd_ptr, (uint32_t *)mem, MEMSIZE, MEMBASE, 10, false);
  printf("%f\n", simFrequency);
  return !finished;
}

static bool loads() {}

int main(int argc, char **argv) {
  bool failed = false;
  if (argc > 2) {
    fprintf(stderr, "Format: riscinator-main (itype|jmps|dhrystone)?\n");
    return 0;
  }
#ifdef TRACE
  fprintf(stderr, "Tracing enabled!\n");
#endif
  if (argc == 1 || !std::strcmp(argv[1], "dhrystone")) {
    fprintf(stderr, "** start simulating dhrystone **\n");
    for (int i = 0; i < 10; ++i)
      failed |= dhrystone();
  }

  if (failed)
    return 1;
  fprintf(stderr, "ALL TESTS PASSED\n");
  return 0;
}
