; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@alloc_f5ffd2fd1476bab43ad89fb40c72d0c5 = private unnamed_addr constant <{ [10 x i8] }> <{ [10 x i8] c"src/lib.rs" }>, align 1
@alloc_d1eb30dd2eed9b34a78a7c43254dd551 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\06\00\00\00\12\00\00\00" }>, align 8

@run_test_2 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_3 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_5 = unnamed_addr alias i1 (), ptr @run_test_1

; Function Attrs: nonlazybind uwtable
define void @tfm(ptr nocapture noundef writeonly %dest, ptr nocapture noundef readonly %src, i32 noundef %count) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %.0.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %count, i32 0)
  %count_usize = zext i32 %.0.sroa.speculated.i to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5)
  %.not.i = icmp slt i32 %count, 1
  br i1 %.not.i, label %_ZN7tfm_lib3src3lib3tfm17h8985c8c5ae6b1921E.exit, label %bb2.i26.i

bb2.i26.i:                                        ; preds = %bb19.i, %start
  %iter.sroa.0.043.i = phi i64 [ %0, %bb19.i ], [ 0, %start ]
  %0 = add nuw nsw i64 %iter.sroa.0.043.i, 1
  %_23.i = mul nuw nsw i64 %iter.sroa.0.043.i, 3
  %exitcond = icmp eq i64 %iter.sroa.0.043.i, %count_usize
  br i1 %exitcond, label %bb3.i.i, label %bb6.i

bb3.i.i:                                          ; preds = %bb2.i26.i
  %_24.i = add nuw nsw i64 %_23.i, 3
  %1 = mul nuw nsw i64 %count_usize, 3
  tail call void @_ZN4core5slice5index24slice_end_index_len_fail17h63e54c65524702d3E(i64 noundef %_24.i, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_d1eb30dd2eed9b34a78a7c43254dd551) #6, !noalias !7
  unreachable

bb6.i:                                            ; preds = %bb2.i26.i
  %_28.i = shl nuw i64 %iter.sroa.0.043.i, 1
  %2 = getelementptr inbounds float, ptr %src, i64 %_23.i
  %3 = getelementptr inbounds float, ptr %dest, i64 %_28.i
  %4 = load <2 x float>, ptr %2, align 4, !alias.scope !5, !noalias !2
  %5 = extractelement <2 x float> %4, i64 0
  %6 = extractelement <2 x float> %4, i64 1
  %_31.i = fcmp olt float %5, %6
  %7 = getelementptr inbounds [0 x float], ptr %2, i64 0, i64 2
  %dxy.i = load float, ptr %7, align 4, !alias.scope !5, !noalias !2
  br i1 %_31.i, label %bb12.i, label %bb18.i

bb12.i:                                           ; preds = %bb6.i
  %_63.i = fadd float %5, %6
  %8 = fmul <2 x float> %4, %4
  %_57.i = fmul float %5, 2.000000e+00
  %_56.i = fmul float %_57.i, %6
  %9 = extractelement <2 x float> %8, i64 1
  %_54.i = fsub float %9, %_56.i
  %10 = extractelement <2 x float> %8, i64 0
  %_53.i = fadd float %10, %_54.i
  %_60.i = fmul float %dxy.i, 4.000000e+00
  %_59.i = fmul float %dxy.i, %_60.i
  %sqd.i = fadd float %_53.i, %_59.i
  %11 = tail call float @llvm.maxnum.f32(float %sqd.i, float 0.000000e+00)
  %12 = tail call float @llvm.sqrt.f32(float %11)
  %_62.i = fadd float %_63.i, %12
  %lambda.i = fmul float %_62.i, 5.000000e-01
  %13 = fsub float %5, %lambda.i
  br label %bb19.i

bb19.i:                                           ; preds = %bb18.i, %bb12.i
  %dxy17.sink.i = phi float [ %13, %bb12.i ], [ %dxy.i, %bb18.i ]
  %.sink.i = phi float [ %dxy.i, %bb12.i ], [ %20, %bb18.i ]
  store float %dxy17.sink.i, ptr %3, align 4, !alias.scope !2, !noalias !5
  %14 = getelementptr inbounds [0 x float], ptr %3, i64 0, i64 1
  store float %.sink.i, ptr %14, align 4, !alias.scope !2, !noalias !5
  %exitcond.not.i = icmp eq i64 %0, %count_usize
  br i1 %exitcond.not.i, label %_ZN7tfm_lib3src3lib3tfm17h8985c8c5ae6b1921E.exit, label %bb2.i26.i

bb18.i:                                           ; preds = %bb6.i
  %_89.i = fmul float %6, 2.000000e+00
  %_88.i = fmul float %5, %_89.i
  %15 = fmul <2 x float> %4, %4
  %16 = extractelement <2 x float> %15, i64 0
  %_86.i = fsub float %16, %_88.i
  %17 = extractelement <2 x float> %15, i64 1
  %_85.i = fadd float %17, %_86.i
  %_92.i = fmul float %dxy.i, 4.000000e+00
  %_91.i = fmul float %dxy.i, %_92.i
  %sqd18.i = fadd float %_91.i, %_85.i
  %_95.i = fadd float %5, %6
  %18 = tail call float @llvm.maxnum.f32(float %sqd18.i, float 0.000000e+00)
  %19 = tail call float @llvm.sqrt.f32(float %18)
  %_94.i = fadd float %_95.i, %19
  %lambda20.i = fmul float %_94.i, 5.000000e-01
  %20 = fsub float %6, %lambda20.i
  br label %bb19.i

_ZN7tfm_lib3src3lib3tfm17h8985c8c5ae6b1921E.exit: ; preds = %bb19.i, %start
  ret void
}

; Function Attrs: nonlazybind uwtable
declare noundef i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice5index24slice_end_index_len_fail17h63e54c65524702d3E(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #1

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @run_test_1() unnamed_addr #0 personality ptr @rust_eh_personality {
bb19.i.i:
  ret i1 true
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @run_test_4() unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %dest = alloca [14 x float], align 4
  %src = alloca [21 x float], align 4
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %src)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(84) %src, i8 0, i64 84, i1 false)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %dest)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %dest, i8 0, i64 56, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13)
  br label %bb2.i26.i.i

bb2.i26.i.i:                                      ; preds = %bb19.i.i, %start
  %iter.sroa.0.043.i.i = phi i64 [ %0, %bb19.i.i ], [ 0, %start ]
  %0 = add nuw nsw i64 %iter.sroa.0.043.i.i, 1
  %_23.i.i = mul nuw nsw i64 %iter.sroa.0.043.i.i, 3
  %_28.i.i = shl nuw i64 %iter.sroa.0.043.i.i, 1
  %1 = getelementptr inbounds float, ptr %src, i64 %_23.i.i
  %2 = getelementptr inbounds float, ptr %dest, i64 %_28.i.i
  %3 = load <2 x float>, ptr %1, align 4, !alias.scope !13, !noalias !10
  %4 = extractelement <2 x float> %3, i64 0
  %5 = extractelement <2 x float> %3, i64 1
  %_31.i.i = fcmp olt float %4, %5
  %6 = getelementptr inbounds [0 x float], ptr %1, i64 0, i64 2
  %dxy.i.i = load float, ptr %6, align 4, !alias.scope !13, !noalias !10
  br i1 %_31.i.i, label %bb12.i.i, label %bb18.i.i

bb12.i.i:                                         ; preds = %bb2.i26.i.i
  %_63.i.i = fadd float %4, %5
  %7 = fmul <2 x float> %3, %3
  %_57.i.i = fmul float %4, 2.000000e+00
  %_56.i.i = fmul float %_57.i.i, %5
  %8 = extractelement <2 x float> %7, i64 1
  %_54.i.i = fsub float %8, %_56.i.i
  %9 = extractelement <2 x float> %7, i64 0
  %_53.i.i = fadd float %9, %_54.i.i
  %_60.i.i = fmul float %dxy.i.i, 4.000000e+00
  %_59.i.i = fmul float %dxy.i.i, %_60.i.i
  %sqd.i.i = fadd float %_53.i.i, %_59.i.i
  %10 = tail call float @llvm.maxnum.f32(float %sqd.i.i, float 0.000000e+00)
  %11 = tail call float @llvm.sqrt.f32(float %10)
  %_62.i.i = fadd float %_63.i.i, %11
  %lambda.i.i = fmul float %_62.i.i, 5.000000e-01
  %12 = fsub float %4, %lambda.i.i
  br label %bb19.i.i

bb19.i.i:                                         ; preds = %bb18.i.i, %bb12.i.i
  %dxy17.sink.i.i = phi float [ %12, %bb12.i.i ], [ %dxy.i.i, %bb18.i.i ]
  %.sink.i.i = phi float [ %dxy.i.i, %bb12.i.i ], [ %19, %bb18.i.i ]
  store float %dxy17.sink.i.i, ptr %2, align 4, !alias.scope !10, !noalias !13
  %13 = getelementptr inbounds [0 x float], ptr %2, i64 0, i64 1
  store float %.sink.i.i, ptr %13, align 4, !alias.scope !10, !noalias !13
  %exitcond.not.i.i = icmp eq i64 %0, 7
  br i1 %exitcond.not.i.i, label %tfm.exit, label %bb2.i26.i.i

bb18.i.i:                                         ; preds = %bb2.i26.i.i
  %_89.i.i = fmul float %5, 2.000000e+00
  %_88.i.i = fmul float %4, %_89.i.i
  %14 = fmul <2 x float> %3, %3
  %15 = extractelement <2 x float> %14, i64 0
  %_86.i.i = fsub float %15, %_88.i.i
  %16 = extractelement <2 x float> %14, i64 1
  %_85.i.i = fadd float %16, %_86.i.i
  %_92.i.i = fmul float %dxy.i.i, 4.000000e+00
  %_91.i.i = fmul float %dxy.i.i, %_92.i.i
  %sqd18.i.i = fadd float %_91.i.i, %_85.i.i
  %_95.i.i = fadd float %4, %5
  %17 = tail call float @llvm.maxnum.f32(float %sqd18.i.i, float 0.000000e+00)
  %18 = tail call float @llvm.sqrt.f32(float %17)
  %_94.i.i = fadd float %_95.i.i, %18
  %lambda20.i.i = fmul float %_94.i.i, 5.000000e-01
  %19 = fsub float %5, %lambda20.i.i
  br label %bb19.i.i

tfm.exit:                                         ; preds = %bb19.i.i
  %20 = load <8 x float>, ptr %dest, align 4
  %.fr = freeze <8 x float> %20
  %21 = fcmp une <8 x float> %.fr, zeroinitializer
  %22 = getelementptr inbounds [14 x float], ptr %dest, i64 0, i64 8
  %23 = load <4 x float>, ptr %22, align 4
  %.fr27 = freeze <4 x float> %23
  %24 = fcmp une <4 x float> %.fr27, zeroinitializer
  %25 = getelementptr inbounds [14 x float], ptr %dest, i64 0, i64 12
  %_16.12 = load float, ptr %25, align 4, !noundef !15
  %_15.12 = fcmp oeq float %_16.12, 0.000000e+00
  %26 = getelementptr inbounds [14 x float], ptr %dest, i64 0, i64 13
  %_16.13 = load float, ptr %26, align 4, !noundef !15
  %_15.13 = fcmp oeq float %_16.13, 0.000000e+00
  %27 = bitcast <8 x i1> %21 to i8
  %28 = icmp eq i8 %27, 0
  %29 = bitcast <4 x i1> %24 to i4
  %30 = icmp eq i4 %29, 0
  %op.rdx = and i1 %28, %30
  %op.rdx25 = and i1 %op.rdx, %_15.12
  %op.rdx26 = and i1 %op.rdx25, %_15.13
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %dest)
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %src)
  ret i1 %op.rdx26
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #3 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { noreturn }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!3}
!3 = distinct !{!3, !4, !"_ZN7tfm_lib3src3lib3tfm17h8985c8c5ae6b1921E: %dest.0"}
!4 = distinct !{!4, !"_ZN7tfm_lib3src3lib3tfm17h8985c8c5ae6b1921E"}
!5 = !{!6}
!6 = distinct !{!6, !4, !"_ZN7tfm_lib3src3lib3tfm17h8985c8c5ae6b1921E: %src.0"}
!7 = !{!8, !3, !6}
!8 = distinct !{!8, !9, !"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hb7310e96c5165744E: %slice.0"}
!9 = distinct !{!9, !"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hb7310e96c5165744E"}
!10 = !{!11}
!11 = distinct !{!11, !12, !"_ZN7tfm_lib3src3lib3tfm17h8985c8c5ae6b1921E: %dest.0"}
!12 = distinct !{!12, !"_ZN7tfm_lib3src3lib3tfm17h8985c8c5ae6b1921E"}
!13 = !{!14}
!14 = distinct !{!14, !12, !"_ZN7tfm_lib3src3lib3tfm17h8985c8c5ae6b1921E: %src.0"}
!15 = !{}
