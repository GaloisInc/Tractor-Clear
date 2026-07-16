; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@run_test_2 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_3 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_4 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_5 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_6 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_7 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_8 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_9 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_10 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_11 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_12 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_13 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_14 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_15 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_16 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_17 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_18 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_19 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_20 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_21 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_22 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_23 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_24 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_25 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_26 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_27 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_28 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_29 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_30 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_31 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_32 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_33 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_34 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_35 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_36 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_37 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_38 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_39 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_40 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_41 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_42 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_43 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_44 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_45 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_46 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_47 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_48 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_49 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_50 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_51 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_52 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_53 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_54 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_55 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_56 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_57 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_58 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_59 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_60 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_61 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_62 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_63 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_64 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_65 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_66 = unnamed_addr alias i1 (), ptr @run_test_1

; Function Attrs: mustprogress nofree nounwind nonlazybind willreturn memory(write, argmem: readwrite) uwtable
define void @hsl_to_rgb(ptr nocapture noundef writeonly %dest, ptr nocapture noundef readonly %src) unnamed_addr #0 {
start:
  %h.i = load float, ptr %src, align 4, !noundef !2
  %0 = getelementptr inbounds float, ptr %src, i64 1
  %s.i = load float, ptr %0, align 4, !noundef !2
  %1 = getelementptr inbounds float, ptr %src, i64 2
  %l.i = load float, ptr %1, align 4, !noundef !2
  %_15.i = fcmp oeq float %s.i, 0.000000e+00
  br i1 %_15.i, label %bb1.i, label %bb2.i

bb2.i:                                            ; preds = %start
  %_26.i = fmul float %l.i, 2.000000e+00
  %_25.i = fadd float %_26.i, -1.000000e+00
  %_24.i = tail call float @llvm.fabs.f32(float %_25.i)
  %_23.i = fsub float 1.000000e+00, %_24.i
  %_35.i = fdiv float %h.i, 6.000000e+01
  %_34.i = tail call noundef float @fmodf(float noundef %_35.i, float noundef 2.000000e+00)
  %_33.i = fadd float %_34.i, -1.000000e+00
  %_32.i = tail call float @llvm.fabs.f32(float %_33.i)
  %_31.i = fsub float 1.000000e+00, %_32.i
  %c.i = fmul float %s.i, %_23.i
  %_28.i = fmul float %c.i, 5.000000e-01
  %_27.i = fsub float %l.i, %_28.i
  %x.i = fmul float %c.i, %_31.i
  %_38.i = fcmp oge float %h.i, 0.000000e+00
  %_39.i = fcmp olt float %h.i, 6.000000e+01
  %_37.0.i = and i1 %_38.i, %_39.i
  br i1 %_37.0.i, label %bb9.i, label %bb10.i

bb1.i:                                            ; preds = %start
  store float %l.i, ptr %dest, align 4
  %2 = getelementptr inbounds float, ptr %dest, i64 1
  store float %l.i, ptr %2, align 4
  %3 = getelementptr inbounds float, ptr %dest, i64 2
  store float %l.i, ptr %3, align 4
  br label %_ZN14hsl_to_rgb_lib3src3lib10hsl_to_rgb17h9ae6da5d38dfbcecE.exit

bb10.i:                                           ; preds = %bb2.i
  %_52.i = fcmp oge float %h.i, 6.000000e+01
  %_53.i = fcmp olt float %h.i, 1.200000e+02
  %_51.0.i = and i1 %_52.i, %_53.i
  br i1 %_51.0.i, label %bb14.i, label %bb15.i

bb9.i:                                            ; preds = %bb2.i
  %4 = fadd float %c.i, %_27.i
  store float %4, ptr %dest, align 4
  %5 = getelementptr inbounds float, ptr %dest, i64 1
  %6 = fadd float %_27.i, %x.i
  store float %6, ptr %5, align 4
  %7 = getelementptr inbounds float, ptr %dest, i64 2
  store float %_27.i, ptr %7, align 4
  br label %_ZN14hsl_to_rgb_lib3src3lib10hsl_to_rgb17h9ae6da5d38dfbcecE.exit

bb15.i:                                           ; preds = %bb10.i
  %_67.i = fcmp olt float %h.i, 1.800000e+02
  %_65.0.i = and i1 %_53.i, %_67.i
  br i1 %_65.0.i, label %bb19.i, label %bb20.i

bb14.i:                                           ; preds = %bb10.i
  %8 = insertelement <2 x float> poison, float %_27.i, i64 0
  %9 = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> zeroinitializer
  %10 = insertelement <2 x float> poison, float %x.i, i64 0
  %11 = insertelement <2 x float> %10, float %c.i, i64 1
  %12 = fadd <2 x float> %9, %11
  store <2 x float> %12, ptr %dest, align 4
  %13 = getelementptr inbounds float, ptr %dest, i64 2
  store float %_27.i, ptr %13, align 4
  br label %_ZN14hsl_to_rgb_lib3src3lib10hsl_to_rgb17h9ae6da5d38dfbcecE.exit

bb20.i:                                           ; preds = %bb15.i
  %_80.i = fcmp oge float %h.i, 1.800000e+02
  %_81.i = fcmp olt float %h.i, 2.400000e+02
  %_79.0.i = and i1 %_80.i, %_81.i
  br i1 %_79.0.i, label %bb24.i, label %bb25.i

bb19.i:                                           ; preds = %bb15.i
  store float %_27.i, ptr %dest, align 4
  %14 = getelementptr inbounds float, ptr %dest, i64 1
  %15 = fadd float %c.i, %_27.i
  store float %15, ptr %14, align 4
  %16 = getelementptr inbounds float, ptr %dest, i64 2
  %17 = fadd float %_27.i, %x.i
  store float %17, ptr %16, align 4
  br label %_ZN14hsl_to_rgb_lib3src3lib10hsl_to_rgb17h9ae6da5d38dfbcecE.exit

bb25.i:                                           ; preds = %bb20.i
  %_94.i = fcmp oge float %h.i, 2.400000e+02
  %_95.i = fcmp olt float %h.i, 3.000000e+02
  %_93.0.i = and i1 %_94.i, %_95.i
  br i1 %_93.0.i, label %bb29.i, label %bb30.i

bb24.i:                                           ; preds = %bb20.i
  store float %_27.i, ptr %dest, align 4
  %18 = getelementptr inbounds float, ptr %dest, i64 1
  %19 = insertelement <2 x float> poison, float %_27.i, i64 0
  %20 = shufflevector <2 x float> %19, <2 x float> poison, <2 x i32> zeroinitializer
  %21 = insertelement <2 x float> poison, float %x.i, i64 0
  %22 = insertelement <2 x float> %21, float %c.i, i64 1
  %23 = fadd <2 x float> %20, %22
  store <2 x float> %23, ptr %18, align 4
  br label %_ZN14hsl_to_rgb_lib3src3lib10hsl_to_rgb17h9ae6da5d38dfbcecE.exit

bb30.i:                                           ; preds = %bb25.i
  %_108.i = fcmp oge float %h.i, 3.000000e+02
  %_109.i = fcmp olt float %h.i, 3.600000e+02
  %_107.0.i = and i1 %_108.i, %_109.i
  br i1 %_107.0.i, label %bb34.i, label %bb35.i

bb29.i:                                           ; preds = %bb25.i
  %24 = fadd float %_27.i, %x.i
  store float %24, ptr %dest, align 4
  %25 = getelementptr inbounds float, ptr %dest, i64 1
  store float %_27.i, ptr %25, align 4
  %26 = getelementptr inbounds float, ptr %dest, i64 2
  %27 = fadd float %c.i, %_27.i
  store float %27, ptr %26, align 4
  br label %_ZN14hsl_to_rgb_lib3src3lib10hsl_to_rgb17h9ae6da5d38dfbcecE.exit

bb35.i:                                           ; preds = %bb30.i
  store float %_27.i, ptr %dest, align 4
  %28 = getelementptr inbounds float, ptr %dest, i64 1
  store float %_27.i, ptr %28, align 4
  %29 = getelementptr inbounds float, ptr %dest, i64 2
  store float %_27.i, ptr %29, align 4
  br label %_ZN14hsl_to_rgb_lib3src3lib10hsl_to_rgb17h9ae6da5d38dfbcecE.exit

bb34.i:                                           ; preds = %bb30.i
  %30 = fadd float %c.i, %_27.i
  store float %30, ptr %dest, align 4
  %31 = getelementptr inbounds float, ptr %dest, i64 1
  store float %_27.i, ptr %31, align 4
  %32 = getelementptr inbounds float, ptr %dest, i64 2
  %33 = fadd float %_27.i, %x.i
  store float %33, ptr %32, align 4
  br label %_ZN14hsl_to_rgb_lib3src3lib10hsl_to_rgb17h9ae6da5d38dfbcecE.exit

_ZN14hsl_to_rgb_lib3src3lib10hsl_to_rgb17h9ae6da5d38dfbcecE.exit: ; preds = %bb34.i, %bb35.i, %bb29.i, %bb24.i, %bb19.i, %bb14.i, %bb9.i, %bb1.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #1

; Function Attrs: mustprogress nofree nounwind nonlazybind willreturn memory(write) uwtable
declare noundef float @fmodf(float noundef, float noundef) unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind nonlazybind willreturn memory(write) uwtable
define noundef zeroext i1 @run_test_1() unnamed_addr #2 {
hsl_to_rgb.exit:
  ret i1 true
}

attributes #0 = { mustprogress nofree nounwind nonlazybind willreturn memory(write, argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nofree nounwind nonlazybind willreturn memory(write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{}
