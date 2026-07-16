; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"src::lib::Tflac" = type { i32, i32, i32, i32, i8, i8, i8, i8, i8, [3 x i8], i32 }

@run_test_2 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_3 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_4 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_5 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_6 = unnamed_addr alias i1 (), ptr @run_test_1

; Function Attrs: nofree nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i32 @flac_validate(ptr nocapture noundef %t) unnamed_addr #0 {
start:
  %_3.i = load i32, ptr %t, align 4, !alias.scope !2, !noundef !5
  %0 = add i32 %_3.i, -65536
  %or.cond.i = icmp ult i32 %0, -65520
  br i1 %or.cond.i, label %_ZN17flac_validate_lib3src3lib13flac_validate17h4c7381b5e2d74b34E.exit, label %bb4.i

bb4.i:                                            ; preds = %start
  %1 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i64 0, i32 1
  %_6.i = load i32, ptr %1, align 4, !alias.scope !2, !noundef !5
  %2 = add i32 %_6.i, -655351
  %or.cond2.i = icmp ult i32 %2, -655350
  br i1 %or.cond2.i, label %_ZN17flac_validate_lib3src3lib13flac_validate17h4c7381b5e2d74b34E.exit, label %bb8.i

bb8.i:                                            ; preds = %bb4.i
  %3 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i64 0, i32 2
  %_9.i = load i32, ptr %3, align 4, !alias.scope !2, !noundef !5
  %4 = add i32 %_9.i, -9
  %or.cond3.i = icmp ult i32 %4, -8
  br i1 %or.cond3.i, label %_ZN17flac_validate_lib3src3lib13flac_validate17h4c7381b5e2d74b34E.exit, label %bb12.i

bb12.i:                                           ; preds = %bb8.i
  %5 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i64 0, i32 3
  %_12.i = load i32, ptr %5, align 4, !alias.scope !2, !noundef !5
  %6 = add i32 %_12.i, -33
  %or.cond4.i = icmp ult i32 %6, -32
  br i1 %or.cond4.i, label %_ZN17flac_validate_lib3src3lib13flac_validate17h4c7381b5e2d74b34E.exit, label %bb16.i

bb16.i:                                           ; preds = %bb12.i
  %7 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i64 0, i32 4
  %_17.i = load i8, ptr %7, align 4, !alias.scope !2, !noundef !5
  %_15.not.i = icmp eq i8 %_17.i, 0
  br i1 %_15.not.i, label %bb23.i, label %bb17.i

bb23.i:                                           ; preds = %bb21.i, %bb17.i, %bb16.i
  %8 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i64 0, i32 5
  %_24.i = load i8, ptr %8, align 1, !alias.scope !2, !noundef !5
  %9 = icmp eq i8 %_24.i, 0
  br i1 %9, label %bb24.i, label %bb28.i

bb17.i:                                           ; preds = %bb16.i
  %10 = icmp ne i32 %_9.i, 2
  %_21.i = icmp eq i32 %_12.i, 32
  %_19.0.i = or i1 %10, %_21.i
  br i1 %_19.0.i, label %bb21.i, label %bb23.i

bb21.i:                                           ; preds = %bb17.i
  store i8 0, ptr %7, align 4, !alias.scope !2
  br label %bb23.i

bb24.i:                                           ; preds = %bb23.i
  %_25.i = icmp ult i32 %_12.i, 17
  %spec.select.i = select i1 %_25.i, i8 14, i8 30
  store i8 %spec.select.i, ptr %8, align 1, !alias.scope !2
  br label %bb31.i

bb28.i:                                           ; preds = %bb23.i
  %_27.i = icmp ugt i8 %_24.i, 30
  br i1 %_27.i, label %_ZN17flac_validate_lib3src3lib13flac_validate17h4c7381b5e2d74b34E.exit, label %bb31.i

bb31.i:                                           ; preds = %bb28.i, %bb24.i
  %11 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i64 0, i32 7
  %_32.i = load i8, ptr %11, align 1, !alias.scope !2, !noundef !5
  %_30.i = icmp ugt i8 %_32.i, 15
  %12 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i64 0, i32 6
  %_35.i = load i8, ptr %12, align 2, !alias.scope !2
  %_33.i = icmp ugt i8 %_35.i, %_32.i
  %or.cond5.i = select i1 %_30.i, i1 true, i1 %_33.i
  br i1 %or.cond5.i, label %_ZN17flac_validate_lib3src3lib13flac_validate17h4c7381b5e2d74b34E.exit, label %bb36.i

bb36.i:                                           ; preds = %bb36.i, %bb31.i
  %storemerge.i = phi i8 [ %13, %bb36.i ], [ %_35.i, %bb31.i ]
  %13 = add i8 %storemerge.i, 1
  %14 = and i8 %13, 31
  %15 = zext i8 %14 to i32
  %notmask.i = shl nsw i32 -1, %15
  %16 = xor i32 %notmask.i, -1
  %_40.i = and i32 %_3.i, %16
  %17 = icmp eq i32 %_40.i, 0
  %_47.i = icmp ult i8 %storemerge.i, %_32.i
  %_39.0.i = select i1 %17, i1 %_47.i, i1 false
  br i1 %_39.0.i, label %bb36.i, label %bb41.i

bb41.i:                                           ; preds = %bb36.i
  %18 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i64 0, i32 8
  store i8 %storemerge.i, ptr %18, align 4, !alias.scope !2
  %19 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i64 0, i32 10
  store i32 %_3.i, ptr %19, align 4, !alias.scope !2
  br label %_ZN17flac_validate_lib3src3lib13flac_validate17h4c7381b5e2d74b34E.exit

_ZN17flac_validate_lib3src3lib13flac_validate17h4c7381b5e2d74b34E.exit: ; preds = %bb41.i, %bb31.i, %bb28.i, %bb12.i, %bb8.i, %bb4.i, %start
  %.0.i = phi i32 [ 0, %bb41.i ], [ -1, %start ], [ -1, %bb4.i ], [ -1, %bb8.i ], [ -1, %bb12.i ], [ -1, %bb28.i ], [ -1, %bb31.i ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef i32 @tflac_size_memory(i32 noundef %blocksize) unnamed_addr #1 {
start:
  %rhs.i = shl i32 %blocksize, 2
  %_4.i = add i32 %rhs.i, 15
  %rhs1.i = and i32 %_4.i, -16
  %rhs2.i = mul i32 %rhs1.i, 5
  %0 = or i32 %rhs2.i, 15
  ret i32 %0
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(none) uwtable
define noundef zeroext i1 @run_test_1() unnamed_addr #2 {
flac_validate.exit:
  ret i1 true
}

attributes #0 = { nofree nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree nosync nounwind nonlazybind memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!3}
!3 = distinct !{!3, !4, !"_ZN17flac_validate_lib3src3lib13flac_validate17h4c7381b5e2d74b34E: %t"}
!4 = distinct !{!4, !"_ZN17flac_validate_lib3src3lib13flac_validate17h4c7381b5e2d74b34E"}
!5 = !{}
