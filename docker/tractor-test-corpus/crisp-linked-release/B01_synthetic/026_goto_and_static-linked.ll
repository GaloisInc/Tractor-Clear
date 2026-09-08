; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"core::fmt::Arguments<'_>" = type { { ptr, i64 }, { ptr, i64 }, { ptr, i64 } }

@alloc_513570631223a12912d85da2bec3b15a = private unnamed_addr constant <{}> zeroinitializer, align 8
@_ZN6driver3src6driver1Y17h9b8b142e31e5c40cE.0 = internal unnamed_addr global i32 123, align 4
@alloc_84938222c28dac8136b946b0c074ae44 = private unnamed_addr constant <{ [14 x i8] }> <{ [14 x i8] c"Error: x != 1\0A" }>, align 1
@alloc_65d56028f76e19bff0c4d7db7701500a = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @alloc_84938222c28dac8136b946b0c074ae44, [8 x i8] c"\0E\00\00\00\00\00\00\00" }>, align 8
@alloc_6f14ed89739726575ab1bd5b63c78771 = private unnamed_addr constant <{ [25 x i8] }> <{ [25 x i8] c"Error: x == 1 but y != 2\0A" }>, align 1
@alloc_e04ebae5db9542c31180a56e0ed01266 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @alloc_6f14ed89739726575ab1bd5b63c78771, [8 x i8] c"\19\00\00\00\00\00\00\00" }>, align 8
@alloc_ee2d94d07051c75aad28393cd6f18250 = private unnamed_addr constant <{ [37 x i8] }> <{ [37 x i8] c"Error: x == 1 and y == 2, but z != 3\0A" }>, align 1
@alloc_ea26afefd548aafcbb94c2389047fa17 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @alloc_ee2d94d07051c75aad28393cd6f18250, [8 x i8] c"%\00\00\00\00\00\00\00" }>, align 8
@alloc_8e0542553d6948f8bdfb7384d8afa4ca = private unnamed_addr constant <{ [17 x i8] }> <{ [17 x i8] c"Operation failed\0A" }>, align 1
@alloc_d24771c1195bc7ddef072b8afd24766a = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @alloc_8e0542553d6948f8bdfb7384d8afa4ca, [8 x i8] c"\11\00\00\00\00\00\00\00" }>, align 8
@alloc_5b3a26ab6f997cce3546e11bd4f46450 = private unnamed_addr constant <{ [4 x i8] }> <{ [4 x i8] c"Ok!\0A" }>, align 1
@alloc_ef0acae99fb22724055b3060d8af12fe = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @alloc_5b3a26ab6f997cce3546e11bd4f46450, [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@alloc_fa49c7126bbf089d50625d8296ac7a1f = private unnamed_addr constant <{ [8 x i8] }> <{ [8 x i8] c"Result: " }>, align 1
@alloc_49a1e817e911805af64bbc7efb390101 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc_74665b5fd3d0ddba4a88338d1591daf6 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc_fa49c7126bbf089d50625d8296ac7a1f, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @alloc_49a1e817e911805af64bbc7efb390101, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define void @driver(i32 noundef %x, i32 noundef %local_y, i32 noundef %z) unnamed_addr #0 {
start:
  %_20.i.i = alloca %"core::fmt::Arguments<'_>", align 8
  %_17.i.i = alloca %"core::fmt::Arguments<'_>", align 8
  %_14.i.i = alloca %"core::fmt::Arguments<'_>", align 8
  %_11.i.i = alloca %"core::fmt::Arguments<'_>", align 8
  %_5.i.i = alloca %"core::fmt::Arguments<'_>", align 8
  %_12.i = alloca [1 x { ptr, ptr }], align 8
  %_8.i = alloca %"core::fmt::Arguments<'_>", align 8
  %result.i = alloca i32, align 4
  store atomic i32 %local_y, ptr @_ZN6driver3src6driver1Y17h9b8b142e31e5c40cE.0 seq_cst, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %result.i)
  %0 = icmp eq i32 %x, 1
  br i1 %0, label %bb4.i.i, label %bb1.i.i

bb4.i.i:                                          ; preds = %start
  %1 = load atomic i32, ptr @_ZN6driver3src6driver1Y17h9b8b142e31e5c40cE.0 seq_cst, align 4
  %2 = icmp eq i32 %1, 2
  br i1 %2, label %bb8.i.i, label %bb5.i.i

bb1.i.i:                                          ; preds = %start
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_5.i.i)
  %3 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5.i.i, i64 0, i32 1
  store ptr @alloc_65d56028f76e19bff0c4d7db7701500a, ptr %3, align 8, !alias.scope !2, !noalias !5
  %4 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5.i.i, i64 0, i32 1, i32 1
  store i64 1, ptr %4, align 8, !alias.scope !2, !noalias !5
  store ptr null, ptr %_5.i.i, align 8, !alias.scope !2, !noalias !5
  %5 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5.i.i, i64 0, i32 2
  store ptr @alloc_513570631223a12912d85da2bec3b15a, ptr %5, align 8, !alias.scope !2, !noalias !5
  %6 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5.i.i, i64 0, i32 2, i32 1
  store i64 0, ptr %6, align 8, !alias.scope !2, !noalias !5
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_5.i.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_5.i.i)
  br label %bb16.i.i

bb16.i.i:                                         ; preds = %bb9.i.i, %bb5.i.i, %bb1.i.i
  %result.0.i.i = phi i32 [ 3, %bb9.i.i ], [ 2, %bb5.i.i ], [ 1, %bb1.i.i ]
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_20.i.i)
  %7 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_20.i.i, i64 0, i32 1
  store ptr @alloc_d24771c1195bc7ddef072b8afd24766a, ptr %7, align 8, !alias.scope !7, !noalias !10
  %8 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_20.i.i, i64 0, i32 1, i32 1
  store i64 1, ptr %8, align 8, !alias.scope !7, !noalias !10
  store ptr null, ptr %_20.i.i, align 8, !alias.scope !7, !noalias !10
  %9 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_20.i.i, i64 0, i32 2
  store ptr @alloc_513570631223a12912d85da2bec3b15a, ptr %9, align 8, !alias.scope !7, !noalias !10
  %10 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_20.i.i, i64 0, i32 2, i32 1
  store i64 0, ptr %10, align 8, !alias.scope !7, !noalias !10
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_20.i.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_20.i.i)
  br label %_ZN6driver3src6driver6driver17h05ae0307a2020c27E.exit

bb8.i.i:                                          ; preds = %bb4.i.i
  %11 = icmp eq i32 %z, 3
  br i1 %11, label %bb12.i.i, label %bb9.i.i

bb5.i.i:                                          ; preds = %bb4.i.i
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_11.i.i)
  %12 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_11.i.i, i64 0, i32 1
  store ptr @alloc_e04ebae5db9542c31180a56e0ed01266, ptr %12, align 8, !alias.scope !12, !noalias !15
  %13 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_11.i.i, i64 0, i32 1, i32 1
  store i64 1, ptr %13, align 8, !alias.scope !12, !noalias !15
  store ptr null, ptr %_11.i.i, align 8, !alias.scope !12, !noalias !15
  %14 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_11.i.i, i64 0, i32 2
  store ptr @alloc_513570631223a12912d85da2bec3b15a, ptr %14, align 8, !alias.scope !12, !noalias !15
  %15 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_11.i.i, i64 0, i32 2, i32 1
  store i64 0, ptr %15, align 8, !alias.scope !12, !noalias !15
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_11.i.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_11.i.i)
  br label %bb16.i.i

bb12.i.i:                                         ; preds = %bb8.i.i
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_17.i.i)
  %16 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_17.i.i, i64 0, i32 1
  store ptr @alloc_ef0acae99fb22724055b3060d8af12fe, ptr %16, align 8, !alias.scope !17, !noalias !20
  %17 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_17.i.i, i64 0, i32 1, i32 1
  store i64 1, ptr %17, align 8, !alias.scope !17, !noalias !20
  store ptr null, ptr %_17.i.i, align 8, !alias.scope !17, !noalias !20
  %18 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_17.i.i, i64 0, i32 2
  store ptr @alloc_513570631223a12912d85da2bec3b15a, ptr %18, align 8, !alias.scope !17, !noalias !20
  %19 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_17.i.i, i64 0, i32 2, i32 1
  store i64 0, ptr %19, align 8, !alias.scope !17, !noalias !20
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_17.i.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_17.i.i)
  br label %_ZN6driver3src6driver6driver17h05ae0307a2020c27E.exit

bb9.i.i:                                          ; preds = %bb8.i.i
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_14.i.i)
  %20 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_14.i.i, i64 0, i32 1
  store ptr @alloc_ea26afefd548aafcbb94c2389047fa17, ptr %20, align 8, !alias.scope !22, !noalias !25
  %21 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_14.i.i, i64 0, i32 1, i32 1
  store i64 1, ptr %21, align 8, !alias.scope !22, !noalias !25
  store ptr null, ptr %_14.i.i, align 8, !alias.scope !22, !noalias !25
  %22 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_14.i.i, i64 0, i32 2
  store ptr @alloc_513570631223a12912d85da2bec3b15a, ptr %22, align 8, !alias.scope !22, !noalias !25
  %23 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_14.i.i, i64 0, i32 2, i32 1
  store i64 0, ptr %23, align 8, !alias.scope !22, !noalias !25
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_14.i.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_14.i.i)
  br label %bb16.i.i

_ZN6driver3src6driver6driver17h05ae0307a2020c27E.exit: ; preds = %bb12.i.i, %bb16.i.i
  %.0.i.i = phi i32 [ 0, %bb12.i.i ], [ %result.0.i.i, %bb16.i.i ]
  store i32 %.0.i.i, ptr %result.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_8.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_12.i)
  store ptr %result.i, ptr %_12.i, align 8
  %24 = getelementptr inbounds { ptr, ptr }, ptr %_12.i, i64 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %24, align 8
  %25 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_8.i, i64 0, i32 1
  store ptr @alloc_74665b5fd3d0ddba4a88338d1591daf6, ptr %25, align 8, !alias.scope !27, !noalias !30
  %26 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_8.i, i64 0, i32 1, i32 1
  store i64 2, ptr %26, align 8, !alias.scope !27, !noalias !30
  store ptr null, ptr %_8.i, align 8, !alias.scope !27, !noalias !30
  %27 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_8.i, i64 0, i32 2
  store ptr %_12.i, ptr %27, align 8, !alias.scope !27, !noalias !30
  %28 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_8.i, i64 0, i32 2, i32 1
  store i64 1, ptr %28, align 8, !alias.scope !27, !noalias !30
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_8.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_8.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_12.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %result.i)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef readonly dereferenceable(48)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE"(ptr noalias noundef readonly align 4 dereferenceable(4), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

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
!17 = !{!18}
!18 = distinct !{!18, !19, !"_ZN4core3fmt9Arguments9new_const17h00a508d8cf4830ceE: argument 0"}
!19 = distinct !{!19, !"_ZN4core3fmt9Arguments9new_const17h00a508d8cf4830ceE"}
!20 = !{!21}
!21 = distinct !{!21, !19, !"_ZN4core3fmt9Arguments9new_const17h00a508d8cf4830ceE: %pieces.0"}
!22 = !{!23}
!23 = distinct !{!23, !24, !"_ZN4core3fmt9Arguments9new_const17h00a508d8cf4830ceE: argument 0"}
!24 = distinct !{!24, !"_ZN4core3fmt9Arguments9new_const17h00a508d8cf4830ceE"}
!25 = !{!26}
!26 = distinct !{!26, !24, !"_ZN4core3fmt9Arguments9new_const17h00a508d8cf4830ceE: %pieces.0"}
!27 = !{!28}
!28 = distinct !{!28, !29, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!29 = distinct !{!29, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!30 = !{!31}
!31 = distinct !{!31, !29, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
