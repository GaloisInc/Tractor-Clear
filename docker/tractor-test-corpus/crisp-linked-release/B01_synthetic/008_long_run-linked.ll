; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"core::sync::atomic::AtomicUsize" = type { i64 }
%"core::fmt::Arguments<'_>" = type { { ptr, i64 }, { ptr, i64 }, { ptr, i64 } }
%"core::result::Result<(), !>::Ok" = type { {} }
%"std::sync::mutex::Mutex<[i32; 262144]>" = type { %"std::sys::unix::locks::futex_mutex::Mutex", %"std::sync::poison::Flag", [3 x i8], %"core::cell::UnsafeCell<[i32; 262144]>" }
%"std::sys::unix::locks::futex_mutex::Mutex" = type { %"core::sync::atomic::AtomicU32" }
%"core::sync::atomic::AtomicU32" = type { i32 }
%"std::sync::poison::Flag" = type { %"core::sync::atomic::AtomicBool" }
%"core::sync::atomic::AtomicBool" = type { i8 }
%"core::cell::UnsafeCell<[i32; 262144]>" = type { [262144 x i32] }
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
@vtable.0 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr124drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..mutex..MutexGuard$LT$$u5b$i32$u3b$$u20$262144$u5d$$GT$$GT$$GT$17he5c6bbd851bc66faE", [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN76_$LT$std..sync..poison..PoisonError$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hfdaecf5a66a9cf7fE" }>, align 8
@alloc_8e2410b80645266732854088d21653bc = private unnamed_addr constant <{ [11 x i8] }> <{ [11 x i8] c"PoisonError" }>, align 1
@array = local_unnamed_addr global <{ [1048576 x i8] }> zeroinitializer, align 4
@alloc_ab277a5261029183f3bda9999bf31f0b = private unnamed_addr constant <{ [11 x i8] }> <{ [11 x i8] c"src/long.rs" }>, align 1
@alloc_05eb52a706307ddb3d595d19ca9b5890 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_ab277a5261029183f3bda9999bf31f0b, [16 x i8] c"\0B\00\00\00\00\00\00\00\1C\00\00\00$\00\00\00" }>, align 8
@alloc_14569e8ebe2b3d110c56606161d811f6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_ab277a5261029183f3bda9999bf31f0b, [16 x i8] c"\0B\00\00\00\00\00\00\000\00\00\00(\00\00\00" }>, align 8
@alloc_c0db78f29c7f5ba963540a45cb4966e8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_ab277a5261029183f3bda9999bf31f0b, [16 x i8] c"\0B\00\00\00\00\00\00\00?\00\00\00$\00\00\00" }>, align 8
@alloc_49a1e817e911805af64bbc7efb390101 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc_4ed11f17954caf7854f80f02ae34907e = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc_513570631223a12912d85da2bec3b15a, [8 x i8] zeroinitializer, ptr @alloc_49a1e817e911805af64bbc7efb390101, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@_ZN4long3src4long5array5ARRAY17h1d1c802f2e3a52b7E = internal global <{ [1048584 x i8], [4 x i8] }> <{ [1048584 x i8] undef, [4 x i8] zeroinitializer }>, align 4

; Function Attrs: nonlazybind uwtable
define void @long_exec(i32 noundef %seed) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %e.i41.i = alloca { ptr, i8 }, align 8
  %e.i.i = alloca { ptr, i8 }, align 8
  %_47.i = alloca [1 x { ptr, ptr }], align 8
  %_43.i = alloca %"core::fmt::Arguments<'_>", align 8
  %xor_result.i = alloca i32, align 4
  tail call void @srand(i32 noundef %seed)
  %0 = load atomic i32, ptr getelementptr inbounds (<{ [1048584 x i8], [4 x i8] }>, ptr @_ZN4long3src4long5array5ARRAY17h1d1c802f2e3a52b7E, i64 0, i32 1, i64 0) acquire, align 4
  %_2.i.not.i.i.i = icmp eq i32 %0, 4
  br i1 %_2.i.not.i.i.i, label %_ZN4long3src4long5array17hc6e60f86c17edbabE.exit.i, label %bb4.i.i.i

bb4.i.i.i:                                        ; preds = %start
  tail call fastcc void @"_ZN3std4sync9once_lock17OnceLock$LT$T$GT$10initialize17hfbfe2a6ac9941702E"()
  br label %_ZN4long3src4long5array17hc6e60f86c17edbabE.exit.i

_ZN4long3src4long5array17hc6e60f86c17edbabE.exit.i: ; preds = %bb4.i.i.i, %start
  %1 = cmpxchg ptr @_ZN4long3src4long5array5ARRAY17h1d1c802f2e3a52b7E, i32 0, i32 1 acquire monotonic, align 4, !noalias !2
  %2 = extractvalue { i32, i1 } %1, 1
  br i1 %2, label %_ZN3std3sys4unix5locks11futex_mutex5Mutex4lock17h6c52fd0f4762b066E.exit.i.i, label %bb1.i.i.i

bb1.i.i.i:                                        ; preds = %_ZN4long3src4long5array17hc6e60f86c17edbabE.exit.i
  tail call void @_ZN3std3sys4unix5locks11futex_mutex5Mutex14lock_contended17hebf822500a669985E(ptr noundef nonnull align 4 @_ZN4long3src4long5array5ARRAY17h1d1c802f2e3a52b7E), !noalias !2
  br label %_ZN3std3sys4unix5locks11futex_mutex5Mutex4lock17h6c52fd0f4762b066E.exit.i.i

_ZN3std3sys4unix5locks11futex_mutex5Mutex4lock17h6c52fd0f4762b066E.exit.i.i: ; preds = %bb1.i.i.i, %_ZN4long3src4long5array17hc6e60f86c17edbabE.exit.i
  %3 = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h3a54c5bda48c7da9E monotonic, align 8, !noalias !5
  %_1.i.i.i.i.i = and i64 %3, 9223372036854775807
  %4 = icmp eq i64 %_1.i.i.i.i.i, 0
  br i1 %4, label %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i.i, label %bb2.i.i.i.i.i

bb2.i.i.i.i.i:                                    ; preds = %_ZN3std3sys4unix5locks11futex_mutex5Mutex4lock17h6c52fd0f4762b066E.exit.i.i
  %5 = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17h3429ce5c53077a80E(), !noalias !5
  %6 = xor i1 %5, true
  %7 = zext i1 %6 to i8
  br label %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i.i

_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i.i: ; preds = %bb2.i.i.i.i.i, %_ZN3std3sys4unix5locks11futex_mutex5Mutex4lock17h6c52fd0f4762b066E.exit.i.i
  %.0.i.i.i.i.i = phi i8 [ %7, %bb2.i.i.i.i.i ], [ 0, %_ZN3std3sys4unix5locks11futex_mutex5Mutex4lock17h6c52fd0f4762b066E.exit.i.i ]
  %8 = load atomic i8, ptr getelementptr inbounds (<{ [1048584 x i8], [4 x i8] }>, ptr @_ZN4long3src4long5array5ARRAY17h1d1c802f2e3a52b7E, i64 0, i32 0, i64 4) monotonic, align 4, !noalias !5
  %.not.i.i.i = icmp eq i8 %8, 0
  br i1 %.not.i.i.i, label %bb6.i, label %bb1.i.i

bb1.i.i:                                          ; preds = %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %e.i.i), !noalias !8
  store ptr @_ZN4long3src4long5array5ARRAY17h1d1c802f2e3a52b7E, ptr %e.i.i, align 8, !noalias !8
  %9 = getelementptr inbounds { ptr, i8 }, ptr %e.i.i, i64 0, i32 1
  store i8 %.0.i.i.i.i.i, ptr %9, align 8, !noalias !8
  invoke void @_ZN4core6result13unwrap_failed17h008634a1b68516fbE(ptr noalias noundef nonnull readonly align 1 @alloc_00ae4b301f7fab8ac9617c03fcbd7274, i64 noundef 43, ptr noundef nonnull align 1 %e.i.i, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @vtable.0, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_14569e8ebe2b3d110c56606161d811f6) #10
          to label %unreachable.i.i unwind label %cleanup.i.i, !noalias !12

cleanup.i.i:                                      ; preds = %bb1.i.i
  %10 = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr124drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..mutex..MutexGuard$LT$$u5b$i32$u3b$$u20$262144$u5d$$GT$$GT$$GT$17he5c6bbd851bc66faE"(ptr noundef nonnull %e.i.i) #11
          to label %common.resume.i unwind label %terminate.i.i, !noalias !12

unreachable.i.i:                                  ; preds = %bb1.i.i
  unreachable

terminate.i.i:                                    ; preds = %cleanup.i.i
  %11 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4core9panicking19panic_cannot_unwind17h629e1da841ab4abfE() #12, !noalias !12
  unreachable

common.resume.i:                                  ; preds = %cleanup.i45.i, %cleanup.i, %cleanup.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %10, %cleanup.i.i ], [ %18, %cleanup.i ], [ %49, %cleanup.i45.i ]
  resume { ptr, i32 } %common.resume.op.i

bb10.i:                                           ; preds = %bb9.i
  %_5.not.i.i.i.i = icmp eq i8 %.0.i.i.i.i.i, 0
  br i1 %_5.not.i.i.i.i, label %bb2.i.i.i.i, label %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i.i

bb2.i.i.i.i:                                      ; preds = %bb10.i
  %12 = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h3a54c5bda48c7da9E monotonic, align 8, !noalias !13
  %_1.i.i.i.i25.i = and i64 %12, 9223372036854775807
  %13 = icmp eq i64 %_1.i.i.i.i25.i, 0
  br i1 %13, label %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i.i, label %_ZN3std9panicking11panic_count13count_is_zero17ha5671c4a6c54af4aE.exit.i.i.i.i

_ZN3std9panicking11panic_count13count_is_zero17ha5671c4a6c54af4aE.exit.i.i.i.i: ; preds = %bb2.i.i.i.i
  %14 = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17h3429ce5c53077a80E(), !noalias !13
  br i1 %14, label %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i.i, label %bb4.i.i.i.i

bb4.i.i.i.i:                                      ; preds = %_ZN3std9panicking11panic_count13count_is_zero17ha5671c4a6c54af4aE.exit.i.i.i.i
  store atomic i8 1, ptr getelementptr inbounds (<{ [1048584 x i8], [4 x i8] }>, ptr @_ZN4long3src4long5array5ARRAY17h1d1c802f2e3a52b7E, i64 0, i32 0, i64 4) monotonic, align 4, !noalias !13
  br label %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i.i

_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i.i: ; preds = %bb4.i.i.i.i, %_ZN3std9panicking11panic_count13count_is_zero17ha5671c4a6c54af4aE.exit.i.i.i.i, %bb2.i.i.i.i, %bb10.i
  %15 = atomicrmw xchg ptr @_ZN4long3src4long5array5ARRAY17h1d1c802f2e3a52b7E, i32 0 release, align 4, !noalias !13
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %bb3.i.i.i, label %bb13.i.preheader

bb13.i.preheader:                                 ; preds = %bb3.i.i.i, %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i.i
  br label %bb13.i

bb3.i.i.i:                                        ; preds = %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i.i
  tail call void @_ZN3std3sys4unix5locks11futex_mutex5Mutex4wake17heeac318d850ee859E(ptr noundef nonnull align 4 @_ZN4long3src4long5array5ARRAY17h1d1c802f2e3a52b7E), !noalias !13
  br label %bb13.i.preheader

bb6.i:                                            ; preds = %bb9.i, %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i.i
  %i.072.i = phi i64 [ %_18.i, %bb9.i ], [ 0, %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i.i ]
  %17 = invoke noundef i32 @rand()
          to label %bb9.i unwind label %cleanup.i

cleanup.i:                                        ; preds = %bb6.i
  %18 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr86drop_in_place$LT$std..sync..mutex..MutexGuard$LT$$u5b$i32$u3b$$u20$262144$u5d$$GT$$GT$17h427560d255aabf42E"(ptr nonnull @_ZN4long3src4long5array5ARRAY17h1d1c802f2e3a52b7E, i8 %.0.i.i.i.i.i) #11
          to label %common.resume.i unwind label %terminate.i

bb9.i:                                            ; preds = %bb6.i
  %19 = getelementptr inbounds [262144 x i32], ptr getelementptr inbounds (<{ [1048584 x i8], [4 x i8] }>, ptr @_ZN4long3src4long5array5ARRAY17h1d1c802f2e3a52b7E, i64 0, i32 0, i64 8), i64 0, i64 %i.072.i
  store i32 %17, ptr %19, align 4
  %_18.i = add nuw nsw i64 %i.072.i, 1
  %exitcond.not.i = icmp eq i64 %_18.i, 262144
  br i1 %exitcond.not.i, label %bb10.i, label %bb6.i

terminate.i:                                      ; preds = %cleanup.i
  %20 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN4core9panicking19panic_cannot_unwind17h629e1da841ab4abfE() #12
  unreachable

bb15.i:                                           ; preds = %bb13.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %xor_result.i)
  %21 = load atomic i32, ptr getelementptr inbounds (<{ [1048584 x i8], [4 x i8] }>, ptr @_ZN4long3src4long5array5ARRAY17h1d1c802f2e3a52b7E, i64 0, i32 1, i64 0) acquire, align 4
  %_2.i.not.i.i26.i = icmp eq i32 %21, 4
  br i1 %_2.i.not.i.i26.i, label %_ZN4long3src4long5array17hc6e60f86c17edbabE.exit28.i, label %bb4.i.i27.i

bb4.i.i27.i:                                      ; preds = %bb15.i
  tail call fastcc void @"_ZN3std4sync9once_lock17OnceLock$LT$T$GT$10initialize17hfbfe2a6ac9941702E"()
  br label %_ZN4long3src4long5array17hc6e60f86c17edbabE.exit28.i

_ZN4long3src4long5array17hc6e60f86c17edbabE.exit28.i: ; preds = %bb4.i.i27.i, %bb15.i
  %22 = cmpxchg ptr @_ZN4long3src4long5array5ARRAY17h1d1c802f2e3a52b7E, i32 0, i32 1 acquire monotonic, align 4, !noalias !16
  %23 = extractvalue { i32, i1 } %22, 1
  br i1 %23, label %_ZN3std3sys4unix5locks11futex_mutex5Mutex4lock17h6c52fd0f4762b066E.exit.i31.i, label %bb1.i.i29.i

bb1.i.i29.i:                                      ; preds = %_ZN4long3src4long5array17hc6e60f86c17edbabE.exit28.i
  tail call void @_ZN3std3sys4unix5locks11futex_mutex5Mutex14lock_contended17hebf822500a669985E(ptr noundef nonnull align 4 @_ZN4long3src4long5array5ARRAY17h1d1c802f2e3a52b7E), !noalias !16
  br label %_ZN3std3sys4unix5locks11futex_mutex5Mutex4lock17h6c52fd0f4762b066E.exit.i31.i

_ZN3std3sys4unix5locks11futex_mutex5Mutex4lock17h6c52fd0f4762b066E.exit.i31.i: ; preds = %bb1.i.i29.i, %_ZN4long3src4long5array17hc6e60f86c17edbabE.exit28.i
  %24 = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h3a54c5bda48c7da9E monotonic, align 8, !noalias !19
  %_1.i.i.i.i30.i = and i64 %24, 9223372036854775807
  %25 = icmp eq i64 %_1.i.i.i.i30.i, 0
  br i1 %25, label %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i35.i, label %bb2.i.i.i.i32.i

bb2.i.i.i.i32.i:                                  ; preds = %_ZN3std3sys4unix5locks11futex_mutex5Mutex4lock17h6c52fd0f4762b066E.exit.i31.i
  %26 = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17h3429ce5c53077a80E(), !noalias !19
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i8
  br label %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i35.i

_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i35.i: ; preds = %bb2.i.i.i.i32.i, %_ZN3std3sys4unix5locks11futex_mutex5Mutex4lock17h6c52fd0f4762b066E.exit.i31.i
  %.0.i.i.i.i33.i = phi i8 [ %28, %bb2.i.i.i.i32.i ], [ 0, %_ZN3std3sys4unix5locks11futex_mutex5Mutex4lock17h6c52fd0f4762b066E.exit.i31.i ]
  %29 = load atomic i8, ptr getelementptr inbounds (<{ [1048584 x i8], [4 x i8] }>, ptr @_ZN4long3src4long5array5ARRAY17h1d1c802f2e3a52b7E, i64 0, i32 0, i64 4) monotonic, align 4, !noalias !19
  %.not.i.i34.i = icmp eq i8 %29, 0
  br i1 %.not.i.i34.i, label %vector.body, label %bb1.i44.i

vector.body:                                      ; preds = %vector.body, %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i35.i
  %index = phi i64 [ %index.next.3, %vector.body ], [ 0, %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i35.i ]
  %vec.phi = phi <4 x i32> [ %44, %vector.body ], [ zeroinitializer, %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i35.i ]
  %vec.phi1 = phi <4 x i32> [ %45, %vector.body ], [ zeroinitializer, %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i35.i ]
  %30 = getelementptr inbounds [262144 x i32], ptr getelementptr inbounds (<{ [1048584 x i8], [4 x i8] }>, ptr @_ZN4long3src4long5array5ARRAY17h1d1c802f2e3a52b7E, i64 0, i32 0, i64 8), i64 0, i64 %index
  %wide.load = load <4 x i32>, ptr %30, align 4
  %31 = getelementptr inbounds i32, ptr %30, i64 4
  %wide.load2 = load <4 x i32>, ptr %31, align 4
  %32 = xor <4 x i32> %wide.load, %vec.phi
  %33 = xor <4 x i32> %wide.load2, %vec.phi1
  %index.next = or i64 %index, 8
  %34 = getelementptr inbounds [262144 x i32], ptr getelementptr inbounds (<{ [1048584 x i8], [4 x i8] }>, ptr @_ZN4long3src4long5array5ARRAY17h1d1c802f2e3a52b7E, i64 0, i32 0, i64 8), i64 0, i64 %index.next
  %wide.load.1 = load <4 x i32>, ptr %34, align 4
  %35 = getelementptr inbounds i32, ptr %34, i64 4
  %wide.load2.1 = load <4 x i32>, ptr %35, align 4
  %36 = xor <4 x i32> %wide.load.1, %32
  %37 = xor <4 x i32> %wide.load2.1, %33
  %index.next.1 = or i64 %index, 16
  %38 = getelementptr inbounds [262144 x i32], ptr getelementptr inbounds (<{ [1048584 x i8], [4 x i8] }>, ptr @_ZN4long3src4long5array5ARRAY17h1d1c802f2e3a52b7E, i64 0, i32 0, i64 8), i64 0, i64 %index.next.1
  %wide.load.2 = load <4 x i32>, ptr %38, align 4
  %39 = getelementptr inbounds i32, ptr %38, i64 4
  %wide.load2.2 = load <4 x i32>, ptr %39, align 4
  %40 = xor <4 x i32> %wide.load.2, %36
  %41 = xor <4 x i32> %wide.load2.2, %37
  %index.next.2 = or i64 %index, 24
  %42 = getelementptr inbounds [262144 x i32], ptr getelementptr inbounds (<{ [1048584 x i8], [4 x i8] }>, ptr @_ZN4long3src4long5array5ARRAY17h1d1c802f2e3a52b7E, i64 0, i32 0, i64 8), i64 0, i64 %index.next.2
  %wide.load.3 = load <4 x i32>, ptr %42, align 4
  %43 = getelementptr inbounds i32, ptr %42, i64 4
  %wide.load2.3 = load <4 x i32>, ptr %43, align 4
  %44 = xor <4 x i32> %wide.load.3, %40
  %45 = xor <4 x i32> %wide.load2.3, %41
  %index.next.3 = add nuw nsw i64 %index, 32
  %46 = icmp eq i64 %index.next.3, 262144
  br i1 %46, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %bin.rdx = xor <4 x i32> %45, %44
  %47 = tail call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %bin.rdx)
  store i32 %47, ptr %xor_result.i, align 4
  %_5.not.i.i.i51.i = icmp eq i8 %.0.i.i.i.i33.i, 0
  br i1 %_5.not.i.i.i51.i, label %bb2.i.i.i53.i, label %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i56.i

bb1.i44.i:                                        ; preds = %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i35.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %e.i41.i), !noalias !25
  store ptr @_ZN4long3src4long5array5ARRAY17h1d1c802f2e3a52b7E, ptr %e.i41.i, align 8, !noalias !25
  %48 = getelementptr inbounds { ptr, i8 }, ptr %e.i41.i, i64 0, i32 1
  store i8 %.0.i.i.i.i33.i, ptr %48, align 8, !noalias !25
  invoke void @_ZN4core6result13unwrap_failed17h008634a1b68516fbE(ptr noalias noundef nonnull readonly align 1 @alloc_00ae4b301f7fab8ac9617c03fcbd7274, i64 noundef 43, ptr noundef nonnull align 1 %e.i41.i, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @vtable.0, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_c0db78f29c7f5ba963540a45cb4966e8) #10
          to label %unreachable.i46.i unwind label %cleanup.i45.i, !noalias !29

cleanup.i45.i:                                    ; preds = %bb1.i44.i
  %49 = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr124drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..mutex..MutexGuard$LT$$u5b$i32$u3b$$u20$262144$u5d$$GT$$GT$$GT$17he5c6bbd851bc66faE"(ptr noundef nonnull %e.i41.i) #11
          to label %common.resume.i unwind label %terminate.i47.i, !noalias !29

unreachable.i46.i:                                ; preds = %bb1.i44.i
  unreachable

terminate.i47.i:                                  ; preds = %cleanup.i45.i
  %50 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4core9panicking19panic_cannot_unwind17h629e1da841ab4abfE() #12, !noalias !29
  unreachable

bb13.i:                                           ; preds = %bb13.i, %bb13.i.preheader
  %i_0.073.i = phi i32 [ %51, %bb13.i ], [ 0, %bb13.i.preheader ]
  tail call fastcc void @_ZN4long3src4long28perform_expensive_operations17h9bb86f9504b5d227E()
  %51 = add nuw nsw i32 %i_0.073.i, 1
  %exitcond76.not.i = icmp eq i32 %51, 2000
  br i1 %exitcond76.not.i, label %bb15.i, label %bb13.i

bb2.i.i.i53.i:                                    ; preds = %middle.block
  %52 = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h3a54c5bda48c7da9E monotonic, align 8, !noalias !30
  %_1.i.i.i.i52.i = and i64 %52, 9223372036854775807
  %53 = icmp eq i64 %_1.i.i.i.i52.i, 0
  br i1 %53, label %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i56.i, label %_ZN3std9panicking11panic_count13count_is_zero17ha5671c4a6c54af4aE.exit.i.i.i54.i

_ZN3std9panicking11panic_count13count_is_zero17ha5671c4a6c54af4aE.exit.i.i.i54.i: ; preds = %bb2.i.i.i53.i
  %54 = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17h3429ce5c53077a80E(), !noalias !30
  br i1 %54, label %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i56.i, label %bb4.i.i.i55.i

bb4.i.i.i55.i:                                    ; preds = %_ZN3std9panicking11panic_count13count_is_zero17ha5671c4a6c54af4aE.exit.i.i.i54.i
  store atomic i8 1, ptr getelementptr inbounds (<{ [1048584 x i8], [4 x i8] }>, ptr @_ZN4long3src4long5array5ARRAY17h1d1c802f2e3a52b7E, i64 0, i32 0, i64 4) monotonic, align 4, !noalias !30
  br label %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i56.i

_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i56.i: ; preds = %bb4.i.i.i55.i, %_ZN3std9panicking11panic_count13count_is_zero17ha5671c4a6c54af4aE.exit.i.i.i54.i, %bb2.i.i.i53.i, %middle.block
  %55 = atomicrmw xchg ptr @_ZN4long3src4long5array5ARRAY17h1d1c802f2e3a52b7E, i32 0 release, align 4, !noalias !30
  %56 = icmp eq i32 %55, 2
  br i1 %56, label %bb3.i.i57.i, label %_ZN4long3src4long9long_exec17ha9d53a7d21392381E.exit

bb3.i.i57.i:                                      ; preds = %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i56.i
  tail call void @_ZN3std3sys4unix5locks11futex_mutex5Mutex4wake17heeac318d850ee859E(ptr noundef nonnull align 4 @_ZN4long3src4long5array5ARRAY17h1d1c802f2e3a52b7E), !noalias !30
  br label %_ZN4long3src4long9long_exec17ha9d53a7d21392381E.exit

_ZN4long3src4long9long_exec17ha9d53a7d21392381E.exit: ; preds = %bb3.i.i57.i, %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i56.i
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_43.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_47.i)
  store ptr %xor_result.i, ptr %_47.i, align 8
  %57 = getelementptr inbounds { ptr, ptr }, ptr %_47.i, i64 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %57, align 8
  %58 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_43.i, i64 0, i32 1
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %58, align 8, !alias.scope !33, !noalias !36
  %59 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_43.i, i64 0, i32 1, i32 1
  store i64 2, ptr %59, align 8, !alias.scope !33, !noalias !36
  store ptr null, ptr %_43.i, align 8, !alias.scope !33, !noalias !36
  %60 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_43.i, i64 0, i32 2
  store ptr %_47.i, ptr %60, align 8, !alias.scope !33, !noalias !36
  %61 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_43.i, i64 0, i32 2, i32 1
  store i64 1, ptr %61, align 8, !alias.scope !33, !noalias !36
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_43.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_43.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_47.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xor_result.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
declare noundef i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @srand(i32 noundef) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @"_ZN3std4sync9once_lock17OnceLock$LT$T$GT$10initialize17hfbfe2a6ac9941702E"() unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_7 = alloca %"core::result::Result<(), !>::Ok", align 1
  %_10.i = alloca ptr, align 8
  %f.i = alloca { ptr, ptr }, align 8
  %0 = load atomic i32, ptr getelementptr inbounds (<{ [1048584 x i8], [4 x i8] }>, ptr @_ZN4long3src4long5array5ARRAY17h1d1c802f2e3a52b7E, i64 0, i32 1, i64 0) acquire, align 4, !noalias !39
  %_3.i = icmp eq i32 %0, 4
  br i1 %_3.i, label %_ZN3std4sync4once4Once15call_once_force17hd0a920c9585c54fdE.exit, label %bb2.i

bb2.i:                                            ; preds = %start
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %f.i), !noalias !39
  store ptr @_ZN4long3src4long5array5ARRAY17h1d1c802f2e3a52b7E, ptr %f.i, align 8, !noalias !39
  %1 = getelementptr inbounds { ptr, ptr }, ptr %f.i, i64 0, i32 1
  store ptr %_7, ptr %1, align 8, !noalias !39
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_10.i), !noalias !39
  store ptr %f.i, ptr %_10.i, align 8, !noalias !39
  call fastcc void @_ZN3std10sys_common4once5futex4Once4call17h42451eea11986e91E(ptr noalias noundef nonnull align 8 dereferenceable(8) %_10.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_10.i), !noalias !39
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %f.i), !noalias !39
  br label %_ZN3std4sync4once4Once15call_once_force17hd0a920c9585c54fdE.exit

_ZN3std4sync4once4Once15call_once_force17hd0a920c9585c54fdE.exit: ; preds = %bb2.i, %start
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
define internal void @"_ZN4core3ptr124drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..mutex..MutexGuard$LT$$u5b$i32$u3b$$u20$262144$u5d$$GT$$GT$$GT$17he5c6bbd851bc66faE"(ptr nocapture noundef readonly %_1) unnamed_addr #0 {
start:
  %_1.val = load ptr, ptr %_1, align 8, !alias.scope !42, !nonnull !45, !align !46, !noundef !45
  %0 = getelementptr i8, ptr %_1, i64 8
  %_1.val1 = load i8, ptr %0, align 8, !range !47, !alias.scope !42, !noundef !45
  %_3.i.i = getelementptr inbounds %"std::sync::mutex::Mutex<[i32; 262144]>", ptr %_1.val, i64 0, i32 1
  %_5.not.i.i.i = icmp eq i8 %_1.val1, 0
  br i1 %_5.not.i.i.i, label %bb2.i.i.i, label %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i

bb2.i.i.i:                                        ; preds = %start
  %1 = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h3a54c5bda48c7da9E monotonic, align 8, !noalias !48
  %_1.i.i.i.i = and i64 %1, 9223372036854775807
  %2 = icmp eq i64 %_1.i.i.i.i, 0
  br i1 %2, label %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i, label %_ZN3std9panicking11panic_count13count_is_zero17ha5671c4a6c54af4aE.exit.i.i.i

_ZN3std9panicking11panic_count13count_is_zero17ha5671c4a6c54af4aE.exit.i.i.i: ; preds = %bb2.i.i.i
  %3 = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17h3429ce5c53077a80E(), !noalias !48
  br i1 %3, label %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i, label %bb4.i.i.i

bb4.i.i.i:                                        ; preds = %_ZN3std9panicking11panic_count13count_is_zero17ha5671c4a6c54af4aE.exit.i.i.i
  store atomic i8 1, ptr %_3.i.i monotonic, align 4, !noalias !48
  br label %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i

_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i: ; preds = %bb4.i.i.i, %_ZN3std9panicking11panic_count13count_is_zero17ha5671c4a6c54af4aE.exit.i.i.i, %bb2.i.i.i, %start
  %4 = atomicrmw xchg ptr %_1.val, i32 0 release, align 4, !noalias !48
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %bb3.i.i, label %"_ZN4core3ptr86drop_in_place$LT$std..sync..mutex..MutexGuard$LT$$u5b$i32$u3b$$u20$262144$u5d$$GT$$GT$17h427560d255aabf42E.exit"

bb3.i.i:                                          ; preds = %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i
  tail call void @_ZN3std3sys4unix5locks11futex_mutex5Mutex4wake17heeac318d850ee859E(ptr noundef nonnull align 4 %_1.val), !noalias !48
  br label %"_ZN4core3ptr86drop_in_place$LT$std..sync..mutex..MutexGuard$LT$$u5b$i32$u3b$$u20$262144$u5d$$GT$$GT$17h427560d255aabf42E.exit"

"_ZN4core3ptr86drop_in_place$LT$std..sync..mutex..MutexGuard$LT$$u5b$i32$u3b$$u20$262144$u5d$$GT$$GT$17h427560d255aabf42E.exit": ; preds = %bb3.i.i, %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i
  ret void
}

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_ZN4core9panicking19panic_cannot_unwind17h629e1da841ab4abfE() unnamed_addr #5

; Function Attrs: cold nonlazybind uwtable
declare void @_ZN3std3sys4unix5locks11futex_mutex5Mutex4wake17heeac318d850ee859E(ptr noundef nonnull align 4) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef i32 @rand() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr86drop_in_place$LT$std..sync..mutex..MutexGuard$LT$$u5b$i32$u3b$$u20$262144$u5d$$GT$$GT$17h427560d255aabf42E"(ptr %_1.0.val, i8 %_1.8.val) unnamed_addr #0 {
start:
  %0 = icmp ne ptr %_1.0.val, null
  tail call void @llvm.assume(i1 %0)
  %_3.i = getelementptr inbounds %"std::sync::mutex::Mutex<[i32; 262144]>", ptr %_1.0.val, i64 0, i32 1
  %_5.not.i.i = icmp eq i8 %_1.8.val, 0
  br i1 %_5.not.i.i, label %bb2.i.i, label %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i

bb2.i.i:                                          ; preds = %start
  %1 = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h3a54c5bda48c7da9E monotonic, align 8, !noalias !42
  %_1.i.i.i = and i64 %1, 9223372036854775807
  %2 = icmp eq i64 %_1.i.i.i, 0
  br i1 %2, label %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i, label %_ZN3std9panicking11panic_count13count_is_zero17ha5671c4a6c54af4aE.exit.i.i

_ZN3std9panicking11panic_count13count_is_zero17ha5671c4a6c54af4aE.exit.i.i: ; preds = %bb2.i.i
  %3 = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17h3429ce5c53077a80E(), !noalias !42
  br i1 %3, label %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i, label %bb4.i.i

bb4.i.i:                                          ; preds = %_ZN3std9panicking11panic_count13count_is_zero17ha5671c4a6c54af4aE.exit.i.i
  store atomic i8 1, ptr %_3.i monotonic, align 4, !noalias !42
  br label %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i

_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i: ; preds = %bb4.i.i, %_ZN3std9panicking11panic_count13count_is_zero17ha5671c4a6c54af4aE.exit.i.i, %bb2.i.i, %start
  %4 = atomicrmw xchg ptr %_1.0.val, i32 0 release, align 4, !noalias !42
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %bb3.i, label %"_ZN79_$LT$std..sync..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd3177f14bfdc0e2bE.exit"

bb3.i:                                            ; preds = %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i
  tail call void @_ZN3std3sys4unix5locks11futex_mutex5Mutex4wake17heeac318d850ee859E(ptr noundef nonnull align 4 %_1.0.val), !noalias !42
  br label %"_ZN79_$LT$std..sync..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd3177f14bfdc0e2bE.exit"

"_ZN79_$LT$std..sync..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd3177f14bfdc0e2bE.exit": ; preds = %bb3.i, %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.xor.v4i32(<4 x i32>) #6

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4long3src4long28perform_expensive_operations17h9bb86f9504b5d227E() unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %e.i = alloca { ptr, i8 }, align 8
  %0 = load atomic i32, ptr getelementptr inbounds (<{ [1048584 x i8], [4 x i8] }>, ptr @_ZN4long3src4long5array5ARRAY17h1d1c802f2e3a52b7E, i64 0, i32 1, i64 0) acquire, align 4
  %_2.i.not.i.i = icmp eq i32 %0, 4
  br i1 %_2.i.not.i.i, label %_ZN4long3src4long5array17hc6e60f86c17edbabE.exit, label %bb4.i.i

bb4.i.i:                                          ; preds = %start
  tail call fastcc void @"_ZN3std4sync9once_lock17OnceLock$LT$T$GT$10initialize17hfbfe2a6ac9941702E"()
  br label %_ZN4long3src4long5array17hc6e60f86c17edbabE.exit

_ZN4long3src4long5array17hc6e60f86c17edbabE.exit: ; preds = %bb4.i.i, %start
  %1 = cmpxchg ptr @_ZN4long3src4long5array5ARRAY17h1d1c802f2e3a52b7E, i32 0, i32 1 acquire monotonic, align 4, !noalias !51
  %2 = extractvalue { i32, i1 } %1, 1
  br i1 %2, label %_ZN3std3sys4unix5locks11futex_mutex5Mutex4lock17h6c52fd0f4762b066E.exit.i, label %bb1.i.i

bb1.i.i:                                          ; preds = %_ZN4long3src4long5array17hc6e60f86c17edbabE.exit
  tail call void @_ZN3std3sys4unix5locks11futex_mutex5Mutex14lock_contended17hebf822500a669985E(ptr noundef nonnull align 4 @_ZN4long3src4long5array5ARRAY17h1d1c802f2e3a52b7E), !noalias !51
  br label %_ZN3std3sys4unix5locks11futex_mutex5Mutex4lock17h6c52fd0f4762b066E.exit.i

_ZN3std3sys4unix5locks11futex_mutex5Mutex4lock17h6c52fd0f4762b066E.exit.i: ; preds = %bb1.i.i, %_ZN4long3src4long5array17hc6e60f86c17edbabE.exit
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
  %8 = load atomic i8, ptr getelementptr inbounds (<{ [1048584 x i8], [4 x i8] }>, ptr @_ZN4long3src4long5array5ARRAY17h1d1c802f2e3a52b7E, i64 0, i32 0, i64 4) monotonic, align 4, !noalias !54
  %.not.i.i = icmp eq i8 %8, 0
  br i1 %.not.i.i, label %bb7, label %bb1.i

bb1.i:                                            ; preds = %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %e.i), !noalias !57
  store ptr @_ZN4long3src4long5array5ARRAY17h1d1c802f2e3a52b7E, ptr %e.i, align 8, !noalias !57
  %9 = getelementptr inbounds { ptr, i8 }, ptr %e.i, i64 0, i32 1
  store i8 %.0.i.i.i.i, ptr %9, align 8, !noalias !57
  invoke void @_ZN4core6result13unwrap_failed17h008634a1b68516fbE(ptr noalias noundef nonnull readonly align 1 @alloc_00ae4b301f7fab8ac9617c03fcbd7274, i64 noundef 43, ptr noundef nonnull align 1 %e.i, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @vtable.0, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_05eb52a706307ddb3d595d19ca9b5890) #10
          to label %unreachable.i unwind label %cleanup.i, !noalias !61

cleanup.i:                                        ; preds = %bb1.i
  %10 = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr124drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..mutex..MutexGuard$LT$$u5b$i32$u3b$$u20$262144$u5d$$GT$$GT$$GT$17he5c6bbd851bc66faE"(ptr noundef nonnull %e.i) #11
          to label %bb5.i unwind label %terminate.i, !noalias !61

unreachable.i:                                    ; preds = %bb1.i
  unreachable

terminate.i:                                      ; preds = %cleanup.i
  %11 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4core9panicking19panic_cannot_unwind17h629e1da841ab4abfE() #12, !noalias !61
  unreachable

bb5.i:                                            ; preds = %cleanup.i
  resume { ptr, i32 } %10

bb13:                                             ; preds = %bb12
  %_5.not.i.i.i = icmp eq i8 %.0.i.i.i.i, 0
  br i1 %_5.not.i.i.i, label %bb2.i.i.i, label %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i

bb2.i.i.i:                                        ; preds = %bb13
  %12 = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h3a54c5bda48c7da9E monotonic, align 8, !noalias !62
  %_1.i.i.i.i21 = and i64 %12, 9223372036854775807
  %13 = icmp eq i64 %_1.i.i.i.i21, 0
  br i1 %13, label %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i, label %_ZN3std9panicking11panic_count13count_is_zero17ha5671c4a6c54af4aE.exit.i.i.i

_ZN3std9panicking11panic_count13count_is_zero17ha5671c4a6c54af4aE.exit.i.i.i: ; preds = %bb2.i.i.i
  %14 = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17h3429ce5c53077a80E(), !noalias !62
  br i1 %14, label %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i, label %bb4.i.i.i

bb4.i.i.i:                                        ; preds = %_ZN3std9panicking11panic_count13count_is_zero17ha5671c4a6c54af4aE.exit.i.i.i
  store atomic i8 1, ptr getelementptr inbounds (<{ [1048584 x i8], [4 x i8] }>, ptr @_ZN4long3src4long5array5ARRAY17h1d1c802f2e3a52b7E, i64 0, i32 0, i64 4) monotonic, align 4, !noalias !62
  br label %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i

_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i: ; preds = %bb4.i.i.i, %_ZN3std9panicking11panic_count13count_is_zero17ha5671c4a6c54af4aE.exit.i.i.i, %bb2.i.i.i, %bb13
  %15 = atomicrmw xchg ptr @_ZN4long3src4long5array5ARRAY17h1d1c802f2e3a52b7E, i32 0 release, align 4, !noalias !62
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %bb3.i.i, label %"_ZN4core3ptr86drop_in_place$LT$std..sync..mutex..MutexGuard$LT$$u5b$i32$u3b$$u20$262144$u5d$$GT$$GT$17h427560d255aabf42E.exit"

bb3.i.i:                                          ; preds = %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i
  tail call void @_ZN3std3sys4unix5locks11futex_mutex5Mutex4wake17heeac318d850ee859E(ptr noundef nonnull align 4 @_ZN4long3src4long5array5ARRAY17h1d1c802f2e3a52b7E), !noalias !62
  br label %"_ZN4core3ptr86drop_in_place$LT$std..sync..mutex..MutexGuard$LT$$u5b$i32$u3b$$u20$262144$u5d$$GT$$GT$17h427560d255aabf42E.exit"

"_ZN4core3ptr86drop_in_place$LT$std..sync..mutex..MutexGuard$LT$$u5b$i32$u3b$$u20$262144$u5d$$GT$$GT$17h427560d255aabf42E.exit": ; preds = %bb3.i.i, %_ZN3std4sync6poison4Flag4done17h5022d2ee3d5965afE.exit.i.i
  ret void

bb7:                                              ; preds = %bb12, %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i
  %i.031 = phi i64 [ %_37, %bb12 ], [ 0, %_ZN3std4sync6poison4Flag5guard17h25574ff39ce2ce03E.exit.i.i ]
  %17 = getelementptr inbounds [262144 x i32], ptr getelementptr inbounds (<{ [1048584 x i8], [4 x i8] }>, ptr @_ZN4long3src4long5array5ARRAY17h1d1c802f2e3a52b7E, i64 0, i32 0, i64 8), i64 0, i64 %i.031
  %18 = load i32, ptr %17, align 4, !noundef !45
  br label %bb9

bb9:                                              ; preds = %bb9, %bb7
  %x.030 = phi i32 [ %18, %bb7 ], [ %20, %bb9 ]
  %j.029 = phi i32 [ 0, %bb7 ], [ %21, %bb9 ]
  %self1 = mul i32 %x.030, 3
  %_18 = add i32 %self1, 7
  %_21 = ashr i32 %_18, 3
  %19 = xor i32 %_21, %_18
  %_23 = sub i32 0, %19
  %_27 = sdiv i32 %_23, 2
  %_29 = srem i32 %_23, 7
  %20 = add nsw i32 %_27, %_29
  %21 = add nuw nsw i32 %j.029, 1
  %exitcond.not = icmp eq i32 %21, 100
  br i1 %exitcond.not, label %bb12, label %bb9

bb12:                                             ; preds = %bb9
  store i32 %20, ptr %17, align 4
  %_37 = add nuw nsw i64 %i.031, 1
  %exitcond32.not = icmp eq i64 %_37, 262144
  br i1 %exitcond32.not, label %bb13, label %bb7
}

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE"(ptr noalias noundef readonly align 4 dereferenceable(4), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef readonly dereferenceable(48)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN76_$LT$std..sync..poison..PoisonError$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hfdaecf5a66a9cf7fE"(ptr noalias nocapture readonly align 8 %self, ptr noalias noundef align 8 dereferenceable(64) %f) unnamed_addr #0 {
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

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_ZN3std10sys_common4once5futex4Once4call17h42451eea11986e91E(ptr noalias nocapture noundef readonly align 8 dereferenceable(8) %f) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %_2.sroa.5.i.i.i = alloca [1048579 x i8], align 1
  %_17.sroa.0.sroa.5.i.i = alloca [1048579 x i8], align 1
  %_52 = alloca %"core::fmt::Arguments<'_>", align 8
  %_49 = alloca [1 x { ptr, ptr }], align 8
  %_45 = alloca %"core::fmt::Arguments<'_>", align 8
  %waiter_queue = alloca { ptr, i32 }, align 8
  br label %bb1.sink.split

bb1.sink.split:                                   ; preds = %bb14, %start
  %0 = load atomic i32, ptr getelementptr inbounds (<{ [1048584 x i8], [4 x i8] }>, ptr @_ZN4long3src4long5array5ARRAY17h1d1c802f2e3a52b7E, i64 0, i32 1, i64 0) acquire, align 4
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
  store ptr @alloc_881500f6f2f2537a234138a0bd258f81, ptr %1, align 8, !alias.scope !65
  %2 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_52, i64 0, i32 1, i32 1
  store i64 1, ptr %2, align 8, !alias.scope !65
  store ptr null, ptr %_52, align 8, !alias.scope !65
  %3 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_52, i64 0, i32 2
  store ptr @alloc_513570631223a12912d85da2bec3b15a, ptr %3, align 8, !alias.scope !65
  %4 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_52, i64 0, i32 2, i32 1
  store i64 0, ptr %4, align 8, !alias.scope !65
  store ptr %_52, ptr %_49, align 8
  %5 = getelementptr inbounds { ptr, ptr }, ptr %_49, i64 0, i32 1
  store ptr @"_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17hc7bd11f57fd9a2fcE", ptr %5, align 8
  %6 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_45, i64 0, i32 1
  store ptr @alloc_ff43bafd361d2cfe0d814a3fb2ecb1f2, ptr %6, align 8, !alias.scope !68, !noalias !71
  %7 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_45, i64 0, i32 1, i32 1
  store i64 1, ptr %7, align 8, !alias.scope !68, !noalias !71
  store ptr null, ptr %_45, align 8, !alias.scope !68, !noalias !71
  %8 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_45, i64 0, i32 2
  store ptr %_49, ptr %8, align 8, !alias.scope !68, !noalias !71
  %9 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_45, i64 0, i32 2, i32 1
  store i64 1, ptr %9, align 8, !alias.scope !68, !noalias !71
  call void @_ZN4core9panicking9panic_fmt17h8ed9ca1959946403E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_45, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_181d8f716b84c4abc0f0fa66adb97c99) #10
  unreachable

bb7:                                              ; preds = %bb1, %bb1
  %10 = cmpxchg weak ptr getelementptr inbounds (<{ [1048584 x i8], [4 x i8] }>, ptr @_ZN4long3src4long5array5ARRAY17h1d1c802f2e3a52b7E, i64 0, i32 1, i64 0), i32 %state.0, i32 2 acquire acquire, align 4
  %_8.sroa.18.0.in.i = extractvalue { i32, i1 } %10, 1
  br i1 %_8.sroa.18.0.in.i, label %bb9, label %bb1.backedge

bb19:                                             ; preds = %bb10, %bb1
  ret void

bb14:                                             ; preds = %bb12, %bb1
  %_38 = tail call noundef zeroext i1 @_ZN3std3sys4unix5futex10futex_wait17hf94d706c811ba844E(ptr noundef nonnull align 4 getelementptr inbounds (<{ [1048584 x i8], [4 x i8] }>, ptr @_ZN4long3src4long5array5ARRAY17h1d1c802f2e3a52b7E, i64 0, i32 1, i64 0), i32 noundef 3, i64 undef, i32 noundef 1000000000)
  br label %bb1.sink.split

bb12:                                             ; preds = %bb1
  %11 = cmpxchg weak ptr getelementptr inbounds (<{ [1048584 x i8], [4 x i8] }>, ptr @_ZN4long3src4long5array5ARRAY17h1d1c802f2e3a52b7E, i64 0, i32 1, i64 0), i32 2, i32 3 monotonic acquire, align 4
  %_8.sroa.18.0.in.i7 = extractvalue { i32, i1 } %11, 1
  br i1 %_8.sroa.18.0.in.i7, label %bb14, label %bb1.backedge

bb1.backedge:                                     ; preds = %bb12, %bb7
  %.pn = phi { i32, i1 } [ %11, %bb12 ], [ %10, %bb7 ]
  %state.0.be = extractvalue { i32, i1 } %.pn, 0
  br label %bb1

bb9:                                              ; preds = %bb7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %waiter_queue)
  store ptr getelementptr inbounds (<{ [1048584 x i8], [4 x i8] }>, ptr @_ZN4long3src4long5array5ARRAY17h1d1c802f2e3a52b7E, i64 0, i32 1, i64 0), ptr %waiter_queue, align 8
  %12 = getelementptr inbounds { ptr, i32 }, ptr %waiter_queue, i64 0, i32 1
  store i32 1, ptr %12, align 8
  %f.val = load ptr, ptr %f, align 8, !nonnull !45, !align !74, !noundef !45
  %13 = load ptr, ptr %f.val, align 8, !align !46, !noundef !45
  %14 = getelementptr inbounds { ptr, ptr }, ptr %f.val, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8
  store ptr null, ptr %f.val, align 8
  %16 = icmp eq ptr %13, null
  br i1 %16, label %bb2.i, label %bb10

bb2.i:                                            ; preds = %bb9
  invoke void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr noalias noundef nonnull readonly align 1 @alloc_5f55955de67e57c79064b537689facea, i64 noundef 43, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_f6a056b72b4d1e69bf49c65ae6853088) #10
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb2.i
  unreachable

cleanup:                                          ; preds = %bb2.i
  %17 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr66drop_in_place$LT$std..sys_common..once..futex..CompletionGuard$GT$17hf39e0984dbf51876E"(ptr noundef nonnull %waiter_queue) #11
          to label %bb21 unwind label %terminate

bb10:                                             ; preds = %bb9
  %18 = icmp ne ptr %15, null
  tail call void @llvm.assume(i1 %18)
  call void @llvm.lifetime.start.p0(i64 1048579, ptr nonnull %_2.sroa.5.i.i.i)
  %_2.sroa.5.i.i.i.3.sroa_idx = getelementptr inbounds i8, ptr %_2.sroa.5.i.i.i, i64 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1048576) %_2.sroa.5.i.i.i.3.sroa_idx, i8 0, i64 1048576, i1 false), !alias.scope !75, !noalias !78
  call void @llvm.lifetime.start.p0(i64 1048579, ptr nonnull %_17.sroa.0.sroa.5.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1048579) %_17.sroa.0.sroa.5.i.i, ptr noundef nonnull align 1 dereferenceable(1048579) %_2.sroa.5.i.i.i, i64 1048579, i1 false)
  call void @llvm.lifetime.end.p0(i64 1048579, ptr nonnull %_2.sroa.5.i.i.i)
  store i32 0, ptr %13, align 4
  %_17.sroa.0.sroa.4.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %13, i64 4
  store i8 0, ptr %_17.sroa.0.sroa.4.0..sroa_idx.i.i, align 4
  %_17.sroa.0.sroa.5.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %13, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1048579) %_17.sroa.0.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(1048579) %_17.sroa.0.sroa.5.i.i, i64 1048579, i1 false)
  call void @llvm.lifetime.end.p0(i64 1048579, ptr nonnull %_17.sroa.0.sroa.5.i.i)
  store i32 4, ptr %12, align 8
  call void @"_ZN87_$LT$std..sys_common..once..futex..CompletionGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17he5bfd9b4c47e6214E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %waiter_queue)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %waiter_queue)
  br label %bb19

terminate:                                        ; preds = %cleanup
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4core9panicking19panic_cannot_unwind17h629e1da841ab4abfE() #12
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
define internal fastcc void @"_ZN4core3ptr66drop_in_place$LT$std..sys_common..once..futex..CompletionGuard$GT$17hf39e0984dbf51876E"(ptr noundef nonnull %_1) unnamed_addr #0 {
start:
  tail call void @"_ZN87_$LT$std..sys_common..once..futex..CompletionGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17he5bfd9b4c47e6214E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %_1)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: nonlazybind uwtable
declare void @"_ZN87_$LT$std..sys_common..once..futex..CompletionGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17he5bfd9b4c47e6214E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
define void @perform_expensive_operations() unnamed_addr #0 {
start:
  tail call fastcc void @_ZN4long3src4long28perform_expensive_operations17h9bb86f9504b5d227E()
  ret void
}

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { noreturn }
attributes #11 = { noinline }
attributes #12 = { noinline noreturn nounwind }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!3}
!3 = distinct !{!3, !4, !"_ZN3std4sync5mutex14Mutex$LT$T$GT$4lock17h656f807849b3d5ddE: argument 0"}
!4 = distinct !{!4, !"_ZN3std4sync5mutex14Mutex$LT$T$GT$4lock17h656f807849b3d5ddE"}
!5 = !{!6, !3}
!6 = distinct !{!6, !7, !"_ZN3std4sync5mutex19MutexGuard$LT$T$GT$3new17h76b789839023e28eE: argument 0"}
!7 = distinct !{!7, !"_ZN3std4sync5mutex19MutexGuard$LT$T$GT$3new17h76b789839023e28eE"}
!8 = !{!9, !11}
!9 = distinct !{!9, !10, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h98d75e2cadef47b1E: %self"}
!10 = distinct !{!10, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h98d75e2cadef47b1E"}
!11 = distinct !{!11, !10, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h98d75e2cadef47b1E: argument 1"}
!12 = !{!9}
!13 = !{!14}
!14 = distinct !{!14, !15, !"_ZN79_$LT$std..sync..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd3177f14bfdc0e2bE: %self"}
!15 = distinct !{!15, !"_ZN79_$LT$std..sync..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd3177f14bfdc0e2bE"}
!16 = !{!17}
!17 = distinct !{!17, !18, !"_ZN3std4sync5mutex14Mutex$LT$T$GT$4lock17h656f807849b3d5ddE: argument 0"}
!18 = distinct !{!18, !"_ZN3std4sync5mutex14Mutex$LT$T$GT$4lock17h656f807849b3d5ddE"}
!19 = !{!20, !17}
!20 = distinct !{!20, !21, !"_ZN3std4sync5mutex19MutexGuard$LT$T$GT$3new17h76b789839023e28eE: argument 0"}
!21 = distinct !{!21, !"_ZN3std4sync5mutex19MutexGuard$LT$T$GT$3new17h76b789839023e28eE"}
!22 = distinct !{!22, !23, !24}
!23 = !{!"llvm.loop.isvectorized", i32 1}
!24 = !{!"llvm.loop.unroll.runtime.disable"}
!25 = !{!26, !28}
!26 = distinct !{!26, !27, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h98d75e2cadef47b1E: %self"}
!27 = distinct !{!27, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h98d75e2cadef47b1E"}
!28 = distinct !{!28, !27, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h98d75e2cadef47b1E: argument 1"}
!29 = !{!26}
!30 = !{!31}
!31 = distinct !{!31, !32, !"_ZN79_$LT$std..sync..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd3177f14bfdc0e2bE: %self"}
!32 = distinct !{!32, !"_ZN79_$LT$std..sync..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd3177f14bfdc0e2bE"}
!33 = !{!34}
!34 = distinct !{!34, !35, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!35 = distinct !{!35, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!36 = !{!37, !38}
!37 = distinct !{!37, !35, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %pieces.0"}
!38 = distinct !{!38, !35, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!39 = !{!40}
!40 = distinct !{!40, !41, !"_ZN3std4sync4once4Once15call_once_force17hd0a920c9585c54fdE: %f.1"}
!41 = distinct !{!41, !"_ZN3std4sync4once4Once15call_once_force17hd0a920c9585c54fdE"}
!42 = !{!43}
!43 = distinct !{!43, !44, !"_ZN79_$LT$std..sync..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd3177f14bfdc0e2bE: %self"}
!44 = distinct !{!44, !"_ZN79_$LT$std..sync..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd3177f14bfdc0e2bE"}
!45 = !{}
!46 = !{i64 4}
!47 = !{i8 0, i8 2}
!48 = !{!49}
!49 = distinct !{!49, !50, !"_ZN79_$LT$std..sync..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd3177f14bfdc0e2bE: %self"}
!50 = distinct !{!50, !"_ZN79_$LT$std..sync..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd3177f14bfdc0e2bE"}
!51 = !{!52}
!52 = distinct !{!52, !53, !"_ZN3std4sync5mutex14Mutex$LT$T$GT$4lock17h656f807849b3d5ddE: argument 0"}
!53 = distinct !{!53, !"_ZN3std4sync5mutex14Mutex$LT$T$GT$4lock17h656f807849b3d5ddE"}
!54 = !{!55, !52}
!55 = distinct !{!55, !56, !"_ZN3std4sync5mutex19MutexGuard$LT$T$GT$3new17h76b789839023e28eE: argument 0"}
!56 = distinct !{!56, !"_ZN3std4sync5mutex19MutexGuard$LT$T$GT$3new17h76b789839023e28eE"}
!57 = !{!58, !60}
!58 = distinct !{!58, !59, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h98d75e2cadef47b1E: %self"}
!59 = distinct !{!59, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h98d75e2cadef47b1E"}
!60 = distinct !{!60, !59, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h98d75e2cadef47b1E: argument 1"}
!61 = !{!58}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_ZN79_$LT$std..sync..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd3177f14bfdc0e2bE: %self"}
!64 = distinct !{!64, !"_ZN79_$LT$std..sync..mutex..MutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd3177f14bfdc0e2bE"}
!65 = !{!66}
!66 = distinct !{!66, !67, !"_ZN4core3fmt9Arguments9new_const17h00a508d8cf4830ceE: argument 0"}
!67 = distinct !{!67, !"_ZN4core3fmt9Arguments9new_const17h00a508d8cf4830ceE"}
!68 = !{!69}
!69 = distinct !{!69, !70, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!70 = distinct !{!70, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!71 = !{!72, !73}
!72 = distinct !{!72, !70, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %pieces.0"}
!73 = distinct !{!73, !70, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!74 = !{i64 8}
!75 = !{!76}
!76 = distinct !{!76, !77, !"_ZN4long3src4long5array28_$u7b$$u7b$closure$u7d$$u7d$17h793d4ff3afe054ceE: argument 0"}
!77 = distinct !{!77, !"_ZN4long3src4long5array28_$u7b$$u7b$closure$u7d$$u7d$17h793d4ff3afe054ceE"}
!78 = !{!79}
!79 = distinct !{!79, !80, !"_ZN3std4sync9once_lock17OnceLock$LT$T$GT$11get_or_init28_$u7b$$u7b$closure$u7d$$u7d$17h1f1e8df2aa6b86eeE: argument 0"}
!80 = distinct !{!80, !"_ZN3std4sync9once_lock17OnceLock$LT$T$GT$11get_or_init28_$u7b$$u7b$closure$u7d$$u7d$17h1f1e8df2aa6b86eeE"}
