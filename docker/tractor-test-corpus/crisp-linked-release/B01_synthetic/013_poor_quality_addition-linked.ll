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
@alloc_b21fe318ceeb516fa0c0c18324081d11 = private unnamed_addr constant <{ [17 x i8] }> <{ [17 x i8] c"Calling good()..." }>, align 1
@alloc_c4c271501b0611d0e2eb026b42cd652e = private unnamed_addr constant <{ [15 x i8] }> <{ [15 x i8] c"Finished good()" }>, align 1
@alloc_66c8280ac89deb430ec42a90f6fa3b97 = private unnamed_addr constant <{ [16 x i8] }> <{ [16 x i8] c"Calling bad()..." }>, align 1
@alloc_62ebc3b3b9d2a9beb326a074eead3a9d = private unnamed_addr constant <{ [14 x i8] }> <{ [14 x i8] c"Finished bad()" }>, align 1
@alloc_00728171eaa7ec2c5a267f4bf25d4ac3 = private unnamed_addr constant <{ [13 x i8] }> <{ [13 x i8] c"src/driver.rs" }>, align 1
@alloc_f26fb0f1d004e3584bf184f9cae62764 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_00728171eaa7ec2c5a267f4bf25d4ac3, [16 x i8] c"\0D\00\00\00\00\00\00\00>\00\00\00\1E\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define void @bad() unnamed_addr #0 {
start:
  %_7.i1.i = alloca [1 x { ptr, ptr }], align 8
  %_3.i2.i = alloca %"core::fmt::Arguments<'_>", align 8
  %int_number.i3.i = alloca i32, align 4
  %_7.i.i = alloca [1 x { ptr, ptr }], align 8
  %_3.i.i = alloca %"core::fmt::Arguments<'_>", align 8
  %int_number.i.i = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_number.i.i)
  store i32 0, ptr %int_number.i.i, align 4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_number.i3.i)
  store i32 0, ptr %int_number.i3.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i2.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i1.i)
  store ptr %int_number.i3.i, ptr %_7.i1.i, align 8
  %5 = getelementptr inbounds { ptr, ptr }, ptr %_7.i1.i, i64 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %5, align 8
  %6 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i2.i, i64 0, i32 1
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %6, align 8, !alias.scope !7, !noalias !10
  %7 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i2.i, i64 0, i32 1, i32 1
  store i64 2, ptr %7, align 8, !alias.scope !7, !noalias !10
  store ptr null, ptr %_3.i2.i, align 8, !alias.scope !7, !noalias !10
  %8 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i2.i, i64 0, i32 2
  store ptr %_7.i1.i, ptr %8, align 8, !alias.scope !7, !noalias !10
  %9 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i2.i, i64 0, i32 2, i32 1
  store i64 1, ptr %9, align 8, !alias.scope !7, !noalias !10
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i2.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i2.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i1.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_number.i3.i)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE"(ptr noalias noundef readonly align 4 dereferenceable(4), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef readonly dereferenceable(48)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nonlazybind uwtable
define void @driver() unnamed_addr #0 {
start:
  %_7.i13.i = alloca [1 x { ptr, ptr }], align 8
  %_3.i14.i = alloca %"core::fmt::Arguments<'_>", align 8
  %line.i15.i = alloca { ptr, i64 }, align 8
  %_7.i1.i7.i = alloca [1 x { ptr, ptr }], align 8
  %_3.i2.i8.i = alloca %"core::fmt::Arguments<'_>", align 8
  %int_number.i3.i9.i = alloca i32, align 4
  %_7.i.i10.i = alloca [1 x { ptr, ptr }], align 8
  %_3.i.i11.i = alloca %"core::fmt::Arguments<'_>", align 8
  %int_number.i.i12.i = alloca i32, align 4
  %_7.i4.i = alloca [1 x { ptr, ptr }], align 8
  %_3.i5.i = alloca %"core::fmt::Arguments<'_>", align 8
  %line.i6.i = alloca { ptr, i64 }, align 8
  %_7.i1.i = alloca [1 x { ptr, ptr }], align 8
  %_3.i2.i = alloca %"core::fmt::Arguments<'_>", align 8
  %line.i3.i = alloca { ptr, i64 }, align 8
  %_7.i1.i.i = alloca [1 x { ptr, ptr }], align 8
  %_3.i2.i.i = alloca %"core::fmt::Arguments<'_>", align 8
  %int_number.i3.i.i = alloca i32, align 4
  %_7.i.i.i = alloca [1 x { ptr, ptr }], align 8
  %_3.i.i.i = alloca %"core::fmt::Arguments<'_>", align 8
  %int_number.i.i.i = alloca i32, align 4
  %_7.i.i = alloca [1 x { ptr, ptr }], align 8
  %_3.i.i = alloca %"core::fmt::Arguments<'_>", align 8
  %line.i.i = alloca { ptr, i64 }, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %line.i.i)
  store ptr @alloc_b21fe318ceeb516fa0c0c18324081d11, ptr %line.i.i, align 8, !noalias !12
  %0 = getelementptr inbounds { ptr, i64 }, ptr %line.i.i, i64 0, i32 1
  store i64 17, ptr %0, align 8, !noalias !12
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i.i), !noalias !12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i.i), !noalias !12
  store ptr %line.i.i, ptr %_7.i.i, align 8, !noalias !12
  %1 = getelementptr inbounds { ptr, ptr }, ptr %_7.i.i, i64 0, i32 1
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6ef0efaac15b9818E", ptr %1, align 8, !noalias !12
  %2 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i, i64 0, i32 1
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %2, align 8, !alias.scope !15, !noalias !18
  %3 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i, i64 0, i32 1, i32 1
  store i64 2, ptr %3, align 8, !alias.scope !15, !noalias !18
  store ptr null, ptr %_3.i.i, align 8, !alias.scope !15, !noalias !18
  %4 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i, i64 0, i32 2
  store ptr %_7.i.i, ptr %4, align 8, !alias.scope !15, !noalias !18
  %5 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i, i64 0, i32 2, i32 1
  store i64 1, ptr %5, align 8, !alias.scope !15, !noalias !18
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i.i), !noalias !12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i.i), !noalias !12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %line.i.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_number.i.i.i)
  store i32 0, ptr %int_number.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i.i.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i.i.i)
  store ptr %int_number.i.i.i, ptr %_7.i.i.i, align 8
  %6 = getelementptr inbounds { ptr, ptr }, ptr %_7.i.i.i, i64 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %6, align 8
  %7 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i.i, i64 0, i32 1
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %7, align 8, !alias.scope !20, !noalias !23
  %8 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i.i, i64 0, i32 1, i32 1
  store i64 2, ptr %8, align 8, !alias.scope !20, !noalias !23
  store ptr null, ptr %_3.i.i.i, align 8, !alias.scope !20, !noalias !23
  %9 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i.i, i64 0, i32 2
  store ptr %_7.i.i.i, ptr %9, align 8, !alias.scope !20, !noalias !23
  %10 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i.i, i64 0, i32 2, i32 1
  store i64 1, ptr %10, align 8, !alias.scope !20, !noalias !23
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i.i.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i.i.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i.i.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_number.i.i.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_number.i3.i.i)
  store i32 2, ptr %int_number.i3.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i2.i.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i1.i.i)
  store ptr %int_number.i3.i.i, ptr %_7.i1.i.i, align 8
  %11 = getelementptr inbounds { ptr, ptr }, ptr %_7.i1.i.i, i64 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %11, align 8
  %12 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i2.i.i, i64 0, i32 1
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %12, align 8, !alias.scope !25, !noalias !28
  %13 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i2.i.i, i64 0, i32 1, i32 1
  store i64 2, ptr %13, align 8, !alias.scope !25, !noalias !28
  store ptr null, ptr %_3.i2.i.i, align 8, !alias.scope !25, !noalias !28
  %14 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i2.i.i, i64 0, i32 2
  store ptr %_7.i1.i.i, ptr %14, align 8, !alias.scope !25, !noalias !28
  %15 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i2.i.i, i64 0, i32 2, i32 1
  store i64 1, ptr %15, align 8, !alias.scope !25, !noalias !28
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i2.i.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i2.i.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i1.i.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_number.i3.i.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %line.i3.i)
  store ptr @alloc_c4c271501b0611d0e2eb026b42cd652e, ptr %line.i3.i, align 8, !noalias !30
  %16 = getelementptr inbounds { ptr, i64 }, ptr %line.i3.i, i64 0, i32 1
  store i64 15, ptr %16, align 8, !noalias !30
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i2.i), !noalias !30
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i1.i), !noalias !30
  store ptr %line.i3.i, ptr %_7.i1.i, align 8, !noalias !30
  %17 = getelementptr inbounds { ptr, ptr }, ptr %_7.i1.i, i64 0, i32 1
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6ef0efaac15b9818E", ptr %17, align 8, !noalias !30
  %18 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i2.i, i64 0, i32 1
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %18, align 8, !alias.scope !33, !noalias !36
  %19 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i2.i, i64 0, i32 1, i32 1
  store i64 2, ptr %19, align 8, !alias.scope !33, !noalias !36
  store ptr null, ptr %_3.i2.i, align 8, !alias.scope !33, !noalias !36
  %20 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i2.i, i64 0, i32 2
  store ptr %_7.i1.i, ptr %20, align 8, !alias.scope !33, !noalias !36
  %21 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i2.i, i64 0, i32 2, i32 1
  store i64 1, ptr %21, align 8, !alias.scope !33, !noalias !36
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i2.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i2.i), !noalias !30
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i1.i), !noalias !30
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %line.i3.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %line.i6.i)
  store ptr @alloc_66c8280ac89deb430ec42a90f6fa3b97, ptr %line.i6.i, align 8, !noalias !38
  %22 = getelementptr inbounds { ptr, i64 }, ptr %line.i6.i, i64 0, i32 1
  store i64 16, ptr %22, align 8, !noalias !38
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i5.i), !noalias !38
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i4.i), !noalias !38
  store ptr %line.i6.i, ptr %_7.i4.i, align 8, !noalias !38
  %23 = getelementptr inbounds { ptr, ptr }, ptr %_7.i4.i, i64 0, i32 1
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6ef0efaac15b9818E", ptr %23, align 8, !noalias !38
  %24 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i5.i, i64 0, i32 1
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %24, align 8, !alias.scope !41, !noalias !44
  %25 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i5.i, i64 0, i32 1, i32 1
  store i64 2, ptr %25, align 8, !alias.scope !41, !noalias !44
  store ptr null, ptr %_3.i5.i, align 8, !alias.scope !41, !noalias !44
  %26 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i5.i, i64 0, i32 2
  store ptr %_7.i4.i, ptr %26, align 8, !alias.scope !41, !noalias !44
  %27 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i5.i, i64 0, i32 2, i32 1
  store i64 1, ptr %27, align 8, !alias.scope !41, !noalias !44
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i5.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i5.i), !noalias !38
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i4.i), !noalias !38
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %line.i6.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_number.i.i12.i)
  store i32 0, ptr %int_number.i.i12.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i.i11.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i.i10.i)
  store ptr %int_number.i.i12.i, ptr %_7.i.i10.i, align 8
  %28 = getelementptr inbounds { ptr, ptr }, ptr %_7.i.i10.i, i64 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %28, align 8
  %29 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i11.i, i64 0, i32 1
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %29, align 8, !alias.scope !46, !noalias !49
  %30 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i11.i, i64 0, i32 1, i32 1
  store i64 2, ptr %30, align 8, !alias.scope !46, !noalias !49
  store ptr null, ptr %_3.i.i11.i, align 8, !alias.scope !46, !noalias !49
  %31 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i11.i, i64 0, i32 2
  store ptr %_7.i.i10.i, ptr %31, align 8, !alias.scope !46, !noalias !49
  %32 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i11.i, i64 0, i32 2, i32 1
  store i64 1, ptr %32, align 8, !alias.scope !46, !noalias !49
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i.i11.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i.i11.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i.i10.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_number.i.i12.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_number.i3.i9.i)
  store i32 0, ptr %int_number.i3.i9.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i2.i8.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i1.i7.i)
  store ptr %int_number.i3.i9.i, ptr %_7.i1.i7.i, align 8
  %33 = getelementptr inbounds { ptr, ptr }, ptr %_7.i1.i7.i, i64 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %33, align 8
  %34 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i2.i8.i, i64 0, i32 1
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %34, align 8, !alias.scope !51, !noalias !54
  %35 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i2.i8.i, i64 0, i32 1, i32 1
  store i64 2, ptr %35, align 8, !alias.scope !51, !noalias !54
  store ptr null, ptr %_3.i2.i8.i, align 8, !alias.scope !51, !noalias !54
  %36 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i2.i8.i, i64 0, i32 2
  store ptr %_7.i1.i7.i, ptr %36, align 8, !alias.scope !51, !noalias !54
  %37 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i2.i8.i, i64 0, i32 2, i32 1
  store i64 1, ptr %37, align 8, !alias.scope !51, !noalias !54
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i2.i8.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i2.i8.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i1.i7.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_number.i3.i9.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %line.i15.i)
  store ptr @alloc_62ebc3b3b9d2a9beb326a074eead3a9d, ptr %line.i15.i, align 8, !noalias !56
  %38 = getelementptr inbounds { ptr, i64 }, ptr %line.i15.i, i64 0, i32 1
  store i64 14, ptr %38, align 8, !noalias !56
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i14.i), !noalias !56
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i13.i), !noalias !56
  store ptr %line.i15.i, ptr %_7.i13.i, align 8, !noalias !56
  %39 = getelementptr inbounds { ptr, ptr }, ptr %_7.i13.i, i64 0, i32 1
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6ef0efaac15b9818E", ptr %39, align 8, !noalias !56
  %40 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i14.i, i64 0, i32 1
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %40, align 8, !alias.scope !59, !noalias !62
  %41 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i14.i, i64 0, i32 1, i32 1
  store i64 2, ptr %41, align 8, !alias.scope !59, !noalias !62
  store ptr null, ptr %_3.i14.i, align 8, !alias.scope !59, !noalias !62
  %42 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i14.i, i64 0, i32 2
  store ptr %_7.i13.i, ptr %42, align 8, !alias.scope !59, !noalias !62
  %43 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i14.i, i64 0, i32 2, i32 1
  store i64 1, ptr %43, align 8, !alias.scope !59, !noalias !62
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i14.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i14.i), !noalias !56
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i13.i), !noalias !56
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %line.i15.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6ef0efaac15b9818E"(ptr noalias nocapture noundef readonly align 8 dereferenceable(16) %self, ptr noalias noundef align 8 dereferenceable(64) %f) unnamed_addr #0 {
start:
  %_3.0 = load ptr, ptr %self, align 8, !nonnull !64, !align !65, !noundef !64
  %0 = getelementptr inbounds { ptr, i64 }, ptr %self, i64 0, i32 1
  %_3.1 = load i64, ptr %0, align 8, !noundef !64
  %1 = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h3810e0e68cb69985E"(ptr noalias noundef nonnull readonly align 1 %_3.0, i64 noundef %_3.1, ptr noalias noundef nonnull align 8 dereferenceable(64) %f)
  ret i1 %1
}

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h3810e0e68cb69985E"(ptr noalias noundef nonnull readonly align 1, i64 noundef, ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
define void @good() unnamed_addr #0 {
start:
  %_7.i1.i = alloca [1 x { ptr, ptr }], align 8
  %_3.i2.i = alloca %"core::fmt::Arguments<'_>", align 8
  %int_number.i3.i = alloca i32, align 4
  %_7.i.i = alloca [1 x { ptr, ptr }], align 8
  %_3.i.i = alloca %"core::fmt::Arguments<'_>", align 8
  %int_number.i.i = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_number.i.i)
  store i32 0, ptr %int_number.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i.i)
  store ptr %int_number.i.i, ptr %_7.i.i, align 8
  %0 = getelementptr inbounds { ptr, ptr }, ptr %_7.i.i, i64 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %0, align 8
  %1 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i, i64 0, i32 1
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %1, align 8, !alias.scope !66, !noalias !69
  %2 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i, i64 0, i32 1, i32 1
  store i64 2, ptr %2, align 8, !alias.scope !66, !noalias !69
  store ptr null, ptr %_3.i.i, align 8, !alias.scope !66, !noalias !69
  %3 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i, i64 0, i32 2
  store ptr %_7.i.i, ptr %3, align 8, !alias.scope !66, !noalias !69
  %4 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i, i64 0, i32 2, i32 1
  store i64 1, ptr %4, align 8, !alias.scope !66, !noalias !69
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_number.i.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_number.i3.i)
  store i32 2, ptr %int_number.i3.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i2.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i1.i)
  store ptr %int_number.i3.i, ptr %_7.i1.i, align 8
  %5 = getelementptr inbounds { ptr, ptr }, ptr %_7.i1.i, i64 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %5, align 8
  %6 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i2.i, i64 0, i32 1
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %6, align 8, !alias.scope !71, !noalias !74
  %7 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i2.i, i64 0, i32 1, i32 1
  store i64 2, ptr %7, align 8, !alias.scope !71, !noalias !74
  store ptr null, ptr %_3.i2.i, align 8, !alias.scope !71, !noalias !74
  %8 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i2.i, i64 0, i32 2
  store ptr %_7.i1.i, ptr %8, align 8, !alias.scope !71, !noalias !74
  %9 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i2.i, i64 0, i32 2, i32 1
  store i64 1, ptr %9, align 8, !alias.scope !71, !noalias !74
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i2.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i2.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i1.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_number.i3.i)
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
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %1, align 8, !alias.scope !76, !noalias !79
  %2 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 1, i32 1
  store i64 2, ptr %2, align 8, !alias.scope !76, !noalias !79
  store ptr null, ptr %_3.i, align 8, !alias.scope !76, !noalias !79
  %3 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 2
  store ptr %_7.i, ptr %3, align 8, !alias.scope !76, !noalias !79
  %4 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 2, i32 1
  store i64 1, ptr %4, align 8, !alias.scope !76, !noalias !79
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  %_2.i = load i64, ptr %_4, align 8, !range !84, !alias.scope !81, !noundef !64
  %trunc.not.i = icmp eq i64 %_2.i, 0
  br i1 %trunc.not.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h64a198ee6f8b054dE.exit", label %bb1.i

bb1.i:                                            ; preds = %start
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %e.i), !noalias !81
  %1 = getelementptr inbounds %"core::result::Result<&str, core::str::error::Utf8Error>::Err", ptr %_4, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %e.i, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  call void @_ZN4core6result13unwrap_failed17h008634a1b68516fbE(ptr noalias noundef nonnull readonly align 1 @alloc_00ae4b301f7fab8ac9617c03fcbd7274, i64 noundef 43, ptr noundef nonnull align 1 %e.i, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @vtable.0, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_f26fb0f1d004e3584bf184f9cae62764) #7, !noalias !81
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h64a198ee6f8b054dE.exit": ; preds = %start
  %2 = getelementptr inbounds %"core::result::Result<&str, core::str::error::Utf8Error>::Ok", ptr %_4, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !alias.scope !81, !nonnull !64, !align !65, !noundef !64
  %4 = getelementptr inbounds %"core::result::Result<&str, core::str::error::Utf8Error>::Ok", ptr %_4, i64 0, i32 1, i32 1
  %5 = load i64, ptr %4, align 8, !alias.scope !81, !noundef !64
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %line.i)
  store ptr %3, ptr %line.i, align 8, !noalias !85
  %6 = getelementptr inbounds { ptr, i64 }, ptr %line.i, i64 0, i32 1
  store i64 %5, ptr %6, align 8, !noalias !85
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i), !noalias !85
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i), !noalias !85
  store ptr %line.i, ptr %_7.i, align 8, !noalias !85
  %7 = getelementptr inbounds { ptr, ptr }, ptr %_7.i, i64 0, i32 1
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6ef0efaac15b9818E", ptr %7, align 8, !noalias !85
  %8 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 1
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %8, align 8, !alias.scope !88, !noalias !91
  %9 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 1, i32 1
  store i64 2, ptr %9, align 8, !alias.scope !88, !noalias !91
  store ptr null, ptr %_3.i, align 8, !alias.scope !88, !noalias !91
  %10 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 2
  store ptr %_7.i, ptr %10, align 8, !alias.scope !88, !noalias !91
  %11 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 2, i32 1
  store i64 1, ptr %11, align 8, !alias.scope !88, !noalias !91
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i), !noalias !85
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i), !noalias !85
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %line.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
declare noundef i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_ZN4core3ffi5c_str4CStr8from_ptr9strlen_rt17h463292534e232c62E(ptr noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #2

; Function Attrs: nonlazybind uwtable
declare void @_ZN4core3ffi5c_str4CStr6to_str17h7660279a6932e49cE(ptr noalias nocapture noundef sret(%"core::result::Result<&str, core::str::error::Utf8Error>") dereferenceable(24), ptr noalias noundef nonnull readonly align 1, i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6result13unwrap_failed17h008634a1b68516fbE(ptr noalias noundef nonnull readonly align 1, i64 noundef, ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 dereferenceable(24), ptr noalias noundef readonly align 8 dereferenceable(24)) unnamed_addr #5

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @"_ZN4core3ptr48drop_in_place$LT$core..str..error..Utf8Error$GT$17h1d6f64b633b1d7c5E"(ptr nocapture readnone %_1) unnamed_addr #6 {
start:
  ret void
}

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN64_$LT$core..str..error..Utf8Error$u20$as$u20$core..fmt..Debug$GT$3fmt17he5298eb5cbc8b1a7E"(ptr noalias noundef readonly align 8 dereferenceable(16), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { noreturn }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!3}
!3 = distinct !{!3, !4, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!4 = distinct !{!4, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!5 = !{!6}
!6 = distinct !{!6, !4, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!7 = !{!8}
!8 = distinct !{!8, !9, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!9 = distinct !{!9, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!10 = !{!11}
!11 = distinct !{!11, !9, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!12 = !{!13}
!13 = distinct !{!13, !14, !"_ZN6driver3src6driver10print_line17h310498be717b500eE: argument 0"}
!14 = distinct !{!14, !"_ZN6driver3src6driver10print_line17h310498be717b500eE"}
!15 = !{!16}
!16 = distinct !{!16, !17, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!17 = distinct !{!17, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!18 = !{!19, !13}
!19 = distinct !{!19, !17, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!20 = !{!21}
!21 = distinct !{!21, !22, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!22 = distinct !{!22, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!23 = !{!24}
!24 = distinct !{!24, !22, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!25 = !{!26}
!26 = distinct !{!26, !27, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!27 = distinct !{!27, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!28 = !{!29}
!29 = distinct !{!29, !27, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!30 = !{!31}
!31 = distinct !{!31, !32, !"_ZN6driver3src6driver10print_line17h310498be717b500eE: argument 0"}
!32 = distinct !{!32, !"_ZN6driver3src6driver10print_line17h310498be717b500eE"}
!33 = !{!34}
!34 = distinct !{!34, !35, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!35 = distinct !{!35, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!36 = !{!37, !31}
!37 = distinct !{!37, !35, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!38 = !{!39}
!39 = distinct !{!39, !40, !"_ZN6driver3src6driver10print_line17h310498be717b500eE: argument 0"}
!40 = distinct !{!40, !"_ZN6driver3src6driver10print_line17h310498be717b500eE"}
!41 = !{!42}
!42 = distinct !{!42, !43, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!43 = distinct !{!43, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!44 = !{!45, !39}
!45 = distinct !{!45, !43, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!46 = !{!47}
!47 = distinct !{!47, !48, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!48 = distinct !{!48, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!49 = !{!50}
!50 = distinct !{!50, !48, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!51 = !{!52}
!52 = distinct !{!52, !53, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!53 = distinct !{!53, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!54 = !{!55}
!55 = distinct !{!55, !53, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!56 = !{!57}
!57 = distinct !{!57, !58, !"_ZN6driver3src6driver10print_line17h310498be717b500eE: argument 0"}
!58 = distinct !{!58, !"_ZN6driver3src6driver10print_line17h310498be717b500eE"}
!59 = !{!60}
!60 = distinct !{!60, !61, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!61 = distinct !{!61, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!62 = !{!63, !57}
!63 = distinct !{!63, !61, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!64 = !{}
!65 = !{i64 1}
!66 = !{!67}
!67 = distinct !{!67, !68, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!68 = distinct !{!68, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!69 = !{!70}
!70 = distinct !{!70, !68, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!71 = !{!72}
!72 = distinct !{!72, !73, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!73 = distinct !{!73, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!74 = !{!75}
!75 = distinct !{!75, !73, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!76 = !{!77}
!77 = distinct !{!77, !78, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!78 = distinct !{!78, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!79 = !{!80}
!80 = distinct !{!80, !78, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!81 = !{!82}
!82 = distinct !{!82, !83, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h64a198ee6f8b054dE: %self"}
!83 = distinct !{!83, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h64a198ee6f8b054dE"}
!84 = !{i64 0, i64 2}
!85 = !{!86}
!86 = distinct !{!86, !87, !"_ZN6driver3src6driver10print_line17h310498be717b500eE: argument 0"}
!87 = distinct !{!87, !"_ZN6driver3src6driver10print_line17h310498be717b500eE"}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!90 = distinct !{!90, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!91 = !{!92, !86}
!92 = distinct !{!92, !90, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
