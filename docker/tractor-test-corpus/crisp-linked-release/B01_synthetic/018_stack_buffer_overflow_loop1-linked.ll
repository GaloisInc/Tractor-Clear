; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"core::fmt::Arguments<'_>" = type { { ptr, i64 }, { ptr, i64 }, { ptr, i64 } }
%"core::result::Result<&str, core::str::error::Utf8Error>" = type { i64, [2 x i64] }
%"core::result::Result<&str, core::str::error::Utf8Error>::Ok" = type { [1 x i64], { ptr, i64 } }

@alloc_513570631223a12912d85da2bec3b15a = private unnamed_addr constant <{}> zeroinitializer, align 8
@alloc_49a1e817e911805af64bbc7efb390101 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc_4ed11f17954caf7854f80f02ae34907e = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc_513570631223a12912d85da2bec3b15a, [8 x i8] zeroinitializer, ptr @alloc_49a1e817e911805af64bbc7efb390101, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define void @bad() unnamed_addr #0 {
start:
  tail call fastcc void @_ZN6driver3src6driver3bad17hdd6fdb829307c5a9E()
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN6driver3src6driver3bad17hdd6fdb829307c5a9E() unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %_7.i = alloca [1 x { ptr, ptr }], align 8
  %_3.i = alloca %"core::fmt::Arguments<'_>", align 8
  %int_number.i = alloca i32, align 4
  %0 = tail call noundef dereferenceable_or_null(10) ptr @__rust_alloc_zeroed(i64 noundef 10, i64 noundef 1) #8, !noalias !2
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb17.i.i.i, label %_ZN5alloc3vec9from_elem17h584ec998a5c497c7E.exit

bb17.i.i.i:                                       ; preds = %start
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h944707b833928a89E(i64 noundef 10, i64 noundef 1) #9, !noalias !2
  unreachable

_ZN5alloc3vec9from_elem17h584ec998a5c497c7E.exit: ; preds = %start
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %0, i8 0, i64 10, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_number.i)
  store i32 0, ptr %int_number.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i)
  store ptr %int_number.i, ptr %_7.i, align 8
  %2 = getelementptr inbounds { ptr, ptr }, ptr %_7.i, i64 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %2, align 8
  %3 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 1
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %3, align 8, !alias.scope !7, !noalias !10
  %4 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 1, i32 1
  store i64 2, ptr %4, align 8, !alias.scope !7, !noalias !10
  store ptr null, ptr %_3.i, align 8, !alias.scope !7, !noalias !10
  %5 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 2
  store ptr %_7.i, ptr %5, align 8, !alias.scope !7, !noalias !10
  %6 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 2, i32 1
  store i64 1, ptr %6, align 8, !alias.scope !7, !noalias !10
  invoke void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h2f3ab2678dd910f2E.exit" unwind label %cleanup

cleanup:                                          ; preds = %_ZN5alloc3vec9from_elem17h584ec998a5c497c7E.exit
  %7 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h2f3ab2678dd910f2E"(i64 10, ptr nonnull %0) #10
          to label %bb14 unwind label %terminate

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h2f3ab2678dd910f2E.exit": ; preds = %_ZN5alloc3vec9from_elem17h584ec998a5c497c7E.exit
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_number.i)
  call void @__rust_dealloc(ptr noundef nonnull %0, i64 noundef 10, i64 noundef 1) #8
  ret void

terminate:                                        ; preds = %cleanup
  %8 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4core9panicking19panic_cannot_unwind17h629e1da841ab4abfE() #11
  unreachable

bb14:                                             ; preds = %cleanup
  resume { ptr, i32 } %7
}

; Function Attrs: nonlazybind uwtable
declare noundef i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable
declare noalias noundef ptr @__rust_alloc_zeroed(i64 noundef, i64 allocalign noundef) unnamed_addr #1

; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_ZN5alloc5alloc18handle_alloc_error17h944707b833928a89E(i64 noundef, i64 noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE"(ptr noalias noundef readonly align 4 dereferenceable(4), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef readonly dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h2f3ab2678dd910f2E"(i64 %_1.0.val, ptr %_1.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb4:
  %_3.i.i.i = icmp eq i64 %_1.0.val, 0
  br i1 %_3.i.i.i, label %"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h799fd6c75ecaaf5eE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17he8928256f518c172E.exit.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17he8928256f518c172E.exit.i.i": ; preds = %bb4
  %0 = icmp ne ptr %_1.8.val, null
  tail call void @llvm.assume(i1 %0)
  tail call void @__rust_dealloc(ptr noundef nonnull %_1.8.val, i64 noundef %_1.0.val, i64 noundef 1) #8
  br label %"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h799fd6c75ecaaf5eE.exit"

"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h799fd6c75ecaaf5eE.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17he8928256f518c172E.exit.i.i", %bb4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @__rust_dealloc(ptr allocptr noundef, i64 noundef, i64 noundef) unnamed_addr #5

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_ZN4core9panicking19panic_cannot_unwind17h629e1da841ab4abfE() unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nonlazybind uwtable
define void @driver(i32 noundef %use_good) unnamed_addr #0 {
start:
  %0 = icmp eq i32 %use_good, 0
  br i1 %0, label %bb2.i, label %bb1.i

bb2.i:                                            ; preds = %start
  tail call fastcc void @_ZN6driver3src6driver3bad17hdd6fdb829307c5a9E()
  br label %_ZN6driver3src6driver6driver17hc0bc6ac92c19e797E.exit

bb1.i:                                            ; preds = %start
  tail call fastcc void @_ZN6driver3src6driver4good17hd7c02baca5b7cd4eE()
  br label %_ZN6driver3src6driver6driver17hc0bc6ac92c19e797E.exit

_ZN6driver3src6driver6driver17hc0bc6ac92c19e797E.exit: ; preds = %bb1.i, %bb2.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN6driver3src6driver4good17hd7c02baca5b7cd4eE() unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %_7.i = alloca [1 x { ptr, ptr }], align 8
  %_3.i = alloca %"core::fmt::Arguments<'_>", align 8
  %int_number.i = alloca i32, align 4
  %0 = tail call noundef align 4 dereferenceable_or_null(40) ptr @__rust_alloc_zeroed(i64 noundef 40, i64 noundef 4) #8, !noalias !12
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb17.i4.i.i, label %_ZN5alloc3vec9from_elem17h068007bd146cd033E.exit

bb17.i4.i.i:                                      ; preds = %start
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h944707b833928a89E(i64 noundef 40, i64 noundef 4) #9, !noalias !12
  unreachable

_ZN5alloc3vec9from_elem17h068007bd146cd033E.exit: ; preds = %start
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_number.i)
  store i32 0, ptr %int_number.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i)
  store ptr %int_number.i, ptr %_7.i, align 8
  %2 = getelementptr inbounds { ptr, ptr }, ptr %_7.i, i64 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %2, align 8
  %3 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 1
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %3, align 8, !alias.scope !17, !noalias !20
  %4 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 1, i32 1
  store i64 2, ptr %4, align 8, !alias.scope !17, !noalias !20
  store ptr null, ptr %_3.i, align 8, !alias.scope !17, !noalias !20
  %5 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 2
  store ptr %_7.i, ptr %5, align 8, !alias.scope !17, !noalias !20
  %6 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 2, i32 1
  store i64 1, ptr %6, align 8, !alias.scope !17, !noalias !20
  invoke void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i)
          to label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h1ea6affc0d1df6d9E.exit" unwind label %cleanup

cleanup:                                          ; preds = %_ZN5alloc3vec9from_elem17h068007bd146cd033E.exit
  %7 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h1ea6affc0d1df6d9E"(i64 10, ptr nonnull %0) #10
          to label %bb11 unwind label %terminate

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h1ea6affc0d1df6d9E.exit": ; preds = %_ZN5alloc3vec9from_elem17h068007bd146cd033E.exit
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_number.i)
  call void @__rust_dealloc(ptr noundef nonnull %0, i64 noundef 40, i64 noundef 4) #8
  ret void

terminate:                                        ; preds = %cleanup
  %8 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4core9panicking19panic_cannot_unwind17h629e1da841ab4abfE() #11
  unreachable

bb11:                                             ; preds = %cleanup
  resume { ptr, i32 } %7
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h1ea6affc0d1df6d9E"(i64 %_1.0.val, ptr %_1.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb4:
  %_3.i.i.i = icmp eq i64 %_1.0.val, 0
  br i1 %_3.i.i.i, label %"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17hc2f09b1a14616f6fE.exit", label %bb2.i.i

bb2.i.i:                                          ; preds = %bb4
  %0 = icmp ne ptr %_1.8.val, null
  tail call void @llvm.assume(i1 %0)
  %1 = shl nuw i64 %_1.0.val, 2
  tail call void @__rust_dealloc(ptr noundef nonnull %_1.8.val, i64 noundef %1, i64 noundef 4) #8
  br label %"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17hc2f09b1a14616f6fE.exit"

"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17hc2f09b1a14616f6fE.exit": ; preds = %bb2.i.i, %bb4
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @good() unnamed_addr #0 {
start:
  tail call fastcc void @_ZN6driver3src6driver4good17hd7c02baca5b7cd4eE()
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @printIntLine(i32 noundef %int_number) unnamed_addr #0 {
start:
  %_7.i = alloca [1 x { ptr, ptr }], align 8
  %_3.i = alloca %"core::fmt::Arguments<'_>", align 8
  %int_number.i = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_number.i)
  store i32 %int_number, ptr %int_number.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i)
  store ptr %int_number.i, ptr %_7.i, align 8
  %0 = getelementptr inbounds { ptr, ptr }, ptr %_7.i, i64 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %0, align 8
  %1 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 1
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %1, align 8, !alias.scope !22, !noalias !25
  %2 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 1, i32 1
  store i64 2, ptr %2, align 8, !alias.scope !22, !noalias !25
  store ptr null, ptr %_3.i, align 8, !alias.scope !22, !noalias !25
  %3 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 2
  store ptr %_7.i, ptr %3, align 8, !alias.scope !22, !noalias !25
  %4 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 2, i32 1
  store i64 1, ptr %4, align 8, !alias.scope !22, !noalias !25
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_number.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @printLine(ptr noundef %line) unnamed_addr #0 {
start:
  %_7.i = alloca [1 x { ptr, ptr }], align 8
  %_3.i = alloca %"core::fmt::Arguments<'_>", align 8
  %line.i = alloca { ptr, i64 }, align 8
  %self = alloca %"core::result::Result<&str, core::str::error::Utf8Error>", align 8
  %0 = icmp eq ptr %line, null
  br i1 %0, label %bb4, label %bb2

bb2:                                              ; preds = %start
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %self)
  %len = tail call noundef i64 @_ZN4core3ffi5c_str4CStr8from_ptr9strlen_rt17h463292534e232c62E(ptr noundef nonnull %line)
  %len2 = add i64 %len, 1
  call void @_ZN4core3ffi5c_str4CStr6to_str17h7660279a6932e49cE(ptr noalias nocapture noundef nonnull sret(%"core::result::Result<&str, core::str::error::Utf8Error>") dereferenceable(24) %self, ptr noalias noundef nonnull readonly align 1 %line, i64 noundef %len2)
  %_29 = load i64, ptr %self, align 8, !range !27, !noundef !28
  %trunc.not = icmp eq i64 %_29, 0
  %1 = getelementptr inbounds %"core::result::Result<&str, core::str::error::Utf8Error>::Ok", ptr %self, i64 0, i32 1
  %t.0 = load ptr, ptr %1, align 8
  %2 = getelementptr inbounds %"core::result::Result<&str, core::str::error::Utf8Error>::Ok", ptr %self, i64 0, i32 1, i32 1
  %t.1 = load i64, ptr %2, align 8
  %_3.sroa.5.0 = select i1 %trunc.not, i64 %t.1, i64 0
  %_3.sroa.0.0 = select i1 %trunc.not, ptr %t.0, ptr @alloc_513570631223a12912d85da2bec3b15a
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %self)
  br label %bb4

bb4:                                              ; preds = %bb2, %start
  %line1.sroa.5.0 = phi i64 [ %_3.sroa.5.0, %bb2 ], [ 0, %start ]
  %line1.sroa.0.0 = phi ptr [ %_3.sroa.0.0, %bb2 ], [ @alloc_513570631223a12912d85da2bec3b15a, %start ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %line.i)
  store ptr %line1.sroa.0.0, ptr %line.i, align 8, !noalias !29
  %3 = getelementptr inbounds { ptr, i64 }, ptr %line.i, i64 0, i32 1
  store i64 %line1.sroa.5.0, ptr %3, align 8, !noalias !29
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i), !noalias !29
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i), !noalias !29
  store ptr %line.i, ptr %_7.i, align 8, !noalias !29
  %4 = getelementptr inbounds { ptr, ptr }, ptr %_7.i, i64 0, i32 1
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6ef0efaac15b9818E", ptr %4, align 8, !noalias !29
  %5 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 1
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %5, align 8, !alias.scope !32, !noalias !35
  %6 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 1, i32 1
  store i64 2, ptr %6, align 8, !alias.scope !32, !noalias !35
  store ptr null, ptr %_3.i, align 8, !alias.scope !32, !noalias !35
  %7 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 2
  store ptr %_7.i, ptr %7, align 8, !alias.scope !32, !noalias !35
  %8 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 2, i32 1
  store i64 1, ptr %8, align 8, !alias.scope !32, !noalias !35
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i), !noalias !29
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i), !noalias !29
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %line.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_ZN4core3ffi5c_str4CStr8from_ptr9strlen_rt17h463292534e232c62E(ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_ZN4core3ffi5c_str4CStr6to_str17h7660279a6932e49cE(ptr noalias nocapture noundef sret(%"core::result::Result<&str, core::str::error::Utf8Error>") dereferenceable(24), ptr noalias noundef nonnull readonly align 1, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6ef0efaac15b9818E"(ptr noalias nocapture noundef readonly align 8 dereferenceable(16) %self, ptr noalias noundef align 8 dereferenceable(64) %f) unnamed_addr #0 {
start:
  %_3.0 = load ptr, ptr %self, align 8, !nonnull !28, !align !37, !noundef !28
  %0 = getelementptr inbounds { ptr, i64 }, ptr %self, i64 0, i32 1
  %_3.1 = load i64, ptr %0, align 8, !noundef !28
  %1 = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h3810e0e68cb69985E"(ptr noalias noundef nonnull readonly align 1 %_3.0, i64 noundef %_3.1, ptr noalias noundef nonnull align 8 dereferenceable(64) %f)
  ret i1 %1
}

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h3810e0e68cb69985E"(ptr noalias noundef nonnull readonly align 1, i64 noundef, ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }
attributes #9 = { noreturn }
attributes #10 = { noinline }
attributes #11 = { noinline noreturn nounwind }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!3, !5}
!3 = distinct !{!3, !4, !"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h01361cbc20fc98efE: argument 0"}
!4 = distinct !{!4, !"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h01361cbc20fc98efE"}
!5 = distinct !{!5, !6, !"_ZN5alloc3vec9from_elem17h584ec998a5c497c7E: argument 0"}
!6 = distinct !{!6, !"_ZN5alloc3vec9from_elem17h584ec998a5c497c7E"}
!7 = !{!8}
!8 = distinct !{!8, !9, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!9 = distinct !{!9, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!10 = !{!11}
!11 = distinct !{!11, !9, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!12 = !{!13, !15}
!13 = distinct !{!13, !14, !"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h69cad298802d6354E: argument 0"}
!14 = distinct !{!14, !"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h69cad298802d6354E"}
!15 = distinct !{!15, !16, !"_ZN5alloc3vec9from_elem17h068007bd146cd033E: argument 0"}
!16 = distinct !{!16, !"_ZN5alloc3vec9from_elem17h068007bd146cd033E"}
!17 = !{!18}
!18 = distinct !{!18, !19, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!19 = distinct !{!19, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!20 = !{!21}
!21 = distinct !{!21, !19, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!22 = !{!23}
!23 = distinct !{!23, !24, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!24 = distinct !{!24, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!25 = !{!26}
!26 = distinct !{!26, !24, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!27 = !{i64 0, i64 2}
!28 = !{}
!29 = !{!30}
!30 = distinct !{!30, !31, !"_ZN6driver3src6driver10print_line17h310498be717b500eE: argument 0"}
!31 = distinct !{!31, !"_ZN6driver3src6driver10print_line17h310498be717b500eE"}
!32 = !{!33}
!33 = distinct !{!33, !34, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!34 = distinct !{!34, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!35 = !{!36, !30}
!36 = distinct !{!36, !34, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!37 = !{i64 1}
