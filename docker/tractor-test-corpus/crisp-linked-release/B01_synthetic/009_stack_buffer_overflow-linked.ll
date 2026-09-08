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
@alloc_00728171eaa7ec2c5a267f4bf25d4ac3 = private unnamed_addr constant <{ [13 x i8] }> <{ [13 x i8] c"src/driver.rs" }>, align 1
@alloc_b462eeb0cedb3bef6b77b1b647a60803 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_00728171eaa7ec2c5a267f4bf25d4ac3, [16 x i8] c"\0D\00\00\00\00\00\00\00\10\00\00\00\09\00\00\00" }>, align 8
@alloc_f83b38b81197a72673650abf84756281 = private unnamed_addr constant <{ [31 x i8] }> <{ [31 x i8] c"ERROR: Array index is negative." }>, align 1
@alloc_0d9fbbe44f946597bd04f3ea4c95c419 = private unnamed_addr constant <{ [35 x i8] }> <{ [35 x i8] c"ERROR: Array index is out-of-bounds" }>, align 1
@alloc_b21fe318ceeb516fa0c0c18324081d11 = private unnamed_addr constant <{ [17 x i8] }> <{ [17 x i8] c"Calling good()..." }>, align 1
@alloc_c4c271501b0611d0e2eb026b42cd652e = private unnamed_addr constant <{ [15 x i8] }> <{ [15 x i8] c"Finished good()" }>, align 1
@alloc_66c8280ac89deb430ec42a90f6fa3b97 = private unnamed_addr constant <{ [16 x i8] }> <{ [16 x i8] c"Calling bad()..." }>, align 1
@alloc_62ebc3b3b9d2a9beb326a074eead3a9d = private unnamed_addr constant <{ [14 x i8] }> <{ [14 x i8] c"Finished bad()" }>, align 1
@alloc_fd41a9babf87f851744f188b93591009 = private unnamed_addr constant <{ [35 x i8] }> <{ [35 x i8] c"printLine received non-UTF-8 string" }>, align 1
@alloc_beb018350139a766dc1d7d9d855e67c0 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_00728171eaa7ec2c5a267f4bf25d4ac3, [16 x i8] c"\0D\00\00\00\00\00\00\00^\00\00\00\1E\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define void @bad(i32 noundef %data) unnamed_addr #0 {
start:
  tail call fastcc void @_ZN6driver3src6driver3bad17hd6d0861913d87316E(i32 noundef %data)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN6driver3src6driver3bad17hd6d0861913d87316E(i32 noundef %data) unnamed_addr #0 {
start:
  %_7.i4 = alloca [1 x { ptr, ptr }], align 8
  %_3.i5 = alloca %"core::fmt::Arguments<'_>", align 8
  %int_number.i = alloca i32, align 4
  %_7.i = alloca [1 x { ptr, ptr }], align 8
  %_3.i = alloca %"core::fmt::Arguments<'_>", align 8
  %line.i = alloca { ptr, i64 }, align 8
  %buffer = alloca [10 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %buffer)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %buffer, i8 0, i64 40, i1 false)
  %_3 = icmp sgt i32 %data, -1
  br i1 %_3, label %bb1, label %bb8

bb8:                                              ; preds = %start
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %line.i)
  store ptr @alloc_f83b38b81197a72673650abf84756281, ptr %line.i, align 8, !noalias !2
  %0 = getelementptr inbounds { ptr, i64 }, ptr %line.i, i64 0, i32 1
  store i64 31, ptr %0, align 8, !noalias !2
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i), !noalias !2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i), !noalias !2
  store ptr %line.i, ptr %_7.i, align 8, !noalias !2
  %1 = getelementptr inbounds { ptr, ptr }, ptr %_7.i, i64 0, i32 1
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6ef0efaac15b9818E", ptr %1, align 8, !noalias !2
  %2 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 1
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %2, align 8, !alias.scope !5, !noalias !8
  %3 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 1, i32 1
  store i64 2, ptr %3, align 8, !alias.scope !5, !noalias !8
  store ptr null, ptr %_3.i, align 8, !alias.scope !5, !noalias !8
  %4 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 2
  store ptr %_7.i, ptr %4, align 8, !alias.scope !5, !noalias !8
  %5 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 2, i32 1
  store i64 1, ptr %5, align 8, !alias.scope !5, !noalias !8
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i), !noalias !2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i), !noalias !2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %line.i)
  br label %bb9

bb1:                                              ; preds = %start
  %_4 = zext i32 %data to i64
  %_6 = icmp ult i32 %data, 10
  br i1 %_6, label %bb2, label %panic, !prof !10

bb2:                                              ; preds = %bb1
  %6 = getelementptr inbounds [10 x i32], ptr %buffer, i64 0, i64 %_4
  store i32 1, ptr %6, align 4
  %7 = getelementptr inbounds { ptr, ptr }, ptr %_7.i4, i64 0, i32 1
  %8 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i5, i64 0, i32 1
  %9 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i5, i64 0, i32 1, i32 1
  %10 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i5, i64 0, i32 2
  %11 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i5, i64 0, i32 2, i32 1
  %_11 = load i32, ptr %buffer, align 4, !noundef !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_number.i)
  store i32 %_11, ptr %int_number.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i5)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i4)
  store ptr %int_number.i, ptr %_7.i4, align 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %7, align 8
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %8, align 8, !alias.scope !12, !noalias !15
  store i64 2, ptr %9, align 8, !alias.scope !12, !noalias !15
  store ptr null, ptr %_3.i5, align 8, !alias.scope !12, !noalias !15
  store ptr %_7.i4, ptr %10, align 8, !alias.scope !12, !noalias !15
  store i64 1, ptr %11, align 8, !alias.scope !12, !noalias !15
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i5)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i5)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_number.i)
  %12 = getelementptr inbounds [10 x i32], ptr %buffer, i64 0, i64 1
  %_11.1 = load i32, ptr %12, align 4, !noundef !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_number.i)
  store i32 %_11.1, ptr %int_number.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i5)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i4)
  store ptr %int_number.i, ptr %_7.i4, align 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %7, align 8
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %8, align 8, !alias.scope !12, !noalias !15
  store i64 2, ptr %9, align 8, !alias.scope !12, !noalias !15
  store ptr null, ptr %_3.i5, align 8, !alias.scope !12, !noalias !15
  store ptr %_7.i4, ptr %10, align 8, !alias.scope !12, !noalias !15
  store i64 1, ptr %11, align 8, !alias.scope !12, !noalias !15
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i5)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i5)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_number.i)
  %13 = getelementptr inbounds [10 x i32], ptr %buffer, i64 0, i64 2
  %_11.2 = load i32, ptr %13, align 4, !noundef !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_number.i)
  store i32 %_11.2, ptr %int_number.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i5)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i4)
  store ptr %int_number.i, ptr %_7.i4, align 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %7, align 8
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %8, align 8, !alias.scope !12, !noalias !15
  store i64 2, ptr %9, align 8, !alias.scope !12, !noalias !15
  store ptr null, ptr %_3.i5, align 8, !alias.scope !12, !noalias !15
  store ptr %_7.i4, ptr %10, align 8, !alias.scope !12, !noalias !15
  store i64 1, ptr %11, align 8, !alias.scope !12, !noalias !15
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i5)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i5)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_number.i)
  %14 = getelementptr inbounds [10 x i32], ptr %buffer, i64 0, i64 3
  %_11.3 = load i32, ptr %14, align 4, !noundef !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_number.i)
  store i32 %_11.3, ptr %int_number.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i5)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i4)
  store ptr %int_number.i, ptr %_7.i4, align 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %7, align 8
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %8, align 8, !alias.scope !12, !noalias !15
  store i64 2, ptr %9, align 8, !alias.scope !12, !noalias !15
  store ptr null, ptr %_3.i5, align 8, !alias.scope !12, !noalias !15
  store ptr %_7.i4, ptr %10, align 8, !alias.scope !12, !noalias !15
  store i64 1, ptr %11, align 8, !alias.scope !12, !noalias !15
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i5)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i5)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_number.i)
  %15 = getelementptr inbounds [10 x i32], ptr %buffer, i64 0, i64 4
  %_11.4 = load i32, ptr %15, align 4, !noundef !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_number.i)
  store i32 %_11.4, ptr %int_number.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i5)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i4)
  store ptr %int_number.i, ptr %_7.i4, align 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %7, align 8
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %8, align 8, !alias.scope !12, !noalias !15
  store i64 2, ptr %9, align 8, !alias.scope !12, !noalias !15
  store ptr null, ptr %_3.i5, align 8, !alias.scope !12, !noalias !15
  store ptr %_7.i4, ptr %10, align 8, !alias.scope !12, !noalias !15
  store i64 1, ptr %11, align 8, !alias.scope !12, !noalias !15
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i5)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i5)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_number.i)
  %16 = getelementptr inbounds [10 x i32], ptr %buffer, i64 0, i64 5
  %_11.5 = load i32, ptr %16, align 4, !noundef !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_number.i)
  store i32 %_11.5, ptr %int_number.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i5)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i4)
  store ptr %int_number.i, ptr %_7.i4, align 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %7, align 8
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %8, align 8, !alias.scope !12, !noalias !15
  store i64 2, ptr %9, align 8, !alias.scope !12, !noalias !15
  store ptr null, ptr %_3.i5, align 8, !alias.scope !12, !noalias !15
  store ptr %_7.i4, ptr %10, align 8, !alias.scope !12, !noalias !15
  store i64 1, ptr %11, align 8, !alias.scope !12, !noalias !15
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i5)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i5)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_number.i)
  %17 = getelementptr inbounds [10 x i32], ptr %buffer, i64 0, i64 6
  %_11.6 = load i32, ptr %17, align 4, !noundef !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_number.i)
  store i32 %_11.6, ptr %int_number.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i5)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i4)
  store ptr %int_number.i, ptr %_7.i4, align 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %7, align 8
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %8, align 8, !alias.scope !12, !noalias !15
  store i64 2, ptr %9, align 8, !alias.scope !12, !noalias !15
  store ptr null, ptr %_3.i5, align 8, !alias.scope !12, !noalias !15
  store ptr %_7.i4, ptr %10, align 8, !alias.scope !12, !noalias !15
  store i64 1, ptr %11, align 8, !alias.scope !12, !noalias !15
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i5)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i5)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_number.i)
  %18 = getelementptr inbounds [10 x i32], ptr %buffer, i64 0, i64 7
  %_11.7 = load i32, ptr %18, align 4, !noundef !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_number.i)
  store i32 %_11.7, ptr %int_number.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i5)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i4)
  store ptr %int_number.i, ptr %_7.i4, align 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %7, align 8
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %8, align 8, !alias.scope !12, !noalias !15
  store i64 2, ptr %9, align 8, !alias.scope !12, !noalias !15
  store ptr null, ptr %_3.i5, align 8, !alias.scope !12, !noalias !15
  store ptr %_7.i4, ptr %10, align 8, !alias.scope !12, !noalias !15
  store i64 1, ptr %11, align 8, !alias.scope !12, !noalias !15
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i5)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i5)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_number.i)
  %19 = getelementptr inbounds [10 x i32], ptr %buffer, i64 0, i64 8
  %_11.8 = load i32, ptr %19, align 4, !noundef !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_number.i)
  store i32 %_11.8, ptr %int_number.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i5)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i4)
  store ptr %int_number.i, ptr %_7.i4, align 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %7, align 8
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %8, align 8, !alias.scope !12, !noalias !15
  store i64 2, ptr %9, align 8, !alias.scope !12, !noalias !15
  store ptr null, ptr %_3.i5, align 8, !alias.scope !12, !noalias !15
  store ptr %_7.i4, ptr %10, align 8, !alias.scope !12, !noalias !15
  store i64 1, ptr %11, align 8, !alias.scope !12, !noalias !15
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i5)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i5)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_number.i)
  %20 = getelementptr inbounds [10 x i32], ptr %buffer, i64 0, i64 9
  %_11.9 = load i32, ptr %20, align 4, !noundef !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_number.i)
  store i32 %_11.9, ptr %int_number.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i5)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i4)
  store ptr %int_number.i, ptr %_7.i4, align 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %7, align 8
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %8, align 8, !alias.scope !12, !noalias !15
  store i64 2, ptr %9, align 8, !alias.scope !12, !noalias !15
  store ptr null, ptr %_3.i5, align 8, !alias.scope !12, !noalias !15
  store ptr %_7.i4, ptr %10, align 8, !alias.scope !12, !noalias !15
  store i64 1, ptr %11, align 8, !alias.scope !12, !noalias !15
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i5)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i5)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_number.i)
  br label %bb9

panic:                                            ; preds = %bb1
  tail call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 noundef %_4, i64 noundef 10, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_b462eeb0cedb3bef6b77b1b647a60803) #8
  unreachable

bb9:                                              ; preds = %bb2, %bb8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %buffer)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6ef0efaac15b9818E"(ptr noalias nocapture noundef readonly align 8 dereferenceable(16) %self, ptr noalias noundef align 8 dereferenceable(64) %f) unnamed_addr #0 {
start:
  %_3.0 = load ptr, ptr %self, align 8, !nonnull !11, !align !17, !noundef !11
  %0 = getelementptr inbounds { ptr, i64 }, ptr %self, i64 0, i32 1
  %_3.1 = load i64, ptr %0, align 8, !noundef !11
  %1 = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h3810e0e68cb69985E"(ptr noalias noundef nonnull readonly align 1 %_3.0, i64 noundef %_3.1, ptr noalias noundef nonnull align 8 dereferenceable(64) %f)
  ret i1 %1
}

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef readonly dereferenceable(48)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE"(ptr noalias noundef readonly align 4 dereferenceable(4), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h3810e0e68cb69985E"(ptr noalias noundef nonnull readonly align 1, i64 noundef, ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
define void @driver(i32 noundef %good_data, i32 noundef %bad_data) unnamed_addr #0 {
start:
  %_7.i7.i = alloca [1 x { ptr, ptr }], align 8
  %_3.i8.i = alloca %"core::fmt::Arguments<'_>", align 8
  %line.i9.i = alloca { ptr, i64 }, align 8
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
  store ptr @alloc_b21fe318ceeb516fa0c0c18324081d11, ptr %line.i.i, align 8, !noalias !18
  %0 = getelementptr inbounds { ptr, i64 }, ptr %line.i.i, i64 0, i32 1
  store i64 17, ptr %0, align 8, !noalias !18
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i.i), !noalias !18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i.i), !noalias !18
  store ptr %line.i.i, ptr %_7.i.i, align 8, !noalias !18
  %1 = getelementptr inbounds { ptr, ptr }, ptr %_7.i.i, i64 0, i32 1
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6ef0efaac15b9818E", ptr %1, align 8, !noalias !18
  %2 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i, i64 0, i32 1
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %2, align 8, !alias.scope !21, !noalias !24
  %3 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i, i64 0, i32 1, i32 1
  store i64 2, ptr %3, align 8, !alias.scope !21, !noalias !24
  store ptr null, ptr %_3.i.i, align 8, !alias.scope !21, !noalias !24
  %4 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i, i64 0, i32 2
  store ptr %_7.i.i, ptr %4, align 8, !alias.scope !21, !noalias !24
  %5 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i, i64 0, i32 2, i32 1
  store i64 1, ptr %5, align 8, !alias.scope !21, !noalias !24
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i.i), !noalias !18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i.i), !noalias !18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %line.i.i)
  call fastcc void @_ZN6driver3src6driver4good17h726fecb07a18779eE(i32 noundef %good_data)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %line.i3.i)
  store ptr @alloc_c4c271501b0611d0e2eb026b42cd652e, ptr %line.i3.i, align 8, !noalias !26
  %6 = getelementptr inbounds { ptr, i64 }, ptr %line.i3.i, i64 0, i32 1
  store i64 15, ptr %6, align 8, !noalias !26
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i2.i), !noalias !26
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i1.i), !noalias !26
  store ptr %line.i3.i, ptr %_7.i1.i, align 8, !noalias !26
  %7 = getelementptr inbounds { ptr, ptr }, ptr %_7.i1.i, i64 0, i32 1
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6ef0efaac15b9818E", ptr %7, align 8, !noalias !26
  %8 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i2.i, i64 0, i32 1
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %8, align 8, !alias.scope !29, !noalias !32
  %9 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i2.i, i64 0, i32 1, i32 1
  store i64 2, ptr %9, align 8, !alias.scope !29, !noalias !32
  store ptr null, ptr %_3.i2.i, align 8, !alias.scope !29, !noalias !32
  %10 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i2.i, i64 0, i32 2
  store ptr %_7.i1.i, ptr %10, align 8, !alias.scope !29, !noalias !32
  %11 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i2.i, i64 0, i32 2, i32 1
  store i64 1, ptr %11, align 8, !alias.scope !29, !noalias !32
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i2.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i2.i), !noalias !26
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i1.i), !noalias !26
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %line.i3.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %line.i6.i)
  store ptr @alloc_66c8280ac89deb430ec42a90f6fa3b97, ptr %line.i6.i, align 8, !noalias !34
  %12 = getelementptr inbounds { ptr, i64 }, ptr %line.i6.i, i64 0, i32 1
  store i64 16, ptr %12, align 8, !noalias !34
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i5.i), !noalias !34
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i4.i), !noalias !34
  store ptr %line.i6.i, ptr %_7.i4.i, align 8, !noalias !34
  %13 = getelementptr inbounds { ptr, ptr }, ptr %_7.i4.i, i64 0, i32 1
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6ef0efaac15b9818E", ptr %13, align 8, !noalias !34
  %14 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i5.i, i64 0, i32 1
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %14, align 8, !alias.scope !37, !noalias !40
  %15 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i5.i, i64 0, i32 1, i32 1
  store i64 2, ptr %15, align 8, !alias.scope !37, !noalias !40
  store ptr null, ptr %_3.i5.i, align 8, !alias.scope !37, !noalias !40
  %16 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i5.i, i64 0, i32 2
  store ptr %_7.i4.i, ptr %16, align 8, !alias.scope !37, !noalias !40
  %17 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i5.i, i64 0, i32 2, i32 1
  store i64 1, ptr %17, align 8, !alias.scope !37, !noalias !40
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i5.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i5.i), !noalias !34
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i4.i), !noalias !34
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %line.i6.i)
  call fastcc void @_ZN6driver3src6driver3bad17hd6d0861913d87316E(i32 noundef %bad_data)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %line.i9.i)
  store ptr @alloc_62ebc3b3b9d2a9beb326a074eead3a9d, ptr %line.i9.i, align 8, !noalias !42
  %18 = getelementptr inbounds { ptr, i64 }, ptr %line.i9.i, i64 0, i32 1
  store i64 14, ptr %18, align 8, !noalias !42
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i8.i), !noalias !42
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i7.i), !noalias !42
  store ptr %line.i9.i, ptr %_7.i7.i, align 8, !noalias !42
  %19 = getelementptr inbounds { ptr, ptr }, ptr %_7.i7.i, i64 0, i32 1
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6ef0efaac15b9818E", ptr %19, align 8, !noalias !42
  %20 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i8.i, i64 0, i32 1
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %20, align 8, !alias.scope !45, !noalias !48
  %21 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i8.i, i64 0, i32 1, i32 1
  store i64 2, ptr %21, align 8, !alias.scope !45, !noalias !48
  store ptr null, ptr %_3.i8.i, align 8, !alias.scope !45, !noalias !48
  %22 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i8.i, i64 0, i32 2
  store ptr %_7.i7.i, ptr %22, align 8, !alias.scope !45, !noalias !48
  %23 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i8.i, i64 0, i32 2, i32 1
  store i64 1, ptr %23, align 8, !alias.scope !45, !noalias !48
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i8.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i8.i), !noalias !42
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i7.i), !noalias !42
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %line.i9.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN6driver3src6driver4good17h726fecb07a18779eE(i32 noundef %data) unnamed_addr #0 {
start:
  %_7.i4.i = alloca [1 x { ptr, ptr }], align 8
  %_3.i5.i = alloca %"core::fmt::Arguments<'_>", align 8
  %int_number.i.i1 = alloca i32, align 4
  %_7.i.i2 = alloca [1 x { ptr, ptr }], align 8
  %_3.i.i3 = alloca %"core::fmt::Arguments<'_>", align 8
  %line.i.i = alloca { ptr, i64 }, align 8
  %buffer.i = alloca [10 x i32], align 4
  %_7.i.i = alloca [1 x { ptr, ptr }], align 8
  %_3.i.i = alloca %"core::fmt::Arguments<'_>", align 8
  %int_number.i.i = alloca i32, align 4
  %0 = getelementptr inbounds { ptr, ptr }, ptr %_7.i.i, i64 0, i32 1
  %1 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i, i64 0, i32 1
  %2 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i, i64 0, i32 1, i32 1
  %3 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i, i64 0, i32 2
  %4 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i, i64 0, i32 2, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_number.i.i)
  store i32 0, ptr %int_number.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i.i)
  store ptr %int_number.i.i, ptr %_7.i.i, align 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %0, align 8
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %1, align 8, !alias.scope !50, !noalias !53
  store i64 2, ptr %2, align 8, !alias.scope !50, !noalias !53
  store ptr null, ptr %_3.i.i, align 8, !alias.scope !50, !noalias !53
  store ptr %_7.i.i, ptr %3, align 8, !alias.scope !50, !noalias !53
  store i64 1, ptr %4, align 8, !alias.scope !50, !noalias !53
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_number.i.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_number.i.i)
  store i32 0, ptr %int_number.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i.i)
  store ptr %int_number.i.i, ptr %_7.i.i, align 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %0, align 8
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %1, align 8, !alias.scope !50, !noalias !53
  store i64 2, ptr %2, align 8, !alias.scope !50, !noalias !53
  store ptr null, ptr %_3.i.i, align 8, !alias.scope !50, !noalias !53
  store ptr %_7.i.i, ptr %3, align 8, !alias.scope !50, !noalias !53
  store i64 1, ptr %4, align 8, !alias.scope !50, !noalias !53
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_number.i.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_number.i.i)
  store i32 0, ptr %int_number.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i.i)
  store ptr %int_number.i.i, ptr %_7.i.i, align 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %0, align 8
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %1, align 8, !alias.scope !50, !noalias !53
  store i64 2, ptr %2, align 8, !alias.scope !50, !noalias !53
  store ptr null, ptr %_3.i.i, align 8, !alias.scope !50, !noalias !53
  store ptr %_7.i.i, ptr %3, align 8, !alias.scope !50, !noalias !53
  store i64 1, ptr %4, align 8, !alias.scope !50, !noalias !53
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_number.i.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_number.i.i)
  store i32 0, ptr %int_number.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i.i)
  store ptr %int_number.i.i, ptr %_7.i.i, align 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %0, align 8
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %1, align 8, !alias.scope !50, !noalias !53
  store i64 2, ptr %2, align 8, !alias.scope !50, !noalias !53
  store ptr null, ptr %_3.i.i, align 8, !alias.scope !50, !noalias !53
  store ptr %_7.i.i, ptr %3, align 8, !alias.scope !50, !noalias !53
  store i64 1, ptr %4, align 8, !alias.scope !50, !noalias !53
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_number.i.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_number.i.i)
  store i32 0, ptr %int_number.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i.i)
  store ptr %int_number.i.i, ptr %_7.i.i, align 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %0, align 8
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %1, align 8, !alias.scope !50, !noalias !53
  store i64 2, ptr %2, align 8, !alias.scope !50, !noalias !53
  store ptr null, ptr %_3.i.i, align 8, !alias.scope !50, !noalias !53
  store ptr %_7.i.i, ptr %3, align 8, !alias.scope !50, !noalias !53
  store i64 1, ptr %4, align 8, !alias.scope !50, !noalias !53
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_number.i.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_number.i.i)
  store i32 0, ptr %int_number.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i.i)
  store ptr %int_number.i.i, ptr %_7.i.i, align 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %0, align 8
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %1, align 8, !alias.scope !50, !noalias !53
  store i64 2, ptr %2, align 8, !alias.scope !50, !noalias !53
  store ptr null, ptr %_3.i.i, align 8, !alias.scope !50, !noalias !53
  store ptr %_7.i.i, ptr %3, align 8, !alias.scope !50, !noalias !53
  store i64 1, ptr %4, align 8, !alias.scope !50, !noalias !53
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_number.i.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_number.i.i)
  store i32 0, ptr %int_number.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i.i)
  store ptr %int_number.i.i, ptr %_7.i.i, align 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %0, align 8
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %1, align 8, !alias.scope !50, !noalias !53
  store i64 2, ptr %2, align 8, !alias.scope !50, !noalias !53
  store ptr null, ptr %_3.i.i, align 8, !alias.scope !50, !noalias !53
  store ptr %_7.i.i, ptr %3, align 8, !alias.scope !50, !noalias !53
  store i64 1, ptr %4, align 8, !alias.scope !50, !noalias !53
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_number.i.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_number.i.i)
  store i32 1, ptr %int_number.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i.i)
  store ptr %int_number.i.i, ptr %_7.i.i, align 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %0, align 8
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %1, align 8, !alias.scope !50, !noalias !53
  store i64 2, ptr %2, align 8, !alias.scope !50, !noalias !53
  store ptr null, ptr %_3.i.i, align 8, !alias.scope !50, !noalias !53
  store ptr %_7.i.i, ptr %3, align 8, !alias.scope !50, !noalias !53
  store i64 1, ptr %4, align 8, !alias.scope !50, !noalias !53
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_number.i.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_number.i.i)
  store i32 0, ptr %int_number.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i.i)
  store ptr %int_number.i.i, ptr %_7.i.i, align 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %0, align 8
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %1, align 8, !alias.scope !50, !noalias !53
  store i64 2, ptr %2, align 8, !alias.scope !50, !noalias !53
  store ptr null, ptr %_3.i.i, align 8, !alias.scope !50, !noalias !53
  store ptr %_7.i.i, ptr %3, align 8, !alias.scope !50, !noalias !53
  store i64 1, ptr %4, align 8, !alias.scope !50, !noalias !53
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_number.i.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_number.i.i)
  store i32 0, ptr %int_number.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i.i)
  store ptr %int_number.i.i, ptr %_7.i.i, align 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %0, align 8
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %1, align 8, !alias.scope !50, !noalias !53
  store i64 2, ptr %2, align 8, !alias.scope !50, !noalias !53
  store ptr null, ptr %_3.i.i, align 8, !alias.scope !50, !noalias !53
  store ptr %_7.i.i, ptr %3, align 8, !alias.scope !50, !noalias !53
  store i64 1, ptr %4, align 8, !alias.scope !50, !noalias !53
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_number.i.i)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %buffer.i)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %buffer.i, i8 0, i64 40, i1 false)
  %_3.0.i = icmp ult i32 %data, 10
  br i1 %_3.0.i, label %bb5.i, label %bb11.i

bb11.i:                                           ; preds = %start
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %line.i.i)
  store ptr @alloc_0d9fbbe44f946597bd04f3ea4c95c419, ptr %line.i.i, align 8, !noalias !55
  %5 = getelementptr inbounds { ptr, i64 }, ptr %line.i.i, i64 0, i32 1
  store i64 35, ptr %5, align 8, !noalias !55
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i.i3), !noalias !55
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i.i2), !noalias !55
  store ptr %line.i.i, ptr %_7.i.i2, align 8, !noalias !55
  %6 = getelementptr inbounds { ptr, ptr }, ptr %_7.i.i2, i64 0, i32 1
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6ef0efaac15b9818E", ptr %6, align 8, !noalias !55
  %7 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i3, i64 0, i32 1
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %7, align 8, !alias.scope !58, !noalias !61
  %8 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i3, i64 0, i32 1, i32 1
  store i64 2, ptr %8, align 8, !alias.scope !58, !noalias !61
  store ptr null, ptr %_3.i.i3, align 8, !alias.scope !58, !noalias !61
  %9 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i3, i64 0, i32 2
  store ptr %_7.i.i2, ptr %9, align 8, !alias.scope !58, !noalias !61
  %10 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i3, i64 0, i32 2, i32 1
  store i64 1, ptr %10, align 8, !alias.scope !58, !noalias !61
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i.i3)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i.i3), !noalias !55
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i.i2), !noalias !55
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %line.i.i)
  br label %_ZN6driver3src6driver9good_b2_g17h3148a3b156aa05ccE.exit

bb5.i:                                            ; preds = %start
  %_6.i = zext i32 %data to i64
  %11 = getelementptr inbounds [10 x i32], ptr %buffer.i, i64 0, i64 %_6.i
  store i32 1, ptr %11, align 4
  %12 = getelementptr inbounds { ptr, ptr }, ptr %_7.i4.i, i64 0, i32 1
  %13 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i5.i, i64 0, i32 1
  %14 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i5.i, i64 0, i32 1, i32 1
  %15 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i5.i, i64 0, i32 2
  %16 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i5.i, i64 0, i32 2, i32 1
  %_13.i = load i32, ptr %buffer.i, align 4, !noundef !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_number.i.i1)
  store i32 %_13.i, ptr %int_number.i.i1, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i5.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i4.i)
  store ptr %int_number.i.i1, ptr %_7.i4.i, align 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %12, align 8
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %13, align 8, !alias.scope !63, !noalias !66
  store i64 2, ptr %14, align 8, !alias.scope !63, !noalias !66
  store ptr null, ptr %_3.i5.i, align 8, !alias.scope !63, !noalias !66
  store ptr %_7.i4.i, ptr %15, align 8, !alias.scope !63, !noalias !66
  store i64 1, ptr %16, align 8, !alias.scope !63, !noalias !66
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i5.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i5.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i4.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_number.i.i1)
  %17 = getelementptr inbounds [10 x i32], ptr %buffer.i, i64 0, i64 1
  %_13.1.i = load i32, ptr %17, align 4, !noundef !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_number.i.i1)
  store i32 %_13.1.i, ptr %int_number.i.i1, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i5.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i4.i)
  store ptr %int_number.i.i1, ptr %_7.i4.i, align 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %12, align 8
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %13, align 8, !alias.scope !63, !noalias !66
  store i64 2, ptr %14, align 8, !alias.scope !63, !noalias !66
  store ptr null, ptr %_3.i5.i, align 8, !alias.scope !63, !noalias !66
  store ptr %_7.i4.i, ptr %15, align 8, !alias.scope !63, !noalias !66
  store i64 1, ptr %16, align 8, !alias.scope !63, !noalias !66
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i5.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i5.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i4.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_number.i.i1)
  %18 = getelementptr inbounds [10 x i32], ptr %buffer.i, i64 0, i64 2
  %_13.2.i = load i32, ptr %18, align 4, !noundef !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_number.i.i1)
  store i32 %_13.2.i, ptr %int_number.i.i1, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i5.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i4.i)
  store ptr %int_number.i.i1, ptr %_7.i4.i, align 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %12, align 8
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %13, align 8, !alias.scope !63, !noalias !66
  store i64 2, ptr %14, align 8, !alias.scope !63, !noalias !66
  store ptr null, ptr %_3.i5.i, align 8, !alias.scope !63, !noalias !66
  store ptr %_7.i4.i, ptr %15, align 8, !alias.scope !63, !noalias !66
  store i64 1, ptr %16, align 8, !alias.scope !63, !noalias !66
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i5.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i5.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i4.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_number.i.i1)
  %19 = getelementptr inbounds [10 x i32], ptr %buffer.i, i64 0, i64 3
  %_13.3.i = load i32, ptr %19, align 4, !noundef !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_number.i.i1)
  store i32 %_13.3.i, ptr %int_number.i.i1, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i5.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i4.i)
  store ptr %int_number.i.i1, ptr %_7.i4.i, align 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %12, align 8
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %13, align 8, !alias.scope !63, !noalias !66
  store i64 2, ptr %14, align 8, !alias.scope !63, !noalias !66
  store ptr null, ptr %_3.i5.i, align 8, !alias.scope !63, !noalias !66
  store ptr %_7.i4.i, ptr %15, align 8, !alias.scope !63, !noalias !66
  store i64 1, ptr %16, align 8, !alias.scope !63, !noalias !66
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i5.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i5.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i4.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_number.i.i1)
  %20 = getelementptr inbounds [10 x i32], ptr %buffer.i, i64 0, i64 4
  %_13.4.i = load i32, ptr %20, align 4, !noundef !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_number.i.i1)
  store i32 %_13.4.i, ptr %int_number.i.i1, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i5.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i4.i)
  store ptr %int_number.i.i1, ptr %_7.i4.i, align 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %12, align 8
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %13, align 8, !alias.scope !63, !noalias !66
  store i64 2, ptr %14, align 8, !alias.scope !63, !noalias !66
  store ptr null, ptr %_3.i5.i, align 8, !alias.scope !63, !noalias !66
  store ptr %_7.i4.i, ptr %15, align 8, !alias.scope !63, !noalias !66
  store i64 1, ptr %16, align 8, !alias.scope !63, !noalias !66
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i5.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i5.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i4.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_number.i.i1)
  %21 = getelementptr inbounds [10 x i32], ptr %buffer.i, i64 0, i64 5
  %_13.5.i = load i32, ptr %21, align 4, !noundef !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_number.i.i1)
  store i32 %_13.5.i, ptr %int_number.i.i1, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i5.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i4.i)
  store ptr %int_number.i.i1, ptr %_7.i4.i, align 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %12, align 8
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %13, align 8, !alias.scope !63, !noalias !66
  store i64 2, ptr %14, align 8, !alias.scope !63, !noalias !66
  store ptr null, ptr %_3.i5.i, align 8, !alias.scope !63, !noalias !66
  store ptr %_7.i4.i, ptr %15, align 8, !alias.scope !63, !noalias !66
  store i64 1, ptr %16, align 8, !alias.scope !63, !noalias !66
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i5.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i5.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i4.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_number.i.i1)
  %22 = getelementptr inbounds [10 x i32], ptr %buffer.i, i64 0, i64 6
  %_13.6.i = load i32, ptr %22, align 4, !noundef !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_number.i.i1)
  store i32 %_13.6.i, ptr %int_number.i.i1, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i5.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i4.i)
  store ptr %int_number.i.i1, ptr %_7.i4.i, align 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %12, align 8
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %13, align 8, !alias.scope !63, !noalias !66
  store i64 2, ptr %14, align 8, !alias.scope !63, !noalias !66
  store ptr null, ptr %_3.i5.i, align 8, !alias.scope !63, !noalias !66
  store ptr %_7.i4.i, ptr %15, align 8, !alias.scope !63, !noalias !66
  store i64 1, ptr %16, align 8, !alias.scope !63, !noalias !66
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i5.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i5.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i4.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_number.i.i1)
  %23 = getelementptr inbounds [10 x i32], ptr %buffer.i, i64 0, i64 7
  %_13.7.i = load i32, ptr %23, align 4, !noundef !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_number.i.i1)
  store i32 %_13.7.i, ptr %int_number.i.i1, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i5.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i4.i)
  store ptr %int_number.i.i1, ptr %_7.i4.i, align 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %12, align 8
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %13, align 8, !alias.scope !63, !noalias !66
  store i64 2, ptr %14, align 8, !alias.scope !63, !noalias !66
  store ptr null, ptr %_3.i5.i, align 8, !alias.scope !63, !noalias !66
  store ptr %_7.i4.i, ptr %15, align 8, !alias.scope !63, !noalias !66
  store i64 1, ptr %16, align 8, !alias.scope !63, !noalias !66
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i5.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i5.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i4.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_number.i.i1)
  %24 = getelementptr inbounds [10 x i32], ptr %buffer.i, i64 0, i64 8
  %_13.8.i = load i32, ptr %24, align 4, !noundef !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_number.i.i1)
  store i32 %_13.8.i, ptr %int_number.i.i1, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i5.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i4.i)
  store ptr %int_number.i.i1, ptr %_7.i4.i, align 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %12, align 8
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %13, align 8, !alias.scope !63, !noalias !66
  store i64 2, ptr %14, align 8, !alias.scope !63, !noalias !66
  store ptr null, ptr %_3.i5.i, align 8, !alias.scope !63, !noalias !66
  store ptr %_7.i4.i, ptr %15, align 8, !alias.scope !63, !noalias !66
  store i64 1, ptr %16, align 8, !alias.scope !63, !noalias !66
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i5.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i5.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i4.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_number.i.i1)
  %25 = getelementptr inbounds [10 x i32], ptr %buffer.i, i64 0, i64 9
  %_13.9.i = load i32, ptr %25, align 4, !noundef !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_number.i.i1)
  store i32 %_13.9.i, ptr %int_number.i.i1, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i5.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i4.i)
  store ptr %int_number.i.i1, ptr %_7.i4.i, align 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %12, align 8
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %13, align 8, !alias.scope !63, !noalias !66
  store i64 2, ptr %14, align 8, !alias.scope !63, !noalias !66
  store ptr null, ptr %_3.i5.i, align 8, !alias.scope !63, !noalias !66
  store ptr %_7.i4.i, ptr %15, align 8, !alias.scope !63, !noalias !66
  store i64 1, ptr %16, align 8, !alias.scope !63, !noalias !66
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i5.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i5.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i4.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_number.i.i1)
  br label %_ZN6driver3src6driver9good_b2_g17h3148a3b156aa05ccE.exit

_ZN6driver3src6driver9good_b2_g17h3148a3b156aa05ccE.exit: ; preds = %bb5.i, %bb11.i
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %buffer.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @good(i32 noundef %data) unnamed_addr #0 {
start:
  tail call fastcc void @_ZN6driver3src6driver4good17h726fecb07a18779eE(i32 noundef %data)
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
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %1, align 8, !alias.scope !68, !noalias !71
  %2 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 1, i32 1
  store i64 2, ptr %2, align 8, !alias.scope !68, !noalias !71
  store ptr null, ptr %_3.i, align 8, !alias.scope !68, !noalias !71
  %3 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 2
  store ptr %_7.i, ptr %3, align 8, !alias.scope !68, !noalias !71
  %4 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 2, i32 1
  store i64 1, ptr %4, align 8, !alias.scope !68, !noalias !71
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
  %_3.i2 = alloca %"core::fmt::Arguments<'_>", align 8
  %line.i = alloca { ptr, i64 }, align 8
  %e.i = alloca %"core::str::error::Utf8Error", align 8
  %_4 = alloca %"core::result::Result<&str, core::str::error::Utf8Error>", align 8
  %len = tail call noundef i64 @_ZN4core3ffi5c_str4CStr8from_ptr9strlen_rt17h463292534e232c62E(ptr noundef %line)
  %len1 = add i64 %len, 1
  %0 = icmp ne ptr %line, null
  tail call void @llvm.assume(i1 %0)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4)
  call void @_ZN4core3ffi5c_str4CStr6to_str17h7660279a6932e49cE(ptr noalias nocapture noundef nonnull sret(%"core::result::Result<&str, core::str::error::Utf8Error>") dereferenceable(24) %_4, ptr noalias noundef nonnull readonly align 1 %line, i64 noundef %len1)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %_3.i = load i64, ptr %_4, align 8, !range !76, !alias.scope !73, !noundef !11
  %trunc.not.i = icmp eq i64 %_3.i, 0
  br i1 %trunc.not.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h38d2f8f80620b971E.exit", label %bb1.i

bb1.i:                                            ; preds = %start
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %e.i), !noalias !73
  %1 = getelementptr inbounds %"core::result::Result<&str, core::str::error::Utf8Error>::Err", ptr %_4, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %e.i, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  call void @_ZN4core6result13unwrap_failed17h008634a1b68516fbE(ptr noalias noundef nonnull readonly align 1 @alloc_fd41a9babf87f851744f188b93591009, i64 noundef 35, ptr noundef nonnull align 1 %e.i, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @vtable.0, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_beb018350139a766dc1d7d9d855e67c0) #8, !noalias !73
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h38d2f8f80620b971E.exit": ; preds = %start
  %2 = getelementptr inbounds %"core::result::Result<&str, core::str::error::Utf8Error>::Ok", ptr %_4, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !alias.scope !73, !nonnull !11, !align !17, !noundef !11
  %4 = getelementptr inbounds %"core::result::Result<&str, core::str::error::Utf8Error>::Ok", ptr %_4, i64 0, i32 1, i32 1
  %5 = load i64, ptr %4, align 8, !alias.scope !73, !noundef !11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %line.i)
  store ptr %3, ptr %line.i, align 8, !noalias !77
  %6 = getelementptr inbounds { ptr, i64 }, ptr %line.i, i64 0, i32 1
  store i64 %5, ptr %6, align 8, !noalias !77
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i2), !noalias !77
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i), !noalias !77
  store ptr %line.i, ptr %_7.i, align 8, !noalias !77
  %7 = getelementptr inbounds { ptr, ptr }, ptr %_7.i, i64 0, i32 1
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6ef0efaac15b9818E", ptr %7, align 8, !noalias !77
  %8 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i2, i64 0, i32 1
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %8, align 8, !alias.scope !80, !noalias !83
  %9 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i2, i64 0, i32 1, i32 1
  store i64 2, ptr %9, align 8, !alias.scope !80, !noalias !83
  store ptr null, ptr %_3.i2, align 8, !alias.scope !80, !noalias !83
  %10 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i2, i64 0, i32 2
  store ptr %_7.i, ptr %10, align 8, !alias.scope !80, !noalias !83
  %11 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i2, i64 0, i32 2, i32 1
  store i64 1, ptr %11, align 8, !alias.scope !80, !noalias !83
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i2)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i2), !noalias !77
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i), !noalias !77
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %line.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
declare noundef i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_ZN4core3ffi5c_str4CStr8from_ptr9strlen_rt17h463292534e232c62E(ptr noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: nonlazybind uwtable
declare void @_ZN4core3ffi5c_str4CStr6to_str17h7660279a6932e49cE(ptr noalias nocapture noundef sret(%"core::result::Result<&str, core::str::error::Utf8Error>") dereferenceable(24), ptr noalias noundef nonnull readonly align 1, i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6result13unwrap_failed17h008634a1b68516fbE(ptr noalias noundef nonnull readonly align 1, i64 noundef, ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 dereferenceable(24), ptr noalias noundef readonly align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @"_ZN4core3ptr48drop_in_place$LT$core..str..error..Utf8Error$GT$17h1d6f64b633b1d7c5E"(ptr nocapture readnone %_1) unnamed_addr #7 {
start:
  ret void
}

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN64_$LT$core..str..error..Utf8Error$u20$as$u20$core..fmt..Debug$GT$3fmt17he5298eb5cbc8b1a7E"(ptr noalias noundef readonly align 8 dereferenceable(16), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { noreturn }

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
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{}
!12 = !{!13}
!13 = distinct !{!13, !14, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!14 = distinct !{!14, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!15 = !{!16}
!16 = distinct !{!16, !14, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!17 = !{i64 1}
!18 = !{!19}
!19 = distinct !{!19, !20, !"_ZN6driver3src6driver10print_line17h310498be717b500eE: argument 0"}
!20 = distinct !{!20, !"_ZN6driver3src6driver10print_line17h310498be717b500eE"}
!21 = !{!22}
!22 = distinct !{!22, !23, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!23 = distinct !{!23, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!24 = !{!25, !19}
!25 = distinct !{!25, !23, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!26 = !{!27}
!27 = distinct !{!27, !28, !"_ZN6driver3src6driver10print_line17h310498be717b500eE: argument 0"}
!28 = distinct !{!28, !"_ZN6driver3src6driver10print_line17h310498be717b500eE"}
!29 = !{!30}
!30 = distinct !{!30, !31, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!31 = distinct !{!31, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!32 = !{!33, !27}
!33 = distinct !{!33, !31, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!34 = !{!35}
!35 = distinct !{!35, !36, !"_ZN6driver3src6driver10print_line17h310498be717b500eE: argument 0"}
!36 = distinct !{!36, !"_ZN6driver3src6driver10print_line17h310498be717b500eE"}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!39 = distinct !{!39, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!40 = !{!41, !35}
!41 = distinct !{!41, !39, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!42 = !{!43}
!43 = distinct !{!43, !44, !"_ZN6driver3src6driver10print_line17h310498be717b500eE: argument 0"}
!44 = distinct !{!44, !"_ZN6driver3src6driver10print_line17h310498be717b500eE"}
!45 = !{!46}
!46 = distinct !{!46, !47, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!47 = distinct !{!47, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!48 = !{!49, !43}
!49 = distinct !{!49, !47, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!50 = !{!51}
!51 = distinct !{!51, !52, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!52 = distinct !{!52, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!53 = !{!54}
!54 = distinct !{!54, !52, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!55 = !{!56}
!56 = distinct !{!56, !57, !"_ZN6driver3src6driver10print_line17h310498be717b500eE: argument 0"}
!57 = distinct !{!57, !"_ZN6driver3src6driver10print_line17h310498be717b500eE"}
!58 = !{!59}
!59 = distinct !{!59, !60, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!60 = distinct !{!60, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!61 = !{!62, !56}
!62 = distinct !{!62, !60, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!63 = !{!64}
!64 = distinct !{!64, !65, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!65 = distinct !{!65, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!66 = !{!67}
!67 = distinct !{!67, !65, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!68 = !{!69}
!69 = distinct !{!69, !70, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!70 = distinct !{!70, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!71 = !{!72}
!72 = distinct !{!72, !70, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!73 = !{!74}
!74 = distinct !{!74, !75, !"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h38d2f8f80620b971E: %self"}
!75 = distinct !{!75, !"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h38d2f8f80620b971E"}
!76 = !{i64 0, i64 2}
!77 = !{!78}
!78 = distinct !{!78, !79, !"_ZN6driver3src6driver10print_line17h310498be717b500eE: argument 0"}
!79 = distinct !{!79, !"_ZN6driver3src6driver10print_line17h310498be717b500eE"}
!80 = !{!81}
!81 = distinct !{!81, !82, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!82 = distinct !{!82, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!83 = !{!84, !78}
!84 = distinct !{!84, !82, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
