; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; ASSERT EQ: i1 1 = call i1 @run_test_1()
; ASSERT EQ: i1 1 = call i1 @run_test_2()
; ASSERT EQ: i1 1 = call i1 @run_test_3()
; ASSERT EQ: i1 1 = call i1 @run_test_4()
; ASSERT EQ: i1 1 = call i1 @run_test_5()
; ASSERT EQ: i1 1 = call i1 @run_test_6()
; ASSERT EQ: i1 1 = call i1 @run_test_7()
; ASSERT EQ: i1 1 = call i1 @run_test_8()
; ASSERT EQ: i1 1 = call i1 @run_test_9()
; ASSERT EQ: i1 1 = call i1 @run_test_10()
; ASSERT EQ: i1 1 = call i1 @run_test_11()
; ASSERT EQ: i1 1 = call i1 @run_test_12()
; ASSERT EQ: i1 1 = call i1 @run_test_13()
; ASSERT EQ: i1 1 = call i1 @run_test_14()
; ASSERT EQ: i1 1 = call i1 @run_test_15()
; ASSERT EQ: i1 1 = call i1 @run_test_16()
; ASSERT EQ: i1 1 = call i1 @run_test_17()
; ASSERT EQ: i1 1 = call i1 @run_test_18()
; ASSERT EQ: i1 1 = call i1 @run_test_19()
; ASSERT EQ: i1 1 = call i1 @run_test_20()
; ASSERT EQ: i1 1 = call i1 @run_test_21()
; ASSERT EQ: i1 1 = call i1 @run_test_22()
; ASSERT EQ: i1 1 = call i1 @run_test_23()
; ASSERT EQ: i1 1 = call i1 @run_test_24()
; ASSERT EQ: i1 1 = call i1 @run_test_25()
; ASSERT EQ: i1 1 = call i1 @run_test_26()
; ASSERT EQ: i1 1 = call i1 @run_test_27()
; ASSERT EQ: i1 1 = call i1 @run_test_28()
; ASSERT EQ: i1 1 = call i1 @run_test_29()
; ASSERT EQ: i1 1 = call i1 @run_test_30()

%"core::ptr::metadata::PtrRepr<[u8]>" = type { [2 x i64] }

@alloc_f5ffd2fd1476bab43ad89fb40c72d0c5 = private unnamed_addr constant <{ [10 x i8] }> <{ [10 x i8] c"src/lib.rs" }>, align 1
@alloc_9e688c3e07534cc266c7a8e4500b70a9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\08\00\00\00\0E\00\00\00" }>, align 8
@alloc_4d23cbe03235fec4be15c7e41659d52c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\09\00\00\00\0E\00\00\00" }>, align 8
@alloc_0fd60be9de7285a6fa47685a97eb2724 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\0A\00\00\00\0E\00\00\00" }>, align 8
@alloc_04a6907afb2eb9278039aa4cfe0d4362 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\17\00\00\00\10\00\00\00" }>, align 8
@alloc_0e8e450a2eabc3322d00533462975755 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\18\00\00\00\10\00\00\00" }>, align 8
@alloc_eddc2e946e7cc2ff1d2c42720f6e8860 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\19\00\00\00\10\00\00\00" }>, align 8
@alloc_dde4800a9c92c90900a5ec564261247d = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\1A\00\00\00\10\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define i32 @hdr_compare(ptr %h1, ptr %h2) unnamed_addr #0 !dbg !6 {
start:
  %h2.dbg.spill = alloca ptr, align 8
  %h1.dbg.spill = alloca ptr, align 8
  store ptr %h1, ptr %h1.dbg.spill, align 8
    #dbg_declare(ptr %h1.dbg.spill, !17, !DIExpression(), !20)
  store ptr %h2, ptr %h2.dbg.spill, align 8
    #dbg_declare(ptr %h2.dbg.spill, !18, !DIExpression(), !21)
  %0 = call { ptr, i64 } @_ZN4core5slice3raw14from_raw_parts17h6db8c12aaf3b01f6E(ptr %h1, i64 4), !dbg !22
  %_4.0 = extractvalue { ptr, i64 } %0, 0, !dbg !22
  %_4.1 = extractvalue { ptr, i64 } %0, 1, !dbg !22
  %1 = call { ptr, i64 } @_ZN4core5slice3raw14from_raw_parts17h6db8c12aaf3b01f6E(ptr %h2, i64 4), !dbg !23
  %_6.0 = extractvalue { ptr, i64 } %1, 0, !dbg !23
  %_6.1 = extractvalue { ptr, i64 } %1, 1, !dbg !23
  %2 = call i32 @_ZN15hdr_compare_lib3src3lib11hdr_compare17h4111b60c128fb14fE(ptr align 1 %_4.0, i64 %_4.1, ptr align 1 %_6.0, i64 %_6.1), !dbg !24
  ret i32 %2, !dbg !25
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @_ZN4core5slice3raw14from_raw_parts17h6db8c12aaf3b01f6E(ptr %data, i64 %len) unnamed_addr #1 !dbg !26 {
start:
  %data_address.dbg.spill = alloca ptr, align 8
  %len.dbg.spill = alloca i64, align 8
  %data.dbg.spill = alloca ptr, align 8
  %_8 = alloca { ptr, i64 }, align 8
  %_7 = alloca %"core::ptr::metadata::PtrRepr<[u8]>", align 8
  store ptr %data, ptr %data.dbg.spill, align 8
    #dbg_declare(ptr %data.dbg.spill, !41, !DIExpression(), !45)
    #dbg_declare(ptr %data.dbg.spill, !46, !DIExpression(), !58)
    #dbg_declare(ptr %data.dbg.spill, !60, !DIExpression(), !72)
  store i64 %len, ptr %len.dbg.spill, align 8
    #dbg_declare(ptr %len.dbg.spill, !42, !DIExpression(), !74)
    #dbg_declare(ptr %len.dbg.spill, !57, !DIExpression(), !75)
    #dbg_declare(ptr %len.dbg.spill, !76, !DIExpression(), !84)
  store ptr %data, ptr %data_address.dbg.spill, align 8, !dbg !86
    #dbg_declare(ptr %data_address.dbg.spill, !83, !DIExpression(), !87)
  store ptr %data, ptr %_8, align 8, !dbg !88
  %0 = getelementptr inbounds { ptr, i64 }, ptr %_8, i32 0, i32 1, !dbg !88
  store i64 %len, ptr %0, align 8, !dbg !88
  %1 = getelementptr inbounds { ptr, i64 }, ptr %_8, i32 0, i32 0, !dbg !89
  %2 = load ptr, ptr %1, align 8, !dbg !89, !noundef !19
  %3 = getelementptr inbounds { ptr, i64 }, ptr %_8, i32 0, i32 1, !dbg !89
  %4 = load i64, ptr %3, align 8, !dbg !89, !noundef !19
  %5 = getelementptr inbounds { ptr, i64 }, ptr %_7, i32 0, i32 0, !dbg !89
  store ptr %2, ptr %5, align 8, !dbg !89
  %6 = getelementptr inbounds { ptr, i64 }, ptr %_7, i32 0, i32 1, !dbg !89
  store i64 %4, ptr %6, align 8, !dbg !89
  %7 = getelementptr inbounds { ptr, i64 }, ptr %_7, i32 0, i32 0, !dbg !89
  %_3.0 = load ptr, ptr %7, align 8, !dbg !89, !noundef !19
  %8 = getelementptr inbounds { ptr, i64 }, ptr %_7, i32 0, i32 1, !dbg !89
  %_3.1 = load i64, ptr %8, align 8, !dbg !89, !noundef !19
  %9 = insertvalue { ptr, i64 } poison, ptr %_3.0, 0, !dbg !90
  %10 = insertvalue { ptr, i64 } %9, i64 %_3.1, 1, !dbg !90
  ret { ptr, i64 } %10, !dbg !90
}

; Function Attrs: nonlazybind uwtable
define internal i32 @_ZN15hdr_compare_lib3src3lib11hdr_compare17h4111b60c128fb14fE(ptr align 1 %h1.0, i64 %h1.1, ptr align 1 %h2.0, i64 %h2.1) unnamed_addr #0 !dbg !91 {
start:
  %h2b2.dbg.spill = alloca i32, align 4
  %h2b1.dbg.spill = alloca i32, align 4
  %h1b2.dbg.spill = alloca i32, align 4
  %h1b1.dbg.spill = alloca i32, align 4
  %h2.dbg.spill = alloca { ptr, i64 }, align 8
  %h1.dbg.spill = alloca { ptr, i64 }, align 8
  %_30 = alloca i8, align 1
  %_29 = alloca i8, align 1
  %_28 = alloca i8, align 1
  %_3 = alloca i8, align 1
  %0 = alloca i32, align 4
  %1 = getelementptr inbounds { ptr, i64 }, ptr %h1.dbg.spill, i32 0, i32 0
  store ptr %h1.0, ptr %1, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %h1.dbg.spill, i32 0, i32 1
  store i64 %h1.1, ptr %2, align 8
    #dbg_declare(ptr %h1.dbg.spill, !95, !DIExpression(), !105)
  %3 = getelementptr inbounds { ptr, i64 }, ptr %h2.dbg.spill, i32 0, i32 0
  store ptr %h2.0, ptr %3, align 8
  %4 = getelementptr inbounds { ptr, i64 }, ptr %h2.dbg.spill, i32 0, i32 1
  store i64 %h2.1, ptr %4, align 8
    #dbg_declare(ptr %h2.dbg.spill, !96, !DIExpression(), !106)
  %_4 = icmp ult i64 %h1.1, 3, !dbg !107
  br i1 %_4, label %bb1, label %bb2, !dbg !107

bb2:                                              ; preds = %start
  %_6 = icmp ult i64 %h2.1, 3, !dbg !108
  %5 = zext i1 %_6 to i8, !dbg !107
  store i8 %5, ptr %_3, align 1, !dbg !107
  br label %bb3, !dbg !107

bb1:                                              ; preds = %start
  store i8 1, ptr %_3, align 1, !dbg !107
  br label %bb3, !dbg !107

bb3:                                              ; preds = %bb1, %bb2
  %6 = load i8, ptr %_3, align 1, !dbg !107, !range !109, !noundef !19
  %7 = trunc i8 %6 to i1, !dbg !107
  br i1 %7, label %bb4, label %bb5, !dbg !107

bb5:                                              ; preds = %bb3
  %_12 = icmp ult i64 1, %h1.1, !dbg !110
  %8 = call i1 @llvm.expect.i1(i1 %_12, i1 true), !dbg !110
  br i1 %8, label %bb6, label %panic, !dbg !110

bb4:                                              ; preds = %bb3
  store i32 0, ptr %0, align 4, !dbg !111
  br label %bb20, !dbg !112

bb20:                                             ; preds = %bb12, %bb4
  %9 = load i32, ptr %0, align 4, !dbg !112, !noundef !19
  ret i32 %9, !dbg !112

bb6:                                              ; preds = %bb5
  %10 = getelementptr inbounds [0 x i8], ptr %h1.0, i64 0, i64 1, !dbg !110
  %_9 = load i8, ptr %10, align 1, !dbg !110, !noundef !19
  %h1b1 = zext i8 %_9 to i32, !dbg !110
  store i32 %h1b1, ptr %h1b1.dbg.spill, align 4, !dbg !110
    #dbg_declare(ptr %h1b1.dbg.spill, !97, !DIExpression(), !113)
  %_17 = icmp ult i64 2, %h1.1, !dbg !114
  %11 = call i1 @llvm.expect.i1(i1 %_17, i1 true), !dbg !114
  br i1 %11, label %bb7, label %panic1, !dbg !114

panic:                                            ; preds = %bb5
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 1, i64 %h1.1, ptr align 8 @alloc_04a6907afb2eb9278039aa4cfe0d4362) #4, !dbg !110
  unreachable, !dbg !110

bb7:                                              ; preds = %bb6
  %12 = getelementptr inbounds [0 x i8], ptr %h1.0, i64 0, i64 2, !dbg !114
  %_14 = load i8, ptr %12, align 1, !dbg !114, !noundef !19
  %h1b2 = zext i8 %_14 to i32, !dbg !114
  store i32 %h1b2, ptr %h1b2.dbg.spill, align 4, !dbg !114
    #dbg_declare(ptr %h1b2.dbg.spill, !99, !DIExpression(), !115)
  %_22 = icmp ult i64 1, %h2.1, !dbg !116
  %13 = call i1 @llvm.expect.i1(i1 %_22, i1 true), !dbg !116
  br i1 %13, label %bb8, label %panic2, !dbg !116

panic1:                                           ; preds = %bb6
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 2, i64 %h1.1, ptr align 8 @alloc_0e8e450a2eabc3322d00533462975755) #4, !dbg !114
  unreachable, !dbg !114

bb8:                                              ; preds = %bb7
  %14 = getelementptr inbounds [0 x i8], ptr %h2.0, i64 0, i64 1, !dbg !116
  %_19 = load i8, ptr %14, align 1, !dbg !116, !noundef !19
  %h2b1 = zext i8 %_19 to i32, !dbg !116
  store i32 %h2b1, ptr %h2b1.dbg.spill, align 4, !dbg !116
    #dbg_declare(ptr %h2b1.dbg.spill, !101, !DIExpression(), !117)
  %_27 = icmp ult i64 2, %h2.1, !dbg !118
  %15 = call i1 @llvm.expect.i1(i1 %_27, i1 true), !dbg !118
  br i1 %15, label %bb9, label %panic3, !dbg !118

panic2:                                           ; preds = %bb7
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 1, i64 %h2.1, ptr align 8 @alloc_eddc2e946e7cc2ff1d2c42720f6e8860) #4, !dbg !116
  unreachable, !dbg !116

bb9:                                              ; preds = %bb8
  %16 = getelementptr inbounds [0 x i8], ptr %h2.0, i64 0, i64 2, !dbg !118
  %_24 = load i8, ptr %16, align 1, !dbg !118, !noundef !19
  %h2b2 = zext i8 %_24 to i32, !dbg !118
  store i32 %h2b2, ptr %h2b2.dbg.spill, align 4, !dbg !118
    #dbg_declare(ptr %h2b2.dbg.spill, !103, !DIExpression(), !119)
  %_31 = call i32 @_ZN15hdr_compare_lib3src3lib9hdr_valid17hdaedcb601bda263dE(ptr align 1 %h2.0, i64 %h2.1), !dbg !120
  %17 = icmp eq i32 %_31, 0, !dbg !120
  br i1 %17, label %bb16, label %bb17, !dbg !120

panic3:                                           ; preds = %bb8
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 2, i64 %h2.1, ptr align 8 @alloc_dde4800a9c92c90900a5ec564261247d) #4, !dbg !118
  unreachable, !dbg !118

bb16:                                             ; preds = %bb9
  store i8 0, ptr %_30, align 1, !dbg !120
  br label %bb18, !dbg !120

bb17:                                             ; preds = %bb9
  %_34 = xor i32 %h1b1, %h2b1, !dbg !121
  %_33 = and i32 %_34, 254, !dbg !121
  %_32 = icmp eq i32 %_33, 0, !dbg !122
  %18 = zext i1 %_32 to i8, !dbg !120
  store i8 %18, ptr %_30, align 1, !dbg !120
  br label %bb18, !dbg !120

bb18:                                             ; preds = %bb17, %bb16
  %19 = load i8, ptr %_30, align 1, !dbg !120, !range !109, !noundef !19
  %20 = trunc i8 %19 to i1, !dbg !120
  br i1 %20, label %bb14, label %bb13, !dbg !120

bb13:                                             ; preds = %bb18
  store i8 0, ptr %_29, align 1, !dbg !120
  br label %bb15, !dbg !120

bb14:                                             ; preds = %bb18
  %_37 = xor i32 %h1b2, %h2b2, !dbg !123
  %_36 = and i32 %_37, 12, !dbg !123
  %_35 = icmp eq i32 %_36, 0, !dbg !124
  %21 = zext i1 %_35 to i8, !dbg !120
  store i8 %21, ptr %_29, align 1, !dbg !120
  br label %bb15, !dbg !120

bb15:                                             ; preds = %bb14, %bb13
  %22 = load i8, ptr %_29, align 1, !dbg !125, !range !109, !noundef !19
  %23 = trunc i8 %22 to i1, !dbg !125
  br i1 %23, label %bb11, label %bb10, !dbg !125

bb10:                                             ; preds = %bb15
  store i8 0, ptr %_28, align 1, !dbg !125
  br label %bb12, !dbg !125

bb11:                                             ; preds = %bb15
  %_42 = and i32 %h1b2, 240, !dbg !126
  %_41 = icmp eq i32 %_42, 0, !dbg !127
  %_40 = zext i1 %_41 to i32, !dbg !127
  %_45 = and i32 %h2b2, 240, !dbg !128
  %_44 = icmp eq i32 %_45, 0, !dbg !129
  %_43 = zext i1 %_44 to i32, !dbg !129
  %_39 = xor i32 %_40, %_43, !dbg !127
  %_38 = icmp eq i32 %_39, 0, !dbg !130
  %24 = zext i1 %_38 to i8, !dbg !125
  store i8 %24, ptr %_28, align 1, !dbg !125
  br label %bb12, !dbg !125

bb12:                                             ; preds = %bb11, %bb10
  %25 = load i8, ptr %_28, align 1, !dbg !125, !range !109, !noundef !19
  %26 = trunc i8 %25 to i1, !dbg !125
  %27 = zext i1 %26 to i32, !dbg !125
  store i32 %27, ptr %0, align 4, !dbg !125
  br label %bb20, !dbg !112
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.expect.i1(i1, i1) #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64, i64, ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
define internal i32 @_ZN15hdr_compare_lib3src3lib9hdr_valid17hdaedcb601bda263dE(ptr align 1 %h.0, i64 %h.1) unnamed_addr #0 !dbg !131 {
start:
  %b2.dbg.spill = alloca i32, align 4
  %b1.dbg.spill = alloca i32, align 4
  %b0.dbg.spill = alloca i32, align 4
  %h.dbg.spill = alloca { ptr, i64 }, align 8
  %_23 = alloca i8, align 1
  %_22 = alloca i8, align 1
  %_21 = alloca i8, align 1
  %_20 = alloca i8, align 1
  %_19 = alloca i8, align 1
  %0 = alloca i32, align 4
  %1 = getelementptr inbounds { ptr, i64 }, ptr %h.dbg.spill, i32 0, i32 0
  store ptr %h.0, ptr %1, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %h.dbg.spill, i32 0, i32 1
  store i64 %h.1, ptr %2, align 8
    #dbg_declare(ptr %h.dbg.spill, !135, !DIExpression(), !142)
  %_2 = icmp ult i64 %h.1, 3, !dbg !143
  br i1 %_2, label %bb1, label %bb2, !dbg !143

bb2:                                              ; preds = %start
  %_8 = icmp ult i64 0, %h.1, !dbg !144
  %3 = call i1 @llvm.expect.i1(i1 %_8, i1 true), !dbg !144
  br i1 %3, label %bb3, label %panic, !dbg !144

bb1:                                              ; preds = %start
  store i32 0, ptr %0, align 4, !dbg !145
  br label %bb21, !dbg !146

bb21:                                             ; preds = %bb8, %bb1
  %4 = load i32, ptr %0, align 4, !dbg !146, !noundef !19
  ret i32 %4, !dbg !146

bb3:                                              ; preds = %bb2
  %5 = getelementptr inbounds [0 x i8], ptr %h.0, i64 0, i64 0, !dbg !144
  %_5 = load i8, ptr %5, align 1, !dbg !144, !noundef !19
  %b0 = zext i8 %_5 to i32, !dbg !144
  store i32 %b0, ptr %b0.dbg.spill, align 4, !dbg !144
    #dbg_declare(ptr %b0.dbg.spill, !136, !DIExpression(), !147)
  %_13 = icmp ult i64 1, %h.1, !dbg !148
  %6 = call i1 @llvm.expect.i1(i1 %_13, i1 true), !dbg !148
  br i1 %6, label %bb4, label %panic1, !dbg !148

panic:                                            ; preds = %bb2
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 0, i64 %h.1, ptr align 8 @alloc_9e688c3e07534cc266c7a8e4500b70a9) #4, !dbg !144
  unreachable, !dbg !144

bb4:                                              ; preds = %bb3
  %7 = getelementptr inbounds [0 x i8], ptr %h.0, i64 0, i64 1, !dbg !148
  %_10 = load i8, ptr %7, align 1, !dbg !148, !noundef !19
  %b1 = zext i8 %_10 to i32, !dbg !148
  store i32 %b1, ptr %b1.dbg.spill, align 4, !dbg !148
    #dbg_declare(ptr %b1.dbg.spill, !138, !DIExpression(), !149)
  %_18 = icmp ult i64 2, %h.1, !dbg !150
  %8 = call i1 @llvm.expect.i1(i1 %_18, i1 true), !dbg !150
  br i1 %8, label %bb5, label %panic2, !dbg !150

panic1:                                           ; preds = %bb3
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 1, i64 %h.1, ptr align 8 @alloc_4d23cbe03235fec4be15c7e41659d52c) #4, !dbg !148
  unreachable, !dbg !148

bb5:                                              ; preds = %bb4
  %9 = getelementptr inbounds [0 x i8], ptr %h.0, i64 0, i64 2, !dbg !150
  %_15 = load i8, ptr %9, align 1, !dbg !150, !noundef !19
  %b2 = zext i8 %_15 to i32, !dbg !150
  store i32 %b2, ptr %b2.dbg.spill, align 4, !dbg !150
    #dbg_declare(ptr %b2.dbg.spill, !140, !DIExpression(), !151)
  %10 = icmp eq i32 %b0, 255, !dbg !152
  br i1 %10, label %bb16, label %bb15, !dbg !152

panic2:                                           ; preds = %bb4
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 2, i64 %h.1, ptr align 8 @alloc_0fd60be9de7285a6fa47685a97eb2724) #4, !dbg !150
  unreachable, !dbg !150

bb16:                                             ; preds = %bb5
  %_24 = and i32 %b1, 240, !dbg !153
  %11 = icmp eq i32 %_24, 240, !dbg !154
  br i1 %11, label %bb18, label %bb19, !dbg !154

bb15:                                             ; preds = %bb5
  store i8 0, ptr %_22, align 1, !dbg !152
  br label %bb17, !dbg !152

bb17:                                             ; preds = %bb20, %bb15
  %12 = load i8, ptr %_22, align 1, !dbg !152, !range !109, !noundef !19
  %13 = trunc i8 %12 to i1, !dbg !152
  br i1 %13, label %bb13, label %bb12, !dbg !152

bb18:                                             ; preds = %bb16
  store i8 1, ptr %_23, align 1, !dbg !154
  br label %bb20, !dbg !154

bb19:                                             ; preds = %bb16
  %_26 = and i32 %b1, 254, !dbg !155
  %_25 = icmp eq i32 %_26, 226, !dbg !156
  %14 = zext i1 %_25 to i8, !dbg !154
  store i8 %14, ptr %_23, align 1, !dbg !154
  br label %bb20, !dbg !154

bb20:                                             ; preds = %bb19, %bb18
  %15 = load i8, ptr %_23, align 1, !dbg !152, !range !109, !noundef !19
  %16 = trunc i8 %15 to i1, !dbg !152
  %17 = zext i1 %16 to i8, !dbg !152
  store i8 %17, ptr %_22, align 1, !dbg !152
  br label %bb17, !dbg !152

bb12:                                             ; preds = %bb17
  store i8 0, ptr %_21, align 1, !dbg !152
  br label %bb14, !dbg !152

bb13:                                             ; preds = %bb17
  %_29 = ashr i32 %b1, 1, !dbg !157
  %_28 = and i32 %_29, 3, !dbg !157
  %_27 = icmp ne i32 %_28, 0, !dbg !158
  %18 = zext i1 %_27 to i8, !dbg !152
  store i8 %18, ptr %_21, align 1, !dbg !152
  br label %bb14, !dbg !152

bb14:                                             ; preds = %bb13, %bb12
  %19 = load i8, ptr %_21, align 1, !dbg !152, !range !109, !noundef !19
  %20 = trunc i8 %19 to i1, !dbg !152
  br i1 %20, label %bb10, label %bb9, !dbg !152

bb9:                                              ; preds = %bb14
  store i8 0, ptr %_20, align 1, !dbg !152
  br label %bb11, !dbg !152

bb10:                                             ; preds = %bb14
  %_31 = ashr i32 %b2, 4, !dbg !159
  %_30 = icmp ne i32 %_31, 15, !dbg !160
  %21 = zext i1 %_30 to i8, !dbg !152
  store i8 %21, ptr %_20, align 1, !dbg !152
  br label %bb11, !dbg !152

bb11:                                             ; preds = %bb10, %bb9
  %22 = load i8, ptr %_20, align 1, !dbg !161, !range !109, !noundef !19
  %23 = trunc i8 %22 to i1, !dbg !161
  br i1 %23, label %bb7, label %bb6, !dbg !161

bb6:                                              ; preds = %bb11
  store i8 0, ptr %_19, align 1, !dbg !161
  br label %bb8, !dbg !161

bb7:                                              ; preds = %bb11
  %_34 = ashr i32 %b2, 2, !dbg !162
  %_33 = and i32 %_34, 3, !dbg !162
  %_32 = icmp ne i32 %_33, 3, !dbg !163
  %24 = zext i1 %_32 to i8, !dbg !161
  store i8 %24, ptr %_19, align 1, !dbg !161
  br label %bb8, !dbg !161

bb8:                                              ; preds = %bb7, %bb6
  %25 = load i8, ptr %_19, align 1, !dbg !161, !range !109, !noundef !19
  %26 = trunc i8 %25 to i1, !dbg !161
  %27 = zext i1 %26 to i32, !dbg !161
  store i32 %27, ptr %0, align 4, !dbg !161
  br label %bb21, !dbg !146
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_1() unnamed_addr #0 !dbg !164 {
start:
  %self.dbg.spill.i1 = alloca { ptr, i64 }, align 8
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h2 = alloca [3 x i8], align 1
  %h1 = alloca [3 x i8], align 1
    #dbg_declare(ptr %h1, !169, !DIExpression(), !178)
    #dbg_declare(ptr %h2, !174, !DIExpression(), !179)
  %0 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 0, !dbg !180
  store i8 -1, ptr %0, align 1, !dbg !180
  %1 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 1, !dbg !180
  store i8 -14, ptr %1, align 1, !dbg !180
  %2 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 2, !dbg !180
  store i8 16, ptr %2, align 1, !dbg !180
  %3 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 0, !dbg !181
  store i8 -2, ptr %3, align 1, !dbg !181
  %4 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 1, !dbg !181
  store i8 -14, ptr %4, align 1, !dbg !181
  %5 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 2, !dbg !181
  store i8 16, ptr %5, align 1, !dbg !181
  store ptr %h1, ptr %self.dbg.spill.i1, align 8
  %6 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i1, i32 0, i32 1
  store i64 3, ptr %6, align 8
    #dbg_declare(ptr %self.dbg.spill.i1, !182, !DIExpression(), !189)
  store ptr %h2, ptr %self.dbg.spill.i, align 8
  %7 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %7, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !182, !DIExpression(), !191)
  %result = call i32 @hdr_compare(ptr %h1, ptr %h2), !dbg !193
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !193
    #dbg_declare(ptr %result.dbg.spill, !176, !DIExpression(), !194)
  %8 = icmp eq i32 %result, 0, !dbg !195
  ret i1 %8, !dbg !196
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_2() unnamed_addr #0 !dbg !197 {
start:
  %self.dbg.spill.i1 = alloca { ptr, i64 }, align 8
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h2 = alloca [3 x i8], align 1
  %h1 = alloca [3 x i8], align 1
    #dbg_declare(ptr %h1, !199, !DIExpression(), !205)
    #dbg_declare(ptr %h2, !201, !DIExpression(), !206)
  %0 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 0, !dbg !207
  store i8 -1, ptr %0, align 1, !dbg !207
  %1 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 1, !dbg !207
  store i8 -14, ptr %1, align 1, !dbg !207
  %2 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 2, !dbg !207
  store i8 16, ptr %2, align 1, !dbg !207
  %3 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 0, !dbg !208
  store i8 -1, ptr %3, align 1, !dbg !208
  %4 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 1, !dbg !208
  store i8 -94, ptr %4, align 1, !dbg !208
  %5 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 2, !dbg !208
  store i8 16, ptr %5, align 1, !dbg !208
  store ptr %h1, ptr %self.dbg.spill.i1, align 8
  %6 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i1, i32 0, i32 1
  store i64 3, ptr %6, align 8
    #dbg_declare(ptr %self.dbg.spill.i1, !182, !DIExpression(), !209)
  store ptr %h2, ptr %self.dbg.spill.i, align 8
  %7 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %7, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !182, !DIExpression(), !211)
  %result = call i32 @hdr_compare(ptr %h1, ptr %h2), !dbg !213
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !213
    #dbg_declare(ptr %result.dbg.spill, !203, !DIExpression(), !214)
  %8 = icmp eq i32 %result, 0, !dbg !215
  ret i1 %8, !dbg !216
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_3() unnamed_addr #0 !dbg !217 {
start:
  %self.dbg.spill.i1 = alloca { ptr, i64 }, align 8
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h2 = alloca [3 x i8], align 1
  %h1 = alloca [3 x i8], align 1
    #dbg_declare(ptr %h1, !219, !DIExpression(), !225)
    #dbg_declare(ptr %h2, !221, !DIExpression(), !226)
  %0 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 0, !dbg !227
  store i8 -1, ptr %0, align 1, !dbg !227
  %1 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 1, !dbg !227
  store i8 -14, ptr %1, align 1, !dbg !227
  %2 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 2, !dbg !227
  store i8 16, ptr %2, align 1, !dbg !227
  %3 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 0, !dbg !228
  store i8 -1, ptr %3, align 1, !dbg !228
  %4 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 1, !dbg !228
  store i8 -16, ptr %4, align 1, !dbg !228
  %5 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 2, !dbg !228
  store i8 16, ptr %5, align 1, !dbg !228
  store ptr %h1, ptr %self.dbg.spill.i1, align 8
  %6 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i1, i32 0, i32 1
  store i64 3, ptr %6, align 8
    #dbg_declare(ptr %self.dbg.spill.i1, !182, !DIExpression(), !229)
  store ptr %h2, ptr %self.dbg.spill.i, align 8
  %7 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %7, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !182, !DIExpression(), !231)
  %result = call i32 @hdr_compare(ptr %h1, ptr %h2), !dbg !233
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !233
    #dbg_declare(ptr %result.dbg.spill, !223, !DIExpression(), !234)
  %8 = icmp eq i32 %result, 0, !dbg !235
  ret i1 %8, !dbg !236
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_4() unnamed_addr #0 !dbg !237 {
start:
  %self.dbg.spill.i1 = alloca { ptr, i64 }, align 8
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h2 = alloca [3 x i8], align 1
  %h1 = alloca [3 x i8], align 1
    #dbg_declare(ptr %h1, !239, !DIExpression(), !245)
    #dbg_declare(ptr %h2, !241, !DIExpression(), !246)
  %0 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 0, !dbg !247
  store i8 -1, ptr %0, align 1, !dbg !247
  %1 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 1, !dbg !247
  store i8 -14, ptr %1, align 1, !dbg !247
  %2 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 2, !dbg !247
  store i8 16, ptr %2, align 1, !dbg !247
  %3 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 0, !dbg !248
  store i8 -1, ptr %3, align 1, !dbg !248
  %4 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 1, !dbg !248
  store i8 -14, ptr %4, align 1, !dbg !248
  %5 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 2, !dbg !248
  store i8 -16, ptr %5, align 1, !dbg !248
  store ptr %h1, ptr %self.dbg.spill.i1, align 8
  %6 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i1, i32 0, i32 1
  store i64 3, ptr %6, align 8
    #dbg_declare(ptr %self.dbg.spill.i1, !182, !DIExpression(), !249)
  store ptr %h2, ptr %self.dbg.spill.i, align 8
  %7 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %7, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !182, !DIExpression(), !251)
  %result = call i32 @hdr_compare(ptr %h1, ptr %h2), !dbg !253
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !253
    #dbg_declare(ptr %result.dbg.spill, !243, !DIExpression(), !254)
  %8 = icmp eq i32 %result, 0, !dbg !255
  ret i1 %8, !dbg !256
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_5() unnamed_addr #0 !dbg !257 {
start:
  %self.dbg.spill.i1 = alloca { ptr, i64 }, align 8
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h2 = alloca [3 x i8], align 1
  %h1 = alloca [3 x i8], align 1
    #dbg_declare(ptr %h1, !259, !DIExpression(), !265)
    #dbg_declare(ptr %h2, !261, !DIExpression(), !266)
  %0 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 0, !dbg !267
  store i8 -1, ptr %0, align 1, !dbg !267
  %1 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 1, !dbg !267
  store i8 -14, ptr %1, align 1, !dbg !267
  %2 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 2, !dbg !267
  store i8 16, ptr %2, align 1, !dbg !267
  %3 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 0, !dbg !268
  store i8 -1, ptr %3, align 1, !dbg !268
  %4 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 1, !dbg !268
  store i8 -14, ptr %4, align 1, !dbg !268
  %5 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 2, !dbg !268
  store i8 28, ptr %5, align 1, !dbg !268
  store ptr %h1, ptr %self.dbg.spill.i1, align 8
  %6 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i1, i32 0, i32 1
  store i64 3, ptr %6, align 8
    #dbg_declare(ptr %self.dbg.spill.i1, !182, !DIExpression(), !269)
  store ptr %h2, ptr %self.dbg.spill.i, align 8
  %7 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %7, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !182, !DIExpression(), !271)
  %result = call i32 @hdr_compare(ptr %h1, ptr %h2), !dbg !273
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !273
    #dbg_declare(ptr %result.dbg.spill, !263, !DIExpression(), !274)
  %8 = icmp eq i32 %result, 0, !dbg !275
  ret i1 %8, !dbg !276
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_6() unnamed_addr #0 !dbg !277 {
start:
  %self.dbg.spill.i1 = alloca { ptr, i64 }, align 8
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h2 = alloca [3 x i8], align 1
  %h1 = alloca [3 x i8], align 1
    #dbg_declare(ptr %h1, !279, !DIExpression(), !285)
    #dbg_declare(ptr %h2, !281, !DIExpression(), !286)
  %0 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 0, !dbg !287
  store i8 -1, ptr %0, align 1, !dbg !287
  %1 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 1, !dbg !287
  store i8 -14, ptr %1, align 1, !dbg !287
  %2 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 2, !dbg !287
  store i8 16, ptr %2, align 1, !dbg !287
  %3 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 0, !dbg !288
  store i8 -1, ptr %3, align 1, !dbg !288
  %4 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 1, !dbg !288
  store i8 -14, ptr %4, align 1, !dbg !288
  %5 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 2, !dbg !288
  store i8 16, ptr %5, align 1, !dbg !288
  store ptr %h1, ptr %self.dbg.spill.i1, align 8
  %6 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i1, i32 0, i32 1
  store i64 3, ptr %6, align 8
    #dbg_declare(ptr %self.dbg.spill.i1, !182, !DIExpression(), !289)
  store ptr %h2, ptr %self.dbg.spill.i, align 8
  %7 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %7, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !182, !DIExpression(), !291)
  %result = call i32 @hdr_compare(ptr %h1, ptr %h2), !dbg !293
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !293
    #dbg_declare(ptr %result.dbg.spill, !283, !DIExpression(), !294)
  %8 = icmp eq i32 %result, 1, !dbg !295
  ret i1 %8, !dbg !296
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_7() unnamed_addr #0 !dbg !297 {
start:
  %self.dbg.spill.i1 = alloca { ptr, i64 }, align 8
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h2 = alloca [3 x i8], align 1
  %h1 = alloca [3 x i8], align 1
    #dbg_declare(ptr %h1, !299, !DIExpression(), !305)
    #dbg_declare(ptr %h2, !301, !DIExpression(), !306)
  %0 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 0, !dbg !307
  store i8 -1, ptr %0, align 1, !dbg !307
  %1 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 1, !dbg !307
  store i8 -14, ptr %1, align 1, !dbg !307
  %2 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 2, !dbg !307
  store i8 16, ptr %2, align 1, !dbg !307
  %3 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 0, !dbg !308
  store i8 -1, ptr %3, align 1, !dbg !308
  %4 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 1, !dbg !308
  store i8 -12, ptr %4, align 1, !dbg !308
  %5 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 2, !dbg !308
  store i8 16, ptr %5, align 1, !dbg !308
  store ptr %h1, ptr %self.dbg.spill.i1, align 8
  %6 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i1, i32 0, i32 1
  store i64 3, ptr %6, align 8
    #dbg_declare(ptr %self.dbg.spill.i1, !182, !DIExpression(), !309)
  store ptr %h2, ptr %self.dbg.spill.i, align 8
  %7 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %7, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !182, !DIExpression(), !311)
  %result = call i32 @hdr_compare(ptr %h1, ptr %h2), !dbg !313
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !313
    #dbg_declare(ptr %result.dbg.spill, !303, !DIExpression(), !314)
  %8 = icmp eq i32 %result, 0, !dbg !315
  ret i1 %8, !dbg !316
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_8() unnamed_addr #0 !dbg !317 {
start:
  %self.dbg.spill.i1 = alloca { ptr, i64 }, align 8
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h2 = alloca [3 x i8], align 1
  %h1 = alloca [3 x i8], align 1
    #dbg_declare(ptr %h1, !319, !DIExpression(), !325)
    #dbg_declare(ptr %h2, !321, !DIExpression(), !326)
  %0 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 0, !dbg !327
  store i8 -1, ptr %0, align 1, !dbg !327
  %1 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 1, !dbg !327
  store i8 -14, ptr %1, align 1, !dbg !327
  %2 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 2, !dbg !327
  store i8 16, ptr %2, align 1, !dbg !327
  %3 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 0, !dbg !328
  store i8 -1, ptr %3, align 1, !dbg !328
  %4 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 1, !dbg !328
  store i8 -14, ptr %4, align 1, !dbg !328
  %5 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 2, !dbg !328
  store i8 16, ptr %5, align 1, !dbg !328
  store ptr %h1, ptr %self.dbg.spill.i1, align 8
  %6 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i1, i32 0, i32 1
  store i64 3, ptr %6, align 8
    #dbg_declare(ptr %self.dbg.spill.i1, !182, !DIExpression(), !329)
  store ptr %h2, ptr %self.dbg.spill.i, align 8
  %7 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %7, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !182, !DIExpression(), !331)
  %result = call i32 @hdr_compare(ptr %h1, ptr %h2), !dbg !333
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !333
    #dbg_declare(ptr %result.dbg.spill, !323, !DIExpression(), !334)
  %8 = icmp eq i32 %result, 1, !dbg !335
  ret i1 %8, !dbg !336
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_9() unnamed_addr #0 !dbg !337 {
start:
  %self.dbg.spill.i1 = alloca { ptr, i64 }, align 8
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h2 = alloca [3 x i8], align 1
  %h1 = alloca [3 x i8], align 1
    #dbg_declare(ptr %h1, !339, !DIExpression(), !345)
    #dbg_declare(ptr %h2, !341, !DIExpression(), !346)
  %0 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 0, !dbg !347
  store i8 -1, ptr %0, align 1, !dbg !347
  %1 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 1, !dbg !347
  store i8 -14, ptr %1, align 1, !dbg !347
  %2 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 2, !dbg !347
  store i8 16, ptr %2, align 1, !dbg !347
  %3 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 0, !dbg !348
  store i8 -1, ptr %3, align 1, !dbg !348
  %4 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 1, !dbg !348
  store i8 -14, ptr %4, align 1, !dbg !348
  %5 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 2, !dbg !348
  store i8 20, ptr %5, align 1, !dbg !348
  store ptr %h1, ptr %self.dbg.spill.i1, align 8
  %6 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i1, i32 0, i32 1
  store i64 3, ptr %6, align 8
    #dbg_declare(ptr %self.dbg.spill.i1, !182, !DIExpression(), !349)
  store ptr %h2, ptr %self.dbg.spill.i, align 8
  %7 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %7, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !182, !DIExpression(), !351)
  %result = call i32 @hdr_compare(ptr %h1, ptr %h2), !dbg !353
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !353
    #dbg_declare(ptr %result.dbg.spill, !343, !DIExpression(), !354)
  %8 = icmp eq i32 %result, 0, !dbg !355
  ret i1 %8, !dbg !356
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_10() unnamed_addr #0 !dbg !357 {
start:
  %self.dbg.spill.i1 = alloca { ptr, i64 }, align 8
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h2 = alloca [3 x i8], align 1
  %h1 = alloca [3 x i8], align 1
    #dbg_declare(ptr %h1, !359, !DIExpression(), !365)
    #dbg_declare(ptr %h2, !361, !DIExpression(), !366)
  %0 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 0, !dbg !367
  store i8 -1, ptr %0, align 1, !dbg !367
  %1 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 1, !dbg !367
  store i8 -14, ptr %1, align 1, !dbg !367
  %2 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 2, !dbg !367
  store i8 0, ptr %2, align 1, !dbg !367
  %3 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 0, !dbg !368
  store i8 -1, ptr %3, align 1, !dbg !368
  %4 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 1, !dbg !368
  store i8 -14, ptr %4, align 1, !dbg !368
  %5 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 2, !dbg !368
  store i8 0, ptr %5, align 1, !dbg !368
  store ptr %h1, ptr %self.dbg.spill.i1, align 8
  %6 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i1, i32 0, i32 1
  store i64 3, ptr %6, align 8
    #dbg_declare(ptr %self.dbg.spill.i1, !182, !DIExpression(), !369)
  store ptr %h2, ptr %self.dbg.spill.i, align 8
  %7 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %7, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !182, !DIExpression(), !371)
  %result = call i32 @hdr_compare(ptr %h1, ptr %h2), !dbg !373
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !373
    #dbg_declare(ptr %result.dbg.spill, !363, !DIExpression(), !374)
  %8 = icmp eq i32 %result, 1, !dbg !375
  ret i1 %8, !dbg !376
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_11() unnamed_addr #0 !dbg !377 {
start:
  %self.dbg.spill.i1 = alloca { ptr, i64 }, align 8
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h2 = alloca [3 x i8], align 1
  %h1 = alloca [3 x i8], align 1
    #dbg_declare(ptr %h1, !379, !DIExpression(), !385)
    #dbg_declare(ptr %h2, !381, !DIExpression(), !386)
  %0 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 0, !dbg !387
  store i8 -1, ptr %0, align 1, !dbg !387
  %1 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 1, !dbg !387
  store i8 -14, ptr %1, align 1, !dbg !387
  %2 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 2, !dbg !387
  store i8 16, ptr %2, align 1, !dbg !387
  %3 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 0, !dbg !388
  store i8 -1, ptr %3, align 1, !dbg !388
  %4 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 1, !dbg !388
  store i8 -14, ptr %4, align 1, !dbg !388
  %5 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 2, !dbg !388
  store i8 32, ptr %5, align 1, !dbg !388
  store ptr %h1, ptr %self.dbg.spill.i1, align 8
  %6 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i1, i32 0, i32 1
  store i64 3, ptr %6, align 8
    #dbg_declare(ptr %self.dbg.spill.i1, !182, !DIExpression(), !389)
  store ptr %h2, ptr %self.dbg.spill.i, align 8
  %7 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %7, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !182, !DIExpression(), !391)
  %result = call i32 @hdr_compare(ptr %h1, ptr %h2), !dbg !393
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !393
    #dbg_declare(ptr %result.dbg.spill, !383, !DIExpression(), !394)
  %8 = icmp eq i32 %result, 1, !dbg !395
  ret i1 %8, !dbg !396
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_12() unnamed_addr #0 !dbg !397 {
start:
  %self.dbg.spill.i1 = alloca { ptr, i64 }, align 8
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h2 = alloca [3 x i8], align 1
  %h1 = alloca [3 x i8], align 1
    #dbg_declare(ptr %h1, !399, !DIExpression(), !405)
    #dbg_declare(ptr %h2, !401, !DIExpression(), !406)
  %0 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 0, !dbg !407
  store i8 -1, ptr %0, align 1, !dbg !407
  %1 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 1, !dbg !407
  store i8 -14, ptr %1, align 1, !dbg !407
  %2 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 2, !dbg !407
  store i8 0, ptr %2, align 1, !dbg !407
  %3 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 0, !dbg !408
  store i8 -1, ptr %3, align 1, !dbg !408
  %4 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 1, !dbg !408
  store i8 -14, ptr %4, align 1, !dbg !408
  %5 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 2, !dbg !408
  store i8 16, ptr %5, align 1, !dbg !408
  store ptr %h1, ptr %self.dbg.spill.i1, align 8
  %6 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i1, i32 0, i32 1
  store i64 3, ptr %6, align 8
    #dbg_declare(ptr %self.dbg.spill.i1, !182, !DIExpression(), !409)
  store ptr %h2, ptr %self.dbg.spill.i, align 8
  %7 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %7, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !182, !DIExpression(), !411)
  %result = call i32 @hdr_compare(ptr %h1, ptr %h2), !dbg !413
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !413
    #dbg_declare(ptr %result.dbg.spill, !403, !DIExpression(), !414)
  %8 = icmp eq i32 %result, 0, !dbg !415
  ret i1 %8, !dbg !416
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_13() unnamed_addr #0 !dbg !417 {
start:
  %self.dbg.spill.i1 = alloca { ptr, i64 }, align 8
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h2 = alloca [3 x i8], align 1
  %h1 = alloca [3 x i8], align 1
    #dbg_declare(ptr %h1, !419, !DIExpression(), !425)
    #dbg_declare(ptr %h2, !421, !DIExpression(), !426)
  %0 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 0, !dbg !427
  store i8 -1, ptr %0, align 1, !dbg !427
  %1 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 1, !dbg !427
  store i8 -14, ptr %1, align 1, !dbg !427
  %2 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 2, !dbg !427
  store i8 16, ptr %2, align 1, !dbg !427
  %3 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 0, !dbg !428
  store i8 -1, ptr %3, align 1, !dbg !428
  %4 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 1, !dbg !428
  store i8 -14, ptr %4, align 1, !dbg !428
  %5 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 2, !dbg !428
  store i8 0, ptr %5, align 1, !dbg !428
  store ptr %h1, ptr %self.dbg.spill.i1, align 8
  %6 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i1, i32 0, i32 1
  store i64 3, ptr %6, align 8
    #dbg_declare(ptr %self.dbg.spill.i1, !182, !DIExpression(), !429)
  store ptr %h2, ptr %self.dbg.spill.i, align 8
  %7 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %7, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !182, !DIExpression(), !431)
  %result = call i32 @hdr_compare(ptr %h1, ptr %h2), !dbg !433
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !433
    #dbg_declare(ptr %result.dbg.spill, !423, !DIExpression(), !434)
  %8 = icmp eq i32 %result, 0, !dbg !435
  ret i1 %8, !dbg !436
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_14() unnamed_addr #0 !dbg !437 {
start:
  %self.dbg.spill.i1 = alloca { ptr, i64 }, align 8
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h2 = alloca [3 x i8], align 1
  %h1 = alloca [3 x i8], align 1
    #dbg_declare(ptr %h1, !439, !DIExpression(), !445)
    #dbg_declare(ptr %h2, !441, !DIExpression(), !446)
  %0 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 0, !dbg !447
  store i8 -1, ptr %0, align 1, !dbg !447
  %1 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 1, !dbg !447
  store i8 -14, ptr %1, align 1, !dbg !447
  %2 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 2, !dbg !447
  store i8 16, ptr %2, align 1, !dbg !447
  %3 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 0, !dbg !448
  store i8 -1, ptr %3, align 1, !dbg !448
  %4 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 1, !dbg !448
  store i8 -14, ptr %4, align 1, !dbg !448
  %5 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 2, !dbg !448
  store i8 16, ptr %5, align 1, !dbg !448
  store ptr %h1, ptr %self.dbg.spill.i1, align 8
  %6 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i1, i32 0, i32 1
  store i64 3, ptr %6, align 8
    #dbg_declare(ptr %self.dbg.spill.i1, !182, !DIExpression(), !449)
  store ptr %h2, ptr %self.dbg.spill.i, align 8
  %7 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %7, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !182, !DIExpression(), !451)
  %result = call i32 @hdr_compare(ptr %h1, ptr %h2), !dbg !453
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !453
    #dbg_declare(ptr %result.dbg.spill, !443, !DIExpression(), !454)
  %8 = icmp eq i32 %result, 1, !dbg !455
  ret i1 %8, !dbg !456
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_15() unnamed_addr #0 !dbg !457 {
start:
  %self.dbg.spill.i1 = alloca { ptr, i64 }, align 8
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h2 = alloca [3 x i8], align 1
  %h1 = alloca [3 x i8], align 1
    #dbg_declare(ptr %h1, !459, !DIExpression(), !465)
    #dbg_declare(ptr %h2, !461, !DIExpression(), !466)
  %0 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 0, !dbg !467
  store i8 -1, ptr %0, align 1, !dbg !467
  %1 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 1, !dbg !467
  store i8 -30, ptr %1, align 1, !dbg !467
  %2 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 2, !dbg !467
  store i8 16, ptr %2, align 1, !dbg !467
  %3 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 0, !dbg !468
  store i8 -1, ptr %3, align 1, !dbg !468
  %4 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 1, !dbg !468
  store i8 -30, ptr %4, align 1, !dbg !468
  %5 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 2, !dbg !468
  store i8 16, ptr %5, align 1, !dbg !468
  store ptr %h1, ptr %self.dbg.spill.i1, align 8
  %6 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i1, i32 0, i32 1
  store i64 3, ptr %6, align 8
    #dbg_declare(ptr %self.dbg.spill.i1, !182, !DIExpression(), !469)
  store ptr %h2, ptr %self.dbg.spill.i, align 8
  %7 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %7, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !182, !DIExpression(), !471)
  %result = call i32 @hdr_compare(ptr %h1, ptr %h2), !dbg !473
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !473
    #dbg_declare(ptr %result.dbg.spill, !463, !DIExpression(), !474)
  %8 = icmp eq i32 %result, 1, !dbg !475
  ret i1 %8, !dbg !476
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_16() unnamed_addr #0 !dbg !477 {
start:
  %self.dbg.spill.i1 = alloca { ptr, i64 }, align 8
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h2 = alloca [3 x i8], align 1
  %h1 = alloca [3 x i8], align 1
    #dbg_declare(ptr %h1, !479, !DIExpression(), !485)
    #dbg_declare(ptr %h2, !481, !DIExpression(), !486)
  %0 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 0, !dbg !487
  store i8 -1, ptr %0, align 1, !dbg !487
  %1 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 1, !dbg !487
  store i8 -29, ptr %1, align 1, !dbg !487
  %2 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 2, !dbg !487
  store i8 16, ptr %2, align 1, !dbg !487
  %3 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 0, !dbg !488
  store i8 -1, ptr %3, align 1, !dbg !488
  %4 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 1, !dbg !488
  store i8 -29, ptr %4, align 1, !dbg !488
  %5 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 2, !dbg !488
  store i8 16, ptr %5, align 1, !dbg !488
  store ptr %h1, ptr %self.dbg.spill.i1, align 8
  %6 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i1, i32 0, i32 1
  store i64 3, ptr %6, align 8
    #dbg_declare(ptr %self.dbg.spill.i1, !182, !DIExpression(), !489)
  store ptr %h2, ptr %self.dbg.spill.i, align 8
  %7 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %7, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !182, !DIExpression(), !491)
  %result = call i32 @hdr_compare(ptr %h1, ptr %h2), !dbg !493
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !493
    #dbg_declare(ptr %result.dbg.spill, !483, !DIExpression(), !494)
  %8 = icmp eq i32 %result, 1, !dbg !495
  ret i1 %8, !dbg !496
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_17() unnamed_addr #0 !dbg !497 {
start:
  %self.dbg.spill.i1 = alloca { ptr, i64 }, align 8
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h2 = alloca [3 x i8], align 1
  %h1 = alloca [3 x i8], align 1
    #dbg_declare(ptr %h1, !499, !DIExpression(), !505)
    #dbg_declare(ptr %h2, !501, !DIExpression(), !506)
  %0 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 0, !dbg !507
  store i8 -1, ptr %0, align 1, !dbg !507
  %1 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 1, !dbg !507
  store i8 -14, ptr %1, align 1, !dbg !507
  %2 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 2, !dbg !507
  store i8 16, ptr %2, align 1, !dbg !507
  %3 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 0, !dbg !508
  store i8 -1, ptr %3, align 1, !dbg !508
  %4 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 1, !dbg !508
  store i8 -14, ptr %4, align 1, !dbg !508
  %5 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 2, !dbg !508
  store i8 16, ptr %5, align 1, !dbg !508
  store ptr %h1, ptr %self.dbg.spill.i1, align 8
  %6 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i1, i32 0, i32 1
  store i64 3, ptr %6, align 8
    #dbg_declare(ptr %self.dbg.spill.i1, !182, !DIExpression(), !509)
  store ptr %h2, ptr %self.dbg.spill.i, align 8
  %7 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %7, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !182, !DIExpression(), !511)
  %result = call i32 @hdr_compare(ptr %h1, ptr %h2), !dbg !513
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !513
    #dbg_declare(ptr %result.dbg.spill, !503, !DIExpression(), !514)
  %8 = icmp eq i32 %result, 1, !dbg !515
  ret i1 %8, !dbg !516
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_18() unnamed_addr #0 !dbg !517 {
start:
  %self.dbg.spill.i1 = alloca { ptr, i64 }, align 8
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h2 = alloca [3 x i8], align 1
  %h1 = alloca [3 x i8], align 1
    #dbg_declare(ptr %h1, !519, !DIExpression(), !525)
    #dbg_declare(ptr %h2, !521, !DIExpression(), !526)
  %0 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 0, !dbg !527
  store i8 -1, ptr %0, align 1, !dbg !527
  %1 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 1, !dbg !527
  store i8 -9, ptr %1, align 1, !dbg !527
  %2 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 2, !dbg !527
  store i8 -30, ptr %2, align 1, !dbg !527
  %3 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 0, !dbg !528
  store i8 -1, ptr %3, align 1, !dbg !528
  %4 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 1, !dbg !528
  store i8 -9, ptr %4, align 1, !dbg !528
  %5 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 2, !dbg !528
  store i8 -30, ptr %5, align 1, !dbg !528
  store ptr %h1, ptr %self.dbg.spill.i1, align 8
  %6 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i1, i32 0, i32 1
  store i64 3, ptr %6, align 8
    #dbg_declare(ptr %self.dbg.spill.i1, !182, !DIExpression(), !529)
  store ptr %h2, ptr %self.dbg.spill.i, align 8
  %7 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %7, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !182, !DIExpression(), !531)
  %result = call i32 @hdr_compare(ptr %h1, ptr %h2), !dbg !533
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !533
    #dbg_declare(ptr %result.dbg.spill, !523, !DIExpression(), !534)
  %8 = icmp eq i32 %result, 1, !dbg !535
  ret i1 %8, !dbg !536
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_19() unnamed_addr #0 !dbg !537 {
start:
  %self.dbg.spill.i1 = alloca { ptr, i64 }, align 8
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h2 = alloca [3 x i8], align 1
  %h1 = alloca [3 x i8], align 1
    #dbg_declare(ptr %h1, !539, !DIExpression(), !545)
    #dbg_declare(ptr %h2, !541, !DIExpression(), !546)
  %0 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 0, !dbg !547
  store i8 -1, ptr %0, align 1, !dbg !547
  %1 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 1, !dbg !547
  store i8 -13, ptr %1, align 1, !dbg !547
  %2 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 2, !dbg !547
  store i8 17, ptr %2, align 1, !dbg !547
  %3 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 0, !dbg !548
  store i8 -1, ptr %3, align 1, !dbg !548
  %4 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 1, !dbg !548
  store i8 -14, ptr %4, align 1, !dbg !548
  %5 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 2, !dbg !548
  store i8 16, ptr %5, align 1, !dbg !548
  store ptr %h1, ptr %self.dbg.spill.i1, align 8
  %6 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i1, i32 0, i32 1
  store i64 3, ptr %6, align 8
    #dbg_declare(ptr %self.dbg.spill.i1, !182, !DIExpression(), !549)
  store ptr %h2, ptr %self.dbg.spill.i, align 8
  %7 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %7, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !182, !DIExpression(), !551)
  %result = call i32 @hdr_compare(ptr %h1, ptr %h2), !dbg !553
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !553
    #dbg_declare(ptr %result.dbg.spill, !543, !DIExpression(), !554)
  %8 = icmp eq i32 %result, 1, !dbg !555
  ret i1 %8, !dbg !556
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_20() unnamed_addr #0 !dbg !557 {
start:
  %self.dbg.spill.i1 = alloca { ptr, i64 }, align 8
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h2 = alloca [3 x i8], align 1
  %h1 = alloca [3 x i8], align 1
    #dbg_declare(ptr %h1, !559, !DIExpression(), !565)
    #dbg_declare(ptr %h2, !561, !DIExpression(), !566)
  %0 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 0, !dbg !567
  store i8 0, ptr %0, align 1, !dbg !567
  %1 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 1, !dbg !567
  store i8 0, ptr %1, align 1, !dbg !567
  %2 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 2, !dbg !567
  store i8 0, ptr %2, align 1, !dbg !567
  %3 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 0, !dbg !568
  store i8 -1, ptr %3, align 1, !dbg !568
  %4 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 1, !dbg !568
  store i8 -14, ptr %4, align 1, !dbg !568
  %5 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 2, !dbg !568
  store i8 16, ptr %5, align 1, !dbg !568
  store ptr %h1, ptr %self.dbg.spill.i1, align 8
  %6 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i1, i32 0, i32 1
  store i64 3, ptr %6, align 8
    #dbg_declare(ptr %self.dbg.spill.i1, !182, !DIExpression(), !569)
  store ptr %h2, ptr %self.dbg.spill.i, align 8
  %7 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %7, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !182, !DIExpression(), !571)
  %result = call i32 @hdr_compare(ptr %h1, ptr %h2), !dbg !573
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !573
    #dbg_declare(ptr %result.dbg.spill, !563, !DIExpression(), !574)
  %8 = icmp eq i32 %result, 0, !dbg !575
  ret i1 %8, !dbg !576
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_21() unnamed_addr #0 !dbg !577 {
start:
  %self.dbg.spill.i1 = alloca { ptr, i64 }, align 8
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h2 = alloca [3 x i8], align 1
  %h1 = alloca [3 x i8], align 1
    #dbg_declare(ptr %h1, !579, !DIExpression(), !585)
    #dbg_declare(ptr %h2, !581, !DIExpression(), !586)
  %0 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 0, !dbg !587
  store i8 0, ptr %0, align 1, !dbg !587
  %1 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 1, !dbg !587
  store i8 0, ptr %1, align 1, !dbg !587
  %2 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 2, !dbg !587
  store i8 0, ptr %2, align 1, !dbg !587
  %3 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 0, !dbg !588
  store i8 0, ptr %3, align 1, !dbg !588
  %4 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 1, !dbg !588
  store i8 0, ptr %4, align 1, !dbg !588
  %5 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 2, !dbg !588
  store i8 0, ptr %5, align 1, !dbg !588
  store ptr %h1, ptr %self.dbg.spill.i1, align 8
  %6 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i1, i32 0, i32 1
  store i64 3, ptr %6, align 8
    #dbg_declare(ptr %self.dbg.spill.i1, !182, !DIExpression(), !589)
  store ptr %h2, ptr %self.dbg.spill.i, align 8
  %7 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %7, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !182, !DIExpression(), !591)
  %result = call i32 @hdr_compare(ptr %h1, ptr %h2), !dbg !593
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !593
    #dbg_declare(ptr %result.dbg.spill, !583, !DIExpression(), !594)
  %8 = icmp eq i32 %result, 0, !dbg !595
  ret i1 %8, !dbg !596
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_22() unnamed_addr #0 !dbg !597 {
start:
  %self.dbg.spill.i1 = alloca { ptr, i64 }, align 8
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h2 = alloca [3 x i8], align 1
  %h1 = alloca [3 x i8], align 1
    #dbg_declare(ptr %h1, !599, !DIExpression(), !605)
    #dbg_declare(ptr %h2, !601, !DIExpression(), !606)
  %0 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 0, !dbg !607
  store i8 -1, ptr %0, align 1, !dbg !607
  %1 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 1, !dbg !607
  store i8 -14, ptr %1, align 1, !dbg !607
  %2 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 2, !dbg !607
  store i8 -32, ptr %2, align 1, !dbg !607
  %3 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 0, !dbg !608
  store i8 -1, ptr %3, align 1, !dbg !608
  %4 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 1, !dbg !608
  store i8 -14, ptr %4, align 1, !dbg !608
  %5 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 2, !dbg !608
  store i8 -32, ptr %5, align 1, !dbg !608
  store ptr %h1, ptr %self.dbg.spill.i1, align 8
  %6 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i1, i32 0, i32 1
  store i64 3, ptr %6, align 8
    #dbg_declare(ptr %self.dbg.spill.i1, !182, !DIExpression(), !609)
  store ptr %h2, ptr %self.dbg.spill.i, align 8
  %7 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %7, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !182, !DIExpression(), !611)
  %result = call i32 @hdr_compare(ptr %h1, ptr %h2), !dbg !613
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !613
    #dbg_declare(ptr %result.dbg.spill, !603, !DIExpression(), !614)
  %8 = icmp eq i32 %result, 1, !dbg !615
  ret i1 %8, !dbg !616
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_23() unnamed_addr #0 !dbg !617 {
start:
  %self.dbg.spill.i1 = alloca { ptr, i64 }, align 8
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h2 = alloca [3 x i8], align 1
  %h1 = alloca [3 x i8], align 1
    #dbg_declare(ptr %h1, !619, !DIExpression(), !625)
    #dbg_declare(ptr %h2, !621, !DIExpression(), !626)
  %0 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 0, !dbg !627
  store i8 -1, ptr %0, align 1, !dbg !627
  %1 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 1, !dbg !627
  store i8 -14, ptr %1, align 1, !dbg !627
  %2 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 2, !dbg !627
  store i8 24, ptr %2, align 1, !dbg !627
  %3 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 0, !dbg !628
  store i8 -1, ptr %3, align 1, !dbg !628
  %4 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 1, !dbg !628
  store i8 -14, ptr %4, align 1, !dbg !628
  %5 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 2, !dbg !628
  store i8 24, ptr %5, align 1, !dbg !628
  store ptr %h1, ptr %self.dbg.spill.i1, align 8
  %6 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i1, i32 0, i32 1
  store i64 3, ptr %6, align 8
    #dbg_declare(ptr %self.dbg.spill.i1, !182, !DIExpression(), !629)
  store ptr %h2, ptr %self.dbg.spill.i, align 8
  %7 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %7, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !182, !DIExpression(), !631)
  %result = call i32 @hdr_compare(ptr %h1, ptr %h2), !dbg !633
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !633
    #dbg_declare(ptr %result.dbg.spill, !623, !DIExpression(), !634)
  %8 = icmp eq i32 %result, 1, !dbg !635
  ret i1 %8, !dbg !636
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_24() unnamed_addr #0 !dbg !637 {
start:
  %self.dbg.spill.i1 = alloca { ptr, i64 }, align 8
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h2 = alloca [3 x i8], align 1
  %h1 = alloca [3 x i8], align 1
    #dbg_declare(ptr %h1, !639, !DIExpression(), !645)
    #dbg_declare(ptr %h2, !641, !DIExpression(), !646)
  %0 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 0, !dbg !647
  store i8 -1, ptr %0, align 1, !dbg !647
  %1 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 1, !dbg !647
  store i8 -16, ptr %1, align 1, !dbg !647
  %2 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 2, !dbg !647
  store i8 0, ptr %2, align 1, !dbg !647
  %3 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 0, !dbg !648
  store i8 -1, ptr %3, align 1, !dbg !648
  %4 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 1, !dbg !648
  store i8 -14, ptr %4, align 1, !dbg !648
  %5 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 2, !dbg !648
  store i8 16, ptr %5, align 1, !dbg !648
  store ptr %h1, ptr %self.dbg.spill.i1, align 8
  %6 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i1, i32 0, i32 1
  store i64 3, ptr %6, align 8
    #dbg_declare(ptr %self.dbg.spill.i1, !182, !DIExpression(), !649)
  store ptr %h2, ptr %self.dbg.spill.i, align 8
  %7 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %7, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !182, !DIExpression(), !651)
  %result = call i32 @hdr_compare(ptr %h1, ptr %h2), !dbg !653
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !653
    #dbg_declare(ptr %result.dbg.spill, !643, !DIExpression(), !654)
  %8 = icmp eq i32 %result, 0, !dbg !655
  ret i1 %8, !dbg !656
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_25() unnamed_addr #0 !dbg !657 {
start:
  %self.dbg.spill.i1 = alloca { ptr, i64 }, align 8
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h2 = alloca [3 x i8], align 1
  %h1 = alloca [3 x i8], align 1
    #dbg_declare(ptr %h1, !659, !DIExpression(), !665)
    #dbg_declare(ptr %h2, !661, !DIExpression(), !666)
  %0 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 0, !dbg !667
  store i8 -1, ptr %0, align 1, !dbg !667
  %1 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 1, !dbg !667
  store i8 -14, ptr %1, align 1, !dbg !667
  %2 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 2, !dbg !667
  store i8 -4, ptr %2, align 1, !dbg !667
  %3 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 0, !dbg !668
  store i8 -1, ptr %3, align 1, !dbg !668
  %4 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 1, !dbg !668
  store i8 -14, ptr %4, align 1, !dbg !668
  %5 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 2, !dbg !668
  store i8 28, ptr %5, align 1, !dbg !668
  store ptr %h1, ptr %self.dbg.spill.i1, align 8
  %6 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i1, i32 0, i32 1
  store i64 3, ptr %6, align 8
    #dbg_declare(ptr %self.dbg.spill.i1, !182, !DIExpression(), !669)
  store ptr %h2, ptr %self.dbg.spill.i, align 8
  %7 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %7, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !182, !DIExpression(), !671)
  %result = call i32 @hdr_compare(ptr %h1, ptr %h2), !dbg !673
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !673
    #dbg_declare(ptr %result.dbg.spill, !663, !DIExpression(), !674)
  %8 = icmp eq i32 %result, 0, !dbg !675
  ret i1 %8, !dbg !676
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_26() unnamed_addr #0 !dbg !677 {
start:
  %self.dbg.spill.i1 = alloca { ptr, i64 }, align 8
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h2 = alloca [3 x i8], align 1
  %h1 = alloca [3 x i8], align 1
    #dbg_declare(ptr %h1, !679, !DIExpression(), !685)
    #dbg_declare(ptr %h2, !681, !DIExpression(), !686)
  %0 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 0, !dbg !687
  store i8 -1, ptr %0, align 1, !dbg !687
  %1 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 1, !dbg !687
  store i8 -30, ptr %1, align 1, !dbg !687
  %2 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 2, !dbg !687
  store i8 48, ptr %2, align 1, !dbg !687
  %3 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 0, !dbg !688
  store i8 -1, ptr %3, align 1, !dbg !688
  %4 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 1, !dbg !688
  store i8 -30, ptr %4, align 1, !dbg !688
  %5 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 2, !dbg !688
  store i8 48, ptr %5, align 1, !dbg !688
  store ptr %h1, ptr %self.dbg.spill.i1, align 8
  %6 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i1, i32 0, i32 1
  store i64 3, ptr %6, align 8
    #dbg_declare(ptr %self.dbg.spill.i1, !182, !DIExpression(), !689)
  store ptr %h2, ptr %self.dbg.spill.i, align 8
  %7 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %7, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !182, !DIExpression(), !691)
  %result = call i32 @hdr_compare(ptr %h1, ptr %h2), !dbg !693
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !693
    #dbg_declare(ptr %result.dbg.spill, !683, !DIExpression(), !694)
  %8 = icmp eq i32 %result, 1, !dbg !695
  ret i1 %8, !dbg !696
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_27() unnamed_addr #0 !dbg !697 {
start:
  %self.dbg.spill.i1 = alloca { ptr, i64 }, align 8
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h2 = alloca [3 x i8], align 1
  %h1 = alloca [3 x i8], align 1
    #dbg_declare(ptr %h1, !699, !DIExpression(), !705)
    #dbg_declare(ptr %h2, !701, !DIExpression(), !706)
  %0 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 0, !dbg !707
  store i8 -1, ptr %0, align 1, !dbg !707
  %1 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 1, !dbg !707
  store i8 -10, ptr %1, align 1, !dbg !707
  %2 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 2, !dbg !707
  store i8 64, ptr %2, align 1, !dbg !707
  %3 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 0, !dbg !708
  store i8 -1, ptr %3, align 1, !dbg !708
  %4 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 1, !dbg !708
  store i8 -12, ptr %4, align 1, !dbg !708
  %5 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 2, !dbg !708
  store i8 80, ptr %5, align 1, !dbg !708
  store ptr %h1, ptr %self.dbg.spill.i1, align 8
  %6 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i1, i32 0, i32 1
  store i64 3, ptr %6, align 8
    #dbg_declare(ptr %self.dbg.spill.i1, !182, !DIExpression(), !709)
  store ptr %h2, ptr %self.dbg.spill.i, align 8
  %7 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %7, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !182, !DIExpression(), !711)
  %result = call i32 @hdr_compare(ptr %h1, ptr %h2), !dbg !713
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !713
    #dbg_declare(ptr %result.dbg.spill, !703, !DIExpression(), !714)
  %8 = icmp eq i32 %result, 0, !dbg !715
  ret i1 %8, !dbg !716
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_28() unnamed_addr #0 !dbg !717 {
start:
  %self.dbg.spill.i1 = alloca { ptr, i64 }, align 8
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h2 = alloca [3 x i8], align 1
  %h1 = alloca [3 x i8], align 1
    #dbg_declare(ptr %h1, !719, !DIExpression(), !725)
    #dbg_declare(ptr %h2, !721, !DIExpression(), !726)
  %0 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 0, !dbg !727
  store i8 -1, ptr %0, align 1, !dbg !727
  %1 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 1, !dbg !727
  store i8 -15, ptr %1, align 1, !dbg !727
  %2 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 2, !dbg !727
  store i8 1, ptr %2, align 1, !dbg !727
  %3 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 0, !dbg !728
  store i8 -1, ptr %3, align 1, !dbg !728
  %4 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 1, !dbg !728
  store i8 -13, ptr %4, align 1, !dbg !728
  %5 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 2, !dbg !728
  store i8 3, ptr %5, align 1, !dbg !728
  store ptr %h1, ptr %self.dbg.spill.i1, align 8
  %6 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i1, i32 0, i32 1
  store i64 3, ptr %6, align 8
    #dbg_declare(ptr %self.dbg.spill.i1, !182, !DIExpression(), !729)
  store ptr %h2, ptr %self.dbg.spill.i, align 8
  %7 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %7, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !182, !DIExpression(), !731)
  %result = call i32 @hdr_compare(ptr %h1, ptr %h2), !dbg !733
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !733
    #dbg_declare(ptr %result.dbg.spill, !723, !DIExpression(), !734)
  %8 = icmp eq i32 %result, 0, !dbg !735
  ret i1 %8, !dbg !736
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_29() unnamed_addr #0 !dbg !737 {
start:
  %self.dbg.spill.i1 = alloca { ptr, i64 }, align 8
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h2 = alloca [3 x i8], align 1
  %h1 = alloca [3 x i8], align 1
    #dbg_declare(ptr %h1, !739, !DIExpression(), !745)
    #dbg_declare(ptr %h2, !741, !DIExpression(), !746)
  %0 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 0, !dbg !747
  store i8 -1, ptr %0, align 1, !dbg !747
  %1 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 1, !dbg !747
  store i8 -14, ptr %1, align 1, !dbg !747
  %2 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 2, !dbg !747
  store i8 15, ptr %2, align 1, !dbg !747
  %3 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 0, !dbg !748
  store i8 -1, ptr %3, align 1, !dbg !748
  %4 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 1, !dbg !748
  store i8 -14, ptr %4, align 1, !dbg !748
  %5 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 2, !dbg !748
  store i8 3, ptr %5, align 1, !dbg !748
  store ptr %h1, ptr %self.dbg.spill.i1, align 8
  %6 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i1, i32 0, i32 1
  store i64 3, ptr %6, align 8
    #dbg_declare(ptr %self.dbg.spill.i1, !182, !DIExpression(), !749)
  store ptr %h2, ptr %self.dbg.spill.i, align 8
  %7 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %7, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !182, !DIExpression(), !751)
  %result = call i32 @hdr_compare(ptr %h1, ptr %h2), !dbg !753
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !753
    #dbg_declare(ptr %result.dbg.spill, !743, !DIExpression(), !754)
  %8 = icmp eq i32 %result, 0, !dbg !755
  ret i1 %8, !dbg !756
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_30() unnamed_addr #0 !dbg !757 {
start:
  %self.dbg.spill.i1 = alloca { ptr, i64 }, align 8
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h2 = alloca [3 x i8], align 1
  %h1 = alloca [3 x i8], align 1
    #dbg_declare(ptr %h1, !759, !DIExpression(), !765)
    #dbg_declare(ptr %h2, !761, !DIExpression(), !766)
  %0 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 0, !dbg !767
  store i8 -1, ptr %0, align 1, !dbg !767
  %1 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 1, !dbg !767
  store i8 -14, ptr %1, align 1, !dbg !767
  %2 = getelementptr inbounds [3 x i8], ptr %h1, i64 0, i64 2, !dbg !767
  store i8 -88, ptr %2, align 1, !dbg !767
  %3 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 0, !dbg !768
  store i8 -1, ptr %3, align 1, !dbg !768
  %4 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 1, !dbg !768
  store i8 -14, ptr %4, align 1, !dbg !768
  %5 = getelementptr inbounds [3 x i8], ptr %h2, i64 0, i64 2, !dbg !768
  store i8 -96, ptr %5, align 1, !dbg !768
  store ptr %h1, ptr %self.dbg.spill.i1, align 8
  %6 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i1, i32 0, i32 1
  store i64 3, ptr %6, align 8
    #dbg_declare(ptr %self.dbg.spill.i1, !182, !DIExpression(), !769)
  store ptr %h2, ptr %self.dbg.spill.i, align 8
  %7 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %7, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !182, !DIExpression(), !771)
  %result = call i32 @hdr_compare(ptr %h1, ptr %h2), !dbg !773
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !773
    #dbg_declare(ptr %result.dbg.spill, !763, !DIExpression(), !774)
  %8 = icmp eq i32 %result, 0, !dbg !775
  ret i1 %8, !dbg !776
}

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #3 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}

!0 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !1, producer: "clang LLVM (rustc version 1.70.0-nightly (84dd17b56 2023-04-14))", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!1 = !DIFile(filename: "lib.rs/@/1v0nnobr22t9tk63", directory: "/crisp-rust-outputs/B01_organic/hdr_compare_lib/translated_rust")
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 2, !"RtLibUseGOT", i32 1}
!4 = !{i32 2, !"Dwarf Version", i32 4}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = distinct !DISubprogram(name: "hdr_compare_ffi", linkageName: "hdr_compare", scope: !8, file: !7, line: 37, type: !11, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !19, retainedNodes: !16)
!7 = !DIFile(filename: "src/lib.rs", directory: "/crisp-rust-outputs/B01_organic/hdr_compare_lib/translated_rust", checksumkind: CSK_MD5, checksum: "15cc4c2621c0e85f6268cdbfc10d8516")
!8 = !DINamespace(name: "lib", scope: !9)
!9 = !DINamespace(name: "src", scope: !10)
!10 = !DINamespace(name: "hdr_compare_lib", scope: null)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !14, !14}
!13 = !DIBasicType(name: "i32", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const u8", baseType: !15, size: 64, align: 64, dwarfAddressSpace: 0)
!15 = !DIBasicType(name: "u8", size: 8, encoding: DW_ATE_unsigned)
!16 = !{!17, !18}
!17 = !DILocalVariable(name: "h1", arg: 1, scope: !6, file: !7, line: 38, type: !14)
!18 = !DILocalVariable(name: "h2", arg: 2, scope: !6, file: !7, line: 39, type: !14)
!19 = !{}
!20 = !DILocation(line: 38, column: 5, scope: !6)
!21 = !DILocation(line: 39, column: 5, scope: !6)
!22 = !DILocation(line: 41, column: 17, scope: !6)
!23 = !DILocation(line: 41, column: 55, scope: !6)
!24 = !DILocation(line: 41, column: 5, scope: !6)
!25 = !DILocation(line: 42, column: 2, scope: !6)
!26 = distinct !DISubprogram(name: "from_raw_parts<u8>", linkageName: "_ZN4core5slice3raw14from_raw_parts17h6db8c12aaf3b01f6E", scope: !28, file: !27, line: 92, type: !31, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !43, retainedNodes: !40)
!27 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/slice/raw.rs", directory: "", checksumkind: CSK_MD5, checksum: "4e9e8b780584cc248c586456197d9cf5")
!28 = !DINamespace(name: "raw", scope: !29)
!29 = !DINamespace(name: "slice", scope: !30)
!30 = !DINamespace(name: "core", scope: null)
!31 = !DISubroutineType(types: !32)
!32 = !{!33, !14, !39}
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "&[u8]", file: !34, size: 128, align: 64, elements: !35, templateParams: !19, identifier: "4f7d759e2003ffb713a77bd933fd0146")
!34 = !DIFile(filename: "<unknown>", directory: "")
!35 = !{!36, !38}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !33, file: !34, baseType: !37, size: 64, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64, dwarfAddressSpace: 0)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !33, file: !34, baseType: !39, size: 64, align: 64, offset: 64)
!39 = !DIBasicType(name: "usize", size: 64, encoding: DW_ATE_unsigned)
!40 = !{!41, !42}
!41 = !DILocalVariable(name: "data", arg: 1, scope: !26, file: !27, line: 92, type: !14)
!42 = !DILocalVariable(name: "len", arg: 2, scope: !26, file: !27, line: 92, type: !39)
!43 = !{!44}
!44 = !DITemplateTypeParameter(name: "T", type: !15)
!45 = !DILocation(line: 92, column: 43, scope: !26)
!46 = !DILocalVariable(name: "data", arg: 1, scope: !47, file: !48, line: 733, type: !14)
!47 = distinct !DISubprogram(name: "slice_from_raw_parts<u8>", linkageName: "_ZN4core3ptr20slice_from_raw_parts17hbc652b0a7ab8d0e7E", scope: !49, file: !48, line: 733, type: !50, scopeLine: 733, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !43, retainedNodes: !56)
!48 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/ptr/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "4b0ac29df94a7dc1bf2bc7efca5e253a")
!49 = !DINamespace(name: "ptr", scope: !30)
!50 = !DISubroutineType(types: !51)
!51 = !{!52, !14, !39}
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "*const [u8]", file: !34, size: 128, align: 64, elements: !53, templateParams: !19, identifier: "a329dffc2f36de2e98a77091932cf429")
!53 = !{!54, !55}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !52, file: !34, baseType: !37, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !52, file: !34, baseType: !39, size: 64, align: 64, offset: 64)
!56 = !{!46, !57}
!57 = !DILocalVariable(name: "len", arg: 2, scope: !47, file: !48, line: 733, type: !39)
!58 = !DILocation(line: 733, column: 38, scope: !47, inlinedAt: !59)
!59 = !DILocation(line: 100, column: 11, scope: !26)
!60 = !DILocalVariable(name: "self", arg: 1, scope: !61, file: !62, line: 58, type: !14)
!61 = distinct !DISubprogram(name: "cast<u8, ()>", linkageName: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h425a4ca844919b26E", scope: !63, file: !62, line: 58, type: !65, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !70, retainedNodes: !69)
!62 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/ptr/const_ptr.rs", directory: "", checksumkind: CSK_MD5, checksum: "2a21946c6980740609ff35bdd2bfdb1c")
!63 = !DINamespace(name: "{impl#0}", scope: !64)
!64 = !DINamespace(name: "const_ptr", scope: !49)
!65 = !DISubroutineType(types: !66)
!66 = !{!67, !14}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const ()", baseType: !68, size: 64, align: 64, dwarfAddressSpace: 0)
!68 = !DIBasicType(name: "()", encoding: DW_ATE_unsigned)
!69 = !{!60}
!70 = !{!44, !71}
!71 = !DITemplateTypeParameter(name: "U", type: !68)
!72 = !DILocation(line: 58, column: 26, scope: !61, inlinedAt: !73)
!73 = !DILocation(line: 734, column: 25, scope: !47, inlinedAt: !59)
!74 = !DILocation(line: 92, column: 59, scope: !26)
!75 = !DILocation(line: 733, column: 54, scope: !47, inlinedAt: !59)
!76 = !DILocalVariable(name: "metadata", arg: 2, scope: !77, file: !78, line: 113, type: !39)
!77 = distinct !DISubprogram(name: "from_raw_parts<[u8]>", linkageName: "_ZN4core3ptr8metadata14from_raw_parts17h8b46c1664afebb01E", scope: !79, file: !78, line: 111, type: !80, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !43, retainedNodes: !82)
!78 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/ptr/metadata.rs", directory: "", checksumkind: CSK_MD5, checksum: "1e1a461bde75de7a93357ca7e628f393")
!79 = !DINamespace(name: "metadata", scope: !49)
!80 = !DISubroutineType(types: !81)
!81 = !{!52, !67, !39}
!82 = !{!83, !76}
!83 = !DILocalVariable(name: "data_address", arg: 1, scope: !77, file: !78, line: 112, type: !67)
!84 = !DILocation(line: 113, column: 5, scope: !77, inlinedAt: !85)
!85 = !DILocation(line: 734, column: 5, scope: !47, inlinedAt: !59)
!86 = !DILocation(line: 59, column: 9, scope: !61, inlinedAt: !73)
!87 = !DILocation(line: 112, column: 5, scope: !77, inlinedAt: !85)
!88 = !DILocation(line: 118, column: 36, scope: !77, inlinedAt: !85)
!89 = !DILocation(line: 118, column: 14, scope: !77, inlinedAt: !85)
!90 = !DILocation(line: 102, column: 2, scope: !26)
!91 = distinct !DISubprogram(name: "hdr_compare", linkageName: "_ZN15hdr_compare_lib3src3lib11hdr_compare17h4111b60c128fb14fE", scope: !8, file: !7, line: 18, type: !92, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !19, retainedNodes: !94)
!92 = !DISubroutineType(types: !93)
!93 = !{!13, !33, !33}
!94 = !{!95, !96, !97, !99, !101, !103}
!95 = !DILocalVariable(name: "h1", arg: 1, scope: !91, file: !7, line: 18, type: !33)
!96 = !DILocalVariable(name: "h2", arg: 2, scope: !91, file: !7, line: 18, type: !33)
!97 = !DILocalVariable(name: "h1b1", scope: !98, file: !7, line: 23, type: !13, align: 4)
!98 = distinct !DILexicalBlock(scope: !91, file: !7, line: 23, column: 5)
!99 = !DILocalVariable(name: "h1b2", scope: !100, file: !7, line: 24, type: !13, align: 4)
!100 = distinct !DILexicalBlock(scope: !98, file: !7, line: 24, column: 5)
!101 = !DILocalVariable(name: "h2b1", scope: !102, file: !7, line: 25, type: !13, align: 4)
!102 = distinct !DILexicalBlock(scope: !100, file: !7, line: 25, column: 5)
!103 = !DILocalVariable(name: "h2b2", scope: !104, file: !7, line: 26, type: !13, align: 4)
!104 = distinct !DILexicalBlock(scope: !102, file: !7, line: 26, column: 5)
!105 = !DILocation(line: 18, column: 20, scope: !91)
!106 = !DILocation(line: 18, column: 37, scope: !91)
!107 = !DILocation(line: 19, column: 8, scope: !91)
!108 = !DILocation(line: 19, column: 24, scope: !91)
!109 = !{i8 0, i8 2}
!110 = !DILocation(line: 23, column: 16, scope: !91)
!111 = !DILocation(line: 20, column: 16, scope: !91)
!112 = !DILocation(line: 34, column: 2, scope: !91)
!113 = !DILocation(line: 23, column: 9, scope: !98)
!114 = !DILocation(line: 24, column: 16, scope: !98)
!115 = !DILocation(line: 24, column: 9, scope: !100)
!116 = !DILocation(line: 25, column: 16, scope: !100)
!117 = !DILocation(line: 25, column: 9, scope: !102)
!118 = !DILocation(line: 26, column: 16, scope: !102)
!119 = !DILocation(line: 26, column: 9, scope: !104)
!120 = !DILocation(line: 28, column: 6, scope: !104)
!121 = !DILocation(line: 29, column: 13, scope: !104)
!122 = !DILocation(line: 29, column: 12, scope: !104)
!123 = !DILocation(line: 30, column: 13, scope: !104)
!124 = !DILocation(line: 30, column: 12, scope: !104)
!125 = !DILocation(line: 28, column: 5, scope: !104)
!126 = !DILocation(line: 31, column: 14, scope: !104)
!127 = !DILocation(line: 31, column: 13, scope: !104)
!128 = !DILocation(line: 32, column: 16, scope: !104)
!129 = !DILocation(line: 32, column: 15, scope: !104)
!130 = !DILocation(line: 31, column: 12, scope: !104)
!131 = distinct !DISubprogram(name: "hdr_valid", linkageName: "_ZN15hdr_compare_lib3src3lib9hdr_valid17hdaedcb601bda263dE", scope: !8, file: !7, line: 3, type: !132, scopeLine: 3, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !19, retainedNodes: !134)
!132 = !DISubroutineType(types: !133)
!133 = !{!13, !33}
!134 = !{!135, !136, !138, !140}
!135 = !DILocalVariable(name: "h", arg: 1, scope: !131, file: !7, line: 3, type: !33)
!136 = !DILocalVariable(name: "b0", scope: !137, file: !7, line: 8, type: !13, align: 4)
!137 = distinct !DILexicalBlock(scope: !131, file: !7, line: 8, column: 5)
!138 = !DILocalVariable(name: "b1", scope: !139, file: !7, line: 9, type: !13, align: 4)
!139 = distinct !DILexicalBlock(scope: !137, file: !7, line: 9, column: 5)
!140 = !DILocalVariable(name: "b2", scope: !141, file: !7, line: 10, type: !13, align: 4)
!141 = distinct !DILexicalBlock(scope: !139, file: !7, line: 10, column: 5)
!142 = !DILocation(line: 3, column: 14, scope: !131)
!143 = !DILocation(line: 4, column: 8, scope: !131)
!144 = !DILocation(line: 8, column: 14, scope: !131)
!145 = !DILocation(line: 5, column: 16, scope: !131)
!146 = !DILocation(line: 17, column: 2, scope: !131)
!147 = !DILocation(line: 8, column: 9, scope: !137)
!148 = !DILocation(line: 9, column: 14, scope: !137)
!149 = !DILocation(line: 9, column: 9, scope: !139)
!150 = !DILocation(line: 10, column: 14, scope: !139)
!151 = !DILocation(line: 10, column: 9, scope: !141)
!152 = !DILocation(line: 12, column: 6, scope: !141)
!153 = !DILocation(line: 13, column: 14, scope: !141)
!154 = !DILocation(line: 13, column: 12, scope: !141)
!155 = !DILocation(line: 13, column: 37, scope: !141)
!156 = !DILocation(line: 13, column: 36, scope: !141)
!157 = !DILocation(line: 14, column: 13, scope: !141)
!158 = !DILocation(line: 14, column: 12, scope: !141)
!159 = !DILocation(line: 15, column: 13, scope: !141)
!160 = !DILocation(line: 15, column: 12, scope: !141)
!161 = !DILocation(line: 12, column: 5, scope: !141)
!162 = !DILocation(line: 16, column: 13, scope: !141)
!163 = !DILocation(line: 16, column: 12, scope: !141)
!164 = distinct !DISubprogram(name: "run_test_1", scope: !8, file: !7, line: 45, type: !165, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !19, retainedNodes: !168)
!165 = !DISubroutineType(types: !166)
!166 = !{!167}
!167 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!168 = !{!169, !174, !176}
!169 = !DILocalVariable(name: "h1", scope: !170, file: !7, line: 46, type: !171, align: 1)
!170 = distinct !DILexicalBlock(scope: !164, file: !7, line: 46, column: 5)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 24, align: 8, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 3, lowerBound: 0)
!174 = !DILocalVariable(name: "h2", scope: !175, file: !7, line: 47, type: !171, align: 1)
!175 = distinct !DILexicalBlock(scope: !170, file: !7, line: 47, column: 5)
!176 = !DILocalVariable(name: "result", scope: !177, file: !7, line: 48, type: !13, align: 4)
!177 = distinct !DILexicalBlock(scope: !175, file: !7, line: 48, column: 5)
!178 = !DILocation(line: 46, column: 9, scope: !170)
!179 = !DILocation(line: 47, column: 9, scope: !175)
!180 = !DILocation(line: 46, column: 23, scope: !164)
!181 = !DILocation(line: 47, column: 23, scope: !170)
!182 = !DILocalVariable(name: "self", arg: 1, scope: !183, file: !184, line: 476, type: !33)
!183 = distinct !DISubprogram(name: "as_ptr<u8>", linkageName: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17hb34b0feb36e5a6caE", scope: !185, file: !184, line: 476, type: !186, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !43, retainedNodes: !188)
!184 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/slice/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "0b3adda84e3d0ea3eafbebcfb4ca210d")
!185 = !DINamespace(name: "{impl#0}", scope: !29)
!186 = !DISubroutineType(types: !187)
!187 = !{!14, !33}
!188 = !{!182}
!189 = !DILocation(line: 476, column: 25, scope: !183, inlinedAt: !190)
!190 = distinct !DILocation(line: 48, column: 34, scope: !175)
!191 = !DILocation(line: 476, column: 25, scope: !183, inlinedAt: !192)
!192 = distinct !DILocation(line: 48, column: 47, scope: !175)
!193 = !DILocation(line: 48, column: 18, scope: !175)
!194 = !DILocation(line: 48, column: 9, scope: !177)
!195 = !DILocation(line: 49, column: 5, scope: !177)
!196 = !DILocation(line: 50, column: 2, scope: !164)
!197 = distinct !DISubprogram(name: "run_test_2", scope: !8, file: !7, line: 53, type: !165, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !19, retainedNodes: !198)
!198 = !{!199, !201, !203}
!199 = !DILocalVariable(name: "h1", scope: !200, file: !7, line: 54, type: !171, align: 1)
!200 = distinct !DILexicalBlock(scope: !197, file: !7, line: 54, column: 5)
!201 = !DILocalVariable(name: "h2", scope: !202, file: !7, line: 55, type: !171, align: 1)
!202 = distinct !DILexicalBlock(scope: !200, file: !7, line: 55, column: 5)
!203 = !DILocalVariable(name: "result", scope: !204, file: !7, line: 56, type: !13, align: 4)
!204 = distinct !DILexicalBlock(scope: !202, file: !7, line: 56, column: 5)
!205 = !DILocation(line: 54, column: 9, scope: !200)
!206 = !DILocation(line: 55, column: 9, scope: !202)
!207 = !DILocation(line: 54, column: 23, scope: !197)
!208 = !DILocation(line: 55, column: 23, scope: !200)
!209 = !DILocation(line: 476, column: 25, scope: !183, inlinedAt: !210)
!210 = distinct !DILocation(line: 56, column: 34, scope: !202)
!211 = !DILocation(line: 476, column: 25, scope: !183, inlinedAt: !212)
!212 = distinct !DILocation(line: 56, column: 47, scope: !202)
!213 = !DILocation(line: 56, column: 18, scope: !202)
!214 = !DILocation(line: 56, column: 9, scope: !204)
!215 = !DILocation(line: 57, column: 5, scope: !204)
!216 = !DILocation(line: 58, column: 2, scope: !197)
!217 = distinct !DISubprogram(name: "run_test_3", scope: !8, file: !7, line: 61, type: !165, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !19, retainedNodes: !218)
!218 = !{!219, !221, !223}
!219 = !DILocalVariable(name: "h1", scope: !220, file: !7, line: 62, type: !171, align: 1)
!220 = distinct !DILexicalBlock(scope: !217, file: !7, line: 62, column: 5)
!221 = !DILocalVariable(name: "h2", scope: !222, file: !7, line: 63, type: !171, align: 1)
!222 = distinct !DILexicalBlock(scope: !220, file: !7, line: 63, column: 5)
!223 = !DILocalVariable(name: "result", scope: !224, file: !7, line: 64, type: !13, align: 4)
!224 = distinct !DILexicalBlock(scope: !222, file: !7, line: 64, column: 5)
!225 = !DILocation(line: 62, column: 9, scope: !220)
!226 = !DILocation(line: 63, column: 9, scope: !222)
!227 = !DILocation(line: 62, column: 23, scope: !217)
!228 = !DILocation(line: 63, column: 23, scope: !220)
!229 = !DILocation(line: 476, column: 25, scope: !183, inlinedAt: !230)
!230 = distinct !DILocation(line: 64, column: 34, scope: !222)
!231 = !DILocation(line: 476, column: 25, scope: !183, inlinedAt: !232)
!232 = distinct !DILocation(line: 64, column: 47, scope: !222)
!233 = !DILocation(line: 64, column: 18, scope: !222)
!234 = !DILocation(line: 64, column: 9, scope: !224)
!235 = !DILocation(line: 65, column: 5, scope: !224)
!236 = !DILocation(line: 66, column: 2, scope: !217)
!237 = distinct !DISubprogram(name: "run_test_4", scope: !8, file: !7, line: 69, type: !165, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !19, retainedNodes: !238)
!238 = !{!239, !241, !243}
!239 = !DILocalVariable(name: "h1", scope: !240, file: !7, line: 70, type: !171, align: 1)
!240 = distinct !DILexicalBlock(scope: !237, file: !7, line: 70, column: 5)
!241 = !DILocalVariable(name: "h2", scope: !242, file: !7, line: 71, type: !171, align: 1)
!242 = distinct !DILexicalBlock(scope: !240, file: !7, line: 71, column: 5)
!243 = !DILocalVariable(name: "result", scope: !244, file: !7, line: 72, type: !13, align: 4)
!244 = distinct !DILexicalBlock(scope: !242, file: !7, line: 72, column: 5)
!245 = !DILocation(line: 70, column: 9, scope: !240)
!246 = !DILocation(line: 71, column: 9, scope: !242)
!247 = !DILocation(line: 70, column: 23, scope: !237)
!248 = !DILocation(line: 71, column: 23, scope: !240)
!249 = !DILocation(line: 476, column: 25, scope: !183, inlinedAt: !250)
!250 = distinct !DILocation(line: 72, column: 34, scope: !242)
!251 = !DILocation(line: 476, column: 25, scope: !183, inlinedAt: !252)
!252 = distinct !DILocation(line: 72, column: 47, scope: !242)
!253 = !DILocation(line: 72, column: 18, scope: !242)
!254 = !DILocation(line: 72, column: 9, scope: !244)
!255 = !DILocation(line: 73, column: 5, scope: !244)
!256 = !DILocation(line: 74, column: 2, scope: !237)
!257 = distinct !DISubprogram(name: "run_test_5", scope: !8, file: !7, line: 77, type: !165, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !19, retainedNodes: !258)
!258 = !{!259, !261, !263}
!259 = !DILocalVariable(name: "h1", scope: !260, file: !7, line: 78, type: !171, align: 1)
!260 = distinct !DILexicalBlock(scope: !257, file: !7, line: 78, column: 5)
!261 = !DILocalVariable(name: "h2", scope: !262, file: !7, line: 79, type: !171, align: 1)
!262 = distinct !DILexicalBlock(scope: !260, file: !7, line: 79, column: 5)
!263 = !DILocalVariable(name: "result", scope: !264, file: !7, line: 80, type: !13, align: 4)
!264 = distinct !DILexicalBlock(scope: !262, file: !7, line: 80, column: 5)
!265 = !DILocation(line: 78, column: 9, scope: !260)
!266 = !DILocation(line: 79, column: 9, scope: !262)
!267 = !DILocation(line: 78, column: 23, scope: !257)
!268 = !DILocation(line: 79, column: 23, scope: !260)
!269 = !DILocation(line: 476, column: 25, scope: !183, inlinedAt: !270)
!270 = distinct !DILocation(line: 80, column: 34, scope: !262)
!271 = !DILocation(line: 476, column: 25, scope: !183, inlinedAt: !272)
!272 = distinct !DILocation(line: 80, column: 47, scope: !262)
!273 = !DILocation(line: 80, column: 18, scope: !262)
!274 = !DILocation(line: 80, column: 9, scope: !264)
!275 = !DILocation(line: 81, column: 5, scope: !264)
!276 = !DILocation(line: 82, column: 2, scope: !257)
!277 = distinct !DISubprogram(name: "run_test_6", scope: !8, file: !7, line: 86, type: !165, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !19, retainedNodes: !278)
!278 = !{!279, !281, !283}
!279 = !DILocalVariable(name: "h1", scope: !280, file: !7, line: 87, type: !171, align: 1)
!280 = distinct !DILexicalBlock(scope: !277, file: !7, line: 87, column: 5)
!281 = !DILocalVariable(name: "h2", scope: !282, file: !7, line: 88, type: !171, align: 1)
!282 = distinct !DILexicalBlock(scope: !280, file: !7, line: 88, column: 5)
!283 = !DILocalVariable(name: "result", scope: !284, file: !7, line: 89, type: !13, align: 4)
!284 = distinct !DILexicalBlock(scope: !282, file: !7, line: 89, column: 5)
!285 = !DILocation(line: 87, column: 9, scope: !280)
!286 = !DILocation(line: 88, column: 9, scope: !282)
!287 = !DILocation(line: 87, column: 23, scope: !277)
!288 = !DILocation(line: 88, column: 23, scope: !280)
!289 = !DILocation(line: 476, column: 25, scope: !183, inlinedAt: !290)
!290 = distinct !DILocation(line: 89, column: 34, scope: !282)
!291 = !DILocation(line: 476, column: 25, scope: !183, inlinedAt: !292)
!292 = distinct !DILocation(line: 89, column: 47, scope: !282)
!293 = !DILocation(line: 89, column: 18, scope: !282)
!294 = !DILocation(line: 89, column: 9, scope: !284)
!295 = !DILocation(line: 90, column: 5, scope: !284)
!296 = !DILocation(line: 91, column: 2, scope: !277)
!297 = distinct !DISubprogram(name: "run_test_7", scope: !8, file: !7, line: 94, type: !165, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !19, retainedNodes: !298)
!298 = !{!299, !301, !303}
!299 = !DILocalVariable(name: "h1", scope: !300, file: !7, line: 95, type: !171, align: 1)
!300 = distinct !DILexicalBlock(scope: !297, file: !7, line: 95, column: 5)
!301 = !DILocalVariable(name: "h2", scope: !302, file: !7, line: 96, type: !171, align: 1)
!302 = distinct !DILexicalBlock(scope: !300, file: !7, line: 96, column: 5)
!303 = !DILocalVariable(name: "result", scope: !304, file: !7, line: 97, type: !13, align: 4)
!304 = distinct !DILexicalBlock(scope: !302, file: !7, line: 97, column: 5)
!305 = !DILocation(line: 95, column: 9, scope: !300)
!306 = !DILocation(line: 96, column: 9, scope: !302)
!307 = !DILocation(line: 95, column: 23, scope: !297)
!308 = !DILocation(line: 96, column: 23, scope: !300)
!309 = !DILocation(line: 476, column: 25, scope: !183, inlinedAt: !310)
!310 = distinct !DILocation(line: 97, column: 34, scope: !302)
!311 = !DILocation(line: 476, column: 25, scope: !183, inlinedAt: !312)
!312 = distinct !DILocation(line: 97, column: 47, scope: !302)
!313 = !DILocation(line: 97, column: 18, scope: !302)
!314 = !DILocation(line: 97, column: 9, scope: !304)
!315 = !DILocation(line: 98, column: 5, scope: !304)
!316 = !DILocation(line: 99, column: 2, scope: !297)
!317 = distinct !DISubprogram(name: "run_test_8", scope: !8, file: !7, line: 102, type: !165, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !19, retainedNodes: !318)
!318 = !{!319, !321, !323}
!319 = !DILocalVariable(name: "h1", scope: !320, file: !7, line: 103, type: !171, align: 1)
!320 = distinct !DILexicalBlock(scope: !317, file: !7, line: 103, column: 5)
!321 = !DILocalVariable(name: "h2", scope: !322, file: !7, line: 104, type: !171, align: 1)
!322 = distinct !DILexicalBlock(scope: !320, file: !7, line: 104, column: 5)
!323 = !DILocalVariable(name: "result", scope: !324, file: !7, line: 105, type: !13, align: 4)
!324 = distinct !DILexicalBlock(scope: !322, file: !7, line: 105, column: 5)
!325 = !DILocation(line: 103, column: 9, scope: !320)
!326 = !DILocation(line: 104, column: 9, scope: !322)
!327 = !DILocation(line: 103, column: 23, scope: !317)
!328 = !DILocation(line: 104, column: 23, scope: !320)
!329 = !DILocation(line: 476, column: 25, scope: !183, inlinedAt: !330)
!330 = distinct !DILocation(line: 105, column: 34, scope: !322)
!331 = !DILocation(line: 476, column: 25, scope: !183, inlinedAt: !332)
!332 = distinct !DILocation(line: 105, column: 47, scope: !322)
!333 = !DILocation(line: 105, column: 18, scope: !322)
!334 = !DILocation(line: 105, column: 9, scope: !324)
!335 = !DILocation(line: 106, column: 5, scope: !324)
!336 = !DILocation(line: 107, column: 2, scope: !317)
!337 = distinct !DISubprogram(name: "run_test_9", scope: !8, file: !7, line: 110, type: !165, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !19, retainedNodes: !338)
!338 = !{!339, !341, !343}
!339 = !DILocalVariable(name: "h1", scope: !340, file: !7, line: 111, type: !171, align: 1)
!340 = distinct !DILexicalBlock(scope: !337, file: !7, line: 111, column: 5)
!341 = !DILocalVariable(name: "h2", scope: !342, file: !7, line: 112, type: !171, align: 1)
!342 = distinct !DILexicalBlock(scope: !340, file: !7, line: 112, column: 5)
!343 = !DILocalVariable(name: "result", scope: !344, file: !7, line: 113, type: !13, align: 4)
!344 = distinct !DILexicalBlock(scope: !342, file: !7, line: 113, column: 5)
!345 = !DILocation(line: 111, column: 9, scope: !340)
!346 = !DILocation(line: 112, column: 9, scope: !342)
!347 = !DILocation(line: 111, column: 23, scope: !337)
!348 = !DILocation(line: 112, column: 23, scope: !340)
!349 = !DILocation(line: 476, column: 25, scope: !183, inlinedAt: !350)
!350 = distinct !DILocation(line: 113, column: 34, scope: !342)
!351 = !DILocation(line: 476, column: 25, scope: !183, inlinedAt: !352)
!352 = distinct !DILocation(line: 113, column: 47, scope: !342)
!353 = !DILocation(line: 113, column: 18, scope: !342)
!354 = !DILocation(line: 113, column: 9, scope: !344)
!355 = !DILocation(line: 114, column: 5, scope: !344)
!356 = !DILocation(line: 115, column: 2, scope: !337)
!357 = distinct !DISubprogram(name: "run_test_10", scope: !8, file: !7, line: 118, type: !165, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !19, retainedNodes: !358)
!358 = !{!359, !361, !363}
!359 = !DILocalVariable(name: "h1", scope: !360, file: !7, line: 119, type: !171, align: 1)
!360 = distinct !DILexicalBlock(scope: !357, file: !7, line: 119, column: 5)
!361 = !DILocalVariable(name: "h2", scope: !362, file: !7, line: 120, type: !171, align: 1)
!362 = distinct !DILexicalBlock(scope: !360, file: !7, line: 120, column: 5)
!363 = !DILocalVariable(name: "result", scope: !364, file: !7, line: 121, type: !13, align: 4)
!364 = distinct !DILexicalBlock(scope: !362, file: !7, line: 121, column: 5)
!365 = !DILocation(line: 119, column: 9, scope: !360)
!366 = !DILocation(line: 120, column: 9, scope: !362)
!367 = !DILocation(line: 119, column: 23, scope: !357)
!368 = !DILocation(line: 120, column: 23, scope: !360)
!369 = !DILocation(line: 476, column: 25, scope: !183, inlinedAt: !370)
!370 = distinct !DILocation(line: 121, column: 34, scope: !362)
!371 = !DILocation(line: 476, column: 25, scope: !183, inlinedAt: !372)
!372 = distinct !DILocation(line: 121, column: 47, scope: !362)
!373 = !DILocation(line: 121, column: 18, scope: !362)
!374 = !DILocation(line: 121, column: 9, scope: !364)
!375 = !DILocation(line: 122, column: 5, scope: !364)
!376 = !DILocation(line: 123, column: 2, scope: !357)
!377 = distinct !DISubprogram(name: "run_test_11", scope: !8, file: !7, line: 126, type: !165, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !19, retainedNodes: !378)
!378 = !{!379, !381, !383}
!379 = !DILocalVariable(name: "h1", scope: !380, file: !7, line: 127, type: !171, align: 1)
!380 = distinct !DILexicalBlock(scope: !377, file: !7, line: 127, column: 5)
!381 = !DILocalVariable(name: "h2", scope: !382, file: !7, line: 128, type: !171, align: 1)
!382 = distinct !DILexicalBlock(scope: !380, file: !7, line: 128, column: 5)
!383 = !DILocalVariable(name: "result", scope: !384, file: !7, line: 129, type: !13, align: 4)
!384 = distinct !DILexicalBlock(scope: !382, file: !7, line: 129, column: 5)
!385 = !DILocation(line: 127, column: 9, scope: !380)
!386 = !DILocation(line: 128, column: 9, scope: !382)
!387 = !DILocation(line: 127, column: 23, scope: !377)
!388 = !DILocation(line: 128, column: 23, scope: !380)
!389 = !DILocation(line: 476, column: 25, scope: !183, inlinedAt: !390)
!390 = distinct !DILocation(line: 129, column: 34, scope: !382)
!391 = !DILocation(line: 476, column: 25, scope: !183, inlinedAt: !392)
!392 = distinct !DILocation(line: 129, column: 47, scope: !382)
!393 = !DILocation(line: 129, column: 18, scope: !382)
!394 = !DILocation(line: 129, column: 9, scope: !384)
!395 = !DILocation(line: 130, column: 5, scope: !384)
!396 = !DILocation(line: 131, column: 2, scope: !377)
!397 = distinct !DISubprogram(name: "run_test_12", scope: !8, file: !7, line: 134, type: !165, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !19, retainedNodes: !398)
!398 = !{!399, !401, !403}
!399 = !DILocalVariable(name: "h1", scope: !400, file: !7, line: 135, type: !171, align: 1)
!400 = distinct !DILexicalBlock(scope: !397, file: !7, line: 135, column: 5)
!401 = !DILocalVariable(name: "h2", scope: !402, file: !7, line: 136, type: !171, align: 1)
!402 = distinct !DILexicalBlock(scope: !400, file: !7, line: 136, column: 5)
!403 = !DILocalVariable(name: "result", scope: !404, file: !7, line: 137, type: !13, align: 4)
!404 = distinct !DILexicalBlock(scope: !402, file: !7, line: 137, column: 5)
!405 = !DILocation(line: 135, column: 9, scope: !400)
!406 = !DILocation(line: 136, column: 9, scope: !402)
!407 = !DILocation(line: 135, column: 23, scope: !397)
!408 = !DILocation(line: 136, column: 23, scope: !400)
!409 = !DILocation(line: 476, column: 25, scope: !183, inlinedAt: !410)
!410 = distinct !DILocation(line: 137, column: 34, scope: !402)
!411 = !DILocation(line: 476, column: 25, scope: !183, inlinedAt: !412)
!412 = distinct !DILocation(line: 137, column: 47, scope: !402)
!413 = !DILocation(line: 137, column: 18, scope: !402)
!414 = !DILocation(line: 137, column: 9, scope: !404)
!415 = !DILocation(line: 138, column: 5, scope: !404)
!416 = !DILocation(line: 139, column: 2, scope: !397)
!417 = distinct !DISubprogram(name: "run_test_13", scope: !8, file: !7, line: 142, type: !165, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !19, retainedNodes: !418)
!418 = !{!419, !421, !423}
!419 = !DILocalVariable(name: "h1", scope: !420, file: !7, line: 143, type: !171, align: 1)
!420 = distinct !DILexicalBlock(scope: !417, file: !7, line: 143, column: 5)
!421 = !DILocalVariable(name: "h2", scope: !422, file: !7, line: 144, type: !171, align: 1)
!422 = distinct !DILexicalBlock(scope: !420, file: !7, line: 144, column: 5)
!423 = !DILocalVariable(name: "result", scope: !424, file: !7, line: 145, type: !13, align: 4)
!424 = distinct !DILexicalBlock(scope: !422, file: !7, line: 145, column: 5)
!425 = !DILocation(line: 143, column: 9, scope: !420)
!426 = !DILocation(line: 144, column: 9, scope: !422)
!427 = !DILocation(line: 143, column: 23, scope: !417)
!428 = !DILocation(line: 144, column: 23, scope: !420)
!429 = !DILocation(line: 476, column: 25, scope: !183, inlinedAt: !430)
!430 = distinct !DILocation(line: 145, column: 34, scope: !422)
!431 = !DILocation(line: 476, column: 25, scope: !183, inlinedAt: !432)
!432 = distinct !DILocation(line: 145, column: 47, scope: !422)
!433 = !DILocation(line: 145, column: 18, scope: !422)
!434 = !DILocation(line: 145, column: 9, scope: !424)
!435 = !DILocation(line: 146, column: 5, scope: !424)
!436 = !DILocation(line: 147, column: 2, scope: !417)
!437 = distinct !DISubprogram(name: "run_test_14", scope: !8, file: !7, line: 150, type: !165, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !19, retainedNodes: !438)
!438 = !{!439, !441, !443}
!439 = !DILocalVariable(name: "h1", scope: !440, file: !7, line: 151, type: !171, align: 1)
!440 = distinct !DILexicalBlock(scope: !437, file: !7, line: 151, column: 5)
!441 = !DILocalVariable(name: "h2", scope: !442, file: !7, line: 152, type: !171, align: 1)
!442 = distinct !DILexicalBlock(scope: !440, file: !7, line: 152, column: 5)
!443 = !DILocalVariable(name: "result", scope: !444, file: !7, line: 153, type: !13, align: 4)
!444 = distinct !DILexicalBlock(scope: !442, file: !7, line: 153, column: 5)
!445 = !DILocation(line: 151, column: 9, scope: !440)
!446 = !DILocation(line: 152, column: 9, scope: !442)
!447 = !DILocation(line: 151, column: 23, scope: !437)
!448 = !DILocation(line: 152, column: 23, scope: !440)
!449 = !DILocation(line: 476, column: 25, scope: !183, inlinedAt: !450)
!450 = distinct !DILocation(line: 153, column: 34, scope: !442)
!451 = !DILocation(line: 476, column: 25, scope: !183, inlinedAt: !452)
!452 = distinct !DILocation(line: 153, column: 47, scope: !442)
!453 = !DILocation(line: 153, column: 18, scope: !442)
!454 = !DILocation(line: 153, column: 9, scope: !444)
!455 = !DILocation(line: 154, column: 5, scope: !444)
!456 = !DILocation(line: 155, column: 2, scope: !437)
!457 = distinct !DISubprogram(name: "run_test_15", scope: !8, file: !7, line: 158, type: !165, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !19, retainedNodes: !458)
!458 = !{!459, !461, !463}
!459 = !DILocalVariable(name: "h1", scope: !460, file: !7, line: 159, type: !171, align: 1)
!460 = distinct !DILexicalBlock(scope: !457, file: !7, line: 159, column: 5)
!461 = !DILocalVariable(name: "h2", scope: !462, file: !7, line: 160, type: !171, align: 1)
!462 = distinct !DILexicalBlock(scope: !460, file: !7, line: 160, column: 5)
!463 = !DILocalVariable(name: "result", scope: !464, file: !7, line: 161, type: !13, align: 4)
!464 = distinct !DILexicalBlock(scope: !462, file: !7, line: 161, column: 5)
!465 = !DILocation(line: 159, column: 9, scope: !460)
!466 = !DILocation(line: 160, column: 9, scope: !462)
!467 = !DILocation(line: 159, column: 23, scope: !457)
!468 = !DILocation(line: 160, column: 23, scope: !460)
!469 = !DILocation(line: 476, column: 25, scope: !183, inlinedAt: !470)
!470 = distinct !DILocation(line: 161, column: 34, scope: !462)
!471 = !DILocation(line: 476, column: 25, scope: !183, inlinedAt: !472)
!472 = distinct !DILocation(line: 161, column: 47, scope: !462)
!473 = !DILocation(line: 161, column: 18, scope: !462)
!474 = !DILocation(line: 161, column: 9, scope: !464)
!475 = !DILocation(line: 162, column: 5, scope: !464)
!476 = !DILocation(line: 163, column: 2, scope: !457)
!477 = distinct !DISubprogram(name: "run_test_16", scope: !8, file: !7, line: 166, type: !165, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !19, retainedNodes: !478)
!478 = !{!479, !481, !483}
!479 = !DILocalVariable(name: "h1", scope: !480, file: !7, line: 167, type: !171, align: 1)
!480 = distinct !DILexicalBlock(scope: !477, file: !7, line: 167, column: 5)
!481 = !DILocalVariable(name: "h2", scope: !482, file: !7, line: 168, type: !171, align: 1)
!482 = distinct !DILexicalBlock(scope: !480, file: !7, line: 168, column: 5)
!483 = !DILocalVariable(name: "result", scope: !484, file: !7, line: 169, type: !13, align: 4)
!484 = distinct !DILexicalBlock(scope: !482, file: !7, line: 169, column: 5)
!485 = !DILocation(line: 167, column: 9, scope: !480)
!486 = !DILocation(line: 168, column: 9, scope: !482)
!487 = !DILocation(line: 167, column: 23, scope: !477)
!488 = !DILocation(line: 168, column: 23, scope: !480)
!489 = !DILocation(line: 476, column: 25, scope: !183, inlinedAt: !490)
!490 = distinct !DILocation(line: 169, column: 34, scope: !482)
!491 = !DILocation(line: 476, column: 25, scope: !183, inlinedAt: !492)
!492 = distinct !DILocation(line: 169, column: 47, scope: !482)
!493 = !DILocation(line: 169, column: 18, scope: !482)
!494 = !DILocation(line: 169, column: 9, scope: !484)
!495 = !DILocation(line: 170, column: 5, scope: !484)
!496 = !DILocation(line: 171, column: 2, scope: !477)
!497 = distinct !DISubprogram(name: "run_test_17", scope: !8, file: !7, line: 174, type: !165, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !19, retainedNodes: !498)
!498 = !{!499, !501, !503}
!499 = !DILocalVariable(name: "h1", scope: !500, file: !7, line: 175, type: !171, align: 1)
!500 = distinct !DILexicalBlock(scope: !497, file: !7, line: 175, column: 5)
!501 = !DILocalVariable(name: "h2", scope: !502, file: !7, line: 176, type: !171, align: 1)
!502 = distinct !DILexicalBlock(scope: !500, file: !7, line: 176, column: 5)
!503 = !DILocalVariable(name: "result", scope: !504, file: !7, line: 177, type: !13, align: 4)
!504 = distinct !DILexicalBlock(scope: !502, file: !7, line: 177, column: 5)
!505 = !DILocation(line: 175, column: 9, scope: !500)
!506 = !DILocation(line: 176, column: 9, scope: !502)
!507 = !DILocation(line: 175, column: 23, scope: !497)
!508 = !DILocation(line: 176, column: 23, scope: !500)
!509 = !DILocation(line: 476, column: 25, scope: !183, inlinedAt: !510)
!510 = distinct !DILocation(line: 177, column: 34, scope: !502)
!511 = !DILocation(line: 476, column: 25, scope: !183, inlinedAt: !512)
!512 = distinct !DILocation(line: 177, column: 47, scope: !502)
!513 = !DILocation(line: 177, column: 18, scope: !502)
!514 = !DILocation(line: 177, column: 9, scope: !504)
!515 = !DILocation(line: 178, column: 5, scope: !504)
!516 = !DILocation(line: 179, column: 2, scope: !497)
!517 = distinct !DISubprogram(name: "run_test_18", scope: !8, file: !7, line: 182, type: !165, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !19, retainedNodes: !518)
!518 = !{!519, !521, !523}
!519 = !DILocalVariable(name: "h1", scope: !520, file: !7, line: 183, type: !171, align: 1)
!520 = distinct !DILexicalBlock(scope: !517, file: !7, line: 183, column: 5)
!521 = !DILocalVariable(name: "h2", scope: !522, file: !7, line: 184, type: !171, align: 1)
!522 = distinct !DILexicalBlock(scope: !520, file: !7, line: 184, column: 5)
!523 = !DILocalVariable(name: "result", scope: !524, file: !7, line: 185, type: !13, align: 4)
!524 = distinct !DILexicalBlock(scope: !522, file: !7, line: 185, column: 5)
!525 = !DILocation(line: 183, column: 9, scope: !520)
!526 = !DILocation(line: 184, column: 9, scope: !522)
!527 = !DILocation(line: 183, column: 23, scope: !517)
!528 = !DILocation(line: 184, column: 23, scope: !520)
!529 = !DILocation(line: 476, column: 25, scope: !183, inlinedAt: !530)
!530 = distinct !DILocation(line: 185, column: 34, scope: !522)
!531 = !DILocation(line: 476, column: 25, scope: !183, inlinedAt: !532)
!532 = distinct !DILocation(line: 185, column: 47, scope: !522)
!533 = !DILocation(line: 185, column: 18, scope: !522)
!534 = !DILocation(line: 185, column: 9, scope: !524)
!535 = !DILocation(line: 186, column: 5, scope: !524)
!536 = !DILocation(line: 187, column: 2, scope: !517)
!537 = distinct !DISubprogram(name: "run_test_19", scope: !8, file: !7, line: 190, type: !165, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !19, retainedNodes: !538)
!538 = !{!539, !541, !543}
!539 = !DILocalVariable(name: "h1", scope: !540, file: !7, line: 191, type: !171, align: 1)
!540 = distinct !DILexicalBlock(scope: !537, file: !7, line: 191, column: 5)
!541 = !DILocalVariable(name: "h2", scope: !542, file: !7, line: 192, type: !171, align: 1)
!542 = distinct !DILexicalBlock(scope: !540, file: !7, line: 192, column: 5)
!543 = !DILocalVariable(name: "result", scope: !544, file: !7, line: 193, type: !13, align: 4)
!544 = distinct !DILexicalBlock(scope: !542, file: !7, line: 193, column: 5)
!545 = !DILocation(line: 191, column: 9, scope: !540)
!546 = !DILocation(line: 192, column: 9, scope: !542)
!547 = !DILocation(line: 191, column: 23, scope: !537)
!548 = !DILocation(line: 192, column: 23, scope: !540)
!549 = !DILocation(line: 476, column: 25, scope: !183, inlinedAt: !550)
!550 = distinct !DILocation(line: 193, column: 34, scope: !542)
!551 = !DILocation(line: 476, column: 25, scope: !183, inlinedAt: !552)
!552 = distinct !DILocation(line: 193, column: 47, scope: !542)
!553 = !DILocation(line: 193, column: 18, scope: !542)
!554 = !DILocation(line: 193, column: 9, scope: !544)
!555 = !DILocation(line: 194, column: 5, scope: !544)
!556 = !DILocation(line: 195, column: 2, scope: !537)
!557 = distinct !DISubprogram(name: "run_test_20", scope: !8, file: !7, line: 198, type: !165, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !19, retainedNodes: !558)
!558 = !{!559, !561, !563}
!559 = !DILocalVariable(name: "h1", scope: !560, file: !7, line: 199, type: !171, align: 1)
!560 = distinct !DILexicalBlock(scope: !557, file: !7, line: 199, column: 5)
!561 = !DILocalVariable(name: "h2", scope: !562, file: !7, line: 200, type: !171, align: 1)
!562 = distinct !DILexicalBlock(scope: !560, file: !7, line: 200, column: 5)
!563 = !DILocalVariable(name: "result", scope: !564, file: !7, line: 201, type: !13, align: 4)
!564 = distinct !DILexicalBlock(scope: !562, file: !7, line: 201, column: 5)
!565 = !DILocation(line: 199, column: 9, scope: !560)
!566 = !DILocation(line: 200, column: 9, scope: !562)
!567 = !DILocation(line: 199, column: 23, scope: !557)
!568 = !DILocation(line: 200, column: 23, scope: !560)
!569 = !DILocation(line: 476, column: 25, scope: !183, inlinedAt: !570)
!570 = distinct !DILocation(line: 201, column: 34, scope: !562)
!571 = !DILocation(line: 476, column: 25, scope: !183, inlinedAt: !572)
!572 = distinct !DILocation(line: 201, column: 47, scope: !562)
!573 = !DILocation(line: 201, column: 18, scope: !562)
!574 = !DILocation(line: 201, column: 9, scope: !564)
!575 = !DILocation(line: 202, column: 5, scope: !564)
!576 = !DILocation(line: 203, column: 2, scope: !557)
!577 = distinct !DISubprogram(name: "run_test_21", scope: !8, file: !7, line: 206, type: !165, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !19, retainedNodes: !578)
!578 = !{!579, !581, !583}
!579 = !DILocalVariable(name: "h1", scope: !580, file: !7, line: 207, type: !171, align: 1)
!580 = distinct !DILexicalBlock(scope: !577, file: !7, line: 207, column: 5)
!581 = !DILocalVariable(name: "h2", scope: !582, file: !7, line: 208, type: !171, align: 1)
!582 = distinct !DILexicalBlock(scope: !580, file: !7, line: 208, column: 5)
!583 = !DILocalVariable(name: "result", scope: !584, file: !7, line: 209, type: !13, align: 4)
!584 = distinct !DILexicalBlock(scope: !582, file: !7, line: 209, column: 5)
!585 = !DILocation(line: 207, column: 9, scope: !580)
!586 = !DILocation(line: 208, column: 9, scope: !582)
!587 = !DILocation(line: 207, column: 23, scope: !577)
!588 = !DILocation(line: 208, column: 23, scope: !580)
!589 = !DILocation(line: 476, column: 25, scope: !183, inlinedAt: !590)
!590 = distinct !DILocation(line: 209, column: 34, scope: !582)
!591 = !DILocation(line: 476, column: 25, scope: !183, inlinedAt: !592)
!592 = distinct !DILocation(line: 209, column: 47, scope: !582)
!593 = !DILocation(line: 209, column: 18, scope: !582)
!594 = !DILocation(line: 209, column: 9, scope: !584)
!595 = !DILocation(line: 210, column: 5, scope: !584)
!596 = !DILocation(line: 211, column: 2, scope: !577)
!597 = distinct !DISubprogram(name: "run_test_22", scope: !8, file: !7, line: 214, type: !165, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !19, retainedNodes: !598)
!598 = !{!599, !601, !603}
!599 = !DILocalVariable(name: "h1", scope: !600, file: !7, line: 215, type: !171, align: 1)
!600 = distinct !DILexicalBlock(scope: !597, file: !7, line: 215, column: 5)
!601 = !DILocalVariable(name: "h2", scope: !602, file: !7, line: 216, type: !171, align: 1)
!602 = distinct !DILexicalBlock(scope: !600, file: !7, line: 216, column: 5)
!603 = !DILocalVariable(name: "result", scope: !604, file: !7, line: 217, type: !13, align: 4)
!604 = distinct !DILexicalBlock(scope: !602, file: !7, line: 217, column: 5)
!605 = !DILocation(line: 215, column: 9, scope: !600)
!606 = !DILocation(line: 216, column: 9, scope: !602)
!607 = !DILocation(line: 215, column: 23, scope: !597)
!608 = !DILocation(line: 216, column: 23, scope: !600)
!609 = !DILocation(line: 476, column: 25, scope: !183, inlinedAt: !610)
!610 = distinct !DILocation(line: 217, column: 34, scope: !602)
!611 = !DILocation(line: 476, column: 25, scope: !183, inlinedAt: !612)
!612 = distinct !DILocation(line: 217, column: 47, scope: !602)
!613 = !DILocation(line: 217, column: 18, scope: !602)
!614 = !DILocation(line: 217, column: 9, scope: !604)
!615 = !DILocation(line: 218, column: 5, scope: !604)
!616 = !DILocation(line: 219, column: 2, scope: !597)
!617 = distinct !DISubprogram(name: "run_test_23", scope: !8, file: !7, line: 222, type: !165, scopeLine: 222, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !19, retainedNodes: !618)
!618 = !{!619, !621, !623}
!619 = !DILocalVariable(name: "h1", scope: !620, file: !7, line: 223, type: !171, align: 1)
!620 = distinct !DILexicalBlock(scope: !617, file: !7, line: 223, column: 5)
!621 = !DILocalVariable(name: "h2", scope: !622, file: !7, line: 224, type: !171, align: 1)
!622 = distinct !DILexicalBlock(scope: !620, file: !7, line: 224, column: 5)
!623 = !DILocalVariable(name: "result", scope: !624, file: !7, line: 225, type: !13, align: 4)
!624 = distinct !DILexicalBlock(scope: !622, file: !7, line: 225, column: 5)
!625 = !DILocation(line: 223, column: 9, scope: !620)
!626 = !DILocation(line: 224, column: 9, scope: !622)
!627 = !DILocation(line: 223, column: 23, scope: !617)
!628 = !DILocation(line: 224, column: 23, scope: !620)
!629 = !DILocation(line: 476, column: 25, scope: !183, inlinedAt: !630)
!630 = distinct !DILocation(line: 225, column: 34, scope: !622)
!631 = !DILocation(line: 476, column: 25, scope: !183, inlinedAt: !632)
!632 = distinct !DILocation(line: 225, column: 47, scope: !622)
!633 = !DILocation(line: 225, column: 18, scope: !622)
!634 = !DILocation(line: 225, column: 9, scope: !624)
!635 = !DILocation(line: 226, column: 5, scope: !624)
!636 = !DILocation(line: 227, column: 2, scope: !617)
!637 = distinct !DISubprogram(name: "run_test_24", scope: !8, file: !7, line: 230, type: !165, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !19, retainedNodes: !638)
!638 = !{!639, !641, !643}
!639 = !DILocalVariable(name: "h1", scope: !640, file: !7, line: 231, type: !171, align: 1)
!640 = distinct !DILexicalBlock(scope: !637, file: !7, line: 231, column: 5)
!641 = !DILocalVariable(name: "h2", scope: !642, file: !7, line: 232, type: !171, align: 1)
!642 = distinct !DILexicalBlock(scope: !640, file: !7, line: 232, column: 5)
!643 = !DILocalVariable(name: "result", scope: !644, file: !7, line: 233, type: !13, align: 4)
!644 = distinct !DILexicalBlock(scope: !642, file: !7, line: 233, column: 5)
!645 = !DILocation(line: 231, column: 9, scope: !640)
!646 = !DILocation(line: 232, column: 9, scope: !642)
!647 = !DILocation(line: 231, column: 23, scope: !637)
!648 = !DILocation(line: 232, column: 23, scope: !640)
!649 = !DILocation(line: 476, column: 25, scope: !183, inlinedAt: !650)
!650 = distinct !DILocation(line: 233, column: 34, scope: !642)
!651 = !DILocation(line: 476, column: 25, scope: !183, inlinedAt: !652)
!652 = distinct !DILocation(line: 233, column: 47, scope: !642)
!653 = !DILocation(line: 233, column: 18, scope: !642)
!654 = !DILocation(line: 233, column: 9, scope: !644)
!655 = !DILocation(line: 234, column: 5, scope: !644)
!656 = !DILocation(line: 235, column: 2, scope: !637)
!657 = distinct !DISubprogram(name: "run_test_25", scope: !8, file: !7, line: 238, type: !165, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !19, retainedNodes: !658)
!658 = !{!659, !661, !663}
!659 = !DILocalVariable(name: "h1", scope: !660, file: !7, line: 239, type: !171, align: 1)
!660 = distinct !DILexicalBlock(scope: !657, file: !7, line: 239, column: 5)
!661 = !DILocalVariable(name: "h2", scope: !662, file: !7, line: 240, type: !171, align: 1)
!662 = distinct !DILexicalBlock(scope: !660, file: !7, line: 240, column: 5)
!663 = !DILocalVariable(name: "result", scope: !664, file: !7, line: 241, type: !13, align: 4)
!664 = distinct !DILexicalBlock(scope: !662, file: !7, line: 241, column: 5)
!665 = !DILocation(line: 239, column: 9, scope: !660)
!666 = !DILocation(line: 240, column: 9, scope: !662)
!667 = !DILocation(line: 239, column: 23, scope: !657)
!668 = !DILocation(line: 240, column: 23, scope: !660)
!669 = !DILocation(line: 476, column: 25, scope: !183, inlinedAt: !670)
!670 = distinct !DILocation(line: 241, column: 34, scope: !662)
!671 = !DILocation(line: 476, column: 25, scope: !183, inlinedAt: !672)
!672 = distinct !DILocation(line: 241, column: 47, scope: !662)
!673 = !DILocation(line: 241, column: 18, scope: !662)
!674 = !DILocation(line: 241, column: 9, scope: !664)
!675 = !DILocation(line: 242, column: 5, scope: !664)
!676 = !DILocation(line: 243, column: 2, scope: !657)
!677 = distinct !DISubprogram(name: "run_test_26", scope: !8, file: !7, line: 246, type: !165, scopeLine: 246, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !19, retainedNodes: !678)
!678 = !{!679, !681, !683}
!679 = !DILocalVariable(name: "h1", scope: !680, file: !7, line: 247, type: !171, align: 1)
!680 = distinct !DILexicalBlock(scope: !677, file: !7, line: 247, column: 5)
!681 = !DILocalVariable(name: "h2", scope: !682, file: !7, line: 248, type: !171, align: 1)
!682 = distinct !DILexicalBlock(scope: !680, file: !7, line: 248, column: 5)
!683 = !DILocalVariable(name: "result", scope: !684, file: !7, line: 249, type: !13, align: 4)
!684 = distinct !DILexicalBlock(scope: !682, file: !7, line: 249, column: 5)
!685 = !DILocation(line: 247, column: 9, scope: !680)
!686 = !DILocation(line: 248, column: 9, scope: !682)
!687 = !DILocation(line: 247, column: 23, scope: !677)
!688 = !DILocation(line: 248, column: 23, scope: !680)
!689 = !DILocation(line: 476, column: 25, scope: !183, inlinedAt: !690)
!690 = distinct !DILocation(line: 249, column: 34, scope: !682)
!691 = !DILocation(line: 476, column: 25, scope: !183, inlinedAt: !692)
!692 = distinct !DILocation(line: 249, column: 47, scope: !682)
!693 = !DILocation(line: 249, column: 18, scope: !682)
!694 = !DILocation(line: 249, column: 9, scope: !684)
!695 = !DILocation(line: 250, column: 5, scope: !684)
!696 = !DILocation(line: 251, column: 2, scope: !677)
!697 = distinct !DISubprogram(name: "run_test_27", scope: !8, file: !7, line: 254, type: !165, scopeLine: 254, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !19, retainedNodes: !698)
!698 = !{!699, !701, !703}
!699 = !DILocalVariable(name: "h1", scope: !700, file: !7, line: 255, type: !171, align: 1)
!700 = distinct !DILexicalBlock(scope: !697, file: !7, line: 255, column: 5)
!701 = !DILocalVariable(name: "h2", scope: !702, file: !7, line: 256, type: !171, align: 1)
!702 = distinct !DILexicalBlock(scope: !700, file: !7, line: 256, column: 5)
!703 = !DILocalVariable(name: "result", scope: !704, file: !7, line: 257, type: !13, align: 4)
!704 = distinct !DILexicalBlock(scope: !702, file: !7, line: 257, column: 5)
!705 = !DILocation(line: 255, column: 9, scope: !700)
!706 = !DILocation(line: 256, column: 9, scope: !702)
!707 = !DILocation(line: 255, column: 23, scope: !697)
!708 = !DILocation(line: 256, column: 23, scope: !700)
!709 = !DILocation(line: 476, column: 25, scope: !183, inlinedAt: !710)
!710 = distinct !DILocation(line: 257, column: 34, scope: !702)
!711 = !DILocation(line: 476, column: 25, scope: !183, inlinedAt: !712)
!712 = distinct !DILocation(line: 257, column: 47, scope: !702)
!713 = !DILocation(line: 257, column: 18, scope: !702)
!714 = !DILocation(line: 257, column: 9, scope: !704)
!715 = !DILocation(line: 258, column: 5, scope: !704)
!716 = !DILocation(line: 259, column: 2, scope: !697)
!717 = distinct !DISubprogram(name: "run_test_28", scope: !8, file: !7, line: 262, type: !165, scopeLine: 262, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !19, retainedNodes: !718)
!718 = !{!719, !721, !723}
!719 = !DILocalVariable(name: "h1", scope: !720, file: !7, line: 263, type: !171, align: 1)
!720 = distinct !DILexicalBlock(scope: !717, file: !7, line: 263, column: 5)
!721 = !DILocalVariable(name: "h2", scope: !722, file: !7, line: 264, type: !171, align: 1)
!722 = distinct !DILexicalBlock(scope: !720, file: !7, line: 264, column: 5)
!723 = !DILocalVariable(name: "result", scope: !724, file: !7, line: 265, type: !13, align: 4)
!724 = distinct !DILexicalBlock(scope: !722, file: !7, line: 265, column: 5)
!725 = !DILocation(line: 263, column: 9, scope: !720)
!726 = !DILocation(line: 264, column: 9, scope: !722)
!727 = !DILocation(line: 263, column: 23, scope: !717)
!728 = !DILocation(line: 264, column: 23, scope: !720)
!729 = !DILocation(line: 476, column: 25, scope: !183, inlinedAt: !730)
!730 = distinct !DILocation(line: 265, column: 34, scope: !722)
!731 = !DILocation(line: 476, column: 25, scope: !183, inlinedAt: !732)
!732 = distinct !DILocation(line: 265, column: 47, scope: !722)
!733 = !DILocation(line: 265, column: 18, scope: !722)
!734 = !DILocation(line: 265, column: 9, scope: !724)
!735 = !DILocation(line: 266, column: 5, scope: !724)
!736 = !DILocation(line: 267, column: 2, scope: !717)
!737 = distinct !DISubprogram(name: "run_test_29", scope: !8, file: !7, line: 270, type: !165, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !19, retainedNodes: !738)
!738 = !{!739, !741, !743}
!739 = !DILocalVariable(name: "h1", scope: !740, file: !7, line: 271, type: !171, align: 1)
!740 = distinct !DILexicalBlock(scope: !737, file: !7, line: 271, column: 5)
!741 = !DILocalVariable(name: "h2", scope: !742, file: !7, line: 272, type: !171, align: 1)
!742 = distinct !DILexicalBlock(scope: !740, file: !7, line: 272, column: 5)
!743 = !DILocalVariable(name: "result", scope: !744, file: !7, line: 273, type: !13, align: 4)
!744 = distinct !DILexicalBlock(scope: !742, file: !7, line: 273, column: 5)
!745 = !DILocation(line: 271, column: 9, scope: !740)
!746 = !DILocation(line: 272, column: 9, scope: !742)
!747 = !DILocation(line: 271, column: 23, scope: !737)
!748 = !DILocation(line: 272, column: 23, scope: !740)
!749 = !DILocation(line: 476, column: 25, scope: !183, inlinedAt: !750)
!750 = distinct !DILocation(line: 273, column: 34, scope: !742)
!751 = !DILocation(line: 476, column: 25, scope: !183, inlinedAt: !752)
!752 = distinct !DILocation(line: 273, column: 47, scope: !742)
!753 = !DILocation(line: 273, column: 18, scope: !742)
!754 = !DILocation(line: 273, column: 9, scope: !744)
!755 = !DILocation(line: 274, column: 5, scope: !744)
!756 = !DILocation(line: 275, column: 2, scope: !737)
!757 = distinct !DISubprogram(name: "run_test_30", scope: !8, file: !7, line: 278, type: !165, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !19, retainedNodes: !758)
!758 = !{!759, !761, !763}
!759 = !DILocalVariable(name: "h1", scope: !760, file: !7, line: 279, type: !171, align: 1)
!760 = distinct !DILexicalBlock(scope: !757, file: !7, line: 279, column: 5)
!761 = !DILocalVariable(name: "h2", scope: !762, file: !7, line: 280, type: !171, align: 1)
!762 = distinct !DILexicalBlock(scope: !760, file: !7, line: 280, column: 5)
!763 = !DILocalVariable(name: "result", scope: !764, file: !7, line: 281, type: !13, align: 4)
!764 = distinct !DILexicalBlock(scope: !762, file: !7, line: 281, column: 5)
!765 = !DILocation(line: 279, column: 9, scope: !760)
!766 = !DILocation(line: 280, column: 9, scope: !762)
!767 = !DILocation(line: 279, column: 23, scope: !757)
!768 = !DILocation(line: 280, column: 23, scope: !760)
!769 = !DILocation(line: 476, column: 25, scope: !183, inlinedAt: !770)
!770 = distinct !DILocation(line: 281, column: 34, scope: !762)
!771 = !DILocation(line: 476, column: 25, scope: !183, inlinedAt: !772)
!772 = distinct !DILocation(line: 281, column: 47, scope: !762)
!773 = !DILocation(line: 281, column: 18, scope: !762)
!774 = !DILocation(line: 281, column: 9, scope: !764)
!775 = !DILocation(line: 282, column: 5, scope: !764)
!776 = !DILocation(line: 283, column: 2, scope: !757)
