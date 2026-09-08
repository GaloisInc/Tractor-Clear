; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"core::result::Result<i64, core::num::error::ParseIntError>" = type { i8, [15 x i8] }
%"core::fmt::Arguments<'_>" = type { { ptr, i64 }, { ptr, i64 }, { ptr, i64 } }
%"src::driver::HouseT" = type { i32, i32, double }
%"core::str::error::Utf8Error" = type { i64, { i8, i8 }, [6 x i8] }
%"core::result::Result<&str, core::str::error::Utf8Error>" = type { i64, [2 x i64] }
%"core::result::Result<&str, core::str::error::Utf8Error>::Err" = type { [1 x i64], %"core::str::error::Utf8Error" }
%"core::result::Result<&str, core::str::error::Utf8Error>::Ok" = type { [1 x i64], { ptr, i64 } }
%"core::result::Result<i64, core::num::error::ParseIntError>::Ok" = type { [1 x i64], i64 }
%"core::fmt::rt::v1::Argument" = type { %"core::fmt::rt::v1::FormatSpec", i64 }
%"core::fmt::rt::v1::FormatSpec" = type { { i64, i64 }, { i64, i64 }, i32, i32, i8, [7 x i8] }

@alloc_513570631223a12912d85da2bec3b15a = private unnamed_addr constant <{}> zeroinitializer, align 8
@vtable.0 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr48drop_in_place$LT$core..str..error..Utf8Error$GT$17h1d6f64b633b1d7c5E", [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN64_$LT$core..str..error..Utf8Error$u20$as$u20$core..fmt..Debug$GT$3fmt17he5298eb5cbc8b1a7E" }>, align 8
@alloc_6cd42ea5103a3fc63b8edab95bb315a5 = private unnamed_addr constant <{ [14 x i8] }> <{ [14 x i8] c"The house has " }>, align 1
@alloc_383d5a05d82133a478bdabae62c15519 = private unnamed_addr constant <{ [9 x i8] }> <{ [9 x i8] c" floors, " }>, align 1
@alloc_1adcba0f8c111e6973c7476521a376b0 = private unnamed_addr constant <{ [15 x i8] }> <{ [15 x i8] c" bedrooms, and " }>, align 1
@alloc_24b5ae97c4482b83b7d9b78bc9056b48 = private unnamed_addr constant <{ [11 x i8] }> <{ [11 x i8] c" bathrooms\0A" }>, align 1
@alloc_1819828f617093f2e72a86ee9316c0e5 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc_6cd42ea5103a3fc63b8edab95bb315a5, [8 x i8] c"\0E\00\00\00\00\00\00\00", ptr @alloc_383d5a05d82133a478bdabae62c15519, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @alloc_1adcba0f8c111e6973c7476521a376b0, [8 x i8] c"\0F\00\00\00\00\00\00\00", ptr @alloc_24b5ae97c4482b83b7d9b78bc9056b48, [8 x i8] c"\0B\00\00\00\00\00\00\00" }>, align 8
@alloc_00728171eaa7ec2c5a267f4bf25d4ac3 = private unnamed_addr constant <{ [13 x i8] }> <{ [13 x i8] c"src/driver.rs" }>, align 1
@alloc_6439073cda3cbeb44c7aa6eef1d40fe7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_00728171eaa7ec2c5a267f4bf25d4ac3, [16 x i8] c"\0D\00\00\00\00\00\00\00B\00\00\00\14\00\00\00" }>, align 8
@alloc_8196f04dc760f93a54fbcca2dd569a0d = private unnamed_addr constant <{ [18 x i8] }> <{ [18 x i8] c"An error occurred\0A" }>, align 1
@alloc_65fa4baacd446f3f846f1616e704d2d7 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @alloc_8196f04dc760f93a54fbcca2dd569a0d, [8 x i8] c"\12\00\00\00\00\00\00\00" }>, align 8
@alloc_5ba927a1a7e8f3fa179fb60d827fbbaa = private unnamed_addr constant <{ [13 x i8] }> <{ [13 x i8] c"invalid UTF-8" }>, align 1
@alloc_f6b090ece840ab87f6feecc6541bb1a7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_00728171eaa7ec2c5a267f4bf25d4ac3, [16 x i8] c"\0D\00\00\00\00\00\00\00e\00\00\00 \00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define void @driver(ptr noundef %input) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %_45.i.i = alloca %"core::result::Result<i64, core::num::error::ParseIntError>", align 8
  %_13.i = alloca %"core::fmt::Arguments<'_>", align 8
  %the_house.i = alloca %"src::driver::HouseT", align 8
  %e.i = alloca %"core::str::error::Utf8Error", align 8
  %_4 = alloca %"core::result::Result<&str, core::str::error::Utf8Error>", align 8
  %len = tail call noundef i64 @_ZN4core3ffi5c_str4CStr8from_ptr9strlen_rt17h463292534e232c62E(ptr noundef %input)
  %len1 = add i64 %len, 1
  %0 = icmp ne ptr %input, null
  tail call void @llvm.assume(i1 %0)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4)
  call void @_ZN4core3ffi5c_str4CStr6to_str17h7660279a6932e49cE(ptr noalias nocapture noundef nonnull sret(%"core::result::Result<&str, core::str::error::Utf8Error>") dereferenceable(24) %_4, ptr noalias noundef nonnull readonly align 1 %input, i64 noundef %len1)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2)
  %_3.i = load i64, ptr %_4, align 8, !range !5, !alias.scope !2, !noundef !6
  %trunc.not.i = icmp eq i64 %_3.i, 0
  br i1 %trunc.not.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h38d2f8f80620b971E.exit", label %bb1.i

bb1.i:                                            ; preds = %start
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %e.i), !noalias !2
  %1 = getelementptr inbounds %"core::result::Result<&str, core::str::error::Utf8Error>::Err", ptr %_4, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %e.i, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  call void @_ZN4core6result13unwrap_failed17h008634a1b68516fbE(ptr noalias noundef nonnull readonly align 1 @alloc_5ba927a1a7e8f3fa179fb60d827fbbaa, i64 noundef 13, ptr noundef nonnull align 1 %e.i, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @vtable.0, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_f6b090ece840ab87f6feecc6541bb1a7) #7, !noalias !2
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h38d2f8f80620b971E.exit": ; preds = %start
  %2 = getelementptr inbounds %"core::result::Result<&str, core::str::error::Utf8Error>::Ok", ptr %_4, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !alias.scope !2, !nonnull !6, !align !7, !noundef !6
  %4 = getelementptr inbounds %"core::result::Result<&str, core::str::error::Utf8Error>::Ok", ptr %_4, i64 0, i32 1, i32 1
  %5 = load i64, ptr %4, align 8, !alias.scope !2, !noundef !6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11)
  %_624.not.i.i = icmp eq i64 %5, 0
  br i1 %_624.not.i.i, label %bb12.thread.i.i, label %bb5.i.i

bb5.i.i:                                          ; preds = %bb41.i.i, %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h38d2f8f80620b971E.exit"
  %_626.i.i = phi i1 [ %_6.i.i, %bb41.i.i ], [ true, %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h38d2f8f80620b971E.exit" ]
  %idx.025.i.i = phi i64 [ %7, %bb41.i.i ], [ 0, %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h38d2f8f80620b971E.exit" ]
  %self.i.i = getelementptr inbounds [0 x i8], ptr %3, i64 0, i64 %idx.025.i.i
  %6 = load i8, ptr %self.i.i, align 1, !alias.scope !14, !noalias !15, !noundef !6
  switch i8 %6, label %bb12.thread.i.i [
    i8 9, label %bb41.i.i
    i8 10, label %bb41.i.i
    i8 12, label %bb41.i.i
    i8 13, label %bb41.i.i
    i8 32, label %bb41.i.i
    i8 45, label %8
    i8 43, label %8
  ]

bb41.i.i:                                         ; preds = %bb5.i.i, %bb5.i.i, %bb5.i.i, %bb5.i.i, %bb5.i.i
  %7 = add nuw i64 %idx.025.i.i, 1
  %_6.i.i = icmp ult i64 %7, %5
  %exitcond.not.i.i = icmp eq i64 %7, %5
  br i1 %exitcond.not.i.i, label %bb5.i, label %bb5.i.i

8:                                                ; preds = %bb5.i.i, %bb5.i.i
  %9 = add nuw i64 %idx.025.i.i, 1
  br label %bb12.thread.i.i

bb12.thread.i.i:                                  ; preds = %8, %bb5.i.i, %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h38d2f8f80620b971E.exit"
  %idx.023.i.i = phi i64 [ %idx.025.i.i, %8 ], [ 0, %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h38d2f8f80620b971E.exit" ], [ %idx.025.i.i, %bb5.i.i ]
  %_621.i.i = phi i1 [ %_626.i.i, %8 ], [ false, %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h38d2f8f80620b971E.exit" ], [ %_626.i.i, %bb5.i.i ]
  %10 = phi i64 [ %9, %8 ], [ 0, %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h38d2f8f80620b971E.exit" ], [ %idx.025.i.i, %bb5.i.i ]
  %_3130.i.i = icmp ult i64 %10, %5
  br i1 %_3130.i.i, label %bb24.i.preheader.i, label %bb5.i

bb24.i.preheader.i:                               ; preds = %bb12.thread.i.i
  %self5.i8.i = getelementptr inbounds [0 x i8], ptr %3, i64 0, i64 %10
  %11 = load i8, ptr %self5.i8.i, align 1, !alias.scope !14, !noalias !15, !noundef !6
  %12 = add i8 %11, -48
  %or.cond.i9.i = icmp ult i8 %12, 10
  br i1 %or.cond.i9.i, label %bb44.i.i, label %bb27.critedge.i.i

bb24.i.i:                                         ; preds = %bb44.i.i
  %self5.i.i = getelementptr inbounds [0 x i8], ptr %3, i64 0, i64 %15
  %13 = load i8, ptr %self5.i.i, align 1, !alias.scope !14, !noalias !15, !noundef !6
  %14 = add i8 %13, -48
  %or.cond.i.i = icmp ult i8 %14, 10
  br i1 %or.cond.i.i, label %bb44.i.i, label %bb27.critedge.i.loopexit.i

bb44.i.i:                                         ; preds = %bb24.i.i, %bb24.i.preheader.i
  %idx.231.i10.i = phi i64 [ %15, %bb24.i.i ], [ %10, %bb24.i.preheader.i ]
  %15 = add i64 %idx.231.i10.i, 1
  %exitcond39.not.i.i = icmp eq i64 %15, %5
  br i1 %exitcond39.not.i.i, label %bb27.critedge.i.loopexit.i, label %bb24.i.i

bb27.critedge.i.loopexit.i:                       ; preds = %bb44.i.i, %bb24.i.i
  %.lcssa = phi i64 [ %5, %bb44.i.i ], [ %15, %bb24.i.i ]
  %_31.i.le.i = icmp ult i64 %.lcssa, %5
  br label %bb27.critedge.i.i

bb27.critedge.i.i:                                ; preds = %bb27.critedge.i.loopexit.i, %bb24.i.preheader.i
  %idx.2.lcssa.i.i = phi i64 [ %10, %bb24.i.preheader.i ], [ %.lcssa, %bb27.critedge.i.loopexit.i ]
  %_31.lcssa.i.i = phi i1 [ true, %bb24.i.preheader.i ], [ %_31.i.le.i, %bb27.critedge.i.loopexit.i ]
  %_39.i.i = icmp eq i64 %10, %idx.2.lcssa.i.i
  br i1 %_39.i.i, label %bb5.i, label %bb29.i.i

bb29.i.i:                                         ; preds = %bb27.critedge.i.i
  %_5.not.i.i.i.i = icmp ult i64 %idx.2.lcssa.i.i, %idx.023.i.i
  br i1 %_5.not.i.i.i.i, label %bb2.i.i.i, label %bb5.i.i.i.i

bb5.i.i.i.i:                                      ; preds = %bb29.i.i
  %16 = icmp eq i64 %idx.023.i.i, 0
  br i1 %16, label %bb2.i.i.i.i, label %bb3.i.i.i.i.i

bb3.i.i.i.i.i:                                    ; preds = %bb5.i.i.i.i
  br i1 %_621.i.i, label %"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h0d9ed69ee3a2c216E.exit.i.i.i.i", label %bb5.i.i.i.i.i

bb5.i.i.i.i.i:                                    ; preds = %bb3.i.i.i.i.i
  %17 = icmp eq i64 %idx.023.i.i, %5
  br i1 %17, label %bb2.i.i.i.i, label %bb2.i.i.i

"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h0d9ed69ee3a2c216E.exit.i.i.i.i": ; preds = %bb3.i.i.i.i.i
  %18 = getelementptr inbounds i8, ptr %3, i64 %idx.023.i.i
  %b.i.i.i.i.i = load i8, ptr %18, align 1, !alias.scope !17, !noalias !15, !noundef !6
  %19 = icmp sgt i8 %b.i.i.i.i.i, -65
  br i1 %19, label %bb2.i.i.i.i, label %bb2.i.i.i

bb2.i.i.i.i:                                      ; preds = %"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h0d9ed69ee3a2c216E.exit.i.i.i.i", %bb5.i.i.i.i.i, %bb5.i.i.i.i
  %20 = icmp eq i64 %idx.2.lcssa.i.i, 0
  br i1 %20, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$5index17hf7cca2bc50785237E.exit.i.i", label %bb3.i2.i.i.i.i

bb3.i2.i.i.i.i:                                   ; preds = %bb2.i.i.i.i
  br i1 %_31.lcssa.i.i, label %"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h0d9ed69ee3a2c216E.exit7.i.i.i.i", label %bb5.i3.i.i.i.i

bb5.i3.i.i.i.i:                                   ; preds = %bb3.i2.i.i.i.i
  %21 = icmp eq i64 %idx.2.lcssa.i.i, %5
  br i1 %21, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$5index17hf7cca2bc50785237E.exit.i.i", label %bb2.i.i.i

"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h0d9ed69ee3a2c216E.exit7.i.i.i.i": ; preds = %bb3.i2.i.i.i.i
  %22 = getelementptr inbounds i8, ptr %3, i64 %idx.2.lcssa.i.i
  %b.i4.i.i.i.i = load i8, ptr %22, align 1, !alias.scope !24, !noalias !15, !noundef !6
  %23 = icmp sgt i8 %b.i4.i.i.i.i, -65
  br i1 %23, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$5index17hf7cca2bc50785237E.exit.i.i", label %bb2.i.i.i

bb2.i.i.i:                                        ; preds = %"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h0d9ed69ee3a2c216E.exit7.i.i.i.i", %bb5.i3.i.i.i.i, %"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h0d9ed69ee3a2c216E.exit.i.i.i.i", %bb5.i.i.i.i.i, %bb29.i.i
  tail call void @_ZN4core3str16slice_error_fail17h696d29a1b388d0feE(ptr noalias noundef nonnull readonly align 1 %3, i64 noundef %5, i64 noundef %idx.023.i.i, i64 noundef %idx.2.lcssa.i.i, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_6439073cda3cbeb44c7aa6eef1d40fe7) #7, !noalias !15
  unreachable

"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$5index17hf7cca2bc50785237E.exit.i.i": ; preds = %"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h0d9ed69ee3a2c216E.exit7.i.i.i.i", %bb5.i3.i.i.i.i, %bb2.i.i.i.i
  %24 = getelementptr inbounds i8, ptr %3, i64 %idx.023.i.i
  %len.i.i.i.i = sub i64 %idx.2.lcssa.i.i, %idx.023.i.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_45.i.i), !noalias !27
  call void @"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$i64$GT$8from_str17h5c9621d4c9e0f576E"(ptr noalias nocapture noundef nonnull sret(%"core::result::Result<i64, core::num::error::ParseIntError>") dereferenceable(16) %_45.i.i, ptr noalias noundef nonnull readonly align 1 %24, i64 noundef %len.i.i.i.i), !noalias !15
  %25 = load i8, ptr %_45.i.i, align 8, !range !28, !noalias !27, !noundef !6
  %trunc.not.i.i = icmp eq i8 %25, 0
  br i1 %trunc.not.i.i, label %bb31.i.i, label %bb30.i.i

bb31.i.i:                                         ; preds = %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$5index17hf7cca2bc50785237E.exit.i.i"
  %26 = getelementptr inbounds %"core::result::Result<i64, core::num::error::ParseIntError>::Ok", ptr %_45.i.i, i64 0, i32 1
  %tmp.i.i = load i64, ptr %26, align 8, !noalias !27, !noundef !6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_45.i.i), !noalias !27
  %27 = add i64 %tmp.i.i, 2147483648
  %_48.0.i.i = icmp ult i64 %27, 4294967296
  br i1 %_48.0.i.i, label %bb2.i, label %bb5.i

bb30.i.i:                                         ; preds = %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$5index17hf7cca2bc50785237E.exit.i.i"
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_45.i.i), !noalias !27
  br label %bb5.i

bb5.i:                                            ; preds = %bb30.i.i, %bb31.i.i, %bb27.critedge.i.i, %bb12.thread.i.i, %bb41.i.i
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_13.i), !noalias !8
  %28 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_13.i, i64 0, i32 1
  store ptr @alloc_65fa4baacd446f3f846f1616e704d2d7, ptr %28, align 8, !alias.scope !29, !noalias !8
  %29 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_13.i, i64 0, i32 1, i32 1
  store i64 1, ptr %29, align 8, !alias.scope !29, !noalias !8
  store ptr null, ptr %_13.i, align 8, !alias.scope !29, !noalias !8
  %30 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_13.i, i64 0, i32 2
  store ptr @alloc_513570631223a12912d85da2bec3b15a, ptr %30, align 8, !alias.scope !29, !noalias !8
  %31 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_13.i, i64 0, i32 2, i32 1
  store i64 0, ptr %31, align 8, !alias.scope !29, !noalias !8
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_13.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_13.i), !noalias !8
  br label %_ZN6driver3src6driver6driver17h98e8ba24abf7dd96E.exit

bb2.i:                                            ; preds = %bb31.i.i
  %32 = trunc i64 %tmp.i.i to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %the_house.i), !noalias !8
  store i32 2, ptr %the_house.i, align 8, !noalias !8
  %33 = getelementptr inbounds %"src::driver::HouseT", ptr %the_house.i, i64 0, i32 1
  store i32 5, ptr %33, align 4, !noalias !8
  %34 = getelementptr inbounds %"src::driver::HouseT", ptr %the_house.i, i64 0, i32 2
  store double 2.500000e+00, ptr %34, align 8, !noalias !8
  call fastcc void @_ZN6driver3src6driver3run17h17e49771bd41990dE(ptr noalias noundef nonnull align 8 dereferenceable(16) %the_house.i, i32 noundef %32)
  call fastcc void @_ZN6driver3src6driver3run17h17e49771bd41990dE(ptr noalias noundef nonnull align 8 dereferenceable(16) %the_house.i, i32 noundef %32)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %the_house.i), !noalias !8
  br label %_ZN6driver3src6driver6driver17h98e8ba24abf7dd96E.exit

_ZN6driver3src6driver6driver17h98e8ba24abf7dd96E.exit: ; preds = %bb2.i, %bb5.i
  ret void
}

; Function Attrs: nonlazybind uwtable
declare noundef i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_ZN4core3ffi5c_str4CStr8from_ptr9strlen_rt17h463292534e232c62E(ptr noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nonlazybind uwtable
declare void @_ZN4core3ffi5c_str4CStr6to_str17h7660279a6932e49cE(ptr noalias nocapture noundef sret(%"core::result::Result<&str, core::str::error::Utf8Error>") dereferenceable(24), ptr noalias noundef nonnull readonly align 1, i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6result13unwrap_failed17h008634a1b68516fbE(ptr noalias noundef nonnull readonly align 1, i64 noundef, ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 dereferenceable(24), ptr noalias noundef readonly align 8 dereferenceable(24)) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core3str16slice_error_fail17h696d29a1b388d0feE(ptr noalias noundef nonnull readonly align 1, i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 dereferenceable(24)) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare void @"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$i64$GT$8from_str17h5c9621d4c9e0f576E"(ptr noalias nocapture noundef sret(%"core::result::Result<i64, core::num::error::ParseIntError>") dereferenceable(16), ptr noalias noundef nonnull readonly align 1, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef readonly dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN6driver3src6driver3run17h17e49771bd41990dE(ptr noalias noundef align 8 dereferenceable(16) %the_house, i32 noundef %extra_bedrooms) unnamed_addr #0 {
start:
  %_16.i43 = alloca [3 x %"core::fmt::rt::v1::Argument"], align 8
  %_7.i44 = alloca [3 x { ptr, ptr }], align 8
  %_3.i45 = alloca %"core::fmt::Arguments<'_>", align 8
  %_16.i22 = alloca [3 x %"core::fmt::rt::v1::Argument"], align 8
  %_7.i23 = alloca [3 x { ptr, ptr }], align 8
  %_3.i24 = alloca %"core::fmt::Arguments<'_>", align 8
  %_16.i1 = alloca [3 x %"core::fmt::rt::v1::Argument"], align 8
  %_7.i2 = alloca [3 x { ptr, ptr }], align 8
  %_3.i3 = alloca %"core::fmt::Arguments<'_>", align 8
  %_16.i = alloca [3 x %"core::fmt::rt::v1::Argument"], align 8
  %_7.i = alloca [3 x { ptr, ptr }], align 8
  %_3.i = alloca %"core::fmt::Arguments<'_>", align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i), !noalias !32
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_7.i), !noalias !32
  %x.i = getelementptr inbounds %"src::driver::HouseT", ptr %the_house, i64 0, i32 1
  %x4.i = getelementptr inbounds %"src::driver::HouseT", ptr %the_house, i64 0, i32 2
  store ptr %the_house, ptr %_7.i, align 8, !noalias !32
  %0 = getelementptr inbounds { ptr, ptr }, ptr %_7.i, i64 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %0, align 8, !noalias !32
  %1 = getelementptr inbounds [3 x { ptr, ptr }], ptr %_7.i, i64 0, i64 1
  store ptr %x.i, ptr %1, align 8, !noalias !32
  %2 = getelementptr inbounds [3 x { ptr, ptr }], ptr %_7.i, i64 0, i64 1, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %2, align 8, !noalias !32
  %3 = getelementptr inbounds [3 x { ptr, ptr }], ptr %_7.i, i64 0, i64 2
  store ptr %x4.i, ptr %3, align 8, !noalias !32
  %4 = getelementptr inbounds [3 x { ptr, ptr }], ptr %_7.i, i64 0, i64 2, i32 1
  store ptr @"_ZN4core3fmt5float52_$LT$impl$u20$core..fmt..Display$u20$for$u20$f64$GT$3fmt17hf64b1960e3b02756E", ptr %4, align 8, !noalias !32
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %_16.i), !noalias !32
  store i64 2, ptr %_16.i, align 8, !noalias !32
  %_17.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %_16.i, i64 16
  store i64 2, ptr %_17.sroa.0.sroa.5.0..sroa_idx.i, align 8, !noalias !32
  %_17.sroa.0.sroa.7.0..sroa_idx.i = getelementptr inbounds i8, ptr %_16.i, i64 32
  store i32 0, ptr %_17.sroa.0.sroa.7.0..sroa_idx.i, align 8, !noalias !32
  %_17.sroa.0.sroa.8.0..sroa_idx.i = getelementptr inbounds i8, ptr %_16.i, i64 36
  store i32 32, ptr %_17.sroa.0.sroa.8.0..sroa_idx.i, align 4, !noalias !32
  %_17.sroa.0.sroa.9.0..sroa_idx.i = getelementptr inbounds i8, ptr %_16.i, i64 40
  store i8 3, ptr %_17.sroa.0.sroa.9.0..sroa_idx.i, align 8, !noalias !32
  %_17.sroa.4.0..sroa_idx.i = getelementptr inbounds i8, ptr %_16.i, i64 48
  store i64 0, ptr %_17.sroa.4.0..sroa_idx.i, align 8, !noalias !32
  %5 = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_16.i, i64 0, i64 1
  store i64 2, ptr %5, align 8, !noalias !32
  %_21.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_16.i, i64 0, i64 1, i32 0, i32 1
  store i64 2, ptr %_21.sroa.0.sroa.5.0..sroa_idx.i, align 8, !noalias !32
  %_21.sroa.0.sroa.7.0..sroa_idx.i = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_16.i, i64 0, i64 1, i32 0, i32 2
  store i32 0, ptr %_21.sroa.0.sroa.7.0..sroa_idx.i, align 8, !noalias !32
  %_21.sroa.0.sroa.8.0..sroa_idx.i = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_16.i, i64 0, i64 1, i32 0, i32 3
  store i32 32, ptr %_21.sroa.0.sroa.8.0..sroa_idx.i, align 4, !noalias !32
  %_21.sroa.0.sroa.9.0..sroa_idx.i = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_16.i, i64 0, i64 1, i32 0, i32 4
  store i8 3, ptr %_21.sroa.0.sroa.9.0..sroa_idx.i, align 8, !noalias !32
  %_21.sroa.4.0..sroa_idx.i = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_16.i, i64 0, i64 1, i32 1
  store i64 1, ptr %_21.sroa.4.0..sroa_idx.i, align 8, !noalias !32
  %6 = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_16.i, i64 0, i64 2
  store i64 0, ptr %6, align 8, !noalias !32
  %_25.sroa.0.sroa.4.0..sroa_idx.i = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_16.i, i64 0, i64 2, i32 0, i32 0, i32 1
  store i64 1, ptr %_25.sroa.0.sroa.4.0..sroa_idx.i, align 8, !noalias !32
  %_25.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_16.i, i64 0, i64 2, i32 0, i32 1
  store i64 2, ptr %_25.sroa.0.sroa.5.0..sroa_idx.i, align 8, !noalias !32
  %_25.sroa.0.sroa.7.0..sroa_idx.i = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_16.i, i64 0, i64 2, i32 0, i32 2
  store i32 0, ptr %_25.sroa.0.sroa.7.0..sroa_idx.i, align 8, !noalias !32
  %_25.sroa.0.sroa.8.0..sroa_idx.i = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_16.i, i64 0, i64 2, i32 0, i32 3
  store i32 32, ptr %_25.sroa.0.sroa.8.0..sroa_idx.i, align 4, !noalias !32
  %_25.sroa.0.sroa.9.0..sroa_idx.i = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_16.i, i64 0, i64 2, i32 0, i32 4
  store i8 3, ptr %_25.sroa.0.sroa.9.0..sroa_idx.i, align 8, !noalias !32
  %_25.sroa.4.0..sroa_idx.i = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_16.i, i64 0, i64 2, i32 1
  store i64 2, ptr %_25.sroa.4.0..sroa_idx.i, align 8, !noalias !32
  %7 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 1
  store ptr @alloc_1819828f617093f2e72a86ee9316c0e5, ptr %7, align 8, !noalias !32
  %8 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 1, i32 1
  store i64 4, ptr %8, align 8, !noalias !32
  store ptr %_16.i, ptr %_3.i, align 8, !noalias !32
  %9 = getelementptr inbounds { ptr, i64 }, ptr %_3.i, i64 0, i32 1
  store i64 3, ptr %9, align 8, !noalias !32
  %10 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 2
  store ptr %_7.i, ptr %10, align 8, !noalias !32
  %11 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 2, i32 1
  store i64 3, ptr %11, align 8, !noalias !32
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i), !noalias !32
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %_16.i), !noalias !32
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_7.i), !noalias !32
  %12 = load i32, ptr %the_house, align 8, !alias.scope !35, !noundef !6
  %13 = add i32 %12, 1
  store i32 %13, ptr %the_house, align 8, !alias.scope !35
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i3), !noalias !38
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_7.i2), !noalias !38
  store ptr %the_house, ptr %_7.i2, align 8, !noalias !38
  %14 = getelementptr inbounds { ptr, ptr }, ptr %_7.i2, i64 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %14, align 8, !noalias !38
  %15 = getelementptr inbounds [3 x { ptr, ptr }], ptr %_7.i2, i64 0, i64 1
  store ptr %x.i, ptr %15, align 8, !noalias !38
  %16 = getelementptr inbounds [3 x { ptr, ptr }], ptr %_7.i2, i64 0, i64 1, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %16, align 8, !noalias !38
  %17 = getelementptr inbounds [3 x { ptr, ptr }], ptr %_7.i2, i64 0, i64 2
  store ptr %x4.i, ptr %17, align 8, !noalias !38
  %18 = getelementptr inbounds [3 x { ptr, ptr }], ptr %_7.i2, i64 0, i64 2, i32 1
  store ptr @"_ZN4core3fmt5float52_$LT$impl$u20$core..fmt..Display$u20$for$u20$f64$GT$3fmt17hf64b1960e3b02756E", ptr %18, align 8, !noalias !38
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %_16.i1), !noalias !38
  store i64 2, ptr %_16.i1, align 8, !noalias !38
  %_17.sroa.0.sroa.5.0..sroa_idx.i6 = getelementptr inbounds i8, ptr %_16.i1, i64 16
  store i64 2, ptr %_17.sroa.0.sroa.5.0..sroa_idx.i6, align 8, !noalias !38
  %_17.sroa.0.sroa.7.0..sroa_idx.i7 = getelementptr inbounds i8, ptr %_16.i1, i64 32
  store i32 0, ptr %_17.sroa.0.sroa.7.0..sroa_idx.i7, align 8, !noalias !38
  %_17.sroa.0.sroa.8.0..sroa_idx.i8 = getelementptr inbounds i8, ptr %_16.i1, i64 36
  store i32 32, ptr %_17.sroa.0.sroa.8.0..sroa_idx.i8, align 4, !noalias !38
  %_17.sroa.0.sroa.9.0..sroa_idx.i9 = getelementptr inbounds i8, ptr %_16.i1, i64 40
  store i8 3, ptr %_17.sroa.0.sroa.9.0..sroa_idx.i9, align 8, !noalias !38
  %_17.sroa.4.0..sroa_idx.i10 = getelementptr inbounds i8, ptr %_16.i1, i64 48
  store i64 0, ptr %_17.sroa.4.0..sroa_idx.i10, align 8, !noalias !38
  %19 = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_16.i1, i64 0, i64 1
  store i64 2, ptr %19, align 8, !noalias !38
  %_21.sroa.0.sroa.5.0..sroa_idx.i11 = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_16.i1, i64 0, i64 1, i32 0, i32 1
  store i64 2, ptr %_21.sroa.0.sroa.5.0..sroa_idx.i11, align 8, !noalias !38
  %_21.sroa.0.sroa.7.0..sroa_idx.i12 = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_16.i1, i64 0, i64 1, i32 0, i32 2
  store i32 0, ptr %_21.sroa.0.sroa.7.0..sroa_idx.i12, align 8, !noalias !38
  %_21.sroa.0.sroa.8.0..sroa_idx.i13 = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_16.i1, i64 0, i64 1, i32 0, i32 3
  store i32 32, ptr %_21.sroa.0.sroa.8.0..sroa_idx.i13, align 4, !noalias !38
  %_21.sroa.0.sroa.9.0..sroa_idx.i14 = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_16.i1, i64 0, i64 1, i32 0, i32 4
  store i8 3, ptr %_21.sroa.0.sroa.9.0..sroa_idx.i14, align 8, !noalias !38
  %_21.sroa.4.0..sroa_idx.i15 = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_16.i1, i64 0, i64 1, i32 1
  store i64 1, ptr %_21.sroa.4.0..sroa_idx.i15, align 8, !noalias !38
  %20 = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_16.i1, i64 0, i64 2
  store i64 0, ptr %20, align 8, !noalias !38
  %_25.sroa.0.sroa.4.0..sroa_idx.i16 = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_16.i1, i64 0, i64 2, i32 0, i32 0, i32 1
  store i64 1, ptr %_25.sroa.0.sroa.4.0..sroa_idx.i16, align 8, !noalias !38
  %_25.sroa.0.sroa.5.0..sroa_idx.i17 = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_16.i1, i64 0, i64 2, i32 0, i32 1
  store i64 2, ptr %_25.sroa.0.sroa.5.0..sroa_idx.i17, align 8, !noalias !38
  %_25.sroa.0.sroa.7.0..sroa_idx.i18 = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_16.i1, i64 0, i64 2, i32 0, i32 2
  store i32 0, ptr %_25.sroa.0.sroa.7.0..sroa_idx.i18, align 8, !noalias !38
  %_25.sroa.0.sroa.8.0..sroa_idx.i19 = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_16.i1, i64 0, i64 2, i32 0, i32 3
  store i32 32, ptr %_25.sroa.0.sroa.8.0..sroa_idx.i19, align 4, !noalias !38
  %_25.sroa.0.sroa.9.0..sroa_idx.i20 = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_16.i1, i64 0, i64 2, i32 0, i32 4
  store i8 3, ptr %_25.sroa.0.sroa.9.0..sroa_idx.i20, align 8, !noalias !38
  %_25.sroa.4.0..sroa_idx.i21 = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_16.i1, i64 0, i64 2, i32 1
  store i64 2, ptr %_25.sroa.4.0..sroa_idx.i21, align 8, !noalias !38
  %21 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i3, i64 0, i32 1
  store ptr @alloc_1819828f617093f2e72a86ee9316c0e5, ptr %21, align 8, !noalias !38
  %22 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i3, i64 0, i32 1, i32 1
  store i64 4, ptr %22, align 8, !noalias !38
  store ptr %_16.i1, ptr %_3.i3, align 8, !noalias !38
  %23 = getelementptr inbounds { ptr, i64 }, ptr %_3.i3, i64 0, i32 1
  store i64 3, ptr %23, align 8, !noalias !38
  %24 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i3, i64 0, i32 2
  store ptr %_7.i2, ptr %24, align 8, !noalias !38
  %25 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i3, i64 0, i32 2, i32 1
  store i64 3, ptr %25, align 8, !noalias !38
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i3)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i3), !noalias !38
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %_16.i1), !noalias !38
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_7.i2), !noalias !38
  %26 = load double, ptr %x4.i, align 8, !noundef !6
  %27 = fadd double %26, 1.000000e+00
  store double %27, ptr %x4.i, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i24), !noalias !41
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_7.i23), !noalias !41
  store ptr %the_house, ptr %_7.i23, align 8, !noalias !41
  %28 = getelementptr inbounds { ptr, ptr }, ptr %_7.i23, i64 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %28, align 8, !noalias !41
  %29 = getelementptr inbounds [3 x { ptr, ptr }], ptr %_7.i23, i64 0, i64 1
  store ptr %x.i, ptr %29, align 8, !noalias !41
  %30 = getelementptr inbounds [3 x { ptr, ptr }], ptr %_7.i23, i64 0, i64 1, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %30, align 8, !noalias !41
  %31 = getelementptr inbounds [3 x { ptr, ptr }], ptr %_7.i23, i64 0, i64 2
  store ptr %x4.i, ptr %31, align 8, !noalias !41
  %32 = getelementptr inbounds [3 x { ptr, ptr }], ptr %_7.i23, i64 0, i64 2, i32 1
  store ptr @"_ZN4core3fmt5float52_$LT$impl$u20$core..fmt..Display$u20$for$u20$f64$GT$3fmt17hf64b1960e3b02756E", ptr %32, align 8, !noalias !41
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %_16.i22), !noalias !41
  store i64 2, ptr %_16.i22, align 8, !noalias !41
  %_17.sroa.0.sroa.5.0..sroa_idx.i27 = getelementptr inbounds i8, ptr %_16.i22, i64 16
  store i64 2, ptr %_17.sroa.0.sroa.5.0..sroa_idx.i27, align 8, !noalias !41
  %_17.sroa.0.sroa.7.0..sroa_idx.i28 = getelementptr inbounds i8, ptr %_16.i22, i64 32
  store i32 0, ptr %_17.sroa.0.sroa.7.0..sroa_idx.i28, align 8, !noalias !41
  %_17.sroa.0.sroa.8.0..sroa_idx.i29 = getelementptr inbounds i8, ptr %_16.i22, i64 36
  store i32 32, ptr %_17.sroa.0.sroa.8.0..sroa_idx.i29, align 4, !noalias !41
  %_17.sroa.0.sroa.9.0..sroa_idx.i30 = getelementptr inbounds i8, ptr %_16.i22, i64 40
  store i8 3, ptr %_17.sroa.0.sroa.9.0..sroa_idx.i30, align 8, !noalias !41
  %_17.sroa.4.0..sroa_idx.i31 = getelementptr inbounds i8, ptr %_16.i22, i64 48
  store i64 0, ptr %_17.sroa.4.0..sroa_idx.i31, align 8, !noalias !41
  %33 = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_16.i22, i64 0, i64 1
  store i64 2, ptr %33, align 8, !noalias !41
  %_21.sroa.0.sroa.5.0..sroa_idx.i32 = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_16.i22, i64 0, i64 1, i32 0, i32 1
  store i64 2, ptr %_21.sroa.0.sroa.5.0..sroa_idx.i32, align 8, !noalias !41
  %_21.sroa.0.sroa.7.0..sroa_idx.i33 = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_16.i22, i64 0, i64 1, i32 0, i32 2
  store i32 0, ptr %_21.sroa.0.sroa.7.0..sroa_idx.i33, align 8, !noalias !41
  %_21.sroa.0.sroa.8.0..sroa_idx.i34 = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_16.i22, i64 0, i64 1, i32 0, i32 3
  store i32 32, ptr %_21.sroa.0.sroa.8.0..sroa_idx.i34, align 4, !noalias !41
  %_21.sroa.0.sroa.9.0..sroa_idx.i35 = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_16.i22, i64 0, i64 1, i32 0, i32 4
  store i8 3, ptr %_21.sroa.0.sroa.9.0..sroa_idx.i35, align 8, !noalias !41
  %_21.sroa.4.0..sroa_idx.i36 = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_16.i22, i64 0, i64 1, i32 1
  store i64 1, ptr %_21.sroa.4.0..sroa_idx.i36, align 8, !noalias !41
  %34 = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_16.i22, i64 0, i64 2
  store i64 0, ptr %34, align 8, !noalias !41
  %_25.sroa.0.sroa.4.0..sroa_idx.i37 = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_16.i22, i64 0, i64 2, i32 0, i32 0, i32 1
  store i64 1, ptr %_25.sroa.0.sroa.4.0..sroa_idx.i37, align 8, !noalias !41
  %_25.sroa.0.sroa.5.0..sroa_idx.i38 = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_16.i22, i64 0, i64 2, i32 0, i32 1
  store i64 2, ptr %_25.sroa.0.sroa.5.0..sroa_idx.i38, align 8, !noalias !41
  %_25.sroa.0.sroa.7.0..sroa_idx.i39 = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_16.i22, i64 0, i64 2, i32 0, i32 2
  store i32 0, ptr %_25.sroa.0.sroa.7.0..sroa_idx.i39, align 8, !noalias !41
  %_25.sroa.0.sroa.8.0..sroa_idx.i40 = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_16.i22, i64 0, i64 2, i32 0, i32 3
  store i32 32, ptr %_25.sroa.0.sroa.8.0..sroa_idx.i40, align 4, !noalias !41
  %_25.sroa.0.sroa.9.0..sroa_idx.i41 = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_16.i22, i64 0, i64 2, i32 0, i32 4
  store i8 3, ptr %_25.sroa.0.sroa.9.0..sroa_idx.i41, align 8, !noalias !41
  %_25.sroa.4.0..sroa_idx.i42 = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_16.i22, i64 0, i64 2, i32 1
  store i64 2, ptr %_25.sroa.4.0..sroa_idx.i42, align 8, !noalias !41
  %35 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i24, i64 0, i32 1
  store ptr @alloc_1819828f617093f2e72a86ee9316c0e5, ptr %35, align 8, !noalias !41
  %36 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i24, i64 0, i32 1, i32 1
  store i64 4, ptr %36, align 8, !noalias !41
  store ptr %_16.i22, ptr %_3.i24, align 8, !noalias !41
  %37 = getelementptr inbounds { ptr, i64 }, ptr %_3.i24, i64 0, i32 1
  store i64 3, ptr %37, align 8, !noalias !41
  %38 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i24, i64 0, i32 2
  store ptr %_7.i23, ptr %38, align 8, !noalias !41
  %39 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i24, i64 0, i32 2, i32 1
  store i64 3, ptr %39, align 8, !noalias !41
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i24)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i24), !noalias !41
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %_16.i22), !noalias !41
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_7.i23), !noalias !41
  %40 = load i32, ptr %x.i, align 4, !alias.scope !44, !noundef !6
  %41 = add i32 %40, %extra_bedrooms
  store i32 %41, ptr %x.i, align 4, !alias.scope !44
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i45), !noalias !47
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_7.i44), !noalias !47
  store ptr %the_house, ptr %_7.i44, align 8, !noalias !47
  %42 = getelementptr inbounds { ptr, ptr }, ptr %_7.i44, i64 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %42, align 8, !noalias !47
  %43 = getelementptr inbounds [3 x { ptr, ptr }], ptr %_7.i44, i64 0, i64 1
  store ptr %x.i, ptr %43, align 8, !noalias !47
  %44 = getelementptr inbounds [3 x { ptr, ptr }], ptr %_7.i44, i64 0, i64 1, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %44, align 8, !noalias !47
  %45 = getelementptr inbounds [3 x { ptr, ptr }], ptr %_7.i44, i64 0, i64 2
  store ptr %x4.i, ptr %45, align 8, !noalias !47
  %46 = getelementptr inbounds [3 x { ptr, ptr }], ptr %_7.i44, i64 0, i64 2, i32 1
  store ptr @"_ZN4core3fmt5float52_$LT$impl$u20$core..fmt..Display$u20$for$u20$f64$GT$3fmt17hf64b1960e3b02756E", ptr %46, align 8, !noalias !47
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %_16.i43), !noalias !47
  store i64 2, ptr %_16.i43, align 8, !noalias !47
  %_17.sroa.0.sroa.5.0..sroa_idx.i48 = getelementptr inbounds i8, ptr %_16.i43, i64 16
  store i64 2, ptr %_17.sroa.0.sroa.5.0..sroa_idx.i48, align 8, !noalias !47
  %_17.sroa.0.sroa.7.0..sroa_idx.i49 = getelementptr inbounds i8, ptr %_16.i43, i64 32
  store i32 0, ptr %_17.sroa.0.sroa.7.0..sroa_idx.i49, align 8, !noalias !47
  %_17.sroa.0.sroa.8.0..sroa_idx.i50 = getelementptr inbounds i8, ptr %_16.i43, i64 36
  store i32 32, ptr %_17.sroa.0.sroa.8.0..sroa_idx.i50, align 4, !noalias !47
  %_17.sroa.0.sroa.9.0..sroa_idx.i51 = getelementptr inbounds i8, ptr %_16.i43, i64 40
  store i8 3, ptr %_17.sroa.0.sroa.9.0..sroa_idx.i51, align 8, !noalias !47
  %_17.sroa.4.0..sroa_idx.i52 = getelementptr inbounds i8, ptr %_16.i43, i64 48
  store i64 0, ptr %_17.sroa.4.0..sroa_idx.i52, align 8, !noalias !47
  %47 = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_16.i43, i64 0, i64 1
  store i64 2, ptr %47, align 8, !noalias !47
  %_21.sroa.0.sroa.5.0..sroa_idx.i53 = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_16.i43, i64 0, i64 1, i32 0, i32 1
  store i64 2, ptr %_21.sroa.0.sroa.5.0..sroa_idx.i53, align 8, !noalias !47
  %_21.sroa.0.sroa.7.0..sroa_idx.i54 = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_16.i43, i64 0, i64 1, i32 0, i32 2
  store i32 0, ptr %_21.sroa.0.sroa.7.0..sroa_idx.i54, align 8, !noalias !47
  %_21.sroa.0.sroa.8.0..sroa_idx.i55 = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_16.i43, i64 0, i64 1, i32 0, i32 3
  store i32 32, ptr %_21.sroa.0.sroa.8.0..sroa_idx.i55, align 4, !noalias !47
  %_21.sroa.0.sroa.9.0..sroa_idx.i56 = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_16.i43, i64 0, i64 1, i32 0, i32 4
  store i8 3, ptr %_21.sroa.0.sroa.9.0..sroa_idx.i56, align 8, !noalias !47
  %_21.sroa.4.0..sroa_idx.i57 = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_16.i43, i64 0, i64 1, i32 1
  store i64 1, ptr %_21.sroa.4.0..sroa_idx.i57, align 8, !noalias !47
  %48 = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_16.i43, i64 0, i64 2
  store i64 0, ptr %48, align 8, !noalias !47
  %_25.sroa.0.sroa.4.0..sroa_idx.i58 = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_16.i43, i64 0, i64 2, i32 0, i32 0, i32 1
  store i64 1, ptr %_25.sroa.0.sroa.4.0..sroa_idx.i58, align 8, !noalias !47
  %_25.sroa.0.sroa.5.0..sroa_idx.i59 = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_16.i43, i64 0, i64 2, i32 0, i32 1
  store i64 2, ptr %_25.sroa.0.sroa.5.0..sroa_idx.i59, align 8, !noalias !47
  %_25.sroa.0.sroa.7.0..sroa_idx.i60 = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_16.i43, i64 0, i64 2, i32 0, i32 2
  store i32 0, ptr %_25.sroa.0.sroa.7.0..sroa_idx.i60, align 8, !noalias !47
  %_25.sroa.0.sroa.8.0..sroa_idx.i61 = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_16.i43, i64 0, i64 2, i32 0, i32 3
  store i32 32, ptr %_25.sroa.0.sroa.8.0..sroa_idx.i61, align 4, !noalias !47
  %_25.sroa.0.sroa.9.0..sroa_idx.i62 = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_16.i43, i64 0, i64 2, i32 0, i32 4
  store i8 3, ptr %_25.sroa.0.sroa.9.0..sroa_idx.i62, align 8, !noalias !47
  %_25.sroa.4.0..sroa_idx.i63 = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_16.i43, i64 0, i64 2, i32 1
  store i64 2, ptr %_25.sroa.4.0..sroa_idx.i63, align 8, !noalias !47
  %49 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i45, i64 0, i32 1
  store ptr @alloc_1819828f617093f2e72a86ee9316c0e5, ptr %49, align 8, !noalias !47
  %50 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i45, i64 0, i32 1, i32 1
  store i64 4, ptr %50, align 8, !noalias !47
  store ptr %_16.i43, ptr %_3.i45, align 8, !noalias !47
  %51 = getelementptr inbounds { ptr, i64 }, ptr %_3.i45, i64 0, i32 1
  store i64 3, ptr %51, align 8, !noalias !47
  %52 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i45, i64 0, i32 2
  store ptr %_7.i44, ptr %52, align 8, !noalias !47
  %53 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i45, i64 0, i32 2, i32 1
  store i64 3, ptr %53, align 8, !noalias !47
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i45)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i45), !noalias !47
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %_16.i43), !noalias !47
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_7.i44), !noalias !47
  ret void
}

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE"(ptr noalias noundef readonly align 4 dereferenceable(4), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt5float52_$LT$impl$u20$core..fmt..Display$u20$for$u20$f64$GT$3fmt17hf64b1960e3b02756E"(ptr noalias noundef readonly align 8 dereferenceable(8), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @"_ZN4core3ptr48drop_in_place$LT$core..str..error..Utf8Error$GT$17h1d6f64b633b1d7c5E"(ptr nocapture readnone %_1) unnamed_addr #6 {
start:
  ret void
}

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN64_$LT$core..str..error..Utf8Error$u20$as$u20$core..fmt..Debug$GT$3fmt17he5298eb5cbc8b1a7E"(ptr noalias noundef readonly align 8 dereferenceable(16), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
define void @run(ptr noundef nonnull %the_house, i32 noundef %extra_bedrooms) unnamed_addr #0 {
start:
  tail call fastcc void @_ZN6driver3src6driver3run17h17e49771bd41990dE(ptr noalias noundef nonnull align 8 dereferenceable(16) %the_house, i32 noundef %extra_bedrooms)
  ret void
}

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { noreturn }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!3}
!3 = distinct !{!3, !4, !"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h38d2f8f80620b971E: %self"}
!4 = distinct !{!4, !"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h38d2f8f80620b971E"}
!5 = !{i64 0, i64 2}
!6 = !{}
!7 = !{i64 1}
!8 = !{!9}
!9 = distinct !{!9, !10, !"_ZN6driver3src6driver6driver17h98e8ba24abf7dd96E: %input.0"}
!10 = distinct !{!10, !"_ZN6driver3src6driver6driver17h98e8ba24abf7dd96E"}
!11 = !{!12}
!12 = distinct !{!12, !13, !"_ZN6driver3src6driver9parse_val17ha73bd8f67194e04bE: %input.0"}
!13 = distinct !{!13, !"_ZN6driver3src6driver9parse_val17ha73bd8f67194e04bE"}
!14 = !{!12, !9}
!15 = !{!16}
!16 = distinct !{!16, !13, !"_ZN6driver3src6driver9parse_val17ha73bd8f67194e04bE: %val"}
!17 = !{!18, !20, !22, !12, !9}
!18 = distinct !{!18, !19, !"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h0d9ed69ee3a2c216E: %self.0"}
!19 = distinct !{!19, !"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h0d9ed69ee3a2c216E"}
!20 = distinct !{!20, !21, !"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h1ddea17ec99390eaE: %slice.0"}
!21 = distinct !{!21, !"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h1ddea17ec99390eaE"}
!22 = distinct !{!22, !23, !"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$5index17hf7cca2bc50785237E: %slice.0"}
!23 = distinct !{!23, !"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$5index17hf7cca2bc50785237E"}
!24 = !{!25, !20, !22, !12, !9}
!25 = distinct !{!25, !26, !"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h0d9ed69ee3a2c216E: %self.0"}
!26 = distinct !{!26, !"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h0d9ed69ee3a2c216E"}
!27 = !{!12, !16, !9}
!28 = !{i8 0, i8 2}
!29 = !{!30}
!30 = distinct !{!30, !31, !"_ZN4core3fmt9Arguments9new_const17h00a508d8cf4830ceE: argument 0"}
!31 = distinct !{!31, !"_ZN4core3fmt9Arguments9new_const17h00a508d8cf4830ceE"}
!32 = !{!33}
!33 = distinct !{!33, !34, !"_ZN6driver3src6driver11print_house17h03241215e1b223c9E: %house"}
!34 = distinct !{!34, !"_ZN6driver3src6driver11print_house17h03241215e1b223c9E"}
!35 = !{!36}
!36 = distinct !{!36, !37, !"_ZN6driver3src6driver9add_floor17he85eb5f3e469ae8cE: %house"}
!37 = distinct !{!37, !"_ZN6driver3src6driver9add_floor17he85eb5f3e469ae8cE"}
!38 = !{!39}
!39 = distinct !{!39, !40, !"_ZN6driver3src6driver11print_house17h03241215e1b223c9E: %house"}
!40 = distinct !{!40, !"_ZN6driver3src6driver11print_house17h03241215e1b223c9E"}
!41 = !{!42}
!42 = distinct !{!42, !43, !"_ZN6driver3src6driver11print_house17h03241215e1b223c9E: %house"}
!43 = distinct !{!43, !"_ZN6driver3src6driver11print_house17h03241215e1b223c9E"}
!44 = !{!45}
!45 = distinct !{!45, !46, !"_ZN6driver3src6driver12add_bedrooms17h372b766cc7aab3f2E: %house"}
!46 = distinct !{!46, !"_ZN6driver3src6driver12add_bedrooms17h372b766cc7aab3f2E"}
!47 = !{!48}
!48 = distinct !{!48, !49, !"_ZN6driver3src6driver11print_house17h03241215e1b223c9E: %house"}
!49 = distinct !{!49, !"_ZN6driver3src6driver11print_house17h03241215e1b223c9E"}
