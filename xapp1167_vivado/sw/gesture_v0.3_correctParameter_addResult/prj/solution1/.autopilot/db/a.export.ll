; ModuleID = '/home/student/nl443/ece5775/project/TaikoGestureMaster/xapp1167_vivado/sw/gesture/prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

%0 = type { i32, i4, i4, i1, i1, i1, i1 }
%"hls::Mat<1080, 1920, 0>::init.1_ret" = type { i12, i12 }
%"hls::Mat<1080, 1920, 0>::init.2_ret" = type { i12, i12 }
%"hls::Mat<1080, 1920, 0>::init.3_ret" = type { i12, i12 }
%"hls::Mat<1080, 1920, 0>::init_ret" = type { i12, i12 }
%"hls::Mat<1080, 1920, 16>::init.1_ret" = type { i12, i12 }
%"hls::Mat<1080, 1920, 16>::init_ret" = type { i12, i12, i12, i12 }
%struct.__locale_struct = type { [13 x %struct.locale_data*], i16*, i32*, i32*, [13 x i8*] }
%"struct.ap_axiu<32,1,1,1>" = type { %"struct.ap_uint<32>", %"struct.ap_uint<4>", %"struct.ap_uint<4>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>" }
%"struct.ap_fixed_base<32,32,true,SC_TRN,SC_WRAP,0>" = type { %"struct.ssdm_int<32,false>" }
%"struct.ap_int_base<1,false,true>" = type { %"struct.ssdm_int<1,false>" }
%"struct.ap_int_base<12,false,true>" = type { %"struct.ssdm_int<12,false>" }
%"struct.ap_int_base<4,false,true>" = type { %"struct.ssdm_int<4,false>" }
%"struct.ap_uint<12>" = type { %"struct.ap_int_base<12,false,true>" }
%"struct.ap_uint<1>" = type { %"struct.ap_int_base<1,false,true>" }
%"struct.ap_uint<32>" = type { %"struct.ap_fixed_base<32,32,true,SC_TRN,SC_WRAP,0>" }
%"struct.ap_uint<4>" = type { %"struct.ap_int_base<4,false,true>" }
%"struct.hls::RGB_IMAGE" = type { %"struct.ap_uint<12>", %"struct.ap_uint<12>", [3 x %"struct.hls::stream<unsigned char>"] }
%"struct.hls::UC_IMAGE" = type { %"struct.ap_uint<12>", %"struct.ap_uint<12>", [1 x %"struct.hls::stream<unsigned char>"] }
%"struct.hls::stream<ap_axiu<32, 1, 1, 1> >" = type { %"struct.ap_axiu<32,1,1,1>" }
%"struct.hls::stream<unsigned char>" = type { i8 }
%struct.locale_data = type opaque
%struct.ssdm_global_array_toppp0cppaplinecpp = type <{ i8 }>
%"struct.ssdm_int<1,false>" = type { i1 }
%"struct.ssdm_int<12,false>" = type { i12 }
%"struct.ssdm_int<32,false>" = type { i32 }
%"struct.ssdm_int<4,false>" = type { i4 }
%"struct.std::basic_ios<char,std::char_traits<char> >" = type { %"struct.std::ios_base", %"struct.std::basic_ostream<char,std::char_traits<char> >"*, i8, i1, %"struct.std::basic_streambuf<char,std::char_traits<char> >"*, %"struct.std::ctype<char>"*, %"struct.std::num_get<char,std::istreambuf_iterator<char, std::char_traits<char> > >"*, %"struct.std::num_get<char,std::istreambuf_iterator<char, std::char_traits<char> > >"* }
%"struct.std::basic_ostream<char,std::char_traits<char> >" = type { i32 (...)**, %"struct.std::basic_ios<char,std::char_traits<char> >" }
%"struct.std::basic_streambuf<char,std::char_traits<char> >" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"struct.std::locale" }
%"struct.std::ctype<char>" = type { %"struct.std::locale::facet", %struct.__locale_struct*, i1, i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8 }
%"struct.std::ios_base" = type { i32 (...)**, i64, i64, i17, i17, i17, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"struct.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i2, %"struct.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"struct.std::locale" = type { %"struct.std::locale::_Impl"* }
%"struct.std::locale::_Impl" = type { i32, %"struct.std::locale::facet"**, i64, %"struct.std::locale::facet"**, i8** }
%"struct.std::locale::facet" = type { i32 (...)**, i32 }
%"struct.std::num_get<char,std::istreambuf_iterator<char, std::char_traits<char> > >" = type { %"struct.std::locale::facet" }

@p_str = private constant [1 x i8] zeroinitializer, align 1 ; <[1 x i8]*> [#uses=91]
@p_str37 = private constant [13 x i8] c"hls_label_17\00", align 1 ; <[13 x i8]*> [#uses=2]
@p_str38 = private constant [13 x i8] c"hls_label_18\00", align 1 ; <[13 x i8]*> [#uses=2]
@p_str39 = private constant [13 x i8] c"hls_label_19\00", align 1 ; <[13 x i8]*> [#uses=2]
@p_str40 = private constant [13 x i8] c"hls_label_20\00", align 1 ; <[13 x i8]*> [#uses=2]
@p_str42 = private constant [13 x i8] c"hls_label_21\00", align 1 ; <[13 x i8]*> [#uses=2]
@p_str43 = private constant [13 x i8] c"hls_label_22\00", align 1 ; <[13 x i8]*> [#uses=2]
@p_str44 = private constant [14 x i8] c"hls_label_110\00", align 1 ; <[14 x i8]*> [#uses=2]
@p_str45 = private constant [14 x i8] c"hls_label_112\00", align 1 ; <[14 x i8]*> [#uses=2]
@p_str50 = private constant [14 x i8] c"hls_label_111\00", align 1 ; <[14 x i8]*> [#uses=4]
@p_str51 = private constant [5 x i8] c"AXIS\00", align 1 ; <[5 x i8]*> [#uses=4]
@p_str52 = private constant [25 x i8] c"-bus_bundle INPUT_STREAM\00", align 1 ; <[25 x i8]*> [#uses=2]
@p_str53 = private constant [26 x i8] c"-bus_bundle OUTPUT_STREAM\00", align 1 ; <[26 x i8]*> [#uses=2]
@p_str54 = private constant [10 x i8] c"AXI_SLAVE\00", align 1 ; <[10 x i8]*> [#uses=15]
@p_str55 = private constant [24 x i8] c"-bus_bundle CONTROL_BUS\00", align 1 ; <[24 x i8]*> [#uses=15]
@p_str56 = private constant [10 x i8] c"ap_stable\00", align 1 ; <[10 x i8]*> [#uses=2]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535] ; <[1 x i32]*> [#uses=0]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I__Z9Rgb2ycbcrRN3hls3MatILi1080ELi1920ELi16EEERNS0_ILi1080ELi1920ELi0EEE] ; <[1 x void ()*]*> [#uses=0]
@llvm_global_dtors_0 = appending global [1 x i32] [i32 65535] ; <[1 x i32]*> [#uses=0]
@llvm_global_dtors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__D__Z9Rgb2ycbcrRN3hls3MatILi1080ELi1920ELi16EEERNS0_ILi1080ELi1920ELi0EEE] ; <[1 x void ()*]*> [#uses=0]
@p_str57 = internal constant [59 x i8] c"hls::LineBuffer<8, 1920, unsigned char>::LineBuffer.region\00" ; <[59 x i8]*> [#uses=4]
@str = internal constant [8 x i8] c"ap_fifo\00"   ; <[8 x i8]*> [#uses=4]
@str77 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=4]
@str78 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=4]
@str79 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=4]
@str80 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=4]
@str81 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=4]
@str82 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=4]
@str83 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=4]
@str84 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=4]
@str85 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=4]
@str86 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=4]
@str87 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=4]
@str88 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=4]
@str89 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=4]
@str100 = internal constant [21 x i8] c"src.data_stream[0].V\00" ; <[21 x i8]*> [#uses=1]
@str101 = internal constant [1 x i8] zeroinitializer ; <[1 x i8]*> [#uses=2]
@str102 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=6]
@str103 = internal constant [21 x i8] c"src.data_stream[1].V\00" ; <[21 x i8]*> [#uses=1]
@str104 = internal constant [1 x i8] zeroinitializer ; <[1 x i8]*> [#uses=2]
@str105 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=6]
@str106 = internal constant [21 x i8] c"src.data_stream[2].V\00" ; <[21 x i8]*> [#uses=1]
@str107 = internal constant [1 x i8] zeroinitializer ; <[1 x i8]*> [#uses=2]
@str108 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=6]
@str109 = internal constant [23 x i8] c"ycbcr.data_stream[0].V\00" ; <[23 x i8]*> [#uses=1]
@str110 = internal constant [1 x i8] zeroinitializer ; <[1 x i8]*> [#uses=2]
@str111 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=6]
@str112 = internal constant [29 x i8] c"medianImage.data_stream[0].V\00" ; <[29 x i8]*> [#uses=1]
@str113 = internal constant [1 x i8] zeroinitializer ; <[1 x i8]*> [#uses=2]
@str114 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=6]
@str115 = internal constant [30 x i8] c"medianImage2.data_stream[0].V\00" ; <[30 x i8]*> [#uses=1]
@str116 = internal constant [1 x i8] zeroinitializer ; <[1 x i8]*> [#uses=2]
@str117 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=6]
@str118 = internal constant [24 x i8] c"result.data_stream[0].V\00" ; <[24 x i8]*> [#uses=1]
@str119 = internal constant [1 x i8] zeroinitializer ; <[1 x i8]*> [#uses=2]
@str120 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=6]
@str121 = internal constant [24 x i8] c"result.data_stream[1].V\00" ; <[24 x i8]*> [#uses=1]
@str122 = internal constant [1 x i8] zeroinitializer ; <[1 x i8]*> [#uses=2]
@str123 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=6]
@str124 = internal constant [24 x i8] c"result.data_stream[2].V\00" ; <[24 x i8]*> [#uses=1]
@str125 = internal constant [1 x i8] zeroinitializer ; <[1 x i8]*> [#uses=2]
@str126 = internal constant [8 x i8] c"ap_fifo\00" ; <[8 x i8]*> [#uses=6]

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
  %empty = call i32 (...)* @_ssdm_op_SpecFifo(i1* %output_V_dest_V, [8 x i8]* @str89, i32 0, i32 0, i32 0, [8 x i8]* @str89) ; <i32> [#uses=0]
  %empty_43 = call i32 (...)* @_ssdm_op_SpecFifo(i1* %output_V_id_V, [8 x i8]* @str88, i32 0, i32 0, i32 0, [8 x i8]* @str88) ; <i32> [#uses=0]
  %empty_44 = call i32 (...)* @_ssdm_op_SpecFifo(i1* %output_V_last_V, [8 x i8]* @str87, i32 0, i32 0, i32 0, [8 x i8]* @str87) ; <i32> [#uses=0]
  %empty_45 = call i32 (...)* @_ssdm_op_SpecFifo(i1* %output_V_user_V, [8 x i8]* @str86, i32 0, i32 0, i32 0, [8 x i8]* @str86) ; <i32> [#uses=0]
  %empty_46 = call i32 (...)* @_ssdm_op_SpecFifo(i4* %output_V_strb_V, [8 x i8]* @str85, i32 0, i32 0, i32 0, [8 x i8]* @str85) ; <i32> [#uses=0]
  %empty_47 = call i32 (...)* @_ssdm_op_SpecFifo(i4* %output_V_keep_V, [8 x i8]* @str84, i32 0, i32 0, i32 0, [8 x i8]* @str84) ; <i32> [#uses=0]
  %empty_48 = call i32 (...)* @_ssdm_op_SpecFifo(i32* %output_V_data_V, [8 x i8]* @str83, i32 0, i32 0, i32 0, [8 x i8]* @str83) ; <i32> [#uses=0]
  %empty_49 = call i32 (...)* @_ssdm_op_SpecFifo(i1* %input_V_dest_V, [8 x i8]* @str82, i32 0, i32 0, i32 0, [8 x i8]* @str82) ; <i32> [#uses=0]
  %empty_50 = call i32 (...)* @_ssdm_op_SpecFifo(i1* %input_V_id_V, [8 x i8]* @str81, i32 0, i32 0, i32 0, [8 x i8]* @str81) ; <i32> [#uses=0]
  %empty_51 = call i32 (...)* @_ssdm_op_SpecFifo(i1* %input_V_last_V, [8 x i8]* @str80, i32 0, i32 0, i32 0, [8 x i8]* @str80) ; <i32> [#uses=0]
  %empty_52 = call i32 (...)* @_ssdm_op_SpecFifo(i1* %input_V_user_V, [8 x i8]* @str79, i32 0, i32 0, i32 0, [8 x i8]* @str79) ; <i32> [#uses=0]
  %empty_53 = call i32 (...)* @_ssdm_op_SpecFifo(i4* %input_V_strb_V, [8 x i8]* @str78, i32 0, i32 0, i32 0, [8 x i8]* @str78) ; <i32> [#uses=0]
  %empty_54 = call i32 (...)* @_ssdm_op_SpecFifo(i4* %input_V_keep_V, [8 x i8]* @str77, i32 0, i32 0, i32 0, [8 x i8]* @str77) ; <i32> [#uses=0]
  %empty_55 = call i32 (...)* @_ssdm_op_SpecFifo(i32* %input_V_data_V, [8 x i8]* @str, i32 0, i32 0, i32 0, [8 x i8]* @str) ; <i32> [#uses=0]
  %cols_read = call i32 @_ssdm_op_WireRead.i32(i32 %cols) ; <i32> [#uses=7]
  %rows_read = call i32 @_ssdm_op_WireRead.i32(i32 %rows) ; <i32> [#uses=7]
  %src_data_stream_0_V = alloca i8, align 1       ; <i8*> [#uses=5]
  %empty_56 = call i32 (...)* @_ssdm_op_SpecChannel([21 x i8]* @str100, i32 1, [1 x i8]* @str101, [1 x i8]* @str101, i32 1, i32 1, i8* %src_data_stream_0_V, i8* %src_data_stream_0_V) ; <i32> [#uses=0]
  %empty_57 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %src_data_stream_0_V, [8 x i8]* @str102, i32 0, i32 0, i32 0, [8 x i8]* @str102) ; <i32> [#uses=0]
  %src_data_stream_1_V = alloca i8, align 1       ; <i8*> [#uses=5]
  %empty_58 = call i32 (...)* @_ssdm_op_SpecChannel([21 x i8]* @str103, i32 1, [1 x i8]* @str104, [1 x i8]* @str104, i32 1, i32 1, i8* %src_data_stream_1_V, i8* %src_data_stream_1_V) ; <i32> [#uses=0]
  %empty_59 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %src_data_stream_1_V, [8 x i8]* @str105, i32 0, i32 0, i32 0, [8 x i8]* @str105) ; <i32> [#uses=0]
  %src_data_stream_2_V = alloca i8, align 1       ; <i8*> [#uses=5]
  %empty_60 = call i32 (...)* @_ssdm_op_SpecChannel([21 x i8]* @str106, i32 1, [1 x i8]* @str107, [1 x i8]* @str107, i32 1, i32 1, i8* %src_data_stream_2_V, i8* %src_data_stream_2_V) ; <i32> [#uses=0]
  %empty_61 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %src_data_stream_2_V, [8 x i8]* @str108, i32 0, i32 0, i32 0, [8 x i8]* @str108) ; <i32> [#uses=0]
  %ycbcr_data_stream_0_V = alloca i8, align 1     ; <i8*> [#uses=5]
  %empty_62 = call i32 (...)* @_ssdm_op_SpecChannel([23 x i8]* @str109, i32 1, [1 x i8]* @str110, [1 x i8]* @str110, i32 1, i32 1, i8* %ycbcr_data_stream_0_V, i8* %ycbcr_data_stream_0_V) ; <i32> [#uses=0]
  %empty_63 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %ycbcr_data_stream_0_V, [8 x i8]* @str111, i32 0, i32 0, i32 0, [8 x i8]* @str111) ; <i32> [#uses=0]
  %medianImage_data_stream_0_V = alloca i8, align 1 ; <i8*> [#uses=5]
  %empty_64 = call i32 (...)* @_ssdm_op_SpecChannel([29 x i8]* @str112, i32 1, [1 x i8]* @str113, [1 x i8]* @str113, i32 1, i32 1, i8* %medianImage_data_stream_0_V, i8* %medianImage_data_stream_0_V) ; <i32> [#uses=0]
  %empty_65 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %medianImage_data_stream_0_V, [8 x i8]* @str114, i32 0, i32 0, i32 0, [8 x i8]* @str114) ; <i32> [#uses=0]
  %medianImage2_data_stream_0_V = alloca i8, align 1 ; <i8*> [#uses=5]
  %empty_66 = call i32 (...)* @_ssdm_op_SpecChannel([30 x i8]* @str115, i32 1, [1 x i8]* @str116, [1 x i8]* @str116, i32 1, i32 1, i8* %medianImage2_data_stream_0_V, i8* %medianImage2_data_stream_0_V) ; <i32> [#uses=0]
  %empty_67 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %medianImage2_data_stream_0_V, [8 x i8]* @str117, i32 0, i32 0, i32 0, [8 x i8]* @str117) ; <i32> [#uses=0]
  %result_data_stream_0_V = alloca i8, align 1    ; <i8*> [#uses=5]
  %empty_68 = call i32 (...)* @_ssdm_op_SpecChannel([24 x i8]* @str118, i32 1, [1 x i8]* @str119, [1 x i8]* @str119, i32 1, i32 1, i8* %result_data_stream_0_V, i8* %result_data_stream_0_V) ; <i32> [#uses=0]
  %empty_69 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %result_data_stream_0_V, [8 x i8]* @str120, i32 0, i32 0, i32 0, [8 x i8]* @str120) ; <i32> [#uses=0]
  %result_data_stream_1_V = alloca i8, align 1    ; <i8*> [#uses=5]
  %empty_70 = call i32 (...)* @_ssdm_op_SpecChannel([24 x i8]* @str121, i32 1, [1 x i8]* @str122, [1 x i8]* @str122, i32 1, i32 1, i8* %result_data_stream_1_V, i8* %result_data_stream_1_V) ; <i32> [#uses=0]
  %empty_71 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %result_data_stream_1_V, [8 x i8]* @str123, i32 0, i32 0, i32 0, [8 x i8]* @str123) ; <i32> [#uses=0]
  %result_data_stream_2_V = alloca i8, align 1    ; <i8*> [#uses=5]
  %empty_72 = call i32 (...)* @_ssdm_op_SpecChannel([24 x i8]* @str124, i32 1, [1 x i8]* @str125, [1 x i8]* @str125, i32 1, i32 1, i8* %result_data_stream_2_V, i8* %result_data_stream_2_V) ; <i32> [#uses=0]
  %empty_73 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %result_data_stream_2_V, [8 x i8]* @str126, i32 0, i32 0, i32 0, [8 x i8]* @str126) ; <i32> [#uses=0]
  call void (...)* @_ssdm_op_SpecIFCore(i32* %input_V_data_V, i4* %input_V_keep_V, i4* %input_V_strb_V, i1* %input_V_user_V, i1* %input_V_last_V, i1* %input_V_id_V, i1* %input_V_dest_V, [1 x i8]* @p_str, [5 x i8]* @p_str51, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [25 x i8]* @p_str52)
  call void (...)* @_ssdm_op_SpecIFCore(i32* %output_V_data_V, i4* %output_V_keep_V, i4* %output_V_strb_V, i1* %output_V_user_V, i1* %output_V_last_V, i1* %output_V_id_V, i1* %output_V_dest_V, [1 x i8]* @p_str, [5 x i8]* @p_str51, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [26 x i8]* @p_str53)
  call void (...)* @_ssdm_op_SpecIFCore(i32 %rows, [1 x i8]* @p_str, [10 x i8]* @p_str54, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [24 x i8]* @p_str55)
  call void (...)* @_ssdm_op_SpecIFCore(i32 %cols, [1 x i8]* @p_str, [10 x i8]* @p_str54, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [24 x i8]* @p_str55)
  call void (...)* @_ssdm_op_SpecIFCore(i32 0, [1 x i8]* @p_str, [10 x i8]* @p_str54, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [24 x i8]* @p_str55)
  call void (...)* @_ssdm_op_SpecWire(i32 %rows, [10 x i8]* @p_str56, i32 0, i32 0, i32 0, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecWire(i32 %cols, [10 x i8]* @p_str56, i32 0, i32 0, i32 0, [1 x i8]* @p_str) nounwind
  %call_ret1 = call fastcc %"hls::Mat<1080, 1920, 16>::init_ret" @init(i32 %rows_read, i32 %cols_read) ; <%"hls::Mat<1080, 1920, 16>::init_ret"> [#uses=4]
  %src_rows_V = extractvalue %"hls::Mat<1080, 1920, 16>::init_ret" %call_ret1, 0 ; <i12> [#uses=1]
  %src_rows_V_channel = extractvalue %"hls::Mat<1080, 1920, 16>::init_ret" %call_ret1, 1 ; <i12> [#uses=1]
  %src_cols_V = extractvalue %"hls::Mat<1080, 1920, 16>::init_ret" %call_ret1, 2 ; <i12> [#uses=1]
  %src_cols_V_channel = extractvalue %"hls::Mat<1080, 1920, 16>::init_ret" %call_ret1, 3 ; <i12> [#uses=1]
  %call_ret2 = call fastcc %"hls::Mat<1080, 1920, 0>::init.1_ret" @init.1(i32 %rows_read, i32 %cols_read) ; <%"hls::Mat<1080, 1920, 0>::init.1_ret"> [#uses=2]
  %ycbcr_rows_V = extractvalue %"hls::Mat<1080, 1920, 0>::init.1_ret" %call_ret2, 0 ; <i12> [#uses=1]
  %ycbcr_cols_V = extractvalue %"hls::Mat<1080, 1920, 0>::init.1_ret" %call_ret2, 1 ; <i12> [#uses=1]
  %call_ret3 = call fastcc %"hls::Mat<1080, 1920, 0>::init.1_ret" @init.1.1(i32 %rows_read, i32 %cols_read) ; <%"hls::Mat<1080, 1920, 0>::init.1_ret"> [#uses=2]
  %medianImage_rows_V = extractvalue %"hls::Mat<1080, 1920, 0>::init.1_ret" %call_ret3, 0 ; <i12> [#uses=1]
  %medianImage_cols_V = extractvalue %"hls::Mat<1080, 1920, 0>::init.1_ret" %call_ret3, 1 ; <i12> [#uses=1]
  %call_ret4 = call fastcc %"hls::Mat<1080, 1920, 0>::init.1_ret" @init.2(i32 %rows_read, i32 %cols_read) ; <%"hls::Mat<1080, 1920, 0>::init.1_ret"> [#uses=2]
  %medianImage2_rows_V = extractvalue %"hls::Mat<1080, 1920, 0>::init.1_ret" %call_ret4, 0 ; <i12> [#uses=1]
  %medianImage2_cols_V = extractvalue %"hls::Mat<1080, 1920, 0>::init.1_ret" %call_ret4, 1 ; <i12> [#uses=1]
  call fastcc void @init.3(i32 %rows_read, i32 %cols_read)
  call fastcc void @init.3(i32 %rows_read, i32 %cols_read)
  %call_ret5 = call fastcc %"hls::Mat<1080, 1920, 0>::init.1_ret" @init.1.2(i32 %rows_read, i32 %cols_read) ; <%"hls::Mat<1080, 1920, 0>::init.1_ret"> [#uses=2]
  %result_rows_V = extractvalue %"hls::Mat<1080, 1920, 0>::init.1_ret" %call_ret5, 0 ; <i12> [#uses=1]
  %result_cols_V = extractvalue %"hls::Mat<1080, 1920, 0>::init.1_ret" %call_ret5, 1 ; <i12> [#uses=1]
  call fastcc void @"AXIvideo2Mat<32,1080,1920,16>"(i32* %input_V_data_V, i4* %input_V_keep_V, i4* %input_V_strb_V, i1* %input_V_user_V, i1* %input_V_last_V, i1* %input_V_id_V, i1* %input_V_dest_V, i12 %src_rows_V, i12 %src_cols_V, i8* %src_data_stream_0_V, i8* %src_data_stream_1_V, i8* %src_data_stream_2_V)
  call fastcc void @Rgb2ycbcr(i12 %src_rows_V_channel, i12 %src_cols_V_channel, i8* %src_data_stream_0_V, i8* %src_data_stream_1_V, i8* %src_data_stream_2_V, i8* %ycbcr_data_stream_0_V)
  call fastcc void @median_filter(i12 %ycbcr_rows_V, i12 %ycbcr_cols_V, i8* %ycbcr_data_stream_0_V, i8* %medianImage_data_stream_0_V)
  call fastcc void @median_filter.1(i12 %medianImage_rows_V, i12 %medianImage_cols_V, i8* %medianImage_data_stream_0_V, i8* %medianImage2_data_stream_0_V)
  call fastcc void @finger_counter(i12 %medianImage2_rows_V, i12 %medianImage2_cols_V, i8* %medianImage2_data_stream_0_V, i8* %result_data_stream_0_V, i8* %result_data_stream_1_V, i8* %result_data_stream_2_V)
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

define weak i32 @_ssdm_op_SpecFifo(...) {
entry:
  ret i32 0
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; <i32> [#uses=1]
  %empty_74 = trunc i32 %empty to i8              ; <i8> [#uses=1]
  ret i8 %empty_74
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i8.i8.i8.i8(i8, i8, i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %2 to i16                      ; <i16> [#uses=1]
  %empty_75 = zext i8 %3 to i16                   ; <i16> [#uses=2]
  %empty_76 = trunc i16 %empty to i8              ; <i8> [#uses=1]
  %empty_77 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %empty_75, i32 8, i32 15) ; <i8> [#uses=1]
  %empty_78 = or i8 %empty_76, %empty_77          ; <i8> [#uses=1]
  %empty_79 = call i16 @_ssdm_op_PartSet.i16.i16.i8.i32.i32(i16 %empty_75, i8 %empty_78, i32 8, i32 15) ; <i16> [#uses=1]
  %empty_80 = zext i8 %1 to i24                   ; <i24> [#uses=1]
  %empty_81 = zext i16 %empty_79 to i24           ; <i24> [#uses=2]
  %empty_82 = trunc i24 %empty_80 to i8           ; <i8> [#uses=1]
  %empty_83 = call i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24 %empty_81, i32 16, i32 23) ; <i8> [#uses=1]
  %empty_84 = or i8 %empty_82, %empty_83          ; <i8> [#uses=1]
  %empty_85 = call i24 @_ssdm_op_PartSet.i24.i24.i8.i32.i32(i24 %empty_81, i8 %empty_84, i32 16, i32 23) ; <i24> [#uses=1]
  %empty_86 = zext i8 %0 to i32                   ; <i32> [#uses=1]
  %empty_87 = zext i24 %empty_85 to i32           ; <i32> [#uses=2]
  %empty_88 = trunc i32 %empty_86 to i8           ; <i8> [#uses=1]
  %empty_89 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %empty_87, i32 24, i32 31) ; <i8> [#uses=1]
  %empty_90 = or i8 %empty_88, %empty_89          ; <i8> [#uses=1]
  %empty_91 = call i32 @_ssdm_op_PartSet.i32.i32.i8.i32.i32(i32 %empty_87, i8 %empty_90, i32 24, i32 31) ; <i32> [#uses=1]
  ret i32 %empty_91
}

define weak i32 @_ssdm_op_SpecChannel(...) {
entry:
  ret i32 0
}

define internal fastcc void @"AXIvideo2Mat<32,1080,1920,16>"(i32* %AXI_video_strm_V_data_V, i4* %AXI_video_strm_V_keep_V, i4* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V, i12 %img_rows_V_read, i12 %img_cols_V_read, i8* %img_data_stream_0_V, i8* %img_data_stream_1_V, i8* %img_data_stream_2_V) {
entry:
  %empty = call i32 (...)* @_ssdm_op_SpecFifo(i8* %img_data_stream_2_V, [8 x i8]* @str108, i32 0, i32 0, i32 0, [8 x i8]* @str108) ; <i32> [#uses=0]
  %empty_92 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %img_data_stream_1_V, [8 x i8]* @str105, i32 0, i32 0, i32 0, [8 x i8]* @str105) ; <i32> [#uses=0]
  %empty_93 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %img_data_stream_0_V, [8 x i8]* @str102, i32 0, i32 0, i32 0, [8 x i8]* @str102) ; <i32> [#uses=0]
  %empty_94 = call i32 (...)* @_ssdm_op_SpecFifo(i1* %AXI_video_strm_V_dest_V, [8 x i8]* @str82, i32 0, i32 0, i32 0, [8 x i8]* @str82) ; <i32> [#uses=0]
  %empty_95 = call i32 (...)* @_ssdm_op_SpecFifo(i1* %AXI_video_strm_V_id_V, [8 x i8]* @str81, i32 0, i32 0, i32 0, [8 x i8]* @str81) ; <i32> [#uses=0]
  %empty_96 = call i32 (...)* @_ssdm_op_SpecFifo(i1* %AXI_video_strm_V_last_V, [8 x i8]* @str80, i32 0, i32 0, i32 0, [8 x i8]* @str80) ; <i32> [#uses=0]
  %empty_97 = call i32 (...)* @_ssdm_op_SpecFifo(i1* %AXI_video_strm_V_user_V, [8 x i8]* @str79, i32 0, i32 0, i32 0, [8 x i8]* @str79) ; <i32> [#uses=0]
  %empty_98 = call i32 (...)* @_ssdm_op_SpecFifo(i4* %AXI_video_strm_V_strb_V, [8 x i8]* @str78, i32 0, i32 0, i32 0, [8 x i8]* @str78) ; <i32> [#uses=0]
  %empty_99 = call i32 (...)* @_ssdm_op_SpecFifo(i4* %AXI_video_strm_V_keep_V, [8 x i8]* @str77, i32 0, i32 0, i32 0, [8 x i8]* @str77) ; <i32> [#uses=0]
  %empty_100 = call i32 (...)* @_ssdm_op_SpecFifo(i32* %AXI_video_strm_V_data_V, [8 x i8]* @str, i32 0, i32 0, i32 0, [8 x i8]* @str) ; <i32> [#uses=0]
  call void (...)* @_ssdm_op_SpecIFCore(i32* %AXI_video_strm_V_data_V, i4* %AXI_video_strm_V_keep_V, i4* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V, [1 x i8]* @p_str, [5 x i8]* @p_str51, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [25 x i8]* @p_str52)
  %img_cols_V_read_1 = call i12 @_ssdm_op_WireRead.i12(i12 %img_cols_V_read) ; <i12> [#uses=1]
  %img_rows_V_read_1 = call i12 @_ssdm_op_WireRead.i12(i12 %img_rows_V_read) ; <i12> [#uses=1]
  br label %bb3

bb2:                                              ; preds = %bb3
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str37) ; <i32> [#uses=1]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, [1 x i8]* @p_str) nounwind
  %empty_101 = call %0 @_ssdm_op_FifoRead.volatile.i32P.i4P.i4P.i1P.i1P.i1P.i1P(i32* %AXI_video_strm_V_data_V, i4* %AXI_video_strm_V_keep_V, i4* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V) ; <%0> [#uses=3]
  %tmp_data_V = extractvalue %0 %empty_101, 0     ; <i32> [#uses=1]
  %tmp_user_V = extractvalue %0 %empty_101, 3     ; <i1> [#uses=1]
  %tmp_last_V = extractvalue %0 %empty_101, 4     ; <i1> [#uses=1]
  %empty_102 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str37, i32 %tmp) ; <i32> [#uses=0]
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
  %empty_103 = call %0 @_ssdm_op_FifoRead.volatile.i32P.i4P.i4P.i1P.i1P.i1P.i1P(i32* %AXI_video_strm_V_data_V, i4* %AXI_video_strm_V_keep_V, i4* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V) ; <%0> [#uses=2]
  %tmp_data_V_1 = extractvalue %0 %empty_103, 0   ; <i32> [#uses=1]
  %tmp_last_V_1 = extractvalue %0 %empty_103, 4   ; <i1> [#uses=2]
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
  %empty_104 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str39, i32 %tmp_1) ; <i32> [#uses=0]
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
  %empty_105 = call %0 @_ssdm_op_FifoRead.volatile.i32P.i4P.i4P.i1P.i1P.i1P.i1P(i32* %AXI_video_strm_V_data_V, i4* %AXI_video_strm_V_keep_V, i4* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V) ; <%0> [#uses=2]
  %tmp_data_V_2 = extractvalue %0 %empty_105, 0   ; <i32> [#uses=1]
  %tmp_last_V_2 = extractvalue %0 %empty_105, 4   ; <i1> [#uses=2]
  %empty_106 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str40, i32 %tmp_2) ; <i32> [#uses=0]
  br label %bb32

bb32:                                             ; preds = %bb29, %bb31
  %axi_data_V_4 = phi i32 [ %tmp_data_V_2, %bb31 ], [ %axi_data_V_3, %bb29 ] ; <i32> [#uses=1]
  %axi_last_V_4 = phi i1 [ %tmp_last_V_2, %bb31 ], [ %eol_6, %bb29 ] ; <i1> [#uses=1]
  %eol_1 = phi i1 [ %tmp_last_V_2, %bb31 ], [ %eol, %bb29 ] ; <i1> [#uses=1]
  br i1 %eol_1, label %bb35, label %bb31

bb35:                                             ; preds = %bb32
  %empty_107 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str38, i32 %tmp_s) ; <i32> [#uses=0]
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
  %empty = call i32 (...)* @_ssdm_op_SpecFifo(i8* %ycbcr_data_stream_0_V, [8 x i8]* @str111, i32 0, i32 0, i32 0, [8 x i8]* @str111) ; <i32> [#uses=0]
  %empty_108 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %rgb_data_stream_2_V, [8 x i8]* @str108, i32 0, i32 0, i32 0, [8 x i8]* @str108) ; <i32> [#uses=0]
  %empty_109 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %rgb_data_stream_1_V, [8 x i8]* @str105, i32 0, i32 0, i32 0, [8 x i8]* @str105) ; <i32> [#uses=0]
  %empty_110 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %rgb_data_stream_0_V, [8 x i8]* @str102, i32 0, i32 0, i32 0, [8 x i8]* @str102) ; <i32> [#uses=0]
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
  %empty_111 = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @p_str44, i32 %tmp_3) ; <i32> [#uses=0]
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
  %empty = call i32 (...)* @_ssdm_op_SpecFifo(i8* %dst_data_stream_0_V, [8 x i8]* @str114, i32 0, i32 0, i32 0, [8 x i8]* @str114) ; <i32> [#uses=0]
  %empty_112 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %src_data_stream_0_V, [8 x i8]* @str111, i32 0, i32 0, i32 0, [8 x i8]* @str111) ; <i32> [#uses=0]
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
  %rbegin5 = call i32 (...)* @_ssdm_op_SpecRegionBegin([59 x i8]* @p_str57) nounwind ; <i32> [#uses=1]
  %rend449 = call i32 (...)* @_ssdm_op_SpecRegionEnd([59 x i8]* @p_str57, i32 %rbegin5) nounwind ; <i32> [#uses=0]
  %retval_i4_cast = zext i12 %src_rows_V_read_1 to i13 ; <i13> [#uses=2]
  %op2_assign = add i13 %retval_i4_cast, 1        ; <i13> [#uses=1]
  %retval_i_cast = zext i12 %src_cols_V_read_1 to i13 ; <i13> [#uses=2]
  %op2_assign_1 = add i13 %retval_i_cast, 1       ; <i13> [#uses=1]
  %op2_addr_i_i = add i13 %retval_i4_cast, -1     ; <i13> [#uses=1]
  %op2_addr_i_i1 = add i13 %retval_i_cast, -1     ; <i13> [#uses=1]
  br label %bb59

bb1:                                              ; preds = %bb56
  %tmp_4 = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @p_str50) ; <i32> [#uses=1]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, [1 x i8]* @p_str) nounwind
  %not4 = icmp ult i12 %t_V_5_cast, %src_cols_V_read_1 ; <i1> [#uses=11]
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
  %tmp_8 = icmp ugt i13 %tmp_19_cast, %op2_addr_i_i1 ; <i1> [#uses=1]
  %tmp2 = or i1 %icmp6, %icmp                     ; <i1> [#uses=1]
  %tmp3 = or i1 %tmp_1, %tmp_8                    ; <i1> [#uses=1]
  %or_cond6 = or i1 %tmp3, %tmp2                  ; <i1> [#uses=1]
  %not_tmp_s = icmp ne i8 %window_val_0_0_2, 0    ; <i1> [#uses=2]
  %countOnes_cast = zext i1 %not_tmp_s to i2      ; <i2> [#uses=1]
  %tmp_44_0_1 = icmp eq i8 %window_val_0_0_load_1, 0 ; <i1> [#uses=1]
  %tmp_45_0_1 = select i1 %not_tmp_s, i2 -2, i2 1 ; <i2> [#uses=1]
  %countOnes = select i1 %tmp_44_0_1, i2 %countOnes_cast, i2 %tmp_45_0_1 ; <i2> [#uses=2]
  %tmp_44_0_2 = icmp eq i8 %window_val_0_1_load_1, 0 ; <i1> [#uses=1]
  %tmp_45_0_2 = add i2 %countOnes, 1              ; <i2> [#uses=1]
  %countOnes_1 = select i1 %tmp_44_0_2, i2 %countOnes, i2 %tmp_45_0_2 ; <i2> [#uses=1]
  %countOnes_2_cast = zext i2 %countOnes_1 to i3  ; <i3> [#uses=2]
  %tmp_44_0_3 = icmp eq i8 %window_val_0_2_load_1, 0 ; <i1> [#uses=1]
  %tmp_45_0_3 = add i3 %countOnes_2_cast, 1       ; <i3> [#uses=1]
  %countOnes_2 = select i1 %tmp_44_0_3, i3 %countOnes_2_cast, i3 %tmp_45_0_3 ; <i3> [#uses=2]
  %tmp_44_0_4 = icmp eq i8 %window_val_0_3_load_1, 0 ; <i1> [#uses=1]
  %tmp_45_0_4 = add i3 %countOnes_2, 1            ; <i3> [#uses=1]
  %countOnes_3 = select i1 %tmp_44_0_4, i3 %countOnes_2, i3 %tmp_45_0_4 ; <i3> [#uses=2]
  %tmp_44_0_5 = icmp eq i8 %window_val_0_4_load_1, 0 ; <i1> [#uses=1]
  %tmp_45_0_5 = add i3 %countOnes_3, 1            ; <i3> [#uses=1]
  %countOnes_4 = select i1 %tmp_44_0_5, i3 %countOnes_3, i3 %tmp_45_0_5 ; <i3> [#uses=2]
  %tmp_44_0_6 = icmp eq i8 %window_val_0_5_load_1, 0 ; <i1> [#uses=1]
  %tmp_45_0_6 = add i3 %countOnes_4, 1            ; <i3> [#uses=1]
  %countOnes_5 = select i1 %tmp_44_0_6, i3 %countOnes_4, i3 %tmp_45_0_6 ; <i3> [#uses=1]
  %countOnes_6_cast = zext i3 %countOnes_5 to i4  ; <i4> [#uses=2]
  %tmp_44_0_7 = icmp eq i8 %window_val_0_6_load_1, 0 ; <i1> [#uses=1]
  %tmp_45_0_7 = add i4 %countOnes_6_cast, 1       ; <i4> [#uses=1]
  %countOnes_6 = select i1 %tmp_44_0_7, i4 %countOnes_6_cast, i4 %tmp_45_0_7 ; <i4> [#uses=2]
  %tmp_44_0_8 = icmp eq i8 %window_val_0_7_load, 0 ; <i1> [#uses=1]
  %tmp_45_0_8 = add i4 %countOnes_6, 1            ; <i4> [#uses=1]
  %countOnes_7 = select i1 %tmp_44_0_8, i4 %countOnes_6, i4 %tmp_45_0_8 ; <i4> [#uses=2]
  %tmp_44_1 = icmp eq i8 %window_val_1_0_2, 0     ; <i1> [#uses=1]
  %tmp_45_1 = add i4 %countOnes_7, 1              ; <i4> [#uses=1]
  %countOnes_8 = select i1 %tmp_44_1, i4 %countOnes_7, i4 %tmp_45_1 ; <i4> [#uses=2]
  %tmp_44_1_1 = icmp eq i8 %window_val_1_0_load_1, 0 ; <i1> [#uses=1]
  %tmp_45_1_1 = add i4 %countOnes_8, 1            ; <i4> [#uses=1]
  %countOnes_9 = select i1 %tmp_44_1_1, i4 %countOnes_8, i4 %tmp_45_1_1 ; <i4> [#uses=2]
  %tmp_44_1_2 = icmp eq i8 %window_val_1_1_load_1, 0 ; <i1> [#uses=1]
  %tmp_45_1_2 = add i4 %countOnes_9, 1            ; <i4> [#uses=1]
  %countOnes_10 = select i1 %tmp_44_1_2, i4 %countOnes_9, i4 %tmp_45_1_2 ; <i4> [#uses=2]
  %tmp_44_1_3 = icmp eq i8 %window_val_1_2_load_1, 0 ; <i1> [#uses=1]
  %tmp_45_1_3 = add i4 %countOnes_10, 1           ; <i4> [#uses=1]
  %countOnes_11 = select i1 %tmp_44_1_3, i4 %countOnes_10, i4 %tmp_45_1_3 ; <i4> [#uses=2]
  %tmp_44_1_4 = icmp eq i8 %window_val_1_3_load_1, 0 ; <i1> [#uses=1]
  %tmp_45_1_4 = add i4 %countOnes_11, 1           ; <i4> [#uses=1]
  %countOnes_12 = select i1 %tmp_44_1_4, i4 %countOnes_11, i4 %tmp_45_1_4 ; <i4> [#uses=2]
  %tmp_44_1_5 = icmp eq i8 %window_val_1_4_load_1, 0 ; <i1> [#uses=1]
  %tmp_45_1_5 = add i4 %countOnes_12, 1           ; <i4> [#uses=1]
  %countOnes_13 = select i1 %tmp_44_1_5, i4 %countOnes_12, i4 %tmp_45_1_5 ; <i4> [#uses=1]
  %countOnes_14_cast = zext i4 %countOnes_13 to i5 ; <i5> [#uses=2]
  %tmp_44_1_6 = icmp eq i8 %window_val_1_5_load_1, 0 ; <i1> [#uses=1]
  %tmp_45_1_6 = add i5 %countOnes_14_cast, 1      ; <i5> [#uses=1]
  %countOnes_14 = select i1 %tmp_44_1_6, i5 %countOnes_14_cast, i5 %tmp_45_1_6 ; <i5> [#uses=2]
  %tmp_44_1_7 = icmp eq i8 %window_val_1_6_load_1, 0 ; <i1> [#uses=1]
  %tmp_45_1_7 = add i5 %countOnes_14, 1           ; <i5> [#uses=1]
  %countOnes_15 = select i1 %tmp_44_1_7, i5 %countOnes_14, i5 %tmp_45_1_7 ; <i5> [#uses=2]
  %tmp_44_1_8 = icmp eq i8 %window_val_1_7_load, 0 ; <i1> [#uses=1]
  %tmp_45_1_8 = add i5 %countOnes_15, 1           ; <i5> [#uses=1]
  %countOnes_16 = select i1 %tmp_44_1_8, i5 %countOnes_15, i5 %tmp_45_1_8 ; <i5> [#uses=2]
  %tmp_44_2 = icmp eq i8 %window_val_2_0_2, 0     ; <i1> [#uses=1]
  %tmp_45_2 = add i5 %countOnes_16, 1             ; <i5> [#uses=1]
  %countOnes_17 = select i1 %tmp_44_2, i5 %countOnes_16, i5 %tmp_45_2 ; <i5> [#uses=2]
  %tmp_44_2_1 = icmp eq i8 %window_val_2_0_load_1, 0 ; <i1> [#uses=1]
  %tmp_45_2_1 = add i5 %countOnes_17, 1           ; <i5> [#uses=1]
  %countOnes_18 = select i1 %tmp_44_2_1, i5 %countOnes_17, i5 %tmp_45_2_1 ; <i5> [#uses=2]
  %tmp_44_2_2 = icmp eq i8 %window_val_2_1_load_1, 0 ; <i1> [#uses=1]
  %tmp_45_2_2 = add i5 %countOnes_18, 1           ; <i5> [#uses=1]
  %countOnes_19 = select i1 %tmp_44_2_2, i5 %countOnes_18, i5 %tmp_45_2_2 ; <i5> [#uses=2]
  %tmp_44_2_3 = icmp eq i8 %window_val_2_2_load_1, 0 ; <i1> [#uses=1]
  %tmp_45_2_3 = add i5 %countOnes_19, 1           ; <i5> [#uses=1]
  %countOnes_20 = select i1 %tmp_44_2_3, i5 %countOnes_19, i5 %tmp_45_2_3 ; <i5> [#uses=2]
  %tmp_44_2_4 = icmp eq i8 %window_val_2_3_load_1, 0 ; <i1> [#uses=1]
  %tmp_45_2_4 = add i5 %countOnes_20, 1           ; <i5> [#uses=1]
  %countOnes_21 = select i1 %tmp_44_2_4, i5 %countOnes_20, i5 %tmp_45_2_4 ; <i5> [#uses=2]
  %tmp_44_2_5 = icmp eq i8 %window_val_2_4_load_1, 0 ; <i1> [#uses=1]
  %tmp_45_2_5 = add i5 %countOnes_21, 1           ; <i5> [#uses=1]
  %countOnes_22 = select i1 %tmp_44_2_5, i5 %countOnes_21, i5 %tmp_45_2_5 ; <i5> [#uses=2]
  %tmp_44_2_6 = icmp eq i8 %window_val_2_5_load_1, 0 ; <i1> [#uses=1]
  %tmp_45_2_6 = add i5 %countOnes_22, 1           ; <i5> [#uses=1]
  %countOnes_23 = select i1 %tmp_44_2_6, i5 %countOnes_22, i5 %tmp_45_2_6 ; <i5> [#uses=2]
  %tmp_44_2_7 = icmp eq i8 %window_val_2_6_load_1, 0 ; <i1> [#uses=1]
  %tmp_45_2_7 = add i5 %countOnes_23, 1           ; <i5> [#uses=1]
  %countOnes_24 = select i1 %tmp_44_2_7, i5 %countOnes_23, i5 %tmp_45_2_7 ; <i5> [#uses=2]
  %tmp_44_2_8 = icmp eq i8 %window_val_2_7_load, 0 ; <i1> [#uses=1]
  %tmp_45_2_8 = add i5 %countOnes_24, 1           ; <i5> [#uses=1]
  %countOnes_25 = select i1 %tmp_44_2_8, i5 %countOnes_24, i5 %tmp_45_2_8 ; <i5> [#uses=2]
  %tmp_44_3 = icmp eq i8 %window_val_3_0_2, 0     ; <i1> [#uses=1]
  %tmp_45_3 = add i5 %countOnes_25, 1             ; <i5> [#uses=1]
  %countOnes_26 = select i1 %tmp_44_3, i5 %countOnes_25, i5 %tmp_45_3 ; <i5> [#uses=2]
  %tmp_44_3_1 = icmp eq i8 %window_val_3_0_load_1, 0 ; <i1> [#uses=1]
  %tmp_45_3_1 = add i5 %countOnes_26, 1           ; <i5> [#uses=1]
  %countOnes_27 = select i1 %tmp_44_3_1, i5 %countOnes_26, i5 %tmp_45_3_1 ; <i5> [#uses=2]
  %tmp_44_3_2 = icmp eq i8 %window_val_3_1_load_1, 0 ; <i1> [#uses=1]
  %tmp_45_3_2 = add i5 %countOnes_27, 1           ; <i5> [#uses=1]
  %countOnes_28 = select i1 %tmp_44_3_2, i5 %countOnes_27, i5 %tmp_45_3_2 ; <i5> [#uses=2]
  %tmp_44_3_3 = icmp eq i8 %window_val_3_2_load_1, 0 ; <i1> [#uses=1]
  %tmp_45_3_3 = add i5 %countOnes_28, 1           ; <i5> [#uses=1]
  %countOnes_29 = select i1 %tmp_44_3_3, i5 %countOnes_28, i5 %tmp_45_3_3 ; <i5> [#uses=1]
  %countOnes_30_cast = zext i5 %countOnes_29 to i6 ; <i6> [#uses=2]
  %tmp_44_3_4 = icmp eq i8 %window_val_3_3_load_1, 0 ; <i1> [#uses=1]
  %tmp_45_3_4 = add i6 %countOnes_30_cast, 1      ; <i6> [#uses=1]
  %countOnes_30 = select i1 %tmp_44_3_4, i6 %countOnes_30_cast, i6 %tmp_45_3_4 ; <i6> [#uses=2]
  %tmp_44_3_5 = icmp eq i8 %window_val_3_4_load_1, 0 ; <i1> [#uses=1]
  %tmp_45_3_5 = add i6 %countOnes_30, 1           ; <i6> [#uses=1]
  %countOnes_31 = select i1 %tmp_44_3_5, i6 %countOnes_30, i6 %tmp_45_3_5 ; <i6> [#uses=2]
  %tmp_44_3_6 = icmp eq i8 %window_val_3_5_load_1, 0 ; <i1> [#uses=1]
  %tmp_45_3_6 = add i6 %countOnes_31, 1           ; <i6> [#uses=1]
  %countOnes_32 = select i1 %tmp_44_3_6, i6 %countOnes_31, i6 %tmp_45_3_6 ; <i6> [#uses=2]
  %tmp_44_3_7 = icmp eq i8 %window_val_3_6_load_1, 0 ; <i1> [#uses=1]
  %tmp_45_3_7 = add i6 %countOnes_32, 1           ; <i6> [#uses=1]
  %countOnes_33 = select i1 %tmp_44_3_7, i6 %countOnes_32, i6 %tmp_45_3_7 ; <i6> [#uses=2]
  %tmp_44_3_8 = icmp eq i8 %window_val_3_7_load, 0 ; <i1> [#uses=1]
  %tmp_45_3_8 = add i6 %countOnes_33, 1           ; <i6> [#uses=1]
  %countOnes_34 = select i1 %tmp_44_3_8, i6 %countOnes_33, i6 %tmp_45_3_8 ; <i6> [#uses=2]
  %tmp_44_4 = icmp eq i8 %window_val_4_0_2, 0     ; <i1> [#uses=1]
  %tmp_45_4 = add i6 %countOnes_34, 1             ; <i6> [#uses=1]
  %countOnes_35 = select i1 %tmp_44_4, i6 %countOnes_34, i6 %tmp_45_4 ; <i6> [#uses=2]
  %tmp_44_4_1 = icmp eq i8 %window_val_4_0_load_1, 0 ; <i1> [#uses=1]
  %tmp_45_4_1 = add i6 %countOnes_35, 1           ; <i6> [#uses=1]
  %countOnes_36 = select i1 %tmp_44_4_1, i6 %countOnes_35, i6 %tmp_45_4_1 ; <i6> [#uses=2]
  %tmp_44_4_2 = icmp eq i8 %window_val_4_1_load_1, 0 ; <i1> [#uses=1]
  %tmp_45_4_2 = add i6 %countOnes_36, 1           ; <i6> [#uses=1]
  %countOnes_37 = select i1 %tmp_44_4_2, i6 %countOnes_36, i6 %tmp_45_4_2 ; <i6> [#uses=2]
  %tmp_44_4_3 = icmp eq i8 %window_val_4_2_load_1, 0 ; <i1> [#uses=1]
  %tmp_45_4_3 = add i6 %countOnes_37, 1           ; <i6> [#uses=1]
  %countOnes_38 = select i1 %tmp_44_4_3, i6 %countOnes_37, i6 %tmp_45_4_3 ; <i6> [#uses=2]
  %tmp_44_4_4 = icmp eq i8 %window_val_4_3_load_1, 0 ; <i1> [#uses=1]
  %tmp_45_4_4 = add i6 %countOnes_38, 1           ; <i6> [#uses=1]
  %countOnes_39 = select i1 %tmp_44_4_4, i6 %countOnes_38, i6 %tmp_45_4_4 ; <i6> [#uses=2]
  %tmp_44_4_5 = icmp eq i8 %window_val_4_4_load_1, 0 ; <i1> [#uses=1]
  %tmp_45_4_5 = add i6 %countOnes_39, 1           ; <i6> [#uses=1]
  %countOnes_40 = select i1 %tmp_44_4_5, i6 %countOnes_39, i6 %tmp_45_4_5 ; <i6> [#uses=2]
  %tmp_44_4_6 = icmp eq i8 %window_val_4_5_load_1, 0 ; <i1> [#uses=1]
  %tmp_45_4_6 = add i6 %countOnes_40, 1           ; <i6> [#uses=1]
  %countOnes_41 = select i1 %tmp_44_4_6, i6 %countOnes_40, i6 %tmp_45_4_6 ; <i6> [#uses=2]
  %tmp_44_4_7 = icmp eq i8 %window_val_4_6_load_1, 0 ; <i1> [#uses=1]
  %tmp_45_4_7 = add i6 %countOnes_41, 1           ; <i6> [#uses=1]
  %countOnes_42 = select i1 %tmp_44_4_7, i6 %countOnes_41, i6 %tmp_45_4_7 ; <i6> [#uses=2]
  %tmp_44_4_8 = icmp eq i8 %window_val_4_7_load, 0 ; <i1> [#uses=1]
  %tmp_45_4_8 = add i6 %countOnes_42, 1           ; <i6> [#uses=1]
  %countOnes_43 = select i1 %tmp_44_4_8, i6 %countOnes_42, i6 %tmp_45_4_8 ; <i6> [#uses=2]
  %tmp_44_5 = icmp eq i8 %window_val_5_0_2, 0     ; <i1> [#uses=1]
  %tmp_45_5 = add i6 %countOnes_43, 1             ; <i6> [#uses=1]
  %countOnes_44 = select i1 %tmp_44_5, i6 %countOnes_43, i6 %tmp_45_5 ; <i6> [#uses=2]
  %tmp_44_5_1 = icmp eq i8 %window_val_5_0_load_1, 0 ; <i1> [#uses=1]
  %tmp_45_5_1 = add i6 %countOnes_44, 1           ; <i6> [#uses=1]
  %countOnes_45 = select i1 %tmp_44_5_1, i6 %countOnes_44, i6 %tmp_45_5_1 ; <i6> [#uses=2]
  %tmp_44_5_2 = icmp eq i8 %window_val_5_1_load_1, 0 ; <i1> [#uses=1]
  %tmp_45_5_2 = add i6 %countOnes_45, 1           ; <i6> [#uses=1]
  %countOnes_46 = select i1 %tmp_44_5_2, i6 %countOnes_45, i6 %tmp_45_5_2 ; <i6> [#uses=2]
  %tmp_44_5_3 = icmp eq i8 %window_val_5_2_load_1, 0 ; <i1> [#uses=1]
  %tmp_45_5_3 = add i6 %countOnes_46, 1           ; <i6> [#uses=1]
  %countOnes_47 = select i1 %tmp_44_5_3, i6 %countOnes_46, i6 %tmp_45_5_3 ; <i6> [#uses=2]
  %tmp_44_5_4 = icmp eq i8 %window_val_5_3_load_1, 0 ; <i1> [#uses=1]
  %tmp_45_5_4 = add i6 %countOnes_47, 1           ; <i6> [#uses=1]
  %countOnes_48 = select i1 %tmp_44_5_4, i6 %countOnes_47, i6 %tmp_45_5_4 ; <i6> [#uses=2]
  %tmp_44_5_5 = icmp eq i8 %window_val_5_4_load_1, 0 ; <i1> [#uses=1]
  %tmp_45_5_5 = add i6 %countOnes_48, 1           ; <i6> [#uses=1]
  %countOnes_49 = select i1 %tmp_44_5_5, i6 %countOnes_48, i6 %tmp_45_5_5 ; <i6> [#uses=2]
  %tmp_44_5_6 = icmp eq i8 %window_val_5_5_load_1, 0 ; <i1> [#uses=1]
  %tmp_45_5_6 = add i6 %countOnes_49, 1           ; <i6> [#uses=1]
  %countOnes_50 = select i1 %tmp_44_5_6, i6 %countOnes_49, i6 %tmp_45_5_6 ; <i6> [#uses=2]
  %tmp_44_5_7 = icmp eq i8 %window_val_5_6_load_1, 0 ; <i1> [#uses=1]
  %tmp_45_5_7 = add i6 %countOnes_50, 1           ; <i6> [#uses=1]
  %countOnes_51 = select i1 %tmp_44_5_7, i6 %countOnes_50, i6 %tmp_45_5_7 ; <i6> [#uses=2]
  %tmp_44_5_8 = icmp eq i8 %window_val_5_7_load, 0 ; <i1> [#uses=1]
  %tmp_45_5_8 = add i6 %countOnes_51, 1           ; <i6> [#uses=1]
  %countOnes_52 = select i1 %tmp_44_5_8, i6 %countOnes_51, i6 %tmp_45_5_8 ; <i6> [#uses=2]
  %tmp_44_6 = icmp eq i8 %window_val_6_0_2, 0     ; <i1> [#uses=1]
  %tmp_45_6 = add i6 %countOnes_52, 1             ; <i6> [#uses=1]
  %countOnes_53 = select i1 %tmp_44_6, i6 %countOnes_52, i6 %tmp_45_6 ; <i6> [#uses=2]
  %tmp_44_6_1 = icmp eq i8 %window_val_6_0_load_1, 0 ; <i1> [#uses=1]
  %tmp_45_6_1 = add i6 %countOnes_53, 1           ; <i6> [#uses=1]
  %countOnes_54 = select i1 %tmp_44_6_1, i6 %countOnes_53, i6 %tmp_45_6_1 ; <i6> [#uses=2]
  %tmp_44_6_2 = icmp eq i8 %window_val_6_1_load_1, 0 ; <i1> [#uses=1]
  %tmp_45_6_2 = add i6 %countOnes_54, 1           ; <i6> [#uses=1]
  %countOnes_55 = select i1 %tmp_44_6_2, i6 %countOnes_54, i6 %tmp_45_6_2 ; <i6> [#uses=2]
  %tmp_44_6_3 = icmp eq i8 %window_val_6_2_load_1, 0 ; <i1> [#uses=1]
  %tmp_45_6_3 = add i6 %countOnes_55, 1           ; <i6> [#uses=1]
  %countOnes_56 = select i1 %tmp_44_6_3, i6 %countOnes_55, i6 %tmp_45_6_3 ; <i6> [#uses=2]
  %tmp_44_6_4 = icmp eq i8 %window_val_6_3_load_1, 0 ; <i1> [#uses=1]
  %tmp_45_6_4 = add i6 %countOnes_56, 1           ; <i6> [#uses=1]
  %countOnes_57 = select i1 %tmp_44_6_4, i6 %countOnes_56, i6 %tmp_45_6_4 ; <i6> [#uses=2]
  %tmp_44_6_5 = icmp eq i8 %window_val_6_4_load_1, 0 ; <i1> [#uses=1]
  %tmp_45_6_5 = add i6 %countOnes_57, 1           ; <i6> [#uses=1]
  %countOnes_58 = select i1 %tmp_44_6_5, i6 %countOnes_57, i6 %tmp_45_6_5 ; <i6> [#uses=2]
  %tmp_44_6_6 = icmp eq i8 %window_val_6_5_load_1, 0 ; <i1> [#uses=1]
  %tmp_45_6_6 = add i6 %countOnes_58, 1           ; <i6> [#uses=1]
  %countOnes_59 = select i1 %tmp_44_6_6, i6 %countOnes_58, i6 %tmp_45_6_6 ; <i6> [#uses=2]
  %tmp_44_6_7 = icmp eq i8 %window_val_6_6_load_1, 0 ; <i1> [#uses=1]
  %tmp_45_6_7 = add i6 %countOnes_59, 1           ; <i6> [#uses=1]
  %countOnes_60 = select i1 %tmp_44_6_7, i6 %countOnes_59, i6 %tmp_45_6_7 ; <i6> [#uses=2]
  %tmp_44_6_8 = icmp eq i8 %window_val_6_7_load, 0 ; <i1> [#uses=1]
  %tmp_45_6_8 = add i6 %countOnes_60, 1           ; <i6> [#uses=1]
  %countOnes_61 = select i1 %tmp_44_6_8, i6 %countOnes_60, i6 %tmp_45_6_8 ; <i6> [#uses=1]
  %countOnes_62_cast = zext i6 %countOnes_61 to i7 ; <i7> [#uses=2]
  %tmp_44_7 = icmp eq i8 %window_val_7_0_2, 0     ; <i1> [#uses=1]
  %tmp_45_7 = add i7 %countOnes_62_cast, 1        ; <i7> [#uses=1]
  %countOnes_62 = select i1 %tmp_44_7, i7 %countOnes_62_cast, i7 %tmp_45_7 ; <i7> [#uses=2]
  %tmp_44_7_1 = icmp eq i8 %window_val_7_0_load_1, 0 ; <i1> [#uses=1]
  %tmp_45_7_1 = add i7 %countOnes_62, 1           ; <i7> [#uses=1]
  %countOnes_63 = select i1 %tmp_44_7_1, i7 %countOnes_62, i7 %tmp_45_7_1 ; <i7> [#uses=2]
  %tmp_44_7_2 = icmp eq i8 %window_val_7_1_load_1, 0 ; <i1> [#uses=1]
  %tmp_45_7_2 = add i7 %countOnes_63, 1           ; <i7> [#uses=1]
  %countOnes_64 = select i1 %tmp_44_7_2, i7 %countOnes_63, i7 %tmp_45_7_2 ; <i7> [#uses=2]
  %tmp_44_7_3 = icmp eq i8 %window_val_7_2_load_1, 0 ; <i1> [#uses=1]
  %tmp_45_7_3 = add i7 %countOnes_64, 1           ; <i7> [#uses=1]
  %countOnes_65 = select i1 %tmp_44_7_3, i7 %countOnes_64, i7 %tmp_45_7_3 ; <i7> [#uses=2]
  %tmp_44_7_4 = icmp eq i8 %window_val_7_3_load_1, 0 ; <i1> [#uses=1]
  %tmp_45_7_4 = add i7 %countOnes_65, 1           ; <i7> [#uses=1]
  %countOnes_66 = select i1 %tmp_44_7_4, i7 %countOnes_65, i7 %tmp_45_7_4 ; <i7> [#uses=2]
  %tmp_44_7_5 = icmp eq i8 %window_val_7_4_load_1, 0 ; <i1> [#uses=1]
  %tmp_45_7_5 = add i7 %countOnes_66, 1           ; <i7> [#uses=1]
  %countOnes_67 = select i1 %tmp_44_7_5, i7 %countOnes_66, i7 %tmp_45_7_5 ; <i7> [#uses=2]
  %tmp_44_7_6 = icmp eq i8 %window_val_7_5_load_1, 0 ; <i1> [#uses=1]
  %tmp_45_7_6 = add i7 %countOnes_67, 1           ; <i7> [#uses=1]
  %countOnes_68 = select i1 %tmp_44_7_6, i7 %countOnes_67, i7 %tmp_45_7_6 ; <i7> [#uses=2]
  %tmp_44_7_7 = icmp eq i8 %window_val_7_6_load_1, 0 ; <i1> [#uses=1]
  %tmp_45_7_7 = add i7 %countOnes_68, 1           ; <i7> [#uses=1]
  %countOnes_69 = select i1 %tmp_44_7_7, i7 %countOnes_68, i7 %tmp_45_7_7 ; <i7> [#uses=2]
  %tmp_44_7_8 = icmp eq i8 %window_val_7_7_load, 0 ; <i1> [#uses=1]
  %tmp_45_7_8 = add i7 %countOnes_69, 1           ; <i7> [#uses=1]
  %countOnes_70 = select i1 %tmp_44_7_8, i7 %countOnes_69, i7 %tmp_45_7_8 ; <i7> [#uses=2]
  %tmp_44_8 = icmp eq i8 %window_val_8_0_2, 0     ; <i1> [#uses=1]
  %tmp_45_8 = add i7 %countOnes_70, 1             ; <i7> [#uses=1]
  %countOnes_71 = select i1 %tmp_44_8, i7 %countOnes_70, i7 %tmp_45_8 ; <i7> [#uses=2]
  %tmp_44_8_1 = icmp eq i8 %window_val_8_0_load_1, 0 ; <i1> [#uses=1]
  %tmp_45_8_1 = add i7 %countOnes_71, 1           ; <i7> [#uses=1]
  %countOnes_72 = select i1 %tmp_44_8_1, i7 %countOnes_71, i7 %tmp_45_8_1 ; <i7> [#uses=2]
  %tmp_44_8_2 = icmp eq i8 %window_val_8_1_load_1, 0 ; <i1> [#uses=1]
  %tmp_45_8_2 = add i7 %countOnes_72, 1           ; <i7> [#uses=1]
  %countOnes_73 = select i1 %tmp_44_8_2, i7 %countOnes_72, i7 %tmp_45_8_2 ; <i7> [#uses=2]
  %tmp_44_8_3 = icmp eq i8 %window_val_8_2_load_1, 0 ; <i1> [#uses=1]
  %tmp_45_8_3 = add i7 %countOnes_73, 1           ; <i7> [#uses=1]
  %countOnes_74 = select i1 %tmp_44_8_3, i7 %countOnes_73, i7 %tmp_45_8_3 ; <i7> [#uses=2]
  %tmp_44_8_4 = icmp eq i8 %window_val_8_3_load_1, 0 ; <i1> [#uses=1]
  %tmp_45_8_4 = add i7 %countOnes_74, 1           ; <i7> [#uses=1]
  %countOnes_75 = select i1 %tmp_44_8_4, i7 %countOnes_74, i7 %tmp_45_8_4 ; <i7> [#uses=2]
  %tmp_44_8_5 = icmp eq i8 %window_val_8_4_load_1, 0 ; <i1> [#uses=1]
  %tmp_45_8_5 = add i7 %countOnes_75, 1           ; <i7> [#uses=1]
  %countOnes_76 = select i1 %tmp_44_8_5, i7 %countOnes_75, i7 %tmp_45_8_5 ; <i7> [#uses=2]
  %tmp_44_8_6 = icmp eq i8 %window_val_8_5_load_1, 0 ; <i1> [#uses=1]
  %tmp_45_8_6 = add i7 %countOnes_76, 1           ; <i7> [#uses=1]
  %countOnes_77 = select i1 %tmp_44_8_6, i7 %countOnes_76, i7 %tmp_45_8_6 ; <i7> [#uses=2]
  %tmp_44_8_7 = icmp eq i8 %window_val_8_6_load_1, 0 ; <i1> [#uses=1]
  %tmp_45_8_7 = add i7 %countOnes_77, 1           ; <i7> [#uses=1]
  %countOnes_78 = select i1 %tmp_44_8_7, i7 %countOnes_77, i7 %tmp_45_8_7 ; <i7> [#uses=2]
  %tmp_44_8_8 = icmp eq i8 %window_val_8_7_load, 0 ; <i1> [#uses=1]
  %tmp_45_8_8 = add i7 %countOnes_78, 1           ; <i7> [#uses=1]
  %countOnes_79 = select i1 %tmp_44_8_8, i7 %countOnes_78, i7 %tmp_45_8_8 ; <i7> [#uses=1]
  %tmp_9 = icmp ugt i7 %countOnes_79, 41          ; <i1> [#uses=1]
  %not_or_cond6 = xor i1 %or_cond6, true          ; <i1> [#uses=1]
  %pixel_out_val = and i1 %tmp_9, %not_or_cond6   ; <i1> [#uses=1]
  %pixel_out_val_2_cast = sext i1 %pixel_out_val to i8 ; <i8> [#uses=1]
  %notlhs = icmp ne i11 %t_V, 0                   ; <i1> [#uses=1]
  %not_or_cond = and i1 %notrhs, %notlhs          ; <i1> [#uses=1]
  br i1 %not_or_cond, label %bb54, label %bb55

bb54:                                             ; preds = %bb.i.0_ifconv
  call void @_ssdm_op_FifoWrite.volatile.i8P(i8* %dst_data_stream_0_V, i8 %pixel_out_val_2_cast)
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
  %empty_113 = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @p_str50, i32 %tmp_4) ; <i32> [#uses=0]
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
  %t_V_5_cast = zext i11 %t_V to i12              ; <i12> [#uses=1]
  %tmp_2 = zext i11 %t_V to i64                   ; <i64> [#uses=9]
  %tmp_19_cast = zext i11 %t_V to i13             ; <i13> [#uses=2]
  %tmp_3 = icmp ult i13 %tmp_19_cast, %op2_assign_1 ; <i1> [#uses=1]
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
  %empty = call i32 (...)* @_ssdm_op_SpecFifo(i8* %dst_data_stream_0_V, [8 x i8]* @str117, i32 0, i32 0, i32 0, [8 x i8]* @str117) ; <i32> [#uses=0]
  %empty_114 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %src_data_stream_0_V, [8 x i8]* @str114, i32 0, i32 0, i32 0, [8 x i8]* @str114) ; <i32> [#uses=0]
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
  %rbegin5 = call i32 (...)* @_ssdm_op_SpecRegionBegin([59 x i8]* @p_str57) nounwind ; <i32> [#uses=1]
  %rend449 = call i32 (...)* @_ssdm_op_SpecRegionEnd([59 x i8]* @p_str57, i32 %rbegin5) nounwind ; <i32> [#uses=0]
  %retval_i4_cast = zext i12 %p_read_2 to i13     ; <i13> [#uses=2]
  %op2_assign = add i13 %retval_i4_cast, 1        ; <i13> [#uses=1]
  %retval_i_cast = zext i12 %p_read_1 to i13      ; <i13> [#uses=2]
  %op2_assign_2 = add i13 %retval_i_cast, 1       ; <i13> [#uses=1]
  %op2_addr_i_i = add i13 %retval_i4_cast, -1     ; <i13> [#uses=1]
  %op2_addr_i_i1 = add i13 %retval_i_cast, -1     ; <i13> [#uses=1]
  br label %bb59

bb1:                                              ; preds = %bb56
  %tmp_4 = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @p_str50) ; <i32> [#uses=1]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, [1 x i8]* @p_str) nounwind
  %not4 = icmp ult i12 %t_V_5_cast, %p_read_1     ; <i1> [#uses=11]
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
  %tmp_5 = icmp ugt i13 %tmp_19_cast, %op2_addr_i_i1 ; <i1> [#uses=1]
  %tmp2 = or i1 %icmp6, %icmp                     ; <i1> [#uses=1]
  %tmp3 = or i1 %tmp_1, %tmp_5                    ; <i1> [#uses=1]
  %or_cond6 = or i1 %tmp3, %tmp2                  ; <i1> [#uses=1]
  %not_tmp_s = icmp ne i8 %window_val_0_0_4, 0    ; <i1> [#uses=2]
  %countOnes_cast = zext i1 %not_tmp_s to i2      ; <i2> [#uses=1]
  %tmp_44_0_1 = icmp eq i8 %window_val_0_0_load_2, 0 ; <i1> [#uses=1]
  %tmp_45_0_1 = select i1 %not_tmp_s, i2 -2, i2 1 ; <i2> [#uses=1]
  %countOnes_1 = select i1 %tmp_44_0_1, i2 %countOnes_cast, i2 %tmp_45_0_1 ; <i2> [#uses=2]
  %tmp_44_0_2 = icmp eq i8 %window_val_0_1_load_2, 0 ; <i1> [#uses=1]
  %tmp_45_0_2 = add i2 %countOnes_1, 1            ; <i2> [#uses=1]
  %countOnes_2 = select i1 %tmp_44_0_2, i2 %countOnes_1, i2 %tmp_45_0_2 ; <i2> [#uses=1]
  %countOnes_2_cast = zext i2 %countOnes_2 to i3  ; <i3> [#uses=2]
  %tmp_44_0_3 = icmp eq i8 %window_val_0_2_load_2, 0 ; <i1> [#uses=1]
  %tmp_45_0_3 = add i3 %countOnes_2_cast, 1       ; <i3> [#uses=1]
  %countOnes_3 = select i1 %tmp_44_0_3, i3 %countOnes_2_cast, i3 %tmp_45_0_3 ; <i3> [#uses=2]
  %tmp_44_0_4 = icmp eq i8 %window_val_0_3_load_2, 0 ; <i1> [#uses=1]
  %tmp_45_0_4 = add i3 %countOnes_3, 1            ; <i3> [#uses=1]
  %countOnes_4 = select i1 %tmp_44_0_4, i3 %countOnes_3, i3 %tmp_45_0_4 ; <i3> [#uses=2]
  %tmp_44_0_5 = icmp eq i8 %window_val_0_4_load_2, 0 ; <i1> [#uses=1]
  %tmp_45_0_5 = add i3 %countOnes_4, 1            ; <i3> [#uses=1]
  %countOnes_5 = select i1 %tmp_44_0_5, i3 %countOnes_4, i3 %tmp_45_0_5 ; <i3> [#uses=2]
  %tmp_44_0_6 = icmp eq i8 %window_val_0_5_load61, 0 ; <i1> [#uses=1]
  %tmp_45_0_6 = add i3 %countOnes_5, 1            ; <i3> [#uses=1]
  %countOnes_6 = select i1 %tmp_44_0_6, i3 %countOnes_5, i3 %tmp_45_0_6 ; <i3> [#uses=1]
  %countOnes_6_cast = zext i3 %countOnes_6 to i4  ; <i4> [#uses=2]
  %tmp_44_0_7 = icmp eq i8 %window_val_0_6_load_2, 0 ; <i1> [#uses=1]
  %tmp_45_0_7 = add i4 %countOnes_6_cast, 1       ; <i4> [#uses=1]
  %countOnes_7 = select i1 %tmp_44_0_7, i4 %countOnes_6_cast, i4 %tmp_45_0_7 ; <i4> [#uses=2]
  %tmp_44_0_8 = icmp eq i8 %window_val_0_7_load, 0 ; <i1> [#uses=1]
  %tmp_45_0_8 = add i4 %countOnes_7, 1            ; <i4> [#uses=1]
  %countOnes_8 = select i1 %tmp_44_0_8, i4 %countOnes_7, i4 %tmp_45_0_8 ; <i4> [#uses=2]
  %tmp_44_1 = icmp eq i8 %window_val_1_0_4, 0     ; <i1> [#uses=1]
  %tmp_45_1 = add i4 %countOnes_8, 1              ; <i4> [#uses=1]
  %countOnes_9 = select i1 %tmp_44_1, i4 %countOnes_8, i4 %tmp_45_1 ; <i4> [#uses=2]
  %tmp_44_1_1 = icmp eq i8 %window_val_1_0_load_2, 0 ; <i1> [#uses=1]
  %tmp_45_1_1 = add i4 %countOnes_9, 1            ; <i4> [#uses=1]
  %countOnes = select i1 %tmp_44_1_1, i4 %countOnes_9, i4 %tmp_45_1_1 ; <i4> [#uses=2]
  %tmp_44_1_2 = icmp eq i8 %window_val_1_1_load_2, 0 ; <i1> [#uses=1]
  %tmp_45_1_2 = add i4 %countOnes, 1              ; <i4> [#uses=1]
  %countOnes_80 = select i1 %tmp_44_1_2, i4 %countOnes, i4 %tmp_45_1_2 ; <i4> [#uses=2]
  %tmp_44_1_3 = icmp eq i8 %window_val_1_2_load_2, 0 ; <i1> [#uses=1]
  %tmp_45_1_3 = add i4 %countOnes_80, 1           ; <i4> [#uses=1]
  %countOnes_81 = select i1 %tmp_44_1_3, i4 %countOnes_80, i4 %tmp_45_1_3 ; <i4> [#uses=2]
  %tmp_44_1_4 = icmp eq i8 %window_val_1_3_load_2, 0 ; <i1> [#uses=1]
  %tmp_45_1_4 = add i4 %countOnes_81, 1           ; <i4> [#uses=1]
  %countOnes_82 = select i1 %tmp_44_1_4, i4 %countOnes_81, i4 %tmp_45_1_4 ; <i4> [#uses=2]
  %tmp_44_1_5 = icmp eq i8 %window_val_1_4_load_2, 0 ; <i1> [#uses=1]
  %tmp_45_1_5 = add i4 %countOnes_82, 1           ; <i4> [#uses=1]
  %countOnes_83 = select i1 %tmp_44_1_5, i4 %countOnes_82, i4 %tmp_45_1_5 ; <i4> [#uses=1]
  %countOnes_14_cast = zext i4 %countOnes_83 to i5 ; <i5> [#uses=2]
  %tmp_44_1_6 = icmp eq i8 %window_val_1_5_load_2, 0 ; <i1> [#uses=1]
  %tmp_45_1_6 = add i5 %countOnes_14_cast, 1      ; <i5> [#uses=1]
  %countOnes_84 = select i1 %tmp_44_1_6, i5 %countOnes_14_cast, i5 %tmp_45_1_6 ; <i5> [#uses=2]
  %tmp_44_1_7 = icmp eq i8 %window_val_1_6_load_2, 0 ; <i1> [#uses=1]
  %tmp_45_1_7 = add i5 %countOnes_84, 1           ; <i5> [#uses=1]
  %countOnes_85 = select i1 %tmp_44_1_7, i5 %countOnes_84, i5 %tmp_45_1_7 ; <i5> [#uses=2]
  %tmp_44_1_8 = icmp eq i8 %window_val_1_7_load, 0 ; <i1> [#uses=1]
  %tmp_45_1_8 = add i5 %countOnes_85, 1           ; <i5> [#uses=1]
  %countOnes_86 = select i1 %tmp_44_1_8, i5 %countOnes_85, i5 %tmp_45_1_8 ; <i5> [#uses=2]
  %tmp_44_2 = icmp eq i8 %window_val_2_0_4, 0     ; <i1> [#uses=1]
  %tmp_45_2 = add i5 %countOnes_86, 1             ; <i5> [#uses=1]
  %countOnes_87 = select i1 %tmp_44_2, i5 %countOnes_86, i5 %tmp_45_2 ; <i5> [#uses=2]
  %tmp_44_2_1 = icmp eq i8 %window_val_2_0_load_2, 0 ; <i1> [#uses=1]
  %tmp_45_2_1 = add i5 %countOnes_87, 1           ; <i5> [#uses=1]
  %countOnes_88 = select i1 %tmp_44_2_1, i5 %countOnes_87, i5 %tmp_45_2_1 ; <i5> [#uses=2]
  %tmp_44_2_2 = icmp eq i8 %window_val_2_1_load51, 0 ; <i1> [#uses=1]
  %tmp_45_2_2 = add i5 %countOnes_88, 1           ; <i5> [#uses=1]
  %countOnes_89 = select i1 %tmp_44_2_2, i5 %countOnes_88, i5 %tmp_45_2_2 ; <i5> [#uses=2]
  %tmp_44_2_3 = icmp eq i8 %window_val_2_2_load_2, 0 ; <i1> [#uses=1]
  %tmp_45_2_3 = add i5 %countOnes_89, 1           ; <i5> [#uses=1]
  %countOnes_90 = select i1 %tmp_44_2_3, i5 %countOnes_89, i5 %tmp_45_2_3 ; <i5> [#uses=2]
  %tmp_44_2_4 = icmp eq i8 %window_val_2_3_load_2, 0 ; <i1> [#uses=1]
  %tmp_45_2_4 = add i5 %countOnes_90, 1           ; <i5> [#uses=1]
  %countOnes_91 = select i1 %tmp_44_2_4, i5 %countOnes_90, i5 %tmp_45_2_4 ; <i5> [#uses=2]
  %tmp_44_2_5 = icmp eq i8 %window_val_2_4_load_2, 0 ; <i1> [#uses=1]
  %tmp_45_2_5 = add i5 %countOnes_91, 1           ; <i5> [#uses=1]
  %countOnes_92 = select i1 %tmp_44_2_5, i5 %countOnes_91, i5 %tmp_45_2_5 ; <i5> [#uses=2]
  %tmp_44_2_6 = icmp eq i8 %window_val_2_5_load_2, 0 ; <i1> [#uses=1]
  %tmp_45_2_6 = add i5 %countOnes_92, 1           ; <i5> [#uses=1]
  %countOnes_93 = select i1 %tmp_44_2_6, i5 %countOnes_92, i5 %tmp_45_2_6 ; <i5> [#uses=2]
  %tmp_44_2_7 = icmp eq i8 %window_val_2_6_load_2, 0 ; <i1> [#uses=1]
  %tmp_45_2_7 = add i5 %countOnes_93, 1           ; <i5> [#uses=1]
  %countOnes_94 = select i1 %tmp_44_2_7, i5 %countOnes_93, i5 %tmp_45_2_7 ; <i5> [#uses=2]
  %tmp_44_2_8 = icmp eq i8 %window_val_2_7_load, 0 ; <i1> [#uses=1]
  %tmp_45_2_8 = add i5 %countOnes_94, 1           ; <i5> [#uses=1]
  %countOnes_95 = select i1 %tmp_44_2_8, i5 %countOnes_94, i5 %tmp_45_2_8 ; <i5> [#uses=2]
  %tmp_44_3 = icmp eq i8 %window_val_3_0_4, 0     ; <i1> [#uses=1]
  %tmp_45_3 = add i5 %countOnes_95, 1             ; <i5> [#uses=1]
  %countOnes_96 = select i1 %tmp_44_3, i5 %countOnes_95, i5 %tmp_45_3 ; <i5> [#uses=2]
  %tmp_44_3_1 = icmp eq i8 %window_val_3_0_load_2, 0 ; <i1> [#uses=1]
  %tmp_45_3_1 = add i5 %countOnes_96, 1           ; <i5> [#uses=1]
  %countOnes_97 = select i1 %tmp_44_3_1, i5 %countOnes_96, i5 %tmp_45_3_1 ; <i5> [#uses=2]
  %tmp_44_3_2 = icmp eq i8 %window_val_3_1_load_2, 0 ; <i1> [#uses=1]
  %tmp_45_3_2 = add i5 %countOnes_97, 1           ; <i5> [#uses=1]
  %countOnes_98 = select i1 %tmp_44_3_2, i5 %countOnes_97, i5 %tmp_45_3_2 ; <i5> [#uses=2]
  %tmp_44_3_3 = icmp eq i8 %window_val_3_2_load_2, 0 ; <i1> [#uses=1]
  %tmp_45_3_3 = add i5 %countOnes_98, 1           ; <i5> [#uses=1]
  %countOnes_99 = select i1 %tmp_44_3_3, i5 %countOnes_98, i5 %tmp_45_3_3 ; <i5> [#uses=1]
  %countOnes_30_cast = zext i5 %countOnes_99 to i6 ; <i6> [#uses=2]
  %tmp_44_3_4 = icmp eq i8 %window_val_3_3_load_2, 0 ; <i1> [#uses=1]
  %tmp_45_3_4 = add i6 %countOnes_30_cast, 1      ; <i6> [#uses=1]
  %countOnes_100 = select i1 %tmp_44_3_4, i6 %countOnes_30_cast, i6 %tmp_45_3_4 ; <i6> [#uses=2]
  %tmp_44_3_5 = icmp eq i8 %window_val_3_4_load41, 0 ; <i1> [#uses=1]
  %tmp_45_3_5 = add i6 %countOnes_100, 1          ; <i6> [#uses=1]
  %countOnes_101 = select i1 %tmp_44_3_5, i6 %countOnes_100, i6 %tmp_45_3_5 ; <i6> [#uses=2]
  %tmp_44_3_6 = icmp eq i8 %window_val_3_5_load_2, 0 ; <i1> [#uses=1]
  %tmp_45_3_6 = add i6 %countOnes_101, 1          ; <i6> [#uses=1]
  %countOnes_102 = select i1 %tmp_44_3_6, i6 %countOnes_101, i6 %tmp_45_3_6 ; <i6> [#uses=2]
  %tmp_44_3_7 = icmp eq i8 %window_val_3_6_load_2, 0 ; <i1> [#uses=1]
  %tmp_45_3_7 = add i6 %countOnes_102, 1          ; <i6> [#uses=1]
  %countOnes_103 = select i1 %tmp_44_3_7, i6 %countOnes_102, i6 %tmp_45_3_7 ; <i6> [#uses=2]
  %tmp_44_3_8 = icmp eq i8 %window_val_3_7_load, 0 ; <i1> [#uses=1]
  %tmp_45_3_8 = add i6 %countOnes_103, 1          ; <i6> [#uses=1]
  %countOnes_104 = select i1 %tmp_44_3_8, i6 %countOnes_103, i6 %tmp_45_3_8 ; <i6> [#uses=2]
  %tmp_44_4 = icmp eq i8 %window_val_4_0_4, 0     ; <i1> [#uses=1]
  %tmp_45_4 = add i6 %countOnes_104, 1            ; <i6> [#uses=1]
  %countOnes_105 = select i1 %tmp_44_4, i6 %countOnes_104, i6 %tmp_45_4 ; <i6> [#uses=2]
  %tmp_44_4_1 = icmp eq i8 %window_val_4_0_load_2, 0 ; <i1> [#uses=1]
  %tmp_45_4_1 = add i6 %countOnes_105, 1          ; <i6> [#uses=1]
  %countOnes_106 = select i1 %tmp_44_4_1, i6 %countOnes_105, i6 %tmp_45_4_1 ; <i6> [#uses=2]
  %tmp_44_4_2 = icmp eq i8 %window_val_4_1_load_2, 0 ; <i1> [#uses=1]
  %tmp_45_4_2 = add i6 %countOnes_106, 1          ; <i6> [#uses=1]
  %countOnes_107 = select i1 %tmp_44_4_2, i6 %countOnes_106, i6 %tmp_45_4_2 ; <i6> [#uses=2]
  %tmp_44_4_3 = icmp eq i8 %window_val_4_2_load_2, 0 ; <i1> [#uses=1]
  %tmp_45_4_3 = add i6 %countOnes_107, 1          ; <i6> [#uses=1]
  %countOnes_108 = select i1 %tmp_44_4_3, i6 %countOnes_107, i6 %tmp_45_4_3 ; <i6> [#uses=2]
  %tmp_44_4_4 = icmp eq i8 %window_val_4_3_load_2, 0 ; <i1> [#uses=1]
  %tmp_45_4_4 = add i6 %countOnes_108, 1          ; <i6> [#uses=1]
  %countOnes_109 = select i1 %tmp_44_4_4, i6 %countOnes_108, i6 %tmp_45_4_4 ; <i6> [#uses=2]
  %tmp_44_4_5 = icmp eq i8 %window_val_4_4_load_2, 0 ; <i1> [#uses=1]
  %tmp_45_4_5 = add i6 %countOnes_109, 1          ; <i6> [#uses=1]
  %countOnes_110 = select i1 %tmp_44_4_5, i6 %countOnes_109, i6 %tmp_45_4_5 ; <i6> [#uses=2]
  %tmp_44_4_6 = icmp eq i8 %window_val_4_5_load_2, 0 ; <i1> [#uses=1]
  %tmp_45_4_6 = add i6 %countOnes_110, 1          ; <i6> [#uses=1]
  %countOnes_111 = select i1 %tmp_44_4_6, i6 %countOnes_110, i6 %tmp_45_4_6 ; <i6> [#uses=2]
  %tmp_44_4_7 = icmp eq i8 %window_val_4_6_load_2, 0 ; <i1> [#uses=1]
  %tmp_45_4_7 = add i6 %countOnes_111, 1          ; <i6> [#uses=1]
  %countOnes_112 = select i1 %tmp_44_4_7, i6 %countOnes_111, i6 %tmp_45_4_7 ; <i6> [#uses=2]
  %tmp_44_4_8 = icmp eq i8 %window_val_4_7_load, 0 ; <i1> [#uses=1]
  %tmp_45_4_8 = add i6 %countOnes_112, 1          ; <i6> [#uses=1]
  %countOnes_113 = select i1 %tmp_44_4_8, i6 %countOnes_112, i6 %tmp_45_4_8 ; <i6> [#uses=2]
  %tmp_44_5 = icmp eq i8 %window_val_5_0_4, 0     ; <i1> [#uses=1]
  %tmp_45_5 = add i6 %countOnes_113, 1            ; <i6> [#uses=1]
  %countOnes_114 = select i1 %tmp_44_5, i6 %countOnes_113, i6 %tmp_45_5 ; <i6> [#uses=2]
  %tmp_44_5_1 = icmp eq i8 %window_val_5_0_load31, 0 ; <i1> [#uses=1]
  %tmp_45_5_1 = add i6 %countOnes_114, 1          ; <i6> [#uses=1]
  %countOnes_115 = select i1 %tmp_44_5_1, i6 %countOnes_114, i6 %tmp_45_5_1 ; <i6> [#uses=2]
  %tmp_44_5_2 = icmp eq i8 %window_val_5_1_load_2, 0 ; <i1> [#uses=1]
  %tmp_45_5_2 = add i6 %countOnes_115, 1          ; <i6> [#uses=1]
  %countOnes_116 = select i1 %tmp_44_5_2, i6 %countOnes_115, i6 %tmp_45_5_2 ; <i6> [#uses=2]
  %tmp_44_5_3 = icmp eq i8 %window_val_5_2_load_2, 0 ; <i1> [#uses=1]
  %tmp_45_5_3 = add i6 %countOnes_116, 1          ; <i6> [#uses=1]
  %countOnes_117 = select i1 %tmp_44_5_3, i6 %countOnes_116, i6 %tmp_45_5_3 ; <i6> [#uses=2]
  %tmp_44_5_4 = icmp eq i8 %window_val_5_3_load_2, 0 ; <i1> [#uses=1]
  %tmp_45_5_4 = add i6 %countOnes_117, 1          ; <i6> [#uses=1]
  %countOnes_118 = select i1 %tmp_44_5_4, i6 %countOnes_117, i6 %tmp_45_5_4 ; <i6> [#uses=2]
  %tmp_44_5_5 = icmp eq i8 %window_val_5_4_load_2, 0 ; <i1> [#uses=1]
  %tmp_45_5_5 = add i6 %countOnes_118, 1          ; <i6> [#uses=1]
  %countOnes_119 = select i1 %tmp_44_5_5, i6 %countOnes_118, i6 %tmp_45_5_5 ; <i6> [#uses=2]
  %tmp_44_5_6 = icmp eq i8 %window_val_5_5_load_2, 0 ; <i1> [#uses=1]
  %tmp_45_5_6 = add i6 %countOnes_119, 1          ; <i6> [#uses=1]
  %countOnes_120 = select i1 %tmp_44_5_6, i6 %countOnes_119, i6 %tmp_45_5_6 ; <i6> [#uses=2]
  %tmp_44_5_7 = icmp eq i8 %window_val_5_6_load_2, 0 ; <i1> [#uses=1]
  %tmp_45_5_7 = add i6 %countOnes_120, 1          ; <i6> [#uses=1]
  %countOnes_121 = select i1 %tmp_44_5_7, i6 %countOnes_120, i6 %tmp_45_5_7 ; <i6> [#uses=2]
  %tmp_44_5_8 = icmp eq i8 %window_val_5_7_load, 0 ; <i1> [#uses=1]
  %tmp_45_5_8 = add i6 %countOnes_121, 1          ; <i6> [#uses=1]
  %countOnes_122 = select i1 %tmp_44_5_8, i6 %countOnes_121, i6 %tmp_45_5_8 ; <i6> [#uses=2]
  %tmp_44_6 = icmp eq i8 %window_val_6_0_4, 0     ; <i1> [#uses=1]
  %tmp_45_6 = add i6 %countOnes_122, 1            ; <i6> [#uses=1]
  %countOnes_123 = select i1 %tmp_44_6, i6 %countOnes_122, i6 %tmp_45_6 ; <i6> [#uses=2]
  %tmp_44_6_1 = icmp eq i8 %window_val_6_0_load_2, 0 ; <i1> [#uses=1]
  %tmp_45_6_1 = add i6 %countOnes_123, 1          ; <i6> [#uses=1]
  %countOnes_124 = select i1 %tmp_44_6_1, i6 %countOnes_123, i6 %tmp_45_6_1 ; <i6> [#uses=2]
  %tmp_44_6_2 = icmp eq i8 %window_val_6_1_load_2, 0 ; <i1> [#uses=1]
  %tmp_45_6_2 = add i6 %countOnes_124, 1          ; <i6> [#uses=1]
  %countOnes_125 = select i1 %tmp_44_6_2, i6 %countOnes_124, i6 %tmp_45_6_2 ; <i6> [#uses=2]
  %tmp_44_6_3 = icmp eq i8 %window_val_6_2_load_2, 0 ; <i1> [#uses=1]
  %tmp_45_6_3 = add i6 %countOnes_125, 1          ; <i6> [#uses=1]
  %countOnes_126 = select i1 %tmp_44_6_3, i6 %countOnes_125, i6 %tmp_45_6_3 ; <i6> [#uses=2]
  %tmp_44_6_4 = icmp eq i8 %window_val_6_3_load21, 0 ; <i1> [#uses=1]
  %tmp_45_6_4 = add i6 %countOnes_126, 1          ; <i6> [#uses=1]
  %countOnes_127 = select i1 %tmp_44_6_4, i6 %countOnes_126, i6 %tmp_45_6_4 ; <i6> [#uses=2]
  %tmp_44_6_5 = icmp eq i8 %window_val_6_4_load_2, 0 ; <i1> [#uses=1]
  %tmp_45_6_5 = add i6 %countOnes_127, 1          ; <i6> [#uses=1]
  %countOnes_128 = select i1 %tmp_44_6_5, i6 %countOnes_127, i6 %tmp_45_6_5 ; <i6> [#uses=2]
  %tmp_44_6_6 = icmp eq i8 %window_val_6_5_load_2, 0 ; <i1> [#uses=1]
  %tmp_45_6_6 = add i6 %countOnes_128, 1          ; <i6> [#uses=1]
  %countOnes_129 = select i1 %tmp_44_6_6, i6 %countOnes_128, i6 %tmp_45_6_6 ; <i6> [#uses=2]
  %tmp_44_6_7 = icmp eq i8 %window_val_6_6_load_2, 0 ; <i1> [#uses=1]
  %tmp_45_6_7 = add i6 %countOnes_129, 1          ; <i6> [#uses=1]
  %countOnes_130 = select i1 %tmp_44_6_7, i6 %countOnes_129, i6 %tmp_45_6_7 ; <i6> [#uses=2]
  %tmp_44_6_8 = icmp eq i8 %window_val_6_7_load, 0 ; <i1> [#uses=1]
  %tmp_45_6_8 = add i6 %countOnes_130, 1          ; <i6> [#uses=1]
  %countOnes_131 = select i1 %tmp_44_6_8, i6 %countOnes_130, i6 %tmp_45_6_8 ; <i6> [#uses=1]
  %countOnes_62_cast = zext i6 %countOnes_131 to i7 ; <i7> [#uses=2]
  %tmp_44_7 = icmp eq i8 %window_val_7_0_4, 0     ; <i1> [#uses=1]
  %tmp_45_7 = add i7 %countOnes_62_cast, 1        ; <i7> [#uses=1]
  %countOnes_132 = select i1 %tmp_44_7, i7 %countOnes_62_cast, i7 %tmp_45_7 ; <i7> [#uses=2]
  %tmp_44_7_1 = icmp eq i8 %window_val_7_0_load_2, 0 ; <i1> [#uses=1]
  %tmp_45_7_1 = add i7 %countOnes_132, 1          ; <i7> [#uses=1]
  %countOnes_133 = select i1 %tmp_44_7_1, i7 %countOnes_132, i7 %tmp_45_7_1 ; <i7> [#uses=2]
  %tmp_44_7_2 = icmp eq i8 %window_val_7_1_load_2, 0 ; <i1> [#uses=1]
  %tmp_45_7_2 = add i7 %countOnes_133, 1          ; <i7> [#uses=1]
  %countOnes_134 = select i1 %tmp_44_7_2, i7 %countOnes_133, i7 %tmp_45_7_2 ; <i7> [#uses=2]
  %tmp_44_7_3 = icmp eq i8 %window_val_7_2_load_2, 0 ; <i1> [#uses=1]
  %tmp_45_7_3 = add i7 %countOnes_134, 1          ; <i7> [#uses=1]
  %countOnes_135 = select i1 %tmp_44_7_3, i7 %countOnes_134, i7 %tmp_45_7_3 ; <i7> [#uses=2]
  %tmp_44_7_4 = icmp eq i8 %window_val_7_3_load_2, 0 ; <i1> [#uses=1]
  %tmp_45_7_4 = add i7 %countOnes_135, 1          ; <i7> [#uses=1]
  %countOnes_136 = select i1 %tmp_44_7_4, i7 %countOnes_135, i7 %tmp_45_7_4 ; <i7> [#uses=2]
  %tmp_44_7_5 = icmp eq i8 %window_val_7_4_load_2, 0 ; <i1> [#uses=1]
  %tmp_45_7_5 = add i7 %countOnes_136, 1          ; <i7> [#uses=1]
  %countOnes_137 = select i1 %tmp_44_7_5, i7 %countOnes_136, i7 %tmp_45_7_5 ; <i7> [#uses=2]
  %tmp_44_7_6 = icmp eq i8 %window_val_7_5_load_2, 0 ; <i1> [#uses=1]
  %tmp_45_7_6 = add i7 %countOnes_137, 1          ; <i7> [#uses=1]
  %countOnes_138 = select i1 %tmp_44_7_6, i7 %countOnes_137, i7 %tmp_45_7_6 ; <i7> [#uses=2]
  %tmp_44_7_7 = icmp eq i8 %window_val_7_6_load11, 0 ; <i1> [#uses=1]
  %tmp_45_7_7 = add i7 %countOnes_138, 1          ; <i7> [#uses=1]
  %countOnes_139 = select i1 %tmp_44_7_7, i7 %countOnes_138, i7 %tmp_45_7_7 ; <i7> [#uses=2]
  %tmp_44_7_8 = icmp eq i8 %window_val_7_7_load, 0 ; <i1> [#uses=1]
  %tmp_45_7_8 = add i7 %countOnes_139, 1          ; <i7> [#uses=1]
  %countOnes_140 = select i1 %tmp_44_7_8, i7 %countOnes_139, i7 %tmp_45_7_8 ; <i7> [#uses=2]
  %tmp_44_8 = icmp eq i8 %window_val_8_0_4, 0     ; <i1> [#uses=1]
  %tmp_45_8 = add i7 %countOnes_140, 1            ; <i7> [#uses=1]
  %countOnes_141 = select i1 %tmp_44_8, i7 %countOnes_140, i7 %tmp_45_8 ; <i7> [#uses=2]
  %tmp_44_8_1 = icmp eq i8 %window_val_8_0_load_2, 0 ; <i1> [#uses=1]
  %tmp_45_8_1 = add i7 %countOnes_141, 1          ; <i7> [#uses=1]
  %countOnes_142 = select i1 %tmp_44_8_1, i7 %countOnes_141, i7 %tmp_45_8_1 ; <i7> [#uses=2]
  %tmp_44_8_2 = icmp eq i8 %window_val_8_1_load_2, 0 ; <i1> [#uses=1]
  %tmp_45_8_2 = add i7 %countOnes_142, 1          ; <i7> [#uses=1]
  %countOnes_143 = select i1 %tmp_44_8_2, i7 %countOnes_142, i7 %tmp_45_8_2 ; <i7> [#uses=2]
  %tmp_44_8_3 = icmp eq i8 %window_val_8_2_load_2, 0 ; <i1> [#uses=1]
  %tmp_45_8_3 = add i7 %countOnes_143, 1          ; <i7> [#uses=1]
  %countOnes_144 = select i1 %tmp_44_8_3, i7 %countOnes_143, i7 %tmp_45_8_3 ; <i7> [#uses=2]
  %tmp_44_8_4 = icmp eq i8 %window_val_8_3_load_2, 0 ; <i1> [#uses=1]
  %tmp_45_8_4 = add i7 %countOnes_144, 1          ; <i7> [#uses=1]
  %countOnes_145 = select i1 %tmp_44_8_4, i7 %countOnes_144, i7 %tmp_45_8_4 ; <i7> [#uses=2]
  %tmp_44_8_5 = icmp eq i8 %window_val_8_4_load_2, 0 ; <i1> [#uses=1]
  %tmp_45_8_5 = add i7 %countOnes_145, 1          ; <i7> [#uses=1]
  %countOnes_146 = select i1 %tmp_44_8_5, i7 %countOnes_145, i7 %tmp_45_8_5 ; <i7> [#uses=2]
  %tmp_44_8_6 = icmp eq i8 %window_val_8_5_load_2, 0 ; <i1> [#uses=1]
  %tmp_45_8_6 = add i7 %countOnes_146, 1          ; <i7> [#uses=1]
  %countOnes_147 = select i1 %tmp_44_8_6, i7 %countOnes_146, i7 %tmp_45_8_6 ; <i7> [#uses=2]
  %tmp_44_8_7 = icmp eq i8 %window_val_8_6_load_2, 0 ; <i1> [#uses=1]
  %tmp_45_8_7 = add i7 %countOnes_147, 1          ; <i7> [#uses=1]
  %countOnes_148 = select i1 %tmp_44_8_7, i7 %countOnes_147, i7 %tmp_45_8_7 ; <i7> [#uses=2]
  %tmp_44_8_8 = icmp eq i8 %window_val_8_7_load, 0 ; <i1> [#uses=1]
  %tmp_45_8_8 = add i7 %countOnes_148, 1          ; <i7> [#uses=1]
  %countOnes_149 = select i1 %tmp_44_8_8, i7 %countOnes_148, i7 %tmp_45_8_8 ; <i7> [#uses=1]
  %tmp_6 = icmp ugt i7 %countOnes_149, 41         ; <i1> [#uses=1]
  %not_or_cond6 = xor i1 %or_cond6, true          ; <i1> [#uses=1]
  %pixel_out_val = and i1 %tmp_6, %not_or_cond6   ; <i1> [#uses=1]
  %pixel_out_val_2_cast = sext i1 %pixel_out_val to i8 ; <i8> [#uses=1]
  %notlhs = icmp ne i11 %t_V, 0                   ; <i1> [#uses=1]
  %not_or_cond = and i1 %notrhs, %notlhs          ; <i1> [#uses=1]
  br i1 %not_or_cond, label %bb54, label %bb55

bb54:                                             ; preds = %bb.i.0_ifconv
  call void @_ssdm_op_FifoWrite.volatile.i8P(i8* %dst_data_stream_0_V, i8 %pixel_out_val_2_cast)
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
  %empty_115 = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @p_str50, i32 %tmp_4) ; <i32> [#uses=0]
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
  %t_V_5_cast = zext i11 %t_V to i12              ; <i12> [#uses=1]
  %tmp_2 = zext i11 %t_V to i64                   ; <i64> [#uses=9]
  %tmp_19_cast = zext i11 %t_V to i13             ; <i13> [#uses=2]
  %tmp_3 = icmp ult i13 %tmp_19_cast, %op2_assign_2 ; <i1> [#uses=1]
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

define internal fastcc void @finger_counter(i12 %src_rows_V_read, i12 %src_cols_V_read, i8* %src_data_stream_0_V, i8* %dst_data_stream_0_V, i8* %dst_data_stream_1_V, i8* %dst_data_stream_2_V) {
entry:
  %pixel_in_val = alloca i8                       ; <i8*> [#uses=3]
  %empty = call i32 (...)* @_ssdm_op_SpecFifo(i8* %dst_data_stream_2_V, [8 x i8]* @str126, i32 0, i32 0, i32 0, [8 x i8]* @str126) ; <i32> [#uses=0]
  %empty_116 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %dst_data_stream_1_V, [8 x i8]* @str123, i32 0, i32 0, i32 0, [8 x i8]* @str123) ; <i32> [#uses=0]
  %empty_117 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %dst_data_stream_0_V, [8 x i8]* @str120, i32 0, i32 0, i32 0, [8 x i8]* @str120) ; <i32> [#uses=0]
  %empty_118 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %src_data_stream_0_V, [8 x i8]* @str117, i32 0, i32 0, i32 0, [8 x i8]* @str117) ; <i32> [#uses=0]
  %src_cols_V_read_2 = call i12 @_ssdm_op_WireRead.i12(i12 %src_cols_V_read) ; <i12> [#uses=2]
  %src_rows_V_read_2 = call i12 @_ssdm_op_WireRead.i12(i12 %src_rows_V_read) ; <i12> [#uses=2]
  %retval_i4_cast = zext i12 %src_rows_V_read_2 to i13 ; <i13> [#uses=1]
  %op2_assign = add i13 %retval_i4_cast, 1        ; <i13> [#uses=1]
  %retval_i_cast = zext i12 %src_cols_V_read_2 to i13 ; <i13> [#uses=1]
  %op2_assign_3 = add i13 %retval_i_cast, 1       ; <i13> [#uses=1]
  store i8 0, i8* %pixel_in_val
  br label %bb35

bb1:                                              ; preds = %bb25
  %tmp_9 = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @p_str45) ; <i32> [#uses=1]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, [1 x i8]* @p_str) nounwind
  %not4 = icmp ult i12 %t_V, %src_cols_V_read_2   ; <i1> [#uses=1]
  %or_cond = and i1 %not, %not4                   ; <i1> [#uses=1]
  br i1 %or_cond, label %bb9, label %bb10_ifconv

bb9:                                              ; preds = %bb1
  %tmp = call i8 @_ssdm_op_FifoRead.volatile.i8P(i8* %src_data_stream_0_V) ; <i8> [#uses=1]
  store i8 %tmp, i8* %pixel_in_val
  br label %bb10_ifconv

bb10_ifconv:                                      ; preds = %bb9, %bb1
  %notlhs = icmp ne i12 %t_V, 0                   ; <i1> [#uses=1]
  %not_or_cond = and i1 %notrhs, %notlhs          ; <i1> [#uses=1]
  br i1 %not_or_cond, label %bb23, label %bb24

bb23:                                             ; preds = %bb10_ifconv
  %pixel_in_val_load = load i8* %pixel_in_val     ; <i8> [#uses=3]
  call void @_ssdm_op_FifoWrite.volatile.i8P(i8* %dst_data_stream_0_V, i8 %pixel_in_val_load)
  call void @_ssdm_op_FifoWrite.volatile.i8P(i8* %dst_data_stream_1_V, i8 %pixel_in_val_load)
  call void @_ssdm_op_FifoWrite.volatile.i8P(i8* %dst_data_stream_2_V, i8 %pixel_in_val_load)
  br label %bb24

bb24:                                             ; preds = %bb23, %bb10_ifconv
  %empty_119 = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @p_str45, i32 %tmp_9) ; <i32> [#uses=0]
  br label %bb25

bb25:                                             ; preds = %bb25.preheader, %bb24
  %t_V = phi i12 [ %j_V, %bb24 ], [ 0, %bb25.preheader ] ; <i12> [#uses=4]
  %tmp_9_cast = zext i12 %t_V to i13              ; <i13> [#uses=1]
  %tmp_7 = icmp ult i13 %tmp_9_cast, %op2_assign_3 ; <i1> [#uses=1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 4096, i64 0)
  %j_V = add i12 %t_V, 1                          ; <i12> [#uses=1]
  br i1 %tmp_7, label %bb1, label %bb35

bb35:                                             ; preds = %bb25, %entry
  %t_V_5 = phi i12 [ 0, %entry ], [ %i_V, %bb25 ] ; <i12> [#uses=4]
  %tmp_cast = zext i12 %t_V_5 to i13              ; <i13> [#uses=1]
  %tmp_s = icmp ult i13 %tmp_cast, %op2_assign    ; <i1> [#uses=1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 4096, i64 0)
  %i_V = add i12 %t_V_5, 1                        ; <i12> [#uses=1]
  br i1 %tmp_s, label %bb25.preheader, label %bb36

bb25.preheader:                                   ; preds = %bb35
  %not = icmp ult i12 %t_V_5, %src_rows_V_read_2  ; <i1> [#uses=1]
  %notrhs = icmp ne i12 %t_V_5, 0                 ; <i1> [#uses=1]
  br label %bb25

bb36:                                             ; preds = %bb35
  ret void
}

define internal fastcc void @"Mat2AXIvideo<32,1080,1920,16>"(i12 %img_rows_V_read, i12 %img_cols_V_read, i8* %img_data_stream_0_V, i8* %img_data_stream_1_V, i8* %img_data_stream_2_V, i32* %AXI_video_strm_V_data_V, i4* %AXI_video_strm_V_keep_V, i4* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V) {
entry:
  %sof_2 = alloca i1                              ; <i1*> [#uses=3]
  %empty = call i32 (...)* @_ssdm_op_SpecFifo(i8* %img_data_stream_2_V, [8 x i8]* @str126, i32 0, i32 0, i32 0, [8 x i8]* @str126) ; <i32> [#uses=0]
  %empty_120 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %img_data_stream_1_V, [8 x i8]* @str123, i32 0, i32 0, i32 0, [8 x i8]* @str123) ; <i32> [#uses=0]
  %empty_121 = call i32 (...)* @_ssdm_op_SpecFifo(i8* %img_data_stream_0_V, [8 x i8]* @str120, i32 0, i32 0, i32 0, [8 x i8]* @str120) ; <i32> [#uses=0]
  %empty_122 = call i32 (...)* @_ssdm_op_SpecFifo(i1* %AXI_video_strm_V_dest_V, [8 x i8]* @str89, i32 0, i32 0, i32 0, [8 x i8]* @str89) ; <i32> [#uses=0]
  %empty_123 = call i32 (...)* @_ssdm_op_SpecFifo(i1* %AXI_video_strm_V_id_V, [8 x i8]* @str88, i32 0, i32 0, i32 0, [8 x i8]* @str88) ; <i32> [#uses=0]
  %empty_124 = call i32 (...)* @_ssdm_op_SpecFifo(i1* %AXI_video_strm_V_last_V, [8 x i8]* @str87, i32 0, i32 0, i32 0, [8 x i8]* @str87) ; <i32> [#uses=0]
  %empty_125 = call i32 (...)* @_ssdm_op_SpecFifo(i1* %AXI_video_strm_V_user_V, [8 x i8]* @str86, i32 0, i32 0, i32 0, [8 x i8]* @str86) ; <i32> [#uses=0]
  %empty_126 = call i32 (...)* @_ssdm_op_SpecFifo(i4* %AXI_video_strm_V_strb_V, [8 x i8]* @str85, i32 0, i32 0, i32 0, [8 x i8]* @str85) ; <i32> [#uses=0]
  %empty_127 = call i32 (...)* @_ssdm_op_SpecFifo(i4* %AXI_video_strm_V_keep_V, [8 x i8]* @str84, i32 0, i32 0, i32 0, [8 x i8]* @str84) ; <i32> [#uses=0]
  %empty_128 = call i32 (...)* @_ssdm_op_SpecFifo(i32* %AXI_video_strm_V_data_V, [8 x i8]* @str83, i32 0, i32 0, i32 0, [8 x i8]* @str83) ; <i32> [#uses=0]
  call void (...)* @_ssdm_op_SpecIFCore(i32* %AXI_video_strm_V_data_V, i4* %AXI_video_strm_V_keep_V, i4* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V, [1 x i8]* @p_str, [5 x i8]* @p_str51, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [26 x i8]* @p_str53)
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
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str43) ; <i32> [#uses=1]
  call void (...)* @_ssdm_op_SpecLoopTripCount(i32 0, i32 1920, i32 0, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, [1 x i8]* @p_str) nounwind
  %tmp_cast = zext i12 %t_V_6 to i13              ; <i13> [#uses=1]
  %axi_last_V = icmp eq i13 %tmp_cast, %op2_assign ; <i1> [#uses=1]
  %tmp = call i8 @_ssdm_op_FifoRead.volatile.i8P(i8* %img_data_stream_0_V) ; <i8> [#uses=1]
  %tmp_14 = call i8 @_ssdm_op_FifoRead.volatile.i8P(i8* %img_data_stream_1_V) ; <i8> [#uses=1]
  %tmp_15 = call i8 @_ssdm_op_FifoRead.volatile.i8P(i8* %img_data_stream_2_V) ; <i8> [#uses=1]
  %axi_data_V = call i32 @_ssdm_op_BitConcatenate.i32.i8.i8.i8.i8(i8 -1, i8 %tmp_15, i8 %tmp_14, i8 %tmp) ; <i32> [#uses=1]
  call void @_ssdm_op_FifoWrite.volatile.i32P.i4P.i4P.i1P.i1P.i1P.i1P(i32* %AXI_video_strm_V_data_V, i4* %AXI_video_strm_V_keep_V, i4* %AXI_video_strm_V_strb_V, i1* %AXI_video_strm_V_user_V, i1* %AXI_video_strm_V_last_V, i1* %AXI_video_strm_V_id_V, i1* %AXI_video_strm_V_dest_V, i32 %axi_data_V, i4 -1, i4 undef, i1 %sof_2_load, i1 %axi_last_V, i1 undef, i1 undef)
  %empty_129 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str43, i32 %tmp_1) ; <i32> [#uses=0]
  store i1 false, i1* %sof_2
  br label %bb14

bb14:                                             ; preds = %bb3, %bb2
  %t_V_6 = phi i12 [ 0, %bb2 ], [ %j_V, %bb3 ]    ; <i12> [#uses=3]
  %exitcond2 = icmp eq i12 %t_V_6, %img_cols_V_read_2 ; <i1> [#uses=1]
  %j_V = add i12 %t_V_6, 1                        ; <i12> [#uses=1]
  br i1 %exitcond2, label %bb15, label %bb3

bb15:                                             ; preds = %bb14
  %empty_130 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str42, i32 %tmp_s) ; <i32> [#uses=0]
  br label %bb17

bb17:                                             ; preds = %bb15, %entry
  %t_V = phi i12 [ 0, %entry ], [ %i_V, %bb15 ]   ; <i12> [#uses=2]
  %exitcond = icmp eq i12 %t_V, %img_rows_V_read_2 ; <i1> [#uses=1]
  %i_V = add i12 %t_V, 1                          ; <i12> [#uses=1]
  br i1 %exitcond, label %return, label %bb2

return:                                           ; preds = %bb17
  ret void
}

define internal fastcc void @init.3(i32 %p_rows, i32 %p_cols) {
entry:
  call void (...)* @_ssdm_op_SpecIFCore(i32 %p_cols, [1 x i8]* @p_str, [10 x i8]* @p_str54, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [24 x i8]* @p_str55)
  call void (...)* @_ssdm_op_SpecIFCore(i32 %p_rows, [1 x i8]* @p_str, [10 x i8]* @p_str54, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [24 x i8]* @p_str55)
  ret void
}

define internal fastcc %"hls::Mat<1080, 1920, 16>::init_ret" @init(i32 %p_rows, i32 %p_cols) {
entry:
  call void (...)* @_ssdm_op_SpecIFCore(i32 %p_cols, [1 x i8]* @p_str, [10 x i8]* @p_str54, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [24 x i8]* @p_str55)
  call void (...)* @_ssdm_op_SpecIFCore(i32 %p_rows, [1 x i8]* @p_str, [10 x i8]* @p_str54, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [24 x i8]* @p_str55)
  %p_cols_read = call i32 @_ssdm_op_WireRead.i32(i32 %p_cols) ; <i32> [#uses=1]
  %p_rows_read = call i32 @_ssdm_op_WireRead.i32(i32 %p_rows) ; <i32> [#uses=1]
  %tmp = trunc i32 %p_rows_read to i12            ; <i12> [#uses=2]
  %tmp_16 = trunc i32 %p_cols_read to i12         ; <i12> [#uses=2]
  %mrv = insertvalue %"hls::Mat<1080, 1920, 16>::init_ret" undef, i12 %tmp, 0 ; <%"hls::Mat<1080, 1920, 16>::init_ret"> [#uses=1]
  %mrv_1 = insertvalue %"hls::Mat<1080, 1920, 16>::init_ret" %mrv, i12 %tmp, 1 ; <%"hls::Mat<1080, 1920, 16>::init_ret"> [#uses=1]
  %mrv_2 = insertvalue %"hls::Mat<1080, 1920, 16>::init_ret" %mrv_1, i12 %tmp_16, 2 ; <%"hls::Mat<1080, 1920, 16>::init_ret"> [#uses=1]
  %mrv_3 = insertvalue %"hls::Mat<1080, 1920, 16>::init_ret" %mrv_2, i12 %tmp_16, 3 ; <%"hls::Mat<1080, 1920, 16>::init_ret"> [#uses=1]
  ret %"hls::Mat<1080, 1920, 16>::init_ret" %mrv_3
}

define internal fastcc %"hls::Mat<1080, 1920, 0>::init.1_ret" @init.1(i32 %p_rows, i32 %p_cols) {
entry:
  call void (...)* @_ssdm_op_SpecIFCore(i32 %p_cols, [1 x i8]* @p_str, [10 x i8]* @p_str54, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [24 x i8]* @p_str55)
  call void (...)* @_ssdm_op_SpecIFCore(i32 %p_rows, [1 x i8]* @p_str, [10 x i8]* @p_str54, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [24 x i8]* @p_str55)
  %p_cols_read = call i32 @_ssdm_op_WireRead.i32(i32 %p_cols) ; <i32> [#uses=1]
  %p_rows_read = call i32 @_ssdm_op_WireRead.i32(i32 %p_rows) ; <i32> [#uses=1]
  %tmp = trunc i32 %p_rows_read to i12            ; <i12> [#uses=1]
  %tmp_17 = trunc i32 %p_cols_read to i12         ; <i12> [#uses=1]
  %mrv = insertvalue %"hls::Mat<1080, 1920, 0>::init.1_ret" undef, i12 %tmp, 0 ; <%"hls::Mat<1080, 1920, 0>::init.1_ret"> [#uses=1]
  %mrv_1 = insertvalue %"hls::Mat<1080, 1920, 0>::init.1_ret" %mrv, i12 %tmp_17, 1 ; <%"hls::Mat<1080, 1920, 0>::init.1_ret"> [#uses=1]
  ret %"hls::Mat<1080, 1920, 0>::init.1_ret" %mrv_1
}

define internal fastcc %"hls::Mat<1080, 1920, 0>::init.1_ret" @init.1.1(i32 %p_rows, i32 %p_cols) {
entry:
  call void (...)* @_ssdm_op_SpecIFCore(i32 %p_cols, [1 x i8]* @p_str, [10 x i8]* @p_str54, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [24 x i8]* @p_str55)
  call void (...)* @_ssdm_op_SpecIFCore(i32 %p_rows, [1 x i8]* @p_str, [10 x i8]* @p_str54, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [24 x i8]* @p_str55)
  %p_cols_read = call i32 @_ssdm_op_WireRead.i32(i32 %p_cols) ; <i32> [#uses=1]
  %p_rows_read = call i32 @_ssdm_op_WireRead.i32(i32 %p_rows) ; <i32> [#uses=1]
  %tmp = trunc i32 %p_rows_read to i12            ; <i12> [#uses=1]
  %tmp_18 = trunc i32 %p_cols_read to i12         ; <i12> [#uses=1]
  %mrv = insertvalue %"hls::Mat<1080, 1920, 0>::init.1_ret" undef, i12 %tmp, 0 ; <%"hls::Mat<1080, 1920, 0>::init.1_ret"> [#uses=1]
  %mrv_1 = insertvalue %"hls::Mat<1080, 1920, 0>::init.1_ret" %mrv, i12 %tmp_18, 1 ; <%"hls::Mat<1080, 1920, 0>::init.1_ret"> [#uses=1]
  ret %"hls::Mat<1080, 1920, 0>::init.1_ret" %mrv_1
}

define internal fastcc %"hls::Mat<1080, 1920, 0>::init.1_ret" @init.2(i32 %p_rows, i32 %p_cols) {
entry:
  call void (...)* @_ssdm_op_SpecIFCore(i32 %p_cols, [1 x i8]* @p_str, [10 x i8]* @p_str54, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [24 x i8]* @p_str55)
  call void (...)* @_ssdm_op_SpecIFCore(i32 %p_rows, [1 x i8]* @p_str, [10 x i8]* @p_str54, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [24 x i8]* @p_str55)
  %p_cols_read = call i32 @_ssdm_op_WireRead.i32(i32 %p_cols) ; <i32> [#uses=1]
  %p_rows_read = call i32 @_ssdm_op_WireRead.i32(i32 %p_rows) ; <i32> [#uses=1]
  %tmp = trunc i32 %p_rows_read to i12            ; <i12> [#uses=1]
  %tmp_19 = trunc i32 %p_cols_read to i12         ; <i12> [#uses=1]
  %mrv = insertvalue %"hls::Mat<1080, 1920, 0>::init.1_ret" undef, i12 %tmp, 0 ; <%"hls::Mat<1080, 1920, 0>::init.1_ret"> [#uses=1]
  %mrv_1 = insertvalue %"hls::Mat<1080, 1920, 0>::init.1_ret" %mrv, i12 %tmp_19, 1 ; <%"hls::Mat<1080, 1920, 0>::init.1_ret"> [#uses=1]
  ret %"hls::Mat<1080, 1920, 0>::init.1_ret" %mrv_1
}

define internal fastcc %"hls::Mat<1080, 1920, 0>::init.1_ret" @init.1.2(i32 %p_rows, i32 %p_cols) {
entry:
  call void (...)* @_ssdm_op_SpecIFCore(i32 %p_cols, [1 x i8]* @p_str, [10 x i8]* @p_str54, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [24 x i8]* @p_str55)
  call void (...)* @_ssdm_op_SpecIFCore(i32 %p_rows, [1 x i8]* @p_str, [10 x i8]* @p_str54, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [24 x i8]* @p_str55)
  %p_cols_read = call i32 @_ssdm_op_WireRead.i32(i32 %p_cols) ; <i32> [#uses=1]
  %p_rows_read = call i32 @_ssdm_op_WireRead.i32(i32 %p_rows) ; <i32> [#uses=1]
  %tmp = trunc i32 %p_rows_read to i12            ; <i12> [#uses=1]
  %tmp_20 = trunc i32 %p_cols_read to i12         ; <i12> [#uses=1]
  %mrv = insertvalue %"hls::Mat<1080, 1920, 0>::init.1_ret" undef, i12 %tmp, 0 ; <%"hls::Mat<1080, 1920, 0>::init.1_ret"> [#uses=1]
  %mrv_1 = insertvalue %"hls::Mat<1080, 1920, 0>::init.1_ret" %mrv, i12 %tmp_20, 1 ; <%"hls::Mat<1080, 1920, 0>::init.1_ret"> [#uses=1]
  ret %"hls::Mat<1080, 1920, 0>::init.1_ret" %mrv_1
}

define weak i8 @_ssdm_op_PartSelect.i8.i14.i32.i32(i14, i32, i32) nounwind readnone {
entry:
  %empty = call i14 @llvm.part.select.i14(i14 %0, i32 %1, i32 %2) ; <i14> [#uses=1]
  %empty_131 = trunc i14 %empty to i8             ; <i8> [#uses=1]
  ret i8 %empty_131
}

define weak i9 @_ssdm_op_PartSelect.i9.i15.i32.i32(i15, i32, i32) nounwind readnone {
entry:
  %empty = call i15 @llvm.part.select.i15(i15 %0, i32 %1, i32 %2) ; <i15> [#uses=1]
  %empty_132 = trunc i15 %empty to i9             ; <i9> [#uses=1]
  ret i9 %empty_132
}

define weak i13 @_ssdm_op_BitConcatenate.i13.i8.i5(i8, i5) nounwind readnone {
entry:
  %empty = zext i8 %0 to i13                      ; <i13> [#uses=1]
  %empty_133 = zext i5 %1 to i13                  ; <i13> [#uses=2]
  %empty_134 = trunc i13 %empty to i8             ; <i8> [#uses=1]
  %empty_135 = call i8 @_ssdm_op_PartSelect.i8.i13.i32.i32(i13 %empty_133, i32 5, i32 12) ; <i8> [#uses=1]
  %empty_136 = or i8 %empty_134, %empty_135       ; <i8> [#uses=1]
  %empty_137 = call i13 @_ssdm_op_PartSet.i13.i13.i8.i32.i32(i13 %empty_133, i8 %empty_136, i32 5, i32 12) ; <i13> [#uses=1]
  ret i13 %empty_137
}

define weak i10 @_ssdm_op_BitConcatenate.i10.i8.i2(i8, i2) nounwind readnone {
entry:
  %empty = zext i8 %0 to i10                      ; <i10> [#uses=1]
  %empty_138 = zext i2 %1 to i10                  ; <i10> [#uses=2]
  %empty_139 = trunc i10 %empty to i8             ; <i8> [#uses=1]
  %empty_140 = call i8 @_ssdm_op_PartSelect.i8.i10.i32.i32(i10 %empty_138, i32 2, i32 9) ; <i8> [#uses=1]
  %empty_141 = or i8 %empty_139, %empty_140       ; <i8> [#uses=1]
  %empty_142 = call i10 @_ssdm_op_PartSet.i10.i10.i8.i32.i32(i10 %empty_138, i8 %empty_141, i32 2, i32 9) ; <i10> [#uses=1]
  ret i10 %empty_142
}

define weak i14 @_ssdm_op_BitConcatenate.i14.i1.i8.i5(i1, i8, i5) nounwind readnone {
entry:
  %empty = zext i8 %1 to i13                      ; <i13> [#uses=1]
  %empty_143 = zext i5 %2 to i13                  ; <i13> [#uses=2]
  %empty_144 = trunc i13 %empty to i8             ; <i8> [#uses=1]
  %empty_145 = call i8 @_ssdm_op_PartSelect.i8.i13.i32.i32(i13 %empty_143, i32 5, i32 12) ; <i8> [#uses=1]
  %empty_146 = or i8 %empty_144, %empty_145       ; <i8> [#uses=1]
  %empty_147 = call i13 @_ssdm_op_PartSet.i13.i13.i8.i32.i32(i13 %empty_143, i8 %empty_146, i32 5, i32 12) ; <i13> [#uses=1]
  %empty_148 = zext i1 %0 to i14                  ; <i14> [#uses=1]
  %empty_149 = zext i13 %empty_147 to i14         ; <i14> [#uses=2]
  %empty_150 = trunc i14 %empty_148 to i1         ; <i1> [#uses=1]
  %empty_151 = call i1 @_ssdm_op_BitSelect.i1.i14.i32(i14 %empty_149, i32 13) ; <i1> [#uses=1]
  %empty_152 = or i1 %empty_150, %empty_151       ; <i1> [#uses=1]
  %empty_153 = call i14 @_ssdm_op_PartSet.i14.i14.i1.i32.i32(i14 %empty_149, i1 %empty_152, i32 13, i32 13) ; <i14> [#uses=1]
  ret i14 %empty_153
}

define weak i9 @_ssdm_op_PartSelect.i9.i12.i32.i32(i12, i32, i32) nounwind readnone {
entry:
  %empty = call i12 @llvm.part.select.i12(i12 %0, i32 %1, i32 %2) ; <i12> [#uses=1]
  %empty_154 = trunc i12 %empty to i9             ; <i9> [#uses=1]
  ret i9 %empty_154
}

define weak i8 @_ssdm_op_PartSelect.i8.i11.i32.i32(i11, i32, i32) nounwind readnone {
entry:
  %empty = call i11 @llvm.part.select.i11(i11 %0, i32 %1, i32 %2) ; <i11> [#uses=1]
  %empty_155 = trunc i11 %empty to i8             ; <i8> [#uses=1]
  ret i8 %empty_155
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
  %empty_156 = call i4 @_autotb_FifoWrite_i4(i4* %1, i4 %8) ; <i4> [#uses=0]
  %empty_157 = call i4 @_autotb_FifoWrite_i4(i4* %2, i4 %9) ; <i4> [#uses=0]
  %empty_158 = call i1 @_autotb_FifoWrite_i1(i1* %3, i1 %10) ; <i1> [#uses=0]
  %empty_159 = call i1 @_autotb_FifoWrite_i1(i1* %4, i1 %11) ; <i1> [#uses=0]
  %empty_160 = call i1 @_autotb_FifoWrite_i1(i1* %5, i1 %12) ; <i1> [#uses=0]
  %empty_161 = call i1 @_autotb_FifoWrite_i1(i1* %6, i1 %13) ; <i1> [#uses=0]
  ret void
}

define weak void @_ssdm_op_FifoWrite.volatile.i8P(i8*, i8) {
entry:
  %empty = call i8 @_autotb_FifoWrite_i8(i8* %0, i8 %1) ; <i8> [#uses=0]
  ret void
}

define weak %0 @_ssdm_op_FifoRead.volatile.i32P.i4P.i4P.i1P.i1P.i1P.i1P(i32*, i4*, i4*, i1*, i1*, i1*, i1*) {
entry:
  %empty = call i32 @_autotb_FifoRead_i32(i32* %0) ; <i32> [#uses=1]
  %empty_162 = call i4 @_autotb_FifoRead_i4(i4* %1) ; <i4> [#uses=1]
  %empty_163 = call i4 @_autotb_FifoRead_i4(i4* %2) ; <i4> [#uses=1]
  %empty_164 = call i1 @_autotb_FifoRead_i1(i1* %3) ; <i1> [#uses=1]
  %empty_165 = call i1 @_autotb_FifoRead_i1(i1* %4) ; <i1> [#uses=1]
  %empty_166 = call i1 @_autotb_FifoRead_i1(i1* %5) ; <i1> [#uses=1]
  %empty_167 = call i1 @_autotb_FifoRead_i1(i1* %6) ; <i1> [#uses=1]
  %mrv_0 = insertvalue %0 undef, i32 %empty, 0    ; <%0> [#uses=1]
  %mrv1 = insertvalue %0 %mrv_0, i4 %empty_162, 1 ; <%0> [#uses=1]
  %mrv2 = insertvalue %0 %mrv1, i4 %empty_163, 2  ; <%0> [#uses=1]
  %mrv3 = insertvalue %0 %mrv2, i1 %empty_164, 3  ; <%0> [#uses=1]
  %mrv4 = insertvalue %0 %mrv3, i1 %empty_165, 4  ; <%0> [#uses=1]
  %mrv5 = insertvalue %0 %mrv4, i1 %empty_166, 5  ; <%0> [#uses=1]
  %mrv6 = insertvalue %0 %mrv5, i1 %empty_167, 6  ; <%0> [#uses=1]
  ret %0 %mrv6
}

define weak i1 @_ssdm_op_BitSelect.i1.i15.i32(i15, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i15                    ; <i15> [#uses=1]
  %empty_168 = shl i15 1, %empty                  ; <i15> [#uses=1]
  %empty_169 = and i15 %0, %empty_168             ; <i15> [#uses=1]
  %empty_170 = icmp ne i15 %empty_169, 0          ; <i1> [#uses=1]
  ret i1 %empty_170
}

declare i8 @_autotb_FifoRead_i8(i8*)

declare i32 @_autotb_FifoWrite_i32(i32*, i32)

declare i4 @_autotb_FifoWrite_i4(i4*, i4)

declare i1 @_autotb_FifoWrite_i1(i1*, i1)

declare i8 @_autotb_FifoWrite_i8(i8*, i8)

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
  %empty_171 = trunc i10 %empty to i8             ; <i8> [#uses=1]
  ret i8 %empty_171
}

declare i12 @_ssdm_op_PartSelect.i12.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16, i32, i32) nounwind readnone {
entry:
  %empty = call i16 @llvm.part.select.i16(i16 %0, i32 %1, i32 %2) ; <i16> [#uses=1]
  %empty_172 = trunc i16 %empty to i8             ; <i8> [#uses=1]
  ret i8 %empty_172
}

define weak i16 @_ssdm_op_PartSet.i16.i16.i8.i32.i32(i16, i8, i32, i32) nounwind readnone {
entry:
  %empty = call i16 @llvm.part.set.i16.i8(i16 %0, i8 %1, i32 %2, i32 %3) ; <i16> [#uses=1]
  ret i16 %empty
}

define weak i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24, i32, i32) nounwind readnone {
entry:
  %empty = call i24 @llvm.part.select.i24(i24 %0, i32 %1, i32 %2) ; <i24> [#uses=1]
  %empty_173 = trunc i24 %empty to i8             ; <i8> [#uses=1]
  ret i8 %empty_173
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
  %empty_174 = trunc i13 %empty to i8             ; <i8> [#uses=1]
  ret i8 %empty_174
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
  %empty_175 = shl i14 1, %empty                  ; <i14> [#uses=1]
  %empty_176 = and i14 %0, %empty_175             ; <i14> [#uses=1]
  %empty_177 = icmp ne i14 %empty_176, 0          ; <i1> [#uses=1]
  ret i1 %empty_177
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

!llvm.dbg.gv = !{!0, !612, !614, !616, !618, !620, !622, !624, !626}

!0 = metadata !{i32 462866, i32 0, metadata !1, metadata !"YCOEFFR.V", metadata !"YCOEFFR.V", metadata !"YCOEFFR.V", metadata !3, i32 64, metadata !606, i1 true, i1 true, null} ; [ DW_TAG_variable_field ]
!1 = metadata !{i32 458804, i32 0, metadata !2, metadata !"YCOEFFR", metadata !"YCOEFFR", metadata !"", metadata !3, i32 64, metadata !4, i1 true, i1 true, null} ; [ DW_TAG_variable ]
!2 = metadata !{i32 458769, i32 0, i32 4, metadata !"top.pragma.2.cpp", metadata !"/home/student/nl443/ece5775/project/TaikoGestureMaster/xapp1167_vivado/sw/gesture/prj/solution1/.autopilot/db", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.7)", i1 true, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!3 = metadata !{i32 458769, i32 0, i32 4, metadata !"top.h", metadata !"/home/student/nl443/ece5775/project/TaikoGestureMaster/xapp1167_vivado/sw/gesture/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.7)", i1 false, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!4 = metadata !{i32 458790, metadata !2, metadata !"", metadata !2, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !5} ; [ DW_TAG_const_type ]
!5 = metadata !{i32 458771, metadata !2, metadata !"ap_fixed<8,2,SC_RND_INF,SC_SAT,0>", metadata !6, i32 241, i64 8, i64 8, i64 0, i32 0, null, metadata !7, i32 0, null} ; [ DW_TAG_structure_type ]
!6 = metadata !{i32 458769, i32 0, i32 4, metadata !"ap_int.h", metadata !"/opt/xilinx/Vivado_HLS/2013.2/common/technology/autopilot", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.7)", i1 false, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!7 = metadata !{metadata !8, metadata !539, metadata !543, metadata !546, metadata !549, metadata !552, metadata !555, metadata !558, metadata !561, metadata !564, metadata !567, metadata !570, metadata !573, metadata !576, metadata !579, metadata !582, metadata !585, metadata !588, metadata !593, metadata !599, metadata !603}
!8 = metadata !{i32 458780, metadata !2, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_inheritance ]
!9 = metadata !{i32 458771, metadata !2, metadata !"ap_fixed_base<8,2,true,SC_RND_INF,SC_SAT,0>", metadata !10, i32 464, i64 8, i64 8, i64 0, i32 0, null, metadata !11, i32 0, null} ; [ DW_TAG_structure_type ]
!10 = metadata !{i32 458769, i32 0, i32 4, metadata !"ap_fixed_syn.h", metadata !"/opt/xilinx/Vivado_HLS/2013.2/common/technology/autopilot", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.7)", i1 false, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!11 = metadata !{metadata !12, metadata !22, metadata !27, metadata !30, metadata !33, metadata !36, metadata !40, metadata !44, metadata !48, metadata !52, metadata !56, metadata !60, metadata !64, metadata !68, metadata !72, metadata !76, metadata !80, metadata !85, metadata !88, metadata !94, metadata !97, metadata !101, metadata !104, metadata !109, metadata !115, metadata !119, metadata !122, metadata !125, metadata !128, metadata !133, metadata !136, metadata !139, metadata !143, metadata !148, metadata !151, metadata !154, metadata !155, metadata !156, metadata !159, metadata !162, metadata !165, metadata !168, metadata !169, metadata !170, metadata !173, metadata !176, metadata !179, metadata !182, metadata !183, metadata !186, metadata !189, metadata !190, metadata !193, metadata !194, metadata !197, metadata !201, metadata !202, metadata !205, metadata !468, metadata !471, metadata !474, metadata !475, metadata !476, metadata !479, metadata !482, metadata !483, metadata !484, metadata !487, metadata !488, metadata !489, metadata !490, metadata !491, metadata !492, metadata !496, metadata !499, metadata !500, metadata !501, metadata !504, metadata !507, metadata !511, metadata !512, metadata !515, metadata !516, metadata !519, metadata !522, metadata !523, metadata !524, metadata !525, metadata !526, metadata !529, metadata !532, metadata !533, metadata !536}
!12 = metadata !{i32 458780, metadata !2, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_inheritance ]
!13 = metadata !{i32 458771, metadata !2, metadata !"ssdm_int<8,true>", metadata !14, i32 10, i64 8, i64 8, i64 0, i32 0, null, metadata !15, i32 0, null} ; [ DW_TAG_structure_type ]
!14 = metadata !{i32 458769, i32 0, i32 4, metadata !"autopilot_dt.def", metadata !"/opt/xilinx/Vivado_HLS/2013.2/common/technology/autopilot/etc", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.7)", i1 false, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!15 = metadata !{metadata !16, metadata !18}
!16 = metadata !{i32 458765, metadata !13, metadata !"V", metadata !14, i32 10, i64 8, i64 8, i64 0, i32 0, metadata !17} ; [ DW_TAG_member ]
!17 = metadata !{i32 458788, metadata !2, metadata !"", metadata !2, i32 0, i64 8, i64 8, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!18 = metadata !{i32 458798, i32 0, metadata !13, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !14, i32 10, metadata !19, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!19 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !20, i32 0, null} ; [ DW_TAG_subroutine_type ]
!20 = metadata !{null, metadata !21}
!21 = metadata !{i32 458767, metadata !2, metadata !"", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !13} ; [ DW_TAG_pointer_type ]
!22 = metadata !{i32 458798, i32 0, metadata !9, metadata !"overflow_adjust", metadata !"overflow_adjust", metadata !"_ZN13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EE15overflow_adjustEbbbb", metadata !10, i32 469, metadata !23, i1 false, i1 true, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!23 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !24, i32 0, null} ; [ DW_TAG_subroutine_type ]
!24 = metadata !{null, metadata !25, metadata !26, metadata !26, metadata !26, metadata !26}
!25 = metadata !{i32 458767, metadata !2, metadata !"", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !9} ; [ DW_TAG_pointer_type ]
!26 = metadata !{i32 458788, metadata !2, metadata !"bool", metadata !2, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!27 = metadata !{i32 458798, i32 0, metadata !9, metadata !"quantization_adjust", metadata !"quantization_adjust", metadata !"_ZN13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EE19quantization_adjustEbbb", metadata !10, i32 542, metadata !28, i1 false, i1 true, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!28 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !29, i32 0, null} ; [ DW_TAG_subroutine_type ]
!29 = metadata !{metadata !26, metadata !25, metadata !26, metadata !26, metadata !26}
!30 = metadata !{i32 458798, i32 0, metadata !9, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !10, i32 600, metadata !31, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!31 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !32, i32 0, null} ; [ DW_TAG_subroutine_type ]
!32 = metadata !{null, metadata !25}
!33 = metadata !{i32 458798, i32 0, metadata !9, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !10, i32 736, metadata !34, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!34 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !35, i32 0, null} ; [ DW_TAG_subroutine_type ]
!35 = metadata !{null, metadata !25, metadata !26}
!36 = metadata !{i32 458798, i32 0, metadata !9, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !10, i32 737, metadata !37, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!37 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !38, i32 0, null} ; [ DW_TAG_subroutine_type ]
!38 = metadata !{null, metadata !25, metadata !39}
!39 = metadata !{i32 458788, metadata !2, metadata !"char", metadata !2, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!40 = metadata !{i32 458798, i32 0, metadata !9, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !10, i32 738, metadata !41, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!41 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !42, i32 0, null} ; [ DW_TAG_subroutine_type ]
!42 = metadata !{null, metadata !25, metadata !43}
!43 = metadata !{i32 458788, metadata !2, metadata !"signed char", metadata !2, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!44 = metadata !{i32 458798, i32 0, metadata !9, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !10, i32 739, metadata !45, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!45 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !46, i32 0, null} ; [ DW_TAG_subroutine_type ]
!46 = metadata !{null, metadata !25, metadata !47}
!47 = metadata !{i32 458788, metadata !2, metadata !"unsigned char", metadata !2, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!48 = metadata !{i32 458798, i32 0, metadata !9, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !10, i32 740, metadata !49, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!49 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !50, i32 0, null} ; [ DW_TAG_subroutine_type ]
!50 = metadata !{null, metadata !25, metadata !51}
!51 = metadata !{i32 458788, metadata !2, metadata !"short int", metadata !2, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!52 = metadata !{i32 458798, i32 0, metadata !9, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !10, i32 741, metadata !53, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!53 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !54, i32 0, null} ; [ DW_TAG_subroutine_type ]
!54 = metadata !{null, metadata !25, metadata !55}
!55 = metadata !{i32 458788, metadata !2, metadata !"short unsigned int", metadata !2, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!56 = metadata !{i32 458798, i32 0, metadata !9, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !10, i32 742, metadata !57, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!57 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !58, i32 0, null} ; [ DW_TAG_subroutine_type ]
!58 = metadata !{null, metadata !25, metadata !59}
!59 = metadata !{i32 458788, metadata !2, metadata !"int", metadata !2, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!60 = metadata !{i32 458798, i32 0, metadata !9, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !10, i32 743, metadata !61, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!61 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !62, i32 0, null} ; [ DW_TAG_subroutine_type ]
!62 = metadata !{null, metadata !25, metadata !63}
!63 = metadata !{i32 458788, metadata !2, metadata !"unsigned int", metadata !2, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!64 = metadata !{i32 458798, i32 0, metadata !9, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !10, i32 745, metadata !65, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!65 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !66, i32 0, null} ; [ DW_TAG_subroutine_type ]
!66 = metadata !{null, metadata !25, metadata !67}
!67 = metadata !{i32 458788, metadata !2, metadata !"long int", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!68 = metadata !{i32 458798, i32 0, metadata !9, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !10, i32 746, metadata !69, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!69 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !70, i32 0, null} ; [ DW_TAG_subroutine_type ]
!70 = metadata !{null, metadata !25, metadata !71}
!71 = metadata !{i32 458788, metadata !2, metadata !"long unsigned int", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!72 = metadata !{i32 458798, i32 0, metadata !9, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !10, i32 751, metadata !73, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!73 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !74, i32 0, null} ; [ DW_TAG_subroutine_type ]
!74 = metadata !{null, metadata !25, metadata !75}
!75 = metadata !{i32 458788, metadata !2, metadata !"long long int", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!76 = metadata !{i32 458798, i32 0, metadata !9, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !10, i32 752, metadata !77, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!77 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !78, i32 0, null} ; [ DW_TAG_subroutine_type ]
!78 = metadata !{null, metadata !25, metadata !79}
!79 = metadata !{i32 458788, metadata !2, metadata !"long long unsigned int", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!80 = metadata !{i32 458798, i32 0, metadata !9, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !10, i32 753, metadata !81, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!81 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !82, i32 0, null} ; [ DW_TAG_subroutine_type ]
!82 = metadata !{null, metadata !25, metadata !83}
!83 = metadata !{i32 458767, metadata !2, metadata !"", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !84} ; [ DW_TAG_pointer_type ]
!84 = metadata !{i32 458790, metadata !2, metadata !"", metadata !2, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !39} ; [ DW_TAG_const_type ]
!85 = metadata !{i32 458798, i32 0, metadata !9, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !10, i32 765, metadata !86, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!86 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !87, i32 0, null} ; [ DW_TAG_subroutine_type ]
!87 = metadata !{null, metadata !25, metadata !83, metadata !43}
!88 = metadata !{i32 458798, i32 0, metadata !9, metadata !"doubleToRawBits", metadata !"doubleToRawBits", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EE15doubleToRawBitsEd", metadata !10, i32 806, metadata !89, i1 false, i1 true, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!89 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !90, i32 0, null} ; [ DW_TAG_subroutine_type ]
!90 = metadata !{metadata !79, metadata !91, metadata !93}
!91 = metadata !{i32 458767, metadata !2, metadata !"", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !92} ; [ DW_TAG_pointer_type ]
!92 = metadata !{i32 458790, metadata !2, metadata !"", metadata !2, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !9} ; [ DW_TAG_const_type ]
!93 = metadata !{i32 458788, metadata !2, metadata !"double", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!94 = metadata !{i32 458798, i32 0, metadata !9, metadata !"rawBitsToDouble", metadata !"rawBitsToDouble", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EE15rawBitsToDoubleEy", metadata !10, i32 815, metadata !95, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!95 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !96, i32 0, null} ; [ DW_TAG_subroutine_type ]
!96 = metadata !{metadata !93, metadata !91, metadata !79}
!97 = metadata !{i32 458798, i32 0, metadata !9, metadata !"rawBitsToFloat", metadata !"rawBitsToFloat", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EE14rawBitsToFloatEj", metadata !10, i32 824, metadata !98, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!98 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !99, i32 0, null} ; [ DW_TAG_subroutine_type ]
!99 = metadata !{metadata !100, metadata !91, metadata !63}
!100 = metadata !{i32 458788, metadata !2, metadata !"float", metadata !2, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!101 = metadata !{i32 458798, i32 0, metadata !9, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !10, i32 833, metadata !102, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!102 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !103, i32 0, null} ; [ DW_TAG_subroutine_type ]
!103 = metadata !{null, metadata !25, metadata !93}
!104 = metadata !{i32 458798, i32 0, metadata !9, metadata !"operator=", metadata !"operator=", metadata !"_ZN13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EEaSERKS2_", metadata !10, i32 947, metadata !105, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!105 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !106, i32 0, null} ; [ DW_TAG_subroutine_type ]
!106 = metadata !{metadata !107, metadata !25, metadata !108}
!107 = metadata !{i32 458768, metadata !2, metadata !"ap_fixed_base<8,2,true,SC_RND_INF,SC_SAT,0>", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_reference_type ]
!108 = metadata !{i32 458768, metadata !2, metadata !"", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !92} ; [ DW_TAG_reference_type ]
!109 = metadata !{i32 458798, i32 0, metadata !9, metadata !"operator=", metadata !"operator=", metadata !"_ZN13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EEaSERVKS2_", metadata !10, i32 954, metadata !110, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!110 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !111, i32 0, null} ; [ DW_TAG_subroutine_type ]
!111 = metadata !{metadata !107, metadata !25, metadata !112}
!112 = metadata !{i32 458768, metadata !2, metadata !"", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !113} ; [ DW_TAG_reference_type ]
!113 = metadata !{i32 458790, metadata !2, metadata !"", metadata !2, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !114} ; [ DW_TAG_const_type ]
!114 = metadata !{i32 458805, metadata !2, metadata !"", metadata !2, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !9} ; [ DW_TAG_volatile_type ]
!115 = metadata !{i32 458798, i32 0, metadata !9, metadata !"operator=", metadata !"operator=", metadata !"_ZNV13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EEaSERKS2_", metadata !10, i32 961, metadata !116, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!116 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !117, i32 0, null} ; [ DW_TAG_subroutine_type ]
!117 = metadata !{null, metadata !118, metadata !108}
!118 = metadata !{i32 458767, metadata !2, metadata !"", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !114} ; [ DW_TAG_pointer_type ]
!119 = metadata !{i32 458798, i32 0, metadata !9, metadata !"operator=", metadata !"operator=", metadata !"_ZNV13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EEaSERVKS2_", metadata !10, i32 967, metadata !120, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!120 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !121, i32 0, null} ; [ DW_TAG_subroutine_type ]
!121 = metadata !{null, metadata !118, metadata !112}
!122 = metadata !{i32 458798, i32 0, metadata !9, metadata !"setBits", metadata !"setBits", metadata !"_ZN13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EE7setBitsEy", metadata !10, i32 975, metadata !123, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!123 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !124, i32 0, null} ; [ DW_TAG_subroutine_type ]
!124 = metadata !{metadata !107, metadata !25, metadata !79}
!125 = metadata !{i32 458798, i32 0, metadata !9, metadata !"bitsToFixed", metadata !"bitsToFixed", metadata !"_ZN13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EE11bitsToFixedEy", metadata !10, i32 981, metadata !126, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!126 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !127, i32 0, null} ; [ DW_TAG_subroutine_type ]
!127 = metadata !{metadata !9, metadata !79}
!128 = metadata !{i32 458798, i32 0, metadata !9, metadata !"to_ap_int_base", metadata !"to_ap_int_base", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EE14to_ap_int_baseEb", metadata !10, i32 990, metadata !129, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!129 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !130, i32 0, null} ; [ DW_TAG_subroutine_type ]
!130 = metadata !{metadata !131, metadata !91, metadata !26}
!131 = metadata !{i32 458771, metadata !2, metadata !"ap_int_base<2,true,true>", metadata !132, i32 599, i64 0, i64 0, i64 0, i32 4, null, null, i32 0, null} ; [ DW_TAG_structure_type ]
!132 = metadata !{i32 458769, i32 0, i32 4, metadata !"ap_int_syn.h", metadata !"/opt/xilinx/Vivado_HLS/2013.2/common/technology/autopilot", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.7)", i1 false, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!133 = metadata !{i32 458798, i32 0, metadata !9, metadata !"to_int", metadata !"to_int", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EE6to_intEv", metadata !10, i32 1025, metadata !134, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!134 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !135, i32 0, null} ; [ DW_TAG_subroutine_type ]
!135 = metadata !{metadata !59, metadata !91}
!136 = metadata !{i32 458798, i32 0, metadata !9, metadata !"to_uint", metadata !"to_uint", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EE7to_uintEv", metadata !10, i32 1028, metadata !137, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!137 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !138, i32 0, null} ; [ DW_TAG_subroutine_type ]
!138 = metadata !{metadata !63, metadata !91}
!139 = metadata !{i32 458798, i32 0, metadata !9, metadata !"to_int64", metadata !"to_int64", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EE8to_int64Ev", metadata !10, i32 1031, metadata !140, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!140 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !141, i32 0, null} ; [ DW_TAG_subroutine_type ]
!141 = metadata !{metadata !142, metadata !91}
!142 = metadata !{i32 458774, metadata !2, metadata !"ap_slong", metadata !132, i32 65, i64 0, i64 0, i64 0, i32 0, metadata !75} ; [ DW_TAG_typedef ]
!143 = metadata !{i32 458798, i32 0, metadata !9, metadata !"to_uint64", metadata !"to_uint64", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EE9to_uint64Ev", metadata !10, i32 1034, metadata !144, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!144 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !145, i32 0, null} ; [ DW_TAG_subroutine_type ]
!145 = metadata !{metadata !146, metadata !91}
!146 = metadata !{i32 458774, metadata !2, metadata !"ap_ulong", metadata !147, i32 320, i64 0, i64 0, i64 0, i32 0, metadata !79} ; [ DW_TAG_typedef ]
!147 = metadata !{i32 458769, i32 0, i32 4, metadata !"math.h", metadata !"/usr/include", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.7)", i1 false, i1 false, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!148 = metadata !{i32 458798, i32 0, metadata !9, metadata !"to_double", metadata !"to_double", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EE9to_doubleEv", metadata !10, i32 1037, metadata !149, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!149 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !150, i32 0, null} ; [ DW_TAG_subroutine_type ]
!150 = metadata !{metadata !93, metadata !91}
!151 = metadata !{i32 458798, i32 0, metadata !9, metadata !"to_float", metadata !"to_float", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EE8to_floatEv", metadata !10, i32 1071, metadata !152, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!152 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !153, i32 0, null} ; [ DW_TAG_subroutine_type ]
!153 = metadata !{metadata !100, metadata !91}
!154 = metadata !{i32 458798, i32 0, metadata !9, metadata !"operator double", metadata !"operator double", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EEcvdEv", metadata !10, i32 1106, metadata !149, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!155 = metadata !{i32 458798, i32 0, metadata !9, metadata !"operator float", metadata !"operator float", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EEcvfEv", metadata !10, i32 1110, metadata !152, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!156 = metadata !{i32 458798, i32 0, metadata !9, metadata !"operator char", metadata !"operator char", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EEcvcEv", metadata !10, i32 1114, metadata !157, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!157 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !158, i32 0, null} ; [ DW_TAG_subroutine_type ]
!158 = metadata !{metadata !39, metadata !91}
!159 = metadata !{i32 458798, i32 0, metadata !9, metadata !"operator unsigned char", metadata !"operator unsigned char", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EEcvhEv", metadata !10, i32 1118, metadata !160, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!160 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !161, i32 0, null} ; [ DW_TAG_subroutine_type ]
!161 = metadata !{metadata !47, metadata !91}
!162 = metadata !{i32 458798, i32 0, metadata !9, metadata !"operator short int", metadata !"operator short int", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EEcvsEv", metadata !10, i32 1122, metadata !163, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!163 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !164, i32 0, null} ; [ DW_TAG_subroutine_type ]
!164 = metadata !{metadata !51, metadata !91}
!165 = metadata !{i32 458798, i32 0, metadata !9, metadata !"operator short unsigned int", metadata !"operator short unsigned int", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EEcvtEv", metadata !10, i32 1126, metadata !166, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!166 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !167, i32 0, null} ; [ DW_TAG_subroutine_type ]
!167 = metadata !{metadata !55, metadata !91}
!168 = metadata !{i32 458798, i32 0, metadata !9, metadata !"operator int", metadata !"operator int", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EEcviEv", metadata !10, i32 1131, metadata !134, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!169 = metadata !{i32 458798, i32 0, metadata !9, metadata !"operator unsigned int", metadata !"operator unsigned int", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EEcvjEv", metadata !10, i32 1135, metadata !137, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!170 = metadata !{i32 458798, i32 0, metadata !9, metadata !"operator long int", metadata !"operator long int", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EEcvlEv", metadata !10, i32 1140, metadata !171, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!171 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !172, i32 0, null} ; [ DW_TAG_subroutine_type ]
!172 = metadata !{metadata !67, metadata !91}
!173 = metadata !{i32 458798, i32 0, metadata !9, metadata !"operator long unsigned int", metadata !"operator long unsigned int", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EEcvmEv", metadata !10, i32 1144, metadata !174, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!174 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !175, i32 0, null} ; [ DW_TAG_subroutine_type ]
!175 = metadata !{metadata !71, metadata !91}
!176 = metadata !{i32 458798, i32 0, metadata !9, metadata !"operator long long unsigned int", metadata !"operator long long unsigned int", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EEcvyEv", metadata !10, i32 1157, metadata !177, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!177 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !178, i32 0, null} ; [ DW_TAG_subroutine_type ]
!178 = metadata !{metadata !79, metadata !91}
!179 = metadata !{i32 458798, i32 0, metadata !9, metadata !"operator long long int", metadata !"operator long long int", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EEcvxEv", metadata !10, i32 1161, metadata !180, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!180 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !181, i32 0, null} ; [ DW_TAG_subroutine_type ]
!181 = metadata !{metadata !75, metadata !91}
!182 = metadata !{i32 458798, i32 0, metadata !9, metadata !"length", metadata !"length", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EE6lengthEv", metadata !10, i32 1165, metadata !134, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!183 = metadata !{i32 458798, i32 0, metadata !9, metadata !"countLeadingZeros", metadata !"countLeadingZeros", metadata !"_ZN13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EE17countLeadingZerosEv", metadata !10, i32 1169, metadata !184, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!184 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !185, i32 0, null} ; [ DW_TAG_subroutine_type ]
!185 = metadata !{metadata !59, metadata !25}
!186 = metadata !{i32 458798, i32 0, metadata !9, metadata !"operator++", metadata !"operator++", metadata !"_ZN13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EEppEv", metadata !10, i32 1270, metadata !187, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!187 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !188, i32 0, null} ; [ DW_TAG_subroutine_type ]
!188 = metadata !{metadata !107, metadata !25}
!189 = metadata !{i32 458798, i32 0, metadata !9, metadata !"operator--", metadata !"operator--", metadata !"_ZN13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EEmmEv", metadata !10, i32 1274, metadata !187, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!190 = metadata !{i32 458798, i32 0, metadata !9, metadata !"operator++", metadata !"operator++", metadata !"_ZN13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EEppEi", metadata !10, i32 1282, metadata !191, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!191 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !192, i32 0, null} ; [ DW_TAG_subroutine_type ]
!192 = metadata !{metadata !92, metadata !25, metadata !59}
!193 = metadata !{i32 458798, i32 0, metadata !9, metadata !"operator--", metadata !"operator--", metadata !"_ZN13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EEmmEi", metadata !10, i32 1288, metadata !191, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!194 = metadata !{i32 458798, i32 0, metadata !9, metadata !"operator+", metadata !"operator+", metadata !"_ZN13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EEpsEv", metadata !10, i32 1296, metadata !195, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!195 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !196, i32 0, null} ; [ DW_TAG_subroutine_type ]
!196 = metadata !{metadata !9, metadata !25}
!197 = metadata !{i32 458798, i32 0, metadata !9, metadata !"operator-", metadata !"operator-", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EEngEv", metadata !10, i32 1300, metadata !198, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!198 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !199, i32 0, null} ; [ DW_TAG_subroutine_type ]
!199 = metadata !{metadata !200, metadata !91}
!200 = metadata !{i32 458771, metadata !2, metadata !"ap_fixed_base<9,3,true,SC_TRN,SC_WRAP,0>", metadata !10, i32 464, i64 0, i64 0, i64 0, i32 4, null, null, i32 0, null} ; [ DW_TAG_structure_type ]
!201 = metadata !{i32 458798, i32 0, metadata !9, metadata !"getNeg", metadata !"getNeg", metadata !"_ZN13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EE6getNegEv", metadata !10, i32 1306, metadata !195, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!202 = metadata !{i32 458798, i32 0, metadata !9, metadata !"operator!", metadata !"operator!", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EEntEv", metadata !10, i32 1314, metadata !203, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!203 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !204, i32 0, null} ; [ DW_TAG_subroutine_type ]
!204 = metadata !{metadata !26, metadata !91}
!205 = metadata !{i32 458798, i32 0, metadata !9, metadata !"operator~", metadata !"operator~", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EEcoEv", metadata !10, i32 1320, metadata !206, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!206 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !207, i32 0, null} ; [ DW_TAG_subroutine_type ]
!207 = metadata !{metadata !208, metadata !91}
!208 = metadata !{i32 458771, metadata !2, metadata !"ap_fixed_base<8,2,true,SC_TRN,SC_WRAP,0>", metadata !10, i32 464, i64 8, i64 8, i64 0, i32 0, null, metadata !209, i32 0, null} ; [ DW_TAG_structure_type ]
!209 = metadata !{metadata !12, metadata !210, metadata !214, metadata !217, metadata !220, metadata !223, metadata !226, metadata !229, metadata !232, metadata !235, metadata !238, metadata !241, metadata !244, metadata !247, metadata !250, metadata !253, metadata !256, metadata !259, metadata !262, metadata !267, metadata !270, metadata !273, metadata !276, metadata !281, metadata !287, metadata !291, metadata !294, metadata !297, metadata !300, metadata !303, metadata !306, metadata !309, metadata !312, metadata !315, metadata !318, metadata !321, metadata !322, metadata !323, metadata !326, metadata !329, metadata !332, metadata !335, metadata !336, metadata !337, metadata !340, metadata !343, metadata !346, metadata !349, metadata !350, metadata !353, metadata !356, metadata !357, metadata !360, metadata !361, metadata !364, metadata !367, metadata !368, metadata !371, metadata !374, metadata !377, metadata !380, metadata !381, metadata !382, metadata !385, metadata !388, metadata !389, metadata !390, metadata !393, metadata !394, metadata !395, metadata !396, metadata !397, metadata !398, metadata !402, metadata !405, metadata !406, metadata !407, metadata !410, metadata !413, metadata !417, metadata !418, metadata !421, metadata !422, metadata !425, metadata !428, metadata !429, metadata !430, metadata !431, metadata !432, metadata !444, metadata !454, metadata !455, metadata !465}
!210 = metadata !{i32 458798, i32 0, metadata !208, metadata !"overflow_adjust", metadata !"overflow_adjust", metadata !"_ZN13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE15overflow_adjustEbbbb", metadata !10, i32 469, metadata !211, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!211 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !212, i32 0, null} ; [ DW_TAG_subroutine_type ]
!212 = metadata !{null, metadata !213, metadata !26, metadata !26, metadata !26, metadata !26}
!213 = metadata !{i32 458767, metadata !2, metadata !"", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !208} ; [ DW_TAG_pointer_type ]
!214 = metadata !{i32 458798, i32 0, metadata !208, metadata !"quantization_adjust", metadata !"quantization_adjust", metadata !"_ZN13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE19quantization_adjustEbbb", metadata !10, i32 542, metadata !215, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!215 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !216, i32 0, null} ; [ DW_TAG_subroutine_type ]
!216 = metadata !{metadata !26, metadata !213, metadata !26, metadata !26, metadata !26}
!217 = metadata !{i32 458798, i32 0, metadata !208, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !10, i32 600, metadata !218, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!218 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !219, i32 0, null} ; [ DW_TAG_subroutine_type ]
!219 = metadata !{null, metadata !213}
!220 = metadata !{i32 458798, i32 0, metadata !208, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !10, i32 736, metadata !221, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!221 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !222, i32 0, null} ; [ DW_TAG_subroutine_type ]
!222 = metadata !{null, metadata !213, metadata !26}
!223 = metadata !{i32 458798, i32 0, metadata !208, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !10, i32 737, metadata !224, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!224 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !225, i32 0, null} ; [ DW_TAG_subroutine_type ]
!225 = metadata !{null, metadata !213, metadata !39}
!226 = metadata !{i32 458798, i32 0, metadata !208, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !10, i32 738, metadata !227, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!227 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !228, i32 0, null} ; [ DW_TAG_subroutine_type ]
!228 = metadata !{null, metadata !213, metadata !43}
!229 = metadata !{i32 458798, i32 0, metadata !208, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !10, i32 739, metadata !230, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!230 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !231, i32 0, null} ; [ DW_TAG_subroutine_type ]
!231 = metadata !{null, metadata !213, metadata !47}
!232 = metadata !{i32 458798, i32 0, metadata !208, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !10, i32 740, metadata !233, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!233 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !234, i32 0, null} ; [ DW_TAG_subroutine_type ]
!234 = metadata !{null, metadata !213, metadata !51}
!235 = metadata !{i32 458798, i32 0, metadata !208, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !10, i32 741, metadata !236, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!236 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !237, i32 0, null} ; [ DW_TAG_subroutine_type ]
!237 = metadata !{null, metadata !213, metadata !55}
!238 = metadata !{i32 458798, i32 0, metadata !208, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !10, i32 742, metadata !239, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!239 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !240, i32 0, null} ; [ DW_TAG_subroutine_type ]
!240 = metadata !{null, metadata !213, metadata !59}
!241 = metadata !{i32 458798, i32 0, metadata !208, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !10, i32 743, metadata !242, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!242 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !243, i32 0, null} ; [ DW_TAG_subroutine_type ]
!243 = metadata !{null, metadata !213, metadata !63}
!244 = metadata !{i32 458798, i32 0, metadata !208, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !10, i32 745, metadata !245, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!245 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !246, i32 0, null} ; [ DW_TAG_subroutine_type ]
!246 = metadata !{null, metadata !213, metadata !67}
!247 = metadata !{i32 458798, i32 0, metadata !208, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !10, i32 746, metadata !248, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!248 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !249, i32 0, null} ; [ DW_TAG_subroutine_type ]
!249 = metadata !{null, metadata !213, metadata !71}
!250 = metadata !{i32 458798, i32 0, metadata !208, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !10, i32 751, metadata !251, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!251 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !252, i32 0, null} ; [ DW_TAG_subroutine_type ]
!252 = metadata !{null, metadata !213, metadata !75}
!253 = metadata !{i32 458798, i32 0, metadata !208, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !10, i32 752, metadata !254, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!254 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !255, i32 0, null} ; [ DW_TAG_subroutine_type ]
!255 = metadata !{null, metadata !213, metadata !79}
!256 = metadata !{i32 458798, i32 0, metadata !208, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !10, i32 753, metadata !257, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!257 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !258, i32 0, null} ; [ DW_TAG_subroutine_type ]
!258 = metadata !{null, metadata !213, metadata !83}
!259 = metadata !{i32 458798, i32 0, metadata !208, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !10, i32 765, metadata !260, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!260 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !261, i32 0, null} ; [ DW_TAG_subroutine_type ]
!261 = metadata !{null, metadata !213, metadata !83, metadata !43}
!262 = metadata !{i32 458798, i32 0, metadata !208, metadata !"doubleToRawBits", metadata !"doubleToRawBits", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE15doubleToRawBitsEd", metadata !10, i32 806, metadata !263, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!263 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !264, i32 0, null} ; [ DW_TAG_subroutine_type ]
!264 = metadata !{metadata !79, metadata !265, metadata !93}
!265 = metadata !{i32 458767, metadata !2, metadata !"", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !266} ; [ DW_TAG_pointer_type ]
!266 = metadata !{i32 458790, metadata !2, metadata !"", metadata !2, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !208} ; [ DW_TAG_const_type ]
!267 = metadata !{i32 458798, i32 0, metadata !208, metadata !"rawBitsToDouble", metadata !"rawBitsToDouble", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE15rawBitsToDoubleEy", metadata !10, i32 815, metadata !268, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!268 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !269, i32 0, null} ; [ DW_TAG_subroutine_type ]
!269 = metadata !{metadata !93, metadata !265, metadata !79}
!270 = metadata !{i32 458798, i32 0, metadata !208, metadata !"rawBitsToFloat", metadata !"rawBitsToFloat", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE14rawBitsToFloatEj", metadata !10, i32 824, metadata !271, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!271 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !272, i32 0, null} ; [ DW_TAG_subroutine_type ]
!272 = metadata !{metadata !100, metadata !265, metadata !63}
!273 = metadata !{i32 458798, i32 0, metadata !208, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !10, i32 833, metadata !274, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!274 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !275, i32 0, null} ; [ DW_TAG_subroutine_type ]
!275 = metadata !{null, metadata !213, metadata !93}
!276 = metadata !{i32 458798, i32 0, metadata !208, metadata !"operator=", metadata !"operator=", metadata !"_ZN13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", metadata !10, i32 947, metadata !277, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!277 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !278, i32 0, null} ; [ DW_TAG_subroutine_type ]
!278 = metadata !{metadata !279, metadata !213, metadata !280}
!279 = metadata !{i32 458768, metadata !2, metadata !"ap_fixed_base<8,2,true,SC_TRN,SC_WRAP,0>", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !208} ; [ DW_TAG_reference_type ]
!280 = metadata !{i32 458768, metadata !2, metadata !"", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !266} ; [ DW_TAG_reference_type ]
!281 = metadata !{i32 458798, i32 0, metadata !208, metadata !"operator=", metadata !"operator=", metadata !"_ZN13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERVKS2_", metadata !10, i32 954, metadata !282, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!282 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !283, i32 0, null} ; [ DW_TAG_subroutine_type ]
!283 = metadata !{metadata !279, metadata !213, metadata !284}
!284 = metadata !{i32 458768, metadata !2, metadata !"", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !285} ; [ DW_TAG_reference_type ]
!285 = metadata !{i32 458790, metadata !2, metadata !"", metadata !2, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !286} ; [ DW_TAG_const_type ]
!286 = metadata !{i32 458805, metadata !2, metadata !"", metadata !2, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !208} ; [ DW_TAG_volatile_type ]
!287 = metadata !{i32 458798, i32 0, metadata !208, metadata !"operator=", metadata !"operator=", metadata !"_ZNV13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", metadata !10, i32 961, metadata !288, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!288 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !289, i32 0, null} ; [ DW_TAG_subroutine_type ]
!289 = metadata !{null, metadata !290, metadata !280}
!290 = metadata !{i32 458767, metadata !2, metadata !"", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !286} ; [ DW_TAG_pointer_type ]
!291 = metadata !{i32 458798, i32 0, metadata !208, metadata !"operator=", metadata !"operator=", metadata !"_ZNV13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERVKS2_", metadata !10, i32 967, metadata !292, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!292 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !293, i32 0, null} ; [ DW_TAG_subroutine_type ]
!293 = metadata !{null, metadata !290, metadata !284}
!294 = metadata !{i32 458798, i32 0, metadata !208, metadata !"setBits", metadata !"setBits", metadata !"_ZN13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7setBitsEy", metadata !10, i32 975, metadata !295, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!295 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !296, i32 0, null} ; [ DW_TAG_subroutine_type ]
!296 = metadata !{metadata !279, metadata !213, metadata !79}
!297 = metadata !{i32 458798, i32 0, metadata !208, metadata !"bitsToFixed", metadata !"bitsToFixed", metadata !"_ZN13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE11bitsToFixedEy", metadata !10, i32 981, metadata !298, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!298 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !299, i32 0, null} ; [ DW_TAG_subroutine_type ]
!299 = metadata !{metadata !208, metadata !79}
!300 = metadata !{i32 458798, i32 0, metadata !208, metadata !"to_ap_int_base", metadata !"to_ap_int_base", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE14to_ap_int_baseEb", metadata !10, i32 990, metadata !301, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!301 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !302, i32 0, null} ; [ DW_TAG_subroutine_type ]
!302 = metadata !{metadata !131, metadata !265, metadata !26}
!303 = metadata !{i32 458798, i32 0, metadata !208, metadata !"to_int", metadata !"to_int", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6to_intEv", metadata !10, i32 1025, metadata !304, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!304 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !305, i32 0, null} ; [ DW_TAG_subroutine_type ]
!305 = metadata !{metadata !59, metadata !265}
!306 = metadata !{i32 458798, i32 0, metadata !208, metadata !"to_uint", metadata !"to_uint", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7to_uintEv", metadata !10, i32 1028, metadata !307, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!307 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !308, i32 0, null} ; [ DW_TAG_subroutine_type ]
!308 = metadata !{metadata !63, metadata !265}
!309 = metadata !{i32 458798, i32 0, metadata !208, metadata !"to_int64", metadata !"to_int64", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE8to_int64Ev", metadata !10, i32 1031, metadata !310, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!310 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !311, i32 0, null} ; [ DW_TAG_subroutine_type ]
!311 = metadata !{metadata !142, metadata !265}
!312 = metadata !{i32 458798, i32 0, metadata !208, metadata !"to_uint64", metadata !"to_uint64", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_uint64Ev", metadata !10, i32 1034, metadata !313, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!313 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !314, i32 0, null} ; [ DW_TAG_subroutine_type ]
!314 = metadata !{metadata !146, metadata !265}
!315 = metadata !{i32 458798, i32 0, metadata !208, metadata !"to_double", metadata !"to_double", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_doubleEv", metadata !10, i32 1037, metadata !316, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!316 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !317, i32 0, null} ; [ DW_TAG_subroutine_type ]
!317 = metadata !{metadata !93, metadata !265}
!318 = metadata !{i32 458798, i32 0, metadata !208, metadata !"to_float", metadata !"to_float", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE8to_floatEv", metadata !10, i32 1071, metadata !319, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!319 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !320, i32 0, null} ; [ DW_TAG_subroutine_type ]
!320 = metadata !{metadata !100, metadata !265}
!321 = metadata !{i32 458798, i32 0, metadata !208, metadata !"operator double", metadata !"operator double", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvdEv", metadata !10, i32 1106, metadata !316, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!322 = metadata !{i32 458798, i32 0, metadata !208, metadata !"operator float", metadata !"operator float", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvfEv", metadata !10, i32 1110, metadata !319, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!323 = metadata !{i32 458798, i32 0, metadata !208, metadata !"operator char", metadata !"operator char", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvcEv", metadata !10, i32 1114, metadata !324, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!324 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !325, i32 0, null} ; [ DW_TAG_subroutine_type ]
!325 = metadata !{metadata !39, metadata !265}
!326 = metadata !{i32 458798, i32 0, metadata !208, metadata !"operator unsigned char", metadata !"operator unsigned char", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvhEv", metadata !10, i32 1118, metadata !327, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!327 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !328, i32 0, null} ; [ DW_TAG_subroutine_type ]
!328 = metadata !{metadata !47, metadata !265}
!329 = metadata !{i32 458798, i32 0, metadata !208, metadata !"operator short int", metadata !"operator short int", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvsEv", metadata !10, i32 1122, metadata !330, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!330 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !331, i32 0, null} ; [ DW_TAG_subroutine_type ]
!331 = metadata !{metadata !51, metadata !265}
!332 = metadata !{i32 458798, i32 0, metadata !208, metadata !"operator short unsigned int", metadata !"operator short unsigned int", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvtEv", metadata !10, i32 1126, metadata !333, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!333 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !334, i32 0, null} ; [ DW_TAG_subroutine_type ]
!334 = metadata !{metadata !55, metadata !265}
!335 = metadata !{i32 458798, i32 0, metadata !208, metadata !"operator int", metadata !"operator int", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcviEv", metadata !10, i32 1131, metadata !304, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!336 = metadata !{i32 458798, i32 0, metadata !208, metadata !"operator unsigned int", metadata !"operator unsigned int", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvjEv", metadata !10, i32 1135, metadata !307, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!337 = metadata !{i32 458798, i32 0, metadata !208, metadata !"operator long int", metadata !"operator long int", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvlEv", metadata !10, i32 1140, metadata !338, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!338 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !339, i32 0, null} ; [ DW_TAG_subroutine_type ]
!339 = metadata !{metadata !67, metadata !265}
!340 = metadata !{i32 458798, i32 0, metadata !208, metadata !"operator long unsigned int", metadata !"operator long unsigned int", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvmEv", metadata !10, i32 1144, metadata !341, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!341 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !342, i32 0, null} ; [ DW_TAG_subroutine_type ]
!342 = metadata !{metadata !71, metadata !265}
!343 = metadata !{i32 458798, i32 0, metadata !208, metadata !"operator long long unsigned int", metadata !"operator long long unsigned int", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvyEv", metadata !10, i32 1157, metadata !344, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!344 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !345, i32 0, null} ; [ DW_TAG_subroutine_type ]
!345 = metadata !{metadata !79, metadata !265}
!346 = metadata !{i32 458798, i32 0, metadata !208, metadata !"operator long long int", metadata !"operator long long int", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvxEv", metadata !10, i32 1161, metadata !347, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!347 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !348, i32 0, null} ; [ DW_TAG_subroutine_type ]
!348 = metadata !{metadata !75, metadata !265}
!349 = metadata !{i32 458798, i32 0, metadata !208, metadata !"length", metadata !"length", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6lengthEv", metadata !10, i32 1165, metadata !304, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!350 = metadata !{i32 458798, i32 0, metadata !208, metadata !"countLeadingZeros", metadata !"countLeadingZeros", metadata !"_ZN13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE17countLeadingZerosEv", metadata !10, i32 1169, metadata !351, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!351 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !352, i32 0, null} ; [ DW_TAG_subroutine_type ]
!352 = metadata !{metadata !59, metadata !213}
!353 = metadata !{i32 458798, i32 0, metadata !208, metadata !"operator++", metadata !"operator++", metadata !"_ZN13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEppEv", metadata !10, i32 1270, metadata !354, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!354 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !355, i32 0, null} ; [ DW_TAG_subroutine_type ]
!355 = metadata !{metadata !279, metadata !213}
!356 = metadata !{i32 458798, i32 0, metadata !208, metadata !"operator--", metadata !"operator--", metadata !"_ZN13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEmmEv", metadata !10, i32 1274, metadata !354, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!357 = metadata !{i32 458798, i32 0, metadata !208, metadata !"operator++", metadata !"operator++", metadata !"_ZN13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEppEi", metadata !10, i32 1282, metadata !358, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!358 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !359, i32 0, null} ; [ DW_TAG_subroutine_type ]
!359 = metadata !{metadata !266, metadata !213, metadata !59}
!360 = metadata !{i32 458798, i32 0, metadata !208, metadata !"operator--", metadata !"operator--", metadata !"_ZN13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEmmEi", metadata !10, i32 1288, metadata !358, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!361 = metadata !{i32 458798, i32 0, metadata !208, metadata !"operator+", metadata !"operator+", metadata !"_ZN13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEpsEv", metadata !10, i32 1296, metadata !362, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!362 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !363, i32 0, null} ; [ DW_TAG_subroutine_type ]
!363 = metadata !{metadata !208, metadata !213}
!364 = metadata !{i32 458798, i32 0, metadata !208, metadata !"operator-", metadata !"operator-", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEngEv", metadata !10, i32 1300, metadata !365, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!365 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !366, i32 0, null} ; [ DW_TAG_subroutine_type ]
!366 = metadata !{metadata !200, metadata !265}
!367 = metadata !{i32 458798, i32 0, metadata !208, metadata !"getNeg", metadata !"getNeg", metadata !"_ZN13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6getNegEv", metadata !10, i32 1306, metadata !362, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!368 = metadata !{i32 458798, i32 0, metadata !208, metadata !"operator!", metadata !"operator!", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEntEv", metadata !10, i32 1314, metadata !369, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!369 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !370, i32 0, null} ; [ DW_TAG_subroutine_type ]
!370 = metadata !{metadata !26, metadata !265}
!371 = metadata !{i32 458798, i32 0, metadata !208, metadata !"operator~", metadata !"operator~", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcoEv", metadata !10, i32 1320, metadata !372, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!372 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !373, i32 0, null} ; [ DW_TAG_subroutine_type ]
!373 = metadata !{metadata !208, metadata !265}
!374 = metadata !{i32 458798, i32 0, metadata !208, metadata !"operator<<", metadata !"operator<<", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElsEi", metadata !10, i32 1343, metadata !375, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!375 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !376, i32 0, null} ; [ DW_TAG_subroutine_type ]
!376 = metadata !{metadata !208, metadata !265, metadata !59}
!377 = metadata !{i32 458798, i32 0, metadata !208, metadata !"operator<<", metadata !"operator<<", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElsEj", metadata !10, i32 1402, metadata !378, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!378 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !379, i32 0, null} ; [ DW_TAG_subroutine_type ]
!379 = metadata !{metadata !208, metadata !265, metadata !63}
!380 = metadata !{i32 458798, i32 0, metadata !208, metadata !"operator>>", metadata !"operator>>", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErsEi", metadata !10, i32 1446, metadata !375, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!381 = metadata !{i32 458798, i32 0, metadata !208, metadata !"operator>>", metadata !"operator>>", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErsEj", metadata !10, i32 1504, metadata !378, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!382 = metadata !{i32 458798, i32 0, metadata !208, metadata !"operator<<=", metadata !"operator<<=", metadata !"_ZN13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElSEi", metadata !10, i32 1556, metadata !383, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!383 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !384, i32 0, null} ; [ DW_TAG_subroutine_type ]
!384 = metadata !{metadata !279, metadata !213, metadata !59}
!385 = metadata !{i32 458798, i32 0, metadata !208, metadata !"operator<<=", metadata !"operator<<=", metadata !"_ZN13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElSEj", metadata !10, i32 1619, metadata !386, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!386 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !387, i32 0, null} ; [ DW_TAG_subroutine_type ]
!387 = metadata !{metadata !279, metadata !213, metadata !63}
!388 = metadata !{i32 458798, i32 0, metadata !208, metadata !"operator>>=", metadata !"operator>>=", metadata !"_ZN13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErSEi", metadata !10, i32 1666, metadata !383, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!389 = metadata !{i32 458798, i32 0, metadata !208, metadata !"operator>>=", metadata !"operator>>=", metadata !"_ZN13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErSEj", metadata !10, i32 1728, metadata !386, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!390 = metadata !{i32 458798, i32 0, metadata !208, metadata !"operator==", metadata !"operator==", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEeqEd", metadata !10, i32 1806, metadata !391, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!391 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !392, i32 0, null} ; [ DW_TAG_subroutine_type ]
!392 = metadata !{metadata !26, metadata !265, metadata !93}
!393 = metadata !{i32 458798, i32 0, metadata !208, metadata !"operator!=", metadata !"operator!=", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEneEd", metadata !10, i32 1807, metadata !391, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!394 = metadata !{i32 458798, i32 0, metadata !208, metadata !"operator>", metadata !"operator>", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEgtEd", metadata !10, i32 1808, metadata !391, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!395 = metadata !{i32 458798, i32 0, metadata !208, metadata !"operator>=", metadata !"operator>=", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEgeEd", metadata !10, i32 1809, metadata !391, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!396 = metadata !{i32 458798, i32 0, metadata !208, metadata !"operator<", metadata !"operator<", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEltEd", metadata !10, i32 1810, metadata !391, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!397 = metadata !{i32 458798, i32 0, metadata !208, metadata !"operator<=", metadata !"operator<=", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEleEd", metadata !10, i32 1811, metadata !391, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!398 = metadata !{i32 458798, i32 0, metadata !208, metadata !"operator[]", metadata !"operator[]", metadata !"_ZN13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEixEj", metadata !10, i32 1814, metadata !399, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!399 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !400, i32 0, null} ; [ DW_TAG_subroutine_type ]
!400 = metadata !{metadata !401, metadata !213, metadata !63}
!401 = metadata !{i32 458771, metadata !2, metadata !"af_bit_ref<8,2,true,SC_TRN,SC_WRAP,0>", metadata !10, i32 45, i64 0, i64 0, i64 0, i32 4, null, null, i32 0, null} ; [ DW_TAG_structure_type ]
!402 = metadata !{i32 458798, i32 0, metadata !208, metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEixEj", metadata !10, i32 1826, metadata !403, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!403 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !404, i32 0, null} ; [ DW_TAG_subroutine_type ]
!404 = metadata !{metadata !26, metadata !265, metadata !63}
!405 = metadata !{i32 458798, i32 0, metadata !208, metadata !"bit", metadata !"bit", metadata !"_ZN13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE3bitEj", metadata !10, i32 1831, metadata !399, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!406 = metadata !{i32 458798, i32 0, metadata !208, metadata !"bit", metadata !"bit", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE3bitEj", metadata !10, i32 1844, metadata !403, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!407 = metadata !{i32 458798, i32 0, metadata !208, metadata !"get_bit", metadata !"get_bit", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7get_bitEi", metadata !10, i32 1856, metadata !408, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!408 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !409, i32 0, null} ; [ DW_TAG_subroutine_type ]
!409 = metadata !{metadata !26, metadata !265, metadata !59}
!410 = metadata !{i32 458798, i32 0, metadata !208, metadata !"get_bit", metadata !"get_bit", metadata !"_ZN13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7get_bitEi", metadata !10, i32 1862, metadata !411, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!411 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !412, i32 0, null} ; [ DW_TAG_subroutine_type ]
!412 = metadata !{metadata !401, metadata !213, metadata !59}
!413 = metadata !{i32 458798, i32 0, metadata !208, metadata !"range", metadata !"range", metadata !"_ZN13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEii", metadata !10, i32 1877, metadata !414, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!414 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !415, i32 0, null} ; [ DW_TAG_subroutine_type ]
!415 = metadata !{metadata !416, metadata !213, metadata !59, metadata !59}
!416 = metadata !{i32 458771, metadata !2, metadata !"af_range_ref<8,2,true,SC_TRN,SC_WRAP,0>", metadata !10, i32 190, i64 0, i64 0, i64 0, i32 4, null, null, i32 0, null} ; [ DW_TAG_structure_type ]
!417 = metadata !{i32 458798, i32 0, metadata !208, metadata !"operator()", metadata !"operator()", metadata !"_ZN13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEclEii", metadata !10, i32 1883, metadata !414, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!418 = metadata !{i32 458798, i32 0, metadata !208, metadata !"range", metadata !"range", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEii", metadata !10, i32 1889, metadata !419, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!419 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !420, i32 0, null} ; [ DW_TAG_subroutine_type ]
!420 = metadata !{metadata !416, metadata !265, metadata !59, metadata !59}
!421 = metadata !{i32 458798, i32 0, metadata !208, metadata !"operator()", metadata !"operator()", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEclEii", metadata !10, i32 1938, metadata !419, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!422 = metadata !{i32 458798, i32 0, metadata !208, metadata !"range", metadata !"range", metadata !"_ZN13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEv", metadata !10, i32 1943, metadata !423, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!423 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !424, i32 0, null} ; [ DW_TAG_subroutine_type ]
!424 = metadata !{metadata !416, metadata !213}
!425 = metadata !{i32 458798, i32 0, metadata !208, metadata !"range", metadata !"range", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEv", metadata !10, i32 1948, metadata !426, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!426 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !427, i32 0, null} ; [ DW_TAG_subroutine_type ]
!427 = metadata !{metadata !416, metadata !265}
!428 = metadata !{i32 458798, i32 0, metadata !208, metadata !"is_zero", metadata !"is_zero", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7is_zeroEv", metadata !10, i32 1952, metadata !369, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!429 = metadata !{i32 458798, i32 0, metadata !208, metadata !"is_neg", metadata !"is_neg", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6is_negEv", metadata !10, i32 1956, metadata !369, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!430 = metadata !{i32 458798, i32 0, metadata !208, metadata !"wl", metadata !"wl", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE2wlEv", metadata !10, i32 1962, metadata !304, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!431 = metadata !{i32 458798, i32 0, metadata !208, metadata !"iwl", metadata !"iwl", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE3iwlEv", metadata !10, i32 1966, metadata !304, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!432 = metadata !{i32 458798, i32 0, metadata !208, metadata !"q_mode", metadata !"q_mode", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6q_modeEv", metadata !10, i32 1970, metadata !433, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!433 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !434, i32 0, null} ; [ DW_TAG_subroutine_type ]
!434 = metadata !{metadata !435, metadata !265}
!435 = metadata !{i32 458756, metadata !2, metadata !"ap_q_mode", metadata !132, i32 605, i64 32, i64 32, i64 0, i32 0, null, metadata !436, i32 0, null} ; [ DW_TAG_enumeration_type ]
!436 = metadata !{metadata !437, metadata !438, metadata !439, metadata !440, metadata !441, metadata !442, metadata !443}
!437 = metadata !{i32 458792, metadata !"SC_RND", i64 0} ; [ DW_TAG_enumerator ]
!438 = metadata !{i32 458792, metadata !"SC_RND_ZERO", i64 1} ; [ DW_TAG_enumerator ]
!439 = metadata !{i32 458792, metadata !"SC_RND_MIN_INF", i64 2} ; [ DW_TAG_enumerator ]
!440 = metadata !{i32 458792, metadata !"SC_RND_INF", i64 3} ; [ DW_TAG_enumerator ]
!441 = metadata !{i32 458792, metadata !"SC_RND_CONV", i64 4} ; [ DW_TAG_enumerator ]
!442 = metadata !{i32 458792, metadata !"SC_TRN", i64 5} ; [ DW_TAG_enumerator ]
!443 = metadata !{i32 458792, metadata !"SC_TRN_ZERO", i64 6} ; [ DW_TAG_enumerator ]
!444 = metadata !{i32 458798, i32 0, metadata !208, metadata !"o_mode", metadata !"o_mode", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6o_modeEv", metadata !10, i32 1974, metadata !445, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!445 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !446, i32 0, null} ; [ DW_TAG_subroutine_type ]
!446 = metadata !{metadata !447, metadata !265}
!447 = metadata !{i32 458756, metadata !2, metadata !"ap_o_mode", metadata !132, i32 615, i64 32, i64 32, i64 0, i32 0, null, metadata !448, i32 0, null} ; [ DW_TAG_enumeration_type ]
!448 = metadata !{metadata !449, metadata !450, metadata !451, metadata !452, metadata !453}
!449 = metadata !{i32 458792, metadata !"SC_SAT", i64 0} ; [ DW_TAG_enumerator ]
!450 = metadata !{i32 458792, metadata !"SC_SAT_ZERO", i64 1} ; [ DW_TAG_enumerator ]
!451 = metadata !{i32 458792, metadata !"SC_SAT_SYM", i64 2} ; [ DW_TAG_enumerator ]
!452 = metadata !{i32 458792, metadata !"SC_WRAP", i64 3} ; [ DW_TAG_enumerator ]
!453 = metadata !{i32 458792, metadata !"SC_WRAP_SM", i64 4} ; [ DW_TAG_enumerator ]
!454 = metadata !{i32 458798, i32 0, metadata !208, metadata !"n_bits", metadata !"n_bits", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6n_bitsEv", metadata !10, i32 1978, metadata !304, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!455 = metadata !{i32 458798, i32 0, metadata !208, metadata !"to_string", metadata !"to_string", metadata !"_ZN13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_stringE8BaseMode", metadata !10, i32 1982, metadata !456, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!456 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !457, i32 0, null} ; [ DW_TAG_subroutine_type ]
!457 = metadata !{metadata !458, metadata !213, metadata !459}
!458 = metadata !{i32 458767, metadata !2, metadata !"", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !39} ; [ DW_TAG_pointer_type ]
!459 = metadata !{i32 458756, metadata !2, metadata !"BaseMode", metadata !132, i32 551, i64 32, i64 32, i64 0, i32 0, null, metadata !460, i32 0, null} ; [ DW_TAG_enumeration_type ]
!460 = metadata !{metadata !461, metadata !462, metadata !463, metadata !464}
!461 = metadata !{i32 458792, metadata !"SC_BIN", i64 2} ; [ DW_TAG_enumerator ]
!462 = metadata !{i32 458792, metadata !"SC_OCT", i64 8} ; [ DW_TAG_enumerator ]
!463 = metadata !{i32 458792, metadata !"SC_DEC", i64 10} ; [ DW_TAG_enumerator ]
!464 = metadata !{i32 458792, metadata !"SC_HEX", i64 16} ; [ DW_TAG_enumerator ]
!465 = metadata !{i32 458798, i32 0, metadata !208, metadata !"to_string", metadata !"to_string", metadata !"_ZN13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_stringEa", metadata !10, i32 1986, metadata !466, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!466 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !467, i32 0, null} ; [ DW_TAG_subroutine_type ]
!467 = metadata !{metadata !458, metadata !213, metadata !43}
!468 = metadata !{i32 458798, i32 0, metadata !9, metadata !"operator<<", metadata !"operator<<", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EElsEi", metadata !10, i32 1343, metadata !469, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!469 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !470, i32 0, null} ; [ DW_TAG_subroutine_type ]
!470 = metadata !{metadata !9, metadata !91, metadata !59}
!471 = metadata !{i32 458798, i32 0, metadata !9, metadata !"operator<<", metadata !"operator<<", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EElsEj", metadata !10, i32 1402, metadata !472, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!472 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !473, i32 0, null} ; [ DW_TAG_subroutine_type ]
!473 = metadata !{metadata !9, metadata !91, metadata !63}
!474 = metadata !{i32 458798, i32 0, metadata !9, metadata !"operator>>", metadata !"operator>>", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EErsEi", metadata !10, i32 1446, metadata !469, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!475 = metadata !{i32 458798, i32 0, metadata !9, metadata !"operator>>", metadata !"operator>>", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EErsEj", metadata !10, i32 1504, metadata !472, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!476 = metadata !{i32 458798, i32 0, metadata !9, metadata !"operator<<=", metadata !"operator<<=", metadata !"_ZN13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EElSEi", metadata !10, i32 1556, metadata !477, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!477 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !478, i32 0, null} ; [ DW_TAG_subroutine_type ]
!478 = metadata !{metadata !107, metadata !25, metadata !59}
!479 = metadata !{i32 458798, i32 0, metadata !9, metadata !"operator<<=", metadata !"operator<<=", metadata !"_ZN13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EElSEj", metadata !10, i32 1619, metadata !480, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!480 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !481, i32 0, null} ; [ DW_TAG_subroutine_type ]
!481 = metadata !{metadata !107, metadata !25, metadata !63}
!482 = metadata !{i32 458798, i32 0, metadata !9, metadata !"operator>>=", metadata !"operator>>=", metadata !"_ZN13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EErSEi", metadata !10, i32 1666, metadata !477, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!483 = metadata !{i32 458798, i32 0, metadata !9, metadata !"operator>>=", metadata !"operator>>=", metadata !"_ZN13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EErSEj", metadata !10, i32 1728, metadata !480, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!484 = metadata !{i32 458798, i32 0, metadata !9, metadata !"operator==", metadata !"operator==", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EEeqEd", metadata !10, i32 1806, metadata !485, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!485 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !486, i32 0, null} ; [ DW_TAG_subroutine_type ]
!486 = metadata !{metadata !26, metadata !91, metadata !93}
!487 = metadata !{i32 458798, i32 0, metadata !9, metadata !"operator!=", metadata !"operator!=", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EEneEd", metadata !10, i32 1807, metadata !485, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!488 = metadata !{i32 458798, i32 0, metadata !9, metadata !"operator>", metadata !"operator>", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EEgtEd", metadata !10, i32 1808, metadata !485, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!489 = metadata !{i32 458798, i32 0, metadata !9, metadata !"operator>=", metadata !"operator>=", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EEgeEd", metadata !10, i32 1809, metadata !485, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!490 = metadata !{i32 458798, i32 0, metadata !9, metadata !"operator<", metadata !"operator<", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EEltEd", metadata !10, i32 1810, metadata !485, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!491 = metadata !{i32 458798, i32 0, metadata !9, metadata !"operator<=", metadata !"operator<=", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EEleEd", metadata !10, i32 1811, metadata !485, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!492 = metadata !{i32 458798, i32 0, metadata !9, metadata !"operator[]", metadata !"operator[]", metadata !"_ZN13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EEixEj", metadata !10, i32 1814, metadata !493, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!493 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !494, i32 0, null} ; [ DW_TAG_subroutine_type ]
!494 = metadata !{metadata !495, metadata !25, metadata !63}
!495 = metadata !{i32 458771, metadata !2, metadata !"af_bit_ref<8,2,true,SC_RND_INF,SC_SAT,0>", metadata !10, i32 45, i64 0, i64 0, i64 0, i32 4, null, null, i32 0, null} ; [ DW_TAG_structure_type ]
!496 = metadata !{i32 458798, i32 0, metadata !9, metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EEixEj", metadata !10, i32 1826, metadata !497, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!497 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !498, i32 0, null} ; [ DW_TAG_subroutine_type ]
!498 = metadata !{metadata !26, metadata !91, metadata !63}
!499 = metadata !{i32 458798, i32 0, metadata !9, metadata !"bit", metadata !"bit", metadata !"_ZN13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EE3bitEj", metadata !10, i32 1831, metadata !493, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!500 = metadata !{i32 458798, i32 0, metadata !9, metadata !"bit", metadata !"bit", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EE3bitEj", metadata !10, i32 1844, metadata !497, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!501 = metadata !{i32 458798, i32 0, metadata !9, metadata !"get_bit", metadata !"get_bit", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EE7get_bitEi", metadata !10, i32 1856, metadata !502, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!502 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !503, i32 0, null} ; [ DW_TAG_subroutine_type ]
!503 = metadata !{metadata !26, metadata !91, metadata !59}
!504 = metadata !{i32 458798, i32 0, metadata !9, metadata !"get_bit", metadata !"get_bit", metadata !"_ZN13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EE7get_bitEi", metadata !10, i32 1862, metadata !505, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!505 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !506, i32 0, null} ; [ DW_TAG_subroutine_type ]
!506 = metadata !{metadata !495, metadata !25, metadata !59}
!507 = metadata !{i32 458798, i32 0, metadata !9, metadata !"range", metadata !"range", metadata !"_ZN13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EE5rangeEii", metadata !10, i32 1877, metadata !508, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!508 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !509, i32 0, null} ; [ DW_TAG_subroutine_type ]
!509 = metadata !{metadata !510, metadata !25, metadata !59, metadata !59}
!510 = metadata !{i32 458771, metadata !2, metadata !"af_range_ref<8,2,true,SC_RND_INF,SC_SAT,0>", metadata !10, i32 190, i64 0, i64 0, i64 0, i32 4, null, null, i32 0, null} ; [ DW_TAG_structure_type ]
!511 = metadata !{i32 458798, i32 0, metadata !9, metadata !"operator()", metadata !"operator()", metadata !"_ZN13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EEclEii", metadata !10, i32 1883, metadata !508, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!512 = metadata !{i32 458798, i32 0, metadata !9, metadata !"range", metadata !"range", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EE5rangeEii", metadata !10, i32 1889, metadata !513, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!513 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !514, i32 0, null} ; [ DW_TAG_subroutine_type ]
!514 = metadata !{metadata !510, metadata !91, metadata !59, metadata !59}
!515 = metadata !{i32 458798, i32 0, metadata !9, metadata !"operator()", metadata !"operator()", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EEclEii", metadata !10, i32 1938, metadata !513, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!516 = metadata !{i32 458798, i32 0, metadata !9, metadata !"range", metadata !"range", metadata !"_ZN13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EE5rangeEv", metadata !10, i32 1943, metadata !517, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!517 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !518, i32 0, null} ; [ DW_TAG_subroutine_type ]
!518 = metadata !{metadata !510, metadata !25}
!519 = metadata !{i32 458798, i32 0, metadata !9, metadata !"range", metadata !"range", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EE5rangeEv", metadata !10, i32 1948, metadata !520, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!520 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !521, i32 0, null} ; [ DW_TAG_subroutine_type ]
!521 = metadata !{metadata !510, metadata !91}
!522 = metadata !{i32 458798, i32 0, metadata !9, metadata !"is_zero", metadata !"is_zero", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EE7is_zeroEv", metadata !10, i32 1952, metadata !203, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!523 = metadata !{i32 458798, i32 0, metadata !9, metadata !"is_neg", metadata !"is_neg", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EE6is_negEv", metadata !10, i32 1956, metadata !203, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!524 = metadata !{i32 458798, i32 0, metadata !9, metadata !"wl", metadata !"wl", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EE2wlEv", metadata !10, i32 1962, metadata !134, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!525 = metadata !{i32 458798, i32 0, metadata !9, metadata !"iwl", metadata !"iwl", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EE3iwlEv", metadata !10, i32 1966, metadata !134, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!526 = metadata !{i32 458798, i32 0, metadata !9, metadata !"q_mode", metadata !"q_mode", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EE6q_modeEv", metadata !10, i32 1970, metadata !527, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!527 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !528, i32 0, null} ; [ DW_TAG_subroutine_type ]
!528 = metadata !{metadata !435, metadata !91}
!529 = metadata !{i32 458798, i32 0, metadata !9, metadata !"o_mode", metadata !"o_mode", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EE6o_modeEv", metadata !10, i32 1974, metadata !530, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!530 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !531, i32 0, null} ; [ DW_TAG_subroutine_type ]
!531 = metadata !{metadata !447, metadata !91}
!532 = metadata !{i32 458798, i32 0, metadata !9, metadata !"n_bits", metadata !"n_bits", metadata !"_ZNK13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EE6n_bitsEv", metadata !10, i32 1978, metadata !134, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!533 = metadata !{i32 458798, i32 0, metadata !9, metadata !"to_string", metadata !"to_string", metadata !"_ZN13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EE9to_stringE8BaseMode", metadata !10, i32 1982, metadata !534, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!534 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !535, i32 0, null} ; [ DW_TAG_subroutine_type ]
!535 = metadata !{metadata !458, metadata !25, metadata !459}
!536 = metadata !{i32 458798, i32 0, metadata !9, metadata !"to_string", metadata !"to_string", metadata !"_ZN13ap_fixed_baseILi8ELi2ELb1EL9ap_q_mode3EL9ap_o_mode0ELi0EE9to_stringEa", metadata !10, i32 1986, metadata !537, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!537 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !538, i32 0, null} ; [ DW_TAG_subroutine_type ]
!538 = metadata !{metadata !458, metadata !25, metadata !43}
!539 = metadata !{i32 458798, i32 0, metadata !5, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !6, i32 244, metadata !540, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!540 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !541, i32 0, null} ; [ DW_TAG_subroutine_type ]
!541 = metadata !{null, metadata !542}
!542 = metadata !{i32 458767, metadata !2, metadata !"", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !5} ; [ DW_TAG_pointer_type ]
!543 = metadata !{i32 458798, i32 0, metadata !5, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !6, i32 316, metadata !544, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!544 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !545, i32 0, null} ; [ DW_TAG_subroutine_type ]
!545 = metadata !{null, metadata !542, metadata !26}
!546 = metadata !{i32 458798, i32 0, metadata !5, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !6, i32 317, metadata !547, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!547 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !548, i32 0, null} ; [ DW_TAG_subroutine_type ]
!548 = metadata !{null, metadata !542, metadata !43}
!549 = metadata !{i32 458798, i32 0, metadata !5, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !6, i32 318, metadata !550, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!550 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !551, i32 0, null} ; [ DW_TAG_subroutine_type ]
!551 = metadata !{null, metadata !542, metadata !47}
!552 = metadata !{i32 458798, i32 0, metadata !5, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !6, i32 319, metadata !553, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!553 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !554, i32 0, null} ; [ DW_TAG_subroutine_type ]
!554 = metadata !{null, metadata !542, metadata !51}
!555 = metadata !{i32 458798, i32 0, metadata !5, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !6, i32 320, metadata !556, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!556 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !557, i32 0, null} ; [ DW_TAG_subroutine_type ]
!557 = metadata !{null, metadata !542, metadata !55}
!558 = metadata !{i32 458798, i32 0, metadata !5, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !6, i32 321, metadata !559, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!559 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !560, i32 0, null} ; [ DW_TAG_subroutine_type ]
!560 = metadata !{null, metadata !542, metadata !59}
!561 = metadata !{i32 458798, i32 0, metadata !5, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !6, i32 322, metadata !562, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!562 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !563, i32 0, null} ; [ DW_TAG_subroutine_type ]
!563 = metadata !{null, metadata !542, metadata !63}
!564 = metadata !{i32 458798, i32 0, metadata !5, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !6, i32 323, metadata !565, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!565 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !566, i32 0, null} ; [ DW_TAG_subroutine_type ]
!566 = metadata !{null, metadata !542, metadata !67}
!567 = metadata !{i32 458798, i32 0, metadata !5, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !6, i32 324, metadata !568, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!568 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !569, i32 0, null} ; [ DW_TAG_subroutine_type ]
!569 = metadata !{null, metadata !542, metadata !71}
!570 = metadata !{i32 458798, i32 0, metadata !5, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !6, i32 325, metadata !571, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!571 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !572, i32 0, null} ; [ DW_TAG_subroutine_type ]
!572 = metadata !{null, metadata !542, metadata !79}
!573 = metadata !{i32 458798, i32 0, metadata !5, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !6, i32 326, metadata !574, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!574 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !575, i32 0, null} ; [ DW_TAG_subroutine_type ]
!575 = metadata !{null, metadata !542, metadata !75}
!576 = metadata !{i32 458798, i32 0, metadata !5, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !6, i32 327, metadata !577, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!577 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !578, i32 0, null} ; [ DW_TAG_subroutine_type ]
!578 = metadata !{null, metadata !542, metadata !100}
!579 = metadata !{i32 458798, i32 0, metadata !5, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !6, i32 328, metadata !580, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!580 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !581, i32 0, null} ; [ DW_TAG_subroutine_type ]
!581 = metadata !{null, metadata !542, metadata !93}
!582 = metadata !{i32 458798, i32 0, metadata !5, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !6, i32 330, metadata !583, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!583 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !584, i32 0, null} ; [ DW_TAG_subroutine_type ]
!584 = metadata !{null, metadata !542, metadata !83}
!585 = metadata !{i32 458798, i32 0, metadata !5, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !6, i32 331, metadata !586, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!586 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !587, i32 0, null} ; [ DW_TAG_subroutine_type ]
!587 = metadata !{null, metadata !542, metadata !83, metadata !43}
!588 = metadata !{i32 458798, i32 0, metadata !5, metadata !"operator=", metadata !"operator=", metadata !"_ZN8ap_fixedILi8ELi2EL9ap_q_mode3EL9ap_o_mode0ELi0EEaSERKS2_", metadata !6, i32 335, metadata !589, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!589 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !590, i32 0, null} ; [ DW_TAG_subroutine_type ]
!590 = metadata !{metadata !591, metadata !542, metadata !592}
!591 = metadata !{i32 458768, metadata !2, metadata !"ap_fixed<8,2,SC_RND_INF,SC_SAT,0>", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !5} ; [ DW_TAG_reference_type ]
!592 = metadata !{i32 458768, metadata !2, metadata !"", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !4} ; [ DW_TAG_reference_type ]
!593 = metadata !{i32 458798, i32 0, metadata !5, metadata !"operator=", metadata !"operator=", metadata !"_ZN8ap_fixedILi8ELi2EL9ap_q_mode3EL9ap_o_mode0ELi0EEaSERVKS2_", metadata !6, i32 340, metadata !594, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!594 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !595, i32 0, null} ; [ DW_TAG_subroutine_type ]
!595 = metadata !{metadata !591, metadata !542, metadata !596}
!596 = metadata !{i32 458768, metadata !2, metadata !"", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !597} ; [ DW_TAG_reference_type ]
!597 = metadata !{i32 458790, metadata !2, metadata !"", metadata !2, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !598} ; [ DW_TAG_const_type ]
!598 = metadata !{i32 458805, metadata !2, metadata !"", metadata !2, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !5} ; [ DW_TAG_volatile_type ]
!599 = metadata !{i32 458798, i32 0, metadata !5, metadata !"operator=", metadata !"operator=", metadata !"_ZNV8ap_fixedILi8ELi2EL9ap_q_mode3EL9ap_o_mode0ELi0EEaSERKS2_", metadata !6, i32 346, metadata !600, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!600 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !601, i32 0, null} ; [ DW_TAG_subroutine_type ]
!601 = metadata !{null, metadata !602, metadata !592}
!602 = metadata !{i32 458767, metadata !2, metadata !"", metadata !2, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !598} ; [ DW_TAG_pointer_type ]
!603 = metadata !{i32 458798, i32 0, metadata !5, metadata !"operator=", metadata !"operator=", metadata !"_ZNV8ap_fixedILi8ELi2EL9ap_q_mode3EL9ap_o_mode0ELi0EEaSERVKS2_", metadata !6, i32 350, metadata !604, i1 false, i1 false, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!604 = metadata !{i32 458773, metadata !2, metadata !"", metadata !2, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !605, i32 0, null} ; [ DW_TAG_subroutine_type ]
!605 = metadata !{null, metadata !602, metadata !596}
!606 = metadata !{i32 458772, metadata !2, metadata !"ap_fixed<8,2,SC_RND_INF,SC_SAT,0>", metadata !6, i32 241, i64 8, i64 8, i64 0, i32 0, null, metadata !607, i32 0, null} ; [ DW_TAG_structure_field_type ]
!607 = metadata !{metadata !608}
!608 = metadata !{i32 458772, metadata !2, metadata !"ap_fixed_base<8,2,true,SC_RND_INF,SC_SAT,0>", metadata !10, i32 464, i64 8, i64 8, i64 0, i32 0, null, metadata !609, i32 0, null} ; [ DW_TAG_structure_field_type ]
!609 = metadata !{metadata !610}
!610 = metadata !{i32 458772, metadata !2, metadata !"ssdm_int<8,true>", metadata !14, i32 10, i64 8, i64 8, i64 0, i32 0, null, metadata !611, i32 0, null} ; [ DW_TAG_structure_field_type ]
!611 = metadata !{metadata !16}
!612 = metadata !{i32 462866, i32 0, metadata !613, metadata !"YCOEFFG.V", metadata !"YCOEFFG.V", metadata !"YCOEFFG.V", metadata !3, i32 65, metadata !606, i1 true, i1 true, null} ; [ DW_TAG_variable_field ]
!613 = metadata !{i32 458804, i32 0, metadata !2, metadata !"YCOEFFG", metadata !"YCOEFFG", metadata !"", metadata !3, i32 65, metadata !4, i1 true, i1 true, null} ; [ DW_TAG_variable ]
!614 = metadata !{i32 462866, i32 0, metadata !615, metadata !"YCOEFFB.V", metadata !"YCOEFFB.V", metadata !"YCOEFFB.V", metadata !3, i32 66, metadata !606, i1 true, i1 true, null} ; [ DW_TAG_variable_field ]
!615 = metadata !{i32 458804, i32 0, metadata !2, metadata !"YCOEFFB", metadata !"YCOEFFB", metadata !"", metadata !3, i32 66, metadata !4, i1 true, i1 true, null} ; [ DW_TAG_variable ]
!616 = metadata !{i32 462866, i32 0, metadata !617, metadata !"CBCOEFFR.V", metadata !"CBCOEFFR.V", metadata !"CBCOEFFR.V", metadata !3, i32 68, metadata !606, i1 true, i1 true, null} ; [ DW_TAG_variable_field ]
!617 = metadata !{i32 458804, i32 0, metadata !2, metadata !"CBCOEFFR", metadata !"CBCOEFFR", metadata !"", metadata !3, i32 68, metadata !4, i1 true, i1 true, null} ; [ DW_TAG_variable ]
!618 = metadata !{i32 462866, i32 0, metadata !619, metadata !"CBCOEFFG.V", metadata !"CBCOEFFG.V", metadata !"CBCOEFFG.V", metadata !3, i32 69, metadata !606, i1 true, i1 true, null} ; [ DW_TAG_variable_field ]
!619 = metadata !{i32 458804, i32 0, metadata !2, metadata !"CBCOEFFG", metadata !"CBCOEFFG", metadata !"", metadata !3, i32 69, metadata !4, i1 true, i1 true, null} ; [ DW_TAG_variable ]
!620 = metadata !{i32 462866, i32 0, metadata !621, metadata !"CBCOEFFB.V", metadata !"CBCOEFFB.V", metadata !"CBCOEFFB.V", metadata !3, i32 70, metadata !606, i1 true, i1 true, null} ; [ DW_TAG_variable_field ]
!621 = metadata !{i32 458804, i32 0, metadata !2, metadata !"CBCOEFFB", metadata !"CBCOEFFB", metadata !"", metadata !3, i32 70, metadata !4, i1 true, i1 true, null} ; [ DW_TAG_variable ]
!622 = metadata !{i32 462866, i32 0, metadata !623, metadata !"CRCOEFFR.V", metadata !"CRCOEFFR.V", metadata !"CRCOEFFR.V", metadata !3, i32 72, metadata !606, i1 true, i1 true, null} ; [ DW_TAG_variable_field ]
!623 = metadata !{i32 458804, i32 0, metadata !2, metadata !"CRCOEFFR", metadata !"CRCOEFFR", metadata !"", metadata !3, i32 72, metadata !4, i1 true, i1 true, null} ; [ DW_TAG_variable ]
!624 = metadata !{i32 462866, i32 0, metadata !625, metadata !"CRCOEFFG.V", metadata !"CRCOEFFG.V", metadata !"CRCOEFFG.V", metadata !3, i32 73, metadata !606, i1 true, i1 true, null} ; [ DW_TAG_variable_field ]
!625 = metadata !{i32 458804, i32 0, metadata !2, metadata !"CRCOEFFG", metadata !"CRCOEFFG", metadata !"", metadata !3, i32 73, metadata !4, i1 true, i1 true, null} ; [ DW_TAG_variable ]
!626 = metadata !{i32 462866, i32 0, metadata !627, metadata !"CRCOEFFB.V", metadata !"CRCOEFFB.V", metadata !"CRCOEFFB.V", metadata !3, i32 74, metadata !606, i1 true, i1 true, null} ; [ DW_TAG_variable_field ]
!627 = metadata !{i32 458804, i32 0, metadata !2, metadata !"CRCOEFFB", metadata !"CRCOEFFB", metadata !"", metadata !3, i32 74, metadata !4, i1 true, i1 true, null} ; [ DW_TAG_variable ]
