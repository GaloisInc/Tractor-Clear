; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; ASSERT EQ: i1 1 = call i1 @run_test_1()
; ASSERT EQ: i1 1 = call i1 @run_test_2()
; ASSERT EQ: i1 1 = call i1 @run_test_3()
; ASSERT EQ: i1 1 = call i1 @run_test_4()
; ASSERT EQ: i1 1 = call i1 @run_test_5()

@alloc_f5ffd2fd1476bab43ad89fb40c72d0c5 = private unnamed_addr constant <{ [10 x i8] }> <{ [10 x i8] c"src/lib.rs" }>, align 1
@alloc_b38409f3e1c67300cf3cdfa45a52bf25 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\004\00\00\00\10\00\00\00" }>, align 8
@alloc_fae4679e376cf5e907b72684bc9bd4c0 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\005\00\00\00\0F\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define void @rgb_to_hsv(ptr %dest, ptr %src) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !6 {
start:
  %src.dbg.spill3 = alloca ptr, align 8
  %dest.dbg.spill1 = alloca ptr, align 8
  %src.dbg.spill = alloca ptr, align 8
  %dest.dbg.spill = alloca ptr, align 8
  store ptr %dest, ptr %dest.dbg.spill, align 8
    #dbg_declare(ptr %dest.dbg.spill, !17, !DIExpression(), !29)
  store ptr %src, ptr %src.dbg.spill, align 8
    #dbg_declare(ptr %src.dbg.spill, !18, !DIExpression(), !30)
  %_14 = ptrtoint ptr %dest to i64, !dbg !31
  %_17 = and i64 %_14, 3, !dbg !31
  %_18 = icmp eq i64 %_17, 0, !dbg !31
  %0 = call i1 @llvm.expect.i1(i1 %_18, i1 true), !dbg !31
  br i1 %0, label %bb3, label %panic, !dbg !31

bb3:                                              ; preds = %start
  store ptr %dest, ptr %dest.dbg.spill1, align 8, !dbg !31
    #dbg_declare(ptr %dest.dbg.spill1, !19, !DIExpression(), !32)
  %_8 = ptrtoint ptr %src to i64, !dbg !33
  %_11 = and i64 %_8, 3, !dbg !33
  %_12 = icmp eq i64 %_11, 0, !dbg !33
  %1 = call i1 @llvm.expect.i1(i1 %_12, i1 true), !dbg !33
  br i1 %1, label %bb2, label %panic2, !dbg !33

panic:                                            ; preds = %start
  invoke void @_ZN4core9panicking36panic_misaligned_pointer_dereference17h587229c42ea18e2bE(i64 4, i64 %_14, ptr align 8 @alloc_b38409f3e1c67300cf3cdfa45a52bf25) #4
          to label %unreachable unwind label %terminate, !dbg !31

terminate:                                        ; preds = %panic2, %panic
  %2 = landingpad { ptr, i32 }
          cleanup
  %3 = extractvalue { ptr, i32 } %2, 0
  %4 = extractvalue { ptr, i32 } %2, 1
  call void @_ZN4core9panicking19panic_cannot_unwind17h629e1da841ab4abfE() #5, !dbg !34
  unreachable, !dbg !34

unreachable:                                      ; preds = %panic2, %panic
  unreachable

bb2:                                              ; preds = %bb3
  store ptr %src, ptr %src.dbg.spill3, align 8, !dbg !33
    #dbg_declare(ptr %src.dbg.spill3, !25, !DIExpression(), !35)
  call void @_ZN14rgb_to_hsv_lib3src3lib10rgb_to_hsv17h07dacd3493f975f0E(ptr align 4 %dest, ptr align 4 %src), !dbg !36
  ret void, !dbg !37

panic2:                                           ; preds = %bb3
  invoke void @_ZN4core9panicking36panic_misaligned_pointer_dereference17h587229c42ea18e2bE(i64 4, i64 %_8, ptr align 8 @alloc_fae4679e376cf5e907b72684bc9bd4c0) #4
          to label %unreachable unwind label %terminate, !dbg !33
}

; Function Attrs: nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.expect.i1(i1, i1) #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking36panic_misaligned_pointer_dereference17h587229c42ea18e2bE(i64, i64, ptr align 8) unnamed_addr #2

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_ZN4core9panicking19panic_cannot_unwind17h629e1da841ab4abfE() unnamed_addr #3

; Function Attrs: nonlazybind uwtable
define internal void @_ZN14rgb_to_hsv_lib3src3lib10rgb_to_hsv17h07dacd3493f975f0E(ptr align 4 %dest, ptr align 4 %src) unnamed_addr #0 !dbg !38 {
start:
  %v.dbg.spill = alloca float, align 4
  %delta.dbg.spill = alloca float, align 4
  %b.dbg.spill = alloca float, align 4
  %g.dbg.spill = alloca float, align 4
  %r.dbg.spill = alloca float, align 4
  %src.dbg.spill = alloca ptr, align 8
  %dest.dbg.spill = alloca ptr, align 8
  %_29 = alloca i8, align 1
  %_22 = alloca float, align 4
  %_19 = alloca float, align 4
  %_16 = alloca float, align 4
  %_13 = alloca float, align 4
  %max = alloca float, align 4
  %min = alloca float, align 4
  %s = alloca float, align 4
  %h = alloca float, align 4
  store ptr %dest, ptr %dest.dbg.spill, align 8
    #dbg_declare(ptr %dest.dbg.spill, !42, !DIExpression(), !62)
  store ptr %src, ptr %src.dbg.spill, align 8
    #dbg_declare(ptr %src.dbg.spill, !43, !DIExpression(), !63)
    #dbg_declare(ptr %h, !50, !DIExpression(), !64)
    #dbg_declare(ptr %s, !52, !DIExpression(), !65)
    #dbg_declare(ptr %min, !56, !DIExpression(), !66)
    #dbg_declare(ptr %max, !58, !DIExpression(), !67)
  %0 = getelementptr inbounds [3 x float], ptr %src, i64 0, i64 0, !dbg !68
  %r = load float, ptr %0, align 4, !dbg !68, !noundef !28
  store float %r, ptr %r.dbg.spill, align 4, !dbg !68
    #dbg_declare(ptr %r.dbg.spill, !44, !DIExpression(), !69)
  %1 = getelementptr inbounds [3 x float], ptr %src, i64 0, i64 1, !dbg !70
  %g = load float, ptr %1, align 4, !dbg !70, !noundef !28
  store float %g, ptr %g.dbg.spill, align 4, !dbg !70
    #dbg_declare(ptr %g.dbg.spill, !46, !DIExpression(), !71)
  %2 = getelementptr inbounds [3 x float], ptr %src, i64 0, i64 2, !dbg !72
  %b = load float, ptr %2, align 4, !dbg !72, !noundef !28
  store float %b, ptr %b.dbg.spill, align 4, !dbg !72
    #dbg_declare(ptr %b.dbg.spill, !48, !DIExpression(), !73)
  store float 0.000000e+00, ptr %h, align 4, !dbg !74
  store float 0.000000e+00, ptr %s, align 4, !dbg !75
  store float %r, ptr %min, align 4, !dbg !76
  store float %r, ptr %max, align 4, !dbg !77
  %_15 = load float, ptr %min, align 4, !dbg !78, !noundef !28
  %_14 = fcmp olt float %_15, %g, !dbg !78
  br i1 %_14, label %bb1, label %bb2, !dbg !78

bb2:                                              ; preds = %start
  store float %g, ptr %_13, align 4, !dbg !79
  br label %bb3, !dbg !80

bb1:                                              ; preds = %start
  %3 = load float, ptr %min, align 4, !dbg !81, !noundef !28
  store float %3, ptr %_13, align 4, !dbg !81
  br label %bb3, !dbg !80

bb3:                                              ; preds = %bb1, %bb2
  %4 = load float, ptr %_13, align 4, !dbg !82, !noundef !28
  store float %4, ptr %min, align 4, !dbg !82
  %_18 = load float, ptr %min, align 4, !dbg !83, !noundef !28
  %_17 = fcmp olt float %_18, %b, !dbg !83
  br i1 %_17, label %bb4, label %bb5, !dbg !83

bb5:                                              ; preds = %bb3
  store float %b, ptr %_16, align 4, !dbg !84
  br label %bb6, !dbg !85

bb4:                                              ; preds = %bb3
  %5 = load float, ptr %min, align 4, !dbg !86, !noundef !28
  store float %5, ptr %_16, align 4, !dbg !86
  br label %bb6, !dbg !85

bb6:                                              ; preds = %bb4, %bb5
  %6 = load float, ptr %_16, align 4, !dbg !87, !noundef !28
  store float %6, ptr %min, align 4, !dbg !87
  %_21 = load float, ptr %max, align 4, !dbg !88, !noundef !28
  %_20 = fcmp ogt float %_21, %g, !dbg !88
  br i1 %_20, label %bb7, label %bb8, !dbg !88

bb8:                                              ; preds = %bb6
  store float %g, ptr %_19, align 4, !dbg !89
  br label %bb9, !dbg !90

bb7:                                              ; preds = %bb6
  %7 = load float, ptr %max, align 4, !dbg !91, !noundef !28
  store float %7, ptr %_19, align 4, !dbg !91
  br label %bb9, !dbg !90

bb9:                                              ; preds = %bb7, %bb8
  %8 = load float, ptr %_19, align 4, !dbg !92, !noundef !28
  store float %8, ptr %max, align 4, !dbg !92
  %_24 = load float, ptr %max, align 4, !dbg !93, !noundef !28
  %_23 = fcmp ogt float %_24, %b, !dbg !93
  br i1 %_23, label %bb10, label %bb11, !dbg !93

bb11:                                             ; preds = %bb9
  store float %b, ptr %_22, align 4, !dbg !94
  br label %bb12, !dbg !95

bb10:                                             ; preds = %bb9
  %9 = load float, ptr %max, align 4, !dbg !96, !noundef !28
  store float %9, ptr %_22, align 4, !dbg !96
  br label %bb12, !dbg !95

bb12:                                             ; preds = %bb10, %bb11
  %10 = load float, ptr %_22, align 4, !dbg !97, !noundef !28
  store float %10, ptr %max, align 4, !dbg !97
  %_26 = load float, ptr %max, align 4, !dbg !98, !noundef !28
  %_27 = load float, ptr %min, align 4, !dbg !99, !noundef !28
  %delta = fsub float %_26, %_27, !dbg !98
  store float %delta, ptr %delta.dbg.spill, align 4, !dbg !98
    #dbg_declare(ptr %delta.dbg.spill, !60, !DIExpression(), !100)
  %v = load float, ptr %max, align 4, !dbg !101, !noundef !28
  store float %v, ptr %v.dbg.spill, align 4, !dbg !101
    #dbg_declare(ptr %v.dbg.spill, !54, !DIExpression(), !102)
  %_30 = fcmp oeq float %delta, 0.000000e+00, !dbg !103
  br i1 %_30, label %bb13, label %bb14, !dbg !103

bb14:                                             ; preds = %bb12
  %_32 = load float, ptr %max, align 4, !dbg !104, !noundef !28
  %_31 = fcmp oeq float %_32, 0.000000e+00, !dbg !104
  %11 = zext i1 %_31 to i8, !dbg !103
  store i8 %11, ptr %_29, align 1, !dbg !103
  br label %bb15, !dbg !103

bb13:                                             ; preds = %bb12
  store i8 1, ptr %_29, align 1, !dbg !103
  br label %bb15, !dbg !103

bb15:                                             ; preds = %bb13, %bb14
  %12 = load i8, ptr %_29, align 1, !dbg !103, !range !105, !noundef !28
  %13 = trunc i8 %12 to i1, !dbg !103
  br i1 %13, label %bb16, label %bb17, !dbg !103

bb17:                                             ; preds = %bb15
  %_38 = load float, ptr %max, align 4, !dbg !106, !noundef !28
  %14 = fdiv float %delta, %_38, !dbg !107
  store float %14, ptr %s, align 4, !dbg !107
  %_40 = load float, ptr %max, align 4, !dbg !108, !noundef !28
  %_39 = fcmp oeq float %r, %_40, !dbg !109
  br i1 %_39, label %bb18, label %bb19, !dbg !109

bb16:                                             ; preds = %bb15
  %_33 = load float, ptr %h, align 4, !dbg !110, !noundef !28
  %15 = getelementptr inbounds [3 x float], ptr %dest, i64 0, i64 0, !dbg !111
  store float %_33, ptr %15, align 4, !dbg !111
  %_35 = load float, ptr %s, align 4, !dbg !112, !noundef !28
  %16 = getelementptr inbounds [3 x float], ptr %dest, i64 0, i64 1, !dbg !113
  store float %_35, ptr %16, align 4, !dbg !113
  %17 = getelementptr inbounds [3 x float], ptr %dest, i64 0, i64 2, !dbg !114
  store float %v, ptr %17, align 4, !dbg !114
  br label %bb25, !dbg !115

bb25:                                             ; preds = %bb24, %bb16
  ret void, !dbg !115

bb19:                                             ; preds = %bb17
  %_43 = load float, ptr %max, align 4, !dbg !116, !noundef !28
  %_42 = fcmp oeq float %g, %_43, !dbg !117
  br i1 %_42, label %bb20, label %bb21, !dbg !117

bb18:                                             ; preds = %bb17
  %_41 = fsub float %g, %b, !dbg !118
  %18 = fdiv float %_41, %delta, !dbg !119
  store float %18, ptr %h, align 4, !dbg !119
  br label %bb22, !dbg !120

bb22:                                             ; preds = %bb20, %bb21, %bb18
  %19 = load float, ptr %h, align 4, !dbg !121, !noundef !28
  %20 = fmul float %19, 6.000000e+01, !dbg !121
  store float %20, ptr %h, align 4, !dbg !121
  %_49 = load float, ptr %h, align 4, !dbg !122, !noundef !28
  %_48 = fcmp olt float %_49, 0.000000e+00, !dbg !122
  br i1 %_48, label %bb23, label %bb24, !dbg !122

bb21:                                             ; preds = %bb19
  %_47 = fsub float %r, %g, !dbg !123
  %_46 = fdiv float %_47, %delta, !dbg !123
  %21 = fadd float 4.000000e+00, %_46, !dbg !124
  store float %21, ptr %h, align 4, !dbg !124
  br label %bb22, !dbg !125

bb20:                                             ; preds = %bb19
  %_45 = fsub float %b, %r, !dbg !126
  %_44 = fdiv float %_45, %delta, !dbg !126
  %22 = fadd float 2.000000e+00, %_44, !dbg !127
  store float %22, ptr %h, align 4, !dbg !127
  br label %bb22, !dbg !125

bb24:                                             ; preds = %bb23, %bb22
  %_50 = load float, ptr %h, align 4, !dbg !128, !noundef !28
  %23 = getelementptr inbounds [3 x float], ptr %dest, i64 0, i64 0, !dbg !129
  store float %_50, ptr %23, align 4, !dbg !129
  %_52 = load float, ptr %s, align 4, !dbg !130, !noundef !28
  %24 = getelementptr inbounds [3 x float], ptr %dest, i64 0, i64 1, !dbg !131
  store float %_52, ptr %24, align 4, !dbg !131
  %25 = getelementptr inbounds [3 x float], ptr %dest, i64 0, i64 2, !dbg !132
  store float %v, ptr %25, align 4, !dbg !132
  br label %bb25, !dbg !115

bb23:                                             ; preds = %bb22
  %26 = load float, ptr %h, align 4, !dbg !133, !noundef !28
  %27 = fadd float %26, 3.600000e+02, !dbg !133
  store float %27, ptr %h, align 4, !dbg !133
  br label %bb24, !dbg !134
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_1() unnamed_addr #0 !dbg !135 {
start:
  %self.dbg.spill.i1 = alloca { ptr, i64 }, align 8
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %_11 = alloca i8, align 1
  %expected_dest = alloca [3 x float], align 4
  %src = alloca [3 x float], align 4
  %dest = alloca [3 x float], align 4
  %0 = alloca i8, align 1
    #dbg_declare(ptr %dest, !140, !DIExpression(), !146)
    #dbg_declare(ptr %src, !142, !DIExpression(), !147)
    #dbg_declare(ptr %expected_dest, !144, !DIExpression(), !148)
  %1 = getelementptr inbounds [3 x float], ptr %dest, i64 0, i64 0, !dbg !149
  store float 0.000000e+00, ptr %1, align 4, !dbg !149
  %2 = getelementptr inbounds [3 x float], ptr %dest, i64 0, i64 1, !dbg !149
  store float 0.000000e+00, ptr %2, align 4, !dbg !149
  %3 = getelementptr inbounds [3 x float], ptr %dest, i64 0, i64 2, !dbg !149
  store float 0.000000e+00, ptr %3, align 4, !dbg !149
  %4 = getelementptr inbounds [3 x float], ptr %src, i64 0, i64 0, !dbg !150
  store float 0x46A93958A0000000, ptr %4, align 4, !dbg !150
  %5 = getelementptr inbounds [3 x float], ptr %src, i64 0, i64 1, !dbg !150
  store float 0x3BC86D9940000000, ptr %5, align 4, !dbg !150
  %6 = getelementptr inbounds [3 x float], ptr %src, i64 0, i64 2, !dbg !150
  store float 0x43F8742AC0000000, ptr %6, align 4, !dbg !150
  store ptr %dest, ptr %self.dbg.spill.i, align 8
  %7 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %7, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !151, !DIExpression(), !169)
  store ptr %src, ptr %self.dbg.spill.i1, align 8
  %8 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i1, i32 0, i32 1
  store i64 3, ptr %8, align 8
    #dbg_declare(ptr %self.dbg.spill.i1, !171, !DIExpression(), !180)
  call void @rgb_to_hsv(ptr %dest, ptr %src), !dbg !182
  %9 = getelementptr inbounds [3 x float], ptr %expected_dest, i64 0, i64 0, !dbg !183
  store float 3.600000e+02, ptr %9, align 4, !dbg !183
  %10 = getelementptr inbounds [3 x float], ptr %expected_dest, i64 0, i64 1, !dbg !183
  store float 1.000000e+00, ptr %10, align 4, !dbg !183
  %11 = getelementptr inbounds [3 x float], ptr %expected_dest, i64 0, i64 2, !dbg !183
  store float 0x46A93958A0000000, ptr %11, align 4, !dbg !183
  %12 = getelementptr inbounds [3 x float], ptr %dest, i64 0, i64 0, !dbg !184
  %_13 = load float, ptr %12, align 4, !dbg !184, !noundef !28
  %_12 = fcmp oeq float %_13, 3.600000e+02, !dbg !184
  br i1 %_12, label %bb8, label %bb7, !dbg !184

bb7:                                              ; preds = %start
  store i8 0, ptr %_11, align 1, !dbg !184
  br label %bb9, !dbg !184

bb8:                                              ; preds = %start
  %13 = getelementptr inbounds [3 x float], ptr %dest, i64 0, i64 1, !dbg !185
  %_17 = load float, ptr %13, align 4, !dbg !185, !noundef !28
  %_16 = fcmp oeq float %_17, 1.000000e+00, !dbg !185
  %14 = zext i1 %_16 to i8, !dbg !184
  store i8 %14, ptr %_11, align 1, !dbg !184
  br label %bb9, !dbg !184

bb9:                                              ; preds = %bb8, %bb7
  %15 = load i8, ptr %_11, align 1, !dbg !184, !range !105, !noundef !28
  %16 = trunc i8 %15 to i1, !dbg !184
  br i1 %16, label %bb5, label %bb4, !dbg !184

bb4:                                              ; preds = %bb9
  store i8 0, ptr %0, align 1, !dbg !184
  br label %bb6, !dbg !184

bb5:                                              ; preds = %bb9
  %17 = getelementptr inbounds [3 x float], ptr %dest, i64 0, i64 2, !dbg !186
  %_21 = load float, ptr %17, align 4, !dbg !186, !noundef !28
  %_20 = fcmp oeq float %_21, 0x46A93958A0000000, !dbg !186
  %18 = zext i1 %_20 to i8, !dbg !184
  store i8 %18, ptr %0, align 1, !dbg !184
  br label %bb6, !dbg !184

bb6:                                              ; preds = %bb5, %bb4
  %19 = load i8, ptr %0, align 1, !dbg !187, !range !105, !noundef !28
  %20 = trunc i8 %19 to i1, !dbg !187
  ret i1 %20, !dbg !187
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_2() unnamed_addr #0 !dbg !188 {
start:
  %self.dbg.spill.i1 = alloca { ptr, i64 }, align 8
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %_11 = alloca i8, align 1
  %expected_dest = alloca [3 x float], align 4
  %src = alloca [3 x float], align 4
  %dest = alloca [3 x float], align 4
  %0 = alloca i8, align 1
    #dbg_declare(ptr %dest, !190, !DIExpression(), !196)
    #dbg_declare(ptr %src, !192, !DIExpression(), !197)
    #dbg_declare(ptr %expected_dest, !194, !DIExpression(), !198)
  %1 = getelementptr inbounds [3 x float], ptr %dest, i64 0, i64 0, !dbg !199
  store float 0.000000e+00, ptr %1, align 4, !dbg !199
  %2 = getelementptr inbounds [3 x float], ptr %dest, i64 0, i64 1, !dbg !199
  store float 0.000000e+00, ptr %2, align 4, !dbg !199
  %3 = getelementptr inbounds [3 x float], ptr %dest, i64 0, i64 2, !dbg !199
  store float 0.000000e+00, ptr %3, align 4, !dbg !199
  %4 = getelementptr inbounds [3 x float], ptr %src, i64 0, i64 0, !dbg !200
  store float 0xBD8E637BC0000000, ptr %4, align 4, !dbg !200
  %5 = getelementptr inbounds [3 x float], ptr %src, i64 0, i64 1, !dbg !200
  store float 0xBF07706300000000, ptr %5, align 4, !dbg !200
  %6 = getelementptr inbounds [3 x float], ptr %src, i64 0, i64 2, !dbg !200
  store float 0x42C2C39EC0000000, ptr %6, align 4, !dbg !200
  store ptr %dest, ptr %self.dbg.spill.i, align 8
  %7 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %7, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !151, !DIExpression(), !201)
  store ptr %src, ptr %self.dbg.spill.i1, align 8
  %8 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i1, i32 0, i32 1
  store i64 3, ptr %8, align 8
    #dbg_declare(ptr %self.dbg.spill.i1, !171, !DIExpression(), !203)
  call void @rgb_to_hsv(ptr %dest, ptr %src), !dbg !205
  %9 = getelementptr inbounds [3 x float], ptr %expected_dest, i64 0, i64 0, !dbg !206
  store float 2.400000e+02, ptr %9, align 4, !dbg !206
  %10 = getelementptr inbounds [3 x float], ptr %expected_dest, i64 0, i64 1, !dbg !206
  store float 1.000000e+00, ptr %10, align 4, !dbg !206
  %11 = getelementptr inbounds [3 x float], ptr %expected_dest, i64 0, i64 2, !dbg !206
  store float 0x42C2C39EC0000000, ptr %11, align 4, !dbg !206
  %12 = getelementptr inbounds [3 x float], ptr %dest, i64 0, i64 0, !dbg !207
  %_13 = load float, ptr %12, align 4, !dbg !207, !noundef !28
  %_12 = fcmp oeq float %_13, 2.400000e+02, !dbg !207
  br i1 %_12, label %bb8, label %bb7, !dbg !207

bb7:                                              ; preds = %start
  store i8 0, ptr %_11, align 1, !dbg !207
  br label %bb9, !dbg !207

bb8:                                              ; preds = %start
  %13 = getelementptr inbounds [3 x float], ptr %dest, i64 0, i64 1, !dbg !208
  %_17 = load float, ptr %13, align 4, !dbg !208, !noundef !28
  %_16 = fcmp oeq float %_17, 1.000000e+00, !dbg !208
  %14 = zext i1 %_16 to i8, !dbg !207
  store i8 %14, ptr %_11, align 1, !dbg !207
  br label %bb9, !dbg !207

bb9:                                              ; preds = %bb8, %bb7
  %15 = load i8, ptr %_11, align 1, !dbg !207, !range !105, !noundef !28
  %16 = trunc i8 %15 to i1, !dbg !207
  br i1 %16, label %bb5, label %bb4, !dbg !207

bb4:                                              ; preds = %bb9
  store i8 0, ptr %0, align 1, !dbg !207
  br label %bb6, !dbg !207

bb5:                                              ; preds = %bb9
  %17 = getelementptr inbounds [3 x float], ptr %dest, i64 0, i64 2, !dbg !209
  %_21 = load float, ptr %17, align 4, !dbg !209, !noundef !28
  %_20 = fcmp oeq float %_21, 0x42C2C39EC0000000, !dbg !209
  %18 = zext i1 %_20 to i8, !dbg !207
  store i8 %18, ptr %0, align 1, !dbg !207
  br label %bb6, !dbg !207

bb6:                                              ; preds = %bb5, %bb4
  %19 = load i8, ptr %0, align 1, !dbg !210, !range !105, !noundef !28
  %20 = trunc i8 %19 to i1, !dbg !210
  ret i1 %20, !dbg !210
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_3() unnamed_addr #0 !dbg !211 {
start:
  %self.dbg.spill.i1 = alloca { ptr, i64 }, align 8
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %_11 = alloca i8, align 1
  %expected_dest = alloca [3 x float], align 4
  %src = alloca [3 x float], align 4
  %dest = alloca [3 x float], align 4
  %0 = alloca i8, align 1
    #dbg_declare(ptr %dest, !213, !DIExpression(), !219)
    #dbg_declare(ptr %src, !215, !DIExpression(), !220)
    #dbg_declare(ptr %expected_dest, !217, !DIExpression(), !221)
  %1 = getelementptr inbounds [3 x float], ptr %dest, i64 0, i64 0, !dbg !222
  store float 0.000000e+00, ptr %1, align 4, !dbg !222
  %2 = getelementptr inbounds [3 x float], ptr %dest, i64 0, i64 1, !dbg !222
  store float 0.000000e+00, ptr %2, align 4, !dbg !222
  %3 = getelementptr inbounds [3 x float], ptr %dest, i64 0, i64 2, !dbg !222
  store float 0.000000e+00, ptr %3, align 4, !dbg !222
  %4 = getelementptr inbounds [3 x float], ptr %src, i64 0, i64 0, !dbg !223
  store float 0xC262106A60000000, ptr %4, align 4, !dbg !223
  %5 = getelementptr inbounds [3 x float], ptr %src, i64 0, i64 1, !dbg !223
  store float 0xC00E85C640000000, ptr %5, align 4, !dbg !223
  %6 = getelementptr inbounds [3 x float], ptr %src, i64 0, i64 2, !dbg !223
  store float 0x3BC570AC80000000, ptr %6, align 4, !dbg !223
  store ptr %dest, ptr %self.dbg.spill.i, align 8
  %7 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %7, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !151, !DIExpression(), !224)
  store ptr %src, ptr %self.dbg.spill.i1, align 8
  %8 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i1, i32 0, i32 1
  store i64 3, ptr %8, align 8
    #dbg_declare(ptr %self.dbg.spill.i1, !171, !DIExpression(), !226)
  call void @rgb_to_hsv(ptr %dest, ptr %src), !dbg !228
  %9 = getelementptr inbounds [3 x float], ptr %expected_dest, i64 0, i64 0, !dbg !229
  store float 1.800000e+02, ptr %9, align 4, !dbg !229
  %10 = getelementptr inbounds [3 x float], ptr %expected_dest, i64 0, i64 1, !dbg !229
  store float 0x468AF61200000000, ptr %10, align 4, !dbg !229
  %11 = getelementptr inbounds [3 x float], ptr %expected_dest, i64 0, i64 2, !dbg !229
  store float 0x3BC570AC80000000, ptr %11, align 4, !dbg !229
  %12 = getelementptr inbounds [3 x float], ptr %dest, i64 0, i64 0, !dbg !230
  %_13 = load float, ptr %12, align 4, !dbg !230, !noundef !28
  %_12 = fcmp oeq float %_13, 1.800000e+02, !dbg !230
  br i1 %_12, label %bb8, label %bb7, !dbg !230

bb7:                                              ; preds = %start
  store i8 0, ptr %_11, align 1, !dbg !230
  br label %bb9, !dbg !230

bb8:                                              ; preds = %start
  %13 = getelementptr inbounds [3 x float], ptr %dest, i64 0, i64 1, !dbg !231
  %_17 = load float, ptr %13, align 4, !dbg !231, !noundef !28
  %_16 = fcmp oeq float %_17, 0x468AF61200000000, !dbg !231
  %14 = zext i1 %_16 to i8, !dbg !230
  store i8 %14, ptr %_11, align 1, !dbg !230
  br label %bb9, !dbg !230

bb9:                                              ; preds = %bb8, %bb7
  %15 = load i8, ptr %_11, align 1, !dbg !230, !range !105, !noundef !28
  %16 = trunc i8 %15 to i1, !dbg !230
  br i1 %16, label %bb5, label %bb4, !dbg !230

bb4:                                              ; preds = %bb9
  store i8 0, ptr %0, align 1, !dbg !230
  br label %bb6, !dbg !230

bb5:                                              ; preds = %bb9
  %17 = getelementptr inbounds [3 x float], ptr %dest, i64 0, i64 2, !dbg !232
  %_21 = load float, ptr %17, align 4, !dbg !232, !noundef !28
  %_20 = fcmp oeq float %_21, 0x3BC570AC80000000, !dbg !232
  %18 = zext i1 %_20 to i8, !dbg !230
  store i8 %18, ptr %0, align 1, !dbg !230
  br label %bb6, !dbg !230

bb6:                                              ; preds = %bb5, %bb4
  %19 = load i8, ptr %0, align 1, !dbg !233, !range !105, !noundef !28
  %20 = trunc i8 %19 to i1, !dbg !233
  ret i1 %20, !dbg !233
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_4() unnamed_addr #0 !dbg !234 {
start:
  %self.dbg.spill.i1 = alloca { ptr, i64 }, align 8
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %_11 = alloca i8, align 1
  %expected_dest = alloca [3 x float], align 4
  %src = alloca [3 x float], align 4
  %dest = alloca [3 x float], align 4
  %0 = alloca i8, align 1
    #dbg_declare(ptr %dest, !236, !DIExpression(), !242)
    #dbg_declare(ptr %src, !238, !DIExpression(), !243)
    #dbg_declare(ptr %expected_dest, !240, !DIExpression(), !244)
  %1 = getelementptr inbounds [3 x float], ptr %dest, i64 0, i64 0, !dbg !245
  store float 0.000000e+00, ptr %1, align 4, !dbg !245
  %2 = getelementptr inbounds [3 x float], ptr %dest, i64 0, i64 1, !dbg !245
  store float 0.000000e+00, ptr %2, align 4, !dbg !245
  %3 = getelementptr inbounds [3 x float], ptr %dest, i64 0, i64 2, !dbg !245
  store float 0.000000e+00, ptr %3, align 4, !dbg !245
  %4 = getelementptr inbounds [3 x float], ptr %src, i64 0, i64 0, !dbg !246
  store float 0xC0CA34E2C0000000, ptr %4, align 4, !dbg !246
  %5 = getelementptr inbounds [3 x float], ptr %src, i64 0, i64 1, !dbg !246
  store float 0xBE502D9D40000000, ptr %5, align 4, !dbg !246
  %6 = getelementptr inbounds [3 x float], ptr %src, i64 0, i64 2, !dbg !246
  store float 0xBFC459C2A0000000, ptr %6, align 4, !dbg !246
  store ptr %dest, ptr %self.dbg.spill.i, align 8
  %7 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %7, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !151, !DIExpression(), !247)
  store ptr %src, ptr %self.dbg.spill.i1, align 8
  %8 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i1, i32 0, i32 1
  store i64 3, ptr %8, align 8
    #dbg_declare(ptr %self.dbg.spill.i1, !171, !DIExpression(), !249)
  call void @rgb_to_hsv(ptr %dest, ptr %src), !dbg !251
  %9 = getelementptr inbounds [3 x float], ptr %expected_dest, i64 0, i64 0, !dbg !252
  store float 0x40667FFA20000000, ptr %9, align 4, !dbg !252
  %10 = getelementptr inbounds [3 x float], ptr %expected_dest, i64 0, i64 1, !dbg !252
  store float 0xC269EAFF20000000, ptr %10, align 4, !dbg !252
  %11 = getelementptr inbounds [3 x float], ptr %expected_dest, i64 0, i64 2, !dbg !252
  store float 0xBE502D9D40000000, ptr %11, align 4, !dbg !252
  %12 = getelementptr inbounds [3 x float], ptr %dest, i64 0, i64 0, !dbg !253
  %_13 = load float, ptr %12, align 4, !dbg !253, !noundef !28
  %_12 = fcmp oeq float %_13, 0x40667FFA20000000, !dbg !253
  br i1 %_12, label %bb8, label %bb7, !dbg !253

bb7:                                              ; preds = %start
  store i8 0, ptr %_11, align 1, !dbg !253
  br label %bb9, !dbg !253

bb8:                                              ; preds = %start
  %13 = getelementptr inbounds [3 x float], ptr %dest, i64 0, i64 1, !dbg !254
  %_17 = load float, ptr %13, align 4, !dbg !254, !noundef !28
  %_16 = fcmp oeq float %_17, 0xC269EAFF20000000, !dbg !254
  %14 = zext i1 %_16 to i8, !dbg !253
  store i8 %14, ptr %_11, align 1, !dbg !253
  br label %bb9, !dbg !253

bb9:                                              ; preds = %bb8, %bb7
  %15 = load i8, ptr %_11, align 1, !dbg !253, !range !105, !noundef !28
  %16 = trunc i8 %15 to i1, !dbg !253
  br i1 %16, label %bb5, label %bb4, !dbg !253

bb4:                                              ; preds = %bb9
  store i8 0, ptr %0, align 1, !dbg !253
  br label %bb6, !dbg !253

bb5:                                              ; preds = %bb9
  %17 = getelementptr inbounds [3 x float], ptr %dest, i64 0, i64 2, !dbg !255
  %_21 = load float, ptr %17, align 4, !dbg !255, !noundef !28
  %_20 = fcmp oeq float %_21, 0xBE502D9D40000000, !dbg !255
  %18 = zext i1 %_20 to i8, !dbg !253
  store i8 %18, ptr %0, align 1, !dbg !253
  br label %bb6, !dbg !253

bb6:                                              ; preds = %bb5, %bb4
  %19 = load i8, ptr %0, align 1, !dbg !256, !range !105, !noundef !28
  %20 = trunc i8 %19 to i1, !dbg !256
  ret i1 %20, !dbg !256
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_5() unnamed_addr #0 !dbg !257 {
start:
  %self.dbg.spill.i1 = alloca { ptr, i64 }, align 8
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %_11 = alloca i8, align 1
  %expected_dest = alloca [3 x float], align 4
  %src = alloca [3 x float], align 4
  %dest = alloca [3 x float], align 4
  %0 = alloca i8, align 1
    #dbg_declare(ptr %dest, !259, !DIExpression(), !265)
    #dbg_declare(ptr %src, !261, !DIExpression(), !266)
    #dbg_declare(ptr %expected_dest, !263, !DIExpression(), !267)
  %1 = getelementptr inbounds [3 x float], ptr %dest, i64 0, i64 0, !dbg !268
  store float 0.000000e+00, ptr %1, align 4, !dbg !268
  %2 = getelementptr inbounds [3 x float], ptr %dest, i64 0, i64 1, !dbg !268
  store float 0.000000e+00, ptr %2, align 4, !dbg !268
  %3 = getelementptr inbounds [3 x float], ptr %dest, i64 0, i64 2, !dbg !268
  store float 0.000000e+00, ptr %3, align 4, !dbg !268
  %4 = getelementptr inbounds [3 x float], ptr %src, i64 0, i64 0, !dbg !269
  store float 0x388F586480000000, ptr %4, align 4, !dbg !269
  %5 = getelementptr inbounds [3 x float], ptr %src, i64 0, i64 1, !dbg !269
  store float 0x451B8D31E0000000, ptr %5, align 4, !dbg !269
  %6 = getelementptr inbounds [3 x float], ptr %src, i64 0, i64 2, !dbg !269
  store float 0xB9E966FDA0000000, ptr %6, align 4, !dbg !269
  store ptr %dest, ptr %self.dbg.spill.i, align 8
  %7 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %7, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !151, !DIExpression(), !270)
  store ptr %src, ptr %self.dbg.spill.i1, align 8
  %8 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i1, i32 0, i32 1
  store i64 3, ptr %8, align 8
    #dbg_declare(ptr %self.dbg.spill.i1, !171, !DIExpression(), !272)
  call void @rgb_to_hsv(ptr %dest, ptr %src), !dbg !274
  %9 = getelementptr inbounds [3 x float], ptr %expected_dest, i64 0, i64 0, !dbg !275
  store float 1.200000e+02, ptr %9, align 4, !dbg !275
  %10 = getelementptr inbounds [3 x float], ptr %expected_dest, i64 0, i64 1, !dbg !275
  store float 1.000000e+00, ptr %10, align 4, !dbg !275
  %11 = getelementptr inbounds [3 x float], ptr %expected_dest, i64 0, i64 2, !dbg !275
  store float 0x451B8D31E0000000, ptr %11, align 4, !dbg !275
  %12 = getelementptr inbounds [3 x float], ptr %dest, i64 0, i64 0, !dbg !276
  %_13 = load float, ptr %12, align 4, !dbg !276, !noundef !28
  %_12 = fcmp oeq float %_13, 1.200000e+02, !dbg !276
  br i1 %_12, label %bb8, label %bb7, !dbg !276

bb7:                                              ; preds = %start
  store i8 0, ptr %_11, align 1, !dbg !276
  br label %bb9, !dbg !276

bb8:                                              ; preds = %start
  %13 = getelementptr inbounds [3 x float], ptr %dest, i64 0, i64 1, !dbg !277
  %_17 = load float, ptr %13, align 4, !dbg !277, !noundef !28
  %_16 = fcmp oeq float %_17, 1.000000e+00, !dbg !277
  %14 = zext i1 %_16 to i8, !dbg !276
  store i8 %14, ptr %_11, align 1, !dbg !276
  br label %bb9, !dbg !276

bb9:                                              ; preds = %bb8, %bb7
  %15 = load i8, ptr %_11, align 1, !dbg !276, !range !105, !noundef !28
  %16 = trunc i8 %15 to i1, !dbg !276
  br i1 %16, label %bb5, label %bb4, !dbg !276

bb4:                                              ; preds = %bb9
  store i8 0, ptr %0, align 1, !dbg !276
  br label %bb6, !dbg !276

bb5:                                              ; preds = %bb9
  %17 = getelementptr inbounds [3 x float], ptr %dest, i64 0, i64 2, !dbg !278
  %_21 = load float, ptr %17, align 4, !dbg !278, !noundef !28
  %_20 = fcmp oeq float %_21, 0x451B8D31E0000000, !dbg !278
  %18 = zext i1 %_20 to i8, !dbg !276
  store i8 %18, ptr %0, align 1, !dbg !276
  br label %bb6, !dbg !276

bb6:                                              ; preds = %bb5, %bb4
  %19 = load i8, ptr %0, align 1, !dbg !279, !range !105, !noundef !28
  %20 = trunc i8 %19 to i1, !dbg !279
  ret i1 %20, !dbg !279
}

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #2 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { noreturn }
attributes #5 = { noinline noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}

!0 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !1, producer: "clang LLVM (rustc version 1.70.0-nightly (84dd17b56 2023-04-14))", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!1 = !DIFile(filename: "lib.rs/@/1gbjyn7xyilonzxm", directory: "/crisp-rust-outputs/B01_organic/rgb_to_hsv_lib/translated_rust")
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 2, !"RtLibUseGOT", i32 1}
!4 = !{i32 2, !"Dwarf Version", i32 4}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = distinct !DISubprogram(name: "rgb_to_hsv_ffi", linkageName: "rgb_to_hsv", scope: !8, file: !7, line: 48, type: !11, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !28, retainedNodes: !16)
!7 = !DIFile(filename: "src/lib.rs", directory: "/crisp-rust-outputs/B01_organic/rgb_to_hsv_lib/translated_rust", checksumkind: CSK_MD5, checksum: "fff7ac21456dff57aa37a97e4a2ef22f")
!8 = !DINamespace(name: "lib", scope: !9)
!9 = !DINamespace(name: "src", scope: !10)
!10 = !DINamespace(name: "rgb_to_hsv_lib", scope: null)
!11 = !DISubroutineType(types: !12)
!12 = !{null, !13, !15}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut f32", baseType: !14, size: 64, align: 64, dwarfAddressSpace: 0)
!14 = !DIBasicType(name: "f32", size: 32, encoding: DW_ATE_float)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const f32", baseType: !14, size: 64, align: 64, dwarfAddressSpace: 0)
!16 = !{!17, !18, !19, !25}
!17 = !DILocalVariable(name: "dest", arg: 1, scope: !6, file: !7, line: 49, type: !13)
!18 = !DILocalVariable(name: "src", arg: 2, scope: !6, file: !7, line: 50, type: !15)
!19 = !DILocalVariable(name: "dest", scope: !20, file: !7, line: 52, type: !21, align: 8)
!20 = distinct !DILexicalBlock(scope: !6, file: !7, line: 52, column: 5)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut [f32; 3]", baseType: !22, size: 64, align: 64, dwarfAddressSpace: 0)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 96, align: 32, elements: !23)
!23 = !{!24}
!24 = !DISubrange(count: 3, lowerBound: 0)
!25 = !DILocalVariable(name: "src", scope: !26, file: !7, line: 53, type: !27, align: 8)
!26 = distinct !DILexicalBlock(scope: !20, file: !7, line: 53, column: 5)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&[f32; 3]", baseType: !22, size: 64, align: 64, dwarfAddressSpace: 0)
!28 = !{}
!29 = !DILocation(line: 49, column: 5, scope: !6)
!30 = !DILocation(line: 50, column: 5, scope: !6)
!31 = !DILocation(line: 52, column: 16, scope: !6)
!32 = !DILocation(line: 52, column: 9, scope: !20)
!33 = !DILocation(line: 53, column: 15, scope: !20)
!34 = !DILocation(line: 48, column: 1, scope: !6)
!35 = !DILocation(line: 53, column: 9, scope: !26)
!36 = !DILocation(line: 54, column: 5, scope: !26)
!37 = !DILocation(line: 55, column: 2, scope: !6)
!38 = distinct !DISubprogram(name: "rgb_to_hsv", linkageName: "_ZN14rgb_to_hsv_lib3src3lib10rgb_to_hsv17h07dacd3493f975f0E", scope: !8, file: !7, line: 1, type: !39, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !28, retainedNodes: !41)
!39 = !DISubroutineType(types: !40)
!40 = !{null, !21, !27}
!41 = !{!42, !43, !44, !46, !48, !50, !52, !54, !56, !58, !60}
!42 = !DILocalVariable(name: "dest", arg: 1, scope: !38, file: !7, line: 1, type: !21)
!43 = !DILocalVariable(name: "src", arg: 2, scope: !38, file: !7, line: 1, type: !27)
!44 = !DILocalVariable(name: "r", scope: !45, file: !7, line: 2, type: !14, align: 4)
!45 = distinct !DILexicalBlock(scope: !38, file: !7, line: 2, column: 5)
!46 = !DILocalVariable(name: "g", scope: !47, file: !7, line: 3, type: !14, align: 4)
!47 = distinct !DILexicalBlock(scope: !45, file: !7, line: 3, column: 5)
!48 = !DILocalVariable(name: "b", scope: !49, file: !7, line: 4, type: !14, align: 4)
!49 = distinct !DILexicalBlock(scope: !47, file: !7, line: 4, column: 5)
!50 = !DILocalVariable(name: "h", scope: !51, file: !7, line: 6, type: !14, align: 4)
!51 = distinct !DILexicalBlock(scope: !49, file: !7, line: 6, column: 5)
!52 = !DILocalVariable(name: "s", scope: !53, file: !7, line: 7, type: !14, align: 4)
!53 = distinct !DILexicalBlock(scope: !51, file: !7, line: 7, column: 5)
!54 = !DILocalVariable(name: "v", scope: !55, file: !7, line: 8, type: !14, align: 4)
!55 = distinct !DILexicalBlock(scope: !53, file: !7, line: 8, column: 5)
!56 = !DILocalVariable(name: "min", scope: !57, file: !7, line: 9, type: !14, align: 4)
!57 = distinct !DILexicalBlock(scope: !55, file: !7, line: 9, column: 5)
!58 = !DILocalVariable(name: "max", scope: !59, file: !7, line: 10, type: !14, align: 4)
!59 = distinct !DILexicalBlock(scope: !57, file: !7, line: 10, column: 5)
!60 = !DILocalVariable(name: "delta", scope: !61, file: !7, line: 17, type: !14, align: 4)
!61 = distinct !DILexicalBlock(scope: !59, file: !7, line: 17, column: 5)
!62 = !DILocation(line: 1, column: 19, scope: !38)
!63 = !DILocation(line: 1, column: 40, scope: !38)
!64 = !DILocation(line: 6, column: 9, scope: !51)
!65 = !DILocation(line: 7, column: 9, scope: !53)
!66 = !DILocation(line: 9, column: 9, scope: !57)
!67 = !DILocation(line: 10, column: 9, scope: !59)
!68 = !DILocation(line: 2, column: 13, scope: !38)
!69 = !DILocation(line: 2, column: 9, scope: !45)
!70 = !DILocation(line: 3, column: 13, scope: !45)
!71 = !DILocation(line: 3, column: 9, scope: !47)
!72 = !DILocation(line: 4, column: 13, scope: !47)
!73 = !DILocation(line: 4, column: 9, scope: !49)
!74 = !DILocation(line: 6, column: 22, scope: !49)
!75 = !DILocation(line: 7, column: 22, scope: !51)
!76 = !DILocation(line: 9, column: 19, scope: !55)
!77 = !DILocation(line: 10, column: 19, scope: !57)
!78 = !DILocation(line: 12, column: 14, scope: !59)
!79 = !DILocation(line: 12, column: 37, scope: !59)
!80 = !DILocation(line: 12, column: 11, scope: !59)
!81 = !DILocation(line: 12, column: 24, scope: !59)
!82 = !DILocation(line: 12, column: 5, scope: !59)
!83 = !DILocation(line: 13, column: 14, scope: !59)
!84 = !DILocation(line: 13, column: 37, scope: !59)
!85 = !DILocation(line: 13, column: 11, scope: !59)
!86 = !DILocation(line: 13, column: 24, scope: !59)
!87 = !DILocation(line: 13, column: 5, scope: !59)
!88 = !DILocation(line: 14, column: 14, scope: !59)
!89 = !DILocation(line: 14, column: 37, scope: !59)
!90 = !DILocation(line: 14, column: 11, scope: !59)
!91 = !DILocation(line: 14, column: 24, scope: !59)
!92 = !DILocation(line: 14, column: 5, scope: !59)
!93 = !DILocation(line: 15, column: 14, scope: !59)
!94 = !DILocation(line: 15, column: 37, scope: !59)
!95 = !DILocation(line: 15, column: 11, scope: !59)
!96 = !DILocation(line: 15, column: 24, scope: !59)
!97 = !DILocation(line: 15, column: 5, scope: !59)
!98 = !DILocation(line: 17, column: 17, scope: !59)
!99 = !DILocation(line: 17, column: 23, scope: !59)
!100 = !DILocation(line: 17, column: 9, scope: !61)
!101 = !DILocation(line: 18, column: 9, scope: !61)
!102 = !DILocation(line: 8, column: 9, scope: !55)
!103 = !DILocation(line: 20, column: 8, scope: !61)
!104 = !DILocation(line: 20, column: 24, scope: !61)
!105 = !{i8 0, i8 2}
!106 = !DILocation(line: 27, column: 17, scope: !61)
!107 = !DILocation(line: 27, column: 5, scope: !61)
!108 = !DILocation(line: 29, column: 13, scope: !61)
!109 = !DILocation(line: 29, column: 8, scope: !61)
!110 = !DILocation(line: 21, column: 19, scope: !61)
!111 = !DILocation(line: 21, column: 9, scope: !61)
!112 = !DILocation(line: 22, column: 19, scope: !61)
!113 = !DILocation(line: 22, column: 9, scope: !61)
!114 = !DILocation(line: 23, column: 9, scope: !61)
!115 = !DILocation(line: 45, column: 2, scope: !38)
!116 = !DILocation(line: 31, column: 20, scope: !61)
!117 = !DILocation(line: 31, column: 15, scope: !61)
!118 = !DILocation(line: 30, column: 13, scope: !61)
!119 = !DILocation(line: 30, column: 9, scope: !61)
!120 = !DILocation(line: 29, column: 5, scope: !61)
!121 = !DILocation(line: 37, column: 5, scope: !61)
!122 = !DILocation(line: 38, column: 8, scope: !61)
!123 = !DILocation(line: 34, column: 19, scope: !61)
!124 = !DILocation(line: 34, column: 9, scope: !61)
!125 = !DILocation(line: 31, column: 12, scope: !61)
!126 = !DILocation(line: 32, column: 19, scope: !61)
!127 = !DILocation(line: 32, column: 9, scope: !61)
!128 = !DILocation(line: 42, column: 15, scope: !61)
!129 = !DILocation(line: 42, column: 5, scope: !61)
!130 = !DILocation(line: 43, column: 15, scope: !61)
!131 = !DILocation(line: 43, column: 5, scope: !61)
!132 = !DILocation(line: 44, column: 5, scope: !61)
!133 = !DILocation(line: 39, column: 9, scope: !61)
!134 = !DILocation(line: 38, column: 5, scope: !61)
!135 = distinct !DISubprogram(name: "run_test_1", scope: !8, file: !7, line: 58, type: !136, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !28, retainedNodes: !139)
!136 = !DISubroutineType(types: !137)
!137 = !{!138}
!138 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!139 = !{!140, !142, !144}
!140 = !DILocalVariable(name: "dest", scope: !141, file: !7, line: 59, type: !22, align: 4)
!141 = distinct !DILexicalBlock(scope: !135, file: !7, line: 59, column: 5)
!142 = !DILocalVariable(name: "src", scope: !143, file: !7, line: 60, type: !22, align: 4)
!143 = distinct !DILexicalBlock(scope: !141, file: !7, line: 60, column: 5)
!144 = !DILocalVariable(name: "expected_dest", scope: !145, file: !7, line: 62, type: !22, align: 4)
!145 = distinct !DILexicalBlock(scope: !143, file: !7, line: 62, column: 5)
!146 = !DILocation(line: 59, column: 9, scope: !141)
!147 = !DILocation(line: 60, column: 9, scope: !143)
!148 = !DILocation(line: 62, column: 9, scope: !145)
!149 = !DILocation(line: 59, column: 30, scope: !135)
!150 = !DILocation(line: 60, column: 25, scope: !141)
!151 = !DILocalVariable(name: "self", arg: 1, scope: !152, file: !153, line: 506, type: !159)
!152 = distinct !DISubprogram(name: "as_mut_ptr<f32>", linkageName: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17hfd68a11ca263a3aeE", scope: !154, file: !153, line: 506, type: !157, scopeLine: 506, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !167, retainedNodes: !166)
!153 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/slice/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "0b3adda84e3d0ea3eafbebcfb4ca210d")
!154 = !DINamespace(name: "{impl#0}", scope: !155)
!155 = !DINamespace(name: "slice", scope: !156)
!156 = !DINamespace(name: "core", scope: null)
!157 = !DISubroutineType(types: !158)
!158 = !{!13, !159}
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "&mut [f32]", file: !160, size: 128, align: 64, elements: !161, templateParams: !28, identifier: "a9fe21d6fa3092c2cb2855c7d48c366d")
!160 = !DIFile(filename: "<unknown>", directory: "")
!161 = !{!162, !164}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !159, file: !160, baseType: !163, size: 64, align: 64)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64, dwarfAddressSpace: 0)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !159, file: !160, baseType: !165, size: 64, align: 64, offset: 64)
!165 = !DIBasicType(name: "usize", size: 64, encoding: DW_ATE_unsigned)
!166 = !{!151}
!167 = !{!168}
!168 = !DITemplateTypeParameter(name: "T", type: !14)
!169 = !DILocation(line: 506, column: 29, scope: !152, inlinedAt: !170)
!170 = distinct !DILocation(line: 61, column: 20, scope: !143)
!171 = !DILocalVariable(name: "self", arg: 1, scope: !172, file: !153, line: 476, type: !175)
!172 = distinct !DISubprogram(name: "as_ptr<f32>", linkageName: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h1efacbb321146d3cE", scope: !154, file: !153, line: 476, type: !173, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !167, retainedNodes: !179)
!173 = !DISubroutineType(types: !174)
!174 = !{!15, !175}
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "&[f32]", file: !160, size: 128, align: 64, elements: !176, templateParams: !28, identifier: "f8c75a6f6fa2cfa780c3894767ae5bdb")
!176 = !{!177, !178}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !175, file: !160, baseType: !163, size: 64, align: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !175, file: !160, baseType: !165, size: 64, align: 64, offset: 64)
!179 = !{!171}
!180 = !DILocation(line: 476, column: 25, scope: !172, inlinedAt: !181)
!181 = distinct !DILocation(line: 61, column: 39, scope: !143)
!182 = !DILocation(line: 61, column: 5, scope: !143)
!183 = !DILocation(line: 62, column: 35, scope: !143)
!184 = !DILocation(line: 63, column: 5, scope: !145)
!185 = !DILocation(line: 63, column: 36, scope: !145)
!186 = !DILocation(line: 63, column: 67, scope: !145)
!187 = !DILocation(line: 64, column: 2, scope: !135)
!188 = distinct !DISubprogram(name: "run_test_2", scope: !8, file: !7, line: 67, type: !136, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !28, retainedNodes: !189)
!189 = !{!190, !192, !194}
!190 = !DILocalVariable(name: "dest", scope: !191, file: !7, line: 68, type: !22, align: 4)
!191 = distinct !DILexicalBlock(scope: !188, file: !7, line: 68, column: 5)
!192 = !DILocalVariable(name: "src", scope: !193, file: !7, line: 69, type: !22, align: 4)
!193 = distinct !DILexicalBlock(scope: !191, file: !7, line: 69, column: 5)
!194 = !DILocalVariable(name: "expected_dest", scope: !195, file: !7, line: 71, type: !22, align: 4)
!195 = distinct !DILexicalBlock(scope: !193, file: !7, line: 71, column: 5)
!196 = !DILocation(line: 68, column: 9, scope: !191)
!197 = !DILocation(line: 69, column: 9, scope: !193)
!198 = !DILocation(line: 71, column: 9, scope: !195)
!199 = !DILocation(line: 68, column: 30, scope: !188)
!200 = !DILocation(line: 69, column: 25, scope: !191)
!201 = !DILocation(line: 506, column: 29, scope: !152, inlinedAt: !202)
!202 = distinct !DILocation(line: 70, column: 20, scope: !193)
!203 = !DILocation(line: 476, column: 25, scope: !172, inlinedAt: !204)
!204 = distinct !DILocation(line: 70, column: 39, scope: !193)
!205 = !DILocation(line: 70, column: 5, scope: !193)
!206 = !DILocation(line: 71, column: 35, scope: !193)
!207 = !DILocation(line: 72, column: 5, scope: !195)
!208 = !DILocation(line: 72, column: 36, scope: !195)
!209 = !DILocation(line: 72, column: 67, scope: !195)
!210 = !DILocation(line: 73, column: 2, scope: !188)
!211 = distinct !DISubprogram(name: "run_test_3", scope: !8, file: !7, line: 76, type: !136, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !28, retainedNodes: !212)
!212 = !{!213, !215, !217}
!213 = !DILocalVariable(name: "dest", scope: !214, file: !7, line: 77, type: !22, align: 4)
!214 = distinct !DILexicalBlock(scope: !211, file: !7, line: 77, column: 5)
!215 = !DILocalVariable(name: "src", scope: !216, file: !7, line: 78, type: !22, align: 4)
!216 = distinct !DILexicalBlock(scope: !214, file: !7, line: 78, column: 5)
!217 = !DILocalVariable(name: "expected_dest", scope: !218, file: !7, line: 80, type: !22, align: 4)
!218 = distinct !DILexicalBlock(scope: !216, file: !7, line: 80, column: 5)
!219 = !DILocation(line: 77, column: 9, scope: !214)
!220 = !DILocation(line: 78, column: 9, scope: !216)
!221 = !DILocation(line: 80, column: 9, scope: !218)
!222 = !DILocation(line: 77, column: 30, scope: !211)
!223 = !DILocation(line: 78, column: 25, scope: !214)
!224 = !DILocation(line: 506, column: 29, scope: !152, inlinedAt: !225)
!225 = distinct !DILocation(line: 79, column: 20, scope: !216)
!226 = !DILocation(line: 476, column: 25, scope: !172, inlinedAt: !227)
!227 = distinct !DILocation(line: 79, column: 39, scope: !216)
!228 = !DILocation(line: 79, column: 5, scope: !216)
!229 = !DILocation(line: 80, column: 35, scope: !216)
!230 = !DILocation(line: 81, column: 5, scope: !218)
!231 = !DILocation(line: 81, column: 36, scope: !218)
!232 = !DILocation(line: 81, column: 67, scope: !218)
!233 = !DILocation(line: 82, column: 2, scope: !211)
!234 = distinct !DISubprogram(name: "run_test_4", scope: !8, file: !7, line: 85, type: !136, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !28, retainedNodes: !235)
!235 = !{!236, !238, !240}
!236 = !DILocalVariable(name: "dest", scope: !237, file: !7, line: 86, type: !22, align: 4)
!237 = distinct !DILexicalBlock(scope: !234, file: !7, line: 86, column: 5)
!238 = !DILocalVariable(name: "src", scope: !239, file: !7, line: 87, type: !22, align: 4)
!239 = distinct !DILexicalBlock(scope: !237, file: !7, line: 87, column: 5)
!240 = !DILocalVariable(name: "expected_dest", scope: !241, file: !7, line: 89, type: !22, align: 4)
!241 = distinct !DILexicalBlock(scope: !239, file: !7, line: 89, column: 5)
!242 = !DILocation(line: 86, column: 9, scope: !237)
!243 = !DILocation(line: 87, column: 9, scope: !239)
!244 = !DILocation(line: 89, column: 9, scope: !241)
!245 = !DILocation(line: 86, column: 30, scope: !234)
!246 = !DILocation(line: 87, column: 25, scope: !237)
!247 = !DILocation(line: 506, column: 29, scope: !152, inlinedAt: !248)
!248 = distinct !DILocation(line: 88, column: 20, scope: !239)
!249 = !DILocation(line: 476, column: 25, scope: !172, inlinedAt: !250)
!250 = distinct !DILocation(line: 88, column: 39, scope: !239)
!251 = !DILocation(line: 88, column: 5, scope: !239)
!252 = !DILocation(line: 89, column: 35, scope: !239)
!253 = !DILocation(line: 90, column: 5, scope: !241)
!254 = !DILocation(line: 90, column: 36, scope: !241)
!255 = !DILocation(line: 90, column: 67, scope: !241)
!256 = !DILocation(line: 91, column: 2, scope: !234)
!257 = distinct !DISubprogram(name: "run_test_5", scope: !8, file: !7, line: 94, type: !136, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !28, retainedNodes: !258)
!258 = !{!259, !261, !263}
!259 = !DILocalVariable(name: "dest", scope: !260, file: !7, line: 95, type: !22, align: 4)
!260 = distinct !DILexicalBlock(scope: !257, file: !7, line: 95, column: 5)
!261 = !DILocalVariable(name: "src", scope: !262, file: !7, line: 96, type: !22, align: 4)
!262 = distinct !DILexicalBlock(scope: !260, file: !7, line: 96, column: 5)
!263 = !DILocalVariable(name: "expected_dest", scope: !264, file: !7, line: 98, type: !22, align: 4)
!264 = distinct !DILexicalBlock(scope: !262, file: !7, line: 98, column: 5)
!265 = !DILocation(line: 95, column: 9, scope: !260)
!266 = !DILocation(line: 96, column: 9, scope: !262)
!267 = !DILocation(line: 98, column: 9, scope: !264)
!268 = !DILocation(line: 95, column: 30, scope: !257)
!269 = !DILocation(line: 96, column: 25, scope: !260)
!270 = !DILocation(line: 506, column: 29, scope: !152, inlinedAt: !271)
!271 = distinct !DILocation(line: 97, column: 20, scope: !262)
!272 = !DILocation(line: 476, column: 25, scope: !172, inlinedAt: !273)
!273 = distinct !DILocation(line: 97, column: 39, scope: !262)
!274 = !DILocation(line: 97, column: 5, scope: !262)
!275 = !DILocation(line: 98, column: 35, scope: !262)
!276 = !DILocation(line: 99, column: 5, scope: !264)
!277 = !DILocation(line: 99, column: 36, scope: !264)
!278 = !DILocation(line: 99, column: 67, scope: !264)
!279 = !DILocation(line: 100, column: 2, scope: !257)
