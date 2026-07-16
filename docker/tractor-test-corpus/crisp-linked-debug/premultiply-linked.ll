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
%"core::ptr::metadata::PtrRepr<[src::lib::CpPixelT]>" = type { [2 x i64] }
%"core::ptr::metadata::PtrComponents<src::lib::CpPixelT>" = type { ptr, {} }
%"core::ptr::metadata::PtrRepr<src::lib::CpPixelT>" = type { [1 x i64] }

@alloc_f5ffd2fd1476bab43ad89fb40c72d0c5 = private unnamed_addr constant <{ [10 x i8] }> <{ [10 x i8] c"src/lib.rs" }>, align 1
@alloc_df1df2308ed9791ded78a898bfa7d5c4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00a\00\00\00\0C\00\00\00" }>, align 8
@alloc_15141c4deb063c592b352e0a243078f5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00a\00\00\00\18\00\00\00" }>, align 8
@alloc_b12c3e5a2179371f27ef0e287060640a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00a\00\00\00)\00\00\00" }>, align 8
@alloc_a9fc7cf949c378920c3f72f583c67640 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00a\00\00\005\00\00\00" }>, align 8
@alloc_dc096cca66e2e8b3821babd37390dcb0 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00a\00\00\00F\00\00\00" }>, align 8
@alloc_dba71f02e4f75a76da250a9c7d1dc7f3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00a\00\00\00R\00\00\00" }>, align 8
@alloc_5a84612348abacc77c82beada2ea1c1c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00a\00\00\00c\00\00\00" }>, align 8
@alloc_a656523b71673ca73f924fb0d0ac3b8c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00a\00\00\00o\00\00\00" }>, align 8
@alloc_24107fc835653ab7b8f1e3615a8a9be9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\95\00\00\00\0C\00\00\00" }>, align 8
@alloc_e8eaf03b96785e62b94d80b98d415d2c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\95\00\00\00\18\00\00\00" }>, align 8
@alloc_6a10105a17ea989208c68596cc905142 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\95\00\00\00)\00\00\00" }>, align 8
@alloc_f4671c488fee5f87c2c17bec5ecb95bd = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\95\00\00\005\00\00\00" }>, align 8
@alloc_c432dcb36e13f7408a2bfc1bb09cb72a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\95\00\00\00F\00\00\00" }>, align 8
@alloc_35ee0f7482a92b1cceea3cab1d13fba0 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\95\00\00\00R\00\00\00" }>, align 8
@alloc_9163258d7dbc59a17a6412c861568e24 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\95\00\00\00c\00\00\00" }>, align 8
@alloc_3854d2c09862168876145f9c89e35f24 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\95\00\00\00o\00\00\00" }>, align 8
@alloc_3cf959b0ea5361dc8b5177051e7320a6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\C9\00\00\00\0C\00\00\00" }>, align 8
@alloc_51cb85fc076b05dc5a5e1f5cc9fa5691 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\C9\00\00\00\18\00\00\00" }>, align 8
@alloc_81ef93fee321da821152043cad6a8710 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\C9\00\00\00)\00\00\00" }>, align 8
@alloc_3d65f73375e163ff5d8256aa1aae675a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\C9\00\00\005\00\00\00" }>, align 8
@alloc_b30cc6e547c277102627963f28b05c9c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\C9\00\00\00F\00\00\00" }>, align 8
@alloc_93177b6f2fe03ef428dec5abaad4670d = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\C9\00\00\00R\00\00\00" }>, align 8
@alloc_299e0e474f08b6f5a23123b60a555092 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\C9\00\00\00c\00\00\00" }>, align 8
@alloc_bccb1c7bd378c0d65c16cbbb6d2d16c6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\C9\00\00\00o\00\00\00" }>, align 8
@alloc_f1f5e9793497948e672fac2a06b99d7f = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\FD\00\00\00\0C\00\00\00" }>, align 8
@alloc_a65614a8bb8c6e7c2a8f0322c7cb4301 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\FD\00\00\00\18\00\00\00" }>, align 8
@alloc_e946fa969c979f6f6cf1fb9ba7b852d3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\FD\00\00\00)\00\00\00" }>, align 8
@alloc_192898d30ed523121a0d4ab2b2c10641 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\FD\00\00\005\00\00\00" }>, align 8
@alloc_bcfb60e9c4a941ba51d009efa0a4cee5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\FD\00\00\00F\00\00\00" }>, align 8
@alloc_2ee7a3f056262abf7f8ec81937315b9a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\FD\00\00\00R\00\00\00" }>, align 8
@alloc_bf2a50044d5cf05ef19e74e862762a46 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\FD\00\00\00c\00\00\00" }>, align 8
@alloc_b7e61dd62f70e34e4df48c558359127b = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\FD\00\00\00o\00\00\00" }>, align 8
@alloc_603b576e010d1790e4c6e322932dca43 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\001\01\00\00\0C\00\00\00" }>, align 8
@alloc_64042934a94d40a514c45f30fc2c12f1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\001\01\00\00\18\00\00\00" }>, align 8
@alloc_1cf99fd997466f80360e32d6e9000c55 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\001\01\00\00)\00\00\00" }>, align 8
@alloc_9f091918234a29fac3787417675f2cfd = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\001\01\00\005\00\00\00" }>, align 8
@alloc_62b057920c301ae2f92492ce64806ba4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\001\01\00\00F\00\00\00" }>, align 8
@alloc_410228c325e0ba70c9642b34bf0d2c66 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\001\01\00\00R\00\00\00" }>, align 8
@alloc_27d76f38c07556740d2c9a3e7e386bb4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\001\01\00\00c\00\00\00" }>, align 8
@alloc_336295a8720cb032fd4f5858f5c3762b = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\001\01\00\00o\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define void @premultiply(ptr %img) unnamed_addr #0 {
start:
  %img.dbg.spill2 = alloca ptr, align 8
  %img.dbg.spill = alloca ptr, align 8
  %_2 = alloca ptr, align 8
  store ptr %img, ptr %img.dbg.spill, align 8
  %0 = call align 8 ptr @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6as_mut17h72be62587b7b7258E"(ptr %img)
  store ptr %0, ptr %_2, align 8
  %1 = load ptr, ptr %_2, align 8, !noundef !4
  %2 = ptrtoint ptr %1 to i64
  %3 = icmp eq i64 %2, 0
  %_3 = select i1 %3, i64 0, i64 1
  %4 = icmp eq i64 %_3, 1
  br i1 %4, label %bb2, label %bb3

bb2:                                              ; preds = %start
  %img1 = load ptr, ptr %_2, align 8, !nonnull !4, !align !5, !noundef !4
  store ptr %img1, ptr %img.dbg.spill2, align 8
  call void @_ZN15premultiply_lib3src3lib11premultiply17h0bb49a05b64291ddE(ptr align 8 %img1)
  br label %bb3

bb3:                                              ; preds = %bb2, %start
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal align 8 ptr @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6as_mut17h72be62587b7b7258E"(ptr %self) unnamed_addr #1 {
start:
  %ptr.dbg.spill = alloca ptr, align 8
  %self.dbg.spill = alloca ptr, align 8
  %_3 = alloca ptr, align 8
  %0 = alloca ptr, align 8
  store ptr %self, ptr %self.dbg.spill, align 8
  store ptr %self, ptr %_3, align 8
  %ptr = load ptr, ptr %_3, align 8, !noundef !4
  store ptr %ptr, ptr %ptr.dbg.spill, align 8
  %_6 = ptrtoint ptr %ptr to i64
  %1 = icmp eq i64 %_6, 0
  br i1 %1, label %bb1, label %bb2

bb1:                                              ; preds = %start
  store ptr null, ptr %0, align 8
  br label %bb3

bb2:                                              ; preds = %start
  store ptr %self, ptr %0, align 8
  br label %bb3

bb3:                                              ; preds = %bb2, %bb1
  %2 = load ptr, ptr %0, align 8, !align !5, !noundef !4
  ret ptr %2
}

; Function Attrs: nonlazybind uwtable
define internal void @_ZN15premultiply_lib3src3lib11premultiply17h0bb49a05b64291ddE(ptr align 8 %img) unnamed_addr #0 {
start:
  %b.dbg.spill = alloca float, align 4
  %g.dbg.spill = alloca float, align 4
  %r.dbg.spill = alloca float, align 4
  %a.dbg.spill = alloca float, align 4
  %pixel.dbg.spill = alloca ptr, align 8
  %pixels.dbg.spill = alloca { ptr, i64 }, align 8
  %h.dbg.spill = alloca i64, align 8
  %w.dbg.spill = alloca i64, align 8
  %img.dbg.spill = alloca ptr, align 8
  %_22 = alloca ptr, align 8
  %iter = alloca { ptr, ptr }, align 8
  %_12 = alloca i8, align 1
  %_3 = alloca { { i64, i64 }, { i64, i64 } }, align 8
  %pixel_count = alloca i64, align 8
  store ptr %img, ptr %img.dbg.spill, align 8
  %_5 = load i32, ptr %img, align 8, !noundef !4
  %0 = call { i64, i64 } @"_ZN4core7convert3num18ptr_try_from_impls69_$LT$impl$u20$core..convert..TryFrom$LT$i32$GT$$u20$for$u20$usize$GT$8try_from17h0998ff9a0182ceccE"(i32 %_5)
  %_4.0 = extractvalue { i64, i64 } %0, 0
  %_4.1 = extractvalue { i64, i64 } %0, 1
  %1 = getelementptr inbounds %"src::lib::CpImageT", ptr %img, i32 0, i32 1
  %_7 = load i32, ptr %1, align 4, !noundef !4
  %2 = call { i64, i64 } @"_ZN4core7convert3num18ptr_try_from_impls69_$LT$impl$u20$core..convert..TryFrom$LT$i32$GT$$u20$for$u20$usize$GT$8try_from17h0998ff9a0182ceccE"(i32 %_7)
  %_6.0 = extractvalue { i64, i64 } %2, 0
  %_6.1 = extractvalue { i64, i64 } %2, 1
  %3 = getelementptr inbounds { i64, i64 }, ptr %_3, i32 0, i32 0
  store i64 %_4.0, ptr %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, ptr %_3, i32 0, i32 1
  store i64 %_4.1, ptr %4, align 8
  %5 = getelementptr inbounds { { i64, i64 }, { i64, i64 } }, ptr %_3, i32 0, i32 1
  %6 = getelementptr inbounds { i64, i64 }, ptr %5, i32 0, i32 0
  store i64 %_6.0, ptr %6, align 8
  %7 = getelementptr inbounds { i64, i64 }, ptr %5, i32 0, i32 1
  store i64 %_6.1, ptr %7, align 8
  %_9 = load i64, ptr %_3, align 8, !range !6, !noundef !4
  %8 = icmp eq i64 %_9, 0
  br i1 %8, label %bb3, label %bb4

bb3:                                              ; preds = %start
  %9 = getelementptr inbounds { { i64, i64 }, { i64, i64 } }, ptr %_3, i32 0, i32 1
  %_8 = load i64, ptr %9, align 8, !range !6, !noundef !4
  %10 = icmp eq i64 %_8, 0
  br i1 %10, label %bb5, label %bb4

bb4:                                              ; preds = %bb3, %start
  store i64 0, ptr %pixel_count, align 8
  br label %bb6

bb5:                                              ; preds = %bb3
  %11 = getelementptr inbounds { i64, i64 }, ptr %_3, i32 0, i32 1
  %w = load i64, ptr %11, align 8, !noundef !4
  store i64 %w, ptr %w.dbg.spill, align 8
  %12 = getelementptr inbounds { { i64, i64 }, { i64, i64 } }, ptr %_3, i32 0, i32 1
  %13 = getelementptr inbounds { i64, i64 }, ptr %12, i32 0, i32 1
  %h = load i64, ptr %13, align 8, !noundef !4
  store i64 %h, ptr %h.dbg.spill, align 8
  %14 = call i64 @"_ZN4core3num23_$LT$impl$u20$usize$GT$14saturating_mul17h48b099bea0ae0a12E"(i64 %w, i64 %h)
  store i64 %14, ptr %pixel_count, align 8
  br label %bb6

bb6:                                              ; preds = %bb5, %bb4
  %_13 = load i64, ptr %pixel_count, align 8, !noundef !4
  %15 = icmp eq i64 %_13, 0
  br i1 %15, label %bb7, label %bb8

bb7:                                              ; preds = %bb6
  store i8 1, ptr %_12, align 1
  br label %bb9

bb8:                                              ; preds = %bb6
  %16 = getelementptr inbounds %"src::lib::CpImageT", ptr %img, i32 0, i32 2
  %_15 = load ptr, ptr %16, align 8, !noundef !4
  %_14 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17hcca1004e0ee571e7E"(ptr %_15)
  %17 = zext i1 %_14 to i8
  store i8 %17, ptr %_12, align 1
  br label %bb9

bb9:                                              ; preds = %bb8, %bb7
  %18 = load i8, ptr %_12, align 1, !range !7, !noundef !4
  %19 = trunc i8 %18 to i1
  br i1 %19, label %bb18, label %bb12

bb12:                                             ; preds = %bb9
  %20 = getelementptr inbounds %"src::lib::CpImageT", ptr %img, i32 0, i32 2
  %_18 = load ptr, ptr %20, align 8, !noundef !4
  %_19 = load i64, ptr %pixel_count, align 8, !noundef !4
  %21 = call { ptr, i64 } @_ZN4core5slice3raw18from_raw_parts_mut17h006c856e3e821457E(ptr %_18, i64 %_19)
  %_17.0 = extractvalue { ptr, i64 } %21, 0
  %_17.1 = extractvalue { ptr, i64 } %21, 1
  %22 = getelementptr inbounds { ptr, i64 }, ptr %pixels.dbg.spill, i32 0, i32 0
  store ptr %_17.0, ptr %22, align 8
  %23 = getelementptr inbounds { ptr, i64 }, ptr %pixels.dbg.spill, i32 0, i32 1
  store i64 %_17.1, ptr %23, align 8
  %24 = call { ptr, ptr } @"_ZN4core5slice4iter95_$LT$impl$u20$core..iter..traits..collect..IntoIterator$u20$for$u20$$RF$mut$u20$$u5b$T$u5d$$GT$9into_iter17h5ee772ef846aaaecE"(ptr align 1 %_17.0, i64 %_17.1)
  %_20.0 = extractvalue { ptr, ptr } %24, 0
  %_20.1 = extractvalue { ptr, ptr } %24, 1
  %25 = getelementptr inbounds { ptr, ptr }, ptr %iter, i32 0, i32 0
  store ptr %_20.0, ptr %25, align 8
  %26 = getelementptr inbounds { ptr, ptr }, ptr %iter, i32 0, i32 1
  store ptr %_20.1, ptr %26, align 8
  br label %bb15

bb18:                                             ; preds = %bb15, %bb9
  ret void

bb15:                                             ; preds = %bb17, %bb12
  %27 = call align 1 ptr @"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2c5d4fd03b523009E"(ptr align 8 %iter)
  store ptr %27, ptr %_22, align 8
  %28 = load ptr, ptr %_22, align 8, !noundef !4
  %29 = ptrtoint ptr %28 to i64
  %30 = icmp eq i64 %29, 0
  %_24 = select i1 %30, i64 0, i64 1
  %31 = icmp eq i64 %_24, 0
  br i1 %31, label %bb18, label %bb17

bb17:                                             ; preds = %bb15
  %pixel = load ptr, ptr %_22, align 8, !nonnull !4, !align !8, !noundef !4
  store ptr %pixel, ptr %pixel.dbg.spill, align 8
  %32 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pixel, i32 0, i32 3
  %_28 = load i8, ptr %32, align 1, !noundef !4
  %_27 = uitofp i8 %_28 to float
  %a = fdiv float %_27, 2.550000e+02
  store float %a, ptr %a.dbg.spill, align 4
  %_32 = load i8, ptr %pixel, align 1, !noundef !4
  %_31 = uitofp i8 %_32 to float
  %_30 = fdiv float %_31, 2.550000e+02
  %r = fmul float %_30, %a
  store float %r, ptr %r.dbg.spill, align 4
  %33 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pixel, i32 0, i32 1
  %_36 = load i8, ptr %33, align 1, !noundef !4
  %_35 = uitofp i8 %_36 to float
  %_34 = fdiv float %_35, 2.550000e+02
  %g = fmul float %_34, %a
  store float %g, ptr %g.dbg.spill, align 4
  %34 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pixel, i32 0, i32 2
  %_40 = load i8, ptr %34, align 1, !noundef !4
  %_39 = uitofp i8 %_40 to float
  %_38 = fdiv float %_39, 2.550000e+02
  %b = fmul float %_38, %a
  store float %b, ptr %b.dbg.spill, align 4
  %_41 = fmul float %r, 2.550000e+02
  %35 = call i8 @llvm.fptoui.sat.i8.f32(float %_41)
  store i8 %35, ptr %pixel, align 1
  %_42 = fmul float %g, 2.550000e+02
  %36 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pixel, i32 0, i32 1
  %37 = call i8 @llvm.fptoui.sat.i8.f32(float %_42)
  store i8 %37, ptr %36, align 1
  %_43 = fmul float %b, 2.550000e+02
  %38 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pixel, i32 0, i32 2
  %39 = call i8 @llvm.fptoui.sat.i8.f32(float %_43)
  store i8 %39, ptr %38, align 1
  br label %bb15

bb11:                                             ; No predecessors!
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @"_ZN4core7convert3num18ptr_try_from_impls69_$LT$impl$u20$core..convert..TryFrom$LT$i32$GT$$u20$for$u20$usize$GT$8try_from17h0998ff9a0182ceccE"(i32 %u) unnamed_addr #1 {
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
  %3 = load i64, ptr %2, align 8, !range !6, !noundef !4
  %4 = getelementptr inbounds { i64, i64 }, ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 8
  %6 = insertvalue { i64, i64 } poison, i64 %3, 0
  %7 = insertvalue { i64, i64 } %6, i64 %5, 1
  ret { i64, i64 } %7
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @"_ZN4core3num23_$LT$impl$u20$usize$GT$14saturating_mul17h48b099bea0ae0a12E"(i64 %self, i64 %rhs) unnamed_addr #1 {
start:
  %x.dbg.spill = alloca i64, align 8
  %0 = alloca i8, align 1
  %b.dbg.spill2 = alloca i8, align 1
  %a.dbg.spill1 = alloca i64, align 8
  %b.dbg.spill = alloca i8, align 1
  %a.dbg.spill = alloca i64, align 8
  %rhs.dbg.spill = alloca i64, align 8
  %self.dbg.spill = alloca i64, align 8
  %_8 = alloca { i64, i8 }, align 8
  %_3 = alloca { i64, i64 }, align 8
  %1 = alloca i64, align 8
  store i64 %self, ptr %self.dbg.spill, align 8
  store i64 %rhs, ptr %rhs.dbg.spill, align 8
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %self, i64 %rhs)
  %_12.0 = extractvalue { i64, i1 } %2, 0
  %_12.1 = extractvalue { i64, i1 } %2, 1
  store i64 %_12.0, ptr %a.dbg.spill, align 8
  %3 = zext i1 %_12.1 to i8
  store i8 %3, ptr %b.dbg.spill, align 1
  store i64 %_12.0, ptr %_8, align 8
  %4 = getelementptr inbounds { i64, i8 }, ptr %_8, i32 0, i32 1
  %5 = zext i1 %_12.1 to i8
  store i8 %5, ptr %4, align 8
  %a = load i64, ptr %_8, align 8, !noundef !4
  store i64 %a, ptr %a.dbg.spill1, align 8
  %6 = getelementptr inbounds { i64, i8 }, ptr %_8, i32 0, i32 1
  %7 = load i8, ptr %6, align 8, !range !7, !noundef !4
  %b = trunc i8 %7 to i1
  %8 = zext i1 %b to i8
  store i8 %8, ptr %b.dbg.spill2, align 1
  %9 = call i1 @llvm.expect.i1(i1 %b, i1 false)
  %10 = zext i1 %9 to i8
  store i8 %10, ptr %0, align 1
  %11 = load i8, ptr %0, align 1, !range !7, !noundef !4
  %_9 = trunc i8 %11 to i1
  br i1 %_9, label %bb6, label %bb7

bb7:                                              ; preds = %start
  %12 = getelementptr inbounds { i64, i64 }, ptr %_3, i32 0, i32 1
  store i64 %a, ptr %12, align 8
  store i64 1, ptr %_3, align 8
  br label %bb8

bb6:                                              ; preds = %start
  store i64 0, ptr %_3, align 8
  br label %bb8

bb8:                                              ; preds = %bb6, %bb7
  %_4 = load i64, ptr %_3, align 8, !range !6, !noundef !4
  %13 = icmp eq i64 %_4, 0
  br i1 %13, label %bb1, label %bb3

bb1:                                              ; preds = %bb8
  store i64 -1, ptr %1, align 8
  br label %bb4

bb3:                                              ; preds = %bb8
  %14 = getelementptr inbounds { i64, i64 }, ptr %_3, i32 0, i32 1
  %x = load i64, ptr %14, align 8, !noundef !4
  store i64 %x, ptr %x.dbg.spill, align 8
  store i64 %x, ptr %1, align 8
  br label %bb4

bb2:                                              ; No predecessors!
  unreachable

bb4:                                              ; preds = %bb3, %bb1
  %15 = load i64, ptr %1, align 8, !noundef !4
  ret i64 %15
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17hcca1004e0ee571e7E"(ptr %self) unnamed_addr #1 {
start:
  %ptr.dbg.spill = alloca ptr, align 8
  %self.dbg.spill = alloca ptr, align 8
  %_2 = alloca ptr, align 8
  store ptr %self, ptr %self.dbg.spill, align 8
  store ptr %self, ptr %_2, align 8
  %ptr = load ptr, ptr %_2, align 8, !noundef !4
  store ptr %ptr, ptr %ptr.dbg.spill, align 8
  %_5 = ptrtoint ptr %ptr to i64
  %0 = icmp eq i64 %_5, 0
  ret i1 %0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @_ZN4core5slice3raw18from_raw_parts_mut17h006c856e3e821457E(ptr %data, i64 %len) unnamed_addr #1 {
start:
  %data_address.dbg.spill = alloca ptr, align 8
  %len.dbg.spill = alloca i64, align 8
  %data.dbg.spill = alloca ptr, align 8
  %_8 = alloca { ptr, i64 }, align 8
  %_7 = alloca %"core::ptr::metadata::PtrRepr<[src::lib::CpPixelT]>", align 8
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
define internal { ptr, ptr } @"_ZN4core5slice4iter95_$LT$impl$u20$core..iter..traits..collect..IntoIterator$u20$for$u20$$RF$mut$u20$$u5b$T$u5d$$GT$9into_iter17h5ee772ef846aaaecE"(ptr align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %self.dbg.spill = alloca { ptr, i64 }, align 8
  %0 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill, i32 0, i32 0
  store ptr %self.0, ptr %0, align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill, i32 0, i32 1
  store i64 %self.1, ptr %1, align 8
  %2 = call { ptr, ptr } @"_ZN4core5slice4iter16IterMut$LT$T$GT$3new17h85269ef350bcdb63E"(ptr align 1 %self.0, i64 %self.1)
  %3 = extractvalue { ptr, ptr } %2, 0
  %4 = extractvalue { ptr, ptr } %2, 1
  %5 = insertvalue { ptr, ptr } poison, ptr %3, 0
  %6 = insertvalue { ptr, ptr } %5, ptr %4, 1
  ret { ptr, ptr } %6
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal align 1 ptr @"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h2c5d4fd03b523009E"(ptr align 8 %self) unnamed_addr #1 {
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
  %_51 = alloca %"core::ptr::metadata::PtrComponents<src::lib::CpPixelT>", align 8
  %_50 = alloca %"core::ptr::metadata::PtrRepr<src::lib::CpPixelT>", align 8
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
  %5 = load ptr, ptr %2, align 8, !align !8, !noundef !4
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
  %10 = getelementptr inbounds %"src::lib::CpPixelT", ptr %self12, i64 1
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fptoui.sat.i8.f32(float) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @"_ZN4core5slice4iter16IterMut$LT$T$GT$3new17h85269ef350bcdb63E"(ptr align 1 %slice.0, i64 %slice.1) unnamed_addr #1 {
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
  %_27 = alloca %"core::ptr::metadata::PtrComponents<src::lib::CpPixelT>", align 8
  %_26 = alloca %"core::ptr::metadata::PtrRepr<src::lib::CpPixelT>", align 8
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
  %5 = getelementptr inbounds %"src::lib::CpPixelT", ptr %slice.0, i64 %slice.1
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.expect.i1(i1, i1) #5

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_1() unnamed_addr #0 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %i.dbg.spill = alloca i64, align 8
  %_51 = alloca i8, align 1
  %_50 = alloca i8, align 1
  %_49 = alloca i8, align 1
  %_45 = alloca { i64, i64 }, align 8
  %iter = alloca { i64, i64 }, align 8
  %_43 = alloca { i64, i64 }, align 8
  %_41 = alloca %"src::lib::CpPixelT", align 1
  %_40 = alloca %"src::lib::CpPixelT", align 1
  %_39 = alloca %"src::lib::CpPixelT", align 1
  %_38 = alloca %"src::lib::CpPixelT", align 1
  %_37 = alloca %"src::lib::CpPixelT", align 1
  %_36 = alloca %"src::lib::CpPixelT", align 1
  %_35 = alloca %"src::lib::CpPixelT", align 1
  %_34 = alloca %"src::lib::CpPixelT", align 1
  %_33 = alloca %"src::lib::CpPixelT", align 1
  %_32 = alloca %"src::lib::CpPixelT", align 1
  %_31 = alloca %"src::lib::CpPixelT", align 1
  %_30 = alloca %"src::lib::CpPixelT", align 1
  %_29 = alloca %"src::lib::CpPixelT", align 1
  %_28 = alloca %"src::lib::CpPixelT", align 1
  %_27 = alloca %"src::lib::CpPixelT", align 1
  %_26 = alloca %"src::lib::CpPixelT", align 1
  %expected = alloca [16 x %"src::lib::CpPixelT"], align 1
  %img = alloca %"src::lib::CpImageT", align 8
  %_17 = alloca %"src::lib::CpPixelT", align 1
  %_16 = alloca %"src::lib::CpPixelT", align 1
  %_15 = alloca %"src::lib::CpPixelT", align 1
  %_14 = alloca %"src::lib::CpPixelT", align 1
  %_13 = alloca %"src::lib::CpPixelT", align 1
  %_12 = alloca %"src::lib::CpPixelT", align 1
  %_11 = alloca %"src::lib::CpPixelT", align 1
  %_10 = alloca %"src::lib::CpPixelT", align 1
  %_9 = alloca %"src::lib::CpPixelT", align 1
  %_8 = alloca %"src::lib::CpPixelT", align 1
  %_7 = alloca %"src::lib::CpPixelT", align 1
  %_6 = alloca %"src::lib::CpPixelT", align 1
  %_5 = alloca %"src::lib::CpPixelT", align 1
  %_4 = alloca %"src::lib::CpPixelT", align 1
  %_3 = alloca %"src::lib::CpPixelT", align 1
  %_2 = alloca %"src::lib::CpPixelT", align 1
  %pix = alloca [16 x %"src::lib::CpPixelT"], align 1
  %0 = alloca i8, align 1
  store i8 1, ptr %_2, align 1
  %1 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_2, i32 0, i32 1
  store i8 2, ptr %1, align 1
  %2 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_2, i32 0, i32 2
  store i8 3, ptr %2, align 1
  %3 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_2, i32 0, i32 3
  store i8 4, ptr %3, align 1
  store i8 5, ptr %_3, align 1
  %4 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_3, i32 0, i32 1
  store i8 6, ptr %4, align 1
  %5 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_3, i32 0, i32 2
  store i8 7, ptr %5, align 1
  %6 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_3, i32 0, i32 3
  store i8 8, ptr %6, align 1
  store i8 9, ptr %_4, align 1
  %7 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_4, i32 0, i32 1
  store i8 10, ptr %7, align 1
  %8 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_4, i32 0, i32 2
  store i8 11, ptr %8, align 1
  %9 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_4, i32 0, i32 3
  store i8 12, ptr %9, align 1
  store i8 13, ptr %_5, align 1
  %10 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_5, i32 0, i32 1
  store i8 14, ptr %10, align 1
  %11 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_5, i32 0, i32 2
  store i8 15, ptr %11, align 1
  %12 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_5, i32 0, i32 3
  store i8 16, ptr %12, align 1
  store i8 17, ptr %_6, align 1
  %13 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_6, i32 0, i32 1
  store i8 18, ptr %13, align 1
  %14 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_6, i32 0, i32 2
  store i8 19, ptr %14, align 1
  %15 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_6, i32 0, i32 3
  store i8 20, ptr %15, align 1
  store i8 21, ptr %_7, align 1
  %16 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_7, i32 0, i32 1
  store i8 22, ptr %16, align 1
  %17 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_7, i32 0, i32 2
  store i8 23, ptr %17, align 1
  %18 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_7, i32 0, i32 3
  store i8 24, ptr %18, align 1
  store i8 25, ptr %_8, align 1
  %19 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_8, i32 0, i32 1
  store i8 26, ptr %19, align 1
  %20 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_8, i32 0, i32 2
  store i8 27, ptr %20, align 1
  %21 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_8, i32 0, i32 3
  store i8 28, ptr %21, align 1
  store i8 29, ptr %_9, align 1
  %22 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_9, i32 0, i32 1
  store i8 30, ptr %22, align 1
  %23 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_9, i32 0, i32 2
  store i8 31, ptr %23, align 1
  %24 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_9, i32 0, i32 3
  store i8 32, ptr %24, align 1
  store i8 33, ptr %_10, align 1
  %25 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_10, i32 0, i32 1
  store i8 34, ptr %25, align 1
  %26 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_10, i32 0, i32 2
  store i8 35, ptr %26, align 1
  %27 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_10, i32 0, i32 3
  store i8 36, ptr %27, align 1
  store i8 37, ptr %_11, align 1
  %28 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_11, i32 0, i32 1
  store i8 38, ptr %28, align 1
  %29 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_11, i32 0, i32 2
  store i8 39, ptr %29, align 1
  %30 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_11, i32 0, i32 3
  store i8 40, ptr %30, align 1
  store i8 41, ptr %_12, align 1
  %31 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_12, i32 0, i32 1
  store i8 42, ptr %31, align 1
  %32 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_12, i32 0, i32 2
  store i8 43, ptr %32, align 1
  %33 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_12, i32 0, i32 3
  store i8 44, ptr %33, align 1
  store i8 45, ptr %_13, align 1
  %34 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_13, i32 0, i32 1
  store i8 46, ptr %34, align 1
  %35 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_13, i32 0, i32 2
  store i8 47, ptr %35, align 1
  %36 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_13, i32 0, i32 3
  store i8 48, ptr %36, align 1
  store i8 49, ptr %_14, align 1
  %37 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_14, i32 0, i32 1
  store i8 50, ptr %37, align 1
  %38 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_14, i32 0, i32 2
  store i8 51, ptr %38, align 1
  %39 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_14, i32 0, i32 3
  store i8 52, ptr %39, align 1
  store i8 53, ptr %_15, align 1
  %40 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_15, i32 0, i32 1
  store i8 54, ptr %40, align 1
  %41 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_15, i32 0, i32 2
  store i8 55, ptr %41, align 1
  %42 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_15, i32 0, i32 3
  store i8 56, ptr %42, align 1
  store i8 57, ptr %_16, align 1
  %43 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_16, i32 0, i32 1
  store i8 58, ptr %43, align 1
  %44 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_16, i32 0, i32 2
  store i8 59, ptr %44, align 1
  %45 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_16, i32 0, i32 3
  store i8 60, ptr %45, align 1
  store i8 61, ptr %_17, align 1
  %46 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_17, i32 0, i32 1
  store i8 62, ptr %46, align 1
  %47 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_17, i32 0, i32 2
  store i8 63, ptr %47, align 1
  %48 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_17, i32 0, i32 3
  store i8 64, ptr %48, align 1
  %49 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %49, ptr align 1 %_2, i64 4, i1 false)
  %50 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %50, ptr align 1 %_3, i64 4, i1 false)
  %51 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %51, ptr align 1 %_4, i64 4, i1 false)
  %52 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %52, ptr align 1 %_5, i64 4, i1 false)
  %53 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %53, ptr align 1 %_6, i64 4, i1 false)
  %54 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %54, ptr align 1 %_7, i64 4, i1 false)
  %55 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %55, ptr align 1 %_8, i64 4, i1 false)
  %56 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %56, ptr align 1 %_9, i64 4, i1 false)
  %57 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %57, ptr align 1 %_10, i64 4, i1 false)
  %58 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %58, ptr align 1 %_11, i64 4, i1 false)
  %59 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %59, ptr align 1 %_12, i64 4, i1 false)
  %60 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 11
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %60, ptr align 1 %_13, i64 4, i1 false)
  %61 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %61, ptr align 1 %_14, i64 4, i1 false)
  %62 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %62, ptr align 1 %_15, i64 4, i1 false)
  %63 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 14
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %63, ptr align 1 %_16, i64 4, i1 false)
  %64 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %64, ptr align 1 %_17, i64 4, i1 false)
  store ptr %pix, ptr %self.dbg.spill.i, align 8
  %65 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 16, ptr %65, align 8
  store i32 4, ptr %img, align 8
  %66 = getelementptr inbounds %"src::lib::CpImageT", ptr %img, i32 0, i32 1
  store i32 4, ptr %66, align 4
  %67 = getelementptr inbounds %"src::lib::CpImageT", ptr %img, i32 0, i32 2
  store ptr %pix, ptr %67, align 8
  call void @premultiply(ptr %img)
  store i8 0, ptr %_26, align 1
  %68 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_26, i32 0, i32 1
  store i8 0, ptr %68, align 1
  %69 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_26, i32 0, i32 2
  store i8 0, ptr %69, align 1
  %70 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_26, i32 0, i32 3
  store i8 4, ptr %70, align 1
  store i8 0, ptr %_27, align 1
  %71 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_27, i32 0, i32 1
  store i8 0, ptr %71, align 1
  %72 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_27, i32 0, i32 2
  store i8 0, ptr %72, align 1
  %73 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_27, i32 0, i32 3
  store i8 8, ptr %73, align 1
  store i8 0, ptr %_28, align 1
  %74 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_28, i32 0, i32 1
  store i8 0, ptr %74, align 1
  %75 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_28, i32 0, i32 2
  store i8 0, ptr %75, align 1
  %76 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_28, i32 0, i32 3
  store i8 12, ptr %76, align 1
  store i8 0, ptr %_29, align 1
  %77 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_29, i32 0, i32 1
  store i8 0, ptr %77, align 1
  %78 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_29, i32 0, i32 2
  store i8 0, ptr %78, align 1
  %79 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_29, i32 0, i32 3
  store i8 16, ptr %79, align 1
  store i8 1, ptr %_30, align 1
  %80 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_30, i32 0, i32 1
  store i8 1, ptr %80, align 1
  %81 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_30, i32 0, i32 2
  store i8 1, ptr %81, align 1
  %82 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_30, i32 0, i32 3
  store i8 20, ptr %82, align 1
  store i8 1, ptr %_31, align 1
  %83 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_31, i32 0, i32 1
  store i8 2, ptr %83, align 1
  %84 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_31, i32 0, i32 2
  store i8 2, ptr %84, align 1
  %85 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_31, i32 0, i32 3
  store i8 24, ptr %85, align 1
  store i8 2, ptr %_32, align 1
  %86 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_32, i32 0, i32 1
  store i8 2, ptr %86, align 1
  %87 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_32, i32 0, i32 2
  store i8 2, ptr %87, align 1
  %88 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_32, i32 0, i32 3
  store i8 28, ptr %88, align 1
  store i8 3, ptr %_33, align 1
  %89 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_33, i32 0, i32 1
  store i8 3, ptr %89, align 1
  %90 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_33, i32 0, i32 2
  store i8 3, ptr %90, align 1
  %91 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_33, i32 0, i32 3
  store i8 32, ptr %91, align 1
  store i8 4, ptr %_34, align 1
  %92 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_34, i32 0, i32 1
  store i8 4, ptr %92, align 1
  %93 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_34, i32 0, i32 2
  store i8 4, ptr %93, align 1
  %94 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_34, i32 0, i32 3
  store i8 36, ptr %94, align 1
  store i8 5, ptr %_35, align 1
  %95 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_35, i32 0, i32 1
  store i8 5, ptr %95, align 1
  %96 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_35, i32 0, i32 2
  store i8 6, ptr %96, align 1
  %97 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_35, i32 0, i32 3
  store i8 40, ptr %97, align 1
  store i8 7, ptr %_36, align 1
  %98 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_36, i32 0, i32 1
  store i8 7, ptr %98, align 1
  %99 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_36, i32 0, i32 2
  store i8 7, ptr %99, align 1
  %100 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_36, i32 0, i32 3
  store i8 44, ptr %100, align 1
  store i8 8, ptr %_37, align 1
  %101 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_37, i32 0, i32 1
  store i8 8, ptr %101, align 1
  %102 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_37, i32 0, i32 2
  store i8 8, ptr %102, align 1
  %103 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_37, i32 0, i32 3
  store i8 48, ptr %103, align 1
  store i8 9, ptr %_38, align 1
  %104 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_38, i32 0, i32 1
  store i8 10, ptr %104, align 1
  %105 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_38, i32 0, i32 2
  store i8 10, ptr %105, align 1
  %106 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_38, i32 0, i32 3
  store i8 52, ptr %106, align 1
  store i8 11, ptr %_39, align 1
  %107 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_39, i32 0, i32 1
  store i8 11, ptr %107, align 1
  %108 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_39, i32 0, i32 2
  store i8 12, ptr %108, align 1
  %109 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_39, i32 0, i32 3
  store i8 56, ptr %109, align 1
  store i8 13, ptr %_40, align 1
  %110 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_40, i32 0, i32 1
  store i8 13, ptr %110, align 1
  %111 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_40, i32 0, i32 2
  store i8 13, ptr %111, align 1
  %112 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_40, i32 0, i32 3
  store i8 60, ptr %112, align 1
  store i8 15, ptr %_41, align 1
  %113 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_41, i32 0, i32 1
  store i8 15, ptr %113, align 1
  %114 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_41, i32 0, i32 2
  store i8 15, ptr %114, align 1
  %115 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_41, i32 0, i32 3
  store i8 64, ptr %115, align 1
  %116 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %116, ptr align 1 %_26, i64 4, i1 false)
  %117 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %117, ptr align 1 %_27, i64 4, i1 false)
  %118 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %118, ptr align 1 %_28, i64 4, i1 false)
  %119 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %119, ptr align 1 %_29, i64 4, i1 false)
  %120 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %120, ptr align 1 %_30, i64 4, i1 false)
  %121 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %121, ptr align 1 %_31, i64 4, i1 false)
  %122 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %122, ptr align 1 %_32, i64 4, i1 false)
  %123 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %123, ptr align 1 %_33, i64 4, i1 false)
  %124 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %124, ptr align 1 %_34, i64 4, i1 false)
  %125 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %125, ptr align 1 %_35, i64 4, i1 false)
  %126 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %126, ptr align 1 %_36, i64 4, i1 false)
  %127 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 11
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %127, ptr align 1 %_37, i64 4, i1 false)
  %128 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %128, ptr align 1 %_38, i64 4, i1 false)
  %129 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %129, ptr align 1 %_39, i64 4, i1 false)
  %130 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 14
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %130, ptr align 1 %_40, i64 4, i1 false)
  %131 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %131, ptr align 1 %_41, i64 4, i1 false)
  store i64 0, ptr %_43, align 8
  %132 = getelementptr inbounds { i64, i64 }, ptr %_43, i32 0, i32 1
  store i64 16, ptr %132, align 8
  %133 = getelementptr inbounds { i64, i64 }, ptr %_43, i32 0, i32 0
  %134 = load i64, ptr %133, align 8, !noundef !4
  %135 = getelementptr inbounds { i64, i64 }, ptr %_43, i32 0, i32 1
  %136 = load i64, ptr %135, align 8, !noundef !4
  %137 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf87fecd95e1ff0c9E"(i64 %134, i64 %136)
  %_42.0 = extractvalue { i64, i64 } %137, 0
  %_42.1 = extractvalue { i64, i64 } %137, 1
  %138 = getelementptr inbounds { i64, i64 }, ptr %iter, i32 0, i32 0
  store i64 %_42.0, ptr %138, align 8
  %139 = getelementptr inbounds { i64, i64 }, ptr %iter, i32 0, i32 1
  store i64 %_42.1, ptr %139, align 8
  br label %bb4

bb4:                                              ; preds = %bb11, %start
  %140 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h59cd51c5e9b016b3E"(ptr align 8 %iter)
  store { i64, i64 } %140, ptr %_45, align 8
  %_47 = load i64, ptr %_45, align 8, !range !6, !noundef !4
  %141 = icmp eq i64 %_47, 0
  br i1 %141, label %bb8, label %bb6

bb8:                                              ; preds = %bb4
  store i8 1, ptr %0, align 1
  br label %bb27

bb6:                                              ; preds = %bb4
  %142 = getelementptr inbounds { i64, i64 }, ptr %_45, i32 0, i32 1
  %i = load i64, ptr %142, align 8, !noundef !4
  store i64 %i, ptr %i.dbg.spill, align 8
  %_55 = icmp ult i64 %i, 16
  %143 = call i1 @llvm.expect.i1(i1 %_55, i1 true)
  br i1 %143, label %bb18, label %panic

bb7:                                              ; No predecessors!
  unreachable

bb18:                                             ; preds = %bb6
  %144 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 %i
  %_53 = load i8, ptr %144, align 1, !noundef !4
  %_58 = icmp ult i64 %i, 16
  %145 = call i1 @llvm.expect.i1(i1 %_58, i1 true)
  br i1 %145, label %bb19, label %panic1

panic:                                            ; preds = %bb6
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_df1df2308ed9791ded78a898bfa7d5c4) #7
  unreachable

bb19:                                             ; preds = %bb18
  %146 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 %i
  %_56 = load i8, ptr %146, align 1, !noundef !4
  %_52 = icmp ne i8 %_53, %_56
  br i1 %_52, label %bb15, label %bb16

panic1:                                           ; preds = %bb18
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_15141c4deb063c592b352e0a243078f5) #7
  unreachable

bb16:                                             ; preds = %bb19
  %_62 = icmp ult i64 %i, 16
  %147 = call i1 @llvm.expect.i1(i1 %_62, i1 true)
  br i1 %147, label %bb20, label %panic2

bb15:                                             ; preds = %bb19
  store i8 1, ptr %_51, align 1
  br label %bb17

bb17:                                             ; preds = %bb21, %bb15
  %148 = load i8, ptr %_51, align 1, !range !7, !noundef !4
  %149 = trunc i8 %148 to i1
  br i1 %149, label %bb12, label %bb13

bb20:                                             ; preds = %bb16
  %150 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 %i
  %151 = getelementptr inbounds %"src::lib::CpPixelT", ptr %150, i32 0, i32 1
  %_60 = load i8, ptr %151, align 1, !noundef !4
  %_65 = icmp ult i64 %i, 16
  %152 = call i1 @llvm.expect.i1(i1 %_65, i1 true)
  br i1 %152, label %bb21, label %panic3

panic2:                                           ; preds = %bb16
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_b12c3e5a2179371f27ef0e287060640a) #7
  unreachable

bb21:                                             ; preds = %bb20
  %153 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 %i
  %154 = getelementptr inbounds %"src::lib::CpPixelT", ptr %153, i32 0, i32 1
  %_63 = load i8, ptr %154, align 1, !noundef !4
  %_59 = icmp ne i8 %_60, %_63
  %155 = zext i1 %_59 to i8
  store i8 %155, ptr %_51, align 1
  br label %bb17

panic3:                                           ; preds = %bb20
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_a9fc7cf949c378920c3f72f583c67640) #7
  unreachable

bb13:                                             ; preds = %bb17
  %_69 = icmp ult i64 %i, 16
  %156 = call i1 @llvm.expect.i1(i1 %_69, i1 true)
  br i1 %156, label %bb22, label %panic4

bb12:                                             ; preds = %bb17
  store i8 1, ptr %_50, align 1
  br label %bb14

bb14:                                             ; preds = %bb23, %bb12
  %157 = load i8, ptr %_50, align 1, !range !7, !noundef !4
  %158 = trunc i8 %157 to i1
  br i1 %158, label %bb9, label %bb10

bb22:                                             ; preds = %bb13
  %159 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 %i
  %160 = getelementptr inbounds %"src::lib::CpPixelT", ptr %159, i32 0, i32 2
  %_67 = load i8, ptr %160, align 1, !noundef !4
  %_72 = icmp ult i64 %i, 16
  %161 = call i1 @llvm.expect.i1(i1 %_72, i1 true)
  br i1 %161, label %bb23, label %panic5

panic4:                                           ; preds = %bb13
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_dc096cca66e2e8b3821babd37390dcb0) #7
  unreachable

bb23:                                             ; preds = %bb22
  %162 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 %i
  %163 = getelementptr inbounds %"src::lib::CpPixelT", ptr %162, i32 0, i32 2
  %_70 = load i8, ptr %163, align 1, !noundef !4
  %_66 = icmp ne i8 %_67, %_70
  %164 = zext i1 %_66 to i8
  store i8 %164, ptr %_50, align 1
  br label %bb14

panic5:                                           ; preds = %bb22
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_dba71f02e4f75a76da250a9c7d1dc7f3) #7
  unreachable

bb10:                                             ; preds = %bb14
  %_76 = icmp ult i64 %i, 16
  %165 = call i1 @llvm.expect.i1(i1 %_76, i1 true)
  br i1 %165, label %bb24, label %panic6

bb9:                                              ; preds = %bb14
  store i8 1, ptr %_49, align 1
  br label %bb11

bb11:                                             ; preds = %bb25, %bb9
  %166 = load i8, ptr %_49, align 1, !range !7, !noundef !4
  %167 = trunc i8 %166 to i1
  br i1 %167, label %bb26, label %bb4

bb24:                                             ; preds = %bb10
  %168 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 %i
  %169 = getelementptr inbounds %"src::lib::CpPixelT", ptr %168, i32 0, i32 3
  %_74 = load i8, ptr %169, align 1, !noundef !4
  %_79 = icmp ult i64 %i, 16
  %170 = call i1 @llvm.expect.i1(i1 %_79, i1 true)
  br i1 %170, label %bb25, label %panic7

panic6:                                           ; preds = %bb10
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_5a84612348abacc77c82beada2ea1c1c) #7
  unreachable

bb25:                                             ; preds = %bb24
  %171 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 %i
  %172 = getelementptr inbounds %"src::lib::CpPixelT", ptr %171, i32 0, i32 3
  %_77 = load i8, ptr %172, align 1, !noundef !4
  %_73 = icmp ne i8 %_74, %_77
  %173 = zext i1 %_73 to i8
  store i8 %173, ptr %_49, align 1
  br label %bb11

panic7:                                           ; preds = %bb24
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_a656523b71673ca73f924fb0d0ac3b8c) #7
  unreachable

bb26:                                             ; preds = %bb11
  store i8 0, ptr %0, align 1
  br label %bb27

bb27:                                             ; preds = %bb26, %bb8
  %174 = load i8, ptr %0, align 1, !range !7, !noundef !4
  %175 = trunc i8 %174 to i1
  ret i1 %175
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf87fecd95e1ff0c9E"(i64 %self.0, i64 %self.1) unnamed_addr #1 {
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
define internal { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h59cd51c5e9b016b3E"(ptr align 8 %self) unnamed_addr #1 {
start:
  %self.dbg.spill = alloca ptr, align 8
  store ptr %self, ptr %self.dbg.spill, align 8
  %0 = call { i64, i64 } @"_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17h346a32ebd6996545E"(ptr align 8 %self)
  %1 = extractvalue { i64, i64 } %0, 0
  %2 = extractvalue { i64, i64 } %0, 1
  %3 = insertvalue { i64, i64 } poison, i64 %1, 0
  %4 = insertvalue { i64, i64 } %3, i64 %2, 1
  ret { i64, i64 } %4
}

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64, i64, ptr align 8) unnamed_addr #6

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @"_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17h346a32ebd6996545E"(ptr align 8 %self) unnamed_addr #1 {
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
  %_2 = call zeroext i1 @"_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17h73cddd1f1f68fcc8E"(ptr align 8 %self, ptr align 8 %_4)
  br i1 %_2, label %bb2, label %bb5

bb5:                                              ; preds = %start
  store i64 0, ptr %0, align 8
  br label %bb6

bb2:                                              ; preds = %start
  store ptr %self, ptr %self.dbg.spill.i, align 8
  %1 = load i64, ptr %self, align 8, !noundef !4
  %n = call i64 @"_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17hdec20433b88249b8E"(i64 %1, i64 1)
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
define internal zeroext i1 @"_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17h73cddd1f1f68fcc8E"(ptr align 8 %self, ptr align 8 %other) unnamed_addr #1 {
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
define internal i64 @"_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17hdec20433b88249b8E"(i64 %start1, i64 %n) unnamed_addr #1 {
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
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %i.dbg.spill = alloca i64, align 8
  %_51 = alloca i8, align 1
  %_50 = alloca i8, align 1
  %_49 = alloca i8, align 1
  %_45 = alloca { i64, i64 }, align 8
  %iter = alloca { i64, i64 }, align 8
  %_43 = alloca { i64, i64 }, align 8
  %_41 = alloca %"src::lib::CpPixelT", align 1
  %_40 = alloca %"src::lib::CpPixelT", align 1
  %_39 = alloca %"src::lib::CpPixelT", align 1
  %_38 = alloca %"src::lib::CpPixelT", align 1
  %_37 = alloca %"src::lib::CpPixelT", align 1
  %_36 = alloca %"src::lib::CpPixelT", align 1
  %_35 = alloca %"src::lib::CpPixelT", align 1
  %_34 = alloca %"src::lib::CpPixelT", align 1
  %_33 = alloca %"src::lib::CpPixelT", align 1
  %_32 = alloca %"src::lib::CpPixelT", align 1
  %_31 = alloca %"src::lib::CpPixelT", align 1
  %_30 = alloca %"src::lib::CpPixelT", align 1
  %_29 = alloca %"src::lib::CpPixelT", align 1
  %_28 = alloca %"src::lib::CpPixelT", align 1
  %_27 = alloca %"src::lib::CpPixelT", align 1
  %_26 = alloca %"src::lib::CpPixelT", align 1
  %expected = alloca [16 x %"src::lib::CpPixelT"], align 1
  %img = alloca %"src::lib::CpImageT", align 8
  %_17 = alloca %"src::lib::CpPixelT", align 1
  %_16 = alloca %"src::lib::CpPixelT", align 1
  %_15 = alloca %"src::lib::CpPixelT", align 1
  %_14 = alloca %"src::lib::CpPixelT", align 1
  %_13 = alloca %"src::lib::CpPixelT", align 1
  %_12 = alloca %"src::lib::CpPixelT", align 1
  %_11 = alloca %"src::lib::CpPixelT", align 1
  %_10 = alloca %"src::lib::CpPixelT", align 1
  %_9 = alloca %"src::lib::CpPixelT", align 1
  %_8 = alloca %"src::lib::CpPixelT", align 1
  %_7 = alloca %"src::lib::CpPixelT", align 1
  %_6 = alloca %"src::lib::CpPixelT", align 1
  %_5 = alloca %"src::lib::CpPixelT", align 1
  %_4 = alloca %"src::lib::CpPixelT", align 1
  %_3 = alloca %"src::lib::CpPixelT", align 1
  %_2 = alloca %"src::lib::CpPixelT", align 1
  %pix = alloca [16 x %"src::lib::CpPixelT"], align 1
  %0 = alloca i8, align 1
  store i8 -8, ptr %_2, align 1
  %1 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_2, i32 0, i32 1
  store i8 -25, ptr %1, align 1
  %2 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_2, i32 0, i32 2
  store i8 -43, ptr %2, align 1
  %3 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_2, i32 0, i32 3
  store i8 9, ptr %3, align 1
  store i8 115, ptr %_3, align 1
  %4 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_3, i32 0, i32 1
  store i8 -116, ptr %4, align 1
  %5 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_3, i32 0, i32 2
  store i8 85, ptr %5, align 1
  %6 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_3, i32 0, i32 3
  store i8 -121, ptr %6, align 1
  store i8 -27, ptr %_4, align 1
  %7 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_4, i32 0, i32 1
  store i8 -16, ptr %7, align 1
  %8 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_4, i32 0, i32 2
  store i8 -6, ptr %8, align 1
  %9 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_4, i32 0, i32 3
  store i8 -122, ptr %9, align 1
  store i8 0, ptr %_5, align 1
  %10 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_5, i32 0, i32 1
  store i8 -64, ptr %10, align 1
  %11 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_5, i32 0, i32 2
  store i8 -98, ptr %11, align 1
  %12 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_5, i32 0, i32 3
  store i8 -106, ptr %12, align 1
  store i8 -7, ptr %_6, align 1
  %13 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_6, i32 0, i32 1
  store i8 16, ptr %13, align 1
  %14 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_6, i32 0, i32 2
  store i8 -116, ptr %14, align 1
  %15 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_6, i32 0, i32 3
  store i8 27, ptr %15, align 1
  store i8 -85, ptr %_7, align 1
  %16 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_7, i32 0, i32 1
  store i8 24, ptr %16, align 1
  %17 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_7, i32 0, i32 2
  store i8 -91, ptr %17, align 1
  %18 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_7, i32 0, i32 3
  store i8 2, ptr %18, align 1
  store i8 -45, ptr %_8, align 1
  %19 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_8, i32 0, i32 1
  store i8 -23, ptr %19, align 1
  %20 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_8, i32 0, i32 2
  store i8 -81, ptr %20, align 1
  %21 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_8, i32 0, i32 3
  store i8 -77, ptr %21, align 1
  store i8 64, ptr %_9, align 1
  %22 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_9, i32 0, i32 1
  store i8 -85, ptr %22, align 1
  %23 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_9, i32 0, i32 2
  store i8 4, ptr %23, align 1
  %24 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_9, i32 0, i32 3
  store i8 46, ptr %24, align 1
  store i8 5, ptr %_10, align 1
  %25 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_10, i32 0, i32 1
  store i8 -37, ptr %25, align 1
  %26 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_10, i32 0, i32 2
  store i8 -116, ptr %26, align 1
  %27 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_10, i32 0, i32 3
  store i8 -121, ptr %27, align 1
  store i8 -75, ptr %_11, align 1
  %28 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_11, i32 0, i32 1
  store i8 -116, ptr %28, align 1
  %29 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_11, i32 0, i32 2
  store i8 -83, ptr %29, align 1
  %30 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_11, i32 0, i32 3
  store i8 -57, ptr %30, align 1
  store i8 64, ptr %_12, align 1
  %31 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_12, i32 0, i32 1
  store i8 8, ptr %31, align 1
  %32 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_12, i32 0, i32 2
  store i8 40, ptr %32, align 1
  %33 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_12, i32 0, i32 3
  store i8 116, ptr %33, align 1
  store i8 -65, ptr %_13, align 1
  %34 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_13, i32 0, i32 1
  store i8 -78, ptr %34, align 1
  %35 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_13, i32 0, i32 2
  store i8 62, ptr %35, align 1
  %36 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_13, i32 0, i32 3
  store i8 -96, ptr %36, align 1
  store i8 -10, ptr %_14, align 1
  %37 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_14, i32 0, i32 1
  store i8 -111, ptr %37, align 1
  %38 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_14, i32 0, i32 2
  store i8 59, ptr %38, align 1
  %39 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_14, i32 0, i32 3
  store i8 -7, ptr %39, align 1
  store i8 -11, ptr %_15, align 1
  %40 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_15, i32 0, i32 1
  store i8 13, ptr %40, align 1
  %41 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_15, i32 0, i32 2
  store i8 102, ptr %41, align 1
  %42 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_15, i32 0, i32 3
  store i8 -65, ptr %42, align 1
  store i8 -87, ptr %_16, align 1
  %43 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_16, i32 0, i32 1
  store i8 -103, ptr %43, align 1
  %44 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_16, i32 0, i32 2
  store i8 -88, ptr %44, align 1
  %45 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_16, i32 0, i32 3
  store i8 -82, ptr %45, align 1
  store i8 122, ptr %_17, align 1
  %46 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_17, i32 0, i32 1
  store i8 -10, ptr %46, align 1
  %47 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_17, i32 0, i32 2
  store i8 -58, ptr %47, align 1
  %48 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_17, i32 0, i32 3
  store i8 98, ptr %48, align 1
  %49 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %49, ptr align 1 %_2, i64 4, i1 false)
  %50 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %50, ptr align 1 %_3, i64 4, i1 false)
  %51 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %51, ptr align 1 %_4, i64 4, i1 false)
  %52 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %52, ptr align 1 %_5, i64 4, i1 false)
  %53 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %53, ptr align 1 %_6, i64 4, i1 false)
  %54 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %54, ptr align 1 %_7, i64 4, i1 false)
  %55 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %55, ptr align 1 %_8, i64 4, i1 false)
  %56 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %56, ptr align 1 %_9, i64 4, i1 false)
  %57 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %57, ptr align 1 %_10, i64 4, i1 false)
  %58 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %58, ptr align 1 %_11, i64 4, i1 false)
  %59 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %59, ptr align 1 %_12, i64 4, i1 false)
  %60 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 11
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %60, ptr align 1 %_13, i64 4, i1 false)
  %61 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %61, ptr align 1 %_14, i64 4, i1 false)
  %62 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %62, ptr align 1 %_15, i64 4, i1 false)
  %63 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 14
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %63, ptr align 1 %_16, i64 4, i1 false)
  %64 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %64, ptr align 1 %_17, i64 4, i1 false)
  store ptr %pix, ptr %self.dbg.spill.i, align 8
  %65 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 16, ptr %65, align 8
  store i32 2, ptr %img, align 8
  %66 = getelementptr inbounds %"src::lib::CpImageT", ptr %img, i32 0, i32 1
  store i32 8, ptr %66, align 4
  %67 = getelementptr inbounds %"src::lib::CpImageT", ptr %img, i32 0, i32 2
  store ptr %pix, ptr %67, align 8
  call void @premultiply(ptr %img)
  store i8 8, ptr %_26, align 1
  %68 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_26, i32 0, i32 1
  store i8 8, ptr %68, align 1
  %69 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_26, i32 0, i32 2
  store i8 7, ptr %69, align 1
  %70 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_26, i32 0, i32 3
  store i8 9, ptr %70, align 1
  store i8 60, ptr %_27, align 1
  %71 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_27, i32 0, i32 1
  store i8 74, ptr %71, align 1
  %72 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_27, i32 0, i32 2
  store i8 45, ptr %72, align 1
  %73 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_27, i32 0, i32 3
  store i8 -121, ptr %73, align 1
  store i8 120, ptr %_28, align 1
  %74 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_28, i32 0, i32 1
  store i8 126, ptr %74, align 1
  %75 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_28, i32 0, i32 2
  store i8 -125, ptr %75, align 1
  %76 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_28, i32 0, i32 3
  store i8 -122, ptr %76, align 1
  store i8 0, ptr %_29, align 1
  %77 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_29, i32 0, i32 1
  store i8 112, ptr %77, align 1
  %78 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_29, i32 0, i32 2
  store i8 92, ptr %78, align 1
  %79 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_29, i32 0, i32 3
  store i8 -106, ptr %79, align 1
  store i8 26, ptr %_30, align 1
  %80 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_30, i32 0, i32 1
  store i8 1, ptr %80, align 1
  %81 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_30, i32 0, i32 2
  store i8 14, ptr %81, align 1
  %82 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_30, i32 0, i32 3
  store i8 27, ptr %82, align 1
  store i8 1, ptr %_31, align 1
  %83 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_31, i32 0, i32 1
  store i8 0, ptr %83, align 1
  %84 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_31, i32 0, i32 2
  store i8 1, ptr %84, align 1
  %85 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_31, i32 0, i32 3
  store i8 2, ptr %85, align 1
  store i8 -108, ptr %_32, align 1
  %86 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_32, i32 0, i32 1
  store i8 -93, ptr %86, align 1
  %87 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_32, i32 0, i32 2
  store i8 122, ptr %87, align 1
  %88 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_32, i32 0, i32 3
  store i8 -77, ptr %88, align 1
  store i8 11, ptr %_33, align 1
  %89 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_33, i32 0, i32 1
  store i8 30, ptr %89, align 1
  %90 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_33, i32 0, i32 2
  store i8 0, ptr %90, align 1
  %91 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_33, i32 0, i32 3
  store i8 46, ptr %91, align 1
  store i8 2, ptr %_34, align 1
  %92 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_34, i32 0, i32 1
  store i8 115, ptr %92, align 1
  %93 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_34, i32 0, i32 2
  store i8 74, ptr %93, align 1
  %94 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_34, i32 0, i32 3
  store i8 -121, ptr %94, align 1
  store i8 -115, ptr %_35, align 1
  %95 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_35, i32 0, i32 1
  store i8 109, ptr %95, align 1
  %96 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_35, i32 0, i32 2
  store i8 -121, ptr %96, align 1
  %97 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_35, i32 0, i32 3
  store i8 -57, ptr %97, align 1
  store i8 29, ptr %_36, align 1
  %98 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_36, i32 0, i32 1
  store i8 3, ptr %98, align 1
  %99 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_36, i32 0, i32 2
  store i8 18, ptr %99, align 1
  %100 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_36, i32 0, i32 3
  store i8 116, ptr %100, align 1
  store i8 119, ptr %_37, align 1
  %101 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_37, i32 0, i32 1
  store i8 111, ptr %101, align 1
  %102 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_37, i32 0, i32 2
  store i8 38, ptr %102, align 1
  %103 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_37, i32 0, i32 3
  store i8 -96, ptr %103, align 1
  store i8 -16, ptr %_38, align 1
  %104 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_38, i32 0, i32 1
  store i8 -115, ptr %104, align 1
  %105 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_38, i32 0, i32 2
  store i8 57, ptr %105, align 1
  %106 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_38, i32 0, i32 3
  store i8 -7, ptr %106, align 1
  store i8 -73, ptr %_39, align 1
  %107 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_39, i32 0, i32 1
  store i8 9, ptr %107, align 1
  %108 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_39, i32 0, i32 2
  store i8 76, ptr %108, align 1
  %109 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_39, i32 0, i32 3
  store i8 -65, ptr %109, align 1
  store i8 115, ptr %_40, align 1
  %110 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_40, i32 0, i32 1
  store i8 104, ptr %110, align 1
  %111 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_40, i32 0, i32 2
  store i8 114, ptr %111, align 1
  %112 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_40, i32 0, i32 3
  store i8 -82, ptr %112, align 1
  store i8 46, ptr %_41, align 1
  %113 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_41, i32 0, i32 1
  store i8 94, ptr %113, align 1
  %114 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_41, i32 0, i32 2
  store i8 76, ptr %114, align 1
  %115 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_41, i32 0, i32 3
  store i8 98, ptr %115, align 1
  %116 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %116, ptr align 1 %_26, i64 4, i1 false)
  %117 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %117, ptr align 1 %_27, i64 4, i1 false)
  %118 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %118, ptr align 1 %_28, i64 4, i1 false)
  %119 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %119, ptr align 1 %_29, i64 4, i1 false)
  %120 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %120, ptr align 1 %_30, i64 4, i1 false)
  %121 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %121, ptr align 1 %_31, i64 4, i1 false)
  %122 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %122, ptr align 1 %_32, i64 4, i1 false)
  %123 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %123, ptr align 1 %_33, i64 4, i1 false)
  %124 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %124, ptr align 1 %_34, i64 4, i1 false)
  %125 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %125, ptr align 1 %_35, i64 4, i1 false)
  %126 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %126, ptr align 1 %_36, i64 4, i1 false)
  %127 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 11
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %127, ptr align 1 %_37, i64 4, i1 false)
  %128 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %128, ptr align 1 %_38, i64 4, i1 false)
  %129 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %129, ptr align 1 %_39, i64 4, i1 false)
  %130 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 14
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %130, ptr align 1 %_40, i64 4, i1 false)
  %131 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %131, ptr align 1 %_41, i64 4, i1 false)
  store i64 0, ptr %_43, align 8
  %132 = getelementptr inbounds { i64, i64 }, ptr %_43, i32 0, i32 1
  store i64 16, ptr %132, align 8
  %133 = getelementptr inbounds { i64, i64 }, ptr %_43, i32 0, i32 0
  %134 = load i64, ptr %133, align 8, !noundef !4
  %135 = getelementptr inbounds { i64, i64 }, ptr %_43, i32 0, i32 1
  %136 = load i64, ptr %135, align 8, !noundef !4
  %137 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf87fecd95e1ff0c9E"(i64 %134, i64 %136)
  %_42.0 = extractvalue { i64, i64 } %137, 0
  %_42.1 = extractvalue { i64, i64 } %137, 1
  %138 = getelementptr inbounds { i64, i64 }, ptr %iter, i32 0, i32 0
  store i64 %_42.0, ptr %138, align 8
  %139 = getelementptr inbounds { i64, i64 }, ptr %iter, i32 0, i32 1
  store i64 %_42.1, ptr %139, align 8
  br label %bb4

bb4:                                              ; preds = %bb11, %start
  %140 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h59cd51c5e9b016b3E"(ptr align 8 %iter)
  store { i64, i64 } %140, ptr %_45, align 8
  %_47 = load i64, ptr %_45, align 8, !range !6, !noundef !4
  %141 = icmp eq i64 %_47, 0
  br i1 %141, label %bb8, label %bb6

bb8:                                              ; preds = %bb4
  store i8 1, ptr %0, align 1
  br label %bb27

bb6:                                              ; preds = %bb4
  %142 = getelementptr inbounds { i64, i64 }, ptr %_45, i32 0, i32 1
  %i = load i64, ptr %142, align 8, !noundef !4
  store i64 %i, ptr %i.dbg.spill, align 8
  %_55 = icmp ult i64 %i, 16
  %143 = call i1 @llvm.expect.i1(i1 %_55, i1 true)
  br i1 %143, label %bb18, label %panic

bb7:                                              ; No predecessors!
  unreachable

bb18:                                             ; preds = %bb6
  %144 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 %i
  %_53 = load i8, ptr %144, align 1, !noundef !4
  %_58 = icmp ult i64 %i, 16
  %145 = call i1 @llvm.expect.i1(i1 %_58, i1 true)
  br i1 %145, label %bb19, label %panic1

panic:                                            ; preds = %bb6
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_24107fc835653ab7b8f1e3615a8a9be9) #7
  unreachable

bb19:                                             ; preds = %bb18
  %146 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 %i
  %_56 = load i8, ptr %146, align 1, !noundef !4
  %_52 = icmp ne i8 %_53, %_56
  br i1 %_52, label %bb15, label %bb16

panic1:                                           ; preds = %bb18
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_e8eaf03b96785e62b94d80b98d415d2c) #7
  unreachable

bb16:                                             ; preds = %bb19
  %_62 = icmp ult i64 %i, 16
  %147 = call i1 @llvm.expect.i1(i1 %_62, i1 true)
  br i1 %147, label %bb20, label %panic2

bb15:                                             ; preds = %bb19
  store i8 1, ptr %_51, align 1
  br label %bb17

bb17:                                             ; preds = %bb21, %bb15
  %148 = load i8, ptr %_51, align 1, !range !7, !noundef !4
  %149 = trunc i8 %148 to i1
  br i1 %149, label %bb12, label %bb13

bb20:                                             ; preds = %bb16
  %150 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 %i
  %151 = getelementptr inbounds %"src::lib::CpPixelT", ptr %150, i32 0, i32 1
  %_60 = load i8, ptr %151, align 1, !noundef !4
  %_65 = icmp ult i64 %i, 16
  %152 = call i1 @llvm.expect.i1(i1 %_65, i1 true)
  br i1 %152, label %bb21, label %panic3

panic2:                                           ; preds = %bb16
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_6a10105a17ea989208c68596cc905142) #7
  unreachable

bb21:                                             ; preds = %bb20
  %153 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 %i
  %154 = getelementptr inbounds %"src::lib::CpPixelT", ptr %153, i32 0, i32 1
  %_63 = load i8, ptr %154, align 1, !noundef !4
  %_59 = icmp ne i8 %_60, %_63
  %155 = zext i1 %_59 to i8
  store i8 %155, ptr %_51, align 1
  br label %bb17

panic3:                                           ; preds = %bb20
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_f4671c488fee5f87c2c17bec5ecb95bd) #7
  unreachable

bb13:                                             ; preds = %bb17
  %_69 = icmp ult i64 %i, 16
  %156 = call i1 @llvm.expect.i1(i1 %_69, i1 true)
  br i1 %156, label %bb22, label %panic4

bb12:                                             ; preds = %bb17
  store i8 1, ptr %_50, align 1
  br label %bb14

bb14:                                             ; preds = %bb23, %bb12
  %157 = load i8, ptr %_50, align 1, !range !7, !noundef !4
  %158 = trunc i8 %157 to i1
  br i1 %158, label %bb9, label %bb10

bb22:                                             ; preds = %bb13
  %159 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 %i
  %160 = getelementptr inbounds %"src::lib::CpPixelT", ptr %159, i32 0, i32 2
  %_67 = load i8, ptr %160, align 1, !noundef !4
  %_72 = icmp ult i64 %i, 16
  %161 = call i1 @llvm.expect.i1(i1 %_72, i1 true)
  br i1 %161, label %bb23, label %panic5

panic4:                                           ; preds = %bb13
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_c432dcb36e13f7408a2bfc1bb09cb72a) #7
  unreachable

bb23:                                             ; preds = %bb22
  %162 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 %i
  %163 = getelementptr inbounds %"src::lib::CpPixelT", ptr %162, i32 0, i32 2
  %_70 = load i8, ptr %163, align 1, !noundef !4
  %_66 = icmp ne i8 %_67, %_70
  %164 = zext i1 %_66 to i8
  store i8 %164, ptr %_50, align 1
  br label %bb14

panic5:                                           ; preds = %bb22
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_35ee0f7482a92b1cceea3cab1d13fba0) #7
  unreachable

bb10:                                             ; preds = %bb14
  %_76 = icmp ult i64 %i, 16
  %165 = call i1 @llvm.expect.i1(i1 %_76, i1 true)
  br i1 %165, label %bb24, label %panic6

bb9:                                              ; preds = %bb14
  store i8 1, ptr %_49, align 1
  br label %bb11

bb11:                                             ; preds = %bb25, %bb9
  %166 = load i8, ptr %_49, align 1, !range !7, !noundef !4
  %167 = trunc i8 %166 to i1
  br i1 %167, label %bb26, label %bb4

bb24:                                             ; preds = %bb10
  %168 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 %i
  %169 = getelementptr inbounds %"src::lib::CpPixelT", ptr %168, i32 0, i32 3
  %_74 = load i8, ptr %169, align 1, !noundef !4
  %_79 = icmp ult i64 %i, 16
  %170 = call i1 @llvm.expect.i1(i1 %_79, i1 true)
  br i1 %170, label %bb25, label %panic7

panic6:                                           ; preds = %bb10
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_9163258d7dbc59a17a6412c861568e24) #7
  unreachable

bb25:                                             ; preds = %bb24
  %171 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 %i
  %172 = getelementptr inbounds %"src::lib::CpPixelT", ptr %171, i32 0, i32 3
  %_77 = load i8, ptr %172, align 1, !noundef !4
  %_73 = icmp ne i8 %_74, %_77
  %173 = zext i1 %_73 to i8
  store i8 %173, ptr %_49, align 1
  br label %bb11

panic7:                                           ; preds = %bb24
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_3854d2c09862168876145f9c89e35f24) #7
  unreachable

bb26:                                             ; preds = %bb11
  store i8 0, ptr %0, align 1
  br label %bb27

bb27:                                             ; preds = %bb26, %bb8
  %174 = load i8, ptr %0, align 1, !range !7, !noundef !4
  %175 = trunc i8 %174 to i1
  ret i1 %175
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_3() unnamed_addr #0 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %i.dbg.spill = alloca i64, align 8
  %_51 = alloca i8, align 1
  %_50 = alloca i8, align 1
  %_49 = alloca i8, align 1
  %_45 = alloca { i64, i64 }, align 8
  %iter = alloca { i64, i64 }, align 8
  %_43 = alloca { i64, i64 }, align 8
  %_41 = alloca %"src::lib::CpPixelT", align 1
  %_40 = alloca %"src::lib::CpPixelT", align 1
  %_39 = alloca %"src::lib::CpPixelT", align 1
  %_38 = alloca %"src::lib::CpPixelT", align 1
  %_37 = alloca %"src::lib::CpPixelT", align 1
  %_36 = alloca %"src::lib::CpPixelT", align 1
  %_35 = alloca %"src::lib::CpPixelT", align 1
  %_34 = alloca %"src::lib::CpPixelT", align 1
  %_33 = alloca %"src::lib::CpPixelT", align 1
  %_32 = alloca %"src::lib::CpPixelT", align 1
  %_31 = alloca %"src::lib::CpPixelT", align 1
  %_30 = alloca %"src::lib::CpPixelT", align 1
  %_29 = alloca %"src::lib::CpPixelT", align 1
  %_28 = alloca %"src::lib::CpPixelT", align 1
  %_27 = alloca %"src::lib::CpPixelT", align 1
  %_26 = alloca %"src::lib::CpPixelT", align 1
  %expected = alloca [16 x %"src::lib::CpPixelT"], align 1
  %img = alloca %"src::lib::CpImageT", align 8
  %_17 = alloca %"src::lib::CpPixelT", align 1
  %_16 = alloca %"src::lib::CpPixelT", align 1
  %_15 = alloca %"src::lib::CpPixelT", align 1
  %_14 = alloca %"src::lib::CpPixelT", align 1
  %_13 = alloca %"src::lib::CpPixelT", align 1
  %_12 = alloca %"src::lib::CpPixelT", align 1
  %_11 = alloca %"src::lib::CpPixelT", align 1
  %_10 = alloca %"src::lib::CpPixelT", align 1
  %_9 = alloca %"src::lib::CpPixelT", align 1
  %_8 = alloca %"src::lib::CpPixelT", align 1
  %_7 = alloca %"src::lib::CpPixelT", align 1
  %_6 = alloca %"src::lib::CpPixelT", align 1
  %_5 = alloca %"src::lib::CpPixelT", align 1
  %_4 = alloca %"src::lib::CpPixelT", align 1
  %_3 = alloca %"src::lib::CpPixelT", align 1
  %_2 = alloca %"src::lib::CpPixelT", align 1
  %pix = alloca [16 x %"src::lib::CpPixelT"], align 1
  %0 = alloca i8, align 1
  store i8 28, ptr %_2, align 1
  %1 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_2, i32 0, i32 1
  store i8 108, ptr %1, align 1
  %2 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_2, i32 0, i32 2
  store i8 111, ptr %2, align 1
  %3 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_2, i32 0, i32 3
  store i8 -69, ptr %3, align 1
  store i8 -67, ptr %_3, align 1
  %4 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_3, i32 0, i32 1
  store i8 97, ptr %4, align 1
  %5 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_3, i32 0, i32 2
  store i8 64, ptr %5, align 1
  %6 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_3, i32 0, i32 3
  store i8 87, ptr %6, align 1
  store i8 83, ptr %_4, align 1
  %7 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_4, i32 0, i32 1
  store i8 22, ptr %7, align 1
  %8 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_4, i32 0, i32 2
  store i8 -93, ptr %8, align 1
  %9 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_4, i32 0, i32 3
  store i8 1, ptr %9, align 1
  store i8 0, ptr %_5, align 1
  %10 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_5, i32 0, i32 1
  store i8 -98, ptr %10, align 1
  %11 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_5, i32 0, i32 2
  store i8 15, ptr %11, align 1
  %12 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_5, i32 0, i32 3
  store i8 71, ptr %12, align 1
  store i8 -63, ptr %_6, align 1
  %13 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_6, i32 0, i32 1
  store i8 29, ptr %13, align 1
  %14 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_6, i32 0, i32 2
  store i8 46, ptr %14, align 1
  %15 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_6, i32 0, i32 3
  store i8 -46, ptr %15, align 1
  store i8 -54, ptr %_7, align 1
  %16 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_7, i32 0, i32 1
  store i8 -93, ptr %16, align 1
  %17 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_7, i32 0, i32 2
  store i8 -96, ptr %17, align 1
  %18 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_7, i32 0, i32 3
  store i8 59, ptr %18, align 1
  store i8 98, ptr %_8, align 1
  %19 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_8, i32 0, i32 1
  store i8 68, ptr %19, align 1
  %20 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_8, i32 0, i32 2
  store i8 81, ptr %20, align 1
  %21 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_8, i32 0, i32 3
  store i8 -107, ptr %21, align 1
  store i8 -52, ptr %_9, align 1
  %22 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_9, i32 0, i32 1
  store i8 -14, ptr %22, align 1
  %23 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_9, i32 0, i32 2
  store i8 9, ptr %23, align 1
  %24 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_9, i32 0, i32 3
  store i8 65, ptr %24, align 1
  store i8 -117, ptr %_10, align 1
  %25 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_10, i32 0, i32 1
  store i8 119, ptr %25, align 1
  %26 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_10, i32 0, i32 2
  store i8 84, ptr %26, align 1
  %27 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_10, i32 0, i32 3
  store i8 -124, ptr %27, align 1
  store i8 113, ptr %_11, align 1
  %28 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_11, i32 0, i32 1
  store i8 -13, ptr %28, align 1
  %29 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_11, i32 0, i32 2
  store i8 83, ptr %29, align 1
  %30 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_11, i32 0, i32 3
  store i8 -53, ptr %30, align 1
  store i8 -58, ptr %_12, align 1
  %31 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_12, i32 0, i32 1
  store i8 -106, ptr %31, align 1
  %32 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_12, i32 0, i32 2
  store i8 -38, ptr %32, align 1
  %33 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_12, i32 0, i32 3
  store i8 -66, ptr %33, align 1
  store i8 -118, ptr %_13, align 1
  %34 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_13, i32 0, i32 1
  store i8 118, ptr %34, align 1
  %35 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_13, i32 0, i32 2
  store i8 65, ptr %35, align 1
  %36 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_13, i32 0, i32 3
  store i8 91, ptr %36, align 1
  store i8 -50, ptr %_14, align 1
  %37 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_14, i32 0, i32 1
  store i8 36, ptr %37, align 1
  %38 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_14, i32 0, i32 2
  store i8 -57, ptr %38, align 1
  %39 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_14, i32 0, i32 3
  store i8 -17, ptr %39, align 1
  store i8 91, ptr %_15, align 1
  %40 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_15, i32 0, i32 1
  store i8 55, ptr %40, align 1
  %41 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_15, i32 0, i32 2
  store i8 -122, ptr %41, align 1
  %42 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_15, i32 0, i32 3
  store i8 70, ptr %42, align 1
  store i8 -126, ptr %_16, align 1
  %43 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_16, i32 0, i32 1
  store i8 -25, ptr %43, align 1
  %44 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_16, i32 0, i32 2
  store i8 -70, ptr %44, align 1
  %45 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_16, i32 0, i32 3
  store i8 112, ptr %45, align 1
  store i8 -91, ptr %_17, align 1
  %46 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_17, i32 0, i32 1
  store i8 118, ptr %46, align 1
  %47 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_17, i32 0, i32 2
  store i8 -80, ptr %47, align 1
  %48 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_17, i32 0, i32 3
  store i8 111, ptr %48, align 1
  %49 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %49, ptr align 1 %_2, i64 4, i1 false)
  %50 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %50, ptr align 1 %_3, i64 4, i1 false)
  %51 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %51, ptr align 1 %_4, i64 4, i1 false)
  %52 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %52, ptr align 1 %_5, i64 4, i1 false)
  %53 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %53, ptr align 1 %_6, i64 4, i1 false)
  %54 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %54, ptr align 1 %_7, i64 4, i1 false)
  %55 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %55, ptr align 1 %_8, i64 4, i1 false)
  %56 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %56, ptr align 1 %_9, i64 4, i1 false)
  %57 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %57, ptr align 1 %_10, i64 4, i1 false)
  %58 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %58, ptr align 1 %_11, i64 4, i1 false)
  %59 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %59, ptr align 1 %_12, i64 4, i1 false)
  %60 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 11
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %60, ptr align 1 %_13, i64 4, i1 false)
  %61 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %61, ptr align 1 %_14, i64 4, i1 false)
  %62 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %62, ptr align 1 %_15, i64 4, i1 false)
  %63 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 14
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %63, ptr align 1 %_16, i64 4, i1 false)
  %64 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %64, ptr align 1 %_17, i64 4, i1 false)
  store ptr %pix, ptr %self.dbg.spill.i, align 8
  %65 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 16, ptr %65, align 8
  store i32 1, ptr %img, align 8
  %66 = getelementptr inbounds %"src::lib::CpImageT", ptr %img, i32 0, i32 1
  store i32 16, ptr %66, align 4
  %67 = getelementptr inbounds %"src::lib::CpImageT", ptr %img, i32 0, i32 2
  store ptr %pix, ptr %67, align 8
  call void @premultiply(ptr %img)
  store i8 20, ptr %_26, align 1
  %68 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_26, i32 0, i32 1
  store i8 79, ptr %68, align 1
  %69 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_26, i32 0, i32 2
  store i8 81, ptr %69, align 1
  %70 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_26, i32 0, i32 3
  store i8 -69, ptr %70, align 1
  store i8 64, ptr %_27, align 1
  %71 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_27, i32 0, i32 1
  store i8 33, ptr %71, align 1
  %72 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_27, i32 0, i32 2
  store i8 21, ptr %72, align 1
  %73 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_27, i32 0, i32 3
  store i8 87, ptr %73, align 1
  store i8 0, ptr %_28, align 1
  %74 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_28, i32 0, i32 1
  store i8 0, ptr %74, align 1
  %75 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_28, i32 0, i32 2
  store i8 0, ptr %75, align 1
  %76 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_28, i32 0, i32 3
  store i8 1, ptr %76, align 1
  store i8 0, ptr %_29, align 1
  %77 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_29, i32 0, i32 1
  store i8 43, ptr %77, align 1
  %78 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_29, i32 0, i32 2
  store i8 4, ptr %78, align 1
  %79 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_29, i32 0, i32 3
  store i8 71, ptr %79, align 1
  store i8 -98, ptr %_30, align 1
  %80 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_30, i32 0, i32 1
  store i8 23, ptr %80, align 1
  %81 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_30, i32 0, i32 2
  store i8 37, ptr %81, align 1
  %82 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_30, i32 0, i32 3
  store i8 -46, ptr %82, align 1
  store i8 46, ptr %_31, align 1
  %83 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_31, i32 0, i32 1
  store i8 37, ptr %83, align 1
  %84 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_31, i32 0, i32 2
  store i8 37, ptr %84, align 1
  %85 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_31, i32 0, i32 3
  store i8 59, ptr %85, align 1
  store i8 57, ptr %_32, align 1
  %86 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_32, i32 0, i32 1
  store i8 39, ptr %86, align 1
  %87 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_32, i32 0, i32 2
  store i8 47, ptr %87, align 1
  %88 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_32, i32 0, i32 3
  store i8 -107, ptr %88, align 1
  store i8 52, ptr %_33, align 1
  %89 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_33, i32 0, i32 1
  store i8 61, ptr %89, align 1
  %90 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_33, i32 0, i32 2
  store i8 2, ptr %90, align 1
  %91 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_33, i32 0, i32 3
  store i8 65, ptr %91, align 1
  store i8 71, ptr %_34, align 1
  %92 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_34, i32 0, i32 1
  store i8 61, ptr %92, align 1
  %93 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_34, i32 0, i32 2
  store i8 43, ptr %93, align 1
  %94 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_34, i32 0, i32 3
  store i8 -124, ptr %94, align 1
  store i8 89, ptr %_35, align 1
  %95 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_35, i32 0, i32 1
  store i8 -63, ptr %95, align 1
  %96 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_35, i32 0, i32 2
  store i8 66, ptr %96, align 1
  %97 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_35, i32 0, i32 3
  store i8 -53, ptr %97, align 1
  store i8 -109, ptr %_36, align 1
  %98 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_36, i32 0, i32 1
  store i8 111, ptr %98, align 1
  %99 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_36, i32 0, i32 2
  store i8 -94, ptr %99, align 1
  %100 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_36, i32 0, i32 3
  store i8 -66, ptr %100, align 1
  store i8 49, ptr %_37, align 1
  %101 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_37, i32 0, i32 1
  store i8 42, ptr %101, align 1
  %102 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_37, i32 0, i32 2
  store i8 23, ptr %102, align 1
  %103 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_37, i32 0, i32 3
  store i8 91, ptr %103, align 1
  store i8 -63, ptr %_38, align 1
  %104 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_38, i32 0, i32 1
  store i8 33, ptr %104, align 1
  %105 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_38, i32 0, i32 2
  store i8 -70, ptr %105, align 1
  %106 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_38, i32 0, i32 3
  store i8 -17, ptr %106, align 1
  store i8 24, ptr %_39, align 1
  %107 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_39, i32 0, i32 1
  store i8 15, ptr %107, align 1
  %108 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_39, i32 0, i32 2
  store i8 36, ptr %108, align 1
  %109 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_39, i32 0, i32 3
  store i8 70, ptr %109, align 1
  store i8 57, ptr %_40, align 1
  %110 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_40, i32 0, i32 1
  store i8 101, ptr %110, align 1
  %111 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_40, i32 0, i32 2
  store i8 81, ptr %111, align 1
  %112 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_40, i32 0, i32 3
  store i8 112, ptr %112, align 1
  store i8 71, ptr %_41, align 1
  %113 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_41, i32 0, i32 1
  store i8 51, ptr %113, align 1
  %114 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_41, i32 0, i32 2
  store i8 76, ptr %114, align 1
  %115 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_41, i32 0, i32 3
  store i8 111, ptr %115, align 1
  %116 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %116, ptr align 1 %_26, i64 4, i1 false)
  %117 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %117, ptr align 1 %_27, i64 4, i1 false)
  %118 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %118, ptr align 1 %_28, i64 4, i1 false)
  %119 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %119, ptr align 1 %_29, i64 4, i1 false)
  %120 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %120, ptr align 1 %_30, i64 4, i1 false)
  %121 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %121, ptr align 1 %_31, i64 4, i1 false)
  %122 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %122, ptr align 1 %_32, i64 4, i1 false)
  %123 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %123, ptr align 1 %_33, i64 4, i1 false)
  %124 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %124, ptr align 1 %_34, i64 4, i1 false)
  %125 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %125, ptr align 1 %_35, i64 4, i1 false)
  %126 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %126, ptr align 1 %_36, i64 4, i1 false)
  %127 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 11
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %127, ptr align 1 %_37, i64 4, i1 false)
  %128 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %128, ptr align 1 %_38, i64 4, i1 false)
  %129 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %129, ptr align 1 %_39, i64 4, i1 false)
  %130 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 14
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %130, ptr align 1 %_40, i64 4, i1 false)
  %131 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %131, ptr align 1 %_41, i64 4, i1 false)
  store i64 0, ptr %_43, align 8
  %132 = getelementptr inbounds { i64, i64 }, ptr %_43, i32 0, i32 1
  store i64 16, ptr %132, align 8
  %133 = getelementptr inbounds { i64, i64 }, ptr %_43, i32 0, i32 0
  %134 = load i64, ptr %133, align 8, !noundef !4
  %135 = getelementptr inbounds { i64, i64 }, ptr %_43, i32 0, i32 1
  %136 = load i64, ptr %135, align 8, !noundef !4
  %137 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf87fecd95e1ff0c9E"(i64 %134, i64 %136)
  %_42.0 = extractvalue { i64, i64 } %137, 0
  %_42.1 = extractvalue { i64, i64 } %137, 1
  %138 = getelementptr inbounds { i64, i64 }, ptr %iter, i32 0, i32 0
  store i64 %_42.0, ptr %138, align 8
  %139 = getelementptr inbounds { i64, i64 }, ptr %iter, i32 0, i32 1
  store i64 %_42.1, ptr %139, align 8
  br label %bb4

bb4:                                              ; preds = %bb11, %start
  %140 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h59cd51c5e9b016b3E"(ptr align 8 %iter)
  store { i64, i64 } %140, ptr %_45, align 8
  %_47 = load i64, ptr %_45, align 8, !range !6, !noundef !4
  %141 = icmp eq i64 %_47, 0
  br i1 %141, label %bb8, label %bb6

bb8:                                              ; preds = %bb4
  store i8 1, ptr %0, align 1
  br label %bb27

bb6:                                              ; preds = %bb4
  %142 = getelementptr inbounds { i64, i64 }, ptr %_45, i32 0, i32 1
  %i = load i64, ptr %142, align 8, !noundef !4
  store i64 %i, ptr %i.dbg.spill, align 8
  %_55 = icmp ult i64 %i, 16
  %143 = call i1 @llvm.expect.i1(i1 %_55, i1 true)
  br i1 %143, label %bb18, label %panic

bb7:                                              ; No predecessors!
  unreachable

bb18:                                             ; preds = %bb6
  %144 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 %i
  %_53 = load i8, ptr %144, align 1, !noundef !4
  %_58 = icmp ult i64 %i, 16
  %145 = call i1 @llvm.expect.i1(i1 %_58, i1 true)
  br i1 %145, label %bb19, label %panic1

panic:                                            ; preds = %bb6
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_3cf959b0ea5361dc8b5177051e7320a6) #7
  unreachable

bb19:                                             ; preds = %bb18
  %146 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 %i
  %_56 = load i8, ptr %146, align 1, !noundef !4
  %_52 = icmp ne i8 %_53, %_56
  br i1 %_52, label %bb15, label %bb16

panic1:                                           ; preds = %bb18
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_51cb85fc076b05dc5a5e1f5cc9fa5691) #7
  unreachable

bb16:                                             ; preds = %bb19
  %_62 = icmp ult i64 %i, 16
  %147 = call i1 @llvm.expect.i1(i1 %_62, i1 true)
  br i1 %147, label %bb20, label %panic2

bb15:                                             ; preds = %bb19
  store i8 1, ptr %_51, align 1
  br label %bb17

bb17:                                             ; preds = %bb21, %bb15
  %148 = load i8, ptr %_51, align 1, !range !7, !noundef !4
  %149 = trunc i8 %148 to i1
  br i1 %149, label %bb12, label %bb13

bb20:                                             ; preds = %bb16
  %150 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 %i
  %151 = getelementptr inbounds %"src::lib::CpPixelT", ptr %150, i32 0, i32 1
  %_60 = load i8, ptr %151, align 1, !noundef !4
  %_65 = icmp ult i64 %i, 16
  %152 = call i1 @llvm.expect.i1(i1 %_65, i1 true)
  br i1 %152, label %bb21, label %panic3

panic2:                                           ; preds = %bb16
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_81ef93fee321da821152043cad6a8710) #7
  unreachable

bb21:                                             ; preds = %bb20
  %153 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 %i
  %154 = getelementptr inbounds %"src::lib::CpPixelT", ptr %153, i32 0, i32 1
  %_63 = load i8, ptr %154, align 1, !noundef !4
  %_59 = icmp ne i8 %_60, %_63
  %155 = zext i1 %_59 to i8
  store i8 %155, ptr %_51, align 1
  br label %bb17

panic3:                                           ; preds = %bb20
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_3d65f73375e163ff5d8256aa1aae675a) #7
  unreachable

bb13:                                             ; preds = %bb17
  %_69 = icmp ult i64 %i, 16
  %156 = call i1 @llvm.expect.i1(i1 %_69, i1 true)
  br i1 %156, label %bb22, label %panic4

bb12:                                             ; preds = %bb17
  store i8 1, ptr %_50, align 1
  br label %bb14

bb14:                                             ; preds = %bb23, %bb12
  %157 = load i8, ptr %_50, align 1, !range !7, !noundef !4
  %158 = trunc i8 %157 to i1
  br i1 %158, label %bb9, label %bb10

bb22:                                             ; preds = %bb13
  %159 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 %i
  %160 = getelementptr inbounds %"src::lib::CpPixelT", ptr %159, i32 0, i32 2
  %_67 = load i8, ptr %160, align 1, !noundef !4
  %_72 = icmp ult i64 %i, 16
  %161 = call i1 @llvm.expect.i1(i1 %_72, i1 true)
  br i1 %161, label %bb23, label %panic5

panic4:                                           ; preds = %bb13
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_b30cc6e547c277102627963f28b05c9c) #7
  unreachable

bb23:                                             ; preds = %bb22
  %162 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 %i
  %163 = getelementptr inbounds %"src::lib::CpPixelT", ptr %162, i32 0, i32 2
  %_70 = load i8, ptr %163, align 1, !noundef !4
  %_66 = icmp ne i8 %_67, %_70
  %164 = zext i1 %_66 to i8
  store i8 %164, ptr %_50, align 1
  br label %bb14

panic5:                                           ; preds = %bb22
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_93177b6f2fe03ef428dec5abaad4670d) #7
  unreachable

bb10:                                             ; preds = %bb14
  %_76 = icmp ult i64 %i, 16
  %165 = call i1 @llvm.expect.i1(i1 %_76, i1 true)
  br i1 %165, label %bb24, label %panic6

bb9:                                              ; preds = %bb14
  store i8 1, ptr %_49, align 1
  br label %bb11

bb11:                                             ; preds = %bb25, %bb9
  %166 = load i8, ptr %_49, align 1, !range !7, !noundef !4
  %167 = trunc i8 %166 to i1
  br i1 %167, label %bb26, label %bb4

bb24:                                             ; preds = %bb10
  %168 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 %i
  %169 = getelementptr inbounds %"src::lib::CpPixelT", ptr %168, i32 0, i32 3
  %_74 = load i8, ptr %169, align 1, !noundef !4
  %_79 = icmp ult i64 %i, 16
  %170 = call i1 @llvm.expect.i1(i1 %_79, i1 true)
  br i1 %170, label %bb25, label %panic7

panic6:                                           ; preds = %bb10
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_299e0e474f08b6f5a23123b60a555092) #7
  unreachable

bb25:                                             ; preds = %bb24
  %171 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 %i
  %172 = getelementptr inbounds %"src::lib::CpPixelT", ptr %171, i32 0, i32 3
  %_77 = load i8, ptr %172, align 1, !noundef !4
  %_73 = icmp ne i8 %_74, %_77
  %173 = zext i1 %_73 to i8
  store i8 %173, ptr %_49, align 1
  br label %bb11

panic7:                                           ; preds = %bb24
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_bccb1c7bd378c0d65c16cbbb6d2d16c6) #7
  unreachable

bb26:                                             ; preds = %bb11
  store i8 0, ptr %0, align 1
  br label %bb27

bb27:                                             ; preds = %bb26, %bb8
  %174 = load i8, ptr %0, align 1, !range !7, !noundef !4
  %175 = trunc i8 %174 to i1
  ret i1 %175
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_4() unnamed_addr #0 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %i.dbg.spill = alloca i64, align 8
  %_51 = alloca i8, align 1
  %_50 = alloca i8, align 1
  %_49 = alloca i8, align 1
  %_45 = alloca { i64, i64 }, align 8
  %iter = alloca { i64, i64 }, align 8
  %_43 = alloca { i64, i64 }, align 8
  %_41 = alloca %"src::lib::CpPixelT", align 1
  %_40 = alloca %"src::lib::CpPixelT", align 1
  %_39 = alloca %"src::lib::CpPixelT", align 1
  %_38 = alloca %"src::lib::CpPixelT", align 1
  %_37 = alloca %"src::lib::CpPixelT", align 1
  %_36 = alloca %"src::lib::CpPixelT", align 1
  %_35 = alloca %"src::lib::CpPixelT", align 1
  %_34 = alloca %"src::lib::CpPixelT", align 1
  %_33 = alloca %"src::lib::CpPixelT", align 1
  %_32 = alloca %"src::lib::CpPixelT", align 1
  %_31 = alloca %"src::lib::CpPixelT", align 1
  %_30 = alloca %"src::lib::CpPixelT", align 1
  %_29 = alloca %"src::lib::CpPixelT", align 1
  %_28 = alloca %"src::lib::CpPixelT", align 1
  %_27 = alloca %"src::lib::CpPixelT", align 1
  %_26 = alloca %"src::lib::CpPixelT", align 1
  %expected = alloca [16 x %"src::lib::CpPixelT"], align 1
  %img = alloca %"src::lib::CpImageT", align 8
  %_17 = alloca %"src::lib::CpPixelT", align 1
  %_16 = alloca %"src::lib::CpPixelT", align 1
  %_15 = alloca %"src::lib::CpPixelT", align 1
  %_14 = alloca %"src::lib::CpPixelT", align 1
  %_13 = alloca %"src::lib::CpPixelT", align 1
  %_12 = alloca %"src::lib::CpPixelT", align 1
  %_11 = alloca %"src::lib::CpPixelT", align 1
  %_10 = alloca %"src::lib::CpPixelT", align 1
  %_9 = alloca %"src::lib::CpPixelT", align 1
  %_8 = alloca %"src::lib::CpPixelT", align 1
  %_7 = alloca %"src::lib::CpPixelT", align 1
  %_6 = alloca %"src::lib::CpPixelT", align 1
  %_5 = alloca %"src::lib::CpPixelT", align 1
  %_4 = alloca %"src::lib::CpPixelT", align 1
  %_3 = alloca %"src::lib::CpPixelT", align 1
  %_2 = alloca %"src::lib::CpPixelT", align 1
  %pix = alloca [16 x %"src::lib::CpPixelT"], align 1
  %0 = alloca i8, align 1
  store i8 -100, ptr %_2, align 1
  %1 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_2, i32 0, i32 1
  store i8 76, ptr %1, align 1
  %2 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_2, i32 0, i32 2
  store i8 -64, ptr %2, align 1
  %3 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_2, i32 0, i32 3
  store i8 10, ptr %3, align 1
  store i8 29, ptr %_3, align 1
  %4 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_3, i32 0, i32 1
  store i8 -33, ptr %4, align 1
  %5 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_3, i32 0, i32 2
  store i8 26, ptr %5, align 1
  %6 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_3, i32 0, i32 3
  store i8 -36, ptr %6, align 1
  store i8 41, ptr %_4, align 1
  %7 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_4, i32 0, i32 1
  store i8 -86, ptr %7, align 1
  %8 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_4, i32 0, i32 2
  store i8 -69, ptr %8, align 1
  %9 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_4, i32 0, i32 3
  store i8 -38, ptr %9, align 1
  store i8 7, ptr %_5, align 1
  %10 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_5, i32 0, i32 1
  store i8 -60, ptr %10, align 1
  %11 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_5, i32 0, i32 2
  store i8 80, ptr %11, align 1
  %12 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_5, i32 0, i32 3
  store i8 36, ptr %12, align 1
  store i8 -24, ptr %_6, align 1
  %13 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_6, i32 0, i32 1
  store i8 -79, ptr %13, align 1
  %14 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_6, i32 0, i32 2
  store i8 109, ptr %14, align 1
  %15 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_6, i32 0, i32 3
  store i8 -24, ptr %15, align 1
  store i8 -15, ptr %_7, align 1
  %16 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_7, i32 0, i32 1
  store i8 117, ptr %16, align 1
  %17 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_7, i32 0, i32 2
  store i8 71, ptr %17, align 1
  %18 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_7, i32 0, i32 3
  store i8 66, ptr %18, align 1
  store i8 120, ptr %_8, align 1
  %19 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_8, i32 0, i32 1
  store i8 62, ptr %19, align 1
  %20 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_8, i32 0, i32 2
  store i8 -1, ptr %20, align 1
  %21 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_8, i32 0, i32 3
  store i8 -84, ptr %21, align 1
  store i8 32, ptr %_9, align 1
  %22 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_9, i32 0, i32 1
  store i8 -19, ptr %22, align 1
  %23 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_9, i32 0, i32 2
  store i8 62, ptr %23, align 1
  %24 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_9, i32 0, i32 3
  store i8 -83, ptr %24, align 1
  store i8 -57, ptr %_10, align 1
  %25 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_10, i32 0, i32 1
  store i8 -73, ptr %25, align 1
  %26 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_10, i32 0, i32 2
  store i8 58, ptr %26, align 1
  %27 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_10, i32 0, i32 3
  store i8 -102, ptr %27, align 1
  store i8 54, ptr %_11, align 1
  %28 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_11, i32 0, i32 1
  store i8 26, ptr %28, align 1
  %29 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_11, i32 0, i32 2
  store i8 89, ptr %29, align 1
  %30 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_11, i32 0, i32 3
  store i8 13, ptr %30, align 1
  store i8 -46, ptr %_12, align 1
  %31 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_12, i32 0, i32 1
  store i8 4, ptr %31, align 1
  %32 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_12, i32 0, i32 2
  store i8 123, ptr %32, align 1
  %33 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_12, i32 0, i32 3
  store i8 84, ptr %33, align 1
  store i8 106, ptr %_13, align 1
  %34 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_13, i32 0, i32 1
  store i8 -81, ptr %34, align 1
  %35 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_13, i32 0, i32 2
  store i8 4, ptr %35, align 1
  %36 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_13, i32 0, i32 3
  store i8 74, ptr %36, align 1
  store i8 -109, ptr %_14, align 1
  %37 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_14, i32 0, i32 1
  store i8 -57, ptr %37, align 1
  %38 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_14, i32 0, i32 2
  store i8 -128, ptr %38, align 1
  %39 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_14, i32 0, i32 3
  store i8 18, ptr %39, align 1
  store i8 51, ptr %_15, align 1
  %40 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_15, i32 0, i32 1
  store i8 -98, ptr %40, align 1
  %41 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_15, i32 0, i32 2
  store i8 55, ptr %41, align 1
  %42 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_15, i32 0, i32 3
  store i8 -65, ptr %42, align 1
  store i8 60, ptr %_16, align 1
  %43 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_16, i32 0, i32 1
  store i8 -128, ptr %43, align 1
  %44 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_16, i32 0, i32 2
  store i8 102, ptr %44, align 1
  %45 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_16, i32 0, i32 3
  store i8 27, ptr %45, align 1
  store i8 -126, ptr %_17, align 1
  %46 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_17, i32 0, i32 1
  store i8 125, ptr %46, align 1
  %47 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_17, i32 0, i32 2
  store i8 -85, ptr %47, align 1
  %48 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_17, i32 0, i32 3
  store i8 63, ptr %48, align 1
  %49 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %49, ptr align 1 %_2, i64 4, i1 false)
  %50 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %50, ptr align 1 %_3, i64 4, i1 false)
  %51 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %51, ptr align 1 %_4, i64 4, i1 false)
  %52 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %52, ptr align 1 %_5, i64 4, i1 false)
  %53 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %53, ptr align 1 %_6, i64 4, i1 false)
  %54 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %54, ptr align 1 %_7, i64 4, i1 false)
  %55 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %55, ptr align 1 %_8, i64 4, i1 false)
  %56 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %56, ptr align 1 %_9, i64 4, i1 false)
  %57 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %57, ptr align 1 %_10, i64 4, i1 false)
  %58 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %58, ptr align 1 %_11, i64 4, i1 false)
  %59 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %59, ptr align 1 %_12, i64 4, i1 false)
  %60 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 11
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %60, ptr align 1 %_13, i64 4, i1 false)
  %61 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %61, ptr align 1 %_14, i64 4, i1 false)
  %62 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %62, ptr align 1 %_15, i64 4, i1 false)
  %63 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 14
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %63, ptr align 1 %_16, i64 4, i1 false)
  %64 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %64, ptr align 1 %_17, i64 4, i1 false)
  store ptr %pix, ptr %self.dbg.spill.i, align 8
  %65 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 16, ptr %65, align 8
  store i32 8, ptr %img, align 8
  %66 = getelementptr inbounds %"src::lib::CpImageT", ptr %img, i32 0, i32 1
  store i32 2, ptr %66, align 4
  %67 = getelementptr inbounds %"src::lib::CpImageT", ptr %img, i32 0, i32 2
  store ptr %pix, ptr %67, align 8
  call void @premultiply(ptr %img)
  store i8 6, ptr %_26, align 1
  %68 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_26, i32 0, i32 1
  store i8 2, ptr %68, align 1
  %69 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_26, i32 0, i32 2
  store i8 7, ptr %69, align 1
  %70 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_26, i32 0, i32 3
  store i8 10, ptr %70, align 1
  store i8 25, ptr %_27, align 1
  %71 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_27, i32 0, i32 1
  store i8 -64, ptr %71, align 1
  %72 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_27, i32 0, i32 2
  store i8 22, ptr %72, align 1
  %73 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_27, i32 0, i32 3
  store i8 -36, ptr %73, align 1
  store i8 35, ptr %_28, align 1
  %74 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_28, i32 0, i32 1
  store i8 -111, ptr %74, align 1
  %75 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_28, i32 0, i32 2
  store i8 -97, ptr %75, align 1
  %76 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_28, i32 0, i32 3
  store i8 -38, ptr %76, align 1
  store i8 0, ptr %_29, align 1
  %77 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_29, i32 0, i32 1
  store i8 27, ptr %77, align 1
  %78 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_29, i32 0, i32 2
  store i8 11, ptr %78, align 1
  %79 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_29, i32 0, i32 3
  store i8 36, ptr %79, align 1
  store i8 -45, ptr %_30, align 1
  %80 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_30, i32 0, i32 1
  store i8 -95, ptr %80, align 1
  %81 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_30, i32 0, i32 2
  store i8 99, ptr %81, align 1
  %82 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_30, i32 0, i32 3
  store i8 -24, ptr %82, align 1
  store i8 62, ptr %_31, align 1
  %83 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_31, i32 0, i32 1
  store i8 30, ptr %83, align 1
  %84 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_31, i32 0, i32 2
  store i8 18, ptr %84, align 1
  %85 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_31, i32 0, i32 3
  store i8 66, ptr %85, align 1
  store i8 80, ptr %_32, align 1
  %86 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_32, i32 0, i32 1
  store i8 41, ptr %86, align 1
  %87 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_32, i32 0, i32 2
  store i8 -84, ptr %87, align 1
  %88 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_32, i32 0, i32 3
  store i8 -84, ptr %88, align 1
  store i8 21, ptr %_33, align 1
  %89 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_33, i32 0, i32 1
  store i8 -96, ptr %89, align 1
  %90 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_33, i32 0, i32 2
  store i8 42, ptr %90, align 1
  %91 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_33, i32 0, i32 3
  store i8 -83, ptr %91, align 1
  store i8 120, ptr %_34, align 1
  %92 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_34, i32 0, i32 1
  store i8 110, ptr %92, align 1
  %93 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_34, i32 0, i32 2
  store i8 35, ptr %93, align 1
  %94 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_34, i32 0, i32 3
  store i8 -102, ptr %94, align 1
  store i8 2, ptr %_35, align 1
  %95 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_35, i32 0, i32 1
  store i8 1, ptr %95, align 1
  %96 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_35, i32 0, i32 2
  store i8 4, ptr %96, align 1
  %97 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_35, i32 0, i32 3
  store i8 13, ptr %97, align 1
  store i8 69, ptr %_36, align 1
  %98 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_36, i32 0, i32 1
  store i8 1, ptr %98, align 1
  %99 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_36, i32 0, i32 2
  store i8 40, ptr %99, align 1
  %100 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_36, i32 0, i32 3
  store i8 84, ptr %100, align 1
  store i8 30, ptr %_37, align 1
  %101 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_37, i32 0, i32 1
  store i8 50, ptr %101, align 1
  %102 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_37, i32 0, i32 2
  store i8 1, ptr %102, align 1
  %103 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_37, i32 0, i32 3
  store i8 74, ptr %103, align 1
  store i8 10, ptr %_38, align 1
  %104 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_38, i32 0, i32 1
  store i8 14, ptr %104, align 1
  %105 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_38, i32 0, i32 2
  store i8 9, ptr %105, align 1
  %106 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_38, i32 0, i32 3
  store i8 18, ptr %106, align 1
  store i8 38, ptr %_39, align 1
  %107 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_39, i32 0, i32 1
  store i8 118, ptr %107, align 1
  %108 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_39, i32 0, i32 2
  store i8 41, ptr %108, align 1
  %109 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_39, i32 0, i32 3
  store i8 -65, ptr %109, align 1
  store i8 6, ptr %_40, align 1
  %110 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_40, i32 0, i32 1
  store i8 13, ptr %110, align 1
  %111 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_40, i32 0, i32 2
  store i8 10, ptr %111, align 1
  %112 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_40, i32 0, i32 3
  store i8 27, ptr %112, align 1
  store i8 32, ptr %_41, align 1
  %113 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_41, i32 0, i32 1
  store i8 30, ptr %113, align 1
  %114 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_41, i32 0, i32 2
  store i8 42, ptr %114, align 1
  %115 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_41, i32 0, i32 3
  store i8 63, ptr %115, align 1
  %116 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %116, ptr align 1 %_26, i64 4, i1 false)
  %117 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %117, ptr align 1 %_27, i64 4, i1 false)
  %118 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %118, ptr align 1 %_28, i64 4, i1 false)
  %119 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %119, ptr align 1 %_29, i64 4, i1 false)
  %120 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %120, ptr align 1 %_30, i64 4, i1 false)
  %121 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %121, ptr align 1 %_31, i64 4, i1 false)
  %122 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %122, ptr align 1 %_32, i64 4, i1 false)
  %123 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %123, ptr align 1 %_33, i64 4, i1 false)
  %124 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %124, ptr align 1 %_34, i64 4, i1 false)
  %125 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %125, ptr align 1 %_35, i64 4, i1 false)
  %126 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %126, ptr align 1 %_36, i64 4, i1 false)
  %127 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 11
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %127, ptr align 1 %_37, i64 4, i1 false)
  %128 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %128, ptr align 1 %_38, i64 4, i1 false)
  %129 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %129, ptr align 1 %_39, i64 4, i1 false)
  %130 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 14
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %130, ptr align 1 %_40, i64 4, i1 false)
  %131 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %131, ptr align 1 %_41, i64 4, i1 false)
  store i64 0, ptr %_43, align 8
  %132 = getelementptr inbounds { i64, i64 }, ptr %_43, i32 0, i32 1
  store i64 16, ptr %132, align 8
  %133 = getelementptr inbounds { i64, i64 }, ptr %_43, i32 0, i32 0
  %134 = load i64, ptr %133, align 8, !noundef !4
  %135 = getelementptr inbounds { i64, i64 }, ptr %_43, i32 0, i32 1
  %136 = load i64, ptr %135, align 8, !noundef !4
  %137 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf87fecd95e1ff0c9E"(i64 %134, i64 %136)
  %_42.0 = extractvalue { i64, i64 } %137, 0
  %_42.1 = extractvalue { i64, i64 } %137, 1
  %138 = getelementptr inbounds { i64, i64 }, ptr %iter, i32 0, i32 0
  store i64 %_42.0, ptr %138, align 8
  %139 = getelementptr inbounds { i64, i64 }, ptr %iter, i32 0, i32 1
  store i64 %_42.1, ptr %139, align 8
  br label %bb4

bb4:                                              ; preds = %bb11, %start
  %140 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h59cd51c5e9b016b3E"(ptr align 8 %iter)
  store { i64, i64 } %140, ptr %_45, align 8
  %_47 = load i64, ptr %_45, align 8, !range !6, !noundef !4
  %141 = icmp eq i64 %_47, 0
  br i1 %141, label %bb8, label %bb6

bb8:                                              ; preds = %bb4
  store i8 1, ptr %0, align 1
  br label %bb27

bb6:                                              ; preds = %bb4
  %142 = getelementptr inbounds { i64, i64 }, ptr %_45, i32 0, i32 1
  %i = load i64, ptr %142, align 8, !noundef !4
  store i64 %i, ptr %i.dbg.spill, align 8
  %_55 = icmp ult i64 %i, 16
  %143 = call i1 @llvm.expect.i1(i1 %_55, i1 true)
  br i1 %143, label %bb18, label %panic

bb7:                                              ; No predecessors!
  unreachable

bb18:                                             ; preds = %bb6
  %144 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 %i
  %_53 = load i8, ptr %144, align 1, !noundef !4
  %_58 = icmp ult i64 %i, 16
  %145 = call i1 @llvm.expect.i1(i1 %_58, i1 true)
  br i1 %145, label %bb19, label %panic1

panic:                                            ; preds = %bb6
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_f1f5e9793497948e672fac2a06b99d7f) #7
  unreachable

bb19:                                             ; preds = %bb18
  %146 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 %i
  %_56 = load i8, ptr %146, align 1, !noundef !4
  %_52 = icmp ne i8 %_53, %_56
  br i1 %_52, label %bb15, label %bb16

panic1:                                           ; preds = %bb18
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_a65614a8bb8c6e7c2a8f0322c7cb4301) #7
  unreachable

bb16:                                             ; preds = %bb19
  %_62 = icmp ult i64 %i, 16
  %147 = call i1 @llvm.expect.i1(i1 %_62, i1 true)
  br i1 %147, label %bb20, label %panic2

bb15:                                             ; preds = %bb19
  store i8 1, ptr %_51, align 1
  br label %bb17

bb17:                                             ; preds = %bb21, %bb15
  %148 = load i8, ptr %_51, align 1, !range !7, !noundef !4
  %149 = trunc i8 %148 to i1
  br i1 %149, label %bb12, label %bb13

bb20:                                             ; preds = %bb16
  %150 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 %i
  %151 = getelementptr inbounds %"src::lib::CpPixelT", ptr %150, i32 0, i32 1
  %_60 = load i8, ptr %151, align 1, !noundef !4
  %_65 = icmp ult i64 %i, 16
  %152 = call i1 @llvm.expect.i1(i1 %_65, i1 true)
  br i1 %152, label %bb21, label %panic3

panic2:                                           ; preds = %bb16
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_e946fa969c979f6f6cf1fb9ba7b852d3) #7
  unreachable

bb21:                                             ; preds = %bb20
  %153 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 %i
  %154 = getelementptr inbounds %"src::lib::CpPixelT", ptr %153, i32 0, i32 1
  %_63 = load i8, ptr %154, align 1, !noundef !4
  %_59 = icmp ne i8 %_60, %_63
  %155 = zext i1 %_59 to i8
  store i8 %155, ptr %_51, align 1
  br label %bb17

panic3:                                           ; preds = %bb20
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_192898d30ed523121a0d4ab2b2c10641) #7
  unreachable

bb13:                                             ; preds = %bb17
  %_69 = icmp ult i64 %i, 16
  %156 = call i1 @llvm.expect.i1(i1 %_69, i1 true)
  br i1 %156, label %bb22, label %panic4

bb12:                                             ; preds = %bb17
  store i8 1, ptr %_50, align 1
  br label %bb14

bb14:                                             ; preds = %bb23, %bb12
  %157 = load i8, ptr %_50, align 1, !range !7, !noundef !4
  %158 = trunc i8 %157 to i1
  br i1 %158, label %bb9, label %bb10

bb22:                                             ; preds = %bb13
  %159 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 %i
  %160 = getelementptr inbounds %"src::lib::CpPixelT", ptr %159, i32 0, i32 2
  %_67 = load i8, ptr %160, align 1, !noundef !4
  %_72 = icmp ult i64 %i, 16
  %161 = call i1 @llvm.expect.i1(i1 %_72, i1 true)
  br i1 %161, label %bb23, label %panic5

panic4:                                           ; preds = %bb13
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_bcfb60e9c4a941ba51d009efa0a4cee5) #7
  unreachable

bb23:                                             ; preds = %bb22
  %162 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 %i
  %163 = getelementptr inbounds %"src::lib::CpPixelT", ptr %162, i32 0, i32 2
  %_70 = load i8, ptr %163, align 1, !noundef !4
  %_66 = icmp ne i8 %_67, %_70
  %164 = zext i1 %_66 to i8
  store i8 %164, ptr %_50, align 1
  br label %bb14

panic5:                                           ; preds = %bb22
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_2ee7a3f056262abf7f8ec81937315b9a) #7
  unreachable

bb10:                                             ; preds = %bb14
  %_76 = icmp ult i64 %i, 16
  %165 = call i1 @llvm.expect.i1(i1 %_76, i1 true)
  br i1 %165, label %bb24, label %panic6

bb9:                                              ; preds = %bb14
  store i8 1, ptr %_49, align 1
  br label %bb11

bb11:                                             ; preds = %bb25, %bb9
  %166 = load i8, ptr %_49, align 1, !range !7, !noundef !4
  %167 = trunc i8 %166 to i1
  br i1 %167, label %bb26, label %bb4

bb24:                                             ; preds = %bb10
  %168 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 %i
  %169 = getelementptr inbounds %"src::lib::CpPixelT", ptr %168, i32 0, i32 3
  %_74 = load i8, ptr %169, align 1, !noundef !4
  %_79 = icmp ult i64 %i, 16
  %170 = call i1 @llvm.expect.i1(i1 %_79, i1 true)
  br i1 %170, label %bb25, label %panic7

panic6:                                           ; preds = %bb10
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_bf2a50044d5cf05ef19e74e862762a46) #7
  unreachable

bb25:                                             ; preds = %bb24
  %171 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 %i
  %172 = getelementptr inbounds %"src::lib::CpPixelT", ptr %171, i32 0, i32 3
  %_77 = load i8, ptr %172, align 1, !noundef !4
  %_73 = icmp ne i8 %_74, %_77
  %173 = zext i1 %_73 to i8
  store i8 %173, ptr %_49, align 1
  br label %bb11

panic7:                                           ; preds = %bb24
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_b7e61dd62f70e34e4df48c558359127b) #7
  unreachable

bb26:                                             ; preds = %bb11
  store i8 0, ptr %0, align 1
  br label %bb27

bb27:                                             ; preds = %bb26, %bb8
  %174 = load i8, ptr %0, align 1, !range !7, !noundef !4
  %175 = trunc i8 %174 to i1
  ret i1 %175
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_5() unnamed_addr #0 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %i.dbg.spill = alloca i64, align 8
  %_51 = alloca i8, align 1
  %_50 = alloca i8, align 1
  %_49 = alloca i8, align 1
  %_45 = alloca { i64, i64 }, align 8
  %iter = alloca { i64, i64 }, align 8
  %_43 = alloca { i64, i64 }, align 8
  %_41 = alloca %"src::lib::CpPixelT", align 1
  %_40 = alloca %"src::lib::CpPixelT", align 1
  %_39 = alloca %"src::lib::CpPixelT", align 1
  %_38 = alloca %"src::lib::CpPixelT", align 1
  %_37 = alloca %"src::lib::CpPixelT", align 1
  %_36 = alloca %"src::lib::CpPixelT", align 1
  %_35 = alloca %"src::lib::CpPixelT", align 1
  %_34 = alloca %"src::lib::CpPixelT", align 1
  %_33 = alloca %"src::lib::CpPixelT", align 1
  %_32 = alloca %"src::lib::CpPixelT", align 1
  %_31 = alloca %"src::lib::CpPixelT", align 1
  %_30 = alloca %"src::lib::CpPixelT", align 1
  %_29 = alloca %"src::lib::CpPixelT", align 1
  %_28 = alloca %"src::lib::CpPixelT", align 1
  %_27 = alloca %"src::lib::CpPixelT", align 1
  %_26 = alloca %"src::lib::CpPixelT", align 1
  %expected = alloca [16 x %"src::lib::CpPixelT"], align 1
  %img = alloca %"src::lib::CpImageT", align 8
  %_17 = alloca %"src::lib::CpPixelT", align 1
  %_16 = alloca %"src::lib::CpPixelT", align 1
  %_15 = alloca %"src::lib::CpPixelT", align 1
  %_14 = alloca %"src::lib::CpPixelT", align 1
  %_13 = alloca %"src::lib::CpPixelT", align 1
  %_12 = alloca %"src::lib::CpPixelT", align 1
  %_11 = alloca %"src::lib::CpPixelT", align 1
  %_10 = alloca %"src::lib::CpPixelT", align 1
  %_9 = alloca %"src::lib::CpPixelT", align 1
  %_8 = alloca %"src::lib::CpPixelT", align 1
  %_7 = alloca %"src::lib::CpPixelT", align 1
  %_6 = alloca %"src::lib::CpPixelT", align 1
  %_5 = alloca %"src::lib::CpPixelT", align 1
  %_4 = alloca %"src::lib::CpPixelT", align 1
  %_3 = alloca %"src::lib::CpPixelT", align 1
  %_2 = alloca %"src::lib::CpPixelT", align 1
  %pix = alloca [16 x %"src::lib::CpPixelT"], align 1
  %0 = alloca i8, align 1
  store i8 -58, ptr %_2, align 1
  %1 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_2, i32 0, i32 1
  store i8 100, ptr %1, align 1
  %2 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_2, i32 0, i32 2
  store i8 47, ptr %2, align 1
  %3 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_2, i32 0, i32 3
  store i8 -18, ptr %3, align 1
  store i8 51, ptr %_3, align 1
  %4 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_3, i32 0, i32 1
  store i8 -73, ptr %4, align 1
  %5 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_3, i32 0, i32 2
  store i8 -74, ptr %5, align 1
  %6 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_3, i32 0, i32 3
  store i8 -3, ptr %6, align 1
  store i8 102, ptr %_4, align 1
  %7 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_4, i32 0, i32 1
  store i8 -68, ptr %7, align 1
  %8 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_4, i32 0, i32 2
  store i8 34, ptr %8, align 1
  %9 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_4, i32 0, i32 3
  store i8 39, ptr %9, align 1
  store i8 44, ptr %_5, align 1
  %10 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_5, i32 0, i32 1
  store i8 60, ptr %10, align 1
  %11 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_5, i32 0, i32 2
  store i8 9, ptr %11, align 1
  %12 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_5, i32 0, i32 3
  store i8 42, ptr %12, align 1
  store i8 -64, ptr %_6, align 1
  %13 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_6, i32 0, i32 1
  store i8 68, ptr %13, align 1
  %14 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_6, i32 0, i32 2
  store i8 12, ptr %14, align 1
  %15 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_6, i32 0, i32 3
  store i8 -57, ptr %15, align 1
  store i8 14, ptr %_7, align 1
  %16 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_7, i32 0, i32 1
  store i8 -115, ptr %16, align 1
  %17 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_7, i32 0, i32 2
  store i8 109, ptr %17, align 1
  %18 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_7, i32 0, i32 3
  store i8 -44, ptr %18, align 1
  store i8 46, ptr %_8, align 1
  %19 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_8, i32 0, i32 1
  store i8 75, ptr %19, align 1
  %20 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_8, i32 0, i32 2
  store i8 63, ptr %20, align 1
  %21 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_8, i32 0, i32 3
  store i8 -96, ptr %21, align 1
  store i8 -93, ptr %_9, align 1
  %22 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_9, i32 0, i32 1
  store i8 77, ptr %22, align 1
  %23 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_9, i32 0, i32 2
  store i8 67, ptr %23, align 1
  %24 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_9, i32 0, i32 3
  store i8 -14, ptr %24, align 1
  store i8 -13, ptr %_10, align 1
  %25 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_10, i32 0, i32 1
  store i8 124, ptr %25, align 1
  %26 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_10, i32 0, i32 2
  store i8 -102, ptr %26, align 1
  %27 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_10, i32 0, i32 3
  store i8 -1, ptr %27, align 1
  store i8 72, ptr %_11, align 1
  %28 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_11, i32 0, i32 1
  store i8 -31, ptr %28, align 1
  %29 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_11, i32 0, i32 2
  store i8 -128, ptr %29, align 1
  %30 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_11, i32 0, i32 3
  store i8 -17, ptr %30, align 1
  store i8 -19, ptr %_12, align 1
  %31 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_12, i32 0, i32 1
  store i8 -99, ptr %31, align 1
  %32 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_12, i32 0, i32 2
  store i8 43, ptr %32, align 1
  %33 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_12, i32 0, i32 3
  store i8 85, ptr %33, align 1
  store i8 -86, ptr %_13, align 1
  %34 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_13, i32 0, i32 1
  store i8 64, ptr %34, align 1
  %35 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_13, i32 0, i32 2
  store i8 -38, ptr %35, align 1
  %36 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_13, i32 0, i32 3
  store i8 -123, ptr %36, align 1
  store i8 -109, ptr %_14, align 1
  %37 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_14, i32 0, i32 1
  store i8 25, ptr %37, align 1
  %38 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_14, i32 0, i32 2
  store i8 16, ptr %38, align 1
  %39 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_14, i32 0, i32 3
  store i8 112, ptr %39, align 1
  store i8 46, ptr %_15, align 1
  %40 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_15, i32 0, i32 1
  store i8 80, ptr %40, align 1
  %41 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_15, i32 0, i32 2
  store i8 85, ptr %41, align 1
  %42 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_15, i32 0, i32 3
  store i8 68, ptr %42, align 1
  store i8 54, ptr %_16, align 1
  %43 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_16, i32 0, i32 1
  store i8 81, ptr %43, align 1
  %44 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_16, i32 0, i32 2
  store i8 21, ptr %44, align 1
  %45 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_16, i32 0, i32 3
  store i8 13, ptr %45, align 1
  store i8 19, ptr %_17, align 1
  %46 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_17, i32 0, i32 1
  store i8 -2, ptr %46, align 1
  %47 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_17, i32 0, i32 2
  store i8 5, ptr %47, align 1
  %48 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_17, i32 0, i32 3
  store i8 43, ptr %48, align 1
  %49 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %49, ptr align 1 %_2, i64 4, i1 false)
  %50 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %50, ptr align 1 %_3, i64 4, i1 false)
  %51 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %51, ptr align 1 %_4, i64 4, i1 false)
  %52 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %52, ptr align 1 %_5, i64 4, i1 false)
  %53 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %53, ptr align 1 %_6, i64 4, i1 false)
  %54 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %54, ptr align 1 %_7, i64 4, i1 false)
  %55 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %55, ptr align 1 %_8, i64 4, i1 false)
  %56 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %56, ptr align 1 %_9, i64 4, i1 false)
  %57 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %57, ptr align 1 %_10, i64 4, i1 false)
  %58 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %58, ptr align 1 %_11, i64 4, i1 false)
  %59 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %59, ptr align 1 %_12, i64 4, i1 false)
  %60 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 11
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %60, ptr align 1 %_13, i64 4, i1 false)
  %61 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %61, ptr align 1 %_14, i64 4, i1 false)
  %62 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %62, ptr align 1 %_15, i64 4, i1 false)
  %63 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 14
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %63, ptr align 1 %_16, i64 4, i1 false)
  %64 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %64, ptr align 1 %_17, i64 4, i1 false)
  store ptr %pix, ptr %self.dbg.spill.i, align 8
  %65 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 16, ptr %65, align 8
  store i32 16, ptr %img, align 8
  %66 = getelementptr inbounds %"src::lib::CpImageT", ptr %img, i32 0, i32 1
  store i32 1, ptr %66, align 4
  %67 = getelementptr inbounds %"src::lib::CpImageT", ptr %img, i32 0, i32 2
  store ptr %pix, ptr %67, align 8
  call void @premultiply(ptr %img)
  store i8 -72, ptr %_26, align 1
  %68 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_26, i32 0, i32 1
  store i8 93, ptr %68, align 1
  %69 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_26, i32 0, i32 2
  store i8 43, ptr %69, align 1
  %70 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_26, i32 0, i32 3
  store i8 -18, ptr %70, align 1
  store i8 50, ptr %_27, align 1
  %71 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_27, i32 0, i32 1
  store i8 -75, ptr %71, align 1
  %72 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_27, i32 0, i32 2
  store i8 -76, ptr %72, align 1
  %73 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_27, i32 0, i32 3
  store i8 -3, ptr %73, align 1
  store i8 15, ptr %_28, align 1
  %74 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_28, i32 0, i32 1
  store i8 28, ptr %74, align 1
  %75 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_28, i32 0, i32 2
  store i8 5, ptr %75, align 1
  %76 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_28, i32 0, i32 3
  store i8 39, ptr %76, align 1
  store i8 7, ptr %_29, align 1
  %77 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_29, i32 0, i32 1
  store i8 9, ptr %77, align 1
  %78 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_29, i32 0, i32 2
  store i8 1, ptr %78, align 1
  %79 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_29, i32 0, i32 3
  store i8 42, ptr %79, align 1
  store i8 -107, ptr %_30, align 1
  %80 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_30, i32 0, i32 1
  store i8 53, ptr %80, align 1
  %81 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_30, i32 0, i32 2
  store i8 9, ptr %81, align 1
  %82 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_30, i32 0, i32 3
  store i8 -57, ptr %82, align 1
  store i8 11, ptr %_31, align 1
  %83 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_31, i32 0, i32 1
  store i8 117, ptr %83, align 1
  %84 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_31, i32 0, i32 2
  store i8 90, ptr %84, align 1
  %85 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_31, i32 0, i32 3
  store i8 -44, ptr %85, align 1
  store i8 28, ptr %_32, align 1
  %86 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_32, i32 0, i32 1
  store i8 47, ptr %86, align 1
  %87 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_32, i32 0, i32 2
  store i8 39, ptr %87, align 1
  %88 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_32, i32 0, i32 3
  store i8 -96, ptr %88, align 1
  store i8 -102, ptr %_33, align 1
  %89 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_33, i32 0, i32 1
  store i8 73, ptr %89, align 1
  %90 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_33, i32 0, i32 2
  store i8 63, ptr %90, align 1
  %91 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_33, i32 0, i32 3
  store i8 -14, ptr %91, align 1
  store i8 -13, ptr %_34, align 1
  %92 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_34, i32 0, i32 1
  store i8 124, ptr %92, align 1
  %93 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_34, i32 0, i32 2
  store i8 -102, ptr %93, align 1
  %94 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_34, i32 0, i32 3
  store i8 -1, ptr %94, align 1
  store i8 67, ptr %_35, align 1
  %95 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_35, i32 0, i32 1
  store i8 -46, ptr %95, align 1
  %96 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_35, i32 0, i32 2
  store i8 119, ptr %96, align 1
  %97 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_35, i32 0, i32 3
  store i8 -17, ptr %97, align 1
  store i8 79, ptr %_36, align 1
  %98 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_36, i32 0, i32 1
  store i8 52, ptr %98, align 1
  %99 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_36, i32 0, i32 2
  store i8 14, ptr %99, align 1
  %100 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_36, i32 0, i32 3
  store i8 85, ptr %100, align 1
  store i8 88, ptr %_37, align 1
  %101 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_37, i32 0, i32 1
  store i8 33, ptr %101, align 1
  %102 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_37, i32 0, i32 2
  store i8 113, ptr %102, align 1
  %103 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_37, i32 0, i32 3
  store i8 -123, ptr %103, align 1
  store i8 64, ptr %_38, align 1
  %104 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_38, i32 0, i32 1
  store i8 10, ptr %104, align 1
  %105 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_38, i32 0, i32 2
  store i8 7, ptr %105, align 1
  %106 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_38, i32 0, i32 3
  store i8 112, ptr %106, align 1
  store i8 12, ptr %_39, align 1
  %107 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_39, i32 0, i32 1
  store i8 21, ptr %107, align 1
  %108 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_39, i32 0, i32 2
  store i8 22, ptr %108, align 1
  %109 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_39, i32 0, i32 3
  store i8 68, ptr %109, align 1
  store i8 2, ptr %_40, align 1
  %110 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_40, i32 0, i32 1
  store i8 4, ptr %110, align 1
  %111 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_40, i32 0, i32 2
  store i8 1, ptr %111, align 1
  %112 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_40, i32 0, i32 3
  store i8 13, ptr %112, align 1
  store i8 3, ptr %_41, align 1
  %113 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_41, i32 0, i32 1
  store i8 42, ptr %113, align 1
  %114 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_41, i32 0, i32 2
  store i8 0, ptr %114, align 1
  %115 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_41, i32 0, i32 3
  store i8 43, ptr %115, align 1
  %116 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %116, ptr align 1 %_26, i64 4, i1 false)
  %117 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %117, ptr align 1 %_27, i64 4, i1 false)
  %118 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %118, ptr align 1 %_28, i64 4, i1 false)
  %119 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %119, ptr align 1 %_29, i64 4, i1 false)
  %120 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %120, ptr align 1 %_30, i64 4, i1 false)
  %121 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %121, ptr align 1 %_31, i64 4, i1 false)
  %122 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %122, ptr align 1 %_32, i64 4, i1 false)
  %123 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %123, ptr align 1 %_33, i64 4, i1 false)
  %124 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %124, ptr align 1 %_34, i64 4, i1 false)
  %125 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %125, ptr align 1 %_35, i64 4, i1 false)
  %126 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %126, ptr align 1 %_36, i64 4, i1 false)
  %127 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 11
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %127, ptr align 1 %_37, i64 4, i1 false)
  %128 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %128, ptr align 1 %_38, i64 4, i1 false)
  %129 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %129, ptr align 1 %_39, i64 4, i1 false)
  %130 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 14
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %130, ptr align 1 %_40, i64 4, i1 false)
  %131 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %131, ptr align 1 %_41, i64 4, i1 false)
  store i64 0, ptr %_43, align 8
  %132 = getelementptr inbounds { i64, i64 }, ptr %_43, i32 0, i32 1
  store i64 16, ptr %132, align 8
  %133 = getelementptr inbounds { i64, i64 }, ptr %_43, i32 0, i32 0
  %134 = load i64, ptr %133, align 8, !noundef !4
  %135 = getelementptr inbounds { i64, i64 }, ptr %_43, i32 0, i32 1
  %136 = load i64, ptr %135, align 8, !noundef !4
  %137 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hf87fecd95e1ff0c9E"(i64 %134, i64 %136)
  %_42.0 = extractvalue { i64, i64 } %137, 0
  %_42.1 = extractvalue { i64, i64 } %137, 1
  %138 = getelementptr inbounds { i64, i64 }, ptr %iter, i32 0, i32 0
  store i64 %_42.0, ptr %138, align 8
  %139 = getelementptr inbounds { i64, i64 }, ptr %iter, i32 0, i32 1
  store i64 %_42.1, ptr %139, align 8
  br label %bb4

bb4:                                              ; preds = %bb11, %start
  %140 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h59cd51c5e9b016b3E"(ptr align 8 %iter)
  store { i64, i64 } %140, ptr %_45, align 8
  %_47 = load i64, ptr %_45, align 8, !range !6, !noundef !4
  %141 = icmp eq i64 %_47, 0
  br i1 %141, label %bb8, label %bb6

bb8:                                              ; preds = %bb4
  store i8 1, ptr %0, align 1
  br label %bb27

bb6:                                              ; preds = %bb4
  %142 = getelementptr inbounds { i64, i64 }, ptr %_45, i32 0, i32 1
  %i = load i64, ptr %142, align 8, !noundef !4
  store i64 %i, ptr %i.dbg.spill, align 8
  %_55 = icmp ult i64 %i, 16
  %143 = call i1 @llvm.expect.i1(i1 %_55, i1 true)
  br i1 %143, label %bb18, label %panic

bb7:                                              ; No predecessors!
  unreachable

bb18:                                             ; preds = %bb6
  %144 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 %i
  %_53 = load i8, ptr %144, align 1, !noundef !4
  %_58 = icmp ult i64 %i, 16
  %145 = call i1 @llvm.expect.i1(i1 %_58, i1 true)
  br i1 %145, label %bb19, label %panic1

panic:                                            ; preds = %bb6
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_603b576e010d1790e4c6e322932dca43) #7
  unreachable

bb19:                                             ; preds = %bb18
  %146 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 %i
  %_56 = load i8, ptr %146, align 1, !noundef !4
  %_52 = icmp ne i8 %_53, %_56
  br i1 %_52, label %bb15, label %bb16

panic1:                                           ; preds = %bb18
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_64042934a94d40a514c45f30fc2c12f1) #7
  unreachable

bb16:                                             ; preds = %bb19
  %_62 = icmp ult i64 %i, 16
  %147 = call i1 @llvm.expect.i1(i1 %_62, i1 true)
  br i1 %147, label %bb20, label %panic2

bb15:                                             ; preds = %bb19
  store i8 1, ptr %_51, align 1
  br label %bb17

bb17:                                             ; preds = %bb21, %bb15
  %148 = load i8, ptr %_51, align 1, !range !7, !noundef !4
  %149 = trunc i8 %148 to i1
  br i1 %149, label %bb12, label %bb13

bb20:                                             ; preds = %bb16
  %150 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 %i
  %151 = getelementptr inbounds %"src::lib::CpPixelT", ptr %150, i32 0, i32 1
  %_60 = load i8, ptr %151, align 1, !noundef !4
  %_65 = icmp ult i64 %i, 16
  %152 = call i1 @llvm.expect.i1(i1 %_65, i1 true)
  br i1 %152, label %bb21, label %panic3

panic2:                                           ; preds = %bb16
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_1cf99fd997466f80360e32d6e9000c55) #7
  unreachable

bb21:                                             ; preds = %bb20
  %153 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 %i
  %154 = getelementptr inbounds %"src::lib::CpPixelT", ptr %153, i32 0, i32 1
  %_63 = load i8, ptr %154, align 1, !noundef !4
  %_59 = icmp ne i8 %_60, %_63
  %155 = zext i1 %_59 to i8
  store i8 %155, ptr %_51, align 1
  br label %bb17

panic3:                                           ; preds = %bb20
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_9f091918234a29fac3787417675f2cfd) #7
  unreachable

bb13:                                             ; preds = %bb17
  %_69 = icmp ult i64 %i, 16
  %156 = call i1 @llvm.expect.i1(i1 %_69, i1 true)
  br i1 %156, label %bb22, label %panic4

bb12:                                             ; preds = %bb17
  store i8 1, ptr %_50, align 1
  br label %bb14

bb14:                                             ; preds = %bb23, %bb12
  %157 = load i8, ptr %_50, align 1, !range !7, !noundef !4
  %158 = trunc i8 %157 to i1
  br i1 %158, label %bb9, label %bb10

bb22:                                             ; preds = %bb13
  %159 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 %i
  %160 = getelementptr inbounds %"src::lib::CpPixelT", ptr %159, i32 0, i32 2
  %_67 = load i8, ptr %160, align 1, !noundef !4
  %_72 = icmp ult i64 %i, 16
  %161 = call i1 @llvm.expect.i1(i1 %_72, i1 true)
  br i1 %161, label %bb23, label %panic5

panic4:                                           ; preds = %bb13
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_62b057920c301ae2f92492ce64806ba4) #7
  unreachable

bb23:                                             ; preds = %bb22
  %162 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 %i
  %163 = getelementptr inbounds %"src::lib::CpPixelT", ptr %162, i32 0, i32 2
  %_70 = load i8, ptr %163, align 1, !noundef !4
  %_66 = icmp ne i8 %_67, %_70
  %164 = zext i1 %_66 to i8
  store i8 %164, ptr %_50, align 1
  br label %bb14

panic5:                                           ; preds = %bb22
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_410228c325e0ba70c9642b34bf0d2c66) #7
  unreachable

bb10:                                             ; preds = %bb14
  %_76 = icmp ult i64 %i, 16
  %165 = call i1 @llvm.expect.i1(i1 %_76, i1 true)
  br i1 %165, label %bb24, label %panic6

bb9:                                              ; preds = %bb14
  store i8 1, ptr %_49, align 1
  br label %bb11

bb11:                                             ; preds = %bb25, %bb9
  %166 = load i8, ptr %_49, align 1, !range !7, !noundef !4
  %167 = trunc i8 %166 to i1
  br i1 %167, label %bb26, label %bb4

bb24:                                             ; preds = %bb10
  %168 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 %i
  %169 = getelementptr inbounds %"src::lib::CpPixelT", ptr %168, i32 0, i32 3
  %_74 = load i8, ptr %169, align 1, !noundef !4
  %_79 = icmp ult i64 %i, 16
  %170 = call i1 @llvm.expect.i1(i1 %_79, i1 true)
  br i1 %170, label %bb25, label %panic7

panic6:                                           ; preds = %bb10
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_27d76f38c07556740d2c9a3e7e386bb4) #7
  unreachable

bb25:                                             ; preds = %bb24
  %171 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 %i
  %172 = getelementptr inbounds %"src::lib::CpPixelT", ptr %171, i32 0, i32 3
  %_77 = load i8, ptr %172, align 1, !noundef !4
  %_73 = icmp ne i8 %_74, %_77
  %173 = zext i1 %_73 to i8
  store i8 %173, ptr %_49, align 1
  br label %bb11

panic7:                                           ; preds = %bb24
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_336295a8720cb032fd4f5858f5c3762b) #7
  unreachable

bb26:                                             ; preds = %bb11
  store i8 0, ptr %0, align 1
  br label %bb27

bb27:                                             ; preds = %bb26, %bb8
  %174 = load i8, ptr %0, align 1, !range !7, !noundef !4
  %175 = trunc i8 %174 to i1
  ret i1 %175
}

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 2, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{}
!5 = !{i64 8}
!6 = !{i64 0, i64 2}
!7 = !{i8 0, i8 2}
!8 = !{i64 1}
