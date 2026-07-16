; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; ASSERT EQ: i1 1 = call i1 @run_test_1()
; ASSERT EQ: i1 1 = call i1 @run_test_2()
; ASSERT EQ: i1 1 = call i1 @run_test_3()
; ASSERT EQ: i1 1 = call i1 @run_test_4()
; ASSERT EQ: i1 1 = call i1 @run_test_5()

@alloc_f5ffd2fd1476bab43ad89fb40c72d0c5 = private unnamed_addr constant <{ [10 x i8] }> <{ [10 x i8] c"src/lib.rs" }>, align 1
@alloc_0716236bf008dfd9e3e82df2c9ed2564 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00)\00\00\00D\00\00\00" }>, align 8
@alloc_2f4f9e7b1263304f4c22dadc7d99c644 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00)\00\00\00K\00\00\00" }>, align 8
@alloc_8875aa3007cfceead63e739e89fe7c00 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00+\00\00\00\14\00\00\00" }>, align 8
@alloc_23f06a3d884e9f9603c8ec551c9b5bb1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00+\00\00\00\0D\00\00\00" }>, align 8
@alloc_d749acd9627e3172d9d9f3ef92f26006 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00.\00\00\00\14\00\00\00" }>, align 8
@alloc_f2b696695c3f0a666e5107c7f9562b39 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00.\00\00\00\0D\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define void @merge_sort(ptr nocapture noundef nonnull %a, ptr nocapture noundef nonnull %b, i32 noundef %size) unnamed_addr #0 {
start:
  %size4.i = sext i32 %size to i64
  %0 = shl nsw i64 %size4.i, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %b, ptr nonnull align 8 %a, i64 %0, i1 false), !alias.scope !2
  tail call fastcc void @_ZN14merge_sort_lib3src3lib39spritebatch_internal_merge_sort_recurse17h46436279ebf57e76E(ptr noalias noundef nonnull align 8 %b, i64 noundef %size4.i, i64 noundef 0, i64 noundef %size4.i, ptr noalias noundef nonnull align 8 %a, i64 noundef %size4.i)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN14merge_sort_lib3src3lib39spritebatch_internal_merge_sort_recurse17h46436279ebf57e76E(ptr noalias nocapture noundef nonnull align 8 %b.0, i64 noundef %b.1, i64 noundef %lo, i64 noundef %hi, ptr noalias nocapture noundef nonnull align 8 %a.0, i64 noundef %a.1) unnamed_addr #0 {
start:
  %_6 = sub i64 %hi, %lo
  %_5 = icmp ult i64 %_6, 2
  br i1 %_5, label %bb6, label %bb2

bb2:                                              ; preds = %start
  %_8 = add i64 %hi, %lo
  %split1 = lshr i64 %_8, 1
  tail call fastcc void @_ZN14merge_sort_lib3src3lib39spritebatch_internal_merge_sort_recurse17h46436279ebf57e76E(ptr noalias noundef nonnull align 8 %a.0, i64 noundef %a.1, i64 noundef %lo, i64 noundef %split1, ptr noalias noundef nonnull align 8 %b.0, i64 noundef %b.1)
  tail call fastcc void @_ZN14merge_sort_lib3src3lib39spritebatch_internal_merge_sort_recurse17h46436279ebf57e76E(ptr noalias noundef nonnull align 8 %a.0, i64 noundef %a.1, i64 noundef %split1, i64 noundef %hi, ptr noalias noundef nonnull align 8 %b.0, i64 noundef %b.1)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12)
  %_933.i = icmp ugt i64 %hi, %lo
  br i1 %_933.i, label %bb2.i, label %bb6

bb2.i:                                            ; preds = %bb18.i, %bb2
  %i.036.i = phi i64 [ %i.1.i, %bb18.i ], [ %lo, %bb2 ]
  %j.035.i = phi i64 [ %j.1.i, %bb18.i ], [ %split1, %bb2 ]
  %k.034.i = phi i64 [ %7, %bb18.i ], [ %lo, %bb2 ]
  %_12.i = icmp ult i64 %i.036.i, %split1
  br i1 %_12.i, label %bb4.i, label %bb15.i

bb4.i:                                            ; preds = %bb2.i
  %_15.not.i = icmp ult i64 %j.035.i, %hi
  br i1 %_15.not.i, label %bb7.i, label %bb12.i

bb7.i:                                            ; preds = %bb4.i
  %_22.i = icmp ult i64 %i.036.i, %b.1
  br i1 %_22.i, label %bb9.i, label %panic.i, !prof !14

bb9.i:                                            ; preds = %bb7.i
  %_26.i = icmp ult i64 %j.035.i, %b.1
  br i1 %_26.i, label %bb10.i, label %panic1.i, !prof !14

panic.i:                                          ; preds = %bb7.i
  tail call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 noundef %i.036.i, i64 noundef %b.1, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_0716236bf008dfd9e3e82df2c9ed2564) #6, !noalias !15
  unreachable

bb10.i:                                           ; preds = %bb9.i
  %0 = getelementptr [0 x { i64, i32 }], ptr %b.0, i64 0, i64 %i.036.i, i32 1
  %_19.val.i = load i32, ptr %0, align 8, !alias.scope !9, !noalias !12, !noundef !16
  %1 = getelementptr [0 x { i64, i32 }], ptr %b.0, i64 0, i64 %j.035.i, i32 1
  %_23.val.i = load i32, ptr %1, align 8, !alias.scope !9, !noalias !12, !noundef !16
  %_3.not.i.not.i = icmp sgt i32 %_19.val.i, %_23.val.i
  br i1 %_3.not.i.not.i, label %bb15.i, label %bb12.i

panic1.i:                                         ; preds = %bb9.i
  tail call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 noundef %j.035.i, i64 noundef %b.1, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_2f4f9e7b1263304f4c22dadc7d99c644) #6, !noalias !15
  unreachable

bb15.i:                                           ; preds = %bb10.i, %bb2.i
  %_37.i = icmp ult i64 %j.035.i, %b.1
  br i1 %_37.i, label %bb16.i, label %panic4.i, !prof !14

bb12.i:                                           ; preds = %bb10.i, %bb4.i
  %_30.i = icmp ult i64 %i.036.i, %b.1
  br i1 %_30.i, label %bb13.i, label %panic2.i, !prof !14

bb13.i:                                           ; preds = %bb12.i
  %_33.i = icmp ult i64 %k.034.i, %a.1
  br i1 %_33.i, label %bb14.i, label %panic3.i, !prof !14

panic2.i:                                         ; preds = %bb12.i
  tail call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 noundef %i.036.i, i64 noundef %b.1, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_8875aa3007cfceead63e739e89fe7c00) #6, !noalias !15
  unreachable

bb14.i:                                           ; preds = %bb13.i
  %2 = getelementptr inbounds [0 x { i64, i32 }], ptr %b.0, i64 0, i64 %i.036.i, i32 1
  %_27.1.i = load i32, ptr %2, align 8, !alias.scope !9, !noalias !12, !noundef !16
  %3 = getelementptr inbounds [0 x { i64, i32 }], ptr %b.0, i64 0, i64 %i.036.i
  %_27.0.i = load i64, ptr %3, align 8, !alias.scope !9, !noalias !12, !noundef !16
  %4 = getelementptr inbounds [0 x { i64, i32 }], ptr %a.0, i64 0, i64 %k.034.i
  store i64 %_27.0.i, ptr %4, align 8, !alias.scope !12, !noalias !9
  %5 = getelementptr inbounds [0 x { i64, i32 }], ptr %a.0, i64 0, i64 %k.034.i, i32 1
  store i32 %_27.1.i, ptr %5, align 8, !alias.scope !12, !noalias !9
  %6 = add nuw i64 %i.036.i, 1
  br label %bb18.i

panic3.i:                                         ; preds = %bb13.i
  tail call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 noundef %k.034.i, i64 noundef %a.1, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_23f06a3d884e9f9603c8ec551c9b5bb1) #6, !noalias !15
  unreachable

bb18.i:                                           ; preds = %bb17.i, %bb14.i
  %j.1.i = phi i64 [ %j.035.i, %bb14.i ], [ %12, %bb17.i ]
  %i.1.i = phi i64 [ %6, %bb14.i ], [ %i.036.i, %bb17.i ]
  %7 = add nuw i64 %k.034.i, 1
  %exitcond.not.i = icmp eq i64 %7, %hi
  br i1 %exitcond.not.i, label %bb6, label %bb2.i

bb16.i:                                           ; preds = %bb15.i
  %_40.i = icmp ult i64 %k.034.i, %a.1
  br i1 %_40.i, label %bb17.i, label %panic5.i, !prof !14

panic4.i:                                         ; preds = %bb15.i
  tail call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 noundef %j.035.i, i64 noundef %b.1, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_d749acd9627e3172d9d9f3ef92f26006) #6, !noalias !15
  unreachable

bb17.i:                                           ; preds = %bb16.i
  %8 = getelementptr inbounds [0 x { i64, i32 }], ptr %b.0, i64 0, i64 %j.035.i, i32 1
  %_34.1.i = load i32, ptr %8, align 8, !alias.scope !9, !noalias !12, !noundef !16
  %9 = getelementptr inbounds [0 x { i64, i32 }], ptr %b.0, i64 0, i64 %j.035.i
  %_34.0.i = load i64, ptr %9, align 8, !alias.scope !9, !noalias !12, !noundef !16
  %10 = getelementptr inbounds [0 x { i64, i32 }], ptr %a.0, i64 0, i64 %k.034.i
  store i64 %_34.0.i, ptr %10, align 8, !alias.scope !12, !noalias !9
  %11 = getelementptr inbounds [0 x { i64, i32 }], ptr %a.0, i64 0, i64 %k.034.i, i32 1
  store i32 %_34.1.i, ptr %11, align 8, !alias.scope !12, !noalias !9
  %12 = add nuw i64 %j.035.i, 1
  br label %bb18.i

panic5.i:                                         ; preds = %bb16.i
  tail call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 noundef %k.034.i, i64 noundef %a.1, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_f2b696695c3f0a666e5107c7f9562b39) #6, !noalias !15
  unreachable

bb6:                                              ; preds = %bb18.i, %bb2, %start
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @run_test_1() unnamed_addr #0 {
start:
  %b = alloca [5 x { i64, i32 }], align 8
  %a = alloca [5 x { i64, i32 }], align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %a)
  store i64 5, ptr %a, align 8
  %0 = getelementptr inbounds { i64, i32 }, ptr %a, i64 0, i32 1
  store i32 5, ptr %0, align 8
  %1 = getelementptr inbounds [5 x { i64, i32 }], ptr %a, i64 0, i64 1
  store i64 1, ptr %1, align 8
  %2 = getelementptr inbounds [5 x { i64, i32 }], ptr %a, i64 0, i64 1, i32 1
  store i32 3, ptr %2, align 8
  %3 = getelementptr inbounds [5 x { i64, i32 }], ptr %a, i64 0, i64 2
  store i64 2, ptr %3, align 8
  %4 = getelementptr inbounds [5 x { i64, i32 }], ptr %a, i64 0, i64 2, i32 1
  store i32 2, ptr %4, align 8
  %5 = getelementptr inbounds [5 x { i64, i32 }], ptr %a, i64 0, i64 3
  store i64 3, ptr %5, align 8
  %6 = getelementptr inbounds [5 x { i64, i32 }], ptr %a, i64 0, i64 3, i32 1
  store i32 1, ptr %6, align 8
  %7 = getelementptr inbounds [5 x { i64, i32 }], ptr %a, i64 0, i64 4
  store i64 4, ptr %7, align 8
  %8 = getelementptr inbounds [5 x { i64, i32 }], ptr %a, i64 0, i64 4, i32 1
  store i32 4, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %b)
  %9 = getelementptr inbounds { i64, i32 }, ptr %b, i64 0, i32 1
  %10 = getelementptr inbounds { i64, i32 }, ptr %b, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %b, ptr noundef nonnull align 8 dereferenceable(80) %a, i64 80, i1 false), !alias.scope !17
  call fastcc void @_ZN14merge_sort_lib3src3lib39spritebatch_internal_merge_sort_recurse17h46436279ebf57e76E(ptr noalias noundef nonnull align 8 %b, i64 noundef 5, i64 noundef 0, i64 noundef 5, ptr noalias noundef nonnull align 8 %a, i64 noundef 5)
  %_37 = load i64, ptr %a, align 8, !noundef !16
  %_36.not = icmp eq i64 %_37, 3
  %_44 = load i32, ptr %0, align 8
  %_43.not = icmp eq i32 %_44, 1
  %or.cond = select i1 %_36.not, i1 %_43.not, i1 false
  %_52 = load i64, ptr %b, align 8
  %_51.not = icmp eq i64 %_52, 1
  %or.cond21 = select i1 %or.cond, i1 %_51.not, i1 false
  %_59 = load i32, ptr %9, align 8
  %_58.not = icmp eq i32 %_59, 3
  %or.cond22 = select i1 %or.cond21, i1 %_58.not, i1 false
  %_37.1 = load i64, ptr %1, align 8
  %_36.not.1 = icmp eq i64 %_37.1, 2
  %or.cond23 = select i1 %or.cond22, i1 %_36.not.1, i1 false
  %_44.1 = load i32, ptr %2, align 8
  %_43.not.1 = icmp eq i32 %_44.1, 2
  %or.cond24 = select i1 %or.cond23, i1 %_43.not.1, i1 false
  %_52.1 = load i64, ptr %10, align 8
  %_51.not.1 = icmp eq i64 %_52.1, 5
  %or.cond25 = select i1 %or.cond24, i1 %_51.not.1, i1 false
  %11 = getelementptr inbounds [5 x { i64, i32 }], ptr %b, i64 0, i64 1, i32 1
  %_59.1 = load i32, ptr %11, align 8
  %_58.not.1 = icmp eq i32 %_59.1, 5
  %or.cond26 = select i1 %or.cond25, i1 %_58.not.1, i1 false
  %_37.2 = load i64, ptr %3, align 8
  %_36.not.2 = icmp eq i64 %_37.2, 1
  %or.cond27 = select i1 %or.cond26, i1 %_36.not.2, i1 false
  %_44.2 = load i32, ptr %4, align 8
  %_43.not.2 = icmp eq i32 %_44.2, 3
  %or.cond28 = select i1 %or.cond27, i1 %_43.not.2, i1 false
  %12 = getelementptr inbounds [5 x { i64, i32 }], ptr %b, i64 0, i64 2
  %_52.2 = load i64, ptr %12, align 8
  %_51.not.2 = icmp eq i64 %_52.2, 3
  %or.cond29 = select i1 %or.cond28, i1 %_51.not.2, i1 false
  %13 = getelementptr inbounds [5 x { i64, i32 }], ptr %b, i64 0, i64 2, i32 1
  %_59.2 = load i32, ptr %13, align 8
  %_58.not.2 = icmp eq i32 %_59.2, 1
  %or.cond30 = select i1 %or.cond29, i1 %_58.not.2, i1 false
  %_37.3 = load i64, ptr %5, align 8
  %_36.not.3 = icmp eq i64 %_37.3, 4
  %or.cond31 = select i1 %or.cond30, i1 %_36.not.3, i1 false
  %_44.3 = load i32, ptr %6, align 8
  %_43.not.3 = icmp eq i32 %_44.3, 4
  %or.cond32 = select i1 %or.cond31, i1 %_43.not.3, i1 false
  %14 = getelementptr inbounds [5 x { i64, i32 }], ptr %b, i64 0, i64 3
  %_52.3 = load i64, ptr %14, align 8
  %_51.not.3 = icmp eq i64 %_52.3, 2
  %or.cond33 = select i1 %or.cond32, i1 %_51.not.3, i1 false
  %15 = getelementptr inbounds [5 x { i64, i32 }], ptr %b, i64 0, i64 3, i32 1
  %_59.3 = load i32, ptr %15, align 8
  %_58.not.3 = icmp eq i32 %_59.3, 2
  %or.cond34 = select i1 %or.cond33, i1 %_58.not.3, i1 false
  %_37.4 = load i64, ptr %7, align 8
  %_36.not.4 = icmp eq i64 %_37.4, 5
  %or.cond35 = select i1 %or.cond34, i1 %_36.not.4, i1 false
  %_44.4 = load i32, ptr %8, align 8
  %_43.not.4 = icmp eq i32 %_44.4, 5
  %or.cond36 = select i1 %or.cond35, i1 %_43.not.4, i1 false
  %16 = getelementptr inbounds [5 x { i64, i32 }], ptr %b, i64 0, i64 4
  %_52.4 = load i64, ptr %16, align 8
  %_51.not.4 = icmp eq i64 %_52.4, 4
  %or.cond37 = select i1 %or.cond36, i1 %_51.not.4, i1 false
  %17 = getelementptr inbounds [5 x { i64, i32 }], ptr %b, i64 0, i64 4, i32 1
  %_59.4 = load i32, ptr %17, align 8
  %_58.not.4 = icmp eq i32 %_59.4, 4
  %or.cond38 = select i1 %or.cond37, i1 %_58.not.4, i1 false
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %b)
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %a)
  ret i1 %or.cond38
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nofree nosync nounwind nonlazybind willreturn memory(inaccessiblemem: readwrite) uwtable
define noundef zeroext i1 @run_test_2() unnamed_addr #5 {
start:
  ret i1 true
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @run_test_3() unnamed_addr #0 {
start:
  %b = alloca [5 x { i64, i32 }], align 8
  %a = alloca [5 x { i64, i32 }], align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %a)
  store i64 15, ptr %a, align 8
  %0 = getelementptr inbounds { i64, i32 }, ptr %a, i64 0, i32 1
  store i32 7, ptr %0, align 8
  %1 = getelementptr inbounds [5 x { i64, i32 }], ptr %a, i64 0, i64 1
  store i64 3, ptr %1, align 8
  %2 = getelementptr inbounds [5 x { i64, i32 }], ptr %a, i64 0, i64 1, i32 1
  store i32 7, ptr %2, align 8
  %3 = getelementptr inbounds [5 x { i64, i32 }], ptr %a, i64 0, i64 2
  store i64 33, ptr %3, align 8
  %4 = getelementptr inbounds [5 x { i64, i32 }], ptr %a, i64 0, i64 2, i32 1
  store i32 7, ptr %4, align 8
  %5 = getelementptr inbounds [5 x { i64, i32 }], ptr %a, i64 0, i64 3
  store i64 1, ptr %5, align 8
  %6 = getelementptr inbounds [5 x { i64, i32 }], ptr %a, i64 0, i64 3, i32 1
  store i32 7, ptr %6, align 8
  %7 = getelementptr inbounds [5 x { i64, i32 }], ptr %a, i64 0, i64 4
  store i64 14, ptr %7, align 8
  %8 = getelementptr inbounds [5 x { i64, i32 }], ptr %a, i64 0, i64 4, i32 1
  store i32 7, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %b)
  %9 = getelementptr inbounds { i64, i32 }, ptr %b, i64 0, i32 1
  %10 = getelementptr inbounds { i64, i32 }, ptr %b, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %b, ptr noundef nonnull align 8 dereferenceable(80) %a, i64 80, i1 false), !alias.scope !24
  call fastcc void @_ZN14merge_sort_lib3src3lib39spritebatch_internal_merge_sort_recurse17h46436279ebf57e76E(ptr noalias noundef nonnull align 8 %b, i64 noundef 5, i64 noundef 0, i64 noundef 5, ptr noalias noundef nonnull align 8 %a, i64 noundef 5)
  %_37 = load i64, ptr %a, align 8, !noundef !16
  %_36.not = icmp eq i64 %_37, 15
  %_44 = load i32, ptr %0, align 8
  %_43.not = icmp eq i32 %_44, 7
  %or.cond = select i1 %_36.not, i1 %_43.not, i1 false
  %_52 = load i64, ptr %b, align 8
  %_51.not = icmp eq i64 %_52, 15
  %or.cond21 = select i1 %or.cond, i1 %_51.not, i1 false
  %_59 = load i32, ptr %9, align 8
  %_58.not = icmp eq i32 %_59, 7
  %or.cond22 = select i1 %or.cond21, i1 %_58.not, i1 false
  %_37.1 = load i64, ptr %1, align 8
  %_36.not.1 = icmp eq i64 %_37.1, 3
  %or.cond23 = select i1 %or.cond22, i1 %_36.not.1, i1 false
  %_44.1 = load i32, ptr %2, align 8
  %_43.not.1 = icmp eq i32 %_44.1, 7
  %or.cond24 = select i1 %or.cond23, i1 %_43.not.1, i1 false
  %_52.1 = load i64, ptr %10, align 8
  %_51.not.1 = icmp eq i64 %_52.1, 3
  %or.cond25 = select i1 %or.cond24, i1 %_51.not.1, i1 false
  %11 = getelementptr inbounds [5 x { i64, i32 }], ptr %b, i64 0, i64 1, i32 1
  %_59.1 = load i32, ptr %11, align 8
  %_58.not.1 = icmp eq i32 %_59.1, 7
  %or.cond26 = select i1 %or.cond25, i1 %_58.not.1, i1 false
  %_37.2 = load i64, ptr %3, align 8
  %_36.not.2 = icmp eq i64 %_37.2, 33
  %or.cond27 = select i1 %or.cond26, i1 %_36.not.2, i1 false
  %_44.2 = load i32, ptr %4, align 8
  %_43.not.2 = icmp eq i32 %_44.2, 7
  %or.cond28 = select i1 %or.cond27, i1 %_43.not.2, i1 false
  %12 = getelementptr inbounds [5 x { i64, i32 }], ptr %b, i64 0, i64 2
  %_52.2 = load i64, ptr %12, align 8
  %_51.not.2 = icmp eq i64 %_52.2, 33
  %or.cond29 = select i1 %or.cond28, i1 %_51.not.2, i1 false
  %13 = getelementptr inbounds [5 x { i64, i32 }], ptr %b, i64 0, i64 2, i32 1
  %_59.2 = load i32, ptr %13, align 8
  %_58.not.2 = icmp eq i32 %_59.2, 7
  %or.cond30 = select i1 %or.cond29, i1 %_58.not.2, i1 false
  %_37.3 = load i64, ptr %5, align 8
  %_36.not.3 = icmp eq i64 %_37.3, 1
  %or.cond31 = select i1 %or.cond30, i1 %_36.not.3, i1 false
  %_44.3 = load i32, ptr %6, align 8
  %_43.not.3 = icmp eq i32 %_44.3, 7
  %or.cond32 = select i1 %or.cond31, i1 %_43.not.3, i1 false
  %14 = getelementptr inbounds [5 x { i64, i32 }], ptr %b, i64 0, i64 3
  %_52.3 = load i64, ptr %14, align 8
  %_51.not.3 = icmp eq i64 %_52.3, 1
  %or.cond33 = select i1 %or.cond32, i1 %_51.not.3, i1 false
  %15 = getelementptr inbounds [5 x { i64, i32 }], ptr %b, i64 0, i64 3, i32 1
  %_59.3 = load i32, ptr %15, align 8
  %_58.not.3 = icmp eq i32 %_59.3, 7
  %or.cond34 = select i1 %or.cond33, i1 %_58.not.3, i1 false
  %_37.4 = load i64, ptr %7, align 8
  %_36.not.4 = icmp eq i64 %_37.4, 14
  %or.cond35 = select i1 %or.cond34, i1 %_36.not.4, i1 false
  %_44.4 = load i32, ptr %8, align 8
  %_43.not.4 = icmp eq i32 %_44.4, 7
  %or.cond36 = select i1 %or.cond35, i1 %_43.not.4, i1 false
  %16 = getelementptr inbounds [5 x { i64, i32 }], ptr %b, i64 0, i64 4
  %_52.4 = load i64, ptr %16, align 8
  %_51.not.4 = icmp eq i64 %_52.4, 14
  %or.cond37 = select i1 %or.cond36, i1 %_51.not.4, i1 false
  %17 = getelementptr inbounds [5 x { i64, i32 }], ptr %b, i64 0, i64 4, i32 1
  %_59.4 = load i32, ptr %17, align 8
  %_58.not.4 = icmp eq i32 %_59.4, 7
  %or.cond38 = select i1 %or.cond37, i1 %_58.not.4, i1 false
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %b)
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %a)
  ret i1 %or.cond38
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @run_test_4() unnamed_addr #0 {
start:
  %b = alloca [5 x { i64, i32 }], align 8
  %a = alloca [5 x { i64, i32 }], align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %a)
  store i64 15, ptr %a, align 8
  %0 = getelementptr inbounds { i64, i32 }, ptr %a, i64 0, i32 1
  store i32 5, ptr %0, align 8
  %1 = getelementptr inbounds [5 x { i64, i32 }], ptr %a, i64 0, i64 1
  store i64 3, ptr %1, align 8
  %2 = getelementptr inbounds [5 x { i64, i32 }], ptr %a, i64 0, i64 1, i32 1
  store i32 4, ptr %2, align 8
  %3 = getelementptr inbounds [5 x { i64, i32 }], ptr %a, i64 0, i64 2
  store i64 33, ptr %3, align 8
  %4 = getelementptr inbounds [5 x { i64, i32 }], ptr %a, i64 0, i64 2, i32 1
  store i32 3, ptr %4, align 8
  %5 = getelementptr inbounds [5 x { i64, i32 }], ptr %a, i64 0, i64 3
  store i64 1, ptr %5, align 8
  %6 = getelementptr inbounds [5 x { i64, i32 }], ptr %a, i64 0, i64 3, i32 1
  store i32 2, ptr %6, align 8
  %7 = getelementptr inbounds [5 x { i64, i32 }], ptr %a, i64 0, i64 4
  store i64 14, ptr %7, align 8
  %8 = getelementptr inbounds [5 x { i64, i32 }], ptr %a, i64 0, i64 4, i32 1
  store i32 1, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %b)
  %9 = getelementptr inbounds { i64, i32 }, ptr %b, i64 0, i32 1
  %10 = getelementptr inbounds { i64, i32 }, ptr %b, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %b, ptr noundef nonnull align 8 dereferenceable(80) %a, i64 80, i1 false), !alias.scope !31
  call fastcc void @_ZN14merge_sort_lib3src3lib39spritebatch_internal_merge_sort_recurse17h46436279ebf57e76E(ptr noalias noundef nonnull align 8 %b, i64 noundef 5, i64 noundef 0, i64 noundef 5, ptr noalias noundef nonnull align 8 %a, i64 noundef 5)
  %_37 = load i64, ptr %a, align 8, !noundef !16
  %_36.not = icmp eq i64 %_37, 14
  %_44 = load i32, ptr %0, align 8
  %_43.not = icmp eq i32 %_44, 1
  %or.cond = select i1 %_36.not, i1 %_43.not, i1 false
  %_52 = load i64, ptr %b, align 8
  %_51.not = icmp eq i64 %_52, 3
  %or.cond21 = select i1 %or.cond, i1 %_51.not, i1 false
  %_59 = load i32, ptr %9, align 8
  %_58.not = icmp eq i32 %_59, 4
  %or.cond22 = select i1 %or.cond21, i1 %_58.not, i1 false
  %_37.1 = load i64, ptr %1, align 8
  %_36.not.1 = icmp eq i64 %_37.1, 1
  %or.cond23 = select i1 %or.cond22, i1 %_36.not.1, i1 false
  %_44.1 = load i32, ptr %2, align 8
  %_43.not.1 = icmp eq i32 %_44.1, 2
  %or.cond24 = select i1 %or.cond23, i1 %_43.not.1, i1 false
  %_52.1 = load i64, ptr %10, align 8
  %_51.not.1 = icmp eq i64 %_52.1, 15
  %or.cond25 = select i1 %or.cond24, i1 %_51.not.1, i1 false
  %11 = getelementptr inbounds [5 x { i64, i32 }], ptr %b, i64 0, i64 1, i32 1
  %_59.1 = load i32, ptr %11, align 8
  %_58.not.1 = icmp eq i32 %_59.1, 5
  %or.cond26 = select i1 %or.cond25, i1 %_58.not.1, i1 false
  %_37.2 = load i64, ptr %3, align 8
  %_36.not.2 = icmp eq i64 %_37.2, 33
  %or.cond27 = select i1 %or.cond26, i1 %_36.not.2, i1 false
  %_44.2 = load i32, ptr %4, align 8
  %_43.not.2 = icmp eq i32 %_44.2, 3
  %or.cond28 = select i1 %or.cond27, i1 %_43.not.2, i1 false
  %12 = getelementptr inbounds [5 x { i64, i32 }], ptr %b, i64 0, i64 2
  %_52.2 = load i64, ptr %12, align 8
  %_51.not.2 = icmp eq i64 %_52.2, 14
  %or.cond29 = select i1 %or.cond28, i1 %_51.not.2, i1 false
  %13 = getelementptr inbounds [5 x { i64, i32 }], ptr %b, i64 0, i64 2, i32 1
  %_59.2 = load i32, ptr %13, align 8
  %_58.not.2 = icmp eq i32 %_59.2, 1
  %or.cond30 = select i1 %or.cond29, i1 %_58.not.2, i1 false
  %_37.3 = load i64, ptr %5, align 8
  %_36.not.3 = icmp eq i64 %_37.3, 3
  %or.cond31 = select i1 %or.cond30, i1 %_36.not.3, i1 false
  %_44.3 = load i32, ptr %6, align 8
  %_43.not.3 = icmp eq i32 %_44.3, 4
  %or.cond32 = select i1 %or.cond31, i1 %_43.not.3, i1 false
  %14 = getelementptr inbounds [5 x { i64, i32 }], ptr %b, i64 0, i64 3
  %_52.3 = load i64, ptr %14, align 8
  %_51.not.3 = icmp eq i64 %_52.3, 1
  %or.cond33 = select i1 %or.cond32, i1 %_51.not.3, i1 false
  %15 = getelementptr inbounds [5 x { i64, i32 }], ptr %b, i64 0, i64 3, i32 1
  %_59.3 = load i32, ptr %15, align 8
  %_58.not.3 = icmp eq i32 %_59.3, 2
  %or.cond34 = select i1 %or.cond33, i1 %_58.not.3, i1 false
  %_37.4 = load i64, ptr %7, align 8
  %_36.not.4 = icmp eq i64 %_37.4, 15
  %or.cond35 = select i1 %or.cond34, i1 %_36.not.4, i1 false
  %_44.4 = load i32, ptr %8, align 8
  %_43.not.4 = icmp eq i32 %_44.4, 5
  %or.cond36 = select i1 %or.cond35, i1 %_43.not.4, i1 false
  %16 = getelementptr inbounds [5 x { i64, i32 }], ptr %b, i64 0, i64 4
  %_52.4 = load i64, ptr %16, align 8
  %_51.not.4 = icmp eq i64 %_52.4, 33
  %or.cond37 = select i1 %or.cond36, i1 %_51.not.4, i1 false
  %17 = getelementptr inbounds [5 x { i64, i32 }], ptr %b, i64 0, i64 4, i32 1
  %_59.4 = load i32, ptr %17, align 8
  %_58.not.4 = icmp eq i32 %_59.4, 3
  %or.cond38 = select i1 %or.cond37, i1 %_58.not.4, i1 false
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %b)
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %a)
  ret i1 %or.cond38
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @run_test_5() unnamed_addr #0 {
start:
  %expected_b = alloca [20 x { i64, i32 }], align 8
  %expected_a = alloca [20 x { i64, i32 }], align 8
  %b = alloca [20 x { i64, i32 }], align 8
  %a = alloca [20 x { i64, i32 }], align 8
  call void @llvm.lifetime.start.p0(i64 320, ptr nonnull %a)
  store i64 16, ptr %a, align 8
  %0 = getelementptr inbounds { i64, i32 }, ptr %a, i64 0, i32 1
  store i32 800, ptr %0, align 8
  %1 = getelementptr inbounds [20 x { i64, i32 }], ptr %a, i64 0, i64 1
  store i64 4, ptr %1, align 8
  %2 = getelementptr inbounds [20 x { i64, i32 }], ptr %a, i64 0, i64 1, i32 1
  store i32 16000, ptr %2, align 8
  %3 = getelementptr inbounds [20 x { i64, i32 }], ptr %a, i64 0, i64 2
  store i64 34, ptr %3, align 8
  %4 = getelementptr inbounds [20 x { i64, i32 }], ptr %a, i64 0, i64 2, i32 1
  store i32 0, ptr %4, align 8
  %5 = getelementptr inbounds [20 x { i64, i32 }], ptr %a, i64 0, i64 3
  store i64 2, ptr %5, align 8
  %6 = getelementptr inbounds [20 x { i64, i32 }], ptr %a, i64 0, i64 3, i32 1
  store i32 22, ptr %6, align 8
  %7 = getelementptr inbounds [20 x { i64, i32 }], ptr %a, i64 0, i64 4
  store i64 15, ptr %7, align 8
  %8 = getelementptr inbounds [20 x { i64, i32 }], ptr %a, i64 0, i64 4, i32 1
  store i32 16000, ptr %8, align 8
  %9 = getelementptr inbounds [20 x { i64, i32 }], ptr %a, i64 0, i64 5
  store i64 15, ptr %9, align 8
  %10 = getelementptr inbounds [20 x { i64, i32 }], ptr %a, i64 0, i64 5, i32 1
  store i32 800, ptr %10, align 8
  %11 = getelementptr inbounds [20 x { i64, i32 }], ptr %a, i64 0, i64 6
  store i64 3, ptr %11, align 8
  %12 = getelementptr inbounds [20 x { i64, i32 }], ptr %a, i64 0, i64 6, i32 1
  store i32 16000, ptr %12, align 8
  %13 = getelementptr inbounds [20 x { i64, i32 }], ptr %a, i64 0, i64 7
  store i64 33, ptr %13, align 8
  %14 = getelementptr inbounds [20 x { i64, i32 }], ptr %a, i64 0, i64 7, i32 1
  store i32 0, ptr %14, align 8
  %15 = getelementptr inbounds [20 x { i64, i32 }], ptr %a, i64 0, i64 8
  store i64 1, ptr %15, align 8
  %16 = getelementptr inbounds [20 x { i64, i32 }], ptr %a, i64 0, i64 8, i32 1
  store i32 22, ptr %16, align 8
  %17 = getelementptr inbounds [20 x { i64, i32 }], ptr %a, i64 0, i64 9
  store i64 14, ptr %17, align 8
  %18 = getelementptr inbounds [20 x { i64, i32 }], ptr %a, i64 0, i64 9, i32 1
  store i32 16000, ptr %18, align 8
  %19 = getelementptr inbounds [20 x { i64, i32 }], ptr %a, i64 0, i64 10
  store i64 14, ptr %19, align 8
  %20 = getelementptr inbounds [20 x { i64, i32 }], ptr %a, i64 0, i64 10, i32 1
  store i32 800, ptr %20, align 8
  %21 = getelementptr inbounds [20 x { i64, i32 }], ptr %a, i64 0, i64 11
  store i64 2, ptr %21, align 8
  %22 = getelementptr inbounds [20 x { i64, i32 }], ptr %a, i64 0, i64 11, i32 1
  store i32 16000, ptr %22, align 8
  %23 = getelementptr inbounds [20 x { i64, i32 }], ptr %a, i64 0, i64 12
  store i64 32, ptr %23, align 8
  %24 = getelementptr inbounds [20 x { i64, i32 }], ptr %a, i64 0, i64 12, i32 1
  store i32 0, ptr %24, align 8
  %25 = getelementptr inbounds [20 x { i64, i32 }], ptr %a, i64 0, i64 13
  store i64 0, ptr %25, align 8
  %26 = getelementptr inbounds [20 x { i64, i32 }], ptr %a, i64 0, i64 13, i32 1
  store i32 22, ptr %26, align 8
  %27 = getelementptr inbounds [20 x { i64, i32 }], ptr %a, i64 0, i64 14
  store i64 13, ptr %27, align 8
  %28 = getelementptr inbounds [20 x { i64, i32 }], ptr %a, i64 0, i64 14, i32 1
  store i32 16000, ptr %28, align 8
  %29 = getelementptr inbounds [20 x { i64, i32 }], ptr %a, i64 0, i64 15
  store i64 16, ptr %29, align 8
  %30 = getelementptr inbounds [20 x { i64, i32 }], ptr %a, i64 0, i64 15, i32 1
  store i32 800, ptr %30, align 8
  %31 = getelementptr inbounds [20 x { i64, i32 }], ptr %a, i64 0, i64 16
  store i64 4, ptr %31, align 8
  %32 = getelementptr inbounds [20 x { i64, i32 }], ptr %a, i64 0, i64 16, i32 1
  store i32 16000, ptr %32, align 8
  %33 = getelementptr inbounds [20 x { i64, i32 }], ptr %a, i64 0, i64 17
  store i64 34, ptr %33, align 8
  %34 = getelementptr inbounds [20 x { i64, i32 }], ptr %a, i64 0, i64 17, i32 1
  store i32 0, ptr %34, align 8
  %35 = getelementptr inbounds [20 x { i64, i32 }], ptr %a, i64 0, i64 18
  store i64 2, ptr %35, align 8
  %36 = getelementptr inbounds [20 x { i64, i32 }], ptr %a, i64 0, i64 18, i32 1
  store i32 22, ptr %36, align 8
  %37 = getelementptr inbounds [20 x { i64, i32 }], ptr %a, i64 0, i64 19
  store i64 15, ptr %37, align 8
  %38 = getelementptr inbounds [20 x { i64, i32 }], ptr %a, i64 0, i64 19, i32 1
  store i32 16000, ptr %38, align 8
  call void @llvm.lifetime.start.p0(i64 320, ptr nonnull %b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %b, ptr noundef nonnull align 8 dereferenceable(320) %a, i64 320, i1 false), !alias.scope !38
  call fastcc void @_ZN14merge_sort_lib3src3lib39spritebatch_internal_merge_sort_recurse17h46436279ebf57e76E(ptr noalias noundef nonnull align 8 %b, i64 noundef 20, i64 noundef 0, i64 noundef 20, ptr noalias noundef nonnull align 8 %a, i64 noundef 20)
  call void @llvm.lifetime.start.p0(i64 320, ptr nonnull %expected_a)
  store i64 34, ptr %expected_a, align 8
  %39 = getelementptr inbounds { i64, i32 }, ptr %expected_a, i64 0, i32 1
  store i32 0, ptr %39, align 8
  %40 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_a, i64 0, i64 1
  store i64 33, ptr %40, align 8
  %41 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_a, i64 0, i64 1, i32 1
  store i32 0, ptr %41, align 8
  %42 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_a, i64 0, i64 2
  store i64 32, ptr %42, align 8
  %43 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_a, i64 0, i64 2, i32 1
  store i32 0, ptr %43, align 8
  %44 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_a, i64 0, i64 3
  store i64 34, ptr %44, align 8
  %45 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_a, i64 0, i64 3, i32 1
  store i32 0, ptr %45, align 8
  %46 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_a, i64 0, i64 4
  store i64 2, ptr %46, align 8
  %47 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_a, i64 0, i64 4, i32 1
  store i32 22, ptr %47, align 8
  %48 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_a, i64 0, i64 5
  store i64 1, ptr %48, align 8
  %49 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_a, i64 0, i64 5, i32 1
  store i32 22, ptr %49, align 8
  %50 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_a, i64 0, i64 6
  store i64 0, ptr %50, align 8
  %51 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_a, i64 0, i64 6, i32 1
  store i32 22, ptr %51, align 8
  %52 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_a, i64 0, i64 7
  store i64 2, ptr %52, align 8
  %53 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_a, i64 0, i64 7, i32 1
  store i32 22, ptr %53, align 8
  %54 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_a, i64 0, i64 8
  store i64 16, ptr %54, align 8
  %55 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_a, i64 0, i64 8, i32 1
  store i32 800, ptr %55, align 8
  %56 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_a, i64 0, i64 9
  store i64 15, ptr %56, align 8
  %57 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_a, i64 0, i64 9, i32 1
  store i32 800, ptr %57, align 8
  %58 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_a, i64 0, i64 10
  store i64 14, ptr %58, align 8
  %59 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_a, i64 0, i64 10, i32 1
  store i32 800, ptr %59, align 8
  %60 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_a, i64 0, i64 11
  store i64 16, ptr %60, align 8
  %61 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_a, i64 0, i64 11, i32 1
  store i32 800, ptr %61, align 8
  %62 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_a, i64 0, i64 12
  store i64 4, ptr %62, align 8
  %63 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_a, i64 0, i64 12, i32 1
  store i32 16000, ptr %63, align 8
  %64 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_a, i64 0, i64 13
  store i64 15, ptr %64, align 8
  %65 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_a, i64 0, i64 13, i32 1
  store i32 16000, ptr %65, align 8
  %66 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_a, i64 0, i64 14
  store i64 3, ptr %66, align 8
  %67 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_a, i64 0, i64 14, i32 1
  store i32 16000, ptr %67, align 8
  %68 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_a, i64 0, i64 15
  store i64 14, ptr %68, align 8
  %69 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_a, i64 0, i64 15, i32 1
  store i32 16000, ptr %69, align 8
  %70 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_a, i64 0, i64 16
  store i64 2, ptr %70, align 8
  %71 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_a, i64 0, i64 16, i32 1
  store i32 16000, ptr %71, align 8
  %72 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_a, i64 0, i64 17
  store i64 13, ptr %72, align 8
  %73 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_a, i64 0, i64 17, i32 1
  store i32 16000, ptr %73, align 8
  %74 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_a, i64 0, i64 18
  store i64 4, ptr %74, align 8
  %75 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_a, i64 0, i64 18, i32 1
  store i32 16000, ptr %75, align 8
  %76 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_a, i64 0, i64 19
  store i64 15, ptr %76, align 8
  %77 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_a, i64 0, i64 19, i32 1
  store i32 16000, ptr %77, align 8
  call void @llvm.lifetime.start.p0(i64 320, ptr nonnull %expected_b)
  store i64 34, ptr %expected_b, align 8
  %78 = getelementptr inbounds { i64, i32 }, ptr %expected_b, i64 0, i32 1
  store i32 0, ptr %78, align 8
  %79 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_b, i64 0, i64 1
  store i64 33, ptr %79, align 8
  %80 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_b, i64 0, i64 1, i32 1
  store i32 0, ptr %80, align 8
  %81 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_b, i64 0, i64 2
  store i64 2, ptr %81, align 8
  %82 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_b, i64 0, i64 2, i32 1
  store i32 22, ptr %82, align 8
  %83 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_b, i64 0, i64 3
  store i64 1, ptr %83, align 8
  %84 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_b, i64 0, i64 3, i32 1
  store i32 22, ptr %84, align 8
  %85 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_b, i64 0, i64 4
  store i64 16, ptr %85, align 8
  %86 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_b, i64 0, i64 4, i32 1
  store i32 800, ptr %86, align 8
  %87 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_b, i64 0, i64 5
  store i64 15, ptr %87, align 8
  %88 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_b, i64 0, i64 5, i32 1
  store i32 800, ptr %88, align 8
  %89 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_b, i64 0, i64 6
  store i64 4, ptr %89, align 8
  %90 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_b, i64 0, i64 6, i32 1
  store i32 16000, ptr %90, align 8
  %91 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_b, i64 0, i64 7
  store i64 15, ptr %91, align 8
  %92 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_b, i64 0, i64 7, i32 1
  store i32 16000, ptr %92, align 8
  %93 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_b, i64 0, i64 8
  store i64 3, ptr %93, align 8
  %94 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_b, i64 0, i64 8, i32 1
  store i32 16000, ptr %94, align 8
  %95 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_b, i64 0, i64 9
  store i64 14, ptr %95, align 8
  %96 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_b, i64 0, i64 9, i32 1
  store i32 16000, ptr %96, align 8
  %97 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_b, i64 0, i64 10
  store i64 32, ptr %97, align 8
  %98 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_b, i64 0, i64 10, i32 1
  store i32 0, ptr %98, align 8
  %99 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_b, i64 0, i64 11
  store i64 34, ptr %99, align 8
  %100 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_b, i64 0, i64 11, i32 1
  store i32 0, ptr %100, align 8
  %101 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_b, i64 0, i64 12
  store i64 0, ptr %101, align 8
  %102 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_b, i64 0, i64 12, i32 1
  store i32 22, ptr %102, align 8
  %103 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_b, i64 0, i64 13
  store i64 2, ptr %103, align 8
  %104 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_b, i64 0, i64 13, i32 1
  store i32 22, ptr %104, align 8
  %105 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_b, i64 0, i64 14
  store i64 14, ptr %105, align 8
  %106 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_b, i64 0, i64 14, i32 1
  store i32 800, ptr %106, align 8
  %107 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_b, i64 0, i64 15
  store i64 16, ptr %107, align 8
  %108 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_b, i64 0, i64 15, i32 1
  store i32 800, ptr %108, align 8
  %109 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_b, i64 0, i64 16
  store i64 2, ptr %109, align 8
  %110 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_b, i64 0, i64 16, i32 1
  store i32 16000, ptr %110, align 8
  %111 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_b, i64 0, i64 17
  store i64 13, ptr %111, align 8
  %112 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_b, i64 0, i64 17, i32 1
  store i32 16000, ptr %112, align 8
  %113 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_b, i64 0, i64 18
  store i64 4, ptr %113, align 8
  %114 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_b, i64 0, i64 18, i32 1
  store i32 16000, ptr %114, align 8
  %115 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_b, i64 0, i64 19
  store i64 15, ptr %115, align 8
  %116 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_b, i64 0, i64 19, i32 1
  store i32 16000, ptr %116, align 8
  br label %bb2

bb2:                                              ; preds = %bb20, %start
  %iter.sroa.0.0 = phi i64 [ 0, %start ], [ %117, %bb20 ]
  %exitcond = icmp eq i64 %iter.sroa.0.0, 20
  br i1 %exitcond, label %bb5, label %bb9

bb5:                                              ; preds = %bb2
  call void @llvm.lifetime.end.p0(i64 320, ptr nonnull %expected_b)
  call void @llvm.lifetime.end.p0(i64 320, ptr nonnull %expected_a)
  call void @llvm.lifetime.end.p0(i64 320, ptr nonnull %b)
  call void @llvm.lifetime.end.p0(i64 320, ptr nonnull %a)
  br label %bb25

bb9:                                              ; preds = %bb2
  %117 = add nuw nsw i64 %iter.sroa.0.0, 1
  %118 = getelementptr inbounds [20 x { i64, i32 }], ptr %a, i64 0, i64 %iter.sroa.0.0
  %_82 = load i64, ptr %118, align 8, !noundef !16
  %119 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_a, i64 0, i64 %iter.sroa.0.0
  %_85 = load i64, ptr %119, align 8, !noundef !16
  %_81.not = icmp eq i64 %_82, %_85
  br i1 %_81.not, label %bb11, label %bb24

bb11:                                             ; preds = %bb9
  %120 = getelementptr inbounds [20 x { i64, i32 }], ptr %a, i64 0, i64 %iter.sroa.0.0, i32 1
  %_89 = load i32, ptr %120, align 8, !noundef !16
  %121 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_a, i64 0, i64 %iter.sroa.0.0, i32 1
  %_92 = load i32, ptr %121, align 8, !noundef !16
  %_88.not = icmp eq i32 %_89, %_92
  br i1 %_88.not, label %bb18, label %bb24

bb24:                                             ; preds = %bb20, %bb18, %bb11, %bb9
  call void @llvm.lifetime.end.p0(i64 320, ptr nonnull %expected_b)
  call void @llvm.lifetime.end.p0(i64 320, ptr nonnull %expected_a)
  call void @llvm.lifetime.end.p0(i64 320, ptr nonnull %b)
  call void @llvm.lifetime.end.p0(i64 320, ptr nonnull %a)
  br label %bb25

bb18:                                             ; preds = %bb11
  %122 = getelementptr inbounds [20 x { i64, i32 }], ptr %b, i64 0, i64 %iter.sroa.0.0
  %_97 = load i64, ptr %122, align 8, !noundef !16
  %123 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_b, i64 0, i64 %iter.sroa.0.0
  %_100 = load i64, ptr %123, align 8, !noundef !16
  %_96.not = icmp eq i64 %_97, %_100
  br i1 %_96.not, label %bb20, label %bb24

bb20:                                             ; preds = %bb18
  %124 = getelementptr inbounds [20 x { i64, i32 }], ptr %b, i64 0, i64 %iter.sroa.0.0, i32 1
  %_104 = load i32, ptr %124, align 8, !noundef !16
  %125 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_b, i64 0, i64 %iter.sroa.0.0, i32 1
  %_107 = load i32, ptr %125, align 8, !noundef !16
  %_103.not = icmp eq i32 %_104, %_107
  br i1 %_103.not, label %bb2, label %bb24

bb25:                                             ; preds = %bb24, %bb5
  %126 = icmp ugt i64 %iter.sroa.0.0, 19
  ret i1 %126
}

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #3 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree nosync nounwind nonlazybind willreturn memory(inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { noreturn }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!3, !5, !6, !8}
!3 = distinct !{!3, !4, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb6d5bc5f2e0c528aE: %self.0"}
!4 = distinct !{!4, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb6d5bc5f2e0c528aE"}
!5 = distinct !{!5, !4, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb6d5bc5f2e0c528aE: %src.0"}
!6 = distinct !{!6, !7, !"_ZN14merge_sort_lib3src3lib10merge_sort17h1084fe487150b18cE: %a.0"}
!7 = distinct !{!7, !"_ZN14merge_sort_lib3src3lib10merge_sort17h1084fe487150b18cE"}
!8 = distinct !{!8, !7, !"_ZN14merge_sort_lib3src3lib10merge_sort17h1084fe487150b18cE: %b.0"}
!9 = !{!10}
!10 = distinct !{!10, !11, !"_ZN14merge_sort_lib3src3lib41spritebatch_internal_merge_sort_iteration17h06638c5567bab9d1E: %a.0"}
!11 = distinct !{!11, !"_ZN14merge_sort_lib3src3lib41spritebatch_internal_merge_sort_iteration17h06638c5567bab9d1E"}
!12 = !{!13}
!13 = distinct !{!13, !11, !"_ZN14merge_sort_lib3src3lib41spritebatch_internal_merge_sort_iteration17h06638c5567bab9d1E: %b.0"}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{!10, !13}
!16 = !{}
!17 = !{!18, !20, !21, !23}
!18 = distinct !{!18, !19, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb6d5bc5f2e0c528aE: %self.0"}
!19 = distinct !{!19, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb6d5bc5f2e0c528aE"}
!20 = distinct !{!20, !19, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb6d5bc5f2e0c528aE: %src.0"}
!21 = distinct !{!21, !22, !"_ZN14merge_sort_lib3src3lib10merge_sort17h1084fe487150b18cE: %a.0"}
!22 = distinct !{!22, !"_ZN14merge_sort_lib3src3lib10merge_sort17h1084fe487150b18cE"}
!23 = distinct !{!23, !22, !"_ZN14merge_sort_lib3src3lib10merge_sort17h1084fe487150b18cE: %b.0"}
!24 = !{!25, !27, !28, !30}
!25 = distinct !{!25, !26, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb6d5bc5f2e0c528aE: %self.0"}
!26 = distinct !{!26, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb6d5bc5f2e0c528aE"}
!27 = distinct !{!27, !26, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb6d5bc5f2e0c528aE: %src.0"}
!28 = distinct !{!28, !29, !"_ZN14merge_sort_lib3src3lib10merge_sort17h1084fe487150b18cE: %a.0"}
!29 = distinct !{!29, !"_ZN14merge_sort_lib3src3lib10merge_sort17h1084fe487150b18cE"}
!30 = distinct !{!30, !29, !"_ZN14merge_sort_lib3src3lib10merge_sort17h1084fe487150b18cE: %b.0"}
!31 = !{!32, !34, !35, !37}
!32 = distinct !{!32, !33, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb6d5bc5f2e0c528aE: %self.0"}
!33 = distinct !{!33, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb6d5bc5f2e0c528aE"}
!34 = distinct !{!34, !33, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb6d5bc5f2e0c528aE: %src.0"}
!35 = distinct !{!35, !36, !"_ZN14merge_sort_lib3src3lib10merge_sort17h1084fe487150b18cE: %a.0"}
!36 = distinct !{!36, !"_ZN14merge_sort_lib3src3lib10merge_sort17h1084fe487150b18cE"}
!37 = distinct !{!37, !36, !"_ZN14merge_sort_lib3src3lib10merge_sort17h1084fe487150b18cE: %b.0"}
!38 = !{!39, !41, !42, !44}
!39 = distinct !{!39, !40, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb6d5bc5f2e0c528aE: %self.0"}
!40 = distinct !{!40, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb6d5bc5f2e0c528aE"}
!41 = distinct !{!41, !40, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb6d5bc5f2e0c528aE: %src.0"}
!42 = distinct !{!42, !43, !"_ZN14merge_sort_lib3src3lib10merge_sort17h1084fe487150b18cE: %a.0"}
!43 = distinct !{!43, !"_ZN14merge_sort_lib3src3lib10merge_sort17h1084fe487150b18cE"}
!44 = distinct !{!44, !43, !"_ZN14merge_sort_lib3src3lib10merge_sort17h1084fe487150b18cE: %b.0"}
