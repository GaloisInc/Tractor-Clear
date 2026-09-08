; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"core::sync::atomic::AtomicUsize" = type { i64 }
%"core::fmt::rt::v1::Argument" = type { %"core::fmt::rt::v1::FormatSpec", i64 }
%"core::fmt::rt::v1::FormatSpec" = type { { i64, i64 }, { i64, i64 }, i32, i32, i8, [7 x i8] }
%"core::fmt::Arguments<'_>" = type { { ptr, i64 }, { ptr, i64 }, { ptr, i64 } }
%"core::result::Result<(), !>::Ok" = type { {} }
%"std::sync::mutex::Mutex<src::driver::HouseT>" = type { %"std::sys::unix::locks::futex_mutex::Mutex", %"std::sync::poison::Flag", [3 x i8], %"core::cell::UnsafeCell<src::driver::HouseT>" }
%"std::sys::unix::locks::futex_mutex::Mutex" = type { %"core::sync::atomic::AtomicU32" }
%"core::sync::atomic::AtomicU32" = type { i32 }
%"std::sync::poison::Flag" = type { %"core::sync::atomic::AtomicBool" }
%"core::sync::atomic::AtomicBool" = type { i8 }
%"core::cell::UnsafeCell<src::driver::HouseT>" = type { %"src::driver::HouseT" }
%"src::driver::HouseT" = type { i32, i32, double }
%"core::fmt::builders::DebugStruct<'_, '_>" = type { ptr, i8, i8, [6 x i8] }

@alloc_52b3a24627b09a2a2402c50a054c3b6a = private unnamed_addr constant <{ [42 x i8] }> <{ [42 x i8] c"internal error: entered unreachable code: " }>, align 1
@alloc_ff43bafd361d2cfe0d814a3fb2ecb1f2 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @alloc_52b3a24627b09a2a2402c50a054c3b6a, [8 x i8] c"*\00\00\00\00\00\00\00" }>, align 8
@alloc_133f9f02457ffd937ab4ec2331d3c976 = private unnamed_addr constant <{ [36 x i8] }> <{ [36 x i8] c"state is never set to invalid values" }>, align 1
@alloc_881500f6f2f2537a234138a0bd258f81 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @alloc_133f9f02457ffd937ab4ec2331d3c976, [8 x i8] c"$\00\00\00\00\00\00\00" }>, align 8
@alloc_522e16a59048954a61115bda0cc71567 = private unnamed_addr constant <{ [76 x i8] }> <{ [76 x i8] c"/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/std/src/sync/once.rs" }>, align 1
@alloc_181d8f716b84c4abc0f0fa66adb97c99 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_522e16a59048954a61115bda0cc71567, [16 x i8] c"L\00\00\00\00\00\00\00\D0\00\00\00\14\00\00\00" }>, align 8
@alloc_5f55955de67e57c79064b537689facea = private unnamed_addr constant <{ [43 x i8] }> <{ [43 x i8] c"called `Option::unwrap()` on a `None` value" }>, align 1
@alloc_f6a056b72b4d1e69bf49c65ae6853088 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_522e16a59048954a61115bda0cc71567, [16 x i8] c"L\00\00\00\00\00\00\00\D0\00\00\001\00\00\00" }>, align 8
@_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h3a54c5bda48c7da9E = external local_unnamed_addr global %"core::sync::atomic::AtomicUsize"
@alloc_513570631223a12912d85da2bec3b15a = private unnamed_addr constant <{}> zeroinitializer, align 8
@alloc_00ae4b301f7fab8ac9617c03fcbd7274 = private unnamed_addr constant <{ [43 x i8] }> <{ [43 x i8] c"called `Result::unwrap()` on an `Err` value" }>, align 1
@vtable.0 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr122drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..mutex..MutexGuard$LT$driver..src..driver..HouseT$GT$$GT$$GT$17h163e3efdba569df6E", [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN76_$LT$std..sync..poison..PoisonError$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hcd9b7264d41c7796E" }>, align 8
@alloc_8e2410b80645266732854088d21653bc = private unnamed_addr constant <{ [11 x i8] }> <{ [11 x i8] c"PoisonError" }>, align 1
@alloc_00728171eaa7ec2c5a267f4bf25d4ac3 = private unnamed_addr constant <{ [13 x i8] }> <{ [13 x i8] c"src/driver.rs" }>, align 1
@alloc_cc69a001d44890dca258e7c9a4d7ff29 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_00728171eaa7ec2c5a267f4bf25d4ac3, [16 x i8] c"\0D\00\00\00\00\00\00\00\19\00\00\00(\00\00\00" }>, align 8
@alloc_517555bcc5ba226da27dbd382a555438 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_00728171eaa7ec2c5a267f4bf25d4ac3, [16 x i8] c"\0D\00\00\00\00\00\00\00\1D\00\00\00$\00\00\00" }>, align 8
@alloc_6cd42ea5103a3fc63b8edab95bb315a5 = private unnamed_addr constant <{ [14 x i8] }> <{ [14 x i8] c"The house has " }>, align 1
@alloc_383d5a05d82133a478bdabae62c15519 = private unnamed_addr constant <{ [9 x i8] }> <{ [9 x i8] c" floors, " }>, align 1
@alloc_1adcba0f8c111e6973c7476521a376b0 = private unnamed_addr constant <{ [15 x i8] }> <{ [15 x i8] c" bedrooms, and " }>, align 1
@alloc_24b5ae97c4482b83b7d9b78bc9056b48 = private unnamed_addr constant <{ [11 x i8] }> <{ [11 x i8] c" bathrooms\0A" }>, align 1
@alloc_1819828f617093f2e72a86ee9316c0e5 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc_6cd42ea5103a3fc63b8edab95bb315a5, [8 x i8] c"\0E\00\00\00\00\00\00\00", ptr @alloc_383d5a05d82133a478bdabae62c15519, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @alloc_1adcba0f8c111e6973c7476521a376b0, [8 x i8] c"\0F\00\00\00\00\00\00\00", ptr @alloc_24b5ae97c4482b83b7d9b78bc9056b48, [8 x i8] c"\0B\00\00\00\00\00\00\00" }>, align 8
@alloc_ff53573544b5ae54a9d8fcc92ca52593 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_00728171eaa7ec2c5a267f4bf25d4ac3, [16 x i8] c"\0D\00\00\00\00\00\00\00(\00\00\00,\00\00\00" }>, align 8
@alloc_0162f675e45b6a83766ad5941b46e730 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_00728171eaa7ec2c5a267f4bf25d4ac3, [16 x i8] c"\0D\00\00\00\00\00\00\00-\00\00\00,\00\00\00" }>, align 8
@_ZN6driver3src6driver9the_house9THE_HOUSE17h914c035c87421d0cE = internal global <{ [24 x i8], [4 x i8], [4 x i8] }> <{ [24 x i8] undef, [4 x i8] zeroinitializer, [4 x i8] undef }>, align 8

; Function Attrs: nonlazybind uwtable
define void @driver(i32 noundef %x) unnamed_addr #0 {
start:
  tail call fastcc void @_ZN6driver3src6driver3run17h07a60c493f14838cE(i32 noundef %x)
  tail call fastcc void @_ZN6driver3src6driver3run17h07a60c493f14838cE(i32 noundef %x)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN6driver3src6driver3run17h07a60c493f14838cE(i32 noundef %extra_bedrooms) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %e.i38 = alloca { ptr, i8 }, align 8
  %e.i = alloca { ptr, i8 }, align 8
  %e.i.i = alloca { ptr, i8 }, align 8
  tail call fastcc void @_ZN6driver3src6driver15print_the_house17h3d1c8026c74267eaE()
  %0 = load atomic i32, ptr getelementptr inbounds (<{ [24 x i8], [4 x i8], [4 x i8] }>, ptr @_ZN6driver3src6driver9the_house9THE_HOUSE17h914c035c87421d0cE, i64 0, i32 1, i64 0) acquire, align 8
  %_2.i.not.i.i.i = icmp eq i32 %0, 4
  br i1 %_2.i.not.i.i.i, label %_ZN6driver3src6driver9the_house17h49199c4d0b77364dE.exit.i, label %bb4.i.i.i

bb4.i.i.i:                                        ; preds = %start
  tail call fastcc void @"_ZN3std4sync9once_lock17OnceLock$LT$T$GT$10initialize17h56ea397bceae94fbE"()
  br label %_ZN6driver3src6driver9the_house17h49199c4d0b77364dE.exit.i

_ZN6driver3src6driver9the_house17h49199c4d0b77364dE.exit.i: ; preds = %bb4.i.i.i, %start
  %1 = cmpxchg ptr @_ZN6driver3src6driver9the_house9THE_HOUSE17h914c035c87421d0cE, i32 0, i32 1 acquire monotonic, align 4, !noalias !2
  %2 = extractvalue { i32, i1 } %1, 1
  br i1 %2, label %_ZN3std3sys4unix5locks11futex_mutex5Mutex4lock17h6c52fd0f4762b066E.exit.i.i, label %bb1.i.i.i

bb1.i.i.i:                                        ; preds = %_ZN6driver3src6driver9the_house17h49199c4d0b77364dE.exit.i
  tail call void @_ZN3std3sys4unix5locks11futex_mutex5Mutex14lock_contended17hebf822500a669985E(ptr noundef nonnull align 4 @_ZN6driver3src6driver9the_house9THE_HOUSE17h914c035c87421d0cE), !noalias !2
  br label %_ZN3std3sys4unix5locks11futex_mutex5Mutex4lock17h6c52fd0f4762b066E.exit.i.i

_ZN3std3sys4unix5locks11futex_mutex5Mutex4lock17h6c52fd0f4762b066E.exit.i.i: ; preds = %bb1.i.i.i, %_ZN6driver3src6driver9the_house17h49199c4d0b77364dE.exit.i
  %3 = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h3a54c5bda48c7da9E monotonic, align 8, !noalias !5
  %_1.i.i.i.i.i = and i64 %3, 9223372036854775807
  %4 = icmp eq i64 %_1.i.i.i.i.i, 0
  br i1 %4, label %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i.thread.i, label %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i.i

_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i.i: ; preds = %_ZN3std3sys4unix5locks11futex_mutex5Mutex4lock17h6c52fd0f4762b066E.exit.i.i
  %5 = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17h3429ce5c53077a80E(), !noalias !5
  %6 = xor i1 %5, true
  %7 = zext i1 %6 to i8
  %8 = load atomic i8, ptr getelementptr inbounds (<{ [24 x i8], [4 x i8], [4 x i8] }>, ptr @_ZN6driver3src6driver9the_house9THE_HOUSE17h914c035c87421d0cE, i64 0, i32 0, i64 4) monotonic, align 4, !noalias !5
  %.not.i.i.i = icmp eq i8 %8, 0
  br i1 %.not.i.i.i, label %bb5.i, label %bb1.i.i

_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i.thread.i: ; preds = %_ZN3std3sys4unix5locks11futex_mutex5Mutex4lock17h6c52fd0f4762b066E.exit.i.i
  %9 = load atomic i8, ptr getelementptr inbounds (<{ [24 x i8], [4 x i8], [4 x i8] }>, ptr @_ZN6driver3src6driver9the_house9THE_HOUSE17h914c035c87421d0cE, i64 0, i32 0, i64 4) monotonic, align 4, !noalias !5
  %.not.i.i13.i = icmp eq i8 %9, 0
  br i1 %.not.i.i13.i, label %bb5.thread.i, label %bb1.i.i

bb5.thread.i:                                     ; preds = %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i.thread.i
  %10 = load i32, ptr getelementptr inbounds (<{ [24 x i8], [4 x i8], [4 x i8] }>, ptr @_ZN6driver3src6driver9the_house9THE_HOUSE17h914c035c87421d0cE, i64 0, i32 0, i64 8), align 8, !alias.scope !8, !noundef !11
  %11 = add i32 %10, 1
  store i32 %11, ptr getelementptr inbounds (<{ [24 x i8], [4 x i8], [4 x i8] }>, ptr @_ZN6driver3src6driver9the_house9THE_HOUSE17h914c035c87421d0cE, i64 0, i32 0, i64 8), align 8, !alias.scope !8
  br label %bb2.i.i.i.i

bb1.i.i:                                          ; preds = %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i.thread.i, %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i.i
  %.0.i.i.i.i14.i = phi i8 [ 0, %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i.thread.i ], [ %7, %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i.i ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %e.i.i), !noalias !12
  store ptr @_ZN6driver3src6driver9the_house9THE_HOUSE17h914c035c87421d0cE, ptr %e.i.i, align 8, !noalias !12
  %12 = getelementptr inbounds { ptr, i8 }, ptr %e.i.i, i64 0, i32 1
  store i8 %.0.i.i.i.i14.i, ptr %12, align 8, !noalias !12
  invoke void @_ZN4core6result13unwrap_failed17h008634a1b68516fbE(ptr noalias noundef nonnull readonly align 1 @alloc_00ae4b301f7fab8ac9617c03fcbd7274, i64 noundef 43, ptr noundef nonnull align 1 %e.i.i, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @vtable.0, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_cc69a001d44890dca258e7c9a4d7ff29) #7
          to label %unreachable.i.i unwind label %cleanup.i.i, !noalias !16

cleanup.i.i:                                      ; preds = %bb1.i.i
  %13 = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr122drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..mutex..MutexGuard$LT$driver..src..driver..HouseT$GT$$GT$$GT$17h163e3efdba569df6E"(ptr noundef nonnull %e.i.i) #8
          to label %common.resume unwind label %terminate.i.i, !noalias !16

unreachable.i.i:                                  ; preds = %bb1.i.i
  unreachable

terminate.i.i:                                    ; preds = %cleanup.i.i
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4core9panicking19panic_cannot_unwind17h629e1da841ab4abfE() #9, !noalias !16
  unreachable

common.resume:                                    ; preds = %cleanup.i42, %cleanup.i, %cleanup.i.i
  %common.resume.op = phi { ptr, i32 } [ %13, %cleanup.i.i ], [ %35, %cleanup.i ], [ %57, %cleanup.i42 ]
  resume { ptr, i32 } %common.resume.op

bb5.i:                                            ; preds = %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i.i
  %15 = load i32, ptr getelementptr inbounds (<{ [24 x i8], [4 x i8], [4 x i8] }>, ptr @_ZN6driver3src6driver9the_house9THE_HOUSE17h914c035c87421d0cE, i64 0, i32 0, i64 8), align 8, !alias.scope !8, !noundef !11
  %16 = add i32 %15, 1
  store i32 %16, ptr getelementptr inbounds (<{ [24 x i8], [4 x i8], [4 x i8] }>, ptr @_ZN6driver3src6driver9the_house9THE_HOUSE17h914c035c87421d0cE, i64 0, i32 0, i64 8), align 8, !alias.scope !8
  br i1 %5, label %bb2.i.i.i.i, label %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i.i

bb2.i.i.i.i:                                      ; preds = %bb5.i, %bb5.thread.i
  %17 = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h3a54c5bda48c7da9E monotonic, align 8, !noalias !17
  %_1.i.i.i.i5.i = and i64 %17, 9223372036854775807
  %18 = icmp eq i64 %_1.i.i.i.i5.i, 0
  br i1 %18, label %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i.i, label %_ZN3std9panicking11panic_count13count_is_zero17ha5671c4a6c54af4aE.exit.i.i.i.i

_ZN3std9panicking11panic_count13count_is_zero17ha5671c4a6c54af4aE.exit.i.i.i.i: ; preds = %bb2.i.i.i.i
  %19 = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17h3429ce5c53077a80E(), !noalias !17
  br i1 %19, label %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i.i, label %bb4.i.i.i.i

bb4.i.i.i.i:                                      ; preds = %_ZN3std9panicking11panic_count13count_is_zero17ha5671c4a6c54af4aE.exit.i.i.i.i
  store atomic i8 1, ptr getelementptr inbounds (<{ [24 x i8], [4 x i8], [4 x i8] }>, ptr @_ZN6driver3src6driver9the_house9THE_HOUSE17h914c035c87421d0cE, i64 0, i32 0, i64 4) monotonic, align 4, !noalias !17
  br label %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i.i

_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i.i: ; preds = %bb4.i.i.i.i, %_ZN3std9panicking11panic_count13count_is_zero17ha5671c4a6c54af4aE.exit.i.i.i.i, %bb2.i.i.i.i, %bb5.i
  %20 = atomicrmw xchg ptr @_ZN6driver3src6driver9the_house9THE_HOUSE17h914c035c87421d0cE, i32 0 release, align 4, !noalias !17
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %bb3.i.i.i, label %_ZN6driver3src6driver22add_floor_to_the_house17hd1058b732c40b99fE.exit

bb3.i.i.i:                                        ; preds = %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i.i
  tail call void @_ZN3std3sys4unix5locks11futex_mutex5Mutex4wake17heeac318d850ee859E(ptr noundef nonnull align 4 @_ZN6driver3src6driver9the_house9THE_HOUSE17h914c035c87421d0cE), !noalias !17
  br label %_ZN6driver3src6driver22add_floor_to_the_house17hd1058b732c40b99fE.exit

_ZN6driver3src6driver22add_floor_to_the_house17hd1058b732c40b99fE.exit: ; preds = %bb3.i.i.i, %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i.i
  tail call fastcc void @_ZN6driver3src6driver15print_the_house17h3d1c8026c74267eaE()
  %22 = load atomic i32, ptr getelementptr inbounds (<{ [24 x i8], [4 x i8], [4 x i8] }>, ptr @_ZN6driver3src6driver9the_house9THE_HOUSE17h914c035c87421d0cE, i64 0, i32 1, i64 0) acquire, align 8
  %_2.i.not.i.i = icmp eq i32 %22, 4
  br i1 %_2.i.not.i.i, label %_ZN6driver3src6driver9the_house17h49199c4d0b77364dE.exit, label %bb4.i.i

bb4.i.i:                                          ; preds = %_ZN6driver3src6driver22add_floor_to_the_house17hd1058b732c40b99fE.exit
  tail call fastcc void @"_ZN3std4sync9once_lock17OnceLock$LT$T$GT$10initialize17h56ea397bceae94fbE"()
  br label %_ZN6driver3src6driver9the_house17h49199c4d0b77364dE.exit

_ZN6driver3src6driver9the_house17h49199c4d0b77364dE.exit: ; preds = %bb4.i.i, %_ZN6driver3src6driver22add_floor_to_the_house17hd1058b732c40b99fE.exit
  %23 = cmpxchg ptr @_ZN6driver3src6driver9the_house9THE_HOUSE17h914c035c87421d0cE, i32 0, i32 1 acquire monotonic, align 4, !noalias !20
  %24 = extractvalue { i32, i1 } %23, 1
  br i1 %24, label %_ZN3std3sys4unix5locks11futex_mutex5Mutex4lock17h6c52fd0f4762b066E.exit.i, label %bb1.i.i16

bb1.i.i16:                                        ; preds = %_ZN6driver3src6driver9the_house17h49199c4d0b77364dE.exit
  tail call void @_ZN3std3sys4unix5locks11futex_mutex5Mutex14lock_contended17hebf822500a669985E(ptr noundef nonnull align 4 @_ZN6driver3src6driver9the_house9THE_HOUSE17h914c035c87421d0cE), !noalias !20
  br label %_ZN3std3sys4unix5locks11futex_mutex5Mutex4lock17h6c52fd0f4762b066E.exit.i

_ZN3std3sys4unix5locks11futex_mutex5Mutex4lock17h6c52fd0f4762b066E.exit.i: ; preds = %bb1.i.i16, %_ZN6driver3src6driver9the_house17h49199c4d0b77364dE.exit
  %25 = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h3a54c5bda48c7da9E monotonic, align 8, !noalias !23
  %_1.i.i.i.i = and i64 %25, 9223372036854775807
  %26 = icmp eq i64 %_1.i.i.i.i, 0
  br i1 %26, label %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i.thread, label %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i

_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i: ; preds = %_ZN3std3sys4unix5locks11futex_mutex5Mutex4lock17h6c52fd0f4762b066E.exit.i
  %27 = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17h3429ce5c53077a80E(), !noalias !23
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i8
  %30 = load atomic i8, ptr getelementptr inbounds (<{ [24 x i8], [4 x i8], [4 x i8] }>, ptr @_ZN6driver3src6driver9the_house9THE_HOUSE17h914c035c87421d0cE, i64 0, i32 0, i64 4) monotonic, align 4, !noalias !23
  %.not.i.i = icmp eq i8 %30, 0
  br i1 %.not.i.i, label %bb7, label %bb1.i

_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i.thread: ; preds = %_ZN3std3sys4unix5locks11futex_mutex5Mutex4lock17h6c52fd0f4762b066E.exit.i
  %31 = load atomic i8, ptr getelementptr inbounds (<{ [24 x i8], [4 x i8], [4 x i8] }>, ptr @_ZN6driver3src6driver9the_house9THE_HOUSE17h914c035c87421d0cE, i64 0, i32 0, i64 4) monotonic, align 4, !noalias !23
  %.not.i.i70 = icmp eq i8 %31, 0
  br i1 %.not.i.i70, label %bb7.thread, label %bb1.i

bb7.thread:                                       ; preds = %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i.thread
  %32 = load double, ptr getelementptr inbounds (<{ [24 x i8], [4 x i8], [4 x i8] }>, ptr @_ZN6driver3src6driver9the_house9THE_HOUSE17h914c035c87421d0cE, i64 0, i32 0, i64 16), align 8, !noundef !11
  %33 = fadd double %32, 1.000000e+00
  store double %33, ptr getelementptr inbounds (<{ [24 x i8], [4 x i8], [4 x i8] }>, ptr @_ZN6driver3src6driver9the_house9THE_HOUSE17h914c035c87421d0cE, i64 0, i32 0, i64 16), align 8
  br label %bb2.i.i.i

bb1.i:                                            ; preds = %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i.thread, %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i
  %.0.i.i.i.i71 = phi i8 [ 0, %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i.thread ], [ %29, %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %e.i), !noalias !26
  store ptr @_ZN6driver3src6driver9the_house9THE_HOUSE17h914c035c87421d0cE, ptr %e.i, align 8, !noalias !26
  %34 = getelementptr inbounds { ptr, i8 }, ptr %e.i, i64 0, i32 1
  store i8 %.0.i.i.i.i71, ptr %34, align 8, !noalias !26
  invoke void @_ZN4core6result13unwrap_failed17h008634a1b68516fbE(ptr noalias noundef nonnull readonly align 1 @alloc_00ae4b301f7fab8ac9617c03fcbd7274, i64 noundef 43, ptr noundef nonnull align 1 %e.i, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @vtable.0, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_ff53573544b5ae54a9d8fcc92ca52593) #7
          to label %unreachable.i unwind label %cleanup.i, !noalias !30

cleanup.i:                                        ; preds = %bb1.i
  %35 = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr122drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..mutex..MutexGuard$LT$driver..src..driver..HouseT$GT$$GT$$GT$17h163e3efdba569df6E"(ptr noundef nonnull %e.i) #8
          to label %common.resume unwind label %terminate.i, !noalias !30

unreachable.i:                                    ; preds = %bb1.i
  unreachable

terminate.i:                                      ; preds = %cleanup.i
  %36 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4core9panicking19panic_cannot_unwind17h629e1da841ab4abfE() #9, !noalias !30
  unreachable

bb7:                                              ; preds = %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i
  %37 = load double, ptr getelementptr inbounds (<{ [24 x i8], [4 x i8], [4 x i8] }>, ptr @_ZN6driver3src6driver9the_house9THE_HOUSE17h914c035c87421d0cE, i64 0, i32 0, i64 16), align 8, !noundef !11
  %38 = fadd double %37, 1.000000e+00
  store double %38, ptr getelementptr inbounds (<{ [24 x i8], [4 x i8], [4 x i8] }>, ptr @_ZN6driver3src6driver9the_house9THE_HOUSE17h914c035c87421d0cE, i64 0, i32 0, i64 16), align 8
  br i1 %27, label %bb2.i.i.i, label %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i

bb2.i.i.i:                                        ; preds = %bb7, %bb7.thread
  %39 = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h3a54c5bda48c7da9E monotonic, align 8, !noalias !31
  %_1.i.i.i.i21 = and i64 %39, 9223372036854775807
  %40 = icmp eq i64 %_1.i.i.i.i21, 0
  br i1 %40, label %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i, label %_ZN3std9panicking11panic_count13count_is_zero17ha5671c4a6c54af4aE.exit.i.i.i

_ZN3std9panicking11panic_count13count_is_zero17ha5671c4a6c54af4aE.exit.i.i.i: ; preds = %bb2.i.i.i
  %41 = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17h3429ce5c53077a80E(), !noalias !31
  br i1 %41, label %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i, label %bb4.i.i.i22

bb4.i.i.i22:                                      ; preds = %_ZN3std9panicking11panic_count13count_is_zero17ha5671c4a6c54af4aE.exit.i.i.i
  store atomic i8 1, ptr getelementptr inbounds (<{ [24 x i8], [4 x i8], [4 x i8] }>, ptr @_ZN6driver3src6driver9the_house9THE_HOUSE17h914c035c87421d0cE, i64 0, i32 0, i64 4) monotonic, align 4, !noalias !31
  br label %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i

_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i: ; preds = %bb4.i.i.i22, %_ZN3std9panicking11panic_count13count_is_zero17ha5671c4a6c54af4aE.exit.i.i.i, %bb2.i.i.i, %bb7
  %42 = atomicrmw xchg ptr @_ZN6driver3src6driver9the_house9THE_HOUSE17h914c035c87421d0cE, i32 0 release, align 4, !noalias !31
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %bb3.i.i, label %"_ZN4core3ptr84drop_in_place$LT$std..sync..mutex..MutexGuard$LT$driver..src..driver..HouseT$GT$$GT$17h4af61b2e0de4b3f5E.exit"

bb3.i.i:                                          ; preds = %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i
  tail call void @_ZN3std3sys4unix5locks11futex_mutex5Mutex4wake17heeac318d850ee859E(ptr noundef nonnull align 4 @_ZN6driver3src6driver9the_house9THE_HOUSE17h914c035c87421d0cE), !noalias !31
  br label %"_ZN4core3ptr84drop_in_place$LT$std..sync..mutex..MutexGuard$LT$driver..src..driver..HouseT$GT$$GT$17h4af61b2e0de4b3f5E.exit"

"_ZN4core3ptr84drop_in_place$LT$std..sync..mutex..MutexGuard$LT$driver..src..driver..HouseT$GT$$GT$17h4af61b2e0de4b3f5E.exit": ; preds = %bb3.i.i, %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i
  tail call fastcc void @_ZN6driver3src6driver15print_the_house17h3d1c8026c74267eaE()
  %44 = load atomic i32, ptr getelementptr inbounds (<{ [24 x i8], [4 x i8], [4 x i8] }>, ptr @_ZN6driver3src6driver9the_house9THE_HOUSE17h914c035c87421d0cE, i64 0, i32 1, i64 0) acquire, align 8
  %_2.i.not.i.i23 = icmp eq i32 %44, 4
  br i1 %_2.i.not.i.i23, label %_ZN6driver3src6driver9the_house17h49199c4d0b77364dE.exit25, label %bb4.i.i24

bb4.i.i24:                                        ; preds = %"_ZN4core3ptr84drop_in_place$LT$std..sync..mutex..MutexGuard$LT$driver..src..driver..HouseT$GT$$GT$17h4af61b2e0de4b3f5E.exit"
  tail call fastcc void @"_ZN3std4sync9once_lock17OnceLock$LT$T$GT$10initialize17h56ea397bceae94fbE"()
  br label %_ZN6driver3src6driver9the_house17h49199c4d0b77364dE.exit25

_ZN6driver3src6driver9the_house17h49199c4d0b77364dE.exit25: ; preds = %bb4.i.i24, %"_ZN4core3ptr84drop_in_place$LT$std..sync..mutex..MutexGuard$LT$driver..src..driver..HouseT$GT$$GT$17h4af61b2e0de4b3f5E.exit"
  %45 = cmpxchg ptr @_ZN6driver3src6driver9the_house9THE_HOUSE17h914c035c87421d0cE, i32 0, i32 1 acquire monotonic, align 4, !noalias !34
  %46 = extractvalue { i32, i1 } %45, 1
  br i1 %46, label %_ZN3std3sys4unix5locks11futex_mutex5Mutex4lock17h6c52fd0f4762b066E.exit.i28, label %bb1.i.i26

bb1.i.i26:                                        ; preds = %_ZN6driver3src6driver9the_house17h49199c4d0b77364dE.exit25
  tail call void @_ZN3std3sys4unix5locks11futex_mutex5Mutex14lock_contended17hebf822500a669985E(ptr noundef nonnull align 4 @_ZN6driver3src6driver9the_house9THE_HOUSE17h914c035c87421d0cE), !noalias !34
  br label %_ZN3std3sys4unix5locks11futex_mutex5Mutex4lock17h6c52fd0f4762b066E.exit.i28

_ZN3std3sys4unix5locks11futex_mutex5Mutex4lock17h6c52fd0f4762b066E.exit.i28: ; preds = %bb1.i.i26, %_ZN6driver3src6driver9the_house17h49199c4d0b77364dE.exit25
  %47 = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h3a54c5bda48c7da9E monotonic, align 8, !noalias !37
  %_1.i.i.i.i27 = and i64 %47, 9223372036854775807
  %48 = icmp eq i64 %_1.i.i.i.i27, 0
  br i1 %48, label %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i32.thread, label %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i32

_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i32: ; preds = %_ZN3std3sys4unix5locks11futex_mutex5Mutex4lock17h6c52fd0f4762b066E.exit.i28
  %49 = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17h3429ce5c53077a80E(), !noalias !37
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i8
  %52 = load atomic i8, ptr getelementptr inbounds (<{ [24 x i8], [4 x i8], [4 x i8] }>, ptr @_ZN6driver3src6driver9the_house9THE_HOUSE17h914c035c87421d0cE, i64 0, i32 0, i64 4) monotonic, align 4, !noalias !37
  %.not.i.i31 = icmp eq i8 %52, 0
  br i1 %.not.i.i31, label %bb14, label %bb1.i41

_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i32.thread: ; preds = %_ZN3std3sys4unix5locks11futex_mutex5Mutex4lock17h6c52fd0f4762b066E.exit.i28
  %53 = load atomic i8, ptr getelementptr inbounds (<{ [24 x i8], [4 x i8], [4 x i8] }>, ptr @_ZN6driver3src6driver9the_house9THE_HOUSE17h914c035c87421d0cE, i64 0, i32 0, i64 4) monotonic, align 4, !noalias !37
  %.not.i.i3176 = icmp eq i8 %53, 0
  br i1 %.not.i.i3176, label %bb14.thread, label %bb1.i41

bb14.thread:                                      ; preds = %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i32.thread
  %54 = load i32, ptr getelementptr inbounds (<{ [24 x i8], [4 x i8], [4 x i8] }>, ptr @_ZN6driver3src6driver9the_house9THE_HOUSE17h914c035c87421d0cE, i64 0, i32 0, i64 12), align 4, !alias.scope !40, !noundef !11
  %55 = add i32 %54, %extra_bedrooms
  store i32 %55, ptr getelementptr inbounds (<{ [24 x i8], [4 x i8], [4 x i8] }>, ptr @_ZN6driver3src6driver9the_house9THE_HOUSE17h914c035c87421d0cE, i64 0, i32 0, i64 12), align 4, !alias.scope !40
  br label %bb2.i.i.i51

bb1.i41:                                          ; preds = %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i32.thread, %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i32
  %.0.i.i.i.i3077 = phi i8 [ 0, %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i32.thread ], [ %51, %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i32 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %e.i38), !noalias !43
  store ptr @_ZN6driver3src6driver9the_house9THE_HOUSE17h914c035c87421d0cE, ptr %e.i38, align 8, !noalias !43
  %56 = getelementptr inbounds { ptr, i8 }, ptr %e.i38, i64 0, i32 1
  store i8 %.0.i.i.i.i3077, ptr %56, align 8, !noalias !43
  invoke void @_ZN4core6result13unwrap_failed17h008634a1b68516fbE(ptr noalias noundef nonnull readonly align 1 @alloc_00ae4b301f7fab8ac9617c03fcbd7274, i64 noundef 43, ptr noundef nonnull align 1 %e.i38, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @vtable.0, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_0162f675e45b6a83766ad5941b46e730) #7
          to label %unreachable.i43 unwind label %cleanup.i42, !noalias !47

cleanup.i42:                                      ; preds = %bb1.i41
  %57 = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr122drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..mutex..MutexGuard$LT$driver..src..driver..HouseT$GT$$GT$$GT$17h163e3efdba569df6E"(ptr noundef nonnull %e.i38) #8
          to label %common.resume unwind label %terminate.i44, !noalias !47

unreachable.i43:                                  ; preds = %bb1.i41
  unreachable

terminate.i44:                                    ; preds = %cleanup.i42
  %58 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4core9panicking19panic_cannot_unwind17h629e1da841ab4abfE() #9, !noalias !47
  unreachable

bb14:                                             ; preds = %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i32
  %59 = load i32, ptr getelementptr inbounds (<{ [24 x i8], [4 x i8], [4 x i8] }>, ptr @_ZN6driver3src6driver9the_house9THE_HOUSE17h914c035c87421d0cE, i64 0, i32 0, i64 12), align 4, !alias.scope !40, !noundef !11
  %60 = add i32 %59, %extra_bedrooms
  store i32 %60, ptr getelementptr inbounds (<{ [24 x i8], [4 x i8], [4 x i8] }>, ptr @_ZN6driver3src6driver9the_house9THE_HOUSE17h914c035c87421d0cE, i64 0, i32 0, i64 12), align 4, !alias.scope !40
  br i1 %49, label %bb2.i.i.i51, label %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i54

bb2.i.i.i51:                                      ; preds = %bb14, %bb14.thread
  %61 = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h3a54c5bda48c7da9E monotonic, align 8, !noalias !48
  %_1.i.i.i.i50 = and i64 %61, 9223372036854775807
  %62 = icmp eq i64 %_1.i.i.i.i50, 0
  br i1 %62, label %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i54, label %_ZN3std9panicking11panic_count13count_is_zero17ha5671c4a6c54af4aE.exit.i.i.i52

_ZN3std9panicking11panic_count13count_is_zero17ha5671c4a6c54af4aE.exit.i.i.i52: ; preds = %bb2.i.i.i51
  %63 = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17h3429ce5c53077a80E(), !noalias !48
  br i1 %63, label %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i54, label %bb4.i.i.i53

bb4.i.i.i53:                                      ; preds = %_ZN3std9panicking11panic_count13count_is_zero17ha5671c4a6c54af4aE.exit.i.i.i52
  store atomic i8 1, ptr getelementptr inbounds (<{ [24 x i8], [4 x i8], [4 x i8] }>, ptr @_ZN6driver3src6driver9the_house9THE_HOUSE17h914c035c87421d0cE, i64 0, i32 0, i64 4) monotonic, align 4, !noalias !48
  br label %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i54

_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i54: ; preds = %bb4.i.i.i53, %_ZN3std9panicking11panic_count13count_is_zero17ha5671c4a6c54af4aE.exit.i.i.i52, %bb2.i.i.i51, %bb14
  %64 = atomicrmw xchg ptr @_ZN6driver3src6driver9the_house9THE_HOUSE17h914c035c87421d0cE, i32 0 release, align 4, !noalias !48
  %65 = icmp eq i32 %64, 2
  br i1 %65, label %bb3.i.i55, label %"_ZN4core3ptr84drop_in_place$LT$std..sync..mutex..MutexGuard$LT$driver..src..driver..HouseT$GT$$GT$17h4af61b2e0de4b3f5E.exit56"

bb3.i.i55:                                        ; preds = %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i54
  tail call void @_ZN3std3sys4unix5locks11futex_mutex5Mutex4wake17heeac318d850ee859E(ptr noundef nonnull align 4 @_ZN6driver3src6driver9the_house9THE_HOUSE17h914c035c87421d0cE), !noalias !48
  br label %"_ZN4core3ptr84drop_in_place$LT$std..sync..mutex..MutexGuard$LT$driver..src..driver..HouseT$GT$$GT$17h4af61b2e0de4b3f5E.exit56"

"_ZN4core3ptr84drop_in_place$LT$std..sync..mutex..MutexGuard$LT$driver..src..driver..HouseT$GT$$GT$17h4af61b2e0de4b3f5E.exit56": ; preds = %bb3.i.i55, %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i54
  tail call fastcc void @_ZN6driver3src6driver15print_the_house17h3d1c8026c74267eaE()
  ret void
}

; Function Attrs: nonlazybind uwtable
declare noundef i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN6driver3src6driver15print_the_house17h3d1c8026c74267eaE() unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %e.i = alloca { ptr, i8 }, align 8
  %_25 = alloca [3 x %"core::fmt::rt::v1::Argument"], align 8
  %_10 = alloca [3 x { ptr, ptr }], align 8
  %_6 = alloca %"core::fmt::Arguments<'_>", align 8
  %0 = load atomic i32, ptr getelementptr inbounds (<{ [24 x i8], [4 x i8], [4 x i8] }>, ptr @_ZN6driver3src6driver9the_house9THE_HOUSE17h914c035c87421d0cE, i64 0, i32 1, i64 0) acquire, align 8
  %_2.i.not.i.i = icmp eq i32 %0, 4
  br i1 %_2.i.not.i.i, label %_ZN6driver3src6driver9the_house17h49199c4d0b77364dE.exit, label %bb4.i.i

bb4.i.i:                                          ; preds = %start
  tail call fastcc void @"_ZN3std4sync9once_lock17OnceLock$LT$T$GT$10initialize17h56ea397bceae94fbE"()
  br label %_ZN6driver3src6driver9the_house17h49199c4d0b77364dE.exit

_ZN6driver3src6driver9the_house17h49199c4d0b77364dE.exit: ; preds = %bb4.i.i, %start
  %1 = cmpxchg ptr @_ZN6driver3src6driver9the_house9THE_HOUSE17h914c035c87421d0cE, i32 0, i32 1 acquire monotonic, align 4, !noalias !51
  %2 = extractvalue { i32, i1 } %1, 1
  br i1 %2, label %_ZN3std3sys4unix5locks11futex_mutex5Mutex4lock17h6c52fd0f4762b066E.exit.i, label %bb1.i.i

bb1.i.i:                                          ; preds = %_ZN6driver3src6driver9the_house17h49199c4d0b77364dE.exit
  tail call void @_ZN3std3sys4unix5locks11futex_mutex5Mutex14lock_contended17hebf822500a669985E(ptr noundef nonnull align 4 @_ZN6driver3src6driver9the_house9THE_HOUSE17h914c035c87421d0cE), !noalias !51
  br label %_ZN3std3sys4unix5locks11futex_mutex5Mutex4lock17h6c52fd0f4762b066E.exit.i

_ZN3std3sys4unix5locks11futex_mutex5Mutex4lock17h6c52fd0f4762b066E.exit.i: ; preds = %bb1.i.i, %_ZN6driver3src6driver9the_house17h49199c4d0b77364dE.exit
  %3 = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h3a54c5bda48c7da9E monotonic, align 8, !noalias !54
  %_1.i.i.i.i = and i64 %3, 9223372036854775807
  %4 = icmp eq i64 %_1.i.i.i.i, 0
  br i1 %4, label %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i, label %bb2.i.i.i.i

bb2.i.i.i.i:                                      ; preds = %_ZN3std3sys4unix5locks11futex_mutex5Mutex4lock17h6c52fd0f4762b066E.exit.i
  %5 = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17h3429ce5c53077a80E(), !noalias !54
  %6 = xor i1 %5, true
  %7 = zext i1 %6 to i8
  br label %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i

_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i: ; preds = %bb2.i.i.i.i, %_ZN3std3sys4unix5locks11futex_mutex5Mutex4lock17h6c52fd0f4762b066E.exit.i
  %.0.i.i.i.i = phi i8 [ %7, %bb2.i.i.i.i ], [ 0, %_ZN3std3sys4unix5locks11futex_mutex5Mutex4lock17h6c52fd0f4762b066E.exit.i ]
  %8 = load atomic i8, ptr getelementptr inbounds (<{ [24 x i8], [4 x i8], [4 x i8] }>, ptr @_ZN6driver3src6driver9the_house9THE_HOUSE17h914c035c87421d0cE, i64 0, i32 0, i64 4) monotonic, align 4, !noalias !54
  %.not.i.i = icmp eq i8 %8, 0
  br i1 %.not.i.i, label %bb7, label %bb1.i

bb1.i:                                            ; preds = %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %e.i), !noalias !57
  store ptr @_ZN6driver3src6driver9the_house9THE_HOUSE17h914c035c87421d0cE, ptr %e.i, align 8, !noalias !57
  %9 = getelementptr inbounds { ptr, i8 }, ptr %e.i, i64 0, i32 1
  store i8 %.0.i.i.i.i, ptr %9, align 8, !noalias !57
  invoke void @_ZN4core6result13unwrap_failed17h008634a1b68516fbE(ptr noalias noundef nonnull readonly align 1 @alloc_00ae4b301f7fab8ac9617c03fcbd7274, i64 noundef 43, ptr noundef nonnull align 1 %e.i, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @vtable.0, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_517555bcc5ba226da27dbd382a555438) #7
          to label %unreachable.i unwind label %cleanup.i, !noalias !61

cleanup.i:                                        ; preds = %bb1.i
  %10 = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr122drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..mutex..MutexGuard$LT$driver..src..driver..HouseT$GT$$GT$$GT$17h163e3efdba569df6E"(ptr noundef nonnull %e.i) #8
          to label %common.resume unwind label %terminate.i, !noalias !61

unreachable.i:                                    ; preds = %bb1.i
  unreachable

terminate.i:                                      ; preds = %cleanup.i
  %11 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4core9panicking19panic_cannot_unwind17h629e1da841ab4abfE() #9, !noalias !61
  unreachable

common.resume:                                    ; preds = %cleanup, %cleanup.i
  %common.resume.op = phi { ptr, i32 } [ %10, %cleanup.i ], [ %12, %cleanup ]
  resume { ptr, i32 } %common.resume.op

cleanup:                                          ; preds = %bb7
  %12 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr84drop_in_place$LT$std..sync..mutex..MutexGuard$LT$driver..src..driver..HouseT$GT$$GT$17h4af61b2e0de4b3f5E"(ptr nonnull @_ZN6driver3src6driver9the_house9THE_HOUSE17h914c035c87421d0cE, i8 %.0.i.i.i.i) #8
          to label %common.resume unwind label %terminate

bb7:                                              ; preds = %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_6)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_10)
  store ptr getelementptr inbounds (<{ [24 x i8], [4 x i8], [4 x i8] }>, ptr @_ZN6driver3src6driver9the_house9THE_HOUSE17h914c035c87421d0cE, i64 0, i32 0, i64 8), ptr %_10, align 8
  %13 = getelementptr inbounds { ptr, ptr }, ptr %_10, i64 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %13, align 8
  %14 = getelementptr inbounds [3 x { ptr, ptr }], ptr %_10, i64 0, i64 1
  store ptr getelementptr inbounds (<{ [24 x i8], [4 x i8], [4 x i8] }>, ptr @_ZN6driver3src6driver9the_house9THE_HOUSE17h914c035c87421d0cE, i64 0, i32 0, i64 12), ptr %14, align 8
  %15 = getelementptr inbounds [3 x { ptr, ptr }], ptr %_10, i64 0, i64 1, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %15, align 8
  %16 = getelementptr inbounds [3 x { ptr, ptr }], ptr %_10, i64 0, i64 2
  store ptr getelementptr inbounds (<{ [24 x i8], [4 x i8], [4 x i8] }>, ptr @_ZN6driver3src6driver9the_house9THE_HOUSE17h914c035c87421d0cE, i64 0, i32 0, i64 16), ptr %16, align 8
  %17 = getelementptr inbounds [3 x { ptr, ptr }], ptr %_10, i64 0, i64 2, i32 1
  store ptr @"_ZN4core3fmt5float52_$LT$impl$u20$core..fmt..Display$u20$for$u20$f64$GT$3fmt17hf64b1960e3b02756E", ptr %17, align 8
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %_25)
  store i64 2, ptr %_25, align 8
  %_26.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %_25, i64 16
  store i64 2, ptr %_26.sroa.0.sroa.5.0..sroa_idx, align 8
  %_26.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %_25, i64 32
  store i32 0, ptr %_26.sroa.0.sroa.7.0..sroa_idx, align 8
  %_26.sroa.0.sroa.8.0..sroa_idx = getelementptr inbounds i8, ptr %_25, i64 36
  store i32 32, ptr %_26.sroa.0.sroa.8.0..sroa_idx, align 4
  %_26.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %_25, i64 40
  store i8 3, ptr %_26.sroa.0.sroa.9.0..sroa_idx, align 8
  %_26.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %_25, i64 48
  store i64 0, ptr %_26.sroa.4.0..sroa_idx, align 8
  %18 = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_25, i64 0, i64 1
  store i64 2, ptr %18, align 8
  %_30.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_25, i64 0, i64 1, i32 0, i32 1
  store i64 2, ptr %_30.sroa.0.sroa.5.0..sroa_idx, align 8
  %_30.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_25, i64 0, i64 1, i32 0, i32 2
  store i32 0, ptr %_30.sroa.0.sroa.7.0..sroa_idx, align 8
  %_30.sroa.0.sroa.8.0..sroa_idx = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_25, i64 0, i64 1, i32 0, i32 3
  store i32 32, ptr %_30.sroa.0.sroa.8.0..sroa_idx, align 4
  %_30.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_25, i64 0, i64 1, i32 0, i32 4
  store i8 3, ptr %_30.sroa.0.sroa.9.0..sroa_idx, align 8
  %_30.sroa.4.0..sroa_idx = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_25, i64 0, i64 1, i32 1
  store i64 1, ptr %_30.sroa.4.0..sroa_idx, align 8
  %19 = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_25, i64 0, i64 2
  store i64 0, ptr %19, align 8
  %_34.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_25, i64 0, i64 2, i32 0, i32 0, i32 1
  store i64 1, ptr %_34.sroa.0.sroa.4.0..sroa_idx, align 8
  %_34.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_25, i64 0, i64 2, i32 0, i32 1
  store i64 2, ptr %_34.sroa.0.sroa.5.0..sroa_idx, align 8
  %_34.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_25, i64 0, i64 2, i32 0, i32 2
  store i32 0, ptr %_34.sroa.0.sroa.7.0..sroa_idx, align 8
  %_34.sroa.0.sroa.8.0..sroa_idx = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_25, i64 0, i64 2, i32 0, i32 3
  store i32 32, ptr %_34.sroa.0.sroa.8.0..sroa_idx, align 4
  %_34.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_25, i64 0, i64 2, i32 0, i32 4
  store i8 3, ptr %_34.sroa.0.sroa.9.0..sroa_idx, align 8
  %_34.sroa.4.0..sroa_idx = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_25, i64 0, i64 2, i32 1
  store i64 2, ptr %_34.sroa.4.0..sroa_idx, align 8
  %20 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_6, i64 0, i32 1
  store ptr @alloc_1819828f617093f2e72a86ee9316c0e5, ptr %20, align 8
  %21 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_6, i64 0, i32 1, i32 1
  store i64 4, ptr %21, align 8
  store ptr %_25, ptr %_6, align 8
  %22 = getelementptr inbounds { ptr, i64 }, ptr %_6, i64 0, i32 1
  store i64 3, ptr %22, align 8
  %23 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_6, i64 0, i32 2
  store ptr %_10, ptr %23, align 8
  %24 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_6, i64 0, i32 2, i32 1
  store i64 3, ptr %24, align 8
  invoke void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_6)
          to label %bb8 unwind label %cleanup

bb8:                                              ; preds = %bb7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_6)
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %_25)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_10)
  %_5.not.i.i.i = icmp eq i8 %.0.i.i.i.i, 0
  br i1 %_5.not.i.i.i, label %bb2.i.i.i, label %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i

bb2.i.i.i:                                        ; preds = %bb8
  %25 = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h3a54c5bda48c7da9E monotonic, align 8, !noalias !62
  %_1.i.i.i.i13 = and i64 %25, 9223372036854775807
  %26 = icmp eq i64 %_1.i.i.i.i13, 0
  br i1 %26, label %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i, label %_ZN3std9panicking11panic_count13count_is_zero17ha5671c4a6c54af4aE.exit.i.i.i

_ZN3std9panicking11panic_count13count_is_zero17ha5671c4a6c54af4aE.exit.i.i.i: ; preds = %bb2.i.i.i
  %27 = call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17h3429ce5c53077a80E(), !noalias !62
  br i1 %27, label %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i, label %bb4.i.i.i

bb4.i.i.i:                                        ; preds = %_ZN3std9panicking11panic_count13count_is_zero17ha5671c4a6c54af4aE.exit.i.i.i
  store atomic i8 1, ptr getelementptr inbounds (<{ [24 x i8], [4 x i8], [4 x i8] }>, ptr @_ZN6driver3src6driver9the_house9THE_HOUSE17h914c035c87421d0cE, i64 0, i32 0, i64 4) monotonic, align 4, !noalias !62
  br label %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i

_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i: ; preds = %bb4.i.i.i, %_ZN3std9panicking11panic_count13count_is_zero17ha5671c4a6c54af4aE.exit.i.i.i, %bb2.i.i.i, %bb8
  %28 = atomicrmw xchg ptr @_ZN6driver3src6driver9the_house9THE_HOUSE17h914c035c87421d0cE, i32 0 release, align 4, !noalias !62
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %bb3.i.i, label %"_ZN4core3ptr84drop_in_place$LT$std..sync..mutex..MutexGuard$LT$driver..src..driver..HouseT$GT$$GT$17h4af61b2e0de4b3f5E.exit"

bb3.i.i:                                          ; preds = %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i
  call void @_ZN3std3sys4unix5locks11futex_mutex5Mutex4wake17heeac318d850ee859E(ptr noundef nonnull align 4 @_ZN6driver3src6driver9the_house9THE_HOUSE17h914c035c87421d0cE), !noalias !62
  br label %"_ZN4core3ptr84drop_in_place$LT$std..sync..mutex..MutexGuard$LT$driver..src..driver..HouseT$GT$$GT$17h4af61b2e0de4b3f5E.exit"

"_ZN4core3ptr84drop_in_place$LT$std..sync..mutex..MutexGuard$LT$driver..src..driver..HouseT$GT$$GT$17h4af61b2e0de4b3f5E.exit": ; preds = %bb3.i.i, %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i
  ret void

terminate:                                        ; preds = %cleanup
  %30 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4core9panicking19panic_cannot_unwind17h629e1da841ab4abfE() #9
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @"_ZN3std4sync9once_lock17OnceLock$LT$T$GT$10initialize17h56ea397bceae94fbE"() unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_7 = alloca %"core::result::Result<(), !>::Ok", align 1
  %_10.i = alloca ptr, align 8
  %f.i = alloca { ptr, ptr }, align 8
  %0 = load atomic i32, ptr getelementptr inbounds (<{ [24 x i8], [4 x i8], [4 x i8] }>, ptr @_ZN6driver3src6driver9the_house9THE_HOUSE17h914c035c87421d0cE, i64 0, i32 1, i64 0) acquire, align 8, !noalias !65
  %_3.i = icmp eq i32 %0, 4
  br i1 %_3.i, label %_ZN3std4sync4once4Once15call_once_force17hbabcae90c72c24cfE.exit, label %bb2.i

bb2.i:                                            ; preds = %start
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %f.i), !noalias !65
  store ptr @_ZN6driver3src6driver9the_house9THE_HOUSE17h914c035c87421d0cE, ptr %f.i, align 8, !noalias !65
  %1 = getelementptr inbounds { ptr, ptr }, ptr %f.i, i64 0, i32 1
  store ptr %_7, ptr %1, align 8, !noalias !65
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_10.i), !noalias !65
  store ptr %f.i, ptr %_10.i, align 8, !noalias !65
  call fastcc void @_ZN3std10sys_common4once5futex4Once4call17h66fe6e3e8522ea1eE(ptr noalias noundef nonnull align 8 dereferenceable(8) %_10.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_10.i), !noalias !65
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %f.i), !noalias !65
  br label %_ZN3std4sync4once4Once15call_once_force17hbabcae90c72c24cfE.exit

_ZN3std4sync4once4Once15call_once_force17hbabcae90c72c24cfE.exit: ; preds = %bb2.i, %start
  ret void
}

; Function Attrs: cold nonlazybind uwtable
declare void @_ZN3std3sys4unix5locks11futex_mutex5Mutex14lock_contended17hebf822500a669985E(ptr noundef nonnull align 4) unnamed_addr #1

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17h3429ce5c53077a80E() unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6result13unwrap_failed17h008634a1b68516fbE(ptr noalias noundef nonnull readonly align 1, i64 noundef, ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 dereferenceable(24), ptr noalias noundef readonly align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr122drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..mutex..MutexGuard$LT$driver..src..driver..HouseT$GT$$GT$$GT$17h163e3efdba569df6E"(ptr nocapture noundef readonly %_1) unnamed_addr #0 {
start:
  %_1.val = load ptr, ptr %_1, align 8, !alias.scope !68, !nonnull !11, !align !71, !noundef !11
  %0 = getelementptr i8, ptr %_1, i64 8
  %_1.val1 = load i8, ptr %0, align 8, !range !72, !alias.scope !68, !noundef !11
  %_3.i.i = getelementptr inbounds %"std::sync::mutex::Mutex<src::driver::HouseT>", ptr %_1.val, i64 0, i32 1
  %_5.not.i.i.i = icmp eq i8 %_1.val1, 0
  br i1 %_5.not.i.i.i, label %bb2.i.i.i, label %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i

bb2.i.i.i:                                        ; preds = %start
  %1 = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h3a54c5bda48c7da9E monotonic, align 8, !noalias !73
  %_1.i.i.i.i = and i64 %1, 9223372036854775807
  %2 = icmp eq i64 %_1.i.i.i.i, 0
  br i1 %2, label %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i, label %_ZN3std9panicking11panic_count13count_is_zero17ha5671c4a6c54af4aE.exit.i.i.i

_ZN3std9panicking11panic_count13count_is_zero17ha5671c4a6c54af4aE.exit.i.i.i: ; preds = %bb2.i.i.i
  %3 = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17h3429ce5c53077a80E(), !noalias !73
  br i1 %3, label %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i, label %bb4.i.i.i

bb4.i.i.i:                                        ; preds = %_ZN3std9panicking11panic_count13count_is_zero17ha5671c4a6c54af4aE.exit.i.i.i
  store atomic i8 1, ptr %_3.i.i monotonic, align 4, !noalias !73
  br label %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i

_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i: ; preds = %bb4.i.i.i, %_ZN3std9panicking11panic_count13count_is_zero17ha5671c4a6c54af4aE.exit.i.i.i, %bb2.i.i.i, %start
  %4 = atomicrmw xchg ptr %_1.val, i32 0 release, align 4, !noalias !73
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %bb3.i.i, label %"_ZN4core3ptr84drop_in_place$LT$std..sync..mutex..MutexGuard$LT$driver..src..driver..HouseT$GT$$GT$17h4af61b2e0de4b3f5E.exit"

bb3.i.i:                                          ; preds = %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i
  tail call void @_ZN3std3sys4unix5locks11futex_mutex5Mutex4wake17heeac318d850ee859E(ptr noundef nonnull align 4 %_1.val), !noalias !73
  br label %"_ZN4core3ptr84drop_in_place$LT$std..sync..mutex..MutexGuard$LT$driver..src..driver..HouseT$GT$$GT$17h4af61b2e0de4b3f5E.exit"

"_ZN4core3ptr84drop_in_place$LT$std..sync..mutex..MutexGuard$LT$driver..src..driver..HouseT$GT$$GT$17h4af61b2e0de4b3f5E.exit": ; preds = %bb3.i.i, %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i
  ret void
}

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_ZN4core9panicking19panic_cannot_unwind17h629e1da841ab4abfE() unnamed_addr #5

; Function Attrs: cold nonlazybind uwtable
declare void @_ZN3std3sys4unix5locks11futex_mutex5Mutex4wake17heeac318d850ee859E(ptr noundef nonnull align 4) unnamed_addr #1

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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_ZN3std10sys_common4once5futex4Once4call17h66fe6e3e8522ea1eE(ptr noalias nocapture noundef readonly align 8 dereferenceable(8) %f) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_52 = alloca %"core::fmt::Arguments<'_>", align 8
  %_49 = alloca [1 x { ptr, ptr }], align 8
  %_45 = alloca %"core::fmt::Arguments<'_>", align 8
  %waiter_queue = alloca { ptr, i32 }, align 8
  br label %bb1.sink.split

bb1.sink.split:                                   ; preds = %bb14, %start
  %0 = load atomic i32, ptr getelementptr inbounds (<{ [24 x i8], [4 x i8], [4 x i8] }>, ptr @_ZN6driver3src6driver9the_house9THE_HOUSE17h914c035c87421d0cE, i64 0, i32 1, i64 0) acquire, align 8
  br label %bb1

bb1:                                              ; preds = %bb1.backedge, %bb1.sink.split
  %state.0 = phi i32 [ %0, %bb1.sink.split ], [ %state.0.be, %bb1.backedge ]
  switch i32 %state.0, label %bb2 [
    i32 1, label %bb7
    i32 0, label %bb7
    i32 4, label %bb19
    i32 2, label %bb12
    i32 3, label %bb14
  ]

bb2:                                              ; preds = %bb1
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_45)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_49)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_52)
  %1 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_52, i64 0, i32 1
  store ptr @alloc_881500f6f2f2537a234138a0bd258f81, ptr %1, align 8, !alias.scope !76
  %2 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_52, i64 0, i32 1, i32 1
  store i64 1, ptr %2, align 8, !alias.scope !76
  store ptr null, ptr %_52, align 8, !alias.scope !76
  %3 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_52, i64 0, i32 2
  store ptr @alloc_513570631223a12912d85da2bec3b15a, ptr %3, align 8, !alias.scope !76
  %4 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_52, i64 0, i32 2, i32 1
  store i64 0, ptr %4, align 8, !alias.scope !76
  store ptr %_52, ptr %_49, align 8
  %5 = getelementptr inbounds { ptr, ptr }, ptr %_49, i64 0, i32 1
  store ptr @"_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17hc7bd11f57fd9a2fcE", ptr %5, align 8
  %6 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_45, i64 0, i32 1
  store ptr @alloc_ff43bafd361d2cfe0d814a3fb2ecb1f2, ptr %6, align 8, !alias.scope !79, !noalias !82
  %7 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_45, i64 0, i32 1, i32 1
  store i64 1, ptr %7, align 8, !alias.scope !79, !noalias !82
  store ptr null, ptr %_45, align 8, !alias.scope !79, !noalias !82
  %8 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_45, i64 0, i32 2
  store ptr %_49, ptr %8, align 8, !alias.scope !79, !noalias !82
  %9 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_45, i64 0, i32 2, i32 1
  store i64 1, ptr %9, align 8, !alias.scope !79, !noalias !82
  call void @_ZN4core9panicking9panic_fmt17h8ed9ca1959946403E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_45, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_181d8f716b84c4abc0f0fa66adb97c99) #7
  unreachable

bb7:                                              ; preds = %bb1, %bb1
  %10 = cmpxchg weak ptr getelementptr inbounds (<{ [24 x i8], [4 x i8], [4 x i8] }>, ptr @_ZN6driver3src6driver9the_house9THE_HOUSE17h914c035c87421d0cE, i64 0, i32 1, i64 0), i32 %state.0, i32 2 acquire acquire, align 4
  %_8.sroa.18.0.in.i = extractvalue { i32, i1 } %10, 1
  br i1 %_8.sroa.18.0.in.i, label %bb9, label %bb1.backedge

bb19:                                             ; preds = %bb10, %bb1
  ret void

bb14:                                             ; preds = %bb12, %bb1
  %_38 = tail call noundef zeroext i1 @_ZN3std3sys4unix5futex10futex_wait17hf94d706c811ba844E(ptr noundef nonnull align 4 getelementptr inbounds (<{ [24 x i8], [4 x i8], [4 x i8] }>, ptr @_ZN6driver3src6driver9the_house9THE_HOUSE17h914c035c87421d0cE, i64 0, i32 1, i64 0), i32 noundef 3, i64 undef, i32 noundef 1000000000)
  br label %bb1.sink.split

bb12:                                             ; preds = %bb1
  %11 = cmpxchg weak ptr getelementptr inbounds (<{ [24 x i8], [4 x i8], [4 x i8] }>, ptr @_ZN6driver3src6driver9the_house9THE_HOUSE17h914c035c87421d0cE, i64 0, i32 1, i64 0), i32 2, i32 3 monotonic acquire, align 4
  %_8.sroa.18.0.in.i7 = extractvalue { i32, i1 } %11, 1
  br i1 %_8.sroa.18.0.in.i7, label %bb14, label %bb1.backedge

bb1.backedge:                                     ; preds = %bb12, %bb7
  %.pn = phi { i32, i1 } [ %11, %bb12 ], [ %10, %bb7 ]
  %state.0.be = extractvalue { i32, i1 } %.pn, 0
  br label %bb1

bb9:                                              ; preds = %bb7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %waiter_queue)
  store ptr getelementptr inbounds (<{ [24 x i8], [4 x i8], [4 x i8] }>, ptr @_ZN6driver3src6driver9the_house9THE_HOUSE17h914c035c87421d0cE, i64 0, i32 1, i64 0), ptr %waiter_queue, align 8
  %12 = getelementptr inbounds { ptr, i32 }, ptr %waiter_queue, i64 0, i32 1
  store i32 1, ptr %12, align 8
  %f.val = load ptr, ptr %f, align 8, !nonnull !11, !align !71, !noundef !11
  %13 = load ptr, ptr %f.val, align 8, !align !71, !noundef !11
  %14 = getelementptr inbounds { ptr, ptr }, ptr %f.val, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8
  store ptr null, ptr %f.val, align 8
  %16 = icmp eq ptr %13, null
  br i1 %16, label %bb2.i, label %bb10

bb2.i:                                            ; preds = %bb9
  invoke void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr noalias noundef nonnull readonly align 1 @alloc_5f55955de67e57c79064b537689facea, i64 noundef 43, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_f6a056b72b4d1e69bf49c65ae6853088) #7
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb2.i
  unreachable

cleanup:                                          ; preds = %bb2.i
  %17 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr66drop_in_place$LT$std..sys_common..once..futex..CompletionGuard$GT$17h206e12edb9e243c0E"(ptr noundef nonnull %waiter_queue) #8
          to label %bb21 unwind label %terminate

bb10:                                             ; preds = %bb9
  %18 = icmp ne ptr %15, null
  tail call void @llvm.assume(i1 %18)
  store i32 0, ptr %13, align 8
  %_17.sroa.0.sroa.4.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %13, i64 4
  store i8 0, ptr %_17.sroa.0.sroa.4.0..sroa_idx.i.i, align 4
  %_17.sroa.0.sroa.6.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %13, i64 8
  store i32 2, ptr %_17.sroa.0.sroa.6.0..sroa_idx.i.i, align 8
  %_17.sroa.0.sroa.7.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %13, i64 12
  store i32 5, ptr %_17.sroa.0.sroa.7.0..sroa_idx.i.i, align 4
  %_17.sroa.0.sroa.8.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %13, i64 16
  store double 2.500000e+00, ptr %_17.sroa.0.sroa.8.0..sroa_idx.i.i, align 8
  store i32 4, ptr %12, align 8
  call void @"_ZN87_$LT$std..sys_common..once..futex..CompletionGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17he5bfd9b4c47e6214E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %waiter_queue)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %waiter_queue)
  br label %bb19

terminate:                                        ; preds = %cleanup
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4core9panicking19panic_cannot_unwind17h629e1da841ab4abfE() #9
  unreachable

bb21:                                             ; preds = %cleanup
  resume { ptr, i32 } %17
}

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17hc7bd11f57fd9a2fcE"(ptr noalias noundef readonly align 8 dereferenceable(48), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking9panic_fmt17h8ed9ca1959946403E(ptr noalias nocapture noundef readonly dereferenceable(48), ptr noalias noundef readonly align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN3std3sys4unix5futex10futex_wait17hf94d706c811ba844E(ptr noundef nonnull align 4, i32 noundef, i64, i32 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr noalias noundef nonnull readonly align 1, i64 noundef, ptr noalias noundef readonly align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr66drop_in_place$LT$std..sys_common..once..futex..CompletionGuard$GT$17h206e12edb9e243c0E"(ptr noundef nonnull %_1) unnamed_addr #0 {
start:
  tail call void @"_ZN87_$LT$std..sys_common..once..futex..CompletionGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17he5bfd9b4c47e6214E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %_1)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nonlazybind uwtable
declare void @"_ZN87_$LT$std..sys_common..once..futex..CompletionGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17he5bfd9b4c47e6214E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr84drop_in_place$LT$std..sync..mutex..MutexGuard$LT$driver..src..driver..HouseT$GT$$GT$17h4af61b2e0de4b3f5E"(ptr %_1.0.val, i8 %_1.8.val) unnamed_addr #0 {
start:
  %0 = icmp ne ptr %_1.0.val, null
  tail call void @llvm.assume(i1 %0)
  %_3.i = getelementptr inbounds %"std::sync::mutex::Mutex<src::driver::HouseT>", ptr %_1.0.val, i64 0, i32 1
  %_5.not.i.i = icmp eq i8 %_1.8.val, 0
  br i1 %_5.not.i.i, label %bb2.i.i, label %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i

bb2.i.i:                                          ; preds = %start
  %1 = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h3a54c5bda48c7da9E monotonic, align 8, !noalias !68
  %_1.i.i.i = and i64 %1, 9223372036854775807
  %2 = icmp eq i64 %_1.i.i.i, 0
  br i1 %2, label %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i, label %_ZN3std9panicking11panic_count13count_is_zero17ha5671c4a6c54af4aE.exit.i.i

_ZN3std9panicking11panic_count13count_is_zero17ha5671c4a6c54af4aE.exit.i.i: ; preds = %bb2.i.i
  %3 = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17h3429ce5c53077a80E(), !noalias !68
  br i1 %3, label %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i, label %bb4.i.i

bb4.i.i:                                          ; preds = %_ZN3std9panicking11panic_count13count_is_zero17ha5671c4a6c54af4aE.exit.i.i
  store atomic i8 1, ptr %_3.i monotonic, align 4, !noalias !68
  br label %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i

_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i: ; preds = %bb4.i.i, %_ZN3std9panicking11panic_count13count_is_zero17ha5671c4a6c54af4aE.exit.i.i, %bb2.i.i, %start
  %4 = atomicrmw xchg ptr %_1.0.val, i32 0 release, align 4, !noalias !68
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %bb3.i, label %"_ZN79_$LT$std..sync..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7406ef8cde001e66E.exit"

bb3.i:                                            ; preds = %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i
  tail call void @_ZN3std3sys4unix5locks11futex_mutex5Mutex4wake17heeac318d850ee859E(ptr noundef nonnull align 4 %_1.0.val), !noalias !68
  br label %"_ZN79_$LT$std..sync..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7406ef8cde001e66E.exit"

"_ZN79_$LT$std..sync..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7406ef8cde001e66E.exit": ; preds = %bb3.i, %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE"(ptr noalias noundef readonly align 4 dereferenceable(4), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt5float52_$LT$impl$u20$core..fmt..Display$u20$for$u20$f64$GT$3fmt17hf64b1960e3b02756E"(ptr noalias noundef readonly align 8 dereferenceable(8), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef readonly dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
define void @run(i32 noundef %extra_bedrooms) unnamed_addr #0 {
start:
  tail call fastcc void @_ZN6driver3src6driver3run17h07a60c493f14838cE(i32 noundef %extra_bedrooms)
  ret void
}

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { noreturn }
attributes #8 = { noinline }
attributes #9 = { noinline noreturn nounwind }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!3}
!3 = distinct !{!3, !4, !"_ZN3std4sync5mutex14Mutex$LT$T$GT$4lock17he602fbb6bd54bedeE: argument 0"}
!4 = distinct !{!4, !"_ZN3std4sync5mutex14Mutex$LT$T$GT$4lock17he602fbb6bd54bedeE"}
!5 = !{!6, !3}
!6 = distinct !{!6, !7, !"_ZN3std4sync5mutex19MutexGuard$LT$T$GT$3new17h66f9ece7b372df00E: argument 0"}
!7 = distinct !{!7, !"_ZN3std4sync5mutex19MutexGuard$LT$T$GT$3new17h66f9ece7b372df00E"}
!8 = !{!9}
!9 = distinct !{!9, !10, !"_ZN6driver3src6driver9add_floor17he85eb5f3e469ae8cE: %house"}
!10 = distinct !{!10, !"_ZN6driver3src6driver9add_floor17he85eb5f3e469ae8cE"}
!11 = !{}
!12 = !{!13, !15}
!13 = distinct !{!13, !14, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h9c1b301d6b469585E: %self"}
!14 = distinct !{!14, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h9c1b301d6b469585E"}
!15 = distinct !{!15, !14, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h9c1b301d6b469585E: argument 1"}
!16 = !{!13}
!17 = !{!18}
!18 = distinct !{!18, !19, !"_ZN79_$LT$std..sync..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7406ef8cde001e66E: %self"}
!19 = distinct !{!19, !"_ZN79_$LT$std..sync..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7406ef8cde001e66E"}
!20 = !{!21}
!21 = distinct !{!21, !22, !"_ZN3std4sync5mutex14Mutex$LT$T$GT$4lock17he602fbb6bd54bedeE: argument 0"}
!22 = distinct !{!22, !"_ZN3std4sync5mutex14Mutex$LT$T$GT$4lock17he602fbb6bd54bedeE"}
!23 = !{!24, !21}
!24 = distinct !{!24, !25, !"_ZN3std4sync5mutex19MutexGuard$LT$T$GT$3new17h66f9ece7b372df00E: argument 0"}
!25 = distinct !{!25, !"_ZN3std4sync5mutex19MutexGuard$LT$T$GT$3new17h66f9ece7b372df00E"}
!26 = !{!27, !29}
!27 = distinct !{!27, !28, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h9c1b301d6b469585E: %self"}
!28 = distinct !{!28, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h9c1b301d6b469585E"}
!29 = distinct !{!29, !28, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h9c1b301d6b469585E: argument 1"}
!30 = !{!27}
!31 = !{!32}
!32 = distinct !{!32, !33, !"_ZN79_$LT$std..sync..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7406ef8cde001e66E: %self"}
!33 = distinct !{!33, !"_ZN79_$LT$std..sync..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7406ef8cde001e66E"}
!34 = !{!35}
!35 = distinct !{!35, !36, !"_ZN3std4sync5mutex14Mutex$LT$T$GT$4lock17he602fbb6bd54bedeE: argument 0"}
!36 = distinct !{!36, !"_ZN3std4sync5mutex14Mutex$LT$T$GT$4lock17he602fbb6bd54bedeE"}
!37 = !{!38, !35}
!38 = distinct !{!38, !39, !"_ZN3std4sync5mutex19MutexGuard$LT$T$GT$3new17h66f9ece7b372df00E: argument 0"}
!39 = distinct !{!39, !"_ZN3std4sync5mutex19MutexGuard$LT$T$GT$3new17h66f9ece7b372df00E"}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_ZN6driver3src6driver12add_bedrooms17h372b766cc7aab3f2E: %house"}
!42 = distinct !{!42, !"_ZN6driver3src6driver12add_bedrooms17h372b766cc7aab3f2E"}
!43 = !{!44, !46}
!44 = distinct !{!44, !45, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h9c1b301d6b469585E: %self"}
!45 = distinct !{!45, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h9c1b301d6b469585E"}
!46 = distinct !{!46, !45, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h9c1b301d6b469585E: argument 1"}
!47 = !{!44}
!48 = !{!49}
!49 = distinct !{!49, !50, !"_ZN79_$LT$std..sync..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7406ef8cde001e66E: %self"}
!50 = distinct !{!50, !"_ZN79_$LT$std..sync..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7406ef8cde001e66E"}
!51 = !{!52}
!52 = distinct !{!52, !53, !"_ZN3std4sync5mutex14Mutex$LT$T$GT$4lock17he602fbb6bd54bedeE: argument 0"}
!53 = distinct !{!53, !"_ZN3std4sync5mutex14Mutex$LT$T$GT$4lock17he602fbb6bd54bedeE"}
!54 = !{!55, !52}
!55 = distinct !{!55, !56, !"_ZN3std4sync5mutex19MutexGuard$LT$T$GT$3new17h66f9ece7b372df00E: argument 0"}
!56 = distinct !{!56, !"_ZN3std4sync5mutex19MutexGuard$LT$T$GT$3new17h66f9ece7b372df00E"}
!57 = !{!58, !60}
!58 = distinct !{!58, !59, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h9c1b301d6b469585E: %self"}
!59 = distinct !{!59, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h9c1b301d6b469585E"}
!60 = distinct !{!60, !59, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h9c1b301d6b469585E: argument 1"}
!61 = !{!58}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_ZN79_$LT$std..sync..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7406ef8cde001e66E: %self"}
!64 = distinct !{!64, !"_ZN79_$LT$std..sync..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7406ef8cde001e66E"}
!65 = !{!66}
!66 = distinct !{!66, !67, !"_ZN3std4sync4once4Once15call_once_force17hbabcae90c72c24cfE: %f.1"}
!67 = distinct !{!67, !"_ZN3std4sync4once4Once15call_once_force17hbabcae90c72c24cfE"}
!68 = !{!69}
!69 = distinct !{!69, !70, !"_ZN79_$LT$std..sync..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7406ef8cde001e66E: %self"}
!70 = distinct !{!70, !"_ZN79_$LT$std..sync..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7406ef8cde001e66E"}
!71 = !{i64 8}
!72 = !{i8 0, i8 2}
!73 = !{!74}
!74 = distinct !{!74, !75, !"_ZN79_$LT$std..sync..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7406ef8cde001e66E: %self"}
!75 = distinct !{!75, !"_ZN79_$LT$std..sync..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7406ef8cde001e66E"}
!76 = !{!77}
!77 = distinct !{!77, !78, !"_ZN4core3fmt9Arguments9new_const17h00a508d8cf4830ceE: argument 0"}
!78 = distinct !{!78, !"_ZN4core3fmt9Arguments9new_const17h00a508d8cf4830ceE"}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!81 = distinct !{!81, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!82 = !{!83}
!83 = distinct !{!83, !81, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
