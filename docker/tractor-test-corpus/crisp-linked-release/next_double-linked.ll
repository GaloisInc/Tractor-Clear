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
; ASSERT EQ: i1 1 = call i1 @run_test_53()
; ASSERT EQ: i1 1 = call i1 @run_test_54()
; ASSERT EQ: i1 1 = call i1 @run_test_55()
; ASSERT EQ: i1 1 = call i1 @run_test_56()
; ASSERT EQ: i1 1 = call i1 @run_test_57()
; ASSERT EQ: i1 1 = call i1 @run_test_58()
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
; ASSERT EQ: i1 1 = call i1 @run_test_72()
; ASSERT EQ: i1 1 = call i1 @run_test_73()
; ASSERT EQ: i1 1 = call i1 @run_test_74()
; ASSERT EQ: i1 1 = call i1 @run_test_75()

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

; Function Attrs: mustprogress nofree nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef double @next_double(ptr nocapture noundef %rnd) unnamed_addr #0 {
start:
  %0 = load i64, ptr %rnd, align 8, !alias.scope !2, !noundef !7
  %1 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1
  %y.i.i = load i64, ptr %1, align 8, !alias.scope !2, !noundef !7
  store i64 %y.i.i, ptr %rnd, align 8, !alias.scope !2
  %_7.i.i = shl i64 %0, 23
  %2 = xor i64 %_7.i.i, %0
  %_9.i.i = lshr i64 %2, 17
  %_12.i.i = lshr i64 %y.i.i, 26
  %3 = xor i64 %_12.i.i, %_9.i.i
  %4 = xor i64 %3, %y.i.i
  %5 = xor i64 %4, %2
  store i64 %5, ptr %1, align 8, !alias.scope !2
  %6 = add i64 %5, %y.i.i
  %mantissa.i = lshr i64 %6, 12
  %result.i = or i64 %mantissa.i, 4607182418800017408
  %_8.i = bitcast i64 %result.i to double
  %7 = fadd double %_8.i, -1.000000e+00
  ret double %7
}

; Function Attrs: mustprogress nofree nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef zeroext i1 @run_test_1() unnamed_addr #1 {
start:
  ret i1 true
}

attributes #0 = { mustprogress nofree nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!3, !5}
!3 = distinct !{!3, !4, !"_ZN15next_double_lib3src3lib11cn_rnd_next17h88c45006982389fdE: %rnd"}
!4 = distinct !{!4, !"_ZN15next_double_lib3src3lib11cn_rnd_next17h88c45006982389fdE"}
!5 = distinct !{!5, !6, !"_ZN15next_double_lib3src3lib11next_double17h11b678c78032463aE: %rnd"}
!6 = distinct !{!6, !"_ZN15next_double_lib3src3lib11next_double17h11b678c78032463aE"}
!7 = !{}
