; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"src::lib::TflacBitwriter" = type { i64, i32, i32, i32, i32, ptr }

@run_test_3 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_5 = unnamed_addr alias i1 (), ptr @run_test_1

; Function Attrs: nofree nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i32 @bitwriter_add(ptr nocapture noundef %bw, i32 noundef %bits, i64 noundef %val) unnamed_addr #0 {
start:
  %0 = sub i32 0, %bits
  %1 = and i32 %0, 63
  %2 = zext i32 %1 to i64
  %3 = shl i64 %val, %2
  %4 = getelementptr inbounds %"src::lib::TflacBitwriter", ptr %bw, i64 0, i32 4
  %self.i = load i32, ptr %4, align 4, !alias.scope !2, !noundef !5
  %_11.i = add i32 %self.i, %bits
  store i32 %_11.i, ptr %4, align 4, !alias.scope !2
  %5 = getelementptr inbounds %"src::lib::TflacBitwriter", ptr %bw, i64 0, i32 1
  %.promoted.i = load i32, ptr %5, align 8, !alias.scope !2
  %bw.promoted.i = load i64, ptr %bw, align 8, !alias.scope !2
  %_1827.i = add i32 %.promoted.i, %bits
  %_1628.i = icmp ugt i32 %_1827.i, 63
  br i1 %_1628.i, label %bb5.i, label %_ZN17bitwriter_add_lib3src3lib13bitwriter_add17h8e344b09446ec38bE.exit

bb5.i:                                            ; preds = %bb5.i, %start
  %bits.032.i = phi i32 [ %_42.i, %bb5.i ], [ %bits, %start ]
  %val.031.i = phi i64 [ %13, %bb5.i ], [ %3, %start ]
  %i.030.i = phi i32 [ %14, %bb5.i ], [ 0, %start ]
  %_382629.i = phi i32 [ %_38.i, %bb5.i ], [ %.promoted.i, %start ]
  %6 = phi i64 [ %10, %bb5.i ], [ %bw.promoted.i, %start ]
  %_25.i = sub i32 63, %_382629.i
  %bits.0._25.i = tail call i32 @llvm.umin.i32(i32 %_25.i, i32 %bits.032.i)
  %7 = and i32 %_382629.i, 63
  %8 = zext i32 %7 to i64
  %_35.i = lshr i64 %val.031.i, %8
  %9 = or i64 %_35.i, %6
  %_38.i = add i32 %bits.0._25.i, %_382629.i
  %10 = and i64 %9, -2
  %11 = and i32 %bits.0._25.i, 63
  %12 = zext i32 %11 to i64
  %13 = shl i64 %val.031.i, %12
  %_42.i = sub i32 %bits.032.i, %bits.0._25.i
  %14 = add nuw nsw i32 %i.030.i, 1
  %_18.i = add i32 %_382629.i, %bits.032.i
  %_16.i = icmp ugt i32 %_18.i, 63
  %_23.i = icmp ult i32 %i.030.i, 99
  %_15.0.i = select i1 %_16.i, i1 %_23.i, i1 false
  br i1 %_15.0.i, label %bb5.i, label %_ZN17bitwriter_add_lib3src3lib13bitwriter_add17h8e344b09446ec38bE.exit

_ZN17bitwriter_add_lib3src3lib13bitwriter_add17h8e344b09446ec38bE.exit: ; preds = %bb5.i, %start
  %15 = phi i64 [ %bw.promoted.i, %start ], [ %10, %bb5.i ]
  %val.0.lcssa.i = phi i64 [ %3, %start ], [ %13, %bb5.i ]
  %self2.lcssa.i = phi i32 [ %.promoted.i, %start ], [ %_38.i, %bb5.i ]
  %_18.lcssa.i = phi i32 [ %_1827.i, %start ], [ %_18.i, %bb5.i ]
  %16 = and i32 %self2.lcssa.i, 63
  %17 = zext i32 %16 to i64
  %_45.i = lshr i64 %val.0.lcssa.i, %17
  %18 = or i64 %_45.i, %15
  store i64 %18, ptr %bw, align 8, !alias.scope !2
  store i32 %_18.lcssa.i, ptr %5, align 8, !alias.scope !2
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #1

; Function Attrs: nofree nosync nounwind nonlazybind memory(none) uwtable
define noundef zeroext i1 @run_test_1() unnamed_addr #2 {
bitwriter_add.exit:
  ret i1 true
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(none) uwtable
define noundef zeroext i1 @run_test_2() unnamed_addr #2 {
start:
  br label %bb5.i.i

bb5.i.i:                                          ; preds = %bb5.i.i, %start
  %bits.032.i.i = phi i32 [ %_42.i.i, %bb5.i.i ], [ 4, %start ]
  %val.031.i.i = phi i64 [ %7, %bb5.i.i ], [ 5764607523034234880, %start ]
  %i.030.i.i = phi i32 [ %8, %bb5.i.i ], [ 0, %start ]
  %_382629.i.i = phi i32 [ %_38.i.i, %bb5.i.i ], [ 100, %start ]
  %0 = phi i64 [ %4, %bb5.i.i ], [ 1, %start ]
  %_25.i.i = sub i32 63, %_382629.i.i
  %bits.0._25.i.i = tail call i32 @llvm.umin.i32(i32 %_25.i.i, i32 %bits.032.i.i)
  %1 = and i32 %_382629.i.i, 63
  %2 = zext i32 %1 to i64
  %_35.i.i = lshr i64 %val.031.i.i, %2
  %3 = or i64 %_35.i.i, %0
  %_38.i.i = add i32 %bits.0._25.i.i, %_382629.i.i
  %4 = and i64 %3, -2
  %5 = and i32 %bits.0._25.i.i, 63
  %6 = zext i32 %5 to i64
  %7 = shl i64 %val.031.i.i, %6
  %_42.i.i = sub i32 %bits.032.i.i, %bits.0._25.i.i
  %8 = add nuw nsw i32 %i.030.i.i, 1
  %_18.i.i = add i32 %_382629.i.i, %bits.032.i.i
  %_16.i.i = icmp ugt i32 %_18.i.i, 63
  %_23.i.i = icmp ult i32 %i.030.i.i, 99
  %_15.0.i.i = select i1 %_16.i.i, i1 %_23.i.i, i1 false
  br i1 %_15.0.i.i, label %bb5.i.i, label %bitwriter_add.exit

bitwriter_add.exit:                               ; preds = %bb5.i.i
  %9 = and i32 %_38.i.i, 63
  %10 = zext i32 %9 to i64
  %_45.i.i = lshr i64 %7, %10
  %11 = or i64 %_45.i.i, %4
  %12 = icmp eq i64 %11, 83886080
  %_11 = icmp eq i32 %_18.i.i, 104
  %_9.0 = select i1 %12, i1 %_11, i1 false
  ret i1 %_9.0
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(none) uwtable
define noundef zeroext i1 @run_test_4() unnamed_addr #2 {
start:
  br label %bb5.i.i

bb5.i.i:                                          ; preds = %bb5.i.i, %start
  %bits.032.i.i = phi i32 [ %_42.i.i, %bb5.i.i ], [ 100, %start ]
  %val.031.i.i = phi i64 [ %7, %bb5.i.i ], [ 1342177280, %start ]
  %i.030.i.i = phi i32 [ %8, %bb5.i.i ], [ 0, %start ]
  %_382629.i.i = phi i32 [ %_38.i.i, %bb5.i.i ], [ 2, %start ]
  %0 = phi i64 [ %4, %bb5.i.i ], [ 1, %start ]
  %_25.i.i = sub i32 63, %_382629.i.i
  %bits.0._25.i.i = tail call i32 @llvm.umin.i32(i32 %_25.i.i, i32 %bits.032.i.i)
  %1 = and i32 %_382629.i.i, 63
  %2 = zext i32 %1 to i64
  %_35.i.i = lshr i64 %val.031.i.i, %2
  %3 = or i64 %_35.i.i, %0
  %_38.i.i = add i32 %bits.0._25.i.i, %_382629.i.i
  %4 = and i64 %3, -2
  %5 = and i32 %bits.0._25.i.i, 63
  %6 = zext i32 %5 to i64
  %7 = shl i64 %val.031.i.i, %6
  %_42.i.i = sub i32 %bits.032.i.i, %bits.0._25.i.i
  %8 = add nuw nsw i32 %i.030.i.i, 1
  %_18.i.i = add i32 %_382629.i.i, %bits.032.i.i
  %_16.i.i = icmp ugt i32 %_18.i.i, 63
  %_23.i.i = icmp ult i32 %i.030.i.i, 99
  %_15.0.i.i = select i1 %_16.i.i, i1 %_23.i.i, i1 false
  br i1 %_15.0.i.i, label %bb5.i.i, label %bitwriter_add.exit

bitwriter_add.exit:                               ; preds = %bb5.i.i
  %9 = and i32 %_38.i.i, 63
  %10 = zext i32 %9 to i64
  %_45.i.i = lshr i64 %7, %10
  %11 = or i64 %_45.i.i, %4
  %12 = icmp eq i64 %11, 335544320
  %_11 = icmp eq i32 %_18.i.i, 102
  %_9.0 = select i1 %12, i1 %_11, i1 false
  ret i1 %_9.0
}

attributes #0 = { nofree nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nofree nosync nounwind nonlazybind memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!3}
!3 = distinct !{!3, !4, !"_ZN17bitwriter_add_lib3src3lib13bitwriter_add17h8e344b09446ec38bE: %bw"}
!4 = distinct !{!4, !"_ZN17bitwriter_add_lib3src3lib13bitwriter_add17h8e344b09446ec38bE"}
!5 = !{}
