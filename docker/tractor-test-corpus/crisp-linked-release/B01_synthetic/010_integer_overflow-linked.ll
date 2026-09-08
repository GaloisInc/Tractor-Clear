; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"core::fmt::rt::v1::Argument" = type { %"core::fmt::rt::v1::FormatSpec", i64 }
%"core::fmt::rt::v1::FormatSpec" = type { { i64, i64 }, { i64, i64 }, i32, i32, i8, [7 x i8] }
%"core::fmt::Arguments<'_>" = type { { ptr, i64 }, { ptr, i64 }, { ptr, i64 } }

@alloc_2a62ba4d4fa46537b277796d74f8c568 = private unnamed_addr constant <{}> zeroinitializer, align 1
@alloc_49a1e817e911805af64bbc7efb390101 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc_4ed11f17954caf7854f80f02ae34907e = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc_2a62ba4d4fa46537b277796d74f8c568, [8 x i8] zeroinitializer, ptr @alloc_49a1e817e911805af64bbc7efb390101, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define void @driver(i8 noundef signext %data) unnamed_addr #0 {
start:
  %_13.i.i = alloca [1 x %"core::fmt::rt::v1::Argument"], align 8
  %_10.i.i = alloca i8, align 1
  %_7.i.i = alloca [1 x { ptr, ptr }], align 8
  %_3.i.i = alloca %"core::fmt::Arguments<'_>", align 8
  %result.i = add i8 %data, 1
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %_10.i.i)
  store i8 %result.i, ptr %_10.i.i, align 1
  store ptr %_10.i.i, ptr %_7.i.i, align 8
  %0 = getelementptr inbounds { ptr, ptr }, ptr %_7.i.i, i64 0, i32 1
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u8$GT$3fmt17h3cde36dcce39687fE", ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %_13.i.i)
  store i64 2, ptr %_13.i.i, align 8
  %_14.sroa.0.sroa.5.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %_13.i.i, i64 16
  store i64 0, ptr %_14.sroa.0.sroa.5.0..sroa_idx.i.i, align 8
  %_14.sroa.0.sroa.6.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %_13.i.i, i64 24
  store i64 2, ptr %_14.sroa.0.sroa.6.0..sroa_idx.i.i, align 8
  %_14.sroa.0.sroa.7.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %_13.i.i, i64 32
  store i32 8, ptr %_14.sroa.0.sroa.7.0..sroa_idx.i.i, align 8
  %_14.sroa.0.sroa.8.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %_13.i.i, i64 36
  store i32 32, ptr %_14.sroa.0.sroa.8.0..sroa_idx.i.i, align 4
  %_14.sroa.0.sroa.9.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %_13.i.i, i64 40
  store i8 3, ptr %_14.sroa.0.sroa.9.0..sroa_idx.i.i, align 8
  %_14.sroa.4.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %_13.i.i, i64 48
  store i64 0, ptr %_14.sroa.4.0..sroa_idx.i.i, align 8
  %1 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i, i64 0, i32 1
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %1, align 8
  %2 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i, i64 0, i32 1, i32 1
  store i64 2, ptr %2, align 8
  store ptr %_13.i.i, ptr %_3.i.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %_3.i.i, i64 0, i32 1
  store i64 1, ptr %3, align 8
  %4 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i, i64 0, i32 2
  store ptr %_7.i.i, ptr %4, align 8
  %5 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i, i64 0, i32 2, i32 1
  store i64 1, ptr %5, align 8
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i.i)
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %_13.i.i)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %_10.i.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i.i)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u8$GT$3fmt17h3cde36dcce39687fE"(ptr noalias noundef readonly align 1 dereferenceable(1), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef readonly dereferenceable(48)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nonlazybind uwtable
define void @printHexCharLine(i8 noundef signext %char_hex) unnamed_addr #0 {
start:
  %_13.i = alloca [1 x %"core::fmt::rt::v1::Argument"], align 8
  %_10.i = alloca i8, align 1
  %_7.i = alloca [1 x { ptr, ptr }], align 8
  %_3.i = alloca %"core::fmt::Arguments<'_>", align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %_10.i)
  store i8 %char_hex, ptr %_10.i, align 1
  store ptr %_10.i, ptr %_7.i, align 8
  %0 = getelementptr inbounds { ptr, ptr }, ptr %_7.i, i64 0, i32 1
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u8$GT$3fmt17h3cde36dcce39687fE", ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %_13.i)
  store i64 2, ptr %_13.i, align 8
  %_14.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %_13.i, i64 16
  store i64 0, ptr %_14.sroa.0.sroa.5.0..sroa_idx.i, align 8
  %_14.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %_13.i, i64 24
  store i64 2, ptr %_14.sroa.0.sroa.6.0..sroa_idx.i, align 8
  %_14.sroa.0.sroa.7.0..sroa_idx.i = getelementptr inbounds i8, ptr %_13.i, i64 32
  store i32 8, ptr %_14.sroa.0.sroa.7.0..sroa_idx.i, align 8
  %_14.sroa.0.sroa.8.0..sroa_idx.i = getelementptr inbounds i8, ptr %_13.i, i64 36
  store i32 32, ptr %_14.sroa.0.sroa.8.0..sroa_idx.i, align 4
  %_14.sroa.0.sroa.9.0..sroa_idx.i = getelementptr inbounds i8, ptr %_13.i, i64 40
  store i8 3, ptr %_14.sroa.0.sroa.9.0..sroa_idx.i, align 8
  %_14.sroa.4.0..sroa_idx.i = getelementptr inbounds i8, ptr %_13.i, i64 48
  store i64 0, ptr %_14.sroa.4.0..sroa_idx.i, align 8
  %1 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 1
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %1, align 8
  %2 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 1, i32 1
  store i64 2, ptr %2, align 8
  store ptr %_13.i, ptr %_3.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %_3.i, i64 0, i32 1
  store i64 1, ptr %3, align 8
  %4 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 2
  store ptr %_7.i, ptr %4, align 8
  %5 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 2, i32 1
  store i64 1, ptr %5, align 8
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i)
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %_13.i)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %_10.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i)
  ret void
}

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
