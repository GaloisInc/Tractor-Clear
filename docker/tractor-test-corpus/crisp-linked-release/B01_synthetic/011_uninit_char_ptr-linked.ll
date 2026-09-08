; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"core::fmt::Arguments<'_>" = type { { ptr, i64 }, { ptr, i64 }, { ptr, i64 } }
%"alloc::borrow::Cow<'_, str>" = type { i64, [3 x i64] }
%"alloc::borrow::Cow<'_, str>::Borrowed" = type { [1 x i64], { ptr, i64 } }
%"alloc::borrow::Cow<'_, str>::Owned" = type { [1 x i64], %"alloc::string::String" }
%"alloc::string::String" = type { %"alloc::vec::Vec<u8>" }
%"alloc::vec::Vec<u8>" = type { { i64, ptr }, i64 }

@alloc_513570631223a12912d85da2bec3b15a = private unnamed_addr constant <{}> zeroinitializer, align 8
@alloc_49a1e817e911805af64bbc7efb390101 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc_4ed11f17954caf7854f80f02ae34907e = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc_513570631223a12912d85da2bec3b15a, [8 x i8] zeroinitializer, ptr @alloc_49a1e817e911805af64bbc7efb390101, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc_cf3ed130eaac04f7756610ea20f33fce = private unnamed_addr constant <{ [6 x i8] }> <{ [6 x i8] c"string" }>, align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @bad() unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @driver(i32 noundef %use_good) unnamed_addr #1 {
start:
  %_9.i.i.i = alloca [1 x { ptr, ptr }], align 8
  %_5.i.i.i = alloca %"core::fmt::Arguments<'_>", align 8
  %line1.i.i.i = alloca { ptr, i64 }, align 8
  %0 = icmp eq i32 %use_good, 0
  br i1 %0, label %_ZN6driver3src6driver6driver17hc0bc6ac92c19e797E.exit, label %bb1.i

bb1.i:                                            ; preds = %start
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %line1.i.i.i), !noalias !2
  store ptr @alloc_cf3ed130eaac04f7756610ea20f33fce, ptr %line1.i.i.i, align 8, !noalias !2
  %1 = getelementptr inbounds { ptr, i64 }, ptr %line1.i.i.i, i64 0, i32 1
  store i64 6, ptr %1, align 8, !noalias !2
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_5.i.i.i), !noalias !2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_9.i.i.i), !noalias !2
  store ptr %line1.i.i.i, ptr %_9.i.i.i, align 8, !noalias !2
  %2 = getelementptr inbounds { ptr, ptr }, ptr %_9.i.i.i, i64 0, i32 1
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6ef0efaac15b9818E", ptr %2, align 8, !noalias !2
  %3 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5.i.i.i, i64 0, i32 1
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %3, align 8, !alias.scope !5, !noalias !8
  %4 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5.i.i.i, i64 0, i32 1, i32 1
  store i64 2, ptr %4, align 8, !alias.scope !5, !noalias !8
  store ptr null, ptr %_5.i.i.i, align 8, !alias.scope !5, !noalias !8
  %5 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5.i.i.i, i64 0, i32 2
  store ptr %_9.i.i.i, ptr %5, align 8, !alias.scope !5, !noalias !8
  %6 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5.i.i.i, i64 0, i32 2, i32 1
  store i64 1, ptr %6, align 8, !alias.scope !5, !noalias !8
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_5.i.i.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_5.i.i.i), !noalias !2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_9.i.i.i), !noalias !2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %line1.i.i.i), !noalias !2
  br label %_ZN6driver3src6driver6driver17hc0bc6ac92c19e797E.exit

_ZN6driver3src6driver6driver17hc0bc6ac92c19e797E.exit: ; preds = %bb1.i, %start
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6ef0efaac15b9818E"(ptr noalias nocapture noundef readonly align 8 dereferenceable(16) %self, ptr noalias noundef align 8 dereferenceable(64) %f) unnamed_addr #1 {
start:
  %_3.0 = load ptr, ptr %self, align 8, !nonnull !10, !align !11, !noundef !10
  %0 = getelementptr inbounds { ptr, i64 }, ptr %self, i64 0, i32 1
  %_3.1 = load i64, ptr %0, align 8, !noundef !10
  %1 = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h3810e0e68cb69985E"(ptr noalias noundef nonnull readonly align 1 %_3.0, i64 noundef %_3.1, ptr noalias noundef nonnull align 8 dereferenceable(64) %f)
  ret i1 %1
}

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef readonly dereferenceable(48)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h3810e0e68cb69985E"(ptr noalias noundef nonnull readonly align 1, i64 noundef, ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
define void @good() unnamed_addr #1 {
start:
  %_9.i.i = alloca [1 x { ptr, ptr }], align 8
  %_5.i.i = alloca %"core::fmt::Arguments<'_>", align 8
  %line1.i.i = alloca { ptr, i64 }, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %line1.i.i), !noalias !12
  store ptr @alloc_cf3ed130eaac04f7756610ea20f33fce, ptr %line1.i.i, align 8, !noalias !12
  %0 = getelementptr inbounds { ptr, i64 }, ptr %line1.i.i, i64 0, i32 1
  store i64 6, ptr %0, align 8, !noalias !12
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_5.i.i), !noalias !12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_9.i.i), !noalias !12
  store ptr %line1.i.i, ptr %_9.i.i, align 8, !noalias !12
  %1 = getelementptr inbounds { ptr, ptr }, ptr %_9.i.i, i64 0, i32 1
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6ef0efaac15b9818E", ptr %1, align 8, !noalias !12
  %2 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5.i.i, i64 0, i32 1
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %2, align 8, !alias.scope !15, !noalias !18
  %3 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5.i.i, i64 0, i32 1, i32 1
  store i64 2, ptr %3, align 8, !alias.scope !15, !noalias !18
  store ptr null, ptr %_5.i.i, align 8, !alias.scope !15, !noalias !18
  %4 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5.i.i, i64 0, i32 2
  store ptr %_9.i.i, ptr %4, align 8, !alias.scope !15, !noalias !18
  %5 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5.i.i, i64 0, i32 2, i32 1
  store i64 1, ptr %5, align 8, !alias.scope !15, !noalias !18
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_5.i.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_5.i.i), !noalias !12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_9.i.i), !noalias !12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %line1.i.i), !noalias !12
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @printLine(ptr noundef %line) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_9.i = alloca [1 x { ptr, ptr }], align 8
  %_5.i = alloca %"core::fmt::Arguments<'_>", align 8
  %line1.i = alloca { ptr, i64 }, align 8
  %_4 = alloca %"alloc::borrow::Cow<'_, str>", align 8
  %0 = icmp eq ptr %line, null
  br i1 %0, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h4b3c4d86471e97f2E.exit", label %bb2

bb2:                                              ; preds = %start
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %_4)
  %len = tail call noundef i64 @_ZN4core3ffi5c_str4CStr8from_ptr9strlen_rt17h463292534e232c62E(ptr noundef nonnull %line)
  %len2 = add i64 %len, 1
  call void @"_ZN5alloc3ffi5c_str40_$LT$impl$u20$core..ffi..c_str..CStr$GT$15to_string_lossy17h874e78f30fcc0aedE"(ptr noalias nocapture noundef nonnull sret(%"alloc::borrow::Cow<'_, str>") dereferenceable(32) %_4, ptr noalias noundef nonnull readonly align 1 %line, i64 noundef %len2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23)
  %_2.i = load i64, ptr %_4, align 8, !range !25, !alias.scope !23, !noalias !20, !noundef !10
  %trunc.not.i = icmp eq i64 %_2.i, 0
  br i1 %trunc.not.i, label %bb3.i, label %bb1.i

bb3.i:                                            ; preds = %bb2
  %1 = getelementptr inbounds %"alloc::borrow::Cow<'_, str>::Borrowed", ptr %_4, i64 0, i32 1
  %borrowed.0.i = load ptr, ptr %1, align 8, !alias.scope !23, !noalias !20, !nonnull !10, !align !11, !noundef !10
  %2 = getelementptr inbounds %"alloc::borrow::Cow<'_, str>::Borrowed", ptr %_4, i64 0, i32 1, i32 1
  %borrowed.1.i = load i64, ptr %2, align 8, !alias.scope !23, !noalias !20, !noundef !10
  %_5.i.i.i.i.i = icmp eq i64 %borrowed.1.i, 0
  br i1 %_5.i.i.i.i.i, label %"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17he1a526e4ccb4ae4eE.exit.i", label %bb6.i.i.i.i.i

bb6.i.i.i.i.i:                                    ; preds = %bb3.i
  %_5.i.i.i.i.i.i = icmp sgt i64 %borrowed.1.i, -1
  %.sroa.2.0.i.i.i.i.i.i = zext i1 %_5.i.i.i.i.i.i to i64
  br i1 %_5.i.i.i.i.i.i, label %bb13.i.i.i.i.i, label %bb7.i.i.i.i.i

bb7.i.i.i.i.i:                                    ; preds = %bb6.i.i.i.i.i
  tail call void @_ZN5alloc7raw_vec17capacity_overflow17h485163a5bdbafde6E() #10, !noalias !26
  unreachable

bb13.i.i.i.i.i:                                   ; preds = %bb6.i.i.i.i.i
  %3 = tail call noundef ptr @__rust_alloc(i64 noundef %borrowed.1.i, i64 noundef %.sroa.2.0.i.i.i.i.i.i) #11, !noalias !26
  %4 = icmp eq ptr %3, null
  br i1 %4, label %bb17.i.i.i.i.i, label %"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17he1a526e4ccb4ae4eE.exit.i"

bb17.i.i.i.i.i:                                   ; preds = %bb13.i.i.i.i.i
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h944707b833928a89E(i64 noundef %borrowed.1.i, i64 noundef %.sroa.2.0.i.i.i.i.i.i) #10, !noalias !26
  unreachable

"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17he1a526e4ccb4ae4eE.exit.i": ; preds = %bb13.i.i.i.i.i, %bb3.i
  %.sroa.3.0.i.i.i.i.i = phi ptr [ %3, %bb13.i.i.i.i.i ], [ inttoptr (i64 1 to ptr), %bb3.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.3.0.i.i.i.i.i, ptr nonnull align 1 %borrowed.0.i, i64 %borrowed.1.i, i1 false)
  br label %bb6

bb1.i:                                            ; preds = %bb2
  %5 = getelementptr inbounds %"alloc::borrow::Cow<'_, str>::Owned", ptr %_4, i64 0, i32 1
  %_3.sroa.0.0.copyload = load i64, ptr %5, align 8, !alias.scope !36
  %_3.sroa.5.0..sroa_idx = getelementptr inbounds %"alloc::borrow::Cow<'_, str>::Owned", ptr %_4, i64 0, i32 1, i32 0, i32 0, i32 1
  %_3.sroa.5.0.copyload = load ptr, ptr %_3.sroa.5.0..sroa_idx, align 8, !alias.scope !36
  %_3.sroa.7.0..sroa_idx = getelementptr inbounds %"alloc::borrow::Cow<'_, str>::Owned", ptr %_4, i64 0, i32 1, i32 0, i32 1
  %_3.sroa.7.0.copyload = load i64, ptr %_3.sroa.7.0..sroa_idx, align 8, !alias.scope !36
  br label %bb6

cleanup:                                          ; preds = %bb1.i6
  %6 = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h4b3c4d86471e97f2E"(i64 %_3.sroa.0.0, ptr nonnull %_3.sroa.5.0) #12
  resume { ptr, i32 } %6

bb6:                                              ; preds = %bb1.i, %"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17he1a526e4ccb4ae4eE.exit.i"
  %_3.sroa.7.0 = phi i64 [ %borrowed.1.i, %"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17he1a526e4ccb4ae4eE.exit.i" ], [ %_3.sroa.7.0.copyload, %bb1.i ]
  %_3.sroa.5.0 = phi ptr [ %.sroa.3.0.i.i.i.i.i, %"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17he1a526e4ccb4ae4eE.exit.i" ], [ %_3.sroa.5.0.copyload, %bb1.i ]
  %_3.sroa.0.0 = phi i64 [ %borrowed.1.i, %"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17he1a526e4ccb4ae4eE.exit.i" ], [ %_3.sroa.0.0.copyload, %bb1.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %_4)
  %7 = icmp eq ptr %_3.sroa.5.0, null
  br i1 %7, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h4b3c4d86471e97f2E.exit", label %bb1.i6

bb1.i6:                                           ; preds = %bb6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %line1.i), !noalias !37
  store ptr %_3.sroa.5.0, ptr %line1.i, align 8, !noalias !37
  %8 = getelementptr inbounds { ptr, i64 }, ptr %line1.i, i64 0, i32 1
  store i64 %_3.sroa.7.0, ptr %8, align 8, !noalias !37
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_5.i), !noalias !37
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_9.i), !noalias !37
  store ptr %line1.i, ptr %_9.i, align 8, !noalias !37
  %9 = getelementptr inbounds { ptr, ptr }, ptr %_9.i, i64 0, i32 1
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6ef0efaac15b9818E", ptr %9, align 8, !noalias !37
  %10 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5.i, i64 0, i32 1
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %10, align 8, !alias.scope !40, !noalias !43
  %11 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5.i, i64 0, i32 1, i32 1
  store i64 2, ptr %11, align 8, !alias.scope !40, !noalias !43
  store ptr null, ptr %_5.i, align 8, !alias.scope !40, !noalias !43
  %12 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5.i, i64 0, i32 2
  store ptr %_9.i, ptr %12, align 8, !alias.scope !40, !noalias !43
  %13 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5.i, i64 0, i32 2, i32 1
  store i64 1, ptr %13, align 8, !alias.scope !40, !noalias !43
  invoke void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_5.i)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb1.i6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_5.i), !noalias !37
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_9.i), !noalias !37
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %line1.i), !noalias !37
  %_3.i.i.i.i.i.i = icmp eq i64 %_3.sroa.0.0, 0
  br i1 %_3.i.i.i.i.i.i, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h4b3c4d86471e97f2E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17he8928256f518c172E.exit.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17he8928256f518c172E.exit.i.i.i.i.i": ; preds = %bb7
  call void @__rust_dealloc(ptr noundef nonnull %_3.sroa.5.0, i64 noundef %_3.sroa.0.0, i64 noundef 1) #11
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h4b3c4d86471e97f2E.exit"

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h4b3c4d86471e97f2E.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17he8928256f518c172E.exit.i.i.i.i.i", %bb7, %bb6, %start
  ret void
}

; Function Attrs: nonlazybind uwtable
declare noundef i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_ZN4core3ffi5c_str4CStr8from_ptr9strlen_rt17h463292534e232c62E(ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @"_ZN5alloc3ffi5c_str40_$LT$impl$u20$core..ffi..c_str..CStr$GT$15to_string_lossy17h874e78f30fcc0aedE"(ptr noalias nocapture noundef sret(%"alloc::borrow::Cow<'_, str>") dereferenceable(32), ptr noalias noundef nonnull readonly align 1, i64 noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #3

; Function Attrs: noreturn nonlazybind uwtable
declare void @_ZN5alloc7raw_vec17capacity_overflow17h485163a5bdbafde6E() unnamed_addr #4

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @__rust_alloc(i64 noundef, i64 allocalign noundef) unnamed_addr #5

; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_ZN5alloc5alloc18handle_alloc_error17h944707b833928a89E(i64 noundef, i64 noundef) unnamed_addr #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h4b3c4d86471e97f2E"(i64 %_1.0.val, ptr %_1.8.val) unnamed_addr #8 personality ptr @rust_eh_personality {
start:
  %0 = icmp eq ptr %_1.8.val, null
  %_3.i.i.i.i.i = icmp eq i64 %_1.0.val, 0
  %or.cond = select i1 %0, i1 true, i1 %_3.i.i.i.i.i
  br i1 %or.cond, label %bb1, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17he8928256f518c172E.exit.i.i.i.i"

bb1:                                              ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17he8928256f518c172E.exit.i.i.i.i", %start
  ret void

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17he8928256f518c172E.exit.i.i.i.i": ; preds = %start
  tail call void @__rust_dealloc(ptr noundef nonnull %_1.8.val, i64 noundef %_1.0.val, i64 noundef 1) #11
  br label %bb1
}

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @__rust_dealloc(ptr allocptr noundef, i64 noundef, i64 noundef) unnamed_addr #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #4 = { noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { noreturn }
attributes #11 = { nounwind }
attributes #12 = { noinline }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!3}
!3 = distinct !{!3, !4, !"_ZN6driver3src6driver10print_line17h932c7747f0da3e5fE: argument 0"}
!4 = distinct !{!4, !"_ZN6driver3src6driver10print_line17h932c7747f0da3e5fE"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!7 = distinct !{!7, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!8 = !{!9, !3}
!9 = distinct !{!9, !7, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!10 = !{}
!11 = !{i64 1}
!12 = !{!13}
!13 = distinct !{!13, !14, !"_ZN6driver3src6driver10print_line17h932c7747f0da3e5fE: argument 0"}
!14 = distinct !{!14, !"_ZN6driver3src6driver10print_line17h932c7747f0da3e5fE"}
!15 = !{!16}
!16 = distinct !{!16, !17, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!17 = distinct !{!17, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!18 = !{!19, !13}
!19 = distinct !{!19, !17, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!20 = !{!21}
!21 = distinct !{!21, !22, !"_ZN5alloc6borrow12Cow$LT$B$GT$10into_owned17h0153338dcf64f136E: argument 0"}
!22 = distinct !{!22, !"_ZN5alloc6borrow12Cow$LT$B$GT$10into_owned17h0153338dcf64f136E"}
!23 = !{!24}
!24 = distinct !{!24, !22, !"_ZN5alloc6borrow12Cow$LT$B$GT$10into_owned17h0153338dcf64f136E: %self"}
!25 = !{i64 0, i64 2}
!26 = !{!27, !29, !30, !32, !33, !35, !21, !24}
!27 = distinct !{!27, !28, !"_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17hdcb3b2884da19e14E: %self"}
!28 = distinct !{!28, !"_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17hdcb3b2884da19e14E"}
!29 = distinct !{!29, !28, !"_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17hdcb3b2884da19e14E: %s.0"}
!30 = distinct !{!30, !31, !"_ZN5alloc5slice64_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$$u5b$T$u5d$$GT$8to_owned17hd52894607aaea70eE: argument 0"}
!31 = distinct !{!31, !"_ZN5alloc5slice64_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$$u5b$T$u5d$$GT$8to_owned17hd52894607aaea70eE"}
!32 = distinct !{!32, !31, !"_ZN5alloc5slice64_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$$u5b$T$u5d$$GT$8to_owned17hd52894607aaea70eE: %self.0"}
!33 = distinct !{!33, !34, !"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17he1a526e4ccb4ae4eE: argument 0"}
!34 = distinct !{!34, !"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17he1a526e4ccb4ae4eE"}
!35 = distinct !{!35, !34, !"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17he1a526e4ccb4ae4eE: %self.0"}
!36 = !{!21, !24}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_ZN6driver3src6driver10print_line17h932c7747f0da3e5fE: argument 0"}
!39 = distinct !{!39, !"_ZN6driver3src6driver10print_line17h932c7747f0da3e5fE"}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!42 = distinct !{!42, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!43 = !{!44, !38}
!44 = distinct !{!44, !42, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
