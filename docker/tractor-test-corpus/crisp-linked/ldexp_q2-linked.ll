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
; ASSERT EQ: i1 1 = call i1 @run_test_31()
; ASSERT EQ: i1 1 = call i1 @run_test_32()
; ASSERT EQ: i1 1 = call i1 @run_test_33()
; ASSERT EQ: i1 1 = call i1 @run_test_34()
; ASSERT EQ: i1 1 = call i1 @run_test_35()
; ASSERT EQ: i1 1 = call i1 @run_test_36()
; ASSERT EQ: i1 1 = call i1 @run_test_37()
; ASSERT EQ: i1 1 = call i1 @run_test_38()
; ASSERT EQ: i1 1 = call i1 @run_test_39()
; ASSERT EQ: i1 1 = call i1 @run_test_40()
; ASSERT EQ: i1 1 = call i1 @run_test_41()
; ASSERT EQ: i1 1 = call i1 @run_test_42()
; ASSERT EQ: i1 1 = call i1 @run_test_43()
; ASSERT EQ: i1 1 = call i1 @run_test_44()
; ASSERT EQ: i1 1 = call i1 @run_test_45()
; ASSERT EQ: i1 1 = call i1 @run_test_46()
; ASSERT EQ: i1 1 = call i1 @run_test_47()
; ASSERT EQ: i1 1 = call i1 @run_test_48()
; ASSERT EQ: i1 1 = call i1 @run_test_49()
; ASSERT EQ: i1 1 = call i1 @run_test_50()
; ASSERT EQ: i1 1 = call i1 @run_test_51()
; ASSERT EQ: i1 1 = call i1 @run_test_52()
;; ASSERT EQ: i1 1 = call i1 @run_test_53()
; ASSERT EQ: i1 1 = call i1 @run_test_54()
; ASSERT EQ: i1 1 = call i1 @run_test_55()
; ASSERT EQ: i1 1 = call i1 @run_test_59()
; ASSERT EQ: i1 1 = call i1 @run_test_60()
; ASSERT EQ: i1 1 = call i1 @run_test_61()
; ASSERT EQ: i1 1 = call i1 @run_test_62()
; ASSERT EQ: i1 1 = call i1 @run_test_63()
; ASSERT EQ: i1 1 = call i1 @run_test_64()
; ASSERT EQ: i1 1 = call i1 @run_test_65()
; ASSERT EQ: i1 1 = call i1 @run_test_66()
; ASSERT EQ: i1 1 = call i1 @run_test_67()
; ASSERT EQ: i1 1 = call i1 @run_test_68()
; ASSERT EQ: i1 1 = call i1 @run_test_69()
; ASSERT EQ: i1 1 = call i1 @run_test_70()
; ASSERT EQ: i1 1 = call i1 @run_test_71()

@0 = private unnamed_addr constant <{ [16 x i8] }> <{ [16 x i8] c"\00\00\800\FDDW0\F3\0450\F07\180" }>, align 4
@alloc_f5ffd2fd1476bab43ad89fb40c72d0c5 = private unnamed_addr constant <{ [10 x i8] }> <{ [10 x i8] c"src/lib.rs" }>, align 1
@alloc_f93d5659e4e0c360642cef9222914b6b = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\0B\00\00\00\0E\00\00\00" }>, align 8
@alloc_0cfdb1fc9c763e2014062fd5c0eda3ba = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\0B\00\00\00-\00\00\00" }>, align 8
@str.0 = internal constant [36 x i8] c"attempt to shift right with overflow"
@alloc_c9ce41f61e20c1d5381d91b69c5733bc = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\0C\00\00\00\09\00\00\00" }>, align 8
@str.1 = internal constant [33 x i8] c"attempt to subtract with overflow"

; Function Attrs: nonlazybind uwtable
define float @ldexp_q2(float %y, i32 %exp_q2) unnamed_addr #0 !dbg !6 {
start:
  %exp_q2.dbg.spill = alloca i32, align 4
  %y.dbg.spill = alloca float, align 4
  store float %y, ptr %y.dbg.spill, align 4
    #dbg_declare(ptr %y.dbg.spill, !16, !DIExpression(), !19)
  store i32 %exp_q2, ptr %exp_q2.dbg.spill, align 4
    #dbg_declare(ptr %exp_q2.dbg.spill, !17, !DIExpression(), !20)
  %0 = call float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float %y, i32 %exp_q2), !dbg !21
  ret float %0, !dbg !22
}

; Function Attrs: nonlazybind uwtable
define internal float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float %0, i32 %1) unnamed_addr #0 !dbg !23 {
start:
  %_11 = alloca [4 x float], align 4
  %e = alloca i32, align 4
  %exp_q2 = alloca i32, align 4
  %y = alloca float, align 4
  store float %0, ptr %y, align 4
  store i32 %1, ptr %exp_q2, align 4
    #dbg_declare(ptr %y, !25, !DIExpression(), !29)
    #dbg_declare(ptr %exp_q2, !26, !DIExpression(), !30)
    #dbg_declare(ptr %e, !27, !DIExpression(), !31)
  br label %bb1, !dbg !32

bb1:                                              ; preds = %bb8, %start
  %_4 = load i32, ptr %exp_q2, align 4, !dbg !33, !noundef !18
  %_3 = icmp sgt i32 %_4, 0, !dbg !33
  br i1 %_3, label %bb2, label %bb9, !dbg !33

bb9:                                              ; preds = %bb1
  %2 = load float, ptr %y, align 4, !dbg !34, !noundef !18
  ret float %2, !dbg !35

bb2:                                              ; preds = %bb1
  %_8 = load i32, ptr %exp_q2, align 4, !dbg !36, !noundef !18
  %_6 = icmp sgt i32 120, %_8, !dbg !37
  br i1 %_6, label %bb3, label %bb4, !dbg !37

bb4:                                              ; preds = %bb2
  store i32 120, ptr %e, align 4, !dbg !38
  br label %bb5, !dbg !39

bb3:                                              ; preds = %bb2
  %3 = load i32, ptr %exp_q2, align 4, !dbg !40, !noundef !18
  store i32 %3, ptr %e, align 4, !dbg !40
  br label %bb5, !dbg !39

bb5:                                              ; preds = %bb3, %bb4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %_11, ptr align 4 @0, i64 16, i1 false), !dbg !41
  %_14 = load i32, ptr %e, align 4, !dbg !42, !noundef !18
  %_13 = and i32 %_14, 3, !dbg !43
  %_12 = sext i32 %_13 to i64, !dbg !43
  %_16 = icmp ult i64 %_12, 4, !dbg !41
  %4 = call i1 @llvm.expect.i1(i1 %_16, i1 true), !dbg !41
  br i1 %4, label %bb6, label %panic, !dbg !41

bb6:                                              ; preds = %bb5
  %5 = getelementptr inbounds [4 x float], ptr %_11, i64 0, i64 %_12, !dbg !41
  %_10 = load float, ptr %5, align 4, !dbg !41, !noundef !18
  %_21 = load i32, ptr %e, align 4, !dbg !44, !noundef !18
  %_20 = ashr i32 %_21, 2, !dbg !45
  %_23 = icmp ult i32 %_20, 32, !dbg !46
  %6 = call i1 @llvm.expect.i1(i1 %_23, i1 true), !dbg !46
  br i1 %6, label %bb7, label %panic1, !dbg !46

panic:                                            ; preds = %bb5
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %_12, i64 4, ptr align 8 @alloc_f93d5659e4e0c360642cef9222914b6b) #6, !dbg !41
  unreachable, !dbg !41

bb7:                                              ; preds = %bb6
  %7 = and i32 %_20, 31, !dbg !46
  %_18 = ashr i32 1073741824, %7, !dbg !46
  %_17 = sitofp i32 %_18 to float, !dbg !47
  %_9 = fmul float %_10, %_17, !dbg !41
  %8 = load float, ptr %y, align 4, !dbg !48, !noundef !18
  %9 = fmul float %8, %_9, !dbg !48
  store float %9, ptr %y, align 4, !dbg !48
  %_24 = load i32, ptr %e, align 4, !dbg !49, !noundef !18
  %10 = load i32, ptr %exp_q2, align 4, !dbg !50, !noundef !18
  %11 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %10, i32 %_24), !dbg !50
  %_25.0 = extractvalue { i32, i1 } %11, 0, !dbg !50
  %_25.1 = extractvalue { i32, i1 } %11, 1, !dbg !50
  %12 = call i1 @llvm.expect.i1(i1 %_25.1, i1 false), !dbg !50
  br i1 %12, label %panic2, label %bb8, !dbg !50

panic1:                                           ; preds = %bb6
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.0, i64 36, ptr align 8 @alloc_0cfdb1fc9c763e2014062fd5c0eda3ba) #6, !dbg !46
  unreachable, !dbg !46

bb8:                                              ; preds = %bb7
  store i32 %_25.0, ptr %exp_q2, align 4, !dbg !50
  br label %bb1, !dbg !32

panic2:                                           ; preds = %bb7
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.1, i64 33, ptr align 8 @alloc_c9ce41f61e20c1d5381d91b69c5733bc) #6, !dbg !50
  unreachable, !dbg !50
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.expect.i1(i1, i1) #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64, i64, ptr align 8) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #4

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1, i64, ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_1() unnamed_addr #0 !dbg !51 {
start:
  %result.dbg.spill = alloca float, align 4
  %expected_returns.dbg.spill = alloca float, align 4
  %exp_q2.dbg.spill = alloca i32, align 4
  %y.dbg.spill = alloca float, align 4
  store float 1.000000e+00, ptr %y.dbg.spill, align 4, !dbg !64
    #dbg_declare(ptr %y.dbg.spill, !56, !DIExpression(), !65)
  store i32 0, ptr %exp_q2.dbg.spill, align 4, !dbg !66
    #dbg_declare(ptr %exp_q2.dbg.spill, !58, !DIExpression(), !67)
  store float 1.000000e+00, ptr %expected_returns.dbg.spill, align 4, !dbg !68
    #dbg_declare(ptr %expected_returns.dbg.spill, !60, !DIExpression(), !69)
  %result = call float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float 1.000000e+00, i32 0), !dbg !70
  store float %result, ptr %result.dbg.spill, align 4, !dbg !70
    #dbg_declare(ptr %result.dbg.spill, !62, !DIExpression(), !71)
  %0 = fcmp oeq float %result, 1.000000e+00, !dbg !72
  ret i1 %0, !dbg !73
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_2() unnamed_addr #0 !dbg !74 {
start:
  %result.dbg.spill = alloca float, align 4
  %expected_returns.dbg.spill = alloca float, align 4
  %exp_q2.dbg.spill = alloca i32, align 4
  %y.dbg.spill = alloca float, align 4
  store float 2.500000e+00, ptr %y.dbg.spill, align 4, !dbg !84
    #dbg_declare(ptr %y.dbg.spill, !76, !DIExpression(), !85)
  store i32 -1, ptr %exp_q2.dbg.spill, align 4, !dbg !86
    #dbg_declare(ptr %exp_q2.dbg.spill, !78, !DIExpression(), !87)
  %expected_returns = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 0), !dbg !88
  store float %expected_returns, ptr %expected_returns.dbg.spill, align 4, !dbg !88
    #dbg_declare(ptr %expected_returns.dbg.spill, !80, !DIExpression(), !89)
  %result = call float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float 2.500000e+00, i32 -1), !dbg !90
  store float %result, ptr %result.dbg.spill, align 4, !dbg !90
    #dbg_declare(ptr %result.dbg.spill, !82, !DIExpression(), !91)
  %0 = fcmp oeq float %result, %expected_returns, !dbg !92
  ret i1 %0, !dbg !93
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 %v) unnamed_addr #5 !dbg !94 {
start:
  %x.dbg.spill = alloca i32, align 4
  %v.dbg.spill = alloca i32, align 4
  %_2 = alloca i32, align 4
  store i32 %v, ptr %v.dbg.spill, align 4
    #dbg_declare(ptr %v.dbg.spill, !103, !DIExpression(), !104)
  store i32 %v, ptr %_2, align 4, !dbg !105
  %x = load i32, ptr %_2, align 4, !dbg !106, !noundef !18
  store i32 %x, ptr %x.dbg.spill, align 4, !dbg !106
    #dbg_declare(ptr %x.dbg.spill, !107, !DIExpression(), !111)
  %0 = bitcast i32 %x to float, !dbg !112
  ret float %0, !dbg !113
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_3() unnamed_addr #0 !dbg !114 {
start:
  %result.dbg.spill = alloca float, align 4
  %expected_returns.dbg.spill = alloca float, align 4
  %exp_q2.dbg.spill = alloca i32, align 4
  %y.dbg.spill = alloca float, align 4
  store float 5.000000e-01, ptr %y.dbg.spill, align 4, !dbg !124
    #dbg_declare(ptr %y.dbg.spill, !116, !DIExpression(), !125)
  store i32 -10, ptr %exp_q2.dbg.spill, align 4, !dbg !126
    #dbg_declare(ptr %exp_q2.dbg.spill, !118, !DIExpression(), !127)
  store float 0x3E06A09E60000000, ptr %expected_returns.dbg.spill, align 4, !dbg !128
    #dbg_declare(ptr %expected_returns.dbg.spill, !120, !DIExpression(), !129)
  %result = call float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float 5.000000e-01, i32 -10), !dbg !130
  store float %result, ptr %result.dbg.spill, align 4, !dbg !130
    #dbg_declare(ptr %result.dbg.spill, !122, !DIExpression(), !131)
  %0 = fcmp oeq float %result, 0x3E06A09E60000000, !dbg !132
  ret i1 %0, !dbg !133
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_4() unnamed_addr #0 !dbg !134 {
start:
  %result.dbg.spill = alloca float, align 4
  %expected_returns.dbg.spill = alloca float, align 4
  %exp_q2.dbg.spill = alloca i32, align 4
  %y.dbg.spill = alloca float, align 4
  store float 0x40091EB860000000, ptr %y.dbg.spill, align 4, !dbg !144
    #dbg_declare(ptr %y.dbg.spill, !136, !DIExpression(), !145)
  store i32 -100, ptr %exp_q2.dbg.spill, align 4, !dbg !146
    #dbg_declare(ptr %exp_q2.dbg.spill, !138, !DIExpression(), !147)
  store float 0x3F991EB860000000, ptr %expected_returns.dbg.spill, align 4, !dbg !148
    #dbg_declare(ptr %expected_returns.dbg.spill, !140, !DIExpression(), !149)
  %result = call float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float 0x40091EB860000000, i32 -100), !dbg !150
  store float %result, ptr %result.dbg.spill, align 4, !dbg !150
    #dbg_declare(ptr %result.dbg.spill, !142, !DIExpression(), !151)
  %0 = fcmp oeq float %result, 0x3F991EB860000000, !dbg !152
  ret i1 %0, !dbg !153
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_5() unnamed_addr #0 !dbg !154 {
start:
  %result.dbg.spill = alloca float, align 4
  %expected_returns.dbg.spill = alloca float, align 4
  %exp_q2.dbg.spill = alloca i32, align 4
  %y.dbg.spill = alloca float, align 4
  store float -1.500000e+00, ptr %y.dbg.spill, align 4, !dbg !164
    #dbg_declare(ptr %y.dbg.spill, !156, !DIExpression(), !165)
  store i32 -50, ptr %exp_q2.dbg.spill, align 4, !dbg !166
    #dbg_declare(ptr %exp_q2.dbg.spill, !158, !DIExpression(), !167)
  store float 0xBEC0F876C0000000, ptr %expected_returns.dbg.spill, align 4, !dbg !168
    #dbg_declare(ptr %expected_returns.dbg.spill, !160, !DIExpression(), !169)
  %result = call float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float -1.500000e+00, i32 -50), !dbg !170
  store float %result, ptr %result.dbg.spill, align 4, !dbg !170
    #dbg_declare(ptr %result.dbg.spill, !162, !DIExpression(), !171)
  %0 = fcmp oeq float %result, 0xBEC0F876C0000000, !dbg !172
  ret i1 %0, !dbg !173
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_6() unnamed_addr #0 !dbg !174 {
start:
  %result.dbg.spill = alloca float, align 4, !dbg !184
  %expected_returns.dbg.spill = alloca float, align 4, !dbg !184
  %exp_q2.dbg.spill = alloca i32, align 4, !dbg !184
  %y.dbg.spill = alloca float, align 4, !dbg !184
  %y = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 1065353216), !dbg !184
  store float %y, ptr %y.dbg.spill, align 4, !dbg !184
    #dbg_declare(ptr %y.dbg.spill, !176, !DIExpression(), !185)
  store i32 1, ptr %exp_q2.dbg.spill, align 4, !dbg !186
    #dbg_declare(ptr %exp_q2.dbg.spill, !178, !DIExpression(), !187)
  %expected_returns = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 1062683901), !dbg !188
  store float %expected_returns, ptr %expected_returns.dbg.spill, align 4, !dbg !188
    #dbg_declare(ptr %expected_returns.dbg.spill, !180, !DIExpression(), !189)
  %result = call float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float %y, i32 1), !dbg !190
  store float %result, ptr %result.dbg.spill, align 4, !dbg !190
    #dbg_declare(ptr %result.dbg.spill, !182, !DIExpression(), !191)
  %0 = fcmp oeq float %result, %expected_returns, !dbg !192
  ret i1 %0, !dbg !193
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_7() unnamed_addr #0 !dbg !194 {
start:
  %result.dbg.spill = alloca float, align 4, !dbg !204
  %expected_returns.dbg.spill = alloca float, align 4, !dbg !204
  %exp_q2.dbg.spill = alloca i32, align 4, !dbg !204
  %y.dbg.spill = alloca float, align 4, !dbg !204
  %y = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 1065353216), !dbg !204
  store float %y, ptr %y.dbg.spill, align 4, !dbg !204
    #dbg_declare(ptr %y.dbg.spill, !196, !DIExpression(), !205)
  store i32 4, ptr %exp_q2.dbg.spill, align 4, !dbg !206
    #dbg_declare(ptr %exp_q2.dbg.spill, !198, !DIExpression(), !207)
  %expected_returns = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 1056964608), !dbg !208
  store float %expected_returns, ptr %expected_returns.dbg.spill, align 4, !dbg !208
    #dbg_declare(ptr %expected_returns.dbg.spill, !200, !DIExpression(), !209)
  %result = call float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float %y, i32 4), !dbg !210
  store float %result, ptr %result.dbg.spill, align 4, !dbg !210
    #dbg_declare(ptr %result.dbg.spill, !202, !DIExpression(), !211)
  %0 = fcmp oeq float %result, %expected_returns, !dbg !212
  ret i1 %0, !dbg !213
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_8() unnamed_addr #0 !dbg !214 {
start:
  %result.dbg.spill = alloca float, align 4, !dbg !224
  %expected_returns.dbg.spill = alloca float, align 4, !dbg !224
  %exp_q2.dbg.spill = alloca i32, align 4, !dbg !224
  %y.dbg.spill = alloca float, align 4, !dbg !224
  %y = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 1065353216), !dbg !224
  store float %y, ptr %y.dbg.spill, align 4, !dbg !224
    #dbg_declare(ptr %y.dbg.spill, !216, !DIExpression(), !225)
  store i32 10, ptr %exp_q2.dbg.spill, align 4, !dbg !226
    #dbg_declare(ptr %exp_q2.dbg.spill, !218, !DIExpression(), !227)
  %expected_returns = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 1043662067), !dbg !228
  store float %expected_returns, ptr %expected_returns.dbg.spill, align 4, !dbg !228
    #dbg_declare(ptr %expected_returns.dbg.spill, !220, !DIExpression(), !229)
  %result = call float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float %y, i32 10), !dbg !230
  store float %result, ptr %result.dbg.spill, align 4, !dbg !230
    #dbg_declare(ptr %result.dbg.spill, !222, !DIExpression(), !231)
  %0 = fcmp oeq float %result, %expected_returns, !dbg !232
  ret i1 %0, !dbg !233
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_9() unnamed_addr #0 !dbg !234 {
start:
  %result.dbg.spill = alloca float, align 4, !dbg !244
  %expected_returns.dbg.spill = alloca float, align 4, !dbg !244
  %exp_q2.dbg.spill = alloca i32, align 4, !dbg !244
  %y.dbg.spill = alloca float, align 4, !dbg !244
  %y = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 1065353216), !dbg !244
  store float %y, ptr %y.dbg.spill, align 4, !dbg !244
    #dbg_declare(ptr %y.dbg.spill, !236, !DIExpression(), !245)
  store i32 50, ptr %exp_q2.dbg.spill, align 4, !dbg !246
    #dbg_declare(ptr %exp_q2.dbg.spill, !238, !DIExpression(), !247)
  %expected_returns = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 959775987), !dbg !248
  store float %expected_returns, ptr %expected_returns.dbg.spill, align 4, !dbg !248
    #dbg_declare(ptr %expected_returns.dbg.spill, !240, !DIExpression(), !249)
  %result = call float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float %y, i32 50), !dbg !250
  store float %result, ptr %result.dbg.spill, align 4, !dbg !250
    #dbg_declare(ptr %result.dbg.spill, !242, !DIExpression(), !251)
  %0 = fcmp oeq float %result, %expected_returns, !dbg !252
  ret i1 %0, !dbg !253
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_10() unnamed_addr #0 !dbg !254 {
start:
  %result.dbg.spill = alloca float, align 4, !dbg !264
  %expected_returns.dbg.spill = alloca float, align 4, !dbg !264
  %exp_q2.dbg.spill = alloca i32, align 4, !dbg !264
  %y.dbg.spill = alloca float, align 4, !dbg !264
  %y = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 1065353216), !dbg !264
  store float %y, ptr %y.dbg.spill, align 4, !dbg !264
    #dbg_declare(ptr %y.dbg.spill, !256, !DIExpression(), !265)
  store i32 100, ptr %exp_q2.dbg.spill, align 4, !dbg !266
    #dbg_declare(ptr %exp_q2.dbg.spill, !258, !DIExpression(), !267)
  %expected_returns = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 855638016), !dbg !268
  store float %expected_returns, ptr %expected_returns.dbg.spill, align 4, !dbg !268
    #dbg_declare(ptr %expected_returns.dbg.spill, !260, !DIExpression(), !269)
  %result = call float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float %y, i32 100), !dbg !270
  store float %result, ptr %result.dbg.spill, align 4, !dbg !270
    #dbg_declare(ptr %result.dbg.spill, !262, !DIExpression(), !271)
  %0 = fcmp oeq float %result, %expected_returns, !dbg !272
  ret i1 %0, !dbg !273
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_11() unnamed_addr #0 !dbg !274 {
start:
  %result.dbg.spill = alloca float, align 4, !dbg !284
  %expected_returns.dbg.spill = alloca float, align 4, !dbg !284
  %exp_q2.dbg.spill = alloca i32, align 4, !dbg !284
  %y.dbg.spill = alloca float, align 4, !dbg !284
  %y = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 1065353216), !dbg !284
  store float %y, ptr %y.dbg.spill, align 4, !dbg !284
    #dbg_declare(ptr %y.dbg.spill, !276, !DIExpression(), !285)
  store i32 120, ptr %exp_q2.dbg.spill, align 4, !dbg !286
    #dbg_declare(ptr %exp_q2.dbg.spill, !278, !DIExpression(), !287)
  %expected_returns = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 813694976), !dbg !288
  store float %expected_returns, ptr %expected_returns.dbg.spill, align 4, !dbg !288
    #dbg_declare(ptr %expected_returns.dbg.spill, !280, !DIExpression(), !289)
  %result = call float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float %y, i32 120), !dbg !290
  store float %result, ptr %result.dbg.spill, align 4, !dbg !290
    #dbg_declare(ptr %result.dbg.spill, !282, !DIExpression(), !291)
  %0 = fcmp oeq float %result, %expected_returns, !dbg !292
  ret i1 %0, !dbg !293
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_12() unnamed_addr #0 !dbg !294 {
start:
  %result.dbg.spill = alloca float, align 4, !dbg !304
  %expected_returns.dbg.spill = alloca float, align 4, !dbg !304
  %exp_q2.dbg.spill = alloca i32, align 4, !dbg !304
  %y.dbg.spill = alloca float, align 4, !dbg !304
  %y = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 1073741824), !dbg !304
  store float %y, ptr %y.dbg.spill, align 4, !dbg !304
    #dbg_declare(ptr %y.dbg.spill, !296, !DIExpression(), !305)
  store i32 30, ptr %exp_q2.dbg.spill, align 4, !dbg !306
    #dbg_declare(ptr %exp_q2.dbg.spill, !298, !DIExpression(), !307)
  %expected_returns = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 1010107635), !dbg !308
  store float %expected_returns, ptr %expected_returns.dbg.spill, align 4, !dbg !308
    #dbg_declare(ptr %expected_returns.dbg.spill, !300, !DIExpression(), !309)
  %result = call float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float %y, i32 30), !dbg !310
  store float %result, ptr %result.dbg.spill, align 4, !dbg !310
    #dbg_declare(ptr %result.dbg.spill, !302, !DIExpression(), !311)
  %0 = fcmp oeq float %result, %expected_returns, !dbg !312
  ret i1 %0, !dbg !313
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_13() unnamed_addr #0 !dbg !314 {
start:
  %result.dbg.spill = alloca float, align 4, !dbg !324
  %expected_returns.dbg.spill = alloca float, align 4, !dbg !324
  %exp_q2.dbg.spill = alloca i32, align 4, !dbg !324
  %y.dbg.spill = alloca float, align 4, !dbg !324
  %y = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 1036831949), !dbg !324
  store float %y, ptr %y.dbg.spill, align 4, !dbg !324
    #dbg_declare(ptr %y.dbg.spill, !316, !DIExpression(), !325)
  store i32 60, ptr %exp_q2.dbg.spill, align 4, !dbg !326
    #dbg_declare(ptr %exp_q2.dbg.spill, !318, !DIExpression(), !327)
  %expected_returns = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 911002829), !dbg !328
  store float %expected_returns, ptr %expected_returns.dbg.spill, align 4, !dbg !328
    #dbg_declare(ptr %expected_returns.dbg.spill, !320, !DIExpression(), !329)
  %result = call float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float %y, i32 60), !dbg !330
  store float %result, ptr %result.dbg.spill, align 4, !dbg !330
    #dbg_declare(ptr %result.dbg.spill, !322, !DIExpression(), !331)
  %0 = fcmp oeq float %result, %expected_returns, !dbg !332
  ret i1 %0, !dbg !333
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_14() unnamed_addr #0 !dbg !334 {
start:
  %result.dbg.spill = alloca float, align 4, !dbg !344
  %expected_returns.dbg.spill = alloca float, align 4, !dbg !344
  %exp_q2.dbg.spill = alloca i32, align 4, !dbg !344
  %y.dbg.spill = alloca float, align 4, !dbg !344
  %y = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 -1067450368), !dbg !344
  store float %y, ptr %y.dbg.spill, align 4, !dbg !344
    #dbg_declare(ptr %y.dbg.spill, !336, !DIExpression(), !345)
  store i32 40, ptr %exp_q2.dbg.spill, align 4, !dbg !346
    #dbg_declare(ptr %exp_q2.dbg.spill, !338, !DIExpression(), !347)
  %expected_returns = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 -1151336448), !dbg !348
  store float %expected_returns, ptr %expected_returns.dbg.spill, align 4, !dbg !348
    #dbg_declare(ptr %expected_returns.dbg.spill, !340, !DIExpression(), !349)
  %result = call float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float %y, i32 40), !dbg !350
  store float %result, ptr %result.dbg.spill, align 4, !dbg !350
    #dbg_declare(ptr %result.dbg.spill, !342, !DIExpression(), !351)
  %0 = fcmp oeq float %result, %expected_returns, !dbg !352
  ret i1 %0, !dbg !353
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_15() unnamed_addr #0 !dbg !354 {
start:
  %result.dbg.spill = alloca float, align 4, !dbg !364
  %expected_returns.dbg.spill = alloca float, align 4, !dbg !364
  %exp_q2.dbg.spill = alloca i32, align 4, !dbg !364
  %y.dbg.spill = alloca float, align 4, !dbg !364
  %y = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 1148846080), !dbg !364
  store float %y, ptr %y.dbg.spill, align 4, !dbg !364
    #dbg_declare(ptr %y.dbg.spill, !356, !DIExpression(), !365)
  store i32 80, ptr %exp_q2.dbg.spill, align 4, !dbg !366
    #dbg_declare(ptr %exp_q2.dbg.spill, !358, !DIExpression(), !367)
  %expected_returns = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 981073920), !dbg !368
  store float %expected_returns, ptr %expected_returns.dbg.spill, align 4, !dbg !368
    #dbg_declare(ptr %expected_returns.dbg.spill, !360, !DIExpression(), !369)
  %result = call float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float %y, i32 80), !dbg !370
  store float %result, ptr %result.dbg.spill, align 4, !dbg !370
    #dbg_declare(ptr %result.dbg.spill, !362, !DIExpression(), !371)
  %0 = fcmp oeq float %result, %expected_returns, !dbg !372
  ret i1 %0, !dbg !373
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_16() unnamed_addr #0 !dbg !374 {
start:
  %result.dbg.spill = alloca float, align 4, !dbg !384
  %expected_returns.dbg.spill = alloca float, align 4, !dbg !384
  %exp_q2.dbg.spill = alloca i32, align 4, !dbg !384
  %y.dbg.spill = alloca float, align 4, !dbg !384
  %y = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 1065353216), !dbg !384
  store float %y, ptr %y.dbg.spill, align 4, !dbg !384
    #dbg_declare(ptr %y.dbg.spill, !376, !DIExpression(), !385)
  store i32 121, ptr %exp_q2.dbg.spill, align 4, !dbg !386
    #dbg_declare(ptr %exp_q2.dbg.spill, !378, !DIExpression(), !387)
  %expected_returns = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 811025661), !dbg !388
  store float %expected_returns, ptr %expected_returns.dbg.spill, align 4, !dbg !388
    #dbg_declare(ptr %expected_returns.dbg.spill, !380, !DIExpression(), !389)
  %result = call float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float %y, i32 121), !dbg !390
  store float %result, ptr %result.dbg.spill, align 4, !dbg !390
    #dbg_declare(ptr %result.dbg.spill, !382, !DIExpression(), !391)
  %0 = fcmp oeq float %result, %expected_returns, !dbg !392
  ret i1 %0, !dbg !393
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_17() unnamed_addr #0 !dbg !394 {
start:
  %result.dbg.spill = alloca float, align 4, !dbg !404
  %expected_returns.dbg.spill = alloca float, align 4, !dbg !404
  %exp_q2.dbg.spill = alloca i32, align 4, !dbg !404
  %y.dbg.spill = alloca float, align 4, !dbg !404
  %y = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 1065353216), !dbg !404
  store float %y, ptr %y.dbg.spill, align 4, !dbg !404
    #dbg_declare(ptr %y.dbg.spill, !396, !DIExpression(), !405)
  store i32 150, ptr %exp_q2.dbg.spill, align 4, !dbg !406
    #dbg_declare(ptr %exp_q2.dbg.spill, !398, !DIExpression(), !407)
  %expected_returns = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 750060787), !dbg !408
  store float %expected_returns, ptr %expected_returns.dbg.spill, align 4, !dbg !408
    #dbg_declare(ptr %expected_returns.dbg.spill, !400, !DIExpression(), !409)
  %result = call float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float %y, i32 150), !dbg !410
  store float %result, ptr %result.dbg.spill, align 4, !dbg !410
    #dbg_declare(ptr %result.dbg.spill, !402, !DIExpression(), !411)
  %0 = fcmp oeq float %result, %expected_returns, !dbg !412
  ret i1 %0, !dbg !413
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_18() unnamed_addr #0 !dbg !414 {
start:
  %result.dbg.spill = alloca float, align 4, !dbg !424
  %expected_returns.dbg.spill = alloca float, align 4, !dbg !424
  %exp_q2.dbg.spill = alloca i32, align 4, !dbg !424
  %y.dbg.spill = alloca float, align 4, !dbg !424
  %y = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 1065353216), !dbg !424
  store float %y, ptr %y.dbg.spill, align 4, !dbg !424
    #dbg_declare(ptr %y.dbg.spill, !416, !DIExpression(), !425)
  store i32 240, ptr %exp_q2.dbg.spill, align 4, !dbg !426
    #dbg_declare(ptr %exp_q2.dbg.spill, !418, !DIExpression(), !427)
  %expected_returns = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 562036736), !dbg !428
  store float %expected_returns, ptr %expected_returns.dbg.spill, align 4, !dbg !428
    #dbg_declare(ptr %expected_returns.dbg.spill, !420, !DIExpression(), !429)
  %result = call float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float %y, i32 240), !dbg !430
  store float %result, ptr %result.dbg.spill, align 4, !dbg !430
    #dbg_declare(ptr %result.dbg.spill, !422, !DIExpression(), !431)
  %0 = fcmp oeq float %result, %expected_returns, !dbg !432
  ret i1 %0, !dbg !433
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_19() unnamed_addr #0 !dbg !434 {
start:
  %result.dbg.spill = alloca float, align 4, !dbg !444
  %expected_returns.dbg.spill = alloca float, align 4, !dbg !444
  %exp_q2.dbg.spill = alloca i32, align 4, !dbg !444
  %y.dbg.spill = alloca float, align 4, !dbg !444
  %y = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 1065353216), !dbg !444
  store float %y, ptr %y.dbg.spill, align 4, !dbg !444
    #dbg_declare(ptr %y.dbg.spill, !436, !DIExpression(), !445)
  store i32 241, ptr %exp_q2.dbg.spill, align 4, !dbg !446
    #dbg_declare(ptr %exp_q2.dbg.spill, !438, !DIExpression(), !447)
  %expected_returns = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 559367421), !dbg !448
  store float %expected_returns, ptr %expected_returns.dbg.spill, align 4, !dbg !448
    #dbg_declare(ptr %expected_returns.dbg.spill, !440, !DIExpression(), !449)
  %result = call float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float %y, i32 241), !dbg !450
  store float %result, ptr %result.dbg.spill, align 4, !dbg !450
    #dbg_declare(ptr %result.dbg.spill, !442, !DIExpression(), !451)
  %0 = fcmp oeq float %result, %expected_returns, !dbg !452
  ret i1 %0, !dbg !453
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_20() unnamed_addr #0 !dbg !454 {
start:
  %result.dbg.spill = alloca float, align 4, !dbg !464
  %expected_returns.dbg.spill = alloca float, align 4, !dbg !464
  %exp_q2.dbg.spill = alloca i32, align 4, !dbg !464
  %y.dbg.spill = alloca float, align 4, !dbg !464
  %y = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 1065353216), !dbg !464
  store float %y, ptr %y.dbg.spill, align 4, !dbg !464
    #dbg_declare(ptr %y.dbg.spill, !456, !DIExpression(), !465)
  store i32 360, ptr %exp_q2.dbg.spill, align 4, !dbg !466
    #dbg_declare(ptr %exp_q2.dbg.spill, !458, !DIExpression(), !467)
  %expected_returns = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 310378496), !dbg !468
  store float %expected_returns, ptr %expected_returns.dbg.spill, align 4, !dbg !468
    #dbg_declare(ptr %expected_returns.dbg.spill, !460, !DIExpression(), !469)
  %result = call float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float %y, i32 360), !dbg !470
  store float %result, ptr %result.dbg.spill, align 4, !dbg !470
    #dbg_declare(ptr %result.dbg.spill, !462, !DIExpression(), !471)
  %0 = fcmp oeq float %result, %expected_returns, !dbg !472
  ret i1 %0, !dbg !473
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_21() unnamed_addr #0 !dbg !474 {
start:
  %result.dbg.spill = alloca float, align 4, !dbg !484
  %expected_returns.dbg.spill = alloca float, align 4, !dbg !484
  %exp_q2.dbg.spill = alloca i32, align 4, !dbg !484
  %y.dbg.spill = alloca float, align 4, !dbg !484
  %y = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 1065353216), !dbg !484
  store float %y, ptr %y.dbg.spill, align 4, !dbg !484
    #dbg_declare(ptr %y.dbg.spill, !476, !DIExpression(), !485)
  store i32 500, ptr %exp_q2.dbg.spill, align 4, !dbg !486
    #dbg_declare(ptr %exp_q2.dbg.spill, !478, !DIExpression(), !487)
  %expected_returns = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 16777216), !dbg !488
  store float %expected_returns, ptr %expected_returns.dbg.spill, align 4, !dbg !488
    #dbg_declare(ptr %expected_returns.dbg.spill, !480, !DIExpression(), !489)
  %result = call float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float %y, i32 500), !dbg !490
  store float %result, ptr %result.dbg.spill, align 4, !dbg !490
    #dbg_declare(ptr %result.dbg.spill, !482, !DIExpression(), !491)
  %0 = fcmp oeq float %result, %expected_returns, !dbg !492
  ret i1 %0, !dbg !493
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_22() unnamed_addr #0 !dbg !494 {
start:
  %result.dbg.spill = alloca float, align 4, !dbg !504
  %expected_returns.dbg.spill = alloca float, align 4, !dbg !504
  %exp_q2.dbg.spill = alloca i32, align 4, !dbg !504
  %y.dbg.spill = alloca float, align 4, !dbg !504
  %y = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 1065353216), !dbg !504
  store float %y, ptr %y.dbg.spill, align 4, !dbg !504
    #dbg_declare(ptr %y.dbg.spill, !496, !DIExpression(), !505)
  store i32 1000, ptr %exp_q2.dbg.spill, align 4, !dbg !506
    #dbg_declare(ptr %exp_q2.dbg.spill, !498, !DIExpression(), !507)
  store float 0.000000e+00, ptr %expected_returns.dbg.spill, align 4, !dbg !508
    #dbg_declare(ptr %expected_returns.dbg.spill, !500, !DIExpression(), !509)
  %result = call float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float %y, i32 1000), !dbg !510
  store float %result, ptr %result.dbg.spill, align 4, !dbg !510
    #dbg_declare(ptr %result.dbg.spill, !502, !DIExpression(), !511)
  %0 = fcmp oeq float %result, 0.000000e+00, !dbg !512
  ret i1 %0, !dbg !513
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_23() unnamed_addr #0 !dbg !514 {
start:
  %result.dbg.spill = alloca float, align 4, !dbg !524
  %expected_returns.dbg.spill = alloca float, align 4, !dbg !524
  %exp_q2.dbg.spill = alloca i32, align 4, !dbg !524
  %y.dbg.spill = alloca float, align 4, !dbg !524
  %y = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 1075838976), !dbg !524
  store float %y, ptr %y.dbg.spill, align 4, !dbg !524
    #dbg_declare(ptr %y.dbg.spill, !516, !DIExpression(), !525)
  store i32 300, ptr %exp_q2.dbg.spill, align 4, !dbg !526
    #dbg_declare(ptr %exp_q2.dbg.spill, !518, !DIExpression(), !527)
  %expected_returns = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 446693376), !dbg !528
  store float %expected_returns, ptr %expected_returns.dbg.spill, align 4, !dbg !528
    #dbg_declare(ptr %expected_returns.dbg.spill, !520, !DIExpression(), !529)
  %result = call float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float %y, i32 300), !dbg !530
  store float %result, ptr %result.dbg.spill, align 4, !dbg !530
    #dbg_declare(ptr %result.dbg.spill, !522, !DIExpression(), !531)
  %0 = fcmp oeq float %result, %expected_returns, !dbg !532
  ret i1 %0, !dbg !533
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_24() unnamed_addr #0 !dbg !534 {
start:
  %result.dbg.spill = alloca float, align 4, !dbg !544
  %expected_returns.dbg.spill = alloca float, align 4, !dbg !544
  %exp_q2.dbg.spill = alloca i32, align 4, !dbg !544
  %y.dbg.spill = alloca float, align 4, !dbg !544
  %y = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 1008981770), !dbg !544
  store float %y, ptr %y.dbg.spill, align 4, !dbg !544
    #dbg_declare(ptr %y.dbg.spill, !536, !DIExpression(), !545)
  store i32 600, ptr %exp_q2.dbg.spill, align 4, !dbg !546
    #dbg_declare(ptr %exp_q2.dbg.spill, !538, !DIExpression(), !547)
  store float 0.000000e+00, ptr %expected_returns.dbg.spill, align 4, !dbg !548
    #dbg_declare(ptr %expected_returns.dbg.spill, !540, !DIExpression(), !549)
  %result = call float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float %y, i32 600), !dbg !550
  store float %result, ptr %result.dbg.spill, align 4, !dbg !550
    #dbg_declare(ptr %result.dbg.spill, !542, !DIExpression(), !551)
  %0 = fcmp oeq float %result, 0.000000e+00, !dbg !552
  ret i1 %0, !dbg !553
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_25() unnamed_addr #0 !dbg !554 {
start:
  %result.dbg.spill = alloca float, align 4, !dbg !564
  %expected_returns.dbg.spill = alloca float, align 4, !dbg !564
  %exp_q2.dbg.spill = alloca i32, align 4, !dbg !564
  %y.dbg.spill = alloca float, align 4, !dbg !564
  %y = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 -1082130432), !dbg !564
  store float %y, ptr %y.dbg.spill, align 4, !dbg !564
    #dbg_declare(ptr %y.dbg.spill, !556, !DIExpression(), !565)
  store i32 480, ptr %exp_q2.dbg.spill, align 4, !dbg !566
    #dbg_declare(ptr %exp_q2.dbg.spill, !558, !DIExpression(), !567)
  %expected_returns = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 -2088763392), !dbg !568
  store float %expected_returns, ptr %expected_returns.dbg.spill, align 4, !dbg !568
    #dbg_declare(ptr %expected_returns.dbg.spill, !560, !DIExpression(), !569)
  %result = call float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float %y, i32 480), !dbg !570
  store float %result, ptr %result.dbg.spill, align 4, !dbg !570
    #dbg_declare(ptr %result.dbg.spill, !562, !DIExpression(), !571)
  %0 = fcmp oeq float %result, %expected_returns, !dbg !572
  ret i1 %0, !dbg !573
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_26() unnamed_addr #0 !dbg !574 {
start:
  %result.dbg.spill = alloca float, align 4, !dbg !584
  %expected_returns.dbg.spill = alloca float, align 4, !dbg !584
  %exp_q2.dbg.spill = alloca i32, align 4, !dbg !584
  %y.dbg.spill = alloca float, align 4, !dbg !584
  %y = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 1065353216), !dbg !584
  store float %y, ptr %y.dbg.spill, align 4, !dbg !584
    #dbg_declare(ptr %y.dbg.spill, !576, !DIExpression(), !585)
  store i32 4, ptr %exp_q2.dbg.spill, align 4, !dbg !586
    #dbg_declare(ptr %exp_q2.dbg.spill, !578, !DIExpression(), !587)
  %expected_returns = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 1056964608), !dbg !588
  store float %expected_returns, ptr %expected_returns.dbg.spill, align 4, !dbg !588
    #dbg_declare(ptr %expected_returns.dbg.spill, !580, !DIExpression(), !589)
  %result = call float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float %y, i32 4), !dbg !590
  store float %result, ptr %result.dbg.spill, align 4, !dbg !590
    #dbg_declare(ptr %result.dbg.spill, !582, !DIExpression(), !591)
  %0 = fcmp oeq float %result, %expected_returns, !dbg !592
  ret i1 %0, !dbg !593
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_27() unnamed_addr #0 !dbg !594 {
start:
  %result.dbg.spill = alloca float, align 4, !dbg !604
  %expected_returns.dbg.spill = alloca float, align 4, !dbg !604
  %exp_q2.dbg.spill = alloca i32, align 4, !dbg !604
  %y.dbg.spill = alloca float, align 4, !dbg !604
  %y = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 1065353216), !dbg !604
  store float %y, ptr %y.dbg.spill, align 4, !dbg !604
    #dbg_declare(ptr %y.dbg.spill, !596, !DIExpression(), !605)
  store i32 1, ptr %exp_q2.dbg.spill, align 4, !dbg !606
    #dbg_declare(ptr %exp_q2.dbg.spill, !598, !DIExpression(), !607)
  %expected_returns = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 1062683901), !dbg !608
  store float %expected_returns, ptr %expected_returns.dbg.spill, align 4, !dbg !608
    #dbg_declare(ptr %expected_returns.dbg.spill, !600, !DIExpression(), !609)
  %result = call float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float %y, i32 1), !dbg !610
  store float %result, ptr %result.dbg.spill, align 4, !dbg !610
    #dbg_declare(ptr %result.dbg.spill, !602, !DIExpression(), !611)
  %0 = fcmp oeq float %result, %expected_returns, !dbg !612
  ret i1 %0, !dbg !613
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_28() unnamed_addr #0 !dbg !614 {
start:
  %result.dbg.spill = alloca float, align 4, !dbg !624
  %expected_returns.dbg.spill = alloca float, align 4, !dbg !624
  %exp_q2.dbg.spill = alloca i32, align 4, !dbg !624
  %y.dbg.spill = alloca float, align 4, !dbg !624
  %y = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 1065353216), !dbg !624
  store float %y, ptr %y.dbg.spill, align 4, !dbg !624
    #dbg_declare(ptr %y.dbg.spill, !616, !DIExpression(), !625)
  store i32 2, ptr %exp_q2.dbg.spill, align 4, !dbg !626
    #dbg_declare(ptr %exp_q2.dbg.spill, !618, !DIExpression(), !627)
  %expected_returns = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 1060439283), !dbg !628
  store float %expected_returns, ptr %expected_returns.dbg.spill, align 4, !dbg !628
    #dbg_declare(ptr %expected_returns.dbg.spill, !620, !DIExpression(), !629)
  %result = call float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float %y, i32 2), !dbg !630
  store float %result, ptr %result.dbg.spill, align 4, !dbg !630
    #dbg_declare(ptr %result.dbg.spill, !622, !DIExpression(), !631)
  %0 = fcmp oeq float %result, %expected_returns, !dbg !632
  ret i1 %0, !dbg !633
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_29() unnamed_addr #0 !dbg !634 {
start:
  %result.dbg.spill = alloca float, align 4, !dbg !644
  %expected_returns.dbg.spill = alloca float, align 4, !dbg !644
  %exp_q2.dbg.spill = alloca i32, align 4, !dbg !644
  %y.dbg.spill = alloca float, align 4, !dbg !644
  %y = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 1065353216), !dbg !644
  store float %y, ptr %y.dbg.spill, align 4, !dbg !644
    #dbg_declare(ptr %y.dbg.spill, !636, !DIExpression(), !645)
  store i32 3, ptr %exp_q2.dbg.spill, align 4, !dbg !646
    #dbg_declare(ptr %exp_q2.dbg.spill, !638, !DIExpression(), !647)
  %expected_returns = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 1058551792), !dbg !648
  store float %expected_returns, ptr %expected_returns.dbg.spill, align 4, !dbg !648
    #dbg_declare(ptr %expected_returns.dbg.spill, !640, !DIExpression(), !649)
  %result = call float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float %y, i32 3), !dbg !650
  store float %result, ptr %result.dbg.spill, align 4, !dbg !650
    #dbg_declare(ptr %result.dbg.spill, !642, !DIExpression(), !651)
  %0 = fcmp oeq float %result, %expected_returns, !dbg !652
  ret i1 %0, !dbg !653
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_30() unnamed_addr #0 !dbg !654 {
start:
  %result.dbg.spill = alloca float, align 4, !dbg !664
  %expected_returns.dbg.spill = alloca float, align 4, !dbg !664
  %exp_q2.dbg.spill = alloca i32, align 4, !dbg !664
  %y.dbg.spill = alloca float, align 4, !dbg !664
  %y = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 1065353216), !dbg !664
  store float %y, ptr %y.dbg.spill, align 4, !dbg !664
    #dbg_declare(ptr %y.dbg.spill, !656, !DIExpression(), !665)
  store i32 1, ptr %exp_q2.dbg.spill, align 4, !dbg !666
    #dbg_declare(ptr %exp_q2.dbg.spill, !658, !DIExpression(), !667)
  %expected_returns = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 1062683901), !dbg !668
  store float %expected_returns, ptr %expected_returns.dbg.spill, align 4, !dbg !668
    #dbg_declare(ptr %expected_returns.dbg.spill, !660, !DIExpression(), !669)
  %result = call float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float %y, i32 1), !dbg !670
  store float %result, ptr %result.dbg.spill, align 4, !dbg !670
    #dbg_declare(ptr %result.dbg.spill, !662, !DIExpression(), !671)
  %0 = fcmp oeq float %result, %expected_returns, !dbg !672
  ret i1 %0, !dbg !673
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_31() unnamed_addr #0 !dbg !674 {
start:
  %result.dbg.spill = alloca float, align 4, !dbg !684
  %expected_returns.dbg.spill = alloca float, align 4, !dbg !684
  %exp_q2.dbg.spill = alloca i32, align 4, !dbg !684
  %y.dbg.spill = alloca float, align 4, !dbg !684
  %y = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 1065353216), !dbg !684
  store float %y, ptr %y.dbg.spill, align 4, !dbg !684
    #dbg_declare(ptr %y.dbg.spill, !676, !DIExpression(), !685)
  store i32 5, ptr %exp_q2.dbg.spill, align 4, !dbg !686
    #dbg_declare(ptr %exp_q2.dbg.spill, !678, !DIExpression(), !687)
  %expected_returns = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 1054295293), !dbg !688
  store float %expected_returns, ptr %expected_returns.dbg.spill, align 4, !dbg !688
    #dbg_declare(ptr %expected_returns.dbg.spill, !680, !DIExpression(), !689)
  %result = call float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float %y, i32 5), !dbg !690
  store float %result, ptr %result.dbg.spill, align 4, !dbg !690
    #dbg_declare(ptr %result.dbg.spill, !682, !DIExpression(), !691)
  %0 = fcmp oeq float %result, %expected_returns, !dbg !692
  ret i1 %0, !dbg !693
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_32() unnamed_addr #0 !dbg !694 {
start:
  %result.dbg.spill = alloca float, align 4, !dbg !704
  %expected_returns.dbg.spill = alloca float, align 4, !dbg !704
  %exp_q2.dbg.spill = alloca i32, align 4, !dbg !704
  %y.dbg.spill = alloca float, align 4, !dbg !704
  %y = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 1065353216), !dbg !704
  store float %y, ptr %y.dbg.spill, align 4, !dbg !704
    #dbg_declare(ptr %y.dbg.spill, !696, !DIExpression(), !705)
  store i32 9, ptr %exp_q2.dbg.spill, align 4, !dbg !706
    #dbg_declare(ptr %exp_q2.dbg.spill, !698, !DIExpression(), !707)
  %expected_returns = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 1045906685), !dbg !708
  store float %expected_returns, ptr %expected_returns.dbg.spill, align 4, !dbg !708
    #dbg_declare(ptr %expected_returns.dbg.spill, !700, !DIExpression(), !709)
  %result = call float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float %y, i32 9), !dbg !710
  store float %result, ptr %result.dbg.spill, align 4, !dbg !710
    #dbg_declare(ptr %result.dbg.spill, !702, !DIExpression(), !711)
  %0 = fcmp oeq float %result, %expected_returns, !dbg !712
  ret i1 %0, !dbg !713
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_33() unnamed_addr #0 !dbg !714 {
start:
  %result.dbg.spill = alloca float, align 4, !dbg !724
  %expected_returns.dbg.spill = alloca float, align 4, !dbg !724
  %exp_q2.dbg.spill = alloca i32, align 4, !dbg !724
  %y.dbg.spill = alloca float, align 4, !dbg !724
  %y = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 1065353216), !dbg !724
  store float %y, ptr %y.dbg.spill, align 4, !dbg !724
    #dbg_declare(ptr %y.dbg.spill, !716, !DIExpression(), !725)
  store i32 13, ptr %exp_q2.dbg.spill, align 4, !dbg !726
    #dbg_declare(ptr %exp_q2.dbg.spill, !718, !DIExpression(), !727)
  %expected_returns = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 1037518077), !dbg !728
  store float %expected_returns, ptr %expected_returns.dbg.spill, align 4, !dbg !728
    #dbg_declare(ptr %expected_returns.dbg.spill, !720, !DIExpression(), !729)
  %result = call float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float %y, i32 13), !dbg !730
  store float %result, ptr %result.dbg.spill, align 4, !dbg !730
    #dbg_declare(ptr %result.dbg.spill, !722, !DIExpression(), !731)
  %0 = fcmp oeq float %result, %expected_returns, !dbg !732
  ret i1 %0, !dbg !733
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_34() unnamed_addr #0 !dbg !734 {
start:
  %result.dbg.spill = alloca float, align 4, !dbg !744
  %expected_returns.dbg.spill = alloca float, align 4, !dbg !744
  %exp_q2.dbg.spill = alloca i32, align 4, !dbg !744
  %y.dbg.spill = alloca float, align 4, !dbg !744
  %y = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 1065353216), !dbg !744
  store float %y, ptr %y.dbg.spill, align 4, !dbg !744
    #dbg_declare(ptr %y.dbg.spill, !736, !DIExpression(), !745)
  store i32 50, ptr %exp_q2.dbg.spill, align 4, !dbg !746
    #dbg_declare(ptr %exp_q2.dbg.spill, !738, !DIExpression(), !747)
  %expected_returns = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 959775987), !dbg !748
  store float %expected_returns, ptr %expected_returns.dbg.spill, align 4, !dbg !748
    #dbg_declare(ptr %expected_returns.dbg.spill, !740, !DIExpression(), !749)
  %result = call float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float %y, i32 50), !dbg !750
  store float %result, ptr %result.dbg.spill, align 4, !dbg !750
    #dbg_declare(ptr %result.dbg.spill, !742, !DIExpression(), !751)
  %0 = fcmp oeq float %result, %expected_returns, !dbg !752
  ret i1 %0, !dbg !753
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_35() unnamed_addr #0 !dbg !754 {
start:
  %result.dbg.spill = alloca float, align 4, !dbg !764
  %expected_returns.dbg.spill = alloca float, align 4, !dbg !764
  %exp_q2.dbg.spill = alloca i32, align 4, !dbg !764
  %y.dbg.spill = alloca float, align 4, !dbg !764
  %y = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 1065353216), !dbg !764
  store float %y, ptr %y.dbg.spill, align 4, !dbg !764
    #dbg_declare(ptr %y.dbg.spill, !756, !DIExpression(), !765)
  store i32 120, ptr %exp_q2.dbg.spill, align 4, !dbg !766
    #dbg_declare(ptr %exp_q2.dbg.spill, !758, !DIExpression(), !767)
  %expected_returns = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 813694976), !dbg !768
  store float %expected_returns, ptr %expected_returns.dbg.spill, align 4, !dbg !768
    #dbg_declare(ptr %expected_returns.dbg.spill, !760, !DIExpression(), !769)
  %result = call float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float %y, i32 120), !dbg !770
  store float %result, ptr %result.dbg.spill, align 4, !dbg !770
    #dbg_declare(ptr %result.dbg.spill, !762, !DIExpression(), !771)
  %0 = fcmp oeq float %result, %expected_returns, !dbg !772
  ret i1 %0, !dbg !773
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_36() unnamed_addr #0 !dbg !774 {
start:
  %result.dbg.spill = alloca float, align 4, !dbg !784
  %expected_returns.dbg.spill = alloca float, align 4, !dbg !784
  %exp_q2.dbg.spill = alloca i32, align 4, !dbg !784
  %y.dbg.spill = alloca float, align 4, !dbg !784
  %y = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 1065353216), !dbg !784
  store float %y, ptr %y.dbg.spill, align 4, !dbg !784
    #dbg_declare(ptr %y.dbg.spill, !776, !DIExpression(), !785)
  store i32 119, ptr %exp_q2.dbg.spill, align 4, !dbg !786
    #dbg_declare(ptr %exp_q2.dbg.spill, !778, !DIExpression(), !787)
  %expected_returns = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 815282160), !dbg !788
  store float %expected_returns, ptr %expected_returns.dbg.spill, align 4, !dbg !788
    #dbg_declare(ptr %expected_returns.dbg.spill, !780, !DIExpression(), !789)
  %result = call float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float %y, i32 119), !dbg !790
  store float %result, ptr %result.dbg.spill, align 4, !dbg !790
    #dbg_declare(ptr %result.dbg.spill, !782, !DIExpression(), !791)
  %0 = fcmp oeq float %result, %expected_returns, !dbg !792
  ret i1 %0, !dbg !793
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_37() unnamed_addr #0 !dbg !794 {
start:
  %result.dbg.spill = alloca float, align 4, !dbg !804
  %expected_returns.dbg.spill = alloca float, align 4, !dbg !804
  %exp_q2.dbg.spill = alloca i32, align 4, !dbg !804
  %y.dbg.spill = alloca float, align 4, !dbg !804
  %y = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 1065353216), !dbg !804
  store float %y, ptr %y.dbg.spill, align 4, !dbg !804
    #dbg_declare(ptr %y.dbg.spill, !796, !DIExpression(), !805)
  store i32 120, ptr %exp_q2.dbg.spill, align 4, !dbg !806
    #dbg_declare(ptr %exp_q2.dbg.spill, !798, !DIExpression(), !807)
  %expected_returns = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 813694976), !dbg !808
  store float %expected_returns, ptr %expected_returns.dbg.spill, align 4, !dbg !808
    #dbg_declare(ptr %expected_returns.dbg.spill, !800, !DIExpression(), !809)
  %result = call float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float %y, i32 120), !dbg !810
  store float %result, ptr %result.dbg.spill, align 4, !dbg !810
    #dbg_declare(ptr %result.dbg.spill, !802, !DIExpression(), !811)
  %0 = fcmp oeq float %result, %expected_returns, !dbg !812
  ret i1 %0, !dbg !813
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_38() unnamed_addr #0 !dbg !814 {
start:
  %result.dbg.spill = alloca float, align 4, !dbg !824
  %expected_returns.dbg.spill = alloca float, align 4, !dbg !824
  %exp_q2.dbg.spill = alloca i32, align 4, !dbg !824
  %y.dbg.spill = alloca float, align 4, !dbg !824
  %y = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 1065353216), !dbg !824
  store float %y, ptr %y.dbg.spill, align 4, !dbg !824
    #dbg_declare(ptr %y.dbg.spill, !816, !DIExpression(), !825)
  store i32 121, ptr %exp_q2.dbg.spill, align 4, !dbg !826
    #dbg_declare(ptr %exp_q2.dbg.spill, !818, !DIExpression(), !827)
  %expected_returns = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 811025661), !dbg !828
  store float %expected_returns, ptr %expected_returns.dbg.spill, align 4, !dbg !828
    #dbg_declare(ptr %expected_returns.dbg.spill, !820, !DIExpression(), !829)
  %result = call float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float %y, i32 121), !dbg !830
  store float %result, ptr %result.dbg.spill, align 4, !dbg !830
    #dbg_declare(ptr %result.dbg.spill, !822, !DIExpression(), !831)
  %0 = fcmp oeq float %result, %expected_returns, !dbg !832
  ret i1 %0, !dbg !833
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_39() unnamed_addr #0 !dbg !834 {
start:
  %result.dbg.spill = alloca float, align 4, !dbg !844
  %expected_returns.dbg.spill = alloca float, align 4, !dbg !844
  %exp_q2.dbg.spill = alloca i32, align 4, !dbg !844
  %y.dbg.spill = alloca float, align 4, !dbg !844
  %y = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 1069547520), !dbg !844
  store float %y, ptr %y.dbg.spill, align 4, !dbg !844
    #dbg_declare(ptr %y.dbg.spill, !836, !DIExpression(), !845)
  store i32 60, ptr %exp_q2.dbg.spill, align 4, !dbg !846
    #dbg_declare(ptr %exp_q2.dbg.spill, !838, !DIExpression(), !847)
  %expected_returns = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 943718400), !dbg !848
  store float %expected_returns, ptr %expected_returns.dbg.spill, align 4, !dbg !848
    #dbg_declare(ptr %expected_returns.dbg.spill, !840, !DIExpression(), !849)
  %result = call float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float %y, i32 60), !dbg !850
  store float %result, ptr %result.dbg.spill, align 4, !dbg !850
    #dbg_declare(ptr %result.dbg.spill, !842, !DIExpression(), !851)
  %0 = fcmp oeq float %result, %expected_returns, !dbg !852
  ret i1 %0, !dbg !853
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_40() unnamed_addr #0 !dbg !854 {
start:
  %result.dbg.spill = alloca float, align 4, !dbg !864
  %expected_returns.dbg.spill = alloca float, align 4, !dbg !864
  %exp_q2.dbg.spill = alloca i32, align 4, !dbg !864
  %y.dbg.spill = alloca float, align 4, !dbg !864
  %y = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 1075838976), !dbg !864
  store float %y, ptr %y.dbg.spill, align 4, !dbg !864
    #dbg_declare(ptr %y.dbg.spill, !856, !DIExpression(), !865)
  store i32 90, ptr %exp_q2.dbg.spill, align 4, !dbg !866
    #dbg_declare(ptr %exp_q2.dbg.spill, !858, !DIExpression(), !867)
  %expected_returns = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 887244336), !dbg !868
  store float %expected_returns, ptr %expected_returns.dbg.spill, align 4, !dbg !868
    #dbg_declare(ptr %expected_returns.dbg.spill, !860, !DIExpression(), !869)
  %result = call float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float %y, i32 90), !dbg !870
  store float %result, ptr %result.dbg.spill, align 4, !dbg !870
    #dbg_declare(ptr %result.dbg.spill, !862, !DIExpression(), !871)
  %0 = fcmp oeq float %result, %expected_returns, !dbg !872
  ret i1 %0, !dbg !873
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_41() unnamed_addr #0 !dbg !874 {
start:
  %result.dbg.spill = alloca float, align 4
  %expected_returns.dbg.spill = alloca float, align 4
  %exp_q2.dbg.spill = alloca i32, align 4
  %y.dbg.spill = alloca float, align 4
  store float 0.000000e+00, ptr %y.dbg.spill, align 4, !dbg !884
    #dbg_declare(ptr %y.dbg.spill, !876, !DIExpression(), !885)
  store i32 50, ptr %exp_q2.dbg.spill, align 4, !dbg !886
    #dbg_declare(ptr %exp_q2.dbg.spill, !878, !DIExpression(), !887)
  store float 0.000000e+00, ptr %expected_returns.dbg.spill, align 4, !dbg !888
    #dbg_declare(ptr %expected_returns.dbg.spill, !880, !DIExpression(), !889)
  %result = call float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float 0.000000e+00, i32 50), !dbg !890
  store float %result, ptr %result.dbg.spill, align 4, !dbg !890
    #dbg_declare(ptr %result.dbg.spill, !882, !DIExpression(), !891)
  %0 = fcmp oeq float %result, 0.000000e+00, !dbg !892
  ret i1 %0, !dbg !893
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_42() unnamed_addr #0 !dbg !894 {
start:
  %result.dbg.spill = alloca float, align 4
  %expected_returns.dbg.spill = alloca float, align 4
  %exp_q2.dbg.spill = alloca i32, align 4
  %y.dbg.spill = alloca float, align 4
  store float 0.000000e+00, ptr %y.dbg.spill, align 4, !dbg !904
    #dbg_declare(ptr %y.dbg.spill, !896, !DIExpression(), !905)
  store i32 50, ptr %exp_q2.dbg.spill, align 4, !dbg !906
    #dbg_declare(ptr %exp_q2.dbg.spill, !898, !DIExpression(), !907)
  store float 0.000000e+00, ptr %expected_returns.dbg.spill, align 4, !dbg !908
    #dbg_declare(ptr %expected_returns.dbg.spill, !900, !DIExpression(), !909)
  %result = call float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float 0.000000e+00, i32 50), !dbg !910
  store float %result, ptr %result.dbg.spill, align 4, !dbg !910
    #dbg_declare(ptr %result.dbg.spill, !902, !DIExpression(), !911)
  %0 = fcmp oeq float %result, 0.000000e+00, !dbg !912
  ret i1 %0, !dbg !913
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_43() unnamed_addr #0 !dbg !914 {
start:
  %result.dbg.spill = alloca float, align 4, !dbg !924
  %expected_returns.dbg.spill = alloca float, align 4, !dbg !924
  %exp_q2.dbg.spill = alloca i32, align 4, !dbg !924
  %y.dbg.spill = alloca float, align 4, !dbg !924
  %y = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 1065353216), !dbg !924
  store float %y, ptr %y.dbg.spill, align 4, !dbg !924
    #dbg_declare(ptr %y.dbg.spill, !916, !DIExpression(), !925)
  store i32 50, ptr %exp_q2.dbg.spill, align 4, !dbg !926
    #dbg_declare(ptr %exp_q2.dbg.spill, !918, !DIExpression(), !927)
  %expected_returns = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 959775987), !dbg !928
  store float %expected_returns, ptr %expected_returns.dbg.spill, align 4, !dbg !928
    #dbg_declare(ptr %expected_returns.dbg.spill, !920, !DIExpression(), !929)
  %result = call float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float %y, i32 50), !dbg !930
  store float %result, ptr %result.dbg.spill, align 4, !dbg !930
    #dbg_declare(ptr %result.dbg.spill, !922, !DIExpression(), !931)
  %0 = fcmp oeq float %result, %expected_returns, !dbg !932
  ret i1 %0, !dbg !933
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_44() unnamed_addr #0 !dbg !934 {
start:
  %result.dbg.spill = alloca float, align 4, !dbg !944
  %expected_returns.dbg.spill = alloca float, align 4, !dbg !944
  %exp_q2.dbg.spill = alloca i32, align 4, !dbg !944
  %y.dbg.spill = alloca float, align 4, !dbg !944
  %y = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 -1082130432), !dbg !944
  store float %y, ptr %y.dbg.spill, align 4, !dbg !944
    #dbg_declare(ptr %y.dbg.spill, !936, !DIExpression(), !945)
  store i32 50, ptr %exp_q2.dbg.spill, align 4, !dbg !946
    #dbg_declare(ptr %exp_q2.dbg.spill, !938, !DIExpression(), !947)
  %expected_returns = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 -1187707661), !dbg !948
  store float %expected_returns, ptr %expected_returns.dbg.spill, align 4, !dbg !948
    #dbg_declare(ptr %expected_returns.dbg.spill, !940, !DIExpression(), !949)
  %result = call float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float %y, i32 50), !dbg !950
  store float %result, ptr %result.dbg.spill, align 4, !dbg !950
    #dbg_declare(ptr %result.dbg.spill, !942, !DIExpression(), !951)
  %0 = fcmp oeq float %result, %expected_returns, !dbg !952
  ret i1 %0, !dbg !953
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_45() unnamed_addr #0 !dbg !954 {
start:
  %result.dbg.spill = alloca float, align 4
  %expected_returns.dbg.spill = alloca float, align 4
  %exp_q2.dbg.spill = alloca i32, align 4
  %y.dbg.spill = alloca float, align 4
  store float 0.000000e+00, ptr %y.dbg.spill, align 4, !dbg !964
    #dbg_declare(ptr %y.dbg.spill, !956, !DIExpression(), !965)
  store i32 50, ptr %exp_q2.dbg.spill, align 4, !dbg !966
    #dbg_declare(ptr %exp_q2.dbg.spill, !958, !DIExpression(), !967)
  store float 0.000000e+00, ptr %expected_returns.dbg.spill, align 4, !dbg !968
    #dbg_declare(ptr %expected_returns.dbg.spill, !960, !DIExpression(), !969)
  %result = call float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float 0.000000e+00, i32 50), !dbg !970
  store float %result, ptr %result.dbg.spill, align 4, !dbg !970
    #dbg_declare(ptr %result.dbg.spill, !962, !DIExpression(), !971)
  %0 = fcmp oeq float %result, 0.000000e+00, !dbg !972
  ret i1 %0, !dbg !973
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_46() unnamed_addr #0 !dbg !974 {
start:
  %result.dbg.spill = alloca float, align 4
  %expected_returns.dbg.spill = alloca float, align 4
  %exp_q2.dbg.spill = alloca i32, align 4
  %y.dbg.spill = alloca float, align 4
  store float 0.000000e+00, ptr %y.dbg.spill, align 4, !dbg !984
    #dbg_declare(ptr %y.dbg.spill, !976, !DIExpression(), !985)
  store i32 50, ptr %exp_q2.dbg.spill, align 4, !dbg !986
    #dbg_declare(ptr %exp_q2.dbg.spill, !978, !DIExpression(), !987)
  store float 0.000000e+00, ptr %expected_returns.dbg.spill, align 4, !dbg !988
    #dbg_declare(ptr %expected_returns.dbg.spill, !980, !DIExpression(), !989)
  %result = call float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float 0.000000e+00, i32 50), !dbg !990
  store float %result, ptr %result.dbg.spill, align 4, !dbg !990
    #dbg_declare(ptr %result.dbg.spill, !982, !DIExpression(), !991)
  %0 = fcmp oeq float %result, 0.000000e+00, !dbg !992
  ret i1 %0, !dbg !993
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_47() unnamed_addr #0 !dbg !994 {
start:
  %result.dbg.spill = alloca float, align 4, !dbg !1004
  %expected_returns.dbg.spill = alloca float, align 4, !dbg !1004
  %exp_q2.dbg.spill = alloca i32, align 4, !dbg !1004
  %y.dbg.spill = alloca float, align 4, !dbg !1004
  %y = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 2139095039), !dbg !1004
  store float %y, ptr %y.dbg.spill, align 4, !dbg !1004
    #dbg_declare(ptr %y.dbg.spill, !996, !DIExpression(), !1005)
  store i32 10, ptr %exp_q2.dbg.spill, align 4, !dbg !1006
    #dbg_declare(ptr %exp_q2.dbg.spill, !998, !DIExpression(), !1007)
  %expected_returns = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 2117403890), !dbg !1008
  store float %expected_returns, ptr %expected_returns.dbg.spill, align 4, !dbg !1008
    #dbg_declare(ptr %expected_returns.dbg.spill, !1000, !DIExpression(), !1009)
  %result = call float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float %y, i32 10), !dbg !1010
  store float %result, ptr %result.dbg.spill, align 4, !dbg !1010
    #dbg_declare(ptr %result.dbg.spill, !1002, !DIExpression(), !1011)
  %0 = fcmp oeq float %result, %expected_returns, !dbg !1012
  ret i1 %0, !dbg !1013
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_48() unnamed_addr #0 !dbg !1014 {
start:
  %result.dbg.spill = alloca float, align 4, !dbg !1024
  %expected_returns.dbg.spill = alloca float, align 4, !dbg !1024
  %exp_q2.dbg.spill = alloca i32, align 4, !dbg !1024
  %y.dbg.spill = alloca float, align 4, !dbg !1024
  %y = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 -8388609), !dbg !1024
  store float %y, ptr %y.dbg.spill, align 4, !dbg !1024
    #dbg_declare(ptr %y.dbg.spill, !1016, !DIExpression(), !1025)
  store i32 10, ptr %exp_q2.dbg.spill, align 4, !dbg !1026
    #dbg_declare(ptr %exp_q2.dbg.spill, !1018, !DIExpression(), !1027)
  %expected_returns = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 -30079758), !dbg !1028
  store float %expected_returns, ptr %expected_returns.dbg.spill, align 4, !dbg !1028
    #dbg_declare(ptr %expected_returns.dbg.spill, !1020, !DIExpression(), !1029)
  %result = call float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float %y, i32 10), !dbg !1030
  store float %result, ptr %result.dbg.spill, align 4, !dbg !1030
    #dbg_declare(ptr %result.dbg.spill, !1022, !DIExpression(), !1031)
  %0 = fcmp oeq float %result, %expected_returns, !dbg !1032
  ret i1 %0, !dbg !1033
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_49() unnamed_addr #0 !dbg !1034 {
start:
  %result.dbg.spill = alloca float, align 4
  %expected_returns.dbg.spill = alloca float, align 4
  %exp_q2.dbg.spill = alloca i32, align 4
  %y.dbg.spill = alloca float, align 4
  store float 0.000000e+00, ptr %y.dbg.spill, align 4, !dbg !1044
    #dbg_declare(ptr %y.dbg.spill, !1036, !DIExpression(), !1045)
  store i32 100, ptr %exp_q2.dbg.spill, align 4, !dbg !1046
    #dbg_declare(ptr %exp_q2.dbg.spill, !1038, !DIExpression(), !1047)
  store float 0.000000e+00, ptr %expected_returns.dbg.spill, align 4, !dbg !1048
    #dbg_declare(ptr %expected_returns.dbg.spill, !1040, !DIExpression(), !1049)
  %result = call float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float 0.000000e+00, i32 100), !dbg !1050
  store float %result, ptr %result.dbg.spill, align 4, !dbg !1050
    #dbg_declare(ptr %result.dbg.spill, !1042, !DIExpression(), !1051)
  %0 = fcmp oeq float %result, 0.000000e+00, !dbg !1052
  ret i1 %0, !dbg !1053
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_50() unnamed_addr #0 !dbg !1054 {
start:
  %result.dbg.spill = alloca float, align 4, !dbg !1064
  %expected_returns.dbg.spill = alloca float, align 4, !dbg !1064
  %exp_q2.dbg.spill = alloca i32, align 4, !dbg !1064
  %y.dbg.spill = alloca float, align 4, !dbg !1064
  %y = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 1900671690), !dbg !1064
  store float %y, ptr %y.dbg.spill, align 4, !dbg !1064
    #dbg_declare(ptr %y.dbg.spill, !1056, !DIExpression(), !1065)
  store i32 5, ptr %exp_q2.dbg.spill, align 4, !dbg !1066
    #dbg_declare(ptr %exp_q2.dbg.spill, !1058, !DIExpression(), !1067)
  %expected_returns = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 1890177364), !dbg !1068
  store float %expected_returns, ptr %expected_returns.dbg.spill, align 4, !dbg !1068
    #dbg_declare(ptr %expected_returns.dbg.spill, !1060, !DIExpression(), !1069)
  %result = call float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float %y, i32 5), !dbg !1070
  store float %result, ptr %result.dbg.spill, align 4, !dbg !1070
    #dbg_declare(ptr %result.dbg.spill, !1062, !DIExpression(), !1071)
  %0 = fcmp oeq float %result, %expected_returns, !dbg !1072
  ret i1 %0, !dbg !1073
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_51() unnamed_addr #0 !dbg !1074 {
start:
  %result.dbg.spill = alloca float, align 4, !dbg !1084
  %expected_returns.dbg.spill = alloca float, align 4, !dbg !1084
  %exp_q2.dbg.spill = alloca i32, align 4, !dbg !1084
  %y.dbg.spill = alloca float, align 4, !dbg !1084
  %y = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 1065353216), !dbg !1084
  store float %y, ptr %y.dbg.spill, align 4, !dbg !1084
    #dbg_declare(ptr %y.dbg.spill, !1076, !DIExpression(), !1085)
  store i32 -1000, ptr %exp_q2.dbg.spill, align 4, !dbg !1086
    #dbg_declare(ptr %exp_q2.dbg.spill, !1078, !DIExpression(), !1087)
  %expected_returns = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 1015021568), !dbg !1088
  store float %expected_returns, ptr %expected_returns.dbg.spill, align 4, !dbg !1088
    #dbg_declare(ptr %expected_returns.dbg.spill, !1080, !DIExpression(), !1089)
  %result = call float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float %y, i32 -1000), !dbg !1090
  store float %result, ptr %result.dbg.spill, align 4, !dbg !1090
    #dbg_declare(ptr %result.dbg.spill, !1082, !DIExpression(), !1091)
  %0 = fcmp oeq float %result, %expected_returns, !dbg !1092
  ret i1 %0, !dbg !1093
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_52() unnamed_addr #0 !dbg !1094 {
start:
  %result.dbg.spill = alloca float, align 4, !dbg !1104
  %expected_returns.dbg.spill = alloca float, align 4, !dbg !1104
  %exp_q2.dbg.spill = alloca i32, align 4, !dbg !1104
  %y.dbg.spill = alloca float, align 4, !dbg !1104
  %y = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 1065353216), !dbg !1104
  store float %y, ptr %y.dbg.spill, align 4, !dbg !1104
    #dbg_declare(ptr %y.dbg.spill, !1096, !DIExpression(), !1105)
  store i32 -2147483647, ptr %exp_q2.dbg.spill, align 4, !dbg !1106
    #dbg_declare(ptr %exp_q2.dbg.spill, !1098, !DIExpression(), !1107)
  %expected_returns = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 1062683901), !dbg !1108
  store float %expected_returns, ptr %expected_returns.dbg.spill, align 4, !dbg !1108
    #dbg_declare(ptr %expected_returns.dbg.spill, !1100, !DIExpression(), !1109)
  %result = call float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float %y, i32 -2147483647), !dbg !1110
  store float %result, ptr %result.dbg.spill, align 4, !dbg !1110
    #dbg_declare(ptr %result.dbg.spill, !1102, !DIExpression(), !1111)
  %0 = fcmp oeq float %result, %expected_returns, !dbg !1112
  ret i1 %0, !dbg !1113
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_53() unnamed_addr #0 !dbg !1114 {
start:
  %result.dbg.spill = alloca float, align 4, !dbg !1124
  %expected_returns.dbg.spill = alloca float, align 4, !dbg !1124
  %exp_q2.dbg.spill = alloca i32, align 4, !dbg !1124
  %y.dbg.spill = alloca float, align 4, !dbg !1124
  %y = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 1065353216), !dbg !1124
  store float %y, ptr %y.dbg.spill, align 4, !dbg !1124
    #dbg_declare(ptr %y.dbg.spill, !1116, !DIExpression(), !1125)
  store i32 2147483647, ptr %exp_q2.dbg.spill, align 4, !dbg !1126
    #dbg_declare(ptr %exp_q2.dbg.spill, !1118, !DIExpression(), !1127)
  store float 0.000000e+00, ptr %expected_returns.dbg.spill, align 4, !dbg !1128
    #dbg_declare(ptr %expected_returns.dbg.spill, !1120, !DIExpression(), !1129)
  %result = call float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float %y, i32 2147483647), !dbg !1130
  store float %result, ptr %result.dbg.spill, align 4, !dbg !1130
    #dbg_declare(ptr %result.dbg.spill, !1122, !DIExpression(), !1131)
  %0 = fcmp oeq float %result, 0.000000e+00, !dbg !1132
  ret i1 %0, !dbg !1133
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_54() unnamed_addr #0 !dbg !1134 {
start:
  %result.dbg.spill = alloca float, align 4, !dbg !1144
  %expected_returns.dbg.spill = alloca float, align 4, !dbg !1144
  %exp_q2.dbg.spill = alloca i32, align 4, !dbg !1144
  %y.dbg.spill = alloca float, align 4, !dbg !1144
  %y = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 1065353216), !dbg !1144
  store float %y, ptr %y.dbg.spill, align 4, !dbg !1144
    #dbg_declare(ptr %y.dbg.spill, !1136, !DIExpression(), !1145)
  store i32 10000, ptr %exp_q2.dbg.spill, align 4, !dbg !1146
    #dbg_declare(ptr %exp_q2.dbg.spill, !1138, !DIExpression(), !1147)
  store float 0.000000e+00, ptr %expected_returns.dbg.spill, align 4, !dbg !1148
    #dbg_declare(ptr %expected_returns.dbg.spill, !1140, !DIExpression(), !1149)
  %result = call float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float %y, i32 10000), !dbg !1150
  store float %result, ptr %result.dbg.spill, align 4, !dbg !1150
    #dbg_declare(ptr %result.dbg.spill, !1142, !DIExpression(), !1151)
  %0 = fcmp oeq float %result, 0.000000e+00, !dbg !1152
  ret i1 %0, !dbg !1153
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_55() unnamed_addr #0 !dbg !1154 {
start:
  %result.dbg.spill = alloca float, align 4, !dbg !1164
  %expected_returns.dbg.spill = alloca float, align 4, !dbg !1164
  %exp_q2.dbg.spill = alloca i32, align 4, !dbg !1164
  %y.dbg.spill = alloca float, align 4, !dbg !1164
  %y = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 1065353216), !dbg !1164
  store float %y, ptr %y.dbg.spill, align 4, !dbg !1164
    #dbg_declare(ptr %y.dbg.spill, !1156, !DIExpression(), !1165)
  store i32 100000, ptr %exp_q2.dbg.spill, align 4, !dbg !1166
    #dbg_declare(ptr %exp_q2.dbg.spill, !1158, !DIExpression(), !1167)
  store float 0.000000e+00, ptr %expected_returns.dbg.spill, align 4, !dbg !1168
    #dbg_declare(ptr %expected_returns.dbg.spill, !1160, !DIExpression(), !1169)
  %result = call float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float %y, i32 100000), !dbg !1170
  store float %result, ptr %result.dbg.spill, align 4, !dbg !1170
    #dbg_declare(ptr %result.dbg.spill, !1162, !DIExpression(), !1171)
  %0 = fcmp oeq float %result, 0.000000e+00, !dbg !1172
  ret i1 %0, !dbg !1173
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_59() unnamed_addr #0 !dbg !1174 {
start:
  %result.dbg.spill = alloca float, align 4, !dbg !1184
  %expected_returns.dbg.spill = alloca float, align 4, !dbg !1184
  %exp_q2.dbg.spill = alloca i32, align 4, !dbg !1184
  %y.dbg.spill = alloca float, align 4, !dbg !1184
  %y = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 2139095039), !dbg !1184
  store float %y, ptr %y.dbg.spill, align 4, !dbg !1184
    #dbg_declare(ptr %y.dbg.spill, !1176, !DIExpression(), !1185)
  store i32 1000, ptr %exp_q2.dbg.spill, align 4, !dbg !1186
    #dbg_declare(ptr %exp_q2.dbg.spill, !1178, !DIExpression(), !1187)
  %expected_returns = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 41943039), !dbg !1188
  store float %expected_returns, ptr %expected_returns.dbg.spill, align 4, !dbg !1188
    #dbg_declare(ptr %expected_returns.dbg.spill, !1180, !DIExpression(), !1189)
  %result = call float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float %y, i32 1000), !dbg !1190
  store float %result, ptr %result.dbg.spill, align 4, !dbg !1190
    #dbg_declare(ptr %result.dbg.spill, !1182, !DIExpression(), !1191)
  %0 = fcmp oeq float %result, %expected_returns, !dbg !1192
  ret i1 %0, !dbg !1193
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_60() unnamed_addr #0 !dbg !1194 {
start:
  %result.dbg.spill = alloca float, align 4
  %expected_returns.dbg.spill = alloca float, align 4
  %exp_q2.dbg.spill = alloca i32, align 4
  %y.dbg.spill = alloca float, align 4
  store float 0.000000e+00, ptr %y.dbg.spill, align 4, !dbg !1204
    #dbg_declare(ptr %y.dbg.spill, !1196, !DIExpression(), !1205)
  store i32 1000, ptr %exp_q2.dbg.spill, align 4, !dbg !1206
    #dbg_declare(ptr %exp_q2.dbg.spill, !1198, !DIExpression(), !1207)
  store float 0.000000e+00, ptr %expected_returns.dbg.spill, align 4, !dbg !1208
    #dbg_declare(ptr %expected_returns.dbg.spill, !1200, !DIExpression(), !1209)
  %result = call float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float 0.000000e+00, i32 1000), !dbg !1210
  store float %result, ptr %result.dbg.spill, align 4, !dbg !1210
    #dbg_declare(ptr %result.dbg.spill, !1202, !DIExpression(), !1211)
  %0 = fcmp oeq float %result, 0.000000e+00, !dbg !1212
  ret i1 %0, !dbg !1213
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_61() unnamed_addr #0 !dbg !1214 {
start:
  %result.dbg.spill = alloca float, align 4
  %expected_returns.dbg.spill = alloca float, align 4
  %exp_q2.dbg.spill = alloca i32, align 4
  %y.dbg.spill = alloca float, align 4
  store float 0.000000e+00, ptr %y.dbg.spill, align 4, !dbg !1224
    #dbg_declare(ptr %y.dbg.spill, !1216, !DIExpression(), !1225)
  store i32 5000, ptr %exp_q2.dbg.spill, align 4, !dbg !1226
    #dbg_declare(ptr %exp_q2.dbg.spill, !1218, !DIExpression(), !1227)
  store float 0.000000e+00, ptr %expected_returns.dbg.spill, align 4, !dbg !1228
    #dbg_declare(ptr %expected_returns.dbg.spill, !1220, !DIExpression(), !1229)
  %result = call float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float 0.000000e+00, i32 5000), !dbg !1230
  store float %result, ptr %result.dbg.spill, align 4, !dbg !1230
    #dbg_declare(ptr %result.dbg.spill, !1222, !DIExpression(), !1231)
  %0 = fcmp oeq float %result, 0.000000e+00, !dbg !1232
  ret i1 %0, !dbg !1233
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_62() unnamed_addr #0 !dbg !1234 {
start:
  %result.dbg.spill = alloca float, align 4, !dbg !1244
  %expected_returns.dbg.spill = alloca float, align 4, !dbg !1244
  %exp_q2.dbg.spill = alloca i32, align 4, !dbg !1244
  %y.dbg.spill = alloca float, align 4, !dbg !1244
  %y = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 1065353216), !dbg !1244
  store float %y, ptr %y.dbg.spill, align 4, !dbg !1244
    #dbg_declare(ptr %y.dbg.spill, !1236, !DIExpression(), !1245)
  store i32 124, ptr %exp_q2.dbg.spill, align 4, !dbg !1246
    #dbg_declare(ptr %exp_q2.dbg.spill, !1238, !DIExpression(), !1247)
  %expected_returns = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 805306368), !dbg !1248
  store float %expected_returns, ptr %expected_returns.dbg.spill, align 4, !dbg !1248
    #dbg_declare(ptr %expected_returns.dbg.spill, !1240, !DIExpression(), !1249)
  %result = call float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float %y, i32 124), !dbg !1250
  store float %result, ptr %result.dbg.spill, align 4, !dbg !1250
    #dbg_declare(ptr %result.dbg.spill, !1242, !DIExpression(), !1251)
  %0 = fcmp oeq float %result, %expected_returns, !dbg !1252
  ret i1 %0, !dbg !1253
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_63() unnamed_addr #0 !dbg !1254 {
start:
  %result.dbg.spill = alloca float, align 4, !dbg !1264
  %expected_returns.dbg.spill = alloca float, align 4, !dbg !1264
  %exp_q2.dbg.spill = alloca i32, align 4, !dbg !1264
  %y.dbg.spill = alloca float, align 4, !dbg !1264
  %y = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 1065353216), !dbg !1264
  store float %y, ptr %y.dbg.spill, align 4, !dbg !1264
    #dbg_declare(ptr %y.dbg.spill, !1256, !DIExpression(), !1265)
  store i32 125, ptr %exp_q2.dbg.spill, align 4, !dbg !1266
    #dbg_declare(ptr %exp_q2.dbg.spill, !1258, !DIExpression(), !1267)
  %expected_returns = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 802637053), !dbg !1268
  store float %expected_returns, ptr %expected_returns.dbg.spill, align 4, !dbg !1268
    #dbg_declare(ptr %expected_returns.dbg.spill, !1260, !DIExpression(), !1269)
  %result = call float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float %y, i32 125), !dbg !1270
  store float %result, ptr %result.dbg.spill, align 4, !dbg !1270
    #dbg_declare(ptr %result.dbg.spill, !1262, !DIExpression(), !1271)
  %0 = fcmp oeq float %result, %expected_returns, !dbg !1272
  ret i1 %0, !dbg !1273
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_64() unnamed_addr #0 !dbg !1274 {
start:
  %result.dbg.spill = alloca float, align 4, !dbg !1284
  %expected_returns.dbg.spill = alloca float, align 4, !dbg !1284
  %exp_q2.dbg.spill = alloca i32, align 4, !dbg !1284
  %y.dbg.spill = alloca float, align 4, !dbg !1284
  %y = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 1065353216), !dbg !1284
  store float %y, ptr %y.dbg.spill, align 4, !dbg !1284
    #dbg_declare(ptr %y.dbg.spill, !1276, !DIExpression(), !1285)
  store i32 127, ptr %exp_q2.dbg.spill, align 4, !dbg !1286
    #dbg_declare(ptr %exp_q2.dbg.spill, !1278, !DIExpression(), !1287)
  %expected_returns = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 798504944), !dbg !1288
  store float %expected_returns, ptr %expected_returns.dbg.spill, align 4, !dbg !1288
    #dbg_declare(ptr %expected_returns.dbg.spill, !1280, !DIExpression(), !1289)
  %result = call float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float %y, i32 127), !dbg !1290
  store float %result, ptr %result.dbg.spill, align 4, !dbg !1290
    #dbg_declare(ptr %result.dbg.spill, !1282, !DIExpression(), !1291)
  %0 = fcmp oeq float %result, %expected_returns, !dbg !1292
  ret i1 %0, !dbg !1293
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_65() unnamed_addr #0 !dbg !1294 {
start:
  %result.dbg.spill = alloca float, align 4, !dbg !1304
  %expected_returns.dbg.spill = alloca float, align 4, !dbg !1304
  %exp_q2.dbg.spill = alloca i32, align 4, !dbg !1304
  %y.dbg.spill = alloca float, align 4, !dbg !1304
  %y = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 1039980160), !dbg !1304
  store float %y, ptr %y.dbg.spill, align 4, !dbg !1304
    #dbg_declare(ptr %y.dbg.spill, !1296, !DIExpression(), !1305)
  store i32 200, ptr %exp_q2.dbg.spill, align 4, !dbg !1306
    #dbg_declare(ptr %exp_q2.dbg.spill, !1298, !DIExpression(), !1307)
  %expected_returns = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 620549760), !dbg !1308
  store float %expected_returns, ptr %expected_returns.dbg.spill, align 4, !dbg !1308
    #dbg_declare(ptr %expected_returns.dbg.spill, !1300, !DIExpression(), !1309)
  %result = call float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float %y, i32 200), !dbg !1310
  store float %result, ptr %result.dbg.spill, align 4, !dbg !1310
    #dbg_declare(ptr %result.dbg.spill, !1302, !DIExpression(), !1311)
  %0 = fcmp oeq float %result, %expected_returns, !dbg !1312
  ret i1 %0, !dbg !1313
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_66() unnamed_addr #0 !dbg !1314 {
start:
  %result.dbg.spill = alloca float, align 4, !dbg !1324
  %expected_returns.dbg.spill = alloca float, align 4, !dbg !1324
  %exp_q2.dbg.spill = alloca i32, align 4, !dbg !1324
  %y.dbg.spill = alloca float, align 4, !dbg !1324
  %y = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 1078530008), !dbg !1324
  store float %y, ptr %y.dbg.spill, align 4, !dbg !1324
    #dbg_declare(ptr %y.dbg.spill, !1316, !DIExpression(), !1325)
  store i32 300, ptr %exp_q2.dbg.spill, align 4, !dbg !1326
    #dbg_declare(ptr %exp_q2.dbg.spill, !1318, !DIExpression(), !1327)
  %expected_returns = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 449384408), !dbg !1328
  store float %expected_returns, ptr %expected_returns.dbg.spill, align 4, !dbg !1328
    #dbg_declare(ptr %expected_returns.dbg.spill, !1320, !DIExpression(), !1329)
  %result = call float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float %y, i32 300), !dbg !1330
  store float %result, ptr %result.dbg.spill, align 4, !dbg !1330
    #dbg_declare(ptr %result.dbg.spill, !1322, !DIExpression(), !1331)
  %0 = fcmp oeq float %result, %expected_returns, !dbg !1332
  ret i1 %0, !dbg !1333
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_67() unnamed_addr #0 !dbg !1334 {
start:
  %result.dbg.spill = alloca float, align 4, !dbg !1344
  %expected_returns.dbg.spill = alloca float, align 4, !dbg !1344
  %exp_q2.dbg.spill = alloca i32, align 4, !dbg !1344
  %y.dbg.spill = alloca float, align 4, !dbg !1344
  %y = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 1065353216), !dbg !1344
  store float %y, ptr %y.dbg.spill, align 4, !dbg !1344
    #dbg_declare(ptr %y.dbg.spill, !1336, !DIExpression(), !1345)
  store i32 480, ptr %exp_q2.dbg.spill, align 4, !dbg !1346
    #dbg_declare(ptr %exp_q2.dbg.spill, !1338, !DIExpression(), !1347)
  %expected_returns = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 58720256), !dbg !1348
  store float %expected_returns, ptr %expected_returns.dbg.spill, align 4, !dbg !1348
    #dbg_declare(ptr %expected_returns.dbg.spill, !1340, !DIExpression(), !1349)
  %result = call float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float %y, i32 480), !dbg !1350
  store float %result, ptr %result.dbg.spill, align 4, !dbg !1350
    #dbg_declare(ptr %result.dbg.spill, !1342, !DIExpression(), !1351)
  %0 = fcmp oeq float %result, %expected_returns, !dbg !1352
  ret i1 %0, !dbg !1353
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_68() unnamed_addr #0 !dbg !1354 {
start:
  %result.dbg.spill = alloca float, align 4, !dbg !1364
  %expected_returns.dbg.spill = alloca float, align 4, !dbg !1364
  %exp_q2.dbg.spill = alloca i32, align 4, !dbg !1364
  %y.dbg.spill = alloca float, align 4, !dbg !1364
  %y = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 1073741824), !dbg !1364
  store float %y, ptr %y.dbg.spill, align 4, !dbg !1364
    #dbg_declare(ptr %y.dbg.spill, !1356, !DIExpression(), !1365)
  store i32 240, ptr %exp_q2.dbg.spill, align 4, !dbg !1366
    #dbg_declare(ptr %exp_q2.dbg.spill, !1358, !DIExpression(), !1367)
  %expected_returns = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 570425344), !dbg !1368
  store float %expected_returns, ptr %expected_returns.dbg.spill, align 4, !dbg !1368
    #dbg_declare(ptr %expected_returns.dbg.spill, !1360, !DIExpression(), !1369)
  %result = call float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float %y, i32 240), !dbg !1370
  store float %result, ptr %result.dbg.spill, align 4, !dbg !1370
    #dbg_declare(ptr %result.dbg.spill, !1362, !DIExpression(), !1371)
  %0 = fcmp oeq float %result, %expected_returns, !dbg !1372
  ret i1 %0, !dbg !1373
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_69() unnamed_addr #0 !dbg !1374 {
start:
  %result.dbg.spill = alloca float, align 4, !dbg !1384
  %expected_returns.dbg.spill = alloca float, align 4, !dbg !1384
  %exp_q2.dbg.spill = alloca i32, align 4, !dbg !1384
  %y.dbg.spill = alloca float, align 4, !dbg !1384
  %y = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 1056964608), !dbg !1384
  store float %y, ptr %y.dbg.spill, align 4, !dbg !1384
    #dbg_declare(ptr %y.dbg.spill, !1376, !DIExpression(), !1385)
  store i32 360, ptr %exp_q2.dbg.spill, align 4, !dbg !1386
    #dbg_declare(ptr %exp_q2.dbg.spill, !1378, !DIExpression(), !1387)
  %expected_returns = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 301989888), !dbg !1388
  store float %expected_returns, ptr %expected_returns.dbg.spill, align 4, !dbg !1388
    #dbg_declare(ptr %expected_returns.dbg.spill, !1380, !DIExpression(), !1389)
  %result = call float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float %y, i32 360), !dbg !1390
  store float %result, ptr %result.dbg.spill, align 4, !dbg !1390
    #dbg_declare(ptr %result.dbg.spill, !1382, !DIExpression(), !1391)
  %0 = fcmp oeq float %result, %expected_returns, !dbg !1392
  ret i1 %0, !dbg !1393
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_70() unnamed_addr #0 !dbg !1394 {
start:
  %result.dbg.spill = alloca float, align 4, !dbg !1404
  %expected_returns.dbg.spill = alloca float, align 4, !dbg !1404
  %exp_q2.dbg.spill = alloca i32, align 4, !dbg !1404
  %y.dbg.spill = alloca float, align 4, !dbg !1404
  %y = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 1065353216), !dbg !1404
  store float %y, ptr %y.dbg.spill, align 4, !dbg !1404
    #dbg_declare(ptr %y.dbg.spill, !1396, !DIExpression(), !1405)
  store i32 116, ptr %exp_q2.dbg.spill, align 4, !dbg !1406
    #dbg_declare(ptr %exp_q2.dbg.spill, !1398, !DIExpression(), !1407)
  %expected_returns = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 822083584), !dbg !1408
  store float %expected_returns, ptr %expected_returns.dbg.spill, align 4, !dbg !1408
    #dbg_declare(ptr %expected_returns.dbg.spill, !1400, !DIExpression(), !1409)
  %result = call float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float %y, i32 116), !dbg !1410
  store float %result, ptr %result.dbg.spill, align 4, !dbg !1410
    #dbg_declare(ptr %result.dbg.spill, !1402, !DIExpression(), !1411)
  %0 = fcmp oeq float %result, %expected_returns, !dbg !1412
  ret i1 %0, !dbg !1413
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_71() unnamed_addr #0 !dbg !1414 {
start:
  %result.dbg.spill = alloca float, align 4, !dbg !1424
  %expected_returns.dbg.spill = alloca float, align 4, !dbg !1424
  %exp_q2.dbg.spill = alloca i32, align 4, !dbg !1424
  %y.dbg.spill = alloca float, align 4, !dbg !1424
  %y = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 1065353216), !dbg !1424
  store float %y, ptr %y.dbg.spill, align 4, !dbg !1424
    #dbg_declare(ptr %y.dbg.spill, !1416, !DIExpression(), !1425)
  store i32 117, ptr %exp_q2.dbg.spill, align 4, !dbg !1426
    #dbg_declare(ptr %exp_q2.dbg.spill, !1418, !DIExpression(), !1427)
  %expected_returns = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E"(i32 819414269), !dbg !1428
  store float %expected_returns, ptr %expected_returns.dbg.spill, align 4, !dbg !1428
    #dbg_declare(ptr %expected_returns.dbg.spill, !1420, !DIExpression(), !1429)
  %result = call float @_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE(float %y, i32 117), !dbg !1430
  store float %result, ptr %result.dbg.spill, align 4, !dbg !1430
    #dbg_declare(ptr %result.dbg.spill, !1422, !DIExpression(), !1431)
  %0 = fcmp oeq float %result, %expected_returns, !dbg !1432
  ret i1 %0, !dbg !1433
}

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #3 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}

!0 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !1, producer: "clang LLVM (rustc version 1.70.0-nightly (84dd17b56 2023-04-14))", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!1 = !DIFile(filename: "lib.rs/@/49wehpwr9n5x5pwy", directory: "/crisp-rust-outputs/B01_organic/ldexp_q2_lib/translated_rust")
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 2, !"RtLibUseGOT", i32 1}
!4 = !{i32 2, !"Dwarf Version", i32 4}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = distinct !DISubprogram(name: "ldexp_q2_ffi", linkageName: "ldexp_q2", scope: !8, file: !7, line: 19, type: !11, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !15)
!7 = !DIFile(filename: "src/lib.rs", directory: "/crisp-rust-outputs/B01_organic/ldexp_q2_lib/translated_rust", checksumkind: CSK_MD5, checksum: "efb65c52e550da7e3b309c9aded5ce6f")
!8 = !DINamespace(name: "lib", scope: !9)
!9 = !DINamespace(name: "src", scope: !10)
!10 = !DINamespace(name: "ldexp_q2_lib", scope: null)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !13, !14}
!13 = !DIBasicType(name: "f32", size: 32, encoding: DW_ATE_float)
!14 = !DIBasicType(name: "i32", size: 32, encoding: DW_ATE_signed)
!15 = !{!16, !17}
!16 = !DILocalVariable(name: "y", arg: 1, scope: !6, file: !7, line: 19, type: !13)
!17 = !DILocalVariable(name: "exp_q2", arg: 2, scope: !6, file: !7, line: 19, type: !14)
!18 = !{}
!19 = !DILocation(line: 19, column: 32, scope: !6)
!20 = !DILocation(line: 19, column: 44, scope: !6)
!21 = !DILocation(line: 20, column: 5, scope: !6)
!22 = !DILocation(line: 21, column: 2, scope: !6)
!23 = distinct !DISubprogram(name: "ldexp_q2", linkageName: "_ZN12ldexp_q2_lib3src3lib8ldexp_q217h2a499d28926bdcfdE", scope: !8, file: !7, line: 1, type: !11, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !24)
!24 = !{!25, !26, !27}
!25 = !DILocalVariable(name: "y", arg: 1, scope: !23, file: !7, line: 1, type: !13)
!26 = !DILocalVariable(name: "exp_q2", arg: 2, scope: !23, file: !7, line: 1, type: !14)
!27 = !DILocalVariable(name: "e", scope: !28, file: !7, line: 10, type: !14, align: 4)
!28 = distinct !DILexicalBlock(scope: !23, file: !7, line: 10, column: 9)
!29 = !DILocation(line: 1, column: 28, scope: !23)
!30 = !DILocation(line: 1, column: 40, scope: !23)
!31 = !DILocation(line: 10, column: 13, scope: !28)
!32 = !DILocation(line: 9, column: 5, scope: !23)
!33 = !DILocation(line: 9, column: 11, scope: !23)
!34 = !DILocation(line: 15, column: 5, scope: !23)
!35 = !DILocation(line: 16, column: 2, scope: !23)
!36 = !DILocation(line: 10, column: 29, scope: !23)
!37 = !DILocation(line: 10, column: 20, scope: !23)
!38 = !DILocation(line: 10, column: 54, scope: !23)
!39 = !DILocation(line: 10, column: 17, scope: !23)
!40 = !DILocation(line: 10, column: 38, scope: !23)
!41 = !DILocation(line: 11, column: 14, scope: !28)
!42 = !DILocation(line: 11, column: 25, scope: !28)
!43 = !DILocation(line: 11, column: 24, scope: !28)
!44 = !DILocation(line: 11, column: 58, scope: !28)
!45 = !DILocation(line: 11, column: 57, scope: !28)
!46 = !DILocation(line: 11, column: 45, scope: !28)
!47 = !DILocation(line: 11, column: 44, scope: !28)
!48 = !DILocation(line: 11, column: 9, scope: !28)
!49 = !DILocation(line: 12, column: 19, scope: !28)
!50 = !DILocation(line: 12, column: 9, scope: !28)
!51 = distinct !DISubprogram(name: "run_test_1", scope: !8, file: !7, line: 24, type: !52, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !55)
!52 = !DISubroutineType(types: !53)
!53 = !{!54}
!54 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!55 = !{!56, !58, !60, !62}
!56 = !DILocalVariable(name: "y", scope: !57, file: !7, line: 25, type: !13, align: 4)
!57 = distinct !DILexicalBlock(scope: !51, file: !7, line: 25, column: 5)
!58 = !DILocalVariable(name: "exp_q2", scope: !59, file: !7, line: 26, type: !14, align: 4)
!59 = distinct !DILexicalBlock(scope: !57, file: !7, line: 26, column: 5)
!60 = !DILocalVariable(name: "expected_returns", scope: !61, file: !7, line: 27, type: !13, align: 4)
!61 = distinct !DILexicalBlock(scope: !59, file: !7, line: 27, column: 5)
!62 = !DILocalVariable(name: "result", scope: !63, file: !7, line: 28, type: !13, align: 4)
!63 = distinct !DILexicalBlock(scope: !61, file: !7, line: 28, column: 5)
!64 = !DILocation(line: 25, column: 18, scope: !51)
!65 = !DILocation(line: 25, column: 9, scope: !57)
!66 = !DILocation(line: 26, column: 23, scope: !57)
!67 = !DILocation(line: 26, column: 9, scope: !59)
!68 = !DILocation(line: 27, column: 33, scope: !59)
!69 = !DILocation(line: 27, column: 9, scope: !61)
!70 = !DILocation(line: 28, column: 18, scope: !61)
!71 = !DILocation(line: 28, column: 9, scope: !63)
!72 = !DILocation(line: 29, column: 5, scope: !63)
!73 = !DILocation(line: 30, column: 2, scope: !51)
!74 = distinct !DISubprogram(name: "run_test_2", scope: !8, file: !7, line: 33, type: !52, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !75)
!75 = !{!76, !78, !80, !82}
!76 = !DILocalVariable(name: "y", scope: !77, file: !7, line: 34, type: !13, align: 4)
!77 = distinct !DILexicalBlock(scope: !74, file: !7, line: 34, column: 5)
!78 = !DILocalVariable(name: "exp_q2", scope: !79, file: !7, line: 35, type: !14, align: 4)
!79 = distinct !DILexicalBlock(scope: !77, file: !7, line: 35, column: 5)
!80 = !DILocalVariable(name: "expected_returns", scope: !81, file: !7, line: 36, type: !13, align: 4)
!81 = distinct !DILexicalBlock(scope: !79, file: !7, line: 36, column: 5)
!82 = !DILocalVariable(name: "result", scope: !83, file: !7, line: 37, type: !13, align: 4)
!83 = distinct !DILexicalBlock(scope: !81, file: !7, line: 37, column: 5)
!84 = !DILocation(line: 34, column: 18, scope: !74)
!85 = !DILocation(line: 34, column: 9, scope: !77)
!86 = !DILocation(line: 35, column: 23, scope: !77)
!87 = !DILocation(line: 35, column: 9, scope: !79)
!88 = !DILocation(line: 36, column: 33, scope: !79)
!89 = !DILocation(line: 36, column: 9, scope: !81)
!90 = !DILocation(line: 37, column: 18, scope: !81)
!91 = !DILocation(line: 37, column: 9, scope: !83)
!92 = !DILocation(line: 38, column: 5, scope: !83)
!93 = !DILocation(line: 39, column: 2, scope: !74)
!94 = distinct !DISubprogram(name: "from_bits", linkageName: "_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h7eb30e711b8af9a2E", scope: !96, file: !95, line: 1088, type: !99, scopeLine: 1088, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !102)
!95 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/num/f32.rs", directory: "", checksumkind: CSK_MD5, checksum: "1164a9ceed8d542109bde0277f15bb37")
!96 = !DINamespace(name: "{impl#0}", scope: !97)
!97 = !DINamespace(name: "f32", scope: !98)
!98 = !DINamespace(name: "core", scope: null)
!99 = !DISubroutineType(types: !100)
!100 = !{!13, !101}
!101 = !DIBasicType(name: "u32", size: 32, encoding: DW_ATE_unsigned)
!102 = !{!103}
!103 = !DILocalVariable(name: "v", arg: 1, scope: !94, file: !95, line: 1088, type: !101)
!104 = !DILocation(line: 1088, column: 28, scope: !94)
!105 = !DILocation(line: 1137, column: 48, scope: !94)
!106 = !DILocation(line: 1137, column: 18, scope: !94)
!107 = !DILocalVariable(name: "x", arg: 1, scope: !108, file: !95, line: 1130, type: !101)
!108 = distinct !DISubprogram(name: "rt_u32_to_f32", linkageName: "_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits13rt_u32_to_f3217h0c6ef5d5083740aaE", scope: !109, file: !95, line: 1130, type: !99, scopeLine: 1130, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !110)
!109 = !DINamespace(name: "from_bits", scope: !96)
!110 = !{!107}
!111 = !DILocation(line: 1130, column: 26, scope: !108, inlinedAt: !106)
!112 = !DILocation(line: 1134, column: 22, scope: !108, inlinedAt: !106)
!113 = !DILocation(line: 1138, column: 6, scope: !94)
!114 = distinct !DISubprogram(name: "run_test_3", scope: !8, file: !7, line: 42, type: !52, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !115)
!115 = !{!116, !118, !120, !122}
!116 = !DILocalVariable(name: "y", scope: !117, file: !7, line: 43, type: !13, align: 4)
!117 = distinct !DILexicalBlock(scope: !114, file: !7, line: 43, column: 5)
!118 = !DILocalVariable(name: "exp_q2", scope: !119, file: !7, line: 44, type: !14, align: 4)
!119 = distinct !DILexicalBlock(scope: !117, file: !7, line: 44, column: 5)
!120 = !DILocalVariable(name: "expected_returns", scope: !121, file: !7, line: 45, type: !13, align: 4)
!121 = distinct !DILexicalBlock(scope: !119, file: !7, line: 45, column: 5)
!122 = !DILocalVariable(name: "result", scope: !123, file: !7, line: 46, type: !13, align: 4)
!123 = distinct !DILexicalBlock(scope: !121, file: !7, line: 46, column: 5)
!124 = !DILocation(line: 43, column: 18, scope: !114)
!125 = !DILocation(line: 43, column: 9, scope: !117)
!126 = !DILocation(line: 44, column: 23, scope: !117)
!127 = !DILocation(line: 44, column: 9, scope: !119)
!128 = !DILocation(line: 45, column: 33, scope: !119)
!129 = !DILocation(line: 45, column: 9, scope: !121)
!130 = !DILocation(line: 46, column: 18, scope: !121)
!131 = !DILocation(line: 46, column: 9, scope: !123)
!132 = !DILocation(line: 47, column: 5, scope: !123)
!133 = !DILocation(line: 48, column: 2, scope: !114)
!134 = distinct !DISubprogram(name: "run_test_4", scope: !8, file: !7, line: 51, type: !52, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !135)
!135 = !{!136, !138, !140, !142}
!136 = !DILocalVariable(name: "y", scope: !137, file: !7, line: 52, type: !13, align: 4)
!137 = distinct !DILexicalBlock(scope: !134, file: !7, line: 52, column: 5)
!138 = !DILocalVariable(name: "exp_q2", scope: !139, file: !7, line: 53, type: !14, align: 4)
!139 = distinct !DILexicalBlock(scope: !137, file: !7, line: 53, column: 5)
!140 = !DILocalVariable(name: "expected_returns", scope: !141, file: !7, line: 54, type: !13, align: 4)
!141 = distinct !DILexicalBlock(scope: !139, file: !7, line: 54, column: 5)
!142 = !DILocalVariable(name: "result", scope: !143, file: !7, line: 55, type: !13, align: 4)
!143 = distinct !DILexicalBlock(scope: !141, file: !7, line: 55, column: 5)
!144 = !DILocation(line: 52, column: 18, scope: !134)
!145 = !DILocation(line: 52, column: 9, scope: !137)
!146 = !DILocation(line: 53, column: 23, scope: !137)
!147 = !DILocation(line: 53, column: 9, scope: !139)
!148 = !DILocation(line: 54, column: 33, scope: !139)
!149 = !DILocation(line: 54, column: 9, scope: !141)
!150 = !DILocation(line: 55, column: 18, scope: !141)
!151 = !DILocation(line: 55, column: 9, scope: !143)
!152 = !DILocation(line: 56, column: 5, scope: !143)
!153 = !DILocation(line: 57, column: 2, scope: !134)
!154 = distinct !DISubprogram(name: "run_test_5", scope: !8, file: !7, line: 60, type: !52, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !155)
!155 = !{!156, !158, !160, !162}
!156 = !DILocalVariable(name: "y", scope: !157, file: !7, line: 61, type: !13, align: 4)
!157 = distinct !DILexicalBlock(scope: !154, file: !7, line: 61, column: 5)
!158 = !DILocalVariable(name: "exp_q2", scope: !159, file: !7, line: 62, type: !14, align: 4)
!159 = distinct !DILexicalBlock(scope: !157, file: !7, line: 62, column: 5)
!160 = !DILocalVariable(name: "expected_returns", scope: !161, file: !7, line: 63, type: !13, align: 4)
!161 = distinct !DILexicalBlock(scope: !159, file: !7, line: 63, column: 5)
!162 = !DILocalVariable(name: "result", scope: !163, file: !7, line: 64, type: !13, align: 4)
!163 = distinct !DILexicalBlock(scope: !161, file: !7, line: 64, column: 5)
!164 = !DILocation(line: 61, column: 18, scope: !154)
!165 = !DILocation(line: 61, column: 9, scope: !157)
!166 = !DILocation(line: 62, column: 23, scope: !157)
!167 = !DILocation(line: 62, column: 9, scope: !159)
!168 = !DILocation(line: 63, column: 33, scope: !159)
!169 = !DILocation(line: 63, column: 9, scope: !161)
!170 = !DILocation(line: 64, column: 18, scope: !161)
!171 = !DILocation(line: 64, column: 9, scope: !163)
!172 = !DILocation(line: 65, column: 5, scope: !163)
!173 = !DILocation(line: 66, column: 2, scope: !154)
!174 = distinct !DISubprogram(name: "run_test_6", scope: !8, file: !7, line: 70, type: !52, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !175)
!175 = !{!176, !178, !180, !182}
!176 = !DILocalVariable(name: "y", scope: !177, file: !7, line: 71, type: !13, align: 4)
!177 = distinct !DILexicalBlock(scope: !174, file: !7, line: 71, column: 5)
!178 = !DILocalVariable(name: "exp_q2", scope: !179, file: !7, line: 72, type: !14, align: 4)
!179 = distinct !DILexicalBlock(scope: !177, file: !7, line: 72, column: 5)
!180 = !DILocalVariable(name: "expected_returns", scope: !181, file: !7, line: 73, type: !13, align: 4)
!181 = distinct !DILexicalBlock(scope: !179, file: !7, line: 73, column: 5)
!182 = !DILocalVariable(name: "result", scope: !183, file: !7, line: 74, type: !13, align: 4)
!183 = distinct !DILexicalBlock(scope: !181, file: !7, line: 74, column: 5)
!184 = !DILocation(line: 71, column: 18, scope: !174)
!185 = !DILocation(line: 71, column: 9, scope: !177)
!186 = !DILocation(line: 72, column: 23, scope: !177)
!187 = !DILocation(line: 72, column: 9, scope: !179)
!188 = !DILocation(line: 73, column: 33, scope: !179)
!189 = !DILocation(line: 73, column: 9, scope: !181)
!190 = !DILocation(line: 74, column: 18, scope: !181)
!191 = !DILocation(line: 74, column: 9, scope: !183)
!192 = !DILocation(line: 75, column: 5, scope: !183)
!193 = !DILocation(line: 76, column: 2, scope: !174)
!194 = distinct !DISubprogram(name: "run_test_7", scope: !8, file: !7, line: 79, type: !52, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !195)
!195 = !{!196, !198, !200, !202}
!196 = !DILocalVariable(name: "y", scope: !197, file: !7, line: 80, type: !13, align: 4)
!197 = distinct !DILexicalBlock(scope: !194, file: !7, line: 80, column: 5)
!198 = !DILocalVariable(name: "exp_q2", scope: !199, file: !7, line: 81, type: !14, align: 4)
!199 = distinct !DILexicalBlock(scope: !197, file: !7, line: 81, column: 5)
!200 = !DILocalVariable(name: "expected_returns", scope: !201, file: !7, line: 82, type: !13, align: 4)
!201 = distinct !DILexicalBlock(scope: !199, file: !7, line: 82, column: 5)
!202 = !DILocalVariable(name: "result", scope: !203, file: !7, line: 83, type: !13, align: 4)
!203 = distinct !DILexicalBlock(scope: !201, file: !7, line: 83, column: 5)
!204 = !DILocation(line: 80, column: 18, scope: !194)
!205 = !DILocation(line: 80, column: 9, scope: !197)
!206 = !DILocation(line: 81, column: 23, scope: !197)
!207 = !DILocation(line: 81, column: 9, scope: !199)
!208 = !DILocation(line: 82, column: 33, scope: !199)
!209 = !DILocation(line: 82, column: 9, scope: !201)
!210 = !DILocation(line: 83, column: 18, scope: !201)
!211 = !DILocation(line: 83, column: 9, scope: !203)
!212 = !DILocation(line: 84, column: 5, scope: !203)
!213 = !DILocation(line: 85, column: 2, scope: !194)
!214 = distinct !DISubprogram(name: "run_test_8", scope: !8, file: !7, line: 88, type: !52, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !215)
!215 = !{!216, !218, !220, !222}
!216 = !DILocalVariable(name: "y", scope: !217, file: !7, line: 89, type: !13, align: 4)
!217 = distinct !DILexicalBlock(scope: !214, file: !7, line: 89, column: 5)
!218 = !DILocalVariable(name: "exp_q2", scope: !219, file: !7, line: 90, type: !14, align: 4)
!219 = distinct !DILexicalBlock(scope: !217, file: !7, line: 90, column: 5)
!220 = !DILocalVariable(name: "expected_returns", scope: !221, file: !7, line: 91, type: !13, align: 4)
!221 = distinct !DILexicalBlock(scope: !219, file: !7, line: 91, column: 5)
!222 = !DILocalVariable(name: "result", scope: !223, file: !7, line: 92, type: !13, align: 4)
!223 = distinct !DILexicalBlock(scope: !221, file: !7, line: 92, column: 5)
!224 = !DILocation(line: 89, column: 18, scope: !214)
!225 = !DILocation(line: 89, column: 9, scope: !217)
!226 = !DILocation(line: 90, column: 23, scope: !217)
!227 = !DILocation(line: 90, column: 9, scope: !219)
!228 = !DILocation(line: 91, column: 33, scope: !219)
!229 = !DILocation(line: 91, column: 9, scope: !221)
!230 = !DILocation(line: 92, column: 18, scope: !221)
!231 = !DILocation(line: 92, column: 9, scope: !223)
!232 = !DILocation(line: 93, column: 5, scope: !223)
!233 = !DILocation(line: 94, column: 2, scope: !214)
!234 = distinct !DISubprogram(name: "run_test_9", scope: !8, file: !7, line: 97, type: !52, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !235)
!235 = !{!236, !238, !240, !242}
!236 = !DILocalVariable(name: "y", scope: !237, file: !7, line: 98, type: !13, align: 4)
!237 = distinct !DILexicalBlock(scope: !234, file: !7, line: 98, column: 5)
!238 = !DILocalVariable(name: "exp_q2", scope: !239, file: !7, line: 99, type: !14, align: 4)
!239 = distinct !DILexicalBlock(scope: !237, file: !7, line: 99, column: 5)
!240 = !DILocalVariable(name: "expected_returns", scope: !241, file: !7, line: 100, type: !13, align: 4)
!241 = distinct !DILexicalBlock(scope: !239, file: !7, line: 100, column: 5)
!242 = !DILocalVariable(name: "result", scope: !243, file: !7, line: 101, type: !13, align: 4)
!243 = distinct !DILexicalBlock(scope: !241, file: !7, line: 101, column: 5)
!244 = !DILocation(line: 98, column: 18, scope: !234)
!245 = !DILocation(line: 98, column: 9, scope: !237)
!246 = !DILocation(line: 99, column: 23, scope: !237)
!247 = !DILocation(line: 99, column: 9, scope: !239)
!248 = !DILocation(line: 100, column: 33, scope: !239)
!249 = !DILocation(line: 100, column: 9, scope: !241)
!250 = !DILocation(line: 101, column: 18, scope: !241)
!251 = !DILocation(line: 101, column: 9, scope: !243)
!252 = !DILocation(line: 102, column: 5, scope: !243)
!253 = !DILocation(line: 103, column: 2, scope: !234)
!254 = distinct !DISubprogram(name: "run_test_10", scope: !8, file: !7, line: 106, type: !52, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !255)
!255 = !{!256, !258, !260, !262}
!256 = !DILocalVariable(name: "y", scope: !257, file: !7, line: 107, type: !13, align: 4)
!257 = distinct !DILexicalBlock(scope: !254, file: !7, line: 107, column: 5)
!258 = !DILocalVariable(name: "exp_q2", scope: !259, file: !7, line: 108, type: !14, align: 4)
!259 = distinct !DILexicalBlock(scope: !257, file: !7, line: 108, column: 5)
!260 = !DILocalVariable(name: "expected_returns", scope: !261, file: !7, line: 109, type: !13, align: 4)
!261 = distinct !DILexicalBlock(scope: !259, file: !7, line: 109, column: 5)
!262 = !DILocalVariable(name: "result", scope: !263, file: !7, line: 110, type: !13, align: 4)
!263 = distinct !DILexicalBlock(scope: !261, file: !7, line: 110, column: 5)
!264 = !DILocation(line: 107, column: 18, scope: !254)
!265 = !DILocation(line: 107, column: 9, scope: !257)
!266 = !DILocation(line: 108, column: 23, scope: !257)
!267 = !DILocation(line: 108, column: 9, scope: !259)
!268 = !DILocation(line: 109, column: 33, scope: !259)
!269 = !DILocation(line: 109, column: 9, scope: !261)
!270 = !DILocation(line: 110, column: 18, scope: !261)
!271 = !DILocation(line: 110, column: 9, scope: !263)
!272 = !DILocation(line: 111, column: 5, scope: !263)
!273 = !DILocation(line: 112, column: 2, scope: !254)
!274 = distinct !DISubprogram(name: "run_test_11", scope: !8, file: !7, line: 115, type: !52, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !275)
!275 = !{!276, !278, !280, !282}
!276 = !DILocalVariable(name: "y", scope: !277, file: !7, line: 116, type: !13, align: 4)
!277 = distinct !DILexicalBlock(scope: !274, file: !7, line: 116, column: 5)
!278 = !DILocalVariable(name: "exp_q2", scope: !279, file: !7, line: 117, type: !14, align: 4)
!279 = distinct !DILexicalBlock(scope: !277, file: !7, line: 117, column: 5)
!280 = !DILocalVariable(name: "expected_returns", scope: !281, file: !7, line: 118, type: !13, align: 4)
!281 = distinct !DILexicalBlock(scope: !279, file: !7, line: 118, column: 5)
!282 = !DILocalVariable(name: "result", scope: !283, file: !7, line: 119, type: !13, align: 4)
!283 = distinct !DILexicalBlock(scope: !281, file: !7, line: 119, column: 5)
!284 = !DILocation(line: 116, column: 18, scope: !274)
!285 = !DILocation(line: 116, column: 9, scope: !277)
!286 = !DILocation(line: 117, column: 23, scope: !277)
!287 = !DILocation(line: 117, column: 9, scope: !279)
!288 = !DILocation(line: 118, column: 33, scope: !279)
!289 = !DILocation(line: 118, column: 9, scope: !281)
!290 = !DILocation(line: 119, column: 18, scope: !281)
!291 = !DILocation(line: 119, column: 9, scope: !283)
!292 = !DILocation(line: 120, column: 5, scope: !283)
!293 = !DILocation(line: 121, column: 2, scope: !274)
!294 = distinct !DISubprogram(name: "run_test_12", scope: !8, file: !7, line: 124, type: !52, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !295)
!295 = !{!296, !298, !300, !302}
!296 = !DILocalVariable(name: "y", scope: !297, file: !7, line: 125, type: !13, align: 4)
!297 = distinct !DILexicalBlock(scope: !294, file: !7, line: 125, column: 5)
!298 = !DILocalVariable(name: "exp_q2", scope: !299, file: !7, line: 126, type: !14, align: 4)
!299 = distinct !DILexicalBlock(scope: !297, file: !7, line: 126, column: 5)
!300 = !DILocalVariable(name: "expected_returns", scope: !301, file: !7, line: 127, type: !13, align: 4)
!301 = distinct !DILexicalBlock(scope: !299, file: !7, line: 127, column: 5)
!302 = !DILocalVariable(name: "result", scope: !303, file: !7, line: 128, type: !13, align: 4)
!303 = distinct !DILexicalBlock(scope: !301, file: !7, line: 128, column: 5)
!304 = !DILocation(line: 125, column: 18, scope: !294)
!305 = !DILocation(line: 125, column: 9, scope: !297)
!306 = !DILocation(line: 126, column: 23, scope: !297)
!307 = !DILocation(line: 126, column: 9, scope: !299)
!308 = !DILocation(line: 127, column: 33, scope: !299)
!309 = !DILocation(line: 127, column: 9, scope: !301)
!310 = !DILocation(line: 128, column: 18, scope: !301)
!311 = !DILocation(line: 128, column: 9, scope: !303)
!312 = !DILocation(line: 129, column: 5, scope: !303)
!313 = !DILocation(line: 130, column: 2, scope: !294)
!314 = distinct !DISubprogram(name: "run_test_13", scope: !8, file: !7, line: 133, type: !52, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !315)
!315 = !{!316, !318, !320, !322}
!316 = !DILocalVariable(name: "y", scope: !317, file: !7, line: 134, type: !13, align: 4)
!317 = distinct !DILexicalBlock(scope: !314, file: !7, line: 134, column: 5)
!318 = !DILocalVariable(name: "exp_q2", scope: !319, file: !7, line: 135, type: !14, align: 4)
!319 = distinct !DILexicalBlock(scope: !317, file: !7, line: 135, column: 5)
!320 = !DILocalVariable(name: "expected_returns", scope: !321, file: !7, line: 136, type: !13, align: 4)
!321 = distinct !DILexicalBlock(scope: !319, file: !7, line: 136, column: 5)
!322 = !DILocalVariable(name: "result", scope: !323, file: !7, line: 137, type: !13, align: 4)
!323 = distinct !DILexicalBlock(scope: !321, file: !7, line: 137, column: 5)
!324 = !DILocation(line: 134, column: 18, scope: !314)
!325 = !DILocation(line: 134, column: 9, scope: !317)
!326 = !DILocation(line: 135, column: 23, scope: !317)
!327 = !DILocation(line: 135, column: 9, scope: !319)
!328 = !DILocation(line: 136, column: 33, scope: !319)
!329 = !DILocation(line: 136, column: 9, scope: !321)
!330 = !DILocation(line: 137, column: 18, scope: !321)
!331 = !DILocation(line: 137, column: 9, scope: !323)
!332 = !DILocation(line: 138, column: 5, scope: !323)
!333 = !DILocation(line: 139, column: 2, scope: !314)
!334 = distinct !DISubprogram(name: "run_test_14", scope: !8, file: !7, line: 142, type: !52, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !335)
!335 = !{!336, !338, !340, !342}
!336 = !DILocalVariable(name: "y", scope: !337, file: !7, line: 143, type: !13, align: 4)
!337 = distinct !DILexicalBlock(scope: !334, file: !7, line: 143, column: 5)
!338 = !DILocalVariable(name: "exp_q2", scope: !339, file: !7, line: 144, type: !14, align: 4)
!339 = distinct !DILexicalBlock(scope: !337, file: !7, line: 144, column: 5)
!340 = !DILocalVariable(name: "expected_returns", scope: !341, file: !7, line: 145, type: !13, align: 4)
!341 = distinct !DILexicalBlock(scope: !339, file: !7, line: 145, column: 5)
!342 = !DILocalVariable(name: "result", scope: !343, file: !7, line: 146, type: !13, align: 4)
!343 = distinct !DILexicalBlock(scope: !341, file: !7, line: 146, column: 5)
!344 = !DILocation(line: 143, column: 18, scope: !334)
!345 = !DILocation(line: 143, column: 9, scope: !337)
!346 = !DILocation(line: 144, column: 23, scope: !337)
!347 = !DILocation(line: 144, column: 9, scope: !339)
!348 = !DILocation(line: 145, column: 33, scope: !339)
!349 = !DILocation(line: 145, column: 9, scope: !341)
!350 = !DILocation(line: 146, column: 18, scope: !341)
!351 = !DILocation(line: 146, column: 9, scope: !343)
!352 = !DILocation(line: 147, column: 5, scope: !343)
!353 = !DILocation(line: 148, column: 2, scope: !334)
!354 = distinct !DISubprogram(name: "run_test_15", scope: !8, file: !7, line: 151, type: !52, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !355)
!355 = !{!356, !358, !360, !362}
!356 = !DILocalVariable(name: "y", scope: !357, file: !7, line: 152, type: !13, align: 4)
!357 = distinct !DILexicalBlock(scope: !354, file: !7, line: 152, column: 5)
!358 = !DILocalVariable(name: "exp_q2", scope: !359, file: !7, line: 153, type: !14, align: 4)
!359 = distinct !DILexicalBlock(scope: !357, file: !7, line: 153, column: 5)
!360 = !DILocalVariable(name: "expected_returns", scope: !361, file: !7, line: 154, type: !13, align: 4)
!361 = distinct !DILexicalBlock(scope: !359, file: !7, line: 154, column: 5)
!362 = !DILocalVariable(name: "result", scope: !363, file: !7, line: 155, type: !13, align: 4)
!363 = distinct !DILexicalBlock(scope: !361, file: !7, line: 155, column: 5)
!364 = !DILocation(line: 152, column: 18, scope: !354)
!365 = !DILocation(line: 152, column: 9, scope: !357)
!366 = !DILocation(line: 153, column: 23, scope: !357)
!367 = !DILocation(line: 153, column: 9, scope: !359)
!368 = !DILocation(line: 154, column: 33, scope: !359)
!369 = !DILocation(line: 154, column: 9, scope: !361)
!370 = !DILocation(line: 155, column: 18, scope: !361)
!371 = !DILocation(line: 155, column: 9, scope: !363)
!372 = !DILocation(line: 156, column: 5, scope: !363)
!373 = !DILocation(line: 157, column: 2, scope: !354)
!374 = distinct !DISubprogram(name: "run_test_16", scope: !8, file: !7, line: 160, type: !52, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !375)
!375 = !{!376, !378, !380, !382}
!376 = !DILocalVariable(name: "y", scope: !377, file: !7, line: 161, type: !13, align: 4)
!377 = distinct !DILexicalBlock(scope: !374, file: !7, line: 161, column: 5)
!378 = !DILocalVariable(name: "exp_q2", scope: !379, file: !7, line: 162, type: !14, align: 4)
!379 = distinct !DILexicalBlock(scope: !377, file: !7, line: 162, column: 5)
!380 = !DILocalVariable(name: "expected_returns", scope: !381, file: !7, line: 163, type: !13, align: 4)
!381 = distinct !DILexicalBlock(scope: !379, file: !7, line: 163, column: 5)
!382 = !DILocalVariable(name: "result", scope: !383, file: !7, line: 164, type: !13, align: 4)
!383 = distinct !DILexicalBlock(scope: !381, file: !7, line: 164, column: 5)
!384 = !DILocation(line: 161, column: 18, scope: !374)
!385 = !DILocation(line: 161, column: 9, scope: !377)
!386 = !DILocation(line: 162, column: 23, scope: !377)
!387 = !DILocation(line: 162, column: 9, scope: !379)
!388 = !DILocation(line: 163, column: 33, scope: !379)
!389 = !DILocation(line: 163, column: 9, scope: !381)
!390 = !DILocation(line: 164, column: 18, scope: !381)
!391 = !DILocation(line: 164, column: 9, scope: !383)
!392 = !DILocation(line: 165, column: 5, scope: !383)
!393 = !DILocation(line: 166, column: 2, scope: !374)
!394 = distinct !DISubprogram(name: "run_test_17", scope: !8, file: !7, line: 169, type: !52, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !395)
!395 = !{!396, !398, !400, !402}
!396 = !DILocalVariable(name: "y", scope: !397, file: !7, line: 170, type: !13, align: 4)
!397 = distinct !DILexicalBlock(scope: !394, file: !7, line: 170, column: 5)
!398 = !DILocalVariable(name: "exp_q2", scope: !399, file: !7, line: 171, type: !14, align: 4)
!399 = distinct !DILexicalBlock(scope: !397, file: !7, line: 171, column: 5)
!400 = !DILocalVariable(name: "expected_returns", scope: !401, file: !7, line: 172, type: !13, align: 4)
!401 = distinct !DILexicalBlock(scope: !399, file: !7, line: 172, column: 5)
!402 = !DILocalVariable(name: "result", scope: !403, file: !7, line: 173, type: !13, align: 4)
!403 = distinct !DILexicalBlock(scope: !401, file: !7, line: 173, column: 5)
!404 = !DILocation(line: 170, column: 18, scope: !394)
!405 = !DILocation(line: 170, column: 9, scope: !397)
!406 = !DILocation(line: 171, column: 23, scope: !397)
!407 = !DILocation(line: 171, column: 9, scope: !399)
!408 = !DILocation(line: 172, column: 33, scope: !399)
!409 = !DILocation(line: 172, column: 9, scope: !401)
!410 = !DILocation(line: 173, column: 18, scope: !401)
!411 = !DILocation(line: 173, column: 9, scope: !403)
!412 = !DILocation(line: 174, column: 5, scope: !403)
!413 = !DILocation(line: 175, column: 2, scope: !394)
!414 = distinct !DISubprogram(name: "run_test_18", scope: !8, file: !7, line: 178, type: !52, scopeLine: 178, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !415)
!415 = !{!416, !418, !420, !422}
!416 = !DILocalVariable(name: "y", scope: !417, file: !7, line: 179, type: !13, align: 4)
!417 = distinct !DILexicalBlock(scope: !414, file: !7, line: 179, column: 5)
!418 = !DILocalVariable(name: "exp_q2", scope: !419, file: !7, line: 180, type: !14, align: 4)
!419 = distinct !DILexicalBlock(scope: !417, file: !7, line: 180, column: 5)
!420 = !DILocalVariable(name: "expected_returns", scope: !421, file: !7, line: 181, type: !13, align: 4)
!421 = distinct !DILexicalBlock(scope: !419, file: !7, line: 181, column: 5)
!422 = !DILocalVariable(name: "result", scope: !423, file: !7, line: 182, type: !13, align: 4)
!423 = distinct !DILexicalBlock(scope: !421, file: !7, line: 182, column: 5)
!424 = !DILocation(line: 179, column: 18, scope: !414)
!425 = !DILocation(line: 179, column: 9, scope: !417)
!426 = !DILocation(line: 180, column: 23, scope: !417)
!427 = !DILocation(line: 180, column: 9, scope: !419)
!428 = !DILocation(line: 181, column: 33, scope: !419)
!429 = !DILocation(line: 181, column: 9, scope: !421)
!430 = !DILocation(line: 182, column: 18, scope: !421)
!431 = !DILocation(line: 182, column: 9, scope: !423)
!432 = !DILocation(line: 183, column: 5, scope: !423)
!433 = !DILocation(line: 184, column: 2, scope: !414)
!434 = distinct !DISubprogram(name: "run_test_19", scope: !8, file: !7, line: 187, type: !52, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !435)
!435 = !{!436, !438, !440, !442}
!436 = !DILocalVariable(name: "y", scope: !437, file: !7, line: 188, type: !13, align: 4)
!437 = distinct !DILexicalBlock(scope: !434, file: !7, line: 188, column: 5)
!438 = !DILocalVariable(name: "exp_q2", scope: !439, file: !7, line: 189, type: !14, align: 4)
!439 = distinct !DILexicalBlock(scope: !437, file: !7, line: 189, column: 5)
!440 = !DILocalVariable(name: "expected_returns", scope: !441, file: !7, line: 190, type: !13, align: 4)
!441 = distinct !DILexicalBlock(scope: !439, file: !7, line: 190, column: 5)
!442 = !DILocalVariable(name: "result", scope: !443, file: !7, line: 191, type: !13, align: 4)
!443 = distinct !DILexicalBlock(scope: !441, file: !7, line: 191, column: 5)
!444 = !DILocation(line: 188, column: 18, scope: !434)
!445 = !DILocation(line: 188, column: 9, scope: !437)
!446 = !DILocation(line: 189, column: 23, scope: !437)
!447 = !DILocation(line: 189, column: 9, scope: !439)
!448 = !DILocation(line: 190, column: 33, scope: !439)
!449 = !DILocation(line: 190, column: 9, scope: !441)
!450 = !DILocation(line: 191, column: 18, scope: !441)
!451 = !DILocation(line: 191, column: 9, scope: !443)
!452 = !DILocation(line: 192, column: 5, scope: !443)
!453 = !DILocation(line: 193, column: 2, scope: !434)
!454 = distinct !DISubprogram(name: "run_test_20", scope: !8, file: !7, line: 196, type: !52, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !455)
!455 = !{!456, !458, !460, !462}
!456 = !DILocalVariable(name: "y", scope: !457, file: !7, line: 197, type: !13, align: 4)
!457 = distinct !DILexicalBlock(scope: !454, file: !7, line: 197, column: 5)
!458 = !DILocalVariable(name: "exp_q2", scope: !459, file: !7, line: 198, type: !14, align: 4)
!459 = distinct !DILexicalBlock(scope: !457, file: !7, line: 198, column: 5)
!460 = !DILocalVariable(name: "expected_returns", scope: !461, file: !7, line: 199, type: !13, align: 4)
!461 = distinct !DILexicalBlock(scope: !459, file: !7, line: 199, column: 5)
!462 = !DILocalVariable(name: "result", scope: !463, file: !7, line: 200, type: !13, align: 4)
!463 = distinct !DILexicalBlock(scope: !461, file: !7, line: 200, column: 5)
!464 = !DILocation(line: 197, column: 18, scope: !454)
!465 = !DILocation(line: 197, column: 9, scope: !457)
!466 = !DILocation(line: 198, column: 23, scope: !457)
!467 = !DILocation(line: 198, column: 9, scope: !459)
!468 = !DILocation(line: 199, column: 33, scope: !459)
!469 = !DILocation(line: 199, column: 9, scope: !461)
!470 = !DILocation(line: 200, column: 18, scope: !461)
!471 = !DILocation(line: 200, column: 9, scope: !463)
!472 = !DILocation(line: 201, column: 5, scope: !463)
!473 = !DILocation(line: 202, column: 2, scope: !454)
!474 = distinct !DISubprogram(name: "run_test_21", scope: !8, file: !7, line: 205, type: !52, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !475)
!475 = !{!476, !478, !480, !482}
!476 = !DILocalVariable(name: "y", scope: !477, file: !7, line: 206, type: !13, align: 4)
!477 = distinct !DILexicalBlock(scope: !474, file: !7, line: 206, column: 5)
!478 = !DILocalVariable(name: "exp_q2", scope: !479, file: !7, line: 207, type: !14, align: 4)
!479 = distinct !DILexicalBlock(scope: !477, file: !7, line: 207, column: 5)
!480 = !DILocalVariable(name: "expected_returns", scope: !481, file: !7, line: 208, type: !13, align: 4)
!481 = distinct !DILexicalBlock(scope: !479, file: !7, line: 208, column: 5)
!482 = !DILocalVariable(name: "result", scope: !483, file: !7, line: 209, type: !13, align: 4)
!483 = distinct !DILexicalBlock(scope: !481, file: !7, line: 209, column: 5)
!484 = !DILocation(line: 206, column: 18, scope: !474)
!485 = !DILocation(line: 206, column: 9, scope: !477)
!486 = !DILocation(line: 207, column: 23, scope: !477)
!487 = !DILocation(line: 207, column: 9, scope: !479)
!488 = !DILocation(line: 208, column: 33, scope: !479)
!489 = !DILocation(line: 208, column: 9, scope: !481)
!490 = !DILocation(line: 209, column: 18, scope: !481)
!491 = !DILocation(line: 209, column: 9, scope: !483)
!492 = !DILocation(line: 210, column: 5, scope: !483)
!493 = !DILocation(line: 211, column: 2, scope: !474)
!494 = distinct !DISubprogram(name: "run_test_22", scope: !8, file: !7, line: 214, type: !52, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !495)
!495 = !{!496, !498, !500, !502}
!496 = !DILocalVariable(name: "y", scope: !497, file: !7, line: 215, type: !13, align: 4)
!497 = distinct !DILexicalBlock(scope: !494, file: !7, line: 215, column: 5)
!498 = !DILocalVariable(name: "exp_q2", scope: !499, file: !7, line: 216, type: !14, align: 4)
!499 = distinct !DILexicalBlock(scope: !497, file: !7, line: 216, column: 5)
!500 = !DILocalVariable(name: "expected_returns", scope: !501, file: !7, line: 217, type: !13, align: 4)
!501 = distinct !DILexicalBlock(scope: !499, file: !7, line: 217, column: 5)
!502 = !DILocalVariable(name: "result", scope: !503, file: !7, line: 218, type: !13, align: 4)
!503 = distinct !DILexicalBlock(scope: !501, file: !7, line: 218, column: 5)
!504 = !DILocation(line: 215, column: 18, scope: !494)
!505 = !DILocation(line: 215, column: 9, scope: !497)
!506 = !DILocation(line: 216, column: 23, scope: !497)
!507 = !DILocation(line: 216, column: 9, scope: !499)
!508 = !DILocation(line: 217, column: 33, scope: !499)
!509 = !DILocation(line: 217, column: 9, scope: !501)
!510 = !DILocation(line: 218, column: 18, scope: !501)
!511 = !DILocation(line: 218, column: 9, scope: !503)
!512 = !DILocation(line: 219, column: 5, scope: !503)
!513 = !DILocation(line: 220, column: 2, scope: !494)
!514 = distinct !DISubprogram(name: "run_test_23", scope: !8, file: !7, line: 223, type: !52, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !515)
!515 = !{!516, !518, !520, !522}
!516 = !DILocalVariable(name: "y", scope: !517, file: !7, line: 224, type: !13, align: 4)
!517 = distinct !DILexicalBlock(scope: !514, file: !7, line: 224, column: 5)
!518 = !DILocalVariable(name: "exp_q2", scope: !519, file: !7, line: 225, type: !14, align: 4)
!519 = distinct !DILexicalBlock(scope: !517, file: !7, line: 225, column: 5)
!520 = !DILocalVariable(name: "expected_returns", scope: !521, file: !7, line: 226, type: !13, align: 4)
!521 = distinct !DILexicalBlock(scope: !519, file: !7, line: 226, column: 5)
!522 = !DILocalVariable(name: "result", scope: !523, file: !7, line: 227, type: !13, align: 4)
!523 = distinct !DILexicalBlock(scope: !521, file: !7, line: 227, column: 5)
!524 = !DILocation(line: 224, column: 18, scope: !514)
!525 = !DILocation(line: 224, column: 9, scope: !517)
!526 = !DILocation(line: 225, column: 23, scope: !517)
!527 = !DILocation(line: 225, column: 9, scope: !519)
!528 = !DILocation(line: 226, column: 33, scope: !519)
!529 = !DILocation(line: 226, column: 9, scope: !521)
!530 = !DILocation(line: 227, column: 18, scope: !521)
!531 = !DILocation(line: 227, column: 9, scope: !523)
!532 = !DILocation(line: 228, column: 5, scope: !523)
!533 = !DILocation(line: 229, column: 2, scope: !514)
!534 = distinct !DISubprogram(name: "run_test_24", scope: !8, file: !7, line: 232, type: !52, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !535)
!535 = !{!536, !538, !540, !542}
!536 = !DILocalVariable(name: "y", scope: !537, file: !7, line: 233, type: !13, align: 4)
!537 = distinct !DILexicalBlock(scope: !534, file: !7, line: 233, column: 5)
!538 = !DILocalVariable(name: "exp_q2", scope: !539, file: !7, line: 234, type: !14, align: 4)
!539 = distinct !DILexicalBlock(scope: !537, file: !7, line: 234, column: 5)
!540 = !DILocalVariable(name: "expected_returns", scope: !541, file: !7, line: 235, type: !13, align: 4)
!541 = distinct !DILexicalBlock(scope: !539, file: !7, line: 235, column: 5)
!542 = !DILocalVariable(name: "result", scope: !543, file: !7, line: 236, type: !13, align: 4)
!543 = distinct !DILexicalBlock(scope: !541, file: !7, line: 236, column: 5)
!544 = !DILocation(line: 233, column: 18, scope: !534)
!545 = !DILocation(line: 233, column: 9, scope: !537)
!546 = !DILocation(line: 234, column: 23, scope: !537)
!547 = !DILocation(line: 234, column: 9, scope: !539)
!548 = !DILocation(line: 235, column: 33, scope: !539)
!549 = !DILocation(line: 235, column: 9, scope: !541)
!550 = !DILocation(line: 236, column: 18, scope: !541)
!551 = !DILocation(line: 236, column: 9, scope: !543)
!552 = !DILocation(line: 237, column: 5, scope: !543)
!553 = !DILocation(line: 238, column: 2, scope: !534)
!554 = distinct !DISubprogram(name: "run_test_25", scope: !8, file: !7, line: 241, type: !52, scopeLine: 241, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !555)
!555 = !{!556, !558, !560, !562}
!556 = !DILocalVariable(name: "y", scope: !557, file: !7, line: 242, type: !13, align: 4)
!557 = distinct !DILexicalBlock(scope: !554, file: !7, line: 242, column: 5)
!558 = !DILocalVariable(name: "exp_q2", scope: !559, file: !7, line: 243, type: !14, align: 4)
!559 = distinct !DILexicalBlock(scope: !557, file: !7, line: 243, column: 5)
!560 = !DILocalVariable(name: "expected_returns", scope: !561, file: !7, line: 244, type: !13, align: 4)
!561 = distinct !DILexicalBlock(scope: !559, file: !7, line: 244, column: 5)
!562 = !DILocalVariable(name: "result", scope: !563, file: !7, line: 245, type: !13, align: 4)
!563 = distinct !DILexicalBlock(scope: !561, file: !7, line: 245, column: 5)
!564 = !DILocation(line: 242, column: 18, scope: !554)
!565 = !DILocation(line: 242, column: 9, scope: !557)
!566 = !DILocation(line: 243, column: 23, scope: !557)
!567 = !DILocation(line: 243, column: 9, scope: !559)
!568 = !DILocation(line: 244, column: 33, scope: !559)
!569 = !DILocation(line: 244, column: 9, scope: !561)
!570 = !DILocation(line: 245, column: 18, scope: !561)
!571 = !DILocation(line: 245, column: 9, scope: !563)
!572 = !DILocation(line: 246, column: 5, scope: !563)
!573 = !DILocation(line: 247, column: 2, scope: !554)
!574 = distinct !DISubprogram(name: "run_test_26", scope: !8, file: !7, line: 250, type: !52, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !575)
!575 = !{!576, !578, !580, !582}
!576 = !DILocalVariable(name: "y", scope: !577, file: !7, line: 251, type: !13, align: 4)
!577 = distinct !DILexicalBlock(scope: !574, file: !7, line: 251, column: 5)
!578 = !DILocalVariable(name: "exp_q2", scope: !579, file: !7, line: 252, type: !14, align: 4)
!579 = distinct !DILexicalBlock(scope: !577, file: !7, line: 252, column: 5)
!580 = !DILocalVariable(name: "expected_returns", scope: !581, file: !7, line: 253, type: !13, align: 4)
!581 = distinct !DILexicalBlock(scope: !579, file: !7, line: 253, column: 5)
!582 = !DILocalVariable(name: "result", scope: !583, file: !7, line: 254, type: !13, align: 4)
!583 = distinct !DILexicalBlock(scope: !581, file: !7, line: 254, column: 5)
!584 = !DILocation(line: 251, column: 18, scope: !574)
!585 = !DILocation(line: 251, column: 9, scope: !577)
!586 = !DILocation(line: 252, column: 23, scope: !577)
!587 = !DILocation(line: 252, column: 9, scope: !579)
!588 = !DILocation(line: 253, column: 33, scope: !579)
!589 = !DILocation(line: 253, column: 9, scope: !581)
!590 = !DILocation(line: 254, column: 18, scope: !581)
!591 = !DILocation(line: 254, column: 9, scope: !583)
!592 = !DILocation(line: 255, column: 5, scope: !583)
!593 = !DILocation(line: 256, column: 2, scope: !574)
!594 = distinct !DISubprogram(name: "run_test_27", scope: !8, file: !7, line: 259, type: !52, scopeLine: 259, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !595)
!595 = !{!596, !598, !600, !602}
!596 = !DILocalVariable(name: "y", scope: !597, file: !7, line: 260, type: !13, align: 4)
!597 = distinct !DILexicalBlock(scope: !594, file: !7, line: 260, column: 5)
!598 = !DILocalVariable(name: "exp_q2", scope: !599, file: !7, line: 261, type: !14, align: 4)
!599 = distinct !DILexicalBlock(scope: !597, file: !7, line: 261, column: 5)
!600 = !DILocalVariable(name: "expected_returns", scope: !601, file: !7, line: 262, type: !13, align: 4)
!601 = distinct !DILexicalBlock(scope: !599, file: !7, line: 262, column: 5)
!602 = !DILocalVariable(name: "result", scope: !603, file: !7, line: 263, type: !13, align: 4)
!603 = distinct !DILexicalBlock(scope: !601, file: !7, line: 263, column: 5)
!604 = !DILocation(line: 260, column: 18, scope: !594)
!605 = !DILocation(line: 260, column: 9, scope: !597)
!606 = !DILocation(line: 261, column: 23, scope: !597)
!607 = !DILocation(line: 261, column: 9, scope: !599)
!608 = !DILocation(line: 262, column: 33, scope: !599)
!609 = !DILocation(line: 262, column: 9, scope: !601)
!610 = !DILocation(line: 263, column: 18, scope: !601)
!611 = !DILocation(line: 263, column: 9, scope: !603)
!612 = !DILocation(line: 264, column: 5, scope: !603)
!613 = !DILocation(line: 265, column: 2, scope: !594)
!614 = distinct !DISubprogram(name: "run_test_28", scope: !8, file: !7, line: 268, type: !52, scopeLine: 268, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !615)
!615 = !{!616, !618, !620, !622}
!616 = !DILocalVariable(name: "y", scope: !617, file: !7, line: 269, type: !13, align: 4)
!617 = distinct !DILexicalBlock(scope: !614, file: !7, line: 269, column: 5)
!618 = !DILocalVariable(name: "exp_q2", scope: !619, file: !7, line: 270, type: !14, align: 4)
!619 = distinct !DILexicalBlock(scope: !617, file: !7, line: 270, column: 5)
!620 = !DILocalVariable(name: "expected_returns", scope: !621, file: !7, line: 271, type: !13, align: 4)
!621 = distinct !DILexicalBlock(scope: !619, file: !7, line: 271, column: 5)
!622 = !DILocalVariable(name: "result", scope: !623, file: !7, line: 272, type: !13, align: 4)
!623 = distinct !DILexicalBlock(scope: !621, file: !7, line: 272, column: 5)
!624 = !DILocation(line: 269, column: 18, scope: !614)
!625 = !DILocation(line: 269, column: 9, scope: !617)
!626 = !DILocation(line: 270, column: 23, scope: !617)
!627 = !DILocation(line: 270, column: 9, scope: !619)
!628 = !DILocation(line: 271, column: 33, scope: !619)
!629 = !DILocation(line: 271, column: 9, scope: !621)
!630 = !DILocation(line: 272, column: 18, scope: !621)
!631 = !DILocation(line: 272, column: 9, scope: !623)
!632 = !DILocation(line: 273, column: 5, scope: !623)
!633 = !DILocation(line: 274, column: 2, scope: !614)
!634 = distinct !DISubprogram(name: "run_test_29", scope: !8, file: !7, line: 277, type: !52, scopeLine: 277, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !635)
!635 = !{!636, !638, !640, !642}
!636 = !DILocalVariable(name: "y", scope: !637, file: !7, line: 278, type: !13, align: 4)
!637 = distinct !DILexicalBlock(scope: !634, file: !7, line: 278, column: 5)
!638 = !DILocalVariable(name: "exp_q2", scope: !639, file: !7, line: 279, type: !14, align: 4)
!639 = distinct !DILexicalBlock(scope: !637, file: !7, line: 279, column: 5)
!640 = !DILocalVariable(name: "expected_returns", scope: !641, file: !7, line: 280, type: !13, align: 4)
!641 = distinct !DILexicalBlock(scope: !639, file: !7, line: 280, column: 5)
!642 = !DILocalVariable(name: "result", scope: !643, file: !7, line: 281, type: !13, align: 4)
!643 = distinct !DILexicalBlock(scope: !641, file: !7, line: 281, column: 5)
!644 = !DILocation(line: 278, column: 18, scope: !634)
!645 = !DILocation(line: 278, column: 9, scope: !637)
!646 = !DILocation(line: 279, column: 23, scope: !637)
!647 = !DILocation(line: 279, column: 9, scope: !639)
!648 = !DILocation(line: 280, column: 33, scope: !639)
!649 = !DILocation(line: 280, column: 9, scope: !641)
!650 = !DILocation(line: 281, column: 18, scope: !641)
!651 = !DILocation(line: 281, column: 9, scope: !643)
!652 = !DILocation(line: 282, column: 5, scope: !643)
!653 = !DILocation(line: 283, column: 2, scope: !634)
!654 = distinct !DISubprogram(name: "run_test_30", scope: !8, file: !7, line: 286, type: !52, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !655)
!655 = !{!656, !658, !660, !662}
!656 = !DILocalVariable(name: "y", scope: !657, file: !7, line: 287, type: !13, align: 4)
!657 = distinct !DILexicalBlock(scope: !654, file: !7, line: 287, column: 5)
!658 = !DILocalVariable(name: "exp_q2", scope: !659, file: !7, line: 288, type: !14, align: 4)
!659 = distinct !DILexicalBlock(scope: !657, file: !7, line: 288, column: 5)
!660 = !DILocalVariable(name: "expected_returns", scope: !661, file: !7, line: 289, type: !13, align: 4)
!661 = distinct !DILexicalBlock(scope: !659, file: !7, line: 289, column: 5)
!662 = !DILocalVariable(name: "result", scope: !663, file: !7, line: 290, type: !13, align: 4)
!663 = distinct !DILexicalBlock(scope: !661, file: !7, line: 290, column: 5)
!664 = !DILocation(line: 287, column: 18, scope: !654)
!665 = !DILocation(line: 287, column: 9, scope: !657)
!666 = !DILocation(line: 288, column: 23, scope: !657)
!667 = !DILocation(line: 288, column: 9, scope: !659)
!668 = !DILocation(line: 289, column: 33, scope: !659)
!669 = !DILocation(line: 289, column: 9, scope: !661)
!670 = !DILocation(line: 290, column: 18, scope: !661)
!671 = !DILocation(line: 290, column: 9, scope: !663)
!672 = !DILocation(line: 291, column: 5, scope: !663)
!673 = !DILocation(line: 292, column: 2, scope: !654)
!674 = distinct !DISubprogram(name: "run_test_31", scope: !8, file: !7, line: 295, type: !52, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !675)
!675 = !{!676, !678, !680, !682}
!676 = !DILocalVariable(name: "y", scope: !677, file: !7, line: 296, type: !13, align: 4)
!677 = distinct !DILexicalBlock(scope: !674, file: !7, line: 296, column: 5)
!678 = !DILocalVariable(name: "exp_q2", scope: !679, file: !7, line: 297, type: !14, align: 4)
!679 = distinct !DILexicalBlock(scope: !677, file: !7, line: 297, column: 5)
!680 = !DILocalVariable(name: "expected_returns", scope: !681, file: !7, line: 298, type: !13, align: 4)
!681 = distinct !DILexicalBlock(scope: !679, file: !7, line: 298, column: 5)
!682 = !DILocalVariable(name: "result", scope: !683, file: !7, line: 299, type: !13, align: 4)
!683 = distinct !DILexicalBlock(scope: !681, file: !7, line: 299, column: 5)
!684 = !DILocation(line: 296, column: 18, scope: !674)
!685 = !DILocation(line: 296, column: 9, scope: !677)
!686 = !DILocation(line: 297, column: 23, scope: !677)
!687 = !DILocation(line: 297, column: 9, scope: !679)
!688 = !DILocation(line: 298, column: 33, scope: !679)
!689 = !DILocation(line: 298, column: 9, scope: !681)
!690 = !DILocation(line: 299, column: 18, scope: !681)
!691 = !DILocation(line: 299, column: 9, scope: !683)
!692 = !DILocation(line: 300, column: 5, scope: !683)
!693 = !DILocation(line: 301, column: 2, scope: !674)
!694 = distinct !DISubprogram(name: "run_test_32", scope: !8, file: !7, line: 304, type: !52, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !695)
!695 = !{!696, !698, !700, !702}
!696 = !DILocalVariable(name: "y", scope: !697, file: !7, line: 305, type: !13, align: 4)
!697 = distinct !DILexicalBlock(scope: !694, file: !7, line: 305, column: 5)
!698 = !DILocalVariable(name: "exp_q2", scope: !699, file: !7, line: 306, type: !14, align: 4)
!699 = distinct !DILexicalBlock(scope: !697, file: !7, line: 306, column: 5)
!700 = !DILocalVariable(name: "expected_returns", scope: !701, file: !7, line: 307, type: !13, align: 4)
!701 = distinct !DILexicalBlock(scope: !699, file: !7, line: 307, column: 5)
!702 = !DILocalVariable(name: "result", scope: !703, file: !7, line: 308, type: !13, align: 4)
!703 = distinct !DILexicalBlock(scope: !701, file: !7, line: 308, column: 5)
!704 = !DILocation(line: 305, column: 18, scope: !694)
!705 = !DILocation(line: 305, column: 9, scope: !697)
!706 = !DILocation(line: 306, column: 23, scope: !697)
!707 = !DILocation(line: 306, column: 9, scope: !699)
!708 = !DILocation(line: 307, column: 33, scope: !699)
!709 = !DILocation(line: 307, column: 9, scope: !701)
!710 = !DILocation(line: 308, column: 18, scope: !701)
!711 = !DILocation(line: 308, column: 9, scope: !703)
!712 = !DILocation(line: 309, column: 5, scope: !703)
!713 = !DILocation(line: 310, column: 2, scope: !694)
!714 = distinct !DISubprogram(name: "run_test_33", scope: !8, file: !7, line: 313, type: !52, scopeLine: 313, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !715)
!715 = !{!716, !718, !720, !722}
!716 = !DILocalVariable(name: "y", scope: !717, file: !7, line: 314, type: !13, align: 4)
!717 = distinct !DILexicalBlock(scope: !714, file: !7, line: 314, column: 5)
!718 = !DILocalVariable(name: "exp_q2", scope: !719, file: !7, line: 315, type: !14, align: 4)
!719 = distinct !DILexicalBlock(scope: !717, file: !7, line: 315, column: 5)
!720 = !DILocalVariable(name: "expected_returns", scope: !721, file: !7, line: 316, type: !13, align: 4)
!721 = distinct !DILexicalBlock(scope: !719, file: !7, line: 316, column: 5)
!722 = !DILocalVariable(name: "result", scope: !723, file: !7, line: 317, type: !13, align: 4)
!723 = distinct !DILexicalBlock(scope: !721, file: !7, line: 317, column: 5)
!724 = !DILocation(line: 314, column: 18, scope: !714)
!725 = !DILocation(line: 314, column: 9, scope: !717)
!726 = !DILocation(line: 315, column: 23, scope: !717)
!727 = !DILocation(line: 315, column: 9, scope: !719)
!728 = !DILocation(line: 316, column: 33, scope: !719)
!729 = !DILocation(line: 316, column: 9, scope: !721)
!730 = !DILocation(line: 317, column: 18, scope: !721)
!731 = !DILocation(line: 317, column: 9, scope: !723)
!732 = !DILocation(line: 318, column: 5, scope: !723)
!733 = !DILocation(line: 319, column: 2, scope: !714)
!734 = distinct !DISubprogram(name: "run_test_34", scope: !8, file: !7, line: 322, type: !52, scopeLine: 322, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !735)
!735 = !{!736, !738, !740, !742}
!736 = !DILocalVariable(name: "y", scope: !737, file: !7, line: 323, type: !13, align: 4)
!737 = distinct !DILexicalBlock(scope: !734, file: !7, line: 323, column: 5)
!738 = !DILocalVariable(name: "exp_q2", scope: !739, file: !7, line: 324, type: !14, align: 4)
!739 = distinct !DILexicalBlock(scope: !737, file: !7, line: 324, column: 5)
!740 = !DILocalVariable(name: "expected_returns", scope: !741, file: !7, line: 325, type: !13, align: 4)
!741 = distinct !DILexicalBlock(scope: !739, file: !7, line: 325, column: 5)
!742 = !DILocalVariable(name: "result", scope: !743, file: !7, line: 326, type: !13, align: 4)
!743 = distinct !DILexicalBlock(scope: !741, file: !7, line: 326, column: 5)
!744 = !DILocation(line: 323, column: 18, scope: !734)
!745 = !DILocation(line: 323, column: 9, scope: !737)
!746 = !DILocation(line: 324, column: 23, scope: !737)
!747 = !DILocation(line: 324, column: 9, scope: !739)
!748 = !DILocation(line: 325, column: 33, scope: !739)
!749 = !DILocation(line: 325, column: 9, scope: !741)
!750 = !DILocation(line: 326, column: 18, scope: !741)
!751 = !DILocation(line: 326, column: 9, scope: !743)
!752 = !DILocation(line: 327, column: 5, scope: !743)
!753 = !DILocation(line: 328, column: 2, scope: !734)
!754 = distinct !DISubprogram(name: "run_test_35", scope: !8, file: !7, line: 331, type: !52, scopeLine: 331, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !755)
!755 = !{!756, !758, !760, !762}
!756 = !DILocalVariable(name: "y", scope: !757, file: !7, line: 332, type: !13, align: 4)
!757 = distinct !DILexicalBlock(scope: !754, file: !7, line: 332, column: 5)
!758 = !DILocalVariable(name: "exp_q2", scope: !759, file: !7, line: 333, type: !14, align: 4)
!759 = distinct !DILexicalBlock(scope: !757, file: !7, line: 333, column: 5)
!760 = !DILocalVariable(name: "expected_returns", scope: !761, file: !7, line: 334, type: !13, align: 4)
!761 = distinct !DILexicalBlock(scope: !759, file: !7, line: 334, column: 5)
!762 = !DILocalVariable(name: "result", scope: !763, file: !7, line: 335, type: !13, align: 4)
!763 = distinct !DILexicalBlock(scope: !761, file: !7, line: 335, column: 5)
!764 = !DILocation(line: 332, column: 18, scope: !754)
!765 = !DILocation(line: 332, column: 9, scope: !757)
!766 = !DILocation(line: 333, column: 23, scope: !757)
!767 = !DILocation(line: 333, column: 9, scope: !759)
!768 = !DILocation(line: 334, column: 33, scope: !759)
!769 = !DILocation(line: 334, column: 9, scope: !761)
!770 = !DILocation(line: 335, column: 18, scope: !761)
!771 = !DILocation(line: 335, column: 9, scope: !763)
!772 = !DILocation(line: 336, column: 5, scope: !763)
!773 = !DILocation(line: 337, column: 2, scope: !754)
!774 = distinct !DISubprogram(name: "run_test_36", scope: !8, file: !7, line: 340, type: !52, scopeLine: 340, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !775)
!775 = !{!776, !778, !780, !782}
!776 = !DILocalVariable(name: "y", scope: !777, file: !7, line: 341, type: !13, align: 4)
!777 = distinct !DILexicalBlock(scope: !774, file: !7, line: 341, column: 5)
!778 = !DILocalVariable(name: "exp_q2", scope: !779, file: !7, line: 342, type: !14, align: 4)
!779 = distinct !DILexicalBlock(scope: !777, file: !7, line: 342, column: 5)
!780 = !DILocalVariable(name: "expected_returns", scope: !781, file: !7, line: 343, type: !13, align: 4)
!781 = distinct !DILexicalBlock(scope: !779, file: !7, line: 343, column: 5)
!782 = !DILocalVariable(name: "result", scope: !783, file: !7, line: 344, type: !13, align: 4)
!783 = distinct !DILexicalBlock(scope: !781, file: !7, line: 344, column: 5)
!784 = !DILocation(line: 341, column: 18, scope: !774)
!785 = !DILocation(line: 341, column: 9, scope: !777)
!786 = !DILocation(line: 342, column: 23, scope: !777)
!787 = !DILocation(line: 342, column: 9, scope: !779)
!788 = !DILocation(line: 343, column: 33, scope: !779)
!789 = !DILocation(line: 343, column: 9, scope: !781)
!790 = !DILocation(line: 344, column: 18, scope: !781)
!791 = !DILocation(line: 344, column: 9, scope: !783)
!792 = !DILocation(line: 345, column: 5, scope: !783)
!793 = !DILocation(line: 346, column: 2, scope: !774)
!794 = distinct !DISubprogram(name: "run_test_37", scope: !8, file: !7, line: 349, type: !52, scopeLine: 349, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !795)
!795 = !{!796, !798, !800, !802}
!796 = !DILocalVariable(name: "y", scope: !797, file: !7, line: 350, type: !13, align: 4)
!797 = distinct !DILexicalBlock(scope: !794, file: !7, line: 350, column: 5)
!798 = !DILocalVariable(name: "exp_q2", scope: !799, file: !7, line: 351, type: !14, align: 4)
!799 = distinct !DILexicalBlock(scope: !797, file: !7, line: 351, column: 5)
!800 = !DILocalVariable(name: "expected_returns", scope: !801, file: !7, line: 352, type: !13, align: 4)
!801 = distinct !DILexicalBlock(scope: !799, file: !7, line: 352, column: 5)
!802 = !DILocalVariable(name: "result", scope: !803, file: !7, line: 353, type: !13, align: 4)
!803 = distinct !DILexicalBlock(scope: !801, file: !7, line: 353, column: 5)
!804 = !DILocation(line: 350, column: 18, scope: !794)
!805 = !DILocation(line: 350, column: 9, scope: !797)
!806 = !DILocation(line: 351, column: 23, scope: !797)
!807 = !DILocation(line: 351, column: 9, scope: !799)
!808 = !DILocation(line: 352, column: 33, scope: !799)
!809 = !DILocation(line: 352, column: 9, scope: !801)
!810 = !DILocation(line: 353, column: 18, scope: !801)
!811 = !DILocation(line: 353, column: 9, scope: !803)
!812 = !DILocation(line: 354, column: 5, scope: !803)
!813 = !DILocation(line: 355, column: 2, scope: !794)
!814 = distinct !DISubprogram(name: "run_test_38", scope: !8, file: !7, line: 358, type: !52, scopeLine: 358, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !815)
!815 = !{!816, !818, !820, !822}
!816 = !DILocalVariable(name: "y", scope: !817, file: !7, line: 359, type: !13, align: 4)
!817 = distinct !DILexicalBlock(scope: !814, file: !7, line: 359, column: 5)
!818 = !DILocalVariable(name: "exp_q2", scope: !819, file: !7, line: 360, type: !14, align: 4)
!819 = distinct !DILexicalBlock(scope: !817, file: !7, line: 360, column: 5)
!820 = !DILocalVariable(name: "expected_returns", scope: !821, file: !7, line: 361, type: !13, align: 4)
!821 = distinct !DILexicalBlock(scope: !819, file: !7, line: 361, column: 5)
!822 = !DILocalVariable(name: "result", scope: !823, file: !7, line: 362, type: !13, align: 4)
!823 = distinct !DILexicalBlock(scope: !821, file: !7, line: 362, column: 5)
!824 = !DILocation(line: 359, column: 18, scope: !814)
!825 = !DILocation(line: 359, column: 9, scope: !817)
!826 = !DILocation(line: 360, column: 23, scope: !817)
!827 = !DILocation(line: 360, column: 9, scope: !819)
!828 = !DILocation(line: 361, column: 33, scope: !819)
!829 = !DILocation(line: 361, column: 9, scope: !821)
!830 = !DILocation(line: 362, column: 18, scope: !821)
!831 = !DILocation(line: 362, column: 9, scope: !823)
!832 = !DILocation(line: 363, column: 5, scope: !823)
!833 = !DILocation(line: 364, column: 2, scope: !814)
!834 = distinct !DISubprogram(name: "run_test_39", scope: !8, file: !7, line: 367, type: !52, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !835)
!835 = !{!836, !838, !840, !842}
!836 = !DILocalVariable(name: "y", scope: !837, file: !7, line: 368, type: !13, align: 4)
!837 = distinct !DILexicalBlock(scope: !834, file: !7, line: 368, column: 5)
!838 = !DILocalVariable(name: "exp_q2", scope: !839, file: !7, line: 369, type: !14, align: 4)
!839 = distinct !DILexicalBlock(scope: !837, file: !7, line: 369, column: 5)
!840 = !DILocalVariable(name: "expected_returns", scope: !841, file: !7, line: 370, type: !13, align: 4)
!841 = distinct !DILexicalBlock(scope: !839, file: !7, line: 370, column: 5)
!842 = !DILocalVariable(name: "result", scope: !843, file: !7, line: 371, type: !13, align: 4)
!843 = distinct !DILexicalBlock(scope: !841, file: !7, line: 371, column: 5)
!844 = !DILocation(line: 368, column: 18, scope: !834)
!845 = !DILocation(line: 368, column: 9, scope: !837)
!846 = !DILocation(line: 369, column: 23, scope: !837)
!847 = !DILocation(line: 369, column: 9, scope: !839)
!848 = !DILocation(line: 370, column: 33, scope: !839)
!849 = !DILocation(line: 370, column: 9, scope: !841)
!850 = !DILocation(line: 371, column: 18, scope: !841)
!851 = !DILocation(line: 371, column: 9, scope: !843)
!852 = !DILocation(line: 372, column: 5, scope: !843)
!853 = !DILocation(line: 373, column: 2, scope: !834)
!854 = distinct !DISubprogram(name: "run_test_40", scope: !8, file: !7, line: 376, type: !52, scopeLine: 376, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !855)
!855 = !{!856, !858, !860, !862}
!856 = !DILocalVariable(name: "y", scope: !857, file: !7, line: 377, type: !13, align: 4)
!857 = distinct !DILexicalBlock(scope: !854, file: !7, line: 377, column: 5)
!858 = !DILocalVariable(name: "exp_q2", scope: !859, file: !7, line: 378, type: !14, align: 4)
!859 = distinct !DILexicalBlock(scope: !857, file: !7, line: 378, column: 5)
!860 = !DILocalVariable(name: "expected_returns", scope: !861, file: !7, line: 379, type: !13, align: 4)
!861 = distinct !DILexicalBlock(scope: !859, file: !7, line: 379, column: 5)
!862 = !DILocalVariable(name: "result", scope: !863, file: !7, line: 380, type: !13, align: 4)
!863 = distinct !DILexicalBlock(scope: !861, file: !7, line: 380, column: 5)
!864 = !DILocation(line: 377, column: 18, scope: !854)
!865 = !DILocation(line: 377, column: 9, scope: !857)
!866 = !DILocation(line: 378, column: 23, scope: !857)
!867 = !DILocation(line: 378, column: 9, scope: !859)
!868 = !DILocation(line: 379, column: 33, scope: !859)
!869 = !DILocation(line: 379, column: 9, scope: !861)
!870 = !DILocation(line: 380, column: 18, scope: !861)
!871 = !DILocation(line: 380, column: 9, scope: !863)
!872 = !DILocation(line: 381, column: 5, scope: !863)
!873 = !DILocation(line: 382, column: 2, scope: !854)
!874 = distinct !DISubprogram(name: "run_test_41", scope: !8, file: !7, line: 385, type: !52, scopeLine: 385, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !875)
!875 = !{!876, !878, !880, !882}
!876 = !DILocalVariable(name: "y", scope: !877, file: !7, line: 386, type: !13, align: 4)
!877 = distinct !DILexicalBlock(scope: !874, file: !7, line: 386, column: 5)
!878 = !DILocalVariable(name: "exp_q2", scope: !879, file: !7, line: 387, type: !14, align: 4)
!879 = distinct !DILexicalBlock(scope: !877, file: !7, line: 387, column: 5)
!880 = !DILocalVariable(name: "expected_returns", scope: !881, file: !7, line: 388, type: !13, align: 4)
!881 = distinct !DILexicalBlock(scope: !879, file: !7, line: 388, column: 5)
!882 = !DILocalVariable(name: "result", scope: !883, file: !7, line: 389, type: !13, align: 4)
!883 = distinct !DILexicalBlock(scope: !881, file: !7, line: 389, column: 5)
!884 = !DILocation(line: 386, column: 18, scope: !874)
!885 = !DILocation(line: 386, column: 9, scope: !877)
!886 = !DILocation(line: 387, column: 23, scope: !877)
!887 = !DILocation(line: 387, column: 9, scope: !879)
!888 = !DILocation(line: 388, column: 33, scope: !879)
!889 = !DILocation(line: 388, column: 9, scope: !881)
!890 = !DILocation(line: 389, column: 18, scope: !881)
!891 = !DILocation(line: 389, column: 9, scope: !883)
!892 = !DILocation(line: 390, column: 5, scope: !883)
!893 = !DILocation(line: 391, column: 2, scope: !874)
!894 = distinct !DISubprogram(name: "run_test_42", scope: !8, file: !7, line: 394, type: !52, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !895)
!895 = !{!896, !898, !900, !902}
!896 = !DILocalVariable(name: "y", scope: !897, file: !7, line: 395, type: !13, align: 4)
!897 = distinct !DILexicalBlock(scope: !894, file: !7, line: 395, column: 5)
!898 = !DILocalVariable(name: "exp_q2", scope: !899, file: !7, line: 396, type: !14, align: 4)
!899 = distinct !DILexicalBlock(scope: !897, file: !7, line: 396, column: 5)
!900 = !DILocalVariable(name: "expected_returns", scope: !901, file: !7, line: 397, type: !13, align: 4)
!901 = distinct !DILexicalBlock(scope: !899, file: !7, line: 397, column: 5)
!902 = !DILocalVariable(name: "result", scope: !903, file: !7, line: 398, type: !13, align: 4)
!903 = distinct !DILexicalBlock(scope: !901, file: !7, line: 398, column: 5)
!904 = !DILocation(line: 395, column: 18, scope: !894)
!905 = !DILocation(line: 395, column: 9, scope: !897)
!906 = !DILocation(line: 396, column: 23, scope: !897)
!907 = !DILocation(line: 396, column: 9, scope: !899)
!908 = !DILocation(line: 397, column: 33, scope: !899)
!909 = !DILocation(line: 397, column: 9, scope: !901)
!910 = !DILocation(line: 398, column: 18, scope: !901)
!911 = !DILocation(line: 398, column: 9, scope: !903)
!912 = !DILocation(line: 399, column: 5, scope: !903)
!913 = !DILocation(line: 400, column: 2, scope: !894)
!914 = distinct !DISubprogram(name: "run_test_43", scope: !8, file: !7, line: 403, type: !52, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !915)
!915 = !{!916, !918, !920, !922}
!916 = !DILocalVariable(name: "y", scope: !917, file: !7, line: 404, type: !13, align: 4)
!917 = distinct !DILexicalBlock(scope: !914, file: !7, line: 404, column: 5)
!918 = !DILocalVariable(name: "exp_q2", scope: !919, file: !7, line: 405, type: !14, align: 4)
!919 = distinct !DILexicalBlock(scope: !917, file: !7, line: 405, column: 5)
!920 = !DILocalVariable(name: "expected_returns", scope: !921, file: !7, line: 406, type: !13, align: 4)
!921 = distinct !DILexicalBlock(scope: !919, file: !7, line: 406, column: 5)
!922 = !DILocalVariable(name: "result", scope: !923, file: !7, line: 407, type: !13, align: 4)
!923 = distinct !DILexicalBlock(scope: !921, file: !7, line: 407, column: 5)
!924 = !DILocation(line: 404, column: 18, scope: !914)
!925 = !DILocation(line: 404, column: 9, scope: !917)
!926 = !DILocation(line: 405, column: 23, scope: !917)
!927 = !DILocation(line: 405, column: 9, scope: !919)
!928 = !DILocation(line: 406, column: 33, scope: !919)
!929 = !DILocation(line: 406, column: 9, scope: !921)
!930 = !DILocation(line: 407, column: 18, scope: !921)
!931 = !DILocation(line: 407, column: 9, scope: !923)
!932 = !DILocation(line: 408, column: 5, scope: !923)
!933 = !DILocation(line: 409, column: 2, scope: !914)
!934 = distinct !DISubprogram(name: "run_test_44", scope: !8, file: !7, line: 412, type: !52, scopeLine: 412, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !935)
!935 = !{!936, !938, !940, !942}
!936 = !DILocalVariable(name: "y", scope: !937, file: !7, line: 413, type: !13, align: 4)
!937 = distinct !DILexicalBlock(scope: !934, file: !7, line: 413, column: 5)
!938 = !DILocalVariable(name: "exp_q2", scope: !939, file: !7, line: 414, type: !14, align: 4)
!939 = distinct !DILexicalBlock(scope: !937, file: !7, line: 414, column: 5)
!940 = !DILocalVariable(name: "expected_returns", scope: !941, file: !7, line: 415, type: !13, align: 4)
!941 = distinct !DILexicalBlock(scope: !939, file: !7, line: 415, column: 5)
!942 = !DILocalVariable(name: "result", scope: !943, file: !7, line: 416, type: !13, align: 4)
!943 = distinct !DILexicalBlock(scope: !941, file: !7, line: 416, column: 5)
!944 = !DILocation(line: 413, column: 18, scope: !934)
!945 = !DILocation(line: 413, column: 9, scope: !937)
!946 = !DILocation(line: 414, column: 23, scope: !937)
!947 = !DILocation(line: 414, column: 9, scope: !939)
!948 = !DILocation(line: 415, column: 33, scope: !939)
!949 = !DILocation(line: 415, column: 9, scope: !941)
!950 = !DILocation(line: 416, column: 18, scope: !941)
!951 = !DILocation(line: 416, column: 9, scope: !943)
!952 = !DILocation(line: 417, column: 5, scope: !943)
!953 = !DILocation(line: 418, column: 2, scope: !934)
!954 = distinct !DISubprogram(name: "run_test_45", scope: !8, file: !7, line: 421, type: !52, scopeLine: 421, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !955)
!955 = !{!956, !958, !960, !962}
!956 = !DILocalVariable(name: "y", scope: !957, file: !7, line: 422, type: !13, align: 4)
!957 = distinct !DILexicalBlock(scope: !954, file: !7, line: 422, column: 5)
!958 = !DILocalVariable(name: "exp_q2", scope: !959, file: !7, line: 423, type: !14, align: 4)
!959 = distinct !DILexicalBlock(scope: !957, file: !7, line: 423, column: 5)
!960 = !DILocalVariable(name: "expected_returns", scope: !961, file: !7, line: 424, type: !13, align: 4)
!961 = distinct !DILexicalBlock(scope: !959, file: !7, line: 424, column: 5)
!962 = !DILocalVariable(name: "result", scope: !963, file: !7, line: 425, type: !13, align: 4)
!963 = distinct !DILexicalBlock(scope: !961, file: !7, line: 425, column: 5)
!964 = !DILocation(line: 422, column: 18, scope: !954)
!965 = !DILocation(line: 422, column: 9, scope: !957)
!966 = !DILocation(line: 423, column: 23, scope: !957)
!967 = !DILocation(line: 423, column: 9, scope: !959)
!968 = !DILocation(line: 424, column: 33, scope: !959)
!969 = !DILocation(line: 424, column: 9, scope: !961)
!970 = !DILocation(line: 425, column: 18, scope: !961)
!971 = !DILocation(line: 425, column: 9, scope: !963)
!972 = !DILocation(line: 426, column: 5, scope: !963)
!973 = !DILocation(line: 427, column: 2, scope: !954)
!974 = distinct !DISubprogram(name: "run_test_46", scope: !8, file: !7, line: 430, type: !52, scopeLine: 430, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !975)
!975 = !{!976, !978, !980, !982}
!976 = !DILocalVariable(name: "y", scope: !977, file: !7, line: 431, type: !13, align: 4)
!977 = distinct !DILexicalBlock(scope: !974, file: !7, line: 431, column: 5)
!978 = !DILocalVariable(name: "exp_q2", scope: !979, file: !7, line: 432, type: !14, align: 4)
!979 = distinct !DILexicalBlock(scope: !977, file: !7, line: 432, column: 5)
!980 = !DILocalVariable(name: "expected_returns", scope: !981, file: !7, line: 433, type: !13, align: 4)
!981 = distinct !DILexicalBlock(scope: !979, file: !7, line: 433, column: 5)
!982 = !DILocalVariable(name: "result", scope: !983, file: !7, line: 434, type: !13, align: 4)
!983 = distinct !DILexicalBlock(scope: !981, file: !7, line: 434, column: 5)
!984 = !DILocation(line: 431, column: 18, scope: !974)
!985 = !DILocation(line: 431, column: 9, scope: !977)
!986 = !DILocation(line: 432, column: 23, scope: !977)
!987 = !DILocation(line: 432, column: 9, scope: !979)
!988 = !DILocation(line: 433, column: 33, scope: !979)
!989 = !DILocation(line: 433, column: 9, scope: !981)
!990 = !DILocation(line: 434, column: 18, scope: !981)
!991 = !DILocation(line: 434, column: 9, scope: !983)
!992 = !DILocation(line: 435, column: 5, scope: !983)
!993 = !DILocation(line: 436, column: 2, scope: !974)
!994 = distinct !DISubprogram(name: "run_test_47", scope: !8, file: !7, line: 439, type: !52, scopeLine: 439, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !995)
!995 = !{!996, !998, !1000, !1002}
!996 = !DILocalVariable(name: "y", scope: !997, file: !7, line: 440, type: !13, align: 4)
!997 = distinct !DILexicalBlock(scope: !994, file: !7, line: 440, column: 5)
!998 = !DILocalVariable(name: "exp_q2", scope: !999, file: !7, line: 441, type: !14, align: 4)
!999 = distinct !DILexicalBlock(scope: !997, file: !7, line: 441, column: 5)
!1000 = !DILocalVariable(name: "expected_returns", scope: !1001, file: !7, line: 442, type: !13, align: 4)
!1001 = distinct !DILexicalBlock(scope: !999, file: !7, line: 442, column: 5)
!1002 = !DILocalVariable(name: "result", scope: !1003, file: !7, line: 443, type: !13, align: 4)
!1003 = distinct !DILexicalBlock(scope: !1001, file: !7, line: 443, column: 5)
!1004 = !DILocation(line: 440, column: 18, scope: !994)
!1005 = !DILocation(line: 440, column: 9, scope: !997)
!1006 = !DILocation(line: 441, column: 23, scope: !997)
!1007 = !DILocation(line: 441, column: 9, scope: !999)
!1008 = !DILocation(line: 442, column: 33, scope: !999)
!1009 = !DILocation(line: 442, column: 9, scope: !1001)
!1010 = !DILocation(line: 443, column: 18, scope: !1001)
!1011 = !DILocation(line: 443, column: 9, scope: !1003)
!1012 = !DILocation(line: 444, column: 5, scope: !1003)
!1013 = !DILocation(line: 445, column: 2, scope: !994)
!1014 = distinct !DISubprogram(name: "run_test_48", scope: !8, file: !7, line: 448, type: !52, scopeLine: 448, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !1015)
!1015 = !{!1016, !1018, !1020, !1022}
!1016 = !DILocalVariable(name: "y", scope: !1017, file: !7, line: 449, type: !13, align: 4)
!1017 = distinct !DILexicalBlock(scope: !1014, file: !7, line: 449, column: 5)
!1018 = !DILocalVariable(name: "exp_q2", scope: !1019, file: !7, line: 450, type: !14, align: 4)
!1019 = distinct !DILexicalBlock(scope: !1017, file: !7, line: 450, column: 5)
!1020 = !DILocalVariable(name: "expected_returns", scope: !1021, file: !7, line: 451, type: !13, align: 4)
!1021 = distinct !DILexicalBlock(scope: !1019, file: !7, line: 451, column: 5)
!1022 = !DILocalVariable(name: "result", scope: !1023, file: !7, line: 452, type: !13, align: 4)
!1023 = distinct !DILexicalBlock(scope: !1021, file: !7, line: 452, column: 5)
!1024 = !DILocation(line: 449, column: 18, scope: !1014)
!1025 = !DILocation(line: 449, column: 9, scope: !1017)
!1026 = !DILocation(line: 450, column: 23, scope: !1017)
!1027 = !DILocation(line: 450, column: 9, scope: !1019)
!1028 = !DILocation(line: 451, column: 33, scope: !1019)
!1029 = !DILocation(line: 451, column: 9, scope: !1021)
!1030 = !DILocation(line: 452, column: 18, scope: !1021)
!1031 = !DILocation(line: 452, column: 9, scope: !1023)
!1032 = !DILocation(line: 453, column: 5, scope: !1023)
!1033 = !DILocation(line: 454, column: 2, scope: !1014)
!1034 = distinct !DISubprogram(name: "run_test_49", scope: !8, file: !7, line: 457, type: !52, scopeLine: 457, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !1035)
!1035 = !{!1036, !1038, !1040, !1042}
!1036 = !DILocalVariable(name: "y", scope: !1037, file: !7, line: 458, type: !13, align: 4)
!1037 = distinct !DILexicalBlock(scope: !1034, file: !7, line: 458, column: 5)
!1038 = !DILocalVariable(name: "exp_q2", scope: !1039, file: !7, line: 459, type: !14, align: 4)
!1039 = distinct !DILexicalBlock(scope: !1037, file: !7, line: 459, column: 5)
!1040 = !DILocalVariable(name: "expected_returns", scope: !1041, file: !7, line: 460, type: !13, align: 4)
!1041 = distinct !DILexicalBlock(scope: !1039, file: !7, line: 460, column: 5)
!1042 = !DILocalVariable(name: "result", scope: !1043, file: !7, line: 461, type: !13, align: 4)
!1043 = distinct !DILexicalBlock(scope: !1041, file: !7, line: 461, column: 5)
!1044 = !DILocation(line: 458, column: 18, scope: !1034)
!1045 = !DILocation(line: 458, column: 9, scope: !1037)
!1046 = !DILocation(line: 459, column: 23, scope: !1037)
!1047 = !DILocation(line: 459, column: 9, scope: !1039)
!1048 = !DILocation(line: 460, column: 33, scope: !1039)
!1049 = !DILocation(line: 460, column: 9, scope: !1041)
!1050 = !DILocation(line: 461, column: 18, scope: !1041)
!1051 = !DILocation(line: 461, column: 9, scope: !1043)
!1052 = !DILocation(line: 462, column: 5, scope: !1043)
!1053 = !DILocation(line: 463, column: 2, scope: !1034)
!1054 = distinct !DISubprogram(name: "run_test_50", scope: !8, file: !7, line: 466, type: !52, scopeLine: 466, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !1055)
!1055 = !{!1056, !1058, !1060, !1062}
!1056 = !DILocalVariable(name: "y", scope: !1057, file: !7, line: 467, type: !13, align: 4)
!1057 = distinct !DILexicalBlock(scope: !1054, file: !7, line: 467, column: 5)
!1058 = !DILocalVariable(name: "exp_q2", scope: !1059, file: !7, line: 468, type: !14, align: 4)
!1059 = distinct !DILexicalBlock(scope: !1057, file: !7, line: 468, column: 5)
!1060 = !DILocalVariable(name: "expected_returns", scope: !1061, file: !7, line: 469, type: !13, align: 4)
!1061 = distinct !DILexicalBlock(scope: !1059, file: !7, line: 469, column: 5)
!1062 = !DILocalVariable(name: "result", scope: !1063, file: !7, line: 470, type: !13, align: 4)
!1063 = distinct !DILexicalBlock(scope: !1061, file: !7, line: 470, column: 5)
!1064 = !DILocation(line: 467, column: 18, scope: !1054)
!1065 = !DILocation(line: 467, column: 9, scope: !1057)
!1066 = !DILocation(line: 468, column: 23, scope: !1057)
!1067 = !DILocation(line: 468, column: 9, scope: !1059)
!1068 = !DILocation(line: 469, column: 33, scope: !1059)
!1069 = !DILocation(line: 469, column: 9, scope: !1061)
!1070 = !DILocation(line: 470, column: 18, scope: !1061)
!1071 = !DILocation(line: 470, column: 9, scope: !1063)
!1072 = !DILocation(line: 471, column: 5, scope: !1063)
!1073 = !DILocation(line: 472, column: 2, scope: !1054)
!1074 = distinct !DISubprogram(name: "run_test_51", scope: !8, file: !7, line: 475, type: !52, scopeLine: 475, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !1075)
!1075 = !{!1076, !1078, !1080, !1082}
!1076 = !DILocalVariable(name: "y", scope: !1077, file: !7, line: 476, type: !13, align: 4)
!1077 = distinct !DILexicalBlock(scope: !1074, file: !7, line: 476, column: 5)
!1078 = !DILocalVariable(name: "exp_q2", scope: !1079, file: !7, line: 477, type: !14, align: 4)
!1079 = distinct !DILexicalBlock(scope: !1077, file: !7, line: 477, column: 5)
!1080 = !DILocalVariable(name: "expected_returns", scope: !1081, file: !7, line: 478, type: !13, align: 4)
!1081 = distinct !DILexicalBlock(scope: !1079, file: !7, line: 478, column: 5)
!1082 = !DILocalVariable(name: "result", scope: !1083, file: !7, line: 479, type: !13, align: 4)
!1083 = distinct !DILexicalBlock(scope: !1081, file: !7, line: 479, column: 5)
!1084 = !DILocation(line: 476, column: 18, scope: !1074)
!1085 = !DILocation(line: 476, column: 9, scope: !1077)
!1086 = !DILocation(line: 477, column: 23, scope: !1077)
!1087 = !DILocation(line: 477, column: 9, scope: !1079)
!1088 = !DILocation(line: 478, column: 33, scope: !1079)
!1089 = !DILocation(line: 478, column: 9, scope: !1081)
!1090 = !DILocation(line: 479, column: 18, scope: !1081)
!1091 = !DILocation(line: 479, column: 9, scope: !1083)
!1092 = !DILocation(line: 480, column: 5, scope: !1083)
!1093 = !DILocation(line: 481, column: 2, scope: !1074)
!1094 = distinct !DISubprogram(name: "run_test_52", scope: !8, file: !7, line: 484, type: !52, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !1095)
!1095 = !{!1096, !1098, !1100, !1102}
!1096 = !DILocalVariable(name: "y", scope: !1097, file: !7, line: 485, type: !13, align: 4)
!1097 = distinct !DILexicalBlock(scope: !1094, file: !7, line: 485, column: 5)
!1098 = !DILocalVariable(name: "exp_q2", scope: !1099, file: !7, line: 486, type: !14, align: 4)
!1099 = distinct !DILexicalBlock(scope: !1097, file: !7, line: 486, column: 5)
!1100 = !DILocalVariable(name: "expected_returns", scope: !1101, file: !7, line: 487, type: !13, align: 4)
!1101 = distinct !DILexicalBlock(scope: !1099, file: !7, line: 487, column: 5)
!1102 = !DILocalVariable(name: "result", scope: !1103, file: !7, line: 488, type: !13, align: 4)
!1103 = distinct !DILexicalBlock(scope: !1101, file: !7, line: 488, column: 5)
!1104 = !DILocation(line: 485, column: 18, scope: !1094)
!1105 = !DILocation(line: 485, column: 9, scope: !1097)
!1106 = !DILocation(line: 486, column: 23, scope: !1097)
!1107 = !DILocation(line: 486, column: 9, scope: !1099)
!1108 = !DILocation(line: 487, column: 33, scope: !1099)
!1109 = !DILocation(line: 487, column: 9, scope: !1101)
!1110 = !DILocation(line: 488, column: 18, scope: !1101)
!1111 = !DILocation(line: 488, column: 9, scope: !1103)
!1112 = !DILocation(line: 489, column: 5, scope: !1103)
!1113 = !DILocation(line: 490, column: 2, scope: !1094)
!1114 = distinct !DISubprogram(name: "run_test_53", scope: !8, file: !7, line: 493, type: !52, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !1115)
!1115 = !{!1116, !1118, !1120, !1122}
!1116 = !DILocalVariable(name: "y", scope: !1117, file: !7, line: 494, type: !13, align: 4)
!1117 = distinct !DILexicalBlock(scope: !1114, file: !7, line: 494, column: 5)
!1118 = !DILocalVariable(name: "exp_q2", scope: !1119, file: !7, line: 495, type: !14, align: 4)
!1119 = distinct !DILexicalBlock(scope: !1117, file: !7, line: 495, column: 5)
!1120 = !DILocalVariable(name: "expected_returns", scope: !1121, file: !7, line: 496, type: !13, align: 4)
!1121 = distinct !DILexicalBlock(scope: !1119, file: !7, line: 496, column: 5)
!1122 = !DILocalVariable(name: "result", scope: !1123, file: !7, line: 497, type: !13, align: 4)
!1123 = distinct !DILexicalBlock(scope: !1121, file: !7, line: 497, column: 5)
!1124 = !DILocation(line: 494, column: 18, scope: !1114)
!1125 = !DILocation(line: 494, column: 9, scope: !1117)
!1126 = !DILocation(line: 495, column: 23, scope: !1117)
!1127 = !DILocation(line: 495, column: 9, scope: !1119)
!1128 = !DILocation(line: 496, column: 33, scope: !1119)
!1129 = !DILocation(line: 496, column: 9, scope: !1121)
!1130 = !DILocation(line: 497, column: 18, scope: !1121)
!1131 = !DILocation(line: 497, column: 9, scope: !1123)
!1132 = !DILocation(line: 498, column: 5, scope: !1123)
!1133 = !DILocation(line: 499, column: 2, scope: !1114)
!1134 = distinct !DISubprogram(name: "run_test_54", scope: !8, file: !7, line: 502, type: !52, scopeLine: 502, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !1135)
!1135 = !{!1136, !1138, !1140, !1142}
!1136 = !DILocalVariable(name: "y", scope: !1137, file: !7, line: 503, type: !13, align: 4)
!1137 = distinct !DILexicalBlock(scope: !1134, file: !7, line: 503, column: 5)
!1138 = !DILocalVariable(name: "exp_q2", scope: !1139, file: !7, line: 504, type: !14, align: 4)
!1139 = distinct !DILexicalBlock(scope: !1137, file: !7, line: 504, column: 5)
!1140 = !DILocalVariable(name: "expected_returns", scope: !1141, file: !7, line: 505, type: !13, align: 4)
!1141 = distinct !DILexicalBlock(scope: !1139, file: !7, line: 505, column: 5)
!1142 = !DILocalVariable(name: "result", scope: !1143, file: !7, line: 506, type: !13, align: 4)
!1143 = distinct !DILexicalBlock(scope: !1141, file: !7, line: 506, column: 5)
!1144 = !DILocation(line: 503, column: 18, scope: !1134)
!1145 = !DILocation(line: 503, column: 9, scope: !1137)
!1146 = !DILocation(line: 504, column: 23, scope: !1137)
!1147 = !DILocation(line: 504, column: 9, scope: !1139)
!1148 = !DILocation(line: 505, column: 33, scope: !1139)
!1149 = !DILocation(line: 505, column: 9, scope: !1141)
!1150 = !DILocation(line: 506, column: 18, scope: !1141)
!1151 = !DILocation(line: 506, column: 9, scope: !1143)
!1152 = !DILocation(line: 507, column: 5, scope: !1143)
!1153 = !DILocation(line: 508, column: 2, scope: !1134)
!1154 = distinct !DISubprogram(name: "run_test_55", scope: !8, file: !7, line: 511, type: !52, scopeLine: 511, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !1155)
!1155 = !{!1156, !1158, !1160, !1162}
!1156 = !DILocalVariable(name: "y", scope: !1157, file: !7, line: 512, type: !13, align: 4)
!1157 = distinct !DILexicalBlock(scope: !1154, file: !7, line: 512, column: 5)
!1158 = !DILocalVariable(name: "exp_q2", scope: !1159, file: !7, line: 513, type: !14, align: 4)
!1159 = distinct !DILexicalBlock(scope: !1157, file: !7, line: 513, column: 5)
!1160 = !DILocalVariable(name: "expected_returns", scope: !1161, file: !7, line: 514, type: !13, align: 4)
!1161 = distinct !DILexicalBlock(scope: !1159, file: !7, line: 514, column: 5)
!1162 = !DILocalVariable(name: "result", scope: !1163, file: !7, line: 515, type: !13, align: 4)
!1163 = distinct !DILexicalBlock(scope: !1161, file: !7, line: 515, column: 5)
!1164 = !DILocation(line: 512, column: 18, scope: !1154)
!1165 = !DILocation(line: 512, column: 9, scope: !1157)
!1166 = !DILocation(line: 513, column: 23, scope: !1157)
!1167 = !DILocation(line: 513, column: 9, scope: !1159)
!1168 = !DILocation(line: 514, column: 33, scope: !1159)
!1169 = !DILocation(line: 514, column: 9, scope: !1161)
!1170 = !DILocation(line: 515, column: 18, scope: !1161)
!1171 = !DILocation(line: 515, column: 9, scope: !1163)
!1172 = !DILocation(line: 516, column: 5, scope: !1163)
!1173 = !DILocation(line: 517, column: 2, scope: !1154)
!1174 = distinct !DISubprogram(name: "run_test_59", scope: !8, file: !7, line: 520, type: !52, scopeLine: 520, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !1175)
!1175 = !{!1176, !1178, !1180, !1182}
!1176 = !DILocalVariable(name: "y", scope: !1177, file: !7, line: 521, type: !13, align: 4)
!1177 = distinct !DILexicalBlock(scope: !1174, file: !7, line: 521, column: 5)
!1178 = !DILocalVariable(name: "exp_q2", scope: !1179, file: !7, line: 522, type: !14, align: 4)
!1179 = distinct !DILexicalBlock(scope: !1177, file: !7, line: 522, column: 5)
!1180 = !DILocalVariable(name: "expected_returns", scope: !1181, file: !7, line: 523, type: !13, align: 4)
!1181 = distinct !DILexicalBlock(scope: !1179, file: !7, line: 523, column: 5)
!1182 = !DILocalVariable(name: "result", scope: !1183, file: !7, line: 524, type: !13, align: 4)
!1183 = distinct !DILexicalBlock(scope: !1181, file: !7, line: 524, column: 5)
!1184 = !DILocation(line: 521, column: 18, scope: !1174)
!1185 = !DILocation(line: 521, column: 9, scope: !1177)
!1186 = !DILocation(line: 522, column: 23, scope: !1177)
!1187 = !DILocation(line: 522, column: 9, scope: !1179)
!1188 = !DILocation(line: 523, column: 33, scope: !1179)
!1189 = !DILocation(line: 523, column: 9, scope: !1181)
!1190 = !DILocation(line: 524, column: 18, scope: !1181)
!1191 = !DILocation(line: 524, column: 9, scope: !1183)
!1192 = !DILocation(line: 525, column: 5, scope: !1183)
!1193 = !DILocation(line: 526, column: 2, scope: !1174)
!1194 = distinct !DISubprogram(name: "run_test_60", scope: !8, file: !7, line: 529, type: !52, scopeLine: 529, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !1195)
!1195 = !{!1196, !1198, !1200, !1202}
!1196 = !DILocalVariable(name: "y", scope: !1197, file: !7, line: 530, type: !13, align: 4)
!1197 = distinct !DILexicalBlock(scope: !1194, file: !7, line: 530, column: 5)
!1198 = !DILocalVariable(name: "exp_q2", scope: !1199, file: !7, line: 531, type: !14, align: 4)
!1199 = distinct !DILexicalBlock(scope: !1197, file: !7, line: 531, column: 5)
!1200 = !DILocalVariable(name: "expected_returns", scope: !1201, file: !7, line: 532, type: !13, align: 4)
!1201 = distinct !DILexicalBlock(scope: !1199, file: !7, line: 532, column: 5)
!1202 = !DILocalVariable(name: "result", scope: !1203, file: !7, line: 533, type: !13, align: 4)
!1203 = distinct !DILexicalBlock(scope: !1201, file: !7, line: 533, column: 5)
!1204 = !DILocation(line: 530, column: 18, scope: !1194)
!1205 = !DILocation(line: 530, column: 9, scope: !1197)
!1206 = !DILocation(line: 531, column: 23, scope: !1197)
!1207 = !DILocation(line: 531, column: 9, scope: !1199)
!1208 = !DILocation(line: 532, column: 33, scope: !1199)
!1209 = !DILocation(line: 532, column: 9, scope: !1201)
!1210 = !DILocation(line: 533, column: 18, scope: !1201)
!1211 = !DILocation(line: 533, column: 9, scope: !1203)
!1212 = !DILocation(line: 534, column: 5, scope: !1203)
!1213 = !DILocation(line: 535, column: 2, scope: !1194)
!1214 = distinct !DISubprogram(name: "run_test_61", scope: !8, file: !7, line: 538, type: !52, scopeLine: 538, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !1215)
!1215 = !{!1216, !1218, !1220, !1222}
!1216 = !DILocalVariable(name: "y", scope: !1217, file: !7, line: 539, type: !13, align: 4)
!1217 = distinct !DILexicalBlock(scope: !1214, file: !7, line: 539, column: 5)
!1218 = !DILocalVariable(name: "exp_q2", scope: !1219, file: !7, line: 540, type: !14, align: 4)
!1219 = distinct !DILexicalBlock(scope: !1217, file: !7, line: 540, column: 5)
!1220 = !DILocalVariable(name: "expected_returns", scope: !1221, file: !7, line: 541, type: !13, align: 4)
!1221 = distinct !DILexicalBlock(scope: !1219, file: !7, line: 541, column: 5)
!1222 = !DILocalVariable(name: "result", scope: !1223, file: !7, line: 542, type: !13, align: 4)
!1223 = distinct !DILexicalBlock(scope: !1221, file: !7, line: 542, column: 5)
!1224 = !DILocation(line: 539, column: 18, scope: !1214)
!1225 = !DILocation(line: 539, column: 9, scope: !1217)
!1226 = !DILocation(line: 540, column: 23, scope: !1217)
!1227 = !DILocation(line: 540, column: 9, scope: !1219)
!1228 = !DILocation(line: 541, column: 33, scope: !1219)
!1229 = !DILocation(line: 541, column: 9, scope: !1221)
!1230 = !DILocation(line: 542, column: 18, scope: !1221)
!1231 = !DILocation(line: 542, column: 9, scope: !1223)
!1232 = !DILocation(line: 543, column: 5, scope: !1223)
!1233 = !DILocation(line: 544, column: 2, scope: !1214)
!1234 = distinct !DISubprogram(name: "run_test_62", scope: !8, file: !7, line: 547, type: !52, scopeLine: 547, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !1235)
!1235 = !{!1236, !1238, !1240, !1242}
!1236 = !DILocalVariable(name: "y", scope: !1237, file: !7, line: 548, type: !13, align: 4)
!1237 = distinct !DILexicalBlock(scope: !1234, file: !7, line: 548, column: 5)
!1238 = !DILocalVariable(name: "exp_q2", scope: !1239, file: !7, line: 549, type: !14, align: 4)
!1239 = distinct !DILexicalBlock(scope: !1237, file: !7, line: 549, column: 5)
!1240 = !DILocalVariable(name: "expected_returns", scope: !1241, file: !7, line: 550, type: !13, align: 4)
!1241 = distinct !DILexicalBlock(scope: !1239, file: !7, line: 550, column: 5)
!1242 = !DILocalVariable(name: "result", scope: !1243, file: !7, line: 551, type: !13, align: 4)
!1243 = distinct !DILexicalBlock(scope: !1241, file: !7, line: 551, column: 5)
!1244 = !DILocation(line: 548, column: 18, scope: !1234)
!1245 = !DILocation(line: 548, column: 9, scope: !1237)
!1246 = !DILocation(line: 549, column: 23, scope: !1237)
!1247 = !DILocation(line: 549, column: 9, scope: !1239)
!1248 = !DILocation(line: 550, column: 33, scope: !1239)
!1249 = !DILocation(line: 550, column: 9, scope: !1241)
!1250 = !DILocation(line: 551, column: 18, scope: !1241)
!1251 = !DILocation(line: 551, column: 9, scope: !1243)
!1252 = !DILocation(line: 552, column: 5, scope: !1243)
!1253 = !DILocation(line: 553, column: 2, scope: !1234)
!1254 = distinct !DISubprogram(name: "run_test_63", scope: !8, file: !7, line: 556, type: !52, scopeLine: 556, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !1255)
!1255 = !{!1256, !1258, !1260, !1262}
!1256 = !DILocalVariable(name: "y", scope: !1257, file: !7, line: 557, type: !13, align: 4)
!1257 = distinct !DILexicalBlock(scope: !1254, file: !7, line: 557, column: 5)
!1258 = !DILocalVariable(name: "exp_q2", scope: !1259, file: !7, line: 558, type: !14, align: 4)
!1259 = distinct !DILexicalBlock(scope: !1257, file: !7, line: 558, column: 5)
!1260 = !DILocalVariable(name: "expected_returns", scope: !1261, file: !7, line: 559, type: !13, align: 4)
!1261 = distinct !DILexicalBlock(scope: !1259, file: !7, line: 559, column: 5)
!1262 = !DILocalVariable(name: "result", scope: !1263, file: !7, line: 560, type: !13, align: 4)
!1263 = distinct !DILexicalBlock(scope: !1261, file: !7, line: 560, column: 5)
!1264 = !DILocation(line: 557, column: 18, scope: !1254)
!1265 = !DILocation(line: 557, column: 9, scope: !1257)
!1266 = !DILocation(line: 558, column: 23, scope: !1257)
!1267 = !DILocation(line: 558, column: 9, scope: !1259)
!1268 = !DILocation(line: 559, column: 33, scope: !1259)
!1269 = !DILocation(line: 559, column: 9, scope: !1261)
!1270 = !DILocation(line: 560, column: 18, scope: !1261)
!1271 = !DILocation(line: 560, column: 9, scope: !1263)
!1272 = !DILocation(line: 561, column: 5, scope: !1263)
!1273 = !DILocation(line: 562, column: 2, scope: !1254)
!1274 = distinct !DISubprogram(name: "run_test_64", scope: !8, file: !7, line: 565, type: !52, scopeLine: 565, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !1275)
!1275 = !{!1276, !1278, !1280, !1282}
!1276 = !DILocalVariable(name: "y", scope: !1277, file: !7, line: 566, type: !13, align: 4)
!1277 = distinct !DILexicalBlock(scope: !1274, file: !7, line: 566, column: 5)
!1278 = !DILocalVariable(name: "exp_q2", scope: !1279, file: !7, line: 567, type: !14, align: 4)
!1279 = distinct !DILexicalBlock(scope: !1277, file: !7, line: 567, column: 5)
!1280 = !DILocalVariable(name: "expected_returns", scope: !1281, file: !7, line: 568, type: !13, align: 4)
!1281 = distinct !DILexicalBlock(scope: !1279, file: !7, line: 568, column: 5)
!1282 = !DILocalVariable(name: "result", scope: !1283, file: !7, line: 569, type: !13, align: 4)
!1283 = distinct !DILexicalBlock(scope: !1281, file: !7, line: 569, column: 5)
!1284 = !DILocation(line: 566, column: 18, scope: !1274)
!1285 = !DILocation(line: 566, column: 9, scope: !1277)
!1286 = !DILocation(line: 567, column: 23, scope: !1277)
!1287 = !DILocation(line: 567, column: 9, scope: !1279)
!1288 = !DILocation(line: 568, column: 33, scope: !1279)
!1289 = !DILocation(line: 568, column: 9, scope: !1281)
!1290 = !DILocation(line: 569, column: 18, scope: !1281)
!1291 = !DILocation(line: 569, column: 9, scope: !1283)
!1292 = !DILocation(line: 570, column: 5, scope: !1283)
!1293 = !DILocation(line: 571, column: 2, scope: !1274)
!1294 = distinct !DISubprogram(name: "run_test_65", scope: !8, file: !7, line: 574, type: !52, scopeLine: 574, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !1295)
!1295 = !{!1296, !1298, !1300, !1302}
!1296 = !DILocalVariable(name: "y", scope: !1297, file: !7, line: 575, type: !13, align: 4)
!1297 = distinct !DILexicalBlock(scope: !1294, file: !7, line: 575, column: 5)
!1298 = !DILocalVariable(name: "exp_q2", scope: !1299, file: !7, line: 576, type: !14, align: 4)
!1299 = distinct !DILexicalBlock(scope: !1297, file: !7, line: 576, column: 5)
!1300 = !DILocalVariable(name: "expected_returns", scope: !1301, file: !7, line: 577, type: !13, align: 4)
!1301 = distinct !DILexicalBlock(scope: !1299, file: !7, line: 577, column: 5)
!1302 = !DILocalVariable(name: "result", scope: !1303, file: !7, line: 578, type: !13, align: 4)
!1303 = distinct !DILexicalBlock(scope: !1301, file: !7, line: 578, column: 5)
!1304 = !DILocation(line: 575, column: 18, scope: !1294)
!1305 = !DILocation(line: 575, column: 9, scope: !1297)
!1306 = !DILocation(line: 576, column: 23, scope: !1297)
!1307 = !DILocation(line: 576, column: 9, scope: !1299)
!1308 = !DILocation(line: 577, column: 33, scope: !1299)
!1309 = !DILocation(line: 577, column: 9, scope: !1301)
!1310 = !DILocation(line: 578, column: 18, scope: !1301)
!1311 = !DILocation(line: 578, column: 9, scope: !1303)
!1312 = !DILocation(line: 579, column: 5, scope: !1303)
!1313 = !DILocation(line: 580, column: 2, scope: !1294)
!1314 = distinct !DISubprogram(name: "run_test_66", scope: !8, file: !7, line: 583, type: !52, scopeLine: 583, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !1315)
!1315 = !{!1316, !1318, !1320, !1322}
!1316 = !DILocalVariable(name: "y", scope: !1317, file: !7, line: 584, type: !13, align: 4)
!1317 = distinct !DILexicalBlock(scope: !1314, file: !7, line: 584, column: 5)
!1318 = !DILocalVariable(name: "exp_q2", scope: !1319, file: !7, line: 585, type: !14, align: 4)
!1319 = distinct !DILexicalBlock(scope: !1317, file: !7, line: 585, column: 5)
!1320 = !DILocalVariable(name: "expected_returns", scope: !1321, file: !7, line: 586, type: !13, align: 4)
!1321 = distinct !DILexicalBlock(scope: !1319, file: !7, line: 586, column: 5)
!1322 = !DILocalVariable(name: "result", scope: !1323, file: !7, line: 587, type: !13, align: 4)
!1323 = distinct !DILexicalBlock(scope: !1321, file: !7, line: 587, column: 5)
!1324 = !DILocation(line: 584, column: 18, scope: !1314)
!1325 = !DILocation(line: 584, column: 9, scope: !1317)
!1326 = !DILocation(line: 585, column: 23, scope: !1317)
!1327 = !DILocation(line: 585, column: 9, scope: !1319)
!1328 = !DILocation(line: 586, column: 33, scope: !1319)
!1329 = !DILocation(line: 586, column: 9, scope: !1321)
!1330 = !DILocation(line: 587, column: 18, scope: !1321)
!1331 = !DILocation(line: 587, column: 9, scope: !1323)
!1332 = !DILocation(line: 588, column: 5, scope: !1323)
!1333 = !DILocation(line: 589, column: 2, scope: !1314)
!1334 = distinct !DISubprogram(name: "run_test_67", scope: !8, file: !7, line: 592, type: !52, scopeLine: 592, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !1335)
!1335 = !{!1336, !1338, !1340, !1342}
!1336 = !DILocalVariable(name: "y", scope: !1337, file: !7, line: 593, type: !13, align: 4)
!1337 = distinct !DILexicalBlock(scope: !1334, file: !7, line: 593, column: 5)
!1338 = !DILocalVariable(name: "exp_q2", scope: !1339, file: !7, line: 594, type: !14, align: 4)
!1339 = distinct !DILexicalBlock(scope: !1337, file: !7, line: 594, column: 5)
!1340 = !DILocalVariable(name: "expected_returns", scope: !1341, file: !7, line: 595, type: !13, align: 4)
!1341 = distinct !DILexicalBlock(scope: !1339, file: !7, line: 595, column: 5)
!1342 = !DILocalVariable(name: "result", scope: !1343, file: !7, line: 596, type: !13, align: 4)
!1343 = distinct !DILexicalBlock(scope: !1341, file: !7, line: 596, column: 5)
!1344 = !DILocation(line: 593, column: 18, scope: !1334)
!1345 = !DILocation(line: 593, column: 9, scope: !1337)
!1346 = !DILocation(line: 594, column: 23, scope: !1337)
!1347 = !DILocation(line: 594, column: 9, scope: !1339)
!1348 = !DILocation(line: 595, column: 33, scope: !1339)
!1349 = !DILocation(line: 595, column: 9, scope: !1341)
!1350 = !DILocation(line: 596, column: 18, scope: !1341)
!1351 = !DILocation(line: 596, column: 9, scope: !1343)
!1352 = !DILocation(line: 597, column: 5, scope: !1343)
!1353 = !DILocation(line: 598, column: 2, scope: !1334)
!1354 = distinct !DISubprogram(name: "run_test_68", scope: !8, file: !7, line: 601, type: !52, scopeLine: 601, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !1355)
!1355 = !{!1356, !1358, !1360, !1362}
!1356 = !DILocalVariable(name: "y", scope: !1357, file: !7, line: 602, type: !13, align: 4)
!1357 = distinct !DILexicalBlock(scope: !1354, file: !7, line: 602, column: 5)
!1358 = !DILocalVariable(name: "exp_q2", scope: !1359, file: !7, line: 603, type: !14, align: 4)
!1359 = distinct !DILexicalBlock(scope: !1357, file: !7, line: 603, column: 5)
!1360 = !DILocalVariable(name: "expected_returns", scope: !1361, file: !7, line: 604, type: !13, align: 4)
!1361 = distinct !DILexicalBlock(scope: !1359, file: !7, line: 604, column: 5)
!1362 = !DILocalVariable(name: "result", scope: !1363, file: !7, line: 605, type: !13, align: 4)
!1363 = distinct !DILexicalBlock(scope: !1361, file: !7, line: 605, column: 5)
!1364 = !DILocation(line: 602, column: 18, scope: !1354)
!1365 = !DILocation(line: 602, column: 9, scope: !1357)
!1366 = !DILocation(line: 603, column: 23, scope: !1357)
!1367 = !DILocation(line: 603, column: 9, scope: !1359)
!1368 = !DILocation(line: 604, column: 33, scope: !1359)
!1369 = !DILocation(line: 604, column: 9, scope: !1361)
!1370 = !DILocation(line: 605, column: 18, scope: !1361)
!1371 = !DILocation(line: 605, column: 9, scope: !1363)
!1372 = !DILocation(line: 606, column: 5, scope: !1363)
!1373 = !DILocation(line: 607, column: 2, scope: !1354)
!1374 = distinct !DISubprogram(name: "run_test_69", scope: !8, file: !7, line: 610, type: !52, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !1375)
!1375 = !{!1376, !1378, !1380, !1382}
!1376 = !DILocalVariable(name: "y", scope: !1377, file: !7, line: 611, type: !13, align: 4)
!1377 = distinct !DILexicalBlock(scope: !1374, file: !7, line: 611, column: 5)
!1378 = !DILocalVariable(name: "exp_q2", scope: !1379, file: !7, line: 612, type: !14, align: 4)
!1379 = distinct !DILexicalBlock(scope: !1377, file: !7, line: 612, column: 5)
!1380 = !DILocalVariable(name: "expected_returns", scope: !1381, file: !7, line: 613, type: !13, align: 4)
!1381 = distinct !DILexicalBlock(scope: !1379, file: !7, line: 613, column: 5)
!1382 = !DILocalVariable(name: "result", scope: !1383, file: !7, line: 614, type: !13, align: 4)
!1383 = distinct !DILexicalBlock(scope: !1381, file: !7, line: 614, column: 5)
!1384 = !DILocation(line: 611, column: 18, scope: !1374)
!1385 = !DILocation(line: 611, column: 9, scope: !1377)
!1386 = !DILocation(line: 612, column: 23, scope: !1377)
!1387 = !DILocation(line: 612, column: 9, scope: !1379)
!1388 = !DILocation(line: 613, column: 33, scope: !1379)
!1389 = !DILocation(line: 613, column: 9, scope: !1381)
!1390 = !DILocation(line: 614, column: 18, scope: !1381)
!1391 = !DILocation(line: 614, column: 9, scope: !1383)
!1392 = !DILocation(line: 615, column: 5, scope: !1383)
!1393 = !DILocation(line: 616, column: 2, scope: !1374)
!1394 = distinct !DISubprogram(name: "run_test_70", scope: !8, file: !7, line: 619, type: !52, scopeLine: 619, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !1395)
!1395 = !{!1396, !1398, !1400, !1402}
!1396 = !DILocalVariable(name: "y", scope: !1397, file: !7, line: 620, type: !13, align: 4)
!1397 = distinct !DILexicalBlock(scope: !1394, file: !7, line: 620, column: 5)
!1398 = !DILocalVariable(name: "exp_q2", scope: !1399, file: !7, line: 621, type: !14, align: 4)
!1399 = distinct !DILexicalBlock(scope: !1397, file: !7, line: 621, column: 5)
!1400 = !DILocalVariable(name: "expected_returns", scope: !1401, file: !7, line: 622, type: !13, align: 4)
!1401 = distinct !DILexicalBlock(scope: !1399, file: !7, line: 622, column: 5)
!1402 = !DILocalVariable(name: "result", scope: !1403, file: !7, line: 623, type: !13, align: 4)
!1403 = distinct !DILexicalBlock(scope: !1401, file: !7, line: 623, column: 5)
!1404 = !DILocation(line: 620, column: 18, scope: !1394)
!1405 = !DILocation(line: 620, column: 9, scope: !1397)
!1406 = !DILocation(line: 621, column: 23, scope: !1397)
!1407 = !DILocation(line: 621, column: 9, scope: !1399)
!1408 = !DILocation(line: 622, column: 33, scope: !1399)
!1409 = !DILocation(line: 622, column: 9, scope: !1401)
!1410 = !DILocation(line: 623, column: 18, scope: !1401)
!1411 = !DILocation(line: 623, column: 9, scope: !1403)
!1412 = !DILocation(line: 624, column: 5, scope: !1403)
!1413 = !DILocation(line: 625, column: 2, scope: !1394)
!1414 = distinct !DISubprogram(name: "run_test_71", scope: !8, file: !7, line: 628, type: !52, scopeLine: 628, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !1415)
!1415 = !{!1416, !1418, !1420, !1422}
!1416 = !DILocalVariable(name: "y", scope: !1417, file: !7, line: 629, type: !13, align: 4)
!1417 = distinct !DILexicalBlock(scope: !1414, file: !7, line: 629, column: 5)
!1418 = !DILocalVariable(name: "exp_q2", scope: !1419, file: !7, line: 630, type: !14, align: 4)
!1419 = distinct !DILexicalBlock(scope: !1417, file: !7, line: 630, column: 5)
!1420 = !DILocalVariable(name: "expected_returns", scope: !1421, file: !7, line: 631, type: !13, align: 4)
!1421 = distinct !DILexicalBlock(scope: !1419, file: !7, line: 631, column: 5)
!1422 = !DILocalVariable(name: "result", scope: !1423, file: !7, line: 632, type: !13, align: 4)
!1423 = distinct !DILexicalBlock(scope: !1421, file: !7, line: 632, column: 5)
!1424 = !DILocation(line: 629, column: 18, scope: !1414)
!1425 = !DILocation(line: 629, column: 9, scope: !1417)
!1426 = !DILocation(line: 630, column: 23, scope: !1417)
!1427 = !DILocation(line: 630, column: 9, scope: !1419)
!1428 = !DILocation(line: 631, column: 33, scope: !1419)
!1429 = !DILocation(line: 631, column: 9, scope: !1421)
!1430 = !DILocation(line: 632, column: 18, scope: !1421)
!1431 = !DILocation(line: 632, column: 9, scope: !1423)
!1432 = !DILocation(line: 633, column: 5, scope: !1423)
!1433 = !DILocation(line: 634, column: 2, scope: !1414)
