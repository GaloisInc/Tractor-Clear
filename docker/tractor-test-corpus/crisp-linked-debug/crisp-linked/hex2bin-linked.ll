; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@alloc_38a9d1c1fccd92e612dd2762da060982 = private unnamed_addr constant <{}> zeroinitializer, align 1

@run_test_2 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_5 = unnamed_addr alias i1 (), ptr @run_test_1

; Function Attrs: nofree nosync nounwind nonlazybind uwtable
define noundef i32 @hex2bin(ptr nocapture noundef writeonly %bin, i64 noundef %bin_maxlen, ptr noundef %hex, i64 noundef %hex_len, ptr noundef readonly %ignore, ptr noundef writeonly %hex_end_p) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %0 = icmp eq i64 %bin_maxlen, 0
  %alloc_38a9d1c1fccd92e612dd2762da060982.ptr.i.i = select i1 %0, ptr @alloc_38a9d1c1fccd92e612dd2762da060982, ptr %bin
  %1 = icmp eq i64 %hex_len, 0
  %alloc_38a9d1c1fccd92e612dd2762da060982.ptr.i5.i = select i1 %1, ptr @alloc_38a9d1c1fccd92e612dd2762da060982, ptr %hex
  %.not.i = icmp eq ptr %hex_end_p, null
  %2 = icmp eq ptr %ignore, null
  br i1 %2, label %bb6.split.i, label %bb7.split.i

bb6.split.i:                                      ; preds = %start
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5)
  br i1 %1, label %bb23.i.i, label %bb3.us.i.i

bb3.us.i.i:                                       ; preds = %bb21.us.i.i, %bb6.split.i
  %bin_pos.042.us.i.i = phi i64 [ %bin_pos.1.us.i.i, %bb21.us.i.i ], [ 0, %bb6.split.i ]
  %hex_pos.041.us.i.i = phi i64 [ %hex_pos.1.us.i.i, %bb21.us.i.i ], [ 0, %bb6.split.i ]
  %c_acc.040.us.i.i = phi i8 [ %c_acc.1.us.i.i, %bb21.us.i.i ], [ 0, %bb6.split.i ]
  %state.039.us.i.i = phi i8 [ %_83.us.i.i, %bb21.us.i.i ], [ 0, %bb6.split.i ]
  %3 = getelementptr inbounds [0 x i8], ptr %alloc_38a9d1c1fccd92e612dd2762da060982.ptr.i5.i, i64 0, i64 %hex_pos.041.us.i.i
  %c.us.i.i = load i8, ptr %3, align 1, !alias.scope !5, !noalias !7, !noundef !9
  %_29.us.i.i = xor i8 %c.us.i.i, 48
  %self.us.i.i = zext i8 %_29.us.i.i to i32
  %_32.us.i.i = add nuw nsw i32 %self.us.i.i, 65526
  %_31.us.i.i = lshr i32 %_32.us.i.i, 8
  %4 = and i8 %c.us.i.i, -33
  %_34.us.i.i = add i8 %4, -55
  %self2.us.i.i = zext i8 %_34.us.i.i to i32
  %_40.us.i.i = add nuw nsw i32 %self2.us.i.i, 65526
  %_42.us.i.i = add nuw nsw i32 %self2.us.i.i, 65520
  %_39.us.i.i = xor i32 %_40.us.i.i, %_42.us.i.i
  %_38.us.i.i = lshr i32 %_39.us.i.i, 8
  %_4625.us.i.i = or i32 %_38.us.i.i, %_31.us.i.i
  %_45.us.i.i = and i32 %_4625.us.i.i, 255
  %5 = icmp eq i32 %_45.us.i.i, 0
  br i1 %5, label %bb23.i.i, label %bb15.us.i.i

bb15.us.i.i:                                      ; preds = %bb3.us.i.i
  %_61.us.i.i = and i32 %_31.us.i.i, %self.us.i.i
  %_64.us.i.i = and i32 %_38.us.i.i, %self2.us.i.i
  %_60.us.i.i = or i32 %_64.us.i.i, %_61.us.i.i
  %_67.not.us.i.i = icmp ult i64 %bin_pos.042.us.i.i, %bin_maxlen
  br i1 %_67.not.us.i.i, label %bb17.us.i.i, label %bb23.i.i

bb17.us.i.i:                                      ; preds = %bb15.us.i.i
  %6 = icmp eq i8 %state.039.us.i.i, 0
  br i1 %6, label %bb18.us.i.i, label %bb20.us.i.i

bb20.us.i.i:                                      ; preds = %bb17.us.i.i
  %_75.us.i.i = add nuw i64 %bin_pos.042.us.i.i, 1
  %7 = getelementptr inbounds [0 x i8], ptr %alloc_38a9d1c1fccd92e612dd2762da060982.ptr.i.i, i64 0, i64 %bin_pos.042.us.i.i
  %8 = trunc i32 %_60.us.i.i to i8
  %9 = or i8 %c_acc.040.us.i.i, %8
  store i8 %9, ptr %7, align 1, !alias.scope !2, !noalias !10
  br label %bb21.us.i.i

bb18.us.i.i:                                      ; preds = %bb17.us.i.i
  %_60.tr.us.i.i = trunc i32 %_60.us.i.i to i8
  %10 = shl i8 %_60.tr.us.i.i, 4
  br label %bb21.us.i.i

bb21.us.i.i:                                      ; preds = %bb18.us.i.i, %bb20.us.i.i
  %c_acc.1.us.i.i = phi i8 [ %10, %bb18.us.i.i ], [ %c_acc.040.us.i.i, %bb20.us.i.i ]
  %bin_pos.1.us.i.i = phi i64 [ %bin_pos.042.us.i.i, %bb18.us.i.i ], [ %_75.us.i.i, %bb20.us.i.i ]
  %_83.us.i.i = xor i8 %state.039.us.i.i, -1
  %hex_pos.1.us.i.i = add nuw i64 %hex_pos.041.us.i.i, 1
  %exitcond101.not.i.i = icmp eq i64 %hex_pos.1.us.i.i, %hex_len
  br i1 %exitcond101.not.i.i, label %bb23.i.i, label %bb3.us.i.i

bb23.i.i:                                         ; preds = %bb21.us.i.i, %bb15.us.i.i, %bb3.us.i.i, %bb6.split.i
  %state.0.lcssa.i.i = phi i8 [ 0, %bb6.split.i ], [ %state.039.us.i.i, %bb3.us.i.i ], [ %state.039.us.i.i, %bb15.us.i.i ], [ %_83.us.i.i, %bb21.us.i.i ]
  %hex_pos.0.lcssa.i.i = phi i64 [ 0, %bb6.split.i ], [ %hex_pos.041.us.i.i, %bb3.us.i.i ], [ %hex_pos.041.us.i.i, %bb15.us.i.i ], [ %hex_len, %bb21.us.i.i ]
  %bin_pos.0.lcssa.i.i = phi i64 [ 0, %bb6.split.i ], [ %bin_pos.042.us.i.i, %bb3.us.i.i ], [ %bin_pos.042.us.i.i, %bb15.us.i.i ], [ %bin_pos.1.us.i.i, %bb21.us.i.i ]
  %ret.0.i.i = phi i32 [ 0, %bb6.split.i ], [ 0, %bb3.us.i.i ], [ -1, %bb15.us.i.i ], [ 0, %bb21.us.i.i ]
  %11 = icmp ne i8 %state.0.lcssa.i.i, 0
  %spec.select.i.i = select i1 %11, i32 -1, i32 %ret.0.i.i
  br label %bb8.i

bb7.split.i:                                      ; preds = %start
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14)
  br i1 %1, label %bb23.i53.i, label %bb3.i.i

bb23.i53.i:                                       ; preds = %_ZN11hex2bin_lib3src3lib17c_string_contains17h0f9fbe0974eec76fE.exit.i.i, %bb22.i.i, %bb15.i.i, %bb4.i.i, %bb7.split.i
  %state.0.lcssa.i46.i = phi i8 [ 0, %bb7.split.i ], [ %state.039.i.i, %bb4.i.i ], [ %state.039.i.i, %bb15.i.i ], [ 0, %_ZN11hex2bin_lib3src3lib17c_string_contains17h0f9fbe0974eec76fE.exit.i.i ], [ %state.1.i.i, %bb22.i.i ]
  %hex_pos.0.lcssa.i47.i = phi i64 [ 0, %bb7.split.i ], [ %hex_pos.041.i.i, %bb4.i.i ], [ %hex_pos.041.i.i, %bb15.i.i ], [ %hex_pos.041.i.i, %_ZN11hex2bin_lib3src3lib17c_string_contains17h0f9fbe0974eec76fE.exit.i.i ], [ %hex_len, %bb22.i.i ]
  %bin_pos.0.lcssa.i48.i = phi i64 [ 0, %bb7.split.i ], [ %bin_pos.042.i.i, %bb4.i.i ], [ %bin_pos.042.i.i, %bb15.i.i ], [ %bin_pos.042.i.i, %_ZN11hex2bin_lib3src3lib17c_string_contains17h0f9fbe0974eec76fE.exit.i.i ], [ %bin_pos.2.i.i, %bb22.i.i ]
  %ret.0.i49.i = phi i32 [ 0, %bb7.split.i ], [ 0, %bb4.i.i ], [ -1, %bb15.i.i ], [ 0, %_ZN11hex2bin_lib3src3lib17c_string_contains17h0f9fbe0974eec76fE.exit.i.i ], [ 0, %bb22.i.i ]
  %12 = icmp ne i8 %state.0.lcssa.i46.i, 0
  %spec.select.i50.i = select i1 %12, i32 -1, i32 %ret.0.i49.i
  br label %bb8.i

bb3.i.i:                                          ; preds = %bb22.i.i, %bb7.split.i
  %bin_pos.042.i.i = phi i64 [ %bin_pos.2.i.i, %bb22.i.i ], [ 0, %bb7.split.i ]
  %hex_pos.041.i.i = phi i64 [ %hex_pos.1.i.i, %bb22.i.i ], [ 0, %bb7.split.i ]
  %c_acc.040.i.i = phi i8 [ %c_acc.2.i.i, %bb22.i.i ], [ 0, %bb7.split.i ]
  %state.039.i.i = phi i8 [ %state.1.i.i, %bb22.i.i ], [ 0, %bb7.split.i ]
  %13 = getelementptr inbounds [0 x i8], ptr %alloc_38a9d1c1fccd92e612dd2762da060982.ptr.i5.i, i64 0, i64 %hex_pos.041.i.i
  %c.i.i = load i8, ptr %13, align 1, !alias.scope !14, !noalias !16, !noundef !9
  %_29.i.i = xor i8 %c.i.i, 48
  %self.i.i = zext i8 %_29.i.i to i32
  %_32.i.i = add nuw nsw i32 %self.i.i, 65526
  %_31.i.i = lshr i32 %_32.i.i, 8
  %14 = and i8 %c.i.i, -33
  %_34.i.i = add i8 %14, -55
  %self2.i.i = zext i8 %_34.i.i to i32
  %_40.i.i = add nuw nsw i32 %self2.i.i, 65526
  %_42.i.i = add nuw nsw i32 %self2.i.i, 65520
  %_39.i.i = xor i32 %_40.i.i, %_42.i.i
  %_38.i.i = lshr i32 %_39.i.i, 8
  %_4625.i.i = or i32 %_38.i.i, %_31.i.i
  %_45.i.i = and i32 %_4625.i.i, 255
  %15 = icmp eq i32 %_45.i.i, 0
  br i1 %15, label %bb4.i.i, label %bb15.i.i

bb4.i.i:                                          ; preds = %bb3.i.i
  %_53.not.i.i = icmp eq i8 %state.039.i.i, 0
  br i1 %_53.not.i.i, label %bb3.i.i.i, label %bb23.i53.i

bb15.i.i:                                         ; preds = %bb3.i.i
  %_61.i.i = and i32 %_31.i.i, %self.i.i
  %_64.i.i = and i32 %_38.i.i, %self2.i.i
  %_60.i.i = or i32 %_64.i.i, %_61.i.i
  %_67.not.i.i = icmp ult i64 %bin_pos.042.i.i, %bin_maxlen
  br i1 %_67.not.i.i, label %bb17.i.i, label %bb23.i53.i

bb17.i.i:                                         ; preds = %bb15.i.i
  %16 = icmp eq i8 %state.039.i.i, 0
  br i1 %16, label %bb18.i.i, label %bb20.i.i

bb18.i.i:                                         ; preds = %bb17.i.i
  %_60.tr.i.i = trunc i32 %_60.i.i to i8
  %17 = shl i8 %_60.tr.i.i, 4
  br label %bb21.i.i

bb20.i.i:                                         ; preds = %bb17.i.i
  %_75.i.i = add nuw i64 %bin_pos.042.i.i, 1
  %18 = getelementptr inbounds [0 x i8], ptr %alloc_38a9d1c1fccd92e612dd2762da060982.ptr.i.i, i64 0, i64 %bin_pos.042.i.i
  %19 = trunc i32 %_60.i.i to i8
  %20 = or i8 %c_acc.040.i.i, %19
  store i8 %20, ptr %18, align 1, !alias.scope !11, !noalias !18
  br label %bb21.i.i

bb21.i.i:                                         ; preds = %bb20.i.i, %bb18.i.i
  %c_acc.1.i.i = phi i8 [ %17, %bb18.i.i ], [ %c_acc.040.i.i, %bb20.i.i ]
  %bin_pos.1.i.i = phi i64 [ %bin_pos.042.i.i, %bb18.i.i ], [ %_75.i.i, %bb20.i.i ]
  %_83.i.i = xor i8 %state.039.i.i, -1
  br label %bb22.i.i

bb22.i.i:                                         ; preds = %_ZN11hex2bin_lib3src3lib17c_string_contains17h0f9fbe0974eec76fE.exit.i.i, %bb21.i.i
  %state.1.i.i = phi i8 [ %_83.i.i, %bb21.i.i ], [ 0, %_ZN11hex2bin_lib3src3lib17c_string_contains17h0f9fbe0974eec76fE.exit.i.i ]
  %c_acc.2.i.i = phi i8 [ %c_acc.1.i.i, %bb21.i.i ], [ %c_acc.040.i.i, %_ZN11hex2bin_lib3src3lib17c_string_contains17h0f9fbe0974eec76fE.exit.i.i ]
  %bin_pos.2.i.i = phi i64 [ %bin_pos.1.i.i, %bb21.i.i ], [ %bin_pos.042.i.i, %_ZN11hex2bin_lib3src3lib17c_string_contains17h0f9fbe0974eec76fE.exit.i.i ]
  %hex_pos.1.i.i = add nuw i64 %hex_pos.041.i.i, 1
  %exitcond99.not.i.i = icmp eq i64 %hex_pos.1.i.i, %hex_len
  br i1 %exitcond99.not.i.i, label %bb23.i53.i, label %bb3.i.i

bb3.i.i.i:                                        ; preds = %bb3.i.i.i, %bb4.i.i
  %p.0.i.i.i = phi ptr [ %22, %bb3.i.i.i ], [ %ignore, %bb4.i.i ]
  %current.i.i.i = load i8, ptr %p.0.i.i.i, align 1, !noundef !9
  %21 = icmp ne i8 %current.i.i.i, 0
  %_5.i.i.i = icmp ne i8 %current.i.i.i, %c.i.i
  %or.cond.not.i.i.i = and i1 %_5.i.i.i, %21
  %22 = getelementptr inbounds i8, ptr %p.0.i.i.i, i64 1
  br i1 %or.cond.not.i.i.i, label %bb3.i.i.i, label %_ZN11hex2bin_lib3src3lib17c_string_contains17h0f9fbe0974eec76fE.exit.i.i

_ZN11hex2bin_lib3src3lib17c_string_contains17h0f9fbe0974eec76fE.exit.i.i: ; preds = %bb3.i.i.i
  br i1 %21, label %bb22.i.i, label %bb23.i53.i

bb8.i:                                            ; preds = %bb23.i53.i, %bb23.i.i
  %.sink.i = phi i1 [ %11, %bb23.i.i ], [ %12, %bb23.i53.i ]
  %hex_pos.0.lcssa.i.sink.i = phi i64 [ %hex_pos.0.lcssa.i.i, %bb23.i.i ], [ %hex_pos.0.lcssa.i47.i, %bb23.i53.i ]
  %spec.select.i.sink67.i = phi i32 [ %spec.select.i.i, %bb23.i.i ], [ %spec.select.i50.i, %bb23.i53.i ]
  %bin_pos.0.lcssa.i.sink.i = phi i64 [ %bin_pos.0.lcssa.i.i, %bb23.i.i ], [ %bin_pos.0.lcssa.i48.i, %bb23.i53.i ]
  %_90.i.i = sext i1 %.sink.i to i64
  %spec.select26.i.i = add i64 %hex_pos.0.lcssa.i.sink.i, %_90.i.i
  %_96.not.i.i = icmp eq i64 %spec.select26.i.i, %hex_len
  %spec.select27.i.i = select i1 %_96.not.i.i, i32 %spec.select.i.sink67.i, i32 -1
  %end_pos.1.i = select i1 %.not.i, i64 0, i64 %spec.select26.i.i
  %ret.2.i.i = select i1 %.not.i, i32 %spec.select27.i.i, i32 %spec.select.i.sink67.i
  %23 = icmp eq i32 %spec.select.i.sink67.i, 0
  %24 = icmp eq i32 %ret.2.i.i, 0
  %25 = trunc i64 %bin_pos.0.lcssa.i.sink.i to i32
  %26 = select i1 %23, i32 %25, i32 0
  %.0.i.i = select i1 %24, i32 %26, i32 -1
  br i1 %.not.i, label %bb11.i, label %bb10.i

bb11.i:                                           ; preds = %bb8.i
  %_22.not.i = icmp ne i64 %end_pos.1.i, %hex_len
  %_27.i = icmp eq i32 %.0.i.i, 0
  %_21.0.i = select i1 %_22.not.i, i1 %_27.i, i1 false
  %spec.select.i = select i1 %_21.0.i, i32 -1, i32 %.0.i.i
  br label %_ZN11hex2bin_lib3src3lib16hex2bin_from_raw17h1cdc8d2616fe20e1E.exit

bb10.i:                                           ; preds = %bb8.i
  %27 = getelementptr i8, ptr %hex, i64 %end_pos.1.i
  store ptr %27, ptr %hex_end_p, align 8
  br label %_ZN11hex2bin_lib3src3lib16hex2bin_from_raw17h1cdc8d2616fe20e1E.exit

_ZN11hex2bin_lib3src3lib16hex2bin_from_raw17h1cdc8d2616fe20e1E.exit: ; preds = %bb10.i, %bb11.i
  %.0.i = phi i32 [ %.0.i.i, %bb10.i ], [ %spec.select.i, %bb11.i ]
  ret i32 %.0.i
}

; Function Attrs: nonlazybind uwtable
declare noundef i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #2

; Function Attrs: nofree nosync nounwind nonlazybind memory(inaccessiblemem: readwrite) uwtable
define noundef zeroext i1 @run_test_1() unnamed_addr #3 personality ptr @rust_eh_personality {
hex2bin.exit:
  ret i1 true
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(inaccessiblemem: readwrite) uwtable
define noundef zeroext i1 @run_test_3() unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %bin = alloca [8 x i8], align 8
  %ignore = alloca [1 x i8], align 1
  %hex = alloca [9 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %hex)
  store <8 x i8> <i8 55, i8 54, i8 48, i8 48, i8 99, i8 56, i8 48, i8 49>, ptr %hex, align 8
  %0 = getelementptr inbounds [9 x i8], ptr %hex, i64 0, i64 8
  store i8 0, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ignore)
  store i8 0, ptr %ignore, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bin)
  store i64 0, ptr %bin, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22)
  br label %bb3.i.i.i

bb3.i.i.i:                                        ; preds = %bb22.i.i.i, %start
  %bin_pos.042.i.i.i = phi i64 [ %bin_pos.2.i.i.i, %bb22.i.i.i ], [ 0, %start ]
  %hex_pos.041.i.i.i = phi i64 [ %hex_pos.1.i.i.i, %bb22.i.i.i ], [ 0, %start ]
  %c_acc.040.i.i.i = phi i8 [ %c_acc.2.i.i.i, %bb22.i.i.i ], [ 0, %start ]
  %state.039.i.i.i = phi i8 [ %state.1.i.i.i, %bb22.i.i.i ], [ 0, %start ]
  %1 = getelementptr inbounds [0 x i8], ptr %hex, i64 0, i64 %hex_pos.041.i.i.i
  %c.i.i.i = load i8, ptr %1, align 1, !alias.scope !22, !noalias !24, !noundef !9
  %_29.i.i.i = xor i8 %c.i.i.i, 48
  %self.i.i.i = zext i8 %_29.i.i.i to i32
  %_32.i.i.i = add nuw nsw i32 %self.i.i.i, 65526
  %_31.i.i.i = lshr i32 %_32.i.i.i, 8
  %2 = and i8 %c.i.i.i, -33
  %_34.i.i.i = add i8 %2, -55
  %self2.i.i.i = zext i8 %_34.i.i.i to i32
  %_40.i.i.i = add nuw nsw i32 %self2.i.i.i, 65526
  %_42.i.i.i = add nuw nsw i32 %self2.i.i.i, 65520
  %_39.i.i.i = xor i32 %_40.i.i.i, %_42.i.i.i
  %_38.i.i.i = lshr i32 %_39.i.i.i, 8
  %_4625.i.i.i = or i32 %_38.i.i.i, %_31.i.i.i
  %_45.i.i.i = and i32 %_4625.i.i.i, 255
  %3 = icmp eq i32 %_45.i.i.i, 0
  br i1 %3, label %bb4.i.i.i, label %bb15.i.i.i

bb4.i.i.i:                                        ; preds = %bb3.i.i.i
  %_53.not.i.i.i = icmp eq i8 %state.039.i.i.i, 0
  br i1 %_53.not.i.i.i, label %bb3.i.i.i.i, label %hex2bin.exit

bb15.i.i.i:                                       ; preds = %bb3.i.i.i
  %_61.i.i.i = and i32 %_31.i.i.i, %self.i.i.i
  %_64.i.i.i = and i32 %_38.i.i.i, %self2.i.i.i
  %_60.i.i.i = or i32 %_64.i.i.i, %_61.i.i.i
  %_67.not.i.i.i = icmp ult i64 %bin_pos.042.i.i.i, 8
  br i1 %_67.not.i.i.i, label %bb17.i.i.i, label %hex2bin.exit

bb17.i.i.i:                                       ; preds = %bb15.i.i.i
  %4 = icmp eq i8 %state.039.i.i.i, 0
  br i1 %4, label %bb18.i.i.i, label %bb20.i.i.i

bb18.i.i.i:                                       ; preds = %bb17.i.i.i
  %_60.tr.i.i.i = trunc i32 %_60.i.i.i to i8
  %5 = shl i8 %_60.tr.i.i.i, 4
  br label %bb21.i.i.i

bb20.i.i.i:                                       ; preds = %bb17.i.i.i
  %_75.i.i.i = add nuw nsw i64 %bin_pos.042.i.i.i, 1
  %6 = getelementptr inbounds [0 x i8], ptr %bin, i64 0, i64 %bin_pos.042.i.i.i
  %7 = trunc i32 %_60.i.i.i to i8
  %8 = or i8 %c_acc.040.i.i.i, %7
  store i8 %8, ptr %6, align 1, !alias.scope !19, !noalias !26
  br label %bb21.i.i.i

bb21.i.i.i:                                       ; preds = %bb20.i.i.i, %bb18.i.i.i
  %c_acc.1.i.i.i = phi i8 [ %5, %bb18.i.i.i ], [ %c_acc.040.i.i.i, %bb20.i.i.i ]
  %bin_pos.1.i.i.i = phi i64 [ %bin_pos.042.i.i.i, %bb18.i.i.i ], [ %_75.i.i.i, %bb20.i.i.i ]
  %_83.i.i.i = xor i8 %state.039.i.i.i, -1
  br label %bb22.i.i.i

bb22.i.i.i:                                       ; preds = %_ZN11hex2bin_lib3src3lib17c_string_contains17h0f9fbe0974eec76fE.exit.i.i.i, %bb21.i.i.i
  %state.1.i.i.i = phi i8 [ %_83.i.i.i, %bb21.i.i.i ], [ 0, %_ZN11hex2bin_lib3src3lib17c_string_contains17h0f9fbe0974eec76fE.exit.i.i.i ]
  %c_acc.2.i.i.i = phi i8 [ %c_acc.1.i.i.i, %bb21.i.i.i ], [ %c_acc.040.i.i.i, %_ZN11hex2bin_lib3src3lib17c_string_contains17h0f9fbe0974eec76fE.exit.i.i.i ]
  %bin_pos.2.i.i.i = phi i64 [ %bin_pos.1.i.i.i, %bb21.i.i.i ], [ %bin_pos.042.i.i.i, %_ZN11hex2bin_lib3src3lib17c_string_contains17h0f9fbe0974eec76fE.exit.i.i.i ]
  %hex_pos.1.i.i.i = add nuw nsw i64 %hex_pos.041.i.i.i, 1
  %exitcond99.not.i.i.i = icmp eq i64 %hex_pos.1.i.i.i, 8
  br i1 %exitcond99.not.i.i.i, label %hex2bin.exit, label %bb3.i.i.i

bb3.i.i.i.i:                                      ; preds = %bb3.i.i.i.i, %bb4.i.i.i
  %p.0.i.i.i.i = phi ptr [ %10, %bb3.i.i.i.i ], [ %ignore, %bb4.i.i.i ]
  %current.i.i.i.i = load i8, ptr %p.0.i.i.i.i, align 1, !noundef !9
  %9 = icmp ne i8 %current.i.i.i.i, 0
  %_5.i.i.i.i = icmp ne i8 %current.i.i.i.i, %c.i.i.i
  %or.cond.not.i.i.i.i = and i1 %_5.i.i.i.i, %9
  %10 = getelementptr inbounds i8, ptr %p.0.i.i.i.i, i64 1
  br i1 %or.cond.not.i.i.i.i, label %bb3.i.i.i.i, label %_ZN11hex2bin_lib3src3lib17c_string_contains17h0f9fbe0974eec76fE.exit.i.i.i

_ZN11hex2bin_lib3src3lib17c_string_contains17h0f9fbe0974eec76fE.exit.i.i.i: ; preds = %bb3.i.i.i.i
  br i1 %9, label %bb22.i.i.i, label %hex2bin.exit

hex2bin.exit:                                     ; preds = %_ZN11hex2bin_lib3src3lib17c_string_contains17h0f9fbe0974eec76fE.exit.i.i.i, %bb22.i.i.i, %bb15.i.i.i, %bb4.i.i.i
  %state.0.lcssa.i46.i.i = phi i8 [ %state.039.i.i.i, %bb4.i.i.i ], [ %state.039.i.i.i, %bb15.i.i.i ], [ 0, %_ZN11hex2bin_lib3src3lib17c_string_contains17h0f9fbe0974eec76fE.exit.i.i.i ], [ %state.1.i.i.i, %bb22.i.i.i ]
  %hex_pos.0.lcssa.i47.i.i = phi i64 [ %hex_pos.041.i.i.i, %bb4.i.i.i ], [ %hex_pos.041.i.i.i, %bb15.i.i.i ], [ %hex_pos.041.i.i.i, %_ZN11hex2bin_lib3src3lib17c_string_contains17h0f9fbe0974eec76fE.exit.i.i.i ], [ 8, %bb22.i.i.i ]
  %bin_pos.0.lcssa.i48.i.i = phi i64 [ %bin_pos.042.i.i.i, %bb4.i.i.i ], [ %bin_pos.042.i.i.i, %bb15.i.i.i ], [ %bin_pos.042.i.i.i, %_ZN11hex2bin_lib3src3lib17c_string_contains17h0f9fbe0974eec76fE.exit.i.i.i ], [ %bin_pos.2.i.i.i, %bb22.i.i.i ]
  %11 = phi i1 [ true, %bb4.i.i.i ], [ false, %bb15.i.i.i ], [ true, %_ZN11hex2bin_lib3src3lib17c_string_contains17h0f9fbe0974eec76fE.exit.i.i.i ], [ true, %bb22.i.i.i ]
  %12 = icmp ne i8 %state.0.lcssa.i46.i.i, 0
  %_90.i.i.i = sext i1 %12 to i64
  %spec.select26.i.i.i = add i64 %hex_pos.0.lcssa.i47.i.i, %_90.i.i.i
  %_96.not.i.i.i = icmp eq i64 %spec.select26.i.i.i, 8
  %not. = xor i1 %12, true
  %13 = and i1 %11, %not.
  %14 = select i1 %_96.not.i.i.i, i1 %13, i1 false
  %15 = and i64 %bin_pos.0.lcssa.i48.i.i, 4294967295
  %_19123 = icmp eq i64 %15, 4
  %_191 = select i1 %14, i1 %_19123, i1 false
  %bin.val = load i64, ptr %bin, align 8
  %16 = icmp eq i64 %bin.val, 29884534
  %.0 = select i1 %_191, i1 %16, i1 false
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bin)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ignore)
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %hex)
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nofree nounwind nonlazybind memory(inaccessiblemem: readwrite) uwtable
define noundef zeroext i1 @run_test_4() unnamed_addr #5 personality ptr @rust_eh_personality {
start:
  %expected_bin = alloca [24 x i8], align 8
  %bin = alloca [24 x i8], align 1
  %ignore = alloca [1 x i8], align 1
  %hex = alloca [25 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 25, ptr nonnull %hex)
  store <16 x i8> <i8 51, i8 99, i8 51, i8 100, i8 51, i8 101, i8 51, i8 102, i8 52, i8 48, i8 52, i8 49, i8 52, i8 50, i8 52, i8 51>, ptr %hex, align 16
  %0 = getelementptr inbounds [25 x i8], ptr %hex, i64 0, i64 16
  store <8 x i8> <i8 52, i8 52, i8 52, i8 53, i8 52, i8 54, i8 52, i8 55>, ptr %0, align 16
  %1 = getelementptr inbounds [25 x i8], ptr %hex, i64 0, i64 24
  store i8 0, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ignore)
  store i8 0, ptr %ignore, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %bin)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %bin, i8 0, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30)
  br label %bb3.i.i.i

bb3.i.i.i:                                        ; preds = %bb22.i.i.i, %start
  %bin_pos.042.i.i.i = phi i64 [ %bin_pos.2.i.i.i, %bb22.i.i.i ], [ 0, %start ]
  %hex_pos.041.i.i.i = phi i64 [ %hex_pos.1.i.i.i, %bb22.i.i.i ], [ 0, %start ]
  %c_acc.040.i.i.i = phi i8 [ %c_acc.2.i.i.i, %bb22.i.i.i ], [ 0, %start ]
  %state.039.i.i.i = phi i8 [ %state.1.i.i.i, %bb22.i.i.i ], [ 0, %start ]
  %2 = getelementptr inbounds [0 x i8], ptr %hex, i64 0, i64 %hex_pos.041.i.i.i
  %c.i.i.i = load i8, ptr %2, align 1, !alias.scope !30, !noalias !32, !noundef !9
  %_29.i.i.i = xor i8 %c.i.i.i, 48
  %self.i.i.i = zext i8 %_29.i.i.i to i32
  %_32.i.i.i = add nuw nsw i32 %self.i.i.i, 65526
  %_31.i.i.i = lshr i32 %_32.i.i.i, 8
  %3 = and i8 %c.i.i.i, -33
  %_34.i.i.i = add i8 %3, -55
  %self2.i.i.i = zext i8 %_34.i.i.i to i32
  %_40.i.i.i = add nuw nsw i32 %self2.i.i.i, 65526
  %_42.i.i.i = add nuw nsw i32 %self2.i.i.i, 65520
  %_39.i.i.i = xor i32 %_40.i.i.i, %_42.i.i.i
  %_38.i.i.i = lshr i32 %_39.i.i.i, 8
  %_4625.i.i.i = or i32 %_38.i.i.i, %_31.i.i.i
  %_45.i.i.i = and i32 %_4625.i.i.i, 255
  %4 = icmp eq i32 %_45.i.i.i, 0
  br i1 %4, label %bb4.i.i.i, label %bb15.i.i.i

bb4.i.i.i:                                        ; preds = %bb3.i.i.i
  %_53.not.i.i.i = icmp eq i8 %state.039.i.i.i, 0
  br i1 %_53.not.i.i.i, label %bb3.i.i.i.i, label %hex2bin.exit

bb15.i.i.i:                                       ; preds = %bb3.i.i.i
  %_61.i.i.i = and i32 %_31.i.i.i, %self.i.i.i
  %_64.i.i.i = and i32 %_38.i.i.i, %self2.i.i.i
  %_60.i.i.i = or i32 %_64.i.i.i, %_61.i.i.i
  %_67.not.i.i.i = icmp ult i64 %bin_pos.042.i.i.i, 24
  br i1 %_67.not.i.i.i, label %bb17.i.i.i, label %hex2bin.exit

bb17.i.i.i:                                       ; preds = %bb15.i.i.i
  %5 = icmp eq i8 %state.039.i.i.i, 0
  br i1 %5, label %bb18.i.i.i, label %bb20.i.i.i

bb18.i.i.i:                                       ; preds = %bb17.i.i.i
  %_60.tr.i.i.i = trunc i32 %_60.i.i.i to i8
  %6 = shl i8 %_60.tr.i.i.i, 4
  br label %bb21.i.i.i

bb20.i.i.i:                                       ; preds = %bb17.i.i.i
  %_75.i.i.i = add nuw nsw i64 %bin_pos.042.i.i.i, 1
  %7 = getelementptr inbounds [0 x i8], ptr %bin, i64 0, i64 %bin_pos.042.i.i.i
  %8 = trunc i32 %_60.i.i.i to i8
  %9 = or i8 %c_acc.040.i.i.i, %8
  store i8 %9, ptr %7, align 1, !alias.scope !27, !noalias !34
  br label %bb21.i.i.i

bb21.i.i.i:                                       ; preds = %bb20.i.i.i, %bb18.i.i.i
  %c_acc.1.i.i.i = phi i8 [ %6, %bb18.i.i.i ], [ %c_acc.040.i.i.i, %bb20.i.i.i ]
  %bin_pos.1.i.i.i = phi i64 [ %bin_pos.042.i.i.i, %bb18.i.i.i ], [ %_75.i.i.i, %bb20.i.i.i ]
  %_83.i.i.i = xor i8 %state.039.i.i.i, -1
  br label %bb22.i.i.i

bb22.i.i.i:                                       ; preds = %_ZN11hex2bin_lib3src3lib17c_string_contains17h0f9fbe0974eec76fE.exit.i.i.i, %bb21.i.i.i
  %state.1.i.i.i = phi i8 [ %_83.i.i.i, %bb21.i.i.i ], [ 0, %_ZN11hex2bin_lib3src3lib17c_string_contains17h0f9fbe0974eec76fE.exit.i.i.i ]
  %c_acc.2.i.i.i = phi i8 [ %c_acc.1.i.i.i, %bb21.i.i.i ], [ %c_acc.040.i.i.i, %_ZN11hex2bin_lib3src3lib17c_string_contains17h0f9fbe0974eec76fE.exit.i.i.i ]
  %bin_pos.2.i.i.i = phi i64 [ %bin_pos.1.i.i.i, %bb21.i.i.i ], [ %bin_pos.042.i.i.i, %_ZN11hex2bin_lib3src3lib17c_string_contains17h0f9fbe0974eec76fE.exit.i.i.i ]
  %hex_pos.1.i.i.i = add nuw nsw i64 %hex_pos.041.i.i.i, 1
  %exitcond99.not.i.i.i = icmp eq i64 %hex_pos.1.i.i.i, 24
  br i1 %exitcond99.not.i.i.i, label %hex2bin.exit, label %bb3.i.i.i

bb3.i.i.i.i:                                      ; preds = %bb3.i.i.i.i, %bb4.i.i.i
  %p.0.i.i.i.i = phi ptr [ %11, %bb3.i.i.i.i ], [ %ignore, %bb4.i.i.i ]
  %current.i.i.i.i = load i8, ptr %p.0.i.i.i.i, align 1, !noundef !9
  %10 = icmp ne i8 %current.i.i.i.i, 0
  %_5.i.i.i.i = icmp ne i8 %current.i.i.i.i, %c.i.i.i
  %or.cond.not.i.i.i.i = and i1 %_5.i.i.i.i, %10
  %11 = getelementptr inbounds i8, ptr %p.0.i.i.i.i, i64 1
  br i1 %or.cond.not.i.i.i.i, label %bb3.i.i.i.i, label %_ZN11hex2bin_lib3src3lib17c_string_contains17h0f9fbe0974eec76fE.exit.i.i.i

_ZN11hex2bin_lib3src3lib17c_string_contains17h0f9fbe0974eec76fE.exit.i.i.i: ; preds = %bb3.i.i.i.i
  br i1 %10, label %bb22.i.i.i, label %hex2bin.exit

hex2bin.exit:                                     ; preds = %_ZN11hex2bin_lib3src3lib17c_string_contains17h0f9fbe0974eec76fE.exit.i.i.i, %bb22.i.i.i, %bb15.i.i.i, %bb4.i.i.i
  %state.0.lcssa.i46.i.i = phi i8 [ %state.039.i.i.i, %bb4.i.i.i ], [ %state.039.i.i.i, %bb15.i.i.i ], [ 0, %_ZN11hex2bin_lib3src3lib17c_string_contains17h0f9fbe0974eec76fE.exit.i.i.i ], [ %state.1.i.i.i, %bb22.i.i.i ]
  %hex_pos.0.lcssa.i47.i.i = phi i64 [ %hex_pos.041.i.i.i, %bb4.i.i.i ], [ %hex_pos.041.i.i.i, %bb15.i.i.i ], [ %hex_pos.041.i.i.i, %_ZN11hex2bin_lib3src3lib17c_string_contains17h0f9fbe0974eec76fE.exit.i.i.i ], [ 24, %bb22.i.i.i ]
  %bin_pos.0.lcssa.i48.i.i = phi i64 [ %bin_pos.042.i.i.i, %bb4.i.i.i ], [ %bin_pos.042.i.i.i, %bb15.i.i.i ], [ %bin_pos.042.i.i.i, %_ZN11hex2bin_lib3src3lib17c_string_contains17h0f9fbe0974eec76fE.exit.i.i.i ], [ %bin_pos.2.i.i.i, %bb22.i.i.i ]
  %12 = phi i1 [ true, %bb4.i.i.i ], [ false, %bb15.i.i.i ], [ true, %_ZN11hex2bin_lib3src3lib17c_string_contains17h0f9fbe0974eec76fE.exit.i.i.i ], [ true, %bb22.i.i.i ]
  %13 = icmp ne i8 %state.0.lcssa.i46.i.i, 0
  %_90.i.i.i = sext i1 %13 to i64
  %spec.select26.i.i.i = add i64 %hex_pos.0.lcssa.i47.i.i, %_90.i.i.i
  %_96.not.i.i.i = icmp eq i64 %spec.select26.i.i.i, 24
  %not. = xor i1 %13, true
  %14 = and i1 %12, %not.
  %15 = select i1 %_96.not.i.i.i, i1 %14, i1 false
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %expected_bin)
  store <8 x i8> <i8 60, i8 61, i8 62, i8 63, i8 64, i8 65, i8 66, i8 67>, ptr %expected_bin, align 8
  %16 = getelementptr inbounds [24 x i8], ptr %expected_bin, i64 0, i64 8
  store <4 x i8> <i8 68, i8 69, i8 70, i8 71>, ptr %16, align 8
  %17 = getelementptr inbounds [24 x i8], ptr %expected_bin, i64 0, i64 12
  %18 = and i64 %bin_pos.0.lcssa.i48.i.i, 4294967295
  %_19123 = icmp eq i64 %18, 12
  %_191 = select i1 %15, i1 %_19123, i1 false
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %17, i8 0, i64 12, i1 false)
  br i1 %_191, label %bb3, label %bb4

bb3:                                              ; preds = %hex2bin.exit
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(24) %bin, ptr noundef nonnull dereferenceable(24) %expected_bin, i64 24), !alias.scope !35
  %19 = icmp eq i32 %bcmp.i, 0
  br label %bb4

bb4:                                              ; preds = %bb3, %hex2bin.exit
  %.0 = phi i1 [ %19, %bb3 ], [ false, %hex2bin.exit ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %expected_bin)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %bin)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ignore)
  call void @llvm.lifetime.end.p0(i64 25, ptr nonnull %hex)
  ret i1 %.0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nofree nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #7

attributes #0 = { nofree nosync nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #3 = { nofree nosync nounwind nonlazybind memory(inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree nounwind nonlazybind memory(inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nofree nounwind nonlazybind willreturn memory(argmem: read) }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!3}
!3 = distinct !{!3, !4, !"_ZN11hex2bin_lib3src3lib7hex2bin17h5759f2917daf494dE: %bin.0"}
!4 = distinct !{!4, !"_ZN11hex2bin_lib3src3lib7hex2bin17h5759f2917daf494dE"}
!5 = !{!6}
!6 = distinct !{!6, !4, !"_ZN11hex2bin_lib3src3lib7hex2bin17h5759f2917daf494dE: %hex.0"}
!7 = !{!3, !8}
!8 = distinct !{!8, !4, !"_ZN11hex2bin_lib3src3lib7hex2bin17h5759f2917daf494dE: argument 2"}
!9 = !{}
!10 = !{!6, !8}
!11 = !{!12}
!12 = distinct !{!12, !13, !"_ZN11hex2bin_lib3src3lib7hex2bin17h5759f2917daf494dE: %bin.0"}
!13 = distinct !{!13, !"_ZN11hex2bin_lib3src3lib7hex2bin17h5759f2917daf494dE"}
!14 = !{!15}
!15 = distinct !{!15, !13, !"_ZN11hex2bin_lib3src3lib7hex2bin17h5759f2917daf494dE: %hex.0"}
!16 = !{!12, !17}
!17 = distinct !{!17, !13, !"_ZN11hex2bin_lib3src3lib7hex2bin17h5759f2917daf494dE: argument 2"}
!18 = !{!15, !17}
!19 = !{!20}
!20 = distinct !{!20, !21, !"_ZN11hex2bin_lib3src3lib7hex2bin17h5759f2917daf494dE: %bin.0"}
!21 = distinct !{!21, !"_ZN11hex2bin_lib3src3lib7hex2bin17h5759f2917daf494dE"}
!22 = !{!23}
!23 = distinct !{!23, !21, !"_ZN11hex2bin_lib3src3lib7hex2bin17h5759f2917daf494dE: %hex.0"}
!24 = !{!20, !25}
!25 = distinct !{!25, !21, !"_ZN11hex2bin_lib3src3lib7hex2bin17h5759f2917daf494dE: argument 2"}
!26 = !{!23, !25}
!27 = !{!28}
!28 = distinct !{!28, !29, !"_ZN11hex2bin_lib3src3lib7hex2bin17h5759f2917daf494dE: %bin.0"}
!29 = distinct !{!29, !"_ZN11hex2bin_lib3src3lib7hex2bin17h5759f2917daf494dE"}
!30 = !{!31}
!31 = distinct !{!31, !29, !"_ZN11hex2bin_lib3src3lib7hex2bin17h5759f2917daf494dE: %hex.0"}
!32 = !{!28, !33}
!33 = distinct !{!33, !29, !"_ZN11hex2bin_lib3src3lib7hex2bin17h5759f2917daf494dE: argument 2"}
!34 = !{!31, !33}
!35 = !{!36, !38}
!36 = distinct !{!36, !37, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h06eafc3b10b5b682E: %a"}
!37 = distinct !{!37, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h06eafc3b10b5b682E"}
!38 = distinct !{!38, !37, !"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h06eafc3b10b5b682E: %b"}
