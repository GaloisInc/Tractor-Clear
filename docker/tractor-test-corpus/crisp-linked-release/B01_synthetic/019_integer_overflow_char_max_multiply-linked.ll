; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"core::fmt::rt::v1::Argument" = type { %"core::fmt::rt::v1::FormatSpec", i64 }
%"core::fmt::rt::v1::FormatSpec" = type { { i64, i64 }, { i64, i64 }, i32, i32, i8, [7 x i8] }
%"core::fmt::Arguments<'_>" = type { { ptr, i64 }, { ptr, i64 }, { ptr, i64 } }
%"core::result::Result<&str, core::str::error::Utf8Error>" = type { i64, [2 x i64] }
%"core::result::Result<&str, core::str::error::Utf8Error>::Ok" = type { [1 x i64], { ptr, i64 } }

@alloc_513570631223a12912d85da2bec3b15a = private unnamed_addr constant <{}> zeroinitializer, align 8
@alloc_49a1e817e911805af64bbc7efb390101 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc_4ed11f17954caf7854f80f02ae34907e = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc_513570631223a12912d85da2bec3b15a, [8 x i8] zeroinitializer, ptr @alloc_49a1e817e911805af64bbc7efb390101, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc_b1680805b69549ddfdd09a84deb4e526 = private unnamed_addr constant <{ [53 x i8] }> <{ [53 x i8] c"data value is too large to perform arithmetic safely." }>, align 1

; Function Attrs: nonlazybind uwtable
define void @bad() unnamed_addr #0 {
start:
  %_13.i.i = alloca [1 x %"core::fmt::rt::v1::Argument"], align 8
  %_10.i.i = alloca i8, align 1
  %_7.i.i = alloca [1 x { ptr, ptr }], align 8
  %_3.i.i = alloca %"core::fmt::Arguments<'_>", align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %_10.i.i)
  store i8 -2, ptr %_10.i.i, align 1
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
define void @driver(i32 noundef %use_good) unnamed_addr #0 {
start:
  %_7.i.i1.i.i = alloca [1 x { ptr, ptr }], align 8
  %_3.i.i2.i.i = alloca %"core::fmt::Arguments<'_>", align 8
  %line.i.i.i.i = alloca { ptr, i64 }, align 8
  %_13.i.i.i.i = alloca [1 x %"core::fmt::rt::v1::Argument"], align 8
  %_10.i.i.i.i = alloca i8, align 1
  %_7.i.i.i.i = alloca [1 x { ptr, ptr }], align 8
  %_3.i.i.i.i = alloca %"core::fmt::Arguments<'_>", align 8
  %_13.i.i.i = alloca [1 x %"core::fmt::rt::v1::Argument"], align 8
  %_10.i.i.i = alloca i8, align 1
  %_7.i.i.i = alloca [1 x { ptr, ptr }], align 8
  %_3.i.i.i = alloca %"core::fmt::Arguments<'_>", align 8
  %0 = icmp eq i32 %use_good, 0
  br i1 %0, label %bb2.i, label %bb1.i

bb2.i:                                            ; preds = %start
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i.i.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i.i.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %_10.i.i.i)
  store i8 -2, ptr %_10.i.i.i, align 1
  store ptr %_10.i.i.i, ptr %_7.i.i.i, align 8
  %1 = getelementptr inbounds { ptr, ptr }, ptr %_7.i.i.i, i64 0, i32 1
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u8$GT$3fmt17h3cde36dcce39687fE", ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %_13.i.i.i)
  store i64 2, ptr %_13.i.i.i, align 8
  %_14.sroa.0.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %_13.i.i.i, i64 16
  store i64 0, ptr %_14.sroa.0.sroa.5.0..sroa_idx.i.i.i, align 8
  %_14.sroa.0.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %_13.i.i.i, i64 24
  store i64 2, ptr %_14.sroa.0.sroa.6.0..sroa_idx.i.i.i, align 8
  %_14.sroa.0.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %_13.i.i.i, i64 32
  store i32 8, ptr %_14.sroa.0.sroa.7.0..sroa_idx.i.i.i, align 8
  %_14.sroa.0.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %_13.i.i.i, i64 36
  store i32 32, ptr %_14.sroa.0.sroa.8.0..sroa_idx.i.i.i, align 4
  %_14.sroa.0.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %_13.i.i.i, i64 40
  store i8 3, ptr %_14.sroa.0.sroa.9.0..sroa_idx.i.i.i, align 8
  %_14.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %_13.i.i.i, i64 48
  store i64 0, ptr %_14.sroa.4.0..sroa_idx.i.i.i, align 8
  %2 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i.i, i64 0, i32 1
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %2, align 8
  %3 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i.i, i64 0, i32 1, i32 1
  store i64 2, ptr %3, align 8
  store ptr %_13.i.i.i, ptr %_3.i.i.i, align 8
  %4 = getelementptr inbounds { ptr, i64 }, ptr %_3.i.i.i, i64 0, i32 1
  store i64 1, ptr %4, align 8
  %5 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i.i, i64 0, i32 2
  store ptr %_7.i.i.i, ptr %5, align 8
  %6 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i.i, i64 0, i32 2, i32 1
  store i64 1, ptr %6, align 8
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i.i.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i.i.i)
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %_13.i.i.i)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %_10.i.i.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i.i.i)
  br label %_ZN6driver3src6driver6driver17hc0bc6ac92c19e797E.exit

bb1.i:                                            ; preds = %start
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i.i.i.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i.i.i.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %_10.i.i.i.i)
  store i8 4, ptr %_10.i.i.i.i, align 1
  store ptr %_10.i.i.i.i, ptr %_7.i.i.i.i, align 8
  %7 = getelementptr inbounds { ptr, ptr }, ptr %_7.i.i.i.i, i64 0, i32 1
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u8$GT$3fmt17h3cde36dcce39687fE", ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %_13.i.i.i.i)
  store i64 2, ptr %_13.i.i.i.i, align 8
  %_14.sroa.0.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds i8, ptr %_13.i.i.i.i, i64 16
  store i64 0, ptr %_14.sroa.0.sroa.5.0..sroa_idx.i.i.i.i, align 8
  %_14.sroa.0.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds i8, ptr %_13.i.i.i.i, i64 24
  store i64 2, ptr %_14.sroa.0.sroa.6.0..sroa_idx.i.i.i.i, align 8
  %_14.sroa.0.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds i8, ptr %_13.i.i.i.i, i64 32
  store i32 8, ptr %_14.sroa.0.sroa.7.0..sroa_idx.i.i.i.i, align 8
  %_14.sroa.0.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds i8, ptr %_13.i.i.i.i, i64 36
  store i32 32, ptr %_14.sroa.0.sroa.8.0..sroa_idx.i.i.i.i, align 4
  %_14.sroa.0.sroa.9.0..sroa_idx.i.i.i.i = getelementptr inbounds i8, ptr %_13.i.i.i.i, i64 40
  store i8 3, ptr %_14.sroa.0.sroa.9.0..sroa_idx.i.i.i.i, align 8
  %_14.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds i8, ptr %_13.i.i.i.i, i64 48
  store i64 0, ptr %_14.sroa.4.0..sroa_idx.i.i.i.i, align 8
  %8 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i.i.i, i64 0, i32 1
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %8, align 8
  %9 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i.i.i, i64 0, i32 1, i32 1
  store i64 2, ptr %9, align 8
  store ptr %_13.i.i.i.i, ptr %_3.i.i.i.i, align 8
  %10 = getelementptr inbounds { ptr, i64 }, ptr %_3.i.i.i.i, i64 0, i32 1
  store i64 1, ptr %10, align 8
  %11 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i.i.i, i64 0, i32 2
  store ptr %_7.i.i.i.i, ptr %11, align 8
  %12 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i.i.i, i64 0, i32 2, i32 1
  store i64 1, ptr %12, align 8
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i.i.i.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i.i.i.i)
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %_13.i.i.i.i)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %_10.i.i.i.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i.i.i.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %line.i.i.i.i)
  store ptr @alloc_b1680805b69549ddfdd09a84deb4e526, ptr %line.i.i.i.i, align 8, !noalias !2
  %13 = getelementptr inbounds { ptr, i64 }, ptr %line.i.i.i.i, i64 0, i32 1
  store i64 53, ptr %13, align 8, !noalias !2
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i.i2.i.i), !noalias !2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i.i1.i.i), !noalias !2
  store ptr %line.i.i.i.i, ptr %_7.i.i1.i.i, align 8, !noalias !2
  %14 = getelementptr inbounds { ptr, ptr }, ptr %_7.i.i1.i.i, i64 0, i32 1
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6ef0efaac15b9818E", ptr %14, align 8, !noalias !2
  %15 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i2.i.i, i64 0, i32 1
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %15, align 8, !alias.scope !5, !noalias !8
  %16 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i2.i.i, i64 0, i32 1, i32 1
  store i64 2, ptr %16, align 8, !alias.scope !5, !noalias !8
  store ptr null, ptr %_3.i.i2.i.i, align 8, !alias.scope !5, !noalias !8
  %17 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i2.i.i, i64 0, i32 2
  store ptr %_7.i.i1.i.i, ptr %17, align 8, !alias.scope !5, !noalias !8
  %18 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i2.i.i, i64 0, i32 2, i32 1
  store i64 1, ptr %18, align 8, !alias.scope !5, !noalias !8
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i.i2.i.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i.i2.i.i), !noalias !2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i.i1.i.i), !noalias !2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %line.i.i.i.i)
  br label %_ZN6driver3src6driver6driver17hc0bc6ac92c19e797E.exit

_ZN6driver3src6driver6driver17hc0bc6ac92c19e797E.exit: ; preds = %bb1.i, %bb2.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6ef0efaac15b9818E"(ptr noalias nocapture noundef readonly align 8 dereferenceable(16) %self, ptr noalias noundef align 8 dereferenceable(64) %f) unnamed_addr #0 {
start:
  %_3.0 = load ptr, ptr %self, align 8, !nonnull !10, !align !11, !noundef !10
  %0 = getelementptr inbounds { ptr, i64 }, ptr %self, i64 0, i32 1
  %_3.1 = load i64, ptr %0, align 8, !noundef !10
  %1 = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h3810e0e68cb69985E"(ptr noalias noundef nonnull readonly align 1 %_3.0, i64 noundef %_3.1, ptr noalias noundef nonnull align 8 dereferenceable(64) %f)
  ret i1 %1
}

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h3810e0e68cb69985E"(ptr noalias noundef nonnull readonly align 1, i64 noundef, ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
define void @good() unnamed_addr #0 {
start:
  %_7.i.i1.i = alloca [1 x { ptr, ptr }], align 8
  %_3.i.i2.i = alloca %"core::fmt::Arguments<'_>", align 8
  %line.i.i.i = alloca { ptr, i64 }, align 8
  %_13.i.i.i = alloca [1 x %"core::fmt::rt::v1::Argument"], align 8
  %_10.i.i.i = alloca i8, align 1
  %_7.i.i.i = alloca [1 x { ptr, ptr }], align 8
  %_3.i.i.i = alloca %"core::fmt::Arguments<'_>", align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i.i.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i.i.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %_10.i.i.i)
  store i8 4, ptr %_10.i.i.i, align 1
  store ptr %_10.i.i.i, ptr %_7.i.i.i, align 8
  %0 = getelementptr inbounds { ptr, ptr }, ptr %_7.i.i.i, i64 0, i32 1
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u8$GT$3fmt17h3cde36dcce39687fE", ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %_13.i.i.i)
  store i64 2, ptr %_13.i.i.i, align 8
  %_14.sroa.0.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %_13.i.i.i, i64 16
  store i64 0, ptr %_14.sroa.0.sroa.5.0..sroa_idx.i.i.i, align 8
  %_14.sroa.0.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %_13.i.i.i, i64 24
  store i64 2, ptr %_14.sroa.0.sroa.6.0..sroa_idx.i.i.i, align 8
  %_14.sroa.0.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %_13.i.i.i, i64 32
  store i32 8, ptr %_14.sroa.0.sroa.7.0..sroa_idx.i.i.i, align 8
  %_14.sroa.0.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %_13.i.i.i, i64 36
  store i32 32, ptr %_14.sroa.0.sroa.8.0..sroa_idx.i.i.i, align 4
  %_14.sroa.0.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %_13.i.i.i, i64 40
  store i8 3, ptr %_14.sroa.0.sroa.9.0..sroa_idx.i.i.i, align 8
  %_14.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %_13.i.i.i, i64 48
  store i64 0, ptr %_14.sroa.4.0..sroa_idx.i.i.i, align 8
  %1 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i.i, i64 0, i32 1
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %1, align 8
  %2 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i.i, i64 0, i32 1, i32 1
  store i64 2, ptr %2, align 8
  store ptr %_13.i.i.i, ptr %_3.i.i.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %_3.i.i.i, i64 0, i32 1
  store i64 1, ptr %3, align 8
  %4 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i.i, i64 0, i32 2
  store ptr %_7.i.i.i, ptr %4, align 8
  %5 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i.i, i64 0, i32 2, i32 1
  store i64 1, ptr %5, align 8
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i.i.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i.i.i)
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %_13.i.i.i)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %_10.i.i.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i.i.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %line.i.i.i)
  store ptr @alloc_b1680805b69549ddfdd09a84deb4e526, ptr %line.i.i.i, align 8, !noalias !12
  %6 = getelementptr inbounds { ptr, i64 }, ptr %line.i.i.i, i64 0, i32 1
  store i64 53, ptr %6, align 8, !noalias !12
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i.i2.i), !noalias !12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i.i1.i), !noalias !12
  store ptr %line.i.i.i, ptr %_7.i.i1.i, align 8, !noalias !12
  %7 = getelementptr inbounds { ptr, ptr }, ptr %_7.i.i1.i, i64 0, i32 1
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6ef0efaac15b9818E", ptr %7, align 8, !noalias !12
  %8 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i2.i, i64 0, i32 1
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %8, align 8, !alias.scope !15, !noalias !18
  %9 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i2.i, i64 0, i32 1, i32 1
  store i64 2, ptr %9, align 8, !alias.scope !15, !noalias !18
  store ptr null, ptr %_3.i.i2.i, align 8, !alias.scope !15, !noalias !18
  %10 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i2.i, i64 0, i32 2
  store ptr %_7.i.i1.i, ptr %10, align 8, !alias.scope !15, !noalias !18
  %11 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i2.i, i64 0, i32 2, i32 1
  store i64 1, ptr %11, align 8, !alias.scope !15, !noalias !18
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i.i2.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i.i2.i), !noalias !12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i.i1.i), !noalias !12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %line.i.i.i)
  ret void
}

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

; Function Attrs: nonlazybind uwtable
define void @printLine(ptr noundef %line) unnamed_addr #0 {
start:
  %_7.i = alloca [1 x { ptr, ptr }], align 8
  %_3.i = alloca %"core::fmt::Arguments<'_>", align 8
  %line.i = alloca { ptr, i64 }, align 8
  %_4 = alloca %"core::result::Result<&str, core::str::error::Utf8Error>", align 8
  %0 = icmp eq ptr %line, null
  br i1 %0, label %bb8, label %bb2

bb2:                                              ; preds = %start
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4)
  %len = tail call noundef i64 @_ZN4core3ffi5c_str4CStr8from_ptr9strlen_rt17h463292534e232c62E(ptr noundef nonnull %line)
  %len2 = add i64 %len, 1
  call void @_ZN4core3ffi5c_str4CStr6to_str17h7660279a6932e49cE(ptr noalias nocapture noundef nonnull sret(%"core::result::Result<&str, core::str::error::Utf8Error>") dereferenceable(24) %_4, ptr noalias noundef nonnull readonly align 1 %line, i64 noundef %len2)
  %_6 = load i64, ptr %_4, align 8, !range !20, !noundef !10
  %trunc.not = icmp eq i64 %_6, 0
  %1 = getelementptr inbounds %"core::result::Result<&str, core::str::error::Utf8Error>::Ok", ptr %_4, i64 0, i32 1
  %s.0 = load ptr, ptr %1, align 8
  %2 = getelementptr inbounds %"core::result::Result<&str, core::str::error::Utf8Error>::Ok", ptr %_4, i64 0, i32 1, i32 1
  %s.1 = load i64, ptr %2, align 8
  %_3.sroa.5.0 = select i1 %trunc.not, i64 %s.1, i64 0
  %_3.sroa.0.0 = select i1 %trunc.not, ptr %s.0, ptr @alloc_513570631223a12912d85da2bec3b15a
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4)
  br label %bb8

bb8:                                              ; preds = %bb2, %start
  %line1.sroa.5.0 = phi i64 [ %_3.sroa.5.0, %bb2 ], [ 0, %start ]
  %line1.sroa.0.0 = phi ptr [ %_3.sroa.0.0, %bb2 ], [ @alloc_513570631223a12912d85da2bec3b15a, %start ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %line.i)
  store ptr %line1.sroa.0.0, ptr %line.i, align 8, !noalias !21
  %3 = getelementptr inbounds { ptr, i64 }, ptr %line.i, i64 0, i32 1
  store i64 %line1.sroa.5.0, ptr %3, align 8, !noalias !21
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i), !noalias !21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i), !noalias !21
  store ptr %line.i, ptr %_7.i, align 8, !noalias !21
  %4 = getelementptr inbounds { ptr, ptr }, ptr %_7.i, i64 0, i32 1
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6ef0efaac15b9818E", ptr %4, align 8, !noalias !21
  %5 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 1
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %5, align 8, !alias.scope !24, !noalias !27
  %6 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 1, i32 1
  store i64 2, ptr %6, align 8, !alias.scope !24, !noalias !27
  store ptr null, ptr %_3.i, align 8, !alias.scope !24, !noalias !27
  %7 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 2
  store ptr %_7.i, ptr %7, align 8, !alias.scope !24, !noalias !27
  %8 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 2, i32 1
  store i64 1, ptr %8, align 8, !alias.scope !24, !noalias !27
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i), !noalias !21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i), !noalias !21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %line.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_ZN4core3ffi5c_str4CStr8from_ptr9strlen_rt17h463292534e232c62E(ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_ZN4core3ffi5c_str4CStr6to_str17h7660279a6932e49cE(ptr noalias nocapture noundef sret(%"core::result::Result<&str, core::str::error::Utf8Error>") dereferenceable(24), ptr noalias noundef nonnull readonly align 1, i64 noundef) unnamed_addr #0

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!3}
!3 = distinct !{!3, !4, !"_ZN6driver3src6driver10print_line17h310498be717b500eE: argument 0"}
!4 = distinct !{!4, !"_ZN6driver3src6driver10print_line17h310498be717b500eE"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!7 = distinct !{!7, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!8 = !{!9, !3}
!9 = distinct !{!9, !7, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!10 = !{}
!11 = !{i64 1}
!12 = !{!13}
!13 = distinct !{!13, !14, !"_ZN6driver3src6driver10print_line17h310498be717b500eE: argument 0"}
!14 = distinct !{!14, !"_ZN6driver3src6driver10print_line17h310498be717b500eE"}
!15 = !{!16}
!16 = distinct !{!16, !17, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!17 = distinct !{!17, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!18 = !{!19, !13}
!19 = distinct !{!19, !17, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!20 = !{i64 0, i64 2}
!21 = !{!22}
!22 = distinct !{!22, !23, !"_ZN6driver3src6driver10print_line17h310498be717b500eE: argument 0"}
!23 = distinct !{!23, !"_ZN6driver3src6driver10print_line17h310498be717b500eE"}
!24 = !{!25}
!25 = distinct !{!25, !26, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!26 = distinct !{!26, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!27 = !{!28, !22}
!28 = distinct !{!28, !26, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
