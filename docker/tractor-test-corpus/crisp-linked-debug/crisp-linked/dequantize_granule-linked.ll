; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"src::lib::L12ScaleInfo" = type { [192 x float], i8, i8, [64 x i8], [64 x i8], [2 x i8] }
%"src::lib::BsT" = type { ptr, i32, i32 }

@alloc_f5ffd2fd1476bab43ad89fb40c72d0c5 = private unnamed_addr constant <{ [10 x i8] }> <{ [10 x i8] c"src/lib.rs" }>, align 1
@alloc_50126994a3474650c810fd705ba7a045 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00(\00\00\00\0B\00\00\00" }>, align 8
@alloc_95ee0b237610391790bf96d43fb0a464 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\001\00\00\00\10\00\00\00" }>, align 8
@alloc_26d8d840dfe8d5d0e2a2099d20609418 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00E\00\00\00\16\00\00\00" }>, align 8
@alloc_7d6fcf0e9c07ef97dcb21a63e95fb6d3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00K\00\00\00\19\00\00\00" }>, align 8
@alloc_0cbc833515dca069b47630970e53d9d7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00Z\00\00\00\19\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define noundef i32 @dequantize_granule(ptr nocapture noundef writeonly %grbuf, ptr nocapture noundef %bs, ptr nocapture noundef readonly %sci, i32 noundef %group_size) unnamed_addr #0 {
start:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7)
  %group_size_usize.i = sext i32 %group_size to i64
  %0 = getelementptr inbounds %"src::lib::L12ScaleInfo", ptr %sci, i64 0, i32 1
  %_18.i = load i8, ptr %0, align 4, !alias.scope !7, !noalias !9, !noundef !10
  %.not.i = icmp eq i8 %_18.i, 0
  %.not97.i = icmp eq i32 %group_size, 0
  %1 = getelementptr inbounds %"src::lib::BsT", ptr %bs, i64 0, i32 1
  %2 = getelementptr inbounds %"src::lib::BsT", ptr %bs, i64 0, i32 2
  br i1 %.not.i, label %_ZN22dequantize_granule_lib3src3lib18dequantize_granule17h8e8b2c929a64faf1E.exit, label %bb2.us.preheader.i

bb2.us.preheader.i:                               ; preds = %start
  %_17.i = zext i8 %_18.i to i64
  %_16.i = shl nuw nsw i64 %_17.i, 1
  %umax.i = tail call i64 @llvm.umax.i64(i64 %group_size_usize.i, i64 1)
  br label %bb2.us.i

bb2.us.i:                                         ; preds = %bb5.bb1.loopexit_crit_edge.us.i, %bb2.us.preheader.i
  %indvars.iv119.i = phi i64 [ 0, %bb2.us.preheader.i ], [ %indvars.iv.next120.i, %bb5.bb1.loopexit_crit_edge.us.i ]
  %choff.086.us.i = phi i32 [ 576, %bb2.us.preheader.i ], [ %51, %bb5.bb1.loopexit_crit_edge.us.i ]
  %indvars.iv.next120.i = add nuw nsw i64 %indvars.iv119.i, 1
  %base.us.i = mul nsw i64 %indvars.iv119.i, %group_size_usize.i
  %3 = add nsw i64 %base.us.i, 18
  br label %bb6.us.i

bb6.us.i:                                         ; preds = %bb26.us.i, %bb2.us.i
  %indvars.iv.i = phi i64 [ 0, %bb2.us.i ], [ %indvars.iv.next.i, %bb26.us.i ]
  %choff.184.us.i = phi i32 [ %choff.086.us.i, %bb2.us.i ], [ %51, %bb26.us.i ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %4 = icmp eq i32 %choff.184.us.i, 576
  %dst_base.0.us.i = select i1 %4, i64 %base.us.i, i64 %3
  %exitcond116.not.i = icmp eq i64 %indvars.iv.i, 64
  br i1 %exitcond116.not.i, label %panic.i, label %bb11.us.i, !prof !11

bb11.us.i:                                        ; preds = %bb6.us.i
  %5 = getelementptr inbounds %"src::lib::L12ScaleInfo", ptr %sci, i64 0, i32 3, i64 %indvars.iv.i
  %_27.us.i = load i8, ptr %5, align 1, !alias.scope !7, !noalias !9, !noundef !10
  %ba.us.i = zext i8 %_27.us.i to i32
  %6 = icmp eq i8 %_27.us.i, 0
  br i1 %6, label %bb26.us.i, label %bb12.us.i

bb12.us.i:                                        ; preds = %bb11.us.i
  %_31.us.i = icmp ult i8 %_27.us.i, 17
  br i1 %_31.us.i, label %bb13.us.i, label %bb19.us.i

bb19.us.i:                                        ; preds = %bb12.us.i
  %_51.us.i = add nuw nsw i32 %ba.us.i, 15
  %7 = and i32 %_51.us.i, 31
  %_50.us.i = shl i32 2, %7
  %_49.us.i = or i32 %_50.us.i, 1
  %self8.us.i = add i32 %_50.us.i, 3
  %rhs.us.i = lshr i32 %_50.us.i, 3
  %_54.us.i = sub i32 %self8.us.i, %rhs.us.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12)
  %_6.i = load i32, ptr %1, align 8, !alias.scope !12, !noalias !15, !noundef !10
  %_5.i = and i32 %_6.i, 7
  %_8.i = add i32 %_5.i, %_54.us.i
  %8 = add i32 %_6.i, %_54.us.i
  store i32 %8, ptr %1, align 8, !alias.scope !12, !noalias !15
  %_15.i = load i32, ptr %2, align 4, !alias.scope !12, !noalias !15, !noundef !10
  %_13.i = icmp sgt i32 %8, %_15.i
  br i1 %_13.i, label %_ZN22dequantize_granule_lib3src3lib8get_bits17h9198b567f968c3e0E.exit, label %bb2.i

bb2.i:                                            ; preds = %bb19.us.i
  %_11.i = ashr i32 %_6.i, 3
  %byte_index.i = sext i32 %_11.i to i64
  %_19.i = sext i32 %_54.us.i to i64
  %_20.i = zext i32 %_5.i to i64
  %_18.i1 = add nsw i64 %_19.i, 7
  %_17.i2 = add nsw i64 %_18.i1, %_20.i
  %bytes_needed10.i = lshr i64 %_17.i2, 3
  %self.i = load ptr, ptr %bs, align 8, !alias.scope !12, !noalias !15, !noundef !10
  %9 = getelementptr inbounds i8, ptr %self.i, i64 %byte_index.i
  %_31.not.i = icmp ult i64 %_17.i2, 8
  br i1 %_31.not.i, label %panic.i4, label %bb3.i, !prof !11

bb3.i:                                            ; preds = %bb2.i
  %_28.i = load i8, ptr %9, align 1, !noalias !16, !noundef !10
  %_27.i = zext i8 %_28.i to i32
  %_32.i = lshr i32 255, %_5.i
  %_26.i = and i32 %_32.i, %_27.i
  %10 = add i32 %_8.i, -8
  %_3315.i = icmp slt i32 %10, 1
  br i1 %_3315.i, label %bb5.i, label %bb6.preheader.i

bb6.preheader.i:                                  ; preds = %bb3.i
  %umax.i3 = tail call i64 @llvm.umax.i64(i64 %bytes_needed10.i, i64 1)
  %11 = add i32 %_8.i, -9
  %12 = lshr i32 %11, 3
  %13 = add nuw nsw i32 %12, 2
  %wide.trip.count.i = zext i32 %13 to i64
  br label %bb6.i

panic.i4:                                         ; preds = %bb2.i
  tail call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 noundef 0, i64 noundef 0, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_50126994a3474650c810fd705ba7a045) #6, !noalias !16
  unreachable

bb6.i:                                            ; preds = %bb7.i, %bb6.preheader.i
  %14 = phi i32 [ %23, %bb7.i ], [ %10, %bb6.preheader.i ]
  %cache.018.i = phi i32 [ %19, %bb7.i ], [ 0, %bb6.preheader.i ]
  %p.017.i = phi i64 [ %22, %bb7.i ], [ 1, %bb6.preheader.i ]
  %next.016.i = phi i32 [ %21, %bb7.i ], [ %_26.i, %bb6.preheader.i ]
  %exitcond.not.i5 = icmp eq i64 %p.017.i, %umax.i3
  br i1 %exitcond.not.i5, label %panic1.i, label %bb7.i, !prof !11

bb5.i.loopexit:                                   ; preds = %bb7.i
  %15 = zext i8 %_38.i to i32
  br label %bb5.i

bb5.i:                                            ; preds = %bb5.i.loopexit, %bb3.i
  %next.0.lcssa.i = phi i32 [ %_26.i, %bb3.i ], [ %15, %bb5.i.loopexit ]
  %shl.0.lcssa.i = phi i32 [ %_8.i, %bb3.i ], [ %14, %bb5.i.loopexit ]
  %cache.0.lcssa.i = phi i32 [ 0, %bb3.i ], [ %19, %bb5.i.loopexit ]
  %_45.i = sub i32 8, %shl.0.lcssa.i
  %16 = and i32 %_45.i, 31
  %_43.i = lshr i32 %next.0.lcssa.i, %16
  %17 = or i32 %_43.i, %cache.0.lcssa.i
  br label %_ZN22dequantize_granule_lib3src3lib8get_bits17h9198b567f968c3e0E.exit

bb7.i:                                            ; preds = %bb6.i
  %18 = and i32 %14, 31
  %_35.i = shl i32 %next.016.i, %18
  %19 = or i32 %_35.i, %cache.018.i
  %20 = getelementptr inbounds [0 x i8], ptr %9, i64 0, i64 %p.017.i
  %_38.i = load i8, ptr %20, align 1, !noalias !16, !noundef !10
  %21 = zext i8 %_38.i to i32
  %22 = add nuw nsw i64 %p.017.i, 1
  %23 = add i32 %14, -8
  %exitcond24.i = icmp eq i64 %22, %wide.trip.count.i
  br i1 %exitcond24.i, label %bb5.i.loopexit, label %bb6.i

panic1.i:                                         ; preds = %bb6.i
  tail call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 noundef %umax.i3, i64 noundef %bytes_needed10.i, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_95ee0b237610391790bf96d43fb0a464) #6, !noalias !16
  unreachable

_ZN22dequantize_granule_lib3src3lib8get_bits17h9198b567f968c3e0E.exit: ; preds = %bb5.i, %bb19.us.i
  %.0.i = phi i32 [ %17, %bb5.i ], [ 0, %bb19.us.i ]
  br i1 %.not97.i, label %bb26.us.i, label %bb31.lr.ph.us.i

bb31.us.i:                                        ; preds = %bb31.lr.ph.us.i, %bb24.us.i
  %code.075.us.i = phi i32 [ %.0.i, %bb31.lr.ph.us.i ], [ %_72.us.i, %bb24.us.i ]
  %iter6.sroa.0.074.us.i = phi i64 [ 0, %bb31.lr.ph.us.i ], [ %24, %bb24.us.i ]
  %_68.us.i = add nuw nsw i64 %iter6.sroa.0.074.us.i, %dst_base.0.us.i
  %_71.us.i = icmp ult i64 %_68.us.i, 576
  br i1 %_71.us.i, label %bb24.us.i, label %panic14.i, !prof !17

bb24.us.i:                                        ; preds = %bb31.us.i
  %24 = add nuw nsw i64 %iter6.sroa.0.074.us.i, 1
  %self12.us.i = urem i32 %code.075.us.i, %_49.us.i
  %_64.us.i = sub i32 %self12.us.i, %rhs1326.us.i
  %25 = getelementptr inbounds [0 x float], ptr %grbuf, i64 0, i64 %_68.us.i
  %26 = sitofp i32 %_64.us.i to float
  store float %26, ptr %25, align 4, !alias.scope !2, !noalias !18
  %_72.us.i = udiv i32 %code.075.us.i, %_49.us.i
  %exitcond.not.i = icmp eq i64 %24, %umax.i
  br i1 %exitcond.not.i, label %bb26.us.i, label %bb31.us.i

bb13.us.i:                                        ; preds = %bb12.us.i
  %_34.us.i = add nuw nsw i32 %ba.us.i, 31
  %27 = and i32 %_34.us.i, 31
  %notmask.us.i = shl nsw i32 -1, %27
  %half.neg.us.i = add nsw i32 %notmask.us.i, 1
  br i1 %.not97.i, label %bb26.us.i, label %bb15.lr.ph.us.i

bb15.us.i:                                        ; preds = %bb15.lr.ph.us.i, %bb18.us.i
  %28 = phi i32 [ %.promoted.us.i, %bb15.lr.ph.us.i ], [ %30, %bb18.us.i ]
  %iter4.sroa.0.076.us.i = phi i64 [ 0, %bb15.lr.ph.us.i ], [ %29, %bb18.us.i ]
  %29 = add nuw nsw i64 %iter4.sroa.0.076.us.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19)
  %_5.i.us.i = and i32 %28, 7
  %_8.i.us.i = add nuw nsw i32 %_5.i.us.i, %ba.us.i
  %30 = add i32 %28, %ba.us.i
  %_13.i.us.i = icmp sgt i32 %30, %_15.i.us.i
  br i1 %_13.i.us.i, label %_ZN22dequantize_granule_lib3src3lib8get_bits17h9198b567f968c3e0E.exit.us.i, label %bb2.i41.us.i

bb2.i41.us.i:                                     ; preds = %bb15.us.i
  %_11.i.us.i = ashr i32 %28, 3
  %byte_index.i.us.i = sext i32 %_11.i.us.i to i64
  %_20.i.us.i = zext i32 %_5.i.us.i to i64
  %_17.i.us.i = add nuw nsw i64 %_18.i.us.i, %_20.i.us.i
  %bytes_needed10.i.us.i = lshr i64 %_17.i.us.i, 3
  %31 = getelementptr inbounds i8, ptr %self.i.us.i, i64 %byte_index.i.us.i
  %_31.not.i.us.i = icmp ult i64 %_17.i.us.i, 8
  br i1 %_31.not.i.us.i, label %panic.i.i, label %bb3.i.us.i, !prof !11

bb3.i.us.i:                                       ; preds = %bb2.i41.us.i
  %_28.i.us.i = load i8, ptr %31, align 1, !noalias !22, !noundef !10
  %_27.i.us.i = zext i8 %_28.i.us.i to i32
  %_32.i.us.i = lshr i32 255, %_5.i.us.i
  %_26.i.us.i = and i32 %_32.i.us.i, %_27.i.us.i
  %_3315.i.us.i = icmp ult i32 %_8.i.us.i, 9
  br i1 %_3315.i.us.i, label %bb5.i.us.i, label %bb6.preheader.i.us.i

bb6.preheader.i.us.i:                             ; preds = %bb3.i.us.i
  %umax.i.us.i = tail call i64 @llvm.umax.i64(i64 %bytes_needed10.i.us.i, i64 1)
  %32 = add nsw i32 %_8.i.us.i, -9
  %exitcond.not.i.us.i = icmp ult i64 %_17.i.us.i, 16
  br i1 %exitcond.not.i.us.i, label %panic1.i.i, label %bb7.i.us.i, !prof !11

bb7.i.us.i:                                       ; preds = %bb6.preheader.i.us.i
  %33 = add nsw i32 %_8.i.us.i, -8
  %34 = and i32 %33, 31
  %_35.i.us.i = shl i32 %_26.i.us.i, %34
  %35 = getelementptr inbounds [0 x i8], ptr %31, i64 0, i64 1
  %_38.i.us.i = load i8, ptr %35, align 1, !noalias !22, !noundef !10
  %36 = zext i8 %_38.i.us.i to i32
  %exitcond24.i.us.i = icmp ult i32 %32, 8
  br i1 %exitcond24.i.us.i, label %bb5.i.us.i.loopexit, label %bb6.i.us.i.1

bb6.i.us.i.1:                                     ; preds = %bb7.i.us.i
  %exitcond.not.i.us.i.1 = icmp eq i64 %umax.i.us.i, 2
  br i1 %exitcond.not.i.us.i.1, label %panic1.i.i, label %bb7.i.us.i.1, !prof !11

bb7.i.us.i.1:                                     ; preds = %bb6.i.us.i.1
  %37 = add nsw i32 %_8.i.us.i, -16
  %38 = and i32 %37, 31
  %_35.i.us.i.1 = shl i32 %36, %38
  %39 = or i32 %_35.i.us.i.1, %_35.i.us.i
  %40 = getelementptr inbounds [0 x i8], ptr %31, i64 0, i64 2
  %_38.i.us.i.1 = load i8, ptr %40, align 1, !noalias !22, !noundef !10
  %41 = zext i8 %_38.i.us.i.1 to i32
  %.mask = and i32 %32, -8
  %exitcond24.i.us.i.1 = icmp eq i32 %.mask, 8
  br i1 %exitcond24.i.us.i.1, label %bb5.i.us.i.loopexit, label %bb6.i.us.i.2

bb6.i.us.i.2:                                     ; preds = %bb7.i.us.i.1
  %exitcond.not.i.us.i.2 = icmp eq i64 %umax.i.us.i, 3
  br i1 %exitcond.not.i.us.i.2, label %panic1.i.i, label %bb7.i.us.i.2, !prof !11

bb7.i.us.i.2:                                     ; preds = %bb6.i.us.i.2
  %42 = add nsw i32 %_8.i.us.i, -24
  %43 = and i32 %42, 31
  %_35.i.us.i.2 = shl i32 %41, %43
  %44 = or i32 %_35.i.us.i.2, %39
  %45 = getelementptr inbounds [0 x i8], ptr %31, i64 0, i64 3
  %_38.i.us.i.2 = load i8, ptr %45, align 1, !noalias !22, !noundef !10
  br label %bb5.i.us.i.loopexit

bb5.i.us.i.loopexit:                              ; preds = %bb7.i.us.i.2, %bb7.i.us.i.1, %bb7.i.us.i
  %.lcssa61 = phi i32 [ %33, %bb7.i.us.i ], [ %37, %bb7.i.us.i.1 ], [ %42, %bb7.i.us.i.2 ]
  %.lcssa = phi i32 [ %_35.i.us.i, %bb7.i.us.i ], [ %39, %bb7.i.us.i.1 ], [ %44, %bb7.i.us.i.2 ]
  %_38.i.us.i.lcssa = phi i8 [ %_38.i.us.i, %bb7.i.us.i ], [ %_38.i.us.i.1, %bb7.i.us.i.1 ], [ %_38.i.us.i.2, %bb7.i.us.i.2 ]
  %46 = zext i8 %_38.i.us.i.lcssa to i32
  br label %bb5.i.us.i

bb5.i.us.i:                                       ; preds = %bb5.i.us.i.loopexit, %bb3.i.us.i
  %next.0.lcssa.i.us.i = phi i32 [ %_26.i.us.i, %bb3.i.us.i ], [ %46, %bb5.i.us.i.loopexit ]
  %shl.0.lcssa.i.us.i = phi i32 [ %_8.i.us.i, %bb3.i.us.i ], [ %.lcssa61, %bb5.i.us.i.loopexit ]
  %cache.0.lcssa.i.us.i = phi i32 [ 0, %bb3.i.us.i ], [ %.lcssa, %bb5.i.us.i.loopexit ]
  %_45.i.us.i = sub nsw i32 8, %shl.0.lcssa.i.us.i
  %47 = and i32 %_45.i.us.i, 31
  %_43.i.us.i = lshr i32 %next.0.lcssa.i.us.i, %47
  %48 = or i32 %_43.i.us.i, %cache.0.lcssa.i.us.i
  br label %_ZN22dequantize_granule_lib3src3lib8get_bits17h9198b567f968c3e0E.exit.us.i

_ZN22dequantize_granule_lib3src3lib8get_bits17h9198b567f968c3e0E.exit.us.i: ; preds = %bb5.i.us.i, %bb15.us.i
  %.0.i.us.i = phi i32 [ %48, %bb5.i.us.i ], [ 0, %bb15.us.i ]
  %_44.us.i = add nuw nsw i64 %iter4.sroa.0.076.us.i, %dst_base.0.us.i
  %_47.us.i = icmp ult i64 %_44.us.i, 576
  br i1 %_47.us.i, label %bb18.us.i, label %panic7.i, !prof !17

bb18.us.i:                                        ; preds = %_ZN22dequantize_granule_lib3src3lib8get_bits17h9198b567f968c3e0E.exit.us.i
  %_41.us.i = add i32 %half.neg.us.i, %.0.i.us.i
  %49 = getelementptr inbounds [0 x float], ptr %grbuf, i64 0, i64 %_44.us.i
  %50 = sitofp i32 %_41.us.i to float
  store float %50, ptr %49, align 4, !alias.scope !2, !noalias !18
  %exitcond114.not.i = icmp eq i64 %29, %umax.i
  br i1 %exitcond114.not.i, label %bb14.bb26.loopexit_crit_edge.us.i, label %bb15.us.i

bb26.us.i:                                        ; preds = %bb14.bb26.loopexit_crit_edge.us.i, %bb13.us.i, %bb24.us.i, %_ZN22dequantize_granule_lib3src3lib8get_bits17h9198b567f968c3e0E.exit, %bb11.us.i
  %51 = sub i32 18, %choff.184.us.i
  %exitcond118.not.i = icmp eq i64 %indvars.iv.next.i, %_16.i
  br i1 %exitcond118.not.i, label %bb5.bb1.loopexit_crit_edge.us.i, label %bb6.us.i

bb31.lr.ph.us.i:                                  ; preds = %_ZN22dequantize_granule_lib3src3lib8get_bits17h9198b567f968c3e0E.exit
  %rhs1326.us.i = lshr exact i32 %_50.us.i, 1
  br label %bb31.us.i

bb15.lr.ph.us.i:                                  ; preds = %bb13.us.i
  %_15.i.us.i = load i32, ptr %2, align 4, !alias.scope !23, !noalias !15, !noundef !10
  %_19.i.us.i = zext i8 %_27.us.i to i64
  %_18.i.us.i = add nuw nsw i64 %_19.i.us.i, 7
  %self.i.us.i = load ptr, ptr %bs, align 8, !alias.scope !5, !noalias !15
  %.promoted.us.i = load i32, ptr %1, align 8, !alias.scope !23, !noalias !15
  br label %bb15.us.i

bb14.bb26.loopexit_crit_edge.us.i:                ; preds = %bb18.us.i
  store i32 %30, ptr %1, align 8, !alias.scope !23, !noalias !15
  br label %bb26.us.i

bb5.bb1.loopexit_crit_edge.us.i:                  ; preds = %bb26.us.i
  %exitcond122.not.i = icmp eq i64 %indvars.iv.next120.i, 4
  br i1 %exitcond122.not.i, label %_ZN22dequantize_granule_lib3src3lib18dequantize_granule17h8e8b2c929a64faf1E.exit, label %bb2.us.i

panic.i:                                          ; preds = %bb6.us.i
  tail call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 noundef 64, i64 noundef 64, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_26d8d840dfe8d5d0e2a2099d20609418) #6, !noalias !24
  unreachable

panic.i.i:                                        ; preds = %bb2.i41.us.i
  store i32 %30, ptr %1, align 8, !alias.scope !23, !noalias !15
  tail call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 noundef 0, i64 noundef 0, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_50126994a3474650c810fd705ba7a045) #6, !noalias !22
  unreachable

panic1.i.i:                                       ; preds = %bb6.i.us.i.2, %bb6.i.us.i.1, %bb6.preheader.i.us.i
  store i32 %30, ptr %1, align 8, !alias.scope !23, !noalias !15
  tail call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 noundef %umax.i.us.i, i64 noundef %bytes_needed10.i.us.i, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_95ee0b237610391790bf96d43fb0a464) #6, !noalias !22
  unreachable

panic7.i:                                         ; preds = %_ZN22dequantize_granule_lib3src3lib8get_bits17h9198b567f968c3e0E.exit.us.i
  store i32 %30, ptr %1, align 8, !alias.scope !23, !noalias !15
  tail call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 noundef %_44.us.i, i64 noundef 576, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_7d6fcf0e9c07ef97dcb21a63e95fb6d3) #6, !noalias !24
  unreachable

panic14.i:                                        ; preds = %bb31.us.i
  tail call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 noundef %_68.us.i, i64 noundef 576, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_0cbc833515dca069b47630970e53d9d7) #6, !noalias !24
  unreachable

_ZN22dequantize_granule_lib3src3lib18dequantize_granule17h8e8b2c929a64faf1E.exit: ; preds = %bb5.bb1.loopexit_crit_edge.us.i, %start
  %52 = shl i32 %group_size, 2
  ret i32 %52
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @run_test_1() unnamed_addr #0 {
start:
  %_2 = alloca [0 x i8], align 1
  %sci = alloca %"src::lib::L12ScaleInfo", align 4
  %bs = alloca %"src::lib::BsT", align 8
  %grbuf = alloca [576 x float], align 4
  call void @llvm.lifetime.start.p0(i64 2304, ptr nonnull %grbuf)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2304) %grbuf, i8 0, i64 2304, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %bs)
  store ptr %_2, ptr %bs, align 8
  %0 = getelementptr inbounds %"src::lib::BsT", ptr %bs, i64 0, i32 1
  store i32 0, ptr %0, align 8
  %1 = getelementptr inbounds %"src::lib::BsT", ptr %bs, i64 0, i32 2
  store i32 0, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 900, ptr nonnull %sci)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(768) %sci, i8 0, i64 768, i1 false)
  %2 = getelementptr inbounds %"src::lib::L12ScaleInfo", ptr %sci, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(64) %2, i8 0, i64 64, i1 false)
  %3 = getelementptr inbounds %"src::lib::L12ScaleInfo", ptr %sci, i64 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(64) %3, i8 0, i64 64, i1 false)
  %4 = getelementptr inbounds %"src::lib::L12ScaleInfo", ptr %sci, i64 0, i32 1
  store i8 0, ptr %4, align 4
  %5 = getelementptr inbounds %"src::lib::L12ScaleInfo", ptr %sci, i64 0, i32 2
  store i8 0, ptr %5, align 1
  %ret = call noundef i32 @dequantize_granule(ptr noundef nonnull %grbuf, ptr noundef nonnull %bs, ptr noundef nonnull %sci, i32 noundef 0)
  %6 = icmp eq i32 %ret, 0
  %_20 = load i32, ptr %0, align 8
  %7 = icmp eq i32 %_20, 0
  %or.cond = select i1 %6, i1 %7, i1 false
  %_21 = load i32, ptr %1, align 4
  %8 = icmp eq i32 %_21, 0
  %or.cond6 = select i1 %or.cond, i1 %8, i1 false
  br i1 %or.cond6, label %bb9, label %bb15

bb15:                                             ; preds = %bb12.3, %bb12.2, %bb12.1, %bb12, %start
  call void @llvm.lifetime.end.p0(i64 900, ptr nonnull %sci)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %bs)
  call void @llvm.lifetime.end.p0(i64 2304, ptr nonnull %grbuf)
  br label %bb16

bb9:                                              ; preds = %bb12.3, %start
  %iter.sroa.0.0 = phi i64 [ %15, %bb12.3 ], [ 0, %start ]
  %exitcond.not = icmp eq i64 %iter.sroa.0.0, 576
  br i1 %exitcond.not, label %bb11, label %bb12

bb11:                                             ; preds = %bb9
  call void @llvm.lifetime.end.p0(i64 900, ptr nonnull %sci)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %bs)
  call void @llvm.lifetime.end.p0(i64 2304, ptr nonnull %grbuf)
  br label %bb16

bb12:                                             ; preds = %bb9
  %9 = or i64 %iter.sroa.0.0, 1
  %10 = getelementptr inbounds [576 x float], ptr %grbuf, i64 0, i64 %iter.sroa.0.0
  %_29 = load float, ptr %10, align 4, !noundef !10
  %_28 = fcmp une float %_29, 0.000000e+00
  br i1 %_28, label %bb15, label %bb12.1

bb12.1:                                           ; preds = %bb12
  %11 = or i64 %iter.sroa.0.0, 2
  %12 = getelementptr inbounds [576 x float], ptr %grbuf, i64 0, i64 %9
  %_29.1 = load float, ptr %12, align 4, !noundef !10
  %_28.1 = fcmp une float %_29.1, 0.000000e+00
  br i1 %_28.1, label %bb15, label %bb12.2

bb12.2:                                           ; preds = %bb12.1
  %13 = or i64 %iter.sroa.0.0, 3
  %14 = getelementptr inbounds [576 x float], ptr %grbuf, i64 0, i64 %11
  %_29.2 = load float, ptr %14, align 4, !noundef !10
  %_28.2 = fcmp une float %_29.2, 0.000000e+00
  br i1 %_28.2, label %bb15, label %bb12.3

bb12.3:                                           ; preds = %bb12.2
  %15 = add nuw nsw i64 %iter.sroa.0.0, 4
  %16 = getelementptr inbounds [576 x float], ptr %grbuf, i64 0, i64 %13
  %_29.3 = load float, ptr %16, align 4, !noundef !10
  %_28.3 = fcmp une float %_29.3, 0.000000e+00
  br i1 %_28.3, label %bb15, label %bb9

bb16:                                             ; preds = %bb11, %bb15
  %.1 = phi i1 [ false, %bb15 ], [ true, %bb11 ]
  ret i1 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @run_test_2() unnamed_addr #0 {
start:
  %_2 = alloca [0 x i8], align 1
  %sci = alloca %"src::lib::L12ScaleInfo", align 4
  %bs = alloca %"src::lib::BsT", align 8
  %grbuf = alloca [576 x float], align 4
  call void @llvm.lifetime.start.p0(i64 2304, ptr nonnull %grbuf)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2304) %grbuf, i8 85, i64 2304, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %bs)
  store ptr %_2, ptr %bs, align 8
  %0 = getelementptr inbounds %"src::lib::BsT", ptr %bs, i64 0, i32 1
  store i32 0, ptr %0, align 8
  %1 = getelementptr inbounds %"src::lib::BsT", ptr %bs, i64 0, i32 2
  store i32 0, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 900, ptr nonnull %sci)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(768) %sci, i8 0, i64 768, i1 false)
  %2 = getelementptr inbounds %"src::lib::L12ScaleInfo", ptr %sci, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(64) %2, i8 0, i64 64, i1 false)
  %3 = getelementptr inbounds %"src::lib::L12ScaleInfo", ptr %sci, i64 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(64) %3, i8 0, i64 64, i1 false)
  %4 = getelementptr inbounds %"src::lib::L12ScaleInfo", ptr %sci, i64 0, i32 1
  store i8 0, ptr %4, align 4
  %5 = getelementptr inbounds %"src::lib::L12ScaleInfo", ptr %sci, i64 0, i32 2
  store i8 0, ptr %5, align 1
  %ret = call noundef i32 @dequantize_granule(ptr noundef nonnull %grbuf, ptr noundef nonnull %bs, ptr noundef nonnull %sci, i32 noundef 0)
  %6 = icmp eq i32 %ret, 0
  %_20 = load i32, ptr %0, align 8
  %7 = icmp eq i32 %_20, 0
  %or.cond = select i1 %6, i1 %7, i1 false
  %_21 = load i32, ptr %1, align 4
  %8 = icmp eq i32 %_21, 0
  %or.cond6 = select i1 %or.cond, i1 %8, i1 false
  br i1 %or.cond6, label %bb9, label %bb15

bb15:                                             ; preds = %bb12.3, %bb12.2, %bb12.1, %bb12, %start
  call void @llvm.lifetime.end.p0(i64 900, ptr nonnull %sci)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %bs)
  call void @llvm.lifetime.end.p0(i64 2304, ptr nonnull %grbuf)
  br label %bb16

bb9:                                              ; preds = %bb12.3, %start
  %iter.sroa.0.0 = phi i64 [ %15, %bb12.3 ], [ 0, %start ]
  %exitcond.not = icmp eq i64 %iter.sroa.0.0, 576
  br i1 %exitcond.not, label %bb11, label %bb12

bb11:                                             ; preds = %bb9
  call void @llvm.lifetime.end.p0(i64 900, ptr nonnull %sci)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %bs)
  call void @llvm.lifetime.end.p0(i64 2304, ptr nonnull %grbuf)
  br label %bb16

bb12:                                             ; preds = %bb9
  %9 = or i64 %iter.sroa.0.0, 1
  %10 = getelementptr inbounds [576 x float], ptr %grbuf, i64 0, i64 %iter.sroa.0.0
  %_29 = load float, ptr %10, align 4, !noundef !10
  %_28 = fcmp une float %_29, 0x42AAAAAAA0000000
  br i1 %_28, label %bb15, label %bb12.1

bb12.1:                                           ; preds = %bb12
  %11 = or i64 %iter.sroa.0.0, 2
  %12 = getelementptr inbounds [576 x float], ptr %grbuf, i64 0, i64 %9
  %_29.1 = load float, ptr %12, align 4, !noundef !10
  %_28.1 = fcmp une float %_29.1, 0x42AAAAAAA0000000
  br i1 %_28.1, label %bb15, label %bb12.2

bb12.2:                                           ; preds = %bb12.1
  %13 = or i64 %iter.sroa.0.0, 3
  %14 = getelementptr inbounds [576 x float], ptr %grbuf, i64 0, i64 %11
  %_29.2 = load float, ptr %14, align 4, !noundef !10
  %_28.2 = fcmp une float %_29.2, 0x42AAAAAAA0000000
  br i1 %_28.2, label %bb15, label %bb12.3

bb12.3:                                           ; preds = %bb12.2
  %15 = add nuw nsw i64 %iter.sroa.0.0, 4
  %16 = getelementptr inbounds [576 x float], ptr %grbuf, i64 0, i64 %13
  %_29.3 = load float, ptr %16, align 4, !noundef !10
  %_28.3 = fcmp une float %_29.3, 0x42AAAAAAA0000000
  br i1 %_28.3, label %bb15, label %bb9

bb16:                                             ; preds = %bb11, %bb15
  %.1 = phi i1 [ false, %bb15 ], [ true, %bb11 ]
  ret i1 %.1
}

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { noreturn }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!3}
!3 = distinct !{!3, !4, !"_ZN22dequantize_granule_lib3src3lib18dequantize_granule17h8e8b2c929a64faf1E: %grbuf.0"}
!4 = distinct !{!4, !"_ZN22dequantize_granule_lib3src3lib18dequantize_granule17h8e8b2c929a64faf1E"}
!5 = !{!6}
!6 = distinct !{!6, !4, !"_ZN22dequantize_granule_lib3src3lib18dequantize_granule17h8e8b2c929a64faf1E: %bs"}
!7 = !{!8}
!8 = distinct !{!8, !4, !"_ZN22dequantize_granule_lib3src3lib18dequantize_granule17h8e8b2c929a64faf1E: %sci"}
!9 = !{!3, !6}
!10 = !{}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{!13}
!13 = distinct !{!13, !14, !"_ZN22dequantize_granule_lib3src3lib8get_bits17h9198b567f968c3e0E: %bs"}
!14 = distinct !{!14, !"_ZN22dequantize_granule_lib3src3lib8get_bits17h9198b567f968c3e0E"}
!15 = !{!3, !8}
!16 = !{!13, !3, !8}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{!6, !8}
!19 = !{!20}
!20 = distinct !{!20, !21, !"_ZN22dequantize_granule_lib3src3lib8get_bits17h9198b567f968c3e0E: %bs"}
!21 = distinct !{!21, !"_ZN22dequantize_granule_lib3src3lib8get_bits17h9198b567f968c3e0E"}
!22 = !{!20, !3, !6, !8}
!23 = !{!20, !6}
!24 = !{!3, !6, !8}
