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

@run_test_2 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_3 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_4 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_5 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_6 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_7 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_8 = unnamed_addr alias i1 (), ptr @run_test_1

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef i32 @c2AABBtoAABB({ double, double } %0, { double, double } %1) unnamed_addr #0 {
start:
  %.fca.0.extract.i = extractvalue { double, double } %0, 0
  %.fca.1.extract.i = extractvalue { double, double } %0, 1
  %2 = bitcast double %.fca.0.extract.i to i64
  %3 = trunc i64 %2 to i32
  %4 = bitcast i32 %3 to float
  %5 = lshr i64 %2, 32
  %6 = trunc i64 %5 to i32
  %7 = bitcast i32 %6 to float
  %8 = bitcast double %.fca.1.extract.i to i64
  %9 = trunc i64 %8 to i32
  %10 = bitcast i32 %9 to float
  %11 = lshr i64 %8, 32
  %12 = trunc i64 %11 to i32
  %13 = bitcast i32 %12 to float
  %.fca.0.extract2.i = extractvalue { double, double } %1, 0
  %.fca.1.extract3.i = extractvalue { double, double } %1, 1
  %14 = bitcast double %.fca.0.extract2.i to i64
  %15 = trunc i64 %14 to i32
  %16 = bitcast i32 %15 to float
  %17 = lshr i64 %14, 32
  %18 = trunc i64 %17 to i32
  %19 = bitcast i32 %18 to float
  %20 = bitcast double %.fca.1.extract3.i to i64
  %21 = trunc i64 %20 to i32
  %22 = bitcast i32 %21 to float
  %23 = lshr i64 %20, 32
  %24 = trunc i64 %23 to i32
  %25 = bitcast i32 %24 to float
  %_4.i = fcmp olt float %22, %4
  %_8.i = fcmp olt float %10, %16
  %_12.i = fcmp olt float %25, %7
  %_16.i = fcmp olt float %13, %19
  %_227.i = or i1 %_8.i, %_4.i
  %_218.i = or i1 %_227.i, %_12.i
  %_209.i = or i1 %_16.i, %_218.i
  %_19.i = xor i1 %_209.i, true
  %26 = zext i1 %_19.i to i32
  ret i32 %26
}

; Function Attrs: mustprogress nofree nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef i32 @c2CircletoAABB({ double, float } %0, { double, double } %1) unnamed_addr #1 {
start:
  %.fca.0.extract.i = extractvalue { double, float } %0, 0
  %.fca.1.extract.i = extractvalue { double, float } %0, 1
  %2 = bitcast double %.fca.0.extract.i to i64
  %.fca.0.extract2.i = extractvalue { double, double } %1, 0
  %.fca.1.extract3.i = extractvalue { double, double } %1, 1
  %3 = bitcast double %.fca.0.extract2.i to i64
  %4 = bitcast double %.fca.1.extract3.i to i64
  %5 = lshr i64 %2, 32
  %6 = lshr i64 %4, 32
  %7 = lshr i64 %3, 32
  %8 = insertelement <2 x i64> poison, i64 %2, i64 0
  %9 = insertelement <2 x i64> %8, i64 %5, i64 1
  %10 = trunc <2 x i64> %9 to <2 x i32>
  %11 = bitcast <2 x i32> %10 to <2 x float>
  %12 = insertelement <2 x i64> poison, i64 %4, i64 0
  %13 = insertelement <2 x i64> %12, i64 %6, i64 1
  %14 = trunc <2 x i64> %13 to <2 x i32>
  %15 = bitcast <2 x i32> %14 to <2 x float>
  %16 = fcmp olt <2 x float> %11, %15
  %.v = select <2 x i1> %16, <2 x i32> %10, <2 x i32> %14
  %17 = bitcast <2 x i32> %.v to <2 x float>
  %18 = insertelement <2 x i64> poison, i64 %3, i64 0
  %19 = insertelement <2 x i64> %18, i64 %7, i64 1
  %20 = trunc <2 x i64> %19 to <2 x i32>
  %21 = bitcast <2 x i32> %20 to <2 x float>
  %22 = fcmp olt <2 x float> %17, %21
  %.v11 = select <2 x i1> %22, <2 x i32> %20, <2 x i32> %.v
  %23 = bitcast <2 x i32> %.v11 to <2 x float>
  %24 = fsub <2 x float> %11, %23
  %25 = fmul <2 x float> %24, %24
  %shift = shufflevector <2 x float> %25, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %26 = fadd <2 x float> %25, %shift
  %27 = extractelement <2 x float> %26, i64 0
  %r2.i = fmul float %.fca.1.extract.i, %.fca.1.extract.i
  %_16.i = fcmp olt float %27, %r2.i
  %28 = zext i1 %_16.i to i32
  ret i32 %28
}

; Function Attrs: mustprogress nofree nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef i32 @c2CircletoCircle({ double, float } %0, { double, float } %1) unnamed_addr #1 {
start:
  %.fca.0.extract.i = extractvalue { double, float } %0, 0
  %.fca.1.extract.i = extractvalue { double, float } %0, 1
  %2 = bitcast double %.fca.0.extract.i to i64
  %.fca.0.extract2.i = extractvalue { double, float } %1, 0
  %.fca.1.extract3.i = extractvalue { double, float } %1, 1
  %3 = bitcast double %.fca.0.extract2.i to i64
  %4 = trunc i64 %3 to i32
  %5 = bitcast i32 %4 to float
  %6 = lshr i64 %3, 32
  %7 = trunc i64 %6 to i32
  %8 = bitcast i32 %7 to float
  %9 = trunc i64 %2 to i32
  %10 = bitcast i32 %9 to float
  %11 = lshr i64 %2, 32
  %12 = trunc i64 %11 to i32
  %13 = bitcast i32 %12 to float
  %14 = fsub float %5, %10
  %15 = fsub float %8, %13
  %_3.i.i = fmul float %14, %14
  %_6.i.i = fmul float %15, %15
  %16 = fadd float %_3.i.i, %_6.i.i
  %17 = fadd float %.fca.1.extract.i, %.fca.1.extract3.i
  %18 = fmul float %17, %17
  %_14.i = fcmp olt float %16, %18
  %19 = zext i1 %_14.i to i32
  ret i32 %19
}

; Function Attrs: mustprogress nofree nosync nounwind nonlazybind willreturn memory(none) uwtable
define double @c2Clampv(double %0, double %1, double %2) unnamed_addr #1 {
start:
  %3 = bitcast double %0 to i64
  %4 = bitcast double %1 to i64
  %5 = bitcast double %2 to i64
  %6 = trunc i64 %3 to i32
  %7 = bitcast i32 %6 to float
  %8 = lshr i64 %3, 32
  %9 = trunc i64 %8 to i32
  %10 = bitcast i32 %9 to float
  %11 = trunc i64 %5 to i32
  %12 = bitcast i32 %11 to float
  %13 = lshr i64 %5, 32
  %14 = trunc i64 %13 to i32
  %15 = bitcast i32 %14 to float
  %_4.i.i = fcmp olt float %7, %12
  %.0.a.sroa.0.0.copyload..0.b.sroa.0.0.copyload.i.i = select i1 %_4.i.i, float %7, float %12
  %_8.i.i = fcmp olt float %10, %15
  %_7.0.i.i = select i1 %_8.i.i, float %10, float %15
  %16 = trunc i64 %4 to i32
  %17 = bitcast i32 %16 to float
  %18 = lshr i64 %4, 32
  %19 = trunc i64 %18 to i32
  %20 = bitcast i32 %19 to float
  %_4.i19.i = fcmp olt float %.0.a.sroa.0.0.copyload..0.b.sroa.0.0.copyload.i.i, %17
  %.0.a.sroa.0.0.copyload..0.b.sroa.0.0.copyload.i20.i = select i1 %_4.i19.i, float %17, float %.0.a.sroa.0.0.copyload..0.b.sroa.0.0.copyload.i.i
  %_8.i21.i = fcmp olt float %_7.0.i.i, %20
  %_7.0.i22.i = select i1 %_8.i21.i, float %20, float %_7.0.i.i
  %21 = bitcast float %.0.a.sroa.0.0.copyload..0.b.sroa.0.0.copyload.i20.i to i32
  %22 = bitcast float %_7.0.i22.i to i32
  %.sroa.010.0.insert.ext = zext i32 %21 to i64
  %.sroa.010.4.insert.ext = zext i32 %22 to i64
  %.sroa.010.4.insert.shift = shl nuw i64 %.sroa.010.4.insert.ext, 32
  %.sroa.010.4.insert.insert = or i64 %.sroa.010.4.insert.shift, %.sroa.010.0.insert.ext
  %23 = bitcast i64 %.sroa.010.4.insert.insert to double
  ret double %23
}

; Function Attrs: mustprogress nofree nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef float @c2Dot(double %0, double %1) unnamed_addr #1 {
start:
  %2 = bitcast double %0 to i64
  %3 = bitcast double %1 to i64
  %4 = trunc i64 %2 to i32
  %5 = bitcast i32 %4 to float
  %6 = lshr i64 %2, 32
  %7 = trunc i64 %6 to i32
  %8 = bitcast i32 %7 to float
  %9 = trunc i64 %3 to i32
  %10 = bitcast i32 %9 to float
  %11 = lshr i64 %3, 32
  %12 = trunc i64 %11 to i32
  %13 = bitcast i32 %12 to float
  %_3.i = fmul float %5, %10
  %_6.i = fmul float %8, %13
  %14 = fadd float %_3.i, %_6.i
  ret float %14
}

; Function Attrs: mustprogress nofree nosync nounwind nonlazybind willreturn memory(none) uwtable
define double @c2Maxv(double %0, double %1) unnamed_addr #1 {
start:
  %.sroa.07 = alloca double, align 8
  %2 = bitcast double %0 to i64
  %3 = bitcast double %1 to i64
  %4 = trunc i64 %2 to i32
  %5 = bitcast i32 %4 to float
  %6 = lshr i64 %2, 32
  %7 = trunc i64 %6 to i32
  %8 = bitcast i32 %7 to float
  %9 = trunc i64 %3 to i32
  %10 = bitcast i32 %9 to float
  %11 = lshr i64 %3, 32
  %12 = trunc i64 %11 to i32
  %13 = bitcast i32 %12 to float
  %_4.i = fcmp ogt float %5, %10
  %.0.a.sroa.0.0.copyload..0.b.sroa.0.0.copyload.i = select i1 %_4.i, float %5, float %10
  %_8.i = fcmp ogt float %8, %13
  %_7.0.i = select i1 %_8.i, float %8, float %13
  store float %.0.a.sroa.0.0.copyload..0.b.sroa.0.0.copyload.i, ptr %.sroa.07, align 8
  %.sroa.07.4.sroa_idx = getelementptr inbounds i8, ptr %.sroa.07, i64 4
  store float %_7.0.i, ptr %.sroa.07.4.sroa_idx, align 4
  %.sroa.07.0..sroa.07.0..sroa.07.0..sroa.07.0..sroa.07.0. = load double, ptr %.sroa.07, align 8
  ret double %.sroa.07.0..sroa.07.0..sroa.07.0..sroa.07.0..sroa.07.0.
}

; Function Attrs: mustprogress nofree nosync nounwind nonlazybind willreturn memory(none) uwtable
define double @c2Minv(double %0, double %1) unnamed_addr #1 {
start:
  %.sroa.07 = alloca double, align 8
  %2 = bitcast double %0 to i64
  %3 = bitcast double %1 to i64
  %4 = trunc i64 %2 to i32
  %5 = bitcast i32 %4 to float
  %6 = lshr i64 %2, 32
  %7 = trunc i64 %6 to i32
  %8 = bitcast i32 %7 to float
  %9 = trunc i64 %3 to i32
  %10 = bitcast i32 %9 to float
  %11 = lshr i64 %3, 32
  %12 = trunc i64 %11 to i32
  %13 = bitcast i32 %12 to float
  %_4.i = fcmp olt float %5, %10
  %.0.a.sroa.0.0.copyload..0.b.sroa.0.0.copyload.i = select i1 %_4.i, float %5, float %10
  %_8.i = fcmp olt float %8, %13
  %_7.0.i = select i1 %_8.i, float %8, float %13
  store float %.0.a.sroa.0.0.copyload..0.b.sroa.0.0.copyload.i, ptr %.sroa.07, align 8
  %.sroa.07.4.sroa_idx = getelementptr inbounds i8, ptr %.sroa.07, i64 4
  store float %_7.0.i, ptr %.sroa.07.4.sroa_idx, align 4
  %.sroa.07.0..sroa.07.0..sroa.07.0..sroa.07.0..sroa.07.0. = load double, ptr %.sroa.07, align 8
  ret double %.sroa.07.0..sroa.07.0..sroa.07.0..sroa.07.0..sroa.07.0.
}

; Function Attrs: mustprogress nofree nosync nounwind nonlazybind willreturn memory(none) uwtable
define double @c2Sub(double %0, double %1) unnamed_addr #1 {
start:
  %2 = bitcast double %0 to i64
  %3 = bitcast double %1 to i64
  %4 = trunc i64 %2 to i32
  %5 = bitcast i32 %4 to float
  %6 = lshr i64 %2, 32
  %7 = trunc i64 %6 to i32
  %8 = bitcast i32 %7 to float
  %9 = trunc i64 %3 to i32
  %10 = bitcast i32 %9 to float
  %11 = lshr i64 %3, 32
  %12 = trunc i64 %11 to i32
  %13 = bitcast i32 %12 to float
  %14 = fsub float %5, %10
  %15 = fsub float %8, %13
  %16 = bitcast float %14 to i32
  %17 = bitcast float %15 to i32
  %.sroa.07.0.insert.ext = zext i32 %16 to i64
  %.sroa.07.4.insert.ext = zext i32 %17 to i64
  %.sroa.07.4.insert.shift = shl nuw i64 %.sroa.07.4.insert.ext, 32
  %.sroa.07.4.insert.insert = or i64 %.sroa.07.4.insert.shift, %.sroa.07.0.insert.ext
  %18 = bitcast i64 %.sroa.07.4.insert.insert to double
  ret double %18
}

; Function Attrs: mustprogress nofree nosync nounwind nonlazybind willreturn memory(none) uwtable
define double @c2V(float noundef %x, float noundef %y) unnamed_addr #1 {
start:
  %0 = bitcast float %x to i32
  %1 = bitcast float %y to i32
  %.sroa.01.0.insert.ext = zext i32 %0 to i64
  %.sroa.01.4.insert.ext = zext i32 %1 to i64
  %.sroa.01.4.insert.shift = shl nuw i64 %.sroa.01.4.insert.ext, 32
  %.sroa.01.4.insert.insert = or i64 %.sroa.01.4.insert.shift, %.sroa.01.0.insert.ext
  %2 = bitcast i64 %.sroa.01.4.insert.insert to double
  ret double %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef i32 @collided(ptr nocapture noundef readonly %A, i32 noundef %typeA, ptr nocapture noundef readonly %B, i32 noundef %typeB) unnamed_addr #2 {
start:
  switch i32 %typeA, label %bb12 [
    i32 1, label %bb1
    i32 0, label %bb3
  ]

bb1:                                              ; preds = %start
  switch i32 %typeB, label %bb12 [
    i32 1, label %bb4
    i32 0, label %bb8
  ]

bb3:                                              ; preds = %start
  switch i32 %typeB, label %bb12 [
    i32 1, label %bb6
    i32 0, label %bb10
  ]

bb6:                                              ; preds = %bb3
  %A.val433 = load i64, ptr %A, align 4
  %0 = getelementptr i8, ptr %A, i64 8
  %A.val5 = load float, ptr %0, align 4
  %B.val634 = load i64, ptr %B, align 4
  %1 = getelementptr i8, ptr %B, i64 8
  %B.val735 = load i64, ptr %1, align 4
  %2 = lshr i64 %A.val433, 32
  %3 = lshr i64 %B.val735, 32
  %4 = lshr i64 %B.val634, 32
  %5 = insertelement <2 x i64> poison, i64 %A.val433, i64 0
  %6 = insertelement <2 x i64> %5, i64 %2, i64 1
  %7 = trunc <2 x i64> %6 to <2 x i32>
  %8 = bitcast <2 x i32> %7 to <2 x float>
  %9 = insertelement <2 x i64> poison, i64 %B.val735, i64 0
  %10 = insertelement <2 x i64> %9, i64 %3, i64 1
  %11 = trunc <2 x i64> %10 to <2 x i32>
  %12 = bitcast <2 x i32> %11 to <2 x float>
  %13 = fcmp olt <2 x float> %8, %12
  %.v = select <2 x i1> %13, <2 x i32> %7, <2 x i32> %11
  %14 = bitcast <2 x i32> %.v to <2 x float>
  %15 = insertelement <2 x i64> poison, i64 %B.val634, i64 0
  %16 = insertelement <2 x i64> %15, i64 %4, i64 1
  %17 = trunc <2 x i64> %16 to <2 x i32>
  %18 = bitcast <2 x i32> %17 to <2 x float>
  %19 = fcmp olt <2 x float> %14, %18
  %.v44 = select <2 x i1> %19, <2 x i32> %17, <2 x i32> %.v
  %20 = bitcast <2 x i32> %.v44 to <2 x float>
  %21 = fsub <2 x float> %8, %20
  %22 = fmul <2 x float> %21, %21
  %shift = shufflevector <2 x float> %22, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %23 = fadd <2 x float> %22, %shift
  %24 = extractelement <2 x float> %23, i64 0
  %r2.i.i = fmul float %A.val5, %A.val5
  %_16.i.i = fcmp olt float %24, %r2.i.i
  br label %bb12

bb10:                                             ; preds = %bb3
  %A.val831 = load i64, ptr %A, align 4
  %25 = getelementptr i8, ptr %A, i64 8
  %A.val9 = load float, ptr %25, align 4
  %B.val1032 = load i64, ptr %B, align 4
  %26 = getelementptr i8, ptr %B, i64 8
  %B.val11 = load float, ptr %26, align 4
  %27 = trunc i64 %B.val1032 to i32
  %28 = bitcast i32 %27 to float
  %29 = lshr i64 %B.val1032, 32
  %30 = trunc i64 %29 to i32
  %31 = bitcast i32 %30 to float
  %32 = trunc i64 %A.val831 to i32
  %33 = bitcast i32 %32 to float
  %34 = lshr i64 %A.val831, 32
  %35 = trunc i64 %34 to i32
  %36 = bitcast i32 %35 to float
  %37 = fsub float %28, %33
  %38 = fsub float %31, %36
  %_3.i.i.i16 = fmul float %37, %37
  %_6.i.i.i17 = fmul float %38, %38
  %39 = fadd float %_3.i.i.i16, %_6.i.i.i17
  %40 = fadd float %A.val9, %B.val11
  %41 = fmul float %40, %40
  %_14.i.i = fcmp olt float %39, %41
  br label %bb12

bb12:                                             ; preds = %bb8, %bb4, %bb10, %bb6, %bb3, %bb1, %start
  %.0.shrunk = phi i1 [ %_14.i.i, %bb10 ], [ %_16.i.i, %bb6 ], [ %_16.i.i30, %bb8 ], [ %_19.i.i, %bb4 ], [ false, %bb1 ], [ false, %bb3 ], [ false, %start ]
  %.0 = zext i1 %.0.shrunk to i32
  ret i32 %.0

bb4:                                              ; preds = %bb1
  %A.val1239 = load i64, ptr %A, align 4
  %42 = getelementptr i8, ptr %A, i64 8
  %A.val1340 = load i64, ptr %42, align 4
  %B.val1441 = load i64, ptr %B, align 4
  %43 = getelementptr i8, ptr %B, i64 8
  %B.val1542 = load i64, ptr %43, align 4
  %44 = trunc i64 %A.val1239 to i32
  %45 = bitcast i32 %44 to float
  %46 = lshr i64 %A.val1239, 32
  %47 = trunc i64 %46 to i32
  %48 = bitcast i32 %47 to float
  %49 = trunc i64 %A.val1340 to i32
  %50 = bitcast i32 %49 to float
  %51 = lshr i64 %A.val1340, 32
  %52 = trunc i64 %51 to i32
  %53 = bitcast i32 %52 to float
  %54 = trunc i64 %B.val1441 to i32
  %55 = bitcast i32 %54 to float
  %56 = lshr i64 %B.val1441, 32
  %57 = trunc i64 %56 to i32
  %58 = bitcast i32 %57 to float
  %59 = trunc i64 %B.val1542 to i32
  %60 = bitcast i32 %59 to float
  %61 = lshr i64 %B.val1542, 32
  %62 = trunc i64 %61 to i32
  %63 = bitcast i32 %62 to float
  %_4.i.i = fcmp olt float %60, %45
  %_8.i.i = fcmp olt float %50, %55
  %_12.i.i = fcmp olt float %63, %48
  %_16.i.i18 = fcmp olt float %53, %58
  %_227.i.i = or i1 %_8.i.i, %_4.i.i
  %_218.i.i = or i1 %_227.i.i, %_12.i.i
  %_209.i.i = or i1 %_16.i.i18, %_218.i.i
  %_19.i.i = xor i1 %_209.i.i, true
  br label %bb12

bb8:                                              ; preds = %bb1
  %B.val36 = load i64, ptr %B, align 4
  %64 = getelementptr i8, ptr %B, i64 8
  %B.val2 = load float, ptr %64, align 4
  %A.val37 = load i64, ptr %A, align 4
  %65 = getelementptr i8, ptr %A, i64 8
  %A.val338 = load i64, ptr %65, align 4
  %66 = lshr i64 %B.val36, 32
  %67 = lshr i64 %A.val338, 32
  %68 = lshr i64 %A.val37, 32
  %69 = insertelement <2 x i64> poison, i64 %B.val36, i64 0
  %70 = insertelement <2 x i64> %69, i64 %66, i64 1
  %71 = trunc <2 x i64> %70 to <2 x i32>
  %72 = bitcast <2 x i32> %71 to <2 x float>
  %73 = insertelement <2 x i64> poison, i64 %A.val338, i64 0
  %74 = insertelement <2 x i64> %73, i64 %67, i64 1
  %75 = trunc <2 x i64> %74 to <2 x i32>
  %76 = bitcast <2 x i32> %75 to <2 x float>
  %77 = fcmp olt <2 x float> %72, %76
  %.v45 = select <2 x i1> %77, <2 x i32> %71, <2 x i32> %75
  %78 = bitcast <2 x i32> %.v45 to <2 x float>
  %79 = insertelement <2 x i64> poison, i64 %A.val37, i64 0
  %80 = insertelement <2 x i64> %79, i64 %68, i64 1
  %81 = trunc <2 x i64> %80 to <2 x i32>
  %82 = bitcast <2 x i32> %81 to <2 x float>
  %83 = fcmp olt <2 x float> %78, %82
  %.v46 = select <2 x i1> %83, <2 x i32> %81, <2 x i32> %.v45
  %84 = bitcast <2 x i32> %.v46 to <2 x float>
  %85 = fsub <2 x float> %72, %84
  %86 = fmul <2 x float> %85, %85
  %shift43 = shufflevector <2 x float> %86, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %87 = fadd <2 x float> %86, %shift43
  %88 = extractelement <2 x float> %87, i64 0
  %r2.i.i29 = fmul float %B.val2, %B.val2
  %_16.i.i30 = fcmp olt float %88, %r2.i.i29
  br label %bb12
}

; Function Attrs: mustprogress nofree nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef zeroext i1 @run_test_1() unnamed_addr #1 {
start:
  ret i1 true
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
