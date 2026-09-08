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
@vtable.0 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr48drop_in_place$LT$core..str..error..Utf8Error$GT$17h03847cd5a84caca1E", [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN64_$LT$core..str..error..Utf8Error$u20$as$u20$core..fmt..Debug$GT$3fmt17he5298eb5cbc8b1a7E" }>, align 8
@alloc_c8226f5b6efdedc05a2d58bf797d9dbb = private unnamed_addr constant <{ [43 x i8] }> <{ [43 x i8] c"Error: start is off the end of the string!\0A" }>, align 1
@alloc_e359caca03b0b5d72aad42755e0273a4 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @alloc_c8226f5b6efdedc05a2d58bf797d9dbb, [8 x i8] c"+\00\00\00\00\00\00\00" }>, align 8
@alloc_51a7abd0d3db4b897e7eb4010d8c88e6 = private unnamed_addr constant <{ [42 x i8] }> <{ [42 x i8] c"Error: stop is off the end of the string!\0A" }>, align 1
@alloc_c7271114f47fcfcb14f0fbd0dbdf3fd7 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @alloc_51a7abd0d3db4b897e7eb4010d8c88e6, [8 x i8] c"*\00\00\00\00\00\00\00" }>, align 8
@alloc_7ccf7765725759e977691c521660b598 = private unnamed_addr constant <{ [35 x i8] }> <{ [35 x i8] c"Error: stop must come after start!\0A" }>, align 1
@alloc_4ea1e5cc66308f949258b397434ad273 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @alloc_7ccf7765725759e977691c521660b598, [8 x i8] c"#\00\00\00\00\00\00\00" }>, align 8
@alloc_49a1e817e911805af64bbc7efb390101 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc_4ed11f17954caf7854f80f02ae34907e = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc_513570631223a12912d85da2bec3b15a, [8 x i8] zeroinitializer, ptr @alloc_49a1e817e911805af64bbc7efb390101, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc_b33edd8efae034434b20e8416a9546fd = private unnamed_addr constant <{ [14 x i8] }> <{ [14 x i8] c"src/slicing.rs" }>, align 1
@alloc_fb9f6f376858f39ac6501bc156c99d04 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_b33edd8efae034434b20e8416a9546fd, [16 x i8] c"\0E\00\00\00\00\00\00\00)\00\00\00\15\00\00\00" }>, align 8
@alloc_e990d97056713442bc62326898626f8e = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_b33edd8efae034434b20e8416a9546fd, [16 x i8] c"\0E\00\00\00\00\00\00\005\00\00\00\0A\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define noundef i32 @slice(ptr noundef %mystr, ptr noundef readonly %start_ptr, ptr noundef readonly %stop_ptr) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %_49.i = alloca { ptr, i64 }, align 8
  %_46.i = alloca [1 x { ptr, ptr }], align 8
  %_42.i = alloca %"core::fmt::Arguments<'_>", align 8
  %_35.i = alloca %"core::fmt::Arguments<'_>", align 8
  %_29.i = alloca %"core::fmt::Arguments<'_>", align 8
  %_17.i = alloca %"core::fmt::Arguments<'_>", align 8
  %e.i = alloca %"core::str::error::Utf8Error", align 8
  %_5 = alloca %"core::result::Result<&str, core::str::error::Utf8Error>", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_5)
  %len = tail call noundef i64 @_ZN4core3ffi5c_str4CStr8from_ptr9strlen_rt17h463292534e232c62E(ptr noundef %mystr)
  %len1 = add i64 %len, 1
  %0 = icmp ne ptr %mystr, null
  tail call void @llvm.assume(i1 %0)
  call void @_ZN4core3ffi5c_str4CStr6to_str17h7660279a6932e49cE(ptr noalias nocapture noundef nonnull sret(%"core::result::Result<&str, core::str::error::Utf8Error>") dereferenceable(24) %_5, ptr noalias noundef nonnull readonly align 1 %mystr, i64 noundef %len1)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2)
  %_2.i = load i64, ptr %_5, align 8, !range !5, !alias.scope !2, !noundef !6
  %trunc.not.i = icmp eq i64 %_2.i, 0
  br i1 %trunc.not.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17ha9bb60536e5344c1E.exit", label %bb1.i

bb1.i:                                            ; preds = %start
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %e.i), !noalias !2
  %1 = getelementptr inbounds %"core::result::Result<&str, core::str::error::Utf8Error>::Err", ptr %_5, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %e.i, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  call void @_ZN4core6result13unwrap_failed17h008634a1b68516fbE(ptr noalias noundef nonnull readonly align 1 @alloc_00ae4b301f7fab8ac9617c03fcbd7274, i64 noundef 43, ptr noundef nonnull align 1 %e.i, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @vtable.0, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_e990d97056713442bc62326898626f8e) #7, !noalias !2
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17ha9bb60536e5344c1E.exit": ; preds = %start
  %2 = getelementptr inbounds %"core::result::Result<&str, core::str::error::Utf8Error>::Ok", ptr %_5, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !alias.scope !2, !nonnull !6, !align !7, !noundef !6
  %4 = getelementptr inbounds %"core::result::Result<&str, core::str::error::Utf8Error>::Ok", ptr %_5, i64 0, i32 1, i32 1
  %5 = load i64, ptr %4, align 8, !alias.scope !2, !noundef !6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_5)
  %6 = icmp eq ptr %start_ptr, null
  %7 = icmp eq ptr %stop_ptr, null
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13)
  br i1 %6, label %bb10.i, label %bb1.i3

bb1.i3:                                           ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17ha9bb60536e5344c1E.exit"
  %_9.i = load i32, ptr %start_ptr, align 4, !alias.scope !11, !noalias !15, !noundef !6
  %_11.i = icmp slt i32 %_9.i, 0
  %_14.i = zext i32 %_9.i to i64
  %_13.i = icmp ult i64 %5, %_14.i
  %_10.0.i = or i1 %_11.i, %_13.i
  br i1 %_10.0.i, label %bb5.i, label %bb10.i

bb10.i:                                           ; preds = %bb1.i3, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17ha9bb60536e5344c1E.exit"
  %start1.0.i = phi i32 [ 0, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17ha9bb60536e5344c1E.exit" ], [ %_9.i, %bb1.i3 ]
  br i1 %7, label %bb23.i, label %bb11.i

bb5.i:                                            ; preds = %bb1.i3
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_17.i), !noalias !16
  %8 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_17.i, i64 0, i32 1
  store ptr @alloc_e359caca03b0b5d72aad42755e0273a4, ptr %8, align 8, !alias.scope !17, !noalias !20
  %9 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_17.i, i64 0, i32 1, i32 1
  store i64 1, ptr %9, align 8, !alias.scope !17, !noalias !20
  store ptr null, ptr %_17.i, align 8, !alias.scope !17, !noalias !20
  %10 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_17.i, i64 0, i32 2
  store ptr @alloc_513570631223a12912d85da2bec3b15a, ptr %10, align 8, !alias.scope !17, !noalias !20
  %11 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_17.i, i64 0, i32 2, i32 1
  store i64 0, ptr %11, align 8, !alias.scope !17, !noalias !20
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_17.i), !noalias !16
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_17.i), !noalias !16
  br label %_ZN12String_Slice3src7slicing5slice17h752556f80c08330bE.exit

bb11.i:                                           ; preds = %bb10.i
  %_21.i = load i32, ptr %stop_ptr, align 4, !alias.scope !13, !noalias !22, !noundef !6
  %_23.i = icmp slt i32 %_21.i, 0
  %_26.i = zext i32 %_21.i to i64
  %_25.i = icmp ult i64 %5, %_26.i
  %_22.0.i = or i1 %_23.i, %_25.i
  br i1 %_22.0.i, label %bb15.i, label %bb18.i

bb23.i:                                           ; preds = %bb10.i
  %12 = trunc i64 %5 to i32
  br label %bb24.i

bb24.i:                                           ; preds = %bb18.i, %bb23.i
  %stop.0.i = phi i32 [ %_21.i, %bb18.i ], [ %12, %bb23.i ]
  %start_usize.i = zext i32 %start1.0.i to i64
  %stop_usize.i = sext i32 %stop.0.i to i64
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_42.i), !noalias !16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_46.i), !noalias !16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_49.i), !noalias !16
  %_5.not.i.i.i = icmp ult i64 %stop_usize.i, %start_usize.i
  br i1 %_5.not.i.i.i, label %bb2.i.i, label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb24.i
  %13 = icmp eq i32 %start1.0.i, 0
  br i1 %13, label %bb2.i.i.i, label %bb3.i.i.i.i

bb3.i.i.i.i:                                      ; preds = %bb5.i.i.i
  %_9.not.i.i.i.i = icmp ugt i64 %5, %start_usize.i
  br i1 %_9.not.i.i.i.i, label %"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h0d9ed69ee3a2c216E.exit.i.i.i", label %bb5.i.i.i.i

bb5.i.i.i.i:                                      ; preds = %bb3.i.i.i.i
  %14 = icmp eq i64 %5, %start_usize.i
  br i1 %14, label %bb2.i.i.i, label %bb2.i.i

"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h0d9ed69ee3a2c216E.exit.i.i.i": ; preds = %bb3.i.i.i.i
  %15 = getelementptr inbounds i8, ptr %3, i64 %start_usize.i
  %b.i.i.i.i = load i8, ptr %15, align 1, !alias.scope !23, !noalias !30, !noundef !6
  %16 = icmp sgt i8 %b.i.i.i.i, -65
  br i1 %16, label %bb2.i.i.i, label %bb2.i.i

bb2.i.i.i:                                        ; preds = %"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h0d9ed69ee3a2c216E.exit.i.i.i", %bb5.i.i.i.i, %bb5.i.i.i
  %17 = icmp eq i32 %stop.0.i, 0
  br i1 %17, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$5index17hf7cca2bc50785237E.exit.i", label %bb3.i2.i.i.i

bb3.i2.i.i.i:                                     ; preds = %bb2.i.i.i
  %_9.not.i1.i.i.i = icmp ugt i64 %5, %stop_usize.i
  br i1 %_9.not.i1.i.i.i, label %"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h0d9ed69ee3a2c216E.exit7.i.i.i", label %bb5.i3.i.i.i

bb5.i3.i.i.i:                                     ; preds = %bb3.i2.i.i.i
  %18 = icmp eq i64 %5, %stop_usize.i
  br i1 %18, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$5index17hf7cca2bc50785237E.exit.i", label %bb2.i.i

"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h0d9ed69ee3a2c216E.exit7.i.i.i": ; preds = %bb3.i2.i.i.i
  %19 = getelementptr inbounds i8, ptr %3, i64 %stop_usize.i
  %b.i4.i.i.i = load i8, ptr %19, align 1, !alias.scope !31, !noalias !30, !noundef !6
  %20 = icmp sgt i8 %b.i4.i.i.i, -65
  br i1 %20, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$5index17hf7cca2bc50785237E.exit.i", label %bb2.i.i

bb2.i.i:                                          ; preds = %"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h0d9ed69ee3a2c216E.exit7.i.i.i", %bb5.i3.i.i.i, %"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h0d9ed69ee3a2c216E.exit.i.i.i", %bb5.i.i.i.i, %bb24.i
  tail call void @_ZN4core3str16slice_error_fail17h696d29a1b388d0feE(ptr noalias noundef nonnull readonly align 1 %3, i64 noundef %5, i64 noundef %start_usize.i, i64 noundef %stop_usize.i, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_fb9f6f376858f39ac6501bc156c99d04) #7, !noalias !30
  unreachable

"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$5index17hf7cca2bc50785237E.exit.i": ; preds = %"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h0d9ed69ee3a2c216E.exit7.i.i.i", %bb5.i3.i.i.i, %bb2.i.i.i
  %21 = getelementptr inbounds i8, ptr %3, i64 %start_usize.i
  %len.i.i.i = sub nsw i64 %stop_usize.i, %start_usize.i
  store ptr %21, ptr %_49.i, align 8, !noalias !16
  %22 = getelementptr inbounds { ptr, i64 }, ptr %_49.i, i64 0, i32 1
  store i64 %len.i.i.i, ptr %22, align 8, !noalias !16
  store ptr %_49.i, ptr %_46.i, align 8, !noalias !16
  %23 = getelementptr inbounds { ptr, ptr }, ptr %_46.i, i64 0, i32 1
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3ec29c169e7b8165E", ptr %23, align 8, !noalias !16
  %24 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_42.i, i64 0, i32 1
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %24, align 8, !alias.scope !34, !noalias !37
  %25 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_42.i, i64 0, i32 1, i32 1
  store i64 2, ptr %25, align 8, !alias.scope !34, !noalias !37
  store ptr null, ptr %_42.i, align 8, !alias.scope !34, !noalias !37
  %26 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_42.i, i64 0, i32 2
  store ptr %_46.i, ptr %26, align 8, !alias.scope !34, !noalias !37
  %27 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_42.i, i64 0, i32 2, i32 1
  store i64 1, ptr %27, align 8, !alias.scope !34, !noalias !37
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_42.i), !noalias !30
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_42.i), !noalias !16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_49.i), !noalias !16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_46.i), !noalias !16
  br label %_ZN12String_Slice3src7slicing5slice17h752556f80c08330bE.exit

bb18.i:                                           ; preds = %bb11.i
  %_31.not.i = icmp ugt i32 %_21.i, %start1.0.i
  br i1 %_31.not.i, label %bb24.i, label %bb19.i

bb15.i:                                           ; preds = %bb11.i
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_29.i), !noalias !16
  %28 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_29.i, i64 0, i32 1
  store ptr @alloc_c7271114f47fcfcb14f0fbd0dbdf3fd7, ptr %28, align 8, !alias.scope !39, !noalias !42
  %29 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_29.i, i64 0, i32 1, i32 1
  store i64 1, ptr %29, align 8, !alias.scope !39, !noalias !42
  store ptr null, ptr %_29.i, align 8, !alias.scope !39, !noalias !42
  %30 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_29.i, i64 0, i32 2
  store ptr @alloc_513570631223a12912d85da2bec3b15a, ptr %30, align 8, !alias.scope !39, !noalias !42
  %31 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_29.i, i64 0, i32 2, i32 1
  store i64 0, ptr %31, align 8, !alias.scope !39, !noalias !42
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_29.i), !noalias !16
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_29.i), !noalias !16
  br label %_ZN12String_Slice3src7slicing5slice17h752556f80c08330bE.exit

bb19.i:                                           ; preds = %bb18.i
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_35.i), !noalias !16
  %32 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_35.i, i64 0, i32 1
  store ptr @alloc_4ea1e5cc66308f949258b397434ad273, ptr %32, align 8, !alias.scope !44, !noalias !47
  %33 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_35.i, i64 0, i32 1, i32 1
  store i64 1, ptr %33, align 8, !alias.scope !44, !noalias !47
  store ptr null, ptr %_35.i, align 8, !alias.scope !44, !noalias !47
  %34 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_35.i, i64 0, i32 2
  store ptr @alloc_513570631223a12912d85da2bec3b15a, ptr %34, align 8, !alias.scope !44, !noalias !47
  %35 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_35.i, i64 0, i32 2, i32 1
  store i64 0, ptr %35, align 8, !alias.scope !44, !noalias !47
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_35.i), !noalias !16
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_35.i), !noalias !16
  br label %_ZN12String_Slice3src7slicing5slice17h752556f80c08330bE.exit

_ZN12String_Slice3src7slicing5slice17h752556f80c08330bE.exit: ; preds = %bb19.i, %bb15.i, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$5index17hf7cca2bc50785237E.exit.i", %bb5.i
  %.1.i = phi i32 [ 0, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$5index17hf7cca2bc50785237E.exit.i" ], [ 1, %bb15.i ], [ 1, %bb19.i ], [ 1, %bb5.i ]
  ret i32 %.1.i
}

; Function Attrs: nonlazybind uwtable
declare noundef i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef readonly dereferenceable(48)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core3str16slice_error_fail17h696d29a1b388d0feE(ptr noalias noundef nonnull readonly align 1, i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 dereferenceable(24)) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3ec29c169e7b8165E"(ptr noalias nocapture noundef readonly align 8 dereferenceable(16) %self, ptr noalias noundef align 8 dereferenceable(64) %f) unnamed_addr #0 {
start:
  %_3.0 = load ptr, ptr %self, align 8, !nonnull !6, !align !7, !noundef !6
  %0 = getelementptr inbounds { ptr, i64 }, ptr %self, i64 0, i32 1
  %_3.1 = load i64, ptr %0, align 8, !noundef !6
  %1 = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h3810e0e68cb69985E"(ptr noalias noundef nonnull readonly align 1 %_3.0, i64 noundef %_3.1, ptr noalias noundef nonnull align 8 dereferenceable(64) %f)
  ret i1 %1
}

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h3810e0e68cb69985E"(ptr noalias noundef nonnull readonly align 1, i64 noundef, ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @"_ZN4core3ptr48drop_in_place$LT$core..str..error..Utf8Error$GT$17h03847cd5a84caca1E"(ptr nocapture readnone %_1) unnamed_addr #6 {
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
!3 = distinct !{!3, !4, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17ha9bb60536e5344c1E: %self"}
!4 = distinct !{!4, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17ha9bb60536e5344c1E"}
!5 = !{i64 0, i64 2}
!6 = !{}
!7 = !{i64 1}
!8 = !{!9}
!9 = distinct !{!9, !10, !"_ZN12String_Slice3src7slicing5slice17h752556f80c08330bE: %mystr.0"}
!10 = distinct !{!10, !"_ZN12String_Slice3src7slicing5slice17h752556f80c08330bE"}
!11 = !{!12}
!12 = distinct !{!12, !10, !"_ZN12String_Slice3src7slicing5slice17h752556f80c08330bE: argument 1"}
!13 = !{!14}
!14 = distinct !{!14, !10, !"_ZN12String_Slice3src7slicing5slice17h752556f80c08330bE: argument 2"}
!15 = !{!9, !14}
!16 = !{!9, !12, !14}
!17 = !{!18}
!18 = distinct !{!18, !19, !"_ZN4core3fmt9Arguments9new_const17h00a508d8cf4830ceE: argument 0"}
!19 = distinct !{!19, !"_ZN4core3fmt9Arguments9new_const17h00a508d8cf4830ceE"}
!20 = !{!21, !9, !12, !14}
!21 = distinct !{!21, !19, !"_ZN4core3fmt9Arguments9new_const17h00a508d8cf4830ceE: %pieces.0"}
!22 = !{!9, !12}
!23 = !{!24, !26, !28, !9}
!24 = distinct !{!24, !25, !"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h0d9ed69ee3a2c216E: %self.0"}
!25 = distinct !{!25, !"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h0d9ed69ee3a2c216E"}
!26 = distinct !{!26, !27, !"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h1ddea17ec99390eaE: %slice.0"}
!27 = distinct !{!27, !"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17h1ddea17ec99390eaE"}
!28 = distinct !{!28, !29, !"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$5index17hf7cca2bc50785237E: %slice.0"}
!29 = distinct !{!29, !"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$5index17hf7cca2bc50785237E"}
!30 = !{!12, !14}
!31 = !{!32, !26, !28, !9}
!32 = distinct !{!32, !33, !"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h0d9ed69ee3a2c216E: %self.0"}
!33 = distinct !{!33, !"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h0d9ed69ee3a2c216E"}
!34 = !{!35}
!35 = distinct !{!35, !36, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!36 = distinct !{!36, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!37 = !{!38, !9, !12, !14}
!38 = distinct !{!38, !36, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!39 = !{!40}
!40 = distinct !{!40, !41, !"_ZN4core3fmt9Arguments9new_const17h00a508d8cf4830ceE: argument 0"}
!41 = distinct !{!41, !"_ZN4core3fmt9Arguments9new_const17h00a508d8cf4830ceE"}
!42 = !{!43, !9, !12, !14}
!43 = distinct !{!43, !41, !"_ZN4core3fmt9Arguments9new_const17h00a508d8cf4830ceE: %pieces.0"}
!44 = !{!45}
!45 = distinct !{!45, !46, !"_ZN4core3fmt9Arguments9new_const17h00a508d8cf4830ceE: argument 0"}
!46 = distinct !{!46, !"_ZN4core3fmt9Arguments9new_const17h00a508d8cf4830ceE"}
!47 = !{!48, !9, !12, !14}
!48 = distinct !{!48, !46, !"_ZN4core3fmt9Arguments9new_const17h00a508d8cf4830ceE: %pieces.0"}
