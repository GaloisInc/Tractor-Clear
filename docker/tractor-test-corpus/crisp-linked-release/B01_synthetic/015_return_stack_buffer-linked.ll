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
@alloc_905094a87beeb4ed947574feb8dfbbd7 = private unnamed_addr constant <{ [16 x i8] }> <{ [16 x i8] c"helperBad string" }>, align 1
@alloc_2507be404424bd1a88d4ed1f798b7176 = private unnamed_addr constant <{ [18 x i8] }> <{ [18 x i8] c"helperGood1 string" }>, align 1

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
  %line.i = alloca { ptr, i64 }, align 8
  %0 = tail call noundef dereferenceable_or_null(16) ptr @__rust_alloc(i64 noundef 16, i64 noundef 1) #7, !noalias !2
  %1 = icmp eq ptr %0, null
  br i1 %1, label %bb17.i.i.i.i, label %_ZN6driver3src6driver10helper_bad17h39ed9e49c7ca3411E.exit

bb17.i.i.i.i:                                     ; preds = %start
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h944707b833928a89E(i64 noundef 16, i64 noundef 1) #8, !noalias !2
  unreachable

_ZN6driver3src6driver10helper_bad17h39ed9e49c7ca3411E.exit: ; preds = %start
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(16) @alloc_905094a87beeb4ed947574feb8dfbbd7, i64 16, i1 false), !noalias !2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %line.i)
  store ptr %0, ptr %line.i, align 8, !noalias !9
  %2 = getelementptr inbounds { ptr, i64 }, ptr %line.i, i64 0, i32 1
  store i64 16, ptr %2, align 8, !noalias !9
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i), !noalias !9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i), !noalias !9
  store ptr %line.i, ptr %_7.i, align 8, !noalias !9
  %3 = getelementptr inbounds { ptr, ptr }, ptr %_7.i, i64 0, i32 1
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6ef0efaac15b9818E", ptr %3, align 8, !noalias !9
  %4 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 1
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %4, align 8, !alias.scope !12, !noalias !15
  %5 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 1, i32 1
  store i64 2, ptr %5, align 8, !alias.scope !12, !noalias !15
  store ptr null, ptr %_3.i, align 8, !alias.scope !12, !noalias !15
  %6 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 2
  store ptr %_7.i, ptr %6, align 8, !alias.scope !12, !noalias !15
  %7 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 2, i32 1
  store i64 1, ptr %7, align 8, !alias.scope !12, !noalias !15
  invoke void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c1453a248308996E.exit" unwind label %cleanup

cleanup:                                          ; preds = %_ZN6driver3src6driver10helper_bad17h39ed9e49c7ca3411E.exit
  %8 = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c1453a248308996E"(i64 16, ptr nonnull %0) #9
  resume { ptr, i32 } %8

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c1453a248308996E.exit": ; preds = %_ZN6driver3src6driver10helper_bad17h39ed9e49c7ca3411E.exit
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i), !noalias !9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i), !noalias !9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %line.i)
  call void @__rust_dealloc(ptr noundef nonnull %0, i64 noundef 16, i64 noundef 1) #7
  ret void
}

; Function Attrs: nonlazybind uwtable
declare noundef i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @__rust_alloc(i64 noundef, i64 allocalign noundef) unnamed_addr #1

; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_ZN5alloc5alloc18handle_alloc_error17h944707b833928a89E(i64 noundef, i64 noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6ef0efaac15b9818E"(ptr noalias nocapture noundef readonly align 8 dereferenceable(16) %self, ptr noalias noundef align 8 dereferenceable(64) %f) unnamed_addr #0 {
start:
  %_3.0 = load ptr, ptr %self, align 8, !nonnull !17, !align !18, !noundef !17
  %0 = getelementptr inbounds { ptr, i64 }, ptr %self, i64 0, i32 1
  %_3.1 = load i64, ptr %0, align 8, !noundef !17
  %1 = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h3810e0e68cb69985E"(ptr noalias noundef nonnull readonly align 1 %_3.0, i64 noundef %_3.1, ptr noalias noundef nonnull align 8 dereferenceable(64) %f)
  ret i1 %1
}

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef readonly dereferenceable(48)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c1453a248308996E"(i64 %_1.0.val, ptr %_1.8.val) unnamed_addr #5 personality ptr @rust_eh_personality {
start:
  %_3.i.i.i.i = icmp eq i64 %_1.0.val, 0
  br i1 %_3.i.i.i.i, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h2f3ab2678dd910f2E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17he8928256f518c172E.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17he8928256f518c172E.exit.i.i.i": ; preds = %start
  tail call void @__rust_dealloc(ptr noundef nonnull %_1.8.val, i64 noundef %_1.0.val, i64 noundef 1) #7
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h2f3ab2678dd910f2E.exit"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h2f3ab2678dd910f2E.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17he8928256f518c172E.exit.i.i.i", %start
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @__rust_dealloc(ptr allocptr noundef, i64 noundef, i64 noundef) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h3810e0e68cb69985E"(ptr noalias noundef nonnull readonly align 1, i64 noundef, ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
define void @driver(i32 noundef %use_good) unnamed_addr #0 {
start:
  %_7.i.i.i = alloca [1 x { ptr, ptr }], align 8
  %_3.i.i.i = alloca %"core::fmt::Arguments<'_>", align 8
  %line.i.i.i = alloca { ptr, i64 }, align 8
  %0 = icmp eq i32 %use_good, 0
  br i1 %0, label %bb2.i, label %bb1.i

bb2.i:                                            ; preds = %start
  tail call fastcc void @_ZN6driver3src6driver3bad17hdd6fdb829307c5a9E()
  br label %_ZN6driver3src6driver6driver17hc0bc6ac92c19e797E.exit

bb1.i:                                            ; preds = %start
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %line.i.i.i)
  store ptr @alloc_2507be404424bd1a88d4ed1f798b7176, ptr %line.i.i.i, align 8, !noalias !19
  %1 = getelementptr inbounds { ptr, i64 }, ptr %line.i.i.i, i64 0, i32 1
  store i64 18, ptr %1, align 8, !noalias !19
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i.i.i), !noalias !19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i.i.i), !noalias !19
  store ptr %line.i.i.i, ptr %_7.i.i.i, align 8, !noalias !19
  %2 = getelementptr inbounds { ptr, ptr }, ptr %_7.i.i.i, i64 0, i32 1
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6ef0efaac15b9818E", ptr %2, align 8, !noalias !19
  %3 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i.i, i64 0, i32 1
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %3, align 8, !alias.scope !22, !noalias !25
  %4 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i.i, i64 0, i32 1, i32 1
  store i64 2, ptr %4, align 8, !alias.scope !22, !noalias !25
  store ptr null, ptr %_3.i.i.i, align 8, !alias.scope !22, !noalias !25
  %5 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i.i, i64 0, i32 2
  store ptr %_7.i.i.i, ptr %5, align 8, !alias.scope !22, !noalias !25
  %6 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i.i, i64 0, i32 2, i32 1
  store i64 1, ptr %6, align 8, !alias.scope !22, !noalias !25
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i.i.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i.i.i), !noalias !19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i.i.i), !noalias !19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %line.i.i.i)
  br label %_ZN6driver3src6driver6driver17hc0bc6ac92c19e797E.exit

_ZN6driver3src6driver6driver17hc0bc6ac92c19e797E.exit: ; preds = %bb1.i, %bb2.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @good() unnamed_addr #0 {
start:
  %_7.i.i = alloca [1 x { ptr, ptr }], align 8
  %_3.i.i = alloca %"core::fmt::Arguments<'_>", align 8
  %line.i.i = alloca { ptr, i64 }, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %line.i.i)
  store ptr @alloc_2507be404424bd1a88d4ed1f798b7176, ptr %line.i.i, align 8, !noalias !27
  %0 = getelementptr inbounds { ptr, i64 }, ptr %line.i.i, i64 0, i32 1
  store i64 18, ptr %0, align 8, !noalias !27
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i.i), !noalias !27
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i.i), !noalias !27
  store ptr %line.i.i, ptr %_7.i.i, align 8, !noalias !27
  %1 = getelementptr inbounds { ptr, ptr }, ptr %_7.i.i, i64 0, i32 1
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6ef0efaac15b9818E", ptr %1, align 8, !noalias !27
  %2 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i, i64 0, i32 1
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %2, align 8, !alias.scope !30, !noalias !33
  %3 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i, i64 0, i32 1, i32 1
  store i64 2, ptr %3, align 8, !alias.scope !30, !noalias !33
  store ptr null, ptr %_3.i.i, align 8, !alias.scope !30, !noalias !33
  %4 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i, i64 0, i32 2
  store ptr %_7.i.i, ptr %4, align 8, !alias.scope !30, !noalias !33
  %5 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i, i64 0, i32 2, i32 1
  store i64 1, ptr %5, align 8, !alias.scope !30, !noalias !33
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i.i), !noalias !27
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i.i), !noalias !27
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %line.i.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @printLine(ptr noundef %line) unnamed_addr #0 {
start:
  %_7.i = alloca [1 x { ptr, ptr }], align 8
  %_3.i = alloca %"core::fmt::Arguments<'_>", align 8
  %line.i = alloca { ptr, i64 }, align 8
  %_2 = alloca %"core::result::Result<&str, core::str::error::Utf8Error>", align 8
  %0 = icmp eq ptr %line, null
  br i1 %0, label %bb7, label %bb3

bb3:                                              ; preds = %start
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_2)
  %len = tail call noundef i64 @_ZN4core3ffi5c_str4CStr8from_ptr9strlen_rt17h463292534e232c62E(ptr noundef nonnull %line)
  %len1 = add i64 %len, 1
  call void @_ZN4core3ffi5c_str4CStr6to_str17h7660279a6932e49cE(ptr noalias nocapture noundef nonnull sret(%"core::result::Result<&str, core::str::error::Utf8Error>") dereferenceable(24) %_2, ptr noalias noundef nonnull readonly align 1 %line, i64 noundef %len1)
  %_4 = load i64, ptr %_2, align 8, !range !35, !noundef !17
  %trunc.not = icmp eq i64 %_4, 0
  br i1 %trunc.not, label %bb6, label %bb5

bb6:                                              ; preds = %bb3
  %1 = getelementptr inbounds %"core::result::Result<&str, core::str::error::Utf8Error>::Ok", ptr %_2, i64 0, i32 1
  %line.0 = load ptr, ptr %1, align 8, !nonnull !17, !align !18, !noundef !17
  %2 = getelementptr inbounds %"core::result::Result<&str, core::str::error::Utf8Error>::Ok", ptr %_2, i64 0, i32 1, i32 1
  %line.1 = load i64, ptr %2, align 8, !noundef !17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_2)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %line.i)
  store ptr %line.0, ptr %line.i, align 8, !noalias !36
  %3 = getelementptr inbounds { ptr, i64 }, ptr %line.i, i64 0, i32 1
  store i64 %line.1, ptr %3, align 8, !noalias !36
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i), !noalias !36
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i), !noalias !36
  store ptr %line.i, ptr %_7.i, align 8, !noalias !36
  %4 = getelementptr inbounds { ptr, ptr }, ptr %_7.i, i64 0, i32 1
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6ef0efaac15b9818E", ptr %4, align 8, !noalias !36
  %5 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 1
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %5, align 8, !alias.scope !39, !noalias !42
  %6 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 1, i32 1
  store i64 2, ptr %6, align 8, !alias.scope !39, !noalias !42
  store ptr null, ptr %_3.i, align 8, !alias.scope !39, !noalias !42
  %7 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 2
  store ptr %_7.i, ptr %7, align 8, !alias.scope !39, !noalias !42
  %8 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 2, i32 1
  store i64 1, ptr %8, align 8, !alias.scope !39, !noalias !42
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i), !noalias !36
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i), !noalias !36
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %line.i)
  br label %bb7

bb5:                                              ; preds = %bb3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_2)
  br label %bb7

bb7:                                              ; preds = %bb5, %bb6, %start
  ret void
}

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_ZN4core3ffi5c_str4CStr8from_ptr9strlen_rt17h463292534e232c62E(ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_ZN4core3ffi5c_str4CStr6to_str17h7660279a6932e49cE(ptr noalias nocapture noundef sret(%"core::result::Result<&str, core::str::error::Utf8Error>") dereferenceable(24), ptr noalias noundef nonnull readonly align 1, i64 noundef) unnamed_addr #0

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nounwind }
attributes #8 = { noreturn }
attributes #9 = { noinline }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!3, !5, !7}
!3 = distinct !{!3, !4, !"_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17hdcb3b2884da19e14E: %self"}
!4 = distinct !{!4, !"_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17hdcb3b2884da19e14E"}
!5 = distinct !{!5, !6, !"_ZN5alloc5slice64_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$$u5b$T$u5d$$GT$8to_owned17hd52894607aaea70eE: argument 0"}
!6 = distinct !{!6, !"_ZN5alloc5slice64_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$$u5b$T$u5d$$GT$8to_owned17hd52894607aaea70eE"}
!7 = distinct !{!7, !8, !"_ZN6driver3src6driver10helper_bad17h39ed9e49c7ca3411E: argument 0"}
!8 = distinct !{!8, !"_ZN6driver3src6driver10helper_bad17h39ed9e49c7ca3411E"}
!9 = !{!10}
!10 = distinct !{!10, !11, !"_ZN6driver3src6driver10print_line17h310498be717b500eE: argument 0"}
!11 = distinct !{!11, !"_ZN6driver3src6driver10print_line17h310498be717b500eE"}
!12 = !{!13}
!13 = distinct !{!13, !14, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!14 = distinct !{!14, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!15 = !{!16, !10}
!16 = distinct !{!16, !14, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!17 = !{}
!18 = !{i64 1}
!19 = !{!20}
!20 = distinct !{!20, !21, !"_ZN6driver3src6driver10print_line17h310498be717b500eE: argument 0"}
!21 = distinct !{!21, !"_ZN6driver3src6driver10print_line17h310498be717b500eE"}
!22 = !{!23}
!23 = distinct !{!23, !24, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!24 = distinct !{!24, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!25 = !{!26, !20}
!26 = distinct !{!26, !24, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!27 = !{!28}
!28 = distinct !{!28, !29, !"_ZN6driver3src6driver10print_line17h310498be717b500eE: argument 0"}
!29 = distinct !{!29, !"_ZN6driver3src6driver10print_line17h310498be717b500eE"}
!30 = !{!31}
!31 = distinct !{!31, !32, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!32 = distinct !{!32, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!33 = !{!34, !28}
!34 = distinct !{!34, !32, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!35 = !{i64 0, i64 2}
!36 = !{!37}
!37 = distinct !{!37, !38, !"_ZN6driver3src6driver10print_line17h310498be717b500eE: argument 0"}
!38 = distinct !{!38, !"_ZN6driver3src6driver10print_line17h310498be717b500eE"}
!39 = !{!40}
!40 = distinct !{!40, !41, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!41 = distinct !{!41, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!42 = !{!43, !37}
!43 = distinct !{!43, !41, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
