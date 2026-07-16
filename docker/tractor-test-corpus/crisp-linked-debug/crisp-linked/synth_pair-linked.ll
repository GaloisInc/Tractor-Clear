; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@run_test_2 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_3 = unnamed_addr alias i1 (), ptr @run_test_1

; Function Attrs: nonlazybind uwtable
define void @synth_pair(ptr nocapture noundef writeonly %pcm, i32 noundef %nch, ptr nocapture noundef readonly %z) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %_13 = icmp sgt i32 %nch, -1
  br i1 %_13, label %bb9.i, label %bb6

bb9.i:                                            ; preds = %start
  %_14 = zext i32 %nch to i64
  %_12.0.i = shl nuw nsw i64 %_14, 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5)
  %0 = getelementptr inbounds [0 x float], ptr %z, i64 0, i64 896
  %1 = getelementptr inbounds [0 x float], ptr %z, i64 0, i64 64
  %_36.i = load float, ptr %1, align 4, !alias.scope !5, !noalias !2, !noundef !7
  %2 = getelementptr inbounds [0 x float], ptr %z, i64 0, i64 832
  %_40.i = load float, ptr %2, align 4, !alias.scope !5, !noalias !2, !noundef !7
  %_35.i = fadd float %_36.i, %_40.i
  %_34.i = fmul float %_35.i, 2.130000e+02
  %3 = getelementptr inbounds [0 x float], ptr %z, i64 0, i64 768
  %4 = getelementptr inbounds [0 x float], ptr %z, i64 0, i64 128
  %_26.i = load float, ptr %0, align 4, !alias.scope !5, !noalias !2, !noundef !7
  %_30.i = load float, ptr %z, align 4, !alias.scope !5, !noalias !2, !noundef !7
  %_46.i = load float, ptr %3, align 4, !alias.scope !5, !noalias !2, !noundef !7
  %_50.i = load float, ptr %4, align 4, !alias.scope !5, !noalias !2, !noundef !7
  %5 = insertelement <2 x float> poison, float %_26.i, i64 0
  %6 = insertelement <2 x float> %5, float %_46.i, i64 1
  %7 = insertelement <2 x float> poison, float %_30.i, i64 0
  %8 = insertelement <2 x float> %7, float %_50.i, i64 1
  %9 = fsub <2 x float> %6, %8
  %10 = fmul <2 x float> %9, <float 2.900000e+01, float 4.590000e+02>
  %11 = extractelement <2 x float> %10, i64 0
  %12 = fadd float %11, %_34.i
  %13 = extractelement <2 x float> %10, i64 1
  %14 = fadd float %12, %13
  %15 = getelementptr inbounds [0 x float], ptr %z, i64 0, i64 192
  %_56.i = load float, ptr %15, align 4, !alias.scope !5, !noalias !2, !noundef !7
  %16 = getelementptr inbounds [0 x float], ptr %z, i64 0, i64 704
  %_60.i = load float, ptr %16, align 4, !alias.scope !5, !noalias !2, !noundef !7
  %_55.i = fadd float %_56.i, %_60.i
  %_54.i = fmul float %_55.i, 2.037000e+03
  %17 = fadd float %14, %_54.i
  %18 = getelementptr inbounds [0 x float], ptr %z, i64 0, i64 640
  %_66.i = load float, ptr %18, align 4, !alias.scope !5, !noalias !2, !noundef !7
  %19 = getelementptr inbounds [0 x float], ptr %z, i64 0, i64 256
  %_70.i = load float, ptr %19, align 4, !alias.scope !5, !noalias !2, !noundef !7
  %_65.i = fsub float %_66.i, %_70.i
  %_64.i = fmul float %_65.i, 5.153000e+03
  %20 = fadd float %17, %_64.i
  %21 = getelementptr inbounds [0 x float], ptr %z, i64 0, i64 320
  %_76.i = load float, ptr %21, align 4, !alias.scope !5, !noalias !2, !noundef !7
  %22 = getelementptr inbounds [0 x float], ptr %z, i64 0, i64 576
  %_80.i = load float, ptr %22, align 4, !alias.scope !5, !noalias !2, !noundef !7
  %_75.i = fadd float %_76.i, %_80.i
  %_74.i = fmul float %_75.i, 6.574000e+03
  %23 = fadd float %20, %_74.i
  %24 = getelementptr inbounds [0 x float], ptr %z, i64 0, i64 512
  %_86.i = load float, ptr %24, align 4, !alias.scope !5, !noalias !2, !noundef !7
  %25 = getelementptr inbounds [0 x float], ptr %z, i64 0, i64 384
  %_90.i = load float, ptr %25, align 4, !alias.scope !5, !noalias !2, !noundef !7
  %_85.i = fsub float %_86.i, %_90.i
  %_84.i = fmul float %_85.i, 3.748900e+04
  %26 = fadd float %23, %_84.i
  %27 = getelementptr inbounds [0 x float], ptr %z, i64 0, i64 448
  %_95.i = load float, ptr %27, align 4, !alias.scope !5, !noalias !2, !noundef !7
  %_94.i = fmul float %_95.i, 7.503800e+04
  %28 = fadd float %_94.i, %26
  %_2.i.i = fcmp ult float %28, 3.276650e+04
  br i1 %_2.i.i, label %bb2.i.i, label %_ZN14synth_pair_lib3src3lib14mp3d_scale_pcm17hcf05668d1f8293e6E.exit.i

bb2.i.i:                                          ; preds = %bb9.i
  %_4.i.i = fcmp ugt float %28, -3.276750e+04
  br i1 %_4.i.i, label %bb4.i.i, label %_ZN14synth_pair_lib3src3lib14mp3d_scale_pcm17hcf05668d1f8293e6E.exit.i

bb4.i.i:                                          ; preds = %bb2.i.i
  %_7.i.i = fadd float %28, 5.000000e-01
  %29 = tail call i16 @llvm.fptosi.sat.i16.f32(float %_7.i.i)
  %.lobit.neg.i.i = ashr i16 %29, 15
  %_8.i.i = add i16 %.lobit.neg.i.i, %29
  br label %_ZN14synth_pair_lib3src3lib14mp3d_scale_pcm17hcf05668d1f8293e6E.exit.i

_ZN14synth_pair_lib3src3lib14mp3d_scale_pcm17hcf05668d1f8293e6E.exit.i: ; preds = %bb4.i.i, %bb2.i.i, %bb9.i
  %.0.i.i = phi i16 [ %_8.i.i, %bb4.i.i ], [ 32767, %bb9.i ], [ -32768, %bb2.i.i ]
  store i16 %.0.i.i, ptr %pcm, align 2, !alias.scope !2, !noalias !5
  %30 = getelementptr inbounds float, ptr %z, i64 2
  %31 = getelementptr inbounds float, ptr %z, i64 898
  %_107.i = load float, ptr %31, align 4, !alias.scope !5, !noalias !2, !noundef !7
  %32 = fmul float %_107.i, 1.040000e+02
  %33 = getelementptr inbounds float, ptr %z, i64 770
  %_112.i = load float, ptr %33, align 4, !alias.scope !5, !noalias !2, !noundef !7
  %_111.i = fmul float %_112.i, 1.567000e+03
  %34 = fadd float %32, %_111.i
  %35 = getelementptr inbounds float, ptr %z, i64 642
  %_117.i = load float, ptr %35, align 4, !alias.scope !5, !noalias !2, !noundef !7
  %_116.i = fmul float %_117.i, 9.727000e+03
  %36 = fadd float %34, %_116.i
  %37 = getelementptr inbounds float, ptr %z, i64 514
  %_122.i = load float, ptr %37, align 4, !alias.scope !5, !noalias !2, !noundef !7
  %_121.i = fmul float %_122.i, 6.401900e+04
  %38 = fadd float %36, %_121.i
  %39 = getelementptr inbounds float, ptr %z, i64 386
  %_127.i = load float, ptr %39, align 4, !alias.scope !5, !noalias !2, !noundef !7
  %_126.i = fmul float %_127.i, 9.975000e+03
  %40 = fsub float %38, %_126.i
  %41 = getelementptr inbounds float, ptr %z, i64 258
  %_132.i = load float, ptr %41, align 4, !alias.scope !5, !noalias !2, !noundef !7
  %_131.i = fmul float %_132.i, 4.500000e+01
  %42 = fsub float %40, %_131.i
  %43 = getelementptr inbounds float, ptr %z, i64 130
  %_137.i = load float, ptr %43, align 4, !alias.scope !5, !noalias !2, !noundef !7
  %_136.i = fmul float %_137.i, 1.460000e+02
  %44 = fadd float %42, %_136.i
  %_142.i = load float, ptr %30, align 4, !alias.scope !5, !noalias !2, !noundef !7
  %_141.i = fmul float %_142.i, 5.000000e+00
  %45 = fsub float %44, %_141.i
  %_2.i41.i = fcmp ult float %45, 3.276650e+04
  br i1 %_2.i41.i, label %bb2.i43.i, label %_ZN14synth_pair_lib3src3lib10synth_pair17hf970263df7f6c214E.exit

bb2.i43.i:                                        ; preds = %_ZN14synth_pair_lib3src3lib14mp3d_scale_pcm17hcf05668d1f8293e6E.exit.i
  %_4.i42.i = fcmp ugt float %45, -3.276750e+04
  br i1 %_4.i42.i, label %bb4.i48.i, label %_ZN14synth_pair_lib3src3lib10synth_pair17hf970263df7f6c214E.exit

bb4.i48.i:                                        ; preds = %bb2.i43.i
  %_7.i45.i = fadd float %45, 5.000000e-01
  %46 = tail call i16 @llvm.fptosi.sat.i16.f32(float %_7.i45.i)
  %.lobit.neg.i46.i = ashr i16 %46, 15
  %_8.i47.i = add i16 %.lobit.neg.i46.i, %46
  br label %_ZN14synth_pair_lib3src3lib10synth_pair17hf970263df7f6c214E.exit

_ZN14synth_pair_lib3src3lib10synth_pair17hf970263df7f6c214E.exit: ; preds = %bb4.i48.i, %bb2.i43.i, %_ZN14synth_pair_lib3src3lib14mp3d_scale_pcm17hcf05668d1f8293e6E.exit.i
  %.0.i44.i = phi i16 [ %_8.i47.i, %bb4.i48.i ], [ 32767, %_ZN14synth_pair_lib3src3lib14mp3d_scale_pcm17hcf05668d1f8293e6E.exit.i ], [ -32768, %bb2.i43.i ]
  %47 = getelementptr inbounds [0 x i16], ptr %pcm, i64 0, i64 %_12.0.i
  store i16 %.0.i44.i, ptr %47, align 2, !alias.scope !2, !noalias !5
  br label %bb6

bb6:                                              ; preds = %_ZN14synth_pair_lib3src3lib10synth_pair17hf970263df7f6c214E.exit, %start
  ret void
}

; Function Attrs: nonlazybind uwtable
declare noundef i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.fptosi.sat.i16.f32(float) #2

; Function Attrs: nofree nosync nounwind nonlazybind memory(inaccessiblemem: readwrite) uwtable
define noundef zeroext i1 @run_test_1() unnamed_addr #3 personality ptr @rust_eh_personality {
bb12:
  ret i1 true
}

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nofree nosync nounwind nonlazybind memory(inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!3}
!3 = distinct !{!3, !4, !"_ZN14synth_pair_lib3src3lib10synth_pair17hf970263df7f6c214E: %pcm.0"}
!4 = distinct !{!4, !"_ZN14synth_pair_lib3src3lib10synth_pair17hf970263df7f6c214E"}
!5 = !{!6}
!6 = distinct !{!6, !4, !"_ZN14synth_pair_lib3src3lib10synth_pair17hf970263df7f6c214E: %z.0"}
!7 = !{}
