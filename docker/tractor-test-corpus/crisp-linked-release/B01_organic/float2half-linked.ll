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
; ASSERT EQ: i1 1 = call i1 @run_test_23()
; ASSERT EQ: i1 1 = call i1 @run_test_24()
; ASSERT EQ: i1 1 = call i1 @run_test_25()
; ASSERT EQ: i1 1 = call i1 @run_test_26()
; ASSERT EQ: i1 1 = call i1 @run_test_27()
; ASSERT EQ: i1 1 = call i1 @run_test_28()

@_ZN14float2half_lib3src3lib6M_BASE17h4ac2abfeeeb08d82E = internal unnamed_addr constant <{ [1024 x i8] }> <{ [1024 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\02\00\04\00\08\00\10\00 \00@\00\80\00\00\01\00\02\00\04\00\08\00\0C\00\10\00\14\00\18\00\1C\00 \00$\00(\00,\000\004\008\00<\00@\00D\00H\00L\00P\00T\00X\00\\\00`\00d\00h\00l\00p\00t\00x\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00\00\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\01\80\02\80\04\80\08\80\10\80 \80@\80\80\80\00\81\00\82\00\84\00\88\00\8C\00\90\00\94\00\98\00\9C\00\A0\00\A4\00\A8\00\AC\00\B0\00\B4\00\B8\00\BC\00\C0\00\C4\00\C8\00\CC\00\D0\00\D4\00\D8\00\DC\00\E0\00\E4\00\E8\00\EC\00\F0\00\F4\00\F8\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\80" }>, align 2
@_ZN14float2half_lib3src3lib7M_SHIFT17h90cb0733f0166d28E = internal unnamed_addr constant <{ [512 x i8] }> <{ [512 x i8] c"\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\17\16\15\14\13\12\11\10\0F\0E\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\0D\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\17\16\15\14\13\12\11\10\0F\0E\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\0D" }>, align 1

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
@run_test_23 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_24 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_25 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_26 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_27 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_28 = unnamed_addr alias i1 (), ptr @run_test_1

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef zeroext i16 @float2half(float noundef %flt) unnamed_addr #0 {
start:
  %n.i = bitcast float %flt to i32
  %_5.i = lshr i32 %n.i, 23
  %j.i = zext i32 %_5.i to i64
  %0 = getelementptr inbounds [512 x i16], ptr @_ZN14float2half_lib3src3lib6M_BASE17h4ac2abfeeeb08d82E, i64 0, i64 %j.i
  %_8.i = load i16, ptr %0, align 2, !noundef !2
  %_13.i = and i32 %n.i, 8388607
  %1 = getelementptr inbounds [512 x i8], ptr @_ZN14float2half_lib3src3lib7M_SHIFT17h90cb0733f0166d28E, i64 0, i64 %j.i
  %_15.i = load i8, ptr %1, align 1, !noundef !2
  %2 = and i8 %_15.i, 31
  %3 = zext i8 %2 to i32
  %rhs.i = lshr i32 %_13.i, %3
  %4 = trunc i32 %rhs.i to i16
  %5 = add i16 %_8.i, %4
  ret i16 %5
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
!2 = !{}
