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

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef i32 @encode_quant(i32 noundef %uni, i32 noundef %step, i32 noundef %pred, i32 noundef %tgt, i32 noundef %tgt2, i32 noundef %lsbit) unnamed_addr #0 {
start:
  %0 = tail call fastcc noundef i32 @_ZN16encode_quant_lib3src3lib12encode_quant17he2cf542293c46f17E(i32 noundef %uni, i32 noundef %step, i32 noundef %pred, i32 noundef %tgt, i32 noundef %tgt2, i32 noundef %lsbit)
  ret i32 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc noundef i32 @_ZN16encode_quant_lib3src3lib12encode_quant17he2cf542293c46f17E(i32 noundef %0, i32 noundef %step, i32 noundef %pred, i32 noundef %tgt, i32 noundef %tgt2, i32 noundef %lsbit) unnamed_addr #0 {
start:
  %1 = insertelement <2 x i32> poison, i32 %0, i64 0
  %2 = shufflevector <2 x i32> %1, <2 x i32> poison, <2 x i32> zeroinitializer
  %3 = add <2 x i32> %2, <i32 -1, i32 1>
  %4 = xor <2 x i32> %3, %2
  %5 = icmp ult <2 x i32> %4, splat (i32 8)
  %6 = select <2 x i1> %5, <2 x i32> %3, <2 x i32> %2
  switch i32 %lsbit, label %bb9 [
    i32 0, label %bb12
    i32 4, label %bb8
  ]

bb12:                                             ; preds = %bb10, %bb11, %bb8, %start
  %uni.0 = phi i32 [ %58, %bb11 ], [ %60, %bb10 ], [ %52, %bb8 ], [ %0, %start ]
  %7 = phi <2 x i32> [ %59, %bb11 ], [ %61, %bb10 ], [ %56, %bb8 ], [ %6, %start ]
  %8 = extractelement <2 x i32> %7, i64 1
  %_71 = shl i32 %8, 1
  %_70 = and i32 %_71, 14
  %_69 = or i32 %_70, 1
  %_68 = mul i32 %_69, %step
  %9 = sdiv i32 %_68, 8
  %_73 = and i32 %8, 8
  %10 = icmp eq i32 %_73, 0
  %11 = sub nsw i32 0, %9
  %diff.1 = select i1 %10, i32 %9, i32 %11
  %p1 = add i32 %diff.1, %pred
  %12 = sub i32 %tgt, %p1
  %_78 = ashr i32 %12, 31
  %13 = xor i32 %_78, %12
  %14 = extractelement <2 x i32> %7, i64 0
  %15 = sub i32 %tgt2, %p1
  %_96 = ashr i32 %15, 31
  %16 = xor i32 %_96, %15
  %_98 = ashr i32 %16, 5
  %17 = add i32 %_98, %13
  %18 = insertelement <2 x i32> %7, i32 %uni.0, i64 1
  %19 = shl <2 x i32> %18, splat (i32 1)
  %20 = and <2 x i32> %19, splat (i32 14)
  %21 = or <2 x i32> %20, splat (i32 1)
  %22 = insertelement <2 x i32> poison, i32 %step, i64 0
  %23 = shufflevector <2 x i32> %22, <2 x i32> poison, <2 x i32> zeroinitializer
  %24 = mul <2 x i32> %21, %23
  %25 = sdiv <2 x i32> %24, splat (i32 8)
  %26 = and <2 x i32> %18, splat (i32 8)
  %27 = icmp eq <2 x i32> %26, zeroinitializer
  %28 = sub nsw <2 x i32> zeroinitializer, %25
  %29 = select <2 x i1> %27, <2 x i32> %25, <2 x i32> %28
  %30 = insertelement <2 x i32> poison, i32 %pred, i64 0
  %31 = shufflevector <2 x i32> %30, <2 x i32> poison, <2 x i32> zeroinitializer
  %32 = add <2 x i32> %29, %31
  %33 = insertelement <2 x i32> poison, i32 %tgt, i64 0
  %34 = shufflevector <2 x i32> %33, <2 x i32> poison, <2 x i32> zeroinitializer
  %35 = sub <2 x i32> %34, %32
  %36 = ashr <2 x i32> %35, splat (i32 31)
  %37 = xor <2 x i32> %36, %35
  %38 = insertelement <2 x i32> poison, i32 %tgt2, i64 0
  %39 = shufflevector <2 x i32> %38, <2 x i32> poison, <2 x i32> zeroinitializer
  %40 = sub <2 x i32> %39, %32
  %41 = ashr <2 x i32> %40, splat (i32 31)
  %42 = xor <2 x i32> %41, %40
  %43 = ashr <2 x i32> %42, splat (i32 5)
  %44 = add <2 x i32> %43, %37
  %45 = extractelement <2 x i32> %44, i64 1
  %_104 = icmp slt i32 %17, %45
  %uni.1 = select i1 %_104, i32 %8, i32 %uni.0
  %46 = extractelement <2 x i32> %44, i64 0
  %_108 = icmp slt i32 %46, %45
  %uni.2 = select i1 %_108, i32 %14, i32 %uni.1
  ret i32 %uni.2

bb8:                                              ; preds = %start
  %47 = and i32 %0, -2
  %48 = and <2 x i32> %6, splat (i32 -2)
  %49 = and i32 %0, 6
  %50 = icmp eq i32 %49, 6
  %51 = zext i1 %50 to i32
  %52 = or i32 %47, %51
  %53 = and <2 x i32> %6, splat (i32 6)
  %54 = icmp eq <2 x i32> %53, splat (i32 6)
  %55 = zext <2 x i1> %54 to <2 x i32>
  %56 = or <2 x i32> %48, %55
  br label %bb12

bb9:                                              ; preds = %start
  %_52 = and i32 %lsbit, 1
  %57 = icmp eq i32 %_52, 0
  br i1 %57, label %bb11, label %bb10

bb11:                                             ; preds = %bb9
  %58 = and i32 %0, -2
  %59 = and <2 x i32> %6, splat (i32 -2)
  br label %bb12

bb10:                                             ; preds = %bb9
  %60 = or i32 %0, 1
  %61 = or <2 x i32> %6, splat (i32 1)
  br label %bb12
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
