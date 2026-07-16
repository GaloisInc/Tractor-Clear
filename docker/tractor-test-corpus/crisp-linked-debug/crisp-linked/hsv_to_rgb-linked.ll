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
@run_test_67 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_68 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_69 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_70 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_71 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_72 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_73 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_74 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_75 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_76 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_77 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_78 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_79 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_80 = unnamed_addr alias i1 (), ptr @run_test_1

; Function Attrs: mustprogress nofree nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @hsv_to_rgb(ptr nocapture noundef writeonly %dest, ptr nocapture noundef readonly %src) unnamed_addr #0 {
start:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5)
  %0 = getelementptr inbounds [3 x float], ptr %src, i64 0, i64 1
  %s.i = load float, ptr %0, align 4, !alias.scope !5, !noalias !2, !noundef !7
  %1 = getelementptr inbounds [3 x float], ptr %src, i64 0, i64 2
  %v.i = load float, ptr %1, align 4, !alias.scope !5, !noalias !2, !noundef !7
  %_12.i = fcmp oeq float %s.i, 0.000000e+00
  br i1 %_12.i, label %_ZN14hsv_to_rgb_lib3src3lib10hsv_to_rgb17h397c8fd54fadbf91E.exit, label %bb2.i

bb2.i:                                            ; preds = %start
  %2 = load float, ptr %src, align 4, !alias.scope !5, !noalias !2, !noundef !7
  %3 = fdiv float %2, 6.000000e+01
  %4 = tail call float @llvm.floor.f32(float %3)
  %i.i = tail call i32 @llvm.fptosi.sat.i32.f32(float %4)
  %_21.i = sitofp i32 %i.i to float
  %f.i = fsub float %3, %_21.i
  %_23.i = fsub float 1.000000e+00, %s.i
  %p.i = fmul float %v.i, %_23.i
  %_26.i = fmul float %s.i, %f.i
  %_25.i = fsub float 1.000000e+00, %_26.i
  %q.i = fmul float %v.i, %_25.i
  %_30.i = fsub float 1.000000e+00, %f.i
  %_29.i = fmul float %s.i, %_30.i
  %_28.i = fsub float 1.000000e+00, %_29.i
  %t.i = fmul float %v.i, %_28.i
  switch i32 %i.i, label %_ZN14hsv_to_rgb_lib3src3lib10hsv_to_rgb17h397c8fd54fadbf91E.exit [
    i32 0, label %bb4.i
    i32 1, label %bb5.i
    i32 2, label %bb6.i
    i32 3, label %bb7.i
    i32 4, label %bb8.i
  ]

bb4.i:                                            ; preds = %bb2.i
  br label %_ZN14hsv_to_rgb_lib3src3lib10hsv_to_rgb17h397c8fd54fadbf91E.exit

bb5.i:                                            ; preds = %bb2.i
  br label %_ZN14hsv_to_rgb_lib3src3lib10hsv_to_rgb17h397c8fd54fadbf91E.exit

bb6.i:                                            ; preds = %bb2.i
  br label %_ZN14hsv_to_rgb_lib3src3lib10hsv_to_rgb17h397c8fd54fadbf91E.exit

bb7.i:                                            ; preds = %bb2.i
  br label %_ZN14hsv_to_rgb_lib3src3lib10hsv_to_rgb17h397c8fd54fadbf91E.exit

bb8.i:                                            ; preds = %bb2.i
  br label %_ZN14hsv_to_rgb_lib3src3lib10hsv_to_rgb17h397c8fd54fadbf91E.exit

_ZN14hsv_to_rgb_lib3src3lib10hsv_to_rgb17h397c8fd54fadbf91E.exit: ; preds = %bb8.i, %bb7.i, %bb6.i, %bb5.i, %bb4.i, %bb2.i, %start
  %r.0.sink.i = phi float [ %t.i, %bb8.i ], [ %p.i, %bb7.i ], [ %p.i, %bb6.i ], [ %q.i, %bb5.i ], [ %v.i, %bb4.i ], [ %v.i, %bb2.i ], [ %v.i, %start ]
  %g.0.sink.i = phi float [ %p.i, %bb8.i ], [ %q.i, %bb7.i ], [ %v.i, %bb6.i ], [ %v.i, %bb5.i ], [ %t.i, %bb4.i ], [ %p.i, %bb2.i ], [ %v.i, %start ]
  %b.0.sink.i = phi float [ %v.i, %bb8.i ], [ %v.i, %bb7.i ], [ %t.i, %bb6.i ], [ %p.i, %bb5.i ], [ %p.i, %bb4.i ], [ %q.i, %bb2.i ], [ %v.i, %start ]
  store float %r.0.sink.i, ptr %dest, align 4, !alias.scope !2, !noalias !5
  %5 = getelementptr inbounds [3 x float], ptr %dest, i64 0, i64 1
  store float %g.0.sink.i, ptr %5, align 4, !alias.scope !2, !noalias !5
  %6 = getelementptr inbounds [3 x float], ptr %dest, i64 0, i64 2
  store float %b.0.sink.i, ptr %6, align 4, !alias.scope !2, !noalias !5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fptosi.sat.i32.f32(float) #2

; Function Attrs: mustprogress nofree nosync nounwind nonlazybind willreturn memory(inaccessiblemem: readwrite) uwtable
define noundef zeroext i1 @run_test_1() unnamed_addr #3 {
hsv_to_rgb.exit:
  ret i1 true
}

attributes #0 = { mustprogress nofree nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree nosync nounwind nonlazybind willreturn memory(inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!3}
!3 = distinct !{!3, !4, !"_ZN14hsv_to_rgb_lib3src3lib10hsv_to_rgb17h397c8fd54fadbf91E: %dest"}
!4 = distinct !{!4, !"_ZN14hsv_to_rgb_lib3src3lib10hsv_to_rgb17h397c8fd54fadbf91E"}
!5 = !{!6}
!6 = distinct !{!6, !4, !"_ZN14hsv_to_rgb_lib3src3lib10hsv_to_rgb17h397c8fd54fadbf91E: %src"}
!7 = !{}
