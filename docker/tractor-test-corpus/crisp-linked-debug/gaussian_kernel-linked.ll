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
%"core::iter::adapters::take::Take<core::slice::iter::IterMut<'_, f32>>" = type { { ptr, ptr }, i64 }
%"core::iter::adapters::enumerate::Enumerate<core::iter::adapters::take::Take<core::slice::iter::IterMut<'_, f32>>>" = type { i64, %"core::iter::adapters::take::Take<core::slice::iter::IterMut<'_, f32>>" }
%"core::option::Option<core::convert::Infallible>::None" = type {}
%"core::ptr::metadata::PtrComponents<f32>" = type { ptr, {} }
%"core::ptr::metadata::PtrRepr<f32>" = type { [1 x i64] }

@alloc_3a54729c7e380cb36de1bb017cf77727 = private unnamed_addr constant <{ [91 x i8] }> <{ [91 x i8] c"/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/iter/adapters/enumerate.rs" }>, align 1
@alloc_705ff2f392d43cb19f8d757f30af1061 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_3a54729c7e380cb36de1bb017cf77727, [16 x i8] c"[\00\00\00\00\00\00\001\00\00\00\09\00\00\00" }>, align 8
@str.0 = internal constant [28 x i8] c"attempt to add with overflow"
@alloc_f5ffd2fd1476bab43ad89fb40c72d0c5 = private unnamed_addr constant <{ [10 x i8] }> <{ [10 x i8] c"src/lib.rs" }>, align 1
@alloc_c16d68d96060651462b5d17f508de02f = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\0F\00\00\00\11\00\00\00" }>, align 8
@str.1 = internal constant [33 x i8] c"attempt to subtract with overflow"
@alloc_f4ed6cdddfc49e3fa5b1bd2744a640cf = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00;\00\00\00\0C\00\00\00" }>, align 8
@alloc_e16fff8686273831760511027c4f6ecb = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00;\00\00\00\17\00\00\00" }>, align 8
@alloc_ab1c84cfc9c4bb6c91122bcc4033a369 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00T\00\00\00\0C\00\00\00" }>, align 8
@alloc_dcef5c092d95b836b5498731e4e6e983 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00T\00\00\00\17\00\00\00" }>, align 8
@alloc_9ef9647368af8086374d0252af321aed = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00x\00\00\00\0C\00\00\00" }>, align 8
@alloc_a8078fc89ce44aaf9a58b3cef0a32a51 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00x\00\00\00\17\00\00\00" }>, align 8
@alloc_191c2b0a91cfa92597b251cc2ead9c33 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\91\00\00\00\0C\00\00\00" }>, align 8
@alloc_ed763bbe9029f682d996c75b04205ede = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\91\00\00\00\17\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define void @gaussian_kernel(ptr %dest, i32 %size, float %radius) unnamed_addr #0 {
start:
  %dest.dbg.spill1 = alloca { ptr, i64 }, align 8
  %radius.dbg.spill = alloca float, align 4
  %size.dbg.spill = alloca i32, align 4
  %dest.dbg.spill = alloca ptr, align 8
  store ptr %dest, ptr %dest.dbg.spill, align 8
  store i32 %size, ptr %size.dbg.spill, align 4
  store float %radius, ptr %radius.dbg.spill, align 4
  %_5 = sext i32 %size to i64
  %0 = call { ptr, i64 } @_ZN4core5slice3raw18from_raw_parts_mut17ha1aa3ac021b755dbE(ptr %dest, i64 %_5)
  %dest.0 = extractvalue { ptr, i64 } %0, 0
  %dest.1 = extractvalue { ptr, i64 } %0, 1
  %1 = getelementptr inbounds { ptr, i64 }, ptr %dest.dbg.spill1, i32 0, i32 0
  store ptr %dest.0, ptr %1, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %dest.dbg.spill1, i32 0, i32 1
  store i64 %dest.1, ptr %2, align 8
  call void @_ZN19gaussian_kernel_lib3src3lib15gaussian_kernel17h6978c5c4cfbea616E(ptr align 4 %dest.0, i64 %dest.1, i32 %size, float %radius)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @_ZN4core5slice3raw18from_raw_parts_mut17ha1aa3ac021b755dbE(ptr %data, i64 %len) unnamed_addr #1 {
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
define internal void @_ZN19gaussian_kernel_lib3src3lib15gaussian_kernel17h6978c5c4cfbea616E(ptr align 4 %dest.0, i64 %dest.1, i32 %size, float %radius) unnamed_addr #0 {
start:
  %v.dbg.spill = alloca ptr, align 8
  %isum.dbg.spill = alloca float, align 4
  %x.dbg.spill = alloca float, align 4
  %r.dbg.spill = alloca i32, align 4
  %k.dbg.spill = alloca ptr, align 8
  %i.dbg.spill = alloca i64, align 8
  %rs.dbg.spill = alloca float, align 4
  %s2.dbg.spill = alloca float, align 4
  %hsize.dbg.spill = alloca i32, align 4
  %tetha.dbg.spill = alloca float, align 4
  %sigma.dbg.spill = alloca float, align 4
  %radius.dbg.spill = alloca float, align 4
  %size.dbg.spill = alloca i32, align 4
  %dest.dbg.spill = alloca { ptr, i64 }, align 8
  %_46 = alloca ptr, align 8
  %iter1 = alloca %"core::iter::adapters::take::Take<core::slice::iter::IterMut<'_, f32>>", align 8
  %_42 = alloca %"core::iter::adapters::take::Take<core::slice::iter::IterMut<'_, f32>>", align 8
  %_41 = alloca %"core::iter::adapters::take::Take<core::slice::iter::IterMut<'_, f32>>", align 8
  %_32 = alloca float, align 4
  %v = alloca float, align 4
  %_18 = alloca { i64, ptr }, align 8
  %iter = alloca %"core::iter::adapters::enumerate::Enumerate<core::iter::adapters::take::Take<core::slice::iter::IterMut<'_, f32>>>", align 8
  %_14 = alloca %"core::iter::adapters::take::Take<core::slice::iter::IterMut<'_, f32>>", align 8
  %_13 = alloca %"core::iter::adapters::enumerate::Enumerate<core::iter::adapters::take::Take<core::slice::iter::IterMut<'_, f32>>>", align 8
  %_12 = alloca %"core::iter::adapters::enumerate::Enumerate<core::iter::adapters::take::Take<core::slice::iter::IterMut<'_, f32>>>", align 8
  %sum = alloca float, align 4
  %0 = getelementptr inbounds { ptr, i64 }, ptr %dest.dbg.spill, i32 0, i32 0
  store ptr %dest.0, ptr %0, align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %dest.dbg.spill, i32 0, i32 1
  store i64 %dest.1, ptr %1, align 8
  store i32 %size, ptr %size.dbg.spill, align 4
  store float %radius, ptr %radius.dbg.spill, align 4
  store float 0x3FF99999A0000000, ptr %sigma.dbg.spill, align 4
  store float 2.250000e+00, ptr %tetha.dbg.spill, align 4
  %hsize = sdiv i32 %size, 2
  store i32 %hsize, ptr %hsize.dbg.spill, align 4
  %_8 = call float @"_ZN3std3f3221_$LT$impl$u20$f32$GT$3exp17h1e059bd852361fd0E"(float 0x40170A3D80000000)
  %s2 = fdiv float 1.000000e+00, %_8
  store float %s2, ptr %s2.dbg.spill, align 4
  %rs = fdiv float 0x3FF99999A0000000, %radius
  store float %rs, ptr %rs.dbg.spill, align 4
  store float 0.000000e+00, ptr %sum, align 4
  %2 = call { ptr, ptr } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8iter_mut17h2d4e0a25c119fc04E"(ptr align 4 %dest.0, i64 %dest.1)
  %_15.0 = extractvalue { ptr, ptr } %2, 0
  %_15.1 = extractvalue { ptr, ptr } %2, 1
  %_16 = sext i32 %size to i64
  call void @_ZN4core4iter6traits8iterator8Iterator4take17h1f3acb62ca715372E(ptr sret(%"core::iter::adapters::take::Take<core::slice::iter::IterMut<'_, f32>>") %_14, ptr %_15.0, ptr %_15.1, i64 %_16)
  call void @_ZN4core4iter6traits8iterator8Iterator9enumerate17h570a7b216dcdf504E(ptr sret(%"core::iter::adapters::enumerate::Enumerate<core::iter::adapters::take::Take<core::slice::iter::IterMut<'_, f32>>>") %_13, ptr %_14)
  call void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h08bf57c73617e36cE"(ptr sret(%"core::iter::adapters::enumerate::Enumerate<core::iter::adapters::take::Take<core::slice::iter::IterMut<'_, f32>>>") %_12, ptr %_13)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %iter, ptr align 8 %_12, i64 32, i1 false)
  br label %bb6

bb6:                                              ; preds = %bb15, %start
  %3 = call { i64, ptr } @"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h055fd06bd20e7629E"(ptr align 8 %iter)
  store { i64, ptr } %3, ptr %_18, align 8
  %4 = getelementptr inbounds { i64, ptr }, ptr %_18, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8, !noundef !4
  %6 = ptrtoint ptr %5 to i64
  %7 = icmp eq i64 %6, 0
  %_20 = select i1 %7, i64 0, i64 1
  %8 = icmp eq i64 %_20, 0
  br i1 %8, label %bb10, label %bb8

bb10:                                             ; preds = %bb6
  %_38 = load float, ptr %sum, align 4, !noundef !4
  %_37 = fcmp ogt float %_38, 0.000000e+00
  br i1 %_37, label %bb16, label %bb23

bb8:                                              ; preds = %bb6
  %i = load i64, ptr %_18, align 8, !noundef !4
  store i64 %i, ptr %i.dbg.spill, align 8
  %9 = getelementptr inbounds { i64, ptr }, ptr %_18, i32 0, i32 1
  %k = load ptr, ptr %9, align 8, !nonnull !4, !align !5, !noundef !4
  store ptr %k, ptr %k.dbg.spill, align 8
  %_24 = trunc i64 %i to i32
  %10 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_24, i32 %hsize)
  %_25.0 = extractvalue { i32, i1 } %10, 0
  %_25.1 = extractvalue { i32, i1 } %10, 1
  %11 = call i1 @llvm.expect.i1(i1 %_25.1, i1 false)
  br i1 %11, label %panic, label %bb11

bb11:                                             ; preds = %bb8
  store i32 %_25.0, ptr %r.dbg.spill, align 4
  %_27 = sitofp i32 %_25.0 to float
  %x = fmul float %_27, %rs
  store float %x, ptr %x.dbg.spill, align 4
  %_31 = fmul float %x, %x
  %_30 = call float @"_ZN3std3f3221_$LT$impl$u20$f32$GT$3exp17h1e059bd852361fd0E"(float %_31)
  %_29 = fdiv float 1.000000e+00, %_30
  %12 = fsub float %_29, %s2
  store float %12, ptr %v, align 4
  %_34 = load float, ptr %v, align 4, !noundef !4
  %_33 = fcmp ogt float %_34, 0.000000e+00
  br i1 %_33, label %bb13, label %bb14

panic:                                            ; preds = %bb8
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.1, i64 33, ptr align 8 @alloc_c16d68d96060651462b5d17f508de02f) #7
  unreachable

bb14:                                             ; preds = %bb11
  store float 0.000000e+00, ptr %_32, align 4
  br label %bb15

bb13:                                             ; preds = %bb11
  %13 = load float, ptr %v, align 4, !noundef !4
  store float %13, ptr %_32, align 4
  br label %bb15

bb15:                                             ; preds = %bb13, %bb14
  %14 = load float, ptr %_32, align 4, !noundef !4
  store float %14, ptr %v, align 4
  %_35 = load float, ptr %v, align 4, !noundef !4
  store float %_35, ptr %k, align 4
  %_36 = load float, ptr %v, align 4, !noundef !4
  %15 = load float, ptr %sum, align 4, !noundef !4
  %16 = fadd float %15, %_36
  store float %16, ptr %sum, align 4
  br label %bb6

bb23:                                             ; preds = %bb20, %bb10
  ret void

bb16:                                             ; preds = %bb10
  %_40 = load float, ptr %sum, align 4, !noundef !4
  %isum = fdiv float 1.000000e+00, %_40
  store float %isum, ptr %isum.dbg.spill, align 4
  %17 = call { ptr, ptr } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8iter_mut17h2d4e0a25c119fc04E"(ptr align 4 %dest.0, i64 %dest.1)
  %_43.0 = extractvalue { ptr, ptr } %17, 0
  %_43.1 = extractvalue { ptr, ptr } %17, 1
  %_44 = sext i32 %size to i64
  call void @_ZN4core4iter6traits8iterator8Iterator4take17h1f3acb62ca715372E(ptr sret(%"core::iter::adapters::take::Take<core::slice::iter::IterMut<'_, f32>>") %_42, ptr %_43.0, ptr %_43.1, i64 %_44)
  call void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h54475a934d3cd60cE"(ptr sret(%"core::iter::adapters::take::Take<core::slice::iter::IterMut<'_, f32>>") %_41, ptr %_42)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %iter1, ptr align 8 %_41, i64 24, i1 false)
  br label %bb20

bb20:                                             ; preds = %bb22, %bb16
  %18 = call align 4 ptr @"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6811cea95b059b17E"(ptr align 8 %iter1)
  store ptr %18, ptr %_46, align 8
  %19 = load ptr, ptr %_46, align 8, !noundef !4
  %20 = ptrtoint ptr %19 to i64
  %21 = icmp eq i64 %20, 0
  %_48 = select i1 %21, i64 0, i64 1
  %22 = icmp eq i64 %_48, 0
  br i1 %22, label %bb23, label %bb22

bb22:                                             ; preds = %bb20
  %v2 = load ptr, ptr %_46, align 8, !nonnull !4, !align !5, !noundef !4
  store ptr %v2, ptr %v.dbg.spill, align 8
  %23 = load float, ptr %v2, align 4, !noundef !4
  %24 = fmul float %23, %isum
  store float %24, ptr %v2, align 4
  br label %bb20

bb9:                                              ; No predecessors!
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal float @"_ZN3std3f3221_$LT$impl$u20$f32$GT$3exp17h1e059bd852361fd0E"(float %self) unnamed_addr #1 {
start:
  %0 = alloca float, align 4
  %self.dbg.spill = alloca float, align 4
  store float %self, ptr %self.dbg.spill, align 4
  %1 = call float @llvm.exp.f32(float %self)
  store float %1, ptr %0, align 4
  %2 = load float, ptr %0, align 4, !noundef !4
  ret float %2
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8iter_mut17h2d4e0a25c119fc04E"(ptr align 4 %self.0, i64 %self.1) unnamed_addr #1 {
start:
  %self.dbg.spill = alloca { ptr, i64 }, align 8
  %0 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill, i32 0, i32 0
  store ptr %self.0, ptr %0, align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill, i32 0, i32 1
  store i64 %self.1, ptr %1, align 8
  %2 = call { ptr, ptr } @"_ZN4core5slice4iter16IterMut$LT$T$GT$3new17h4b7b0e3a8ca86151E"(ptr align 4 %self.0, i64 %self.1)
  %3 = extractvalue { ptr, ptr } %2, 0
  %4 = extractvalue { ptr, ptr } %2, 1
  %5 = insertvalue { ptr, ptr } poison, ptr %3, 0
  %6 = insertvalue { ptr, ptr } %5, ptr %4, 1
  ret { ptr, ptr } %6
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core4iter6traits8iterator8Iterator4take17h1f3acb62ca715372E(ptr sret(%"core::iter::adapters::take::Take<core::slice::iter::IterMut<'_, f32>>") %0, ptr %self.0, ptr %self.1, i64 %n) unnamed_addr #1 {
start:
  %n.dbg.spill = alloca i64, align 8
  %self.dbg.spill = alloca { ptr, ptr }, align 8
  %1 = getelementptr inbounds { ptr, ptr }, ptr %self.dbg.spill, i32 0, i32 0
  store ptr %self.0, ptr %1, align 8
  %2 = getelementptr inbounds { ptr, ptr }, ptr %self.dbg.spill, i32 0, i32 1
  store ptr %self.1, ptr %2, align 8
  store i64 %n, ptr %n.dbg.spill, align 8
  call void @"_ZN4core4iter8adapters4take13Take$LT$I$GT$3new17h0b6f73572556ae5dE"(ptr sret(%"core::iter::adapters::take::Take<core::slice::iter::IterMut<'_, f32>>") %0, ptr %self.0, ptr %self.1, i64 %n)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core4iter6traits8iterator8Iterator9enumerate17h570a7b216dcdf504E(ptr sret(%"core::iter::adapters::enumerate::Enumerate<core::iter::adapters::take::Take<core::slice::iter::IterMut<'_, f32>>>") %0, ptr %self) unnamed_addr #1 {
start:
  call void @"_ZN4core4iter8adapters9enumerate18Enumerate$LT$I$GT$3new17hc4a43896c922a599E"(ptr sret(%"core::iter::adapters::enumerate::Enumerate<core::iter::adapters::take::Take<core::slice::iter::IterMut<'_, f32>>>") %0, ptr %self)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h08bf57c73617e36cE"(ptr sret(%"core::iter::adapters::enumerate::Enumerate<core::iter::adapters::take::Take<core::slice::iter::IterMut<'_, f32>>>") %0, ptr %self) unnamed_addr #1 {
start:
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %self, i64 32, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, ptr } @"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h055fd06bd20e7629E"(ptr align 8 %self) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %0 = alloca { ptr, i32 }, align 8
  %i.dbg.spill = alloca i64, align 8
  %a.dbg.spill = alloca ptr, align 8
  %val.dbg.spill = alloca ptr, align 8
  %v.dbg.spill = alloca ptr, align 8
  %self.dbg.spill = alloca ptr, align 8
  %_10 = alloca { i64, ptr }, align 8
  %self2 = alloca ptr, align 8
  %_3 = alloca ptr, align 8
  %1 = alloca { i64, ptr }, align 8
  %residual.dbg.spill1 = alloca %"core::option::Option<core::convert::Infallible>::None", align 1
  %residual.dbg.spill = alloca %"core::option::Option<core::convert::Infallible>::None", align 1
  store ptr %self, ptr %self.dbg.spill, align 8
  %_5 = getelementptr inbounds %"core::iter::adapters::enumerate::Enumerate<core::iter::adapters::take::Take<core::slice::iter::IterMut<'_, f32>>>", ptr %self, i32 0, i32 1
  %2 = call align 4 ptr @"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6811cea95b059b17E"(ptr align 8 %_5)
  store ptr %2, ptr %self2, align 8
  %3 = load ptr, ptr %self2, align 8, !noundef !4
  %4 = ptrtoint ptr %3 to i64
  %5 = icmp eq i64 %4, 0
  %_12 = select i1 %5, i64 0, i64 1
  %6 = icmp eq i64 %_12, 0
  br i1 %6, label %bb10, label %bb11

bb10:                                             ; preds = %start
  store ptr null, ptr %_3, align 8
  br label %bb2

bb11:                                             ; preds = %start
  %v = load ptr, ptr %self2, align 8, !nonnull !4, !align !5, !noundef !4
  store ptr %v, ptr %v.dbg.spill, align 8
  store ptr %v, ptr %_3, align 8
  br label %bb2

bb2:                                              ; preds = %bb11, %bb10
  %7 = load ptr, ptr %_3, align 8, !noundef !4
  %8 = ptrtoint ptr %7 to i64
  %9 = icmp eq i64 %8, 0
  %_6 = select i1 %9, i64 1, i64 0
  %10 = icmp eq i64 %_6, 0
  br i1 %10, label %bb3, label %bb5

bb3:                                              ; preds = %bb2
  %val = load ptr, ptr %_3, align 8, !nonnull !4, !align !5, !noundef !4
  store ptr %val, ptr %val.dbg.spill, align 8
  store ptr %val, ptr %a.dbg.spill, align 8
  %i = load i64, ptr %self, align 8, !noundef !4
  store i64 %i, ptr %i.dbg.spill, align 8
  %11 = load i64, ptr %self, align 8, !noundef !4
  %12 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %11, i64 1)
  %_9.0 = extractvalue { i64, i1 } %12, 0
  %_9.1 = extractvalue { i64, i1 } %12, 1
  %13 = call i1 @llvm.expect.i1(i1 %_9.1, i1 false)
  br i1 %13, label %panic, label %bb6

bb5:                                              ; preds = %bb2
  %14 = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  store ptr null, ptr %14, align 8
  br label %bb7

bb4:                                              ; No predecessors!
  unreachable

bb7:                                              ; preds = %bb6, %bb5
  %15 = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 0
  %16 = load i64, ptr %15, align 8
  %17 = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8, !align !5, !noundef !4
  %19 = insertvalue { i64, ptr } poison, i64 %16, 0
  %20 = insertvalue { i64, ptr } %19, ptr %18, 1
  ret { i64, ptr } %20

bb6:                                              ; preds = %bb3
  store i64 %_9.0, ptr %self, align 8
  store i64 %i, ptr %_10, align 8
  %21 = getelementptr inbounds { i64, ptr }, ptr %_10, i32 0, i32 1
  store ptr %val, ptr %21, align 8
  %22 = getelementptr inbounds { i64, ptr }, ptr %_10, i32 0, i32 0
  %23 = load i64, ptr %22, align 8, !noundef !4
  %24 = getelementptr inbounds { i64, ptr }, ptr %_10, i32 0, i32 1
  %25 = load ptr, ptr %24, align 8, !nonnull !4, !align !5, !noundef !4
  %26 = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 0
  store i64 %23, ptr %26, align 8
  %27 = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  store ptr %25, ptr %27, align 8
  br label %bb7

panic:                                            ; preds = %bb3
  invoke void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.0, i64 28, ptr align 8 @alloc_705ff2f392d43cb19f8d757f30af1061) #7
          to label %unreachable unwind label %cleanup

bb8:                                              ; preds = %cleanup
  %28 = load ptr, ptr %0, align 8, !noundef !4
  %29 = getelementptr inbounds { ptr, i32 }, ptr %0, i32 0, i32 1
  %30 = load i32, ptr %29, align 8, !noundef !4
  %31 = insertvalue { ptr, i32 } poison, ptr %28, 0
  %32 = insertvalue { ptr, i32 } %31, i32 %30, 1
  resume { ptr, i32 } %32

cleanup:                                          ; preds = %panic
  %33 = landingpad { ptr, i32 }
          cleanup
  %34 = extractvalue { ptr, i32 } %33, 0
  %35 = extractvalue { ptr, i32 } %33, 1
  %36 = getelementptr inbounds { ptr, i32 }, ptr %0, i32 0, i32 0
  store ptr %34, ptr %36, align 8
  %37 = getelementptr inbounds { ptr, i32 }, ptr %0, i32 0, i32 1
  store i32 %35, ptr %37, align 8
  br label %bb8

unreachable:                                      ; preds = %panic
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.expect.i1(i1, i1) #4

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1, i64, ptr align 8) unnamed_addr #5

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h54475a934d3cd60cE"(ptr sret(%"core::iter::adapters::take::Take<core::slice::iter::IterMut<'_, f32>>") %0, ptr %self) unnamed_addr #1 {
start:
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %self, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal align 4 ptr @"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6811cea95b059b17E"(ptr align 8 %self) unnamed_addr #1 {
start:
  %self.dbg.spill = alloca ptr, align 8
  %0 = alloca ptr, align 8
  store ptr %self, ptr %self.dbg.spill, align 8
  %1 = getelementptr inbounds %"core::iter::adapters::take::Take<core::slice::iter::IterMut<'_, f32>>", ptr %self, i32 0, i32 1
  %_2 = load i64, ptr %1, align 8, !noundef !4
  %2 = icmp eq i64 %_2, 0
  br i1 %2, label %bb3, label %bb1

bb3:                                              ; preds = %start
  store ptr null, ptr %0, align 8
  br label %bb4

bb1:                                              ; preds = %start
  %3 = getelementptr inbounds %"core::iter::adapters::take::Take<core::slice::iter::IterMut<'_, f32>>", ptr %self, i32 0, i32 1
  %4 = getelementptr inbounds %"core::iter::adapters::take::Take<core::slice::iter::IterMut<'_, f32>>", ptr %self, i32 0, i32 1
  %5 = load i64, ptr %4, align 8, !noundef !4
  %6 = sub i64 %5, 1
  store i64 %6, ptr %3, align 8
  %7 = call align 4 ptr @"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h657f4b4646fccd9aE"(ptr align 8 %self)
  store ptr %7, ptr %0, align 8
  br label %bb4

bb4:                                              ; preds = %bb1, %bb3
  %8 = load ptr, ptr %0, align 8, !align !5, !noundef !4
  ret ptr %8
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal align 4 ptr @"_ZN94_$LT$core..slice..iter..IterMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h657f4b4646fccd9aE"(ptr align 8 %self) unnamed_addr #1 {
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
  %5 = load ptr, ptr %2, align 8, !align !5, !noundef !4
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
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #3

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core4iter8adapters9enumerate18Enumerate$LT$I$GT$3new17hc4a43896c922a599E"(ptr sret(%"core::iter::adapters::enumerate::Enumerate<core::iter::adapters::take::Take<core::slice::iter::IterMut<'_, f32>>>") %0, ptr %iter) unnamed_addr #0 {
start:
  %1 = getelementptr inbounds %"core::iter::adapters::enumerate::Enumerate<core::iter::adapters::take::Take<core::slice::iter::IterMut<'_, f32>>>", ptr %0, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %1, ptr align 8 %iter, i64 24, i1 false)
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core4iter8adapters4take13Take$LT$I$GT$3new17h0b6f73572556ae5dE"(ptr sret(%"core::iter::adapters::take::Take<core::slice::iter::IterMut<'_, f32>>") %0, ptr %iter.0, ptr %iter.1, i64 %n) unnamed_addr #0 {
start:
  %n.dbg.spill = alloca i64, align 8
  %iter.dbg.spill = alloca { ptr, ptr }, align 8
  %1 = getelementptr inbounds { ptr, ptr }, ptr %iter.dbg.spill, i32 0, i32 0
  store ptr %iter.0, ptr %1, align 8
  %2 = getelementptr inbounds { ptr, ptr }, ptr %iter.dbg.spill, i32 0, i32 1
  store ptr %iter.1, ptr %2, align 8
  store i64 %n, ptr %n.dbg.spill, align 8
  %3 = getelementptr inbounds { ptr, ptr }, ptr %0, i32 0, i32 0
  store ptr %iter.0, ptr %3, align 8
  %4 = getelementptr inbounds { ptr, ptr }, ptr %0, i32 0, i32 1
  store ptr %iter.1, ptr %4, align 8
  %5 = getelementptr inbounds %"core::iter::adapters::take::Take<core::slice::iter::IterMut<'_, f32>>", ptr %0, i32 0, i32 1
  store i64 %n, ptr %5, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @"_ZN4core5slice4iter16IterMut$LT$T$GT$3new17h4b7b0e3a8ca86151E"(ptr align 4 %slice.0, i64 %slice.1) unnamed_addr #1 {
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #3

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_1() unnamed_addr #0 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %i.dbg.spill = alloca i64, align 8
  %radius.dbg.spill = alloca float, align 4
  %size.dbg.spill = alloca i32, align 4
  %_12 = alloca { i64, i64 }, align 8
  %iter = alloca { i64, i64 }, align 8
  %_10 = alloca { i64, i64 }, align 8
  %expected = alloca [9 x float], align 4
  %dest = alloca [9 x float], align 4
  %0 = alloca i8, align 1
  store i32 9, ptr %size.dbg.spill, align 4
  store float 2.500000e+00, ptr %radius.dbg.spill, align 4
  %1 = getelementptr inbounds [9 x float], ptr %dest, i64 0, i64 0
  %2 = getelementptr inbounds [9 x float], ptr %dest, i64 0, i64 0
  %3 = getelementptr inbounds [9 x float], ptr %dest, i64 0, i64 9
  br label %repeat_loop_header

repeat_loop_header:                               ; preds = %repeat_loop_body, %start
  %4 = phi ptr [ %2, %start ], [ %6, %repeat_loop_body ]
  %5 = icmp ne ptr %4, %3
  br i1 %5, label %repeat_loop_body, label %repeat_loop_next

repeat_loop_body:                                 ; preds = %repeat_loop_header
  store float 0.000000e+00, ptr %4, align 4
  %6 = getelementptr inbounds float, ptr %4, i64 1
  br label %repeat_loop_header

repeat_loop_next:                                 ; preds = %repeat_loop_header
  store ptr %dest, ptr %self.dbg.spill.i, align 8
  %7 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 9, ptr %7, align 8
  call void @gaussian_kernel(ptr %dest, i32 9, float 2.500000e+00)
  %8 = getelementptr inbounds [9 x float], ptr %expected, i64 0, i64 0
  store float 0.000000e+00, ptr %8, align 4
  %9 = getelementptr inbounds [9 x float], ptr %expected, i64 0, i64 1
  store float 0x3F8059BB20000000, ptr %9, align 4
  %10 = getelementptr inbounds [9 x float], ptr %expected, i64 0, i64 2
  store float 0x3FB1D44320000000, ptr %10, align 4
  %11 = getelementptr inbounds [9 x float], ptr %expected, i64 0, i64 3
  store float 0x3FCED14540000000, ptr %11, align 4
  %12 = getelementptr inbounds [9 x float], ptr %expected, i64 0, i64 4
  store float 0x3FD73EFE00000000, ptr %12, align 4
  %13 = getelementptr inbounds [9 x float], ptr %expected, i64 0, i64 5
  store float 0x3FCED14540000000, ptr %13, align 4
  %14 = getelementptr inbounds [9 x float], ptr %expected, i64 0, i64 6
  store float 0x3FB1D44320000000, ptr %14, align 4
  %15 = getelementptr inbounds [9 x float], ptr %expected, i64 0, i64 7
  store float 0x3F8059BB20000000, ptr %15, align 4
  %16 = getelementptr inbounds [9 x float], ptr %expected, i64 0, i64 8
  store float 0.000000e+00, ptr %16, align 4
  store i64 0, ptr %_10, align 8
  %17 = getelementptr inbounds { i64, i64 }, ptr %_10, i32 0, i32 1
  store i64 9, ptr %17, align 8
  %18 = getelementptr inbounds { i64, i64 }, ptr %_10, i32 0, i32 0
  %19 = load i64, ptr %18, align 8, !noundef !4
  %20 = getelementptr inbounds { i64, i64 }, ptr %_10, i32 0, i32 1
  %21 = load i64, ptr %20, align 8, !noundef !4
  %22 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9f7abc36e15cad91E"(i64 %19, i64 %21)
  %_9.0 = extractvalue { i64, i64 } %22, 0
  %_9.1 = extractvalue { i64, i64 } %22, 1
  %23 = getelementptr inbounds { i64, i64 }, ptr %iter, i32 0, i32 0
  store i64 %_9.0, ptr %23, align 8
  %24 = getelementptr inbounds { i64, i64 }, ptr %iter, i32 0, i32 1
  store i64 %_9.1, ptr %24, align 8
  br label %bb4

bb4:                                              ; preds = %bb10, %repeat_loop_next
  %25 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h17437aebf229d8a5E"(ptr align 8 %iter)
  store { i64, i64 } %25, ptr %_12, align 8
  %_14 = load i64, ptr %_12, align 8, !range !6, !noundef !4
  %26 = icmp eq i64 %_14, 0
  br i1 %26, label %bb8, label %bb6

bb8:                                              ; preds = %bb4
  store i8 1, ptr %0, align 1
  br label %bb12

bb6:                                              ; preds = %bb4
  %27 = getelementptr inbounds { i64, i64 }, ptr %_12, i32 0, i32 1
  %i = load i64, ptr %27, align 8, !noundef !4
  store i64 %i, ptr %i.dbg.spill, align 8
  %_19 = icmp ult i64 %i, 9
  %28 = call i1 @llvm.expect.i1(i1 %_19, i1 true)
  br i1 %28, label %bb9, label %panic

bb7:                                              ; No predecessors!
  unreachable

bb9:                                              ; preds = %bb6
  %29 = getelementptr inbounds [9 x float], ptr %dest, i64 0, i64 %i
  %_17 = load float, ptr %29, align 4, !noundef !4
  %_22 = icmp ult i64 %i, 9
  %30 = call i1 @llvm.expect.i1(i1 %_22, i1 true)
  br i1 %30, label %bb10, label %panic1

panic:                                            ; preds = %bb6
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 9, ptr align 8 @alloc_f4ed6cdddfc49e3fa5b1bd2744a640cf) #7
  unreachable

bb10:                                             ; preds = %bb9
  %31 = getelementptr inbounds [9 x float], ptr %expected, i64 0, i64 %i
  %_20 = load float, ptr %31, align 4, !noundef !4
  %_16 = fcmp une float %_17, %_20
  br i1 %_16, label %bb11, label %bb4

panic1:                                           ; preds = %bb9
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 9, ptr align 8 @alloc_e16fff8686273831760511027c4f6ecb) #7
  unreachable

bb11:                                             ; preds = %bb10
  store i8 0, ptr %0, align 1
  br label %bb12

bb12:                                             ; preds = %bb11, %bb8
  %32 = load i8, ptr %0, align 1, !range !7, !noundef !4
  %33 = trunc i8 %32 to i1
  ret i1 %33
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9f7abc36e15cad91E"(i64 %self.0, i64 %self.1) unnamed_addr #1 {
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
define internal { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h17437aebf229d8a5E"(ptr align 8 %self) unnamed_addr #1 {
start:
  %self.dbg.spill = alloca ptr, align 8
  store ptr %self, ptr %self.dbg.spill, align 8
  %0 = call { i64, i64 } @"_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17hbea3dee652bdc182E"(ptr align 8 %self)
  %1 = extractvalue { i64, i64 } %0, 0
  %2 = extractvalue { i64, i64 } %0, 1
  %3 = insertvalue { i64, i64 } poison, i64 %1, 0
  %4 = insertvalue { i64, i64 } %3, i64 %2, 1
  ret { i64, i64 } %4
}

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64, i64, ptr align 8) unnamed_addr #5

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @"_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17hbea3dee652bdc182E"(ptr align 8 %self) unnamed_addr #1 {
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
  %_2 = call zeroext i1 @"_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17h57ba4d00761ebca9E"(ptr align 8 %self, ptr align 8 %_4)
  br i1 %_2, label %bb2, label %bb5

bb5:                                              ; preds = %start
  store i64 0, ptr %0, align 8
  br label %bb6

bb2:                                              ; preds = %start
  store ptr %self, ptr %self.dbg.spill.i, align 8
  %1 = load i64, ptr %self, align 8, !noundef !4
  %n = call i64 @"_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17h619a236d4e28969aE"(i64 %1, i64 1)
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
define internal zeroext i1 @"_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17h57ba4d00761ebca9E"(ptr align 8 %self, ptr align 8 %other) unnamed_addr #1 {
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
define internal i64 @"_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17h619a236d4e28969aE"(i64 %start1, i64 %n) unnamed_addr #1 {
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
  %radius.dbg.spill = alloca float, align 4
  %size.dbg.spill = alloca i32, align 4
  %_12 = alloca { i64, i64 }, align 8
  %iter = alloca { i64, i64 }, align 8
  %_10 = alloca { i64, i64 }, align 8
  %expected = alloca [9 x float], align 4
  %dest = alloca [9 x float], align 4
  %0 = alloca i8, align 1
  store i32 9, ptr %size.dbg.spill, align 4
  store float 1.000000e+02, ptr %radius.dbg.spill, align 4
  %1 = getelementptr inbounds [9 x float], ptr %dest, i64 0, i64 0
  %2 = getelementptr inbounds [9 x float], ptr %dest, i64 0, i64 0
  %3 = getelementptr inbounds [9 x float], ptr %dest, i64 0, i64 9
  br label %repeat_loop_header

repeat_loop_header:                               ; preds = %repeat_loop_body, %start
  %4 = phi ptr [ %2, %start ], [ %6, %repeat_loop_body ]
  %5 = icmp ne ptr %4, %3
  br i1 %5, label %repeat_loop_body, label %repeat_loop_next

repeat_loop_body:                                 ; preds = %repeat_loop_header
  store float 0.000000e+00, ptr %4, align 4
  %6 = getelementptr inbounds float, ptr %4, i64 1
  br label %repeat_loop_header

repeat_loop_next:                                 ; preds = %repeat_loop_header
  store ptr %dest, ptr %self.dbg.spill.i, align 8
  %7 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 9, ptr %7, align 8
  call void @gaussian_kernel(ptr %dest, i32 9, float 1.000000e+02)
  %8 = getelementptr inbounds [9 x float], ptr %expected, i64 0, i64 0
  store float 0x3FBC605600000000, ptr %8, align 4
  %9 = getelementptr inbounds [9 x float], ptr %expected, i64 0, i64 1
  store float 0x3FBC6D6820000000, ptr %9, align 4
  %10 = getelementptr inbounds [9 x float], ptr %expected, i64 0, i64 2
  store float 0x3FBC76C200000000, ptr %10, align 4
  %11 = getelementptr inbounds [9 x float], ptr %expected, i64 0, i64 3
  store float 0x3FBC7C5F80000000, ptr %11, align 4
  %12 = getelementptr inbounds [9 x float], ptr %expected, i64 0, i64 4
  store float 0x3FBC7E3F20000000, ptr %12, align 4
  %13 = getelementptr inbounds [9 x float], ptr %expected, i64 0, i64 5
  store float 0x3FBC7C5F80000000, ptr %13, align 4
  %14 = getelementptr inbounds [9 x float], ptr %expected, i64 0, i64 6
  store float 0x3FBC76C200000000, ptr %14, align 4
  %15 = getelementptr inbounds [9 x float], ptr %expected, i64 0, i64 7
  store float 0x3FBC6D6820000000, ptr %15, align 4
  %16 = getelementptr inbounds [9 x float], ptr %expected, i64 0, i64 8
  store float 0x3FBC605600000000, ptr %16, align 4
  store i64 0, ptr %_10, align 8
  %17 = getelementptr inbounds { i64, i64 }, ptr %_10, i32 0, i32 1
  store i64 9, ptr %17, align 8
  %18 = getelementptr inbounds { i64, i64 }, ptr %_10, i32 0, i32 0
  %19 = load i64, ptr %18, align 8, !noundef !4
  %20 = getelementptr inbounds { i64, i64 }, ptr %_10, i32 0, i32 1
  %21 = load i64, ptr %20, align 8, !noundef !4
  %22 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9f7abc36e15cad91E"(i64 %19, i64 %21)
  %_9.0 = extractvalue { i64, i64 } %22, 0
  %_9.1 = extractvalue { i64, i64 } %22, 1
  %23 = getelementptr inbounds { i64, i64 }, ptr %iter, i32 0, i32 0
  store i64 %_9.0, ptr %23, align 8
  %24 = getelementptr inbounds { i64, i64 }, ptr %iter, i32 0, i32 1
  store i64 %_9.1, ptr %24, align 8
  br label %bb4

bb4:                                              ; preds = %bb10, %repeat_loop_next
  %25 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h17437aebf229d8a5E"(ptr align 8 %iter)
  store { i64, i64 } %25, ptr %_12, align 8
  %_14 = load i64, ptr %_12, align 8, !range !6, !noundef !4
  %26 = icmp eq i64 %_14, 0
  br i1 %26, label %bb8, label %bb6

bb8:                                              ; preds = %bb4
  store i8 1, ptr %0, align 1
  br label %bb12

bb6:                                              ; preds = %bb4
  %27 = getelementptr inbounds { i64, i64 }, ptr %_12, i32 0, i32 1
  %i = load i64, ptr %27, align 8, !noundef !4
  store i64 %i, ptr %i.dbg.spill, align 8
  %_19 = icmp ult i64 %i, 9
  %28 = call i1 @llvm.expect.i1(i1 %_19, i1 true)
  br i1 %28, label %bb9, label %panic

bb7:                                              ; No predecessors!
  unreachable

bb9:                                              ; preds = %bb6
  %29 = getelementptr inbounds [9 x float], ptr %dest, i64 0, i64 %i
  %_17 = load float, ptr %29, align 4, !noundef !4
  %_22 = icmp ult i64 %i, 9
  %30 = call i1 @llvm.expect.i1(i1 %_22, i1 true)
  br i1 %30, label %bb10, label %panic1

panic:                                            ; preds = %bb6
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 9, ptr align 8 @alloc_ab1c84cfc9c4bb6c91122bcc4033a369) #7
  unreachable

bb10:                                             ; preds = %bb9
  %31 = getelementptr inbounds [9 x float], ptr %expected, i64 0, i64 %i
  %_20 = load float, ptr %31, align 4, !noundef !4
  %_16 = fcmp une float %_17, %_20
  br i1 %_16, label %bb11, label %bb4

panic1:                                           ; preds = %bb9
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 9, ptr align 8 @alloc_dcef5c092d95b836b5498731e4e6e983) #7
  unreachable

bb11:                                             ; preds = %bb10
  store i8 0, ptr %0, align 1
  br label %bb12

bb12:                                             ; preds = %bb11, %bb8
  %32 = load i8, ptr %0, align 1, !range !7, !noundef !4
  %33 = trunc i8 %32 to i1
  ret i1 %33
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_3() unnamed_addr #0 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %i.dbg.spill = alloca i64, align 8
  %radius.dbg.spill = alloca float, align 4
  %size.dbg.spill = alloca i32, align 4
  %_12 = alloca { i64, i64 }, align 8
  %iter = alloca { i64, i64 }, align 8
  %_10 = alloca { i64, i64 }, align 8
  %expected = alloca [100 x float], align 4
  %dest = alloca [100 x float], align 4
  %0 = alloca i8, align 1
  store i32 100, ptr %size.dbg.spill, align 4
  store float 1.000000e+02, ptr %radius.dbg.spill, align 4
  %1 = getelementptr inbounds [100 x float], ptr %dest, i64 0, i64 0
  %2 = getelementptr inbounds [100 x float], ptr %dest, i64 0, i64 0
  %3 = getelementptr inbounds [100 x float], ptr %dest, i64 0, i64 100
  br label %repeat_loop_header

repeat_loop_header:                               ; preds = %repeat_loop_body, %start
  %4 = phi ptr [ %2, %start ], [ %6, %repeat_loop_body ]
  %5 = icmp ne ptr %4, %3
  br i1 %5, label %repeat_loop_body, label %repeat_loop_next

repeat_loop_body:                                 ; preds = %repeat_loop_header
  store float 0.000000e+00, ptr %4, align 4
  %6 = getelementptr inbounds float, ptr %4, i64 1
  br label %repeat_loop_header

repeat_loop_next:                                 ; preds = %repeat_loop_header
  store ptr %dest, ptr %self.dbg.spill.i, align 8
  %7 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 100, ptr %7, align 8
  call void @gaussian_kernel(ptr %dest, i32 100, float 1.000000e+02)
  %8 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 0
  store float 0x3F7A0CABE0000000, ptr %8, align 4
  %9 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 1
  store float 0x3F7AB8DEE0000000, ptr %9, align 4
  %10 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 2
  store float 0x3F7B65E0C0000000, ptr %10, align 4
  %11 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 3
  store float 0x3F7C1388A0000000, ptr %11, align 4
  %12 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 4
  store float 0x3F7CC1AC60000000, ptr %12, align 4
  %13 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 5
  store float 0x3F7D702120000000, ptr %13, align 4
  %14 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 6
  store float 0x3F7E1EBA20000000, ptr %14, align 4
  %15 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 7
  store float 0x3F7ECD4A60000000, ptr %15, align 4
  %16 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 8
  store float 0x3F7F7BA300000000, ptr %16, align 4
  %17 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 9
  store float 0x3F8014CA60000000, ptr %17, align 4
  %18 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 10
  store float 0x3F806B77C0000000, ptr %18, align 4
  %19 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 11
  store float 0x3F80C1C100000000, ptr %19, align 4
  %20 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 12
  store float 0x3F81178D20000000, ptr %20, align 4
  %21 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 13
  store float 0x3F816CC320000000, ptr %21, align 4
  %22 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 14
  store float 0x3F81C14960000000, ptr %22, align 4
  %23 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 15
  store float 0x3F82150680000000, ptr %23, align 4
  %24 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 16
  store float 0x3F8267E020000000, ptr %24, align 4
  %25 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 17
  store float 0x3F82B9BCE0000000, ptr %25, align 4
  %26 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 18
  store float 0x3F830A8260000000, ptr %26, align 4
  %27 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 19
  store float 0x3F835A16C0000000, ptr %27, align 4
  %28 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 20
  store float 0x3F83A85FE0000000, ptr %28, align 4
  %29 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 21
  store float 0x3F83F54400000000, ptr %29, align 4
  %30 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 22
  store float 0x3F8440A920000000, ptr %30, align 4
  %31 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 23
  store float 0x3F848A7640000000, ptr %31, align 4
  %32 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 24
  store float 0x3F84D291A0000000, ptr %32, align 4
  %33 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 25
  store float 0x3F8518E260000000, ptr %33, align 4
  %34 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 26
  store float 0x3F855D5020000000, ptr %34, align 4
  %35 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 27
  store float 0x3F859FC280000000, ptr %35, align 4
  %36 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 28
  store float 0x3F85E021E0000000, ptr %36, align 4
  %37 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 29
  store float 0x3F861E5740000000, ptr %37, align 4
  %38 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 30
  store float 0x3F865A4C60000000, ptr %38, align 4
  %39 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 31
  store float 0x3F8693EA80000000, ptr %39, align 4
  %40 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 32
  store float 0x3F86CB1D60000000, ptr %40, align 4
  %41 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 33
  store float 0x3F86FFD000000000, ptr %41, align 4
  %42 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 34
  store float 0x3F8731EF00000000, ptr %42, align 4
  %43 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 35
  store float 0x3F87616760000000, ptr %43, align 4
  %44 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 36
  store float 0x3F878E27C0000000, ptr %44, align 4
  %45 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 37
  store float 0x3F87B81E60000000, ptr %45, align 4
  %46 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 38
  store float 0x3F87DF3BC0000000, ptr %46, align 4
  %47 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 39
  store float 0x3F880370E0000000, ptr %47, align 4
  %48 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 40
  store float 0x3F8824AFC0000000, ptr %48, align 4
  %49 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 41
  store float 0x3F8842EBA0000000, ptr %49, align 4
  %50 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 42
  store float 0x3F885E18C0000000, ptr %50, align 4
  %51 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 43
  store float 0x3F88762CA0000000, ptr %51, align 4
  %52 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 44
  store float 0x3F888B1DC0000000, ptr %52, align 4
  %53 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 45
  store float 0x3F889CE420000000, ptr %53, align 4
  %54 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 46
  store float 0x3F88AB78A0000000, ptr %54, align 4
  %55 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 47
  store float 0x3F88B6D5A0000000, ptr %55, align 4
  %56 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 48
  store float 0x3F88BEF6E0000000, ptr %56, align 4
  %57 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 49
  store float 0x3F88C3D8A0000000, ptr %57, align 4
  %58 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 50
  store float 0x3F88C57980000000, ptr %58, align 4
  %59 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 51
  store float 0x3F88C3D8A0000000, ptr %59, align 4
  %60 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 52
  store float 0x3F88BEF6E0000000, ptr %60, align 4
  %61 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 53
  store float 0x3F88B6D5A0000000, ptr %61, align 4
  %62 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 54
  store float 0x3F88AB78A0000000, ptr %62, align 4
  %63 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 55
  store float 0x3F889CE420000000, ptr %63, align 4
  %64 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 56
  store float 0x3F888B1DC0000000, ptr %64, align 4
  %65 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 57
  store float 0x3F88762CA0000000, ptr %65, align 4
  %66 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 58
  store float 0x3F885E18C0000000, ptr %66, align 4
  %67 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 59
  store float 0x3F8842EBA0000000, ptr %67, align 4
  %68 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 60
  store float 0x3F8824AFC0000000, ptr %68, align 4
  %69 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 61
  store float 0x3F880370E0000000, ptr %69, align 4
  %70 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 62
  store float 0x3F87DF3BC0000000, ptr %70, align 4
  %71 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 63
  store float 0x3F87B81E60000000, ptr %71, align 4
  %72 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 64
  store float 0x3F878E27C0000000, ptr %72, align 4
  %73 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 65
  store float 0x3F87616760000000, ptr %73, align 4
  %74 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 66
  store float 0x3F8731EF00000000, ptr %74, align 4
  %75 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 67
  store float 0x3F86FFD000000000, ptr %75, align 4
  %76 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 68
  store float 0x3F86CB1D60000000, ptr %76, align 4
  %77 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 69
  store float 0x3F8693EA80000000, ptr %77, align 4
  %78 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 70
  store float 0x3F865A4C60000000, ptr %78, align 4
  %79 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 71
  store float 0x3F861E5740000000, ptr %79, align 4
  %80 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 72
  store float 0x3F85E021E0000000, ptr %80, align 4
  %81 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 73
  store float 0x3F859FC280000000, ptr %81, align 4
  %82 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 74
  store float 0x3F855D5020000000, ptr %82, align 4
  %83 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 75
  store float 0x3F8518E260000000, ptr %83, align 4
  %84 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 76
  store float 0x3F84D291A0000000, ptr %84, align 4
  %85 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 77
  store float 0x3F848A7640000000, ptr %85, align 4
  %86 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 78
  store float 0x3F8440A920000000, ptr %86, align 4
  %87 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 79
  store float 0x3F83F54400000000, ptr %87, align 4
  %88 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 80
  store float 0x3F83A85FE0000000, ptr %88, align 4
  %89 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 81
  store float 0x3F835A16C0000000, ptr %89, align 4
  %90 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 82
  store float 0x3F830A8260000000, ptr %90, align 4
  %91 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 83
  store float 0x3F82B9BCE0000000, ptr %91, align 4
  %92 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 84
  store float 0x3F8267E020000000, ptr %92, align 4
  %93 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 85
  store float 0x3F82150680000000, ptr %93, align 4
  %94 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 86
  store float 0x3F81C14960000000, ptr %94, align 4
  %95 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 87
  store float 0x3F816CC320000000, ptr %95, align 4
  %96 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 88
  store float 0x3F81178D20000000, ptr %96, align 4
  %97 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 89
  store float 0x3F80C1C100000000, ptr %97, align 4
  %98 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 90
  store float 0x3F806B77C0000000, ptr %98, align 4
  %99 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 91
  store float 0x3F8014CA60000000, ptr %99, align 4
  %100 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 92
  store float 0x3F7F7BA300000000, ptr %100, align 4
  %101 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 93
  store float 0x3F7ECD4A60000000, ptr %101, align 4
  %102 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 94
  store float 0x3F7E1EBA20000000, ptr %102, align 4
  %103 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 95
  store float 0x3F7D702120000000, ptr %103, align 4
  %104 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 96
  store float 0x3F7CC1AC60000000, ptr %104, align 4
  %105 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 97
  store float 0x3F7C1388A0000000, ptr %105, align 4
  %106 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 98
  store float 0x3F7B65E0C0000000, ptr %106, align 4
  %107 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 99
  store float 0x3F7AB8DEE0000000, ptr %107, align 4
  store i64 0, ptr %_10, align 8
  %108 = getelementptr inbounds { i64, i64 }, ptr %_10, i32 0, i32 1
  store i64 100, ptr %108, align 8
  %109 = getelementptr inbounds { i64, i64 }, ptr %_10, i32 0, i32 0
  %110 = load i64, ptr %109, align 8, !noundef !4
  %111 = getelementptr inbounds { i64, i64 }, ptr %_10, i32 0, i32 1
  %112 = load i64, ptr %111, align 8, !noundef !4
  %113 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9f7abc36e15cad91E"(i64 %110, i64 %112)
  %_9.0 = extractvalue { i64, i64 } %113, 0
  %_9.1 = extractvalue { i64, i64 } %113, 1
  %114 = getelementptr inbounds { i64, i64 }, ptr %iter, i32 0, i32 0
  store i64 %_9.0, ptr %114, align 8
  %115 = getelementptr inbounds { i64, i64 }, ptr %iter, i32 0, i32 1
  store i64 %_9.1, ptr %115, align 8
  br label %bb4

bb4:                                              ; preds = %bb10, %repeat_loop_next
  %116 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h17437aebf229d8a5E"(ptr align 8 %iter)
  store { i64, i64 } %116, ptr %_12, align 8
  %_14 = load i64, ptr %_12, align 8, !range !6, !noundef !4
  %117 = icmp eq i64 %_14, 0
  br i1 %117, label %bb8, label %bb6

bb8:                                              ; preds = %bb4
  store i8 1, ptr %0, align 1
  br label %bb12

bb6:                                              ; preds = %bb4
  %118 = getelementptr inbounds { i64, i64 }, ptr %_12, i32 0, i32 1
  %i = load i64, ptr %118, align 8, !noundef !4
  store i64 %i, ptr %i.dbg.spill, align 8
  %_19 = icmp ult i64 %i, 100
  %119 = call i1 @llvm.expect.i1(i1 %_19, i1 true)
  br i1 %119, label %bb9, label %panic

bb7:                                              ; No predecessors!
  unreachable

bb9:                                              ; preds = %bb6
  %120 = getelementptr inbounds [100 x float], ptr %dest, i64 0, i64 %i
  %_17 = load float, ptr %120, align 4, !noundef !4
  %_22 = icmp ult i64 %i, 100
  %121 = call i1 @llvm.expect.i1(i1 %_22, i1 true)
  br i1 %121, label %bb10, label %panic1

panic:                                            ; preds = %bb6
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 100, ptr align 8 @alloc_9ef9647368af8086374d0252af321aed) #7
  unreachable

bb10:                                             ; preds = %bb9
  %122 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 %i
  %_20 = load float, ptr %122, align 4, !noundef !4
  %_16 = fcmp une float %_17, %_20
  br i1 %_16, label %bb11, label %bb4

panic1:                                           ; preds = %bb9
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 100, ptr align 8 @alloc_a8078fc89ce44aaf9a58b3cef0a32a51) #7
  unreachable

bb11:                                             ; preds = %bb10
  store i8 0, ptr %0, align 1
  br label %bb12

bb12:                                             ; preds = %bb11, %bb8
  %123 = load i8, ptr %0, align 1, !range !7, !noundef !4
  %124 = trunc i8 %123 to i1
  ret i1 %124
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_4() unnamed_addr #0 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %i.dbg.spill = alloca i64, align 8
  %radius.dbg.spill = alloca float, align 4
  %size.dbg.spill = alloca i32, align 4
  %_12 = alloca { i64, i64 }, align 8
  %iter = alloca { i64, i64 }, align 8
  %_10 = alloca { i64, i64 }, align 8
  %expected = alloca [9 x float], align 4
  %dest = alloca [9 x float], align 4
  %0 = alloca i8, align 1
  store i32 9, ptr %size.dbg.spill, align 4
  store float 0x3F847AE140000000, ptr %radius.dbg.spill, align 4
  %1 = getelementptr inbounds [9 x float], ptr %dest, i64 0, i64 0
  %2 = getelementptr inbounds [9 x float], ptr %dest, i64 0, i64 0
  %3 = getelementptr inbounds [9 x float], ptr %dest, i64 0, i64 9
  br label %repeat_loop_header

repeat_loop_header:                               ; preds = %repeat_loop_body, %start
  %4 = phi ptr [ %2, %start ], [ %6, %repeat_loop_body ]
  %5 = icmp ne ptr %4, %3
  br i1 %5, label %repeat_loop_body, label %repeat_loop_next

repeat_loop_body:                                 ; preds = %repeat_loop_header
  store float 0.000000e+00, ptr %4, align 4
  %6 = getelementptr inbounds float, ptr %4, i64 1
  br label %repeat_loop_header

repeat_loop_next:                                 ; preds = %repeat_loop_header
  store ptr %dest, ptr %self.dbg.spill.i, align 8
  %7 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 9, ptr %7, align 8
  call void @gaussian_kernel(ptr %dest, i32 9, float 0x3F847AE140000000)
  %8 = getelementptr inbounds [9 x float], ptr %expected, i64 0, i64 0
  store float 0.000000e+00, ptr %8, align 4
  %9 = getelementptr inbounds [9 x float], ptr %expected, i64 0, i64 1
  store float 0.000000e+00, ptr %9, align 4
  %10 = getelementptr inbounds [9 x float], ptr %expected, i64 0, i64 2
  store float 0.000000e+00, ptr %10, align 4
  %11 = getelementptr inbounds [9 x float], ptr %expected, i64 0, i64 3
  store float 0.000000e+00, ptr %11, align 4
  %12 = getelementptr inbounds [9 x float], ptr %expected, i64 0, i64 4
  store float 1.000000e+00, ptr %12, align 4
  %13 = getelementptr inbounds [9 x float], ptr %expected, i64 0, i64 5
  store float 0.000000e+00, ptr %13, align 4
  %14 = getelementptr inbounds [9 x float], ptr %expected, i64 0, i64 6
  store float 0.000000e+00, ptr %14, align 4
  %15 = getelementptr inbounds [9 x float], ptr %expected, i64 0, i64 7
  store float 0.000000e+00, ptr %15, align 4
  %16 = getelementptr inbounds [9 x float], ptr %expected, i64 0, i64 8
  store float 0.000000e+00, ptr %16, align 4
  store i64 0, ptr %_10, align 8
  %17 = getelementptr inbounds { i64, i64 }, ptr %_10, i32 0, i32 1
  store i64 9, ptr %17, align 8
  %18 = getelementptr inbounds { i64, i64 }, ptr %_10, i32 0, i32 0
  %19 = load i64, ptr %18, align 8, !noundef !4
  %20 = getelementptr inbounds { i64, i64 }, ptr %_10, i32 0, i32 1
  %21 = load i64, ptr %20, align 8, !noundef !4
  %22 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h9f7abc36e15cad91E"(i64 %19, i64 %21)
  %_9.0 = extractvalue { i64, i64 } %22, 0
  %_9.1 = extractvalue { i64, i64 } %22, 1
  %23 = getelementptr inbounds { i64, i64 }, ptr %iter, i32 0, i32 0
  store i64 %_9.0, ptr %23, align 8
  %24 = getelementptr inbounds { i64, i64 }, ptr %iter, i32 0, i32 1
  store i64 %_9.1, ptr %24, align 8
  br label %bb4

bb4:                                              ; preds = %bb10, %repeat_loop_next
  %25 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h17437aebf229d8a5E"(ptr align 8 %iter)
  store { i64, i64 } %25, ptr %_12, align 8
  %_14 = load i64, ptr %_12, align 8, !range !6, !noundef !4
  %26 = icmp eq i64 %_14, 0
  br i1 %26, label %bb8, label %bb6

bb8:                                              ; preds = %bb4
  store i8 1, ptr %0, align 1
  br label %bb12

bb6:                                              ; preds = %bb4
  %27 = getelementptr inbounds { i64, i64 }, ptr %_12, i32 0, i32 1
  %i = load i64, ptr %27, align 8, !noundef !4
  store i64 %i, ptr %i.dbg.spill, align 8
  %_19 = icmp ult i64 %i, 9
  %28 = call i1 @llvm.expect.i1(i1 %_19, i1 true)
  br i1 %28, label %bb9, label %panic

bb7:                                              ; No predecessors!
  unreachable

bb9:                                              ; preds = %bb6
  %29 = getelementptr inbounds [9 x float], ptr %dest, i64 0, i64 %i
  %_17 = load float, ptr %29, align 4, !noundef !4
  %_22 = icmp ult i64 %i, 9
  %30 = call i1 @llvm.expect.i1(i1 %_22, i1 true)
  br i1 %30, label %bb10, label %panic1

panic:                                            ; preds = %bb6
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 9, ptr align 8 @alloc_191c2b0a91cfa92597b251cc2ead9c33) #7
  unreachable

bb10:                                             ; preds = %bb9
  %31 = getelementptr inbounds [9 x float], ptr %expected, i64 0, i64 %i
  %_20 = load float, ptr %31, align 4, !noundef !4
  %_16 = fcmp une float %_17, %_20
  br i1 %_16, label %bb11, label %bb4

panic1:                                           ; preds = %bb9
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 9, ptr align 8 @alloc_ed763bbe9029f682d996c75b04205ede) #7
  unreachable

bb11:                                             ; preds = %bb10
  store i8 0, ptr %0, align 1
  br label %bb12

bb12:                                             ; preds = %bb11, %bb8
  %32 = load i8, ptr %0, align 1, !range !7, !noundef !4
  %33 = trunc i8 %32 to i1
  ret i1 %33
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_5() unnamed_addr #0 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %radius.dbg.spill = alloca float, align 4
  %size.dbg.spill = alloca i32, align 4
  %expected = alloca [1 x float], align 4
  %dest = alloca [1 x float], align 4
  %0 = alloca i8, align 1
  store i32 1, ptr %size.dbg.spill, align 4
  store float 1.000000e+09, ptr %radius.dbg.spill, align 4
  %1 = getelementptr inbounds [1 x float], ptr %dest, i64 0, i64 0
  %2 = getelementptr inbounds [1 x float], ptr %dest, i64 0, i64 0
  %3 = getelementptr inbounds [1 x float], ptr %dest, i64 0, i64 1
  br label %repeat_loop_header

repeat_loop_header:                               ; preds = %repeat_loop_body, %start
  %4 = phi ptr [ %2, %start ], [ %6, %repeat_loop_body ]
  %5 = icmp ne ptr %4, %3
  br i1 %5, label %repeat_loop_body, label %repeat_loop_next

repeat_loop_body:                                 ; preds = %repeat_loop_header
  store float 0.000000e+00, ptr %4, align 4
  %6 = getelementptr inbounds float, ptr %4, i64 1
  br label %repeat_loop_header

repeat_loop_next:                                 ; preds = %repeat_loop_header
  store ptr %dest, ptr %self.dbg.spill.i, align 8
  %7 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 1, ptr %7, align 8
  call void @gaussian_kernel(ptr %dest, i32 1, float 1.000000e+09)
  %8 = getelementptr inbounds [1 x float], ptr %expected, i64 0, i64 0
  store float 1.000000e+00, ptr %8, align 4
  %9 = getelementptr inbounds [1 x float], ptr %dest, i64 0, i64 0
  %_10 = load float, ptr %9, align 4, !noundef !4
  %_9 = fcmp une float %_10, 1.000000e+00
  br i1 %_9, label %bb3, label %bb4

bb4:                                              ; preds = %repeat_loop_next
  store i8 1, ptr %0, align 1
  br label %bb5

bb3:                                              ; preds = %repeat_loop_next
  store i8 0, ptr %0, align 1
  br label %bb5

bb5:                                              ; preds = %bb3, %bb4
  %10 = load i8, ptr %0, align 1, !range !7, !noundef !4
  %11 = trunc i8 %10 to i1
  ret i1 %11
}

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 2, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{}
!5 = !{i64 4}
!6 = !{i64 0, i64 2}
!7 = !{i8 0, i8 2}
