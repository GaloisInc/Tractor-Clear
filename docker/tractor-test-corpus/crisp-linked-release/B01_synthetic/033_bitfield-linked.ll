; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"core::fmt::Arguments<'_>" = type { { ptr, i64 }, { ptr, i64 }, { ptr, i64 } }
%"src::driver::FooT" = type { [1 x i8], [3 x i8], i32 }

@alloc_ff9a1f397835f01a322da106b36df399 = private unnamed_addr constant <{ [93 x i8] }> <{ [93 x i8] c"/root/.cargo/registry/src/index.crates.io-6f17d22bba15001f/c2rust-bitfields-0.22.1/src/lib.rs" }>, align 1
@alloc_b835a52d9d28c49dbbe4b5ebce34e182 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_ff9a1f397835f01a322da106b36df399, [16 x i8] c"]\00\00\00\00\00\00\00g\00\00\00\18\00\00\00" }>, align 8
@alloc_c33b654961ffc45420e6faf171e7f4a1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_ff9a1f397835f01a322da106b36df399, [16 x i8] c"]\00\00\00\00\00\00\00X\00\00\00\01\00\00\00" }>, align 8
@alloc_513570631223a12912d85da2bec3b15a = private unnamed_addr constant <{}> zeroinitializer, align 8
@alloc_0242e8ee118de705af76c627590b82cc = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c" " }>, align 1
@alloc_49a1e817e911805af64bbc7efb390101 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc_44f85c7ec7194e1371c1c5a09cf95e43 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc_513570631223a12912d85da2bec3b15a, [8 x i8] zeroinitializer, ptr @alloc_0242e8ee118de705af76c627590b82cc, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @alloc_0242e8ee118de705af76c627590b82cc, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @alloc_0242e8ee118de705af76c627590b82cc, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @alloc_49a1e817e911805af64bbc7efb390101, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8

@"_ZN51_$LT$u64$u20$as$u20$c2rust_bitfields..FieldType$GT$7get_bit17h1f2f16b4330f877fE" = unnamed_addr alias i1 (ptr, i64), ptr @"_ZN51_$LT$i64$u20$as$u20$c2rust_bitfields..FieldType$GT$7get_bit17hfb24d5368e87b8f7E"
@"_ZN50_$LT$u8$u20$as$u20$c2rust_bitfields..FieldType$GT$7get_bit17h352c99ee4ad00d4dE" = unnamed_addr alias i1 (ptr, i64), ptr @"_ZN50_$LT$i8$u20$as$u20$c2rust_bitfields..FieldType$GT$7get_bit17hc0bdbfbb187cda06E"
@"_ZN51_$LT$u16$u20$as$u20$c2rust_bitfields..FieldType$GT$7get_bit17h06041f5fda0a5b04E" = unnamed_addr alias i1 (ptr, i64), ptr @"_ZN51_$LT$i16$u20$as$u20$c2rust_bitfields..FieldType$GT$7get_bit17h854fdb84ad185ab6E"
@"_ZN51_$LT$u32$u20$as$u20$c2rust_bitfields..FieldType$GT$7get_bit17h1c9277b6e7ccdbe2E" = unnamed_addr alias i1 (ptr, i64), ptr @"_ZN51_$LT$i32$u20$as$u20$c2rust_bitfields..FieldType$GT$7get_bit17h5c762011980b0eacE"
@"_ZN52_$LT$u128$u20$as$u20$c2rust_bitfields..FieldType$GT$7get_bit17h323762b64e2db638E" = unnamed_addr alias i1 (ptr, i64), ptr @"_ZN52_$LT$i128$u20$as$u20$c2rust_bitfields..FieldType$GT$7get_bit17h4e096f8a23fcf8e7E"

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN16c2rust_bitfields9FieldType9set_field8zero_bit17h7fa6155a4bb2137cE(ptr noalias nocapture noundef align 1 dereferenceable(1) %byte, i64 noundef %n_bit) unnamed_addr #0 {
start:
  %0 = trunc i64 %n_bit to i32
  %1 = and i32 %0, 31
  %bit = shl nuw i32 1, %1
  %2 = trunc i32 %bit to i8
  %_4 = xor i8 %2, -1
  %3 = load i8, ptr %byte, align 1, !noundef !2
  %4 = and i8 %3, %_4
  store i8 %4, ptr %byte, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN16c2rust_bitfields9FieldType9set_field7one_bit17h6dbe7e552c531ee5E(ptr noalias nocapture noundef align 1 dereferenceable(1) %byte, i64 noundef %n_bit) unnamed_addr #0 {
start:
  %0 = trunc i64 %n_bit to i32
  %1 = and i32 %0, 31
  %bit = shl nuw i32 1, %1
  %_4 = trunc i32 %bit to i8
  %2 = load i8, ptr %byte, align 1, !noundef !2
  %3 = or i8 %2, %_4
  store i8 %3, ptr %byte, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @"_ZN52_$LT$bool$u20$as$u20$c2rust_bitfields..FieldType$GT$7get_bit17hd4efaf77a8d4fb42E"(ptr noalias nocapture noundef readonly align 1 dereferenceable(1) %self, i64 noundef %_bit) unnamed_addr #1 {
start:
  %0 = load i8, ptr %self, align 1, !range !3, !noundef !2
  %1 = icmp ne i8 %0, 0
  ret i1 %1
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN52_$LT$bool$u20$as$u20$c2rust_bitfields..FieldType$GT$9get_field17h8581ee11ca910943E"(ptr noalias nocapture noundef nonnull readonly align 1 %field.0, i64 noundef %field.1, i64 noundef %bit_range.0, i64 noundef %bit_range.1) unnamed_addr #2 {
start:
  %.not.i9 = icmp ugt i64 %bit_range.0, %bit_range.1
  br i1 %.not.i9, label %bb4, label %bb2.i

bb2.i:                                            ; preds = %bb5, %start
  %.011 = phi i8 [ %spec.select, %bb5 ], [ 0, %start ]
  %iter.sroa.0.010 = phi i64 [ %spec.select7, %bb5 ], [ %bit_range.0, %start ]
  %byte_index1 = lshr i64 %iter.sroa.0.010, 3
  %_14 = icmp ult i64 %byte_index1, %field.1
  br i1 %_14, label %bb5, label %panic, !prof !4

bb4.loopexit:                                     ; preds = %bb5
  %0 = and i8 %spec.select, 1
  %1 = icmp ne i8 %0, 0
  br label %bb4

bb4:                                              ; preds = %bb4.loopexit, %start
  %.0.lcssa = phi i1 [ false, %start ], [ %1, %bb4.loopexit ]
  ret i1 %.0.lcssa

bb5:                                              ; preds = %bb2.i
  %2 = icmp uge i64 %iter.sroa.0.010, %bit_range.1
  %not. = xor i1 %2, true
  %3 = zext i1 %not. to i64
  %spec.select7 = add nuw i64 %iter.sroa.0.010, %3
  %4 = getelementptr inbounds [0 x i8], ptr %field.0, i64 0, i64 %byte_index1
  %byte = load i8, ptr %4, align 1, !noundef !2
  %5 = trunc i64 %iter.sroa.0.010 to i8
  %6 = and i8 %5, 7
  %bit = shl nuw i8 1, %6
  %read_bit = and i8 %byte, %bit
  %7 = icmp eq i8 %read_bit, 0
  %spec.select = select i1 %7, i8 %.011, i8 1
  %.not.i = icmp ugt i64 %spec.select7, %bit_range.1
  %or.cond = select i1 %2, i1 true, i1 %.not.i
  br i1 %or.cond, label %bb4.loopexit, label %bb2.i

panic:                                            ; preds = %bb2.i
  tail call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 noundef %byte_index1, i64 noundef %field.1, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_b835a52d9d28c49dbbe4b5ebce34e182) #5
  unreachable
}

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
define noundef i8 @"_ZN50_$LT$u8$u20$as$u20$c2rust_bitfields..FieldType$GT$9get_field17hef5d3f1b12e56d3eE"(ptr noalias nocapture noundef nonnull readonly align 1 %field.0, i64 noundef %field.1, i64 noundef %bit_range.0, i64 noundef %bit_range.1) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %.not.i.i.i14 = icmp ugt i64 %bit_range.0, %bit_range.1
  br i1 %.not.i.i.i14, label %bb5, label %bb2.i.i.i

bb2.i.i.i:                                        ; preds = %bb6, %start
  %.017 = phi i8 [ %.1, %bb6 ], [ 0, %start ]
  %iter.sroa.5.016 = phi i64 [ %spec.select, %bb6 ], [ %bit_range.0, %start ]
  %iter.sroa.0.015 = phi i8 [ %_9.0.i, %bb6 ], [ 0, %start ]
  %byte_index3 = lshr i64 %iter.sroa.5.016, 3
  %_17 = icmp ult i64 %byte_index3, %field.1
  br i1 %_17, label %bb6, label %panic, !prof !4

bb5:                                              ; preds = %bb6, %start
  %.0.lcssa = phi i8 [ 0, %start ], [ %.1, %bb6 ]
  ret i8 %.0.lcssa

bb6:                                              ; preds = %bb2.i.i.i
  %_9.0.i = add i8 %iter.sroa.0.015, 1
  %0 = icmp ult i64 %iter.sroa.5.016, %bit_range.1
  %1 = zext i1 %0 to i64
  %spec.select = add nuw i64 %iter.sroa.5.016, %1
  %2 = getelementptr inbounds [0 x i8], ptr %field.0, i64 0, i64 %byte_index3
  %byte = load i8, ptr %2, align 1, !noundef !2
  %3 = trunc i64 %iter.sroa.5.016 to i8
  %4 = and i8 %3, 7
  %bit = shl nuw i8 1, %4
  %read_bit = and i8 %byte, %bit
  %5 = icmp eq i8 %read_bit, 0
  %6 = and i8 %iter.sroa.0.015, 7
  %write_bit = shl nuw i8 1, %6
  %7 = select i1 %5, i8 0, i8 %write_bit
  %.1 = or i8 %7, %.017
  %.not.i.i.i = icmp ule i64 %spec.select, %bit_range.1
  %or.cond.not = select i1 %0, i1 %.not.i.i.i, i1 false
  br i1 %or.cond.not, label %bb2.i.i.i, label %bb5

panic:                                            ; preds = %bb2.i.i.i
  tail call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 noundef %byte_index3, i64 noundef %field.1, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_c33b654961ffc45420e6faf171e7f4a1) #5
  unreachable
}

; Function Attrs: nonlazybind uwtable
declare noundef i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
define noundef i16 @"_ZN51_$LT$u16$u20$as$u20$c2rust_bitfields..FieldType$GT$9get_field17hdbd42cb98d31ddc1E"(ptr noalias nocapture noundef nonnull readonly align 1 %field.0, i64 noundef %field.1, i64 noundef %bit_range.0, i64 noundef %bit_range.1) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %.not.i.i.i14 = icmp ugt i64 %bit_range.0, %bit_range.1
  br i1 %.not.i.i.i14, label %bb5, label %bb2.i.i.i

bb2.i.i.i:                                        ; preds = %bb6, %start
  %.017 = phi i16 [ %.1, %bb6 ], [ 0, %start ]
  %iter.sroa.5.016 = phi i64 [ %spec.select, %bb6 ], [ %bit_range.0, %start ]
  %iter.sroa.0.015 = phi i16 [ %_9.0.i, %bb6 ], [ 0, %start ]
  %byte_index3 = lshr i64 %iter.sroa.5.016, 3
  %_17 = icmp ult i64 %byte_index3, %field.1
  br i1 %_17, label %bb6, label %panic, !prof !4

bb5:                                              ; preds = %bb6, %start
  %.0.lcssa = phi i16 [ 0, %start ], [ %.1, %bb6 ]
  ret i16 %.0.lcssa

bb6:                                              ; preds = %bb2.i.i.i
  %_9.0.i = add i16 %iter.sroa.0.015, 1
  %0 = icmp ult i64 %iter.sroa.5.016, %bit_range.1
  %1 = zext i1 %0 to i64
  %spec.select = add nuw i64 %iter.sroa.5.016, %1
  %2 = getelementptr inbounds [0 x i8], ptr %field.0, i64 0, i64 %byte_index3
  %byte = load i8, ptr %2, align 1, !noundef !2
  %3 = trunc i64 %iter.sroa.5.016 to i8
  %4 = and i8 %3, 7
  %bit = shl nuw i8 1, %4
  %read_bit = and i8 %byte, %bit
  %5 = icmp eq i8 %read_bit, 0
  %6 = and i16 %iter.sroa.0.015, 15
  %write_bit = shl nuw i16 1, %6
  %7 = select i1 %5, i16 0, i16 %write_bit
  %.1 = or i16 %7, %.017
  %.not.i.i.i = icmp ule i64 %spec.select, %bit_range.1
  %or.cond.not = select i1 %0, i1 %.not.i.i.i, i1 false
  br i1 %or.cond.not, label %bb2.i.i.i, label %bb5

panic:                                            ; preds = %bb2.i.i.i
  tail call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 noundef %byte_index3, i64 noundef %field.1, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_c33b654961ffc45420e6faf171e7f4a1) #5
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @"_ZN51_$LT$u32$u20$as$u20$c2rust_bitfields..FieldType$GT$9get_field17h2c53c5358f59249cE"(ptr noalias nocapture noundef nonnull readonly align 1 %field.0, i64 noundef %field.1, i64 noundef %bit_range.0, i64 noundef %bit_range.1) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %.not.i.i.i14 = icmp ugt i64 %bit_range.0, %bit_range.1
  br i1 %.not.i.i.i14, label %bb5, label %bb2.i.i.i

bb2.i.i.i:                                        ; preds = %bb6, %start
  %.017 = phi i32 [ %.1, %bb6 ], [ 0, %start ]
  %iter.sroa.5.016 = phi i64 [ %spec.select, %bb6 ], [ %bit_range.0, %start ]
  %iter.sroa.0.015 = phi i32 [ %_9.0.i, %bb6 ], [ 0, %start ]
  %byte_index3 = lshr i64 %iter.sroa.5.016, 3
  %_17 = icmp ult i64 %byte_index3, %field.1
  br i1 %_17, label %bb6, label %panic, !prof !4

bb5:                                              ; preds = %bb6, %start
  %.0.lcssa = phi i32 [ 0, %start ], [ %.1, %bb6 ]
  ret i32 %.0.lcssa

bb6:                                              ; preds = %bb2.i.i.i
  %_9.0.i = add i32 %iter.sroa.0.015, 1
  %0 = icmp ult i64 %iter.sroa.5.016, %bit_range.1
  %1 = zext i1 %0 to i64
  %spec.select = add nuw i64 %iter.sroa.5.016, %1
  %2 = getelementptr inbounds [0 x i8], ptr %field.0, i64 0, i64 %byte_index3
  %byte = load i8, ptr %2, align 1, !noundef !2
  %3 = trunc i64 %iter.sroa.5.016 to i8
  %4 = and i8 %3, 7
  %bit = shl nuw i8 1, %4
  %read_bit = and i8 %byte, %bit
  %5 = icmp eq i8 %read_bit, 0
  %6 = and i32 %iter.sroa.0.015, 31
  %write_bit = shl nuw i32 1, %6
  %7 = select i1 %5, i32 0, i32 %write_bit
  %.1 = or i32 %7, %.017
  %.not.i.i.i = icmp ule i64 %spec.select, %bit_range.1
  %or.cond.not = select i1 %0, i1 %.not.i.i.i, i1 false
  br i1 %or.cond.not, label %bb2.i.i.i, label %bb5

panic:                                            ; preds = %bb2.i.i.i
  tail call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 noundef %byte_index3, i64 noundef %field.1, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_c33b654961ffc45420e6faf171e7f4a1) #5
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @"_ZN51_$LT$u64$u20$as$u20$c2rust_bitfields..FieldType$GT$9get_field17h3c25848b0d50f9a6E"(ptr noalias nocapture noundef nonnull readonly align 1 %field.0, i64 noundef %field.1, i64 noundef %bit_range.0, i64 noundef %bit_range.1) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %.not.i.i.i14 = icmp ugt i64 %bit_range.0, %bit_range.1
  br i1 %.not.i.i.i14, label %bb5, label %bb2.i.i.i

bb2.i.i.i:                                        ; preds = %bb6, %start
  %.017 = phi i64 [ %.1, %bb6 ], [ 0, %start ]
  %iter.sroa.5.016 = phi i64 [ %spec.select, %bb6 ], [ %bit_range.0, %start ]
  %iter.sroa.0.015 = phi i64 [ %_9.0.i, %bb6 ], [ 0, %start ]
  %byte_index3 = lshr i64 %iter.sroa.5.016, 3
  %_17 = icmp ult i64 %byte_index3, %field.1
  br i1 %_17, label %bb6, label %panic, !prof !4

bb5:                                              ; preds = %bb6, %start
  %.0.lcssa = phi i64 [ 0, %start ], [ %.1, %bb6 ]
  ret i64 %.0.lcssa

bb6:                                              ; preds = %bb2.i.i.i
  %_9.0.i = add i64 %iter.sroa.0.015, 1
  %0 = icmp ult i64 %iter.sroa.5.016, %bit_range.1
  %1 = zext i1 %0 to i64
  %spec.select = add nuw i64 %iter.sroa.5.016, %1
  %2 = getelementptr inbounds [0 x i8], ptr %field.0, i64 0, i64 %byte_index3
  %byte = load i8, ptr %2, align 1, !noundef !2
  %3 = trunc i64 %iter.sroa.5.016 to i8
  %4 = and i8 %3, 7
  %bit = shl nuw i8 1, %4
  %read_bit = and i8 %byte, %bit
  %5 = icmp eq i8 %read_bit, 0
  %6 = and i64 %iter.sroa.0.015, 63
  %write_bit = shl nuw i64 1, %6
  %7 = select i1 %5, i64 0, i64 %write_bit
  %.1 = or i64 %7, %.017
  %.not.i.i.i = icmp ule i64 %spec.select, %bit_range.1
  %or.cond.not = select i1 %0, i1 %.not.i.i.i, i1 false
  br i1 %or.cond.not, label %bb2.i.i.i, label %bb5

panic:                                            ; preds = %bb2.i.i.i
  tail call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 noundef %byte_index3, i64 noundef %field.1, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_c33b654961ffc45420e6faf171e7f4a1) #5
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef i128 @"_ZN52_$LT$u128$u20$as$u20$c2rust_bitfields..FieldType$GT$9get_field17h3c95c59ce7be2cddE"(ptr noalias nocapture noundef nonnull readonly align 1 %field.0, i64 noundef %field.1, i64 noundef %bit_range.0, i64 noundef %bit_range.1) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %.not.i.i.i14 = icmp ugt i64 %bit_range.0, %bit_range.1
  br i1 %.not.i.i.i14, label %bb5, label %bb2.i.i.i

bb2.i.i.i:                                        ; preds = %bb6, %start
  %.017 = phi i128 [ %.1, %bb6 ], [ 0, %start ]
  %iter.sroa.5.016 = phi i64 [ %spec.select, %bb6 ], [ %bit_range.0, %start ]
  %iter.sroa.0.015 = phi i64 [ %_9.0.i, %bb6 ], [ 0, %start ]
  %byte_index3 = lshr i64 %iter.sroa.5.016, 3
  %_17 = icmp ult i64 %byte_index3, %field.1
  br i1 %_17, label %bb6, label %panic, !prof !4

bb5:                                              ; preds = %bb6, %start
  %.0.lcssa = phi i128 [ 0, %start ], [ %.1, %bb6 ]
  ret i128 %.0.lcssa

bb6:                                              ; preds = %bb2.i.i.i
  %_9.0.i = add i64 %iter.sroa.0.015, 1
  %0 = icmp ult i64 %iter.sroa.5.016, %bit_range.1
  %1 = zext i1 %0 to i64
  %spec.select = add nuw i64 %iter.sroa.5.016, %1
  %2 = getelementptr inbounds [0 x i8], ptr %field.0, i64 0, i64 %byte_index3
  %byte = load i8, ptr %2, align 1, !noundef !2
  %3 = trunc i64 %iter.sroa.5.016 to i8
  %4 = and i8 %3, 7
  %bit = shl nuw i8 1, %4
  %read_bit = and i8 %byte, %bit
  %5 = icmp eq i8 %read_bit, 0
  %6 = and i64 %iter.sroa.0.015, 127
  %7 = zext i64 %6 to i128
  %write_bit = shl nuw i128 1, %7
  %8 = select i1 %5, i128 0, i128 %write_bit
  %.1 = or i128 %8, %.017
  %.not.i.i.i = icmp ule i64 %spec.select, %bit_range.1
  %or.cond.not = select i1 %0, i1 %.not.i.i.i, i1 false
  br i1 %or.cond.not, label %bb2.i.i.i, label %bb5

panic:                                            ; preds = %bb2.i.i.i
  tail call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 noundef %byte_index3, i64 noundef %field.1, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_c33b654961ffc45420e6faf171e7f4a1) #5
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @"_ZN50_$LT$i8$u20$as$u20$c2rust_bitfields..FieldType$GT$7get_bit17hc0bdbfbb187cda06E"(ptr noalias nocapture noundef readonly align 1 dereferenceable(1) %self, i64 noundef %bit) unnamed_addr #1 {
start:
  %_5 = load i8, ptr %self, align 1, !noundef !2
  %0 = trunc i64 %bit to i8
  %1 = and i8 %0, 7
  %2 = shl nuw i8 1, %1
  %3 = and i8 %_5, %2
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: nonlazybind uwtable
define noundef i8 @"_ZN50_$LT$i8$u20$as$u20$c2rust_bitfields..FieldType$GT$9get_field17h55b42f171fef7283E"(ptr noalias nocapture noundef nonnull readonly align 1 %field.0, i64 noundef %field.1, i64 noundef %bit_range.0, i64 noundef %bit_range.1) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %.not.i.i.i16 = icmp ugt i64 %bit_range.0, %bit_range.1
  br i1 %.not.i.i.i16, label %bb5, label %bb2.i.i.i

bb2.i.i.i:                                        ; preds = %bb6, %start
  %.019 = phi i8 [ %.1, %bb6 ], [ 0, %start ]
  %iter.sroa.5.018 = phi i64 [ %spec.select, %bb6 ], [ %bit_range.0, %start ]
  %iter.sroa.0.017 = phi i8 [ %_9.0.i, %bb6 ], [ 0, %start ]
  %byte_index5 = lshr i64 %iter.sroa.5.018, 3
  %_17 = icmp ult i64 %byte_index5, %field.1
  br i1 %_17, label %bb6, label %panic, !prof !4

bb5:                                              ; preds = %bb6, %start
  %.0.lcssa = phi i8 [ 0, %start ], [ %.1, %bb6 ]
  %_23.neg = sub i64 %bit_range.0, %bit_range.1
  %0 = trunc i64 %_23.neg to i8
  %1 = add i8 %0, 7
  %2 = and i8 %1, 7
  %3 = shl i8 %.0.lcssa, %2
  %4 = ashr i8 %3, %2
  ret i8 %4

bb6:                                              ; preds = %bb2.i.i.i
  %_9.0.i = add i8 %iter.sroa.0.017, 1
  %5 = icmp ult i64 %iter.sroa.5.018, %bit_range.1
  %6 = zext i1 %5 to i64
  %spec.select = add nuw i64 %iter.sroa.5.018, %6
  %7 = getelementptr inbounds [0 x i8], ptr %field.0, i64 0, i64 %byte_index5
  %byte = load i8, ptr %7, align 1, !noundef !2
  %8 = trunc i64 %iter.sroa.5.018 to i8
  %9 = and i8 %8, 7
  %bit = shl nuw i8 1, %9
  %read_bit = and i8 %byte, %bit
  %10 = icmp eq i8 %read_bit, 0
  %11 = and i8 %iter.sroa.0.017, 7
  %write_bit = shl nuw i8 1, %11
  %12 = select i1 %10, i8 0, i8 %write_bit
  %.1 = or i8 %12, %.019
  %.not.i.i.i = icmp ule i64 %spec.select, %bit_range.1
  %or.cond.not = select i1 %5, i1 %.not.i.i.i, i1 false
  br i1 %or.cond.not, label %bb2.i.i.i, label %bb5

panic:                                            ; preds = %bb2.i.i.i
  tail call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 noundef %byte_index5, i64 noundef %field.1, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_c33b654961ffc45420e6faf171e7f4a1) #5
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @"_ZN51_$LT$i16$u20$as$u20$c2rust_bitfields..FieldType$GT$7get_bit17h854fdb84ad185ab6E"(ptr noalias nocapture noundef readonly align 2 dereferenceable(2) %self, i64 noundef %bit) unnamed_addr #1 {
start:
  %_5 = load i16, ptr %self, align 2, !noundef !2
  %0 = trunc i64 %bit to i16
  %1 = and i16 %0, 15
  %2 = shl nuw i16 1, %1
  %3 = and i16 %_5, %2
  %4 = icmp ne i16 %3, 0
  ret i1 %4
}

; Function Attrs: nonlazybind uwtable
define noundef i16 @"_ZN51_$LT$i16$u20$as$u20$c2rust_bitfields..FieldType$GT$9get_field17hf45a019258fd6ca0E"(ptr noalias nocapture noundef nonnull readonly align 1 %field.0, i64 noundef %field.1, i64 noundef %bit_range.0, i64 noundef %bit_range.1) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %.not.i.i.i16 = icmp ugt i64 %bit_range.0, %bit_range.1
  br i1 %.not.i.i.i16, label %bb5, label %bb2.i.i.i

bb2.i.i.i:                                        ; preds = %bb6, %start
  %.019 = phi i16 [ %.1, %bb6 ], [ 0, %start ]
  %iter.sroa.5.018 = phi i64 [ %spec.select, %bb6 ], [ %bit_range.0, %start ]
  %iter.sroa.0.017 = phi i16 [ %_9.0.i, %bb6 ], [ 0, %start ]
  %byte_index5 = lshr i64 %iter.sroa.5.018, 3
  %_17 = icmp ult i64 %byte_index5, %field.1
  br i1 %_17, label %bb6, label %panic, !prof !4

bb5:                                              ; preds = %bb6, %start
  %.0.lcssa = phi i16 [ 0, %start ], [ %.1, %bb6 ]
  %_23.neg = sub i64 %bit_range.0, %bit_range.1
  %0 = trunc i64 %_23.neg to i16
  %1 = add i16 %0, 15
  %2 = and i16 %1, 15
  %3 = shl i16 %.0.lcssa, %2
  %4 = ashr i16 %3, %2
  ret i16 %4

bb6:                                              ; preds = %bb2.i.i.i
  %_9.0.i = add i16 %iter.sroa.0.017, 1
  %5 = icmp ult i64 %iter.sroa.5.018, %bit_range.1
  %6 = zext i1 %5 to i64
  %spec.select = add nuw i64 %iter.sroa.5.018, %6
  %7 = getelementptr inbounds [0 x i8], ptr %field.0, i64 0, i64 %byte_index5
  %byte = load i8, ptr %7, align 1, !noundef !2
  %8 = trunc i64 %iter.sroa.5.018 to i8
  %9 = and i8 %8, 7
  %bit = shl nuw i8 1, %9
  %read_bit = and i8 %byte, %bit
  %10 = icmp eq i8 %read_bit, 0
  %11 = and i16 %iter.sroa.0.017, 15
  %write_bit = shl nuw i16 1, %11
  %12 = select i1 %10, i16 0, i16 %write_bit
  %.1 = or i16 %12, %.019
  %.not.i.i.i = icmp ule i64 %spec.select, %bit_range.1
  %or.cond.not = select i1 %5, i1 %.not.i.i.i, i1 false
  br i1 %or.cond.not, label %bb2.i.i.i, label %bb5

panic:                                            ; preds = %bb2.i.i.i
  tail call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 noundef %byte_index5, i64 noundef %field.1, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_c33b654961ffc45420e6faf171e7f4a1) #5
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @"_ZN51_$LT$i32$u20$as$u20$c2rust_bitfields..FieldType$GT$7get_bit17h5c762011980b0eacE"(ptr noalias nocapture noundef readonly align 4 dereferenceable(4) %self, i64 noundef %bit) unnamed_addr #1 {
start:
  %_5 = load i32, ptr %self, align 4, !noundef !2
  %0 = trunc i64 %bit to i32
  %1 = and i32 %0, 31
  %2 = shl nuw i32 1, %1
  %3 = and i32 %_5, %2
  %4 = icmp ne i32 %3, 0
  ret i1 %4
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @"_ZN51_$LT$i32$u20$as$u20$c2rust_bitfields..FieldType$GT$9get_field17h0a37dae28c623587E"(ptr noalias nocapture noundef nonnull readonly align 1 %field.0, i64 noundef %field.1, i64 noundef %bit_range.0, i64 noundef %bit_range.1) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %.not.i.i.i16 = icmp ugt i64 %bit_range.0, %bit_range.1
  br i1 %.not.i.i.i16, label %bb5, label %bb2.i.i.i

bb2.i.i.i:                                        ; preds = %bb6, %start
  %.019 = phi i32 [ %.1, %bb6 ], [ 0, %start ]
  %iter.sroa.5.018 = phi i64 [ %spec.select, %bb6 ], [ %bit_range.0, %start ]
  %iter.sroa.0.017 = phi i32 [ %_9.0.i, %bb6 ], [ 0, %start ]
  %byte_index5 = lshr i64 %iter.sroa.5.018, 3
  %_17 = icmp ult i64 %byte_index5, %field.1
  br i1 %_17, label %bb6, label %panic, !prof !4

bb5:                                              ; preds = %bb6, %start
  %.0.lcssa = phi i32 [ 0, %start ], [ %.1, %bb6 ]
  %_23.neg = sub i64 %bit_range.0, %bit_range.1
  %0 = trunc i64 %_23.neg to i32
  %1 = add i32 %0, 31
  %2 = and i32 %1, 31
  %3 = shl i32 %.0.lcssa, %2
  %4 = ashr i32 %3, %2
  ret i32 %4

bb6:                                              ; preds = %bb2.i.i.i
  %_9.0.i = add i32 %iter.sroa.0.017, 1
  %5 = icmp ult i64 %iter.sroa.5.018, %bit_range.1
  %6 = zext i1 %5 to i64
  %spec.select = add nuw i64 %iter.sroa.5.018, %6
  %7 = getelementptr inbounds [0 x i8], ptr %field.0, i64 0, i64 %byte_index5
  %byte = load i8, ptr %7, align 1, !noundef !2
  %8 = trunc i64 %iter.sroa.5.018 to i8
  %9 = and i8 %8, 7
  %bit = shl nuw i8 1, %9
  %read_bit = and i8 %byte, %bit
  %10 = icmp eq i8 %read_bit, 0
  %11 = and i32 %iter.sroa.0.017, 31
  %write_bit = shl nuw i32 1, %11
  %12 = select i1 %10, i32 0, i32 %write_bit
  %.1 = or i32 %12, %.019
  %.not.i.i.i = icmp ule i64 %spec.select, %bit_range.1
  %or.cond.not = select i1 %5, i1 %.not.i.i.i, i1 false
  br i1 %or.cond.not, label %bb2.i.i.i, label %bb5

panic:                                            ; preds = %bb2.i.i.i
  tail call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 noundef %byte_index5, i64 noundef %field.1, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_c33b654961ffc45420e6faf171e7f4a1) #5
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @"_ZN51_$LT$i64$u20$as$u20$c2rust_bitfields..FieldType$GT$7get_bit17hfb24d5368e87b8f7E"(ptr noalias nocapture noundef readonly align 8 dereferenceable(8) %self, i64 noundef %bit) unnamed_addr #1 {
start:
  %_5 = load i64, ptr %self, align 8, !noundef !2
  %0 = and i64 %bit, 63
  %1 = shl nuw i64 1, %0
  %2 = and i64 %_5, %1
  %3 = icmp ne i64 %2, 0
  ret i1 %3
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @"_ZN51_$LT$i64$u20$as$u20$c2rust_bitfields..FieldType$GT$9get_field17h4691ecd735300fdaE"(ptr noalias nocapture noundef nonnull readonly align 1 %field.0, i64 noundef %field.1, i64 noundef %bit_range.0, i64 noundef %bit_range.1) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %.not.i.i.i16 = icmp ugt i64 %bit_range.0, %bit_range.1
  br i1 %.not.i.i.i16, label %bb5, label %bb2.i.i.i

bb2.i.i.i:                                        ; preds = %bb6, %start
  %.019 = phi i64 [ %.1, %bb6 ], [ 0, %start ]
  %iter.sroa.5.018 = phi i64 [ %spec.select, %bb6 ], [ %bit_range.0, %start ]
  %iter.sroa.0.017 = phi i64 [ %_9.0.i, %bb6 ], [ 0, %start ]
  %byte_index5 = lshr i64 %iter.sroa.5.018, 3
  %_17 = icmp ult i64 %byte_index5, %field.1
  br i1 %_17, label %bb6, label %panic, !prof !4

bb5:                                              ; preds = %bb6, %start
  %.0.lcssa = phi i64 [ 0, %start ], [ %.1, %bb6 ]
  %_23.neg = add i64 %bit_range.0, 63
  %unused_bits = sub i64 %_23.neg, %bit_range.1
  %0 = and i64 %unused_bits, 63
  %1 = shl i64 %.0.lcssa, %0
  %2 = ashr i64 %1, %0
  ret i64 %2

bb6:                                              ; preds = %bb2.i.i.i
  %_9.0.i = add i64 %iter.sroa.0.017, 1
  %3 = icmp ult i64 %iter.sroa.5.018, %bit_range.1
  %4 = zext i1 %3 to i64
  %spec.select = add nuw i64 %iter.sroa.5.018, %4
  %5 = getelementptr inbounds [0 x i8], ptr %field.0, i64 0, i64 %byte_index5
  %byte = load i8, ptr %5, align 1, !noundef !2
  %6 = trunc i64 %iter.sroa.5.018 to i8
  %7 = and i8 %6, 7
  %bit = shl nuw i8 1, %7
  %read_bit = and i8 %byte, %bit
  %8 = icmp eq i8 %read_bit, 0
  %9 = and i64 %iter.sroa.0.017, 63
  %write_bit = shl nuw i64 1, %9
  %10 = select i1 %8, i64 0, i64 %write_bit
  %.1 = or i64 %10, %.019
  %.not.i.i.i = icmp ule i64 %spec.select, %bit_range.1
  %or.cond.not = select i1 %3, i1 %.not.i.i.i, i1 false
  br i1 %or.cond.not, label %bb2.i.i.i, label %bb5

panic:                                            ; preds = %bb2.i.i.i
  tail call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 noundef %byte_index5, i64 noundef %field.1, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_c33b654961ffc45420e6faf171e7f4a1) #5
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @"_ZN52_$LT$i128$u20$as$u20$c2rust_bitfields..FieldType$GT$7get_bit17h4e096f8a23fcf8e7E"(ptr noalias nocapture noundef readonly align 8 dereferenceable(16) %self, i64 noundef %bit) unnamed_addr #1 {
start:
  %_5 = load i128, ptr %self, align 8, !noundef !2
  %0 = and i64 %bit, 127
  %1 = zext i64 %0 to i128
  %2 = shl nuw i128 1, %1
  %3 = and i128 %_5, %2
  %4 = icmp ne i128 %3, 0
  ret i1 %4
}

; Function Attrs: nonlazybind uwtable
define noundef i128 @"_ZN52_$LT$i128$u20$as$u20$c2rust_bitfields..FieldType$GT$9get_field17hed13146ff9e5be73E"(ptr noalias nocapture noundef nonnull readonly align 1 %field.0, i64 noundef %field.1, i64 noundef %bit_range.0, i64 noundef %bit_range.1) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %.not.i.i.i16 = icmp ugt i64 %bit_range.0, %bit_range.1
  br i1 %.not.i.i.i16, label %bb5, label %bb2.i.i.i

bb2.i.i.i:                                        ; preds = %bb6, %start
  %.019 = phi i128 [ %.1, %bb6 ], [ 0, %start ]
  %iter.sroa.5.018 = phi i64 [ %spec.select, %bb6 ], [ %bit_range.0, %start ]
  %iter.sroa.0.017 = phi i64 [ %_9.0.i, %bb6 ], [ 0, %start ]
  %byte_index5 = lshr i64 %iter.sroa.5.018, 3
  %_17 = icmp ult i64 %byte_index5, %field.1
  br i1 %_17, label %bb6, label %panic, !prof !4

bb5:                                              ; preds = %bb6, %start
  %.0.lcssa = phi i128 [ 0, %start ], [ %.1, %bb6 ]
  %_23.neg = add i64 %bit_range.0, 127
  %unused_bits = sub i64 %_23.neg, %bit_range.1
  %0 = and i64 %unused_bits, 127
  %1 = zext i64 %0 to i128
  %2 = shl i128 %.0.lcssa, %1
  %3 = ashr i128 %2, %1
  ret i128 %3

bb6:                                              ; preds = %bb2.i.i.i
  %_9.0.i = add i64 %iter.sroa.0.017, 1
  %4 = icmp ult i64 %iter.sroa.5.018, %bit_range.1
  %5 = zext i1 %4 to i64
  %spec.select = add nuw i64 %iter.sroa.5.018, %5
  %6 = getelementptr inbounds [0 x i8], ptr %field.0, i64 0, i64 %byte_index5
  %byte = load i8, ptr %6, align 1, !noundef !2
  %7 = trunc i64 %iter.sroa.5.018 to i8
  %8 = and i8 %7, 7
  %bit = shl nuw i8 1, %8
  %read_bit = and i8 %byte, %bit
  %9 = icmp eq i8 %read_bit, 0
  %10 = and i64 %iter.sroa.0.017, 127
  %11 = zext i64 %10 to i128
  %write_bit = shl nuw i128 1, %11
  %12 = select i1 %9, i128 0, i128 %write_bit
  %.1 = or i128 %12, %.019
  %.not.i.i.i = icmp ule i64 %spec.select, %bit_range.1
  %or.cond.not = select i1 %4, i1 %.not.i.i.i, i1 false
  br i1 %or.cond.not, label %bb2.i.i.i, label %bb5

panic:                                            ; preds = %bb2.i.i.i
  tail call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 noundef %byte_index5, i64 noundef %field.1, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_c33b654961ffc45420e6faf171e7f4a1) #5
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @driver(i32 noundef %x, i32 noundef %y, i1 noundef zeroext %b, i32 noundef %z) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %_16.i.i = alloca i32, align 4
  %_13.i.i = alloca i32, align 4
  %_10.i.i = alloca i32, align 4
  %_7.i.i = alloca [4 x { ptr, ptr }], align 8
  %_3.i.i = alloca %"core::fmt::Arguments<'_>", align 8
  %int.i13.i = alloca i8, align 1
  %int.i1.i = alloca i32, align 4
  %int.i.i = alloca i32, align 4
  %foo.i = alloca %"src::driver::FooT", align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %foo.i)
  %0 = getelementptr inbounds %"src::driver::FooT", ptr %foo.i, i64 0, i32 2
  store i32 0, ptr %foo.i, align 4
  store i32 %z, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int.i.i)
  store i32 %x, ptr %int.i.i, align 4, !noalias !5
  br label %bb6.i.i.i

bb6.i.i.i:                                        ; preds = %bb12.i.i.i, %start
  %iter.sroa.5.016.i.i.i = phi i64 [ %spec.select.i.i.i, %bb12.i.i.i ], [ 0, %start ]
  %iter.sroa.0.015.i.i.i = phi i64 [ %_9.0.i.i.i.i, %bb12.i.i.i ], [ 0, %start ]
  %1 = icmp eq i64 %iter.sroa.5.016.i.i.i, 0
  %2 = zext i1 %1 to i64
  %spec.select.i.i.i = add nuw nsw i64 %iter.sroa.5.016.i.i.i, %2
  %_9.0.i.i.i.i = add nuw nsw i64 %iter.sroa.0.015.i.i.i, 1
  %_19.i.i.i = call noundef zeroext i1 @"_ZN51_$LT$u32$u20$as$u20$c2rust_bitfields..FieldType$GT$7get_bit17h1c9277b6e7ccdbe2E"(ptr noalias noundef nonnull readonly align 4 dereferenceable(4) %int.i.i, i64 noundef %iter.sroa.0.015.i.i.i)
  br i1 %_19.i.i.i, label %bb8.i.i.i, label %bb10.i.i.i

bb10.i.i.i:                                       ; preds = %bb6.i.i.i
  call void @_ZN16c2rust_bitfields9FieldType9set_field8zero_bit17h7fa6155a4bb2137cE(ptr noalias noundef nonnull align 1 dereferenceable(1) %foo.i, i64 noundef %iter.sroa.5.016.i.i.i)
  br label %bb12.i.i.i

bb8.i.i.i:                                        ; preds = %bb6.i.i.i
  call void @_ZN16c2rust_bitfields9FieldType9set_field7one_bit17h6dbe7e552c531ee5E(ptr noalias noundef nonnull align 1 dereferenceable(1) %foo.i, i64 noundef %iter.sroa.5.016.i.i.i)
  br label %bb12.i.i.i

bb12.i.i.i:                                       ; preds = %bb8.i.i.i, %bb10.i.i.i
  %.not.i.i.i.i.i.i = icmp ult i64 %spec.select.i.i.i, 2
  %or.cond.not.i.i.i = select i1 %1, i1 %.not.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i, label %bb6.i.i.i, label %_ZN6driver3src6driver4FooT5set_x17hefea09b5d5ec9f7bE.exit.i

_ZN6driver3src6driver4FooT5set_x17hefea09b5d5ec9f7bE.exit.i: ; preds = %bb12.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int.i.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int.i1.i)
  store i32 %y, ptr %int.i1.i, align 4, !noalias !8
  br label %bb6.i.i7.i

bb6.i.i7.i:                                       ; preds = %bb12.i.i12.i, %_ZN6driver3src6driver4FooT5set_x17hefea09b5d5ec9f7bE.exit.i
  %iter.sroa.5.016.i.i2.i = phi i64 [ %spec.select.i.i4.i, %bb12.i.i12.i ], [ 2, %_ZN6driver3src6driver4FooT5set_x17hefea09b5d5ec9f7bE.exit.i ]
  %iter.sroa.0.015.i.i3.i = phi i64 [ %_9.0.i.i.i5.i, %bb12.i.i12.i ], [ 0, %_ZN6driver3src6driver4FooT5set_x17hefea09b5d5ec9f7bE.exit.i ]
  %3 = icmp ult i64 %iter.sroa.5.016.i.i2.i, 4
  %4 = zext i1 %3 to i64
  %spec.select.i.i4.i = add nuw nsw i64 %iter.sroa.5.016.i.i2.i, %4
  %_9.0.i.i.i5.i = add nuw nsw i64 %iter.sroa.0.015.i.i3.i, 1
  %_19.i.i6.i = call noundef zeroext i1 @"_ZN51_$LT$u32$u20$as$u20$c2rust_bitfields..FieldType$GT$7get_bit17h1c9277b6e7ccdbe2E"(ptr noalias noundef nonnull readonly align 4 dereferenceable(4) %int.i1.i, i64 noundef %iter.sroa.0.015.i.i3.i)
  br i1 %_19.i.i6.i, label %bb8.i.i9.i, label %bb10.i.i8.i

bb10.i.i8.i:                                      ; preds = %bb6.i.i7.i
  call void @_ZN16c2rust_bitfields9FieldType9set_field8zero_bit17h7fa6155a4bb2137cE(ptr noalias noundef nonnull align 1 dereferenceable(1) %foo.i, i64 noundef %iter.sroa.5.016.i.i2.i)
  br label %bb12.i.i12.i

bb8.i.i9.i:                                       ; preds = %bb6.i.i7.i
  call void @_ZN16c2rust_bitfields9FieldType9set_field7one_bit17h6dbe7e552c531ee5E(ptr noalias noundef nonnull align 1 dereferenceable(1) %foo.i, i64 noundef %iter.sroa.5.016.i.i2.i)
  br label %bb12.i.i12.i

bb12.i.i12.i:                                     ; preds = %bb8.i.i9.i, %bb10.i.i8.i
  %.not.i.i.i.i.i10.i = icmp ult i64 %spec.select.i.i4.i, 5
  %or.cond.not.i.i11.i = select i1 %3, i1 %.not.i.i.i.i.i10.i, i1 false
  br i1 %or.cond.not.i.i11.i, label %bb6.i.i7.i, label %_ZN6driver3src6driver4FooT5set_y17ha933f56451fd44e0E.exit.i

_ZN6driver3src6driver4FooT5set_y17ha933f56451fd44e0E.exit.i: ; preds = %bb12.i.i12.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int.i1.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %int.i13.i)
  %5 = zext i1 %b to i8
  store i8 %5, ptr %int.i13.i, align 1, !noalias !11
  %_19.i.i14.i = call noundef zeroext i1 @"_ZN52_$LT$bool$u20$as$u20$c2rust_bitfields..FieldType$GT$7get_bit17hd4efaf77a8d4fb42E"(ptr noalias noundef nonnull readonly align 1 dereferenceable(1) %int.i13.i, i64 noundef 0), !noalias !14
  br i1 %_19.i.i14.i, label %bb8.i.i16.i, label %bb10.i.i15.i

bb10.i.i15.i:                                     ; preds = %_ZN6driver3src6driver4FooT5set_y17ha933f56451fd44e0E.exit.i
  call void @_ZN16c2rust_bitfields9FieldType9set_field8zero_bit17h7fa6155a4bb2137cE(ptr noalias noundef nonnull align 1 dereferenceable(1) %foo.i, i64 noundef 5)
  br label %_ZN6driver3src6driver6driver17hf41d305a07dc54a3E.exit

bb8.i.i16.i:                                      ; preds = %_ZN6driver3src6driver4FooT5set_y17ha933f56451fd44e0E.exit.i
  call void @_ZN16c2rust_bitfields9FieldType9set_field7one_bit17h6dbe7e552c531ee5E(ptr noalias noundef nonnull align 1 dereferenceable(1) %foo.i, i64 noundef 5)
  br label %_ZN6driver3src6driver6driver17hf41d305a07dc54a3E.exit

_ZN6driver3src6driver6driver17hf41d305a07dc54a3E.exit: ; preds = %bb8.i.i16.i, %bb10.i.i15.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %int.i13.i)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i.i), !noalias !17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %_7.i.i), !noalias !17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_10.i.i), !noalias !17
  %6 = call noundef i32 @"_ZN51_$LT$u32$u20$as$u20$c2rust_bitfields..FieldType$GT$9get_field17h2c53c5358f59249cE"(ptr noalias noundef nonnull readonly align 1 %foo.i, i64 noundef 1, i64 noundef 0, i64 noundef 1)
  store i32 %6, ptr %_10.i.i, align 4, !noalias !17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_13.i.i), !noalias !17
  %7 = call noundef i32 @"_ZN51_$LT$u32$u20$as$u20$c2rust_bitfields..FieldType$GT$9get_field17h2c53c5358f59249cE"(ptr noalias noundef nonnull readonly align 1 %foo.i, i64 noundef 1, i64 noundef 2, i64 noundef 4)
  store i32 %7, ptr %_13.i.i, align 4, !noalias !17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_16.i.i), !noalias !17
  %8 = call noundef zeroext i1 @"_ZN52_$LT$bool$u20$as$u20$c2rust_bitfields..FieldType$GT$9get_field17h8581ee11ca910943E"(ptr noalias noundef nonnull readonly align 1 %foo.i, i64 noundef 1, i64 noundef 5, i64 noundef 5)
  %9 = zext i1 %8 to i32
  store i32 %9, ptr %_16.i.i, align 4, !noalias !17
  store ptr %_10.i.i, ptr %_7.i.i, align 8, !noalias !17
  %10 = getelementptr inbounds { ptr, ptr }, ptr %_7.i.i, i64 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17hd81d465c7472b387E", ptr %10, align 8, !noalias !17
  %11 = getelementptr inbounds [4 x { ptr, ptr }], ptr %_7.i.i, i64 0, i64 1
  store ptr %_13.i.i, ptr %11, align 8, !noalias !17
  %12 = getelementptr inbounds [4 x { ptr, ptr }], ptr %_7.i.i, i64 0, i64 1, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17hd81d465c7472b387E", ptr %12, align 8, !noalias !17
  %13 = getelementptr inbounds [4 x { ptr, ptr }], ptr %_7.i.i, i64 0, i64 2
  store ptr %_16.i.i, ptr %13, align 8, !noalias !17
  %14 = getelementptr inbounds [4 x { ptr, ptr }], ptr %_7.i.i, i64 0, i64 2, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %14, align 8, !noalias !17
  %15 = getelementptr inbounds [4 x { ptr, ptr }], ptr %_7.i.i, i64 0, i64 3
  store ptr %0, ptr %15, align 8, !noalias !17
  %16 = getelementptr inbounds [4 x { ptr, ptr }], ptr %_7.i.i, i64 0, i64 3, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %16, align 8, !noalias !17
  %17 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i, i64 0, i32 1
  store ptr @alloc_44f85c7ec7194e1371c1c5a09cf95e43, ptr %17, align 8, !alias.scope !20, !noalias !23
  %18 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i, i64 0, i32 1, i32 1
  store i64 5, ptr %18, align 8, !alias.scope !20, !noalias !23
  store ptr null, ptr %_3.i.i, align 8, !alias.scope !20, !noalias !23
  %19 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i, i64 0, i32 2
  store ptr %_7.i.i, ptr %19, align 8, !alias.scope !20, !noalias !23
  %20 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i.i, i64 0, i32 2, i32 1
  store i64 4, ptr %20, align 8, !alias.scope !20, !noalias !23
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i.i), !noalias !17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_16.i.i), !noalias !17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_13.i.i), !noalias !17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_10.i.i), !noalias !17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %_7.i.i), !noalias !17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %foo.i)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17hd81d465c7472b387E"(ptr noalias noundef readonly align 4 dereferenceable(4), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE"(ptr noalias noundef readonly align 4 dereferenceable(4), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef readonly dereferenceable(48)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
define void @print_foo(ptr noundef nonnull %foo) unnamed_addr #2 {
start:
  %_16.i = alloca i32, align 4
  %_13.i = alloca i32, align 4
  %_10.i = alloca i32, align 4
  %_7.i = alloca [4 x { ptr, ptr }], align 8
  %_3.i = alloca %"core::fmt::Arguments<'_>", align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i), !noalias !25
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %_7.i), !noalias !25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_10.i), !noalias !25
  %0 = tail call noundef i32 @"_ZN51_$LT$u32$u20$as$u20$c2rust_bitfields..FieldType$GT$9get_field17h2c53c5358f59249cE"(ptr noalias noundef nonnull readonly align 1 %foo, i64 noundef 1, i64 noundef 0, i64 noundef 1)
  store i32 %0, ptr %_10.i, align 4, !noalias !25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_13.i), !noalias !25
  %1 = tail call noundef i32 @"_ZN51_$LT$u32$u20$as$u20$c2rust_bitfields..FieldType$GT$9get_field17h2c53c5358f59249cE"(ptr noalias noundef nonnull readonly align 1 %foo, i64 noundef 1, i64 noundef 2, i64 noundef 4)
  store i32 %1, ptr %_13.i, align 4, !noalias !25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_16.i), !noalias !25
  %2 = tail call noundef zeroext i1 @"_ZN52_$LT$bool$u20$as$u20$c2rust_bitfields..FieldType$GT$9get_field17h8581ee11ca910943E"(ptr noalias noundef nonnull readonly align 1 %foo, i64 noundef 1, i64 noundef 5, i64 noundef 5)
  %3 = zext i1 %2 to i32
  store i32 %3, ptr %_16.i, align 4, !noalias !25
  %x.i = getelementptr inbounds %"src::driver::FooT", ptr %foo, i64 0, i32 2
  store ptr %_10.i, ptr %_7.i, align 8, !noalias !25
  %4 = getelementptr inbounds { ptr, ptr }, ptr %_7.i, i64 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17hd81d465c7472b387E", ptr %4, align 8, !noalias !25
  %5 = getelementptr inbounds [4 x { ptr, ptr }], ptr %_7.i, i64 0, i64 1
  store ptr %_13.i, ptr %5, align 8, !noalias !25
  %6 = getelementptr inbounds [4 x { ptr, ptr }], ptr %_7.i, i64 0, i64 1, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17hd81d465c7472b387E", ptr %6, align 8, !noalias !25
  %7 = getelementptr inbounds [4 x { ptr, ptr }], ptr %_7.i, i64 0, i64 2
  store ptr %_16.i, ptr %7, align 8, !noalias !25
  %8 = getelementptr inbounds [4 x { ptr, ptr }], ptr %_7.i, i64 0, i64 2, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %8, align 8, !noalias !25
  %9 = getelementptr inbounds [4 x { ptr, ptr }], ptr %_7.i, i64 0, i64 3
  store ptr %x.i, ptr %9, align 8, !noalias !25
  %10 = getelementptr inbounds [4 x { ptr, ptr }], ptr %_7.i, i64 0, i64 3, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %10, align 8, !noalias !25
  %11 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 1
  store ptr @alloc_44f85c7ec7194e1371c1c5a09cf95e43, ptr %11, align 8, !alias.scope !28, !noalias !31
  %12 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 1, i32 1
  store i64 5, ptr %12, align 8, !alias.scope !28, !noalias !31
  store ptr null, ptr %_3.i, align 8, !alias.scope !28, !noalias !31
  %13 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 2
  store ptr %_7.i, ptr %13, align 8, !alias.scope !28, !noalias !31
  %14 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 2, i32 1
  store i64 4, ptr %14, align 8, !alias.scope !28, !noalias !31
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i), !noalias !25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_16.i), !noalias !25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_13.i), !noalias !25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_10.i), !noalias !25
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %_7.i), !noalias !25
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{}
!3 = !{i8 0, i8 2}
!4 = !{!"branch_weights", i32 2000, i32 1}
!5 = !{!6}
!6 = distinct !{!6, !7, !"_ZN6driver3src6driver4FooT5set_x17hefea09b5d5ec9f7bE: %self"}
!7 = distinct !{!7, !"_ZN6driver3src6driver4FooT5set_x17hefea09b5d5ec9f7bE"}
!8 = !{!9}
!9 = distinct !{!9, !10, !"_ZN6driver3src6driver4FooT5set_y17ha933f56451fd44e0E: %self"}
!10 = distinct !{!10, !"_ZN6driver3src6driver4FooT5set_y17ha933f56451fd44e0E"}
!11 = !{!12}
!12 = distinct !{!12, !13, !"_ZN6driver3src6driver4FooT5set_b17h0415f4a2a6dffb46E: %self"}
!13 = distinct !{!13, !"_ZN6driver3src6driver4FooT5set_b17h0415f4a2a6dffb46E"}
!14 = !{!15, !12}
!15 = distinct !{!15, !16, !"_ZN16c2rust_bitfields9FieldType9set_field17h7f46a8ec939a674aE: %field.0"}
!16 = distinct !{!16, !"_ZN16c2rust_bitfields9FieldType9set_field17h7f46a8ec939a674aE"}
!17 = !{!18}
!18 = distinct !{!18, !19, !"_ZN6driver3src6driver9print_foo17hbdf5ac5ff049c5f2E: %foo"}
!19 = distinct !{!19, !"_ZN6driver3src6driver9print_foo17hbdf5ac5ff049c5f2E"}
!20 = !{!21}
!21 = distinct !{!21, !22, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!22 = distinct !{!22, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!23 = !{!24, !18}
!24 = distinct !{!24, !22, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!25 = !{!26}
!26 = distinct !{!26, !27, !"_ZN6driver3src6driver9print_foo17hbdf5ac5ff049c5f2E: %foo"}
!27 = distinct !{!27, !"_ZN6driver3src6driver9print_foo17hbdf5ac5ff049c5f2E"}
!28 = !{!29}
!29 = distinct !{!29, !30, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!30 = distinct !{!30, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!31 = !{!32, !26}
!32 = distinct !{!32, !30, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
