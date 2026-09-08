; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"core::fmt::Arguments<'_>" = type { { ptr, i64 }, { ptr, i64 }, { ptr, i64 } }

@alloc_513570631223a12912d85da2bec3b15a = private unnamed_addr constant <{}> zeroinitializer, align 8
@alloc_00728171eaa7ec2c5a267f4bf25d4ac3 = private unnamed_addr constant <{ [13 x i8] }> <{ [13 x i8] c"src/driver.rs" }>, align 1
@alloc_a128acf714d07072acdabdf37633058e = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_00728171eaa7ec2c5a267f4bf25d4ac3, [16 x i8] c"\0D\00\00\00\00\00\00\00\13\00\00\00\12\00\00\00" }>, align 8
@alloc_49a1e817e911805af64bbc7efb390101 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc_4ed11f17954caf7854f80f02ae34907e = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc_513570631223a12912d85da2bec3b15a, [8 x i8] zeroinitializer, ptr @alloc_49a1e817e911805af64bbc7efb390101, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc_7ea017529f8f2864b157f076f321b0fe = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_00728171eaa7ec2c5a267f4bf25d4ac3, [16 x i8] c"\0D\00\00\00\00\00\00\00\1C\00\00\00\18\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define void @driver(ptr nocapture noundef readonly %data, i32 noundef %len) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %_24.i.i = alloca [1 x { ptr, ptr }], align 8
  %_20.i.i = alloca %"core::fmt::Arguments<'_>", align 8
  %len1.i = sext i32 %len to i64
  %_5.i.i.i = icmp eq i32 %len, 0
  br i1 %_5.i.i.i, label %_ZN6driver3src6driver6driver17he8d71a08d732200eE.exit, label %bb6.i.i.i

bb6.i.i.i:                                        ; preds = %start
  %_5.i.i.i.i = icmp slt i32 %len, 0
  %array_size.i.i.i.i = shl nsw i64 %len1.i, 2
  %0 = lshr i32 %len, 29
  %1 = and i32 %0, 4
  %2 = xor i32 %1, 4
  %.sroa.2.0.i.i.i.i = zext i32 %2 to i64
  br i1 %_5.i.i.i.i, label %bb7.i.i.i, label %bb4.i.i.i.i.i

bb7.i.i.i:                                        ; preds = %bb6.i.i.i
  tail call void @_ZN5alloc7raw_vec17capacity_overflow17h485163a5bdbafde6E() #12, !noalias !2
  unreachable

bb4.i.i.i.i.i:                                    ; preds = %bb6.i.i.i
  %3 = tail call noundef ptr @__rust_alloc(i64 noundef %array_size.i.i.i.i, i64 noundef %.sroa.2.0.i.i.i.i) #13, !noalias !2
  %4 = icmp eq ptr %3, null
  br i1 %4, label %bb17.i.i.i, label %bb13.i.i.i.i

bb17.i.i.i:                                       ; preds = %bb4.i.i.i.i.i
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h944707b833928a89E(i64 noundef %array_size.i.i.i.i, i64 noundef %.sroa.2.0.i.i.i.i) #12, !noalias !2
  unreachable

bb13.i.i.i.i:                                     ; preds = %bb4.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %3, ptr nonnull align 4 %data, i64 %array_size.i.i.i.i, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8)
  %5 = tail call noundef align 4 ptr @__rust_alloc(i64 noundef %array_size.i.i.i.i, i64 noundef 4) #13, !noalias !11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %bb17.i.i.i.i, label %bb2.i.i.preheader.i

bb17.i.i.i.i:                                     ; preds = %bb13.i.i.i.i
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h944707b833928a89E(i64 noundef %array_size.i.i.i.i, i64 noundef 4) #12
          to label %.noexc9.i unwind label %cleanup.i, !noalias !15

.noexc9.i:                                        ; preds = %bb17.i.i.i.i
  unreachable

bb2.i.i.preheader.i:                              ; preds = %bb13.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %5, ptr nonnull align 4 %3, i64 %array_size.i.i.i.i, i1 false), !noalias !15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19)
  %7 = add nsw i64 %len1.i, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %7, i64 %len1.i)
  %8 = add nsw i64 %umin, 1
  %min.iters.check = icmp ult i64 %8, 5
  br i1 %min.iters.check, label %bb2.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb2.i.i.preheader.i
  %n.mod.vf = and i64 %8, 3
  %9 = icmp eq i64 %n.mod.vf, 0
  %10 = select i1 %9, i64 4, i64 %n.mod.vf
  %n.vec = sub i64 %8, %10
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %11 = getelementptr inbounds [0 x i32], ptr %5, i64 0, i64 %index
  %wide.load = load <4 x i32>, ptr %11, align 4, !alias.scope !19, !noalias !21
  %12 = getelementptr inbounds [0 x i32], ptr %3, i64 0, i64 %index
  %13 = add <4 x i32> %wide.load, splat (i32 1)
  %14 = mul <4 x i32> %13, %wide.load
  store <4 x i32> %14, ptr %12, align 4, !alias.scope !24, !noalias !25
  %index.next = add nuw i64 %index, 4
  %15 = icmp eq i64 %index.next, %n.vec
  br i1 %15, label %bb2.i.i.i.preheader, label %vector.body, !llvm.loop !26

bb2.i.i.i.preheader:                              ; preds = %vector.body, %bb2.i.i.preheader.i
  %iter.sroa.0.012.i.i.i.ph = phi i64 [ 0, %bb2.i.i.preheader.i ], [ %n.vec, %vector.body ]
  br label %bb2.i.i.i

bb2.i.i.i:                                        ; preds = %bb8.i.i.i, %bb2.i.i.i.preheader
  %iter.sroa.0.012.i.i.i = phi i64 [ %16, %bb8.i.i.i ], [ %iter.sroa.0.012.i.i.i.ph, %bb2.i.i.i.preheader ]
  %exitcond.not.i.i.i = icmp eq i64 %iter.sroa.0.012.i.i.i, %len1.i
  br i1 %exitcond.not.i.i.i, label %panic.invoke.i.i, label %bb8.i.i.i, !prof !29

bb8.i.i.i:                                        ; preds = %bb2.i.i.i
  %16 = add nuw nsw i64 %iter.sroa.0.012.i.i.i, 1
  %17 = getelementptr inbounds [0 x i32], ptr %5, i64 0, i64 %iter.sroa.0.012.i.i.i
  %_14.i.i.i = load i32, ptr %17, align 4, !alias.scope !19, !noalias !21, !noundef !30
  %18 = getelementptr inbounds [0 x i32], ptr %3, i64 0, i64 %iter.sroa.0.012.i.i.i
  %_13.i20.i.i = add i32 %_14.i.i.i, 1
  %19 = mul i32 %_13.i20.i.i, %_14.i.i.i
  store i32 %19, ptr %18, align 4, !alias.scope !24, !noalias !25
  %exitcond20.not.i.i.i = icmp eq i64 %16, %len1.i
  br i1 %exitcond20.not.i.i.i, label %bb3.lr.ph.i.i, label %bb2.i.i.i, !llvm.loop !31

cleanup.loopexit.i.i:                             ; preds = %bb7.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %cleanup.i.i

cleanup.loopexit.split-lp.i.i:                    ; preds = %panic.invoke.i.i
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %cleanup.loopexit.split-lp.i.i, %cleanup.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %cleanup.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %cleanup.loopexit.split-lp.i.i ]
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h1ea6affc0d1df6d9E"(i64 %len1.i, ptr nonnull %5) #14
          to label %cleanup.body.i unwind label %terminate.i.i, !noalias !15

bb3.lr.ph.i.i:                                    ; preds = %bb8.i.i.i
  %20 = getelementptr inbounds { ptr, ptr }, ptr %_24.i.i, i64 0, i32 1
  %21 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_20.i.i, i64 0, i32 1
  %22 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_20.i.i, i64 0, i32 1, i32 1
  %23 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_20.i.i, i64 0, i32 2
  %24 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_20.i.i, i64 0, i32 2, i32 1
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %len1.i, i64 1)
  br label %bb3.i8.i

bb3.i8.i:                                         ; preds = %bb8.i.i, %bb3.lr.ph.i.i
  %iter.sroa.0.023.i.i = phi i64 [ 0, %bb3.lr.ph.i.i ], [ %25, %bb8.i.i ]
  %25 = add nuw nsw i64 %iter.sroa.0.023.i.i, 1
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_20.i.i), !noalias !32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_24.i.i), !noalias !32
  %exitcond.not.i.i = icmp eq i64 %iter.sroa.0.023.i.i, %len1.i
  br i1 %exitcond.not.i.i, label %panic.invoke.i.i, label %bb7.i.i, !prof !29

panic.invoke.i.i:                                 ; preds = %bb3.i8.i, %bb2.i.i.i
  %26 = phi ptr [ @alloc_7ea017529f8f2864b157f076f321b0fe, %bb3.i8.i ], [ @alloc_a128acf714d07072acdabdf37633058e, %bb2.i.i.i ]
  invoke void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 noundef %len1.i, i64 noundef %len1.i, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %26) #12
          to label %panic.cont.i.i unwind label %cleanup.loopexit.split-lp.i.i, !noalias !15

panic.cont.i.i:                                   ; preds = %panic.invoke.i.i
  unreachable

bb7.i.i:                                          ; preds = %bb3.i8.i
  %x.i.i = getelementptr inbounds [0 x i32], ptr %3, i64 0, i64 %iter.sroa.0.023.i.i
  store ptr %x.i.i, ptr %_24.i.i, align 8, !noalias !32
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %20, align 8, !noalias !32
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %21, align 8, !alias.scope !33, !noalias !36
  store i64 2, ptr %22, align 8, !alias.scope !33, !noalias !36
  store ptr null, ptr %_20.i.i, align 8, !alias.scope !33, !noalias !36
  store ptr %_24.i.i, ptr %23, align 8, !alias.scope !33, !noalias !36
  store i64 1, ptr %24, align 8, !alias.scope !33, !noalias !36
  invoke void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_20.i.i)
          to label %bb8.i.i unwind label %cleanup.loopexit.i.i, !noalias !15

bb8.i.i:                                          ; preds = %bb7.i.i
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_20.i.i), !noalias !32
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_24.i.i), !noalias !32
  %exitcond26.not.i.i = icmp eq i64 %25, %umax.i.i
  br i1 %exitcond26.not.i.i, label %bb2.i.i.i.i, label %bb3.i8.i

terminate.i.i:                                    ; preds = %cleanup.i.i
  %27 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4core9panicking19panic_cannot_unwind17h629e1da841ab4abfE() #15, !noalias !15
  unreachable

cleanup.i:                                        ; preds = %bb17.i.i.i.i
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %cleanup.body.i

cleanup.body.i:                                   ; preds = %cleanup.i, %cleanup.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %28, %cleanup.i ], [ %lpad.phi.i.i, %cleanup.i.i ]
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h1ea6affc0d1df6d9E"(i64 %len1.i, ptr nonnull %3) #14
          to label %bb4.i unwind label %terminate.i, !noalias !15

bb2.i.i.i.i:                                      ; preds = %bb8.i.i
  call void @__rust_dealloc(ptr noundef nonnull %5, i64 noundef %array_size.i.i.i.i, i64 noundef 4) #13, !noalias !15
  call void @__rust_dealloc(ptr noundef nonnull %3, i64 noundef %array_size.i.i.i.i, i64 noundef 4) #13, !noalias !15
  br label %_ZN6driver3src6driver6driver17he8d71a08d732200eE.exit

terminate.i:                                      ; preds = %cleanup.body.i
  %29 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4core9panicking19panic_cannot_unwind17h629e1da841ab4abfE() #15, !noalias !15
  unreachable

bb4.i:                                            ; preds = %cleanup.body.i
  resume { ptr, i32 } %eh.lpad-body.i

_ZN6driver3src6driver6driver17he8d71a08d732200eE.exit: ; preds = %bb2.i.i.i.i, %start
  ret void
}

; Function Attrs: nonlazybind uwtable
declare noundef i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: noreturn nonlazybind uwtable
declare void @_ZN5alloc7raw_vec17capacity_overflow17h485163a5bdbafde6E() unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @__rust_alloc(i64 noundef, i64 allocalign noundef) unnamed_addr #2

; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_ZN5alloc5alloc18handle_alloc_error17h944707b833928a89E(i64 noundef, i64 noundef) unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h1ea6affc0d1df6d9E"(i64 %_1.0.val, ptr %_1.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb4:
  %_3.i.i.i = icmp eq i64 %_1.0.val, 0
  br i1 %_3.i.i.i, label %"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17hc2f09b1a14616f6fE.exit", label %bb2.i.i

bb2.i.i:                                          ; preds = %bb4
  %0 = icmp ne ptr %_1.8.val, null
  tail call void @llvm.assume(i1 %0)
  %1 = shl nuw i64 %_1.0.val, 2
  tail call void @__rust_dealloc(ptr noundef nonnull %_1.8.val, i64 noundef %1, i64 noundef 4) #13
  br label %"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17hc2f09b1a14616f6fE.exit"

"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17hc2f09b1a14616f6fE.exit": ; preds = %bb2.i.i, %bb4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 dereferenceable(24)) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE"(ptr noalias noundef readonly align 4 dereferenceable(4), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef readonly dereferenceable(48)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_ZN4core9panicking19panic_cannot_unwind17h629e1da841ab4abfE() unnamed_addr #9

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @__rust_dealloc(ptr allocptr noundef, i64 noundef, i64 noundef) unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nonlazybind uwtable
define void @fma_array(ptr nocapture noundef writeonly %out, ptr nocapture noundef readonly %mul1, ptr nocapture noundef readonly %mul2, ptr nocapture noundef readonly %add, i32 noundef %len) unnamed_addr #0 {
start:
  %len1 = sext i32 %len to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  %.not.i = icmp eq i32 %len, 0
  br i1 %.not.i, label %_ZN6driver3src6driver9fma_array17h45e2bcd03c6a51e2E.exit, label %bb2.i.preheader

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
  %wide.load = load <4 x i32>, ptr %4, align 4, !alias.scope !41, !noalias !47
  %5 = getelementptr inbounds [0 x i32], ptr %mul2, i64 0, i64 %index
  %wide.load5 = load <4 x i32>, ptr %5, align 4, !alias.scope !43, !noalias !48
  %6 = mul <4 x i32> %wide.load5, %wide.load
  %7 = getelementptr inbounds [0 x i32], ptr %add, i64 0, i64 %index
  %wide.load6 = load <4 x i32>, ptr %7, align 4, !alias.scope !45, !noalias !49
  %8 = getelementptr inbounds [0 x i32], ptr %out, i64 0, i64 %index
  %9 = add <4 x i32> %wide.load6, %6
  store <4 x i32> %9, ptr %8, align 4, !alias.scope !38, !noalias !50
  %index.next = add nuw i64 %index, 4
  %10 = icmp eq i64 %index.next, %n.vec
  br i1 %10, label %bb2.i.preheader7, label %vector.body, !llvm.loop !51

bb2.i.preheader7:                                 ; preds = %vector.body, %bb2.i.preheader
  %iter.sroa.0.012.i.ph = phi i64 [ 0, %bb2.i.preheader ], [ %n.vec, %vector.body ]
  br label %bb2.i

bb2.i:                                            ; preds = %bb8.i, %bb2.i.preheader7
  %iter.sroa.0.012.i = phi i64 [ %11, %bb8.i ], [ %iter.sroa.0.012.i.ph, %bb2.i.preheader7 ]
  %exitcond.not.i = icmp eq i64 %iter.sroa.0.012.i, %len1
  br i1 %exitcond.not.i, label %panic.i, label %bb8.i, !prof !29

panic.i:                                          ; preds = %bb2.i
  tail call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 noundef %len1, i64 noundef %len1, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_a128acf714d07072acdabdf37633058e) #12, !noalias !52
  unreachable

bb8.i:                                            ; preds = %bb2.i
  %11 = add nuw i64 %iter.sroa.0.012.i, 1
  %12 = getelementptr inbounds [0 x i32], ptr %mul1, i64 0, i64 %iter.sroa.0.012.i
  %_14.i = load i32, ptr %12, align 4, !alias.scope !41, !noalias !47, !noundef !30
  %13 = getelementptr inbounds [0 x i32], ptr %mul2, i64 0, i64 %iter.sroa.0.012.i
  %_17.i = load i32, ptr %13, align 4, !alias.scope !43, !noalias !48, !noundef !30
  %_13.i = mul i32 %_17.i, %_14.i
  %14 = getelementptr inbounds [0 x i32], ptr %add, i64 0, i64 %iter.sroa.0.012.i
  %_20.i = load i32, ptr %14, align 4, !alias.scope !45, !noalias !49, !noundef !30
  %15 = getelementptr inbounds [0 x i32], ptr %out, i64 0, i64 %iter.sroa.0.012.i
  %16 = add i32 %_20.i, %_13.i
  store i32 %16, ptr %15, align 4, !alias.scope !38, !noalias !50
  %exitcond20.not.i = icmp eq i64 %11, %len1
  br i1 %exitcond20.not.i, label %_ZN6driver3src6driver9fma_array17h45e2bcd03c6a51e2E.exit, label %bb2.i, !llvm.loop !53

_ZN6driver3src6driver9fma_array17h45e2bcd03c6a51e2E.exit: ; preds = %bb8.i, %start
  ret void
}

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { noreturn }
attributes #13 = { nounwind }
attributes #14 = { noinline }
attributes #15 = { noinline noreturn nounwind }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!3, !5, !6}
!3 = distinct !{!3, !4, !"_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17ha5801d7e3d870a6cE: %self"}
!4 = distinct !{!4, !"_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17ha5801d7e3d870a6cE"}
!5 = distinct !{!5, !4, !"_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17ha5801d7e3d870a6cE: %s.0"}
!6 = distinct !{!6, !7, !"_ZN6driver3src6driver6driver17he8d71a08d732200eE: %data.0"}
!7 = distinct !{!7, !"_ZN6driver3src6driver6driver17he8d71a08d732200eE"}
!8 = !{!9}
!9 = distinct !{!9, !10, !"_ZN6driver3src6driver5inner17h8c84d2ce6e74d378E: %out.0"}
!10 = distinct !{!10, !"_ZN6driver3src6driver5inner17h8c84d2ce6e74d378E"}
!11 = !{!12, !14, !9, !6}
!12 = distinct !{!12, !13, !"_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17ha5801d7e3d870a6cE: %self"}
!13 = distinct !{!13, !"_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17ha5801d7e3d870a6cE"}
!14 = distinct !{!14, !13, !"_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17ha5801d7e3d870a6cE: %s.0"}
!15 = !{!6}
!16 = !{!17}
!17 = distinct !{!17, !18, !"_ZN6driver3src6driver9fma_array17h45e2bcd03c6a51e2E: %out.0"}
!18 = distinct !{!18, !"_ZN6driver3src6driver9fma_array17h45e2bcd03c6a51e2E"}
!19 = !{!20}
!20 = distinct !{!20, !18, !"_ZN6driver3src6driver9fma_array17h45e2bcd03c6a51e2E: %mul1.0"}
!21 = !{!17, !22, !23, !6}
!22 = distinct !{!22, !18, !"_ZN6driver3src6driver9fma_array17h45e2bcd03c6a51e2E: %mul2.0"}
!23 = distinct !{!23, !18, !"_ZN6driver3src6driver9fma_array17h45e2bcd03c6a51e2E: %add.0"}
!24 = !{!17, !9}
!25 = !{!20, !22, !23, !6}
!26 = distinct !{!26, !27, !28}
!27 = !{!"llvm.loop.isvectorized", i32 1}
!28 = !{!"llvm.loop.unroll.runtime.disable"}
!29 = !{!"branch_weights", i32 1, i32 2000}
!30 = !{}
!31 = distinct !{!31, !28, !27}
!32 = !{!9, !6}
!33 = !{!34}
!34 = distinct !{!34, !35, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!35 = distinct !{!35, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!36 = !{!37, !9, !6}
!37 = distinct !{!37, !35, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!38 = !{!39}
!39 = distinct !{!39, !40, !"_ZN6driver3src6driver9fma_array17h45e2bcd03c6a51e2E: %out.0"}
!40 = distinct !{!40, !"_ZN6driver3src6driver9fma_array17h45e2bcd03c6a51e2E"}
!41 = !{!42}
!42 = distinct !{!42, !40, !"_ZN6driver3src6driver9fma_array17h45e2bcd03c6a51e2E: %mul1.0"}
!43 = !{!44}
!44 = distinct !{!44, !40, !"_ZN6driver3src6driver9fma_array17h45e2bcd03c6a51e2E: %mul2.0"}
!45 = !{!46}
!46 = distinct !{!46, !40, !"_ZN6driver3src6driver9fma_array17h45e2bcd03c6a51e2E: %add.0"}
!47 = !{!39, !44, !46}
!48 = !{!39, !42, !46}
!49 = !{!39, !42, !44}
!50 = !{!42, !44, !46}
!51 = distinct !{!51, !27, !28}
!52 = !{!39, !42, !44, !46}
!53 = distinct !{!53, !28, !27}
