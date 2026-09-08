; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; ASSERT EQ: i1 1 = call i1 @run_test_1()
; ASSERT EQ: i1 1 = call i1 @run_test_2()
; ASSERT EQ: i1 1 = call i1 @run_test_3()
; ASSERT EQ: i1 1 = call i1 @run_test_4()
; ASSERT EQ: i1 1 = call i1 @run_test_5()

@alloc_f5ffd2fd1476bab43ad89fb40c72d0c5 = private unnamed_addr constant <{ [10 x i8] }> <{ [10 x i8] c"src/lib.rs" }>, align 1
@alloc_997240840395cfdfdb1b2627833fc97d = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\11\00\00\00\10\00\00\00" }>, align 8

@run_test_2 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_3 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_4 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_5 = unnamed_addr alias i1 (), ptr @run_test_1

; Function Attrs: nonlazybind uwtable
define void @normalize(ptr noundef writeonly %dest, ptr noundef readonly %src, i32 noundef %size) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %len = sext i32 %size to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5)
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %size, i32 0)
  %spec.select.i = zext i32 %narrow.i to i64
  %.0.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %spec.select.i, i64 %len)
  %_1420.not.i = icmp eq i64 %.0.sroa.speculated.i.i, 0
  br i1 %_1420.not.i, label %_ZN13normalize_lib3src3lib9normalize17hca67b863312228e9E.exit, label %bb2.preheader.i

bb2.preheader.i:                                  ; preds = %start
  %0 = add nsw i64 %.0.sroa.speculated.i.i, -1
  %.not.not.i = icmp ult i64 %0, %len
  br i1 %.not.not.i, label %bb2.i.preheader, label %panic.i, !prof !7

bb2.i.preheader:                                  ; preds = %bb2.preheader.i
  %xtraiter = and i64 %.0.sroa.speculated.i.i, 3
  %1 = icmp ult i64 %.0.sroa.speculated.i.i, 4
  br i1 %1, label %bb5.i.unr-lcssa, label %bb2.i.preheader.new

bb2.i.preheader.new:                              ; preds = %bb2.i.preheader
  %unroll_iter = and i64 %.0.sroa.speculated.i.i, 2147483644
  br label %bb2.i

bb5.i.unr-lcssa:                                  ; preds = %bb2.i, %bb2.i.preheader
  %.lcssa.ph = phi float [ undef, %bb2.i.preheader ], [ %15, %bb2.i ]
  %sum.022.i.unr = phi float [ 0.000000e+00, %bb2.i.preheader ], [ %15, %bb2.i ]
  %i.021.i.unr = phi i64 [ 0, %bb2.i.preheader ], [ %16, %bb2.i ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb5.i, label %bb2.i.epil

bb2.i.epil:                                       ; preds = %bb2.i.epil, %bb5.i.unr-lcssa
  %sum.022.i.epil = phi float [ %3, %bb2.i.epil ], [ %sum.022.i.unr, %bb5.i.unr-lcssa ]
  %i.021.i.epil = phi i64 [ %4, %bb2.i.epil ], [ %i.021.i.unr, %bb5.i.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb2.i.epil ], [ 0, %bb5.i.unr-lcssa ]
  %2 = getelementptr inbounds [0 x float], ptr %src, i64 0, i64 %i.021.i.epil
  %_18.i.epil = load float, ptr %2, align 4, !alias.scope !5, !noalias !2, !noundef !8
  %_17.i.epil = fmul float %_18.i.epil, %_18.i.epil
  %3 = fadd float %sum.022.i.epil, %_17.i.epil
  %4 = add nuw nsw i64 %i.021.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %bb5.i, label %bb2.i.epil, !llvm.loop !9

bb5.i:                                            ; preds = %bb2.i.epil, %bb5.i.unr-lcssa
  %.lcssa = phi float [ %.lcssa.ph, %bb5.i.unr-lcssa ], [ %3, %bb2.i.epil ]
  %_26.i = fcmp ogt float %.lcssa, 0.000000e+00
  br i1 %_26.i, label %bb9.preheader.i, label %bb7.i

bb2.i:                                            ; preds = %bb2.i, %bb2.i.preheader.new
  %sum.022.i = phi float [ 0.000000e+00, %bb2.i.preheader.new ], [ %15, %bb2.i ]
  %i.021.i = phi i64 [ 0, %bb2.i.preheader.new ], [ %16, %bb2.i ]
  %niter = phi i64 [ 0, %bb2.i.preheader.new ], [ %niter.next.3, %bb2.i ]
  %5 = getelementptr inbounds [0 x float], ptr %src, i64 0, i64 %i.021.i
  %_18.i = load float, ptr %5, align 4, !alias.scope !5, !noalias !2, !noundef !8
  %_17.i = fmul float %_18.i, %_18.i
  %6 = fadd float %sum.022.i, %_17.i
  %7 = or i64 %i.021.i, 1
  %8 = getelementptr inbounds [0 x float], ptr %src, i64 0, i64 %7
  %_18.i.1 = load float, ptr %8, align 4, !alias.scope !5, !noalias !2, !noundef !8
  %_17.i.1 = fmul float %_18.i.1, %_18.i.1
  %9 = fadd float %6, %_17.i.1
  %10 = or i64 %i.021.i, 2
  %11 = getelementptr inbounds [0 x float], ptr %src, i64 0, i64 %10
  %_18.i.2 = load float, ptr %11, align 4, !alias.scope !5, !noalias !2, !noundef !8
  %_17.i.2 = fmul float %_18.i.2, %_18.i.2
  %12 = fadd float %9, %_17.i.2
  %13 = or i64 %i.021.i, 3
  %14 = getelementptr inbounds [0 x float], ptr %src, i64 0, i64 %13
  %_18.i.3 = load float, ptr %14, align 4, !alias.scope !5, !noalias !2, !noundef !8
  %_17.i.3 = fmul float %_18.i.3, %_18.i.3
  %15 = fadd float %12, %_17.i.3
  %16 = add nuw nsw i64 %i.021.i, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %bb5.i.unr-lcssa, label %bb2.i

panic.i:                                          ; preds = %bb2.preheader.i
  tail call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 noundef %len, i64 noundef %len, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_997240840395cfdfdb1b2627833fc97d) #5, !noalias !11
  unreachable

bb7.i:                                            ; preds = %bb5.i
  %_43.not.i = icmp eq ptr %dest, %src
  br i1 %_43.not.i, label %_ZN13normalize_lib3src3lib9normalize17hca67b863312228e9E.exit, label %bb3.preheader.i.i.i

bb9.preheader.i:                                  ; preds = %bb5.i
  %17 = tail call float @llvm.sqrt.f32(float %.lcssa)
  %scale.i = fdiv float 1.000000e+00, %17
  %min.iters.check = icmp ult i64 %.0.sroa.speculated.i.i, 8
  br i1 %min.iters.check, label %bb11.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb9.preheader.i
  %n.vec = and i64 %.0.sroa.speculated.i.i, 2147483640
  %broadcast.splatinsert = insertelement <4 x float> poison, float %scale.i, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert3 = insertelement <4 x float> poison, float %scale.i, i64 0
  %broadcast.splat4 = shufflevector <4 x float> %broadcast.splatinsert3, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %18 = getelementptr inbounds [0 x float], ptr %src, i64 0, i64 %index
  %wide.load = load <4 x float>, ptr %18, align 4, !alias.scope !5, !noalias !2
  %19 = getelementptr inbounds float, ptr %18, i64 4
  %wide.load2 = load <4 x float>, ptr %19, align 4, !alias.scope !5, !noalias !2
  %20 = getelementptr inbounds [0 x float], ptr %dest, i64 0, i64 %index
  %21 = fmul <4 x float> %broadcast.splat, %wide.load
  %22 = fmul <4 x float> %broadcast.splat4, %wide.load2
  store <4 x float> %21, ptr %20, align 4, !alias.scope !2, !noalias !5
  %23 = getelementptr inbounds float, ptr %20, i64 4
  store <4 x float> %22, ptr %23, align 4, !alias.scope !2, !noalias !5
  %index.next = add nuw i64 %index, 8
  %24 = icmp eq i64 %index.next, %n.vec
  br i1 %24, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.0.sroa.speculated.i.i, %n.vec
  br i1 %cmp.n, label %_ZN13normalize_lib3src3lib9normalize17hca67b863312228e9E.exit, label %bb11.i.preheader

bb11.i.preheader:                                 ; preds = %middle.block, %bb9.preheader.i
  %i2.024.i.ph = phi i64 [ 0, %bb9.preheader.i ], [ %n.vec, %middle.block ]
  br label %bb11.i

bb11.i:                                           ; preds = %bb11.i, %bb11.i.preheader
  %i2.024.i = phi i64 [ %28, %bb11.i ], [ %i2.024.i.ph, %bb11.i.preheader ]
  %25 = getelementptr inbounds [0 x float], ptr %src, i64 0, i64 %i2.024.i
  %_35.i = load float, ptr %25, align 4, !alias.scope !5, !noalias !2, !noundef !8
  %26 = getelementptr inbounds [0 x float], ptr %dest, i64 0, i64 %i2.024.i
  %27 = fmul float %scale.i, %_35.i
  store float %27, ptr %26, align 4, !alias.scope !2, !noalias !5
  %28 = add nuw nsw i64 %i2.024.i, 1
  %exitcond30.not.i = icmp eq i64 %28, %.0.sroa.speculated.i.i
  br i1 %exitcond30.not.i, label %_ZN13normalize_lib3src3lib9normalize17hca67b863312228e9E.exit, label %bb11.i, !llvm.loop !15

bb3.preheader.i.i.i:                              ; preds = %bb7.i
  %29 = shl nuw nsw i64 %.0.sroa.speculated.i.i, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %dest, i8 0, i64 %29, i1 false), !alias.scope !16, !noalias !5
  br label %_ZN13normalize_lib3src3lib9normalize17hca67b863312228e9E.exit

_ZN13normalize_lib3src3lib9normalize17hca67b863312228e9E.exit: ; preds = %bb3.preheader.i.i.i, %bb11.i, %middle.block, %bb7.i, %start
  ret void
}

; Function Attrs: nonlazybind uwtable
declare noundef i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @run_test_1() unnamed_addr #0 personality ptr @rust_eh_personality {
normalize.exit:
  ret i1 true
}

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!3}
!3 = distinct !{!3, !4, !"_ZN13normalize_lib3src3lib9normalize17hca67b863312228e9E: %dest.0"}
!4 = distinct !{!4, !"_ZN13normalize_lib3src3lib9normalize17hca67b863312228e9E"}
!5 = !{!6}
!6 = distinct !{!6, !4, !"_ZN13normalize_lib3src3lib9normalize17hca67b863312228e9E: %src.0"}
!7 = !{!"branch_weights", i32 2000, i32 1}
!8 = !{}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = !{!3, !6}
!12 = distinct !{!12, !13, !14}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = distinct !{!15, !14, !13}
!16 = !{!17, !19, !3}
!17 = distinct !{!17, !18, !"_ZN74_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..specialize..SpecFill$LT$T$GT$$GT$9spec_fill17hf50173bf9952178bE: %self.0"}
!18 = distinct !{!18, !"_ZN74_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..specialize..SpecFill$LT$T$GT$$GT$9spec_fill17hf50173bf9952178bE"}
!19 = distinct !{!19, !20, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4fill17h428884f4ae8a1c58E: %self.0"}
!20 = distinct !{!20, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4fill17h428884f4ae8a1c58E"}
