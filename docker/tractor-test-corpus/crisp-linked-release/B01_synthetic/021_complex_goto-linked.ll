; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"core::fmt::Arguments<'_>" = type { { ptr, i64 }, { ptr, i64 }, { ptr, i64 } }

@alloc_513570631223a12912d85da2bec3b15a = private unnamed_addr constant <{}> zeroinitializer, align 8
@alloc_0b89dc7d2c6800fa417c6c05338746b3 = private unnamed_addr constant <{ [5 x i8] }> <{ [5 x i8] c"loop\0A" }>, align 1
@alloc_22df82711505dde7dfa7099b1f3b194d = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @alloc_0b89dc7d2c6800fa417c6c05338746b3, [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
@alloc_4e14cd78bdbec6a05c0a69f074f6e6e2 = private unnamed_addr constant <{ [2 x i8] }> <{ [2 x i8] c"y\0A" }>, align 1
@alloc_09aeb8b385b1a180f24e3fab3612551e = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @alloc_4e14cd78bdbec6a05c0a69f074f6e6e2, [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@alloc_74a8de29fc721295a6918fe96b1f474d = private unnamed_addr constant <{ [2 x i8] }> <{ [2 x i8] c"x\0A" }>, align 1
@alloc_5d32448deb281587db4bc135111fac4b = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @alloc_74a8de29fc721295a6918fe96b1f474d, [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define void @driver(i32 noundef %x, i32 noundef %y) unnamed_addr #0 {
start:
  %_23.i = alloca %"core::fmt::Arguments<'_>", align 8
  %_19.i = alloca %"core::fmt::Arguments<'_>", align 8
  %_10.i = alloca %"core::fmt::Arguments<'_>", align 8
  %_512.i = icmp sgt i32 %x, 0
  %_713.i = icmp sgt i32 %y, 0
  %_4.014.i = or i1 %_512.i, %_713.i
  br i1 %_4.014.i, label %bb5.lr.ph.i, label %_ZN6driver3src6driver6driver17h4d618a55c446bf3aE.exit

bb5.lr.ph.i:                                      ; preds = %start
  %0 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_10.i, i64 0, i32 1
  %1 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_10.i, i64 0, i32 1, i32 1
  %2 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_10.i, i64 0, i32 2
  %3 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_10.i, i64 0, i32 2, i32 1
  %4 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_19.i, i64 0, i32 1
  %5 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_19.i, i64 0, i32 1, i32 1
  %6 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_19.i, i64 0, i32 2
  %7 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_19.i, i64 0, i32 2, i32 1
  %8 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_23.i, i64 0, i32 1
  %9 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_23.i, i64 0, i32 1, i32 1
  %10 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_23.i, i64 0, i32 2
  %11 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_23.i, i64 0, i32 2, i32 1
  br label %bb5.i

bb5.i:                                            ; preds = %bb27.i, %bb5.lr.ph.i
  %x.016.i = phi i32 [ %x, %bb5.lr.ph.i ], [ %x.1.lcssa.lcssa.i, %bb27.i ]
  %y.015.i = phi i32 [ %y, %bb5.lr.ph.i ], [ %y.2.i, %bb27.i ]
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_10.i)
  store ptr @alloc_22df82711505dde7dfa7099b1f3b194d, ptr %0, align 8, !alias.scope !2, !noalias !5
  store i64 1, ptr %1, align 8, !alias.scope !2, !noalias !5
  store ptr null, ptr %_10.i, align 8, !alias.scope !2, !noalias !5
  store ptr @alloc_513570631223a12912d85da2bec3b15a, ptr %2, align 8, !alias.scope !2, !noalias !5
  store i64 0, ptr %3, align 8, !alias.scope !2, !noalias !5
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_10.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_10.i)
  %12 = icmp ne i32 %x.016.i, 1
  %_14.i = icmp ne i32 %y.015.i, 4
  %_12.0.not.i = select i1 %12, i1 true, i1 %_14.i
  br i1 %_12.0.not.i, label %bb14.preheader.i, label %bb22.peel.i

bb14.preheader.i:                                 ; preds = %bb5.i
  %_16.peel.i = icmp sgt i32 %x.016.i, 0
  br i1 %_16.peel.i, label %bb17.peel.i, label %bb15.peel.i

bb17.peel.i:                                      ; preds = %bb14.preheader.i
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_19.i)
  store ptr @alloc_5d32448deb281587db4bc135111fac4b, ptr %4, align 8, !alias.scope !7, !noalias !10
  store i64 1, ptr %5, align 8, !alias.scope !7, !noalias !10
  store ptr null, ptr %_19.i, align 8, !alias.scope !7, !noalias !10
  store ptr @alloc_513570631223a12912d85da2bec3b15a, ptr %6, align 8, !alias.scope !7, !noalias !10
  store i64 0, ptr %7, align 8, !alias.scope !7, !noalias !10
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_19.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_19.i)
  %13 = add nsw i32 %x.016.i, -1
  br label %bb15.peel.i

bb15.peel.i:                                      ; preds = %bb17.peel.i, %bb14.preheader.i
  %x.1.lcssa.peel.i = phi i32 [ %x.016.i, %bb14.preheader.i ], [ %13, %bb17.peel.i ]
  %14 = icmp eq i32 %y.015.i, 0
  br i1 %14, label %bb27.i, label %bb22.peel.i

bb22.peel.i:                                      ; preds = %bb15.peel.i, %bb5.i
  %x.1.lcssa.peel26.i = phi i32 [ %x.1.lcssa.peel.i, %bb15.peel.i ], [ 1, %bb5.i ]
  %y.1.ph2225.i = phi i32 [ %y.015.i, %bb15.peel.i ], [ 4, %bb5.i ]
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_23.i)
  store ptr @alloc_09aeb8b385b1a180f24e3fab3612551e, ptr %8, align 8, !alias.scope !12, !noalias !15
  store i64 1, ptr %9, align 8, !alias.scope !12, !noalias !15
  store ptr null, ptr %_23.i, align 8, !alias.scope !12, !noalias !15
  store ptr @alloc_513570631223a12912d85da2bec3b15a, ptr %10, align 8, !alias.scope !12, !noalias !15
  store i64 0, ptr %11, align 8, !alias.scope !12, !noalias !15
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_23.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_23.i)
  %15 = add i32 %y.1.ph2225.i, -1
  %_25.peel.i = icmp slt i32 %x.1.lcssa.peel26.i, 3
  br i1 %_25.peel.i, label %bb14.outer.i, label %bb27.i

bb14.outer.i:                                     ; preds = %bb22.i, %bb22.peel.i
  %y.1.ph9.i = phi i32 [ %17, %bb22.i ], [ %15, %bb22.peel.i ]
  %x.1.ph10.i = phi i32 [ %x.1.lcssa.i, %bb22.i ], [ %x.1.lcssa.peel26.i, %bb22.peel.i ]
  %_16.i = icmp sgt i32 %x.1.ph10.i, 0
  br i1 %_16.i, label %bb17.i, label %bb15.i

bb15.i:                                           ; preds = %bb17.i, %bb14.outer.i
  %x.1.lcssa.i = phi i32 [ %x.1.ph10.i, %bb14.outer.i ], [ %18, %bb17.i ]
  %16 = icmp eq i32 %y.1.ph9.i, 0
  br i1 %16, label %bb27.i, label %bb22.i

bb22.i:                                           ; preds = %bb15.i
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_23.i)
  store ptr @alloc_09aeb8b385b1a180f24e3fab3612551e, ptr %8, align 8, !alias.scope !12, !noalias !15
  store i64 1, ptr %9, align 8, !alias.scope !12, !noalias !15
  store ptr null, ptr %_23.i, align 8, !alias.scope !12, !noalias !15
  store ptr @alloc_513570631223a12912d85da2bec3b15a, ptr %10, align 8, !alias.scope !12, !noalias !15
  store i64 0, ptr %11, align 8, !alias.scope !12, !noalias !15
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_23.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_23.i)
  %17 = add i32 %y.1.ph9.i, -1
  br label %bb14.outer.i, !llvm.loop !17

bb27.i:                                           ; preds = %bb15.i, %bb22.peel.i, %bb15.peel.i
  %x.1.lcssa.lcssa.i = phi i32 [ %x.1.lcssa.peel.i, %bb15.peel.i ], [ %x.1.lcssa.peel26.i, %bb22.peel.i ], [ %x.1.lcssa.i, %bb15.i ]
  %y.2.i = phi i32 [ 0, %bb15.peel.i ], [ %15, %bb22.peel.i ], [ 0, %bb15.i ]
  %_5.i = icmp sgt i32 %x.1.lcssa.lcssa.i, 0
  %_7.i = icmp sgt i32 %y.2.i, 0
  %_4.0.i = select i1 %_5.i, i1 true, i1 %_7.i
  br i1 %_4.0.i, label %bb5.i, label %_ZN6driver3src6driver6driver17h4d618a55c446bf3aE.exit

bb17.i:                                           ; preds = %bb14.outer.i
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_19.i)
  store ptr @alloc_5d32448deb281587db4bc135111fac4b, ptr %4, align 8, !alias.scope !7, !noalias !10
  store i64 1, ptr %5, align 8, !alias.scope !7, !noalias !10
  store ptr null, ptr %_19.i, align 8, !alias.scope !7, !noalias !10
  store ptr @alloc_513570631223a12912d85da2bec3b15a, ptr %6, align 8, !alias.scope !7, !noalias !10
  store i64 0, ptr %7, align 8, !alias.scope !7, !noalias !10
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_19.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_19.i)
  %18 = add nsw i32 %x.1.ph10.i, -1
  br label %bb15.i

_ZN6driver3src6driver6driver17h4d618a55c446bf3aE.exit: ; preds = %bb27.i, %start
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef readonly dereferenceable(48)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!3}
!3 = distinct !{!3, !4, !"_ZN4core3fmt9Arguments9new_const17h00a508d8cf4830ceE: argument 0"}
!4 = distinct !{!4, !"_ZN4core3fmt9Arguments9new_const17h00a508d8cf4830ceE"}
!5 = !{!6}
!6 = distinct !{!6, !4, !"_ZN4core3fmt9Arguments9new_const17h00a508d8cf4830ceE: %pieces.0"}
!7 = !{!8}
!8 = distinct !{!8, !9, !"_ZN4core3fmt9Arguments9new_const17h00a508d8cf4830ceE: argument 0"}
!9 = distinct !{!9, !"_ZN4core3fmt9Arguments9new_const17h00a508d8cf4830ceE"}
!10 = !{!11}
!11 = distinct !{!11, !9, !"_ZN4core3fmt9Arguments9new_const17h00a508d8cf4830ceE: %pieces.0"}
!12 = !{!13}
!13 = distinct !{!13, !14, !"_ZN4core3fmt9Arguments9new_const17h00a508d8cf4830ceE: argument 0"}
!14 = distinct !{!14, !"_ZN4core3fmt9Arguments9new_const17h00a508d8cf4830ceE"}
!15 = !{!16}
!16 = distinct !{!16, !14, !"_ZN4core3fmt9Arguments9new_const17h00a508d8cf4830ceE: %pieces.0"}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.peeled.count", i32 1}
