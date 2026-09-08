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
@vtable.0 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr48drop_in_place$LT$core..str..error..Utf8Error$GT$17h1d6f64b633b1d7c5E", [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN64_$LT$core..str..error..Utf8Error$u20$as$u20$core..fmt..Debug$GT$3fmt17he5298eb5cbc8b1a7E" }>, align 8
@alloc_49a1e817e911805af64bbc7efb390101 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc_4ed11f17954caf7854f80f02ae34907e = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc_513570631223a12912d85da2bec3b15a, [8 x i8] zeroinitializer, ptr @alloc_49a1e817e911805af64bbc7efb390101, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc_2203c12e3a7f4f56794f4f14b50eff86 = private unnamed_addr constant <{ [5 x i8] }> <{ [5 x i8] c"bad()" }>, align 1
@alloc_69ca122eceda1fe4366072e7cebc57f1 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"helperGood()" }>, align 1
@alloc_553a87e74fbf11dc69cea072a9747fbf = private unnamed_addr constant <{ [6 x i8] }> <{ [6 x i8] c"good()" }>, align 1
@alloc_b21fe318ceeb516fa0c0c18324081d11 = private unnamed_addr constant <{ [17 x i8] }> <{ [17 x i8] c"Calling good()..." }>, align 1
@alloc_c4c271501b0611d0e2eb026b42cd652e = private unnamed_addr constant <{ [15 x i8] }> <{ [15 x i8] c"Finished good()" }>, align 1
@alloc_66c8280ac89deb430ec42a90f6fa3b97 = private unnamed_addr constant <{ [16 x i8] }> <{ [16 x i8] c"Calling bad()..." }>, align 1
@alloc_62ebc3b3b9d2a9beb326a074eead3a9d = private unnamed_addr constant <{ [14 x i8] }> <{ [14 x i8] c"Finished bad()" }>, align 1
@alloc_e6af4d723148ae8e1b8cacc1a952ac11 = private unnamed_addr constant <{ [32 x i8] }> <{ [32 x i8] c"printLine received invalid UTF-8" }>, align 1
@alloc_00728171eaa7ec2c5a267f4bf25d4ac3 = private unnamed_addr constant <{ [13 x i8] }> <{ [13 x i8] c"src/driver.rs" }>, align 1
@alloc_7258a3bb82c8deddf8973b59f0f5408e = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_00728171eaa7ec2c5a267f4bf25d4ac3, [16 x i8] c"\0D\00\00\00\00\00\00\007\00\00\00\12\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define void @bad() unnamed_addr #0 {
start:
  %_9.i.i = alloca [1 x { ptr, ptr }], align 8
  %_5.i.i = alloca %"core::fmt::Arguments<'_>", align 8
  %line1.i.i = alloca { ptr, i64 }, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %line1.i.i), !noalias !2
  store ptr @alloc_2203c12e3a7f4f56794f4f14b50eff86, ptr %line1.i.i, align 8, !noalias !2
  %0 = getelementptr inbounds { ptr, i64 }, ptr %line1.i.i, i64 0, i32 1
  store i64 5, ptr %0, align 8, !noalias !2
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_5.i.i), !noalias !2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_9.i.i), !noalias !2
  store ptr %line1.i.i, ptr %_9.i.i, align 8, !noalias !2
  %1 = getelementptr inbounds { ptr, ptr }, ptr %_9.i.i, i64 0, i32 1
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6ef0efaac15b9818E", ptr %1, align 8, !noalias !2
  %2 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5.i.i, i64 0, i32 1
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %2, align 8, !alias.scope !5, !noalias !8
  %3 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5.i.i, i64 0, i32 1, i32 1
  store i64 2, ptr %3, align 8, !alias.scope !5, !noalias !8
  store ptr null, ptr %_5.i.i, align 8, !alias.scope !5, !noalias !8
  %4 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5.i.i, i64 0, i32 2
  store ptr %_9.i.i, ptr %4, align 8, !alias.scope !5, !noalias !8
  %5 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5.i.i, i64 0, i32 2, i32 1
  store i64 1, ptr %5, align 8, !alias.scope !5, !noalias !8
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_5.i.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_5.i.i), !noalias !2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_9.i.i), !noalias !2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %line1.i.i), !noalias !2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

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
declare void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef readonly dereferenceable(48)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h3810e0e68cb69985E"(ptr noalias noundef nonnull readonly align 1, i64 noundef, ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
define void @driver() unnamed_addr #0 {
start:
  %_9.i10.i = alloca [1 x { ptr, ptr }], align 8
  %_5.i11.i = alloca %"core::fmt::Arguments<'_>", align 8
  %line1.i12.i = alloca { ptr, i64 }, align 8
  %_9.i.i7.i = alloca [1 x { ptr, ptr }], align 8
  %_5.i.i8.i = alloca %"core::fmt::Arguments<'_>", align 8
  %line1.i.i9.i = alloca { ptr, i64 }, align 8
  %_9.i4.i = alloca [1 x { ptr, ptr }], align 8
  %_5.i5.i = alloca %"core::fmt::Arguments<'_>", align 8
  %line1.i6.i = alloca { ptr, i64 }, align 8
  %_9.i1.i = alloca [1 x { ptr, ptr }], align 8
  %_5.i2.i = alloca %"core::fmt::Arguments<'_>", align 8
  %line1.i3.i = alloca { ptr, i64 }, align 8
  %_9.i.i.i.i = alloca [1 x { ptr, ptr }], align 8
  %_5.i.i.i.i = alloca %"core::fmt::Arguments<'_>", align 8
  %line1.i.i.i.i = alloca { ptr, i64 }, align 8
  %_9.i.i.i = alloca [1 x { ptr, ptr }], align 8
  %_5.i.i.i = alloca %"core::fmt::Arguments<'_>", align 8
  %line1.i.i.i = alloca { ptr, i64 }, align 8
  %_9.i.i = alloca [1 x { ptr, ptr }], align 8
  %_5.i.i = alloca %"core::fmt::Arguments<'_>", align 8
  %line1.i.i = alloca { ptr, i64 }, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %line1.i.i), !noalias !12
  store ptr @alloc_b21fe318ceeb516fa0c0c18324081d11, ptr %line1.i.i, align 8, !noalias !12
  %0 = getelementptr inbounds { ptr, i64 }, ptr %line1.i.i, i64 0, i32 1
  store i64 17, ptr %0, align 8, !noalias !12
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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %line1.i.i.i), !noalias !20
  store ptr @alloc_553a87e74fbf11dc69cea072a9747fbf, ptr %line1.i.i.i, align 8, !noalias !20
  %6 = getelementptr inbounds { ptr, i64 }, ptr %line1.i.i.i, i64 0, i32 1
  store i64 6, ptr %6, align 8, !noalias !20
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_5.i.i.i), !noalias !20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_9.i.i.i), !noalias !20
  store ptr %line1.i.i.i, ptr %_9.i.i.i, align 8, !noalias !20
  %7 = getelementptr inbounds { ptr, ptr }, ptr %_9.i.i.i, i64 0, i32 1
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6ef0efaac15b9818E", ptr %7, align 8, !noalias !20
  %8 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5.i.i.i, i64 0, i32 1
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %8, align 8, !alias.scope !23, !noalias !26
  %9 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5.i.i.i, i64 0, i32 1, i32 1
  store i64 2, ptr %9, align 8, !alias.scope !23, !noalias !26
  store ptr null, ptr %_5.i.i.i, align 8, !alias.scope !23, !noalias !26
  %10 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5.i.i.i, i64 0, i32 2
  store ptr %_9.i.i.i, ptr %10, align 8, !alias.scope !23, !noalias !26
  %11 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5.i.i.i, i64 0, i32 2, i32 1
  store i64 1, ptr %11, align 8, !alias.scope !23, !noalias !26
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_5.i.i.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_5.i.i.i), !noalias !20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_9.i.i.i), !noalias !20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %line1.i.i.i), !noalias !20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %line1.i.i.i.i), !noalias !28
  store ptr @alloc_69ca122eceda1fe4366072e7cebc57f1, ptr %line1.i.i.i.i, align 8, !noalias !28
  %12 = getelementptr inbounds { ptr, i64 }, ptr %line1.i.i.i.i, i64 0, i32 1
  store i64 12, ptr %12, align 8, !noalias !28
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_5.i.i.i.i), !noalias !28
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_9.i.i.i.i), !noalias !28
  store ptr %line1.i.i.i.i, ptr %_9.i.i.i.i, align 8, !noalias !28
  %13 = getelementptr inbounds { ptr, ptr }, ptr %_9.i.i.i.i, i64 0, i32 1
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6ef0efaac15b9818E", ptr %13, align 8, !noalias !28
  %14 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5.i.i.i.i, i64 0, i32 1
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %14, align 8, !alias.scope !31, !noalias !34
  %15 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5.i.i.i.i, i64 0, i32 1, i32 1
  store i64 2, ptr %15, align 8, !alias.scope !31, !noalias !34
  store ptr null, ptr %_5.i.i.i.i, align 8, !alias.scope !31, !noalias !34
  %16 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5.i.i.i.i, i64 0, i32 2
  store ptr %_9.i.i.i.i, ptr %16, align 8, !alias.scope !31, !noalias !34
  %17 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5.i.i.i.i, i64 0, i32 2, i32 1
  store i64 1, ptr %17, align 8, !alias.scope !31, !noalias !34
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_5.i.i.i.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_5.i.i.i.i), !noalias !28
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_9.i.i.i.i), !noalias !28
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %line1.i.i.i.i), !noalias !28
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %line1.i3.i), !noalias !36
  store ptr @alloc_c4c271501b0611d0e2eb026b42cd652e, ptr %line1.i3.i, align 8, !noalias !36
  %18 = getelementptr inbounds { ptr, i64 }, ptr %line1.i3.i, i64 0, i32 1
  store i64 15, ptr %18, align 8, !noalias !36
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_5.i2.i), !noalias !36
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_9.i1.i), !noalias !36
  store ptr %line1.i3.i, ptr %_9.i1.i, align 8, !noalias !36
  %19 = getelementptr inbounds { ptr, ptr }, ptr %_9.i1.i, i64 0, i32 1
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6ef0efaac15b9818E", ptr %19, align 8, !noalias !36
  %20 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5.i2.i, i64 0, i32 1
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %20, align 8, !alias.scope !39, !noalias !42
  %21 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5.i2.i, i64 0, i32 1, i32 1
  store i64 2, ptr %21, align 8, !alias.scope !39, !noalias !42
  store ptr null, ptr %_5.i2.i, align 8, !alias.scope !39, !noalias !42
  %22 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5.i2.i, i64 0, i32 2
  store ptr %_9.i1.i, ptr %22, align 8, !alias.scope !39, !noalias !42
  %23 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5.i2.i, i64 0, i32 2, i32 1
  store i64 1, ptr %23, align 8, !alias.scope !39, !noalias !42
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_5.i2.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_5.i2.i), !noalias !36
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_9.i1.i), !noalias !36
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %line1.i3.i), !noalias !36
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %line1.i6.i), !noalias !44
  store ptr @alloc_66c8280ac89deb430ec42a90f6fa3b97, ptr %line1.i6.i, align 8, !noalias !44
  %24 = getelementptr inbounds { ptr, i64 }, ptr %line1.i6.i, i64 0, i32 1
  store i64 16, ptr %24, align 8, !noalias !44
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_5.i5.i), !noalias !44
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_9.i4.i), !noalias !44
  store ptr %line1.i6.i, ptr %_9.i4.i, align 8, !noalias !44
  %25 = getelementptr inbounds { ptr, ptr }, ptr %_9.i4.i, i64 0, i32 1
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6ef0efaac15b9818E", ptr %25, align 8, !noalias !44
  %26 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5.i5.i, i64 0, i32 1
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %26, align 8, !alias.scope !47, !noalias !50
  %27 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5.i5.i, i64 0, i32 1, i32 1
  store i64 2, ptr %27, align 8, !alias.scope !47, !noalias !50
  store ptr null, ptr %_5.i5.i, align 8, !alias.scope !47, !noalias !50
  %28 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5.i5.i, i64 0, i32 2
  store ptr %_9.i4.i, ptr %28, align 8, !alias.scope !47, !noalias !50
  %29 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5.i5.i, i64 0, i32 2, i32 1
  store i64 1, ptr %29, align 8, !alias.scope !47, !noalias !50
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_5.i5.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_5.i5.i), !noalias !44
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_9.i4.i), !noalias !44
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %line1.i6.i), !noalias !44
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %line1.i.i9.i), !noalias !52
  store ptr @alloc_2203c12e3a7f4f56794f4f14b50eff86, ptr %line1.i.i9.i, align 8, !noalias !52
  %30 = getelementptr inbounds { ptr, i64 }, ptr %line1.i.i9.i, i64 0, i32 1
  store i64 5, ptr %30, align 8, !noalias !52
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_5.i.i8.i), !noalias !52
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_9.i.i7.i), !noalias !52
  store ptr %line1.i.i9.i, ptr %_9.i.i7.i, align 8, !noalias !52
  %31 = getelementptr inbounds { ptr, ptr }, ptr %_9.i.i7.i, i64 0, i32 1
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6ef0efaac15b9818E", ptr %31, align 8, !noalias !52
  %32 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5.i.i8.i, i64 0, i32 1
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %32, align 8, !alias.scope !55, !noalias !58
  %33 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5.i.i8.i, i64 0, i32 1, i32 1
  store i64 2, ptr %33, align 8, !alias.scope !55, !noalias !58
  store ptr null, ptr %_5.i.i8.i, align 8, !alias.scope !55, !noalias !58
  %34 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5.i.i8.i, i64 0, i32 2
  store ptr %_9.i.i7.i, ptr %34, align 8, !alias.scope !55, !noalias !58
  %35 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5.i.i8.i, i64 0, i32 2, i32 1
  store i64 1, ptr %35, align 8, !alias.scope !55, !noalias !58
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_5.i.i8.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_5.i.i8.i), !noalias !52
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_9.i.i7.i), !noalias !52
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %line1.i.i9.i), !noalias !52
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %line1.i12.i), !noalias !60
  store ptr @alloc_62ebc3b3b9d2a9beb326a074eead3a9d, ptr %line1.i12.i, align 8, !noalias !60
  %36 = getelementptr inbounds { ptr, i64 }, ptr %line1.i12.i, i64 0, i32 1
  store i64 14, ptr %36, align 8, !noalias !60
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_5.i11.i), !noalias !60
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_9.i10.i), !noalias !60
  store ptr %line1.i12.i, ptr %_9.i10.i, align 8, !noalias !60
  %37 = getelementptr inbounds { ptr, ptr }, ptr %_9.i10.i, i64 0, i32 1
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6ef0efaac15b9818E", ptr %37, align 8, !noalias !60
  %38 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5.i11.i, i64 0, i32 1
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %38, align 8, !alias.scope !63, !noalias !66
  %39 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5.i11.i, i64 0, i32 1, i32 1
  store i64 2, ptr %39, align 8, !alias.scope !63, !noalias !66
  store ptr null, ptr %_5.i11.i, align 8, !alias.scope !63, !noalias !66
  %40 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5.i11.i, i64 0, i32 2
  store ptr %_9.i10.i, ptr %40, align 8, !alias.scope !63, !noalias !66
  %41 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5.i11.i, i64 0, i32 2, i32 1
  store i64 1, ptr %41, align 8, !alias.scope !63, !noalias !66
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_5.i11.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_5.i11.i), !noalias !60
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_9.i10.i), !noalias !60
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %line1.i12.i), !noalias !60
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @good() unnamed_addr #0 {
start:
  %_9.i.i.i = alloca [1 x { ptr, ptr }], align 8
  %_5.i.i.i = alloca %"core::fmt::Arguments<'_>", align 8
  %line1.i.i.i = alloca { ptr, i64 }, align 8
  %_9.i.i = alloca [1 x { ptr, ptr }], align 8
  %_5.i.i = alloca %"core::fmt::Arguments<'_>", align 8
  %line1.i.i = alloca { ptr, i64 }, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %line1.i.i), !noalias !68
  store ptr @alloc_553a87e74fbf11dc69cea072a9747fbf, ptr %line1.i.i, align 8, !noalias !68
  %0 = getelementptr inbounds { ptr, i64 }, ptr %line1.i.i, i64 0, i32 1
  store i64 6, ptr %0, align 8, !noalias !68
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_5.i.i), !noalias !68
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_9.i.i), !noalias !68
  store ptr %line1.i.i, ptr %_9.i.i, align 8, !noalias !68
  %1 = getelementptr inbounds { ptr, ptr }, ptr %_9.i.i, i64 0, i32 1
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6ef0efaac15b9818E", ptr %1, align 8, !noalias !68
  %2 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5.i.i, i64 0, i32 1
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %2, align 8, !alias.scope !71, !noalias !74
  %3 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5.i.i, i64 0, i32 1, i32 1
  store i64 2, ptr %3, align 8, !alias.scope !71, !noalias !74
  store ptr null, ptr %_5.i.i, align 8, !alias.scope !71, !noalias !74
  %4 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5.i.i, i64 0, i32 2
  store ptr %_9.i.i, ptr %4, align 8, !alias.scope !71, !noalias !74
  %5 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5.i.i, i64 0, i32 2, i32 1
  store i64 1, ptr %5, align 8, !alias.scope !71, !noalias !74
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_5.i.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_5.i.i), !noalias !68
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_9.i.i), !noalias !68
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %line1.i.i), !noalias !68
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %line1.i.i.i), !noalias !76
  store ptr @alloc_69ca122eceda1fe4366072e7cebc57f1, ptr %line1.i.i.i, align 8, !noalias !76
  %6 = getelementptr inbounds { ptr, i64 }, ptr %line1.i.i.i, i64 0, i32 1
  store i64 12, ptr %6, align 8, !noalias !76
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_5.i.i.i), !noalias !76
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_9.i.i.i), !noalias !76
  store ptr %line1.i.i.i, ptr %_9.i.i.i, align 8, !noalias !76
  %7 = getelementptr inbounds { ptr, ptr }, ptr %_9.i.i.i, i64 0, i32 1
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6ef0efaac15b9818E", ptr %7, align 8, !noalias !76
  %8 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5.i.i.i, i64 0, i32 1
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %8, align 8, !alias.scope !79, !noalias !82
  %9 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5.i.i.i, i64 0, i32 1, i32 1
  store i64 2, ptr %9, align 8, !alias.scope !79, !noalias !82
  store ptr null, ptr %_5.i.i.i, align 8, !alias.scope !79, !noalias !82
  %10 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5.i.i.i, i64 0, i32 2
  store ptr %_9.i.i.i, ptr %10, align 8, !alias.scope !79, !noalias !82
  %11 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5.i.i.i, i64 0, i32 2, i32 1
  store i64 1, ptr %11, align 8, !alias.scope !79, !noalias !82
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_5.i.i.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_5.i.i.i), !noalias !76
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_9.i.i.i), !noalias !76
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %line1.i.i.i), !noalias !76
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @printLine(ptr noundef %line) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %_9.i = alloca [1 x { ptr, ptr }], align 8
  %_5.i = alloca %"core::fmt::Arguments<'_>", align 8
  %line1.i = alloca { ptr, i64 }, align 8
  %e.i = alloca %"core::str::error::Utf8Error", align 8
  %_4 = alloca %"core::result::Result<&str, core::str::error::Utf8Error>", align 8
  %0 = icmp eq ptr %line, null
  br i1 %0, label %_ZN6driver3src6driver10print_line17h932c7747f0da3e5fE.exit, label %bb2

bb2:                                              ; preds = %start
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4)
  %len = tail call noundef i64 @_ZN4core3ffi5c_str4CStr8from_ptr9strlen_rt17h463292534e232c62E(ptr noundef nonnull %line)
  %len2 = add i64 %len, 1
  call void @_ZN4core3ffi5c_str4CStr6to_str17h7660279a6932e49cE(ptr noalias nocapture noundef nonnull sret(%"core::result::Result<&str, core::str::error::Utf8Error>") dereferenceable(24) %_4, ptr noalias noundef nonnull readonly align 1 %line, i64 noundef %len2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %_3.i = load i64, ptr %_4, align 8, !range !87, !alias.scope !84, !noundef !10
  %trunc.not.i = icmp eq i64 %_3.i, 0
  br i1 %trunc.not.i, label %bb1.i3, label %bb1.i

bb1.i:                                            ; preds = %bb2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %e.i), !noalias !84
  %1 = getelementptr inbounds %"core::result::Result<&str, core::str::error::Utf8Error>::Err", ptr %_4, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %e.i, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  call void @_ZN4core6result13unwrap_failed17h008634a1b68516fbE(ptr noalias noundef nonnull readonly align 1 @alloc_e6af4d723148ae8e1b8cacc1a952ac11, i64 noundef 32, ptr noundef nonnull align 1 %e.i, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @vtable.0, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_7258a3bb82c8deddf8973b59f0f5408e) #6, !noalias !84
  unreachable

bb1.i3:                                           ; preds = %bb2
  %2 = getelementptr inbounds %"core::result::Result<&str, core::str::error::Utf8Error>::Ok", ptr %_4, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !alias.scope !84, !nonnull !10, !align !11, !noundef !10
  %4 = getelementptr inbounds %"core::result::Result<&str, core::str::error::Utf8Error>::Ok", ptr %_4, i64 0, i32 1, i32 1
  %5 = load i64, ptr %4, align 8, !alias.scope !84, !noundef !10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %line1.i), !noalias !88
  store ptr %3, ptr %line1.i, align 8, !noalias !88
  %6 = getelementptr inbounds { ptr, i64 }, ptr %line1.i, i64 0, i32 1
  store i64 %5, ptr %6, align 8, !noalias !88
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_5.i), !noalias !88
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_9.i), !noalias !88
  store ptr %line1.i, ptr %_9.i, align 8, !noalias !88
  %7 = getelementptr inbounds { ptr, ptr }, ptr %_9.i, i64 0, i32 1
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6ef0efaac15b9818E", ptr %7, align 8, !noalias !88
  %8 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5.i, i64 0, i32 1
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %8, align 8, !alias.scope !91, !noalias !94
  %9 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5.i, i64 0, i32 1, i32 1
  store i64 2, ptr %9, align 8, !alias.scope !91, !noalias !94
  store ptr null, ptr %_5.i, align 8, !alias.scope !91, !noalias !94
  %10 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5.i, i64 0, i32 2
  store ptr %_9.i, ptr %10, align 8, !alias.scope !91, !noalias !94
  %11 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5.i, i64 0, i32 2, i32 1
  store i64 1, ptr %11, align 8, !alias.scope !91, !noalias !94
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_5.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_5.i), !noalias !88
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_9.i), !noalias !88
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %line1.i), !noalias !88
  br label %_ZN6driver3src6driver10print_line17h932c7747f0da3e5fE.exit

_ZN6driver3src6driver10print_line17h932c7747f0da3e5fE.exit: ; preds = %bb1.i3, %start
  ret void
}

; Function Attrs: nonlazybind uwtable
declare noundef i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_ZN4core3ffi5c_str4CStr8from_ptr9strlen_rt17h463292534e232c62E(ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_ZN4core3ffi5c_str4CStr6to_str17h7660279a6932e49cE(ptr noalias nocapture noundef sret(%"core::result::Result<&str, core::str::error::Utf8Error>") dereferenceable(24), ptr noalias noundef nonnull readonly align 1, i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6result13unwrap_failed17h008634a1b68516fbE(ptr noalias noundef nonnull readonly align 1, i64 noundef, ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 dereferenceable(24), ptr noalias noundef readonly align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @"_ZN4core3ptr48drop_in_place$LT$core..str..error..Utf8Error$GT$17h1d6f64b633b1d7c5E"(ptr nocapture readnone %_1) unnamed_addr #5 {
start:
  ret void
}

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN64_$LT$core..str..error..Utf8Error$u20$as$u20$core..fmt..Debug$GT$3fmt17he5298eb5cbc8b1a7E"(ptr noalias noundef readonly align 8 dereferenceable(16), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { noreturn }

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
!21 = distinct !{!21, !22, !"_ZN6driver3src6driver10print_line17h932c7747f0da3e5fE: argument 0"}
!22 = distinct !{!22, !"_ZN6driver3src6driver10print_line17h932c7747f0da3e5fE"}
!23 = !{!24}
!24 = distinct !{!24, !25, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!25 = distinct !{!25, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!26 = !{!27, !21}
!27 = distinct !{!27, !25, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!28 = !{!29}
!29 = distinct !{!29, !30, !"_ZN6driver3src6driver10print_line17h932c7747f0da3e5fE: argument 0"}
!30 = distinct !{!30, !"_ZN6driver3src6driver10print_line17h932c7747f0da3e5fE"}
!31 = !{!32}
!32 = distinct !{!32, !33, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!33 = distinct !{!33, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!34 = !{!35, !29}
!35 = distinct !{!35, !33, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!36 = !{!37}
!37 = distinct !{!37, !38, !"_ZN6driver3src6driver10print_line17h932c7747f0da3e5fE: argument 0"}
!38 = distinct !{!38, !"_ZN6driver3src6driver10print_line17h932c7747f0da3e5fE"}
!39 = !{!40}
!40 = distinct !{!40, !41, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!41 = distinct !{!41, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!42 = !{!43, !37}
!43 = distinct !{!43, !41, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!44 = !{!45}
!45 = distinct !{!45, !46, !"_ZN6driver3src6driver10print_line17h932c7747f0da3e5fE: argument 0"}
!46 = distinct !{!46, !"_ZN6driver3src6driver10print_line17h932c7747f0da3e5fE"}
!47 = !{!48}
!48 = distinct !{!48, !49, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!49 = distinct !{!49, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!50 = !{!51, !45}
!51 = distinct !{!51, !49, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_ZN6driver3src6driver10print_line17h932c7747f0da3e5fE: argument 0"}
!54 = distinct !{!54, !"_ZN6driver3src6driver10print_line17h932c7747f0da3e5fE"}
!55 = !{!56}
!56 = distinct !{!56, !57, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!57 = distinct !{!57, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!58 = !{!59, !53}
!59 = distinct !{!59, !57, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!60 = !{!61}
!61 = distinct !{!61, !62, !"_ZN6driver3src6driver10print_line17h932c7747f0da3e5fE: argument 0"}
!62 = distinct !{!62, !"_ZN6driver3src6driver10print_line17h932c7747f0da3e5fE"}
!63 = !{!64}
!64 = distinct !{!64, !65, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!65 = distinct !{!65, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!66 = !{!67, !61}
!67 = distinct !{!67, !65, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!68 = !{!69}
!69 = distinct !{!69, !70, !"_ZN6driver3src6driver10print_line17h932c7747f0da3e5fE: argument 0"}
!70 = distinct !{!70, !"_ZN6driver3src6driver10print_line17h932c7747f0da3e5fE"}
!71 = !{!72}
!72 = distinct !{!72, !73, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!73 = distinct !{!73, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!74 = !{!75, !69}
!75 = distinct !{!75, !73, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!76 = !{!77}
!77 = distinct !{!77, !78, !"_ZN6driver3src6driver10print_line17h932c7747f0da3e5fE: argument 0"}
!78 = distinct !{!78, !"_ZN6driver3src6driver10print_line17h932c7747f0da3e5fE"}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!81 = distinct !{!81, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!82 = !{!83, !77}
!83 = distinct !{!83, !81, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!84 = !{!85}
!85 = distinct !{!85, !86, !"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h38d2f8f80620b971E: %self"}
!86 = distinct !{!86, !"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h38d2f8f80620b971E"}
!87 = !{i64 0, i64 2}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_ZN6driver3src6driver10print_line17h932c7747f0da3e5fE: argument 0"}
!90 = distinct !{!90, !"_ZN6driver3src6driver10print_line17h932c7747f0da3e5fE"}
!91 = !{!92}
!92 = distinct !{!92, !93, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!93 = distinct !{!93, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!94 = !{!95, !89}
!95 = distinct !{!95, !93, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
