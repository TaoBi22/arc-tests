#include "rocket-cxxrtl.cpp"
#include "rocket-model.h"
#include <backends/cxxrtl/cxxrtl_vcd.h>
#include <iostream>

namespace {
class CXXRTLRocketModel : public RocketModel {
  cxxrtl_design::p_RocketSystem model;

public:
  CXXRTLRocketModel() { name = "cxxrtl"; }
  ~CXXRTLRocketModel() {
    // if (model_vcd)
    // model_vcd->close();
  }

  void vcd_start(const char *outputFile) override {
    // cxxrtl::vcd_writer model_vcd;
#ifdef TRACE
    // TODO: sort tracing
    // model.trace(model_vcd.get(), 10000);
#endif
    // model_vcd->open(outputFile);
  }

  void vcd_dump(size_t cycle) override {
    // if (model_vcd)
    // model_vcd->dump(static_cast<ulong unsigned64_t>(cycle));
  }

  void clock() override {
    set_clock(true);
    model.step();
    set_clock(false);
    model.step();
  }

  void passthrough() override { model.step(); }

  Ports get_ports() override {
    return {
#define PORT(name) model.name.get<unsigned long>(),
#include "rocket-cxxrtl-ports.def"
    };
  }

  void set_reset(bool reset) override {
    // clang-format off
    model.p_reset.set<bool>(reset);
    // model.auto_prci_ctrl_domain_tileResetSetter_clock_in_member_allClocks_implicit_clock_reset = reset;
    // model.auto_prci_ctrl_domain_tileResetSetter_clock_in_member_allClocks_subsystem_cbus_0_reset = reset;
    // model.auto_prci_ctrl_domain_tileResetSetter_clock_in_member_allClocks_subsystem_mbus_0_reset = reset;
    // model.auto_prci_ctrl_domain_tileResetSetter_clock_in_member_allClocks_subsystem_fbus_0_reset = reset;
    // model.auto_prci_ctrl_domain_tileResetSetter_clock_in_member_allClocks_subsystem_pbus_0_reset = reset;
    // model.auto_prci_ctrl_domain_tileResetSetter_clock_in_member_allClocks_subsystem_sbus_1_reset = reset;
    // model.auto_prci_ctrl_domain_tileResetSetter_clock_in_member_allClocks_subsystem_sbus_0_reset = reset;
    // clang-format on
  }

  void set_clock(bool clock) {
    // clang-format off
    model.p_clock.set<bool>(clock);
    // model.auto_prci_ctrl_domain_tileResetSetter_clock_in_member_allClocks_implicit_clock_clock = clock;
    // model.auto_prci_ctrl_domain_tileResetSetter_clock_in_member_allClocks_subsystem_cbus_0_clock = clock;
    // model.auto_prci_ctrl_domain_tileResetSetter_clock_in_member_allClocks_subsystem_mbus_0_clock = clock;
    // model.auto_prci_ctrl_domain_tileResetSetter_clock_in_member_allClocks_subsystem_fbus_0_clock = clock;
    // model.auto_prci_ctrl_domain_tileResetSetter_clock_in_member_allClocks_subsystem_pbus_0_clock = clock;
    // model.auto_prci_ctrl_domain_tileResetSetter_clock_in_member_allClocks_subsystem_sbus_1_clock = clock;
    // model.auto_prci_ctrl_domain_tileResetSetter_clock_in_member_allClocks_subsystem_sbus_0_clock = clock;
    // clang-format on
  }

  void set_mem(AxiInputs &in) override {
    model.p_mem__axi4__0__w__ready.set<bool>(in.aw_ready);
    model.p_mem__axi4__0__w__ready.set<bool>(in.w_ready);
    model.p_mem__axi4__0__b__valid.set<bool>(in.b_valid);
    model.p_mem__axi4__0__b__bits__id.set<uint32_t>(in.b_id);
    model.p_mem__axi4__0__b__bits__resp.set<uint32_t>(in.b_resp);
    model.p_mem__axi4__0__r__ready.set<bool>(in.ar_ready);
    model.p_mem__axi4__0__r__valid.set<bool>(in.r_valid);
    model.p_mem__axi4__0__r__bits__id.set<uint32_t>(in.r_id);
    model.p_mem__axi4__0__w__bits__data.set<uint64_t>(in.r_data);
    model.p_mem__axi4__0__w__bits__strb.set<uint32_t>(in.r_resp);
    model.p_mem__axi4__0__w__bits__last.set<uint32_t>(in.r_last);
  }

  AxiOutputs get_mem() override {
    AxiOutputs out;
    out.aw_valid = model.p_mem__axi4__0__aw__valid.get<bool>();
    out.aw_id = model.p_mem__axi4__0__aw__bits__id.get<uint32_t>();
    out.aw_addr = model.p_mem__axi4__0__aw__bits__addr.get<uint32_t>();
    out.aw_len = model.p_mem__axi4__0__aw__bits__len.get<uint32_t>();
    out.aw_size = model.p_mem__axi4__0__aw__bits__size.get<uint32_t>();
    out.w_valid = model.p_mem__axi4__0__w__valid.get<bool>();
    out.w_data = model.p_mem__axi4__0__w__bits__data.get<uint64_t>();
    out.w_strb = model.p_mem__axi4__0__w__bits__strb.get<uint32_t>();
    out.w_last = model.p_mem__axi4__0__w__bits__last.get<uint32_t>();
    out.b_ready = model.p_mem__axi4__0__b__ready.get<bool>();
    out.ar_valid = model.p_mem__axi4__0__ar__valid.get<bool>();
    out.ar_id = model.p_mem__axi4__0__ar__bits__id.get<uint32_t>();
    out.ar_addr = model.p_mem__axi4__0__ar__bits__addr.get<uint32_t>();
    out.ar_len = model.p_mem__axi4__0__ar__bits__len.get<uint32_t>();
    out.ar_size = model.p_mem__axi4__0__ar__bits__size.get<uint32_t>();
    out.r_ready = model.p_mem__axi4__0__r__ready.get<bool>();
    return out;
  }
};
} // namespace

std::unique_ptr<RocketModel> makeCXXRTLModel() {
  return std::make_unique<CXXRTLRocketModel>();
}
