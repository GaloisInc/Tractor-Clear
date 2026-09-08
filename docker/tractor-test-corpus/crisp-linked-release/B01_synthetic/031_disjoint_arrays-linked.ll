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
@vtable.1 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr48drop_in_place$LT$core..str..error..Utf8Error$GT$17h1d6f64b633b1d7c5E", [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN64_$LT$core..str..error..Utf8Error$u20$as$u20$core..fmt..Debug$GT$3fmt17he5298eb5cbc8b1a7E" }>, align 8
@_ZN4core7unicode12unicode_data11white_space14WHITESPACE_MAP17h816efa1346cc10d5E = external local_unnamed_addr global [256 x i8]
@alloc_00728171eaa7ec2c5a267f4bf25d4ac3 = private unnamed_addr constant <{ [13 x i8] }> <{ [13 x i8] c"src/driver.rs" }>, align 1
@alloc_9e2f840d8b0c6d2631ecb1eecf99b547 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_00728171eaa7ec2c5a267f4bf25d4ac3, [16 x i8] c"\0D\00\00\00\00\00\00\00\12\00\00\00\12\00\00\00" }>, align 8
@alloc_561a161b735ec8f02a84320b3843b710 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_00728171eaa7ec2c5a267f4bf25d4ac3, [16 x i8] c"\0D\00\00\00\00\00\00\00K\00\00\00\11\00\00\00" }>, align 8
@alloc_a7d5910136f77556a5b121e63aba57bb = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_00728171eaa7ec2c5a267f4bf25d4ac3, [16 x i8] c"\0D\00\00\00\00\00\00\00C\00\00\00\16\00\00\00" }>, align 8
@alloc_1e8e28218f98908c0247eeab78beaf62 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_00728171eaa7ec2c5a267f4bf25d4ac3, [16 x i8] c"\0D\00\00\00\00\00\00\00P\00\00\000\00\00\00" }>, align 8
@alloc_49a1e817e911805af64bbc7efb390101 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc_4ed11f17954caf7854f80f02ae34907e = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc_513570631223a12912d85da2bec3b15a, [8 x i8] zeroinitializer, ptr @alloc_49a1e817e911805af64bbc7efb390101, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc_ced617574d7e932b90bf57ac4ae972b1 = private unnamed_addr constant <{ [37 x i8] }> <{ [37 x i8] c"driver_ffi: input was not valid UTF-8" }>, align 1
@alloc_5dd164908886b5663dd4dcfe0c686228 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_00728171eaa7ec2c5a267f4bf25d4ac3, [16 x i8] c"\0D\00\00\00\00\00\00\00`\00\00\00\1E\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define noundef i32 @call_fma(ptr nocapture noundef nonnull readonly %data, i32 noundef %len) unnamed_addr #0 {
start:
  %len1 = sext i32 %len to i64
  %0 = tail call fastcc noundef i32 @_ZN6driver3src6driver8call_fma17h3cc3225ca87cdcd9E(ptr noalias noundef nonnull readonly align 4 %data, i64 noundef %len1)
  ret i32 %0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i32 @_ZN6driver3src6driver8call_fma17h3cc3225ca87cdcd9E(ptr noalias nocapture noundef nonnull readonly align 4 %data.0, i64 noundef %data.1) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %0 = icmp eq i64 %data.1, 0
  br i1 %0, label %bb12, label %bb6.i9.i.i

bb6.i9.i.i:                                       ; preds = %start
  %_5.i.i6.i.i = icmp ult i64 %data.1, 2305843009213693952
  %array_size.i.i7.i.i = shl i64 %data.1, 2
  %.sroa.2.0.i.i8.i.i = select i1 %_5.i.i6.i.i, i64 4, i64 0
  br i1 %_5.i.i6.i.i, label %bb11.i12.i.i, label %bb7.i11.i.i

bb7.i11.i.i:                                      ; preds = %bb6.i9.i.i
  tail call void @_ZN5alloc7raw_vec17capacity_overflow17h485163a5bdbafde6E() #15, !noalias !2
  unreachable

bb11.i12.i.i:                                     ; preds = %bb6.i9.i.i
  %1 = icmp eq i64 %array_size.i.i7.i.i, 0
  br i1 %1, label %bb2.i.i14.i.i.i, label %bb1.i.i15.i.i.i

bb2.i.i14.i.i.i:                                  ; preds = %bb11.i12.i.i
  %ptr11.i.i13.i.i.i = inttoptr i64 %.sroa.2.0.i.i8.i.i to ptr
  br label %bb16.i14.i.i

bb1.i.i15.i.i.i:                                  ; preds = %bb11.i12.i.i
  %2 = tail call noundef ptr @__rust_alloc_zeroed(i64 noundef %array_size.i.i7.i.i, i64 noundef %.sroa.2.0.i.i8.i.i) #16, !noalias !2
  br label %bb16.i14.i.i

bb16.i14.i.i:                                     ; preds = %bb1.i.i15.i.i.i, %bb2.i.i14.i.i.i
  %.sroa.0.0.i.i16.pn.i13.i.i = phi ptr [ %ptr11.i.i13.i.i.i, %bb2.i.i14.i.i.i ], [ %2, %bb1.i.i15.i.i.i ]
  %3 = icmp eq ptr %.sroa.0.0.i.i16.pn.i13.i.i, null
  br i1 %3, label %bb17.i15.i.i, label %bb11.i.i.i

bb17.i15.i.i:                                     ; preds = %bb16.i14.i.i
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h944707b833928a89E(i64 noundef %array_size.i.i7.i.i, i64 noundef %.sroa.2.0.i.i8.i.i) #15, !noalias !2
  unreachable

bb11.i.i.i:                                       ; preds = %bb16.i14.i.i
  %4 = tail call noundef align 4 ptr @__rust_alloc(i64 noundef %array_size.i.i7.i.i, i64 noundef 4) #16, !noalias !7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %bb17.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc9c99dd74a308de6E.exit.i.i.i"

bb17.i.i.i:                                       ; preds = %bb11.i.i.i
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h944707b833928a89E(i64 noundef %array_size.i.i7.i.i, i64 noundef 4) #15
          to label %.noexc24 unwind label %cleanup

.noexc24:                                         ; preds = %bb17.i.i.i
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc9c99dd74a308de6E.exit.i.i.i": ; preds = %bb11.i.i.i
  %6 = icmp ugt i64 %data.1, 1
  br i1 %6, label %bb6.i4.i.i.preheader, label %bb11.i12.i.i32.thread

bb6.i4.i.i.preheader:                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc9c99dd74a308de6E.exit.i.i.i"
  %7 = add i64 %data.1, -1
  %min.iters.check = icmp ult i64 %data.1, 9
  br i1 %min.iters.check, label %bb6.i4.i.i.preheader90, label %vector.ph

vector.ph:                                        ; preds = %bb6.i4.i.i.preheader
  %n.vec = and i64 %7, -8
  %8 = shl i64 %n.vec, 2
  %ind.end = getelementptr i8, ptr %4, i64 %8
  %ind.end75 = or i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %9 = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %4, i64 %9
  store <4 x i32> splat (i32 1), ptr %next.gep, align 4, !noalias !12
  %10 = getelementptr i32, ptr %next.gep, i64 4
  store <4 x i32> splat (i32 1), ptr %10, align 4, !noalias !12
  %index.next = add nuw i64 %index, 8
  %11 = icmp eq i64 %index.next, %n.vec
  br i1 %11, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %7, %n.vec
  br i1 %cmp.n, label %bb11.i12.i.i32, label %bb6.i4.i.i.preheader90

bb6.i4.i.i.preheader90:                           ; preds = %middle.block, %bb6.i4.i.i.preheader
  %ptr.022.i.i.i.ph = phi ptr [ %4, %bb6.i4.i.i.preheader ], [ %ind.end, %middle.block ]
  %iter.sroa.0.021.i.i.i.ph = phi i64 [ 1, %bb6.i4.i.i.preheader ], [ %ind.end75, %middle.block ]
  br label %bb6.i4.i.i

bb11.i12.i.i32.thread:                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc9c99dd74a308de6E.exit.i.i.i"
  store i32 1, ptr %4, align 4, !noalias !12
  br label %bb16.i14.i.i37

bb6.i4.i.i:                                       ; preds = %bb6.i4.i.i, %bb6.i4.i.i.preheader90
  %ptr.022.i.i.i = phi ptr [ %13, %bb6.i4.i.i ], [ %ptr.022.i.i.i.ph, %bb6.i4.i.i.preheader90 ]
  %iter.sroa.0.021.i.i.i = phi i64 [ %12, %bb6.i4.i.i ], [ %iter.sroa.0.021.i.i.i.ph, %bb6.i4.i.i.preheader90 ]
  %12 = add nuw i64 %iter.sroa.0.021.i.i.i, 1
  store i32 1, ptr %ptr.022.i.i.i, align 4, !noalias !12
  %13 = getelementptr inbounds i32, ptr %ptr.022.i.i.i, i64 1
  %exitcond.not.i.i.i = icmp eq i64 %12, %data.1
  br i1 %exitcond.not.i.i.i, label %bb11.i12.i.i32, label %bb6.i4.i.i, !llvm.loop !18

bb15:                                             ; preds = %bb14, %cleanup
  %.pn7 = phi { ptr, i32 } [ %14, %cleanup ], [ %.pn, %bb14 ]
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h1ea6affc0d1df6d9E"(i64 %data.1, ptr nonnull %.sroa.0.0.i.i16.pn.i13.i.i) #17
          to label %bb16 unwind label %terminate

cleanup:                                          ; preds = %bb17.i.i.i
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %bb15

bb11.i12.i.i32:                                   ; preds = %bb6.i4.i.i, %middle.block
  %.lcssa = phi ptr [ %ind.end, %middle.block ], [ %13, %bb6.i4.i.i ]
  store i32 1, ptr %.lcssa, align 4, !noalias !12
  br i1 %1, label %bb6, label %bb16.i14.i.i37

bb16.i14.i.i37:                                   ; preds = %bb11.i12.i.i32, %bb11.i12.i.i32.thread
  %array_size.i.i7.i.i286470 = phi i64 [ 4, %bb11.i12.i.i32.thread ], [ %array_size.i.i7.i.i, %bb11.i12.i.i32 ]
  %15 = tail call noundef align 4 ptr @__rust_alloc_zeroed(i64 noundef %array_size.i.i7.i.i286470, i64 noundef 4) #16, !noalias !19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %bb17.i15.i.i38, label %bb6

bb17.i15.i.i38:                                   ; preds = %bb16.i14.i.i37
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h944707b833928a89E(i64 noundef %array_size.i.i7.i.i286470, i64 noundef 4) #15
          to label %.noexc41 unwind label %cleanup1

.noexc41:                                         ; preds = %bb17.i15.i.i38
  unreachable

bb14:                                             ; preds = %cleanup2, %cleanup1
  %.pn = phi { ptr, i32 } [ %17, %cleanup1 ], [ %18, %cleanup2 ]
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h1ea6affc0d1df6d9E"(i64 %data.1, ptr nonnull %4) #17
          to label %bb15 unwind label %terminate

cleanup1:                                         ; preds = %bb17.i15.i.i38
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %bb14

cleanup2:                                         ; preds = %panic.i
  %18 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h1ea6affc0d1df6d9E"(i64 %data.1, ptr nonnull %.sroa.0.0.i.i16.pn.i13.i.i3674) #17
          to label %bb14 unwind label %terminate

bb6:                                              ; preds = %bb16.i14.i.i37, %bb11.i12.i.i32
  %.sroa.0.0.i.i16.pn.i13.i.i3674 = phi ptr [ %15, %bb16.i14.i.i37 ], [ inttoptr (i64 4 to ptr), %bb11.i12.i.i32 ]
  store i32 0, ptr %.sroa.0.0.i.i16.pn.i13.i.i, align 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31)
  %19 = add i64 %data.1, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %data.1, i64 %19)
  %20 = add i64 %umin, 1
  %min.iters.check80 = icmp ult i64 %20, 5
  br i1 %min.iters.check80, label %bb2.i.preheader, label %vector.ph81

vector.ph81:                                      ; preds = %bb6
  %n.mod.vf82 = and i64 %20, 3
  %21 = icmp eq i64 %n.mod.vf82, 0
  %22 = select i1 %21, i64 4, i64 %n.mod.vf82
  %n.vec83 = sub i64 %20, %22
  br label %vector.body85

vector.body85:                                    ; preds = %vector.body85, %vector.ph81
  %index86 = phi i64 [ 0, %vector.ph81 ], [ %index.next89, %vector.body85 ]
  %23 = getelementptr inbounds [0 x i32], ptr %4, i64 0, i64 %index86
  %wide.load = load <4 x i32>, ptr %23, align 4, !alias.scope !27, !noalias !33
  %24 = getelementptr inbounds [0 x i32], ptr %data.0, i64 0, i64 %index86
  %wide.load87 = load <4 x i32>, ptr %24, align 4, !alias.scope !29, !noalias !34
  %25 = mul <4 x i32> %wide.load87, %wide.load
  %26 = getelementptr inbounds [0 x i32], ptr %.sroa.0.0.i.i16.pn.i13.i.i3674, i64 0, i64 %index86
  %wide.load88 = load <4 x i32>, ptr %26, align 4, !alias.scope !31, !noalias !35
  %27 = getelementptr inbounds [0 x i32], ptr %.sroa.0.0.i.i16.pn.i13.i.i, i64 0, i64 %index86
  %28 = add <4 x i32> %25, %wide.load88
  store <4 x i32> %28, ptr %27, align 4, !alias.scope !24, !noalias !36
  %index.next89 = add nuw i64 %index86, 4
  %29 = icmp eq i64 %index.next89, %n.vec83
  br i1 %29, label %bb2.i.preheader, label %vector.body85, !llvm.loop !37

bb2.i.preheader:                                  ; preds = %vector.body85, %bb6
  %iter.sroa.0.010.i.ph = phi i64 [ 0, %bb6 ], [ %n.vec83, %vector.body85 ]
  br label %bb2.i

bb2.i:                                            ; preds = %bb8.i, %bb2.i.preheader
  %iter.sroa.0.010.i = phi i64 [ %30, %bb8.i ], [ %iter.sroa.0.010.i.ph, %bb2.i.preheader ]
  %exitcond.not.i = icmp eq i64 %iter.sroa.0.010.i, %data.1
  br i1 %exitcond.not.i, label %panic.i, label %bb8.i, !prof !38

panic.i:                                          ; preds = %bb2.i
  invoke void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 noundef %data.1, i64 noundef %data.1, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_9e2f840d8b0c6d2631ecb1eecf99b547) #15
          to label %.noexc44 unwind label %cleanup2

.noexc44:                                         ; preds = %panic.i
  unreachable

bb8.i:                                            ; preds = %bb2.i
  %30 = add nuw i64 %iter.sroa.0.010.i, 1
  %31 = getelementptr inbounds [0 x i32], ptr %4, i64 0, i64 %iter.sroa.0.010.i
  %_14.i = load i32, ptr %31, align 4, !alias.scope !27, !noalias !33, !noundef !39
  %32 = getelementptr inbounds [0 x i32], ptr %data.0, i64 0, i64 %iter.sroa.0.010.i
  %_17.i = load i32, ptr %32, align 4, !alias.scope !29, !noalias !34, !noundef !39
  %_13.i = mul i32 %_17.i, %_14.i
  %33 = getelementptr inbounds [0 x i32], ptr %.sroa.0.0.i.i16.pn.i13.i.i3674, i64 0, i64 %iter.sroa.0.010.i
  %_20.i = load i32, ptr %33, align 4, !alias.scope !31, !noalias !35, !noundef !39
  %34 = getelementptr inbounds [0 x i32], ptr %.sroa.0.0.i.i16.pn.i13.i.i, i64 0, i64 %iter.sroa.0.010.i
  %35 = add i32 %_13.i, %_20.i
  store i32 %35, ptr %34, align 4, !alias.scope !24, !noalias !36
  %exitcond16.not.i = icmp eq i64 %30, %data.1
  br i1 %exitcond16.not.i, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h1ea6affc0d1df6d9E.exit54", label %bb2.i, !llvm.loop !40

terminate:                                        ; preds = %cleanup2, %bb14, %bb15
  %36 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN4core9panicking19panic_cannot_unwind17h629e1da841ab4abfE() #18
  unreachable

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h1ea6affc0d1df6d9E.exit54": ; preds = %bb8.i
  %_17 = add i64 %data.1, -1
  %37 = getelementptr inbounds [0 x i32], ptr %.sroa.0.0.i.i16.pn.i13.i.i, i64 0, i64 %_17
  %38 = load i32, ptr %37, align 4, !noundef !39
  tail call void @__rust_dealloc(ptr noundef nonnull %.sroa.0.0.i.i16.pn.i13.i.i3674, i64 noundef %array_size.i.i7.i.i, i64 noundef 4) #16
  tail call void @__rust_dealloc(ptr noundef nonnull %4, i64 noundef %array_size.i.i7.i.i, i64 noundef 4) #16
  tail call void @__rust_dealloc(ptr noundef nonnull %.sroa.0.0.i.i16.pn.i13.i.i, i64 noundef %array_size.i.i7.i.i, i64 noundef 4) #16
  br label %bb12

bb16:                                             ; preds = %bb15
  resume { ptr, i32 } %.pn7

bb12:                                             ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h1ea6affc0d1df6d9E.exit54", %start
  %.0 = phi i32 [ %38, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h1ea6affc0d1df6d9E.exit54" ], [ 0, %start ]
  ret i32 %.0
}

; Function Attrs: nonlazybind uwtable
declare noundef i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: noreturn nonlazybind uwtable
declare void @_ZN5alloc7raw_vec17capacity_overflow17h485163a5bdbafde6E() unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable
declare noalias noundef ptr @__rust_alloc_zeroed(i64 noundef, i64 allocalign noundef) unnamed_addr #2

; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_ZN5alloc5alloc18handle_alloc_error17h944707b833928a89E(i64 noundef, i64 noundef) unnamed_addr #3

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @__rust_alloc(i64 noundef, i64 allocalign noundef) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h1ea6affc0d1df6d9E"(i64 %_1.0.val, ptr %_1.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb4:
  %_3.i.i.i = icmp eq i64 %_1.0.val, 0
  br i1 %_3.i.i.i, label %"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17hc2f09b1a14616f6fE.exit", label %bb2.i.i

bb2.i.i:                                          ; preds = %bb4
  %0 = icmp ne ptr %_1.8.val, null
  tail call void @llvm.assume(i1 %0)
  %1 = shl nuw i64 %_1.0.val, 2
  tail call void @__rust_dealloc(ptr noundef nonnull %_1.8.val, i64 noundef %1, i64 noundef 4) #16
  br label %"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17hc2f09b1a14616f6fE.exit"

"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17hc2f09b1a14616f6fE.exit": ; preds = %bb2.i.i, %bb4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 dereferenceable(24)) unnamed_addr #7

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_ZN4core9panicking19panic_cannot_unwind17h629e1da841ab4abfE() unnamed_addr #8

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @__rust_dealloc(ptr allocptr noundef, i64 noundef, i64 noundef) unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nonlazybind uwtable
define void @driver(ptr noundef %in_0) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %_66.i = alloca [1 x { ptr, ptr }], align 8
  %_62.i = alloca %"core::fmt::Arguments<'_>", align 8
  %result.i = alloca i32, align 4
  %data.i = alloca [100 x i32], align 4
  %e.i = alloca %"core::str::error::Utf8Error", align 8
  %_4 = alloca %"core::result::Result<&str, core::str::error::Utf8Error>", align 8
  %len = tail call noundef i64 @_ZN4core3ffi5c_str4CStr8from_ptr9strlen_rt17h463292534e232c62E(ptr noundef %in_0)
  %len1 = add i64 %len, 1
  %0 = icmp ne ptr %in_0, null
  tail call void @llvm.assume(i1 %0)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4)
  call void @_ZN4core3ffi5c_str4CStr6to_str17h7660279a6932e49cE(ptr noalias nocapture noundef nonnull sret(%"core::result::Result<&str, core::str::error::Utf8Error>") dereferenceable(24) %_4, ptr noalias noundef nonnull readonly align 1 %in_0, i64 noundef %len1)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41)
  %_3.i = load i64, ptr %_4, align 8, !range !44, !alias.scope !41, !noundef !39
  %trunc.not.i = icmp eq i64 %_3.i, 0
  br i1 %trunc.not.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h38d2f8f80620b971E.exit", label %bb1.i

bb1.i:                                            ; preds = %start
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %e.i), !noalias !41
  %1 = getelementptr inbounds %"core::result::Result<&str, core::str::error::Utf8Error>::Err", ptr %_4, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %e.i, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  call void @_ZN4core6result13unwrap_failed17h008634a1b68516fbE(ptr noalias noundef nonnull readonly align 1 @alloc_ced617574d7e932b90bf57ac4ae972b1, i64 noundef 37, ptr noundef nonnull align 1 %e.i, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @vtable.1, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_5dd164908886b5663dd4dcfe0c686228) #15, !noalias !41
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h38d2f8f80620b971E.exit": ; preds = %start
  %2 = getelementptr inbounds %"core::result::Result<&str, core::str::error::Utf8Error>::Ok", ptr %_4, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !alias.scope !41, !nonnull !39, !align !45, !noundef !39
  %4 = getelementptr inbounds %"core::result::Result<&str, core::str::error::Utf8Error>::Ok", ptr %_4, i64 0, i32 1, i32 1
  %5 = load i64, ptr %4, align 8, !alias.scope !41, !noundef !39
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %data.i), !noalias !46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %data.i, i8 0, i64 400, i1 false), !noalias !46
  br label %bb2.i

bb28.i:                                           ; preds = %bb38.i, %bb20.critedge.i, %bb9.i, %"_ZN4core3str21_$LT$impl$u20$str$GT$18trim_start_matches17h09ae1af7c84d99c7E.exit.i"
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %result.i), !noalias !46
  %_9.i.i.i = icmp ugt i64 %i.048.i, 100
  br i1 %_9.i.i.i, label %bb3.i.i.i, label %_ZN6driver3src6driver6driver17h98e8ba24abf7dd96E.exit

bb3.i.i.i:                                        ; preds = %bb28.i
  tail call void @_ZN4core5slice5index24slice_end_index_len_fail17h63e54c65524702d3E(i64 noundef %i.048.i, i64 noundef 100, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_1e8e28218f98908c0247eeab78beaf62) #15, !noalias !49
  unreachable

bb2.i:                                            ; preds = %"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$5index17h6e4652210e4d84b6E.exit.i", %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h38d2f8f80620b971E.exit"
  %i.048.i = phi i64 [ 0, %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h38d2f8f80620b971E.exit" ], [ %43, %"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$5index17h6e4652210e4d84b6E.exit.i" ]
  %rest.sroa.0.047.i = phi ptr [ %3, %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h38d2f8f80620b971E.exit" ], [ %47, %"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$5index17h6e4652210e4d84b6E.exit.i" ]
  %rest.sroa.10.045.i = phi i64 [ %5, %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h38d2f8f80620b971E.exit" ], [ %len2.i.i.i.i, %"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$5index17h6e4652210e4d84b6E.exit.i" ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  %6 = getelementptr inbounds i8, ptr %rest.sroa.0.047.i, i64 %rest.sroa.10.045.i
  %_10.i.i.i.i11.i.i.i = icmp eq i64 %rest.sroa.10.045.i, 0
  br i1 %_10.i.i.i.i11.i.i.i, label %"_ZN4core3str21_$LT$impl$u20$str$GT$18trim_start_matches17h09ae1af7c84d99c7E.exit.i", label %bb3.i.i.i.i.i.i

bb3.i.i.i.i.i.i:                                  ; preds = %bb5.i.i.i, %bb2.i
  %7 = phi i64 [ %21, %bb5.i.i.i ], [ 0, %bb2.i ]
  %8 = phi ptr [ %22, %bb5.i.i.i ], [ %rest.sroa.0.047.i, %bb2.i ]
  %9 = getelementptr inbounds i8, ptr %8, i64 1
  %x.i.i.i.i.i.i = load i8, ptr %8, align 1, !alias.scope !57, !noalias !58, !noundef !39
  %_7.i.i.i.i.i.i = icmp sgt i8 %x.i.i.i.i.i.i, -1
  br i1 %_7.i.i.i.i.i.i, label %bb6.i.i.i.i.i.i, label %bb7.i.i.i.i.i.i

bb7.i.i.i.i.i.i:                                  ; preds = %bb3.i.i.i.i.i.i
  %_33.i.i.i.i.i.i = and i8 %x.i.i.i.i.i.i, 31
  %init.i.i.i.i.i.i = zext i8 %_33.i.i.i.i.i.i to i32
  %_10.i10.i.i.i.i.i.i = icmp ne ptr %9, %6
  tail call void @llvm.assume(i1 %_10.i10.i.i.i.i.i.i)
  %10 = getelementptr inbounds i8, ptr %8, i64 2
  %y.i.i.i.i.i.i = load i8, ptr %9, align 1, !alias.scope !57, !noalias !58, !noundef !39
  %_37.i.i.i.i.i.i = shl nuw nsw i32 %init.i.i.i.i.i.i, 6
  %_39.i.i.i.i.i.i = and i8 %y.i.i.i.i.i.i, 63
  %_38.i.i.i.i.i.i = zext i8 %_39.i.i.i.i.i.i to i32
  %11 = or i32 %_37.i.i.i.i.i.i, %_38.i.i.i.i.i.i
  %_14.i.i.i.i.i.i = icmp ugt i8 %x.i.i.i.i.i.i, -33
  br i1 %_14.i.i.i.i.i.i, label %bb9.i.i.i.i.i.i, label %"_ZN87_$LT$core..str..iter..CharIndices$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0c97daac3cd15079E.exit.thread.i.i.i.i"

bb6.i.i.i.i.i.i:                                  ; preds = %bb3.i.i.i.i.i.i
  %_8.i.i.i.i.i.i = zext i8 %x.i.i.i.i.i.i to i32
  br label %"_ZN87_$LT$core..str..iter..CharIndices$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0c97daac3cd15079E.exit.thread.i.i.i.i"

bb9.i.i.i.i.i.i:                                  ; preds = %bb7.i.i.i.i.i.i
  %_10.i16.i.i.i.i.i.i = icmp ne ptr %10, %6
  tail call void @llvm.assume(i1 %_10.i16.i.i.i.i.i.i)
  %12 = getelementptr inbounds i8, ptr %8, i64 3
  %z.i.i.i.i.i.i = load i8, ptr %10, align 1, !alias.scope !57, !noalias !58, !noundef !39
  %_42.i.i.i.i.i.i = shl nuw nsw i32 %_38.i.i.i.i.i.i, 6
  %_44.i.i.i.i.i.i = and i8 %z.i.i.i.i.i.i, 63
  %_43.i.i.i.i.i.i = zext i8 %_44.i.i.i.i.i.i to i32
  %y_z.i.i.i.i.i.i = or i32 %_42.i.i.i.i.i.i, %_43.i.i.i.i.i.i
  %_21.i.i.i.i.i.i = shl nuw nsw i32 %init.i.i.i.i.i.i, 12
  %13 = or i32 %y_z.i.i.i.i.i.i, %_21.i.i.i.i.i.i
  %_22.i.i.i.i.i.i = icmp ugt i8 %x.i.i.i.i.i.i, -17
  br i1 %_22.i.i.i.i.i.i, label %bb11.i.i.i.i.i.i, label %"_ZN87_$LT$core..str..iter..CharIndices$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0c97daac3cd15079E.exit.thread.i.i.i.i"

bb11.i.i.i.i.i.i:                                 ; preds = %bb9.i.i.i.i.i.i
  %_10.i22.i.i.i.i.i.i = icmp ne ptr %12, %6
  tail call void @llvm.assume(i1 %_10.i22.i.i.i.i.i.i)
  %w.i.i.i.i.i.i = load i8, ptr %12, align 1, !alias.scope !57, !noalias !58, !noundef !39
  %_27.i.i.i.i.i.i = shl nuw nsw i32 %init.i.i.i.i.i.i, 18
  %_26.i.i.i.i.i.i = and i32 %_27.i.i.i.i.i.i, 1835008
  %_47.i.i.i.i.i.i = shl nuw nsw i32 %y_z.i.i.i.i.i.i, 6
  %_49.i.i.i.i.i.i = and i8 %w.i.i.i.i.i.i, 63
  %_48.i.i.i.i.i.i = zext i8 %_49.i.i.i.i.i.i to i32
  %_28.i.i.i.i.i.i = or i32 %_47.i.i.i.i.i.i, %_48.i.i.i.i.i.i
  %14 = or i32 %_28.i.i.i.i.i.i, %_26.i.i.i.i.i.i
  %15 = icmp eq i32 %14, 1114112
  br i1 %15, label %"_ZN4core3str21_$LT$impl$u20$str$GT$18trim_start_matches17h09ae1af7c84d99c7E.exit.i", label %"_ZN87_$LT$core..str..iter..CharIndices$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0c97daac3cd15079E.exit.i.i.i.i"

"_ZN87_$LT$core..str..iter..CharIndices$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0c97daac3cd15079E.exit.thread.i.i.i.i": ; preds = %bb9.i.i.i.i.i.i, %bb6.i.i.i.i.i.i, %bb7.i.i.i.i.i.i
  %start3.ph.i.i.i.i = phi ptr [ %10, %bb7.i.i.i.i.i.i ], [ %12, %bb9.i.i.i.i.i.i ], [ %9, %bb6.i.i.i.i.i.i ]
  %.sroa.4.0.i.ph12.i.ph.i.i.i.i = phi i32 [ %11, %bb7.i.i.i.i.i.i ], [ %13, %bb9.i.i.i.i.i.i ], [ %_8.i.i.i.i.i.i, %bb6.i.i.i.i.i.i ]
  %16 = ptrtoint ptr %8 to i64
  %17 = ptrtoint ptr %start3.ph.i.i.i.i to i64
  %_11.i21.i.i.i.i = sub i64 %7, %16
  %18 = add i64 %_11.i21.i.i.i.i, %17
  br label %bb2.i.i.i.i

"_ZN87_$LT$core..str..iter..CharIndices$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0c97daac3cd15079E.exit.i.i.i.i": ; preds = %bb11.i.i.i.i.i.i
  %19 = getelementptr inbounds i8, ptr %8, i64 4
  %20 = add i64 %7, 4
  br label %bb2.i.i.i.i

bb2.i.i.i.i:                                      ; preds = %"_ZN87_$LT$core..str..iter..CharIndices$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0c97daac3cd15079E.exit.i.i.i.i", %"_ZN87_$LT$core..str..iter..CharIndices$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0c97daac3cd15079E.exit.thread.i.i.i.i"
  %21 = phi i64 [ %18, %"_ZN87_$LT$core..str..iter..CharIndices$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0c97daac3cd15079E.exit.thread.i.i.i.i" ], [ %20, %"_ZN87_$LT$core..str..iter..CharIndices$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0c97daac3cd15079E.exit.i.i.i.i" ]
  %22 = phi ptr [ %start3.ph.i.i.i.i, %"_ZN87_$LT$core..str..iter..CharIndices$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0c97daac3cd15079E.exit.thread.i.i.i.i" ], [ %19, %"_ZN87_$LT$core..str..iter..CharIndices$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0c97daac3cd15079E.exit.i.i.i.i" ]
  %.sroa.4.0.i.ph12.i23.i.i.i.i = phi i32 [ %.sroa.4.0.i.ph12.i.ph.i.i.i.i, %"_ZN87_$LT$core..str..iter..CharIndices$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0c97daac3cd15079E.exit.thread.i.i.i.i" ], [ %14, %"_ZN87_$LT$core..str..iter..CharIndices$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0c97daac3cd15079E.exit.i.i.i.i" ]
  switch i32 %.sroa.4.0.i.ph12.i23.i.i.i.i, label %bb3.i.i.i.i.i.i.i [
    i32 32, label %bb5.i.i.i
    i32 13, label %bb5.i.i.i
    i32 12, label %bb5.i.i.i
    i32 11, label %bb5.i.i.i
    i32 10, label %bb5.i.i.i
    i32 9, label %bb5.i.i.i
  ]

bb3.i.i.i.i.i.i.i:                                ; preds = %bb2.i.i.i.i
  %_4.i.i.i.i.i.i.i = icmp ugt i32 %.sroa.4.0.i.ph12.i23.i.i.i.i, 127
  br i1 %_4.i.i.i.i.i.i.i, label %bb6.i.i.i.i.i.i.i, label %"_ZN4core3str21_$LT$impl$u20$str$GT$18trim_start_matches17h09ae1af7c84d99c7E.exit.i"

bb6.i.i.i.i.i.i.i:                                ; preds = %bb3.i.i.i.i.i.i.i
  %_2.i.i.i.i.i.i.i.i = lshr i32 %.sroa.4.0.i.ph12.i23.i.i.i.i, 8
  switch i32 %_2.i.i.i.i.i.i.i.i, label %"_ZN4core3str21_$LT$impl$u20$str$GT$18trim_start_matches17h09ae1af7c84d99c7E.exit.i" [
    i32 0, label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17hdcb0d0e52d47b456E.exit.i.i.i.i"
    i32 22, label %bb4.i.i.i.i.i.i.i.i
    i32 32, label %bb6.i.i.i.i.i.i.i.i
    i32 48, label %bb7.i.i.i.i.i.i.i.i
  ]

bb4.i.i.i.i.i.i.i.i:                              ; preds = %bb6.i.i.i.i.i.i.i
  %23 = icmp eq i32 %.sroa.4.0.i.ph12.i23.i.i.i.i, 5760
  br i1 %23, label %bb5.i.i.i, label %"_ZN4core3str21_$LT$impl$u20$str$GT$18trim_start_matches17h09ae1af7c84d99c7E.exit.i"

bb7.i.i.i.i.i.i.i.i:                              ; preds = %bb6.i.i.i.i.i.i.i
  %24 = icmp eq i32 %.sroa.4.0.i.ph12.i23.i.i.i.i, 12288
  br i1 %24, label %bb5.i.i.i, label %"_ZN4core3str21_$LT$impl$u20$str$GT$18trim_start_matches17h09ae1af7c84d99c7E.exit.i"

bb6.i.i.i.i.i.i.i.i:                              ; preds = %bb6.i.i.i.i.i.i.i
  %25 = and i32 %.sroa.4.0.i.ph12.i23.i.i.i.i, 255
  %_15.i.i.i.i.i.i.i.i = zext i32 %25 to i64
  %26 = getelementptr inbounds [256 x i8], ptr @_ZN4core7unicode12unicode_data11white_space14WHITESPACE_MAP17h816efa1346cc10d5E, i64 0, i64 %_15.i.i.i.i.i.i.i.i
  %_13.i.i.i.i.i.i.i.i = load i8, ptr %26, align 1, !noalias !69, !noundef !39
  %_12.i.i.i.i.i.i.i.i = and i8 %_13.i.i.i.i.i.i.i.i, 2
  %.not15.i.i.i.i = icmp eq i8 %_12.i.i.i.i.i.i.i.i, 0
  br i1 %.not15.i.i.i.i, label %"_ZN4core3str21_$LT$impl$u20$str$GT$18trim_start_matches17h09ae1af7c84d99c7E.exit.i", label %bb5.i.i.i

"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17hdcb0d0e52d47b456E.exit.i.i.i.i": ; preds = %bb6.i.i.i.i.i.i.i
  %27 = and i32 %.sroa.4.0.i.ph12.i23.i.i.i.i, 255
  %_7.i.i.i.i.i.i.i.i = zext i32 %27 to i64
  %28 = getelementptr inbounds [256 x i8], ptr @_ZN4core7unicode12unicode_data11white_space14WHITESPACE_MAP17h816efa1346cc10d5E, i64 0, i64 %_7.i.i.i.i.i.i.i.i
  %_5.i.i.i.i.i.i.i.i = load i8, ptr %28, align 1, !noalias !69, !noundef !39
  %_4.i.i.i.i.i.i.i.i = and i8 %_5.i.i.i.i.i.i.i.i, 1
  %.not16.i.i.i.i = icmp eq i8 %_4.i.i.i.i.i.i.i.i, 0
  br i1 %.not16.i.i.i.i, label %"_ZN4core3str21_$LT$impl$u20$str$GT$18trim_start_matches17h09ae1af7c84d99c7E.exit.i", label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17hdcb0d0e52d47b456E.exit.i.i.i.i", %bb6.i.i.i.i.i.i.i.i, %bb7.i.i.i.i.i.i.i.i, %bb4.i.i.i.i.i.i.i.i, %bb2.i.i.i.i, %bb2.i.i.i.i, %bb2.i.i.i.i, %bb2.i.i.i.i, %bb2.i.i.i.i, %bb2.i.i.i.i
  %_10.i.i.i.i.i.i.i = icmp eq ptr %22, %6
  br i1 %_10.i.i.i.i.i.i.i, label %"_ZN4core3str21_$LT$impl$u20$str$GT$18trim_start_matches17h09ae1af7c84d99c7E.exit.i", label %bb3.i.i.i.i.i.i

"_ZN4core3str21_$LT$impl$u20$str$GT$18trim_start_matches17h09ae1af7c84d99c7E.exit.i": ; preds = %bb5.i.i.i, %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17hdcb0d0e52d47b456E.exit.i.i.i.i", %bb6.i.i.i.i.i.i.i.i, %bb7.i.i.i.i.i.i.i.i, %bb4.i.i.i.i.i.i.i.i, %bb6.i.i.i.i.i.i.i, %bb3.i.i.i.i.i.i.i, %bb11.i.i.i.i.i.i, %bb2.i
  %29 = phi i64 [ 0, %bb2.i ], [ %7, %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17hdcb0d0e52d47b456E.exit.i.i.i.i" ], [ %7, %bb6.i.i.i.i.i.i.i.i ], [ %7, %bb7.i.i.i.i.i.i.i.i ], [ %7, %bb4.i.i.i.i.i.i.i.i ], [ %7, %bb6.i.i.i.i.i.i.i ], [ %7, %bb3.i.i.i.i.i.i.i ], [ %rest.sroa.10.045.i, %bb11.i.i.i.i.i.i ], [ %rest.sroa.10.045.i, %bb5.i.i.i ]
  %30 = getelementptr inbounds i8, ptr %rest.sroa.0.047.i, i64 %29
  %len.i.i = sub i64 %rest.sroa.10.045.i, %29
  %31 = icmp eq i64 %rest.sroa.10.045.i, %29
  br i1 %31, label %bb28.i, label %bb9.i

bb9.i:                                            ; preds = %"_ZN4core3str21_$LT$impl$u20$str$GT$18trim_start_matches17h09ae1af7c84d99c7E.exit.i"
  %_18.i = load i8, ptr %30, align 1, !alias.scope !46, !noundef !39
  %32 = icmp eq i8 %_18.i, 43
  %_22.i = icmp eq i8 %_18.i, 45
  %_17.0.i = or i1 %32, %_22.i
  %end.0.i = zext i1 %_17.0.i to i64
  %_2939.i = icmp ugt i64 %len.i.i, %end.0.i
  br i1 %_2939.i, label %bb17.i, label %bb28.i

bb17.i:                                           ; preds = %bb35.i, %bb9.i
  %end.140.i = phi i64 [ %35, %bb35.i ], [ %end.0.i, %bb9.i ]
  %self.i = getelementptr inbounds [0 x i8], ptr %30, i64 0, i64 %end.140.i
  %33 = load i8, ptr %self.i, align 1, !alias.scope !46, !noundef !39
  %34 = add i8 %33, -58
  %or.cond.i = icmp ult i8 %34, -10
  br i1 %or.cond.i, label %bb20.critedge.i, label %bb35.i

bb35.i:                                           ; preds = %bb17.i
  %35 = add nuw i64 %end.140.i, 1
  %_29.i = icmp ugt i64 %len.i.i, %35
  br i1 %_29.i, label %bb17.i, label %bb20.critedge.i

bb20.critedge.i:                                  ; preds = %bb35.i, %bb17.i
  %end.1.lcssa.i = phi i64 [ %len.i.i, %bb35.i ], [ %end.140.i, %bb17.i ]
  %_37.i = icmp eq i64 %end.1.lcssa.i, %end.0.i
  br i1 %_37.i, label %bb28.i, label %bb22.i

bb22.i:                                           ; preds = %bb20.critedge.i
  %36 = icmp eq i64 %end.1.lcssa.i, 0
  br i1 %36, label %bb38.i, label %bb3.i.i32.i

bb3.i.i32.i:                                      ; preds = %bb22.i
  br i1 %or.cond.i, label %"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h0d9ed69ee3a2c216E.exit.i.i", label %bb5.i.i33.i

bb5.i.i33.i:                                      ; preds = %bb3.i.i32.i
  %37 = icmp eq i64 %len.i.i, %end.1.lcssa.i
  br i1 %37, label %bb38.i, label %bb37.i

"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h0d9ed69ee3a2c216E.exit.i.i": ; preds = %bb3.i.i32.i
  %38 = getelementptr inbounds i8, ptr %30, i64 %end.1.lcssa.i
  %b.i.i.i = load i8, ptr %38, align 1, !alias.scope !70, !noundef !39
  %39 = icmp sgt i8 %b.i.i.i, -65
  br i1 %39, label %bb38.i, label %bb37.i

bb37.i:                                           ; preds = %"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h0d9ed69ee3a2c216E.exit.i.i", %bb5.i.i33.i
  tail call void @_ZN4core3str16slice_error_fail17h696d29a1b388d0feE(ptr noalias noundef nonnull readonly align 1 %30, i64 noundef %len.i.i, i64 noundef 0, i64 noundef %end.1.lcssa.i, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_a7d5910136f77556a5b121e63aba57bb) #15
  unreachable

bb38.i:                                           ; preds = %"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h0d9ed69ee3a2c216E.exit.i.i", %bb5.i.i33.i, %bb22.i
  %40 = tail call i64 @"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$i32$GT$8from_str17h900f738a73745247E"(ptr noalias noundef nonnull readonly align 1 %30, i64 noundef %end.1.lcssa.i)
  %41 = and i64 %40, 1
  %trunc.not.i2 = icmp eq i64 %41, 0
  br i1 %trunc.not.i2, label %bb25.i, label %bb28.i

bb25.i:                                           ; preds = %bb38.i
  %.sroa.5.0.extract.shift.i = lshr i64 %40, 32
  %.sroa.5.0.extract.trunc.i = trunc i64 %.sroa.5.0.extract.shift.i to i32
  %42 = getelementptr inbounds [100 x i32], ptr %data.i, i64 0, i64 %i.048.i
  store i32 %.sroa.5.0.extract.trunc.i, ptr %42, align 4, !noalias !46
  %43 = add nuw nsw i64 %i.048.i, 1
  br i1 %36, label %"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$5index17h6e4652210e4d84b6E.exit.i", label %bb3.i.i.i.i

bb3.i.i.i.i:                                      ; preds = %bb25.i
  br i1 %or.cond.i, label %"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h0d9ed69ee3a2c216E.exit.i.i.i", label %bb5.i.i.i.i

bb5.i.i.i.i:                                      ; preds = %bb3.i.i.i.i
  %44 = icmp eq i64 %len.i.i, %end.1.lcssa.i
  br i1 %44, label %"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$5index17h6e4652210e4d84b6E.exit.i", label %bb2.i.i

"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h0d9ed69ee3a2c216E.exit.i.i.i": ; preds = %bb3.i.i.i.i
  %45 = getelementptr inbounds i8, ptr %30, i64 %end.1.lcssa.i
  %b.i.i.i.i = load i8, ptr %45, align 1, !alias.scope !75, !noundef !39
  %46 = icmp sgt i8 %b.i.i.i.i, -65
  br i1 %46, label %"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$5index17h6e4652210e4d84b6E.exit.i", label %bb2.i.i

bb2.i.i:                                          ; preds = %"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h0d9ed69ee3a2c216E.exit.i.i.i", %bb5.i.i.i.i
  tail call void @_ZN4core3str16slice_error_fail17h696d29a1b388d0feE(ptr noalias noundef nonnull readonly align 1 %30, i64 noundef %len.i.i, i64 noundef %end.1.lcssa.i, i64 noundef %len.i.i, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_561a161b735ec8f02a84320b3843b710) #15
  unreachable

"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$5index17h6e4652210e4d84b6E.exit.i": ; preds = %"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h0d9ed69ee3a2c216E.exit.i.i.i", %bb5.i.i.i.i, %bb25.i
  %47 = getelementptr inbounds i8, ptr %30, i64 %end.1.lcssa.i
  %len2.i.i.i.i = sub i64 %len.i.i, %end.1.lcssa.i
  %exitcond.not.i = icmp eq i64 %43, 100
  br i1 %exitcond.not.i, label %bb28.thread.i, label %bb2.i

bb28.thread.i:                                    ; preds = %"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$5index17h6e4652210e4d84b6E.exit.i"
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %result.i), !noalias !46
  br label %_ZN6driver3src6driver6driver17h98e8ba24abf7dd96E.exit

_ZN6driver3src6driver6driver17h98e8ba24abf7dd96E.exit: ; preds = %bb28.thread.i, %bb28.i
  %i.0.lcssa56.i = phi i64 [ 100, %bb28.thread.i ], [ %i.048.i, %bb28.i ]
  %48 = call fastcc noundef i32 @_ZN6driver3src6driver8call_fma17h3cc3225ca87cdcd9E(ptr noalias noundef nonnull readonly align 4 %data.i, i64 noundef %i.0.lcssa56.i)
  store i32 %48, ptr %result.i, align 4, !noalias !46
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_62.i), !noalias !46
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_66.i), !noalias !46
  store ptr %result.i, ptr %_66.i, align 8, !noalias !46
  %49 = getelementptr inbounds { ptr, ptr }, ptr %_66.i, i64 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %49, align 8, !noalias !46
  %50 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_62.i, i64 0, i32 1
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %50, align 8, !alias.scope !82, !noalias !85
  %51 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_62.i, i64 0, i32 1, i32 1
  store i64 2, ptr %51, align 8, !alias.scope !82, !noalias !85
  store ptr null, ptr %_62.i, align 8, !alias.scope !82, !noalias !85
  %52 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_62.i, i64 0, i32 2
  store ptr %_66.i, ptr %52, align 8, !alias.scope !82, !noalias !85
  %53 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_62.i, i64 0, i32 2, i32 1
  store i64 1, ptr %53, align 8, !alias.scope !82, !noalias !85
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_62.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_62.i), !noalias !46
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_66.i), !noalias !46
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %result.i), !noalias !46
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %data.i), !noalias !46
  ret void
}

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_ZN4core3ffi5c_str4CStr8from_ptr9strlen_rt17h463292534e232c62E(ptr noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nonlazybind uwtable
declare void @_ZN4core3ffi5c_str4CStr6to_str17h7660279a6932e49cE(ptr noalias nocapture noundef sret(%"core::result::Result<&str, core::str::error::Utf8Error>") dereferenceable(24), ptr noalias noundef nonnull readonly align 1, i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6result13unwrap_failed17h008634a1b68516fbE(ptr noalias noundef nonnull readonly align 1, i64 noundef, ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 dereferenceable(24), ptr noalias noundef readonly align 8 dereferenceable(24)) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice5index24slice_end_index_len_fail17h63e54c65524702d3E(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 dereferenceable(24)) unnamed_addr #7

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core3str16slice_error_fail17h696d29a1b388d0feE(ptr noalias noundef nonnull readonly align 1, i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 dereferenceable(24)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare i64 @"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$i32$GT$8from_str17h900f738a73745247E"(ptr noalias noundef nonnull readonly align 1, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE"(ptr noalias noundef readonly align 4 dereferenceable(4), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef readonly dereferenceable(48)) unnamed_addr #0

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @"_ZN4core3ptr48drop_in_place$LT$core..str..error..Utf8Error$GT$17h1d6f64b633b1d7c5E"(ptr nocapture readnone %_1) unnamed_addr #14 {
start:
  ret void
}

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN64_$LT$core..str..error..Utf8Error$u20$as$u20$core..fmt..Debug$GT$3fmt17he5298eb5cbc8b1a7E"(ptr noalias noundef readonly align 8 dereferenceable(16), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
define void @fma_array(ptr nocapture noundef writeonly %out, ptr nocapture noundef readonly %mul1, ptr nocapture noundef readonly %mul2, ptr nocapture noundef readonly %add, i32 noundef %len) unnamed_addr #0 {
start:
  %len1 = sext i32 %len to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94)
  %.not.i = icmp eq i32 %len, 0
  br i1 %.not.i, label %_ZN6driver3src6driver9fma_array17h2ecb1658bce58aceE.exit, label %bb2.i.preheader

bb2.i.preheader:                                  ; preds = %start
  %0 = add nsw i64 %len1, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %0, i64 %len1)
  %1 = add nsw i64 %umin, 1
  %min.iters.check = icmp ult i64 %1, 5
  br i1 %min.iters.check, label %bb2.i.preheader7, label %vector.ph

vector.ph:                                        ; preds = %bb2.i.preheader
  %n.mod.vf = and i64 %1, 3
  %2 = icmp eq i64 %n.mod.vf, 0
  %3 = select i1 %2, i64 4, i64 %n.mod.vf
  %n.vec = sub i64 %1, %3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %4 = getelementptr inbounds [0 x i32], ptr %mul1, i64 0, i64 %index
  %wide.load = load <4 x i32>, ptr %4, align 4, !alias.scope !90, !noalias !96
  %5 = getelementptr inbounds [0 x i32], ptr %mul2, i64 0, i64 %index
  %wide.load5 = load <4 x i32>, ptr %5, align 4, !alias.scope !92, !noalias !97
  %6 = mul <4 x i32> %wide.load5, %wide.load
  %7 = getelementptr inbounds [0 x i32], ptr %add, i64 0, i64 %index
  %wide.load6 = load <4 x i32>, ptr %7, align 4, !alias.scope !94, !noalias !98
  %8 = getelementptr inbounds [0 x i32], ptr %out, i64 0, i64 %index
  %9 = add <4 x i32> %6, %wide.load6
  store <4 x i32> %9, ptr %8, align 4, !alias.scope !87, !noalias !99
  %index.next = add nuw i64 %index, 4
  %10 = icmp eq i64 %index.next, %n.vec
  br i1 %10, label %bb2.i.preheader7, label %vector.body, !llvm.loop !100

bb2.i.preheader7:                                 ; preds = %vector.body, %bb2.i.preheader
  %iter.sroa.0.010.i.ph = phi i64 [ 0, %bb2.i.preheader ], [ %n.vec, %vector.body ]
  br label %bb2.i

bb2.i:                                            ; preds = %bb8.i, %bb2.i.preheader7
  %iter.sroa.0.010.i = phi i64 [ %11, %bb8.i ], [ %iter.sroa.0.010.i.ph, %bb2.i.preheader7 ]
  %exitcond.not.i = icmp eq i64 %iter.sroa.0.010.i, %len1
  br i1 %exitcond.not.i, label %panic.i, label %bb8.i, !prof !38

panic.i:                                          ; preds = %bb2.i
  tail call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 noundef %len1, i64 noundef %len1, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_9e2f840d8b0c6d2631ecb1eecf99b547) #15, !noalias !101
  unreachable

bb8.i:                                            ; preds = %bb2.i
  %11 = add nuw i64 %iter.sroa.0.010.i, 1
  %12 = getelementptr inbounds [0 x i32], ptr %mul1, i64 0, i64 %iter.sroa.0.010.i
  %_14.i = load i32, ptr %12, align 4, !alias.scope !90, !noalias !96, !noundef !39
  %13 = getelementptr inbounds [0 x i32], ptr %mul2, i64 0, i64 %iter.sroa.0.010.i
  %_17.i = load i32, ptr %13, align 4, !alias.scope !92, !noalias !97, !noundef !39
  %_13.i = mul i32 %_17.i, %_14.i
  %14 = getelementptr inbounds [0 x i32], ptr %add, i64 0, i64 %iter.sroa.0.010.i
  %_20.i = load i32, ptr %14, align 4, !alias.scope !94, !noalias !98, !noundef !39
  %15 = getelementptr inbounds [0 x i32], ptr %out, i64 0, i64 %iter.sroa.0.010.i
  %16 = add i32 %_13.i, %_20.i
  store i32 %16, ptr %15, align 4, !alias.scope !87, !noalias !99
  %exitcond16.not.i = icmp eq i64 %11, %len1
  br i1 %exitcond16.not.i, label %_ZN6driver3src6driver9fma_array17h2ecb1658bce58aceE.exit, label %bb2.i, !llvm.loop !102

_ZN6driver3src6driver9fma_array17h2ecb1658bce58aceE.exit: ; preds = %bb8.i, %start
  ret void
}

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { noreturn }
attributes #16 = { nounwind }
attributes #17 = { noinline }
attributes #18 = { noinline noreturn nounwind }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!3, !5}
!3 = distinct !{!3, !4, !"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h69cad298802d6354E: argument 0"}
!4 = distinct !{!4, !"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h69cad298802d6354E"}
!5 = distinct !{!5, !6, !"_ZN5alloc3vec9from_elem17h068007bd146cd033E: argument 0"}
!6 = distinct !{!6, !"_ZN5alloc3vec9from_elem17h068007bd146cd033E"}
!7 = !{!8, !10}
!8 = distinct !{!8, !9, !"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h69cad298802d6354E: argument 0"}
!9 = distinct !{!9, !"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h69cad298802d6354E"}
!10 = distinct !{!10, !11, !"_ZN5alloc3vec9from_elem17h068007bd146cd033E: argument 0"}
!11 = distinct !{!11, !"_ZN5alloc3vec9from_elem17h068007bd146cd033E"}
!12 = !{!13, !8, !10}
!13 = distinct !{!13, !14, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11extend_with17hf929ca2064abe527E: %self"}
!14 = distinct !{!14, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11extend_with17hf929ca2064abe527E"}
!15 = distinct !{!15, !16, !17}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = distinct !{!18, !17, !16}
!19 = !{!20, !22}
!20 = distinct !{!20, !21, !"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h69cad298802d6354E: argument 0"}
!21 = distinct !{!21, !"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h69cad298802d6354E"}
!22 = distinct !{!22, !23, !"_ZN5alloc3vec9from_elem17h068007bd146cd033E: argument 0"}
!23 = distinct !{!23, !"_ZN5alloc3vec9from_elem17h068007bd146cd033E"}
!24 = !{!25}
!25 = distinct !{!25, !26, !"_ZN6driver3src6driver9fma_array17h2ecb1658bce58aceE: %out.0"}
!26 = distinct !{!26, !"_ZN6driver3src6driver9fma_array17h2ecb1658bce58aceE"}
!27 = !{!28}
!28 = distinct !{!28, !26, !"_ZN6driver3src6driver9fma_array17h2ecb1658bce58aceE: %mul1.0"}
!29 = !{!30}
!30 = distinct !{!30, !26, !"_ZN6driver3src6driver9fma_array17h2ecb1658bce58aceE: %mul2.0"}
!31 = !{!32}
!32 = distinct !{!32, !26, !"_ZN6driver3src6driver9fma_array17h2ecb1658bce58aceE: %add.0"}
!33 = !{!25, !30, !32}
!34 = !{!25, !28, !32}
!35 = !{!25, !28, !30}
!36 = !{!28, !30, !32}
!37 = distinct !{!37, !16, !17}
!38 = !{!"branch_weights", i32 1, i32 2000}
!39 = !{}
!40 = distinct !{!40, !17, !16}
!41 = !{!42}
!42 = distinct !{!42, !43, !"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h38d2f8f80620b971E: %self"}
!43 = distinct !{!43, !"_ZN4core6result19Result$LT$T$C$E$GT$6expect17h38d2f8f80620b971E"}
!44 = !{i64 0, i64 2}
!45 = !{i64 1}
!46 = !{!47}
!47 = distinct !{!47, !48, !"_ZN6driver3src6driver6driver17h98e8ba24abf7dd96E: %in_0.0"}
!48 = distinct !{!48, !"_ZN6driver3src6driver6driver17h98e8ba24abf7dd96E"}
!49 = !{!50, !52}
!50 = distinct !{!50, !51, !"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h84c1c4a79a233c20E: %slice.0"}
!51 = distinct !{!51, !"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h84c1c4a79a233c20E"}
!52 = distinct !{!52, !53, !"_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h1bb9f8b76c341a19E: %slice.0"}
!53 = distinct !{!53, !"_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h1bb9f8b76c341a19E"}
!54 = !{!55}
!55 = distinct !{!55, !56, !"_ZN4core3str21_$LT$impl$u20$str$GT$18trim_start_matches17h09ae1af7c84d99c7E: %self.0"}
!56 = distinct !{!56, !"_ZN4core3str21_$LT$impl$u20$str$GT$18trim_start_matches17h09ae1af7c84d99c7E"}
!57 = !{!55, !47}
!58 = !{!59, !61, !63, !65, !66, !68}
!59 = distinct !{!59, !60, !"_ZN4core3str11validations15next_code_point17h3d023179b661daadE: %bytes"}
!60 = distinct !{!60, !"_ZN4core3str11validations15next_code_point17h3d023179b661daadE"}
!61 = distinct !{!61, !62, !"_ZN87_$LT$core..str..iter..CharIndices$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0c97daac3cd15079E: %self"}
!62 = distinct !{!62, !"_ZN87_$LT$core..str..iter..CharIndices$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0c97daac3cd15079E"}
!63 = distinct !{!63, !64, !"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h8215b993a150afcbE: argument 0"}
!64 = distinct !{!64, !"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h8215b993a150afcbE"}
!65 = distinct !{!65, !64, !"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h8215b993a150afcbE: %self"}
!66 = distinct !{!66, !67, !"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h4a0f67106b47d7fdE: argument 0"}
!67 = distinct !{!67, !"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h4a0f67106b47d7fdE"}
!68 = distinct !{!68, !67, !"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17h4a0f67106b47d7fdE: %self"}
!69 = !{!63, !65, !66, !68, !55, !47}
!70 = !{!71, !73, !47}
!71 = distinct !{!71, !72, !"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h0d9ed69ee3a2c216E: %self.0"}
!72 = distinct !{!72, !"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h0d9ed69ee3a2c216E"}
!73 = distinct !{!73, !74, !"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h58ea642dc466a9d6E: %slice.0"}
!74 = distinct !{!74, !"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h58ea642dc466a9d6E"}
!75 = !{!76, !78, !80, !47}
!76 = distinct !{!76, !77, !"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h0d9ed69ee3a2c216E: %self.0"}
!77 = distinct !{!77, !"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h0d9ed69ee3a2c216E"}
!78 = distinct !{!78, !79, !"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17hc8ce0f66ba7f5ab4E: %slice.0"}
!79 = distinct !{!79, !"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17hc8ce0f66ba7f5ab4E"}
!80 = distinct !{!80, !81, !"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$5index17h6e4652210e4d84b6E: %slice.0"}
!81 = distinct !{!81, !"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$5index17h6e4652210e4d84b6E"}
!82 = !{!83}
!83 = distinct !{!83, !84, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!84 = distinct !{!84, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!85 = !{!86, !47}
!86 = distinct !{!86, !84, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!87 = !{!88}
!88 = distinct !{!88, !89, !"_ZN6driver3src6driver9fma_array17h2ecb1658bce58aceE: %out.0"}
!89 = distinct !{!89, !"_ZN6driver3src6driver9fma_array17h2ecb1658bce58aceE"}
!90 = !{!91}
!91 = distinct !{!91, !89, !"_ZN6driver3src6driver9fma_array17h2ecb1658bce58aceE: %mul1.0"}
!92 = !{!93}
!93 = distinct !{!93, !89, !"_ZN6driver3src6driver9fma_array17h2ecb1658bce58aceE: %mul2.0"}
!94 = !{!95}
!95 = distinct !{!95, !89, !"_ZN6driver3src6driver9fma_array17h2ecb1658bce58aceE: %add.0"}
!96 = !{!88, !93, !95}
!97 = !{!88, !91, !95}
!98 = !{!88, !91, !93}
!99 = !{!91, !93, !95}
!100 = distinct !{!100, !16, !17}
!101 = !{!88, !91, !93, !95}
!102 = distinct !{!102, !17, !16}
