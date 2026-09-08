; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; ASSERT EQ: i1 1 = call i1 @run_test_1()
; ASSERT EQ: i1 1 = call i1 @run_test_2()
; ASSERT EQ: i1 1 = call i1 @run_test_3()
; ASSERT EQ: i1 1 = call i1 @run_test_4()
; ASSERT EQ: i1 1 = call i1 @run_test_5()

%"src::lib::CpImageT" = type { i32, i32, ptr }
%"src::lib::CpPixelT" = type { i8, i8, i8, i8 }
%"core::mem::maybe_uninit::MaybeUninit<src::lib::CpPixelT>" = type { [4 x i8] }

@alloc_fddaeef1fe1a23c45402ef8f58614acb = private unnamed_addr constant <{ [35 x i8] }> <{ [35 x i8] c"assertion failed: mid <= self.len()" }>, align 1
@alloc_f5ffd2fd1476bab43ad89fb40c72d0c5 = private unnamed_addr constant <{ [10 x i8] }> <{ [10 x i8] c"src/lib.rs" }>, align 1
@alloc_763531c98a623cb6e9a434f053ab51f2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\003\00\00\00+\00\00\00" }>, align 8
@alloc_f3ec06f0b9e8e4bb32e22838361dd7de = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\004\00\00\00\1C\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define void @flip_horizontal(ptr noundef readonly %img) unnamed_addr #0 {
start:
  %_3.not = icmp eq ptr %img, null
  br i1 %_3.not, label %bb2, label %bb1

bb2:                                              ; preds = %bb15.loopexit.i, %bb10.i, %bb5.i, %bb3.i, %bb1, %start
  ret void

bb1:                                              ; preds = %start
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2)
  %u.i = load i32, ptr %img, align 8, !alias.scope !2, !noundef !5
  %_37.i = icmp sgt i32 %u.i, -1
  %_38.i = zext i32 %u.i to i64
  br i1 %_37.i, label %bb3.i, label %bb2

bb3.i:                                            ; preds = %bb1
  %0 = getelementptr inbounds %"src::lib::CpImageT", ptr %img, i64 0, i32 1
  %u2.i = load i32, ptr %0, align 4, !alias.scope !2, !noundef !5
  %_39.i = icmp sgt i32 %u2.i, -1
  %_40.i = zext i32 %u2.i to i64
  br i1 %_39.i, label %bb5.i, label %bb2

bb5.i:                                            ; preds = %bb3.i
  %flips4.i = lshr i64 %_40.i, 1
  %1 = icmp eq i32 %u.i, 0
  %_12.i = icmp eq i32 %u2.i, 0
  %_11.0.i = or i1 %1, %_12.i
  br i1 %_11.0.i, label %bb2, label %bb10.i

bb10.i:                                           ; preds = %bb5.i
  %_47.0.i = mul nuw i64 %_40.i, %_38.i
  %2 = getelementptr inbounds %"src::lib::CpImageT", ptr %img, i64 0, i32 2
  %self3.i = load ptr, ptr %2, align 8, !alias.scope !2, !noundef !5
  %3 = icmp ne ptr %self3.i, null
  %4 = icmp ugt i32 %u2.i, 1
  %or.cond.i = and i1 %4, %3
  br i1 %or.cond.i, label %bb16.preheader.i, label %bb2

bb16.preheader.i:                                 ; preds = %bb10.i
  %umax.i = tail call i64 @llvm.umax.i64(i64 %flips4.i, i64 1)
  %min.iters.check = icmp ult i32 %u.i, 8
  %n.vec = and i64 %_38.i, 4294967288
  %cmp.n = icmp eq i64 %n.vec, %_38.i
  br label %bb16.i

bb15.loopexit.i:                                  ; preds = %bb2.i.i.i.i, %middle.block
  %exitcond.not.i = icmp eq i64 %5, %umax.i
  br i1 %exitcond.not.i, label %bb2, label %bb16.i

bb16.i:                                           ; preds = %bb15.loopexit.i, %bb16.preheader.i
  %iter.sroa.0.026.i = phi i64 [ %5, %bb15.loopexit.i ], [ 0, %bb16.preheader.i ]
  %5 = add nuw nsw i64 %iter.sroa.0.026.i, 1
  %6 = xor i64 %iter.sroa.0.026.i, -1
  %_27.i = add nsw i64 %6, %_40.i
  %bottom_start.i = mul i64 %_27.i, %_38.i
  %_64.not.i = icmp ult i64 %_47.0.i, %bottom_start.i
  br i1 %_64.not.i, label %bb32.i, label %bb2.i7.i

bb2.i7.i:                                         ; preds = %bb16.i
  %top_start.i = mul nuw nsw i64 %iter.sroa.0.026.i, %_38.i
  %7 = getelementptr inbounds %"src::lib::CpPixelT", ptr %self3.i, i64 %bottom_start.i
  %_34.i = add nuw nsw i64 %top_start.i, %_38.i
  %_9.i.i = icmp ugt i64 %_34.i, %bottom_start.i
  br i1 %_9.i.i, label %bb3.i.i, label %bb3.i12.i

bb3.i.i:                                          ; preds = %bb2.i7.i
  tail call void @_ZN4core5slice5index24slice_end_index_len_fail17h63e54c65524702d3E(i64 noundef %_34.i, i64 noundef %bottom_start.i, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_f3ec06f0b9e8e4bb32e22838361dd7de) #5, !noalias !6
  unreachable

bb3.i12.i:                                        ; preds = %bb2.i7.i
  %8 = getelementptr inbounds %"src::lib::CpPixelT", ptr %self3.i, i64 %top_start.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12)
  br i1 %min.iters.check, label %bb2.i.i.i.i.preheader, label %vector.body

vector.body:                                      ; preds = %vector.body, %bb3.i12.i
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %bb3.i12.i ]
  %9 = getelementptr inbounds %"core::mem::maybe_uninit::MaybeUninit<src::lib::CpPixelT>", ptr %8, i64 %index
  %10 = getelementptr inbounds %"core::mem::maybe_uninit::MaybeUninit<src::lib::CpPixelT>", ptr %7, i64 %index
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17)
  %wide.load = load <4 x i32>, ptr %9, align 1, !alias.scope !19, !noalias !20
  %11 = getelementptr inbounds i32, ptr %9, i64 4
  %wide.load13 = load <4 x i32>, ptr %11, align 1, !alias.scope !19, !noalias !20
  %wide.load14 = load <4 x i32>, ptr %10, align 1, !alias.scope !21, !noalias !22
  %12 = getelementptr inbounds i32, ptr %10, i64 4
  %wide.load15 = load <4 x i32>, ptr %12, align 1, !alias.scope !21, !noalias !22
  store <4 x i32> %wide.load14, ptr %9, align 1, !alias.scope !19, !noalias !20
  store <4 x i32> %wide.load15, ptr %11, align 1, !alias.scope !19, !noalias !20
  store <4 x i32> %wide.load, ptr %10, align 1, !alias.scope !21, !noalias !22
  store <4 x i32> %wide.load13, ptr %12, align 1, !alias.scope !21, !noalias !22
  %index.next = add nuw i64 %index, 8
  %13 = icmp eq i64 %index.next, %n.vec
  br i1 %13, label %middle.block, label %vector.body, !llvm.loop !23

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %bb15.loopexit.i, label %bb2.i.i.i.i.preheader

bb2.i.i.i.i.preheader:                            ; preds = %middle.block, %bb3.i12.i
  %i.07.i.i.i.i.ph = phi i64 [ 0, %bb3.i12.i ], [ %n.vec, %middle.block ]
  br label %bb2.i.i.i.i

bb2.i.i.i.i:                                      ; preds = %bb2.i.i.i.i, %bb2.i.i.i.i.preheader
  %i.07.i.i.i.i = phi i64 [ %16, %bb2.i.i.i.i ], [ %i.07.i.i.i.i.ph, %bb2.i.i.i.i.preheader ]
  %14 = getelementptr inbounds %"core::mem::maybe_uninit::MaybeUninit<src::lib::CpPixelT>", ptr %8, i64 %i.07.i.i.i.i
  %15 = getelementptr inbounds %"core::mem::maybe_uninit::MaybeUninit<src::lib::CpPixelT>", ptr %7, i64 %i.07.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17)
  %a.sroa.0.0.copyload.i.i.i.i.i = load i32, ptr %14, align 1, !alias.scope !19, !noalias !20
  %b.sroa.0.0.copyload.i.i.i.i.i = load i32, ptr %15, align 1, !alias.scope !21, !noalias !22
  store i32 %b.sroa.0.0.copyload.i.i.i.i.i, ptr %14, align 1, !alias.scope !19, !noalias !20
  store i32 %a.sroa.0.0.copyload.i.i.i.i.i, ptr %15, align 1, !alias.scope !21, !noalias !22
  %16 = add nuw nsw i64 %i.07.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i64 %16, %_38.i
  br i1 %exitcond.not.i.i.i.i, label %bb15.loopexit.i, label %bb2.i.i.i.i, !llvm.loop !26

bb32.i:                                           ; preds = %bb16.i
  tail call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr noalias noundef nonnull readonly align 1 @alloc_fddaeef1fe1a23c45402ef8f58614acb, i64 noundef 35, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_763531c98a623cb6e9a434f053ab51f2) #5, !noalias !2
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice5index24slice_end_index_len_fail17h63e54c65524702d3E(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr noalias noundef nonnull readonly align 1, i64 noundef, ptr noalias noundef readonly align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @run_test_1() unnamed_addr #0 {
bb3.i12.i.i.1:
  %pix.sroa.0 = alloca [4 x %"src::lib::CpPixelT"], align 16
  %pix.sroa.22 = alloca [4 x %"src::lib::CpPixelT"], align 16
  %pix.sroa.41 = alloca [4 x %"src::lib::CpPixelT"], align 16
  %pix.sroa.60 = alloca [4 x %"src::lib::CpPixelT"], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix.sroa.0)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix.sroa.22)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix.sroa.41)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix.sroa.60)
  store <16 x i8> <i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16>, ptr %pix.sroa.0, align 16
  store <16 x i8> <i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32>, ptr %pix.sroa.22, align 16
  store <16 x i8> <i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48>, ptr %pix.sroa.41, align 16
  store <16 x i8> <i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63, i8 64>, ptr %pix.sroa.60, align 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30)
  store <4 x i32> <i32 875770417, i32 943142453, i32 1010514489, i32 1077886525>, ptr %pix.sroa.0, align 16, !alias.scope !32, !noalias !38
  store <4 x i32> <i32 67305985, i32 134678021, i32 202050057, i32 269422093>, ptr %pix.sroa.60, align 16, !alias.scope !41, !noalias !46
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  %pix.sroa.41.0.pix.sroa.41.32. = load <4 x i32>, ptr %pix.sroa.41, align 16, !alias.scope !51, !noalias !56
  %pix.sroa.22.0.pix.sroa.22.16. = load <4 x i32>, ptr %pix.sroa.22, align 16, !alias.scope !57, !noalias !62
  store <4 x i32> %pix.sroa.41.0.pix.sroa.41.32., ptr %pix.sroa.22, align 16, !alias.scope !57, !noalias !62
  store <4 x i32> %pix.sroa.22.0.pix.sroa.22.16., ptr %pix.sroa.41, align 16, !alias.scope !51, !noalias !56
  %pix.sroa.0.0.pix.sroa.0.0._52 = load i8, ptr %pix.sroa.0, align 16
  %_51.not = icmp eq i8 %pix.sroa.0.0.pix.sroa.0.0._52, 49
  %pix.sroa.0.1.sroa_idx27 = getelementptr inbounds i8, ptr %pix.sroa.0, i64 1
  %pix.sroa.0.1.pix.sroa.0.1._59 = load i8, ptr %pix.sroa.0.1.sroa_idx27, align 1
  %_58.not = icmp eq i8 %pix.sroa.0.1.pix.sroa.0.1._59, 50
  %or.cond = select i1 %_51.not, i1 %_58.not, i1 false
  %pix.sroa.0.2.sroa_idx28 = getelementptr inbounds i8, ptr %pix.sroa.0, i64 2
  %pix.sroa.0.2.pix.sroa.0.2._66 = load i8, ptr %pix.sroa.0.2.sroa_idx28, align 2
  %_65.not = icmp eq i8 %pix.sroa.0.2.pix.sroa.0.2._66, 51
  %or.cond42 = select i1 %or.cond, i1 %_65.not, i1 false
  %pix.sroa.0.3.sroa_idx29 = getelementptr inbounds i8, ptr %pix.sroa.0, i64 3
  %pix.sroa.0.3.pix.sroa.0.3._73 = load i8, ptr %pix.sroa.0.3.sroa_idx29, align 1
  %_72.not = icmp eq i8 %pix.sroa.0.3.pix.sroa.0.3._73, 52
  %or.cond43 = select i1 %or.cond42, i1 %_72.not, i1 false
  br i1 %or.cond43, label %bb15.1, label %bb23

bb15.1:                                           ; preds = %bb3.i12.i.i.1
  %pix.sroa.0.4.sroa_idx30 = getelementptr inbounds i8, ptr %pix.sroa.0, i64 4
  %pix.sroa.0.4.pix.sroa.0.4._52.1 = load i8, ptr %pix.sroa.0.4.sroa_idx30, align 4
  %_51.not.1 = icmp eq i8 %pix.sroa.0.4.pix.sroa.0.4._52.1, 53
  %pix.sroa.0.5.sroa_idx31 = getelementptr inbounds i8, ptr %pix.sroa.0, i64 5
  %pix.sroa.0.5.pix.sroa.0.5._59.1 = load i8, ptr %pix.sroa.0.5.sroa_idx31, align 1
  %_58.not.1 = icmp eq i8 %pix.sroa.0.5.pix.sroa.0.5._59.1, 54
  %or.cond44 = select i1 %_51.not.1, i1 %_58.not.1, i1 false
  %pix.sroa.0.6.sroa_idx32 = getelementptr inbounds i8, ptr %pix.sroa.0, i64 6
  %pix.sroa.0.6.pix.sroa.0.6._66.1 = load i8, ptr %pix.sroa.0.6.sroa_idx32, align 2
  %_65.not.1 = icmp eq i8 %pix.sroa.0.6.pix.sroa.0.6._66.1, 55
  %or.cond45 = select i1 %or.cond44, i1 %_65.not.1, i1 false
  %pix.sroa.0.7.sroa_idx33 = getelementptr inbounds i8, ptr %pix.sroa.0, i64 7
  %pix.sroa.0.7.pix.sroa.0.7._73.1 = load i8, ptr %pix.sroa.0.7.sroa_idx33, align 1
  %_72.not.1 = icmp eq i8 %pix.sroa.0.7.pix.sroa.0.7._73.1, 56
  %or.cond46 = select i1 %or.cond45, i1 %_72.not.1, i1 false
  br i1 %or.cond46, label %bb15.2, label %bb23

bb15.2:                                           ; preds = %bb15.1
  %pix.sroa.0.8.sroa_idx34 = getelementptr inbounds i8, ptr %pix.sroa.0, i64 8
  %pix.sroa.0.8.pix.sroa.0.8._52.2 = load i8, ptr %pix.sroa.0.8.sroa_idx34, align 8
  %_51.not.2 = icmp eq i8 %pix.sroa.0.8.pix.sroa.0.8._52.2, 57
  %pix.sroa.0.9.sroa_idx35 = getelementptr inbounds i8, ptr %pix.sroa.0, i64 9
  %pix.sroa.0.9.pix.sroa.0.9._59.2 = load i8, ptr %pix.sroa.0.9.sroa_idx35, align 1
  %_58.not.2 = icmp eq i8 %pix.sroa.0.9.pix.sroa.0.9._59.2, 58
  %or.cond47 = select i1 %_51.not.2, i1 %_58.not.2, i1 false
  %pix.sroa.0.10.sroa_idx36 = getelementptr inbounds i8, ptr %pix.sroa.0, i64 10
  %pix.sroa.0.10.pix.sroa.0.10._66.2 = load i8, ptr %pix.sroa.0.10.sroa_idx36, align 2
  %_65.not.2 = icmp eq i8 %pix.sroa.0.10.pix.sroa.0.10._66.2, 59
  %or.cond48 = select i1 %or.cond47, i1 %_65.not.2, i1 false
  %pix.sroa.0.11.sroa_idx37 = getelementptr inbounds i8, ptr %pix.sroa.0, i64 11
  %pix.sroa.0.11.pix.sroa.0.11._73.2 = load i8, ptr %pix.sroa.0.11.sroa_idx37, align 1
  %_72.not.2 = icmp eq i8 %pix.sroa.0.11.pix.sroa.0.11._73.2, 60
  %or.cond49 = select i1 %or.cond48, i1 %_72.not.2, i1 false
  br i1 %or.cond49, label %bb15.3, label %bb23

bb15.3:                                           ; preds = %bb15.2
  %pix.sroa.0.12.sroa_idx38 = getelementptr inbounds i8, ptr %pix.sroa.0, i64 12
  %pix.sroa.0.12.pix.sroa.0.12._52.3 = load i8, ptr %pix.sroa.0.12.sroa_idx38, align 4
  %_51.not.3 = icmp eq i8 %pix.sroa.0.12.pix.sroa.0.12._52.3, 61
  %pix.sroa.0.13.sroa_idx39 = getelementptr inbounds i8, ptr %pix.sroa.0, i64 13
  %pix.sroa.0.13.pix.sroa.0.13._59.3 = load i8, ptr %pix.sroa.0.13.sroa_idx39, align 1
  %_58.not.3 = icmp eq i8 %pix.sroa.0.13.pix.sroa.0.13._59.3, 62
  %or.cond50 = select i1 %_51.not.3, i1 %_58.not.3, i1 false
  %pix.sroa.0.14.sroa_idx40 = getelementptr inbounds i8, ptr %pix.sroa.0, i64 14
  %pix.sroa.0.14.pix.sroa.0.14._66.3 = load i8, ptr %pix.sroa.0.14.sroa_idx40, align 2
  %_65.not.3 = icmp eq i8 %pix.sroa.0.14.pix.sroa.0.14._66.3, 63
  %or.cond51 = select i1 %or.cond50, i1 %_65.not.3, i1 false
  %pix.sroa.0.15.sroa_idx41 = getelementptr inbounds i8, ptr %pix.sroa.0, i64 15
  %pix.sroa.0.15.pix.sroa.0.15._73.3 = load i8, ptr %pix.sroa.0.15.sroa_idx41, align 1
  %_72.not.3 = icmp eq i8 %pix.sroa.0.15.pix.sroa.0.15._73.3, 64
  %or.cond52 = select i1 %or.cond51, i1 %_72.not.3, i1 false
  br i1 %or.cond52, label %bb15.4, label %bb23

bb15.4:                                           ; preds = %bb15.3
  %pix.sroa.22.0.pix.sroa.22.16._52.4 = load i8, ptr %pix.sroa.22, align 16
  %_51.not.4 = icmp eq i8 %pix.sroa.22.0.pix.sroa.22.16._52.4, 33
  %pix.sroa.22.1.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.22, i64 1
  %pix.sroa.22.1.pix.sroa.22.17._59.4 = load i8, ptr %pix.sroa.22.1.sroa_idx, align 1
  %_58.not.4 = icmp eq i8 %pix.sroa.22.1.pix.sroa.22.17._59.4, 34
  %or.cond53 = select i1 %_51.not.4, i1 %_58.not.4, i1 false
  %pix.sroa.22.2.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.22, i64 2
  %pix.sroa.22.2.pix.sroa.22.18._66.4 = load i8, ptr %pix.sroa.22.2.sroa_idx, align 2
  %_65.not.4 = icmp eq i8 %pix.sroa.22.2.pix.sroa.22.18._66.4, 35
  %or.cond54 = select i1 %or.cond53, i1 %_65.not.4, i1 false
  %pix.sroa.22.3.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.22, i64 3
  %pix.sroa.22.3.pix.sroa.22.19._73.4 = load i8, ptr %pix.sroa.22.3.sroa_idx, align 1
  %_72.not.4 = icmp eq i8 %pix.sroa.22.3.pix.sroa.22.19._73.4, 36
  %or.cond55 = select i1 %or.cond54, i1 %_72.not.4, i1 false
  br i1 %or.cond55, label %bb15.5, label %bb23

bb15.5:                                           ; preds = %bb15.4
  %pix.sroa.22.4.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.22, i64 4
  %pix.sroa.22.4.pix.sroa.22.20._52.5 = load i8, ptr %pix.sroa.22.4.sroa_idx, align 4
  %_51.not.5 = icmp eq i8 %pix.sroa.22.4.pix.sroa.22.20._52.5, 37
  %pix.sroa.22.5.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.22, i64 5
  %pix.sroa.22.5.pix.sroa.22.21._59.5 = load i8, ptr %pix.sroa.22.5.sroa_idx, align 1
  %_58.not.5 = icmp eq i8 %pix.sroa.22.5.pix.sroa.22.21._59.5, 38
  %or.cond56 = select i1 %_51.not.5, i1 %_58.not.5, i1 false
  %pix.sroa.22.6.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.22, i64 6
  %pix.sroa.22.6.pix.sroa.22.22._66.5 = load i8, ptr %pix.sroa.22.6.sroa_idx, align 2
  %_65.not.5 = icmp eq i8 %pix.sroa.22.6.pix.sroa.22.22._66.5, 39
  %or.cond57 = select i1 %or.cond56, i1 %_65.not.5, i1 false
  %pix.sroa.22.7.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.22, i64 7
  %pix.sroa.22.7.pix.sroa.22.23._73.5 = load i8, ptr %pix.sroa.22.7.sroa_idx, align 1
  %_72.not.5 = icmp eq i8 %pix.sroa.22.7.pix.sroa.22.23._73.5, 40
  %or.cond58 = select i1 %or.cond57, i1 %_72.not.5, i1 false
  br i1 %or.cond58, label %bb15.6, label %bb23

bb15.6:                                           ; preds = %bb15.5
  %pix.sroa.22.8.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.22, i64 8
  %pix.sroa.22.8.pix.sroa.22.24._52.6 = load i8, ptr %pix.sroa.22.8.sroa_idx, align 8
  %_51.not.6 = icmp eq i8 %pix.sroa.22.8.pix.sroa.22.24._52.6, 41
  %pix.sroa.22.9.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.22, i64 9
  %pix.sroa.22.9.pix.sroa.22.25._59.6 = load i8, ptr %pix.sroa.22.9.sroa_idx, align 1
  %_58.not.6 = icmp eq i8 %pix.sroa.22.9.pix.sroa.22.25._59.6, 42
  %or.cond59 = select i1 %_51.not.6, i1 %_58.not.6, i1 false
  %pix.sroa.22.10.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.22, i64 10
  %pix.sroa.22.10.pix.sroa.22.26._66.6 = load i8, ptr %pix.sroa.22.10.sroa_idx, align 2
  %_65.not.6 = icmp eq i8 %pix.sroa.22.10.pix.sroa.22.26._66.6, 43
  %or.cond60 = select i1 %or.cond59, i1 %_65.not.6, i1 false
  %pix.sroa.22.11.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.22, i64 11
  %pix.sroa.22.11.pix.sroa.22.27._73.6 = load i8, ptr %pix.sroa.22.11.sroa_idx, align 1
  %_72.not.6 = icmp eq i8 %pix.sroa.22.11.pix.sroa.22.27._73.6, 44
  %or.cond61 = select i1 %or.cond60, i1 %_72.not.6, i1 false
  br i1 %or.cond61, label %bb15.7, label %bb23

bb15.7:                                           ; preds = %bb15.6
  %pix.sroa.22.12.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.22, i64 12
  %pix.sroa.22.12.pix.sroa.22.28._52.7 = load i8, ptr %pix.sroa.22.12.sroa_idx, align 4
  %_51.not.7 = icmp eq i8 %pix.sroa.22.12.pix.sroa.22.28._52.7, 45
  %pix.sroa.22.13.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.22, i64 13
  %pix.sroa.22.13.pix.sroa.22.29._59.7 = load i8, ptr %pix.sroa.22.13.sroa_idx, align 1
  %_58.not.7 = icmp eq i8 %pix.sroa.22.13.pix.sroa.22.29._59.7, 46
  %or.cond62 = select i1 %_51.not.7, i1 %_58.not.7, i1 false
  %pix.sroa.22.14.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.22, i64 14
  %pix.sroa.22.14.pix.sroa.22.30._66.7 = load i8, ptr %pix.sroa.22.14.sroa_idx, align 2
  %_65.not.7 = icmp eq i8 %pix.sroa.22.14.pix.sroa.22.30._66.7, 47
  %or.cond63 = select i1 %or.cond62, i1 %_65.not.7, i1 false
  %pix.sroa.22.15.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.22, i64 15
  %pix.sroa.22.15.pix.sroa.22.31._73.7 = load i8, ptr %pix.sroa.22.15.sroa_idx, align 1
  %_72.not.7 = icmp eq i8 %pix.sroa.22.15.pix.sroa.22.31._73.7, 48
  %or.cond64 = select i1 %or.cond63, i1 %_72.not.7, i1 false
  br i1 %or.cond64, label %bb15.8, label %bb23

bb15.8:                                           ; preds = %bb15.7
  %pix.sroa.41.0.pix.sroa.41.32._52.8 = load i8, ptr %pix.sroa.41, align 16
  %_51.not.8 = icmp eq i8 %pix.sroa.41.0.pix.sroa.41.32._52.8, 17
  %pix.sroa.41.1.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.41, i64 1
  %pix.sroa.41.1.pix.sroa.41.33._59.8 = load i8, ptr %pix.sroa.41.1.sroa_idx, align 1
  %_58.not.8 = icmp eq i8 %pix.sroa.41.1.pix.sroa.41.33._59.8, 18
  %or.cond65 = select i1 %_51.not.8, i1 %_58.not.8, i1 false
  %pix.sroa.41.2.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.41, i64 2
  %pix.sroa.41.2.pix.sroa.41.34._66.8 = load i8, ptr %pix.sroa.41.2.sroa_idx, align 2
  %_65.not.8 = icmp eq i8 %pix.sroa.41.2.pix.sroa.41.34._66.8, 19
  %or.cond66 = select i1 %or.cond65, i1 %_65.not.8, i1 false
  %pix.sroa.41.3.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.41, i64 3
  %pix.sroa.41.3.pix.sroa.41.35._73.8 = load i8, ptr %pix.sroa.41.3.sroa_idx, align 1
  %_72.not.8 = icmp eq i8 %pix.sroa.41.3.pix.sroa.41.35._73.8, 20
  %or.cond67 = select i1 %or.cond66, i1 %_72.not.8, i1 false
  br i1 %or.cond67, label %bb15.9, label %bb23

bb15.9:                                           ; preds = %bb15.8
  %pix.sroa.41.4.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.41, i64 4
  %pix.sroa.41.4.pix.sroa.41.36._52.9 = load i8, ptr %pix.sroa.41.4.sroa_idx, align 4
  %_51.not.9 = icmp eq i8 %pix.sroa.41.4.pix.sroa.41.36._52.9, 21
  %pix.sroa.41.5.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.41, i64 5
  %pix.sroa.41.5.pix.sroa.41.37._59.9 = load i8, ptr %pix.sroa.41.5.sroa_idx, align 1
  %_58.not.9 = icmp eq i8 %pix.sroa.41.5.pix.sroa.41.37._59.9, 22
  %or.cond68 = select i1 %_51.not.9, i1 %_58.not.9, i1 false
  %pix.sroa.41.6.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.41, i64 6
  %pix.sroa.41.6.pix.sroa.41.38._66.9 = load i8, ptr %pix.sroa.41.6.sroa_idx, align 2
  %_65.not.9 = icmp eq i8 %pix.sroa.41.6.pix.sroa.41.38._66.9, 23
  %or.cond69 = select i1 %or.cond68, i1 %_65.not.9, i1 false
  %pix.sroa.41.7.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.41, i64 7
  %pix.sroa.41.7.pix.sroa.41.39._73.9 = load i8, ptr %pix.sroa.41.7.sroa_idx, align 1
  %_72.not.9 = icmp eq i8 %pix.sroa.41.7.pix.sroa.41.39._73.9, 24
  %or.cond70 = select i1 %or.cond69, i1 %_72.not.9, i1 false
  br i1 %or.cond70, label %bb15.10, label %bb23

bb15.10:                                          ; preds = %bb15.9
  %pix.sroa.41.8.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.41, i64 8
  %pix.sroa.41.8.pix.sroa.41.40._52.10 = load i8, ptr %pix.sroa.41.8.sroa_idx, align 8
  %_51.not.10 = icmp eq i8 %pix.sroa.41.8.pix.sroa.41.40._52.10, 25
  %pix.sroa.41.9.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.41, i64 9
  %pix.sroa.41.9.pix.sroa.41.41._59.10 = load i8, ptr %pix.sroa.41.9.sroa_idx, align 1
  %_58.not.10 = icmp eq i8 %pix.sroa.41.9.pix.sroa.41.41._59.10, 26
  %or.cond71 = select i1 %_51.not.10, i1 %_58.not.10, i1 false
  %pix.sroa.41.10.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.41, i64 10
  %pix.sroa.41.10.pix.sroa.41.42._66.10 = load i8, ptr %pix.sroa.41.10.sroa_idx, align 2
  %_65.not.10 = icmp eq i8 %pix.sroa.41.10.pix.sroa.41.42._66.10, 27
  %or.cond72 = select i1 %or.cond71, i1 %_65.not.10, i1 false
  %pix.sroa.41.11.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.41, i64 11
  %pix.sroa.41.11.pix.sroa.41.43._73.10 = load i8, ptr %pix.sroa.41.11.sroa_idx, align 1
  %_72.not.10 = icmp eq i8 %pix.sroa.41.11.pix.sroa.41.43._73.10, 28
  %or.cond73 = select i1 %or.cond72, i1 %_72.not.10, i1 false
  br i1 %or.cond73, label %bb15.11, label %bb23

bb15.11:                                          ; preds = %bb15.10
  %pix.sroa.41.12.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.41, i64 12
  %pix.sroa.41.12.pix.sroa.41.44._52.11 = load i8, ptr %pix.sroa.41.12.sroa_idx, align 4
  %_51.not.11 = icmp eq i8 %pix.sroa.41.12.pix.sroa.41.44._52.11, 29
  %pix.sroa.41.13.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.41, i64 13
  %pix.sroa.41.13.pix.sroa.41.45._59.11 = load i8, ptr %pix.sroa.41.13.sroa_idx, align 1
  %_58.not.11 = icmp eq i8 %pix.sroa.41.13.pix.sroa.41.45._59.11, 30
  %or.cond74 = select i1 %_51.not.11, i1 %_58.not.11, i1 false
  %pix.sroa.41.14.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.41, i64 14
  %pix.sroa.41.14.pix.sroa.41.46._66.11 = load i8, ptr %pix.sroa.41.14.sroa_idx, align 2
  %_65.not.11 = icmp eq i8 %pix.sroa.41.14.pix.sroa.41.46._66.11, 31
  %or.cond75 = select i1 %or.cond74, i1 %_65.not.11, i1 false
  %pix.sroa.41.15.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.41, i64 15
  %pix.sroa.41.15.pix.sroa.41.47._73.11 = load i8, ptr %pix.sroa.41.15.sroa_idx, align 1
  %_72.not.11 = icmp eq i8 %pix.sroa.41.15.pix.sroa.41.47._73.11, 32
  %or.cond76 = select i1 %or.cond75, i1 %_72.not.11, i1 false
  br i1 %or.cond76, label %bb15.12, label %bb23

bb15.12:                                          ; preds = %bb15.11
  %pix.sroa.60.0.pix.sroa.60.48._52.12 = load i8, ptr %pix.sroa.60, align 16
  %_51.not.12 = icmp eq i8 %pix.sroa.60.0.pix.sroa.60.48._52.12, 1
  %pix.sroa.60.1.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.60, i64 1
  %pix.sroa.60.1.pix.sroa.60.49._59.12 = load i8, ptr %pix.sroa.60.1.sroa_idx, align 1
  %_58.not.12 = icmp eq i8 %pix.sroa.60.1.pix.sroa.60.49._59.12, 2
  %or.cond77 = select i1 %_51.not.12, i1 %_58.not.12, i1 false
  %pix.sroa.60.2.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.60, i64 2
  %pix.sroa.60.2.pix.sroa.60.50._66.12 = load i8, ptr %pix.sroa.60.2.sroa_idx, align 2
  %_65.not.12 = icmp eq i8 %pix.sroa.60.2.pix.sroa.60.50._66.12, 3
  %or.cond78 = select i1 %or.cond77, i1 %_65.not.12, i1 false
  %pix.sroa.60.3.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.60, i64 3
  %pix.sroa.60.3.pix.sroa.60.51._73.12 = load i8, ptr %pix.sroa.60.3.sroa_idx, align 1
  %_72.not.12 = icmp eq i8 %pix.sroa.60.3.pix.sroa.60.51._73.12, 4
  %or.cond79 = select i1 %or.cond78, i1 %_72.not.12, i1 false
  br i1 %or.cond79, label %bb15.13, label %bb23

bb15.13:                                          ; preds = %bb15.12
  %pix.sroa.60.4.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.60, i64 4
  %pix.sroa.60.4.pix.sroa.60.52._52.13 = load i8, ptr %pix.sroa.60.4.sroa_idx, align 4
  %_51.not.13 = icmp eq i8 %pix.sroa.60.4.pix.sroa.60.52._52.13, 5
  %pix.sroa.60.5.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.60, i64 5
  %pix.sroa.60.5.pix.sroa.60.53._59.13 = load i8, ptr %pix.sroa.60.5.sroa_idx, align 1
  %_58.not.13 = icmp eq i8 %pix.sroa.60.5.pix.sroa.60.53._59.13, 6
  %or.cond80 = select i1 %_51.not.13, i1 %_58.not.13, i1 false
  %pix.sroa.60.6.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.60, i64 6
  %pix.sroa.60.6.pix.sroa.60.54._66.13 = load i8, ptr %pix.sroa.60.6.sroa_idx, align 2
  %_65.not.13 = icmp eq i8 %pix.sroa.60.6.pix.sroa.60.54._66.13, 7
  %or.cond81 = select i1 %or.cond80, i1 %_65.not.13, i1 false
  %pix.sroa.60.7.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.60, i64 7
  %pix.sroa.60.7.pix.sroa.60.55._73.13 = load i8, ptr %pix.sroa.60.7.sroa_idx, align 1
  %_72.not.13 = icmp eq i8 %pix.sroa.60.7.pix.sroa.60.55._73.13, 8
  %or.cond82 = select i1 %or.cond81, i1 %_72.not.13, i1 false
  br i1 %or.cond82, label %bb15.14, label %bb23

bb15.14:                                          ; preds = %bb15.13
  %pix.sroa.60.8.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.60, i64 8
  %pix.sroa.60.8.pix.sroa.60.56._52.14 = load i8, ptr %pix.sroa.60.8.sroa_idx, align 8
  %_51.not.14 = icmp eq i8 %pix.sroa.60.8.pix.sroa.60.56._52.14, 9
  %pix.sroa.60.9.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.60, i64 9
  %pix.sroa.60.9.pix.sroa.60.57._59.14 = load i8, ptr %pix.sroa.60.9.sroa_idx, align 1
  %_58.not.14 = icmp eq i8 %pix.sroa.60.9.pix.sroa.60.57._59.14, 10
  %or.cond83 = select i1 %_51.not.14, i1 %_58.not.14, i1 false
  %pix.sroa.60.10.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.60, i64 10
  %pix.sroa.60.10.pix.sroa.60.58._66.14 = load i8, ptr %pix.sroa.60.10.sroa_idx, align 2
  %_65.not.14 = icmp eq i8 %pix.sroa.60.10.pix.sroa.60.58._66.14, 11
  %or.cond84 = select i1 %or.cond83, i1 %_65.not.14, i1 false
  %pix.sroa.60.11.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.60, i64 11
  %pix.sroa.60.11.pix.sroa.60.59._73.14 = load i8, ptr %pix.sroa.60.11.sroa_idx, align 1
  %_72.not.14 = icmp eq i8 %pix.sroa.60.11.pix.sroa.60.59._73.14, 12
  %or.cond85 = select i1 %or.cond84, i1 %_72.not.14, i1 false
  br i1 %or.cond85, label %bb15.15, label %bb23

bb15.15:                                          ; preds = %bb15.14
  %pix.sroa.60.12.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.60, i64 12
  %pix.sroa.60.12.pix.sroa.60.60._52.15 = load i8, ptr %pix.sroa.60.12.sroa_idx, align 4
  %_51.not.15 = icmp eq i8 %pix.sroa.60.12.pix.sroa.60.60._52.15, 13
  %pix.sroa.60.13.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.60, i64 13
  %pix.sroa.60.13.pix.sroa.60.61._59.15 = load i8, ptr %pix.sroa.60.13.sroa_idx, align 1
  %_58.not.15 = icmp eq i8 %pix.sroa.60.13.pix.sroa.60.61._59.15, 14
  %or.cond86 = select i1 %_51.not.15, i1 %_58.not.15, i1 false
  %pix.sroa.60.14.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.60, i64 14
  %pix.sroa.60.14.pix.sroa.60.62._66.15 = load i8, ptr %pix.sroa.60.14.sroa_idx, align 2
  %_65.not.15 = icmp eq i8 %pix.sroa.60.14.pix.sroa.60.62._66.15, 15
  %or.cond87 = select i1 %or.cond86, i1 %_65.not.15, i1 false
  %pix.sroa.60.15.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.60, i64 15
  %pix.sroa.60.15.pix.sroa.60.63._73.15 = load i8, ptr %pix.sroa.60.15.sroa_idx, align 1
  %_72.not.15 = icmp eq i8 %pix.sroa.60.15.pix.sroa.60.63._73.15, 16
  %or.cond88 = select i1 %or.cond87, i1 %_72.not.15, i1 false
  br i1 %or.cond88, label %bb2.16, label %bb23

bb2.16:                                           ; preds = %bb15.15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix.sroa.0)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix.sroa.22)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix.sroa.41)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix.sroa.60)
  br label %bb25

bb23:                                             ; preds = %bb15.15, %bb15.14, %bb15.13, %bb15.12, %bb15.11, %bb15.10, %bb15.9, %bb15.8, %bb15.7, %bb15.6, %bb15.5, %bb15.4, %bb15.3, %bb15.2, %bb15.1, %bb3.i12.i.i.1
  %iter.sroa.0.0.lcssa25 = phi i64 [ 0, %bb3.i12.i.i.1 ], [ 1, %bb15.1 ], [ 2, %bb15.2 ], [ 3, %bb15.3 ], [ 4, %bb15.4 ], [ 5, %bb15.5 ], [ 6, %bb15.6 ], [ 7, %bb15.7 ], [ 8, %bb15.8 ], [ 9, %bb15.9 ], [ 10, %bb15.10 ], [ 11, %bb15.11 ], [ 12, %bb15.12 ], [ 13, %bb15.13 ], [ 14, %bb15.14 ], [ 15, %bb15.15 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix.sroa.0)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix.sroa.22)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix.sroa.41)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix.sroa.60)
  br label %bb25

bb25:                                             ; preds = %bb23, %bb2.16
  %iter.sroa.0.026 = phi i64 [ 16, %bb2.16 ], [ %iter.sroa.0.0.lcssa25, %bb23 ]
  %0 = icmp ugt i64 %iter.sroa.0.026, 15
  ret i1 %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @run_test_2() unnamed_addr #0 {
bb3.i12.i.i.3:
  %pix.sroa.0 = alloca [4 x %"src::lib::CpPixelT"], align 16
  %pix.sroa.22 = alloca [4 x %"src::lib::CpPixelT"], align 16
  %pix.sroa.41 = alloca [4 x %"src::lib::CpPixelT"], align 16
  %pix.sroa.60 = alloca [4 x %"src::lib::CpPixelT"], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix.sroa.0)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix.sroa.22)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix.sroa.41)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix.sroa.60)
  store <16 x i8> <i8 -8, i8 -25, i8 -43, i8 9, i8 115, i8 -116, i8 85, i8 -121, i8 -27, i8 -16, i8 -6, i8 -122, i8 0, i8 -64, i8 -98, i8 -106>, ptr %pix.sroa.0, align 16
  store <16 x i8> <i8 -7, i8 16, i8 -116, i8 27, i8 -85, i8 24, i8 -91, i8 2, i8 -45, i8 -23, i8 -81, i8 -77, i8 64, i8 -85, i8 4, i8 46>, ptr %pix.sroa.22, align 16
  store <16 x i8> <i8 5, i8 -37, i8 -116, i8 -121, i8 -75, i8 -116, i8 -83, i8 -57, i8 64, i8 8, i8 40, i8 116, i8 -65, i8 -78, i8 62, i8 -96>, ptr %pix.sroa.41, align 16
  store <16 x i8> <i8 -10, i8 -111, i8 59, i8 -7, i8 -11, i8 13, i8 102, i8 -65, i8 -87, i8 -103, i8 -88, i8 -82, i8 122, i8 -10, i8 -58, i8 98>, ptr %pix.sroa.60, align 16
  store <4 x i32> <i32 -1364682327, i32 1657206394, i32 -113536522, i32 -1083830795>, ptr %pix.sroa.0, align 16, !alias.scope !63, !noalias !72
  store <4 x i32> <i32 -2030374683, i32 -1767981056, i32 165013496, i32 -2024436621>, ptr %pix.sroa.60, align 16, !alias.scope !75, !noalias !72
  store <4 x i32> <i32 1948780608, i32 -1606503745, i32 -2020812027, i32 -944927563>, ptr %pix.sroa.22, align 16, !alias.scope !82, !noalias !72
  store <4 x i32> <i32 -1280316973, i32 772057920, i32 462164217, i32 44374187>, ptr %pix.sroa.41, align 16, !alias.scope !89, !noalias !72
  %pix.sroa.0.0.pix.sroa.0.0._52 = load i8, ptr %pix.sroa.0, align 16
  %_51.not = icmp eq i8 %pix.sroa.0.0.pix.sroa.0.0._52, -87
  %pix.sroa.0.1.sroa_idx27 = getelementptr inbounds i8, ptr %pix.sroa.0, i64 1
  %pix.sroa.0.1.pix.sroa.0.1._59 = load i8, ptr %pix.sroa.0.1.sroa_idx27, align 1
  %_58.not = icmp eq i8 %pix.sroa.0.1.pix.sroa.0.1._59, -103
  %or.cond = select i1 %_51.not, i1 %_58.not, i1 false
  %pix.sroa.0.2.sroa_idx28 = getelementptr inbounds i8, ptr %pix.sroa.0, i64 2
  %pix.sroa.0.2.pix.sroa.0.2._66 = load i8, ptr %pix.sroa.0.2.sroa_idx28, align 2
  %_65.not = icmp eq i8 %pix.sroa.0.2.pix.sroa.0.2._66, -88
  %or.cond42 = select i1 %or.cond, i1 %_65.not, i1 false
  %pix.sroa.0.3.sroa_idx29 = getelementptr inbounds i8, ptr %pix.sroa.0, i64 3
  %pix.sroa.0.3.pix.sroa.0.3._73 = load i8, ptr %pix.sroa.0.3.sroa_idx29, align 1
  %_72.not = icmp eq i8 %pix.sroa.0.3.pix.sroa.0.3._73, -82
  %or.cond43 = select i1 %or.cond42, i1 %_72.not, i1 false
  br i1 %or.cond43, label %bb15.1, label %bb23

bb15.1:                                           ; preds = %bb3.i12.i.i.3
  %pix.sroa.0.4.sroa_idx30 = getelementptr inbounds i8, ptr %pix.sroa.0, i64 4
  %pix.sroa.0.4.pix.sroa.0.4._52.1 = load i8, ptr %pix.sroa.0.4.sroa_idx30, align 4
  %_51.not.1 = icmp eq i8 %pix.sroa.0.4.pix.sroa.0.4._52.1, 122
  %pix.sroa.0.5.sroa_idx31 = getelementptr inbounds i8, ptr %pix.sroa.0, i64 5
  %pix.sroa.0.5.pix.sroa.0.5._59.1 = load i8, ptr %pix.sroa.0.5.sroa_idx31, align 1
  %_58.not.1 = icmp eq i8 %pix.sroa.0.5.pix.sroa.0.5._59.1, -10
  %or.cond44 = select i1 %_51.not.1, i1 %_58.not.1, i1 false
  %pix.sroa.0.6.sroa_idx32 = getelementptr inbounds i8, ptr %pix.sroa.0, i64 6
  %pix.sroa.0.6.pix.sroa.0.6._66.1 = load i8, ptr %pix.sroa.0.6.sroa_idx32, align 2
  %_65.not.1 = icmp eq i8 %pix.sroa.0.6.pix.sroa.0.6._66.1, -58
  %or.cond45 = select i1 %or.cond44, i1 %_65.not.1, i1 false
  %pix.sroa.0.7.sroa_idx33 = getelementptr inbounds i8, ptr %pix.sroa.0, i64 7
  %pix.sroa.0.7.pix.sroa.0.7._73.1 = load i8, ptr %pix.sroa.0.7.sroa_idx33, align 1
  %_72.not.1 = icmp eq i8 %pix.sroa.0.7.pix.sroa.0.7._73.1, 98
  %or.cond46 = select i1 %or.cond45, i1 %_72.not.1, i1 false
  br i1 %or.cond46, label %bb15.2, label %bb23

bb15.2:                                           ; preds = %bb15.1
  %pix.sroa.0.8.sroa_idx34 = getelementptr inbounds i8, ptr %pix.sroa.0, i64 8
  %pix.sroa.0.8.pix.sroa.0.8._52.2 = load i8, ptr %pix.sroa.0.8.sroa_idx34, align 8
  %_51.not.2 = icmp eq i8 %pix.sroa.0.8.pix.sroa.0.8._52.2, -10
  %pix.sroa.0.9.sroa_idx35 = getelementptr inbounds i8, ptr %pix.sroa.0, i64 9
  %pix.sroa.0.9.pix.sroa.0.9._59.2 = load i8, ptr %pix.sroa.0.9.sroa_idx35, align 1
  %_58.not.2 = icmp eq i8 %pix.sroa.0.9.pix.sroa.0.9._59.2, -111
  %or.cond47 = select i1 %_51.not.2, i1 %_58.not.2, i1 false
  %pix.sroa.0.10.sroa_idx36 = getelementptr inbounds i8, ptr %pix.sroa.0, i64 10
  %pix.sroa.0.10.pix.sroa.0.10._66.2 = load i8, ptr %pix.sroa.0.10.sroa_idx36, align 2
  %_65.not.2 = icmp eq i8 %pix.sroa.0.10.pix.sroa.0.10._66.2, 59
  %or.cond48 = select i1 %or.cond47, i1 %_65.not.2, i1 false
  %pix.sroa.0.11.sroa_idx37 = getelementptr inbounds i8, ptr %pix.sroa.0, i64 11
  %pix.sroa.0.11.pix.sroa.0.11._73.2 = load i8, ptr %pix.sroa.0.11.sroa_idx37, align 1
  %_72.not.2 = icmp eq i8 %pix.sroa.0.11.pix.sroa.0.11._73.2, -7
  %or.cond49 = select i1 %or.cond48, i1 %_72.not.2, i1 false
  br i1 %or.cond49, label %bb15.3, label %bb23

bb15.3:                                           ; preds = %bb15.2
  %pix.sroa.0.12.sroa_idx38 = getelementptr inbounds i8, ptr %pix.sroa.0, i64 12
  %pix.sroa.0.12.pix.sroa.0.12._52.3 = load i8, ptr %pix.sroa.0.12.sroa_idx38, align 4
  %_51.not.3 = icmp eq i8 %pix.sroa.0.12.pix.sroa.0.12._52.3, -11
  %pix.sroa.0.13.sroa_idx39 = getelementptr inbounds i8, ptr %pix.sroa.0, i64 13
  %pix.sroa.0.13.pix.sroa.0.13._59.3 = load i8, ptr %pix.sroa.0.13.sroa_idx39, align 1
  %_58.not.3 = icmp eq i8 %pix.sroa.0.13.pix.sroa.0.13._59.3, 13
  %or.cond50 = select i1 %_51.not.3, i1 %_58.not.3, i1 false
  %pix.sroa.0.14.sroa_idx40 = getelementptr inbounds i8, ptr %pix.sroa.0, i64 14
  %pix.sroa.0.14.pix.sroa.0.14._66.3 = load i8, ptr %pix.sroa.0.14.sroa_idx40, align 2
  %_65.not.3 = icmp eq i8 %pix.sroa.0.14.pix.sroa.0.14._66.3, 102
  %or.cond51 = select i1 %or.cond50, i1 %_65.not.3, i1 false
  %pix.sroa.0.15.sroa_idx41 = getelementptr inbounds i8, ptr %pix.sroa.0, i64 15
  %pix.sroa.0.15.pix.sroa.0.15._73.3 = load i8, ptr %pix.sroa.0.15.sroa_idx41, align 1
  %_72.not.3 = icmp eq i8 %pix.sroa.0.15.pix.sroa.0.15._73.3, -65
  %or.cond52 = select i1 %or.cond51, i1 %_72.not.3, i1 false
  br i1 %or.cond52, label %bb15.4, label %bb23

bb15.4:                                           ; preds = %bb15.3
  %pix.sroa.22.0.pix.sroa.22.16._52.4 = load i8, ptr %pix.sroa.22, align 16
  %_51.not.4 = icmp eq i8 %pix.sroa.22.0.pix.sroa.22.16._52.4, 64
  %pix.sroa.22.1.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.22, i64 1
  %pix.sroa.22.1.pix.sroa.22.17._59.4 = load i8, ptr %pix.sroa.22.1.sroa_idx, align 1
  %_58.not.4 = icmp eq i8 %pix.sroa.22.1.pix.sroa.22.17._59.4, 8
  %or.cond53 = select i1 %_51.not.4, i1 %_58.not.4, i1 false
  %pix.sroa.22.2.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.22, i64 2
  %pix.sroa.22.2.pix.sroa.22.18._66.4 = load i8, ptr %pix.sroa.22.2.sroa_idx, align 2
  %_65.not.4 = icmp eq i8 %pix.sroa.22.2.pix.sroa.22.18._66.4, 40
  %or.cond54 = select i1 %or.cond53, i1 %_65.not.4, i1 false
  %pix.sroa.22.3.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.22, i64 3
  %pix.sroa.22.3.pix.sroa.22.19._73.4 = load i8, ptr %pix.sroa.22.3.sroa_idx, align 1
  %_72.not.4 = icmp eq i8 %pix.sroa.22.3.pix.sroa.22.19._73.4, 116
  %or.cond55 = select i1 %or.cond54, i1 %_72.not.4, i1 false
  br i1 %or.cond55, label %bb15.5, label %bb23

bb15.5:                                           ; preds = %bb15.4
  %pix.sroa.22.4.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.22, i64 4
  %pix.sroa.22.4.pix.sroa.22.20._52.5 = load i8, ptr %pix.sroa.22.4.sroa_idx, align 4
  %_51.not.5 = icmp eq i8 %pix.sroa.22.4.pix.sroa.22.20._52.5, -65
  %pix.sroa.22.5.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.22, i64 5
  %pix.sroa.22.5.pix.sroa.22.21._59.5 = load i8, ptr %pix.sroa.22.5.sroa_idx, align 1
  %_58.not.5 = icmp eq i8 %pix.sroa.22.5.pix.sroa.22.21._59.5, -78
  %or.cond56 = select i1 %_51.not.5, i1 %_58.not.5, i1 false
  %pix.sroa.22.6.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.22, i64 6
  %pix.sroa.22.6.pix.sroa.22.22._66.5 = load i8, ptr %pix.sroa.22.6.sroa_idx, align 2
  %_65.not.5 = icmp eq i8 %pix.sroa.22.6.pix.sroa.22.22._66.5, 62
  %or.cond57 = select i1 %or.cond56, i1 %_65.not.5, i1 false
  %pix.sroa.22.7.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.22, i64 7
  %pix.sroa.22.7.pix.sroa.22.23._73.5 = load i8, ptr %pix.sroa.22.7.sroa_idx, align 1
  %_72.not.5 = icmp eq i8 %pix.sroa.22.7.pix.sroa.22.23._73.5, -96
  %or.cond58 = select i1 %or.cond57, i1 %_72.not.5, i1 false
  br i1 %or.cond58, label %bb15.6, label %bb23

bb15.6:                                           ; preds = %bb15.5
  %pix.sroa.22.8.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.22, i64 8
  %pix.sroa.22.8.pix.sroa.22.24._52.6 = load i8, ptr %pix.sroa.22.8.sroa_idx, align 8
  %_51.not.6 = icmp eq i8 %pix.sroa.22.8.pix.sroa.22.24._52.6, 5
  %pix.sroa.22.9.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.22, i64 9
  %pix.sroa.22.9.pix.sroa.22.25._59.6 = load i8, ptr %pix.sroa.22.9.sroa_idx, align 1
  %_58.not.6 = icmp eq i8 %pix.sroa.22.9.pix.sroa.22.25._59.6, -37
  %or.cond59 = select i1 %_51.not.6, i1 %_58.not.6, i1 false
  %pix.sroa.22.10.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.22, i64 10
  %pix.sroa.22.10.pix.sroa.22.26._66.6 = load i8, ptr %pix.sroa.22.10.sroa_idx, align 2
  %_65.not.6 = icmp eq i8 %pix.sroa.22.10.pix.sroa.22.26._66.6, -116
  %or.cond60 = select i1 %or.cond59, i1 %_65.not.6, i1 false
  %pix.sroa.22.11.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.22, i64 11
  %pix.sroa.22.11.pix.sroa.22.27._73.6 = load i8, ptr %pix.sroa.22.11.sroa_idx, align 1
  %_72.not.6 = icmp eq i8 %pix.sroa.22.11.pix.sroa.22.27._73.6, -121
  %or.cond61 = select i1 %or.cond60, i1 %_72.not.6, i1 false
  br i1 %or.cond61, label %bb15.7, label %bb23

bb15.7:                                           ; preds = %bb15.6
  %pix.sroa.22.12.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.22, i64 12
  %pix.sroa.22.12.pix.sroa.22.28._52.7 = load i8, ptr %pix.sroa.22.12.sroa_idx, align 4
  %_51.not.7 = icmp eq i8 %pix.sroa.22.12.pix.sroa.22.28._52.7, -75
  %pix.sroa.22.13.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.22, i64 13
  %pix.sroa.22.13.pix.sroa.22.29._59.7 = load i8, ptr %pix.sroa.22.13.sroa_idx, align 1
  %_58.not.7 = icmp eq i8 %pix.sroa.22.13.pix.sroa.22.29._59.7, -116
  %or.cond62 = select i1 %_51.not.7, i1 %_58.not.7, i1 false
  %pix.sroa.22.14.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.22, i64 14
  %pix.sroa.22.14.pix.sroa.22.30._66.7 = load i8, ptr %pix.sroa.22.14.sroa_idx, align 2
  %_65.not.7 = icmp eq i8 %pix.sroa.22.14.pix.sroa.22.30._66.7, -83
  %or.cond63 = select i1 %or.cond62, i1 %_65.not.7, i1 false
  %pix.sroa.22.15.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.22, i64 15
  %pix.sroa.22.15.pix.sroa.22.31._73.7 = load i8, ptr %pix.sroa.22.15.sroa_idx, align 1
  %_72.not.7 = icmp eq i8 %pix.sroa.22.15.pix.sroa.22.31._73.7, -57
  %or.cond64 = select i1 %or.cond63, i1 %_72.not.7, i1 false
  br i1 %or.cond64, label %bb15.8, label %bb23

bb15.8:                                           ; preds = %bb15.7
  %pix.sroa.41.0.pix.sroa.41.32._52.8 = load i8, ptr %pix.sroa.41, align 16
  %_51.not.8 = icmp eq i8 %pix.sroa.41.0.pix.sroa.41.32._52.8, -45
  %pix.sroa.41.1.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.41, i64 1
  %pix.sroa.41.1.pix.sroa.41.33._59.8 = load i8, ptr %pix.sroa.41.1.sroa_idx, align 1
  %_58.not.8 = icmp eq i8 %pix.sroa.41.1.pix.sroa.41.33._59.8, -23
  %or.cond65 = select i1 %_51.not.8, i1 %_58.not.8, i1 false
  %pix.sroa.41.2.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.41, i64 2
  %pix.sroa.41.2.pix.sroa.41.34._66.8 = load i8, ptr %pix.sroa.41.2.sroa_idx, align 2
  %_65.not.8 = icmp eq i8 %pix.sroa.41.2.pix.sroa.41.34._66.8, -81
  %or.cond66 = select i1 %or.cond65, i1 %_65.not.8, i1 false
  %pix.sroa.41.3.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.41, i64 3
  %pix.sroa.41.3.pix.sroa.41.35._73.8 = load i8, ptr %pix.sroa.41.3.sroa_idx, align 1
  %_72.not.8 = icmp eq i8 %pix.sroa.41.3.pix.sroa.41.35._73.8, -77
  %or.cond67 = select i1 %or.cond66, i1 %_72.not.8, i1 false
  br i1 %or.cond67, label %bb15.9, label %bb23

bb15.9:                                           ; preds = %bb15.8
  %pix.sroa.41.4.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.41, i64 4
  %pix.sroa.41.4.pix.sroa.41.36._52.9 = load i8, ptr %pix.sroa.41.4.sroa_idx, align 4
  %_51.not.9 = icmp eq i8 %pix.sroa.41.4.pix.sroa.41.36._52.9, 64
  %pix.sroa.41.5.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.41, i64 5
  %pix.sroa.41.5.pix.sroa.41.37._59.9 = load i8, ptr %pix.sroa.41.5.sroa_idx, align 1
  %_58.not.9 = icmp eq i8 %pix.sroa.41.5.pix.sroa.41.37._59.9, -85
  %or.cond68 = select i1 %_51.not.9, i1 %_58.not.9, i1 false
  %pix.sroa.41.6.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.41, i64 6
  %pix.sroa.41.6.pix.sroa.41.38._66.9 = load i8, ptr %pix.sroa.41.6.sroa_idx, align 2
  %_65.not.9 = icmp eq i8 %pix.sroa.41.6.pix.sroa.41.38._66.9, 4
  %or.cond69 = select i1 %or.cond68, i1 %_65.not.9, i1 false
  %pix.sroa.41.7.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.41, i64 7
  %pix.sroa.41.7.pix.sroa.41.39._73.9 = load i8, ptr %pix.sroa.41.7.sroa_idx, align 1
  %_72.not.9 = icmp eq i8 %pix.sroa.41.7.pix.sroa.41.39._73.9, 46
  %or.cond70 = select i1 %or.cond69, i1 %_72.not.9, i1 false
  br i1 %or.cond70, label %bb15.10, label %bb23

bb15.10:                                          ; preds = %bb15.9
  %pix.sroa.41.8.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.41, i64 8
  %pix.sroa.41.8.pix.sroa.41.40._52.10 = load i8, ptr %pix.sroa.41.8.sroa_idx, align 8
  %_51.not.10 = icmp eq i8 %pix.sroa.41.8.pix.sroa.41.40._52.10, -7
  %pix.sroa.41.9.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.41, i64 9
  %pix.sroa.41.9.pix.sroa.41.41._59.10 = load i8, ptr %pix.sroa.41.9.sroa_idx, align 1
  %_58.not.10 = icmp eq i8 %pix.sroa.41.9.pix.sroa.41.41._59.10, 16
  %or.cond71 = select i1 %_51.not.10, i1 %_58.not.10, i1 false
  %pix.sroa.41.10.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.41, i64 10
  %pix.sroa.41.10.pix.sroa.41.42._66.10 = load i8, ptr %pix.sroa.41.10.sroa_idx, align 2
  %_65.not.10 = icmp eq i8 %pix.sroa.41.10.pix.sroa.41.42._66.10, -116
  %or.cond72 = select i1 %or.cond71, i1 %_65.not.10, i1 false
  %pix.sroa.41.11.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.41, i64 11
  %pix.sroa.41.11.pix.sroa.41.43._73.10 = load i8, ptr %pix.sroa.41.11.sroa_idx, align 1
  %_72.not.10 = icmp eq i8 %pix.sroa.41.11.pix.sroa.41.43._73.10, 27
  %or.cond73 = select i1 %or.cond72, i1 %_72.not.10, i1 false
  br i1 %or.cond73, label %bb15.11, label %bb23

bb15.11:                                          ; preds = %bb15.10
  %pix.sroa.41.12.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.41, i64 12
  %pix.sroa.41.12.pix.sroa.41.44._52.11 = load i8, ptr %pix.sroa.41.12.sroa_idx, align 4
  %_51.not.11 = icmp eq i8 %pix.sroa.41.12.pix.sroa.41.44._52.11, -85
  %pix.sroa.41.13.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.41, i64 13
  %pix.sroa.41.13.pix.sroa.41.45._59.11 = load i8, ptr %pix.sroa.41.13.sroa_idx, align 1
  %_58.not.11 = icmp eq i8 %pix.sroa.41.13.pix.sroa.41.45._59.11, 24
  %or.cond74 = select i1 %_51.not.11, i1 %_58.not.11, i1 false
  %pix.sroa.41.14.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.41, i64 14
  %pix.sroa.41.14.pix.sroa.41.46._66.11 = load i8, ptr %pix.sroa.41.14.sroa_idx, align 2
  %_65.not.11 = icmp eq i8 %pix.sroa.41.14.pix.sroa.41.46._66.11, -91
  %or.cond75 = select i1 %or.cond74, i1 %_65.not.11, i1 false
  %pix.sroa.41.15.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.41, i64 15
  %pix.sroa.41.15.pix.sroa.41.47._73.11 = load i8, ptr %pix.sroa.41.15.sroa_idx, align 1
  %_72.not.11 = icmp eq i8 %pix.sroa.41.15.pix.sroa.41.47._73.11, 2
  %or.cond76 = select i1 %or.cond75, i1 %_72.not.11, i1 false
  br i1 %or.cond76, label %bb15.12, label %bb23

bb15.12:                                          ; preds = %bb15.11
  %pix.sroa.60.0.pix.sroa.60.48._52.12 = load i8, ptr %pix.sroa.60, align 16
  %_51.not.12 = icmp eq i8 %pix.sroa.60.0.pix.sroa.60.48._52.12, -27
  %pix.sroa.60.1.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.60, i64 1
  %pix.sroa.60.1.pix.sroa.60.49._59.12 = load i8, ptr %pix.sroa.60.1.sroa_idx, align 1
  %_58.not.12 = icmp eq i8 %pix.sroa.60.1.pix.sroa.60.49._59.12, -16
  %or.cond77 = select i1 %_51.not.12, i1 %_58.not.12, i1 false
  %pix.sroa.60.2.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.60, i64 2
  %pix.sroa.60.2.pix.sroa.60.50._66.12 = load i8, ptr %pix.sroa.60.2.sroa_idx, align 2
  %_65.not.12 = icmp eq i8 %pix.sroa.60.2.pix.sroa.60.50._66.12, -6
  %or.cond78 = select i1 %or.cond77, i1 %_65.not.12, i1 false
  %pix.sroa.60.3.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.60, i64 3
  %pix.sroa.60.3.pix.sroa.60.51._73.12 = load i8, ptr %pix.sroa.60.3.sroa_idx, align 1
  %_72.not.12 = icmp eq i8 %pix.sroa.60.3.pix.sroa.60.51._73.12, -122
  %or.cond79 = select i1 %or.cond78, i1 %_72.not.12, i1 false
  br i1 %or.cond79, label %bb15.13, label %bb23

bb15.13:                                          ; preds = %bb15.12
  %pix.sroa.60.4.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.60, i64 4
  %pix.sroa.60.4.pix.sroa.60.52._52.13 = load i8, ptr %pix.sroa.60.4.sroa_idx, align 4
  %_51.not.13 = icmp eq i8 %pix.sroa.60.4.pix.sroa.60.52._52.13, 0
  %pix.sroa.60.5.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.60, i64 5
  %pix.sroa.60.5.pix.sroa.60.53._59.13 = load i8, ptr %pix.sroa.60.5.sroa_idx, align 1
  %_58.not.13 = icmp eq i8 %pix.sroa.60.5.pix.sroa.60.53._59.13, -64
  %or.cond80 = select i1 %_51.not.13, i1 %_58.not.13, i1 false
  %pix.sroa.60.6.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.60, i64 6
  %pix.sroa.60.6.pix.sroa.60.54._66.13 = load i8, ptr %pix.sroa.60.6.sroa_idx, align 2
  %_65.not.13 = icmp eq i8 %pix.sroa.60.6.pix.sroa.60.54._66.13, -98
  %or.cond81 = select i1 %or.cond80, i1 %_65.not.13, i1 false
  %pix.sroa.60.7.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.60, i64 7
  %pix.sroa.60.7.pix.sroa.60.55._73.13 = load i8, ptr %pix.sroa.60.7.sroa_idx, align 1
  %_72.not.13 = icmp eq i8 %pix.sroa.60.7.pix.sroa.60.55._73.13, -106
  %or.cond82 = select i1 %or.cond81, i1 %_72.not.13, i1 false
  br i1 %or.cond82, label %bb15.14, label %bb23

bb15.14:                                          ; preds = %bb15.13
  %pix.sroa.60.8.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.60, i64 8
  %pix.sroa.60.8.pix.sroa.60.56._52.14 = load i8, ptr %pix.sroa.60.8.sroa_idx, align 8
  %_51.not.14 = icmp eq i8 %pix.sroa.60.8.pix.sroa.60.56._52.14, -8
  %pix.sroa.60.9.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.60, i64 9
  %pix.sroa.60.9.pix.sroa.60.57._59.14 = load i8, ptr %pix.sroa.60.9.sroa_idx, align 1
  %_58.not.14 = icmp eq i8 %pix.sroa.60.9.pix.sroa.60.57._59.14, -25
  %or.cond83 = select i1 %_51.not.14, i1 %_58.not.14, i1 false
  %pix.sroa.60.10.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.60, i64 10
  %pix.sroa.60.10.pix.sroa.60.58._66.14 = load i8, ptr %pix.sroa.60.10.sroa_idx, align 2
  %_65.not.14 = icmp eq i8 %pix.sroa.60.10.pix.sroa.60.58._66.14, -43
  %or.cond84 = select i1 %or.cond83, i1 %_65.not.14, i1 false
  %pix.sroa.60.11.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.60, i64 11
  %pix.sroa.60.11.pix.sroa.60.59._73.14 = load i8, ptr %pix.sroa.60.11.sroa_idx, align 1
  %_72.not.14 = icmp eq i8 %pix.sroa.60.11.pix.sroa.60.59._73.14, 9
  %or.cond85 = select i1 %or.cond84, i1 %_72.not.14, i1 false
  br i1 %or.cond85, label %bb15.15, label %bb23

bb15.15:                                          ; preds = %bb15.14
  %pix.sroa.60.12.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.60, i64 12
  %pix.sroa.60.12.pix.sroa.60.60._52.15 = load i8, ptr %pix.sroa.60.12.sroa_idx, align 4
  %_51.not.15 = icmp eq i8 %pix.sroa.60.12.pix.sroa.60.60._52.15, 115
  %pix.sroa.60.13.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.60, i64 13
  %pix.sroa.60.13.pix.sroa.60.61._59.15 = load i8, ptr %pix.sroa.60.13.sroa_idx, align 1
  %_58.not.15 = icmp eq i8 %pix.sroa.60.13.pix.sroa.60.61._59.15, -116
  %or.cond86 = select i1 %_51.not.15, i1 %_58.not.15, i1 false
  %pix.sroa.60.14.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.60, i64 14
  %pix.sroa.60.14.pix.sroa.60.62._66.15 = load i8, ptr %pix.sroa.60.14.sroa_idx, align 2
  %_65.not.15 = icmp eq i8 %pix.sroa.60.14.pix.sroa.60.62._66.15, 85
  %or.cond87 = select i1 %or.cond86, i1 %_65.not.15, i1 false
  %pix.sroa.60.15.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.60, i64 15
  %pix.sroa.60.15.pix.sroa.60.63._73.15 = load i8, ptr %pix.sroa.60.15.sroa_idx, align 1
  %_72.not.15 = icmp eq i8 %pix.sroa.60.15.pix.sroa.60.63._73.15, -121
  %or.cond88 = select i1 %or.cond87, i1 %_72.not.15, i1 false
  br i1 %or.cond88, label %bb2.16, label %bb23

bb2.16:                                           ; preds = %bb15.15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix.sroa.0)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix.sroa.22)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix.sroa.41)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix.sroa.60)
  br label %bb25

bb23:                                             ; preds = %bb15.15, %bb15.14, %bb15.13, %bb15.12, %bb15.11, %bb15.10, %bb15.9, %bb15.8, %bb15.7, %bb15.6, %bb15.5, %bb15.4, %bb15.3, %bb15.2, %bb15.1, %bb3.i12.i.i.3
  %iter.sroa.0.0.lcssa25 = phi i64 [ 0, %bb3.i12.i.i.3 ], [ 1, %bb15.1 ], [ 2, %bb15.2 ], [ 3, %bb15.3 ], [ 4, %bb15.4 ], [ 5, %bb15.5 ], [ 6, %bb15.6 ], [ 7, %bb15.7 ], [ 8, %bb15.8 ], [ 9, %bb15.9 ], [ 10, %bb15.10 ], [ 11, %bb15.11 ], [ 12, %bb15.12 ], [ 13, %bb15.13 ], [ 14, %bb15.14 ], [ 15, %bb15.15 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix.sroa.0)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix.sroa.22)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix.sroa.41)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix.sroa.60)
  br label %bb25

bb25:                                             ; preds = %bb23, %bb2.16
  %iter.sroa.0.026 = phi i64 [ 16, %bb2.16 ], [ %iter.sroa.0.0.lcssa25, %bb23 ]
  %0 = icmp ugt i64 %iter.sroa.0.026, 15
  ret i1 %0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @run_test_3() unnamed_addr #0 {
bb3.i12.i.i.7:
  %pix.sroa.0 = alloca [4 x %"src::lib::CpPixelT"], align 16
  %pix.sroa.22 = alloca [4 x %"src::lib::CpPixelT"], align 16
  %pix.sroa.41 = alloca [4 x %"src::lib::CpPixelT"], align 16
  %pix.sroa.60 = alloca [4 x %"src::lib::CpPixelT"], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix.sroa.0)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix.sroa.22)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix.sroa.41)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix.sroa.60)
  store <16 x i8> <i8 28, i8 108, i8 111, i8 -69, i8 -67, i8 97, i8 64, i8 87, i8 83, i8 22, i8 -93, i8 1, i8 0, i8 -98, i8 15, i8 71>, ptr %pix.sroa.0, align 16
  store <16 x i8> <i8 -63, i8 29, i8 46, i8 -46, i8 -54, i8 -93, i8 -96, i8 59, i8 98, i8 68, i8 81, i8 -107, i8 -52, i8 -14, i8 9, i8 65>, ptr %pix.sroa.22, align 16
  store <16 x i8> <i8 -117, i8 119, i8 84, i8 -124, i8 113, i8 -13, i8 83, i8 -53, i8 -58, i8 -106, i8 -38, i8 -66, i8 -118, i8 118, i8 65, i8 91>, ptr %pix.sroa.41, align 16
  store <16 x i8> <i8 -50, i8 36, i8 -57, i8 -17, i8 91, i8 55, i8 -122, i8 70, i8 -126, i8 -25, i8 -70, i8 112, i8 -91, i8 118, i8 -80, i8 111>, ptr %pix.sroa.60, align 16
  store <4 x i32> <i32 1873835685, i32 1891297154, i32 1183201115, i32 -272161586>, ptr %pix.sroa.0, align 16, !alias.scope !96, !noalias !107
  store <4 x i32> <i32 1192205824, i32 27465299, i32 1463837117, i32 -1150325732>, ptr %pix.sroa.60, align 16, !alias.scope !110, !noalias !107
  store <4 x i32> <i32 1531016842, i32 -1092970810, i32 -883690639, i32 -2074839157>, ptr %pix.sroa.22, align 16, !alias.scope !119, !noalias !107
  store <4 x i32> <i32 1091171020, i32 -1789836190, i32 1000383434, i32 -768729663>, ptr %pix.sroa.41, align 16, !alias.scope !128, !noalias !107
  %pix.sroa.0.0.pix.sroa.0.0._52 = load i8, ptr %pix.sroa.0, align 16
  %_51.not = icmp eq i8 %pix.sroa.0.0.pix.sroa.0.0._52, -91
  %pix.sroa.0.1.sroa_idx29 = getelementptr inbounds i8, ptr %pix.sroa.0, i64 1
  %pix.sroa.0.1.pix.sroa.0.1._59 = load i8, ptr %pix.sroa.0.1.sroa_idx29, align 1
  %_58.not = icmp eq i8 %pix.sroa.0.1.pix.sroa.0.1._59, 118
  %or.cond = select i1 %_51.not, i1 %_58.not, i1 false
  %pix.sroa.0.2.sroa_idx30 = getelementptr inbounds i8, ptr %pix.sroa.0, i64 2
  %pix.sroa.0.2.pix.sroa.0.2._66 = load i8, ptr %pix.sroa.0.2.sroa_idx30, align 2
  %_65.not = icmp eq i8 %pix.sroa.0.2.pix.sroa.0.2._66, -80
  %or.cond44 = select i1 %or.cond, i1 %_65.not, i1 false
  %pix.sroa.0.3.sroa_idx31 = getelementptr inbounds i8, ptr %pix.sroa.0, i64 3
  %pix.sroa.0.3.pix.sroa.0.3._73 = load i8, ptr %pix.sroa.0.3.sroa_idx31, align 1
  %_72.not = icmp eq i8 %pix.sroa.0.3.pix.sroa.0.3._73, 111
  %or.cond45 = select i1 %or.cond44, i1 %_72.not, i1 false
  br i1 %or.cond45, label %bb15.1, label %bb23

bb15.1:                                           ; preds = %bb3.i12.i.i.7
  %pix.sroa.0.4.sroa_idx32 = getelementptr inbounds i8, ptr %pix.sroa.0, i64 4
  %pix.sroa.0.4.pix.sroa.0.4._52.1 = load i8, ptr %pix.sroa.0.4.sroa_idx32, align 4
  %_51.not.1 = icmp eq i8 %pix.sroa.0.4.pix.sroa.0.4._52.1, -126
  %pix.sroa.0.5.sroa_idx33 = getelementptr inbounds i8, ptr %pix.sroa.0, i64 5
  %pix.sroa.0.5.pix.sroa.0.5._59.1 = load i8, ptr %pix.sroa.0.5.sroa_idx33, align 1
  %_58.not.1 = icmp eq i8 %pix.sroa.0.5.pix.sroa.0.5._59.1, -25
  %or.cond46 = select i1 %_51.not.1, i1 %_58.not.1, i1 false
  %pix.sroa.0.6.sroa_idx34 = getelementptr inbounds i8, ptr %pix.sroa.0, i64 6
  %pix.sroa.0.6.pix.sroa.0.6._66.1 = load i8, ptr %pix.sroa.0.6.sroa_idx34, align 2
  %_65.not.1 = icmp eq i8 %pix.sroa.0.6.pix.sroa.0.6._66.1, -70
  %or.cond47 = select i1 %or.cond46, i1 %_65.not.1, i1 false
  %pix.sroa.0.7.sroa_idx35 = getelementptr inbounds i8, ptr %pix.sroa.0, i64 7
  %pix.sroa.0.7.pix.sroa.0.7._73.1 = load i8, ptr %pix.sroa.0.7.sroa_idx35, align 1
  %_72.not.1 = icmp eq i8 %pix.sroa.0.7.pix.sroa.0.7._73.1, 112
  %or.cond48 = select i1 %or.cond47, i1 %_72.not.1, i1 false
  br i1 %or.cond48, label %bb15.2, label %bb23

bb15.2:                                           ; preds = %bb15.1
  %pix.sroa.0.8.sroa_idx36 = getelementptr inbounds i8, ptr %pix.sroa.0, i64 8
  %pix.sroa.0.8.pix.sroa.0.8._52.2 = load i8, ptr %pix.sroa.0.8.sroa_idx36, align 8
  %_51.not.2 = icmp eq i8 %pix.sroa.0.8.pix.sroa.0.8._52.2, 91
  %pix.sroa.0.9.sroa_idx37 = getelementptr inbounds i8, ptr %pix.sroa.0, i64 9
  %pix.sroa.0.9.pix.sroa.0.9._59.2 = load i8, ptr %pix.sroa.0.9.sroa_idx37, align 1
  %_58.not.2 = icmp eq i8 %pix.sroa.0.9.pix.sroa.0.9._59.2, 55
  %or.cond49 = select i1 %_51.not.2, i1 %_58.not.2, i1 false
  %pix.sroa.0.10.sroa_idx38 = getelementptr inbounds i8, ptr %pix.sroa.0, i64 10
  %pix.sroa.0.10.pix.sroa.0.10._66.2 = load i8, ptr %pix.sroa.0.10.sroa_idx38, align 2
  %_65.not.2 = icmp eq i8 %pix.sroa.0.10.pix.sroa.0.10._66.2, -122
  %or.cond50 = select i1 %or.cond49, i1 %_65.not.2, i1 false
  %pix.sroa.0.11.sroa_idx39 = getelementptr inbounds i8, ptr %pix.sroa.0, i64 11
  %pix.sroa.0.11.pix.sroa.0.11._73.2 = load i8, ptr %pix.sroa.0.11.sroa_idx39, align 1
  %_72.not.2 = icmp eq i8 %pix.sroa.0.11.pix.sroa.0.11._73.2, 70
  %or.cond51 = select i1 %or.cond50, i1 %_72.not.2, i1 false
  br i1 %or.cond51, label %bb15.3, label %bb23

bb15.3:                                           ; preds = %bb15.2
  %pix.sroa.0.12.sroa_idx40 = getelementptr inbounds i8, ptr %pix.sroa.0, i64 12
  %pix.sroa.0.12.pix.sroa.0.12._52.3 = load i8, ptr %pix.sroa.0.12.sroa_idx40, align 4
  %_51.not.3 = icmp eq i8 %pix.sroa.0.12.pix.sroa.0.12._52.3, -50
  %pix.sroa.0.13.sroa_idx41 = getelementptr inbounds i8, ptr %pix.sroa.0, i64 13
  %pix.sroa.0.13.pix.sroa.0.13._59.3 = load i8, ptr %pix.sroa.0.13.sroa_idx41, align 1
  %_58.not.3 = icmp eq i8 %pix.sroa.0.13.pix.sroa.0.13._59.3, 36
  %or.cond52 = select i1 %_51.not.3, i1 %_58.not.3, i1 false
  %pix.sroa.0.14.sroa_idx42 = getelementptr inbounds i8, ptr %pix.sroa.0, i64 14
  %pix.sroa.0.14.pix.sroa.0.14._66.3 = load i8, ptr %pix.sroa.0.14.sroa_idx42, align 2
  %_65.not.3 = icmp eq i8 %pix.sroa.0.14.pix.sroa.0.14._66.3, -57
  %or.cond53 = select i1 %or.cond52, i1 %_65.not.3, i1 false
  %pix.sroa.0.15.sroa_idx43 = getelementptr inbounds i8, ptr %pix.sroa.0, i64 15
  %pix.sroa.0.15.pix.sroa.0.15._73.3 = load i8, ptr %pix.sroa.0.15.sroa_idx43, align 1
  %_72.not.3 = icmp eq i8 %pix.sroa.0.15.pix.sroa.0.15._73.3, -17
  %or.cond54 = select i1 %or.cond53, i1 %_72.not.3, i1 false
  br i1 %or.cond54, label %bb15.4, label %bb23

bb15.4:                                           ; preds = %bb15.3
  %pix.sroa.22.0.pix.sroa.22.16._52.4 = load i8, ptr %pix.sroa.22, align 16
  %_51.not.4 = icmp eq i8 %pix.sroa.22.0.pix.sroa.22.16._52.4, -118
  %pix.sroa.22.1.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.22, i64 1
  %pix.sroa.22.1.pix.sroa.22.17._59.4 = load i8, ptr %pix.sroa.22.1.sroa_idx, align 1
  %_58.not.4 = icmp eq i8 %pix.sroa.22.1.pix.sroa.22.17._59.4, 118
  %or.cond55 = select i1 %_51.not.4, i1 %_58.not.4, i1 false
  %pix.sroa.22.2.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.22, i64 2
  %pix.sroa.22.2.pix.sroa.22.18._66.4 = load i8, ptr %pix.sroa.22.2.sroa_idx, align 2
  %_65.not.4 = icmp eq i8 %pix.sroa.22.2.pix.sroa.22.18._66.4, 65
  %or.cond56 = select i1 %or.cond55, i1 %_65.not.4, i1 false
  %pix.sroa.22.3.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.22, i64 3
  %pix.sroa.22.3.pix.sroa.22.19._73.4 = load i8, ptr %pix.sroa.22.3.sroa_idx, align 1
  %_72.not.4 = icmp eq i8 %pix.sroa.22.3.pix.sroa.22.19._73.4, 91
  %or.cond57 = select i1 %or.cond56, i1 %_72.not.4, i1 false
  br i1 %or.cond57, label %bb15.5, label %bb23

bb15.5:                                           ; preds = %bb15.4
  %pix.sroa.22.4.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.22, i64 4
  %pix.sroa.22.4.pix.sroa.22.20._52.5 = load i8, ptr %pix.sroa.22.4.sroa_idx, align 4
  %_51.not.5 = icmp eq i8 %pix.sroa.22.4.pix.sroa.22.20._52.5, -58
  %pix.sroa.22.5.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.22, i64 5
  %pix.sroa.22.5.pix.sroa.22.21._59.5 = load i8, ptr %pix.sroa.22.5.sroa_idx, align 1
  %_58.not.5 = icmp eq i8 %pix.sroa.22.5.pix.sroa.22.21._59.5, -106
  %or.cond58 = select i1 %_51.not.5, i1 %_58.not.5, i1 false
  %pix.sroa.22.6.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.22, i64 6
  %pix.sroa.22.6.pix.sroa.22.22._66.5 = load i8, ptr %pix.sroa.22.6.sroa_idx, align 2
  %_65.not.5 = icmp eq i8 %pix.sroa.22.6.pix.sroa.22.22._66.5, -38
  %or.cond59 = select i1 %or.cond58, i1 %_65.not.5, i1 false
  %pix.sroa.22.7.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.22, i64 7
  %pix.sroa.22.7.pix.sroa.22.23._73.5 = load i8, ptr %pix.sroa.22.7.sroa_idx, align 1
  %_72.not.5 = icmp eq i8 %pix.sroa.22.7.pix.sroa.22.23._73.5, -66
  %or.cond60 = select i1 %or.cond59, i1 %_72.not.5, i1 false
  br i1 %or.cond60, label %bb15.6, label %bb23

bb15.6:                                           ; preds = %bb15.5
  %pix.sroa.22.8.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.22, i64 8
  %pix.sroa.22.8.pix.sroa.22.24._52.6 = load i8, ptr %pix.sroa.22.8.sroa_idx, align 8
  %_51.not.6 = icmp eq i8 %pix.sroa.22.8.pix.sroa.22.24._52.6, 113
  %pix.sroa.22.9.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.22, i64 9
  %pix.sroa.22.9.pix.sroa.22.25._59.6 = load i8, ptr %pix.sroa.22.9.sroa_idx, align 1
  %_58.not.6 = icmp eq i8 %pix.sroa.22.9.pix.sroa.22.25._59.6, -13
  %or.cond61 = select i1 %_51.not.6, i1 %_58.not.6, i1 false
  %pix.sroa.22.10.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.22, i64 10
  %pix.sroa.22.10.pix.sroa.22.26._66.6 = load i8, ptr %pix.sroa.22.10.sroa_idx, align 2
  %_65.not.6 = icmp eq i8 %pix.sroa.22.10.pix.sroa.22.26._66.6, 83
  %or.cond62 = select i1 %or.cond61, i1 %_65.not.6, i1 false
  %pix.sroa.22.11.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.22, i64 11
  %pix.sroa.22.11.pix.sroa.22.27._73.6 = load i8, ptr %pix.sroa.22.11.sroa_idx, align 1
  %_72.not.6 = icmp eq i8 %pix.sroa.22.11.pix.sroa.22.27._73.6, -53
  %or.cond63 = select i1 %or.cond62, i1 %_72.not.6, i1 false
  br i1 %or.cond63, label %bb15.7, label %bb23

bb15.7:                                           ; preds = %bb15.6
  %pix.sroa.22.12.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.22, i64 12
  %pix.sroa.22.12.pix.sroa.22.28._52.7 = load i8, ptr %pix.sroa.22.12.sroa_idx, align 4
  %_51.not.7 = icmp eq i8 %pix.sroa.22.12.pix.sroa.22.28._52.7, -117
  %pix.sroa.22.13.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.22, i64 13
  %pix.sroa.22.13.pix.sroa.22.29._59.7 = load i8, ptr %pix.sroa.22.13.sroa_idx, align 1
  %_58.not.7 = icmp eq i8 %pix.sroa.22.13.pix.sroa.22.29._59.7, 119
  %or.cond64 = select i1 %_51.not.7, i1 %_58.not.7, i1 false
  %pix.sroa.22.14.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.22, i64 14
  %pix.sroa.22.14.pix.sroa.22.30._66.7 = load i8, ptr %pix.sroa.22.14.sroa_idx, align 2
  %_65.not.7 = icmp eq i8 %pix.sroa.22.14.pix.sroa.22.30._66.7, 84
  %or.cond65 = select i1 %or.cond64, i1 %_65.not.7, i1 false
  %pix.sroa.22.15.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.22, i64 15
  %pix.sroa.22.15.pix.sroa.22.31._73.7 = load i8, ptr %pix.sroa.22.15.sroa_idx, align 1
  %_72.not.7 = icmp eq i8 %pix.sroa.22.15.pix.sroa.22.31._73.7, -124
  %or.cond66 = select i1 %or.cond65, i1 %_72.not.7, i1 false
  br i1 %or.cond66, label %bb15.8, label %bb23

bb15.8:                                           ; preds = %bb15.7
  %pix.sroa.41.0.pix.sroa.41.32._52.8 = load i8, ptr %pix.sroa.41, align 16
  %_51.not.8 = icmp eq i8 %pix.sroa.41.0.pix.sroa.41.32._52.8, -52
  %pix.sroa.41.1.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.41, i64 1
  %pix.sroa.41.1.pix.sroa.41.33._59.8 = load i8, ptr %pix.sroa.41.1.sroa_idx, align 1
  %_58.not.8 = icmp eq i8 %pix.sroa.41.1.pix.sroa.41.33._59.8, -14
  %or.cond67 = select i1 %_51.not.8, i1 %_58.not.8, i1 false
  %pix.sroa.41.2.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.41, i64 2
  %pix.sroa.41.2.pix.sroa.41.34._66.8 = load i8, ptr %pix.sroa.41.2.sroa_idx, align 2
  %_65.not.8 = icmp eq i8 %pix.sroa.41.2.pix.sroa.41.34._66.8, 9
  %or.cond68 = select i1 %or.cond67, i1 %_65.not.8, i1 false
  %pix.sroa.41.3.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.41, i64 3
  %pix.sroa.41.3.pix.sroa.41.35._73.8 = load i8, ptr %pix.sroa.41.3.sroa_idx, align 1
  %_72.not.8 = icmp eq i8 %pix.sroa.41.3.pix.sroa.41.35._73.8, 65
  %or.cond69 = select i1 %or.cond68, i1 %_72.not.8, i1 false
  br i1 %or.cond69, label %bb15.9, label %bb23

bb15.9:                                           ; preds = %bb15.8
  %pix.sroa.41.4.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.41, i64 4
  %pix.sroa.41.4.pix.sroa.41.36._52.9 = load i8, ptr %pix.sroa.41.4.sroa_idx, align 4
  %_51.not.9 = icmp eq i8 %pix.sroa.41.4.pix.sroa.41.36._52.9, 98
  %pix.sroa.41.5.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.41, i64 5
  %pix.sroa.41.5.pix.sroa.41.37._59.9 = load i8, ptr %pix.sroa.41.5.sroa_idx, align 1
  %_58.not.9 = icmp eq i8 %pix.sroa.41.5.pix.sroa.41.37._59.9, 68
  %or.cond70 = select i1 %_51.not.9, i1 %_58.not.9, i1 false
  %pix.sroa.41.6.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.41, i64 6
  %pix.sroa.41.6.pix.sroa.41.38._66.9 = load i8, ptr %pix.sroa.41.6.sroa_idx, align 2
  %_65.not.9 = icmp eq i8 %pix.sroa.41.6.pix.sroa.41.38._66.9, 81
  %or.cond71 = select i1 %or.cond70, i1 %_65.not.9, i1 false
  %pix.sroa.41.7.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.41, i64 7
  %pix.sroa.41.7.pix.sroa.41.39._73.9 = load i8, ptr %pix.sroa.41.7.sroa_idx, align 1
  %_72.not.9 = icmp eq i8 %pix.sroa.41.7.pix.sroa.41.39._73.9, -107
  %or.cond72 = select i1 %or.cond71, i1 %_72.not.9, i1 false
  br i1 %or.cond72, label %bb15.10, label %bb23

bb15.10:                                          ; preds = %bb15.9
  %pix.sroa.41.8.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.41, i64 8
  %pix.sroa.41.8.pix.sroa.41.40._52.10 = load i8, ptr %pix.sroa.41.8.sroa_idx, align 8
  %_51.not.10 = icmp eq i8 %pix.sroa.41.8.pix.sroa.41.40._52.10, -54
  %pix.sroa.41.9.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.41, i64 9
  %pix.sroa.41.9.pix.sroa.41.41._59.10 = load i8, ptr %pix.sroa.41.9.sroa_idx, align 1
  %_58.not.10 = icmp eq i8 %pix.sroa.41.9.pix.sroa.41.41._59.10, -93
  %or.cond73 = select i1 %_51.not.10, i1 %_58.not.10, i1 false
  %pix.sroa.41.10.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.41, i64 10
  %pix.sroa.41.10.pix.sroa.41.42._66.10 = load i8, ptr %pix.sroa.41.10.sroa_idx, align 2
  %_65.not.10 = icmp eq i8 %pix.sroa.41.10.pix.sroa.41.42._66.10, -96
  %or.cond74 = select i1 %or.cond73, i1 %_65.not.10, i1 false
  %pix.sroa.41.11.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.41, i64 11
  %pix.sroa.41.11.pix.sroa.41.43._73.10 = load i8, ptr %pix.sroa.41.11.sroa_idx, align 1
  %_72.not.10 = icmp eq i8 %pix.sroa.41.11.pix.sroa.41.43._73.10, 59
  %or.cond75 = select i1 %or.cond74, i1 %_72.not.10, i1 false
  br i1 %or.cond75, label %bb15.11, label %bb23

bb15.11:                                          ; preds = %bb15.10
  %pix.sroa.41.12.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.41, i64 12
  %pix.sroa.41.12.pix.sroa.41.44._52.11 = load i8, ptr %pix.sroa.41.12.sroa_idx, align 4
  %_51.not.11 = icmp eq i8 %pix.sroa.41.12.pix.sroa.41.44._52.11, -63
  %pix.sroa.41.13.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.41, i64 13
  %pix.sroa.41.13.pix.sroa.41.45._59.11 = load i8, ptr %pix.sroa.41.13.sroa_idx, align 1
  %_58.not.11 = icmp eq i8 %pix.sroa.41.13.pix.sroa.41.45._59.11, 29
  %or.cond76 = select i1 %_51.not.11, i1 %_58.not.11, i1 false
  %pix.sroa.41.14.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.41, i64 14
  %pix.sroa.41.14.pix.sroa.41.46._66.11 = load i8, ptr %pix.sroa.41.14.sroa_idx, align 2
  %_65.not.11 = icmp eq i8 %pix.sroa.41.14.pix.sroa.41.46._66.11, 46
  %or.cond77 = select i1 %or.cond76, i1 %_65.not.11, i1 false
  %pix.sroa.41.15.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.41, i64 15
  %pix.sroa.41.15.pix.sroa.41.47._73.11 = load i8, ptr %pix.sroa.41.15.sroa_idx, align 1
  %_72.not.11 = icmp eq i8 %pix.sroa.41.15.pix.sroa.41.47._73.11, -46
  %or.cond78 = select i1 %or.cond77, i1 %_72.not.11, i1 false
  br i1 %or.cond78, label %bb15.12, label %bb23

bb15.12:                                          ; preds = %bb15.11
  %pix.sroa.60.0.pix.sroa.60.48._52.12 = load i8, ptr %pix.sroa.60, align 16
  %_51.not.12 = icmp eq i8 %pix.sroa.60.0.pix.sroa.60.48._52.12, 0
  %pix.sroa.60.1.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.60, i64 1
  %pix.sroa.60.1.pix.sroa.60.49._59.12 = load i8, ptr %pix.sroa.60.1.sroa_idx, align 1
  %_58.not.12 = icmp eq i8 %pix.sroa.60.1.pix.sroa.60.49._59.12, -98
  %or.cond79 = select i1 %_51.not.12, i1 %_58.not.12, i1 false
  %pix.sroa.60.2.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.60, i64 2
  %pix.sroa.60.2.pix.sroa.60.50._66.12 = load i8, ptr %pix.sroa.60.2.sroa_idx, align 2
  %_65.not.12 = icmp eq i8 %pix.sroa.60.2.pix.sroa.60.50._66.12, 15
  %or.cond80 = select i1 %or.cond79, i1 %_65.not.12, i1 false
  %pix.sroa.60.3.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.60, i64 3
  %pix.sroa.60.3.pix.sroa.60.51._73.12 = load i8, ptr %pix.sroa.60.3.sroa_idx, align 1
  %_72.not.12 = icmp eq i8 %pix.sroa.60.3.pix.sroa.60.51._73.12, 71
  %or.cond81 = select i1 %or.cond80, i1 %_72.not.12, i1 false
  br i1 %or.cond81, label %bb15.13, label %bb23

bb15.13:                                          ; preds = %bb15.12
  %pix.sroa.60.4.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.60, i64 4
  %pix.sroa.60.4.pix.sroa.60.52._52.13 = load i8, ptr %pix.sroa.60.4.sroa_idx, align 4
  %_51.not.13 = icmp eq i8 %pix.sroa.60.4.pix.sroa.60.52._52.13, 83
  %pix.sroa.60.5.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.60, i64 5
  %pix.sroa.60.5.pix.sroa.60.53._59.13 = load i8, ptr %pix.sroa.60.5.sroa_idx, align 1
  %_58.not.13 = icmp eq i8 %pix.sroa.60.5.pix.sroa.60.53._59.13, 22
  %or.cond82 = select i1 %_51.not.13, i1 %_58.not.13, i1 false
  %pix.sroa.60.6.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.60, i64 6
  %pix.sroa.60.6.pix.sroa.60.54._66.13 = load i8, ptr %pix.sroa.60.6.sroa_idx, align 2
  %_65.not.13 = icmp eq i8 %pix.sroa.60.6.pix.sroa.60.54._66.13, -93
  %or.cond83 = select i1 %or.cond82, i1 %_65.not.13, i1 false
  %pix.sroa.60.7.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.60, i64 7
  %pix.sroa.60.7.pix.sroa.60.55._73.13 = load i8, ptr %pix.sroa.60.7.sroa_idx, align 1
  %_72.not.13 = icmp eq i8 %pix.sroa.60.7.pix.sroa.60.55._73.13, 1
  %or.cond84 = select i1 %or.cond83, i1 %_72.not.13, i1 false
  br i1 %or.cond84, label %bb15.14, label %bb23

bb15.14:                                          ; preds = %bb15.13
  %pix.sroa.60.8.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.60, i64 8
  %pix.sroa.60.8.pix.sroa.60.56._52.14 = load i8, ptr %pix.sroa.60.8.sroa_idx, align 8
  %_51.not.14 = icmp eq i8 %pix.sroa.60.8.pix.sroa.60.56._52.14, -67
  %pix.sroa.60.9.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.60, i64 9
  %pix.sroa.60.9.pix.sroa.60.57._59.14 = load i8, ptr %pix.sroa.60.9.sroa_idx, align 1
  %_58.not.14 = icmp eq i8 %pix.sroa.60.9.pix.sroa.60.57._59.14, 97
  %or.cond85 = select i1 %_51.not.14, i1 %_58.not.14, i1 false
  %pix.sroa.60.10.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.60, i64 10
  %pix.sroa.60.10.pix.sroa.60.58._66.14 = load i8, ptr %pix.sroa.60.10.sroa_idx, align 2
  %_65.not.14 = icmp eq i8 %pix.sroa.60.10.pix.sroa.60.58._66.14, 64
  %or.cond86 = select i1 %or.cond85, i1 %_65.not.14, i1 false
  %pix.sroa.60.11.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.60, i64 11
  %pix.sroa.60.11.pix.sroa.60.59._73.14 = load i8, ptr %pix.sroa.60.11.sroa_idx, align 1
  %_72.not.14 = icmp eq i8 %pix.sroa.60.11.pix.sroa.60.59._73.14, 87
  %or.cond87 = select i1 %or.cond86, i1 %_72.not.14, i1 false
  br i1 %or.cond87, label %bb15.15, label %bb23

bb15.15:                                          ; preds = %bb15.14
  %pix.sroa.60.12.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.60, i64 12
  %pix.sroa.60.12.pix.sroa.60.60._52.15 = load i8, ptr %pix.sroa.60.12.sroa_idx, align 4
  %_51.not.15 = icmp eq i8 %pix.sroa.60.12.pix.sroa.60.60._52.15, 28
  %pix.sroa.60.13.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.60, i64 13
  %pix.sroa.60.13.pix.sroa.60.61._59.15 = load i8, ptr %pix.sroa.60.13.sroa_idx, align 1
  %_58.not.15 = icmp eq i8 %pix.sroa.60.13.pix.sroa.60.61._59.15, 108
  %or.cond88 = select i1 %_51.not.15, i1 %_58.not.15, i1 false
  %pix.sroa.60.14.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.60, i64 14
  %pix.sroa.60.14.pix.sroa.60.62._66.15 = load i8, ptr %pix.sroa.60.14.sroa_idx, align 2
  %_65.not.15 = icmp eq i8 %pix.sroa.60.14.pix.sroa.60.62._66.15, 111
  %or.cond89 = select i1 %or.cond88, i1 %_65.not.15, i1 false
  %pix.sroa.60.15.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.60, i64 15
  %pix.sroa.60.15.pix.sroa.60.63._73.15 = load i8, ptr %pix.sroa.60.15.sroa_idx, align 1
  %_72.not.15 = icmp eq i8 %pix.sroa.60.15.pix.sroa.60.63._73.15, -69
  %or.cond90 = select i1 %or.cond89, i1 %_72.not.15, i1 false
  br i1 %or.cond90, label %bb2.16, label %bb23

bb2.16:                                           ; preds = %bb15.15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix.sroa.0)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix.sroa.22)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix.sroa.41)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix.sroa.60)
  br label %bb25

bb23:                                             ; preds = %bb15.15, %bb15.14, %bb15.13, %bb15.12, %bb15.11, %bb15.10, %bb15.9, %bb15.8, %bb15.7, %bb15.6, %bb15.5, %bb15.4, %bb15.3, %bb15.2, %bb15.1, %bb3.i12.i.i.7
  %iter.sroa.0.0.lcssa27 = phi i64 [ 0, %bb3.i12.i.i.7 ], [ 1, %bb15.1 ], [ 2, %bb15.2 ], [ 3, %bb15.3 ], [ 4, %bb15.4 ], [ 5, %bb15.5 ], [ 6, %bb15.6 ], [ 7, %bb15.7 ], [ 8, %bb15.8 ], [ 9, %bb15.9 ], [ 10, %bb15.10 ], [ 11, %bb15.11 ], [ 12, %bb15.12 ], [ 13, %bb15.13 ], [ 14, %bb15.14 ], [ 15, %bb15.15 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix.sroa.0)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix.sroa.22)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix.sroa.41)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix.sroa.60)
  br label %bb25

bb25:                                             ; preds = %bb23, %bb2.16
  %iter.sroa.0.028 = phi i64 [ 16, %bb2.16 ], [ %iter.sroa.0.0.lcssa27, %bb23 ]
  %0 = icmp ugt i64 %iter.sroa.0.028, 15
  ret i1 %0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @run_test_4() unnamed_addr #0 {
bb3.i12.i.i:
  %pix.sroa.0 = alloca [4 x %"src::lib::CpPixelT"], align 16
  %pix.sroa.22 = alloca [4 x %"src::lib::CpPixelT"], align 16
  %pix.sroa.41 = alloca [4 x %"src::lib::CpPixelT"], align 16
  %pix.sroa.59 = alloca [4 x %"src::lib::CpPixelT"], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix.sroa.0)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix.sroa.22)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix.sroa.41)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pix.sroa.59)
  store <16 x i8> <i8 -100, i8 76, i8 -64, i8 10, i8 29, i8 -33, i8 26, i8 -36, i8 41, i8 -86, i8 -69, i8 -38, i8 7, i8 -60, i8 80, i8 36>, ptr %pix.sroa.0, align 16
  store <16 x i8> <i8 -24, i8 -79, i8 109, i8 -24, i8 -15, i8 117, i8 71, i8 66, i8 120, i8 62, i8 -1, i8 -84, i8 32, i8 -19, i8 62, i8 -83>, ptr %pix.sroa.22, align 16
  store <16 x i8> <i8 -57, i8 -73, i8 58, i8 -102, i8 54, i8 26, i8 89, i8 13, i8 -46, i8 4, i8 123, i8 84, i8 106, i8 -81, i8 4, i8 74>, ptr %pix.sroa.41, align 16
  store <16 x i8> <i8 -109, i8 -57, i8 -128, i8 18, i8 51, i8 -98, i8 55, i8 -65, i8 60, i8 -128, i8 102, i8 27, i8 -126, i8 125, i8 -85, i8 63>, ptr %pix.sroa.59, align 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  store <4 x i32> <i32 -1707427897, i32 223943222, i32 1417348306, i32 1241821034>, ptr %pix.sroa.0, align 16, !alias.scope !142, !noalias !148
  store <4 x i32> <i32 180374684, i32 -602218723, i32 -625235415, i32 609272839>, ptr %pix.sroa.41, align 16, !alias.scope !151, !noalias !156
  %pix.sroa.22.0.pix.sroa.22.16. = load <4 x i32>, ptr %pix.sroa.22, align 16, !alias.scope !157, !noalias !148
  store <4 x i32> <i32 310429587, i32 -1086874061, i32 459702332, i32 1068203394>, ptr %pix.sroa.22, align 16, !alias.scope !157, !noalias !148
  store <4 x i32> %pix.sroa.22.0.pix.sroa.22.16., ptr %pix.sroa.59, align 16, !alias.scope !162, !noalias !156
  %pix.sroa.0.0.pix.sroa.0.0._52 = load i8, ptr %pix.sroa.0, align 16
  %_51.not = icmp eq i8 %pix.sroa.0.0.pix.sroa.0.0._52, -57
  %pix.sroa.0.1.sroa_idx25 = getelementptr inbounds i8, ptr %pix.sroa.0, i64 1
  %pix.sroa.0.1.pix.sroa.0.1._59 = load i8, ptr %pix.sroa.0.1.sroa_idx25, align 1
  %_58.not = icmp eq i8 %pix.sroa.0.1.pix.sroa.0.1._59, -73
  %or.cond = select i1 %_51.not, i1 %_58.not, i1 false
  %pix.sroa.0.2.sroa_idx26 = getelementptr inbounds i8, ptr %pix.sroa.0, i64 2
  %pix.sroa.0.2.pix.sroa.0.2._66 = load i8, ptr %pix.sroa.0.2.sroa_idx26, align 2
  %_65.not = icmp eq i8 %pix.sroa.0.2.pix.sroa.0.2._66, 58
  %or.cond40 = select i1 %or.cond, i1 %_65.not, i1 false
  %pix.sroa.0.3.sroa_idx27 = getelementptr inbounds i8, ptr %pix.sroa.0, i64 3
  %pix.sroa.0.3.pix.sroa.0.3._73 = load i8, ptr %pix.sroa.0.3.sroa_idx27, align 1
  %_72.not = icmp eq i8 %pix.sroa.0.3.pix.sroa.0.3._73, -102
  %or.cond41 = select i1 %or.cond40, i1 %_72.not, i1 false
  br i1 %or.cond41, label %bb15.1, label %bb23

bb15.1:                                           ; preds = %bb3.i12.i.i
  %pix.sroa.0.4.sroa_idx28 = getelementptr inbounds i8, ptr %pix.sroa.0, i64 4
  %pix.sroa.0.4.pix.sroa.0.4._52.1 = load i8, ptr %pix.sroa.0.4.sroa_idx28, align 4
  %_51.not.1 = icmp eq i8 %pix.sroa.0.4.pix.sroa.0.4._52.1, 54
  %pix.sroa.0.5.sroa_idx29 = getelementptr inbounds i8, ptr %pix.sroa.0, i64 5
  %pix.sroa.0.5.pix.sroa.0.5._59.1 = load i8, ptr %pix.sroa.0.5.sroa_idx29, align 1
  %_58.not.1 = icmp eq i8 %pix.sroa.0.5.pix.sroa.0.5._59.1, 26
  %or.cond42 = select i1 %_51.not.1, i1 %_58.not.1, i1 false
  %pix.sroa.0.6.sroa_idx30 = getelementptr inbounds i8, ptr %pix.sroa.0, i64 6
  %pix.sroa.0.6.pix.sroa.0.6._66.1 = load i8, ptr %pix.sroa.0.6.sroa_idx30, align 2
  %_65.not.1 = icmp eq i8 %pix.sroa.0.6.pix.sroa.0.6._66.1, 89
  %or.cond43 = select i1 %or.cond42, i1 %_65.not.1, i1 false
  %pix.sroa.0.7.sroa_idx31 = getelementptr inbounds i8, ptr %pix.sroa.0, i64 7
  %pix.sroa.0.7.pix.sroa.0.7._73.1 = load i8, ptr %pix.sroa.0.7.sroa_idx31, align 1
  %_72.not.1 = icmp eq i8 %pix.sroa.0.7.pix.sroa.0.7._73.1, 13
  %or.cond44 = select i1 %or.cond43, i1 %_72.not.1, i1 false
  br i1 %or.cond44, label %bb15.2, label %bb23

bb15.2:                                           ; preds = %bb15.1
  %pix.sroa.0.8.sroa_idx32 = getelementptr inbounds i8, ptr %pix.sroa.0, i64 8
  %pix.sroa.0.8.pix.sroa.0.8._52.2 = load i8, ptr %pix.sroa.0.8.sroa_idx32, align 8
  %_51.not.2 = icmp eq i8 %pix.sroa.0.8.pix.sroa.0.8._52.2, -46
  %pix.sroa.0.9.sroa_idx33 = getelementptr inbounds i8, ptr %pix.sroa.0, i64 9
  %pix.sroa.0.9.pix.sroa.0.9._59.2 = load i8, ptr %pix.sroa.0.9.sroa_idx33, align 1
  %_58.not.2 = icmp eq i8 %pix.sroa.0.9.pix.sroa.0.9._59.2, 4
  %or.cond45 = select i1 %_51.not.2, i1 %_58.not.2, i1 false
  %pix.sroa.0.10.sroa_idx34 = getelementptr inbounds i8, ptr %pix.sroa.0, i64 10
  %pix.sroa.0.10.pix.sroa.0.10._66.2 = load i8, ptr %pix.sroa.0.10.sroa_idx34, align 2
  %_65.not.2 = icmp eq i8 %pix.sroa.0.10.pix.sroa.0.10._66.2, 123
  %or.cond46 = select i1 %or.cond45, i1 %_65.not.2, i1 false
  %pix.sroa.0.11.sroa_idx35 = getelementptr inbounds i8, ptr %pix.sroa.0, i64 11
  %pix.sroa.0.11.pix.sroa.0.11._73.2 = load i8, ptr %pix.sroa.0.11.sroa_idx35, align 1
  %_72.not.2 = icmp eq i8 %pix.sroa.0.11.pix.sroa.0.11._73.2, 84
  %or.cond47 = select i1 %or.cond46, i1 %_72.not.2, i1 false
  br i1 %or.cond47, label %bb15.3, label %bb23

bb15.3:                                           ; preds = %bb15.2
  %pix.sroa.0.12.sroa_idx36 = getelementptr inbounds i8, ptr %pix.sroa.0, i64 12
  %pix.sroa.0.12.pix.sroa.0.12._52.3 = load i8, ptr %pix.sroa.0.12.sroa_idx36, align 4
  %_51.not.3 = icmp eq i8 %pix.sroa.0.12.pix.sroa.0.12._52.3, 106
  %pix.sroa.0.13.sroa_idx37 = getelementptr inbounds i8, ptr %pix.sroa.0, i64 13
  %pix.sroa.0.13.pix.sroa.0.13._59.3 = load i8, ptr %pix.sroa.0.13.sroa_idx37, align 1
  %_58.not.3 = icmp eq i8 %pix.sroa.0.13.pix.sroa.0.13._59.3, -81
  %or.cond48 = select i1 %_51.not.3, i1 %_58.not.3, i1 false
  %pix.sroa.0.14.sroa_idx38 = getelementptr inbounds i8, ptr %pix.sroa.0, i64 14
  %pix.sroa.0.14.pix.sroa.0.14._66.3 = load i8, ptr %pix.sroa.0.14.sroa_idx38, align 2
  %_65.not.3 = icmp eq i8 %pix.sroa.0.14.pix.sroa.0.14._66.3, 4
  %or.cond49 = select i1 %or.cond48, i1 %_65.not.3, i1 false
  %pix.sroa.0.15.sroa_idx39 = getelementptr inbounds i8, ptr %pix.sroa.0, i64 15
  %pix.sroa.0.15.pix.sroa.0.15._73.3 = load i8, ptr %pix.sroa.0.15.sroa_idx39, align 1
  %_72.not.3 = icmp eq i8 %pix.sroa.0.15.pix.sroa.0.15._73.3, 74
  %or.cond50 = select i1 %or.cond49, i1 %_72.not.3, i1 false
  br i1 %or.cond50, label %bb15.4, label %bb23

bb15.4:                                           ; preds = %bb15.3
  %pix.sroa.22.0.pix.sroa.22.16._52.4 = load i8, ptr %pix.sroa.22, align 16
  %_51.not.4 = icmp eq i8 %pix.sroa.22.0.pix.sroa.22.16._52.4, -109
  %pix.sroa.22.1.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.22, i64 1
  %pix.sroa.22.1.pix.sroa.22.17._59.4 = load i8, ptr %pix.sroa.22.1.sroa_idx, align 1
  %_58.not.4 = icmp eq i8 %pix.sroa.22.1.pix.sroa.22.17._59.4, -57
  %or.cond51 = select i1 %_51.not.4, i1 %_58.not.4, i1 false
  %pix.sroa.22.2.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.22, i64 2
  %pix.sroa.22.2.pix.sroa.22.18._66.4 = load i8, ptr %pix.sroa.22.2.sroa_idx, align 2
  %_65.not.4 = icmp eq i8 %pix.sroa.22.2.pix.sroa.22.18._66.4, -128
  %or.cond52 = select i1 %or.cond51, i1 %_65.not.4, i1 false
  %pix.sroa.22.3.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.22, i64 3
  %pix.sroa.22.3.pix.sroa.22.19._73.4 = load i8, ptr %pix.sroa.22.3.sroa_idx, align 1
  %_72.not.4 = icmp eq i8 %pix.sroa.22.3.pix.sroa.22.19._73.4, 18
  %or.cond53 = select i1 %or.cond52, i1 %_72.not.4, i1 false
  br i1 %or.cond53, label %bb15.5, label %bb23

bb15.5:                                           ; preds = %bb15.4
  %pix.sroa.22.4.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.22, i64 4
  %pix.sroa.22.4.pix.sroa.22.20._52.5 = load i8, ptr %pix.sroa.22.4.sroa_idx, align 4
  %_51.not.5 = icmp eq i8 %pix.sroa.22.4.pix.sroa.22.20._52.5, 51
  %pix.sroa.22.5.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.22, i64 5
  %pix.sroa.22.5.pix.sroa.22.21._59.5 = load i8, ptr %pix.sroa.22.5.sroa_idx, align 1
  %_58.not.5 = icmp eq i8 %pix.sroa.22.5.pix.sroa.22.21._59.5, -98
  %or.cond54 = select i1 %_51.not.5, i1 %_58.not.5, i1 false
  %pix.sroa.22.6.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.22, i64 6
  %pix.sroa.22.6.pix.sroa.22.22._66.5 = load i8, ptr %pix.sroa.22.6.sroa_idx, align 2
  %_65.not.5 = icmp eq i8 %pix.sroa.22.6.pix.sroa.22.22._66.5, 55
  %or.cond55 = select i1 %or.cond54, i1 %_65.not.5, i1 false
  %pix.sroa.22.7.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.22, i64 7
  %pix.sroa.22.7.pix.sroa.22.23._73.5 = load i8, ptr %pix.sroa.22.7.sroa_idx, align 1
  %_72.not.5 = icmp eq i8 %pix.sroa.22.7.pix.sroa.22.23._73.5, -65
  %or.cond56 = select i1 %or.cond55, i1 %_72.not.5, i1 false
  br i1 %or.cond56, label %bb15.6, label %bb23

bb15.6:                                           ; preds = %bb15.5
  %pix.sroa.22.8.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.22, i64 8
  %pix.sroa.22.8.pix.sroa.22.24._52.6 = load i8, ptr %pix.sroa.22.8.sroa_idx, align 8
  %_51.not.6 = icmp eq i8 %pix.sroa.22.8.pix.sroa.22.24._52.6, 60
  %pix.sroa.22.9.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.22, i64 9
  %pix.sroa.22.9.pix.sroa.22.25._59.6 = load i8, ptr %pix.sroa.22.9.sroa_idx, align 1
  %_58.not.6 = icmp eq i8 %pix.sroa.22.9.pix.sroa.22.25._59.6, -128
  %or.cond57 = select i1 %_51.not.6, i1 %_58.not.6, i1 false
  %pix.sroa.22.10.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.22, i64 10
  %pix.sroa.22.10.pix.sroa.22.26._66.6 = load i8, ptr %pix.sroa.22.10.sroa_idx, align 2
  %_65.not.6 = icmp eq i8 %pix.sroa.22.10.pix.sroa.22.26._66.6, 102
  %or.cond58 = select i1 %or.cond57, i1 %_65.not.6, i1 false
  %pix.sroa.22.11.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.22, i64 11
  %pix.sroa.22.11.pix.sroa.22.27._73.6 = load i8, ptr %pix.sroa.22.11.sroa_idx, align 1
  %_72.not.6 = icmp eq i8 %pix.sroa.22.11.pix.sroa.22.27._73.6, 27
  %or.cond59 = select i1 %or.cond58, i1 %_72.not.6, i1 false
  br i1 %or.cond59, label %bb15.7, label %bb23

bb15.7:                                           ; preds = %bb15.6
  %pix.sroa.22.12.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.22, i64 12
  %pix.sroa.22.12.pix.sroa.22.28._52.7 = load i8, ptr %pix.sroa.22.12.sroa_idx, align 4
  %_51.not.7 = icmp eq i8 %pix.sroa.22.12.pix.sroa.22.28._52.7, -126
  %pix.sroa.22.13.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.22, i64 13
  %pix.sroa.22.13.pix.sroa.22.29._59.7 = load i8, ptr %pix.sroa.22.13.sroa_idx, align 1
  %_58.not.7 = icmp eq i8 %pix.sroa.22.13.pix.sroa.22.29._59.7, 125
  %or.cond60 = select i1 %_51.not.7, i1 %_58.not.7, i1 false
  %pix.sroa.22.14.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.22, i64 14
  %pix.sroa.22.14.pix.sroa.22.30._66.7 = load i8, ptr %pix.sroa.22.14.sroa_idx, align 2
  %_65.not.7 = icmp eq i8 %pix.sroa.22.14.pix.sroa.22.30._66.7, -85
  %or.cond61 = select i1 %or.cond60, i1 %_65.not.7, i1 false
  %pix.sroa.22.15.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.22, i64 15
  %pix.sroa.22.15.pix.sroa.22.31._73.7 = load i8, ptr %pix.sroa.22.15.sroa_idx, align 1
  %_72.not.7 = icmp eq i8 %pix.sroa.22.15.pix.sroa.22.31._73.7, 63
  %or.cond62 = select i1 %or.cond61, i1 %_72.not.7, i1 false
  br i1 %or.cond62, label %bb15.8, label %bb23

bb15.8:                                           ; preds = %bb15.7
  %pix.sroa.41.0.pix.sroa.41.32._52.8 = load i8, ptr %pix.sroa.41, align 16
  %_51.not.8 = icmp eq i8 %pix.sroa.41.0.pix.sroa.41.32._52.8, -100
  %pix.sroa.41.1.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.41, i64 1
  %pix.sroa.41.1.pix.sroa.41.33._59.8 = load i8, ptr %pix.sroa.41.1.sroa_idx, align 1
  %_58.not.8 = icmp eq i8 %pix.sroa.41.1.pix.sroa.41.33._59.8, 76
  %or.cond63 = select i1 %_51.not.8, i1 %_58.not.8, i1 false
  %pix.sroa.41.2.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.41, i64 2
  %pix.sroa.41.2.pix.sroa.41.34._66.8 = load i8, ptr %pix.sroa.41.2.sroa_idx, align 2
  %_65.not.8 = icmp eq i8 %pix.sroa.41.2.pix.sroa.41.34._66.8, -64
  %or.cond64 = select i1 %or.cond63, i1 %_65.not.8, i1 false
  %pix.sroa.41.3.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.41, i64 3
  %pix.sroa.41.3.pix.sroa.41.35._73.8 = load i8, ptr %pix.sroa.41.3.sroa_idx, align 1
  %_72.not.8 = icmp eq i8 %pix.sroa.41.3.pix.sroa.41.35._73.8, 10
  %or.cond65 = select i1 %or.cond64, i1 %_72.not.8, i1 false
  br i1 %or.cond65, label %bb15.9, label %bb23

bb15.9:                                           ; preds = %bb15.8
  %pix.sroa.41.4.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.41, i64 4
  %pix.sroa.41.4.pix.sroa.41.36._52.9 = load i8, ptr %pix.sroa.41.4.sroa_idx, align 4
  %_51.not.9 = icmp eq i8 %pix.sroa.41.4.pix.sroa.41.36._52.9, 29
  %pix.sroa.41.5.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.41, i64 5
  %pix.sroa.41.5.pix.sroa.41.37._59.9 = load i8, ptr %pix.sroa.41.5.sroa_idx, align 1
  %_58.not.9 = icmp eq i8 %pix.sroa.41.5.pix.sroa.41.37._59.9, -33
  %or.cond66 = select i1 %_51.not.9, i1 %_58.not.9, i1 false
  %pix.sroa.41.6.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.41, i64 6
  %pix.sroa.41.6.pix.sroa.41.38._66.9 = load i8, ptr %pix.sroa.41.6.sroa_idx, align 2
  %_65.not.9 = icmp eq i8 %pix.sroa.41.6.pix.sroa.41.38._66.9, 26
  %or.cond67 = select i1 %or.cond66, i1 %_65.not.9, i1 false
  %pix.sroa.41.7.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.41, i64 7
  %pix.sroa.41.7.pix.sroa.41.39._73.9 = load i8, ptr %pix.sroa.41.7.sroa_idx, align 1
  %_72.not.9 = icmp eq i8 %pix.sroa.41.7.pix.sroa.41.39._73.9, -36
  %or.cond68 = select i1 %or.cond67, i1 %_72.not.9, i1 false
  br i1 %or.cond68, label %bb15.10, label %bb23

bb15.10:                                          ; preds = %bb15.9
  %pix.sroa.41.8.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.41, i64 8
  %pix.sroa.41.8.pix.sroa.41.40._52.10 = load i8, ptr %pix.sroa.41.8.sroa_idx, align 8
  %_51.not.10 = icmp eq i8 %pix.sroa.41.8.pix.sroa.41.40._52.10, 41
  %pix.sroa.41.9.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.41, i64 9
  %pix.sroa.41.9.pix.sroa.41.41._59.10 = load i8, ptr %pix.sroa.41.9.sroa_idx, align 1
  %_58.not.10 = icmp eq i8 %pix.sroa.41.9.pix.sroa.41.41._59.10, -86
  %or.cond69 = select i1 %_51.not.10, i1 %_58.not.10, i1 false
  %pix.sroa.41.10.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.41, i64 10
  %pix.sroa.41.10.pix.sroa.41.42._66.10 = load i8, ptr %pix.sroa.41.10.sroa_idx, align 2
  %_65.not.10 = icmp eq i8 %pix.sroa.41.10.pix.sroa.41.42._66.10, -69
  %or.cond70 = select i1 %or.cond69, i1 %_65.not.10, i1 false
  %pix.sroa.41.11.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.41, i64 11
  %pix.sroa.41.11.pix.sroa.41.43._73.10 = load i8, ptr %pix.sroa.41.11.sroa_idx, align 1
  %_72.not.10 = icmp eq i8 %pix.sroa.41.11.pix.sroa.41.43._73.10, -38
  %or.cond71 = select i1 %or.cond70, i1 %_72.not.10, i1 false
  br i1 %or.cond71, label %bb15.11, label %bb23

bb15.11:                                          ; preds = %bb15.10
  %pix.sroa.41.12.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.41, i64 12
  %pix.sroa.41.12.pix.sroa.41.44._52.11 = load i8, ptr %pix.sroa.41.12.sroa_idx, align 4
  %_51.not.11 = icmp eq i8 %pix.sroa.41.12.pix.sroa.41.44._52.11, 7
  %pix.sroa.41.13.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.41, i64 13
  %pix.sroa.41.13.pix.sroa.41.45._59.11 = load i8, ptr %pix.sroa.41.13.sroa_idx, align 1
  %_58.not.11 = icmp eq i8 %pix.sroa.41.13.pix.sroa.41.45._59.11, -60
  %or.cond72 = select i1 %_51.not.11, i1 %_58.not.11, i1 false
  %pix.sroa.41.14.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.41, i64 14
  %pix.sroa.41.14.pix.sroa.41.46._66.11 = load i8, ptr %pix.sroa.41.14.sroa_idx, align 2
  %_65.not.11 = icmp eq i8 %pix.sroa.41.14.pix.sroa.41.46._66.11, 80
  %or.cond73 = select i1 %or.cond72, i1 %_65.not.11, i1 false
  %pix.sroa.41.15.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.41, i64 15
  %pix.sroa.41.15.pix.sroa.41.47._73.11 = load i8, ptr %pix.sroa.41.15.sroa_idx, align 1
  %_72.not.11 = icmp eq i8 %pix.sroa.41.15.pix.sroa.41.47._73.11, 36
  %or.cond74 = select i1 %or.cond73, i1 %_72.not.11, i1 false
  br i1 %or.cond74, label %bb15.12, label %bb23

bb15.12:                                          ; preds = %bb15.11
  %pix.sroa.59.0.pix.sroa.59.48._52.12 = load i8, ptr %pix.sroa.59, align 16
  %_51.not.12 = icmp eq i8 %pix.sroa.59.0.pix.sroa.59.48._52.12, -24
  %pix.sroa.59.1.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.59, i64 1
  %pix.sroa.59.1.pix.sroa.59.49._59.12 = load i8, ptr %pix.sroa.59.1.sroa_idx, align 1
  %_58.not.12 = icmp eq i8 %pix.sroa.59.1.pix.sroa.59.49._59.12, -79
  %or.cond75 = select i1 %_51.not.12, i1 %_58.not.12, i1 false
  %pix.sroa.59.2.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.59, i64 2
  %pix.sroa.59.2.pix.sroa.59.50._66.12 = load i8, ptr %pix.sroa.59.2.sroa_idx, align 2
  %_65.not.12 = icmp eq i8 %pix.sroa.59.2.pix.sroa.59.50._66.12, 109
  %or.cond76 = select i1 %or.cond75, i1 %_65.not.12, i1 false
  %pix.sroa.59.3.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.59, i64 3
  %pix.sroa.59.3.pix.sroa.59.51._73.12 = load i8, ptr %pix.sroa.59.3.sroa_idx, align 1
  %_72.not.12 = icmp eq i8 %pix.sroa.59.3.pix.sroa.59.51._73.12, -24
  %or.cond77 = select i1 %or.cond76, i1 %_72.not.12, i1 false
  br i1 %or.cond77, label %bb15.13, label %bb23

bb15.13:                                          ; preds = %bb15.12
  %pix.sroa.59.4.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.59, i64 4
  %pix.sroa.59.4.pix.sroa.59.52._52.13 = load i8, ptr %pix.sroa.59.4.sroa_idx, align 4
  %_51.not.13 = icmp eq i8 %pix.sroa.59.4.pix.sroa.59.52._52.13, -15
  %pix.sroa.59.5.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.59, i64 5
  %pix.sroa.59.5.pix.sroa.59.53._59.13 = load i8, ptr %pix.sroa.59.5.sroa_idx, align 1
  %_58.not.13 = icmp eq i8 %pix.sroa.59.5.pix.sroa.59.53._59.13, 117
  %or.cond78 = select i1 %_51.not.13, i1 %_58.not.13, i1 false
  %pix.sroa.59.6.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.59, i64 6
  %pix.sroa.59.6.pix.sroa.59.54._66.13 = load i8, ptr %pix.sroa.59.6.sroa_idx, align 2
  %_65.not.13 = icmp eq i8 %pix.sroa.59.6.pix.sroa.59.54._66.13, 71
  %or.cond79 = select i1 %or.cond78, i1 %_65.not.13, i1 false
  %pix.sroa.59.7.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.59, i64 7
  %pix.sroa.59.7.pix.sroa.59.55._73.13 = load i8, ptr %pix.sroa.59.7.sroa_idx, align 1
  %_72.not.13 = icmp eq i8 %pix.sroa.59.7.pix.sroa.59.55._73.13, 66
  %or.cond80 = select i1 %or.cond79, i1 %_72.not.13, i1 false
  br i1 %or.cond80, label %bb15.14, label %bb23

bb15.14:                                          ; preds = %bb15.13
  %pix.sroa.59.8.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.59, i64 8
  %pix.sroa.59.8.pix.sroa.59.56._52.14 = load i8, ptr %pix.sroa.59.8.sroa_idx, align 8
  %_51.not.14 = icmp eq i8 %pix.sroa.59.8.pix.sroa.59.56._52.14, 120
  %pix.sroa.59.9.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.59, i64 9
  %pix.sroa.59.9.pix.sroa.59.57._59.14 = load i8, ptr %pix.sroa.59.9.sroa_idx, align 1
  %_58.not.14 = icmp eq i8 %pix.sroa.59.9.pix.sroa.59.57._59.14, 62
  %or.cond81 = select i1 %_51.not.14, i1 %_58.not.14, i1 false
  %pix.sroa.59.10.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.59, i64 10
  %pix.sroa.59.10.pix.sroa.59.58._66.14 = load i8, ptr %pix.sroa.59.10.sroa_idx, align 2
  %_65.not.14 = icmp eq i8 %pix.sroa.59.10.pix.sroa.59.58._66.14, -1
  %or.cond82 = select i1 %or.cond81, i1 %_65.not.14, i1 false
  %pix.sroa.59.11.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.59, i64 11
  %pix.sroa.59.11.pix.sroa.59.59._73.14 = load i8, ptr %pix.sroa.59.11.sroa_idx, align 1
  %_72.not.14 = icmp eq i8 %pix.sroa.59.11.pix.sroa.59.59._73.14, -84
  %or.cond83 = select i1 %or.cond82, i1 %_72.not.14, i1 false
  br i1 %or.cond83, label %bb15.15, label %bb23

bb15.15:                                          ; preds = %bb15.14
  %pix.sroa.59.12.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.59, i64 12
  %pix.sroa.59.12.pix.sroa.59.60._52.15 = load i8, ptr %pix.sroa.59.12.sroa_idx, align 4
  %_51.not.15 = icmp eq i8 %pix.sroa.59.12.pix.sroa.59.60._52.15, 32
  %pix.sroa.59.13.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.59, i64 13
  %pix.sroa.59.13.pix.sroa.59.61._59.15 = load i8, ptr %pix.sroa.59.13.sroa_idx, align 1
  %_58.not.15 = icmp eq i8 %pix.sroa.59.13.pix.sroa.59.61._59.15, -19
  %or.cond84 = select i1 %_51.not.15, i1 %_58.not.15, i1 false
  %pix.sroa.59.14.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.59, i64 14
  %pix.sroa.59.14.pix.sroa.59.62._66.15 = load i8, ptr %pix.sroa.59.14.sroa_idx, align 2
  %_65.not.15 = icmp eq i8 %pix.sroa.59.14.pix.sroa.59.62._66.15, 62
  %or.cond85 = select i1 %or.cond84, i1 %_65.not.15, i1 false
  %pix.sroa.59.15.sroa_idx = getelementptr inbounds i8, ptr %pix.sroa.59, i64 15
  %pix.sroa.59.15.pix.sroa.59.63._73.15 = load i8, ptr %pix.sroa.59.15.sroa_idx, align 1
  %_72.not.15 = icmp eq i8 %pix.sroa.59.15.pix.sroa.59.63._73.15, -83
  %or.cond86 = select i1 %or.cond85, i1 %_72.not.15, i1 false
  br i1 %or.cond86, label %bb2.16, label %bb23

bb2.16:                                           ; preds = %bb15.15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix.sroa.0)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix.sroa.22)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix.sroa.41)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix.sroa.59)
  br label %bb25

bb23:                                             ; preds = %bb15.15, %bb15.14, %bb15.13, %bb15.12, %bb15.11, %bb15.10, %bb15.9, %bb15.8, %bb15.7, %bb15.6, %bb15.5, %bb15.4, %bb15.3, %bb15.2, %bb15.1, %bb3.i12.i.i
  %iter.sroa.0.0.lcssa23 = phi i64 [ 0, %bb3.i12.i.i ], [ 1, %bb15.1 ], [ 2, %bb15.2 ], [ 3, %bb15.3 ], [ 4, %bb15.4 ], [ 5, %bb15.5 ], [ 6, %bb15.6 ], [ 7, %bb15.7 ], [ 8, %bb15.8 ], [ 9, %bb15.9 ], [ 10, %bb15.10 ], [ 11, %bb15.11 ], [ 12, %bb15.12 ], [ 13, %bb15.13 ], [ 14, %bb15.14 ], [ 15, %bb15.15 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix.sroa.0)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix.sroa.22)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix.sroa.41)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pix.sroa.59)
  br label %bb25

bb25:                                             ; preds = %bb23, %bb2.16
  %iter.sroa.0.024 = phi i64 [ 16, %bb2.16 ], [ %iter.sroa.0.0.lcssa23, %bb23 ]
  %0 = icmp ugt i64 %iter.sroa.0.024, 15
  ret i1 %0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @run_test_5() unnamed_addr #0 {
bb10.i.i:
  ret i1 true
}

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!3}
!3 = distinct !{!3, !4, !"_ZN19flip_horizontal_lib3src3lib15flip_horizontal17h08d51c781305aab7E: %img"}
!4 = distinct !{!4, !"_ZN19flip_horizontal_lib3src3lib15flip_horizontal17h08d51c781305aab7E"}
!5 = !{}
!6 = !{!7, !3}
!7 = distinct !{!7, !8, !"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17he85bd44667f52152E: %slice.0"}
!8 = distinct !{!8, !"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17he85bd44667f52152E"}
!9 = !{!10}
!10 = distinct !{!10, !11, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15swap_with_slice17hdedd7f908ebff9d6E: %self.0"}
!11 = distinct !{!11, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15swap_with_slice17hdedd7f908ebff9d6E"}
!12 = !{!13}
!13 = distinct !{!13, !11, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15swap_with_slice17hdedd7f908ebff9d6E: %other.0"}
!14 = !{!15}
!15 = distinct !{!15, !16, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE: %x"}
!16 = distinct !{!16, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE"}
!17 = !{!18}
!18 = distinct !{!18, !16, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE: %y"}
!19 = !{!15, !10}
!20 = !{!18, !13, !3}
!21 = !{!18, !13}
!22 = !{!15, !10, !3}
!23 = distinct !{!23, !24, !25}
!24 = !{!"llvm.loop.isvectorized", i32 1}
!25 = !{!"llvm.loop.unroll.runtime.disable"}
!26 = distinct !{!26, !25, !24}
!27 = !{!28}
!28 = distinct !{!28, !29, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15swap_with_slice17hdedd7f908ebff9d6E: %self.0"}
!29 = distinct !{!29, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15swap_with_slice17hdedd7f908ebff9d6E"}
!30 = !{!31}
!31 = distinct !{!31, !29, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15swap_with_slice17hdedd7f908ebff9d6E: %other.0"}
!32 = !{!33, !28, !35, !36, !37}
!33 = distinct !{!33, !34, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE: %x:It3"}
!34 = distinct !{!34, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE"}
!35 = distinct !{!35, !34, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE: %x:It2"}
!36 = distinct !{!36, !34, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE: %x:It1"}
!37 = distinct !{!37, !34, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE: %x"}
!38 = !{!31, !39}
!39 = distinct !{!39, !40, !"_ZN19flip_horizontal_lib3src3lib15flip_horizontal17h08d51c781305aab7E: %img"}
!40 = distinct !{!40, !"_ZN19flip_horizontal_lib3src3lib15flip_horizontal17h08d51c781305aab7E"}
!41 = !{!42, !31, !43, !44, !45}
!42 = distinct !{!42, !34, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE: %y:It3"}
!43 = distinct !{!43, !34, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE: %y:It2"}
!44 = distinct !{!44, !34, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE: %y:It1"}
!45 = distinct !{!45, !34, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE: %y"}
!46 = !{!28, !39}
!47 = !{!48}
!48 = distinct !{!48, !29, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15swap_with_slice17hdedd7f908ebff9d6E: %self.0:It1"}
!49 = !{!50}
!50 = distinct !{!50, !29, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15swap_with_slice17hdedd7f908ebff9d6E: %other.0:It1"}
!51 = !{!52, !50, !53, !54, !55}
!52 = distinct !{!52, !34, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE: %y:It3:It1"}
!53 = distinct !{!53, !34, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE: %y:It2:It1"}
!54 = distinct !{!54, !34, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE: %y:It1:It1"}
!55 = distinct !{!55, !34, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE: %y:It1"}
!56 = !{!48, !39}
!57 = !{!58, !48, !59, !60, !61}
!58 = distinct !{!58, !34, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE: %x:It3:It1"}
!59 = distinct !{!59, !34, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE: %x:It2:It1"}
!60 = distinct !{!60, !34, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE: %x:It1:It1"}
!61 = distinct !{!61, !34, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE: %x:It1"}
!62 = !{!50, !39}
!63 = !{!64, !66, !68, !69, !70, !71}
!64 = distinct !{!64, !65, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE: %x:It1:It1"}
!65 = distinct !{!65, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE"}
!66 = distinct !{!66, !67, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15swap_with_slice17hdedd7f908ebff9d6E: %self.0:It1"}
!67 = distinct !{!67, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15swap_with_slice17hdedd7f908ebff9d6E"}
!68 = distinct !{!68, !65, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE: %x:It1"}
!69 = distinct !{!69, !65, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE: %x:It1"}
!70 = distinct !{!70, !67, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15swap_with_slice17hdedd7f908ebff9d6E: %self.0"}
!71 = distinct !{!71, !65, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE: %x"}
!72 = !{!73}
!73 = distinct !{!73, !74, !"_ZN19flip_horizontal_lib3src3lib15flip_horizontal17h08d51c781305aab7E: %img"}
!74 = distinct !{!74, !"_ZN19flip_horizontal_lib3src3lib15flip_horizontal17h08d51c781305aab7E"}
!75 = !{!76, !77, !78, !79, !80, !81}
!76 = distinct !{!76, !65, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE: %y:It1"}
!77 = distinct !{!77, !67, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15swap_with_slice17hdedd7f908ebff9d6E: %other.0"}
!78 = distinct !{!78, !65, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE: %y"}
!79 = distinct !{!79, !65, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE: %y:It1:It1"}
!80 = distinct !{!80, !67, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15swap_with_slice17hdedd7f908ebff9d6E: %other.0:It1"}
!81 = distinct !{!81, !65, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE: %y:It1"}
!82 = !{!83, !84, !85, !86, !87, !88}
!83 = distinct !{!83, !65, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE: %x:It1:It3"}
!84 = distinct !{!84, !67, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15swap_with_slice17hdedd7f908ebff9d6E: %self.0:It3"}
!85 = distinct !{!85, !65, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE: %x:It3"}
!86 = distinct !{!86, !65, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE: %x:It1:It2"}
!87 = distinct !{!87, !67, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15swap_with_slice17hdedd7f908ebff9d6E: %self.0:It2"}
!88 = distinct !{!88, !65, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE: %x:It2"}
!89 = !{!90, !91, !92, !93, !94, !95}
!90 = distinct !{!90, !65, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE: %y:It1:It2"}
!91 = distinct !{!91, !67, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15swap_with_slice17hdedd7f908ebff9d6E: %other.0:It2"}
!92 = distinct !{!92, !65, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE: %y:It2"}
!93 = distinct !{!93, !65, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE: %y:It1:It3"}
!94 = distinct !{!94, !67, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15swap_with_slice17hdedd7f908ebff9d6E: %other.0:It3"}
!95 = distinct !{!95, !65, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE: %y:It3"}
!96 = !{!97, !99, !101, !102, !103, !104, !105, !106}
!97 = distinct !{!97, !98, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE: %x:It3"}
!98 = distinct !{!98, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE"}
!99 = distinct !{!99, !100, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15swap_with_slice17hdedd7f908ebff9d6E: %self.0:It3"}
!100 = distinct !{!100, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15swap_with_slice17hdedd7f908ebff9d6E"}
!101 = distinct !{!101, !98, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE: %x:It2"}
!102 = distinct !{!102, !100, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15swap_with_slice17hdedd7f908ebff9d6E: %self.0:It2"}
!103 = distinct !{!103, !98, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE: %x:It1"}
!104 = distinct !{!104, !100, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15swap_with_slice17hdedd7f908ebff9d6E: %self.0:It1"}
!105 = distinct !{!105, !98, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE: %x"}
!106 = distinct !{!106, !100, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15swap_with_slice17hdedd7f908ebff9d6E: %self.0"}
!107 = !{!108}
!108 = distinct !{!108, !109, !"_ZN19flip_horizontal_lib3src3lib15flip_horizontal17h08d51c781305aab7E: %img"}
!109 = distinct !{!109, !"_ZN19flip_horizontal_lib3src3lib15flip_horizontal17h08d51c781305aab7E"}
!110 = !{!111, !112, !113, !114, !115, !116, !117, !118}
!111 = distinct !{!111, !98, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE: %y"}
!112 = distinct !{!112, !100, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15swap_with_slice17hdedd7f908ebff9d6E: %other.0"}
!113 = distinct !{!113, !98, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE: %y:It1"}
!114 = distinct !{!114, !100, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15swap_with_slice17hdedd7f908ebff9d6E: %other.0:It1"}
!115 = distinct !{!115, !98, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE: %y:It2"}
!116 = distinct !{!116, !100, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15swap_with_slice17hdedd7f908ebff9d6E: %other.0:It2"}
!117 = distinct !{!117, !98, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE: %y:It3"}
!118 = distinct !{!118, !100, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15swap_with_slice17hdedd7f908ebff9d6E: %other.0:It3"}
!119 = !{!120, !121, !122, !123, !124, !125, !126, !127}
!120 = distinct !{!120, !98, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE: %x:It7"}
!121 = distinct !{!121, !100, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15swap_with_slice17hdedd7f908ebff9d6E: %self.0:It7"}
!122 = distinct !{!122, !98, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE: %x:It6"}
!123 = distinct !{!123, !100, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15swap_with_slice17hdedd7f908ebff9d6E: %self.0:It6"}
!124 = distinct !{!124, !98, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE: %x:It5"}
!125 = distinct !{!125, !100, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15swap_with_slice17hdedd7f908ebff9d6E: %self.0:It5"}
!126 = distinct !{!126, !98, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE: %x:It4"}
!127 = distinct !{!127, !100, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15swap_with_slice17hdedd7f908ebff9d6E: %self.0:It4"}
!128 = !{!129, !130, !131, !132, !133, !134, !135, !136}
!129 = distinct !{!129, !98, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE: %y:It4"}
!130 = distinct !{!130, !100, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15swap_with_slice17hdedd7f908ebff9d6E: %other.0:It4"}
!131 = distinct !{!131, !98, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE: %y:It5"}
!132 = distinct !{!132, !100, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15swap_with_slice17hdedd7f908ebff9d6E: %other.0:It5"}
!133 = distinct !{!133, !98, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE: %y:It6"}
!134 = distinct !{!134, !100, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15swap_with_slice17hdedd7f908ebff9d6E: %other.0:It6"}
!135 = distinct !{!135, !98, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE: %y:It7"}
!136 = distinct !{!136, !100, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15swap_with_slice17hdedd7f908ebff9d6E: %other.0:It7"}
!137 = !{!138}
!138 = distinct !{!138, !139, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15swap_with_slice17hdedd7f908ebff9d6E: %self.0"}
!139 = distinct !{!139, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15swap_with_slice17hdedd7f908ebff9d6E"}
!140 = !{!141}
!141 = distinct !{!141, !139, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15swap_with_slice17hdedd7f908ebff9d6E: %other.0"}
!142 = !{!143, !138, !145, !146, !147}
!143 = distinct !{!143, !144, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE: %x:It3"}
!144 = distinct !{!144, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE"}
!145 = distinct !{!145, !144, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE: %x:It2"}
!146 = distinct !{!146, !144, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE: %x:It1"}
!147 = distinct !{!147, !144, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE: %x"}
!148 = !{!141, !149}
!149 = distinct !{!149, !150, !"_ZN19flip_horizontal_lib3src3lib15flip_horizontal17h08d51c781305aab7E: %img"}
!150 = distinct !{!150, !"_ZN19flip_horizontal_lib3src3lib15flip_horizontal17h08d51c781305aab7E"}
!151 = !{!152, !141, !153, !154, !155}
!152 = distinct !{!152, !144, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE: %y:It3"}
!153 = distinct !{!153, !144, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE: %y:It2"}
!154 = distinct !{!154, !144, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE: %y:It1"}
!155 = distinct !{!155, !144, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE: %y"}
!156 = !{!138, !149}
!157 = !{!158, !138, !159, !160, !161}
!158 = distinct !{!158, !144, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE: %x:It7"}
!159 = distinct !{!159, !144, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE: %x:It6"}
!160 = distinct !{!160, !144, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE: %x:It5"}
!161 = distinct !{!161, !144, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE: %x:It4"}
!162 = !{!163, !141, !164, !165, !166}
!163 = distinct !{!163, !144, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE: %y:It7"}
!164 = distinct !{!164, !144, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE: %y:It6"}
!165 = distinct !{!165, !144, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE: %y:It5"}
!166 = distinct !{!166, !144, !"_ZN4core3mem11swap_simple17h91a01024c8a18b8aE: %y:It4"}
