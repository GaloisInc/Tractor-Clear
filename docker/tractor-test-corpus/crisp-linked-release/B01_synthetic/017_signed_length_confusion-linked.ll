; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"core::fmt::Arguments<'_>" = type { { ptr, i64 }, { ptr, i64 }, { ptr, i64 } }
%"alloc::borrow::Cow<'_, str>" = type { i64, [3 x i64] }
%"alloc::vec::Vec<u8>" = type { { i64, ptr }, i64 }
%"alloc::borrow::Cow<'_, str>::Owned" = type { [1 x i64], %"alloc::string::String" }
%"alloc::string::String" = type { %"alloc::vec::Vec<u8>" }
%"alloc::borrow::Cow<'_, str>::Borrowed" = type { [1 x i64], { ptr, i64 } }

@alloc_513570631223a12912d85da2bec3b15a = private unnamed_addr constant <{}> zeroinitializer, align 8
@alloc_00728171eaa7ec2c5a267f4bf25d4ac3 = private unnamed_addr constant <{ [13 x i8] }> <{ [13 x i8] c"src/driver.rs" }>, align 1
@alloc_49a1e817e911805af64bbc7efb390101 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc_4ed11f17954caf7854f80f02ae34907e = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc_513570631223a12912d85da2bec3b15a, [8 x i8] zeroinitializer, ptr @alloc_49a1e817e911805af64bbc7efb390101, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc_168723e81cc5988541d34dd0d45c3ffd = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_00728171eaa7ec2c5a267f4bf25d4ac3, [16 x i8] c"\0D\00\00\00\00\00\00\00%\00\00\00\09\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define void @driver(i32 noundef %data) unnamed_addr #0 {
start:
  %dest.i = alloca [100 x i8], align 1
  %source.i = alloca [100 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %source.i)
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %dest.i)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(100) %dest.i, i8 0, i64 100, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(99) %source.i, i8 65, i64 99, i1 false)
  %source.i.99.sroa_idx = getelementptr inbounds i8, ptr %source.i, i64 99
  store i8 0, ptr %source.i.99.sroa_idx, align 1
  %_15.i = icmp slt i32 %data, 100
  br i1 %_15.i, label %bb6.i, label %_ZN6driver3src6driver6driver17hc0bc6ac92c19e797E.exit

bb6.i:                                            ; preds = %start
  %n.i = sext i32 %data to i64
  %_9.i.i.i = icmp ugt i32 %data, 100
  br i1 %_9.i.i.i, label %bb3.i.i.i, label %bb8.i

bb3.i.i.i:                                        ; preds = %bb6.i
  tail call void @_ZN4core5slice5index24slice_end_index_len_fail17h63e54c65524702d3E(i64 noundef %n.i, i64 noundef 100, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_168723e81cc5988541d34dd0d45c3ffd) #13, !noalias !2
  unreachable

bb8.i:                                            ; preds = %bb6.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %dest.i, ptr nonnull align 1 %source.i, i64 %n.i, i1 false), !alias.scope !7
  %0 = getelementptr inbounds [100 x i8], ptr %dest.i, i64 0, i64 %n.i
  store i8 0, ptr %0, align 1
  br label %_ZN6driver3src6driver6driver17hc0bc6ac92c19e797E.exit

_ZN6driver3src6driver6driver17hc0bc6ac92c19e797E.exit: ; preds = %bb8.i, %start
  call fastcc void @_ZN6driver3src6driver10print_line17hefe604fbeb35bb21E(ptr noalias noundef nonnull readonly align 1 %dest.i, i64 noundef 100)
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %dest.i)
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %source.i)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice5index24slice_end_index_len_fail17h63e54c65524702d3E(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN6driver3src6driver10print_line17hefe604fbeb35bb21E(ptr noalias noundef nonnull readonly align 1 %line.0, i64 noundef %line.1) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %_22 = alloca [1 x { ptr, ptr }], align 8
  %_18 = alloca %"core::fmt::Arguments<'_>", align 8
  %s = alloca %"alloc::borrow::Cow<'_, str>", align 8
  %bytes = alloca %"alloc::vec::Vec<u8>", align 8
  %0 = getelementptr inbounds i8, ptr %line.0, i64 %line.1
  %_10.i13.i = icmp eq i64 %line.1, 0
  br i1 %_10.i13.i, label %.thread, label %bb7.i

bb7.i:                                            ; preds = %bb10.i, %start
  %i.015.i = phi i64 [ %_24.0.i, %bb10.i ], [ 0, %start ]
  %self1.i1214.i = phi ptr [ %2, %bb10.i ], [ %line.0, %start ]
  %.val.i = load i8, ptr %self1.i1214.i, align 1, !noalias !11, !noundef !14
  %1 = icmp eq i8 %.val.i, 0
  br i1 %1, label %3, label %bb10.i

bb10.i:                                           ; preds = %bb7.i
  %2 = getelementptr inbounds i8, ptr %self1.i1214.i, i64 1
  %_24.0.i = add nuw i64 %i.015.i, 1
  %_10.i.i = icmp eq ptr %2, %0
  br i1 %_10.i.i, label %.thread, label %bb7.i

.thread:                                          ; preds = %bb10.i, %start
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %bytes)
  br label %"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h7479efb3a80beccaE.exit"

3:                                                ; preds = %bb7.i
  %_20.i = icmp ult i64 %i.015.i, %line.1
  tail call void @llvm.assume(i1 %_20.i)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %bytes)
  br label %"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h7479efb3a80beccaE.exit"

"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h7479efb3a80beccaE.exit": ; preds = %3, %.thread
  %4 = phi i64 [ %line.1, %.thread ], [ %i.015.i, %3 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18)
  %_5.i.i.i = icmp eq i64 %4, 0
  br i1 %_5.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h5819d0e0bc90b406E.exit.i.i.thread.i.i", label %bb6.i.i.i

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h5819d0e0bc90b406E.exit.i.i.thread.i.i": ; preds = %"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h7479efb3a80beccaE.exit"
  store i64 0, ptr %bytes, align 8, !alias.scope !21
  %5 = getelementptr inbounds { i64, ptr }, ptr %bytes, i64 0, i32 1
  store ptr inttoptr (i64 1 to ptr), ptr %5, align 8, !alias.scope !21
  br label %"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h319363eb4dd2ecd0E.exit"

bb6.i.i.i:                                        ; preds = %"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h7479efb3a80beccaE.exit"
  %_5.i.i.i.i = icmp sgt i64 %4, -1
  %.sroa.2.0.i.i.i.i = zext i1 %_5.i.i.i.i to i64
  br i1 %_5.i.i.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h0ede5791e563b317E.exit.i.i.i", label %bb7.i.i.i

bb7.i.i.i:                                        ; preds = %bb6.i.i.i
  tail call void @_ZN5alloc7raw_vec17capacity_overflow17h485163a5bdbafde6E() #13, !noalias !21
  unreachable

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h0ede5791e563b317E.exit.i.i.i": ; preds = %bb6.i.i.i
  %6 = tail call noundef ptr @__rust_alloc(i64 noundef %4, i64 noundef %.sroa.2.0.i.i.i.i) #14, !noalias !21
  %7 = icmp eq ptr %6, null
  br i1 %7, label %bb17.i.i.i, label %bb3.i.i.i.i.i.preheader.i.i

bb17.i.i.i:                                       ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h0ede5791e563b317E.exit.i.i.i"
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h944707b833928a89E(i64 noundef %4, i64 noundef %.sroa.2.0.i.i.i.i) #13, !noalias !21
  unreachable

bb3.i.i.i.i.i.preheader.i.i:                      ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h0ede5791e563b317E.exit.i.i.i"
  store i64 %4, ptr %bytes, align 8, !alias.scope !21
  %8 = getelementptr inbounds { i64, ptr }, ptr %bytes, i64 0, i32 1
  store ptr %6, ptr %8, align 8, !alias.scope !21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %6, ptr nonnull align 1 %line.0, i64 %4, i1 false), !noalias !28
  br label %"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h319363eb4dd2ecd0E.exit"

"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h319363eb4dd2ecd0E.exit": ; preds = %bb3.i.i.i.i.i.preheader.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h5819d0e0bc90b406E.exit.i.i.thread.i.i"
  %_1.val1.i = phi ptr [ inttoptr (i64 1 to ptr), %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h5819d0e0bc90b406E.exit.i.i.thread.i.i" ], [ %6, %bb3.i.i.i.i.i.preheader.i.i ]
  %9 = getelementptr inbounds %"alloc::vec::Vec<u8>", ptr %bytes, i64 0, i32 1
  store i64 %4, ptr %9, align 8, !alias.scope !35, !noalias !36
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %s)
  invoke void @_ZN5alloc6string6String15from_utf8_lossy17ha1c038adfffc592eE(ptr noalias nocapture noundef nonnull sret(%"alloc::borrow::Cow<'_, str>") dereferenceable(32) %s, ptr noalias noundef nonnull readonly align 1 %_1.val1.i, i64 noundef %4)
          to label %bb3 unwind label %cleanup

bb8:                                              ; preds = %cleanup5, %cleanup
  %.pn = phi { ptr, i32 } [ %10, %cleanup ], [ %11, %cleanup5 ]
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h2f3ab2678dd910f2E"(ptr noundef nonnull %bytes) #15
          to label %bb9 unwind label %terminate

cleanup:                                          ; preds = %"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h319363eb4dd2ecd0E.exit"
  %10 = landingpad { ptr, i32 }
          cleanup
  br label %bb8

cleanup5:                                         ; preds = %bb3
  %11 = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h84e8bf7bd79c0738E"(ptr noundef nonnull %s) #15
  br label %bb8

bb3:                                              ; preds = %"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h319363eb4dd2ecd0E.exit"
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_18)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_22)
  store ptr %s, ptr %_22, align 8
  %12 = getelementptr inbounds { ptr, ptr }, ptr %_22, i64 0, i32 1
  store ptr @"_ZN66_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h027a3c0aef3dfa13E", ptr %12, align 8
  %13 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_18, i64 0, i32 1
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %13, align 8, !alias.scope !37, !noalias !40
  %14 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_18, i64 0, i32 1, i32 1
  store i64 2, ptr %14, align 8, !alias.scope !37, !noalias !40
  store ptr null, ptr %_18, align 8, !alias.scope !37, !noalias !40
  %15 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_18, i64 0, i32 2
  store ptr %_22, ptr %15, align 8, !alias.scope !37, !noalias !40
  %16 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_18, i64 0, i32 2, i32 1
  store i64 1, ptr %16, align 8, !alias.scope !37, !noalias !40
  invoke void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_18)
          to label %bb4 unwind label %cleanup5

bb4:                                              ; preds = %bb3
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_18)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_22)
  %_2.i = load i64, ptr %s, align 8, !range !42, !noundef !14
  %17 = icmp eq i64 %_2.i, 0
  br i1 %17, label %bb5, label %bb2.i

bb2.i:                                            ; preds = %bb4
  %18 = getelementptr inbounds %"alloc::borrow::Cow<'_, str>::Owned", ptr %s, i64 0, i32 1
  %_1.val.i.i.i = load i64, ptr %18, align 8, !noundef !14
  %_3.i.i.i.i.i.i = icmp eq i64 %_1.val.i.i.i, 0
  br i1 %_3.i.i.i.i.i.i, label %bb5, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17he8928256f518c172E.exit.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17he8928256f518c172E.exit.i.i.i.i.i": ; preds = %bb2.i
  %19 = getelementptr inbounds %"alloc::borrow::Cow<'_, str>::Owned", ptr %s, i64 0, i32 1, i32 0, i32 0, i32 1
  %_1.val1.i.i.i = load ptr, ptr %19, align 8, !nonnull !14
  call void @__rust_dealloc(ptr noundef nonnull %_1.val1.i.i.i, i64 noundef %_1.val.i.i.i, i64 noundef 1) #14
  br label %bb5

terminate:                                        ; preds = %bb8
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4core9panicking19panic_cannot_unwind17h629e1da841ab4abfE() #16
  unreachable

bb5:                                              ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17he8928256f518c172E.exit.i.i.i.i.i", %bb2.i, %bb4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %s)
  %_3.i.i.i.i = icmp eq i64 %4, 0
  br i1 %_3.i.i.i.i, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h2f3ab2678dd910f2E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17he8928256f518c172E.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17he8928256f518c172E.exit.i.i.i": ; preds = %bb5
  call void @__rust_dealloc(ptr noundef nonnull %_1.val1.i, i64 noundef %4, i64 noundef 1) #14
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h2f3ab2678dd910f2E.exit"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h2f3ab2678dd910f2E.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17he8928256f518c172E.exit.i.i.i", %bb5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %bytes)
  ret void

bb9:                                              ; preds = %bb8
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nonlazybind uwtable
declare noundef i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #6

; Function Attrs: noreturn nonlazybind uwtable
declare void @_ZN5alloc7raw_vec17capacity_overflow17h485163a5bdbafde6E() unnamed_addr #7

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @__rust_alloc(i64 noundef, i64 allocalign noundef) unnamed_addr #8

; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_ZN5alloc5alloc18handle_alloc_error17h944707b833928a89E(i64 noundef, i64 noundef) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare void @_ZN5alloc6string6String15from_utf8_lossy17ha1c038adfffc592eE(ptr noalias nocapture noundef sret(%"alloc::borrow::Cow<'_, str>") dereferenceable(32), ptr noalias noundef nonnull readonly align 1, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h2f3ab2678dd910f2E"(ptr nocapture noundef readonly %_1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb4:
  %_1.val = load i64, ptr %_1, align 8, !noundef !14
  %_3.i.i.i = icmp eq i64 %_1.val, 0
  br i1 %_3.i.i.i, label %"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h799fd6c75ecaaf5eE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17he8928256f518c172E.exit.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17he8928256f518c172E.exit.i.i": ; preds = %bb4
  %0 = getelementptr i8, ptr %_1, i64 8
  %_1.val1 = load ptr, ptr %0, align 8, !nonnull !14
  tail call void @__rust_dealloc(ptr noundef nonnull %_1.val1, i64 noundef %_1.val, i64 noundef 1) #14
  br label %"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h799fd6c75ecaaf5eE.exit"

"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h799fd6c75ecaaf5eE.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17he8928256f518c172E.exit.i.i", %bb4
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h84e8bf7bd79c0738E"(ptr nocapture noundef readonly %_1) unnamed_addr #10 personality ptr @rust_eh_personality {
start:
  %_2 = load i64, ptr %_1, align 8, !range !42, !noundef !14
  %0 = icmp eq i64 %_2, 0
  br i1 %0, label %bb1, label %bb2

bb1:                                              ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17he8928256f518c172E.exit.i.i.i.i", %bb2, %start
  ret void

bb2:                                              ; preds = %start
  %1 = getelementptr inbounds %"alloc::borrow::Cow<'_, str>::Owned", ptr %_1, i64 0, i32 1
  %_1.val.i.i = load i64, ptr %1, align 8, !noundef !14
  %_3.i.i.i.i.i = icmp eq i64 %_1.val.i.i, 0
  br i1 %_3.i.i.i.i.i, label %bb1, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17he8928256f518c172E.exit.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17he8928256f518c172E.exit.i.i.i.i": ; preds = %bb2
  %2 = getelementptr %"alloc::borrow::Cow<'_, str>::Owned", ptr %_1, i64 0, i32 1, i32 0, i32 0, i32 1
  %_1.val1.i.i = load ptr, ptr %2, align 8, !nonnull !14
  tail call void @__rust_dealloc(ptr noundef nonnull %_1.val1.i.i, i64 noundef %_1.val.i.i, i64 noundef 1) #14
  br label %bb1
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN66_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h027a3c0aef3dfa13E"(ptr noalias nocapture noundef readonly align 8 dereferenceable(32) %self, ptr noalias noundef align 8 dereferenceable(64) %f) unnamed_addr #0 {
start:
  %_3 = load i64, ptr %self, align 8, !range !42, !noundef !14
  %trunc.not = icmp eq i64 %_3, 0
  %b = getelementptr inbounds %"alloc::borrow::Cow<'_, str>::Borrowed", ptr %self, i64 0, i32 1
  %b.val = load ptr, ptr %b, align 8
  %0 = getelementptr %"alloc::borrow::Cow<'_, str>::Borrowed", ptr %self, i64 0, i32 1, i32 1
  %1 = getelementptr %"alloc::borrow::Cow<'_, str>::Owned", ptr %self, i64 0, i32 1, i32 0, i32 0, i32 1
  %o.val = load ptr, ptr %1, align 8
  %2 = getelementptr %"alloc::borrow::Cow<'_, str>::Owned", ptr %self, i64 0, i32 1, i32 0, i32 1
  %b.val.sink = select i1 %trunc.not, ptr %b.val, ptr %o.val
  %.val = load i64, ptr %0, align 8
  %.val3 = load i64, ptr %2, align 8
  %b.val1 = select i1 %trunc.not, i64 %.val, i64 %.val3
  %3 = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h3810e0e68cb69985E"(ptr noalias noundef nonnull readonly align 1 %b.val.sink, i64 noundef %b.val1, ptr noalias noundef nonnull align 8 dereferenceable(64) %f)
  ret i1 %3
}

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef readonly dereferenceable(48)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @__rust_dealloc(ptr allocptr noundef, i64 noundef, i64 noundef) unnamed_addr #11

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_ZN4core9panicking19panic_cannot_unwind17h629e1da841ab4abfE() unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h3810e0e68cb69985E"(ptr noalias noundef nonnull readonly align 1, i64 noundef, ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
define void @printLine(ptr noundef %line) unnamed_addr #0 {
start:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %bb1, label %bb4

bb1:                                              ; preds = %start
  tail call fastcc void @_ZN6driver3src6driver10print_line17hefe604fbeb35bb21E(ptr noalias noundef nonnull readonly align 1 @alloc_513570631223a12912d85da2bec3b15a, i64 noundef 0)
  br label %bb8

bb4:                                              ; preds = %bb4, %start
  %len.0 = phi i64 [ %3, %bb4 ], [ 0, %start ]
  %1 = getelementptr inbounds i8, ptr %line, i64 %len.0
  %_5 = load i8, ptr %1, align 1, !noundef !14
  %2 = icmp eq i8 %_5, 0
  %3 = add i64 %len.0, 1
  br i1 %2, label %bb6, label %bb4

bb6:                                              ; preds = %bb4
  tail call fastcc void @_ZN6driver3src6driver10print_line17hefe604fbeb35bb21E(ptr noalias noundef nonnull readonly align 1 %line, i64 noundef %len.0)
  br label %bb8

bb8:                                              ; preds = %bb6, %bb1
  ret void
}

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #7 = { noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { noreturn }
attributes #14 = { nounwind }
attributes #15 = { noinline }
attributes #16 = { noinline noreturn nounwind }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!3, !5}
!3 = distinct !{!3, !4, !"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hc44c333bdd97ad1eE: %slice.0"}
!4 = distinct !{!4, !"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hc44c333bdd97ad1eE"}
!5 = distinct !{!5, !6, !"_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hb1e4f543ab6168dfE: %slice.0"}
!6 = distinct !{!6, !"_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hb1e4f543ab6168dfE"}
!7 = !{!8, !10}
!8 = distinct !{!8, !9, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h92e3d33ef814df4bE: %self.0"}
!9 = distinct !{!9, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h92e3d33ef814df4bE"}
!10 = distinct !{!10, !9, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h92e3d33ef814df4bE: %src.0"}
!11 = !{!12}
!12 = distinct !{!12, !13, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8position17h5bbd106beb73a5b3E: %self"}
!13 = distinct !{!13, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8position17h5bbd106beb73a5b3E"}
!14 = !{}
!15 = !{!16}
!16 = distinct !{!16, !17, !"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h319363eb4dd2ecd0E: argument 0"}
!17 = distinct !{!17, !"_ZN98_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter..SpecFromIter$LT$T$C$I$GT$$GT$9from_iter17h319363eb4dd2ecd0E"}
!18 = !{!19}
!19 = distinct !{!19, !20, !"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h35a94a8de6235e47E: %_10"}
!20 = distinct !{!20, !"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h35a94a8de6235e47E"}
!21 = !{!19, !16}
!22 = !{!23}
!23 = distinct !{!23, !24, !"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17haac338d5f26e2cbdE: %self"}
!24 = distinct !{!24, !"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17haac338d5f26e2cbdE"}
!25 = !{!26}
!26 = distinct !{!26, !27, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hcfbb606da60b8be3E: %self"}
!27 = distinct !{!27, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hcfbb606da60b8be3E"}
!28 = !{!29, !31, !33, !26, !23, !19, !16}
!29 = distinct !{!29, !30, !"_ZN4core4iter6traits8iterator8Iterator4fold17h41ae0d074e36c587E: %f"}
!30 = distinct !{!30, !"_ZN4core4iter6traits8iterator8Iterator4fold17h41ae0d074e36c587E"}
!31 = distinct !{!31, !32, !"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h99735706102f6616E: %g"}
!32 = distinct !{!32, !"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h99735706102f6616E"}
!33 = distinct !{!33, !34, !"_ZN4core4iter6traits8iterator8Iterator8for_each17hb88b0944edc53072E: %f"}
!34 = distinct !{!34, !"_ZN4core4iter6traits8iterator8Iterator8for_each17hb88b0944edc53072E"}
!35 = !{!26, !23, !19, !16}
!36 = !{!29, !31, !33}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!39 = distinct !{!39, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!40 = !{!41}
!41 = distinct !{!41, !39, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!42 = !{i64 0, i64 2}
