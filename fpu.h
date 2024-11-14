#include "arcilator-runtime.h"
extern "C" {
void FPU_eval(void* state);
}

class FPULayout {
public:
  static const char *name;
  static const unsigned numStates;
  static const unsigned numStateBytes;
  static const std::array<Signal, 249> io;
  static const Hierarchy hierarchy;
};

const char *FPULayout::name = "FPU";
const unsigned FPULayout::numStates = 249;
const unsigned FPULayout::numStateBytes = 824;
const std::array<Signal, 249> FPULayout::io = {
  Signal{"clock", 0, 1, Signal::Input},
  Signal{"reset", 1, 1, Signal::Input},
  Signal{"io_req_valid", 2, 1, Signal::Input},
  Signal{"io_req_bits_uop_uopc", 3, 7, Signal::Input},
  Signal{"io_req_bits_uop_inst", 4, 32, Signal::Input},
  Signal{"io_req_bits_uop_debug_inst", 8, 32, Signal::Input},
  Signal{"io_req_bits_uop_is_rvc", 12, 1, Signal::Input},
  Signal{"io_req_bits_uop_debug_pc", 16, 40, Signal::Input},
  Signal{"io_req_bits_uop_iq_type", 21, 3, Signal::Input},
  Signal{"io_req_bits_uop_fu_code", 22, 10, Signal::Input},
  Signal{"io_req_bits_uop_ctrl_br_type", 24, 4, Signal::Input},
  Signal{"io_req_bits_uop_ctrl_op1_sel", 25, 2, Signal::Input},
  Signal{"io_req_bits_uop_ctrl_op2_sel", 26, 3, Signal::Input},
  Signal{"io_req_bits_uop_ctrl_imm_sel", 27, 3, Signal::Input},
  Signal{"io_req_bits_uop_ctrl_op_fcn", 28, 5, Signal::Input},
  Signal{"io_req_bits_uop_ctrl_fcn_dw", 29, 1, Signal::Input},
  Signal{"io_req_bits_uop_ctrl_csr_cmd", 30, 3, Signal::Input},
  Signal{"io_req_bits_uop_ctrl_is_load", 31, 1, Signal::Input},
  Signal{"io_req_bits_uop_ctrl_is_sta", 32, 1, Signal::Input},
  Signal{"io_req_bits_uop_ctrl_is_std", 33, 1, Signal::Input},
  Signal{"io_req_bits_uop_iw_state", 34, 2, Signal::Input},
  Signal{"io_req_bits_uop_iw_p1_poisoned", 35, 1, Signal::Input},
  Signal{"io_req_bits_uop_iw_p2_poisoned", 36, 1, Signal::Input},
  Signal{"io_req_bits_uop_is_br", 37, 1, Signal::Input},
  Signal{"io_req_bits_uop_is_jalr", 38, 1, Signal::Input},
  Signal{"io_req_bits_uop_is_jal", 39, 1, Signal::Input},
  Signal{"io_req_bits_uop_is_sfb", 40, 1, Signal::Input},
  Signal{"io_req_bits_uop_br_mask", 41, 8, Signal::Input},
  Signal{"io_req_bits_uop_br_tag", 42, 3, Signal::Input},
  Signal{"io_req_bits_uop_ftq_idx", 43, 4, Signal::Input},
  Signal{"io_req_bits_uop_edge_inst", 44, 1, Signal::Input},
  Signal{"io_req_bits_uop_pc_lob", 45, 6, Signal::Input},
  Signal{"io_req_bits_uop_taken", 46, 1, Signal::Input},
  Signal{"io_req_bits_uop_imm_packed", 48, 20, Signal::Input},
  Signal{"io_req_bits_uop_csr_addr", 52, 12, Signal::Input},
  Signal{"io_req_bits_uop_rob_idx", 54, 5, Signal::Input},
  Signal{"io_req_bits_uop_ldq_idx", 55, 3, Signal::Input},
  Signal{"io_req_bits_uop_stq_idx", 56, 3, Signal::Input},
  Signal{"io_req_bits_uop_rxq_idx", 57, 2, Signal::Input},
  Signal{"io_req_bits_uop_pdst", 58, 6, Signal::Input},
  Signal{"io_req_bits_uop_prs1", 59, 6, Signal::Input},
  Signal{"io_req_bits_uop_prs2", 60, 6, Signal::Input},
  Signal{"io_req_bits_uop_prs3", 61, 6, Signal::Input},
  Signal{"io_req_bits_uop_ppred", 62, 4, Signal::Input},
  Signal{"io_req_bits_uop_prs1_busy", 63, 1, Signal::Input},
  Signal{"io_req_bits_uop_prs2_busy", 64, 1, Signal::Input},
  Signal{"io_req_bits_uop_prs3_busy", 65, 1, Signal::Input},
  Signal{"io_req_bits_uop_ppred_busy", 66, 1, Signal::Input},
  Signal{"io_req_bits_uop_stale_pdst", 67, 6, Signal::Input},
  Signal{"io_req_bits_uop_exception", 68, 1, Signal::Input},
  Signal{"io_req_bits_uop_exc_cause", 72, 64, Signal::Input},
  Signal{"io_req_bits_uop_bypassable", 80, 1, Signal::Input},
  Signal{"io_req_bits_uop_mem_cmd", 81, 5, Signal::Input},
  Signal{"io_req_bits_uop_mem_size", 82, 2, Signal::Input},
  Signal{"io_req_bits_uop_mem_signed", 83, 1, Signal::Input},
  Signal{"io_req_bits_uop_is_fence", 84, 1, Signal::Input},
  Signal{"io_req_bits_uop_is_fencei", 85, 1, Signal::Input},
  Signal{"io_req_bits_uop_is_amo", 86, 1, Signal::Input},
  Signal{"io_req_bits_uop_uses_ldq", 87, 1, Signal::Input},
  Signal{"io_req_bits_uop_uses_stq", 88, 1, Signal::Input},
  Signal{"io_req_bits_uop_is_sys_pc2epc", 89, 1, Signal::Input},
  Signal{"io_req_bits_uop_is_unique", 90, 1, Signal::Input},
  Signal{"io_req_bits_uop_flush_on_commit", 91, 1, Signal::Input},
  Signal{"io_req_bits_uop_ldst_is_rs1", 92, 1, Signal::Input},
  Signal{"io_req_bits_uop_ldst", 93, 6, Signal::Input},
  Signal{"io_req_bits_uop_lrs1", 94, 6, Signal::Input},
  Signal{"io_req_bits_uop_lrs2", 95, 6, Signal::Input},
  Signal{"io_req_bits_uop_lrs3", 96, 6, Signal::Input},
  Signal{"io_req_bits_uop_ldst_val", 97, 1, Signal::Input},
  Signal{"io_req_bits_uop_dst_rtype", 98, 2, Signal::Input},
  Signal{"io_req_bits_uop_lrs1_rtype", 99, 2, Signal::Input},
  Signal{"io_req_bits_uop_lrs2_rtype", 100, 2, Signal::Input},
  Signal{"io_req_bits_uop_frs3_en", 101, 1, Signal::Input},
  Signal{"io_req_bits_uop_fp_val", 102, 1, Signal::Input},
  Signal{"io_req_bits_uop_fp_single", 103, 1, Signal::Input},
  Signal{"io_req_bits_uop_xcpt_pf_if", 104, 1, Signal::Input},
  Signal{"io_req_bits_uop_xcpt_ae_if", 105, 1, Signal::Input},
  Signal{"io_req_bits_uop_xcpt_ma_if", 106, 1, Signal::Input},
  Signal{"io_req_bits_uop_bp_debug_if", 107, 1, Signal::Input},
  Signal{"io_req_bits_uop_bp_xcpt_if", 108, 1, Signal::Input},
  Signal{"io_req_bits_uop_debug_fsrc", 109, 2, Signal::Input},
  Signal{"io_req_bits_uop_debug_tsrc", 110, 2, Signal::Input},
  Signal{"io_req_bits_rs1_data", 112, 65, Signal::Input},
  Signal{"io_req_bits_rs2_data", 128, 65, Signal::Input},
  Signal{"io_req_bits_rs3_data", 144, 65, Signal::Input},
  Signal{"io_req_bits_fcsr_rm", 153, 3, Signal::Input},
  Signal{"io_resp_valid", 592, 1, Signal::Output},
  Signal{"io_resp_bits_uop_uopc", 593, 7, Signal::Output},
  Signal{"io_resp_bits_uop_inst", 596, 32, Signal::Output},
  Signal{"io_resp_bits_uop_debug_inst", 600, 32, Signal::Output},
  Signal{"io_resp_bits_uop_is_rvc", 604, 1, Signal::Output},
  Signal{"io_resp_bits_uop_debug_pc", 608, 40, Signal::Output},
  Signal{"io_resp_bits_uop_iq_type", 613, 3, Signal::Output},
  Signal{"io_resp_bits_uop_fu_code", 614, 10, Signal::Output},
  Signal{"io_resp_bits_uop_ctrl_br_type", 616, 4, Signal::Output},
  Signal{"io_resp_bits_uop_ctrl_op1_sel", 617, 2, Signal::Output},
  Signal{"io_resp_bits_uop_ctrl_op2_sel", 618, 3, Signal::Output},
  Signal{"io_resp_bits_uop_ctrl_imm_sel", 619, 3, Signal::Output},
  Signal{"io_resp_bits_uop_ctrl_op_fcn", 620, 5, Signal::Output},
  Signal{"io_resp_bits_uop_ctrl_fcn_dw", 621, 1, Signal::Output},
  Signal{"io_resp_bits_uop_ctrl_csr_cmd", 622, 3, Signal::Output},
  Signal{"io_resp_bits_uop_ctrl_is_load", 623, 1, Signal::Output},
  Signal{"io_resp_bits_uop_ctrl_is_sta", 624, 1, Signal::Output},
  Signal{"io_resp_bits_uop_ctrl_is_std", 625, 1, Signal::Output},
  Signal{"io_resp_bits_uop_iw_state", 626, 2, Signal::Output},
  Signal{"io_resp_bits_uop_iw_p1_poisoned", 627, 1, Signal::Output},
  Signal{"io_resp_bits_uop_iw_p2_poisoned", 628, 1, Signal::Output},
  Signal{"io_resp_bits_uop_is_br", 629, 1, Signal::Output},
  Signal{"io_resp_bits_uop_is_jalr", 630, 1, Signal::Output},
  Signal{"io_resp_bits_uop_is_jal", 631, 1, Signal::Output},
  Signal{"io_resp_bits_uop_is_sfb", 632, 1, Signal::Output},
  Signal{"io_resp_bits_uop_br_mask", 633, 8, Signal::Output},
  Signal{"io_resp_bits_uop_br_tag", 634, 3, Signal::Output},
  Signal{"io_resp_bits_uop_ftq_idx", 635, 4, Signal::Output},
  Signal{"io_resp_bits_uop_edge_inst", 636, 1, Signal::Output},
  Signal{"io_resp_bits_uop_pc_lob", 637, 6, Signal::Output},
  Signal{"io_resp_bits_uop_taken", 638, 1, Signal::Output},
  Signal{"io_resp_bits_uop_imm_packed", 640, 20, Signal::Output},
  Signal{"io_resp_bits_uop_csr_addr", 644, 12, Signal::Output},
  Signal{"io_resp_bits_uop_rob_idx", 646, 5, Signal::Output},
  Signal{"io_resp_bits_uop_ldq_idx", 647, 3, Signal::Output},
  Signal{"io_resp_bits_uop_stq_idx", 648, 3, Signal::Output},
  Signal{"io_resp_bits_uop_rxq_idx", 649, 2, Signal::Output},
  Signal{"io_resp_bits_uop_pdst", 650, 6, Signal::Output},
  Signal{"io_resp_bits_uop_prs1", 651, 6, Signal::Output},
  Signal{"io_resp_bits_uop_prs2", 652, 6, Signal::Output},
  Signal{"io_resp_bits_uop_prs3", 653, 6, Signal::Output},
  Signal{"io_resp_bits_uop_ppred", 654, 4, Signal::Output},
  Signal{"io_resp_bits_uop_prs1_busy", 655, 1, Signal::Output},
  Signal{"io_resp_bits_uop_prs2_busy", 656, 1, Signal::Output},
  Signal{"io_resp_bits_uop_prs3_busy", 657, 1, Signal::Output},
  Signal{"io_resp_bits_uop_ppred_busy", 658, 1, Signal::Output},
  Signal{"io_resp_bits_uop_stale_pdst", 659, 6, Signal::Output},
  Signal{"io_resp_bits_uop_exception", 660, 1, Signal::Output},
  Signal{"io_resp_bits_uop_exc_cause", 664, 64, Signal::Output},
  Signal{"io_resp_bits_uop_bypassable", 672, 1, Signal::Output},
  Signal{"io_resp_bits_uop_mem_cmd", 673, 5, Signal::Output},
  Signal{"io_resp_bits_uop_mem_size", 674, 2, Signal::Output},
  Signal{"io_resp_bits_uop_mem_signed", 675, 1, Signal::Output},
  Signal{"io_resp_bits_uop_is_fence", 676, 1, Signal::Output},
  Signal{"io_resp_bits_uop_is_fencei", 677, 1, Signal::Output},
  Signal{"io_resp_bits_uop_is_amo", 678, 1, Signal::Output},
  Signal{"io_resp_bits_uop_uses_ldq", 679, 1, Signal::Output},
  Signal{"io_resp_bits_uop_uses_stq", 680, 1, Signal::Output},
  Signal{"io_resp_bits_uop_is_sys_pc2epc", 681, 1, Signal::Output},
  Signal{"io_resp_bits_uop_is_unique", 682, 1, Signal::Output},
  Signal{"io_resp_bits_uop_flush_on_commit", 683, 1, Signal::Output},
  Signal{"io_resp_bits_uop_ldst_is_rs1", 684, 1, Signal::Output},
  Signal{"io_resp_bits_uop_ldst", 685, 6, Signal::Output},
  Signal{"io_resp_bits_uop_lrs1", 686, 6, Signal::Output},
  Signal{"io_resp_bits_uop_lrs2", 687, 6, Signal::Output},
  Signal{"io_resp_bits_uop_lrs3", 688, 6, Signal::Output},
  Signal{"io_resp_bits_uop_ldst_val", 689, 1, Signal::Output},
  Signal{"io_resp_bits_uop_dst_rtype", 690, 2, Signal::Output},
  Signal{"io_resp_bits_uop_lrs1_rtype", 691, 2, Signal::Output},
  Signal{"io_resp_bits_uop_lrs2_rtype", 692, 2, Signal::Output},
  Signal{"io_resp_bits_uop_frs3_en", 693, 1, Signal::Output},
  Signal{"io_resp_bits_uop_fp_val", 694, 1, Signal::Output},
  Signal{"io_resp_bits_uop_fp_single", 695, 1, Signal::Output},
  Signal{"io_resp_bits_uop_xcpt_pf_if", 696, 1, Signal::Output},
  Signal{"io_resp_bits_uop_xcpt_ae_if", 697, 1, Signal::Output},
  Signal{"io_resp_bits_uop_xcpt_ma_if", 698, 1, Signal::Output},
  Signal{"io_resp_bits_uop_bp_debug_if", 699, 1, Signal::Output},
  Signal{"io_resp_bits_uop_bp_xcpt_if", 700, 1, Signal::Output},
  Signal{"io_resp_bits_uop_debug_fsrc", 701, 2, Signal::Output},
  Signal{"io_resp_bits_uop_debug_tsrc", 702, 2, Signal::Output},
  Signal{"io_resp_bits_data", 704, 65, Signal::Output},
  Signal{"io_resp_bits_predicated", 713, 1, Signal::Output},
  Signal{"io_resp_bits_fflags_valid", 714, 1, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_uopc", 715, 7, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_inst", 716, 32, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_debug_inst", 720, 32, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_is_rvc", 724, 1, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_debug_pc", 728, 40, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_iq_type", 733, 3, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_fu_code", 734, 10, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_ctrl_br_type", 736, 4, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_ctrl_op1_sel", 737, 2, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_ctrl_op2_sel", 738, 3, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_ctrl_imm_sel", 739, 3, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_ctrl_op_fcn", 740, 5, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_ctrl_fcn_dw", 741, 1, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_ctrl_csr_cmd", 742, 3, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_ctrl_is_load", 743, 1, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_ctrl_is_sta", 744, 1, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_ctrl_is_std", 745, 1, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_iw_state", 746, 2, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_iw_p1_poisoned", 747, 1, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_iw_p2_poisoned", 748, 1, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_is_br", 749, 1, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_is_jalr", 750, 1, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_is_jal", 751, 1, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_is_sfb", 752, 1, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_br_mask", 753, 8, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_br_tag", 754, 3, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_ftq_idx", 755, 4, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_edge_inst", 756, 1, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_pc_lob", 757, 6, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_taken", 758, 1, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_imm_packed", 760, 20, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_csr_addr", 764, 12, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_rob_idx", 766, 5, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_ldq_idx", 767, 3, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_stq_idx", 768, 3, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_rxq_idx", 769, 2, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_pdst", 770, 6, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_prs1", 771, 6, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_prs2", 772, 6, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_prs3", 773, 6, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_ppred", 774, 4, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_prs1_busy", 775, 1, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_prs2_busy", 776, 1, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_prs3_busy", 777, 1, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_ppred_busy", 778, 1, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_stale_pdst", 779, 6, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_exception", 780, 1, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_exc_cause", 784, 64, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_bypassable", 792, 1, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_mem_cmd", 793, 5, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_mem_size", 794, 2, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_mem_signed", 795, 1, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_is_fence", 796, 1, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_is_fencei", 797, 1, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_is_amo", 798, 1, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_uses_ldq", 799, 1, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_uses_stq", 800, 1, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_is_sys_pc2epc", 801, 1, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_is_unique", 802, 1, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_flush_on_commit", 803, 1, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_ldst_is_rs1", 804, 1, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_ldst", 805, 6, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_lrs1", 806, 6, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_lrs2", 807, 6, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_lrs3", 808, 6, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_ldst_val", 809, 1, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_dst_rtype", 810, 2, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_lrs1_rtype", 811, 2, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_lrs2_rtype", 812, 2, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_frs3_en", 813, 1, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_fp_val", 814, 1, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_fp_single", 815, 1, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_xcpt_pf_if", 816, 1, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_xcpt_ae_if", 817, 1, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_xcpt_ma_if", 818, 1, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_bp_debug_if", 819, 1, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_bp_xcpt_if", 820, 1, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_debug_fsrc", 821, 2, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_uop_debug_tsrc", 822, 2, Signal::Output},
  Signal{"io_resp_bits_fflags_bits_flags", 823, 5, Signal::Output},
};

const Hierarchy FPULayout::hierarchy = Hierarchy{"internal", 0, 0, (Signal[]){}, (Hierarchy[]){}};

class FPUView {
public:
  uint8_t &clock;
  uint8_t &reset;
  uint8_t &io_req_valid;
  uint8_t &io_req_bits_uop_uopc;
  uint32_t &io_req_bits_uop_inst;
  uint32_t &io_req_bits_uop_debug_inst;
  uint8_t &io_req_bits_uop_is_rvc;
  uint64_t &io_req_bits_uop_debug_pc;
  uint8_t &io_req_bits_uop_iq_type;
  uint16_t &io_req_bits_uop_fu_code;
  uint8_t &io_req_bits_uop_ctrl_br_type;
  uint8_t &io_req_bits_uop_ctrl_op1_sel;
  uint8_t &io_req_bits_uop_ctrl_op2_sel;
  uint8_t &io_req_bits_uop_ctrl_imm_sel;
  uint8_t &io_req_bits_uop_ctrl_op_fcn;
  uint8_t &io_req_bits_uop_ctrl_fcn_dw;
  uint8_t &io_req_bits_uop_ctrl_csr_cmd;
  uint8_t &io_req_bits_uop_ctrl_is_load;
  uint8_t &io_req_bits_uop_ctrl_is_sta;
  uint8_t &io_req_bits_uop_ctrl_is_std;
  uint8_t &io_req_bits_uop_iw_state;
  uint8_t &io_req_bits_uop_iw_p1_poisoned;
  uint8_t &io_req_bits_uop_iw_p2_poisoned;
  uint8_t &io_req_bits_uop_is_br;
  uint8_t &io_req_bits_uop_is_jalr;
  uint8_t &io_req_bits_uop_is_jal;
  uint8_t &io_req_bits_uop_is_sfb;
  uint8_t &io_req_bits_uop_br_mask;
  uint8_t &io_req_bits_uop_br_tag;
  uint8_t &io_req_bits_uop_ftq_idx;
  uint8_t &io_req_bits_uop_edge_inst;
  uint8_t &io_req_bits_uop_pc_lob;
  uint8_t &io_req_bits_uop_taken;
  uint32_t &io_req_bits_uop_imm_packed;
  uint16_t &io_req_bits_uop_csr_addr;
  uint8_t &io_req_bits_uop_rob_idx;
  uint8_t &io_req_bits_uop_ldq_idx;
  uint8_t &io_req_bits_uop_stq_idx;
  uint8_t &io_req_bits_uop_rxq_idx;
  uint8_t &io_req_bits_uop_pdst;
  uint8_t &io_req_bits_uop_prs1;
  uint8_t &io_req_bits_uop_prs2;
  uint8_t &io_req_bits_uop_prs3;
  uint8_t &io_req_bits_uop_ppred;
  uint8_t &io_req_bits_uop_prs1_busy;
  uint8_t &io_req_bits_uop_prs2_busy;
  uint8_t &io_req_bits_uop_prs3_busy;
  uint8_t &io_req_bits_uop_ppred_busy;
  uint8_t &io_req_bits_uop_stale_pdst;
  uint8_t &io_req_bits_uop_exception;
  uint64_t &io_req_bits_uop_exc_cause;
  uint8_t &io_req_bits_uop_bypassable;
  uint8_t &io_req_bits_uop_mem_cmd;
  uint8_t &io_req_bits_uop_mem_size;
  uint8_t &io_req_bits_uop_mem_signed;
  uint8_t &io_req_bits_uop_is_fence;
  uint8_t &io_req_bits_uop_is_fencei;
  uint8_t &io_req_bits_uop_is_amo;
  uint8_t &io_req_bits_uop_uses_ldq;
  uint8_t &io_req_bits_uop_uses_stq;
  uint8_t &io_req_bits_uop_is_sys_pc2epc;
  uint8_t &io_req_bits_uop_is_unique;
  uint8_t &io_req_bits_uop_flush_on_commit;
  uint8_t &io_req_bits_uop_ldst_is_rs1;
  uint8_t &io_req_bits_uop_ldst;
  uint8_t &io_req_bits_uop_lrs1;
  uint8_t &io_req_bits_uop_lrs2;
  uint8_t &io_req_bits_uop_lrs3;
  uint8_t &io_req_bits_uop_ldst_val;
  uint8_t &io_req_bits_uop_dst_rtype;
  uint8_t &io_req_bits_uop_lrs1_rtype;
  uint8_t &io_req_bits_uop_lrs2_rtype;
  uint8_t &io_req_bits_uop_frs3_en;
  uint8_t &io_req_bits_uop_fp_val;
  uint8_t &io_req_bits_uop_fp_single;
  uint8_t &io_req_bits_uop_xcpt_pf_if;
  uint8_t &io_req_bits_uop_xcpt_ae_if;
  uint8_t &io_req_bits_uop_xcpt_ma_if;
  uint8_t &io_req_bits_uop_bp_debug_if;
  uint8_t &io_req_bits_uop_bp_xcpt_if;
  uint8_t &io_req_bits_uop_debug_fsrc;
  uint8_t &io_req_bits_uop_debug_tsrc;
  Bytes<9> &io_req_bits_rs1_data;
  Bytes<9> &io_req_bits_rs2_data;
  Bytes<9> &io_req_bits_rs3_data;
  uint8_t &io_req_bits_fcsr_rm;
  uint8_t &io_resp_valid;
  uint8_t &io_resp_bits_uop_uopc;
  uint32_t &io_resp_bits_uop_inst;
  uint32_t &io_resp_bits_uop_debug_inst;
  uint8_t &io_resp_bits_uop_is_rvc;
  uint64_t &io_resp_bits_uop_debug_pc;
  uint8_t &io_resp_bits_uop_iq_type;
  uint16_t &io_resp_bits_uop_fu_code;
  uint8_t &io_resp_bits_uop_ctrl_br_type;
  uint8_t &io_resp_bits_uop_ctrl_op1_sel;
  uint8_t &io_resp_bits_uop_ctrl_op2_sel;
  uint8_t &io_resp_bits_uop_ctrl_imm_sel;
  uint8_t &io_resp_bits_uop_ctrl_op_fcn;
  uint8_t &io_resp_bits_uop_ctrl_fcn_dw;
  uint8_t &io_resp_bits_uop_ctrl_csr_cmd;
  uint8_t &io_resp_bits_uop_ctrl_is_load;
  uint8_t &io_resp_bits_uop_ctrl_is_sta;
  uint8_t &io_resp_bits_uop_ctrl_is_std;
  uint8_t &io_resp_bits_uop_iw_state;
  uint8_t &io_resp_bits_uop_iw_p1_poisoned;
  uint8_t &io_resp_bits_uop_iw_p2_poisoned;
  uint8_t &io_resp_bits_uop_is_br;
  uint8_t &io_resp_bits_uop_is_jalr;
  uint8_t &io_resp_bits_uop_is_jal;
  uint8_t &io_resp_bits_uop_is_sfb;
  uint8_t &io_resp_bits_uop_br_mask;
  uint8_t &io_resp_bits_uop_br_tag;
  uint8_t &io_resp_bits_uop_ftq_idx;
  uint8_t &io_resp_bits_uop_edge_inst;
  uint8_t &io_resp_bits_uop_pc_lob;
  uint8_t &io_resp_bits_uop_taken;
  uint32_t &io_resp_bits_uop_imm_packed;
  uint16_t &io_resp_bits_uop_csr_addr;
  uint8_t &io_resp_bits_uop_rob_idx;
  uint8_t &io_resp_bits_uop_ldq_idx;
  uint8_t &io_resp_bits_uop_stq_idx;
  uint8_t &io_resp_bits_uop_rxq_idx;
  uint8_t &io_resp_bits_uop_pdst;
  uint8_t &io_resp_bits_uop_prs1;
  uint8_t &io_resp_bits_uop_prs2;
  uint8_t &io_resp_bits_uop_prs3;
  uint8_t &io_resp_bits_uop_ppred;
  uint8_t &io_resp_bits_uop_prs1_busy;
  uint8_t &io_resp_bits_uop_prs2_busy;
  uint8_t &io_resp_bits_uop_prs3_busy;
  uint8_t &io_resp_bits_uop_ppred_busy;
  uint8_t &io_resp_bits_uop_stale_pdst;
  uint8_t &io_resp_bits_uop_exception;
  uint64_t &io_resp_bits_uop_exc_cause;
  uint8_t &io_resp_bits_uop_bypassable;
  uint8_t &io_resp_bits_uop_mem_cmd;
  uint8_t &io_resp_bits_uop_mem_size;
  uint8_t &io_resp_bits_uop_mem_signed;
  uint8_t &io_resp_bits_uop_is_fence;
  uint8_t &io_resp_bits_uop_is_fencei;
  uint8_t &io_resp_bits_uop_is_amo;
  uint8_t &io_resp_bits_uop_uses_ldq;
  uint8_t &io_resp_bits_uop_uses_stq;
  uint8_t &io_resp_bits_uop_is_sys_pc2epc;
  uint8_t &io_resp_bits_uop_is_unique;
  uint8_t &io_resp_bits_uop_flush_on_commit;
  uint8_t &io_resp_bits_uop_ldst_is_rs1;
  uint8_t &io_resp_bits_uop_ldst;
  uint8_t &io_resp_bits_uop_lrs1;
  uint8_t &io_resp_bits_uop_lrs2;
  uint8_t &io_resp_bits_uop_lrs3;
  uint8_t &io_resp_bits_uop_ldst_val;
  uint8_t &io_resp_bits_uop_dst_rtype;
  uint8_t &io_resp_bits_uop_lrs1_rtype;
  uint8_t &io_resp_bits_uop_lrs2_rtype;
  uint8_t &io_resp_bits_uop_frs3_en;
  uint8_t &io_resp_bits_uop_fp_val;
  uint8_t &io_resp_bits_uop_fp_single;
  uint8_t &io_resp_bits_uop_xcpt_pf_if;
  uint8_t &io_resp_bits_uop_xcpt_ae_if;
  uint8_t &io_resp_bits_uop_xcpt_ma_if;
  uint8_t &io_resp_bits_uop_bp_debug_if;
  uint8_t &io_resp_bits_uop_bp_xcpt_if;
  uint8_t &io_resp_bits_uop_debug_fsrc;
  uint8_t &io_resp_bits_uop_debug_tsrc;
  Bytes<9> &io_resp_bits_data;
  uint8_t &io_resp_bits_predicated;
  uint8_t &io_resp_bits_fflags_valid;
  uint8_t &io_resp_bits_fflags_bits_uop_uopc;
  uint32_t &io_resp_bits_fflags_bits_uop_inst;
  uint32_t &io_resp_bits_fflags_bits_uop_debug_inst;
  uint8_t &io_resp_bits_fflags_bits_uop_is_rvc;
  uint64_t &io_resp_bits_fflags_bits_uop_debug_pc;
  uint8_t &io_resp_bits_fflags_bits_uop_iq_type;
  uint16_t &io_resp_bits_fflags_bits_uop_fu_code;
  uint8_t &io_resp_bits_fflags_bits_uop_ctrl_br_type;
  uint8_t &io_resp_bits_fflags_bits_uop_ctrl_op1_sel;
  uint8_t &io_resp_bits_fflags_bits_uop_ctrl_op2_sel;
  uint8_t &io_resp_bits_fflags_bits_uop_ctrl_imm_sel;
  uint8_t &io_resp_bits_fflags_bits_uop_ctrl_op_fcn;
  uint8_t &io_resp_bits_fflags_bits_uop_ctrl_fcn_dw;
  uint8_t &io_resp_bits_fflags_bits_uop_ctrl_csr_cmd;
  uint8_t &io_resp_bits_fflags_bits_uop_ctrl_is_load;
  uint8_t &io_resp_bits_fflags_bits_uop_ctrl_is_sta;
  uint8_t &io_resp_bits_fflags_bits_uop_ctrl_is_std;
  uint8_t &io_resp_bits_fflags_bits_uop_iw_state;
  uint8_t &io_resp_bits_fflags_bits_uop_iw_p1_poisoned;
  uint8_t &io_resp_bits_fflags_bits_uop_iw_p2_poisoned;
  uint8_t &io_resp_bits_fflags_bits_uop_is_br;
  uint8_t &io_resp_bits_fflags_bits_uop_is_jalr;
  uint8_t &io_resp_bits_fflags_bits_uop_is_jal;
  uint8_t &io_resp_bits_fflags_bits_uop_is_sfb;
  uint8_t &io_resp_bits_fflags_bits_uop_br_mask;
  uint8_t &io_resp_bits_fflags_bits_uop_br_tag;
  uint8_t &io_resp_bits_fflags_bits_uop_ftq_idx;
  uint8_t &io_resp_bits_fflags_bits_uop_edge_inst;
  uint8_t &io_resp_bits_fflags_bits_uop_pc_lob;
  uint8_t &io_resp_bits_fflags_bits_uop_taken;
  uint32_t &io_resp_bits_fflags_bits_uop_imm_packed;
  uint16_t &io_resp_bits_fflags_bits_uop_csr_addr;
  uint8_t &io_resp_bits_fflags_bits_uop_rob_idx;
  uint8_t &io_resp_bits_fflags_bits_uop_ldq_idx;
  uint8_t &io_resp_bits_fflags_bits_uop_stq_idx;
  uint8_t &io_resp_bits_fflags_bits_uop_rxq_idx;
  uint8_t &io_resp_bits_fflags_bits_uop_pdst;
  uint8_t &io_resp_bits_fflags_bits_uop_prs1;
  uint8_t &io_resp_bits_fflags_bits_uop_prs2;
  uint8_t &io_resp_bits_fflags_bits_uop_prs3;
  uint8_t &io_resp_bits_fflags_bits_uop_ppred;
  uint8_t &io_resp_bits_fflags_bits_uop_prs1_busy;
  uint8_t &io_resp_bits_fflags_bits_uop_prs2_busy;
  uint8_t &io_resp_bits_fflags_bits_uop_prs3_busy;
  uint8_t &io_resp_bits_fflags_bits_uop_ppred_busy;
  uint8_t &io_resp_bits_fflags_bits_uop_stale_pdst;
  uint8_t &io_resp_bits_fflags_bits_uop_exception;
  uint64_t &io_resp_bits_fflags_bits_uop_exc_cause;
  uint8_t &io_resp_bits_fflags_bits_uop_bypassable;
  uint8_t &io_resp_bits_fflags_bits_uop_mem_cmd;
  uint8_t &io_resp_bits_fflags_bits_uop_mem_size;
  uint8_t &io_resp_bits_fflags_bits_uop_mem_signed;
  uint8_t &io_resp_bits_fflags_bits_uop_is_fence;
  uint8_t &io_resp_bits_fflags_bits_uop_is_fencei;
  uint8_t &io_resp_bits_fflags_bits_uop_is_amo;
  uint8_t &io_resp_bits_fflags_bits_uop_uses_ldq;
  uint8_t &io_resp_bits_fflags_bits_uop_uses_stq;
  uint8_t &io_resp_bits_fflags_bits_uop_is_sys_pc2epc;
  uint8_t &io_resp_bits_fflags_bits_uop_is_unique;
  uint8_t &io_resp_bits_fflags_bits_uop_flush_on_commit;
  uint8_t &io_resp_bits_fflags_bits_uop_ldst_is_rs1;
  uint8_t &io_resp_bits_fflags_bits_uop_ldst;
  uint8_t &io_resp_bits_fflags_bits_uop_lrs1;
  uint8_t &io_resp_bits_fflags_bits_uop_lrs2;
  uint8_t &io_resp_bits_fflags_bits_uop_lrs3;
  uint8_t &io_resp_bits_fflags_bits_uop_ldst_val;
  uint8_t &io_resp_bits_fflags_bits_uop_dst_rtype;
  uint8_t &io_resp_bits_fflags_bits_uop_lrs1_rtype;
  uint8_t &io_resp_bits_fflags_bits_uop_lrs2_rtype;
  uint8_t &io_resp_bits_fflags_bits_uop_frs3_en;
  uint8_t &io_resp_bits_fflags_bits_uop_fp_val;
  uint8_t &io_resp_bits_fflags_bits_uop_fp_single;
  uint8_t &io_resp_bits_fflags_bits_uop_xcpt_pf_if;
  uint8_t &io_resp_bits_fflags_bits_uop_xcpt_ae_if;
  uint8_t &io_resp_bits_fflags_bits_uop_xcpt_ma_if;
  uint8_t &io_resp_bits_fflags_bits_uop_bp_debug_if;
  uint8_t &io_resp_bits_fflags_bits_uop_bp_xcpt_if;
  uint8_t &io_resp_bits_fflags_bits_uop_debug_fsrc;
  uint8_t &io_resp_bits_fflags_bits_uop_debug_tsrc;
  uint8_t &io_resp_bits_fflags_bits_flags;
  struct {} internal;
  uint8_t *state;

  FPUView(uint8_t *state) :
    clock(*(uint8_t*)(state+0)),
    reset(*(uint8_t*)(state+1)),
    io_req_valid(*(uint8_t*)(state+2)),
    io_req_bits_uop_uopc(*(uint8_t*)(state+3)),
    io_req_bits_uop_inst(*(uint32_t*)(state+4)),
    io_req_bits_uop_debug_inst(*(uint32_t*)(state+8)),
    io_req_bits_uop_is_rvc(*(uint8_t*)(state+12)),
    io_req_bits_uop_debug_pc(*(uint64_t*)(state+16)),
    io_req_bits_uop_iq_type(*(uint8_t*)(state+21)),
    io_req_bits_uop_fu_code(*(uint16_t*)(state+22)),
    io_req_bits_uop_ctrl_br_type(*(uint8_t*)(state+24)),
    io_req_bits_uop_ctrl_op1_sel(*(uint8_t*)(state+25)),
    io_req_bits_uop_ctrl_op2_sel(*(uint8_t*)(state+26)),
    io_req_bits_uop_ctrl_imm_sel(*(uint8_t*)(state+27)),
    io_req_bits_uop_ctrl_op_fcn(*(uint8_t*)(state+28)),
    io_req_bits_uop_ctrl_fcn_dw(*(uint8_t*)(state+29)),
    io_req_bits_uop_ctrl_csr_cmd(*(uint8_t*)(state+30)),
    io_req_bits_uop_ctrl_is_load(*(uint8_t*)(state+31)),
    io_req_bits_uop_ctrl_is_sta(*(uint8_t*)(state+32)),
    io_req_bits_uop_ctrl_is_std(*(uint8_t*)(state+33)),
    io_req_bits_uop_iw_state(*(uint8_t*)(state+34)),
    io_req_bits_uop_iw_p1_poisoned(*(uint8_t*)(state+35)),
    io_req_bits_uop_iw_p2_poisoned(*(uint8_t*)(state+36)),
    io_req_bits_uop_is_br(*(uint8_t*)(state+37)),
    io_req_bits_uop_is_jalr(*(uint8_t*)(state+38)),
    io_req_bits_uop_is_jal(*(uint8_t*)(state+39)),
    io_req_bits_uop_is_sfb(*(uint8_t*)(state+40)),
    io_req_bits_uop_br_mask(*(uint8_t*)(state+41)),
    io_req_bits_uop_br_tag(*(uint8_t*)(state+42)),
    io_req_bits_uop_ftq_idx(*(uint8_t*)(state+43)),
    io_req_bits_uop_edge_inst(*(uint8_t*)(state+44)),
    io_req_bits_uop_pc_lob(*(uint8_t*)(state+45)),
    io_req_bits_uop_taken(*(uint8_t*)(state+46)),
    io_req_bits_uop_imm_packed(*(uint32_t*)(state+48)),
    io_req_bits_uop_csr_addr(*(uint16_t*)(state+52)),
    io_req_bits_uop_rob_idx(*(uint8_t*)(state+54)),
    io_req_bits_uop_ldq_idx(*(uint8_t*)(state+55)),
    io_req_bits_uop_stq_idx(*(uint8_t*)(state+56)),
    io_req_bits_uop_rxq_idx(*(uint8_t*)(state+57)),
    io_req_bits_uop_pdst(*(uint8_t*)(state+58)),
    io_req_bits_uop_prs1(*(uint8_t*)(state+59)),
    io_req_bits_uop_prs2(*(uint8_t*)(state+60)),
    io_req_bits_uop_prs3(*(uint8_t*)(state+61)),
    io_req_bits_uop_ppred(*(uint8_t*)(state+62)),
    io_req_bits_uop_prs1_busy(*(uint8_t*)(state+63)),
    io_req_bits_uop_prs2_busy(*(uint8_t*)(state+64)),
    io_req_bits_uop_prs3_busy(*(uint8_t*)(state+65)),
    io_req_bits_uop_ppred_busy(*(uint8_t*)(state+66)),
    io_req_bits_uop_stale_pdst(*(uint8_t*)(state+67)),
    io_req_bits_uop_exception(*(uint8_t*)(state+68)),
    io_req_bits_uop_exc_cause(*(uint64_t*)(state+72)),
    io_req_bits_uop_bypassable(*(uint8_t*)(state+80)),
    io_req_bits_uop_mem_cmd(*(uint8_t*)(state+81)),
    io_req_bits_uop_mem_size(*(uint8_t*)(state+82)),
    io_req_bits_uop_mem_signed(*(uint8_t*)(state+83)),
    io_req_bits_uop_is_fence(*(uint8_t*)(state+84)),
    io_req_bits_uop_is_fencei(*(uint8_t*)(state+85)),
    io_req_bits_uop_is_amo(*(uint8_t*)(state+86)),
    io_req_bits_uop_uses_ldq(*(uint8_t*)(state+87)),
    io_req_bits_uop_uses_stq(*(uint8_t*)(state+88)),
    io_req_bits_uop_is_sys_pc2epc(*(uint8_t*)(state+89)),
    io_req_bits_uop_is_unique(*(uint8_t*)(state+90)),
    io_req_bits_uop_flush_on_commit(*(uint8_t*)(state+91)),
    io_req_bits_uop_ldst_is_rs1(*(uint8_t*)(state+92)),
    io_req_bits_uop_ldst(*(uint8_t*)(state+93)),
    io_req_bits_uop_lrs1(*(uint8_t*)(state+94)),
    io_req_bits_uop_lrs2(*(uint8_t*)(state+95)),
    io_req_bits_uop_lrs3(*(uint8_t*)(state+96)),
    io_req_bits_uop_ldst_val(*(uint8_t*)(state+97)),
    io_req_bits_uop_dst_rtype(*(uint8_t*)(state+98)),
    io_req_bits_uop_lrs1_rtype(*(uint8_t*)(state+99)),
    io_req_bits_uop_lrs2_rtype(*(uint8_t*)(state+100)),
    io_req_bits_uop_frs3_en(*(uint8_t*)(state+101)),
    io_req_bits_uop_fp_val(*(uint8_t*)(state+102)),
    io_req_bits_uop_fp_single(*(uint8_t*)(state+103)),
    io_req_bits_uop_xcpt_pf_if(*(uint8_t*)(state+104)),
    io_req_bits_uop_xcpt_ae_if(*(uint8_t*)(state+105)),
    io_req_bits_uop_xcpt_ma_if(*(uint8_t*)(state+106)),
    io_req_bits_uop_bp_debug_if(*(uint8_t*)(state+107)),
    io_req_bits_uop_bp_xcpt_if(*(uint8_t*)(state+108)),
    io_req_bits_uop_debug_fsrc(*(uint8_t*)(state+109)),
    io_req_bits_uop_debug_tsrc(*(uint8_t*)(state+110)),
    io_req_bits_rs1_data(*(Bytes<9>*)(state+112)),
    io_req_bits_rs2_data(*(Bytes<9>*)(state+128)),
    io_req_bits_rs3_data(*(Bytes<9>*)(state+144)),
    io_req_bits_fcsr_rm(*(uint8_t*)(state+153)),
    io_resp_valid(*(uint8_t*)(state+592)),
    io_resp_bits_uop_uopc(*(uint8_t*)(state+593)),
    io_resp_bits_uop_inst(*(uint32_t*)(state+596)),
    io_resp_bits_uop_debug_inst(*(uint32_t*)(state+600)),
    io_resp_bits_uop_is_rvc(*(uint8_t*)(state+604)),
    io_resp_bits_uop_debug_pc(*(uint64_t*)(state+608)),
    io_resp_bits_uop_iq_type(*(uint8_t*)(state+613)),
    io_resp_bits_uop_fu_code(*(uint16_t*)(state+614)),
    io_resp_bits_uop_ctrl_br_type(*(uint8_t*)(state+616)),
    io_resp_bits_uop_ctrl_op1_sel(*(uint8_t*)(state+617)),
    io_resp_bits_uop_ctrl_op2_sel(*(uint8_t*)(state+618)),
    io_resp_bits_uop_ctrl_imm_sel(*(uint8_t*)(state+619)),
    io_resp_bits_uop_ctrl_op_fcn(*(uint8_t*)(state+620)),
    io_resp_bits_uop_ctrl_fcn_dw(*(uint8_t*)(state+621)),
    io_resp_bits_uop_ctrl_csr_cmd(*(uint8_t*)(state+622)),
    io_resp_bits_uop_ctrl_is_load(*(uint8_t*)(state+623)),
    io_resp_bits_uop_ctrl_is_sta(*(uint8_t*)(state+624)),
    io_resp_bits_uop_ctrl_is_std(*(uint8_t*)(state+625)),
    io_resp_bits_uop_iw_state(*(uint8_t*)(state+626)),
    io_resp_bits_uop_iw_p1_poisoned(*(uint8_t*)(state+627)),
    io_resp_bits_uop_iw_p2_poisoned(*(uint8_t*)(state+628)),
    io_resp_bits_uop_is_br(*(uint8_t*)(state+629)),
    io_resp_bits_uop_is_jalr(*(uint8_t*)(state+630)),
    io_resp_bits_uop_is_jal(*(uint8_t*)(state+631)),
    io_resp_bits_uop_is_sfb(*(uint8_t*)(state+632)),
    io_resp_bits_uop_br_mask(*(uint8_t*)(state+633)),
    io_resp_bits_uop_br_tag(*(uint8_t*)(state+634)),
    io_resp_bits_uop_ftq_idx(*(uint8_t*)(state+635)),
    io_resp_bits_uop_edge_inst(*(uint8_t*)(state+636)),
    io_resp_bits_uop_pc_lob(*(uint8_t*)(state+637)),
    io_resp_bits_uop_taken(*(uint8_t*)(state+638)),
    io_resp_bits_uop_imm_packed(*(uint32_t*)(state+640)),
    io_resp_bits_uop_csr_addr(*(uint16_t*)(state+644)),
    io_resp_bits_uop_rob_idx(*(uint8_t*)(state+646)),
    io_resp_bits_uop_ldq_idx(*(uint8_t*)(state+647)),
    io_resp_bits_uop_stq_idx(*(uint8_t*)(state+648)),
    io_resp_bits_uop_rxq_idx(*(uint8_t*)(state+649)),
    io_resp_bits_uop_pdst(*(uint8_t*)(state+650)),
    io_resp_bits_uop_prs1(*(uint8_t*)(state+651)),
    io_resp_bits_uop_prs2(*(uint8_t*)(state+652)),
    io_resp_bits_uop_prs3(*(uint8_t*)(state+653)),
    io_resp_bits_uop_ppred(*(uint8_t*)(state+654)),
    io_resp_bits_uop_prs1_busy(*(uint8_t*)(state+655)),
    io_resp_bits_uop_prs2_busy(*(uint8_t*)(state+656)),
    io_resp_bits_uop_prs3_busy(*(uint8_t*)(state+657)),
    io_resp_bits_uop_ppred_busy(*(uint8_t*)(state+658)),
    io_resp_bits_uop_stale_pdst(*(uint8_t*)(state+659)),
    io_resp_bits_uop_exception(*(uint8_t*)(state+660)),
    io_resp_bits_uop_exc_cause(*(uint64_t*)(state+664)),
    io_resp_bits_uop_bypassable(*(uint8_t*)(state+672)),
    io_resp_bits_uop_mem_cmd(*(uint8_t*)(state+673)),
    io_resp_bits_uop_mem_size(*(uint8_t*)(state+674)),
    io_resp_bits_uop_mem_signed(*(uint8_t*)(state+675)),
    io_resp_bits_uop_is_fence(*(uint8_t*)(state+676)),
    io_resp_bits_uop_is_fencei(*(uint8_t*)(state+677)),
    io_resp_bits_uop_is_amo(*(uint8_t*)(state+678)),
    io_resp_bits_uop_uses_ldq(*(uint8_t*)(state+679)),
    io_resp_bits_uop_uses_stq(*(uint8_t*)(state+680)),
    io_resp_bits_uop_is_sys_pc2epc(*(uint8_t*)(state+681)),
    io_resp_bits_uop_is_unique(*(uint8_t*)(state+682)),
    io_resp_bits_uop_flush_on_commit(*(uint8_t*)(state+683)),
    io_resp_bits_uop_ldst_is_rs1(*(uint8_t*)(state+684)),
    io_resp_bits_uop_ldst(*(uint8_t*)(state+685)),
    io_resp_bits_uop_lrs1(*(uint8_t*)(state+686)),
    io_resp_bits_uop_lrs2(*(uint8_t*)(state+687)),
    io_resp_bits_uop_lrs3(*(uint8_t*)(state+688)),
    io_resp_bits_uop_ldst_val(*(uint8_t*)(state+689)),
    io_resp_bits_uop_dst_rtype(*(uint8_t*)(state+690)),
    io_resp_bits_uop_lrs1_rtype(*(uint8_t*)(state+691)),
    io_resp_bits_uop_lrs2_rtype(*(uint8_t*)(state+692)),
    io_resp_bits_uop_frs3_en(*(uint8_t*)(state+693)),
    io_resp_bits_uop_fp_val(*(uint8_t*)(state+694)),
    io_resp_bits_uop_fp_single(*(uint8_t*)(state+695)),
    io_resp_bits_uop_xcpt_pf_if(*(uint8_t*)(state+696)),
    io_resp_bits_uop_xcpt_ae_if(*(uint8_t*)(state+697)),
    io_resp_bits_uop_xcpt_ma_if(*(uint8_t*)(state+698)),
    io_resp_bits_uop_bp_debug_if(*(uint8_t*)(state+699)),
    io_resp_bits_uop_bp_xcpt_if(*(uint8_t*)(state+700)),
    io_resp_bits_uop_debug_fsrc(*(uint8_t*)(state+701)),
    io_resp_bits_uop_debug_tsrc(*(uint8_t*)(state+702)),
    io_resp_bits_data(*(Bytes<9>*)(state+704)),
    io_resp_bits_predicated(*(uint8_t*)(state+713)),
    io_resp_bits_fflags_valid(*(uint8_t*)(state+714)),
    io_resp_bits_fflags_bits_uop_uopc(*(uint8_t*)(state+715)),
    io_resp_bits_fflags_bits_uop_inst(*(uint32_t*)(state+716)),
    io_resp_bits_fflags_bits_uop_debug_inst(*(uint32_t*)(state+720)),
    io_resp_bits_fflags_bits_uop_is_rvc(*(uint8_t*)(state+724)),
    io_resp_bits_fflags_bits_uop_debug_pc(*(uint64_t*)(state+728)),
    io_resp_bits_fflags_bits_uop_iq_type(*(uint8_t*)(state+733)),
    io_resp_bits_fflags_bits_uop_fu_code(*(uint16_t*)(state+734)),
    io_resp_bits_fflags_bits_uop_ctrl_br_type(*(uint8_t*)(state+736)),
    io_resp_bits_fflags_bits_uop_ctrl_op1_sel(*(uint8_t*)(state+737)),
    io_resp_bits_fflags_bits_uop_ctrl_op2_sel(*(uint8_t*)(state+738)),
    io_resp_bits_fflags_bits_uop_ctrl_imm_sel(*(uint8_t*)(state+739)),
    io_resp_bits_fflags_bits_uop_ctrl_op_fcn(*(uint8_t*)(state+740)),
    io_resp_bits_fflags_bits_uop_ctrl_fcn_dw(*(uint8_t*)(state+741)),
    io_resp_bits_fflags_bits_uop_ctrl_csr_cmd(*(uint8_t*)(state+742)),
    io_resp_bits_fflags_bits_uop_ctrl_is_load(*(uint8_t*)(state+743)),
    io_resp_bits_fflags_bits_uop_ctrl_is_sta(*(uint8_t*)(state+744)),
    io_resp_bits_fflags_bits_uop_ctrl_is_std(*(uint8_t*)(state+745)),
    io_resp_bits_fflags_bits_uop_iw_state(*(uint8_t*)(state+746)),
    io_resp_bits_fflags_bits_uop_iw_p1_poisoned(*(uint8_t*)(state+747)),
    io_resp_bits_fflags_bits_uop_iw_p2_poisoned(*(uint8_t*)(state+748)),
    io_resp_bits_fflags_bits_uop_is_br(*(uint8_t*)(state+749)),
    io_resp_bits_fflags_bits_uop_is_jalr(*(uint8_t*)(state+750)),
    io_resp_bits_fflags_bits_uop_is_jal(*(uint8_t*)(state+751)),
    io_resp_bits_fflags_bits_uop_is_sfb(*(uint8_t*)(state+752)),
    io_resp_bits_fflags_bits_uop_br_mask(*(uint8_t*)(state+753)),
    io_resp_bits_fflags_bits_uop_br_tag(*(uint8_t*)(state+754)),
    io_resp_bits_fflags_bits_uop_ftq_idx(*(uint8_t*)(state+755)),
    io_resp_bits_fflags_bits_uop_edge_inst(*(uint8_t*)(state+756)),
    io_resp_bits_fflags_bits_uop_pc_lob(*(uint8_t*)(state+757)),
    io_resp_bits_fflags_bits_uop_taken(*(uint8_t*)(state+758)),
    io_resp_bits_fflags_bits_uop_imm_packed(*(uint32_t*)(state+760)),
    io_resp_bits_fflags_bits_uop_csr_addr(*(uint16_t*)(state+764)),
    io_resp_bits_fflags_bits_uop_rob_idx(*(uint8_t*)(state+766)),
    io_resp_bits_fflags_bits_uop_ldq_idx(*(uint8_t*)(state+767)),
    io_resp_bits_fflags_bits_uop_stq_idx(*(uint8_t*)(state+768)),
    io_resp_bits_fflags_bits_uop_rxq_idx(*(uint8_t*)(state+769)),
    io_resp_bits_fflags_bits_uop_pdst(*(uint8_t*)(state+770)),
    io_resp_bits_fflags_bits_uop_prs1(*(uint8_t*)(state+771)),
    io_resp_bits_fflags_bits_uop_prs2(*(uint8_t*)(state+772)),
    io_resp_bits_fflags_bits_uop_prs3(*(uint8_t*)(state+773)),
    io_resp_bits_fflags_bits_uop_ppred(*(uint8_t*)(state+774)),
    io_resp_bits_fflags_bits_uop_prs1_busy(*(uint8_t*)(state+775)),
    io_resp_bits_fflags_bits_uop_prs2_busy(*(uint8_t*)(state+776)),
    io_resp_bits_fflags_bits_uop_prs3_busy(*(uint8_t*)(state+777)),
    io_resp_bits_fflags_bits_uop_ppred_busy(*(uint8_t*)(state+778)),
    io_resp_bits_fflags_bits_uop_stale_pdst(*(uint8_t*)(state+779)),
    io_resp_bits_fflags_bits_uop_exception(*(uint8_t*)(state+780)),
    io_resp_bits_fflags_bits_uop_exc_cause(*(uint64_t*)(state+784)),
    io_resp_bits_fflags_bits_uop_bypassable(*(uint8_t*)(state+792)),
    io_resp_bits_fflags_bits_uop_mem_cmd(*(uint8_t*)(state+793)),
    io_resp_bits_fflags_bits_uop_mem_size(*(uint8_t*)(state+794)),
    io_resp_bits_fflags_bits_uop_mem_signed(*(uint8_t*)(state+795)),
    io_resp_bits_fflags_bits_uop_is_fence(*(uint8_t*)(state+796)),
    io_resp_bits_fflags_bits_uop_is_fencei(*(uint8_t*)(state+797)),
    io_resp_bits_fflags_bits_uop_is_amo(*(uint8_t*)(state+798)),
    io_resp_bits_fflags_bits_uop_uses_ldq(*(uint8_t*)(state+799)),
    io_resp_bits_fflags_bits_uop_uses_stq(*(uint8_t*)(state+800)),
    io_resp_bits_fflags_bits_uop_is_sys_pc2epc(*(uint8_t*)(state+801)),
    io_resp_bits_fflags_bits_uop_is_unique(*(uint8_t*)(state+802)),
    io_resp_bits_fflags_bits_uop_flush_on_commit(*(uint8_t*)(state+803)),
    io_resp_bits_fflags_bits_uop_ldst_is_rs1(*(uint8_t*)(state+804)),
    io_resp_bits_fflags_bits_uop_ldst(*(uint8_t*)(state+805)),
    io_resp_bits_fflags_bits_uop_lrs1(*(uint8_t*)(state+806)),
    io_resp_bits_fflags_bits_uop_lrs2(*(uint8_t*)(state+807)),
    io_resp_bits_fflags_bits_uop_lrs3(*(uint8_t*)(state+808)),
    io_resp_bits_fflags_bits_uop_ldst_val(*(uint8_t*)(state+809)),
    io_resp_bits_fflags_bits_uop_dst_rtype(*(uint8_t*)(state+810)),
    io_resp_bits_fflags_bits_uop_lrs1_rtype(*(uint8_t*)(state+811)),
    io_resp_bits_fflags_bits_uop_lrs2_rtype(*(uint8_t*)(state+812)),
    io_resp_bits_fflags_bits_uop_frs3_en(*(uint8_t*)(state+813)),
    io_resp_bits_fflags_bits_uop_fp_val(*(uint8_t*)(state+814)),
    io_resp_bits_fflags_bits_uop_fp_single(*(uint8_t*)(state+815)),
    io_resp_bits_fflags_bits_uop_xcpt_pf_if(*(uint8_t*)(state+816)),
    io_resp_bits_fflags_bits_uop_xcpt_ae_if(*(uint8_t*)(state+817)),
    io_resp_bits_fflags_bits_uop_xcpt_ma_if(*(uint8_t*)(state+818)),
    io_resp_bits_fflags_bits_uop_bp_debug_if(*(uint8_t*)(state+819)),
    io_resp_bits_fflags_bits_uop_bp_xcpt_if(*(uint8_t*)(state+820)),
    io_resp_bits_fflags_bits_uop_debug_fsrc(*(uint8_t*)(state+821)),
    io_resp_bits_fflags_bits_uop_debug_tsrc(*(uint8_t*)(state+822)),
    io_resp_bits_fflags_bits_flags(*(uint8_t*)(state+823)),
    internal({}),
    state(state) {}
};

class FPU {
public:
  std::vector<uint8_t> storage;
  FPUView view;

  FPU() : storage(FPULayout::numStateBytes, 0), view(&storage[0]) {
  }
  void eval() { FPU_eval(&storage[0]); }
  ValueChangeDump<FPULayout> vcd(std::basic_ostream<char> &os) {
    ValueChangeDump<FPULayout> vcd(os, &storage[0]);
    vcd.writeHeader();
    vcd.writeDumpvars();
    return vcd;
  }
};

#define FPU_PORTS \
  PORT(clock) \
  PORT(reset) \
  PORT(io_req_valid) \
  PORT(io_req_bits_uop_uopc) \
  PORT(io_req_bits_uop_inst) \
  PORT(io_req_bits_uop_debug_inst) \
  PORT(io_req_bits_uop_is_rvc) \
  PORT(io_req_bits_uop_debug_pc) \
  PORT(io_req_bits_uop_iq_type) \
  PORT(io_req_bits_uop_fu_code) \
  PORT(io_req_bits_uop_ctrl_br_type) \
  PORT(io_req_bits_uop_ctrl_op1_sel) \
  PORT(io_req_bits_uop_ctrl_op2_sel) \
  PORT(io_req_bits_uop_ctrl_imm_sel) \
  PORT(io_req_bits_uop_ctrl_op_fcn) \
  PORT(io_req_bits_uop_ctrl_fcn_dw) \
  PORT(io_req_bits_uop_ctrl_csr_cmd) \
  PORT(io_req_bits_uop_ctrl_is_load) \
  PORT(io_req_bits_uop_ctrl_is_sta) \
  PORT(io_req_bits_uop_ctrl_is_std) \
  PORT(io_req_bits_uop_iw_state) \
  PORT(io_req_bits_uop_iw_p1_poisoned) \
  PORT(io_req_bits_uop_iw_p2_poisoned) \
  PORT(io_req_bits_uop_is_br) \
  PORT(io_req_bits_uop_is_jalr) \
  PORT(io_req_bits_uop_is_jal) \
  PORT(io_req_bits_uop_is_sfb) \
  PORT(io_req_bits_uop_br_mask) \
  PORT(io_req_bits_uop_br_tag) \
  PORT(io_req_bits_uop_ftq_idx) \
  PORT(io_req_bits_uop_edge_inst) \
  PORT(io_req_bits_uop_pc_lob) \
  PORT(io_req_bits_uop_taken) \
  PORT(io_req_bits_uop_imm_packed) \
  PORT(io_req_bits_uop_csr_addr) \
  PORT(io_req_bits_uop_rob_idx) \
  PORT(io_req_bits_uop_ldq_idx) \
  PORT(io_req_bits_uop_stq_idx) \
  PORT(io_req_bits_uop_rxq_idx) \
  PORT(io_req_bits_uop_pdst) \
  PORT(io_req_bits_uop_prs1) \
  PORT(io_req_bits_uop_prs2) \
  PORT(io_req_bits_uop_prs3) \
  PORT(io_req_bits_uop_ppred) \
  PORT(io_req_bits_uop_prs1_busy) \
  PORT(io_req_bits_uop_prs2_busy) \
  PORT(io_req_bits_uop_prs3_busy) \
  PORT(io_req_bits_uop_ppred_busy) \
  PORT(io_req_bits_uop_stale_pdst) \
  PORT(io_req_bits_uop_exception) \
  PORT(io_req_bits_uop_exc_cause) \
  PORT(io_req_bits_uop_bypassable) \
  PORT(io_req_bits_uop_mem_cmd) \
  PORT(io_req_bits_uop_mem_size) \
  PORT(io_req_bits_uop_mem_signed) \
  PORT(io_req_bits_uop_is_fence) \
  PORT(io_req_bits_uop_is_fencei) \
  PORT(io_req_bits_uop_is_amo) \
  PORT(io_req_bits_uop_uses_ldq) \
  PORT(io_req_bits_uop_uses_stq) \
  PORT(io_req_bits_uop_is_sys_pc2epc) \
  PORT(io_req_bits_uop_is_unique) \
  PORT(io_req_bits_uop_flush_on_commit) \
  PORT(io_req_bits_uop_ldst_is_rs1) \
  PORT(io_req_bits_uop_ldst) \
  PORT(io_req_bits_uop_lrs1) \
  PORT(io_req_bits_uop_lrs2) \
  PORT(io_req_bits_uop_lrs3) \
  PORT(io_req_bits_uop_ldst_val) \
  PORT(io_req_bits_uop_dst_rtype) \
  PORT(io_req_bits_uop_lrs1_rtype) \
  PORT(io_req_bits_uop_lrs2_rtype) \
  PORT(io_req_bits_uop_frs3_en) \
  PORT(io_req_bits_uop_fp_val) \
  PORT(io_req_bits_uop_fp_single) \
  PORT(io_req_bits_uop_xcpt_pf_if) \
  PORT(io_req_bits_uop_xcpt_ae_if) \
  PORT(io_req_bits_uop_xcpt_ma_if) \
  PORT(io_req_bits_uop_bp_debug_if) \
  PORT(io_req_bits_uop_bp_xcpt_if) \
  PORT(io_req_bits_uop_debug_fsrc) \
  PORT(io_req_bits_uop_debug_tsrc) \
  PORT(io_req_bits_rs1_data) \
  PORT(io_req_bits_rs2_data) \
  PORT(io_req_bits_rs3_data) \
  PORT(io_req_bits_fcsr_rm) \
  PORT(io_resp_valid) \
  PORT(io_resp_bits_uop_uopc) \
  PORT(io_resp_bits_uop_inst) \
  PORT(io_resp_bits_uop_debug_inst) \
  PORT(io_resp_bits_uop_is_rvc) \
  PORT(io_resp_bits_uop_debug_pc) \
  PORT(io_resp_bits_uop_iq_type) \
  PORT(io_resp_bits_uop_fu_code) \
  PORT(io_resp_bits_uop_ctrl_br_type) \
  PORT(io_resp_bits_uop_ctrl_op1_sel) \
  PORT(io_resp_bits_uop_ctrl_op2_sel) \
  PORT(io_resp_bits_uop_ctrl_imm_sel) \
  PORT(io_resp_bits_uop_ctrl_op_fcn) \
  PORT(io_resp_bits_uop_ctrl_fcn_dw) \
  PORT(io_resp_bits_uop_ctrl_csr_cmd) \
  PORT(io_resp_bits_uop_ctrl_is_load) \
  PORT(io_resp_bits_uop_ctrl_is_sta) \
  PORT(io_resp_bits_uop_ctrl_is_std) \
  PORT(io_resp_bits_uop_iw_state) \
  PORT(io_resp_bits_uop_iw_p1_poisoned) \
  PORT(io_resp_bits_uop_iw_p2_poisoned) \
  PORT(io_resp_bits_uop_is_br) \
  PORT(io_resp_bits_uop_is_jalr) \
  PORT(io_resp_bits_uop_is_jal) \
  PORT(io_resp_bits_uop_is_sfb) \
  PORT(io_resp_bits_uop_br_mask) \
  PORT(io_resp_bits_uop_br_tag) \
  PORT(io_resp_bits_uop_ftq_idx) \
  PORT(io_resp_bits_uop_edge_inst) \
  PORT(io_resp_bits_uop_pc_lob) \
  PORT(io_resp_bits_uop_taken) \
  PORT(io_resp_bits_uop_imm_packed) \
  PORT(io_resp_bits_uop_csr_addr) \
  PORT(io_resp_bits_uop_rob_idx) \
  PORT(io_resp_bits_uop_ldq_idx) \
  PORT(io_resp_bits_uop_stq_idx) \
  PORT(io_resp_bits_uop_rxq_idx) \
  PORT(io_resp_bits_uop_pdst) \
  PORT(io_resp_bits_uop_prs1) \
  PORT(io_resp_bits_uop_prs2) \
  PORT(io_resp_bits_uop_prs3) \
  PORT(io_resp_bits_uop_ppred) \
  PORT(io_resp_bits_uop_prs1_busy) \
  PORT(io_resp_bits_uop_prs2_busy) \
  PORT(io_resp_bits_uop_prs3_busy) \
  PORT(io_resp_bits_uop_ppred_busy) \
  PORT(io_resp_bits_uop_stale_pdst) \
  PORT(io_resp_bits_uop_exception) \
  PORT(io_resp_bits_uop_exc_cause) \
  PORT(io_resp_bits_uop_bypassable) \
  PORT(io_resp_bits_uop_mem_cmd) \
  PORT(io_resp_bits_uop_mem_size) \
  PORT(io_resp_bits_uop_mem_signed) \
  PORT(io_resp_bits_uop_is_fence) \
  PORT(io_resp_bits_uop_is_fencei) \
  PORT(io_resp_bits_uop_is_amo) \
  PORT(io_resp_bits_uop_uses_ldq) \
  PORT(io_resp_bits_uop_uses_stq) \
  PORT(io_resp_bits_uop_is_sys_pc2epc) \
  PORT(io_resp_bits_uop_is_unique) \
  PORT(io_resp_bits_uop_flush_on_commit) \
  PORT(io_resp_bits_uop_ldst_is_rs1) \
  PORT(io_resp_bits_uop_ldst) \
  PORT(io_resp_bits_uop_lrs1) \
  PORT(io_resp_bits_uop_lrs2) \
  PORT(io_resp_bits_uop_lrs3) \
  PORT(io_resp_bits_uop_ldst_val) \
  PORT(io_resp_bits_uop_dst_rtype) \
  PORT(io_resp_bits_uop_lrs1_rtype) \
  PORT(io_resp_bits_uop_lrs2_rtype) \
  PORT(io_resp_bits_uop_frs3_en) \
  PORT(io_resp_bits_uop_fp_val) \
  PORT(io_resp_bits_uop_fp_single) \
  PORT(io_resp_bits_uop_xcpt_pf_if) \
  PORT(io_resp_bits_uop_xcpt_ae_if) \
  PORT(io_resp_bits_uop_xcpt_ma_if) \
  PORT(io_resp_bits_uop_bp_debug_if) \
  PORT(io_resp_bits_uop_bp_xcpt_if) \
  PORT(io_resp_bits_uop_debug_fsrc) \
  PORT(io_resp_bits_uop_debug_tsrc) \
  PORT(io_resp_bits_data) \
  PORT(io_resp_bits_predicated) \
  PORT(io_resp_bits_fflags_valid) \
  PORT(io_resp_bits_fflags_bits_uop_uopc) \
  PORT(io_resp_bits_fflags_bits_uop_inst) \
  PORT(io_resp_bits_fflags_bits_uop_debug_inst) \
  PORT(io_resp_bits_fflags_bits_uop_is_rvc) \
  PORT(io_resp_bits_fflags_bits_uop_debug_pc) \
  PORT(io_resp_bits_fflags_bits_uop_iq_type) \
  PORT(io_resp_bits_fflags_bits_uop_fu_code) \
  PORT(io_resp_bits_fflags_bits_uop_ctrl_br_type) \
  PORT(io_resp_bits_fflags_bits_uop_ctrl_op1_sel) \
  PORT(io_resp_bits_fflags_bits_uop_ctrl_op2_sel) \
  PORT(io_resp_bits_fflags_bits_uop_ctrl_imm_sel) \
  PORT(io_resp_bits_fflags_bits_uop_ctrl_op_fcn) \
  PORT(io_resp_bits_fflags_bits_uop_ctrl_fcn_dw) \
  PORT(io_resp_bits_fflags_bits_uop_ctrl_csr_cmd) \
  PORT(io_resp_bits_fflags_bits_uop_ctrl_is_load) \
  PORT(io_resp_bits_fflags_bits_uop_ctrl_is_sta) \
  PORT(io_resp_bits_fflags_bits_uop_ctrl_is_std) \
  PORT(io_resp_bits_fflags_bits_uop_iw_state) \
  PORT(io_resp_bits_fflags_bits_uop_iw_p1_poisoned) \
  PORT(io_resp_bits_fflags_bits_uop_iw_p2_poisoned) \
  PORT(io_resp_bits_fflags_bits_uop_is_br) \
  PORT(io_resp_bits_fflags_bits_uop_is_jalr) \
  PORT(io_resp_bits_fflags_bits_uop_is_jal) \
  PORT(io_resp_bits_fflags_bits_uop_is_sfb) \
  PORT(io_resp_bits_fflags_bits_uop_br_mask) \
  PORT(io_resp_bits_fflags_bits_uop_br_tag) \
  PORT(io_resp_bits_fflags_bits_uop_ftq_idx) \
  PORT(io_resp_bits_fflags_bits_uop_edge_inst) \
  PORT(io_resp_bits_fflags_bits_uop_pc_lob) \
  PORT(io_resp_bits_fflags_bits_uop_taken) \
  PORT(io_resp_bits_fflags_bits_uop_imm_packed) \
  PORT(io_resp_bits_fflags_bits_uop_csr_addr) \
  PORT(io_resp_bits_fflags_bits_uop_rob_idx) \
  PORT(io_resp_bits_fflags_bits_uop_ldq_idx) \
  PORT(io_resp_bits_fflags_bits_uop_stq_idx) \
  PORT(io_resp_bits_fflags_bits_uop_rxq_idx) \
  PORT(io_resp_bits_fflags_bits_uop_pdst) \
  PORT(io_resp_bits_fflags_bits_uop_prs1) \
  PORT(io_resp_bits_fflags_bits_uop_prs2) \
  PORT(io_resp_bits_fflags_bits_uop_prs3) \
  PORT(io_resp_bits_fflags_bits_uop_ppred) \
  PORT(io_resp_bits_fflags_bits_uop_prs1_busy) \
  PORT(io_resp_bits_fflags_bits_uop_prs2_busy) \
  PORT(io_resp_bits_fflags_bits_uop_prs3_busy) \
  PORT(io_resp_bits_fflags_bits_uop_ppred_busy) \
  PORT(io_resp_bits_fflags_bits_uop_stale_pdst) \
  PORT(io_resp_bits_fflags_bits_uop_exception) \
  PORT(io_resp_bits_fflags_bits_uop_exc_cause) \
  PORT(io_resp_bits_fflags_bits_uop_bypassable) \
  PORT(io_resp_bits_fflags_bits_uop_mem_cmd) \
  PORT(io_resp_bits_fflags_bits_uop_mem_size) \
  PORT(io_resp_bits_fflags_bits_uop_mem_signed) \
  PORT(io_resp_bits_fflags_bits_uop_is_fence) \
  PORT(io_resp_bits_fflags_bits_uop_is_fencei) \
  PORT(io_resp_bits_fflags_bits_uop_is_amo) \
  PORT(io_resp_bits_fflags_bits_uop_uses_ldq) \
  PORT(io_resp_bits_fflags_bits_uop_uses_stq) \
  PORT(io_resp_bits_fflags_bits_uop_is_sys_pc2epc) \
  PORT(io_resp_bits_fflags_bits_uop_is_unique) \
  PORT(io_resp_bits_fflags_bits_uop_flush_on_commit) \
  PORT(io_resp_bits_fflags_bits_uop_ldst_is_rs1) \
  PORT(io_resp_bits_fflags_bits_uop_ldst) \
  PORT(io_resp_bits_fflags_bits_uop_lrs1) \
  PORT(io_resp_bits_fflags_bits_uop_lrs2) \
  PORT(io_resp_bits_fflags_bits_uop_lrs3) \
  PORT(io_resp_bits_fflags_bits_uop_ldst_val) \
  PORT(io_resp_bits_fflags_bits_uop_dst_rtype) \
  PORT(io_resp_bits_fflags_bits_uop_lrs1_rtype) \
  PORT(io_resp_bits_fflags_bits_uop_lrs2_rtype) \
  PORT(io_resp_bits_fflags_bits_uop_frs3_en) \
  PORT(io_resp_bits_fflags_bits_uop_fp_val) \
  PORT(io_resp_bits_fflags_bits_uop_fp_single) \
  PORT(io_resp_bits_fflags_bits_uop_xcpt_pf_if) \
  PORT(io_resp_bits_fflags_bits_uop_xcpt_ae_if) \
  PORT(io_resp_bits_fflags_bits_uop_xcpt_ma_if) \
  PORT(io_resp_bits_fflags_bits_uop_bp_debug_if) \
  PORT(io_resp_bits_fflags_bits_uop_bp_xcpt_if) \
  PORT(io_resp_bits_fflags_bits_uop_debug_fsrc) \
  PORT(io_resp_bits_fflags_bits_uop_debug_tsrc) \
  PORT(io_resp_bits_fflags_bits_flags)
