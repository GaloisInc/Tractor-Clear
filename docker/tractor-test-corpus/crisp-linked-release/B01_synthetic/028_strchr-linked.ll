; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"core::fmt::Arguments<'_>" = type { { ptr, i64 }, { ptr, i64 }, { ptr, i64 } }

@alloc_1b6cf43f7bda0df0390e68dd409ddde3 = private unnamed_addr constant <{ [3 x i8] }> <{ [3 x i8] c"A: " }>, align 1
@alloc_49a1e817e911805af64bbc7efb390101 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc_64b792996cc519635aae9d7d2b38ae6b = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc_1b6cf43f7bda0df0390e68dd409ddde3, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @alloc_49a1e817e911805af64bbc7efb390101, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc_6b1f62e7f062ba1b8742ebb0c63bcdf6 = private unnamed_addr constant <{ [3 x i8] }> <{ [3 x i8] c"x: " }>, align 1
@alloc_b1888e71441a309be66dac17ee5ba4d4 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc_6b1f62e7f062ba1b8742ebb0c63bcdf6, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @alloc_49a1e817e911805af64bbc7efb390101, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define void @driver(ptr noundef %in_0) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %_20.i = alloca i32, align 4
  %_17.i = alloca [1 x { ptr, ptr }], align 8
  %_13.i = alloca %"core::fmt::Arguments<'_>", align 8
  %_10.i = alloca i32, align 4
  %_7.i = alloca [1 x { ptr, ptr }], align 8
  %_3.i = alloca %"core::fmt::Arguments<'_>", align 8
  %len = tail call noundef i64 @_ZN4core3ffi5c_str4CStr8from_ptr9strlen_rt17h463292534e232c62E(ptr noundef %in_0)
  %0 = icmp ne ptr %in_0, null
  tail call void @llvm.assume(i1 %0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_3.i), !noalias !2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_7.i), !noalias !2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_10.i), !noalias !2
  %1 = getelementptr inbounds i8, ptr %in_0, i64 %len
  %_10.i5.i.i.i.i.i.i.i = icmp eq i64 %len, 0
  br i1 %_10.i5.i.i.i.i.i.i.i, label %_ZN6driver3src6driver3foo17h183666bd1bd1422eE.exit.i, label %bb3.i.i.i.i.i.i.i.preheader

bb3.i.i.i.i.i.i.i.preheader:                      ; preds = %start
  %min.iters.check = icmp ult i64 %len, 8
  br i1 %min.iters.check, label %bb3.i.i.i.i.i.i.i.preheader27, label %vector.ph

vector.ph:                                        ; preds = %bb3.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %len, -8
  %ind.end = getelementptr i8, ptr %in_0, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %7, %vector.body ]
  %vec.phi2 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %8, %vector.body ]
  %next.gep = getelementptr i8, ptr %in_0, i64 %index
  %wide.load = load <4 x i8>, ptr %next.gep, align 1, !alias.scope !5, !noalias !10
  %2 = getelementptr i8, ptr %next.gep, i64 4
  %wide.load4 = load <4 x i8>, ptr %2, align 1, !alias.scope !5, !noalias !10
  %3 = icmp eq <4 x i8> %wide.load, splat (i8 65)
  %4 = icmp eq <4 x i8> %wide.load4, splat (i8 65)
  %5 = zext <4 x i1> %3 to <4 x i32>
  %6 = zext <4 x i1> %4 to <4 x i32>
  %7 = add <4 x i32> %vec.phi, %5
  %8 = add <4 x i32> %vec.phi2, %6
  %index.next = add nuw i64 %index, 8
  %9 = icmp eq i64 %index.next, %n.vec
  br i1 %9, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %8, %7
  %10 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  %cmp.n = icmp eq i64 %len, %n.vec
  br i1 %cmp.n, label %_ZN6driver3src6driver3foo17h183666bd1bd1422eE.exit.i, label %bb3.i.i.i.i.i.i.i.preheader27

bb3.i.i.i.i.i.i.i.preheader27:                    ; preds = %middle.block, %bb3.i.i.i.i.i.i.i.preheader
  %.07.i.i.i.i.i.i.i.ph = phi i32 [ 0, %bb3.i.i.i.i.i.i.i.preheader ], [ %10, %middle.block ]
  %self.sroa.2.06.i.i.i.i.i.i.i.ph = phi ptr [ %in_0, %bb3.i.i.i.i.i.i.i.preheader ], [ %ind.end, %middle.block ]
  br label %bb3.i.i.i.i.i.i.i

bb3.i.i.i.i.i.i.i:                                ; preds = %bb3.i.i.i.i.i.i.i, %bb3.i.i.i.i.i.i.i.preheader27
  %.07.i.i.i.i.i.i.i = phi i32 [ %_4.0.i.i.i.i.i.i.i.i.i, %bb3.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.ph, %bb3.i.i.i.i.i.i.i.preheader27 ]
  %self.sroa.2.06.i.i.i.i.i.i.i = phi ptr [ %11, %bb3.i.i.i.i.i.i.i ], [ %self.sroa.2.06.i.i.i.i.i.i.i.ph, %bb3.i.i.i.i.i.i.i.preheader27 ]
  %11 = getelementptr inbounds i8, ptr %self.sroa.2.06.i.i.i.i.i.i.i, i64 1
  %.val.i.i.i.i.i.i.i = load i8, ptr %self.sroa.2.06.i.i.i.i.i.i.i, align 1, !alias.scope !5, !noalias !10, !noundef !24
  %12 = icmp eq i8 %.val.i.i.i.i.i.i.i, 65
  %13 = zext i1 %12 to i32
  %_4.0.i.i.i.i.i.i.i.i.i = add i32 %.07.i.i.i.i.i.i.i, %13
  %_10.i.i.i.i.i.i.i.i = icmp eq ptr %11, %1
  br i1 %_10.i.i.i.i.i.i.i.i, label %_ZN6driver3src6driver3foo17h183666bd1bd1422eE.exit.i, label %bb3.i.i.i.i.i.i.i, !llvm.loop !25

_ZN6driver3src6driver3foo17h183666bd1bd1422eE.exit.i: ; preds = %bb3.i.i.i.i.i.i.i, %middle.block, %start
  %.0.lcssa.i.i.i.i.i.i.i = phi i32 [ 0, %start ], [ %10, %middle.block ], [ %_4.0.i.i.i.i.i.i.i.i.i, %bb3.i.i.i.i.i.i.i ]
  store i32 %.0.lcssa.i.i.i.i.i.i.i, ptr %_10.i, align 4, !noalias !2
  store ptr %_10.i, ptr %_7.i, align 8, !noalias !2
  %14 = getelementptr inbounds { ptr, ptr }, ptr %_7.i, i64 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %14, align 8, !noalias !2
  %15 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 1
  store ptr @alloc_64b792996cc519635aae9d7d2b38ae6b, ptr %15, align 8, !alias.scope !26, !noalias !29
  %16 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 1, i32 1
  store i64 2, ptr %16, align 8, !alias.scope !26, !noalias !29
  store ptr null, ptr %_3.i, align 8, !alias.scope !26, !noalias !29
  %17 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 2
  store ptr %_7.i, ptr %17, align 8, !alias.scope !26, !noalias !29
  %18 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_3.i, i64 0, i32 2, i32 1
  store i64 1, ptr %18, align 8, !alias.scope !26, !noalias !29
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_3.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_3.i), !noalias !2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_10.i), !noalias !2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_7.i), !noalias !2
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_13.i), !noalias !2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_17.i), !noalias !2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_20.i), !noalias !2
  br i1 %_10.i5.i.i.i.i.i.i.i, label %_ZN6driver3src6driver6driver17h9d3d81f577fc8643E.exit, label %bb3.i.i.i.i.i.i8.i.preheader

bb3.i.i.i.i.i.i8.i.preheader:                     ; preds = %_ZN6driver3src6driver3foo17h183666bd1bd1422eE.exit.i
  %min.iters.check7 = icmp ult i64 %len, 8
  br i1 %min.iters.check7, label %bb3.i.i.i.i.i.i8.i.preheader25, label %vector.ph8

vector.ph8:                                       ; preds = %bb3.i.i.i.i.i.i8.i.preheader
  %n.vec10 = and i64 %len, -8
  %ind.end11 = getelementptr i8, ptr %in_0, i64 %n.vec10
  br label %vector.body14

vector.body14:                                    ; preds = %vector.body14, %vector.ph8
  %index15 = phi i64 [ 0, %vector.ph8 ], [ %index.next22, %vector.body14 ]
  %vec.phi16 = phi <4 x i32> [ zeroinitializer, %vector.ph8 ], [ %24, %vector.body14 ]
  %vec.phi17 = phi <4 x i32> [ zeroinitializer, %vector.ph8 ], [ %25, %vector.body14 ]
  %next.gep18 = getelementptr i8, ptr %in_0, i64 %index15
  %wide.load20 = load <4 x i8>, ptr %next.gep18, align 1, !alias.scope !32, !noalias !37
  %19 = getelementptr i8, ptr %next.gep18, i64 4
  %wide.load21 = load <4 x i8>, ptr %19, align 1, !alias.scope !32, !noalias !37
  %20 = icmp eq <4 x i8> %wide.load20, splat (i8 120)
  %21 = icmp eq <4 x i8> %wide.load21, splat (i8 120)
  %22 = zext <4 x i1> %20 to <4 x i32>
  %23 = zext <4 x i1> %21 to <4 x i32>
  %24 = add <4 x i32> %vec.phi16, %22
  %25 = add <4 x i32> %vec.phi17, %23
  %index.next22 = add nuw i64 %index15, 8
  %26 = icmp eq i64 %index.next22, %n.vec10
  br i1 %26, label %middle.block5, label %vector.body14, !llvm.loop !48

middle.block5:                                    ; preds = %vector.body14
  %bin.rdx23 = add <4 x i32> %25, %24
  %27 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx23)
  %cmp.n13 = icmp eq i64 %len, %n.vec10
  br i1 %cmp.n13, label %_ZN6driver3src6driver6driver17h9d3d81f577fc8643E.exit, label %bb3.i.i.i.i.i.i8.i.preheader25

bb3.i.i.i.i.i.i8.i.preheader25:                   ; preds = %middle.block5, %bb3.i.i.i.i.i.i8.i.preheader
  %.07.i.i.i.i.i.i3.i.ph = phi i32 [ 0, %bb3.i.i.i.i.i.i8.i.preheader ], [ %27, %middle.block5 ]
  %self.sroa.2.06.i.i.i.i.i.i4.i.ph = phi ptr [ %in_0, %bb3.i.i.i.i.i.i8.i.preheader ], [ %ind.end11, %middle.block5 ]
  br label %bb3.i.i.i.i.i.i8.i

bb3.i.i.i.i.i.i8.i:                               ; preds = %bb3.i.i.i.i.i.i8.i, %bb3.i.i.i.i.i.i8.i.preheader25
  %.07.i.i.i.i.i.i3.i = phi i32 [ %_4.0.i.i.i.i.i.i.i.i6.i, %bb3.i.i.i.i.i.i8.i ], [ %.07.i.i.i.i.i.i3.i.ph, %bb3.i.i.i.i.i.i8.i.preheader25 ]
  %self.sroa.2.06.i.i.i.i.i.i4.i = phi ptr [ %28, %bb3.i.i.i.i.i.i8.i ], [ %self.sroa.2.06.i.i.i.i.i.i4.i.ph, %bb3.i.i.i.i.i.i8.i.preheader25 ]
  %28 = getelementptr inbounds i8, ptr %self.sroa.2.06.i.i.i.i.i.i4.i, i64 1
  %.val.i.i.i.i.i.i5.i = load i8, ptr %self.sroa.2.06.i.i.i.i.i.i4.i, align 1, !alias.scope !32, !noalias !37, !noundef !24
  %29 = icmp eq i8 %.val.i.i.i.i.i.i5.i, 120
  %30 = zext i1 %29 to i32
  %_4.0.i.i.i.i.i.i.i.i6.i = add i32 %.07.i.i.i.i.i.i3.i, %30
  %_10.i.i.i.i.i.i.i7.i = icmp eq ptr %28, %1
  br i1 %_10.i.i.i.i.i.i.i7.i, label %_ZN6driver3src6driver6driver17h9d3d81f577fc8643E.exit, label %bb3.i.i.i.i.i.i8.i, !llvm.loop !49

_ZN6driver3src6driver6driver17h9d3d81f577fc8643E.exit: ; preds = %bb3.i.i.i.i.i.i8.i, %middle.block5, %_ZN6driver3src6driver3foo17h183666bd1bd1422eE.exit.i
  %.0.lcssa.i.i.i.i.i.i9.i = phi i32 [ 0, %_ZN6driver3src6driver3foo17h183666bd1bd1422eE.exit.i ], [ %27, %middle.block5 ], [ %_4.0.i.i.i.i.i.i.i.i6.i, %bb3.i.i.i.i.i.i8.i ]
  store i32 %.0.lcssa.i.i.i.i.i.i9.i, ptr %_20.i, align 4, !noalias !2
  store ptr %_20.i, ptr %_17.i, align 8, !noalias !2
  %31 = getelementptr inbounds { ptr, ptr }, ptr %_17.i, i64 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %31, align 8, !noalias !2
  %32 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_13.i, i64 0, i32 1
  store ptr @alloc_b1888e71441a309be66dac17ee5ba4d4, ptr %32, align 8, !alias.scope !50, !noalias !53
  %33 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_13.i, i64 0, i32 1, i32 1
  store i64 2, ptr %33, align 8, !alias.scope !50, !noalias !53
  store ptr null, ptr %_13.i, align 8, !alias.scope !50, !noalias !53
  %34 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_13.i, i64 0, i32 2
  store ptr %_17.i, ptr %34, align 8, !alias.scope !50, !noalias !53
  %35 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_13.i, i64 0, i32 2, i32 1
  store i64 1, ptr %35, align 8, !alias.scope !50, !noalias !53
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_13.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_13.i), !noalias !2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_20.i), !noalias !2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_17.i), !noalias !2
  ret void
}

; Function Attrs: nonlazybind uwtable
declare noundef i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_ZN4core3ffi5c_str4CStr8from_ptr9strlen_rt17h463292534e232c62E(ptr noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #4

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE"(ptr noalias noundef readonly align 4 dereferenceable(4), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef readonly dereferenceable(48)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nonlazybind uwtable
define noundef i32 @foo(ptr noundef %in_0, i8 noundef signext %c) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %len = tail call noundef i64 @_ZN4core3ffi5c_str4CStr8from_ptr9strlen_rt17h463292534e232c62E(ptr noundef %in_0)
  %0 = icmp ne ptr %in_0, null
  tail call void @llvm.assume(i1 %0)
  %1 = getelementptr inbounds i8, ptr %in_0, i64 %len
  %_10.i5.i.i.i.i.i.i = icmp eq i64 %len, 0
  br i1 %_10.i5.i.i.i.i.i.i, label %_ZN6driver3src6driver3foo17h183666bd1bd1422eE.exit, label %bb3.i.i.i.i.i.i.preheader

bb3.i.i.i.i.i.i.preheader:                        ; preds = %start
  %min.iters.check = icmp ult i64 %len, 8
  br i1 %min.iters.check, label %bb3.i.i.i.i.i.i.preheader7, label %vector.ph

vector.ph:                                        ; preds = %bb3.i.i.i.i.i.i.preheader
  %n.vec = and i64 %len, -8
  %ind.end = getelementptr i8, ptr %in_0, i64 %n.vec
  %broadcast.splatinsert = insertelement <4 x i8> poison, i8 %c, i64 0
  %broadcast.splat = shufflevector <4 x i8> %broadcast.splatinsert, <4 x i8> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert5 = insertelement <4 x i8> poison, i8 %c, i64 0
  %broadcast.splat6 = shufflevector <4 x i8> %broadcast.splatinsert5, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %7, %vector.body ]
  %vec.phi2 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %8, %vector.body ]
  %next.gep = getelementptr i8, ptr %in_0, i64 %index
  %wide.load = load <4 x i8>, ptr %next.gep, align 1, !alias.scope !56, !noalias !61
  %2 = getelementptr i8, ptr %next.gep, i64 4
  %wide.load4 = load <4 x i8>, ptr %2, align 1, !alias.scope !56, !noalias !61
  %3 = icmp eq <4 x i8> %wide.load, %broadcast.splat
  %4 = icmp eq <4 x i8> %wide.load4, %broadcast.splat6
  %5 = zext <4 x i1> %3 to <4 x i32>
  %6 = zext <4 x i1> %4 to <4 x i32>
  %7 = add <4 x i32> %vec.phi, %5
  %8 = add <4 x i32> %vec.phi2, %6
  %index.next = add nuw i64 %index, 8
  %9 = icmp eq i64 %index.next, %n.vec
  br i1 %9, label %middle.block, label %vector.body, !llvm.loop !72

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %8, %7
  %10 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  %cmp.n = icmp eq i64 %len, %n.vec
  br i1 %cmp.n, label %_ZN6driver3src6driver3foo17h183666bd1bd1422eE.exit, label %bb3.i.i.i.i.i.i.preheader7

bb3.i.i.i.i.i.i.preheader7:                       ; preds = %middle.block, %bb3.i.i.i.i.i.i.preheader
  %.07.i.i.i.i.i.i.ph = phi i32 [ 0, %bb3.i.i.i.i.i.i.preheader ], [ %10, %middle.block ]
  %self.sroa.2.06.i.i.i.i.i.i.ph = phi ptr [ %in_0, %bb3.i.i.i.i.i.i.preheader ], [ %ind.end, %middle.block ]
  br label %bb3.i.i.i.i.i.i

bb3.i.i.i.i.i.i:                                  ; preds = %bb3.i.i.i.i.i.i, %bb3.i.i.i.i.i.i.preheader7
  %.07.i.i.i.i.i.i = phi i32 [ %_4.0.i.i.i.i.i.i.i.i, %bb3.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.ph, %bb3.i.i.i.i.i.i.preheader7 ]
  %self.sroa.2.06.i.i.i.i.i.i = phi ptr [ %11, %bb3.i.i.i.i.i.i ], [ %self.sroa.2.06.i.i.i.i.i.i.ph, %bb3.i.i.i.i.i.i.preheader7 ]
  %11 = getelementptr inbounds i8, ptr %self.sroa.2.06.i.i.i.i.i.i, i64 1
  %.val.i.i.i.i.i.i = load i8, ptr %self.sroa.2.06.i.i.i.i.i.i, align 1, !alias.scope !56, !noalias !61, !noundef !24
  %12 = icmp eq i8 %.val.i.i.i.i.i.i, %c
  %13 = zext i1 %12 to i32
  %_4.0.i.i.i.i.i.i.i.i = add i32 %.07.i.i.i.i.i.i, %13
  %_10.i.i.i.i.i.i.i = icmp eq ptr %11, %1
  br i1 %_10.i.i.i.i.i.i.i, label %_ZN6driver3src6driver3foo17h183666bd1bd1422eE.exit, label %bb3.i.i.i.i.i.i, !llvm.loop !73

_ZN6driver3src6driver3foo17h183666bd1bd1422eE.exit: ; preds = %bb3.i.i.i.i.i.i, %middle.block, %start
  %.0.lcssa.i.i.i.i.i.i = phi i32 [ 0, %start ], [ %10, %middle.block ], [ %_4.0.i.i.i.i.i.i.i.i, %bb3.i.i.i.i.i.i ]
  ret i32 %.0.lcssa.i.i.i.i.i.i
}

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!3}
!3 = distinct !{!3, !4, !"_ZN6driver3src6driver6driver17h9d3d81f577fc8643E: %input.0"}
!4 = distinct !{!4, !"_ZN6driver3src6driver6driver17h9d3d81f577fc8643E"}
!5 = !{!6, !8, !3}
!6 = distinct !{!6, !7, !"_ZN108_$LT$core..iter..adapters..filter..Filter$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$5count8to_usize28_$u7b$$u7b$closure$u7d$$u7d$17hac236e56cec20311E: argument 0"}
!7 = distinct !{!7, !"_ZN108_$LT$core..iter..adapters..filter..Filter$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$5count8to_usize28_$u7b$$u7b$closure$u7d$$u7d$17hac236e56cec20311E"}
!8 = distinct !{!8, !9, !"_ZN6driver3src6driver3foo17h183666bd1bd1422eE: %input.0"}
!9 = distinct !{!9, !"_ZN6driver3src6driver3foo17h183666bd1bd1422eE"}
!10 = !{!11, !13, !15, !17, !19}
!11 = distinct !{!11, !12, !"_ZN4core4iter6traits8iterator8Iterator4fold17haf225e020ed5cc57E: argument 0"}
!12 = distinct !{!12, !"_ZN4core4iter6traits8iterator8Iterator4fold17haf225e020ed5cc57E"}
!13 = distinct !{!13, !14, !"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h1ba5ccdf204e8b70E: %self"}
!14 = distinct !{!14, !"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h1ba5ccdf204e8b70E"}
!15 = distinct !{!15, !16, !"_ZN56_$LT$usize$u20$as$u20$core..iter..traits..accum..Sum$GT$3sum17hd0287f2b0711f355E: %iter"}
!16 = distinct !{!16, !"_ZN56_$LT$usize$u20$as$u20$core..iter..traits..accum..Sum$GT$3sum17hd0287f2b0711f355E"}
!17 = distinct !{!17, !18, !"_ZN4core4iter6traits8iterator8Iterator3sum17h5e1f01b117e1d459E: %self"}
!18 = distinct !{!18, !"_ZN4core4iter6traits8iterator8Iterator3sum17h5e1f01b117e1d459E"}
!19 = distinct !{!19, !20, !"_ZN108_$LT$core..iter..adapters..filter..Filter$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$5count17h1662cb751274f3e7E: %self"}
!20 = distinct !{!20, !"_ZN108_$LT$core..iter..adapters..filter..Filter$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$5count17h1662cb751274f3e7E"}
!21 = distinct !{!21, !22, !23}
!22 = !{!"llvm.loop.isvectorized", i32 1}
!23 = !{!"llvm.loop.unroll.runtime.disable"}
!24 = !{}
!25 = distinct !{!25, !23, !22}
!26 = !{!27}
!27 = distinct !{!27, !28, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!28 = distinct !{!28, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!29 = !{!30, !31, !3}
!30 = distinct !{!30, !28, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %pieces.0"}
!31 = distinct !{!31, !28, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!32 = !{!33, !35, !3}
!33 = distinct !{!33, !34, !"_ZN108_$LT$core..iter..adapters..filter..Filter$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$5count8to_usize28_$u7b$$u7b$closure$u7d$$u7d$17hac236e56cec20311E: argument 0"}
!34 = distinct !{!34, !"_ZN108_$LT$core..iter..adapters..filter..Filter$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$5count8to_usize28_$u7b$$u7b$closure$u7d$$u7d$17hac236e56cec20311E"}
!35 = distinct !{!35, !36, !"_ZN6driver3src6driver3foo17h183666bd1bd1422eE: %input.0"}
!36 = distinct !{!36, !"_ZN6driver3src6driver3foo17h183666bd1bd1422eE"}
!37 = !{!38, !40, !42, !44, !46}
!38 = distinct !{!38, !39, !"_ZN4core4iter6traits8iterator8Iterator4fold17haf225e020ed5cc57E: argument 0"}
!39 = distinct !{!39, !"_ZN4core4iter6traits8iterator8Iterator4fold17haf225e020ed5cc57E"}
!40 = distinct !{!40, !41, !"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h1ba5ccdf204e8b70E: %self"}
!41 = distinct !{!41, !"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h1ba5ccdf204e8b70E"}
!42 = distinct !{!42, !43, !"_ZN56_$LT$usize$u20$as$u20$core..iter..traits..accum..Sum$GT$3sum17hd0287f2b0711f355E: %iter"}
!43 = distinct !{!43, !"_ZN56_$LT$usize$u20$as$u20$core..iter..traits..accum..Sum$GT$3sum17hd0287f2b0711f355E"}
!44 = distinct !{!44, !45, !"_ZN4core4iter6traits8iterator8Iterator3sum17h5e1f01b117e1d459E: %self"}
!45 = distinct !{!45, !"_ZN4core4iter6traits8iterator8Iterator3sum17h5e1f01b117e1d459E"}
!46 = distinct !{!46, !47, !"_ZN108_$LT$core..iter..adapters..filter..Filter$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$5count17h1662cb751274f3e7E: %self"}
!47 = distinct !{!47, !"_ZN108_$LT$core..iter..adapters..filter..Filter$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$5count17h1662cb751274f3e7E"}
!48 = distinct !{!48, !22, !23}
!49 = distinct !{!49, !23, !22}
!50 = !{!51}
!51 = distinct !{!51, !52, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!52 = distinct !{!52, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!53 = !{!54, !55, !3}
!54 = distinct !{!54, !52, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %pieces.0"}
!55 = distinct !{!55, !52, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!56 = !{!57, !59}
!57 = distinct !{!57, !58, !"_ZN108_$LT$core..iter..adapters..filter..Filter$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$5count8to_usize28_$u7b$$u7b$closure$u7d$$u7d$17hac236e56cec20311E: argument 0"}
!58 = distinct !{!58, !"_ZN108_$LT$core..iter..adapters..filter..Filter$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$5count8to_usize28_$u7b$$u7b$closure$u7d$$u7d$17hac236e56cec20311E"}
!59 = distinct !{!59, !60, !"_ZN6driver3src6driver3foo17h183666bd1bd1422eE: %input.0"}
!60 = distinct !{!60, !"_ZN6driver3src6driver3foo17h183666bd1bd1422eE"}
!61 = !{!62, !64, !66, !68, !70}
!62 = distinct !{!62, !63, !"_ZN4core4iter6traits8iterator8Iterator4fold17haf225e020ed5cc57E: argument 0"}
!63 = distinct !{!63, !"_ZN4core4iter6traits8iterator8Iterator4fold17haf225e020ed5cc57E"}
!64 = distinct !{!64, !65, !"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h1ba5ccdf204e8b70E: %self"}
!65 = distinct !{!65, !"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h1ba5ccdf204e8b70E"}
!66 = distinct !{!66, !67, !"_ZN56_$LT$usize$u20$as$u20$core..iter..traits..accum..Sum$GT$3sum17hd0287f2b0711f355E: %iter"}
!67 = distinct !{!67, !"_ZN56_$LT$usize$u20$as$u20$core..iter..traits..accum..Sum$GT$3sum17hd0287f2b0711f355E"}
!68 = distinct !{!68, !69, !"_ZN4core4iter6traits8iterator8Iterator3sum17h5e1f01b117e1d459E: %self"}
!69 = distinct !{!69, !"_ZN4core4iter6traits8iterator8Iterator3sum17h5e1f01b117e1d459E"}
!70 = distinct !{!70, !71, !"_ZN108_$LT$core..iter..adapters..filter..Filter$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$5count17h1662cb751274f3e7E: %self"}
!71 = distinct !{!71, !"_ZN108_$LT$core..iter..adapters..filter..Filter$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$5count17h1662cb751274f3e7E"}
!72 = distinct !{!72, !22, !23}
!73 = distinct !{!73, !23, !22}
