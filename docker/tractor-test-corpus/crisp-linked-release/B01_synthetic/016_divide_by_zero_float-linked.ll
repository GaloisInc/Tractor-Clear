; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"core::fmt::Arguments<'_>" = type { { ptr, i64 }, { ptr, i64 }, { ptr, i64 } }
%"core::str::error::Utf8Error" = type { i64, { i8, i8 }, [6 x i8] }
%"core::result::Result<&str, core::str::error::Utf8Error>" = type { i64, [2 x i64] }
%"core::result::Result<&str, core::str::error::Utf8Error>::Err" = type { [1 x i64], %"core::str::error::Utf8Error" }
%"core::result::Result<&str, core::str::error::Utf8Error>::Ok" = type { [1 x i64], { ptr, i64 } }

@alloc_513570631223a12912d85da2bec3b15a = private unnamed_addr constant <{}> zeroinitializer, align 8
@alloc_00ae4b301f7fab8ac9617c03fcbd7274 = private unnamed_addr constant <{ [43 x i8] }> <{ [43 x i8] c"called `Result::unwrap()` on an `Err` value" }>, align 1
@vtable.0 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr48drop_in_place$LT$core..str..error..Utf8Error$GT$17h1d6f64b633b1d7c5E", [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN64_$LT$core..str..error..Utf8Error$u20$as$u20$core..fmt..Debug$GT$3fmt17he5298eb5cbc8b1a7E" }>, align 8
@alloc_49a1e817e911805af64bbc7efb390101 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc_4ed11f17954caf7854f80f02ae34907e = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc_513570631223a12912d85da2bec3b15a, [8 x i8] zeroinitializer, ptr @alloc_49a1e817e911805af64bbc7efb390101, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc_e569084f73d5623dd3756faf72e4348b = private unnamed_addr constant <{ [37 x i8] }> <{ [37 x i8] c"This would result in a divide by zero" }>, align 1
@alloc_b21fe318ceeb516fa0c0c18324081d11 = private unnamed_addr constant <{ [17 x i8] }> <{ [17 x i8] c"Calling good()..." }>, align 1
@alloc_c4c271501b0611d0e2eb026b42cd652e = private unnamed_addr constant <{ [15 x i8] }> <{ [15 x i8] c"Finished good()" }>, align 1
@alloc_66c8280ac89deb430ec42a90f6fa3b97 = private unnamed_addr constant <{ [16 x i8] }> <{ [16 x i8] c"Calling bad()..." }>, align 1
@alloc_62ebc3b3b9d2a9beb326a074eead3a9d = private unnamed_addr constant <{ [14 x i8] }> <{ [14 x i8] c"Finished bad()" }>, align 1
@alloc_00728171eaa7ec2c5a267f4bf25d4ac3 = private unnamed_addr constant <{ [13 x i8] }> <{ [13 x i8] c"src/driver.rs" }>, align 1
@alloc_c0b274abfe18aab2cd797284a675fa8d = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_00728171eaa7ec2c5a267f4bf25d4ac3, [16 x i8] c"\0D\00\00\00\00\00\00\00H\00\00\00\1E\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define void @bad(float noundef %data) unnamed_addr #0 {
start:
  %_7.i.i = alloca [1 x { ptr, ptr }], align 8
  %_3.i.i = alloca %"core::fmt::Arguments<'_>", align 8
  %int_number.i.i = alloca i32, align 4
  %_4.i = fpext float %data to double
  %_3.i = fdiv double 1.000000e+02, %_4.i
  %result.i = tail call i32 @llvm.fptosi.sat.i32.f64(double %_3.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_number.i.i)
  store i32 %result.i, ptr %int_number.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i.i)
  store ptr %int_number.i.i, ptr %_7.i.i, align 8
  %0 = getelementptr inbounds { ptr, ptr }, ptr %_7.i.i, i64 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %0, align 8
  %1 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i, i64 0, i32 1
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %1, align 8, !alias.scope !2, !noalias !5
  %2 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i, i64 0, i32 1, i32 1
  store i64 2, ptr %2, align 8, !alias.scope !2, !noalias !5
  store ptr null, ptr %_3.i.i, align 8, !alias.scope !2, !noalias !5
  %3 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i, i64 0, i32 2
  store ptr %_7.i.i, ptr %3, align 8, !alias.scope !2, !noalias !5
  %4 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i, i64 0, i32 2, i32 1
  store i64 1, ptr %4, align 8, !alias.scope !2, !noalias !5
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_number.i.i)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fptosi.sat.i32.f64(double) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE"(ptr noalias noundef readonly align 4 dereferenceable(4), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef readonly dereferenceable(48)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nonlazybind uwtable
define void @driver(float noundef %good_data, float noundef %bad_data) unnamed_addr #0 {
start:
  %_7.i8.i = alloca [1 x { ptr, ptr }], align 8
  %_3.i9.i = alloca %"core::fmt::Arguments<'_>", align 8
  %line.i10.i = alloca { ptr, i64 }, align 8
  %_7.i.i.i = alloca [1 x { ptr, ptr }], align 8
  %_3.i.i.i = alloca %"core::fmt::Arguments<'_>", align 8
  %int_number.i.i.i = alloca i32, align 4
  %_7.i4.i = alloca [1 x { ptr, ptr }], align 8
  %_3.i5.i = alloca %"core::fmt::Arguments<'_>", align 8
  %line.i6.i = alloca { ptr, i64 }, align 8
  %_7.i1.i = alloca [1 x { ptr, ptr }], align 8
  %_3.i2.i = alloca %"core::fmt::Arguments<'_>", align 8
  %line.i3.i = alloca { ptr, i64 }, align 8
  %_7.i.i = alloca [1 x { ptr, ptr }], align 8
  %_3.i.i = alloca %"core::fmt::Arguments<'_>", align 8
  %line.i.i = alloca { ptr, i64 }, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %line.i.i)
  store ptr @alloc_b21fe318ceeb516fa0c0c18324081d11, ptr %line.i.i, align 8, !noalias !7
  %0 = getelementptr inbounds { ptr, i64 }, ptr %line.i.i, i64 0, i32 1
  store i64 17, ptr %0, align 8, !noalias !7
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i.i), !noalias !7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i.i), !noalias !7
  store ptr %line.i.i, ptr %_7.i.i, align 8, !noalias !7
  %1 = getelementptr inbounds { ptr, ptr }, ptr %_7.i.i, i64 0, i32 1
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6ef0efaac15b9818E", ptr %1, align 8, !noalias !7
  %2 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i, i64 0, i32 1
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %2, align 8, !alias.scope !10, !noalias !13
  %3 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i, i64 0, i32 1, i32 1
  store i64 2, ptr %3, align 8, !alias.scope !10, !noalias !13
  store ptr null, ptr %_3.i.i, align 8, !alias.scope !10, !noalias !13
  %4 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i, i64 0, i32 2
  store ptr %_7.i.i, ptr %4, align 8, !alias.scope !10, !noalias !13
  %5 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i, i64 0, i32 2, i32 1
  store i64 1, ptr %5, align 8, !alias.scope !10, !noalias !13
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i.i), !noalias !7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i.i), !noalias !7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %line.i.i)
  call fastcc void @_ZN6driver3src6driver4good17h39459a53c24fa238E(float noundef %good_data)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %line.i3.i)
  store ptr @alloc_c4c271501b0611d0e2eb026b42cd652e, ptr %line.i3.i, align 8, !noalias !15
  %6 = getelementptr inbounds { ptr, i64 }, ptr %line.i3.i, i64 0, i32 1
  store i64 15, ptr %6, align 8, !noalias !15
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i2.i), !noalias !15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i1.i), !noalias !15
  store ptr %line.i3.i, ptr %_7.i1.i, align 8, !noalias !15
  %7 = getelementptr inbounds { ptr, ptr }, ptr %_7.i1.i, i64 0, i32 1
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6ef0efaac15b9818E", ptr %7, align 8, !noalias !15
  %8 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i2.i, i64 0, i32 1
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %8, align 8, !alias.scope !18, !noalias !21
  %9 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i2.i, i64 0, i32 1, i32 1
  store i64 2, ptr %9, align 8, !alias.scope !18, !noalias !21
  store ptr null, ptr %_3.i2.i, align 8, !alias.scope !18, !noalias !21
  %10 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i2.i, i64 0, i32 2
  store ptr %_7.i1.i, ptr %10, align 8, !alias.scope !18, !noalias !21
  %11 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i2.i, i64 0, i32 2, i32 1
  store i64 1, ptr %11, align 8, !alias.scope !18, !noalias !21
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i2.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i2.i), !noalias !15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i1.i), !noalias !15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %line.i3.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %line.i6.i)
  store ptr @alloc_66c8280ac89deb430ec42a90f6fa3b97, ptr %line.i6.i, align 8, !noalias !23
  %12 = getelementptr inbounds { ptr, i64 }, ptr %line.i6.i, i64 0, i32 1
  store i64 16, ptr %12, align 8, !noalias !23
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i5.i), !noalias !23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i4.i), !noalias !23
  store ptr %line.i6.i, ptr %_7.i4.i, align 8, !noalias !23
  %13 = getelementptr inbounds { ptr, ptr }, ptr %_7.i4.i, i64 0, i32 1
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6ef0efaac15b9818E", ptr %13, align 8, !noalias !23
  %14 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i5.i, i64 0, i32 1
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %14, align 8, !alias.scope !26, !noalias !29
  %15 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i5.i, i64 0, i32 1, i32 1
  store i64 2, ptr %15, align 8, !alias.scope !26, !noalias !29
  store ptr null, ptr %_3.i5.i, align 8, !alias.scope !26, !noalias !29
  %16 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i5.i, i64 0, i32 2
  store ptr %_7.i4.i, ptr %16, align 8, !alias.scope !26, !noalias !29
  %17 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i5.i, i64 0, i32 2, i32 1
  store i64 1, ptr %17, align 8, !alias.scope !26, !noalias !29
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i5.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i5.i), !noalias !23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i4.i), !noalias !23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %line.i6.i)
  %_4.i.i = fpext float %bad_data to double
  %_3.i7.i = fdiv double 1.000000e+02, %_4.i.i
  %result.i.i = call i32 @llvm.fptosi.sat.i32.f64(double %_3.i7.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_number.i.i.i)
  store i32 %result.i.i, ptr %int_number.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i.i.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i.i.i)
  store ptr %int_number.i.i.i, ptr %_7.i.i.i, align 8
  %18 = getelementptr inbounds { ptr, ptr }, ptr %_7.i.i.i, i64 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %18, align 8
  %19 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i.i, i64 0, i32 1
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %19, align 8, !alias.scope !31, !noalias !34
  %20 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i.i, i64 0, i32 1, i32 1
  store i64 2, ptr %20, align 8, !alias.scope !31, !noalias !34
  store ptr null, ptr %_3.i.i.i, align 8, !alias.scope !31, !noalias !34
  %21 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i.i, i64 0, i32 2
  store ptr %_7.i.i.i, ptr %21, align 8, !alias.scope !31, !noalias !34
  %22 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i.i, i64 0, i32 2, i32 1
  store i64 1, ptr %22, align 8, !alias.scope !31, !noalias !34
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i.i.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i.i.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i.i.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_number.i.i.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %line.i10.i)
  store ptr @alloc_62ebc3b3b9d2a9beb326a074eead3a9d, ptr %line.i10.i, align 8, !noalias !36
  %23 = getelementptr inbounds { ptr, i64 }, ptr %line.i10.i, i64 0, i32 1
  store i64 14, ptr %23, align 8, !noalias !36
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i9.i), !noalias !36
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i8.i), !noalias !36
  store ptr %line.i10.i, ptr %_7.i8.i, align 8, !noalias !36
  %24 = getelementptr inbounds { ptr, ptr }, ptr %_7.i8.i, i64 0, i32 1
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6ef0efaac15b9818E", ptr %24, align 8, !noalias !36
  %25 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i9.i, i64 0, i32 1
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %25, align 8, !alias.scope !39, !noalias !42
  %26 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i9.i, i64 0, i32 1, i32 1
  store i64 2, ptr %26, align 8, !alias.scope !39, !noalias !42
  store ptr null, ptr %_3.i9.i, align 8, !alias.scope !39, !noalias !42
  %27 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i9.i, i64 0, i32 2
  store ptr %_7.i8.i, ptr %27, align 8, !alias.scope !39, !noalias !42
  %28 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i9.i, i64 0, i32 2, i32 1
  store i64 1, ptr %28, align 8, !alias.scope !39, !noalias !42
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i9.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i9.i), !noalias !36
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i8.i), !noalias !36
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %line.i10.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6ef0efaac15b9818E"(ptr noalias nocapture noundef readonly align 8 dereferenceable(16) %self, ptr noalias noundef align 8 dereferenceable(64) %f) unnamed_addr #0 {
start:
  %_3.0 = load ptr, ptr %self, align 8, !nonnull !44, !align !45, !noundef !44
  %0 = getelementptr inbounds { ptr, i64 }, ptr %self, i64 0, i32 1
  %_3.1 = load i64, ptr %0, align 8, !noundef !44
  %1 = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h3810e0e68cb69985E"(ptr noalias noundef nonnull readonly align 1 %_3.0, i64 noundef %_3.1, ptr noalias noundef nonnull align 8 dereferenceable(64) %f)
  ret i1 %1
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN6driver3src6driver4good17h39459a53c24fa238E(float noundef %data) unnamed_addr #0 {
start:
  %_7.i1.i = alloca [1 x { ptr, ptr }], align 8
  %_3.i2.i = alloca %"core::fmt::Arguments<'_>", align 8
  %int_number.i.i1 = alloca i32, align 4
  %_7.i.i2 = alloca [1 x { ptr, ptr }], align 8
  %_3.i.i3 = alloca %"core::fmt::Arguments<'_>", align 8
  %line.i.i = alloca { ptr, i64 }, align 8
  %_7.i.i = alloca [1 x { ptr, ptr }], align 8
  %_3.i.i = alloca %"core::fmt::Arguments<'_>", align 8
  %int_number.i.i = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_number.i.i)
  store i32 50, ptr %int_number.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i.i)
  store ptr %int_number.i.i, ptr %_7.i.i, align 8
  %0 = getelementptr inbounds { ptr, ptr }, ptr %_7.i.i, i64 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %0, align 8
  %1 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i, i64 0, i32 1
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %1, align 8, !alias.scope !46, !noalias !49
  %2 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i, i64 0, i32 1, i32 1
  store i64 2, ptr %2, align 8, !alias.scope !46, !noalias !49
  store ptr null, ptr %_3.i.i, align 8, !alias.scope !46, !noalias !49
  %3 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i, i64 0, i32 2
  store ptr %_7.i.i, ptr %3, align 8, !alias.scope !46, !noalias !49
  %4 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i, i64 0, i32 2, i32 1
  store i64 1, ptr %4, align 8, !alias.scope !46, !noalias !49
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_number.i.i)
  %self.i = fpext float %data to double
  %5 = call double @llvm.fabs.f64(double %self.i)
  %_2.i = fcmp ogt double %5, 0x3EB0C6F7A0B5ED8D
  br i1 %_2.i, label %bb1.i, label %bb2.i

bb2.i:                                            ; preds = %start
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %line.i.i)
  store ptr @alloc_e569084f73d5623dd3756faf72e4348b, ptr %line.i.i, align 8, !noalias !51
  %6 = getelementptr inbounds { ptr, i64 }, ptr %line.i.i, i64 0, i32 1
  store i64 37, ptr %6, align 8, !noalias !51
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i.i3), !noalias !51
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i.i2), !noalias !51
  store ptr %line.i.i, ptr %_7.i.i2, align 8, !noalias !51
  %7 = getelementptr inbounds { ptr, ptr }, ptr %_7.i.i2, i64 0, i32 1
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6ef0efaac15b9818E", ptr %7, align 8, !noalias !51
  %8 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i3, i64 0, i32 1
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %8, align 8, !alias.scope !54, !noalias !57
  %9 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i3, i64 0, i32 1, i32 1
  store i64 2, ptr %9, align 8, !alias.scope !54, !noalias !57
  store ptr null, ptr %_3.i.i3, align 8, !alias.scope !54, !noalias !57
  %10 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i3, i64 0, i32 2
  store ptr %_7.i.i2, ptr %10, align 8, !alias.scope !54, !noalias !57
  %11 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i3, i64 0, i32 2, i32 1
  store i64 1, ptr %11, align 8, !alias.scope !54, !noalias !57
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i.i3)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i.i3), !noalias !51
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i.i2), !noalias !51
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %line.i.i)
  br label %_ZN6driver3src6driver9good_b2_g17h1a051e82ce464afeE.exit

bb1.i:                                            ; preds = %start
  %_6.i = fdiv double 1.000000e+02, %self.i
  %result.i = call i32 @llvm.fptosi.sat.i32.f64(double %_6.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_number.i.i1)
  store i32 %result.i, ptr %int_number.i.i1, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i2.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i1.i)
  store ptr %int_number.i.i1, ptr %_7.i1.i, align 8
  %12 = getelementptr inbounds { ptr, ptr }, ptr %_7.i1.i, i64 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %12, align 8
  %13 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i2.i, i64 0, i32 1
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %13, align 8, !alias.scope !59, !noalias !62
  %14 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i2.i, i64 0, i32 1, i32 1
  store i64 2, ptr %14, align 8, !alias.scope !59, !noalias !62
  store ptr null, ptr %_3.i2.i, align 8, !alias.scope !59, !noalias !62
  %15 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i2.i, i64 0, i32 2
  store ptr %_7.i1.i, ptr %15, align 8, !alias.scope !59, !noalias !62
  %16 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i2.i, i64 0, i32 2, i32 1
  store i64 1, ptr %16, align 8, !alias.scope !59, !noalias !62
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i2.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i2.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i1.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_number.i.i1)
  br label %_ZN6driver3src6driver9good_b2_g17h1a051e82ce464afeE.exit

_ZN6driver3src6driver9good_b2_g17h1a051e82ce464afeE.exit: ; preds = %bb1.i, %bb2.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h3810e0e68cb69985E"(ptr noalias noundef nonnull readonly align 1, i64 noundef, ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
define void @good(float noundef %data) unnamed_addr #0 {
start:
  tail call fastcc void @_ZN6driver3src6driver4good17h39459a53c24fa238E(float noundef %data)
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
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %1, align 8, !alias.scope !64, !noalias !67
  %2 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 1, i32 1
  store i64 2, ptr %2, align 8, !alias.scope !64, !noalias !67
  store ptr null, ptr %_3.i, align 8, !alias.scope !64, !noalias !67
  %3 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 2
  store ptr %_7.i, ptr %3, align 8, !alias.scope !64, !noalias !67
  %4 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 2, i32 1
  store i64 1, ptr %4, align 8, !alias.scope !64, !noalias !67
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_number.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @printLine(ptr noundef %line) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %_7.i = alloca [1 x { ptr, ptr }], align 8
  %_3.i = alloca %"core::fmt::Arguments<'_>", align 8
  %line.i = alloca { ptr, i64 }, align 8
  %e.i = alloca %"core::str::error::Utf8Error", align 8
  %_4 = alloca %"core::result::Result<&str, core::str::error::Utf8Error>", align 8
  %len = tail call noundef i64 @_ZN4core3ffi5c_str4CStr8from_ptr9strlen_rt17h463292534e232c62E(ptr noundef %line)
  %len1 = add i64 %len, 1
  %0 = icmp ne ptr %line, null
  tail call void @llvm.assume(i1 %0)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4)
  call void @_ZN4core3ffi5c_str4CStr6to_str17h7660279a6932e49cE(ptr noalias nocapture noundef nonnull sret(%"core::result::Result<&str, core::str::error::Utf8Error>") dereferenceable(24) %_4, ptr noalias noundef nonnull readonly align 1 %line, i64 noundef %len1)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  %_2.i = load i64, ptr %_4, align 8, !range !72, !alias.scope !69, !noundef !44
  %trunc.not.i = icmp eq i64 %_2.i, 0
  br i1 %trunc.not.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h64a198ee6f8b054dE.exit", label %bb1.i

bb1.i:                                            ; preds = %start
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %e.i), !noalias !69
  %1 = getelementptr inbounds %"core::result::Result<&str, core::str::error::Utf8Error>::Err", ptr %_4, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %e.i, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  call void @_ZN4core6result13unwrap_failed17h008634a1b68516fbE(ptr noalias noundef nonnull readonly align 1 @alloc_00ae4b301f7fab8ac9617c03fcbd7274, i64 noundef 43, ptr noundef nonnull align 1 %e.i, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @vtable.0, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_c0b274abfe18aab2cd797284a675fa8d) #8, !noalias !69
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h64a198ee6f8b054dE.exit": ; preds = %start
  %2 = getelementptr inbounds %"core::result::Result<&str, core::str::error::Utf8Error>::Ok", ptr %_4, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !alias.scope !69, !nonnull !44, !align !45, !noundef !44
  %4 = getelementptr inbounds %"core::result::Result<&str, core::str::error::Utf8Error>::Ok", ptr %_4, i64 0, i32 1, i32 1
  %5 = load i64, ptr %4, align 8, !alias.scope !69, !noundef !44
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %line.i)
  store ptr %3, ptr %line.i, align 8, !noalias !73
  %6 = getelementptr inbounds { ptr, i64 }, ptr %line.i, i64 0, i32 1
  store i64 %5, ptr %6, align 8, !noalias !73
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i), !noalias !73
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i), !noalias !73
  store ptr %line.i, ptr %_7.i, align 8, !noalias !73
  %7 = getelementptr inbounds { ptr, ptr }, ptr %_7.i, i64 0, i32 1
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6ef0efaac15b9818E", ptr %7, align 8, !noalias !73
  %8 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 1
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %8, align 8, !alias.scope !76, !noalias !79
  %9 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 1, i32 1
  store i64 2, ptr %9, align 8, !alias.scope !76, !noalias !79
  store ptr null, ptr %_3.i, align 8, !alias.scope !76, !noalias !79
  %10 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 2
  store ptr %_7.i, ptr %10, align 8, !alias.scope !76, !noalias !79
  %11 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 2, i32 1
  store i64 1, ptr %11, align 8, !alias.scope !76, !noalias !79
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i), !noalias !73
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i), !noalias !73
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %line.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
declare noundef i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_ZN4core3ffi5c_str4CStr8from_ptr9strlen_rt17h463292534e232c62E(ptr noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

; Function Attrs: nonlazybind uwtable
declare void @_ZN4core3ffi5c_str4CStr6to_str17h7660279a6932e49cE(ptr noalias nocapture noundef sret(%"core::result::Result<&str, core::str::error::Utf8Error>") dereferenceable(24), ptr noalias noundef nonnull readonly align 1, i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6result13unwrap_failed17h008634a1b68516fbE(ptr noalias noundef nonnull readonly align 1, i64 noundef, ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 dereferenceable(24), ptr noalias noundef readonly align 8 dereferenceable(24)) unnamed_addr #6

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @"_ZN4core3ptr48drop_in_place$LT$core..str..error..Utf8Error$GT$17h1d6f64b633b1d7c5E"(ptr nocapture readnone %_1) unnamed_addr #7 {
start:
  ret void
}

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN64_$LT$core..str..error..Utf8Error$u20$as$u20$core..fmt..Debug$GT$3fmt17he5298eb5cbc8b1a7E"(ptr noalias noundef readonly align 8 dereferenceable(16), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { noreturn }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!3}
!3 = distinct !{!3, !4, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!4 = distinct !{!4, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!5 = !{!6}
!6 = distinct !{!6, !4, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!7 = !{!8}
!8 = distinct !{!8, !9, !"_ZN6driver3src6driver10print_line17h310498be717b500eE: argument 0"}
!9 = distinct !{!9, !"_ZN6driver3src6driver10print_line17h310498be717b500eE"}
!10 = !{!11}
!11 = distinct !{!11, !12, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!12 = distinct !{!12, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!13 = !{!14, !8}
!14 = distinct !{!14, !12, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!15 = !{!16}
!16 = distinct !{!16, !17, !"_ZN6driver3src6driver10print_line17h310498be717b500eE: argument 0"}
!17 = distinct !{!17, !"_ZN6driver3src6driver10print_line17h310498be717b500eE"}
!18 = !{!19}
!19 = distinct !{!19, !20, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!20 = distinct !{!20, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!21 = !{!22, !16}
!22 = distinct !{!22, !20, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!23 = !{!24}
!24 = distinct !{!24, !25, !"_ZN6driver3src6driver10print_line17h310498be717b500eE: argument 0"}
!25 = distinct !{!25, !"_ZN6driver3src6driver10print_line17h310498be717b500eE"}
!26 = !{!27}
!27 = distinct !{!27, !28, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!28 = distinct !{!28, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!29 = !{!30, !24}
!30 = distinct !{!30, !28, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!31 = !{!32}
!32 = distinct !{!32, !33, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!33 = distinct !{!33, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!34 = !{!35}
!35 = distinct !{!35, !33, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!36 = !{!37}
!37 = distinct !{!37, !38, !"_ZN6driver3src6driver10print_line17h310498be717b500eE: argument 0"}
!38 = distinct !{!38, !"_ZN6driver3src6driver10print_line17h310498be717b500eE"}
!39 = !{!40}
!40 = distinct !{!40, !41, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!41 = distinct !{!41, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!42 = !{!43, !37}
!43 = distinct !{!43, !41, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!44 = !{}
!45 = !{i64 1}
!46 = !{!47}
!47 = distinct !{!47, !48, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!48 = distinct !{!48, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!49 = !{!50}
!50 = distinct !{!50, !48, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!51 = !{!52}
!52 = distinct !{!52, !53, !"_ZN6driver3src6driver10print_line17h310498be717b500eE: argument 0"}
!53 = distinct !{!53, !"_ZN6driver3src6driver10print_line17h310498be717b500eE"}
!54 = !{!55}
!55 = distinct !{!55, !56, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!56 = distinct !{!56, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!57 = !{!58, !52}
!58 = distinct !{!58, !56, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!59 = !{!60}
!60 = distinct !{!60, !61, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!61 = distinct !{!61, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!62 = !{!63}
!63 = distinct !{!63, !61, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!64 = !{!65}
!65 = distinct !{!65, !66, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!66 = distinct !{!66, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!67 = !{!68}
!68 = distinct !{!68, !66, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!69 = !{!70}
!70 = distinct !{!70, !71, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h64a198ee6f8b054dE: %self"}
!71 = distinct !{!71, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h64a198ee6f8b054dE"}
!72 = !{i64 0, i64 2}
!73 = !{!74}
!74 = distinct !{!74, !75, !"_ZN6driver3src6driver10print_line17h310498be717b500eE: argument 0"}
!75 = distinct !{!75, !"_ZN6driver3src6driver10print_line17h310498be717b500eE"}
!76 = !{!77}
!77 = distinct !{!77, !78, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!78 = distinct !{!78, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!79 = !{!80, !74}
!80 = distinct !{!80, !78, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
