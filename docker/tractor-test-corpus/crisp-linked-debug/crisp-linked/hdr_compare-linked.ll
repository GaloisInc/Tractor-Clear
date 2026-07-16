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

; Function Attrs: mustprogress nofree nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: read) uwtable
define noundef i32 @hdr_compare(ptr nocapture noundef readonly %h1, ptr nocapture noundef readonly %h2) unnamed_addr #0 {
start:
  %0 = getelementptr i8, ptr %h1, i64 1
  %h1.val = load i8, ptr %0, align 1, !noundef !2
  %1 = getelementptr i8, ptr %h1, i64 2
  %h1.val1 = load i8, ptr %1, align 1, !noundef !2
  %2 = getelementptr inbounds [0 x i8], ptr %h2, i64 0, i64 1
  %_19.i = load i8, ptr %2, align 1, !alias.scope !3, !noundef !2
  %3 = getelementptr inbounds [0 x i8], ptr %h2, i64 0, i64 2
  %_24.i = load i8, ptr %3, align 1, !alias.scope !3, !noundef !2
  %_5.i.i = load i8, ptr %h2, align 1, !alias.scope !6, !noundef !2
  %b2.i.i = zext i8 %_24.i to i32
  %4 = icmp eq i8 %_5.i.i, -1
  br i1 %4, label %bb16.i.i, label %_ZN15hdr_compare_lib3src3lib11hdr_compare17h2a348caae847ddd0E.exit

bb16.i.i:                                         ; preds = %start
  %b1.i.i = zext i8 %_19.i to i32
  %_24.i.i = and i32 %b1.i.i, 240
  %5 = icmp eq i32 %_24.i.i, 240
  %_26.i.i = and i32 %b1.i.i, 254
  %_25.i.i = icmp eq i32 %_26.i.i, 226
  %_23.0.i.i = or i1 %5, %_25.i.i
  %6 = and i32 %b1.i.i, 6
  %_27.i.i = icmp ne i32 %6, 0
  %or.cond.i.i = and i1 %_27.i.i, %_23.0.i.i
  %_31.mask.i.i = and i32 %b2.i.i, 240
  %_30.i.i = icmp ne i32 %_31.mask.i.i, 240
  %or.cond3.i.i = and i1 %_30.i.i, %or.cond.i.i
  br i1 %or.cond3.i.i, label %_ZN15hdr_compare_lib3src3lib9hdr_valid17h1ba17f1a7a261f93E.exit.i, label %_ZN15hdr_compare_lib3src3lib11hdr_compare17h2a348caae847ddd0E.exit

_ZN15hdr_compare_lib3src3lib9hdr_valid17h1ba17f1a7a261f93E.exit.i: ; preds = %bb16.i.i
  %7 = and i32 %b2.i.i, 12
  %_32.i.not.i = icmp eq i32 %7, 12
  %_344.i = xor i8 %_19.i, %h1.val
  %_32.i = icmp ugt i8 %_344.i, 1
  %brmerge.i = or i1 %_32.i, %_32.i.not.i
  br i1 %brmerge.i, label %_ZN15hdr_compare_lib3src3lib11hdr_compare17h2a348caae847ddd0E.exit, label %bb14.i

bb14.i:                                           ; preds = %_ZN15hdr_compare_lib3src3lib9hdr_valid17h1ba17f1a7a261f93E.exit.i
  %_376.i = xor i8 %_24.i, %h1.val1
  %8 = and i8 %_376.i, 12
  %_35.i = icmp eq i8 %8, 0
  br i1 %_35.i, label %bb11.i, label %_ZN15hdr_compare_lib3src3lib11hdr_compare17h2a348caae847ddd0E.exit

bb11.i:                                           ; preds = %bb14.i
  %_41.i = icmp ugt i8 %h1.val1, 15
  %_44.i = icmp ult i8 %_24.i, 16
  %9 = xor i1 %_41.i, %_44.i
  %10 = zext i1 %9 to i32
  br label %_ZN15hdr_compare_lib3src3lib11hdr_compare17h2a348caae847ddd0E.exit

_ZN15hdr_compare_lib3src3lib11hdr_compare17h2a348caae847ddd0E.exit: ; preds = %bb11.i, %bb14.i, %_ZN15hdr_compare_lib3src3lib9hdr_valid17h1ba17f1a7a261f93E.exit.i, %bb16.i.i, %start
  %_28.0.i = phi i32 [ %10, %bb11.i ], [ 0, %bb14.i ], [ 0, %_ZN15hdr_compare_lib3src3lib9hdr_valid17h1ba17f1a7a261f93E.exit.i ], [ 0, %start ], [ 0, %bb16.i.i ]
  ret i32 %_28.0.i
}

; Function Attrs: mustprogress nofree nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef zeroext i1 @run_test_1() unnamed_addr #1 {
hdr_compare.exit:
  ret i1 true
}

attributes #0 = { mustprogress nofree nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{}
!3 = !{!4}
!4 = distinct !{!4, !5, !"_ZN15hdr_compare_lib3src3lib11hdr_compare17h2a348caae847ddd0E: %h2.0"}
!5 = distinct !{!5, !"_ZN15hdr_compare_lib3src3lib11hdr_compare17h2a348caae847ddd0E"}
!6 = !{!7, !4}
!7 = distinct !{!7, !8, !"_ZN15hdr_compare_lib3src3lib9hdr_valid17h1ba17f1a7a261f93E: %h.0"}
!8 = distinct !{!8, !"_ZN15hdr_compare_lib3src3lib9hdr_valid17h1ba17f1a7a261f93E"}
