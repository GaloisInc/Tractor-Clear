; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"core::fmt::Arguments<'_>" = type { { ptr, i64 }, { ptr, i64 }, { ptr, i64 } }

@alloc_513570631223a12912d85da2bec3b15a = private unnamed_addr constant <{}> zeroinitializer, align 8
@alloc_49a1e817e911805af64bbc7efb390101 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc_4ed11f17954caf7854f80f02ae34907e = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc_513570631223a12912d85da2bec3b15a, [8 x i8] zeroinitializer, ptr @alloc_49a1e817e911805af64bbc7efb390101, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc_228f8a84b97c4f1d04abc729b14c0b5d = private unnamed_addr constant <{ [24 x i8] }> <{ [24 x i8] c"null pointer dereference" }>, align 1
@alloc_8a9457b7e87509907780f539c8d4eb86 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @alloc_228f8a84b97c4f1d04abc729b14c0b5d, [8 x i8] c"\18\00\00\00\00\00\00\00" }>, align 8
@alloc_00728171eaa7ec2c5a267f4bf25d4ac3 = private unnamed_addr constant <{ [13 x i8] }> <{ [13 x i8] c"src/driver.rs" }>, align 1
@alloc_f935cad2aba8e0adade24ff99a38ed26 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_00728171eaa7ec2c5a267f4bf25d4ac3, [16 x i8] c"\0D\00\00\00\00\00\00\00\07\00\00\00\11\00\00\00" }>, align 8

; Function Attrs: noreturn nonlazybind uwtable
define void @bad() unnamed_addr #0 {
start:
  %_6.i.i = alloca %"core::fmt::Arguments<'_>", align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_6.i.i), !noalias !2
  %0 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_6.i.i, i64 0, i32 1
  store ptr @alloc_8a9457b7e87509907780f539c8d4eb86, ptr %0, align 8, !alias.scope !5, !noalias !2
  %1 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_6.i.i, i64 0, i32 1, i32 1
  store i64 1, ptr %1, align 8, !alias.scope !5, !noalias !2
  store ptr null, ptr %_6.i.i, align 8, !alias.scope !5, !noalias !2
  %2 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_6.i.i, i64 0, i32 2
  store ptr @alloc_513570631223a12912d85da2bec3b15a, ptr %2, align 8, !alias.scope !5, !noalias !2
  %3 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_6.i.i, i64 0, i32 2, i32 1
  store i64 0, ptr %3, align 8, !alias.scope !5, !noalias !2
  call void @_ZN4core9panicking9panic_fmt17h8ed9ca1959946403E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_6.i.i, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_f935cad2aba8e0adade24ff99a38ed26) #5, !noalias !2
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking9panic_fmt17h8ed9ca1959946403E(ptr noalias nocapture noundef readonly dereferenceable(48), ptr noalias noundef readonly align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
define void @driver(i32 noundef %use_good) unnamed_addr #3 {
start:
  %_13.i.i.i = alloca [1 x { ptr, ptr }], align 8
  %_9.i.i.i = alloca %"core::fmt::Arguments<'_>", align 8
  %value.i.i.i = alloca i32, align 4
  %_6.i.i.i = alloca %"core::fmt::Arguments<'_>", align 8
  %0 = icmp eq i32 %use_good, 0
  br i1 %0, label %bb2.i, label %_ZN6driver3src6driver6driver17hc0bc6ac92c19e797E.exit

bb2.i:                                            ; preds = %start
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_6.i.i.i), !noalias !8
  %1 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_6.i.i.i, i64 0, i32 1
  store ptr @alloc_8a9457b7e87509907780f539c8d4eb86, ptr %1, align 8, !alias.scope !11, !noalias !8
  %2 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_6.i.i.i, i64 0, i32 1, i32 1
  store i64 1, ptr %2, align 8, !alias.scope !11, !noalias !8
  store ptr null, ptr %_6.i.i.i, align 8, !alias.scope !11, !noalias !8
  %3 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_6.i.i.i, i64 0, i32 2
  store ptr @alloc_513570631223a12912d85da2bec3b15a, ptr %3, align 8, !alias.scope !11, !noalias !8
  %4 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_6.i.i.i, i64 0, i32 2, i32 1
  store i64 0, ptr %4, align 8, !alias.scope !11, !noalias !8
  call void @_ZN4core9panicking9panic_fmt17h8ed9ca1959946403E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_6.i.i.i, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_f935cad2aba8e0adade24ff99a38ed26) #5, !noalias !8
  unreachable

_ZN6driver3src6driver6driver17hc0bc6ac92c19e797E.exit: ; preds = %start
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i.i), !noalias !14
  store i32 5, ptr %value.i.i.i, align 4, !noalias !14
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_9.i.i.i), !noalias !14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_13.i.i.i), !noalias !14
  store ptr %value.i.i.i, ptr %_13.i.i.i, align 8, !noalias !14
  %5 = getelementptr inbounds { ptr, ptr }, ptr %_13.i.i.i, i64 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %5, align 8, !noalias !14
  %6 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_9.i.i.i, i64 0, i32 1
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %6, align 8, !alias.scope !17, !noalias !20
  %7 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_9.i.i.i, i64 0, i32 1, i32 1
  store i64 2, ptr %7, align 8, !alias.scope !17, !noalias !20
  store ptr null, ptr %_9.i.i.i, align 8, !alias.scope !17, !noalias !20
  %8 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_9.i.i.i, i64 0, i32 2
  store ptr %_13.i.i.i, ptr %8, align 8, !alias.scope !17, !noalias !20
  %9 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_9.i.i.i, i64 0, i32 2, i32 1
  store i64 1, ptr %9, align 8, !alias.scope !17, !noalias !20
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_9.i.i.i), !noalias !14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_9.i.i.i), !noalias !14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_13.i.i.i), !noalias !14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i.i), !noalias !14
  ret void
}

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE"(ptr noalias noundef readonly align 4 dereferenceable(4), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef readonly dereferenceable(48)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nonlazybind uwtable
define void @good() unnamed_addr #3 {
start:
  %_13.i.i = alloca [1 x { ptr, ptr }], align 8
  %_9.i.i = alloca %"core::fmt::Arguments<'_>", align 8
  %value.i.i = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i), !noalias !22
  store i32 5, ptr %value.i.i, align 4, !noalias !22
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_9.i.i), !noalias !22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_13.i.i), !noalias !22
  store ptr %value.i.i, ptr %_13.i.i, align 8, !noalias !22
  %0 = getelementptr inbounds { ptr, ptr }, ptr %_13.i.i, i64 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %0, align 8, !noalias !22
  %1 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_9.i.i, i64 0, i32 1
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %1, align 8, !alias.scope !25, !noalias !28
  %2 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_9.i.i, i64 0, i32 1, i32 1
  store i64 2, ptr %2, align 8, !alias.scope !25, !noalias !28
  store ptr null, ptr %_9.i.i, align 8, !alias.scope !25, !noalias !28
  %3 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_9.i.i, i64 0, i32 2
  store ptr %_13.i.i, ptr %3, align 8, !alias.scope !25, !noalias !28
  %4 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_9.i.i, i64 0, i32 2, i32 1
  store i64 1, ptr %4, align 8, !alias.scope !25, !noalias !28
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_9.i.i), !noalias !22
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_9.i.i), !noalias !22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_13.i.i), !noalias !22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i), !noalias !22
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @printIntPtrLine(ptr noundef readonly %int_number) unnamed_addr #3 {
start:
  %_13.i = alloca [1 x { ptr, ptr }], align 8
  %_9.i = alloca %"core::fmt::Arguments<'_>", align 8
  %_6.i = alloca %"core::fmt::Arguments<'_>", align 8
  %value.i = alloca i32, align 4
  %0 = icmp eq ptr %int_number, null
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i), !noalias !30
  br i1 %0, label %bb1.i, label %_ZN6driver3src6driver18print_int_ptr_line17h86e91e2b01f16a0fE.exit

bb1.i:                                            ; preds = %start
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_6.i), !noalias !30
  %1 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_6.i, i64 0, i32 1
  store ptr @alloc_8a9457b7e87509907780f539c8d4eb86, ptr %1, align 8, !alias.scope !33, !noalias !30
  %2 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_6.i, i64 0, i32 1, i32 1
  store i64 1, ptr %2, align 8, !alias.scope !33, !noalias !30
  store ptr null, ptr %_6.i, align 8, !alias.scope !33, !noalias !30
  %3 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_6.i, i64 0, i32 2
  store ptr @alloc_513570631223a12912d85da2bec3b15a, ptr %3, align 8, !alias.scope !33, !noalias !30
  %4 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_6.i, i64 0, i32 2, i32 1
  store i64 0, ptr %4, align 8, !alias.scope !33, !noalias !30
  call void @_ZN4core9panicking9panic_fmt17h8ed9ca1959946403E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_6.i, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_f935cad2aba8e0adade24ff99a38ed26) #5, !noalias !30
  unreachable

_ZN6driver3src6driver18print_int_ptr_line17h86e91e2b01f16a0fE.exit: ; preds = %start
  %5 = load i32, ptr %int_number, align 4, !alias.scope !30, !noundef !36
  store i32 %5, ptr %value.i, align 4, !noalias !30
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_9.i), !noalias !30
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_13.i), !noalias !30
  store ptr %value.i, ptr %_13.i, align 8, !noalias !30
  %6 = getelementptr inbounds { ptr, ptr }, ptr %_13.i, i64 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %6, align 8, !noalias !30
  %7 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_9.i, i64 0, i32 1
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %7, align 8, !alias.scope !37, !noalias !40
  %8 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_9.i, i64 0, i32 1, i32 1
  store i64 2, ptr %8, align 8, !alias.scope !37, !noalias !40
  store ptr null, ptr %_9.i, align 8, !alias.scope !37, !noalias !40
  %9 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_9.i, i64 0, i32 2
  store ptr %_13.i, ptr %9, align 8, !alias.scope !37, !noalias !40
  %10 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_9.i, i64 0, i32 2, i32 1
  store i64 1, ptr %10, align 8, !alias.scope !37, !noalias !40
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_9.i), !noalias !30
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_9.i), !noalias !30
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_13.i), !noalias !30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i), !noalias !30
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #4

attributes #0 = { noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!3}
!3 = distinct !{!3, !4, !"_ZN6driver3src6driver18print_int_ptr_line17h86e91e2b01f16a0fE: argument 0"}
!4 = distinct !{!4, !"_ZN6driver3src6driver18print_int_ptr_line17h86e91e2b01f16a0fE"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"_ZN4core3fmt9Arguments9new_const17h00a508d8cf4830ceE: argument 0"}
!7 = distinct !{!7, !"_ZN4core3fmt9Arguments9new_const17h00a508d8cf4830ceE"}
!8 = !{!9}
!9 = distinct !{!9, !10, !"_ZN6driver3src6driver18print_int_ptr_line17h86e91e2b01f16a0fE: argument 0"}
!10 = distinct !{!10, !"_ZN6driver3src6driver18print_int_ptr_line17h86e91e2b01f16a0fE"}
!11 = !{!12}
!12 = distinct !{!12, !13, !"_ZN4core3fmt9Arguments9new_const17h00a508d8cf4830ceE: argument 0"}
!13 = distinct !{!13, !"_ZN4core3fmt9Arguments9new_const17h00a508d8cf4830ceE"}
!14 = !{!15}
!15 = distinct !{!15, !16, !"_ZN6driver3src6driver18print_int_ptr_line17h86e91e2b01f16a0fE: argument 0"}
!16 = distinct !{!16, !"_ZN6driver3src6driver18print_int_ptr_line17h86e91e2b01f16a0fE"}
!17 = !{!18}
!18 = distinct !{!18, !19, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!19 = distinct !{!19, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!20 = !{!21, !15}
!21 = distinct !{!21, !19, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!22 = !{!23}
!23 = distinct !{!23, !24, !"_ZN6driver3src6driver18print_int_ptr_line17h86e91e2b01f16a0fE: argument 0"}
!24 = distinct !{!24, !"_ZN6driver3src6driver18print_int_ptr_line17h86e91e2b01f16a0fE"}
!25 = !{!26}
!26 = distinct !{!26, !27, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!27 = distinct !{!27, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!28 = !{!29, !23}
!29 = distinct !{!29, !27, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!30 = !{!31}
!31 = distinct !{!31, !32, !"_ZN6driver3src6driver18print_int_ptr_line17h86e91e2b01f16a0fE: argument 0"}
!32 = distinct !{!32, !"_ZN6driver3src6driver18print_int_ptr_line17h86e91e2b01f16a0fE"}
!33 = !{!34}
!34 = distinct !{!34, !35, !"_ZN4core3fmt9Arguments9new_const17h00a508d8cf4830ceE: argument 0"}
!35 = distinct !{!35, !"_ZN4core3fmt9Arguments9new_const17h00a508d8cf4830ceE"}
!36 = !{}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!39 = distinct !{!39, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!40 = !{!41, !31}
!41 = distinct !{!41, !39, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
