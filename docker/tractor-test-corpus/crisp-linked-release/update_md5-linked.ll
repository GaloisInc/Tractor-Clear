; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; ASSERT EQ: i1 1 = call i1 @run_test_1()

%"src::lib::TflacMd5" = type { i32, [1 x i32], i64, [72 x i8] }
%"src::lib::Tflac" = type { %"src::lib::TflacMd5", i32, i32 }

@alloc_f5ffd2fd1476bab43ad89fb40c72d0c5 = private unnamed_addr constant <{ [10 x i8] }> <{ [10 x i8] c"src/lib.rs" }>, align 1
@alloc_60ace58d293c4f67c90027ee6b5d3871 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\002\00\00\00(\00\00\00" }>, align 8
@alloc_9d318b027e3578c7a1555638383b7d7e = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00@\00\00\00\12\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define void @tflac_md5_addsample(ptr nocapture noundef %m, i32 noundef %bits, i64 noundef %val) unnamed_addr #0 {
start:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2)
  %0 = getelementptr inbounds %"src::lib::TflacMd5", ptr %m, i64 0, i32 2
  %self.i = load i64, ptr %0, align 8, !alias.scope !2, !noundef !5
  %rhs.i = zext i32 %bits to i64
  %_4.i = add i64 %self.i, %rhs.i
  store i64 %_4.i, ptr %0, align 8, !alias.scope !2
  %1 = lshr i32 %bits, 3
  %self1.i = load i32, ptr %m, align 8, !alias.scope !2, !noundef !5
  %pos2.i = and i32 %self1.i, 63
  %self2.i = getelementptr inbounds %"src::lib::TflacMd5", ptr %m, i64 0, i32 3
  %_13.i = zext i32 %pos2.i to i64
  %2 = getelementptr inbounds i8, ptr %self2.i, i64 %_13.i
  store i64 %val, ptr %2, align 1, !alias.scope !6
  %_16.i = add i32 %self1.i, %1
  store i32 %_16.i, ptr %m, align 8, !alias.scope !2
  %_19.i = icmp ugt i32 %_16.i, 63
  br i1 %_19.i, label %bb2.i, label %_ZN14update_md5_lib3src3lib19tflac_md5_addsample17h2a37329d26349ddfE.exit

bb2.i:                                            ; preds = %start
  %_21.i = and i32 %_16.i, 63
  store i32 %_21.i, ptr %m, align 8, !alias.scope !2
  %3 = icmp eq i32 %_21.i, 0
  br i1 %3, label %_ZN14update_md5_lib3src3lib19tflac_md5_addsample17h2a37329d26349ddfE.exit, label %bb4.preheader.i

bb4.preheader.i:                                  ; preds = %bb2.i
  %4 = zext i32 %_21.i to i64
  br label %bb4.i

bb4.i:                                            ; preds = %bb6.i, %bb4.preheader.i
  %indvars.iv.i = phi i64 [ %4, %bb4.preheader.i ], [ %indvars.iv.next.i, %bb6.i ]
  %5 = add nuw nsw i64 %indvars.iv.i, 63
  %_32.i = icmp ult i64 %indvars.iv.i, 9
  br i1 %_32.i, label %bb6.i, label %panic.i, !prof !11

panic.i:                                          ; preds = %bb4.i
  tail call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 noundef %5, i64 noundef 72, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_60ace58d293c4f67c90027ee6b5d3871) #6, !noalias !2
  unreachable

bb6.i:                                            ; preds = %bb4.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %_33.i = and i64 %indvars.iv.next.i, 4294967295
  %6 = getelementptr inbounds %"src::lib::TflacMd5", ptr %m, i64 0, i32 3, i64 %5
  %_27.i = load i8, ptr %6, align 1, !alias.scope !2, !noundef !5
  %7 = getelementptr inbounds %"src::lib::TflacMd5", ptr %m, i64 0, i32 3, i64 %_33.i
  store i8 %_27.i, ptr %7, align 1, !alias.scope !2
  %8 = icmp eq i64 %_33.i, 0
  br i1 %8, label %_ZN14update_md5_lib3src3lib19tflac_md5_addsample17h2a37329d26349ddfE.exit, label %bb4.i

_ZN14update_md5_lib3src3lib19tflac_md5_addsample17h2a37329d26349ddfE.exit: ; preds = %bb6.i, %bb2.i, %start
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind nonlazybind willreturn memory(argmem: write, inaccessiblemem: readwrite) uwtable
define void @tflac_pack_u64le(ptr nocapture noundef writeonly %d, i64 noundef %n) unnamed_addr #3 {
start:
  store i64 %n, ptr %d, align 1, !alias.scope !12
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @update_md5(ptr nocapture noundef %t, ptr nocapture noundef readonly %samples) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i64 0, i32 1
  %self = load i32, ptr %0, align 8, !noundef !5
  %1 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i64 0, i32 2
  %rhs = load i32, ptr %1, align 4, !noundef !5
  %_5 = mul i32 %rhs, %self
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20)
  %2 = getelementptr inbounds %"src::lib::TflacMd5", ptr %t, i64 0, i32 2
  %self2.i.i = getelementptr inbounds %"src::lib::TflacMd5", ptr %t, i64 0, i32 3
  %_9.i.i = icmp ult i32 %_5, 8
  br i1 %_9.i.i, label %bb3.i.i, label %"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hf9602d8cf97d4778E.exit.i"

bb3.i.i:                                          ; preds = %_ZN14update_md5_lib3src3lib19tflac_md5_addsample17h2a37329d26349ddfE.exit.3.i, %_ZN14update_md5_lib3src3lib19tflac_md5_addsample17h2a37329d26349ddfE.exit.2.i, %_ZN14update_md5_lib3src3lib19tflac_md5_addsample17h2a37329d26349ddfE.exit.1.i, %_ZN14update_md5_lib3src3lib19tflac_md5_addsample17h2a37329d26349ddfE.exit.i, %start
  %_15.lcssa.i = phi i64 [ 8, %start ], [ 40, %_ZN14update_md5_lib3src3lib19tflac_md5_addsample17h2a37329d26349ddfE.exit.i ], [ 72, %_ZN14update_md5_lib3src3lib19tflac_md5_addsample17h2a37329d26349ddfE.exit.1.i ], [ 104, %_ZN14update_md5_lib3src3lib19tflac_md5_addsample17h2a37329d26349ddfE.exit.2.i ], [ 136, %_ZN14update_md5_lib3src3lib19tflac_md5_addsample17h2a37329d26349ddfE.exit.3.i ]
  %sample_len = zext i32 %_5 to i64
  tail call void @_ZN4core5slice5index24slice_end_index_len_fail17h63e54c65524702d3E(i64 noundef %_15.lcssa.i, i64 noundef %sample_len, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_9d318b027e3578c7a1555638383b7d7e) #6, !noalias !22
  unreachable

"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hf9602d8cf97d4778E.exit.i": ; preds = %start
  %.promoted.i = load i64, ptr %2, align 8, !alias.scope !25, !noalias !20
  %t.promoted.i = load i32, ptr %t, align 8, !alias.scope !25, !noalias !20
  %3 = getelementptr inbounds [0 x i32], ptr %samples, i64 0, i64 4
  %_48.i = load i32, ptr %3, align 4, !alias.scope !20, !noalias !17, !noundef !5
  %4 = and i32 %_48.i, 255
  %_46.i = zext i32 %4 to i64
  %_45.i = shl nuw nsw i64 %_46.i, 32
  %_20.i = load i32, ptr %samples, align 4, !alias.scope !20, !noalias !17, !noundef !5
  %5 = and i32 %_20.i, 255
  %6 = getelementptr inbounds [0 x i32], ptr %samples, i64 0, i64 1
  %_27.i = load i32, ptr %6, align 4, !alias.scope !20, !noalias !17, !noundef !5
  %7 = shl i32 %_27.i, 8
  %8 = and i32 %7, 65280
  %9 = or i32 %8, %5
  %10 = getelementptr inbounds [0 x i32], ptr %samples, i64 0, i64 2
  %_34.i = load i32, ptr %10, align 4, !alias.scope !20, !noalias !17, !noundef !5
  %11 = shl i32 %_34.i, 16
  %12 = and i32 %11, 16711680
  %13 = or i32 %9, %12
  %14 = getelementptr inbounds [0 x i32], ptr %samples, i64 0, i64 3
  %_41.i = load i32, ptr %14, align 4, !alias.scope !20, !noalias !17, !noundef !5
  %15 = shl i32 %_41.i, 24
  %16 = or i32 %13, %15
  %17 = zext i32 %16 to i64
  %18 = or i64 %_45.i, %17
  %19 = getelementptr inbounds [0 x i32], ptr %samples, i64 0, i64 5
  %_55.i = load i32, ptr %19, align 4, !alias.scope !20, !noalias !17, !noundef !5
  %20 = and i32 %_55.i, 255
  %_53.i = zext i32 %20 to i64
  %_52.i = shl nuw nsw i64 %_53.i, 40
  %21 = or i64 %18, %_52.i
  %22 = getelementptr inbounds [0 x i32], ptr %samples, i64 0, i64 6
  %_62.i = load i32, ptr %22, align 4, !alias.scope !20, !noalias !17, !noundef !5
  %23 = and i32 %_62.i, 255
  %_60.i = zext i32 %23 to i64
  %_59.i = shl nuw nsw i64 %_60.i, 48
  %24 = or i64 %21, %_59.i
  %25 = getelementptr inbounds [0 x i32], ptr %samples, i64 0, i64 7
  %_69.i = load i32, ptr %25, align 4, !alias.scope !20, !noalias !17, !noundef !5
  %_67.i = zext i32 %_69.i to i64
  %_66.i = shl i64 %_67.i, 56
  %26 = or i64 %24, %_66.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28)
  %_4.i.i = add i64 %.promoted.i, 64
  store i64 %_4.i.i, ptr %2, align 8, !alias.scope !25, !noalias !20
  %pos2.i.i = and i32 %t.promoted.i, 63
  %_13.i.i = zext i32 %pos2.i.i to i64
  %27 = getelementptr inbounds i8, ptr %self2.i.i, i64 %_13.i.i
  store i64 %26, ptr %27, align 1, !alias.scope !29, !noalias !20
  %_16.i.i = add i32 %t.promoted.i, 8
  store i32 %_16.i.i, ptr %t, align 8, !alias.scope !25, !noalias !20
  %_19.i.i = icmp ugt i32 %_16.i.i, 63
  br i1 %_19.i.i, label %bb2.i.i, label %_ZN14update_md5_lib3src3lib19tflac_md5_addsample17h2a37329d26349ddfE.exit.i

bb2.i.i:                                          ; preds = %"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hf9602d8cf97d4778E.exit.i"
  %_21.i.i = and i32 %_16.i.i, 63
  store i32 %_21.i.i, ptr %t, align 8, !alias.scope !25, !noalias !20
  %28 = icmp eq i32 %_21.i.i, 0
  br i1 %28, label %_ZN14update_md5_lib3src3lib19tflac_md5_addsample17h2a37329d26349ddfE.exit.i, label %bb4.preheader.i.i

bb4.preheader.i.i:                                ; preds = %bb2.i.i
  %29 = zext i32 %_21.i.i to i64
  br label %bb4.i.i

bb4.i.i:                                          ; preds = %bb6.i.i, %bb4.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %29, %bb4.preheader.i.i ], [ %indvars.iv.next.i.i, %bb6.i.i ]
  %30 = add nuw nsw i64 %indvars.iv.i.i, 63
  %_32.i.i = icmp ult i64 %indvars.iv.i.i, 9
  br i1 %_32.i.i, label %bb6.i.i, label %panic.i.i, !prof !11

panic.i.i:                                        ; preds = %bb4.i.4.i, %bb4.i.3.i.6, %bb4.i.3.i.5, %bb4.i.3.i.4, %bb4.i.3.i.3, %bb4.i.3.i.2, %bb4.i.3.i.1, %bb4.preheader.i.3.i, %bb4.i.2.i, %bb4.i.1.i.6, %bb4.i.1.i.5, %bb4.i.1.i.4, %bb4.i.1.i.3, %bb4.i.1.i.2, %bb4.i.1.i.1, %bb4.preheader.i.1.i, %bb4.i.i
  %.lcssa.i = phi i64 [ %204, %bb4.i.4.i ], [ %149, %bb4.preheader.i.3.i ], [ %153, %bb4.i.3.i.1 ], [ %157, %bb4.i.3.i.2 ], [ %161, %bb4.i.3.i.3 ], [ %165, %bb4.i.3.i.4 ], [ %169, %bb4.i.3.i.5 ], [ %173, %bb4.i.3.i.6 ], [ %117, %bb4.i.2.i ], [ %62, %bb4.preheader.i.1.i ], [ %66, %bb4.i.1.i.1 ], [ %70, %bb4.i.1.i.2 ], [ %74, %bb4.i.1.i.3 ], [ %78, %bb4.i.1.i.4 ], [ %82, %bb4.i.1.i.5 ], [ %86, %bb4.i.1.i.6 ], [ %30, %bb4.i.i ]
  tail call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 noundef %.lcssa.i, i64 noundef 72, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_60ace58d293c4f67c90027ee6b5d3871) #6, !noalias !34
  unreachable

bb6.i.i:                                          ; preds = %bb4.i.i
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  %_33.i.i = and i64 %indvars.iv.next.i.i, 4294967295
  %31 = getelementptr inbounds %"src::lib::TflacMd5", ptr %t, i64 0, i32 3, i64 %30
  %_27.i.i = load i8, ptr %31, align 1, !alias.scope !25, !noalias !20, !noundef !5
  %32 = getelementptr inbounds %"src::lib::TflacMd5", ptr %t, i64 0, i32 3, i64 %_33.i.i
  store i8 %_27.i.i, ptr %32, align 1, !alias.scope !25, !noalias !20
  %33 = icmp eq i64 %_33.i.i, 0
  br i1 %33, label %_ZN14update_md5_lib3src3lib19tflac_md5_addsample17h2a37329d26349ddfE.exit.i, label %bb4.i.i

_ZN14update_md5_lib3src3lib19tflac_md5_addsample17h2a37329d26349ddfE.exit.i: ; preds = %bb6.i.i, %bb2.i.i, %"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hf9602d8cf97d4778E.exit.i"
  %_21.i33.i = phi i32 [ %_16.i.i, %"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hf9602d8cf97d4778E.exit.i" ], [ 0, %bb2.i.i ], [ %_21.i.i, %bb6.i.i ]
  %_9.i.1.i = icmp ult i32 %_5, 40
  br i1 %_9.i.1.i, label %bb3.i.i, label %"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hf9602d8cf97d4778E.exit.1.i"

"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hf9602d8cf97d4778E.exit.1.i": ; preds = %_ZN14update_md5_lib3src3lib19tflac_md5_addsample17h2a37329d26349ddfE.exit.i
  %34 = getelementptr inbounds i32, ptr %samples, i64 32
  %35 = getelementptr inbounds i32, ptr %samples, i64 36
  %_48.1.i = load i32, ptr %35, align 4, !alias.scope !20, !noalias !17, !noundef !5
  %36 = and i32 %_48.1.i, 255
  %_46.1.i = zext i32 %36 to i64
  %_45.1.i = shl nuw nsw i64 %_46.1.i, 32
  %_20.1.i = load i32, ptr %34, align 4, !alias.scope !20, !noalias !17, !noundef !5
  %37 = and i32 %_20.1.i, 255
  %38 = getelementptr inbounds i32, ptr %samples, i64 33
  %_27.1.i = load i32, ptr %38, align 4, !alias.scope !20, !noalias !17, !noundef !5
  %39 = shl i32 %_27.1.i, 8
  %40 = and i32 %39, 65280
  %41 = or i32 %40, %37
  %42 = getelementptr inbounds i32, ptr %samples, i64 34
  %_34.1.i = load i32, ptr %42, align 4, !alias.scope !20, !noalias !17, !noundef !5
  %43 = shl i32 %_34.1.i, 16
  %44 = and i32 %43, 16711680
  %45 = or i32 %41, %44
  %46 = getelementptr inbounds i32, ptr %samples, i64 35
  %_41.1.i = load i32, ptr %46, align 4, !alias.scope !20, !noalias !17, !noundef !5
  %47 = shl i32 %_41.1.i, 24
  %48 = or i32 %45, %47
  %49 = zext i32 %48 to i64
  %50 = or i64 %_45.1.i, %49
  %51 = getelementptr inbounds i32, ptr %samples, i64 37
  %_55.1.i = load i32, ptr %51, align 4, !alias.scope !20, !noalias !17, !noundef !5
  %52 = and i32 %_55.1.i, 255
  %_53.1.i = zext i32 %52 to i64
  %_52.1.i = shl nuw nsw i64 %_53.1.i, 40
  %53 = or i64 %50, %_52.1.i
  %54 = getelementptr inbounds i32, ptr %samples, i64 38
  %_62.1.i = load i32, ptr %54, align 4, !alias.scope !20, !noalias !17, !noundef !5
  %55 = and i32 %_62.1.i, 255
  %_60.1.i = zext i32 %55 to i64
  %_59.1.i = shl nuw nsw i64 %_60.1.i, 48
  %56 = or i64 %53, %_59.1.i
  %57 = getelementptr inbounds i32, ptr %samples, i64 39
  %_69.1.i = load i32, ptr %57, align 4, !alias.scope !20, !noalias !17, !noundef !5
  %_67.1.i = zext i32 %_69.1.i to i64
  %_66.1.i = shl i64 %_67.1.i, 56
  %58 = or i64 %56, %_66.1.i
  %_4.i.1.i = add i64 %.promoted.i, 128
  store i64 %_4.i.1.i, ptr %2, align 8, !alias.scope !35, !noalias !20
  %_13.i.1.i = zext i32 %_21.i33.i to i64
  %59 = getelementptr inbounds i8, ptr %self2.i.i, i64 %_13.i.1.i
  store i64 %58, ptr %59, align 1, !alias.scope !37, !noalias !20
  %_16.i.1.i = add nuw nsw i32 %_21.i33.i, 8
  store i32 %_16.i.1.i, ptr %t, align 8, !alias.scope !35, !noalias !20
  %_19.i.1.i = icmp ugt i32 %_21.i33.i, 55
  br i1 %_19.i.1.i, label %bb2.i.1.i, label %_ZN14update_md5_lib3src3lib19tflac_md5_addsample17h2a37329d26349ddfE.exit.1.i

bb2.i.1.i:                                        ; preds = %"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hf9602d8cf97d4778E.exit.1.i"
  %_21.i.1.i = and i32 %_16.i.1.i, 63
  store i32 %_21.i.1.i, ptr %t, align 8, !alias.scope !35, !noalias !20
  %60 = icmp eq i32 %_21.i.1.i, 0
  br i1 %60, label %_ZN14update_md5_lib3src3lib19tflac_md5_addsample17h2a37329d26349ddfE.exit.1.i, label %bb4.preheader.i.1.i

bb4.preheader.i.1.i:                              ; preds = %bb2.i.1.i
  %61 = zext i32 %_21.i.1.i to i64
  %62 = add nuw nsw i64 %61, 63
  %_32.i.1.i = icmp ult i32 %_21.i.1.i, 9
  br i1 %_32.i.1.i, label %bb6.i.1.i, label %panic.i.i, !prof !11

bb6.i.1.i:                                        ; preds = %bb4.preheader.i.1.i
  %indvars.iv.next.i.1.i = add nuw nsw i64 %61, 4294967295
  %_33.i.1.i = and i64 %indvars.iv.next.i.1.i, 4294967295
  %63 = getelementptr inbounds %"src::lib::TflacMd5", ptr %t, i64 0, i32 3, i64 %62
  %_27.i.1.i = load i8, ptr %63, align 1, !alias.scope !35, !noalias !20, !noundef !5
  %64 = getelementptr inbounds %"src::lib::TflacMd5", ptr %t, i64 0, i32 3, i64 %_33.i.1.i
  store i8 %_27.i.1.i, ptr %64, align 1, !alias.scope !35, !noalias !20
  %65 = icmp eq i64 %_33.i.1.i, 0
  br i1 %65, label %_ZN14update_md5_lib3src3lib19tflac_md5_addsample17h2a37329d26349ddfE.exit.1.i, label %bb4.i.1.i.1

bb4.i.1.i.1:                                      ; preds = %bb6.i.1.i
  %66 = add nuw nsw i64 %61, 62
  %_32.i.1.i.1 = icmp ult i32 %_21.i.1.i, 10
  br i1 %_32.i.1.i.1, label %bb6.i.1.i.1, label %panic.i.i, !prof !11

bb6.i.1.i.1:                                      ; preds = %bb4.i.1.i.1
  %indvars.iv.next.i.1.i.1 = add nsw i64 %61, -2
  %_33.i.1.i.1 = and i64 %indvars.iv.next.i.1.i.1, 4294967295
  %67 = getelementptr inbounds %"src::lib::TflacMd5", ptr %t, i64 0, i32 3, i64 %66
  %_27.i.1.i.1 = load i8, ptr %67, align 1, !alias.scope !35, !noalias !20, !noundef !5
  %68 = getelementptr inbounds %"src::lib::TflacMd5", ptr %t, i64 0, i32 3, i64 %_33.i.1.i.1
  store i8 %_27.i.1.i.1, ptr %68, align 1, !alias.scope !35, !noalias !20
  %69 = icmp eq i64 %_33.i.1.i.1, 0
  br i1 %69, label %_ZN14update_md5_lib3src3lib19tflac_md5_addsample17h2a37329d26349ddfE.exit.1.i, label %bb4.i.1.i.2

bb4.i.1.i.2:                                      ; preds = %bb6.i.1.i.1
  %70 = add nuw nsw i64 %61, 61
  %_32.i.1.i.2 = icmp ult i64 %indvars.iv.next.i.1.i.1, 9
  br i1 %_32.i.1.i.2, label %bb6.i.1.i.2, label %panic.i.i, !prof !11

bb6.i.1.i.2:                                      ; preds = %bb4.i.1.i.2
  %indvars.iv.next.i.1.i.2 = add nsw i64 %61, -3
  %_33.i.1.i.2 = and i64 %indvars.iv.next.i.1.i.2, 4294967295
  %71 = getelementptr inbounds %"src::lib::TflacMd5", ptr %t, i64 0, i32 3, i64 %70
  %_27.i.1.i.2 = load i8, ptr %71, align 1, !alias.scope !35, !noalias !20, !noundef !5
  %72 = getelementptr inbounds %"src::lib::TflacMd5", ptr %t, i64 0, i32 3, i64 %_33.i.1.i.2
  store i8 %_27.i.1.i.2, ptr %72, align 1, !alias.scope !35, !noalias !20
  %73 = icmp eq i64 %_33.i.1.i.2, 0
  br i1 %73, label %_ZN14update_md5_lib3src3lib19tflac_md5_addsample17h2a37329d26349ddfE.exit.1.i, label %bb4.i.1.i.3

bb4.i.1.i.3:                                      ; preds = %bb6.i.1.i.2
  %74 = add nuw nsw i64 %61, 60
  %_32.i.1.i.3 = icmp ult i64 %indvars.iv.next.i.1.i.2, 9
  br i1 %_32.i.1.i.3, label %bb6.i.1.i.3, label %panic.i.i, !prof !11

bb6.i.1.i.3:                                      ; preds = %bb4.i.1.i.3
  %indvars.iv.next.i.1.i.3 = add nsw i64 %61, -4
  %_33.i.1.i.3 = and i64 %indvars.iv.next.i.1.i.3, 4294967295
  %75 = getelementptr inbounds %"src::lib::TflacMd5", ptr %t, i64 0, i32 3, i64 %74
  %_27.i.1.i.3 = load i8, ptr %75, align 1, !alias.scope !35, !noalias !20, !noundef !5
  %76 = getelementptr inbounds %"src::lib::TflacMd5", ptr %t, i64 0, i32 3, i64 %_33.i.1.i.3
  store i8 %_27.i.1.i.3, ptr %76, align 1, !alias.scope !35, !noalias !20
  %77 = icmp eq i64 %_33.i.1.i.3, 0
  br i1 %77, label %_ZN14update_md5_lib3src3lib19tflac_md5_addsample17h2a37329d26349ddfE.exit.1.i, label %bb4.i.1.i.4

bb4.i.1.i.4:                                      ; preds = %bb6.i.1.i.3
  %78 = add nuw nsw i64 %61, 59
  %_32.i.1.i.4 = icmp ult i64 %indvars.iv.next.i.1.i.3, 9
  br i1 %_32.i.1.i.4, label %bb6.i.1.i.4, label %panic.i.i, !prof !11

bb6.i.1.i.4:                                      ; preds = %bb4.i.1.i.4
  %indvars.iv.next.i.1.i.4 = add nsw i64 %61, -5
  %_33.i.1.i.4 = and i64 %indvars.iv.next.i.1.i.4, 4294967295
  %79 = getelementptr inbounds %"src::lib::TflacMd5", ptr %t, i64 0, i32 3, i64 %78
  %_27.i.1.i.4 = load i8, ptr %79, align 1, !alias.scope !35, !noalias !20, !noundef !5
  %80 = getelementptr inbounds %"src::lib::TflacMd5", ptr %t, i64 0, i32 3, i64 %_33.i.1.i.4
  store i8 %_27.i.1.i.4, ptr %80, align 1, !alias.scope !35, !noalias !20
  %81 = icmp eq i64 %_33.i.1.i.4, 0
  br i1 %81, label %_ZN14update_md5_lib3src3lib19tflac_md5_addsample17h2a37329d26349ddfE.exit.1.i, label %bb4.i.1.i.5

bb4.i.1.i.5:                                      ; preds = %bb6.i.1.i.4
  %82 = add nuw nsw i64 %61, 58
  %_32.i.1.i.5 = icmp ult i64 %indvars.iv.next.i.1.i.4, 9
  br i1 %_32.i.1.i.5, label %bb6.i.1.i.5, label %panic.i.i, !prof !11

bb6.i.1.i.5:                                      ; preds = %bb4.i.1.i.5
  %indvars.iv.next.i.1.i.5 = add nsw i64 %61, -6
  %_33.i.1.i.5 = and i64 %indvars.iv.next.i.1.i.5, 4294967295
  %83 = getelementptr inbounds %"src::lib::TflacMd5", ptr %t, i64 0, i32 3, i64 %82
  %_27.i.1.i.5 = load i8, ptr %83, align 1, !alias.scope !35, !noalias !20, !noundef !5
  %84 = getelementptr inbounds %"src::lib::TflacMd5", ptr %t, i64 0, i32 3, i64 %_33.i.1.i.5
  store i8 %_27.i.1.i.5, ptr %84, align 1, !alias.scope !35, !noalias !20
  %85 = icmp eq i64 %_33.i.1.i.5, 0
  br i1 %85, label %_ZN14update_md5_lib3src3lib19tflac_md5_addsample17h2a37329d26349ddfE.exit.1.i, label %bb4.i.1.i.6

bb4.i.1.i.6:                                      ; preds = %bb6.i.1.i.5
  %86 = add nuw nsw i64 %61, 57
  %_32.i.1.i.6 = icmp ult i64 %indvars.iv.next.i.1.i.5, 9
  br i1 %_32.i.1.i.6, label %bb6.i.1.i.6, label %panic.i.i, !prof !11

bb6.i.1.i.6:                                      ; preds = %bb4.i.1.i.6
  %indvars.iv.next.i.1.i.6 = add nuw nsw i64 %61, 4294967289
  %_33.i.1.i.6 = and i64 %indvars.iv.next.i.1.i.6, 4294967295
  %87 = getelementptr inbounds %"src::lib::TflacMd5", ptr %t, i64 0, i32 3, i64 %86
  %_27.i.1.i.6 = load i8, ptr %87, align 1, !alias.scope !35, !noalias !20, !noundef !5
  %88 = getelementptr inbounds %"src::lib::TflacMd5", ptr %t, i64 0, i32 3, i64 %_33.i.1.i.6
  store i8 %_27.i.1.i.6, ptr %88, align 1, !alias.scope !35, !noalias !20
  br label %_ZN14update_md5_lib3src3lib19tflac_md5_addsample17h2a37329d26349ddfE.exit.1.i

_ZN14update_md5_lib3src3lib19tflac_md5_addsample17h2a37329d26349ddfE.exit.1.i: ; preds = %bb6.i.1.i.6, %bb6.i.1.i.5, %bb6.i.1.i.4, %bb6.i.1.i.3, %bb6.i.1.i.2, %bb6.i.1.i.1, %bb6.i.1.i, %bb2.i.1.i, %"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hf9602d8cf97d4778E.exit.1.i"
  %_21.i33.1.i = phi i32 [ %_16.i.1.i, %"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hf9602d8cf97d4778E.exit.1.i" ], [ 0, %bb2.i.1.i ], [ %_21.i.1.i, %bb6.i.1.i.6 ], [ %_21.i.1.i, %bb6.i.1.i.5 ], [ %_21.i.1.i, %bb6.i.1.i.4 ], [ %_21.i.1.i, %bb6.i.1.i.3 ], [ %_21.i.1.i, %bb6.i.1.i.2 ], [ %_21.i.1.i, %bb6.i.1.i.1 ], [ %_21.i.1.i, %bb6.i.1.i ]
  %_9.i.2.i = icmp ult i32 %_5, 72
  br i1 %_9.i.2.i, label %bb3.i.i, label %"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hf9602d8cf97d4778E.exit.2.i"

"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hf9602d8cf97d4778E.exit.2.i": ; preds = %_ZN14update_md5_lib3src3lib19tflac_md5_addsample17h2a37329d26349ddfE.exit.1.i
  %89 = getelementptr inbounds i32, ptr %samples, i64 64
  %90 = getelementptr inbounds i32, ptr %samples, i64 68
  %_48.2.i = load i32, ptr %90, align 4, !alias.scope !20, !noalias !17, !noundef !5
  %91 = and i32 %_48.2.i, 255
  %_46.2.i = zext i32 %91 to i64
  %_45.2.i = shl nuw nsw i64 %_46.2.i, 32
  %_20.2.i = load i32, ptr %89, align 4, !alias.scope !20, !noalias !17, !noundef !5
  %92 = and i32 %_20.2.i, 255
  %93 = getelementptr inbounds i32, ptr %samples, i64 65
  %_27.2.i = load i32, ptr %93, align 4, !alias.scope !20, !noalias !17, !noundef !5
  %94 = shl i32 %_27.2.i, 8
  %95 = and i32 %94, 65280
  %96 = or i32 %95, %92
  %97 = getelementptr inbounds i32, ptr %samples, i64 66
  %_34.2.i = load i32, ptr %97, align 4, !alias.scope !20, !noalias !17, !noundef !5
  %98 = shl i32 %_34.2.i, 16
  %99 = and i32 %98, 16711680
  %100 = or i32 %96, %99
  %101 = getelementptr inbounds i32, ptr %samples, i64 67
  %_41.2.i = load i32, ptr %101, align 4, !alias.scope !20, !noalias !17, !noundef !5
  %102 = shl i32 %_41.2.i, 24
  %103 = or i32 %100, %102
  %104 = zext i32 %103 to i64
  %105 = or i64 %_45.2.i, %104
  %106 = getelementptr inbounds i32, ptr %samples, i64 69
  %_55.2.i = load i32, ptr %106, align 4, !alias.scope !20, !noalias !17, !noundef !5
  %107 = and i32 %_55.2.i, 255
  %_53.2.i = zext i32 %107 to i64
  %_52.2.i = shl nuw nsw i64 %_53.2.i, 40
  %108 = or i64 %105, %_52.2.i
  %109 = getelementptr inbounds i32, ptr %samples, i64 70
  %_62.2.i = load i32, ptr %109, align 4, !alias.scope !20, !noalias !17, !noundef !5
  %110 = and i32 %_62.2.i, 255
  %_60.2.i = zext i32 %110 to i64
  %_59.2.i = shl nuw nsw i64 %_60.2.i, 48
  %111 = or i64 %108, %_59.2.i
  %112 = getelementptr inbounds i32, ptr %samples, i64 71
  %_69.2.i = load i32, ptr %112, align 4, !alias.scope !20, !noalias !17, !noundef !5
  %_67.2.i = zext i32 %_69.2.i to i64
  %_66.2.i = shl i64 %_67.2.i, 56
  %113 = or i64 %111, %_66.2.i
  %_4.i.2.i = add i64 %.promoted.i, 192
  store i64 %_4.i.2.i, ptr %2, align 8, !alias.scope !38, !noalias !20
  %pos2.i.2.i = and i32 %_21.i33.1.i, 63
  %_13.i.2.i = zext i32 %pos2.i.2.i to i64
  %114 = getelementptr inbounds i8, ptr %self2.i.i, i64 %_13.i.2.i
  store i64 %113, ptr %114, align 1, !alias.scope !40, !noalias !20
  %_16.i.2.i = add nsw i32 %_21.i33.1.i, 8
  store i32 %_16.i.2.i, ptr %t, align 8, !alias.scope !38, !noalias !20
  %_19.i.2.i = icmp ugt i32 %_16.i.2.i, 63
  br i1 %_19.i.2.i, label %bb2.i.2.i, label %_ZN14update_md5_lib3src3lib19tflac_md5_addsample17h2a37329d26349ddfE.exit.2.i

bb2.i.2.i:                                        ; preds = %"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hf9602d8cf97d4778E.exit.2.i"
  %_21.i.2.i = and i32 %_16.i.2.i, 63
  store i32 %_21.i.2.i, ptr %t, align 8, !alias.scope !38, !noalias !20
  %115 = icmp eq i32 %_21.i.2.i, 0
  br i1 %115, label %_ZN14update_md5_lib3src3lib19tflac_md5_addsample17h2a37329d26349ddfE.exit.2.i, label %bb4.preheader.i.2.i

bb4.preheader.i.2.i:                              ; preds = %bb2.i.2.i
  %116 = zext i32 %_21.i.2.i to i64
  br label %bb4.i.2.i

bb4.i.2.i:                                        ; preds = %bb6.i.2.i, %bb4.preheader.i.2.i
  %indvars.iv.i.2.i = phi i64 [ %116, %bb4.preheader.i.2.i ], [ %indvars.iv.next.i.2.i, %bb6.i.2.i ]
  %117 = add nuw nsw i64 %indvars.iv.i.2.i, 63
  %_32.i.2.i = icmp ult i64 %indvars.iv.i.2.i, 9
  br i1 %_32.i.2.i, label %bb6.i.2.i, label %panic.i.i, !prof !11

bb6.i.2.i:                                        ; preds = %bb4.i.2.i
  %indvars.iv.next.i.2.i = add nsw i64 %indvars.iv.i.2.i, -1
  %_33.i.2.i = and i64 %indvars.iv.next.i.2.i, 4294967295
  %118 = getelementptr inbounds %"src::lib::TflacMd5", ptr %t, i64 0, i32 3, i64 %117
  %_27.i.2.i = load i8, ptr %118, align 1, !alias.scope !38, !noalias !20, !noundef !5
  %119 = getelementptr inbounds %"src::lib::TflacMd5", ptr %t, i64 0, i32 3, i64 %_33.i.2.i
  store i8 %_27.i.2.i, ptr %119, align 1, !alias.scope !38, !noalias !20
  %120 = icmp eq i64 %_33.i.2.i, 0
  br i1 %120, label %_ZN14update_md5_lib3src3lib19tflac_md5_addsample17h2a37329d26349ddfE.exit.2.i, label %bb4.i.2.i

_ZN14update_md5_lib3src3lib19tflac_md5_addsample17h2a37329d26349ddfE.exit.2.i: ; preds = %bb6.i.2.i, %bb2.i.2.i, %"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hf9602d8cf97d4778E.exit.2.i"
  %_21.i33.2.i = phi i32 [ %_16.i.2.i, %"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hf9602d8cf97d4778E.exit.2.i" ], [ 0, %bb2.i.2.i ], [ %_21.i.2.i, %bb6.i.2.i ]
  %_9.i.3.i = icmp ult i32 %_5, 104
  br i1 %_9.i.3.i, label %bb3.i.i, label %"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hf9602d8cf97d4778E.exit.3.i"

"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hf9602d8cf97d4778E.exit.3.i": ; preds = %_ZN14update_md5_lib3src3lib19tflac_md5_addsample17h2a37329d26349ddfE.exit.2.i
  %121 = getelementptr inbounds i32, ptr %samples, i64 96
  %122 = getelementptr inbounds i32, ptr %samples, i64 100
  %_48.3.i = load i32, ptr %122, align 4, !alias.scope !20, !noalias !17, !noundef !5
  %123 = and i32 %_48.3.i, 255
  %_46.3.i = zext i32 %123 to i64
  %_45.3.i = shl nuw nsw i64 %_46.3.i, 32
  %_20.3.i = load i32, ptr %121, align 4, !alias.scope !20, !noalias !17, !noundef !5
  %124 = and i32 %_20.3.i, 255
  %125 = getelementptr inbounds i32, ptr %samples, i64 97
  %_27.3.i = load i32, ptr %125, align 4, !alias.scope !20, !noalias !17, !noundef !5
  %126 = shl i32 %_27.3.i, 8
  %127 = and i32 %126, 65280
  %128 = or i32 %127, %124
  %129 = getelementptr inbounds i32, ptr %samples, i64 98
  %_34.3.i = load i32, ptr %129, align 4, !alias.scope !20, !noalias !17, !noundef !5
  %130 = shl i32 %_34.3.i, 16
  %131 = and i32 %130, 16711680
  %132 = or i32 %128, %131
  %133 = getelementptr inbounds i32, ptr %samples, i64 99
  %_41.3.i = load i32, ptr %133, align 4, !alias.scope !20, !noalias !17, !noundef !5
  %134 = shl i32 %_41.3.i, 24
  %135 = or i32 %132, %134
  %136 = zext i32 %135 to i64
  %137 = or i64 %_45.3.i, %136
  %138 = getelementptr inbounds i32, ptr %samples, i64 101
  %_55.3.i = load i32, ptr %138, align 4, !alias.scope !20, !noalias !17, !noundef !5
  %139 = and i32 %_55.3.i, 255
  %_53.3.i = zext i32 %139 to i64
  %_52.3.i = shl nuw nsw i64 %_53.3.i, 40
  %140 = or i64 %137, %_52.3.i
  %141 = getelementptr inbounds i32, ptr %samples, i64 102
  %_62.3.i = load i32, ptr %141, align 4, !alias.scope !20, !noalias !17, !noundef !5
  %142 = and i32 %_62.3.i, 255
  %_60.3.i = zext i32 %142 to i64
  %_59.3.i = shl nuw nsw i64 %_60.3.i, 48
  %143 = or i64 %140, %_59.3.i
  %144 = getelementptr inbounds i32, ptr %samples, i64 103
  %_69.3.i = load i32, ptr %144, align 4, !alias.scope !20, !noalias !17, !noundef !5
  %_67.3.i = zext i32 %_69.3.i to i64
  %_66.3.i = shl i64 %_67.3.i, 56
  %145 = or i64 %143, %_66.3.i
  %_4.i.3.i = add i64 %.promoted.i, 256
  store i64 %_4.i.3.i, ptr %2, align 8, !alias.scope !41, !noalias !20
  %_13.i.3.i = zext i32 %_21.i33.2.i to i64
  %146 = getelementptr inbounds i8, ptr %self2.i.i, i64 %_13.i.3.i
  store i64 %145, ptr %146, align 1, !alias.scope !43, !noalias !20
  %_16.i.3.i = add nuw nsw i32 %_21.i33.2.i, 8
  store i32 %_16.i.3.i, ptr %t, align 8, !alias.scope !41, !noalias !20
  %_19.i.3.i = icmp ugt i32 %_21.i33.2.i, 55
  br i1 %_19.i.3.i, label %bb2.i.3.i, label %_ZN14update_md5_lib3src3lib19tflac_md5_addsample17h2a37329d26349ddfE.exit.3.i

bb2.i.3.i:                                        ; preds = %"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hf9602d8cf97d4778E.exit.3.i"
  %_21.i.3.i = and i32 %_16.i.3.i, 63
  store i32 %_21.i.3.i, ptr %t, align 8, !alias.scope !41, !noalias !20
  %147 = icmp eq i32 %_21.i.3.i, 0
  br i1 %147, label %_ZN14update_md5_lib3src3lib19tflac_md5_addsample17h2a37329d26349ddfE.exit.3.i, label %bb4.preheader.i.3.i

bb4.preheader.i.3.i:                              ; preds = %bb2.i.3.i
  %148 = zext i32 %_21.i.3.i to i64
  %149 = add nuw nsw i64 %148, 63
  %_32.i.3.i = icmp ult i32 %_21.i.3.i, 9
  br i1 %_32.i.3.i, label %bb6.i.3.i, label %panic.i.i, !prof !11

bb6.i.3.i:                                        ; preds = %bb4.preheader.i.3.i
  %indvars.iv.next.i.3.i = add nuw nsw i64 %148, 4294967295
  %_33.i.3.i = and i64 %indvars.iv.next.i.3.i, 4294967295
  %150 = getelementptr inbounds %"src::lib::TflacMd5", ptr %t, i64 0, i32 3, i64 %149
  %_27.i.3.i = load i8, ptr %150, align 1, !alias.scope !41, !noalias !20, !noundef !5
  %151 = getelementptr inbounds %"src::lib::TflacMd5", ptr %t, i64 0, i32 3, i64 %_33.i.3.i
  store i8 %_27.i.3.i, ptr %151, align 1, !alias.scope !41, !noalias !20
  %152 = icmp eq i64 %_33.i.3.i, 0
  br i1 %152, label %_ZN14update_md5_lib3src3lib19tflac_md5_addsample17h2a37329d26349ddfE.exit.3.i, label %bb4.i.3.i.1

bb4.i.3.i.1:                                      ; preds = %bb6.i.3.i
  %153 = add nuw nsw i64 %148, 62
  %_32.i.3.i.1 = icmp ult i32 %_21.i.3.i, 10
  br i1 %_32.i.3.i.1, label %bb6.i.3.i.1, label %panic.i.i, !prof !11

bb6.i.3.i.1:                                      ; preds = %bb4.i.3.i.1
  %indvars.iv.next.i.3.i.1 = add nsw i64 %148, -2
  %_33.i.3.i.1 = and i64 %indvars.iv.next.i.3.i.1, 4294967295
  %154 = getelementptr inbounds %"src::lib::TflacMd5", ptr %t, i64 0, i32 3, i64 %153
  %_27.i.3.i.1 = load i8, ptr %154, align 1, !alias.scope !41, !noalias !20, !noundef !5
  %155 = getelementptr inbounds %"src::lib::TflacMd5", ptr %t, i64 0, i32 3, i64 %_33.i.3.i.1
  store i8 %_27.i.3.i.1, ptr %155, align 1, !alias.scope !41, !noalias !20
  %156 = icmp eq i64 %_33.i.3.i.1, 0
  br i1 %156, label %_ZN14update_md5_lib3src3lib19tflac_md5_addsample17h2a37329d26349ddfE.exit.3.i, label %bb4.i.3.i.2

bb4.i.3.i.2:                                      ; preds = %bb6.i.3.i.1
  %157 = add nuw nsw i64 %148, 61
  %_32.i.3.i.2 = icmp ult i64 %indvars.iv.next.i.3.i.1, 9
  br i1 %_32.i.3.i.2, label %bb6.i.3.i.2, label %panic.i.i, !prof !11

bb6.i.3.i.2:                                      ; preds = %bb4.i.3.i.2
  %indvars.iv.next.i.3.i.2 = add nsw i64 %148, -3
  %_33.i.3.i.2 = and i64 %indvars.iv.next.i.3.i.2, 4294967295
  %158 = getelementptr inbounds %"src::lib::TflacMd5", ptr %t, i64 0, i32 3, i64 %157
  %_27.i.3.i.2 = load i8, ptr %158, align 1, !alias.scope !41, !noalias !20, !noundef !5
  %159 = getelementptr inbounds %"src::lib::TflacMd5", ptr %t, i64 0, i32 3, i64 %_33.i.3.i.2
  store i8 %_27.i.3.i.2, ptr %159, align 1, !alias.scope !41, !noalias !20
  %160 = icmp eq i64 %_33.i.3.i.2, 0
  br i1 %160, label %_ZN14update_md5_lib3src3lib19tflac_md5_addsample17h2a37329d26349ddfE.exit.3.i, label %bb4.i.3.i.3

bb4.i.3.i.3:                                      ; preds = %bb6.i.3.i.2
  %161 = add nuw nsw i64 %148, 60
  %_32.i.3.i.3 = icmp ult i64 %indvars.iv.next.i.3.i.2, 9
  br i1 %_32.i.3.i.3, label %bb6.i.3.i.3, label %panic.i.i, !prof !11

bb6.i.3.i.3:                                      ; preds = %bb4.i.3.i.3
  %indvars.iv.next.i.3.i.3 = add nsw i64 %148, -4
  %_33.i.3.i.3 = and i64 %indvars.iv.next.i.3.i.3, 4294967295
  %162 = getelementptr inbounds %"src::lib::TflacMd5", ptr %t, i64 0, i32 3, i64 %161
  %_27.i.3.i.3 = load i8, ptr %162, align 1, !alias.scope !41, !noalias !20, !noundef !5
  %163 = getelementptr inbounds %"src::lib::TflacMd5", ptr %t, i64 0, i32 3, i64 %_33.i.3.i.3
  store i8 %_27.i.3.i.3, ptr %163, align 1, !alias.scope !41, !noalias !20
  %164 = icmp eq i64 %_33.i.3.i.3, 0
  br i1 %164, label %_ZN14update_md5_lib3src3lib19tflac_md5_addsample17h2a37329d26349ddfE.exit.3.i, label %bb4.i.3.i.4

bb4.i.3.i.4:                                      ; preds = %bb6.i.3.i.3
  %165 = add nuw nsw i64 %148, 59
  %_32.i.3.i.4 = icmp ult i64 %indvars.iv.next.i.3.i.3, 9
  br i1 %_32.i.3.i.4, label %bb6.i.3.i.4, label %panic.i.i, !prof !11

bb6.i.3.i.4:                                      ; preds = %bb4.i.3.i.4
  %indvars.iv.next.i.3.i.4 = add nsw i64 %148, -5
  %_33.i.3.i.4 = and i64 %indvars.iv.next.i.3.i.4, 4294967295
  %166 = getelementptr inbounds %"src::lib::TflacMd5", ptr %t, i64 0, i32 3, i64 %165
  %_27.i.3.i.4 = load i8, ptr %166, align 1, !alias.scope !41, !noalias !20, !noundef !5
  %167 = getelementptr inbounds %"src::lib::TflacMd5", ptr %t, i64 0, i32 3, i64 %_33.i.3.i.4
  store i8 %_27.i.3.i.4, ptr %167, align 1, !alias.scope !41, !noalias !20
  %168 = icmp eq i64 %_33.i.3.i.4, 0
  br i1 %168, label %_ZN14update_md5_lib3src3lib19tflac_md5_addsample17h2a37329d26349ddfE.exit.3.i, label %bb4.i.3.i.5

bb4.i.3.i.5:                                      ; preds = %bb6.i.3.i.4
  %169 = add nuw nsw i64 %148, 58
  %_32.i.3.i.5 = icmp ult i64 %indvars.iv.next.i.3.i.4, 9
  br i1 %_32.i.3.i.5, label %bb6.i.3.i.5, label %panic.i.i, !prof !11

bb6.i.3.i.5:                                      ; preds = %bb4.i.3.i.5
  %indvars.iv.next.i.3.i.5 = add nsw i64 %148, -6
  %_33.i.3.i.5 = and i64 %indvars.iv.next.i.3.i.5, 4294967295
  %170 = getelementptr inbounds %"src::lib::TflacMd5", ptr %t, i64 0, i32 3, i64 %169
  %_27.i.3.i.5 = load i8, ptr %170, align 1, !alias.scope !41, !noalias !20, !noundef !5
  %171 = getelementptr inbounds %"src::lib::TflacMd5", ptr %t, i64 0, i32 3, i64 %_33.i.3.i.5
  store i8 %_27.i.3.i.5, ptr %171, align 1, !alias.scope !41, !noalias !20
  %172 = icmp eq i64 %_33.i.3.i.5, 0
  br i1 %172, label %_ZN14update_md5_lib3src3lib19tflac_md5_addsample17h2a37329d26349ddfE.exit.3.i, label %bb4.i.3.i.6

bb4.i.3.i.6:                                      ; preds = %bb6.i.3.i.5
  %173 = add nuw nsw i64 %148, 57
  %_32.i.3.i.6 = icmp ult i64 %indvars.iv.next.i.3.i.5, 9
  br i1 %_32.i.3.i.6, label %bb6.i.3.i.6, label %panic.i.i, !prof !11

bb6.i.3.i.6:                                      ; preds = %bb4.i.3.i.6
  %indvars.iv.next.i.3.i.6 = add nuw nsw i64 %148, 4294967289
  %_33.i.3.i.6 = and i64 %indvars.iv.next.i.3.i.6, 4294967295
  %174 = getelementptr inbounds %"src::lib::TflacMd5", ptr %t, i64 0, i32 3, i64 %173
  %_27.i.3.i.6 = load i8, ptr %174, align 1, !alias.scope !41, !noalias !20, !noundef !5
  %175 = getelementptr inbounds %"src::lib::TflacMd5", ptr %t, i64 0, i32 3, i64 %_33.i.3.i.6
  store i8 %_27.i.3.i.6, ptr %175, align 1, !alias.scope !41, !noalias !20
  br label %_ZN14update_md5_lib3src3lib19tflac_md5_addsample17h2a37329d26349ddfE.exit.3.i

_ZN14update_md5_lib3src3lib19tflac_md5_addsample17h2a37329d26349ddfE.exit.3.i: ; preds = %bb6.i.3.i.6, %bb6.i.3.i.5, %bb6.i.3.i.4, %bb6.i.3.i.3, %bb6.i.3.i.2, %bb6.i.3.i.1, %bb6.i.3.i, %bb2.i.3.i, %"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hf9602d8cf97d4778E.exit.3.i"
  %_21.i33.3.i = phi i32 [ %_16.i.3.i, %"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hf9602d8cf97d4778E.exit.3.i" ], [ 0, %bb2.i.3.i ], [ %_21.i.3.i, %bb6.i.3.i.6 ], [ %_21.i.3.i, %bb6.i.3.i.5 ], [ %_21.i.3.i, %bb6.i.3.i.4 ], [ %_21.i.3.i, %bb6.i.3.i.3 ], [ %_21.i.3.i, %bb6.i.3.i.2 ], [ %_21.i.3.i, %bb6.i.3.i.1 ], [ %_21.i.3.i, %bb6.i.3.i ]
  %_9.i.4.i = icmp ult i32 %_5, 136
  br i1 %_9.i.4.i, label %bb3.i.i, label %"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hf9602d8cf97d4778E.exit.4.i"

"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hf9602d8cf97d4778E.exit.4.i": ; preds = %_ZN14update_md5_lib3src3lib19tflac_md5_addsample17h2a37329d26349ddfE.exit.3.i
  %176 = getelementptr inbounds i32, ptr %samples, i64 128
  %177 = getelementptr inbounds i32, ptr %samples, i64 132
  %_48.4.i = load i32, ptr %177, align 4, !alias.scope !20, !noalias !17, !noundef !5
  %178 = and i32 %_48.4.i, 255
  %_46.4.i = zext i32 %178 to i64
  %_45.4.i = shl nuw nsw i64 %_46.4.i, 32
  %_20.4.i = load i32, ptr %176, align 4, !alias.scope !20, !noalias !17, !noundef !5
  %179 = and i32 %_20.4.i, 255
  %180 = getelementptr inbounds i32, ptr %samples, i64 129
  %_27.4.i = load i32, ptr %180, align 4, !alias.scope !20, !noalias !17, !noundef !5
  %181 = shl i32 %_27.4.i, 8
  %182 = and i32 %181, 65280
  %183 = or i32 %182, %179
  %184 = getelementptr inbounds i32, ptr %samples, i64 130
  %_34.4.i = load i32, ptr %184, align 4, !alias.scope !20, !noalias !17, !noundef !5
  %185 = shl i32 %_34.4.i, 16
  %186 = and i32 %185, 16711680
  %187 = or i32 %183, %186
  %188 = getelementptr inbounds i32, ptr %samples, i64 131
  %_41.4.i = load i32, ptr %188, align 4, !alias.scope !20, !noalias !17, !noundef !5
  %189 = shl i32 %_41.4.i, 24
  %190 = or i32 %187, %189
  %191 = zext i32 %190 to i64
  %192 = or i64 %_45.4.i, %191
  %193 = getelementptr inbounds i32, ptr %samples, i64 133
  %_55.4.i = load i32, ptr %193, align 4, !alias.scope !20, !noalias !17, !noundef !5
  %194 = and i32 %_55.4.i, 255
  %_53.4.i = zext i32 %194 to i64
  %_52.4.i = shl nuw nsw i64 %_53.4.i, 40
  %195 = or i64 %192, %_52.4.i
  %196 = getelementptr inbounds i32, ptr %samples, i64 134
  %_62.4.i = load i32, ptr %196, align 4, !alias.scope !20, !noalias !17, !noundef !5
  %197 = and i32 %_62.4.i, 255
  %_60.4.i = zext i32 %197 to i64
  %_59.4.i = shl nuw nsw i64 %_60.4.i, 48
  %198 = or i64 %195, %_59.4.i
  %199 = getelementptr inbounds i32, ptr %samples, i64 135
  %_69.4.i = load i32, ptr %199, align 4, !alias.scope !20, !noalias !17, !noundef !5
  %_67.4.i = zext i32 %_69.4.i to i64
  %_66.4.i = shl i64 %_67.4.i, 56
  %200 = or i64 %198, %_66.4.i
  %_4.i.4.i = add i64 %.promoted.i, 320
  store i64 %_4.i.4.i, ptr %2, align 8, !alias.scope !44, !noalias !20
  %pos2.i.4.i = and i32 %_21.i33.3.i, 63
  %_13.i.4.i = zext i32 %pos2.i.4.i to i64
  %201 = getelementptr inbounds i8, ptr %self2.i.i, i64 %_13.i.4.i
  store i64 %200, ptr %201, align 1, !alias.scope !46, !noalias !20
  %_16.i.4.i = add nsw i32 %_21.i33.3.i, 8
  store i32 %_16.i.4.i, ptr %t, align 8, !alias.scope !44, !noalias !20
  %_19.i.4.i = icmp ugt i32 %_16.i.4.i, 63
  br i1 %_19.i.4.i, label %bb2.i.4.i, label %_ZN14update_md5_lib3src3lib10update_md517hc21936df9d096003E.exit

bb2.i.4.i:                                        ; preds = %"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hf9602d8cf97d4778E.exit.4.i"
  %_21.i.4.i = and i32 %_16.i.4.i, 63
  store i32 %_21.i.4.i, ptr %t, align 8, !alias.scope !44, !noalias !20
  %202 = icmp eq i32 %_21.i.4.i, 0
  br i1 %202, label %_ZN14update_md5_lib3src3lib10update_md517hc21936df9d096003E.exit, label %bb4.preheader.i.4.i

bb4.preheader.i.4.i:                              ; preds = %bb2.i.4.i
  %203 = zext i32 %_21.i.4.i to i64
  br label %bb4.i.4.i

bb4.i.4.i:                                        ; preds = %bb6.i.4.i, %bb4.preheader.i.4.i
  %indvars.iv.i.4.i = phi i64 [ %203, %bb4.preheader.i.4.i ], [ %indvars.iv.next.i.4.i, %bb6.i.4.i ]
  %204 = add nuw nsw i64 %indvars.iv.i.4.i, 63
  %_32.i.4.i = icmp ult i64 %indvars.iv.i.4.i, 9
  br i1 %_32.i.4.i, label %bb6.i.4.i, label %panic.i.i, !prof !11

bb6.i.4.i:                                        ; preds = %bb4.i.4.i
  %indvars.iv.next.i.4.i = add nsw i64 %indvars.iv.i.4.i, -1
  %_33.i.4.i = and i64 %indvars.iv.next.i.4.i, 4294967295
  %205 = getelementptr inbounds %"src::lib::TflacMd5", ptr %t, i64 0, i32 3, i64 %204
  %_27.i.4.i = load i8, ptr %205, align 1, !alias.scope !44, !noalias !20, !noundef !5
  %206 = getelementptr inbounds %"src::lib::TflacMd5", ptr %t, i64 0, i32 3, i64 %_33.i.4.i
  store i8 %_27.i.4.i, ptr %206, align 1, !alias.scope !44, !noalias !20
  %207 = icmp eq i64 %_33.i.4.i, 0
  br i1 %207, label %_ZN14update_md5_lib3src3lib10update_md517hc21936df9d096003E.exit, label %bb4.i.4.i

_ZN14update_md5_lib3src3lib10update_md517hc21936df9d096003E.exit: ; preds = %bb6.i.4.i, %bb2.i.4.i, %"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hf9602d8cf97d4778E.exit.4.i"
  %208 = add i32 %_5, -40
  ret i32 %208
}

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice5index24slice_end_index_len_fail17h63e54c65524702d3E(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @run_test_1() unnamed_addr #0 {
start:
  %samples = alloca [4 x [32 x i32]], align 4
  %t_array = alloca [4 x [32 x %"src::lib::Tflac"]], align 8
  call void @llvm.lifetime.start.p0(i64 12288, ptr nonnull %t_array)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12288) %t_array, i8 0, i64 12288, i1 false)
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %samples)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(512) %samples, i8 0, i64 512, i1 false)
  %ret = call noundef i32 @update_md5(ptr noundef nonnull %t_array, ptr noundef nonnull %samples)
  %0 = icmp eq i32 %ret, -40
  %_14 = load i32, ptr %t_array, align 8
  %_14.fr = freeze i32 %_14
  %1 = icmp eq i32 %_14.fr, 40
  %2 = getelementptr inbounds %"src::lib::TflacMd5", ptr %t_array, i64 0, i32 2
  %_17 = load i64, ptr %2, align 8
  %3 = icmp eq i64 %_17, 320
  %4 = getelementptr inbounds %"src::lib::TflacMd5", ptr %t_array, i64 0, i32 3, i64 0
  %5 = load <64 x i8>, ptr %4, align 8
  %.fr = freeze <64 x i8> %5
  %6 = icmp ne <64 x i8> %.fr, zeroinitializer
  %7 = getelementptr inbounds %"src::lib::TflacMd5", ptr %t_array, i64 0, i32 3, i64 64
  %8 = load <8 x i8>, ptr %7, align 8
  %.fr155 = freeze <8 x i8> %8
  %9 = bitcast <64 x i1> %6 to i64
  %.fr155.scalar = bitcast <8 x i8> %.fr155 to i64
  %10 = or i64 %9, %.fr155.scalar
  %op.rdx = icmp eq i64 %10, 0
  %op.rdx152 = and i1 %op.rdx, %1
  %11 = and i1 %op.rdx152, %0
  %op.rdx154 = select i1 %11, i1 %3, i1 false
  br i1 %op.rdx154, label %bb11, label %bb19

bb19:                                             ; preds = %bb11, %start
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %samples)
  call void @llvm.lifetime.end.p0(i64 12288, ptr nonnull %t_array)
  br label %bb20

bb11:                                             ; preds = %start
  %12 = getelementptr inbounds %"src::lib::Tflac", ptr %t_array, i64 0, i32 1
  %_31 = load i32, ptr %12, align 8, !noundef !5
  %13 = icmp eq i32 %_31, 0
  %14 = getelementptr inbounds %"src::lib::Tflac", ptr %t_array, i64 0, i32 2
  %_34 = load i32, ptr %14, align 4
  %15 = icmp eq i32 %_34, 0
  %or.cond4 = select i1 %13, i1 %15, i1 false
  br i1 %or.cond4, label %bb18, label %bb19

bb18:                                             ; preds = %bb11
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %samples)
  call void @llvm.lifetime.end.p0(i64 12288, ptr nonnull %t_array)
  br label %bb20

bb20:                                             ; preds = %bb18, %bb19
  %.1 = phi i1 [ false, %bb19 ], [ true, %bb18 ]
  ret i1 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #2 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree nosync nounwind nonlazybind willreturn memory(argmem: write, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { noreturn }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!3}
!3 = distinct !{!3, !4, !"_ZN14update_md5_lib3src3lib19tflac_md5_addsample17h2a37329d26349ddfE: %m"}
!4 = distinct !{!4, !"_ZN14update_md5_lib3src3lib19tflac_md5_addsample17h2a37329d26349ddfE"}
!5 = !{}
!6 = !{!7, !9, !3}
!7 = distinct !{!7, !8, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h659202fdddddbd12E: %self.0"}
!8 = distinct !{!8, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h659202fdddddbd12E"}
!9 = distinct !{!9, !10, !"_ZN14update_md5_lib3src3lib16tflac_pack_u64le17h1d37f4f1f3fe3409E: %d.0"}
!10 = distinct !{!10, !"_ZN14update_md5_lib3src3lib16tflac_pack_u64le17h1d37f4f1f3fe3409E"}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{!13, !15}
!13 = distinct !{!13, !14, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h659202fdddddbd12E: %self.0"}
!14 = distinct !{!14, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h659202fdddddbd12E"}
!15 = distinct !{!15, !16, !"_ZN14update_md5_lib3src3lib16tflac_pack_u64le17h1d37f4f1f3fe3409E: %d.0"}
!16 = distinct !{!16, !"_ZN14update_md5_lib3src3lib16tflac_pack_u64le17h1d37f4f1f3fe3409E"}
!17 = !{!18}
!18 = distinct !{!18, !19, !"_ZN14update_md5_lib3src3lib10update_md517hc21936df9d096003E: %t"}
!19 = distinct !{!19, !"_ZN14update_md5_lib3src3lib10update_md517hc21936df9d096003E"}
!20 = !{!21}
!21 = distinct !{!21, !19, !"_ZN14update_md5_lib3src3lib10update_md517hc21936df9d096003E: %samples.0"}
!22 = !{!23, !18, !21}
!23 = distinct !{!23, !24, !"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hf9602d8cf97d4778E: %slice.0"}
!24 = distinct !{!24, !"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hf9602d8cf97d4778E"}
!25 = !{!26, !18}
!26 = distinct !{!26, !27, !"_ZN14update_md5_lib3src3lib19tflac_md5_addsample17h2a37329d26349ddfE: %m"}
!27 = distinct !{!27, !"_ZN14update_md5_lib3src3lib19tflac_md5_addsample17h2a37329d26349ddfE"}
!28 = !{!26}
!29 = !{!30, !32, !26, !18}
!30 = distinct !{!30, !31, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h659202fdddddbd12E: %self.0"}
!31 = distinct !{!31, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h659202fdddddbd12E"}
!32 = distinct !{!32, !33, !"_ZN14update_md5_lib3src3lib16tflac_pack_u64le17h1d37f4f1f3fe3409E: %d.0"}
!33 = distinct !{!33, !"_ZN14update_md5_lib3src3lib16tflac_pack_u64le17h1d37f4f1f3fe3409E"}
!34 = !{!26, !18, !21}
!35 = !{!36, !18}
!36 = distinct !{!36, !27, !"_ZN14update_md5_lib3src3lib19tflac_md5_addsample17h2a37329d26349ddfE: %m:It1"}
!37 = !{!30, !32, !36, !18}
!38 = !{!39, !18}
!39 = distinct !{!39, !27, !"_ZN14update_md5_lib3src3lib19tflac_md5_addsample17h2a37329d26349ddfE: %m:It2"}
!40 = !{!30, !32, !39, !18}
!41 = !{!42, !18}
!42 = distinct !{!42, !27, !"_ZN14update_md5_lib3src3lib19tflac_md5_addsample17h2a37329d26349ddfE: %m:It3"}
!43 = !{!30, !32, !42, !18}
!44 = !{!45, !18}
!45 = distinct !{!45, !27, !"_ZN14update_md5_lib3src3lib19tflac_md5_addsample17h2a37329d26349ddfE: %m:It4"}
!46 = !{!30, !32, !45, !18}
