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
; ASSERT EQ: i1 1 = call i1 @run_test_11()
; ASSERT EQ: i1 1 = call i1 @run_test_12()
; ASSERT EQ: i1 1 = call i1 @run_test_13()
; ASSERT EQ: i1 1 = call i1 @run_test_14()
; ASSERT EQ: i1 1 = call i1 @run_test_15()
; ASSERT EQ: i1 1 = call i1 @run_test_16()
; ASSERT EQ: i1 1 = call i1 @run_test_17()
; ASSERT EQ: i1 1 = call i1 @run_test_18()
; ASSERT EQ: i1 1 = call i1 @run_test_19()
; ASSERT EQ: i1 1 = call i1 @run_test_20()
; ASSERT EQ: i1 1 = call i1 @run_test_21()
; ASSERT EQ: i1 1 = call i1 @run_test_22()
; ASSERT EQ: i1 1 = call i1 @run_test_23()
; ASSERT EQ: i1 1 = call i1 @run_test_24()
; ASSERT EQ: i1 1 = call i1 @run_test_25()
; ASSERT EQ: i1 1 = call i1 @run_test_26()
; ASSERT EQ: i1 1 = call i1 @run_test_27()
; ASSERT EQ: i1 1 = call i1 @run_test_28()
; ASSERT EQ: i1 1 = call i1 @run_test_29()
; ASSERT EQ: i1 1 = call i1 @run_test_30()
; ASSERT EQ: i1 1 = call i1 @run_test_31()
; ASSERT EQ: i1 1 = call i1 @run_test_32()
; ASSERT EQ: i1 1 = call i1 @run_test_33()
; ASSERT EQ: i1 1 = call i1 @run_test_34()
; ASSERT EQ: i1 1 = call i1 @run_test_35()
; ASSERT EQ: i1 1 = call i1 @run_test_36()
; ASSERT EQ: i1 1 = call i1 @run_test_37()
; ASSERT EQ: i1 1 = call i1 @run_test_38()
; ASSERT EQ: i1 1 = call i1 @run_test_39()
; ASSERT EQ: i1 1 = call i1 @run_test_40()
; ASSERT EQ: i1 1 = call i1 @run_test_41()
; ASSERT EQ: i1 1 = call i1 @run_test_42()
; ASSERT EQ: i1 1 = call i1 @run_test_43()
; ASSERT EQ: i1 1 = call i1 @run_test_44()
; ASSERT EQ: i1 1 = call i1 @run_test_45()
; ASSERT EQ: i1 1 = call i1 @run_test_46()
; ASSERT EQ: i1 1 = call i1 @run_test_47()
; ASSERT EQ: i1 1 = call i1 @run_test_48()
; ASSERT EQ: i1 1 = call i1 @run_test_49()
; ASSERT EQ: i1 1 = call i1 @run_test_50()
; ASSERT EQ: i1 1 = call i1 @run_test_51()
; ASSERT EQ: i1 1 = call i1 @run_test_52()

; This one times out for now
;; ASSERT EQ: i1 1 = call i1 @run_test_53()

; ASSERT EQ: i1 1 = call i1 @run_test_54()
; ASSERT EQ: i1 1 = call i1 @run_test_55()
; ASSERT EQ: i1 1 = call i1 @run_test_59()
; ASSERT EQ: i1 1 = call i1 @run_test_60()
; ASSERT EQ: i1 1 = call i1 @run_test_61()
; ASSERT EQ: i1 1 = call i1 @run_test_62()
; ASSERT EQ: i1 1 = call i1 @run_test_63()
; ASSERT EQ: i1 1 = call i1 @run_test_64()
; ASSERT EQ: i1 1 = call i1 @run_test_65()
; ASSERT EQ: i1 1 = call i1 @run_test_66()
; ASSERT EQ: i1 1 = call i1 @run_test_67()
; ASSERT EQ: i1 1 = call i1 @run_test_68()
; ASSERT EQ: i1 1 = call i1 @run_test_69()
; ASSERT EQ: i1 1 = call i1 @run_test_70()
; ASSERT EQ: i1 1 = call i1 @run_test_71()

@0 = private unnamed_addr constant <{ [16 x i8] }> <{ [16 x i8] c"\00\00\800\FDDW0\F3\0450\F07\180" }>, align 4

@run_test_3 = unnamed_addr alias i1 (), ptr @run_test_2
@run_test_4 = unnamed_addr alias i1 (), ptr @run_test_2
@run_test_5 = unnamed_addr alias i1 (), ptr @run_test_2
@run_test_7 = unnamed_addr alias i1 (), ptr @run_test_10
@run_test_8 = unnamed_addr alias i1 (), ptr @run_test_10
@run_test_9 = unnamed_addr alias i1 (), ptr @run_test_10
@run_test_6 = unnamed_addr alias i1 (), ptr @run_test_10
@run_test_11 = unnamed_addr alias i1 (), ptr @run_test_10
@run_test_12 = unnamed_addr alias i1 (), ptr @run_test_10
@run_test_13 = unnamed_addr alias i1 (), ptr @run_test_10
@run_test_14 = unnamed_addr alias i1 (), ptr @run_test_10
@run_test_15 = unnamed_addr alias i1 (), ptr @run_test_10
@run_test_16 = unnamed_addr alias i1 (), ptr @run_test_10
@run_test_17 = unnamed_addr alias i1 (), ptr @run_test_10
@run_test_18 = unnamed_addr alias i1 (), ptr @run_test_10
@run_test_19 = unnamed_addr alias i1 (), ptr @run_test_10
@run_test_20 = unnamed_addr alias i1 (), ptr @run_test_10
@run_test_21 = unnamed_addr alias i1 (), ptr @run_test_10
@run_test_22 = unnamed_addr alias i1 (), ptr @run_test_10
@run_test_23 = unnamed_addr alias i1 (), ptr @run_test_10
@run_test_24 = unnamed_addr alias i1 (), ptr @run_test_10
@run_test_25 = unnamed_addr alias i1 (), ptr @run_test_10
@run_test_26 = unnamed_addr alias i1 (), ptr @run_test_10
@run_test_27 = unnamed_addr alias i1 (), ptr @run_test_10
@run_test_28 = unnamed_addr alias i1 (), ptr @run_test_10
@run_test_29 = unnamed_addr alias i1 (), ptr @run_test_10
@run_test_30 = unnamed_addr alias i1 (), ptr @run_test_10
@run_test_31 = unnamed_addr alias i1 (), ptr @run_test_10
@run_test_32 = unnamed_addr alias i1 (), ptr @run_test_10
@run_test_33 = unnamed_addr alias i1 (), ptr @run_test_10
@run_test_34 = unnamed_addr alias i1 (), ptr @run_test_10
@run_test_35 = unnamed_addr alias i1 (), ptr @run_test_10
@run_test_36 = unnamed_addr alias i1 (), ptr @run_test_10
@run_test_37 = unnamed_addr alias i1 (), ptr @run_test_10
@run_test_38 = unnamed_addr alias i1 (), ptr @run_test_10
@run_test_39 = unnamed_addr alias i1 (), ptr @run_test_10
@run_test_40 = unnamed_addr alias i1 (), ptr @run_test_10
@run_test_41 = unnamed_addr alias i1 (), ptr @run_test_10
@run_test_42 = unnamed_addr alias i1 (), ptr @run_test_10
@run_test_43 = unnamed_addr alias i1 (), ptr @run_test_10
@run_test_44 = unnamed_addr alias i1 (), ptr @run_test_10
@run_test_45 = unnamed_addr alias i1 (), ptr @run_test_10
@run_test_46 = unnamed_addr alias i1 (), ptr @run_test_10
@run_test_47 = unnamed_addr alias i1 (), ptr @run_test_10
@run_test_48 = unnamed_addr alias i1 (), ptr @run_test_10
@run_test_49 = unnamed_addr alias i1 (), ptr @run_test_10
@run_test_50 = unnamed_addr alias i1 (), ptr @run_test_10
@run_test_51 = unnamed_addr alias i1 (), ptr @run_test_2
@run_test_52 = unnamed_addr alias i1 (), ptr @run_test_2
@run_test_59 = unnamed_addr alias i1 (), ptr @run_test_10
@run_test_60 = unnamed_addr alias i1 (), ptr @run_test_10
@run_test_62 = unnamed_addr alias i1 (), ptr @run_test_10
@run_test_63 = unnamed_addr alias i1 (), ptr @run_test_10
@run_test_64 = unnamed_addr alias i1 (), ptr @run_test_10
@run_test_65 = unnamed_addr alias i1 (), ptr @run_test_10
@run_test_66 = unnamed_addr alias i1 (), ptr @run_test_10
@run_test_67 = unnamed_addr alias i1 (), ptr @run_test_10
@run_test_68 = unnamed_addr alias i1 (), ptr @run_test_10
@run_test_69 = unnamed_addr alias i1 (), ptr @run_test_10
@run_test_70 = unnamed_addr alias i1 (), ptr @run_test_10
@run_test_71 = unnamed_addr alias i1 (), ptr @run_test_10

; Function Attrs: nofree nosync nounwind nonlazybind memory(none) uwtable
define noundef float @ldexp_q2(float noundef %y, i32 noundef %exp_q2) unnamed_addr #0 {
start:
  %_37.i = icmp sgt i32 %exp_q2, 0
  br i1 %_37.i, label %bb2.i, label %_ZN12ldexp_q2_lib3src3lib8ldexp_q217hdcd1e7d4aa0be9a0E.exit

bb2.i:                                            ; preds = %bb2.i, %start
  %y.09.i = phi float [ %1, %bb2.i ], [ %y, %start ]
  %exp_q2.08.i = phi i32 [ %2, %bb2.i ], [ %exp_q2, %start ]
  %exp_q2.0..i = tail call i32 @llvm.umin.i32(i32 %exp_q2.08.i, i32 120)
  %_13.i = and i32 %exp_q2.0..i, 3
  %_12.i = zext i32 %_13.i to i64
  %0 = getelementptr inbounds [4 x float], ptr @0, i64 0, i64 %_12.i
  %_10.i = load float, ptr %0, align 4, !noundef !2
  %_20.i = lshr i32 %exp_q2.0..i, 2
  %_18.i = lshr i32 1073741824, %_20.i
  %_17.i = sitofp i32 %_18.i to float
  %_9.i = fmul float %_10.i, %_17.i
  %1 = fmul float %y.09.i, %_9.i
  %2 = sub nsw i32 %exp_q2.08.i, %exp_q2.0..i
  %_3.i = icmp sgt i32 %2, 0
  br i1 %_3.i, label %bb2.i, label %_ZN12ldexp_q2_lib3src3lib8ldexp_q217hdcd1e7d4aa0be9a0E.exit

_ZN12ldexp_q2_lib3src3lib8ldexp_q217hdcd1e7d4aa0be9a0E.exit: ; preds = %bb2.i, %start
  %y.0.lcssa.i = phi float [ %y, %start ], [ %1, %bb2.i ]
  ret float %y.0.lcssa.i
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef zeroext i1 @run_test_1() unnamed_addr #2 {
start:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef zeroext i1 @run_test_2() unnamed_addr #2 {
start:
  ret i1 false
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(none) uwtable
define noundef zeroext i1 @run_test_10() unnamed_addr #0 {
start:
  ret i1 true
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(none) uwtable
define noundef zeroext i1 @run_test_53() unnamed_addr #0 {
start:
  br label %bb2.i

bb2.i:                                            ; preds = %bb2.i, %start
  %y.09.i = phi float [ %1, %bb2.i ], [ 1.000000e+00, %start ]
  %exp_q2.08.i = phi i32 [ %2, %bb2.i ], [ 2147483647, %start ]
  %exp_q2.0..i = tail call i32 @llvm.umin.i32(i32 %exp_q2.08.i, i32 120)
  %_13.i = and i32 %exp_q2.0..i, 3
  %_12.i = zext i32 %_13.i to i64
  %0 = getelementptr inbounds [4 x float], ptr @0, i64 0, i64 %_12.i
  %_10.i = load float, ptr %0, align 4, !noundef !2
  %_20.i = lshr i32 %exp_q2.0..i, 2
  %_18.i = lshr i32 1073741824, %_20.i
  %_17.i = sitofp i32 %_18.i to float
  %_9.i = fmul float %_10.i, %_17.i
  %1 = fmul float %y.09.i, %_9.i
  %2 = sub nsw i32 %exp_q2.08.i, %exp_q2.0..i
  %_3.i = icmp sgt i32 %2, 0
  br i1 %_3.i, label %bb2.i, label %_ZN12ldexp_q2_lib3src3lib8ldexp_q217hdcd1e7d4aa0be9a0E.exit

_ZN12ldexp_q2_lib3src3lib8ldexp_q217hdcd1e7d4aa0be9a0E.exit: ; preds = %bb2.i
  %3 = fcmp oeq float %1, 0.000000e+00
  ret i1 %3
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(none) uwtable
define noundef zeroext i1 @run_test_54() unnamed_addr #0 {
start:
  br label %bb2.i

bb2.i:                                            ; preds = %bb2.i, %start
  %y.09.i = phi float [ 1.000000e+00, %start ], [ %4, %bb2.i ]
  %exp_q2.08.i = phi i32 [ 10000, %start ], [ %5, %bb2.i ]
  %exp_q2.0..i = tail call i32 @llvm.umin.i32(i32 %exp_q2.08.i, i32 120)
  %_13.i = and i32 %exp_q2.0..i, 3
  %_12.i = zext i32 %_13.i to i64
  %0 = getelementptr inbounds [4 x float], ptr @0, i64 0, i64 %_12.i
  %_10.i = load float, ptr %0, align 4, !noundef !2
  %_20.i = lshr i32 %exp_q2.0..i, 2
  %_18.i = lshr i32 1073741824, %_20.i
  %_17.i = sitofp i32 %_18.i to float
  %_9.i = fmul float %_10.i, %_17.i
  %1 = fmul float %y.09.i, %_9.i
  %2 = sub nsw i32 %exp_q2.08.i, %exp_q2.0..i
  %exp_q2.0..i.1 = tail call i32 @llvm.umin.i32(i32 %2, i32 120)
  %_13.i.1 = and i32 %exp_q2.0..i.1, 3
  %_12.i.1 = zext i32 %_13.i.1 to i64
  %3 = getelementptr inbounds [4 x float], ptr @0, i64 0, i64 %_12.i.1
  %_10.i.1 = load float, ptr %3, align 4, !noundef !2
  %_20.i.1 = lshr i32 %exp_q2.0..i.1, 2
  %_18.i.1 = lshr i32 1073741824, %_20.i.1
  %_17.i.1 = sitofp i32 %_18.i.1 to float
  %_9.i.1 = fmul float %_10.i.1, %_17.i.1
  %4 = fmul float %1, %_9.i.1
  %5 = sub nsw i32 %2, %exp_q2.0..i.1
  %_3.i.1 = icmp sgt i32 %5, 0
  br i1 %_3.i.1, label %bb2.i, label %_ZN12ldexp_q2_lib3src3lib8ldexp_q217hdcd1e7d4aa0be9a0E.exit

_ZN12ldexp_q2_lib3src3lib8ldexp_q217hdcd1e7d4aa0be9a0E.exit: ; preds = %bb2.i
  %6 = fcmp oeq float %4, 0.000000e+00
  ret i1 %6
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(none) uwtable
define noundef zeroext i1 @run_test_55() unnamed_addr #0 {
start:
  br label %bb2.i

bb2.i:                                            ; preds = %bb2.i, %start
  %y.09.i = phi float [ %1, %bb2.i ], [ 1.000000e+00, %start ]
  %exp_q2.08.i = phi i32 [ %2, %bb2.i ], [ 100000, %start ]
  %exp_q2.0..i = tail call i32 @llvm.umin.i32(i32 %exp_q2.08.i, i32 120)
  %_13.i = and i32 %exp_q2.0..i, 3
  %_12.i = zext i32 %_13.i to i64
  %0 = getelementptr inbounds [4 x float], ptr @0, i64 0, i64 %_12.i
  %_10.i = load float, ptr %0, align 4, !noundef !2
  %_20.i = lshr i32 %exp_q2.0..i, 2
  %_18.i = lshr i32 1073741824, %_20.i
  %_17.i = sitofp i32 %_18.i to float
  %_9.i = fmul float %_10.i, %_17.i
  %1 = fmul float %y.09.i, %_9.i
  %2 = sub nsw i32 %exp_q2.08.i, %exp_q2.0..i
  %_3.i = icmp sgt i32 %2, 0
  br i1 %_3.i, label %bb2.i, label %_ZN12ldexp_q2_lib3src3lib8ldexp_q217hdcd1e7d4aa0be9a0E.exit

_ZN12ldexp_q2_lib3src3lib8ldexp_q217hdcd1e7d4aa0be9a0E.exit: ; preds = %bb2.i
  %3 = fcmp oeq float %1, 0.000000e+00
  ret i1 %3
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(none) uwtable
define noundef zeroext i1 @run_test_61() unnamed_addr #0 {
start:
  br label %bb2.i

bb2.i:                                            ; preds = %bb2.i, %start
  %y.09.i = phi float [ 0.000000e+00, %start ], [ %4, %bb2.i ]
  %exp_q2.08.i = phi i32 [ 5000, %start ], [ %5, %bb2.i ]
  %exp_q2.0..i = tail call i32 @llvm.umin.i32(i32 %exp_q2.08.i, i32 120)
  %_13.i = and i32 %exp_q2.0..i, 3
  %_12.i = zext i32 %_13.i to i64
  %0 = getelementptr inbounds [4 x float], ptr @0, i64 0, i64 %_12.i
  %_10.i = load float, ptr %0, align 4, !noundef !2
  %_20.i = lshr i32 %exp_q2.0..i, 2
  %_18.i = lshr i32 1073741824, %_20.i
  %_17.i = sitofp i32 %_18.i to float
  %_9.i = fmul float %_10.i, %_17.i
  %1 = fmul float %y.09.i, %_9.i
  %2 = sub nsw i32 %exp_q2.08.i, %exp_q2.0..i
  %exp_q2.0..i.1 = tail call i32 @llvm.umin.i32(i32 %2, i32 120)
  %_13.i.1 = and i32 %exp_q2.0..i.1, 3
  %_12.i.1 = zext i32 %_13.i.1 to i64
  %3 = getelementptr inbounds [4 x float], ptr @0, i64 0, i64 %_12.i.1
  %_10.i.1 = load float, ptr %3, align 4, !noundef !2
  %_20.i.1 = lshr i32 %exp_q2.0..i.1, 2
  %_18.i.1 = lshr i32 1073741824, %_20.i.1
  %_17.i.1 = sitofp i32 %_18.i.1 to float
  %_9.i.1 = fmul float %_10.i.1, %_17.i.1
  %4 = fmul float %1, %_9.i.1
  %5 = sub nsw i32 %2, %exp_q2.0..i.1
  %_3.i.1 = icmp sgt i32 %5, 0
  br i1 %_3.i.1, label %bb2.i, label %_ZN12ldexp_q2_lib3src3lib8ldexp_q217hdcd1e7d4aa0be9a0E.exit

_ZN12ldexp_q2_lib3src3lib8ldexp_q217hdcd1e7d4aa0be9a0E.exit: ; preds = %bb2.i
  %6 = fcmp oeq float %4, 0.000000e+00
  ret i1 %6
}

attributes #0 = { nofree nosync nounwind nonlazybind memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{}
