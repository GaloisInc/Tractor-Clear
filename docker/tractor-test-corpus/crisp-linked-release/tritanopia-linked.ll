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
@run_test_4 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_5 = unnamed_addr alias i1 (), ptr @run_test_1

; Function Attrs: mustprogress nofree nosync nounwind nonlazybind willreturn memory(none) uwtable
define i24 @tritanopia(i24 %0) unnamed_addr #0 {
start:
  %.sroa.0.0.extract.trunc.i.i = trunc i24 %0 to i8
  %.sroa.4.0.extract.shift.i.i = lshr i24 %0, 8
  %.sroa.4.0.extract.trunc.i.i = trunc i24 %.sroa.4.0.extract.shift.i.i to i8
  %.sroa.5.0.extract.shift.i.i = lshr i24 %0, 16
  %.sroa.5.0.extract.trunc.i.i = trunc i24 %.sroa.5.0.extract.shift.i.i to i8
  %_3.i.i = uitofp i8 %.sroa.0.0.extract.trunc.i.i to float
  %_2.i.i = fdiv float %_3.i.i, 2.550000e+02
  %_6.i.i = uitofp i8 %.sroa.4.0.extract.trunc.i.i to float
  %_5.i.i = fdiv float %_6.i.i, 2.550000e+02
  %_9.i.i = uitofp i8 %.sroa.5.0.extract.trunc.i.i to float
  %_8.i.i = fdiv float %_9.i.i, 2.550000e+02
  %_4.i.i = fpext float %_2.i.i to double
  %_3.i3.i = fcmp ogt double %_4.i.i, 4.045000e-02
  br i1 %_3.i3.i, label %bb1.i.i, label %bb2.i.i

bb2.i.i:                                          ; preds = %start
  %_11.i.i = fdiv double %_4.i.i, 1.292000e+01
  br label %bb3.i.i

bb1.i.i:                                          ; preds = %start
  %_8.i4.i = fadd double %_4.i.i, 5.500000e-02
  %self.i.i = fdiv double %_8.i4.i, 1.055000e+00
  %1 = tail call double @llvm.pow.f64(double %self.i.i, double 2.400000e+00)
  br label %bb3.i.i

bb3.i.i:                                          ; preds = %bb1.i.i, %bb2.i.i
  %_2.0.in.i.i = phi double [ %1, %bb1.i.i ], [ %_11.i.i, %bb2.i.i ]
  %_16.i.i = fpext float %_5.i.i to double
  %_15.i.i = fcmp ogt double %_16.i.i, 4.045000e-02
  br i1 %_15.i.i, label %bb4.i.i, label %bb5.i.i

bb5.i.i:                                          ; preds = %bb3.i.i
  %_23.i.i = fdiv double %_16.i.i, 1.292000e+01
  br label %bb6.i.i

bb4.i.i:                                          ; preds = %bb3.i.i
  %_20.i.i = fadd double %_16.i.i, 5.500000e-02
  %self1.i.i = fdiv double %_20.i.i, 1.055000e+00
  %2 = tail call double @llvm.pow.f64(double %self1.i.i, double 2.400000e+00)
  br label %bb6.i.i

bb6.i.i:                                          ; preds = %bb4.i.i, %bb5.i.i
  %_14.0.in.i.i = phi double [ %2, %bb4.i.i ], [ %_23.i.i, %bb5.i.i ]
  %_28.i.i = fpext float %_8.i.i to double
  %_27.i.i = fcmp ogt double %_28.i.i, 4.045000e-02
  br i1 %_27.i.i, label %bb7.i.i, label %bb8.i.i

bb8.i.i:                                          ; preds = %bb6.i.i
  %_35.i.i = fdiv double %_28.i.i, 1.292000e+01
  br label %_ZN14tritanopia_lib3src3lib19cb_remove_gamma_rgb17h5e5aabf1c93eb033E.exit.i

bb7.i.i:                                          ; preds = %bb6.i.i
  %_32.i.i = fadd double %_28.i.i, 5.500000e-02
  %self2.i.i = fdiv double %_32.i.i, 1.055000e+00
  %3 = tail call double @llvm.pow.f64(double %self2.i.i, double 2.400000e+00)
  br label %_ZN14tritanopia_lib3src3lib19cb_remove_gamma_rgb17h5e5aabf1c93eb033E.exit.i

_ZN14tritanopia_lib3src3lib19cb_remove_gamma_rgb17h5e5aabf1c93eb033E.exit.i: ; preds = %bb7.i.i, %bb8.i.i
  %_26.0.in.i.i = phi double [ %3, %bb7.i.i ], [ %_35.i.i, %bb8.i.i ]
  %_26.0.i.i = fptrunc double %_26.0.in.i.i to float
  %_14.0.i.i = fptrunc double %_14.0.in.i.i to float
  %_2.0.i.i = fptrunc double %_2.0.in.i.i to float
  %_8.i5.i = fmul float %_14.0.i.i, 0x3FC04E9B20000000
  %_7.i.i = fadd float %_8.i5.i, %_2.0.i.i
  %_9.i6.i = fmul float %_26.0.i.i, 0x3FC04E9B20000000
  %4 = fsub float %_7.i.i, %_9.i6.i
  %_11.i7.i = fmul float %_2.0.i.i, 0x3DC8A97BE0000000
  %_12.i.i = fmul float %_14.0.i.i, 0x3FEBF710A0000000
  %5 = fsub float %_12.i.i, %_11.i7.i
  %_13.i.i = fmul float %_26.0.i.i, 0x3FC023BD80000000
  %6 = fadd float %5, %_13.i.i
  %_15.i8.i = fmul float %_2.0.i.i, 0x3DF5617500000000
  %_14.i.i = fadd float %_15.i8.i, %_12.i.i
  %7 = fadd float %_14.i.i, %_13.i.i
  %_4.i10.i = fpext float %4 to double
  %_3.i11.i = fcmp ogt double %_4.i10.i, 0x3F69A5C61C57A062
  br i1 %_3.i11.i, label %bb1.i16.i, label %bb2.i13.i

bb2.i13.i:                                        ; preds = %_ZN14tritanopia_lib3src3lib19cb_remove_gamma_rgb17h5e5aabf1c93eb033E.exit.i
  %_11.i12.i = fmul double %_4.i10.i, 1.292000e+01
  br label %bb3.i21.i

bb1.i16.i:                                        ; preds = %_ZN14tritanopia_lib3src3lib19cb_remove_gamma_rgb17h5e5aabf1c93eb033E.exit.i
  %8 = tail call double @llvm.pow.f64(double %_4.i10.i, double 0x3FDAAAAAAA98576B)
  %_7.i14.i = fmul double %8, 1.055000e+00
  %_6.i15.i = fadd double %_7.i14.i, -5.500000e-02
  br label %bb3.i21.i

bb3.i21.i:                                        ; preds = %bb1.i16.i, %bb2.i13.i
  %_2.0.in.i17.i = phi double [ %_6.i15.i, %bb1.i16.i ], [ %_11.i12.i, %bb2.i13.i ]
  %_16.i19.i = fpext float %6 to double
  %_15.i20.i = fcmp ogt double %_16.i19.i, 0x3F69A5C61C57A062
  br i1 %_15.i20.i, label %bb4.i24.i, label %bb5.i23.i

bb5.i23.i:                                        ; preds = %bb3.i21.i
  %_23.i22.i = fmul double %_16.i19.i, 1.292000e+01
  br label %bb6.i29.i

bb4.i24.i:                                        ; preds = %bb3.i21.i
  %9 = tail call double @llvm.pow.f64(double %_16.i19.i, double 0x3FDAAAAAAA98576B)
  %_19.i.i = fmul double %9, 1.055000e+00
  %_18.i.i = fadd double %_19.i.i, -5.500000e-02
  br label %bb6.i29.i

bb6.i29.i:                                        ; preds = %bb4.i24.i, %bb5.i23.i
  %_14.0.in.i25.i = phi double [ %_18.i.i, %bb4.i24.i ], [ %_23.i22.i, %bb5.i23.i ]
  %_28.i27.i = fpext float %7 to double
  %_27.i28.i = fcmp ogt double %_28.i27.i, 0x3F69A5C61C57A062
  br i1 %_27.i28.i, label %bb7.i32.i, label %bb8.i31.i

bb8.i31.i:                                        ; preds = %bb6.i29.i
  %_35.i30.i = fmul double %_28.i27.i, 1.292000e+01
  br label %_ZN14tritanopia_lib3src3lib10tritanopia17h676ec69d993f7aa6E.exit

bb7.i32.i:                                        ; preds = %bb6.i29.i
  %10 = tail call double @llvm.pow.f64(double %_28.i27.i, double 0x3FDAAAAAAA98576B)
  %_31.i.i = fmul double %10, 1.055000e+00
  %_30.i.i = fadd double %_31.i.i, -5.500000e-02
  br label %_ZN14tritanopia_lib3src3lib10tritanopia17h676ec69d993f7aa6E.exit

_ZN14tritanopia_lib3src3lib10tritanopia17h676ec69d993f7aa6E.exit: ; preds = %bb7.i32.i, %bb8.i31.i
  %_26.0.in.i33.i = phi double [ %_30.i.i, %bb7.i32.i ], [ %_35.i30.i, %bb8.i31.i ]
  %11 = insertelement <2 x double> poison, double %_26.0.in.i33.i, i64 0
  %12 = insertelement <2 x double> %11, double %_14.0.in.i25.i, i64 1
  %13 = fptrunc <2 x double> %12 to <2 x float>
  %_2.0.i36.i = fptrunc double %_2.0.in.i17.i to float
  %_4.i38.i = fmul float %_2.0.i36.i, 2.550000e+02
  %_3.i39.i = fadd float %_4.i38.i, 5.000000e-01
  %_2.i40.i = tail call i8 @llvm.fptoui.sat.i8.f32(float %_3.i39.i)
  %14 = fmul <2 x float> %13, splat (float 2.550000e+02)
  %15 = fadd <2 x float> %14, splat (float 5.000000e-01)
  %16 = tail call <2 x i8> @llvm.fptoui.sat.v2i8.v2f32(<2 x float> %15)
  %17 = zext <2 x i8> %16 to <2 x i24>
  %18 = shl nuw <2 x i24> %17, <i24 16, i24 8>
  %shift = shufflevector <2 x i24> %18, <2 x i24> poison, <2 x i32> <i32 1, i32 poison>
  %19 = or <2 x i24> %18, %shift
  %.sroa.2.0.insert.insert.i.i = extractelement <2 x i24> %19, i64 0
  %.sroa.0.0.insert.ext.i.i = zext i8 %_2.i40.i to i24
  %.sroa.0.0.insert.insert.i.i = or i24 %.sroa.2.0.insert.insert.i.i, %.sroa.0.0.insert.ext.i.i
  ret i24 %.sroa.0.0.insert.insert.i.i
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.pow.f64(double, double) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fptoui.sat.i8.f32(float) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i8> @llvm.fptoui.sat.v2i8.v2f32(<2 x float>) #1

; Function Attrs: mustprogress nofree nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef zeroext i1 @run_test_1() unnamed_addr #0 {
tritanopia.exit:
  ret i1 true
}

; Function Attrs: mustprogress nofree nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef zeroext i1 @run_test_3() unnamed_addr #0 {
tritanopia.exit:
  ret i1 false
}

attributes #0 = { mustprogress nofree nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
