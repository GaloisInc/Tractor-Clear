; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; ASSERT EQ: i1 1 = call i1 @run_test_1()
; ASSERT EQ: i1 1 = call i1 @run_test_2()
; ASSERT EQ: i1 1 = call i1 @run_test_3()
; ASSERT EQ: i1 1 = call i1 @run_test_4()
; ASSERT EQ: i1 1 = call i1 @run_test_5()

@run_test_2 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_3 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_4 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_5 = unnamed_addr alias i1 (), ptr @run_test_1

; Function Attrs: mustprogress nofree nosync nounwind nonlazybind willreturn memory(none) uwtable
define double @to_barycentric(double %0, double %1, double %2, double %3) unnamed_addr #0 {
start:
  %4 = bitcast double %0 to i64
  %5 = insertelement <2 x double> poison, double %1, i64 0
  %6 = insertelement <2 x double> %5, double %2, i64 1
  %7 = bitcast <2 x double> %6 to <2 x i64>
  %8 = bitcast double %3 to i64
  %9 = lshr i64 %4, 32
  %10 = lshr i64 %8, 32
  %11 = insertelement <2 x i64> poison, i64 %9, i64 0
  %12 = insertelement <2 x i64> %11, i64 %4, i64 1
  %13 = trunc <2 x i64> %12 to <2 x i32>
  %14 = bitcast <2 x i32> %13 to <2 x float>
  %15 = trunc <2 x i64> %7 to <2 x i32>
  %16 = bitcast <2 x i32> %15 to <2 x float>
  %17 = lshr <2 x i64> %7, splat (i64 32)
  %18 = trunc <2 x i64> %17 to <2 x i32>
  %19 = bitcast <2 x i32> %18 to <2 x float>
  %20 = insertelement <2 x i64> poison, i64 %10, i64 0
  %21 = insertelement <2 x i64> %20, i64 %8, i64 1
  %22 = trunc <2 x i64> %21 to <2 x i32>
  %23 = bitcast <2 x i32> %22 to <2 x float>
  %24 = shufflevector <2 x float> %14, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %25 = fsub <2 x float> %16, %24
  %26 = shufflevector <2 x float> %14, <2 x float> poison, <2 x i32> zeroinitializer
  %27 = fsub <2 x float> %19, %26
  %28 = fsub <2 x float> %23, %14
  %shift = shufflevector <2 x float> %25, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %29 = fmul <2 x float> %25, %shift
  %shift30 = shufflevector <2 x float> %27, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %30 = fmul <2 x float> %27, %shift30
  %31 = fadd <2 x float> %29, %30
  %32 = fmul <2 x float> %25, %25
  %33 = fmul <2 x float> %27, %27
  %34 = fadd <2 x float> %32, %33
  %35 = shufflevector <2 x float> %27, <2 x float> %25, <2 x i32> <i32 1, i32 2>
  %36 = fmul <2 x float> %35, %28
  %37 = shufflevector <2 x float> %28, <2 x float> %27, <2 x i32> <i32 1, i32 2>
  %38 = shufflevector <2 x float> %25, <2 x float> %28, <2 x i32> <i32 1, i32 2>
  %39 = fmul <2 x float> %37, %38
  %40 = fadd <2 x float> %36, %39
  %shift31 = shufflevector <2 x float> %34, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %41 = fmul <2 x float> %34, %shift31
  %42 = fmul <2 x float> %31, %31
  %43 = fsub <2 x float> %41, %42
  %_24.i = extractelement <2 x float> %43, i64 0
  %inv_denom.i = fdiv float 1.000000e+00, %_24.i
  %44 = fmul <2 x float> %34, %40
  %45 = shufflevector <2 x float> %31, <2 x float> poison, <2 x i32> zeroinitializer
  %46 = shufflevector <2 x float> %40, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %47 = fmul <2 x float> %45, %46
  %48 = fsub <2 x float> %44, %47
  %49 = insertelement <2 x float> poison, float %inv_denom.i, i64 0
  %50 = shufflevector <2 x float> %49, <2 x float> poison, <2 x i32> zeroinitializer
  %51 = fmul <2 x float> %50, %48
  %bc32 = bitcast <2 x float> %51 to <2 x i32>
  %52 = extractelement <2 x i32> %bc32, i64 0
  %bc = bitcast <2 x float> %51 to <2 x i32>
  %53 = extractelement <2 x i32> %bc, i64 1
  %.sroa.013.0.insert.ext = zext i32 %52 to i64
  %.sroa.013.4.insert.ext = zext i32 %53 to i64
  %.sroa.013.4.insert.shift = shl nuw i64 %.sroa.013.4.insert.ext, 32
  %.sroa.013.4.insert.insert = or i64 %.sroa.013.4.insert.shift, %.sroa.013.0.insert.ext
  %54 = bitcast i64 %.sroa.013.4.insert.insert to double
  ret double %54
}

; Function Attrs: mustprogress nofree nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef zeroext i1 @run_test_1() unnamed_addr #0 {
start:
  ret i1 true
}

attributes #0 = { mustprogress nofree nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
