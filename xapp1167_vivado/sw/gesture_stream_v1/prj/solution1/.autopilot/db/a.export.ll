; ModuleID = '/home/student/nl443/ece5775/project/TaikoGestureMaster/xapp1167_vivado/sw/gesture_stream_v1/prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

%0 = type { i32, i4, i4, i1, i1, i1, i1 }
%"hls::Mat<1080, 1920, 0>::init.1_ret" = type { i12, i12 }
%"hls::Mat<1080, 1920, 0>::init.2_ret" = type { i12, i12 }
%"hls::Mat<1080, 1920, 0>::init.3_ret" = type { i12, i12 }
%"hls::Mat<1080, 1920, 0>::init_ret" = type { i12, i12 }
%"hls::Mat<1080, 1920, 16>::init.1_ret" = type { i12, i12 }
%"hls::Mat<1080, 1920, 16>::init_ret" = type { i12, i12, i12, i12 }
%"struct.ap_axiu<32,1,1,1>" = type { %"struct.ap_uint<32>", %"struct.ap_uint<4>", %"struct.ap_uint<4>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>" }
%"struct.ap_fixed_base<32,32,true,SC_TRN,SC_WRAP,0>" = type { %"struct.ssdm_int<32,false>" }
%"struct.ap_int_base<1,false,true>" = type { %"struct.ssdm_int<1,false>" }
%"struct.ap_int_base<12,false,true>" = type { %"struct.ssdm_int<12,false>" }
%"struct.ap_int_base<2,false,true>" = type { %"struct.ssdm_int<2,false>" }
%"struct.ap_int_base<4,false,true>" = type { %"struct.ssdm_int<4,false>" }
%"struct.ap_uint<12>" = type { %"struct.ap_int_base<12,false,true>" }
%"struct.ap_uint<1>" = type { %"struct.ap_int_base<1,false,true>" }
%"struct.ap_uint<2>" = type { %"struct.ap_int_base<2,false,true>" }
%"struct.ap_uint<32>" = type { %"struct.ap_fixed_base<32,32,true,SC_TRN,SC_WRAP,0>" }
%"struct.ap_uint<4>" = type { %"struct.ap_int_base<4,false,true>" }
%"struct.hls::RGB_IMAGE" = type { %"struct.ap_uint<12>", %"struct.ap_uint<12>", [3 x %"struct.hls::stream<unsigned char>"] }
%"struct.hls::UC_IMAGE" = type { %"struct.ap_uint<12>", %"struct.ap_uint<12>", [1 x %"struct.hls::stream<unsigned char>"] }
%"struct.hls::stream<ap_axiu<32, 1, 1, 1> >" = type { %"struct.ap_axiu<32,1,1,1>" }
%"struct.hls::stream<ap_uint<2> >" = type { %"struct.ap_uint<2>" }
%"struct.hls::stream<unsigned char>" = type { i8 }
%struct.ssdm_global_array_toppp0cppaplinecpp = type <{ i8 }>
%"struct.ssdm_int<1,false>" = type { i1 }
%"struct.ssdm_int<12,false>" = type { i12 }
%"struct.ssdm_int<2,false>" = type { i2 }
%"struct.ssdm_int<32,false>" = type { i32 }
%"struct.ssdm_int<4,false>" = type { i4 }

@p_str = private constant [1 x i8] zeroinitializer, align 1 ; <[1 x i8]*> [#uses=92]
@p_str37 = private constant [13 x i8] c"hls_label_17\00", align 1 ; <[13 x i8]*> [#uses=2]
@p_str38 = private constant [13 x i8] c"hls_label_18\00", align 1 ; <[13 x i8]*> [#uses=2]
@p_str39 = private constant [13 x i8] c"hls_label_19\00", align 1 ; <[13 x i8]*> [#uses=2]
@p_str40 = private constant [13 x i8] c"hls_label_20\00", align 1 ; <[13 x i8]*> [#uses=2]
@p_str42 = private constant [13 x i8] c"hls_label_21\00", align 1 ; <[13 x i8]*> [#uses=2]
@p_str43 = private constant [13 x i8] c"hls_label_22\00", align 1 ; <[13 x i8]*> [#uses=2]
@p_str44 = private constant [14 x i8] c"hls_label_110\00", align 1 ; <[14 x i8]*> [#uses=2]
@p_str45 = private constant [14 x i8] c"hls_label_113\00", align 1 ; <[14 x i8]*> [#uses=2]
@prevGesture_V = internal global i2 0             ; <i2*> [#uses=2]
@p_str46 = private constant [14 x i8] c"hls_label_112\00", align 1 ; <[14 x i8]*> [#uses=2]
@p_str47 = private constant [14 x i8] c"hls_label_111\00", align 1 ; <[14 x i8]*> [#uses=4]
@p_str48 = private constant [5 x i8] c"AXIS\00", align 1 ; <[5 x i8]*> [#uses=4]
@p_str49 = private constant [25 x i8] c"-bus_bundle INPUT_STREAM\00", align 1 ; <[25 x i8]*> [#uses=2]
@p_str50 = private constant [26 x i8] c"-bus_bundle OUTPUT_STREAM\00", align 1 ; <[26 x i8]*> [#uses=2]
@p_str51 = private constant [10 x i8] c"AXI_SLAVE\00", align 1 ; <[10 x i8]*> [#uses=15]
@p_str52 = private constant [24 x i8] c"-bus_bundle CONTROL_BUS\00", align 1 ; <[24 x i8]*> [#uses=15]
@p_str53 = private constant [10 x i8] c"ap_stable\00", align 1 ; <[10 x i8]*> [#uses=2]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535] ; <[1 x i32]*> [#uses=0]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I__Z9Rgb2ycbcrRN3hls3MatILi1080ELi1920ELi16EEERNS0_ILi1080ELi1920ELi0EEE] ; <[1 x void ()*]*> [#uses=0]
@llvm_global_dtors_0 = appending global [1 x i32] [i32 65535] ; <[1 x i32]*> [#uses=0]
@llvm_global_dtors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__D__Z9Rgb2ycbcrRN3hls3MatILi1080ELi1920ELi16EEERNS0_ILi1080ELi1920ELi0EEE] ; <[1 x void ()*]*> [#uses=0]
@p_str54 = internal constant [59 x i8] c"hls::LineBuffer<8, 1920, unsigned char>::LineBuffer.region\00" ; <[59 x i8]*> [#uses=4]
@str = internal constant [12 x i8] c"gesture.V.V\00" ; <[12 x i8]*> [#uses=1]
@str91 = internal constant [1 x i8] zeroinitializer ; <[1 x i8]*> [#uses=2]
@str92 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=6]
@str93 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=4]
@str94 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=4]
@str95 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=4]
@str96 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=4]
@str97 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=4]
@str98 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=4]
@str99 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=4]
@str100 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=4]
@str101 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=4]
@str102 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=4]
@str103 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=4]
@str104 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=4]
@str105 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=4]
@str106 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=4]
@str117 = internal constant [21 x i8] c"src.data_stream[0].V\00" ; <[21 x i8]*> [#uses=1]
@str118 = internal constant [1 x i8] zeroinitializer ; <[1 x i8]*> [#uses=2]
@str119 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=6]
@str120 = internal constant [21 x i8] c"src.data_stream[1].V\00" ; <[21 x i8]*> [#uses=1]
@str121 = internal constant [1 x i8] zeroinitializer ; <[1 x i8]*> [#uses=2]
@str122 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=6]
@str123 = internal constant [21 x i8] c"src.data_stream[2].V\00" ; <[21 x i8]*> [#uses=1]
@str124 = internal constant [1 x i8] zeroinitializer ; <[1 x i8]*> [#uses=2]
@str125 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=6]
@str126 = internal constant [23 x i8] c"ycbcr.data_stream[0].V\00" ; <[23 x i8]*> [#uses=1]
@str127 = internal constant [1 x i8] zeroinitializer ; <[1 x i8]*> [#uses=2]
@str128 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=6]
@str129 = internal constant [29 x i8] c"medianImage.data_stream[0].V\00" ; <[29 x i8]*> [#uses=1]
@str130 = internal constant [1 x i8] zeroinitializer ; <[1 x i8]*> [#uses=2]
@str131 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=6]
@str132 = internal constant [30 x i8] c"medianImage2.data_stream[0].V\00" ; <[30 x i8]*> [#uses=1]
@str133 = internal constant [1 x i8] zeroinitializer ; <[1 x i8]*> [#uses=2]
@str134 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=6]
@str135 = internal constant [25 x i8] c"result1.data_stream[0].V\00" ; <[25 x i8]*> [#uses=1]
@str136 = internal constant [1 x i8] zeroinitializer ; <[1 x i8]*> [#uses=2]
@str137 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=6]
@str138 = internal constant [24 x i8] c"result.data_stream[0].V\00" ; <[24 x i8]*> [#uses=1]
@str139 = internal constant [1 x i8] zeroinitializer ; <[1 x i8]*> [#uses=2]
@str140 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=6]
@str141 = internal constant [24 x i8] c"result.data_stream[1].V\00" ; <[24 x i8]*> [#uses=1]
@str142 = internal constant [1 x i8] zeroinitializer ; <[1 x i8]*> [#uses=2]
@str143 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=6]
@str144 = internal constant [24 x i8] c"result.data_stream[2].V\00" ; <[24 x i8]*> [#uses=1]
@str145 = internal constant [1 x i8] zeroinitializer ; <[1 x i8]*> [#uses=2]
@str146 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=6]

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecLoopTripCount(...) nounwind {
entry:
  ret void
}

declare void @_ssdm_SpecDependence(...) nounwind

define void @image_filter(i32* %input_V_data_V, i4* %input_V_keep_V, i4* %input_V_strb_V, i1* %input_V_user_V, i1* %input_V_last_V, i1* %input_V_id_V, i1* %input_V_dest_V, i32* %output_V_data_V, i4* %output_V_keep_V, i4* %output_V_strb_V, i1* %output_V_user_V, i1* %output_V_last_V, i1* %output_V_id_V, i1* %output_V_dest_V, i32 %rows, i32 %cols) {
entry:
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str) nounwind
  %empty = call i32 (...)* @_ssdm_op_SpecFifo(i1* %output_V_dest_V, [8 x i8]* @str106, i32 0, i32 0, i32 0, [8 x i8]* @str106) ; <i32> [#uses=0]
  %empty_44 = call i32 (...)* @_ssdm_op_SpecFifo(i1* %output_V_id_V, [8 x i8]* @str105, i32 0, i32 0, i32 0, [8 x i8]* @str105) ; <i32> [#uses=0]
  %empty_45 = call i32 (...)* @_ssdm_op_SpecFifo(i1* %output_V_last_V, [8 x i8]* @str104, i32 0, i32 0, i32 0, [8 x i8]* @str104) ; <i32> [#uses=0]
  %empty_46 = call i32 (...)* @_ssdm_op_SpecFifo(i1* %output_V_user_V, [8 x i8]* @str103, i32 0, i32 0, i32 0, [8 x i8]* @str103) ; <i32> [#uses=0]
  %empty_47 = call i32 (...)* @_ssdm_op_SpecFifo(i4* %output_V_strb_V, [8 x i8]* @str102, i32 0, i32 0, i32 0, [8 x i8]* @str102) ; <i32> [#uses=0]
  %empty_48 = call i32 (...)* @_ssdm_op_SpecFifo(i4* %output_V_keep_V, [8 x i8]* @str101, i32 0, i32 0, i32 0, [8 x i8]* @str101) ; <i32> [#uses=0]
  %empty_49 = call i32 (...)* @_ssdm_op_SpecFifo(i32* %output_V_data_V, [8 x i8]* @str100, i32 0, i32 0, i32 0, [8 x i8]* @str100) ; <i32> [#uses=0]
  %empty_50 = call i32 (...)* @_ssdm_op_SpecFifo(i1* %input_V_dest_V, [8 x i8]* @str99, i32 0, i32 0, i32 0, [8 x i8]* @str99) ; <i32> [#uses=0]
  %empty_51 = call i32 (...)* @_ssdm_op_SpecFifo(i1* %input_V_id_V, [8 x i8]* @str98, i32 0, i32 0, i32 0, [8 x i8]* @str98) ; <i32> [#uses=0]
  %empty_52 = call i32 (...)* @_ssdm_op_SpecFifo(i1* %input_V_last_V, [8 x i8]* @str97, i32 0, i32 0, i32 0, [8 x i8]* @str97) ; <i32> [#uses=0]
  %empty_53 = call i32 (...)* @_ssdm_op_SpecFifo(i1* %input_V_user_V, [8 x i8]* @str96, i32 0, i32 0, i32 0, [8 x i8]* @str96) ; <i32> [#uses=0]
  %empty_54 = call i32 (...)* @_ssdm_op_SpecFifo(i4* %input_V_strb_V, [8 x i8]* @str95, i32 0, i32 0, i32 0, [8 x i8]* @str95) ; <i32> [#uses=0]
  %empty_55 = call i32 (...)* @_ssdm_op_SpecFifo(i4* %input_V_keep_V, [8 x i8]* @str94, i32 0, i32 0, i32 0, [8 x i8]* @str94) ; <i32> [#uses=0]
  %empty_56 = call i32 (...)* @_ssdm_op_SpecFifo(i32* %input_V_data_V, [8 x i8]* @str93, i32 0, i32 0, i32 0, [8 x i8]* @str93) ; <i32> [#uses=0]
  %cols_read = call i32 @_ssdm_op_WireRead.i32(i32 %cols) ; <i32> [#uses=6]
  %rows_read = call i32 @_ssdm_op_WireRead.i32(i32 %rows) ; <i32> [#uses=6]
  %src_data_stream_0_V = alloca i8, align 1       ; <i8*> [#uses=5]
  %empty_57 = call i32 (...)* @_ssdm_op_SpecChannel([21 x i8]* @str117, i32 1, [1 x i8]* @str118, [1 x i8]* @str118, i32 1, i32 1, i8* %src_data_stream_0_V, i8* %src_data_stream_0_V) ; <i32> [#uses=0]
  %empty_58 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %src_data_stream_0_V, [8 x i8]* @str119, i32 0, i32 0, i32 0, [8 x i8]* @str119) ; <i32> [#uses=0]
  %src_data_stream_1_V = alloca i8, align 1       ; <i8*> [#uses=5]
  %empty_59 = call i32 (...)* @_ssdm_op_SpecChannel([21 x i8]* @str120, i32 1, [1 x i8]* @str121, [1 x i8]* @str121, i32 1, i32 1, i8* %src_data_stream_1_V, i8* %src_data_stream_1_V) ; <i32> [#uses=0]
  %empty_60 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %src_data_stream_1_V, [8 x i8]* @str122, i32 0, i32 0, i32 0, [8 x i8]* @str122) ; <i32> [#uses=0]
  %src_data_stream_2_V = alloca i8, align 1       ; <i8*> [#uses=5]
  %empty_61 = call i32 (...)* @_ssdm_op_SpecChannel([21 x i8]* @str123, i32 1, [1 x i8]* @str124, [1 x i8]* @str124, i32 1, i32 1, i8* %src_data_stream_2_V, i8* %src_data_stream_2_V) ; <i32> [#uses=0]
  %empty_62 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %src_data_stream_2_V, [8 x i8]* @str125, i32 0, i32 0, i32 0, [8 x i8]* @str125) ; <i32> [#uses=0]
  %ycbcr_data_stream_0_V = alloca i8, align 1     ; <i8*> [#uses=5]
  %empty_63 = call i32 (...)* @_ssdm_op_SpecChannel([23 x i8]* @str126, i32 1, [1 x i8]* @str127, [1 x i8]* @str127, i32 1, i32 1, i8* %ycbcr_data_stream_0_V, i8* %ycbcr_data_stream_0_V) ; <i32> [#uses=0]
  %empty_64 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %ycbcr_data_stream_0_V, [8 x i8]* @str128, i32 0, i32 0, i32 0, [8 x i8]* @str128) ; <i32> [#uses=0]
  %gesture_V_V = alloca i2, align 1               ; <i2*> [#uses=5]
  %empty_65 = call i32 (...)* @_ssdm_op_SpecChannel([12 x i8]* @str, i32 1, [1 x i8]* @str91, [1 x i8]* @str91, i32 1, i32 1, i2* %gesture_V_V, i2* %gesture_V_V) ; <i32> [#uses=0]
  %empty_66 = call i32 (...)* @_ssdm_op_SpecFifo(i2* %gesture_V_V, [8 x i8]* @str92, i32 0, i32 0, i32 0, [8 x i8]* @str92) ; <i32> [#uses=0]
  %medianImage_data_stream_0_V = alloca i8, align 1 ; <i8*> [#uses=5]
  %empty_67 = call i32 (...)* @_ssdm_op_SpecChannel([29 x i8]* @str129, i32 1, [1 x i8]* @str130, [1 x i8]* @str130, i32 1, i32 1, i8* %medianImage_data_stream_0_V, i8* %medianImage_data_stream_0_V) ; <i32> [#uses=0]
  %empty_68 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %medianImage_data_stream_0_V, [8 x i8]* @str131, i32 0, i32 0, i32 0, [8 x i8]* @str131) ; <i32> [#uses=0]
  %medianImage2_data_stream_0_V = alloca i8, align 1 ; <i8*> [#uses=5]
  %empty_69 = call i32 (...)* @_ssdm_op_SpecChannel([30 x i8]* @str132, i32 1, [1 x i8]* @str133, [1 x i8]* @str133, i32 1, i32 1, i8* %medianImage2_data_stream_0_V, i8* %medianImage2_data_stream_0_V) ; <i32> [#uses=0]
  %empty_70 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %medianImage2_data_stream_0_V, [8 x i8]* @str134, i32 0, i32 0, i32 0, [8 x i8]* @str134) ; <i32> [#uses=0]
  %result1_data_stream_0_V = alloca i8, align 1   ; <i8*> [#uses=5]
  %empty_71 = call i32 (...)* @_ssdm_op_SpecChannel([25 x i8]* @str135, i32 1, [1 x i8]* @str136, [1 x i8]* @str136, i32 1, i32 1, i8* %result1_data_stream_0_V, i8* %result1_data_stream_0_V) ; <i32> [#uses=0]
  %empty_72 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %result1_data_stream_0_V, [8 x i8]* @str137, i32 0, i32 0, i32 0, [8 x i8]* @str137) ; <i32> [#uses=0]
  %result_data_stream_0_V = alloca i8, align 1    ; <i8*> [#uses=5]
  %empty_73 = call i32 (...)* @_ssdm_op_SpecChannel([24 x i8]* @str138, i32 1, [1 x i8]* @str139, [1 x i8]* @str139, i32 1, i32 1, i8* %result_data_stream_0_V, i8* %result_data_stream_0_V) ; <i32> [#uses=0]
  %empty_74 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %result_data_stream_0_V, [8 x i8]* @str140, i32 0, i32 0, i32 0, [8 x i8]* @str140) ; <i32> [#uses=0]
  %result_data_stream_1_V = alloca i8, align 1    ; <i8*> [#uses=5]
  %empty_75 = call i32 (...)* @_ssdm_op_SpecChannel([24 x i8]* @str141, i32 1, [1 x i8]* @str142, [1 x i8]* @str142, i32 1, i32 1, i8* %result_data_stream_1_V, i8* %result_data_stream_1_V) ; <i32> [#uses=0]
  %empty_76 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %result_data_stream_1_V, [8 x i8]* @str143, i32 0, i32 0, i32 0, [8 x i8]* @str143) ; <i32> [#uses=0]
  %result_data_stream_2_V = alloca i8, align 1    ; <i8*> [#uses=5]
  %empty_77 = call i32 (...)* @_ssdm_op_SpecChannel([24 x i8]* @str144, i32 1, [1 x i8]* @str145, [1 x i8]* @str145, i32 1, i32 1, i8* %result_data_stream_2_V, i8* %result_data_stream_2_V) ; <i32> [#uses=0]
  %empty_78 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %result_data_stream_2_V, [8 x i8]* @str146, i32 0, i32 0, i32 0, [8 x i8]* @str146) ; <i32> [#uses=0]
  call void (...)* @_ssdm_op_SpecIFCore(i32* %input_V_data_V, i4* %input_V_keep_V, i4* %input_V_strb_V, i1* %input_V_user_V, i1* %input_V_last_V, i1* %input_V_id_V, i1* %input_V_dest_V, [1 x i8]* @p_str, [5 x i8]* @p_str48, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [25 x i8]* @p_str49)
  call void (...)* @_ssdm_op_SpecIFCore(i32* %output_V_data_V, i4* %output_V_keep_V, i4* %output_V_strb_V, i1* %output_V_user_V, i1* %output_V_last_V, i1* %output_V_id_V, i1* %output_V_dest_V, [1 x i8]* @p_str, [5 x i8]* @p_str48, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [26 x i8]* @p_str50)
  call void (...)* @_ssdm_op_SpecIFCore(i32 %rows, [1 x i8]* @p_str, [10 x i8]* @p_str51, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [24 x i8]* @p_str52)
  call void (...)* @_ssdm_op_SpecIFCore(i32 %cols, [1 x i8]* @p_str, [10 x i8]* @p_str51, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [24 x i8]* @p_str52)
  call void (...)* @_ssdm_op_SpecIFCore(i32 0, [1 x i8]* @p_str, [10 x i8]* @p_str51, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [24 x i8]* @p_str52)
  call void (...)* @_ssdm_op_SpecWire(i32 %rows, [10 x i8]* @p_str53, i32 0, i32 0, i32 0, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecWire(i32 %cols, [10 x i8]* @p_str53, i32 0, i32 0, i32 0, [1 x i8]* @p_str) nounwind
  %call_ret = call fastcc %"hls::Mat<1080, 1920, 16>::init_ret" @init(i32 %rows_read, i32 %cols_read) ; <%"hls::Mat<1080, 1920, 16>::init_ret"> [#uses=4]
  %src_rows_V = extractvalue %"hls::Mat<1080, 1920, 16>::init_ret" %call_ret, 0 ; <i12> [#uses=1]
  %src_rows_V_channel = extractvalue %"hls::Mat<1080, 1920, 16>::init_ret" %call_ret, 1 ; <i12> [#uses=1]
  %src_cols_V = extractvalue %"hls::Mat<1080, 1920, 16>::init_ret" %call_ret, 2 ; <i12> [#uses=1]
  %src_cols_V_channel = extractvalue %"hls::Mat<1080, 1920, 16>::init_ret" %call_ret, 3 ; <i12> [#uses=1]
  %call_ret1 = call fastcc %"hls::Mat<1080, 1920, 0>::init.1_ret" @init.1(i32 %rows_read, i32 %cols_read) ; <%"hls::Mat<1080, 1920, 0>::init.1_ret"> [#uses=2]
  %ycbcr_rows_V = extractvalue %"hls::Mat<1080, 1920, 0>::init.1_ret" %call_ret1, 0 ; <i12> [#uses=1]
  %ycbcr_cols_V = extractvalue %"hls::Mat<1080, 1920, 0>::init.1_ret" %call_ret1, 1 ; <i12> [#uses=1]
  %call_ret2 = call fastcc %"hls::Mat<1080, 1920, 0>::init.1_ret" @init.1.1(i32 %rows_read, i32 %cols_read) ; <%"hls::Mat<1080, 1920, 0>::init.1_ret"> [#uses=2]
  %medianImage_rows_V = extractvalue %"hls::Mat<1080, 1920, 0>::init.1_ret" %call_ret2, 0 ; <i12> [#uses=1]
  %medianImage_cols_V = extractvalue %"hls::Mat<1080, 1920, 0>::init.1_ret" %call_ret2, 1 ; <i12> [#uses=1]
  %call_ret3 = call fastcc %"hls::Mat<1080, 1920, 0>::init.1_ret" @init.2(i32 %rows_read, i32 %cols_read) ; <%"hls::Mat<1080, 1920, 0>::init.1_ret"> [#uses=2]
  %medianImage2_rows_V = extractvalue %"hls::Mat<1080, 1920, 0>::init.1_ret" %call_ret3, 0 ; <i12> [#uses=1]
  %medianImage2_cols_V = extractvalue %"hls::Mat<1080, 1920, 0>::init.1_ret" %call_ret3, 1 ; <i12> [#uses=1]
  %call_ret4 = call fastcc %"hls::Mat<1080, 1920, 0>::init.1_ret" @init.3(i32 %rows_read, i32 %cols_read) ; <%"hls::Mat<1080, 1920, 0>::init.1_ret"> [#uses=2]
  %result1_rows_V = extractvalue %"hls::Mat<1080, 1920, 0>::init.1_ret" %call_ret4, 0 ; <i12> [#uses=1]
  %result1_cols_V = extractvalue %"hls::Mat<1080, 1920, 0>::init.1_ret" %call_ret4, 1 ; <i12> [#uses=1]
  %call_ret5 = call fastcc %"hls::Mat<1080, 1920, 0>::init.1_ret" @init.1.2(i32 %rows_read, i32 %cols_read) ; <%"hls::Mat<1080, 1920, 0>::init.1_ret"> [#uses=2]
  %result_rows_V = extractvalue %"hls::Mat<1080, 1920, 0>::init.1_ret" %call_ret5, 0 ; <i12> [#uses=1]
  %result_cols_V = extractvalue %"hls::Mat<1080, 1920, 0>::init.1_ret" %call_ret5, 1 ; <i12> [#uses=1]
  call fastcc void @"AXIvideo2Mat<32,1080,1920,16>"(i32* %input_V_data_V, i4* %input_V_keep_V, i4* %input_V_strb_V, i1* %input_V_user_V, i1* %input_V_last_V, i1* %input_V_id_V, i1* %input_V_dest_V, i12 %src_rows_V, i12 %src_cols_V, i8* %src_data_stream_0_V, i8* %src_data_stream_1_V, i8* %src_data_stream_2_V)
  call fastcc void @Rgb2ycbcr(i12 %src_rows_V_channel, i12 %src_cols_V_channel, i8* %src_data_stream_0_V, i8* %src_data_stream_1_V, i8* %src_data_stream_2_V, i8* %ycbcr_data_stream_0_V)
  call fastcc void @median_filter(i12 %ycbcr_rows_V, i12 %ycbcr_cols_V, i8* %ycbcr_data_stream_0_V, i8* %medianImage_data_stream_0_V)
  call fastcc void @median_filter.1(i12 %medianImage_rows_V, i12 %medianImage_cols_V, i8* %medianImage_data_stream_0_V, i8* %medianImage2_data_stream_0_V)
  call fastcc void @finger_counter(i12 %medianImage2_rows_V, i12 %medianImage2_cols_V, i8* %medianImage2_data_stream_0_V, i8* %result1_data_stream_0_V, i2* %gesture_V_V)
  call fastcc void @set_color(i12 %result1_rows_V, i12 %result1_cols_V, i8* %result1_data_stream_0_V, i8* %result_data_stream_0_V, i8* %result_data_stream_1_V, i8* %result_data_stream_2_V, i2* %gesture_V_V)
  call fastcc void @"Mat2AXIvideo<32,1080,1920,16>"(i12 %result_rows_V, i12 %result_cols_V, i8* %result_data_stream_0_V, i8* %result_data_stream_1_V, i8* %result_data_stream_2_V, i32* %output_V_data_V, i4* %output_V_keep_V, i4* %output_V_strb_V, i1* %output_V_user_V, i1* %output_V_last_V, i1* %output_V_id_V, i1* %output_V_dest_V)
  ret void
}

define weak void @_ssdm_op_SpecWire(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecDataflowPipeline(...) nounwind {
entry:
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @_GLOBAL__I__Z9Rgb2ycbcrRN3hls3MatILi1080ELi1920ELi16EEERNS0_ILi1080ELi1920ELi0EEE() nounwind

declare void @_GLOBAL__D__Z9Rgb2ycbcrRN3hls3MatILi1080ELi1920ELi16EEERNS0_ILi1080ELi1920ELi0EEE() nounwind

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecIFCore(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecChannel(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecFifo(...) {
entry:
  ret i32 0
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; <i32> [#uses=1]
  %empty_79 = trunc i32 %empty to i8              ; <i8> [#uses=1]
  ret i8 %empty_79
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i8.i8.i8.i8(i8, i8, i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %2 to i16                      ; <i16> [#uses=1]
  %empty_80 = zext i8 %3 to i16                   ; <i16> [#uses=2]
  %empty_81 = trunc i16 %empty to i8              ; <i8> [#uses=1]
  %empty_82 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %empty_80, i32 8, i32 15) ; <i8> [#uses=1]
  %empty_83 = or i8 %empty_81, %empty_82          ; <i8> [#uses=1]
  %empty_84 = call i16 @_ssdm_op_PartSet.i16.i16.i8.i32.i32(i16 %empty_80, i8 %empty_83, i32 8, i32 15) ; <i16> [#uses=1]
  %empty_85 = zext i8 %1 to i24                   ; <i24> [#uses=1]
  %empty_86 = zext i16 %empty_84 to i24           ; <i24> [#uses=2]
  %empty_87 = trunc i24 %empty_85 to i8           ; <i8> [#uses=1]
  %empty_88 = call i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24 %empty_86, i32 16, i32 23) ; <i8> [#uses=1]
  %empty_89 = or i8 %empty_87, %empty_88          ; <i8> [#uses=1]
  %empty_90 = call i24 @_ssdm_op_PartSet.i24.i24.i8.i32.i32(i24 %empty_86, i8 %empty_89, i32 16, i32 23) ; <i24> [#uses=1]
  %empty_91 = zext i8 %0 to i32                   ; <i32> [#uses=1]
  %empty_92 = zext i24 %empty_90 to i32           ; <i32> [#uses=2]
  %empty_93 = trunc i32 %empty_91 to i8           ; <i8> [#uses=1]
  %empty_94 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %empty_92, i32 24, i32 31) ; <i8> [#uses=1]
  %empty_95 = or i8 %empty_93, %empty_94          ; <i8> [#uses=1]
  %empty_96 = call i32 @_ssdm_op_PartSet.i32.i32.i8.i32.i32(i32 %empty_92, i8 %empty_95, i32 24, i32 31) ; <i32> [#uses=1]
  ret i32 %empty_96
}

define internal fastcc void @"AXIvideo2Mat<32,1080,1920,16>"(i32* %AXI_video_strm_V_data_V, i4* %AXI_video_strm_V_keep_V, i4* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V, i12 %img_rows_V_read, i12 %img_cols_V_read, i8* %img_data_stream_0_V, i8* %img_data_stream_1_V, i8* %img_data_stream_2_V) {
entry:
  %empty = call i32 (...)* @_ssdm_op_SpecFifo(i8* %img_data_stream_2_V, [8 x i8]* @str125, i32 0, i32 0, i32 0, [8 x i8]* @str125) ; <i32> [#uses=0]
  %empty_97 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %img_data_stream_1_V, [8 x i8]* @str122, i32 0, i32 0, i32 0, [8 x i8]* @str122) ; <i32> [#uses=0]
  %empty_98 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %img_data_stream_0_V, [8 x i8]* @str119, i32 0, i32 0, i32 0, [8 x i8]* @str119) ; <i32> [#uses=0]
  %empty_99 = call i32 (...)* @_ssdm_op_SpecFifo(i1* %AXI_video_strm_V_dest_V, [8 x i8]* @str99, i32 0, i32 0, i32 0, [8 x i8]* @str99) ; <i32> [#uses=0]
  %empty_100 = call i32 (...)* @_ssdm_op_SpecFifo(i1* %AXI_video_strm_V_id_V, [8 x i8]* @str98, i32 0, i32 0, i32 0, [8 x i8]* @str98) ; <i32> [#uses=0]
  %empty_101 = call i32 (...)* @_ssdm_op_SpecFifo(i1* %AXI_video_strm_V_last_V, [8 x i8]* @str97, i32 0, i32 0, i32 0, [8 x i8]* @str97) ; <i32> [#uses=0]
  %empty_102 = call i32 (...)* @_ssdm_op_SpecFifo(i1* %AXI_video_strm_V_user_V, [8 x i8]* @str96, i32 0, i32 0, i32 0, [8 x i8]* @str96) ; <i32> [#uses=0]
  %empty_103 = call i32 (...)* @_ssdm_op_SpecFifo(i4* %AXI_video_strm_V_strb_V, [8 x i8]* @str95, i32 0, i32 0, i32 0, [8 x i8]* @str95) ; <i32> [#uses=0]
  %empty_104 = call i32 (...)* @_ssdm_op_SpecFifo(i4* %AXI_video_strm_V_keep_V, [8 x i8]* @str94, i32 0, i32 0, i32 0, [8 x i8]* @str94) ; <i32> [#uses=0]
  %empty_105 = call i32 (...)* @_ssdm_op_SpecFifo(i32* %AXI_video_strm_V_data_V, [8 x i8]* @str93, i32 0, i32 0, i32 0, [8 x i8]* @str93) ; <i32> [#uses=0]
  call void (...)* @_ssdm_op_SpecIFCore(i32* %AXI_video_strm_V_data_V, i4* %AXI_video_strm_V_keep_V, i4* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V, [1 x i8]* @p_str, [5 x i8]* @p_str48, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [25 x i8]* @p_str49)
  %img_cols_V_read_1 = call i12 @_ssdm_op_WireRead.i12(i12 %img_cols_V_read) ; <i12> [#uses=1]
  %img_rows_V_read_1 = call i12 @_ssdm_op_WireRead.i12(i12 %img_rows_V_read) ; <i12> [#uses=1]
  br label %bb3

bb2:                                              ; preds = %bb3
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str37) ; <i32> [#uses=1]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, [1 x i8]* @p_str) nounwind
  %empty_106 = call %0 @_ssdm_op_FifoRead.volatile.i32P.i4P.i4P.i1P.i1P.i1P.i1P(i32* %AXI_video_strm_V_data_V, i4* %AXI_video_strm_V_keep_V, i4* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V) ; <%0> [#uses=3]
  %tmp_data_V = extractvalue %0 %empty_106, 0     ; <i32> [#uses=1]
  %tmp_user_V = extractvalue %0 %empty_106, 3     ; <i1> [#uses=1]
  %tmp_last_V = extractvalue %0 %empty_106, 4     ; <i1> [#uses=1]
  %empty_107 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str37, i32 %tmp) ; <i32> [#uses=0]
  br label %bb3

bb3:                                              ; preds = %bb2, %entry
  %axi_data_V = phi i32 [ undef, %entry ], [ %tmp_data_V, %bb2 ] ; <i32> [#uses=1]
  %axi_last_V = phi i1 [ undef, %entry ], [ %tmp_last_V, %bb2 ] ; <i1> [#uses=1]
  %axi_user_V = phi i1 [ false, %entry ], [ %tmp_user_V, %bb2 ] ; <i1> [#uses=1]
  br i1 %axi_user_V, label %bb37.preheader, label %bb2

bb37.preheader:                                   ; preds = %bb3
  %sof = alloca i1                                ; <i1*> [#uses=3]
  store i1 true, i1* %sof
  br label %bb37

bb6:                                              ; preds = %bb37
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str38) ; <i32> [#uses=1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 1080, i32 0, [1 x i8]* @p_str) nounwind
  br label %bb29

bb7:                                              ; preds = %bb29
  %sof_load = load i1* %sof                       ; <i1> [#uses=1]
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str39) ; <i32> [#uses=1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 1920, i32 0, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, [1 x i8]* @p_str) nounwind
  br i1 %sof_load, label %bb14.pre, label %bb9

bb9:                                              ; preds = %bb7
  br i1 %eol, label %bb14, label %bb12

bb12:                                             ; preds = %bb9
  %empty_108 = call %0 @_ssdm_op_FifoRead.volatile.i32P.i4P.i4P.i1P.i1P.i1P.i1P(i32* %AXI_video_strm_V_data_V, i4* %AXI_video_strm_V_keep_V, i4* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V) ; <%0> [#uses=2]
  %tmp_data_V_1 = extractvalue %0 %empty_108, 0   ; <i32> [#uses=1]
  %tmp_last_V_1 = extractvalue %0 %empty_108, 4   ; <i1> [#uses=2]
  br label %bb14

bb14.pre:                                         ; preds = %bb7
  store i1 false, i1* %sof
  br label %bb14

bb14:                                             ; preds = %bb14.pre, %bb12, %bb9
  %axi_data_V_8 = phi i32 [ %tmp_data_V_1, %bb12 ], [ %axi_data_V_3, %bb14.pre ], [ 0, %bb9 ] ; <i32> [#uses=4]
  %axi_last_V_7 = phi i1 [ %tmp_last_V_1, %bb12 ], [ %eol_6, %bb14.pre ], [ false, %bb9 ] ; <i1> [#uses=1]
  %eol_5 = phi i1 [ %tmp_last_V_1, %bb12 ], [ %eol_6, %bb14.pre ], [ %eol, %bb9 ] ; <i1> [#uses=1]
  %pix_val_0 = trunc i32 %axi_data_V_8 to i8      ; <i8> [#uses=1]
  %pix_val_1 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %axi_data_V_8, i32 8, i32 15) ; <i8> [#uses=1]
  %pix_val_2 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %axi_data_V_8, i32 16, i32 23) ; <i8> [#uses=1]
  call void @_ssdm_op_FifoWrite.volatile.i8P(i8* %img_data_stream_0_V, i8 %pix_val_0)
  call void @_ssdm_op_FifoWrite.volatile.i8P(i8* %img_data_stream_1_V, i8 %pix_val_1)
  call void @_ssdm_op_FifoWrite.volatile.i8P(i8* %img_data_stream_2_V, i8 %pix_val_2)
  %empty_109 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str39, i32 %tmp_1) ; <i32> [#uses=0]
  br label %bb29

bb29:                                             ; preds = %bb14, %bb6
  %axi_data_V_3 = phi i32 [ %axi_data_V_2, %bb6 ], [ %axi_data_V_8, %bb14 ] ; <i32> [#uses=2]
  %eol_6 = phi i1 [ %axi_last_V_2, %bb6 ], [ %axi_last_V_7, %bb14 ] ; <i1> [#uses=3]
  %t_V_1 = phi i12 [ 0, %bb6 ], [ %j_V, %bb14 ]   ; <i12> [#uses=2]
  %eol = phi i1 [ false, %bb6 ], [ %eol_5, %bb14 ] ; <i1> [#uses=3]
  %exitcond3 = icmp eq i12 %t_V_1, %img_cols_V_read_1 ; <i1> [#uses=1]
  %j_V = add i12 %t_V_1, 1                        ; <i12> [#uses=1]
  br i1 %exitcond3, label %bb32, label %bb7

bb31:                                             ; preds = %bb32
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str40) ; <i32> [#uses=1]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, [1 x i8]* @p_str) nounwind
  %empty_110 = call %0 @_ssdm_op_FifoRead.volatile.i32P.i4P.i4P.i1P.i1P.i1P.i1P(i32* %AXI_video_strm_V_data_V, i4* %AXI_video_strm_V_keep_V, i4* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V) ; <%0> [#uses=2]
  %tmp_data_V_2 = extractvalue %0 %empty_110, 0   ; <i32> [#uses=1]
  %tmp_last_V_2 = extractvalue %0 %empty_110, 4   ; <i1> [#uses=2]
  %empty_111 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str40, i32 %tmp_2) ; <i32> [#uses=0]
  br label %bb32

bb32:                                             ; preds = %bb29, %bb31
  %axi_data_V_4 = phi i32 [ %tmp_data_V_2, %bb31 ], [ %axi_data_V_3, %bb29 ] ; <i32> [#uses=1]
  %axi_last_V_4 = phi i1 [ %tmp_last_V_2, %bb31 ], [ %eol_6, %bb29 ] ; <i1> [#uses=1]
  %eol_1 = phi i1 [ %tmp_last_V_2, %bb31 ], [ %eol, %bb29 ] ; <i1> [#uses=1]
  br i1 %eol_1, label %bb35, label %bb31

bb35:                                             ; preds = %bb32
  %empty_112 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str38, i32 %tmp_s) ; <i32> [#uses=0]
  br label %bb37

bb37:                                             ; preds = %bb37.preheader, %bb35
  %axi_data_V_2 = phi i32 [ %axi_data_V_4, %bb35 ], [ %axi_data_V, %bb37.preheader ] ; <i32> [#uses=1]
  %axi_last_V_2 = phi i1 [ %axi_last_V_4, %bb35 ], [ %axi_last_V, %bb37.preheader ] ; <i1> [#uses=1]
  %t_V = phi i12 [ %i_V, %bb35 ], [ 0, %bb37.preheader ] ; <i12> [#uses=2]
  %exitcond = icmp eq i12 %t_V, %img_rows_V_read_1 ; <i1> [#uses=1]
  %i_V = add i12 %t_V, 1                          ; <i12> [#uses=1]
  br i1 %exitcond, label %return, label %bb6

return:                                           ; preds = %bb37
  ret void
}

define internal fastcc void @Rgb2ycbcr(i12 %rgb_rows_V_read, i12 %rgb_cols_V_read, i8* %rgb_data_stream_0_V, i8* %rgb_data_stream_1_V, i8* %rgb_data_stream_2_V, i8* %ycbcr_data_stream_0_V) {
entry:
  %empty = call i32 (...)* @_ssdm_op_SpecFifo(i8* %ycbcr_data_stream_0_V, [8 x i8]* @str128, i32 0, i32 0, i32 0, [8 x i8]* @str128) ; <i32> [#uses=0]
  %empty_113 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %rgb_data_stream_2_V, [8 x i8]* @str125, i32 0, i32 0, i32 0, [8 x i8]* @str125) ; <i32> [#uses=0]
  %empty_114 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %rgb_data_stream_1_V, [8 x i8]* @str122, i32 0, i32 0, i32 0, [8 x i8]* @str122) ; <i32> [#uses=0]
  %empty_115 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %rgb_data_stream_0_V, [8 x i8]* @str119, i32 0, i32 0, i32 0, [8 x i8]* @str119) ; <i32> [#uses=0]
  %rgb_cols_V_read_1 = call i12 @_ssdm_op_WireRead.i12(i12 %rgb_cols_V_read) ; <i12> [#uses=1]
  %rgb_rows_V_read_1 = call i12 @_ssdm_op_WireRead.i12(i12 %rgb_rows_V_read) ; <i12> [#uses=1]
  br label %bb27

bb1_ifconv:                                       ; preds = %bb24
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @p_str44) ; <i32> [#uses=1]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, [1 x i8]* @p_str) nounwind
  %tmp_11 = call i8 @_ssdm_op_FifoRead.volatile.i8P(i8* %rgb_data_stream_0_V) ; <i8> [#uses=2]
  %tmp_12 = call i8 @_ssdm_op_FifoRead.volatile.i8P(i8* %rgb_data_stream_1_V) ; <i8> [#uses=1]
  %tmp_13 = call i8 @_ssdm_op_FifoRead.volatile.i8P(i8* %rgb_data_stream_2_V) ; <i8> [#uses=3]
  %OP2_V_cast1 = zext i8 %tmp_13 to i11           ; <i11> [#uses=1]
  %OP2_V_1_cast = zext i8 %tmp_12 to i14          ; <i14> [#uses=2]
  %OP2_V_2_cast = zext i8 %tmp_11 to i13          ; <i13> [#uses=1]
  %r_V = call i13 @_ssdm_op_BitConcatenate.i13.i8.i5(i8 %tmp_13, i5 0) ; <i13> [#uses=1]
  %r_V_8 = mul i14 %OP2_V_1_cast, 21              ; <i14> [#uses=1]
  %r_V_9 = mul i13 %OP2_V_2_cast, 11              ; <i13> [#uses=1]
  %rhs_V_cast = zext i13 %r_V_9 to i14            ; <i14> [#uses=1]
  %r_V_10 = sub i14 -8192, %rhs_V_cast            ; <i14> [#uses=1]
  %r_V_11 = sub i14 %r_V_10, %r_V_8               ; <i14> [#uses=1]
  %rhs_V_2_cast = zext i13 %r_V to i14            ; <i14> [#uses=1]
  %r_V_12 = add i14 %r_V_11, %rhs_V_2_cast        ; <i14> [#uses=1]
  %out_pixel_val_1 = call i8 @_ssdm_op_PartSelect.i8.i14.i32.i32(i14 %r_V_12, i32 6, i32 13) ; <i8> [#uses=2]
  %p_shl8 = call i10 @_ssdm_op_BitConcatenate.i10.i8.i2(i8 %tmp_13, i2 0) ; <i10> [#uses=1]
  %p_shl8_cast = zext i10 %p_shl8 to i11          ; <i11> [#uses=1]
  %r_V_13 = add i11 %p_shl8_cast, %OP2_V_cast1    ; <i11> [#uses=1]
  %r_V_14 = mul i14 %OP2_V_1_cast, 27             ; <i14> [#uses=1]
  %r_V_15 = call i14 @_ssdm_op_BitConcatenate.i14.i1.i8.i5(i1 true, i8 %tmp_11, i5 0) ; <i14> [#uses=1]
  %lhs_V_2_cast = zext i14 %r_V_15 to i15         ; <i15> [#uses=1]
  %rhs_V_4_cast = zext i14 %r_V_14 to i15         ; <i15> [#uses=1]
  %r_V_16 = sub i15 %lhs_V_2_cast, %rhs_V_4_cast  ; <i15> [#uses=1]
  %rhs_V_5_cast = zext i11 %r_V_13 to i15         ; <i15> [#uses=1]
  %r_V_17 = sub i15 %r_V_16, %rhs_V_5_cast        ; <i15> [#uses=3]
  %tmp = call i9 @_ssdm_op_PartSelect.i9.i15.i32.i32(i15 %r_V_17, i32 6, i32 14) ; <i9> [#uses=1]
  %ret_V_cast = sext i9 %tmp to i10               ; <i10> [#uses=3]
  %tmp_4 = call i1 @_ssdm_op_BitSelect.i1.i15.i32(i15 %r_V_17, i32 14) ; <i1> [#uses=1]
  %tmp_5 = trunc i15 %r_V_17 to i6                ; <i6> [#uses=1]
  %ret_V = add i10 %ret_V_cast, 1                 ; <i10> [#uses=1]
  %tmp_2 = icmp eq i6 %tmp_5, 0                   ; <i1> [#uses=1]
  %p_2 = select i1 %tmp_2, i10 %ret_V_cast, i10 %ret_V ; <i10> [#uses=1]
  %ret_V_1 = select i1 %tmp_4, i10 %p_2, i10 %ret_V_cast ; <i10> [#uses=1]
  %out_pixel_val_2 = trunc i10 %ret_V_1 to i8     ; <i8> [#uses=2]
  %tmp_6 = icmp ugt i8 %out_pixel_val_2, 85       ; <i1> [#uses=1]
  %tmp_7 = icmp ult i8 %out_pixel_val_2, -113     ; <i1> [#uses=1]
  %tmp_8 = icmp ugt i8 %out_pixel_val_1, -121     ; <i1> [#uses=1]
  %tmp_9 = icmp ult i8 %out_pixel_val_1, -66      ; <i1> [#uses=1]
  %tmp2 = and i1 %tmp_6, %tmp_7                   ; <i1> [#uses=1]
  %tmp3 = and i1 %tmp_8, %tmp_9                   ; <i1> [#uses=1]
  %or_cond7 = and i1 %tmp3, %tmp2                 ; <i1> [#uses=1]
  %pixel_out_val = sext i1 %or_cond7 to i8        ; <i8> [#uses=1]
  call void @_ssdm_op_FifoWrite.volatile.i8P(i8* %ycbcr_data_stream_0_V, i8 %pixel_out_val)
  %empty_116 = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @p_str44, i32 %tmp_3) ; <i32> [#uses=0]
  br label %bb24

bb24:                                             ; preds = %bb27, %bb1_ifconv
  %t_V = phi i12 [ %j_V, %bb1_ifconv ], [ 0, %bb27 ] ; <i12> [#uses=2]
  %exitcond = icmp eq i12 %t_V, %rgb_cols_V_read_1 ; <i1> [#uses=1]
  %j_V = add i12 %t_V, 1                          ; <i12> [#uses=1]
  br i1 %exitcond, label %bb27, label %bb1_ifconv

bb27:                                             ; preds = %bb24, %entry
  %t_V_2 = phi i12 [ 0, %entry ], [ %i_V, %bb24 ] ; <i12> [#uses=2]
  %exitcond3 = icmp eq i12 %t_V_2, %rgb_rows_V_read_1 ; <i1> [#uses=1]
  %i_V = add i12 %t_V_2, 1                        ; <i12> [#uses=1]
  br i1 %exitcond3, label %return, label %bb24

return:                                           ; preds = %bb27
  ret void
}

define internal fastcc void @median_filter(i12 %src_rows_V_read, i12 %src_cols_V_read, i8* %src_data_stream_0_V, i8* %dst_data_stream_0_V) {
entry:
  %lineBuff7 = alloca i8                          ; <i8*> [#uses=2]
  %lineBuff6 = alloca i8                          ; <i8*> [#uses=2]
  %lineBuff5 = alloca i8                          ; <i8*> [#uses=2]
  %lineBuff4 = alloca i8                          ; <i8*> [#uses=2]
  %lineBuff3 = alloca i8                          ; <i8*> [#uses=2]
  %lineBuff2 = alloca i8                          ; <i8*> [#uses=2]
  %lineBuff1 = alloca i8                          ; <i8*> [#uses=2]
  %lineBuff0 = alloca i8                          ; <i8*> [#uses=2]
  %pixel_in_val = alloca i8                       ; <i8*> [#uses=3]
  %window_val_0_0 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_0_1 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_0_2 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_0_3 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_0_4 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_0_5 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_0_6 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_0_7 = alloca i8                     ; <i8*> [#uses=2]
  %window_val_1_0 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_1_1 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_1_2 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_1_3 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_1_4 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_1_5 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_1_6 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_1_7 = alloca i8                     ; <i8*> [#uses=2]
  %window_val_2_0 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_2_1 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_2_2 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_2_3 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_2_4 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_2_5 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_2_6 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_2_7 = alloca i8                     ; <i8*> [#uses=2]
  %window_val_3_0 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_3_1 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_3_2 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_3_3 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_3_4 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_3_5 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_3_6 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_3_7 = alloca i8                     ; <i8*> [#uses=2]
  %window_val_4_0 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_4_1 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_4_2 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_4_3 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_4_4 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_4_5 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_4_6 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_4_7 = alloca i8                     ; <i8*> [#uses=2]
  %window_val_5_0 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_5_1 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_5_2 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_5_3 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_5_4 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_5_5 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_5_6 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_5_7 = alloca i8                     ; <i8*> [#uses=2]
  %window_val_6_0 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_6_1 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_6_2 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_6_3 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_6_4 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_6_5 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_6_6 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_6_7 = alloca i8                     ; <i8*> [#uses=2]
  %window_val_7_0 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_7_1 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_7_2 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_7_3 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_7_4 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_7_5 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_7_6 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_7_7 = alloca i8                     ; <i8*> [#uses=2]
  %window_val_8_0 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_8_1 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_8_2 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_8_3 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_8_4 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_8_5 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_8_6 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_8_7 = alloca i8                     ; <i8*> [#uses=2]
  %empty = call i32 (...)* @_ssdm_op_SpecFifo(i8* %dst_data_stream_0_V, [8 x i8]* @str131, i32 0, i32 0, i32 0, [8 x i8]* @str131) ; <i32> [#uses=0]
  %empty_117 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %src_data_stream_0_V, [8 x i8]* @str128, i32 0, i32 0, i32 0, [8 x i8]* @str128) ; <i32> [#uses=0]
  %src_cols_V_read_1 = call i12 @_ssdm_op_WireRead.i12(i12 %src_cols_V_read) ; <i12> [#uses=2]
  %src_rows_V_read_1 = call i12 @_ssdm_op_WireRead.i12(i12 %src_rows_V_read) ; <i12> [#uses=2]
  %lineBuffer_val_0 = alloca [1920 x i8], align 1 ; <[1920 x i8]*> [#uses=2]
  %lineBuffer_val_1 = alloca [1920 x i8], align 1 ; <[1920 x i8]*> [#uses=1]
  %lineBuffer_val_2 = alloca [1920 x i8], align 1 ; <[1920 x i8]*> [#uses=1]
  %lineBuffer_val_3 = alloca [1920 x i8], align 1 ; <[1920 x i8]*> [#uses=1]
  %lineBuffer_val_4 = alloca [1920 x i8], align 1 ; <[1920 x i8]*> [#uses=1]
  %lineBuffer_val_5 = alloca [1920 x i8], align 1 ; <[1920 x i8]*> [#uses=1]
  %lineBuffer_val_6 = alloca [1920 x i8], align 1 ; <[1920 x i8]*> [#uses=1]
  %lineBuffer_val_7 = alloca [1920 x i8], align 1 ; <[1920 x i8]*> [#uses=1]
  %rbegin5 = call i32 (...)* @_ssdm_op_SpecRegionBegin([59 x i8]* @p_str54) nounwind ; <i32> [#uses=1]
  %rend449 = call i32 (...)* @_ssdm_op_SpecRegionEnd([59 x i8]* @p_str54, i32 %rbegin5) nounwind ; <i32> [#uses=0]
  %retval_i4_cast = zext i12 %src_rows_V_read_1 to i13 ; <i13> [#uses=2]
  %op2_assign = add i13 %retval_i4_cast, 1        ; <i13> [#uses=1]
  %retval_i_cast = zext i12 %src_cols_V_read_1 to i13 ; <i13> [#uses=2]
  %op2_assign_1 = add i13 %retval_i_cast, 1       ; <i13> [#uses=1]
  %op2_addr_i_i = add i13 %retval_i4_cast, -1     ; <i13> [#uses=1]
  %op2_addr_i_i1 = add i13 %retval_i_cast, -1     ; <i13> [#uses=1]
  br label %bb59

bb1:                                              ; preds = %bb56
  %tmp_4 = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @p_str47) ; <i32> [#uses=1]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, [1 x i8]* @p_str) nounwind
  %not4 = icmp ult i12 %t_V_6_cast, %src_cols_V_read_1 ; <i1> [#uses=11]
  %or_cond = and i1 %not, %not4                   ; <i1> [#uses=2]
  br i1 %or_cond, label %bb9, label %bb10

bb9:                                              ; preds = %bb1
  %tmp = call i8 @_ssdm_op_FifoRead.volatile.i8P(i8* %src_data_stream_0_V) ; <i8> [#uses=1]
  store i8 %tmp, i8* %pixel_in_val
  br label %bb10

bb10:                                             ; preds = %bb9, %bb1
  br i1 %not4, label %getval.exit491, label %bb12

getval.exit491:                                   ; preds = %bb10
  %lineBuffer_val_0_addr = getelementptr [1920 x i8]* %lineBuffer_val_0, i64 0, i64 %tmp_2 ; <i8*> [#uses=1]
  %return_value_9 = load i8* %lineBuffer_val_0_addr, align 1 ; <i8> [#uses=2]
  %lineBuffer_val_1_addr = getelementptr [1920 x i8]* %lineBuffer_val_1, i64 0, i64 %tmp_2 ; <i8*> [#uses=2]
  %return_value_10 = load i8* %lineBuffer_val_1_addr, align 1 ; <i8> [#uses=2]
  %lineBuffer_val_2_addr = getelementptr [1920 x i8]* %lineBuffer_val_2, i64 0, i64 %tmp_2 ; <i8*> [#uses=2]
  %return_value_11 = load i8* %lineBuffer_val_2_addr, align 1 ; <i8> [#uses=2]
  %lineBuffer_val_3_addr = getelementptr [1920 x i8]* %lineBuffer_val_3, i64 0, i64 %tmp_2 ; <i8*> [#uses=2]
  %return_value_12 = load i8* %lineBuffer_val_3_addr, align 1 ; <i8> [#uses=2]
  %lineBuffer_val_4_addr = getelementptr [1920 x i8]* %lineBuffer_val_4, i64 0, i64 %tmp_2 ; <i8*> [#uses=2]
  %return_value_13 = load i8* %lineBuffer_val_4_addr, align 1 ; <i8> [#uses=2]
  %lineBuffer_val_5_addr = getelementptr [1920 x i8]* %lineBuffer_val_5, i64 0, i64 %tmp_2 ; <i8*> [#uses=2]
  %return_value_14 = load i8* %lineBuffer_val_5_addr, align 1 ; <i8> [#uses=2]
  %lineBuffer_val_6_addr = getelementptr [1920 x i8]* %lineBuffer_val_6, i64 0, i64 %tmp_2 ; <i8*> [#uses=2]
  %return_value_15 = load i8* %lineBuffer_val_6_addr, align 1 ; <i8> [#uses=2]
  %lineBuffer_val_7_addr = getelementptr [1920 x i8]* %lineBuffer_val_7, i64 0, i64 %tmp_2 ; <i8*> [#uses=2]
  %return_value_16 = load i8* %lineBuffer_val_7_addr, align 1 ; <i8> [#uses=1]
  store i8 %return_value_15, i8* %lineBuffer_val_7_addr, align 1
  store i8 %return_value_14, i8* %lineBuffer_val_6_addr, align 1
  store i8 %return_value_13, i8* %lineBuffer_val_5_addr, align 1
  store i8 %return_value_12, i8* %lineBuffer_val_4_addr, align 1
  store i8 %return_value_11, i8* %lineBuffer_val_3_addr, align 1
  store i8 %return_value_10, i8* %lineBuffer_val_2_addr, align 1
  store i8 %return_value_9, i8* %lineBuffer_val_1_addr, align 1
  store i8 %return_value_9, i8* %lineBuff0
  store i8 %return_value_10, i8* %lineBuff1
  store i8 %return_value_11, i8* %lineBuff2
  store i8 %return_value_12, i8* %lineBuff3
  store i8 %return_value_13, i8* %lineBuff4
  store i8 %return_value_14, i8* %lineBuff5
  store i8 %return_value_15, i8* %lineBuff6
  store i8 %return_value_16, i8* %lineBuff7
  br label %bb12

bb12:                                             ; preds = %getval.exit491, %bb10
  br i1 %or_cond, label %insert_bottom.exit, label %bb.i.0_ifconv

insert_bottom.exit:                               ; preds = %bb12
  %pixel_in_val_load = load i8* %pixel_in_val     ; <i8> [#uses=1]
  %lineBuffer_val_0_addr_1 = getelementptr [1920 x i8]* %lineBuffer_val_0, i64 0, i64 %tmp_2 ; <i8*> [#uses=1]
  store i8 %pixel_in_val_load, i8* %lineBuffer_val_0_addr_1, align 1
  br label %bb.i.0_ifconv

bb.i.0_ifconv:                                    ; preds = %insert_bottom.exit, %bb12
  %lineBuff7_load = load i8* %lineBuff7           ; <i8> [#uses=1]
  %lineBuff6_load = load i8* %lineBuff6           ; <i8> [#uses=1]
  %lineBuff5_load = load i8* %lineBuff5           ; <i8> [#uses=1]
  %lineBuff4_load = load i8* %lineBuff4           ; <i8> [#uses=1]
  %lineBuff3_load = load i8* %lineBuff3           ; <i8> [#uses=1]
  %lineBuff2_load = load i8* %lineBuff2           ; <i8> [#uses=1]
  %lineBuff1_load = load i8* %lineBuff1           ; <i8> [#uses=1]
  %lineBuff0_load = load i8* %lineBuff0           ; <i8> [#uses=1]
  %pixel_in_val_load_1 = load i8* %pixel_in_val   ; <i8> [#uses=1]
  %window_val_0_0_load_1 = load i8* %window_val_0_0 ; <i8> [#uses=2]
  %window_val_0_1_load_1 = load i8* %window_val_0_1 ; <i8> [#uses=1]
  %window_val_0_2_load_1 = load i8* %window_val_0_2 ; <i8> [#uses=1]
  %window_val_0_3_load_1 = load i8* %window_val_0_3 ; <i8> [#uses=1]
  %window_val_0_4_load_1 = load i8* %window_val_0_4 ; <i8> [#uses=1]
  %window_val_0_5_load_1 = load i8* %window_val_0_5 ; <i8> [#uses=1]
  %window_val_0_6_load_1 = load i8* %window_val_0_6 ; <i8> [#uses=1]
  %window_val_0_7_load = load i8* %window_val_0_7 ; <i8> [#uses=1]
  %window_val_1_0_load_1 = load i8* %window_val_1_0 ; <i8> [#uses=2]
  %window_val_1_1_load_1 = load i8* %window_val_1_1 ; <i8> [#uses=1]
  %window_val_1_2_load_1 = load i8* %window_val_1_2 ; <i8> [#uses=1]
  %window_val_1_3_load_1 = load i8* %window_val_1_3 ; <i8> [#uses=1]
  %window_val_1_4_load_1 = load i8* %window_val_1_4 ; <i8> [#uses=1]
  %window_val_1_5_load_1 = load i8* %window_val_1_5 ; <i8> [#uses=1]
  %window_val_1_6_load_1 = load i8* %window_val_1_6 ; <i8> [#uses=1]
  %window_val_1_7_load = load i8* %window_val_1_7 ; <i8> [#uses=1]
  %window_val_2_0_load_1 = load i8* %window_val_2_0 ; <i8> [#uses=2]
  %window_val_2_1_load_1 = load i8* %window_val_2_1 ; <i8> [#uses=1]
  %window_val_2_2_load_1 = load i8* %window_val_2_2 ; <i8> [#uses=1]
  %window_val_2_3_load_1 = load i8* %window_val_2_3 ; <i8> [#uses=1]
  %window_val_2_4_load_1 = load i8* %window_val_2_4 ; <i8> [#uses=1]
  %window_val_2_5_load_1 = load i8* %window_val_2_5 ; <i8> [#uses=1]
  %window_val_2_6_load_1 = load i8* %window_val_2_6 ; <i8> [#uses=1]
  %window_val_2_7_load = load i8* %window_val_2_7 ; <i8> [#uses=1]
  %window_val_3_0_load_1 = load i8* %window_val_3_0 ; <i8> [#uses=2]
  %window_val_3_1_load_1 = load i8* %window_val_3_1 ; <i8> [#uses=1]
  %window_val_3_2_load_1 = load i8* %window_val_3_2 ; <i8> [#uses=1]
  %window_val_3_3_load_1 = load i8* %window_val_3_3 ; <i8> [#uses=1]
  %window_val_3_4_load_1 = load i8* %window_val_3_4 ; <i8> [#uses=1]
  %window_val_3_5_load_1 = load i8* %window_val_3_5 ; <i8> [#uses=1]
  %window_val_3_6_load_1 = load i8* %window_val_3_6 ; <i8> [#uses=1]
  %window_val_3_7_load = load i8* %window_val_3_7 ; <i8> [#uses=1]
  %window_val_4_0_load_1 = load i8* %window_val_4_0 ; <i8> [#uses=2]
  %window_val_4_1_load_1 = load i8* %window_val_4_1 ; <i8> [#uses=1]
  %window_val_4_2_load_1 = load i8* %window_val_4_2 ; <i8> [#uses=1]
  %window_val_4_3_load_1 = load i8* %window_val_4_3 ; <i8> [#uses=1]
  %window_val_4_4_load_1 = load i8* %window_val_4_4 ; <i8> [#uses=1]
  %window_val_4_5_load_1 = load i8* %window_val_4_5 ; <i8> [#uses=1]
  %window_val_4_6_load_1 = load i8* %window_val_4_6 ; <i8> [#uses=1]
  %window_val_4_7_load = load i8* %window_val_4_7 ; <i8> [#uses=1]
  %window_val_5_0_load_1 = load i8* %window_val_5_0 ; <i8> [#uses=2]
  %window_val_5_1_load_1 = load i8* %window_val_5_1 ; <i8> [#uses=1]
  %window_val_5_2_load_1 = load i8* %window_val_5_2 ; <i8> [#uses=1]
  %window_val_5_3_load_1 = load i8* %window_val_5_3 ; <i8> [#uses=1]
  %window_val_5_4_load_1 = load i8* %window_val_5_4 ; <i8> [#uses=1]
  %window_val_5_5_load_1 = load i8* %window_val_5_5 ; <i8> [#uses=1]
  %window_val_5_6_load_1 = load i8* %window_val_5_6 ; <i8> [#uses=1]
  %window_val_5_7_load = load i8* %window_val_5_7 ; <i8> [#uses=1]
  %window_val_6_0_load_1 = load i8* %window_val_6_0 ; <i8> [#uses=2]
  %window_val_6_1_load_1 = load i8* %window_val_6_1 ; <i8> [#uses=1]
  %window_val_6_2_load_1 = load i8* %window_val_6_2 ; <i8> [#uses=1]
  %window_val_6_3_load_1 = load i8* %window_val_6_3 ; <i8> [#uses=1]
  %window_val_6_4_load_1 = load i8* %window_val_6_4 ; <i8> [#uses=1]
  %window_val_6_5_load_1 = load i8* %window_val_6_5 ; <i8> [#uses=1]
  %window_val_6_6_load_1 = load i8* %window_val_6_6 ; <i8> [#uses=1]
  %window_val_6_7_load = load i8* %window_val_6_7 ; <i8> [#uses=1]
  %window_val_7_0_load_1 = load i8* %window_val_7_0 ; <i8> [#uses=2]
  %window_val_7_1_load_1 = load i8* %window_val_7_1 ; <i8> [#uses=1]
  %window_val_7_2_load_1 = load i8* %window_val_7_2 ; <i8> [#uses=1]
  %window_val_7_3_load_1 = load i8* %window_val_7_3 ; <i8> [#uses=1]
  %window_val_7_4_load_1 = load i8* %window_val_7_4 ; <i8> [#uses=1]
  %window_val_7_5_load_1 = load i8* %window_val_7_5 ; <i8> [#uses=1]
  %window_val_7_6_load_1 = load i8* %window_val_7_6 ; <i8> [#uses=1]
  %window_val_7_7_load = load i8* %window_val_7_7 ; <i8> [#uses=1]
  %window_val_8_0_load_1 = load i8* %window_val_8_0 ; <i8> [#uses=2]
  %window_val_8_1_load_1 = load i8* %window_val_8_1 ; <i8> [#uses=1]
  %window_val_8_2_load_1 = load i8* %window_val_8_2 ; <i8> [#uses=1]
  %window_val_8_3_load_1 = load i8* %window_val_8_3 ; <i8> [#uses=1]
  %window_val_8_4_load_1 = load i8* %window_val_8_4 ; <i8> [#uses=1]
  %window_val_8_5_load_1 = load i8* %window_val_8_5 ; <i8> [#uses=1]
  %window_val_8_6_load_1 = load i8* %window_val_8_6 ; <i8> [#uses=1]
  %window_val_8_7_load = load i8* %window_val_8_7 ; <i8> [#uses=1]
  %window_val_8_0_2 = select i1 %not4, i8 %lineBuff0_load, i8 %window_val_8_0_load_1 ; <i8> [#uses=2]
  %window_val_7_0_2 = select i1 %not4, i8 %lineBuff1_load, i8 %window_val_7_0_load_1 ; <i8> [#uses=2]
  %window_val_6_0_2 = select i1 %not4, i8 %lineBuff2_load, i8 %window_val_6_0_load_1 ; <i8> [#uses=2]
  %window_val_5_0_2 = select i1 %not4, i8 %lineBuff3_load, i8 %window_val_5_0_load_1 ; <i8> [#uses=2]
  %window_val_4_0_2 = select i1 %not4, i8 %lineBuff4_load, i8 %window_val_4_0_load_1 ; <i8> [#uses=2]
  %window_val_3_0_2 = select i1 %not4, i8 %lineBuff5_load, i8 %window_val_3_0_load_1 ; <i8> [#uses=2]
  %window_val_2_0_2 = select i1 %not4, i8 %lineBuff6_load, i8 %window_val_2_0_load_1 ; <i8> [#uses=2]
  %window_val_1_0_2 = select i1 %not4, i8 %lineBuff7_load, i8 %window_val_1_0_load_1 ; <i8> [#uses=2]
  %window_val_0_0_2 = select i1 %not4, i8 %pixel_in_val_load_1, i8 %window_val_0_0_load_1 ; <i8> [#uses=2]
  %tr = call i8 @_ssdm_op_PartSelect.i8.i11.i32.i32(i11 %t_V, i32 3, i32 10) ; <i8> [#uses=1]
  %icmp = icmp eq i8 %tr, 0                       ; <i1> [#uses=1]
  %tmp_8 = icmp ugt i13 %tmp_33_cast, %op2_addr_i_i1 ; <i1> [#uses=1]
  %tmp2 = or i1 %icmp6, %icmp                     ; <i1> [#uses=1]
  %tmp3 = or i1 %tmp_1, %tmp_8                    ; <i1> [#uses=1]
  %or_cond7 = or i1 %tmp3, %tmp2                  ; <i1> [#uses=1]
  %not_tmp_s = icmp ne i8 %window_val_0_0_2, 0    ; <i1> [#uses=2]
  %countOnes_cast = zext i1 %not_tmp_s to i2      ; <i2> [#uses=1]
  %tmp_60_0_1 = icmp eq i8 %window_val_0_0_load_1, 0 ; <i1> [#uses=1]
  %tmp_61_0_1 = select i1 %not_tmp_s, i2 -2, i2 1 ; <i2> [#uses=1]
  %countOnes = select i1 %tmp_60_0_1, i2 %countOnes_cast, i2 %tmp_61_0_1 ; <i2> [#uses=2]
  %tmp_60_0_2 = icmp eq i8 %window_val_0_1_load_1, 0 ; <i1> [#uses=1]
  %tmp_61_0_2 = add i2 %countOnes, 1              ; <i2> [#uses=1]
  %countOnes_1 = select i1 %tmp_60_0_2, i2 %countOnes, i2 %tmp_61_0_2 ; <i2> [#uses=1]
  %countOnes_2_cast = zext i2 %countOnes_1 to i3  ; <i3> [#uses=2]
  %tmp_60_0_3 = icmp eq i8 %window_val_0_2_load_1, 0 ; <i1> [#uses=1]
  %tmp_61_0_3 = add i3 %countOnes_2_cast, 1       ; <i3> [#uses=1]
  %countOnes_2 = select i1 %tmp_60_0_3, i3 %countOnes_2_cast, i3 %tmp_61_0_3 ; <i3> [#uses=2]
  %tmp_60_0_4 = icmp eq i8 %window_val_0_3_load_1, 0 ; <i1> [#uses=1]
  %tmp_61_0_4 = add i3 %countOnes_2, 1            ; <i3> [#uses=1]
  %countOnes_3 = select i1 %tmp_60_0_4, i3 %countOnes_2, i3 %tmp_61_0_4 ; <i3> [#uses=2]
  %tmp_60_0_5 = icmp eq i8 %window_val_0_4_load_1, 0 ; <i1> [#uses=1]
  %tmp_61_0_5 = add i3 %countOnes_3, 1            ; <i3> [#uses=1]
  %countOnes_4 = select i1 %tmp_60_0_5, i3 %countOnes_3, i3 %tmp_61_0_5 ; <i3> [#uses=2]
  %tmp_60_0_6 = icmp eq i8 %window_val_0_5_load_1, 0 ; <i1> [#uses=1]
  %tmp_61_0_6 = add i3 %countOnes_4, 1            ; <i3> [#uses=1]
  %countOnes_5 = select i1 %tmp_60_0_6, i3 %countOnes_4, i3 %tmp_61_0_6 ; <i3> [#uses=1]
  %countOnes_6_cast = zext i3 %countOnes_5 to i4  ; <i4> [#uses=2]
  %tmp_60_0_7 = icmp eq i8 %window_val_0_6_load_1, 0 ; <i1> [#uses=1]
  %tmp_61_0_7 = add i4 %countOnes_6_cast, 1       ; <i4> [#uses=1]
  %countOnes_6 = select i1 %tmp_60_0_7, i4 %countOnes_6_cast, i4 %tmp_61_0_7 ; <i4> [#uses=2]
  %tmp_60_0_8 = icmp eq i8 %window_val_0_7_load, 0 ; <i1> [#uses=1]
  %tmp_61_0_8 = add i4 %countOnes_6, 1            ; <i4> [#uses=1]
  %countOnes_7 = select i1 %tmp_60_0_8, i4 %countOnes_6, i4 %tmp_61_0_8 ; <i4> [#uses=2]
  %tmp_60_1 = icmp eq i8 %window_val_1_0_2, 0     ; <i1> [#uses=1]
  %tmp_61_1 = add i4 %countOnes_7, 1              ; <i4> [#uses=1]
  %countOnes_8 = select i1 %tmp_60_1, i4 %countOnes_7, i4 %tmp_61_1 ; <i4> [#uses=2]
  %tmp_60_1_1 = icmp eq i8 %window_val_1_0_load_1, 0 ; <i1> [#uses=1]
  %tmp_61_1_1 = add i4 %countOnes_8, 1            ; <i4> [#uses=1]
  %countOnes_9 = select i1 %tmp_60_1_1, i4 %countOnes_8, i4 %tmp_61_1_1 ; <i4> [#uses=2]
  %tmp_60_1_2 = icmp eq i8 %window_val_1_1_load_1, 0 ; <i1> [#uses=1]
  %tmp_61_1_2 = add i4 %countOnes_9, 1            ; <i4> [#uses=1]
  %countOnes_10 = select i1 %tmp_60_1_2, i4 %countOnes_9, i4 %tmp_61_1_2 ; <i4> [#uses=2]
  %tmp_60_1_3 = icmp eq i8 %window_val_1_2_load_1, 0 ; <i1> [#uses=1]
  %tmp_61_1_3 = add i4 %countOnes_10, 1           ; <i4> [#uses=1]
  %countOnes_11 = select i1 %tmp_60_1_3, i4 %countOnes_10, i4 %tmp_61_1_3 ; <i4> [#uses=2]
  %tmp_60_1_4 = icmp eq i8 %window_val_1_3_load_1, 0 ; <i1> [#uses=1]
  %tmp_61_1_4 = add i4 %countOnes_11, 1           ; <i4> [#uses=1]
  %countOnes_12 = select i1 %tmp_60_1_4, i4 %countOnes_11, i4 %tmp_61_1_4 ; <i4> [#uses=2]
  %tmp_60_1_5 = icmp eq i8 %window_val_1_4_load_1, 0 ; <i1> [#uses=1]
  %tmp_61_1_5 = add i4 %countOnes_12, 1           ; <i4> [#uses=1]
  %countOnes_13 = select i1 %tmp_60_1_5, i4 %countOnes_12, i4 %tmp_61_1_5 ; <i4> [#uses=1]
  %countOnes_14_cast = zext i4 %countOnes_13 to i5 ; <i5> [#uses=2]
  %tmp_60_1_6 = icmp eq i8 %window_val_1_5_load_1, 0 ; <i1> [#uses=1]
  %tmp_61_1_6 = add i5 %countOnes_14_cast, 1      ; <i5> [#uses=1]
  %countOnes_14 = select i1 %tmp_60_1_6, i5 %countOnes_14_cast, i5 %tmp_61_1_6 ; <i5> [#uses=2]
  %tmp_60_1_7 = icmp eq i8 %window_val_1_6_load_1, 0 ; <i1> [#uses=1]
  %tmp_61_1_7 = add i5 %countOnes_14, 1           ; <i5> [#uses=1]
  %countOnes_15 = select i1 %tmp_60_1_7, i5 %countOnes_14, i5 %tmp_61_1_7 ; <i5> [#uses=2]
  %tmp_60_1_8 = icmp eq i8 %window_val_1_7_load, 0 ; <i1> [#uses=1]
  %tmp_61_1_8 = add i5 %countOnes_15, 1           ; <i5> [#uses=1]
  %countOnes_16 = select i1 %tmp_60_1_8, i5 %countOnes_15, i5 %tmp_61_1_8 ; <i5> [#uses=2]
  %tmp_60_2 = icmp eq i8 %window_val_2_0_2, 0     ; <i1> [#uses=1]
  %tmp_61_2 = add i5 %countOnes_16, 1             ; <i5> [#uses=1]
  %countOnes_17 = select i1 %tmp_60_2, i5 %countOnes_16, i5 %tmp_61_2 ; <i5> [#uses=2]
  %tmp_60_2_1 = icmp eq i8 %window_val_2_0_load_1, 0 ; <i1> [#uses=1]
  %tmp_61_2_1 = add i5 %countOnes_17, 1           ; <i5> [#uses=1]
  %countOnes_18 = select i1 %tmp_60_2_1, i5 %countOnes_17, i5 %tmp_61_2_1 ; <i5> [#uses=2]
  %tmp_60_2_2 = icmp eq i8 %window_val_2_1_load_1, 0 ; <i1> [#uses=1]
  %tmp_61_2_2 = add i5 %countOnes_18, 1           ; <i5> [#uses=1]
  %countOnes_19 = select i1 %tmp_60_2_2, i5 %countOnes_18, i5 %tmp_61_2_2 ; <i5> [#uses=2]
  %tmp_60_2_3 = icmp eq i8 %window_val_2_2_load_1, 0 ; <i1> [#uses=1]
  %tmp_61_2_3 = add i5 %countOnes_19, 1           ; <i5> [#uses=1]
  %countOnes_20 = select i1 %tmp_60_2_3, i5 %countOnes_19, i5 %tmp_61_2_3 ; <i5> [#uses=2]
  %tmp_60_2_4 = icmp eq i8 %window_val_2_3_load_1, 0 ; <i1> [#uses=1]
  %tmp_61_2_4 = add i5 %countOnes_20, 1           ; <i5> [#uses=1]
  %countOnes_21 = select i1 %tmp_60_2_4, i5 %countOnes_20, i5 %tmp_61_2_4 ; <i5> [#uses=2]
  %tmp_60_2_5 = icmp eq i8 %window_val_2_4_load_1, 0 ; <i1> [#uses=1]
  %tmp_61_2_5 = add i5 %countOnes_21, 1           ; <i5> [#uses=1]
  %countOnes_22 = select i1 %tmp_60_2_5, i5 %countOnes_21, i5 %tmp_61_2_5 ; <i5> [#uses=2]
  %tmp_60_2_6 = icmp eq i8 %window_val_2_5_load_1, 0 ; <i1> [#uses=1]
  %tmp_61_2_6 = add i5 %countOnes_22, 1           ; <i5> [#uses=1]
  %countOnes_23 = select i1 %tmp_60_2_6, i5 %countOnes_22, i5 %tmp_61_2_6 ; <i5> [#uses=2]
  %tmp_60_2_7 = icmp eq i8 %window_val_2_6_load_1, 0 ; <i1> [#uses=1]
  %tmp_61_2_7 = add i5 %countOnes_23, 1           ; <i5> [#uses=1]
  %countOnes_24 = select i1 %tmp_60_2_7, i5 %countOnes_23, i5 %tmp_61_2_7 ; <i5> [#uses=2]
  %tmp_60_2_8 = icmp eq i8 %window_val_2_7_load, 0 ; <i1> [#uses=1]
  %tmp_61_2_8 = add i5 %countOnes_24, 1           ; <i5> [#uses=1]
  %countOnes_25 = select i1 %tmp_60_2_8, i5 %countOnes_24, i5 %tmp_61_2_8 ; <i5> [#uses=2]
  %tmp_60_3 = icmp eq i8 %window_val_3_0_2, 0     ; <i1> [#uses=1]
  %tmp_61_3 = add i5 %countOnes_25, 1             ; <i5> [#uses=1]
  %countOnes_26 = select i1 %tmp_60_3, i5 %countOnes_25, i5 %tmp_61_3 ; <i5> [#uses=2]
  %tmp_60_3_1 = icmp eq i8 %window_val_3_0_load_1, 0 ; <i1> [#uses=1]
  %tmp_61_3_1 = add i5 %countOnes_26, 1           ; <i5> [#uses=1]
  %countOnes_27 = select i1 %tmp_60_3_1, i5 %countOnes_26, i5 %tmp_61_3_1 ; <i5> [#uses=2]
  %tmp_60_3_2 = icmp eq i8 %window_val_3_1_load_1, 0 ; <i1> [#uses=1]
  %tmp_61_3_2 = add i5 %countOnes_27, 1           ; <i5> [#uses=1]
  %countOnes_28 = select i1 %tmp_60_3_2, i5 %countOnes_27, i5 %tmp_61_3_2 ; <i5> [#uses=2]
  %tmp_60_3_3 = icmp eq i8 %window_val_3_2_load_1, 0 ; <i1> [#uses=1]
  %tmp_61_3_3 = add i5 %countOnes_28, 1           ; <i5> [#uses=1]
  %countOnes_29 = select i1 %tmp_60_3_3, i5 %countOnes_28, i5 %tmp_61_3_3 ; <i5> [#uses=1]
  %countOnes_30_cast = zext i5 %countOnes_29 to i6 ; <i6> [#uses=2]
  %tmp_60_3_4 = icmp eq i8 %window_val_3_3_load_1, 0 ; <i1> [#uses=1]
  %tmp_61_3_4 = add i6 %countOnes_30_cast, 1      ; <i6> [#uses=1]
  %countOnes_30 = select i1 %tmp_60_3_4, i6 %countOnes_30_cast, i6 %tmp_61_3_4 ; <i6> [#uses=2]
  %tmp_60_3_5 = icmp eq i8 %window_val_3_4_load_1, 0 ; <i1> [#uses=1]
  %tmp_61_3_5 = add i6 %countOnes_30, 1           ; <i6> [#uses=1]
  %countOnes_31 = select i1 %tmp_60_3_5, i6 %countOnes_30, i6 %tmp_61_3_5 ; <i6> [#uses=2]
  %tmp_60_3_6 = icmp eq i8 %window_val_3_5_load_1, 0 ; <i1> [#uses=1]
  %tmp_61_3_6 = add i6 %countOnes_31, 1           ; <i6> [#uses=1]
  %countOnes_32 = select i1 %tmp_60_3_6, i6 %countOnes_31, i6 %tmp_61_3_6 ; <i6> [#uses=2]
  %tmp_60_3_7 = icmp eq i8 %window_val_3_6_load_1, 0 ; <i1> [#uses=1]
  %tmp_61_3_7 = add i6 %countOnes_32, 1           ; <i6> [#uses=1]
  %countOnes_33 = select i1 %tmp_60_3_7, i6 %countOnes_32, i6 %tmp_61_3_7 ; <i6> [#uses=2]
  %tmp_60_3_8 = icmp eq i8 %window_val_3_7_load, 0 ; <i1> [#uses=1]
  %tmp_61_3_8 = add i6 %countOnes_33, 1           ; <i6> [#uses=1]
  %countOnes_34 = select i1 %tmp_60_3_8, i6 %countOnes_33, i6 %tmp_61_3_8 ; <i6> [#uses=2]
  %tmp_60_4 = icmp eq i8 %window_val_4_0_2, 0     ; <i1> [#uses=1]
  %tmp_61_4 = add i6 %countOnes_34, 1             ; <i6> [#uses=1]
  %countOnes_35 = select i1 %tmp_60_4, i6 %countOnes_34, i6 %tmp_61_4 ; <i6> [#uses=2]
  %tmp_60_4_1 = icmp eq i8 %window_val_4_0_load_1, 0 ; <i1> [#uses=1]
  %tmp_61_4_1 = add i6 %countOnes_35, 1           ; <i6> [#uses=1]
  %countOnes_36 = select i1 %tmp_60_4_1, i6 %countOnes_35, i6 %tmp_61_4_1 ; <i6> [#uses=2]
  %tmp_60_4_2 = icmp eq i8 %window_val_4_1_load_1, 0 ; <i1> [#uses=1]
  %tmp_61_4_2 = add i6 %countOnes_36, 1           ; <i6> [#uses=1]
  %countOnes_37 = select i1 %tmp_60_4_2, i6 %countOnes_36, i6 %tmp_61_4_2 ; <i6> [#uses=2]
  %tmp_60_4_3 = icmp eq i8 %window_val_4_2_load_1, 0 ; <i1> [#uses=1]
  %tmp_61_4_3 = add i6 %countOnes_37, 1           ; <i6> [#uses=1]
  %countOnes_38 = select i1 %tmp_60_4_3, i6 %countOnes_37, i6 %tmp_61_4_3 ; <i6> [#uses=2]
  %tmp_60_4_4 = icmp eq i8 %window_val_4_3_load_1, 0 ; <i1> [#uses=1]
  %tmp_61_4_4 = add i6 %countOnes_38, 1           ; <i6> [#uses=1]
  %countOnes_39 = select i1 %tmp_60_4_4, i6 %countOnes_38, i6 %tmp_61_4_4 ; <i6> [#uses=2]
  %tmp_60_4_5 = icmp eq i8 %window_val_4_4_load_1, 0 ; <i1> [#uses=1]
  %tmp_61_4_5 = add i6 %countOnes_39, 1           ; <i6> [#uses=1]
  %countOnes_40 = select i1 %tmp_60_4_5, i6 %countOnes_39, i6 %tmp_61_4_5 ; <i6> [#uses=2]
  %tmp_60_4_6 = icmp eq i8 %window_val_4_5_load_1, 0 ; <i1> [#uses=1]
  %tmp_61_4_6 = add i6 %countOnes_40, 1           ; <i6> [#uses=1]
  %countOnes_41 = select i1 %tmp_60_4_6, i6 %countOnes_40, i6 %tmp_61_4_6 ; <i6> [#uses=2]
  %tmp_60_4_7 = icmp eq i8 %window_val_4_6_load_1, 0 ; <i1> [#uses=1]
  %tmp_61_4_7 = add i6 %countOnes_41, 1           ; <i6> [#uses=1]
  %countOnes_42 = select i1 %tmp_60_4_7, i6 %countOnes_41, i6 %tmp_61_4_7 ; <i6> [#uses=2]
  %tmp_60_4_8 = icmp eq i8 %window_val_4_7_load, 0 ; <i1> [#uses=1]
  %tmp_61_4_8 = add i6 %countOnes_42, 1           ; <i6> [#uses=1]
  %countOnes_43 = select i1 %tmp_60_4_8, i6 %countOnes_42, i6 %tmp_61_4_8 ; <i6> [#uses=2]
  %tmp_60_5 = icmp eq i8 %window_val_5_0_2, 0     ; <i1> [#uses=1]
  %tmp_61_5 = add i6 %countOnes_43, 1             ; <i6> [#uses=1]
  %countOnes_44 = select i1 %tmp_60_5, i6 %countOnes_43, i6 %tmp_61_5 ; <i6> [#uses=2]
  %tmp_60_5_1 = icmp eq i8 %window_val_5_0_load_1, 0 ; <i1> [#uses=1]
  %tmp_61_5_1 = add i6 %countOnes_44, 1           ; <i6> [#uses=1]
  %countOnes_45 = select i1 %tmp_60_5_1, i6 %countOnes_44, i6 %tmp_61_5_1 ; <i6> [#uses=2]
  %tmp_60_5_2 = icmp eq i8 %window_val_5_1_load_1, 0 ; <i1> [#uses=1]
  %tmp_61_5_2 = add i6 %countOnes_45, 1           ; <i6> [#uses=1]
  %countOnes_46 = select i1 %tmp_60_5_2, i6 %countOnes_45, i6 %tmp_61_5_2 ; <i6> [#uses=2]
  %tmp_60_5_3 = icmp eq i8 %window_val_5_2_load_1, 0 ; <i1> [#uses=1]
  %tmp_61_5_3 = add i6 %countOnes_46, 1           ; <i6> [#uses=1]
  %countOnes_47 = select i1 %tmp_60_5_3, i6 %countOnes_46, i6 %tmp_61_5_3 ; <i6> [#uses=2]
  %tmp_60_5_4 = icmp eq i8 %window_val_5_3_load_1, 0 ; <i1> [#uses=1]
  %tmp_61_5_4 = add i6 %countOnes_47, 1           ; <i6> [#uses=1]
  %countOnes_48 = select i1 %tmp_60_5_4, i6 %countOnes_47, i6 %tmp_61_5_4 ; <i6> [#uses=2]
  %tmp_60_5_5 = icmp eq i8 %window_val_5_4_load_1, 0 ; <i1> [#uses=1]
  %tmp_61_5_5 = add i6 %countOnes_48, 1           ; <i6> [#uses=1]
  %countOnes_49 = select i1 %tmp_60_5_5, i6 %countOnes_48, i6 %tmp_61_5_5 ; <i6> [#uses=2]
  %tmp_60_5_6 = icmp eq i8 %window_val_5_5_load_1, 0 ; <i1> [#uses=1]
  %tmp_61_5_6 = add i6 %countOnes_49, 1           ; <i6> [#uses=1]
  %countOnes_50 = select i1 %tmp_60_5_6, i6 %countOnes_49, i6 %tmp_61_5_6 ; <i6> [#uses=2]
  %tmp_60_5_7 = icmp eq i8 %window_val_5_6_load_1, 0 ; <i1> [#uses=1]
  %tmp_61_5_7 = add i6 %countOnes_50, 1           ; <i6> [#uses=1]
  %countOnes_51 = select i1 %tmp_60_5_7, i6 %countOnes_50, i6 %tmp_61_5_7 ; <i6> [#uses=2]
  %tmp_60_5_8 = icmp eq i8 %window_val_5_7_load, 0 ; <i1> [#uses=1]
  %tmp_61_5_8 = add i6 %countOnes_51, 1           ; <i6> [#uses=1]
  %countOnes_52 = select i1 %tmp_60_5_8, i6 %countOnes_51, i6 %tmp_61_5_8 ; <i6> [#uses=2]
  %tmp_60_6 = icmp eq i8 %window_val_6_0_2, 0     ; <i1> [#uses=1]
  %tmp_61_6 = add i6 %countOnes_52, 1             ; <i6> [#uses=1]
  %countOnes_53 = select i1 %tmp_60_6, i6 %countOnes_52, i6 %tmp_61_6 ; <i6> [#uses=2]
  %tmp_60_6_1 = icmp eq i8 %window_val_6_0_load_1, 0 ; <i1> [#uses=1]
  %tmp_61_6_1 = add i6 %countOnes_53, 1           ; <i6> [#uses=1]
  %countOnes_54 = select i1 %tmp_60_6_1, i6 %countOnes_53, i6 %tmp_61_6_1 ; <i6> [#uses=2]
  %tmp_60_6_2 = icmp eq i8 %window_val_6_1_load_1, 0 ; <i1> [#uses=1]
  %tmp_61_6_2 = add i6 %countOnes_54, 1           ; <i6> [#uses=1]
  %countOnes_55 = select i1 %tmp_60_6_2, i6 %countOnes_54, i6 %tmp_61_6_2 ; <i6> [#uses=2]
  %tmp_60_6_3 = icmp eq i8 %window_val_6_2_load_1, 0 ; <i1> [#uses=1]
  %tmp_61_6_3 = add i6 %countOnes_55, 1           ; <i6> [#uses=1]
  %countOnes_56 = select i1 %tmp_60_6_3, i6 %countOnes_55, i6 %tmp_61_6_3 ; <i6> [#uses=2]
  %tmp_60_6_4 = icmp eq i8 %window_val_6_3_load_1, 0 ; <i1> [#uses=1]
  %tmp_61_6_4 = add i6 %countOnes_56, 1           ; <i6> [#uses=1]
  %countOnes_57 = select i1 %tmp_60_6_4, i6 %countOnes_56, i6 %tmp_61_6_4 ; <i6> [#uses=2]
  %tmp_60_6_5 = icmp eq i8 %window_val_6_4_load_1, 0 ; <i1> [#uses=1]
  %tmp_61_6_5 = add i6 %countOnes_57, 1           ; <i6> [#uses=1]
  %countOnes_58 = select i1 %tmp_60_6_5, i6 %countOnes_57, i6 %tmp_61_6_5 ; <i6> [#uses=2]
  %tmp_60_6_6 = icmp eq i8 %window_val_6_5_load_1, 0 ; <i1> [#uses=1]
  %tmp_61_6_6 = add i6 %countOnes_58, 1           ; <i6> [#uses=1]
  %countOnes_59 = select i1 %tmp_60_6_6, i6 %countOnes_58, i6 %tmp_61_6_6 ; <i6> [#uses=2]
  %tmp_60_6_7 = icmp eq i8 %window_val_6_6_load_1, 0 ; <i1> [#uses=1]
  %tmp_61_6_7 = add i6 %countOnes_59, 1           ; <i6> [#uses=1]
  %countOnes_60 = select i1 %tmp_60_6_7, i6 %countOnes_59, i6 %tmp_61_6_7 ; <i6> [#uses=2]
  %tmp_60_6_8 = icmp eq i8 %window_val_6_7_load, 0 ; <i1> [#uses=1]
  %tmp_61_6_8 = add i6 %countOnes_60, 1           ; <i6> [#uses=1]
  %countOnes_61 = select i1 %tmp_60_6_8, i6 %countOnes_60, i6 %tmp_61_6_8 ; <i6> [#uses=1]
  %countOnes_62_cast = zext i6 %countOnes_61 to i7 ; <i7> [#uses=2]
  %tmp_60_7 = icmp eq i8 %window_val_7_0_2, 0     ; <i1> [#uses=1]
  %tmp_61_7 = add i7 %countOnes_62_cast, 1        ; <i7> [#uses=1]
  %countOnes_62 = select i1 %tmp_60_7, i7 %countOnes_62_cast, i7 %tmp_61_7 ; <i7> [#uses=2]
  %tmp_60_7_1 = icmp eq i8 %window_val_7_0_load_1, 0 ; <i1> [#uses=1]
  %tmp_61_7_1 = add i7 %countOnes_62, 1           ; <i7> [#uses=1]
  %countOnes_63 = select i1 %tmp_60_7_1, i7 %countOnes_62, i7 %tmp_61_7_1 ; <i7> [#uses=2]
  %tmp_60_7_2 = icmp eq i8 %window_val_7_1_load_1, 0 ; <i1> [#uses=1]
  %tmp_61_7_2 = add i7 %countOnes_63, 1           ; <i7> [#uses=1]
  %countOnes_64 = select i1 %tmp_60_7_2, i7 %countOnes_63, i7 %tmp_61_7_2 ; <i7> [#uses=2]
  %tmp_60_7_3 = icmp eq i8 %window_val_7_2_load_1, 0 ; <i1> [#uses=1]
  %tmp_61_7_3 = add i7 %countOnes_64, 1           ; <i7> [#uses=1]
  %countOnes_65 = select i1 %tmp_60_7_3, i7 %countOnes_64, i7 %tmp_61_7_3 ; <i7> [#uses=2]
  %tmp_60_7_4 = icmp eq i8 %window_val_7_3_load_1, 0 ; <i1> [#uses=1]
  %tmp_61_7_4 = add i7 %countOnes_65, 1           ; <i7> [#uses=1]
  %countOnes_66 = select i1 %tmp_60_7_4, i7 %countOnes_65, i7 %tmp_61_7_4 ; <i7> [#uses=2]
  %tmp_60_7_5 = icmp eq i8 %window_val_7_4_load_1, 0 ; <i1> [#uses=1]
  %tmp_61_7_5 = add i7 %countOnes_66, 1           ; <i7> [#uses=1]
  %countOnes_67 = select i1 %tmp_60_7_5, i7 %countOnes_66, i7 %tmp_61_7_5 ; <i7> [#uses=2]
  %tmp_60_7_6 = icmp eq i8 %window_val_7_5_load_1, 0 ; <i1> [#uses=1]
  %tmp_61_7_6 = add i7 %countOnes_67, 1           ; <i7> [#uses=1]
  %countOnes_68 = select i1 %tmp_60_7_6, i7 %countOnes_67, i7 %tmp_61_7_6 ; <i7> [#uses=2]
  %tmp_60_7_7 = icmp eq i8 %window_val_7_6_load_1, 0 ; <i1> [#uses=1]
  %tmp_61_7_7 = add i7 %countOnes_68, 1           ; <i7> [#uses=1]
  %countOnes_69 = select i1 %tmp_60_7_7, i7 %countOnes_68, i7 %tmp_61_7_7 ; <i7> [#uses=2]
  %tmp_60_7_8 = icmp eq i8 %window_val_7_7_load, 0 ; <i1> [#uses=1]
  %tmp_61_7_8 = add i7 %countOnes_69, 1           ; <i7> [#uses=1]
  %countOnes_70 = select i1 %tmp_60_7_8, i7 %countOnes_69, i7 %tmp_61_7_8 ; <i7> [#uses=2]
  %tmp_60_8 = icmp eq i8 %window_val_8_0_2, 0     ; <i1> [#uses=1]
  %tmp_61_8 = add i7 %countOnes_70, 1             ; <i7> [#uses=1]
  %countOnes_71 = select i1 %tmp_60_8, i7 %countOnes_70, i7 %tmp_61_8 ; <i7> [#uses=2]
  %tmp_60_8_1 = icmp eq i8 %window_val_8_0_load_1, 0 ; <i1> [#uses=1]
  %tmp_61_8_1 = add i7 %countOnes_71, 1           ; <i7> [#uses=1]
  %countOnes_72 = select i1 %tmp_60_8_1, i7 %countOnes_71, i7 %tmp_61_8_1 ; <i7> [#uses=2]
  %tmp_60_8_2 = icmp eq i8 %window_val_8_1_load_1, 0 ; <i1> [#uses=1]
  %tmp_61_8_2 = add i7 %countOnes_72, 1           ; <i7> [#uses=1]
  %countOnes_73 = select i1 %tmp_60_8_2, i7 %countOnes_72, i7 %tmp_61_8_2 ; <i7> [#uses=2]
  %tmp_60_8_3 = icmp eq i8 %window_val_8_2_load_1, 0 ; <i1> [#uses=1]
  %tmp_61_8_3 = add i7 %countOnes_73, 1           ; <i7> [#uses=1]
  %countOnes_74 = select i1 %tmp_60_8_3, i7 %countOnes_73, i7 %tmp_61_8_3 ; <i7> [#uses=2]
  %tmp_60_8_4 = icmp eq i8 %window_val_8_3_load_1, 0 ; <i1> [#uses=1]
  %tmp_61_8_4 = add i7 %countOnes_74, 1           ; <i7> [#uses=1]
  %countOnes_75 = select i1 %tmp_60_8_4, i7 %countOnes_74, i7 %tmp_61_8_4 ; <i7> [#uses=2]
  %tmp_60_8_5 = icmp eq i8 %window_val_8_4_load_1, 0 ; <i1> [#uses=1]
  %tmp_61_8_5 = add i7 %countOnes_75, 1           ; <i7> [#uses=1]
  %countOnes_76 = select i1 %tmp_60_8_5, i7 %countOnes_75, i7 %tmp_61_8_5 ; <i7> [#uses=2]
  %tmp_60_8_6 = icmp eq i8 %window_val_8_5_load_1, 0 ; <i1> [#uses=1]
  %tmp_61_8_6 = add i7 %countOnes_76, 1           ; <i7> [#uses=1]
  %countOnes_77 = select i1 %tmp_60_8_6, i7 %countOnes_76, i7 %tmp_61_8_6 ; <i7> [#uses=2]
  %tmp_60_8_7 = icmp eq i8 %window_val_8_6_load_1, 0 ; <i1> [#uses=1]
  %tmp_61_8_7 = add i7 %countOnes_77, 1           ; <i7> [#uses=1]
  %countOnes_78 = select i1 %tmp_60_8_7, i7 %countOnes_77, i7 %tmp_61_8_7 ; <i7> [#uses=2]
  %tmp_60_8_8 = icmp eq i8 %window_val_8_7_load, 0 ; <i1> [#uses=1]
  %tmp_61_8_8 = add i7 %countOnes_78, 1           ; <i7> [#uses=1]
  %countOnes_79 = select i1 %tmp_60_8_8, i7 %countOnes_78, i7 %tmp_61_8_8 ; <i7> [#uses=1]
  %tmp_9 = icmp ugt i7 %countOnes_79, 41          ; <i1> [#uses=1]
  %not_or_cond7 = xor i1 %or_cond7, true          ; <i1> [#uses=1]
  %pixel_out_val = and i1 %tmp_9, %not_or_cond7   ; <i1> [#uses=1]
  %pixel_out_val_5_cast = sext i1 %pixel_out_val to i8 ; <i8> [#uses=1]
  %notlhs = icmp ne i11 %t_V, 0                   ; <i1> [#uses=1]
  %not_or_cond = and i1 %notrhs, %notlhs          ; <i1> [#uses=1]
  br i1 %not_or_cond, label %bb54, label %bb55

bb54:                                             ; preds = %bb.i.0_ifconv
  call void @_ssdm_op_FifoWrite.volatile.i8P(i8* %dst_data_stream_0_V, i8 %pixel_out_val_5_cast)
  br label %bb55

bb55:                                             ; preds = %bb54, %bb.i.0_ifconv
  %window_val_0_0_load = load i8* %window_val_0_0 ; <i8> [#uses=1]
  %window_val_0_1_load = load i8* %window_val_0_1 ; <i8> [#uses=1]
  %window_val_0_2_load = load i8* %window_val_0_2 ; <i8> [#uses=1]
  %window_val_0_3_load = load i8* %window_val_0_3 ; <i8> [#uses=1]
  %window_val_0_4_load = load i8* %window_val_0_4 ; <i8> [#uses=1]
  %window_val_0_5_load = load i8* %window_val_0_5 ; <i8> [#uses=1]
  %window_val_0_6_load = load i8* %window_val_0_6 ; <i8> [#uses=1]
  %window_val_1_0_load = load i8* %window_val_1_0 ; <i8> [#uses=1]
  %window_val_1_1_load = load i8* %window_val_1_1 ; <i8> [#uses=1]
  %window_val_1_2_load = load i8* %window_val_1_2 ; <i8> [#uses=1]
  %window_val_1_3_load = load i8* %window_val_1_3 ; <i8> [#uses=1]
  %window_val_1_4_load = load i8* %window_val_1_4 ; <i8> [#uses=1]
  %window_val_1_5_load = load i8* %window_val_1_5 ; <i8> [#uses=1]
  %window_val_1_6_load = load i8* %window_val_1_6 ; <i8> [#uses=1]
  %window_val_2_0_load = load i8* %window_val_2_0 ; <i8> [#uses=1]
  %window_val_2_1_load = load i8* %window_val_2_1 ; <i8> [#uses=1]
  %window_val_2_2_load = load i8* %window_val_2_2 ; <i8> [#uses=1]
  %window_val_2_3_load = load i8* %window_val_2_3 ; <i8> [#uses=1]
  %window_val_2_4_load = load i8* %window_val_2_4 ; <i8> [#uses=1]
  %window_val_2_5_load = load i8* %window_val_2_5 ; <i8> [#uses=1]
  %window_val_2_6_load = load i8* %window_val_2_6 ; <i8> [#uses=1]
  %window_val_3_0_load = load i8* %window_val_3_0 ; <i8> [#uses=1]
  %window_val_3_1_load = load i8* %window_val_3_1 ; <i8> [#uses=1]
  %window_val_3_2_load = load i8* %window_val_3_2 ; <i8> [#uses=1]
  %window_val_3_3_load = load i8* %window_val_3_3 ; <i8> [#uses=1]
  %window_val_3_4_load = load i8* %window_val_3_4 ; <i8> [#uses=1]
  %window_val_3_5_load = load i8* %window_val_3_5 ; <i8> [#uses=1]
  %window_val_3_6_load = load i8* %window_val_3_6 ; <i8> [#uses=1]
  %window_val_4_0_load = load i8* %window_val_4_0 ; <i8> [#uses=1]
  %window_val_4_1_load = load i8* %window_val_4_1 ; <i8> [#uses=1]
  %window_val_4_2_load = load i8* %window_val_4_2 ; <i8> [#uses=1]
  %window_val_4_3_load = load i8* %window_val_4_3 ; <i8> [#uses=1]
  %window_val_4_4_load = load i8* %window_val_4_4 ; <i8> [#uses=1]
  %window_val_4_5_load = load i8* %window_val_4_5 ; <i8> [#uses=1]
  %window_val_4_6_load = load i8* %window_val_4_6 ; <i8> [#uses=1]
  %window_val_5_0_load = load i8* %window_val_5_0 ; <i8> [#uses=1]
  %window_val_5_1_load = load i8* %window_val_5_1 ; <i8> [#uses=1]
  %window_val_5_2_load = load i8* %window_val_5_2 ; <i8> [#uses=1]
  %window_val_5_3_load = load i8* %window_val_5_3 ; <i8> [#uses=1]
  %window_val_5_4_load = load i8* %window_val_5_4 ; <i8> [#uses=1]
  %window_val_5_5_load = load i8* %window_val_5_5 ; <i8> [#uses=1]
  %window_val_5_6_load = load i8* %window_val_5_6 ; <i8> [#uses=1]
  %window_val_6_0_load = load i8* %window_val_6_0 ; <i8> [#uses=1]
  %window_val_6_1_load = load i8* %window_val_6_1 ; <i8> [#uses=1]
  %window_val_6_2_load = load i8* %window_val_6_2 ; <i8> [#uses=1]
  %window_val_6_3_load = load i8* %window_val_6_3 ; <i8> [#uses=1]
  %window_val_6_4_load = load i8* %window_val_6_4 ; <i8> [#uses=1]
  %window_val_6_5_load = load i8* %window_val_6_5 ; <i8> [#uses=1]
  %window_val_6_6_load = load i8* %window_val_6_6 ; <i8> [#uses=1]
  %window_val_7_0_load = load i8* %window_val_7_0 ; <i8> [#uses=1]
  %window_val_7_1_load = load i8* %window_val_7_1 ; <i8> [#uses=1]
  %window_val_7_2_load = load i8* %window_val_7_2 ; <i8> [#uses=1]
  %window_val_7_3_load = load i8* %window_val_7_3 ; <i8> [#uses=1]
  %window_val_7_4_load = load i8* %window_val_7_4 ; <i8> [#uses=1]
  %window_val_7_5_load = load i8* %window_val_7_5 ; <i8> [#uses=1]
  %window_val_7_6_load = load i8* %window_val_7_6 ; <i8> [#uses=1]
  %window_val_8_0_load = load i8* %window_val_8_0 ; <i8> [#uses=1]
  %window_val_8_1_load = load i8* %window_val_8_1 ; <i8> [#uses=1]
  %window_val_8_2_load = load i8* %window_val_8_2 ; <i8> [#uses=1]
  %window_val_8_3_load = load i8* %window_val_8_3 ; <i8> [#uses=1]
  %window_val_8_4_load = load i8* %window_val_8_4 ; <i8> [#uses=1]
  %window_val_8_5_load = load i8* %window_val_8_5 ; <i8> [#uses=1]
  %window_val_8_6_load = load i8* %window_val_8_6 ; <i8> [#uses=1]
  %empty_118 = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @p_str47, i32 %tmp_4) ; <i32> [#uses=0]
  store i8 %window_val_8_6_load, i8* %window_val_8_7
  store i8 %window_val_8_5_load, i8* %window_val_8_6
  store i8 %window_val_8_4_load, i8* %window_val_8_5
  store i8 %window_val_8_3_load, i8* %window_val_8_4
  store i8 %window_val_8_2_load, i8* %window_val_8_3
  store i8 %window_val_8_1_load, i8* %window_val_8_2
  store i8 %window_val_8_0_load, i8* %window_val_8_1
  store i8 %window_val_8_0_2, i8* %window_val_8_0
  store i8 %window_val_7_6_load, i8* %window_val_7_7
  store i8 %window_val_7_5_load, i8* %window_val_7_6
  store i8 %window_val_7_4_load, i8* %window_val_7_5
  store i8 %window_val_7_3_load, i8* %window_val_7_4
  store i8 %window_val_7_2_load, i8* %window_val_7_3
  store i8 %window_val_7_1_load, i8* %window_val_7_2
  store i8 %window_val_7_0_load, i8* %window_val_7_1
  store i8 %window_val_7_0_2, i8* %window_val_7_0
  store i8 %window_val_6_6_load, i8* %window_val_6_7
  store i8 %window_val_6_5_load, i8* %window_val_6_6
  store i8 %window_val_6_4_load, i8* %window_val_6_5
  store i8 %window_val_6_3_load, i8* %window_val_6_4
  store i8 %window_val_6_2_load, i8* %window_val_6_3
  store i8 %window_val_6_1_load, i8* %window_val_6_2
  store i8 %window_val_6_0_load, i8* %window_val_6_1
  store i8 %window_val_6_0_2, i8* %window_val_6_0
  store i8 %window_val_5_6_load, i8* %window_val_5_7
  store i8 %window_val_5_5_load, i8* %window_val_5_6
  store i8 %window_val_5_4_load, i8* %window_val_5_5
  store i8 %window_val_5_3_load, i8* %window_val_5_4
  store i8 %window_val_5_2_load, i8* %window_val_5_3
  store i8 %window_val_5_1_load, i8* %window_val_5_2
  store i8 %window_val_5_0_load, i8* %window_val_5_1
  store i8 %window_val_5_0_2, i8* %window_val_5_0
  store i8 %window_val_4_6_load, i8* %window_val_4_7
  store i8 %window_val_4_5_load, i8* %window_val_4_6
  store i8 %window_val_4_4_load, i8* %window_val_4_5
  store i8 %window_val_4_3_load, i8* %window_val_4_4
  store i8 %window_val_4_2_load, i8* %window_val_4_3
  store i8 %window_val_4_1_load, i8* %window_val_4_2
  store i8 %window_val_4_0_load, i8* %window_val_4_1
  store i8 %window_val_4_0_2, i8* %window_val_4_0
  store i8 %window_val_3_6_load, i8* %window_val_3_7
  store i8 %window_val_3_5_load, i8* %window_val_3_6
  store i8 %window_val_3_4_load, i8* %window_val_3_5
  store i8 %window_val_3_3_load, i8* %window_val_3_4
  store i8 %window_val_3_2_load, i8* %window_val_3_3
  store i8 %window_val_3_1_load, i8* %window_val_3_2
  store i8 %window_val_3_0_load, i8* %window_val_3_1
  store i8 %window_val_3_0_2, i8* %window_val_3_0
  store i8 %window_val_2_6_load, i8* %window_val_2_7
  store i8 %window_val_2_5_load, i8* %window_val_2_6
  store i8 %window_val_2_4_load, i8* %window_val_2_5
  store i8 %window_val_2_3_load, i8* %window_val_2_4
  store i8 %window_val_2_2_load, i8* %window_val_2_3
  store i8 %window_val_2_1_load, i8* %window_val_2_2
  store i8 %window_val_2_0_load, i8* %window_val_2_1
  store i8 %window_val_2_0_2, i8* %window_val_2_0
  store i8 %window_val_1_6_load, i8* %window_val_1_7
  store i8 %window_val_1_5_load, i8* %window_val_1_6
  store i8 %window_val_1_4_load, i8* %window_val_1_5
  store i8 %window_val_1_3_load, i8* %window_val_1_4
  store i8 %window_val_1_2_load, i8* %window_val_1_3
  store i8 %window_val_1_1_load, i8* %window_val_1_2
  store i8 %window_val_1_0_load, i8* %window_val_1_1
  store i8 %window_val_1_0_2, i8* %window_val_1_0
  store i8 %window_val_0_6_load, i8* %window_val_0_7
  store i8 %window_val_0_5_load, i8* %window_val_0_6
  store i8 %window_val_0_4_load, i8* %window_val_0_5
  store i8 %window_val_0_3_load, i8* %window_val_0_4
  store i8 %window_val_0_2_load, i8* %window_val_0_3
  store i8 %window_val_0_1_load, i8* %window_val_0_2
  store i8 %window_val_0_0_load, i8* %window_val_0_1
  store i8 %window_val_0_0_2, i8* %window_val_0_0
  br label %bb56

bb56:                                             ; preds = %bb56.preheader, %bb55
  %t_V = phi i11 [ 0, %bb56.preheader ], [ %j_V, %bb55 ] ; <i11> [#uses=6]
  %t_V_6_cast = zext i11 %t_V to i12              ; <i12> [#uses=1]
  %tmp_2 = zext i11 %t_V to i64                   ; <i64> [#uses=9]
  %tmp_33_cast = zext i11 %t_V to i13             ; <i13> [#uses=2]
  %tmp_3 = icmp ult i13 %tmp_33_cast, %op2_assign_1 ; <i1> [#uses=1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 4096, i64 0)
  %j_V = add i11 %t_V, 1                          ; <i11> [#uses=1]
  br i1 %tmp_3, label %bb1, label %bb59

bb59:                                             ; preds = %bb56, %entry
  %t_V_3 = phi i12 [ 0, %entry ], [ %i_V, %bb56 ] ; <i12> [#uses=5]
  %tmp_cast = zext i12 %t_V_3 to i13              ; <i13> [#uses=2]
  %tmp_s = icmp ult i13 %tmp_cast, %op2_assign    ; <i1> [#uses=1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 4096, i64 0)
  %i_V = add i12 %t_V_3, 1                        ; <i12> [#uses=1]
  br i1 %tmp_s, label %bb56.preheader, label %return

bb56.preheader:                                   ; preds = %bb59
  %not = icmp ult i12 %t_V_3, %src_rows_V_read_1  ; <i1> [#uses=1]
  %tr5 = call i9 @_ssdm_op_PartSelect.i9.i12.i32.i32(i12 %t_V_3, i32 3, i32 11) ; <i9> [#uses=1]
  %icmp6 = icmp eq i9 %tr5, 0                     ; <i1> [#uses=1]
  %notrhs = icmp ne i12 %t_V_3, 0                 ; <i1> [#uses=1]
  %tmp_1 = icmp ugt i13 %tmp_cast, %op2_addr_i_i  ; <i1> [#uses=1]
  br label %bb56

return:                                           ; preds = %bb59
  ret void
}

define internal fastcc void @median_filter.1(i12 %p_read, i12 %p_read1, i8* %src_data_stream_0_V, i8* %dst_data_stream_0_V) {
entry:
  %lineBuff7 = alloca i8                          ; <i8*> [#uses=2]
  %lineBuff6 = alloca i8                          ; <i8*> [#uses=2]
  %lineBuff5 = alloca i8                          ; <i8*> [#uses=2]
  %lineBuff4 = alloca i8                          ; <i8*> [#uses=2]
  %lineBuff3 = alloca i8                          ; <i8*> [#uses=2]
  %lineBuff2 = alloca i8                          ; <i8*> [#uses=2]
  %lineBuff1 = alloca i8                          ; <i8*> [#uses=2]
  %lineBuff0 = alloca i8                          ; <i8*> [#uses=2]
  %pixel_in_val = alloca i8                       ; <i8*> [#uses=3]
  %window_val_0_0 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_0_1 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_0_2 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_0_3 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_0_4 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_0_5 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_0_6 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_0_7 = alloca i8                     ; <i8*> [#uses=2]
  %window_val_1_0 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_1_1 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_1_2 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_1_3 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_1_4 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_1_5 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_1_6 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_1_7 = alloca i8                     ; <i8*> [#uses=2]
  %window_val_2_0 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_2_1 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_2_2 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_2_3 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_2_4 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_2_5 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_2_6 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_2_7 = alloca i8                     ; <i8*> [#uses=2]
  %window_val_3_0 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_3_1 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_3_2 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_3_3 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_3_4 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_3_5 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_3_6 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_3_7 = alloca i8                     ; <i8*> [#uses=2]
  %window_val_4_0 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_4_1 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_4_2 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_4_3 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_4_4 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_4_5 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_4_6 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_4_7 = alloca i8                     ; <i8*> [#uses=2]
  %window_val_5_0 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_5_1 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_5_2 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_5_3 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_5_4 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_5_5 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_5_6 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_5_7 = alloca i8                     ; <i8*> [#uses=2]
  %window_val_6_0 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_6_1 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_6_2 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_6_3 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_6_4 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_6_5 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_6_6 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_6_7 = alloca i8                     ; <i8*> [#uses=2]
  %window_val_7_0 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_7_1 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_7_2 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_7_3 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_7_4 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_7_5 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_7_6 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_7_7 = alloca i8                     ; <i8*> [#uses=2]
  %window_val_8_0 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_8_1 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_8_2 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_8_3 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_8_4 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_8_5 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_8_6 = alloca i8                     ; <i8*> [#uses=3]
  %window_val_8_7 = alloca i8                     ; <i8*> [#uses=2]
  %empty = call i32 (...)* @_ssdm_op_SpecFifo(i8* %dst_data_stream_0_V, [8 x i8]* @str134, i32 0, i32 0, i32 0, [8 x i8]* @str134) ; <i32> [#uses=0]
  %empty_119 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %src_data_stream_0_V, [8 x i8]* @str131, i32 0, i32 0, i32 0, [8 x i8]* @str131) ; <i32> [#uses=0]
  %p_read_1 = call i12 @_ssdm_op_WireRead.i12(i12 %p_read1) ; <i12> [#uses=2]
  %p_read_2 = call i12 @_ssdm_op_WireRead.i12(i12 %p_read) ; <i12> [#uses=2]
  %lineBuffer_val_0 = alloca [1920 x i8], align 1 ; <[1920 x i8]*> [#uses=2]
  %lineBuffer_val_1 = alloca [1920 x i8], align 1 ; <[1920 x i8]*> [#uses=1]
  %lineBuffer_val_2 = alloca [1920 x i8], align 1 ; <[1920 x i8]*> [#uses=1]
  %lineBuffer_val_3 = alloca [1920 x i8], align 1 ; <[1920 x i8]*> [#uses=1]
  %lineBuffer_val_4 = alloca [1920 x i8], align 1 ; <[1920 x i8]*> [#uses=1]
  %lineBuffer_val_5 = alloca [1920 x i8], align 1 ; <[1920 x i8]*> [#uses=1]
  %lineBuffer_val_6 = alloca [1920 x i8], align 1 ; <[1920 x i8]*> [#uses=1]
  %lineBuffer_val_7 = alloca [1920 x i8], align 1 ; <[1920 x i8]*> [#uses=1]
  %rbegin5 = call i32 (...)* @_ssdm_op_SpecRegionBegin([59 x i8]* @p_str54) nounwind ; <i32> [#uses=1]
  %rend449 = call i32 (...)* @_ssdm_op_SpecRegionEnd([59 x i8]* @p_str54, i32 %rbegin5) nounwind ; <i32> [#uses=0]
  %retval_i4_cast = zext i12 %p_read_2 to i13     ; <i13> [#uses=2]
  %op2_assign = add i13 %retval_i4_cast, 1        ; <i13> [#uses=1]
  %retval_i_cast = zext i12 %p_read_1 to i13      ; <i13> [#uses=2]
  %op2_assign_2 = add i13 %retval_i_cast, 1       ; <i13> [#uses=1]
  %op2_addr_i_i = add i13 %retval_i4_cast, -1     ; <i13> [#uses=1]
  %op2_addr_i_i1 = add i13 %retval_i_cast, -1     ; <i13> [#uses=1]
  br label %bb59

bb1:                                              ; preds = %bb56
  %tmp_4 = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @p_str47) ; <i32> [#uses=1]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, [1 x i8]* @p_str) nounwind
  %not4 = icmp ult i12 %t_V_6_cast, %p_read_1     ; <i1> [#uses=11]
  %or_cond = and i1 %not, %not4                   ; <i1> [#uses=2]
  br i1 %or_cond, label %bb9, label %bb10

bb9:                                              ; preds = %bb1
  %tmp = call i8 @_ssdm_op_FifoRead.volatile.i8P(i8* %src_data_stream_0_V) ; <i8> [#uses=1]
  store i8 %tmp, i8* %pixel_in_val
  br label %bb10

bb10:                                             ; preds = %bb9, %bb1
  br i1 %not4, label %getval.exit491, label %bb12

getval.exit491:                                   ; preds = %bb10
  %lineBuffer_val_0_addr = getelementptr [1920 x i8]* %lineBuffer_val_0, i64 0, i64 %tmp_2 ; <i8*> [#uses=1]
  %return_value_25 = load i8* %lineBuffer_val_0_addr, align 1 ; <i8> [#uses=2]
  %lineBuffer_val_1_addr = getelementptr [1920 x i8]* %lineBuffer_val_1, i64 0, i64 %tmp_2 ; <i8*> [#uses=2]
  %return_value_26 = load i8* %lineBuffer_val_1_addr, align 1 ; <i8> [#uses=2]
  %lineBuffer_val_2_addr = getelementptr [1920 x i8]* %lineBuffer_val_2, i64 0, i64 %tmp_2 ; <i8*> [#uses=2]
  %return_value_27 = load i8* %lineBuffer_val_2_addr, align 1 ; <i8> [#uses=2]
  %lineBuffer_val_3_addr = getelementptr [1920 x i8]* %lineBuffer_val_3, i64 0, i64 %tmp_2 ; <i8*> [#uses=2]
  %return_value_28 = load i8* %lineBuffer_val_3_addr, align 1 ; <i8> [#uses=2]
  %lineBuffer_val_4_addr = getelementptr [1920 x i8]* %lineBuffer_val_4, i64 0, i64 %tmp_2 ; <i8*> [#uses=2]
  %return_value_29 = load i8* %lineBuffer_val_4_addr, align 1 ; <i8> [#uses=2]
  %lineBuffer_val_5_addr = getelementptr [1920 x i8]* %lineBuffer_val_5, i64 0, i64 %tmp_2 ; <i8*> [#uses=2]
  %return_value_30 = load i8* %lineBuffer_val_5_addr, align 1 ; <i8> [#uses=2]
  %lineBuffer_val_6_addr = getelementptr [1920 x i8]* %lineBuffer_val_6, i64 0, i64 %tmp_2 ; <i8*> [#uses=2]
  %return_value_31 = load i8* %lineBuffer_val_6_addr, align 1 ; <i8> [#uses=2]
  %lineBuffer_val_7_addr = getelementptr [1920 x i8]* %lineBuffer_val_7, i64 0, i64 %tmp_2 ; <i8*> [#uses=2]
  %return_value_32 = load i8* %lineBuffer_val_7_addr, align 1 ; <i8> [#uses=1]
  store i8 %return_value_31, i8* %lineBuffer_val_7_addr, align 1
  store i8 %return_value_30, i8* %lineBuffer_val_6_addr, align 1
  store i8 %return_value_29, i8* %lineBuffer_val_5_addr, align 1
  store i8 %return_value_28, i8* %lineBuffer_val_4_addr, align 1
  store i8 %return_value_27, i8* %lineBuffer_val_3_addr, align 1
  store i8 %return_value_26, i8* %lineBuffer_val_2_addr, align 1
  store i8 %return_value_25, i8* %lineBuffer_val_1_addr, align 1
  store i8 %return_value_25, i8* %lineBuff0
  store i8 %return_value_26, i8* %lineBuff1
  store i8 %return_value_27, i8* %lineBuff2
  store i8 %return_value_28, i8* %lineBuff3
  store i8 %return_value_29, i8* %lineBuff4
  store i8 %return_value_30, i8* %lineBuff5
  store i8 %return_value_31, i8* %lineBuff6
  store i8 %return_value_32, i8* %lineBuff7
  br label %bb12

bb12:                                             ; preds = %getval.exit491, %bb10
  br i1 %or_cond, label %insert_bottom.exit, label %bb.i.0_ifconv

insert_bottom.exit:                               ; preds = %bb12
  %pixel_in_val_load = load i8* %pixel_in_val     ; <i8> [#uses=1]
  %lineBuffer_val_0_addr_1 = getelementptr [1920 x i8]* %lineBuffer_val_0, i64 0, i64 %tmp_2 ; <i8*> [#uses=1]
  store i8 %pixel_in_val_load, i8* %lineBuffer_val_0_addr_1, align 1
  br label %bb.i.0_ifconv

bb.i.0_ifconv:                                    ; preds = %insert_bottom.exit, %bb12
  %lineBuff7_load = load i8* %lineBuff7           ; <i8> [#uses=1]
  %lineBuff6_load = load i8* %lineBuff6           ; <i8> [#uses=1]
  %lineBuff5_load = load i8* %lineBuff5           ; <i8> [#uses=1]
  %lineBuff4_load = load i8* %lineBuff4           ; <i8> [#uses=1]
  %lineBuff3_load = load i8* %lineBuff3           ; <i8> [#uses=1]
  %lineBuff2_load = load i8* %lineBuff2           ; <i8> [#uses=1]
  %lineBuff1_load = load i8* %lineBuff1           ; <i8> [#uses=1]
  %lineBuff0_load = load i8* %lineBuff0           ; <i8> [#uses=1]
  %pixel_in_val_load_2 = load i8* %pixel_in_val   ; <i8> [#uses=1]
  %window_val_0_0_load_2 = load i8* %window_val_0_0 ; <i8> [#uses=2]
  %window_val_0_1_load_2 = load i8* %window_val_0_1 ; <i8> [#uses=1]
  %window_val_0_2_load_2 = load i8* %window_val_0_2 ; <i8> [#uses=1]
  %window_val_0_3_load_2 = load i8* %window_val_0_3 ; <i8> [#uses=1]
  %window_val_0_4_load_2 = load i8* %window_val_0_4 ; <i8> [#uses=1]
  %window_val_0_5_load61 = load i8* %window_val_0_5 ; <i8> [#uses=1]
  %window_val_0_6_load_2 = load i8* %window_val_0_6 ; <i8> [#uses=1]
  %window_val_0_7_load = load i8* %window_val_0_7 ; <i8> [#uses=1]
  %window_val_1_0_load_2 = load i8* %window_val_1_0 ; <i8> [#uses=2]
  %window_val_1_1_load_2 = load i8* %window_val_1_1 ; <i8> [#uses=1]
  %window_val_1_2_load_2 = load i8* %window_val_1_2 ; <i8> [#uses=1]
  %window_val_1_3_load_2 = load i8* %window_val_1_3 ; <i8> [#uses=1]
  %window_val_1_4_load_2 = load i8* %window_val_1_4 ; <i8> [#uses=1]
  %window_val_1_5_load_2 = load i8* %window_val_1_5 ; <i8> [#uses=1]
  %window_val_1_6_load_2 = load i8* %window_val_1_6 ; <i8> [#uses=1]
  %window_val_1_7_load = load i8* %window_val_1_7 ; <i8> [#uses=1]
  %window_val_2_0_load_2 = load i8* %window_val_2_0 ; <i8> [#uses=2]
  %window_val_2_1_load51 = load i8* %window_val_2_1 ; <i8> [#uses=1]
  %window_val_2_2_load_2 = load i8* %window_val_2_2 ; <i8> [#uses=1]
  %window_val_2_3_load_2 = load i8* %window_val_2_3 ; <i8> [#uses=1]
  %window_val_2_4_load_2 = load i8* %window_val_2_4 ; <i8> [#uses=1]
  %window_val_2_5_load_2 = load i8* %window_val_2_5 ; <i8> [#uses=1]
  %window_val_2_6_load_2 = load i8* %window_val_2_6 ; <i8> [#uses=1]
  %window_val_2_7_load = load i8* %window_val_2_7 ; <i8> [#uses=1]
  %window_val_3_0_load_2 = load i8* %window_val_3_0 ; <i8> [#uses=2]
  %window_val_3_1_load_2 = load i8* %window_val_3_1 ; <i8> [#uses=1]
  %window_val_3_2_load_2 = load i8* %window_val_3_2 ; <i8> [#uses=1]
  %window_val_3_3_load_2 = load i8* %window_val_3_3 ; <i8> [#uses=1]
  %window_val_3_4_load41 = load i8* %window_val_3_4 ; <i8> [#uses=1]
  %window_val_3_5_load_2 = load i8* %window_val_3_5 ; <i8> [#uses=1]
  %window_val_3_6_load_2 = load i8* %window_val_3_6 ; <i8> [#uses=1]
  %window_val_3_7_load = load i8* %window_val_3_7 ; <i8> [#uses=1]
  %window_val_4_0_load_2 = load i8* %window_val_4_0 ; <i8> [#uses=2]
  %window_val_4_1_load_2 = load i8* %window_val_4_1 ; <i8> [#uses=1]
  %window_val_4_2_load_2 = load i8* %window_val_4_2 ; <i8> [#uses=1]
  %window_val_4_3_load_2 = load i8* %window_val_4_3 ; <i8> [#uses=1]
  %window_val_4_4_load_2 = load i8* %window_val_4_4 ; <i8> [#uses=1]
  %window_val_4_5_load_2 = load i8* %window_val_4_5 ; <i8> [#uses=1]
  %window_val_4_6_load_2 = load i8* %window_val_4_6 ; <i8> [#uses=1]
  %window_val_4_7_load = load i8* %window_val_4_7 ; <i8> [#uses=1]
  %window_val_5_0_load31 = load i8* %window_val_5_0 ; <i8> [#uses=2]
  %window_val_5_1_load_2 = load i8* %window_val_5_1 ; <i8> [#uses=1]
  %window_val_5_2_load_2 = load i8* %window_val_5_2 ; <i8> [#uses=1]
  %window_val_5_3_load_2 = load i8* %window_val_5_3 ; <i8> [#uses=1]
  %window_val_5_4_load_2 = load i8* %window_val_5_4 ; <i8> [#uses=1]
  %window_val_5_5_load_2 = load i8* %window_val_5_5 ; <i8> [#uses=1]
  %window_val_5_6_load_2 = load i8* %window_val_5_6 ; <i8> [#uses=1]
  %window_val_5_7_load = load i8* %window_val_5_7 ; <i8> [#uses=1]
  %window_val_6_0_load_2 = load i8* %window_val_6_0 ; <i8> [#uses=2]
  %window_val_6_1_load_2 = load i8* %window_val_6_1 ; <i8> [#uses=1]
  %window_val_6_2_load_2 = load i8* %window_val_6_2 ; <i8> [#uses=1]
  %window_val_6_3_load21 = load i8* %window_val_6_3 ; <i8> [#uses=1]
  %window_val_6_4_load_2 = load i8* %window_val_6_4 ; <i8> [#uses=1]
  %window_val_6_5_load_2 = load i8* %window_val_6_5 ; <i8> [#uses=1]
  %window_val_6_6_load_2 = load i8* %window_val_6_6 ; <i8> [#uses=1]
  %window_val_6_7_load = load i8* %window_val_6_7 ; <i8> [#uses=1]
  %window_val_7_0_load_2 = load i8* %window_val_7_0 ; <i8> [#uses=2]
  %window_val_7_1_load_2 = load i8* %window_val_7_1 ; <i8> [#uses=1]
  %window_val_7_2_load_2 = load i8* %window_val_7_2 ; <i8> [#uses=1]
  %window_val_7_3_load_2 = load i8* %window_val_7_3 ; <i8> [#uses=1]
  %window_val_7_4_load_2 = load i8* %window_val_7_4 ; <i8> [#uses=1]
  %window_val_7_5_load_2 = load i8* %window_val_7_5 ; <i8> [#uses=1]
  %window_val_7_6_load11 = load i8* %window_val_7_6 ; <i8> [#uses=1]
  %window_val_7_7_load = load i8* %window_val_7_7 ; <i8> [#uses=1]
  %window_val_8_0_load_2 = load i8* %window_val_8_0 ; <i8> [#uses=2]
  %window_val_8_1_load_2 = load i8* %window_val_8_1 ; <i8> [#uses=1]
  %window_val_8_2_load_2 = load i8* %window_val_8_2 ; <i8> [#uses=1]
  %window_val_8_3_load_2 = load i8* %window_val_8_3 ; <i8> [#uses=1]
  %window_val_8_4_load_2 = load i8* %window_val_8_4 ; <i8> [#uses=1]
  %window_val_8_5_load_2 = load i8* %window_val_8_5 ; <i8> [#uses=1]
  %window_val_8_6_load_2 = load i8* %window_val_8_6 ; <i8> [#uses=1]
  %window_val_8_7_load = load i8* %window_val_8_7 ; <i8> [#uses=1]
  %window_val_8_0_4 = select i1 %not4, i8 %lineBuff0_load, i8 %window_val_8_0_load_2 ; <i8> [#uses=2]
  %window_val_7_0_4 = select i1 %not4, i8 %lineBuff1_load, i8 %window_val_7_0_load_2 ; <i8> [#uses=2]
  %window_val_6_0_4 = select i1 %not4, i8 %lineBuff2_load, i8 %window_val_6_0_load_2 ; <i8> [#uses=2]
  %window_val_5_0_4 = select i1 %not4, i8 %lineBuff3_load, i8 %window_val_5_0_load31 ; <i8> [#uses=2]
  %window_val_4_0_4 = select i1 %not4, i8 %lineBuff4_load, i8 %window_val_4_0_load_2 ; <i8> [#uses=2]
  %window_val_3_0_4 = select i1 %not4, i8 %lineBuff5_load, i8 %window_val_3_0_load_2 ; <i8> [#uses=2]
  %window_val_2_0_4 = select i1 %not4, i8 %lineBuff6_load, i8 %window_val_2_0_load_2 ; <i8> [#uses=2]
  %window_val_1_0_4 = select i1 %not4, i8 %lineBuff7_load, i8 %window_val_1_0_load_2 ; <i8> [#uses=2]
  %window_val_0_0_4 = select i1 %not4, i8 %pixel_in_val_load_2, i8 %window_val_0_0_load_2 ; <i8> [#uses=2]
  %tr = call i8 @_ssdm_op_PartSelect.i8.i11.i32.i32(i11 %t_V, i32 3, i32 10) ; <i8> [#uses=1]
  %icmp = icmp eq i8 %tr, 0                       ; <i1> [#uses=1]
  %tmp_5 = icmp ugt i13 %tmp_33_cast, %op2_addr_i_i1 ; <i1> [#uses=1]
  %tmp2 = or i1 %icmp6, %icmp                     ; <i1> [#uses=1]
  %tmp3 = or i1 %tmp_1, %tmp_5                    ; <i1> [#uses=1]
  %or_cond7 = or i1 %tmp3, %tmp2                  ; <i1> [#uses=1]
  %not_tmp_s = icmp ne i8 %window_val_0_0_4, 0    ; <i1> [#uses=2]
  %countOnes_cast = zext i1 %not_tmp_s to i2      ; <i2> [#uses=1]
  %tmp_60_0_1 = icmp eq i8 %window_val_0_0_load_2, 0 ; <i1> [#uses=1]
  %tmp_61_0_1 = select i1 %not_tmp_s, i2 -2, i2 1 ; <i2> [#uses=1]
  %countOnes_1 = select i1 %tmp_60_0_1, i2 %countOnes_cast, i2 %tmp_61_0_1 ; <i2> [#uses=2]
  %tmp_60_0_2 = icmp eq i8 %window_val_0_1_load_2, 0 ; <i1> [#uses=1]
  %tmp_61_0_2 = add i2 %countOnes_1, 1            ; <i2> [#uses=1]
  %countOnes_2 = select i1 %tmp_60_0_2, i2 %countOnes_1, i2 %tmp_61_0_2 ; <i2> [#uses=1]
  %countOnes_2_cast = zext i2 %countOnes_2 to i3  ; <i3> [#uses=2]
  %tmp_60_0_3 = icmp eq i8 %window_val_0_2_load_2, 0 ; <i1> [#uses=1]
  %tmp_61_0_3 = add i3 %countOnes_2_cast, 1       ; <i3> [#uses=1]
  %countOnes_3 = select i1 %tmp_60_0_3, i3 %countOnes_2_cast, i3 %tmp_61_0_3 ; <i3> [#uses=2]
  %tmp_60_0_4 = icmp eq i8 %window_val_0_3_load_2, 0 ; <i1> [#uses=1]
  %tmp_61_0_4 = add i3 %countOnes_3, 1            ; <i3> [#uses=1]
  %countOnes_4 = select i1 %tmp_60_0_4, i3 %countOnes_3, i3 %tmp_61_0_4 ; <i3> [#uses=2]
  %tmp_60_0_5 = icmp eq i8 %window_val_0_4_load_2, 0 ; <i1> [#uses=1]
  %tmp_61_0_5 = add i3 %countOnes_4, 1            ; <i3> [#uses=1]
  %countOnes_5 = select i1 %tmp_60_0_5, i3 %countOnes_4, i3 %tmp_61_0_5 ; <i3> [#uses=2]
  %tmp_60_0_6 = icmp eq i8 %window_val_0_5_load61, 0 ; <i1> [#uses=1]
  %tmp_61_0_6 = add i3 %countOnes_5, 1            ; <i3> [#uses=1]
  %countOnes_6 = select i1 %tmp_60_0_6, i3 %countOnes_5, i3 %tmp_61_0_6 ; <i3> [#uses=1]
  %countOnes_6_cast = zext i3 %countOnes_6 to i4  ; <i4> [#uses=2]
  %tmp_60_0_7 = icmp eq i8 %window_val_0_6_load_2, 0 ; <i1> [#uses=1]
  %tmp_61_0_7 = add i4 %countOnes_6_cast, 1       ; <i4> [#uses=1]
  %countOnes_7 = select i1 %tmp_60_0_7, i4 %countOnes_6_cast, i4 %tmp_61_0_7 ; <i4> [#uses=2]
  %tmp_60_0_8 = icmp eq i8 %window_val_0_7_load, 0 ; <i1> [#uses=1]
  %tmp_61_0_8 = add i4 %countOnes_7, 1            ; <i4> [#uses=1]
  %countOnes_8 = select i1 %tmp_60_0_8, i4 %countOnes_7, i4 %tmp_61_0_8 ; <i4> [#uses=2]
  %tmp_60_1 = icmp eq i8 %window_val_1_0_4, 0     ; <i1> [#uses=1]
  %tmp_61_1 = add i4 %countOnes_8, 1              ; <i4> [#uses=1]
  %countOnes_9 = select i1 %tmp_60_1, i4 %countOnes_8, i4 %tmp_61_1 ; <i4> [#uses=2]
  %tmp_60_1_1 = icmp eq i8 %window_val_1_0_load_2, 0 ; <i1> [#uses=1]
  %tmp_61_1_1 = add i4 %countOnes_9, 1            ; <i4> [#uses=1]
  %countOnes = select i1 %tmp_60_1_1, i4 %countOnes_9, i4 %tmp_61_1_1 ; <i4> [#uses=2]
  %tmp_60_1_2 = icmp eq i8 %window_val_1_1_load_2, 0 ; <i1> [#uses=1]
  %tmp_61_1_2 = add i4 %countOnes, 1              ; <i4> [#uses=1]
  %countOnes_80 = select i1 %tmp_60_1_2, i4 %countOnes, i4 %tmp_61_1_2 ; <i4> [#uses=2]
  %tmp_60_1_3 = icmp eq i8 %window_val_1_2_load_2, 0 ; <i1> [#uses=1]
  %tmp_61_1_3 = add i4 %countOnes_80, 1           ; <i4> [#uses=1]
  %countOnes_81 = select i1 %tmp_60_1_3, i4 %countOnes_80, i4 %tmp_61_1_3 ; <i4> [#uses=2]
  %tmp_60_1_4 = icmp eq i8 %window_val_1_3_load_2, 0 ; <i1> [#uses=1]
  %tmp_61_1_4 = add i4 %countOnes_81, 1           ; <i4> [#uses=1]
  %countOnes_82 = select i1 %tmp_60_1_4, i4 %countOnes_81, i4 %tmp_61_1_4 ; <i4> [#uses=2]
  %tmp_60_1_5 = icmp eq i8 %window_val_1_4_load_2, 0 ; <i1> [#uses=1]
  %tmp_61_1_5 = add i4 %countOnes_82, 1           ; <i4> [#uses=1]
  %countOnes_83 = select i1 %tmp_60_1_5, i4 %countOnes_82, i4 %tmp_61_1_5 ; <i4> [#uses=1]
  %countOnes_14_cast = zext i4 %countOnes_83 to i5 ; <i5> [#uses=2]
  %tmp_60_1_6 = icmp eq i8 %window_val_1_5_load_2, 0 ; <i1> [#uses=1]
  %tmp_61_1_6 = add i5 %countOnes_14_cast, 1      ; <i5> [#uses=1]
  %countOnes_84 = select i1 %tmp_60_1_6, i5 %countOnes_14_cast, i5 %tmp_61_1_6 ; <i5> [#uses=2]
  %tmp_60_1_7 = icmp eq i8 %window_val_1_6_load_2, 0 ; <i1> [#uses=1]
  %tmp_61_1_7 = add i5 %countOnes_84, 1           ; <i5> [#uses=1]
  %countOnes_85 = select i1 %tmp_60_1_7, i5 %countOnes_84, i5 %tmp_61_1_7 ; <i5> [#uses=2]
  %tmp_60_1_8 = icmp eq i8 %window_val_1_7_load, 0 ; <i1> [#uses=1]
  %tmp_61_1_8 = add i5 %countOnes_85, 1           ; <i5> [#uses=1]
  %countOnes_86 = select i1 %tmp_60_1_8, i5 %countOnes_85, i5 %tmp_61_1_8 ; <i5> [#uses=2]
  %tmp_60_2 = icmp eq i8 %window_val_2_0_4, 0     ; <i1> [#uses=1]
  %tmp_61_2 = add i5 %countOnes_86, 1             ; <i5> [#uses=1]
  %countOnes_87 = select i1 %tmp_60_2, i5 %countOnes_86, i5 %tmp_61_2 ; <i5> [#uses=2]
  %tmp_60_2_1 = icmp eq i8 %window_val_2_0_load_2, 0 ; <i1> [#uses=1]
  %tmp_61_2_1 = add i5 %countOnes_87, 1           ; <i5> [#uses=1]
  %countOnes_88 = select i1 %tmp_60_2_1, i5 %countOnes_87, i5 %tmp_61_2_1 ; <i5> [#uses=2]
  %tmp_60_2_2 = icmp eq i8 %window_val_2_1_load51, 0 ; <i1> [#uses=1]
  %tmp_61_2_2 = add i5 %countOnes_88, 1           ; <i5> [#uses=1]
  %countOnes_89 = select i1 %tmp_60_2_2, i5 %countOnes_88, i5 %tmp_61_2_2 ; <i5> [#uses=2]
  %tmp_60_2_3 = icmp eq i8 %window_val_2_2_load_2, 0 ; <i1> [#uses=1]
  %tmp_61_2_3 = add i5 %countOnes_89, 1           ; <i5> [#uses=1]
  %countOnes_90 = select i1 %tmp_60_2_3, i5 %countOnes_89, i5 %tmp_61_2_3 ; <i5> [#uses=2]
  %tmp_60_2_4 = icmp eq i8 %window_val_2_3_load_2, 0 ; <i1> [#uses=1]
  %tmp_61_2_4 = add i5 %countOnes_90, 1           ; <i5> [#uses=1]
  %countOnes_91 = select i1 %tmp_60_2_4, i5 %countOnes_90, i5 %tmp_61_2_4 ; <i5> [#uses=2]
  %tmp_60_2_5 = icmp eq i8 %window_val_2_4_load_2, 0 ; <i1> [#uses=1]
  %tmp_61_2_5 = add i5 %countOnes_91, 1           ; <i5> [#uses=1]
  %countOnes_92 = select i1 %tmp_60_2_5, i5 %countOnes_91, i5 %tmp_61_2_5 ; <i5> [#uses=2]
  %tmp_60_2_6 = icmp eq i8 %window_val_2_5_load_2, 0 ; <i1> [#uses=1]
  %tmp_61_2_6 = add i5 %countOnes_92, 1           ; <i5> [#uses=1]
  %countOnes_93 = select i1 %tmp_60_2_6, i5 %countOnes_92, i5 %tmp_61_2_6 ; <i5> [#uses=2]
  %tmp_60_2_7 = icmp eq i8 %window_val_2_6_load_2, 0 ; <i1> [#uses=1]
  %tmp_61_2_7 = add i5 %countOnes_93, 1           ; <i5> [#uses=1]
  %countOnes_94 = select i1 %tmp_60_2_7, i5 %countOnes_93, i5 %tmp_61_2_7 ; <i5> [#uses=2]
  %tmp_60_2_8 = icmp eq i8 %window_val_2_7_load, 0 ; <i1> [#uses=1]
  %tmp_61_2_8 = add i5 %countOnes_94, 1           ; <i5> [#uses=1]
  %countOnes_95 = select i1 %tmp_60_2_8, i5 %countOnes_94, i5 %tmp_61_2_8 ; <i5> [#uses=2]
  %tmp_60_3 = icmp eq i8 %window_val_3_0_4, 0     ; <i1> [#uses=1]
  %tmp_61_3 = add i5 %countOnes_95, 1             ; <i5> [#uses=1]
  %countOnes_96 = select i1 %tmp_60_3, i5 %countOnes_95, i5 %tmp_61_3 ; <i5> [#uses=2]
  %tmp_60_3_1 = icmp eq i8 %window_val_3_0_load_2, 0 ; <i1> [#uses=1]
  %tmp_61_3_1 = add i5 %countOnes_96, 1           ; <i5> [#uses=1]
  %countOnes_97 = select i1 %tmp_60_3_1, i5 %countOnes_96, i5 %tmp_61_3_1 ; <i5> [#uses=2]
  %tmp_60_3_2 = icmp eq i8 %window_val_3_1_load_2, 0 ; <i1> [#uses=1]
  %tmp_61_3_2 = add i5 %countOnes_97, 1           ; <i5> [#uses=1]
  %countOnes_98 = select i1 %tmp_60_3_2, i5 %countOnes_97, i5 %tmp_61_3_2 ; <i5> [#uses=2]
  %tmp_60_3_3 = icmp eq i8 %window_val_3_2_load_2, 0 ; <i1> [#uses=1]
  %tmp_61_3_3 = add i5 %countOnes_98, 1           ; <i5> [#uses=1]
  %countOnes_99 = select i1 %tmp_60_3_3, i5 %countOnes_98, i5 %tmp_61_3_3 ; <i5> [#uses=1]
  %countOnes_30_cast = zext i5 %countOnes_99 to i6 ; <i6> [#uses=2]
  %tmp_60_3_4 = icmp eq i8 %window_val_3_3_load_2, 0 ; <i1> [#uses=1]
  %tmp_61_3_4 = add i6 %countOnes_30_cast, 1      ; <i6> [#uses=1]
  %countOnes_100 = select i1 %tmp_60_3_4, i6 %countOnes_30_cast, i6 %tmp_61_3_4 ; <i6> [#uses=2]
  %tmp_60_3_5 = icmp eq i8 %window_val_3_4_load41, 0 ; <i1> [#uses=1]
  %tmp_61_3_5 = add i6 %countOnes_100, 1          ; <i6> [#uses=1]
  %countOnes_101 = select i1 %tmp_60_3_5, i6 %countOnes_100, i6 %tmp_61_3_5 ; <i6> [#uses=2]
  %tmp_60_3_6 = icmp eq i8 %window_val_3_5_load_2, 0 ; <i1> [#uses=1]
  %tmp_61_3_6 = add i6 %countOnes_101, 1          ; <i6> [#uses=1]
  %countOnes_102 = select i1 %tmp_60_3_6, i6 %countOnes_101, i6 %tmp_61_3_6 ; <i6> [#uses=2]
  %tmp_60_3_7 = icmp eq i8 %window_val_3_6_load_2, 0 ; <i1> [#uses=1]
  %tmp_61_3_7 = add i6 %countOnes_102, 1          ; <i6> [#uses=1]
  %countOnes_103 = select i1 %tmp_60_3_7, i6 %countOnes_102, i6 %tmp_61_3_7 ; <i6> [#uses=2]
  %tmp_60_3_8 = icmp eq i8 %window_val_3_7_load, 0 ; <i1> [#uses=1]
  %tmp_61_3_8 = add i6 %countOnes_103, 1          ; <i6> [#uses=1]
  %countOnes_104 = select i1 %tmp_60_3_8, i6 %countOnes_103, i6 %tmp_61_3_8 ; <i6> [#uses=2]
  %tmp_60_4 = icmp eq i8 %window_val_4_0_4, 0     ; <i1> [#uses=1]
  %tmp_61_4 = add i6 %countOnes_104, 1            ; <i6> [#uses=1]
  %countOnes_105 = select i1 %tmp_60_4, i6 %countOnes_104, i6 %tmp_61_4 ; <i6> [#uses=2]
  %tmp_60_4_1 = icmp eq i8 %window_val_4_0_load_2, 0 ; <i1> [#uses=1]
  %tmp_61_4_1 = add i6 %countOnes_105, 1          ; <i6> [#uses=1]
  %countOnes_106 = select i1 %tmp_60_4_1, i6 %countOnes_105, i6 %tmp_61_4_1 ; <i6> [#uses=2]
  %tmp_60_4_2 = icmp eq i8 %window_val_4_1_load_2, 0 ; <i1> [#uses=1]
  %tmp_61_4_2 = add i6 %countOnes_106, 1          ; <i6> [#uses=1]
  %countOnes_107 = select i1 %tmp_60_4_2, i6 %countOnes_106, i6 %tmp_61_4_2 ; <i6> [#uses=2]
  %tmp_60_4_3 = icmp eq i8 %window_val_4_2_load_2, 0 ; <i1> [#uses=1]
  %tmp_61_4_3 = add i6 %countOnes_107, 1          ; <i6> [#uses=1]
  %countOnes_108 = select i1 %tmp_60_4_3, i6 %countOnes_107, i6 %tmp_61_4_3 ; <i6> [#uses=2]
  %tmp_60_4_4 = icmp eq i8 %window_val_4_3_load_2, 0 ; <i1> [#uses=1]
  %tmp_61_4_4 = add i6 %countOnes_108, 1          ; <i6> [#uses=1]
  %countOnes_109 = select i1 %tmp_60_4_4, i6 %countOnes_108, i6 %tmp_61_4_4 ; <i6> [#uses=2]
  %tmp_60_4_5 = icmp eq i8 %window_val_4_4_load_2, 0 ; <i1> [#uses=1]
  %tmp_61_4_5 = add i6 %countOnes_109, 1          ; <i6> [#uses=1]
  %countOnes_110 = select i1 %tmp_60_4_5, i6 %countOnes_109, i6 %tmp_61_4_5 ; <i6> [#uses=2]
  %tmp_60_4_6 = icmp eq i8 %window_val_4_5_load_2, 0 ; <i1> [#uses=1]
  %tmp_61_4_6 = add i6 %countOnes_110, 1          ; <i6> [#uses=1]
  %countOnes_111 = select i1 %tmp_60_4_6, i6 %countOnes_110, i6 %tmp_61_4_6 ; <i6> [#uses=2]
  %tmp_60_4_7 = icmp eq i8 %window_val_4_6_load_2, 0 ; <i1> [#uses=1]
  %tmp_61_4_7 = add i6 %countOnes_111, 1          ; <i6> [#uses=1]
  %countOnes_112 = select i1 %tmp_60_4_7, i6 %countOnes_111, i6 %tmp_61_4_7 ; <i6> [#uses=2]
  %tmp_60_4_8 = icmp eq i8 %window_val_4_7_load, 0 ; <i1> [#uses=1]
  %tmp_61_4_8 = add i6 %countOnes_112, 1          ; <i6> [#uses=1]
  %countOnes_113 = select i1 %tmp_60_4_8, i6 %countOnes_112, i6 %tmp_61_4_8 ; <i6> [#uses=2]
  %tmp_60_5 = icmp eq i8 %window_val_5_0_4, 0     ; <i1> [#uses=1]
  %tmp_61_5 = add i6 %countOnes_113, 1            ; <i6> [#uses=1]
  %countOnes_114 = select i1 %tmp_60_5, i6 %countOnes_113, i6 %tmp_61_5 ; <i6> [#uses=2]
  %tmp_60_5_1 = icmp eq i8 %window_val_5_0_load31, 0 ; <i1> [#uses=1]
  %tmp_61_5_1 = add i6 %countOnes_114, 1          ; <i6> [#uses=1]
  %countOnes_115 = select i1 %tmp_60_5_1, i6 %countOnes_114, i6 %tmp_61_5_1 ; <i6> [#uses=2]
  %tmp_60_5_2 = icmp eq i8 %window_val_5_1_load_2, 0 ; <i1> [#uses=1]
  %tmp_61_5_2 = add i6 %countOnes_115, 1          ; <i6> [#uses=1]
  %countOnes_116 = select i1 %tmp_60_5_2, i6 %countOnes_115, i6 %tmp_61_5_2 ; <i6> [#uses=2]
  %tmp_60_5_3 = icmp eq i8 %window_val_5_2_load_2, 0 ; <i1> [#uses=1]
  %tmp_61_5_3 = add i6 %countOnes_116, 1          ; <i6> [#uses=1]
  %countOnes_117 = select i1 %tmp_60_5_3, i6 %countOnes_116, i6 %tmp_61_5_3 ; <i6> [#uses=2]
  %tmp_60_5_4 = icmp eq i8 %window_val_5_3_load_2, 0 ; <i1> [#uses=1]
  %tmp_61_5_4 = add i6 %countOnes_117, 1          ; <i6> [#uses=1]
  %countOnes_118 = select i1 %tmp_60_5_4, i6 %countOnes_117, i6 %tmp_61_5_4 ; <i6> [#uses=2]
  %tmp_60_5_5 = icmp eq i8 %window_val_5_4_load_2, 0 ; <i1> [#uses=1]
  %tmp_61_5_5 = add i6 %countOnes_118, 1          ; <i6> [#uses=1]
  %countOnes_119 = select i1 %tmp_60_5_5, i6 %countOnes_118, i6 %tmp_61_5_5 ; <i6> [#uses=2]
  %tmp_60_5_6 = icmp eq i8 %window_val_5_5_load_2, 0 ; <i1> [#uses=1]
  %tmp_61_5_6 = add i6 %countOnes_119, 1          ; <i6> [#uses=1]
  %countOnes_120 = select i1 %tmp_60_5_6, i6 %countOnes_119, i6 %tmp_61_5_6 ; <i6> [#uses=2]
  %tmp_60_5_7 = icmp eq i8 %window_val_5_6_load_2, 0 ; <i1> [#uses=1]
  %tmp_61_5_7 = add i6 %countOnes_120, 1          ; <i6> [#uses=1]
  %countOnes_121 = select i1 %tmp_60_5_7, i6 %countOnes_120, i6 %tmp_61_5_7 ; <i6> [#uses=2]
  %tmp_60_5_8 = icmp eq i8 %window_val_5_7_load, 0 ; <i1> [#uses=1]
  %tmp_61_5_8 = add i6 %countOnes_121, 1          ; <i6> [#uses=1]
  %countOnes_122 = select i1 %tmp_60_5_8, i6 %countOnes_121, i6 %tmp_61_5_8 ; <i6> [#uses=2]
  %tmp_60_6 = icmp eq i8 %window_val_6_0_4, 0     ; <i1> [#uses=1]
  %tmp_61_6 = add i6 %countOnes_122, 1            ; <i6> [#uses=1]
  %countOnes_123 = select i1 %tmp_60_6, i6 %countOnes_122, i6 %tmp_61_6 ; <i6> [#uses=2]
  %tmp_60_6_1 = icmp eq i8 %window_val_6_0_load_2, 0 ; <i1> [#uses=1]
  %tmp_61_6_1 = add i6 %countOnes_123, 1          ; <i6> [#uses=1]
  %countOnes_124 = select i1 %tmp_60_6_1, i6 %countOnes_123, i6 %tmp_61_6_1 ; <i6> [#uses=2]
  %tmp_60_6_2 = icmp eq i8 %window_val_6_1_load_2, 0 ; <i1> [#uses=1]
  %tmp_61_6_2 = add i6 %countOnes_124, 1          ; <i6> [#uses=1]
  %countOnes_125 = select i1 %tmp_60_6_2, i6 %countOnes_124, i6 %tmp_61_6_2 ; <i6> [#uses=2]
  %tmp_60_6_3 = icmp eq i8 %window_val_6_2_load_2, 0 ; <i1> [#uses=1]
  %tmp_61_6_3 = add i6 %countOnes_125, 1          ; <i6> [#uses=1]
  %countOnes_126 = select i1 %tmp_60_6_3, i6 %countOnes_125, i6 %tmp_61_6_3 ; <i6> [#uses=2]
  %tmp_60_6_4 = icmp eq i8 %window_val_6_3_load21, 0 ; <i1> [#uses=1]
  %tmp_61_6_4 = add i6 %countOnes_126, 1          ; <i6> [#uses=1]
  %countOnes_127 = select i1 %tmp_60_6_4, i6 %countOnes_126, i6 %tmp_61_6_4 ; <i6> [#uses=2]
  %tmp_60_6_5 = icmp eq i8 %window_val_6_4_load_2, 0 ; <i1> [#uses=1]
  %tmp_61_6_5 = add i6 %countOnes_127, 1          ; <i6> [#uses=1]
  %countOnes_128 = select i1 %tmp_60_6_5, i6 %countOnes_127, i6 %tmp_61_6_5 ; <i6> [#uses=2]
  %tmp_60_6_6 = icmp eq i8 %window_val_6_5_load_2, 0 ; <i1> [#uses=1]
  %tmp_61_6_6 = add i6 %countOnes_128, 1          ; <i6> [#uses=1]
  %countOnes_129 = select i1 %tmp_60_6_6, i6 %countOnes_128, i6 %tmp_61_6_6 ; <i6> [#uses=2]
  %tmp_60_6_7 = icmp eq i8 %window_val_6_6_load_2, 0 ; <i1> [#uses=1]
  %tmp_61_6_7 = add i6 %countOnes_129, 1          ; <i6> [#uses=1]
  %countOnes_130 = select i1 %tmp_60_6_7, i6 %countOnes_129, i6 %tmp_61_6_7 ; <i6> [#uses=2]
  %tmp_60_6_8 = icmp eq i8 %window_val_6_7_load, 0 ; <i1> [#uses=1]
  %tmp_61_6_8 = add i6 %countOnes_130, 1          ; <i6> [#uses=1]
  %countOnes_131 = select i1 %tmp_60_6_8, i6 %countOnes_130, i6 %tmp_61_6_8 ; <i6> [#uses=1]
  %countOnes_62_cast = zext i6 %countOnes_131 to i7 ; <i7> [#uses=2]
  %tmp_60_7 = icmp eq i8 %window_val_7_0_4, 0     ; <i1> [#uses=1]
  %tmp_61_7 = add i7 %countOnes_62_cast, 1        ; <i7> [#uses=1]
  %countOnes_132 = select i1 %tmp_60_7, i7 %countOnes_62_cast, i7 %tmp_61_7 ; <i7> [#uses=2]
  %tmp_60_7_1 = icmp eq i8 %window_val_7_0_load_2, 0 ; <i1> [#uses=1]
  %tmp_61_7_1 = add i7 %countOnes_132, 1          ; <i7> [#uses=1]
  %countOnes_133 = select i1 %tmp_60_7_1, i7 %countOnes_132, i7 %tmp_61_7_1 ; <i7> [#uses=2]
  %tmp_60_7_2 = icmp eq i8 %window_val_7_1_load_2, 0 ; <i1> [#uses=1]
  %tmp_61_7_2 = add i7 %countOnes_133, 1          ; <i7> [#uses=1]
  %countOnes_134 = select i1 %tmp_60_7_2, i7 %countOnes_133, i7 %tmp_61_7_2 ; <i7> [#uses=2]
  %tmp_60_7_3 = icmp eq i8 %window_val_7_2_load_2, 0 ; <i1> [#uses=1]
  %tmp_61_7_3 = add i7 %countOnes_134, 1          ; <i7> [#uses=1]
  %countOnes_135 = select i1 %tmp_60_7_3, i7 %countOnes_134, i7 %tmp_61_7_3 ; <i7> [#uses=2]
  %tmp_60_7_4 = icmp eq i8 %window_val_7_3_load_2, 0 ; <i1> [#uses=1]
  %tmp_61_7_4 = add i7 %countOnes_135, 1          ; <i7> [#uses=1]
  %countOnes_136 = select i1 %tmp_60_7_4, i7 %countOnes_135, i7 %tmp_61_7_4 ; <i7> [#uses=2]
  %tmp_60_7_5 = icmp eq i8 %window_val_7_4_load_2, 0 ; <i1> [#uses=1]
  %tmp_61_7_5 = add i7 %countOnes_136, 1          ; <i7> [#uses=1]
  %countOnes_137 = select i1 %tmp_60_7_5, i7 %countOnes_136, i7 %tmp_61_7_5 ; <i7> [#uses=2]
  %tmp_60_7_6 = icmp eq i8 %window_val_7_5_load_2, 0 ; <i1> [#uses=1]
  %tmp_61_7_6 = add i7 %countOnes_137, 1          ; <i7> [#uses=1]
  %countOnes_138 = select i1 %tmp_60_7_6, i7 %countOnes_137, i7 %tmp_61_7_6 ; <i7> [#uses=2]
  %tmp_60_7_7 = icmp eq i8 %window_val_7_6_load11, 0 ; <i1> [#uses=1]
  %tmp_61_7_7 = add i7 %countOnes_138, 1          ; <i7> [#uses=1]
  %countOnes_139 = select i1 %tmp_60_7_7, i7 %countOnes_138, i7 %tmp_61_7_7 ; <i7> [#uses=2]
  %tmp_60_7_8 = icmp eq i8 %window_val_7_7_load, 0 ; <i1> [#uses=1]
  %tmp_61_7_8 = add i7 %countOnes_139, 1          ; <i7> [#uses=1]
  %countOnes_140 = select i1 %tmp_60_7_8, i7 %countOnes_139, i7 %tmp_61_7_8 ; <i7> [#uses=2]
  %tmp_60_8 = icmp eq i8 %window_val_8_0_4, 0     ; <i1> [#uses=1]
  %tmp_61_8 = add i7 %countOnes_140, 1            ; <i7> [#uses=1]
  %countOnes_141 = select i1 %tmp_60_8, i7 %countOnes_140, i7 %tmp_61_8 ; <i7> [#uses=2]
  %tmp_60_8_1 = icmp eq i8 %window_val_8_0_load_2, 0 ; <i1> [#uses=1]
  %tmp_61_8_1 = add i7 %countOnes_141, 1          ; <i7> [#uses=1]
  %countOnes_142 = select i1 %tmp_60_8_1, i7 %countOnes_141, i7 %tmp_61_8_1 ; <i7> [#uses=2]
  %tmp_60_8_2 = icmp eq i8 %window_val_8_1_load_2, 0 ; <i1> [#uses=1]
  %tmp_61_8_2 = add i7 %countOnes_142, 1          ; <i7> [#uses=1]
  %countOnes_143 = select i1 %tmp_60_8_2, i7 %countOnes_142, i7 %tmp_61_8_2 ; <i7> [#uses=2]
  %tmp_60_8_3 = icmp eq i8 %window_val_8_2_load_2, 0 ; <i1> [#uses=1]
  %tmp_61_8_3 = add i7 %countOnes_143, 1          ; <i7> [#uses=1]
  %countOnes_144 = select i1 %tmp_60_8_3, i7 %countOnes_143, i7 %tmp_61_8_3 ; <i7> [#uses=2]
  %tmp_60_8_4 = icmp eq i8 %window_val_8_3_load_2, 0 ; <i1> [#uses=1]
  %tmp_61_8_4 = add i7 %countOnes_144, 1          ; <i7> [#uses=1]
  %countOnes_145 = select i1 %tmp_60_8_4, i7 %countOnes_144, i7 %tmp_61_8_4 ; <i7> [#uses=2]
  %tmp_60_8_5 = icmp eq i8 %window_val_8_4_load_2, 0 ; <i1> [#uses=1]
  %tmp_61_8_5 = add i7 %countOnes_145, 1          ; <i7> [#uses=1]
  %countOnes_146 = select i1 %tmp_60_8_5, i7 %countOnes_145, i7 %tmp_61_8_5 ; <i7> [#uses=2]
  %tmp_60_8_6 = icmp eq i8 %window_val_8_5_load_2, 0 ; <i1> [#uses=1]
  %tmp_61_8_6 = add i7 %countOnes_146, 1          ; <i7> [#uses=1]
  %countOnes_147 = select i1 %tmp_60_8_6, i7 %countOnes_146, i7 %tmp_61_8_6 ; <i7> [#uses=2]
  %tmp_60_8_7 = icmp eq i8 %window_val_8_6_load_2, 0 ; <i1> [#uses=1]
  %tmp_61_8_7 = add i7 %countOnes_147, 1          ; <i7> [#uses=1]
  %countOnes_148 = select i1 %tmp_60_8_7, i7 %countOnes_147, i7 %tmp_61_8_7 ; <i7> [#uses=2]
  %tmp_60_8_8 = icmp eq i8 %window_val_8_7_load, 0 ; <i1> [#uses=1]
  %tmp_61_8_8 = add i7 %countOnes_148, 1          ; <i7> [#uses=1]
  %countOnes_149 = select i1 %tmp_60_8_8, i7 %countOnes_148, i7 %tmp_61_8_8 ; <i7> [#uses=1]
  %tmp_6 = icmp ugt i7 %countOnes_149, 41         ; <i1> [#uses=1]
  %not_or_cond7 = xor i1 %or_cond7, true          ; <i1> [#uses=1]
  %pixel_out_val = and i1 %tmp_6, %not_or_cond7   ; <i1> [#uses=1]
  %pixel_out_val_5_cast = sext i1 %pixel_out_val to i8 ; <i8> [#uses=1]
  %notlhs = icmp ne i11 %t_V, 0                   ; <i1> [#uses=1]
  %not_or_cond = and i1 %notrhs, %notlhs          ; <i1> [#uses=1]
  br i1 %not_or_cond, label %bb54, label %bb55

bb54:                                             ; preds = %bb.i.0_ifconv
  call void @_ssdm_op_FifoWrite.volatile.i8P(i8* %dst_data_stream_0_V, i8 %pixel_out_val_5_cast)
  br label %bb55

bb55:                                             ; preds = %bb54, %bb.i.0_ifconv
  %window_val_0_0_load = load i8* %window_val_0_0 ; <i8> [#uses=1]
  %window_val_0_1_load = load i8* %window_val_0_1 ; <i8> [#uses=1]
  %window_val_0_2_load = load i8* %window_val_0_2 ; <i8> [#uses=1]
  %window_val_0_3_load = load i8* %window_val_0_3 ; <i8> [#uses=1]
  %window_val_0_4_load = load i8* %window_val_0_4 ; <i8> [#uses=1]
  %window_val_0_5_load = load i8* %window_val_0_5 ; <i8> [#uses=1]
  %window_val_0_6_load = load i8* %window_val_0_6 ; <i8> [#uses=1]
  %window_val_1_0_load = load i8* %window_val_1_0 ; <i8> [#uses=1]
  %window_val_1_1_load = load i8* %window_val_1_1 ; <i8> [#uses=1]
  %window_val_1_2_load = load i8* %window_val_1_2 ; <i8> [#uses=1]
  %window_val_1_3_load = load i8* %window_val_1_3 ; <i8> [#uses=1]
  %window_val_1_4_load = load i8* %window_val_1_4 ; <i8> [#uses=1]
  %window_val_1_5_load = load i8* %window_val_1_5 ; <i8> [#uses=1]
  %window_val_1_6_load = load i8* %window_val_1_6 ; <i8> [#uses=1]
  %window_val_2_0_load = load i8* %window_val_2_0 ; <i8> [#uses=1]
  %window_val_2_1_load = load i8* %window_val_2_1 ; <i8> [#uses=1]
  %window_val_2_2_load = load i8* %window_val_2_2 ; <i8> [#uses=1]
  %window_val_2_3_load = load i8* %window_val_2_3 ; <i8> [#uses=1]
  %window_val_2_4_load = load i8* %window_val_2_4 ; <i8> [#uses=1]
  %window_val_2_5_load = load i8* %window_val_2_5 ; <i8> [#uses=1]
  %window_val_2_6_load = load i8* %window_val_2_6 ; <i8> [#uses=1]
  %window_val_3_0_load = load i8* %window_val_3_0 ; <i8> [#uses=1]
  %window_val_3_1_load = load i8* %window_val_3_1 ; <i8> [#uses=1]
  %window_val_3_2_load = load i8* %window_val_3_2 ; <i8> [#uses=1]
  %window_val_3_3_load = load i8* %window_val_3_3 ; <i8> [#uses=1]
  %window_val_3_4_load = load i8* %window_val_3_4 ; <i8> [#uses=1]
  %window_val_3_5_load = load i8* %window_val_3_5 ; <i8> [#uses=1]
  %window_val_3_6_load = load i8* %window_val_3_6 ; <i8> [#uses=1]
  %window_val_4_0_load = load i8* %window_val_4_0 ; <i8> [#uses=1]
  %window_val_4_1_load = load i8* %window_val_4_1 ; <i8> [#uses=1]
  %window_val_4_2_load = load i8* %window_val_4_2 ; <i8> [#uses=1]
  %window_val_4_3_load = load i8* %window_val_4_3 ; <i8> [#uses=1]
  %window_val_4_4_load = load i8* %window_val_4_4 ; <i8> [#uses=1]
  %window_val_4_5_load = load i8* %window_val_4_5 ; <i8> [#uses=1]
  %window_val_4_6_load = load i8* %window_val_4_6 ; <i8> [#uses=1]
  %window_val_5_0_load = load i8* %window_val_5_0 ; <i8> [#uses=1]
  %window_val_5_1_load = load i8* %window_val_5_1 ; <i8> [#uses=1]
  %window_val_5_2_load = load i8* %window_val_5_2 ; <i8> [#uses=1]
  %window_val_5_3_load = load i8* %window_val_5_3 ; <i8> [#uses=1]
  %window_val_5_4_load = load i8* %window_val_5_4 ; <i8> [#uses=1]
  %window_val_5_5_load = load i8* %window_val_5_5 ; <i8> [#uses=1]
  %window_val_5_6_load = load i8* %window_val_5_6 ; <i8> [#uses=1]
  %window_val_6_0_load = load i8* %window_val_6_0 ; <i8> [#uses=1]
  %window_val_6_1_load = load i8* %window_val_6_1 ; <i8> [#uses=1]
  %window_val_6_2_load = load i8* %window_val_6_2 ; <i8> [#uses=1]
  %window_val_6_3_load = load i8* %window_val_6_3 ; <i8> [#uses=1]
  %window_val_6_4_load = load i8* %window_val_6_4 ; <i8> [#uses=1]
  %window_val_6_5_load = load i8* %window_val_6_5 ; <i8> [#uses=1]
  %window_val_6_6_load = load i8* %window_val_6_6 ; <i8> [#uses=1]
  %window_val_7_0_load = load i8* %window_val_7_0 ; <i8> [#uses=1]
  %window_val_7_1_load = load i8* %window_val_7_1 ; <i8> [#uses=1]
  %window_val_7_2_load = load i8* %window_val_7_2 ; <i8> [#uses=1]
  %window_val_7_3_load = load i8* %window_val_7_3 ; <i8> [#uses=1]
  %window_val_7_4_load = load i8* %window_val_7_4 ; <i8> [#uses=1]
  %window_val_7_5_load = load i8* %window_val_7_5 ; <i8> [#uses=1]
  %window_val_7_6_load = load i8* %window_val_7_6 ; <i8> [#uses=1]
  %window_val_8_0_load = load i8* %window_val_8_0 ; <i8> [#uses=1]
  %window_val_8_1_load = load i8* %window_val_8_1 ; <i8> [#uses=1]
  %window_val_8_2_load = load i8* %window_val_8_2 ; <i8> [#uses=1]
  %window_val_8_3_load = load i8* %window_val_8_3 ; <i8> [#uses=1]
  %window_val_8_4_load = load i8* %window_val_8_4 ; <i8> [#uses=1]
  %window_val_8_5_load = load i8* %window_val_8_5 ; <i8> [#uses=1]
  %window_val_8_6_load = load i8* %window_val_8_6 ; <i8> [#uses=1]
  %empty_120 = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @p_str47, i32 %tmp_4) ; <i32> [#uses=0]
  store i8 %window_val_8_6_load, i8* %window_val_8_7
  store i8 %window_val_8_5_load, i8* %window_val_8_6
  store i8 %window_val_8_4_load, i8* %window_val_8_5
  store i8 %window_val_8_3_load, i8* %window_val_8_4
  store i8 %window_val_8_2_load, i8* %window_val_8_3
  store i8 %window_val_8_1_load, i8* %window_val_8_2
  store i8 %window_val_8_0_load, i8* %window_val_8_1
  store i8 %window_val_8_0_4, i8* %window_val_8_0
  store i8 %window_val_7_6_load, i8* %window_val_7_7
  store i8 %window_val_7_5_load, i8* %window_val_7_6
  store i8 %window_val_7_4_load, i8* %window_val_7_5
  store i8 %window_val_7_3_load, i8* %window_val_7_4
  store i8 %window_val_7_2_load, i8* %window_val_7_3
  store i8 %window_val_7_1_load, i8* %window_val_7_2
  store i8 %window_val_7_0_load, i8* %window_val_7_1
  store i8 %window_val_7_0_4, i8* %window_val_7_0
  store i8 %window_val_6_6_load, i8* %window_val_6_7
  store i8 %window_val_6_5_load, i8* %window_val_6_6
  store i8 %window_val_6_4_load, i8* %window_val_6_5
  store i8 %window_val_6_3_load, i8* %window_val_6_4
  store i8 %window_val_6_2_load, i8* %window_val_6_3
  store i8 %window_val_6_1_load, i8* %window_val_6_2
  store i8 %window_val_6_0_load, i8* %window_val_6_1
  store i8 %window_val_6_0_4, i8* %window_val_6_0
  store i8 %window_val_5_6_load, i8* %window_val_5_7
  store i8 %window_val_5_5_load, i8* %window_val_5_6
  store i8 %window_val_5_4_load, i8* %window_val_5_5
  store i8 %window_val_5_3_load, i8* %window_val_5_4
  store i8 %window_val_5_2_load, i8* %window_val_5_3
  store i8 %window_val_5_1_load, i8* %window_val_5_2
  store i8 %window_val_5_0_load, i8* %window_val_5_1
  store i8 %window_val_5_0_4, i8* %window_val_5_0
  store i8 %window_val_4_6_load, i8* %window_val_4_7
  store i8 %window_val_4_5_load, i8* %window_val_4_6
  store i8 %window_val_4_4_load, i8* %window_val_4_5
  store i8 %window_val_4_3_load, i8* %window_val_4_4
  store i8 %window_val_4_2_load, i8* %window_val_4_3
  store i8 %window_val_4_1_load, i8* %window_val_4_2
  store i8 %window_val_4_0_load, i8* %window_val_4_1
  store i8 %window_val_4_0_4, i8* %window_val_4_0
  store i8 %window_val_3_6_load, i8* %window_val_3_7
  store i8 %window_val_3_5_load, i8* %window_val_3_6
  store i8 %window_val_3_4_load, i8* %window_val_3_5
  store i8 %window_val_3_3_load, i8* %window_val_3_4
  store i8 %window_val_3_2_load, i8* %window_val_3_3
  store i8 %window_val_3_1_load, i8* %window_val_3_2
  store i8 %window_val_3_0_load, i8* %window_val_3_1
  store i8 %window_val_3_0_4, i8* %window_val_3_0
  store i8 %window_val_2_6_load, i8* %window_val_2_7
  store i8 %window_val_2_5_load, i8* %window_val_2_6
  store i8 %window_val_2_4_load, i8* %window_val_2_5
  store i8 %window_val_2_3_load, i8* %window_val_2_4
  store i8 %window_val_2_2_load, i8* %window_val_2_3
  store i8 %window_val_2_1_load, i8* %window_val_2_2
  store i8 %window_val_2_0_load, i8* %window_val_2_1
  store i8 %window_val_2_0_4, i8* %window_val_2_0
  store i8 %window_val_1_6_load, i8* %window_val_1_7
  store i8 %window_val_1_5_load, i8* %window_val_1_6
  store i8 %window_val_1_4_load, i8* %window_val_1_5
  store i8 %window_val_1_3_load, i8* %window_val_1_4
  store i8 %window_val_1_2_load, i8* %window_val_1_3
  store i8 %window_val_1_1_load, i8* %window_val_1_2
  store i8 %window_val_1_0_load, i8* %window_val_1_1
  store i8 %window_val_1_0_4, i8* %window_val_1_0
  store i8 %window_val_0_6_load, i8* %window_val_0_7
  store i8 %window_val_0_5_load, i8* %window_val_0_6
  store i8 %window_val_0_4_load, i8* %window_val_0_5
  store i8 %window_val_0_3_load, i8* %window_val_0_4
  store i8 %window_val_0_2_load, i8* %window_val_0_3
  store i8 %window_val_0_1_load, i8* %window_val_0_2
  store i8 %window_val_0_0_load, i8* %window_val_0_1
  store i8 %window_val_0_0_4, i8* %window_val_0_0
  br label %bb56

bb56:                                             ; preds = %bb56.preheader, %bb55
  %t_V = phi i11 [ 0, %bb56.preheader ], [ %j_V, %bb55 ] ; <i11> [#uses=6]
  %t_V_6_cast = zext i11 %t_V to i12              ; <i12> [#uses=1]
  %tmp_2 = zext i11 %t_V to i64                   ; <i64> [#uses=9]
  %tmp_33_cast = zext i11 %t_V to i13             ; <i13> [#uses=2]
  %tmp_3 = icmp ult i13 %tmp_33_cast, %op2_assign_2 ; <i1> [#uses=1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 4096, i64 0)
  %j_V = add i11 %t_V, 1                          ; <i11> [#uses=1]
  br i1 %tmp_3, label %bb1, label %bb59

bb59:                                             ; preds = %bb56, %entry
  %t_V_4 = phi i12 [ 0, %entry ], [ %i_V, %bb56 ] ; <i12> [#uses=5]
  %tmp_cast = zext i12 %t_V_4 to i13              ; <i13> [#uses=2]
  %tmp_s = icmp ult i13 %tmp_cast, %op2_assign    ; <i1> [#uses=1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 4096, i64 0)
  %i_V = add i12 %t_V_4, 1                        ; <i12> [#uses=1]
  br i1 %tmp_s, label %bb56.preheader, label %return

bb56.preheader:                                   ; preds = %bb59
  %not = icmp ult i12 %t_V_4, %p_read_2           ; <i1> [#uses=1]
  %tr5 = call i9 @_ssdm_op_PartSelect.i9.i12.i32.i32(i12 %t_V_4, i32 3, i32 11) ; <i9> [#uses=1]
  %icmp6 = icmp eq i9 %tr5, 0                     ; <i1> [#uses=1]
  %notrhs = icmp ne i12 %t_V_4, 0                 ; <i1> [#uses=1]
  %tmp_1 = icmp ugt i13 %tmp_cast, %op2_addr_i_i  ; <i1> [#uses=1]
  br label %bb56

return:                                           ; preds = %bb59
  ret void
}

define internal fastcc void @finger_counter(i12 %src_rows_V_read, i12 %src_cols_V_read, i8* %src_data_stream_0_V, i8* %dst_data_stream_0_V, i2* %gesture_V_V) {
entry:
  %prevcol = alloca i8                            ; <i8*> [#uses=3]
  %prev = alloca i8                               ; <i8*> [#uses=3]
  %pixel_in_val = alloca i8                       ; <i8*> [#uses=3]
  %empty = call i32 (...)* @_ssdm_op_SpecFifo(i8* %dst_data_stream_0_V, [8 x i8]* @str137, i32 0, i32 0, i32 0, [8 x i8]* @str137) ; <i32> [#uses=0]
  %empty_121 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %src_data_stream_0_V, [8 x i8]* @str134, i32 0, i32 0, i32 0, [8 x i8]* @str134) ; <i32> [#uses=0]
  %empty_122 = call i32 (...)* @_ssdm_op_SpecFifo(i2* %gesture_V_V, [8 x i8]* @str92, i32 0, i32 0, i32 0, [8 x i8]* @str92) ; <i32> [#uses=0]
  %src_cols_V_read_2 = call i12 @_ssdm_op_WireRead.i12(i12 %src_cols_V_read) ; <i12> [#uses=2]
  %src_rows_V_read_2 = call i12 @_ssdm_op_WireRead.i12(i12 %src_rows_V_read) ; <i12> [#uses=2]
  %retval_i_cast = zext i12 %src_rows_V_read_2 to i13 ; <i13> [#uses=1]
  %op2_assign = add i13 %retval_i_cast, 1         ; <i13> [#uses=1]
  %retval_i3_cast = zext i12 %src_cols_V_read_2 to i13 ; <i13> [#uses=1]
  %op2_assign_3 = add i13 %retval_i3_cast, 1      ; <i13> [#uses=1]
  store i8 0, i8* %pixel_in_val
  store i8 0, i8* %prev
  store i8 0, i8* %prevcol
  br label %bb37

bb3:                                              ; preds = %bb27
  %tmp_8 = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @p_str46) ; <i32> [#uses=1]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, [1 x i8]* @p_str) nounwind
  %not6 = icmp ult i12 %t_V_5, %src_cols_V_read_2 ; <i1> [#uses=1]
  %or_cond = and i1 %not, %not6                   ; <i1> [#uses=1]
  br i1 %or_cond, label %bb11, label %bb12_ifconv

bb11:                                             ; preds = %bb3
  %tmp_27 = call i8 @_ssdm_op_FifoRead.volatile.i8P(i8* %src_data_stream_0_V) ; <i8> [#uses=1]
  store i8 %tmp_27, i8* %pixel_in_val
  br label %bb12_ifconv

bb12_ifconv:                                      ; preds = %bb11, %bb3
  %prevcol_load = load i8* %prevcol               ; <i8> [#uses=3]
  %prev_load = load i8* %prev                     ; <i8> [#uses=3]
  %pixel_in_val_5 = load i8* %pixel_in_val        ; <i8> [#uses=3]
  %tmp_V = load i2* @prevGesture_V, align 8       ; <i2> [#uses=1]
  call void @_ssdm_op_FifoWrite.volatile.i2P(i2* %gesture_V_V, i2 %tmp_V)
  %tmp_14 = icmp eq i8 %pixel_in_val_5, %prev_load ; <i1> [#uses=4]
  %tmp_29_cast = zext i8 %prevcol_load to i13     ; <i13> [#uses=1]
  %tmp_15 = sub i13 %tmp_20_cast, %tmp_29_cast    ; <i13> [#uses=1]
  %retval_s = icmp ugt i13 %tmp_15, 20            ; <i1> [#uses=1]
  %prevcol_1 = trunc i12 %t_V_5 to i8             ; <i8> [#uses=1]
  %sel_tmp = xor i1 %tmp_14, true                 ; <i1> [#uses=1]
  %sel_tmp1 = and i1 %retval_s, %sel_tmp          ; <i1> [#uses=3]
  %prev_2 = select i1 %sel_tmp1, i8 %pixel_in_val_5, i8 %prev_load ; <i8> [#uses=1]
  %prev_3 = select i1 %tmp_14, i8 %prev_load, i8 %prev_2 ; <i8> [#uses=1]
  %prevcol_2 = select i1 %sel_tmp1, i8 %prevcol_1, i8 %prevcol_load ; <i8> [#uses=1]
  %prevcol_3 = select i1 %tmp_14, i8 %prevcol_load, i8 %prevcol_2 ; <i8> [#uses=1]
  %sel_tmp10_v_cast_cast = select i1 %sel_tmp1, i32 1, i32 -1 ; <i32> [#uses=1]
  %rowcnt_1 = add i32 %rowcnt, %sel_tmp10_v_cast_cast ; <i32> [#uses=1]
  %rowcnt_2 = select i1 %tmp_14, i32 %rowcnt, i32 %rowcnt_1 ; <i32> [#uses=1]
  %notlhs = icmp ne i12 %t_V_5, 0                 ; <i1> [#uses=1]
  %not_or_cond = and i1 %notrhs, %notlhs          ; <i1> [#uses=1]
  br i1 %not_or_cond, label %bb25, label %bb26

bb25:                                             ; preds = %bb12_ifconv
  call void @_ssdm_op_FifoWrite.volatile.i8P(i8* %dst_data_stream_0_V, i8 %pixel_in_val_5)
  br label %bb26

bb26:                                             ; preds = %bb25, %bb12_ifconv
  %empty_123 = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @p_str46, i32 %tmp_8) ; <i32> [#uses=0]
  store i8 %prev_3, i8* %prev
  store i8 %prevcol_3, i8* %prevcol
  br label %bb27

bb27:                                             ; preds = %bb27.preheader, %bb26
  %t_V_5 = phi i12 [ %j_V, %bb26 ], [ 0, %bb27.preheader ] ; <i12> [#uses=5]
  %rowcnt = phi i32 [ %rowcnt_2, %bb26 ], [ 0, %bb27.preheader ] ; <i32> [#uses=6]
  %tmp_20_cast = zext i12 %t_V_5 to i13           ; <i13> [#uses=2]
  %tmp_6 = icmp ult i13 %tmp_20_cast, %op2_assign_3 ; <i1> [#uses=1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 4096, i64 0)
  %j_V = add i12 %t_V_5, 1                        ; <i12> [#uses=1]
  br i1 %tmp_6, label %bb3, label %bb28

bb28:                                             ; preds = %bb27
  %flip2_1 = add nsw i32 %flip2, 1                ; <i32> [#uses=1]
  %tmp_10 = icmp eq i32 %rowcnt, 2                ; <i1> [#uses=1]
  %flip2_2 = select i1 %tmp_10, i32 %flip2_1, i32 %flip2 ; <i32> [#uses=1]
  %flip4_1 = add nsw i32 %flip4, 1                ; <i32> [#uses=1]
  %tmp_11 = icmp eq i32 %rowcnt, 4                ; <i1> [#uses=1]
  %flip4_2 = select i1 %tmp_11, i32 %flip4_1, i32 %flip4 ; <i32> [#uses=1]
  %tmp_12 = icmp eq i32 %rowcnt, 6                ; <i1> [#uses=1]
  %tmp_13 = icmp eq i32 %rowcnt, 8                ; <i1> [#uses=1]
  %flip8_1 = add nsw i32 %flip8, 1                ; <i32> [#uses=1]
  %or_cond5 = or i1 %tmp_12, %tmp_13              ; <i1> [#uses=1]
  %flip8_2 = select i1 %or_cond5, i32 %flip8_1, i32 %flip8 ; <i32> [#uses=1]
  br label %bb37

bb37:                                             ; preds = %bb28, %entry
  %t_V = phi i12 [ %i_V, %bb28 ], [ 0, %entry ]   ; <i12> [#uses=4]
  %flip2 = phi i32 [ %flip2_2, %bb28 ], [ 0, %entry ] ; <i32> [#uses=3]
  %flip4 = phi i32 [ %flip4_2, %bb28 ], [ 0, %entry ] ; <i32> [#uses=3]
  %flip8 = phi i32 [ %flip8_2, %bb28 ], [ 0, %entry ] ; <i32> [#uses=3]
  %tmp_cast = zext i12 %t_V to i13                ; <i13> [#uses=1]
  %tmp_s = icmp ult i13 %tmp_cast, %op2_assign    ; <i1> [#uses=1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 4096, i64 0)
  %i_V = add i12 %t_V, 1                          ; <i12> [#uses=1]
  br i1 %tmp_s, label %bb27.preheader, label %bb38_ifconv

bb27.preheader:                                   ; preds = %bb37
  %not = icmp ult i12 %t_V, %src_rows_V_read_2    ; <i1> [#uses=1]
  %notrhs = icmp ne i12 %t_V, 0                   ; <i1> [#uses=1]
  br label %bb27

bb38_ifconv:                                      ; preds = %bb37
  %tmp_1 = sext i32 %flip8 to i64                 ; <i64> [#uses=1]
  %tmp_7 = sitofp i64 %tmp_1 to double            ; <double> [#uses=1]
  %tmp_2 = sext i32 %flip2 to i64                 ; <i64> [#uses=1]
  %tmp_9 = sitofp i64 %tmp_2 to double            ; <double> [#uses=1]
  %tmp_3 = fmul double %tmp_9, 3.000000e-01       ; <double> [#uses=2]
  %tmp = fcmp oge double %tmp_7, %tmp_3           ; <i1> [#uses=1]
  %tmp_22 = xor i1 %tmp, true                     ; <i1> [#uses=2]
  %tmp_4 = sext i32 %flip4 to i64                 ; <i64> [#uses=1]
  %tmp_5 = sitofp i64 %tmp_4 to double            ; <double> [#uses=1]
  %tmp_23 = fcmp oge double %tmp_5, %tmp_3        ; <i1> [#uses=1]
  %tmp_24 = xor i1 %tmp_23, true                  ; <i1> [#uses=1]
  %sel_tmp3 = and i1 %tmp_22, %tmp_24             ; <i1> [#uses=1]
  %sel_tmp4 = select i1 %sel_tmp3, i2 -2, i2 1    ; <i2> [#uses=1]
  %temp_V = select i1 %tmp_22, i2 %sel_tmp4, i2 0 ; <i2> [#uses=1]
  store i2 %temp_V, i2* @prevGesture_V, align 8
  ret void
}

define internal fastcc void @set_color(i12 %src_rows_V_read, i12 %src_cols_V_read, i8* %src_data_stream_0_V, i8* %dst_data_stream_0_V, i8* %dst_data_stream_1_V, i8* %dst_data_stream_2_V, i2* %gesture_V_V) {
entry:
  %pixel_out_val = alloca i8                      ; <i8*> [#uses=2]
  %empty = call i32 (...)* @_ssdm_op_SpecFifo(i8* %dst_data_stream_2_V, [8 x i8]* @str146, i32 0, i32 0, i32 0, [8 x i8]* @str146) ; <i32> [#uses=0]
  %empty_124 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %dst_data_stream_1_V, [8 x i8]* @str143, i32 0, i32 0, i32 0, [8 x i8]* @str143) ; <i32> [#uses=0]
  %empty_125 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %dst_data_stream_0_V, [8 x i8]* @str140, i32 0, i32 0, i32 0, [8 x i8]* @str140) ; <i32> [#uses=0]
  %empty_126 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %src_data_stream_0_V, [8 x i8]* @str137, i32 0, i32 0, i32 0, [8 x i8]* @str137) ; <i32> [#uses=0]
  %empty_127 = call i32 (...)* @_ssdm_op_SpecFifo(i2* %gesture_V_V, [8 x i8]* @str92, i32 0, i32 0, i32 0, [8 x i8]* @str92) ; <i32> [#uses=0]
  %src_cols_V_read_3 = call i12 @_ssdm_op_WireRead.i12(i12 %src_cols_V_read) ; <i12> [#uses=2]
  %src_rows_V_read_3 = call i12 @_ssdm_op_WireRead.i12(i12 %src_rows_V_read) ; <i12> [#uses=2]
  %retval_i4_cast = zext i12 %src_rows_V_read_3 to i13 ; <i13> [#uses=1]
  %op2_assign = add i13 %retval_i4_cast, 1        ; <i13> [#uses=1]
  %retval_i_cast = zext i12 %src_cols_V_read_3 to i13 ; <i13> [#uses=1]
  %op2_assign_4 = add i13 %retval_i_cast, 1       ; <i13> [#uses=1]
  br label %bb33

bb1:                                              ; preds = %bb30
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @p_str45) ; <i32> [#uses=1]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, [1 x i8]* @p_str) nounwind
  %not4 = icmp ult i12 %t_V, %src_cols_V_read_3   ; <i1> [#uses=1]
  %or_cond = and i1 %not, %not4                   ; <i1> [#uses=1]
  br i1 %or_cond, label %bb9, label %bb10_ifconv

bb9:                                              ; preds = %bb1
  %tmp_28 = call i8 @_ssdm_op_FifoRead.volatile.i8P(i8* %src_data_stream_0_V) ; <i8> [#uses=1]
  store i8 %tmp_28, i8* %pixel_out_val
  br label %bb10_ifconv

bb10_ifconv:                                      ; preds = %bb9, %bb1
  %pixel_out_val_1_2 = load i8* %pixel_out_val    ; <i8> [#uses=3]
  %tmp = trunc i8 %pixel_out_val_1_2 to i1        ; <i1> [#uses=2]
  %tmp_V = call i2 @_ssdm_op_FifoRead.volatile.i2P(i2* %gesture_V_V) ; <i2> [#uses=2]
  %tmp_12 = icmp eq i8 %pixel_out_val_1_2, -1     ; <i1> [#uses=5]
  %tmp_14 = icmp eq i2 %tmp_V, 0                  ; <i1> [#uses=2]
  %tmp_15 = icmp eq i2 %tmp_V, 1                  ; <i1> [#uses=1]
  %sel_tmp = and i1 %tmp_12, %tmp_14              ; <i1> [#uses=2]
  %sel_tmp2 = xor i1 %tmp_14, true                ; <i1> [#uses=1]
  %tmp2 = and i1 %tmp_15, %sel_tmp2               ; <i1> [#uses=1]
  %sel_tmp4 = and i1 %tmp2, %tmp_12               ; <i1> [#uses=3]
  %tmp_13 = or i1 %sel_tmp4, %sel_tmp             ; <i1> [#uses=1]
  %sel_tmp5 = select i1 %tmp_13, i8 0, i8 %pixel_out_val_1_2 ; <i8> [#uses=1]
  %pixel_out_val_2 = select i1 %tmp_12, i8 %sel_tmp5, i8 0 ; <i8> [#uses=1]
  %sel_tmp6 = and i1 %sel_tmp4, %tmp              ; <i1> [#uses=1]
  %pixel_out_val_1 = and i1 %tmp_12, %sel_tmp6    ; <i1> [#uses=1]
  %pixel_out_val_1_1_cast = sext i1 %pixel_out_val_1 to i8 ; <i8> [#uses=1]
  %sel_tmp7 = and i1 %sel_tmp, %tmp               ; <i1> [#uses=1]
  %not_sel_tmp4 = xor i1 %sel_tmp4, true          ; <i1> [#uses=1]
  %sel_tmp8 = and i1 %sel_tmp7, %not_sel_tmp4     ; <i1> [#uses=1]
  %pixel_out_val_0 = and i1 %tmp_12, %sel_tmp8    ; <i1> [#uses=1]
  %pixel_out_val_0_cast = sext i1 %pixel_out_val_0 to i8 ; <i8> [#uses=1]
  %notlhs = icmp ne i12 %t_V, 0                   ; <i1> [#uses=1]
  %not_or_cond = and i1 %notrhs, %notlhs          ; <i1> [#uses=1]
  br i1 %not_or_cond, label %bb27, label %bb28

bb27:                                             ; preds = %bb10_ifconv
  call void @_ssdm_op_FifoWrite.volatile.i8P(i8* %dst_data_stream_0_V, i8 %pixel_out_val_0_cast)
  call void @_ssdm_op_FifoWrite.volatile.i8P(i8* %dst_data_stream_1_V, i8 %pixel_out_val_1_1_cast)
  call void @_ssdm_op_FifoWrite.volatile.i8P(i8* %dst_data_stream_2_V, i8 %pixel_out_val_2)
  br label %bb28

bb28:                                             ; preds = %bb27, %bb10_ifconv
  %empty_128 = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @p_str45, i32 %tmp_s) ; <i32> [#uses=0]
  br label %bb30

bb30:                                             ; preds = %bb30.preheader, %bb28
  %t_V = phi i12 [ %j_V, %bb28 ], [ 0, %bb30.preheader ] ; <i12> [#uses=4]
  %tmp_10_cast = zext i12 %t_V to i13             ; <i13> [#uses=1]
  %tmp_11 = icmp ult i13 %tmp_10_cast, %op2_assign_4 ; <i1> [#uses=1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 4096, i64 0)
  %j_V = add i12 %t_V, 1                          ; <i12> [#uses=1]
  br i1 %tmp_11, label %bb1, label %bb33

bb33:                                             ; preds = %bb30, %entry
  %t_V_6 = phi i12 [ 0, %entry ], [ %i_V, %bb30 ] ; <i12> [#uses=4]
  %tmp_cast = zext i12 %t_V_6 to i13              ; <i13> [#uses=1]
  %tmp_9 = icmp ult i13 %tmp_cast, %op2_assign    ; <i1> [#uses=1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 4096, i64 0)
  %i_V = add i12 %t_V_6, 1                        ; <i12> [#uses=1]
  br i1 %tmp_9, label %bb30.preheader, label %return

bb30.preheader:                                   ; preds = %bb33
  %not = icmp ult i12 %t_V_6, %src_rows_V_read_3  ; <i1> [#uses=1]
  %notrhs = icmp ne i12 %t_V_6, 0                 ; <i1> [#uses=1]
  br label %bb30

return:                                           ; preds = %bb33
  ret void
}

define internal fastcc void @"Mat2AXIvideo<32,1080,1920,16>"(i12 %img_rows_V_read, i12 %img_cols_V_read, i8* %img_data_stream_0_V, i8* %img_data_stream_1_V, i8* %img_data_stream_2_V, i32* %AXI_video_strm_V_data_V, i4* %AXI_video_strm_V_keep_V, i4* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V) {
entry:
  %sof_2 = alloca i1                              ; <i1*> [#uses=3]
  %empty = call i32 (...)* @_ssdm_op_SpecFifo(i8* %img_data_stream_2_V, [8 x i8]* @str146, i32 0, i32 0, i32 0, [8 x i8]* @str146) ; <i32> [#uses=0]
  %empty_129 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %img_data_stream_1_V, [8 x i8]* @str143, i32 0, i32 0, i32 0, [8 x i8]* @str143) ; <i32> [#uses=0]
  %empty_130 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %img_data_stream_0_V, [8 x i8]* @str140, i32 0, i32 0, i32 0, [8 x i8]* @str140) ; <i32> [#uses=0]
  %empty_131 = call i32 (...)* @_ssdm_op_SpecFifo(i1* %AXI_video_strm_V_dest_V, [8 x i8]* @str106, i32 0, i32 0, i32 0, [8 x i8]* @str106) ; <i32> [#uses=0]
  %empty_132 = call i32 (...)* @_ssdm_op_SpecFifo(i1* %AXI_video_strm_V_id_V, [8 x i8]* @str105, i32 0, i32 0, i32 0, [8 x i8]* @str105) ; <i32> [#uses=0]
  %empty_133 = call i32 (...)* @_ssdm_op_SpecFifo(i1* %AXI_video_strm_V_last_V, [8 x i8]* @str104, i32 0, i32 0, i32 0, [8 x i8]* @str104) ; <i32> [#uses=0]
  %empty_134 = call i32 (...)* @_ssdm_op_SpecFifo(i1* %AXI_video_strm_V_user_V, [8 x i8]* @str103, i32 0, i32 0, i32 0, [8 x i8]* @str103) ; <i32> [#uses=0]
  %empty_135 = call i32 (...)* @_ssdm_op_SpecFifo(i4* %AXI_video_strm_V_strb_V, [8 x i8]* @str102, i32 0, i32 0, i32 0, [8 x i8]* @str102) ; <i32> [#uses=0]
  %empty_136 = call i32 (...)* @_ssdm_op_SpecFifo(i4* %AXI_video_strm_V_keep_V, [8 x i8]* @str101, i32 0, i32 0, i32 0, [8 x i8]* @str101) ; <i32> [#uses=0]
  %empty_137 = call i32 (...)* @_ssdm_op_SpecFifo(i32* %AXI_video_strm_V_data_V, [8 x i8]* @str100, i32 0, i32 0, i32 0, [8 x i8]* @str100) ; <i32> [#uses=0]
  call void (...)* @_ssdm_op_SpecIFCore(i32* %AXI_video_strm_V_data_V, i4* %AXI_video_strm_V_keep_V, i4* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V, [1 x i8]* @p_str, [5 x i8]* @p_str48, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [26 x i8]* @p_str50)
  %img_cols_V_read_2 = call i12 @_ssdm_op_WireRead.i12(i12 %img_cols_V_read) ; <i12> [#uses=2]
  %img_rows_V_read_2 = call i12 @_ssdm_op_WireRead.i12(i12 %img_rows_V_read) ; <i12> [#uses=1]
  %retval_i_cast = zext i12 %img_cols_V_read_2 to i13 ; <i13> [#uses=1]
  %op2_assign = add i13 %retval_i_cast, -1        ; <i13> [#uses=1]
  store i1 true, i1* %sof_2
  br label %bb17

bb2:                                              ; preds = %bb17
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str42) ; <i32> [#uses=1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 1080, i32 0, [1 x i8]* @p_str) nounwind
  br label %bb14

bb3:                                              ; preds = %bb14
  %sof_2_load = load i1* %sof_2                   ; <i1> [#uses=1]
  %tmp_16 = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str43) ; <i32> [#uses=1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 1920, i32 0, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, [1 x i8]* @p_str) nounwind
  %tmp_cast = zext i12 %t_V_7 to i13              ; <i13> [#uses=1]
  %axi_last_V = icmp eq i13 %tmp_cast, %op2_assign ; <i1> [#uses=1]
  %tmp = call i8 @_ssdm_op_FifoRead.volatile.i8P(i8* %img_data_stream_0_V) ; <i8> [#uses=1]
  %tmp_29 = call i8 @_ssdm_op_FifoRead.volatile.i8P(i8* %img_data_stream_1_V) ; <i8> [#uses=1]
  %tmp_30 = call i8 @_ssdm_op_FifoRead.volatile.i8P(i8* %img_data_stream_2_V) ; <i8> [#uses=1]
  %axi_data_V = call i32 @_ssdm_op_BitConcatenate.i32.i8.i8.i8.i8(i8 -1, i8 %tmp_30, i8 %tmp_29, i8 %tmp) ; <i32> [#uses=1]
  call void @_ssdm_op_FifoWrite.volatile.i32P.i4P.i4P.i1P.i1P.i1P.i1P(i32* %AXI_video_strm_V_data_V, i4* %AXI_video_strm_V_keep_V, i4* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V, i32 %axi_data_V, i4 -1, i4 undef, i1 %sof_2_load, i1 %axi_last_V, i1 undef, i1 undef)
  %empty_138 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str43, i32 %tmp_16) ; <i32> [#uses=0]
  store i1 false, i1* %sof_2
  br label %bb14

bb14:                                             ; preds = %bb3, %bb2
  %t_V_7 = phi i12 [ 0, %bb2 ], [ %j_V, %bb3 ]    ; <i12> [#uses=3]
  %exitcond2 = icmp eq i12 %t_V_7, %img_cols_V_read_2 ; <i1> [#uses=1]
  %j_V = add i12 %t_V_7, 1                        ; <i12> [#uses=1]
  br i1 %exitcond2, label %bb15, label %bb3

bb15:                                             ; preds = %bb14
  %empty_139 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str42, i32 %tmp_s) ; <i32> [#uses=0]
  br label %bb17

bb17:                                             ; preds = %bb15, %entry
  %t_V = phi i12 [ 0, %entry ], [ %i_V, %bb15 ]   ; <i12> [#uses=2]
  %exitcond = icmp eq i12 %t_V, %img_rows_V_read_2 ; <i1> [#uses=1]
  %i_V = add i12 %t_V, 1                          ; <i12> [#uses=1]
  br i1 %exitcond, label %return, label %bb2

return:                                           ; preds = %bb17
  ret void
}

define internal fastcc %"hls::Mat<1080, 1920, 16>::init_ret" @init(i32 %p_rows, i32 %p_cols) {
entry:
  call void (...)* @_ssdm_op_SpecIFCore(i32 %p_cols, [1 x i8]* @p_str, [10 x i8]* @p_str51, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [24 x i8]* @p_str52)
  call void (...)* @_ssdm_op_SpecIFCore(i32 %p_rows, [1 x i8]* @p_str, [10 x i8]* @p_str51, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [24 x i8]* @p_str52)
  %p_cols_read = call i32 @_ssdm_op_WireRead.i32(i32 %p_cols) ; <i32> [#uses=1]
  %p_rows_read = call i32 @_ssdm_op_WireRead.i32(i32 %p_rows) ; <i32> [#uses=1]
  %tmp = trunc i32 %p_rows_read to i12            ; <i12> [#uses=2]
  %tmp_31 = trunc i32 %p_cols_read to i12         ; <i12> [#uses=2]
  %mrv = insertvalue %"hls::Mat<1080, 1920, 16>::init_ret" undef, i12 %tmp, 0 ; <%"hls::Mat<1080, 1920, 16>::init_ret"> [#uses=1]
  %mrv_1 = insertvalue %"hls::Mat<1080, 1920, 16>::init_ret" %mrv, i12 %tmp, 1 ; <%"hls::Mat<1080, 1920, 16>::init_ret"> [#uses=1]
  %mrv_2 = insertvalue %"hls::Mat<1080, 1920, 16>::init_ret" %mrv_1, i12 %tmp_31, 2 ; <%"hls::Mat<1080, 1920, 16>::init_ret"> [#uses=1]
  %mrv_3 = insertvalue %"hls::Mat<1080, 1920, 16>::init_ret" %mrv_2, i12 %tmp_31, 3 ; <%"hls::Mat<1080, 1920, 16>::init_ret"> [#uses=1]
  ret %"hls::Mat<1080, 1920, 16>::init_ret" %mrv_3
}

define internal fastcc %"hls::Mat<1080, 1920, 0>::init.1_ret" @init.1(i32 %p_rows, i32 %p_cols) {
entry:
  call void (...)* @_ssdm_op_SpecIFCore(i32 %p_cols, [1 x i8]* @p_str, [10 x i8]* @p_str51, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [24 x i8]* @p_str52)
  call void (...)* @_ssdm_op_SpecIFCore(i32 %p_rows, [1 x i8]* @p_str, [10 x i8]* @p_str51, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [24 x i8]* @p_str52)
  %p_cols_read = call i32 @_ssdm_op_WireRead.i32(i32 %p_cols) ; <i32> [#uses=1]
  %p_rows_read = call i32 @_ssdm_op_WireRead.i32(i32 %p_rows) ; <i32> [#uses=1]
  %tmp = trunc i32 %p_rows_read to i12            ; <i12> [#uses=1]
  %tmp_32 = trunc i32 %p_cols_read to i12         ; <i12> [#uses=1]
  %mrv = insertvalue %"hls::Mat<1080, 1920, 0>::init.1_ret" undef, i12 %tmp, 0 ; <%"hls::Mat<1080, 1920, 0>::init.1_ret"> [#uses=1]
  %mrv_1 = insertvalue %"hls::Mat<1080, 1920, 0>::init.1_ret" %mrv, i12 %tmp_32, 1 ; <%"hls::Mat<1080, 1920, 0>::init.1_ret"> [#uses=1]
  ret %"hls::Mat<1080, 1920, 0>::init.1_ret" %mrv_1
}

define internal fastcc %"hls::Mat<1080, 1920, 0>::init.1_ret" @init.1.1(i32 %p_rows, i32 %p_cols) {
entry:
  call void (...)* @_ssdm_op_SpecIFCore(i32 %p_cols, [1 x i8]* @p_str, [10 x i8]* @p_str51, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [24 x i8]* @p_str52)
  call void (...)* @_ssdm_op_SpecIFCore(i32 %p_rows, [1 x i8]* @p_str, [10 x i8]* @p_str51, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [24 x i8]* @p_str52)
  %p_cols_read = call i32 @_ssdm_op_WireRead.i32(i32 %p_cols) ; <i32> [#uses=1]
  %p_rows_read = call i32 @_ssdm_op_WireRead.i32(i32 %p_rows) ; <i32> [#uses=1]
  %tmp = trunc i32 %p_rows_read to i12            ; <i12> [#uses=1]
  %tmp_33 = trunc i32 %p_cols_read to i12         ; <i12> [#uses=1]
  %mrv = insertvalue %"hls::Mat<1080, 1920, 0>::init.1_ret" undef, i12 %tmp, 0 ; <%"hls::Mat<1080, 1920, 0>::init.1_ret"> [#uses=1]
  %mrv_1 = insertvalue %"hls::Mat<1080, 1920, 0>::init.1_ret" %mrv, i12 %tmp_33, 1 ; <%"hls::Mat<1080, 1920, 0>::init.1_ret"> [#uses=1]
  ret %"hls::Mat<1080, 1920, 0>::init.1_ret" %mrv_1
}

define internal fastcc %"hls::Mat<1080, 1920, 0>::init.1_ret" @init.2(i32 %p_rows, i32 %p_cols) {
entry:
  call void (...)* @_ssdm_op_SpecIFCore(i32 %p_cols, [1 x i8]* @p_str, [10 x i8]* @p_str51, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [24 x i8]* @p_str52)
  call void (...)* @_ssdm_op_SpecIFCore(i32 %p_rows, [1 x i8]* @p_str, [10 x i8]* @p_str51, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [24 x i8]* @p_str52)
  %p_cols_read = call i32 @_ssdm_op_WireRead.i32(i32 %p_cols) ; <i32> [#uses=1]
  %p_rows_read = call i32 @_ssdm_op_WireRead.i32(i32 %p_rows) ; <i32> [#uses=1]
  %tmp = trunc i32 %p_rows_read to i12            ; <i12> [#uses=1]
  %tmp_34 = trunc i32 %p_cols_read to i12         ; <i12> [#uses=1]
  %mrv = insertvalue %"hls::Mat<1080, 1920, 0>::init.1_ret" undef, i12 %tmp, 0 ; <%"hls::Mat<1080, 1920, 0>::init.1_ret"> [#uses=1]
  %mrv_1 = insertvalue %"hls::Mat<1080, 1920, 0>::init.1_ret" %mrv, i12 %tmp_34, 1 ; <%"hls::Mat<1080, 1920, 0>::init.1_ret"> [#uses=1]
  ret %"hls::Mat<1080, 1920, 0>::init.1_ret" %mrv_1
}

define internal fastcc %"hls::Mat<1080, 1920, 0>::init.1_ret" @init.3(i32 %p_rows, i32 %p_cols) {
entry:
  call void (...)* @_ssdm_op_SpecIFCore(i32 %p_cols, [1 x i8]* @p_str, [10 x i8]* @p_str51, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [24 x i8]* @p_str52)
  call void (...)* @_ssdm_op_SpecIFCore(i32 %p_rows, [1 x i8]* @p_str, [10 x i8]* @p_str51, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [24 x i8]* @p_str52)
  %p_cols_read = call i32 @_ssdm_op_WireRead.i32(i32 %p_cols) ; <i32> [#uses=1]
  %p_rows_read = call i32 @_ssdm_op_WireRead.i32(i32 %p_rows) ; <i32> [#uses=1]
  %tmp = trunc i32 %p_rows_read to i12            ; <i12> [#uses=1]
  %tmp_35 = trunc i32 %p_cols_read to i12         ; <i12> [#uses=1]
  %mrv = insertvalue %"hls::Mat<1080, 1920, 0>::init.1_ret" undef, i12 %tmp, 0 ; <%"hls::Mat<1080, 1920, 0>::init.1_ret"> [#uses=1]
  %mrv_1 = insertvalue %"hls::Mat<1080, 1920, 0>::init.1_ret" %mrv, i12 %tmp_35, 1 ; <%"hls::Mat<1080, 1920, 0>::init.1_ret"> [#uses=1]
  ret %"hls::Mat<1080, 1920, 0>::init.1_ret" %mrv_1
}

define internal fastcc %"hls::Mat<1080, 1920, 0>::init.1_ret" @init.1.2(i32 %p_rows, i32 %p_cols) {
entry:
  call void (...)* @_ssdm_op_SpecIFCore(i32 %p_cols, [1 x i8]* @p_str, [10 x i8]* @p_str51, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [24 x i8]* @p_str52)
  call void (...)* @_ssdm_op_SpecIFCore(i32 %p_rows, [1 x i8]* @p_str, [10 x i8]* @p_str51, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [24 x i8]* @p_str52)
  %p_cols_read = call i32 @_ssdm_op_WireRead.i32(i32 %p_cols) ; <i32> [#uses=1]
  %p_rows_read = call i32 @_ssdm_op_WireRead.i32(i32 %p_rows) ; <i32> [#uses=1]
  %tmp = trunc i32 %p_rows_read to i12            ; <i12> [#uses=1]
  %tmp_36 = trunc i32 %p_cols_read to i12         ; <i12> [#uses=1]
  %mrv = insertvalue %"hls::Mat<1080, 1920, 0>::init.1_ret" undef, i12 %tmp, 0 ; <%"hls::Mat<1080, 1920, 0>::init.1_ret"> [#uses=1]
  %mrv_1 = insertvalue %"hls::Mat<1080, 1920, 0>::init.1_ret" %mrv, i12 %tmp_36, 1 ; <%"hls::Mat<1080, 1920, 0>::init.1_ret"> [#uses=1]
  ret %"hls::Mat<1080, 1920, 0>::init.1_ret" %mrv_1
}

define weak i8 @_ssdm_op_PartSelect.i8.i14.i32.i32(i14, i32, i32) nounwind readnone {
entry:
  %empty = call i14 @llvm.part.select.i14(i14 %0, i32 %1, i32 %2) ; <i14> [#uses=1]
  %empty_140 = trunc i14 %empty to i8             ; <i8> [#uses=1]
  ret i8 %empty_140
}

define weak i9 @_ssdm_op_PartSelect.i9.i15.i32.i32(i15, i32, i32) nounwind readnone {
entry:
  %empty = call i15 @llvm.part.select.i15(i15 %0, i32 %1, i32 %2) ; <i15> [#uses=1]
  %empty_141 = trunc i15 %empty to i9             ; <i9> [#uses=1]
  ret i9 %empty_141
}

define weak i13 @_ssdm_op_BitConcatenate.i13.i8.i5(i8, i5) nounwind readnone {
entry:
  %empty = zext i8 %0 to i13                      ; <i13> [#uses=1]
  %empty_142 = zext i5 %1 to i13                  ; <i13> [#uses=2]
  %empty_143 = trunc i13 %empty to i8             ; <i8> [#uses=1]
  %empty_144 = call i8 @_ssdm_op_PartSelect.i8.i13.i32.i32(i13 %empty_142, i32 5, i32 12) ; <i8> [#uses=1]
  %empty_145 = or i8 %empty_143, %empty_144       ; <i8> [#uses=1]
  %empty_146 = call i13 @_ssdm_op_PartSet.i13.i13.i8.i32.i32(i13 %empty_142, i8 %empty_145, i32 5, i32 12) ; <i13> [#uses=1]
  ret i13 %empty_146
}

define weak i10 @_ssdm_op_BitConcatenate.i10.i8.i2(i8, i2) nounwind readnone {
entry:
  %empty = zext i8 %0 to i10                      ; <i10> [#uses=1]
  %empty_147 = zext i2 %1 to i10                  ; <i10> [#uses=2]
  %empty_148 = trunc i10 %empty to i8             ; <i8> [#uses=1]
  %empty_149 = call i8 @_ssdm_op_PartSelect.i8.i10.i32.i32(i10 %empty_147, i32 2, i32 9) ; <i8> [#uses=1]
  %empty_150 = or i8 %empty_148, %empty_149       ; <i8> [#uses=1]
  %empty_151 = call i10 @_ssdm_op_PartSet.i10.i10.i8.i32.i32(i10 %empty_147, i8 %empty_150, i32 2, i32 9) ; <i10> [#uses=1]
  ret i10 %empty_151
}

define weak i14 @_ssdm_op_BitConcatenate.i14.i1.i8.i5(i1, i8, i5) nounwind readnone {
entry:
  %empty = zext i8 %1 to i13                      ; <i13> [#uses=1]
  %empty_152 = zext i5 %2 to i13                  ; <i13> [#uses=2]
  %empty_153 = trunc i13 %empty to i8             ; <i8> [#uses=1]
  %empty_154 = call i8 @_ssdm_op_PartSelect.i8.i13.i32.i32(i13 %empty_152, i32 5, i32 12) ; <i8> [#uses=1]
  %empty_155 = or i8 %empty_153, %empty_154       ; <i8> [#uses=1]
  %empty_156 = call i13 @_ssdm_op_PartSet.i13.i13.i8.i32.i32(i13 %empty_152, i8 %empty_155, i32 5, i32 12) ; <i13> [#uses=1]
  %empty_157 = zext i1 %0 to i14                  ; <i14> [#uses=1]
  %empty_158 = zext i13 %empty_156 to i14         ; <i14> [#uses=2]
  %empty_159 = trunc i14 %empty_157 to i1         ; <i1> [#uses=1]
  %empty_160 = call i1 @_ssdm_op_BitSelect.i1.i14.i32(i14 %empty_158, i32 13) ; <i1> [#uses=1]
  %empty_161 = or i1 %empty_159, %empty_160       ; <i1> [#uses=1]
  %empty_162 = call i14 @_ssdm_op_PartSet.i14.i14.i1.i32.i32(i14 %empty_158, i1 %empty_161, i32 13, i32 13) ; <i14> [#uses=1]
  ret i14 %empty_162
}

define weak i9 @_ssdm_op_PartSelect.i9.i12.i32.i32(i12, i32, i32) nounwind readnone {
entry:
  %empty = call i12 @llvm.part.select.i12(i12 %0, i32 %1, i32 %2) ; <i12> [#uses=1]
  %empty_163 = trunc i12 %empty to i9             ; <i9> [#uses=1]
  ret i9 %empty_163
}

define weak i8 @_ssdm_op_PartSelect.i8.i11.i32.i32(i11, i32, i32) nounwind readnone {
entry:
  %empty = call i11 @llvm.part.select.i11(i11 %0, i32 %1, i32 %2) ; <i11> [#uses=1]
  %empty_164 = trunc i11 %empty to i8             ; <i8> [#uses=1]
  ret i8 %empty_164
}

define weak i32 @_ssdm_op_WireRead.i32(i32) {
entry:
  ret i32 %0
}

define weak i12 @_ssdm_op_WireRead.i12(i12) {
entry:
  ret i12 %0
}

define weak i8 @_ssdm_op_FifoRead.volatile.i8P(i8*) {
entry:
  %empty = call i8 @_autotb_FifoRead_i8(i8* %0)   ; <i8> [#uses=1]
  ret i8 %empty
}

define weak void @_ssdm_op_FifoWrite.volatile.i32P.i4P.i4P.i1P.i1P.i1P.i1P(i32*, i4*, i4*, i1*, i1*, i1*, i1*, i32, i4, i4, i1, i1, i1, i1) {
entry:
  %empty = call i32 @_autotb_FifoWrite_i32(i32* %0, i32 %7) ; <i32> [#uses=0]
  %empty_165 = call i4 @_autotb_FifoWrite_i4(i4* %1, i4 %8) ; <i4> [#uses=0]
  %empty_166 = call i4 @_autotb_FifoWrite_i4(i4* %2, i4 %9) ; <i4> [#uses=0]
  %empty_167 = call i1 @_autotb_FifoWrite_i1(i1* %3, i1 %10) ; <i1> [#uses=0]
  %empty_168 = call i1 @_autotb_FifoWrite_i1(i1* %4, i1 %11) ; <i1> [#uses=0]
  %empty_169 = call i1 @_autotb_FifoWrite_i1(i1* %5, i1 %12) ; <i1> [#uses=0]
  %empty_170 = call i1 @_autotb_FifoWrite_i1(i1* %6, i1 %13) ; <i1> [#uses=0]
  ret void
}

define weak i2 @_ssdm_op_FifoRead.volatile.i2P(i2*) {
entry:
  %empty = call i2 @_autotb_FifoRead_i2(i2* %0)   ; <i2> [#uses=1]
  ret i2 %empty
}

define weak void @_ssdm_op_FifoWrite.volatile.i8P(i8*, i8) {
entry:
  %empty = call i8 @_autotb_FifoWrite_i8(i8* %0, i8 %1) ; <i8> [#uses=0]
  ret void
}

define weak void @_ssdm_op_FifoWrite.volatile.i2P(i2*, i2) {
entry:
  %empty = call i2 @_autotb_FifoWrite_i2(i2* %0, i2 %1) ; <i2> [#uses=0]
  ret void
}

define weak %0 @_ssdm_op_FifoRead.volatile.i32P.i4P.i4P.i1P.i1P.i1P.i1P(i32*, i4*, i4*, i1*, i1*, i1*, i1*) {
entry:
  %empty = call i32 @_autotb_FifoRead_i32(i32* %0) ; <i32> [#uses=1]
  %empty_171 = call i4 @_autotb_FifoRead_i4(i4* %1) ; <i4> [#uses=1]
  %empty_172 = call i4 @_autotb_FifoRead_i4(i4* %2) ; <i4> [#uses=1]
  %empty_173 = call i1 @_autotb_FifoRead_i1(i1* %3) ; <i1> [#uses=1]
  %empty_174 = call i1 @_autotb_FifoRead_i1(i1* %4) ; <i1> [#uses=1]
  %empty_175 = call i1 @_autotb_FifoRead_i1(i1* %5) ; <i1> [#uses=1]
  %empty_176 = call i1 @_autotb_FifoRead_i1(i1* %6) ; <i1> [#uses=1]
  %mrv_0 = insertvalue %0 undef, i32 %empty, 0    ; <%0> [#uses=1]
  %mrv1 = insertvalue %0 %mrv_0, i4 %empty_171, 1 ; <%0> [#uses=1]
  %mrv2 = insertvalue %0 %mrv1, i4 %empty_172, 2  ; <%0> [#uses=1]
  %mrv3 = insertvalue %0 %mrv2, i1 %empty_173, 3  ; <%0> [#uses=1]
  %mrv4 = insertvalue %0 %mrv3, i1 %empty_174, 4  ; <%0> [#uses=1]
  %mrv5 = insertvalue %0 %mrv4, i1 %empty_175, 5  ; <%0> [#uses=1]
  %mrv6 = insertvalue %0 %mrv5, i1 %empty_176, 6  ; <%0> [#uses=1]
  ret %0 %mrv6
}

define weak i1 @_ssdm_op_BitSelect.i1.i15.i32(i15, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i15                    ; <i15> [#uses=1]
  %empty_177 = shl i15 1, %empty                  ; <i15> [#uses=1]
  %empty_178 = and i15 %0, %empty_177             ; <i15> [#uses=1]
  %empty_179 = icmp ne i15 %empty_178, 0          ; <i1> [#uses=1]
  ret i1 %empty_179
}

declare i8 @_autotb_FifoRead_i8(i8*)

declare i32 @_autotb_FifoWrite_i32(i32*, i32)

declare i4 @_autotb_FifoWrite_i4(i4*, i4)

declare i1 @_autotb_FifoWrite_i1(i1*, i1)

declare i2 @_autotb_FifoRead_i2(i2*)

declare i8 @_autotb_FifoWrite_i8(i8*, i8)

declare i2 @_autotb_FifoWrite_i2(i2*, i2)

declare i32 @_autotb_FifoRead_i32(i32*)

declare i4 @_autotb_FifoRead_i4(i4*)

declare i1 @_autotb_FifoRead_i1(i1*)

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i14 @llvm.part.select.i14(i14, i32, i32) nounwind readnone

declare i15 @llvm.part.select.i15(i15, i32, i32) nounwind readnone

declare i12 @llvm.part.select.i12(i12, i32, i32) nounwind readnone

declare i11 @llvm.part.select.i11(i11, i32, i32) nounwind readnone

declare i6 @_ssdm_op_PartSelect.i6.i15.i32.i32(i15, i32, i32) nounwind readnone

define weak i8 @_ssdm_op_PartSelect.i8.i10.i32.i32(i10, i32, i32) nounwind readnone {
entry:
  %empty = call i10 @llvm.part.select.i10(i10 %0, i32 %1, i32 %2) ; <i10> [#uses=1]
  %empty_180 = trunc i10 %empty to i8             ; <i8> [#uses=1]
  ret i8 %empty_180
}

declare i8 @_ssdm_op_PartSelect.i8.i12.i32.i32(i12, i32, i32) nounwind readnone

declare i1 @_ssdm_op_PartSelect.i1.i8.i32.i32(i8, i32, i32) nounwind readnone

declare i12 @_ssdm_op_PartSelect.i12.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16, i32, i32) nounwind readnone {
entry:
  %empty = call i16 @llvm.part.select.i16(i16 %0, i32 %1, i32 %2) ; <i16> [#uses=1]
  %empty_181 = trunc i16 %empty to i8             ; <i8> [#uses=1]
  ret i8 %empty_181
}

define weak i16 @_ssdm_op_PartSet.i16.i16.i8.i32.i32(i16, i8, i32, i32) nounwind readnone {
entry:
  %empty = call i16 @llvm.part.set.i16.i8(i16 %0, i8 %1, i32 %2, i32 %3) ; <i16> [#uses=1]
  ret i16 %empty
}

define weak i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24, i32, i32) nounwind readnone {
entry:
  %empty = call i24 @llvm.part.select.i24(i24 %0, i32 %1, i32 %2) ; <i24> [#uses=1]
  %empty_182 = trunc i24 %empty to i8             ; <i8> [#uses=1]
  ret i8 %empty_182
}

define weak i24 @_ssdm_op_PartSet.i24.i24.i8.i32.i32(i24, i8, i32, i32) nounwind readnone {
entry:
  %empty = call i24 @llvm.part.set.i24.i8(i24 %0, i8 %1, i32 %2, i32 %3) ; <i24> [#uses=1]
  ret i24 %empty
}

define weak i32 @_ssdm_op_PartSet.i32.i32.i8.i32.i32(i32, i8, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.set.i32.i8(i32 %0, i8 %1, i32 %2, i32 %3) ; <i32> [#uses=1]
  ret i32 %empty
}

define weak i8 @_ssdm_op_PartSelect.i8.i13.i32.i32(i13, i32, i32) nounwind readnone {
entry:
  %empty = call i13 @llvm.part.select.i13(i13 %0, i32 %1, i32 %2) ; <i13> [#uses=1]
  %empty_183 = trunc i13 %empty to i8             ; <i8> [#uses=1]
  ret i8 %empty_183
}

define weak i13 @_ssdm_op_PartSet.i13.i13.i8.i32.i32(i13, i8, i32, i32) nounwind readnone {
entry:
  %empty = call i13 @llvm.part.set.i13.i8(i13 %0, i8 %1, i32 %2, i32 %3) ; <i13> [#uses=1]
  ret i13 %empty
}

define weak i10 @_ssdm_op_PartSet.i10.i10.i8.i32.i32(i10, i8, i32, i32) nounwind readnone {
entry:
  %empty = call i10 @llvm.part.set.i10.i8(i10 %0, i8 %1, i32 %2, i32 %3) ; <i10> [#uses=1]
  ret i10 %empty
}

declare i1 @_ssdm_op_PartSelect.i1.i14.i32.i32(i14, i32, i32) nounwind readnone

define weak i14 @_ssdm_op_PartSet.i14.i14.i1.i32.i32(i14, i1, i32, i32) nounwind readnone {
entry:
  %empty = call i14 @llvm.part.set.i14.i1(i14 %0, i1 %1, i32 %2, i32 %3) ; <i14> [#uses=1]
  ret i14 %empty
}

define weak i1 @_ssdm_op_BitSelect.i1.i14.i32(i14, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i14                    ; <i14> [#uses=1]
  %empty_184 = shl i14 1, %empty                  ; <i14> [#uses=1]
  %empty_185 = and i14 %0, %empty_184             ; <i14> [#uses=1]
  %empty_186 = icmp ne i14 %empty_185, 0          ; <i1> [#uses=1]
  ret i1 %empty_186
}

declare i10 @llvm.part.select.i10(i10, i32, i32) nounwind readnone

declare i16 @llvm.part.select.i16(i16, i32, i32) nounwind readnone

declare i16 @llvm.part.set.i16.i8(i16, i8, i32, i32) nounwind readnone

declare i24 @llvm.part.select.i24(i24, i32, i32) nounwind readnone

declare i24 @llvm.part.set.i24.i8(i24, i8, i32, i32) nounwind readnone

declare i32 @llvm.part.set.i32.i8(i32, i8, i32, i32) nounwind readnone

declare i13 @llvm.part.select.i13(i13, i32, i32) nounwind readnone

declare i13 @llvm.part.set.i13.i8(i13, i8, i32, i32) nounwind readnone

declare i10 @llvm.part.set.i10.i8(i10, i8, i32, i32) nounwind readnone

declare i14 @llvm.part.set.i14.i1(i14, i1, i32, i32) nounwind readnone

!llvm.dbg.gv = !{!0}

!0 = metadata !{i32 462866, i32 0, metadata !1, metadata !"prevGesture.V", metadata !"prevGesture.V", metadata !"prevGesture.V", metadata !4, i32 249, metadata !776, i1 true, i1 true, i2* @prevGesture_V} ; [ DW_TAG_variable_field ]
!1 = metadata !{i32 458804, i32 0, metadata !2, metadata !"prevGesture", metadata !"prevGesture", metadata !"", metadata !4, i32 249, metadata !469, i1 true, i1 true, null} ; [ DW_TAG_variable ]
!2 = metadata !{i32 458798, i32 0, metadata !3, metadata !"finger_counter", metadata !"finger_counter", metadata !"_Z14finger_counterRN3hls3MatILi1080ELi1920ELi0EEES2_RNS_6streamI7ap_uintILi2EEEE", metadata !4, i32 229, metadata !5, i1 false, i1 true, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!3 = metadata !{i32 458769, i32 0, i32 4, metadata !"top.pragma.2.cpp", metadata !"/home/student/nl443/ece5775/project/TaikoGestureMaster/xapp1167_vivado/sw/gesture_stream_v1/prj/solution1/.autopilot/db", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.7)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!4 = metadata !{i32 458769, i32 0, i32 4, metadata !"top.cpp", metadata !"/home/student/nl443/ece5775/project/TaikoGestureMaster/xapp1167_vivado/sw/gesture_stream_v1/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.7)", i1 false, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!5 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !6, i32 0, null} ; [ DW_TAG_subroutine_type ]
!6 = metadata !{null, metadata !7, metadata !7, metadata !465}
!7 = metadata !{i32 458768, metadata !3, metadata !"UC_IMAGE", metadata !3, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_reference_type ]
!8 = metadata !{i32 458774, metadata !3, metadata !"UC_IMAGE", metadata !9, i32 59, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ]
!9 = metadata !{i32 458769, i32 0, i32 4, metadata !"top.h", metadata !"/home/student/nl443/ece5775/project/TaikoGestureMaster/xapp1167_vivado/sw/gesture_stream_v1/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.7)", i1 false, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!10 = metadata !{i32 458771, metadata !11, metadata !"Mat<1080,1920,0>", metadata !13, i32 445, i64 48, i64 16, i64 0, i32 0, null, metadata !14, i32 0, null} ; [ DW_TAG_structure_type ]
!11 = metadata !{i32 458809, metadata !3, metadata !"hls", metadata !12, i32 23} ; [ DW_TAG_namespace ]
!12 = metadata !{i32 458769, i32 0, i32 4, metadata !"hls_stream.h", metadata !"/opt/xilinx/Vivado_HLS/2013.2/common/technology/autopilot", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.7)", i1 false, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!13 = metadata !{i32 458769, i32 0, i32 4, metadata !"hls_video_core.h", metadata !"/opt/xilinx/Vivado_HLS/2013.2/common/technology/autopilot/hls", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.7)", i1 false, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!14 = metadata !{metadata !15, metadata !314, metadata !315, metadata !363, metadata !367, metadata !370, metadata !417, metadata !418, metadata !422, metadata !445, metadata !449, metadata !452, metadata !453, metadata !454, metadata !457, metadata !463, metadata !464}
!15 = metadata !{i32 458765, metadata !10, metadata !"rows", metadata !13, i32 465, i64 16, i64 16, i64 0, i32 0, metadata !16} ; [ DW_TAG_member ]
!16 = metadata !{i32 458771, metadata !3, metadata !"ap_uint<12>", metadata !17, i32 134, i64 16, i64 16, i64 0, i32 0, null, metadata !18, i32 0, null} ; [ DW_TAG_structure_type ]
!17 = metadata !{i32 458769, i32 0, i32 4, metadata !"ap_int.h", metadata !"/opt/xilinx/Vivado_HLS/2013.2/common/technology/autopilot", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.7)", i1 false, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!18 = metadata !{metadata !19, metadata !246, metadata !250, metadata !253, metadata !256, metadata !259, metadata !262, metadata !265, metadata !268, metadata !271, metadata !274, metadata !277, metadata !280, metadata !283, metadata !286, metadata !289, metadata !292, metadata !295, metadata !302, metadata !307, metadata !311}
!19 = metadata !{i32 458780, metadata !3, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !20} ; [ DW_TAG_inheritance ]
!20 = metadata !{i32 458771, metadata !3, metadata !"ap_int_base<12,false,true>", metadata !21, i32 599, i64 16, i64 16, i64 0, i32 0, null, metadata !22, i32 0, null} ; [ DW_TAG_structure_type ]
!21 = metadata !{i32 458769, i32 0, i32 4, metadata !"ap_int_syn.h", metadata !"/opt/xilinx/Vivado_HLS/2013.2/common/technology/autopilot", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.7)", i1 false, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!22 = metadata !{metadata !23, metadata !33, metadata !37, metadata !41, metadata !45, metadata !49, metadata !53, metadata !57, metadata !61, metadata !65, metadata !69, metadata !73, metadata !77, metadata !81, metadata !85, metadata !89, metadata !95, metadata !98, metadata !103, metadata !108, metadata !113, metadata !114, metadata !118, metadata !121, metadata !124, metadata !127, metadata !130, metadata !133, metadata !139, metadata !142, metadata !145, metadata !148, metadata !151, metadata !154, metadata !158, metadata !159, metadata !162, metadata !163, metadata !167, metadata !170, metadata !171, metadata !172, metadata !173, metadata !174, metadata !175, metadata !178, metadata !179, metadata !182, metadata !183, metadata !184, metadata !185, metadata !186, metadata !187, metadata !190, metadata !191, metadata !192, metadata !195, metadata !196, metadata !199, metadata !200, metadata !204, metadata !205, metadata !208, metadata !209, metadata !213, metadata !214, metadata !215, metadata !216, metadata !219, metadata !220, metadata !221, metadata !222, metadata !223, metadata !224, metadata !225, metadata !226, metadata !227, metadata !228, metadata !229, metadata !230, metadata !240, metadata !243}
!23 = metadata !{i32 458780, metadata !3, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !24} ; [ DW_TAG_inheritance ]
!24 = metadata !{i32 458771, metadata !3, metadata !"ssdm_int<12,false>", metadata !25, i32 14, i64 16, i64 16, i64 0, i32 0, null, metadata !26, i32 0, null} ; [ DW_TAG_structure_type ]
!25 = metadata !{i32 458769, i32 0, i32 4, metadata !"autopilot_dt.def", metadata !"/opt/xilinx/Vivado_HLS/2013.2/common/technology/autopilot/etc", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.7)", i1 false, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!26 = metadata !{metadata !27, metadata !29}
!27 = metadata !{i32 458765, metadata !24, metadata !"V", metadata !25, i32 14, i64 16, i64 16, i64 0, i32 0, metadata !28} ; [ DW_TAG_member ]
!28 = metadata !{i32 458788, metadata !3, metadata !"", metadata !3, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!29 = metadata !{i32 458798, i32 0, metadata !24, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !25, i32 14, metadata !30, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!30 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !31, i32 0, null} ; [ DW_TAG_subroutine_type ]
!31 = metadata !{null, metadata !32}
!32 = metadata !{i32 458767, metadata !3, metadata !"", metadata !3, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !24} ; [ DW_TAG_pointer_type ]
!33 = metadata !{i32 458798, i32 0, metadata !20, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !21, i32 1333, metadata !34, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!34 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !35, i32 0, null} ; [ DW_TAG_subroutine_type ]
!35 = metadata !{null, metadata !36}
!36 = metadata !{i32 458767, metadata !3, metadata !"", metadata !3, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !20} ; [ DW_TAG_pointer_type ]
!37 = metadata !{i32 458798, i32 0, metadata !20, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !21, i32 1355, metadata !38, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!38 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !39, i32 0, null} ; [ DW_TAG_subroutine_type ]
!39 = metadata !{null, metadata !36, metadata !40}
!40 = metadata !{i32 458788, metadata !3, metadata !"bool", metadata !3, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!41 = metadata !{i32 458798, i32 0, metadata !20, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !21, i32 1356, metadata !42, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!42 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !43, i32 0, null} ; [ DW_TAG_subroutine_type ]
!43 = metadata !{null, metadata !36, metadata !44}
!44 = metadata !{i32 458788, metadata !3, metadata !"signed char", metadata !3, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!45 = metadata !{i32 458798, i32 0, metadata !20, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !21, i32 1357, metadata !46, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!46 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !47, i32 0, null} ; [ DW_TAG_subroutine_type ]
!47 = metadata !{null, metadata !36, metadata !48}
!48 = metadata !{i32 458788, metadata !3, metadata !"unsigned char", metadata !3, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!49 = metadata !{i32 458798, i32 0, metadata !20, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !21, i32 1358, metadata !50, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!50 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !51, i32 0, null} ; [ DW_TAG_subroutine_type ]
!51 = metadata !{null, metadata !36, metadata !52}
!52 = metadata !{i32 458788, metadata !3, metadata !"short int", metadata !3, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!53 = metadata !{i32 458798, i32 0, metadata !20, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !21, i32 1359, metadata !54, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!54 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !55, i32 0, null} ; [ DW_TAG_subroutine_type ]
!55 = metadata !{null, metadata !36, metadata !56}
!56 = metadata !{i32 458788, metadata !3, metadata !"short unsigned int", metadata !3, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!57 = metadata !{i32 458798, i32 0, metadata !20, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !21, i32 1360, metadata !58, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!58 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !59, i32 0, null} ; [ DW_TAG_subroutine_type ]
!59 = metadata !{null, metadata !36, metadata !60}
!60 = metadata !{i32 458788, metadata !3, metadata !"int", metadata !3, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!61 = metadata !{i32 458798, i32 0, metadata !20, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !21, i32 1361, metadata !62, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!62 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !63, i32 0, null} ; [ DW_TAG_subroutine_type ]
!63 = metadata !{null, metadata !36, metadata !64}
!64 = metadata !{i32 458788, metadata !3, metadata !"unsigned int", metadata !3, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!65 = metadata !{i32 458798, i32 0, metadata !20, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !21, i32 1362, metadata !66, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!66 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !67, i32 0, null} ; [ DW_TAG_subroutine_type ]
!67 = metadata !{null, metadata !36, metadata !68}
!68 = metadata !{i32 458788, metadata !3, metadata !"long int", metadata !3, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!69 = metadata !{i32 458798, i32 0, metadata !20, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !21, i32 1363, metadata !70, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!70 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !71, i32 0, null} ; [ DW_TAG_subroutine_type ]
!71 = metadata !{null, metadata !36, metadata !72}
!72 = metadata !{i32 458788, metadata !3, metadata !"long unsigned int", metadata !3, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!73 = metadata !{i32 458798, i32 0, metadata !20, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !21, i32 1364, metadata !74, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!74 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !75, i32 0, null} ; [ DW_TAG_subroutine_type ]
!75 = metadata !{null, metadata !36, metadata !76}
!76 = metadata !{i32 458788, metadata !3, metadata !"long long int", metadata !3, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!77 = metadata !{i32 458798, i32 0, metadata !20, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !21, i32 1365, metadata !78, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!78 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !79, i32 0, null} ; [ DW_TAG_subroutine_type ]
!79 = metadata !{null, metadata !36, metadata !80}
!80 = metadata !{i32 458788, metadata !3, metadata !"long long unsigned int", metadata !3, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!81 = metadata !{i32 458798, i32 0, metadata !20, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !21, i32 1366, metadata !82, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!82 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !83, i32 0, null} ; [ DW_TAG_subroutine_type ]
!83 = metadata !{null, metadata !36, metadata !84}
!84 = metadata !{i32 458788, metadata !3, metadata !"float", metadata !3, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!85 = metadata !{i32 458798, i32 0, metadata !20, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !21, i32 1367, metadata !86, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!86 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !87, i32 0, null} ; [ DW_TAG_subroutine_type ]
!87 = metadata !{null, metadata !36, metadata !88}
!88 = metadata !{i32 458788, metadata !3, metadata !"double", metadata !3, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!89 = metadata !{i32 458798, i32 0, metadata !20, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !21, i32 1394, metadata !90, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!90 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !91, i32 0, null} ; [ DW_TAG_subroutine_type ]
!91 = metadata !{null, metadata !36, metadata !92}
!92 = metadata !{i32 458767, metadata !3, metadata !"", metadata !3, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !93} ; [ DW_TAG_pointer_type ]
!93 = metadata !{i32 458790, metadata !3, metadata !"", metadata !3, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !94} ; [ DW_TAG_const_type ]
!94 = metadata !{i32 458788, metadata !3, metadata !"char", metadata !3, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!95 = metadata !{i32 458798, i32 0, metadata !20, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !21, i32 1401, metadata !96, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!96 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !97, i32 0, null} ; [ DW_TAG_subroutine_type ]
!97 = metadata !{null, metadata !36, metadata !92, metadata !44}
!98 = metadata !{i32 458798, i32 0, metadata !20, metadata !"read", metadata !"read", metadata !"_ZNV11ap_int_baseILi12ELb0ELb1EE4readEv", metadata !21, i32 1422, metadata !99, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!99 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !100, i32 0, null} ; [ DW_TAG_subroutine_type ]
!100 = metadata !{metadata !20, metadata !101}
!101 = metadata !{i32 458767, metadata !3, metadata !"", metadata !3, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !102} ; [ DW_TAG_pointer_type ]
!102 = metadata !{i32 458805, metadata !3, metadata !"", metadata !3, i32 0, i64 16, i64 16, i64 0, i32 0, metadata !20} ; [ DW_TAG_volatile_type ]
!103 = metadata !{i32 458798, i32 0, metadata !20, metadata !"write", metadata !"write", metadata !"_ZNV11ap_int_baseILi12ELb0ELb1EE5writeERKS0_", metadata !21, i32 1428, metadata !104, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!104 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !105, i32 0, null} ; [ DW_TAG_subroutine_type ]
!105 = metadata !{null, metadata !101, metadata !106}
!106 = metadata !{i32 458768, metadata !3, metadata !"", metadata !3, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !107} ; [ DW_TAG_reference_type ]
!107 = metadata !{i32 458790, metadata !3, metadata !"", metadata !3, i32 0, i64 16, i64 16, i64 0, i32 0, metadata !20} ; [ DW_TAG_const_type ]
!108 = metadata !{i32 458798, i32 0, metadata !20, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi12ELb0ELb1EEaSERVKS0_", metadata !21, i32 1440, metadata !109, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!109 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !110, i32 0, null} ; [ DW_TAG_subroutine_type ]
!110 = metadata !{null, metadata !101, metadata !111}
!111 = metadata !{i32 458768, metadata !3, metadata !"", metadata !3, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !112} ; [ DW_TAG_reference_type ]
!112 = metadata !{i32 458790, metadata !3, metadata !"", metadata !3, i32 0, i64 16, i64 16, i64 0, i32 0, metadata !102} ; [ DW_TAG_const_type ]
!113 = metadata !{i32 458798, i32 0, metadata !20, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi12ELb0ELb1EEaSERKS0_", metadata !21, i32 1449, metadata !104, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!114 = metadata !{i32 458798, i32 0, metadata !20, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EEaSERVKS0_", metadata !21, i32 1472, metadata !115, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!115 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !116, i32 0, null} ; [ DW_TAG_subroutine_type ]
!116 = metadata !{metadata !117, metadata !36, metadata !111}
!117 = metadata !{i32 458768, metadata !3, metadata !"ap_int_base<12,false,true>", metadata !3, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_reference_type ]
!118 = metadata !{i32 458798, i32 0, metadata !20, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EEaSERKS0_", metadata !21, i32 1477, metadata !119, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!119 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !120, i32 0, null} ; [ DW_TAG_subroutine_type ]
!120 = metadata !{metadata !117, metadata !36, metadata !106}
!121 = metadata !{i32 458798, i32 0, metadata !20, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EEaSEPKc", metadata !21, i32 1481, metadata !122, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!122 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !123, i32 0, null} ; [ DW_TAG_subroutine_type ]
!123 = metadata !{metadata !117, metadata !36, metadata !92}
!124 = metadata !{i32 458798, i32 0, metadata !20, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EE3setEPKca", metadata !21, i32 1489, metadata !125, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!125 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !126, i32 0, null} ; [ DW_TAG_subroutine_type ]
!126 = metadata !{metadata !117, metadata !36, metadata !92, metadata !44}
!127 = metadata !{i32 458798, i32 0, metadata !20, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EEaSEy", metadata !21, i32 1498, metadata !128, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!128 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !129, i32 0, null} ; [ DW_TAG_subroutine_type ]
!129 = metadata !{metadata !117, metadata !36, metadata !80}
!130 = metadata !{i32 458798, i32 0, metadata !20, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EEaSEx", metadata !21, i32 1503, metadata !131, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!131 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !132, i32 0, null} ; [ DW_TAG_subroutine_type ]
!132 = metadata !{metadata !117, metadata !36, metadata !76}
!133 = metadata !{i32 458798, i32 0, metadata !20, metadata !"operator ap_ulong", metadata !"operator ap_ulong", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EEcvyEv", metadata !21, i32 1544, metadata !134, i1 false, i1 true, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!134 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !135, i32 0, null} ; [ DW_TAG_subroutine_type ]
!135 = metadata !{metadata !136, metadata !138}
!136 = metadata !{i32 458774, metadata !3, metadata !"ap_ulong", metadata !137, i32 320, i64 0, i64 0, i64 0, i32 0, metadata !80} ; [ DW_TAG_typedef ]
!137 = metadata !{i32 458769, i32 0, i32 4, metadata !"math.h", metadata !"/usr/include", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.7)", i1 false, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!138 = metadata !{i32 458767, metadata !3, metadata !"", metadata !3, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !107} ; [ DW_TAG_pointer_type ]
!139 = metadata !{i32 458798, i32 0, metadata !20, metadata !"to_bool", metadata !"to_bool", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE7to_boolEv", metadata !21, i32 1550, metadata !140, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!140 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !141, i32 0, null} ; [ DW_TAG_subroutine_type ]
!141 = metadata !{metadata !40, metadata !138}
!142 = metadata !{i32 458798, i32 0, metadata !20, metadata !"to_int", metadata !"to_int", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE6to_intEv", metadata !21, i32 1551, metadata !143, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!143 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !144, i32 0, null} ; [ DW_TAG_subroutine_type ]
!144 = metadata !{metadata !60, metadata !138}
!145 = metadata !{i32 458798, i32 0, metadata !20, metadata !"to_uint", metadata !"to_uint", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE7to_uintEv", metadata !21, i32 1552, metadata !146, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!146 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !147, i32 0, null} ; [ DW_TAG_subroutine_type ]
!147 = metadata !{metadata !64, metadata !138}
!148 = metadata !{i32 458798, i32 0, metadata !20, metadata !"to_long", metadata !"to_long", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE7to_longEv", metadata !21, i32 1553, metadata !149, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!149 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !150, i32 0, null} ; [ DW_TAG_subroutine_type ]
!150 = metadata !{metadata !68, metadata !138}
!151 = metadata !{i32 458798, i32 0, metadata !20, metadata !"to_ulong", metadata !"to_ulong", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE8to_ulongEv", metadata !21, i32 1554, metadata !152, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!152 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !153, i32 0, null} ; [ DW_TAG_subroutine_type ]
!153 = metadata !{metadata !72, metadata !138}
!154 = metadata !{i32 458798, i32 0, metadata !20, metadata !"to_int64", metadata !"to_int64", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE8to_int64Ev", metadata !21, i32 1555, metadata !155, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!155 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !156, i32 0, null} ; [ DW_TAG_subroutine_type ]
!156 = metadata !{metadata !157, metadata !138}
!157 = metadata !{i32 458774, metadata !3, metadata !"ap_slong", metadata !21, i32 65, i64 0, i64 0, i64 0, i32 0, metadata !76} ; [ DW_TAG_typedef ]
!158 = metadata !{i32 458798, i32 0, metadata !20, metadata !"to_uint64", metadata !"to_uint64", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE9to_uint64Ev", metadata !21, i32 1556, metadata !134, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!159 = metadata !{i32 458798, i32 0, metadata !20, metadata !"to_double", metadata !"to_double", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE9to_doubleEv", metadata !21, i32 1557, metadata !160, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!160 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !161, i32 0, null} ; [ DW_TAG_subroutine_type ]
!161 = metadata !{metadata !88, metadata !138}
!162 = metadata !{i32 458798, i32 0, metadata !20, metadata !"length", metadata !"length", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE6lengthEv", metadata !21, i32 1570, metadata !143, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!163 = metadata !{i32 458798, i32 0, metadata !20, metadata !"length", metadata !"length", metadata !"_ZNVK11ap_int_baseILi12ELb0ELb1EE6lengthEv", metadata !21, i32 1571, metadata !164, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!164 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !165, i32 0, null} ; [ DW_TAG_subroutine_type ]
!165 = metadata !{metadata !60, metadata !166}
!166 = metadata !{i32 458767, metadata !3, metadata !"", metadata !3, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !112} ; [ DW_TAG_pointer_type ]
!167 = metadata !{i32 458798, i32 0, metadata !20, metadata !"reverse", metadata !"reverse", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EE7reverseEv", metadata !21, i32 1576, metadata !168, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!168 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !169, i32 0, null} ; [ DW_TAG_subroutine_type ]
!169 = metadata !{metadata !117, metadata !36}
!170 = metadata !{i32 458798, i32 0, metadata !20, metadata !"iszero", metadata !"iszero", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE6iszeroEv", metadata !21, i32 1582, metadata !140, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!171 = metadata !{i32 458798, i32 0, metadata !20, metadata !"is_zero", metadata !"is_zero", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE7is_zeroEv", metadata !21, i32 1587, metadata !140, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!172 = metadata !{i32 458798, i32 0, metadata !20, metadata !"sign", metadata !"sign", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE4signEv", metadata !21, i32 1592, metadata !140, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!173 = metadata !{i32 458798, i32 0, metadata !20, metadata !"clear", metadata !"clear", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EE5clearEi", metadata !21, i32 1600, metadata !58, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!174 = metadata !{i32 458798, i32 0, metadata !20, metadata !"invert", metadata !"invert", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EE6invertEi", metadata !21, i32 1606, metadata !58, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!175 = metadata !{i32 458798, i32 0, metadata !20, metadata !"test", metadata !"test", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE4testEi", metadata !21, i32 1614, metadata !176, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!176 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !177, i32 0, null} ; [ DW_TAG_subroutine_type ]
!177 = metadata !{metadata !40, metadata !138, metadata !60}
!178 = metadata !{i32 458798, i32 0, metadata !20, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EE3setEi", metadata !21, i32 1620, metadata !58, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!179 = metadata !{i32 458798, i32 0, metadata !20, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EE3setEib", metadata !21, i32 1626, metadata !180, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!180 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !181, i32 0, null} ; [ DW_TAG_subroutine_type ]
!181 = metadata !{null, metadata !36, metadata !60, metadata !40}
!182 = metadata !{i32 458798, i32 0, metadata !20, metadata !"lrotate", metadata !"lrotate", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EE7lrotateEi", metadata !21, i32 1633, metadata !58, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!183 = metadata !{i32 458798, i32 0, metadata !20, metadata !"rrotate", metadata !"rrotate", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EE7rrotateEi", metadata !21, i32 1642, metadata !58, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!184 = metadata !{i32 458798, i32 0, metadata !20, metadata !"set_bit", metadata !"set_bit", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EE7set_bitEib", metadata !21, i32 1650, metadata !180, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!185 = metadata !{i32 458798, i32 0, metadata !20, metadata !"get_bit", metadata !"get_bit", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE7get_bitEi", metadata !21, i32 1655, metadata !176, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!186 = metadata !{i32 458798, i32 0, metadata !20, metadata !"b_not", metadata !"b_not", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EE5b_notEv", metadata !21, i32 1660, metadata !34, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!187 = metadata !{i32 458798, i32 0, metadata !20, metadata !"countLeadingZeros", metadata !"countLeadingZeros", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EE17countLeadingZerosEv", metadata !21, i32 1667, metadata !188, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!188 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !189, i32 0, null} ; [ DW_TAG_subroutine_type ]
!189 = metadata !{metadata !60, metadata !36}
!190 = metadata !{i32 458798, i32 0, metadata !20, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EEppEv", metadata !21, i32 1724, metadata !168, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!191 = metadata !{i32 458798, i32 0, metadata !20, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EEmmEv", metadata !21, i32 1728, metadata !168, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!192 = metadata !{i32 458798, i32 0, metadata !20, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EEppEi", metadata !21, i32 1736, metadata !193, i1 false, i1 true, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!193 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !194, i32 0, null} ; [ DW_TAG_subroutine_type ]
!194 = metadata !{metadata !107, metadata !36, metadata !60}
!195 = metadata !{i32 458798, i32 0, metadata !20, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EEmmEi", metadata !21, i32 1741, metadata !193, i1 false, i1 true, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!196 = metadata !{i32 458798, i32 0, metadata !20, metadata !"operator+", metadata !"operator+", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EEpsEv", metadata !21, i32 1750, metadata !197, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!197 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !198, i32 0, null} ; [ DW_TAG_subroutine_type ]
!198 = metadata !{metadata !20, metadata !138}
!199 = metadata !{i32 458798, i32 0, metadata !20, metadata !"operator!", metadata !"operator!", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EEntEv", metadata !21, i32 1756, metadata !140, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!200 = metadata !{i32 458798, i32 0, metadata !20, metadata !"range", metadata !"range", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EE5rangeEii", metadata !21, i32 1883, metadata !201, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!201 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !202, i32 0, null} ; [ DW_TAG_subroutine_type ]
!202 = metadata !{metadata !203, metadata !36, metadata !60, metadata !60}
!203 = metadata !{i32 458771, metadata !3, metadata !"ap_range_ref<12,false>", metadata !21, i32 872, i64 0, i64 0, i64 0, i32 4, null, null, i32 0, null} ; [ DW_TAG_structure_type ]
!204 = metadata !{i32 458798, i32 0, metadata !20, metadata !"operator()", metadata !"operator()", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EEclEii", metadata !21, i32 1889, metadata !201, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!205 = metadata !{i32 458798, i32 0, metadata !20, metadata !"range", metadata !"range", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE5rangeEii", metadata !21, i32 1895, metadata !206, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!206 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !207, i32 0, null} ; [ DW_TAG_subroutine_type ]
!207 = metadata !{metadata !203, metadata !138, metadata !60, metadata !60}
!208 = metadata !{i32 458798, i32 0, metadata !20, metadata !"operator()", metadata !"operator()", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EEclEii", metadata !21, i32 1901, metadata !206, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!209 = metadata !{i32 458798, i32 0, metadata !20, metadata !"operator[]", metadata !"operator[]", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EEixEi", metadata !21, i32 1920, metadata !210, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!210 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !211, i32 0, null} ; [ DW_TAG_subroutine_type ]
!211 = metadata !{metadata !212, metadata !36, metadata !60}
!212 = metadata !{i32 458771, metadata !3, metadata !"ap_bit_ref<12,false>", metadata !21, i32 1118, i64 0, i64 0, i64 0, i32 4, null, null, i32 0, null} ; [ DW_TAG_structure_type ]
!213 = metadata !{i32 458798, i32 0, metadata !20, metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EEixEi", metadata !21, i32 1934, metadata !176, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!214 = metadata !{i32 458798, i32 0, metadata !20, metadata !"bit", metadata !"bit", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EE3bitEi", metadata !21, i32 1948, metadata !210, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!215 = metadata !{i32 458798, i32 0, metadata !20, metadata !"bit", metadata !"bit", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE3bitEi", metadata !21, i32 1962, metadata !176, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!216 = metadata !{i32 458798, i32 0, metadata !20, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EE10and_reduceEv", metadata !21, i32 2142, metadata !217, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!217 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !218, i32 0, null} ; [ DW_TAG_subroutine_type ]
!218 = metadata !{metadata !40, metadata !36}
!219 = metadata !{i32 458798, i32 0, metadata !20, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EE11nand_reduceEv", metadata !21, i32 2145, metadata !217, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!220 = metadata !{i32 458798, i32 0, metadata !20, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EE9or_reduceEv", metadata !21, i32 2148, metadata !217, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!221 = metadata !{i32 458798, i32 0, metadata !20, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EE10nor_reduceEv", metadata !21, i32 2151, metadata !217, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!222 = metadata !{i32 458798, i32 0, metadata !20, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EE10xor_reduceEv", metadata !21, i32 2154, metadata !217, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!223 = metadata !{i32 458798, i32 0, metadata !20, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZN11ap_int_baseILi12ELb0ELb1EE11xnor_reduceEv", metadata !21, i32 2157, metadata !217, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!224 = metadata !{i32 458798, i32 0, metadata !20, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE10and_reduceEv", metadata !21, i32 2161, metadata !140, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!225 = metadata !{i32 458798, i32 0, metadata !20, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE11nand_reduceEv", metadata !21, i32 2164, metadata !140, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!226 = metadata !{i32 458798, i32 0, metadata !20, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE9or_reduceEv", metadata !21, i32 2167, metadata !140, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!227 = metadata !{i32 458798, i32 0, metadata !20, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE10nor_reduceEv", metadata !21, i32 2170, metadata !140, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!228 = metadata !{i32 458798, i32 0, metadata !20, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE10xor_reduceEv", metadata !21, i32 2173, metadata !140, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!229 = metadata !{i32 458798, i32 0, metadata !20, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE11xnor_reduceEv", metadata !21, i32 2176, metadata !140, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!230 = metadata !{i32 458798, i32 0, metadata !20, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE9to_stringEPci8BaseModeb", metadata !21, i32 2183, metadata !231, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!231 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !232, i32 0, null} ; [ DW_TAG_subroutine_type ]
!232 = metadata !{null, metadata !138, metadata !233, metadata !60, metadata !234, metadata !40}
!233 = metadata !{i32 458767, metadata !3, metadata !"", metadata !3, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !94} ; [ DW_TAG_pointer_type ]
!234 = metadata !{i32 458756, metadata !3, metadata !"BaseMode", metadata !21, i32 551, i64 32, i64 32, i64 0, i32 0, null, metadata !235, i32 0, null} ; [ DW_TAG_enumeration_type ]
!235 = metadata !{metadata !236, metadata !237, metadata !238, metadata !239}
!236 = metadata !{i32 458792, metadata !"SC_BIN", i64 2} ; [ DW_TAG_enumerator ]
!237 = metadata !{i32 458792, metadata !"SC_OCT", i64 8} ; [ DW_TAG_enumerator ]
!238 = metadata !{i32 458792, metadata !"SC_DEC", i64 10} ; [ DW_TAG_enumerator ]
!239 = metadata !{i32 458792, metadata !"SC_HEX", i64 16} ; [ DW_TAG_enumerator ]
!240 = metadata !{i32 458798, i32 0, metadata !20, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE9to_stringE8BaseModeb", metadata !21, i32 2210, metadata !241, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!241 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !242, i32 0, null} ; [ DW_TAG_subroutine_type ]
!242 = metadata !{metadata !233, metadata !138, metadata !234, metadata !40}
!243 = metadata !{i32 458798, i32 0, metadata !20, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi12ELb0ELb1EE9to_stringEab", metadata !21, i32 2214, metadata !244, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!244 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !245, i32 0, null} ; [ DW_TAG_subroutine_type ]
!245 = metadata !{metadata !233, metadata !138, metadata !44, metadata !40}
!246 = metadata !{i32 458798, i32 0, metadata !16, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !17, i32 137, metadata !247, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!247 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !248, i32 0, null} ; [ DW_TAG_subroutine_type ]
!248 = metadata !{null, metadata !249}
!249 = metadata !{i32 458767, metadata !3, metadata !"", metadata !3, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !16} ; [ DW_TAG_pointer_type ]
!250 = metadata !{i32 458798, i32 0, metadata !16, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !17, i32 199, metadata !251, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!251 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !252, i32 0, null} ; [ DW_TAG_subroutine_type ]
!252 = metadata !{null, metadata !249, metadata !40}
!253 = metadata !{i32 458798, i32 0, metadata !16, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !17, i32 200, metadata !254, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!254 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !255, i32 0, null} ; [ DW_TAG_subroutine_type ]
!255 = metadata !{null, metadata !249, metadata !44}
!256 = metadata !{i32 458798, i32 0, metadata !16, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !17, i32 201, metadata !257, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!257 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !258, i32 0, null} ; [ DW_TAG_subroutine_type ]
!258 = metadata !{null, metadata !249, metadata !48}
!259 = metadata !{i32 458798, i32 0, metadata !16, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !17, i32 202, metadata !260, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!260 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !261, i32 0, null} ; [ DW_TAG_subroutine_type ]
!261 = metadata !{null, metadata !249, metadata !52}
!262 = metadata !{i32 458798, i32 0, metadata !16, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !17, i32 203, metadata !263, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!263 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !264, i32 0, null} ; [ DW_TAG_subroutine_type ]
!264 = metadata !{null, metadata !249, metadata !56}
!265 = metadata !{i32 458798, i32 0, metadata !16, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !17, i32 204, metadata !266, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!266 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !267, i32 0, null} ; [ DW_TAG_subroutine_type ]
!267 = metadata !{null, metadata !249, metadata !60}
!268 = metadata !{i32 458798, i32 0, metadata !16, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !17, i32 205, metadata !269, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!269 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !270, i32 0, null} ; [ DW_TAG_subroutine_type ]
!270 = metadata !{null, metadata !249, metadata !64}
!271 = metadata !{i32 458798, i32 0, metadata !16, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !17, i32 206, metadata !272, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!272 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !273, i32 0, null} ; [ DW_TAG_subroutine_type ]
!273 = metadata !{null, metadata !249, metadata !68}
!274 = metadata !{i32 458798, i32 0, metadata !16, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !17, i32 207, metadata !275, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!275 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !276, i32 0, null} ; [ DW_TAG_subroutine_type ]
!276 = metadata !{null, metadata !249, metadata !72}
!277 = metadata !{i32 458798, i32 0, metadata !16, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !17, i32 208, metadata !278, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!278 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !279, i32 0, null} ; [ DW_TAG_subroutine_type ]
!279 = metadata !{null, metadata !249, metadata !80}
!280 = metadata !{i32 458798, i32 0, metadata !16, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !17, i32 209, metadata !281, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!281 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !282, i32 0, null} ; [ DW_TAG_subroutine_type ]
!282 = metadata !{null, metadata !249, metadata !76}
!283 = metadata !{i32 458798, i32 0, metadata !16, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !17, i32 210, metadata !284, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!284 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !285, i32 0, null} ; [ DW_TAG_subroutine_type ]
!285 = metadata !{null, metadata !249, metadata !84}
!286 = metadata !{i32 458798, i32 0, metadata !16, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !17, i32 211, metadata !287, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!287 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !288, i32 0, null} ; [ DW_TAG_subroutine_type ]
!288 = metadata !{null, metadata !249, metadata !88}
!289 = metadata !{i32 458798, i32 0, metadata !16, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !17, i32 213, metadata !290, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!290 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !291, i32 0, null} ; [ DW_TAG_subroutine_type ]
!291 = metadata !{null, metadata !249, metadata !92}
!292 = metadata !{i32 458798, i32 0, metadata !16, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !17, i32 214, metadata !293, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!293 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !294, i32 0, null} ; [ DW_TAG_subroutine_type ]
!294 = metadata !{null, metadata !249, metadata !92, metadata !44}
!295 = metadata !{i32 458798, i32 0, metadata !16, metadata !"operator=", metadata !"operator=", metadata !"_ZNV7ap_uintILi12EEaSERKS0_", metadata !17, i32 217, metadata !296, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!296 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !297, i32 0, null} ; [ DW_TAG_subroutine_type ]
!297 = metadata !{null, metadata !298, metadata !300}
!298 = metadata !{i32 458767, metadata !3, metadata !"", metadata !3, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !299} ; [ DW_TAG_pointer_type ]
!299 = metadata !{i32 458805, metadata !3, metadata !"", metadata !3, i32 0, i64 16, i64 16, i64 0, i32 0, metadata !16} ; [ DW_TAG_volatile_type ]
!300 = metadata !{i32 458768, metadata !3, metadata !"", metadata !3, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !301} ; [ DW_TAG_reference_type ]
!301 = metadata !{i32 458790, metadata !3, metadata !"", metadata !3, i32 0, i64 16, i64 16, i64 0, i32 0, metadata !16} ; [ DW_TAG_const_type ]
!302 = metadata !{i32 458798, i32 0, metadata !16, metadata !"operator=", metadata !"operator=", metadata !"_ZNV7ap_uintILi12EEaSERVKS0_", metadata !17, i32 221, metadata !303, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!303 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !304, i32 0, null} ; [ DW_TAG_subroutine_type ]
!304 = metadata !{null, metadata !298, metadata !305}
!305 = metadata !{i32 458768, metadata !3, metadata !"", metadata !3, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !306} ; [ DW_TAG_reference_type ]
!306 = metadata !{i32 458790, metadata !3, metadata !"", metadata !3, i32 0, i64 16, i64 16, i64 0, i32 0, metadata !299} ; [ DW_TAG_const_type ]
!307 = metadata !{i32 458798, i32 0, metadata !16, metadata !"operator=", metadata !"operator=", metadata !"_ZN7ap_uintILi12EEaSERVKS0_", metadata !17, i32 225, metadata !308, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!308 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !309, i32 0, null} ; [ DW_TAG_subroutine_type ]
!309 = metadata !{metadata !310, metadata !249, metadata !305}
!310 = metadata !{i32 458768, metadata !3, metadata !"ap_uint<12>", metadata !3, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_reference_type ]
!311 = metadata !{i32 458798, i32 0, metadata !16, metadata !"operator=", metadata !"operator=", metadata !"_ZN7ap_uintILi12EEaSERKS0_", metadata !17, i32 230, metadata !312, i1 false, i1 true, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!312 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !313, i32 0, null} ; [ DW_TAG_subroutine_type ]
!313 = metadata !{metadata !310, metadata !249, metadata !300}
!314 = metadata !{i32 458765, metadata !10, metadata !"cols", metadata !13, i32 465, i64 16, i64 16, i64 16, i32 0, metadata !16} ; [ DW_TAG_member ]
!315 = metadata !{i32 458765, metadata !10, metadata !"data_stream", metadata !13, i32 467, i64 8, i64 8, i64 32, i32 0, metadata !316} ; [ DW_TAG_member ]
!316 = metadata !{i32 458753, metadata !3, metadata !"", metadata !3, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !317, metadata !361, i32 0, null} ; [ DW_TAG_array_type ]
!317 = metadata !{i32 458771, metadata !11, metadata !"stream<unsigned char>", metadata !12, i32 34, i64 8, i64 8, i64 0, i32 0, null, metadata !318, i32 0, null} ; [ DW_TAG_structure_type ]
!318 = metadata !{metadata !319, metadata !320, metadata !324, metadata !327, metadata !332, metadata !336, metadata !340, metadata !345, metadata !349, metadata !350, metadata !351, metadata !354, metadata !357, metadata !358}
!319 = metadata !{i32 458765, metadata !317, metadata !"V", metadata !12, i32 111, i64 8, i64 8, i64 0, i32 1, metadata !48} ; [ DW_TAG_member ]
!320 = metadata !{i32 458798, i32 0, metadata !317, metadata !"stream", metadata !"stream", metadata !"", metadata !12, i32 37, metadata !321, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!321 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !322, i32 0, null} ; [ DW_TAG_subroutine_type ]
!322 = metadata !{null, metadata !323}
!323 = metadata !{i32 458767, metadata !3, metadata !"", metadata !3, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !317} ; [ DW_TAG_pointer_type ]
!324 = metadata !{i32 458798, i32 0, metadata !317, metadata !"stream", metadata !"stream", metadata !"", metadata !12, i32 40, metadata !325, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!325 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !326, i32 0, null} ; [ DW_TAG_subroutine_type ]
!326 = metadata !{null, metadata !323, metadata !92}
!327 = metadata !{i32 458798, i32 0, metadata !317, metadata !"stream", metadata !"stream", metadata !"", metadata !12, i32 45, metadata !328, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!328 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !329, i32 0, null} ; [ DW_TAG_subroutine_type ]
!329 = metadata !{null, metadata !323, metadata !330}
!330 = metadata !{i32 458768, metadata !3, metadata !"", metadata !3, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !331} ; [ DW_TAG_reference_type ]
!331 = metadata !{i32 458790, metadata !11, metadata !"", metadata !3, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !317} ; [ DW_TAG_const_type ]
!332 = metadata !{i32 458798, i32 0, metadata !317, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIhEaSERKS1_", metadata !12, i32 48, metadata !333, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!333 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !334, i32 0, null} ; [ DW_TAG_subroutine_type ]
!334 = metadata !{metadata !335, metadata !323, metadata !330}
!335 = metadata !{i32 458768, metadata !3, metadata !"hlsstream<unsigned char>", metadata !3, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !317} ; [ DW_TAG_reference_type ]
!336 = metadata !{i32 458798, i32 0, metadata !317, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIhErsERh", metadata !12, i32 55, metadata !337, i1 false, i1 true, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!337 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !338, i32 0, null} ; [ DW_TAG_subroutine_type ]
!338 = metadata !{null, metadata !323, metadata !339}
!339 = metadata !{i32 458768, metadata !3, metadata !"unsigned char", metadata !3, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !48} ; [ DW_TAG_reference_type ]
!340 = metadata !{i32 458798, i32 0, metadata !317, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIhElsERKh", metadata !12, i32 59, metadata !341, i1 false, i1 true, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!341 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !342, i32 0, null} ; [ DW_TAG_subroutine_type ]
!342 = metadata !{null, metadata !323, metadata !343}
!343 = metadata !{i32 458768, metadata !3, metadata !"", metadata !3, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !344} ; [ DW_TAG_reference_type ]
!344 = metadata !{i32 458790, metadata !3, metadata !"", metadata !3, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !48} ; [ DW_TAG_const_type ]
!345 = metadata !{i32 458798, i32 0, metadata !317, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIhE5emptyEv", metadata !12, i32 66, metadata !346, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!346 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !347, i32 0, null} ; [ DW_TAG_subroutine_type ]
!347 = metadata !{metadata !40, metadata !348}
!348 = metadata !{i32 458767, metadata !3, metadata !"", metadata !3, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !331} ; [ DW_TAG_pointer_type ]
!349 = metadata !{i32 458798, i32 0, metadata !317, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIhE4fullEv", metadata !12, i32 71, metadata !346, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!350 = metadata !{i32 458798, i32 0, metadata !317, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIhE4readERh", metadata !12, i32 77, metadata !337, i1 false, i1 true, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!351 = metadata !{i32 458798, i32 0, metadata !317, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIhE4readEv", metadata !12, i32 83, metadata !352, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!352 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !353, i32 0, null} ; [ DW_TAG_subroutine_type ]
!353 = metadata !{metadata !48, metadata !323}
!354 = metadata !{i32 458798, i32 0, metadata !317, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIhE7read_nbERh", metadata !12, i32 90, metadata !355, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!355 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !356, i32 0, null} ; [ DW_TAG_subroutine_type ]
!356 = metadata !{metadata !40, metadata !323, metadata !339}
!357 = metadata !{i32 458798, i32 0, metadata !317, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIhE5writeERKh", metadata !12, i32 98, metadata !341, i1 false, i1 true, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!358 = metadata !{i32 458798, i32 0, metadata !317, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIhE8write_nbERKh", metadata !12, i32 104, metadata !359, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!359 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !360, i32 0, null} ; [ DW_TAG_subroutine_type ]
!360 = metadata !{metadata !40, metadata !323, metadata !343}
!361 = metadata !{metadata !362}
!362 = metadata !{i32 458785, i64 0, i64 0}       ; [ DW_TAG_subrange_type ]
!363 = metadata !{i32 458798, i32 0, metadata !10, metadata !"Mat", metadata !"Mat", metadata !"", metadata !13, i32 472, metadata !364, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!364 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !365, i32 0, null} ; [ DW_TAG_subroutine_type ]
!365 = metadata !{null, metadata !366}
!366 = metadata !{i32 458767, metadata !3, metadata !"", metadata !3, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !10} ; [ DW_TAG_pointer_type ]
!367 = metadata !{i32 458798, i32 0, metadata !10, metadata !"Mat", metadata !"Mat", metadata !"", metadata !13, i32 477, metadata !368, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!368 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !369, i32 0, null} ; [ DW_TAG_subroutine_type ]
!369 = metadata !{null, metadata !366, metadata !60, metadata !60}
!370 = metadata !{i32 458798, i32 0, metadata !10, metadata !"Mat", metadata !"Mat", metadata !"", metadata !13, i32 482, metadata !371, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!371 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !372, i32 0, null} ; [ DW_TAG_subroutine_type ]
!372 = metadata !{null, metadata !366, metadata !373}
!373 = metadata !{i32 458771, metadata !11, metadata !"Size_<int>", metadata !13, i32 113, i64 64, i64 32, i64 0, i32 0, null, metadata !374, i32 0, null} ; [ DW_TAG_structure_type ]
!374 = metadata !{metadata !375, metadata !376, metadata !377, metadata !381, metadata !384, metadata !389, metadata !411, metadata !414}
!375 = metadata !{i32 458765, metadata !373, metadata !"width", metadata !13, i32 122, i64 32, i64 32, i64 0, i32 0, metadata !60} ; [ DW_TAG_member ]
!376 = metadata !{i32 458765, metadata !373, metadata !"height", metadata !13, i32 122, i64 32, i64 32, i64 32, i32 0, metadata !60} ; [ DW_TAG_member ]
!377 = metadata !{i32 458798, i32 0, metadata !373, metadata !"Size_", metadata !"Size_", metadata !"", metadata !13, i32 126, metadata !378, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!378 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !379, i32 0, null} ; [ DW_TAG_subroutine_type ]
!379 = metadata !{null, metadata !380}
!380 = metadata !{i32 458767, metadata !3, metadata !"", metadata !3, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !373} ; [ DW_TAG_pointer_type ]
!381 = metadata !{i32 458798, i32 0, metadata !373, metadata !"Size_", metadata !"Size_", metadata !"", metadata !13, i32 127, metadata !382, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!382 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !383, i32 0, null} ; [ DW_TAG_subroutine_type ]
!383 = metadata !{null, metadata !380, metadata !60, metadata !60}
!384 = metadata !{i32 458798, i32 0, metadata !373, metadata !"Size_", metadata !"Size_", metadata !"", metadata !13, i32 128, metadata !385, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!385 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !386, i32 0, null} ; [ DW_TAG_subroutine_type ]
!386 = metadata !{null, metadata !380, metadata !387}
!387 = metadata !{i32 458768, metadata !3, metadata !"", metadata !3, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !388} ; [ DW_TAG_reference_type ]
!388 = metadata !{i32 458790, metadata !11, metadata !"", metadata !3, i32 0, i64 64, i64 32, i64 0, i32 0, metadata !373} ; [ DW_TAG_const_type ]
!389 = metadata !{i32 458798, i32 0, metadata !373, metadata !"Size_", metadata !"Size_", metadata !"", metadata !13, i32 129, metadata !390, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!390 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !391, i32 0, null} ; [ DW_TAG_subroutine_type ]
!391 = metadata !{null, metadata !380, metadata !392}
!392 = metadata !{i32 458768, metadata !3, metadata !"", metadata !3, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !393} ; [ DW_TAG_reference_type ]
!393 = metadata !{i32 458790, metadata !11, metadata !"", metadata !3, i32 0, i64 64, i64 32, i64 0, i32 0, metadata !394} ; [ DW_TAG_const_type ]
!394 = metadata !{i32 458771, metadata !11, metadata !"Point_<int>", metadata !13, i32 92, i64 64, i64 32, i64 0, i32 0, null, metadata !395, i32 0, null} ; [ DW_TAG_structure_type ]
!395 = metadata !{metadata !396, metadata !397, metadata !398, metadata !402, metadata !405, metadata !408}
!396 = metadata !{i32 458765, metadata !394, metadata !"x", metadata !13, i32 99, i64 32, i64 32, i64 0, i32 0, metadata !60} ; [ DW_TAG_member ]
!397 = metadata !{i32 458765, metadata !394, metadata !"y", metadata !13, i32 99, i64 32, i64 32, i64 32, i32 0, metadata !60} ; [ DW_TAG_member ]
!398 = metadata !{i32 458798, i32 0, metadata !394, metadata !"Point_", metadata !"Point_", metadata !"", metadata !13, i32 103, metadata !399, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!399 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !400, i32 0, null} ; [ DW_TAG_subroutine_type ]
!400 = metadata !{null, metadata !401}
!401 = metadata !{i32 458767, metadata !3, metadata !"", metadata !3, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !394} ; [ DW_TAG_pointer_type ]
!402 = metadata !{i32 458798, i32 0, metadata !394, metadata !"Point_", metadata !"Point_", metadata !"", metadata !13, i32 104, metadata !403, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!403 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !404, i32 0, null} ; [ DW_TAG_subroutine_type ]
!404 = metadata !{null, metadata !401, metadata !60, metadata !60}
!405 = metadata !{i32 458798, i32 0, metadata !394, metadata !"Point_", metadata !"Point_", metadata !"", metadata !13, i32 105, metadata !406, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!406 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !407, i32 0, null} ; [ DW_TAG_subroutine_type ]
!407 = metadata !{null, metadata !401, metadata !392}
!408 = metadata !{i32 458798, i32 0, metadata !394, metadata !"~Point_", metadata !"~Point_", metadata !"", metadata !13, i32 106, metadata !409, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!409 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !410, i32 0, null} ; [ DW_TAG_subroutine_type ]
!410 = metadata !{null, metadata !401, metadata !60}
!411 = metadata !{i32 458798, i32 0, metadata !373, metadata !"area", metadata !"area", metadata !"_ZN3hls5Size_IiE4areaEv", metadata !13, i32 130, metadata !412, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!412 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !413, i32 0, null} ; [ DW_TAG_subroutine_type ]
!413 = metadata !{metadata !60, metadata !380}
!414 = metadata !{i32 458798, i32 0, metadata !373, metadata !"~Size_", metadata !"~Size_", metadata !"", metadata !13, i32 131, metadata !415, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!415 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !416, i32 0, null} ; [ DW_TAG_subroutine_type ]
!416 = metadata !{null, metadata !380, metadata !60}
!417 = metadata !{i32 458798, i32 0, metadata !10, metadata !"init", metadata !"init", metadata !"_ZN3hls3MatILi1080ELi1920ELi0EE4initEii", metadata !13, i32 487, metadata !368, i1 false, i1 true, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!418 = metadata !{i32 458798, i32 0, metadata !10, metadata !"assignto", metadata !"assignto", metadata !"_ZN3hls3MatILi1080ELi1920ELi0EE8assigntoERS1_", metadata !13, i32 494, metadata !419, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!419 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !420, i32 0, null} ; [ DW_TAG_subroutine_type ]
!420 = metadata !{null, metadata !366, metadata !421}
!421 = metadata !{i32 458768, metadata !3, metadata !"hlsMat<1080,1920,0>", metadata !3, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_reference_type ]
!422 = metadata !{i32 458798, i32 0, metadata !10, metadata !"read", metadata !"read", metadata !"_ZN3hls3MatILi1080ELi1920ELi0EE4readEv", metadata !13, i32 501, metadata !423, i1 false, i1 true, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!423 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !424, i32 0, null} ; [ DW_TAG_subroutine_type ]
!424 = metadata !{metadata !425, metadata !366}
!425 = metadata !{i32 458771, metadata !11, metadata !"Scalar<1,unsigned char>", metadata !13, i32 175, i64 8, i64 8, i64 0, i32 0, null, metadata !426, i32 0, null} ; [ DW_TAG_structure_type ]
!426 = metadata !{metadata !427, metadata !429, metadata !433, metadata !436, metadata !439, metadata !442}
!427 = metadata !{i32 458765, metadata !425, metadata !"val", metadata !13, i32 201, i64 8, i64 8, i64 0, i32 0, metadata !428} ; [ DW_TAG_member ]
!428 = metadata !{i32 458753, metadata !3, metadata !"", metadata !3, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !48, metadata !361, i32 0, null} ; [ DW_TAG_array_type ]
!429 = metadata !{i32 458798, i32 0, metadata !425, metadata !"Scalar", metadata !"Scalar", metadata !"", metadata !13, i32 177, metadata !430, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!430 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !431, i32 0, null} ; [ DW_TAG_subroutine_type ]
!431 = metadata !{null, metadata !432}
!432 = metadata !{i32 458767, metadata !3, metadata !"", metadata !3, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !425} ; [ DW_TAG_pointer_type ]
!433 = metadata !{i32 458798, i32 0, metadata !425, metadata !"Scalar", metadata !"Scalar", metadata !"", metadata !13, i32 181, metadata !434, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!434 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !435, i32 0, null} ; [ DW_TAG_subroutine_type ]
!435 = metadata !{null, metadata !432, metadata !48}
!436 = metadata !{i32 458798, i32 0, metadata !425, metadata !"Scalar", metadata !"Scalar", metadata !"", metadata !13, i32 186, metadata !437, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!437 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !438, i32 0, null} ; [ DW_TAG_subroutine_type ]
!438 = metadata !{null, metadata !432, metadata !48, metadata !48}
!439 = metadata !{i32 458798, i32 0, metadata !425, metadata !"Scalar", metadata !"Scalar", metadata !"", metadata !13, i32 191, metadata !440, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!440 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !441, i32 0, null} ; [ DW_TAG_subroutine_type ]
!441 = metadata !{null, metadata !432, metadata !48, metadata !48, metadata !48}
!442 = metadata !{i32 458798, i32 0, metadata !425, metadata !"Scalar", metadata !"Scalar", metadata !"", metadata !13, i32 196, metadata !443, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!443 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !444, i32 0, null} ; [ DW_TAG_subroutine_type ]
!444 = metadata !{null, metadata !432, metadata !48, metadata !48, metadata !48, metadata !48}
!445 = metadata !{i32 458798, i32 0, metadata !10, metadata !"read", metadata !"read", metadata !"_ZN3hls3MatILi1080ELi1920ELi0EE4readERNS_6ScalarILi1EhEE", metadata !13, i32 513, metadata !446, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!446 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !447, i32 0, null} ; [ DW_TAG_subroutine_type ]
!447 = metadata !{null, metadata !366, metadata !448}
!448 = metadata !{i32 458768, metadata !3, metadata !"Scalar<1,unsigned char>", metadata !3, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !425} ; [ DW_TAG_reference_type ]
!449 = metadata !{i32 458798, i32 0, metadata !10, metadata !"write", metadata !"write", metadata !"_ZN3hls3MatILi1080ELi1920ELi0EE5writeENS_6ScalarILi1EhEE", metadata !13, i32 519, metadata !450, i1 false, i1 true, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!450 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !451, i32 0, null} ; [ DW_TAG_subroutine_type ]
!451 = metadata !{null, metadata !366, metadata !425}
!452 = metadata !{i32 458798, i32 0, metadata !10, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls3MatILi1080ELi1920ELi0EErsERNS_6ScalarILi1EhEE", metadata !13, i32 529, metadata !446, i1 false, i1 true, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!453 = metadata !{i32 458798, i32 0, metadata !10, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls3MatILi1080ELi1920ELi0EElsENS_6ScalarILi1EhEE", metadata !13, i32 535, metadata !450, i1 false, i1 true, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!454 = metadata !{i32 458798, i32 0, metadata !10, metadata !"empty", metadata !"empty", metadata !"_ZN3hls3MatILi1080ELi1920ELi0EE5emptyEv", metadata !13, i32 541, metadata !455, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!455 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !456, i32 0, null} ; [ DW_TAG_subroutine_type ]
!456 = metadata !{metadata !40, metadata !366}
!457 = metadata !{i32 458798, i32 0, metadata !10, metadata !"type", metadata !"type", metadata !"_ZNK3hls3MatILi1080ELi1920ELi0EE4typeEv", metadata !13, i32 553, metadata !458, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!458 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !459, i32 0, null} ; [ DW_TAG_subroutine_type ]
!459 = metadata !{metadata !460, metadata !461}
!460 = metadata !{i32 458790, metadata !3, metadata !"", metadata !3, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !60} ; [ DW_TAG_const_type ]
!461 = metadata !{i32 458767, metadata !3, metadata !"", metadata !3, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !462} ; [ DW_TAG_pointer_type ]
!462 = metadata !{i32 458790, metadata !11, metadata !"", metadata !3, i32 0, i64 48, i64 16, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ]
!463 = metadata !{i32 458798, i32 0, metadata !10, metadata !"depth", metadata !"depth", metadata !"_ZNK3hls3MatILi1080ELi1920ELi0EE5depthEv", metadata !13, i32 559, metadata !458, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!464 = metadata !{i32 458798, i32 0, metadata !10, metadata !"channels", metadata !"channels", metadata !"_ZNK3hls3MatILi1080ELi1920ELi0EE8channelsEv", metadata !13, i32 564, metadata !458, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!465 = metadata !{i32 458768, metadata !3, metadata !"stream<ap_uint<2> >", metadata !3, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !466} ; [ DW_TAG_reference_type ]
!466 = metadata !{i32 458771, metadata !11, metadata !"stream<ap_uint<2> >", metadata !12, i32 34, i64 8, i64 8, i64 0, i32 0, null, metadata !467, i32 0, null} ; [ DW_TAG_structure_type ]
!467 = metadata !{metadata !468, metadata !738, metadata !742, metadata !745, metadata !750, metadata !754, metadata !757, metadata !760, metadata !764, metadata !765, metadata !766, metadata !769, metadata !772, metadata !773}
!468 = metadata !{i32 458765, metadata !466, metadata !"V", metadata !12, i32 111, i64 8, i64 8, i64 0, i32 1, metadata !469} ; [ DW_TAG_member ]
!469 = metadata !{i32 458771, metadata !3, metadata !"ap_uint<2>", metadata !17, i32 134, i64 8, i64 8, i64 0, i32 0, null, metadata !470, i32 0, null} ; [ DW_TAG_structure_type ]
!470 = metadata !{metadata !471, metadata !670, metadata !674, metadata !677, metadata !680, metadata !683, metadata !686, metadata !689, metadata !692, metadata !695, metadata !698, metadata !701, metadata !704, metadata !707, metadata !710, metadata !713, metadata !716, metadata !719, metadata !726, metadata !731, metadata !735}
!471 = metadata !{i32 458780, metadata !3, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !472} ; [ DW_TAG_inheritance ]
!472 = metadata !{i32 458771, metadata !3, metadata !"ap_int_base<2,false,true>", metadata !21, i32 599, i64 8, i64 8, i64 0, i32 0, null, metadata !473, i32 0, null} ; [ DW_TAG_structure_type ]
!473 = metadata !{metadata !474, metadata !483, metadata !487, metadata !490, metadata !493, metadata !496, metadata !499, metadata !502, metadata !505, metadata !508, metadata !511, metadata !514, metadata !517, metadata !520, metadata !523, metadata !526, metadata !529, metadata !532, metadata !537, metadata !542, metadata !547, metadata !548, metadata !552, metadata !555, metadata !558, metadata !561, metadata !564, metadata !567, metadata !571, metadata !574, metadata !577, metadata !580, metadata !583, metadata !586, metadata !589, metadata !590, metadata !593, metadata !594, metadata !598, metadata !601, metadata !602, metadata !603, metadata !604, metadata !605, metadata !606, metadata !609, metadata !610, metadata !613, metadata !614, metadata !615, metadata !616, metadata !617, metadata !618, metadata !621, metadata !622, metadata !623, metadata !626, metadata !627, metadata !630, metadata !631, metadata !635, metadata !636, metadata !639, metadata !640, metadata !644, metadata !645, metadata !646, metadata !647, metadata !650, metadata !651, metadata !652, metadata !653, metadata !654, metadata !655, metadata !656, metadata !657, metadata !658, metadata !659, metadata !660, metadata !661, metadata !664, metadata !667}
!474 = metadata !{i32 458780, metadata !3, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !475} ; [ DW_TAG_inheritance ]
!475 = metadata !{i32 458771, metadata !3, metadata !"ssdm_int<2,false>", metadata !25, i32 4, i64 8, i64 8, i64 0, i32 0, null, metadata !476, i32 0, null} ; [ DW_TAG_structure_type ]
!476 = metadata !{metadata !477, metadata !479}
!477 = metadata !{i32 458765, metadata !475, metadata !"V", metadata !25, i32 4, i64 8, i64 8, i64 0, i32 0, metadata !478} ; [ DW_TAG_member ]
!478 = metadata !{i32 458788, metadata !3, metadata !"", metadata !3, i32 0, i64 8, i64 8, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!479 = metadata !{i32 458798, i32 0, metadata !475, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !25, i32 4, metadata !480, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!480 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !481, i32 0, null} ; [ DW_TAG_subroutine_type ]
!481 = metadata !{null, metadata !482}
!482 = metadata !{i32 458767, metadata !3, metadata !"", metadata !3, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !475} ; [ DW_TAG_pointer_type ]
!483 = metadata !{i32 458798, i32 0, metadata !472, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !21, i32 1333, metadata !484, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!484 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !485, i32 0, null} ; [ DW_TAG_subroutine_type ]
!485 = metadata !{null, metadata !486}
!486 = metadata !{i32 458767, metadata !3, metadata !"", metadata !3, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !472} ; [ DW_TAG_pointer_type ]
!487 = metadata !{i32 458798, i32 0, metadata !472, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !21, i32 1355, metadata !488, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!488 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !489, i32 0, null} ; [ DW_TAG_subroutine_type ]
!489 = metadata !{null, metadata !486, metadata !40}
!490 = metadata !{i32 458798, i32 0, metadata !472, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !21, i32 1356, metadata !491, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!491 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !492, i32 0, null} ; [ DW_TAG_subroutine_type ]
!492 = metadata !{null, metadata !486, metadata !44}
!493 = metadata !{i32 458798, i32 0, metadata !472, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !21, i32 1357, metadata !494, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!494 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !495, i32 0, null} ; [ DW_TAG_subroutine_type ]
!495 = metadata !{null, metadata !486, metadata !48}
!496 = metadata !{i32 458798, i32 0, metadata !472, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !21, i32 1358, metadata !497, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!497 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !498, i32 0, null} ; [ DW_TAG_subroutine_type ]
!498 = metadata !{null, metadata !486, metadata !52}
!499 = metadata !{i32 458798, i32 0, metadata !472, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !21, i32 1359, metadata !500, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!500 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !501, i32 0, null} ; [ DW_TAG_subroutine_type ]
!501 = metadata !{null, metadata !486, metadata !56}
!502 = metadata !{i32 458798, i32 0, metadata !472, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !21, i32 1360, metadata !503, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!503 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !504, i32 0, null} ; [ DW_TAG_subroutine_type ]
!504 = metadata !{null, metadata !486, metadata !60}
!505 = metadata !{i32 458798, i32 0, metadata !472, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !21, i32 1361, metadata !506, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!506 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !507, i32 0, null} ; [ DW_TAG_subroutine_type ]
!507 = metadata !{null, metadata !486, metadata !64}
!508 = metadata !{i32 458798, i32 0, metadata !472, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !21, i32 1362, metadata !509, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!509 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !510, i32 0, null} ; [ DW_TAG_subroutine_type ]
!510 = metadata !{null, metadata !486, metadata !68}
!511 = metadata !{i32 458798, i32 0, metadata !472, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !21, i32 1363, metadata !512, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!512 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !513, i32 0, null} ; [ DW_TAG_subroutine_type ]
!513 = metadata !{null, metadata !486, metadata !72}
!514 = metadata !{i32 458798, i32 0, metadata !472, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !21, i32 1364, metadata !515, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!515 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !516, i32 0, null} ; [ DW_TAG_subroutine_type ]
!516 = metadata !{null, metadata !486, metadata !76}
!517 = metadata !{i32 458798, i32 0, metadata !472, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !21, i32 1365, metadata !518, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!518 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !519, i32 0, null} ; [ DW_TAG_subroutine_type ]
!519 = metadata !{null, metadata !486, metadata !80}
!520 = metadata !{i32 458798, i32 0, metadata !472, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !21, i32 1366, metadata !521, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!521 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !522, i32 0, null} ; [ DW_TAG_subroutine_type ]
!522 = metadata !{null, metadata !486, metadata !84}
!523 = metadata !{i32 458798, i32 0, metadata !472, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !21, i32 1367, metadata !524, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!524 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !525, i32 0, null} ; [ DW_TAG_subroutine_type ]
!525 = metadata !{null, metadata !486, metadata !88}
!526 = metadata !{i32 458798, i32 0, metadata !472, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !21, i32 1394, metadata !527, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!527 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !528, i32 0, null} ; [ DW_TAG_subroutine_type ]
!528 = metadata !{null, metadata !486, metadata !92}
!529 = metadata !{i32 458798, i32 0, metadata !472, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !21, i32 1401, metadata !530, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!530 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !531, i32 0, null} ; [ DW_TAG_subroutine_type ]
!531 = metadata !{null, metadata !486, metadata !92, metadata !44}
!532 = metadata !{i32 458798, i32 0, metadata !472, metadata !"read", metadata !"read", metadata !"_ZNV11ap_int_baseILi2ELb0ELb1EE4readEv", metadata !21, i32 1422, metadata !533, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!533 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !534, i32 0, null} ; [ DW_TAG_subroutine_type ]
!534 = metadata !{metadata !472, metadata !535}
!535 = metadata !{i32 458767, metadata !3, metadata !"", metadata !3, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !536} ; [ DW_TAG_pointer_type ]
!536 = metadata !{i32 458805, metadata !3, metadata !"", metadata !3, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !472} ; [ DW_TAG_volatile_type ]
!537 = metadata !{i32 458798, i32 0, metadata !472, metadata !"write", metadata !"write", metadata !"_ZNV11ap_int_baseILi2ELb0ELb1EE5writeERKS0_", metadata !21, i32 1428, metadata !538, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!538 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !539, i32 0, null} ; [ DW_TAG_subroutine_type ]
!539 = metadata !{null, metadata !535, metadata !540}
!540 = metadata !{i32 458768, metadata !3, metadata !"", metadata !3, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !541} ; [ DW_TAG_reference_type ]
!541 = metadata !{i32 458790, metadata !3, metadata !"", metadata !3, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !472} ; [ DW_TAG_const_type ]
!542 = metadata !{i32 458798, i32 0, metadata !472, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi2ELb0ELb1EEaSERVKS0_", metadata !21, i32 1440, metadata !543, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!543 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !544, i32 0, null} ; [ DW_TAG_subroutine_type ]
!544 = metadata !{null, metadata !535, metadata !545}
!545 = metadata !{i32 458768, metadata !3, metadata !"", metadata !3, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !546} ; [ DW_TAG_reference_type ]
!546 = metadata !{i32 458790, metadata !3, metadata !"", metadata !3, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !536} ; [ DW_TAG_const_type ]
!547 = metadata !{i32 458798, i32 0, metadata !472, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi2ELb0ELb1EEaSERKS0_", metadata !21, i32 1449, metadata !538, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!548 = metadata !{i32 458798, i32 0, metadata !472, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi2ELb0ELb1EEaSERVKS0_", metadata !21, i32 1472, metadata !549, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!549 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !550, i32 0, null} ; [ DW_TAG_subroutine_type ]
!550 = metadata !{metadata !551, metadata !486, metadata !545}
!551 = metadata !{i32 458768, metadata !3, metadata !"ap_int_base<2,false,true>", metadata !3, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !472} ; [ DW_TAG_reference_type ]
!552 = metadata !{i32 458798, i32 0, metadata !472, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi2ELb0ELb1EEaSERKS0_", metadata !21, i32 1477, metadata !553, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!553 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !554, i32 0, null} ; [ DW_TAG_subroutine_type ]
!554 = metadata !{metadata !551, metadata !486, metadata !540}
!555 = metadata !{i32 458798, i32 0, metadata !472, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi2ELb0ELb1EEaSEPKc", metadata !21, i32 1481, metadata !556, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!556 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !557, i32 0, null} ; [ DW_TAG_subroutine_type ]
!557 = metadata !{metadata !551, metadata !486, metadata !92}
!558 = metadata !{i32 458798, i32 0, metadata !472, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi2ELb0ELb1EE3setEPKca", metadata !21, i32 1489, metadata !559, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!559 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !560, i32 0, null} ; [ DW_TAG_subroutine_type ]
!560 = metadata !{metadata !551, metadata !486, metadata !92, metadata !44}
!561 = metadata !{i32 458798, i32 0, metadata !472, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi2ELb0ELb1EEaSEy", metadata !21, i32 1498, metadata !562, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!562 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !563, i32 0, null} ; [ DW_TAG_subroutine_type ]
!563 = metadata !{metadata !551, metadata !486, metadata !80}
!564 = metadata !{i32 458798, i32 0, metadata !472, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi2ELb0ELb1EEaSEx", metadata !21, i32 1503, metadata !565, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!565 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !566, i32 0, null} ; [ DW_TAG_subroutine_type ]
!566 = metadata !{metadata !551, metadata !486, metadata !76}
!567 = metadata !{i32 458798, i32 0, metadata !472, metadata !"operator ap_ulong", metadata !"operator ap_ulong", metadata !"_ZNK11ap_int_baseILi2ELb0ELb1EEcvyEv", metadata !21, i32 1544, metadata !568, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!568 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !569, i32 0, null} ; [ DW_TAG_subroutine_type ]
!569 = metadata !{metadata !136, metadata !570}
!570 = metadata !{i32 458767, metadata !3, metadata !"", metadata !3, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !541} ; [ DW_TAG_pointer_type ]
!571 = metadata !{i32 458798, i32 0, metadata !472, metadata !"to_bool", metadata !"to_bool", metadata !"_ZNK11ap_int_baseILi2ELb0ELb1EE7to_boolEv", metadata !21, i32 1550, metadata !572, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!572 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !573, i32 0, null} ; [ DW_TAG_subroutine_type ]
!573 = metadata !{metadata !40, metadata !570}
!574 = metadata !{i32 458798, i32 0, metadata !472, metadata !"to_int", metadata !"to_int", metadata !"_ZNK11ap_int_baseILi2ELb0ELb1EE6to_intEv", metadata !21, i32 1551, metadata !575, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!575 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !576, i32 0, null} ; [ DW_TAG_subroutine_type ]
!576 = metadata !{metadata !60, metadata !570}
!577 = metadata !{i32 458798, i32 0, metadata !472, metadata !"to_uint", metadata !"to_uint", metadata !"_ZNK11ap_int_baseILi2ELb0ELb1EE7to_uintEv", metadata !21, i32 1552, metadata !578, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!578 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !579, i32 0, null} ; [ DW_TAG_subroutine_type ]
!579 = metadata !{metadata !64, metadata !570}
!580 = metadata !{i32 458798, i32 0, metadata !472, metadata !"to_long", metadata !"to_long", metadata !"_ZNK11ap_int_baseILi2ELb0ELb1EE7to_longEv", metadata !21, i32 1553, metadata !581, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!581 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !582, i32 0, null} ; [ DW_TAG_subroutine_type ]
!582 = metadata !{metadata !68, metadata !570}
!583 = metadata !{i32 458798, i32 0, metadata !472, metadata !"to_ulong", metadata !"to_ulong", metadata !"_ZNK11ap_int_baseILi2ELb0ELb1EE8to_ulongEv", metadata !21, i32 1554, metadata !584, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!584 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !585, i32 0, null} ; [ DW_TAG_subroutine_type ]
!585 = metadata !{metadata !72, metadata !570}
!586 = metadata !{i32 458798, i32 0, metadata !472, metadata !"to_int64", metadata !"to_int64", metadata !"_ZNK11ap_int_baseILi2ELb0ELb1EE8to_int64Ev", metadata !21, i32 1555, metadata !587, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!587 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !588, i32 0, null} ; [ DW_TAG_subroutine_type ]
!588 = metadata !{metadata !157, metadata !570}
!589 = metadata !{i32 458798, i32 0, metadata !472, metadata !"to_uint64", metadata !"to_uint64", metadata !"_ZNK11ap_int_baseILi2ELb0ELb1EE9to_uint64Ev", metadata !21, i32 1556, metadata !568, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!590 = metadata !{i32 458798, i32 0, metadata !472, metadata !"to_double", metadata !"to_double", metadata !"_ZNK11ap_int_baseILi2ELb0ELb1EE9to_doubleEv", metadata !21, i32 1557, metadata !591, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!591 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !592, i32 0, null} ; [ DW_TAG_subroutine_type ]
!592 = metadata !{metadata !88, metadata !570}
!593 = metadata !{i32 458798, i32 0, metadata !472, metadata !"length", metadata !"length", metadata !"_ZNK11ap_int_baseILi2ELb0ELb1EE6lengthEv", metadata !21, i32 1570, metadata !575, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!594 = metadata !{i32 458798, i32 0, metadata !472, metadata !"length", metadata !"length", metadata !"_ZNVK11ap_int_baseILi2ELb0ELb1EE6lengthEv", metadata !21, i32 1571, metadata !595, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!595 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !596, i32 0, null} ; [ DW_TAG_subroutine_type ]
!596 = metadata !{metadata !60, metadata !597}
!597 = metadata !{i32 458767, metadata !3, metadata !"", metadata !3, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !546} ; [ DW_TAG_pointer_type ]
!598 = metadata !{i32 458798, i32 0, metadata !472, metadata !"reverse", metadata !"reverse", metadata !"_ZN11ap_int_baseILi2ELb0ELb1EE7reverseEv", metadata !21, i32 1576, metadata !599, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!599 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !600, i32 0, null} ; [ DW_TAG_subroutine_type ]
!600 = metadata !{metadata !551, metadata !486}
!601 = metadata !{i32 458798, i32 0, metadata !472, metadata !"iszero", metadata !"iszero", metadata !"_ZNK11ap_int_baseILi2ELb0ELb1EE6iszeroEv", metadata !21, i32 1582, metadata !572, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!602 = metadata !{i32 458798, i32 0, metadata !472, metadata !"is_zero", metadata !"is_zero", metadata !"_ZNK11ap_int_baseILi2ELb0ELb1EE7is_zeroEv", metadata !21, i32 1587, metadata !572, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!603 = metadata !{i32 458798, i32 0, metadata !472, metadata !"sign", metadata !"sign", metadata !"_ZNK11ap_int_baseILi2ELb0ELb1EE4signEv", metadata !21, i32 1592, metadata !572, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!604 = metadata !{i32 458798, i32 0, metadata !472, metadata !"clear", metadata !"clear", metadata !"_ZN11ap_int_baseILi2ELb0ELb1EE5clearEi", metadata !21, i32 1600, metadata !503, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!605 = metadata !{i32 458798, i32 0, metadata !472, metadata !"invert", metadata !"invert", metadata !"_ZN11ap_int_baseILi2ELb0ELb1EE6invertEi", metadata !21, i32 1606, metadata !503, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!606 = metadata !{i32 458798, i32 0, metadata !472, metadata !"test", metadata !"test", metadata !"_ZNK11ap_int_baseILi2ELb0ELb1EE4testEi", metadata !21, i32 1614, metadata !607, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!607 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !608, i32 0, null} ; [ DW_TAG_subroutine_type ]
!608 = metadata !{metadata !40, metadata !570, metadata !60}
!609 = metadata !{i32 458798, i32 0, metadata !472, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi2ELb0ELb1EE3setEi", metadata !21, i32 1620, metadata !503, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!610 = metadata !{i32 458798, i32 0, metadata !472, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi2ELb0ELb1EE3setEib", metadata !21, i32 1626, metadata !611, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!611 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !612, i32 0, null} ; [ DW_TAG_subroutine_type ]
!612 = metadata !{null, metadata !486, metadata !60, metadata !40}
!613 = metadata !{i32 458798, i32 0, metadata !472, metadata !"lrotate", metadata !"lrotate", metadata !"_ZN11ap_int_baseILi2ELb0ELb1EE7lrotateEi", metadata !21, i32 1633, metadata !503, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!614 = metadata !{i32 458798, i32 0, metadata !472, metadata !"rrotate", metadata !"rrotate", metadata !"_ZN11ap_int_baseILi2ELb0ELb1EE7rrotateEi", metadata !21, i32 1642, metadata !503, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!615 = metadata !{i32 458798, i32 0, metadata !472, metadata !"set_bit", metadata !"set_bit", metadata !"_ZN11ap_int_baseILi2ELb0ELb1EE7set_bitEib", metadata !21, i32 1650, metadata !611, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!616 = metadata !{i32 458798, i32 0, metadata !472, metadata !"get_bit", metadata !"get_bit", metadata !"_ZNK11ap_int_baseILi2ELb0ELb1EE7get_bitEi", metadata !21, i32 1655, metadata !607, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!617 = metadata !{i32 458798, i32 0, metadata !472, metadata !"b_not", metadata !"b_not", metadata !"_ZN11ap_int_baseILi2ELb0ELb1EE5b_notEv", metadata !21, i32 1660, metadata !484, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!618 = metadata !{i32 458798, i32 0, metadata !472, metadata !"countLeadingZeros", metadata !"countLeadingZeros", metadata !"_ZN11ap_int_baseILi2ELb0ELb1EE17countLeadingZerosEv", metadata !21, i32 1667, metadata !619, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!619 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !620, i32 0, null} ; [ DW_TAG_subroutine_type ]
!620 = metadata !{metadata !60, metadata !486}
!621 = metadata !{i32 458798, i32 0, metadata !472, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi2ELb0ELb1EEppEv", metadata !21, i32 1724, metadata !599, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!622 = metadata !{i32 458798, i32 0, metadata !472, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi2ELb0ELb1EEmmEv", metadata !21, i32 1728, metadata !599, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!623 = metadata !{i32 458798, i32 0, metadata !472, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi2ELb0ELb1EEppEi", metadata !21, i32 1736, metadata !624, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!624 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !625, i32 0, null} ; [ DW_TAG_subroutine_type ]
!625 = metadata !{metadata !541, metadata !486, metadata !60}
!626 = metadata !{i32 458798, i32 0, metadata !472, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi2ELb0ELb1EEmmEi", metadata !21, i32 1741, metadata !624, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!627 = metadata !{i32 458798, i32 0, metadata !472, metadata !"operator+", metadata !"operator+", metadata !"_ZNK11ap_int_baseILi2ELb0ELb1EEpsEv", metadata !21, i32 1750, metadata !628, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!628 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !629, i32 0, null} ; [ DW_TAG_subroutine_type ]
!629 = metadata !{metadata !472, metadata !570}
!630 = metadata !{i32 458798, i32 0, metadata !472, metadata !"operator!", metadata !"operator!", metadata !"_ZNK11ap_int_baseILi2ELb0ELb1EEntEv", metadata !21, i32 1756, metadata !572, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!631 = metadata !{i32 458798, i32 0, metadata !472, metadata !"range", metadata !"range", metadata !"_ZN11ap_int_baseILi2ELb0ELb1EE5rangeEii", metadata !21, i32 1883, metadata !632, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!632 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !633, i32 0, null} ; [ DW_TAG_subroutine_type ]
!633 = metadata !{metadata !634, metadata !486, metadata !60, metadata !60}
!634 = metadata !{i32 458771, metadata !3, metadata !"ap_range_ref<2,false>", metadata !21, i32 872, i64 0, i64 0, i64 0, i32 4, null, null, i32 0, null} ; [ DW_TAG_structure_type ]
!635 = metadata !{i32 458798, i32 0, metadata !472, metadata !"operator()", metadata !"operator()", metadata !"_ZN11ap_int_baseILi2ELb0ELb1EEclEii", metadata !21, i32 1889, metadata !632, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!636 = metadata !{i32 458798, i32 0, metadata !472, metadata !"range", metadata !"range", metadata !"_ZNK11ap_int_baseILi2ELb0ELb1EE5rangeEii", metadata !21, i32 1895, metadata !637, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!637 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !638, i32 0, null} ; [ DW_TAG_subroutine_type ]
!638 = metadata !{metadata !634, metadata !570, metadata !60, metadata !60}
!639 = metadata !{i32 458798, i32 0, metadata !472, metadata !"operator()", metadata !"operator()", metadata !"_ZNK11ap_int_baseILi2ELb0ELb1EEclEii", metadata !21, i32 1901, metadata !637, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!640 = metadata !{i32 458798, i32 0, metadata !472, metadata !"operator[]", metadata !"operator[]", metadata !"_ZN11ap_int_baseILi2ELb0ELb1EEixEi", metadata !21, i32 1920, metadata !641, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!641 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !642, i32 0, null} ; [ DW_TAG_subroutine_type ]
!642 = metadata !{metadata !643, metadata !486, metadata !60}
!643 = metadata !{i32 458771, metadata !3, metadata !"ap_bit_ref<2,false>", metadata !21, i32 1118, i64 0, i64 0, i64 0, i32 4, null, null, i32 0, null} ; [ DW_TAG_structure_type ]
!644 = metadata !{i32 458798, i32 0, metadata !472, metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK11ap_int_baseILi2ELb0ELb1EEixEi", metadata !21, i32 1934, metadata !607, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!645 = metadata !{i32 458798, i32 0, metadata !472, metadata !"bit", metadata !"bit", metadata !"_ZN11ap_int_baseILi2ELb0ELb1EE3bitEi", metadata !21, i32 1948, metadata !641, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!646 = metadata !{i32 458798, i32 0, metadata !472, metadata !"bit", metadata !"bit", metadata !"_ZNK11ap_int_baseILi2ELb0ELb1EE3bitEi", metadata !21, i32 1962, metadata !607, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!647 = metadata !{i32 458798, i32 0, metadata !472, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZN11ap_int_baseILi2ELb0ELb1EE10and_reduceEv", metadata !21, i32 2142, metadata !648, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!648 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !649, i32 0, null} ; [ DW_TAG_subroutine_type ]
!649 = metadata !{metadata !40, metadata !486}
!650 = metadata !{i32 458798, i32 0, metadata !472, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZN11ap_int_baseILi2ELb0ELb1EE11nand_reduceEv", metadata !21, i32 2145, metadata !648, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!651 = metadata !{i32 458798, i32 0, metadata !472, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZN11ap_int_baseILi2ELb0ELb1EE9or_reduceEv", metadata !21, i32 2148, metadata !648, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!652 = metadata !{i32 458798, i32 0, metadata !472, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZN11ap_int_baseILi2ELb0ELb1EE10nor_reduceEv", metadata !21, i32 2151, metadata !648, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!653 = metadata !{i32 458798, i32 0, metadata !472, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZN11ap_int_baseILi2ELb0ELb1EE10xor_reduceEv", metadata !21, i32 2154, metadata !648, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!654 = metadata !{i32 458798, i32 0, metadata !472, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZN11ap_int_baseILi2ELb0ELb1EE11xnor_reduceEv", metadata !21, i32 2157, metadata !648, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!655 = metadata !{i32 458798, i32 0, metadata !472, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZNK11ap_int_baseILi2ELb0ELb1EE10and_reduceEv", metadata !21, i32 2161, metadata !572, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!656 = metadata !{i32 458798, i32 0, metadata !472, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZNK11ap_int_baseILi2ELb0ELb1EE11nand_reduceEv", metadata !21, i32 2164, metadata !572, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!657 = metadata !{i32 458798, i32 0, metadata !472, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZNK11ap_int_baseILi2ELb0ELb1EE9or_reduceEv", metadata !21, i32 2167, metadata !572, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!658 = metadata !{i32 458798, i32 0, metadata !472, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZNK11ap_int_baseILi2ELb0ELb1EE10nor_reduceEv", metadata !21, i32 2170, metadata !572, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!659 = metadata !{i32 458798, i32 0, metadata !472, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZNK11ap_int_baseILi2ELb0ELb1EE10xor_reduceEv", metadata !21, i32 2173, metadata !572, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!660 = metadata !{i32 458798, i32 0, metadata !472, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZNK11ap_int_baseILi2ELb0ELb1EE11xnor_reduceEv", metadata !21, i32 2176, metadata !572, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!661 = metadata !{i32 458798, i32 0, metadata !472, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi2ELb0ELb1EE9to_stringEPci8BaseModeb", metadata !21, i32 2183, metadata !662, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!662 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !663, i32 0, null} ; [ DW_TAG_subroutine_type ]
!663 = metadata !{null, metadata !570, metadata !233, metadata !60, metadata !234, metadata !40}
!664 = metadata !{i32 458798, i32 0, metadata !472, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi2ELb0ELb1EE9to_stringE8BaseModeb", metadata !21, i32 2210, metadata !665, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!665 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !666, i32 0, null} ; [ DW_TAG_subroutine_type ]
!666 = metadata !{metadata !233, metadata !570, metadata !234, metadata !40}
!667 = metadata !{i32 458798, i32 0, metadata !472, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi2ELb0ELb1EE9to_stringEab", metadata !21, i32 2214, metadata !668, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!668 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !669, i32 0, null} ; [ DW_TAG_subroutine_type ]
!669 = metadata !{metadata !233, metadata !570, metadata !44, metadata !40}
!670 = metadata !{i32 458798, i32 0, metadata !469, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !17, i32 137, metadata !671, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!671 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !672, i32 0, null} ; [ DW_TAG_subroutine_type ]
!672 = metadata !{null, metadata !673}
!673 = metadata !{i32 458767, metadata !3, metadata !"", metadata !3, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !469} ; [ DW_TAG_pointer_type ]
!674 = metadata !{i32 458798, i32 0, metadata !469, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !17, i32 199, metadata !675, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!675 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !676, i32 0, null} ; [ DW_TAG_subroutine_type ]
!676 = metadata !{null, metadata !673, metadata !40}
!677 = metadata !{i32 458798, i32 0, metadata !469, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !17, i32 200, metadata !678, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!678 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !679, i32 0, null} ; [ DW_TAG_subroutine_type ]
!679 = metadata !{null, metadata !673, metadata !44}
!680 = metadata !{i32 458798, i32 0, metadata !469, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !17, i32 201, metadata !681, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!681 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !682, i32 0, null} ; [ DW_TAG_subroutine_type ]
!682 = metadata !{null, metadata !673, metadata !48}
!683 = metadata !{i32 458798, i32 0, metadata !469, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !17, i32 202, metadata !684, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!684 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !685, i32 0, null} ; [ DW_TAG_subroutine_type ]
!685 = metadata !{null, metadata !673, metadata !52}
!686 = metadata !{i32 458798, i32 0, metadata !469, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !17, i32 203, metadata !687, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!687 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !688, i32 0, null} ; [ DW_TAG_subroutine_type ]
!688 = metadata !{null, metadata !673, metadata !56}
!689 = metadata !{i32 458798, i32 0, metadata !469, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !17, i32 204, metadata !690, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!690 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !691, i32 0, null} ; [ DW_TAG_subroutine_type ]
!691 = metadata !{null, metadata !673, metadata !60}
!692 = metadata !{i32 458798, i32 0, metadata !469, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !17, i32 205, metadata !693, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!693 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !694, i32 0, null} ; [ DW_TAG_subroutine_type ]
!694 = metadata !{null, metadata !673, metadata !64}
!695 = metadata !{i32 458798, i32 0, metadata !469, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !17, i32 206, metadata !696, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!696 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !697, i32 0, null} ; [ DW_TAG_subroutine_type ]
!697 = metadata !{null, metadata !673, metadata !68}
!698 = metadata !{i32 458798, i32 0, metadata !469, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !17, i32 207, metadata !699, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!699 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !700, i32 0, null} ; [ DW_TAG_subroutine_type ]
!700 = metadata !{null, metadata !673, metadata !72}
!701 = metadata !{i32 458798, i32 0, metadata !469, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !17, i32 208, metadata !702, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!702 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !703, i32 0, null} ; [ DW_TAG_subroutine_type ]
!703 = metadata !{null, metadata !673, metadata !80}
!704 = metadata !{i32 458798, i32 0, metadata !469, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !17, i32 209, metadata !705, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!705 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !706, i32 0, null} ; [ DW_TAG_subroutine_type ]
!706 = metadata !{null, metadata !673, metadata !76}
!707 = metadata !{i32 458798, i32 0, metadata !469, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !17, i32 210, metadata !708, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!708 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !709, i32 0, null} ; [ DW_TAG_subroutine_type ]
!709 = metadata !{null, metadata !673, metadata !84}
!710 = metadata !{i32 458798, i32 0, metadata !469, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !17, i32 211, metadata !711, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!711 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !712, i32 0, null} ; [ DW_TAG_subroutine_type ]
!712 = metadata !{null, metadata !673, metadata !88}
!713 = metadata !{i32 458798, i32 0, metadata !469, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !17, i32 213, metadata !714, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!714 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !715, i32 0, null} ; [ DW_TAG_subroutine_type ]
!715 = metadata !{null, metadata !673, metadata !92}
!716 = metadata !{i32 458798, i32 0, metadata !469, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !17, i32 214, metadata !717, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!717 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !718, i32 0, null} ; [ DW_TAG_subroutine_type ]
!718 = metadata !{null, metadata !673, metadata !92, metadata !44}
!719 = metadata !{i32 458798, i32 0, metadata !469, metadata !"operator=", metadata !"operator=", metadata !"_ZNV7ap_uintILi2EEaSERKS0_", metadata !17, i32 217, metadata !720, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!720 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !721, i32 0, null} ; [ DW_TAG_subroutine_type ]
!721 = metadata !{null, metadata !722, metadata !724}
!722 = metadata !{i32 458767, metadata !3, metadata !"", metadata !3, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !723} ; [ DW_TAG_pointer_type ]
!723 = metadata !{i32 458805, metadata !3, metadata !"", metadata !3, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !469} ; [ DW_TAG_volatile_type ]
!724 = metadata !{i32 458768, metadata !3, metadata !"", metadata !3, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !725} ; [ DW_TAG_reference_type ]
!725 = metadata !{i32 458790, metadata !3, metadata !"", metadata !3, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !469} ; [ DW_TAG_const_type ]
!726 = metadata !{i32 458798, i32 0, metadata !469, metadata !"operator=", metadata !"operator=", metadata !"_ZNV7ap_uintILi2EEaSERVKS0_", metadata !17, i32 221, metadata !727, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!727 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !728, i32 0, null} ; [ DW_TAG_subroutine_type ]
!728 = metadata !{null, metadata !722, metadata !729}
!729 = metadata !{i32 458768, metadata !3, metadata !"", metadata !3, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !730} ; [ DW_TAG_reference_type ]
!730 = metadata !{i32 458790, metadata !3, metadata !"", metadata !3, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !723} ; [ DW_TAG_const_type ]
!731 = metadata !{i32 458798, i32 0, metadata !469, metadata !"operator=", metadata !"operator=", metadata !"_ZN7ap_uintILi2EEaSERVKS0_", metadata !17, i32 225, metadata !732, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!732 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !733, i32 0, null} ; [ DW_TAG_subroutine_type ]
!733 = metadata !{metadata !734, metadata !673, metadata !729}
!734 = metadata !{i32 458768, metadata !3, metadata !"ap_uint<2>", metadata !3, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !469} ; [ DW_TAG_reference_type ]
!735 = metadata !{i32 458798, i32 0, metadata !469, metadata !"operator=", metadata !"operator=", metadata !"_ZN7ap_uintILi2EEaSERKS0_", metadata !17, i32 230, metadata !736, i1 false, i1 true, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!736 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !737, i32 0, null} ; [ DW_TAG_subroutine_type ]
!737 = metadata !{metadata !734, metadata !673, metadata !724}
!738 = metadata !{i32 458798, i32 0, metadata !466, metadata !"stream", metadata !"stream", metadata !"", metadata !12, i32 37, metadata !739, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!739 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !740, i32 0, null} ; [ DW_TAG_subroutine_type ]
!740 = metadata !{null, metadata !741}
!741 = metadata !{i32 458767, metadata !3, metadata !"", metadata !3, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !466} ; [ DW_TAG_pointer_type ]
!742 = metadata !{i32 458798, i32 0, metadata !466, metadata !"stream", metadata !"stream", metadata !"", metadata !12, i32 40, metadata !743, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!743 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !744, i32 0, null} ; [ DW_TAG_subroutine_type ]
!744 = metadata !{null, metadata !741, metadata !92}
!745 = metadata !{i32 458798, i32 0, metadata !466, metadata !"stream", metadata !"stream", metadata !"", metadata !12, i32 45, metadata !746, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!746 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !747, i32 0, null} ; [ DW_TAG_subroutine_type ]
!747 = metadata !{null, metadata !741, metadata !748}
!748 = metadata !{i32 458768, metadata !3, metadata !"", metadata !3, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !749} ; [ DW_TAG_reference_type ]
!749 = metadata !{i32 458790, metadata !11, metadata !"", metadata !3, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !466} ; [ DW_TAG_const_type ]
!750 = metadata !{i32 458798, i32 0, metadata !466, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamI7ap_uintILi2EEEaSERKS3_", metadata !12, i32 48, metadata !751, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!751 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !752, i32 0, null} ; [ DW_TAG_subroutine_type ]
!752 = metadata !{metadata !753, metadata !741, metadata !748}
!753 = metadata !{i32 458768, metadata !3, metadata !"hlsstream<ap_uint<2> >", metadata !3, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !466} ; [ DW_TAG_reference_type ]
!754 = metadata !{i32 458798, i32 0, metadata !466, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamI7ap_uintILi2EEErsERS2_", metadata !12, i32 55, metadata !755, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!755 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !756, i32 0, null} ; [ DW_TAG_subroutine_type ]
!756 = metadata !{null, metadata !741, metadata !734}
!757 = metadata !{i32 458798, i32 0, metadata !466, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamI7ap_uintILi2EEElsERKS2_", metadata !12, i32 59, metadata !758, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!758 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !759, i32 0, null} ; [ DW_TAG_subroutine_type ]
!759 = metadata !{null, metadata !741, metadata !724}
!760 = metadata !{i32 458798, i32 0, metadata !466, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamI7ap_uintILi2EEE5emptyEv", metadata !12, i32 66, metadata !761, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!761 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !762, i32 0, null} ; [ DW_TAG_subroutine_type ]
!762 = metadata !{metadata !40, metadata !763}
!763 = metadata !{i32 458767, metadata !3, metadata !"", metadata !3, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !749} ; [ DW_TAG_pointer_type ]
!764 = metadata !{i32 458798, i32 0, metadata !466, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamI7ap_uintILi2EEE4fullEv", metadata !12, i32 71, metadata !761, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!765 = metadata !{i32 458798, i32 0, metadata !466, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamI7ap_uintILi2EEE4readERS2_", metadata !12, i32 77, metadata !755, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!766 = metadata !{i32 458798, i32 0, metadata !466, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamI7ap_uintILi2EEE4readEv", metadata !12, i32 83, metadata !767, i1 false, i1 true, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!767 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !768, i32 0, null} ; [ DW_TAG_subroutine_type ]
!768 = metadata !{metadata !469, metadata !741}
!769 = metadata !{i32 458798, i32 0, metadata !466, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamI7ap_uintILi2EEE7read_nbERS2_", metadata !12, i32 90, metadata !770, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!770 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !771, i32 0, null} ; [ DW_TAG_subroutine_type ]
!771 = metadata !{metadata !40, metadata !741, metadata !734}
!772 = metadata !{i32 458798, i32 0, metadata !466, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamI7ap_uintILi2EEE5writeERKS2_", metadata !12, i32 98, metadata !758, i1 false, i1 true, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!773 = metadata !{i32 458798, i32 0, metadata !466, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamI7ap_uintILi2EEE8write_nbERKS2_", metadata !12, i32 104, metadata !774, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!774 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !775, i32 0, null} ; [ DW_TAG_subroutine_type ]
!775 = metadata !{metadata !40, metadata !741, metadata !724}
!776 = metadata !{i32 458772, metadata !3, metadata !"ap_uint<2>", metadata !17, i32 134, i64 8, i64 8, i64 0, i32 0, null, metadata !777, i32 0, null} ; [ DW_TAG_structure_field_type ]
!777 = metadata !{metadata !778}
!778 = metadata !{i32 458772, metadata !3, metadata !"ap_int_base<2,false,true>", metadata !21, i32 599, i64 8, i64 8, i64 0, i32 0, null, metadata !779, i32 0, null} ; [ DW_TAG_structure_field_type ]
!779 = metadata !{metadata !780}
!780 = metadata !{i32 458772, metadata !3, metadata !"ssdm_int<2,false>", metadata !25, i32 4, i64 8, i64 8, i64 0, i32 0, null, metadata !781, i32 0, null} ; [ DW_TAG_structure_field_type ]
!781 = metadata !{metadata !477}
