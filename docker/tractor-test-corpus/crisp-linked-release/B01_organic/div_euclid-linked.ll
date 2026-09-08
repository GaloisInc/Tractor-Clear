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
; ASSERT EQ: i1 1 = call i1 @run_test_9()
; ASSERT EQ: i1 1 = call i1 @run_test_10()

@run_test_2 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_3 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_4 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_5 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_6 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_7 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_8 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_9 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_10 = unnamed_addr alias i1 (), ptr @run_test_1

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef i32 @div_euclid(i32 noundef %v1, i32 noundef %v2) unnamed_addr #0 {
start:
  %0 = icmp eq i32 %v2, 0
  br i1 %0, label %_ZN14div_euclid_lib3src3lib10div_euclid17hccd5ee5ac3005d7dE.exit, label %bb2.i

bb2.i:                                            ; preds = %start
  %_6.i = icmp sgt i32 %v1, -1
  br i1 %_6.i, label %bb3.i, label %bb4.i

bb4.i:                                            ; preds = %bb2.i
  %_24.not.i = icmp eq i32 %v1, -2147483648
  %_54.i = icmp sgt i32 %v2, -1
  br i1 %_24.not.i, label %bb17.i, label %bb16.i

bb3.i:                                            ; preds = %bb2.i
  %_7.i = icmp sgt i32 %v2, -1
  br i1 %_7.i, label %bb7.i, label %bb8.i

bb8.i:                                            ; preds = %bb3.i
  %_12.not.i = icmp eq i32 %v2, -2147483648
  br i1 %_12.not.i, label %_ZN14div_euclid_lib3src3lib10div_euclid17hccd5ee5ac3005d7dE.exit, label %bb9.i

bb7.i:                                            ; preds = %bb3.i
  %1 = udiv i32 %v1, %v2
  br label %_ZN14div_euclid_lib3src3lib10div_euclid17hccd5ee5ac3005d7dE.exit

bb9.i:                                            ; preds = %bb8.i
  %_14.i = sub nsw i32 0, %v2
  %_13.i = udiv i32 %v1, %_14.i
  %2 = sub nsw i32 0, %_13.i
  br label %_ZN14div_euclid_lib3src3lib10div_euclid17hccd5ee5ac3005d7dE.exit

bb47.i:                                           ; preds = %bb38.i, %bb32.i, %bb24.i, %bb18.i
  %_32.pn.i = phi i32 [ %_32.i, %bb18.i ], [ %_45.i, %bb24.i ], [ %_63.i, %bb32.i ], [ %_79.i, %bb38.i ]
  %q.0.i = phi i32 [ %3, %bb18.i ], [ %4, %bb24.i ], [ %6, %bb32.i ], [ %7, %bb38.i ]
  %_87.not.i = icmp eq i32 %_32.pn.i, 0
  br i1 %_87.not.i, label %_ZN14div_euclid_lib3src3lib10div_euclid17hccd5ee5ac3005d7dE.exit, label %bb48.i

bb17.i:                                           ; preds = %bb4.i
  br i1 %_54.i, label %bb32.i, label %bb33.i

bb16.i:                                           ; preds = %bb4.i
  br i1 %_54.i, label %bb18.i, label %bb23.i

bb23.i:                                           ; preds = %bb16.i
  %_38.not.i = icmp eq i32 %v2, -2147483648
  br i1 %_38.not.i, label %_ZN14div_euclid_lib3src3lib10div_euclid17hccd5ee5ac3005d7dE.exit, label %bb24.i

bb18.i:                                           ; preds = %bb16.i
  %_27.i = sub nsw i32 0, %v1
  %_26.i = udiv i32 %_27.i, %v2
  %3 = sub nsw i32 0, %_26.i
  %_32.i = urem i32 %_27.i, %v2
  br label %bb47.i

bb24.i:                                           ; preds = %bb23.i
  %_39.i = sub nsw i32 0, %v1
  %_40.i = sub nsw i32 0, %v2
  %4 = udiv i32 %_39.i, %_40.i
  %_45.i = urem i32 %_39.i, %_40.i
  br label %bb47.i

bb33.i:                                           ; preds = %bb17.i
  %_70.not.i = icmp eq i32 %v2, -2147483648
  br i1 %_70.not.i, label %_ZN14div_euclid_lib3src3lib10div_euclid17hccd5ee5ac3005d7dE.exit, label %bb38.i

bb32.i:                                           ; preds = %bb17.i
  %5 = xor i32 %v2, 2147483647
  %_58.neg.i = add nuw i32 %5, 1
  %_56.i = udiv i32 %_58.neg.i, %v2
  %6 = xor i32 %_56.i, -1
  %_63.i = urem i32 %_58.neg.i, %v2
  br label %bb47.i

bb38.i:                                           ; preds = %bb33.i
  %_73.neg.i = xor i32 %v2, -2147483648
  %_74.i = sub nsw i32 0, %v2
  %_71.i = udiv i32 %_73.neg.i, %_74.i
  %7 = add nuw i32 %_71.i, 1
  %_79.i = urem i32 %_73.neg.i, %_74.i
  br label %bb47.i

bb48.i:                                           ; preds = %bb47.i
  %_90.inv.i = icmp slt i32 %v2, 1
  %..i = select i1 %_90.inv.i, i32 1, i32 -1
  %8 = add i32 %q.0.i, %..i
  br label %_ZN14div_euclid_lib3src3lib10div_euclid17hccd5ee5ac3005d7dE.exit

_ZN14div_euclid_lib3src3lib10div_euclid17hccd5ee5ac3005d7dE.exit: ; preds = %bb48.i, %bb33.i, %bb23.i, %bb47.i, %bb9.i, %bb7.i, %bb8.i, %start
  %.0.i = phi i32 [ %1, %bb7.i ], [ 0, %start ], [ %8, %bb48.i ], [ %q.0.i, %bb47.i ], [ 1, %bb33.i ], [ 0, %bb8.i ], [ %2, %bb9.i ], [ 1, %bb23.i ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef zeroext i1 @run_test_1() unnamed_addr #0 {
start:
  ret i1 true
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
