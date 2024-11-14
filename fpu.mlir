module {
  hw.module private @UOPCodeFPUDecoder_1(in %io_uopc : i7, out io_sigs_ren2 : i1, out io_sigs_ren3 : i1, out io_sigs_swap23 : i1, out io_sigs_typeTagIn : i2, out io_sigs_typeTagOut : i2, out io_sigs_toint : i1, out io_sigs_fastpipe : i1, out io_sigs_fma : i1, out io_sigs_wflags : i1) {
    %c0_i3 = hw.constant 0 : i3
    %c0_i10 = hw.constant 0 : i10
    %c0_i9 = hw.constant 0 : i9
    %c0_i4 = hw.constant 0 : i4
    %c0_i6 = hw.constant 0 : i6
    %c-1_i4 = hw.constant -1 : i4
    %c-1_i5 = hw.constant -1 : i5
    %c-1_i6 = hw.constant -1 : i6
    %c-1_i7 = hw.constant -1 : i7
    %false = hw.constant false
    %c0_i2 = hw.constant 0 : i2
    %0 = comb.extract %io_uopc from 0 : (i7) -> i6
    %1 = comb.xor bin %0, %c-1_i6 {sv.namehint = "decoder_decoded_invInputs"} : i6
    %2 = comb.extract %1 from 0 {sv.namehint = "decoder_decoded_andMatrixOutputs_andMatrixInput_0"} : (i6) -> i1
    %3 = comb.extract %1 from 1 {sv.namehint = "decoder_decoded_andMatrixOutputs_andMatrixInput_1"} : (i6) -> i1
    %4 = comb.extract %io_uopc from 2 {sv.namehint = "decoder_decoded_andMatrixOutputs_andMatrixInput_2"} : (i7) -> i1
    %5 = comb.extract %1 from 3 {sv.namehint = "decoder_decoded_andMatrixOutputs_andMatrixInput_3"} : (i6) -> i1
    %6 = comb.extract %1 from 4 {sv.namehint = "decoder_decoded_andMatrixOutputs_andMatrixInput_4"} : (i6) -> i1
    %7 = comb.extract %io_uopc from 6 {sv.namehint = "decoder_decoded_andMatrixOutputs_andMatrixInput_5"} : (i7) -> i1
    %8 = comb.concat %2, %3, %4, %5, %6, %7 {sv.namehint = "_decoder_decoded_andMatrixOutputs_T"} : i1, i1, i1, i1, i1, i1
    %9 = comb.icmp bin eq %8, %c-1_i6 {sv.namehint = "decoder_decoded_andMatrixOutputs_17_2"} : i6
    %10 = comb.extract %1 from 5 {sv.namehint = "decoder_decoded_andMatrixOutputs_andMatrixInput_3_1"} : (i6) -> i1
    %11 = comb.extract %io_uopc from 0 {sv.namehint = "decoder_decoded_andMatrixOutputs_andMatrixInput_0_2"} : (i7) -> i1
    %12 = comb.concat %11, %3, %4, %5, %10, %7 {sv.namehint = "_decoder_decoded_andMatrixOutputs_T_2"} : i1, i1, i1, i1, i1, i1
    %13 = comb.icmp bin eq %12, %c-1_i6 {sv.namehint = "decoder_decoded_andMatrixOutputs_4_2"} : i6
    %14 = comb.concat %11, %4, %6, %10, %7 {sv.namehint = "_decoder_decoded_andMatrixOutputs_T_3"} : i1, i1, i1, i1, i1
    %15 = comb.icmp bin eq %14, %c-1_i5 {sv.namehint = "decoder_decoded_andMatrixOutputs_16_2"} : i5
    %16 = comb.extract %io_uopc from 1 {sv.namehint = "decoder_decoded_andMatrixOutputs_andMatrixInput_0_4"} : (i7) -> i1
    %17 = comb.concat %16, %4, %6, %10, %7 {sv.namehint = "_decoder_decoded_andMatrixOutputs_T_4"} : i1, i1, i1, i1, i1
    %18 = comb.icmp bin eq %17, %c-1_i5 {sv.namehint = "decoder_decoded_andMatrixOutputs_2_2"} : i5
    %19 = comb.concat %16, %4, %5, %6, %10, %7 {sv.namehint = "_decoder_decoded_andMatrixOutputs_T_5"} : i1, i1, i1, i1, i1, i1
    %20 = comb.icmp bin eq %19, %c-1_i6 {sv.namehint = "decoder_decoded_andMatrixOutputs_10_2"} : i6
    %21 = comb.extract %1 from 2 {sv.namehint = "decoder_decoded_andMatrixOutputs_andMatrixInput_0_6"} : (i6) -> i1
    %22 = comb.extract %io_uopc from 3 {sv.namehint = "decoder_decoded_andMatrixOutputs_andMatrixInput_1_6"} : (i7) -> i1
    %23 = comb.concat %3, %21, %22, %10, %7 {sv.namehint = "_decoder_decoded_andMatrixOutputs_T_7"} : i1, i1, i1, i1, i1
    %24 = comb.icmp bin eq %23, %c-1_i5 {sv.namehint = "decoder_decoded_andMatrixOutputs_14_2"} : i5
    %25 = comb.concat %21, %22, %6, %10, %7 {sv.namehint = "_decoder_decoded_andMatrixOutputs_T_8"} : i1, i1, i1, i1, i1
    %26 = comb.icmp bin eq %25, %c-1_i5 {sv.namehint = "decoder_decoded_andMatrixOutputs_34_2"} : i5
    %27 = comb.concat %11, %22, %6, %10, %7 {sv.namehint = "_decoder_decoded_andMatrixOutputs_T_9"} : i1, i1, i1, i1, i1
    %28 = comb.icmp bin eq %27, %c-1_i5 {sv.namehint = "decoder_decoded_andMatrixOutputs_28_2"} : i5
    %29 = comb.concat %11, %3, %22, %6, %10, %7 {sv.namehint = "_decoder_decoded_andMatrixOutputs_T_10"} : i1, i1, i1, i1, i1, i1
    %30 = comb.icmp bin eq %29, %c-1_i6 {sv.namehint = "decoder_decoded_andMatrixOutputs_21_2"} : i6
    %31 = comb.concat %16, %22, %10, %7 {sv.namehint = "_decoder_decoded_andMatrixOutputs_T_11"} : i1, i1, i1, i1
    %32 = comb.icmp bin eq %31, %c-1_i4 {sv.namehint = "decoder_decoded_andMatrixOutputs_1_2"} : i4
    %33 = comb.concat %2, %16, %21, %22, %10, %7 {sv.namehint = "_decoder_decoded_andMatrixOutputs_T_12"} : i1, i1, i1, i1, i1, i1
    %34 = comb.icmp bin eq %33, %c-1_i6 {sv.namehint = "decoder_decoded_andMatrixOutputs_32_2"} : i6
    %35 = comb.concat %4, %22, %10, %7 {sv.namehint = "_decoder_decoded_andMatrixOutputs_T_13"} : i1, i1, i1, i1
    %36 = comb.icmp bin eq %35, %c-1_i4 {sv.namehint = "decoder_decoded_andMatrixOutputs_19_2"} : i4
    %37 = comb.extract %io_uopc from 4 {sv.namehint = "decoder_decoded_andMatrixOutputs_andMatrixInput_1_14"} : (i7) -> i1
    %38 = comb.concat %3, %37, %10, %7 {sv.namehint = "_decoder_decoded_andMatrixOutputs_T_14"} : i1, i1, i1, i1
    %39 = comb.icmp bin eq %38, %c-1_i4 {sv.namehint = "decoder_decoded_andMatrixOutputs_7_2"} : i4
    %40 = comb.concat %21, %5, %37, %10, %7 {sv.namehint = "_decoder_decoded_andMatrixOutputs_T_16"} : i1, i1, i1, i1, i1
    %41 = comb.icmp bin eq %40, %c-1_i5 {sv.namehint = "decoder_decoded_andMatrixOutputs_12_2"} : i5
    %42 = comb.concat %11, %3, %5, %37, %10, %7 {sv.namehint = "_decoder_decoded_andMatrixOutputs_T_18"} : i1, i1, i1, i1, i1, i1
    %43 = comb.icmp bin eq %42, %c-1_i6 {sv.namehint = "decoder_decoded_andMatrixOutputs_27_2"} : i6
    %44 = comb.concat %11, %21, %5, %37, %10, %7 {sv.namehint = "_decoder_decoded_andMatrixOutputs_T_19"} : i1, i1, i1, i1, i1, i1
    %45 = comb.icmp bin eq %44, %c-1_i6 {sv.namehint = "decoder_decoded_andMatrixOutputs_15_2"} : i6
    %46 = comb.concat %11, %16, %21, %37, %10, %7 {sv.namehint = "_decoder_decoded_andMatrixOutputs_T_20"} : i1, i1, i1, i1, i1, i1
    %47 = comb.icmp bin eq %46, %c-1_i6 {sv.namehint = "decoder_decoded_andMatrixOutputs_24_2"} : i6
    %48 = comb.concat %3, %4, %5, %37, %10, %7 {sv.namehint = "_decoder_decoded_andMatrixOutputs_T_21"} : i1, i1, i1, i1, i1, i1
    %49 = comb.icmp bin eq %48, %c-1_i6 {sv.namehint = "decoder_decoded_andMatrixOutputs_29_2"} : i6
    %50 = comb.concat %11, %4, %37, %10, %7 {sv.namehint = "_decoder_decoded_andMatrixOutputs_T_22"} : i1, i1, i1, i1, i1
    %51 = comb.icmp bin eq %50, %c-1_i5 {sv.namehint = "decoder_decoded_andMatrixOutputs_33_2"} : i5
    %52 = comb.concat %11, %16, %4, %37, %10, %7 {sv.namehint = "_decoder_decoded_andMatrixOutputs_T_23"} : i1, i1, i1, i1, i1, i1
    %53 = comb.icmp bin eq %52, %c-1_i6 {sv.namehint = "decoder_decoded_andMatrixOutputs_9_2"} : i6
    %54 = comb.concat %11, %16, %4, %5, %37, %10, %7 {sv.namehint = "_decoder_decoded_andMatrixOutputs_T_24"} : i1, i1, i1, i1, i1, i1, i1
    %55 = comb.icmp bin eq %54, %c-1_i7 {sv.namehint = "decoder_decoded_andMatrixOutputs_25_2"} : i7
    %56 = comb.concat %22, %37, %10, %7 {sv.namehint = "_decoder_decoded_andMatrixOutputs_T_25"} : i1, i1, i1, i1
    %57 = comb.icmp bin eq %56, %c-1_i4 {sv.namehint = "decoder_decoded_andMatrixOutputs_18_2"} : i4
    %58 = comb.concat %2, %21, %22, %37, %10, %7 {sv.namehint = "_decoder_decoded_andMatrixOutputs_T_26"} : i1, i1, i1, i1, i1, i1
    %59 = comb.icmp bin eq %58, %c-1_i6 {sv.namehint = "decoder_decoded_andMatrixOutputs_11_2"} : i6
    %60 = comb.concat %16, %21, %22, %37, %10, %7 {sv.namehint = "_decoder_decoded_andMatrixOutputs_T_27"} : i1, i1, i1, i1, i1, i1
    %61 = comb.icmp bin eq %60, %c-1_i6 {sv.namehint = "decoder_decoded_andMatrixOutputs_35_2"} : i6
    %62 = comb.concat %2, %3, %4, %22, %37, %10, %7 {sv.namehint = "_decoder_decoded_andMatrixOutputs_T_28"} : i1, i1, i1, i1, i1, i1, i1
    %63 = comb.icmp bin eq %62, %c-1_i7 {sv.namehint = "decoder_decoded_andMatrixOutputs_0_2"} : i7
    %64 = comb.concat %11, %4, %22, %37, %10, %7 {sv.namehint = "_decoder_decoded_andMatrixOutputs_T_29"} : i1, i1, i1, i1, i1, i1
    %65 = comb.icmp bin eq %64, %c-1_i6 {sv.namehint = "decoder_decoded_andMatrixOutputs_31_2"} : i6
    %66 = comb.concat %16, %4, %22, %37, %10, %7 {sv.namehint = "_decoder_decoded_andMatrixOutputs_T_30"} : i1, i1, i1, i1, i1, i1
    %67 = comb.icmp bin eq %66, %c-1_i6 {sv.namehint = "decoder_decoded_andMatrixOutputs_3_2"} : i6
    %68 = comb.extract %io_uopc from 5 {sv.namehint = "decoder_decoded_andMatrixOutputs_andMatrixInput_4_24"} : (i7) -> i1
    %69 = comb.concat %2, %3, %5, %6, %68, %7 {sv.namehint = "_decoder_decoded_andMatrixOutputs_T_31"} : i1, i1, i1, i1, i1, i1
    %70 = comb.icmp bin eq %69, %c-1_i6 {sv.namehint = "decoder_decoded_andMatrixOutputs_8_2"} : i6
    %71 = comb.concat %21, %5, %6, %68, %7 {sv.namehint = "_decoder_decoded_andMatrixOutputs_T_32"} : i1, i1, i1, i1, i1
    %72 = comb.icmp bin eq %71, %c-1_i5 {sv.namehint = "decoder_decoded_andMatrixOutputs_20_2"} : i5
    %73 = comb.concat %11, %21, %5, %6, %68, %7 {sv.namehint = "_decoder_decoded_andMatrixOutputs_T_33"} : i1, i1, i1, i1, i1, i1
    %74 = comb.icmp bin eq %73, %c-1_i6 {sv.namehint = "decoder_decoded_andMatrixOutputs_23_2"} : i6
    %75 = comb.concat %16, %21, %5, %6, %68, %7 {sv.namehint = "_decoder_decoded_andMatrixOutputs_T_34"} : i1, i1, i1, i1, i1, i1
    %76 = comb.icmp bin eq %75, %c-1_i6 {sv.namehint = "decoder_decoded_andMatrixOutputs_30_2"} : i6
    %77 = comb.concat %2, %3, %4, %5, %6, %68, %7 {sv.namehint = "_decoder_decoded_andMatrixOutputs_T_35"} : i1, i1, i1, i1, i1, i1, i1
    %78 = comb.icmp bin eq %77, %c-1_i7 {sv.namehint = "decoder_decoded_andMatrixOutputs_13_2"} : i7
    %79 = comb.concat %32, %36, %39, %51, %70, %72 {sv.namehint = "_decoder_decoded_orMatrixOutputs_T"} : i1, i1, i1, i1, i1, i1
    %80 = comb.icmp bin ne %79, %c0_i6 {sv.namehint = "_decoder_decoded_orMatrixOutputs_T_1"} : i6
    %81 = comb.concat %53, %57, %70, %72 {sv.namehint = "_decoder_decoded_orMatrixOutputs_T_2"} : i1, i1, i1, i1
    %82 = comb.icmp bin ne %81, %c0_i4 {sv.namehint = "_decoder_decoded_orMatrixOutputs_T_3"} : i4
    %83 = comb.concat %26, %49 {sv.namehint = "_decoder_decoded_orMatrixOutputs_T_4"} : i1, i1
    %84 = comb.icmp bin ne %83, %c0_i2 {sv.namehint = "_decoder_decoded_orMatrixOutputs_T_5"} : i2
    %85 = comb.concat %18, %41 {sv.namehint = "_decoder_decoded_orMatrixOutputs_T_6"} : i1, i1
    %86 = comb.icmp bin ne %85, %c0_i2 {sv.namehint = "_decoder_decoded_orMatrixOutputs_T_7"} : i2
    %87 = comb.concat %9, %13, %15, %28, %45, %61, %63, %74, %76 {sv.namehint = "_decoder_decoded_orMatrixOutputs_T_9"} : i1, i1, i1, i1, i1, i1, i1, i1, i1
    %88 = comb.icmp bin ne %87, %c0_i9 {sv.namehint = "_decoder_decoded_orMatrixOutputs_T_10"} : i9
    %89 = comb.concat %15, %20, %30, %34, %43, %47, %63, %74, %76, %78 {sv.namehint = "_decoder_decoded_orMatrixOutputs_T_11"} : i1, i1, i1, i1, i1, i1, i1, i1, i1, i1
    %90 = comb.icmp bin ne %89, %c0_i10 {sv.namehint = "_decoder_decoded_orMatrixOutputs_T_12"} : i10
    %91 = comb.concat %55, %59, %61 {sv.namehint = "_decoder_decoded_orMatrixOutputs_T_13"} : i1, i1, i1
    %92 = comb.icmp bin ne %91, %c0_i3 {sv.namehint = "_decoder_decoded_orMatrixOutputs_T_14"} : i3
    %93 = comb.concat %65, %67, %70, %72 {sv.namehint = "_decoder_decoded_orMatrixOutputs_T_15"} : i1, i1, i1, i1
    %94 = comb.icmp bin ne %93, %c0_i4 {sv.namehint = "_decoder_decoded_orMatrixOutputs_T_16"} : i4
    %95 = comb.concat %24, %39, %51, %57, %70, %72 {sv.namehint = "_decoder_decoded_orMatrixOutputs_T_17"} : i1, i1, i1, i1, i1, i1
    %96 = comb.icmp bin ne %95, %c0_i6 {sv.namehint = "_decoder_decoded_orMatrixOutputs_T_18"} : i6
    %97 = comb.concat %false, %90 {sv.namehint = "io_sigs_typeTagIn"} : i1, i1
    %98 = comb.concat %false, %88 {sv.namehint = "io_sigs_typeTagOut"} : i1, i1
    hw.output %96, %94, %92, %97, %98, %86, %84, %82, %80 : i1, i1, i1, i2, i2, i1, i1, i1, i1
  }
  hw.module private @MulAddRecFNToRaw_preMul_e11_s53(in %io_op : i2, in %io_a : i65, in %io_b : i65, in %io_c : i65, out io_mulAddA : i53, out io_mulAddB : i53, out io_mulAddC : i106, out io_toPostMul_isSigNaNAny : i1, out io_toPostMul_isNaNAOrB : i1, out io_toPostMul_isInfA : i1, out io_toPostMul_isZeroA : i1, out io_toPostMul_isInfB : i1, out io_toPostMul_isZeroB : i1, out io_toPostMul_signProd : i1, out io_toPostMul_isNaNC : i1, out io_toPostMul_isInfC : i1, out io_toPostMul_isZeroC : i1, out io_toPostMul_sExpSum : i13, out io_toPostMul_doSubMags : i1, out io_toPostMul_CIsDominant : i1, out io_toPostMul_CDom_CAlignDist : i6, out io_toPostMul_highAlignedSigC : i55, out io_toPostMul_bit0AlignedSigC : i1) {
    %c-53_i13 = hw.constant -53 : i13
    %c-1_i52 = hw.constant -1 : i52
    %c54_i13 = hw.constant 54 : i13
    %c-1992_i14 = hw.constant -1992 : i14
    %c0_i2 = hw.constant 0 : i2
    %c161_i13 = hw.constant 161 : i13
    %c0_i14 = hw.constant 0 : i14
    %c0_i16 = hw.constant 0 : i16
    %c-1_i3 = hw.constant -1 : i3
    %c0_i13 = hw.constant 0 : i13
    %c0_i59 = hw.constant 0 : i59
    %c0_i4 = hw.constant 0 : i4
    %c0_i157 = hw.constant 0 : i157
    %c-1_i2 = hw.constant -1 : i2
    %true = hw.constant true
    %c0_i3 = hw.constant 0 : i3
    %c-95_i8 = hw.constant -95 : i8
    %false = hw.constant false
    %c0_i8 = hw.constant 0 : i8
    %c-18446744073709551616_i65 = hw.constant -18446744073709551616 : i65
    %0 = comb.extract %io_a from 52 {sv.namehint = "rawA_exp"} : (i65) -> i12
    %1 = comb.extract %io_a from 61 {sv.namehint = "_rawA_isZero_T"} : (i65) -> i3
    %2 = comb.icmp bin ne %1, %c0_i3 {sv.namehint = "_rawA_out_sig_T"} : i3
    %3 = comb.xor bin %2, %true {sv.namehint = "rawA_isZero"} : i1
    %4 = comb.extract %io_a from 62 {sv.namehint = "_rawA_isSpecial_T"} : (i65) -> i2
    %5 = comb.icmp bin eq %4, %c-1_i2 {sv.namehint = "rawA_isSpecial"} : i2
    %6 = comb.extract %io_a from 61 {sv.namehint = "_rawA_out_isInf_T"} : (i65) -> i1
    %7 = comb.and bin %5, %6 {sv.namehint = "rawA_isNaN"} : i1
    %8 = comb.xor bin %6, %true {sv.namehint = "_rawA_out_isInf_T_1"} : i1
    %9 = comb.and bin %5, %8 {sv.namehint = "rawA_isInf"} : i1
    %10 = comb.extract %io_a from 64 {sv.namehint = "rawA_sign"} : (i65) -> i1
    %11 = comb.extract %io_a from 0 {sv.namehint = "_rawA_out_sig_T_2"} : (i65) -> i52
    %12 = comb.extract %io_b from 52 {sv.namehint = "rawB_exp"} : (i65) -> i12
    %13 = comb.extract %io_b from 61 {sv.namehint = "_rawB_isZero_T"} : (i65) -> i3
    %14 = comb.icmp bin ne %13, %c0_i3 {sv.namehint = "_rawB_out_sig_T"} : i3
    %15 = comb.xor bin %14, %true {sv.namehint = "rawB_isZero"} : i1
    %16 = comb.extract %io_b from 62 {sv.namehint = "_rawB_isSpecial_T"} : (i65) -> i2
    %17 = comb.icmp bin eq %16, %c-1_i2 {sv.namehint = "rawB_isSpecial"} : i2
    %18 = comb.extract %io_b from 61 {sv.namehint = "_rawB_out_isInf_T"} : (i65) -> i1
    %19 = comb.and bin %17, %18 {sv.namehint = "rawB_isNaN"} : i1
    %20 = comb.xor bin %18, %true {sv.namehint = "_rawB_out_isInf_T_1"} : i1
    %21 = comb.and bin %17, %20 {sv.namehint = "rawB_isInf"} : i1
    %22 = comb.extract %io_b from 64 {sv.namehint = "rawB_sign"} : (i65) -> i1
    %23 = comb.extract %io_b from 0 {sv.namehint = "_rawB_out_sig_T_2"} : (i65) -> i52
    %24 = comb.extract %io_c from 52 {sv.namehint = "rawC_exp"} : (i65) -> i12
    %25 = comb.extract %io_c from 61 {sv.namehint = "_rawC_isZero_T"} : (i65) -> i3
    %26 = comb.icmp bin ne %25, %c0_i3 {sv.namehint = "_rawC_out_sig_T"} : i3
    %27 = comb.xor bin %26, %true {sv.namehint = "rawC_isZero"} : i1
    %28 = comb.extract %io_c from 62 {sv.namehint = "_rawC_isSpecial_T"} : (i65) -> i2
    %29 = comb.icmp bin eq %28, %c-1_i2 {sv.namehint = "rawC_isSpecial"} : i2
    %30 = comb.extract %io_c from 61 {sv.namehint = "_rawC_out_isInf_T"} : (i65) -> i1
    %31 = comb.and bin %29, %30 {sv.namehint = "rawC_isNaN"} : i1
    %32 = comb.xor bin %30, %true {sv.namehint = "_rawC_out_isInf_T_1"} : i1
    %33 = comb.and bin %29, %32 {sv.namehint = "rawC_isInf"} : i1
    %34 = comb.extract %io_c from 64 {sv.namehint = "rawC_sign"} : (i65) -> i1
    %35 = comb.extract %io_c from 0 {sv.namehint = "_rawC_out_sig_T_2"} : (i65) -> i52
    %36 = comb.concat %false, %26, %35 {sv.namehint = "rawC_sig"} : i1, i1, i52
    %37 = comb.extract %io_op from 1 {sv.namehint = "_signProd_T_1"} : (i2) -> i1
    %38 = comb.xor bin %10, %22, %37 {sv.namehint = "signProd"} : i1
    %39 = comb.concat %c0_i2, %0 : i2, i12
    %40 = comb.concat %c0_i2, %12 : i2, i12
    %41 = comb.add bin %39, %40, %c-1992_i14 {sv.namehint = "_sExpAlignedProd_T_1"} : i14
    %42 = comb.extract %io_op from 0 {sv.namehint = "_doSubMags_T_1"} : (i2) -> i1
    %43 = comb.xor bin %38, %34, %42 {sv.namehint = "doSubMags"} : i1
    %44 = comb.concat %c0_i2, %24 : i2, i12
    %45 = comb.sub bin %41, %44 {sv.namehint = "_sNatCAlignDist_T"} : i14
    %46 = comb.extract %45 from 0 {sv.namehint = "posNatCAlignDist"} : (i14) -> i13
    %47 = comb.icmp bin slt %45, %c0_i14 {sv.namehint = "_isMinCAlign_T_1"} : i14
    %48 = comb.or bin %3, %15, %47 {sv.namehint = "isMinCAlign"} : i1
    %49 = comb.icmp bin ult %46, %c54_i13 {sv.namehint = "_CIsDominant_T_1"} : i13
    %50 = comb.or bin %48, %49 {sv.namehint = "_CIsDominant_T_2"} : i1
    %51 = comb.and bin %26, %50 {sv.namehint = "CIsDominant"} : i1
    %52 = comb.icmp bin ult %46, %c161_i13 {sv.namehint = "_CAlignDist_T"} : i13
    %53 = comb.extract %45 from 0 {sv.namehint = "_CAlignDist_T_1"} : (i14) -> i8
    %54 = comb.mux bin %52, %53, %c-95_i8 {sv.namehint = "_CAlignDist_T_2"} : i8
    %55 = comb.mux bin %48, %c0_i8, %54 {sv.namehint = "CAlignDist"} : i8
    %56 = comb.xor %26, %true : i1
    %57 = comb.xor %35, %c-1_i52 : i52
    %58 = comb.concat %true, %56, %57 {sv.namehint = "_mainAlignedSigC_T"} : i1, i1, i52
    %59 = comb.mux bin %43, %58, %36 {sv.namehint = "_mainAlignedSigC_T_1"} : i54
    %60 = comb.replicate %43 {sv.namehint = "_mainAlignedSigC_T_2"} : (i1) -> i111
    %61 = comb.concat %59, %60 {sv.namehint = "_mainAlignedSigC_T_3"} : i54, i111
    %62 = comb.concat %c0_i157, %55 : i157, i8
    %63 = comb.shrs bin %61, %62 {sv.namehint = "mainAlignedSigC"} : i165
    %64 = comb.extract %io_c from 0 {sv.namehint = "_reduced4CExtra_reducedVec_0_T"} : (i65) -> i4
    %65 = comb.icmp bin ne %64, %c0_i4 {sv.namehint = "reduced4CExtra_reducedVec_0"} : i4
    %66 = comb.extract %io_c from 4 {sv.namehint = "_reduced4CExtra_reducedVec_1_T"} : (i65) -> i4
    %67 = comb.icmp bin ne %66, %c0_i4 {sv.namehint = "reduced4CExtra_reducedVec_1"} : i4
    %68 = comb.extract %io_c from 8 {sv.namehint = "_reduced4CExtra_reducedVec_2_T"} : (i65) -> i4
    %69 = comb.icmp bin ne %68, %c0_i4 {sv.namehint = "reduced4CExtra_reducedVec_2"} : i4
    %70 = comb.extract %io_c from 12 {sv.namehint = "_reduced4CExtra_reducedVec_3_T"} : (i65) -> i4
    %71 = comb.icmp bin ne %70, %c0_i4 {sv.namehint = "reduced4CExtra_reducedVec_3"} : i4
    %72 = comb.extract %io_c from 16 {sv.namehint = "_reduced4CExtra_reducedVec_4_T"} : (i65) -> i4
    %73 = comb.icmp bin ne %72, %c0_i4 {sv.namehint = "reduced4CExtra_reducedVec_4"} : i4
    %74 = comb.extract %io_c from 20 {sv.namehint = "_reduced4CExtra_reducedVec_5_T"} : (i65) -> i4
    %75 = comb.icmp bin ne %74, %c0_i4 {sv.namehint = "reduced4CExtra_reducedVec_5"} : i4
    %76 = comb.extract %io_c from 24 {sv.namehint = "_reduced4CExtra_reducedVec_6_T"} : (i65) -> i4
    %77 = comb.icmp bin ne %76, %c0_i4 {sv.namehint = "reduced4CExtra_reducedVec_6"} : i4
    %78 = comb.extract %io_c from 28 {sv.namehint = "_reduced4CExtra_reducedVec_7_T"} : (i65) -> i4
    %79 = comb.icmp bin ne %78, %c0_i4 {sv.namehint = "reduced4CExtra_reducedVec_7"} : i4
    %80 = comb.extract %io_c from 32 {sv.namehint = "_reduced4CExtra_reducedVec_8_T"} : (i65) -> i4
    %81 = comb.icmp bin ne %80, %c0_i4 {sv.namehint = "reduced4CExtra_reducedVec_8"} : i4
    %82 = comb.extract %io_c from 36 {sv.namehint = "_reduced4CExtra_reducedVec_9_T"} : (i65) -> i4
    %83 = comb.icmp bin ne %82, %c0_i4 {sv.namehint = "reduced4CExtra_reducedVec_9"} : i4
    %84 = comb.extract %io_c from 40 {sv.namehint = "_reduced4CExtra_reducedVec_10_T"} : (i65) -> i4
    %85 = comb.icmp bin ne %84, %c0_i4 {sv.namehint = "reduced4CExtra_reducedVec_10"} : i4
    %86 = comb.extract %io_c from 44 {sv.namehint = "_reduced4CExtra_reducedVec_11_T"} : (i65) -> i4
    %87 = comb.icmp bin ne %86, %c0_i4 {sv.namehint = "reduced4CExtra_reducedVec_11"} : i4
    %88 = comb.extract %io_c from 48 {sv.namehint = "_reduced4CExtra_reducedVec_12_T"} : (i65) -> i4
    %89 = comb.icmp bin ne %88, %c0_i4 {sv.namehint = "reduced4CExtra_reducedVec_12"} : i4
    %90 = comb.extract %55 from 2 {sv.namehint = "_reduced4CExtra_T_2"} : (i8) -> i6
    %91 = comb.concat %c0_i59, %90 : i59, i6
    %92 = comb.shrs bin %c-18446744073709551616_i65, %91 {sv.namehint = "reduced4CExtra_shift"} : i65
    %93 = comb.extract %92 from 31 : (i65) -> i1
    %94 = comb.extract %92 from 24 : (i65) -> i1
    %95 = comb.extract %92 from 26 : (i65) -> i1
    %96 = comb.extract %92 from 28 : (i65) -> i1
    %97 = comb.extract %92 from 30 : (i65) -> i1
    %98 = comb.extract %92 from 25 : (i65) -> i1
    %99 = comb.extract %92 from 27 : (i65) -> i1
    %100 = comb.extract %92 from 29 : (i65) -> i1
    %101 = comb.extract %92 from 32 {sv.namehint = "_reduced4CExtra_T_37"} : (i65) -> i1
    %102 = comb.extract %92 from 33 {sv.namehint = "_reduced4CExtra_T_38"} : (i65) -> i1
    %103 = comb.extract %92 from 34 {sv.namehint = "_reduced4CExtra_T_41"} : (i65) -> i1
    %104 = comb.extract %92 from 35 {sv.namehint = "_reduced4CExtra_T_42"} : (i65) -> i1
    %105 = comb.extract %92 from 36 {sv.namehint = "_reduced4CExtra_T_45"} : (i65) -> i1
    %106 = comb.concat %94, %98, %95, %99, %96, %100, %97, %93, %101, %102, %103, %104, %105 {sv.namehint = "_reduced4CExtra_T_47"} : i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1
    %107 = comb.concat %89, %87, %85, %83, %81, %79, %77, %75, %73, %71, %69, %67, %65 : i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1
    %108 = comb.and bin %107, %106 : i13
    %109 = comb.extract %63 from 0 {sv.namehint = "_alignedSigC_T_5"} : (i165) -> i3
    %110 = comb.icmp bin eq %109, %c-1_i3 {sv.namehint = "_alignedSigC_T_2"} : i3
    %111 = comb.icmp bin eq %108, %c0_i13 {sv.namehint = "_alignedSigC_T_3"} : i13
    %112 = comb.and bin %110, %111 {sv.namehint = "_alignedSigC_T_4"} : i1
    %113 = comb.concat %109, %108 : i3, i13
    %114 = comb.icmp bin ne %113, %c0_i16 {sv.namehint = "_alignedSigC_T_7"} : i16
    %115 = comb.mux bin %43, %112, %114 {sv.namehint = "_alignedSigC_T_8"} : i1
    %116 = comb.concat %2, %11 {sv.namehint = "io_mulAddA"} : i1, i52
    %117 = comb.concat %14, %23 {sv.namehint = "io_mulAddB"} : i1, i52
    %118 = comb.extract %63 from 3 {sv.namehint = "io_mulAddC"} : (i165) -> i106
    %119 = comb.extract %io_a from 51 {sv.namehint = "_io_toPostMul_isSigNaNAny_T"} : (i65) -> i1
    %120 = comb.xor bin %119, %true {sv.namehint = "_io_toPostMul_isSigNaNAny_T_1"} : i1
    %121 = comb.and bin %7, %120 {sv.namehint = "_io_toPostMul_isSigNaNAny_T_2"} : i1
    %122 = comb.extract %io_b from 51 {sv.namehint = "_io_toPostMul_isSigNaNAny_T_3"} : (i65) -> i1
    %123 = comb.xor bin %122, %true {sv.namehint = "_io_toPostMul_isSigNaNAny_T_4"} : i1
    %124 = comb.and bin %19, %123 {sv.namehint = "_io_toPostMul_isSigNaNAny_T_5"} : i1
    %125 = comb.extract %io_c from 51 {sv.namehint = "_io_toPostMul_isSigNaNAny_T_7"} : (i65) -> i1
    %126 = comb.xor bin %125, %true {sv.namehint = "_io_toPostMul_isSigNaNAny_T_8"} : i1
    %127 = comb.and bin %31, %126 {sv.namehint = "_io_toPostMul_isSigNaNAny_T_9"} : i1
    %128 = comb.or bin %121, %124, %127 {sv.namehint = "io_toPostMul_isSigNaNAny"} : i1
    %129 = comb.or bin %7, %19 {sv.namehint = "io_toPostMul_isNaNAOrB"} : i1
    %130 = comb.extract %41 from 0 : (i14) -> i13
    %131 = comb.add %130, %c-53_i13 {sv.namehint = "_io_toPostMul_sExpSum_T"} : i13
    %132 = comb.concat %false, %24 : i1, i12
    %133 = comb.mux bin %51, %132, %131 {sv.namehint = "_io_toPostMul_sExpSum_T_3"} : i13
    %134 = comb.extract %55 from 0 {sv.namehint = "io_toPostMul_CDom_CAlignDist"} : (i8) -> i6
    %135 = comb.extract %63 from 109 {sv.namehint = "io_toPostMul_highAlignedSigC"} : (i165) -> i55
    hw.output %116, %117, %118, %128, %129, %9, %3, %21, %15, %38, %31, %33, %27, %133, %43, %51, %134, %135, %115 : i53, i53, i106, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i13, i1, i1, i6, i55, i1
  }
  hw.module private @MulAddRecFNToRaw_postMul_e11_s53(in %io_fromPreMul_isSigNaNAny : i1, in %io_fromPreMul_isNaNAOrB : i1, in %io_fromPreMul_isInfA : i1, in %io_fromPreMul_isZeroA : i1, in %io_fromPreMul_isInfB : i1, in %io_fromPreMul_isZeroB : i1, in %io_fromPreMul_signProd : i1, in %io_fromPreMul_isNaNC : i1, in %io_fromPreMul_isInfC : i1, in %io_fromPreMul_isZeroC : i1, in %io_fromPreMul_sExpSum : i13, in %io_fromPreMul_doSubMags : i1, in %io_fromPreMul_CIsDominant : i1, in %io_fromPreMul_CDom_CAlignDist : i6, in %io_fromPreMul_highAlignedSigC : i55, in %io_fromPreMul_bit0AlignedSigC : i1, in %io_mulAddResult : i107, in %io_roundingMode : i3, out io_invalidExc : i1, out io_rawOut_isNaN : i1, out io_rawOut_isInf : i1, out io_rawOut_isZero : i1, out io_rawOut_sign : i1, out io_rawOut_sExp : i13, out io_rawOut_sig : i56) {
    %c0_i108 = hw.constant 0 : i108
    %c-1_i53 = hw.constant -1 : i53
    %c0_i12 = hw.constant 0 : i12
    %c1_i55 = hw.constant 1 : i55
    %c0_i28 = hw.constant 0 : i28
    %c-1_i5 = hw.constant -1 : i5
    %c0_i229 = hw.constant 0 : i229
    %c0_i127 = hw.constant 0 : i127
    %c-1_i109 = hw.constant -1 : i109
    %c0_i16 = hw.constant 0 : i16
    %c0_i13 = hw.constant 0 : i13
    %c-1_i4 = hw.constant -1 : i4
    %c0_i4 = hw.constant 0 : i4
    %c0_i2 = hw.constant 0 : i2
    %c0_i165 = hw.constant 0 : i165
    %c0_i63 = hw.constant 0 : i63
    %c0_i54 = hw.constant 0 : i54
    %c-1_i108 = hw.constant -1 : i108
    %c2_i3 = hw.constant 2 : i3
    %true = hw.constant true
    %false = hw.constant false
    %c-11_i6 = hw.constant -11 : i6
    %c-10_i6 = hw.constant -10 : i6
    %c-12_i6 = hw.constant -12 : i6
    %c-13_i6 = hw.constant -13 : i6
    %c-14_i6 = hw.constant -14 : i6
    %c-15_i6 = hw.constant -15 : i6
    %c-16_i6 = hw.constant -16 : i6
    %c-17_i6 = hw.constant -17 : i6
    %c-18_i6 = hw.constant -18 : i6
    %c-19_i6 = hw.constant -19 : i6
    %c-20_i6 = hw.constant -20 : i6
    %c-21_i6 = hw.constant -21 : i6
    %c-22_i6 = hw.constant -22 : i6
    %c-23_i6 = hw.constant -23 : i6
    %c-24_i6 = hw.constant -24 : i6
    %c-25_i6 = hw.constant -25 : i6
    %c-26_i6 = hw.constant -26 : i6
    %c-27_i6 = hw.constant -27 : i6
    %c-28_i6 = hw.constant -28 : i6
    %c-29_i6 = hw.constant -29 : i6
    %c-30_i6 = hw.constant -30 : i6
    %c-31_i6 = hw.constant -31 : i6
    %c-32_i6 = hw.constant -32 : i6
    %c-65536_i17 = hw.constant -65536 : i17
    %c31_i6 = hw.constant 31 : i6
    %c30_i6 = hw.constant 30 : i6
    %c29_i6 = hw.constant 29 : i6
    %c28_i6 = hw.constant 28 : i6
    %c27_i6 = hw.constant 27 : i6
    %c26_i6 = hw.constant 26 : i6
    %c25_i6 = hw.constant 25 : i6
    %c24_i6 = hw.constant 24 : i6
    %c23_i6 = hw.constant 23 : i6
    %c22_i6 = hw.constant 22 : i6
    %c21_i6 = hw.constant 21 : i6
    %c20_i6 = hw.constant 20 : i6
    %c19_i6 = hw.constant 19 : i6
    %c18_i6 = hw.constant 18 : i6
    %c17_i6 = hw.constant 17 : i6
    %c16_i6 = hw.constant 16 : i6
    %c15_i6 = hw.constant 15 : i6
    %c14_i6 = hw.constant 14 : i6
    %c13_i6 = hw.constant 13 : i6
    %c12_i6 = hw.constant 12 : i6
    %c11_i6 = hw.constant 11 : i6
    %c10_i6 = hw.constant 10 : i6
    %c9_i6 = hw.constant 9 : i6
    %c8_i6 = hw.constant 8 : i6
    %c7_i6 = hw.constant 7 : i6
    %c6_i6 = hw.constant 6 : i6
    %c5_i6 = hw.constant 5 : i6
    %c4_i6 = hw.constant 4 : i6
    %c3_i6 = hw.constant 3 : i6
    %c2_i6 = hw.constant 2 : i6
    %c1_i6 = hw.constant 1 : i6
    %c0_i6 = hw.constant 0 : i6
    %c-4294967296_i33 = hw.constant -4294967296 : i33
    %0 = comb.icmp bin eq %io_roundingMode, %c2_i3 {sv.namehint = "roundingMode_min"} : i3
    %1 = comb.xor bin %io_fromPreMul_signProd, %io_fromPreMul_doSubMags {sv.namehint = "opSignC"} : i1
    %2 = comb.extract %io_mulAddResult from 106 {sv.namehint = "_sigSum_T"} : (i107) -> i1
    %3 = comb.add bin %io_fromPreMul_highAlignedSigC, %c1_i55 {sv.namehint = "_sigSum_T_1"} : i55
    %4 = comb.mux bin %2, %3, %io_fromPreMul_highAlignedSigC {sv.namehint = "_sigSum_T_3"} : i55
    %5 = comb.extract %io_mulAddResult from 0 {sv.namehint = "_sigSum_T_4"} : (i107) -> i106
    %6 = comb.concat %c0_i12, %io_fromPreMul_doSubMags : i12, i1
    %7 = comb.sub bin %io_fromPreMul_sExpSum, %6 {sv.namehint = "_CDom_sExp_T_1"} : i13
    %8 = comb.extract %io_mulAddResult from 53 : (i107) -> i53
    %9 = comb.concat %4, %8 {sv.namehint = "_CDom_absSigSum_T"} : i55, i53
    %10 = comb.xor bin %9, %c-1_i108 {sv.namehint = "_CDom_absSigSum_T_1"} : i108
    %11 = comb.extract %io_fromPreMul_highAlignedSigC from 53 {sv.namehint = "_CDom_absSigSum_T_2"} : (i55) -> i2
    %12 = comb.extract %io_mulAddResult from 54 : (i107) -> i52
    %13 = comb.extract %4 from 0 : (i55) -> i53
    %14 = comb.concat %false, %11, %13, %12 {sv.namehint = "_CDom_absSigSum_T_5"} : i1, i2, i53, i52
    %15 = comb.mux bin %io_fromPreMul_doSubMags, %10, %14 {sv.namehint = "CDom_absSigSum"} : i108
    %16 = comb.extract %io_mulAddResult from 0 {sv.namehint = "_CDom_absSigSumExtra_T"} : (i107) -> i53
    %17 = comb.icmp ne %16, %c-1_i53 {sv.namehint = "_CDom_absSigSumExtra_T_2"} : i53
    %18 = comb.extract %io_mulAddResult from 0 {sv.namehint = "_CDom_absSigSumExtra_T_3"} : (i107) -> i54
    %19 = comb.icmp bin ne %18, %c0_i54 {sv.namehint = "_CDom_absSigSumExtra_T_4"} : i54
    %20 = comb.mux bin %io_fromPreMul_doSubMags, %17, %19 {sv.namehint = "CDom_absSigSumExtra"} : i1
    %21 = comb.concat %c0_i63, %15 : i63, i108
    %22 = comb.concat %c0_i165, %io_fromPreMul_CDom_CAlignDist : i165, i6
    %23 = comb.shl bin %21, %22 {sv.namehint = "_CDom_mainSig_T"} : i171
    %24 = comb.extract %15 from 0 : (i108) -> i2
    %25 = comb.icmp bin ne %24, %c0_i2 {sv.namehint = "CDom_reduced4SigExtra_reducedVec_0"} : i2
    %26 = comb.extract %15 from 2 {sv.namehint = "_CDom_reduced4SigExtra_reducedVec_1_T"} : (i108) -> i4
    %27 = comb.icmp bin ne %26, %c0_i4 {sv.namehint = "CDom_reduced4SigExtra_reducedVec_1"} : i4
    %28 = comb.extract %15 from 6 {sv.namehint = "_CDom_reduced4SigExtra_reducedVec_2_T"} : (i108) -> i4
    %29 = comb.icmp bin ne %28, %c0_i4 {sv.namehint = "CDom_reduced4SigExtra_reducedVec_2"} : i4
    %30 = comb.extract %15 from 10 {sv.namehint = "_CDom_reduced4SigExtra_reducedVec_3_T"} : (i108) -> i4
    %31 = comb.icmp bin ne %30, %c0_i4 {sv.namehint = "CDom_reduced4SigExtra_reducedVec_3"} : i4
    %32 = comb.extract %15 from 14 {sv.namehint = "_CDom_reduced4SigExtra_reducedVec_4_T"} : (i108) -> i4
    %33 = comb.icmp bin ne %32, %c0_i4 {sv.namehint = "CDom_reduced4SigExtra_reducedVec_4"} : i4
    %34 = comb.extract %15 from 18 {sv.namehint = "_CDom_reduced4SigExtra_reducedVec_5_T"} : (i108) -> i4
    %35 = comb.icmp bin ne %34, %c0_i4 {sv.namehint = "CDom_reduced4SigExtra_reducedVec_5"} : i4
    %36 = comb.extract %15 from 22 {sv.namehint = "_CDom_reduced4SigExtra_reducedVec_6_T"} : (i108) -> i4
    %37 = comb.icmp bin ne %36, %c0_i4 {sv.namehint = "CDom_reduced4SigExtra_reducedVec_6"} : i4
    %38 = comb.extract %15 from 26 {sv.namehint = "_CDom_reduced4SigExtra_reducedVec_7_T"} : (i108) -> i4
    %39 = comb.icmp bin ne %38, %c0_i4 {sv.namehint = "CDom_reduced4SigExtra_reducedVec_7"} : i4
    %40 = comb.extract %15 from 30 {sv.namehint = "_CDom_reduced4SigExtra_reducedVec_8_T"} : (i108) -> i4
    %41 = comb.icmp bin ne %40, %c0_i4 {sv.namehint = "CDom_reduced4SigExtra_reducedVec_8"} : i4
    %42 = comb.extract %15 from 34 {sv.namehint = "_CDom_reduced4SigExtra_reducedVec_9_T"} : (i108) -> i4
    %43 = comb.icmp bin ne %42, %c0_i4 {sv.namehint = "CDom_reduced4SigExtra_reducedVec_9"} : i4
    %44 = comb.extract %15 from 38 {sv.namehint = "_CDom_reduced4SigExtra_reducedVec_10_T"} : (i108) -> i4
    %45 = comb.icmp bin ne %44, %c0_i4 {sv.namehint = "CDom_reduced4SigExtra_reducedVec_10"} : i4
    %46 = comb.extract %15 from 42 {sv.namehint = "_CDom_reduced4SigExtra_reducedVec_11_T"} : (i108) -> i4
    %47 = comb.icmp bin ne %46, %c0_i4 {sv.namehint = "CDom_reduced4SigExtra_reducedVec_11"} : i4
    %48 = comb.extract %15 from 46 {sv.namehint = "_CDom_reduced4SigExtra_reducedVec_12_T"} : (i108) -> i4
    %49 = comb.icmp bin ne %48, %c0_i4 {sv.namehint = "CDom_reduced4SigExtra_reducedVec_12"} : i4
    %50 = comb.extract %io_fromPreMul_CDom_CAlignDist from 2 {sv.namehint = "_CDom_reduced4SigExtra_T_3"} : (i6) -> i4
    %51 = comb.xor bin %50, %c-1_i4 {sv.namehint = "_CDom_reduced4SigExtra_T_4"} : i4
    %52 = comb.concat %c0_i13, %51 : i13, i4
    %53 = comb.shrs bin %c-65536_i17, %52 {sv.namehint = "CDom_reduced4SigExtra_shift"} : i17
    %54 = comb.extract %53 from 8 : (i17) -> i1
    %55 = comb.extract %53 from 1 : (i17) -> i1
    %56 = comb.extract %53 from 3 : (i17) -> i1
    %57 = comb.extract %53 from 5 : (i17) -> i1
    %58 = comb.extract %53 from 7 : (i17) -> i1
    %59 = comb.extract %53 from 2 : (i17) -> i1
    %60 = comb.extract %53 from 4 : (i17) -> i1
    %61 = comb.extract %53 from 6 : (i17) -> i1
    %62 = comb.extract %53 from 9 {sv.namehint = "_CDom_reduced4SigExtra_T_39"} : (i17) -> i1
    %63 = comb.extract %53 from 10 {sv.namehint = "_CDom_reduced4SigExtra_T_40"} : (i17) -> i1
    %64 = comb.extract %53 from 11 {sv.namehint = "_CDom_reduced4SigExtra_T_43"} : (i17) -> i1
    %65 = comb.extract %53 from 12 {sv.namehint = "_CDom_reduced4SigExtra_T_44"} : (i17) -> i1
    %66 = comb.extract %53 from 13 {sv.namehint = "_CDom_reduced4SigExtra_T_47"} : (i17) -> i1
    %67 = comb.concat %55, %59, %56, %60, %57, %61, %58, %54, %62, %63, %64, %65, %66 {sv.namehint = "_CDom_reduced4SigExtra_T_49"} : i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1
    %68 = comb.concat %49, %47, %45, %43, %41, %39, %37, %35, %33, %31, %29, %27, %25 : i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1
    %69 = comb.and bin %68, %67 : i13
    %70 = comb.extract %23 from 53 {sv.namehint = "_CDom_sig_T"} : (i171) -> i55
    %71 = comb.extract %23 from 50 {sv.namehint = "_CDom_sig_T_1"} : (i171) -> i3
    %72 = comb.concat %71, %69 : i3, i13
    %73 = comb.icmp bin ne %72, %c0_i16 {sv.namehint = "_CDom_sig_T_3"} : i16
    %74 = comb.or bin %73, %20 {sv.namehint = "_CDom_sig_T_4"} : i1
    %75 = comb.concat %70, %74 {sv.namehint = "CDom_sig"} : i55, i1
    %76 = comb.extract %4 from 2 {sv.namehint = "notCDom_signSigSum"} : (i55) -> i1
    %77 = comb.extract %4 from 0 : (i55) -> i2
    %78 = comb.concat %77, %5, %io_fromPreMul_bit0AlignedSigC {sv.namehint = "_notCDom_absSigSum_T_2"} : i2, i106, i1
    %79 = comb.xor bin %78, %c-1_i109 {sv.namehint = "_notCDom_absSigSum_T_1"} : i109
    %80 = comb.concat %77, %5, %io_fromPreMul_bit0AlignedSigC : i2, i106, i1
    %81 = comb.concat %c0_i108, %io_fromPreMul_doSubMags : i108, i1
    %82 = comb.add bin %80, %81 {sv.namehint = "_notCDom_absSigSum_T_3"} : i109
    %83 = comb.mux bin %76, %79, %82 {sv.namehint = "notCDom_absSigSum"} : i109
    %84 = comb.extract %83 from 0 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_0_T"} : (i109) -> i2
    %85 = comb.icmp bin ne %84, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_0"} : i2
    %86 = comb.extract %83 from 2 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_1_T"} : (i109) -> i2
    %87 = comb.icmp bin ne %86, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_1"} : i2
    %88 = comb.extract %83 from 4 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_2_T"} : (i109) -> i2
    %89 = comb.icmp bin ne %88, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_2"} : i2
    %90 = comb.extract %83 from 6 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_3_T"} : (i109) -> i2
    %91 = comb.icmp bin ne %90, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_3"} : i2
    %92 = comb.extract %83 from 8 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_4_T"} : (i109) -> i2
    %93 = comb.icmp bin ne %92, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_4"} : i2
    %94 = comb.extract %83 from 10 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_5_T"} : (i109) -> i2
    %95 = comb.icmp bin ne %94, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_5"} : i2
    %96 = comb.extract %83 from 12 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_6_T"} : (i109) -> i2
    %97 = comb.icmp bin ne %96, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_6"} : i2
    %98 = comb.extract %83 from 14 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_7_T"} : (i109) -> i2
    %99 = comb.icmp bin ne %98, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_7"} : i2
    %100 = comb.extract %83 from 16 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_8_T"} : (i109) -> i2
    %101 = comb.icmp bin ne %100, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_8"} : i2
    %102 = comb.extract %83 from 18 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_9_T"} : (i109) -> i2
    %103 = comb.icmp bin ne %102, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_9"} : i2
    %104 = comb.extract %83 from 20 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_10_T"} : (i109) -> i2
    %105 = comb.icmp bin ne %104, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_10"} : i2
    %106 = comb.extract %83 from 22 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_11_T"} : (i109) -> i2
    %107 = comb.icmp bin ne %106, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_11"} : i2
    %108 = comb.extract %83 from 24 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_12_T"} : (i109) -> i2
    %109 = comb.icmp bin ne %108, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_12"} : i2
    %110 = comb.extract %83 from 26 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_13_T"} : (i109) -> i2
    %111 = comb.icmp bin ne %110, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_13"} : i2
    %112 = comb.extract %83 from 28 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_14_T"} : (i109) -> i2
    %113 = comb.icmp bin ne %112, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_14"} : i2
    %114 = comb.extract %83 from 30 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_15_T"} : (i109) -> i2
    %115 = comb.icmp bin ne %114, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_15"} : i2
    %116 = comb.extract %83 from 32 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_16_T"} : (i109) -> i2
    %117 = comb.icmp bin ne %116, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_16"} : i2
    %118 = comb.extract %83 from 34 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_17_T"} : (i109) -> i2
    %119 = comb.icmp bin ne %118, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_17"} : i2
    %120 = comb.extract %83 from 36 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_18_T"} : (i109) -> i2
    %121 = comb.icmp bin ne %120, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_18"} : i2
    %122 = comb.extract %83 from 38 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_19_T"} : (i109) -> i2
    %123 = comb.icmp bin ne %122, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_19"} : i2
    %124 = comb.extract %83 from 40 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_20_T"} : (i109) -> i2
    %125 = comb.icmp bin ne %124, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_20"} : i2
    %126 = comb.extract %83 from 42 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_21_T"} : (i109) -> i2
    %127 = comb.icmp bin ne %126, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_21"} : i2
    %128 = comb.extract %83 from 44 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_22_T"} : (i109) -> i2
    %129 = comb.icmp bin ne %128, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_22"} : i2
    %130 = comb.extract %83 from 46 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_23_T"} : (i109) -> i2
    %131 = comb.icmp bin ne %130, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_23"} : i2
    %132 = comb.extract %83 from 48 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_24_T"} : (i109) -> i2
    %133 = comb.icmp bin ne %132, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_24"} : i2
    %134 = comb.extract %83 from 50 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_25_T"} : (i109) -> i2
    %135 = comb.icmp bin ne %134, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_25"} : i2
    %136 = comb.extract %83 from 52 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_26_T"} : (i109) -> i2
    %137 = comb.icmp bin ne %136, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_26"} : i2
    %138 = comb.extract %83 from 54 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_27_T"} : (i109) -> i2
    %139 = comb.icmp bin ne %138, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_27"} : i2
    %140 = comb.extract %83 from 56 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_28_T"} : (i109) -> i2
    %141 = comb.icmp bin ne %140, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_28"} : i2
    %142 = comb.extract %83 from 58 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_29_T"} : (i109) -> i2
    %143 = comb.icmp bin ne %142, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_29"} : i2
    %144 = comb.extract %83 from 60 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_30_T"} : (i109) -> i2
    %145 = comb.icmp bin ne %144, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_30"} : i2
    %146 = comb.extract %83 from 62 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_31_T"} : (i109) -> i2
    %147 = comb.icmp bin ne %146, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_31"} : i2
    %148 = comb.extract %83 from 64 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_32_T"} : (i109) -> i2
    %149 = comb.icmp bin ne %148, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_32"} : i2
    %150 = comb.extract %83 from 66 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_33_T"} : (i109) -> i2
    %151 = comb.icmp bin ne %150, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_33"} : i2
    %152 = comb.extract %83 from 68 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_34_T"} : (i109) -> i2
    %153 = comb.icmp bin ne %152, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_34"} : i2
    %154 = comb.extract %83 from 70 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_35_T"} : (i109) -> i2
    %155 = comb.icmp bin ne %154, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_35"} : i2
    %156 = comb.extract %83 from 72 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_36_T"} : (i109) -> i2
    %157 = comb.icmp bin ne %156, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_36"} : i2
    %158 = comb.extract %83 from 74 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_37_T"} : (i109) -> i2
    %159 = comb.icmp bin ne %158, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_37"} : i2
    %160 = comb.extract %83 from 76 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_38_T"} : (i109) -> i2
    %161 = comb.icmp bin ne %160, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_38"} : i2
    %162 = comb.extract %83 from 78 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_39_T"} : (i109) -> i2
    %163 = comb.icmp bin ne %162, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_39"} : i2
    %164 = comb.extract %83 from 80 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_40_T"} : (i109) -> i2
    %165 = comb.icmp bin ne %164, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_40"} : i2
    %166 = comb.extract %83 from 82 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_41_T"} : (i109) -> i2
    %167 = comb.icmp bin ne %166, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_41"} : i2
    %168 = comb.extract %83 from 84 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_42_T"} : (i109) -> i2
    %169 = comb.icmp bin ne %168, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_42"} : i2
    %170 = comb.extract %83 from 86 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_43_T"} : (i109) -> i2
    %171 = comb.icmp bin ne %170, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_43"} : i2
    %172 = comb.extract %83 from 88 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_44_T"} : (i109) -> i2
    %173 = comb.icmp bin ne %172, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_44"} : i2
    %174 = comb.extract %83 from 90 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_45_T"} : (i109) -> i2
    %175 = comb.icmp bin ne %174, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_45"} : i2
    %176 = comb.extract %83 from 92 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_46_T"} : (i109) -> i2
    %177 = comb.icmp bin ne %176, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_46"} : i2
    %178 = comb.extract %83 from 94 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_47_T"} : (i109) -> i2
    %179 = comb.icmp bin ne %178, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_47"} : i2
    %180 = comb.extract %83 from 96 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_48_T"} : (i109) -> i2
    %181 = comb.icmp bin ne %180, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_48"} : i2
    %182 = comb.extract %83 from 98 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_49_T"} : (i109) -> i2
    %183 = comb.icmp bin ne %182, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_49"} : i2
    %184 = comb.extract %83 from 100 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_50_T"} : (i109) -> i2
    %185 = comb.icmp bin ne %184, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_50"} : i2
    %186 = comb.extract %83 from 102 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_51_T"} : (i109) -> i2
    %187 = comb.icmp bin ne %186, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_51"} : i2
    %188 = comb.extract %83 from 104 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_52_T"} : (i109) -> i2
    %189 = comb.icmp bin ne %188, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_52"} : i2
    %190 = comb.extract %83 from 106 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_53_T"} : (i109) -> i2
    %191 = comb.icmp bin ne %190, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_53"} : i2
    %192 = comb.extract %83 from 108 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_54"} : (i109) -> i1
    %193 = comb.mux bin %87, %c-11_i6, %c-10_i6 {sv.namehint = "_notCDom_normDistReduced2_T_55"} : i6
    %194 = comb.mux bin %89, %c-12_i6, %193 {sv.namehint = "_notCDom_normDistReduced2_T_56"} : i6
    %195 = comb.mux bin %91, %c-13_i6, %194 {sv.namehint = "_notCDom_normDistReduced2_T_57"} : i6
    %196 = comb.mux bin %93, %c-14_i6, %195 {sv.namehint = "_notCDom_normDistReduced2_T_58"} : i6
    %197 = comb.mux bin %95, %c-15_i6, %196 {sv.namehint = "_notCDom_normDistReduced2_T_59"} : i6
    %198 = comb.mux bin %97, %c-16_i6, %197 {sv.namehint = "_notCDom_normDistReduced2_T_60"} : i6
    %199 = comb.mux bin %99, %c-17_i6, %198 {sv.namehint = "_notCDom_normDistReduced2_T_61"} : i6
    %200 = comb.mux bin %101, %c-18_i6, %199 {sv.namehint = "_notCDom_normDistReduced2_T_62"} : i6
    %201 = comb.mux bin %103, %c-19_i6, %200 {sv.namehint = "_notCDom_normDistReduced2_T_63"} : i6
    %202 = comb.mux bin %105, %c-20_i6, %201 {sv.namehint = "_notCDom_normDistReduced2_T_64"} : i6
    %203 = comb.mux bin %107, %c-21_i6, %202 {sv.namehint = "_notCDom_normDistReduced2_T_65"} : i6
    %204 = comb.mux bin %109, %c-22_i6, %203 {sv.namehint = "_notCDom_normDistReduced2_T_66"} : i6
    %205 = comb.mux bin %111, %c-23_i6, %204 {sv.namehint = "_notCDom_normDistReduced2_T_67"} : i6
    %206 = comb.mux bin %113, %c-24_i6, %205 {sv.namehint = "_notCDom_normDistReduced2_T_68"} : i6
    %207 = comb.mux bin %115, %c-25_i6, %206 {sv.namehint = "_notCDom_normDistReduced2_T_69"} : i6
    %208 = comb.mux bin %117, %c-26_i6, %207 {sv.namehint = "_notCDom_normDistReduced2_T_70"} : i6
    %209 = comb.mux bin %119, %c-27_i6, %208 {sv.namehint = "_notCDom_normDistReduced2_T_71"} : i6
    %210 = comb.mux bin %121, %c-28_i6, %209 {sv.namehint = "_notCDom_normDistReduced2_T_72"} : i6
    %211 = comb.mux bin %123, %c-29_i6, %210 {sv.namehint = "_notCDom_normDistReduced2_T_73"} : i6
    %212 = comb.mux bin %125, %c-30_i6, %211 {sv.namehint = "_notCDom_normDistReduced2_T_74"} : i6
    %213 = comb.mux bin %127, %c-31_i6, %212 {sv.namehint = "_notCDom_normDistReduced2_T_75"} : i6
    %214 = comb.mux bin %129, %c-32_i6, %213 {sv.namehint = "_notCDom_normDistReduced2_T_76"} : i6
    %215 = comb.mux bin %131, %c31_i6, %214 {sv.namehint = "_notCDom_normDistReduced2_T_77"} : i6
    %216 = comb.mux bin %133, %c30_i6, %215 {sv.namehint = "_notCDom_normDistReduced2_T_78"} : i6
    %217 = comb.mux bin %135, %c29_i6, %216 {sv.namehint = "_notCDom_normDistReduced2_T_79"} : i6
    %218 = comb.mux bin %137, %c28_i6, %217 {sv.namehint = "_notCDom_normDistReduced2_T_80"} : i6
    %219 = comb.mux bin %139, %c27_i6, %218 {sv.namehint = "_notCDom_normDistReduced2_T_81"} : i6
    %220 = comb.mux bin %141, %c26_i6, %219 {sv.namehint = "_notCDom_normDistReduced2_T_82"} : i6
    %221 = comb.mux bin %143, %c25_i6, %220 {sv.namehint = "_notCDom_normDistReduced2_T_83"} : i6
    %222 = comb.mux bin %145, %c24_i6, %221 {sv.namehint = "_notCDom_normDistReduced2_T_84"} : i6
    %223 = comb.mux bin %147, %c23_i6, %222 {sv.namehint = "_notCDom_normDistReduced2_T_85"} : i6
    %224 = comb.mux bin %149, %c22_i6, %223 {sv.namehint = "_notCDom_normDistReduced2_T_86"} : i6
    %225 = comb.mux bin %151, %c21_i6, %224 {sv.namehint = "_notCDom_normDistReduced2_T_87"} : i6
    %226 = comb.mux bin %153, %c20_i6, %225 {sv.namehint = "_notCDom_normDistReduced2_T_88"} : i6
    %227 = comb.mux bin %155, %c19_i6, %226 {sv.namehint = "_notCDom_normDistReduced2_T_89"} : i6
    %228 = comb.mux bin %157, %c18_i6, %227 {sv.namehint = "_notCDom_normDistReduced2_T_90"} : i6
    %229 = comb.mux bin %159, %c17_i6, %228 {sv.namehint = "_notCDom_normDistReduced2_T_91"} : i6
    %230 = comb.mux bin %161, %c16_i6, %229 {sv.namehint = "_notCDom_normDistReduced2_T_92"} : i6
    %231 = comb.mux bin %163, %c15_i6, %230 {sv.namehint = "_notCDom_normDistReduced2_T_93"} : i6
    %232 = comb.mux bin %165, %c14_i6, %231 {sv.namehint = "_notCDom_normDistReduced2_T_94"} : i6
    %233 = comb.mux bin %167, %c13_i6, %232 {sv.namehint = "_notCDom_normDistReduced2_T_95"} : i6
    %234 = comb.mux bin %169, %c12_i6, %233 {sv.namehint = "_notCDom_normDistReduced2_T_96"} : i6
    %235 = comb.mux bin %171, %c11_i6, %234 {sv.namehint = "_notCDom_normDistReduced2_T_97"} : i6
    %236 = comb.mux bin %173, %c10_i6, %235 {sv.namehint = "_notCDom_normDistReduced2_T_98"} : i6
    %237 = comb.mux bin %175, %c9_i6, %236 {sv.namehint = "_notCDom_normDistReduced2_T_99"} : i6
    %238 = comb.mux bin %177, %c8_i6, %237 {sv.namehint = "_notCDom_normDistReduced2_T_100"} : i6
    %239 = comb.mux bin %179, %c7_i6, %238 {sv.namehint = "_notCDom_normDistReduced2_T_101"} : i6
    %240 = comb.mux bin %181, %c6_i6, %239 {sv.namehint = "_notCDom_normDistReduced2_T_102"} : i6
    %241 = comb.mux bin %183, %c5_i6, %240 {sv.namehint = "_notCDom_normDistReduced2_T_103"} : i6
    %242 = comb.mux bin %185, %c4_i6, %241 {sv.namehint = "_notCDom_normDistReduced2_T_104"} : i6
    %243 = comb.mux bin %187, %c3_i6, %242 {sv.namehint = "_notCDom_normDistReduced2_T_105"} : i6
    %244 = comb.mux bin %189, %c2_i6, %243 {sv.namehint = "_notCDom_normDistReduced2_T_106"} : i6
    %245 = comb.mux bin %191, %c1_i6, %244 {sv.namehint = "_notCDom_normDistReduced2_T_107"} : i6
    %246 = comb.mux bin %192, %c0_i6, %245 {sv.namehint = "notCDom_normDistReduced2"} : i6
    %247 = comb.concat %c0_i6, %246, %false : i6, i6, i1
    %248 = comb.sub bin %io_fromPreMul_sExpSum, %247 {sv.namehint = "_notCDom_sExp_T_1"} : i13
    %249 = comb.concat %c0_i127, %83 : i127, i109
    %250 = comb.concat %c0_i229, %246, %false : i229, i6, i1
    %251 = comb.shl bin %249, %250 {sv.namehint = "_notCDom_mainSig_T"} : i236
    %252 = comb.concat %87, %85 {sv.namehint = "_notCDom_reduced4SigExtra_reducedVec_0_T"} : i1, i1
    %253 = comb.icmp bin ne %252, %c0_i2 {sv.namehint = "notCDom_reduced4SigExtra_reducedVec_0"} : i2
    %254 = comb.concat %91, %89 {sv.namehint = "_notCDom_reduced4SigExtra_reducedVec_1_T"} : i1, i1
    %255 = comb.icmp bin ne %254, %c0_i2 {sv.namehint = "notCDom_reduced4SigExtra_reducedVec_1"} : i2
    %256 = comb.concat %95, %93 {sv.namehint = "_notCDom_reduced4SigExtra_reducedVec_2_T"} : i1, i1
    %257 = comb.icmp bin ne %256, %c0_i2 {sv.namehint = "notCDom_reduced4SigExtra_reducedVec_2"} : i2
    %258 = comb.concat %99, %97 {sv.namehint = "_notCDom_reduced4SigExtra_reducedVec_3_T"} : i1, i1
    %259 = comb.icmp bin ne %258, %c0_i2 {sv.namehint = "notCDom_reduced4SigExtra_reducedVec_3"} : i2
    %260 = comb.concat %103, %101 {sv.namehint = "_notCDom_reduced4SigExtra_reducedVec_4_T"} : i1, i1
    %261 = comb.icmp bin ne %260, %c0_i2 {sv.namehint = "notCDom_reduced4SigExtra_reducedVec_4"} : i2
    %262 = comb.concat %107, %105 {sv.namehint = "_notCDom_reduced4SigExtra_reducedVec_5_T"} : i1, i1
    %263 = comb.icmp bin ne %262, %c0_i2 {sv.namehint = "notCDom_reduced4SigExtra_reducedVec_5"} : i2
    %264 = comb.concat %111, %109 {sv.namehint = "_notCDom_reduced4SigExtra_reducedVec_6_T"} : i1, i1
    %265 = comb.icmp bin ne %264, %c0_i2 {sv.namehint = "notCDom_reduced4SigExtra_reducedVec_6"} : i2
    %266 = comb.concat %115, %113 {sv.namehint = "_notCDom_reduced4SigExtra_reducedVec_7_T"} : i1, i1
    %267 = comb.icmp bin ne %266, %c0_i2 {sv.namehint = "notCDom_reduced4SigExtra_reducedVec_7"} : i2
    %268 = comb.concat %119, %117 {sv.namehint = "_notCDom_reduced4SigExtra_reducedVec_8_T"} : i1, i1
    %269 = comb.icmp bin ne %268, %c0_i2 {sv.namehint = "notCDom_reduced4SigExtra_reducedVec_8"} : i2
    %270 = comb.concat %123, %121 {sv.namehint = "_notCDom_reduced4SigExtra_reducedVec_9_T"} : i1, i1
    %271 = comb.icmp bin ne %270, %c0_i2 {sv.namehint = "notCDom_reduced4SigExtra_reducedVec_9"} : i2
    %272 = comb.concat %127, %125 {sv.namehint = "_notCDom_reduced4SigExtra_reducedVec_10_T"} : i1, i1
    %273 = comb.icmp bin ne %272, %c0_i2 {sv.namehint = "notCDom_reduced4SigExtra_reducedVec_10"} : i2
    %274 = comb.concat %131, %129 {sv.namehint = "_notCDom_reduced4SigExtra_reducedVec_11_T"} : i1, i1
    %275 = comb.icmp bin ne %274, %c0_i2 {sv.namehint = "notCDom_reduced4SigExtra_reducedVec_11"} : i2
    %276 = comb.concat %135, %133 {sv.namehint = "_notCDom_reduced4SigExtra_reducedVec_12_T"} : i1, i1
    %277 = comb.icmp bin ne %276, %c0_i2 {sv.namehint = "notCDom_reduced4SigExtra_reducedVec_12"} : i2
    %278 = comb.extract %246 from 1 {sv.namehint = "_notCDom_reduced4SigExtra_T_3"} : (i6) -> i5
    %279 = comb.xor bin %278, %c-1_i5 {sv.namehint = "_notCDom_reduced4SigExtra_T_4"} : i5
    %280 = comb.concat %c0_i28, %279 : i28, i5
    %281 = comb.shrs bin %c-4294967296_i33, %280 {sv.namehint = "notCDom_reduced4SigExtra_shift"} : i33
    %282 = comb.extract %281 from 8 : (i33) -> i1
    %283 = comb.extract %281 from 1 : (i33) -> i1
    %284 = comb.extract %281 from 3 : (i33) -> i1
    %285 = comb.extract %281 from 5 : (i33) -> i1
    %286 = comb.extract %281 from 7 : (i33) -> i1
    %287 = comb.extract %281 from 2 : (i33) -> i1
    %288 = comb.extract %281 from 4 : (i33) -> i1
    %289 = comb.extract %281 from 6 : (i33) -> i1
    %290 = comb.extract %281 from 9 {sv.namehint = "_notCDom_reduced4SigExtra_T_39"} : (i33) -> i1
    %291 = comb.extract %281 from 10 {sv.namehint = "_notCDom_reduced4SigExtra_T_40"} : (i33) -> i1
    %292 = comb.extract %281 from 11 {sv.namehint = "_notCDom_reduced4SigExtra_T_43"} : (i33) -> i1
    %293 = comb.extract %281 from 12 {sv.namehint = "_notCDom_reduced4SigExtra_T_44"} : (i33) -> i1
    %294 = comb.extract %281 from 13 {sv.namehint = "_notCDom_reduced4SigExtra_T_47"} : (i33) -> i1
    %295 = comb.concat %283, %287, %284, %288, %285, %289, %286, %282, %290, %291, %292, %293, %294 {sv.namehint = "_notCDom_reduced4SigExtra_T_49"} : i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1
    %296 = comb.concat %277, %275, %273, %271, %269, %267, %265, %263, %261, %259, %257, %255, %253 : i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1
    %297 = comb.and bin %296, %295 : i13
    %298 = comb.extract %251 from 55 {sv.namehint = "_notCDom_sig_T"} : (i236) -> i55
    %299 = comb.extract %251 from 52 {sv.namehint = "_notCDom_sig_T_1"} : (i236) -> i3
    %300 = comb.concat %299, %297 : i3, i13
    %301 = comb.icmp bin ne %300, %c0_i16 {sv.namehint = "_notCDom_sig_T_3"} : i16
    %302 = comb.concat %298, %301 {sv.namehint = "notCDom_sig"} : i55, i1
    %303 = comb.extract %251 from 108 {sv.namehint = "_notCDom_completeCancellation_T"} : (i236) -> i2
    %304 = comb.icmp bin eq %303, %c0_i2 {sv.namehint = "notCDom_completeCancellation"} : i2
    %305 = comb.xor bin %io_fromPreMul_signProd, %76 {sv.namehint = "_notCDom_sign_T"} : i1
    %306 = comb.mux bin %304, %0, %305 {sv.namehint = "notCDom_sign"} : i1
    %307 = comb.or bin %io_fromPreMul_isInfA, %io_fromPreMul_isInfB {sv.namehint = "notNaN_isInfProd"} : i1
    %308 = comb.or bin %307, %io_fromPreMul_isInfC {sv.namehint = "notNaN_isInfOut"} : i1
    %309 = comb.or bin %io_fromPreMul_isZeroA, %io_fromPreMul_isZeroB {sv.namehint = "_notNaN_addZeros_T"} : i1
    %310 = comb.and bin %309, %io_fromPreMul_isZeroC {sv.namehint = "notNaN_addZeros"} : i1
    %311 = comb.and bin %io_fromPreMul_isInfA, %io_fromPreMul_isZeroB {sv.namehint = "_io_invalidExc_T"} : i1
    %312 = comb.and bin %io_fromPreMul_isZeroA, %io_fromPreMul_isInfB {sv.namehint = "_io_invalidExc_T_2"} : i1
    %313 = comb.xor bin %io_fromPreMul_isNaNAOrB, %true {sv.namehint = "_io_invalidExc_T_4"} : i1
    %314 = comb.and bin %313, %307, %io_fromPreMul_isInfC, %io_fromPreMul_doSubMags {sv.namehint = "_io_invalidExc_T_8"} : i1
    %315 = comb.or bin %io_fromPreMul_isSigNaNAny, %311, %312, %314 {sv.namehint = "io_invalidExc"} : i1
    %316 = comb.or bin %io_fromPreMul_isNaNAOrB, %io_fromPreMul_isNaNC {sv.namehint = "io_rawOut_isNaN"} : i1
    %317 = comb.xor bin %io_fromPreMul_CIsDominant, %true {sv.namehint = "_io_rawOut_isZero_T"} : i1
    %318 = comb.and bin %317, %304 {sv.namehint = "_io_rawOut_isZero_T_1"} : i1
    %319 = comb.or bin %310, %318 {sv.namehint = "io_rawOut_isZero"} : i1
    %320 = comb.and bin %307, %io_fromPreMul_signProd {sv.namehint = "_io_rawOut_sign_T"} : i1
    %321 = comb.and bin %io_fromPreMul_isInfC, %1 {sv.namehint = "_io_rawOut_sign_T_1"} : i1
    %322 = comb.icmp bin ne %io_roundingMode, %c2_i3 {sv.namehint = "_io_rawOut_sign_T_3"} : i3
    %323 = comb.and bin %310, %322, %io_fromPreMul_signProd, %1 {sv.namehint = "_io_rawOut_sign_T_6"} : i1
    %324 = comb.or bin %io_fromPreMul_signProd, %1 {sv.namehint = "_io_rawOut_sign_T_9"} : i1
    %325 = comb.and bin %310, %0, %324 {sv.namehint = "_io_rawOut_sign_T_10"} : i1
    %326 = comb.xor bin %308, %true {sv.namehint = "_io_rawOut_sign_T_12"} : i1
    %327 = comb.xor bin %310, %true {sv.namehint = "_io_rawOut_sign_T_13"} : i1
    %328 = comb.mux bin %io_fromPreMul_CIsDominant, %1, %306 {sv.namehint = "_io_rawOut_sign_T_15"} : i1
    %329 = comb.and bin %326, %327, %328 {sv.namehint = "_io_rawOut_sign_T_16"} : i1
    %330 = comb.or bin %320, %321, %323, %325, %329 {sv.namehint = "io_rawOut_sign"} : i1
    %331 = comb.mux bin %io_fromPreMul_CIsDominant, %7, %248 {sv.namehint = "io_rawOut_sExp"} : i13
    %332 = comb.mux bin %io_fromPreMul_CIsDominant, %75, %302 {sv.namehint = "io_rawOut_sig"} : i56
    hw.output %315, %316, %308, %319, %330, %331, %332 : i1, i1, i1, i1, i1, i13, i56
  }
  hw.module private @RoundAnyRawFNToRecFN_ie11_is55_oe11_os53(in %io_invalidExc : i1, in %io_in_isNaN : i1, in %io_in_isInf : i1, in %io_in_isZero : i1, in %io_in_sign : i1, in %io_in_sExp : i13, in %io_in_sig : i56, in %io_roundingMode : i3, out io_out : i65, out io_exceptionFlags : i5) {
    %c-174763_i19 = hw.constant -174763 : i19
    %c-1_i9 = hw.constant -1 : i9
    %c-1_i10 = hw.constant -1 : i10
    %c0_i111 = hw.constant 0 : i111
    %c2_i4 = hw.constant 2 : i4
    %c0_i110 = hw.constant 0 : i110
    %c-1_i53 = hw.constant -1 : i53
    %c5_i4 = hw.constant 5 : i4
    %c1_i2 = hw.constant 1 : i2
    %c974_i14 = hw.constant 974 : i14
    %c1_i55 = hw.constant 1 : i55
    %c-1_i55 = hw.constant -1 : i55
    %c-1_i51 = hw.constant -1 : i51
    %c0_i59 = hw.constant 0 : i59
    %c-1_i12 = hw.constant -1 : i12
    %c2_i3 = hw.constant 2 : i3
    %c-4_i3 = hw.constant -4 : i3
    %c-2_i3 = hw.constant -2 : i3
    %c-1_i3 = hw.constant -1 : i3
    %c-1_i2 = hw.constant -1 : i2
    %c0_i55 = hw.constant 0 : i55
    %c-512_i12 = hw.constant -512 : i12
    %c974_i12 = hw.constant 974 : i12
    %c-1025_i12 = hw.constant -1025 : i12
    %c-1024_i12 = hw.constant -1024 : i12
    %c-18446744073709551616_i65 = hw.constant -18446744073709551616 : i65
    %c0_i51 = hw.constant 0 : i51
    %c0_i3 = hw.constant 0 : i3
    %c0_i54 = hw.constant 0 : i54
    %c3_i3 = hw.constant 3 : i3
    %c0_i12 = hw.constant 0 : i12
    %c-975_i12 = hw.constant -975 : i12
    %false = hw.constant false
    %true = hw.constant true
    %0 = comb.icmp bin eq %io_roundingMode, %c0_i3 {sv.namehint = "roundingMode_near_even"} : i3
    %1 = comb.icmp bin eq %io_roundingMode, %c2_i3 {sv.namehint = "roundingMode_min"} : i3
    %2 = comb.icmp bin eq %io_roundingMode, %c3_i3 {sv.namehint = "roundingMode_max"} : i3
    %3 = comb.icmp bin eq %io_roundingMode, %c-4_i3 {sv.namehint = "roundingMode_near_maxMag"} : i3
    %4 = comb.icmp bin eq %io_roundingMode, %c-2_i3 {sv.namehint = "roundingMode_odd"} : i3
    %5 = comb.and bin %1, %io_in_sign {sv.namehint = "_roundMagUp_T"} : i1
    %6 = comb.xor bin %io_in_sign, %true {sv.namehint = "_roundMagUp_T_1"} : i1
    %7 = comb.and bin %2, %6 {sv.namehint = "_roundMagUp_T_2"} : i1
    %8 = comb.or bin %5, %7 {sv.namehint = "roundMagUp"} : i1
    %9 = comb.extract %io_in_sig from 55 {sv.namehint = "doShiftSigDown1"} : (i56) -> i1
    %10 = comb.extract %io_in_sExp from 0 {sv.namehint = "_roundMask_T"} : (i13) -> i12
    %11 = comb.xor bin %10, %c-1_i12 {sv.namehint = "_roundMask_T_1"} : i12
    %12 = comb.extract %11 from 11 {sv.namehint = "roundMask_msb"} : (i12) -> i1
    %13 = comb.extract %11 from 10 {sv.namehint = "roundMask_msb_1"} : (i12) -> i1
    %14 = comb.extract %11 from 9 {sv.namehint = "roundMask_msb_2"} : (i12) -> i1
    %15 = comb.extract %11 from 8 {sv.namehint = "roundMask_msb_3"} : (i12) -> i1
    %16 = comb.extract %11 from 7 {sv.namehint = "roundMask_msb_4"} : (i12) -> i1
    %17 = comb.extract %11 from 6 {sv.namehint = "roundMask_msb_5"} : (i12) -> i1
    %18 = comb.extract %11 from 0 {sv.namehint = "roundMask_lsbs_5"} : (i12) -> i6
    %19 = comb.concat %c0_i59, %18 : i59, i6
    %20 = comb.shrs bin %c-18446744073709551616_i65, %19 {sv.namehint = "roundMask_shift"} : i65
    %21 = comb.extract %20 from 17 : (i65) -> i2
    %22 = comb.extract %20 from 21 : (i65) -> i2
    %23 = comb.extract %20 from 25 : (i65) -> i2
    %24 = comb.extract %20 from 29 : (i65) -> i2
    %25 = comb.extract %20 from 33 : (i65) -> i2
    %26 = comb.extract %20 from 37 : (i65) -> i2
    %27 = comb.extract %20 from 19 : (i65) -> i2
    %28 = comb.concat %27, %22 : i2, i2
    %29 = comb.extract %20 from 23 : (i65) -> i2
    %30 = comb.extract %20 from 27 : (i65) -> i2
    %31 = comb.concat %30, %24 : i2, i2
    %32 = comb.extract %20 from 31 : (i65) -> i2
    %33 = comb.extract %20 from 35 : (i65) -> i2
    %34 = comb.concat %33, %26 : i2, i2
    %35 = comb.extract %20 from 44 : (i65) -> i1
    %36 = comb.extract %20 from 36 : (i65) -> i1
    %37 = comb.concat %21, %27, %22, %29, %23, %30, %24, %32, %25, %36 : i2, i2, i2, i2, i2, i2, i2, i2, i2, i1
    %38 = comb.and %37, %c-174763_i19 : i19
    %39 = comb.extract %20 from 13 : (i65) -> i1
    %40 = comb.extract %20 from 15 : (i65) -> i1
    %41 = comb.extract %20 from 17 : (i65) -> i1
    %42 = comb.and %28, %c5_i4 : i4
    %43 = comb.extract %20 from 23 : (i65) -> i1
    %44 = comb.extract %20 from 25 : (i65) -> i1
    %45 = comb.and %31, %c5_i4 : i4
    %46 = comb.extract %20 from 31 : (i65) -> i1
    %47 = comb.extract %20 from 33 : (i65) -> i1
    %48 = comb.and %34, %c5_i4 : i4
    %49 = comb.extract %20 from 39 : (i65) -> i1
    %50 = comb.extract %20 from 41 : (i65) -> i1
    %51 = comb.extract %20 from 43 : (i65) -> i1
    %52 = comb.extract %20 from 14 : (i65) -> i1
    %53 = comb.extract %20 from 16 : (i65) -> i1
    %54 = comb.extract %38 from 15 : (i19) -> i4
    %55 = comb.or %54, %42 : i4
    %56 = comb.extract %20 from 22 : (i65) -> i1
    %57 = comb.extract %38 from 13 : (i19) -> i1
    %58 = comb.or %57, %43 : i1
    %59 = comb.extract %20 from 24 : (i65) -> i1
    %60 = comb.extract %38 from 7 : (i19) -> i4
    %61 = comb.or %60, %45 : i4
    %62 = comb.extract %20 from 30 : (i65) -> i1
    %63 = comb.extract %38 from 5 : (i19) -> i1
    %64 = comb.or %63, %46 : i1
    %65 = comb.extract %20 from 32 : (i65) -> i1
    %66 = comb.extract %38 from 0 : (i19) -> i3
    %67 = comb.concat %66, %false : i3, i1
    %68 = comb.or %67, %48 : i4
    %69 = comb.extract %20 from 38 : (i65) -> i1
    %70 = comb.extract %20 from 40 : (i65) -> i1
    %71 = comb.extract %20 from 42 : (i65) -> i1
    %72 = comb.extract %20 from 60 : (i65) -> i1
    %73 = comb.extract %20 from 45 : (i65) -> i1
    %74 = comb.extract %20 from 47 : (i65) -> i1
    %75 = comb.extract %20 from 49 : (i65) -> i1
    %76 = comb.extract %20 from 51 : (i65) -> i1
    %77 = comb.extract %20 from 53 : (i65) -> i1
    %78 = comb.extract %20 from 55 : (i65) -> i1
    %79 = comb.extract %20 from 57 : (i65) -> i1
    %80 = comb.extract %20 from 59 : (i65) -> i1
    %81 = comb.extract %20 from 46 : (i65) -> i1
    %82 = comb.extract %20 from 48 : (i65) -> i1
    %83 = comb.extract %20 from 50 : (i65) -> i1
    %84 = comb.extract %20 from 52 : (i65) -> i1
    %85 = comb.extract %20 from 54 : (i65) -> i1
    %86 = comb.extract %20 from 56 : (i65) -> i1
    %87 = comb.extract %20 from 58 : (i65) -> i1
    %88 = comb.extract %20 from 61 {sv.namehint = "_roundMask_T_96"} : (i65) -> i1
    %89 = comb.extract %20 from 62 {sv.namehint = "_roundMask_T_97"} : (i65) -> i1
    %90 = comb.extract %20 from 63 {sv.namehint = "_roundMask_T_99"} : (i65) -> i1
    %91 = comb.concat %39, %52, %40, %53, %41, %55, %56, %58, %59, %44, %61, %62, %64, %65, %47, %68, %69, %49, %70, %50, %71, %51, %35, %73, %81, %74, %82, %75, %83, %76, %84, %77, %85, %78, %86, %79, %87, %80, %72, %88, %89, %90 {sv.namehint = "_roundMask_T_102"} : i1, i1, i1, i1, i1, i4, i1, i1, i1, i1, i4, i1, i1, i1, i1, i4, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1
    %92 = comb.xor bin %91, %c-1_i51 {sv.namehint = "_roundMask_T_103"} : i51
    %93 = comb.or bin %14, %15, %16, %17 : i1
    %94 = comb.mux bin %93, %c0_i51, %92 {sv.namehint = "_roundMask_T_113"} : i51
    %95 = comb.xor bin %94, %c-1_i51 {sv.namehint = "_roundMask_T_114"} : i51
    %96 = comb.concat %95, %c-1_i3 {sv.namehint = "_roundMask_T_115"} : i51, i3
    %97 = comb.extract %11 from 8 {sv.namehint = "roundMask_msb_7"} : (i12) -> i1
    %98 = comb.extract %11 from 7 {sv.namehint = "roundMask_msb_8"} : (i12) -> i1
    %99 = comb.extract %11 from 6 {sv.namehint = "roundMask_msb_9"} : (i12) -> i1
    %100 = comb.extract %11 from 0 {sv.namehint = "roundMask_lsbs_9"} : (i12) -> i6
    %101 = comb.concat %c0_i59, %100 : i59, i6
    %102 = comb.shrs bin %c-18446744073709551616_i65, %101 {sv.namehint = "roundMask_shift_1"} : i65
    %103 = comb.extract %102 from 0 {sv.namehint = "_roundMask_T_118"} : (i65) -> i1
    %104 = comb.extract %102 from 1 {sv.namehint = "_roundMask_T_119"} : (i65) -> i1
    %105 = comb.extract %102 from 2 {sv.namehint = "_roundMask_T_121"} : (i65) -> i1
    %106 = comb.concat %103, %104, %105 {sv.namehint = "_roundMask_T_122"} : i1, i1, i1
    %107 = comb.and bin %14, %97, %98, %99 : i1
    %108 = comb.mux bin %107, %106, %c0_i3 {sv.namehint = "_roundMask_T_126"} : i3
    %109 = comb.concat %c0_i51, %108 : i51, i3
    %110 = comb.mux bin %13, %96, %109 {sv.namehint = "_roundMask_T_127"} : i54
    %111 = comb.mux bin %12, %110, %c0_i54 {sv.namehint = "_roundMask_T_128"} : i54
    %112 = comb.extract %111 from 1 : (i54) -> i53
    %113 = comb.extract %111 from 0 : (i54) -> i1
    %114 = comb.or bin %113, %9 {sv.namehint = "_common_underflow_T_4"} : i1
    %115 = comb.xor %112, %c-1_i53 : i53
    %116 = comb.xor %114, %true : i1
    %117 = comb.extract %io_in_sig from 1 : (i56) -> i55
    %118 = comb.concat %true, %115, %116 : i1, i53, i1
    %119 = comb.concat %112, %114, %true : i53, i1, i1
    %120 = comb.and bin %117, %118, %119 {sv.namehint = "_roundPosBit_T"} : i55
    %121 = comb.icmp bin ne %120, %c0_i55 {sv.namehint = "roundPosBit"} : i55
    %122 = comb.extract %io_in_sig from 0 : (i56) -> i55
    %123 = comb.concat %112, %114, %true : i53, i1, i1
    %124 = comb.and bin %122, %123 {sv.namehint = "_anyRoundExtra_T"} : i55
    %125 = comb.concat %120, %124 : i55, i55
    %126 = comb.icmp bin ne %125, %c0_i110 {sv.namehint = "anyRound"} : i110
    %127 = comb.or bin %0, %3 {sv.namehint = "_overflow_roundMagUp_T"} : i1
    %128 = comb.and bin %127, %121 {sv.namehint = "_roundIncr_T_1"} : i1
    %129 = comb.and bin %8, %126 {sv.namehint = "_roundIncr_T_2"} : i1
    %130 = comb.or bin %128, %129 {sv.namehint = "roundIncr"} : i1
    %131 = comb.extract %io_in_sig from 2 : (i56) -> i54
    %132 = comb.concat %112, %114 : i53, i1
    %133 = comb.or bin %131, %132 {sv.namehint = "_roundedSig_T"} : i54
    %134 = comb.concat %false, %133 : i1, i54
    %135 = comb.add bin %134, %c1_i55 {sv.namehint = "_roundedSig_T_2"} : i55
    %136 = comb.icmp bin eq %124, %c0_i55 {sv.namehint = "_roundedSig_T_4"} : i55
    %137 = comb.and bin %0, %121, %136 {sv.namehint = "_roundedSig_T_5"} : i1
    %138 = comb.concat %112, %114, %true {sv.namehint = "_roundedSig_T_6"} : i53, i1, i1
    %139 = comb.mux bin %137, %138, %c0_i55 {sv.namehint = "_roundedSig_T_7"} : i55
    %140 = comb.xor bin %139, %c-1_i55 {sv.namehint = "_roundedSig_T_8"} : i55
    %141 = comb.and bin %135, %140 {sv.namehint = "_roundedSig_T_9"} : i55
    %142 = comb.xor %112, %c-1_i53 : i53
    %143 = comb.xor %114, %true : i1
    %144 = comb.extract %io_in_sig from 2 : (i56) -> i54
    %145 = comb.concat %142, %143 : i53, i1
    %146 = comb.and bin %144, %145 {sv.namehint = "_roundedSig_T_12"} : i54
    %147 = comb.and bin %4, %126 {sv.namehint = "_roundedSig_T_13"} : i1
    %148 = comb.concat %true, %115, %116 : i1, i53, i1
    %149 = comb.concat %112, %114, %true : i53, i1, i1
    %150 = comb.and bin %148, %149 {sv.namehint = "_roundedSig_T_14"} : i55
    %151 = comb.mux bin %147, %150, %c0_i55 {sv.namehint = "_roundedSig_T_15"} : i55
    %152 = comb.concat %false, %146 : i1, i54
    %153 = comb.or bin %152, %151 {sv.namehint = "_roundedSig_T_16"} : i55
    %154 = comb.mux bin %130, %141, %153 {sv.namehint = "roundedSig"} : i55
    %155 = comb.extract %154 from 53 {sv.namehint = "_sRoundedExp_T"} : (i55) -> i2
    %156 = comb.extract %io_in_sExp from 12 : (i13) -> i1
    %157 = comb.concat %156, %io_in_sExp : i1, i13
    %158 = comb.concat %c0_i12, %155 : i12, i2
    %159 = comb.add bin %157, %158 {sv.namehint = "sRoundedExp"} : i14
    %160 = comb.extract %159 from 0 {sv.namehint = "common_expOut"} : (i14) -> i12
    %161 = comb.extract %154 from 1 {sv.namehint = "_common_fractOut_T"} : (i55) -> i52
    %162 = comb.extract %154 from 0 {sv.namehint = "_common_fractOut_T_1"} : (i55) -> i52
    %163 = comb.mux bin %9, %161, %162 {sv.namehint = "common_fractOut"} : i52
    %164 = comb.extract %159 from 10 : (i14) -> i4
    %165 = comb.icmp bin sgt %164, %c2_i4 {sv.namehint = "common_overflow"} : i4
    %166 = comb.icmp bin slt %159, %c974_i14 {sv.namehint = "common_totalUnderflow"} : i14
    %167 = comb.extract %io_in_sig from 2 {sv.namehint = "_unboundedRange_anyRound_T"} : (i56) -> i1
    %168 = comb.extract %io_in_sig from 1 {sv.namehint = "_unboundedRange_roundPosBit_T_1"} : (i56) -> i1
    %169 = comb.mux bin %9, %167, %168 {sv.namehint = "unboundedRange_roundPosBit"} : i1
    %170 = comb.and bin %9, %167 {sv.namehint = "_unboundedRange_anyRound_T_1"} : i1
    %171 = comb.extract %io_in_sig from 0 {sv.namehint = "_unboundedRange_anyRound_T_2"} : (i56) -> i2
    %172 = comb.concat %170, %171 : i1, i2
    %173 = comb.icmp bin ne %172, %c0_i3 {sv.namehint = "unboundedRange_anyRound"} : i3
    %174 = comb.and bin %127, %169 {sv.namehint = "_unboundedRange_roundIncr_T_1"} : i1
    %175 = comb.and bin %8, %173 {sv.namehint = "_unboundedRange_roundIncr_T_2"} : i1
    %176 = comb.or bin %174, %175 {sv.namehint = "unboundedRange_roundIncr"} : i1
    %177 = comb.extract %154 from 54 {sv.namehint = "_roundCarry_T"} : (i55) -> i1
    %178 = comb.extract %154 from 53 {sv.namehint = "_roundCarry_T_1"} : (i55) -> i1
    %179 = comb.mux bin %9, %177, %178 {sv.namehint = "roundCarry"} : i1
    %180 = comb.extract %io_in_sExp from 11 : (i13) -> i2
    %181 = comb.icmp bin ne %180, %c1_i2 {sv.namehint = "_common_underflow_T_1"} : i2
    %182 = comb.extract %111 from 1 {sv.namehint = "_common_underflow_T_9"} : (i54) -> i1
    %183 = comb.mux bin %9, %182, %114 {sv.namehint = "_common_underflow_T_5"} : i1
    %184 = comb.extract %111 from 2 {sv.namehint = "_common_underflow_T_8"} : (i54) -> i1
    %185 = comb.mux bin %9, %184, %182 {sv.namehint = "_common_underflow_T_10"} : i1
    %186 = comb.xor bin %185, %true {sv.namehint = "_common_underflow_T_11"} : i1
    %187 = comb.and bin %186, %179, %121, %176 {sv.namehint = "_common_underflow_T_15"} : i1
    %188 = comb.xor bin %187, %true {sv.namehint = "_common_underflow_T_16"} : i1
    %189 = comb.and bin %126, %181, %183, %188 {sv.namehint = "_common_underflow_T_17"} : i1
    %190 = comb.or bin %166, %189 {sv.namehint = "common_underflow"} : i1
    %191 = comb.concat %166, %120, %124 : i1, i55, i55
    %192 = comb.icmp bin ne %191, %c0_i111 {sv.namehint = "common_inexact"} : i111
    %193 = comb.or bin %io_invalidExc, %io_in_isNaN {sv.namehint = "isNaNOut"} : i1
    %194 = comb.xor bin %193, %true {sv.namehint = "_commonCase_T"} : i1
    %195 = comb.xor bin %io_in_isInf, %true {sv.namehint = "_commonCase_T_1"} : i1
    %196 = comb.xor bin %io_in_isZero, %true {sv.namehint = "_commonCase_T_3"} : i1
    %197 = comb.and bin %194, %195, %196 {sv.namehint = "commonCase"} : i1
    %198 = comb.and bin %197, %165 {sv.namehint = "overflow"} : i1
    %199 = comb.and bin %197, %190 {sv.namehint = "underflow"} : i1
    %200 = comb.and bin %197, %192 {sv.namehint = "_inexact_T"} : i1
    %201 = comb.or bin %198, %200 {sv.namehint = "inexact"} : i1
    %202 = comb.or bin %127, %8 {sv.namehint = "overflow_roundMagUp"} : i1
    %203 = comb.or bin %8, %4 {sv.namehint = "_pegMinNonzeroMagOut_T_1"} : i1
    %204 = comb.and bin %197, %166, %203 {sv.namehint = "pegMinNonzeroMagOut"} : i1
    %205 = comb.xor bin %202, %true {sv.namehint = "_pegMaxFiniteMagOut_T"} : i1
    %206 = comb.and bin %198, %205 {sv.namehint = "pegMaxFiniteMagOut"} : i1
    %207 = comb.and bin %198, %202 {sv.namehint = "_notNaN_isInfOut_T"} : i1
    %208 = comb.or bin %io_in_isInf, %207 {sv.namehint = "notNaN_isInfOut"} : i1
    %209 = comb.xor %193, %true : i1
    %210 = comb.and %209, %io_in_sign {sv.namehint = "signOut"} : i1
    %211 = comb.or bin %io_in_isZero, %166 {sv.namehint = "_expOut_T"} : i1
    %212 = comb.mux bin %211, %c-512_i12, %c0_i12 {sv.namehint = "_expOut_T_1"} : i12
    %213 = comb.xor bin %212, %c-1_i12 {sv.namehint = "_expOut_T_2"} : i12
    %214 = comb.mux bin %204, %c-975_i12, %c0_i12 {sv.namehint = "_expOut_T_5"} : i12
    %215 = comb.xor bin %214, %c-1_i12 {sv.namehint = "_expOut_T_6"} : i12
    %216 = comb.xor %206, %true : i1
    %217 = comb.concat %true, %216, %c-1_i10 {sv.namehint = "_expOut_T_9"} : i1, i1, i10
    %218 = comb.xor %208, %true : i1
    %219 = comb.concat %c-1_i2, %218, %c-1_i9 {sv.namehint = "_expOut_T_12"} : i2, i1, i9
    %220 = comb.and bin %160, %213, %215, %217, %219 {sv.namehint = "_expOut_T_13"} : i12
    %221 = comb.mux bin %204, %c974_i12, %c0_i12 {sv.namehint = "_expOut_T_14"} : i12
    %222 = comb.mux bin %206, %c-1025_i12, %c0_i12 {sv.namehint = "_expOut_T_16"} : i12
    %223 = comb.mux bin %208, %c-1024_i12, %c0_i12 {sv.namehint = "_expOut_T_18"} : i12
    %224 = comb.mux bin %193, %c-512_i12, %c0_i12 {sv.namehint = "_expOut_T_20"} : i12
    %225 = comb.or bin %220, %221, %222, %223, %224 {sv.namehint = "expOut"} : i12
    %226 = comb.or bin %193, %io_in_isZero, %166 {sv.namehint = "_fractOut_T_1"} : i1
    %227 = comb.concat %193, %c0_i51 {sv.namehint = "_fractOut_T_2"} : i1, i51
    %228 = comb.mux bin %226, %227, %163 {sv.namehint = "_fractOut_T_3"} : i52
    %229 = comb.replicate %206 {sv.namehint = "_fractOut_T_4"} : (i1) -> i52
    %230 = comb.or bin %228, %229 {sv.namehint = "fractOut"} : i52
    %231 = comb.concat %210, %225, %230 {sv.namehint = "io_out"} : i1, i12, i52
    %232 = comb.concat %io_invalidExc, %false, %198, %199, %201 {sv.namehint = "io_exceptionFlags"} : i1, i1, i1, i1, i1
    hw.output %231, %232 : i65, i5
  }
  hw.module private @RoundRawFNToRecFN_e11_s53(in %io_invalidExc : i1, in %io_in_isNaN : i1, in %io_in_isInf : i1, in %io_in_isZero : i1, in %io_in_sign : i1, in %io_in_sExp : i13, in %io_in_sig : i56, in %io_roundingMode : i3, out io_out : i65, out io_exceptionFlags : i5) {
    %roundAnyRawFNToRecFN.io_out, %roundAnyRawFNToRecFN.io_exceptionFlags = hw.instance "roundAnyRawFNToRecFN" @RoundAnyRawFNToRecFN_ie11_is55_oe11_os53(io_invalidExc: %io_invalidExc: i1, io_in_isNaN: %io_in_isNaN: i1, io_in_isInf: %io_in_isInf: i1, io_in_isZero: %io_in_isZero: i1, io_in_sign: %io_in_sign: i1, io_in_sExp: %io_in_sExp: i13, io_in_sig: %io_in_sig: i56, io_roundingMode: %io_roundingMode: i3) -> (io_out: i65, io_exceptionFlags: i5) {sv.namehint = "roundAnyRawFNToRecFN.io_out"}
    hw.output %roundAnyRawFNToRecFN.io_out, %roundAnyRawFNToRecFN.io_exceptionFlags : i65, i5
  }
  hw.module private @MulAddRecFNPipe_l2_e11_s53(in %clock : !seq.clock, in %reset : i1, in %io_validin : i1, in %io_op : i2, in %io_a : i65, in %io_b : i65, in %io_c : i65, in %io_roundingMode : i3, out io_out : i65, out io_exceptionFlags : i5, out io_validout : i1) {
    %c0_i53 = hw.constant 0 : i53
    %false = hw.constant false
    %mulAddRecFNToRaw_preMul.io_mulAddA, %mulAddRecFNToRaw_preMul.io_mulAddB, %mulAddRecFNToRaw_preMul.io_mulAddC, %mulAddRecFNToRaw_preMul.io_toPostMul_isSigNaNAny, %mulAddRecFNToRaw_preMul.io_toPostMul_isNaNAOrB, %mulAddRecFNToRaw_preMul.io_toPostMul_isInfA, %mulAddRecFNToRaw_preMul.io_toPostMul_isZeroA, %mulAddRecFNToRaw_preMul.io_toPostMul_isInfB, %mulAddRecFNToRaw_preMul.io_toPostMul_isZeroB, %mulAddRecFNToRaw_preMul.io_toPostMul_signProd, %mulAddRecFNToRaw_preMul.io_toPostMul_isNaNC, %mulAddRecFNToRaw_preMul.io_toPostMul_isInfC, %mulAddRecFNToRaw_preMul.io_toPostMul_isZeroC, %mulAddRecFNToRaw_preMul.io_toPostMul_sExpSum, %mulAddRecFNToRaw_preMul.io_toPostMul_doSubMags, %mulAddRecFNToRaw_preMul.io_toPostMul_CIsDominant, %mulAddRecFNToRaw_preMul.io_toPostMul_CDom_CAlignDist, %mulAddRecFNToRaw_preMul.io_toPostMul_highAlignedSigC, %mulAddRecFNToRaw_preMul.io_toPostMul_bit0AlignedSigC = hw.instance "mulAddRecFNToRaw_preMul" @MulAddRecFNToRaw_preMul_e11_s53(io_op: %io_op: i2, io_a: %io_a: i65, io_b: %io_b: i65, io_c: %io_c: i65) -> (io_mulAddA: i53, io_mulAddB: i53, io_mulAddC: i106, io_toPostMul_isSigNaNAny: i1, io_toPostMul_isNaNAOrB: i1, io_toPostMul_isInfA: i1, io_toPostMul_isZeroA: i1, io_toPostMul_isInfB: i1, io_toPostMul_isZeroB: i1, io_toPostMul_signProd: i1, io_toPostMul_isNaNC: i1, io_toPostMul_isInfC: i1, io_toPostMul_isZeroC: i1, io_toPostMul_sExpSum: i13, io_toPostMul_doSubMags: i1, io_toPostMul_CIsDominant: i1, io_toPostMul_CDom_CAlignDist: i6, io_toPostMul_highAlignedSigC: i55, io_toPostMul_bit0AlignedSigC: i1) {sv.namehint = "mulAddRecFNToRaw_preMul.io_mulAddC"}
    %mulAddRecFNToRaw_postMul.io_invalidExc, %mulAddRecFNToRaw_postMul.io_rawOut_isNaN, %mulAddRecFNToRaw_postMul.io_rawOut_isInf, %mulAddRecFNToRaw_postMul.io_rawOut_isZero, %mulAddRecFNToRaw_postMul.io_rawOut_sign, %mulAddRecFNToRaw_postMul.io_rawOut_sExp, %mulAddRecFNToRaw_postMul.io_rawOut_sig = hw.instance "mulAddRecFNToRaw_postMul" @MulAddRecFNToRaw_postMul_e11_s53(io_fromPreMul_isSigNaNAny: %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isSigNaNAny: i1, io_fromPreMul_isNaNAOrB: %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isNaNAOrB: i1, io_fromPreMul_isInfA: %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isInfA: i1, io_fromPreMul_isZeroA: %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isZeroA: i1, io_fromPreMul_isInfB: %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isInfB: i1, io_fromPreMul_isZeroB: %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isZeroB: i1, io_fromPreMul_signProd: %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_signProd: i1, io_fromPreMul_isNaNC: %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isNaNC: i1, io_fromPreMul_isInfC: %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isInfC: i1, io_fromPreMul_isZeroC: %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isZeroC: i1, io_fromPreMul_sExpSum: %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_sExpSum: i13, io_fromPreMul_doSubMags: %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_doSubMags: i1, io_fromPreMul_CIsDominant: %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_CIsDominant: i1, io_fromPreMul_CDom_CAlignDist: %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_CDom_CAlignDist: i6, io_fromPreMul_highAlignedSigC: %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_highAlignedSigC: i55, io_fromPreMul_bit0AlignedSigC: %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_bit0AlignedSigC: i1, io_mulAddResult: %mulAddRecFNToRaw_postMul_io_mulAddResult_pipe_b: i107, io_roundingMode: %mulAddRecFNToRaw_postMul_io_roundingMode_pipe_b: i3) -> (io_invalidExc: i1, io_rawOut_isNaN: i1, io_rawOut_isInf: i1, io_rawOut_isZero: i1, io_rawOut_sign: i1, io_rawOut_sExp: i13, io_rawOut_sig: i56) {sv.namehint = "mulAddRecFNToRaw_postMul.io_invalidExc"}
    %0 = comb.concat %c0_i53, %mulAddRecFNToRaw_preMul.io_mulAddA : i53, i53
    %1 = comb.concat %c0_i53, %mulAddRecFNToRaw_preMul.io_mulAddB : i53, i53
    %2 = comb.mul bin %0, %1 {sv.namehint = "_mulAddResult_T"} : i106
    %3 = comb.concat %false, %2 : i1, i106
    %4 = comb.concat %false, %mulAddRecFNToRaw_preMul.io_mulAddC : i1, i106
    %5 = comb.add bin %3, %4 {sv.namehint = "mulAddResult"} : i107
    %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isSigNaNAny = seq.firreg %6 clock %clock {firrtl.random_init_start = 1 : ui64, sv.namehint = "mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isSigNaNAny"} : i1
    %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isNaNAOrB = seq.firreg %7 clock %clock {firrtl.random_init_start = 2 : ui64, sv.namehint = "mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isNaNAOrB"} : i1
    %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isInfA = seq.firreg %8 clock %clock {firrtl.random_init_start = 3 : ui64, sv.namehint = "mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isInfA"} : i1
    %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isZeroA = seq.firreg %9 clock %clock {firrtl.random_init_start = 4 : ui64, sv.namehint = "mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isZeroA"} : i1
    %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isInfB = seq.firreg %10 clock %clock {firrtl.random_init_start = 5 : ui64, sv.namehint = "mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isInfB"} : i1
    %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isZeroB = seq.firreg %11 clock %clock {firrtl.random_init_start = 6 : ui64, sv.namehint = "mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isZeroB"} : i1
    %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_signProd = seq.firreg %12 clock %clock {firrtl.random_init_start = 7 : ui64, sv.namehint = "mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_signProd"} : i1
    %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isNaNC = seq.firreg %13 clock %clock {firrtl.random_init_start = 8 : ui64, sv.namehint = "mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isNaNC"} : i1
    %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isInfC = seq.firreg %14 clock %clock {firrtl.random_init_start = 9 : ui64, sv.namehint = "mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isInfC"} : i1
    %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isZeroC = seq.firreg %15 clock %clock {firrtl.random_init_start = 10 : ui64, sv.namehint = "mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isZeroC"} : i1
    %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_sExpSum = seq.firreg %16 clock %clock {firrtl.random_init_start = 11 : ui64, sv.namehint = "mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_sExpSum"} : i13
    %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_doSubMags = seq.firreg %17 clock %clock {firrtl.random_init_start = 24 : ui64, sv.namehint = "mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_doSubMags"} : i1
    %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_CIsDominant = seq.firreg %18 clock %clock {firrtl.random_init_start = 25 : ui64, sv.namehint = "mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_CIsDominant"} : i1
    %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_CDom_CAlignDist = seq.firreg %19 clock %clock {firrtl.random_init_start = 26 : ui64, sv.namehint = "mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_CDom_CAlignDist"} : i6
    %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_highAlignedSigC = seq.firreg %20 clock %clock {firrtl.random_init_start = 32 : ui64, sv.namehint = "mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_highAlignedSigC"} : i55
    %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_bit0AlignedSigC = seq.firreg %21 clock %clock {firrtl.random_init_start = 87 : ui64, sv.namehint = "mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_bit0AlignedSigC"} : i1
    %6 = comb.mux bin %io_validin, %mulAddRecFNToRaw_preMul.io_toPostMul_isSigNaNAny, %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isSigNaNAny : i1
    %7 = comb.mux bin %io_validin, %mulAddRecFNToRaw_preMul.io_toPostMul_isNaNAOrB, %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isNaNAOrB : i1
    %8 = comb.mux bin %io_validin, %mulAddRecFNToRaw_preMul.io_toPostMul_isInfA, %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isInfA : i1
    %9 = comb.mux bin %io_validin, %mulAddRecFNToRaw_preMul.io_toPostMul_isZeroA, %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isZeroA : i1
    %10 = comb.mux bin %io_validin, %mulAddRecFNToRaw_preMul.io_toPostMul_isInfB, %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isInfB : i1
    %11 = comb.mux bin %io_validin, %mulAddRecFNToRaw_preMul.io_toPostMul_isZeroB, %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isZeroB : i1
    %12 = comb.mux bin %io_validin, %mulAddRecFNToRaw_preMul.io_toPostMul_signProd, %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_signProd : i1
    %13 = comb.mux bin %io_validin, %mulAddRecFNToRaw_preMul.io_toPostMul_isNaNC, %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isNaNC : i1
    %14 = comb.mux bin %io_validin, %mulAddRecFNToRaw_preMul.io_toPostMul_isInfC, %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isInfC : i1
    %15 = comb.mux bin %io_validin, %mulAddRecFNToRaw_preMul.io_toPostMul_isZeroC, %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isZeroC : i1
    %16 = comb.mux bin %io_validin, %mulAddRecFNToRaw_preMul.io_toPostMul_sExpSum, %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_sExpSum : i13
    %17 = comb.mux bin %io_validin, %mulAddRecFNToRaw_preMul.io_toPostMul_doSubMags, %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_doSubMags : i1
    %18 = comb.mux bin %io_validin, %mulAddRecFNToRaw_preMul.io_toPostMul_CIsDominant, %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_CIsDominant : i1
    %19 = comb.mux bin %io_validin, %mulAddRecFNToRaw_preMul.io_toPostMul_CDom_CAlignDist, %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_CDom_CAlignDist : i6
    %20 = comb.mux bin %io_validin, %mulAddRecFNToRaw_preMul.io_toPostMul_highAlignedSigC, %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_highAlignedSigC : i55
    %21 = comb.mux bin %io_validin, %mulAddRecFNToRaw_preMul.io_toPostMul_bit0AlignedSigC, %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_bit0AlignedSigC : i1
    %mulAddRecFNToRaw_postMul_io_mulAddResult_pipe_b = seq.firreg %22 clock %clock {firrtl.random_init_start = 89 : ui64, sv.namehint = "mulAddRecFNToRaw_postMul_io_mulAddResult_pipe_b"} : i107
    %22 = comb.mux bin %io_validin, %5, %mulAddRecFNToRaw_postMul_io_mulAddResult_pipe_b : i107
    %mulAddRecFNToRaw_postMul_io_roundingMode_pipe_b = seq.firreg %23 clock %clock {firrtl.random_init_start = 197 : ui64, sv.namehint = "mulAddRecFNToRaw_postMul_io_roundingMode_pipe_b"} : i3
    %23 = comb.mux bin %io_validin, %io_roundingMode, %mulAddRecFNToRaw_postMul_io_roundingMode_pipe_b : i3
    %roundingMode_stage0_pipe_b = seq.firreg %24 clock %clock {firrtl.random_init_start = 201 : ui64, sv.namehint = "roundingMode_stage0_pipe_b"} : i3
    %24 = comb.mux bin %io_validin, %io_roundingMode, %roundingMode_stage0_pipe_b : i3
    %valid_stage0_pipe_v = seq.firreg %io_validin clock %clock reset sync %reset, %false {firrtl.random_init_start = 206 : ui64, sv.namehint = "valid_stage0_pipe_v"} : i1
    %roundRawFNToRecFN.io_out, %roundRawFNToRecFN.io_exceptionFlags = hw.instance "roundRawFNToRecFN" @RoundRawFNToRecFN_e11_s53(io_invalidExc: %roundRawFNToRecFN_io_invalidExc_pipe_b: i1, io_in_isNaN: %roundRawFNToRecFN_io_in_pipe_b_isNaN: i1, io_in_isInf: %roundRawFNToRecFN_io_in_pipe_b_isInf: i1, io_in_isZero: %roundRawFNToRecFN_io_in_pipe_b_isZero: i1, io_in_sign: %roundRawFNToRecFN_io_in_pipe_b_sign: i1, io_in_sExp: %roundRawFNToRecFN_io_in_pipe_b_sExp: i13, io_in_sig: %roundRawFNToRecFN_io_in_pipe_b_sig: i56, io_roundingMode: %roundRawFNToRecFN_io_roundingMode_pipe_b: i3) -> (io_out: i65, io_exceptionFlags: i5) {sv.namehint = "roundRawFNToRecFN.io_out"}
    %roundRawFNToRecFN_io_invalidExc_pipe_b = seq.firreg %25 clock %clock {firrtl.random_init_start = 209 : ui64, sv.namehint = "roundRawFNToRecFN_io_invalidExc_pipe_b"} : i1
    %25 = comb.mux bin %valid_stage0_pipe_v, %mulAddRecFNToRaw_postMul.io_invalidExc, %roundRawFNToRecFN_io_invalidExc_pipe_b : i1
    %roundRawFNToRecFN_io_in_pipe_b_isNaN = seq.firreg %26 clock %clock {firrtl.random_init_start = 211 : ui64, sv.namehint = "roundRawFNToRecFN_io_in_pipe_b_isNaN"} : i1
    %roundRawFNToRecFN_io_in_pipe_b_isInf = seq.firreg %27 clock %clock {firrtl.random_init_start = 212 : ui64, sv.namehint = "roundRawFNToRecFN_io_in_pipe_b_isInf"} : i1
    %roundRawFNToRecFN_io_in_pipe_b_isZero = seq.firreg %28 clock %clock {firrtl.random_init_start = 213 : ui64, sv.namehint = "roundRawFNToRecFN_io_in_pipe_b_isZero"} : i1
    %roundRawFNToRecFN_io_in_pipe_b_sign = seq.firreg %29 clock %clock {firrtl.random_init_start = 214 : ui64, sv.namehint = "roundRawFNToRecFN_io_in_pipe_b_sign"} : i1
    %roundRawFNToRecFN_io_in_pipe_b_sExp = seq.firreg %30 clock %clock {firrtl.random_init_start = 215 : ui64, sv.namehint = "roundRawFNToRecFN_io_in_pipe_b_sExp"} : i13
    %roundRawFNToRecFN_io_in_pipe_b_sig = seq.firreg %31 clock %clock {firrtl.random_init_start = 228 : ui64, sv.namehint = "roundRawFNToRecFN_io_in_pipe_b_sig"} : i56
    %26 = comb.mux bin %valid_stage0_pipe_v, %mulAddRecFNToRaw_postMul.io_rawOut_isNaN, %roundRawFNToRecFN_io_in_pipe_b_isNaN : i1
    %27 = comb.mux bin %valid_stage0_pipe_v, %mulAddRecFNToRaw_postMul.io_rawOut_isInf, %roundRawFNToRecFN_io_in_pipe_b_isInf : i1
    %28 = comb.mux bin %valid_stage0_pipe_v, %mulAddRecFNToRaw_postMul.io_rawOut_isZero, %roundRawFNToRecFN_io_in_pipe_b_isZero : i1
    %29 = comb.mux bin %valid_stage0_pipe_v, %mulAddRecFNToRaw_postMul.io_rawOut_sign, %roundRawFNToRecFN_io_in_pipe_b_sign : i1
    %30 = comb.mux bin %valid_stage0_pipe_v, %mulAddRecFNToRaw_postMul.io_rawOut_sExp, %roundRawFNToRecFN_io_in_pipe_b_sExp : i13
    %31 = comb.mux bin %valid_stage0_pipe_v, %mulAddRecFNToRaw_postMul.io_rawOut_sig, %roundRawFNToRecFN_io_in_pipe_b_sig : i56
    %roundRawFNToRecFN_io_roundingMode_pipe_b = seq.firreg %32 clock %clock {firrtl.random_init_start = 285 : ui64, sv.namehint = "roundRawFNToRecFN_io_roundingMode_pipe_b"} : i3
    %32 = comb.mux bin %valid_stage0_pipe_v, %roundingMode_stage0_pipe_b, %roundRawFNToRecFN_io_roundingMode_pipe_b : i3
    %io_validout_pipe_v = seq.firreg %valid_stage0_pipe_v clock %clock reset sync %reset, %false {firrtl.random_init_start = 290 : ui64, sv.namehint = "io_validout_pipe_v"} : i1
    hw.output %roundRawFNToRecFN.io_out, %roundRawFNToRecFN.io_exceptionFlags, %io_validout_pipe_v : i65, i5, i1
  }
  hw.module private @FPUFMAPipe_l4_f64(in %clock : !seq.clock, in %reset : i1, in %io_in_valid : i1, in %io_in_bits_ren3 : i1, in %io_in_bits_swap23 : i1, in %io_in_bits_rm : i3, in %io_in_bits_fmaCmd : i2, in %io_in_bits_in1 : i65, in %io_in_bits_in2 : i65, in %io_in_bits_in3 : i65, out io_out_valid : i1, out io_out_bits_data : i65, out io_out_bits_exc : i5) {
    %c-1_i3 = hw.constant -1 : i3
    %c-18446744073709551616_i65 = hw.constant -18446744073709551616 : i65
    %c9223372036854775808_i65 = hw.constant 9223372036854775808 : i65
    %c-1157425104234217473_i65 = hw.constant -1157425104234217473 : i65
    %false = hw.constant false
    %valid = seq.firreg %io_in_valid clock %clock {firrtl.random_init_start = 0 : ui64, sv.namehint = "valid"} : i1
    %in_rm = seq.firreg %2 clock %clock {firrtl.random_init_start = 20 : ui64, sv.namehint = "in_rm"} : i3
    %in_fmaCmd = seq.firreg %3 clock %clock {firrtl.random_init_start = 23 : ui64, sv.namehint = "fma.io_op"} : i2
    %in_in1 = seq.firreg %4 clock %clock {firrtl.random_init_start = 29 : ui64, sv.namehint = "in_in1"} : i65
    %in_in2 = seq.firreg %6 clock %clock {firrtl.random_init_start = 94 : ui64, sv.namehint = "in_in2"} : i65
    %in_in3 = seq.firreg %9 clock %clock {firrtl.random_init_start = 159 : ui64, sv.namehint = "in_in3"} : i65
    %0 = comb.xor bin %io_in_bits_in1, %io_in_bits_in2 {sv.namehint = "_zero_T"} : i65
    %1 = comb.and bin %0, %c-18446744073709551616_i65 {sv.namehint = "zero"} : i65
    %2 = comb.mux bin %io_in_valid, %io_in_bits_rm, %in_rm : i3
    %3 = comb.mux bin %io_in_valid, %io_in_bits_fmaCmd, %in_fmaCmd : i2
    %4 = comb.mux bin %io_in_valid, %io_in_bits_in1, %in_in1 : i65
    %5 = comb.mux bin %io_in_bits_swap23, %c9223372036854775808_i65, %io_in_bits_in2 : i65
    %6 = comb.mux bin %io_in_valid, %5, %in_in2 : i65
    %7 = comb.or bin %io_in_bits_ren3, %io_in_bits_swap23 : i1
    %8 = comb.mux bin %7, %io_in_bits_in3, %1 : i65
    %9 = comb.mux bin %io_in_valid, %8, %in_in3 : i65
    %fma.io_out, %fma.io_exceptionFlags, %fma.io_validout = hw.instance "fma" @MulAddRecFNPipe_l2_e11_s53(clock: %clock: !seq.clock, reset: %reset: i1, io_validin: %valid: i1, io_op: %in_fmaCmd: i2, io_a: %in_in1: i65, io_b: %in_in2: i65, io_c: %in_in3: i65, io_roundingMode: %in_rm: i3) -> (io_out: i65, io_exceptionFlags: i5, io_validout: i1) {sv.namehint = "res_exc"}
    %10 = comb.extract %fma.io_out from 61 {sv.namehint = "_res_data_T"} : (i65) -> i3
    %11 = comb.icmp bin ne %10, %c-1_i3 : i3
    %12 = comb.replicate %11 : (i1) -> i65
    %13 = comb.or %12, %c-1157425104234217473_i65 : i65
    %14 = comb.and %13, %fma.io_out {sv.namehint = "res_data"} : i65
    %io_out_pipe_v = seq.firreg %fma.io_validout clock %clock reset sync %reset, %false {firrtl.random_init_start = 224 : ui64, sv.namehint = "io_out_pipe_v"} : i1
    %io_out_pipe_b_data = seq.firreg %15 clock %clock {firrtl.random_init_start = 225 : ui64, sv.namehint = "io_out_pipe_b_data"} : i65
    %io_out_pipe_b_exc = seq.firreg %16 clock %clock {firrtl.random_init_start = 290 : ui64, sv.namehint = "io_out_pipe_b_exc"} : i5
    %15 = comb.mux bin %fma.io_validout, %14, %io_out_pipe_b_data : i65
    %16 = comb.mux bin %fma.io_validout, %fma.io_exceptionFlags, %io_out_pipe_b_exc : i5
    hw.output %io_out_pipe_v, %io_out_pipe_b_data, %io_out_pipe_b_exc : i1, i65, i5
  }
  hw.module private @FMADecoder(in %io_uopc : i7, out io_cmd : i2) {
    %c0_i3 = hw.constant 0 : i3
    %c0_i4 = hw.constant 0 : i4
    %c-1_i6 = hw.constant -1 : i6
    %c-1_i7 = hw.constant -1 : i7
    %0 = comb.extract %io_uopc from 0 : (i7) -> i6
    %1 = comb.xor bin %0, %c-1_i6 {sv.namehint = "decoder_decoded_invInputs"} : i6
    %2 = comb.extract %1 from 0 {sv.namehint = "decoder_decoded_andMatrixOutputs_andMatrixInput_0"} : (i6) -> i1
    %3 = comb.extract %1 from 1 {sv.namehint = "decoder_decoded_andMatrixOutputs_andMatrixInput_1"} : (i6) -> i1
    %4 = comb.extract %1 from 2 {sv.namehint = "decoder_decoded_andMatrixOutputs_andMatrixInput_2"} : (i6) -> i1
    %5 = comb.extract %io_uopc from 3 {sv.namehint = "decoder_decoded_andMatrixOutputs_andMatrixInput_3"} : (i7) -> i1
    %6 = comb.extract %io_uopc from 4 {sv.namehint = "decoder_decoded_andMatrixOutputs_andMatrixInput_4"} : (i7) -> i1
    %7 = comb.extract %1 from 5 {sv.namehint = "decoder_decoded_andMatrixOutputs_andMatrixInput_5"} : (i6) -> i1
    %8 = comb.extract %io_uopc from 6 {sv.namehint = "decoder_decoded_andMatrixOutputs_andMatrixInput_6"} : (i7) -> i1
    %9 = comb.concat %2, %3, %4, %5, %6, %7, %8 {sv.namehint = "_decoder_decoded_andMatrixOutputs_T"} : i1, i1, i1, i1, i1, i1, i1
    %10 = comb.icmp bin eq %9, %c-1_i7 {sv.namehint = "decoder_decoded_andMatrixOutputs_6_2"} : i7
    %11 = comb.extract %io_uopc from 0 {sv.namehint = "decoder_decoded_andMatrixOutputs_andMatrixInput_0_1"} : (i7) -> i1
    %12 = comb.extract %io_uopc from 1 {sv.namehint = "decoder_decoded_andMatrixOutputs_andMatrixInput_1_1"} : (i7) -> i1
    %13 = comb.concat %11, %12, %5, %6, %7, %8 {sv.namehint = "_decoder_decoded_andMatrixOutputs_T_1"} : i1, i1, i1, i1, i1, i1
    %14 = comb.icmp bin eq %13, %c-1_i6 {sv.namehint = "decoder_decoded_andMatrixOutputs_0_2"} : i6
    %15 = comb.extract %io_uopc from 2 {sv.namehint = "decoder_decoded_andMatrixOutputs_andMatrixInput_1_2"} : (i7) -> i1
    %16 = comb.concat %12, %15, %5, %6, %7, %8 {sv.namehint = "_decoder_decoded_andMatrixOutputs_T_2"} : i1, i1, i1, i1, i1, i1
    %17 = comb.icmp bin eq %16, %c-1_i6 {sv.namehint = "decoder_decoded_andMatrixOutputs_1_2"} : i6
    %18 = comb.concat %11, %12, %15, %5, %6, %7, %8 {sv.namehint = "_decoder_decoded_andMatrixOutputs_T_3"} : i1, i1, i1, i1, i1, i1, i1
    %19 = comb.icmp bin eq %18, %c-1_i7 {sv.namehint = "decoder_decoded_andMatrixOutputs_2_2"} : i7
    %20 = comb.extract %1 from 3 {sv.namehint = "decoder_decoded_andMatrixOutputs_andMatrixInput_2_4"} : (i6) -> i1
    %21 = comb.extract %1 from 4 {sv.namehint = "decoder_decoded_andMatrixOutputs_andMatrixInput_3_4"} : (i6) -> i1
    %22 = comb.extract %io_uopc from 5 {sv.namehint = "decoder_decoded_andMatrixOutputs_andMatrixInput_4_4"} : (i7) -> i1
    %23 = comb.concat %2, %3, %20, %21, %22, %8 {sv.namehint = "_decoder_decoded_andMatrixOutputs_T_4"} : i1, i1, i1, i1, i1, i1
    %24 = comb.icmp bin eq %23, %c-1_i6 {sv.namehint = "decoder_decoded_andMatrixOutputs_4_2"} : i6
    %25 = comb.concat %12, %4, %20, %21, %22, %8 {sv.namehint = "_decoder_decoded_andMatrixOutputs_T_5"} : i1, i1, i1, i1, i1, i1
    %26 = comb.icmp bin eq %25, %c-1_i6 {sv.namehint = "decoder_decoded_andMatrixOutputs_3_2"} : i6
    %27 = comb.concat %11, %12, %4, %20, %21, %22, %8 {sv.namehint = "_decoder_decoded_andMatrixOutputs_T_6"} : i1, i1, i1, i1, i1, i1, i1
    %28 = comb.icmp bin eq %27, %c-1_i7 {sv.namehint = "decoder_decoded_andMatrixOutputs_5_2"} : i7
    %29 = comb.concat %10, %14, %17, %26 {sv.namehint = "_decoder_decoded_orMatrixOutputs_T"} : i1, i1, i1, i1
    %30 = comb.icmp bin ne %29, %c0_i4 {sv.namehint = "_decoder_decoded_orMatrixOutputs_T_1"} : i4
    %31 = comb.concat %19, %24, %28 {sv.namehint = "_decoder_decoded_orMatrixOutputs_T_2"} : i1, i1, i1
    %32 = comb.icmp bin ne %31, %c0_i3 {sv.namehint = "_decoder_decoded_orMatrixOutputs_T_3"} : i3
    %33 = comb.concat %32, %30 {sv.namehint = "decoder_0"} : i1, i1
    hw.output %33 : i2
  }
  hw.module private @MulAddRecFNToRaw_preMul_e8_s24(in %io_op : i2, in %io_a : i33, in %io_b : i33, in %io_c : i33, out io_mulAddA : i24, out io_mulAddB : i24, out io_mulAddC : i48, out io_toPostMul_isSigNaNAny : i1, out io_toPostMul_isNaNAOrB : i1, out io_toPostMul_isInfA : i1, out io_toPostMul_isZeroA : i1, out io_toPostMul_isInfB : i1, out io_toPostMul_isZeroB : i1, out io_toPostMul_signProd : i1, out io_toPostMul_isNaNC : i1, out io_toPostMul_isInfC : i1, out io_toPostMul_isZeroC : i1, out io_toPostMul_sExpSum : i10, out io_toPostMul_doSubMags : i1, out io_toPostMul_CIsDominant : i1, out io_toPostMul_CDom_CAlignDist : i5, out io_toPostMul_highAlignedSigC : i26, out io_toPostMul_bit0AlignedSigC : i1) {
    %c-24_i10 = hw.constant -24 : i10
    %c-1_i23 = hw.constant -1 : i23
    %c25_i10 = hw.constant 25 : i10
    %c-229_i11 = hw.constant -229 : i11
    %c0_i2 = hw.constant 0 : i2
    %c74_i10 = hw.constant 74 : i10
    %c0_i11 = hw.constant 0 : i11
    %c0_i9 = hw.constant 0 : i9
    %c-1_i3 = hw.constant -1 : i3
    %c0_i6 = hw.constant 0 : i6
    %c0_i28 = hw.constant 0 : i28
    %c0_i4 = hw.constant 0 : i4
    %c0_i71 = hw.constant 0 : i71
    %c-1_i2 = hw.constant -1 : i2
    %true = hw.constant true
    %c0_i3 = hw.constant 0 : i3
    %c-54_i7 = hw.constant -54 : i7
    %false = hw.constant false
    %c0_i7 = hw.constant 0 : i7
    %c-4294967296_i33 = hw.constant -4294967296 : i33
    %0 = comb.extract %io_a from 23 {sv.namehint = "rawA_exp"} : (i33) -> i9
    %1 = comb.extract %io_a from 29 {sv.namehint = "_rawA_isZero_T"} : (i33) -> i3
    %2 = comb.icmp bin ne %1, %c0_i3 {sv.namehint = "_rawA_out_sig_T"} : i3
    %3 = comb.xor bin %2, %true {sv.namehint = "rawA_isZero"} : i1
    %4 = comb.extract %io_a from 30 {sv.namehint = "_rawA_isSpecial_T"} : (i33) -> i2
    %5 = comb.icmp bin eq %4, %c-1_i2 {sv.namehint = "rawA_isSpecial"} : i2
    %6 = comb.extract %io_a from 29 {sv.namehint = "_rawA_out_isInf_T"} : (i33) -> i1
    %7 = comb.and bin %5, %6 {sv.namehint = "rawA_isNaN"} : i1
    %8 = comb.xor bin %6, %true {sv.namehint = "_rawA_out_isInf_T_1"} : i1
    %9 = comb.and bin %5, %8 {sv.namehint = "rawA_isInf"} : i1
    %10 = comb.extract %io_a from 32 {sv.namehint = "rawA_sign"} : (i33) -> i1
    %11 = comb.extract %io_a from 0 {sv.namehint = "_rawA_out_sig_T_2"} : (i33) -> i23
    %12 = comb.extract %io_b from 23 {sv.namehint = "rawB_exp"} : (i33) -> i9
    %13 = comb.extract %io_b from 29 {sv.namehint = "_rawB_isZero_T"} : (i33) -> i3
    %14 = comb.icmp bin ne %13, %c0_i3 {sv.namehint = "_rawB_out_sig_T"} : i3
    %15 = comb.xor bin %14, %true {sv.namehint = "rawB_isZero"} : i1
    %16 = comb.extract %io_b from 30 {sv.namehint = "_rawB_isSpecial_T"} : (i33) -> i2
    %17 = comb.icmp bin eq %16, %c-1_i2 {sv.namehint = "rawB_isSpecial"} : i2
    %18 = comb.extract %io_b from 29 {sv.namehint = "_rawB_out_isInf_T"} : (i33) -> i1
    %19 = comb.and bin %17, %18 {sv.namehint = "rawB_isNaN"} : i1
    %20 = comb.xor bin %18, %true {sv.namehint = "_rawB_out_isInf_T_1"} : i1
    %21 = comb.and bin %17, %20 {sv.namehint = "rawB_isInf"} : i1
    %22 = comb.extract %io_b from 32 {sv.namehint = "rawB_sign"} : (i33) -> i1
    %23 = comb.extract %io_b from 0 {sv.namehint = "_rawB_out_sig_T_2"} : (i33) -> i23
    %24 = comb.extract %io_c from 23 {sv.namehint = "rawC_exp"} : (i33) -> i9
    %25 = comb.extract %io_c from 29 {sv.namehint = "_rawC_isZero_T"} : (i33) -> i3
    %26 = comb.icmp bin ne %25, %c0_i3 {sv.namehint = "_rawC_out_sig_T"} : i3
    %27 = comb.xor bin %26, %true {sv.namehint = "rawC_isZero"} : i1
    %28 = comb.extract %io_c from 30 {sv.namehint = "_rawC_isSpecial_T"} : (i33) -> i2
    %29 = comb.icmp bin eq %28, %c-1_i2 {sv.namehint = "rawC_isSpecial"} : i2
    %30 = comb.extract %io_c from 29 {sv.namehint = "_rawC_out_isInf_T"} : (i33) -> i1
    %31 = comb.and bin %29, %30 {sv.namehint = "rawC_isNaN"} : i1
    %32 = comb.xor bin %30, %true {sv.namehint = "_rawC_out_isInf_T_1"} : i1
    %33 = comb.and bin %29, %32 {sv.namehint = "rawC_isInf"} : i1
    %34 = comb.extract %io_c from 32 {sv.namehint = "rawC_sign"} : (i33) -> i1
    %35 = comb.extract %io_c from 0 {sv.namehint = "_rawC_out_sig_T_2"} : (i33) -> i23
    %36 = comb.concat %false, %26, %35 {sv.namehint = "rawC_sig"} : i1, i1, i23
    %37 = comb.extract %io_op from 1 {sv.namehint = "_signProd_T_1"} : (i2) -> i1
    %38 = comb.xor bin %10, %22, %37 {sv.namehint = "signProd"} : i1
    %39 = comb.concat %c0_i2, %0 : i2, i9
    %40 = comb.concat %c0_i2, %12 : i2, i9
    %41 = comb.add bin %39, %40, %c-229_i11 {sv.namehint = "_sExpAlignedProd_T_1"} : i11
    %42 = comb.extract %io_op from 0 {sv.namehint = "_doSubMags_T_1"} : (i2) -> i1
    %43 = comb.xor bin %38, %34, %42 {sv.namehint = "doSubMags"} : i1
    %44 = comb.concat %c0_i2, %24 : i2, i9
    %45 = comb.sub bin %41, %44 {sv.namehint = "_sNatCAlignDist_T"} : i11
    %46 = comb.extract %45 from 0 {sv.namehint = "posNatCAlignDist"} : (i11) -> i10
    %47 = comb.icmp bin slt %45, %c0_i11 {sv.namehint = "_isMinCAlign_T_1"} : i11
    %48 = comb.or bin %3, %15, %47 {sv.namehint = "isMinCAlign"} : i1
    %49 = comb.icmp bin ult %46, %c25_i10 {sv.namehint = "_CIsDominant_T_1"} : i10
    %50 = comb.or bin %48, %49 {sv.namehint = "_CIsDominant_T_2"} : i1
    %51 = comb.and bin %26, %50 {sv.namehint = "CIsDominant"} : i1
    %52 = comb.icmp bin ult %46, %c74_i10 {sv.namehint = "_CAlignDist_T"} : i10
    %53 = comb.extract %45 from 0 {sv.namehint = "_CAlignDist_T_1"} : (i11) -> i7
    %54 = comb.mux bin %52, %53, %c-54_i7 {sv.namehint = "_CAlignDist_T_2"} : i7
    %55 = comb.mux bin %48, %c0_i7, %54 {sv.namehint = "CAlignDist"} : i7
    %56 = comb.xor %26, %true : i1
    %57 = comb.xor %35, %c-1_i23 : i23
    %58 = comb.concat %true, %56, %57 {sv.namehint = "_mainAlignedSigC_T"} : i1, i1, i23
    %59 = comb.mux bin %43, %58, %36 {sv.namehint = "_mainAlignedSigC_T_1"} : i25
    %60 = comb.replicate %43 {sv.namehint = "_mainAlignedSigC_T_2"} : (i1) -> i53
    %61 = comb.concat %59, %60 {sv.namehint = "_mainAlignedSigC_T_3"} : i25, i53
    %62 = comb.concat %c0_i71, %55 : i71, i7
    %63 = comb.shrs bin %61, %62 {sv.namehint = "mainAlignedSigC"} : i78
    %64 = comb.extract %io_c from 0 : (i33) -> i2
    %65 = comb.icmp bin ne %64, %c0_i2 {sv.namehint = "reduced4CExtra_reducedVec_0"} : i2
    %66 = comb.extract %io_c from 2 {sv.namehint = "_reduced4CExtra_reducedVec_1_T"} : (i33) -> i4
    %67 = comb.icmp bin ne %66, %c0_i4 {sv.namehint = "reduced4CExtra_reducedVec_1"} : i4
    %68 = comb.extract %io_c from 6 {sv.namehint = "_reduced4CExtra_reducedVec_2_T"} : (i33) -> i4
    %69 = comb.icmp bin ne %68, %c0_i4 {sv.namehint = "reduced4CExtra_reducedVec_2"} : i4
    %70 = comb.extract %io_c from 10 {sv.namehint = "_reduced4CExtra_reducedVec_3_T"} : (i33) -> i4
    %71 = comb.icmp bin ne %70, %c0_i4 {sv.namehint = "reduced4CExtra_reducedVec_3"} : i4
    %72 = comb.extract %io_c from 14 {sv.namehint = "_reduced4CExtra_reducedVec_4_T"} : (i33) -> i4
    %73 = comb.icmp bin ne %72, %c0_i4 {sv.namehint = "reduced4CExtra_reducedVec_4"} : i4
    %74 = comb.extract %io_c from 18 {sv.namehint = "_reduced4CExtra_reducedVec_5_T"} : (i33) -> i4
    %75 = comb.icmp bin ne %74, %c0_i4 {sv.namehint = "reduced4CExtra_reducedVec_5"} : i4
    %76 = comb.extract %55 from 2 {sv.namehint = "_reduced4CExtra_T_2"} : (i7) -> i5
    %77 = comb.concat %c0_i28, %76 : i28, i5
    %78 = comb.shrs bin %c-4294967296_i33, %77 {sv.namehint = "reduced4CExtra_shift"} : i33
    %79 = comb.extract %78 from 14 {sv.namehint = "_reduced4CExtra_T_6"} : (i33) -> i1
    %80 = comb.extract %78 from 15 {sv.namehint = "_reduced4CExtra_T_7"} : (i33) -> i1
    %81 = comb.extract %78 from 16 {sv.namehint = "_reduced4CExtra_T_10"} : (i33) -> i1
    %82 = comb.extract %78 from 17 {sv.namehint = "_reduced4CExtra_T_11"} : (i33) -> i1
    %83 = comb.extract %78 from 18 {sv.namehint = "_reduced4CExtra_T_15"} : (i33) -> i1
    %84 = comb.extract %78 from 19 {sv.namehint = "_reduced4CExtra_T_16"} : (i33) -> i1
    %85 = comb.concat %79, %80, %81, %82, %83, %84 {sv.namehint = "_reduced4CExtra_T_18"} : i1, i1, i1, i1, i1, i1
    %86 = comb.concat %75, %73, %71, %69, %67, %65 : i1, i1, i1, i1, i1, i1
    %87 = comb.and bin %86, %85 : i6
    %88 = comb.extract %63 from 0 {sv.namehint = "_alignedSigC_T_5"} : (i78) -> i3
    %89 = comb.icmp bin eq %88, %c-1_i3 {sv.namehint = "_alignedSigC_T_2"} : i3
    %90 = comb.icmp bin eq %87, %c0_i6 {sv.namehint = "_alignedSigC_T_3"} : i6
    %91 = comb.and bin %89, %90 {sv.namehint = "_alignedSigC_T_4"} : i1
    %92 = comb.concat %88, %87 : i3, i6
    %93 = comb.icmp bin ne %92, %c0_i9 {sv.namehint = "_alignedSigC_T_7"} : i9
    %94 = comb.mux bin %43, %91, %93 {sv.namehint = "_alignedSigC_T_8"} : i1
    %95 = comb.concat %2, %11 {sv.namehint = "io_mulAddA"} : i1, i23
    %96 = comb.concat %14, %23 {sv.namehint = "io_mulAddB"} : i1, i23
    %97 = comb.extract %63 from 3 {sv.namehint = "io_mulAddC"} : (i78) -> i48
    %98 = comb.extract %io_a from 22 {sv.namehint = "_io_toPostMul_isSigNaNAny_T"} : (i33) -> i1
    %99 = comb.xor bin %98, %true {sv.namehint = "_io_toPostMul_isSigNaNAny_T_1"} : i1
    %100 = comb.and bin %7, %99 {sv.namehint = "_io_toPostMul_isSigNaNAny_T_2"} : i1
    %101 = comb.extract %io_b from 22 {sv.namehint = "_io_toPostMul_isSigNaNAny_T_3"} : (i33) -> i1
    %102 = comb.xor bin %101, %true {sv.namehint = "_io_toPostMul_isSigNaNAny_T_4"} : i1
    %103 = comb.and bin %19, %102 {sv.namehint = "_io_toPostMul_isSigNaNAny_T_5"} : i1
    %104 = comb.extract %io_c from 22 {sv.namehint = "_io_toPostMul_isSigNaNAny_T_7"} : (i33) -> i1
    %105 = comb.xor bin %104, %true {sv.namehint = "_io_toPostMul_isSigNaNAny_T_8"} : i1
    %106 = comb.and bin %31, %105 {sv.namehint = "_io_toPostMul_isSigNaNAny_T_9"} : i1
    %107 = comb.or bin %100, %103, %106 {sv.namehint = "io_toPostMul_isSigNaNAny"} : i1
    %108 = comb.or bin %7, %19 {sv.namehint = "io_toPostMul_isNaNAOrB"} : i1
    %109 = comb.extract %41 from 0 : (i11) -> i10
    %110 = comb.add %109, %c-24_i10 {sv.namehint = "_io_toPostMul_sExpSum_T"} : i10
    %111 = comb.concat %false, %24 : i1, i9
    %112 = comb.mux bin %51, %111, %110 {sv.namehint = "_io_toPostMul_sExpSum_T_3"} : i10
    %113 = comb.extract %55 from 0 {sv.namehint = "io_toPostMul_CDom_CAlignDist"} : (i7) -> i5
    %114 = comb.extract %63 from 51 {sv.namehint = "io_toPostMul_highAlignedSigC"} : (i78) -> i26
    hw.output %95, %96, %97, %107, %108, %9, %3, %21, %15, %38, %31, %33, %27, %112, %43, %51, %113, %114, %94 : i24, i24, i48, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i10, i1, i1, i5, i26, i1
  }
  hw.module private @MulAddRecFNToRaw_postMul_e8_s24(in %io_fromPreMul_isSigNaNAny : i1, in %io_fromPreMul_isNaNAOrB : i1, in %io_fromPreMul_isInfA : i1, in %io_fromPreMul_isZeroA : i1, in %io_fromPreMul_isInfB : i1, in %io_fromPreMul_isZeroB : i1, in %io_fromPreMul_signProd : i1, in %io_fromPreMul_isNaNC : i1, in %io_fromPreMul_isInfC : i1, in %io_fromPreMul_isZeroC : i1, in %io_fromPreMul_sExpSum : i10, in %io_fromPreMul_doSubMags : i1, in %io_fromPreMul_CIsDominant : i1, in %io_fromPreMul_CDom_CAlignDist : i5, in %io_fromPreMul_highAlignedSigC : i26, in %io_fromPreMul_bit0AlignedSigC : i1, in %io_mulAddResult : i49, in %io_roundingMode : i3, out io_invalidExc : i1, out io_rawOut_isNaN : i1, out io_rawOut_isInf : i1, out io_rawOut_isZero : i1, out io_rawOut_sign : i1, out io_rawOut_sExp : i10, out io_rawOut_sig : i27) {
    %c-4_i4 = hw.constant -4 : i4
    %c0_i50 = hw.constant 0 : i50
    %c-1_i24 = hw.constant -1 : i24
    %c1_i26 = hw.constant 1 : i26
    %c0_i13 = hw.constant 0 : i13
    %c-1_i4 = hw.constant -1 : i4
    %c0_i108 = hw.constant 0 : i108
    %c0_i63 = hw.constant 0 : i63
    %c0_i2 = hw.constant 0 : i2
    %c-1_i51 = hw.constant -1 : i51
    %c0_i9 = hw.constant 0 : i9
    %c0_i6 = hw.constant 0 : i6
    %c-1_i3 = hw.constant -1 : i3
    %c0_i4 = hw.constant 0 : i4
    %c0_i76 = hw.constant 0 : i76
    %c0_i31 = hw.constant 0 : i31
    %c0_i25 = hw.constant 0 : i25
    %c-1_i50 = hw.constant -1 : i50
    %c2_i3 = hw.constant 2 : i3
    %true = hw.constant true
    %false = hw.constant false
    %c-9_i5 = hw.constant -9 : i5
    %c-10_i5 = hw.constant -10 : i5
    %c-11_i5 = hw.constant -11 : i5
    %c-12_i5 = hw.constant -12 : i5
    %c-13_i5 = hw.constant -13 : i5
    %c-14_i5 = hw.constant -14 : i5
    %c-15_i5 = hw.constant -15 : i5
    %c-16_i5 = hw.constant -16 : i5
    %c-256_i9 = hw.constant -256 : i9
    %c15_i5 = hw.constant 15 : i5
    %c14_i5 = hw.constant 14 : i5
    %c13_i5 = hw.constant 13 : i5
    %c12_i5 = hw.constant 12 : i5
    %c11_i5 = hw.constant 11 : i5
    %c10_i5 = hw.constant 10 : i5
    %c9_i5 = hw.constant 9 : i5
    %c8_i5 = hw.constant 8 : i5
    %c7_i5 = hw.constant 7 : i5
    %c6_i5 = hw.constant 6 : i5
    %c5_i5 = hw.constant 5 : i5
    %c4_i5 = hw.constant 4 : i5
    %c3_i5 = hw.constant 3 : i5
    %c2_i5 = hw.constant 2 : i5
    %c1_i5 = hw.constant 1 : i5
    %c0_i5 = hw.constant 0 : i5
    %c-65536_i17 = hw.constant -65536 : i17
    %0 = comb.icmp bin eq %io_roundingMode, %c2_i3 {sv.namehint = "roundingMode_min"} : i3
    %1 = comb.xor bin %io_fromPreMul_signProd, %io_fromPreMul_doSubMags {sv.namehint = "opSignC"} : i1
    %2 = comb.extract %io_mulAddResult from 48 {sv.namehint = "_sigSum_T"} : (i49) -> i1
    %3 = comb.add bin %io_fromPreMul_highAlignedSigC, %c1_i26 {sv.namehint = "_sigSum_T_1"} : i26
    %4 = comb.mux bin %2, %3, %io_fromPreMul_highAlignedSigC {sv.namehint = "_sigSum_T_3"} : i26
    %5 = comb.extract %io_mulAddResult from 0 {sv.namehint = "_sigSum_T_4"} : (i49) -> i48
    %6 = comb.concat %c0_i9, %io_fromPreMul_doSubMags : i9, i1
    %7 = comb.sub bin %io_fromPreMul_sExpSum, %6 {sv.namehint = "_CDom_sExp_T_1"} : i10
    %8 = comb.extract %io_mulAddResult from 24 : (i49) -> i24
    %9 = comb.concat %4, %8 {sv.namehint = "_CDom_absSigSum_T"} : i26, i24
    %10 = comb.xor bin %9, %c-1_i50 {sv.namehint = "_CDom_absSigSum_T_1"} : i50
    %11 = comb.extract %io_fromPreMul_highAlignedSigC from 24 {sv.namehint = "_CDom_absSigSum_T_2"} : (i26) -> i2
    %12 = comb.extract %io_mulAddResult from 25 : (i49) -> i23
    %13 = comb.extract %4 from 0 : (i26) -> i24
    %14 = comb.concat %false, %11, %13, %12 {sv.namehint = "_CDom_absSigSum_T_5"} : i1, i2, i24, i23
    %15 = comb.mux bin %io_fromPreMul_doSubMags, %10, %14 {sv.namehint = "CDom_absSigSum"} : i50
    %16 = comb.extract %io_mulAddResult from 0 {sv.namehint = "_CDom_absSigSumExtra_T"} : (i49) -> i24
    %17 = comb.icmp ne %16, %c-1_i24 {sv.namehint = "_CDom_absSigSumExtra_T_2"} : i24
    %18 = comb.extract %io_mulAddResult from 0 {sv.namehint = "_CDom_absSigSumExtra_T_3"} : (i49) -> i25
    %19 = comb.icmp bin ne %18, %c0_i25 {sv.namehint = "_CDom_absSigSumExtra_T_4"} : i25
    %20 = comb.mux bin %io_fromPreMul_doSubMags, %17, %19 {sv.namehint = "CDom_absSigSumExtra"} : i1
    %21 = comb.concat %c0_i31, %15 : i31, i50
    %22 = comb.concat %c0_i76, %io_fromPreMul_CDom_CAlignDist : i76, i5
    %23 = comb.shl bin %21, %22 {sv.namehint = "_CDom_mainSig_T"} : i81
    %24 = comb.extract %15 from 0 {sv.namehint = "CDom_reduced4SigExtra_reducedVec_0"} : (i50) -> i1
    %25 = comb.extract %15 from 1 {sv.namehint = "_CDom_reduced4SigExtra_reducedVec_1_T"} : (i50) -> i4
    %26 = comb.icmp bin ne %25, %c0_i4 {sv.namehint = "CDom_reduced4SigExtra_reducedVec_1"} : i4
    %27 = comb.extract %15 from 5 {sv.namehint = "_CDom_reduced4SigExtra_reducedVec_2_T"} : (i50) -> i4
    %28 = comb.icmp bin ne %27, %c0_i4 {sv.namehint = "CDom_reduced4SigExtra_reducedVec_2"} : i4
    %29 = comb.extract %15 from 9 {sv.namehint = "_CDom_reduced4SigExtra_reducedVec_3_T"} : (i50) -> i4
    %30 = comb.icmp bin ne %29, %c0_i4 {sv.namehint = "CDom_reduced4SigExtra_reducedVec_3"} : i4
    %31 = comb.extract %15 from 13 {sv.namehint = "_CDom_reduced4SigExtra_reducedVec_4_T"} : (i50) -> i4
    %32 = comb.icmp bin ne %31, %c0_i4 {sv.namehint = "CDom_reduced4SigExtra_reducedVec_4"} : i4
    %33 = comb.extract %15 from 17 {sv.namehint = "_CDom_reduced4SigExtra_reducedVec_5_T"} : (i50) -> i4
    %34 = comb.icmp bin ne %33, %c0_i4 {sv.namehint = "CDom_reduced4SigExtra_reducedVec_5"} : i4
    %35 = comb.extract %io_fromPreMul_CDom_CAlignDist from 2 {sv.namehint = "_CDom_reduced4SigExtra_T_3"} : (i5) -> i3
    %36 = comb.xor bin %35, %c-1_i3 {sv.namehint = "_CDom_reduced4SigExtra_T_4"} : i3
    %37 = comb.concat %c0_i6, %36 : i6, i3
    %38 = comb.shrs bin %c-256_i9, %37 {sv.namehint = "CDom_reduced4SigExtra_shift"} : i9
    %39 = comb.extract %38 from 1 {sv.namehint = "_CDom_reduced4SigExtra_T_8"} : (i9) -> i1
    %40 = comb.extract %38 from 2 {sv.namehint = "_CDom_reduced4SigExtra_T_9"} : (i9) -> i1
    %41 = comb.extract %38 from 3 {sv.namehint = "_CDom_reduced4SigExtra_T_12"} : (i9) -> i1
    %42 = comb.extract %38 from 4 {sv.namehint = "_CDom_reduced4SigExtra_T_13"} : (i9) -> i1
    %43 = comb.extract %38 from 5 {sv.namehint = "_CDom_reduced4SigExtra_T_17"} : (i9) -> i1
    %44 = comb.extract %38 from 6 {sv.namehint = "_CDom_reduced4SigExtra_T_18"} : (i9) -> i1
    %45 = comb.concat %39, %40, %41, %42, %43, %44 {sv.namehint = "_CDom_reduced4SigExtra_T_20"} : i1, i1, i1, i1, i1, i1
    %46 = comb.concat %34, %32, %30, %28, %26, %24 : i1, i1, i1, i1, i1, i1
    %47 = comb.and bin %46, %45 : i6
    %48 = comb.extract %23 from 24 {sv.namehint = "_CDom_sig_T"} : (i81) -> i26
    %49 = comb.extract %23 from 21 {sv.namehint = "_CDom_sig_T_1"} : (i81) -> i3
    %50 = comb.concat %49, %47 : i3, i6
    %51 = comb.icmp bin ne %50, %c0_i9 {sv.namehint = "_CDom_sig_T_3"} : i9
    %52 = comb.or bin %51, %20 {sv.namehint = "_CDom_sig_T_4"} : i1
    %53 = comb.concat %48, %52 {sv.namehint = "CDom_sig"} : i26, i1
    %54 = comb.extract %4 from 2 {sv.namehint = "notCDom_signSigSum"} : (i26) -> i1
    %55 = comb.extract %4 from 0 : (i26) -> i2
    %56 = comb.concat %55, %5, %io_fromPreMul_bit0AlignedSigC {sv.namehint = "_notCDom_absSigSum_T_2"} : i2, i48, i1
    %57 = comb.xor bin %56, %c-1_i51 {sv.namehint = "_notCDom_absSigSum_T_1"} : i51
    %58 = comb.concat %55, %5, %io_fromPreMul_bit0AlignedSigC : i2, i48, i1
    %59 = comb.concat %c0_i50, %io_fromPreMul_doSubMags : i50, i1
    %60 = comb.add bin %58, %59 {sv.namehint = "_notCDom_absSigSum_T_3"} : i51
    %61 = comb.mux bin %54, %57, %60 {sv.namehint = "notCDom_absSigSum"} : i51
    %62 = comb.extract %61 from 0 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_0_T"} : (i51) -> i2
    %63 = comb.icmp bin ne %62, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_0"} : i2
    %64 = comb.extract %61 from 2 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_1_T"} : (i51) -> i2
    %65 = comb.icmp bin ne %64, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_1"} : i2
    %66 = comb.extract %61 from 4 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_2_T"} : (i51) -> i2
    %67 = comb.icmp bin ne %66, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_2"} : i2
    %68 = comb.extract %61 from 6 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_3_T"} : (i51) -> i2
    %69 = comb.icmp bin ne %68, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_3"} : i2
    %70 = comb.extract %61 from 8 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_4_T"} : (i51) -> i2
    %71 = comb.icmp bin ne %70, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_4"} : i2
    %72 = comb.extract %61 from 10 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_5_T"} : (i51) -> i2
    %73 = comb.icmp bin ne %72, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_5"} : i2
    %74 = comb.extract %61 from 12 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_6_T"} : (i51) -> i2
    %75 = comb.icmp bin ne %74, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_6"} : i2
    %76 = comb.extract %61 from 14 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_7_T"} : (i51) -> i2
    %77 = comb.icmp bin ne %76, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_7"} : i2
    %78 = comb.extract %61 from 16 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_8_T"} : (i51) -> i2
    %79 = comb.icmp bin ne %78, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_8"} : i2
    %80 = comb.extract %61 from 18 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_9_T"} : (i51) -> i2
    %81 = comb.icmp bin ne %80, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_9"} : i2
    %82 = comb.extract %61 from 20 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_10_T"} : (i51) -> i2
    %83 = comb.icmp bin ne %82, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_10"} : i2
    %84 = comb.extract %61 from 22 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_11_T"} : (i51) -> i2
    %85 = comb.icmp bin ne %84, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_11"} : i2
    %86 = comb.extract %61 from 24 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_12_T"} : (i51) -> i2
    %87 = comb.icmp bin ne %86, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_12"} : i2
    %88 = comb.extract %61 from 26 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_13_T"} : (i51) -> i2
    %89 = comb.icmp bin ne %88, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_13"} : i2
    %90 = comb.extract %61 from 28 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_14_T"} : (i51) -> i2
    %91 = comb.icmp bin ne %90, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_14"} : i2
    %92 = comb.extract %61 from 30 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_15_T"} : (i51) -> i2
    %93 = comb.icmp bin ne %92, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_15"} : i2
    %94 = comb.extract %61 from 32 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_16_T"} : (i51) -> i2
    %95 = comb.icmp bin ne %94, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_16"} : i2
    %96 = comb.extract %61 from 34 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_17_T"} : (i51) -> i2
    %97 = comb.icmp bin ne %96, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_17"} : i2
    %98 = comb.extract %61 from 36 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_18_T"} : (i51) -> i2
    %99 = comb.icmp bin ne %98, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_18"} : i2
    %100 = comb.extract %61 from 38 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_19_T"} : (i51) -> i2
    %101 = comb.icmp bin ne %100, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_19"} : i2
    %102 = comb.extract %61 from 40 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_20_T"} : (i51) -> i2
    %103 = comb.icmp bin ne %102, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_20"} : i2
    %104 = comb.extract %61 from 42 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_21_T"} : (i51) -> i2
    %105 = comb.icmp bin ne %104, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_21"} : i2
    %106 = comb.extract %61 from 44 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_22_T"} : (i51) -> i2
    %107 = comb.icmp bin ne %106, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_22"} : i2
    %108 = comb.extract %61 from 46 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_23_T"} : (i51) -> i2
    %109 = comb.icmp bin ne %108, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_23"} : i2
    %110 = comb.extract %61 from 48 {sv.namehint = "_notCDom_reduced2AbsSigSum_reducedVec_24_T"} : (i51) -> i2
    %111 = comb.icmp bin ne %110, %c0_i2 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_24"} : i2
    %112 = comb.extract %61 from 50 {sv.namehint = "notCDom_reduced2AbsSigSum_reducedVec_25"} : (i51) -> i1
    %113 = comb.xor %65, %true : i1
    %114 = comb.concat %c-4_i4, %113 {sv.namehint = "_notCDom_normDistReduced2_T_26"} : i4, i1
    %115 = comb.mux bin %67, %c-9_i5, %114 {sv.namehint = "_notCDom_normDistReduced2_T_27"} : i5
    %116 = comb.mux bin %69, %c-10_i5, %115 {sv.namehint = "_notCDom_normDistReduced2_T_28"} : i5
    %117 = comb.mux bin %71, %c-11_i5, %116 {sv.namehint = "_notCDom_normDistReduced2_T_29"} : i5
    %118 = comb.mux bin %73, %c-12_i5, %117 {sv.namehint = "_notCDom_normDistReduced2_T_30"} : i5
    %119 = comb.mux bin %75, %c-13_i5, %118 {sv.namehint = "_notCDom_normDistReduced2_T_31"} : i5
    %120 = comb.mux bin %77, %c-14_i5, %119 {sv.namehint = "_notCDom_normDistReduced2_T_32"} : i5
    %121 = comb.mux bin %79, %c-15_i5, %120 {sv.namehint = "_notCDom_normDistReduced2_T_33"} : i5
    %122 = comb.mux bin %81, %c-16_i5, %121 {sv.namehint = "_notCDom_normDistReduced2_T_34"} : i5
    %123 = comb.mux bin %83, %c15_i5, %122 {sv.namehint = "_notCDom_normDistReduced2_T_35"} : i5
    %124 = comb.mux bin %85, %c14_i5, %123 {sv.namehint = "_notCDom_normDistReduced2_T_36"} : i5
    %125 = comb.mux bin %87, %c13_i5, %124 {sv.namehint = "_notCDom_normDistReduced2_T_37"} : i5
    %126 = comb.mux bin %89, %c12_i5, %125 {sv.namehint = "_notCDom_normDistReduced2_T_38"} : i5
    %127 = comb.mux bin %91, %c11_i5, %126 {sv.namehint = "_notCDom_normDistReduced2_T_39"} : i5
    %128 = comb.mux bin %93, %c10_i5, %127 {sv.namehint = "_notCDom_normDistReduced2_T_40"} : i5
    %129 = comb.mux bin %95, %c9_i5, %128 {sv.namehint = "_notCDom_normDistReduced2_T_41"} : i5
    %130 = comb.mux bin %97, %c8_i5, %129 {sv.namehint = "_notCDom_normDistReduced2_T_42"} : i5
    %131 = comb.mux bin %99, %c7_i5, %130 {sv.namehint = "_notCDom_normDistReduced2_T_43"} : i5
    %132 = comb.mux bin %101, %c6_i5, %131 {sv.namehint = "_notCDom_normDistReduced2_T_44"} : i5
    %133 = comb.mux bin %103, %c5_i5, %132 {sv.namehint = "_notCDom_normDistReduced2_T_45"} : i5
    %134 = comb.mux bin %105, %c4_i5, %133 {sv.namehint = "_notCDom_normDistReduced2_T_46"} : i5
    %135 = comb.mux bin %107, %c3_i5, %134 {sv.namehint = "_notCDom_normDistReduced2_T_47"} : i5
    %136 = comb.mux bin %109, %c2_i5, %135 {sv.namehint = "_notCDom_normDistReduced2_T_48"} : i5
    %137 = comb.mux bin %111, %c1_i5, %136 {sv.namehint = "_notCDom_normDistReduced2_T_49"} : i5
    %138 = comb.mux bin %112, %c0_i5, %137 {sv.namehint = "notCDom_normDistReduced2"} : i5
    %139 = comb.concat %c0_i4, %138, %false : i4, i5, i1
    %140 = comb.sub bin %io_fromPreMul_sExpSum, %139 {sv.namehint = "_notCDom_sExp_T_1"} : i10
    %141 = comb.concat %c0_i63, %61 : i63, i51
    %142 = comb.concat %c0_i108, %138, %false : i108, i5, i1
    %143 = comb.shl bin %141, %142 {sv.namehint = "_notCDom_mainSig_T"} : i114
    %144 = comb.concat %65, %63 {sv.namehint = "_notCDom_reduced4SigExtra_reducedVec_0_T"} : i1, i1
    %145 = comb.icmp bin ne %144, %c0_i2 {sv.namehint = "notCDom_reduced4SigExtra_reducedVec_0"} : i2
    %146 = comb.concat %69, %67 {sv.namehint = "_notCDom_reduced4SigExtra_reducedVec_1_T"} : i1, i1
    %147 = comb.icmp bin ne %146, %c0_i2 {sv.namehint = "notCDom_reduced4SigExtra_reducedVec_1"} : i2
    %148 = comb.concat %73, %71 {sv.namehint = "_notCDom_reduced4SigExtra_reducedVec_2_T"} : i1, i1
    %149 = comb.icmp bin ne %148, %c0_i2 {sv.namehint = "notCDom_reduced4SigExtra_reducedVec_2"} : i2
    %150 = comb.concat %77, %75 {sv.namehint = "_notCDom_reduced4SigExtra_reducedVec_3_T"} : i1, i1
    %151 = comb.icmp bin ne %150, %c0_i2 {sv.namehint = "notCDom_reduced4SigExtra_reducedVec_3"} : i2
    %152 = comb.concat %81, %79 {sv.namehint = "_notCDom_reduced4SigExtra_reducedVec_4_T"} : i1, i1
    %153 = comb.icmp bin ne %152, %c0_i2 {sv.namehint = "notCDom_reduced4SigExtra_reducedVec_4"} : i2
    %154 = comb.concat %85, %83 {sv.namehint = "_notCDom_reduced4SigExtra_reducedVec_5_T"} : i1, i1
    %155 = comb.icmp bin ne %154, %c0_i2 {sv.namehint = "notCDom_reduced4SigExtra_reducedVec_5"} : i2
    %156 = comb.extract %138 from 1 {sv.namehint = "_notCDom_reduced4SigExtra_T_3"} : (i5) -> i4
    %157 = comb.xor bin %156, %c-1_i4 {sv.namehint = "_notCDom_reduced4SigExtra_T_4"} : i4
    %158 = comb.concat %c0_i13, %157 : i13, i4
    %159 = comb.shrs bin %c-65536_i17, %158 {sv.namehint = "notCDom_reduced4SigExtra_shift"} : i17
    %160 = comb.extract %159 from 1 {sv.namehint = "_notCDom_reduced4SigExtra_T_8"} : (i17) -> i1
    %161 = comb.extract %159 from 2 {sv.namehint = "_notCDom_reduced4SigExtra_T_9"} : (i17) -> i1
    %162 = comb.extract %159 from 3 {sv.namehint = "_notCDom_reduced4SigExtra_T_12"} : (i17) -> i1
    %163 = comb.extract %159 from 4 {sv.namehint = "_notCDom_reduced4SigExtra_T_13"} : (i17) -> i1
    %164 = comb.extract %159 from 5 {sv.namehint = "_notCDom_reduced4SigExtra_T_17"} : (i17) -> i1
    %165 = comb.extract %159 from 6 {sv.namehint = "_notCDom_reduced4SigExtra_T_18"} : (i17) -> i1
    %166 = comb.concat %160, %161, %162, %163, %164, %165 {sv.namehint = "_notCDom_reduced4SigExtra_T_20"} : i1, i1, i1, i1, i1, i1
    %167 = comb.concat %155, %153, %151, %149, %147, %145 : i1, i1, i1, i1, i1, i1
    %168 = comb.and bin %167, %166 : i6
    %169 = comb.extract %143 from 26 {sv.namehint = "_notCDom_sig_T"} : (i114) -> i26
    %170 = comb.extract %143 from 23 {sv.namehint = "_notCDom_sig_T_1"} : (i114) -> i3
    %171 = comb.concat %170, %168 : i3, i6
    %172 = comb.icmp bin ne %171, %c0_i9 {sv.namehint = "_notCDom_sig_T_3"} : i9
    %173 = comb.concat %169, %172 {sv.namehint = "notCDom_sig"} : i26, i1
    %174 = comb.extract %143 from 50 {sv.namehint = "_notCDom_completeCancellation_T"} : (i114) -> i2
    %175 = comb.icmp bin eq %174, %c0_i2 {sv.namehint = "notCDom_completeCancellation"} : i2
    %176 = comb.xor bin %io_fromPreMul_signProd, %54 {sv.namehint = "_notCDom_sign_T"} : i1
    %177 = comb.mux bin %175, %0, %176 {sv.namehint = "notCDom_sign"} : i1
    %178 = comb.or bin %io_fromPreMul_isInfA, %io_fromPreMul_isInfB {sv.namehint = "notNaN_isInfProd"} : i1
    %179 = comb.or bin %178, %io_fromPreMul_isInfC {sv.namehint = "notNaN_isInfOut"} : i1
    %180 = comb.or bin %io_fromPreMul_isZeroA, %io_fromPreMul_isZeroB {sv.namehint = "_notNaN_addZeros_T"} : i1
    %181 = comb.and bin %180, %io_fromPreMul_isZeroC {sv.namehint = "notNaN_addZeros"} : i1
    %182 = comb.and bin %io_fromPreMul_isInfA, %io_fromPreMul_isZeroB {sv.namehint = "_io_invalidExc_T"} : i1
    %183 = comb.and bin %io_fromPreMul_isZeroA, %io_fromPreMul_isInfB {sv.namehint = "_io_invalidExc_T_2"} : i1
    %184 = comb.xor bin %io_fromPreMul_isNaNAOrB, %true {sv.namehint = "_io_invalidExc_T_4"} : i1
    %185 = comb.and bin %184, %178, %io_fromPreMul_isInfC, %io_fromPreMul_doSubMags {sv.namehint = "_io_invalidExc_T_8"} : i1
    %186 = comb.or bin %io_fromPreMul_isSigNaNAny, %182, %183, %185 {sv.namehint = "io_invalidExc"} : i1
    %187 = comb.or bin %io_fromPreMul_isNaNAOrB, %io_fromPreMul_isNaNC {sv.namehint = "io_rawOut_isNaN"} : i1
    %188 = comb.xor bin %io_fromPreMul_CIsDominant, %true {sv.namehint = "_io_rawOut_isZero_T"} : i1
    %189 = comb.and bin %188, %175 {sv.namehint = "_io_rawOut_isZero_T_1"} : i1
    %190 = comb.or bin %181, %189 {sv.namehint = "io_rawOut_isZero"} : i1
    %191 = comb.and bin %178, %io_fromPreMul_signProd {sv.namehint = "_io_rawOut_sign_T"} : i1
    %192 = comb.and bin %io_fromPreMul_isInfC, %1 {sv.namehint = "_io_rawOut_sign_T_1"} : i1
    %193 = comb.icmp bin ne %io_roundingMode, %c2_i3 {sv.namehint = "_io_rawOut_sign_T_3"} : i3
    %194 = comb.and bin %181, %193, %io_fromPreMul_signProd, %1 {sv.namehint = "_io_rawOut_sign_T_6"} : i1
    %195 = comb.or bin %io_fromPreMul_signProd, %1 {sv.namehint = "_io_rawOut_sign_T_9"} : i1
    %196 = comb.and bin %181, %0, %195 {sv.namehint = "_io_rawOut_sign_T_10"} : i1
    %197 = comb.xor bin %179, %true {sv.namehint = "_io_rawOut_sign_T_12"} : i1
    %198 = comb.xor bin %181, %true {sv.namehint = "_io_rawOut_sign_T_13"} : i1
    %199 = comb.mux bin %io_fromPreMul_CIsDominant, %1, %177 {sv.namehint = "_io_rawOut_sign_T_15"} : i1
    %200 = comb.and bin %197, %198, %199 {sv.namehint = "_io_rawOut_sign_T_16"} : i1
    %201 = comb.or bin %191, %192, %194, %196, %200 {sv.namehint = "io_rawOut_sign"} : i1
    %202 = comb.mux bin %io_fromPreMul_CIsDominant, %7, %140 {sv.namehint = "io_rawOut_sExp"} : i10
    %203 = comb.mux bin %io_fromPreMul_CIsDominant, %53, %173 {sv.namehint = "io_rawOut_sig"} : i27
    hw.output %186, %187, %179, %190, %201, %202, %203 : i1, i1, i1, i1, i1, i10, i27
  }
  hw.module private @RoundAnyRawFNToRecFN_ie8_is26_oe8_os24(in %io_invalidExc : i1, in %io_in_isNaN : i1, in %io_in_isInf : i1, in %io_in_isZero : i1, in %io_in_sign : i1, in %io_in_sExp : i10, in %io_in_sig : i27, in %io_roundingMode : i3, out io_out : i33, out io_exceptionFlags : i5) {
    %c-1_i6 = hw.constant -1 : i6
    %c-1_i7 = hw.constant -1 : i7
    %c0_i53 = hw.constant 0 : i53
    %c2_i4 = hw.constant 2 : i4
    %c0_i52 = hw.constant 0 : i52
    %c-1_i24 = hw.constant -1 : i24
    %c1_i2 = hw.constant 1 : i2
    %c107_i11 = hw.constant 107 : i11
    %c1_i26 = hw.constant 1 : i26
    %c-1_i26 = hw.constant -1 : i26
    %c-1_i22 = hw.constant -1 : i22
    %c0_i59 = hw.constant 0 : i59
    %c-1_i9 = hw.constant -1 : i9
    %c2_i3 = hw.constant 2 : i3
    %c-4_i3 = hw.constant -4 : i3
    %c-2_i3 = hw.constant -2 : i3
    %c-1_i3 = hw.constant -1 : i3
    %c-1_i2 = hw.constant -1 : i2
    %c0_i26 = hw.constant 0 : i26
    %c-64_i9 = hw.constant -64 : i9
    %c107_i9 = hw.constant 107 : i9
    %c-129_i9 = hw.constant -129 : i9
    %c-128_i9 = hw.constant -128 : i9
    %c-18446744073709551616_i65 = hw.constant -18446744073709551616 : i65
    %c0_i22 = hw.constant 0 : i22
    %c0_i3 = hw.constant 0 : i3
    %c0_i25 = hw.constant 0 : i25
    %c3_i3 = hw.constant 3 : i3
    %c0_i9 = hw.constant 0 : i9
    %c-108_i9 = hw.constant -108 : i9
    %false = hw.constant false
    %true = hw.constant true
    %0 = comb.icmp bin eq %io_roundingMode, %c0_i3 {sv.namehint = "roundingMode_near_even"} : i3
    %1 = comb.icmp bin eq %io_roundingMode, %c2_i3 {sv.namehint = "roundingMode_min"} : i3
    %2 = comb.icmp bin eq %io_roundingMode, %c3_i3 {sv.namehint = "roundingMode_max"} : i3
    %3 = comb.icmp bin eq %io_roundingMode, %c-4_i3 {sv.namehint = "roundingMode_near_maxMag"} : i3
    %4 = comb.icmp bin eq %io_roundingMode, %c-2_i3 {sv.namehint = "roundingMode_odd"} : i3
    %5 = comb.and bin %1, %io_in_sign {sv.namehint = "_roundMagUp_T"} : i1
    %6 = comb.xor bin %io_in_sign, %true {sv.namehint = "_roundMagUp_T_1"} : i1
    %7 = comb.and bin %2, %6 {sv.namehint = "_roundMagUp_T_2"} : i1
    %8 = comb.or bin %5, %7 {sv.namehint = "roundMagUp"} : i1
    %9 = comb.extract %io_in_sig from 26 {sv.namehint = "doShiftSigDown1"} : (i27) -> i1
    %10 = comb.extract %io_in_sExp from 0 {sv.namehint = "_roundMask_T"} : (i10) -> i9
    %11 = comb.xor bin %10, %c-1_i9 {sv.namehint = "_roundMask_T_1"} : i9
    %12 = comb.extract %11 from 8 {sv.namehint = "roundMask_msb"} : (i9) -> i1
    %13 = comb.extract %11 from 7 {sv.namehint = "roundMask_msb_1"} : (i9) -> i1
    %14 = comb.extract %11 from 6 {sv.namehint = "roundMask_msb_2"} : (i9) -> i1
    %15 = comb.extract %11 from 0 {sv.namehint = "roundMask_lsbs_2"} : (i9) -> i6
    %16 = comb.concat %c0_i59, %15 : i59, i6
    %17 = comb.shrs bin %c-18446744073709551616_i65, %16 {sv.namehint = "roundMask_shift"} : i65
    %18 = comb.extract %17 from 57 : (i65) -> i1
    %19 = comb.extract %17 from 42 : (i65) -> i1
    %20 = comb.extract %17 from 44 : (i65) -> i1
    %21 = comb.extract %17 from 46 : (i65) -> i1
    %22 = comb.extract %17 from 48 : (i65) -> i1
    %23 = comb.extract %17 from 50 : (i65) -> i1
    %24 = comb.extract %17 from 52 : (i65) -> i1
    %25 = comb.extract %17 from 54 : (i65) -> i1
    %26 = comb.extract %17 from 56 : (i65) -> i1
    %27 = comb.extract %17 from 43 : (i65) -> i1
    %28 = comb.extract %17 from 45 : (i65) -> i1
    %29 = comb.extract %17 from 47 : (i65) -> i1
    %30 = comb.extract %17 from 49 : (i65) -> i1
    %31 = comb.extract %17 from 51 : (i65) -> i1
    %32 = comb.extract %17 from 53 : (i65) -> i1
    %33 = comb.extract %17 from 55 : (i65) -> i1
    %34 = comb.extract %17 from 58 {sv.namehint = "_roundMask_T_46"} : (i65) -> i1
    %35 = comb.extract %17 from 59 {sv.namehint = "_roundMask_T_47"} : (i65) -> i1
    %36 = comb.extract %17 from 60 {sv.namehint = "_roundMask_T_50"} : (i65) -> i1
    %37 = comb.extract %17 from 61 {sv.namehint = "_roundMask_T_51"} : (i65) -> i1
    %38 = comb.extract %17 from 62 {sv.namehint = "_roundMask_T_55"} : (i65) -> i1
    %39 = comb.extract %17 from 63 {sv.namehint = "_roundMask_T_56"} : (i65) -> i1
    %40 = comb.concat %19, %27, %20, %28, %21, %29, %22, %30, %23, %31, %24, %32, %25, %33, %26, %18, %34, %35, %36, %37, %38, %39 {sv.namehint = "_roundMask_T_59"} : i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1
    %41 = comb.xor bin %40, %c-1_i22 {sv.namehint = "_roundMask_T_60"} : i22
    %42 = comb.mux bin %14, %c0_i22, %41 {sv.namehint = "_roundMask_T_61"} : i22
    %43 = comb.xor bin %42, %c-1_i22 {sv.namehint = "_roundMask_T_62"} : i22
    %44 = comb.concat %43, %c-1_i3 {sv.namehint = "_roundMask_T_63"} : i22, i3
    %45 = comb.shrs bin %c-18446744073709551616_i65, %16 {sv.namehint = "roundMask_shift_1"} : i65
    %46 = comb.extract %45 from 0 {sv.namehint = "_roundMask_T_66"} : (i65) -> i1
    %47 = comb.extract %45 from 1 {sv.namehint = "_roundMask_T_67"} : (i65) -> i1
    %48 = comb.extract %45 from 2 {sv.namehint = "_roundMask_T_69"} : (i65) -> i1
    %49 = comb.concat %46, %47, %48 {sv.namehint = "_roundMask_T_70"} : i1, i1, i1
    %50 = comb.mux bin %14, %49, %c0_i3 {sv.namehint = "_roundMask_T_71"} : i3
    %51 = comb.concat %c0_i22, %50 : i22, i3
    %52 = comb.mux bin %13, %44, %51 {sv.namehint = "_roundMask_T_72"} : i25
    %53 = comb.mux bin %12, %52, %c0_i25 {sv.namehint = "_roundMask_T_73"} : i25
    %54 = comb.extract %53 from 1 : (i25) -> i24
    %55 = comb.extract %53 from 0 : (i25) -> i1
    %56 = comb.or bin %55, %9 {sv.namehint = "_common_underflow_T_4"} : i1
    %57 = comb.xor %54, %c-1_i24 : i24
    %58 = comb.xor %56, %true : i1
    %59 = comb.extract %io_in_sig from 1 : (i27) -> i26
    %60 = comb.concat %true, %57, %58 : i1, i24, i1
    %61 = comb.concat %54, %56, %true : i24, i1, i1
    %62 = comb.and bin %59, %60, %61 {sv.namehint = "_roundPosBit_T"} : i26
    %63 = comb.icmp bin ne %62, %c0_i26 {sv.namehint = "roundPosBit"} : i26
    %64 = comb.extract %io_in_sig from 0 : (i27) -> i26
    %65 = comb.concat %54, %56, %true : i24, i1, i1
    %66 = comb.and bin %64, %65 {sv.namehint = "_anyRoundExtra_T"} : i26
    %67 = comb.concat %62, %66 : i26, i26
    %68 = comb.icmp bin ne %67, %c0_i52 {sv.namehint = "anyRound"} : i52
    %69 = comb.or bin %0, %3 {sv.namehint = "_overflow_roundMagUp_T"} : i1
    %70 = comb.and bin %69, %63 {sv.namehint = "_roundIncr_T_1"} : i1
    %71 = comb.and bin %8, %68 {sv.namehint = "_roundIncr_T_2"} : i1
    %72 = comb.or bin %70, %71 {sv.namehint = "roundIncr"} : i1
    %73 = comb.extract %io_in_sig from 2 : (i27) -> i25
    %74 = comb.concat %54, %56 : i24, i1
    %75 = comb.or bin %73, %74 {sv.namehint = "_roundedSig_T"} : i25
    %76 = comb.concat %false, %75 : i1, i25
    %77 = comb.add bin %76, %c1_i26 {sv.namehint = "_roundedSig_T_2"} : i26
    %78 = comb.icmp bin eq %66, %c0_i26 {sv.namehint = "_roundedSig_T_4"} : i26
    %79 = comb.and bin %0, %63, %78 {sv.namehint = "_roundedSig_T_5"} : i1
    %80 = comb.concat %54, %56, %true {sv.namehint = "_roundedSig_T_6"} : i24, i1, i1
    %81 = comb.mux bin %79, %80, %c0_i26 {sv.namehint = "_roundedSig_T_7"} : i26
    %82 = comb.xor bin %81, %c-1_i26 {sv.namehint = "_roundedSig_T_8"} : i26
    %83 = comb.and bin %77, %82 {sv.namehint = "_roundedSig_T_9"} : i26
    %84 = comb.xor %54, %c-1_i24 : i24
    %85 = comb.xor %56, %true : i1
    %86 = comb.extract %io_in_sig from 2 : (i27) -> i25
    %87 = comb.concat %84, %85 : i24, i1
    %88 = comb.and bin %86, %87 {sv.namehint = "_roundedSig_T_12"} : i25
    %89 = comb.and bin %4, %68 {sv.namehint = "_roundedSig_T_13"} : i1
    %90 = comb.concat %true, %57, %58 : i1, i24, i1
    %91 = comb.concat %54, %56, %true : i24, i1, i1
    %92 = comb.and bin %90, %91 {sv.namehint = "_roundedSig_T_14"} : i26
    %93 = comb.mux bin %89, %92, %c0_i26 {sv.namehint = "_roundedSig_T_15"} : i26
    %94 = comb.concat %false, %88 : i1, i25
    %95 = comb.or bin %94, %93 {sv.namehint = "_roundedSig_T_16"} : i26
    %96 = comb.mux bin %72, %83, %95 {sv.namehint = "roundedSig"} : i26
    %97 = comb.extract %96 from 24 {sv.namehint = "_sRoundedExp_T"} : (i26) -> i2
    %98 = comb.extract %io_in_sExp from 9 : (i10) -> i1
    %99 = comb.concat %98, %io_in_sExp : i1, i10
    %100 = comb.concat %c0_i9, %97 : i9, i2
    %101 = comb.add bin %99, %100 {sv.namehint = "sRoundedExp"} : i11
    %102 = comb.extract %101 from 0 {sv.namehint = "common_expOut"} : (i11) -> i9
    %103 = comb.extract %96 from 1 {sv.namehint = "_common_fractOut_T"} : (i26) -> i23
    %104 = comb.extract %96 from 0 {sv.namehint = "_common_fractOut_T_1"} : (i26) -> i23
    %105 = comb.mux bin %9, %103, %104 {sv.namehint = "common_fractOut"} : i23
    %106 = comb.extract %101 from 7 : (i11) -> i4
    %107 = comb.icmp bin sgt %106, %c2_i4 {sv.namehint = "common_overflow"} : i4
    %108 = comb.icmp bin slt %101, %c107_i11 {sv.namehint = "common_totalUnderflow"} : i11
    %109 = comb.extract %io_in_sig from 2 {sv.namehint = "_unboundedRange_anyRound_T"} : (i27) -> i1
    %110 = comb.extract %io_in_sig from 1 {sv.namehint = "_unboundedRange_roundPosBit_T_1"} : (i27) -> i1
    %111 = comb.mux bin %9, %109, %110 {sv.namehint = "unboundedRange_roundPosBit"} : i1
    %112 = comb.and bin %9, %109 {sv.namehint = "_unboundedRange_anyRound_T_1"} : i1
    %113 = comb.extract %io_in_sig from 0 {sv.namehint = "_unboundedRange_anyRound_T_2"} : (i27) -> i2
    %114 = comb.concat %112, %113 : i1, i2
    %115 = comb.icmp bin ne %114, %c0_i3 {sv.namehint = "unboundedRange_anyRound"} : i3
    %116 = comb.and bin %69, %111 {sv.namehint = "_unboundedRange_roundIncr_T_1"} : i1
    %117 = comb.and bin %8, %115 {sv.namehint = "_unboundedRange_roundIncr_T_2"} : i1
    %118 = comb.or bin %116, %117 {sv.namehint = "unboundedRange_roundIncr"} : i1
    %119 = comb.extract %96 from 25 {sv.namehint = "_roundCarry_T"} : (i26) -> i1
    %120 = comb.extract %96 from 24 {sv.namehint = "_roundCarry_T_1"} : (i26) -> i1
    %121 = comb.mux bin %9, %119, %120 {sv.namehint = "roundCarry"} : i1
    %122 = comb.extract %io_in_sExp from 8 : (i10) -> i2
    %123 = comb.icmp bin ne %122, %c1_i2 {sv.namehint = "_common_underflow_T_1"} : i2
    %124 = comb.extract %53 from 1 {sv.namehint = "_common_underflow_T_9"} : (i25) -> i1
    %125 = comb.mux bin %9, %124, %56 {sv.namehint = "_common_underflow_T_5"} : i1
    %126 = comb.extract %53 from 2 {sv.namehint = "_common_underflow_T_8"} : (i25) -> i1
    %127 = comb.mux bin %9, %126, %124 {sv.namehint = "_common_underflow_T_10"} : i1
    %128 = comb.xor bin %127, %true {sv.namehint = "_common_underflow_T_11"} : i1
    %129 = comb.and bin %128, %121, %63, %118 {sv.namehint = "_common_underflow_T_15"} : i1
    %130 = comb.xor bin %129, %true {sv.namehint = "_common_underflow_T_16"} : i1
    %131 = comb.and bin %68, %123, %125, %130 {sv.namehint = "_common_underflow_T_17"} : i1
    %132 = comb.or bin %108, %131 {sv.namehint = "common_underflow"} : i1
    %133 = comb.concat %108, %62, %66 : i1, i26, i26
    %134 = comb.icmp bin ne %133, %c0_i53 {sv.namehint = "common_inexact"} : i53
    %135 = comb.or bin %io_invalidExc, %io_in_isNaN {sv.namehint = "isNaNOut"} : i1
    %136 = comb.xor bin %135, %true {sv.namehint = "_commonCase_T"} : i1
    %137 = comb.xor bin %io_in_isInf, %true {sv.namehint = "_commonCase_T_1"} : i1
    %138 = comb.xor bin %io_in_isZero, %true {sv.namehint = "_commonCase_T_3"} : i1
    %139 = comb.and bin %136, %137, %138 {sv.namehint = "commonCase"} : i1
    %140 = comb.and bin %139, %107 {sv.namehint = "overflow"} : i1
    %141 = comb.and bin %139, %132 {sv.namehint = "underflow"} : i1
    %142 = comb.and bin %139, %134 {sv.namehint = "_inexact_T"} : i1
    %143 = comb.or bin %140, %142 {sv.namehint = "inexact"} : i1
    %144 = comb.or bin %69, %8 {sv.namehint = "overflow_roundMagUp"} : i1
    %145 = comb.or bin %8, %4 {sv.namehint = "_pegMinNonzeroMagOut_T_1"} : i1
    %146 = comb.and bin %139, %108, %145 {sv.namehint = "pegMinNonzeroMagOut"} : i1
    %147 = comb.xor bin %144, %true {sv.namehint = "_pegMaxFiniteMagOut_T"} : i1
    %148 = comb.and bin %140, %147 {sv.namehint = "pegMaxFiniteMagOut"} : i1
    %149 = comb.and bin %140, %144 {sv.namehint = "_notNaN_isInfOut_T"} : i1
    %150 = comb.or bin %io_in_isInf, %149 {sv.namehint = "notNaN_isInfOut"} : i1
    %151 = comb.xor %135, %true : i1
    %152 = comb.and %151, %io_in_sign {sv.namehint = "signOut"} : i1
    %153 = comb.or bin %io_in_isZero, %108 {sv.namehint = "_expOut_T"} : i1
    %154 = comb.mux bin %153, %c-64_i9, %c0_i9 {sv.namehint = "_expOut_T_1"} : i9
    %155 = comb.xor bin %154, %c-1_i9 {sv.namehint = "_expOut_T_2"} : i9
    %156 = comb.mux bin %146, %c-108_i9, %c0_i9 {sv.namehint = "_expOut_T_5"} : i9
    %157 = comb.xor bin %156, %c-1_i9 {sv.namehint = "_expOut_T_6"} : i9
    %158 = comb.xor %148, %true : i1
    %159 = comb.concat %true, %158, %c-1_i7 {sv.namehint = "_expOut_T_9"} : i1, i1, i7
    %160 = comb.xor %150, %true : i1
    %161 = comb.concat %c-1_i2, %160, %c-1_i6 {sv.namehint = "_expOut_T_12"} : i2, i1, i6
    %162 = comb.and bin %102, %155, %157, %159, %161 {sv.namehint = "_expOut_T_13"} : i9
    %163 = comb.mux bin %146, %c107_i9, %c0_i9 {sv.namehint = "_expOut_T_14"} : i9
    %164 = comb.mux bin %148, %c-129_i9, %c0_i9 {sv.namehint = "_expOut_T_16"} : i9
    %165 = comb.mux bin %150, %c-128_i9, %c0_i9 {sv.namehint = "_expOut_T_18"} : i9
    %166 = comb.mux bin %135, %c-64_i9, %c0_i9 {sv.namehint = "_expOut_T_20"} : i9
    %167 = comb.or bin %162, %163, %164, %165, %166 {sv.namehint = "expOut"} : i9
    %168 = comb.or bin %135, %io_in_isZero, %108 {sv.namehint = "_fractOut_T_1"} : i1
    %169 = comb.concat %135, %c0_i22 {sv.namehint = "_fractOut_T_2"} : i1, i22
    %170 = comb.mux bin %168, %169, %105 {sv.namehint = "_fractOut_T_3"} : i23
    %171 = comb.replicate %148 {sv.namehint = "_fractOut_T_4"} : (i1) -> i23
    %172 = comb.or bin %170, %171 {sv.namehint = "fractOut"} : i23
    %173 = comb.concat %152, %167, %172 {sv.namehint = "io_out"} : i1, i9, i23
    %174 = comb.concat %io_invalidExc, %false, %140, %141, %143 {sv.namehint = "io_exceptionFlags"} : i1, i1, i1, i1, i1
    hw.output %173, %174 : i33, i5
  }
  hw.module private @RoundRawFNToRecFN_e8_s24(in %io_invalidExc : i1, in %io_in_isNaN : i1, in %io_in_isInf : i1, in %io_in_isZero : i1, in %io_in_sign : i1, in %io_in_sExp : i10, in %io_in_sig : i27, in %io_roundingMode : i3, out io_out : i33, out io_exceptionFlags : i5) {
    %roundAnyRawFNToRecFN.io_out, %roundAnyRawFNToRecFN.io_exceptionFlags = hw.instance "roundAnyRawFNToRecFN" @RoundAnyRawFNToRecFN_ie8_is26_oe8_os24(io_invalidExc: %io_invalidExc: i1, io_in_isNaN: %io_in_isNaN: i1, io_in_isInf: %io_in_isInf: i1, io_in_isZero: %io_in_isZero: i1, io_in_sign: %io_in_sign: i1, io_in_sExp: %io_in_sExp: i10, io_in_sig: %io_in_sig: i27, io_roundingMode: %io_roundingMode: i3) -> (io_out: i33, io_exceptionFlags: i5) {sv.namehint = "roundAnyRawFNToRecFN.io_out"}
    hw.output %roundAnyRawFNToRecFN.io_out, %roundAnyRawFNToRecFN.io_exceptionFlags : i33, i5
  }
  hw.module private @MulAddRecFNPipe_l2_e8_s24(in %clock : !seq.clock, in %reset : i1, in %io_validin : i1, in %io_op : i2, in %io_a : i33, in %io_b : i33, in %io_c : i33, in %io_roundingMode : i3, out io_out : i33, out io_exceptionFlags : i5, out io_validout : i1) {
    %c0_i24 = hw.constant 0 : i24
    %false = hw.constant false
    %mulAddRecFNToRaw_preMul.io_mulAddA, %mulAddRecFNToRaw_preMul.io_mulAddB, %mulAddRecFNToRaw_preMul.io_mulAddC, %mulAddRecFNToRaw_preMul.io_toPostMul_isSigNaNAny, %mulAddRecFNToRaw_preMul.io_toPostMul_isNaNAOrB, %mulAddRecFNToRaw_preMul.io_toPostMul_isInfA, %mulAddRecFNToRaw_preMul.io_toPostMul_isZeroA, %mulAddRecFNToRaw_preMul.io_toPostMul_isInfB, %mulAddRecFNToRaw_preMul.io_toPostMul_isZeroB, %mulAddRecFNToRaw_preMul.io_toPostMul_signProd, %mulAddRecFNToRaw_preMul.io_toPostMul_isNaNC, %mulAddRecFNToRaw_preMul.io_toPostMul_isInfC, %mulAddRecFNToRaw_preMul.io_toPostMul_isZeroC, %mulAddRecFNToRaw_preMul.io_toPostMul_sExpSum, %mulAddRecFNToRaw_preMul.io_toPostMul_doSubMags, %mulAddRecFNToRaw_preMul.io_toPostMul_CIsDominant, %mulAddRecFNToRaw_preMul.io_toPostMul_CDom_CAlignDist, %mulAddRecFNToRaw_preMul.io_toPostMul_highAlignedSigC, %mulAddRecFNToRaw_preMul.io_toPostMul_bit0AlignedSigC = hw.instance "mulAddRecFNToRaw_preMul" @MulAddRecFNToRaw_preMul_e8_s24(io_op: %io_op: i2, io_a: %io_a: i33, io_b: %io_b: i33, io_c: %io_c: i33) -> (io_mulAddA: i24, io_mulAddB: i24, io_mulAddC: i48, io_toPostMul_isSigNaNAny: i1, io_toPostMul_isNaNAOrB: i1, io_toPostMul_isInfA: i1, io_toPostMul_isZeroA: i1, io_toPostMul_isInfB: i1, io_toPostMul_isZeroB: i1, io_toPostMul_signProd: i1, io_toPostMul_isNaNC: i1, io_toPostMul_isInfC: i1, io_toPostMul_isZeroC: i1, io_toPostMul_sExpSum: i10, io_toPostMul_doSubMags: i1, io_toPostMul_CIsDominant: i1, io_toPostMul_CDom_CAlignDist: i5, io_toPostMul_highAlignedSigC: i26, io_toPostMul_bit0AlignedSigC: i1) {sv.namehint = "mulAddRecFNToRaw_preMul.io_mulAddC"}
    %mulAddRecFNToRaw_postMul.io_invalidExc, %mulAddRecFNToRaw_postMul.io_rawOut_isNaN, %mulAddRecFNToRaw_postMul.io_rawOut_isInf, %mulAddRecFNToRaw_postMul.io_rawOut_isZero, %mulAddRecFNToRaw_postMul.io_rawOut_sign, %mulAddRecFNToRaw_postMul.io_rawOut_sExp, %mulAddRecFNToRaw_postMul.io_rawOut_sig = hw.instance "mulAddRecFNToRaw_postMul" @MulAddRecFNToRaw_postMul_e8_s24(io_fromPreMul_isSigNaNAny: %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isSigNaNAny: i1, io_fromPreMul_isNaNAOrB: %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isNaNAOrB: i1, io_fromPreMul_isInfA: %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isInfA: i1, io_fromPreMul_isZeroA: %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isZeroA: i1, io_fromPreMul_isInfB: %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isInfB: i1, io_fromPreMul_isZeroB: %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isZeroB: i1, io_fromPreMul_signProd: %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_signProd: i1, io_fromPreMul_isNaNC: %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isNaNC: i1, io_fromPreMul_isInfC: %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isInfC: i1, io_fromPreMul_isZeroC: %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isZeroC: i1, io_fromPreMul_sExpSum: %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_sExpSum: i10, io_fromPreMul_doSubMags: %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_doSubMags: i1, io_fromPreMul_CIsDominant: %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_CIsDominant: i1, io_fromPreMul_CDom_CAlignDist: %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_CDom_CAlignDist: i5, io_fromPreMul_highAlignedSigC: %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_highAlignedSigC: i26, io_fromPreMul_bit0AlignedSigC: %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_bit0AlignedSigC: i1, io_mulAddResult: %mulAddRecFNToRaw_postMul_io_mulAddResult_pipe_b: i49, io_roundingMode: %mulAddRecFNToRaw_postMul_io_roundingMode_pipe_b: i3) -> (io_invalidExc: i1, io_rawOut_isNaN: i1, io_rawOut_isInf: i1, io_rawOut_isZero: i1, io_rawOut_sign: i1, io_rawOut_sExp: i10, io_rawOut_sig: i27) {sv.namehint = "mulAddRecFNToRaw_postMul.io_invalidExc"}
    %0 = comb.concat %c0_i24, %mulAddRecFNToRaw_preMul.io_mulAddA : i24, i24
    %1 = comb.concat %c0_i24, %mulAddRecFNToRaw_preMul.io_mulAddB : i24, i24
    %2 = comb.mul bin %0, %1 {sv.namehint = "_mulAddResult_T"} : i48
    %3 = comb.concat %false, %2 : i1, i48
    %4 = comb.concat %false, %mulAddRecFNToRaw_preMul.io_mulAddC : i1, i48
    %5 = comb.add bin %3, %4 {sv.namehint = "mulAddResult"} : i49
    %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isSigNaNAny = seq.firreg %6 clock %clock {firrtl.random_init_start = 1 : ui64, sv.namehint = "mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isSigNaNAny"} : i1
    %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isNaNAOrB = seq.firreg %7 clock %clock {firrtl.random_init_start = 2 : ui64, sv.namehint = "mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isNaNAOrB"} : i1
    %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isInfA = seq.firreg %8 clock %clock {firrtl.random_init_start = 3 : ui64, sv.namehint = "mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isInfA"} : i1
    %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isZeroA = seq.firreg %9 clock %clock {firrtl.random_init_start = 4 : ui64, sv.namehint = "mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isZeroA"} : i1
    %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isInfB = seq.firreg %10 clock %clock {firrtl.random_init_start = 5 : ui64, sv.namehint = "mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isInfB"} : i1
    %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isZeroB = seq.firreg %11 clock %clock {firrtl.random_init_start = 6 : ui64, sv.namehint = "mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isZeroB"} : i1
    %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_signProd = seq.firreg %12 clock %clock {firrtl.random_init_start = 7 : ui64, sv.namehint = "mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_signProd"} : i1
    %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isNaNC = seq.firreg %13 clock %clock {firrtl.random_init_start = 8 : ui64, sv.namehint = "mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isNaNC"} : i1
    %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isInfC = seq.firreg %14 clock %clock {firrtl.random_init_start = 9 : ui64, sv.namehint = "mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isInfC"} : i1
    %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isZeroC = seq.firreg %15 clock %clock {firrtl.random_init_start = 10 : ui64, sv.namehint = "mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isZeroC"} : i1
    %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_sExpSum = seq.firreg %16 clock %clock {firrtl.random_init_start = 11 : ui64, sv.namehint = "mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_sExpSum"} : i10
    %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_doSubMags = seq.firreg %17 clock %clock {firrtl.random_init_start = 21 : ui64, sv.namehint = "mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_doSubMags"} : i1
    %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_CIsDominant = seq.firreg %18 clock %clock {firrtl.random_init_start = 22 : ui64, sv.namehint = "mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_CIsDominant"} : i1
    %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_CDom_CAlignDist = seq.firreg %19 clock %clock {firrtl.random_init_start = 23 : ui64, sv.namehint = "mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_CDom_CAlignDist"} : i5
    %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_highAlignedSigC = seq.firreg %20 clock %clock {firrtl.random_init_start = 28 : ui64, sv.namehint = "mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_highAlignedSigC"} : i26
    %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_bit0AlignedSigC = seq.firreg %21 clock %clock {firrtl.random_init_start = 54 : ui64, sv.namehint = "mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_bit0AlignedSigC"} : i1
    %6 = comb.mux bin %io_validin, %mulAddRecFNToRaw_preMul.io_toPostMul_isSigNaNAny, %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isSigNaNAny : i1
    %7 = comb.mux bin %io_validin, %mulAddRecFNToRaw_preMul.io_toPostMul_isNaNAOrB, %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isNaNAOrB : i1
    %8 = comb.mux bin %io_validin, %mulAddRecFNToRaw_preMul.io_toPostMul_isInfA, %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isInfA : i1
    %9 = comb.mux bin %io_validin, %mulAddRecFNToRaw_preMul.io_toPostMul_isZeroA, %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isZeroA : i1
    %10 = comb.mux bin %io_validin, %mulAddRecFNToRaw_preMul.io_toPostMul_isInfB, %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isInfB : i1
    %11 = comb.mux bin %io_validin, %mulAddRecFNToRaw_preMul.io_toPostMul_isZeroB, %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isZeroB : i1
    %12 = comb.mux bin %io_validin, %mulAddRecFNToRaw_preMul.io_toPostMul_signProd, %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_signProd : i1
    %13 = comb.mux bin %io_validin, %mulAddRecFNToRaw_preMul.io_toPostMul_isNaNC, %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isNaNC : i1
    %14 = comb.mux bin %io_validin, %mulAddRecFNToRaw_preMul.io_toPostMul_isInfC, %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isInfC : i1
    %15 = comb.mux bin %io_validin, %mulAddRecFNToRaw_preMul.io_toPostMul_isZeroC, %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_isZeroC : i1
    %16 = comb.mux bin %io_validin, %mulAddRecFNToRaw_preMul.io_toPostMul_sExpSum, %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_sExpSum : i10
    %17 = comb.mux bin %io_validin, %mulAddRecFNToRaw_preMul.io_toPostMul_doSubMags, %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_doSubMags : i1
    %18 = comb.mux bin %io_validin, %mulAddRecFNToRaw_preMul.io_toPostMul_CIsDominant, %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_CIsDominant : i1
    %19 = comb.mux bin %io_validin, %mulAddRecFNToRaw_preMul.io_toPostMul_CDom_CAlignDist, %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_CDom_CAlignDist : i5
    %20 = comb.mux bin %io_validin, %mulAddRecFNToRaw_preMul.io_toPostMul_highAlignedSigC, %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_highAlignedSigC : i26
    %21 = comb.mux bin %io_validin, %mulAddRecFNToRaw_preMul.io_toPostMul_bit0AlignedSigC, %mulAddRecFNToRaw_postMul_io_fromPreMul_pipe_b_bit0AlignedSigC : i1
    %mulAddRecFNToRaw_postMul_io_mulAddResult_pipe_b = seq.firreg %22 clock %clock {firrtl.random_init_start = 56 : ui64, sv.namehint = "mulAddRecFNToRaw_postMul_io_mulAddResult_pipe_b"} : i49
    %22 = comb.mux bin %io_validin, %5, %mulAddRecFNToRaw_postMul_io_mulAddResult_pipe_b : i49
    %mulAddRecFNToRaw_postMul_io_roundingMode_pipe_b = seq.firreg %23 clock %clock {firrtl.random_init_start = 106 : ui64, sv.namehint = "mulAddRecFNToRaw_postMul_io_roundingMode_pipe_b"} : i3
    %23 = comb.mux bin %io_validin, %io_roundingMode, %mulAddRecFNToRaw_postMul_io_roundingMode_pipe_b : i3
    %roundingMode_stage0_pipe_b = seq.firreg %24 clock %clock {firrtl.random_init_start = 110 : ui64, sv.namehint = "roundingMode_stage0_pipe_b"} : i3
    %24 = comb.mux bin %io_validin, %io_roundingMode, %roundingMode_stage0_pipe_b : i3
    %valid_stage0_pipe_v = seq.firreg %io_validin clock %clock reset sync %reset, %false {firrtl.random_init_start = 115 : ui64, sv.namehint = "valid_stage0_pipe_v"} : i1
    %roundRawFNToRecFN.io_out, %roundRawFNToRecFN.io_exceptionFlags = hw.instance "roundRawFNToRecFN" @RoundRawFNToRecFN_e8_s24(io_invalidExc: %roundRawFNToRecFN_io_invalidExc_pipe_b: i1, io_in_isNaN: %roundRawFNToRecFN_io_in_pipe_b_isNaN: i1, io_in_isInf: %roundRawFNToRecFN_io_in_pipe_b_isInf: i1, io_in_isZero: %roundRawFNToRecFN_io_in_pipe_b_isZero: i1, io_in_sign: %roundRawFNToRecFN_io_in_pipe_b_sign: i1, io_in_sExp: %roundRawFNToRecFN_io_in_pipe_b_sExp: i10, io_in_sig: %roundRawFNToRecFN_io_in_pipe_b_sig: i27, io_roundingMode: %roundRawFNToRecFN_io_roundingMode_pipe_b: i3) -> (io_out: i33, io_exceptionFlags: i5) {sv.namehint = "roundRawFNToRecFN.io_out"}
    %roundRawFNToRecFN_io_invalidExc_pipe_b = seq.firreg %25 clock %clock {firrtl.random_init_start = 118 : ui64, sv.namehint = "roundRawFNToRecFN_io_invalidExc_pipe_b"} : i1
    %25 = comb.mux bin %valid_stage0_pipe_v, %mulAddRecFNToRaw_postMul.io_invalidExc, %roundRawFNToRecFN_io_invalidExc_pipe_b : i1
    %roundRawFNToRecFN_io_in_pipe_b_isNaN = seq.firreg %26 clock %clock {firrtl.random_init_start = 120 : ui64, sv.namehint = "roundRawFNToRecFN_io_in_pipe_b_isNaN"} : i1
    %roundRawFNToRecFN_io_in_pipe_b_isInf = seq.firreg %27 clock %clock {firrtl.random_init_start = 121 : ui64, sv.namehint = "roundRawFNToRecFN_io_in_pipe_b_isInf"} : i1
    %roundRawFNToRecFN_io_in_pipe_b_isZero = seq.firreg %28 clock %clock {firrtl.random_init_start = 122 : ui64, sv.namehint = "roundRawFNToRecFN_io_in_pipe_b_isZero"} : i1
    %roundRawFNToRecFN_io_in_pipe_b_sign = seq.firreg %29 clock %clock {firrtl.random_init_start = 123 : ui64, sv.namehint = "roundRawFNToRecFN_io_in_pipe_b_sign"} : i1
    %roundRawFNToRecFN_io_in_pipe_b_sExp = seq.firreg %30 clock %clock {firrtl.random_init_start = 124 : ui64, sv.namehint = "roundRawFNToRecFN_io_in_pipe_b_sExp"} : i10
    %roundRawFNToRecFN_io_in_pipe_b_sig = seq.firreg %31 clock %clock {firrtl.random_init_start = 134 : ui64, sv.namehint = "roundRawFNToRecFN_io_in_pipe_b_sig"} : i27
    %26 = comb.mux bin %valid_stage0_pipe_v, %mulAddRecFNToRaw_postMul.io_rawOut_isNaN, %roundRawFNToRecFN_io_in_pipe_b_isNaN : i1
    %27 = comb.mux bin %valid_stage0_pipe_v, %mulAddRecFNToRaw_postMul.io_rawOut_isInf, %roundRawFNToRecFN_io_in_pipe_b_isInf : i1
    %28 = comb.mux bin %valid_stage0_pipe_v, %mulAddRecFNToRaw_postMul.io_rawOut_isZero, %roundRawFNToRecFN_io_in_pipe_b_isZero : i1
    %29 = comb.mux bin %valid_stage0_pipe_v, %mulAddRecFNToRaw_postMul.io_rawOut_sign, %roundRawFNToRecFN_io_in_pipe_b_sign : i1
    %30 = comb.mux bin %valid_stage0_pipe_v, %mulAddRecFNToRaw_postMul.io_rawOut_sExp, %roundRawFNToRecFN_io_in_pipe_b_sExp : i10
    %31 = comb.mux bin %valid_stage0_pipe_v, %mulAddRecFNToRaw_postMul.io_rawOut_sig, %roundRawFNToRecFN_io_in_pipe_b_sig : i27
    %roundRawFNToRecFN_io_roundingMode_pipe_b = seq.firreg %32 clock %clock {firrtl.random_init_start = 162 : ui64, sv.namehint = "roundRawFNToRecFN_io_roundingMode_pipe_b"} : i3
    %32 = comb.mux bin %valid_stage0_pipe_v, %roundingMode_stage0_pipe_b, %roundRawFNToRecFN_io_roundingMode_pipe_b : i3
    %io_validout_pipe_v = seq.firreg %valid_stage0_pipe_v clock %clock reset sync %reset, %false {firrtl.random_init_start = 167 : ui64, sv.namehint = "io_validout_pipe_v"} : i1
    hw.output %roundRawFNToRecFN.io_out, %roundRawFNToRecFN.io_exceptionFlags, %io_validout_pipe_v : i33, i5, i1
  }
  hw.module private @FPUFMAPipe_l4_f32(in %clock : !seq.clock, in %reset : i1, in %io_in_valid : i1, in %io_in_bits_ren3 : i1, in %io_in_bits_swap23 : i1, in %io_in_bits_rm : i3, in %io_in_bits_fmaCmd : i2, in %io_in_bits_in1 : i65, in %io_in_bits_in2 : i65, in %io_in_bits_in3 : i65, out io_out_valid : i1, out io_out_bits_data : i65, out io_out_bits_exc : i5) {
    %c0_i32 = hw.constant 0 : i32
    %c-4294967296_i33 = hw.constant -4294967296 : i33
    %c2147483648_i65 = hw.constant 2147483648 : i65
    %false = hw.constant false
    %valid = seq.firreg %io_in_valid clock %clock {firrtl.random_init_start = 0 : ui64, sv.namehint = "valid"} : i1
    %in_rm = seq.firreg %5 clock %clock {firrtl.random_init_start = 20 : ui64, sv.namehint = "in_rm"} : i3
    %in_fmaCmd = seq.firreg %6 clock %clock {firrtl.random_init_start = 23 : ui64, sv.namehint = "fma.io_op"} : i2
    %in_in1 = seq.firreg %7 clock %clock {firrtl.random_init_start = 29 : ui64} : i65
    %in_in2 = seq.firreg %9 clock %clock {firrtl.random_init_start = 94 : ui64} : i65
    %in_in3 = seq.firreg %12 clock %clock {firrtl.random_init_start = 159 : ui64} : i65
    %0 = comb.extract %io_in_bits_in1 from 0 : (i65) -> i33
    %1 = comb.extract %io_in_bits_in2 from 0 : (i65) -> i33
    %2 = comb.xor bin %0, %1 {sv.namehint = "_zero_T"} : i33
    %3 = comb.and bin %2, %c-4294967296_i33 : i33
    %4 = comb.concat %c0_i32, %3 : i32, i33
    %5 = comb.mux bin %io_in_valid, %io_in_bits_rm, %in_rm : i3
    %6 = comb.mux bin %io_in_valid, %io_in_bits_fmaCmd, %in_fmaCmd : i2
    %7 = comb.mux bin %io_in_valid, %io_in_bits_in1, %in_in1 : i65
    %8 = comb.mux bin %io_in_bits_swap23, %c2147483648_i65, %io_in_bits_in2 : i65
    %9 = comb.mux bin %io_in_valid, %8, %in_in2 : i65
    %10 = comb.or bin %io_in_bits_ren3, %io_in_bits_swap23 : i1
    %11 = comb.mux bin %10, %io_in_bits_in3, %4 : i65
    %12 = comb.mux bin %io_in_valid, %11, %in_in3 : i65
    %fma.io_out, %fma.io_exceptionFlags, %fma.io_validout = hw.instance "fma" @MulAddRecFNPipe_l2_e8_s24(clock: %clock: !seq.clock, reset: %reset: i1, io_validin: %valid: i1, io_op: %in_fmaCmd: i2, io_a: %13: i33, io_b: %14: i33, io_c: %15: i33, io_roundingMode: %in_rm: i3) -> (io_out: i33, io_exceptionFlags: i5, io_validout: i1) {sv.namehint = "res_exc"}
    %13 = comb.extract %in_in1 from 0 {sv.namehint = "fma.io_a"} : (i65) -> i33
    %14 = comb.extract %in_in2 from 0 {sv.namehint = "fma.io_b"} : (i65) -> i33
    %15 = comb.extract %in_in3 from 0 {sv.namehint = "fma.io_c"} : (i65) -> i33
    %16 = comb.concat %c0_i32, %fma.io_out {sv.namehint = "res_data"} : i32, i33
    %io_out_pipe_v = seq.firreg %fma.io_validout clock %clock reset sync %reset, %false {firrtl.random_init_start = 224 : ui64, sv.namehint = "io_out_pipe_v"} : i1
    %io_out_pipe_b_data = seq.firreg %17 clock %clock {firrtl.random_init_start = 225 : ui64, sv.namehint = "io_out_pipe_b_data"} : i65
    %io_out_pipe_b_exc = seq.firreg %18 clock %clock {firrtl.random_init_start = 290 : ui64, sv.namehint = "io_out_pipe_b_exc"} : i5
    %17 = comb.mux bin %fma.io_validout, %16, %io_out_pipe_b_data : i65
    %18 = comb.mux bin %fma.io_validout, %fma.io_exceptionFlags, %io_out_pipe_b_exc : i5
    hw.output %io_out_pipe_v, %io_out_pipe_b_data, %io_out_pipe_b_exc : i1, i65, i5
  }
  hw.module private @CompareRecFN(in %io_a : i65, in %io_b : i65, in %io_signaling : i1, out io_lt : i1, out io_eq : i1, out io_exceptionFlags : i5) {
    %c-1_i2 = hw.constant -1 : i2
    %true = hw.constant true
    %c0_i3 = hw.constant 0 : i3
    %false = hw.constant false
    %c0_i4 = hw.constant 0 : i4
    %0 = comb.extract %io_a from 52 {sv.namehint = "rawA_exp"} : (i65) -> i12
    %1 = comb.extract %io_a from 61 {sv.namehint = "_rawA_isZero_T"} : (i65) -> i3
    %2 = comb.icmp bin ne %1, %c0_i3 {sv.namehint = "_rawA_out_sig_T"} : i3
    %3 = comb.xor bin %2, %true {sv.namehint = "rawA_isZero"} : i1
    %4 = comb.extract %io_a from 62 {sv.namehint = "_rawA_isSpecial_T"} : (i65) -> i2
    %5 = comb.icmp bin eq %4, %c-1_i2 {sv.namehint = "rawA_isSpecial"} : i2
    %6 = comb.extract %io_a from 61 {sv.namehint = "_rawA_out_isInf_T"} : (i65) -> i1
    %7 = comb.and bin %5, %6 {sv.namehint = "rawA_isNaN"} : i1
    %8 = comb.xor bin %6, %true {sv.namehint = "_rawA_out_isInf_T_1"} : i1
    %9 = comb.extract %io_a from 64 {sv.namehint = "rawA_sign"} : (i65) -> i1
    %10 = comb.concat %false, %0 {sv.namehint = "rawA_sExp"} : i1, i12
    %11 = comb.extract %io_a from 0 {sv.namehint = "_rawA_out_sig_T_2"} : (i65) -> i52
    %12 = comb.extract %io_b from 52 {sv.namehint = "rawB_exp"} : (i65) -> i12
    %13 = comb.extract %io_b from 61 {sv.namehint = "_rawB_isZero_T"} : (i65) -> i3
    %14 = comb.icmp bin ne %13, %c0_i3 {sv.namehint = "_rawB_out_sig_T"} : i3
    %15 = comb.xor bin %14, %true {sv.namehint = "rawB_isZero"} : i1
    %16 = comb.extract %io_b from 62 {sv.namehint = "_rawB_isSpecial_T"} : (i65) -> i2
    %17 = comb.icmp bin eq %16, %c-1_i2 {sv.namehint = "rawB_isSpecial"} : i2
    %18 = comb.extract %io_b from 61 {sv.namehint = "_rawB_out_isInf_T"} : (i65) -> i1
    %19 = comb.and bin %17, %18 {sv.namehint = "rawB_isNaN"} : i1
    %20 = comb.xor bin %18, %true {sv.namehint = "_rawB_out_isInf_T_1"} : i1
    %21 = comb.extract %io_b from 64 {sv.namehint = "rawB_sign"} : (i65) -> i1
    %22 = comb.concat %false, %12 {sv.namehint = "rawB_sExp"} : i1, i12
    %23 = comb.extract %io_b from 0 {sv.namehint = "_rawB_out_sig_T_2"} : (i65) -> i52
    %24 = comb.xor bin %7, %true {sv.namehint = "_ordered_T"} : i1
    %25 = comb.xor bin %19, %true {sv.namehint = "_ordered_T_1"} : i1
    %26 = comb.and bin %24, %25 {sv.namehint = "ordered"} : i1
    %27 = comb.and bin %5, %8, %17, %20 {sv.namehint = "bothInfs"} : i1
    %28 = comb.and bin %3, %15 {sv.namehint = "bothZeros"} : i1
    %29 = comb.icmp bin eq %0, %12 {sv.namehint = "eqExps"} : i12
    %30 = comb.icmp bin slt %10, %22 {sv.namehint = "_common_ltMags_T"} : i13
    %31 = comb.concat %2, %11 : i1, i52
    %32 = comb.concat %14, %23 : i1, i52
    %33 = comb.icmp bin ult %31, %32 {sv.namehint = "_common_ltMags_T_1"} : i53
    %34 = comb.and bin %29, %33 {sv.namehint = "_common_ltMags_T_2"} : i1
    %35 = comb.or bin %30, %34 {sv.namehint = "common_ltMags"} : i1
    %36 = comb.concat %2, %11 : i1, i52
    %37 = comb.concat %14, %23 : i1, i52
    %38 = comb.icmp bin eq %36, %37 {sv.namehint = "_common_eqMags_T"} : i53
    %39 = comb.and bin %29, %38 {sv.namehint = "common_eqMags"} : i1
    %40 = comb.xor bin %28, %true {sv.namehint = "_ordered_lt_T"} : i1
    %41 = comb.xor bin %21, %true {sv.namehint = "_ordered_lt_T_8"} : i1
    %42 = comb.and bin %9, %41 {sv.namehint = "_ordered_lt_T_2"} : i1
    %43 = comb.xor bin %27, %true {sv.namehint = "_ordered_lt_T_3"} : i1
    %44 = comb.xor bin %35, %true {sv.namehint = "_ordered_lt_T_4"} : i1
    %45 = comb.xor bin %39, %true {sv.namehint = "_ordered_lt_T_6"} : i1
    %46 = comb.and bin %9, %44, %45 {sv.namehint = "_ordered_lt_T_7"} : i1
    %47 = comb.and bin %41, %35 {sv.namehint = "_ordered_lt_T_9"} : i1
    %48 = comb.or bin %46, %47 {sv.namehint = "_ordered_lt_T_10"} : i1
    %49 = comb.and bin %43, %48 {sv.namehint = "_ordered_lt_T_11"} : i1
    %50 = comb.or bin %42, %49 {sv.namehint = "_ordered_lt_T_12"} : i1
    %51 = comb.icmp bin eq %9, %21 {sv.namehint = "_ordered_eq_T"} : i1
    %52 = comb.or bin %27, %39 {sv.namehint = "_ordered_eq_T_1"} : i1
    %53 = comb.and bin %51, %52 {sv.namehint = "_ordered_eq_T_2"} : i1
    %54 = comb.or bin %28, %53 {sv.namehint = "ordered_eq"} : i1
    %55 = comb.extract %io_a from 51 {sv.namehint = "_invalid_T"} : (i65) -> i1
    %56 = comb.xor bin %55, %true {sv.namehint = "_invalid_T_1"} : i1
    %57 = comb.and bin %7, %56 {sv.namehint = "_invalid_T_2"} : i1
    %58 = comb.extract %io_b from 51 {sv.namehint = "_invalid_T_3"} : (i65) -> i1
    %59 = comb.xor bin %58, %true {sv.namehint = "_invalid_T_4"} : i1
    %60 = comb.and bin %19, %59 {sv.namehint = "_invalid_T_5"} : i1
    %61 = comb.xor bin %26, %true {sv.namehint = "_invalid_T_7"} : i1
    %62 = comb.and bin %io_signaling, %61 {sv.namehint = "_invalid_T_8"} : i1
    %63 = comb.or bin %57, %60, %62 {sv.namehint = "invalid"} : i1
    %64 = comb.and bin %26, %40, %50 {sv.namehint = "io_lt"} : i1
    %65 = comb.and bin %26, %54 {sv.namehint = "io_eq"} : i1
    %66 = comb.concat %63, %c0_i4 {sv.namehint = "io_exceptionFlags"} : i1, i4
    hw.output %64, %65, %66 : i1, i1, i5
  }
  hw.module private @RecFNToIN_e11_s53_i64(in %io_in : i65, in %io_roundingMode : i3, in %io_signedOut : i1, out io_out : i64, out io_intExceptionFlags : i3) {
    %c0_i5 = hw.constant 0 : i5
    %c1_i64 = hw.constant 1 : i64
    %c62_i11 = hw.constant 62 : i11
    %c63_i11 = hw.constant 63 : i11
    %c-1_i62 = hw.constant -1 : i62
    %c0_i2 = hw.constant 0 : i2
    %c0_i51 = hw.constant 0 : i51
    %c0_i110 = hw.constant 0 : i110
    %c-1_i11 = hw.constant -1 : i11
    %c-1_i2 = hw.constant -1 : i2
    %c0_i3 = hw.constant 0 : i3
    %c2_i3 = hw.constant 2 : i3
    %c3_i3 = hw.constant 3 : i3
    %c-4_i3 = hw.constant -4 : i3
    %c-2_i3 = hw.constant -2 : i3
    %true = hw.constant true
    %c0_i6 = hw.constant 0 : i6
    %c0_i63 = hw.constant 0 : i63
    %0 = comb.extract %io_in from 61 {sv.namehint = "_rawIn_isZero_T"} : (i65) -> i3
    %1 = comb.icmp bin ne %0, %c0_i3 {sv.namehint = "_rawIn_out_sig_T"} : i3
    %2 = comb.extract %io_in from 62 {sv.namehint = "_rawIn_isSpecial_T"} : (i65) -> i2
    %3 = comb.icmp bin eq %2, %c-1_i2 {sv.namehint = "rawIn_isSpecial"} : i2
    %4 = comb.extract %io_in from 61 {sv.namehint = "_rawIn_out_isInf_T"} : (i65) -> i1
    %5 = comb.and bin %3, %4 {sv.namehint = "rawIn_isNaN"} : i1
    %6 = comb.xor bin %4, %true {sv.namehint = "_rawIn_out_isInf_T_1"} : i1
    %7 = comb.and bin %3, %6 {sv.namehint = "rawIn_isInf"} : i1
    %8 = comb.extract %io_in from 64 {sv.namehint = "rawIn_sign"} : (i65) -> i1
    %9 = comb.extract %io_in from 0 {sv.namehint = "_rawIn_out_sig_T_2"} : (i65) -> i52
    %10 = comb.extract %io_in from 63 {sv.namehint = "magGeOne"} : (i65) -> i1
    %11 = comb.extract %io_in from 52 {sv.namehint = "posExp"} : (i65) -> i11
    %12 = comb.xor bin %10, %true {sv.namehint = "_magJustBelowOne_T"} : i1
    %13 = comb.icmp bin eq %11, %c-1_i11 {sv.namehint = "_magJustBelowOne_T_1"} : i11
    %14 = comb.and bin %12, %13 {sv.namehint = "magJustBelowOne"} : i1
    %15 = comb.icmp bin eq %io_roundingMode, %c0_i3 {sv.namehint = "roundingMode_near_even"} : i3
    %16 = comb.icmp bin eq %io_roundingMode, %c2_i3 {sv.namehint = "roundingMode_min"} : i3
    %17 = comb.icmp bin eq %io_roundingMode, %c3_i3 {sv.namehint = "roundingMode_max"} : i3
    %18 = comb.icmp bin eq %io_roundingMode, %c-4_i3 {sv.namehint = "roundingMode_near_maxMag"} : i3
    %19 = comb.icmp bin eq %io_roundingMode, %c-2_i3 {sv.namehint = "roundingMode_odd"} : i3
    %20 = comb.extract %io_in from 52 {sv.namehint = "_shiftedSig_T_2"} : (i65) -> i6
    %21 = comb.mux bin %10, %20, %c0_i6 {sv.namehint = "_shiftedSig_T_3"} : i6
    %22 = comb.concat %c0_i63, %10, %9 : i63, i1, i52
    %23 = comb.concat %c0_i110, %21 : i110, i6
    %24 = comb.shl bin %22, %23 {sv.namehint = "shiftedSig"} : i116
    %25 = comb.extract %24 from 0 {sv.namehint = "_alignedSig_T_1"} : (i116) -> i51
    %26 = comb.icmp bin ne %25, %c0_i51 {sv.namehint = "_alignedSig_T_2"} : i51
    %27 = comb.extract %24 from 52 {sv.namehint = "unroundedInt"} : (i116) -> i64
    %28 = comb.extract %24 from 51 : (i116) -> i1
    %29 = comb.concat %28, %26 {sv.namehint = "_roundIncr_near_even_T_6"} : i1, i1
    %30 = comb.icmp bin ne %29, %c0_i2 {sv.namehint = "_common_inexact_T_1"} : i2
    %31 = comb.mux bin %10, %30, %1 {sv.namehint = "common_inexact"} : i1
    %32 = comb.extract %24 from 51 {sv.namehint = "_roundIncr_near_even_T"} : (i116) -> i2
    %33 = comb.icmp bin eq %32, %c-1_i2 {sv.namehint = "_roundIncr_near_even_T_1"} : i2
    %34 = comb.icmp bin eq %29, %c-1_i2 {sv.namehint = "_roundIncr_near_even_T_3"} : i2
    %35 = comb.or bin %33, %34 {sv.namehint = "_roundIncr_near_even_T_4"} : i1
    %36 = comb.and bin %10, %35 {sv.namehint = "_roundIncr_near_even_T_5"} : i1
    %37 = comb.icmp bin ne %29, %c0_i2 {sv.namehint = "_roundIncr_near_even_T_7"} : i2
    %38 = comb.and bin %14, %37 {sv.namehint = "_roundIncr_near_even_T_8"} : i1
    %39 = comb.or bin %36, %38 {sv.namehint = "roundIncr_near_even"} : i1
    %40 = comb.extract %24 from 51 {sv.namehint = "_roundIncr_near_maxMag_T"} : (i116) -> i1
    %41 = comb.and bin %10, %40 {sv.namehint = "_roundIncr_near_maxMag_T_1"} : i1
    %42 = comb.or bin %41, %14 {sv.namehint = "roundIncr_near_maxMag"} : i1
    %43 = comb.and bin %15, %39 {sv.namehint = "_roundIncr_T"} : i1
    %44 = comb.and bin %18, %42 {sv.namehint = "_roundIncr_T_1"} : i1
    %45 = comb.or bin %16, %19 {sv.namehint = "_roundIncr_T_3"} : i1
    %46 = comb.and bin %45, %8, %31 {sv.namehint = "_roundIncr_T_5"} : i1
    %47 = comb.xor bin %8, %true {sv.namehint = "_roundIncr_T_7"} : i1
    %48 = comb.and bin %17, %47, %31 {sv.namehint = "_roundIncr_T_9"} : i1
    %49 = comb.or bin %43, %44, %46, %48 {sv.namehint = "roundIncr"} : i1
    %50 = comb.replicate %8 : (i1) -> i64
    %51 = comb.xor %50, %27 {sv.namehint = "complUnroundedInt"} : i64
    %52 = comb.xor bin %49, %8 {sv.namehint = "_roundedInt_T"} : i1
    %53 = comb.add bin %51, %c1_i64 {sv.namehint = "_roundedInt_T_1"} : i64
    %54 = comb.mux bin %52, %53, %51 {sv.namehint = "_roundedInt_T_3"} : i64
    %55 = comb.and bin %19, %31 {sv.namehint = "_roundedInt_T_4"} : i1
    %56 = comb.extract %54 from 1 : (i64) -> i63
    %57 = comb.extract %54 from 0 : (i64) -> i1
    %58 = comb.or bin %57, %55 : i1
    %59 = comb.concat %56, %58 {sv.namehint = "roundedInt"} : i63, i1
    %60 = comb.icmp bin eq %11, %c63_i11 {sv.namehint = "magGeOne_atOverflowEdge"} : i11
    %61 = comb.extract %24 from 52 {sv.namehint = "_roundCarryBut2_T"} : (i116) -> i62
    %62 = comb.icmp bin eq %61, %c-1_i62 {sv.namehint = "_roundCarryBut2_T_1"} : i62
    %63 = comb.and bin %62, %49 {sv.namehint = "roundCarryBut2"} : i1
    %64 = comb.extract %io_in from 58 : (i65) -> i5
    %65 = comb.icmp bin ne %64, %c0_i5 {sv.namehint = "_common_overflow_T"} : i5
    %66 = comb.extract %24 from 52 {sv.namehint = "_common_overflow_T_1"} : (i116) -> i63
    %67 = comb.icmp bin ne %66, %c0_i63 {sv.namehint = "_common_overflow_T_2"} : i63
    %68 = comb.or bin %67, %49 {sv.namehint = "_common_overflow_T_3"} : i1
    %69 = comb.and bin %60, %68 {sv.namehint = "_common_overflow_T_4"} : i1
    %70 = comb.icmp bin eq %11, %c62_i11 {sv.namehint = "_common_overflow_T_5"} : i11
    %71 = comb.and bin %70, %63 {sv.namehint = "_common_overflow_T_6"} : i1
    %72 = comb.or bin %60, %71 {sv.namehint = "_common_overflow_T_7"} : i1
    %73 = comb.mux bin %8, %69, %72 {sv.namehint = "_common_overflow_T_8"} : i1
    %74 = comb.extract %24 from 114 {sv.namehint = "_common_overflow_T_9"} : (i116) -> i1
    %75 = comb.and bin %60, %74, %63 {sv.namehint = "_common_overflow_T_11"} : i1
    %76 = comb.or bin %8, %75 {sv.namehint = "_common_overflow_T_12"} : i1
    %77 = comb.mux bin %io_signedOut, %73, %76 {sv.namehint = "_common_overflow_T_13"} : i1
    %78 = comb.or bin %65, %77 {sv.namehint = "_common_overflow_T_14"} : i1
    %79 = comb.xor bin %io_signedOut, %true {sv.namehint = "_common_overflow_T_15"} : i1
    %80 = comb.and bin %79, %8, %49 {sv.namehint = "_common_overflow_T_17"} : i1
    %81 = comb.mux bin %10, %78, %80 {sv.namehint = "common_overflow"} : i1
    %82 = comb.or bin %5, %7 {sv.namehint = "invalidExc"} : i1
    %83 = comb.xor bin %82, %true {sv.namehint = "_inexact_T"} : i1
    %84 = comb.and bin %83, %81 {sv.namehint = "overflow"} : i1
    %85 = comb.xor bin %81, %true {sv.namehint = "_inexact_T_1"} : i1
    %86 = comb.and bin %83, %85, %31 {sv.namehint = "inexact"} : i1
    %87 = comb.xor bin %5, %true {sv.namehint = "_excSign_T"} : i1
    %88 = comb.and bin %87, %8 {sv.namehint = "excSign"} : i1
    %89 = comb.icmp bin eq %io_signedOut, %88 {sv.namehint = "_excOut_T"} : i1
    %90 = comb.xor bin %88, %true {sv.namehint = "_excOut_T_2"} : i1
    %91 = comb.replicate %90 {sv.namehint = "_excOut_T_3"} : (i1) -> i63
    %92 = comb.concat %89, %91 {sv.namehint = "excOut"} : i1, i63
    %93 = comb.or bin %82, %81 {sv.namehint = "_io_out_T"} : i1
    %94 = comb.mux bin %93, %92, %59 {sv.namehint = "io_out"} : i64
    %95 = comb.concat %82, %84, %86 {sv.namehint = "io_intExceptionFlags"} : i1, i1, i1
    hw.output %94, %95 : i64, i3
  }
  hw.module private @RecFNToIN_e11_s53_i32(in %io_in : i65, in %io_roundingMode : i3, in %io_signedOut : i1, out io_intExceptionFlags : i3) {
    %c0_i6 = hw.constant 0 : i6
    %c30_i11 = hw.constant 30 : i11
    %c31_i11 = hw.constant 31 : i11
    %c-1_i30 = hw.constant -1 : i30
    %c0_i2 = hw.constant 0 : i2
    %c0_i51 = hw.constant 0 : i51
    %c0_i79 = hw.constant 0 : i79
    %c0_i31 = hw.constant 0 : i31
    %c-1_i11 = hw.constant -1 : i11
    %c-1_i2 = hw.constant -1 : i2
    %true = hw.constant true
    %c0_i3 = hw.constant 0 : i3
    %c2_i3 = hw.constant 2 : i3
    %c3_i3 = hw.constant 3 : i3
    %c-4_i3 = hw.constant -4 : i3
    %c-2_i3 = hw.constant -2 : i3
    %c0_i5 = hw.constant 0 : i5
    %0 = comb.extract %io_in from 61 {sv.namehint = "_rawIn_isZero_T"} : (i65) -> i3
    %1 = comb.icmp bin ne %0, %c0_i3 {sv.namehint = "_rawIn_out_sig_T"} : i3
    %2 = comb.extract %io_in from 62 {sv.namehint = "_rawIn_isSpecial_T"} : (i65) -> i2
    %3 = comb.icmp bin eq %2, %c-1_i2 {sv.namehint = "rawIn_isSpecial"} : i2
    %4 = comb.extract %io_in from 61 {sv.namehint = "_rawIn_out_isInf_T"} : (i65) -> i1
    %5 = comb.and bin %3, %4 {sv.namehint = "rawIn_isNaN"} : i1
    %6 = comb.xor bin %4, %true {sv.namehint = "_rawIn_out_isInf_T_1"} : i1
    %7 = comb.and bin %3, %6 {sv.namehint = "rawIn_isInf"} : i1
    %8 = comb.extract %io_in from 64 {sv.namehint = "rawIn_sign"} : (i65) -> i1
    %9 = comb.extract %io_in from 0 {sv.namehint = "_rawIn_out_sig_T_2"} : (i65) -> i52
    %10 = comb.extract %io_in from 63 {sv.namehint = "magGeOne"} : (i65) -> i1
    %11 = comb.extract %io_in from 52 {sv.namehint = "posExp"} : (i65) -> i11
    %12 = comb.xor bin %10, %true {sv.namehint = "_magJustBelowOne_T"} : i1
    %13 = comb.icmp bin eq %11, %c-1_i11 {sv.namehint = "_magJustBelowOne_T_1"} : i11
    %14 = comb.and bin %12, %13 {sv.namehint = "magJustBelowOne"} : i1
    %15 = comb.icmp bin eq %io_roundingMode, %c0_i3 {sv.namehint = "roundingMode_near_even"} : i3
    %16 = comb.icmp bin eq %io_roundingMode, %c2_i3 {sv.namehint = "roundingMode_min"} : i3
    %17 = comb.icmp bin eq %io_roundingMode, %c3_i3 {sv.namehint = "roundingMode_max"} : i3
    %18 = comb.icmp bin eq %io_roundingMode, %c-4_i3 {sv.namehint = "roundingMode_near_maxMag"} : i3
    %19 = comb.icmp bin eq %io_roundingMode, %c-2_i3 {sv.namehint = "roundingMode_odd"} : i3
    %20 = comb.extract %io_in from 52 {sv.namehint = "_shiftedSig_T_2"} : (i65) -> i5
    %21 = comb.mux bin %10, %20, %c0_i5 {sv.namehint = "_shiftedSig_T_3"} : i5
    %22 = comb.concat %c0_i31, %10, %9 : i31, i1, i52
    %23 = comb.concat %c0_i79, %21 : i79, i5
    %24 = comb.shl bin %22, %23 {sv.namehint = "shiftedSig"} : i84
    %25 = comb.extract %24 from 0 {sv.namehint = "_alignedSig_T_1"} : (i84) -> i51
    %26 = comb.icmp bin ne %25, %c0_i51 {sv.namehint = "_alignedSig_T_2"} : i51
    %27 = comb.extract %24 from 51 : (i84) -> i1
    %28 = comb.concat %27, %26 {sv.namehint = "_roundIncr_near_even_T_6"} : i1, i1
    %29 = comb.icmp bin ne %28, %c0_i2 {sv.namehint = "_common_inexact_T_1"} : i2
    %30 = comb.mux bin %10, %29, %1 {sv.namehint = "common_inexact"} : i1
    %31 = comb.extract %24 from 51 {sv.namehint = "_roundIncr_near_even_T"} : (i84) -> i2
    %32 = comb.icmp bin eq %31, %c-1_i2 {sv.namehint = "_roundIncr_near_even_T_1"} : i2
    %33 = comb.icmp bin eq %28, %c-1_i2 {sv.namehint = "_roundIncr_near_even_T_3"} : i2
    %34 = comb.or bin %32, %33 {sv.namehint = "_roundIncr_near_even_T_4"} : i1
    %35 = comb.and bin %10, %34 {sv.namehint = "_roundIncr_near_even_T_5"} : i1
    %36 = comb.icmp bin ne %28, %c0_i2 {sv.namehint = "_roundIncr_near_even_T_7"} : i2
    %37 = comb.and bin %14, %36 {sv.namehint = "_roundIncr_near_even_T_8"} : i1
    %38 = comb.or bin %35, %37 {sv.namehint = "roundIncr_near_even"} : i1
    %39 = comb.extract %24 from 51 {sv.namehint = "_roundIncr_near_maxMag_T"} : (i84) -> i1
    %40 = comb.and bin %10, %39 {sv.namehint = "_roundIncr_near_maxMag_T_1"} : i1
    %41 = comb.or bin %40, %14 {sv.namehint = "roundIncr_near_maxMag"} : i1
    %42 = comb.and bin %15, %38 {sv.namehint = "_roundIncr_T"} : i1
    %43 = comb.and bin %18, %41 {sv.namehint = "_roundIncr_T_1"} : i1
    %44 = comb.or bin %16, %19 {sv.namehint = "_roundIncr_T_3"} : i1
    %45 = comb.and bin %44, %8, %30 {sv.namehint = "_roundIncr_T_5"} : i1
    %46 = comb.xor bin %8, %true {sv.namehint = "_roundIncr_T_7"} : i1
    %47 = comb.and bin %17, %46, %30 {sv.namehint = "_roundIncr_T_9"} : i1
    %48 = comb.or bin %42, %43, %45, %47 {sv.namehint = "roundIncr"} : i1
    %49 = comb.icmp bin eq %11, %c31_i11 {sv.namehint = "magGeOne_atOverflowEdge"} : i11
    %50 = comb.extract %24 from 52 {sv.namehint = "_roundCarryBut2_T"} : (i84) -> i30
    %51 = comb.icmp bin eq %50, %c-1_i30 {sv.namehint = "_roundCarryBut2_T_1"} : i30
    %52 = comb.and bin %51, %48 {sv.namehint = "roundCarryBut2"} : i1
    %53 = comb.extract %io_in from 57 : (i65) -> i6
    %54 = comb.icmp bin ne %53, %c0_i6 {sv.namehint = "_common_overflow_T"} : i6
    %55 = comb.extract %24 from 52 {sv.namehint = "_common_overflow_T_1"} : (i84) -> i31
    %56 = comb.icmp bin ne %55, %c0_i31 {sv.namehint = "_common_overflow_T_2"} : i31
    %57 = comb.or bin %56, %48 {sv.namehint = "_common_overflow_T_3"} : i1
    %58 = comb.and bin %49, %57 {sv.namehint = "_common_overflow_T_4"} : i1
    %59 = comb.icmp bin eq %11, %c30_i11 {sv.namehint = "_common_overflow_T_5"} : i11
    %60 = comb.and bin %59, %52 {sv.namehint = "_common_overflow_T_6"} : i1
    %61 = comb.or bin %49, %60 {sv.namehint = "_common_overflow_T_7"} : i1
    %62 = comb.mux bin %8, %58, %61 {sv.namehint = "_common_overflow_T_8"} : i1
    %63 = comb.extract %24 from 82 {sv.namehint = "_common_overflow_T_9"} : (i84) -> i1
    %64 = comb.and bin %49, %63, %52 {sv.namehint = "_common_overflow_T_11"} : i1
    %65 = comb.or bin %8, %64 {sv.namehint = "_common_overflow_T_12"} : i1
    %66 = comb.mux bin %io_signedOut, %62, %65 {sv.namehint = "_common_overflow_T_13"} : i1
    %67 = comb.or bin %54, %66 {sv.namehint = "_common_overflow_T_14"} : i1
    %68 = comb.xor bin %io_signedOut, %true {sv.namehint = "_common_overflow_T_15"} : i1
    %69 = comb.and bin %68, %8, %48 {sv.namehint = "_common_overflow_T_17"} : i1
    %70 = comb.mux bin %10, %67, %69 {sv.namehint = "common_overflow"} : i1
    %71 = comb.or bin %5, %7 {sv.namehint = "invalidExc"} : i1
    %72 = comb.xor bin %71, %true {sv.namehint = "_inexact_T"} : i1
    %73 = comb.and bin %72, %70 {sv.namehint = "overflow"} : i1
    %74 = comb.xor bin %70, %true {sv.namehint = "_inexact_T_1"} : i1
    %75 = comb.and bin %72, %74, %30 {sv.namehint = "inexact"} : i1
    %76 = comb.concat %71, %73, %75 {sv.namehint = "io_intExceptionFlags"} : i1, i1, i1
    hw.output %76 : i3
  }
  hw.module private @FPToInt(in %clock : !seq.clock, in %io_in_valid : i1, in %io_in_bits_ren2 : i1, in %io_in_bits_typeTagOut : i2, in %io_in_bits_wflags : i1, in %io_in_bits_rm : i3, in %io_in_bits_typ : i2, in %io_in_bits_fmt : i2, in %io_in_bits_in1 : i65, in %io_in_bits_in2 : i65, out io_out_bits_lt : i1, out io_out_bits_toint : i64, out io_out_bits_exc : i5) {
    %c-1_i65 = hw.constant -1 : i65
    %c0_i31 = hw.constant 0 : i31
    %c0_i22 = hw.constant 0 : i22
    %c0_i9 = hw.constant 0 : i9
    %c0_i6 = hw.constant 0 : i6
    %c-3_i3 = hw.constant -3 : i3
    %c-256_i9 = hw.constant -256 : i9
    %c1023_i11 = hw.constant 1023 : i11
    %c127_i8 = hw.constant 127 : i8
    %c1_i5 = hw.constant 1 : i5
    %c0_i32 = hw.constant 0 : i32
    %c1_i6 = hw.constant 1 : i6
    %c0_i65 = hw.constant 0 : i65
    %c2_i10 = hw.constant 2 : i10
    %c1_i2 = hw.constant 1 : i2
    %c1_i3 = hw.constant 1 : i3
    %c2_i7 = hw.constant 2 : i7
    %c130_i10 = hw.constant 130 : i10
    %c1026_i13 = hw.constant 1026 : i13
    %c0_i2 = hw.constant 0 : i2
    %c-1_i3 = hw.constant -1 : i3
    %c0_i19 = hw.constant 0 : i19
    %c0_i47 = hw.constant 0 : i47
    %c-1_i2 = hw.constant -1 : i2
    %true = hw.constant true
    %c0_i11 = hw.constant 0 : i11
    %c0_i8 = hw.constant 0 : i8
    %c-2_i2 = hw.constant -2 : i2
    %c0_i3 = hw.constant 0 : i3
    %c0_i52 = hw.constant 0 : i52
    %c0_i23 = hw.constant 0 : i23
    %c0_i5 = hw.constant 0 : i5
    %false = hw.constant false
    %in_ren2 = seq.firreg %0 clock %clock {firrtl.random_init_start = 3 : ui64} : i1
    %in_typeTagOut = seq.firreg %1 clock %clock {firrtl.random_init_start = 9 : ui64} : i2
    %in_wflags = seq.firreg %2 clock %clock {firrtl.random_init_start = 17 : ui64} : i1
    %in_rm = seq.firreg %3 clock %clock {firrtl.random_init_start = 19 : ui64, sv.namehint = "in_rm"} : i3
    %in_typ = seq.firreg %4 clock %clock {firrtl.random_init_start = 24 : ui64} : i2
    %in_fmt = seq.firreg %5 clock %clock {firrtl.random_init_start = 26 : ui64} : i2
    %in_in1 = seq.firreg %6 clock %clock {firrtl.random_init_start = 28 : ui64, sv.namehint = "in_in1"} : i65
    %in_in2 = seq.firreg %7 clock %clock {firrtl.random_init_start = 93 : ui64, sv.namehint = "in_in2"} : i65
    %0 = comb.mux bin %io_in_valid, %io_in_bits_ren2, %in_ren2 : i1
    %1 = comb.mux bin %io_in_valid, %io_in_bits_typeTagOut, %in_typeTagOut : i2
    %2 = comb.mux bin %io_in_valid, %io_in_bits_wflags, %in_wflags : i1
    %3 = comb.mux bin %io_in_valid, %io_in_bits_rm, %in_rm : i3
    %4 = comb.mux bin %io_in_valid, %io_in_bits_typ, %in_typ : i2
    %5 = comb.mux bin %io_in_valid, %io_in_bits_fmt, %in_fmt : i2
    %6 = comb.mux bin %io_in_valid, %io_in_bits_in1, %in_in1 : i65
    %7 = comb.mux bin %io_in_valid, %io_in_bits_in2, %in_in2 : i65
    %dcmp.io_lt, %dcmp.io_eq, %dcmp.io_exceptionFlags = hw.instance "dcmp" @CompareRecFN(io_a: %in_in1: i65, io_b: %in_in2: i65, io_signaling: %9: i1) -> (io_lt: i1, io_eq: i1, io_exceptionFlags: i5) {sv.namehint = "dcmp.io_eq"}
    %8 = comb.extract %in_rm from 1 {sv.namehint = "_dcmp_io_signaling_T"} : (i3) -> i1
    %9 = comb.xor bin %8, %true {sv.namehint = "dcmp.io_signaling"} : i1
    %10 = comb.extract %in_in1 from 52 {sv.namehint = "classify_out_expIn"} : (i65) -> i12
    %11 = comb.extract %in_in1 from 61 {sv.namehint = "_toint_ieee_unrecoded_rawIn_isZero_T"} : (i65) -> i3
    %12 = comb.icmp bin ne %11, %c0_i3 {sv.namehint = "_toint_ieee_unrecoded_rawIn_out_sig_T"} : i3
    %13 = comb.extract %in_in1 from 62 {sv.namehint = "_toint_ieee_unrecoded_rawIn_isSpecial_T"} : (i65) -> i2
    %14 = comb.icmp bin eq %13, %c-1_i2 {sv.namehint = "toint_ieee_unrecoded_rawIn_isSpecial"} : i2
    %15 = comb.extract %in_in1 from 61 {sv.namehint = "_toint_ieee_unrecoded_rawIn_out_isInf_T"} : (i65) -> i1
    %16 = comb.xor bin %15, %true {sv.namehint = "_toint_ieee_unrecoded_rawIn_out_isInf_T_1"} : i1
    %17 = comb.and bin %14, %16 {sv.namehint = "toint_ieee_unrecoded_rawIn_isInf"} : i1
    %18 = comb.extract %in_in1 from 64 {sv.namehint = "classify_out_sign"} : (i65) -> i1
    %19 = comb.concat %false, %10 {sv.namehint = "toint_ieee_unrecoded_rawIn_sExp"} : i1, i12
    %20 = comb.extract %in_in1 from 0 {sv.namehint = "classify_out_fractIn"} : (i65) -> i52
    %21 = comb.icmp bin slt %19, %c1026_i13 {sv.namehint = "toint_ieee_unrecoded_isSubnormal"} : i13
    %22 = comb.extract %in_in1 from 52 {sv.namehint = "_toint_ieee_unrecoded_denormShiftDist_T"} : (i65) -> i6
    %23 = comb.sub bin %c1_i6, %22 {sv.namehint = "_toint_ieee_unrecoded_denormShiftDist_T_1"} : i6
    %24 = comb.extract %in_in1 from 1 : (i65) -> i51
    %25 = comb.concat %false, %12, %24 {sv.namehint = "_toint_ieee_unrecoded_denormFract_T"} : i1, i1, i51
    %26 = comb.concat %c0_i47, %23 : i47, i6
    %27 = comb.shru bin %25, %26 {sv.namehint = "_toint_ieee_unrecoded_denormFract_T_1"} : i53
    %28 = comb.extract %in_in1 from 0 : (i65) -> i32
    %29 = comb.mux bin %17, %c0_i32, %28 {sv.namehint = "_toint_ieee_unrecoded_fractOut_T_1"} : i32
    %30 = comb.extract %27 from 0 : (i53) -> i32
    %31 = comb.mux bin %21, %30, %29 {sv.namehint = "toint_ieee_unrecoded_fractOut"} : i32
    %32 = comb.extract %in_in1 from 31 {sv.namehint = "_io_out_bits_store_prevRecoded_T_3"} : (i65) -> i1
    %33 = comb.extract %in_in1 from 52 {sv.namehint = "_io_out_bits_store_prevRecoded_T_4"} : (i65) -> i1
    %34 = comb.extract %in_in1 from 23 {sv.namehint = "_toint_ieee_prevUnrecoded_expOut_T"} : (i65) -> i8
    %35 = comb.extract %in_in1 from 29 : (i65) -> i2
    %36 = comb.concat %33, %35 {sv.namehint = "_toint_ieee_prevUnrecoded_rawIn_isZero_T"} : i1, i2
    %37 = comb.icmp bin ne %36, %c0_i3 {sv.namehint = "_toint_ieee_prevUnrecoded_rawIn_out_sig_T"} : i3
    %38 = comb.extract %in_in1 from 30 : (i65) -> i1
    %39 = comb.concat %33, %38 {sv.namehint = "_toint_ieee_prevUnrecoded_rawIn_isSpecial_T"} : i1, i1
    %40 = comb.icmp bin eq %39, %c-1_i2 {sv.namehint = "toint_ieee_prevUnrecoded_rawIn_isSpecial"} : i2
    %41 = comb.extract %in_in1 from 29 {sv.namehint = "_toint_ieee_prevUnrecoded_rawIn_out_isInf_T"} : (i65) -> i1
    %42 = comb.and bin %40, %41 {sv.namehint = "toint_ieee_prevUnrecoded_rawIn_isNaN"} : i1
    %43 = comb.xor bin %41, %true {sv.namehint = "_toint_ieee_prevUnrecoded_rawIn_out_isInf_T_1"} : i1
    %44 = comb.and bin %40, %43 {sv.namehint = "toint_ieee_prevUnrecoded_rawIn_isInf"} : i1
    %45 = comb.concat %false, %33, %34 {sv.namehint = "toint_ieee_prevUnrecoded_rawIn_sExp"} : i1, i1, i8
    %46 = comb.extract %in_in1 from 0 {sv.namehint = "_toint_ieee_prevUnrecoded_rawIn_out_sig_T_2"} : (i65) -> i23
    %47 = comb.icmp bin slt %45, %c130_i10 {sv.namehint = "toint_ieee_prevUnrecoded_isSubnormal"} : i10
    %48 = comb.extract %in_in1 from 23 {sv.namehint = "_toint_ieee_prevUnrecoded_denormShiftDist_T"} : (i65) -> i5
    %49 = comb.sub bin %c1_i5, %48 {sv.namehint = "_toint_ieee_prevUnrecoded_denormShiftDist_T_1"} : i5
    %50 = comb.extract %in_in1 from 1 : (i65) -> i22
    %51 = comb.concat %false, %37, %50 {sv.namehint = "_toint_ieee_prevUnrecoded_denormFract_T"} : i1, i1, i22
    %52 = comb.concat %c0_i19, %49 : i19, i5
    %53 = comb.shru bin %51, %52 {sv.namehint = "_toint_ieee_prevUnrecoded_denormFract_T_1"} : i24
    %54 = comb.extract %53 from 0 {sv.namehint = "toint_ieee_prevUnrecoded_denormFract"} : (i24) -> i23
    %55 = comb.add %34, %c127_i8 {sv.namehint = "_toint_ieee_prevUnrecoded_expOut_T_1"} : i8
    %56 = comb.mux bin %47, %c0_i8, %55 {sv.namehint = "_toint_ieee_prevUnrecoded_expOut_T_3"} : i8
    %57 = comb.or bin %42, %44 {sv.namehint = "_toint_ieee_prevUnrecoded_expOut_T_4"} : i1
    %58 = comb.replicate %57 {sv.namehint = "_toint_ieee_prevUnrecoded_expOut_T_5"} : (i1) -> i8
    %59 = comb.or bin %56, %58 {sv.namehint = "toint_ieee_prevUnrecoded_expOut"} : i8
    %60 = comb.mux bin %44, %c0_i23, %46 {sv.namehint = "_toint_ieee_prevUnrecoded_fractOut_T_1"} : i23
    %61 = comb.mux bin %47, %54, %60 {sv.namehint = "toint_ieee_prevUnrecoded_fractOut"} : i23
    %62 = comb.concat %32, %59, %61 {sv.namehint = "toint_ieee_prevUnrecoded"} : i1, i8, i23
    %63 = comb.extract %in_in1 from 61 {sv.namehint = "classify_out_code_1"} : (i65) -> i3
    %64 = comb.icmp bin eq %63, %c-1_i3 {sv.namehint = "_toint_ieee_T_2"} : i3
    %65 = comb.mux bin %64, %62, %31 {sv.namehint = "_toint_ieee_T_4"} : i32
    %66 = comb.replicate %65 {sv.namehint = "_toint_ieee_T_7"} : (i32) -> i64
    %67 = comb.extract %in_in1 from 61 {sv.namehint = "_toint_ieee_unrecoded_rawIn_isZero_T_1"} : (i65) -> i3
    %68 = comb.icmp bin ne %67, %c0_i3 {sv.namehint = "_toint_ieee_unrecoded_rawIn_out_sig_T_4"} : i3
    %69 = comb.extract %in_in1 from 62 {sv.namehint = "_toint_ieee_unrecoded_rawIn_isSpecial_T_1"} : (i65) -> i2
    %70 = comb.icmp bin eq %69, %c-1_i2 {sv.namehint = "toint_ieee_unrecoded_rawIn_isSpecial_1"} : i2
    %71 = comb.extract %in_in1 from 61 {sv.namehint = "_toint_ieee_unrecoded_rawIn_out_isInf_T_3"} : (i65) -> i1
    %72 = comb.and bin %70, %71 {sv.namehint = "toint_ieee_unrecoded_rawIn_1_isNaN"} : i1
    %73 = comb.xor bin %71, %true {sv.namehint = "_toint_ieee_unrecoded_rawIn_out_isInf_T_4"} : i1
    %74 = comb.and bin %70, %73 {sv.namehint = "toint_ieee_unrecoded_rawIn_1_isInf"} : i1
    %75 = comb.icmp bin slt %19, %c1026_i13 {sv.namehint = "toint_ieee_unrecoded_isSubnormal_1"} : i13
    %76 = comb.extract %in_in1 from 52 {sv.namehint = "_toint_ieee_unrecoded_denormShiftDist_T_2"} : (i65) -> i6
    %77 = comb.sub bin %c1_i6, %76 {sv.namehint = "_toint_ieee_unrecoded_denormShiftDist_T_3"} : i6
    %78 = comb.extract %in_in1 from 1 : (i65) -> i51
    %79 = comb.concat %false, %68, %78 {sv.namehint = "_toint_ieee_unrecoded_denormFract_T_2"} : i1, i1, i51
    %80 = comb.concat %c0_i47, %77 : i47, i6
    %81 = comb.shru bin %79, %80 {sv.namehint = "_toint_ieee_unrecoded_denormFract_T_3"} : i53
    %82 = comb.extract %81 from 0 {sv.namehint = "toint_ieee_unrecoded_denormFract_1"} : (i53) -> i52
    %83 = comb.extract %in_in1 from 52 {sv.namehint = "_toint_ieee_unrecoded_expOut_T_6"} : (i65) -> i11
    %84 = comb.add %83, %c1023_i11 {sv.namehint = "_toint_ieee_unrecoded_expOut_T_7"} : i11
    %85 = comb.mux bin %75, %c0_i11, %84 {sv.namehint = "_toint_ieee_unrecoded_expOut_T_9"} : i11
    %86 = comb.or bin %72, %74 {sv.namehint = "_toint_ieee_unrecoded_expOut_T_10"} : i1
    %87 = comb.replicate %86 {sv.namehint = "_toint_ieee_unrecoded_expOut_T_11"} : (i1) -> i11
    %88 = comb.or bin %85, %87 {sv.namehint = "toint_ieee_unrecoded_expOut_1"} : i11
    %89 = comb.mux bin %74, %c0_i52, %20 {sv.namehint = "_toint_ieee_unrecoded_fractOut_T_3"} : i52
    %90 = comb.mux bin %75, %82, %89 {sv.namehint = "toint_ieee_unrecoded_fractOut_1"} : i52
    %91 = comb.extract %in_in1 from 23 {sv.namehint = "_toint_ieee_prevUnrecoded_expOut_T_6"} : (i65) -> i8
    %92 = comb.extract %in_in1 from 29 : (i65) -> i2
    %93 = comb.concat %33, %92 {sv.namehint = "_toint_ieee_prevUnrecoded_rawIn_isZero_T_1"} : i1, i2
    %94 = comb.icmp bin ne %93, %c0_i3 {sv.namehint = "_toint_ieee_prevUnrecoded_rawIn_out_sig_T_4"} : i3
    %95 = comb.extract %in_in1 from 30 : (i65) -> i1
    %96 = comb.concat %33, %95 {sv.namehint = "_toint_ieee_prevUnrecoded_rawIn_isSpecial_T_1"} : i1, i1
    %97 = comb.icmp bin eq %96, %c-1_i2 {sv.namehint = "toint_ieee_prevUnrecoded_rawIn_isSpecial_1"} : i2
    %98 = comb.extract %in_in1 from 29 {sv.namehint = "_toint_ieee_prevUnrecoded_rawIn_out_isInf_T_3"} : (i65) -> i1
    %99 = comb.and bin %97, %98 {sv.namehint = "toint_ieee_prevUnrecoded_rawIn_1_isNaN"} : i1
    %100 = comb.xor bin %98, %true {sv.namehint = "_toint_ieee_prevUnrecoded_rawIn_out_isInf_T_4"} : i1
    %101 = comb.and bin %97, %100 {sv.namehint = "toint_ieee_prevUnrecoded_rawIn_1_isInf"} : i1
    %102 = comb.concat %false, %33, %91 {sv.namehint = "toint_ieee_prevUnrecoded_rawIn_1_sExp"} : i1, i1, i8
    %103 = comb.extract %in_in1 from 0 {sv.namehint = "_toint_ieee_prevUnrecoded_rawIn_out_sig_T_6"} : (i65) -> i23
    %104 = comb.icmp bin slt %102, %c130_i10 {sv.namehint = "toint_ieee_prevUnrecoded_isSubnormal_1"} : i10
    %105 = comb.extract %in_in1 from 23 {sv.namehint = "_toint_ieee_prevUnrecoded_denormShiftDist_T_2"} : (i65) -> i5
    %106 = comb.sub bin %c1_i5, %105 {sv.namehint = "_toint_ieee_prevUnrecoded_denormShiftDist_T_3"} : i5
    %107 = comb.extract %in_in1 from 1 : (i65) -> i22
    %108 = comb.concat %false, %94, %107 {sv.namehint = "_toint_ieee_prevUnrecoded_denormFract_T_2"} : i1, i1, i22
    %109 = comb.concat %c0_i19, %106 : i19, i5
    %110 = comb.shru bin %108, %109 {sv.namehint = "_toint_ieee_prevUnrecoded_denormFract_T_3"} : i24
    %111 = comb.extract %110 from 0 {sv.namehint = "toint_ieee_prevUnrecoded_denormFract_1"} : (i24) -> i23
    %112 = comb.add %91, %c127_i8 {sv.namehint = "_toint_ieee_prevUnrecoded_expOut_T_7"} : i8
    %113 = comb.mux bin %104, %c0_i8, %112 {sv.namehint = "_toint_ieee_prevUnrecoded_expOut_T_9"} : i8
    %114 = comb.or bin %99, %101 {sv.namehint = "_toint_ieee_prevUnrecoded_expOut_T_10"} : i1
    %115 = comb.replicate %114 {sv.namehint = "_toint_ieee_prevUnrecoded_expOut_T_11"} : (i1) -> i8
    %116 = comb.or bin %113, %115 {sv.namehint = "toint_ieee_prevUnrecoded_expOut_1"} : i8
    %117 = comb.mux bin %101, %c0_i23, %103 {sv.namehint = "_toint_ieee_prevUnrecoded_fractOut_T_3"} : i23
    %118 = comb.mux bin %104, %111, %117 {sv.namehint = "toint_ieee_prevUnrecoded_fractOut_1"} : i23
    %119 = comb.concat %32, %116, %118 {sv.namehint = "toint_ieee_prevUnrecoded_1"} : i1, i8, i23
    %120 = comb.extract %90 from 32 : (i52) -> i20
    %121 = comb.icmp bin eq %63, %c-1_i3 {sv.namehint = "_toint_ieee_T_10"} : i3
    %122 = comb.extract %90 from 0 {sv.namehint = "_toint_ieee_T_11"} : (i52) -> i32
    %123 = comb.mux bin %121, %119, %122 {sv.namehint = "_toint_ieee_T_12"} : i32
    %124 = comb.concat %18, %88, %120, %123 {sv.namehint = "_toint_ieee_T_14"} : i1, i11, i20, i32
    %125 = comb.extract %in_typeTagOut from 0 {sv.namehint = "toint_ieee_truncIdx"} : (i2) -> i1
    %126 = comb.mux bin %125, %124, %66 {sv.namehint = "toint_ieee"} : i64
    %127 = comb.extract %in_fmt from 0 {sv.namehint = "_intType_T"} : (i2) -> i1
    %128 = comb.extract %247 from 0 {sv.namehint = "_io_out_bits_toint_T"} : (i64) -> i32
    %129 = comb.extract %247 from 31 {sv.namehint = "_io_out_bits_toint_T_1"} : (i64) -> i1
    %130 = comb.replicate %129 {sv.namehint = "_io_out_bits_toint_T_2"} : (i1) -> i32
    %131 = comb.concat %130, %128 {sv.namehint = "_io_out_bits_toint_T_3"} : i32, i32
    %132 = comb.mux bin %225, %247, %131 {sv.namehint = "io_out_bits_toint"} : i64
    %133 = comb.extract %in_rm from 0 : (i3) -> i1
    %134 = comb.extract %in_in1 from 61 {sv.namehint = "classify_out_expOut_expCode"} : (i65) -> i3
    %135 = comb.extract %in_in1 from 52 : (i65) -> i9
    %136 = comb.add bin %135, %c-256_i9 {sv.namehint = "_classify_out_expOut_commonCase_T"} : i9
    %137 = comb.icmp bin eq %134, %c0_i3 {sv.namehint = "_classify_out_expOut_T"} : i3
    %138 = comb.icmp bin ugt %134, %c-3_i3 {sv.namehint = "_classify_out_expOut_T_1"} : i3
    %139 = comb.or bin %137, %138 {sv.namehint = "_classify_out_expOut_T_2"} : i1
    %140 = comb.extract %136 from 0 {sv.namehint = "_classify_out_expOut_T_3"} : (i9) -> i6
    %141 = comb.concat %134, %140 {sv.namehint = "_classify_out_expOut_T_4"} : i3, i6
    %142 = comb.mux bin %139, %141, %136 {sv.namehint = "classify_out_expOut"} : i9
    %143 = comb.extract %142 from 6 {sv.namehint = "classify_out_code"} : (i9) -> i3
    %144 = comb.extract %142 from 7 {sv.namehint = "classify_out_codeHi"} : (i9) -> i2
    %145 = comb.icmp bin eq %144, %c-1_i2 {sv.namehint = "classify_out_isSpecial"} : i2
    %146 = comb.extract %142 from 0 {sv.namehint = "_classify_out_isHighSubnormalIn_T"} : (i9) -> i7
    %147 = comb.icmp bin ult %146, %c2_i7 {sv.namehint = "classify_out_isHighSubnormalIn"} : i7
    %148 = comb.icmp bin eq %143, %c1_i3 {sv.namehint = "_classify_out_isSubnormal_T"} : i3
    %149 = comb.icmp bin eq %144, %c1_i2 {sv.namehint = "_classify_out_isNormal_T"} : i2
    %150 = comb.and bin %149, %147 {sv.namehint = "_classify_out_isSubnormal_T_2"} : i1
    %151 = comb.or bin %148, %150 {sv.namehint = "classify_out_isSubnormal"} : i1
    %152 = comb.extract %142 from 1 : (i9) -> i6
    %153 = comb.icmp bin ne %152, %c0_i6 {sv.namehint = "_classify_out_isNormal_T_1"} : i6
    %154 = comb.and bin %149, %153 {sv.namehint = "_classify_out_isNormal_T_2"} : i1
    %155 = comb.icmp bin eq %144, %c-2_i2 {sv.namehint = "_classify_out_isNormal_T_3"} : i2
    %156 = comb.or bin %154, %155 {sv.namehint = "classify_out_isNormal"} : i1
    %157 = comb.icmp bin eq %143, %c0_i3 {sv.namehint = "classify_out_isZero"} : i3
    %158 = comb.extract %142 from 6 {sv.namehint = "_classify_out_isInf_T"} : (i9) -> i1
    %159 = comb.xor bin %158, %true {sv.namehint = "_classify_out_isInf_T_1"} : i1
    %160 = comb.and bin %145, %159 {sv.namehint = "classify_out_isInf"} : i1
    %161 = comb.icmp bin eq %143, %c-1_i3 {sv.namehint = "classify_out_isNaN"} : i3
    %162 = comb.extract %in_in1 from 51 {sv.namehint = "_classify_out_isQNaN_T"} : (i65) -> i1
    %163 = comb.xor bin %162, %true {sv.namehint = "_classify_out_isSNaN_T_1"} : i1
    %164 = comb.and bin %161, %163 {sv.namehint = "classify_out_isSNaN"} : i1
    %165 = comb.and bin %161, %162 {sv.namehint = "classify_out_isQNaN"} : i1
    %166 = comb.xor bin %18, %true {sv.namehint = "_classify_out_T_7"} : i1
    %167 = comb.and bin %160, %166 {sv.namehint = "_classify_out_T_2"} : i1
    %168 = comb.and bin %156, %166 {sv.namehint = "_classify_out_T_4"} : i1
    %169 = comb.and bin %151, %166 {sv.namehint = "_classify_out_T_6"} : i1
    %170 = comb.and bin %157, %166 {sv.namehint = "_classify_out_T_8"} : i1
    %171 = comb.and bin %157, %18 {sv.namehint = "_classify_out_T_9"} : i1
    %172 = comb.and bin %151, %18 {sv.namehint = "_classify_out_T_10"} : i1
    %173 = comb.and bin %156, %18 {sv.namehint = "_classify_out_T_11"} : i1
    %174 = comb.and bin %160, %18 {sv.namehint = "_classify_out_T_12"} : i1
    %175 = comb.concat %165, %164, %167, %168, %169, %170, %171, %172, %173, %174 {sv.namehint = "_classify_out_T_13"} : i1, i1, i1, i1, i1, i1, i1, i1, i1, i1
    %176 = comb.extract %in_in1 from 62 {sv.namehint = "classify_out_codeHi_1"} : (i65) -> i2
    %177 = comb.icmp bin eq %176, %c-1_i2 {sv.namehint = "classify_out_isSpecial_1"} : i2
    %178 = comb.extract %in_in1 from 52 {sv.namehint = "_classify_out_isHighSubnormalIn_T_1"} : (i65) -> i10
    %179 = comb.icmp bin ult %178, %c2_i10 {sv.namehint = "classify_out_isHighSubnormalIn_1"} : i10
    %180 = comb.icmp bin eq %63, %c1_i3 {sv.namehint = "_classify_out_isSubnormal_T_3"} : i3
    %181 = comb.icmp bin eq %176, %c1_i2 {sv.namehint = "_classify_out_isNormal_T_4"} : i2
    %182 = comb.and bin %181, %179 {sv.namehint = "_classify_out_isSubnormal_T_5"} : i1
    %183 = comb.or bin %180, %182 {sv.namehint = "classify_out_isSubnormal_1"} : i1
    %184 = comb.extract %in_in1 from 53 : (i65) -> i9
    %185 = comb.icmp bin ne %184, %c0_i9 {sv.namehint = "_classify_out_isNormal_T_5"} : i9
    %186 = comb.and bin %181, %185 {sv.namehint = "_classify_out_isNormal_T_6"} : i1
    %187 = comb.icmp bin eq %176, %c-2_i2 {sv.namehint = "_classify_out_isNormal_T_7"} : i2
    %188 = comb.or bin %186, %187 {sv.namehint = "classify_out_isNormal_1"} : i1
    %189 = comb.icmp bin eq %63, %c0_i3 {sv.namehint = "classify_out_isZero_1"} : i3
    %190 = comb.extract %in_in1 from 61 {sv.namehint = "_classify_out_isInf_T_2"} : (i65) -> i1
    %191 = comb.xor bin %190, %true {sv.namehint = "_classify_out_isInf_T_3"} : i1
    %192 = comb.and bin %177, %191 {sv.namehint = "classify_out_isInf_1"} : i1
    %193 = comb.icmp bin eq %63, %c-1_i3 {sv.namehint = "classify_out_isNaN_1"} : i3
    %194 = comb.extract %in_in1 from 51 {sv.namehint = "_classify_out_isQNaN_T_1"} : (i65) -> i1
    %195 = comb.xor bin %194, %true {sv.namehint = "_classify_out_isSNaN_T_3"} : i1
    %196 = comb.and bin %193, %195 {sv.namehint = "classify_out_isSNaN_1"} : i1
    %197 = comb.and bin %193, %194 {sv.namehint = "classify_out_isQNaN_1"} : i1
    %198 = comb.xor bin %18, %true {sv.namehint = "_classify_out_T_20"} : i1
    %199 = comb.and bin %192, %198 {sv.namehint = "_classify_out_T_15"} : i1
    %200 = comb.and bin %188, %198 {sv.namehint = "_classify_out_T_17"} : i1
    %201 = comb.and bin %183, %198 {sv.namehint = "_classify_out_T_19"} : i1
    %202 = comb.and bin %189, %198 {sv.namehint = "_classify_out_T_21"} : i1
    %203 = comb.and bin %189, %18 {sv.namehint = "_classify_out_T_22"} : i1
    %204 = comb.and bin %183, %18 {sv.namehint = "_classify_out_T_23"} : i1
    %205 = comb.and bin %188, %18 {sv.namehint = "_classify_out_T_24"} : i1
    %206 = comb.and bin %192, %18 {sv.namehint = "_classify_out_T_25"} : i1
    %207 = comb.concat %197, %196, %199, %200, %201, %202, %203, %204, %205, %206 {sv.namehint = "_classify_out_T_26"} : i1, i1, i1, i1, i1, i1, i1, i1, i1, i1
    %208 = comb.extract %in_typeTagOut from 0 {sv.namehint = "classify_out_truncIdx"} : (i2) -> i1
    %209 = comb.mux bin %208, %207, %175 {sv.namehint = "classify_out"} : i10
    %210 = comb.extract %126 from 32 {sv.namehint = "_toint_T"} : (i64) -> i32
    %211 = comb.concat %210, %c0_i22, %209 : i32, i22, i10
    %212 = comb.mux bin %133, %211, %126 : i64
    %213 = comb.xor %133, %true : i1
    %214 = comb.and %213, %127 : i1
    %215 = comb.extract %in_rm from 0 : (i3) -> i2
    %216 = comb.xor bin %215, %c-1_i2 {sv.namehint = "_toint_T_3"} : i2
    %217 = comb.concat %dcmp.io_lt, %dcmp.io_eq {sv.namehint = "_toint_T_4"} : i1, i1
    %218 = comb.and bin %216, %217 : i2
    %219 = comb.icmp bin ne %218, %c0_i2 {sv.namehint = "_toint_T_6"} : i2
    %220 = comb.extract %126 from 32 {sv.namehint = "_toint_T_7"} : (i64) -> i32
    %221 = comb.concat %220, %c0_i31, %219 : i32, i31, i1
    %222 = comb.xor bin %in_ren2, %true : i1
    %223 = comb.extract %in_typ from 1 {sv.namehint = "cvtType"} : (i2) -> i1
    %224 = comb.and %222, %223 : i1
    %225 = comb.mux bin %in_wflags, %224, %214 {sv.namehint = "intType"} : i1
    %conv.io_out, %conv.io_intExceptionFlags = hw.instance "conv" @RecFNToIN_e11_s53_i64(io_in: %in_in1: i65, io_roundingMode: %in_rm: i3, io_signedOut: %227: i1) -> (io_out: i64, io_intExceptionFlags: i3) {sv.namehint = "conv.io_out"}
    %226 = comb.extract %in_typ from 0 {sv.namehint = "_narrow_io_signedOut_T"} : (i2) -> i1
    %227 = comb.xor bin %226, %true {sv.namehint = "conv.io_signedOut"} : i1
    %228 = comb.extract %conv.io_intExceptionFlags from 1 {sv.namehint = "_io_out_bits_exc_T"} : (i3) -> i2
    %229 = comb.icmp bin ne %228, %c0_i2 {sv.namehint = "_io_out_bits_exc_T_1"} : i2
    %230 = comb.extract %conv.io_intExceptionFlags from 0 {sv.namehint = "_io_out_bits_exc_T_5"} : (i3) -> i1
    %231 = comb.concat %229, %c0_i3, %230 {sv.namehint = "_io_out_bits_exc_T_3"} : i1, i3, i1
    %232 = comb.xor bin %223, %true : i1
    %narrow.io_intExceptionFlags = hw.instance "narrow" @RecFNToIN_e11_s53_i32(io_in: %in_in1: i65, io_roundingMode: %in_rm: i3, io_signedOut: %233: i1) -> (io_intExceptionFlags: i3) {sv.namehint = "narrow.io_intExceptionFlags"}
    %233 = comb.xor bin %226, %true {sv.namehint = "narrow.io_signedOut"} : i1
    %234 = comb.icmp bin ne %63, %c-1_i3 {sv.namehint = "_excSign_T_3"} : i3
    %235 = comb.and bin %18, %234 {sv.namehint = "excSign"} : i1
    %236 = comb.icmp bin eq %227, %235 {sv.namehint = "_excOut_T"} : i1
    %237 = comb.xor bin %235, %true {sv.namehint = "_excOut_T_1"} : i1
    %238 = comb.replicate %237 {sv.namehint = "_excOut_T_2"} : (i1) -> i31
    %239 = comb.extract %conv.io_intExceptionFlags from 2 {sv.namehint = "_invalid_T"} : (i3) -> i1
    %240 = comb.extract %narrow.io_intExceptionFlags from 1 {sv.namehint = "_invalid_T_1"} : (i3) -> i1
    %241 = comb.or bin %239, %240 {sv.namehint = "invalid"} : i1
    %242 = comb.extract %conv.io_out from 32 {sv.namehint = "_toint_T_10"} : (i64) -> i32
    %243 = comb.concat %242, %236, %238 {sv.namehint = "_toint_T_11"} : i32, i1, i31
    %244 = comb.and bin %232, %241 : i1
    %245 = comb.mux bin %244, %243, %conv.io_out : i64
    %246 = comb.mux bin %in_ren2, %221, %245 : i64
    %247 = comb.mux bin %in_wflags, %246, %212 {sv.namehint = "toint"} : i64
    %248 = comb.xor bin %241, %true {sv.namehint = "_io_out_bits_exc_T_4"} : i1
    %249 = comb.and bin %248, %230 {sv.namehint = "_io_out_bits_exc_T_6"} : i1
    %250 = comb.concat %241, %c0_i3, %249 {sv.namehint = "_io_out_bits_exc_T_7"} : i1, i3, i1
    %251 = comb.mux bin %223, %231, %250 : i5
    %252 = comb.mux bin %in_ren2, %dcmp.io_exceptionFlags, %251 : i5
    %253 = comb.mux bin %in_wflags, %252, %c0_i5 {sv.namehint = "io_out_bits_exc"} : i5
    %254 = comb.icmp bin slt %in_in1, %c0_i65 {sv.namehint = "_io_out_bits_lt_T_1"} : i65
    %255 = comb.icmp bin sgt %in_in2, %c-1_i65 {sv.namehint = "_io_out_bits_lt_T_3"} : i65
    %256 = comb.and bin %254, %255 {sv.namehint = "_io_out_bits_lt_T_4"} : i1
    %257 = comb.or bin %dcmp.io_lt, %256 {sv.namehint = "io_out_bits_lt"} : i1
    hw.output %257, %132, %253 : i1, i64, i5
  }
  hw.module private @RoundAnyRawFNToRecFN_ie11_is53_oe8_os24(in %io_invalidExc : i1, in %io_in_isNaN : i1, in %io_in_isInf : i1, in %io_in_isZero : i1, in %io_in_sign : i1, in %io_in_sExp : i13, in %io_in_sig : i54, in %io_roundingMode : i3, out io_out : i33, out io_exceptionFlags : i5) {
    %c-1_i6 = hw.constant -1 : i6
    %c-1_i7 = hw.constant -1 : i7
    %c0_i53 = hw.constant 0 : i53
    %c1_i6 = hw.constant 1 : i6
    %c2_i8 = hw.constant 2 : i8
    %c0_i13 = hw.constant 0 : i13
    %c0_i52 = hw.constant 0 : i52
    %c-1_i25 = hw.constant -1 : i25
    %c107_i15 = hw.constant 107 : i15
    %c1_i26 = hw.constant 1 : i26
    %c-1792_i14 = hw.constant -1792 : i14
    %c-1_i26 = hw.constant -1 : i26
    %c-1_i22 = hw.constant -1 : i22
    %c0_i2 = hw.constant 0 : i2
    %c0_i59 = hw.constant 0 : i59
    %c-1_i9 = hw.constant -1 : i9
    %c0_i28 = hw.constant 0 : i28
    %c2_i3 = hw.constant 2 : i3
    %c-4_i3 = hw.constant -4 : i3
    %c-2_i3 = hw.constant -2 : i3
    %c-1_i3 = hw.constant -1 : i3
    %c-1_i2 = hw.constant -1 : i2
    %c0_i26 = hw.constant 0 : i26
    %c-64_i9 = hw.constant -64 : i9
    %c107_i9 = hw.constant 107 : i9
    %c-129_i9 = hw.constant -129 : i9
    %c-128_i9 = hw.constant -128 : i9
    %c-18446744073709551616_i65 = hw.constant -18446744073709551616 : i65
    %c0_i22 = hw.constant 0 : i22
    %c0_i3 = hw.constant 0 : i3
    %c0_i25 = hw.constant 0 : i25
    %c3_i3 = hw.constant 3 : i3
    %c0_i9 = hw.constant 0 : i9
    %c-108_i9 = hw.constant -108 : i9
    %true = hw.constant true
    %false = hw.constant false
    %0 = comb.icmp bin eq %io_roundingMode, %c0_i3 {sv.namehint = "roundingMode_near_even"} : i3
    %1 = comb.icmp bin eq %io_roundingMode, %c2_i3 {sv.namehint = "roundingMode_min"} : i3
    %2 = comb.icmp bin eq %io_roundingMode, %c3_i3 {sv.namehint = "roundingMode_max"} : i3
    %3 = comb.icmp bin eq %io_roundingMode, %c-4_i3 {sv.namehint = "roundingMode_near_maxMag"} : i3
    %4 = comb.icmp bin eq %io_roundingMode, %c-2_i3 {sv.namehint = "roundingMode_odd"} : i3
    %5 = comb.and bin %1, %io_in_sign {sv.namehint = "_roundMagUp_T"} : i1
    %6 = comb.xor bin %io_in_sign, %true {sv.namehint = "_roundMagUp_T_1"} : i1
    %7 = comb.and bin %2, %6 {sv.namehint = "_roundMagUp_T_2"} : i1
    %8 = comb.or bin %5, %7 {sv.namehint = "roundMagUp"} : i1
    %9 = comb.extract %io_in_sExp from 12 : (i13) -> i1
    %10 = comb.concat %9, %io_in_sExp : i1, i13
    %11 = comb.add bin %10, %c-1792_i14 {sv.namehint = "sAdjustedExp"} : i14
    %12 = comb.extract %io_in_sig from 28 {sv.namehint = "_adjustedSig_T"} : (i54) -> i26
    %13 = comb.extract %io_in_sig from 0 {sv.namehint = "_adjustedSig_T_1"} : (i54) -> i28
    %14 = comb.icmp bin ne %13, %c0_i28 {sv.namehint = "_adjustedSig_T_2"} : i28
    %15 = comb.extract %11 from 0 {sv.namehint = "_roundMask_T"} : (i14) -> i9
    %16 = comb.xor bin %15, %c-1_i9 {sv.namehint = "_roundMask_T_1"} : i9
    %17 = comb.extract %16 from 8 {sv.namehint = "roundMask_msb"} : (i9) -> i1
    %18 = comb.extract %16 from 7 {sv.namehint = "roundMask_msb_1"} : (i9) -> i1
    %19 = comb.extract %16 from 6 {sv.namehint = "roundMask_msb_2"} : (i9) -> i1
    %20 = comb.extract %16 from 0 {sv.namehint = "roundMask_lsbs_2"} : (i9) -> i6
    %21 = comb.concat %c0_i59, %20 : i59, i6
    %22 = comb.shrs bin %c-18446744073709551616_i65, %21 {sv.namehint = "roundMask_shift"} : i65
    %23 = comb.extract %22 from 57 : (i65) -> i1
    %24 = comb.extract %22 from 42 : (i65) -> i1
    %25 = comb.extract %22 from 44 : (i65) -> i1
    %26 = comb.extract %22 from 46 : (i65) -> i1
    %27 = comb.extract %22 from 48 : (i65) -> i1
    %28 = comb.extract %22 from 50 : (i65) -> i1
    %29 = comb.extract %22 from 52 : (i65) -> i1
    %30 = comb.extract %22 from 54 : (i65) -> i1
    %31 = comb.extract %22 from 56 : (i65) -> i1
    %32 = comb.extract %22 from 43 : (i65) -> i1
    %33 = comb.extract %22 from 45 : (i65) -> i1
    %34 = comb.extract %22 from 47 : (i65) -> i1
    %35 = comb.extract %22 from 49 : (i65) -> i1
    %36 = comb.extract %22 from 51 : (i65) -> i1
    %37 = comb.extract %22 from 53 : (i65) -> i1
    %38 = comb.extract %22 from 55 : (i65) -> i1
    %39 = comb.extract %22 from 58 {sv.namehint = "_roundMask_T_46"} : (i65) -> i1
    %40 = comb.extract %22 from 59 {sv.namehint = "_roundMask_T_47"} : (i65) -> i1
    %41 = comb.extract %22 from 60 {sv.namehint = "_roundMask_T_50"} : (i65) -> i1
    %42 = comb.extract %22 from 61 {sv.namehint = "_roundMask_T_51"} : (i65) -> i1
    %43 = comb.extract %22 from 62 {sv.namehint = "_roundMask_T_55"} : (i65) -> i1
    %44 = comb.extract %22 from 63 {sv.namehint = "_roundMask_T_56"} : (i65) -> i1
    %45 = comb.concat %24, %32, %25, %33, %26, %34, %27, %35, %28, %36, %29, %37, %30, %38, %31, %23, %39, %40, %41, %42, %43, %44 {sv.namehint = "_roundMask_T_59"} : i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1
    %46 = comb.xor bin %45, %c-1_i22 {sv.namehint = "_roundMask_T_60"} : i22
    %47 = comb.mux bin %19, %c0_i22, %46 {sv.namehint = "_roundMask_T_61"} : i22
    %48 = comb.xor bin %47, %c-1_i22 {sv.namehint = "_roundMask_T_62"} : i22
    %49 = comb.concat %48, %c-1_i3 {sv.namehint = "_roundMask_T_63"} : i22, i3
    %50 = comb.shrs bin %c-18446744073709551616_i65, %21 {sv.namehint = "roundMask_shift_1"} : i65
    %51 = comb.extract %50 from 0 {sv.namehint = "_roundMask_T_66"} : (i65) -> i1
    %52 = comb.extract %50 from 1 {sv.namehint = "_roundMask_T_67"} : (i65) -> i1
    %53 = comb.extract %50 from 2 {sv.namehint = "_roundMask_T_69"} : (i65) -> i1
    %54 = comb.concat %51, %52, %53 {sv.namehint = "_roundMask_T_70"} : i1, i1, i1
    %55 = comb.mux bin %19, %54, %c0_i3 {sv.namehint = "_roundMask_T_71"} : i3
    %56 = comb.concat %c0_i22, %55 : i22, i3
    %57 = comb.mux bin %18, %49, %56 {sv.namehint = "_roundMask_T_72"} : i25
    %58 = comb.mux bin %17, %57, %c0_i25 {sv.namehint = "_roundMask_T_74"} : i25
    %59 = comb.xor %58, %c-1_i25 : i25
    %60 = comb.concat %true, %59 : i1, i25
    %61 = comb.concat %58, %true : i25, i1
    %62 = comb.and bin %12, %60, %61 {sv.namehint = "_roundPosBit_T"} : i26
    %63 = comb.icmp bin ne %62, %c0_i26 {sv.namehint = "roundPosBit"} : i26
    %64 = comb.extract %io_in_sig from 28 : (i54) -> i25
    %65 = comb.concat %64, %14 : i25, i1
    %66 = comb.concat %58, %true : i25, i1
    %67 = comb.and bin %65, %66 {sv.namehint = "_anyRoundExtra_T"} : i26
    %68 = comb.concat %62, %67 : i26, i26
    %69 = comb.icmp bin ne %68, %c0_i52 {sv.namehint = "anyRound"} : i52
    %70 = comb.or bin %0, %3 {sv.namehint = "_overflow_roundMagUp_T"} : i1
    %71 = comb.and bin %70, %63 {sv.namehint = "_roundIncr_T_1"} : i1
    %72 = comb.and bin %8, %69 {sv.namehint = "_roundIncr_T_2"} : i1
    %73 = comb.or bin %71, %72 {sv.namehint = "roundIncr"} : i1
    %74 = comb.extract %io_in_sig from 29 : (i54) -> i25
    %75 = comb.or %74, %58 {sv.namehint = "_roundedSig_T_1"} : i25
    %76 = comb.concat %false, %75 : i1, i25
    %77 = comb.add bin %76, %c1_i26 {sv.namehint = "_roundedSig_T_2"} : i26
    %78 = comb.icmp bin eq %67, %c0_i26 {sv.namehint = "_roundedSig_T_4"} : i26
    %79 = comb.and bin %0, %63, %78 {sv.namehint = "_roundedSig_T_5"} : i1
    %80 = comb.concat %58, %true {sv.namehint = "_roundedSig_T_6"} : i25, i1
    %81 = comb.mux bin %79, %80, %c0_i26 {sv.namehint = "_roundedSig_T_7"} : i26
    %82 = comb.xor bin %81, %c-1_i26 {sv.namehint = "_roundedSig_T_8"} : i26
    %83 = comb.and bin %77, %82 {sv.namehint = "_roundedSig_T_9"} : i26
    %84 = comb.xor %58, %c-1_i25 : i25
    %85 = comb.extract %io_in_sig from 29 : (i54) -> i25
    %86 = comb.and bin %85, %84 {sv.namehint = "_roundedSig_T_12"} : i25
    %87 = comb.and bin %4, %69 {sv.namehint = "_roundedSig_T_13"} : i1
    %88 = comb.concat %true, %59 : i1, i25
    %89 = comb.concat %58, %true : i25, i1
    %90 = comb.and bin %88, %89 {sv.namehint = "_roundedSig_T_14"} : i26
    %91 = comb.mux bin %87, %90, %c0_i26 {sv.namehint = "_roundedSig_T_15"} : i26
    %92 = comb.concat %false, %86 : i1, i25
    %93 = comb.or bin %92, %91 {sv.namehint = "_roundedSig_T_16"} : i26
    %94 = comb.mux bin %73, %83, %93 {sv.namehint = "roundedSig"} : i26
    %95 = comb.extract %94 from 24 {sv.namehint = "_sRoundedExp_T"} : (i26) -> i2
    %96 = comb.extract %11 from 13 : (i14) -> i1
    %97 = comb.concat %96, %11 : i1, i14
    %98 = comb.concat %c0_i13, %95 : i13, i2
    %99 = comb.add bin %97, %98 {sv.namehint = "sRoundedExp"} : i15
    %100 = comb.extract %99 from 0 {sv.namehint = "common_expOut"} : (i15) -> i9
    %101 = comb.extract %94 from 0 {sv.namehint = "common_fractOut"} : (i26) -> i23
    %102 = comb.extract %99 from 7 : (i15) -> i8
    %103 = comb.icmp bin sgt %102, %c2_i8 {sv.namehint = "common_overflow"} : i8
    %104 = comb.icmp bin slt %99, %c107_i15 {sv.namehint = "common_totalUnderflow"} : i15
    %105 = comb.extract %io_in_sig from 28 {sv.namehint = "unboundedRange_roundPosBit"} : (i54) -> i1
    %106 = comb.extract %io_in_sig from 28 : (i54) -> i1
    %107 = comb.concat %106, %14 {sv.namehint = "_unboundedRange_anyRound_T_2"} : i1, i1
    %108 = comb.icmp bin ne %107, %c0_i2 {sv.namehint = "unboundedRange_anyRound"} : i2
    %109 = comb.and bin %70, %105 {sv.namehint = "_unboundedRange_roundIncr_T_1"} : i1
    %110 = comb.and bin %8, %108 {sv.namehint = "_unboundedRange_roundIncr_T_2"} : i1
    %111 = comb.or bin %109, %110 {sv.namehint = "unboundedRange_roundIncr"} : i1
    %112 = comb.extract %94 from 24 {sv.namehint = "roundCarry"} : (i26) -> i1
    %113 = comb.extract %11 from 8 : (i14) -> i6
    %114 = comb.icmp bin slt %113, %c1_i6 {sv.namehint = "_common_underflow_T_1"} : i6
    %115 = comb.extract %58 from 1 {sv.namehint = "_common_underflow_T_10"} : (i25) -> i1
    %116 = comb.extract %58 from 0 {sv.namehint = "_common_underflow_T_5"} : (i25) -> i1
    %117 = comb.xor bin %115, %true {sv.namehint = "_common_underflow_T_11"} : i1
    %118 = comb.and bin %117, %112, %63, %111 {sv.namehint = "_common_underflow_T_15"} : i1
    %119 = comb.xor bin %118, %true {sv.namehint = "_common_underflow_T_16"} : i1
    %120 = comb.and bin %69, %114, %116, %119 {sv.namehint = "_common_underflow_T_17"} : i1
    %121 = comb.or bin %104, %120 {sv.namehint = "common_underflow"} : i1
    %122 = comb.concat %104, %62, %67 : i1, i26, i26
    %123 = comb.icmp bin ne %122, %c0_i53 {sv.namehint = "common_inexact"} : i53
    %124 = comb.or bin %io_invalidExc, %io_in_isNaN {sv.namehint = "isNaNOut"} : i1
    %125 = comb.xor bin %124, %true {sv.namehint = "_commonCase_T"} : i1
    %126 = comb.xor bin %io_in_isInf, %true {sv.namehint = "_commonCase_T_1"} : i1
    %127 = comb.xor bin %io_in_isZero, %true {sv.namehint = "_commonCase_T_3"} : i1
    %128 = comb.and bin %125, %126, %127 {sv.namehint = "commonCase"} : i1
    %129 = comb.and bin %128, %103 {sv.namehint = "overflow"} : i1
    %130 = comb.and bin %128, %121 {sv.namehint = "underflow"} : i1
    %131 = comb.and bin %128, %123 {sv.namehint = "_inexact_T"} : i1
    %132 = comb.or bin %129, %131 {sv.namehint = "inexact"} : i1
    %133 = comb.or bin %70, %8 {sv.namehint = "overflow_roundMagUp"} : i1
    %134 = comb.or bin %8, %4 {sv.namehint = "_pegMinNonzeroMagOut_T_1"} : i1
    %135 = comb.and bin %128, %104, %134 {sv.namehint = "pegMinNonzeroMagOut"} : i1
    %136 = comb.xor bin %133, %true {sv.namehint = "_pegMaxFiniteMagOut_T"} : i1
    %137 = comb.and bin %129, %136 {sv.namehint = "pegMaxFiniteMagOut"} : i1
    %138 = comb.and bin %129, %133 {sv.namehint = "_notNaN_isInfOut_T"} : i1
    %139 = comb.or bin %io_in_isInf, %138 {sv.namehint = "notNaN_isInfOut"} : i1
    %140 = comb.xor %124, %true : i1
    %141 = comb.and %140, %io_in_sign {sv.namehint = "signOut"} : i1
    %142 = comb.or bin %io_in_isZero, %104 {sv.namehint = "_expOut_T"} : i1
    %143 = comb.mux bin %142, %c-64_i9, %c0_i9 {sv.namehint = "_expOut_T_1"} : i9
    %144 = comb.xor bin %143, %c-1_i9 {sv.namehint = "_expOut_T_2"} : i9
    %145 = comb.mux bin %135, %c-108_i9, %c0_i9 {sv.namehint = "_expOut_T_5"} : i9
    %146 = comb.xor bin %145, %c-1_i9 {sv.namehint = "_expOut_T_6"} : i9
    %147 = comb.xor %137, %true : i1
    %148 = comb.concat %true, %147, %c-1_i7 {sv.namehint = "_expOut_T_9"} : i1, i1, i7
    %149 = comb.xor %139, %true : i1
    %150 = comb.concat %c-1_i2, %149, %c-1_i6 {sv.namehint = "_expOut_T_12"} : i2, i1, i6
    %151 = comb.and bin %100, %144, %146, %148, %150 {sv.namehint = "_expOut_T_13"} : i9
    %152 = comb.mux bin %135, %c107_i9, %c0_i9 {sv.namehint = "_expOut_T_14"} : i9
    %153 = comb.mux bin %137, %c-129_i9, %c0_i9 {sv.namehint = "_expOut_T_16"} : i9
    %154 = comb.mux bin %139, %c-128_i9, %c0_i9 {sv.namehint = "_expOut_T_18"} : i9
    %155 = comb.mux bin %124, %c-64_i9, %c0_i9 {sv.namehint = "_expOut_T_20"} : i9
    %156 = comb.or bin %151, %152, %153, %154, %155 {sv.namehint = "expOut"} : i9
    %157 = comb.or bin %124, %io_in_isZero, %104 {sv.namehint = "_fractOut_T_1"} : i1
    %158 = comb.concat %124, %c0_i22 {sv.namehint = "_fractOut_T_2"} : i1, i22
    %159 = comb.mux bin %157, %158, %101 {sv.namehint = "_fractOut_T_3"} : i23
    %160 = comb.replicate %137 {sv.namehint = "_fractOut_T_4"} : (i1) -> i23
    %161 = comb.or bin %159, %160 {sv.namehint = "fractOut"} : i23
    %162 = comb.concat %141, %156, %161 {sv.namehint = "io_out"} : i1, i9, i23
    %163 = comb.concat %io_invalidExc, %false, %129, %130, %132 {sv.namehint = "io_exceptionFlags"} : i1, i1, i1, i1, i1
    hw.output %162, %163 : i33, i5
  }
  hw.module private @RecFNToRecFN(in %io_in : i65, in %io_roundingMode : i3, out io_out : i33, out io_exceptionFlags : i5) {
    %c-1_i2 = hw.constant -1 : i2
    %true = hw.constant true
    %c0_i3 = hw.constant 0 : i3
    %false = hw.constant false
    %0 = comb.extract %io_in from 52 {sv.namehint = "rawIn_exp"} : (i65) -> i12
    %1 = comb.extract %io_in from 61 {sv.namehint = "_rawIn_isZero_T"} : (i65) -> i3
    %2 = comb.icmp bin ne %1, %c0_i3 {sv.namehint = "_rawIn_out_sig_T"} : i3
    %3 = comb.xor bin %2, %true {sv.namehint = "rawIn_isZero"} : i1
    %4 = comb.extract %io_in from 62 {sv.namehint = "_rawIn_isSpecial_T"} : (i65) -> i2
    %5 = comb.icmp bin eq %4, %c-1_i2 {sv.namehint = "rawIn_isSpecial"} : i2
    %6 = comb.extract %io_in from 61 {sv.namehint = "_rawIn_out_isInf_T"} : (i65) -> i1
    %7 = comb.and bin %5, %6 {sv.namehint = "rawIn_isNaN"} : i1
    %8 = comb.xor bin %6, %true {sv.namehint = "_rawIn_out_isInf_T_1"} : i1
    %9 = comb.and bin %5, %8 {sv.namehint = "rawIn_isInf"} : i1
    %10 = comb.extract %io_in from 64 {sv.namehint = "rawIn_sign"} : (i65) -> i1
    %11 = comb.concat %false, %0 {sv.namehint = "rawIn_sExp"} : i1, i12
    %12 = comb.extract %io_in from 0 {sv.namehint = "_rawIn_out_sig_T_2"} : (i65) -> i52
    %13 = comb.concat %false, %2, %12 {sv.namehint = "rawIn_sig"} : i1, i1, i52
    %roundAnyRawFNToRecFN.io_out, %roundAnyRawFNToRecFN.io_exceptionFlags = hw.instance "roundAnyRawFNToRecFN" @RoundAnyRawFNToRecFN_ie11_is53_oe8_os24(io_invalidExc: %16: i1, io_in_isNaN: %7: i1, io_in_isInf: %9: i1, io_in_isZero: %3: i1, io_in_sign: %10: i1, io_in_sExp: %11: i13, io_in_sig: %13: i54, io_roundingMode: %io_roundingMode: i3) -> (io_out: i33, io_exceptionFlags: i5) {sv.namehint = "roundAnyRawFNToRecFN.io_out"}
    %14 = comb.extract %io_in from 51 {sv.namehint = "_roundAnyRawFNToRecFN_io_invalidExc_T"} : (i65) -> i1
    %15 = comb.xor bin %14, %true {sv.namehint = "_roundAnyRawFNToRecFN_io_invalidExc_T_1"} : i1
    %16 = comb.and bin %7, %15 {sv.namehint = "roundAnyRawFNToRecFN.io_invalidExc"} : i1
    hw.output %roundAnyRawFNToRecFN.io_out, %roundAnyRawFNToRecFN.io_exceptionFlags : i33, i5
  }
  hw.module private @FPToFP(in %clock : !seq.clock, in %reset : i1, in %io_in_valid : i1, in %io_in_bits_ren2 : i1, in %io_in_bits_typeTagOut : i2, in %io_in_bits_wflags : i1, in %io_in_bits_rm : i3, in %io_in_bits_in1 : i65, in %io_in_bits_in2 : i65, out io_out_valid : i1, out io_out_bits_data : i65, out io_out_bits_exc : i5, in %io_lt : i1) {
    %c-3_i3 = hw.constant -3 : i3
    %c-256_i9 = hw.constant -256 : i9
    %c0_i3 = hw.constant 0 : i3
    %c0_i2 = hw.constant 0 : i2
    %c0_i4 = hw.constant 0 : i4
    %true = hw.constant true
    %c-1_i3 = hw.constant -1 : i3
    %c16143152864309542912_i65 = hw.constant 16143152864309542912 : i65
    %c0_i5 = hw.constant 0 : i5
    %false = hw.constant false
    %in_pipe_v = seq.firreg %io_in_valid clock %clock reset sync %reset, %false {firrtl.random_init_start = 0 : ui64, sv.namehint = "in_valid"} : i1
    %in_pipe_b_ren2 = seq.firreg %0 clock %clock {firrtl.random_init_start = 4 : ui64, sv.namehint = "in_bits_ren2"} : i1
    %in_pipe_b_typeTagOut = seq.firreg %1 clock %clock {firrtl.random_init_start = 10 : ui64, sv.namehint = "in_bits_typeTagOut"} : i2
    %in_pipe_b_wflags = seq.firreg %2 clock %clock {firrtl.random_init_start = 18 : ui64, sv.namehint = "in_bits_wflags"} : i1
    %in_pipe_b_rm = seq.firreg %3 clock %clock {firrtl.random_init_start = 20 : ui64, sv.namehint = "narrower.io_roundingMode"} : i3
    %in_pipe_b_in1 = seq.firreg %4 clock %clock {firrtl.random_init_start = 29 : ui64, sv.namehint = "narrower.io_in"} : i65
    %in_pipe_b_in2 = seq.firreg %5 clock %clock {firrtl.random_init_start = 94 : ui64, sv.namehint = "in_bits_in2"} : i65
    %0 = comb.mux bin %io_in_valid, %io_in_bits_ren2, %in_pipe_b_ren2 : i1
    %1 = comb.mux bin %io_in_valid, %io_in_bits_typeTagOut, %in_pipe_b_typeTagOut : i2
    %2 = comb.mux bin %io_in_valid, %io_in_bits_wflags, %in_pipe_b_wflags : i1
    %3 = comb.mux bin %io_in_valid, %io_in_bits_rm, %in_pipe_b_rm : i3
    %4 = comb.mux bin %io_in_valid, %io_in_bits_in1, %in_pipe_b_in1 : i65
    %5 = comb.mux bin %io_in_valid, %io_in_bits_in2, %in_pipe_b_in2 : i65
    %6 = comb.extract %in_pipe_b_rm from 1 {sv.namehint = "_signNum_T"} : (i3) -> i1
    %7 = comb.extract %in_pipe_b_in1 from 64 : (i65) -> i1
    %8 = comb.extract %in_pipe_b_in2 from 64 : (i65) -> i1
    %9 = comb.xor bin %7, %8 {sv.namehint = "_signNum_T_1"} : i1
    %10 = comb.extract %in_pipe_b_rm from 0 {sv.namehint = "_isLHS_T"} : (i3) -> i1
    %11 = comb.extract %in_pipe_b_in2 from 64 : (i65) -> i1
    %12 = comb.xor %10, %11 {sv.namehint = "_signNum_T_4"} : i1
    %13 = comb.mux bin %6, %9, %12 {sv.namehint = "signNum"} : i1
    %14 = comb.extract %in_pipe_b_in1 from 0 {sv.namehint = "_fsgnj_T_1"} : (i65) -> i64
    %15 = comb.concat %13, %14 {sv.namehint = "fsgnj"} : i1, i64
    %16 = comb.extract %in_pipe_b_in1 from 61 {sv.namehint = "_isInvalid_T"} : (i65) -> i3
    %17 = comb.icmp bin eq %16, %c-1_i3 {sv.namehint = "isnan1"} : i3
    %18 = comb.extract %in_pipe_b_in2 from 61 {sv.namehint = "_isInvalid_T_5"} : (i65) -> i3
    %19 = comb.icmp bin eq %18, %c-1_i3 {sv.namehint = "isnan2"} : i3
    %20 = comb.icmp bin eq %16, %c-1_i3 {sv.namehint = "_isInvalid_T_1"} : i3
    %21 = comb.extract %in_pipe_b_in1 from 51 {sv.namehint = "_isInvalid_T_2"} : (i65) -> i1
    %22 = comb.xor bin %21, %true {sv.namehint = "_isInvalid_T_3"} : i1
    %23 = comb.and bin %20, %22 {sv.namehint = "_isInvalid_T_4"} : i1
    %24 = comb.icmp bin eq %18, %c-1_i3 {sv.namehint = "_isInvalid_T_6"} : i3
    %25 = comb.extract %in_pipe_b_in2 from 51 {sv.namehint = "_isInvalid_T_7"} : (i65) -> i1
    %26 = comb.xor bin %25, %true {sv.namehint = "_isInvalid_T_8"} : i1
    %27 = comb.and bin %24, %26 {sv.namehint = "_isInvalid_T_9"} : i1
    %28 = comb.or bin %23, %27 {sv.namehint = "isInvalid"} : i1
    %29 = comb.and bin %17, %19 {sv.namehint = "isNaNOut"} : i1
    %30 = comb.icmp bin ne %10, %io_lt {sv.namehint = "_isLHS_T_1"} : i1
    %31 = comb.xor bin %17, %true {sv.namehint = "_isLHS_T_2"} : i1
    %32 = comb.and bin %30, %31 {sv.namehint = "_isLHS_T_3"} : i1
    %33 = comb.or bin %19, %32 {sv.namehint = "isLHS"} : i1
    %34 = comb.concat %28, %c0_i4 {sv.namehint = "_fsgnjMux_exc_T"} : i1, i4
    %35 = comb.mux bin %in_pipe_b_wflags, %34, %c0_i5 : i5
    %36 = comb.mux bin %33, %in_pipe_b_in1, %in_pipe_b_in2 {sv.namehint = "_fsgnjMux_data_T"} : i65
    %37 = comb.mux bin %29, %c16143152864309542912_i65, %36 {sv.namehint = "_fsgnjMux_data_T_1"} : i65
    %38 = comb.mux bin %in_pipe_b_wflags, %37, %15 : i65
    %39 = comb.icmp bin eq %in_pipe_b_typeTagOut, %c0_i2 : i2
    %40 = comb.extract %58 from 33 {sv.namehint = "_mux_data_T"} : (i65) -> i32
    %41 = comb.extract %58 from 64 {sv.namehint = "mux_data_sign"} : (i65) -> i1
    %42 = comb.extract %58 from 29 {sv.namehint = "mux_data_fractOut"} : (i65) -> i23
    %43 = comb.extract %58 from 61 {sv.namehint = "mux_data_expOut_expCode"} : (i65) -> i3
    %44 = comb.extract %58 from 52 : (i65) -> i9
    %45 = comb.add bin %44, %c-256_i9 {sv.namehint = "_mux_data_expOut_commonCase_T"} : i9
    %46 = comb.icmp bin eq %43, %c0_i3 {sv.namehint = "_mux_data_expOut_T"} : i3
    %47 = comb.icmp bin ugt %43, %c-3_i3 {sv.namehint = "_mux_data_expOut_T_1"} : i3
    %48 = comb.or bin %46, %47 {sv.namehint = "_mux_data_expOut_T_2"} : i1
    %49 = comb.extract %45 from 0 {sv.namehint = "_mux_data_expOut_T_3"} : (i9) -> i6
    %50 = comb.concat %43, %49 {sv.namehint = "_mux_data_expOut_T_4"} : i3, i6
    %51 = comb.mux bin %48, %50, %45 {sv.namehint = "mux_data_expOut"} : i9
    %52 = comb.concat %40, %41, %51, %42 {sv.namehint = "_mux_data_T_2"} : i32, i1, i9, i23
    %53 = comb.xor bin %in_pipe_b_ren2, %true : i1
    %54 = comb.and bin %in_pipe_b_wflags, %53 : i1
    %55 = comb.extract %in_pipe_b_in1 from 61 {sv.namehint = "_fsgnjMux_exc_T_1"} : (i65) -> i3
    %56 = comb.icmp bin eq %55, %c-1_i3 {sv.namehint = "_widened_T_1"} : i3
    %57 = comb.mux bin %56, %c16143152864309542912_i65, %in_pipe_b_in1 {sv.namehint = "widened"} : i65
    %58 = comb.mux bin %54, %57, %38 {sv.namehint = "fsgnjMux_data"} : i65
    %59 = comb.icmp bin eq %55, %c-1_i3 {sv.namehint = "_fsgnjMux_exc_T_2"} : i3
    %60 = comb.extract %in_pipe_b_in1 from 51 {sv.namehint = "_fsgnjMux_exc_T_3"} : (i65) -> i1
    %61 = comb.xor bin %60, %true {sv.namehint = "_fsgnjMux_exc_T_4"} : i1
    %62 = comb.and bin %59, %61 {sv.namehint = "_fsgnjMux_exc_T_5"} : i1
    %63 = comb.concat %62, %c0_i4 {sv.namehint = "_fsgnjMux_exc_T_6"} : i1, i4
    %64 = comb.mux bin %54, %63, %35 {sv.namehint = "fsgnjMux_exc"} : i5
    %narrower.io_out, %narrower.io_exceptionFlags = hw.instance "narrower" @RecFNToRecFN(io_in: %in_pipe_b_in1: i65, io_roundingMode: %in_pipe_b_rm: i3) -> (io_out: i33, io_exceptionFlags: i5) {sv.namehint = "narrower.io_out"}
    %65 = comb.extract %58 from 33 {sv.namehint = "_mux_data_T_3"} : (i65) -> i32
    %66 = comb.concat %65, %narrower.io_out {sv.namehint = "_mux_data_T_4"} : i32, i33
    %67 = comb.mux %54, %66, %52 : i65
    %68 = comb.mux bin %39, %67, %58 {sv.namehint = "mux_data"} : i65
    %69 = comb.and bin %54, %39 : i1
    %70 = comb.mux bin %69, %narrower.io_exceptionFlags, %64 {sv.namehint = "mux_exc"} : i5
    %io_out_pipe_v = seq.firreg %in_pipe_v clock %clock reset sync %reset, %false {firrtl.random_init_start = 224 : ui64} : i1
    %io_out_pipe_b_data = seq.firreg %71 clock %clock {firrtl.random_init_start = 225 : ui64} : i65
    %io_out_pipe_b_exc = seq.firreg %72 clock %clock {firrtl.random_init_start = 290 : ui64} : i5
    %71 = comb.mux bin %in_pipe_v, %68, %io_out_pipe_b_data : i65
    %72 = comb.mux bin %in_pipe_v, %70, %io_out_pipe_b_exc : i5
    %io_out_pipe_pipe_v = seq.firreg %io_out_pipe_v clock %clock reset sync %reset, %false {firrtl.random_init_start = 295 : ui64} : i1
    %io_out_pipe_pipe_b_data = seq.firreg %73 clock %clock {firrtl.random_init_start = 296 : ui64} : i65
    %io_out_pipe_pipe_b_exc = seq.firreg %74 clock %clock {firrtl.random_init_start = 361 : ui64} : i5
    %73 = comb.mux bin %io_out_pipe_v, %io_out_pipe_b_data, %io_out_pipe_pipe_b_data : i65
    %74 = comb.mux bin %io_out_pipe_v, %io_out_pipe_b_exc, %io_out_pipe_pipe_b_exc : i5
    %io_out_pipe_pipe_pipe_v = seq.firreg %io_out_pipe_pipe_v clock %clock reset sync %reset, %false {firrtl.random_init_start = 366 : ui64, sv.namehint = "io_out_pipe_pipe_pipe_v"} : i1
    %io_out_pipe_pipe_pipe_b_data = seq.firreg %75 clock %clock {firrtl.random_init_start = 367 : ui64, sv.namehint = "io_out_pipe_pipe_pipe_b_data"} : i65
    %io_out_pipe_pipe_pipe_b_exc = seq.firreg %76 clock %clock {firrtl.random_init_start = 432 : ui64, sv.namehint = "io_out_pipe_pipe_pipe_b_exc"} : i5
    %75 = comb.mux bin %io_out_pipe_pipe_v, %io_out_pipe_pipe_b_data, %io_out_pipe_pipe_pipe_b_data : i65
    %76 = comb.mux bin %io_out_pipe_pipe_v, %io_out_pipe_pipe_b_exc, %io_out_pipe_pipe_pipe_b_exc : i5
    hw.output %io_out_pipe_pipe_pipe_v, %io_out_pipe_pipe_pipe_b_data, %io_out_pipe_pipe_pipe_b_exc : i1, i65, i5
  }
  hw.module @FPU(in %clock : !seq.clock, in %reset : i1, in %io_req_valid : i1, in %io_req_bits_uop_uopc : i7, in %io_req_bits_uop_inst : i32, in %io_req_bits_uop_debug_inst : i32, in %io_req_bits_uop_is_rvc : i1, in %io_req_bits_uop_debug_pc : i40, in %io_req_bits_uop_iq_type : i3, in %io_req_bits_uop_fu_code : i10, in %io_req_bits_uop_ctrl_br_type : i4, in %io_req_bits_uop_ctrl_op1_sel : i2, in %io_req_bits_uop_ctrl_op2_sel : i3, in %io_req_bits_uop_ctrl_imm_sel : i3, in %io_req_bits_uop_ctrl_op_fcn : i5, in %io_req_bits_uop_ctrl_fcn_dw : i1, in %io_req_bits_uop_ctrl_csr_cmd : i3, in %io_req_bits_uop_ctrl_is_load : i1, in %io_req_bits_uop_ctrl_is_sta : i1, in %io_req_bits_uop_ctrl_is_std : i1, in %io_req_bits_uop_iw_state : i2, in %io_req_bits_uop_iw_p1_poisoned : i1, in %io_req_bits_uop_iw_p2_poisoned : i1, in %io_req_bits_uop_is_br : i1, in %io_req_bits_uop_is_jalr : i1, in %io_req_bits_uop_is_jal : i1, in %io_req_bits_uop_is_sfb : i1, in %io_req_bits_uop_br_mask : i8, in %io_req_bits_uop_br_tag : i3, in %io_req_bits_uop_ftq_idx : i4, in %io_req_bits_uop_edge_inst : i1, in %io_req_bits_uop_pc_lob : i6, in %io_req_bits_uop_taken : i1, in %io_req_bits_uop_imm_packed : i20, in %io_req_bits_uop_csr_addr : i12, in %io_req_bits_uop_rob_idx : i5, in %io_req_bits_uop_ldq_idx : i3, in %io_req_bits_uop_stq_idx : i3, in %io_req_bits_uop_rxq_idx : i2, in %io_req_bits_uop_pdst : i6, in %io_req_bits_uop_prs1 : i6, in %io_req_bits_uop_prs2 : i6, in %io_req_bits_uop_prs3 : i6, in %io_req_bits_uop_ppred : i4, in %io_req_bits_uop_prs1_busy : i1, in %io_req_bits_uop_prs2_busy : i1, in %io_req_bits_uop_prs3_busy : i1, in %io_req_bits_uop_ppred_busy : i1, in %io_req_bits_uop_stale_pdst : i6, in %io_req_bits_uop_exception : i1, in %io_req_bits_uop_exc_cause : i64, in %io_req_bits_uop_bypassable : i1, in %io_req_bits_uop_mem_cmd : i5, in %io_req_bits_uop_mem_size : i2, in %io_req_bits_uop_mem_signed : i1, in %io_req_bits_uop_is_fence : i1, in %io_req_bits_uop_is_fencei : i1, in %io_req_bits_uop_is_amo : i1, in %io_req_bits_uop_uses_ldq : i1, in %io_req_bits_uop_uses_stq : i1, in %io_req_bits_uop_is_sys_pc2epc : i1, in %io_req_bits_uop_is_unique : i1, in %io_req_bits_uop_flush_on_commit : i1, in %io_req_bits_uop_ldst_is_rs1 : i1, in %io_req_bits_uop_ldst : i6, in %io_req_bits_uop_lrs1 : i6, in %io_req_bits_uop_lrs2 : i6, in %io_req_bits_uop_lrs3 : i6, in %io_req_bits_uop_ldst_val : i1, in %io_req_bits_uop_dst_rtype : i2, in %io_req_bits_uop_lrs1_rtype : i2, in %io_req_bits_uop_lrs2_rtype : i2, in %io_req_bits_uop_frs3_en : i1, in %io_req_bits_uop_fp_val : i1, in %io_req_bits_uop_fp_single : i1, in %io_req_bits_uop_xcpt_pf_if : i1, in %io_req_bits_uop_xcpt_ae_if : i1, in %io_req_bits_uop_xcpt_ma_if : i1, in %io_req_bits_uop_bp_debug_if : i1, in %io_req_bits_uop_bp_xcpt_if : i1, in %io_req_bits_uop_debug_fsrc : i2, in %io_req_bits_uop_debug_tsrc : i2, in %io_req_bits_rs1_data : i65, in %io_req_bits_rs2_data : i65, in %io_req_bits_rs3_data : i65, in %io_req_bits_fcsr_rm : i3, out io_resp_valid : i1, out io_resp_bits_uop_uopc : i7, out io_resp_bits_uop_inst : i32, out io_resp_bits_uop_debug_inst : i32, out io_resp_bits_uop_is_rvc : i1, out io_resp_bits_uop_debug_pc : i40, out io_resp_bits_uop_iq_type : i3, out io_resp_bits_uop_fu_code : i10, out io_resp_bits_uop_ctrl_br_type : i4, out io_resp_bits_uop_ctrl_op1_sel : i2, out io_resp_bits_uop_ctrl_op2_sel : i3, out io_resp_bits_uop_ctrl_imm_sel : i3, out io_resp_bits_uop_ctrl_op_fcn : i5, out io_resp_bits_uop_ctrl_fcn_dw : i1, out io_resp_bits_uop_ctrl_csr_cmd : i3, out io_resp_bits_uop_ctrl_is_load : i1, out io_resp_bits_uop_ctrl_is_sta : i1, out io_resp_bits_uop_ctrl_is_std : i1, out io_resp_bits_uop_iw_state : i2, out io_resp_bits_uop_iw_p1_poisoned : i1, out io_resp_bits_uop_iw_p2_poisoned : i1, out io_resp_bits_uop_is_br : i1, out io_resp_bits_uop_is_jalr : i1, out io_resp_bits_uop_is_jal : i1, out io_resp_bits_uop_is_sfb : i1, out io_resp_bits_uop_br_mask : i8, out io_resp_bits_uop_br_tag : i3, out io_resp_bits_uop_ftq_idx : i4, out io_resp_bits_uop_edge_inst : i1, out io_resp_bits_uop_pc_lob : i6, out io_resp_bits_uop_taken : i1, out io_resp_bits_uop_imm_packed : i20, out io_resp_bits_uop_csr_addr : i12, out io_resp_bits_uop_rob_idx : i5, out io_resp_bits_uop_ldq_idx : i3, out io_resp_bits_uop_stq_idx : i3, out io_resp_bits_uop_rxq_idx : i2, out io_resp_bits_uop_pdst : i6, out io_resp_bits_uop_prs1 : i6, out io_resp_bits_uop_prs2 : i6, out io_resp_bits_uop_prs3 : i6, out io_resp_bits_uop_ppred : i4, out io_resp_bits_uop_prs1_busy : i1, out io_resp_bits_uop_prs2_busy : i1, out io_resp_bits_uop_prs3_busy : i1, out io_resp_bits_uop_ppred_busy : i1, out io_resp_bits_uop_stale_pdst : i6, out io_resp_bits_uop_exception : i1, out io_resp_bits_uop_exc_cause : i64, out io_resp_bits_uop_bypassable : i1, out io_resp_bits_uop_mem_cmd : i5, out io_resp_bits_uop_mem_size : i2, out io_resp_bits_uop_mem_signed : i1, out io_resp_bits_uop_is_fence : i1, out io_resp_bits_uop_is_fencei : i1, out io_resp_bits_uop_is_amo : i1, out io_resp_bits_uop_uses_ldq : i1, out io_resp_bits_uop_uses_stq : i1, out io_resp_bits_uop_is_sys_pc2epc : i1, out io_resp_bits_uop_is_unique : i1, out io_resp_bits_uop_flush_on_commit : i1, out io_resp_bits_uop_ldst_is_rs1 : i1, out io_resp_bits_uop_ldst : i6, out io_resp_bits_uop_lrs1 : i6, out io_resp_bits_uop_lrs2 : i6, out io_resp_bits_uop_lrs3 : i6, out io_resp_bits_uop_ldst_val : i1, out io_resp_bits_uop_dst_rtype : i2, out io_resp_bits_uop_lrs1_rtype : i2, out io_resp_bits_uop_lrs2_rtype : i2, out io_resp_bits_uop_frs3_en : i1, out io_resp_bits_uop_fp_val : i1, out io_resp_bits_uop_fp_single : i1, out io_resp_bits_uop_xcpt_pf_if : i1, out io_resp_bits_uop_xcpt_ae_if : i1, out io_resp_bits_uop_xcpt_ma_if : i1, out io_resp_bits_uop_bp_debug_if : i1, out io_resp_bits_uop_bp_xcpt_if : i1, out io_resp_bits_uop_debug_fsrc : i2, out io_resp_bits_uop_debug_tsrc : i2, out io_resp_bits_data : i65, out io_resp_bits_predicated : i1, out io_resp_bits_fflags_valid : i1, out io_resp_bits_fflags_bits_uop_uopc : i7, out io_resp_bits_fflags_bits_uop_inst : i32, out io_resp_bits_fflags_bits_uop_debug_inst : i32, out io_resp_bits_fflags_bits_uop_is_rvc : i1, out io_resp_bits_fflags_bits_uop_debug_pc : i40, out io_resp_bits_fflags_bits_uop_iq_type : i3, out io_resp_bits_fflags_bits_uop_fu_code : i10, out io_resp_bits_fflags_bits_uop_ctrl_br_type : i4, out io_resp_bits_fflags_bits_uop_ctrl_op1_sel : i2, out io_resp_bits_fflags_bits_uop_ctrl_op2_sel : i3, out io_resp_bits_fflags_bits_uop_ctrl_imm_sel : i3, out io_resp_bits_fflags_bits_uop_ctrl_op_fcn : i5, out io_resp_bits_fflags_bits_uop_ctrl_fcn_dw : i1, out io_resp_bits_fflags_bits_uop_ctrl_csr_cmd : i3, out io_resp_bits_fflags_bits_uop_ctrl_is_load : i1, out io_resp_bits_fflags_bits_uop_ctrl_is_sta : i1, out io_resp_bits_fflags_bits_uop_ctrl_is_std : i1, out io_resp_bits_fflags_bits_uop_iw_state : i2, out io_resp_bits_fflags_bits_uop_iw_p1_poisoned : i1, out io_resp_bits_fflags_bits_uop_iw_p2_poisoned : i1, out io_resp_bits_fflags_bits_uop_is_br : i1, out io_resp_bits_fflags_bits_uop_is_jalr : i1, out io_resp_bits_fflags_bits_uop_is_jal : i1, out io_resp_bits_fflags_bits_uop_is_sfb : i1, out io_resp_bits_fflags_bits_uop_br_mask : i8, out io_resp_bits_fflags_bits_uop_br_tag : i3, out io_resp_bits_fflags_bits_uop_ftq_idx : i4, out io_resp_bits_fflags_bits_uop_edge_inst : i1, out io_resp_bits_fflags_bits_uop_pc_lob : i6, out io_resp_bits_fflags_bits_uop_taken : i1, out io_resp_bits_fflags_bits_uop_imm_packed : i20, out io_resp_bits_fflags_bits_uop_csr_addr : i12, out io_resp_bits_fflags_bits_uop_rob_idx : i5, out io_resp_bits_fflags_bits_uop_ldq_idx : i3, out io_resp_bits_fflags_bits_uop_stq_idx : i3, out io_resp_bits_fflags_bits_uop_rxq_idx : i2, out io_resp_bits_fflags_bits_uop_pdst : i6, out io_resp_bits_fflags_bits_uop_prs1 : i6, out io_resp_bits_fflags_bits_uop_prs2 : i6, out io_resp_bits_fflags_bits_uop_prs3 : i6, out io_resp_bits_fflags_bits_uop_ppred : i4, out io_resp_bits_fflags_bits_uop_prs1_busy : i1, out io_resp_bits_fflags_bits_uop_prs2_busy : i1, out io_resp_bits_fflags_bits_uop_prs3_busy : i1, out io_resp_bits_fflags_bits_uop_ppred_busy : i1, out io_resp_bits_fflags_bits_uop_stale_pdst : i6, out io_resp_bits_fflags_bits_uop_exception : i1, out io_resp_bits_fflags_bits_uop_exc_cause : i64, out io_resp_bits_fflags_bits_uop_bypassable : i1, out io_resp_bits_fflags_bits_uop_mem_cmd : i5, out io_resp_bits_fflags_bits_uop_mem_size : i2, out io_resp_bits_fflags_bits_uop_mem_signed : i1, out io_resp_bits_fflags_bits_uop_is_fence : i1, out io_resp_bits_fflags_bits_uop_is_fencei : i1, out io_resp_bits_fflags_bits_uop_is_amo : i1, out io_resp_bits_fflags_bits_uop_uses_ldq : i1, out io_resp_bits_fflags_bits_uop_uses_stq : i1, out io_resp_bits_fflags_bits_uop_is_sys_pc2epc : i1, out io_resp_bits_fflags_bits_uop_is_unique : i1, out io_resp_bits_fflags_bits_uop_flush_on_commit : i1, out io_resp_bits_fflags_bits_uop_ldst_is_rs1 : i1, out io_resp_bits_fflags_bits_uop_ldst : i6, out io_resp_bits_fflags_bits_uop_lrs1 : i6, out io_resp_bits_fflags_bits_uop_lrs2 : i6, out io_resp_bits_fflags_bits_uop_lrs3 : i6, out io_resp_bits_fflags_bits_uop_ldst_val : i1, out io_resp_bits_fflags_bits_uop_dst_rtype : i2, out io_resp_bits_fflags_bits_uop_lrs1_rtype : i2, out io_resp_bits_fflags_bits_uop_lrs2_rtype : i2, out io_resp_bits_fflags_bits_uop_frs3_en : i1, out io_resp_bits_fflags_bits_uop_fp_val : i1, out io_resp_bits_fflags_bits_uop_fp_single : i1, out io_resp_bits_fflags_bits_uop_xcpt_pf_if : i1, out io_resp_bits_fflags_bits_uop_xcpt_ae_if : i1, out io_resp_bits_fflags_bits_uop_xcpt_ma_if : i1, out io_resp_bits_fflags_bits_uop_bp_debug_if : i1, out io_resp_bits_fflags_bits_uop_bp_xcpt_if : i1, out io_resp_bits_fflags_bits_uop_debug_fsrc : i2, out io_resp_bits_fflags_bits_uop_debug_tsrc : i2, out io_resp_bits_fflags_bits_flags : i5) {
    %c-3_i3 = hw.constant -3 : i3
    %c1792_i12 = hw.constant 1792 : i12
    %c0_i29 = hw.constant 0 : i29
    %c1_i2 = hw.constant 1 : i2
    %c-1_i5 = hw.constant -1 : i5
    %c-1_i3 = hw.constant -1 : i3
    %true = hw.constant true
    %c16143152864309542912_i65 = hw.constant 16143152864309542912 : i65
    %c-58_i7 = hw.constant -58 : i7
    %c3762290688_i33 = hw.constant 3762290688 : i33
    %c-1_i20 = hw.constant -1 : i20
    %c0_i64 = hw.constant 0 : i64
    %c0_i12 = hw.constant 0 : i12
    %c0_i20 = hw.constant 0 : i20
    %c0_i6 = hw.constant 0 : i6
    %c0_i8 = hw.constant 0 : i8
    %c0_i5 = hw.constant 0 : i5
    %c0_i2 = hw.constant 0 : i2
    %c0_i4 = hw.constant 0 : i4
    %c0_i10 = hw.constant 0 : i10
    %c0_i3 = hw.constant 0 : i3
    %c0_i40 = hw.constant 0 : i40
    %c0_i32 = hw.constant 0 : i32
    %c0_i7 = hw.constant 0 : i7
    %c0_i33 = hw.constant 0 : i33
    %c-1_i12 = hw.constant -1 : i12
    %false = hw.constant false
    %fp_decoder.io_sigs_ren2, %fp_decoder.io_sigs_ren3, %fp_decoder.io_sigs_swap23, %fp_decoder.io_sigs_typeTagIn, %fp_decoder.io_sigs_typeTagOut, %fp_decoder.io_sigs_toint, %fp_decoder.io_sigs_fastpipe, %fp_decoder.io_sigs_fma, %fp_decoder.io_sigs_wflags = hw.instance "fp_decoder" @UOPCodeFPUDecoder_1(io_uopc: %io_req_bits_uop_uopc: i7) -> (io_sigs_ren2: i1, io_sigs_ren3: i1, io_sigs_swap23: i1, io_sigs_typeTagIn: i2, io_sigs_typeTagOut: i2, io_sigs_toint: i1, io_sigs_fastpipe: i1, io_sigs_fma: i1, io_sigs_wflags: i1) {sv.namehint = "fpmu.io_in_bits_ren2"}
    %0 = comb.extract %io_req_bits_uop_imm_packed from 0 {sv.namehint = "_fp_rm_T_2"} : (i20) -> i3
    %1 = comb.icmp bin eq %0, %c-1_i3 {sv.namehint = "_fp_rm_T_1"} : i3
    %2 = comb.mux bin %1, %io_req_bits_fcsr_rm, %0 {sv.namehint = "fp_rm"} : i3
    %dfma.io_out_valid, %dfma.io_out_bits_data, %dfma.io_out_bits_exc = hw.instance "dfma" @FPUFMAPipe_l4_f64(clock: %clock: !seq.clock, reset: %reset: i1, io_in_valid: %5: i1, io_in_bits_ren3: %fp_decoder.io_sigs_ren3: i1, io_in_bits_swap23: %fp_decoder.io_sigs_swap23: i1, io_in_bits_rm: %2: i3, io_in_bits_fmaCmd: %dfma_io_in_bits_fma_decoder.io_cmd: i2, io_in_bits_in1: %io_req_bits_rs1_data: i65, io_in_bits_in2: %io_req_bits_rs2_data: i65, io_in_bits_in3: %18: i65) -> (io_out_valid: i1, io_out_bits_data: i65, io_out_bits_exc: i5) {sv.namehint = "dfma.io_out_valid"}
    %3 = comb.and bin %io_req_valid, %fp_decoder.io_sigs_fma {sv.namehint = "_sfma_io_in_valid_T"} : i1
    %4 = comb.icmp bin eq %fp_decoder.io_sigs_typeTagOut, %c1_i2 {sv.namehint = "_fpmu_double_T_1"} : i2
    %5 = comb.and bin %3, %4 {sv.namehint = "dfma.io_in_valid"} : i1
    %6 = comb.extract %io_req_bits_rs1_data from 31 {sv.namehint = "_fpiu_io_in_bits_req_in1_prev_unswizzled_T"} : (i65) -> i1
    %7 = comb.extract %io_req_bits_rs1_data from 52 {sv.namehint = "_fpiu_io_in_bits_req_in1_prev_unswizzled_T_1"} : (i65) -> i1
    %8 = comb.extract %io_req_bits_rs1_data from 0 {sv.namehint = "_fpiu_io_in_bits_req_in1_prev_unswizzled_T_2"} : (i65) -> i31
    %9 = comb.extract %io_req_bits_rs1_data from 60 {sv.namehint = "_fpiu_io_in_bits_req_in1_prev_isbox_T"} : (i65) -> i5
    %10 = comb.extract %io_req_bits_rs2_data from 31 {sv.namehint = "_fpiu_io_in_bits_req_in2_prev_unswizzled_T"} : (i65) -> i1
    %11 = comb.extract %io_req_bits_rs2_data from 52 {sv.namehint = "_fpiu_io_in_bits_req_in2_prev_unswizzled_T_1"} : (i65) -> i1
    %12 = comb.extract %io_req_bits_rs2_data from 0 {sv.namehint = "_fpiu_io_in_bits_req_in2_prev_unswizzled_T_2"} : (i65) -> i31
    %13 = comb.extract %io_req_bits_rs2_data from 60 {sv.namehint = "_fpiu_io_in_bits_req_in2_prev_isbox_T"} : (i65) -> i5
    %14 = comb.extract %io_req_bits_rs3_data from 31 {sv.namehint = "_fpiu_io_in_bits_req_in3_prev_unswizzled_T"} : (i65) -> i1
    %15 = comb.extract %io_req_bits_rs3_data from 52 {sv.namehint = "_fpiu_io_in_bits_req_in3_prev_unswizzled_T_1"} : (i65) -> i1
    %16 = comb.extract %io_req_bits_rs3_data from 0 {sv.namehint = "_fpiu_io_in_bits_req_in3_prev_unswizzled_T_2"} : (i65) -> i31
    %17 = comb.extract %io_req_bits_rs3_data from 60 {sv.namehint = "_fpiu_io_in_bits_req_in3_prev_isbox_T"} : (i65) -> i5
    %18 = comb.mux bin %fp_decoder.io_sigs_swap23, %io_req_bits_rs2_data, %io_req_bits_rs3_data {sv.namehint = "dfma_io_in_bits_req_in3"} : i65
    %19 = comb.extract %io_req_bits_uop_imm_packed from 8 {sv.namehint = "fpiu_io_in_bits_req_typ"} : (i20) -> i2
    %20 = comb.icmp bin ne %fp_decoder.io_sigs_typeTagIn, %c0_i2 {sv.namehint = "_fpiu_io_in_bits_req_fmt_T_1"} : i2
    %21 = comb.icmp bin eq %io_req_bits_uop_uopc, %c-58_i7 {sv.namehint = "_fpiu_io_in_bits_T"} : i7
    %dfma_io_in_bits_fma_decoder.io_cmd = hw.instance "dfma_io_in_bits_fma_decoder" @FMADecoder(io_uopc: %io_req_bits_uop_uopc: i7) -> (io_cmd: i2) {sv.namehint = "dfma_io_in_bits_fma_decoder.io_cmd"}
    %sfma.io_out_valid, %sfma.io_out_bits_data, %sfma.io_out_bits_exc = hw.instance "sfma" @FPUFMAPipe_l4_f32(clock: %clock: !seq.clock, reset: %reset: i1, io_in_valid: %23: i1, io_in_bits_ren3: %fp_decoder.io_sigs_ren3: i1, io_in_bits_swap23: %fp_decoder.io_sigs_swap23: i1, io_in_bits_rm: %2: i3, io_in_bits_fmaCmd: %sfma_io_in_bits_fma_decoder.io_cmd: i2, io_in_bits_in1: %28: i65, io_in_bits_in2: %33: i65, io_in_bits_in3: %39: i65) -> (io_out_valid: i1, io_out_bits_data: i65, io_out_bits_exc: i5) {sv.namehint = "sfma.io_out_valid"}
    %22 = comb.icmp bin eq %fp_decoder.io_sigs_typeTagOut, %c0_i2 {sv.namehint = "_sfma_io_in_valid_T_1"} : i2
    %23 = comb.and bin %3, %22 {sv.namehint = "sfma.io_in_valid"} : i1
    %24 = comb.concat %6, %7, %8 {sv.namehint = "sfma_io_in_bits_req_in1_floats_0"} : i1, i1, i31
    %25 = comb.icmp bin eq %9, %c-1_i5 {sv.namehint = "sfma_io_in_bits_req_in1_oks_0"} : i5
    %26 = comb.mux bin %25, %c0_i33, %c3762290688_i33 {sv.namehint = "_sfma_io_in_bits_req_in1_T"} : i33
    %27 = comb.or bin %24, %26 {sv.namehint = "_sfma_io_in_bits_req_in1_T_1"} : i33
    %28 = comb.concat %c0_i32, %27 {sv.namehint = "sfma_io_in_bits_req_in1"} : i32, i33
    %29 = comb.concat %10, %11, %12 {sv.namehint = "sfma_io_in_bits_req_in2_floats_0"} : i1, i1, i31
    %30 = comb.icmp bin eq %13, %c-1_i5 {sv.namehint = "sfma_io_in_bits_req_in2_oks_0"} : i5
    %31 = comb.mux bin %30, %c0_i33, %c3762290688_i33 {sv.namehint = "_sfma_io_in_bits_req_in2_T"} : i33
    %32 = comb.or bin %29, %31 {sv.namehint = "_sfma_io_in_bits_req_in2_T_1"} : i33
    %33 = comb.concat %c0_i32, %32 {sv.namehint = "sfma_io_in_bits_req_in2"} : i32, i33
    %34 = comb.concat %14, %15, %16 {sv.namehint = "sfma_io_in_bits_req_in3_floats_0"} : i1, i1, i31
    %35 = comb.icmp bin eq %17, %c-1_i5 {sv.namehint = "sfma_io_in_bits_req_in3_oks_0"} : i5
    %36 = comb.mux bin %35, %c0_i33, %c3762290688_i33 {sv.namehint = "_sfma_io_in_bits_req_in3_T"} : i33
    %37 = comb.or bin %34, %36 {sv.namehint = "_sfma_io_in_bits_req_in3_T_1"} : i33
    %38 = comb.mux bin %fp_decoder.io_sigs_swap23, %32, %37 : i33
    %39 = comb.concat %c0_i32, %38 {sv.namehint = "sfma_io_in_bits_req_in3"} : i32, i33
    %sfma_io_in_bits_fma_decoder.io_cmd = hw.instance "sfma_io_in_bits_fma_decoder" @FMADecoder(io_uopc: %io_req_bits_uop_uopc: i7) -> (io_cmd: i2) {sv.namehint = "sfma_io_in_bits_fma_decoder.io_cmd"}
    %fpiu.io_out_bits_lt, %fpiu.io_out_bits_toint, %fpiu.io_out_bits_exc = hw.instance "fpiu" @FPToInt(clock: %clock: !seq.clock, io_in_valid: %42: i1, io_in_bits_ren2: %fp_decoder.io_sigs_ren2: i1, io_in_bits_typeTagOut: %fp_decoder.io_sigs_typeTagOut: i2, io_in_bits_wflags: %fp_decoder.io_sigs_wflags: i1, io_in_bits_rm: %2: i3, io_in_bits_typ: %19: i2, io_in_bits_fmt: %82: i2, io_in_bits_in1: %61: i65, io_in_bits_in2: %80: i65) -> (io_out_bits_lt: i1, io_out_bits_toint: i64, io_out_bits_exc: i5) {sv.namehint = "fpmu.io_lt"}
    %40 = comb.and bin %fp_decoder.io_sigs_fastpipe, %fp_decoder.io_sigs_wflags {sv.namehint = "_fpiu_io_in_valid_T"} : i1
    %41 = comb.or bin %fp_decoder.io_sigs_toint, %40 {sv.namehint = "_fpiu_io_in_valid_T_1"} : i1
    %42 = comb.and bin %io_req_valid, %41 {sv.namehint = "fpiu.io_in_valid"} : i1
    %43 = comb.extract %io_req_bits_rs1_data from 0 {sv.namehint = "fpiu_io_in_bits_req_in1_prev_prev_fractIn"} : (i65) -> i23
    %44 = comb.extract %io_req_bits_rs1_data from 23 : (i65) -> i8
    %45 = comb.extract %io_req_bits_rs1_data from 29 : (i65) -> i2
    %46 = comb.concat %7, %45 {sv.namehint = "fpiu_io_in_bits_req_in1_prev_prev_expOut_expCode"} : i1, i2
    %47 = comb.concat %c0_i3, %7, %44 : i3, i1, i8
    %48 = comb.add %47, %c1792_i12 {sv.namehint = "_fpiu_io_in_bits_req_in1_prev_prev_expOut_commonCase_T_2"} : i12
    %49 = comb.icmp bin eq %46, %c0_i3 {sv.namehint = "_fpiu_io_in_bits_req_in1_prev_prev_expOut_T"} : i3
    %50 = comb.icmp bin ugt %46, %c-3_i3 {sv.namehint = "_fpiu_io_in_bits_req_in1_prev_prev_expOut_T_1"} : i3
    %51 = comb.or bin %49, %50 {sv.namehint = "_fpiu_io_in_bits_req_in1_prev_prev_expOut_T_2"} : i1
    %52 = comb.extract %48 from 0 {sv.namehint = "_fpiu_io_in_bits_req_in1_prev_prev_expOut_T_3"} : (i12) -> i9
    %53 = comb.concat %7, %45, %52 {sv.namehint = "_fpiu_io_in_bits_req_in1_prev_prev_expOut_T_4"} : i1, i2, i9
    %54 = comb.mux bin %51, %53, %48 {sv.namehint = "fpiu_io_in_bits_req_in1_prev_prev_expOut"} : i12
    %55 = comb.concat %6, %54, %43, %c0_i29 {sv.namehint = "fpiu_io_in_bits_req_in1_floats_0"} : i1, i12, i23, i29
    %56 = comb.icmp bin eq %9, %c-1_i5 {sv.namehint = "fpiu_io_in_bits_req_in1_oks_0"} : i5
    %57 = comb.extract %fp_decoder.io_sigs_typeTagIn from 0 {sv.namehint = "fpiu_io_in_bits_req_in1_truncIdx"} : (i2) -> i1
    %58 = comb.or %57, %56 {sv.namehint = "_fpiu_io_in_bits_req_in1_T_1"} : i1
    %59 = comb.extract %fp_decoder.io_sigs_typeTagIn from 0 {sv.namehint = "fpiu_io_in_bits_req_in1_truncIdx_1"} : (i2) -> i1
    %60 = comb.mux bin %59, %io_req_bits_rs1_data, %55 {sv.namehint = "_fpiu_io_in_bits_req_in1_T_3"} : i65
    %61 = comb.mux bin %58, %60, %c16143152864309542912_i65 {sv.namehint = "fpmu.io_in_bits_in1"} : i65
    %62 = comb.extract %io_req_bits_rs2_data from 0 {sv.namehint = "fpiu_io_in_bits_req_in2_prev_prev_fractIn"} : (i65) -> i23
    %63 = comb.extract %io_req_bits_rs2_data from 23 : (i65) -> i8
    %64 = comb.extract %io_req_bits_rs2_data from 29 : (i65) -> i2
    %65 = comb.concat %11, %64 {sv.namehint = "fpiu_io_in_bits_req_in2_prev_prev_expOut_expCode"} : i1, i2
    %66 = comb.concat %c0_i3, %11, %63 : i3, i1, i8
    %67 = comb.add %66, %c1792_i12 {sv.namehint = "_fpiu_io_in_bits_req_in2_prev_prev_expOut_commonCase_T_2"} : i12
    %68 = comb.icmp bin eq %65, %c0_i3 {sv.namehint = "_fpiu_io_in_bits_req_in2_prev_prev_expOut_T"} : i3
    %69 = comb.icmp bin ugt %65, %c-3_i3 {sv.namehint = "_fpiu_io_in_bits_req_in2_prev_prev_expOut_T_1"} : i3
    %70 = comb.or bin %68, %69 {sv.namehint = "_fpiu_io_in_bits_req_in2_prev_prev_expOut_T_2"} : i1
    %71 = comb.extract %67 from 0 {sv.namehint = "_fpiu_io_in_bits_req_in2_prev_prev_expOut_T_3"} : (i12) -> i9
    %72 = comb.concat %11, %64, %71 {sv.namehint = "_fpiu_io_in_bits_req_in2_prev_prev_expOut_T_4"} : i1, i2, i9
    %73 = comb.mux bin %70, %72, %67 {sv.namehint = "fpiu_io_in_bits_req_in2_prev_prev_expOut"} : i12
    %74 = comb.concat %10, %73, %62, %c0_i29 {sv.namehint = "fpiu_io_in_bits_req_in2_floats_0"} : i1, i12, i23, i29
    %75 = comb.icmp bin eq %13, %c-1_i5 {sv.namehint = "fpiu_io_in_bits_req_in2_oks_0"} : i5
    %76 = comb.extract %fp_decoder.io_sigs_typeTagIn from 0 {sv.namehint = "fpiu_io_in_bits_req_in2_truncIdx"} : (i2) -> i1
    %77 = comb.or %76, %75 {sv.namehint = "_fpiu_io_in_bits_req_in2_T_1"} : i1
    %78 = comb.extract %fp_decoder.io_sigs_typeTagIn from 0 {sv.namehint = "fpiu_io_in_bits_req_in2_truncIdx_1"} : (i2) -> i1
    %79 = comb.mux bin %78, %io_req_bits_rs2_data, %74 {sv.namehint = "_fpiu_io_in_bits_req_in2_T_3"} : i65
    %80 = comb.mux bin %77, %79, %c16143152864309542912_i65 {sv.namehint = "fpmu.io_in_bits_in2"} : i65
    %81 = comb.concat %false, %20 : i1, i1
    %82 = comb.mux bin %21, %c0_i2, %81 {sv.namehint = "fpiu_io_in_bits_req_fmt"} : i2
    %83 = comb.xor bin %fp_decoder.io_sigs_fastpipe, %true {sv.namehint = "_fpiu_out_T"} : i1
    %84 = comb.and bin %42, %83 {sv.namehint = "_fpiu_out_T_1"} : i1
    %fpiu_out_REG = seq.firreg %84 clock %clock {firrtl.random_init_start = 0 : ui64} : i1
    %fpiu_out_pipe_v = seq.firreg %fpiu_out_REG clock %clock reset sync %reset, %false {firrtl.random_init_start = 1 : ui64} : i1
    %fpiu_out_pipe_b_toint = seq.firreg %85 clock %clock {firrtl.random_init_start = 290 : ui64} : i64
    %fpiu_out_pipe_b_exc = seq.firreg %86 clock %clock {firrtl.random_init_start = 354 : ui64} : i5
    %85 = comb.mux bin %fpiu_out_REG, %fpiu.io_out_bits_toint, %fpiu_out_pipe_b_toint : i64
    %86 = comb.mux bin %fpiu_out_REG, %fpiu.io_out_bits_exc, %fpiu_out_pipe_b_exc : i5
    %fpiu_out_pipe_pipe_v = seq.firreg %fpiu_out_pipe_v clock %clock reset sync %reset, %false {firrtl.random_init_start = 359 : ui64} : i1
    %fpiu_out_pipe_pipe_b_toint = seq.firreg %87 clock %clock {firrtl.random_init_start = 648 : ui64} : i64
    %fpiu_out_pipe_pipe_b_exc = seq.firreg %88 clock %clock {firrtl.random_init_start = 712 : ui64} : i5
    %87 = comb.mux bin %fpiu_out_pipe_v, %fpiu_out_pipe_b_toint, %fpiu_out_pipe_pipe_b_toint : i64
    %88 = comb.mux bin %fpiu_out_pipe_v, %fpiu_out_pipe_b_exc, %fpiu_out_pipe_pipe_b_exc : i5
    %fpiu_out_pipe_pipe_pipe_v = seq.firreg %fpiu_out_pipe_pipe_v clock %clock reset sync %reset, %false {firrtl.random_init_start = 717 : ui64, sv.namehint = "fpiu_out_valid"} : i1
    %fpiu_out_pipe_pipe_pipe_b_toint = seq.firreg %89 clock %clock {firrtl.random_init_start = 1006 : ui64, sv.namehint = "fpiu_out_bits_toint"} : i64
    %fpiu_out_pipe_pipe_pipe_b_exc = seq.firreg %90 clock %clock {firrtl.random_init_start = 1070 : ui64, sv.namehint = "fpiu_result_exc"} : i5
    %89 = comb.mux bin %fpiu_out_pipe_pipe_v, %fpiu_out_pipe_pipe_b_toint, %fpiu_out_pipe_pipe_pipe_b_toint : i64
    %90 = comb.mux bin %fpiu_out_pipe_pipe_v, %fpiu_out_pipe_pipe_b_exc, %fpiu_out_pipe_pipe_pipe_b_exc : i5
    %91 = comb.concat %false, %fpiu_out_pipe_pipe_pipe_b_toint {sv.namehint = "fpiu_result_data"} : i1, i64
    %fpmu.io_out_valid, %fpmu.io_out_bits_data, %fpmu.io_out_bits_exc = hw.instance "fpmu" @FPToFP(clock: %clock: !seq.clock, reset: %reset: i1, io_in_valid: %92: i1, io_in_bits_ren2: %fp_decoder.io_sigs_ren2: i1, io_in_bits_typeTagOut: %fp_decoder.io_sigs_typeTagOut: i2, io_in_bits_wflags: %fp_decoder.io_sigs_wflags: i1, io_in_bits_rm: %2: i3, io_in_bits_in1: %61: i65, io_in_bits_in2: %80: i65, io_lt: %fpiu.io_out_bits_lt: i1) -> (io_out_valid: i1, io_out_bits_data: i65, io_out_bits_exc: i5) {sv.namehint = "fpmu.io_out_valid"}
    %92 = comb.and bin %io_req_valid, %fp_decoder.io_sigs_fastpipe {sv.namehint = "fpmu.io_in_valid"} : i1
    %fpmu_double_pipe_v = seq.firreg %92 clock %clock reset sync %reset, %false {firrtl.random_init_start = 1075 : ui64} : i1
    %fpmu_double_pipe_b = seq.firreg %93 clock %clock {firrtl.random_init_start = 1076 : ui64} : i1
    %93 = comb.mux bin %92, %4, %fpmu_double_pipe_b : i1
    %fpmu_double_pipe_pipe_v = seq.firreg %fpmu_double_pipe_v clock %clock reset sync %reset, %false {firrtl.random_init_start = 1077 : ui64} : i1
    %fpmu_double_pipe_pipe_b = seq.firreg %94 clock %clock {firrtl.random_init_start = 1078 : ui64} : i1
    %94 = comb.mux bin %fpmu_double_pipe_v, %fpmu_double_pipe_b, %fpmu_double_pipe_pipe_b : i1
    %fpmu_double_pipe_pipe_pipe_v = seq.firreg %fpmu_double_pipe_pipe_v clock %clock reset sync %reset, %false {firrtl.random_init_start = 1079 : ui64} : i1
    %fpmu_double_pipe_pipe_pipe_b = seq.firreg %95 clock %clock {firrtl.random_init_start = 1080 : ui64} : i1
    %95 = comb.mux bin %fpmu_double_pipe_pipe_v, %fpmu_double_pipe_pipe_b, %fpmu_double_pipe_pipe_pipe_b : i1
    %fpmu_double_pipe_pipe_pipe_pipe_b = seq.firreg %96 clock %clock {firrtl.random_init_start = 1082 : ui64, sv.namehint = "fpmu_double_pipe_pipe_pipe_pipe_b"} : i1
    %96 = comb.mux bin %fpmu_double_pipe_pipe_pipe_v, %fpmu_double_pipe_pipe_pipe_b, %fpmu_double_pipe_pipe_pipe_pipe_b : i1
    %97 = comb.or bin %fpiu_out_pipe_pipe_pipe_v, %fpmu.io_out_valid, %sfma.io_out_valid, %dfma.io_out_valid {sv.namehint = "io_resp_valid"} : i1
    %98 = comb.extract %sfma.io_out_bits_data from 31 {sv.namehint = "_fpu_out_data_opts_bigger_swizzledNaN_T_5"} : (i65) -> i1
    %99 = comb.extract %sfma.io_out_bits_data from 32 {sv.namehint = "_fpu_out_data_opts_bigger_swizzledNaN_T_6"} : (i65) -> i1
    %100 = comb.extract %sfma.io_out_bits_data from 0 {sv.namehint = "_fpu_out_data_opts_bigger_swizzledNaN_T_7"} : (i65) -> i31
    %101 = comb.concat %c-1_i12, %98, %c-1_i20, %99, %100 {sv.namehint = "fpu_out_data_opts_0_1"} : i12, i1, i20, i1, i31
    %102 = comb.extract %fpmu.io_out_bits_data from 31 {sv.namehint = "_fpu_out_data_opts_bigger_swizzledNaN_T_9"} : (i65) -> i1
    %103 = comb.extract %fpmu.io_out_bits_data from 32 {sv.namehint = "_fpu_out_data_opts_bigger_swizzledNaN_T_10"} : (i65) -> i1
    %104 = comb.extract %fpmu.io_out_bits_data from 0 {sv.namehint = "_fpu_out_data_opts_bigger_swizzledNaN_T_11"} : (i65) -> i31
    %105 = comb.concat %c-1_i12, %102, %c-1_i20, %103, %104 {sv.namehint = "fpu_out_data_opts_0_2"} : i12, i1, i20, i1, i31
    %106 = comb.mux bin %fpmu_double_pipe_pipe_pipe_pipe_b, %fpmu.io_out_bits_data, %105 {sv.namehint = "_fpu_out_data_T_5"} : i65
    %107 = comb.mux bin %fpiu_out_pipe_pipe_pipe_v, %91, %106 {sv.namehint = "_fpu_out_data_T_6"} : i65
    %108 = comb.mux bin %sfma.io_out_valid, %101, %107 {sv.namehint = "_fpu_out_data_T_7"} : i65
    %109 = comb.mux bin %dfma.io_out_valid, %dfma.io_out_bits_data, %108 {sv.namehint = "fpu_out_data"} : i65
    %110 = comb.mux bin %fpiu_out_pipe_pipe_pipe_v, %fpiu_out_pipe_pipe_pipe_b_exc, %fpmu.io_out_bits_exc {sv.namehint = "_fpu_out_exc_T"} : i5
    %111 = comb.mux bin %sfma.io_out_valid, %sfma.io_out_bits_exc, %110 {sv.namehint = "_fpu_out_exc_T_1"} : i5
    %112 = comb.mux bin %dfma.io_out_valid, %dfma.io_out_bits_exc, %111 {sv.namehint = "fpu_out_exc"} : i5
    hw.output %97, %c0_i7, %c0_i32, %c0_i32, %false, %c0_i40, %c0_i3, %c0_i10, %c0_i4, %c0_i2, %c0_i3, %c0_i3, %c0_i5, %false, %c0_i3, %false, %false, %false, %c0_i2, %false, %false, %false, %false, %false, %false, %c0_i8, %c0_i3, %c0_i4, %false, %c0_i6, %false, %c0_i20, %c0_i12, %c0_i5, %c0_i3, %c0_i3, %c0_i2, %c0_i6, %c0_i6, %c0_i6, %c0_i6, %c0_i4, %false, %false, %false, %false, %c0_i6, %false, %c0_i64, %false, %c0_i5, %c0_i2, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %c0_i6, %c0_i6, %c0_i6, %c0_i6, %false, %c0_i2, %c0_i2, %c0_i2, %false, %false, %false, %false, %false, %false, %false, %false, %c0_i2, %c0_i2, %109, %false, %97, %c0_i7, %c0_i32, %c0_i32, %false, %c0_i40, %c0_i3, %c0_i10, %c0_i4, %c0_i2, %c0_i3, %c0_i3, %c0_i5, %false, %c0_i3, %false, %false, %false, %c0_i2, %false, %false, %false, %false, %false, %false, %c0_i8, %c0_i3, %c0_i4, %false, %c0_i6, %false, %c0_i20, %c0_i12, %c0_i5, %c0_i3, %c0_i3, %c0_i2, %c0_i6, %c0_i6, %c0_i6, %c0_i6, %c0_i4, %false, %false, %false, %false, %c0_i6, %false, %c0_i64, %false, %c0_i5, %c0_i2, %false, %false, %false, %false, %false, %false, %false, %false, %false, %false, %c0_i6, %c0_i6, %c0_i6, %c0_i6, %false, %c0_i2, %c0_i2, %c0_i2, %false, %false, %false, %false, %false, %false, %false, %false, %c0_i2, %c0_i2, %112 : i1, i7, i32, i32, i1, i40, i3, i10, i4, i2, i3, i3, i5, i1, i3, i1, i1, i1, i2, i1, i1, i1, i1, i1, i1, i8, i3, i4, i1, i6, i1, i20, i12, i5, i3, i3, i2, i6, i6, i6, i6, i4, i1, i1, i1, i1, i6, i1, i64, i1, i5, i2, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i6, i6, i6, i6, i1, i2, i2, i2, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i65, i1, i1, i7, i32, i32, i1, i40, i3, i10, i4, i2, i3, i3, i5, i1, i3, i1, i1, i1, i2, i1, i1, i1, i1, i1, i1, i8, i3, i4, i1, i6, i1, i20, i12, i5, i3, i3, i2, i6, i6, i6, i6, i4, i1, i1, i1, i1, i6, i1, i64, i1, i5, i2, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i6, i6, i6, i6, i1, i2, i2, i2, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i5
  }
  om.class @FPU_Class(%basepath: !om.basepath) {
    om.class.fields
  }
}
