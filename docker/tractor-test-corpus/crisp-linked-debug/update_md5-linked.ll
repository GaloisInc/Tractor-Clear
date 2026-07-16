; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; ASSERT EQ: i1 1 = call i1 @run_test_1()

%"src::lib::TflacMd5" = type { i32, [1 x i32], i64, [72 x i8] }
%"core::ptr::metadata::PtrRepr<[u8]>" = type { [2 x i64] }
%"src::lib::Tflac" = type { %"src::lib::TflacMd5", i32, i32 }
%"core::mem::manually_drop::ManuallyDrop<[[src::lib::Tflac; 32]; 4]>" = type { [4 x [32 x %"src::lib::Tflac"]] }
%"core::mem::maybe_uninit::MaybeUninit<[[src::lib::Tflac; 32]; 4]>" = type { [1536 x i64] }

@alloc_e14f096bd30e7c4fffb0d07638e6275d = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/num/mod.rs" }>, align 1
@alloc_d1e68eb04df0257e0899e21ea2c814fc = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e14f096bd30e7c4fffb0d07638e6275d, [16 x i8] c"K\00\00\00\00\00\00\00/\04\00\00\05\00\00\00" }>, align 8
@str.0 = internal constant [25 x i8] c"attempt to divide by zero"
@str.1 = internal constant [57 x i8] c"attempt to calculate the remainder with a divisor of zero"
@alloc_f5ffd2fd1476bab43ad89fb40c72d0c5 = private unnamed_addr constant <{ [10 x i8] }> <{ [10 x i8] c"src/lib.rs" }>, align 1
@alloc_8db40dde801128c21e852d640fda21ae = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\22\00\00\00\05\00\00\00" }>, align 8
@alloc_169132fe1d2e6234473c420e294b8a11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\22\00\00\00\0C\00\00\00" }>, align 8
@alloc_2838ec52c8fb2ed9144f52022ac55192 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00*\00\00\003\00\00\00" }>, align 8
@str.2 = internal constant [28 x i8] c"attempt to add with overflow"
@alloc_8fcfcabf1d4be330530718b5436b58cf = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00*\00\00\00\1B\00\00\00" }>, align 8
@alloc_60ace58d293c4f67c90027ee6b5d3871 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\002\00\00\00(\00\00\00" }>, align 8
@alloc_32d7e1f0fa65659655c395b259c622d7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\002\00\00\00\0D\00\00\00" }>, align 8
@alloc_97d3f6a00cdbc1071716ab5ad9834fc0 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00<\00\00\00\1A\00\00\00" }>, align 8
@str.3 = internal constant [33 x i8] c"attempt to multiply with overflow"
@alloc_633ec4eef6aba60f8b0948778e96fe6e = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00@\00\00\00(\00\00\00" }>, align 8
@alloc_9d318b027e3578c7a1555638383b7d7e = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00@\00\00\00\12\00\00\00" }>, align 8
@alloc_04cf331c7cce8ec3820e274ab77cd218 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00B\00\00\00\0E\00\00\00" }>, align 8
@alloc_77a91a5f36442150419d2bb721ac97ff = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00C\00\00\00\0F\00\00\00" }>, align 8
@alloc_508ac9e436252cfc21ba4f3224ef523e = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00D\00\00\00\0F\00\00\00" }>, align 8
@alloc_abf06e780035b4c698747b2b1606b441 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00E\00\00\00\0F\00\00\00" }>, align 8
@alloc_adfeedf4aae258d0bb94188c7b394b91 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00F\00\00\00\0F\00\00\00" }>, align 8
@alloc_627ac78a7884bd4ba2732d3c46e0f32e = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00G\00\00\00\0F\00\00\00" }>, align 8
@alloc_ae0bbc14c6e54a35e07775cea2cd1002 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00H\00\00\00\0F\00\00\00" }>, align 8
@alloc_d5ba52795aa0116c467272c4000d1e94 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00I\00\00\00\0F\00\00\00" }>, align 8
@alloc_2b6c2acaedf28a8a83a0ed4241c4c820 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00R\00\00\00\09\00\00\00" }>, align 8
@alloc_821e5b39a7ff7871a7a324dbf0b6aeeb = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00S\00\00\00\09\00\00\00" }>, align 8
@alloc_35a7c52ef5a479b6421bc2b1f13e1add = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00_\00\00\00\19\00\00\00" }>, align 8
@alloc_ddf54d9c4e6eaead8a794516128979a9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00l\00\00\00\11\00\00\00" }>, align 8
@alloc_191c2b0a91cfa92597b251cc2ead9c33 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\91\00\00\00\0C\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define void @tflac_md5_addsample(ptr %m, i32 %bits, i64 %val) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %val.dbg.spill = alloca i64, align 8
  %bits.dbg.spill = alloca i32, align 4
  %m.dbg.spill = alloca ptr, align 8
  store ptr %m, ptr %m.dbg.spill, align 8
  store i32 %bits, ptr %bits.dbg.spill, align 4
  store i64 %val, ptr %val.dbg.spill, align 8
  %_6 = ptrtoint ptr %m to i64
  %_9 = and i64 %_6, 7
  %_10 = icmp eq i64 %_9, 0
  %0 = call i1 @llvm.expect.i1(i1 %_10, i1 true)
  br i1 %0, label %bb2, label %panic

bb2:                                              ; preds = %start
  call void @_ZN14update_md5_lib3src3lib19tflac_md5_addsample17h18b4ef8c781e131eE(ptr align 8 %m, i32 %bits, i64 %val)
  ret void

panic:                                            ; preds = %start
  invoke void @_ZN4core9panicking36panic_misaligned_pointer_dereference17h587229c42ea18e2bE(i64 8, i64 %_6, ptr align 8 @alloc_35a7c52ef5a479b6421bc2b1f13e1add) #8
          to label %unreachable unwind label %terminate

terminate:                                        ; preds = %panic
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  call void @_ZN4core9panicking19panic_cannot_unwind17h629e1da841ab4abfE() #9
  unreachable

unreachable:                                      ; preds = %panic
  unreachable
}

; Function Attrs: nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.expect.i1(i1, i1) #1

; Function Attrs: nonlazybind uwtable
define internal void @_ZN14update_md5_lib3src3lib19tflac_md5_addsample17h18b4ef8c781e131eE(ptr align 8 %m, i32 %bits, i64 %val) unnamed_addr #0 {
start:
  %rhs.dbg.spill.i16 = alloca i64, align 8
  %self.dbg.spill.i17 = alloca i64, align 8
  %rhs.dbg.spill.i14 = alloca i32, align 4
  %self.dbg.spill.i15 = alloca i32, align 4
  %rhs.dbg.spill.i10 = alloca i32, align 4
  %self.dbg.spill.i11 = alloca i32, align 4
  %rhs.dbg.spill.i7 = alloca i32, align 4
  %self.dbg.spill.i8 = alloca i32, align 4
  %rhs.dbg.spill.i5 = alloca i32, align 4
  %self.dbg.spill.i6 = alloca i32, align 4
  %rhs.dbg.spill.i3 = alloca i32, align 4
  %self.dbg.spill.i4 = alloca i32, align 4
  %rhs.dbg.spill.i = alloca i32, align 4
  %self.dbg.spill.i = alloca i32, align 4
  %pos2.dbg.spill = alloca i32, align 4
  %val.dbg.spill = alloca i64, align 8
  %bits.dbg.spill = alloca i32, align 4
  %m.dbg.spill = alloca ptr, align 8
  %_14 = alloca { i64, i64 }, align 8
  %bytes = alloca i32, align 4
  store ptr %m, ptr %m.dbg.spill, align 8
  store i32 %bits, ptr %bits.dbg.spill, align 4
  store i64 %val, ptr %val.dbg.spill, align 8
  %0 = getelementptr inbounds %"src::lib::TflacMd5", ptr %m, i32 0, i32 2
  %_5 = load i64, ptr %0, align 8, !noundef !4
  %_6 = zext i32 %bits to i64
  store i64 %_5, ptr %self.dbg.spill.i17, align 8
  store i64 %_6, ptr %rhs.dbg.spill.i16, align 8
  %1 = add i64 %_5, %_6
  %2 = getelementptr inbounds %"src::lib::TflacMd5", ptr %m, i32 0, i32 2
  store i64 %1, ptr %2, align 8
  store i32 %bits, ptr %self.dbg.spill.i6, align 4
  store i32 8, ptr %rhs.dbg.spill.i5, align 4
  %3 = call i1 @llvm.expect.i1(i1 false, i1 false)
  br i1 %3, label %panic.i, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_div17hf40315d2ad7da5c6E.exit"

panic.i:                                          ; preds = %start
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.0, i64 25, ptr align 8 @alloc_d1e68eb04df0257e0899e21ea2c814fc) #8
  unreachable

"_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_div17hf40315d2ad7da5c6E.exit": ; preds = %start
  %4 = udiv i32 %bits, 8
  store i32 %4, ptr %bytes, align 4
  %_9 = load i32, ptr %m, align 8, !noundef !4
  store i32 %_9, ptr %self.dbg.spill.i11, align 4
  store i32 64, ptr %rhs.dbg.spill.i10, align 4
  %5 = call i1 @llvm.expect.i1(i1 false, i1 false)
  br i1 %5, label %panic.i12, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_rem17h444bd8b2161bd3b6E.exit13"

panic.i12:                                        ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_div17hf40315d2ad7da5c6E.exit"
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.1, i64 57, ptr align 8 @alloc_d1e68eb04df0257e0899e21ea2c814fc) #8
  unreachable

"_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_rem17h444bd8b2161bd3b6E.exit13": ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_div17hf40315d2ad7da5c6E.exit"
  %6 = urem i32 %_9, 64
  store i32 %6, ptr %pos2.dbg.spill, align 4
  %_13 = getelementptr inbounds %"src::lib::TflacMd5", ptr %m, i32 0, i32 3
  %_15 = zext i32 %6 to i64
  %_18 = zext i32 %6 to i64
  %7 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_18, i64 8)
  %_20.0 = extractvalue { i64, i1 } %7, 0
  %_20.1 = extractvalue { i64, i1 } %7, 1
  %8 = call i1 @llvm.expect.i1(i1 %_20.1, i1 false)
  br i1 %8, label %panic, label %bb4

bb4:                                              ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_rem17h444bd8b2161bd3b6E.exit13"
  store i64 %_15, ptr %_14, align 8
  %9 = getelementptr inbounds { i64, i64 }, ptr %_14, i32 0, i32 1
  store i64 %_20.0, ptr %9, align 8
  %10 = getelementptr inbounds { i64, i64 }, ptr %_14, i32 0, i32 0
  %11 = load i64, ptr %10, align 8, !noundef !4
  %12 = getelementptr inbounds { i64, i64 }, ptr %_14, i32 0, i32 1
  %13 = load i64, ptr %12, align 8, !noundef !4
  %14 = call { ptr, i64 } @"_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17hc97a07802d457dc7E"(ptr align 1 %_13, i64 %11, i64 %13, ptr align 8 @alloc_8fcfcabf1d4be330530718b5436b58cf)
  %_12.0 = extractvalue { ptr, i64 } %14, 0
  %_12.1 = extractvalue { ptr, i64 } %14, 1
  call void @_ZN14update_md5_lib3src3lib16tflac_pack_u64le17h517c7254b56e6ce4E(ptr align 1 %_12.0, i64 %_12.1, i64 %val)
  %_22 = load i32, ptr %m, align 8, !noundef !4
  %_23 = load i32, ptr %bytes, align 4, !noundef !4
  store i32 %_22, ptr %self.dbg.spill.i4, align 4
  store i32 %_23, ptr %rhs.dbg.spill.i3, align 4
  %15 = add i32 %_22, %_23
  store i32 %15, ptr %m, align 8
  %_25 = load i32, ptr %m, align 8, !noundef !4
  %_24 = icmp uge i32 %_25, 64
  br i1 %_24, label %bb8, label %bb16

panic:                                            ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_rem17h444bd8b2161bd3b6E.exit13"
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.2, i64 28, ptr align 8 @alloc_2838ec52c8fb2ed9144f52022ac55192) #8
  unreachable

bb16:                                             ; preds = %bb10, %bb4
  ret void

bb8:                                              ; preds = %bb4
  %_27 = load i32, ptr %m, align 8, !noundef !4
  store i32 %_27, ptr %self.dbg.spill.i8, align 4
  store i32 64, ptr %rhs.dbg.spill.i7, align 4
  %16 = call i1 @llvm.expect.i1(i1 false, i1 false)
  br i1 %16, label %panic.i9, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_rem17h444bd8b2161bd3b6E.exit"

panic.i9:                                         ; preds = %bb8
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.1, i64 57, ptr align 8 @alloc_d1e68eb04df0257e0899e21ea2c814fc) #8
  unreachable

"_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_rem17h444bd8b2161bd3b6E.exit": ; preds = %bb8
  %17 = urem i32 %_27, 64
  store i32 %17, ptr %m, align 8
  %_28 = load i32, ptr %m, align 8, !noundef !4
  store i32 %_28, ptr %bytes, align 4
  br label %bb10

bb10:                                             ; preds = %bb15, %"_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_rem17h444bd8b2161bd3b6E.exit"
  %_29 = load i32, ptr %bytes, align 4, !noundef !4
  %18 = icmp eq i32 %_29, 0
  br i1 %18, label %bb16, label %bb11

bb11:                                             ; preds = %bb10
  %_31 = load i32, ptr %bytes, align 4, !noundef !4
  store i32 %_31, ptr %self.dbg.spill.i15, align 4
  store i32 1, ptr %rhs.dbg.spill.i14, align 4
  %19 = sub i32 %_31, 1
  store i32 %19, ptr %bytes, align 4
  %_35 = load i32, ptr %bytes, align 4, !noundef !4
  store i32 64, ptr %self.dbg.spill.i, align 4
  store i32 %_35, ptr %rhs.dbg.spill.i, align 4
  %20 = add i32 64, %_35
  %_33 = zext i32 %20 to i64
  %_37 = icmp ult i64 %_33, 72
  %21 = call i1 @llvm.expect.i1(i1 %_37, i1 true)
  br i1 %21, label %bb14, label %panic1

bb14:                                             ; preds = %bb11
  %22 = getelementptr inbounds %"src::lib::TflacMd5", ptr %m, i32 0, i32 3
  %23 = getelementptr inbounds [72 x i8], ptr %22, i64 0, i64 %_33
  %_32 = load i8, ptr %23, align 1, !noundef !4
  %_39 = load i32, ptr %bytes, align 4, !noundef !4
  %_38 = zext i32 %_39 to i64
  %_41 = icmp ult i64 %_38, 72
  %24 = call i1 @llvm.expect.i1(i1 %_41, i1 true)
  br i1 %24, label %bb15, label %panic2

panic1:                                           ; preds = %bb11
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %_33, i64 72, ptr align 8 @alloc_60ace58d293c4f67c90027ee6b5d3871) #8
  unreachable

bb15:                                             ; preds = %bb14
  %25 = getelementptr inbounds %"src::lib::TflacMd5", ptr %m, i32 0, i32 3
  %26 = getelementptr inbounds [72 x i8], ptr %25, i64 0, i64 %_38
  store i8 %_32, ptr %26, align 1
  br label %bb10

panic2:                                           ; preds = %bb14
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %_38, i64 72, ptr align 8 @alloc_32d7e1f0fa65659655c395b259c622d7) #8
  unreachable
}

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking36panic_misaligned_pointer_dereference17h587229c42ea18e2bE(i64, i64, ptr align 8) unnamed_addr #2

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_ZN4core9panicking19panic_cannot_unwind17h629e1da841ab4abfE() unnamed_addr #3

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1, i64, ptr align 8) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #4

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @"_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17hc97a07802d457dc7E"(ptr align 1 %self, i64 %index.0, i64 %index.1, ptr align 8 %0) unnamed_addr #5 {
start:
  %index.dbg.spill = alloca { i64, i64 }, align 8
  %self.dbg.spill = alloca ptr, align 8
  store ptr %self, ptr %self.dbg.spill, align 8
  %1 = getelementptr inbounds { i64, i64 }, ptr %index.dbg.spill, i32 0, i32 0
  store i64 %index.0, ptr %1, align 8
  %2 = getelementptr inbounds { i64, i64 }, ptr %index.dbg.spill, i32 0, i32 1
  store i64 %index.1, ptr %2, align 8
  %3 = call { ptr, i64 } @"_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17hc578972602a67731E"(ptr align 1 %self, i64 72, i64 %index.0, i64 %index.1, ptr align 8 %0)
  %_3.0 = extractvalue { ptr, i64 } %3, 0
  %_3.1 = extractvalue { ptr, i64 } %3, 1
  %4 = insertvalue { ptr, i64 } poison, ptr %_3.0, 0
  %5 = insertvalue { ptr, i64 } %4, i64 %_3.1, 1
  ret { ptr, i64 } %5
}

; Function Attrs: nonlazybind uwtable
define internal void @_ZN14update_md5_lib3src3lib16tflac_pack_u64le17h517c7254b56e6ce4E(ptr align 1 %d.0, i64 %d.1, i64 %n) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  %n.dbg.spill = alloca i64, align 8
  %d.dbg.spill = alloca { ptr, i64 }, align 8
  %bytes = alloca [8 x i8], align 1
  %1 = getelementptr inbounds { ptr, i64 }, ptr %d.dbg.spill, i32 0, i32 0
  store ptr %d.0, ptr %1, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %d.dbg.spill, i32 0, i32 1
  store i64 %d.1, ptr %2, align 8
  store i64 %n, ptr %n.dbg.spill, align 8
  %3 = call i64 @"_ZN4core3num21_$LT$impl$u20$u64$GT$11to_le_bytes17h33b95d745267de5bE"(i64 %n)
  store i64 %3, ptr %0, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %bytes, ptr align 8 %0, i64 8, i1 false)
  %4 = call { ptr, i64 } @"_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17heb20d1a65b148288E"(ptr align 1 %d.0, i64 %d.1, i64 8, ptr align 8 @alloc_8db40dde801128c21e852d640fda21ae)
  %_6.0 = extractvalue { ptr, i64 } %4, 0
  %_6.1 = extractvalue { ptr, i64 } %4, 1
  call void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h094e2c48d7fa2a2fE"(ptr align 1 %_6.0, i64 %_6.1, ptr align 1 %bytes, i64 8, ptr align 8 @alloc_169132fe1d2e6234473c420e294b8a11)
  ret void
}

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64, i64, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @"_ZN4core3num21_$LT$impl$u20$u64$GT$11to_le_bytes17h33b95d745267de5bE"(i64 %self) unnamed_addr #5 {
start:
  %self.dbg.spill = alloca i64, align 8
  %0 = alloca [8 x i8], align 1
  store i64 %self, ptr %self.dbg.spill, align 8
  store i64 %self, ptr %0, align 1
  %1 = load i64, ptr %0, align 1
  ret i64 %1
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @"_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17heb20d1a65b148288E"(ptr align 1 %self.0, i64 %self.1, i64 %index, ptr align 8 %0) unnamed_addr #5 {
start:
  %index.dbg.spill = alloca i64, align 8
  %self.dbg.spill = alloca { ptr, i64 }, align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill, i32 0, i32 0
  store ptr %self.0, ptr %1, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill, i32 0, i32 1
  store i64 %self.1, ptr %2, align 8
  store i64 %index, ptr %index.dbg.spill, align 8
  %3 = call { ptr, i64 } @"_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h18bcb0b0ae1f461eE"(i64 %index, ptr align 1 %self.0, i64 %self.1, ptr align 8 %0)
  %_3.0 = extractvalue { ptr, i64 } %3, 0
  %_3.1 = extractvalue { ptr, i64 } %3, 1
  %4 = insertvalue { ptr, i64 } poison, ptr %_3.0, 0
  %5 = insertvalue { ptr, i64 } %4, i64 %_3.1, 1
  ret { ptr, i64 } %5
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h094e2c48d7fa2a2fE"(ptr align 1 %self.0, i64 %self.1, ptr align 1 %src.0, i64 %src.1, ptr align 8 %0) unnamed_addr #0 {
start:
  %count.dbg.spill = alloca i64, align 8
  %dst.dbg.spill = alloca ptr, align 8
  %src.dbg.spill1 = alloca ptr, align 8
  %src.dbg.spill = alloca { ptr, i64 }, align 8
  %self.dbg.spill = alloca { ptr, i64 }, align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill, i32 0, i32 0
  store ptr %self.0, ptr %1, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill, i32 0, i32 1
  store i64 %self.1, ptr %2, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %src.dbg.spill, i32 0, i32 0
  store ptr %src.0, ptr %3, align 8
  %4 = getelementptr inbounds { ptr, i64 }, ptr %src.dbg.spill, i32 0, i32 1
  store i64 %src.1, ptr %4, align 8
  %_3 = icmp ne i64 %self.1, %src.1
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
  store ptr %src.0, ptr %src.dbg.spill1, align 8
  store ptr %self.0, ptr %dst.dbg.spill, align 8
  store i64 %self.1, ptr %count.dbg.spill, align 8
  %5 = mul i64 %self.1, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %self.0, ptr align 1 %src.0, i64 %5, i1 false)
  ret void

bb1:                                              ; preds = %start
  call void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17he4895f08c4a919b7E"(i64 %self.1, i64 %src.1, ptr align 8 %0) #8
  unreachable
}

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17he4895f08c4a919b7E"(i64, i64, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @"_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h18bcb0b0ae1f461eE"(i64 %self, ptr align 1 %slice.0, i64 %slice.1, ptr align 8 %0) unnamed_addr #5 {
start:
  %slice.dbg.spill = alloca { ptr, i64 }, align 8
  %self.dbg.spill = alloca i64, align 8
  %_4 = alloca { i64, i64 }, align 8
  store i64 %self, ptr %self.dbg.spill, align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %slice.dbg.spill, i32 0, i32 0
  store ptr %slice.0, ptr %1, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %slice.dbg.spill, i32 0, i32 1
  store i64 %slice.1, ptr %2, align 8
  store i64 0, ptr %_4, align 8
  %3 = getelementptr inbounds { i64, i64 }, ptr %_4, i32 0, i32 1
  store i64 %self, ptr %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, ptr %_4, i32 0, i32 0
  %5 = load i64, ptr %4, align 8, !noundef !4
  %6 = getelementptr inbounds { i64, i64 }, ptr %_4, i32 0, i32 1
  %7 = load i64, ptr %6, align 8, !noundef !4
  %8 = call { ptr, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17heae6fb5898201720E"(i64 %5, i64 %7, ptr align 1 %slice.0, i64 %slice.1, ptr align 8 %0)
  %_3.0 = extractvalue { ptr, i64 } %8, 0
  %_3.1 = extractvalue { ptr, i64 } %8, 1
  %9 = insertvalue { ptr, i64 } poison, ptr %_3.0, 0
  %10 = insertvalue { ptr, i64 } %9, i64 %_3.1, 1
  ret { ptr, i64 } %10
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17heae6fb5898201720E"(i64 %self.0, i64 %self.1, ptr align 1 %slice.0, i64 %slice.1, ptr align 8 %0) unnamed_addr #5 {
start:
  %data_address.dbg.spill = alloca ptr, align 8
  %len.dbg.spill = alloca i64, align 8
  %data.dbg.spill = alloca ptr, align 8
  %1 = alloca ptr, align 8
  %count.dbg.spill3 = alloca i64, align 8
  %count.dbg.spill = alloca i64, align 8
  %self.dbg.spill2 = alloca ptr, align 8
  %new_len.dbg.spill = alloca i64, align 8
  %2 = alloca i64, align 8
  %slice.dbg.spill1 = alloca { ptr, i64 }, align 8
  %slice.dbg.spill = alloca { ptr, i64 }, align 8
  %self.dbg.spill = alloca { i64, i64 }, align 8
  %_35 = alloca { ptr, i64 }, align 8
  %_34 = alloca %"core::ptr::metadata::PtrRepr<[u8]>", align 8
  %3 = getelementptr inbounds { i64, i64 }, ptr %self.dbg.spill, i32 0, i32 0
  store i64 %self.0, ptr %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, ptr %self.dbg.spill, i32 0, i32 1
  store i64 %self.1, ptr %4, align 8
  %5 = getelementptr inbounds { ptr, i64 }, ptr %slice.dbg.spill, i32 0, i32 0
  store ptr %slice.0, ptr %5, align 8
  %6 = getelementptr inbounds { ptr, i64 }, ptr %slice.dbg.spill, i32 0, i32 1
  store i64 %slice.1, ptr %6, align 8
  %_3 = icmp ugt i64 %self.0, %self.1
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_9 = icmp ugt i64 %self.1, %slice.1
  br i1 %_9, label %bb3, label %bb4

bb1:                                              ; preds = %start
  call void @_ZN4core5slice5index22slice_index_order_fail17h2045503bd7776290E(i64 %self.0, i64 %self.1, ptr align 8 %0) #8
  unreachable

bb4:                                              ; preds = %bb2
  %7 = getelementptr inbounds { ptr, i64 }, ptr %slice.dbg.spill1, i32 0, i32 0
  store ptr %slice.0, ptr %7, align 8
  %8 = getelementptr inbounds { ptr, i64 }, ptr %slice.dbg.spill1, i32 0, i32 1
  store i64 %slice.1, ptr %8, align 8
  %9 = sub nuw i64 %self.1, %self.0
  store i64 %9, ptr %2, align 8
  %new_len = load i64, ptr %2, align 8, !noundef !4
  store i64 %new_len, ptr %new_len.dbg.spill, align 8
  store ptr %slice.0, ptr %self.dbg.spill2, align 8
  store i64 %self.0, ptr %count.dbg.spill, align 8
  store i64 %self.0, ptr %count.dbg.spill3, align 8
  %10 = getelementptr inbounds i8, ptr %slice.0, i64 %self.0
  store ptr %10, ptr %1, align 8
  %_31 = load ptr, ptr %1, align 8, !noundef !4
  store ptr %_31, ptr %data.dbg.spill, align 8
  store i64 %new_len, ptr %len.dbg.spill, align 8
  store ptr %_31, ptr %data_address.dbg.spill, align 8
  store ptr %_31, ptr %_35, align 8
  %11 = getelementptr inbounds { ptr, i64 }, ptr %_35, i32 0, i32 1
  store i64 %new_len, ptr %11, align 8
  %12 = getelementptr inbounds { ptr, i64 }, ptr %_35, i32 0, i32 0
  %13 = load ptr, ptr %12, align 8, !noundef !4
  %14 = getelementptr inbounds { ptr, i64 }, ptr %_35, i32 0, i32 1
  %15 = load i64, ptr %14, align 8, !noundef !4
  %16 = getelementptr inbounds { ptr, i64 }, ptr %_34, i32 0, i32 0
  store ptr %13, ptr %16, align 8
  %17 = getelementptr inbounds { ptr, i64 }, ptr %_34, i32 0, i32 1
  store i64 %15, ptr %17, align 8
  %18 = getelementptr inbounds { ptr, i64 }, ptr %_34, i32 0, i32 0
  %_17.0 = load ptr, ptr %18, align 8, !noundef !4
  %19 = getelementptr inbounds { ptr, i64 }, ptr %_34, i32 0, i32 1
  %_17.1 = load i64, ptr %19, align 8, !noundef !4
  %20 = insertvalue { ptr, i64 } poison, ptr %_17.0, 0
  %21 = insertvalue { ptr, i64 } %20, i64 %_17.1, 1
  ret { ptr, i64 } %21

bb3:                                              ; preds = %bb2
  call void @_ZN4core5slice5index24slice_end_index_len_fail17h63e54c65524702d3E(i64 %self.1, i64 %slice.1, ptr align 8 %0) #8
  unreachable
}

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice5index22slice_index_order_fail17h2045503bd7776290E(i64, i64, ptr align 8) unnamed_addr #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice5index24slice_end_index_len_fail17h63e54c65524702d3E(i64, i64, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @"_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17hc578972602a67731E"(ptr align 1 %self.0, i64 %self.1, i64 %index.0, i64 %index.1, ptr align 8 %0) unnamed_addr #5 {
start:
  %index.dbg.spill = alloca { i64, i64 }, align 8
  %self.dbg.spill = alloca { ptr, i64 }, align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill, i32 0, i32 0
  store ptr %self.0, ptr %1, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill, i32 0, i32 1
  store i64 %self.1, ptr %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, ptr %index.dbg.spill, i32 0, i32 0
  store i64 %index.0, ptr %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, ptr %index.dbg.spill, i32 0, i32 1
  store i64 %index.1, ptr %4, align 8
  %5 = call { ptr, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17heae6fb5898201720E"(i64 %index.0, i64 %index.1, ptr align 1 %self.0, i64 %self.1, ptr align 8 %0)
  %_3.0 = extractvalue { ptr, i64 } %5, 0
  %_3.1 = extractvalue { ptr, i64 } %5, 1
  %6 = insertvalue { ptr, i64 } poison, ptr %_3.0, 0
  %7 = insertvalue { ptr, i64 } %6, i64 %_3.1, 1
  ret { ptr, i64 } %7
}

; Function Attrs: nonlazybind uwtable
define void @tflac_pack_u64le(ptr %d, i64 %n) unnamed_addr #0 {
start:
  %n.dbg.spill = alloca i64, align 8
  %d.dbg.spill = alloca ptr, align 8
  store ptr %d, ptr %d.dbg.spill, align 8
  store i64 %n, ptr %n.dbg.spill, align 8
  %0 = call { ptr, i64 } @_ZN4core5slice3raw18from_raw_parts_mut17he498d53fe19932c1E(ptr %d, i64 8)
  %_4.0 = extractvalue { ptr, i64 } %0, 0
  %_4.1 = extractvalue { ptr, i64 } %0, 1
  call void @_ZN14update_md5_lib3src3lib16tflac_pack_u64le17h517c7254b56e6ce4E(ptr align 1 %_4.0, i64 %_4.1, i64 %n)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @_ZN4core5slice3raw18from_raw_parts_mut17he498d53fe19932c1E(ptr %data, i64 %len) unnamed_addr #5 {
start:
  %data_address.dbg.spill = alloca ptr, align 8
  %len.dbg.spill = alloca i64, align 8
  %data.dbg.spill = alloca ptr, align 8
  %_8 = alloca { ptr, i64 }, align 8
  %_7 = alloca %"core::ptr::metadata::PtrRepr<[u8]>", align 8
  store ptr %data, ptr %data.dbg.spill, align 8
  store i64 %len, ptr %len.dbg.spill, align 8
  store ptr %data, ptr %data_address.dbg.spill, align 8
  store ptr %data, ptr %_8, align 8
  %0 = getelementptr inbounds { ptr, i64 }, ptr %_8, i32 0, i32 1
  store i64 %len, ptr %0, align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %_8, i32 0, i32 0
  %2 = load ptr, ptr %1, align 8, !noundef !4
  %3 = getelementptr inbounds { ptr, i64 }, ptr %_8, i32 0, i32 1
  %4 = load i64, ptr %3, align 8, !noundef !4
  %5 = getelementptr inbounds { ptr, i64 }, ptr %_7, i32 0, i32 0
  store ptr %2, ptr %5, align 8
  %6 = getelementptr inbounds { ptr, i64 }, ptr %_7, i32 0, i32 1
  store i64 %4, ptr %6, align 8
  %7 = getelementptr inbounds { ptr, i64 }, ptr %_7, i32 0, i32 0
  %_3.0 = load ptr, ptr %7, align 8, !noundef !4
  %8 = getelementptr inbounds { ptr, i64 }, ptr %_7, i32 0, i32 1
  %_3.1 = load i64, ptr %8, align 8, !noundef !4
  %9 = insertvalue { ptr, i64 } poison, ptr %_3.0, 0
  %10 = insertvalue { ptr, i64 } %9, i64 %_3.1, 1
  ret { ptr, i64 } %10
}

; Function Attrs: nonlazybind uwtable
define i32 @update_md5(ptr %t, ptr %samples) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %rhs.dbg.spill.i = alloca i32, align 4
  %self.dbg.spill.i = alloca i32, align 4
  %sample_len.dbg.spill = alloca i64, align 8
  %t_ref.dbg.spill = alloca ptr, align 8
  %samples.dbg.spill = alloca ptr, align 8
  %t.dbg.spill = alloca ptr, align 8
  store ptr %t, ptr %t.dbg.spill, align 8
  store ptr %samples, ptr %samples.dbg.spill, align 8
  %_11 = ptrtoint ptr %t to i64
  %_14 = and i64 %_11, 7
  %_15 = icmp eq i64 %_14, 0
  %0 = call i1 @llvm.expect.i1(i1 %_15, i1 true)
  br i1 %0, label %bb4, label %panic

bb4:                                              ; preds = %start
  store ptr %t, ptr %t_ref.dbg.spill, align 8
  %1 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 1
  %_6 = load i32, ptr %1, align 8, !noundef !4
  %2 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 2
  %_7 = load i32, ptr %2, align 4, !noundef !4
  store i32 %_6, ptr %self.dbg.spill.i, align 4
  store i32 %_7, ptr %rhs.dbg.spill.i, align 4
  %3 = mul i32 %_6, %_7
  %sample_len = zext i32 %3 to i64
  store i64 %sample_len, ptr %sample_len.dbg.spill, align 8
  %4 = call { ptr, i64 } @_ZN4core5slice3raw14from_raw_parts17h25515b6b0d0dacffE(ptr %samples, i64 %sample_len)
  %_9.0 = extractvalue { ptr, i64 } %4, 0
  %_9.1 = extractvalue { ptr, i64 } %4, 1
  %5 = call i32 @_ZN14update_md5_lib3src3lib10update_md517h83753913c54f46e6E(ptr align 8 %t, ptr align 4 %_9.0, i64 %_9.1)
  ret i32 %5

panic:                                            ; preds = %start
  invoke void @_ZN4core9panicking36panic_misaligned_pointer_dereference17h587229c42ea18e2bE(i64 8, i64 %_11, ptr align 8 @alloc_ddf54d9c4e6eaead8a794516128979a9) #8
          to label %unreachable unwind label %terminate

terminate:                                        ; preds = %panic
  %6 = landingpad { ptr, i32 }
          cleanup
  %7 = extractvalue { ptr, i32 } %6, 0
  %8 = extractvalue { ptr, i32 } %6, 1
  call void @_ZN4core9panicking19panic_cannot_unwind17h629e1da841ab4abfE() #9
  unreachable

unreachable:                                      ; preds = %panic
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @_ZN4core5slice3raw14from_raw_parts17h25515b6b0d0dacffE(ptr %data, i64 %len) unnamed_addr #5 {
start:
  %data_address.dbg.spill = alloca ptr, align 8
  %len.dbg.spill = alloca i64, align 8
  %data.dbg.spill = alloca ptr, align 8
  %_8 = alloca { ptr, i64 }, align 8
  %_7 = alloca %"core::ptr::metadata::PtrRepr<[u8]>", align 8
  store ptr %data, ptr %data.dbg.spill, align 8
  store i64 %len, ptr %len.dbg.spill, align 8
  store ptr %data, ptr %data_address.dbg.spill, align 8
  store ptr %data, ptr %_8, align 8
  %0 = getelementptr inbounds { ptr, i64 }, ptr %_8, i32 0, i32 1
  store i64 %len, ptr %0, align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %_8, i32 0, i32 0
  %2 = load ptr, ptr %1, align 8, !noundef !4
  %3 = getelementptr inbounds { ptr, i64 }, ptr %_8, i32 0, i32 1
  %4 = load i64, ptr %3, align 8, !noundef !4
  %5 = getelementptr inbounds { ptr, i64 }, ptr %_7, i32 0, i32 0
  store ptr %2, ptr %5, align 8
  %6 = getelementptr inbounds { ptr, i64 }, ptr %_7, i32 0, i32 1
  store i64 %4, ptr %6, align 8
  %7 = getelementptr inbounds { ptr, i64 }, ptr %_7, i32 0, i32 0
  %_3.0 = load ptr, ptr %7, align 8, !noundef !4
  %8 = getelementptr inbounds { ptr, i64 }, ptr %_7, i32 0, i32 1
  %_3.1 = load i64, ptr %8, align 8, !noundef !4
  %9 = insertvalue { ptr, i64 } poison, ptr %_3.0, 0
  %10 = insertvalue { ptr, i64 } %9, i64 %_3.1, 1
  ret { ptr, i64 } %10
}

; Function Attrs: nonlazybind uwtable
define internal i32 @_ZN14update_md5_lib3src3lib10update_md517h83753913c54f46e6E(ptr align 8 %t, ptr align 4 %samples.0, i64 %samples.1) unnamed_addr #0 {
start:
  %rhs.dbg.spill.i14 = alloca i64, align 8
  %self.dbg.spill.i15 = alloca i64, align 8
  %rhs.dbg.spill.i12 = alloca i32, align 4
  %self.dbg.spill.i13 = alloca i32, align 4
  %rhs.dbg.spill.i = alloca i32, align 4
  %self.dbg.spill.i = alloca i32, align 4
  %s.dbg.spill = alloca { ptr, i64 }, align 8
  %sample_advance.dbg.spill = alloca i64, align 8
  %step.dbg.spill = alloca i32, align 4
  %samples.dbg.spill = alloca { ptr, i64 }, align 8
  %t.dbg.spill = alloca ptr, align 8
  %v = alloca i64, align 8
  %_16 = alloca { i64, i64 }, align 8
  %i = alloca i32, align 4
  %sample_index = alloca i64, align 8
  %0 = alloca i32, align 4
  store ptr %t, ptr %t.dbg.spill, align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %samples.dbg.spill, i32 0, i32 0
  store ptr %samples.0, ptr %1, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %samples.dbg.spill, i32 0, i32 1
  store i64 %samples.1, ptr %2, align 8
  %3 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 1
  %_3 = load i32, ptr %3, align 8, !noundef !4
  %4 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 2
  %_4 = load i32, ptr %4, align 4, !noundef !4
  store i32 %_3, ptr %self.dbg.spill.i, align 4
  store i32 %_4, ptr %rhs.dbg.spill.i, align 4
  %5 = mul i32 %_3, %_4
  store i32 %5, ptr %0, align 4
  %step = trunc i64 8 to i32
  store i32 %step, ptr %step.dbg.spill, align 4
  store i64 0, ptr %sample_index, align 8
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 8, i64 4)
  %_10.0 = extractvalue { i64, i1 } %6, 0
  %_10.1 = extractvalue { i64, i1 } %6, 1
  %7 = call i1 @llvm.expect.i1(i1 %_10.1, i1 false)
  br i1 %7, label %panic, label %bb4

bb4:                                              ; preds = %start
  store i64 %_10.0, ptr %sample_advance.dbg.spill, align 8
  store i32 0, ptr %i, align 4
  br label %bb5

panic:                                            ; preds = %start
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.3, i64 33, ptr align 8 @alloc_97d3f6a00cdbc1071716ab5ad9834fc0) #8
  unreachable

bb5:                                              ; preds = %bb22, %bb4
  %_13 = load i32, ptr %i, align 4, !noundef !4
  %_12 = icmp sle i32 %_13, 4
  br i1 %_12, label %bb6, label %bb23

bb23:                                             ; preds = %bb5
  %8 = load i32, ptr %0, align 4, !noundef !4
  ret i32 %8

bb6:                                              ; preds = %bb5
  %_17 = load i64, ptr %sample_index, align 8, !noundef !4
  %_19 = load i64, ptr %sample_index, align 8, !noundef !4
  %9 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_19, i64 8)
  %_20.0 = extractvalue { i64, i1 } %9, 0
  %_20.1 = extractvalue { i64, i1 } %9, 1
  %10 = call i1 @llvm.expect.i1(i1 %_20.1, i1 false)
  br i1 %10, label %panic1, label %bb7

bb7:                                              ; preds = %bb6
  store i64 %_17, ptr %_16, align 8
  %11 = getelementptr inbounds { i64, i64 }, ptr %_16, i32 0, i32 1
  store i64 %_20.0, ptr %11, align 8
  %12 = getelementptr inbounds { i64, i64 }, ptr %_16, i32 0, i32 0
  %13 = load i64, ptr %12, align 8, !noundef !4
  %14 = getelementptr inbounds { i64, i64 }, ptr %_16, i32 0, i32 1
  %15 = load i64, ptr %14, align 8, !noundef !4
  %16 = call { ptr, i64 } @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h49a6e06858eff561E"(ptr align 4 %samples.0, i64 %samples.1, i64 %13, i64 %15, ptr align 8 @alloc_9d318b027e3578c7a1555638383b7d7e)
  %_15.0 = extractvalue { ptr, i64 } %16, 0
  %_15.1 = extractvalue { ptr, i64 } %16, 1
  %17 = getelementptr inbounds { ptr, i64 }, ptr %s.dbg.spill, i32 0, i32 0
  store ptr %_15.0, ptr %17, align 8
  %18 = getelementptr inbounds { ptr, i64 }, ptr %s.dbg.spill, i32 0, i32 1
  store i64 %_15.1, ptr %18, align 8
  store i64 0, ptr %v, align 8
  %_27 = icmp ult i64 0, %_15.1
  %19 = call i1 @llvm.expect.i1(i1 %_27, i1 true)
  br i1 %19, label %bb9, label %panic2

panic1:                                           ; preds = %bb6
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.2, i64 28, ptr align 8 @alloc_633ec4eef6aba60f8b0948778e96fe6e) #8
  unreachable

bb9:                                              ; preds = %bb7
  %20 = getelementptr inbounds [0 x i32], ptr %_15.0, i64 0, i64 0
  %_24 = load i32, ptr %20, align 4, !noundef !4
  %_23 = sext i32 %_24 to i64
  %_22 = and i64 %_23, 255
  %21 = shl i64 %_22, 0
  store i64 %21, ptr %v, align 8
  %_34 = icmp ult i64 1, %_15.1
  %22 = call i1 @llvm.expect.i1(i1 %_34, i1 true)
  br i1 %22, label %bb10, label %panic3

panic2:                                           ; preds = %bb7
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 0, i64 %_15.1, ptr align 8 @alloc_04cf331c7cce8ec3820e274ab77cd218) #8
  unreachable

bb10:                                             ; preds = %bb9
  %23 = getelementptr inbounds [0 x i32], ptr %_15.0, i64 0, i64 1
  %_31 = load i32, ptr %23, align 4, !noundef !4
  %_30 = sext i32 %_31 to i64
  %_29 = and i64 %_30, 255
  %_28 = shl i64 %_29, 8
  %24 = load i64, ptr %v, align 8, !noundef !4
  %25 = or i64 %24, %_28
  store i64 %25, ptr %v, align 8
  %_41 = icmp ult i64 2, %_15.1
  %26 = call i1 @llvm.expect.i1(i1 %_41, i1 true)
  br i1 %26, label %bb11, label %panic4

panic3:                                           ; preds = %bb9
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 1, i64 %_15.1, ptr align 8 @alloc_77a91a5f36442150419d2bb721ac97ff) #8
  unreachable

bb11:                                             ; preds = %bb10
  %27 = getelementptr inbounds [0 x i32], ptr %_15.0, i64 0, i64 2
  %_38 = load i32, ptr %27, align 4, !noundef !4
  %_37 = sext i32 %_38 to i64
  %_36 = and i64 %_37, 255
  %_35 = shl i64 %_36, 16
  %28 = load i64, ptr %v, align 8, !noundef !4
  %29 = or i64 %28, %_35
  store i64 %29, ptr %v, align 8
  %_48 = icmp ult i64 3, %_15.1
  %30 = call i1 @llvm.expect.i1(i1 %_48, i1 true)
  br i1 %30, label %bb12, label %panic5

panic4:                                           ; preds = %bb10
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 2, i64 %_15.1, ptr align 8 @alloc_508ac9e436252cfc21ba4f3224ef523e) #8
  unreachable

bb12:                                             ; preds = %bb11
  %31 = getelementptr inbounds [0 x i32], ptr %_15.0, i64 0, i64 3
  %_45 = load i32, ptr %31, align 4, !noundef !4
  %_44 = sext i32 %_45 to i64
  %_43 = and i64 %_44, 255
  %_42 = shl i64 %_43, 24
  %32 = load i64, ptr %v, align 8, !noundef !4
  %33 = or i64 %32, %_42
  store i64 %33, ptr %v, align 8
  %_55 = icmp ult i64 4, %_15.1
  %34 = call i1 @llvm.expect.i1(i1 %_55, i1 true)
  br i1 %34, label %bb13, label %panic6

panic5:                                           ; preds = %bb11
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 3, i64 %_15.1, ptr align 8 @alloc_abf06e780035b4c698747b2b1606b441) #8
  unreachable

bb13:                                             ; preds = %bb12
  %35 = getelementptr inbounds [0 x i32], ptr %_15.0, i64 0, i64 4
  %_52 = load i32, ptr %35, align 4, !noundef !4
  %_51 = sext i32 %_52 to i64
  %_50 = and i64 %_51, 255
  %_49 = shl i64 %_50, 32
  %36 = load i64, ptr %v, align 8, !noundef !4
  %37 = or i64 %36, %_49
  store i64 %37, ptr %v, align 8
  %_62 = icmp ult i64 5, %_15.1
  %38 = call i1 @llvm.expect.i1(i1 %_62, i1 true)
  br i1 %38, label %bb14, label %panic7

panic6:                                           ; preds = %bb12
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 4, i64 %_15.1, ptr align 8 @alloc_adfeedf4aae258d0bb94188c7b394b91) #8
  unreachable

bb14:                                             ; preds = %bb13
  %39 = getelementptr inbounds [0 x i32], ptr %_15.0, i64 0, i64 5
  %_59 = load i32, ptr %39, align 4, !noundef !4
  %_58 = sext i32 %_59 to i64
  %_57 = and i64 %_58, 255
  %_56 = shl i64 %_57, 40
  %40 = load i64, ptr %v, align 8, !noundef !4
  %41 = or i64 %40, %_56
  store i64 %41, ptr %v, align 8
  %_69 = icmp ult i64 6, %_15.1
  %42 = call i1 @llvm.expect.i1(i1 %_69, i1 true)
  br i1 %42, label %bb15, label %panic8

panic7:                                           ; preds = %bb13
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 5, i64 %_15.1, ptr align 8 @alloc_627ac78a7884bd4ba2732d3c46e0f32e) #8
  unreachable

bb15:                                             ; preds = %bb14
  %43 = getelementptr inbounds [0 x i32], ptr %_15.0, i64 0, i64 6
  %_66 = load i32, ptr %43, align 4, !noundef !4
  %_65 = sext i32 %_66 to i64
  %_64 = and i64 %_65, 255
  %_63 = shl i64 %_64, 48
  %44 = load i64, ptr %v, align 8, !noundef !4
  %45 = or i64 %44, %_63
  store i64 %45, ptr %v, align 8
  %_76 = icmp ult i64 7, %_15.1
  %46 = call i1 @llvm.expect.i1(i1 %_76, i1 true)
  br i1 %46, label %bb16, label %panic9

panic8:                                           ; preds = %bb14
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 6, i64 %_15.1, ptr align 8 @alloc_ae0bbc14c6e54a35e07775cea2cd1002) #8
  unreachable

bb16:                                             ; preds = %bb15
  %47 = getelementptr inbounds [0 x i32], ptr %_15.0, i64 0, i64 7
  %_73 = load i32, ptr %47, align 4, !noundef !4
  %_72 = sext i32 %_73 to i64
  %_71 = and i64 %_72, 255
  %_70 = shl i64 %_71, 56
  %48 = load i64, ptr %v, align 8, !noundef !4
  %49 = or i64 %48, %_70
  store i64 %49, ptr %v, align 8
  store i64 8, ptr %self.dbg.spill.i15, align 8
  store i64 8, ptr %rhs.dbg.spill.i14, align 8
  %_79 = trunc i64 64 to i32
  %_82 = load i64, ptr %v, align 8, !noundef !4
  call void @_ZN14update_md5_lib3src3lib19tflac_md5_addsample17h18b4ef8c781e131eE(ptr align 8 %t, i32 %_79, i64 %_82)
  %_84 = load i32, ptr %0, align 4, !noundef !4
  store i32 %_84, ptr %self.dbg.spill.i13, align 4
  store i32 %step, ptr %rhs.dbg.spill.i12, align 4
  %50 = sub i32 %_84, %step
  store i32 %50, ptr %0, align 4
  %51 = load i64, ptr %sample_index, align 8, !noundef !4
  %52 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %51, i64 %_10.0)
  %_85.0 = extractvalue { i64, i1 } %52, 0
  %_85.1 = extractvalue { i64, i1 } %52, 1
  %53 = call i1 @llvm.expect.i1(i1 %_85.1, i1 false)
  br i1 %53, label %panic10, label %bb21

panic9:                                           ; preds = %bb15
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 7, i64 %_15.1, ptr align 8 @alloc_d5ba52795aa0116c467272c4000d1e94) #8
  unreachable

bb21:                                             ; preds = %bb16
  store i64 %_85.0, ptr %sample_index, align 8
  %54 = load i32, ptr %i, align 4, !noundef !4
  %55 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %54, i32 1)
  %_86.0 = extractvalue { i32, i1 } %55, 0
  %_86.1 = extractvalue { i32, i1 } %55, 1
  %56 = call i1 @llvm.expect.i1(i1 %_86.1, i1 false)
  br i1 %56, label %panic11, label %bb22

panic10:                                          ; preds = %bb16
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.2, i64 28, ptr align 8 @alloc_2b6c2acaedf28a8a83a0ed4241c4c820) #8
  unreachable

bb22:                                             ; preds = %bb21
  store i32 %_86.0, ptr %i, align 4
  br label %bb5

panic11:                                          ; preds = %bb21
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.2, i64 28, ptr align 8 @alloc_821e5b39a7ff7871a7a324dbf0b6aeeb) #8
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #4

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h49a6e06858eff561E"(ptr align 4 %self.0, i64 %self.1, i64 %index.0, i64 %index.1, ptr align 8 %0) unnamed_addr #5 {
start:
  %index.dbg.spill = alloca { i64, i64 }, align 8
  %self.dbg.spill = alloca { ptr, i64 }, align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill, i32 0, i32 0
  store ptr %self.0, ptr %1, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill, i32 0, i32 1
  store i64 %self.1, ptr %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, ptr %index.dbg.spill, i32 0, i32 0
  store i64 %index.0, ptr %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, ptr %index.dbg.spill, i32 0, i32 1
  store i64 %index.1, ptr %4, align 8
  %5 = call { ptr, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hdacc69fd7d1e9266E"(i64 %index.0, i64 %index.1, ptr align 4 %self.0, i64 %self.1, ptr align 8 %0)
  %6 = extractvalue { ptr, i64 } %5, 0
  %7 = extractvalue { ptr, i64 } %5, 1
  %8 = insertvalue { ptr, i64 } poison, ptr %6, 0
  %9 = insertvalue { ptr, i64 } %8, i64 %7, 1
  ret { ptr, i64 } %9
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #4

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hdacc69fd7d1e9266E"(i64 %self.0, i64 %self.1, ptr align 4 %slice.0, i64 %slice.1, ptr align 8 %0) unnamed_addr #5 {
start:
  %data_address.dbg.spill = alloca ptr, align 8
  %len.dbg.spill = alloca i64, align 8
  %data.dbg.spill = alloca ptr, align 8
  %1 = alloca ptr, align 8
  %count.dbg.spill3 = alloca i64, align 8
  %count.dbg.spill = alloca i64, align 8
  %self.dbg.spill2 = alloca ptr, align 8
  %new_len.dbg.spill = alloca i64, align 8
  %2 = alloca i64, align 8
  %slice.dbg.spill1 = alloca { ptr, i64 }, align 8
  %slice.dbg.spill = alloca { ptr, i64 }, align 8
  %self.dbg.spill = alloca { i64, i64 }, align 8
  %_30 = alloca { ptr, i64 }, align 8
  %_29 = alloca %"core::ptr::metadata::PtrRepr<[u8]>", align 8
  %3 = getelementptr inbounds { i64, i64 }, ptr %self.dbg.spill, i32 0, i32 0
  store i64 %self.0, ptr %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, ptr %self.dbg.spill, i32 0, i32 1
  store i64 %self.1, ptr %4, align 8
  %5 = getelementptr inbounds { ptr, i64 }, ptr %slice.dbg.spill, i32 0, i32 0
  store ptr %slice.0, ptr %5, align 8
  %6 = getelementptr inbounds { ptr, i64 }, ptr %slice.dbg.spill, i32 0, i32 1
  store i64 %slice.1, ptr %6, align 8
  %_3 = icmp ugt i64 %self.0, %self.1
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_9 = icmp ugt i64 %self.1, %slice.1
  br i1 %_9, label %bb3, label %bb4

bb1:                                              ; preds = %start
  call void @_ZN4core5slice5index22slice_index_order_fail17h2045503bd7776290E(i64 %self.0, i64 %self.1, ptr align 8 %0) #8
  unreachable

bb4:                                              ; preds = %bb2
  %7 = getelementptr inbounds { ptr, i64 }, ptr %slice.dbg.spill1, i32 0, i32 0
  store ptr %slice.0, ptr %7, align 8
  %8 = getelementptr inbounds { ptr, i64 }, ptr %slice.dbg.spill1, i32 0, i32 1
  store i64 %slice.1, ptr %8, align 8
  %9 = sub nuw i64 %self.1, %self.0
  store i64 %9, ptr %2, align 8
  %new_len = load i64, ptr %2, align 8, !noundef !4
  store i64 %new_len, ptr %new_len.dbg.spill, align 8
  store ptr %slice.0, ptr %self.dbg.spill2, align 8
  store i64 %self.0, ptr %count.dbg.spill, align 8
  store i64 %self.0, ptr %count.dbg.spill3, align 8
  %10 = getelementptr inbounds i32, ptr %slice.0, i64 %self.0
  store ptr %10, ptr %1, align 8
  %data = load ptr, ptr %1, align 8, !noundef !4
  store ptr %data, ptr %data.dbg.spill, align 8
  store i64 %new_len, ptr %len.dbg.spill, align 8
  store ptr %data, ptr %data_address.dbg.spill, align 8
  store ptr %data, ptr %_30, align 8
  %11 = getelementptr inbounds { ptr, i64 }, ptr %_30, i32 0, i32 1
  store i64 %new_len, ptr %11, align 8
  %12 = getelementptr inbounds { ptr, i64 }, ptr %_30, i32 0, i32 0
  %13 = load ptr, ptr %12, align 8, !noundef !4
  %14 = getelementptr inbounds { ptr, i64 }, ptr %_30, i32 0, i32 1
  %15 = load i64, ptr %14, align 8, !noundef !4
  %16 = getelementptr inbounds { ptr, i64 }, ptr %_29, i32 0, i32 0
  store ptr %13, ptr %16, align 8
  %17 = getelementptr inbounds { ptr, i64 }, ptr %_29, i32 0, i32 1
  store i64 %15, ptr %17, align 8
  %18 = getelementptr inbounds { ptr, i64 }, ptr %_29, i32 0, i32 0
  %_15.0 = load ptr, ptr %18, align 8, !noundef !4
  %19 = getelementptr inbounds { ptr, i64 }, ptr %_29, i32 0, i32 1
  %_15.1 = load i64, ptr %19, align 8, !noundef !4
  %20 = insertvalue { ptr, i64 } poison, ptr %_15.0, 0
  %21 = insertvalue { ptr, i64 } %20, i64 %_15.1, 1
  ret { ptr, i64 } %21

bb3:                                              ; preds = %bb2
  call void @_ZN4core5slice5index24slice_end_index_len_fail17h63e54c65524702d3E(i64 %self.1, i64 %slice.1, ptr align 8 %0) #8
  unreachable
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_1() unnamed_addr #0 {
start:
  %self.dbg.spill.i2 = alloca { ptr, i64 }, align 8
  %self.dbg.spill.i1 = alloca { ptr, i64 }, align 8
  %count.dbg.spill.i = alloca i64, align 8
  %val.dbg.spill.i = alloca i8, align 1
  %self.dbg.spill1.i = alloca ptr, align 8
  %self.dbg.spill.i = alloca ptr, align 8
  %slot.i = alloca %"core::mem::manually_drop::ManuallyDrop<[[src::lib::Tflac; 32]; 4]>", align 8
  %u.i = alloca %"core::mem::maybe_uninit::MaybeUninit<[[src::lib::Tflac; 32]; 4]>", align 8
  %i.dbg.spill = alloca i64, align 8
  %ret.dbg.spill = alloca i32, align 4
  %_23 = alloca { i64, i64 }, align 8
  %iter = alloca { i64, i64 }, align 8
  %_21 = alloca { i64, i64 }, align 8
  %_3 = alloca [32 x i32], align 4
  %samples = alloca [4 x [32 x i32]], align 4
  %t_array = alloca [4 x [32 x %"src::lib::Tflac"]], align 8
  %0 = alloca i8, align 1
  store ptr %u.i, ptr %self.dbg.spill.i, align 8
  store ptr %u.i, ptr %self.dbg.spill1.i, align 8
  store i8 0, ptr %val.dbg.spill.i, align 1
  store i64 1, ptr %count.dbg.spill.i, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %u.i, i8 0, i64 12288, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %slot.i, ptr align 8 %u.i, i64 12288, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %t_array, ptr align 8 %slot.i, i64 12288, i1 false)
  %1 = getelementptr inbounds [32 x i32], ptr %_3, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 128, i1 false)
  %2 = getelementptr inbounds [4 x [32 x i32]], ptr %samples, i64 0, i64 0
  %3 = getelementptr inbounds [4 x [32 x i32]], ptr %samples, i64 0, i64 4
  br label %repeat_loop_header

repeat_loop_header:                               ; preds = %repeat_loop_body, %start
  %4 = phi ptr [ %2, %start ], [ %6, %repeat_loop_body ]
  %5 = icmp ne ptr %4, %3
  br i1 %5, label %repeat_loop_body, label %repeat_loop_next

repeat_loop_body:                                 ; preds = %repeat_loop_header
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %4, ptr align 4 %_3, i64 128, i1 false)
  %6 = getelementptr inbounds [32 x i32], ptr %4, i64 1
  br label %repeat_loop_header

repeat_loop_next:                                 ; preds = %repeat_loop_header
  store ptr %t_array, ptr %self.dbg.spill.i1, align 8
  %7 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i1, i32 0, i32 1
  store i64 4, ptr %7, align 8
  store ptr %samples, ptr %self.dbg.spill.i2, align 8
  %8 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i2, i32 0, i32 1
  store i64 4, ptr %8, align 8
  %ret = call i32 @update_md5(ptr %t_array, ptr %samples)
  store i32 %ret, ptr %ret.dbg.spill, align 4
  %9 = icmp eq i32 %ret, -40
  br i1 %9, label %bb7, label %bb5

bb7:                                              ; preds = %repeat_loop_next
  %10 = getelementptr inbounds [4 x [32 x %"src::lib::Tflac"]], ptr %t_array, i64 0, i64 0
  %11 = getelementptr inbounds [32 x %"src::lib::Tflac"], ptr %10, i64 0, i64 0
  %_14 = load i32, ptr %11, align 8, !noundef !4
  %12 = icmp eq i32 %_14, 40
  br i1 %12, label %bb9, label %bb8

bb5:                                              ; preds = %repeat_loop_next
  store i8 0, ptr %0, align 1
  br label %bb23

bb23:                                             ; preds = %bb21, %bb22, %bb19, %bb18, %bb10, %bb8, %bb5
  %13 = load i8, ptr %0, align 1, !range !5, !noundef !4
  %14 = trunc i8 %13 to i1
  ret i1 %14

bb9:                                              ; preds = %bb7
  %15 = getelementptr inbounds [4 x [32 x %"src::lib::Tflac"]], ptr %t_array, i64 0, i64 0
  %16 = getelementptr inbounds [32 x %"src::lib::Tflac"], ptr %15, i64 0, i64 0
  %17 = getelementptr inbounds %"src::lib::TflacMd5", ptr %16, i32 0, i32 2
  %_17 = load i64, ptr %17, align 8, !noundef !4
  %18 = icmp eq i64 %_17, 320
  br i1 %18, label %bb11, label %bb10

bb8:                                              ; preds = %bb7
  store i8 0, ptr %0, align 1
  br label %bb23

bb11:                                             ; preds = %bb9
  store i64 0, ptr %_21, align 8
  %19 = getelementptr inbounds { i64, i64 }, ptr %_21, i32 0, i32 1
  store i64 72, ptr %19, align 8
  %20 = getelementptr inbounds { i64, i64 }, ptr %_21, i32 0, i32 0
  %21 = load i64, ptr %20, align 8, !noundef !4
  %22 = getelementptr inbounds { i64, i64 }, ptr %_21, i32 0, i32 1
  %23 = load i64, ptr %22, align 8, !noundef !4
  %24 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hdb8122c25b3dc315E"(i64 %21, i64 %23)
  %_20.0 = extractvalue { i64, i64 } %24, 0
  %_20.1 = extractvalue { i64, i64 } %24, 1
  %25 = getelementptr inbounds { i64, i64 }, ptr %iter, i32 0, i32 0
  store i64 %_20.0, ptr %25, align 8
  %26 = getelementptr inbounds { i64, i64 }, ptr %iter, i32 0, i32 1
  store i64 %_20.1, ptr %26, align 8
  br label %bb13

bb10:                                             ; preds = %bb9
  store i8 0, ptr %0, align 1
  br label %bb23

bb13:                                             ; preds = %bb17, %bb11
  %27 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h2f6f1e477f33f37dE"(ptr align 8 %iter)
  store { i64, i64 } %27, ptr %_23, align 8
  %_25 = load i64, ptr %_23, align 8, !range !6, !noundef !4
  %28 = icmp eq i64 %_25, 0
  br i1 %28, label %bb16, label %bb15

bb16:                                             ; preds = %bb13
  %29 = getelementptr inbounds [4 x [32 x %"src::lib::Tflac"]], ptr %t_array, i64 0, i64 0
  %30 = getelementptr inbounds [32 x %"src::lib::Tflac"], ptr %29, i64 0, i64 0
  %31 = getelementptr inbounds %"src::lib::Tflac", ptr %30, i32 0, i32 1
  %_32 = load i32, ptr %31, align 8, !noundef !4
  %32 = icmp eq i32 %_32, 0
  br i1 %32, label %bb20, label %bb19

bb15:                                             ; preds = %bb13
  %33 = getelementptr inbounds { i64, i64 }, ptr %_23, i32 0, i32 1
  %i = load i64, ptr %33, align 8, !noundef !4
  store i64 %i, ptr %i.dbg.spill, align 8
  %_31 = icmp ult i64 %i, 72
  %34 = call i1 @llvm.expect.i1(i1 %_31, i1 true)
  br i1 %34, label %bb17, label %panic

bb6:                                              ; No predecessors!
  unreachable

bb17:                                             ; preds = %bb15
  %35 = getelementptr inbounds [4 x [32 x %"src::lib::Tflac"]], ptr %t_array, i64 0, i64 0
  %36 = getelementptr inbounds [32 x %"src::lib::Tflac"], ptr %35, i64 0, i64 0
  %37 = getelementptr inbounds %"src::lib::TflacMd5", ptr %36, i32 0, i32 3
  %38 = getelementptr inbounds [72 x i8], ptr %37, i64 0, i64 %i
  %_27 = load i8, ptr %38, align 1, !noundef !4
  %39 = icmp eq i8 %_27, 0
  br i1 %39, label %bb13, label %bb18

panic:                                            ; preds = %bb15
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 72, ptr align 8 @alloc_191c2b0a91cfa92597b251cc2ead9c33) #8
  unreachable

bb18:                                             ; preds = %bb17
  store i8 0, ptr %0, align 1
  br label %bb23

bb20:                                             ; preds = %bb16
  %40 = getelementptr inbounds [4 x [32 x %"src::lib::Tflac"]], ptr %t_array, i64 0, i64 0
  %41 = getelementptr inbounds [32 x %"src::lib::Tflac"], ptr %40, i64 0, i64 0
  %42 = getelementptr inbounds %"src::lib::Tflac", ptr %41, i32 0, i32 2
  %_35 = load i32, ptr %42, align 4, !noundef !4
  %43 = icmp eq i32 %_35, 0
  br i1 %43, label %bb22, label %bb21

bb19:                                             ; preds = %bb16
  store i8 0, ptr %0, align 1
  br label %bb23

bb22:                                             ; preds = %bb20
  store i8 1, ptr %0, align 1
  br label %bb23

bb21:                                             ; preds = %bb20
  store i8 0, ptr %0, align 1
  br label %bb23
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hdb8122c25b3dc315E"(i64 %self.0, i64 %self.1) unnamed_addr #5 {
start:
  %self.dbg.spill = alloca { i64, i64 }, align 8
  %0 = getelementptr inbounds { i64, i64 }, ptr %self.dbg.spill, i32 0, i32 0
  store i64 %self.0, ptr %0, align 8
  %1 = getelementptr inbounds { i64, i64 }, ptr %self.dbg.spill, i32 0, i32 1
  store i64 %self.1, ptr %1, align 8
  %2 = insertvalue { i64, i64 } poison, i64 %self.0, 0
  %3 = insertvalue { i64, i64 } %2, i64 %self.1, 1
  ret { i64, i64 } %3
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h2f6f1e477f33f37dE"(ptr align 8 %self) unnamed_addr #5 {
start:
  %self.dbg.spill = alloca ptr, align 8
  store ptr %self, ptr %self.dbg.spill, align 8
  %0 = call { i64, i64 } @"_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17h6324bf03a9c655b7E"(ptr align 8 %self)
  %1 = extractvalue { i64, i64 } %0, 0
  %2 = extractvalue { i64, i64 } %0, 1
  %3 = insertvalue { i64, i64 } poison, i64 %1, 0
  %4 = insertvalue { i64, i64 } %3, i64 %2, 1
  ret { i64, i64 } %4
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @"_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17h6324bf03a9c655b7E"(ptr align 8 %self) unnamed_addr #5 {
start:
  %self.dbg.spill.i = alloca ptr, align 8
  %dst.dbg.spill = alloca ptr, align 8
  %result.dbg.spill = alloca i64, align 8
  %src.dbg.spill1 = alloca ptr, align 8
  %src.dbg.spill = alloca i64, align 8
  %dest.dbg.spill = alloca ptr, align 8
  %n.dbg.spill = alloca i64, align 8
  %self.dbg.spill = alloca ptr, align 8
  %src = alloca i64, align 8
  %0 = alloca { i64, i64 }, align 8
  store ptr %self, ptr %self.dbg.spill, align 8
  %_4 = getelementptr inbounds { i64, i64 }, ptr %self, i32 0, i32 1
  %_2 = call zeroext i1 @"_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17hdfd7ae8b9440cb66E"(ptr align 8 %self, ptr align 8 %_4)
  br i1 %_2, label %bb2, label %bb5

bb5:                                              ; preds = %start
  store i64 0, ptr %0, align 8
  br label %bb6

bb2:                                              ; preds = %start
  store ptr %self, ptr %self.dbg.spill.i, align 8
  %1 = load i64, ptr %self, align 8, !noundef !4
  %n = call i64 @"_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17h68ad816bde22400bE"(i64 %1, i64 1)
  store i64 %n, ptr %n.dbg.spill, align 8
  store ptr %self, ptr %dest.dbg.spill, align 8
  store i64 %n, ptr %src.dbg.spill, align 8
  store ptr %self, ptr %src.dbg.spill1, align 8
  %result = load i64, ptr %self, align 8, !noundef !4
  store i64 %result, ptr %result.dbg.spill, align 8
  store ptr %self, ptr %dst.dbg.spill, align 8
  store i64 %n, ptr %src, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %self, ptr align 8 %src, i64 8, i1 false)
  %2 = getelementptr inbounds { i64, i64 }, ptr %0, i32 0, i32 1
  store i64 %result, ptr %2, align 8
  store i64 1, ptr %0, align 8
  br label %bb6

bb6:                                              ; preds = %bb2, %bb5
  %3 = getelementptr inbounds { i64, i64 }, ptr %0, i32 0, i32 0
  %4 = load i64, ptr %3, align 8, !range !6, !noundef !4
  %5 = getelementptr inbounds { i64, i64 }, ptr %0, i32 0, i32 1
  %6 = load i64, ptr %5, align 8
  %7 = insertvalue { i64, i64 } poison, i64 %4, 0
  %8 = insertvalue { i64, i64 } %7, i64 %6, 1
  ret { i64, i64 } %8
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17hdfd7ae8b9440cb66E"(ptr align 8 %self, ptr align 8 %other) unnamed_addr #5 {
start:
  %other.dbg.spill = alloca ptr, align 8
  %self.dbg.spill = alloca ptr, align 8
  store ptr %self, ptr %self.dbg.spill, align 8
  store ptr %other, ptr %other.dbg.spill, align 8
  %_3 = load i64, ptr %self, align 8, !noundef !4
  %_4 = load i64, ptr %other, align 8, !noundef !4
  %0 = icmp ult i64 %_3, %_4
  ret i1 %0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @"_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17h68ad816bde22400bE"(i64 %start1, i64 %n) unnamed_addr #5 {
start:
  %0 = alloca i64, align 8
  %n.dbg.spill = alloca i64, align 8
  %start.dbg.spill = alloca i64, align 8
  store i64 %start1, ptr %start.dbg.spill, align 8
  store i64 %n, ptr %n.dbg.spill, align 8
  %1 = add nuw i64 %start1, %n
  store i64 %1, ptr %0, align 8
  %2 = load i64, ptr %0, align 8, !noundef !4
  ret i64 %2
}

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #2 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { noreturn }
attributes #9 = { noinline noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 2, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{}
!5 = !{i8 0, i8 2}
!6 = !{i64 0, i64 2}
