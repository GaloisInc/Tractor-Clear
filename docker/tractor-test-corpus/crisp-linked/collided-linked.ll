; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; ASSERT EQ: i1 1 = call i1 @run_test_1()
; SLOW ASSERT EQ: i1 1 = call i1 @run_test_2()
; SLOW ASSERT EQ: i1 1 = call i1 @run_test_3()
; ASSERT EQ: i1 1 = call i1 @run_test_4()
; ASSERT EQ: i1 1 = call i1 @run_test_5()
; SLOW ASSERT EQ: i1 1 = call i1 @run_test_6()
; ASSERT EQ: i1 1 = call i1 @run_test_7()
; ASSERT EQ: i1 1 = call i1 @run_test_8()

%"src::lib::C2aabb" = type { { float, float }, { float, float } }
%"src::lib::C2circle" = type { { float, float }, float }
%"src::lib::run_test_2::Shape" = type { float, float, float, float }

@alloc_f5ffd2fd1476bab43ad89fb40c72d0c5 = private unnamed_addr constant <{ [10 x i8] }> <{ [10 x i8] c"src/lib.rs" }>, align 1
@alloc_d2d1a7f324149c6257484dcf253db50f = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\9D\00\00\00$\00\00\00" }>, align 8
@alloc_b86b11b12e6498a516916190a6636843 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\9D\00\00\00>\00\00\00" }>, align 8
@alloc_1960ea5a0d34924a0927eac7bbcdf1ef = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\97\00\00\00\22\00\00\00" }>, align 8
@alloc_ad2a7f8cde53dbf35a1f13f94d20f712 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\97\00\00\00<\00\00\00" }>, align 8
@alloc_c5e3336664378aa59d148f5f74086961 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\9A\00\00\00\22\00\00\00" }>, align 8
@alloc_82eeb654354d328c2828de8f36512b7d = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\9A\00\00\00<\00\00\00" }>, align 8
@alloc_b38b5344d31a35f64da86efc25c9a857 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\94\00\00\00 \00\00\00" }>, align 8
@alloc_32ccae726c5ae2fcd341e5abdf12e553 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\94\00\00\008\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define i32 @c2AABBtoAABB({ double, double } %0, { double, double } %1) unnamed_addr #0 !dbg !15 {
start:
  %2 = alloca %"src::lib::C2aabb", align 4
  %3 = alloca %"src::lib::C2aabb", align 4
  %4 = alloca { double, double }, align 8
  %B = alloca %"src::lib::C2aabb", align 4
  %5 = alloca { double, double }, align 8
  %A = alloca %"src::lib::C2aabb", align 4
  store { double, double } %0, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %A, ptr align 8 %5, i64 16, i1 false)
  store { double, double } %1, ptr %4, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %B, ptr align 8 %4, i64 16, i1 false)
    #dbg_declare(ptr %A, !34, !DIExpression(), !36)
    #dbg_declare(ptr %B, !35, !DIExpression(), !37)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %3, ptr align 4 %A, i64 16, i1 false), !dbg !38
  %6 = load { double, double }, ptr %3, align 4, !dbg !38
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr align 4 %B, i64 16, i1 false), !dbg !38
  %7 = load { double, double }, ptr %2, align 4, !dbg !38
  %8 = call i32 @_ZN12collided_lib3src3lib14c2_aabbto_aabb17h231cad14afdd7d96E({ double, double } %6, { double, double } %7), !dbg !38
  ret i32 %8, !dbg !39
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nonlazybind uwtable
define internal i32 @_ZN12collided_lib3src3lib14c2_aabbto_aabb17h231cad14afdd7d96E({ double, double } %0, { double, double } %1) unnamed_addr #0 !dbg !40 {
start:
  %d3.dbg.spill = alloca i32, align 4
  %d2.dbg.spill = alloca i32, align 4
  %d1.dbg.spill = alloca i32, align 4
  %d0.dbg.spill = alloca i32, align 4
  %2 = alloca { double, double }, align 8
  %B = alloca %"src::lib::C2aabb", align 4
  %3 = alloca { double, double }, align 8
  %A = alloca %"src::lib::C2aabb", align 4
  store { double, double } %0, ptr %3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %A, ptr align 8 %3, i64 16, i1 false)
  store { double, double } %1, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %B, ptr align 8 %2, i64 16, i1 false)
    #dbg_declare(ptr %A, !42, !DIExpression(), !52)
    #dbg_declare(ptr %B, !43, !DIExpression(), !53)
  %4 = getelementptr inbounds %"src::lib::C2aabb", ptr %B, i32 0, i32 1, !dbg !54
  %_5 = load float, ptr %4, align 4, !dbg !54, !noundef !31
  %_6 = load float, ptr %A, align 4, !dbg !55, !noundef !31
  %_4 = fcmp olt float %_5, %_6, !dbg !56
  %d0 = zext i1 %_4 to i32, !dbg !56
  store i32 %d0, ptr %d0.dbg.spill, align 4, !dbg !56
    #dbg_declare(ptr %d0.dbg.spill, !44, !DIExpression(), !57)
  %5 = getelementptr inbounds %"src::lib::C2aabb", ptr %A, i32 0, i32 1, !dbg !58
  %_9 = load float, ptr %5, align 4, !dbg !58, !noundef !31
  %_10 = load float, ptr %B, align 4, !dbg !59, !noundef !31
  %_8 = fcmp olt float %_9, %_10, !dbg !60
  %d1 = zext i1 %_8 to i32, !dbg !60
  store i32 %d1, ptr %d1.dbg.spill, align 4, !dbg !60
    #dbg_declare(ptr %d1.dbg.spill, !46, !DIExpression(), !61)
  %6 = getelementptr inbounds %"src::lib::C2aabb", ptr %B, i32 0, i32 1, !dbg !62
  %7 = getelementptr inbounds { float, float }, ptr %6, i32 0, i32 1, !dbg !62
  %_13 = load float, ptr %7, align 4, !dbg !62, !noundef !31
  %8 = getelementptr inbounds { float, float }, ptr %A, i32 0, i32 1, !dbg !63
  %_14 = load float, ptr %8, align 4, !dbg !63, !noundef !31
  %_12 = fcmp olt float %_13, %_14, !dbg !64
  %d2 = zext i1 %_12 to i32, !dbg !64
  store i32 %d2, ptr %d2.dbg.spill, align 4, !dbg !64
    #dbg_declare(ptr %d2.dbg.spill, !48, !DIExpression(), !65)
  %9 = getelementptr inbounds %"src::lib::C2aabb", ptr %A, i32 0, i32 1, !dbg !66
  %10 = getelementptr inbounds { float, float }, ptr %9, i32 0, i32 1, !dbg !66
  %_17 = load float, ptr %10, align 4, !dbg !66, !noundef !31
  %11 = getelementptr inbounds { float, float }, ptr %B, i32 0, i32 1, !dbg !67
  %_18 = load float, ptr %11, align 4, !dbg !67, !noundef !31
  %_16 = fcmp olt float %_17, %_18, !dbg !68
  %d3 = zext i1 %_16 to i32, !dbg !68
  store i32 %d3, ptr %d3.dbg.spill, align 4, !dbg !68
    #dbg_declare(ptr %d3.dbg.spill, !50, !DIExpression(), !69)
  %_22 = or i32 %d0, %d1, !dbg !70
  %_21 = or i32 %_22, %d2, !dbg !70
  %_20 = or i32 %_21, %d3, !dbg !71
  %_19 = icmp eq i32 %_20, 0, !dbg !72
  %12 = zext i1 %_19 to i32, !dbg !72
  ret i32 %12, !dbg !73
}

; Function Attrs: nonlazybind uwtable
define i32 @c2CircletoAABB({ double, float } %0, { double, double } %1) unnamed_addr #0 !dbg !74 {
start:
  %2 = alloca %"src::lib::C2aabb", align 4
  %3 = alloca %"src::lib::C2circle", align 4
  %4 = alloca { double, double }, align 8
  %B = alloca %"src::lib::C2aabb", align 4
  %5 = alloca { double, float }, align 8
  %A = alloca %"src::lib::C2circle", align 4
  store { double, float } %0, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %A, ptr align 8 %5, i64 12, i1 false)
  store { double, double } %1, ptr %4, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %B, ptr align 8 %4, i64 16, i1 false)
    #dbg_declare(ptr %A, !82, !DIExpression(), !84)
    #dbg_declare(ptr %B, !83, !DIExpression(), !85)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %3, ptr align 4 %A, i64 12, i1 false), !dbg !86
  %6 = load { double, float }, ptr %3, align 4, !dbg !86
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr align 4 %B, i64 16, i1 false), !dbg !86
  %7 = load { double, double }, ptr %2, align 4, !dbg !86
  %8 = call i32 @_ZN12collided_lib3src3lib16c2_circleto_aabb17haa1601bff59172b9E({ double, float } %6, { double, double } %7), !dbg !86
  ret i32 %8, !dbg !87
}

; Function Attrs: nonlazybind uwtable
define internal i32 @_ZN12collided_lib3src3lib16c2_circleto_aabb17haa1601bff59172b9E({ double, float } %0, { double, double } %1) unnamed_addr #0 !dbg !88 {
start:
  %r2.dbg.spill = alloca float, align 4
  %d2.dbg.spill = alloca float, align 4
  %2 = alloca { float, float }, align 4
  %3 = alloca { float, float }, align 4
  %ab.dbg.spill = alloca { float, float }, align 4
  %4 = alloca double, align 8
  %5 = alloca { float, float }, align 4
  %6 = alloca { float, float }, align 4
  %7 = alloca { float, float }, align 4
  %l.dbg.spill = alloca { float, float }, align 4
  %8 = alloca double, align 8
  %9 = alloca { float, float }, align 4
  %10 = alloca { float, float }, align 4
  %11 = alloca { float, float }, align 4
  %12 = alloca { float, float }, align 4
  %13 = alloca { double, double }, align 8
  %B = alloca %"src::lib::C2aabb", align 4
  %14 = alloca { double, float }, align 8
  %A = alloca %"src::lib::C2circle", align 4
  store { double, float } %0, ptr %14, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %A, ptr align 8 %14, i64 12, i1 false)
  store { double, double } %1, ptr %13, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %B, ptr align 8 %13, i64 16, i1 false)
    #dbg_declare(ptr %A, !90, !DIExpression(), !100)
    #dbg_declare(ptr %B, !91, !DIExpression(), !101)
  %15 = getelementptr inbounds { float, float }, ptr %A, i32 0, i32 0, !dbg !102
  %_4.0 = load float, ptr %15, align 4, !dbg !102, !noundef !31
  %16 = getelementptr inbounds { float, float }, ptr %A, i32 0, i32 1, !dbg !102
  %_4.1 = load float, ptr %16, align 4, !dbg !102, !noundef !31
  %17 = getelementptr inbounds { float, float }, ptr %B, i32 0, i32 0, !dbg !103
  %_5.0 = load float, ptr %17, align 4, !dbg !103, !noundef !31
  %18 = getelementptr inbounds { float, float }, ptr %B, i32 0, i32 1, !dbg !103
  %_5.1 = load float, ptr %18, align 4, !dbg !103, !noundef !31
  %19 = getelementptr inbounds %"src::lib::C2aabb", ptr %B, i32 0, i32 1, !dbg !104
  %20 = getelementptr inbounds { float, float }, ptr %19, i32 0, i32 0, !dbg !104
  %_6.0 = load float, ptr %20, align 4, !dbg !104, !noundef !31
  %21 = getelementptr inbounds { float, float }, ptr %19, i32 0, i32 1, !dbg !104
  %_6.1 = load float, ptr %21, align 4, !dbg !104, !noundef !31
  %22 = getelementptr inbounds { float, float }, ptr %12, i32 0, i32 0, !dbg !105
  store float %_4.0, ptr %22, align 4, !dbg !105
  %23 = getelementptr inbounds { float, float }, ptr %12, i32 0, i32 1, !dbg !105
  store float %_4.1, ptr %23, align 4, !dbg !105
  %24 = load double, ptr %12, align 4, !dbg !105
  %25 = getelementptr inbounds { float, float }, ptr %11, i32 0, i32 0, !dbg !105
  store float %_5.0, ptr %25, align 4, !dbg !105
  %26 = getelementptr inbounds { float, float }, ptr %11, i32 0, i32 1, !dbg !105
  store float %_5.1, ptr %26, align 4, !dbg !105
  %27 = load double, ptr %11, align 4, !dbg !105
  %28 = getelementptr inbounds { float, float }, ptr %10, i32 0, i32 0, !dbg !105
  store float %_6.0, ptr %28, align 4, !dbg !105
  %29 = getelementptr inbounds { float, float }, ptr %10, i32 0, i32 1, !dbg !105
  store float %_6.1, ptr %29, align 4, !dbg !105
  %30 = load double, ptr %10, align 4, !dbg !105
  %31 = call double @_ZN12collided_lib3src3lib9c2_clampv17he35c782d5eea7560E(double %24, double %27, double %30), !dbg !105
  store double %31, ptr %8, align 8, !dbg !105
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %9, ptr align 8 %8, i64 8, i1 false), !dbg !105
  %32 = getelementptr inbounds { float, float }, ptr %9, i32 0, i32 0, !dbg !105
  %l.0 = load float, ptr %32, align 4, !dbg !105, !noundef !31
  %33 = getelementptr inbounds { float, float }, ptr %9, i32 0, i32 1, !dbg !105
  %l.1 = load float, ptr %33, align 4, !dbg !105, !noundef !31
  %34 = getelementptr inbounds { float, float }, ptr %l.dbg.spill, i32 0, i32 0, !dbg !105
  store float %l.0, ptr %34, align 4, !dbg !105
  %35 = getelementptr inbounds { float, float }, ptr %l.dbg.spill, i32 0, i32 1, !dbg !105
  store float %l.1, ptr %35, align 4, !dbg !105
    #dbg_declare(ptr %l.dbg.spill, !92, !DIExpression(), !106)
  %36 = getelementptr inbounds { float, float }, ptr %A, i32 0, i32 0, !dbg !107
  %_8.0 = load float, ptr %36, align 4, !dbg !107, !noundef !31
  %37 = getelementptr inbounds { float, float }, ptr %A, i32 0, i32 1, !dbg !107
  %_8.1 = load float, ptr %37, align 4, !dbg !107, !noundef !31
  %38 = getelementptr inbounds { float, float }, ptr %7, i32 0, i32 0, !dbg !108
  store float %_8.0, ptr %38, align 4, !dbg !108
  %39 = getelementptr inbounds { float, float }, ptr %7, i32 0, i32 1, !dbg !108
  store float %_8.1, ptr %39, align 4, !dbg !108
  %40 = load double, ptr %7, align 4, !dbg !108
  %41 = getelementptr inbounds { float, float }, ptr %6, i32 0, i32 0, !dbg !108
  store float %l.0, ptr %41, align 4, !dbg !108
  %42 = getelementptr inbounds { float, float }, ptr %6, i32 0, i32 1, !dbg !108
  store float %l.1, ptr %42, align 4, !dbg !108
  %43 = load double, ptr %6, align 4, !dbg !108
  %44 = call double @_ZN12collided_lib3src3lib6c2_sub17h128cba2b92d51e38E(double %40, double %43), !dbg !108
  store double %44, ptr %4, align 8, !dbg !108
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %5, ptr align 8 %4, i64 8, i1 false), !dbg !108
  %45 = getelementptr inbounds { float, float }, ptr %5, i32 0, i32 0, !dbg !108
  %ab.0 = load float, ptr %45, align 4, !dbg !108, !noundef !31
  %46 = getelementptr inbounds { float, float }, ptr %5, i32 0, i32 1, !dbg !108
  %ab.1 = load float, ptr %46, align 4, !dbg !108, !noundef !31
  %47 = getelementptr inbounds { float, float }, ptr %ab.dbg.spill, i32 0, i32 0, !dbg !108
  store float %ab.0, ptr %47, align 4, !dbg !108
  %48 = getelementptr inbounds { float, float }, ptr %ab.dbg.spill, i32 0, i32 1, !dbg !108
  store float %ab.1, ptr %48, align 4, !dbg !108
    #dbg_declare(ptr %ab.dbg.spill, !94, !DIExpression(), !109)
  %49 = getelementptr inbounds { float, float }, ptr %3, i32 0, i32 0, !dbg !110
  store float %ab.0, ptr %49, align 4, !dbg !110
  %50 = getelementptr inbounds { float, float }, ptr %3, i32 0, i32 1, !dbg !110
  store float %ab.1, ptr %50, align 4, !dbg !110
  %51 = load double, ptr %3, align 4, !dbg !110
  %52 = getelementptr inbounds { float, float }, ptr %2, i32 0, i32 0, !dbg !110
  store float %ab.0, ptr %52, align 4, !dbg !110
  %53 = getelementptr inbounds { float, float }, ptr %2, i32 0, i32 1, !dbg !110
  store float %ab.1, ptr %53, align 4, !dbg !110
  %54 = load double, ptr %2, align 4, !dbg !110
  %d2 = call float @_ZN12collided_lib3src3lib6c2_dot17h57198fba668452d7E(double %51, double %54), !dbg !110
  store float %d2, ptr %d2.dbg.spill, align 4, !dbg !110
    #dbg_declare(ptr %d2.dbg.spill, !96, !DIExpression(), !111)
  %55 = getelementptr inbounds %"src::lib::C2circle", ptr %A, i32 0, i32 1, !dbg !112
  %_14 = load float, ptr %55, align 4, !dbg !112, !noundef !31
  %56 = getelementptr inbounds %"src::lib::C2circle", ptr %A, i32 0, i32 1, !dbg !113
  %_15 = load float, ptr %56, align 4, !dbg !113, !noundef !31
  %r2 = fmul float %_14, %_15, !dbg !112
  store float %r2, ptr %r2.dbg.spill, align 4, !dbg !112
    #dbg_declare(ptr %r2.dbg.spill, !98, !DIExpression(), !114)
  %_16 = fcmp olt float %d2, %r2, !dbg !115
  %57 = zext i1 %_16 to i32, !dbg !115
  ret i32 %57, !dbg !116
}

; Function Attrs: nonlazybind uwtable
define internal double @_ZN12collided_lib3src3lib9c2_clampv17he35c782d5eea7560E(double %0, double %1, double %2) unnamed_addr #0 !dbg !117 {
start:
  %3 = alloca { float, float }, align 4
  %4 = alloca double, align 8
  %5 = alloca { float, float }, align 4
  %6 = alloca { float, float }, align 4
  %7 = alloca { float, float }, align 4
  %8 = alloca double, align 8
  %9 = alloca { float, float }, align 4
  %10 = alloca { float, float }, align 4
  %11 = alloca { float, float }, align 4
  %12 = alloca double, align 8
  %hi = alloca { float, float }, align 4
  %13 = alloca double, align 8
  %lo = alloca { float, float }, align 4
  %14 = alloca double, align 8
  %a = alloca { float, float }, align 4
  store double %0, ptr %14, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %a, ptr align 8 %14, i64 8, i1 false)
  store double %1, ptr %13, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %lo, ptr align 8 %13, i64 8, i1 false)
  store double %2, ptr %12, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %hi, ptr align 8 %12, i64 8, i1 false)
    #dbg_declare(ptr %a, !121, !DIExpression(), !124)
    #dbg_declare(ptr %lo, !122, !DIExpression(), !125)
    #dbg_declare(ptr %hi, !123, !DIExpression(), !126)
  %15 = getelementptr inbounds { float, float }, ptr %a, i32 0, i32 0, !dbg !127
  %16 = load float, ptr %15, align 4, !dbg !127, !noundef !31
  %17 = getelementptr inbounds { float, float }, ptr %a, i32 0, i32 1, !dbg !127
  %18 = load float, ptr %17, align 4, !dbg !127, !noundef !31
  %19 = getelementptr inbounds { float, float }, ptr %11, i32 0, i32 0, !dbg !127
  store float %16, ptr %19, align 4, !dbg !127
  %20 = getelementptr inbounds { float, float }, ptr %11, i32 0, i32 1, !dbg !127
  store float %18, ptr %20, align 4, !dbg !127
  %21 = load double, ptr %11, align 4, !dbg !127
  %22 = getelementptr inbounds { float, float }, ptr %hi, i32 0, i32 0, !dbg !127
  %23 = load float, ptr %22, align 4, !dbg !127, !noundef !31
  %24 = getelementptr inbounds { float, float }, ptr %hi, i32 0, i32 1, !dbg !127
  %25 = load float, ptr %24, align 4, !dbg !127, !noundef !31
  %26 = getelementptr inbounds { float, float }, ptr %10, i32 0, i32 0, !dbg !127
  store float %23, ptr %26, align 4, !dbg !127
  %27 = getelementptr inbounds { float, float }, ptr %10, i32 0, i32 1, !dbg !127
  store float %25, ptr %27, align 4, !dbg !127
  %28 = load double, ptr %10, align 4, !dbg !127
  %29 = call double @_ZN12collided_lib3src3lib7c2_minv17h4d9f4be4fb3b6514E(double %21, double %28), !dbg !127
  store double %29, ptr %8, align 8, !dbg !127
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %9, ptr align 8 %8, i64 8, i1 false), !dbg !127
  %30 = getelementptr inbounds { float, float }, ptr %9, i32 0, i32 0, !dbg !127
  %_4.0 = load float, ptr %30, align 4, !dbg !127, !noundef !31
  %31 = getelementptr inbounds { float, float }, ptr %9, i32 0, i32 1, !dbg !127
  %_4.1 = load float, ptr %31, align 4, !dbg !127, !noundef !31
  %32 = getelementptr inbounds { float, float }, ptr %lo, i32 0, i32 0, !dbg !128
  %33 = load float, ptr %32, align 4, !dbg !128, !noundef !31
  %34 = getelementptr inbounds { float, float }, ptr %lo, i32 0, i32 1, !dbg !128
  %35 = load float, ptr %34, align 4, !dbg !128, !noundef !31
  %36 = getelementptr inbounds { float, float }, ptr %7, i32 0, i32 0, !dbg !128
  store float %33, ptr %36, align 4, !dbg !128
  %37 = getelementptr inbounds { float, float }, ptr %7, i32 0, i32 1, !dbg !128
  store float %35, ptr %37, align 4, !dbg !128
  %38 = load double, ptr %7, align 4, !dbg !128
  %39 = getelementptr inbounds { float, float }, ptr %6, i32 0, i32 0, !dbg !128
  store float %_4.0, ptr %39, align 4, !dbg !128
  %40 = getelementptr inbounds { float, float }, ptr %6, i32 0, i32 1, !dbg !128
  store float %_4.1, ptr %40, align 4, !dbg !128
  %41 = load double, ptr %6, align 4, !dbg !128
  %42 = call double @_ZN12collided_lib3src3lib7c2_maxv17h950e3002e2fd61feE(double %38, double %41), !dbg !128
  store double %42, ptr %4, align 8, !dbg !128
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %5, ptr align 8 %4, i64 8, i1 false), !dbg !128
  %43 = getelementptr inbounds { float, float }, ptr %5, i32 0, i32 0, !dbg !128
  %44 = load float, ptr %43, align 4, !dbg !128, !noundef !31
  %45 = getelementptr inbounds { float, float }, ptr %5, i32 0, i32 1, !dbg !128
  %46 = load float, ptr %45, align 4, !dbg !128, !noundef !31
  %47 = getelementptr inbounds { float, float }, ptr %3, i32 0, i32 0, !dbg !129
  store float %44, ptr %47, align 4, !dbg !129
  %48 = getelementptr inbounds { float, float }, ptr %3, i32 0, i32 1, !dbg !129
  store float %46, ptr %48, align 4, !dbg !129
  %49 = load double, ptr %3, align 4, !dbg !129
  ret double %49, !dbg !129
}

; Function Attrs: nonlazybind uwtable
define internal double @_ZN12collided_lib3src3lib6c2_sub17h128cba2b92d51e38E(double %0, double %1) unnamed_addr #0 !dbg !130 {
start:
  %2 = alloca { float, float }, align 4
  %3 = alloca double, align 8
  %b = alloca { float, float }, align 4
  %4 = alloca double, align 8
  %a = alloca { float, float }, align 4
  store double %0, ptr %4, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %a, ptr align 8 %4, i64 8, i1 false)
  store double %1, ptr %3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %b, ptr align 8 %3, i64 8, i1 false)
    #dbg_declare(ptr %a, !134, !DIExpression(), !136)
    #dbg_declare(ptr %b, !135, !DIExpression(), !137)
  %_3 = load float, ptr %b, align 4, !dbg !138, !noundef !31
  %5 = load float, ptr %a, align 4, !dbg !139, !noundef !31
  %6 = fsub float %5, %_3, !dbg !139
  store float %6, ptr %a, align 4, !dbg !139
  %7 = getelementptr inbounds { float, float }, ptr %b, i32 0, i32 1, !dbg !140
  %_4 = load float, ptr %7, align 4, !dbg !140, !noundef !31
  %8 = getelementptr inbounds { float, float }, ptr %a, i32 0, i32 1, !dbg !141
  %9 = getelementptr inbounds { float, float }, ptr %a, i32 0, i32 1, !dbg !141
  %10 = load float, ptr %9, align 4, !dbg !141, !noundef !31
  %11 = fsub float %10, %_4, !dbg !141
  store float %11, ptr %8, align 4, !dbg !141
  %12 = getelementptr inbounds { float, float }, ptr %a, i32 0, i32 0, !dbg !142
  %13 = load float, ptr %12, align 4, !dbg !142, !noundef !31
  %14 = getelementptr inbounds { float, float }, ptr %a, i32 0, i32 1, !dbg !142
  %15 = load float, ptr %14, align 4, !dbg !142, !noundef !31
  %16 = getelementptr inbounds { float, float }, ptr %2, i32 0, i32 0, !dbg !143
  store float %13, ptr %16, align 4, !dbg !143
  %17 = getelementptr inbounds { float, float }, ptr %2, i32 0, i32 1, !dbg !143
  store float %15, ptr %17, align 4, !dbg !143
  %18 = load double, ptr %2, align 4, !dbg !143
  ret double %18, !dbg !143
}

; Function Attrs: nonlazybind uwtable
define internal float @_ZN12collided_lib3src3lib6c2_dot17h57198fba668452d7E(double %0, double %1) unnamed_addr #0 !dbg !144 {
start:
  %2 = alloca double, align 8
  %b = alloca { float, float }, align 4
  %3 = alloca double, align 8
  %a = alloca { float, float }, align 4
  store double %0, ptr %3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %a, ptr align 8 %3, i64 8, i1 false)
  store double %1, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %b, ptr align 8 %2, i64 8, i1 false)
    #dbg_declare(ptr %a, !148, !DIExpression(), !150)
    #dbg_declare(ptr %b, !149, !DIExpression(), !151)
  %_4 = load float, ptr %a, align 4, !dbg !152, !noundef !31
  %_5 = load float, ptr %b, align 4, !dbg !153, !noundef !31
  %_3 = fmul float %_4, %_5, !dbg !152
  %4 = getelementptr inbounds { float, float }, ptr %a, i32 0, i32 1, !dbg !154
  %_7 = load float, ptr %4, align 4, !dbg !154, !noundef !31
  %5 = getelementptr inbounds { float, float }, ptr %b, i32 0, i32 1, !dbg !155
  %_8 = load float, ptr %5, align 4, !dbg !155, !noundef !31
  %_6 = fmul float %_7, %_8, !dbg !154
  %6 = fadd float %_3, %_6, !dbg !152
  ret float %6, !dbg !156
}

; Function Attrs: nonlazybind uwtable
define internal double @_ZN12collided_lib3src3lib7c2_minv17h4d9f4be4fb3b6514E(double %0, double %1) unnamed_addr #0 !dbg !157 {
start:
  %2 = alloca { float, float }, align 4
  %3 = alloca double, align 8
  %4 = alloca { float, float }, align 4
  %_7 = alloca float, align 4
  %_3 = alloca float, align 4
  %5 = alloca double, align 8
  %b = alloca { float, float }, align 4
  %6 = alloca double, align 8
  %a = alloca { float, float }, align 4
  store double %0, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %a, ptr align 8 %6, i64 8, i1 false)
  store double %1, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %b, ptr align 8 %5, i64 8, i1 false)
    #dbg_declare(ptr %a, !159, !DIExpression(), !161)
    #dbg_declare(ptr %b, !160, !DIExpression(), !162)
  %_5 = load float, ptr %a, align 4, !dbg !163, !noundef !31
  %_6 = load float, ptr %b, align 4, !dbg !164, !noundef !31
  %_4 = fcmp olt float %_5, %_6, !dbg !163
  br i1 %_4, label %bb1, label %bb2, !dbg !163

bb2:                                              ; preds = %start
  %7 = load float, ptr %b, align 4, !dbg !165, !noundef !31
  store float %7, ptr %_3, align 4, !dbg !165
  br label %bb3, !dbg !166

bb1:                                              ; preds = %start
  %8 = load float, ptr %a, align 4, !dbg !167, !noundef !31
  store float %8, ptr %_3, align 4, !dbg !167
  br label %bb3, !dbg !166

bb3:                                              ; preds = %bb1, %bb2
  %9 = getelementptr inbounds { float, float }, ptr %a, i32 0, i32 1, !dbg !168
  %_9 = load float, ptr %9, align 4, !dbg !168, !noundef !31
  %10 = getelementptr inbounds { float, float }, ptr %b, i32 0, i32 1, !dbg !169
  %_10 = load float, ptr %10, align 4, !dbg !169, !noundef !31
  %_8 = fcmp olt float %_9, %_10, !dbg !168
  br i1 %_8, label %bb4, label %bb5, !dbg !168

bb5:                                              ; preds = %bb3
  %11 = getelementptr inbounds { float, float }, ptr %b, i32 0, i32 1, !dbg !170
  %12 = load float, ptr %11, align 4, !dbg !170, !noundef !31
  store float %12, ptr %_7, align 4, !dbg !170
  br label %bb6, !dbg !171

bb4:                                              ; preds = %bb3
  %13 = getelementptr inbounds { float, float }, ptr %a, i32 0, i32 1, !dbg !172
  %14 = load float, ptr %13, align 4, !dbg !172, !noundef !31
  store float %14, ptr %_7, align 4, !dbg !172
  br label %bb6, !dbg !171

bb6:                                              ; preds = %bb4, %bb5
  %15 = load float, ptr %_3, align 4, !dbg !173, !noundef !31
  %16 = load float, ptr %_7, align 4, !dbg !173, !noundef !31
  %17 = call double @_ZN12collided_lib3src3lib4c2_v17h98d7d4a51db2d78fE(float %15, float %16), !dbg !173
  store double %17, ptr %3, align 8, !dbg !173
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %4, ptr align 8 %3, i64 8, i1 false), !dbg !173
  %18 = getelementptr inbounds { float, float }, ptr %4, i32 0, i32 0, !dbg !173
  %19 = load float, ptr %18, align 4, !dbg !173, !noundef !31
  %20 = getelementptr inbounds { float, float }, ptr %4, i32 0, i32 1, !dbg !173
  %21 = load float, ptr %20, align 4, !dbg !173, !noundef !31
  %22 = getelementptr inbounds { float, float }, ptr %2, i32 0, i32 0, !dbg !174
  store float %19, ptr %22, align 4, !dbg !174
  %23 = getelementptr inbounds { float, float }, ptr %2, i32 0, i32 1, !dbg !174
  store float %21, ptr %23, align 4, !dbg !174
  %24 = load double, ptr %2, align 4, !dbg !174
  ret double %24, !dbg !174
}

; Function Attrs: nonlazybind uwtable
define internal double @_ZN12collided_lib3src3lib7c2_maxv17h950e3002e2fd61feE(double %0, double %1) unnamed_addr #0 !dbg !175 {
start:
  %2 = alloca { float, float }, align 4
  %3 = alloca double, align 8
  %4 = alloca { float, float }, align 4
  %_7 = alloca float, align 4
  %_3 = alloca float, align 4
  %5 = alloca double, align 8
  %b = alloca { float, float }, align 4
  %6 = alloca double, align 8
  %a = alloca { float, float }, align 4
  store double %0, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %a, ptr align 8 %6, i64 8, i1 false)
  store double %1, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %b, ptr align 8 %5, i64 8, i1 false)
    #dbg_declare(ptr %a, !177, !DIExpression(), !179)
    #dbg_declare(ptr %b, !178, !DIExpression(), !180)
  %_5 = load float, ptr %a, align 4, !dbg !181, !noundef !31
  %_6 = load float, ptr %b, align 4, !dbg !182, !noundef !31
  %_4 = fcmp ogt float %_5, %_6, !dbg !181
  br i1 %_4, label %bb1, label %bb2, !dbg !181

bb2:                                              ; preds = %start
  %7 = load float, ptr %b, align 4, !dbg !183, !noundef !31
  store float %7, ptr %_3, align 4, !dbg !183
  br label %bb3, !dbg !184

bb1:                                              ; preds = %start
  %8 = load float, ptr %a, align 4, !dbg !185, !noundef !31
  store float %8, ptr %_3, align 4, !dbg !185
  br label %bb3, !dbg !184

bb3:                                              ; preds = %bb1, %bb2
  %9 = getelementptr inbounds { float, float }, ptr %a, i32 0, i32 1, !dbg !186
  %_9 = load float, ptr %9, align 4, !dbg !186, !noundef !31
  %10 = getelementptr inbounds { float, float }, ptr %b, i32 0, i32 1, !dbg !187
  %_10 = load float, ptr %10, align 4, !dbg !187, !noundef !31
  %_8 = fcmp ogt float %_9, %_10, !dbg !186
  br i1 %_8, label %bb4, label %bb5, !dbg !186

bb5:                                              ; preds = %bb3
  %11 = getelementptr inbounds { float, float }, ptr %b, i32 0, i32 1, !dbg !188
  %12 = load float, ptr %11, align 4, !dbg !188, !noundef !31
  store float %12, ptr %_7, align 4, !dbg !188
  br label %bb6, !dbg !189

bb4:                                              ; preds = %bb3
  %13 = getelementptr inbounds { float, float }, ptr %a, i32 0, i32 1, !dbg !190
  %14 = load float, ptr %13, align 4, !dbg !190, !noundef !31
  store float %14, ptr %_7, align 4, !dbg !190
  br label %bb6, !dbg !189

bb6:                                              ; preds = %bb4, %bb5
  %15 = load float, ptr %_3, align 4, !dbg !191, !noundef !31
  %16 = load float, ptr %_7, align 4, !dbg !191, !noundef !31
  %17 = call double @_ZN12collided_lib3src3lib4c2_v17h98d7d4a51db2d78fE(float %15, float %16), !dbg !191
  store double %17, ptr %3, align 8, !dbg !191
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %4, ptr align 8 %3, i64 8, i1 false), !dbg !191
  %18 = getelementptr inbounds { float, float }, ptr %4, i32 0, i32 0, !dbg !191
  %19 = load float, ptr %18, align 4, !dbg !191, !noundef !31
  %20 = getelementptr inbounds { float, float }, ptr %4, i32 0, i32 1, !dbg !191
  %21 = load float, ptr %20, align 4, !dbg !191, !noundef !31
  %22 = getelementptr inbounds { float, float }, ptr %2, i32 0, i32 0, !dbg !192
  store float %19, ptr %22, align 4, !dbg !192
  %23 = getelementptr inbounds { float, float }, ptr %2, i32 0, i32 1, !dbg !192
  store float %21, ptr %23, align 4, !dbg !192
  %24 = load double, ptr %2, align 4, !dbg !192
  ret double %24, !dbg !192
}

; Function Attrs: nonlazybind uwtable
define internal double @_ZN12collided_lib3src3lib4c2_v17h98d7d4a51db2d78fE(float %x, float %y) unnamed_addr #0 !dbg !193 {
start:
  %y.dbg.spill = alloca float, align 4
  %x.dbg.spill = alloca float, align 4
  %0 = alloca { float, float }, align 4
  store float %x, ptr %x.dbg.spill, align 4
    #dbg_declare(ptr %x.dbg.spill, !197, !DIExpression(), !199)
  store float %y, ptr %y.dbg.spill, align 4
    #dbg_declare(ptr %y.dbg.spill, !198, !DIExpression(), !200)
  store float %x, ptr %0, align 4, !dbg !201
  %1 = getelementptr inbounds { float, float }, ptr %0, i32 0, i32 1, !dbg !201
  store float %y, ptr %1, align 4, !dbg !201
  %2 = load double, ptr %0, align 4, !dbg !202
  ret double %2, !dbg !202
}

; Function Attrs: nonlazybind uwtable
define i32 @c2CircletoCircle({ double, float } %0, { double, float } %1) unnamed_addr #0 !dbg !203 {
start:
  %2 = alloca %"src::lib::C2circle", align 4
  %3 = alloca %"src::lib::C2circle", align 4
  %4 = alloca { double, float }, align 8
  %B = alloca %"src::lib::C2circle", align 4
  %5 = alloca { double, float }, align 8
  %A = alloca %"src::lib::C2circle", align 4
  store { double, float } %0, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %A, ptr align 8 %5, i64 12, i1 false)
  store { double, float } %1, ptr %4, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %B, ptr align 8 %4, i64 12, i1 false)
    #dbg_declare(ptr %A, !207, !DIExpression(), !209)
    #dbg_declare(ptr %B, !208, !DIExpression(), !210)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %3, ptr align 4 %A, i64 12, i1 false), !dbg !211
  %6 = load { double, float }, ptr %3, align 4, !dbg !211
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr align 4 %B, i64 12, i1 false), !dbg !211
  %7 = load { double, float }, ptr %2, align 4, !dbg !211
  %8 = call i32 @_ZN12collided_lib3src3lib18c2_circleto_circle17h3f5e4655e3ec8882E({ double, float } %6, { double, float } %7), !dbg !211
  ret i32 %8, !dbg !212
}

; Function Attrs: nonlazybind uwtable
define internal i32 @_ZN12collided_lib3src3lib18c2_circleto_circle17h3f5e4655e3ec8882E({ double, float } %0, { double, float } %1) unnamed_addr #0 !dbg !213 {
start:
  %d2.dbg.spill = alloca float, align 4
  %2 = alloca { float, float }, align 4
  %3 = alloca { float, float }, align 4
  %c.dbg.spill = alloca { float, float }, align 4
  %4 = alloca double, align 8
  %5 = alloca { float, float }, align 4
  %6 = alloca { float, float }, align 4
  %7 = alloca { float, float }, align 4
  %r2 = alloca float, align 4
  %8 = alloca { double, float }, align 8
  %B = alloca %"src::lib::C2circle", align 4
  %9 = alloca { double, float }, align 8
  %A = alloca %"src::lib::C2circle", align 4
  store { double, float } %0, ptr %9, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %A, ptr align 8 %9, i64 12, i1 false)
  store { double, float } %1, ptr %8, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %B, ptr align 8 %8, i64 12, i1 false)
    #dbg_declare(ptr %A, !215, !DIExpression(), !223)
    #dbg_declare(ptr %B, !216, !DIExpression(), !224)
    #dbg_declare(ptr %r2, !221, !DIExpression(), !225)
  %10 = getelementptr inbounds { float, float }, ptr %B, i32 0, i32 0, !dbg !226
  %_4.0 = load float, ptr %10, align 4, !dbg !226, !noundef !31
  %11 = getelementptr inbounds { float, float }, ptr %B, i32 0, i32 1, !dbg !226
  %_4.1 = load float, ptr %11, align 4, !dbg !226, !noundef !31
  %12 = getelementptr inbounds { float, float }, ptr %A, i32 0, i32 0, !dbg !227
  %_5.0 = load float, ptr %12, align 4, !dbg !227, !noundef !31
  %13 = getelementptr inbounds { float, float }, ptr %A, i32 0, i32 1, !dbg !227
  %_5.1 = load float, ptr %13, align 4, !dbg !227, !noundef !31
  %14 = getelementptr inbounds { float, float }, ptr %7, i32 0, i32 0, !dbg !228
  store float %_4.0, ptr %14, align 4, !dbg !228
  %15 = getelementptr inbounds { float, float }, ptr %7, i32 0, i32 1, !dbg !228
  store float %_4.1, ptr %15, align 4, !dbg !228
  %16 = load double, ptr %7, align 4, !dbg !228
  %17 = getelementptr inbounds { float, float }, ptr %6, i32 0, i32 0, !dbg !228
  store float %_5.0, ptr %17, align 4, !dbg !228
  %18 = getelementptr inbounds { float, float }, ptr %6, i32 0, i32 1, !dbg !228
  store float %_5.1, ptr %18, align 4, !dbg !228
  %19 = load double, ptr %6, align 4, !dbg !228
  %20 = call double @_ZN12collided_lib3src3lib6c2_sub17h128cba2b92d51e38E(double %16, double %19), !dbg !228
  store double %20, ptr %4, align 8, !dbg !228
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %5, ptr align 8 %4, i64 8, i1 false), !dbg !228
  %21 = getelementptr inbounds { float, float }, ptr %5, i32 0, i32 0, !dbg !228
  %c.0 = load float, ptr %21, align 4, !dbg !228, !noundef !31
  %22 = getelementptr inbounds { float, float }, ptr %5, i32 0, i32 1, !dbg !228
  %c.1 = load float, ptr %22, align 4, !dbg !228, !noundef !31
  %23 = getelementptr inbounds { float, float }, ptr %c.dbg.spill, i32 0, i32 0, !dbg !228
  store float %c.0, ptr %23, align 4, !dbg !228
  %24 = getelementptr inbounds { float, float }, ptr %c.dbg.spill, i32 0, i32 1, !dbg !228
  store float %c.1, ptr %24, align 4, !dbg !228
    #dbg_declare(ptr %c.dbg.spill, !217, !DIExpression(), !229)
  %25 = getelementptr inbounds { float, float }, ptr %3, i32 0, i32 0, !dbg !230
  store float %c.0, ptr %25, align 4, !dbg !230
  %26 = getelementptr inbounds { float, float }, ptr %3, i32 0, i32 1, !dbg !230
  store float %c.1, ptr %26, align 4, !dbg !230
  %27 = load double, ptr %3, align 4, !dbg !230
  %28 = getelementptr inbounds { float, float }, ptr %2, i32 0, i32 0, !dbg !230
  store float %c.0, ptr %28, align 4, !dbg !230
  %29 = getelementptr inbounds { float, float }, ptr %2, i32 0, i32 1, !dbg !230
  store float %c.1, ptr %29, align 4, !dbg !230
  %30 = load double, ptr %2, align 4, !dbg !230
  %d2 = call float @_ZN12collided_lib3src3lib6c2_dot17h57198fba668452d7E(double %27, double %30), !dbg !230
  store float %d2, ptr %d2.dbg.spill, align 4, !dbg !230
    #dbg_declare(ptr %d2.dbg.spill, !219, !DIExpression(), !231)
  %31 = getelementptr inbounds %"src::lib::C2circle", ptr %A, i32 0, i32 1, !dbg !232
  %_10 = load float, ptr %31, align 4, !dbg !232, !noundef !31
  %32 = getelementptr inbounds %"src::lib::C2circle", ptr %B, i32 0, i32 1, !dbg !233
  %_11 = load float, ptr %32, align 4, !dbg !233, !noundef !31
  %33 = fadd float %_10, %_11, !dbg !232
  store float %33, ptr %r2, align 4, !dbg !232
  %_12 = load float, ptr %r2, align 4, !dbg !234, !noundef !31
  %_13 = load float, ptr %r2, align 4, !dbg !235, !noundef !31
  %34 = fmul float %_12, %_13, !dbg !236
  store float %34, ptr %r2, align 4, !dbg !236
  %_16 = load float, ptr %r2, align 4, !dbg !237, !noundef !31
  %_14 = fcmp olt float %d2, %_16, !dbg !238
  %35 = zext i1 %_14 to i32, !dbg !238
  ret i32 %35, !dbg !239
}

; Function Attrs: nonlazybind uwtable
define double @c2Clampv(double %0, double %1, double %2) unnamed_addr #0 !dbg !240 {
start:
  %3 = alloca { float, float }, align 4
  %4 = alloca double, align 8
  %5 = alloca { float, float }, align 4
  %6 = alloca { float, float }, align 4
  %7 = alloca { float, float }, align 4
  %8 = alloca { float, float }, align 4
  %9 = alloca double, align 8
  %hi = alloca { float, float }, align 4
  %10 = alloca double, align 8
  %lo = alloca { float, float }, align 4
  %11 = alloca double, align 8
  %a = alloca { float, float }, align 4
  store double %0, ptr %11, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %a, ptr align 8 %11, i64 8, i1 false)
  store double %1, ptr %10, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %lo, ptr align 8 %10, i64 8, i1 false)
  store double %2, ptr %9, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %hi, ptr align 8 %9, i64 8, i1 false)
    #dbg_declare(ptr %a, !242, !DIExpression(), !245)
    #dbg_declare(ptr %lo, !243, !DIExpression(), !246)
    #dbg_declare(ptr %hi, !244, !DIExpression(), !247)
  %12 = getelementptr inbounds { float, float }, ptr %a, i32 0, i32 0, !dbg !248
  %13 = load float, ptr %12, align 4, !dbg !248, !noundef !31
  %14 = getelementptr inbounds { float, float }, ptr %a, i32 0, i32 1, !dbg !248
  %15 = load float, ptr %14, align 4, !dbg !248, !noundef !31
  %16 = getelementptr inbounds { float, float }, ptr %8, i32 0, i32 0, !dbg !248
  store float %13, ptr %16, align 4, !dbg !248
  %17 = getelementptr inbounds { float, float }, ptr %8, i32 0, i32 1, !dbg !248
  store float %15, ptr %17, align 4, !dbg !248
  %18 = load double, ptr %8, align 4, !dbg !248
  %19 = getelementptr inbounds { float, float }, ptr %lo, i32 0, i32 0, !dbg !248
  %20 = load float, ptr %19, align 4, !dbg !248, !noundef !31
  %21 = getelementptr inbounds { float, float }, ptr %lo, i32 0, i32 1, !dbg !248
  %22 = load float, ptr %21, align 4, !dbg !248, !noundef !31
  %23 = getelementptr inbounds { float, float }, ptr %7, i32 0, i32 0, !dbg !248
  store float %20, ptr %23, align 4, !dbg !248
  %24 = getelementptr inbounds { float, float }, ptr %7, i32 0, i32 1, !dbg !248
  store float %22, ptr %24, align 4, !dbg !248
  %25 = load double, ptr %7, align 4, !dbg !248
  %26 = getelementptr inbounds { float, float }, ptr %hi, i32 0, i32 0, !dbg !248
  %27 = load float, ptr %26, align 4, !dbg !248, !noundef !31
  %28 = getelementptr inbounds { float, float }, ptr %hi, i32 0, i32 1, !dbg !248
  %29 = load float, ptr %28, align 4, !dbg !248, !noundef !31
  %30 = getelementptr inbounds { float, float }, ptr %6, i32 0, i32 0, !dbg !248
  store float %27, ptr %30, align 4, !dbg !248
  %31 = getelementptr inbounds { float, float }, ptr %6, i32 0, i32 1, !dbg !248
  store float %29, ptr %31, align 4, !dbg !248
  %32 = load double, ptr %6, align 4, !dbg !248
  %33 = call double @_ZN12collided_lib3src3lib9c2_clampv17he35c782d5eea7560E(double %18, double %25, double %32), !dbg !248
  store double %33, ptr %4, align 8, !dbg !248
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %5, ptr align 8 %4, i64 8, i1 false), !dbg !248
  %34 = getelementptr inbounds { float, float }, ptr %5, i32 0, i32 0, !dbg !248
  %35 = load float, ptr %34, align 4, !dbg !248, !noundef !31
  %36 = getelementptr inbounds { float, float }, ptr %5, i32 0, i32 1, !dbg !248
  %37 = load float, ptr %36, align 4, !dbg !248, !noundef !31
  %38 = getelementptr inbounds { float, float }, ptr %3, i32 0, i32 0, !dbg !249
  store float %35, ptr %38, align 4, !dbg !249
  %39 = getelementptr inbounds { float, float }, ptr %3, i32 0, i32 1, !dbg !249
  store float %37, ptr %39, align 4, !dbg !249
  %40 = load double, ptr %3, align 4, !dbg !249
  ret double %40, !dbg !249
}

; Function Attrs: nonlazybind uwtable
define float @c2Dot(double %0, double %1) unnamed_addr #0 !dbg !250 {
start:
  %2 = alloca { float, float }, align 4
  %3 = alloca { float, float }, align 4
  %4 = alloca double, align 8
  %b = alloca { float, float }, align 4
  %5 = alloca double, align 8
  %a = alloca { float, float }, align 4
  store double %0, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %a, ptr align 8 %5, i64 8, i1 false)
  store double %1, ptr %4, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %b, ptr align 8 %4, i64 8, i1 false)
    #dbg_declare(ptr %a, !252, !DIExpression(), !254)
    #dbg_declare(ptr %b, !253, !DIExpression(), !255)
  %6 = getelementptr inbounds { float, float }, ptr %a, i32 0, i32 0, !dbg !256
  %7 = load float, ptr %6, align 4, !dbg !256, !noundef !31
  %8 = getelementptr inbounds { float, float }, ptr %a, i32 0, i32 1, !dbg !256
  %9 = load float, ptr %8, align 4, !dbg !256, !noundef !31
  %10 = getelementptr inbounds { float, float }, ptr %3, i32 0, i32 0, !dbg !256
  store float %7, ptr %10, align 4, !dbg !256
  %11 = getelementptr inbounds { float, float }, ptr %3, i32 0, i32 1, !dbg !256
  store float %9, ptr %11, align 4, !dbg !256
  %12 = load double, ptr %3, align 4, !dbg !256
  %13 = getelementptr inbounds { float, float }, ptr %b, i32 0, i32 0, !dbg !256
  %14 = load float, ptr %13, align 4, !dbg !256, !noundef !31
  %15 = getelementptr inbounds { float, float }, ptr %b, i32 0, i32 1, !dbg !256
  %16 = load float, ptr %15, align 4, !dbg !256, !noundef !31
  %17 = getelementptr inbounds { float, float }, ptr %2, i32 0, i32 0, !dbg !256
  store float %14, ptr %17, align 4, !dbg !256
  %18 = getelementptr inbounds { float, float }, ptr %2, i32 0, i32 1, !dbg !256
  store float %16, ptr %18, align 4, !dbg !256
  %19 = load double, ptr %2, align 4, !dbg !256
  %20 = call float @_ZN12collided_lib3src3lib6c2_dot17h57198fba668452d7E(double %12, double %19), !dbg !256
  ret float %20, !dbg !257
}

; Function Attrs: nonlazybind uwtable
define double @c2Maxv(double %0, double %1) unnamed_addr #0 !dbg !258 {
start:
  %2 = alloca { float, float }, align 4
  %3 = alloca double, align 8
  %4 = alloca { float, float }, align 4
  %5 = alloca { float, float }, align 4
  %6 = alloca { float, float }, align 4
  %7 = alloca double, align 8
  %b = alloca { float, float }, align 4
  %8 = alloca double, align 8
  %a = alloca { float, float }, align 4
  store double %0, ptr %8, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %a, ptr align 8 %8, i64 8, i1 false)
  store double %1, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %b, ptr align 8 %7, i64 8, i1 false)
    #dbg_declare(ptr %a, !260, !DIExpression(), !262)
    #dbg_declare(ptr %b, !261, !DIExpression(), !263)
  %9 = getelementptr inbounds { float, float }, ptr %a, i32 0, i32 0, !dbg !264
  %10 = load float, ptr %9, align 4, !dbg !264, !noundef !31
  %11 = getelementptr inbounds { float, float }, ptr %a, i32 0, i32 1, !dbg !264
  %12 = load float, ptr %11, align 4, !dbg !264, !noundef !31
  %13 = getelementptr inbounds { float, float }, ptr %6, i32 0, i32 0, !dbg !264
  store float %10, ptr %13, align 4, !dbg !264
  %14 = getelementptr inbounds { float, float }, ptr %6, i32 0, i32 1, !dbg !264
  store float %12, ptr %14, align 4, !dbg !264
  %15 = load double, ptr %6, align 4, !dbg !264
  %16 = getelementptr inbounds { float, float }, ptr %b, i32 0, i32 0, !dbg !264
  %17 = load float, ptr %16, align 4, !dbg !264, !noundef !31
  %18 = getelementptr inbounds { float, float }, ptr %b, i32 0, i32 1, !dbg !264
  %19 = load float, ptr %18, align 4, !dbg !264, !noundef !31
  %20 = getelementptr inbounds { float, float }, ptr %5, i32 0, i32 0, !dbg !264
  store float %17, ptr %20, align 4, !dbg !264
  %21 = getelementptr inbounds { float, float }, ptr %5, i32 0, i32 1, !dbg !264
  store float %19, ptr %21, align 4, !dbg !264
  %22 = load double, ptr %5, align 4, !dbg !264
  %23 = call double @_ZN12collided_lib3src3lib7c2_maxv17h950e3002e2fd61feE(double %15, double %22), !dbg !264
  store double %23, ptr %3, align 8, !dbg !264
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %4, ptr align 8 %3, i64 8, i1 false), !dbg !264
  %24 = getelementptr inbounds { float, float }, ptr %4, i32 0, i32 0, !dbg !264
  %25 = load float, ptr %24, align 4, !dbg !264, !noundef !31
  %26 = getelementptr inbounds { float, float }, ptr %4, i32 0, i32 1, !dbg !264
  %27 = load float, ptr %26, align 4, !dbg !264, !noundef !31
  %28 = getelementptr inbounds { float, float }, ptr %2, i32 0, i32 0, !dbg !265
  store float %25, ptr %28, align 4, !dbg !265
  %29 = getelementptr inbounds { float, float }, ptr %2, i32 0, i32 1, !dbg !265
  store float %27, ptr %29, align 4, !dbg !265
  %30 = load double, ptr %2, align 4, !dbg !265
  ret double %30, !dbg !265
}

; Function Attrs: nonlazybind uwtable
define double @c2Minv(double %0, double %1) unnamed_addr #0 !dbg !266 {
start:
  %2 = alloca { float, float }, align 4
  %3 = alloca double, align 8
  %4 = alloca { float, float }, align 4
  %5 = alloca { float, float }, align 4
  %6 = alloca { float, float }, align 4
  %7 = alloca double, align 8
  %b = alloca { float, float }, align 4
  %8 = alloca double, align 8
  %a = alloca { float, float }, align 4
  store double %0, ptr %8, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %a, ptr align 8 %8, i64 8, i1 false)
  store double %1, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %b, ptr align 8 %7, i64 8, i1 false)
    #dbg_declare(ptr %a, !268, !DIExpression(), !270)
    #dbg_declare(ptr %b, !269, !DIExpression(), !271)
  %9 = getelementptr inbounds { float, float }, ptr %a, i32 0, i32 0, !dbg !272
  %10 = load float, ptr %9, align 4, !dbg !272, !noundef !31
  %11 = getelementptr inbounds { float, float }, ptr %a, i32 0, i32 1, !dbg !272
  %12 = load float, ptr %11, align 4, !dbg !272, !noundef !31
  %13 = getelementptr inbounds { float, float }, ptr %6, i32 0, i32 0, !dbg !272
  store float %10, ptr %13, align 4, !dbg !272
  %14 = getelementptr inbounds { float, float }, ptr %6, i32 0, i32 1, !dbg !272
  store float %12, ptr %14, align 4, !dbg !272
  %15 = load double, ptr %6, align 4, !dbg !272
  %16 = getelementptr inbounds { float, float }, ptr %b, i32 0, i32 0, !dbg !272
  %17 = load float, ptr %16, align 4, !dbg !272, !noundef !31
  %18 = getelementptr inbounds { float, float }, ptr %b, i32 0, i32 1, !dbg !272
  %19 = load float, ptr %18, align 4, !dbg !272, !noundef !31
  %20 = getelementptr inbounds { float, float }, ptr %5, i32 0, i32 0, !dbg !272
  store float %17, ptr %20, align 4, !dbg !272
  %21 = getelementptr inbounds { float, float }, ptr %5, i32 0, i32 1, !dbg !272
  store float %19, ptr %21, align 4, !dbg !272
  %22 = load double, ptr %5, align 4, !dbg !272
  %23 = call double @_ZN12collided_lib3src3lib7c2_minv17h4d9f4be4fb3b6514E(double %15, double %22), !dbg !272
  store double %23, ptr %3, align 8, !dbg !272
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %4, ptr align 8 %3, i64 8, i1 false), !dbg !272
  %24 = getelementptr inbounds { float, float }, ptr %4, i32 0, i32 0, !dbg !272
  %25 = load float, ptr %24, align 4, !dbg !272, !noundef !31
  %26 = getelementptr inbounds { float, float }, ptr %4, i32 0, i32 1, !dbg !272
  %27 = load float, ptr %26, align 4, !dbg !272, !noundef !31
  %28 = getelementptr inbounds { float, float }, ptr %2, i32 0, i32 0, !dbg !273
  store float %25, ptr %28, align 4, !dbg !273
  %29 = getelementptr inbounds { float, float }, ptr %2, i32 0, i32 1, !dbg !273
  store float %27, ptr %29, align 4, !dbg !273
  %30 = load double, ptr %2, align 4, !dbg !273
  ret double %30, !dbg !273
}

; Function Attrs: nonlazybind uwtable
define double @c2Sub(double %0, double %1) unnamed_addr #0 !dbg !274 {
start:
  %2 = alloca { float, float }, align 4
  %3 = alloca double, align 8
  %4 = alloca { float, float }, align 4
  %5 = alloca { float, float }, align 4
  %6 = alloca { float, float }, align 4
  %7 = alloca double, align 8
  %b = alloca { float, float }, align 4
  %8 = alloca double, align 8
  %a = alloca { float, float }, align 4
  store double %0, ptr %8, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %a, ptr align 8 %8, i64 8, i1 false)
  store double %1, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %b, ptr align 8 %7, i64 8, i1 false)
    #dbg_declare(ptr %a, !276, !DIExpression(), !278)
    #dbg_declare(ptr %b, !277, !DIExpression(), !279)
  %9 = getelementptr inbounds { float, float }, ptr %a, i32 0, i32 0, !dbg !280
  %10 = load float, ptr %9, align 4, !dbg !280, !noundef !31
  %11 = getelementptr inbounds { float, float }, ptr %a, i32 0, i32 1, !dbg !280
  %12 = load float, ptr %11, align 4, !dbg !280, !noundef !31
  %13 = getelementptr inbounds { float, float }, ptr %6, i32 0, i32 0, !dbg !280
  store float %10, ptr %13, align 4, !dbg !280
  %14 = getelementptr inbounds { float, float }, ptr %6, i32 0, i32 1, !dbg !280
  store float %12, ptr %14, align 4, !dbg !280
  %15 = load double, ptr %6, align 4, !dbg !280
  %16 = getelementptr inbounds { float, float }, ptr %b, i32 0, i32 0, !dbg !280
  %17 = load float, ptr %16, align 4, !dbg !280, !noundef !31
  %18 = getelementptr inbounds { float, float }, ptr %b, i32 0, i32 1, !dbg !280
  %19 = load float, ptr %18, align 4, !dbg !280, !noundef !31
  %20 = getelementptr inbounds { float, float }, ptr %5, i32 0, i32 0, !dbg !280
  store float %17, ptr %20, align 4, !dbg !280
  %21 = getelementptr inbounds { float, float }, ptr %5, i32 0, i32 1, !dbg !280
  store float %19, ptr %21, align 4, !dbg !280
  %22 = load double, ptr %5, align 4, !dbg !280
  %23 = call double @_ZN12collided_lib3src3lib6c2_sub17h128cba2b92d51e38E(double %15, double %22), !dbg !280
  store double %23, ptr %3, align 8, !dbg !280
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %4, ptr align 8 %3, i64 8, i1 false), !dbg !280
  %24 = getelementptr inbounds { float, float }, ptr %4, i32 0, i32 0, !dbg !280
  %25 = load float, ptr %24, align 4, !dbg !280, !noundef !31
  %26 = getelementptr inbounds { float, float }, ptr %4, i32 0, i32 1, !dbg !280
  %27 = load float, ptr %26, align 4, !dbg !280, !noundef !31
  %28 = getelementptr inbounds { float, float }, ptr %2, i32 0, i32 0, !dbg !281
  store float %25, ptr %28, align 4, !dbg !281
  %29 = getelementptr inbounds { float, float }, ptr %2, i32 0, i32 1, !dbg !281
  store float %27, ptr %29, align 4, !dbg !281
  %30 = load double, ptr %2, align 4, !dbg !281
  ret double %30, !dbg !281
}

; Function Attrs: nonlazybind uwtable
define double @c2V(float %x, float %y) unnamed_addr #0 !dbg !282 {
start:
  %0 = alloca { float, float }, align 4
  %1 = alloca double, align 8
  %2 = alloca { float, float }, align 4
  %y.dbg.spill = alloca float, align 4
  %x.dbg.spill = alloca float, align 4
  store float %x, ptr %x.dbg.spill, align 4
    #dbg_declare(ptr %x.dbg.spill, !284, !DIExpression(), !286)
  store float %y, ptr %y.dbg.spill, align 4
    #dbg_declare(ptr %y.dbg.spill, !285, !DIExpression(), !287)
  %3 = call double @_ZN12collided_lib3src3lib4c2_v17h98d7d4a51db2d78fE(float %x, float %y), !dbg !288
  store double %3, ptr %1, align 8, !dbg !288
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr align 8 %1, i64 8, i1 false), !dbg !288
  %4 = getelementptr inbounds { float, float }, ptr %2, i32 0, i32 0, !dbg !288
  %5 = load float, ptr %4, align 4, !dbg !288, !noundef !31
  %6 = getelementptr inbounds { float, float }, ptr %2, i32 0, i32 1, !dbg !288
  %7 = load float, ptr %6, align 4, !dbg !288, !noundef !31
  %8 = getelementptr inbounds { float, float }, ptr %0, i32 0, i32 0, !dbg !289
  store float %5, ptr %8, align 4, !dbg !289
  %9 = getelementptr inbounds { float, float }, ptr %0, i32 0, i32 1, !dbg !289
  store float %7, ptr %9, align 4, !dbg !289
  %10 = load double, ptr %0, align 4, !dbg !289
  ret double %10, !dbg !289
}

; Function Attrs: nonlazybind uwtable
define i32 @collided(ptr %A, i32 %typeA, ptr %B, i32 %typeB) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !290 {
start:
  %typeB.dbg.spill = alloca i32, align 4
  %B.dbg.spill = alloca ptr, align 8
  %typeA.dbg.spill = alloca i32, align 4
  %A.dbg.spill = alloca ptr, align 8
  %_5 = alloca { i32, i32 }, align 4
  %0 = alloca i32, align 4
  store ptr %A, ptr %A.dbg.spill, align 8
    #dbg_declare(ptr %A.dbg.spill, !296, !DIExpression(), !300)
  store i32 %typeA, ptr %typeA.dbg.spill, align 4
    #dbg_declare(ptr %typeA.dbg.spill, !297, !DIExpression(), !301)
  store ptr %B, ptr %B.dbg.spill, align 8
    #dbg_declare(ptr %B.dbg.spill, !298, !DIExpression(), !302)
  store i32 %typeB, ptr %typeB.dbg.spill, align 4
    #dbg_declare(ptr %typeB.dbg.spill, !299, !DIExpression(), !303)
  store i32 %typeA, ptr %_5, align 4, !dbg !304
  %1 = getelementptr inbounds { i32, i32 }, ptr %_5, i32 0, i32 1, !dbg !304
  store i32 %typeB, ptr %1, align 4, !dbg !304
  %2 = load i32, ptr %_5, align 4, !dbg !305, !noundef !31
  switch i32 %2, label %bb2 [
    i32 1, label %bb1
    i32 0, label %bb3
  ], !dbg !305

bb2:                                              ; preds = %bb3, %bb1, %start
  store i32 0, ptr %0, align 4, !dbg !306
  br label %bb8, !dbg !306

bb1:                                              ; preds = %start
  %3 = getelementptr inbounds { i32, i32 }, ptr %_5, i32 0, i32 1, !dbg !305
  %4 = load i32, ptr %3, align 4, !dbg !305, !noundef !31
  switch i32 %4, label %bb2 [
    i32 1, label %bb4
    i32 0, label %bb6
  ], !dbg !305

bb3:                                              ; preds = %start
  %5 = getelementptr inbounds { i32, i32 }, ptr %_5, i32 0, i32 1, !dbg !305
  %6 = load i32, ptr %5, align 4, !dbg !305, !noundef !31
  switch i32 %6, label %bb2 [
    i32 1, label %bb5
    i32 0, label %bb7
  ], !dbg !305

bb5:                                              ; preds = %bb3
  %_53 = ptrtoint ptr %A to i64, !dbg !307
  %_56 = and i64 %_53, 3, !dbg !307
  %_57 = icmp eq i64 %_56, 0, !dbg !307
  %7 = call i1 @llvm.expect.i1(i1 %_57, i1 true), !dbg !307
  br i1 %7, label %bb14, label %panic2, !dbg !307

bb7:                                              ; preds = %bb3
  %_29 = ptrtoint ptr %A to i64, !dbg !308
  %_32 = and i64 %_29, 3, !dbg !308
  %_33 = icmp eq i64 %_32, 0, !dbg !308
  %8 = call i1 @llvm.expect.i1(i1 %_33, i1 true), !dbg !308
  br i1 %8, label %bb10, label %panic, !dbg !308

bb10:                                             ; preds = %bb7
  %_23 = ptrtoint ptr %B to i64, !dbg !309
  %_26 = and i64 %_23, 3, !dbg !309
  %_27 = icmp eq i64 %_26, 0, !dbg !309
  %9 = call i1 @llvm.expect.i1(i1 %_27, i1 true), !dbg !309
  br i1 %9, label %bb9, label %panic1, !dbg !309

panic:                                            ; preds = %bb7
  invoke void @_ZN4core9panicking36panic_misaligned_pointer_dereference17h587229c42ea18e2bE(i64 4, i64 %_29, ptr align 8 @alloc_d2d1a7f324149c6257484dcf253db50f) #5
          to label %unreachable unwind label %terminate, !dbg !308

terminate:                                        ; preds = %panic7, %panic6, %panic5, %panic4, %panic3, %panic2, %panic1, %panic
  %10 = landingpad { ptr, i32 }
          cleanup
  %11 = extractvalue { ptr, i32 } %10, 0
  %12 = extractvalue { ptr, i32 } %10, 1
  call void @_ZN4core9panicking19panic_cannot_unwind17h629e1da841ab4abfE() #6, !dbg !310
  unreachable, !dbg !310

unreachable:                                      ; preds = %panic7, %panic6, %panic5, %panic4, %panic3, %panic2, %panic1, %panic
  unreachable

bb9:                                              ; preds = %bb10
  %13 = call i32 @_ZN12collided_lib3src3lib22collided_circle_circle17h1b936a003d8f4280E(ptr align 4 %A, ptr align 4 %B), !dbg !311
  store i32 %13, ptr %0, align 4, !dbg !311
  br label %bb8, !dbg !311

panic1:                                           ; preds = %bb10
  invoke void @_ZN4core9panicking36panic_misaligned_pointer_dereference17h587229c42ea18e2bE(i64 4, i64 %_23, ptr align 8 @alloc_b86b11b12e6498a516916190a6636843) #5
          to label %unreachable unwind label %terminate, !dbg !309

bb8:                                              ; preds = %bb15, %bb11, %bb13, %bb9, %bb2
  %14 = load i32, ptr %0, align 4, !dbg !312, !noundef !31
  ret i32 %14, !dbg !312

bb14:                                             ; preds = %bb5
  %_47 = ptrtoint ptr %B to i64, !dbg !313
  %_50 = and i64 %_47, 3, !dbg !313
  %_51 = icmp eq i64 %_50, 0, !dbg !313
  %15 = call i1 @llvm.expect.i1(i1 %_51, i1 true), !dbg !313
  br i1 %15, label %bb13, label %panic3, !dbg !313

panic2:                                           ; preds = %bb5
  invoke void @_ZN4core9panicking36panic_misaligned_pointer_dereference17h587229c42ea18e2bE(i64 4, i64 %_53, ptr align 8 @alloc_1960ea5a0d34924a0927eac7bbcdf1ef) #5
          to label %unreachable unwind label %terminate, !dbg !307

bb13:                                             ; preds = %bb14
  %16 = call i32 @_ZN12collided_lib3src3lib20collided_circle_aabb17h0dfde1b2c1aa0eebE(ptr align 4 %A, ptr align 4 %B), !dbg !314
  store i32 %16, ptr %0, align 4, !dbg !314
  br label %bb8, !dbg !314

panic3:                                           ; preds = %bb14
  invoke void @_ZN4core9panicking36panic_misaligned_pointer_dereference17h587229c42ea18e2bE(i64 4, i64 %_47, ptr align 8 @alloc_ad2a7f8cde53dbf35a1f13f94d20f712) #5
          to label %unreachable unwind label %terminate, !dbg !313

bb4:                                              ; preds = %bb1
  %_65 = ptrtoint ptr %A to i64, !dbg !315
  %_68 = and i64 %_65, 3, !dbg !315
  %_69 = icmp eq i64 %_68, 0, !dbg !315
  %17 = call i1 @llvm.expect.i1(i1 %_69, i1 true), !dbg !315
  br i1 %17, label %bb16, label %panic6, !dbg !315

bb6:                                              ; preds = %bb1
  %_41 = ptrtoint ptr %B to i64, !dbg !316
  %_44 = and i64 %_41, 3, !dbg !316
  %_45 = icmp eq i64 %_44, 0, !dbg !316
  %18 = call i1 @llvm.expect.i1(i1 %_45, i1 true), !dbg !316
  br i1 %18, label %bb12, label %panic4, !dbg !316

bb12:                                             ; preds = %bb6
  %_35 = ptrtoint ptr %A to i64, !dbg !317
  %_38 = and i64 %_35, 3, !dbg !317
  %_39 = icmp eq i64 %_38, 0, !dbg !317
  %19 = call i1 @llvm.expect.i1(i1 %_39, i1 true), !dbg !317
  br i1 %19, label %bb11, label %panic5, !dbg !317

panic4:                                           ; preds = %bb6
  invoke void @_ZN4core9panicking36panic_misaligned_pointer_dereference17h587229c42ea18e2bE(i64 4, i64 %_41, ptr align 8 @alloc_c5e3336664378aa59d148f5f74086961) #5
          to label %unreachable unwind label %terminate, !dbg !316

bb11:                                             ; preds = %bb12
  %20 = call i32 @_ZN12collided_lib3src3lib20collided_circle_aabb17h0dfde1b2c1aa0eebE(ptr align 4 %B, ptr align 4 %A), !dbg !318
  store i32 %20, ptr %0, align 4, !dbg !318
  br label %bb8, !dbg !318

panic5:                                           ; preds = %bb12
  invoke void @_ZN4core9panicking36panic_misaligned_pointer_dereference17h587229c42ea18e2bE(i64 4, i64 %_35, ptr align 8 @alloc_82eeb654354d328c2828de8f36512b7d) #5
          to label %unreachable unwind label %terminate, !dbg !317

bb16:                                             ; preds = %bb4
  %_59 = ptrtoint ptr %B to i64, !dbg !319
  %_62 = and i64 %_59, 3, !dbg !319
  %_63 = icmp eq i64 %_62, 0, !dbg !319
  %21 = call i1 @llvm.expect.i1(i1 %_63, i1 true), !dbg !319
  br i1 %21, label %bb15, label %panic7, !dbg !319

panic6:                                           ; preds = %bb4
  invoke void @_ZN4core9panicking36panic_misaligned_pointer_dereference17h587229c42ea18e2bE(i64 4, i64 %_65, ptr align 8 @alloc_b38b5344d31a35f64da86efc25c9a857) #5
          to label %unreachable unwind label %terminate, !dbg !315

bb15:                                             ; preds = %bb16
  %22 = call i32 @_ZN12collided_lib3src3lib18collided_aabb_aabb17h62b90cce909d024eE(ptr align 4 %A, ptr align 4 %B), !dbg !320
  store i32 %22, ptr %0, align 4, !dbg !320
  br label %bb8, !dbg !320

panic7:                                           ; preds = %bb16
  invoke void @_ZN4core9panicking36panic_misaligned_pointer_dereference17h587229c42ea18e2bE(i64 4, i64 %_59, ptr align 8 @alloc_32ccae726c5ae2fcd341e5abdf12e553) #5
          to label %unreachable unwind label %terminate, !dbg !319
}

; Function Attrs: nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.expect.i1(i1, i1) #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking36panic_misaligned_pointer_dereference17h587229c42ea18e2bE(i64, i64, ptr align 8) unnamed_addr #3

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_ZN4core9panicking19panic_cannot_unwind17h629e1da841ab4abfE() unnamed_addr #4

; Function Attrs: nonlazybind uwtable
define internal i32 @_ZN12collided_lib3src3lib22collided_circle_circle17h1b936a003d8f4280E(ptr align 4 %A, ptr align 4 %B) unnamed_addr #0 !dbg !321 {
start:
  %B.dbg.spill = alloca ptr, align 8
  %A.dbg.spill = alloca ptr, align 8
  %_4 = alloca %"src::lib::C2circle", align 4
  %_3 = alloca %"src::lib::C2circle", align 4
  store ptr %A, ptr %A.dbg.spill, align 8
    #dbg_declare(ptr %A.dbg.spill, !326, !DIExpression(), !328)
  store ptr %B, ptr %B.dbg.spill, align 8
    #dbg_declare(ptr %B.dbg.spill, !327, !DIExpression(), !329)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %_3, ptr align 4 %A, i64 12, i1 false), !dbg !330
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %_4, ptr align 4 %B, i64 12, i1 false), !dbg !331
  %0 = load { double, float }, ptr %_3, align 4, !dbg !332
  %1 = load { double, float }, ptr %_4, align 4, !dbg !332
  %2 = call i32 @_ZN12collided_lib3src3lib18c2_circleto_circle17h3f5e4655e3ec8882E({ double, float } %0, { double, float } %1), !dbg !332
  ret i32 %2, !dbg !333
}

; Function Attrs: nonlazybind uwtable
define internal i32 @_ZN12collided_lib3src3lib20collided_circle_aabb17h0dfde1b2c1aa0eebE(ptr align 4 %A, ptr align 4 %B) unnamed_addr #0 !dbg !334 {
start:
  %B.dbg.spill = alloca ptr, align 8
  %A.dbg.spill = alloca ptr, align 8
  %_4 = alloca %"src::lib::C2aabb", align 4
  %_3 = alloca %"src::lib::C2circle", align 4
  store ptr %A, ptr %A.dbg.spill, align 8
    #dbg_declare(ptr %A.dbg.spill, !339, !DIExpression(), !341)
  store ptr %B, ptr %B.dbg.spill, align 8
    #dbg_declare(ptr %B.dbg.spill, !340, !DIExpression(), !342)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %_3, ptr align 4 %A, i64 12, i1 false), !dbg !343
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %_4, ptr align 4 %B, i64 16, i1 false), !dbg !344
  %0 = load { double, float }, ptr %_3, align 4, !dbg !345
  %1 = load { double, double }, ptr %_4, align 4, !dbg !345
  %2 = call i32 @_ZN12collided_lib3src3lib16c2_circleto_aabb17haa1601bff59172b9E({ double, float } %0, { double, double } %1), !dbg !345
  ret i32 %2, !dbg !346
}

; Function Attrs: nonlazybind uwtable
define internal i32 @_ZN12collided_lib3src3lib18collided_aabb_aabb17h62b90cce909d024eE(ptr align 4 %A, ptr align 4 %B) unnamed_addr #0 !dbg !347 {
start:
  %B.dbg.spill = alloca ptr, align 8
  %A.dbg.spill = alloca ptr, align 8
  %_4 = alloca %"src::lib::C2aabb", align 4
  %_3 = alloca %"src::lib::C2aabb", align 4
  store ptr %A, ptr %A.dbg.spill, align 8
    #dbg_declare(ptr %A.dbg.spill, !351, !DIExpression(), !353)
  store ptr %B, ptr %B.dbg.spill, align 8
    #dbg_declare(ptr %B.dbg.spill, !352, !DIExpression(), !354)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %_3, ptr align 4 %A, i64 16, i1 false), !dbg !355
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %_4, ptr align 4 %B, i64 16, i1 false), !dbg !356
  %0 = load { double, double }, ptr %_3, align 4, !dbg !357
  %1 = load { double, double }, ptr %_4, align 4, !dbg !357
  %2 = call i32 @_ZN12collided_lib3src3lib14c2_aabbto_aabb17h231cad14afdd7d96E({ double, double } %0, { double, double } %1), !dbg !357
  ret i32 %2, !dbg !358
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_1() unnamed_addr #0 !dbg !359 {
start:
  %result.dbg.spill = alloca i32, align 4
  %type_b.dbg.spill = alloca i32, align 4
  %type_a.dbg.spill = alloca i32, align 4
  %_7 = alloca { float, float }, align 4
  %_6 = alloca { float, float }, align 4
  %b = alloca %"src::lib::C2aabb", align 4
  %_3 = alloca { float, float }, align 4
  %_2 = alloca { float, float }, align 4
  %a = alloca %"src::lib::C2aabb", align 4
    #dbg_declare(ptr %a, !364, !DIExpression(), !374)
    #dbg_declare(ptr %b, !368, !DIExpression(), !375)
  store float 1.000000e+00, ptr %_2, align 4, !dbg !376
  %0 = getelementptr inbounds { float, float }, ptr %_2, i32 0, i32 1, !dbg !376
  store float 2.000000e+00, ptr %0, align 4, !dbg !376
  store float 3.000000e+00, ptr %_3, align 4, !dbg !377
  %1 = getelementptr inbounds { float, float }, ptr %_3, i32 0, i32 1, !dbg !377
  store float 4.000000e+00, ptr %1, align 4, !dbg !377
  %2 = getelementptr inbounds { float, float }, ptr %_2, i32 0, i32 0, !dbg !378
  %3 = load float, ptr %2, align 4, !dbg !378, !noundef !31
  %4 = getelementptr inbounds { float, float }, ptr %_2, i32 0, i32 1, !dbg !378
  %5 = load float, ptr %4, align 4, !dbg !378, !noundef !31
  %6 = getelementptr inbounds { float, float }, ptr %a, i32 0, i32 0, !dbg !378
  store float %3, ptr %6, align 4, !dbg !378
  %7 = getelementptr inbounds { float, float }, ptr %a, i32 0, i32 1, !dbg !378
  store float %5, ptr %7, align 4, !dbg !378
  %8 = getelementptr inbounds { float, float }, ptr %_3, i32 0, i32 0, !dbg !378
  %9 = load float, ptr %8, align 4, !dbg !378, !noundef !31
  %10 = getelementptr inbounds { float, float }, ptr %_3, i32 0, i32 1, !dbg !378
  %11 = load float, ptr %10, align 4, !dbg !378, !noundef !31
  %12 = getelementptr inbounds %"src::lib::C2aabb", ptr %a, i32 0, i32 1, !dbg !378
  %13 = getelementptr inbounds { float, float }, ptr %12, i32 0, i32 0, !dbg !378
  store float %9, ptr %13, align 4, !dbg !378
  %14 = getelementptr inbounds { float, float }, ptr %12, i32 0, i32 1, !dbg !378
  store float %11, ptr %14, align 4, !dbg !378
  store i32 1, ptr %type_a.dbg.spill, align 4, !dbg !379
    #dbg_declare(ptr %type_a.dbg.spill, !366, !DIExpression(), !380)
  store float 1.000000e+00, ptr %_6, align 4, !dbg !381
  %15 = getelementptr inbounds { float, float }, ptr %_6, i32 0, i32 1, !dbg !381
  store float 2.000000e+00, ptr %15, align 4, !dbg !381
  store float 3.000000e+00, ptr %_7, align 4, !dbg !382
  %16 = getelementptr inbounds { float, float }, ptr %_7, i32 0, i32 1, !dbg !382
  store float 4.000000e+00, ptr %16, align 4, !dbg !382
  %17 = getelementptr inbounds { float, float }, ptr %_6, i32 0, i32 0, !dbg !383
  %18 = load float, ptr %17, align 4, !dbg !383, !noundef !31
  %19 = getelementptr inbounds { float, float }, ptr %_6, i32 0, i32 1, !dbg !383
  %20 = load float, ptr %19, align 4, !dbg !383, !noundef !31
  %21 = getelementptr inbounds { float, float }, ptr %b, i32 0, i32 0, !dbg !383
  store float %18, ptr %21, align 4, !dbg !383
  %22 = getelementptr inbounds { float, float }, ptr %b, i32 0, i32 1, !dbg !383
  store float %20, ptr %22, align 4, !dbg !383
  %23 = getelementptr inbounds { float, float }, ptr %_7, i32 0, i32 0, !dbg !383
  %24 = load float, ptr %23, align 4, !dbg !383, !noundef !31
  %25 = getelementptr inbounds { float, float }, ptr %_7, i32 0, i32 1, !dbg !383
  %26 = load float, ptr %25, align 4, !dbg !383, !noundef !31
  %27 = getelementptr inbounds %"src::lib::C2aabb", ptr %b, i32 0, i32 1, !dbg !383
  %28 = getelementptr inbounds { float, float }, ptr %27, i32 0, i32 0, !dbg !383
  store float %24, ptr %28, align 4, !dbg !383
  %29 = getelementptr inbounds { float, float }, ptr %27, i32 0, i32 1, !dbg !383
  store float %26, ptr %29, align 4, !dbg !383
  store i32 1, ptr %type_b.dbg.spill, align 4, !dbg !384
    #dbg_declare(ptr %type_b.dbg.spill, !370, !DIExpression(), !385)
  %result = call i32 @collided(ptr %a, i32 1, ptr %b, i32 1), !dbg !386
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !386
    #dbg_declare(ptr %result.dbg.spill, !372, !DIExpression(), !387)
  %30 = icmp eq i32 %result, 1, !dbg !388
  ret i1 %30, !dbg !389
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_2() unnamed_addr #0 !dbg !390 {
start:
  %result.dbg.spill = alloca i32, align 4
  %type_b.dbg.spill = alloca i32, align 4
  %type_a.dbg.spill = alloca i32, align 4
  %b = alloca %"src::lib::run_test_2::Shape", align 4
  %a = alloca %"src::lib::run_test_2::Shape", align 4
    #dbg_declare(ptr %a, !392, !DIExpression(), !409)
    #dbg_declare(ptr %b, !403, !DIExpression(), !410)
  store float 1.000000e+00, ptr %a, align 4, !dbg !411
  %0 = getelementptr inbounds %"src::lib::run_test_2::Shape", ptr %a, i32 0, i32 1, !dbg !411
  store float 2.000000e+00, ptr %0, align 4, !dbg !411
  %1 = getelementptr inbounds %"src::lib::run_test_2::Shape", ptr %a, i32 0, i32 2, !dbg !411
  store float 3.000000e+00, ptr %1, align 4, !dbg !411
  %2 = getelementptr inbounds %"src::lib::run_test_2::Shape", ptr %a, i32 0, i32 3, !dbg !411
  store float 4.000000e+00, ptr %2, align 4, !dbg !411
  store i32 0, ptr %type_a.dbg.spill, align 4, !dbg !412
    #dbg_declare(ptr %type_a.dbg.spill, !401, !DIExpression(), !413)
  store float 1.000000e+00, ptr %b, align 4, !dbg !414
  %3 = getelementptr inbounds %"src::lib::run_test_2::Shape", ptr %b, i32 0, i32 1, !dbg !414
  store float 2.000000e+00, ptr %3, align 4, !dbg !414
  %4 = getelementptr inbounds %"src::lib::run_test_2::Shape", ptr %b, i32 0, i32 2, !dbg !414
  store float 3.000000e+00, ptr %4, align 4, !dbg !414
  %5 = getelementptr inbounds %"src::lib::run_test_2::Shape", ptr %b, i32 0, i32 3, !dbg !414
  store float 4.000000e+00, ptr %5, align 4, !dbg !414
  store i32 1, ptr %type_b.dbg.spill, align 4, !dbg !415
    #dbg_declare(ptr %type_b.dbg.spill, !405, !DIExpression(), !416)
  %result = call i32 @collided(ptr %a, i32 0, ptr %b, i32 1), !dbg !417
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !417
    #dbg_declare(ptr %result.dbg.spill, !407, !DIExpression(), !418)
  %6 = icmp eq i32 %result, 1, !dbg !419
  ret i1 %6, !dbg !420
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_3() unnamed_addr #0 !dbg !421 {
start:
  %result.dbg.spill = alloca i32, align 4
  %type_b.dbg.spill = alloca i32, align 4
  %type_a.dbg.spill = alloca i32, align 4
  %b = alloca %"src::lib::run_test_2::Shape", align 4
  %a = alloca %"src::lib::run_test_2::Shape", align 4
    #dbg_declare(ptr %a, !423, !DIExpression(), !440)
    #dbg_declare(ptr %b, !434, !DIExpression(), !441)
  store float 1.000000e+00, ptr %a, align 4, !dbg !442
  %0 = getelementptr inbounds %"src::lib::run_test_2::Shape", ptr %a, i32 0, i32 1, !dbg !442
  store float 2.000000e+00, ptr %0, align 4, !dbg !442
  %1 = getelementptr inbounds %"src::lib::run_test_2::Shape", ptr %a, i32 0, i32 2, !dbg !442
  store float 3.000000e+00, ptr %1, align 4, !dbg !442
  %2 = getelementptr inbounds %"src::lib::run_test_2::Shape", ptr %a, i32 0, i32 3, !dbg !442
  store float 4.000000e+00, ptr %2, align 4, !dbg !442
  store i32 1, ptr %type_a.dbg.spill, align 4, !dbg !443
    #dbg_declare(ptr %type_a.dbg.spill, !432, !DIExpression(), !444)
  store float 1.000000e+00, ptr %b, align 4, !dbg !445
  %3 = getelementptr inbounds %"src::lib::run_test_2::Shape", ptr %b, i32 0, i32 1, !dbg !445
  store float 2.000000e+00, ptr %3, align 4, !dbg !445
  %4 = getelementptr inbounds %"src::lib::run_test_2::Shape", ptr %b, i32 0, i32 2, !dbg !445
  store float 3.000000e+00, ptr %4, align 4, !dbg !445
  %5 = getelementptr inbounds %"src::lib::run_test_2::Shape", ptr %b, i32 0, i32 3, !dbg !445
  store float 4.000000e+00, ptr %5, align 4, !dbg !445
  store i32 0, ptr %type_b.dbg.spill, align 4, !dbg !446
    #dbg_declare(ptr %type_b.dbg.spill, !436, !DIExpression(), !447)
  %result = call i32 @collided(ptr %a, i32 1, ptr %b, i32 0), !dbg !448
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !448
    #dbg_declare(ptr %result.dbg.spill, !438, !DIExpression(), !449)
  %6 = icmp eq i32 %result, 1, !dbg !450
  ret i1 %6, !dbg !451
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_4() unnamed_addr #0 !dbg !452 {
start:
  %result.dbg.spill = alloca i32, align 4
  %type_b.dbg.spill = alloca i32, align 4
  %type_a.dbg.spill = alloca i32, align 4
  %b = alloca %"src::lib::run_test_2::Shape", align 4
  %a = alloca %"src::lib::run_test_2::Shape", align 4
    #dbg_declare(ptr %a, !454, !DIExpression(), !471)
    #dbg_declare(ptr %b, !465, !DIExpression(), !472)
  store float 1.000000e+00, ptr %a, align 4, !dbg !473
  %0 = getelementptr inbounds %"src::lib::run_test_2::Shape", ptr %a, i32 0, i32 1, !dbg !473
  store float 2.000000e+00, ptr %0, align 4, !dbg !473
  %1 = getelementptr inbounds %"src::lib::run_test_2::Shape", ptr %a, i32 0, i32 2, !dbg !473
  store float 3.000000e+00, ptr %1, align 4, !dbg !473
  %2 = getelementptr inbounds %"src::lib::run_test_2::Shape", ptr %a, i32 0, i32 3, !dbg !473
  store float 4.000000e+00, ptr %2, align 4, !dbg !473
  store i32 0, ptr %type_a.dbg.spill, align 4, !dbg !474
    #dbg_declare(ptr %type_a.dbg.spill, !463, !DIExpression(), !475)
  store float 1.000000e+00, ptr %b, align 4, !dbg !476
  %3 = getelementptr inbounds %"src::lib::run_test_2::Shape", ptr %b, i32 0, i32 1, !dbg !476
  store float 2.000000e+00, ptr %3, align 4, !dbg !476
  %4 = getelementptr inbounds %"src::lib::run_test_2::Shape", ptr %b, i32 0, i32 2, !dbg !476
  store float 3.000000e+00, ptr %4, align 4, !dbg !476
  %5 = getelementptr inbounds %"src::lib::run_test_2::Shape", ptr %b, i32 0, i32 3, !dbg !476
  store float 4.000000e+00, ptr %5, align 4, !dbg !476
  store i32 0, ptr %type_b.dbg.spill, align 4, !dbg !477
    #dbg_declare(ptr %type_b.dbg.spill, !467, !DIExpression(), !478)
  %result = call i32 @collided(ptr %a, i32 0, ptr %b, i32 0), !dbg !479
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !479
    #dbg_declare(ptr %result.dbg.spill, !469, !DIExpression(), !480)
  %6 = icmp eq i32 %result, 1, !dbg !481
  ret i1 %6, !dbg !482
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_5() unnamed_addr #0 !dbg !483 {
start:
  %result.dbg.spill = alloca i32, align 4
  %type_b.dbg.spill = alloca i32, align 4
  %type_a.dbg.spill = alloca i32, align 4
  %_7 = alloca { float, float }, align 4
  %_6 = alloca { float, float }, align 4
  %b = alloca %"src::lib::C2aabb", align 4
  %_3 = alloca { float, float }, align 4
  %_2 = alloca { float, float }, align 4
  %a = alloca %"src::lib::C2aabb", align 4
    #dbg_declare(ptr %a, !485, !DIExpression(), !495)
    #dbg_declare(ptr %b, !489, !DIExpression(), !496)
  store float 1.000000e+00, ptr %_2, align 4, !dbg !497
  %0 = getelementptr inbounds { float, float }, ptr %_2, i32 0, i32 1, !dbg !497
  store float 2.000000e+00, ptr %0, align 4, !dbg !497
  store float 3.000000e+00, ptr %_3, align 4, !dbg !498
  %1 = getelementptr inbounds { float, float }, ptr %_3, i32 0, i32 1, !dbg !498
  store float 4.000000e+00, ptr %1, align 4, !dbg !498
  %2 = getelementptr inbounds { float, float }, ptr %_2, i32 0, i32 0, !dbg !499
  %3 = load float, ptr %2, align 4, !dbg !499, !noundef !31
  %4 = getelementptr inbounds { float, float }, ptr %_2, i32 0, i32 1, !dbg !499
  %5 = load float, ptr %4, align 4, !dbg !499, !noundef !31
  %6 = getelementptr inbounds { float, float }, ptr %a, i32 0, i32 0, !dbg !499
  store float %3, ptr %6, align 4, !dbg !499
  %7 = getelementptr inbounds { float, float }, ptr %a, i32 0, i32 1, !dbg !499
  store float %5, ptr %7, align 4, !dbg !499
  %8 = getelementptr inbounds { float, float }, ptr %_3, i32 0, i32 0, !dbg !499
  %9 = load float, ptr %8, align 4, !dbg !499, !noundef !31
  %10 = getelementptr inbounds { float, float }, ptr %_3, i32 0, i32 1, !dbg !499
  %11 = load float, ptr %10, align 4, !dbg !499, !noundef !31
  %12 = getelementptr inbounds %"src::lib::C2aabb", ptr %a, i32 0, i32 1, !dbg !499
  %13 = getelementptr inbounds { float, float }, ptr %12, i32 0, i32 0, !dbg !499
  store float %9, ptr %13, align 4, !dbg !499
  %14 = getelementptr inbounds { float, float }, ptr %12, i32 0, i32 1, !dbg !499
  store float %11, ptr %14, align 4, !dbg !499
  store i32 1, ptr %type_a.dbg.spill, align 4, !dbg !500
    #dbg_declare(ptr %type_a.dbg.spill, !487, !DIExpression(), !501)
  store float 5.000000e+00, ptr %_6, align 4, !dbg !502
  %15 = getelementptr inbounds { float, float }, ptr %_6, i32 0, i32 1, !dbg !502
  store float 6.000000e+00, ptr %15, align 4, !dbg !502
  store float 7.000000e+00, ptr %_7, align 4, !dbg !503
  %16 = getelementptr inbounds { float, float }, ptr %_7, i32 0, i32 1, !dbg !503
  store float 8.000000e+00, ptr %16, align 4, !dbg !503
  %17 = getelementptr inbounds { float, float }, ptr %_6, i32 0, i32 0, !dbg !504
  %18 = load float, ptr %17, align 4, !dbg !504, !noundef !31
  %19 = getelementptr inbounds { float, float }, ptr %_6, i32 0, i32 1, !dbg !504
  %20 = load float, ptr %19, align 4, !dbg !504, !noundef !31
  %21 = getelementptr inbounds { float, float }, ptr %b, i32 0, i32 0, !dbg !504
  store float %18, ptr %21, align 4, !dbg !504
  %22 = getelementptr inbounds { float, float }, ptr %b, i32 0, i32 1, !dbg !504
  store float %20, ptr %22, align 4, !dbg !504
  %23 = getelementptr inbounds { float, float }, ptr %_7, i32 0, i32 0, !dbg !504
  %24 = load float, ptr %23, align 4, !dbg !504, !noundef !31
  %25 = getelementptr inbounds { float, float }, ptr %_7, i32 0, i32 1, !dbg !504
  %26 = load float, ptr %25, align 4, !dbg !504, !noundef !31
  %27 = getelementptr inbounds %"src::lib::C2aabb", ptr %b, i32 0, i32 1, !dbg !504
  %28 = getelementptr inbounds { float, float }, ptr %27, i32 0, i32 0, !dbg !504
  store float %24, ptr %28, align 4, !dbg !504
  %29 = getelementptr inbounds { float, float }, ptr %27, i32 0, i32 1, !dbg !504
  store float %26, ptr %29, align 4, !dbg !504
  store i32 1, ptr %type_b.dbg.spill, align 4, !dbg !505
    #dbg_declare(ptr %type_b.dbg.spill, !491, !DIExpression(), !506)
  %result = call i32 @collided(ptr %a, i32 1, ptr %b, i32 1), !dbg !507
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !507
    #dbg_declare(ptr %result.dbg.spill, !493, !DIExpression(), !508)
  %30 = icmp eq i32 %result, 0, !dbg !509
  ret i1 %30, !dbg !510
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_6() unnamed_addr #0 !dbg !511 {
start:
  %result.dbg.spill = alloca i32, align 4
  %type_b.dbg.spill = alloca i32, align 4
  %type_a.dbg.spill = alloca i32, align 4
  %b = alloca %"src::lib::run_test_2::Shape", align 4
  %a = alloca %"src::lib::run_test_2::Shape", align 4
    #dbg_declare(ptr %a, !513, !DIExpression(), !530)
    #dbg_declare(ptr %b, !524, !DIExpression(), !531)
  store float 1.000000e+00, ptr %a, align 4, !dbg !532
  %0 = getelementptr inbounds %"src::lib::run_test_2::Shape", ptr %a, i32 0, i32 1, !dbg !532
  store float 2.000000e+00, ptr %0, align 4, !dbg !532
  %1 = getelementptr inbounds %"src::lib::run_test_2::Shape", ptr %a, i32 0, i32 2, !dbg !532
  store float 3.000000e+00, ptr %1, align 4, !dbg !532
  %2 = getelementptr inbounds %"src::lib::run_test_2::Shape", ptr %a, i32 0, i32 3, !dbg !532
  store float 4.000000e+00, ptr %2, align 4, !dbg !532
  store i32 0, ptr %type_a.dbg.spill, align 4, !dbg !533
    #dbg_declare(ptr %type_a.dbg.spill, !522, !DIExpression(), !534)
  store float 5.000000e+00, ptr %b, align 4, !dbg !535
  %3 = getelementptr inbounds %"src::lib::run_test_2::Shape", ptr %b, i32 0, i32 1, !dbg !535
  store float 6.000000e+00, ptr %3, align 4, !dbg !535
  %4 = getelementptr inbounds %"src::lib::run_test_2::Shape", ptr %b, i32 0, i32 2, !dbg !535
  store float 7.000000e+00, ptr %4, align 4, !dbg !535
  %5 = getelementptr inbounds %"src::lib::run_test_2::Shape", ptr %b, i32 0, i32 3, !dbg !535
  store float 8.000000e+00, ptr %5, align 4, !dbg !535
  store i32 1, ptr %type_b.dbg.spill, align 4, !dbg !536
    #dbg_declare(ptr %type_b.dbg.spill, !526, !DIExpression(), !537)
  %result = call i32 @collided(ptr %a, i32 0, ptr %b, i32 1), !dbg !538
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !538
    #dbg_declare(ptr %result.dbg.spill, !528, !DIExpression(), !539)
  %6 = icmp eq i32 %result, 0, !dbg !540
  ret i1 %6, !dbg !541
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_7() unnamed_addr #0 !dbg !542 {
start:
  %result.dbg.spill = alloca i32, align 4
  %type_b.dbg.spill = alloca i32, align 4
  %type_a.dbg.spill = alloca i32, align 4
  %b = alloca %"src::lib::run_test_2::Shape", align 4
  %a = alloca %"src::lib::run_test_2::Shape", align 4
    #dbg_declare(ptr %a, !544, !DIExpression(), !561)
    #dbg_declare(ptr %b, !555, !DIExpression(), !562)
  store float 1.000000e+00, ptr %a, align 4, !dbg !563
  %0 = getelementptr inbounds %"src::lib::run_test_2::Shape", ptr %a, i32 0, i32 1, !dbg !563
  store float 2.000000e+00, ptr %0, align 4, !dbg !563
  %1 = getelementptr inbounds %"src::lib::run_test_2::Shape", ptr %a, i32 0, i32 2, !dbg !563
  store float 3.000000e+00, ptr %1, align 4, !dbg !563
  %2 = getelementptr inbounds %"src::lib::run_test_2::Shape", ptr %a, i32 0, i32 3, !dbg !563
  store float 4.000000e+00, ptr %2, align 4, !dbg !563
  store i32 1, ptr %type_a.dbg.spill, align 4, !dbg !564
    #dbg_declare(ptr %type_a.dbg.spill, !553, !DIExpression(), !565)
  store float 5.000000e+00, ptr %b, align 4, !dbg !566
  %3 = getelementptr inbounds %"src::lib::run_test_2::Shape", ptr %b, i32 0, i32 1, !dbg !566
  store float 6.000000e+00, ptr %3, align 4, !dbg !566
  %4 = getelementptr inbounds %"src::lib::run_test_2::Shape", ptr %b, i32 0, i32 2, !dbg !566
  store float 7.000000e+00, ptr %4, align 4, !dbg !566
  %5 = getelementptr inbounds %"src::lib::run_test_2::Shape", ptr %b, i32 0, i32 3, !dbg !566
  store float 8.000000e+00, ptr %5, align 4, !dbg !566
  store i32 0, ptr %type_b.dbg.spill, align 4, !dbg !567
    #dbg_declare(ptr %type_b.dbg.spill, !557, !DIExpression(), !568)
  %result = call i32 @collided(ptr %a, i32 1, ptr %b, i32 0), !dbg !569
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !569
    #dbg_declare(ptr %result.dbg.spill, !559, !DIExpression(), !570)
  %6 = icmp eq i32 %result, 1, !dbg !571
  ret i1 %6, !dbg !572
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_8() unnamed_addr #0 !dbg !573 {
start:
  %result.dbg.spill = alloca i32, align 4
  %type_b.dbg.spill = alloca i32, align 4
  %type_a.dbg.spill = alloca i32, align 4
  %b = alloca %"src::lib::run_test_2::Shape", align 4
  %a = alloca %"src::lib::run_test_2::Shape", align 4
    #dbg_declare(ptr %a, !575, !DIExpression(), !592)
    #dbg_declare(ptr %b, !586, !DIExpression(), !593)
  store float 1.000000e+00, ptr %a, align 4, !dbg !594
  %0 = getelementptr inbounds %"src::lib::run_test_2::Shape", ptr %a, i32 0, i32 1, !dbg !594
  store float 2.000000e+00, ptr %0, align 4, !dbg !594
  %1 = getelementptr inbounds %"src::lib::run_test_2::Shape", ptr %a, i32 0, i32 2, !dbg !594
  store float 3.000000e+00, ptr %1, align 4, !dbg !594
  %2 = getelementptr inbounds %"src::lib::run_test_2::Shape", ptr %a, i32 0, i32 3, !dbg !594
  store float 4.000000e+00, ptr %2, align 4, !dbg !594
  store i32 0, ptr %type_a.dbg.spill, align 4, !dbg !595
    #dbg_declare(ptr %type_a.dbg.spill, !584, !DIExpression(), !596)
  store float 5.000000e+00, ptr %b, align 4, !dbg !597
  %3 = getelementptr inbounds %"src::lib::run_test_2::Shape", ptr %b, i32 0, i32 1, !dbg !597
  store float 6.000000e+00, ptr %3, align 4, !dbg !597
  %4 = getelementptr inbounds %"src::lib::run_test_2::Shape", ptr %b, i32 0, i32 2, !dbg !597
  store float 7.000000e+00, ptr %4, align 4, !dbg !597
  %5 = getelementptr inbounds %"src::lib::run_test_2::Shape", ptr %b, i32 0, i32 3, !dbg !597
  store float 8.000000e+00, ptr %5, align 4, !dbg !597
  store i32 0, ptr %type_b.dbg.spill, align 4, !dbg !598
    #dbg_declare(ptr %type_b.dbg.spill, !588, !DIExpression(), !599)
  %result = call i32 @collided(ptr %a, i32 0, ptr %b, i32 0), !dbg !600
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !600
    #dbg_declare(ptr %result.dbg.spill, !590, !DIExpression(), !601)
  %6 = icmp eq i32 %result, 1, !dbg !602
  ret i1 %6, !dbg !603
}

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #3 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { noreturn }
attributes #6 = { noinline noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!11, !12, !13, !14}

!0 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !1, producer: "clang LLVM (rustc version 1.70.0-nightly (84dd17b56 2023-04-14))", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false)
!1 = !DIFile(filename: "lib.rs/@/30hknc36lkd6b2wd", directory: "/crisp-rust-outputs/B01_organic/collided_lib/translated_rust")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "c_void", scope: !5, file: !4, baseType: !7, size: 8, align: 8, flags: DIFlagEnumClass, elements: !8)
!4 = !DIFile(filename: "<unknown>", directory: "")
!5 = !DINamespace(name: "ffi", scope: !6)
!6 = !DINamespace(name: "core", scope: null)
!7 = !DIBasicType(name: "u8", size: 8, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "__variant1", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "__variant2", value: 1, isUnsigned: true)
!11 = !{i32 8, !"PIC Level", i32 2}
!12 = !{i32 2, !"RtLibUseGOT", i32 1}
!13 = !{i32 2, !"Dwarf Version", i32 4}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = distinct !DISubprogram(name: "c2_aabbto_aabb_ffi", linkageName: "c2AABBtoAABB", scope: !17, file: !16, line: 95, type: !20, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !31, retainedNodes: !33)
!16 = !DIFile(filename: "src/lib.rs", directory: "/crisp-rust-outputs/B01_organic/collided_lib/translated_rust", checksumkind: CSK_MD5, checksum: "f59fc9fc4607f3301a10217484e806b3")
!17 = !DINamespace(name: "lib", scope: !18)
!18 = !DINamespace(name: "src", scope: !19)
!19 = !DINamespace(name: "collided_lib", scope: null)
!20 = !DISubroutineType(types: !21)
!21 = !{!22, !23, !23}
!22 = !DIBasicType(name: "i32", size: 32, encoding: DW_ATE_signed)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "C2aabb", scope: !17, file: !4, size: 128, align: 32, elements: !24, templateParams: !31, identifier: "3ceb59abfc779d34e2e3ce9f66ab9e9e")
!24 = !{!25, !32}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !23, file: !4, baseType: !26, size: 64, align: 32)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "C2v", scope: !17, file: !4, size: 64, align: 32, elements: !27, templateParams: !31, identifier: "21f41a33627d6a904727231044ffa431")
!27 = !{!28, !30}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !26, file: !4, baseType: !29, size: 32, align: 32)
!29 = !DIBasicType(name: "f32", size: 32, encoding: DW_ATE_float)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !26, file: !4, baseType: !29, size: 32, align: 32, offset: 32)
!31 = !{}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !23, file: !4, baseType: !26, size: 64, align: 32, offset: 64)
!33 = !{!34, !35}
!34 = !DILocalVariable(name: "A", arg: 1, scope: !15, file: !16, line: 95, type: !23)
!35 = !DILocalVariable(name: "B", arg: 2, scope: !15, file: !16, line: 95, type: !23)
!36 = !DILocation(line: 95, column: 38, scope: !15)
!37 = !DILocation(line: 95, column: 49, scope: !15)
!38 = !DILocation(line: 96, column: 5, scope: !15)
!39 = !DILocation(line: 97, column: 2, scope: !15)
!40 = distinct !DISubprogram(name: "c2_aabbto_aabb", linkageName: "_ZN12collided_lib3src3lib14c2_aabbto_aabb17h231cad14afdd7d96E", scope: !17, file: !16, line: 74, type: !20, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !31, retainedNodes: !41)
!41 = !{!42, !43, !44, !46, !48, !50}
!42 = !DILocalVariable(name: "A", arg: 1, scope: !40, file: !16, line: 74, type: !23)
!43 = !DILocalVariable(name: "B", arg: 2, scope: !40, file: !16, line: 74, type: !23)
!44 = !DILocalVariable(name: "d0", scope: !45, file: !16, line: 75, type: !22, align: 4)
!45 = distinct !DILexicalBlock(scope: !40, file: !16, line: 75, column: 5)
!46 = !DILocalVariable(name: "d1", scope: !47, file: !16, line: 76, type: !22, align: 4)
!47 = distinct !DILexicalBlock(scope: !45, file: !16, line: 76, column: 5)
!48 = !DILocalVariable(name: "d2", scope: !49, file: !16, line: 77, type: !22, align: 4)
!49 = distinct !DILexicalBlock(scope: !47, file: !16, line: 77, column: 5)
!50 = !DILocalVariable(name: "d3", scope: !51, file: !16, line: 78, type: !22, align: 4)
!51 = distinct !DILexicalBlock(scope: !49, file: !16, line: 78, column: 5)
!52 = !DILocation(line: 74, column: 34, scope: !40)
!53 = !DILocation(line: 74, column: 45, scope: !40)
!54 = !DILocation(line: 75, column: 35, scope: !40)
!55 = !DILocation(line: 75, column: 45, scope: !40)
!56 = !DILocation(line: 75, column: 34, scope: !40)
!57 = !DILocation(line: 75, column: 9, scope: !45)
!58 = !DILocation(line: 76, column: 35, scope: !45)
!59 = !DILocation(line: 76, column: 45, scope: !45)
!60 = !DILocation(line: 76, column: 34, scope: !45)
!61 = !DILocation(line: 76, column: 9, scope: !47)
!62 = !DILocation(line: 77, column: 35, scope: !47)
!63 = !DILocation(line: 77, column: 45, scope: !47)
!64 = !DILocation(line: 77, column: 34, scope: !47)
!65 = !DILocation(line: 77, column: 9, scope: !49)
!66 = !DILocation(line: 78, column: 35, scope: !49)
!67 = !DILocation(line: 78, column: 45, scope: !49)
!68 = !DILocation(line: 78, column: 34, scope: !49)
!69 = !DILocation(line: 78, column: 9, scope: !51)
!70 = !DILocation(line: 79, column: 7, scope: !51)
!71 = !DILocation(line: 79, column: 6, scope: !51)
!72 = !DILocation(line: 79, column: 5, scope: !51)
!73 = !DILocation(line: 80, column: 2, scope: !40)
!74 = distinct !DISubprogram(name: "c2_circleto_aabb_ffi", linkageName: "c2CircletoAABB", scope: !17, file: !16, line: 100, type: !75, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !31, retainedNodes: !81)
!75 = !DISubroutineType(types: !76)
!76 = !{!22, !77, !23}
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "C2circle", scope: !17, file: !4, size: 96, align: 32, elements: !78, templateParams: !31, identifier: "e99a1532f4dbd41aee0ad60078273d4")
!78 = !{!79, !80}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !77, file: !4, baseType: !26, size: 64, align: 32)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !77, file: !4, baseType: !29, size: 32, align: 32, offset: 64)
!81 = !{!82, !83}
!82 = !DILocalVariable(name: "A", arg: 1, scope: !74, file: !16, line: 100, type: !77)
!83 = !DILocalVariable(name: "B", arg: 2, scope: !74, file: !16, line: 100, type: !23)
!84 = !DILocation(line: 100, column: 40, scope: !74)
!85 = !DILocation(line: 100, column: 53, scope: !74)
!86 = !DILocation(line: 101, column: 5, scope: !74)
!87 = !DILocation(line: 102, column: 2, scope: !74)
!88 = distinct !DISubprogram(name: "c2_circleto_aabb", linkageName: "_ZN12collided_lib3src3lib16c2_circleto_aabb17haa1601bff59172b9E", scope: !17, file: !16, line: 66, type: !75, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !31, retainedNodes: !89)
!89 = !{!90, !91, !92, !94, !96, !98}
!90 = !DILocalVariable(name: "A", arg: 1, scope: !88, file: !16, line: 66, type: !77)
!91 = !DILocalVariable(name: "B", arg: 2, scope: !88, file: !16, line: 66, type: !23)
!92 = !DILocalVariable(name: "l", scope: !93, file: !16, line: 67, type: !26, align: 4)
!93 = distinct !DILexicalBlock(scope: !88, file: !16, line: 67, column: 5)
!94 = !DILocalVariable(name: "ab", scope: !95, file: !16, line: 68, type: !26, align: 4)
!95 = distinct !DILexicalBlock(scope: !93, file: !16, line: 68, column: 5)
!96 = !DILocalVariable(name: "d2", scope: !97, file: !16, line: 69, type: !29, align: 4)
!97 = distinct !DILexicalBlock(scope: !95, file: !16, line: 69, column: 5)
!98 = !DILocalVariable(name: "r2", scope: !99, file: !16, line: 70, type: !29, align: 4)
!99 = distinct !DILexicalBlock(scope: !97, file: !16, line: 70, column: 5)
!100 = !DILocation(line: 66, column: 36, scope: !88)
!101 = !DILocation(line: 66, column: 49, scope: !88)
!102 = !DILocation(line: 67, column: 28, scope: !88)
!103 = !DILocation(line: 67, column: 33, scope: !88)
!104 = !DILocation(line: 67, column: 40, scope: !88)
!105 = !DILocation(line: 67, column: 18, scope: !88)
!106 = !DILocation(line: 67, column: 9, scope: !93)
!107 = !DILocation(line: 68, column: 26, scope: !93)
!108 = !DILocation(line: 68, column: 19, scope: !93)
!109 = !DILocation(line: 68, column: 9, scope: !95)
!110 = !DILocation(line: 69, column: 36, scope: !95)
!111 = !DILocation(line: 69, column: 9, scope: !97)
!112 = !DILocation(line: 70, column: 36, scope: !97)
!113 = !DILocation(line: 70, column: 42, scope: !97)
!114 = !DILocation(line: 70, column: 9, scope: !99)
!115 = !DILocation(line: 71, column: 5, scope: !99)
!116 = !DILocation(line: 72, column: 2, scope: !88)
!117 = distinct !DISubprogram(name: "c2_clampv", linkageName: "_ZN12collided_lib3src3lib9c2_clampv17he35c782d5eea7560E", scope: !17, file: !16, line: 44, type: !118, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !31, retainedNodes: !120)
!118 = !DISubroutineType(types: !119)
!119 = !{!26, !26, !26, !26}
!120 = !{!121, !122, !123}
!121 = !DILocalVariable(name: "a", arg: 1, scope: !117, file: !16, line: 44, type: !26)
!122 = !DILocalVariable(name: "lo", arg: 2, scope: !117, file: !16, line: 44, type: !26)
!123 = !DILocalVariable(name: "hi", arg: 3, scope: !117, file: !16, line: 44, type: !26)
!124 = !DILocation(line: 44, column: 29, scope: !117)
!125 = !DILocation(line: 44, column: 37, scope: !117)
!126 = !DILocation(line: 44, column: 46, scope: !117)
!127 = !DILocation(line: 45, column: 17, scope: !117)
!128 = !DILocation(line: 45, column: 5, scope: !117)
!129 = !DILocation(line: 46, column: 2, scope: !117)
!130 = distinct !DISubprogram(name: "c2_sub", linkageName: "_ZN12collided_lib3src3lib6c2_sub17h128cba2b92d51e38E", scope: !17, file: !16, line: 48, type: !131, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !31, retainedNodes: !133)
!131 = !DISubroutineType(types: !132)
!132 = !{!26, !26, !26}
!133 = !{!134, !135}
!134 = !DILocalVariable(name: "a", arg: 1, scope: !130, file: !16, line: 48, type: !26)
!135 = !DILocalVariable(name: "b", arg: 2, scope: !130, file: !16, line: 48, type: !26)
!136 = !DILocation(line: 48, column: 26, scope: !130)
!137 = !DILocation(line: 48, column: 38, scope: !130)
!138 = !DILocation(line: 49, column: 12, scope: !130)
!139 = !DILocation(line: 49, column: 5, scope: !130)
!140 = !DILocation(line: 50, column: 12, scope: !130)
!141 = !DILocation(line: 50, column: 5, scope: !130)
!142 = !DILocation(line: 51, column: 5, scope: !130)
!143 = !DILocation(line: 52, column: 2, scope: !130)
!144 = distinct !DISubprogram(name: "c2_dot", linkageName: "_ZN12collided_lib3src3lib6c2_dot17h57198fba668452d7E", scope: !17, file: !16, line: 54, type: !145, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !31, retainedNodes: !147)
!145 = !DISubroutineType(types: !146)
!146 = !{!29, !26, !26}
!147 = !{!148, !149}
!148 = !DILocalVariable(name: "a", arg: 1, scope: !144, file: !16, line: 54, type: !26)
!149 = !DILocalVariable(name: "b", arg: 2, scope: !144, file: !16, line: 54, type: !26)
!150 = !DILocation(line: 54, column: 26, scope: !144)
!151 = !DILocation(line: 54, column: 34, scope: !144)
!152 = !DILocation(line: 55, column: 5, scope: !144)
!153 = !DILocation(line: 55, column: 11, scope: !144)
!154 = !DILocation(line: 55, column: 17, scope: !144)
!155 = !DILocation(line: 55, column: 23, scope: !144)
!156 = !DILocation(line: 56, column: 2, scope: !144)
!157 = distinct !DISubprogram(name: "c2_minv", linkageName: "_ZN12collided_lib3src3lib7c2_minv17h4d9f4be4fb3b6514E", scope: !17, file: !16, line: 37, type: !131, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !31, retainedNodes: !158)
!158 = !{!159, !160}
!159 = !DILocalVariable(name: "a", arg: 1, scope: !157, file: !16, line: 37, type: !26)
!160 = !DILocalVariable(name: "b", arg: 2, scope: !157, file: !16, line: 37, type: !26)
!161 = !DILocation(line: 37, column: 27, scope: !157)
!162 = !DILocation(line: 37, column: 35, scope: !157)
!163 = !DILocation(line: 39, column: 12, scope: !157)
!164 = !DILocation(line: 39, column: 18, scope: !157)
!165 = !DILocation(line: 39, column: 37, scope: !157)
!166 = !DILocation(line: 39, column: 9, scope: !157)
!167 = !DILocation(line: 39, column: 24, scope: !157)
!168 = !DILocation(line: 40, column: 12, scope: !157)
!169 = !DILocation(line: 40, column: 18, scope: !157)
!170 = !DILocation(line: 40, column: 37, scope: !157)
!171 = !DILocation(line: 40, column: 9, scope: !157)
!172 = !DILocation(line: 40, column: 24, scope: !157)
!173 = !DILocation(line: 38, column: 5, scope: !157)
!174 = !DILocation(line: 42, column: 2, scope: !157)
!175 = distinct !DISubprogram(name: "c2_maxv", linkageName: "_ZN12collided_lib3src3lib7c2_maxv17h950e3002e2fd61feE", scope: !17, file: !16, line: 30, type: !131, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !31, retainedNodes: !176)
!176 = !{!177, !178}
!177 = !DILocalVariable(name: "a", arg: 1, scope: !175, file: !16, line: 30, type: !26)
!178 = !DILocalVariable(name: "b", arg: 2, scope: !175, file: !16, line: 30, type: !26)
!179 = !DILocation(line: 30, column: 27, scope: !175)
!180 = !DILocation(line: 30, column: 35, scope: !175)
!181 = !DILocation(line: 32, column: 12, scope: !175)
!182 = !DILocation(line: 32, column: 18, scope: !175)
!183 = !DILocation(line: 32, column: 37, scope: !175)
!184 = !DILocation(line: 32, column: 9, scope: !175)
!185 = !DILocation(line: 32, column: 24, scope: !175)
!186 = !DILocation(line: 33, column: 12, scope: !175)
!187 = !DILocation(line: 33, column: 18, scope: !175)
!188 = !DILocation(line: 33, column: 37, scope: !175)
!189 = !DILocation(line: 33, column: 9, scope: !175)
!190 = !DILocation(line: 33, column: 24, scope: !175)
!191 = !DILocation(line: 31, column: 5, scope: !175)
!192 = !DILocation(line: 35, column: 2, scope: !175)
!193 = distinct !DISubprogram(name: "c2_v", linkageName: "_ZN12collided_lib3src3lib4c2_v17h98d7d4a51db2d78fE", scope: !17, file: !16, line: 26, type: !194, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !31, retainedNodes: !196)
!194 = !DISubroutineType(types: !195)
!195 = !{!26, !29, !29}
!196 = !{!197, !198}
!197 = !DILocalVariable(name: "x", arg: 1, scope: !193, file: !16, line: 26, type: !29)
!198 = !DILocalVariable(name: "y", arg: 2, scope: !193, file: !16, line: 26, type: !29)
!199 = !DILocation(line: 26, column: 24, scope: !193)
!200 = !DILocation(line: 26, column: 49, scope: !193)
!201 = !DILocation(line: 27, column: 5, scope: !193)
!202 = !DILocation(line: 28, column: 2, scope: !193)
!203 = distinct !DISubprogram(name: "c2_circleto_circle_ffi", linkageName: "c2CircletoCircle", scope: !17, file: !16, line: 105, type: !204, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !31, retainedNodes: !206)
!204 = !DISubroutineType(types: !205)
!205 = !{!22, !77, !77}
!206 = !{!207, !208}
!207 = !DILocalVariable(name: "A", arg: 1, scope: !203, file: !16, line: 105, type: !77)
!208 = !DILocalVariable(name: "B", arg: 2, scope: !203, file: !16, line: 105, type: !77)
!209 = !DILocation(line: 105, column: 42, scope: !203)
!210 = !DILocation(line: 105, column: 55, scope: !203)
!211 = !DILocation(line: 106, column: 5, scope: !203)
!212 = !DILocation(line: 107, column: 2, scope: !203)
!213 = distinct !DISubprogram(name: "c2_circleto_circle", linkageName: "_ZN12collided_lib3src3lib18c2_circleto_circle17h3f5e4655e3ec8882E", scope: !17, file: !16, line: 58, type: !204, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !31, retainedNodes: !214)
!214 = !{!215, !216, !217, !219, !221}
!215 = !DILocalVariable(name: "A", arg: 1, scope: !213, file: !16, line: 58, type: !77)
!216 = !DILocalVariable(name: "B", arg: 2, scope: !213, file: !16, line: 58, type: !77)
!217 = !DILocalVariable(name: "c", scope: !218, file: !16, line: 59, type: !26, align: 4)
!218 = distinct !DILexicalBlock(scope: !213, file: !16, line: 59, column: 5)
!219 = !DILocalVariable(name: "d2", scope: !220, file: !16, line: 60, type: !29, align: 4)
!220 = distinct !DILexicalBlock(scope: !218, file: !16, line: 60, column: 5)
!221 = !DILocalVariable(name: "r2", scope: !222, file: !16, line: 61, type: !29, align: 4)
!222 = distinct !DILexicalBlock(scope: !220, file: !16, line: 61, column: 5)
!223 = !DILocation(line: 58, column: 38, scope: !213)
!224 = !DILocation(line: 58, column: 51, scope: !213)
!225 = !DILocation(line: 61, column: 9, scope: !222)
!226 = !DILocation(line: 59, column: 25, scope: !213)
!227 = !DILocation(line: 59, column: 30, scope: !213)
!228 = !DILocation(line: 59, column: 18, scope: !213)
!229 = !DILocation(line: 59, column: 9, scope: !218)
!230 = !DILocation(line: 60, column: 36, scope: !218)
!231 = !DILocation(line: 60, column: 9, scope: !220)
!232 = !DILocation(line: 61, column: 40, scope: !220)
!233 = !DILocation(line: 61, column: 46, scope: !220)
!234 = !DILocation(line: 62, column: 10, scope: !222)
!235 = !DILocation(line: 62, column: 15, scope: !222)
!236 = !DILocation(line: 62, column: 5, scope: !222)
!237 = !DILocation(line: 63, column: 11, scope: !222)
!238 = !DILocation(line: 63, column: 5, scope: !222)
!239 = !DILocation(line: 64, column: 2, scope: !213)
!240 = distinct !DISubprogram(name: "c2_clampv_ffi", linkageName: "c2Clampv", scope: !17, file: !16, line: 110, type: !118, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !31, retainedNodes: !241)
!241 = !{!242, !243, !244}
!242 = !DILocalVariable(name: "a", arg: 1, scope: !240, file: !16, line: 110, type: !26)
!243 = !DILocalVariable(name: "lo", arg: 2, scope: !240, file: !16, line: 110, type: !26)
!244 = !DILocalVariable(name: "hi", arg: 3, scope: !240, file: !16, line: 110, type: !26)
!245 = !DILocation(line: 110, column: 33, scope: !240)
!246 = !DILocation(line: 110, column: 41, scope: !240)
!247 = !DILocation(line: 110, column: 50, scope: !240)
!248 = !DILocation(line: 111, column: 5, scope: !240)
!249 = !DILocation(line: 112, column: 2, scope: !240)
!250 = distinct !DISubprogram(name: "c2_dot_ffi", linkageName: "c2Dot", scope: !17, file: !16, line: 115, type: !145, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !31, retainedNodes: !251)
!251 = !{!252, !253}
!252 = !DILocalVariable(name: "a", arg: 1, scope: !250, file: !16, line: 115, type: !26)
!253 = !DILocalVariable(name: "b", arg: 2, scope: !250, file: !16, line: 115, type: !26)
!254 = !DILocation(line: 115, column: 30, scope: !250)
!255 = !DILocation(line: 115, column: 38, scope: !250)
!256 = !DILocation(line: 116, column: 5, scope: !250)
!257 = !DILocation(line: 117, column: 2, scope: !250)
!258 = distinct !DISubprogram(name: "c2_maxv_ffi", linkageName: "c2Maxv", scope: !17, file: !16, line: 120, type: !131, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !31, retainedNodes: !259)
!259 = !{!260, !261}
!260 = !DILocalVariable(name: "a", arg: 1, scope: !258, file: !16, line: 120, type: !26)
!261 = !DILocalVariable(name: "b", arg: 2, scope: !258, file: !16, line: 120, type: !26)
!262 = !DILocation(line: 120, column: 31, scope: !258)
!263 = !DILocation(line: 120, column: 39, scope: !258)
!264 = !DILocation(line: 121, column: 5, scope: !258)
!265 = !DILocation(line: 122, column: 2, scope: !258)
!266 = distinct !DISubprogram(name: "c2_minv_ffi", linkageName: "c2Minv", scope: !17, file: !16, line: 125, type: !131, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !31, retainedNodes: !267)
!267 = !{!268, !269}
!268 = !DILocalVariable(name: "a", arg: 1, scope: !266, file: !16, line: 125, type: !26)
!269 = !DILocalVariable(name: "b", arg: 2, scope: !266, file: !16, line: 125, type: !26)
!270 = !DILocation(line: 125, column: 31, scope: !266)
!271 = !DILocation(line: 125, column: 39, scope: !266)
!272 = !DILocation(line: 126, column: 5, scope: !266)
!273 = !DILocation(line: 127, column: 2, scope: !266)
!274 = distinct !DISubprogram(name: "c2_sub_ffi", linkageName: "c2Sub", scope: !17, file: !16, line: 130, type: !131, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !31, retainedNodes: !275)
!275 = !{!276, !277}
!276 = !DILocalVariable(name: "a", arg: 1, scope: !274, file: !16, line: 130, type: !26)
!277 = !DILocalVariable(name: "b", arg: 2, scope: !274, file: !16, line: 130, type: !26)
!278 = !DILocation(line: 130, column: 30, scope: !274)
!279 = !DILocation(line: 130, column: 38, scope: !274)
!280 = !DILocation(line: 131, column: 5, scope: !274)
!281 = !DILocation(line: 132, column: 2, scope: !274)
!282 = distinct !DISubprogram(name: "c2_v_ffi", linkageName: "c2V", scope: !17, file: !16, line: 135, type: !194, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !31, retainedNodes: !283)
!283 = !{!284, !285}
!284 = !DILocalVariable(name: "x", arg: 1, scope: !282, file: !16, line: 135, type: !29)
!285 = !DILocalVariable(name: "y", arg: 2, scope: !282, file: !16, line: 135, type: !29)
!286 = !DILocation(line: 135, column: 28, scope: !282)
!287 = !DILocation(line: 135, column: 53, scope: !282)
!288 = !DILocation(line: 136, column: 5, scope: !282)
!289 = !DILocation(line: 137, column: 2, scope: !282)
!290 = distinct !DISubprogram(name: "collided_ffi", linkageName: "collided", scope: !17, file: !16, line: 140, type: !291, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !31, retainedNodes: !295)
!291 = !DISubroutineType(types: !292)
!292 = !{!22, !293, !294, !293, !294}
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const core::ffi::c_void", baseType: !3, size: 64, align: 64, dwarfAddressSpace: 0)
!294 = !DIBasicType(name: "u32", size: 32, encoding: DW_ATE_unsigned)
!295 = !{!296, !297, !298, !299}
!296 = !DILocalVariable(name: "A", arg: 1, scope: !290, file: !16, line: 141, type: !293)
!297 = !DILocalVariable(name: "typeA", arg: 2, scope: !290, file: !16, line: 142, type: !294)
!298 = !DILocalVariable(name: "B", arg: 3, scope: !290, file: !16, line: 143, type: !293)
!299 = !DILocalVariable(name: "typeB", arg: 4, scope: !290, file: !16, line: 144, type: !294)
!300 = !DILocation(line: 141, column: 5, scope: !290)
!301 = !DILocation(line: 142, column: 5, scope: !290)
!302 = !DILocation(line: 143, column: 5, scope: !290)
!303 = !DILocation(line: 144, column: 5, scope: !290)
!304 = !DILocation(line: 146, column: 11, scope: !290)
!305 = !DILocation(line: 146, column: 5, scope: !290)
!306 = !DILocation(line: 159, column: 14, scope: !290)
!307 = !DILocation(line: 151, column: 34, scope: !290)
!308 = !DILocation(line: 157, column: 36, scope: !290)
!309 = !DILocation(line: 157, column: 62, scope: !290)
!310 = !DILocation(line: 140, column: 1, scope: !290)
!311 = !DILocation(line: 157, column: 13, scope: !290)
!312 = !DILocation(line: 161, column: 2, scope: !290)
!313 = !DILocation(line: 151, column: 60, scope: !290)
!314 = !DILocation(line: 151, column: 13, scope: !290)
!315 = !DILocation(line: 148, column: 32, scope: !290)
!316 = !DILocation(line: 154, column: 34, scope: !290)
!317 = !DILocation(line: 154, column: 60, scope: !290)
!318 = !DILocation(line: 154, column: 13, scope: !290)
!319 = !DILocation(line: 148, column: 56, scope: !290)
!320 = !DILocation(line: 148, column: 13, scope: !290)
!321 = distinct !DISubprogram(name: "collided_circle_circle", linkageName: "_ZN12collided_lib3src3lib22collided_circle_circle17h1b936a003d8f4280E", scope: !17, file: !16, line: 90, type: !322, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !31, retainedNodes: !325)
!322 = !DISubroutineType(types: !323)
!323 = !{!22, !324, !324}
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&collided_lib::src::lib::C2circle", baseType: !77, size: 64, align: 64, dwarfAddressSpace: 0)
!325 = !{!326, !327}
!326 = !DILocalVariable(name: "A", arg: 1, scope: !321, file: !16, line: 90, type: !324)
!327 = !DILocalVariable(name: "B", arg: 2, scope: !321, file: !16, line: 90, type: !324)
!328 = !DILocation(line: 90, column: 31, scope: !321)
!329 = !DILocation(line: 90, column: 45, scope: !321)
!330 = !DILocation(line: 91, column: 24, scope: !321)
!331 = !DILocation(line: 91, column: 28, scope: !321)
!332 = !DILocation(line: 91, column: 5, scope: !321)
!333 = !DILocation(line: 92, column: 2, scope: !321)
!334 = distinct !DISubprogram(name: "collided_circle_aabb", linkageName: "_ZN12collided_lib3src3lib20collided_circle_aabb17h0dfde1b2c1aa0eebE", scope: !17, file: !16, line: 86, type: !335, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !31, retainedNodes: !338)
!335 = !DISubroutineType(types: !336)
!336 = !{!22, !324, !337}
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&collided_lib::src::lib::C2aabb", baseType: !23, size: 64, align: 64, dwarfAddressSpace: 0)
!338 = !{!339, !340}
!339 = !DILocalVariable(name: "A", arg: 1, scope: !334, file: !16, line: 86, type: !324)
!340 = !DILocalVariable(name: "B", arg: 2, scope: !334, file: !16, line: 86, type: !337)
!341 = !DILocation(line: 86, column: 29, scope: !334)
!342 = !DILocation(line: 86, column: 43, scope: !334)
!343 = !DILocation(line: 87, column: 22, scope: !334)
!344 = !DILocation(line: 87, column: 26, scope: !334)
!345 = !DILocation(line: 87, column: 5, scope: !334)
!346 = !DILocation(line: 88, column: 2, scope: !334)
!347 = distinct !DISubprogram(name: "collided_aabb_aabb", linkageName: "_ZN12collided_lib3src3lib18collided_aabb_aabb17h62b90cce909d024eE", scope: !17, file: !16, line: 82, type: !348, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !31, retainedNodes: !350)
!348 = !DISubroutineType(types: !349)
!349 = !{!22, !337, !337}
!350 = !{!351, !352}
!351 = !DILocalVariable(name: "A", arg: 1, scope: !347, file: !16, line: 82, type: !337)
!352 = !DILocalVariable(name: "B", arg: 2, scope: !347, file: !16, line: 82, type: !337)
!353 = !DILocation(line: 82, column: 27, scope: !347)
!354 = !DILocation(line: 82, column: 39, scope: !347)
!355 = !DILocation(line: 83, column: 20, scope: !347)
!356 = !DILocation(line: 83, column: 24, scope: !347)
!357 = !DILocation(line: 83, column: 5, scope: !347)
!358 = !DILocation(line: 84, column: 2, scope: !347)
!359 = distinct !DISubprogram(name: "run_test_1", scope: !17, file: !16, line: 164, type: !360, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !31, retainedNodes: !363)
!360 = !DISubroutineType(types: !361)
!361 = !{!362}
!362 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!363 = !{!364, !366, !368, !370, !372}
!364 = !DILocalVariable(name: "a", scope: !365, file: !16, line: 169, type: !23, align: 4)
!365 = distinct !DILexicalBlock(scope: !359, file: !16, line: 169, column: 5)
!366 = !DILocalVariable(name: "type_a", scope: !367, file: !16, line: 170, type: !294, align: 4)
!367 = distinct !DILexicalBlock(scope: !365, file: !16, line: 170, column: 5)
!368 = !DILocalVariable(name: "b", scope: !369, file: !16, line: 171, type: !23, align: 4)
!369 = distinct !DILexicalBlock(scope: !367, file: !16, line: 171, column: 5)
!370 = !DILocalVariable(name: "type_b", scope: !371, file: !16, line: 172, type: !294, align: 4)
!371 = distinct !DILexicalBlock(scope: !369, file: !16, line: 172, column: 5)
!372 = !DILocalVariable(name: "result", scope: !373, file: !16, line: 173, type: !22, align: 4)
!373 = distinct !DILexicalBlock(scope: !371, file: !16, line: 173, column: 5)
!374 = !DILocation(line: 169, column: 9, scope: !365)
!375 = !DILocation(line: 171, column: 9, scope: !369)
!376 = !DILocation(line: 169, column: 27, scope: !359)
!377 = !DILocation(line: 169, column: 56, scope: !359)
!378 = !DILocation(line: 169, column: 13, scope: !359)
!379 = !DILocation(line: 170, column: 26, scope: !365)
!380 = !DILocation(line: 170, column: 9, scope: !367)
!381 = !DILocation(line: 171, column: 27, scope: !367)
!382 = !DILocation(line: 171, column: 56, scope: !367)
!383 = !DILocation(line: 171, column: 13, scope: !367)
!384 = !DILocation(line: 172, column: 26, scope: !369)
!385 = !DILocation(line: 172, column: 9, scope: !371)
!386 = !DILocation(line: 173, column: 18, scope: !371)
!387 = !DILocation(line: 173, column: 9, scope: !373)
!388 = !DILocation(line: 179, column: 5, scope: !373)
!389 = !DILocation(line: 180, column: 2, scope: !359)
!390 = distinct !DISubprogram(name: "run_test_2", scope: !17, file: !16, line: 183, type: !360, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !31, retainedNodes: !391)
!391 = !{!392, !401, !403, !405, !407}
!392 = !DILocalVariable(name: "a", scope: !393, file: !16, line: 190, type: !394, align: 4)
!393 = distinct !DILexicalBlock(scope: !390, file: !16, line: 190, column: 5)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Shape", scope: !395, file: !4, size: 128, align: 32, elements: !396, templateParams: !31, identifier: "baf43aeb132d94d0273ecbca1b124879")
!395 = !DINamespace(name: "run_test_2", scope: !17)
!396 = !{!397, !398, !399, !400}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !394, file: !4, baseType: !29, size: 32, align: 32)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !394, file: !4, baseType: !29, size: 32, align: 32, offset: 32)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !394, file: !4, baseType: !29, size: 32, align: 32, offset: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !394, file: !4, baseType: !29, size: 32, align: 32, offset: 96)
!401 = !DILocalVariable(name: "type_a", scope: !402, file: !16, line: 191, type: !294, align: 4)
!402 = distinct !DILexicalBlock(scope: !393, file: !16, line: 191, column: 5)
!403 = !DILocalVariable(name: "b", scope: !404, file: !16, line: 192, type: !394, align: 4)
!404 = distinct !DILexicalBlock(scope: !402, file: !16, line: 192, column: 5)
!405 = !DILocalVariable(name: "type_b", scope: !406, file: !16, line: 193, type: !294, align: 4)
!406 = distinct !DILexicalBlock(scope: !404, file: !16, line: 193, column: 5)
!407 = !DILocalVariable(name: "result", scope: !408, file: !16, line: 194, type: !22, align: 4)
!408 = distinct !DILexicalBlock(scope: !406, file: !16, line: 194, column: 5)
!409 = !DILocation(line: 190, column: 9, scope: !393)
!410 = !DILocation(line: 192, column: 9, scope: !404)
!411 = !DILocation(line: 190, column: 13, scope: !390)
!412 = !DILocation(line: 191, column: 26, scope: !393)
!413 = !DILocation(line: 191, column: 9, scope: !402)
!414 = !DILocation(line: 192, column: 13, scope: !402)
!415 = !DILocation(line: 193, column: 26, scope: !404)
!416 = !DILocation(line: 193, column: 9, scope: !406)
!417 = !DILocation(line: 194, column: 18, scope: !406)
!418 = !DILocation(line: 194, column: 9, scope: !408)
!419 = !DILocation(line: 200, column: 5, scope: !408)
!420 = !DILocation(line: 201, column: 2, scope: !390)
!421 = distinct !DISubprogram(name: "run_test_3", scope: !17, file: !16, line: 204, type: !360, scopeLine: 204, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !31, retainedNodes: !422)
!422 = !{!423, !432, !434, !436, !438}
!423 = !DILocalVariable(name: "a", scope: !424, file: !16, line: 211, type: !425, align: 4)
!424 = distinct !DILexicalBlock(scope: !421, file: !16, line: 211, column: 5)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Shape", scope: !426, file: !4, size: 128, align: 32, elements: !427, templateParams: !31, identifier: "45b2e543b83065c033506a324f13c8f4")
!426 = !DINamespace(name: "run_test_3", scope: !17)
!427 = !{!428, !429, !430, !431}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !425, file: !4, baseType: !29, size: 32, align: 32)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !425, file: !4, baseType: !29, size: 32, align: 32, offset: 32)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !425, file: !4, baseType: !29, size: 32, align: 32, offset: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !425, file: !4, baseType: !29, size: 32, align: 32, offset: 96)
!432 = !DILocalVariable(name: "type_a", scope: !433, file: !16, line: 212, type: !294, align: 4)
!433 = distinct !DILexicalBlock(scope: !424, file: !16, line: 212, column: 5)
!434 = !DILocalVariable(name: "b", scope: !435, file: !16, line: 213, type: !425, align: 4)
!435 = distinct !DILexicalBlock(scope: !433, file: !16, line: 213, column: 5)
!436 = !DILocalVariable(name: "type_b", scope: !437, file: !16, line: 214, type: !294, align: 4)
!437 = distinct !DILexicalBlock(scope: !435, file: !16, line: 214, column: 5)
!438 = !DILocalVariable(name: "result", scope: !439, file: !16, line: 215, type: !22, align: 4)
!439 = distinct !DILexicalBlock(scope: !437, file: !16, line: 215, column: 5)
!440 = !DILocation(line: 211, column: 9, scope: !424)
!441 = !DILocation(line: 213, column: 9, scope: !435)
!442 = !DILocation(line: 211, column: 13, scope: !421)
!443 = !DILocation(line: 212, column: 26, scope: !424)
!444 = !DILocation(line: 212, column: 9, scope: !433)
!445 = !DILocation(line: 213, column: 13, scope: !433)
!446 = !DILocation(line: 214, column: 26, scope: !435)
!447 = !DILocation(line: 214, column: 9, scope: !437)
!448 = !DILocation(line: 215, column: 18, scope: !437)
!449 = !DILocation(line: 215, column: 9, scope: !439)
!450 = !DILocation(line: 221, column: 5, scope: !439)
!451 = !DILocation(line: 222, column: 2, scope: !421)
!452 = distinct !DISubprogram(name: "run_test_4", scope: !17, file: !16, line: 225, type: !360, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !31, retainedNodes: !453)
!453 = !{!454, !463, !465, !467, !469}
!454 = !DILocalVariable(name: "a", scope: !455, file: !16, line: 232, type: !456, align: 4)
!455 = distinct !DILexicalBlock(scope: !452, file: !16, line: 232, column: 5)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Shape", scope: !457, file: !4, size: 128, align: 32, elements: !458, templateParams: !31, identifier: "ed890c7eda8d3230661d59c23cb9a1ad")
!457 = !DINamespace(name: "run_test_4", scope: !17)
!458 = !{!459, !460, !461, !462}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !456, file: !4, baseType: !29, size: 32, align: 32)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !456, file: !4, baseType: !29, size: 32, align: 32, offset: 32)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !456, file: !4, baseType: !29, size: 32, align: 32, offset: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !456, file: !4, baseType: !29, size: 32, align: 32, offset: 96)
!463 = !DILocalVariable(name: "type_a", scope: !464, file: !16, line: 233, type: !294, align: 4)
!464 = distinct !DILexicalBlock(scope: !455, file: !16, line: 233, column: 5)
!465 = !DILocalVariable(name: "b", scope: !466, file: !16, line: 234, type: !456, align: 4)
!466 = distinct !DILexicalBlock(scope: !464, file: !16, line: 234, column: 5)
!467 = !DILocalVariable(name: "type_b", scope: !468, file: !16, line: 235, type: !294, align: 4)
!468 = distinct !DILexicalBlock(scope: !466, file: !16, line: 235, column: 5)
!469 = !DILocalVariable(name: "result", scope: !470, file: !16, line: 236, type: !22, align: 4)
!470 = distinct !DILexicalBlock(scope: !468, file: !16, line: 236, column: 5)
!471 = !DILocation(line: 232, column: 9, scope: !455)
!472 = !DILocation(line: 234, column: 9, scope: !466)
!473 = !DILocation(line: 232, column: 13, scope: !452)
!474 = !DILocation(line: 233, column: 26, scope: !455)
!475 = !DILocation(line: 233, column: 9, scope: !464)
!476 = !DILocation(line: 234, column: 13, scope: !464)
!477 = !DILocation(line: 235, column: 26, scope: !466)
!478 = !DILocation(line: 235, column: 9, scope: !468)
!479 = !DILocation(line: 236, column: 18, scope: !468)
!480 = !DILocation(line: 236, column: 9, scope: !470)
!481 = !DILocation(line: 242, column: 5, scope: !470)
!482 = !DILocation(line: 243, column: 2, scope: !452)
!483 = distinct !DISubprogram(name: "run_test_5", scope: !17, file: !16, line: 246, type: !360, scopeLine: 246, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !31, retainedNodes: !484)
!484 = !{!485, !487, !489, !491, !493}
!485 = !DILocalVariable(name: "a", scope: !486, file: !16, line: 251, type: !23, align: 4)
!486 = distinct !DILexicalBlock(scope: !483, file: !16, line: 251, column: 5)
!487 = !DILocalVariable(name: "type_a", scope: !488, file: !16, line: 252, type: !294, align: 4)
!488 = distinct !DILexicalBlock(scope: !486, file: !16, line: 252, column: 5)
!489 = !DILocalVariable(name: "b", scope: !490, file: !16, line: 253, type: !23, align: 4)
!490 = distinct !DILexicalBlock(scope: !488, file: !16, line: 253, column: 5)
!491 = !DILocalVariable(name: "type_b", scope: !492, file: !16, line: 254, type: !294, align: 4)
!492 = distinct !DILexicalBlock(scope: !490, file: !16, line: 254, column: 5)
!493 = !DILocalVariable(name: "result", scope: !494, file: !16, line: 255, type: !22, align: 4)
!494 = distinct !DILexicalBlock(scope: !492, file: !16, line: 255, column: 5)
!495 = !DILocation(line: 251, column: 9, scope: !486)
!496 = !DILocation(line: 253, column: 9, scope: !490)
!497 = !DILocation(line: 251, column: 27, scope: !483)
!498 = !DILocation(line: 251, column: 56, scope: !483)
!499 = !DILocation(line: 251, column: 13, scope: !483)
!500 = !DILocation(line: 252, column: 26, scope: !486)
!501 = !DILocation(line: 252, column: 9, scope: !488)
!502 = !DILocation(line: 253, column: 27, scope: !488)
!503 = !DILocation(line: 253, column: 56, scope: !488)
!504 = !DILocation(line: 253, column: 13, scope: !488)
!505 = !DILocation(line: 254, column: 26, scope: !490)
!506 = !DILocation(line: 254, column: 9, scope: !492)
!507 = !DILocation(line: 255, column: 18, scope: !492)
!508 = !DILocation(line: 255, column: 9, scope: !494)
!509 = !DILocation(line: 261, column: 5, scope: !494)
!510 = !DILocation(line: 262, column: 2, scope: !483)
!511 = distinct !DISubprogram(name: "run_test_6", scope: !17, file: !16, line: 265, type: !360, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !31, retainedNodes: !512)
!512 = !{!513, !522, !524, !526, !528}
!513 = !DILocalVariable(name: "a", scope: !514, file: !16, line: 268, type: !515, align: 4)
!514 = distinct !DILexicalBlock(scope: !511, file: !16, line: 268, column: 5)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Shape", scope: !516, file: !4, size: 128, align: 32, elements: !517, templateParams: !31, identifier: "5694768c302e3bae1a55a8917ef3c3bc")
!516 = !DINamespace(name: "run_test_6", scope: !17)
!517 = !{!518, !519, !520, !521}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !515, file: !4, baseType: !29, size: 32, align: 32)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !515, file: !4, baseType: !29, size: 32, align: 32, offset: 32)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !515, file: !4, baseType: !29, size: 32, align: 32, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !515, file: !4, baseType: !29, size: 32, align: 32, offset: 96)
!522 = !DILocalVariable(name: "type_a", scope: !523, file: !16, line: 269, type: !294, align: 4)
!523 = distinct !DILexicalBlock(scope: !514, file: !16, line: 269, column: 5)
!524 = !DILocalVariable(name: "b", scope: !525, file: !16, line: 270, type: !515, align: 4)
!525 = distinct !DILexicalBlock(scope: !523, file: !16, line: 270, column: 5)
!526 = !DILocalVariable(name: "type_b", scope: !527, file: !16, line: 271, type: !294, align: 4)
!527 = distinct !DILexicalBlock(scope: !525, file: !16, line: 271, column: 5)
!528 = !DILocalVariable(name: "result", scope: !529, file: !16, line: 272, type: !22, align: 4)
!529 = distinct !DILexicalBlock(scope: !527, file: !16, line: 272, column: 5)
!530 = !DILocation(line: 268, column: 9, scope: !514)
!531 = !DILocation(line: 270, column: 9, scope: !525)
!532 = !DILocation(line: 268, column: 13, scope: !511)
!533 = !DILocation(line: 269, column: 26, scope: !514)
!534 = !DILocation(line: 269, column: 9, scope: !523)
!535 = !DILocation(line: 270, column: 13, scope: !523)
!536 = !DILocation(line: 271, column: 26, scope: !525)
!537 = !DILocation(line: 271, column: 9, scope: !527)
!538 = !DILocation(line: 272, column: 18, scope: !527)
!539 = !DILocation(line: 272, column: 9, scope: !529)
!540 = !DILocation(line: 278, column: 5, scope: !529)
!541 = !DILocation(line: 279, column: 2, scope: !511)
!542 = distinct !DISubprogram(name: "run_test_7", scope: !17, file: !16, line: 282, type: !360, scopeLine: 282, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !31, retainedNodes: !543)
!543 = !{!544, !553, !555, !557, !559}
!544 = !DILocalVariable(name: "a", scope: !545, file: !16, line: 285, type: !546, align: 4)
!545 = distinct !DILexicalBlock(scope: !542, file: !16, line: 285, column: 5)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Shape", scope: !547, file: !4, size: 128, align: 32, elements: !548, templateParams: !31, identifier: "8908211172122a2b9682028f3b50cf34")
!547 = !DINamespace(name: "run_test_7", scope: !17)
!548 = !{!549, !550, !551, !552}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !546, file: !4, baseType: !29, size: 32, align: 32)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !546, file: !4, baseType: !29, size: 32, align: 32, offset: 32)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !546, file: !4, baseType: !29, size: 32, align: 32, offset: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !546, file: !4, baseType: !29, size: 32, align: 32, offset: 96)
!553 = !DILocalVariable(name: "type_a", scope: !554, file: !16, line: 286, type: !294, align: 4)
!554 = distinct !DILexicalBlock(scope: !545, file: !16, line: 286, column: 5)
!555 = !DILocalVariable(name: "b", scope: !556, file: !16, line: 287, type: !546, align: 4)
!556 = distinct !DILexicalBlock(scope: !554, file: !16, line: 287, column: 5)
!557 = !DILocalVariable(name: "type_b", scope: !558, file: !16, line: 288, type: !294, align: 4)
!558 = distinct !DILexicalBlock(scope: !556, file: !16, line: 288, column: 5)
!559 = !DILocalVariable(name: "result", scope: !560, file: !16, line: 289, type: !22, align: 4)
!560 = distinct !DILexicalBlock(scope: !558, file: !16, line: 289, column: 5)
!561 = !DILocation(line: 285, column: 9, scope: !545)
!562 = !DILocation(line: 287, column: 9, scope: !556)
!563 = !DILocation(line: 285, column: 13, scope: !542)
!564 = !DILocation(line: 286, column: 26, scope: !545)
!565 = !DILocation(line: 286, column: 9, scope: !554)
!566 = !DILocation(line: 287, column: 13, scope: !554)
!567 = !DILocation(line: 288, column: 26, scope: !556)
!568 = !DILocation(line: 288, column: 9, scope: !558)
!569 = !DILocation(line: 289, column: 18, scope: !558)
!570 = !DILocation(line: 289, column: 9, scope: !560)
!571 = !DILocation(line: 295, column: 5, scope: !560)
!572 = !DILocation(line: 296, column: 2, scope: !542)
!573 = distinct !DISubprogram(name: "run_test_8", scope: !17, file: !16, line: 299, type: !360, scopeLine: 299, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !31, retainedNodes: !574)
!574 = !{!575, !584, !586, !588, !590}
!575 = !DILocalVariable(name: "a", scope: !576, file: !16, line: 302, type: !577, align: 4)
!576 = distinct !DILexicalBlock(scope: !573, file: !16, line: 302, column: 5)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Shape", scope: !578, file: !4, size: 128, align: 32, elements: !579, templateParams: !31, identifier: "83906cc8e1b7c9e061218d80750195a5")
!578 = !DINamespace(name: "run_test_8", scope: !17)
!579 = !{!580, !581, !582, !583}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !577, file: !4, baseType: !29, size: 32, align: 32)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !577, file: !4, baseType: !29, size: 32, align: 32, offset: 32)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !577, file: !4, baseType: !29, size: 32, align: 32, offset: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !577, file: !4, baseType: !29, size: 32, align: 32, offset: 96)
!584 = !DILocalVariable(name: "type_a", scope: !585, file: !16, line: 303, type: !294, align: 4)
!585 = distinct !DILexicalBlock(scope: !576, file: !16, line: 303, column: 5)
!586 = !DILocalVariable(name: "b", scope: !587, file: !16, line: 304, type: !577, align: 4)
!587 = distinct !DILexicalBlock(scope: !585, file: !16, line: 304, column: 5)
!588 = !DILocalVariable(name: "type_b", scope: !589, file: !16, line: 305, type: !294, align: 4)
!589 = distinct !DILexicalBlock(scope: !587, file: !16, line: 305, column: 5)
!590 = !DILocalVariable(name: "result", scope: !591, file: !16, line: 306, type: !22, align: 4)
!591 = distinct !DILexicalBlock(scope: !589, file: !16, line: 306, column: 5)
!592 = !DILocation(line: 302, column: 9, scope: !576)
!593 = !DILocation(line: 304, column: 9, scope: !587)
!594 = !DILocation(line: 302, column: 13, scope: !573)
!595 = !DILocation(line: 303, column: 26, scope: !576)
!596 = !DILocation(line: 303, column: 9, scope: !585)
!597 = !DILocation(line: 304, column: 13, scope: !585)
!598 = !DILocation(line: 305, column: 26, scope: !587)
!599 = !DILocation(line: 305, column: 9, scope: !589)
!600 = !DILocation(line: 306, column: 18, scope: !589)
!601 = !DILocation(line: 306, column: 9, scope: !591)
!602 = !DILocation(line: 312, column: 5, scope: !591)
!603 = !DILocation(line: 313, column: 2, scope: !573)
