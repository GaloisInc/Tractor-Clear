; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@run_test_2 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_3 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_4 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_5 = unnamed_addr alias i1 (), ptr @run_test_1

; Function Attrs: mustprogress nofree nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @rgb_to_hsv(ptr nocapture noundef writeonly %dest, ptr nocapture noundef readonly %src) unnamed_addr #0 {
start:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5)
  %r.i = load float, ptr %src, align 4, !alias.scope !5, !noalias !2, !noundef !7
  %0 = getelementptr inbounds [3 x float], ptr %src, i64 0, i64 1
  %g.i = load float, ptr %0, align 4, !alias.scope !5, !noalias !2, !noundef !7
  %1 = getelementptr inbounds [3 x float], ptr %src, i64 0, i64 2
  %b.i = load float, ptr %1, align 4, !alias.scope !5, !noalias !2, !noundef !7
  %_14.i = fcmp olt float %r.i, %g.i
  %r.g.i = select i1 %_14.i, float %r.i, float %g.i
  %_17.i = fcmp olt float %r.g.i, %b.i
  %_16.0.i = select i1 %_17.i, float %r.g.i, float %b.i
  %_20.i = fcmp ogt float %r.i, %g.i
  %_19.0.i = select i1 %_20.i, float %r.i, float %g.i
  %_23.i = fcmp ogt float %_19.0.i, %b.i
  %_22.0.i = select i1 %_23.i, float %_19.0.i, float %b.i
  %delta.i = fsub float %_22.0.i, %_16.0.i
  %_30.i = fcmp oeq float %delta.i, 0.000000e+00
  %_31.i = fcmp oeq float %_22.0.i, 0.000000e+00
  %_29.0.i = or i1 %_31.i, %_30.i
  br i1 %_29.0.i, label %_ZN14rgb_to_hsv_lib3src3lib10rgb_to_hsv17hb722cd3f27b30f94E.exit, label %bb17.i

bb17.i:                                           ; preds = %start
  %2 = fdiv float %delta.i, %_22.0.i
  %_39.i = fcmp oeq float %r.i, %_22.0.i
  br i1 %_39.i, label %bb18.i, label %bb19.i

bb19.i:                                           ; preds = %bb17.i
  %_42.i = fcmp oeq float %g.i, %_22.0.i
  br i1 %_42.i, label %bb20.i, label %bb21.i

bb18.i:                                           ; preds = %bb17.i
  %_41.i = fsub float %g.i, %b.i
  %3 = fdiv float %_41.i, %delta.i
  br label %bb23.i

bb23.i:                                           ; preds = %bb20.i, %bb21.i, %bb18.i
  %h.0.i = phi float [ %3, %bb18.i ], [ %7, %bb20.i ], [ %6, %bb21.i ]
  %4 = fmul float %h.0.i, 6.000000e+01
  %_48.i = fcmp olt float %4, 0.000000e+00
  %5 = fadd float %4, 3.600000e+02
  %h.1.i = select i1 %_48.i, float %5, float %4
  br label %_ZN14rgb_to_hsv_lib3src3lib10rgb_to_hsv17hb722cd3f27b30f94E.exit

bb21.i:                                           ; preds = %bb19.i
  %_47.i = fsub float %r.i, %g.i
  %_46.i = fdiv float %_47.i, %delta.i
  %6 = fadd float %_46.i, 4.000000e+00
  br label %bb23.i

bb20.i:                                           ; preds = %bb19.i
  %_45.i = fsub float %b.i, %r.i
  %_44.i = fdiv float %_45.i, %delta.i
  %7 = fadd float %_44.i, 2.000000e+00
  br label %bb23.i

_ZN14rgb_to_hsv_lib3src3lib10rgb_to_hsv17hb722cd3f27b30f94E.exit: ; preds = %bb23.i, %start
  %h.1.sink.i = phi float [ %h.1.i, %bb23.i ], [ 0.000000e+00, %start ]
  %.sink.i = phi float [ %2, %bb23.i ], [ 0.000000e+00, %start ]
  store float %h.1.sink.i, ptr %dest, align 4, !alias.scope !2, !noalias !5
  %8 = getelementptr inbounds [3 x float], ptr %dest, i64 0, i64 1
  store float %.sink.i, ptr %8, align 4, !alias.scope !2, !noalias !5
  %9 = getelementptr inbounds [3 x float], ptr %dest, i64 0, i64 2
  store float %_22.0.i, ptr %9, align 4, !alias.scope !2, !noalias !5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #1

; Function Attrs: mustprogress nofree nosync nounwind nonlazybind willreturn memory(inaccessiblemem: readwrite) uwtable
define noundef zeroext i1 @run_test_1() unnamed_addr #2 {
rgb_to_hsv.exit:
  ret i1 true
}

attributes #0 = { mustprogress nofree nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #2 = { mustprogress nofree nosync nounwind nonlazybind willreturn memory(inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!3}
!3 = distinct !{!3, !4, !"_ZN14rgb_to_hsv_lib3src3lib10rgb_to_hsv17hb722cd3f27b30f94E: %dest"}
!4 = distinct !{!4, !"_ZN14rgb_to_hsv_lib3src3lib10rgb_to_hsv17hb722cd3f27b30f94E"}
!5 = !{!6}
!6 = distinct !{!6, !4, !"_ZN14rgb_to_hsv_lib3src3lib10rgb_to_hsv17hb722cd3f27b30f94E: %src"}
!7 = !{}
