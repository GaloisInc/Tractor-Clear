; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; ASSERT EQ: i1 1 = call i1 @run_test_1()
; ASSERT EQ: i1 1 = call i1 @run_test_2()
; ASSERT EQ: i1 1 = call i1 @run_test_3()
; ASSERT EQ: i1 1 = call i1 @run_test_4()
; ASSERT EQ: i1 1 = call i1 @run_test_5()

%"core::ptr::metadata::PtrRepr<[f32]>" = type { [2 x i64] }
%"core::num::error::TryFromIntError" = type { {} }
%"core::ptr::metadata::PtrComponents<f32>" = type { ptr, {} }
%"core::ptr::metadata::PtrRepr<f32>" = type { [1 x i64] }

@alloc_f5ffd2fd1476bab43ad89fb40c72d0c5 = private unnamed_addr constant <{ [10 x i8] }> <{ [10 x i8] c"src/lib.rs" }>, align 1
@alloc_997240840395cfdfdb1b2627833fc97d = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\11\00\00\00\10\00\00\00" }>, align 8
@alloc_b3d69e2db9a39657b961011e65e9a630 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\11\00\00\00\19\00\00\00" }>, align 8
@alloc_f445af433189e114a74798dd27baee32 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\12\00\00\00\09\00\00\00" }>, align 8
@str.0 = internal constant [28 x i8] c"attempt to add with overflow"
@alloc_3c1225531b288cbcdf2465d41418a65d = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\19\00\00\00\17\00\00\00" }>, align 8
@alloc_ef45ec528c54082daf5677c382d39774 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\19\00\00\00\0D\00\00\00" }>, align 8
@alloc_ec2655eb57ef99f211ff9d7fb4209bac = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\1A\00\00\00\0D\00\00\00" }>, align 8
@alloc_5c026ecf61bbb954d258b1f078f2d2af = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\1D\00\00\00\09\00\00\00" }>, align 8
@alloc_b69d4aab1a5967549b31e53440442c18 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\006\00\00\00\0C\00\00\00" }>, align 8
@alloc_186c1746f3c80b8f9b82392971dc0abf = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\006\00\00\00\17\00\00\00" }>, align 8
@alloc_8d3d5a860053826b5eeff02669195375 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00F\00\00\00\0C\00\00\00" }>, align 8
@alloc_7e1e88870daffa3dbc600d726336a070 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00F\00\00\00\17\00\00\00" }>, align 8
@alloc_c7a52b6f29c74f4652aead9437a817a6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00V\00\00\00\0C\00\00\00" }>, align 8
@alloc_9f824128443bfb42521db0df9816f8c2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00V\00\00\00\17\00\00\00" }>, align 8
@alloc_203b4e6b94f95b2201832b00fe551dd3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00p\00\00\00\0C\00\00\00" }>, align 8
@alloc_11d0a531f999f2aba951aa7afc1c733f = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00p\00\00\00\17\00\00\00" }>, align 8
@alloc_00ad408e0d87fb2e7e0f8ca1c5550068 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\88\00\00\00\0C\00\00\00" }>, align 8
@alloc_926624275cda4ff5ff7d21c7e5187fd1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\88\00\00\00!\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define void @normalize(ptr %dest, ptr %src, i32 %size) unnamed_addr #0 {
start:
  %src.dbg.spill2 = alloca { ptr, i64 }, align 8
  %dest.dbg.spill1 = alloca { ptr, i64 }, align 8
  %len.dbg.spill = alloca i64, align 8
  %size.dbg.spill = alloca i32, align 4
  %src.dbg.spill = alloca ptr, align 8
  %dest.dbg.spill = alloca ptr, align 8
  store ptr %dest, ptr %dest.dbg.spill, align 8
  store ptr %src, ptr %src.dbg.spill, align 8
  store i32 %size, ptr %size.dbg.spill, align 4
  %len = sext i32 %size to i64
  store i64 %len, ptr %len.dbg.spill, align 8
  %0 = call { ptr, i64 } @_ZN4core5slice3raw18from_raw_parts_mut17hfb0cf7020cbcbddbE(ptr %dest, i64 %len)
  %dest.0 = extractvalue { ptr, i64 } %0, 0
  %dest.1 = extractvalue { ptr, i64 } %0, 1
  %1 = getelementptr inbounds { ptr, i64 }, ptr %dest.dbg.spill1, i32 0, i32 0
  store ptr %dest.0, ptr %1, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %dest.dbg.spill1, i32 0, i32 1
  store i64 %dest.1, ptr %2, align 8
  %3 = call { ptr, i64 } @_ZN4core5slice3raw14from_raw_parts17hd3fbc6cb7520483bE(ptr %src, i64 %len)
  %src.0 = extractvalue { ptr, i64 } %3, 0
  %src.1 = extractvalue { ptr, i64 } %3, 1
  %4 = getelementptr inbounds { ptr, i64 }, ptr %src.dbg.spill2, i32 0, i32 0
  store ptr %src.0, ptr %4, align 8
  %5 = getelementptr inbounds { ptr, i64 }, ptr %src.dbg.spill2, i32 0, i32 1
  store i64 %src.1, ptr %5, align 8
  call void @_ZN13normalize_lib3src3lib9normalize17hdc15a1d981034801E(ptr align 4 %dest.0, i64 %dest.1, ptr align 4 %src.0, i64 %src.1, i32 %size)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @_ZN4core5slice3raw18from_raw_parts_mut17hfb0cf7020cbcbddbE(ptr %data, i64 %len) unnamed_addr #1 {
start:
  %data_address.dbg.spill = alloca ptr, align 8
  %len.dbg.spill = alloca i64, align 8
  %data.dbg.spill = alloca ptr, align 8
  %_8 = alloca { ptr, i64 }, align 8
  %_7 = alloca %"core::ptr::metadata::PtrRepr<[f32]>", align 8
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

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @_ZN4core5slice3raw14from_raw_parts17hd3fbc6cb7520483bE(ptr %data, i64 %len) unnamed_addr #1 {
start:
  %data_address.dbg.spill = alloca ptr, align 8
  %len.dbg.spill = alloca i64, align 8
  %data.dbg.spill = alloca ptr, align 8
  %_8 = alloca { ptr, i64 }, align 8
  %_7 = alloca %"core::ptr::metadata::PtrRepr<[f32]>", align 8
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
define internal void @_ZN13normalize_lib3src3lib9normalize17hdc15a1d981034801E(ptr align 4 %dest.0, i64 %dest.1, ptr align 4 %src.0, i64 %src.1, i32 %size) unnamed_addr #0 {
start:
  %self.dbg.spill.i9 = alloca { ptr, i64 }, align 8
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %b.dbg.spill.i = alloca ptr, align 8
  %a.dbg.spill.i = alloca ptr, align 8
  %scale.dbg.spill = alloca float, align 4
  %n.dbg.spill = alloca i64, align 8
  %size.dbg.spill3 = alloca i64, align 8
  %size.dbg.spill = alloca i32, align 4
  %src.dbg.spill = alloca { ptr, i64 }, align 8
  %dest.dbg.spill = alloca { ptr, i64 }, align 8
  %_52 = alloca i64, align 8
  %i1 = alloca i64, align 8
  %i = alloca i64, align 8
  %sum = alloca float, align 4
  %0 = getelementptr inbounds { ptr, i64 }, ptr %dest.dbg.spill, i32 0, i32 0
  store ptr %dest.0, ptr %0, align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %dest.dbg.spill, i32 0, i32 1
  store i64 %dest.1, ptr %1, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %src.dbg.spill, i32 0, i32 0
  store ptr %src.0, ptr %2, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %src.dbg.spill, i32 0, i32 1
  store i64 %src.1, ptr %3, align 8
  store i32 %size, ptr %size.dbg.spill, align 4
  %4 = call { i64, i64 } @"_ZN4core7convert3num18ptr_try_from_impls69_$LT$impl$u20$core..convert..TryFrom$LT$i32$GT$$u20$for$u20$usize$GT$8try_from17h4fe07abd5e29fc40E"(i32 %size)
  %_5.0 = extractvalue { i64, i64 } %4, 0
  %_5.1 = extractvalue { i64, i64 } %4, 1
  %size2 = call i64 @"_ZN4core6result19Result$LT$T$C$E$GT$9unwrap_or17hce5153a7aa922529E"(i64 %_5.0, i64 %_5.1, i64 0)
  store i64 %size2, ptr %size.dbg.spill3, align 8
  %_7 = call i64 @_ZN4core3cmp3Ord3min17hdef46aaeb595cc03E(i64 %size2, i64 %dest.1)
  %n = call i64 @_ZN4core3cmp3Ord3min17hdef46aaeb595cc03E(i64 %_7, i64 %src.1)
  store i64 %n, ptr %n.dbg.spill, align 8
  store float 0.000000e+00, ptr %sum, align 4
  store i64 0, ptr %i, align 8
  br label %bb5

bb5:                                              ; preds = %bb9, %start
  %_15 = load i64, ptr %i, align 8, !noundef !4
  %_14 = icmp ult i64 %_15, %n
  br i1 %_14, label %bb6, label %bb10

bb10:                                             ; preds = %bb5
  %_28 = load float, ptr %sum, align 4, !noundef !4
  %_27 = fcmp ogt float %_28, 0.000000e+00
  br i1 %_27, label %bb11, label %bb12

bb6:                                              ; preds = %bb5
  %_19 = load i64, ptr %i, align 8, !noundef !4
  %_21 = icmp ult i64 %_19, %src.1
  %5 = call i1 @llvm.expect.i1(i1 %_21, i1 true)
  br i1 %5, label %bb7, label %panic

bb7:                                              ; preds = %bb6
  %6 = getelementptr inbounds [0 x float], ptr %src.0, i64 0, i64 %_19
  %_18 = load float, ptr %6, align 4, !noundef !4
  %_23 = load i64, ptr %i, align 8, !noundef !4
  %_25 = icmp ult i64 %_23, %src.1
  %7 = call i1 @llvm.expect.i1(i1 %_25, i1 true)
  br i1 %7, label %bb8, label %panic4

panic:                                            ; preds = %bb6
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %_19, i64 %src.1, ptr align 8 @alloc_997240840395cfdfdb1b2627833fc97d) #7
  unreachable

bb8:                                              ; preds = %bb7
  %8 = getelementptr inbounds [0 x float], ptr %src.0, i64 0, i64 %_23
  %_22 = load float, ptr %8, align 4, !noundef !4
  %_17 = fmul float %_18, %_22
  %9 = load float, ptr %sum, align 4, !noundef !4
  %10 = fadd float %9, %_17
  store float %10, ptr %sum, align 4
  %11 = load i64, ptr %i, align 8, !noundef !4
  %12 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %11, i64 1)
  %_26.0 = extractvalue { i64, i1 } %12, 0
  %_26.1 = extractvalue { i64, i1 } %12, 1
  %13 = call i1 @llvm.expect.i1(i1 %_26.1, i1 false)
  br i1 %13, label %panic5, label %bb9

panic4:                                           ; preds = %bb7
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %_23, i64 %src.1, ptr align 8 @alloc_b3d69e2db9a39657b961011e65e9a630) #7
  unreachable

bb9:                                              ; preds = %bb8
  store i64 %_26.0, ptr %i, align 8
  br label %bb5

panic5:                                           ; preds = %bb8
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.0, i64 28, ptr align 8 @alloc_f445af433189e114a74798dd27baee32) #7
  unreachable

bb12:                                             ; preds = %bb10
  store ptr %dest.0, ptr %self.dbg.spill.i9, align 8
  %14 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i9, i32 0, i32 1
  store i64 %dest.1, ptr %14, align 8
  store ptr %src.0, ptr %self.dbg.spill.i, align 8
  %15 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 %src.1, ptr %15, align 8
  store ptr %dest.0, ptr %a.dbg.spill.i, align 8
  store ptr %src.0, ptr %b.dbg.spill.i, align 8
  %16 = icmp eq ptr %dest.0, %src.0
  %_44 = xor i1 %16, true
  br i1 %_44, label %bb22, label %bb24

bb11:                                             ; preds = %bb10
  %_31 = load float, ptr %sum, align 4, !noundef !4
  %_30 = call float @"_ZN3std3f3221_$LT$impl$u20$f32$GT$4sqrt17h0a1206c0ec6ae487E"(float %_31)
  %scale = fdiv float 1.000000e+00, %_30
  store float %scale, ptr %scale.dbg.spill, align 4
  store i64 0, ptr %i1, align 8
  br label %bb14

bb14:                                             ; preds = %bb18, %bb11
  %_34 = load i64, ptr %i1, align 8, !noundef !4
  %_33 = icmp ult i64 %_34, %n
  br i1 %_33, label %bb15, label %bb24

bb24:                                             ; preds = %bb22, %bb14, %bb12
  ret void

bb15:                                             ; preds = %bb14
  %_37 = load i64, ptr %i1, align 8, !noundef !4
  %_39 = icmp ult i64 %_37, %src.1
  %17 = call i1 @llvm.expect.i1(i1 %_39, i1 true)
  br i1 %17, label %bb16, label %panic6

bb16:                                             ; preds = %bb15
  %18 = getelementptr inbounds [0 x float], ptr %src.0, i64 0, i64 %_37
  %_36 = load float, ptr %18, align 4, !noundef !4
  %_40 = load i64, ptr %i1, align 8, !noundef !4
  %_42 = icmp ult i64 %_40, %dest.1
  %19 = call i1 @llvm.expect.i1(i1 %_42, i1 true)
  br i1 %19, label %bb17, label %panic7

panic6:                                           ; preds = %bb15
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %_37, i64 %src.1, ptr align 8 @alloc_3c1225531b288cbcdf2465d41418a65d) #7
  unreachable

bb17:                                             ; preds = %bb16
  %20 = getelementptr inbounds [0 x float], ptr %dest.0, i64 0, i64 %_40
  %21 = fmul float %_36, %scale
  store float %21, ptr %20, align 4
  %22 = load i64, ptr %i1, align 8, !noundef !4
  %23 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %22, i64 1)
  %_43.0 = extractvalue { i64, i1 } %23, 0
  %_43.1 = extractvalue { i64, i1 } %23, 1
  %24 = call i1 @llvm.expect.i1(i1 %_43.1, i1 false)
  br i1 %24, label %panic8, label %bb18

panic7:                                           ; preds = %bb16
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %_40, i64 %dest.1, ptr align 8 @alloc_ef45ec528c54082daf5677c382d39774) #7
  unreachable

bb18:                                             ; preds = %bb17
  store i64 %_43.0, ptr %i1, align 8
  br label %bb14

panic8:                                           ; preds = %bb17
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.0, i64 28, ptr align 8 @alloc_ec2655eb57ef99f211ff9d7fb4209bac) #7
  unreachable

bb22:                                             ; preds = %bb12
  store i64 %n, ptr %_52, align 8
  %25 = load i64, ptr %_52, align 8, !noundef !4
  %26 = call { ptr, i64 } @"_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17hd2373d4b141de197E"(ptr align 4 %dest.0, i64 %dest.1, i64 %25, ptr align 8 @alloc_5c026ecf61bbb954d258b1f078f2d2af)
  %_51.0 = extractvalue { ptr, i64 } %26, 0
  %_51.1 = extractvalue { ptr, i64 } %26, 1
  call void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4fill17hd38c710370170904E"(ptr align 4 %_51.0, i64 %_51.1, float 0.000000e+00)
  br label %bb24
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @"_ZN4core7convert3num18ptr_try_from_impls69_$LT$impl$u20$core..convert..TryFrom$LT$i32$GT$$u20$for$u20$usize$GT$8try_from17h4fe07abd5e29fc40E"(i32 %u) unnamed_addr #1 {
start:
  %u.dbg.spill = alloca i32, align 4
  %0 = alloca { i64, i64 }, align 8
  store i32 %u, ptr %u.dbg.spill, align 4
  %_2 = icmp sge i32 %u, 0
  br i1 %_2, label %bb1, label %bb2

bb2:                                              ; preds = %start
  store i64 1, ptr %0, align 8
  br label %bb3

bb1:                                              ; preds = %start
  %_3 = sext i32 %u to i64
  %1 = getelementptr inbounds { i64, i64 }, ptr %0, i32 0, i32 1
  store i64 %_3, ptr %1, align 8
  store i64 0, ptr %0, align 8
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  %2 = getelementptr inbounds { i64, i64 }, ptr %0, i32 0, i32 0
  %3 = load i64, ptr %2, align 8, !range !5, !noundef !4
  %4 = getelementptr inbounds { i64, i64 }, ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 8
  %6 = insertvalue { i64, i64 } poison, i64 %3, 0
  %7 = insertvalue { i64, i64 } %6, i64 %5, 1
  ret { i64, i64 } %7
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @"_ZN4core6result19Result$LT$T$C$E$GT$9unwrap_or17hce5153a7aa922529E"(i64 %0, i64 %1, i64 %default) unnamed_addr #1 {
start:
  %t.dbg.spill = alloca i64, align 8
  %e.dbg.spill = alloca %"core::num::error::TryFromIntError", align 1
  %default.dbg.spill = alloca i64, align 8
  %_6 = alloca i8, align 1
  %2 = alloca i64, align 8
  %self = alloca { i64, i64 }, align 8
  %3 = getelementptr inbounds { i64, i64 }, ptr %self, i32 0, i32 0
  store i64 %0, ptr %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, ptr %self, i32 0, i32 1
  store i64 %1, ptr %4, align 8
  store i64 %default, ptr %default.dbg.spill, align 8
  store i8 1, ptr %_6, align 1
  %_3 = load i64, ptr %self, align 8, !range !5, !noundef !4
  %5 = icmp eq i64 %_3, 0
  br i1 %5, label %bb3, label %bb1

bb3:                                              ; preds = %start
  %6 = getelementptr inbounds { i64, i64 }, ptr %self, i32 0, i32 1
  %t = load i64, ptr %6, align 8, !noundef !4
  store i64 %t, ptr %t.dbg.spill, align 8
  store i64 %t, ptr %2, align 8
  br label %bb7

bb1:                                              ; preds = %start
  store i8 0, ptr %_6, align 1
  store i64 %default, ptr %2, align 8
  br label %bb7

bb2:                                              ; No predecessors!
  unreachable

bb7:                                              ; preds = %bb1, %bb3
  %7 = load i8, ptr %_6, align 1, !range !6, !noundef !4
  %8 = trunc i8 %7 to i1
  br i1 %8, label %bb6, label %bb5

bb5:                                              ; preds = %bb6, %bb7
  %9 = load i64, ptr %2, align 8, !noundef !4
  ret i64 %9

bb6:                                              ; preds = %bb7
  br label %bb5
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_ZN4core3cmp3Ord3min17hdef46aaeb595cc03E(i64 %self, i64 %other) unnamed_addr #1 {
start:
  %other.dbg.spill = alloca i64, align 8
  %self.dbg.spill = alloca i64, align 8
  store i64 %self, ptr %self.dbg.spill, align 8
  store i64 %other, ptr %other.dbg.spill, align 8
  %0 = call i64 @_ZN4core3cmp6min_by17hc3288b7df247ba9dE(i64 %self, i64 %other)
  ret i64 %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.expect.i1(i1, i1) #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64, i64, ptr align 8) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #4

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1, i64, ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
define internal float @"_ZN3std3f3221_$LT$impl$u20$f32$GT$4sqrt17h0a1206c0ec6ae487E"(float %self) unnamed_addr #1 {
start:
  %0 = alloca float, align 4
  %self.dbg.spill = alloca float, align 4
  store float %self, ptr %self.dbg.spill, align 4
  %1 = call float @llvm.sqrt.f32(float %self)
  store float %1, ptr %0, align 4
  %2 = load float, ptr %0, align 4, !noundef !4
  ret float %2
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @"_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17hd2373d4b141de197E"(ptr align 4 %self.0, i64 %self.1, i64 %index, ptr align 8 %0) unnamed_addr #1 {
start:
  %index.dbg.spill = alloca i64, align 8
  %self.dbg.spill = alloca { ptr, i64 }, align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill, i32 0, i32 0
  store ptr %self.0, ptr %1, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill, i32 0, i32 1
  store i64 %self.1, ptr %2, align 8
  store i64 %index, ptr %index.dbg.spill, align 8
  %3 = call { ptr, i64 } @"_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hc20a032e7213cb92E"(i64 %index, ptr align 4 %self.0, i64 %self.1, ptr align 8 %0)
  %_3.0 = extractvalue { ptr, i64 } %3, 0
  %_3.1 = extractvalue { ptr, i64 } %3, 1
  %4 = insertvalue { ptr, i64 } poison, ptr %_3.0, 0
  %5 = insertvalue { ptr, i64 } %4, i64 %_3.1, 1
  ret { ptr, i64 } %5
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4fill17hd38c710370170904E"(ptr align 4 %self.0, i64 %self.1, float %value) unnamed_addr #0 {
start:
  %value.dbg.spill = alloca float, align 4
  %self.dbg.spill = alloca { ptr, i64 }, align 8
  %0 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill, i32 0, i32 0
  store ptr %self.0, ptr %0, align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill, i32 0, i32 1
  store i64 %self.1, ptr %1, align 8
  store float %value, ptr %value.dbg.spill, align 4
  call void @"_ZN74_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..specialize..SpecFill$LT$T$GT$$GT$9spec_fill17h313945b006f34e3eE"(ptr align 4 %self.0, i64 %self.1, float %value)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN74_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..specialize..SpecFill$LT$T$GT$$GT$9spec_fill17h313945b006f34e3eE"(ptr align 4 %self.0, i64 %self.1, float %value) unnamed_addr #0 {
start:
  %item.dbg.spill = alloca ptr, align 8
  %self.dbg.spill3 = alloca { ptr, ptr }, align 8
  %value.dbg.spill = alloca float, align 4
  %self.dbg.spill = alloca { ptr, i64 }, align 8
  %_6 = alloca ptr, align 8
  %iter = alloca { ptr, ptr }, align 8
  %0 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill, i32 0, i32 0
  store ptr %self.0, ptr %0, align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill, i32 0, i32 1
  store i64 %self.1, ptr %1, align 8
  store float %value, ptr %value.dbg.spill, align 4
  %2 = call { ptr, ptr } @"_ZN4core5slice4iter16IterMut$LT$T$GT$3new17h956249a8cb8dc06aE"(ptr align 4 %self.0, i64 %self.1)
  %self.01 = extractvalue { ptr, ptr } %2, 0
  %self.12 = extractvalue { ptr, ptr } %2, 1
  %3 = getelementptr inbounds { ptr, ptr }, ptr %self.dbg.spill3, i32 0, i32 0
  store ptr %self.01, ptr %3, align 8
  %4 = getelementptr inbounds { ptr, ptr }, ptr %self.dbg.spill3, i32 0, i32 1
  store ptr %self.12, ptr %4, align 8
  %5 = getelementptr inbounds { ptr, ptr }, ptr %iter, i32 0, i32 0
  store ptr %self.01, ptr %5, align 8
  %6 = getelementptr inbounds { ptr, ptr }, ptr %iter, i32 0, i32 1
  store ptr %self.12, ptr %6, align 8
  br label %bb1

bb1:                                              ; preds = %bb3, %start
  %7 = call align 4 ptr @"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfbd216eb844a302cE"(ptr align 8 %iter)
  store ptr %7, ptr %_6, align 8
  %8 = load ptr, ptr %_6, align 8, !noundef !4
  %9 = ptrtoint ptr %8 to i64
  %10 = icmp eq i64 %9, 0
  %_8 = select i1 %10, i64 0, i64 1
  %11 = icmp eq i64 %_8, 0
  br i1 %11, label %bb5, label %bb3

bb5:                                              ; preds = %bb1
  ret void

bb3:                                              ; preds = %bb1
  %item = load ptr, ptr %_6, align 8, !nonnull !4, !align !7, !noundef !4
  store ptr %item, ptr %item.dbg.spill, align 8
  store float %value, ptr %item, align 4
  br label %bb1

bb4:                                              ; No predecessors!
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @"_ZN4core5slice4iter16IterMut$LT$T$GT$3new17h956249a8cb8dc06aE"(ptr align 4 %slice.0, i64 %slice.1) unnamed_addr #1 {
start:
  %0 = alloca ptr, align 8
  %count.dbg.spill5 = alloca i64, align 8
  %count.dbg.spill4 = alloca i64, align 8
  %data_address.dbg.spill = alloca ptr, align 8
  %self.dbg.spill3 = alloca ptr, align 8
  %1 = alloca ptr, align 8
  %count.dbg.spill2 = alloca i64, align 8
  %self.dbg.spill = alloca ptr, align 8
  %count.dbg.spill = alloca i64, align 8
  %ptr.dbg.spill1 = alloca ptr, align 8
  %ptr.dbg.spill = alloca ptr, align 8
  %slice.dbg.spill = alloca { ptr, i64 }, align 8
  %_27 = alloca %"core::ptr::metadata::PtrComponents<f32>", align 8
  %_26 = alloca %"core::ptr::metadata::PtrRepr<f32>", align 8
  %_14 = alloca ptr, align 8
  %_11 = alloca ptr, align 8
  %end = alloca ptr, align 8
  %2 = alloca { ptr, ptr }, align 8
  %metadata.dbg.spill = alloca {}, align 1
  %3 = getelementptr inbounds { ptr, i64 }, ptr %slice.dbg.spill, i32 0, i32 0
  store ptr %slice.0, ptr %3, align 8
  %4 = getelementptr inbounds { ptr, i64 }, ptr %slice.dbg.spill, i32 0, i32 1
  store i64 %slice.1, ptr %4, align 8
  store ptr %slice.0, ptr %ptr.dbg.spill, align 8
  store ptr %slice.0, ptr %_14, align 8
  %ptr = load ptr, ptr %_14, align 8, !noundef !4
  store ptr %ptr, ptr %ptr.dbg.spill1, align 8
  %_17 = ptrtoint ptr %ptr to i64
  %_4 = icmp eq i64 %_17, 0
  %_3 = xor i1 %_4, true
  call void @llvm.assume(i1 %_3)
  br i1 false, label %bb1, label %bb2

bb2:                                              ; preds = %start
  store i64 %slice.1, ptr %count.dbg.spill4, align 8
  store i64 %slice.1, ptr %count.dbg.spill5, align 8
  %5 = getelementptr inbounds float, ptr %slice.0, i64 %slice.1
  store ptr %5, ptr %0, align 8
  %_30 = load ptr, ptr %0, align 8, !noundef !4
  store ptr %_30, ptr %end, align 8
  br label %bb3

bb1:                                              ; preds = %start
  store i64 %slice.1, ptr %count.dbg.spill, align 8
  store ptr %slice.0, ptr %self.dbg.spill, align 8
  store i64 %slice.1, ptr %count.dbg.spill2, align 8
  %6 = getelementptr i8, ptr %slice.0, i64 %slice.1
  store ptr %6, ptr %1, align 8
  %_23 = load ptr, ptr %1, align 8, !noundef !4
  store ptr %_23, ptr %self.dbg.spill3, align 8
  store ptr %_23, ptr %data_address.dbg.spill, align 8
  store ptr %_23, ptr %_27, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_26, ptr align 8 %_27, i64 8, i1 false)
  %7 = load ptr, ptr %_26, align 8, !noundef !4
  store ptr %7, ptr %end, align 8
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  store ptr %slice.0, ptr %_11, align 8
  %_12 = load ptr, ptr %end, align 8, !noundef !4
  %8 = load ptr, ptr %_11, align 8, !nonnull !4, !noundef !4
  %9 = getelementptr inbounds { ptr, ptr }, ptr %2, i32 0, i32 1
  store ptr %8, ptr %9, align 8
  store ptr %_12, ptr %2, align 8
  %10 = getelementptr inbounds { ptr, ptr }, ptr %2, i32 0, i32 0
  %11 = load ptr, ptr %10, align 8, !noundef !4
  %12 = getelementptr inbounds { ptr, ptr }, ptr %2, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8, !nonnull !4, !noundef !4
  %14 = insertvalue { ptr, ptr } poison, ptr %11, 0
  %15 = insertvalue { ptr, ptr } %14, ptr %13, 1
  ret { ptr, ptr } %15
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal align 4 ptr @"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfbd216eb844a302cE"(ptr align 8 %self) unnamed_addr #1 {
start:
  %self.dbg.spill22 = alloca ptr, align 8
  %data_address.dbg.spill = alloca ptr, align 8
  %self.dbg.spill20 = alloca ptr, align 8
  %0 = alloca ptr, align 8
  %count.dbg.spill19 = alloca i64, align 8
  %self.dbg.spill18 = alloca ptr, align 8
  %self.dbg.spill17 = alloca ptr, align 8
  %ptr.dbg.spill15 = alloca ptr, align 8
  %1 = alloca ptr, align 8
  %count.dbg.spill = alloca i64, align 8
  %self.dbg.spill14 = alloca ptr, align 8
  %self.dbg.spill13 = alloca ptr, align 8
  %old.dbg.spill = alloca ptr, align 8
  %self.dbg.spill11 = alloca ptr, align 8
  %self.dbg.spill9 = alloca ptr, align 8
  %ptr.dbg.spill7 = alloca ptr, align 8
  %self.dbg.spill5 = alloca ptr, align 8
  %ptr.dbg.spill = alloca ptr, align 8
  %self.dbg.spill3 = alloca ptr, align 8
  %self.dbg.spill2 = alloca ptr, align 8
  %self.dbg.spill = alloca ptr, align 8
  %_51 = alloca %"core::ptr::metadata::PtrComponents<f32>", align 8
  %_50 = alloca %"core::ptr::metadata::PtrRepr<f32>", align 8
  %_37 = alloca ptr, align 8
  %_24 = alloca ptr, align 8
  %_19 = alloca ptr, align 8
  %_17 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %metadata.dbg.spill = alloca {}, align 1
  store ptr %self, ptr %self.dbg.spill, align 8
  %3 = getelementptr inbounds { ptr, ptr }, ptr %self, i32 0, i32 1
  %self1 = load ptr, ptr %3, align 8, !nonnull !4, !noundef !4
  store ptr %self1, ptr %self.dbg.spill2, align 8
  store ptr %self1, ptr %self.dbg.spill3, align 8
  store ptr %self1, ptr %_19, align 8
  %ptr = load ptr, ptr %_19, align 8, !noundef !4
  store ptr %ptr, ptr %ptr.dbg.spill, align 8
  %_22 = ptrtoint ptr %ptr to i64
  %_3 = icmp eq i64 %_22, 0
  %_2 = xor i1 %_3, true
  call void @llvm.assume(i1 %_2)
  br i1 true, label %bb1, label %bb2

bb2:                                              ; preds = %bb1, %start
  %4 = getelementptr inbounds { ptr, ptr }, ptr %self, i32 0, i32 1
  %self8 = load ptr, ptr %4, align 8, !nonnull !4, !noundef !4
  store ptr %self8, ptr %self.dbg.spill9, align 8
  %_15 = load ptr, ptr %self, align 8, !noundef !4
  %_10 = icmp eq ptr %self8, %_15
  br i1 %_10, label %bb3, label %bb4

bb1:                                              ; preds = %start
  %self4 = load ptr, ptr %self, align 8, !noundef !4
  store ptr %self4, ptr %self.dbg.spill5, align 8
  store ptr %self4, ptr %_24, align 8
  %ptr6 = load ptr, ptr %_24, align 8, !noundef !4
  store ptr %ptr6, ptr %ptr.dbg.spill7, align 8
  %_27 = ptrtoint ptr %ptr6 to i64
  %_8 = icmp eq i64 %_27, 0
  %_7 = xor i1 %_8, true
  call void @llvm.assume(i1 %_7)
  br label %bb2

bb4:                                              ; preds = %bb2
  br i1 false, label %bb6, label %bb7

bb3:                                              ; preds = %bb2
  store ptr null, ptr %2, align 8
  br label %bb5

bb5:                                              ; preds = %bb8, %bb3
  %5 = load ptr, ptr %2, align 8, !align !7, !noundef !4
  ret ptr %5

bb6:                                              ; preds = %bb4
  %self16 = load ptr, ptr %self, align 8, !noundef !4
  store ptr %self16, ptr %self.dbg.spill17, align 8
  store ptr %self16, ptr %self.dbg.spill18, align 8
  store i64 -1, ptr %count.dbg.spill19, align 8
  %6 = getelementptr i8, ptr %self16, i64 -1
  store ptr %6, ptr %0, align 8
  %_47 = load ptr, ptr %0, align 8, !noundef !4
  store ptr %_47, ptr %self.dbg.spill20, align 8
  store ptr %_47, ptr %data_address.dbg.spill, align 8
  store ptr %_47, ptr %_51, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_50, ptr align 8 %_51, i64 8, i1 false)
  %_32 = load ptr, ptr %_50, align 8, !noundef !4
  store ptr %_32, ptr %self, align 8
  %7 = getelementptr inbounds { ptr, ptr }, ptr %self, i32 0, i32 1
  %self21 = load ptr, ptr %7, align 8, !nonnull !4, !noundef !4
  store ptr %self21, ptr %self.dbg.spill22, align 8
  store ptr %self21, ptr %_17, align 8
  br label %bb8

bb7:                                              ; preds = %bb4
  %8 = getelementptr inbounds { ptr, ptr }, ptr %self, i32 0, i32 1
  %self10 = load ptr, ptr %8, align 8, !nonnull !4, !noundef !4
  store ptr %self10, ptr %self.dbg.spill11, align 8
  store ptr %self10, ptr %old.dbg.spill, align 8
  %9 = getelementptr inbounds { ptr, ptr }, ptr %self, i32 0, i32 1
  %self12 = load ptr, ptr %9, align 8, !nonnull !4, !noundef !4
  store ptr %self12, ptr %self.dbg.spill13, align 8
  store ptr %self12, ptr %self.dbg.spill14, align 8
  store i64 1, ptr %count.dbg.spill, align 8
  %10 = getelementptr inbounds float, ptr %self12, i64 1
  store ptr %10, ptr %1, align 8
  %_57 = load ptr, ptr %1, align 8, !noundef !4
  store ptr %_57, ptr %ptr.dbg.spill15, align 8
  store ptr %_57, ptr %_37, align 8
  %11 = getelementptr inbounds { ptr, ptr }, ptr %self, i32 0, i32 1
  %12 = load ptr, ptr %_37, align 8, !nonnull !4, !noundef !4
  store ptr %12, ptr %11, align 8
  store ptr %self10, ptr %_17, align 8
  br label %bb8

bb8:                                              ; preds = %bb7, %bb6
  %_16 = load ptr, ptr %_17, align 8, !noundef !4
  store ptr %_16, ptr %2, align 8
  br label %bb5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @"_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hc20a032e7213cb92E"(i64 %self, ptr align 4 %slice.0, i64 %slice.1, ptr align 8 %0) unnamed_addr #1 {
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
  %8 = call { ptr, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hc7826ad572022219E"(i64 %5, i64 %7, ptr align 4 %slice.0, i64 %slice.1, ptr align 8 %0)
  %_3.0 = extractvalue { ptr, i64 } %8, 0
  %_3.1 = extractvalue { ptr, i64 } %8, 1
  %9 = insertvalue { ptr, i64 } poison, ptr %_3.0, 0
  %10 = insertvalue { ptr, i64 } %9, i64 %_3.1, 1
  ret { ptr, i64 } %10
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hc7826ad572022219E"(i64 %self.0, i64 %self.1, ptr align 4 %slice.0, i64 %slice.1, ptr align 8 %0) unnamed_addr #1 {
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
  %_34 = alloca %"core::ptr::metadata::PtrRepr<[f32]>", align 8
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
  call void @_ZN4core5slice5index22slice_index_order_fail17h2045503bd7776290E(i64 %self.0, i64 %self.1, ptr align 8 %0) #7
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
  %10 = getelementptr inbounds float, ptr %slice.0, i64 %self.0
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
  call void @_ZN4core5slice5index24slice_end_index_len_fail17h63e54c65524702d3E(i64 %self.1, i64 %slice.1, ptr align 8 %0) #7
  unreachable
}

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice5index22slice_index_order_fail17h2045503bd7776290E(i64, i64, ptr align 8) unnamed_addr #3

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice5index24slice_end_index_len_fail17h63e54c65524702d3E(i64, i64, ptr align 8) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #4

; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_ZN4core3cmp6min_by17hc3288b7df247ba9dE(i64 %0, i64 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %2 = alloca { ptr, i32 }, align 8
  %compare.dbg.spill = alloca {}, align 1
  %_10 = alloca i8, align 1
  %_9 = alloca i8, align 1
  %_5 = alloca { ptr, ptr }, align 8
  %_4 = alloca i8, align 1
  %3 = alloca i64, align 8
  %v2 = alloca i64, align 8
  %v1 = alloca i64, align 8
  store i64 %0, ptr %v1, align 8
  store i64 %1, ptr %v2, align 8
  store i8 1, ptr %_10, align 1
  store i8 1, ptr %_9, align 1
  store ptr %v1, ptr %_5, align 8
  %4 = getelementptr inbounds { ptr, ptr }, ptr %_5, i32 0, i32 1
  store ptr %v2, ptr %4, align 8
  %5 = getelementptr inbounds { ptr, ptr }, ptr %_5, i32 0, i32 0
  %6 = load ptr, ptr %5, align 8, !nonnull !4, !align !8, !noundef !4
  %7 = getelementptr inbounds { ptr, ptr }, ptr %_5, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8, !nonnull !4, !align !8, !noundef !4
  %9 = invoke i8 @_ZN4core3ops8function6FnOnce9call_once17h6e1b7b59bb8b1821E(ptr align 8 %6, ptr align 8 %8)
          to label %bb1 unwind label %cleanup, !range !9

bb8:                                              ; preds = %cleanup
  br label %bb13

cleanup:                                          ; preds = %start
  %10 = landingpad { ptr, i32 }
          cleanup
  %11 = extractvalue { ptr, i32 } %10, 0
  %12 = extractvalue { ptr, i32 } %10, 1
  %13 = getelementptr inbounds { ptr, i32 }, ptr %2, i32 0, i32 0
  store ptr %11, ptr %13, align 8
  %14 = getelementptr inbounds { ptr, i32 }, ptr %2, i32 0, i32 1
  store i32 %12, ptr %14, align 8
  br label %bb8

bb1:                                              ; preds = %start
  store i8 %9, ptr %_4, align 1
  %_8 = load i8, ptr %_4, align 1, !range !9, !noundef !4
  switch i8 %_8, label %bb3 [
    i8 -1, label %bb4
    i8 0, label %bb4
    i8 1, label %bb2
  ]

bb13:                                             ; preds = %bb8
  %15 = load i8, ptr %_10, align 1, !range !6, !noundef !4
  %16 = trunc i8 %15 to i1
  br i1 %16, label %bb12, label %bb9

bb3:                                              ; preds = %bb1
  unreachable

bb4:                                              ; preds = %bb1, %bb1
  store i8 0, ptr %_10, align 1
  %17 = load i64, ptr %v1, align 8, !noundef !4
  store i64 %17, ptr %3, align 8
  br label %bb5

bb2:                                              ; preds = %bb1
  store i8 0, ptr %_9, align 1
  %18 = load i64, ptr %v2, align 8, !noundef !4
  store i64 %18, ptr %3, align 8
  br label %bb5

bb5:                                              ; preds = %bb2, %bb4
  %19 = load i8, ptr %_9, align 1, !range !6, !noundef !4
  %20 = trunc i8 %19 to i1
  br i1 %20, label %bb10, label %bb6

bb6:                                              ; preds = %bb10, %bb5
  %21 = load i8, ptr %_10, align 1, !range !6, !noundef !4
  %22 = trunc i8 %21 to i1
  br i1 %22, label %bb11, label %bb7

bb10:                                             ; preds = %bb5
  br label %bb6

bb9:                                              ; preds = %bb12, %bb13
  %23 = load ptr, ptr %2, align 8, !noundef !4
  %24 = getelementptr inbounds { ptr, i32 }, ptr %2, i32 0, i32 1
  %25 = load i32, ptr %24, align 8, !noundef !4
  %26 = insertvalue { ptr, i32 } poison, ptr %23, 0
  %27 = insertvalue { ptr, i32 } %26, i32 %25, 1
  resume { ptr, i32 } %27

bb12:                                             ; preds = %bb13
  br label %bb9

bb7:                                              ; preds = %bb11, %bb6
  %28 = load i64, ptr %3, align 8, !noundef !4
  ret i64 %28

bb11:                                             ; preds = %bb6
  br label %bb7
}

; Function Attrs: nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8 @_ZN4core3ops8function6FnOnce9call_once17h6e1b7b59bb8b1821E(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 {
start:
  %_1.dbg.spill = alloca {}, align 1
  %_2 = alloca { ptr, ptr }, align 8
  store ptr %0, ptr %_2, align 8
  %2 = getelementptr inbounds { ptr, ptr }, ptr %_2, i32 0, i32 1
  store ptr %1, ptr %2, align 8
  %3 = load ptr, ptr %_2, align 8, !nonnull !4, !align !8, !noundef !4
  %4 = getelementptr inbounds { ptr, ptr }, ptr %_2, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8, !nonnull !4, !align !8, !noundef !4
  %6 = call i8 @"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$usize$GT$3cmp17he2bd1e708dac4a07E"(ptr align 8 %3, ptr align 8 %5), !range !9
  ret i8 %6
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8 @"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$usize$GT$3cmp17he2bd1e708dac4a07E"(ptr align 8 %self, ptr align 8 %other) unnamed_addr #1 {
start:
  %other.dbg.spill = alloca ptr, align 8
  %self.dbg.spill = alloca ptr, align 8
  %0 = alloca i8, align 1
  store ptr %self, ptr %self.dbg.spill, align 8
  store ptr %other, ptr %other.dbg.spill, align 8
  %_4 = load i64, ptr %self, align 8, !noundef !4
  %_5 = load i64, ptr %other, align 8, !noundef !4
  %_3 = icmp ult i64 %_4, %_5
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_7 = load i64, ptr %self, align 8, !noundef !4
  %_8 = load i64, ptr %other, align 8, !noundef !4
  %_6 = icmp eq i64 %_7, %_8
  br i1 %_6, label %bb3, label %bb4

bb1:                                              ; preds = %start
  store i8 -1, ptr %0, align 1
  br label %bb6

bb6:                                              ; preds = %bb5, %bb1
  %1 = load i8, ptr %0, align 1, !range !9, !noundef !4
  ret i8 %1

bb4:                                              ; preds = %bb2
  store i8 1, ptr %0, align 1
  br label %bb5

bb3:                                              ; preds = %bb2
  store i8 0, ptr %0, align 1
  br label %bb5

bb5:                                              ; preds = %bb3, %bb4
  br label %bb6
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_1() unnamed_addr #0 {
start:
  %self.dbg.spill.i2 = alloca { ptr, i64 }, align 8
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %i.dbg.spill = alloca i64, align 8
  %size.dbg.spill = alloca i32, align 4
  %_15 = alloca { i64, i64 }, align 8
  %iter = alloca { i64, i64 }, align 8
  %_13 = alloca { i64, i64 }, align 8
  %expected_dest = alloca [2 x float], align 4
  %dest = alloca [2 x float], align 4
  %src = alloca [2 x float], align 4
  %0 = alloca i8, align 1
  %1 = getelementptr inbounds [2 x float], ptr %src, i64 0, i64 0
  store float 0x3FB99999A0000000, ptr %1, align 4
  %2 = getelementptr inbounds [2 x float], ptr %src, i64 0, i64 1
  store float 0x3FC99999A0000000, ptr %2, align 4
  %3 = getelementptr inbounds [2 x float], ptr %dest, i64 0, i64 0
  %4 = getelementptr inbounds [2 x float], ptr %dest, i64 0, i64 0
  %5 = getelementptr inbounds [2 x float], ptr %dest, i64 0, i64 2
  br label %repeat_loop_header

repeat_loop_header:                               ; preds = %repeat_loop_body, %start
  %6 = phi ptr [ %4, %start ], [ %8, %repeat_loop_body ]
  %7 = icmp ne ptr %6, %5
  br i1 %7, label %repeat_loop_body, label %repeat_loop_next

repeat_loop_body:                                 ; preds = %repeat_loop_header
  store float 0.000000e+00, ptr %6, align 4
  %8 = getelementptr inbounds float, ptr %6, i64 1
  br label %repeat_loop_header

repeat_loop_next:                                 ; preds = %repeat_loop_header
  store i32 2, ptr %size.dbg.spill, align 4
  store ptr %dest, ptr %self.dbg.spill.i, align 8
  %9 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 2, ptr %9, align 8
  store ptr %src, ptr %self.dbg.spill.i2, align 8
  %10 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i2, i32 0, i32 1
  store i64 2, ptr %10, align 8
  call void @normalize(ptr %dest, ptr %src, i32 2)
  %11 = getelementptr inbounds [2 x float], ptr %expected_dest, i64 0, i64 0
  store float 0x3FDC9F25A0000000, ptr %11, align 4
  %12 = getelementptr inbounds [2 x float], ptr %expected_dest, i64 0, i64 1
  store float 0x3FEC9F25A0000000, ptr %12, align 4
  store i8 1, ptr %0, align 1
  store i64 0, ptr %_13, align 8
  %13 = getelementptr inbounds { i64, i64 }, ptr %_13, i32 0, i32 1
  store i64 2, ptr %13, align 8
  %14 = getelementptr inbounds { i64, i64 }, ptr %_13, i32 0, i32 0
  %15 = load i64, ptr %14, align 8, !noundef !4
  %16 = getelementptr inbounds { i64, i64 }, ptr %_13, i32 0, i32 1
  %17 = load i64, ptr %16, align 8, !noundef !4
  %18 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h193ba7acf03f99b9E"(i64 %15, i64 %17)
  %_12.0 = extractvalue { i64, i64 } %18, 0
  %_12.1 = extractvalue { i64, i64 } %18, 1
  %19 = getelementptr inbounds { i64, i64 }, ptr %iter, i32 0, i32 0
  store i64 %_12.0, ptr %19, align 8
  %20 = getelementptr inbounds { i64, i64 }, ptr %iter, i32 0, i32 1
  store i64 %_12.1, ptr %20, align 8
  br label %bb5

bb5:                                              ; preds = %bb12, %bb11, %repeat_loop_next
  %21 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h4b5ca2b330902596E"(ptr align 8 %iter)
  store { i64, i64 } %21, ptr %_15, align 8
  %_17 = load i64, ptr %_15, align 8, !range !5, !noundef !4
  %22 = icmp eq i64 %_17, 0
  br i1 %22, label %bb9, label %bb7

bb9:                                              ; preds = %bb5
  %23 = load i8, ptr %0, align 1, !range !6, !noundef !4
  %24 = trunc i8 %23 to i1
  ret i1 %24

bb7:                                              ; preds = %bb5
  %25 = getelementptr inbounds { i64, i64 }, ptr %_15, i32 0, i32 1
  %i = load i64, ptr %25, align 8, !noundef !4
  store i64 %i, ptr %i.dbg.spill, align 8
  %_22 = icmp ult i64 %i, 2
  %26 = call i1 @llvm.expect.i1(i1 %_22, i1 true)
  br i1 %26, label %bb10, label %panic

bb8:                                              ; No predecessors!
  unreachable

bb10:                                             ; preds = %bb7
  %27 = getelementptr inbounds [2 x float], ptr %dest, i64 0, i64 %i
  %_20 = load float, ptr %27, align 4, !noundef !4
  %_25 = icmp ult i64 %i, 2
  %28 = call i1 @llvm.expect.i1(i1 %_25, i1 true)
  br i1 %28, label %bb11, label %panic1

panic:                                            ; preds = %bb7
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 2, ptr align 8 @alloc_b69d4aab1a5967549b31e53440442c18) #7
  unreachable

bb11:                                             ; preds = %bb10
  %29 = getelementptr inbounds [2 x float], ptr %expected_dest, i64 0, i64 %i
  %_23 = load float, ptr %29, align 4, !noundef !4
  %_19 = fcmp une float %_20, %_23
  br i1 %_19, label %bb12, label %bb5

panic1:                                           ; preds = %bb10
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 2, ptr align 8 @alloc_186c1746f3c80b8f9b82392971dc0abf) #7
  unreachable

bb12:                                             ; preds = %bb11
  store i8 0, ptr %0, align 1
  br label %bb5
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h193ba7acf03f99b9E"(i64 %self.0, i64 %self.1) unnamed_addr #1 {
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
define internal { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h4b5ca2b330902596E"(ptr align 8 %self) unnamed_addr #1 {
start:
  %self.dbg.spill = alloca ptr, align 8
  store ptr %self, ptr %self.dbg.spill, align 8
  %0 = call { i64, i64 } @"_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17h88df022316b2ff91E"(ptr align 8 %self)
  %1 = extractvalue { i64, i64 } %0, 0
  %2 = extractvalue { i64, i64 } %0, 1
  %3 = insertvalue { i64, i64 } poison, i64 %1, 0
  %4 = insertvalue { i64, i64 } %3, i64 %2, 1
  ret { i64, i64 } %4
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @"_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17h88df022316b2ff91E"(ptr align 8 %self) unnamed_addr #1 {
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
  %_2 = call zeroext i1 @"_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17ha75edf092f4e4245E"(ptr align 8 %self, ptr align 8 %_4)
  br i1 %_2, label %bb2, label %bb5

bb5:                                              ; preds = %start
  store i64 0, ptr %0, align 8
  br label %bb6

bb2:                                              ; preds = %start
  store ptr %self, ptr %self.dbg.spill.i, align 8
  %1 = load i64, ptr %self, align 8, !noundef !4
  %n = call i64 @"_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17hd1c26fe005865b6cE"(i64 %1, i64 1)
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
  %4 = load i64, ptr %3, align 8, !range !5, !noundef !4
  %5 = getelementptr inbounds { i64, i64 }, ptr %0, i32 0, i32 1
  %6 = load i64, ptr %5, align 8
  %7 = insertvalue { i64, i64 } poison, i64 %4, 0
  %8 = insertvalue { i64, i64 } %7, i64 %6, 1
  ret { i64, i64 } %8
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17ha75edf092f4e4245E"(ptr align 8 %self, ptr align 8 %other) unnamed_addr #1 {
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
define internal i64 @"_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17hd1c26fe005865b6cE"(i64 %start1, i64 %n) unnamed_addr #1 {
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

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_2() unnamed_addr #0 {
start:
  %self.dbg.spill.i2 = alloca { ptr, i64 }, align 8
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %i.dbg.spill = alloca i64, align 8
  %size.dbg.spill = alloca i32, align 4
  %_15 = alloca { i64, i64 }, align 8
  %iter = alloca { i64, i64 }, align 8
  %_13 = alloca { i64, i64 }, align 8
  %_11 = alloca [0 x float], align 4
  %_2 = alloca [0 x float], align 4
  %_1 = alloca [0 x float], align 4
  %0 = alloca i8, align 1
  %expected_dest.dbg.spill = alloca [0 x float], align 4
  %dest.dbg.spill = alloca [0 x float], align 4
  %src.dbg.spill = alloca [0 x float], align 4
  store i32 0, ptr %size.dbg.spill, align 4
  store ptr %_2, ptr %self.dbg.spill.i, align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 0, ptr %1, align 8
  store ptr %_1, ptr %self.dbg.spill.i2, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i2, i32 0, i32 1
  store i64 0, ptr %2, align 8
  call void @normalize(ptr %_2, ptr %_1, i32 0)
  store i8 1, ptr %0, align 1
  store i64 0, ptr %_13, align 8
  %3 = getelementptr inbounds { i64, i64 }, ptr %_13, i32 0, i32 1
  store i64 0, ptr %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, ptr %_13, i32 0, i32 0
  %5 = load i64, ptr %4, align 8, !noundef !4
  %6 = getelementptr inbounds { i64, i64 }, ptr %_13, i32 0, i32 1
  %7 = load i64, ptr %6, align 8, !noundef !4
  %8 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h193ba7acf03f99b9E"(i64 %5, i64 %7)
  %_12.0 = extractvalue { i64, i64 } %8, 0
  %_12.1 = extractvalue { i64, i64 } %8, 1
  %9 = getelementptr inbounds { i64, i64 }, ptr %iter, i32 0, i32 0
  store i64 %_12.0, ptr %9, align 8
  %10 = getelementptr inbounds { i64, i64 }, ptr %iter, i32 0, i32 1
  store i64 %_12.1, ptr %10, align 8
  br label %bb5

bb5:                                              ; preds = %bb12, %bb11, %start
  %11 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h4b5ca2b330902596E"(ptr align 8 %iter)
  store { i64, i64 } %11, ptr %_15, align 8
  %_17 = load i64, ptr %_15, align 8, !range !5, !noundef !4
  %12 = icmp eq i64 %_17, 0
  br i1 %12, label %bb9, label %bb7

bb9:                                              ; preds = %bb5
  %13 = load i8, ptr %0, align 1, !range !6, !noundef !4
  %14 = trunc i8 %13 to i1
  ret i1 %14

bb7:                                              ; preds = %bb5
  %15 = getelementptr inbounds { i64, i64 }, ptr %_15, i32 0, i32 1
  %i = load i64, ptr %15, align 8, !noundef !4
  store i64 %i, ptr %i.dbg.spill, align 8
  %_22 = icmp ult i64 %i, 0
  %16 = call i1 @llvm.expect.i1(i1 %_22, i1 true)
  br i1 %16, label %bb10, label %panic

bb8:                                              ; No predecessors!
  unreachable

bb10:                                             ; preds = %bb7
  %17 = getelementptr inbounds [0 x float], ptr %_2, i64 0, i64 %i
  %_20 = load float, ptr %17, align 4, !noundef !4
  %_25 = icmp ult i64 %i, 0
  %18 = call i1 @llvm.expect.i1(i1 %_25, i1 true)
  br i1 %18, label %bb11, label %panic1

panic:                                            ; preds = %bb7
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 0, ptr align 8 @alloc_8d3d5a860053826b5eeff02669195375) #7
  unreachable

bb11:                                             ; preds = %bb10
  %19 = getelementptr inbounds [0 x float], ptr %_11, i64 0, i64 %i
  %_23 = load float, ptr %19, align 4, !noundef !4
  %_19 = fcmp une float %_20, %_23
  br i1 %_19, label %bb12, label %bb5

panic1:                                           ; preds = %bb10
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 0, ptr align 8 @alloc_7e1e88870daffa3dbc600d726336a070) #7
  unreachable

bb12:                                             ; preds = %bb11
  store i8 0, ptr %0, align 1
  br label %bb5
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_3() unnamed_addr #0 {
start:
  %self.dbg.spill.i2 = alloca { ptr, i64 }, align 8
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %i.dbg.spill = alloca i64, align 8
  %size.dbg.spill = alloca i32, align 4
  %_15 = alloca { i64, i64 }, align 8
  %iter = alloca { i64, i64 }, align 8
  %_13 = alloca { i64, i64 }, align 8
  %expected_dest = alloca [5 x float], align 4
  %dest = alloca [5 x float], align 4
  %src = alloca [5 x float], align 4
  %0 = alloca i8, align 1
  %1 = getelementptr inbounds [5 x float], ptr %src, i64 0, i64 0
  store float 0x3FB99999A0000000, ptr %1, align 4
  %2 = getelementptr inbounds [5 x float], ptr %src, i64 0, i64 1
  store float 0x3FC99999A0000000, ptr %2, align 4
  %3 = getelementptr inbounds [5 x float], ptr %src, i64 0, i64 2
  store float 1.000000e+03, ptr %3, align 4
  %4 = getelementptr inbounds [5 x float], ptr %src, i64 0, i64 3
  store float 1.000000e+05, ptr %4, align 4
  %5 = getelementptr inbounds [5 x float], ptr %src, i64 0, i64 4
  store float 1.000000e+09, ptr %5, align 4
  %6 = getelementptr inbounds [5 x float], ptr %dest, i64 0, i64 0
  %7 = getelementptr inbounds [5 x float], ptr %dest, i64 0, i64 0
  %8 = getelementptr inbounds [5 x float], ptr %dest, i64 0, i64 5
  br label %repeat_loop_header

repeat_loop_header:                               ; preds = %repeat_loop_body, %start
  %9 = phi ptr [ %7, %start ], [ %11, %repeat_loop_body ]
  %10 = icmp ne ptr %9, %8
  br i1 %10, label %repeat_loop_body, label %repeat_loop_next

repeat_loop_body:                                 ; preds = %repeat_loop_header
  store float 0.000000e+00, ptr %9, align 4
  %11 = getelementptr inbounds float, ptr %9, i64 1
  br label %repeat_loop_header

repeat_loop_next:                                 ; preds = %repeat_loop_header
  store i32 5, ptr %size.dbg.spill, align 4
  store ptr %dest, ptr %self.dbg.spill.i, align 8
  %12 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 5, ptr %12, align 8
  store ptr %src, ptr %self.dbg.spill.i2, align 8
  %13 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i2, i32 0, i32 1
  store i64 5, ptr %13, align 8
  call void @normalize(ptr %dest, ptr %src, i32 5)
  %14 = getelementptr inbounds [5 x float], ptr %expected_dest, i64 0, i64 0
  store float 0x3DDB7CDFE0000000, ptr %14, align 4
  %15 = getelementptr inbounds [5 x float], ptr %expected_dest, i64 0, i64 1
  store float 0x3DEB7CDFE0000000, ptr %15, align 4
  %16 = getelementptr inbounds [5 x float], ptr %expected_dest, i64 0, i64 2
  store float 0x3EB0C6F7A0000000, ptr %16, align 4
  %17 = getelementptr inbounds [5 x float], ptr %expected_dest, i64 0, i64 3
  store float 0x3F1A36E2E0000000, ptr %17, align 4
  %18 = getelementptr inbounds [5 x float], ptr %expected_dest, i64 0, i64 4
  store float 1.000000e+00, ptr %18, align 4
  store i8 1, ptr %0, align 1
  store i64 0, ptr %_13, align 8
  %19 = getelementptr inbounds { i64, i64 }, ptr %_13, i32 0, i32 1
  store i64 5, ptr %19, align 8
  %20 = getelementptr inbounds { i64, i64 }, ptr %_13, i32 0, i32 0
  %21 = load i64, ptr %20, align 8, !noundef !4
  %22 = getelementptr inbounds { i64, i64 }, ptr %_13, i32 0, i32 1
  %23 = load i64, ptr %22, align 8, !noundef !4
  %24 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h193ba7acf03f99b9E"(i64 %21, i64 %23)
  %_12.0 = extractvalue { i64, i64 } %24, 0
  %_12.1 = extractvalue { i64, i64 } %24, 1
  %25 = getelementptr inbounds { i64, i64 }, ptr %iter, i32 0, i32 0
  store i64 %_12.0, ptr %25, align 8
  %26 = getelementptr inbounds { i64, i64 }, ptr %iter, i32 0, i32 1
  store i64 %_12.1, ptr %26, align 8
  br label %bb5

bb5:                                              ; preds = %bb12, %bb11, %repeat_loop_next
  %27 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h4b5ca2b330902596E"(ptr align 8 %iter)
  store { i64, i64 } %27, ptr %_15, align 8
  %_17 = load i64, ptr %_15, align 8, !range !5, !noundef !4
  %28 = icmp eq i64 %_17, 0
  br i1 %28, label %bb9, label %bb7

bb9:                                              ; preds = %bb5
  %29 = load i8, ptr %0, align 1, !range !6, !noundef !4
  %30 = trunc i8 %29 to i1
  ret i1 %30

bb7:                                              ; preds = %bb5
  %31 = getelementptr inbounds { i64, i64 }, ptr %_15, i32 0, i32 1
  %i = load i64, ptr %31, align 8, !noundef !4
  store i64 %i, ptr %i.dbg.spill, align 8
  %_22 = icmp ult i64 %i, 5
  %32 = call i1 @llvm.expect.i1(i1 %_22, i1 true)
  br i1 %32, label %bb10, label %panic

bb8:                                              ; No predecessors!
  unreachable

bb10:                                             ; preds = %bb7
  %33 = getelementptr inbounds [5 x float], ptr %dest, i64 0, i64 %i
  %_20 = load float, ptr %33, align 4, !noundef !4
  %_25 = icmp ult i64 %i, 5
  %34 = call i1 @llvm.expect.i1(i1 %_25, i1 true)
  br i1 %34, label %bb11, label %panic1

panic:                                            ; preds = %bb7
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 5, ptr align 8 @alloc_c7a52b6f29c74f4652aead9437a817a6) #7
  unreachable

bb11:                                             ; preds = %bb10
  %35 = getelementptr inbounds [5 x float], ptr %expected_dest, i64 0, i64 %i
  %_23 = load float, ptr %35, align 4, !noundef !4
  %_19 = fcmp une float %_20, %_23
  br i1 %_19, label %bb12, label %bb5

panic1:                                           ; preds = %bb10
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 5, ptr align 8 @alloc_9f824128443bfb42521db0df9816f8c2) #7
  unreachable

bb12:                                             ; preds = %bb11
  store i8 0, ptr %0, align 1
  br label %bb5
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_4() unnamed_addr #0 {
start:
  %self.dbg.spill.i2 = alloca { ptr, i64 }, align 8
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %i.dbg.spill = alloca i64, align 8
  %size.dbg.spill = alloca i32, align 4
  %_15 = alloca { i64, i64 }, align 8
  %iter = alloca { i64, i64 }, align 8
  %_13 = alloca { i64, i64 }, align 8
  %expected_dest = alloca [14 x float], align 4
  %dest = alloca [14 x float], align 4
  %src = alloca [14 x float], align 4
  %0 = alloca i8, align 1
  %1 = getelementptr inbounds [14 x float], ptr %src, i64 0, i64 0
  store float 0xBF2B974240000000, ptr %1, align 4
  %2 = getelementptr inbounds [14 x float], ptr %src, i64 0, i64 1
  store float 0xC051875740000000, ptr %2, align 4
  %3 = getelementptr inbounds [14 x float], ptr %src, i64 0, i64 2
  store float 0xBF329CD360000000, ptr %3, align 4
  %4 = getelementptr inbounds [14 x float], ptr %src, i64 0, i64 3
  store float 0xC2AF36C1A0000000, ptr %4, align 4
  %5 = getelementptr inbounds [14 x float], ptr %src, i64 0, i64 4
  store float 0x41D46DA080000000, ptr %5, align 4
  %6 = getelementptr inbounds [14 x float], ptr %src, i64 0, i64 5
  store float 0x3FDC9F25A0000000, ptr %6, align 4
  %7 = getelementptr inbounds [14 x float], ptr %src, i64 0, i64 6
  store float 0x3FEC9F25A0000000, ptr %7, align 4
  %8 = getelementptr inbounds [14 x float], ptr %src, i64 0, i64 7
  store float 0xBF2B974240000000, ptr %8, align 4
  %9 = getelementptr inbounds [14 x float], ptr %src, i64 0, i64 8
  store float 0xC051875740000000, ptr %9, align 4
  %10 = getelementptr inbounds [14 x float], ptr %src, i64 0, i64 9
  store float 0xBF329CD360000000, ptr %10, align 4
  %11 = getelementptr inbounds [14 x float], ptr %src, i64 0, i64 10
  store float 0xC2AF36C1A0000000, ptr %11, align 4
  %12 = getelementptr inbounds [14 x float], ptr %src, i64 0, i64 11
  store float 0x41D46DA080000000, ptr %12, align 4
  %13 = getelementptr inbounds [14 x float], ptr %src, i64 0, i64 12
  store float 0x3FDC9F25A0000000, ptr %13, align 4
  %14 = getelementptr inbounds [14 x float], ptr %src, i64 0, i64 13
  store float 0x3FEC9F25A0000000, ptr %14, align 4
  %15 = getelementptr inbounds [14 x float], ptr %dest, i64 0, i64 0
  %16 = getelementptr inbounds [14 x float], ptr %dest, i64 0, i64 0
  %17 = getelementptr inbounds [14 x float], ptr %dest, i64 0, i64 14
  br label %repeat_loop_header

repeat_loop_header:                               ; preds = %repeat_loop_body, %start
  %18 = phi ptr [ %16, %start ], [ %20, %repeat_loop_body ]
  %19 = icmp ne ptr %18, %17
  br i1 %19, label %repeat_loop_body, label %repeat_loop_next

repeat_loop_body:                                 ; preds = %repeat_loop_header
  store float 0.000000e+00, ptr %18, align 4
  %20 = getelementptr inbounds float, ptr %18, i64 1
  br label %repeat_loop_header

repeat_loop_next:                                 ; preds = %repeat_loop_header
  store i32 14, ptr %size.dbg.spill, align 4
  store ptr %dest, ptr %self.dbg.spill.i, align 8
  %21 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 14, ptr %21, align 8
  store ptr %src, ptr %self.dbg.spill.i2, align 8
  %22 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i2, i32 0, i32 1
  store i64 14, ptr %22, align 8
  call void @normalize(ptr %dest, ptr %src, i32 14)
  %23 = getelementptr inbounds [14 x float], ptr %expected_dest, i64 0, i64 0
  store float 0xBC64004320000000, ptr %23, align 4
  %24 = getelementptr inbounds [14 x float], ptr %expected_dest, i64 0, i64 1
  store float 0xBD8969E180000000, ptr %24, align 4
  %25 = getelementptr inbounds [14 x float], ptr %expected_dest, i64 0, i64 2
  store float 0xBC6AFC2FE0000000, ptr %25, align 4
  %26 = getelementptr inbounds [14 x float], ptr %expected_dest, i64 0, i64 3
  store float 0xBFE6A09E60000000, ptr %26, align 4
  %27 = getelementptr inbounds [14 x float], ptr %expected_dest, i64 0, i64 4
  store float 0x3F0D9E11E0000000, ptr %27, align 4
  %28 = getelementptr inbounds [14 x float], ptr %expected_dest, i64 0, i64 5
  store float 0x3D14BF8F00000000, ptr %28, align 4
  %29 = getelementptr inbounds [14 x float], ptr %expected_dest, i64 0, i64 6
  store float 0x3D24BF8F00000000, ptr %29, align 4
  %30 = getelementptr inbounds [14 x float], ptr %expected_dest, i64 0, i64 7
  store float 0xBC64004320000000, ptr %30, align 4
  %31 = getelementptr inbounds [14 x float], ptr %expected_dest, i64 0, i64 8
  store float 0xBD8969E180000000, ptr %31, align 4
  %32 = getelementptr inbounds [14 x float], ptr %expected_dest, i64 0, i64 9
  store float 0xBC6AFC2FE0000000, ptr %32, align 4
  %33 = getelementptr inbounds [14 x float], ptr %expected_dest, i64 0, i64 10
  store float 0xBFE6A09E60000000, ptr %33, align 4
  %34 = getelementptr inbounds [14 x float], ptr %expected_dest, i64 0, i64 11
  store float 0x3F0D9E11E0000000, ptr %34, align 4
  %35 = getelementptr inbounds [14 x float], ptr %expected_dest, i64 0, i64 12
  store float 0x3D14BF8F00000000, ptr %35, align 4
  %36 = getelementptr inbounds [14 x float], ptr %expected_dest, i64 0, i64 13
  store float 0x3D24BF8F00000000, ptr %36, align 4
  store i8 1, ptr %0, align 1
  store i64 0, ptr %_13, align 8
  %37 = getelementptr inbounds { i64, i64 }, ptr %_13, i32 0, i32 1
  store i64 14, ptr %37, align 8
  %38 = getelementptr inbounds { i64, i64 }, ptr %_13, i32 0, i32 0
  %39 = load i64, ptr %38, align 8, !noundef !4
  %40 = getelementptr inbounds { i64, i64 }, ptr %_13, i32 0, i32 1
  %41 = load i64, ptr %40, align 8, !noundef !4
  %42 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h193ba7acf03f99b9E"(i64 %39, i64 %41)
  %_12.0 = extractvalue { i64, i64 } %42, 0
  %_12.1 = extractvalue { i64, i64 } %42, 1
  %43 = getelementptr inbounds { i64, i64 }, ptr %iter, i32 0, i32 0
  store i64 %_12.0, ptr %43, align 8
  %44 = getelementptr inbounds { i64, i64 }, ptr %iter, i32 0, i32 1
  store i64 %_12.1, ptr %44, align 8
  br label %bb5

bb5:                                              ; preds = %bb12, %bb11, %repeat_loop_next
  %45 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h4b5ca2b330902596E"(ptr align 8 %iter)
  store { i64, i64 } %45, ptr %_15, align 8
  %_17 = load i64, ptr %_15, align 8, !range !5, !noundef !4
  %46 = icmp eq i64 %_17, 0
  br i1 %46, label %bb9, label %bb7

bb9:                                              ; preds = %bb5
  %47 = load i8, ptr %0, align 1, !range !6, !noundef !4
  %48 = trunc i8 %47 to i1
  ret i1 %48

bb7:                                              ; preds = %bb5
  %49 = getelementptr inbounds { i64, i64 }, ptr %_15, i32 0, i32 1
  %i = load i64, ptr %49, align 8, !noundef !4
  store i64 %i, ptr %i.dbg.spill, align 8
  %_22 = icmp ult i64 %i, 14
  %50 = call i1 @llvm.expect.i1(i1 %_22, i1 true)
  br i1 %50, label %bb10, label %panic

bb8:                                              ; No predecessors!
  unreachable

bb10:                                             ; preds = %bb7
  %51 = getelementptr inbounds [14 x float], ptr %dest, i64 0, i64 %i
  %_20 = load float, ptr %51, align 4, !noundef !4
  %_25 = icmp ult i64 %i, 14
  %52 = call i1 @llvm.expect.i1(i1 %_25, i1 true)
  br i1 %52, label %bb11, label %panic1

panic:                                            ; preds = %bb7
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 14, ptr align 8 @alloc_203b4e6b94f95b2201832b00fe551dd3) #7
  unreachable

bb11:                                             ; preds = %bb10
  %53 = getelementptr inbounds [14 x float], ptr %expected_dest, i64 0, i64 %i
  %_23 = load float, ptr %53, align 4, !noundef !4
  %_19 = fcmp une float %_20, %_23
  br i1 %_19, label %bb12, label %bb5

panic1:                                           ; preds = %bb10
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 14, ptr align 8 @alloc_11d0a531f999f2aba951aa7afc1c733f) #7
  unreachable

bb12:                                             ; preds = %bb11
  store i8 0, ptr %0, align 1
  br label %bb5
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_5() unnamed_addr #0 {
start:
  %self.dbg.spill.i2 = alloca { ptr, i64 }, align 8
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %i.dbg.spill = alloca i64, align 8
  %size.dbg.spill = alloca i32, align 4
  %_15 = alloca { i64, i64 }, align 8
  %iter = alloca { i64, i64 }, align 8
  %_13 = alloca { i64, i64 }, align 8
  %expected_dest = alloca [25 x float], align 4
  %dest = alloca [25 x float], align 4
  %src = alloca [25 x float], align 4
  %0 = alloca i8, align 1
  %1 = getelementptr inbounds [25 x float], ptr %src, i64 0, i64 0
  store float -0.000000e+00, ptr %1, align 4
  %2 = getelementptr inbounds [25 x float], ptr %src, i64 0, i64 1
  store float 0.000000e+00, ptr %2, align 4
  %3 = getelementptr inbounds [25 x float], ptr %src, i64 0, i64 2
  store float -0.000000e+00, ptr %3, align 4
  %4 = getelementptr inbounds [25 x float], ptr %src, i64 0, i64 3
  store float 0.000000e+00, ptr %4, align 4
  %5 = getelementptr inbounds [25 x float], ptr %src, i64 0, i64 4
  store float -0.000000e+00, ptr %5, align 4
  %6 = getelementptr inbounds [25 x float], ptr %src, i64 0, i64 5
  store float 0.000000e+00, ptr %6, align 4
  %7 = getelementptr inbounds [25 x float], ptr %src, i64 0, i64 6
  store float -0.000000e+00, ptr %7, align 4
  %8 = getelementptr inbounds [25 x float], ptr %src, i64 0, i64 7
  store float 0.000000e+00, ptr %8, align 4
  %9 = getelementptr inbounds [25 x float], ptr %src, i64 0, i64 8
  store float -0.000000e+00, ptr %9, align 4
  %10 = getelementptr inbounds [25 x float], ptr %src, i64 0, i64 9
  store float 0.000000e+00, ptr %10, align 4
  %11 = getelementptr inbounds [25 x float], ptr %src, i64 0, i64 10
  store float -0.000000e+00, ptr %11, align 4
  %12 = getelementptr inbounds [25 x float], ptr %src, i64 0, i64 11
  store float 0.000000e+00, ptr %12, align 4
  %13 = getelementptr inbounds [25 x float], ptr %src, i64 0, i64 12
  store float 0x426D1A94A0000000, ptr %13, align 4
  %14 = getelementptr inbounds [25 x float], ptr %src, i64 0, i64 13
  store float -0.000000e+00, ptr %14, align 4
  %15 = getelementptr inbounds [25 x float], ptr %src, i64 0, i64 14
  store float 0.000000e+00, ptr %15, align 4
  %16 = getelementptr inbounds [25 x float], ptr %src, i64 0, i64 15
  store float -0.000000e+00, ptr %16, align 4
  %17 = getelementptr inbounds [25 x float], ptr %src, i64 0, i64 16
  store float 0.000000e+00, ptr %17, align 4
  %18 = getelementptr inbounds [25 x float], ptr %src, i64 0, i64 17
  store float -0.000000e+00, ptr %18, align 4
  %19 = getelementptr inbounds [25 x float], ptr %src, i64 0, i64 18
  store float 0.000000e+00, ptr %19, align 4
  %20 = getelementptr inbounds [25 x float], ptr %src, i64 0, i64 19
  store float -0.000000e+00, ptr %20, align 4
  %21 = getelementptr inbounds [25 x float], ptr %src, i64 0, i64 20
  store float 0.000000e+00, ptr %21, align 4
  %22 = getelementptr inbounds [25 x float], ptr %src, i64 0, i64 21
  store float -0.000000e+00, ptr %22, align 4
  %23 = getelementptr inbounds [25 x float], ptr %src, i64 0, i64 22
  store float 0.000000e+00, ptr %23, align 4
  %24 = getelementptr inbounds [25 x float], ptr %src, i64 0, i64 23
  store float -0.000000e+00, ptr %24, align 4
  %25 = getelementptr inbounds [25 x float], ptr %src, i64 0, i64 24
  store float 0.000000e+00, ptr %25, align 4
  %26 = getelementptr inbounds [25 x float], ptr %dest, i64 0, i64 0
  %27 = getelementptr inbounds [25 x float], ptr %dest, i64 0, i64 0
  %28 = getelementptr inbounds [25 x float], ptr %dest, i64 0, i64 25
  br label %repeat_loop_header

repeat_loop_header:                               ; preds = %repeat_loop_body, %start
  %29 = phi ptr [ %27, %start ], [ %31, %repeat_loop_body ]
  %30 = icmp ne ptr %29, %28
  br i1 %30, label %repeat_loop_body, label %repeat_loop_next

repeat_loop_body:                                 ; preds = %repeat_loop_header
  store float 0.000000e+00, ptr %29, align 4
  %31 = getelementptr inbounds float, ptr %29, i64 1
  br label %repeat_loop_header

repeat_loop_next:                                 ; preds = %repeat_loop_header
  store i32 25, ptr %size.dbg.spill, align 4
  store ptr %dest, ptr %self.dbg.spill.i, align 8
  %32 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 25, ptr %32, align 8
  store ptr %src, ptr %self.dbg.spill.i2, align 8
  %33 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i2, i32 0, i32 1
  store i64 25, ptr %33, align 8
  call void @normalize(ptr %dest, ptr %src, i32 25)
  %34 = getelementptr inbounds [25 x float], ptr %expected_dest, i64 0, i64 0
  store float -0.000000e+00, ptr %34, align 4
  %35 = getelementptr inbounds [25 x float], ptr %expected_dest, i64 0, i64 1
  store float 0.000000e+00, ptr %35, align 4
  %36 = getelementptr inbounds [25 x float], ptr %expected_dest, i64 0, i64 2
  store float -0.000000e+00, ptr %36, align 4
  %37 = getelementptr inbounds [25 x float], ptr %expected_dest, i64 0, i64 3
  store float 0.000000e+00, ptr %37, align 4
  %38 = getelementptr inbounds [25 x float], ptr %expected_dest, i64 0, i64 4
  store float -0.000000e+00, ptr %38, align 4
  %39 = getelementptr inbounds [25 x float], ptr %expected_dest, i64 0, i64 5
  store float 0.000000e+00, ptr %39, align 4
  %40 = getelementptr inbounds [25 x float], ptr %expected_dest, i64 0, i64 6
  store float -0.000000e+00, ptr %40, align 4
  %41 = getelementptr inbounds [25 x float], ptr %expected_dest, i64 0, i64 7
  store float 0.000000e+00, ptr %41, align 4
  %42 = getelementptr inbounds [25 x float], ptr %expected_dest, i64 0, i64 8
  store float -0.000000e+00, ptr %42, align 4
  %43 = getelementptr inbounds [25 x float], ptr %expected_dest, i64 0, i64 9
  store float 0.000000e+00, ptr %43, align 4
  %44 = getelementptr inbounds [25 x float], ptr %expected_dest, i64 0, i64 10
  store float -0.000000e+00, ptr %44, align 4
  %45 = getelementptr inbounds [25 x float], ptr %expected_dest, i64 0, i64 11
  store float 0.000000e+00, ptr %45, align 4
  %46 = getelementptr inbounds [25 x float], ptr %expected_dest, i64 0, i64 12
  store float 1.000000e+00, ptr %46, align 4
  %47 = getelementptr inbounds [25 x float], ptr %expected_dest, i64 0, i64 13
  store float -0.000000e+00, ptr %47, align 4
  %48 = getelementptr inbounds [25 x float], ptr %expected_dest, i64 0, i64 14
  store float 0.000000e+00, ptr %48, align 4
  %49 = getelementptr inbounds [25 x float], ptr %expected_dest, i64 0, i64 15
  store float -0.000000e+00, ptr %49, align 4
  %50 = getelementptr inbounds [25 x float], ptr %expected_dest, i64 0, i64 16
  store float 0.000000e+00, ptr %50, align 4
  %51 = getelementptr inbounds [25 x float], ptr %expected_dest, i64 0, i64 17
  store float -0.000000e+00, ptr %51, align 4
  %52 = getelementptr inbounds [25 x float], ptr %expected_dest, i64 0, i64 18
  store float 0.000000e+00, ptr %52, align 4
  %53 = getelementptr inbounds [25 x float], ptr %expected_dest, i64 0, i64 19
  store float -0.000000e+00, ptr %53, align 4
  %54 = getelementptr inbounds [25 x float], ptr %expected_dest, i64 0, i64 20
  store float 0.000000e+00, ptr %54, align 4
  %55 = getelementptr inbounds [25 x float], ptr %expected_dest, i64 0, i64 21
  store float -0.000000e+00, ptr %55, align 4
  %56 = getelementptr inbounds [25 x float], ptr %expected_dest, i64 0, i64 22
  store float 0.000000e+00, ptr %56, align 4
  %57 = getelementptr inbounds [25 x float], ptr %expected_dest, i64 0, i64 23
  store float -0.000000e+00, ptr %57, align 4
  %58 = getelementptr inbounds [25 x float], ptr %expected_dest, i64 0, i64 24
  store float 0.000000e+00, ptr %58, align 4
  store i8 1, ptr %0, align 1
  store i64 0, ptr %_13, align 8
  %59 = getelementptr inbounds { i64, i64 }, ptr %_13, i32 0, i32 1
  store i64 25, ptr %59, align 8
  %60 = getelementptr inbounds { i64, i64 }, ptr %_13, i32 0, i32 0
  %61 = load i64, ptr %60, align 8, !noundef !4
  %62 = getelementptr inbounds { i64, i64 }, ptr %_13, i32 0, i32 1
  %63 = load i64, ptr %62, align 8, !noundef !4
  %64 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h193ba7acf03f99b9E"(i64 %61, i64 %63)
  %_12.0 = extractvalue { i64, i64 } %64, 0
  %_12.1 = extractvalue { i64, i64 } %64, 1
  %65 = getelementptr inbounds { i64, i64 }, ptr %iter, i32 0, i32 0
  store i64 %_12.0, ptr %65, align 8
  %66 = getelementptr inbounds { i64, i64 }, ptr %iter, i32 0, i32 1
  store i64 %_12.1, ptr %66, align 8
  br label %bb5

bb5:                                              ; preds = %bb14, %bb12, %repeat_loop_next
  %67 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h4b5ca2b330902596E"(ptr align 8 %iter)
  store { i64, i64 } %67, ptr %_15, align 8
  %_17 = load i64, ptr %_15, align 8, !range !5, !noundef !4
  %68 = icmp eq i64 %_17, 0
  br i1 %68, label %bb9, label %bb7

bb9:                                              ; preds = %bb5
  %69 = load i8, ptr %0, align 1, !range !6, !noundef !4
  %70 = trunc i8 %69 to i1
  ret i1 %70

bb7:                                              ; preds = %bb5
  %71 = getelementptr inbounds { i64, i64 }, ptr %_15, i32 0, i32 1
  %i = load i64, ptr %71, align 8, !noundef !4
  store i64 %i, ptr %i.dbg.spill, align 8
  %_23 = icmp ult i64 %i, 25
  %72 = call i1 @llvm.expect.i1(i1 %_23, i1 true)
  br i1 %72, label %bb10, label %panic

bb8:                                              ; No predecessors!
  unreachable

bb10:                                             ; preds = %bb7
  %73 = getelementptr inbounds [25 x float], ptr %dest, i64 0, i64 %i
  %_21 = load float, ptr %73, align 4, !noundef !4
  %_20 = call i32 @"_ZN4core3f3221_$LT$impl$u20$f32$GT$7to_bits17hc32de9dfa9a3e0ebE"(float %_21)
  %_27 = icmp ult i64 %i, 25
  %74 = call i1 @llvm.expect.i1(i1 %_27, i1 true)
  br i1 %74, label %bb12, label %panic1

panic:                                            ; preds = %bb7
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 25, ptr align 8 @alloc_00ad408e0d87fb2e7e0f8ca1c5550068) #7
  unreachable

bb12:                                             ; preds = %bb10
  %75 = getelementptr inbounds [25 x float], ptr %expected_dest, i64 0, i64 %i
  %_25 = load float, ptr %75, align 4, !noundef !4
  %_24 = call i32 @"_ZN4core3f3221_$LT$impl$u20$f32$GT$7to_bits17hc32de9dfa9a3e0ebE"(float %_25)
  %_19 = icmp ne i32 %_20, %_24
  br i1 %_19, label %bb14, label %bb5

panic1:                                           ; preds = %bb10
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 25, ptr align 8 @alloc_926624275cda4ff5ff7d21c7e5187fd1) #7
  unreachable

bb14:                                             ; preds = %bb12
  store i8 0, ptr %0, align 1
  br label %bb5
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN4core3f3221_$LT$impl$u20$f32$GT$7to_bits17hc32de9dfa9a3e0ebE"(float %self) unnamed_addr #1 {
start:
  %x.dbg.spill = alloca float, align 4
  %self.dbg.spill = alloca float, align 4
  %_2 = alloca float, align 4
  store float %self, ptr %self.dbg.spill, align 4
  store float %self, ptr %_2, align 4
  %x = load float, ptr %_2, align 4, !noundef !4
  store float %x, ptr %x.dbg.spill, align 4
  %0 = bitcast float %x to i32
  ret i32 %0
}

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #3 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 2, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{}
!5 = !{i64 0, i64 2}
!6 = !{i8 0, i8 2}
!7 = !{i64 4}
!8 = !{i64 8}
!9 = !{i8 -1, i8 2}
