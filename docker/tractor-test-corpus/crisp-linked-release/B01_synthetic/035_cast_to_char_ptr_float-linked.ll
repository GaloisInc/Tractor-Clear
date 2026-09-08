; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"core::fmt::Arguments<'_>" = type { { ptr, i64 }, { ptr, i64 }, { ptr, i64 } }
%"core::fmt::rt::v1::Argument" = type { %"core::fmt::rt::v1::FormatSpec", i64 }
%"core::fmt::rt::v1::FormatSpec" = type { { i64, i64 }, { i64, i64 }, i32, i32, i8, [7 x i8] }

@alloc_513570631223a12912d85da2bec3b15a = private unnamed_addr constant <{}> zeroinitializer, align 8
@alloc_ffa3cdb3ae88e54a1cc225f31dd07672 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @alloc_513570631223a12912d85da2bec3b15a, [8 x i8] zeroinitializer }>, align 8
@alloc_49a1e817e911805af64bbc7efb390101 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc_c9ee96391497c38d8031dd5302a0dd52 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @alloc_49a1e817e911805af64bbc7efb390101, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define void @driver(float noundef %x) unnamed_addr #0 {
start:
  %_24.i.i = alloca %"core::fmt::Arguments<'_>", align 8
  %_18.i.i = alloca [1 x %"core::fmt::rt::v1::Argument"], align 8
  %_13.i.i = alloca [1 x { ptr, ptr }], align 8
  %_9.i.i = alloca %"core::fmt::Arguments<'_>", align 8
  %b.i.i = alloca ptr, align 8
  %bytes.i = alloca [4 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes.i)
  store float %x, ptr %bytes.i, align 4
  %0 = getelementptr inbounds { ptr, ptr }, ptr %_13.i.i, i64 0, i32 1
  %_19.sroa.0.sroa.5.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %_18.i.i, i64 16
  %_19.sroa.0.sroa.6.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %_18.i.i, i64 24
  %_19.sroa.0.sroa.7.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %_18.i.i, i64 32
  %_19.sroa.0.sroa.8.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %_18.i.i, i64 36
  %_19.sroa.0.sroa.9.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %_18.i.i, i64 40
  %_19.sroa.4.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %_18.i.i, i64 48
  %1 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_9.i.i, i64 0, i32 1
  %2 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_9.i.i, i64 0, i32 1, i32 1
  %3 = getelementptr inbounds { ptr, i64 }, ptr %_9.i.i, i64 0, i32 1
  %4 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_9.i.i, i64 0, i32 2
  %5 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_9.i.i, i64 0, i32 2, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %b.i.i), !noalias !2
  store ptr %bytes.i, ptr %b.i.i, align 8, !noalias !2
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_9.i.i), !noalias !2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_13.i.i), !noalias !2
  store ptr %b.i.i, ptr %_13.i.i, align 8, !noalias !2
  store ptr @"_ZN45_$LT$$RF$T$u20$as$u20$core..fmt..LowerHex$GT$3fmt17hc149eb844b7f0cd8E", ptr %0, align 8, !noalias !2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %_18.i.i), !noalias !2
  store i64 2, ptr %_18.i.i, align 8, !noalias !2
  store i64 0, ptr %_19.sroa.0.sroa.5.0..sroa_idx.i.i, align 8, !noalias !2
  store i64 2, ptr %_19.sroa.0.sroa.6.0..sroa_idx.i.i, align 8, !noalias !2
  store i32 8, ptr %_19.sroa.0.sroa.7.0..sroa_idx.i.i, align 8, !noalias !2
  store i32 32, ptr %_19.sroa.0.sroa.8.0..sroa_idx.i.i, align 4, !noalias !2
  store i8 3, ptr %_19.sroa.0.sroa.9.0..sroa_idx.i.i, align 8, !noalias !2
  store i64 0, ptr %_19.sroa.4.0..sroa_idx.i.i, align 8, !noalias !2
  store ptr @alloc_ffa3cdb3ae88e54a1cc225f31dd07672, ptr %1, align 8, !noalias !2
  store i64 1, ptr %2, align 8, !noalias !2
  store ptr %_18.i.i, ptr %_9.i.i, align 8, !noalias !2
  store i64 1, ptr %3, align 8, !noalias !2
  store ptr %_13.i.i, ptr %4, align 8, !noalias !2
  store i64 1, ptr %5, align 8, !noalias !2
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_9.i.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_9.i.i), !noalias !2
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %_18.i.i), !noalias !2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_13.i.i), !noalias !2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %b.i.i), !noalias !2
  %iter.sroa.4.0.ptr.1.i.i = getelementptr inbounds i8, ptr %bytes.i, i64 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %b.i.i), !noalias !2
  store ptr %iter.sroa.4.0.ptr.1.i.i, ptr %b.i.i, align 8, !noalias !2
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_9.i.i), !noalias !2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_13.i.i), !noalias !2
  store ptr %b.i.i, ptr %_13.i.i, align 8, !noalias !2
  store ptr @"_ZN45_$LT$$RF$T$u20$as$u20$core..fmt..LowerHex$GT$3fmt17hc149eb844b7f0cd8E", ptr %0, align 8, !noalias !2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %_18.i.i), !noalias !2
  store i64 2, ptr %_18.i.i, align 8, !noalias !2
  store i64 0, ptr %_19.sroa.0.sroa.5.0..sroa_idx.i.i, align 8, !noalias !2
  store i64 2, ptr %_19.sroa.0.sroa.6.0..sroa_idx.i.i, align 8, !noalias !2
  store i32 8, ptr %_19.sroa.0.sroa.7.0..sroa_idx.i.i, align 8, !noalias !2
  store i32 32, ptr %_19.sroa.0.sroa.8.0..sroa_idx.i.i, align 4, !noalias !2
  store i8 3, ptr %_19.sroa.0.sroa.9.0..sroa_idx.i.i, align 8, !noalias !2
  store i64 0, ptr %_19.sroa.4.0..sroa_idx.i.i, align 8, !noalias !2
  store ptr @alloc_ffa3cdb3ae88e54a1cc225f31dd07672, ptr %1, align 8, !noalias !2
  store i64 1, ptr %2, align 8, !noalias !2
  store ptr %_18.i.i, ptr %_9.i.i, align 8, !noalias !2
  store i64 1, ptr %3, align 8, !noalias !2
  store ptr %_13.i.i, ptr %4, align 8, !noalias !2
  store i64 1, ptr %5, align 8, !noalias !2
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_9.i.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_9.i.i), !noalias !2
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %_18.i.i), !noalias !2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_13.i.i), !noalias !2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %b.i.i), !noalias !2
  %iter.sroa.4.0.ptr.2.i.i = getelementptr inbounds i8, ptr %bytes.i, i64 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %b.i.i), !noalias !2
  store ptr %iter.sroa.4.0.ptr.2.i.i, ptr %b.i.i, align 8, !noalias !2
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_9.i.i), !noalias !2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_13.i.i), !noalias !2
  store ptr %b.i.i, ptr %_13.i.i, align 8, !noalias !2
  store ptr @"_ZN45_$LT$$RF$T$u20$as$u20$core..fmt..LowerHex$GT$3fmt17hc149eb844b7f0cd8E", ptr %0, align 8, !noalias !2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %_18.i.i), !noalias !2
  store i64 2, ptr %_18.i.i, align 8, !noalias !2
  store i64 0, ptr %_19.sroa.0.sroa.5.0..sroa_idx.i.i, align 8, !noalias !2
  store i64 2, ptr %_19.sroa.0.sroa.6.0..sroa_idx.i.i, align 8, !noalias !2
  store i32 8, ptr %_19.sroa.0.sroa.7.0..sroa_idx.i.i, align 8, !noalias !2
  store i32 32, ptr %_19.sroa.0.sroa.8.0..sroa_idx.i.i, align 4, !noalias !2
  store i8 3, ptr %_19.sroa.0.sroa.9.0..sroa_idx.i.i, align 8, !noalias !2
  store i64 0, ptr %_19.sroa.4.0..sroa_idx.i.i, align 8, !noalias !2
  store ptr @alloc_ffa3cdb3ae88e54a1cc225f31dd07672, ptr %1, align 8, !noalias !2
  store i64 1, ptr %2, align 8, !noalias !2
  store ptr %_18.i.i, ptr %_9.i.i, align 8, !noalias !2
  store i64 1, ptr %3, align 8, !noalias !2
  store ptr %_13.i.i, ptr %4, align 8, !noalias !2
  store i64 1, ptr %5, align 8, !noalias !2
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_9.i.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_9.i.i), !noalias !2
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %_18.i.i), !noalias !2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_13.i.i), !noalias !2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %b.i.i), !noalias !2
  %iter.sroa.4.0.ptr.3.i.i = getelementptr inbounds i8, ptr %bytes.i, i64 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %b.i.i), !noalias !2
  store ptr %iter.sroa.4.0.ptr.3.i.i, ptr %b.i.i, align 8, !noalias !2
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_9.i.i), !noalias !2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_13.i.i), !noalias !2
  store ptr %b.i.i, ptr %_13.i.i, align 8, !noalias !2
  store ptr @"_ZN45_$LT$$RF$T$u20$as$u20$core..fmt..LowerHex$GT$3fmt17hc149eb844b7f0cd8E", ptr %0, align 8, !noalias !2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %_18.i.i), !noalias !2
  store i64 2, ptr %_18.i.i, align 8, !noalias !2
  store i64 0, ptr %_19.sroa.0.sroa.5.0..sroa_idx.i.i, align 8, !noalias !2
  store i64 2, ptr %_19.sroa.0.sroa.6.0..sroa_idx.i.i, align 8, !noalias !2
  store i32 8, ptr %_19.sroa.0.sroa.7.0..sroa_idx.i.i, align 8, !noalias !2
  store i32 32, ptr %_19.sroa.0.sroa.8.0..sroa_idx.i.i, align 4, !noalias !2
  store i8 3, ptr %_19.sroa.0.sroa.9.0..sroa_idx.i.i, align 8, !noalias !2
  store i64 0, ptr %_19.sroa.4.0..sroa_idx.i.i, align 8, !noalias !2
  store ptr @alloc_ffa3cdb3ae88e54a1cc225f31dd07672, ptr %1, align 8, !noalias !2
  store i64 1, ptr %2, align 8, !noalias !2
  store ptr %_18.i.i, ptr %_9.i.i, align 8, !noalias !2
  store i64 1, ptr %3, align 8, !noalias !2
  store ptr %_13.i.i, ptr %4, align 8, !noalias !2
  store i64 1, ptr %5, align 8, !noalias !2
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_9.i.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_9.i.i), !noalias !2
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %_18.i.i), !noalias !2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_13.i.i), !noalias !2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %b.i.i), !noalias !2
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_24.i.i), !noalias !2
  %6 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_24.i.i, i64 0, i32 1
  store ptr @alloc_c9ee96391497c38d8031dd5302a0dd52, ptr %6, align 8, !alias.scope !5, !noalias !2
  %7 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_24.i.i, i64 0, i32 1, i32 1
  store i64 1, ptr %7, align 8, !alias.scope !5, !noalias !2
  store ptr null, ptr %_24.i.i, align 8, !alias.scope !5, !noalias !2
  %8 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_24.i.i, i64 0, i32 2
  store ptr @alloc_513570631223a12912d85da2bec3b15a, ptr %8, align 8, !alias.scope !5, !noalias !2
  %9 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_24.i.i, i64 0, i32 2, i32 1
  store i64 0, ptr %9, align 8, !alias.scope !5, !noalias !2
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_24.i.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_24.i.i), !noalias !2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes.i)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN45_$LT$$RF$T$u20$as$u20$core..fmt..LowerHex$GT$3fmt17hc149eb844b7f0cd8E"(ptr noalias nocapture noundef readonly align 8 dereferenceable(8) %self, ptr noalias noundef align 8 dereferenceable(64) %f) unnamed_addr #0 {
start:
  %_3 = load ptr, ptr %self, align 8, !nonnull !8, !align !9, !noundef !8
  %0 = tail call noundef zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u8$GT$3fmt17h3cde36dcce39687fE"(ptr noalias noundef nonnull readonly align 1 dereferenceable(1) %_3, ptr noalias noundef nonnull align 8 dereferenceable(64) %f)
  ret i1 %0
}

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef readonly dereferenceable(48)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u8$GT$3fmt17h3cde36dcce39687fE"(ptr noalias noundef readonly align 1 dereferenceable(1), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!3}
!3 = distinct !{!3, !4, !"_ZN6driver3src6driver9print_hex17he320f901d24d5f67E: %p.0"}
!4 = distinct !{!4, !"_ZN6driver3src6driver9print_hex17he320f901d24d5f67E"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"_ZN4core3fmt9Arguments9new_const17h00a508d8cf4830ceE: argument 0"}
!7 = distinct !{!7, !"_ZN4core3fmt9Arguments9new_const17h00a508d8cf4830ceE"}
!8 = !{}
!9 = !{i64 1}
