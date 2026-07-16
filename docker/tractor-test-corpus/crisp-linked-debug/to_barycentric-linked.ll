; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; ASSERT EQ: i1 1 = call i1 @run_test_1()
; ASSERT EQ: i1 1 = call i1 @run_test_2()
; ASSERT EQ: i1 1 = call i1 @run_test_3()
; ASSERT EQ: i1 1 = call i1 @run_test_4()
; ASSERT EQ: i1 1 = call i1 @run_test_5()

; Function Attrs: nonlazybind uwtable
define double @to_barycentric(double %0, double %1, double %2, double %3) unnamed_addr #0 !dbg !6 {
start:
  %4 = alloca { float, float }, align 4
  %5 = alloca double, align 8
  %6 = alloca { float, float }, align 4
  %7 = alloca { float, float }, align 4
  %8 = alloca { float, float }, align 4
  %9 = alloca { float, float }, align 4
  %10 = alloca { float, float }, align 4
  %11 = alloca double, align 8
  %p = alloca { float, float }, align 4
  %12 = alloca double, align 8
  %p3 = alloca { float, float }, align 4
  %13 = alloca double, align 8
  %p2 = alloca { float, float }, align 4
  %14 = alloca double, align 8
  %p1 = alloca { float, float }, align 4
  store double %0, ptr %14, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %p1, ptr align 8 %14, i64 8, i1 false)
  store double %1, ptr %13, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %p2, ptr align 8 %13, i64 8, i1 false)
  store double %2, ptr %12, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %p3, ptr align 8 %12, i64 8, i1 false)
  store double %3, ptr %11, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %p, ptr align 8 %11, i64 8, i1 false)
    #dbg_declare(ptr %p1, !21, !DIExpression(), !25)
    #dbg_declare(ptr %p2, !22, !DIExpression(), !26)
    #dbg_declare(ptr %p3, !23, !DIExpression(), !27)
    #dbg_declare(ptr %p, !24, !DIExpression(), !28)
  %15 = getelementptr inbounds { float, float }, ptr %p1, i32 0, i32 0, !dbg !29
  %16 = load float, ptr %15, align 4, !dbg !29, !noundef !19
  %17 = getelementptr inbounds { float, float }, ptr %p1, i32 0, i32 1, !dbg !29
  %18 = load float, ptr %17, align 4, !dbg !29, !noundef !19
  %19 = getelementptr inbounds { float, float }, ptr %10, i32 0, i32 0, !dbg !29
  store float %16, ptr %19, align 4, !dbg !29
  %20 = getelementptr inbounds { float, float }, ptr %10, i32 0, i32 1, !dbg !29
  store float %18, ptr %20, align 4, !dbg !29
  %21 = load double, ptr %10, align 4, !dbg !29
  %22 = getelementptr inbounds { float, float }, ptr %p2, i32 0, i32 0, !dbg !29
  %23 = load float, ptr %22, align 4, !dbg !29, !noundef !19
  %24 = getelementptr inbounds { float, float }, ptr %p2, i32 0, i32 1, !dbg !29
  %25 = load float, ptr %24, align 4, !dbg !29, !noundef !19
  %26 = getelementptr inbounds { float, float }, ptr %9, i32 0, i32 0, !dbg !29
  store float %23, ptr %26, align 4, !dbg !29
  %27 = getelementptr inbounds { float, float }, ptr %9, i32 0, i32 1, !dbg !29
  store float %25, ptr %27, align 4, !dbg !29
  %28 = load double, ptr %9, align 4, !dbg !29
  %29 = getelementptr inbounds { float, float }, ptr %p3, i32 0, i32 0, !dbg !29
  %30 = load float, ptr %29, align 4, !dbg !29, !noundef !19
  %31 = getelementptr inbounds { float, float }, ptr %p3, i32 0, i32 1, !dbg !29
  %32 = load float, ptr %31, align 4, !dbg !29, !noundef !19
  %33 = getelementptr inbounds { float, float }, ptr %8, i32 0, i32 0, !dbg !29
  store float %30, ptr %33, align 4, !dbg !29
  %34 = getelementptr inbounds { float, float }, ptr %8, i32 0, i32 1, !dbg !29
  store float %32, ptr %34, align 4, !dbg !29
  %35 = load double, ptr %8, align 4, !dbg !29
  %36 = getelementptr inbounds { float, float }, ptr %p, i32 0, i32 0, !dbg !29
  %37 = load float, ptr %36, align 4, !dbg !29, !noundef !19
  %38 = getelementptr inbounds { float, float }, ptr %p, i32 0, i32 1, !dbg !29
  %39 = load float, ptr %38, align 4, !dbg !29, !noundef !19
  %40 = getelementptr inbounds { float, float }, ptr %7, i32 0, i32 0, !dbg !29
  store float %37, ptr %40, align 4, !dbg !29
  %41 = getelementptr inbounds { float, float }, ptr %7, i32 0, i32 1, !dbg !29
  store float %39, ptr %41, align 4, !dbg !29
  %42 = load double, ptr %7, align 4, !dbg !29
  %43 = call double @_ZN18to_barycentric_lib3src3lib14to_barycentric17h7641e4e27cd221c8E(double %21, double %28, double %35, double %42), !dbg !29
  store double %43, ptr %5, align 8, !dbg !29
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %6, ptr align 8 %5, i64 8, i1 false), !dbg !29
  %44 = getelementptr inbounds { float, float }, ptr %6, i32 0, i32 0, !dbg !29
  %45 = load float, ptr %44, align 4, !dbg !29, !noundef !19
  %46 = getelementptr inbounds { float, float }, ptr %6, i32 0, i32 1, !dbg !29
  %47 = load float, ptr %46, align 4, !dbg !29, !noundef !19
  %48 = getelementptr inbounds { float, float }, ptr %4, i32 0, i32 0, !dbg !30
  store float %45, ptr %48, align 4, !dbg !30
  %49 = getelementptr inbounds { float, float }, ptr %4, i32 0, i32 1, !dbg !30
  store float %47, ptr %49, align 4, !dbg !30
  %50 = load double, ptr %4, align 4, !dbg !30
  ret double %50, !dbg !30
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nonlazybind uwtable
define internal double @_ZN18to_barycentric_lib3src3lib14to_barycentric17h7641e4e27cd221c8E(double %0, double %1, double %2, double %3) unnamed_addr #0 !dbg !31 {
start:
  %4 = alloca { float, float }, align 4
  %v.dbg.spill = alloca float, align 4
  %u.dbg.spill = alloca float, align 4
  %inv_denom.dbg.spill = alloca float, align 4
  %dot12.dbg.spill = alloca float, align 4
  %dot11.dbg.spill = alloca float, align 4
  %dot02.dbg.spill = alloca float, align 4
  %dot01.dbg.spill = alloca float, align 4
  %dot00.dbg.spill = alloca float, align 4
  %v2.dbg.spill = alloca { float, float }, align 4
  %v1.dbg.spill = alloca { float, float }, align 4
  %v0.dbg.spill = alloca { float, float }, align 4
  %5 = alloca double, align 8
  %p = alloca { float, float }, align 4
  %6 = alloca double, align 8
  %p3 = alloca { float, float }, align 4
  %7 = alloca double, align 8
  %p2 = alloca { float, float }, align 4
  %8 = alloca double, align 8
  %p1 = alloca { float, float }, align 4
  store double %0, ptr %8, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %p1, ptr align 8 %8, i64 8, i1 false)
  store double %1, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %p2, ptr align 8 %7, i64 8, i1 false)
  store double %2, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %p3, ptr align 8 %6, i64 8, i1 false)
  store double %3, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %p, ptr align 8 %5, i64 8, i1 false)
    #dbg_declare(ptr %p1, !33, !DIExpression(), !59)
    #dbg_declare(ptr %p2, !34, !DIExpression(), !60)
    #dbg_declare(ptr %p3, !35, !DIExpression(), !61)
    #dbg_declare(ptr %p, !36, !DIExpression(), !62)
  %9 = getelementptr inbounds { float, float }, ptr %p3, i32 0, i32 0, !dbg !63
  %10 = load float, ptr %9, align 4, !dbg !63, !noundef !19
  %11 = getelementptr inbounds { float, float }, ptr %p3, i32 0, i32 1, !dbg !63
  %12 = load float, ptr %11, align 4, !dbg !63, !noundef !19
  %13 = getelementptr inbounds { float, float }, ptr %p1, i32 0, i32 0, !dbg !63
  %14 = load float, ptr %13, align 4, !dbg !63, !noundef !19
  %15 = getelementptr inbounds { float, float }, ptr %p1, i32 0, i32 1, !dbg !63
  %16 = load float, ptr %15, align 4, !dbg !63, !noundef !19
  %17 = call { float, float } @_ZN18to_barycentric_lib3src3lib7lm_sub217hb7266d5391cce141E(float %10, float %12, float %14, float %16), !dbg !63
  %v0.0 = extractvalue { float, float } %17, 0, !dbg !63
  %v0.1 = extractvalue { float, float } %17, 1, !dbg !63
  %18 = getelementptr inbounds { float, float }, ptr %v0.dbg.spill, i32 0, i32 0, !dbg !63
  store float %v0.0, ptr %18, align 4, !dbg !63
  %19 = getelementptr inbounds { float, float }, ptr %v0.dbg.spill, i32 0, i32 1, !dbg !63
  store float %v0.1, ptr %19, align 4, !dbg !63
    #dbg_declare(ptr %v0.dbg.spill, !37, !DIExpression(), !64)
  %20 = getelementptr inbounds { float, float }, ptr %p2, i32 0, i32 0, !dbg !65
  %21 = load float, ptr %20, align 4, !dbg !65, !noundef !19
  %22 = getelementptr inbounds { float, float }, ptr %p2, i32 0, i32 1, !dbg !65
  %23 = load float, ptr %22, align 4, !dbg !65, !noundef !19
  %24 = getelementptr inbounds { float, float }, ptr %p1, i32 0, i32 0, !dbg !65
  %25 = load float, ptr %24, align 4, !dbg !65, !noundef !19
  %26 = getelementptr inbounds { float, float }, ptr %p1, i32 0, i32 1, !dbg !65
  %27 = load float, ptr %26, align 4, !dbg !65, !noundef !19
  %28 = call { float, float } @_ZN18to_barycentric_lib3src3lib7lm_sub217hb7266d5391cce141E(float %21, float %23, float %25, float %27), !dbg !65
  %v1.0 = extractvalue { float, float } %28, 0, !dbg !65
  %v1.1 = extractvalue { float, float } %28, 1, !dbg !65
  %29 = getelementptr inbounds { float, float }, ptr %v1.dbg.spill, i32 0, i32 0, !dbg !65
  store float %v1.0, ptr %29, align 4, !dbg !65
  %30 = getelementptr inbounds { float, float }, ptr %v1.dbg.spill, i32 0, i32 1, !dbg !65
  store float %v1.1, ptr %30, align 4, !dbg !65
    #dbg_declare(ptr %v1.dbg.spill, !39, !DIExpression(), !66)
  %31 = getelementptr inbounds { float, float }, ptr %p, i32 0, i32 0, !dbg !67
  %32 = load float, ptr %31, align 4, !dbg !67, !noundef !19
  %33 = getelementptr inbounds { float, float }, ptr %p, i32 0, i32 1, !dbg !67
  %34 = load float, ptr %33, align 4, !dbg !67, !noundef !19
  %35 = getelementptr inbounds { float, float }, ptr %p1, i32 0, i32 0, !dbg !67
  %36 = load float, ptr %35, align 4, !dbg !67, !noundef !19
  %37 = getelementptr inbounds { float, float }, ptr %p1, i32 0, i32 1, !dbg !67
  %38 = load float, ptr %37, align 4, !dbg !67, !noundef !19
  %39 = call { float, float } @_ZN18to_barycentric_lib3src3lib7lm_sub217hb7266d5391cce141E(float %32, float %34, float %36, float %38), !dbg !67
  %v2.0 = extractvalue { float, float } %39, 0, !dbg !67
  %v2.1 = extractvalue { float, float } %39, 1, !dbg !67
  %40 = getelementptr inbounds { float, float }, ptr %v2.dbg.spill, i32 0, i32 0, !dbg !67
  store float %v2.0, ptr %40, align 4, !dbg !67
  %41 = getelementptr inbounds { float, float }, ptr %v2.dbg.spill, i32 0, i32 1, !dbg !67
  store float %v2.1, ptr %41, align 4, !dbg !67
    #dbg_declare(ptr %v2.dbg.spill, !41, !DIExpression(), !68)
  %dot00 = call float @_ZN18to_barycentric_lib3src3lib7lm_dot217hb483e39b746b9cacE(float %v0.0, float %v0.1, float %v0.0, float %v0.1), !dbg !69
  store float %dot00, ptr %dot00.dbg.spill, align 4, !dbg !69
    #dbg_declare(ptr %dot00.dbg.spill, !43, !DIExpression(), !70)
  %dot01 = call float @_ZN18to_barycentric_lib3src3lib7lm_dot217hb483e39b746b9cacE(float %v0.0, float %v0.1, float %v1.0, float %v1.1), !dbg !71
  store float %dot01, ptr %dot01.dbg.spill, align 4, !dbg !71
    #dbg_declare(ptr %dot01.dbg.spill, !45, !DIExpression(), !72)
  %dot02 = call float @_ZN18to_barycentric_lib3src3lib7lm_dot217hb483e39b746b9cacE(float %v0.0, float %v0.1, float %v2.0, float %v2.1), !dbg !73
  store float %dot02, ptr %dot02.dbg.spill, align 4, !dbg !73
    #dbg_declare(ptr %dot02.dbg.spill, !47, !DIExpression(), !74)
  %dot11 = call float @_ZN18to_barycentric_lib3src3lib7lm_dot217hb483e39b746b9cacE(float %v1.0, float %v1.1, float %v1.0, float %v1.1), !dbg !75
  store float %dot11, ptr %dot11.dbg.spill, align 4, !dbg !75
    #dbg_declare(ptr %dot11.dbg.spill, !49, !DIExpression(), !76)
  %dot12 = call float @_ZN18to_barycentric_lib3src3lib7lm_dot217hb483e39b746b9cacE(float %v1.0, float %v1.1, float %v2.0, float %v2.1), !dbg !77
  store float %dot12, ptr %dot12.dbg.spill, align 4, !dbg !77
    #dbg_declare(ptr %dot12.dbg.spill, !51, !DIExpression(), !78)
  %_25 = fmul float %dot00, %dot11, !dbg !79
  %_28 = fmul float %dot01, %dot01, !dbg !80
  %_24 = fsub float %_25, %_28, !dbg !81
  %inv_denom = fdiv float 1.000000e+00, %_24, !dbg !82
  store float %inv_denom, ptr %inv_denom.dbg.spill, align 4, !dbg !82
    #dbg_declare(ptr %inv_denom.dbg.spill, !53, !DIExpression(), !83)
  %_33 = fmul float %dot11, %dot02, !dbg !84
  %_36 = fmul float %dot01, %dot12, !dbg !85
  %_32 = fsub float %_33, %_36, !dbg !86
  %u = fmul float %_32, %inv_denom, !dbg !86
  store float %u, ptr %u.dbg.spill, align 4, !dbg !86
    #dbg_declare(ptr %u.dbg.spill, !55, !DIExpression(), !87)
  %_41 = fmul float %dot00, %dot12, !dbg !88
  %_44 = fmul float %dot01, %dot02, !dbg !89
  %_40 = fsub float %_41, %_44, !dbg !90
  %v = fmul float %_40, %inv_denom, !dbg !90
  store float %v, ptr %v.dbg.spill, align 4, !dbg !90
    #dbg_declare(ptr %v.dbg.spill, !57, !DIExpression(), !91)
  %42 = call { float, float } @_ZN18to_barycentric_lib3src3lib5lm_v217hbf8d27568c02ef3eE(float %u, float %v), !dbg !92
  %43 = extractvalue { float, float } %42, 0, !dbg !92
  %44 = extractvalue { float, float } %42, 1, !dbg !92
  %45 = getelementptr inbounds { float, float }, ptr %4, i32 0, i32 0, !dbg !93
  store float %43, ptr %45, align 4, !dbg !93
  %46 = getelementptr inbounds { float, float }, ptr %4, i32 0, i32 1, !dbg !93
  store float %44, ptr %46, align 4, !dbg !93
  %47 = load double, ptr %4, align 4, !dbg !93
  ret double %47, !dbg !93
}

; Function Attrs: nonlazybind uwtable
define internal { float, float } @_ZN18to_barycentric_lib3src3lib7lm_sub217hb7266d5391cce141E(float %a.0, float %a.1, float %b.0, float %b.1) unnamed_addr #0 !dbg !94 {
start:
  %b.dbg.spill = alloca { float, float }, align 4
  %a.dbg.spill = alloca { float, float }, align 4
  %0 = getelementptr inbounds { float, float }, ptr %a.dbg.spill, i32 0, i32 0
  store float %a.0, ptr %0, align 4
  %1 = getelementptr inbounds { float, float }, ptr %a.dbg.spill, i32 0, i32 1
  store float %a.1, ptr %1, align 4
    #dbg_declare(ptr %a.dbg.spill, !98, !DIExpression(), !100)
  %2 = getelementptr inbounds { float, float }, ptr %b.dbg.spill, i32 0, i32 0
  store float %b.0, ptr %2, align 4
  %3 = getelementptr inbounds { float, float }, ptr %b.dbg.spill, i32 0, i32 1
  store float %b.1, ptr %3, align 4
    #dbg_declare(ptr %b.dbg.spill, !99, !DIExpression(), !101)
  %_3 = fsub float %a.0, %b.0, !dbg !102
  %_6 = fsub float %a.1, %b.1, !dbg !103
  %4 = call { float, float } @_ZN18to_barycentric_lib3src3lib5lm_v217hbf8d27568c02ef3eE(float %_3, float %_6), !dbg !104
  %5 = extractvalue { float, float } %4, 0, !dbg !104
  %6 = extractvalue { float, float } %4, 1, !dbg !104
  %7 = insertvalue { float, float } poison, float %5, 0, !dbg !105
  %8 = insertvalue { float, float } %7, float %6, 1, !dbg !105
  ret { float, float } %8, !dbg !105
}

; Function Attrs: nonlazybind uwtable
define internal float @_ZN18to_barycentric_lib3src3lib7lm_dot217hb483e39b746b9cacE(float %a.0, float %a.1, float %b.0, float %b.1) unnamed_addr #0 !dbg !106 {
start:
  %b.dbg.spill = alloca { float, float }, align 4
  %a.dbg.spill = alloca { float, float }, align 4
  %0 = getelementptr inbounds { float, float }, ptr %a.dbg.spill, i32 0, i32 0
  store float %a.0, ptr %0, align 4
  %1 = getelementptr inbounds { float, float }, ptr %a.dbg.spill, i32 0, i32 1
  store float %a.1, ptr %1, align 4
    #dbg_declare(ptr %a.dbg.spill, !110, !DIExpression(), !112)
  %2 = getelementptr inbounds { float, float }, ptr %b.dbg.spill, i32 0, i32 0
  store float %b.0, ptr %2, align 4
  %3 = getelementptr inbounds { float, float }, ptr %b.dbg.spill, i32 0, i32 1
  store float %b.1, ptr %3, align 4
    #dbg_declare(ptr %b.dbg.spill, !111, !DIExpression(), !113)
  %_3 = fmul float %a.0, %b.0, !dbg !114
  %_6 = fmul float %a.1, %b.1, !dbg !115
  %4 = fadd float %_3, %_6, !dbg !114
  ret float %4, !dbg !116
}

; Function Attrs: nonlazybind uwtable
define internal { float, float } @_ZN18to_barycentric_lib3src3lib5lm_v217hbf8d27568c02ef3eE(float %x, float %y) unnamed_addr #0 !dbg !117 {
start:
  %y.dbg.spill = alloca float, align 4
  %x.dbg.spill = alloca float, align 4
  %0 = alloca { float, float }, align 4
  store float %x, ptr %x.dbg.spill, align 4
    #dbg_declare(ptr %x.dbg.spill, !121, !DIExpression(), !123)
  store float %y, ptr %y.dbg.spill, align 4
    #dbg_declare(ptr %y.dbg.spill, !122, !DIExpression(), !124)
  store float %x, ptr %0, align 4, !dbg !125
  %1 = getelementptr inbounds { float, float }, ptr %0, i32 0, i32 1, !dbg !125
  store float %y, ptr %1, align 4, !dbg !125
  %2 = getelementptr inbounds { float, float }, ptr %0, i32 0, i32 0, !dbg !126
  %3 = load float, ptr %2, align 4, !dbg !126, !noundef !19
  %4 = getelementptr inbounds { float, float }, ptr %0, i32 0, i32 1, !dbg !126
  %5 = load float, ptr %4, align 4, !dbg !126, !noundef !19
  %6 = insertvalue { float, float } poison, float %3, 0, !dbg !126
  %7 = insertvalue { float, float } %6, float %5, 1, !dbg !126
  ret { float, float } %7, !dbg !126
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_1() unnamed_addr #0 !dbg !127 {
start:
  %result.dbg.spill = alloca { float, float }, align 4
  %0 = alloca double, align 8
  %1 = alloca { float, float }, align 4
  %2 = alloca { float, float }, align 4
  %3 = alloca { float, float }, align 4
  %4 = alloca { float, float }, align 4
  %5 = alloca { float, float }, align 4
  %p = alloca { float, float }, align 4
  %p3 = alloca { float, float }, align 4
  %p2 = alloca { float, float }, align 4
  %p1 = alloca { float, float }, align 4
  %6 = alloca i8, align 1
    #dbg_declare(ptr %p1, !132, !DIExpression(), !142)
    #dbg_declare(ptr %p2, !134, !DIExpression(), !143)
    #dbg_declare(ptr %p3, !136, !DIExpression(), !144)
    #dbg_declare(ptr %p, !138, !DIExpression(), !145)
  store float 0x3FB99999A0000000, ptr %p1, align 4, !dbg !146
  %7 = getelementptr inbounds { float, float }, ptr %p1, i32 0, i32 1, !dbg !146
  store float 0x3FC99999A0000000, ptr %7, align 4, !dbg !146
  store float 0x3FF19999A0000000, ptr %p2, align 4, !dbg !147
  %8 = getelementptr inbounds { float, float }, ptr %p2, i32 0, i32 1, !dbg !147
  store float 0x3FF3333340000000, ptr %8, align 4, !dbg !147
  store float 0x4000CCCCC0000000, ptr %p3, align 4, !dbg !148
  %9 = getelementptr inbounds { float, float }, ptr %p3, i32 0, i32 1, !dbg !148
  store float 0x40019999A0000000, ptr %9, align 4, !dbg !148
  store float 0x4008CCCCC0000000, ptr %p, align 4, !dbg !149
  %10 = getelementptr inbounds { float, float }, ptr %p, i32 0, i32 1, !dbg !149
  store float 0x40099999A0000000, ptr %10, align 4, !dbg !149
  %11 = getelementptr inbounds { float, float }, ptr %p1, i32 0, i32 0, !dbg !150
  %12 = load float, ptr %11, align 4, !dbg !150, !noundef !19
  %13 = getelementptr inbounds { float, float }, ptr %p1, i32 0, i32 1, !dbg !150
  %14 = load float, ptr %13, align 4, !dbg !150, !noundef !19
  %15 = getelementptr inbounds { float, float }, ptr %5, i32 0, i32 0, !dbg !150
  store float %12, ptr %15, align 4, !dbg !150
  %16 = getelementptr inbounds { float, float }, ptr %5, i32 0, i32 1, !dbg !150
  store float %14, ptr %16, align 4, !dbg !150
  %17 = load double, ptr %5, align 4, !dbg !150
  %18 = getelementptr inbounds { float, float }, ptr %p2, i32 0, i32 0, !dbg !150
  %19 = load float, ptr %18, align 4, !dbg !150, !noundef !19
  %20 = getelementptr inbounds { float, float }, ptr %p2, i32 0, i32 1, !dbg !150
  %21 = load float, ptr %20, align 4, !dbg !150, !noundef !19
  %22 = getelementptr inbounds { float, float }, ptr %4, i32 0, i32 0, !dbg !150
  store float %19, ptr %22, align 4, !dbg !150
  %23 = getelementptr inbounds { float, float }, ptr %4, i32 0, i32 1, !dbg !150
  store float %21, ptr %23, align 4, !dbg !150
  %24 = load double, ptr %4, align 4, !dbg !150
  %25 = getelementptr inbounds { float, float }, ptr %p3, i32 0, i32 0, !dbg !150
  %26 = load float, ptr %25, align 4, !dbg !150, !noundef !19
  %27 = getelementptr inbounds { float, float }, ptr %p3, i32 0, i32 1, !dbg !150
  %28 = load float, ptr %27, align 4, !dbg !150, !noundef !19
  %29 = getelementptr inbounds { float, float }, ptr %3, i32 0, i32 0, !dbg !150
  store float %26, ptr %29, align 4, !dbg !150
  %30 = getelementptr inbounds { float, float }, ptr %3, i32 0, i32 1, !dbg !150
  store float %28, ptr %30, align 4, !dbg !150
  %31 = load double, ptr %3, align 4, !dbg !150
  %32 = getelementptr inbounds { float, float }, ptr %p, i32 0, i32 0, !dbg !150
  %33 = load float, ptr %32, align 4, !dbg !150, !noundef !19
  %34 = getelementptr inbounds { float, float }, ptr %p, i32 0, i32 1, !dbg !150
  %35 = load float, ptr %34, align 4, !dbg !150, !noundef !19
  %36 = getelementptr inbounds { float, float }, ptr %2, i32 0, i32 0, !dbg !150
  store float %33, ptr %36, align 4, !dbg !150
  %37 = getelementptr inbounds { float, float }, ptr %2, i32 0, i32 1, !dbg !150
  store float %35, ptr %37, align 4, !dbg !150
  %38 = load double, ptr %2, align 4, !dbg !150
  %39 = call double @to_barycentric(double %17, double %24, double %31, double %38), !dbg !150
  store double %39, ptr %0, align 8, !dbg !150
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr align 8 %0, i64 8, i1 false), !dbg !150
  %40 = getelementptr inbounds { float, float }, ptr %1, i32 0, i32 0, !dbg !150
  %result.0 = load float, ptr %40, align 4, !dbg !150, !noundef !19
  %41 = getelementptr inbounds { float, float }, ptr %1, i32 0, i32 1, !dbg !150
  %result.1 = load float, ptr %41, align 4, !dbg !150, !noundef !19
  %42 = getelementptr inbounds { float, float }, ptr %result.dbg.spill, i32 0, i32 0, !dbg !150
  store float %result.0, ptr %42, align 4, !dbg !150
  %43 = getelementptr inbounds { float, float }, ptr %result.dbg.spill, i32 0, i32 1, !dbg !150
  store float %result.1, ptr %43, align 4, !dbg !150
    #dbg_declare(ptr %result.dbg.spill, !140, !DIExpression(), !151)
  %_6 = fcmp oeq float %result.0, -0.000000e+00, !dbg !152
  br i1 %_6, label %bb3, label %bb2, !dbg !152

bb2:                                              ; preds = %start
  store i8 0, ptr %6, align 1, !dbg !152
  br label %bb4, !dbg !152

bb3:                                              ; preds = %start
  %_8 = fcmp oeq float %result.1, 4.000000e+00, !dbg !153
  %44 = zext i1 %_8 to i8, !dbg !152
  store i8 %44, ptr %6, align 1, !dbg !152
  br label %bb4, !dbg !152

bb4:                                              ; preds = %bb3, %bb2
  %45 = load i8, ptr %6, align 1, !dbg !154, !range !155, !noundef !19
  %46 = trunc i8 %45 to i1, !dbg !154
  ret i1 %46, !dbg !154
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_2() unnamed_addr #0 !dbg !156 {
start:
  %result.dbg.spill = alloca { float, float }, align 4
  %0 = alloca double, align 8
  %1 = alloca { float, float }, align 4
  %2 = alloca { float, float }, align 4
  %3 = alloca { float, float }, align 4
  %4 = alloca { float, float }, align 4
  %5 = alloca { float, float }, align 4
  %p = alloca { float, float }, align 4
  %p3 = alloca { float, float }, align 4
  %p2 = alloca { float, float }, align 4
  %p1 = alloca { float, float }, align 4
  %6 = alloca i8, align 1
    #dbg_declare(ptr %p1, !158, !DIExpression(), !168)
    #dbg_declare(ptr %p2, !160, !DIExpression(), !169)
    #dbg_declare(ptr %p3, !162, !DIExpression(), !170)
    #dbg_declare(ptr %p, !164, !DIExpression(), !171)
  store float 0x3CC2621440000000, ptr %p1, align 4, !dbg !172
  %7 = getelementptr inbounds { float, float }, ptr %p1, i32 0, i32 1, !dbg !172
  store float 0xB8A8C1A080000000, ptr %7, align 4, !dbg !172
  store float 0xBFFB531800000000, ptr %p2, align 4, !dbg !173
  %8 = getelementptr inbounds { float, float }, ptr %p2, i32 0, i32 1, !dbg !173
  store float 0x3F47645C40000000, ptr %8, align 4, !dbg !173
  store float 0xBEDC459E00000000, ptr %p3, align 4, !dbg !174
  %9 = getelementptr inbounds { float, float }, ptr %p3, i32 0, i32 1, !dbg !174
  store float 0x401EEB6200000000, ptr %9, align 4, !dbg !174
  store float 0x3EA322DB80000000, ptr %p, align 4, !dbg !175
  %10 = getelementptr inbounds { float, float }, ptr %p, i32 0, i32 1, !dbg !175
  store float 0x3EC190E720000000, ptr %10, align 4, !dbg !175
  %11 = getelementptr inbounds { float, float }, ptr %p1, i32 0, i32 0, !dbg !176
  %12 = load float, ptr %11, align 4, !dbg !176, !noundef !19
  %13 = getelementptr inbounds { float, float }, ptr %p1, i32 0, i32 1, !dbg !176
  %14 = load float, ptr %13, align 4, !dbg !176, !noundef !19
  %15 = getelementptr inbounds { float, float }, ptr %5, i32 0, i32 0, !dbg !176
  store float %12, ptr %15, align 4, !dbg !176
  %16 = getelementptr inbounds { float, float }, ptr %5, i32 0, i32 1, !dbg !176
  store float %14, ptr %16, align 4, !dbg !176
  %17 = load double, ptr %5, align 4, !dbg !176
  %18 = getelementptr inbounds { float, float }, ptr %p2, i32 0, i32 0, !dbg !176
  %19 = load float, ptr %18, align 4, !dbg !176, !noundef !19
  %20 = getelementptr inbounds { float, float }, ptr %p2, i32 0, i32 1, !dbg !176
  %21 = load float, ptr %20, align 4, !dbg !176, !noundef !19
  %22 = getelementptr inbounds { float, float }, ptr %4, i32 0, i32 0, !dbg !176
  store float %19, ptr %22, align 4, !dbg !176
  %23 = getelementptr inbounds { float, float }, ptr %4, i32 0, i32 1, !dbg !176
  store float %21, ptr %23, align 4, !dbg !176
  %24 = load double, ptr %4, align 4, !dbg !176
  %25 = getelementptr inbounds { float, float }, ptr %p3, i32 0, i32 0, !dbg !176
  %26 = load float, ptr %25, align 4, !dbg !176, !noundef !19
  %27 = getelementptr inbounds { float, float }, ptr %p3, i32 0, i32 1, !dbg !176
  %28 = load float, ptr %27, align 4, !dbg !176, !noundef !19
  %29 = getelementptr inbounds { float, float }, ptr %3, i32 0, i32 0, !dbg !176
  store float %26, ptr %29, align 4, !dbg !176
  %30 = getelementptr inbounds { float, float }, ptr %3, i32 0, i32 1, !dbg !176
  store float %28, ptr %30, align 4, !dbg !176
  %31 = load double, ptr %3, align 4, !dbg !176
  %32 = getelementptr inbounds { float, float }, ptr %p, i32 0, i32 0, !dbg !176
  %33 = load float, ptr %32, align 4, !dbg !176, !noundef !19
  %34 = getelementptr inbounds { float, float }, ptr %p, i32 0, i32 1, !dbg !176
  %35 = load float, ptr %34, align 4, !dbg !176, !noundef !19
  %36 = getelementptr inbounds { float, float }, ptr %2, i32 0, i32 0, !dbg !176
  store float %33, ptr %36, align 4, !dbg !176
  %37 = getelementptr inbounds { float, float }, ptr %2, i32 0, i32 1, !dbg !176
  store float %35, ptr %37, align 4, !dbg !176
  %38 = load double, ptr %2, align 4, !dbg !176
  %39 = call double @to_barycentric(double %17, double %24, double %31, double %38), !dbg !176
  store double %39, ptr %0, align 8, !dbg !176
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr align 8 %0, i64 8, i1 false), !dbg !176
  %40 = getelementptr inbounds { float, float }, ptr %1, i32 0, i32 0, !dbg !176
  %result.0 = load float, ptr %40, align 4, !dbg !176, !noundef !19
  %41 = getelementptr inbounds { float, float }, ptr %1, i32 0, i32 1, !dbg !176
  %result.1 = load float, ptr %41, align 4, !dbg !176, !noundef !19
  %42 = getelementptr inbounds { float, float }, ptr %result.dbg.spill, i32 0, i32 0, !dbg !176
  store float %result.0, ptr %42, align 4, !dbg !176
  %43 = getelementptr inbounds { float, float }, ptr %result.dbg.spill, i32 0, i32 1, !dbg !176
  store float %result.1, ptr %43, align 4, !dbg !176
    #dbg_declare(ptr %result.dbg.spill, !166, !DIExpression(), !177)
  %_6 = fcmp oeq float %result.0, 0x3E922E95C0000000, !dbg !178
  br i1 %_6, label %bb3, label %bb2, !dbg !178

bb2:                                              ; preds = %start
  store i8 0, ptr %6, align 1, !dbg !178
  br label %bb4, !dbg !178

bb3:                                              ; preds = %start
  %_8 = fcmp oeq float %result.1, 0xBE96691A40000000, !dbg !179
  %44 = zext i1 %_8 to i8, !dbg !178
  store i8 %44, ptr %6, align 1, !dbg !178
  br label %bb4, !dbg !178

bb4:                                              ; preds = %bb3, %bb2
  %45 = load i8, ptr %6, align 1, !dbg !180, !range !155, !noundef !19
  %46 = trunc i8 %45 to i1, !dbg !180
  ret i1 %46, !dbg !180
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_3() unnamed_addr #0 !dbg !181 {
start:
  %result.dbg.spill = alloca { float, float }, align 4
  %0 = alloca double, align 8
  %1 = alloca { float, float }, align 4
  %2 = alloca { float, float }, align 4
  %3 = alloca { float, float }, align 4
  %4 = alloca { float, float }, align 4
  %5 = alloca { float, float }, align 4
  %p = alloca { float, float }, align 4
  %p3 = alloca { float, float }, align 4
  %p2 = alloca { float, float }, align 4
  %p1 = alloca { float, float }, align 4
  %6 = alloca i8, align 1
    #dbg_declare(ptr %p1, !183, !DIExpression(), !193)
    #dbg_declare(ptr %p2, !185, !DIExpression(), !194)
    #dbg_declare(ptr %p3, !187, !DIExpression(), !195)
    #dbg_declare(ptr %p, !189, !DIExpression(), !196)
  store float 0x406D18E2C0000000, ptr %p1, align 4, !dbg !197
  %7 = getelementptr inbounds { float, float }, ptr %p1, i32 0, i32 1, !dbg !197
  store float 0x3E4252D320000000, ptr %7, align 4, !dbg !197
  store float 0xC3270697A0000000, ptr %p2, align 4, !dbg !198
  %8 = getelementptr inbounds { float, float }, ptr %p2, i32 0, i32 1, !dbg !198
  store float 0xBF8F205F20000000, ptr %8, align 4, !dbg !198
  store float 0x3873B66E20000000, ptr %p3, align 4, !dbg !199
  %9 = getelementptr inbounds { float, float }, ptr %p3, i32 0, i32 1, !dbg !199
  store float 0xC0861075A0000000, ptr %9, align 4, !dbg !199
  store float 0xB8E7F1F0C0000000, ptr %p, align 4, !dbg !200
  %10 = getelementptr inbounds { float, float }, ptr %p, i32 0, i32 1, !dbg !200
  store float 0x394164C7E0000000, ptr %10, align 4, !dbg !200
  %11 = getelementptr inbounds { float, float }, ptr %p1, i32 0, i32 0, !dbg !201
  %12 = load float, ptr %11, align 4, !dbg !201, !noundef !19
  %13 = getelementptr inbounds { float, float }, ptr %p1, i32 0, i32 1, !dbg !201
  %14 = load float, ptr %13, align 4, !dbg !201, !noundef !19
  %15 = getelementptr inbounds { float, float }, ptr %5, i32 0, i32 0, !dbg !201
  store float %12, ptr %15, align 4, !dbg !201
  %16 = getelementptr inbounds { float, float }, ptr %5, i32 0, i32 1, !dbg !201
  store float %14, ptr %16, align 4, !dbg !201
  %17 = load double, ptr %5, align 4, !dbg !201
  %18 = getelementptr inbounds { float, float }, ptr %p2, i32 0, i32 0, !dbg !201
  %19 = load float, ptr %18, align 4, !dbg !201, !noundef !19
  %20 = getelementptr inbounds { float, float }, ptr %p2, i32 0, i32 1, !dbg !201
  %21 = load float, ptr %20, align 4, !dbg !201, !noundef !19
  %22 = getelementptr inbounds { float, float }, ptr %4, i32 0, i32 0, !dbg !201
  store float %19, ptr %22, align 4, !dbg !201
  %23 = getelementptr inbounds { float, float }, ptr %4, i32 0, i32 1, !dbg !201
  store float %21, ptr %23, align 4, !dbg !201
  %24 = load double, ptr %4, align 4, !dbg !201
  %25 = getelementptr inbounds { float, float }, ptr %p3, i32 0, i32 0, !dbg !201
  %26 = load float, ptr %25, align 4, !dbg !201, !noundef !19
  %27 = getelementptr inbounds { float, float }, ptr %p3, i32 0, i32 1, !dbg !201
  %28 = load float, ptr %27, align 4, !dbg !201, !noundef !19
  %29 = getelementptr inbounds { float, float }, ptr %3, i32 0, i32 0, !dbg !201
  store float %26, ptr %29, align 4, !dbg !201
  %30 = getelementptr inbounds { float, float }, ptr %3, i32 0, i32 1, !dbg !201
  store float %28, ptr %30, align 4, !dbg !201
  %31 = load double, ptr %3, align 4, !dbg !201
  %32 = getelementptr inbounds { float, float }, ptr %p, i32 0, i32 0, !dbg !201
  %33 = load float, ptr %32, align 4, !dbg !201, !noundef !19
  %34 = getelementptr inbounds { float, float }, ptr %p, i32 0, i32 1, !dbg !201
  %35 = load float, ptr %34, align 4, !dbg !201, !noundef !19
  %36 = getelementptr inbounds { float, float }, ptr %2, i32 0, i32 0, !dbg !201
  store float %33, ptr %36, align 4, !dbg !201
  %37 = getelementptr inbounds { float, float }, ptr %2, i32 0, i32 1, !dbg !201
  store float %35, ptr %37, align 4, !dbg !201
  %38 = load double, ptr %2, align 4, !dbg !201
  %39 = call double @to_barycentric(double %17, double %24, double %31, double %38), !dbg !201
  store double %39, ptr %0, align 8, !dbg !201
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr align 8 %0, i64 8, i1 false), !dbg !201
  %40 = getelementptr inbounds { float, float }, ptr %1, i32 0, i32 0, !dbg !201
  %result.0 = load float, ptr %40, align 4, !dbg !201, !noundef !19
  %41 = getelementptr inbounds { float, float }, ptr %1, i32 0, i32 1, !dbg !201
  %result.1 = load float, ptr %41, align 4, !dbg !201, !noundef !19
  %42 = getelementptr inbounds { float, float }, ptr %result.dbg.spill, i32 0, i32 0, !dbg !201
  store float %result.0, ptr %42, align 4, !dbg !201
  %43 = getelementptr inbounds { float, float }, ptr %result.dbg.spill, i32 0, i32 1, !dbg !201
  store float %result.1, ptr %43, align 4, !dbg !201
    #dbg_declare(ptr %result.dbg.spill, !191, !DIExpression(), !202)
  %_6 = fcmp oeq float %result.0, 0x3E503FFD00000000, !dbg !203
  br i1 %_6, label %bb3, label %bb2, !dbg !203

bb2:                                              ; preds = %start
  store i8 0, ptr %6, align 1, !dbg !203
  br label %bb4, !dbg !203

bb3:                                              ; preds = %start
  %_8 = fcmp oeq float %result.1, 0x3D343809C0000000, !dbg !204
  %44 = zext i1 %_8 to i8, !dbg !203
  store i8 %44, ptr %6, align 1, !dbg !203
  br label %bb4, !dbg !203

bb4:                                              ; preds = %bb3, %bb2
  %45 = load i8, ptr %6, align 1, !dbg !205, !range !155, !noundef !19
  %46 = trunc i8 %45 to i1, !dbg !205
  ret i1 %46, !dbg !205
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_4() unnamed_addr #0 !dbg !206 {
start:
  %result.dbg.spill = alloca { float, float }, align 4
  %0 = alloca double, align 8
  %1 = alloca { float, float }, align 4
  %2 = alloca { float, float }, align 4
  %3 = alloca { float, float }, align 4
  %4 = alloca { float, float }, align 4
  %5 = alloca { float, float }, align 4
  %p = alloca { float, float }, align 4
  %p3 = alloca { float, float }, align 4
  %p2 = alloca { float, float }, align 4
  %p1 = alloca { float, float }, align 4
  %6 = alloca i8, align 1
    #dbg_declare(ptr %p1, !208, !DIExpression(), !218)
    #dbg_declare(ptr %p2, !210, !DIExpression(), !219)
    #dbg_declare(ptr %p3, !212, !DIExpression(), !220)
    #dbg_declare(ptr %p, !214, !DIExpression(), !221)
  store float 0x3810550BE0000000, ptr %p1, align 4, !dbg !222
  %7 = getelementptr inbounds { float, float }, ptr %p1, i32 0, i32 1, !dbg !222
  store float 0x3CBB99B720000000, ptr %7, align 4, !dbg !222
  store float 0xC22531A780000000, ptr %p2, align 4, !dbg !223
  %8 = getelementptr inbounds { float, float }, ptr %p2, i32 0, i32 1, !dbg !223
  store float 0xB8A80210A0000000, ptr %8, align 4, !dbg !223
  store float 0xB8D92478A0000000, ptr %p3, align 4, !dbg !224
  %9 = getelementptr inbounds { float, float }, ptr %p3, i32 0, i32 1, !dbg !224
  store float 0xBEB285BA80000000, ptr %9, align 4, !dbg !224
  store float 0xC567B4DE60000000, ptr %p, align 4, !dbg !225
  %10 = getelementptr inbounds { float, float }, ptr %p, i32 0, i32 1, !dbg !225
  store float 0xBFC13516C0000000, ptr %10, align 4, !dbg !225
  %11 = getelementptr inbounds { float, float }, ptr %p1, i32 0, i32 0, !dbg !226
  %12 = load float, ptr %11, align 4, !dbg !226, !noundef !19
  %13 = getelementptr inbounds { float, float }, ptr %p1, i32 0, i32 1, !dbg !226
  %14 = load float, ptr %13, align 4, !dbg !226, !noundef !19
  %15 = getelementptr inbounds { float, float }, ptr %5, i32 0, i32 0, !dbg !226
  store float %12, ptr %15, align 4, !dbg !226
  %16 = getelementptr inbounds { float, float }, ptr %5, i32 0, i32 1, !dbg !226
  store float %14, ptr %16, align 4, !dbg !226
  %17 = load double, ptr %5, align 4, !dbg !226
  %18 = getelementptr inbounds { float, float }, ptr %p2, i32 0, i32 0, !dbg !226
  %19 = load float, ptr %18, align 4, !dbg !226, !noundef !19
  %20 = getelementptr inbounds { float, float }, ptr %p2, i32 0, i32 1, !dbg !226
  %21 = load float, ptr %20, align 4, !dbg !226, !noundef !19
  %22 = getelementptr inbounds { float, float }, ptr %4, i32 0, i32 0, !dbg !226
  store float %19, ptr %22, align 4, !dbg !226
  %23 = getelementptr inbounds { float, float }, ptr %4, i32 0, i32 1, !dbg !226
  store float %21, ptr %23, align 4, !dbg !226
  %24 = load double, ptr %4, align 4, !dbg !226
  %25 = getelementptr inbounds { float, float }, ptr %p3, i32 0, i32 0, !dbg !226
  %26 = load float, ptr %25, align 4, !dbg !226, !noundef !19
  %27 = getelementptr inbounds { float, float }, ptr %p3, i32 0, i32 1, !dbg !226
  %28 = load float, ptr %27, align 4, !dbg !226, !noundef !19
  %29 = getelementptr inbounds { float, float }, ptr %3, i32 0, i32 0, !dbg !226
  store float %26, ptr %29, align 4, !dbg !226
  %30 = getelementptr inbounds { float, float }, ptr %3, i32 0, i32 1, !dbg !226
  store float %28, ptr %30, align 4, !dbg !226
  %31 = load double, ptr %3, align 4, !dbg !226
  %32 = getelementptr inbounds { float, float }, ptr %p, i32 0, i32 0, !dbg !226
  %33 = load float, ptr %32, align 4, !dbg !226, !noundef !19
  %34 = getelementptr inbounds { float, float }, ptr %p, i32 0, i32 1, !dbg !226
  %35 = load float, ptr %34, align 4, !dbg !226, !noundef !19
  %36 = getelementptr inbounds { float, float }, ptr %2, i32 0, i32 0, !dbg !226
  store float %33, ptr %36, align 4, !dbg !226
  %37 = getelementptr inbounds { float, float }, ptr %2, i32 0, i32 1, !dbg !226
  store float %35, ptr %37, align 4, !dbg !226
  %38 = load double, ptr %2, align 4, !dbg !226
  %39 = call double @to_barycentric(double %17, double %24, double %31, double %38), !dbg !226
  store double %39, ptr %0, align 8, !dbg !226
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr align 8 %0, i64 8, i1 false), !dbg !226
  %40 = getelementptr inbounds { float, float }, ptr %1, i32 0, i32 0, !dbg !226
  %result.0 = load float, ptr %40, align 4, !dbg !226, !noundef !19
  %41 = getelementptr inbounds { float, float }, ptr %1, i32 0, i32 1, !dbg !226
  %result.1 = load float, ptr %41, align 4, !dbg !226, !noundef !19
  %42 = getelementptr inbounds { float, float }, ptr %result.dbg.spill, i32 0, i32 0, !dbg !226
  store float %result.0, ptr %42, align 4, !dbg !226
  %43 = getelementptr inbounds { float, float }, ptr %result.dbg.spill, i32 0, i32 1, !dbg !226
  store float %result.1, ptr %43, align 4, !dbg !226
    #dbg_declare(ptr %result.dbg.spill, !216, !DIExpression(), !227)
  %_6 = fcmp oeq float %result.0, 0xC138CF6E20000000, !dbg !228
  br i1 %_6, label %bb3, label %bb2, !dbg !228

bb2:                                              ; preds = %start
  store i8 0, ptr %6, align 1, !dbg !228
  br label %bb4, !dbg !228

bb3:                                              ; preds = %start
  %_8 = fcmp oeq float %result.1, 0x4331E59540000000, !dbg !229
  %44 = zext i1 %_8 to i8, !dbg !228
  store i8 %44, ptr %6, align 1, !dbg !228
  br label %bb4, !dbg !228

bb4:                                              ; preds = %bb3, %bb2
  %45 = load i8, ptr %6, align 1, !dbg !230, !range !155, !noundef !19
  %46 = trunc i8 %45 to i1, !dbg !230
  ret i1 %46, !dbg !230
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_5() unnamed_addr #0 !dbg !231 {
start:
  %result.dbg.spill = alloca { float, float }, align 4
  %0 = alloca double, align 8
  %1 = alloca { float, float }, align 4
  %2 = alloca { float, float }, align 4
  %3 = alloca { float, float }, align 4
  %4 = alloca { float, float }, align 4
  %5 = alloca { float, float }, align 4
  %p = alloca { float, float }, align 4
  %p3 = alloca { float, float }, align 4
  %p2 = alloca { float, float }, align 4
  %p1 = alloca { float, float }, align 4
  %6 = alloca i8, align 1
    #dbg_declare(ptr %p1, !233, !DIExpression(), !243)
    #dbg_declare(ptr %p2, !235, !DIExpression(), !244)
    #dbg_declare(ptr %p3, !237, !DIExpression(), !245)
    #dbg_declare(ptr %p, !239, !DIExpression(), !246)
  store float 0xBCA62E0960000000, ptr %p1, align 4, !dbg !247
  %7 = getelementptr inbounds { float, float }, ptr %p1, i32 0, i32 1, !dbg !247
  store float 0x3F257F2520000000, ptr %7, align 4, !dbg !247
  store float 0xC0F6906040000000, ptr %p2, align 4, !dbg !248
  %8 = getelementptr inbounds { float, float }, ptr %p2, i32 0, i32 1, !dbg !248
  store float 0xBD583CE420000000, ptr %8, align 4, !dbg !248
  store float 0xB9B5AD4740000000, ptr %p3, align 4, !dbg !249
  %9 = getelementptr inbounds { float, float }, ptr %p3, i32 0, i32 1, !dbg !249
  store float 0x3A60C3AA20000000, ptr %9, align 4, !dbg !249
  store float 0xBF6BAA4820000000, ptr %p, align 4, !dbg !250
  %10 = getelementptr inbounds { float, float }, ptr %p, i32 0, i32 1, !dbg !250
  store float 0xBA7D0207C0000000, ptr %10, align 4, !dbg !250
  %11 = getelementptr inbounds { float, float }, ptr %p1, i32 0, i32 0, !dbg !251
  %12 = load float, ptr %11, align 4, !dbg !251, !noundef !19
  %13 = getelementptr inbounds { float, float }, ptr %p1, i32 0, i32 1, !dbg !251
  %14 = load float, ptr %13, align 4, !dbg !251, !noundef !19
  %15 = getelementptr inbounds { float, float }, ptr %5, i32 0, i32 0, !dbg !251
  store float %12, ptr %15, align 4, !dbg !251
  %16 = getelementptr inbounds { float, float }, ptr %5, i32 0, i32 1, !dbg !251
  store float %14, ptr %16, align 4, !dbg !251
  %17 = load double, ptr %5, align 4, !dbg !251
  %18 = getelementptr inbounds { float, float }, ptr %p2, i32 0, i32 0, !dbg !251
  %19 = load float, ptr %18, align 4, !dbg !251, !noundef !19
  %20 = getelementptr inbounds { float, float }, ptr %p2, i32 0, i32 1, !dbg !251
  %21 = load float, ptr %20, align 4, !dbg !251, !noundef !19
  %22 = getelementptr inbounds { float, float }, ptr %4, i32 0, i32 0, !dbg !251
  store float %19, ptr %22, align 4, !dbg !251
  %23 = getelementptr inbounds { float, float }, ptr %4, i32 0, i32 1, !dbg !251
  store float %21, ptr %23, align 4, !dbg !251
  %24 = load double, ptr %4, align 4, !dbg !251
  %25 = getelementptr inbounds { float, float }, ptr %p3, i32 0, i32 0, !dbg !251
  %26 = load float, ptr %25, align 4, !dbg !251, !noundef !19
  %27 = getelementptr inbounds { float, float }, ptr %p3, i32 0, i32 1, !dbg !251
  %28 = load float, ptr %27, align 4, !dbg !251, !noundef !19
  %29 = getelementptr inbounds { float, float }, ptr %3, i32 0, i32 0, !dbg !251
  store float %26, ptr %29, align 4, !dbg !251
  %30 = getelementptr inbounds { float, float }, ptr %3, i32 0, i32 1, !dbg !251
  store float %28, ptr %30, align 4, !dbg !251
  %31 = load double, ptr %3, align 4, !dbg !251
  %32 = getelementptr inbounds { float, float }, ptr %p, i32 0, i32 0, !dbg !251
  %33 = load float, ptr %32, align 4, !dbg !251, !noundef !19
  %34 = getelementptr inbounds { float, float }, ptr %p, i32 0, i32 1, !dbg !251
  %35 = load float, ptr %34, align 4, !dbg !251, !noundef !19
  %36 = getelementptr inbounds { float, float }, ptr %2, i32 0, i32 0, !dbg !251
  store float %33, ptr %36, align 4, !dbg !251
  %37 = getelementptr inbounds { float, float }, ptr %2, i32 0, i32 1, !dbg !251
  store float %35, ptr %37, align 4, !dbg !251
  %38 = load double, ptr %2, align 4, !dbg !251
  %39 = call double @to_barycentric(double %17, double %24, double %31, double %38), !dbg !251
  store double %39, ptr %0, align 8, !dbg !251
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr align 8 %0, i64 8, i1 false), !dbg !251
  %40 = getelementptr inbounds { float, float }, ptr %1, i32 0, i32 0, !dbg !251
  %result.0 = load float, ptr %40, align 4, !dbg !251, !noundef !19
  %41 = getelementptr inbounds { float, float }, ptr %1, i32 0, i32 1, !dbg !251
  %result.1 = load float, ptr %41, align 4, !dbg !251, !noundef !19
  %42 = getelementptr inbounds { float, float }, ptr %result.dbg.spill, i32 0, i32 0, !dbg !251
  store float %result.0, ptr %42, align 4, !dbg !251
  %43 = getelementptr inbounds { float, float }, ptr %result.dbg.spill, i32 0, i32 1, !dbg !251
  store float %result.1, ptr %43, align 4, !dbg !251
    #dbg_declare(ptr %result.dbg.spill, !241, !DIExpression(), !252)
  %_6 = fcmp oeq float %result.0, 0x3FEFFFFFC0000000, !dbg !253
  br i1 %_6, label %bb3, label %bb2, !dbg !253

bb2:                                              ; preds = %start
  store i8 0, ptr %6, align 1, !dbg !253
  br label %bb4, !dbg !253

bb3:                                              ; preds = %start
  %_8 = fcmp oeq float %result.1, 0x3E639E02E0000000, !dbg !254
  %44 = zext i1 %_8 to i8, !dbg !253
  store i8 %44, ptr %6, align 1, !dbg !253
  br label %bb4, !dbg !253

bb4:                                              ; preds = %bb3, %bb2
  %45 = load i8, ptr %6, align 1, !dbg !255, !range !155, !noundef !19
  %46 = trunc i8 %45 to i1, !dbg !255
  ret i1 %46, !dbg !255
}

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}

!0 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !1, producer: "clang LLVM (rustc version 1.70.0-nightly (84dd17b56 2023-04-14))", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!1 = !DIFile(filename: "lib.rs/@/10o7dbsgxq5h6zmu", directory: "/crisp-rust-outputs/B01_organic/to_barycentric_lib/translated_rust")
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 2, !"RtLibUseGOT", i32 1}
!4 = !{i32 2, !"Dwarf Version", i32 4}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = distinct !DISubprogram(name: "to_barycentric_ffi", linkageName: "to_barycentric", scope: !8, file: !7, line: 40, type: !11, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !19, retainedNodes: !20)
!7 = !DIFile(filename: "src/lib.rs", directory: "/crisp-rust-outputs/B01_organic/to_barycentric_lib/translated_rust", checksumkind: CSK_MD5, checksum: "3d02355b8342e9c81bcef6965d16575d")
!8 = !DINamespace(name: "lib", scope: !9)
!9 = !DINamespace(name: "src", scope: !10)
!10 = !DINamespace(name: "to_barycentric_lib", scope: null)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !13, !13, !13, !13}
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LmVec2", scope: !8, file: !14, size: 64, align: 32, elements: !15, templateParams: !19, identifier: "1326e0afe6f0a303a6767d91ba5f47d")
!14 = !DIFile(filename: "<unknown>", directory: "")
!15 = !{!16, !18}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !13, file: !14, baseType: !17, size: 32, align: 32)
!17 = !DIBasicType(name: "f32", size: 32, encoding: DW_ATE_float)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !13, file: !14, baseType: !17, size: 32, align: 32, offset: 32)
!19 = !{}
!20 = !{!21, !22, !23, !24}
!21 = !DILocalVariable(name: "p1", arg: 1, scope: !6, file: !7, line: 41, type: !13)
!22 = !DILocalVariable(name: "p2", arg: 2, scope: !6, file: !7, line: 42, type: !13)
!23 = !DILocalVariable(name: "p3", arg: 3, scope: !6, file: !7, line: 43, type: !13)
!24 = !DILocalVariable(name: "p", arg: 4, scope: !6, file: !7, line: 44, type: !13)
!25 = !DILocation(line: 41, column: 5, scope: !6)
!26 = !DILocation(line: 42, column: 5, scope: !6)
!27 = !DILocation(line: 43, column: 5, scope: !6)
!28 = !DILocation(line: 44, column: 5, scope: !6)
!29 = !DILocation(line: 46, column: 5, scope: !6)
!30 = !DILocation(line: 47, column: 2, scope: !6)
!31 = distinct !DISubprogram(name: "to_barycentric", linkageName: "_ZN18to_barycentric_lib3src3lib14to_barycentric17h7641e4e27cd221c8E", scope: !8, file: !7, line: 16, type: !11, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !19, retainedNodes: !32)
!32 = !{!33, !34, !35, !36, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57}
!33 = !DILocalVariable(name: "p1", arg: 1, scope: !31, file: !7, line: 17, type: !13)
!34 = !DILocalVariable(name: "p2", arg: 2, scope: !31, file: !7, line: 18, type: !13)
!35 = !DILocalVariable(name: "p3", arg: 3, scope: !31, file: !7, line: 19, type: !13)
!36 = !DILocalVariable(name: "p", arg: 4, scope: !31, file: !7, line: 20, type: !13)
!37 = !DILocalVariable(name: "v0", scope: !38, file: !7, line: 22, type: !13, align: 4)
!38 = distinct !DILexicalBlock(scope: !31, file: !7, line: 22, column: 5)
!39 = !DILocalVariable(name: "v1", scope: !40, file: !7, line: 23, type: !13, align: 4)
!40 = distinct !DILexicalBlock(scope: !38, file: !7, line: 23, column: 5)
!41 = !DILocalVariable(name: "v2", scope: !42, file: !7, line: 24, type: !13, align: 4)
!42 = distinct !DILexicalBlock(scope: !40, file: !7, line: 24, column: 5)
!43 = !DILocalVariable(name: "dot00", scope: !44, file: !7, line: 26, type: !17, align: 4)
!44 = distinct !DILexicalBlock(scope: !42, file: !7, line: 26, column: 5)
!45 = !DILocalVariable(name: "dot01", scope: !46, file: !7, line: 27, type: !17, align: 4)
!46 = distinct !DILexicalBlock(scope: !44, file: !7, line: 27, column: 5)
!47 = !DILocalVariable(name: "dot02", scope: !48, file: !7, line: 28, type: !17, align: 4)
!48 = distinct !DILexicalBlock(scope: !46, file: !7, line: 28, column: 5)
!49 = !DILocalVariable(name: "dot11", scope: !50, file: !7, line: 29, type: !17, align: 4)
!50 = distinct !DILexicalBlock(scope: !48, file: !7, line: 29, column: 5)
!51 = !DILocalVariable(name: "dot12", scope: !52, file: !7, line: 30, type: !17, align: 4)
!52 = distinct !DILexicalBlock(scope: !50, file: !7, line: 30, column: 5)
!53 = !DILocalVariable(name: "inv_denom", scope: !54, file: !7, line: 32, type: !17, align: 4)
!54 = distinct !DILexicalBlock(scope: !52, file: !7, line: 32, column: 5)
!55 = !DILocalVariable(name: "u", scope: !56, file: !7, line: 33, type: !17, align: 4)
!56 = distinct !DILexicalBlock(scope: !54, file: !7, line: 33, column: 5)
!57 = !DILocalVariable(name: "v", scope: !58, file: !7, line: 34, type: !17, align: 4)
!58 = distinct !DILexicalBlock(scope: !56, file: !7, line: 34, column: 5)
!59 = !DILocation(line: 17, column: 5, scope: !31)
!60 = !DILocation(line: 18, column: 5, scope: !31)
!61 = !DILocation(line: 19, column: 5, scope: !31)
!62 = !DILocation(line: 20, column: 5, scope: !31)
!63 = !DILocation(line: 22, column: 14, scope: !31)
!64 = !DILocation(line: 22, column: 9, scope: !38)
!65 = !DILocation(line: 23, column: 14, scope: !38)
!66 = !DILocation(line: 23, column: 9, scope: !40)
!67 = !DILocation(line: 24, column: 14, scope: !40)
!68 = !DILocation(line: 24, column: 9, scope: !42)
!69 = !DILocation(line: 26, column: 17, scope: !42)
!70 = !DILocation(line: 26, column: 9, scope: !44)
!71 = !DILocation(line: 27, column: 17, scope: !44)
!72 = !DILocation(line: 27, column: 9, scope: !46)
!73 = !DILocation(line: 28, column: 17, scope: !46)
!74 = !DILocation(line: 28, column: 9, scope: !48)
!75 = !DILocation(line: 29, column: 17, scope: !48)
!76 = !DILocation(line: 29, column: 9, scope: !50)
!77 = !DILocation(line: 30, column: 17, scope: !50)
!78 = !DILocation(line: 30, column: 9, scope: !52)
!79 = !DILocation(line: 32, column: 31, scope: !52)
!80 = !DILocation(line: 32, column: 47, scope: !52)
!81 = !DILocation(line: 32, column: 30, scope: !52)
!82 = !DILocation(line: 32, column: 21, scope: !52)
!83 = !DILocation(line: 32, column: 9, scope: !54)
!84 = !DILocation(line: 33, column: 14, scope: !54)
!85 = !DILocation(line: 33, column: 30, scope: !54)
!86 = !DILocation(line: 33, column: 13, scope: !54)
!87 = !DILocation(line: 33, column: 9, scope: !56)
!88 = !DILocation(line: 34, column: 14, scope: !56)
!89 = !DILocation(line: 34, column: 30, scope: !56)
!90 = !DILocation(line: 34, column: 13, scope: !56)
!91 = !DILocation(line: 34, column: 9, scope: !58)
!92 = !DILocation(line: 36, column: 5, scope: !58)
!93 = !DILocation(line: 37, column: 2, scope: !31)
!94 = distinct !DISubprogram(name: "lm_sub2", linkageName: "_ZN18to_barycentric_lib3src3lib7lm_sub217hb7266d5391cce141E", scope: !8, file: !7, line: 10, type: !95, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !19, retainedNodes: !97)
!95 = !DISubroutineType(types: !96)
!96 = !{!13, !13, !13}
!97 = !{!98, !99}
!98 = !DILocalVariable(name: "a", arg: 1, scope: !94, file: !7, line: 10, type: !13)
!99 = !DILocalVariable(name: "b", arg: 2, scope: !94, file: !7, line: 10, type: !13)
!100 = !DILocation(line: 10, column: 12, scope: !94)
!101 = !DILocation(line: 10, column: 23, scope: !94)
!102 = !DILocation(line: 11, column: 11, scope: !94)
!103 = !DILocation(line: 11, column: 22, scope: !94)
!104 = !DILocation(line: 11, column: 5, scope: !94)
!105 = !DILocation(line: 12, column: 2, scope: !94)
!106 = distinct !DISubprogram(name: "lm_dot2", linkageName: "_ZN18to_barycentric_lib3src3lib7lm_dot217hb483e39b746b9cacE", scope: !8, file: !7, line: 13, type: !107, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !19, retainedNodes: !109)
!107 = !DISubroutineType(types: !108)
!108 = !{!17, !13, !13}
!109 = !{!110, !111}
!110 = !DILocalVariable(name: "a", arg: 1, scope: !106, file: !7, line: 13, type: !13)
!111 = !DILocalVariable(name: "b", arg: 2, scope: !106, file: !7, line: 13, type: !13)
!112 = !DILocation(line: 13, column: 12, scope: !106)
!113 = !DILocation(line: 13, column: 23, scope: !106)
!114 = !DILocation(line: 14, column: 5, scope: !106)
!115 = !DILocation(line: 14, column: 17, scope: !106)
!116 = !DILocation(line: 15, column: 2, scope: !106)
!117 = distinct !DISubprogram(name: "lm_v2", linkageName: "_ZN18to_barycentric_lib3src3lib5lm_v217hbf8d27568c02ef3eE", scope: !8, file: !7, line: 7, type: !118, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !19, retainedNodes: !120)
!118 = !DISubroutineType(types: !119)
!119 = !{!13, !17, !17}
!120 = !{!121, !122}
!121 = !DILocalVariable(name: "x", arg: 1, scope: !117, file: !7, line: 7, type: !17)
!122 = !DILocalVariable(name: "y", arg: 2, scope: !117, file: !7, line: 7, type: !17)
!123 = !DILocation(line: 7, column: 10, scope: !117)
!124 = !DILocation(line: 7, column: 35, scope: !117)
!125 = !DILocation(line: 8, column: 5, scope: !117)
!126 = !DILocation(line: 9, column: 2, scope: !117)
!127 = distinct !DISubprogram(name: "run_test_1", scope: !8, file: !7, line: 50, type: !128, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !19, retainedNodes: !131)
!128 = !DISubroutineType(types: !129)
!129 = !{!130}
!130 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!131 = !{!132, !134, !136, !138, !140}
!132 = !DILocalVariable(name: "p1", scope: !133, file: !7, line: 51, type: !13, align: 4)
!133 = distinct !DILexicalBlock(scope: !127, file: !7, line: 51, column: 5)
!134 = !DILocalVariable(name: "p2", scope: !135, file: !7, line: 52, type: !13, align: 4)
!135 = distinct !DILexicalBlock(scope: !133, file: !7, line: 52, column: 5)
!136 = !DILocalVariable(name: "p3", scope: !137, file: !7, line: 53, type: !13, align: 4)
!137 = distinct !DILexicalBlock(scope: !135, file: !7, line: 53, column: 5)
!138 = !DILocalVariable(name: "p", scope: !139, file: !7, line: 54, type: !13, align: 4)
!139 = distinct !DILexicalBlock(scope: !137, file: !7, line: 54, column: 5)
!140 = !DILocalVariable(name: "result", scope: !141, file: !7, line: 55, type: !13, align: 4)
!141 = distinct !DILexicalBlock(scope: !139, file: !7, line: 55, column: 5)
!142 = !DILocation(line: 51, column: 9, scope: !133)
!143 = !DILocation(line: 52, column: 9, scope: !135)
!144 = !DILocation(line: 53, column: 9, scope: !137)
!145 = !DILocation(line: 54, column: 9, scope: !139)
!146 = !DILocation(line: 51, column: 14, scope: !127)
!147 = !DILocation(line: 52, column: 14, scope: !133)
!148 = !DILocation(line: 53, column: 14, scope: !135)
!149 = !DILocation(line: 54, column: 13, scope: !137)
!150 = !DILocation(line: 55, column: 18, scope: !139)
!151 = !DILocation(line: 55, column: 9, scope: !141)
!152 = !DILocation(line: 56, column: 5, scope: !141)
!153 = !DILocation(line: 56, column: 25, scope: !141)
!154 = !DILocation(line: 57, column: 2, scope: !127)
!155 = !{i8 0, i8 2}
!156 = distinct !DISubprogram(name: "run_test_2", scope: !8, file: !7, line: 60, type: !128, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !19, retainedNodes: !157)
!157 = !{!158, !160, !162, !164, !166}
!158 = !DILocalVariable(name: "p1", scope: !159, file: !7, line: 61, type: !13, align: 4)
!159 = distinct !DILexicalBlock(scope: !156, file: !7, line: 61, column: 5)
!160 = !DILocalVariable(name: "p2", scope: !161, file: !7, line: 62, type: !13, align: 4)
!161 = distinct !DILexicalBlock(scope: !159, file: !7, line: 62, column: 5)
!162 = !DILocalVariable(name: "p3", scope: !163, file: !7, line: 63, type: !13, align: 4)
!163 = distinct !DILexicalBlock(scope: !161, file: !7, line: 63, column: 5)
!164 = !DILocalVariable(name: "p", scope: !165, file: !7, line: 64, type: !13, align: 4)
!165 = distinct !DILexicalBlock(scope: !163, file: !7, line: 64, column: 5)
!166 = !DILocalVariable(name: "result", scope: !167, file: !7, line: 65, type: !13, align: 4)
!167 = distinct !DILexicalBlock(scope: !165, file: !7, line: 65, column: 5)
!168 = !DILocation(line: 61, column: 9, scope: !159)
!169 = !DILocation(line: 62, column: 9, scope: !161)
!170 = !DILocation(line: 63, column: 9, scope: !163)
!171 = !DILocation(line: 64, column: 9, scope: !165)
!172 = !DILocation(line: 61, column: 14, scope: !156)
!173 = !DILocation(line: 62, column: 14, scope: !159)
!174 = !DILocation(line: 63, column: 14, scope: !161)
!175 = !DILocation(line: 64, column: 13, scope: !163)
!176 = !DILocation(line: 65, column: 18, scope: !165)
!177 = !DILocation(line: 65, column: 9, scope: !167)
!178 = !DILocation(line: 66, column: 5, scope: !167)
!179 = !DILocation(line: 66, column: 32, scope: !167)
!180 = !DILocation(line: 67, column: 2, scope: !156)
!181 = distinct !DISubprogram(name: "run_test_3", scope: !8, file: !7, line: 70, type: !128, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !19, retainedNodes: !182)
!182 = !{!183, !185, !187, !189, !191}
!183 = !DILocalVariable(name: "p1", scope: !184, file: !7, line: 71, type: !13, align: 4)
!184 = distinct !DILexicalBlock(scope: !181, file: !7, line: 71, column: 5)
!185 = !DILocalVariable(name: "p2", scope: !186, file: !7, line: 72, type: !13, align: 4)
!186 = distinct !DILexicalBlock(scope: !184, file: !7, line: 72, column: 5)
!187 = !DILocalVariable(name: "p3", scope: !188, file: !7, line: 73, type: !13, align: 4)
!188 = distinct !DILexicalBlock(scope: !186, file: !7, line: 73, column: 5)
!189 = !DILocalVariable(name: "p", scope: !190, file: !7, line: 74, type: !13, align: 4)
!190 = distinct !DILexicalBlock(scope: !188, file: !7, line: 74, column: 5)
!191 = !DILocalVariable(name: "result", scope: !192, file: !7, line: 75, type: !13, align: 4)
!192 = distinct !DILexicalBlock(scope: !190, file: !7, line: 75, column: 5)
!193 = !DILocation(line: 71, column: 9, scope: !184)
!194 = !DILocation(line: 72, column: 9, scope: !186)
!195 = !DILocation(line: 73, column: 9, scope: !188)
!196 = !DILocation(line: 74, column: 9, scope: !190)
!197 = !DILocation(line: 71, column: 14, scope: !181)
!198 = !DILocation(line: 72, column: 14, scope: !184)
!199 = !DILocation(line: 73, column: 14, scope: !186)
!200 = !DILocation(line: 74, column: 13, scope: !188)
!201 = !DILocation(line: 75, column: 18, scope: !190)
!202 = !DILocation(line: 75, column: 9, scope: !192)
!203 = !DILocation(line: 76, column: 5, scope: !192)
!204 = !DILocation(line: 76, column: 32, scope: !192)
!205 = !DILocation(line: 77, column: 2, scope: !181)
!206 = distinct !DISubprogram(name: "run_test_4", scope: !8, file: !7, line: 80, type: !128, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !19, retainedNodes: !207)
!207 = !{!208, !210, !212, !214, !216}
!208 = !DILocalVariable(name: "p1", scope: !209, file: !7, line: 81, type: !13, align: 4)
!209 = distinct !DILexicalBlock(scope: !206, file: !7, line: 81, column: 5)
!210 = !DILocalVariable(name: "p2", scope: !211, file: !7, line: 82, type: !13, align: 4)
!211 = distinct !DILexicalBlock(scope: !209, file: !7, line: 82, column: 5)
!212 = !DILocalVariable(name: "p3", scope: !213, file: !7, line: 83, type: !13, align: 4)
!213 = distinct !DILexicalBlock(scope: !211, file: !7, line: 83, column: 5)
!214 = !DILocalVariable(name: "p", scope: !215, file: !7, line: 84, type: !13, align: 4)
!215 = distinct !DILexicalBlock(scope: !213, file: !7, line: 84, column: 5)
!216 = !DILocalVariable(name: "result", scope: !217, file: !7, line: 85, type: !13, align: 4)
!217 = distinct !DILexicalBlock(scope: !215, file: !7, line: 85, column: 5)
!218 = !DILocation(line: 81, column: 9, scope: !209)
!219 = !DILocation(line: 82, column: 9, scope: !211)
!220 = !DILocation(line: 83, column: 9, scope: !213)
!221 = !DILocation(line: 84, column: 9, scope: !215)
!222 = !DILocation(line: 81, column: 14, scope: !206)
!223 = !DILocation(line: 82, column: 14, scope: !209)
!224 = !DILocation(line: 83, column: 14, scope: !211)
!225 = !DILocation(line: 84, column: 13, scope: !213)
!226 = !DILocation(line: 85, column: 18, scope: !215)
!227 = !DILocation(line: 85, column: 9, scope: !217)
!228 = !DILocation(line: 86, column: 5, scope: !217)
!229 = !DILocation(line: 86, column: 31, scope: !217)
!230 = !DILocation(line: 87, column: 2, scope: !206)
!231 = distinct !DISubprogram(name: "run_test_5", scope: !8, file: !7, line: 90, type: !128, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !19, retainedNodes: !232)
!232 = !{!233, !235, !237, !239, !241}
!233 = !DILocalVariable(name: "p1", scope: !234, file: !7, line: 91, type: !13, align: 4)
!234 = distinct !DILexicalBlock(scope: !231, file: !7, line: 91, column: 5)
!235 = !DILocalVariable(name: "p2", scope: !236, file: !7, line: 92, type: !13, align: 4)
!236 = distinct !DILexicalBlock(scope: !234, file: !7, line: 92, column: 5)
!237 = !DILocalVariable(name: "p3", scope: !238, file: !7, line: 93, type: !13, align: 4)
!238 = distinct !DILexicalBlock(scope: !236, file: !7, line: 93, column: 5)
!239 = !DILocalVariable(name: "p", scope: !240, file: !7, line: 94, type: !13, align: 4)
!240 = distinct !DILexicalBlock(scope: !238, file: !7, line: 94, column: 5)
!241 = !DILocalVariable(name: "result", scope: !242, file: !7, line: 95, type: !13, align: 4)
!242 = distinct !DILexicalBlock(scope: !240, file: !7, line: 95, column: 5)
!243 = !DILocation(line: 91, column: 9, scope: !234)
!244 = !DILocation(line: 92, column: 9, scope: !236)
!245 = !DILocation(line: 93, column: 9, scope: !238)
!246 = !DILocation(line: 94, column: 9, scope: !240)
!247 = !DILocation(line: 91, column: 14, scope: !231)
!248 = !DILocation(line: 92, column: 14, scope: !234)
!249 = !DILocation(line: 93, column: 14, scope: !236)
!250 = !DILocation(line: 94, column: 13, scope: !238)
!251 = !DILocation(line: 95, column: 18, scope: !240)
!252 = !DILocation(line: 95, column: 9, scope: !242)
!253 = !DILocation(line: 96, column: 5, scope: !242)
!254 = !DILocation(line: 96, column: 30, scope: !242)
!255 = !DILocation(line: 97, column: 2, scope: !231)
