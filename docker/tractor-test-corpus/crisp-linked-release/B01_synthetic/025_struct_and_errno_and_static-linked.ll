; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"core::sync::atomic::AtomicUsize" = type { i64 }
%"core::fmt::Arguments<'_>" = type { { ptr, i64 }, { ptr, i64 }, { ptr, i64 } }
%"core::fmt::rt::v1::Argument" = type { %"core::fmt::rt::v1::FormatSpec", i64 }
%"core::fmt::rt::v1::FormatSpec" = type { { i64, i64 }, { i64, i64 }, i32, i32, i8, [7 x i8] }
%"std::sync::mutex::Mutex<src::driver::HouseT>" = type { %"std::sys::unix::locks::futex_mutex::Mutex", %"std::sync::poison::Flag", [3 x i8], %"core::cell::UnsafeCell<src::driver::HouseT>" }
%"std::sys::unix::locks::futex_mutex::Mutex" = type { %"core::sync::atomic::AtomicU32" }
%"core::sync::atomic::AtomicU32" = type { i32 }
%"std::sync::poison::Flag" = type { %"core::sync::atomic::AtomicBool" }
%"core::sync::atomic::AtomicBool" = type { i8 }
%"core::cell::UnsafeCell<src::driver::HouseT>" = type { %"src::driver::HouseT" }
%"src::driver::HouseT" = type { i32, i32, double }
%"core::fmt::builders::DebugStruct<'_, '_>" = type { ptr, i8, i8, [6 x i8] }

@_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h3a54c5bda48c7da9E = external local_unnamed_addr global %"core::sync::atomic::AtomicUsize"
@alloc_513570631223a12912d85da2bec3b15a = private unnamed_addr constant <{}> zeroinitializer, align 8
@alloc_00ae4b301f7fab8ac9617c03fcbd7274 = private unnamed_addr constant <{ [43 x i8] }> <{ [43 x i8] c"called `Result::unwrap()` on an `Err` value" }>, align 1
@vtable.0 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr122drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..mutex..MutexGuard$LT$driver..src..driver..HouseT$GT$$GT$$GT$17h163e3efdba569df6E", [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN76_$LT$std..sync..poison..PoisonError$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hcd9b7264d41c7796E" }>, align 8
@alloc_8e2410b80645266732854088d21653bc = private unnamed_addr constant <{ [11 x i8] }> <{ [11 x i8] c"PoisonError" }>, align 1
@_ZN6driver3src6driver9THE_HOUSE17hf2811b2f52c9bdf3E = internal global <{ [5 x i8], [3 x i8], [16 x i8] }> <{ [5 x i8] zeroinitializer, [3 x i8] undef, [16 x i8] c"\02\00\00\00\05\00\00\00\00\00\00\00\00\00\04@" }>, align 8
@alloc_00728171eaa7ec2c5a267f4bf25d4ac3 = private unnamed_addr constant <{ [13 x i8] }> <{ [13 x i8] c"src/driver.rs" }>, align 1
@alloc_4f099bed015f57a3c80e46cad05f1585 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_00728171eaa7ec2c5a267f4bf25d4ac3, [16 x i8] c"\0D\00\00\00\00\00\00\00#\00\00\00&\00\00\00" }>, align 8
@alloc_48170db0f258fda9efd118ce476dbf19 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_00728171eaa7ec2c5a267f4bf25d4ac3, [16 x i8] c"\0D\00\00\00\00\00\00\00'\00\00\00\22\00\00\00" }>, align 8
@alloc_6cd42ea5103a3fc63b8edab95bb315a5 = private unnamed_addr constant <{ [14 x i8] }> <{ [14 x i8] c"The house has " }>, align 1
@alloc_383d5a05d82133a478bdabae62c15519 = private unnamed_addr constant <{ [9 x i8] }> <{ [9 x i8] c" floors, " }>, align 1
@alloc_1adcba0f8c111e6973c7476521a376b0 = private unnamed_addr constant <{ [15 x i8] }> <{ [15 x i8] c" bedrooms, and " }>, align 1
@alloc_24b5ae97c4482b83b7d9b78bc9056b48 = private unnamed_addr constant <{ [11 x i8] }> <{ [11 x i8] c" bathrooms\0A" }>, align 1
@alloc_1819828f617093f2e72a86ee9316c0e5 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc_6cd42ea5103a3fc63b8edab95bb315a5, [8 x i8] c"\0E\00\00\00\00\00\00\00", ptr @alloc_383d5a05d82133a478bdabae62c15519, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @alloc_1adcba0f8c111e6973c7476521a376b0, [8 x i8] c"\0F\00\00\00\00\00\00\00", ptr @alloc_24b5ae97c4482b83b7d9b78bc9056b48, [8 x i8] c"\0B\00\00\00\00\00\00\00" }>, align 8
@alloc_2bb3bcd38441dd2633f1be70ace11208 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_00728171eaa7ec2c5a267f4bf25d4ac3, [16 x i8] c"\0D\00\00\00\00\00\00\002\00\00\00*\00\00\00" }>, align 8
@alloc_e3dea6d15e2f251089f00f316c684864 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_00728171eaa7ec2c5a267f4bf25d4ac3, [16 x i8] c"\0D\00\00\00\00\00\00\007\00\00\00*\00\00\00" }>, align 8
@alloc_8196f04dc760f93a54fbcca2dd569a0d = private unnamed_addr constant <{ [18 x i8] }> <{ [18 x i8] c"An error occurred\0A" }>, align 1
@alloc_65fa4baacd446f3f846f1616e704d2d7 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @alloc_8196f04dc760f93a54fbcca2dd569a0d, [8 x i8] c"\12\00\00\00\00\00\00\00" }>, align 8
@alloc_d8b5b68ca8256b886219382d7c005d81 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_00728171eaa7ec2c5a267f4bf25d4ac3, [16 x i8] c"\0D\00\00\00\00\00\00\00r\00\00\00\08\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define void @driver(ptr noundef %in_0) unnamed_addr #0 {
start:
  %_13.i = alloca %"core::fmt::Arguments<'_>", align 8
  %0 = icmp eq ptr %in_0, null
  br i1 %0, label %bb8.i, label %bb3.i

bb3.i:                                            ; preds = %start
  %len = tail call noundef i64 @_ZN4core3ffi5c_str4CStr8from_ptr9strlen_rt17h463292534e232c62E(ptr noundef nonnull %in_0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8)
  %_536.not.i.i.i = icmp eq i64 %len, 0
  br i1 %_536.not.i.i.i, label %bb8.i, label %bb5.i.i.i

bb5.i.i.i:                                        ; preds = %bb43.i.i.i, %bb3.i
  %_538.i.i.i = phi i1 [ %_5.i.i.i, %bb43.i.i.i ], [ true, %bb3.i ]
  %idx.037.i.i.i = phi i64 [ %2, %bb43.i.i.i ], [ 0, %bb3.i ]
  %self1.i.i.i = getelementptr inbounds [0 x i8], ptr %in_0, i64 0, i64 %idx.037.i.i.i
  %1 = load i8, ptr %self1.i.i.i, align 1, !alias.scope !11, !noalias !12, !noundef !15
  switch i8 %1, label %bb8.critedge.i.i.i [
    i8 9, label %bb43.i.i.i
    i8 10, label %bb43.i.i.i
    i8 12, label %bb43.i.i.i
    i8 13, label %bb43.i.i.i
    i8 32, label %bb43.i.i.i
  ]

bb43.i.i.i:                                       ; preds = %bb5.i.i.i, %bb5.i.i.i, %bb5.i.i.i, %bb5.i.i.i, %bb5.i.i.i
  %2 = add nuw i64 %idx.037.i.i.i, 1
  %_5.i.i.i = icmp ult i64 %2, %len
  %exitcond.not.i.i.i = icmp eq i64 %2, %len
  br i1 %exitcond.not.i.i.i, label %bb8.i, label %bb5.i.i.i

bb8.critedge.i.i.i:                               ; preds = %bb5.i.i.i
  %_13.i.i.i = icmp eq i64 %idx.037.i.i.i, %len
  br i1 %_13.i.i.i, label %bb8.i, label %bb10.i.i.i

bb10.i.i.i:                                       ; preds = %bb8.critedge.i.i.i
  br i1 %_538.i.i.i, label %bb11.i.i.i, label %panic2.i.i.i, !prof !16

bb11.i.i.i:                                       ; preds = %bb10.i.i.i
  switch i8 %1, label %bb17.i.i.i [
    i8 43, label %bb12.i.i.i
    i8 45, label %bb15.i.i.i
  ]

panic2.i.i.i:                                     ; preds = %bb10.i.i.i
  tail call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 noundef %idx.037.i.i.i, i64 noundef %len, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_d8b5b68ca8256b886219382d7c005d81) #9, !noalias !17
  unreachable

bb12.i.i.i:                                       ; preds = %bb11.i.i.i
  %3 = add nuw i64 %idx.037.i.i.i, 1
  br label %bb17.i.i.i

bb15.i.i.i:                                       ; preds = %bb11.i.i.i
  %4 = add nuw i64 %idx.037.i.i.i, 1
  br label %bb17.i.i.i

bb17.i.i.i:                                       ; preds = %bb15.i.i.i, %bb12.i.i.i, %bb11.i.i.i
  %sign.0.i.i.i = phi i64 [ 1, %bb12.i.i.i ], [ -1, %bb15.i.i.i ], [ 1, %bb11.i.i.i ]
  %idx.1.i.i.i = phi i64 [ %3, %bb12.i.i.i ], [ %4, %bb15.i.i.i ], [ %idx.037.i.i.i, %bb11.i.i.i ]
  %_2839.i.i.i = icmp ult i64 %idx.1.i.i.i, %len
  br i1 %_2839.i.i.i, label %bb22.i.i.i, label %bb8.i

bb22.i.i.i:                                       ; preds = %bb26.i.i.i, %bb17.i.i.i
  %idx.241.i.i.i = phi i64 [ %10, %bb26.i.i.i ], [ %idx.1.i.i.i, %bb17.i.i.i ]
  %acc.040.i.i.i = phi i64 [ %_11.0.i.i.i.i, %bb26.i.i.i ], [ 0, %bb17.i.i.i ]
  %self5.i.i.i = getelementptr inbounds [0 x i8], ptr %in_0, i64 0, i64 %idx.241.i.i.i
  %5 = load i8, ptr %self5.i.i.i, align 1, !alias.scope !11, !noalias !12, !noundef !15
  %6 = add i8 %5, -48
  %or.cond.i.i.i = icmp ult i8 %6, 10
  br i1 %or.cond.i.i.i, label %bb25.i.i.i, label %bb28.critedge.i.i.i

bb28.critedge.i.i.i.split.loop.exit25:            ; preds = %bb26.i.i.i
  %_11.0.i.i.i.i.le = extractvalue { i64, i1 } %9, 0
  br label %bb28.critedge.i.i.i

bb28.critedge.i.i.i:                              ; preds = %bb28.critedge.i.i.i.split.loop.exit25, %bb22.i.i.i
  %acc.0.lcssa.i.i.i = phi i64 [ %_11.0.i.i.i.i.le, %bb28.critedge.i.i.i.split.loop.exit25 ], [ %acc.040.i.i.i, %bb22.i.i.i ]
  %idx.2.lcssa.i.i.i = phi i64 [ %len, %bb28.critedge.i.i.i.split.loop.exit25 ], [ %idx.241.i.i.i, %bb22.i.i.i ]
  %_49.i.i.i = icmp eq i64 %idx.2.lcssa.i.i.i, %idx.1.i.i.i
  br i1 %_49.i.i.i, label %bb8.i, label %bb30.i.i.i

bb25.i.i.i:                                       ; preds = %bb22.i.i.i
  %7 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %acc.040.i.i.i, i64 10)
  %_70.1.i.i.i = extractvalue { i64, i1 } %7, 1
  br i1 %_70.1.i.i.i, label %bb8.i, label %bb55.i.i.i

bb55.i.i.i:                                       ; preds = %bb25.i.i.i
  %_70.0.i.i.i = extractvalue { i64, i1 } %7, 0
  %8 = zext i8 %6 to i64
  %9 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %_70.0.i.i.i, i64 %8)
  %_11.1.i.i.i.i = extractvalue { i64, i1 } %9, 1
  br i1 %_11.1.i.i.i.i, label %bb8.i, label %bb26.i.i.i

bb26.i.i.i:                                       ; preds = %bb55.i.i.i
  %_11.0.i.i.i.i = extractvalue { i64, i1 } %9, 0
  %10 = add i64 %idx.241.i.i.i, 1
  %exitcond54.not.i.i.i = icmp eq i64 %10, %len
  br i1 %exitcond54.not.i.i.i, label %bb28.critedge.i.i.i.split.loop.exit25, label %bb22.i.i.i

bb30.i.i.i:                                       ; preds = %bb28.critedge.i.i.i
  %11 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %acc.0.lcssa.i.i.i, i64 %sign.0.i.i.i)
  %_80.0.i.i.i = extractvalue { i64, i1 } %11, 0
  %_80.1.i.i.i = extractvalue { i64, i1 } %11, 1
  %12 = add i64 %_80.0.i.i.i, -2147483648
  %_56.0.i.i.i = icmp ult i64 %12, -4294967296
  %or.cond30.not.i.i.i = or i1 %_80.1.i.i.i, %_56.0.i.i.i
  br i1 %or.cond30.not.i.i.i, label %bb8.i, label %bb5.i

bb8.i:                                            ; preds = %bb30.i.i.i, %bb55.i.i.i, %bb25.i.i.i, %bb28.critedge.i.i.i, %bb17.i.i.i, %bb8.critedge.i.i.i, %bb43.i.i.i, %bb3.i, %start
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_13.i), !noalias !2
  %13 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_13.i, i64 0, i32 1
  store ptr @alloc_65fa4baacd446f3f846f1616e704d2d7, ptr %13, align 8, !alias.scope !18, !noalias !2
  %14 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_13.i, i64 0, i32 1, i32 1
  store i64 1, ptr %14, align 8, !alias.scope !18, !noalias !2
  store ptr null, ptr %_13.i, align 8, !alias.scope !18, !noalias !2
  %15 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_13.i, i64 0, i32 2
  store ptr @alloc_513570631223a12912d85da2bec3b15a, ptr %15, align 8, !alias.scope !18, !noalias !2
  %16 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_13.i, i64 0, i32 2, i32 1
  store i64 0, ptr %16, align 8, !alias.scope !18, !noalias !2
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_13.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_13.i), !noalias !2
  br label %_ZN6driver3src6driver16driver_from_cstr17h1498d1a53b108a6fE.exit

bb5.i:                                            ; preds = %bb30.i.i.i
  %17 = trunc i64 %_80.0.i.i.i to i32
  tail call fastcc void @_ZN6driver3src6driver3run17h07a60c493f14838cE(i32 noundef %17)
  tail call fastcc void @_ZN6driver3src6driver3run17h07a60c493f14838cE(i32 noundef %17)
  br label %_ZN6driver3src6driver16driver_from_cstr17h1498d1a53b108a6fE.exit

_ZN6driver3src6driver16driver_from_cstr17h1498d1a53b108a6fE.exit: ; preds = %bb5.i, %bb8.i
  ret void
}

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_ZN4core3ffi5c_str4CStr8from_ptr9strlen_rt17h463292534e232c62E(ptr noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef readonly dereferenceable(48)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN6driver3src6driver3run17h07a60c493f14838cE(i32 noundef %extra_bedrooms) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %e.i33 = alloca { ptr, i8 }, align 8
  %e.i = alloca { ptr, i8 }, align 8
  %e.i.i = alloca { ptr, i8 }, align 8
  tail call fastcc void @_ZN6driver3src6driver15print_the_house17h3d1c8026c74267eaE()
  %0 = cmpxchg ptr @_ZN6driver3src6driver9THE_HOUSE17hf2811b2f52c9bdf3E, i32 0, i32 1 acquire monotonic, align 4, !noalias !21
  %1 = extractvalue { i32, i1 } %0, 1
  br i1 %1, label %_ZN3std3sys4unix5locks11futex_mutex5Mutex4lock17h6c52fd0f4762b066E.exit.i.i, label %bb1.i.i.i

bb1.i.i.i:                                        ; preds = %start
  tail call void @_ZN3std3sys4unix5locks11futex_mutex5Mutex14lock_contended17hebf822500a669985E(ptr noundef nonnull align 4 @_ZN6driver3src6driver9THE_HOUSE17hf2811b2f52c9bdf3E), !noalias !21
  br label %_ZN3std3sys4unix5locks11futex_mutex5Mutex4lock17h6c52fd0f4762b066E.exit.i.i

_ZN3std3sys4unix5locks11futex_mutex5Mutex4lock17h6c52fd0f4762b066E.exit.i.i: ; preds = %bb1.i.i.i, %start
  %2 = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h3a54c5bda48c7da9E monotonic, align 8, !noalias !24
  %_1.i.i.i.i.i = and i64 %2, 9223372036854775807
  %3 = icmp eq i64 %_1.i.i.i.i.i, 0
  br i1 %3, label %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i.thread.i, label %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i.i

_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i.i: ; preds = %_ZN3std3sys4unix5locks11futex_mutex5Mutex4lock17h6c52fd0f4762b066E.exit.i.i
  %4 = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17h3429ce5c53077a80E(), !noalias !24
  %5 = xor i1 %4, true
  %6 = zext i1 %5 to i8
  %7 = load atomic i8, ptr getelementptr inbounds (<{ [5 x i8], [3 x i8], [16 x i8] }>, ptr @_ZN6driver3src6driver9THE_HOUSE17hf2811b2f52c9bdf3E, i64 0, i32 0, i64 4) monotonic, align 4, !noalias !24
  %.not.i.i.i = icmp eq i8 %7, 0
  br i1 %.not.i.i.i, label %bb4.i, label %bb1.i.i

_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i.thread.i: ; preds = %_ZN3std3sys4unix5locks11futex_mutex5Mutex4lock17h6c52fd0f4762b066E.exit.i.i
  %8 = load atomic i8, ptr getelementptr inbounds (<{ [5 x i8], [3 x i8], [16 x i8] }>, ptr @_ZN6driver3src6driver9THE_HOUSE17hf2811b2f52c9bdf3E, i64 0, i32 0, i64 4) monotonic, align 4, !noalias !24
  %.not.i.i13.i = icmp eq i8 %8, 0
  br i1 %.not.i.i13.i, label %bb4.thread.i, label %bb1.i.i

bb4.thread.i:                                     ; preds = %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i.thread.i
  %9 = load i32, ptr getelementptr inbounds (<{ [5 x i8], [3 x i8], [16 x i8] }>, ptr @_ZN6driver3src6driver9THE_HOUSE17hf2811b2f52c9bdf3E, i64 0, i32 2, i64 0), align 8, !alias.scope !27, !noundef !15
  %10 = add i32 %9, 1
  store i32 %10, ptr getelementptr inbounds (<{ [5 x i8], [3 x i8], [16 x i8] }>, ptr @_ZN6driver3src6driver9THE_HOUSE17hf2811b2f52c9bdf3E, i64 0, i32 2, i64 0), align 8, !alias.scope !27
  br label %bb2.i.i.i.i

bb1.i.i:                                          ; preds = %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i.thread.i, %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i.i
  %.0.i.i.i.i14.i = phi i8 [ 0, %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i.thread.i ], [ %6, %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i.i ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %e.i.i), !noalias !30
  store ptr @_ZN6driver3src6driver9THE_HOUSE17hf2811b2f52c9bdf3E, ptr %e.i.i, align 8, !noalias !30
  %11 = getelementptr inbounds { ptr, i8 }, ptr %e.i.i, i64 0, i32 1
  store i8 %.0.i.i.i.i14.i, ptr %11, align 8, !noalias !30
  invoke void @_ZN4core6result13unwrap_failed17h008634a1b68516fbE(ptr noalias noundef nonnull readonly align 1 @alloc_00ae4b301f7fab8ac9617c03fcbd7274, i64 noundef 43, ptr noundef nonnull align 1 %e.i.i, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @vtable.0, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_4f099bed015f57a3c80e46cad05f1585) #9
          to label %unreachable.i.i unwind label %cleanup.i.i, !noalias !34

cleanup.i.i:                                      ; preds = %bb1.i.i
  %12 = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr122drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..mutex..MutexGuard$LT$driver..src..driver..HouseT$GT$$GT$$GT$17h163e3efdba569df6E"(ptr noundef nonnull %e.i.i) #10
          to label %common.resume unwind label %terminate.i.i, !noalias !34

unreachable.i.i:                                  ; preds = %bb1.i.i
  unreachable

terminate.i.i:                                    ; preds = %cleanup.i.i
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4core9panicking19panic_cannot_unwind17h629e1da841ab4abfE() #11, !noalias !34
  unreachable

common.resume:                                    ; preds = %cleanup.i37, %cleanup.i, %cleanup.i.i
  %common.resume.op = phi { ptr, i32 } [ %12, %cleanup.i.i ], [ %33, %cleanup.i ], [ %54, %cleanup.i37 ]
  resume { ptr, i32 } %common.resume.op

bb4.i:                                            ; preds = %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i.i
  %14 = load i32, ptr getelementptr inbounds (<{ [5 x i8], [3 x i8], [16 x i8] }>, ptr @_ZN6driver3src6driver9THE_HOUSE17hf2811b2f52c9bdf3E, i64 0, i32 2, i64 0), align 8, !alias.scope !27, !noundef !15
  %15 = add i32 %14, 1
  store i32 %15, ptr getelementptr inbounds (<{ [5 x i8], [3 x i8], [16 x i8] }>, ptr @_ZN6driver3src6driver9THE_HOUSE17hf2811b2f52c9bdf3E, i64 0, i32 2, i64 0), align 8, !alias.scope !27
  br i1 %4, label %bb2.i.i.i.i, label %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i.i

bb2.i.i.i.i:                                      ; preds = %bb4.i, %bb4.thread.i
  %16 = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h3a54c5bda48c7da9E monotonic, align 8, !noalias !35
  %_1.i.i.i.i5.i = and i64 %16, 9223372036854775807
  %17 = icmp eq i64 %_1.i.i.i.i5.i, 0
  br i1 %17, label %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i.i, label %_ZN3std9panicking11panic_count13count_is_zero17ha5671c4a6c54af4aE.exit.i.i.i.i

_ZN3std9panicking11panic_count13count_is_zero17ha5671c4a6c54af4aE.exit.i.i.i.i: ; preds = %bb2.i.i.i.i
  %18 = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17h3429ce5c53077a80E(), !noalias !35
  br i1 %18, label %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i.i, label %bb4.i.i.i.i

bb4.i.i.i.i:                                      ; preds = %_ZN3std9panicking11panic_count13count_is_zero17ha5671c4a6c54af4aE.exit.i.i.i.i
  store atomic i8 1, ptr getelementptr inbounds (<{ [5 x i8], [3 x i8], [16 x i8] }>, ptr @_ZN6driver3src6driver9THE_HOUSE17hf2811b2f52c9bdf3E, i64 0, i32 0, i64 4) monotonic, align 4, !noalias !35
  br label %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i.i

_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i.i: ; preds = %bb4.i.i.i.i, %_ZN3std9panicking11panic_count13count_is_zero17ha5671c4a6c54af4aE.exit.i.i.i.i, %bb2.i.i.i.i, %bb4.i
  %19 = atomicrmw xchg ptr @_ZN6driver3src6driver9THE_HOUSE17hf2811b2f52c9bdf3E, i32 0 release, align 4, !noalias !35
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %bb3.i.i.i, label %_ZN6driver3src6driver22add_floor_to_the_house17hd1058b732c40b99fE.exit

bb3.i.i.i:                                        ; preds = %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i.i
  tail call void @_ZN3std3sys4unix5locks11futex_mutex5Mutex4wake17heeac318d850ee859E(ptr noundef nonnull align 4 @_ZN6driver3src6driver9THE_HOUSE17hf2811b2f52c9bdf3E), !noalias !35
  br label %_ZN6driver3src6driver22add_floor_to_the_house17hd1058b732c40b99fE.exit

_ZN6driver3src6driver22add_floor_to_the_house17hd1058b732c40b99fE.exit: ; preds = %bb3.i.i.i, %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i.i
  tail call fastcc void @_ZN6driver3src6driver15print_the_house17h3d1c8026c74267eaE()
  %21 = cmpxchg ptr @_ZN6driver3src6driver9THE_HOUSE17hf2811b2f52c9bdf3E, i32 0, i32 1 acquire monotonic, align 4, !noalias !38
  %22 = extractvalue { i32, i1 } %21, 1
  br i1 %22, label %_ZN3std3sys4unix5locks11futex_mutex5Mutex4lock17h6c52fd0f4762b066E.exit.i, label %bb1.i.i16

bb1.i.i16:                                        ; preds = %_ZN6driver3src6driver22add_floor_to_the_house17hd1058b732c40b99fE.exit
  tail call void @_ZN3std3sys4unix5locks11futex_mutex5Mutex14lock_contended17hebf822500a669985E(ptr noundef nonnull align 4 @_ZN6driver3src6driver9THE_HOUSE17hf2811b2f52c9bdf3E), !noalias !38
  br label %_ZN3std3sys4unix5locks11futex_mutex5Mutex4lock17h6c52fd0f4762b066E.exit.i

_ZN3std3sys4unix5locks11futex_mutex5Mutex4lock17h6c52fd0f4762b066E.exit.i: ; preds = %bb1.i.i16, %_ZN6driver3src6driver22add_floor_to_the_house17hd1058b732c40b99fE.exit
  %23 = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h3a54c5bda48c7da9E monotonic, align 8, !noalias !41
  %_1.i.i.i.i = and i64 %23, 9223372036854775807
  %24 = icmp eq i64 %_1.i.i.i.i, 0
  br i1 %24, label %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i.thread, label %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i

_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i: ; preds = %_ZN3std3sys4unix5locks11futex_mutex5Mutex4lock17h6c52fd0f4762b066E.exit.i
  %25 = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17h3429ce5c53077a80E(), !noalias !41
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i8
  %28 = load atomic i8, ptr getelementptr inbounds (<{ [5 x i8], [3 x i8], [16 x i8] }>, ptr @_ZN6driver3src6driver9THE_HOUSE17hf2811b2f52c9bdf3E, i64 0, i32 0, i64 4) monotonic, align 4, !noalias !41
  %.not.i.i = icmp eq i8 %28, 0
  br i1 %.not.i.i, label %bb6, label %bb1.i

_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i.thread: ; preds = %_ZN3std3sys4unix5locks11futex_mutex5Mutex4lock17h6c52fd0f4762b066E.exit.i
  %29 = load atomic i8, ptr getelementptr inbounds (<{ [5 x i8], [3 x i8], [16 x i8] }>, ptr @_ZN6driver3src6driver9THE_HOUSE17hf2811b2f52c9bdf3E, i64 0, i32 0, i64 4) monotonic, align 4, !noalias !41
  %.not.i.i65 = icmp eq i8 %29, 0
  br i1 %.not.i.i65, label %bb6.thread, label %bb1.i

bb6.thread:                                       ; preds = %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i.thread
  %30 = load double, ptr getelementptr inbounds (<{ [5 x i8], [3 x i8], [16 x i8] }>, ptr @_ZN6driver3src6driver9THE_HOUSE17hf2811b2f52c9bdf3E, i64 0, i32 2, i64 8), align 8, !noundef !15
  %31 = fadd double %30, 1.000000e+00
  store double %31, ptr getelementptr inbounds (<{ [5 x i8], [3 x i8], [16 x i8] }>, ptr @_ZN6driver3src6driver9THE_HOUSE17hf2811b2f52c9bdf3E, i64 0, i32 2, i64 8), align 8
  br label %bb2.i.i.i

bb1.i:                                            ; preds = %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i.thread, %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i
  %.0.i.i.i.i66 = phi i8 [ 0, %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i.thread ], [ %27, %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %e.i), !noalias !44
  store ptr @_ZN6driver3src6driver9THE_HOUSE17hf2811b2f52c9bdf3E, ptr %e.i, align 8, !noalias !44
  %32 = getelementptr inbounds { ptr, i8 }, ptr %e.i, i64 0, i32 1
  store i8 %.0.i.i.i.i66, ptr %32, align 8, !noalias !44
  invoke void @_ZN4core6result13unwrap_failed17h008634a1b68516fbE(ptr noalias noundef nonnull readonly align 1 @alloc_00ae4b301f7fab8ac9617c03fcbd7274, i64 noundef 43, ptr noundef nonnull align 1 %e.i, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @vtable.0, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_2bb3bcd38441dd2633f1be70ace11208) #9
          to label %unreachable.i unwind label %cleanup.i, !noalias !48

cleanup.i:                                        ; preds = %bb1.i
  %33 = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr122drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..mutex..MutexGuard$LT$driver..src..driver..HouseT$GT$$GT$$GT$17h163e3efdba569df6E"(ptr noundef nonnull %e.i) #10
          to label %common.resume unwind label %terminate.i, !noalias !48

unreachable.i:                                    ; preds = %bb1.i
  unreachable

terminate.i:                                      ; preds = %cleanup.i
  %34 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4core9panicking19panic_cannot_unwind17h629e1da841ab4abfE() #11, !noalias !48
  unreachable

bb6:                                              ; preds = %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i
  %35 = load double, ptr getelementptr inbounds (<{ [5 x i8], [3 x i8], [16 x i8] }>, ptr @_ZN6driver3src6driver9THE_HOUSE17hf2811b2f52c9bdf3E, i64 0, i32 2, i64 8), align 8, !noundef !15
  %36 = fadd double %35, 1.000000e+00
  store double %36, ptr getelementptr inbounds (<{ [5 x i8], [3 x i8], [16 x i8] }>, ptr @_ZN6driver3src6driver9THE_HOUSE17hf2811b2f52c9bdf3E, i64 0, i32 2, i64 8), align 8
  br i1 %25, label %bb2.i.i.i, label %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i

bb2.i.i.i:                                        ; preds = %bb6, %bb6.thread
  %37 = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h3a54c5bda48c7da9E monotonic, align 8, !noalias !49
  %_1.i.i.i.i20 = and i64 %37, 9223372036854775807
  %38 = icmp eq i64 %_1.i.i.i.i20, 0
  br i1 %38, label %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i, label %_ZN3std9panicking11panic_count13count_is_zero17ha5671c4a6c54af4aE.exit.i.i.i

_ZN3std9panicking11panic_count13count_is_zero17ha5671c4a6c54af4aE.exit.i.i.i: ; preds = %bb2.i.i.i
  %39 = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17h3429ce5c53077a80E(), !noalias !49
  br i1 %39, label %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i, label %bb4.i.i.i

bb4.i.i.i:                                        ; preds = %_ZN3std9panicking11panic_count13count_is_zero17ha5671c4a6c54af4aE.exit.i.i.i
  store atomic i8 1, ptr getelementptr inbounds (<{ [5 x i8], [3 x i8], [16 x i8] }>, ptr @_ZN6driver3src6driver9THE_HOUSE17hf2811b2f52c9bdf3E, i64 0, i32 0, i64 4) monotonic, align 4, !noalias !49
  br label %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i

_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i: ; preds = %bb4.i.i.i, %_ZN3std9panicking11panic_count13count_is_zero17ha5671c4a6c54af4aE.exit.i.i.i, %bb2.i.i.i, %bb6
  %40 = atomicrmw xchg ptr @_ZN6driver3src6driver9THE_HOUSE17hf2811b2f52c9bdf3E, i32 0 release, align 4, !noalias !49
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %bb3.i.i, label %"_ZN4core3ptr84drop_in_place$LT$std..sync..mutex..MutexGuard$LT$driver..src..driver..HouseT$GT$$GT$17h4af61b2e0de4b3f5E.exit"

bb3.i.i:                                          ; preds = %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i
  tail call void @_ZN3std3sys4unix5locks11futex_mutex5Mutex4wake17heeac318d850ee859E(ptr noundef nonnull align 4 @_ZN6driver3src6driver9THE_HOUSE17hf2811b2f52c9bdf3E), !noalias !49
  br label %"_ZN4core3ptr84drop_in_place$LT$std..sync..mutex..MutexGuard$LT$driver..src..driver..HouseT$GT$$GT$17h4af61b2e0de4b3f5E.exit"

"_ZN4core3ptr84drop_in_place$LT$std..sync..mutex..MutexGuard$LT$driver..src..driver..HouseT$GT$$GT$17h4af61b2e0de4b3f5E.exit": ; preds = %bb3.i.i, %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i
  tail call fastcc void @_ZN6driver3src6driver15print_the_house17h3d1c8026c74267eaE()
  %42 = cmpxchg ptr @_ZN6driver3src6driver9THE_HOUSE17hf2811b2f52c9bdf3E, i32 0, i32 1 acquire monotonic, align 4, !noalias !52
  %43 = extractvalue { i32, i1 } %42, 1
  br i1 %43, label %_ZN3std3sys4unix5locks11futex_mutex5Mutex4lock17h6c52fd0f4762b066E.exit.i23, label %bb1.i.i21

bb1.i.i21:                                        ; preds = %"_ZN4core3ptr84drop_in_place$LT$std..sync..mutex..MutexGuard$LT$driver..src..driver..HouseT$GT$$GT$17h4af61b2e0de4b3f5E.exit"
  tail call void @_ZN3std3sys4unix5locks11futex_mutex5Mutex14lock_contended17hebf822500a669985E(ptr noundef nonnull align 4 @_ZN6driver3src6driver9THE_HOUSE17hf2811b2f52c9bdf3E), !noalias !52
  br label %_ZN3std3sys4unix5locks11futex_mutex5Mutex4lock17h6c52fd0f4762b066E.exit.i23

_ZN3std3sys4unix5locks11futex_mutex5Mutex4lock17h6c52fd0f4762b066E.exit.i23: ; preds = %bb1.i.i21, %"_ZN4core3ptr84drop_in_place$LT$std..sync..mutex..MutexGuard$LT$driver..src..driver..HouseT$GT$$GT$17h4af61b2e0de4b3f5E.exit"
  %44 = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h3a54c5bda48c7da9E monotonic, align 8, !noalias !55
  %_1.i.i.i.i22 = and i64 %44, 9223372036854775807
  %45 = icmp eq i64 %_1.i.i.i.i22, 0
  br i1 %45, label %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i27.thread, label %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i27

_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i27: ; preds = %_ZN3std3sys4unix5locks11futex_mutex5Mutex4lock17h6c52fd0f4762b066E.exit.i23
  %46 = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17h3429ce5c53077a80E(), !noalias !55
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i8
  %49 = load atomic i8, ptr getelementptr inbounds (<{ [5 x i8], [3 x i8], [16 x i8] }>, ptr @_ZN6driver3src6driver9THE_HOUSE17hf2811b2f52c9bdf3E, i64 0, i32 0, i64 4) monotonic, align 4, !noalias !55
  %.not.i.i26 = icmp eq i8 %49, 0
  br i1 %.not.i.i26, label %bb12, label %bb1.i36

_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i27.thread: ; preds = %_ZN3std3sys4unix5locks11futex_mutex5Mutex4lock17h6c52fd0f4762b066E.exit.i23
  %50 = load atomic i8, ptr getelementptr inbounds (<{ [5 x i8], [3 x i8], [16 x i8] }>, ptr @_ZN6driver3src6driver9THE_HOUSE17hf2811b2f52c9bdf3E, i64 0, i32 0, i64 4) monotonic, align 4, !noalias !55
  %.not.i.i2671 = icmp eq i8 %50, 0
  br i1 %.not.i.i2671, label %bb12.thread, label %bb1.i36

bb12.thread:                                      ; preds = %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i27.thread
  %51 = load i32, ptr getelementptr inbounds (<{ [5 x i8], [3 x i8], [16 x i8] }>, ptr @_ZN6driver3src6driver9THE_HOUSE17hf2811b2f52c9bdf3E, i64 0, i32 2, i64 4), align 4, !alias.scope !58, !noundef !15
  %52 = add i32 %51, %extra_bedrooms
  store i32 %52, ptr getelementptr inbounds (<{ [5 x i8], [3 x i8], [16 x i8] }>, ptr @_ZN6driver3src6driver9THE_HOUSE17hf2811b2f52c9bdf3E, i64 0, i32 2, i64 4), align 4, !alias.scope !58
  br label %bb2.i.i.i46

bb1.i36:                                          ; preds = %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i27.thread, %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i27
  %.0.i.i.i.i2572 = phi i8 [ 0, %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i27.thread ], [ %48, %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i27 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %e.i33), !noalias !61
  store ptr @_ZN6driver3src6driver9THE_HOUSE17hf2811b2f52c9bdf3E, ptr %e.i33, align 8, !noalias !61
  %53 = getelementptr inbounds { ptr, i8 }, ptr %e.i33, i64 0, i32 1
  store i8 %.0.i.i.i.i2572, ptr %53, align 8, !noalias !61
  invoke void @_ZN4core6result13unwrap_failed17h008634a1b68516fbE(ptr noalias noundef nonnull readonly align 1 @alloc_00ae4b301f7fab8ac9617c03fcbd7274, i64 noundef 43, ptr noundef nonnull align 1 %e.i33, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @vtable.0, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_e3dea6d15e2f251089f00f316c684864) #9
          to label %unreachable.i38 unwind label %cleanup.i37, !noalias !65

cleanup.i37:                                      ; preds = %bb1.i36
  %54 = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr122drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..mutex..MutexGuard$LT$driver..src..driver..HouseT$GT$$GT$$GT$17h163e3efdba569df6E"(ptr noundef nonnull %e.i33) #10
          to label %common.resume unwind label %terminate.i39, !noalias !65

unreachable.i38:                                  ; preds = %bb1.i36
  unreachable

terminate.i39:                                    ; preds = %cleanup.i37
  %55 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4core9panicking19panic_cannot_unwind17h629e1da841ab4abfE() #11, !noalias !65
  unreachable

bb12:                                             ; preds = %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i27
  %56 = load i32, ptr getelementptr inbounds (<{ [5 x i8], [3 x i8], [16 x i8] }>, ptr @_ZN6driver3src6driver9THE_HOUSE17hf2811b2f52c9bdf3E, i64 0, i32 2, i64 4), align 4, !alias.scope !58, !noundef !15
  %57 = add i32 %56, %extra_bedrooms
  store i32 %57, ptr getelementptr inbounds (<{ [5 x i8], [3 x i8], [16 x i8] }>, ptr @_ZN6driver3src6driver9THE_HOUSE17hf2811b2f52c9bdf3E, i64 0, i32 2, i64 4), align 4, !alias.scope !58
  br i1 %46, label %bb2.i.i.i46, label %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i49

bb2.i.i.i46:                                      ; preds = %bb12, %bb12.thread
  %58 = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h3a54c5bda48c7da9E monotonic, align 8, !noalias !66
  %_1.i.i.i.i45 = and i64 %58, 9223372036854775807
  %59 = icmp eq i64 %_1.i.i.i.i45, 0
  br i1 %59, label %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i49, label %_ZN3std9panicking11panic_count13count_is_zero17ha5671c4a6c54af4aE.exit.i.i.i47

_ZN3std9panicking11panic_count13count_is_zero17ha5671c4a6c54af4aE.exit.i.i.i47: ; preds = %bb2.i.i.i46
  %60 = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17h3429ce5c53077a80E(), !noalias !66
  br i1 %60, label %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i49, label %bb4.i.i.i48

bb4.i.i.i48:                                      ; preds = %_ZN3std9panicking11panic_count13count_is_zero17ha5671c4a6c54af4aE.exit.i.i.i47
  store atomic i8 1, ptr getelementptr inbounds (<{ [5 x i8], [3 x i8], [16 x i8] }>, ptr @_ZN6driver3src6driver9THE_HOUSE17hf2811b2f52c9bdf3E, i64 0, i32 0, i64 4) monotonic, align 4, !noalias !66
  br label %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i49

_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i49: ; preds = %bb4.i.i.i48, %_ZN3std9panicking11panic_count13count_is_zero17ha5671c4a6c54af4aE.exit.i.i.i47, %bb2.i.i.i46, %bb12
  %61 = atomicrmw xchg ptr @_ZN6driver3src6driver9THE_HOUSE17hf2811b2f52c9bdf3E, i32 0 release, align 4, !noalias !66
  %62 = icmp eq i32 %61, 2
  br i1 %62, label %bb3.i.i50, label %"_ZN4core3ptr84drop_in_place$LT$std..sync..mutex..MutexGuard$LT$driver..src..driver..HouseT$GT$$GT$17h4af61b2e0de4b3f5E.exit51"

bb3.i.i50:                                        ; preds = %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i49
  tail call void @_ZN3std3sys4unix5locks11futex_mutex5Mutex4wake17heeac318d850ee859E(ptr noundef nonnull align 4 @_ZN6driver3src6driver9THE_HOUSE17hf2811b2f52c9bdf3E), !noalias !66
  br label %"_ZN4core3ptr84drop_in_place$LT$std..sync..mutex..MutexGuard$LT$driver..src..driver..HouseT$GT$$GT$17h4af61b2e0de4b3f5E.exit51"

"_ZN4core3ptr84drop_in_place$LT$std..sync..mutex..MutexGuard$LT$driver..src..driver..HouseT$GT$$GT$17h4af61b2e0de4b3f5E.exit51": ; preds = %bb3.i.i50, %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i49
  tail call fastcc void @_ZN6driver3src6driver15print_the_house17h3d1c8026c74267eaE()
  ret void
}

; Function Attrs: nonlazybind uwtable
declare noundef i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN6driver3src6driver15print_the_house17h3d1c8026c74267eaE() unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %e.i = alloca { ptr, i8 }, align 8
  %_24 = alloca [3 x %"core::fmt::rt::v1::Argument"], align 8
  %_9 = alloca [3 x { ptr, ptr }], align 8
  %_5 = alloca %"core::fmt::Arguments<'_>", align 8
  %0 = cmpxchg ptr @_ZN6driver3src6driver9THE_HOUSE17hf2811b2f52c9bdf3E, i32 0, i32 1 acquire monotonic, align 4, !noalias !69
  %1 = extractvalue { i32, i1 } %0, 1
  br i1 %1, label %_ZN3std3sys4unix5locks11futex_mutex5Mutex4lock17h6c52fd0f4762b066E.exit.i, label %bb1.i.i

bb1.i.i:                                          ; preds = %start
  tail call void @_ZN3std3sys4unix5locks11futex_mutex5Mutex14lock_contended17hebf822500a669985E(ptr noundef nonnull align 4 @_ZN6driver3src6driver9THE_HOUSE17hf2811b2f52c9bdf3E), !noalias !69
  br label %_ZN3std3sys4unix5locks11futex_mutex5Mutex4lock17h6c52fd0f4762b066E.exit.i

_ZN3std3sys4unix5locks11futex_mutex5Mutex4lock17h6c52fd0f4762b066E.exit.i: ; preds = %bb1.i.i, %start
  %2 = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h3a54c5bda48c7da9E monotonic, align 8, !noalias !72
  %_1.i.i.i.i = and i64 %2, 9223372036854775807
  %3 = icmp eq i64 %_1.i.i.i.i, 0
  br i1 %3, label %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i, label %bb2.i.i.i.i

bb2.i.i.i.i:                                      ; preds = %_ZN3std3sys4unix5locks11futex_mutex5Mutex4lock17h6c52fd0f4762b066E.exit.i
  %4 = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17h3429ce5c53077a80E(), !noalias !72
  %5 = xor i1 %4, true
  %6 = zext i1 %5 to i8
  br label %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i

_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i: ; preds = %bb2.i.i.i.i, %_ZN3std3sys4unix5locks11futex_mutex5Mutex4lock17h6c52fd0f4762b066E.exit.i
  %.0.i.i.i.i = phi i8 [ %6, %bb2.i.i.i.i ], [ 0, %_ZN3std3sys4unix5locks11futex_mutex5Mutex4lock17h6c52fd0f4762b066E.exit.i ]
  %7 = load atomic i8, ptr getelementptr inbounds (<{ [5 x i8], [3 x i8], [16 x i8] }>, ptr @_ZN6driver3src6driver9THE_HOUSE17hf2811b2f52c9bdf3E, i64 0, i32 0, i64 4) monotonic, align 4, !noalias !72
  %.not.i.i = icmp eq i8 %7, 0
  br i1 %.not.i.i, label %bb6, label %bb1.i

bb1.i:                                            ; preds = %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %e.i), !noalias !75
  store ptr @_ZN6driver3src6driver9THE_HOUSE17hf2811b2f52c9bdf3E, ptr %e.i, align 8, !noalias !75
  %8 = getelementptr inbounds { ptr, i8 }, ptr %e.i, i64 0, i32 1
  store i8 %.0.i.i.i.i, ptr %8, align 8, !noalias !75
  invoke void @_ZN4core6result13unwrap_failed17h008634a1b68516fbE(ptr noalias noundef nonnull readonly align 1 @alloc_00ae4b301f7fab8ac9617c03fcbd7274, i64 noundef 43, ptr noundef nonnull align 1 %e.i, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @vtable.0, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_48170db0f258fda9efd118ce476dbf19) #9
          to label %unreachable.i unwind label %cleanup.i, !noalias !79

cleanup.i:                                        ; preds = %bb1.i
  %9 = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr122drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..mutex..MutexGuard$LT$driver..src..driver..HouseT$GT$$GT$$GT$17h163e3efdba569df6E"(ptr noundef nonnull %e.i) #10
          to label %common.resume unwind label %terminate.i, !noalias !79

unreachable.i:                                    ; preds = %bb1.i
  unreachable

terminate.i:                                      ; preds = %cleanup.i
  %10 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4core9panicking19panic_cannot_unwind17h629e1da841ab4abfE() #11, !noalias !79
  unreachable

common.resume:                                    ; preds = %cleanup, %cleanup.i
  %common.resume.op = phi { ptr, i32 } [ %9, %cleanup.i ], [ %11, %cleanup ]
  resume { ptr, i32 } %common.resume.op

cleanup:                                          ; preds = %bb6
  %11 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr84drop_in_place$LT$std..sync..mutex..MutexGuard$LT$driver..src..driver..HouseT$GT$$GT$17h4af61b2e0de4b3f5E"(ptr nonnull @_ZN6driver3src6driver9THE_HOUSE17hf2811b2f52c9bdf3E, i8 %.0.i.i.i.i) #10
          to label %common.resume unwind label %terminate

bb6:                                              ; preds = %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_5)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_9)
  store ptr getelementptr inbounds (<{ [5 x i8], [3 x i8], [16 x i8] }>, ptr @_ZN6driver3src6driver9THE_HOUSE17hf2811b2f52c9bdf3E, i64 0, i32 2, i64 0), ptr %_9, align 8
  %12 = getelementptr inbounds { ptr, ptr }, ptr %_9, i64 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %12, align 8
  %13 = getelementptr inbounds [3 x { ptr, ptr }], ptr %_9, i64 0, i64 1
  store ptr getelementptr inbounds (<{ [5 x i8], [3 x i8], [16 x i8] }>, ptr @_ZN6driver3src6driver9THE_HOUSE17hf2811b2f52c9bdf3E, i64 0, i32 2, i64 4), ptr %13, align 8
  %14 = getelementptr inbounds [3 x { ptr, ptr }], ptr %_9, i64 0, i64 1, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %14, align 8
  %15 = getelementptr inbounds [3 x { ptr, ptr }], ptr %_9, i64 0, i64 2
  store ptr getelementptr inbounds (<{ [5 x i8], [3 x i8], [16 x i8] }>, ptr @_ZN6driver3src6driver9THE_HOUSE17hf2811b2f52c9bdf3E, i64 0, i32 2, i64 8), ptr %15, align 8
  %16 = getelementptr inbounds [3 x { ptr, ptr }], ptr %_9, i64 0, i64 2, i32 1
  store ptr @"_ZN4core3fmt5float52_$LT$impl$u20$core..fmt..Display$u20$for$u20$f64$GT$3fmt17hf64b1960e3b02756E", ptr %16, align 8
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %_24)
  store i64 2, ptr %_24, align 8
  %_25.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %_24, i64 16
  store i64 2, ptr %_25.sroa.0.sroa.5.0..sroa_idx, align 8
  %_25.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %_24, i64 32
  store i32 0, ptr %_25.sroa.0.sroa.7.0..sroa_idx, align 8
  %_25.sroa.0.sroa.8.0..sroa_idx = getelementptr inbounds i8, ptr %_24, i64 36
  store i32 32, ptr %_25.sroa.0.sroa.8.0..sroa_idx, align 4
  %_25.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %_24, i64 40
  store i8 3, ptr %_25.sroa.0.sroa.9.0..sroa_idx, align 8
  %_25.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %_24, i64 48
  store i64 0, ptr %_25.sroa.4.0..sroa_idx, align 8
  %17 = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_24, i64 0, i64 1
  store i64 2, ptr %17, align 8
  %_29.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_24, i64 0, i64 1, i32 0, i32 1
  store i64 2, ptr %_29.sroa.0.sroa.5.0..sroa_idx, align 8
  %_29.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_24, i64 0, i64 1, i32 0, i32 2
  store i32 0, ptr %_29.sroa.0.sroa.7.0..sroa_idx, align 8
  %_29.sroa.0.sroa.8.0..sroa_idx = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_24, i64 0, i64 1, i32 0, i32 3
  store i32 32, ptr %_29.sroa.0.sroa.8.0..sroa_idx, align 4
  %_29.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_24, i64 0, i64 1, i32 0, i32 4
  store i8 3, ptr %_29.sroa.0.sroa.9.0..sroa_idx, align 8
  %_29.sroa.4.0..sroa_idx = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_24, i64 0, i64 1, i32 1
  store i64 1, ptr %_29.sroa.4.0..sroa_idx, align 8
  %18 = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_24, i64 0, i64 2
  store i64 0, ptr %18, align 8
  %_33.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_24, i64 0, i64 2, i32 0, i32 0, i32 1
  store i64 1, ptr %_33.sroa.0.sroa.4.0..sroa_idx, align 8
  %_33.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_24, i64 0, i64 2, i32 0, i32 1
  store i64 2, ptr %_33.sroa.0.sroa.5.0..sroa_idx, align 8
  %_33.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_24, i64 0, i64 2, i32 0, i32 2
  store i32 0, ptr %_33.sroa.0.sroa.7.0..sroa_idx, align 8
  %_33.sroa.0.sroa.8.0..sroa_idx = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_24, i64 0, i64 2, i32 0, i32 3
  store i32 32, ptr %_33.sroa.0.sroa.8.0..sroa_idx, align 4
  %_33.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_24, i64 0, i64 2, i32 0, i32 4
  store i8 3, ptr %_33.sroa.0.sroa.9.0..sroa_idx, align 8
  %_33.sroa.4.0..sroa_idx = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_24, i64 0, i64 2, i32 1
  store i64 2, ptr %_33.sroa.4.0..sroa_idx, align 8
  %19 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5, i64 0, i32 1
  store ptr @alloc_1819828f617093f2e72a86ee9316c0e5, ptr %19, align 8
  %20 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5, i64 0, i32 1, i32 1
  store i64 4, ptr %20, align 8
  store ptr %_24, ptr %_5, align 8
  %21 = getelementptr inbounds { ptr, i64 }, ptr %_5, i64 0, i32 1
  store i64 3, ptr %21, align 8
  %22 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5, i64 0, i32 2
  store ptr %_9, ptr %22, align 8
  %23 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_5, i64 0, i32 2, i32 1
  store i64 3, ptr %23, align 8
  invoke void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_5)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_5)
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %_24)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_9)
  %_5.not.i.i.i = icmp eq i8 %.0.i.i.i.i, 0
  br i1 %_5.not.i.i.i, label %bb2.i.i.i, label %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i

bb2.i.i.i:                                        ; preds = %bb7
  %24 = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h3a54c5bda48c7da9E monotonic, align 8, !noalias !80
  %_1.i.i.i.i13 = and i64 %24, 9223372036854775807
  %25 = icmp eq i64 %_1.i.i.i.i13, 0
  br i1 %25, label %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i, label %_ZN3std9panicking11panic_count13count_is_zero17ha5671c4a6c54af4aE.exit.i.i.i

_ZN3std9panicking11panic_count13count_is_zero17ha5671c4a6c54af4aE.exit.i.i.i: ; preds = %bb2.i.i.i
  %26 = call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17h3429ce5c53077a80E(), !noalias !80
  br i1 %26, label %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i, label %bb4.i.i.i

bb4.i.i.i:                                        ; preds = %_ZN3std9panicking11panic_count13count_is_zero17ha5671c4a6c54af4aE.exit.i.i.i
  store atomic i8 1, ptr getelementptr inbounds (<{ [5 x i8], [3 x i8], [16 x i8] }>, ptr @_ZN6driver3src6driver9THE_HOUSE17hf2811b2f52c9bdf3E, i64 0, i32 0, i64 4) monotonic, align 4, !noalias !80
  br label %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i

_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i: ; preds = %bb4.i.i.i, %_ZN3std9panicking11panic_count13count_is_zero17ha5671c4a6c54af4aE.exit.i.i.i, %bb2.i.i.i, %bb7
  %27 = atomicrmw xchg ptr @_ZN6driver3src6driver9THE_HOUSE17hf2811b2f52c9bdf3E, i32 0 release, align 4, !noalias !80
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %bb3.i.i, label %"_ZN4core3ptr84drop_in_place$LT$std..sync..mutex..MutexGuard$LT$driver..src..driver..HouseT$GT$$GT$17h4af61b2e0de4b3f5E.exit"

bb3.i.i:                                          ; preds = %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i
  call void @_ZN3std3sys4unix5locks11futex_mutex5Mutex4wake17heeac318d850ee859E(ptr noundef nonnull align 4 @_ZN6driver3src6driver9THE_HOUSE17hf2811b2f52c9bdf3E), !noalias !80
  br label %"_ZN4core3ptr84drop_in_place$LT$std..sync..mutex..MutexGuard$LT$driver..src..driver..HouseT$GT$$GT$17h4af61b2e0de4b3f5E.exit"

"_ZN4core3ptr84drop_in_place$LT$std..sync..mutex..MutexGuard$LT$driver..src..driver..HouseT$GT$$GT$17h4af61b2e0de4b3f5E.exit": ; preds = %bb3.i.i, %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i
  ret void

terminate:                                        ; preds = %cleanup
  %29 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4core9panicking19panic_cannot_unwind17h629e1da841ab4abfE() #11
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
declare void @_ZN3std3sys4unix5locks11futex_mutex5Mutex14lock_contended17hebf822500a669985E(ptr noundef nonnull align 4) unnamed_addr #5

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17h3429ce5c53077a80E() unnamed_addr #6

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6result13unwrap_failed17h008634a1b68516fbE(ptr noalias noundef nonnull readonly align 1, i64 noundef, ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 dereferenceable(24), ptr noalias noundef readonly align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr122drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..mutex..MutexGuard$LT$driver..src..driver..HouseT$GT$$GT$$GT$17h163e3efdba569df6E"(ptr nocapture noundef readonly %_1) unnamed_addr #0 {
start:
  %_1.val = load ptr, ptr %_1, align 8, !alias.scope !83, !nonnull !15, !align !86, !noundef !15
  %0 = getelementptr i8, ptr %_1, i64 8
  %_1.val1 = load i8, ptr %0, align 8, !range !87, !alias.scope !83, !noundef !15
  %_3.i.i = getelementptr inbounds %"std::sync::mutex::Mutex<src::driver::HouseT>", ptr %_1.val, i64 0, i32 1
  %_5.not.i.i.i = icmp eq i8 %_1.val1, 0
  br i1 %_5.not.i.i.i, label %bb2.i.i.i, label %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i

bb2.i.i.i:                                        ; preds = %start
  %1 = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h3a54c5bda48c7da9E monotonic, align 8, !noalias !88
  %_1.i.i.i.i = and i64 %1, 9223372036854775807
  %2 = icmp eq i64 %_1.i.i.i.i, 0
  br i1 %2, label %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i, label %_ZN3std9panicking11panic_count13count_is_zero17ha5671c4a6c54af4aE.exit.i.i.i

_ZN3std9panicking11panic_count13count_is_zero17ha5671c4a6c54af4aE.exit.i.i.i: ; preds = %bb2.i.i.i
  %3 = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17h3429ce5c53077a80E(), !noalias !88
  br i1 %3, label %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i, label %bb4.i.i.i

bb4.i.i.i:                                        ; preds = %_ZN3std9panicking11panic_count13count_is_zero17ha5671c4a6c54af4aE.exit.i.i.i
  store atomic i8 1, ptr %_3.i.i monotonic, align 4, !noalias !88
  br label %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i

_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i: ; preds = %bb4.i.i.i, %_ZN3std9panicking11panic_count13count_is_zero17ha5671c4a6c54af4aE.exit.i.i.i, %bb2.i.i.i, %start
  %4 = atomicrmw xchg ptr %_1.val, i32 0 release, align 4, !noalias !88
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %bb3.i.i, label %"_ZN4core3ptr84drop_in_place$LT$std..sync..mutex..MutexGuard$LT$driver..src..driver..HouseT$GT$$GT$17h4af61b2e0de4b3f5E.exit"

bb3.i.i:                                          ; preds = %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i
  tail call void @_ZN3std3sys4unix5locks11futex_mutex5Mutex4wake17heeac318d850ee859E(ptr noundef nonnull align 4 %_1.val), !noalias !88
  br label %"_ZN4core3ptr84drop_in_place$LT$std..sync..mutex..MutexGuard$LT$driver..src..driver..HouseT$GT$$GT$17h4af61b2e0de4b3f5E.exit"

"_ZN4core3ptr84drop_in_place$LT$std..sync..mutex..MutexGuard$LT$driver..src..driver..HouseT$GT$$GT$17h4af61b2e0de4b3f5E.exit": ; preds = %bb3.i.i, %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i
  ret void
}

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_ZN4core9panicking19panic_cannot_unwind17h629e1da841ab4abfE() unnamed_addr #7

; Function Attrs: cold nonlazybind uwtable
declare void @_ZN3std3sys4unix5locks11futex_mutex5Mutex4wake17heeac318d850ee859E(ptr noundef nonnull align 4) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN76_$LT$std..sync..poison..PoisonError$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hcd9b7264d41c7796E"(ptr noalias nocapture readonly align 8 %self, ptr noalias noundef align 8 dereferenceable(64) %f) unnamed_addr #0 {
start:
  %_4 = alloca %"core::fmt::builders::DebugStruct<'_, '_>", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_4)
  call void @_ZN4core3fmt9Formatter12debug_struct17h25d18a4919a4601dE(ptr noalias nocapture noundef nonnull sret(%"core::fmt::builders::DebugStruct<'_, '_>") dereferenceable(16) %_4, ptr noalias noundef nonnull align 8 dereferenceable(64) %f, ptr noalias noundef nonnull readonly align 1 @alloc_8e2410b80645266732854088d21653bc, i64 noundef 11)
  %0 = call noundef zeroext i1 @_ZN4core3fmt8builders11DebugStruct21finish_non_exhaustive17hbbf976ff9776bd36E(ptr noalias noundef nonnull align 8 dereferenceable(16) %_4)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_4)
  ret i1 %0
}

; Function Attrs: nonlazybind uwtable
declare void @_ZN4core3fmt9Formatter12debug_struct17h25d18a4919a4601dE(ptr noalias nocapture noundef sret(%"core::fmt::builders::DebugStruct<'_, '_>") dereferenceable(16), ptr noalias noundef align 8 dereferenceable(64), ptr noalias noundef nonnull readonly align 1, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core3fmt8builders11DebugStruct21finish_non_exhaustive17hbbf976ff9776bd36E(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr84drop_in_place$LT$std..sync..mutex..MutexGuard$LT$driver..src..driver..HouseT$GT$$GT$17h4af61b2e0de4b3f5E"(ptr %_1.0.val, i8 %_1.8.val) unnamed_addr #0 {
start:
  %0 = icmp ne ptr %_1.0.val, null
  tail call void @llvm.assume(i1 %0)
  %_3.i = getelementptr inbounds %"std::sync::mutex::Mutex<src::driver::HouseT>", ptr %_1.0.val, i64 0, i32 1
  %_5.not.i.i = icmp eq i8 %_1.8.val, 0
  br i1 %_5.not.i.i, label %bb2.i.i, label %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i

bb2.i.i:                                          ; preds = %start
  %1 = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h3a54c5bda48c7da9E monotonic, align 8, !noalias !83
  %_1.i.i.i = and i64 %1, 9223372036854775807
  %2 = icmp eq i64 %_1.i.i.i, 0
  br i1 %2, label %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i, label %_ZN3std9panicking11panic_count13count_is_zero17ha5671c4a6c54af4aE.exit.i.i

_ZN3std9panicking11panic_count13count_is_zero17ha5671c4a6c54af4aE.exit.i.i: ; preds = %bb2.i.i
  %3 = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17h3429ce5c53077a80E(), !noalias !83
  br i1 %3, label %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i, label %bb4.i.i

bb4.i.i:                                          ; preds = %_ZN3std9panicking11panic_count13count_is_zero17ha5671c4a6c54af4aE.exit.i.i
  store atomic i8 1, ptr %_3.i monotonic, align 4, !noalias !83
  br label %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i

_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i: ; preds = %bb4.i.i, %_ZN3std9panicking11panic_count13count_is_zero17ha5671c4a6c54af4aE.exit.i.i, %bb2.i.i, %start
  %4 = atomicrmw xchg ptr %_1.0.val, i32 0 release, align 4, !noalias !83
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %bb3.i, label %"_ZN79_$LT$std..sync..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7406ef8cde001e66E.exit"

bb3.i:                                            ; preds = %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i
  tail call void @_ZN3std3sys4unix5locks11futex_mutex5Mutex4wake17heeac318d850ee859E(ptr noundef nonnull align 4 %_1.0.val), !noalias !83
  br label %"_ZN79_$LT$std..sync..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7406ef8cde001e66E.exit"

"_ZN79_$LT$std..sync..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7406ef8cde001e66E.exit": ; preds = %bb3.i, %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE"(ptr noalias noundef readonly align 4 dereferenceable(4), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt5float52_$LT$impl$u20$core..fmt..Display$u20$for$u20$f64$GT$3fmt17hf64b1960e3b02756E"(ptr noalias noundef readonly align 8 dereferenceable(8), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nonlazybind uwtable
define void @run(i32 noundef %extra_bedrooms) unnamed_addr #0 {
start:
  tail call fastcc void @_ZN6driver3src6driver3run17h07a60c493f14838cE(i32 noundef %extra_bedrooms)
  ret void
}

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #2 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { noreturn }
attributes #10 = { noinline }
attributes #11 = { noinline noreturn nounwind }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!3}
!3 = distinct !{!3, !4, !"_ZN6driver3src6driver16driver_from_cstr17h1498d1a53b108a6fE: argument 0"}
!4 = distinct !{!4, !"_ZN6driver3src6driver16driver_from_cstr17h1498d1a53b108a6fE"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"_ZN6driver3src6driver9parse_val17h85c4af774015232dE: %s.0"}
!7 = distinct !{!7, !"_ZN6driver3src6driver9parse_val17h85c4af774015232dE"}
!8 = !{!9}
!9 = distinct !{!9, !10, !"_ZN6driver3src6driver11parse_bytes17h04964986aab61b07E: %bytes.0"}
!10 = distinct !{!10, !"_ZN6driver3src6driver11parse_bytes17h04964986aab61b07E"}
!11 = !{!9, !6, !3}
!12 = !{!13, !14}
!13 = distinct !{!13, !10, !"_ZN6driver3src6driver11parse_bytes17h04964986aab61b07E: %val"}
!14 = distinct !{!14, !7, !"_ZN6driver3src6driver9parse_val17h85c4af774015232dE: %val"}
!15 = !{}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{!9, !13, !6, !14}
!18 = !{!19}
!19 = distinct !{!19, !20, !"_ZN4core3fmt9Arguments9new_const17h00a508d8cf4830ceE: argument 0"}
!20 = distinct !{!20, !"_ZN4core3fmt9Arguments9new_const17h00a508d8cf4830ceE"}
!21 = !{!22}
!22 = distinct !{!22, !23, !"_ZN3std4sync5mutex14Mutex$LT$T$GT$4lock17he602fbb6bd54bedeE: argument 0"}
!23 = distinct !{!23, !"_ZN3std4sync5mutex14Mutex$LT$T$GT$4lock17he602fbb6bd54bedeE"}
!24 = !{!25, !22}
!25 = distinct !{!25, !26, !"_ZN3std4sync5mutex19MutexGuard$LT$T$GT$3new17h66f9ece7b372df00E: argument 0"}
!26 = distinct !{!26, !"_ZN3std4sync5mutex19MutexGuard$LT$T$GT$3new17h66f9ece7b372df00E"}
!27 = !{!28}
!28 = distinct !{!28, !29, !"_ZN6driver3src6driver9add_floor17he85eb5f3e469ae8cE: %house"}
!29 = distinct !{!29, !"_ZN6driver3src6driver9add_floor17he85eb5f3e469ae8cE"}
!30 = !{!31, !33}
!31 = distinct !{!31, !32, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h9c1b301d6b469585E: %self"}
!32 = distinct !{!32, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h9c1b301d6b469585E"}
!33 = distinct !{!33, !32, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h9c1b301d6b469585E: argument 1"}
!34 = !{!31}
!35 = !{!36}
!36 = distinct !{!36, !37, !"_ZN79_$LT$std..sync..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7406ef8cde001e66E: %self"}
!37 = distinct !{!37, !"_ZN79_$LT$std..sync..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7406ef8cde001e66E"}
!38 = !{!39}
!39 = distinct !{!39, !40, !"_ZN3std4sync5mutex14Mutex$LT$T$GT$4lock17he602fbb6bd54bedeE: argument 0"}
!40 = distinct !{!40, !"_ZN3std4sync5mutex14Mutex$LT$T$GT$4lock17he602fbb6bd54bedeE"}
!41 = !{!42, !39}
!42 = distinct !{!42, !43, !"_ZN3std4sync5mutex19MutexGuard$LT$T$GT$3new17h66f9ece7b372df00E: argument 0"}
!43 = distinct !{!43, !"_ZN3std4sync5mutex19MutexGuard$LT$T$GT$3new17h66f9ece7b372df00E"}
!44 = !{!45, !47}
!45 = distinct !{!45, !46, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h9c1b301d6b469585E: %self"}
!46 = distinct !{!46, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h9c1b301d6b469585E"}
!47 = distinct !{!47, !46, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h9c1b301d6b469585E: argument 1"}
!48 = !{!45}
!49 = !{!50}
!50 = distinct !{!50, !51, !"_ZN79_$LT$std..sync..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7406ef8cde001e66E: %self"}
!51 = distinct !{!51, !"_ZN79_$LT$std..sync..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7406ef8cde001e66E"}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_ZN3std4sync5mutex14Mutex$LT$T$GT$4lock17he602fbb6bd54bedeE: argument 0"}
!54 = distinct !{!54, !"_ZN3std4sync5mutex14Mutex$LT$T$GT$4lock17he602fbb6bd54bedeE"}
!55 = !{!56, !53}
!56 = distinct !{!56, !57, !"_ZN3std4sync5mutex19MutexGuard$LT$T$GT$3new17h66f9ece7b372df00E: argument 0"}
!57 = distinct !{!57, !"_ZN3std4sync5mutex19MutexGuard$LT$T$GT$3new17h66f9ece7b372df00E"}
!58 = !{!59}
!59 = distinct !{!59, !60, !"_ZN6driver3src6driver12add_bedrooms17h372b766cc7aab3f2E: %house"}
!60 = distinct !{!60, !"_ZN6driver3src6driver12add_bedrooms17h372b766cc7aab3f2E"}
!61 = !{!62, !64}
!62 = distinct !{!62, !63, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h9c1b301d6b469585E: %self"}
!63 = distinct !{!63, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h9c1b301d6b469585E"}
!64 = distinct !{!64, !63, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h9c1b301d6b469585E: argument 1"}
!65 = !{!62}
!66 = !{!67}
!67 = distinct !{!67, !68, !"_ZN79_$LT$std..sync..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7406ef8cde001e66E: %self"}
!68 = distinct !{!68, !"_ZN79_$LT$std..sync..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7406ef8cde001e66E"}
!69 = !{!70}
!70 = distinct !{!70, !71, !"_ZN3std4sync5mutex14Mutex$LT$T$GT$4lock17he602fbb6bd54bedeE: argument 0"}
!71 = distinct !{!71, !"_ZN3std4sync5mutex14Mutex$LT$T$GT$4lock17he602fbb6bd54bedeE"}
!72 = !{!73, !70}
!73 = distinct !{!73, !74, !"_ZN3std4sync5mutex19MutexGuard$LT$T$GT$3new17h66f9ece7b372df00E: argument 0"}
!74 = distinct !{!74, !"_ZN3std4sync5mutex19MutexGuard$LT$T$GT$3new17h66f9ece7b372df00E"}
!75 = !{!76, !78}
!76 = distinct !{!76, !77, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h9c1b301d6b469585E: %self"}
!77 = distinct !{!77, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h9c1b301d6b469585E"}
!78 = distinct !{!78, !77, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h9c1b301d6b469585E: argument 1"}
!79 = !{!76}
!80 = !{!81}
!81 = distinct !{!81, !82, !"_ZN79_$LT$std..sync..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7406ef8cde001e66E: %self"}
!82 = distinct !{!82, !"_ZN79_$LT$std..sync..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7406ef8cde001e66E"}
!83 = !{!84}
!84 = distinct !{!84, !85, !"_ZN79_$LT$std..sync..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7406ef8cde001e66E: %self"}
!85 = distinct !{!85, !"_ZN79_$LT$std..sync..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7406ef8cde001e66E"}
!86 = !{i64 8}
!87 = !{i8 0, i8 2}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_ZN79_$LT$std..sync..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7406ef8cde001e66E: %self"}
!90 = distinct !{!90, !"_ZN79_$LT$std..sync..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7406ef8cde001e66E"}
