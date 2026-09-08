; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; ASSERT EQ: i1 1 = call i1 @run_test_1()
; ASSERT EQ: i1 1 = call i1 @run_test_2()
; ASSERT EQ: i1 1 = call i1 @run_test_3()
; ASSERT EQ: i1 1 = call i1 @run_test_4()
; ASSERT EQ: i1 1 = call i1 @run_test_5()
; ASSERT EQ: i1 1 = call i1 @run_test_8()
; ASSERT EQ: i1 1 = call i1 @run_test_9()
; ASSERT EQ: i1 1 = call i1 @run_test_10()
; ASSERT EQ: i1 1 = call i1 @run_test_11()
; ASSERT EQ: i1 1 = call i1 @run_test_14()
; ASSERT EQ: i1 1 = call i1 @run_test_15()
; ASSERT EQ: i1 1 = call i1 @run_test_16()
; ASSERT EQ: i1 1 = call i1 @run_test_17()
; ASSERT EQ: i1 1 = call i1 @run_test_18()
; ASSERT EQ: i1 1 = call i1 @run_test_19()
; ASSERT EQ: i1 1 = call i1 @run_test_20()

@run_test_2 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_3 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_4 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_5 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_8 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_9 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_10 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_11 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_14 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_15 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_16 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_17 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_18 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_19 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_20 = unnamed_addr alias i1 (), ptr @run_test_1

; Function Attrs: mustprogress nofree nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef float @contrast_ratio(i24 %0, i24 %1) unnamed_addr #0 {
start:
  %.sroa.0.0.extract.trunc.i = trunc i24 %0 to i8
  %.sroa.4.0.extract.shift.i = lshr i24 %0, 8
  %.sroa.4.0.extract.trunc.i = trunc i24 %.sroa.4.0.extract.shift.i to i8
  %.sroa.5.0.extract.shift.i = lshr i24 %0, 16
  %.sroa.5.0.extract.trunc.i = trunc i24 %.sroa.5.0.extract.shift.i to i8
  %.sroa.01.0.extract.trunc.i = trunc i24 %1 to i8
  %.sroa.42.0.extract.shift.i = lshr i24 %1, 8
  %.sroa.42.0.extract.trunc.i = trunc i24 %.sroa.42.0.extract.shift.i to i8
  %.sroa.53.0.extract.shift.i = lshr i24 %1, 16
  %.sroa.53.0.extract.trunc.i = trunc i24 %.sroa.53.0.extract.shift.i to i8
  %_4.i = uitofp i8 %.sroa.0.0.extract.trunc.i to float
  %_3.i = fdiv float %_4.i, 2.550000e+02
  %_7.i = uitofp i8 %.sroa.4.0.extract.trunc.i to float
  %_6.i = fdiv float %_7.i, 2.550000e+02
  %_10.i = uitofp i8 %.sroa.5.0.extract.trunc.i to float
  %_9.i = fdiv float %_10.i, 2.550000e+02
  %_13.i = uitofp i8 %.sroa.01.0.extract.trunc.i to float
  %_12.i = fdiv float %_13.i, 2.550000e+02
  %_16.i = uitofp i8 %.sroa.42.0.extract.trunc.i to float
  %_15.i = fdiv float %_16.i, 2.550000e+02
  %_19.i = uitofp i8 %.sroa.53.0.extract.trunc.i to float
  %_18.i = fdiv float %_19.i, 2.550000e+02
  %_6.i.i.i = fpext float %_3.i to double
  %_5.i.i.i = fcmp ogt double %_6.i.i.i, 4.045000e-02
  br i1 %_5.i.i.i, label %bb1.i.i.i, label %bb2.i.i.i

bb2.i.i.i:                                        ; preds = %start
  %_13.i.i.i = fdiv double %_6.i.i.i, 1.292000e+01
  br label %bb3.i.i.i

bb1.i.i.i:                                        ; preds = %start
  %_10.i.i.i = fadd double %_6.i.i.i, 5.500000e-02
  %self.i.i.i = fdiv double %_10.i.i.i, 1.055000e+00
  %2 = tail call double @llvm.pow.f64(double %self.i.i.i, double 2.400000e+00)
  br label %bb3.i.i.i

bb3.i.i.i:                                        ; preds = %bb1.i.i.i, %bb2.i.i.i
  %_4.0.in.i.i.i = phi double [ %2, %bb1.i.i.i ], [ %_13.i.i.i, %bb2.i.i.i ]
  %_18.i.i.i = fpext float %_6.i to double
  %_17.i.i.i = fcmp ogt double %_18.i.i.i, 4.045000e-02
  br i1 %_17.i.i.i, label %bb4.i.i.i, label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb3.i.i.i
  %_25.i.i.i = fdiv double %_18.i.i.i, 1.292000e+01
  br label %bb6.i.i.i

bb4.i.i.i:                                        ; preds = %bb3.i.i.i
  %_22.i.i.i = fadd double %_18.i.i.i, 5.500000e-02
  %self1.i.i.i = fdiv double %_22.i.i.i, 1.055000e+00
  %3 = tail call double @llvm.pow.f64(double %self1.i.i.i, double 2.400000e+00)
  br label %bb6.i.i.i

bb6.i.i.i:                                        ; preds = %bb4.i.i.i, %bb5.i.i.i
  %_16.0.in.i.i.i = phi double [ %3, %bb4.i.i.i ], [ %_25.i.i.i, %bb5.i.i.i ]
  %_30.i.i.i = fpext float %_9.i to double
  %_29.i.i.i = fcmp ogt double %_30.i.i.i, 4.045000e-02
  br i1 %_29.i.i.i, label %bb7.i.i.i, label %bb8.i.i.i

bb8.i.i.i:                                        ; preds = %bb6.i.i.i
  %_37.i.i.i = fdiv double %_30.i.i.i, 1.292000e+01
  br label %_ZN18contrast_ratio_lib3src3lib12cb_luminance17h38601cedc95d5c30E.exit.i.i

bb7.i.i.i:                                        ; preds = %bb6.i.i.i
  %_34.i.i.i = fadd double %_30.i.i.i, 5.500000e-02
  %self2.i.i.i = fdiv double %_34.i.i.i, 1.055000e+00
  %4 = tail call double @llvm.pow.f64(double %self2.i.i.i, double 2.400000e+00)
  br label %_ZN18contrast_ratio_lib3src3lib12cb_luminance17h38601cedc95d5c30E.exit.i.i

_ZN18contrast_ratio_lib3src3lib12cb_luminance17h38601cedc95d5c30E.exit.i.i: ; preds = %bb7.i.i.i, %bb8.i.i.i
  %_28.0.in.i.i.i = phi double [ %4, %bb7.i.i.i ], [ %_37.i.i.i, %bb8.i.i.i ]
  %_6.i1.i.i = fpext float %_12.i to double
  %_5.i2.i.i = fcmp ogt double %_6.i1.i.i, 4.045000e-02
  br i1 %_5.i2.i.i, label %bb1.i7.i.i, label %bb2.i4.i.i

bb2.i4.i.i:                                       ; preds = %_ZN18contrast_ratio_lib3src3lib12cb_luminance17h38601cedc95d5c30E.exit.i.i
  %_13.i3.i.i = fdiv double %_6.i1.i.i, 1.292000e+01
  br label %bb3.i11.i.i

bb1.i7.i.i:                                       ; preds = %_ZN18contrast_ratio_lib3src3lib12cb_luminance17h38601cedc95d5c30E.exit.i.i
  %_10.i5.i.i = fadd double %_6.i1.i.i, 5.500000e-02
  %self.i6.i.i = fdiv double %_10.i5.i.i, 1.055000e+00
  %5 = tail call double @llvm.pow.f64(double %self.i6.i.i, double 2.400000e+00)
  br label %bb3.i11.i.i

bb3.i11.i.i:                                      ; preds = %bb1.i7.i.i, %bb2.i4.i.i
  %_4.0.in.i8.i.i = phi double [ %5, %bb1.i7.i.i ], [ %_13.i3.i.i, %bb2.i4.i.i ]
  %_18.i9.i.i = fpext float %_15.i to double
  %_17.i10.i.i = fcmp ogt double %_18.i9.i.i, 4.045000e-02
  br i1 %_17.i10.i.i, label %bb4.i16.i.i, label %bb5.i13.i.i

bb5.i13.i.i:                                      ; preds = %bb3.i11.i.i
  %_25.i12.i.i = fdiv double %_18.i9.i.i, 1.292000e+01
  br label %bb6.i20.i.i

bb4.i16.i.i:                                      ; preds = %bb3.i11.i.i
  %_22.i14.i.i = fadd double %_18.i9.i.i, 5.500000e-02
  %self1.i15.i.i = fdiv double %_22.i14.i.i, 1.055000e+00
  %6 = tail call double @llvm.pow.f64(double %self1.i15.i.i, double 2.400000e+00)
  br label %bb6.i20.i.i

bb6.i20.i.i:                                      ; preds = %bb4.i16.i.i, %bb5.i13.i.i
  %_16.0.in.i17.i.i = phi double [ %6, %bb4.i16.i.i ], [ %_25.i12.i.i, %bb5.i13.i.i ]
  %_30.i18.i.i = fpext float %_18.i to double
  %_29.i19.i.i = fcmp ogt double %_30.i18.i.i, 4.045000e-02
  br i1 %_29.i19.i.i, label %bb7.i25.i.i, label %bb8.i22.i.i

bb8.i22.i.i:                                      ; preds = %bb6.i20.i.i
  %_37.i21.i.i = fdiv double %_30.i18.i.i, 1.292000e+01
  br label %_ZN18contrast_ratio_lib3src3lib14contrast_ratio17h9f325639c358056cE.exit

bb7.i25.i.i:                                      ; preds = %bb6.i20.i.i
  %_34.i23.i.i = fadd double %_30.i18.i.i, 5.500000e-02
  %self2.i24.i.i = fdiv double %_34.i23.i.i, 1.055000e+00
  %7 = tail call double @llvm.pow.f64(double %self2.i24.i.i, double 2.400000e+00)
  br label %_ZN18contrast_ratio_lib3src3lib14contrast_ratio17h9f325639c358056cE.exit

_ZN18contrast_ratio_lib3src3lib14contrast_ratio17h9f325639c358056cE.exit: ; preds = %bb7.i25.i.i, %bb8.i22.i.i
  %_28.0.in.i26.i.i = phi double [ %7, %bb7.i25.i.i ], [ %_37.i21.i.i, %bb8.i22.i.i ]
  %8 = insertelement <2 x double> poison, double %_16.0.in.i17.i.i, i64 0
  %9 = insertelement <2 x double> %8, double %_4.0.in.i.i.i, i64 1
  %10 = fptrunc <2 x double> %9 to <2 x float>
  %11 = insertelement <2 x double> poison, double %_4.0.in.i8.i.i, i64 0
  %12 = insertelement <2 x double> %11, double %_16.0.in.i.i.i, i64 1
  %13 = fptrunc <2 x double> %12 to <2 x float>
  %14 = insertelement <2 x double> poison, double %_28.0.in.i26.i.i, i64 0
  %15 = insertelement <2 x double> %14, double %_28.0.in.i.i.i, i64 1
  %16 = fptrunc <2 x double> %15 to <2 x float>
  %17 = fmul <2 x float> %13, <float 0x3FCB367A00000000, float 0x3FE6E2EB20000000>
  %18 = fmul <2 x float> %10, <float 0x3FE6E2EB20000000, float 0x3FCB367A00000000>
  %19 = fadd <2 x float> %18, %17
  %20 = fmul <2 x float> %16, splat (float 0x3FB27BB300000000)
  %21 = fadd <2 x float> %19, %20
  %22 = extractelement <2 x float> %21, i64 0
  %23 = extractelement <2 x float> %21, i64 1
  %_12.i.i = fcmp olt float %23, %22
  %24 = insertelement <2 x i1> poison, i1 %_12.i.i, i64 0
  %25 = shufflevector <2 x i1> %24, <2 x i1> poison, <2 x i32> zeroinitializer
  %26 = shufflevector <2 x float> %21, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %27 = select <2 x i1> %25, <2 x float> %21, <2 x float> %26
  %28 = extractelement <2 x float> %27, i64 0
  %29 = extractelement <2 x float> %27, i64 1
  %30 = fdiv float %28, %29
  ret float %30
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.pow.f64(double, double) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef zeroext i1 @run_test_1() unnamed_addr #2 {
start:
  ret i1 true
}

attributes #0 = { mustprogress nofree nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
