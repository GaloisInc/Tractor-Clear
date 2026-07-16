; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; ASSERT EQ: i1 1 = call i1 @run_test_1()
; ASSERT EQ: i1 1 = call i1 @run_test_2()
; ASSERT EQ: i1 1 = call i1 @run_test_3()
; ASSERT EQ: i1 1 = call i1 @run_test_4()
; ASSERT EQ: i1 1 = call i1 @run_test_5()

@alloc_f5ffd2fd1476bab43ad89fb40c72d0c5 = private unnamed_addr constant <{ [10 x i8] }> <{ [10 x i8] c"src/lib.rs" }>, align 1
@alloc_f1747e4da537d5b496022ed05d97ad87 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00!\00\00\00\09\00\00\00" }>, align 8
@alloc_f0ffe9766e826e35d82793f1240264d2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\22\00\00\00\09\00\00\00" }>, align 8

@run_test_2 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_3 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_5 = unnamed_addr alias i1 (), ptr @run_test_1

; Function Attrs: nonlazybind uwtable
define noundef ptr @bin2hex(ptr noundef %hex, i64 noundef %hex_maxlen, ptr nocapture noundef readonly %bin, i64 noundef %bin_len) unnamed_addr #0 {
start:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5)
  %_7.i = icmp ugt i64 %bin_len, 9223372036854775806
  %_10.i = shl i64 %bin_len, 1
  %_9.i = icmp uge i64 %_10.i, %hex_maxlen
  %_6.0.i = or i1 %_7.i, %_9.i
  br i1 %_6.0.i, label %bb4.i, label %bb6.preheader.i

bb6.preheader.i:                                  ; preds = %start
  %_1320.not.i = icmp eq i64 %bin_len, 0
  br i1 %_1320.not.i, label %_ZN11bin2hex_lib3src3lib7bin2hex17h84816ac01e8deeb8E.exit, label %bb8.i

bb4.i:                                            ; preds = %start
  tail call void @_ZN3std7process5abort17h6c3420dae5e21601E() #6, !noalias !7
  unreachable

bb8.i:                                            ; preds = %bb10.i, %bb6.preheader.i
  %i.021.i = phi i64 [ %_51.i, %bb10.i ], [ 0, %bb6.preheader.i ]
  %_41.i = shl nuw i64 %i.021.i, 1
  %_44.i = icmp ult i64 %_41.i, %hex_maxlen
  br i1 %_44.i, label %bb9.i, label %panic4.i, !prof !8

bb9.i:                                            ; preds = %bb8.i
  %0 = getelementptr inbounds [0 x i8], ptr %bin, i64 0, i64 %i.021.i
  %byte.i = load i8, ptr %0, align 1, !alias.scope !5, !noalias !2, !noundef !9
  %_20.i = zext i8 %byte.i to i32
  %b.i = lshr i32 %_20.i, 4
  %self1.i = add nuw nsw i32 %b.i, 87
  %_39.i = add nuw nsw i32 %b.i, 65526
  %_38.i = lshr i32 %_39.i, 8
  %rhs2.i = and i32 %_38.i, 217
  %_35.i = add nuw nsw i32 %self1.i, %rhs2.i
  %1 = getelementptr inbounds [0 x i8], ptr %hex, i64 0, i64 %_41.i
  %2 = trunc i32 %_35.i to i8
  store i8 %2, ptr %1, align 1, !alias.scope !2, !noalias !5
  %_46.i = or i64 %_41.i, 1
  %_50.i = icmp ult i64 %_46.i, %hex_maxlen
  br i1 %_50.i, label %bb10.i, label %panic7.i, !prof !8

panic4.i:                                         ; preds = %bb8.i
  tail call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 noundef %_41.i, i64 noundef %hex_maxlen, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_f1747e4da537d5b496022ed05d97ad87) #6, !noalias !7
  unreachable

bb10.i:                                           ; preds = %bb9.i
  %c.i = and i32 %_20.i, 15
  %_31.i = add nuw nsw i32 %c.i, 65526
  %_31.mask.i = and i32 %_31.i, 55552
  %self.i = shl nuw nsw i32 %c.i, 8
  %_2716.i = add nuw nsw i32 %self.i, 22272
  %_25.i = add nuw nsw i32 %_2716.i, %_31.mask.i
  %_24.i = lshr exact i32 %_25.i, 8
  %3 = getelementptr inbounds [0 x i8], ptr %hex, i64 0, i64 %_46.i
  %4 = trunc i32 %_24.i to i8
  store i8 %4, ptr %3, align 1, !alias.scope !2, !noalias !5
  %_51.i = add nuw nsw i64 %i.021.i, 1
  %exitcond.not.i = icmp eq i64 %_51.i, %bin_len
  br i1 %exitcond.not.i, label %_ZN11bin2hex_lib3src3lib7bin2hex17h84816ac01e8deeb8E.exit, label %bb8.i

panic7.i:                                         ; preds = %bb9.i
  tail call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 noundef %_46.i, i64 noundef %hex_maxlen, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_f0ffe9766e826e35d82793f1240264d2) #6, !noalias !7
  unreachable

_ZN11bin2hex_lib3src3lib7bin2hex17h84816ac01e8deeb8E.exit: ; preds = %bb10.i, %bb6.preheader.i
  %5 = getelementptr inbounds [0 x i8], ptr %hex, i64 0, i64 %_10.i
  store i8 0, ptr %5, align 1, !alias.scope !2, !noalias !5
  ret ptr %hex
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #1

; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_ZN3std7process5abort17h6c3420dae5e21601E() unnamed_addr #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @run_test_1() unnamed_addr #0 {
bb10.i.i:
  ret i1 true
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @run_test_4() unnamed_addr #0 {
bb10.i.i.11:
  %expected_hex = alloca [25 x i8], align 16
  %hex = alloca [26 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %hex)
  store <16 x i8> <i8 51, i8 99, i8 51, i8 100, i8 51, i8 101, i8 51, i8 102, i8 52, i8 48, i8 52, i8 49, i8 52, i8 50, i8 52, i8 51>, ptr %hex, align 16, !alias.scope !10, !noalias !13
  %0 = getelementptr inbounds [0 x i8], ptr %hex, i64 0, i64 16
  store <8 x i8> <i8 52, i8 52, i8 52, i8 53, i8 52, i8 54, i8 52, i8 55>, ptr %0, align 16, !alias.scope !10, !noalias !13
  %1 = getelementptr inbounds [0 x i8], ptr %hex, i64 0, i64 24
  store i8 0, ptr %1, align 8, !alias.scope !10, !noalias !13
  call void @llvm.lifetime.start.p0(i64 25, ptr nonnull %expected_hex)
  store <16 x i8> <i8 51, i8 99, i8 51, i8 100, i8 51, i8 101, i8 51, i8 102, i8 52, i8 48, i8 52, i8 49, i8 52, i8 50, i8 52, i8 51>, ptr %expected_hex, align 16
  %2 = getelementptr inbounds [25 x i8], ptr %expected_hex, i64 0, i64 16
  store <8 x i8> <i8 52, i8 52, i8 52, i8 53, i8 52, i8 54, i8 52, i8 55>, ptr %2, align 16
  %3 = getelementptr inbounds [25 x i8], ptr %expected_hex, i64 0, i64 24
  store i8 0, ptr %3, align 8
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(25) %hex, ptr noundef nonnull dereferenceable(25) %expected_hex, i64 25), !alias.scope !15
  %4 = icmp eq i32 %bcmp.i, 0
  call void @llvm.lifetime.end.p0(i64 25, ptr nonnull %expected_hex)
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %hex)
  ret i1 %4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nofree nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #2 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree nounwind nonlazybind willreturn memory(argmem: read) }
attributes #6 = { noreturn }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!3}
!3 = distinct !{!3, !4, !"_ZN11bin2hex_lib3src3lib7bin2hex17h84816ac01e8deeb8E: %hex.0"}
!4 = distinct !{!4, !"_ZN11bin2hex_lib3src3lib7bin2hex17h84816ac01e8deeb8E"}
!5 = !{!6}
!6 = distinct !{!6, !4, !"_ZN11bin2hex_lib3src3lib7bin2hex17h84816ac01e8deeb8E: %bin.0"}
!7 = !{!3, !6}
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{}
!10 = !{!11}
!11 = distinct !{!11, !12, !"_ZN11bin2hex_lib3src3lib7bin2hex17h84816ac01e8deeb8E: %hex.0"}
!12 = distinct !{!12, !"_ZN11bin2hex_lib3src3lib7bin2hex17h84816ac01e8deeb8E"}
!13 = !{!14}
!14 = distinct !{!14, !12, !"_ZN11bin2hex_lib3src3lib7bin2hex17h84816ac01e8deeb8E: %bin.0"}
!15 = !{!16, !18}
!16 = distinct !{!16, !17, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17hc0e186f93b018683E: %a"}
!17 = distinct !{!17, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17hc0e186f93b018683E"}
!18 = distinct !{!18, !17, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17hc0e186f93b018683E: %b"}
