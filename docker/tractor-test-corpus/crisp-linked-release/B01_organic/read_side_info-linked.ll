; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; ASSERT EQ: i1 1 = call i1 @run_test_1()
; ASSERT EQ: i1 1 = call i1 @run_test_2()
; ASSERT EQ: i1 1 = call i1 @run_test_3()
; ASSERT EQ: i1 1 = call i1 @run_test_4()
; ASSERT EQ: i1 1 = call i1 @run_test_5()

%"src::lib::BsT" = type { ptr, i32, i32 }
%"src::lib::L3GrInfoT" = type { ptr, i16, i16, i16, i8, i8, i8, i8, i8, [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8 }

@_ZN18read_side_info_lib3src3lib14read_side_info10g_scf_long17h2ae923ec5fd02bc9E = internal global <{ [184 x i8] }> <{ [184 x i8] c"\06\06\06\06\06\06\08\0A\0C\0E\10\14\18\1C &.4<D:6\00\0C\0C\0C\0C\0C\0C\10\14\18\1C (08@LZ\02\02\02\02\02\00\06\06\06\06\06\06\08\0A\0C\0E\10\14\18\1C &.4<D:6\00\06\06\06\06\06\06\08\0A\0C\0E\10\12\16\1A &.6>FL$\00\06\06\06\06\06\06\08\0A\0C\0E\10\14\18\1C &.4<D:6\00\04\04\04\04\04\04\06\06\08\08\0A\0C\10\14\18\1C\22*26L\9E\00\04\04\04\04\04\04\06\06\06\08\0A\0C\10\12\16\1C\22(.66\C0\00\04\04\04\04\04\04\06\06\08\0A\0C\10\14\18\1E&.8DTf\1A\00" }>, align 1
@_ZN18read_side_info_lib3src3lib14read_side_info11g_scf_short17h298fd3a48c4678a0E = internal global <{ [320 x i8] }> <{ [320 x i8] c"\04\04\04\04\04\04\04\04\04\06\06\06\08\08\08\0A\0A\0A\0C\0C\0C\0E\0E\0E\12\12\12\18\18\18\1E\1E\1E(((\12\12\12\00\08\08\08\08\08\08\08\08\08\0C\0C\0C\10\10\10\14\14\14\18\18\18\1C\1C\1C$$$\02\02\02\02\02\02\02\02\02\1A\1A\1A\00\04\04\04\04\04\04\04\04\04\06\06\06\06\06\06\08\08\08\0A\0A\0A\0E\0E\0E\12\12\12\1A\1A\1A   ***\12\12\12\00\04\04\04\04\04\04\04\04\04\06\06\06\08\08\08\0A\0A\0A\0C\0C\0C\0E\0E\0E\12\12\12\18\18\18   ,,,\0C\0C\0C\00\04\04\04\04\04\04\04\04\04\06\06\06\08\08\08\0A\0A\0A\0C\0C\0C\0E\0E\0E\12\12\12\18\18\18\1E\1E\1E(((\12\12\12\00\04\04\04\04\04\04\04\04\04\04\04\04\06\06\06\08\08\08\0A\0A\0A\0C\0C\0C\0E\0E\0E\12\12\12\16\16\16\1E\1E\1E888\00\04\04\04\04\04\04\04\04\04\04\04\04\06\06\06\06\06\06\0A\0A\0A\0C\0C\0C\0E\0E\0E\10\10\10\14\14\14\1A\1A\1ABBB\00\04\04\04\04\04\04\04\04\04\04\04\04\06\06\06\08\08\08\0C\0C\0C\10\10\10\14\14\14\1A\1A\1A\22\22\22***\0C\0C\0C\00" }>, align 1
@_ZN18read_side_info_lib3src3lib14read_side_info11g_scf_mixed17hc589b752c23c0ac8E = internal global <{ [320 x i8] }> <{ [320 x i8] c"\06\06\06\06\06\06\06\06\06\08\08\08\0A\0A\0A\0C\0C\0C\0E\0E\0E\12\12\12\18\18\18\1E\1E\1E(((\12\12\12\00\00\00\00\0C\0C\0C\04\04\04\08\08\08\0C\0C\0C\10\10\10\14\14\14\18\18\18\1C\1C\1C$$$\02\02\02\02\02\02\02\02\02\1A\1A\1A\00\06\06\06\06\06\06\06\06\06\06\06\06\08\08\08\0A\0A\0A\0E\0E\0E\12\12\12\1A\1A\1A   ***\12\12\12\00\00\00\00\06\06\06\06\06\06\06\06\06\08\08\08\0A\0A\0A\0C\0C\0C\0E\0E\0E\12\12\12\18\18\18   ,,,\0C\0C\0C\00\00\00\00\06\06\06\06\06\06\06\06\06\08\08\08\0A\0A\0A\0C\0C\0C\0E\0E\0E\12\12\12\18\18\18\1E\1E\1E(((\12\12\12\00\00\00\00\04\04\04\04\04\04\06\06\04\04\04\06\06\06\08\08\08\0A\0A\0A\0C\0C\0C\0E\0E\0E\12\12\12\16\16\16\1E\1E\1E888\00\00\04\04\04\04\04\04\06\06\04\04\04\06\06\06\06\06\06\0A\0A\0A\0C\0C\0C\0E\0E\0E\10\10\10\14\14\14\1A\1A\1ABBB\00\00\04\04\04\04\04\04\06\06\04\04\04\06\06\06\08\08\08\0C\0C\0C\10\10\10\14\14\14\1A\1A\1A\22\22\22***\0C\0C\0C\00\00" }>, align 1

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none) uwtable
define noundef i32 @read_side_info(ptr nocapture noundef %bs, ptr nocapture noundef %gr, ptr nocapture noundef readonly %hdr) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds i8, ptr %hdr, i64 2
  %_12.i = load i8, ptr %0, align 1, !noundef !2
  %1 = lshr i8 %_12.i, 2
  %2 = and i8 %1, 3
  %_9.i = zext i8 %2 to i32
  %3 = getelementptr inbounds i8, ptr %hdr, i64 1
  %_22.i = load i8, ptr %3, align 1, !noundef !2
  %_21.i = zext i8 %_22.i to i32
  %_20.i = lshr i32 %_21.i, 3
  %_19.i = and i32 %_20.i, 1
  %_28.i = lshr i32 %_21.i, 4
  %_27.i = and i32 %_28.i, 1
  %_18.i = add nuw nsw i32 %_19.i, %_27.i
  %_17.i = mul nuw nsw i32 %_18.i, 3
  %4 = add nuw nsw i32 %_17.i, %_9.i
  %_37.i = icmp ne i32 %4, 0
  %_36.neg.i = sext i1 %_37.i to i32
  %5 = add nsw i32 %4, %_36.neg.i
  %6 = getelementptr inbounds i8, ptr %hdr, i64 3
  %_44.i = load i8, ptr %6, align 1, !noundef !2
  %_41.i = icmp ugt i8 %_44.i, -65
  %..i = select i1 %_41.i, i32 1, i32 2
  %7 = and i8 %_22.i, 8
  %8 = icmp eq i8 %7, 0
  %9 = getelementptr inbounds %"src::lib::BsT", ptr %bs, i64 0, i32 1
  %_7.i.i = load i32, ptr %9, align 8
  %self.i.i = load ptr, ptr %bs, align 8
  %10 = getelementptr inbounds %"src::lib::BsT", ptr %bs, i64 0, i32 2
  br i1 %8, label %bb7.i, label %bb4.i

bb7.i:                                            ; preds = %start
  %_64.i = or i32 %..i, 8
  %11 = add i32 %_64.i, %_7.i.i
  store i32 %11, ptr %9, align 8
  %_20.i.i = load i32, ptr %10, align 4, !noundef !2
  %_18.i.i = icmp sgt i32 %11, %_20.i.i
  br i1 %_18.i.i, label %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit.i, label %bb5.i.i

bb5.i.i:                                          ; preds = %bb7.i
  %_6.i.i = and i32 %_7.i.i, 7
  %_27.i.i = lshr i32 255, %_6.i.i
  %_15.i.i = ashr i32 %_7.i.i, 3
  %count.i.i = sext i32 %_15.i.i to i64
  %12 = getelementptr inbounds i8, ptr %self.i.i, i64 %count.i.i
  %_26.i.i = load i8, ptr %12, align 1, !noundef !2
  %_25.i.i = zext i8 %_26.i.i to i32
  %_24.i.i = and i32 %_27.i.i, %_25.i.i
  %13 = add nuw nsw i32 %..i, %_6.i.i
  %p.0.i.i = getelementptr inbounds i8, ptr %12, i64 1
  %14 = and i32 %13, 31
  %_34.i.i = shl i32 %_24.i.i, %14
  %_40.i.i = load i8, ptr %p.0.i.i, align 1, !noundef !2
  %_31.i.i = icmp ult i32 %13, 9
  br i1 %_31.i.i, label %bb4.i.i, label %bb5.i.i.1

bb5.i.i.1:                                        ; preds = %bb5.i.i
  %15 = add nsw i32 %13, -8
  %16 = zext i8 %_40.i.i to i32
  %p.0.i.i.1 = getelementptr inbounds i8, ptr %p.0.i.i, i64 1
  %17 = and i32 %15, 31
  %_34.i.i.1 = shl i32 %16, %17
  %18 = or i32 %_34.i.i.1, %_34.i.i
  %_40.i.i.1 = load i8, ptr %p.0.i.i.1, align 1, !noundef !2
  br label %bb4.i.i

bb4.i.i:                                          ; preds = %bb5.i.i.1, %bb5.i.i
  %.lcssa146 = phi i32 [ %13, %bb5.i.i ], [ %15, %bb5.i.i.1 ]
  %.lcssa145 = phi i32 [ %_34.i.i, %bb5.i.i ], [ %18, %bb5.i.i.1 ]
  %_40.i.i.lcssa = phi i8 [ %_40.i.i, %bb5.i.i ], [ %_40.i.i.1, %bb5.i.i.1 ]
  %19 = zext i8 %_40.i.i.lcssa to i32
  %_44.i.i = sub nuw nsw i32 8, %.lcssa146
  %_42.i.i = lshr i32 %19, %_44.i.i
  %20 = or i32 %_42.i.i, %.lcssa145
  br label %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit.i

_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit.i: ; preds = %bb4.i.i, %bb7.i
  %.0.i.i = phi i32 [ %20, %bb4.i.i ], [ 0, %bb7.i ]
  %_62.i = lshr i32 %.0.i.i, %..i
  br label %bb9.preheader.i

bb4.i:                                            ; preds = %start
  %21 = shl nuw nsw i32 %..i, 1
  %22 = add i32 %_7.i.i, 9
  store i32 %22, ptr %9, align 8
  %_20.i63.i = load i32, ptr %10, align 4, !noundef !2
  %_18.i64.i = icmp sgt i32 %22, %_20.i63.i
  br i1 %_18.i64.i, label %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit91.i, label %bb2.i74.i

bb2.i74.i:                                        ; preds = %bb4.i
  %_15.i65.i = ashr i32 %_7.i.i, 3
  %count.i66.i = sext i32 %_15.i65.i to i64
  %23 = getelementptr inbounds i8, ptr %self.i.i, i64 %count.i66.i
  %_6.i67.i = and i32 %_7.i.i, 7
  %_26.i69.i = load i8, ptr %23, align 1, !noundef !2
  %_25.i70.i = zext i8 %_26.i69.i to i32
  %_27.i71.i = lshr i32 255, %_6.i67.i
  %_24.i72.i = and i32 %_27.i71.i, %_25.i70.i
  %24 = add nuw nsw i32 %_6.i67.i, 1
  %_34.i80.i = shl nuw nsw i32 %_24.i72.i, %24
  %p.0.i79.i = getelementptr inbounds i8, ptr %23, i64 1
  %_40.i81.i = load i8, ptr %p.0.i79.i, align 1, !noundef !2
  %25 = zext i8 %_40.i81.i to i32
  %_44.i88.i = xor i32 %_6.i67.i, 7
  %_42.i89.i = lshr i32 %25, %_44.i88.i
  %26 = or i32 %_42.i89.i, %_34.i80.i
  br label %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit91.i

_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit91.i: ; preds = %bb2.i74.i, %bb4.i
  %.0.i75.i = phi i32 [ %26, %bb2.i74.i ], [ 0, %bb4.i ]
  %_59.i = add nuw nsw i32 %21, 7
  %27 = add i32 %_59.i, %22
  store i32 %27, ptr %9, align 8
  %_18.i95.i = icmp sgt i32 %27, %_20.i63.i
  br i1 %_18.i95.i, label %bb9.preheader.i, label %bb5.i114.preheader.i

bb5.i114.preheader.i:                             ; preds = %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit91.i
  %_6.i98.i = and i32 %22, 7
  %_27.i102.i = lshr i32 255, %_6.i98.i
  %_15.i96.i = ashr i32 %22, 3
  %count.i97.i = sext i32 %_15.i96.i to i64
  %28 = getelementptr inbounds i8, ptr %self.i.i, i64 %count.i97.i
  %_26.i100.i = load i8, ptr %28, align 1, !noundef !2
  %_25.i101.i = zext i8 %_26.i100.i to i32
  %_24.i103.i = and i32 %_27.i102.i, %_25.i101.i
  %_10.i99.i = add nuw nsw i32 %_59.i, %_6.i98.i
  br label %bb5.i114.i

bb5.i114.i:                                       ; preds = %bb5.i114.i, %bb5.i114.preheader.i
  %.in.i = phi i32 [ %29, %bb5.i114.i ], [ %_10.i99.i, %bb5.i114.preheader.i ]
  %next.011.i107.i = phi i32 [ %32, %bb5.i114.i ], [ %_24.i103.i, %bb5.i114.preheader.i ]
  %cache.010.i108.i = phi i32 [ %31, %bb5.i114.i ], [ 0, %bb5.i114.preheader.i ]
  %.pn9.i109.i = phi ptr [ %p.0.i110.i, %bb5.i114.i ], [ %28, %bb5.i114.preheader.i ]
  %29 = add nsw i32 %.in.i, -8
  %p.0.i110.i = getelementptr inbounds i8, ptr %.pn9.i109.i, i64 1
  %30 = and i32 %29, 31
  %_34.i111.i = shl i32 %next.011.i107.i, %30
  %31 = or i32 %_34.i111.i, %cache.010.i108.i
  %_40.i112.i = load i8, ptr %p.0.i110.i, align 1, !noundef !2
  %32 = zext i8 %_40.i112.i to i32
  %_31.i113.i = icmp ult i32 %29, 9
  br i1 %_31.i113.i, label %bb4.i121.i, label %bb5.i114.i

bb4.i121.i:                                       ; preds = %bb5.i114.i
  %33 = zext i8 %_40.i112.i to i32
  %_44.i119.i = sub nuw nsw i32 16, %.in.i
  %_42.i120.i = lshr i32 %33, %_44.i119.i
  %34 = or i32 %_42.i120.i, %31
  br label %bb9.preheader.i

bb9.preheader.i:                                  ; preds = %bb4.i121.i, %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit91.i, %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit.i
  %gr_count.1.ph.i = phi i32 [ %..i, %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit.i ], [ %21, %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit91.i ], [ %21, %bb4.i121.i ]
  %main_data_begin.0.ph.i = phi i32 [ %_62.i, %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit.i ], [ %.0.i75.i, %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit91.i ], [ %.0.i75.i, %bb4.i121.i ]
  %scfsi.0.ph.i = phi i32 [ 0, %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit.i ], [ 0, %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit91.i ], [ %34, %bb4.i121.i ]
  %count.i = sext i32 %5 to i64
  %35 = getelementptr inbounds [23 x i8], ptr @_ZN18read_side_info_lib3src3lib14read_side_info10g_scf_long17h2ae923ec5fd02bc9E, i64 %count.i
  %36 = getelementptr inbounds [40 x i8], ptr @_ZN18read_side_info_lib3src3lib14read_side_info11g_scf_mixed17hc589b752c23c0ac8E, i64 %count.i
  %37 = getelementptr inbounds [40 x i8], ptr @_ZN18read_side_info_lib3src3lib14read_side_info11g_scf_short17h298fd3a48c4678a0E, i64 %count.i
  br label %bb9.i

bb9.i:                                            ; preds = %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit680.i, %bb9.preheader.i
  %gr_count.1.i = phi i32 [ %221, %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit680.i ], [ %gr_count.1.ph.i, %bb9.preheader.i ]
  %part_23_sum.0.i = phi i32 [ %51, %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit680.i ], [ 0, %bb9.preheader.i ]
  %scfsi.0.i = phi i32 [ %219, %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit680.i ], [ %scfsi.0.ph.i, %bb9.preheader.i ]
  %gr.0.i = phi ptr [ %220, %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit680.i ], [ %gr, %bb9.preheader.i ]
  %_71.i = load i8, ptr %6, align 1, !noundef !2
  %_68.i = icmp ugt i8 %_71.i, -65
  %38 = shl i32 %scfsi.0.i, 4
  %spec.select.i = select i1 %_68.i, i32 %38, i32 %scfsi.0.i
  %_7.i123.i = load i32, ptr %9, align 8, !noundef !2
  %self.i124.i = load ptr, ptr %bs, align 8, !noundef !2
  %39 = add i32 %_7.i123.i, 12
  store i32 %39, ptr %9, align 8
  %_20.i125.i = load i32, ptr %10, align 4, !noundef !2
  %_18.i126.i = icmp sgt i32 %39, %_20.i125.i
  br i1 %_18.i126.i, label %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit153.i, label %bb5.i145.i

bb5.i145.i:                                       ; preds = %bb9.i
  %_6.i129.i = and i32 %_7.i123.i, 7
  %40 = add nuw nsw i32 %_6.i129.i, 4
  %_27.i133.i = lshr i32 255, %_6.i129.i
  %_15.i127.i = ashr i32 %_7.i123.i, 3
  %count.i128.i = sext i32 %_15.i127.i to i64
  %41 = getelementptr inbounds i8, ptr %self.i124.i, i64 %count.i128.i
  %_26.i131.i = load i8, ptr %41, align 1, !noundef !2
  %_25.i132.i = zext i8 %_26.i131.i to i32
  %_24.i134.i = and i32 %_27.i133.i, %_25.i132.i
  %p.0.i141.i = getelementptr inbounds i8, ptr %41, i64 1
  %42 = and i32 %40, 31
  %_34.i142.i = shl i32 %_24.i134.i, %42
  %_40.i143.i = load i8, ptr %p.0.i141.i, align 1, !noundef !2
  %_31.i144.i = icmp ult i32 %_6.i129.i, 5
  br i1 %_31.i144.i, label %bb4.i152.i, label %bb5.i145.i.1

bb5.i145.i.1:                                     ; preds = %bb5.i145.i
  %43 = add nsw i32 %_6.i129.i, -4
  %44 = zext i8 %_40.i143.i to i32
  %p.0.i141.i.1 = getelementptr inbounds i8, ptr %p.0.i141.i, i64 1
  %45 = and i32 %43, 31
  %_34.i142.i.1 = shl i32 %44, %45
  %46 = or i32 %_34.i142.i.1, %_34.i142.i
  %_40.i143.i.1 = load i8, ptr %p.0.i141.i.1, align 1, !noundef !2
  br label %bb4.i152.i

bb4.i152.i:                                       ; preds = %bb5.i145.i.1, %bb5.i145.i
  %.lcssa123 = phi i32 [ %40, %bb5.i145.i ], [ %43, %bb5.i145.i.1 ]
  %.lcssa = phi i32 [ %_34.i142.i, %bb5.i145.i ], [ %46, %bb5.i145.i.1 ]
  %_40.i143.i.lcssa = phi i8 [ %_40.i143.i, %bb5.i145.i ], [ %_40.i143.i.1, %bb5.i145.i.1 ]
  %47 = zext i8 %_40.i143.i.lcssa to i32
  %_44.i150.i = sub nuw nsw i32 8, %.lcssa123
  %_42.i151.i = lshr i32 %47, %_44.i150.i
  %48 = or i32 %_42.i151.i, %.lcssa
  br label %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit153.i

_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit153.i: ; preds = %bb4.i152.i, %bb9.i
  %.0.i137.i = phi i32 [ %48, %bb4.i152.i ], [ 0, %bb9.i ]
  %49 = getelementptr inbounds %"src::lib::L3GrInfoT", ptr %gr.0.i, i64 0, i32 1
  %50 = trunc i32 %.0.i137.i to i16
  store i16 %50, ptr %49, align 8
  %_79.i = and i32 %.0.i137.i, 65535
  %51 = add i32 %_79.i, %part_23_sum.0.i
  %_7.i154.i = load i32, ptr %9, align 8, !noundef !2
  %self.i155.i = load ptr, ptr %bs, align 8, !noundef !2
  %52 = add i32 %_7.i154.i, 9
  store i32 %52, ptr %9, align 8
  %_20.i156.i = load i32, ptr %10, align 4, !noundef !2
  %_18.i157.i = icmp sgt i32 %52, %_20.i156.i
  br i1 %_18.i157.i, label %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit184.thread.i, label %bb2.i167.i

_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit184.thread.i: ; preds = %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit153.i
  %53 = getelementptr inbounds %"src::lib::L3GrInfoT", ptr %gr.0.i, i64 0, i32 2
  store i16 0, ptr %53, align 2
  br label %bb15.i

bb2.i167.i:                                       ; preds = %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit153.i
  %_15.i158.i = ashr i32 %_7.i154.i, 3
  %count.i159.i = sext i32 %_15.i158.i to i64
  %54 = getelementptr inbounds i8, ptr %self.i155.i, i64 %count.i159.i
  %_6.i160.i = and i32 %_7.i154.i, 7
  %_26.i162.i = load i8, ptr %54, align 1, !noundef !2
  %_25.i163.i = zext i8 %_26.i162.i to i32
  %_27.i164.i = lshr i32 255, %_6.i160.i
  %_24.i165.i = and i32 %_27.i164.i, %_25.i163.i
  %55 = add nuw nsw i32 %_6.i160.i, 1
  %_34.i173.i = shl nuw nsw i32 %_24.i165.i, %55
  %p.0.i172.i = getelementptr inbounds i8, ptr %54, i64 1
  %_40.i174.i = load i8, ptr %p.0.i172.i, align 1, !noundef !2
  %56 = zext i8 %_40.i174.i to i32
  %_44.i181.i = xor i32 %_6.i160.i, 7
  %_42.i182.i = lshr i32 %56, %_44.i181.i
  %57 = or i32 %_42.i182.i, %_34.i173.i
  %58 = getelementptr inbounds %"src::lib::L3GrInfoT", ptr %gr.0.i, i64 0, i32 2
  %59 = trunc i32 %57 to i16
  store i16 %59, ptr %58, align 2
  %_83.i = icmp ugt i32 %57, 288
  br i1 %_83.i, label %_ZN18read_side_info_lib3src3lib14read_side_info17h523925ee6178a166E.exit, label %bb15.i

bb15.i:                                           ; preds = %bb2.i167.i, %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit184.thread.i
  %_7.i185.i = load i32, ptr %9, align 8, !noundef !2
  %self.i186.i = load ptr, ptr %bs, align 8, !noundef !2
  %60 = add i32 %_7.i185.i, 8
  store i32 %60, ptr %9, align 8
  %_20.i187.i = load i32, ptr %10, align 4, !noundef !2
  %_18.i188.i = icmp sgt i32 %60, %_20.i187.i
  br i1 %_18.i188.i, label %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit215.i, label %bb2.i198.i

bb2.i198.i:                                       ; preds = %bb15.i
  %_15.i189.i = ashr i32 %_7.i185.i, 3
  %count.i190.i = sext i32 %_15.i189.i to i64
  %61 = getelementptr inbounds i8, ptr %self.i186.i, i64 %count.i190.i
  %_6.i191.i = and i32 %_7.i185.i, 7
  %_26.i193.i = load i8, ptr %61, align 1, !noundef !2
  %_25.i194.i = zext i8 %_26.i193.i to i32
  %_27.i195.i = lshr i32 255, %_6.i191.i
  %_24.i196.i = and i32 %_27.i195.i, %_25.i194.i
  %_318.i197.i = icmp eq i32 %_6.i191.i, 0
  br i1 %_318.i197.i, label %bb4.i214.i, label %bb5.i207.preheader.i

bb5.i207.preheader.i:                             ; preds = %bb2.i198.i
  %62 = add nsw i32 %_6.i191.i, -1
  %63 = and i32 %62, -8
  %p.0.i203.i = getelementptr inbounds i8, ptr %61, i64 1
  %_34.i204.i = shl nuw nsw i32 %_24.i196.i, %_6.i191.i
  %_40.i205.i = load i8, ptr %p.0.i203.i, align 1, !noundef !2
  %64 = zext i8 %_40.i205.i to i32
  %.neg.i = sub nsw i32 %63, %_6.i191.i
  br label %bb4.i214.i

bb4.i214.i:                                       ; preds = %bb5.i207.preheader.i, %bb2.i198.i
  %shl.0.lcssa.i209.neg.i = phi i32 [ -8, %bb2.i198.i ], [ %.neg.i, %bb5.i207.preheader.i ]
  %cache.0.lcssa.i210.i = phi i32 [ 0, %bb2.i198.i ], [ %_34.i204.i, %bb5.i207.preheader.i ]
  %next.0.lcssa.i211.i = phi i32 [ %_24.i196.i, %bb2.i198.i ], [ %64, %bb5.i207.preheader.i ]
  %_44.i212.i = add nsw i32 %shl.0.lcssa.i209.neg.i, 8
  %_42.i213.i = lshr i32 %next.0.lcssa.i211.i, %_44.i212.i
  %65 = or i32 %_42.i213.i, %cache.0.lcssa.i210.i
  br label %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit215.i

_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit215.i: ; preds = %bb4.i214.i, %bb15.i
  %.0.i199.i = phi i32 [ %65, %bb4.i214.i ], [ 0, %bb15.i ]
  %66 = getelementptr inbounds %"src::lib::L3GrInfoT", ptr %gr.0.i, i64 0, i32 4
  %67 = trunc i32 %.0.i199.i to i8
  store i8 %67, ptr %66, align 2
  %_93.i = load i8, ptr %3, align 1, !noundef !2
  %68 = and i8 %_93.i, 8
  %69 = icmp eq i8 %68, 0
  %_7.i216.i = load i32, ptr %9, align 8
  %self.i217.i = load ptr, ptr %bs, align 8
  br i1 %69, label %bb18.split.i, label %bb17.split.i

bb18.split.i:                                     ; preds = %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit215.i
  %70 = add i32 %_7.i216.i, 9
  store i32 %70, ptr %9, align 8
  %_20.i218.i = load i32, ptr %10, align 4, !noundef !2
  %_18.i219.i = icmp sgt i32 %70, %_20.i218.i
  br i1 %_18.i219.i, label %bb19.i, label %bb2.i229.i

bb2.i229.i:                                       ; preds = %bb18.split.i
  %_15.i220.i = ashr i32 %_7.i216.i, 3
  %count.i221.i = sext i32 %_15.i220.i to i64
  %71 = getelementptr inbounds i8, ptr %self.i217.i, i64 %count.i221.i
  %_6.i222.i = and i32 %_7.i216.i, 7
  %_26.i224.i = load i8, ptr %71, align 1, !noundef !2
  %_25.i225.i = zext i8 %_26.i224.i to i32
  %_27.i226.i = lshr i32 255, %_6.i222.i
  %_24.i227.i = and i32 %_27.i226.i, %_25.i225.i
  %72 = add nuw nsw i32 %_6.i222.i, 1
  %_34.i235.i = shl nuw nsw i32 %_24.i227.i, %72
  %p.0.i234.i = getelementptr inbounds i8, ptr %71, i64 1
  %_40.i236.i = load i8, ptr %p.0.i234.i, align 1, !noundef !2
  %73 = zext i8 %_40.i236.i to i32
  %_44.i243.i = xor i32 %_6.i222.i, 7
  %_42.i244.i = lshr i32 %73, %_44.i243.i
  %74 = or i32 %_42.i244.i, %_34.i235.i
  br label %bb19.i

bb17.split.i:                                     ; preds = %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit215.i
  %75 = add i32 %_7.i216.i, 4
  store i32 %75, ptr %9, align 8
  %_20.i249.i = load i32, ptr %10, align 4, !noundef !2
  %_18.i250.i = icmp sgt i32 %75, %_20.i249.i
  br i1 %_18.i250.i, label %bb19.i, label %bb2.i260.i

bb2.i260.i:                                       ; preds = %bb17.split.i
  %_15.i251.i = ashr i32 %_7.i216.i, 3
  %count.i252.i = sext i32 %_15.i251.i to i64
  %76 = getelementptr inbounds i8, ptr %self.i217.i, i64 %count.i252.i
  %_6.i253.i = and i32 %_7.i216.i, 7
  %_10.i254.i = add nuw nsw i32 %_6.i253.i, 4
  %_26.i255.i = load i8, ptr %76, align 1, !noundef !2
  %_25.i256.i = zext i8 %_26.i255.i to i32
  %_27.i257.i = lshr i32 255, %_6.i253.i
  %_24.i258.i = and i32 %_27.i257.i, %_25.i256.i
  %_318.i259.i = icmp ult i32 %_6.i253.i, 5
  br i1 %_318.i259.i, label %bb4.i276.i, label %bb5.i269.preheader.i

bb5.i269.preheader.i:                             ; preds = %bb2.i260.i
  %77 = add nsw i32 %_6.i253.i, -4
  br label %bb5.i269.i

bb5.i269.i:                                       ; preds = %bb5.i269.i, %bb5.i269.preheader.i
  %78 = phi i32 [ %82, %bb5.i269.i ], [ %77, %bb5.i269.preheader.i ]
  %next.011.i262.i = phi i32 [ %81, %bb5.i269.i ], [ %_24.i258.i, %bb5.i269.preheader.i ]
  %cache.010.i263.i = phi i32 [ %80, %bb5.i269.i ], [ 0, %bb5.i269.preheader.i ]
  %.pn9.i264.i = phi ptr [ %p.0.i265.i, %bb5.i269.i ], [ %76, %bb5.i269.preheader.i ]
  %p.0.i265.i = getelementptr inbounds i8, ptr %.pn9.i264.i, i64 1
  %79 = and i32 %78, 31
  %_34.i266.i = shl i32 %next.011.i262.i, %79
  %80 = or i32 %_34.i266.i, %cache.010.i263.i
  %_40.i267.i = load i8, ptr %p.0.i265.i, align 1, !noundef !2
  %81 = zext i8 %_40.i267.i to i32
  %82 = add nsw i32 %78, -8
  %_31.i268.i = icmp ult i32 %78, 9
  br i1 %_31.i268.i, label %bb4.i276.i.loopexit, label %bb5.i269.i

bb4.i276.i.loopexit:                              ; preds = %bb5.i269.i
  %83 = zext i8 %_40.i267.i to i32
  br label %bb4.i276.i

bb4.i276.i:                                       ; preds = %bb4.i276.i.loopexit, %bb2.i260.i
  %shl.0.lcssa.i271.i = phi i32 [ %_10.i254.i, %bb2.i260.i ], [ %78, %bb4.i276.i.loopexit ]
  %cache.0.lcssa.i272.i = phi i32 [ 0, %bb2.i260.i ], [ %80, %bb4.i276.i.loopexit ]
  %next.0.lcssa.i273.i = phi i32 [ %_24.i258.i, %bb2.i260.i ], [ %83, %bb4.i276.i.loopexit ]
  %_44.i274.i = sub nuw nsw i32 8, %shl.0.lcssa.i271.i
  %_42.i275.i = lshr i32 %next.0.lcssa.i273.i, %_44.i274.i
  %84 = or i32 %_42.i275.i, %cache.0.lcssa.i272.i
  br label %bb19.i

bb19.i:                                           ; preds = %bb4.i276.i, %bb17.split.i, %bb2.i229.i, %bb18.split.i
  %phi.call.i = phi i32 [ %74, %bb2.i229.i ], [ 0, %bb18.split.i ], [ %84, %bb4.i276.i ], [ 0, %bb17.split.i ]
  %85 = getelementptr inbounds %"src::lib::L3GrInfoT", ptr %gr.0.i, i64 0, i32 3
  %86 = trunc i32 %phi.call.i to i16
  store i16 %86, ptr %85, align 4
  store ptr %35, ptr %gr.0.i, align 8
  %87 = getelementptr inbounds %"src::lib::L3GrInfoT", ptr %gr.0.i, i64 0, i32 7
  store i8 22, ptr %87, align 1
  %88 = getelementptr inbounds %"src::lib::L3GrInfoT", ptr %gr.0.i, i64 0, i32 8
  store i8 0, ptr %88, align 2
  %_7.i278.i = load i32, ptr %9, align 8, !noundef !2
  %self.i279.i = load ptr, ptr %bs, align 8, !noundef !2
  %89 = add i32 %_7.i278.i, 1
  store i32 %89, ptr %9, align 8
  %_20.i280.i = load i32, ptr %10, align 4, !noundef !2
  %_18.i281.i = icmp sgt i32 %89, %_20.i280.i
  br i1 %_18.i281.i, label %bb38.i, label %bb2.i291.i

bb2.i291.i:                                       ; preds = %bb19.i
  %_15.i282.i = ashr i32 %_7.i278.i, 3
  %count.i283.i = sext i32 %_15.i282.i to i64
  %90 = getelementptr inbounds i8, ptr %self.i279.i, i64 %count.i283.i
  %_6.i284.i = and i32 %_7.i278.i, 7
  %_26.i286.i = load i8, ptr %90, align 1, !noundef !2
  %_25.i287.i = zext i8 %_26.i286.i to i32
  %_27.i288.i = lshr i32 255, %_6.i284.i
  %_24.i289.i = and i32 %_27.i288.i, %_25.i287.i
  %_44.i305.i = xor i32 %_6.i284.i, 7
  %_42.i306.i = lshr i32 %_24.i289.i, %_44.i305.i
  %91 = icmp eq i32 %_42.i306.i, 0
  br i1 %91, label %bb38.i, label %bb22.i

bb38.i:                                           ; preds = %bb2.i291.i, %bb19.i
  %92 = getelementptr inbounds %"src::lib::L3GrInfoT", ptr %gr.0.i, i64 0, i32 5
  store i8 0, ptr %92, align 1
  %93 = getelementptr inbounds %"src::lib::L3GrInfoT", ptr %gr.0.i, i64 0, i32 6
  store i8 0, ptr %93, align 8
  %_7.i309.i = load i32, ptr %9, align 8, !noundef !2
  %self.i310.i = load ptr, ptr %bs, align 8, !noundef !2
  %94 = add i32 %_7.i309.i, 15
  store i32 %94, ptr %9, align 8
  %_20.i311.i = load i32, ptr %10, align 4, !noundef !2
  %_18.i312.i = icmp sgt i32 %94, %_20.i311.i
  br i1 %_18.i312.i, label %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit339.i, label %bb5.i331.i

bb5.i331.i:                                       ; preds = %bb38.i
  %_6.i315.i = and i32 %_7.i309.i, 7
  %95 = add nuw nsw i32 %_6.i315.i, 7
  %_27.i319.i = lshr i32 255, %_6.i315.i
  %_15.i313.i = ashr i32 %_7.i309.i, 3
  %count.i314.i = sext i32 %_15.i313.i to i64
  %96 = getelementptr inbounds i8, ptr %self.i310.i, i64 %count.i314.i
  %_26.i317.i = load i8, ptr %96, align 1, !noundef !2
  %_25.i318.i = zext i8 %_26.i317.i to i32
  %_24.i320.i = and i32 %_27.i319.i, %_25.i318.i
  %p.0.i327.i = getelementptr inbounds i8, ptr %96, i64 1
  %97 = and i32 %95, 31
  %_34.i328.i = shl i32 %_24.i320.i, %97
  %_40.i329.i = load i8, ptr %p.0.i327.i, align 1, !noundef !2
  %_31.i330.i = icmp ult i32 %_6.i315.i, 2
  br i1 %_31.i330.i, label %bb4.i338.i, label %bb5.i331.i.1

bb5.i331.i.1:                                     ; preds = %bb5.i331.i
  %98 = add nsw i32 %_6.i315.i, -1
  %99 = zext i8 %_40.i329.i to i32
  %p.0.i327.i.1 = getelementptr inbounds i8, ptr %p.0.i327.i, i64 1
  %100 = and i32 %98, 31
  %_34.i328.i.1 = shl i32 %99, %100
  %101 = or i32 %_34.i328.i.1, %_34.i328.i
  %_40.i329.i.1 = load i8, ptr %p.0.i327.i.1, align 1, !noundef !2
  br label %bb4.i338.i

bb4.i338.i:                                       ; preds = %bb5.i331.i.1, %bb5.i331.i
  %.lcssa135 = phi i32 [ %95, %bb5.i331.i ], [ %98, %bb5.i331.i.1 ]
  %.lcssa134 = phi i32 [ %_34.i328.i, %bb5.i331.i ], [ %101, %bb5.i331.i.1 ]
  %_40.i329.i.lcssa = phi i8 [ %_40.i329.i, %bb5.i331.i ], [ %_40.i329.i.1, %bb5.i331.i.1 ]
  %102 = zext i8 %_40.i329.i.lcssa to i32
  %_44.i336.i = sub nuw nsw i32 8, %.lcssa135
  %_42.i337.i = lshr i32 %102, %_44.i336.i
  %103 = or i32 %_42.i337.i, %.lcssa134
  br label %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit339.i

_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit339.i: ; preds = %bb4.i338.i, %bb38.i
  %.0.i323.i = phi i32 [ %103, %bb4.i338.i ], [ 0, %bb38.i ]
  %104 = add i32 %_7.i309.i, 19
  store i32 %104, ptr %9, align 8
  %_18.i343.i = icmp sgt i32 %104, %_20.i311.i
  br i1 %_18.i343.i, label %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit370.i, label %bb2.i353.i

bb2.i353.i:                                       ; preds = %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit339.i
  %_15.i344.i = ashr i32 %94, 3
  %count.i345.i = sext i32 %_15.i344.i to i64
  %105 = getelementptr inbounds i8, ptr %self.i310.i, i64 %count.i345.i
  %_6.i346.i = and i32 %94, 7
  %_10.i347.i = add nuw nsw i32 %_6.i346.i, 4
  %_26.i348.i = load i8, ptr %105, align 1, !noundef !2
  %_25.i349.i = zext i8 %_26.i348.i to i32
  %_27.i350.i = lshr i32 255, %_6.i346.i
  %_24.i351.i = and i32 %_27.i350.i, %_25.i349.i
  %_318.i352.i = icmp ult i32 %_6.i346.i, 5
  br i1 %_318.i352.i, label %bb4.i369.i, label %bb5.i362.preheader.i

bb5.i362.preheader.i:                             ; preds = %bb2.i353.i
  %106 = add nsw i32 %_6.i346.i, -4
  br label %bb5.i362.i

bb5.i362.i:                                       ; preds = %bb5.i362.i, %bb5.i362.preheader.i
  %107 = phi i32 [ %111, %bb5.i362.i ], [ %106, %bb5.i362.preheader.i ]
  %next.011.i355.i = phi i32 [ %110, %bb5.i362.i ], [ %_24.i351.i, %bb5.i362.preheader.i ]
  %cache.010.i356.i = phi i32 [ %109, %bb5.i362.i ], [ 0, %bb5.i362.preheader.i ]
  %.pn9.i357.i = phi ptr [ %p.0.i358.i, %bb5.i362.i ], [ %105, %bb5.i362.preheader.i ]
  %p.0.i358.i = getelementptr inbounds i8, ptr %.pn9.i357.i, i64 1
  %108 = and i32 %107, 31
  %_34.i359.i = shl i32 %next.011.i355.i, %108
  %109 = or i32 %_34.i359.i, %cache.010.i356.i
  %_40.i360.i = load i8, ptr %p.0.i358.i, align 1, !noundef !2
  %110 = zext i8 %_40.i360.i to i32
  %111 = add nsw i32 %107, -8
  %_31.i361.i = icmp ult i32 %107, 9
  br i1 %_31.i361.i, label %bb4.i369.i.loopexit, label %bb5.i362.i

bb4.i369.i.loopexit:                              ; preds = %bb5.i362.i
  %112 = zext i8 %_40.i360.i to i32
  br label %bb4.i369.i

bb4.i369.i:                                       ; preds = %bb4.i369.i.loopexit, %bb2.i353.i
  %shl.0.lcssa.i364.i = phi i32 [ %_10.i347.i, %bb2.i353.i ], [ %107, %bb4.i369.i.loopexit ]
  %cache.0.lcssa.i365.i = phi i32 [ 0, %bb2.i353.i ], [ %109, %bb4.i369.i.loopexit ]
  %next.0.lcssa.i366.i = phi i32 [ %_24.i351.i, %bb2.i353.i ], [ %112, %bb4.i369.i.loopexit ]
  %_44.i367.i = sub nuw nsw i32 8, %shl.0.lcssa.i364.i
  %_42.i368.i = lshr i32 %next.0.lcssa.i366.i, %_44.i367.i
  %113 = or i32 %_42.i368.i, %cache.0.lcssa.i365.i
  br label %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit370.i

_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit370.i: ; preds = %bb4.i369.i, %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit339.i
  %.0.i354.i = phi i32 [ %113, %bb4.i369.i ], [ 0, %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit339.i ]
  %114 = getelementptr inbounds %"src::lib::L3GrInfoT", ptr %gr.0.i, i64 0, i32 10
  %115 = trunc i32 %.0.i354.i to i8
  store i8 %115, ptr %114, align 2
  %_7.i371.i = load i32, ptr %9, align 8, !noundef !2
  %self.i372.i = load ptr, ptr %bs, align 8, !noundef !2
  %116 = add i32 %_7.i371.i, 3
  store i32 %116, ptr %9, align 8
  %_20.i373.i = load i32, ptr %10, align 4, !noundef !2
  %_18.i374.i = icmp sgt i32 %116, %_20.i373.i
  br i1 %_18.i374.i, label %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit401.i, label %bb2.i384.i

bb2.i384.i:                                       ; preds = %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit370.i
  %_15.i375.i = ashr i32 %_7.i371.i, 3
  %count.i376.i = sext i32 %_15.i375.i to i64
  %117 = getelementptr inbounds i8, ptr %self.i372.i, i64 %count.i376.i
  %_6.i377.i = and i32 %_7.i371.i, 7
  %_10.i378.i = add nuw nsw i32 %_6.i377.i, 3
  %_26.i379.i = load i8, ptr %117, align 1, !noundef !2
  %_25.i380.i = zext i8 %_26.i379.i to i32
  %_27.i381.i = lshr i32 255, %_6.i377.i
  %_24.i382.i = and i32 %_27.i381.i, %_25.i380.i
  %_318.i383.i = icmp ult i32 %_6.i377.i, 6
  br i1 %_318.i383.i, label %bb4.i400.i, label %bb5.i393.preheader.i

bb5.i393.preheader.i:                             ; preds = %bb2.i384.i
  %118 = add nsw i32 %_6.i377.i, -5
  br label %bb5.i393.i

bb5.i393.i:                                       ; preds = %bb5.i393.i, %bb5.i393.preheader.i
  %119 = phi i32 [ %123, %bb5.i393.i ], [ %118, %bb5.i393.preheader.i ]
  %next.011.i386.i = phi i32 [ %122, %bb5.i393.i ], [ %_24.i382.i, %bb5.i393.preheader.i ]
  %cache.010.i387.i = phi i32 [ %121, %bb5.i393.i ], [ 0, %bb5.i393.preheader.i ]
  %.pn9.i388.i = phi ptr [ %p.0.i389.i, %bb5.i393.i ], [ %117, %bb5.i393.preheader.i ]
  %p.0.i389.i = getelementptr inbounds i8, ptr %.pn9.i388.i, i64 1
  %120 = and i32 %119, 31
  %_34.i390.i = shl i32 %next.011.i386.i, %120
  %121 = or i32 %_34.i390.i, %cache.010.i387.i
  %_40.i391.i = load i8, ptr %p.0.i389.i, align 1, !noundef !2
  %122 = zext i8 %_40.i391.i to i32
  %123 = add nsw i32 %119, -8
  %_31.i392.i = icmp ult i32 %119, 9
  br i1 %_31.i392.i, label %bb4.i400.i.loopexit, label %bb5.i393.i

bb4.i400.i.loopexit:                              ; preds = %bb5.i393.i
  %124 = zext i8 %_40.i391.i to i32
  br label %bb4.i400.i

bb4.i400.i:                                       ; preds = %bb4.i400.i.loopexit, %bb2.i384.i
  %shl.0.lcssa.i395.i = phi i32 [ %_10.i378.i, %bb2.i384.i ], [ %119, %bb4.i400.i.loopexit ]
  %cache.0.lcssa.i396.i = phi i32 [ 0, %bb2.i384.i ], [ %121, %bb4.i400.i.loopexit ]
  %next.0.lcssa.i397.i = phi i32 [ %_24.i382.i, %bb2.i384.i ], [ %124, %bb4.i400.i.loopexit ]
  %_44.i398.i = sub nuw nsw i32 8, %shl.0.lcssa.i395.i
  %_42.i399.i = lshr i32 %next.0.lcssa.i397.i, %_44.i398.i
  %125 = or i32 %_42.i399.i, %cache.0.lcssa.i396.i
  br label %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit401.i

_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit401.i: ; preds = %bb4.i400.i, %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit370.i
  %.0.i385.i = phi i32 [ %125, %bb4.i400.i ], [ 0, %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit370.i ]
  %126 = getelementptr inbounds %"src::lib::L3GrInfoT", ptr %gr.0.i, i64 0, i32 10, i64 1
  %127 = trunc i32 %.0.i385.i to i8
  store i8 %127, ptr %126, align 1
  %128 = getelementptr inbounds %"src::lib::L3GrInfoT", ptr %gr.0.i, i64 0, i32 10, i64 2
  store i8 -1, ptr %128, align 2
  br label %bb42.i

bb22.i:                                           ; preds = %bb2.i291.i
  %129 = add i32 %_7.i278.i, 3
  store i32 %129, ptr %9, align 8
  %_18.i405.i = icmp sgt i32 %129, %_20.i280.i
  br i1 %_18.i405.i, label %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit432.thread.i, label %bb2.i415.i

_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit432.thread.i: ; preds = %bb22.i
  %130 = getelementptr inbounds %"src::lib::L3GrInfoT", ptr %gr.0.i, i64 0, i32 5
  store i8 0, ptr %130, align 1
  br label %_ZN18read_side_info_lib3src3lib14read_side_info17h523925ee6178a166E.exit

bb2.i415.i:                                       ; preds = %bb22.i
  %_15.i406.i = ashr i32 %89, 3
  %count.i407.i = sext i32 %_15.i406.i to i64
  %131 = getelementptr inbounds i8, ptr %self.i279.i, i64 %count.i407.i
  %_6.i408.i = and i32 %89, 7
  %_10.i409.i = add nuw nsw i32 %_6.i408.i, 2
  %_26.i410.i = load i8, ptr %131, align 1, !noundef !2
  %_25.i411.i = zext i8 %_26.i410.i to i32
  %_27.i412.i = lshr i32 255, %_6.i408.i
  %_24.i413.i = and i32 %_27.i412.i, %_25.i411.i
  %_318.i414.not.i = icmp eq i32 %_6.i408.i, 7
  br i1 %_318.i414.not.i, label %bb5.i424.preheader.i, label %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit432.i

bb5.i424.preheader.i:                             ; preds = %bb2.i415.i
  %_34.i421.i = shl nuw nsw i32 %_24.i413.i, 1
  %p.0.i420.i = getelementptr inbounds i8, ptr %131, i64 1
  %_40.i422.i = load i8, ptr %p.0.i420.i, align 1, !noundef !2
  %132 = zext i8 %_40.i422.i to i32
  br label %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit432.i

_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit432.i: ; preds = %bb5.i424.preheader.i, %bb2.i415.i
  %shl.0.lcssa.i426.i = phi i32 [ %_10.i409.i, %bb2.i415.i ], [ 1, %bb5.i424.preheader.i ]
  %cache.0.lcssa.i427.i = phi i32 [ 0, %bb2.i415.i ], [ %_34.i421.i, %bb5.i424.preheader.i ]
  %next.0.lcssa.i428.i = phi i32 [ %_24.i413.i, %bb2.i415.i ], [ %132, %bb5.i424.preheader.i ]
  %_44.i429.i = sub nuw nsw i32 8, %shl.0.lcssa.i426.i
  %_42.i430.i = lshr i32 %next.0.lcssa.i428.i, %_44.i429.i
  %133 = or i32 %_42.i430.i, %cache.0.lcssa.i427.i
  %134 = getelementptr inbounds %"src::lib::L3GrInfoT", ptr %gr.0.i, i64 0, i32 5
  %135 = trunc i32 %133 to i8
  store i8 %135, ptr %134, align 1
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %_ZN18read_side_info_lib3src3lib14read_side_info17h523925ee6178a166E.exit, label %bb25.i

bb25.i:                                           ; preds = %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit432.i
  %_7.i433.i = load i32, ptr %9, align 8, !noundef !2
  %self.i434.i = load ptr, ptr %bs, align 8, !noundef !2
  %137 = add i32 %_7.i433.i, 1
  store i32 %137, ptr %9, align 8
  %_20.i435.i = load i32, ptr %10, align 4, !noundef !2
  %_18.i436.i = icmp sgt i32 %137, %_20.i435.i
  br i1 %_18.i436.i, label %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit463.i, label %bb2.i446.i

bb2.i446.i:                                       ; preds = %bb25.i
  %_15.i437.i = ashr i32 %_7.i433.i, 3
  %count.i438.i = sext i32 %_15.i437.i to i64
  %138 = getelementptr inbounds i8, ptr %self.i434.i, i64 %count.i438.i
  %_6.i439.i = and i32 %_7.i433.i, 7
  %_26.i441.i = load i8, ptr %138, align 1, !noundef !2
  %_25.i442.i = zext i8 %_26.i441.i to i32
  %_27.i443.i = lshr i32 255, %_6.i439.i
  %_24.i444.i = and i32 %_27.i443.i, %_25.i442.i
  %_44.i460.i = xor i32 %_6.i439.i, 7
  %_42.i461.i = lshr i32 %_24.i444.i, %_44.i460.i
  br label %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit463.i

_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit463.i: ; preds = %bb2.i446.i, %bb25.i
  %.0.i447.i = phi i32 [ %_42.i461.i, %bb2.i446.i ], [ 0, %bb25.i ]
  %139 = getelementptr inbounds %"src::lib::L3GrInfoT", ptr %gr.0.i, i64 0, i32 6
  %140 = trunc i32 %.0.i447.i to i8
  store i8 %140, ptr %139, align 8
  %141 = getelementptr inbounds %"src::lib::L3GrInfoT", ptr %gr.0.i, i64 0, i32 10
  store i8 7, ptr %141, align 2
  %142 = getelementptr inbounds %"src::lib::L3GrInfoT", ptr %gr.0.i, i64 0, i32 10, i64 1
  store i8 -1, ptr %142, align 1
  %_119.i = load i8, ptr %134, align 1, !noundef !2
  %_117.i = icmp eq i8 %_119.i, 2
  br i1 %_117.i, label %bb27.i, label %bb33.i

bb33.sink.split.i:                                ; preds = %bb29.i, %bb28.i
  %.sink816.i = phi i8 [ 0, %bb28.i ], [ %.60.i, %bb29.i ]
  %.sink.i = phi i8 [ 39, %bb28.i ], [ 30, %bb29.i ]
  store i8 %.sink816.i, ptr %87, align 1
  store i8 %.sink.i, ptr %88, align 2
  br label %bb33.i

bb33.i:                                           ; preds = %bb33.sink.split.i, %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit463.i
  %scfsi.2.i = phi i32 [ %spec.select.i, %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit463.i ], [ %190, %bb33.sink.split.i ]
  %_7.i464.i = load i32, ptr %9, align 8, !noundef !2
  %self.i465.i = load ptr, ptr %bs, align 8, !noundef !2
  %143 = add i32 %_7.i464.i, 10
  store i32 %143, ptr %9, align 8
  %_20.i466.i = load i32, ptr %10, align 4, !noundef !2
  %_18.i467.i = icmp sgt i32 %143, %_20.i466.i
  br i1 %_18.i467.i, label %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit494.i, label %bb5.i486.i

bb5.i486.i:                                       ; preds = %bb33.i
  %_6.i470.i = and i32 %_7.i464.i, 7
  %144 = add nuw nsw i32 %_6.i470.i, 2
  %_27.i474.i = lshr i32 255, %_6.i470.i
  %_15.i468.i = ashr i32 %_7.i464.i, 3
  %count.i469.i = sext i32 %_15.i468.i to i64
  %145 = getelementptr inbounds i8, ptr %self.i465.i, i64 %count.i469.i
  %_26.i472.i = load i8, ptr %145, align 1, !noundef !2
  %_25.i473.i = zext i8 %_26.i472.i to i32
  %_24.i475.i = and i32 %_27.i474.i, %_25.i473.i
  %p.0.i482.i = getelementptr inbounds i8, ptr %145, i64 1
  %146 = and i32 %144, 31
  %_34.i483.i = shl i32 %_24.i475.i, %146
  %_40.i484.i = load i8, ptr %p.0.i482.i, align 1, !noundef !2
  %_31.i485.i.not = icmp eq i32 %_6.i470.i, 7
  br i1 %_31.i485.i.not, label %bb5.i486.i.1, label %bb4.i493.i

bb5.i486.i.1:                                     ; preds = %bb5.i486.i
  %147 = add nsw i32 %_6.i470.i, -6
  %148 = zext i8 %_40.i484.i to i32
  %p.0.i482.i.1 = getelementptr inbounds i8, ptr %p.0.i482.i, i64 1
  %149 = and i32 %147, 31
  %_34.i483.i.1 = shl i32 %148, %149
  %150 = or i32 %_34.i483.i.1, %_34.i483.i
  %_40.i484.i.1 = load i8, ptr %p.0.i482.i.1, align 1, !noundef !2
  br label %bb4.i493.i

bb4.i493.i:                                       ; preds = %bb5.i486.i.1, %bb5.i486.i
  %.lcssa127 = phi i32 [ %144, %bb5.i486.i ], [ %147, %bb5.i486.i.1 ]
  %.lcssa126 = phi i32 [ %_34.i483.i, %bb5.i486.i ], [ %150, %bb5.i486.i.1 ]
  %_40.i484.i.lcssa = phi i8 [ %_40.i484.i, %bb5.i486.i ], [ %_40.i484.i.1, %bb5.i486.i.1 ]
  %151 = zext i8 %_40.i484.i.lcssa to i32
  %_44.i491.i = sub nuw nsw i32 8, %.lcssa127
  %_42.i492.i = lshr i32 %151, %_44.i491.i
  %152 = or i32 %_42.i492.i, %.lcssa126
  br label %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit494.i

_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit494.i: ; preds = %bb4.i493.i, %bb33.i
  %.0.i478.i = phi i32 [ %152, %bb4.i493.i ], [ 0, %bb33.i ]
  %153 = shl i32 %.0.i478.i, 5
  %154 = add i32 %_7.i464.i, 13
  store i32 %154, ptr %9, align 8
  %_18.i498.i = icmp sgt i32 %154, %_20.i466.i
  br i1 %_18.i498.i, label %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit525.i, label %bb2.i508.i

bb2.i508.i:                                       ; preds = %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit494.i
  %_15.i499.i = ashr i32 %143, 3
  %count.i500.i = sext i32 %_15.i499.i to i64
  %155 = getelementptr inbounds i8, ptr %self.i465.i, i64 %count.i500.i
  %_6.i501.i = and i32 %143, 7
  %_10.i502.i = add nuw nsw i32 %_6.i501.i, 3
  %_26.i503.i = load i8, ptr %155, align 1, !noundef !2
  %_25.i504.i = zext i8 %_26.i503.i to i32
  %_27.i505.i = lshr i32 255, %_6.i501.i
  %_24.i506.i = and i32 %_27.i505.i, %_25.i504.i
  %_318.i507.i = icmp ult i32 %_6.i501.i, 6
  br i1 %_318.i507.i, label %bb4.i524.i, label %bb5.i517.preheader.i

bb5.i517.preheader.i:                             ; preds = %bb2.i508.i
  %156 = add nsw i32 %_6.i501.i, -5
  br label %bb5.i517.i

bb5.i517.i:                                       ; preds = %bb5.i517.i, %bb5.i517.preheader.i
  %157 = phi i32 [ %161, %bb5.i517.i ], [ %156, %bb5.i517.preheader.i ]
  %next.011.i510.i = phi i32 [ %160, %bb5.i517.i ], [ %_24.i506.i, %bb5.i517.preheader.i ]
  %cache.010.i511.i = phi i32 [ %159, %bb5.i517.i ], [ 0, %bb5.i517.preheader.i ]
  %.pn9.i512.i = phi ptr [ %p.0.i513.i, %bb5.i517.i ], [ %155, %bb5.i517.preheader.i ]
  %p.0.i513.i = getelementptr inbounds i8, ptr %.pn9.i512.i, i64 1
  %158 = and i32 %157, 31
  %_34.i514.i = shl i32 %next.011.i510.i, %158
  %159 = or i32 %_34.i514.i, %cache.010.i511.i
  %_40.i515.i = load i8, ptr %p.0.i513.i, align 1, !noundef !2
  %160 = zext i8 %_40.i515.i to i32
  %161 = add nsw i32 %157, -8
  %_31.i516.i = icmp ult i32 %157, 9
  br i1 %_31.i516.i, label %bb4.i524.i.loopexit, label %bb5.i517.i

bb4.i524.i.loopexit:                              ; preds = %bb5.i517.i
  %162 = zext i8 %_40.i515.i to i32
  br label %bb4.i524.i

bb4.i524.i:                                       ; preds = %bb4.i524.i.loopexit, %bb2.i508.i
  %shl.0.lcssa.i519.i = phi i32 [ %_10.i502.i, %bb2.i508.i ], [ %157, %bb4.i524.i.loopexit ]
  %cache.0.lcssa.i520.i = phi i32 [ 0, %bb2.i508.i ], [ %159, %bb4.i524.i.loopexit ]
  %next.0.lcssa.i521.i = phi i32 [ %_24.i506.i, %bb2.i508.i ], [ %162, %bb4.i524.i.loopexit ]
  %_44.i522.i = sub nuw nsw i32 8, %shl.0.lcssa.i519.i
  %_42.i523.i = lshr i32 %next.0.lcssa.i521.i, %_44.i522.i
  %163 = or i32 %_42.i523.i, %cache.0.lcssa.i520.i
  br label %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit525.i

_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit525.i: ; preds = %bb4.i524.i, %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit494.i
  %.0.i509.i = phi i32 [ %163, %bb4.i524.i ], [ 0, %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit494.i ]
  %164 = getelementptr inbounds %"src::lib::L3GrInfoT", ptr %gr.0.i, i64 0, i32 11
  %165 = trunc i32 %.0.i509.i to i8
  store i8 %165, ptr %164, align 1
  %_7.i526.i = load i32, ptr %9, align 8, !noundef !2
  %self.i527.i = load ptr, ptr %bs, align 8, !noundef !2
  %166 = add i32 %_7.i526.i, 3
  store i32 %166, ptr %9, align 8
  %_20.i528.i = load i32, ptr %10, align 4, !noundef !2
  %_18.i529.i = icmp sgt i32 %166, %_20.i528.i
  br i1 %_18.i529.i, label %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit556.i, label %bb2.i539.i

bb2.i539.i:                                       ; preds = %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit525.i
  %_15.i530.i = ashr i32 %_7.i526.i, 3
  %count.i531.i = sext i32 %_15.i530.i to i64
  %167 = getelementptr inbounds i8, ptr %self.i527.i, i64 %count.i531.i
  %_6.i532.i = and i32 %_7.i526.i, 7
  %_10.i533.i = add nuw nsw i32 %_6.i532.i, 3
  %_26.i534.i = load i8, ptr %167, align 1, !noundef !2
  %_25.i535.i = zext i8 %_26.i534.i to i32
  %_27.i536.i = lshr i32 255, %_6.i532.i
  %_24.i537.i = and i32 %_27.i536.i, %_25.i535.i
  %_318.i538.i = icmp ult i32 %_6.i532.i, 6
  br i1 %_318.i538.i, label %bb4.i555.i, label %bb5.i548.preheader.i

bb5.i548.preheader.i:                             ; preds = %bb2.i539.i
  %168 = add nsw i32 %_6.i532.i, -5
  br label %bb5.i548.i

bb5.i548.i:                                       ; preds = %bb5.i548.i, %bb5.i548.preheader.i
  %169 = phi i32 [ %173, %bb5.i548.i ], [ %168, %bb5.i548.preheader.i ]
  %next.011.i541.i = phi i32 [ %172, %bb5.i548.i ], [ %_24.i537.i, %bb5.i548.preheader.i ]
  %cache.010.i542.i = phi i32 [ %171, %bb5.i548.i ], [ 0, %bb5.i548.preheader.i ]
  %.pn9.i543.i = phi ptr [ %p.0.i544.i, %bb5.i548.i ], [ %167, %bb5.i548.preheader.i ]
  %p.0.i544.i = getelementptr inbounds i8, ptr %.pn9.i543.i, i64 1
  %170 = and i32 %169, 31
  %_34.i545.i = shl i32 %next.011.i541.i, %170
  %171 = or i32 %_34.i545.i, %cache.010.i542.i
  %_40.i546.i = load i8, ptr %p.0.i544.i, align 1, !noundef !2
  %172 = zext i8 %_40.i546.i to i32
  %173 = add nsw i32 %169, -8
  %_31.i547.i = icmp ult i32 %169, 9
  br i1 %_31.i547.i, label %bb4.i555.i.loopexit, label %bb5.i548.i

bb4.i555.i.loopexit:                              ; preds = %bb5.i548.i
  %174 = zext i8 %_40.i546.i to i32
  br label %bb4.i555.i

bb4.i555.i:                                       ; preds = %bb4.i555.i.loopexit, %bb2.i539.i
  %shl.0.lcssa.i550.i = phi i32 [ %_10.i533.i, %bb2.i539.i ], [ %169, %bb4.i555.i.loopexit ]
  %cache.0.lcssa.i551.i = phi i32 [ 0, %bb2.i539.i ], [ %171, %bb4.i555.i.loopexit ]
  %next.0.lcssa.i552.i = phi i32 [ %_24.i537.i, %bb2.i539.i ], [ %174, %bb4.i555.i.loopexit ]
  %_44.i553.i = sub nuw nsw i32 8, %shl.0.lcssa.i550.i
  %_42.i554.i = lshr i32 %next.0.lcssa.i552.i, %_44.i553.i
  %175 = or i32 %_42.i554.i, %cache.0.lcssa.i551.i
  br label %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit556.i

_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit556.i: ; preds = %bb4.i555.i, %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit525.i
  %.0.i540.i = phi i32 [ %175, %bb4.i555.i ], [ 0, %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit525.i ]
  %176 = getelementptr inbounds %"src::lib::L3GrInfoT", ptr %gr.0.i, i64 0, i32 11, i64 1
  %177 = trunc i32 %.0.i540.i to i8
  store i8 %177, ptr %176, align 1
  %_7.i557.i = load i32, ptr %9, align 8, !noundef !2
  %self.i558.i = load ptr, ptr %bs, align 8, !noundef !2
  %178 = add i32 %_7.i557.i, 3
  store i32 %178, ptr %9, align 8
  %_20.i559.i = load i32, ptr %10, align 4, !noundef !2
  %_18.i560.i = icmp sgt i32 %178, %_20.i559.i
  br i1 %_18.i560.i, label %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit587.i, label %bb2.i570.i

bb2.i570.i:                                       ; preds = %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit556.i
  %_15.i561.i = ashr i32 %_7.i557.i, 3
  %count.i562.i = sext i32 %_15.i561.i to i64
  %179 = getelementptr inbounds i8, ptr %self.i558.i, i64 %count.i562.i
  %_6.i563.i = and i32 %_7.i557.i, 7
  %_10.i564.i = add nuw nsw i32 %_6.i563.i, 3
  %_26.i565.i = load i8, ptr %179, align 1, !noundef !2
  %_25.i566.i = zext i8 %_26.i565.i to i32
  %_27.i567.i = lshr i32 255, %_6.i563.i
  %_24.i568.i = and i32 %_27.i567.i, %_25.i566.i
  %_318.i569.i = icmp ult i32 %_6.i563.i, 6
  br i1 %_318.i569.i, label %bb4.i586.i, label %bb5.i579.preheader.i

bb5.i579.preheader.i:                             ; preds = %bb2.i570.i
  %180 = add nsw i32 %_6.i563.i, -5
  br label %bb5.i579.i

bb5.i579.i:                                       ; preds = %bb5.i579.i, %bb5.i579.preheader.i
  %181 = phi i32 [ %185, %bb5.i579.i ], [ %180, %bb5.i579.preheader.i ]
  %next.011.i572.i = phi i32 [ %184, %bb5.i579.i ], [ %_24.i568.i, %bb5.i579.preheader.i ]
  %cache.010.i573.i = phi i32 [ %183, %bb5.i579.i ], [ 0, %bb5.i579.preheader.i ]
  %.pn9.i574.i = phi ptr [ %p.0.i575.i, %bb5.i579.i ], [ %179, %bb5.i579.preheader.i ]
  %p.0.i575.i = getelementptr inbounds i8, ptr %.pn9.i574.i, i64 1
  %182 = and i32 %181, 31
  %_34.i576.i = shl i32 %next.011.i572.i, %182
  %183 = or i32 %_34.i576.i, %cache.010.i573.i
  %_40.i577.i = load i8, ptr %p.0.i575.i, align 1, !noundef !2
  %184 = zext i8 %_40.i577.i to i32
  %185 = add nsw i32 %181, -8
  %_31.i578.i = icmp ult i32 %181, 9
  br i1 %_31.i578.i, label %bb4.i586.i.loopexit, label %bb5.i579.i

bb4.i586.i.loopexit:                              ; preds = %bb5.i579.i
  %186 = zext i8 %_40.i577.i to i32
  br label %bb4.i586.i

bb4.i586.i:                                       ; preds = %bb4.i586.i.loopexit, %bb2.i570.i
  %shl.0.lcssa.i581.i = phi i32 [ %_10.i564.i, %bb2.i570.i ], [ %181, %bb4.i586.i.loopexit ]
  %cache.0.lcssa.i582.i = phi i32 [ 0, %bb2.i570.i ], [ %183, %bb4.i586.i.loopexit ]
  %next.0.lcssa.i583.i = phi i32 [ %_24.i568.i, %bb2.i570.i ], [ %186, %bb4.i586.i.loopexit ]
  %_44.i584.i = sub nuw nsw i32 8, %shl.0.lcssa.i581.i
  %_42.i585.i = lshr i32 %next.0.lcssa.i583.i, %_44.i584.i
  %187 = or i32 %_42.i585.i, %cache.0.lcssa.i582.i
  br label %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit587.i

_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit587.i: ; preds = %bb4.i586.i, %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit556.i
  %.0.i571.i = phi i32 [ %187, %bb4.i586.i ], [ 0, %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit556.i ]
  %188 = getelementptr inbounds %"src::lib::L3GrInfoT", ptr %gr.0.i, i64 0, i32 11, i64 2
  %189 = trunc i32 %.0.i571.i to i8
  store i8 %189, ptr %188, align 1
  br label %bb42.i

bb27.i:                                           ; preds = %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit463.i
  %190 = and i32 %spec.select.i, 3855
  %191 = icmp eq i8 %140, 0
  br i1 %191, label %bb28.i, label %bb29.i

bb28.i:                                           ; preds = %bb27.i
  store i8 8, ptr %141, align 2
  store ptr %37, ptr %gr.0.i, align 8
  br label %bb33.sink.split.i

bb29.i:                                           ; preds = %bb27.i
  store ptr %36, ptr %gr.0.i, align 8
  %_144.i = load i8, ptr %3, align 1, !noundef !2
  %192 = and i8 %_144.i, 8
  %193 = icmp eq i8 %192, 0
  %.60.i = select i1 %193, i8 6, i8 8
  br label %bb33.sink.split.i

bb42.i:                                           ; preds = %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit587.i, %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit401.i
  %scfsi.3.i = phi i32 [ %spec.select.i, %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit401.i ], [ %scfsi.2.i, %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit587.i ]
  %tables.0.i = phi i32 [ %.0.i323.i, %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit401.i ], [ %153, %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit587.i ]
  %_173.i = lshr i32 %tables.0.i, 10
  %194 = getelementptr inbounds %"src::lib::L3GrInfoT", ptr %gr.0.i, i64 0, i32 9
  %195 = trunc i32 %_173.i to i8
  store i8 %195, ptr %194, align 1
  %_178.i = lshr i32 %tables.0.i, 5
  %196 = getelementptr inbounds %"src::lib::L3GrInfoT", ptr %gr.0.i, i64 0, i32 9, i64 1
  %197 = trunc i32 %_178.i to i8
  %198 = and i8 %197, 31
  store i8 %198, ptr %196, align 1
  %199 = getelementptr inbounds %"src::lib::L3GrInfoT", ptr %gr.0.i, i64 0, i32 9, i64 2
  %200 = trunc i32 %tables.0.i to i8
  %201 = and i8 %200, 31
  store i8 %201, ptr %199, align 1
  %_190.i = load i8, ptr %3, align 1, !noundef !2
  %202 = and i8 %_190.i, 8
  %203 = icmp eq i8 %202, 0
  br i1 %203, label %bb45.i, label %bb43.i

bb45.i:                                           ; preds = %bb42.i
  %_198.i = load i16, ptr %85, align 4, !noundef !2
  %_196.i = icmp ugt i16 %_198.i, 499
  %_195.i = zext i1 %_196.i to i32
  br label %bb46.i

bb43.i:                                           ; preds = %bb42.i
  %_7.i588.i = load i32, ptr %9, align 8, !noundef !2
  %self.i589.i = load ptr, ptr %bs, align 8, !noundef !2
  %204 = add i32 %_7.i588.i, 1
  store i32 %204, ptr %9, align 8
  %_20.i590.i = load i32, ptr %10, align 4, !noundef !2
  %_18.i591.i = icmp sgt i32 %204, %_20.i590.i
  br i1 %_18.i591.i, label %bb46.i, label %bb2.i601.i

bb2.i601.i:                                       ; preds = %bb43.i
  %_15.i592.i = ashr i32 %_7.i588.i, 3
  %count.i593.i = sext i32 %_15.i592.i to i64
  %205 = getelementptr inbounds i8, ptr %self.i589.i, i64 %count.i593.i
  %_6.i594.i = and i32 %_7.i588.i, 7
  %_26.i596.i = load i8, ptr %205, align 1, !noundef !2
  %_25.i597.i = zext i8 %_26.i596.i to i32
  %_27.i598.i = lshr i32 255, %_6.i594.i
  %_24.i599.i = and i32 %_27.i598.i, %_25.i597.i
  %_44.i615.i = xor i32 %_6.i594.i, 7
  %_42.i616.i = lshr i32 %_24.i599.i, %_44.i615.i
  br label %bb46.i

bb46.i:                                           ; preds = %bb2.i601.i, %bb43.i, %bb45.i
  %_187.0.i = phi i32 [ %_195.i, %bb45.i ], [ %_42.i616.i, %bb2.i601.i ], [ 0, %bb43.i ]
  %206 = getelementptr inbounds %"src::lib::L3GrInfoT", ptr %gr.0.i, i64 0, i32 12
  %207 = trunc i32 %_187.0.i to i8
  store i8 %207, ptr %206, align 4
  %_7.i619.i = load i32, ptr %9, align 8, !noundef !2
  %self.i620.i = load ptr, ptr %bs, align 8, !noundef !2
  %208 = add i32 %_7.i619.i, 1
  store i32 %208, ptr %9, align 8
  %_20.i621.i = load i32, ptr %10, align 4, !noundef !2
  %_18.i622.i = icmp sgt i32 %208, %_20.i621.i
  br i1 %_18.i622.i, label %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit649.i, label %bb2.i632.i

bb2.i632.i:                                       ; preds = %bb46.i
  %_15.i623.i = ashr i32 %_7.i619.i, 3
  %count.i624.i = sext i32 %_15.i623.i to i64
  %209 = getelementptr inbounds i8, ptr %self.i620.i, i64 %count.i624.i
  %_6.i625.i = and i32 %_7.i619.i, 7
  %_26.i627.i = load i8, ptr %209, align 1, !noundef !2
  %_25.i628.i = zext i8 %_26.i627.i to i32
  %_27.i629.i = lshr i32 255, %_6.i625.i
  %_24.i630.i = and i32 %_27.i629.i, %_25.i628.i
  %_44.i646.i = xor i32 %_6.i625.i, 7
  %_42.i647.i = lshr i32 %_24.i630.i, %_44.i646.i
  br label %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit649.i

_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit649.i: ; preds = %bb2.i632.i, %bb46.i
  %.0.i633.i = phi i32 [ %_42.i647.i, %bb2.i632.i ], [ 0, %bb46.i ]
  %210 = getelementptr inbounds %"src::lib::L3GrInfoT", ptr %gr.0.i, i64 0, i32 13
  %211 = trunc i32 %.0.i633.i to i8
  store i8 %211, ptr %210, align 1
  %_7.i650.i = load i32, ptr %9, align 8, !noundef !2
  %self.i651.i = load ptr, ptr %bs, align 8, !noundef !2
  %212 = add i32 %_7.i650.i, 1
  store i32 %212, ptr %9, align 8
  %_20.i652.i = load i32, ptr %10, align 4, !noundef !2
  %_18.i653.i = icmp sgt i32 %212, %_20.i652.i
  br i1 %_18.i653.i, label %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit680.i, label %bb2.i663.i

bb2.i663.i:                                       ; preds = %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit649.i
  %_15.i654.i = ashr i32 %_7.i650.i, 3
  %count.i655.i = sext i32 %_15.i654.i to i64
  %213 = getelementptr inbounds i8, ptr %self.i651.i, i64 %count.i655.i
  %_6.i656.i = and i32 %_7.i650.i, 7
  %_26.i658.i = load i8, ptr %213, align 1, !noundef !2
  %_25.i659.i = zext i8 %_26.i658.i to i32
  %_27.i660.i = lshr i32 255, %_6.i656.i
  %_24.i661.i = and i32 %_27.i660.i, %_25.i659.i
  %_44.i677.i = xor i32 %_6.i656.i, 7
  %_42.i678.i = lshr i32 %_24.i661.i, %_44.i677.i
  br label %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit680.i

_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit680.i: ; preds = %bb2.i663.i, %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit649.i
  %.0.i664.i = phi i32 [ %_42.i678.i, %bb2.i663.i ], [ 0, %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit649.i ]
  %214 = getelementptr inbounds %"src::lib::L3GrInfoT", ptr %gr.0.i, i64 0, i32 14
  %215 = trunc i32 %.0.i664.i to i8
  store i8 %215, ptr %214, align 2
  %_205.i = lshr i32 %scfsi.3.i, 12
  %216 = getelementptr inbounds %"src::lib::L3GrInfoT", ptr %gr.0.i, i64 0, i32 15
  %217 = trunc i32 %_205.i to i8
  %218 = and i8 %217, 15
  store i8 %218, ptr %216, align 1
  %219 = shl i32 %scfsi.3.i, 4
  %220 = getelementptr inbounds %"src::lib::L3GrInfoT", ptr %gr.0.i, i64 1
  %221 = add i32 %gr_count.1.i, -1
  %_213.not.i = icmp eq i32 %221, 0
  br i1 %_213.not.i, label %bb49.i, label %bb9.i

bb49.i:                                           ; preds = %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit680.i
  %_218.i = load i32, ptr %9, align 8, !noundef !2
  %_216.i = add i32 %_218.i, %51
  %_220.i = load i32, ptr %10, align 4, !noundef !2
  %_221.i = shl i32 %main_data_begin.0.ph.i, 3
  %_219.i = add i32 %_220.i, %_221.i
  %_215.i = icmp sgt i32 %_216.i, %_219.i
  %.main_data_begin.0.i = select i1 %_215.i, i32 -1, i32 %main_data_begin.0.ph.i
  br label %_ZN18read_side_info_lib3src3lib14read_side_info17h523925ee6178a166E.exit

_ZN18read_side_info_lib3src3lib14read_side_info17h523925ee6178a166E.exit: ; preds = %bb49.i, %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit432.i, %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit432.thread.i, %bb2.i167.i
  %.0.i = phi i32 [ %.main_data_begin.0.i, %bb49.i ], [ -1, %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit432.thread.i ], [ -1, %_ZN18read_side_info_lib3src3lib8get_bits17h2b7c8a071ef89639E.exit432.i ], [ -1, %bb2.i167.i ]
  ret i32 %.0.i
}

; Function Attrs: nofree nounwind nonlazybind uwtable
define noundef zeroext i1 @run_test_1() unnamed_addr #1 {
start:
  %_1 = alloca [0 x i8], align 1
  %sfbtab_actual.i110 = alloca [23 x i8], align 1
  %sfbtab_actual.i56 = alloca [23 x i8], align 1
  %sfbtab_actual.i2 = alloca [23 x i8], align 1
  %sfbtab_actual.i = alloca [23 x i8], align 1
  %expected_sfbtab_zero = alloca [23 x i8], align 1
  %expected_sfbtab_1 = alloca [23 x i8], align 1
  %expected_sfbtab_0 = alloca [23 x i8], align 1
  %bs = alloca %"src::lib::BsT", align 8
  %hdr = alloca [4 x i8], align 4
  %gr = alloca [4 x %"src::lib::L3GrInfoT"], align 8
  %sfbtab3 = alloca [23 x i8], align 1
  %sfbtab2 = alloca [23 x i8], align 1
  %sfbtab1 = alloca [23 x i8], align 1
  %sfbtab0 = alloca [23 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %sfbtab0)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %sfbtab0, i8 0, i64 23, i1 false)
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %sfbtab1)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %sfbtab1, i8 0, i64 23, i1 false)
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %sfbtab2)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %sfbtab2, i8 0, i64 23, i1 false)
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %sfbtab3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %sfbtab3, i8 0, i64 23, i1 false)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %gr)
  store ptr %sfbtab0, ptr %gr, align 8
  %_7.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %gr, i64 8
  %_7.sroa.14.0..sroa_idx = getelementptr inbounds i8, ptr %gr, i64 25
  %_7.sroa.15.0..sroa_idx = getelementptr inbounds i8, ptr %gr, i64 28
  %0 = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_7.sroa.4.0..sroa_idx, i8 0, i64 24, i1 false)
  store ptr %sfbtab1, ptr %0, align 8
  %_14.sroa.4.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 1, i32 1
  %_14.sroa.5.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 1, i32 2
  %_14.sroa.6.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 1, i32 3
  %_14.sroa.7.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 1, i32 4
  %_14.sroa.11.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 1, i32 8
  %_14.sroa.12.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 1, i32 9
  %_14.sroa.13.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 1, i32 10
  %_14.sroa.14.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 1, i32 11
  %_14.sroa.15.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 1, i32 12
  %1 = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_14.sroa.4.0..sroa_idx, i8 0, i64 24, i1 false)
  store ptr %sfbtab2, ptr %1, align 8
  %_21.sroa.4.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 2, i32 1
  %_21.sroa.5.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 2, i32 2
  %_21.sroa.6.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 2, i32 3
  %_21.sroa.7.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 2, i32 4
  %_21.sroa.11.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 2, i32 8
  %_21.sroa.12.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 2, i32 9
  %_21.sroa.13.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 2, i32 10
  %_21.sroa.14.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 2, i32 11
  %_21.sroa.15.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 2, i32 12
  %2 = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_21.sroa.4.0..sroa_idx, i8 0, i64 24, i1 false)
  store ptr %sfbtab3, ptr %2, align 8
  %_28.sroa.4.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 3, i32 1
  %_28.sroa.5.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 3, i32 2
  %_28.sroa.6.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 3, i32 3
  %_28.sroa.7.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 3, i32 4
  %_28.sroa.11.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 3, i32 8
  %_28.sroa.12.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 3, i32 9
  %_28.sroa.13.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 3, i32 10
  %_28.sroa.14.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 3, i32 11
  %_28.sroa.15.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 3, i32 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_28.sroa.4.0..sroa_idx, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hdr)
  store i32 0, ptr %hdr, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %bs)
  store ptr %_1, ptr %bs, align 8
  %3 = getelementptr inbounds %"src::lib::BsT", ptr %bs, i64 0, i32 1
  store i32 0, ptr %3, align 8
  %4 = getelementptr inbounds %"src::lib::BsT", ptr %bs, i64 0, i32 2
  store i32 0, ptr %4, align 4
  %ret = call noundef i32 @read_side_info(ptr noundef nonnull %bs, ptr noundef nonnull %gr, ptr noundef nonnull %hdr)
  %5 = icmp eq i32 %ret, -1
  %_50 = load i32, ptr %3, align 8
  %6 = icmp eq i32 %_50, 136
  %or.cond = select i1 %5, i1 %6, i1 false
  %_51 = load i32, ptr %4, align 4
  %7 = icmp eq i32 %_51, 0
  %or.cond1 = select i1 %or.cond, i1 %7, i1 false
  br i1 %or.cond1, label %bb7, label %bb23

bb23:                                             ; preds = %bb22, %start
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %bs)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hdr)
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %gr)
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab3)
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab2)
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab1)
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab0)
  br label %bb24

bb7:                                              ; preds = %start
  %_7.sroa.13.0..sroa_idx = getelementptr inbounds i8, ptr %gr, i64 22
  %_7.sroa.12.0..sroa_idx = getelementptr inbounds i8, ptr %gr, i64 19
  %_7.sroa.11.0..sroa_idx = getelementptr inbounds i8, ptr %gr, i64 18
  %_7.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %gr, i64 14
  %_7.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %gr, i64 12
  %_7.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %gr, i64 10
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %expected_sfbtab_0)
  %8 = getelementptr inbounds [23 x i8], ptr %expected_sfbtab_0, i64 0, i64 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %expected_sfbtab_0, i8 6, i64 6, i1 false)
  store <16 x i8> <i8 8, i8 10, i8 12, i8 14, i8 16, i8 20, i8 24, i8 28, i8 32, i8 38, i8 46, i8 52, i8 60, i8 68, i8 58, i8 54>, ptr %8, align 1
  %9 = getelementptr inbounds [23 x i8], ptr %expected_sfbtab_0, i64 0, i64 22
  store i8 0, ptr %9, align 1
  call void @llvm.experimental.noalias.scope.decl(metadata !3)
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %sfbtab_actual.i), !noalias !6
  %_20.i = load ptr, ptr %gr, align 8, !alias.scope !3, !noalias !8, !noundef !2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %sfbtab_actual.i, ptr noundef nonnull align 1 dereferenceable(23) %_20.i, i64 23, i1 false), !noalias !6
  %bcmp.i.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(23) %sfbtab_actual.i, ptr noundef nonnull dereferenceable(23) %expected_sfbtab_0, i64 23), !alias.scope !9, !noalias !3
  %.not.i = icmp ne i32 %bcmp.i.i.i, 0
  %_24.i = load i16, ptr %_7.sroa.4.0..sroa_idx, align 8, !alias.scope !3, !noalias !8
  %_24.i.fr = freeze i16 %_24.i
  %_26.i = load i16, ptr %_7.sroa.5.0..sroa_idx, align 2, !alias.scope !3, !noalias !8
  %_26.i.fr = freeze i16 %_26.i
  %_28.i = load i16, ptr %_7.sroa.6.0..sroa_idx, align 4, !alias.scope !3, !noalias !8
  %_28.i.fr = freeze i16 %_28.i
  %_27.not.i = icmp ne i16 %_28.i.fr, 0
  %10 = load <4 x i8>, ptr %_7.sroa.7.0..sroa_idx, align 2, !alias.scope !3, !noalias !8
  %.fr = freeze <4 x i8> %10
  %_38.i = load i8, ptr %_7.sroa.11.0..sroa_idx, align 2, !alias.scope !3, !noalias !8
  %_38.i.fr = freeze i8 %_38.i
  %_37.not.i = icmp ne i8 %_38.i.fr, 0
  %self.val.i = load i24, ptr %_7.sroa.12.0..sroa_idx, align 1, !alias.scope !3, !noalias !8
  %self.val.i.fr = freeze i24 %self.val.i
  %11 = icmp ne i24 %self.val.i.fr, 0
  %self1.val.i = load i24, ptr %_7.sroa.13.0..sroa_idx, align 2, !alias.scope !3, !noalias !8
  %12 = icmp ne i24 %self1.val.i, -65536
  %.fr.scalar = bitcast <4 x i8> %.fr to i32
  %13 = icmp ne i32 %.fr.scalar, 369098752
  %op.rdx192 = or i1 %13, %_37.not.i
  %op.rdx194 = or i1 %_27.not.i, %11
  %14 = or i16 %_24.i.fr, %_26.i.fr
  %15 = icmp ne i16 %14, 0
  %op.rdx196 = or i1 %op.rdx192, %15
  %16 = or i1 %op.rdx196, %op.rdx194
  %17 = select i1 %16, i1 true, i1 %.not.i
  %op.rdx198 = select i1 %17, i1 true, i1 %12
  br i1 %op.rdx198, label %_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit, label %bb22.i

bb22.i:                                           ; preds = %bb7
  %self2.val.i = load i24, ptr %_7.sroa.14.0..sroa_idx, align 1, !alias.scope !3, !noalias !8
  %.not18.i = icmp eq i24 %self2.val.i, 0
  %18 = load <4 x i8>, ptr %_7.sroa.15.0..sroa_idx, align 4, !alias.scope !3, !noalias !8
  %.fr200 = freeze <4 x i8> %18
  %.fr200.scalar = bitcast <4 x i8> %.fr200 to i32
  %19 = icmp eq i32 %.fr200.scalar, 0
  %op.rdx191 = select i1 %19, i1 %.not18.i, i1 false
  br i1 %op.rdx191, label %bb10, label %_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit

_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit: ; preds = %bb22.i, %bb7
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab_actual.i), !noalias !6
  br label %bb22

bb10:                                             ; preds = %bb22.i
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab_actual.i), !noalias !6
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %expected_sfbtab_1)
  %20 = getelementptr inbounds [23 x i8], ptr %expected_sfbtab_1, i64 0, i64 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %expected_sfbtab_1, i8 6, i64 6, i1 false)
  store <16 x i8> <i8 8, i8 10, i8 12, i8 14, i8 16, i8 20, i8 24, i8 28, i8 32, i8 38, i8 46, i8 52, i8 60, i8 68, i8 58, i8 54>, ptr %20, align 1
  %21 = getelementptr inbounds [23 x i8], ptr %expected_sfbtab_1, i64 0, i64 22
  store i8 0, ptr %21, align 1
  call void @llvm.experimental.noalias.scope.decl(metadata !16)
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %sfbtab_actual.i2), !noalias !19
  %_20.i3 = load ptr, ptr %0, align 8, !alias.scope !16, !noalias !21, !noundef !2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %sfbtab_actual.i2, ptr noundef nonnull align 1 dereferenceable(23) %_20.i3, i64 23, i1 false), !noalias !19
  %bcmp.i.i.i4 = call i32 @bcmp(ptr noundef nonnull dereferenceable(23) %sfbtab_actual.i2, ptr noundef nonnull dereferenceable(23) %expected_sfbtab_1, i64 23), !alias.scope !22, !noalias !16
  %.not.i5 = icmp ne i32 %bcmp.i.i.i4, 0
  %_24.i6 = load i16, ptr %_14.sroa.4.0..sroa_idx, align 8, !alias.scope !16, !noalias !21
  %_24.i6.fr = freeze i16 %_24.i6
  %_26.i9 = load i16, ptr %_14.sroa.5.0..sroa_idx, align 2, !alias.scope !16, !noalias !21
  %_26.i9.fr = freeze i16 %_26.i9
  %_28.i12 = load i16, ptr %_14.sroa.6.0..sroa_idx, align 4, !alias.scope !16, !noalias !21
  %_28.i12.fr = freeze i16 %_28.i12
  %_27.not.i13 = icmp ne i16 %_28.i12.fr, 0
  %22 = load <4 x i8>, ptr %_14.sroa.7.0..sroa_idx, align 2, !alias.scope !16, !noalias !21
  %.fr201 = freeze <4 x i8> %22
  %_38.i27 = load i8, ptr %_14.sroa.11.0..sroa_idx, align 2, !alias.scope !16, !noalias !21
  %_38.i27.fr = freeze i8 %_38.i27
  %_37.not.i28 = icmp ne i8 %_38.i27.fr, 0
  %self.val.i31 = load i24, ptr %_14.sroa.12.0..sroa_idx, align 1, !alias.scope !16, !noalias !21
  %self.val.i31.fr = freeze i24 %self.val.i31
  %23 = icmp ne i24 %self.val.i31.fr, 0
  %self1.val.i34 = load i24, ptr %_14.sroa.13.0..sroa_idx, align 2, !alias.scope !16, !noalias !21
  %24 = icmp ne i24 %self1.val.i34, -65536
  %.fr201.scalar = bitcast <4 x i8> %.fr201 to i32
  %25 = icmp ne i32 %.fr201.scalar, 369098752
  %op.rdx184 = or i1 %25, %_37.not.i28
  %op.rdx186 = or i1 %_27.not.i13, %23
  %26 = or i16 %_24.i6.fr, %_26.i9.fr
  %27 = icmp ne i16 %26, 0
  %op.rdx188 = or i1 %op.rdx184, %27
  %28 = or i1 %op.rdx188, %op.rdx186
  %29 = select i1 %28, i1 true, i1 %.not.i5
  %op.rdx190 = select i1 %29, i1 true, i1 %24
  br i1 %op.rdx190, label %_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit55, label %bb22.i52

bb22.i52:                                         ; preds = %bb10
  %self2.val.i38 = load i24, ptr %_14.sroa.14.0..sroa_idx, align 1, !alias.scope !16, !noalias !21
  %.not18.i39 = icmp eq i24 %self2.val.i38, 0
  %30 = load <4 x i8>, ptr %_14.sroa.15.0..sroa_idx, align 4, !alias.scope !16, !noalias !21
  %.fr203 = freeze <4 x i8> %30
  %.fr203.scalar = bitcast <4 x i8> %.fr203 to i32
  %31 = icmp eq i32 %.fr203.scalar, 0
  %op.rdx183 = select i1 %31, i1 %.not18.i39, i1 false
  br i1 %op.rdx183, label %bb13, label %_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit55

_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit55: ; preds = %bb22.i52, %bb10
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab_actual.i2), !noalias !19
  br label %bb21

bb22:                                             ; preds = %bb21, %_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %expected_sfbtab_0)
  br label %bb23

bb13:                                             ; preds = %bb22.i52
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab_actual.i2), !noalias !19
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %expected_sfbtab_zero)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %expected_sfbtab_zero, i8 0, i64 23, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !29)
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %sfbtab_actual.i56), !noalias !32
  %_20.i57 = load ptr, ptr %1, align 8, !alias.scope !29, !noalias !34, !noundef !2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %sfbtab_actual.i56, ptr noundef nonnull align 1 dereferenceable(23) %_20.i57, i64 23, i1 false), !noalias !32
  %bcmp.i.i.i58 = call i32 @bcmp(ptr noundef nonnull dereferenceable(23) %sfbtab_actual.i56, ptr noundef nonnull dereferenceable(23) %expected_sfbtab_zero, i64 23), !alias.scope !35, !noalias !29
  %.not.i59 = icmp ne i32 %bcmp.i.i.i58, 0
  %_24.i60 = load i16, ptr %_21.sroa.4.0..sroa_idx, align 8, !alias.scope !29, !noalias !34
  %_24.i60.fr = freeze i16 %_24.i60
  %_26.i63 = load i16, ptr %_21.sroa.5.0..sroa_idx, align 2, !alias.scope !29, !noalias !34
  %_26.i63.fr = freeze i16 %_26.i63
  %_28.i66 = load i16, ptr %_21.sroa.6.0..sroa_idx, align 4, !alias.scope !29, !noalias !34
  %_28.i66.fr = freeze i16 %_28.i66
  %_27.not.i67 = icmp ne i16 %_28.i66.fr, 0
  %32 = load <4 x i8>, ptr %_21.sroa.7.0..sroa_idx, align 2, !alias.scope !29, !noalias !34
  %.fr204 = freeze <4 x i8> %32
  %_38.i81 = load i8, ptr %_21.sroa.11.0..sroa_idx, align 2, !alias.scope !29, !noalias !34
  %_38.i81.fr = freeze i8 %_38.i81
  %_37.not.i82 = icmp ne i8 %_38.i81.fr, 0
  %self.val.i85 = load i24, ptr %_21.sroa.12.0..sroa_idx, align 1, !alias.scope !29, !noalias !34
  %self.val.i85.fr = freeze i24 %self.val.i85
  %33 = icmp ne i24 %self.val.i85.fr, 0
  %self1.val.i88 = load i24, ptr %_21.sroa.13.0..sroa_idx, align 2, !alias.scope !29, !noalias !34
  %34 = icmp ne i24 %self1.val.i88, 0
  %.fr204.scalar = bitcast <4 x i8> %.fr204 to i32
  %35 = icmp ne i32 %.fr204.scalar, 0
  %op.rdx176 = or i1 %35, %_37.not.i82
  %op.rdx178 = or i1 %_27.not.i67, %33
  %36 = or i16 %_24.i60.fr, %_26.i63.fr
  %37 = icmp ne i16 %36, 0
  %op.rdx180 = or i1 %op.rdx176, %37
  %38 = or i1 %op.rdx180, %op.rdx178
  %39 = select i1 %38, i1 true, i1 %.not.i59
  %op.rdx182 = select i1 %39, i1 true, i1 %34
  br i1 %op.rdx182, label %_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit109, label %bb22.i106

bb22.i106:                                        ; preds = %bb13
  %self2.val.i92 = load i24, ptr %_21.sroa.14.0..sroa_idx, align 1, !alias.scope !29, !noalias !34
  %.not18.i93 = icmp eq i24 %self2.val.i92, 0
  %40 = load <4 x i8>, ptr %_21.sroa.15.0..sroa_idx, align 4, !alias.scope !29, !noalias !34
  %.fr206 = freeze <4 x i8> %40
  %.fr206.scalar = bitcast <4 x i8> %.fr206 to i32
  %41 = icmp eq i32 %.fr206.scalar, 0
  %op.rdx175 = select i1 %41, i1 %.not18.i93, i1 false
  br i1 %op.rdx175, label %bb16, label %_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit109

_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit109: ; preds = %bb22.i106, %bb13
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab_actual.i56), !noalias !32
  br label %bb20

bb21:                                             ; preds = %bb20, %_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit55
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %expected_sfbtab_1)
  br label %bb22

bb16:                                             ; preds = %bb22.i106
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab_actual.i56), !noalias !32
  call void @llvm.experimental.noalias.scope.decl(metadata !42)
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %sfbtab_actual.i110), !noalias !45
  %_20.i111 = load ptr, ptr %2, align 8, !alias.scope !42, !noalias !47, !noundef !2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %sfbtab_actual.i110, ptr noundef nonnull align 1 dereferenceable(23) %_20.i111, i64 23, i1 false), !noalias !45
  %bcmp.i.i.i112 = call i32 @bcmp(ptr noundef nonnull dereferenceable(23) %sfbtab_actual.i110, ptr noundef nonnull dereferenceable(23) %expected_sfbtab_zero, i64 23), !alias.scope !48, !noalias !42
  %.not.i113 = icmp ne i32 %bcmp.i.i.i112, 0
  %_24.i114 = load i16, ptr %_28.sroa.4.0..sroa_idx, align 8, !alias.scope !42, !noalias !47
  %_24.i114.fr = freeze i16 %_24.i114
  %_26.i117 = load i16, ptr %_28.sroa.5.0..sroa_idx, align 2, !alias.scope !42, !noalias !47
  %_26.i117.fr = freeze i16 %_26.i117
  %_28.i120 = load i16, ptr %_28.sroa.6.0..sroa_idx, align 4, !alias.scope !42, !noalias !47
  %_28.i120.fr = freeze i16 %_28.i120
  %_27.not.i121 = icmp ne i16 %_28.i120.fr, 0
  %42 = load <4 x i8>, ptr %_28.sroa.7.0..sroa_idx, align 2, !alias.scope !42, !noalias !47
  %.fr207 = freeze <4 x i8> %42
  %_38.i135 = load i8, ptr %_28.sroa.11.0..sroa_idx, align 2, !alias.scope !42, !noalias !47
  %_38.i135.fr = freeze i8 %_38.i135
  %_37.not.i136 = icmp ne i8 %_38.i135.fr, 0
  %self.val.i139 = load i24, ptr %_28.sroa.12.0..sroa_idx, align 1, !alias.scope !42, !noalias !47
  %self.val.i139.fr = freeze i24 %self.val.i139
  %43 = icmp ne i24 %self.val.i139.fr, 0
  %self1.val.i142 = load i24, ptr %_28.sroa.13.0..sroa_idx, align 2, !alias.scope !42, !noalias !47
  %44 = icmp ne i24 %self1.val.i142, 0
  %.fr207.scalar = bitcast <4 x i8> %.fr207 to i32
  %45 = icmp ne i32 %.fr207.scalar, 0
  %op.rdx168 = or i1 %45, %_37.not.i136
  %op.rdx170 = or i1 %_27.not.i121, %43
  %46 = or i16 %_24.i114.fr, %_26.i117.fr
  %47 = icmp ne i16 %46, 0
  %op.rdx172 = or i1 %op.rdx168, %47
  %48 = or i1 %op.rdx172, %op.rdx170
  %49 = select i1 %48, i1 true, i1 %.not.i113
  %op.rdx174 = select i1 %49, i1 true, i1 %44
  br i1 %op.rdx174, label %_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit163, label %bb22.i160

bb22.i160:                                        ; preds = %bb16
  %self2.val.i146 = load i24, ptr %_28.sroa.14.0..sroa_idx, align 1, !alias.scope !42, !noalias !47
  %.not18.i147 = icmp eq i24 %self2.val.i146, 0
  %50 = load <4 x i8>, ptr %_28.sroa.15.0..sroa_idx, align 4, !alias.scope !42, !noalias !47
  %.fr209 = freeze <4 x i8> %50
  %.fr209.scalar = bitcast <4 x i8> %.fr209 to i32
  %51 = icmp eq i32 %.fr209.scalar, 0
  %op.rdx = select i1 %51, i1 %.not18.i147, i1 false
  br i1 %op.rdx, label %bb19, label %_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit163

_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit163: ; preds = %bb22.i160, %bb16
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab_actual.i110), !noalias !45
  br label %bb20

bb20:                                             ; preds = %_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit163, %_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit109
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %expected_sfbtab_zero)
  br label %bb21

bb19:                                             ; preds = %bb22.i160
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab_actual.i110), !noalias !45
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %expected_sfbtab_zero)
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %expected_sfbtab_1)
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %expected_sfbtab_0)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %bs)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hdr)
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %gr)
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab3)
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab2)
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab1)
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab0)
  br label %bb24

bb24:                                             ; preds = %bb19, %bb23
  %.4 = phi i1 [ false, %bb23 ], [ true, %bb19 ]
  ret i1 %.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #6

; Function Attrs: nofree nounwind nonlazybind uwtable
define noundef zeroext i1 @run_test_2() unnamed_addr #1 {
start:
  %sfbtab_actual.i110 = alloca [23 x i8], align 1
  %sfbtab_actual.i56 = alloca [23 x i8], align 1
  %sfbtab_actual.i2 = alloca [23 x i8], align 1
  %sfbtab_actual.i = alloca [23 x i8], align 1
  %expected_sfbtab = alloca [23 x i8], align 1
  %bs = alloca %"src::lib::BsT", align 8
  %hdr = alloca [4 x i8], align 4
  %gr = alloca [4 x %"src::lib::L3GrInfoT"], align 8
  %sfbtab3 = alloca [23 x i8], align 1
  %sfbtab2 = alloca [23 x i8], align 1
  %sfbtab1 = alloca [23 x i8], align 1
  %sfbtab0 = alloca [23 x i8], align 1
  %b_buf = alloca [237 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 237, ptr nonnull %b_buf)
  store <16 x i8> <i8 4, i8 0, i8 0, i8 100, i8 25, i8 60, i8 40, i8 -128, i8 4, i8 82, i8 12, i8 -93, i8 55, i8 -106, i8 16, i8 1>, ptr %b_buf, align 16
  %0 = getelementptr inbounds [237 x i8], ptr %b_buf, i64 0, i64 16
  store <16 x i8> <i8 -100, i8 -127, i8 -104, i8 104, i8 -12, i8 -30, i8 0, i8 85, i8 -56, i8 51, i8 -115, i8 94, i8 -32, i8 64, i8 14, i8 -62>, ptr %0, align 16
  %1 = getelementptr inbounds [237 x i8], ptr %b_buf, i64 0, i64 32
  store <16 x i8> <i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81, i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71>, ptr %1, align 16
  %2 = getelementptr inbounds [237 x i8], ptr %b_buf, i64 0, i64 48
  store <16 x i8> <i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81, i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71>, ptr %2, align 16
  %3 = getelementptr inbounds [237 x i8], ptr %b_buf, i64 0, i64 64
  store <16 x i8> <i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81, i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71>, ptr %3, align 16
  %4 = getelementptr inbounds [237 x i8], ptr %b_buf, i64 0, i64 80
  store <16 x i8> <i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81, i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71>, ptr %4, align 16
  %5 = getelementptr inbounds [237 x i8], ptr %b_buf, i64 0, i64 96
  store <16 x i8> <i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81, i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71>, ptr %5, align 16
  %6 = getelementptr inbounds [237 x i8], ptr %b_buf, i64 0, i64 112
  store <16 x i8> <i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81, i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71>, ptr %6, align 16
  %7 = getelementptr inbounds [237 x i8], ptr %b_buf, i64 0, i64 128
  store <16 x i8> <i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81, i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71>, ptr %7, align 16
  %8 = getelementptr inbounds [237 x i8], ptr %b_buf, i64 0, i64 144
  store <16 x i8> <i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81, i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71>, ptr %8, align 16
  %9 = getelementptr inbounds [237 x i8], ptr %b_buf, i64 0, i64 160
  store <16 x i8> <i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81, i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71>, ptr %9, align 16
  %10 = getelementptr inbounds [237 x i8], ptr %b_buf, i64 0, i64 176
  store <16 x i8> <i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81, i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71>, ptr %10, align 16
  %11 = getelementptr inbounds [237 x i8], ptr %b_buf, i64 0, i64 192
  store <16 x i8> <i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81, i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71>, ptr %11, align 16
  %12 = getelementptr inbounds [237 x i8], ptr %b_buf, i64 0, i64 208
  store <8 x i8> <i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81, i8 -80, i8 -79>, ptr %12, align 16
  %13 = getelementptr inbounds [237 x i8], ptr %b_buf, i64 0, i64 216
  store <4 x i8> <i8 -78, i8 -77, i8 -76, i8 -75>, ptr %13, align 8
  %14 = getelementptr inbounds [237 x i8], ptr %b_buf, i64 0, i64 220
  %15 = getelementptr inbounds [237 x i8], ptr %b_buf, i64 0, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %14, i8 0, i64 12, i1 false)
  store <4 x i8> <i8 113, i8 7, i8 2, i8 0>, ptr %15, align 8
  %16 = getelementptr inbounds [237 x i8], ptr %b_buf, i64 0, i64 236
  store i8 0, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %sfbtab0)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %sfbtab0, i8 0, i64 23, i1 false)
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %sfbtab1)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %sfbtab1, i8 0, i64 23, i1 false)
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %sfbtab2)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %sfbtab2, i8 0, i64 23, i1 false)
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %sfbtab3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %sfbtab3, i8 0, i64 23, i1 false)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %gr)
  store ptr %sfbtab0, ptr %gr, align 8
  %_7.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %gr, i64 8
  %_7.sroa.14.0..sroa_idx = getelementptr inbounds i8, ptr %gr, i64 25
  %_7.sroa.15.0..sroa_idx = getelementptr inbounds i8, ptr %gr, i64 28
  %17 = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_7.sroa.4.0..sroa_idx, i8 0, i64 24, i1 false)
  store ptr %sfbtab1, ptr %17, align 8
  %_14.sroa.4.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 1, i32 1
  %_14.sroa.5.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 1, i32 2
  %_14.sroa.6.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 1, i32 3
  %_14.sroa.7.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 1, i32 4
  %_14.sroa.11.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 1, i32 8
  %_14.sroa.12.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 1, i32 9
  %_14.sroa.13.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 1, i32 10
  %_14.sroa.14.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 1, i32 11
  %_14.sroa.15.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 1, i32 12
  %18 = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_14.sroa.4.0..sroa_idx, i8 0, i64 24, i1 false)
  store ptr %sfbtab2, ptr %18, align 8
  %_21.sroa.4.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 2, i32 1
  %_21.sroa.5.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 2, i32 2
  %_21.sroa.6.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 2, i32 3
  %_21.sroa.7.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 2, i32 4
  %_21.sroa.11.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 2, i32 8
  %_21.sroa.12.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 2, i32 9
  %_21.sroa.13.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 2, i32 10
  %_21.sroa.14.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 2, i32 11
  %_21.sroa.15.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 2, i32 12
  %19 = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_21.sroa.4.0..sroa_idx, i8 0, i64 24, i1 false)
  store ptr %sfbtab3, ptr %19, align 8
  %_28.sroa.4.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 3, i32 1
  %_28.sroa.5.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 3, i32 2
  %_28.sroa.6.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 3, i32 3
  %_28.sroa.7.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 3, i32 4
  %_28.sroa.11.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 3, i32 8
  %_28.sroa.12.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 3, i32 9
  %_28.sroa.13.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 3, i32 10
  %_28.sroa.14.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 3, i32 11
  %_28.sroa.15.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 3, i32 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_28.sroa.4.0..sroa_idx, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hdr)
  store <4 x i8> <i8 -1, i8 -5, i8 -112, i8 0>, ptr %hdr, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %bs)
  store ptr %b_buf, ptr %bs, align 8
  %20 = getelementptr inbounds %"src::lib::BsT", ptr %bs, i64 0, i32 1
  store i32 0, ptr %20, align 8
  %21 = getelementptr inbounds %"src::lib::BsT", ptr %bs, i64 0, i32 2
  store i32 236, ptr %21, align 4
  %ret = call noundef i32 @read_side_info(ptr noundef nonnull %bs, ptr noundef nonnull %gr, ptr noundef nonnull %hdr)
  %22 = icmp eq i32 %ret, -1
  %_50 = load i32, ptr %20, align 8
  %23 = icmp eq i32 %_50, 256
  %or.cond = select i1 %22, i1 %23, i1 false
  %_51 = load i32, ptr %21, align 4
  %24 = icmp eq i32 %_51, 236
  %or.cond1 = select i1 %or.cond, i1 %24, i1 false
  br i1 %or.cond1, label %bb7, label %bb21

bb21:                                             ; preds = %bb20, %start
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %bs)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hdr)
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %gr)
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab3)
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab2)
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab1)
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab0)
  call void @llvm.lifetime.end.p0(i64 237, ptr nonnull %b_buf)
  br label %bb22

bb7:                                              ; preds = %start
  %_7.sroa.13.0..sroa_idx = getelementptr inbounds i8, ptr %gr, i64 22
  %_7.sroa.12.0..sroa_idx = getelementptr inbounds i8, ptr %gr, i64 19
  %_7.sroa.11.0..sroa_idx = getelementptr inbounds i8, ptr %gr, i64 18
  %_7.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %gr, i64 14
  %_7.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %gr, i64 12
  %_7.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %gr, i64 10
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %expected_sfbtab)
  %25 = getelementptr inbounds [23 x i8], ptr %expected_sfbtab, i64 0, i64 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %expected_sfbtab, i8 4, i64 6, i1 false)
  store <16 x i8> <i8 6, i8 6, i8 8, i8 8, i8 10, i8 12, i8 16, i8 20, i8 24, i8 28, i8 34, i8 42, i8 50, i8 54, i8 76, i8 -98>, ptr %25, align 1
  %26 = getelementptr inbounds [23 x i8], ptr %expected_sfbtab, i64 0, i64 22
  store i8 0, ptr %26, align 1
  call void @llvm.experimental.noalias.scope.decl(metadata !55)
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %sfbtab_actual.i), !noalias !58
  %_20.i = load ptr, ptr %gr, align 8, !alias.scope !55, !noalias !60, !noundef !2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %sfbtab_actual.i, ptr noundef nonnull align 1 dereferenceable(23) %_20.i, i64 23, i1 false), !noalias !58
  %bcmp.i.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(23) %sfbtab_actual.i, ptr noundef nonnull dereferenceable(23) %expected_sfbtab, i64 23), !alias.scope !61, !noalias !55
  %.not.i = icmp ne i32 %bcmp.i.i.i, 0
  %_24.i = load i16, ptr %_7.sroa.4.0..sroa_idx, align 8, !alias.scope !55, !noalias !60
  %_24.i.fr = freeze i16 %_24.i
  %_23.not.i = icmp ne i16 %_24.i.fr, 100
  %_26.i = load i16, ptr %_7.sroa.5.0..sroa_idx, align 2, !alias.scope !55, !noalias !60
  %_26.i.fr = freeze i16 %_26.i
  %_25.not.i = icmp ne i16 %_26.i.fr, 50
  %_28.i = load i16, ptr %_7.sroa.6.0..sroa_idx, align 4, !alias.scope !55, !noalias !60
  %_28.i.fr = freeze i16 %_28.i
  %_27.not.i = icmp ne i16 %_28.i.fr, 5
  %27 = load <4 x i8>, ptr %_7.sroa.7.0..sroa_idx, align 2, !alias.scope !55, !noalias !60
  %.fr = freeze <4 x i8> %27
  %_38.i = load i8, ptr %_7.sroa.11.0..sroa_idx, align 2, !alias.scope !55, !noalias !60
  %_38.i.fr = freeze i8 %_38.i
  %_37.not.i = icmp ne i8 %_38.i.fr, 0
  %self.val.i = load i24, ptr %_7.sroa.12.0..sroa_idx, align 1, !alias.scope !55, !noalias !60
  %self.val.i.fr = freeze i24 %self.val.i
  %28 = icmp ne i24 %self.val.i.fr, 4
  %self1.val.i = load i24, ptr %_7.sroa.13.0..sroa_idx, align 2, !alias.scope !55, !noalias !60
  %29 = icmp ne i24 %self1.val.i, -64248
  %.fr.scalar = bitcast <4 x i8> %.fr to i32
  %30 = icmp ne i32 %.fr.scalar, 369098872
  %op.rdx192 = or i1 %30, %_37.not.i
  %op.rdx194 = or i1 %_27.not.i, %28
  %31 = or i1 %op.rdx192, %_23.not.i
  %op.rdx196 = or i1 %31, %_25.not.i
  %32 = or i1 %op.rdx196, %op.rdx194
  %33 = select i1 %32, i1 true, i1 %.not.i
  %op.rdx198 = select i1 %33, i1 true, i1 %29
  br i1 %op.rdx198, label %_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit, label %bb22.i

bb22.i:                                           ; preds = %bb7
  %self2.val.i = load i24, ptr %_7.sroa.14.0..sroa_idx, align 1, !alias.scope !55, !noalias !60
  %.not18.i = icmp eq i24 %self2.val.i, 0
  %34 = load <4 x i8>, ptr %_7.sroa.15.0..sroa_idx, align 4, !alias.scope !55, !noalias !60
  %.fr200 = freeze <4 x i8> %34
  %.fr200.scalar = bitcast <4 x i8> %.fr200 to i32
  %35 = icmp eq i32 %.fr200.scalar, 65536
  %op.rdx191 = select i1 %35, i1 %.not18.i, i1 false
  br i1 %op.rdx191, label %bb10, label %_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit

_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit: ; preds = %bb22.i, %bb7
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab_actual.i), !noalias !58
  br label %bb20

bb10:                                             ; preds = %bb22.i
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab_actual.i), !noalias !58
  call void @llvm.experimental.noalias.scope.decl(metadata !68)
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %sfbtab_actual.i2), !noalias !71
  %_20.i3 = load ptr, ptr %17, align 8, !alias.scope !68, !noalias !73, !noundef !2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %sfbtab_actual.i2, ptr noundef nonnull align 1 dereferenceable(23) %_20.i3, i64 23, i1 false), !noalias !71
  %bcmp.i.i.i4 = call i32 @bcmp(ptr noundef nonnull dereferenceable(23) %sfbtab_actual.i2, ptr noundef nonnull dereferenceable(23) %expected_sfbtab, i64 23), !alias.scope !74, !noalias !68
  %.not.i5 = icmp ne i32 %bcmp.i.i.i4, 0
  %_24.i6 = load i16, ptr %_14.sroa.4.0..sroa_idx, align 8, !alias.scope !68, !noalias !73
  %_24.i6.fr = freeze i16 %_24.i6
  %_23.not.i7 = icmp ne i16 %_24.i6.fr, 101
  %_26.i9 = load i16, ptr %_14.sroa.5.0..sroa_idx, align 2, !alias.scope !68, !noalias !73
  %_26.i9.fr = freeze i16 %_26.i9
  %_25.not.i10 = icmp ne i16 %_26.i9.fr, 51
  %_28.i12 = load i16, ptr %_14.sroa.6.0..sroa_idx, align 4, !alias.scope !68, !noalias !73
  %_28.i12.fr = freeze i16 %_28.i12
  %_27.not.i13 = icmp ne i16 %_28.i12.fr, 6
  %36 = load <4 x i8>, ptr %_14.sroa.7.0..sroa_idx, align 2, !alias.scope !68, !noalias !73
  %.fr201 = freeze <4 x i8> %36
  %_38.i27 = load i8, ptr %_14.sroa.11.0..sroa_idx, align 2, !alias.scope !68, !noalias !73
  %_38.i27.fr = freeze i8 %_38.i27
  %_37.not.i28 = icmp ne i8 %_38.i27.fr, 0
  %self.val.i31 = load i24, ptr %_14.sroa.12.0..sroa_idx, align 1, !alias.scope !68, !noalias !73
  %self.val.i31.fr = freeze i24 %self.val.i31
  %37 = icmp ne i24 %self.val.i31.fr, 65540
  %self1.val.i34 = load i24, ptr %_14.sroa.13.0..sroa_idx, align 2, !alias.scope !68, !noalias !73
  %38 = icmp ne i24 %self1.val.i34, -63991
  %.fr201.scalar = bitcast <4 x i8> %.fr201 to i32
  %39 = icmp ne i32 %.fr201.scalar, 369098873
  %op.rdx184 = or i1 %39, %_37.not.i28
  %op.rdx186 = or i1 %_27.not.i13, %37
  %40 = or i1 %op.rdx184, %_23.not.i7
  %op.rdx188 = or i1 %40, %_25.not.i10
  %41 = or i1 %op.rdx188, %op.rdx186
  %42 = select i1 %41, i1 true, i1 %.not.i5
  %op.rdx190 = select i1 %42, i1 true, i1 %38
  br i1 %op.rdx190, label %_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit55, label %bb22.i52

bb22.i52:                                         ; preds = %bb10
  %self2.val.i38 = load i24, ptr %_14.sroa.14.0..sroa_idx, align 1, !alias.scope !68, !noalias !73
  %.not18.i39 = icmp eq i24 %self2.val.i38, 0
  %43 = load <4 x i8>, ptr %_14.sroa.15.0..sroa_idx, align 4, !alias.scope !68, !noalias !73
  %.fr203 = freeze <4 x i8> %43
  %.fr203.scalar = bitcast <4 x i8> %.fr203 to i32
  %44 = icmp eq i32 %.fr203.scalar, 256
  %op.rdx183 = select i1 %44, i1 %.not18.i39, i1 false
  br i1 %op.rdx183, label %bb13, label %_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit55

_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit55: ; preds = %bb22.i52, %bb10
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab_actual.i2), !noalias !71
  br label %bb20

bb20:                                             ; preds = %_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit163, %_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit109, %_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit55, %_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %expected_sfbtab)
  br label %bb21

bb13:                                             ; preds = %bb22.i52
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab_actual.i2), !noalias !71
  call void @llvm.experimental.noalias.scope.decl(metadata !81)
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %sfbtab_actual.i56), !noalias !84
  %_20.i57 = load ptr, ptr %18, align 8, !alias.scope !81, !noalias !86, !noundef !2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %sfbtab_actual.i56, ptr noundef nonnull align 1 dereferenceable(23) %_20.i57, i64 23, i1 false), !noalias !84
  %bcmp.i.i.i58 = call i32 @bcmp(ptr noundef nonnull dereferenceable(23) %sfbtab_actual.i56, ptr noundef nonnull dereferenceable(23) %expected_sfbtab, i64 23), !alias.scope !87, !noalias !81
  %.not.i59 = icmp ne i32 %bcmp.i.i.i58, 0
  %_24.i60 = load i16, ptr %_21.sroa.4.0..sroa_idx, align 8, !alias.scope !81, !noalias !86
  %_24.i60.fr = freeze i16 %_24.i60
  %_23.not.i61 = icmp ne i16 %_24.i60.fr, 102
  %_26.i63 = load i16, ptr %_21.sroa.5.0..sroa_idx, align 2, !alias.scope !81, !noalias !86
  %_26.i63.fr = freeze i16 %_26.i63
  %_25.not.i64 = icmp ne i16 %_26.i63.fr, 52
  %_28.i66 = load i16, ptr %_21.sroa.6.0..sroa_idx, align 4, !alias.scope !81, !noalias !86
  %_28.i66.fr = freeze i16 %_28.i66
  %_27.not.i67 = icmp ne i16 %_28.i66.fr, 7
  %45 = load <4 x i8>, ptr %_21.sroa.7.0..sroa_idx, align 2, !alias.scope !81, !noalias !86
  %.fr204 = freeze <4 x i8> %45
  %_38.i81 = load i8, ptr %_21.sroa.11.0..sroa_idx, align 2, !alias.scope !81, !noalias !86
  %_38.i81.fr = freeze i8 %_38.i81
  %_37.not.i82 = icmp ne i8 %_38.i81.fr, 0
  %self.val.i85 = load i24, ptr %_21.sroa.12.0..sroa_idx, align 1, !alias.scope !81, !noalias !86
  %self.val.i85.fr = freeze i24 %self.val.i85
  %46 = icmp ne i24 %self.val.i85.fr, 131076
  %self1.val.i88 = load i24, ptr %_21.sroa.13.0..sroa_idx, align 2, !alias.scope !81, !noalias !86
  %47 = icmp ne i24 %self1.val.i88, -63734
  %.fr204.scalar = bitcast <4 x i8> %.fr204 to i32
  %48 = icmp ne i32 %.fr204.scalar, 369098874
  %op.rdx176 = or i1 %48, %_37.not.i82
  %op.rdx178 = or i1 %_27.not.i67, %46
  %49 = or i1 %op.rdx176, %_23.not.i61
  %op.rdx180 = or i1 %49, %_25.not.i64
  %50 = or i1 %op.rdx180, %op.rdx178
  %51 = select i1 %50, i1 true, i1 %.not.i59
  %op.rdx182 = select i1 %51, i1 true, i1 %47
  br i1 %op.rdx182, label %_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit109, label %bb22.i106

bb22.i106:                                        ; preds = %bb13
  %self2.val.i92 = load i24, ptr %_21.sroa.14.0..sroa_idx, align 1, !alias.scope !81, !noalias !86
  %.not18.i93 = icmp eq i24 %self2.val.i92, 0
  %52 = load <4 x i8>, ptr %_21.sroa.15.0..sroa_idx, align 4, !alias.scope !81, !noalias !86
  %.fr206 = freeze <4 x i8> %52
  %.fr206.scalar = bitcast <4 x i8> %.fr206 to i32
  %53 = icmp eq i32 %.fr206.scalar, 65536
  %op.rdx175 = select i1 %53, i1 %.not18.i93, i1 false
  br i1 %op.rdx175, label %bb16, label %_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit109

_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit109: ; preds = %bb22.i106, %bb13
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab_actual.i56), !noalias !84
  br label %bb20

bb16:                                             ; preds = %bb22.i106
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab_actual.i56), !noalias !84
  call void @llvm.experimental.noalias.scope.decl(metadata !94)
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %sfbtab_actual.i110), !noalias !97
  %_20.i111 = load ptr, ptr %19, align 8, !alias.scope !94, !noalias !99, !noundef !2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %sfbtab_actual.i110, ptr noundef nonnull align 1 dereferenceable(23) %_20.i111, i64 23, i1 false), !noalias !97
  %bcmp.i.i.i112 = call i32 @bcmp(ptr noundef nonnull dereferenceable(23) %sfbtab_actual.i110, ptr noundef nonnull dereferenceable(23) %expected_sfbtab, i64 23), !alias.scope !100, !noalias !94
  %.not.i113 = icmp ne i32 %bcmp.i.i.i112, 0
  %_24.i114 = load i16, ptr %_28.sroa.4.0..sroa_idx, align 8, !alias.scope !94, !noalias !99
  %_24.i114.fr = freeze i16 %_24.i114
  %_23.not.i115 = icmp ne i16 %_24.i114.fr, 103
  %_26.i117 = load i16, ptr %_28.sroa.5.0..sroa_idx, align 2, !alias.scope !94, !noalias !99
  %_26.i117.fr = freeze i16 %_26.i117
  %_25.not.i118 = icmp ne i16 %_26.i117.fr, 53
  %_28.i120 = load i16, ptr %_28.sroa.6.0..sroa_idx, align 4, !alias.scope !94, !noalias !99
  %_28.i120.fr = freeze i16 %_28.i120
  %_27.not.i121 = icmp ne i16 %_28.i120.fr, 8
  %54 = load <4 x i8>, ptr %_28.sroa.7.0..sroa_idx, align 2, !alias.scope !94, !noalias !99
  %.fr207 = freeze <4 x i8> %54
  %_38.i135 = load i8, ptr %_28.sroa.11.0..sroa_idx, align 2, !alias.scope !94, !noalias !99
  %_38.i135.fr = freeze i8 %_38.i135
  %_37.not.i136 = icmp ne i8 %_38.i135.fr, 0
  %self.val.i139 = load i24, ptr %_28.sroa.12.0..sroa_idx, align 1, !alias.scope !94, !noalias !99
  %self.val.i139.fr = freeze i24 %self.val.i139
  %55 = icmp ne i24 %self.val.i139.fr, 0
  %self1.val.i142 = load i24, ptr %_28.sroa.13.0..sroa_idx, align 2, !alias.scope !94, !noalias !99
  %56 = icmp ne i24 %self1.val.i142, -65536
  %.fr207.scalar = bitcast <4 x i8> %.fr207 to i32
  %57 = icmp ne i32 %.fr207.scalar, 369098875
  %op.rdx168 = or i1 %57, %_37.not.i136
  %op.rdx170 = or i1 %_27.not.i121, %55
  %58 = or i1 %op.rdx168, %_23.not.i115
  %op.rdx172 = or i1 %58, %_25.not.i118
  %59 = or i1 %op.rdx172, %op.rdx170
  %60 = select i1 %59, i1 true, i1 %.not.i113
  %op.rdx174 = select i1 %60, i1 true, i1 %56
  br i1 %op.rdx174, label %_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit163, label %bb22.i160

bb22.i160:                                        ; preds = %bb16
  %self2.val.i146 = load i24, ptr %_28.sroa.14.0..sroa_idx, align 1, !alias.scope !94, !noalias !99
  %.not18.i147 = icmp eq i24 %self2.val.i146, 0
  %61 = load <4 x i8>, ptr %_28.sroa.15.0..sroa_idx, align 4, !alias.scope !94, !noalias !99
  %.fr209 = freeze <4 x i8> %61
  %.fr209.scalar = bitcast <4 x i8> %.fr209 to i32
  %62 = icmp eq i32 %.fr209.scalar, 0
  %op.rdx = select i1 %62, i1 %.not18.i147, i1 false
  br i1 %op.rdx, label %bb19, label %_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit163

_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit163: ; preds = %bb22.i160, %bb16
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab_actual.i110), !noalias !97
  br label %bb20

bb19:                                             ; preds = %bb22.i160
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab_actual.i110), !noalias !97
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %expected_sfbtab)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %bs)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hdr)
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %gr)
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab3)
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab2)
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab1)
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab0)
  call void @llvm.lifetime.end.p0(i64 237, ptr nonnull %b_buf)
  br label %bb22

bb22:                                             ; preds = %bb19, %bb21
  %.2 = phi i1 [ false, %bb21 ], [ true, %bb19 ]
  ret i1 %.2
}

; Function Attrs: nofree nounwind nonlazybind uwtable
define noundef zeroext i1 @run_test_3() unnamed_addr #1 {
start:
  %sfbtab_actual.i110 = alloca [23 x i8], align 1
  %sfbtab_actual.i56 = alloca [23 x i8], align 1
  %sfbtab_actual.i2 = alloca [23 x i8], align 1
  %sfbtab_actual.i = alloca [23 x i8], align 1
  %expected_sfbtab = alloca [23 x i8], align 1
  %bs = alloca %"src::lib::BsT", align 8
  %hdr = alloca [4 x i8], align 4
  %gr = alloca [4 x %"src::lib::L3GrInfoT"], align 8
  %sfbtab3 = alloca [23 x i8], align 1
  %sfbtab2 = alloca [23 x i8], align 1
  %sfbtab1 = alloca [23 x i8], align 1
  %sfbtab0 = alloca [23 x i8], align 1
  %b_buf = alloca [223 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 223, ptr nonnull %b_buf)
  store <16 x i8> <i8 4, i8 0, i8 0, i8 100, i8 25, i8 60, i8 40, i8 -128, i8 4, i8 82, i8 12, i8 -93, i8 55, i8 -106, i8 16, i8 1>, ptr %b_buf, align 16
  %0 = getelementptr inbounds [223 x i8], ptr %b_buf, i64 0, i64 16
  store <16 x i8> <i8 -100, i8 -127, i8 -104, i8 104, i8 -12, i8 -30, i8 0, i8 85, i8 -56, i8 51, i8 -115, i8 94, i8 -32, i8 64, i8 14, i8 -62>, ptr %0, align 16
  %1 = getelementptr inbounds [223 x i8], ptr %b_buf, i64 0, i64 32
  store <16 x i8> <i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111, i8 112, i8 113, i8 114, i8 115, i8 116>, ptr %1, align 16
  %2 = getelementptr inbounds [223 x i8], ptr %b_buf, i64 0, i64 48
  store <16 x i8> <i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111, i8 112, i8 113, i8 114, i8 115, i8 116>, ptr %2, align 16
  %3 = getelementptr inbounds [223 x i8], ptr %b_buf, i64 0, i64 64
  store <16 x i8> <i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111, i8 112, i8 113, i8 114, i8 115, i8 116>, ptr %3, align 16
  %4 = getelementptr inbounds [223 x i8], ptr %b_buf, i64 0, i64 80
  store <16 x i8> <i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111, i8 112, i8 113, i8 114, i8 115, i8 116>, ptr %4, align 16
  %5 = getelementptr inbounds [223 x i8], ptr %b_buf, i64 0, i64 96
  store <16 x i8> <i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111, i8 112, i8 113, i8 114, i8 115, i8 116>, ptr %5, align 16
  %6 = getelementptr inbounds [223 x i8], ptr %b_buf, i64 0, i64 112
  store <16 x i8> <i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111, i8 112, i8 113, i8 114, i8 115, i8 116>, ptr %6, align 16
  %7 = getelementptr inbounds [223 x i8], ptr %b_buf, i64 0, i64 128
  store <16 x i8> <i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111, i8 112, i8 113, i8 114, i8 115, i8 116>, ptr %7, align 16
  %8 = getelementptr inbounds [223 x i8], ptr %b_buf, i64 0, i64 144
  store <16 x i8> <i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111, i8 112, i8 113, i8 114, i8 115, i8 116>, ptr %8, align 16
  %9 = getelementptr inbounds [223 x i8], ptr %b_buf, i64 0, i64 160
  store <16 x i8> <i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111, i8 112, i8 113, i8 114, i8 115, i8 116>, ptr %9, align 16
  %10 = getelementptr inbounds [223 x i8], ptr %b_buf, i64 0, i64 176
  store <16 x i8> <i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111, i8 112, i8 113, i8 114, i8 115, i8 116>, ptr %10, align 16
  %11 = getelementptr inbounds [223 x i8], ptr %b_buf, i64 0, i64 192
  store <16 x i8> <i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111, i8 112, i8 113, i8 114, i8 115, i8 116>, ptr %11, align 16
  %12 = getelementptr inbounds [223 x i8], ptr %b_buf, i64 0, i64 208
  store <8 x i8> <i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108>, ptr %12, align 16
  %13 = getelementptr inbounds [223 x i8], ptr %b_buf, i64 0, i64 216
  store <4 x i8> <i8 109, i8 110, i8 111, i8 112>, ptr %13, align 8
  %14 = getelementptr inbounds [223 x i8], ptr %b_buf, i64 0, i64 220
  store i8 0, ptr %14, align 4
  %15 = getelementptr inbounds [223 x i8], ptr %b_buf, i64 0, i64 221
  store i8 0, ptr %15, align 1
  %16 = getelementptr inbounds [223 x i8], ptr %b_buf, i64 0, i64 222
  store i8 0, ptr %16, align 2
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %sfbtab0)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %sfbtab0, i8 0, i64 23, i1 false)
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %sfbtab1)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %sfbtab1, i8 0, i64 23, i1 false)
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %sfbtab2)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %sfbtab2, i8 0, i64 23, i1 false)
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %sfbtab3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %sfbtab3, i8 0, i64 23, i1 false)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %gr)
  store ptr %sfbtab0, ptr %gr, align 8
  %_7.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %gr, i64 8
  %_7.sroa.14.0..sroa_idx = getelementptr inbounds i8, ptr %gr, i64 25
  %_7.sroa.15.0..sroa_idx = getelementptr inbounds i8, ptr %gr, i64 28
  %17 = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_7.sroa.4.0..sroa_idx, i8 0, i64 24, i1 false)
  store ptr %sfbtab1, ptr %17, align 8
  %_14.sroa.4.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 1, i32 1
  %_14.sroa.5.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 1, i32 2
  %_14.sroa.6.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 1, i32 3
  %_14.sroa.7.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 1, i32 4
  %_14.sroa.11.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 1, i32 8
  %_14.sroa.12.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 1, i32 9
  %_14.sroa.13.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 1, i32 10
  %_14.sroa.14.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 1, i32 11
  %_14.sroa.15.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 1, i32 12
  %18 = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_14.sroa.4.0..sroa_idx, i8 0, i64 24, i1 false)
  store ptr %sfbtab2, ptr %18, align 8
  %_21.sroa.4.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 2, i32 1
  %_21.sroa.5.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 2, i32 2
  %_21.sroa.6.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 2, i32 3
  %_21.sroa.7.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 2, i32 4
  %_21.sroa.11.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 2, i32 8
  %_21.sroa.12.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 2, i32 9
  %_21.sroa.13.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 2, i32 10
  %_21.sroa.14.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 2, i32 11
  %_21.sroa.15.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 2, i32 12
  %19 = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_21.sroa.4.0..sroa_idx, i8 0, i64 24, i1 false)
  store ptr %sfbtab3, ptr %19, align 8
  %_28.sroa.4.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 3, i32 1
  %_28.sroa.5.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 3, i32 2
  %_28.sroa.6.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 3, i32 3
  %_28.sroa.7.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 3, i32 4
  %_28.sroa.11.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 3, i32 8
  %_28.sroa.12.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 3, i32 9
  %_28.sroa.13.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 3, i32 10
  %_28.sroa.14.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 3, i32 11
  %_28.sroa.15.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 3, i32 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_28.sroa.4.0..sroa_idx, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hdr)
  store <4 x i8> <i8 -1, i8 -5, i8 -112, i8 0>, ptr %hdr, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %bs)
  store ptr %b_buf, ptr %bs, align 8
  %20 = getelementptr inbounds %"src::lib::BsT", ptr %bs, i64 0, i32 1
  store i32 0, ptr %20, align 8
  %21 = getelementptr inbounds %"src::lib::BsT", ptr %bs, i64 0, i32 2
  store i32 236, ptr %21, align 4
  %ret = call noundef i32 @read_side_info(ptr noundef nonnull %bs, ptr noundef nonnull %gr, ptr noundef nonnull %hdr)
  %22 = icmp eq i32 %ret, -1
  %_50 = load i32, ptr %20, align 8
  %23 = icmp eq i32 %_50, 256
  %or.cond = select i1 %22, i1 %23, i1 false
  %_51 = load i32, ptr %21, align 4
  %24 = icmp eq i32 %_51, 236
  %or.cond1 = select i1 %or.cond, i1 %24, i1 false
  br i1 %or.cond1, label %bb7, label %bb21

bb21:                                             ; preds = %bb20, %start
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %bs)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hdr)
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %gr)
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab3)
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab2)
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab1)
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab0)
  call void @llvm.lifetime.end.p0(i64 223, ptr nonnull %b_buf)
  br label %bb22

bb7:                                              ; preds = %start
  %_7.sroa.13.0..sroa_idx = getelementptr inbounds i8, ptr %gr, i64 22
  %_7.sroa.12.0..sroa_idx = getelementptr inbounds i8, ptr %gr, i64 19
  %_7.sroa.11.0..sroa_idx = getelementptr inbounds i8, ptr %gr, i64 18
  %_7.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %gr, i64 14
  %_7.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %gr, i64 12
  %_7.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %gr, i64 10
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %expected_sfbtab)
  %25 = getelementptr inbounds [23 x i8], ptr %expected_sfbtab, i64 0, i64 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %expected_sfbtab, i8 4, i64 6, i1 false)
  store <16 x i8> <i8 6, i8 6, i8 8, i8 8, i8 10, i8 12, i8 16, i8 20, i8 24, i8 28, i8 34, i8 42, i8 50, i8 54, i8 76, i8 -98>, ptr %25, align 1
  %26 = getelementptr inbounds [23 x i8], ptr %expected_sfbtab, i64 0, i64 22
  store i8 0, ptr %26, align 1
  call void @llvm.experimental.noalias.scope.decl(metadata !107)
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %sfbtab_actual.i), !noalias !110
  %_20.i = load ptr, ptr %gr, align 8, !alias.scope !107, !noalias !112, !noundef !2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %sfbtab_actual.i, ptr noundef nonnull align 1 dereferenceable(23) %_20.i, i64 23, i1 false), !noalias !110
  %bcmp.i.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(23) %sfbtab_actual.i, ptr noundef nonnull dereferenceable(23) %expected_sfbtab, i64 23), !alias.scope !113, !noalias !107
  %.not.i = icmp ne i32 %bcmp.i.i.i, 0
  %_24.i = load i16, ptr %_7.sroa.4.0..sroa_idx, align 8, !alias.scope !107, !noalias !112
  %_24.i.fr = freeze i16 %_24.i
  %_23.not.i = icmp ne i16 %_24.i.fr, 100
  %_26.i = load i16, ptr %_7.sroa.5.0..sroa_idx, align 2, !alias.scope !107, !noalias !112
  %_26.i.fr = freeze i16 %_26.i
  %_25.not.i = icmp ne i16 %_26.i.fr, 50
  %_28.i = load i16, ptr %_7.sroa.6.0..sroa_idx, align 4, !alias.scope !107, !noalias !112
  %_28.i.fr = freeze i16 %_28.i
  %_27.not.i = icmp ne i16 %_28.i.fr, 5
  %27 = load <4 x i8>, ptr %_7.sroa.7.0..sroa_idx, align 2, !alias.scope !107, !noalias !112
  %.fr = freeze <4 x i8> %27
  %_38.i = load i8, ptr %_7.sroa.11.0..sroa_idx, align 2, !alias.scope !107, !noalias !112
  %_38.i.fr = freeze i8 %_38.i
  %_37.not.i = icmp ne i8 %_38.i.fr, 0
  %self.val.i = load i24, ptr %_7.sroa.12.0..sroa_idx, align 1, !alias.scope !107, !noalias !112
  %self.val.i.fr = freeze i24 %self.val.i
  %28 = icmp ne i24 %self.val.i.fr, 4
  %self1.val.i = load i24, ptr %_7.sroa.13.0..sroa_idx, align 2, !alias.scope !107, !noalias !112
  %29 = icmp ne i24 %self1.val.i, -64248
  %.fr.scalar = bitcast <4 x i8> %.fr to i32
  %30 = icmp ne i32 %.fr.scalar, 369098872
  %op.rdx192 = or i1 %30, %_37.not.i
  %op.rdx194 = or i1 %_27.not.i, %28
  %31 = or i1 %op.rdx192, %_23.not.i
  %op.rdx196 = or i1 %31, %_25.not.i
  %32 = or i1 %op.rdx196, %op.rdx194
  %33 = select i1 %32, i1 true, i1 %.not.i
  %op.rdx198 = select i1 %33, i1 true, i1 %29
  br i1 %op.rdx198, label %_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit, label %bb22.i

bb22.i:                                           ; preds = %bb7
  %self2.val.i = load i24, ptr %_7.sroa.14.0..sroa_idx, align 1, !alias.scope !107, !noalias !112
  %.not18.i = icmp eq i24 %self2.val.i, 0
  %34 = load <4 x i8>, ptr %_7.sroa.15.0..sroa_idx, align 4, !alias.scope !107, !noalias !112
  %.fr200 = freeze <4 x i8> %34
  %.fr200.scalar = bitcast <4 x i8> %.fr200 to i32
  %35 = icmp eq i32 %.fr200.scalar, 65536
  %op.rdx191 = select i1 %35, i1 %.not18.i, i1 false
  br i1 %op.rdx191, label %bb10, label %_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit

_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit: ; preds = %bb22.i, %bb7
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab_actual.i), !noalias !110
  br label %bb20

bb10:                                             ; preds = %bb22.i
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab_actual.i), !noalias !110
  call void @llvm.experimental.noalias.scope.decl(metadata !120)
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %sfbtab_actual.i2), !noalias !123
  %_20.i3 = load ptr, ptr %17, align 8, !alias.scope !120, !noalias !125, !noundef !2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %sfbtab_actual.i2, ptr noundef nonnull align 1 dereferenceable(23) %_20.i3, i64 23, i1 false), !noalias !123
  %bcmp.i.i.i4 = call i32 @bcmp(ptr noundef nonnull dereferenceable(23) %sfbtab_actual.i2, ptr noundef nonnull dereferenceable(23) %expected_sfbtab, i64 23), !alias.scope !126, !noalias !120
  %.not.i5 = icmp ne i32 %bcmp.i.i.i4, 0
  %_24.i6 = load i16, ptr %_14.sroa.4.0..sroa_idx, align 8, !alias.scope !120, !noalias !125
  %_24.i6.fr = freeze i16 %_24.i6
  %_23.not.i7 = icmp ne i16 %_24.i6.fr, 101
  %_26.i9 = load i16, ptr %_14.sroa.5.0..sroa_idx, align 2, !alias.scope !120, !noalias !125
  %_26.i9.fr = freeze i16 %_26.i9
  %_25.not.i10 = icmp ne i16 %_26.i9.fr, 51
  %_28.i12 = load i16, ptr %_14.sroa.6.0..sroa_idx, align 4, !alias.scope !120, !noalias !125
  %_28.i12.fr = freeze i16 %_28.i12
  %_27.not.i13 = icmp ne i16 %_28.i12.fr, 6
  %36 = load <4 x i8>, ptr %_14.sroa.7.0..sroa_idx, align 2, !alias.scope !120, !noalias !125
  %.fr201 = freeze <4 x i8> %36
  %_38.i27 = load i8, ptr %_14.sroa.11.0..sroa_idx, align 2, !alias.scope !120, !noalias !125
  %_38.i27.fr = freeze i8 %_38.i27
  %_37.not.i28 = icmp ne i8 %_38.i27.fr, 0
  %self.val.i31 = load i24, ptr %_14.sroa.12.0..sroa_idx, align 1, !alias.scope !120, !noalias !125
  %self.val.i31.fr = freeze i24 %self.val.i31
  %37 = icmp ne i24 %self.val.i31.fr, 65540
  %self1.val.i34 = load i24, ptr %_14.sroa.13.0..sroa_idx, align 2, !alias.scope !120, !noalias !125
  %38 = icmp ne i24 %self1.val.i34, -63991
  %.fr201.scalar = bitcast <4 x i8> %.fr201 to i32
  %39 = icmp ne i32 %.fr201.scalar, 369098873
  %op.rdx184 = or i1 %39, %_37.not.i28
  %op.rdx186 = or i1 %_27.not.i13, %37
  %40 = or i1 %op.rdx184, %_23.not.i7
  %op.rdx188 = or i1 %40, %_25.not.i10
  %41 = or i1 %op.rdx188, %op.rdx186
  %42 = select i1 %41, i1 true, i1 %.not.i5
  %op.rdx190 = select i1 %42, i1 true, i1 %38
  br i1 %op.rdx190, label %_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit55, label %bb22.i52

bb22.i52:                                         ; preds = %bb10
  %self2.val.i38 = load i24, ptr %_14.sroa.14.0..sroa_idx, align 1, !alias.scope !120, !noalias !125
  %.not18.i39 = icmp eq i24 %self2.val.i38, 0
  %43 = load <4 x i8>, ptr %_14.sroa.15.0..sroa_idx, align 4, !alias.scope !120, !noalias !125
  %.fr203 = freeze <4 x i8> %43
  %.fr203.scalar = bitcast <4 x i8> %.fr203 to i32
  %44 = icmp eq i32 %.fr203.scalar, 256
  %op.rdx183 = select i1 %44, i1 %.not18.i39, i1 false
  br i1 %op.rdx183, label %bb13, label %_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit55

_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit55: ; preds = %bb22.i52, %bb10
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab_actual.i2), !noalias !123
  br label %bb20

bb20:                                             ; preds = %_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit163, %_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit109, %_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit55, %_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %expected_sfbtab)
  br label %bb21

bb13:                                             ; preds = %bb22.i52
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab_actual.i2), !noalias !123
  call void @llvm.experimental.noalias.scope.decl(metadata !133)
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %sfbtab_actual.i56), !noalias !136
  %_20.i57 = load ptr, ptr %18, align 8, !alias.scope !133, !noalias !138, !noundef !2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %sfbtab_actual.i56, ptr noundef nonnull align 1 dereferenceable(23) %_20.i57, i64 23, i1 false), !noalias !136
  %bcmp.i.i.i58 = call i32 @bcmp(ptr noundef nonnull dereferenceable(23) %sfbtab_actual.i56, ptr noundef nonnull dereferenceable(23) %expected_sfbtab, i64 23), !alias.scope !139, !noalias !133
  %.not.i59 = icmp ne i32 %bcmp.i.i.i58, 0
  %_24.i60 = load i16, ptr %_21.sroa.4.0..sroa_idx, align 8, !alias.scope !133, !noalias !138
  %_24.i60.fr = freeze i16 %_24.i60
  %_23.not.i61 = icmp ne i16 %_24.i60.fr, 102
  %_26.i63 = load i16, ptr %_21.sroa.5.0..sroa_idx, align 2, !alias.scope !133, !noalias !138
  %_26.i63.fr = freeze i16 %_26.i63
  %_25.not.i64 = icmp ne i16 %_26.i63.fr, 52
  %_28.i66 = load i16, ptr %_21.sroa.6.0..sroa_idx, align 4, !alias.scope !133, !noalias !138
  %_28.i66.fr = freeze i16 %_28.i66
  %_27.not.i67 = icmp ne i16 %_28.i66.fr, 7
  %45 = load <4 x i8>, ptr %_21.sroa.7.0..sroa_idx, align 2, !alias.scope !133, !noalias !138
  %.fr204 = freeze <4 x i8> %45
  %_38.i81 = load i8, ptr %_21.sroa.11.0..sroa_idx, align 2, !alias.scope !133, !noalias !138
  %_38.i81.fr = freeze i8 %_38.i81
  %_37.not.i82 = icmp ne i8 %_38.i81.fr, 0
  %self.val.i85 = load i24, ptr %_21.sroa.12.0..sroa_idx, align 1, !alias.scope !133, !noalias !138
  %self.val.i85.fr = freeze i24 %self.val.i85
  %46 = icmp ne i24 %self.val.i85.fr, 131076
  %self1.val.i88 = load i24, ptr %_21.sroa.13.0..sroa_idx, align 2, !alias.scope !133, !noalias !138
  %47 = icmp ne i24 %self1.val.i88, -63734
  %.fr204.scalar = bitcast <4 x i8> %.fr204 to i32
  %48 = icmp ne i32 %.fr204.scalar, 369098874
  %op.rdx176 = or i1 %48, %_37.not.i82
  %op.rdx178 = or i1 %_27.not.i67, %46
  %49 = or i1 %op.rdx176, %_23.not.i61
  %op.rdx180 = or i1 %49, %_25.not.i64
  %50 = or i1 %op.rdx180, %op.rdx178
  %51 = select i1 %50, i1 true, i1 %.not.i59
  %op.rdx182 = select i1 %51, i1 true, i1 %47
  br i1 %op.rdx182, label %_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit109, label %bb22.i106

bb22.i106:                                        ; preds = %bb13
  %self2.val.i92 = load i24, ptr %_21.sroa.14.0..sroa_idx, align 1, !alias.scope !133, !noalias !138
  %.not18.i93 = icmp eq i24 %self2.val.i92, 0
  %52 = load <4 x i8>, ptr %_21.sroa.15.0..sroa_idx, align 4, !alias.scope !133, !noalias !138
  %.fr206 = freeze <4 x i8> %52
  %.fr206.scalar = bitcast <4 x i8> %.fr206 to i32
  %53 = icmp eq i32 %.fr206.scalar, 65536
  %op.rdx175 = select i1 %53, i1 %.not18.i93, i1 false
  br i1 %op.rdx175, label %bb16, label %_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit109

_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit109: ; preds = %bb22.i106, %bb13
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab_actual.i56), !noalias !136
  br label %bb20

bb16:                                             ; preds = %bb22.i106
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab_actual.i56), !noalias !136
  call void @llvm.experimental.noalias.scope.decl(metadata !146)
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %sfbtab_actual.i110), !noalias !149
  %_20.i111 = load ptr, ptr %19, align 8, !alias.scope !146, !noalias !151, !noundef !2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %sfbtab_actual.i110, ptr noundef nonnull align 1 dereferenceable(23) %_20.i111, i64 23, i1 false), !noalias !149
  %bcmp.i.i.i112 = call i32 @bcmp(ptr noundef nonnull dereferenceable(23) %sfbtab_actual.i110, ptr noundef nonnull dereferenceable(23) %expected_sfbtab, i64 23), !alias.scope !152, !noalias !146
  %.not.i113 = icmp ne i32 %bcmp.i.i.i112, 0
  %_24.i114 = load i16, ptr %_28.sroa.4.0..sroa_idx, align 8, !alias.scope !146, !noalias !151
  %_24.i114.fr = freeze i16 %_24.i114
  %_23.not.i115 = icmp ne i16 %_24.i114.fr, 103
  %_26.i117 = load i16, ptr %_28.sroa.5.0..sroa_idx, align 2, !alias.scope !146, !noalias !151
  %_26.i117.fr = freeze i16 %_26.i117
  %_25.not.i118 = icmp ne i16 %_26.i117.fr, 53
  %_28.i120 = load i16, ptr %_28.sroa.6.0..sroa_idx, align 4, !alias.scope !146, !noalias !151
  %_28.i120.fr = freeze i16 %_28.i120
  %_27.not.i121 = icmp ne i16 %_28.i120.fr, 8
  %54 = load <4 x i8>, ptr %_28.sroa.7.0..sroa_idx, align 2, !alias.scope !146, !noalias !151
  %.fr207 = freeze <4 x i8> %54
  %_38.i135 = load i8, ptr %_28.sroa.11.0..sroa_idx, align 2, !alias.scope !146, !noalias !151
  %_38.i135.fr = freeze i8 %_38.i135
  %_37.not.i136 = icmp ne i8 %_38.i135.fr, 0
  %self.val.i139 = load i24, ptr %_28.sroa.12.0..sroa_idx, align 1, !alias.scope !146, !noalias !151
  %self.val.i139.fr = freeze i24 %self.val.i139
  %55 = icmp ne i24 %self.val.i139.fr, 0
  %self1.val.i142 = load i24, ptr %_28.sroa.13.0..sroa_idx, align 2, !alias.scope !146, !noalias !151
  %56 = icmp ne i24 %self1.val.i142, -65536
  %.fr207.scalar = bitcast <4 x i8> %.fr207 to i32
  %57 = icmp ne i32 %.fr207.scalar, 369098875
  %op.rdx168 = or i1 %57, %_37.not.i136
  %op.rdx170 = or i1 %_27.not.i121, %55
  %58 = or i1 %op.rdx168, %_23.not.i115
  %op.rdx172 = or i1 %58, %_25.not.i118
  %59 = or i1 %op.rdx172, %op.rdx170
  %60 = select i1 %59, i1 true, i1 %.not.i113
  %op.rdx174 = select i1 %60, i1 true, i1 %56
  br i1 %op.rdx174, label %_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit163, label %bb22.i160

bb22.i160:                                        ; preds = %bb16
  %self2.val.i146 = load i24, ptr %_28.sroa.14.0..sroa_idx, align 1, !alias.scope !146, !noalias !151
  %.not18.i147 = icmp eq i24 %self2.val.i146, 0
  %61 = load <4 x i8>, ptr %_28.sroa.15.0..sroa_idx, align 4, !alias.scope !146, !noalias !151
  %.fr209 = freeze <4 x i8> %61
  %.fr209.scalar = bitcast <4 x i8> %.fr209 to i32
  %62 = icmp eq i32 %.fr209.scalar, 0
  %op.rdx = select i1 %62, i1 %.not18.i147, i1 false
  br i1 %op.rdx, label %bb19, label %_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit163

_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit163: ; preds = %bb22.i160, %bb16
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab_actual.i110), !noalias !149
  br label %bb20

bb19:                                             ; preds = %bb22.i160
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab_actual.i110), !noalias !149
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %expected_sfbtab)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %bs)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hdr)
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %gr)
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab3)
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab2)
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab1)
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab0)
  call void @llvm.lifetime.end.p0(i64 223, ptr nonnull %b_buf)
  br label %bb22

bb22:                                             ; preds = %bb19, %bb21
  %.2 = phi i1 [ false, %bb21 ], [ true, %bb19 ]
  ret i1 %.2
}

; Function Attrs: nofree nounwind nonlazybind uwtable
define noundef zeroext i1 @run_test_4() unnamed_addr #1 {
start:
  %sfbtab_actual.i110 = alloca [23 x i8], align 1
  %sfbtab_actual.i56 = alloca [23 x i8], align 1
  %sfbtab_actual.i2 = alloca [23 x i8], align 1
  %sfbtab_actual.i = alloca [23 x i8], align 1
  %expected_sfbtab = alloca [23 x i8], align 1
  %bs = alloca %"src::lib::BsT", align 8
  %hdr = alloca [4 x i8], align 4
  %gr = alloca [4 x %"src::lib::L3GrInfoT"], align 8
  %sfbtab3 = alloca [23 x i8], align 1
  %sfbtab2 = alloca [23 x i8], align 1
  %sfbtab1 = alloca [23 x i8], align 1
  %sfbtab0 = alloca [23 x i8], align 1
  %b_buf = alloca [238 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 238, ptr nonnull %b_buf)
  store <16 x i8> <i8 4, i8 0, i8 0, i8 100, i8 25, i8 60, i8 40, i8 -128, i8 4, i8 82, i8 12, i8 -93, i8 55, i8 -106, i8 16, i8 1>, ptr %b_buf, align 16
  %0 = getelementptr inbounds [238 x i8], ptr %b_buf, i64 0, i64 16
  store <16 x i8> <i8 -100, i8 -127, i8 -104, i8 104, i8 -12, i8 -30, i8 0, i8 85, i8 -56, i8 51, i8 -115, i8 94, i8 -32, i8 64, i8 14, i8 -62>, ptr %0, align 16
  %1 = getelementptr inbounds [238 x i8], ptr %b_buf, i64 0, i64 32
  store <16 x i8> <i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16>, ptr %1, align 16
  %2 = getelementptr inbounds [238 x i8], ptr %b_buf, i64 0, i64 48
  store <16 x i8> <i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16>, ptr %2, align 16
  %3 = getelementptr inbounds [238 x i8], ptr %b_buf, i64 0, i64 64
  store <16 x i8> <i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16>, ptr %3, align 16
  %4 = getelementptr inbounds [238 x i8], ptr %b_buf, i64 0, i64 80
  store <16 x i8> <i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16>, ptr %4, align 16
  %5 = getelementptr inbounds [238 x i8], ptr %b_buf, i64 0, i64 96
  store <16 x i8> <i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16>, ptr %5, align 16
  %6 = getelementptr inbounds [238 x i8], ptr %b_buf, i64 0, i64 112
  store <16 x i8> <i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16>, ptr %6, align 16
  %7 = getelementptr inbounds [238 x i8], ptr %b_buf, i64 0, i64 128
  store <16 x i8> <i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16>, ptr %7, align 16
  %8 = getelementptr inbounds [238 x i8], ptr %b_buf, i64 0, i64 144
  store <16 x i8> <i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16>, ptr %8, align 16
  %9 = getelementptr inbounds [238 x i8], ptr %b_buf, i64 0, i64 160
  store <16 x i8> <i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16>, ptr %9, align 16
  %10 = getelementptr inbounds [238 x i8], ptr %b_buf, i64 0, i64 176
  store <16 x i8> <i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16>, ptr %10, align 16
  %11 = getelementptr inbounds [238 x i8], ptr %b_buf, i64 0, i64 192
  store <16 x i8> <i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16>, ptr %11, align 16
  %12 = getelementptr inbounds [238 x i8], ptr %b_buf, i64 0, i64 208
  store <8 x i8> <i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8>, ptr %12, align 16
  %13 = getelementptr inbounds [238 x i8], ptr %b_buf, i64 0, i64 216
  store <4 x i8> <i8 9, i8 10, i8 11, i8 12>, ptr %13, align 8
  %14 = getelementptr inbounds [238 x i8], ptr %b_buf, i64 0, i64 220
  %15 = getelementptr inbounds [238 x i8], ptr %b_buf, i64 0, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %14, i8 0, i64 12, i1 false)
  store <4 x i8> <i8 113, i8 7, i8 2, i8 0>, ptr %15, align 8
  %16 = getelementptr inbounds [238 x i8], ptr %b_buf, i64 0, i64 236
  store i8 0, ptr %16, align 4
  %17 = getelementptr inbounds [238 x i8], ptr %b_buf, i64 0, i64 237
  store i8 0, ptr %17, align 1
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %sfbtab0)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %sfbtab0, i8 0, i64 23, i1 false)
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %sfbtab1)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %sfbtab1, i8 0, i64 23, i1 false)
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %sfbtab2)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %sfbtab2, i8 0, i64 23, i1 false)
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %sfbtab3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %sfbtab3, i8 0, i64 23, i1 false)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %gr)
  store ptr %sfbtab0, ptr %gr, align 8
  %_7.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %gr, i64 8
  %_7.sroa.14.0..sroa_idx = getelementptr inbounds i8, ptr %gr, i64 25
  %_7.sroa.15.0..sroa_idx = getelementptr inbounds i8, ptr %gr, i64 28
  %18 = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_7.sroa.4.0..sroa_idx, i8 0, i64 24, i1 false)
  store ptr %sfbtab1, ptr %18, align 8
  %_14.sroa.4.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 1, i32 1
  %_14.sroa.5.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 1, i32 2
  %_14.sroa.6.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 1, i32 3
  %_14.sroa.7.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 1, i32 4
  %_14.sroa.11.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 1, i32 8
  %_14.sroa.12.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 1, i32 9
  %_14.sroa.13.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 1, i32 10
  %_14.sroa.14.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 1, i32 11
  %_14.sroa.15.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 1, i32 12
  %19 = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_14.sroa.4.0..sroa_idx, i8 0, i64 24, i1 false)
  store ptr %sfbtab2, ptr %19, align 8
  %_21.sroa.4.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 2, i32 1
  %_21.sroa.5.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 2, i32 2
  %_21.sroa.6.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 2, i32 3
  %_21.sroa.7.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 2, i32 4
  %_21.sroa.11.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 2, i32 8
  %_21.sroa.12.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 2, i32 9
  %_21.sroa.13.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 2, i32 10
  %_21.sroa.14.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 2, i32 11
  %_21.sroa.15.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 2, i32 12
  %20 = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_21.sroa.4.0..sroa_idx, i8 0, i64 24, i1 false)
  store ptr %sfbtab3, ptr %20, align 8
  %_28.sroa.4.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 3, i32 1
  %_28.sroa.5.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 3, i32 2
  %_28.sroa.6.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 3, i32 3
  %_28.sroa.7.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 3, i32 4
  %_28.sroa.11.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 3, i32 8
  %_28.sroa.12.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 3, i32 9
  %_28.sroa.13.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 3, i32 10
  %_28.sroa.14.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 3, i32 11
  %_28.sroa.15.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 3, i32 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_28.sroa.4.0..sroa_idx, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hdr)
  store <4 x i8> <i8 -1, i8 -5, i8 -112, i8 0>, ptr %hdr, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %bs)
  store ptr %b_buf, ptr %bs, align 8
  %21 = getelementptr inbounds %"src::lib::BsT", ptr %bs, i64 0, i32 1
  store i32 0, ptr %21, align 8
  %22 = getelementptr inbounds %"src::lib::BsT", ptr %bs, i64 0, i32 2
  store i32 236, ptr %22, align 4
  %ret = call noundef i32 @read_side_info(ptr noundef nonnull %bs, ptr noundef nonnull %gr, ptr noundef nonnull %hdr)
  %23 = icmp eq i32 %ret, -1
  %_50 = load i32, ptr %21, align 8
  %24 = icmp eq i32 %_50, 256
  %or.cond = select i1 %23, i1 %24, i1 false
  %_51 = load i32, ptr %22, align 4
  %25 = icmp eq i32 %_51, 236
  %or.cond1 = select i1 %or.cond, i1 %25, i1 false
  br i1 %or.cond1, label %bb7, label %bb21

bb21:                                             ; preds = %bb20, %start
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %bs)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hdr)
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %gr)
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab3)
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab2)
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab1)
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab0)
  call void @llvm.lifetime.end.p0(i64 238, ptr nonnull %b_buf)
  br label %bb22

bb7:                                              ; preds = %start
  %_7.sroa.13.0..sroa_idx = getelementptr inbounds i8, ptr %gr, i64 22
  %_7.sroa.12.0..sroa_idx = getelementptr inbounds i8, ptr %gr, i64 19
  %_7.sroa.11.0..sroa_idx = getelementptr inbounds i8, ptr %gr, i64 18
  %_7.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %gr, i64 14
  %_7.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %gr, i64 12
  %_7.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %gr, i64 10
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %expected_sfbtab)
  %26 = getelementptr inbounds [23 x i8], ptr %expected_sfbtab, i64 0, i64 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %expected_sfbtab, i8 4, i64 6, i1 false)
  store <16 x i8> <i8 6, i8 6, i8 8, i8 8, i8 10, i8 12, i8 16, i8 20, i8 24, i8 28, i8 34, i8 42, i8 50, i8 54, i8 76, i8 -98>, ptr %26, align 1
  %27 = getelementptr inbounds [23 x i8], ptr %expected_sfbtab, i64 0, i64 22
  store i8 0, ptr %27, align 1
  call void @llvm.experimental.noalias.scope.decl(metadata !159)
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %sfbtab_actual.i), !noalias !162
  %_20.i = load ptr, ptr %gr, align 8, !alias.scope !159, !noalias !164, !noundef !2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %sfbtab_actual.i, ptr noundef nonnull align 1 dereferenceable(23) %_20.i, i64 23, i1 false), !noalias !162
  %bcmp.i.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(23) %sfbtab_actual.i, ptr noundef nonnull dereferenceable(23) %expected_sfbtab, i64 23), !alias.scope !165, !noalias !159
  %.not.i = icmp ne i32 %bcmp.i.i.i, 0
  %_24.i = load i16, ptr %_7.sroa.4.0..sroa_idx, align 8, !alias.scope !159, !noalias !164
  %_24.i.fr = freeze i16 %_24.i
  %_23.not.i = icmp ne i16 %_24.i.fr, 100
  %_26.i = load i16, ptr %_7.sroa.5.0..sroa_idx, align 2, !alias.scope !159, !noalias !164
  %_26.i.fr = freeze i16 %_26.i
  %_25.not.i = icmp ne i16 %_26.i.fr, 50
  %_28.i = load i16, ptr %_7.sroa.6.0..sroa_idx, align 4, !alias.scope !159, !noalias !164
  %_28.i.fr = freeze i16 %_28.i
  %_27.not.i = icmp ne i16 %_28.i.fr, 5
  %28 = load <4 x i8>, ptr %_7.sroa.7.0..sroa_idx, align 2, !alias.scope !159, !noalias !164
  %.fr = freeze <4 x i8> %28
  %_38.i = load i8, ptr %_7.sroa.11.0..sroa_idx, align 2, !alias.scope !159, !noalias !164
  %_38.i.fr = freeze i8 %_38.i
  %_37.not.i = icmp ne i8 %_38.i.fr, 0
  %self.val.i = load i24, ptr %_7.sroa.12.0..sroa_idx, align 1, !alias.scope !159, !noalias !164
  %self.val.i.fr = freeze i24 %self.val.i
  %29 = icmp ne i24 %self.val.i.fr, 4
  %self1.val.i = load i24, ptr %_7.sroa.13.0..sroa_idx, align 2, !alias.scope !159, !noalias !164
  %30 = icmp ne i24 %self1.val.i, -64248
  %.fr.scalar = bitcast <4 x i8> %.fr to i32
  %31 = icmp ne i32 %.fr.scalar, 369098872
  %op.rdx192 = or i1 %31, %_37.not.i
  %op.rdx194 = or i1 %_27.not.i, %29
  %32 = or i1 %op.rdx192, %_23.not.i
  %op.rdx196 = or i1 %32, %_25.not.i
  %33 = or i1 %op.rdx196, %op.rdx194
  %34 = select i1 %33, i1 true, i1 %.not.i
  %op.rdx198 = select i1 %34, i1 true, i1 %30
  br i1 %op.rdx198, label %_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit, label %bb22.i

bb22.i:                                           ; preds = %bb7
  %self2.val.i = load i24, ptr %_7.sroa.14.0..sroa_idx, align 1, !alias.scope !159, !noalias !164
  %.not18.i = icmp eq i24 %self2.val.i, 0
  %35 = load <4 x i8>, ptr %_7.sroa.15.0..sroa_idx, align 4, !alias.scope !159, !noalias !164
  %.fr200 = freeze <4 x i8> %35
  %.fr200.scalar = bitcast <4 x i8> %.fr200 to i32
  %36 = icmp eq i32 %.fr200.scalar, 65536
  %op.rdx191 = select i1 %36, i1 %.not18.i, i1 false
  br i1 %op.rdx191, label %bb10, label %_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit

_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit: ; preds = %bb22.i, %bb7
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab_actual.i), !noalias !162
  br label %bb20

bb10:                                             ; preds = %bb22.i
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab_actual.i), !noalias !162
  call void @llvm.experimental.noalias.scope.decl(metadata !172)
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %sfbtab_actual.i2), !noalias !175
  %_20.i3 = load ptr, ptr %18, align 8, !alias.scope !172, !noalias !177, !noundef !2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %sfbtab_actual.i2, ptr noundef nonnull align 1 dereferenceable(23) %_20.i3, i64 23, i1 false), !noalias !175
  %bcmp.i.i.i4 = call i32 @bcmp(ptr noundef nonnull dereferenceable(23) %sfbtab_actual.i2, ptr noundef nonnull dereferenceable(23) %expected_sfbtab, i64 23), !alias.scope !178, !noalias !172
  %.not.i5 = icmp ne i32 %bcmp.i.i.i4, 0
  %_24.i6 = load i16, ptr %_14.sroa.4.0..sroa_idx, align 8, !alias.scope !172, !noalias !177
  %_24.i6.fr = freeze i16 %_24.i6
  %_23.not.i7 = icmp ne i16 %_24.i6.fr, 101
  %_26.i9 = load i16, ptr %_14.sroa.5.0..sroa_idx, align 2, !alias.scope !172, !noalias !177
  %_26.i9.fr = freeze i16 %_26.i9
  %_25.not.i10 = icmp ne i16 %_26.i9.fr, 51
  %_28.i12 = load i16, ptr %_14.sroa.6.0..sroa_idx, align 4, !alias.scope !172, !noalias !177
  %_28.i12.fr = freeze i16 %_28.i12
  %_27.not.i13 = icmp ne i16 %_28.i12.fr, 6
  %37 = load <4 x i8>, ptr %_14.sroa.7.0..sroa_idx, align 2, !alias.scope !172, !noalias !177
  %.fr201 = freeze <4 x i8> %37
  %_38.i27 = load i8, ptr %_14.sroa.11.0..sroa_idx, align 2, !alias.scope !172, !noalias !177
  %_38.i27.fr = freeze i8 %_38.i27
  %_37.not.i28 = icmp ne i8 %_38.i27.fr, 0
  %self.val.i31 = load i24, ptr %_14.sroa.12.0..sroa_idx, align 1, !alias.scope !172, !noalias !177
  %self.val.i31.fr = freeze i24 %self.val.i31
  %38 = icmp ne i24 %self.val.i31.fr, 65540
  %self1.val.i34 = load i24, ptr %_14.sroa.13.0..sroa_idx, align 2, !alias.scope !172, !noalias !177
  %39 = icmp ne i24 %self1.val.i34, -63991
  %.fr201.scalar = bitcast <4 x i8> %.fr201 to i32
  %40 = icmp ne i32 %.fr201.scalar, 369098873
  %op.rdx184 = or i1 %40, %_37.not.i28
  %op.rdx186 = or i1 %_27.not.i13, %38
  %41 = or i1 %op.rdx184, %_23.not.i7
  %op.rdx188 = or i1 %41, %_25.not.i10
  %42 = or i1 %op.rdx188, %op.rdx186
  %43 = select i1 %42, i1 true, i1 %.not.i5
  %op.rdx190 = select i1 %43, i1 true, i1 %39
  br i1 %op.rdx190, label %_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit55, label %bb22.i52

bb22.i52:                                         ; preds = %bb10
  %self2.val.i38 = load i24, ptr %_14.sroa.14.0..sroa_idx, align 1, !alias.scope !172, !noalias !177
  %.not18.i39 = icmp eq i24 %self2.val.i38, 0
  %44 = load <4 x i8>, ptr %_14.sroa.15.0..sroa_idx, align 4, !alias.scope !172, !noalias !177
  %.fr203 = freeze <4 x i8> %44
  %.fr203.scalar = bitcast <4 x i8> %.fr203 to i32
  %45 = icmp eq i32 %.fr203.scalar, 256
  %op.rdx183 = select i1 %45, i1 %.not18.i39, i1 false
  br i1 %op.rdx183, label %bb13, label %_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit55

_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit55: ; preds = %bb22.i52, %bb10
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab_actual.i2), !noalias !175
  br label %bb20

bb20:                                             ; preds = %_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit163, %_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit109, %_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit55, %_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %expected_sfbtab)
  br label %bb21

bb13:                                             ; preds = %bb22.i52
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab_actual.i2), !noalias !175
  call void @llvm.experimental.noalias.scope.decl(metadata !185)
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %sfbtab_actual.i56), !noalias !188
  %_20.i57 = load ptr, ptr %19, align 8, !alias.scope !185, !noalias !190, !noundef !2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %sfbtab_actual.i56, ptr noundef nonnull align 1 dereferenceable(23) %_20.i57, i64 23, i1 false), !noalias !188
  %bcmp.i.i.i58 = call i32 @bcmp(ptr noundef nonnull dereferenceable(23) %sfbtab_actual.i56, ptr noundef nonnull dereferenceable(23) %expected_sfbtab, i64 23), !alias.scope !191, !noalias !185
  %.not.i59 = icmp ne i32 %bcmp.i.i.i58, 0
  %_24.i60 = load i16, ptr %_21.sroa.4.0..sroa_idx, align 8, !alias.scope !185, !noalias !190
  %_24.i60.fr = freeze i16 %_24.i60
  %_23.not.i61 = icmp ne i16 %_24.i60.fr, 102
  %_26.i63 = load i16, ptr %_21.sroa.5.0..sroa_idx, align 2, !alias.scope !185, !noalias !190
  %_26.i63.fr = freeze i16 %_26.i63
  %_25.not.i64 = icmp ne i16 %_26.i63.fr, 52
  %_28.i66 = load i16, ptr %_21.sroa.6.0..sroa_idx, align 4, !alias.scope !185, !noalias !190
  %_28.i66.fr = freeze i16 %_28.i66
  %_27.not.i67 = icmp ne i16 %_28.i66.fr, 7
  %46 = load <4 x i8>, ptr %_21.sroa.7.0..sroa_idx, align 2, !alias.scope !185, !noalias !190
  %.fr204 = freeze <4 x i8> %46
  %_38.i81 = load i8, ptr %_21.sroa.11.0..sroa_idx, align 2, !alias.scope !185, !noalias !190
  %_38.i81.fr = freeze i8 %_38.i81
  %_37.not.i82 = icmp ne i8 %_38.i81.fr, 0
  %self.val.i85 = load i24, ptr %_21.sroa.12.0..sroa_idx, align 1, !alias.scope !185, !noalias !190
  %self.val.i85.fr = freeze i24 %self.val.i85
  %47 = icmp ne i24 %self.val.i85.fr, 131076
  %self1.val.i88 = load i24, ptr %_21.sroa.13.0..sroa_idx, align 2, !alias.scope !185, !noalias !190
  %48 = icmp ne i24 %self1.val.i88, -63734
  %.fr204.scalar = bitcast <4 x i8> %.fr204 to i32
  %49 = icmp ne i32 %.fr204.scalar, 369098874
  %op.rdx176 = or i1 %49, %_37.not.i82
  %op.rdx178 = or i1 %_27.not.i67, %47
  %50 = or i1 %op.rdx176, %_23.not.i61
  %op.rdx180 = or i1 %50, %_25.not.i64
  %51 = or i1 %op.rdx180, %op.rdx178
  %52 = select i1 %51, i1 true, i1 %.not.i59
  %op.rdx182 = select i1 %52, i1 true, i1 %48
  br i1 %op.rdx182, label %_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit109, label %bb22.i106

bb22.i106:                                        ; preds = %bb13
  %self2.val.i92 = load i24, ptr %_21.sroa.14.0..sroa_idx, align 1, !alias.scope !185, !noalias !190
  %.not18.i93 = icmp eq i24 %self2.val.i92, 0
  %53 = load <4 x i8>, ptr %_21.sroa.15.0..sroa_idx, align 4, !alias.scope !185, !noalias !190
  %.fr206 = freeze <4 x i8> %53
  %.fr206.scalar = bitcast <4 x i8> %.fr206 to i32
  %54 = icmp eq i32 %.fr206.scalar, 65536
  %op.rdx175 = select i1 %54, i1 %.not18.i93, i1 false
  br i1 %op.rdx175, label %bb16, label %_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit109

_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit109: ; preds = %bb22.i106, %bb13
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab_actual.i56), !noalias !188
  br label %bb20

bb16:                                             ; preds = %bb22.i106
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab_actual.i56), !noalias !188
  call void @llvm.experimental.noalias.scope.decl(metadata !198)
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %sfbtab_actual.i110), !noalias !201
  %_20.i111 = load ptr, ptr %20, align 8, !alias.scope !198, !noalias !203, !noundef !2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %sfbtab_actual.i110, ptr noundef nonnull align 1 dereferenceable(23) %_20.i111, i64 23, i1 false), !noalias !201
  %bcmp.i.i.i112 = call i32 @bcmp(ptr noundef nonnull dereferenceable(23) %sfbtab_actual.i110, ptr noundef nonnull dereferenceable(23) %expected_sfbtab, i64 23), !alias.scope !204, !noalias !198
  %.not.i113 = icmp ne i32 %bcmp.i.i.i112, 0
  %_24.i114 = load i16, ptr %_28.sroa.4.0..sroa_idx, align 8, !alias.scope !198, !noalias !203
  %_24.i114.fr = freeze i16 %_24.i114
  %_23.not.i115 = icmp ne i16 %_24.i114.fr, 103
  %_26.i117 = load i16, ptr %_28.sroa.5.0..sroa_idx, align 2, !alias.scope !198, !noalias !203
  %_26.i117.fr = freeze i16 %_26.i117
  %_25.not.i118 = icmp ne i16 %_26.i117.fr, 53
  %_28.i120 = load i16, ptr %_28.sroa.6.0..sroa_idx, align 4, !alias.scope !198, !noalias !203
  %_28.i120.fr = freeze i16 %_28.i120
  %_27.not.i121 = icmp ne i16 %_28.i120.fr, 8
  %55 = load <4 x i8>, ptr %_28.sroa.7.0..sroa_idx, align 2, !alias.scope !198, !noalias !203
  %.fr207 = freeze <4 x i8> %55
  %_38.i135 = load i8, ptr %_28.sroa.11.0..sroa_idx, align 2, !alias.scope !198, !noalias !203
  %_38.i135.fr = freeze i8 %_38.i135
  %_37.not.i136 = icmp ne i8 %_38.i135.fr, 0
  %self.val.i139 = load i24, ptr %_28.sroa.12.0..sroa_idx, align 1, !alias.scope !198, !noalias !203
  %self.val.i139.fr = freeze i24 %self.val.i139
  %56 = icmp ne i24 %self.val.i139.fr, 0
  %self1.val.i142 = load i24, ptr %_28.sroa.13.0..sroa_idx, align 2, !alias.scope !198, !noalias !203
  %57 = icmp ne i24 %self1.val.i142, -65536
  %.fr207.scalar = bitcast <4 x i8> %.fr207 to i32
  %58 = icmp ne i32 %.fr207.scalar, 369098875
  %op.rdx168 = or i1 %58, %_37.not.i136
  %op.rdx170 = or i1 %_27.not.i121, %56
  %59 = or i1 %op.rdx168, %_23.not.i115
  %op.rdx172 = or i1 %59, %_25.not.i118
  %60 = or i1 %op.rdx172, %op.rdx170
  %61 = select i1 %60, i1 true, i1 %.not.i113
  %op.rdx174 = select i1 %61, i1 true, i1 %57
  br i1 %op.rdx174, label %_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit163, label %bb22.i160

bb22.i160:                                        ; preds = %bb16
  %self2.val.i146 = load i24, ptr %_28.sroa.14.0..sroa_idx, align 1, !alias.scope !198, !noalias !203
  %.not18.i147 = icmp eq i24 %self2.val.i146, 0
  %62 = load <4 x i8>, ptr %_28.sroa.15.0..sroa_idx, align 4, !alias.scope !198, !noalias !203
  %.fr209 = freeze <4 x i8> %62
  %.fr209.scalar = bitcast <4 x i8> %.fr209 to i32
  %63 = icmp eq i32 %.fr209.scalar, 0
  %op.rdx = select i1 %63, i1 %.not18.i147, i1 false
  br i1 %op.rdx, label %bb19, label %_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit163

_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit163: ; preds = %bb22.i160, %bb16
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab_actual.i110), !noalias !201
  br label %bb20

bb19:                                             ; preds = %bb22.i160
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab_actual.i110), !noalias !201
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %expected_sfbtab)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %bs)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hdr)
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %gr)
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab3)
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab2)
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab1)
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab0)
  call void @llvm.lifetime.end.p0(i64 238, ptr nonnull %b_buf)
  br label %bb22

bb22:                                             ; preds = %bb19, %bb21
  %.2 = phi i1 [ false, %bb21 ], [ true, %bb19 ]
  ret i1 %.2
}

; Function Attrs: nofree nounwind nonlazybind uwtable
define noundef zeroext i1 @run_test_5() unnamed_addr #1 {
start:
  %sfbtab_actual.i110 = alloca [23 x i8], align 1
  %sfbtab_actual.i56 = alloca [23 x i8], align 1
  %sfbtab_actual.i2 = alloca [23 x i8], align 1
  %sfbtab_actual.i = alloca [23 x i8], align 1
  %expected_sfbtab = alloca [23 x i8], align 1
  %bs = alloca %"src::lib::BsT", align 8
  %hdr = alloca [4 x i8], align 4
  %gr = alloca [4 x %"src::lib::L3GrInfoT"], align 8
  %sfbtab3 = alloca [23 x i8], align 1
  %sfbtab2 = alloca [23 x i8], align 1
  %sfbtab1 = alloca [23 x i8], align 1
  %sfbtab0 = alloca [23 x i8], align 1
  %b_buf = alloca [238 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 238, ptr nonnull %b_buf)
  store <16 x i8> <i8 4, i8 0, i8 0, i8 100, i8 25, i8 60, i8 40, i8 -128, i8 4, i8 82, i8 12, i8 -93, i8 55, i8 -106, i8 16, i8 1>, ptr %b_buf, align 16
  %0 = getelementptr inbounds [238 x i8], ptr %b_buf, i64 0, i64 16
  store <16 x i8> <i8 -100, i8 -127, i8 -104, i8 104, i8 -12, i8 -30, i8 0, i8 85, i8 -56, i8 51, i8 -115, i8 94, i8 -32, i8 64, i8 14, i8 -62>, ptr %0, align 16
  %1 = getelementptr inbounds [238 x i8], ptr %b_buf, i64 0, i64 32
  store <16 x i8> <i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 -1, i8 0, i8 1, i8 2, i8 3>, ptr %1, align 16
  %2 = getelementptr inbounds [238 x i8], ptr %b_buf, i64 0, i64 48
  store <16 x i8> <i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8>, ptr %2, align 16
  %3 = getelementptr inbounds [238 x i8], ptr %b_buf, i64 0, i64 64
  store <16 x i8> <i8 9, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 -1, i8 0, i8 1, i8 2>, ptr %3, align 16
  %4 = getelementptr inbounds [238 x i8], ptr %b_buf, i64 0, i64 80
  store <16 x i8> <i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7>, ptr %4, align 16
  %5 = getelementptr inbounds [238 x i8], ptr %b_buf, i64 0, i64 96
  store <16 x i8> <i8 8, i8 9, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 -1, i8 0, i8 1>, ptr %5, align 16
  %6 = getelementptr inbounds [238 x i8], ptr %b_buf, i64 0, i64 112
  store <16 x i8> <i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6>, ptr %6, align 16
  %7 = getelementptr inbounds [238 x i8], ptr %b_buf, i64 0, i64 128
  store <16 x i8> <i8 7, i8 8, i8 9, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 -1, i8 0>, ptr %7, align 16
  %8 = getelementptr inbounds [238 x i8], ptr %b_buf, i64 0, i64 144
  store <16 x i8> <i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5>, ptr %8, align 16
  %9 = getelementptr inbounds [238 x i8], ptr %b_buf, i64 0, i64 160
  store <16 x i8> <i8 6, i8 7, i8 8, i8 9, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 -1>, ptr %9, align 16
  %10 = getelementptr inbounds [238 x i8], ptr %b_buf, i64 0, i64 176
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4>, ptr %10, align 16
  %11 = getelementptr inbounds [238 x i8], ptr %b_buf, i64 0, i64 192
  store <16 x i8> <i8 5, i8 6, i8 7, i8 8, i8 9, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9>, ptr %11, align 16
  %12 = getelementptr inbounds [238 x i8], ptr %b_buf, i64 0, i64 208
  store <8 x i8> <i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6>, ptr %12, align 16
  %13 = getelementptr inbounds [238 x i8], ptr %b_buf, i64 0, i64 216
  store <4 x i8> <i8 7, i8 8, i8 9, i8 -1>, ptr %13, align 8
  %14 = getelementptr inbounds [238 x i8], ptr %b_buf, i64 0, i64 220
  %15 = getelementptr inbounds [238 x i8], ptr %b_buf, i64 0, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %14, i8 0, i64 12, i1 false)
  store <4 x i8> <i8 113, i8 7, i8 2, i8 0>, ptr %15, align 8
  %16 = getelementptr inbounds [238 x i8], ptr %b_buf, i64 0, i64 236
  store i8 0, ptr %16, align 4
  %17 = getelementptr inbounds [238 x i8], ptr %b_buf, i64 0, i64 237
  store i8 0, ptr %17, align 1
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %sfbtab0)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %sfbtab0, i8 0, i64 23, i1 false)
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %sfbtab1)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %sfbtab1, i8 0, i64 23, i1 false)
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %sfbtab2)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %sfbtab2, i8 0, i64 23, i1 false)
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %sfbtab3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %sfbtab3, i8 0, i64 23, i1 false)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %gr)
  store ptr %sfbtab0, ptr %gr, align 8
  %_7.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %gr, i64 8
  %_7.sroa.14.0..sroa_idx = getelementptr inbounds i8, ptr %gr, i64 25
  %_7.sroa.15.0..sroa_idx = getelementptr inbounds i8, ptr %gr, i64 28
  %18 = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_7.sroa.4.0..sroa_idx, i8 0, i64 24, i1 false)
  store ptr %sfbtab1, ptr %18, align 8
  %_14.sroa.4.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 1, i32 1
  %_14.sroa.5.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 1, i32 2
  %_14.sroa.6.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 1, i32 3
  %_14.sroa.7.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 1, i32 4
  %_14.sroa.11.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 1, i32 8
  %_14.sroa.12.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 1, i32 9
  %_14.sroa.13.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 1, i32 10
  %_14.sroa.14.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 1, i32 11
  %_14.sroa.15.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 1, i32 12
  %19 = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_14.sroa.4.0..sroa_idx, i8 0, i64 24, i1 false)
  store ptr %sfbtab2, ptr %19, align 8
  %_21.sroa.4.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 2, i32 1
  %_21.sroa.5.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 2, i32 2
  %_21.sroa.6.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 2, i32 3
  %_21.sroa.7.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 2, i32 4
  %_21.sroa.11.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 2, i32 8
  %_21.sroa.12.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 2, i32 9
  %_21.sroa.13.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 2, i32 10
  %_21.sroa.14.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 2, i32 11
  %_21.sroa.15.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 2, i32 12
  %20 = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_21.sroa.4.0..sroa_idx, i8 0, i64 24, i1 false)
  store ptr %sfbtab3, ptr %20, align 8
  %_28.sroa.4.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 3, i32 1
  %_28.sroa.5.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 3, i32 2
  %_28.sroa.6.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 3, i32 3
  %_28.sroa.7.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 3, i32 4
  %_28.sroa.11.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 3, i32 8
  %_28.sroa.12.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 3, i32 9
  %_28.sroa.13.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 3, i32 10
  %_28.sroa.14.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 3, i32 11
  %_28.sroa.15.0..sroa_idx = getelementptr inbounds [4 x %"src::lib::L3GrInfoT"], ptr %gr, i64 0, i64 3, i32 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_28.sroa.4.0..sroa_idx, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hdr)
  store <4 x i8> <i8 -1, i8 -5, i8 -112, i8 0>, ptr %hdr, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %bs)
  store ptr %b_buf, ptr %bs, align 8
  %21 = getelementptr inbounds %"src::lib::BsT", ptr %bs, i64 0, i32 1
  store i32 0, ptr %21, align 8
  %22 = getelementptr inbounds %"src::lib::BsT", ptr %bs, i64 0, i32 2
  store i32 236, ptr %22, align 4
  %ret = call noundef i32 @read_side_info(ptr noundef nonnull %bs, ptr noundef nonnull %gr, ptr noundef nonnull %hdr)
  %23 = icmp eq i32 %ret, -1
  %_50 = load i32, ptr %21, align 8
  %24 = icmp eq i32 %_50, 256
  %or.cond = select i1 %23, i1 %24, i1 false
  %_51 = load i32, ptr %22, align 4
  %25 = icmp eq i32 %_51, 236
  %or.cond1 = select i1 %or.cond, i1 %25, i1 false
  br i1 %or.cond1, label %bb7, label %bb21

bb21:                                             ; preds = %bb20, %start
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %bs)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hdr)
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %gr)
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab3)
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab2)
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab1)
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab0)
  call void @llvm.lifetime.end.p0(i64 238, ptr nonnull %b_buf)
  br label %bb22

bb7:                                              ; preds = %start
  %_7.sroa.13.0..sroa_idx = getelementptr inbounds i8, ptr %gr, i64 22
  %_7.sroa.12.0..sroa_idx = getelementptr inbounds i8, ptr %gr, i64 19
  %_7.sroa.11.0..sroa_idx = getelementptr inbounds i8, ptr %gr, i64 18
  %_7.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %gr, i64 14
  %_7.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %gr, i64 12
  %_7.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %gr, i64 10
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %expected_sfbtab)
  %26 = getelementptr inbounds [23 x i8], ptr %expected_sfbtab, i64 0, i64 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %expected_sfbtab, i8 4, i64 6, i1 false)
  store <16 x i8> <i8 6, i8 6, i8 8, i8 8, i8 10, i8 12, i8 16, i8 20, i8 24, i8 28, i8 34, i8 42, i8 50, i8 54, i8 76, i8 -98>, ptr %26, align 1
  %27 = getelementptr inbounds [23 x i8], ptr %expected_sfbtab, i64 0, i64 22
  store i8 0, ptr %27, align 1
  call void @llvm.experimental.noalias.scope.decl(metadata !211)
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %sfbtab_actual.i), !noalias !214
  %_20.i = load ptr, ptr %gr, align 8, !alias.scope !211, !noalias !216, !noundef !2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %sfbtab_actual.i, ptr noundef nonnull align 1 dereferenceable(23) %_20.i, i64 23, i1 false), !noalias !214
  %bcmp.i.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(23) %sfbtab_actual.i, ptr noundef nonnull dereferenceable(23) %expected_sfbtab, i64 23), !alias.scope !217, !noalias !211
  %.not.i = icmp ne i32 %bcmp.i.i.i, 0
  %_24.i = load i16, ptr %_7.sroa.4.0..sroa_idx, align 8, !alias.scope !211, !noalias !216
  %_24.i.fr = freeze i16 %_24.i
  %_23.not.i = icmp ne i16 %_24.i.fr, 100
  %_26.i = load i16, ptr %_7.sroa.5.0..sroa_idx, align 2, !alias.scope !211, !noalias !216
  %_26.i.fr = freeze i16 %_26.i
  %_25.not.i = icmp ne i16 %_26.i.fr, 50
  %_28.i = load i16, ptr %_7.sroa.6.0..sroa_idx, align 4, !alias.scope !211, !noalias !216
  %_28.i.fr = freeze i16 %_28.i
  %_27.not.i = icmp ne i16 %_28.i.fr, 5
  %28 = load <4 x i8>, ptr %_7.sroa.7.0..sroa_idx, align 2, !alias.scope !211, !noalias !216
  %.fr = freeze <4 x i8> %28
  %_38.i = load i8, ptr %_7.sroa.11.0..sroa_idx, align 2, !alias.scope !211, !noalias !216
  %_38.i.fr = freeze i8 %_38.i
  %_37.not.i = icmp ne i8 %_38.i.fr, 0
  %self.val.i = load i24, ptr %_7.sroa.12.0..sroa_idx, align 1, !alias.scope !211, !noalias !216
  %self.val.i.fr = freeze i24 %self.val.i
  %29 = icmp ne i24 %self.val.i.fr, 4
  %self1.val.i = load i24, ptr %_7.sroa.13.0..sroa_idx, align 2, !alias.scope !211, !noalias !216
  %30 = icmp ne i24 %self1.val.i, -64248
  %.fr.scalar = bitcast <4 x i8> %.fr to i32
  %31 = icmp ne i32 %.fr.scalar, 369098872
  %op.rdx192 = or i1 %31, %_37.not.i
  %op.rdx194 = or i1 %_27.not.i, %29
  %32 = or i1 %op.rdx192, %_23.not.i
  %op.rdx196 = or i1 %32, %_25.not.i
  %33 = or i1 %op.rdx196, %op.rdx194
  %34 = select i1 %33, i1 true, i1 %.not.i
  %op.rdx198 = select i1 %34, i1 true, i1 %30
  br i1 %op.rdx198, label %_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit, label %bb22.i

bb22.i:                                           ; preds = %bb7
  %self2.val.i = load i24, ptr %_7.sroa.14.0..sroa_idx, align 1, !alias.scope !211, !noalias !216
  %.not18.i = icmp eq i24 %self2.val.i, 0
  %35 = load <4 x i8>, ptr %_7.sroa.15.0..sroa_idx, align 4, !alias.scope !211, !noalias !216
  %.fr200 = freeze <4 x i8> %35
  %.fr200.scalar = bitcast <4 x i8> %.fr200 to i32
  %36 = icmp eq i32 %.fr200.scalar, 65536
  %op.rdx191 = select i1 %36, i1 %.not18.i, i1 false
  br i1 %op.rdx191, label %bb10, label %_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit

_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit: ; preds = %bb22.i, %bb7
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab_actual.i), !noalias !214
  br label %bb20

bb10:                                             ; preds = %bb22.i
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab_actual.i), !noalias !214
  call void @llvm.experimental.noalias.scope.decl(metadata !224)
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %sfbtab_actual.i2), !noalias !227
  %_20.i3 = load ptr, ptr %18, align 8, !alias.scope !224, !noalias !229, !noundef !2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %sfbtab_actual.i2, ptr noundef nonnull align 1 dereferenceable(23) %_20.i3, i64 23, i1 false), !noalias !227
  %bcmp.i.i.i4 = call i32 @bcmp(ptr noundef nonnull dereferenceable(23) %sfbtab_actual.i2, ptr noundef nonnull dereferenceable(23) %expected_sfbtab, i64 23), !alias.scope !230, !noalias !224
  %.not.i5 = icmp ne i32 %bcmp.i.i.i4, 0
  %_24.i6 = load i16, ptr %_14.sroa.4.0..sroa_idx, align 8, !alias.scope !224, !noalias !229
  %_24.i6.fr = freeze i16 %_24.i6
  %_23.not.i7 = icmp ne i16 %_24.i6.fr, 101
  %_26.i9 = load i16, ptr %_14.sroa.5.0..sroa_idx, align 2, !alias.scope !224, !noalias !229
  %_26.i9.fr = freeze i16 %_26.i9
  %_25.not.i10 = icmp ne i16 %_26.i9.fr, 51
  %_28.i12 = load i16, ptr %_14.sroa.6.0..sroa_idx, align 4, !alias.scope !224, !noalias !229
  %_28.i12.fr = freeze i16 %_28.i12
  %_27.not.i13 = icmp ne i16 %_28.i12.fr, 6
  %37 = load <4 x i8>, ptr %_14.sroa.7.0..sroa_idx, align 2, !alias.scope !224, !noalias !229
  %.fr201 = freeze <4 x i8> %37
  %_38.i27 = load i8, ptr %_14.sroa.11.0..sroa_idx, align 2, !alias.scope !224, !noalias !229
  %_38.i27.fr = freeze i8 %_38.i27
  %_37.not.i28 = icmp ne i8 %_38.i27.fr, 0
  %self.val.i31 = load i24, ptr %_14.sroa.12.0..sroa_idx, align 1, !alias.scope !224, !noalias !229
  %self.val.i31.fr = freeze i24 %self.val.i31
  %38 = icmp ne i24 %self.val.i31.fr, 65540
  %self1.val.i34 = load i24, ptr %_14.sroa.13.0..sroa_idx, align 2, !alias.scope !224, !noalias !229
  %39 = icmp ne i24 %self1.val.i34, -63991
  %.fr201.scalar = bitcast <4 x i8> %.fr201 to i32
  %40 = icmp ne i32 %.fr201.scalar, 369098873
  %op.rdx184 = or i1 %40, %_37.not.i28
  %op.rdx186 = or i1 %_27.not.i13, %38
  %41 = or i1 %op.rdx184, %_23.not.i7
  %op.rdx188 = or i1 %41, %_25.not.i10
  %42 = or i1 %op.rdx188, %op.rdx186
  %43 = select i1 %42, i1 true, i1 %.not.i5
  %op.rdx190 = select i1 %43, i1 true, i1 %39
  br i1 %op.rdx190, label %_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit55, label %bb22.i52

bb22.i52:                                         ; preds = %bb10
  %self2.val.i38 = load i24, ptr %_14.sroa.14.0..sroa_idx, align 1, !alias.scope !224, !noalias !229
  %.not18.i39 = icmp eq i24 %self2.val.i38, 0
  %44 = load <4 x i8>, ptr %_14.sroa.15.0..sroa_idx, align 4, !alias.scope !224, !noalias !229
  %.fr203 = freeze <4 x i8> %44
  %.fr203.scalar = bitcast <4 x i8> %.fr203 to i32
  %45 = icmp eq i32 %.fr203.scalar, 256
  %op.rdx183 = select i1 %45, i1 %.not18.i39, i1 false
  br i1 %op.rdx183, label %bb13, label %_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit55

_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit55: ; preds = %bb22.i52, %bb10
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab_actual.i2), !noalias !227
  br label %bb20

bb20:                                             ; preds = %_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit163, %_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit109, %_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit55, %_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %expected_sfbtab)
  br label %bb21

bb13:                                             ; preds = %bb22.i52
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab_actual.i2), !noalias !227
  call void @llvm.experimental.noalias.scope.decl(metadata !237)
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %sfbtab_actual.i56), !noalias !240
  %_20.i57 = load ptr, ptr %19, align 8, !alias.scope !237, !noalias !242, !noundef !2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %sfbtab_actual.i56, ptr noundef nonnull align 1 dereferenceable(23) %_20.i57, i64 23, i1 false), !noalias !240
  %bcmp.i.i.i58 = call i32 @bcmp(ptr noundef nonnull dereferenceable(23) %sfbtab_actual.i56, ptr noundef nonnull dereferenceable(23) %expected_sfbtab, i64 23), !alias.scope !243, !noalias !237
  %.not.i59 = icmp ne i32 %bcmp.i.i.i58, 0
  %_24.i60 = load i16, ptr %_21.sroa.4.0..sroa_idx, align 8, !alias.scope !237, !noalias !242
  %_24.i60.fr = freeze i16 %_24.i60
  %_23.not.i61 = icmp ne i16 %_24.i60.fr, 102
  %_26.i63 = load i16, ptr %_21.sroa.5.0..sroa_idx, align 2, !alias.scope !237, !noalias !242
  %_26.i63.fr = freeze i16 %_26.i63
  %_25.not.i64 = icmp ne i16 %_26.i63.fr, 52
  %_28.i66 = load i16, ptr %_21.sroa.6.0..sroa_idx, align 4, !alias.scope !237, !noalias !242
  %_28.i66.fr = freeze i16 %_28.i66
  %_27.not.i67 = icmp ne i16 %_28.i66.fr, 7
  %46 = load <4 x i8>, ptr %_21.sroa.7.0..sroa_idx, align 2, !alias.scope !237, !noalias !242
  %.fr204 = freeze <4 x i8> %46
  %_38.i81 = load i8, ptr %_21.sroa.11.0..sroa_idx, align 2, !alias.scope !237, !noalias !242
  %_38.i81.fr = freeze i8 %_38.i81
  %_37.not.i82 = icmp ne i8 %_38.i81.fr, 0
  %self.val.i85 = load i24, ptr %_21.sroa.12.0..sroa_idx, align 1, !alias.scope !237, !noalias !242
  %self.val.i85.fr = freeze i24 %self.val.i85
  %47 = icmp ne i24 %self.val.i85.fr, 131076
  %self1.val.i88 = load i24, ptr %_21.sroa.13.0..sroa_idx, align 2, !alias.scope !237, !noalias !242
  %48 = icmp ne i24 %self1.val.i88, -63734
  %.fr204.scalar = bitcast <4 x i8> %.fr204 to i32
  %49 = icmp ne i32 %.fr204.scalar, 369098874
  %op.rdx176 = or i1 %49, %_37.not.i82
  %op.rdx178 = or i1 %_27.not.i67, %47
  %50 = or i1 %op.rdx176, %_23.not.i61
  %op.rdx180 = or i1 %50, %_25.not.i64
  %51 = or i1 %op.rdx180, %op.rdx178
  %52 = select i1 %51, i1 true, i1 %.not.i59
  %op.rdx182 = select i1 %52, i1 true, i1 %48
  br i1 %op.rdx182, label %_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit109, label %bb22.i106

bb22.i106:                                        ; preds = %bb13
  %self2.val.i92 = load i24, ptr %_21.sroa.14.0..sroa_idx, align 1, !alias.scope !237, !noalias !242
  %.not18.i93 = icmp eq i24 %self2.val.i92, 0
  %53 = load <4 x i8>, ptr %_21.sroa.15.0..sroa_idx, align 4, !alias.scope !237, !noalias !242
  %.fr206 = freeze <4 x i8> %53
  %.fr206.scalar = bitcast <4 x i8> %.fr206 to i32
  %54 = icmp eq i32 %.fr206.scalar, 65536
  %op.rdx175 = select i1 %54, i1 %.not18.i93, i1 false
  br i1 %op.rdx175, label %bb16, label %_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit109

_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit109: ; preds = %bb22.i106, %bb13
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab_actual.i56), !noalias !240
  br label %bb20

bb16:                                             ; preds = %bb22.i106
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab_actual.i56), !noalias !240
  call void @llvm.experimental.noalias.scope.decl(metadata !250)
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %sfbtab_actual.i110), !noalias !253
  %_20.i111 = load ptr, ptr %20, align 8, !alias.scope !250, !noalias !255, !noundef !2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %sfbtab_actual.i110, ptr noundef nonnull align 1 dereferenceable(23) %_20.i111, i64 23, i1 false), !noalias !253
  %bcmp.i.i.i112 = call i32 @bcmp(ptr noundef nonnull dereferenceable(23) %sfbtab_actual.i110, ptr noundef nonnull dereferenceable(23) %expected_sfbtab, i64 23), !alias.scope !256, !noalias !250
  %.not.i113 = icmp ne i32 %bcmp.i.i.i112, 0
  %_24.i114 = load i16, ptr %_28.sroa.4.0..sroa_idx, align 8, !alias.scope !250, !noalias !255
  %_24.i114.fr = freeze i16 %_24.i114
  %_23.not.i115 = icmp ne i16 %_24.i114.fr, 103
  %_26.i117 = load i16, ptr %_28.sroa.5.0..sroa_idx, align 2, !alias.scope !250, !noalias !255
  %_26.i117.fr = freeze i16 %_26.i117
  %_25.not.i118 = icmp ne i16 %_26.i117.fr, 53
  %_28.i120 = load i16, ptr %_28.sroa.6.0..sroa_idx, align 4, !alias.scope !250, !noalias !255
  %_28.i120.fr = freeze i16 %_28.i120
  %_27.not.i121 = icmp ne i16 %_28.i120.fr, 8
  %55 = load <4 x i8>, ptr %_28.sroa.7.0..sroa_idx, align 2, !alias.scope !250, !noalias !255
  %.fr207 = freeze <4 x i8> %55
  %_38.i135 = load i8, ptr %_28.sroa.11.0..sroa_idx, align 2, !alias.scope !250, !noalias !255
  %_38.i135.fr = freeze i8 %_38.i135
  %_37.not.i136 = icmp ne i8 %_38.i135.fr, 0
  %self.val.i139 = load i24, ptr %_28.sroa.12.0..sroa_idx, align 1, !alias.scope !250, !noalias !255
  %self.val.i139.fr = freeze i24 %self.val.i139
  %56 = icmp ne i24 %self.val.i139.fr, 0
  %self1.val.i142 = load i24, ptr %_28.sroa.13.0..sroa_idx, align 2, !alias.scope !250, !noalias !255
  %57 = icmp ne i24 %self1.val.i142, -65536
  %.fr207.scalar = bitcast <4 x i8> %.fr207 to i32
  %58 = icmp ne i32 %.fr207.scalar, 369098875
  %op.rdx168 = or i1 %58, %_37.not.i136
  %op.rdx170 = or i1 %_27.not.i121, %56
  %59 = or i1 %op.rdx168, %_23.not.i115
  %op.rdx172 = or i1 %59, %_25.not.i118
  %60 = or i1 %op.rdx172, %op.rdx170
  %61 = select i1 %60, i1 true, i1 %.not.i113
  %op.rdx174 = select i1 %61, i1 true, i1 %57
  br i1 %op.rdx174, label %_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit163, label %bb22.i160

bb22.i160:                                        ; preds = %bb16
  %self2.val.i146 = load i24, ptr %_28.sroa.14.0..sroa_idx, align 1, !alias.scope !250, !noalias !255
  %.not18.i147 = icmp eq i24 %self2.val.i146, 0
  %62 = load <4 x i8>, ptr %_28.sroa.15.0..sroa_idx, align 4, !alias.scope !250, !noalias !255
  %.fr209 = freeze <4 x i8> %62
  %.fr209.scalar = bitcast <4 x i8> %.fr209 to i32
  %63 = icmp eq i32 %.fr209.scalar, 0
  %op.rdx = select i1 %63, i1 %.not18.i147, i1 false
  br i1 %op.rdx, label %bb19, label %_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit163

_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E.exit163: ; preds = %bb22.i160, %bb16
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab_actual.i110), !noalias !253
  br label %bb20

bb19:                                             ; preds = %bb22.i160
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab_actual.i110), !noalias !253
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %expected_sfbtab)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %bs)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hdr)
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %gr)
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab3)
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab2)
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab1)
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %sfbtab0)
  call void @llvm.lifetime.end.p0(i64 238, ptr nonnull %b_buf)
  br label %bb22

bb22:                                             ; preds = %bb19, %bb21
  %.2 = phi i1 [ false, %bb21 ], [ true, %bb19 ]
  ret i1 %.2
}

attributes #0 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nofree nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree nounwind nonlazybind willreturn memory(argmem: read) }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{}
!3 = !{!4}
!4 = distinct !{!4, !5, !"_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E: %gr"}
!5 = distinct !{!5, !"_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E"}
!6 = !{!4, !7}
!7 = distinct !{!7, !5, !"_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E: %expected_sfbtab"}
!8 = !{!7}
!9 = !{!10, !12, !13, !15}
!10 = distinct !{!10, !11, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h0f95890ed3a8cea2E: %a"}
!11 = distinct !{!11, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h0f95890ed3a8cea2E"}
!12 = distinct !{!12, !11, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h0f95890ed3a8cea2E: %b"}
!13 = distinct !{!13, !14, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_ne17h1977992d4eb5bf78E: %a"}
!14 = distinct !{!14, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_ne17h1977992d4eb5bf78E"}
!15 = distinct !{!15, !14, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_ne17h1977992d4eb5bf78E: %b"}
!16 = !{!17}
!17 = distinct !{!17, !18, !"_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E: %gr"}
!18 = distinct !{!18, !"_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E"}
!19 = !{!17, !20}
!20 = distinct !{!20, !18, !"_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E: %expected_sfbtab"}
!21 = !{!20}
!22 = !{!23, !25, !26, !28}
!23 = distinct !{!23, !24, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h0f95890ed3a8cea2E: %a"}
!24 = distinct !{!24, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h0f95890ed3a8cea2E"}
!25 = distinct !{!25, !24, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h0f95890ed3a8cea2E: %b"}
!26 = distinct !{!26, !27, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_ne17h1977992d4eb5bf78E: %a"}
!27 = distinct !{!27, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_ne17h1977992d4eb5bf78E"}
!28 = distinct !{!28, !27, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_ne17h1977992d4eb5bf78E: %b"}
!29 = !{!30}
!30 = distinct !{!30, !31, !"_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E: %gr"}
!31 = distinct !{!31, !"_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E"}
!32 = !{!30, !33}
!33 = distinct !{!33, !31, !"_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E: %expected_sfbtab"}
!34 = !{!33}
!35 = !{!36, !38, !39, !41}
!36 = distinct !{!36, !37, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h0f95890ed3a8cea2E: %a"}
!37 = distinct !{!37, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h0f95890ed3a8cea2E"}
!38 = distinct !{!38, !37, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h0f95890ed3a8cea2E: %b"}
!39 = distinct !{!39, !40, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_ne17h1977992d4eb5bf78E: %a"}
!40 = distinct !{!40, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_ne17h1977992d4eb5bf78E"}
!41 = distinct !{!41, !40, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_ne17h1977992d4eb5bf78E: %b"}
!42 = !{!43}
!43 = distinct !{!43, !44, !"_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E: %gr"}
!44 = distinct !{!44, !"_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E"}
!45 = !{!43, !46}
!46 = distinct !{!46, !44, !"_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E: %expected_sfbtab"}
!47 = !{!46}
!48 = !{!49, !51, !52, !54}
!49 = distinct !{!49, !50, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h0f95890ed3a8cea2E: %a"}
!50 = distinct !{!50, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h0f95890ed3a8cea2E"}
!51 = distinct !{!51, !50, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h0f95890ed3a8cea2E: %b"}
!52 = distinct !{!52, !53, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_ne17h1977992d4eb5bf78E: %a"}
!53 = distinct !{!53, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_ne17h1977992d4eb5bf78E"}
!54 = distinct !{!54, !53, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_ne17h1977992d4eb5bf78E: %b"}
!55 = !{!56}
!56 = distinct !{!56, !57, !"_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E: %gr"}
!57 = distinct !{!57, !"_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E"}
!58 = !{!56, !59}
!59 = distinct !{!59, !57, !"_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E: %expected_sfbtab"}
!60 = !{!59}
!61 = !{!62, !64, !65, !67}
!62 = distinct !{!62, !63, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h0f95890ed3a8cea2E: %a"}
!63 = distinct !{!63, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h0f95890ed3a8cea2E"}
!64 = distinct !{!64, !63, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h0f95890ed3a8cea2E: %b"}
!65 = distinct !{!65, !66, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_ne17h1977992d4eb5bf78E: %a"}
!66 = distinct !{!66, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_ne17h1977992d4eb5bf78E"}
!67 = distinct !{!67, !66, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_ne17h1977992d4eb5bf78E: %b"}
!68 = !{!69}
!69 = distinct !{!69, !70, !"_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E: %gr"}
!70 = distinct !{!70, !"_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E"}
!71 = !{!69, !72}
!72 = distinct !{!72, !70, !"_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E: %expected_sfbtab"}
!73 = !{!72}
!74 = !{!75, !77, !78, !80}
!75 = distinct !{!75, !76, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h0f95890ed3a8cea2E: %a"}
!76 = distinct !{!76, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h0f95890ed3a8cea2E"}
!77 = distinct !{!77, !76, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h0f95890ed3a8cea2E: %b"}
!78 = distinct !{!78, !79, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_ne17h1977992d4eb5bf78E: %a"}
!79 = distinct !{!79, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_ne17h1977992d4eb5bf78E"}
!80 = distinct !{!80, !79, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_ne17h1977992d4eb5bf78E: %b"}
!81 = !{!82}
!82 = distinct !{!82, !83, !"_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E: %gr"}
!83 = distinct !{!83, !"_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E"}
!84 = !{!82, !85}
!85 = distinct !{!85, !83, !"_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E: %expected_sfbtab"}
!86 = !{!85}
!87 = !{!88, !90, !91, !93}
!88 = distinct !{!88, !89, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h0f95890ed3a8cea2E: %a"}
!89 = distinct !{!89, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h0f95890ed3a8cea2E"}
!90 = distinct !{!90, !89, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h0f95890ed3a8cea2E: %b"}
!91 = distinct !{!91, !92, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_ne17h1977992d4eb5bf78E: %a"}
!92 = distinct !{!92, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_ne17h1977992d4eb5bf78E"}
!93 = distinct !{!93, !92, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_ne17h1977992d4eb5bf78E: %b"}
!94 = !{!95}
!95 = distinct !{!95, !96, !"_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E: %gr"}
!96 = distinct !{!96, !"_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E"}
!97 = !{!95, !98}
!98 = distinct !{!98, !96, !"_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E: %expected_sfbtab"}
!99 = !{!98}
!100 = !{!101, !103, !104, !106}
!101 = distinct !{!101, !102, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h0f95890ed3a8cea2E: %a"}
!102 = distinct !{!102, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h0f95890ed3a8cea2E"}
!103 = distinct !{!103, !102, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h0f95890ed3a8cea2E: %b"}
!104 = distinct !{!104, !105, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_ne17h1977992d4eb5bf78E: %a"}
!105 = distinct !{!105, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_ne17h1977992d4eb5bf78E"}
!106 = distinct !{!106, !105, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_ne17h1977992d4eb5bf78E: %b"}
!107 = !{!108}
!108 = distinct !{!108, !109, !"_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E: %gr"}
!109 = distinct !{!109, !"_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E"}
!110 = !{!108, !111}
!111 = distinct !{!111, !109, !"_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E: %expected_sfbtab"}
!112 = !{!111}
!113 = !{!114, !116, !117, !119}
!114 = distinct !{!114, !115, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h0f95890ed3a8cea2E: %a"}
!115 = distinct !{!115, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h0f95890ed3a8cea2E"}
!116 = distinct !{!116, !115, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h0f95890ed3a8cea2E: %b"}
!117 = distinct !{!117, !118, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_ne17h1977992d4eb5bf78E: %a"}
!118 = distinct !{!118, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_ne17h1977992d4eb5bf78E"}
!119 = distinct !{!119, !118, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_ne17h1977992d4eb5bf78E: %b"}
!120 = !{!121}
!121 = distinct !{!121, !122, !"_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E: %gr"}
!122 = distinct !{!122, !"_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E"}
!123 = !{!121, !124}
!124 = distinct !{!124, !122, !"_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E: %expected_sfbtab"}
!125 = !{!124}
!126 = !{!127, !129, !130, !132}
!127 = distinct !{!127, !128, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h0f95890ed3a8cea2E: %a"}
!128 = distinct !{!128, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h0f95890ed3a8cea2E"}
!129 = distinct !{!129, !128, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h0f95890ed3a8cea2E: %b"}
!130 = distinct !{!130, !131, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_ne17h1977992d4eb5bf78E: %a"}
!131 = distinct !{!131, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_ne17h1977992d4eb5bf78E"}
!132 = distinct !{!132, !131, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_ne17h1977992d4eb5bf78E: %b"}
!133 = !{!134}
!134 = distinct !{!134, !135, !"_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E: %gr"}
!135 = distinct !{!135, !"_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E"}
!136 = !{!134, !137}
!137 = distinct !{!137, !135, !"_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E: %expected_sfbtab"}
!138 = !{!137}
!139 = !{!140, !142, !143, !145}
!140 = distinct !{!140, !141, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h0f95890ed3a8cea2E: %a"}
!141 = distinct !{!141, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h0f95890ed3a8cea2E"}
!142 = distinct !{!142, !141, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h0f95890ed3a8cea2E: %b"}
!143 = distinct !{!143, !144, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_ne17h1977992d4eb5bf78E: %a"}
!144 = distinct !{!144, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_ne17h1977992d4eb5bf78E"}
!145 = distinct !{!145, !144, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_ne17h1977992d4eb5bf78E: %b"}
!146 = !{!147}
!147 = distinct !{!147, !148, !"_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E: %gr"}
!148 = distinct !{!148, !"_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E"}
!149 = !{!147, !150}
!150 = distinct !{!150, !148, !"_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E: %expected_sfbtab"}
!151 = !{!150}
!152 = !{!153, !155, !156, !158}
!153 = distinct !{!153, !154, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h0f95890ed3a8cea2E: %a"}
!154 = distinct !{!154, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h0f95890ed3a8cea2E"}
!155 = distinct !{!155, !154, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h0f95890ed3a8cea2E: %b"}
!156 = distinct !{!156, !157, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_ne17h1977992d4eb5bf78E: %a"}
!157 = distinct !{!157, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_ne17h1977992d4eb5bf78E"}
!158 = distinct !{!158, !157, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_ne17h1977992d4eb5bf78E: %b"}
!159 = !{!160}
!160 = distinct !{!160, !161, !"_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E: %gr"}
!161 = distinct !{!161, !"_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E"}
!162 = !{!160, !163}
!163 = distinct !{!163, !161, !"_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E: %expected_sfbtab"}
!164 = !{!163}
!165 = !{!166, !168, !169, !171}
!166 = distinct !{!166, !167, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h0f95890ed3a8cea2E: %a"}
!167 = distinct !{!167, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h0f95890ed3a8cea2E"}
!168 = distinct !{!168, !167, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h0f95890ed3a8cea2E: %b"}
!169 = distinct !{!169, !170, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_ne17h1977992d4eb5bf78E: %a"}
!170 = distinct !{!170, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_ne17h1977992d4eb5bf78E"}
!171 = distinct !{!171, !170, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_ne17h1977992d4eb5bf78E: %b"}
!172 = !{!173}
!173 = distinct !{!173, !174, !"_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E: %gr"}
!174 = distinct !{!174, !"_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E"}
!175 = !{!173, !176}
!176 = distinct !{!176, !174, !"_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E: %expected_sfbtab"}
!177 = !{!176}
!178 = !{!179, !181, !182, !184}
!179 = distinct !{!179, !180, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h0f95890ed3a8cea2E: %a"}
!180 = distinct !{!180, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h0f95890ed3a8cea2E"}
!181 = distinct !{!181, !180, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h0f95890ed3a8cea2E: %b"}
!182 = distinct !{!182, !183, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_ne17h1977992d4eb5bf78E: %a"}
!183 = distinct !{!183, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_ne17h1977992d4eb5bf78E"}
!184 = distinct !{!184, !183, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_ne17h1977992d4eb5bf78E: %b"}
!185 = !{!186}
!186 = distinct !{!186, !187, !"_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E: %gr"}
!187 = distinct !{!187, !"_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E"}
!188 = !{!186, !189}
!189 = distinct !{!189, !187, !"_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E: %expected_sfbtab"}
!190 = !{!189}
!191 = !{!192, !194, !195, !197}
!192 = distinct !{!192, !193, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h0f95890ed3a8cea2E: %a"}
!193 = distinct !{!193, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h0f95890ed3a8cea2E"}
!194 = distinct !{!194, !193, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h0f95890ed3a8cea2E: %b"}
!195 = distinct !{!195, !196, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_ne17h1977992d4eb5bf78E: %a"}
!196 = distinct !{!196, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_ne17h1977992d4eb5bf78E"}
!197 = distinct !{!197, !196, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_ne17h1977992d4eb5bf78E: %b"}
!198 = !{!199}
!199 = distinct !{!199, !200, !"_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E: %gr"}
!200 = distinct !{!200, !"_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E"}
!201 = !{!199, !202}
!202 = distinct !{!202, !200, !"_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E: %expected_sfbtab"}
!203 = !{!202}
!204 = !{!205, !207, !208, !210}
!205 = distinct !{!205, !206, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h0f95890ed3a8cea2E: %a"}
!206 = distinct !{!206, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h0f95890ed3a8cea2E"}
!207 = distinct !{!207, !206, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h0f95890ed3a8cea2E: %b"}
!208 = distinct !{!208, !209, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_ne17h1977992d4eb5bf78E: %a"}
!209 = distinct !{!209, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_ne17h1977992d4eb5bf78E"}
!210 = distinct !{!210, !209, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_ne17h1977992d4eb5bf78E: %b"}
!211 = !{!212}
!212 = distinct !{!212, !213, !"_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E: %gr"}
!213 = distinct !{!213, !"_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E"}
!214 = !{!212, !215}
!215 = distinct !{!215, !213, !"_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E: %expected_sfbtab"}
!216 = !{!215}
!217 = !{!218, !220, !221, !223}
!218 = distinct !{!218, !219, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h0f95890ed3a8cea2E: %a"}
!219 = distinct !{!219, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h0f95890ed3a8cea2E"}
!220 = distinct !{!220, !219, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h0f95890ed3a8cea2E: %b"}
!221 = distinct !{!221, !222, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_ne17h1977992d4eb5bf78E: %a"}
!222 = distinct !{!222, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_ne17h1977992d4eb5bf78E"}
!223 = distinct !{!223, !222, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_ne17h1977992d4eb5bf78E: %b"}
!224 = !{!225}
!225 = distinct !{!225, !226, !"_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E: %gr"}
!226 = distinct !{!226, !"_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E"}
!227 = !{!225, !228}
!228 = distinct !{!228, !226, !"_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E: %expected_sfbtab"}
!229 = !{!228}
!230 = !{!231, !233, !234, !236}
!231 = distinct !{!231, !232, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h0f95890ed3a8cea2E: %a"}
!232 = distinct !{!232, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h0f95890ed3a8cea2E"}
!233 = distinct !{!233, !232, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h0f95890ed3a8cea2E: %b"}
!234 = distinct !{!234, !235, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_ne17h1977992d4eb5bf78E: %a"}
!235 = distinct !{!235, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_ne17h1977992d4eb5bf78E"}
!236 = distinct !{!236, !235, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_ne17h1977992d4eb5bf78E: %b"}
!237 = !{!238}
!238 = distinct !{!238, !239, !"_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E: %gr"}
!239 = distinct !{!239, !"_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E"}
!240 = !{!238, !241}
!241 = distinct !{!241, !239, !"_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E: %expected_sfbtab"}
!242 = !{!241}
!243 = !{!244, !246, !247, !249}
!244 = distinct !{!244, !245, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h0f95890ed3a8cea2E: %a"}
!245 = distinct !{!245, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h0f95890ed3a8cea2E"}
!246 = distinct !{!246, !245, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h0f95890ed3a8cea2E: %b"}
!247 = distinct !{!247, !248, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_ne17h1977992d4eb5bf78E: %a"}
!248 = distinct !{!248, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_ne17h1977992d4eb5bf78E"}
!249 = distinct !{!249, !248, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_ne17h1977992d4eb5bf78E: %b"}
!250 = !{!251}
!251 = distinct !{!251, !252, !"_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E: %gr"}
!252 = distinct !{!252, !"_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E"}
!253 = !{!251, !254}
!254 = distinct !{!254, !252, !"_ZN18read_side_info_lib3src3lib13check_granule17h732b02fd4a684c05E: %expected_sfbtab"}
!255 = !{!254}
!256 = !{!257, !259, !260, !262}
!257 = distinct !{!257, !258, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h0f95890ed3a8cea2E: %a"}
!258 = distinct !{!258, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h0f95890ed3a8cea2E"}
!259 = distinct !{!259, !258, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h0f95890ed3a8cea2E: %b"}
!260 = distinct !{!260, !261, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_ne17h1977992d4eb5bf78E: %a"}
!261 = distinct !{!261, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_ne17h1977992d4eb5bf78E"}
!262 = distinct !{!262, !261, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_ne17h1977992d4eb5bf78E: %b"}
