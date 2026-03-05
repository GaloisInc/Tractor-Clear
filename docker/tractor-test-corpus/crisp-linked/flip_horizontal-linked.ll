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
%"core::ptr::metadata::PtrRepr<[src::lib::CpPixelT]>" = type { [2 x i64] }
%"core::fmt::Arguments<'_>" = type { { ptr, i64 }, { ptr, i64 }, { ptr, i64 } }
%"core::mem::maybe_uninit::MaybeUninit<src::lib::CpPixelT>" = type { [4 x i8] }
%"src::lib::CpPixelT" = type { i8, i8, i8, i8 }

@alloc_91c7fa63c3cfeaa3c795652d5cf060e4 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"invalid args" }>, align 1
@alloc_560206a49c61adca6f3f0639a12632eb = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @alloc_91c7fa63c3cfeaa3c795652d5cf060e4, [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@alloc_f10aefbaa017571c73440d72f9d761c9 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/fmt/mod.rs" }>, align 1
@alloc_fac9b2bfef1487396ce3a9bad0068a7e = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f10aefbaa017571c73440d72f9d761c9, [16 x i8] c"K\00\00\00\00\00\00\00\91\01\00\00\0D\00\00\00" }>, align 8
@alloc_513570631223a12912d85da2bec3b15a = private unnamed_addr constant <{}> zeroinitializer, align 8
@alloc_fddaeef1fe1a23c45402ef8f58614acb = private unnamed_addr constant <{ [35 x i8] }> <{ [35 x i8] c"assertion failed: mid <= self.len()" }>, align 1
@alloc_22d400c7b835b5bba9ba03229c44bdea = private unnamed_addr constant <{ [52 x i8] }> <{ [52 x i8] c"destination and source slices have different lengths" }>, align 1
@alloc_94f3a08e137bbd5a87c396537c0c442a = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @alloc_22d400c7b835b5bba9ba03229c44bdea, [8 x i8] c"4\00\00\00\00\00\00\00" }>, align 8
@alloc_f5ffd2fd1476bab43ad89fb40c72d0c5 = private unnamed_addr constant <{ [10 x i8] }> <{ [10 x i8] c"src/lib.rs" }>, align 1
@alloc_5728ff83931b4639d3f15d67aa217529 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\000\00\00\00\19\00\00\00" }>, align 8
@str.0 = internal constant [33 x i8] c"attempt to multiply with overflow"
@alloc_55b5d8f182c27328dfa897bbaee6d09a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\001\00\00\00!\00\00\00" }>, align 8
@str.1 = internal constant [33 x i8] c"attempt to subtract with overflow"
@alloc_a3096fd13d4b8400dfd9030de42c45b8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\001\00\00\00 \00\00\00" }>, align 8
@alloc_2461b9c45f533746b880b37292cfd708 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\001\00\00\00\1C\00\00\00" }>, align 8
@alloc_763531c98a623cb6e9a434f053ab51f2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\003\00\00\00+\00\00\00" }>, align 8
@alloc_271250bad09801fdc50030f16077157a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\004\00\00\000\00\00\00" }>, align 8
@str.2 = internal constant [28 x i8] c"attempt to add with overflow"
@alloc_f3ec06f0b9e8e4bb32e22838361dd7de = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\004\00\00\00\1C\00\00\00" }>, align 8
@alloc_1da16a339a8893159e6dbc2215804eee = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\005\00\00\00\1F\00\00\00" }>, align 8
@alloc_5e4e4ccdf99c0c4e37187c1db4ae4d54 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\007\00\00\00\11\00\00\00" }>, align 8
@alloc_5dfdc76f6a3ed58e4d59871e1185ca80 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00>\00\00\00\19\00\00\00" }>, align 8
@alloc_c98aab89a0ba048eccbf4b40092d097a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00o\00\00\00\0C\00\00\00" }>, align 8
@alloc_c065d6da53a1d14022335d225ec4b9dc = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00o\00\00\00\18\00\00\00" }>, align 8
@alloc_a49e62c3cf9266ab428e68e732cf7633 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00o\00\00\00)\00\00\00" }>, align 8
@alloc_6e53deb12cfceb1176fdfcbe54e5f116 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00o\00\00\005\00\00\00" }>, align 8
@alloc_fb67f45825753652d4a21ad4d31e331c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00p\00\00\00\10\00\00\00" }>, align 8
@alloc_a8aa1402a8c00e42091950a5857ba703 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00p\00\00\00\1C\00\00\00" }>, align 8
@alloc_773c185baee2769f0de9a4785c96c986 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00p\00\00\00-\00\00\00" }>, align 8
@alloc_e912690185a66a07ea9ec61b7872900d = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00p\00\00\009\00\00\00" }>, align 8
@alloc_49fcf67c4bd21976b6b732b8b108bd11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\A5\00\00\00\0C\00\00\00" }>, align 8
@alloc_c9bf2ddf222b7fb91cb926cfd567efd0 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\A5\00\00\00\18\00\00\00" }>, align 8
@alloc_4a13c2563b3f6bcfd680e48b26606443 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\A5\00\00\00)\00\00\00" }>, align 8
@alloc_cbd50bc2e2b285856b19e018fbb9d78b = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\A5\00\00\005\00\00\00" }>, align 8
@alloc_954c0b78425366a4eddc8fe05f30d43c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\A6\00\00\00\10\00\00\00" }>, align 8
@alloc_bbf14c299cf08e7e747cc5e7d433ca67 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\A6\00\00\00\1C\00\00\00" }>, align 8
@alloc_489536f5d74f82227d98a054147a0af2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\A6\00\00\00-\00\00\00" }>, align 8
@alloc_71b503b4923202afddfaa2c24010b31c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\A6\00\00\009\00\00\00" }>, align 8
@alloc_bced08fde2c409ec9cd52b3190c25bdd = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\DB\00\00\00\0C\00\00\00" }>, align 8
@alloc_2b9a5b7616955f31c1e7c94370bbb15c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\DB\00\00\00\18\00\00\00" }>, align 8
@alloc_2f03392ad3b676596def755b1c66b513 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\DB\00\00\00)\00\00\00" }>, align 8
@alloc_9941eb6bcb1a398fb6e22f95a6625fde = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\DB\00\00\005\00\00\00" }>, align 8
@alloc_4a374c6f5bc7693b7f2b36394711af74 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\DC\00\00\00\10\00\00\00" }>, align 8
@alloc_6e5895018258916dd5da53b05a5d0a31 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\DC\00\00\00\1C\00\00\00" }>, align 8
@alloc_a9c9d5cf9b08c15d827d720e9ae81950 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\DC\00\00\00-\00\00\00" }>, align 8
@alloc_45f478d2c0c33f6fa87891a9bbe9e638 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\DC\00\00\009\00\00\00" }>, align 8
@alloc_0bf4db5d2d74b680fe2fba93d56aa075 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\11\01\00\00\0C\00\00\00" }>, align 8
@alloc_0ef97b999b87de931e88af9b6008ce84 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\11\01\00\00\18\00\00\00" }>, align 8
@alloc_dd51a0e96554aa8519d1905638dd9ed1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\11\01\00\00)\00\00\00" }>, align 8
@alloc_abed534d78fe83285195251241279d1f = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\11\01\00\005\00\00\00" }>, align 8
@alloc_9a11c590b6d786abe6c4d0a0b9377442 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\12\01\00\00\10\00\00\00" }>, align 8
@alloc_669e143b579a2313cf998b6557e34d76 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\12\01\00\00\1C\00\00\00" }>, align 8
@alloc_4386581fb904acfaaa9d2e27355e816b = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\12\01\00\00-\00\00\00" }>, align 8
@alloc_257258b6eef9503606085dc86273c743 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\12\01\00\009\00\00\00" }>, align 8
@alloc_901e997463b21e6161114b30ea0dd439 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00G\01\00\00\0C\00\00\00" }>, align 8
@alloc_a2e5d7c33dbc9828707a1558a7b33247 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00G\01\00\00\18\00\00\00" }>, align 8
@alloc_7d100bb3eacf6b328c94fd101159589b = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00G\01\00\00)\00\00\00" }>, align 8
@alloc_5d5a91849d70319fa9dbb97b54f75406 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00G\01\00\005\00\00\00" }>, align 8
@alloc_d8f5fff258f48d52d0706fb5fda8f28f = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00H\01\00\00\10\00\00\00" }>, align 8
@alloc_7d18f42d878201001132fe29daea4766 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00H\01\00\00\1C\00\00\00" }>, align 8
@alloc_955b6b1757a32572a1487dda42ff0e20 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00H\01\00\00-\00\00\00" }>, align 8
@alloc_d288a0c1c8a8154464a7100830307491 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00H\01\00\009\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define void @flip_horizontal(ptr %img) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %img.dbg.spill = alloca ptr, align 8
  store ptr %img, ptr %img.dbg.spill, align 8
  %_3 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h137174afca1e361fE"(ptr %img)
  %_2 = xor i1 %_3, true
  br i1 %_2, label %bb2, label %bb3

bb3:                                              ; preds = %bb4, %start
  ret void

bb2:                                              ; preds = %start
  %_6 = ptrtoint ptr %img to i64
  %_9 = and i64 %_6, 7
  %_10 = icmp eq i64 %_9, 0
  %0 = call i1 @llvm.expect.i1(i1 %_10, i1 true)
  br i1 %0, label %bb4, label %panic

bb4:                                              ; preds = %bb2
  call void @_ZN19flip_horizontal_lib3src3lib15flip_horizontal17h6d9b19c437c2e2e4E(ptr align 8 %img)
  br label %bb3

panic:                                            ; preds = %bb2
  invoke void @_ZN4core9panicking36panic_misaligned_pointer_dereference17h587229c42ea18e2bE(i64 8, i64 %_6, ptr align 8 @alloc_5dfdc76f6a3ed58e4d59871e1185ca80) #7
          to label %unreachable unwind label %terminate

terminate:                                        ; preds = %panic
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  call void @_ZN4core9panicking19panic_cannot_unwind17h629e1da841ab4abfE() #8
  unreachable

unreachable:                                      ; preds = %panic
  unreachable
}

; Function Attrs: nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h137174afca1e361fE"(ptr %self) unnamed_addr #1 {
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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.expect.i1(i1, i1) #2

; Function Attrs: nonlazybind uwtable
define internal void @_ZN19flip_horizontal_lib3src3lib15flip_horizontal17h6d9b19c437c2e2e4E(ptr align 8 %img) unnamed_addr #0 {
start:
  %bottom_row.dbg.spill = alloca { ptr, i64 }, align 8
  %top_row.dbg.spill = alloca { ptr, i64 }, align 8
  %bottom_part.dbg.spill = alloca { ptr, i64 }, align 8
  %top_part.dbg.spill = alloca { ptr, i64 }, align 8
  %bottom_start.dbg.spill = alloca i64, align 8
  %top_start.dbg.spill = alloca i64, align 8
  %i.dbg.spill = alloca i64, align 8
  %pix.dbg.spill = alloca { ptr, i64 }, align 8
  %expected_len.dbg.spill = alloca i64, align 8
  %flips.dbg.spill = alloca i64, align 8
  %h.dbg.spill = alloca i64, align 8
  %w.dbg.spill = alloca i64, align 8
  %img.dbg.spill = alloca ptr, align 8
  %_46 = alloca i64, align 8
  %_41 = alloca { i64, i64 }, align 8
  %_38 = alloca { { ptr, i64 }, { ptr, i64 } }, align 8
  %_24 = alloca { i64, i64 }, align 8
  %iter = alloca { i64, i64 }, align 8
  %_22 = alloca { i64, i64 }, align 8
  %_13 = alloca { i64, i64 }, align 8
  %_11 = alloca i8, align 1
  %_6 = alloca { i64, i64 }, align 8
  %_2 = alloca { i64, i64 }, align 8
  store ptr %img, ptr %img.dbg.spill, align 8
  %_3 = load i32, ptr %img, align 8, !noundef !4
  %0 = call { i64, i64 } @"_ZN4core7convert3num18ptr_try_from_impls69_$LT$impl$u20$core..convert..TryFrom$LT$i32$GT$$u20$for$u20$usize$GT$8try_from17hb3a276eec9cfea97E"(i32 %_3)
  store { i64, i64 } %0, ptr %_2, align 8
  %_4 = load i64, ptr %_2, align 8, !range !5, !noundef !4
  %1 = icmp eq i64 %_4, 0
  br i1 %1, label %bb3, label %bb27

bb3:                                              ; preds = %start
  %2 = getelementptr inbounds { i64, i64 }, ptr %_2, i32 0, i32 1
  %w = load i64, ptr %2, align 8, !noundef !4
  store i64 %w, ptr %w.dbg.spill, align 8
  %3 = getelementptr inbounds %"src::lib::CpImageT", ptr %img, i32 0, i32 1
  %_7 = load i32, ptr %3, align 4, !noundef !4
  %4 = call { i64, i64 } @"_ZN4core7convert3num18ptr_try_from_impls69_$LT$impl$u20$core..convert..TryFrom$LT$i32$GT$$u20$for$u20$usize$GT$8try_from17hb3a276eec9cfea97E"(i32 %_7)
  store { i64, i64 } %4, ptr %_6, align 8
  %_8 = load i64, ptr %_6, align 8, !range !5, !noundef !4
  %5 = icmp eq i64 %_8, 0
  br i1 %5, label %bb5, label %bb27

bb27:                                             ; preds = %bb16, %bb11, %bb9, %bb8, %bb3, %start
  ret void

bb5:                                              ; preds = %bb3
  %6 = getelementptr inbounds { i64, i64 }, ptr %_6, i32 0, i32 1
  %h = load i64, ptr %6, align 8, !noundef !4
  store i64 %h, ptr %h.dbg.spill, align 8
  %flips = udiv i64 %h, 2
  store i64 %flips, ptr %flips.dbg.spill, align 8
  %7 = icmp eq i64 %w, 0
  br i1 %7, label %bb6, label %bb7

bb6:                                              ; preds = %bb5
  store i8 1, ptr %_11, align 1
  br label %bb8

bb7:                                              ; preds = %bb5
  %_12 = icmp eq i64 %h, 0
  %8 = zext i1 %_12 to i8
  store i8 %8, ptr %_11, align 1
  br label %bb8

bb8:                                              ; preds = %bb7, %bb6
  %9 = load i8, ptr %_11, align 1, !range !6, !noundef !4
  %10 = trunc i8 %9 to i1
  br i1 %10, label %bb27, label %bb9

bb9:                                              ; preds = %bb8
  %11 = call { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17hedc86bb381827113E"(i64 %w, i64 %h)
  store { i64, i64 } %11, ptr %_13, align 8
  %_14 = load i64, ptr %_13, align 8, !range !5, !noundef !4
  %12 = icmp eq i64 %_14, 0
  br i1 %12, label %bb27, label %bb11

bb11:                                             ; preds = %bb9
  %13 = getelementptr inbounds { i64, i64 }, ptr %_13, i32 0, i32 1
  %expected_len = load i64, ptr %13, align 8, !noundef !4
  store i64 %expected_len, ptr %expected_len.dbg.spill, align 8
  %14 = getelementptr inbounds %"src::lib::CpImageT", ptr %img, i32 0, i32 2
  %_17 = load ptr, ptr %14, align 8, !noundef !4
  %_16 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h4b6141a64bf5b047E"(ptr %_17)
  br i1 %_16, label %bb27, label %bb13

bb13:                                             ; preds = %bb11
  %15 = getelementptr inbounds %"src::lib::CpImageT", ptr %img, i32 0, i32 2
  %_20 = load ptr, ptr %15, align 8, !noundef !4
  %16 = call { ptr, i64 } @_ZN4core5slice3raw18from_raw_parts_mut17hd1c71665b68c1355E(ptr %_20, i64 %expected_len)
  %_19.0 = extractvalue { ptr, i64 } %16, 0
  %_19.1 = extractvalue { ptr, i64 } %16, 1
  %17 = getelementptr inbounds { ptr, i64 }, ptr %pix.dbg.spill, i32 0, i32 0
  store ptr %_19.0, ptr %17, align 8
  %18 = getelementptr inbounds { ptr, i64 }, ptr %pix.dbg.spill, i32 0, i32 1
  store i64 %_19.1, ptr %18, align 8
  store i64 0, ptr %_22, align 8
  %19 = getelementptr inbounds { i64, i64 }, ptr %_22, i32 0, i32 1
  store i64 %flips, ptr %19, align 8
  %20 = getelementptr inbounds { i64, i64 }, ptr %_22, i32 0, i32 0
  %21 = load i64, ptr %20, align 8, !noundef !4
  %22 = getelementptr inbounds { i64, i64 }, ptr %_22, i32 0, i32 1
  %23 = load i64, ptr %22, align 8, !noundef !4
  %24 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h94e35dcbe65505f3E"(i64 %21, i64 %23)
  %_21.0 = extractvalue { i64, i64 } %24, 0
  %_21.1 = extractvalue { i64, i64 } %24, 1
  %25 = getelementptr inbounds { i64, i64 }, ptr %iter, i32 0, i32 0
  store i64 %_21.0, ptr %25, align 8
  %26 = getelementptr inbounds { i64, i64 }, ptr %iter, i32 0, i32 1
  store i64 %_21.1, ptr %26, align 8
  br label %bb16

bb16:                                             ; preds = %bb24, %bb13
  %27 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17he7bbdf001a7ba4ddE"(ptr align 8 %iter)
  store { i64, i64 } %27, ptr %_24, align 8
  %_26 = load i64, ptr %_24, align 8, !range !5, !noundef !4
  %28 = icmp eq i64 %_26, 0
  br i1 %28, label %bb27, label %bb18

bb18:                                             ; preds = %bb16
  %29 = getelementptr inbounds { i64, i64 }, ptr %_24, i32 0, i32 1
  %i = load i64, ptr %29, align 8, !noundef !4
  store i64 %i, ptr %i.dbg.spill, align 8
  %30 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %w, i64 %i)
  %_29.0 = extractvalue { i64, i1 } %30, 0
  %_29.1 = extractvalue { i64, i1 } %30, 1
  %31 = call i1 @llvm.expect.i1(i1 %_29.1, i1 false)
  br i1 %31, label %panic, label %bb19

bb2:                                              ; No predecessors!
  unreachable

bb19:                                             ; preds = %bb18
  store i64 %_29.0, ptr %top_start.dbg.spill, align 8
  %_33.0 = sub i64 %h, %i
  %_33.1 = icmp ult i64 %h, %i
  %32 = call i1 @llvm.expect.i1(i1 %_33.1, i1 false)
  br i1 %32, label %panic1, label %bb20

panic:                                            ; preds = %bb18
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.0, i64 33, ptr align 8 @alloc_5728ff83931b4639d3f15d67aa217529) #7
  unreachable

bb20:                                             ; preds = %bb19
  %_34.0 = sub i64 %_33.0, 1
  %_34.1 = icmp ult i64 %_33.0, 1
  %33 = call i1 @llvm.expect.i1(i1 %_34.1, i1 false)
  br i1 %33, label %panic2, label %bb21

panic1:                                           ; preds = %bb19
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.1, i64 33, ptr align 8 @alloc_55b5d8f182c27328dfa897bbaee6d09a) #7
  unreachable

bb21:                                             ; preds = %bb20
  %34 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %w, i64 %_34.0)
  %_35.0 = extractvalue { i64, i1 } %34, 0
  %_35.1 = extractvalue { i64, i1 } %34, 1
  %35 = call i1 @llvm.expect.i1(i1 %_35.1, i1 false)
  br i1 %35, label %panic3, label %bb22

panic2:                                           ; preds = %bb20
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.1, i64 33, ptr align 8 @alloc_a3096fd13d4b8400dfd9030de42c45b8) #7
  unreachable

bb22:                                             ; preds = %bb21
  store i64 %_35.0, ptr %bottom_start.dbg.spill, align 8
  call void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hbd54383a03eb47a3E"(ptr sret({ { ptr, i64 }, { ptr, i64 } }) %_38, ptr align 1 %_19.0, i64 %_19.1, i64 %_35.0, ptr align 8 @alloc_763531c98a623cb6e9a434f053ab51f2)
  %36 = getelementptr inbounds { ptr, i64 }, ptr %_38, i32 0, i32 0
  %top_part.0 = load ptr, ptr %36, align 8, !nonnull !4, !align !7, !noundef !4
  %37 = getelementptr inbounds { ptr, i64 }, ptr %_38, i32 0, i32 1
  %top_part.1 = load i64, ptr %37, align 8, !noundef !4
  %38 = getelementptr inbounds { ptr, i64 }, ptr %top_part.dbg.spill, i32 0, i32 0
  store ptr %top_part.0, ptr %38, align 8
  %39 = getelementptr inbounds { ptr, i64 }, ptr %top_part.dbg.spill, i32 0, i32 1
  store i64 %top_part.1, ptr %39, align 8
  %40 = getelementptr inbounds { { ptr, i64 }, { ptr, i64 } }, ptr %_38, i32 0, i32 1
  %41 = getelementptr inbounds { ptr, i64 }, ptr %40, i32 0, i32 0
  %bottom_part.0 = load ptr, ptr %41, align 8, !nonnull !4, !align !7, !noundef !4
  %42 = getelementptr inbounds { ptr, i64 }, ptr %40, i32 0, i32 1
  %bottom_part.1 = load i64, ptr %42, align 8, !noundef !4
  %43 = getelementptr inbounds { ptr, i64 }, ptr %bottom_part.dbg.spill, i32 0, i32 0
  store ptr %bottom_part.0, ptr %43, align 8
  %44 = getelementptr inbounds { ptr, i64 }, ptr %bottom_part.dbg.spill, i32 0, i32 1
  store i64 %bottom_part.1, ptr %44, align 8
  %45 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_29.0, i64 %w)
  %_43.0 = extractvalue { i64, i1 } %45, 0
  %_43.1 = extractvalue { i64, i1 } %45, 1
  %46 = call i1 @llvm.expect.i1(i1 %_43.1, i1 false)
  br i1 %46, label %panic4, label %bb24

panic3:                                           ; preds = %bb21
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.0, i64 33, ptr align 8 @alloc_2461b9c45f533746b880b37292cfd708) #7
  unreachable

bb24:                                             ; preds = %bb22
  store i64 %_29.0, ptr %_41, align 8
  %47 = getelementptr inbounds { i64, i64 }, ptr %_41, i32 0, i32 1
  store i64 %_43.0, ptr %47, align 8
  %48 = getelementptr inbounds { i64, i64 }, ptr %_41, i32 0, i32 0
  %49 = load i64, ptr %48, align 8, !noundef !4
  %50 = getelementptr inbounds { i64, i64 }, ptr %_41, i32 0, i32 1
  %51 = load i64, ptr %50, align 8, !noundef !4
  %52 = call { ptr, i64 } @"_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h637e276bbb23ee93E"(ptr align 1 %top_part.0, i64 %top_part.1, i64 %49, i64 %51, ptr align 8 @alloc_f3ec06f0b9e8e4bb32e22838361dd7de)
  %_40.0 = extractvalue { ptr, i64 } %52, 0
  %_40.1 = extractvalue { ptr, i64 } %52, 1
  %53 = getelementptr inbounds { ptr, i64 }, ptr %top_row.dbg.spill, i32 0, i32 0
  store ptr %_40.0, ptr %53, align 8
  %54 = getelementptr inbounds { ptr, i64 }, ptr %top_row.dbg.spill, i32 0, i32 1
  store i64 %_40.1, ptr %54, align 8
  store i64 %w, ptr %_46, align 8
  %55 = load i64, ptr %_46, align 8, !noundef !4
  %56 = call { ptr, i64 } @"_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h57ae31fb1acedaf3E"(ptr align 1 %bottom_part.0, i64 %bottom_part.1, i64 %55, ptr align 8 @alloc_1da16a339a8893159e6dbc2215804eee)
  %_45.0 = extractvalue { ptr, i64 } %56, 0
  %_45.1 = extractvalue { ptr, i64 } %56, 1
  %57 = getelementptr inbounds { ptr, i64 }, ptr %bottom_row.dbg.spill, i32 0, i32 0
  store ptr %_45.0, ptr %57, align 8
  %58 = getelementptr inbounds { ptr, i64 }, ptr %bottom_row.dbg.spill, i32 0, i32 1
  store i64 %_45.1, ptr %58, align 8
  call void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15swap_with_slice17h89c08e0cb3ed30c7E"(ptr align 1 %_40.0, i64 %_40.1, ptr align 1 %_45.0, i64 %_45.1, ptr align 8 @alloc_5e4e4ccdf99c0c4e37187c1db4ae4d54)
  br label %bb16

panic4:                                           ; preds = %bb22
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.2, i64 28, ptr align 8 @alloc_271250bad09801fdc50030f16077157a) #7
  unreachable
}

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking36panic_misaligned_pointer_dereference17h587229c42ea18e2bE(i64, i64, ptr align 8) unnamed_addr #3

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_ZN4core9panicking19panic_cannot_unwind17h629e1da841ab4abfE() unnamed_addr #4

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @"_ZN4core7convert3num18ptr_try_from_impls69_$LT$impl$u20$core..convert..TryFrom$LT$i32$GT$$u20$for$u20$usize$GT$8try_from17hb3a276eec9cfea97E"(i32 %u) unnamed_addr #1 {
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
define internal { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17hedc86bb381827113E"(i64 %self, i64 %rhs) unnamed_addr #1 {
start:
  %0 = alloca i8, align 1
  %b.dbg.spill2 = alloca i8, align 1
  %a.dbg.spill1 = alloca i64, align 8
  %b.dbg.spill = alloca i8, align 1
  %a.dbg.spill = alloca i64, align 8
  %rhs.dbg.spill = alloca i64, align 8
  %self.dbg.spill = alloca i64, align 8
  %_5 = alloca { i64, i8 }, align 8
  %1 = alloca { i64, i64 }, align 8
  store i64 %self, ptr %self.dbg.spill, align 8
  store i64 %rhs, ptr %rhs.dbg.spill, align 8
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %self, i64 %rhs)
  %_9.0 = extractvalue { i64, i1 } %2, 0
  %_9.1 = extractvalue { i64, i1 } %2, 1
  store i64 %_9.0, ptr %a.dbg.spill, align 8
  %3 = zext i1 %_9.1 to i8
  store i8 %3, ptr %b.dbg.spill, align 1
  store i64 %_9.0, ptr %_5, align 8
  %4 = getelementptr inbounds { i64, i8 }, ptr %_5, i32 0, i32 1
  %5 = zext i1 %_9.1 to i8
  store i8 %5, ptr %4, align 8
  %a = load i64, ptr %_5, align 8, !noundef !4
  store i64 %a, ptr %a.dbg.spill1, align 8
  %6 = getelementptr inbounds { i64, i8 }, ptr %_5, i32 0, i32 1
  %7 = load i8, ptr %6, align 8, !range !6, !noundef !4
  %b = trunc i8 %7 to i1
  %8 = zext i1 %b to i8
  store i8 %8, ptr %b.dbg.spill2, align 1
  %9 = call i1 @llvm.expect.i1(i1 %b, i1 false)
  %10 = zext i1 %9 to i8
  store i8 %10, ptr %0, align 1
  %11 = load i8, ptr %0, align 1, !range !6, !noundef !4
  %_6 = trunc i8 %11 to i1
  br i1 %_6, label %bb2, label %bb3

bb3:                                              ; preds = %start
  %12 = getelementptr inbounds { i64, i64 }, ptr %1, i32 0, i32 1
  store i64 %a, ptr %12, align 8
  store i64 1, ptr %1, align 8
  br label %bb4

bb2:                                              ; preds = %start
  store i64 0, ptr %1, align 8
  br label %bb4

bb4:                                              ; preds = %bb2, %bb3
  %13 = getelementptr inbounds { i64, i64 }, ptr %1, i32 0, i32 0
  %14 = load i64, ptr %13, align 8, !range !5, !noundef !4
  %15 = getelementptr inbounds { i64, i64 }, ptr %1, i32 0, i32 1
  %16 = load i64, ptr %15, align 8
  %17 = insertvalue { i64, i64 } poison, i64 %14, 0
  %18 = insertvalue { i64, i64 } %17, i64 %16, 1
  ret { i64, i64 } %18
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h4b6141a64bf5b047E"(ptr %self) unnamed_addr #1 {
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
define internal { ptr, i64 } @_ZN4core5slice3raw18from_raw_parts_mut17hd1c71665b68c1355E(ptr %data, i64 %len) unnamed_addr #1 {
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

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h94e35dcbe65505f3E"(i64 %self.0, i64 %self.1) unnamed_addr #1 {
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
define internal { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17he7bbdf001a7ba4ddE"(ptr align 8 %self) unnamed_addr #1 {
start:
  %self.dbg.spill = alloca ptr, align 8
  store ptr %self, ptr %self.dbg.spill, align 8
  %0 = call { i64, i64 } @"_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17he1fceba947888dd9E"(ptr align 8 %self)
  %1 = extractvalue { i64, i64 } %0, 0
  %2 = extractvalue { i64, i64 } %0, 1
  %3 = insertvalue { i64, i64 } poison, i64 %1, 0
  %4 = insertvalue { i64, i64 } %3, i64 %2, 1
  ret { i64, i64 } %4
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #5

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1, i64, ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$12split_at_mut17hbd54383a03eb47a3E"(ptr sret({ { ptr, i64 }, { ptr, i64 } }) %0, ptr align 1 %self.0, i64 %self.1, i64 %mid, ptr align 8 %1) unnamed_addr #1 {
start:
  %mid.dbg.spill = alloca i64, align 8
  %self.dbg.spill = alloca { ptr, i64 }, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill, i32 0, i32 0
  store ptr %self.0, ptr %2, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill, i32 0, i32 1
  store i64 %self.1, ptr %3, align 8
  store i64 %mid, ptr %mid.dbg.spill, align 8
  %_4 = icmp ule i64 %mid, %self.1
  %_3 = xor i1 %_4, true
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
  call void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$22split_at_mut_unchecked17h1f998c537d798436E"(ptr sret({ { ptr, i64 }, { ptr, i64 } }) %0, ptr align 1 %self.0, i64 %self.1, i64 %mid)
  ret void

bb1:                                              ; preds = %start
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @alloc_fddaeef1fe1a23c45402ef8f58614acb, i64 35, ptr align 8 %1) #7
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #5

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @"_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h637e276bbb23ee93E"(ptr align 1 %self.0, i64 %self.1, i64 %index.0, i64 %index.1, ptr align 8 %0) unnamed_addr #1 {
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
  %5 = call { ptr, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h074c76c370b16c44E"(i64 %index.0, i64 %index.1, ptr align 1 %self.0, i64 %self.1, ptr align 8 %0)
  %_3.0 = extractvalue { ptr, i64 } %5, 0
  %_3.1 = extractvalue { ptr, i64 } %5, 1
  %6 = insertvalue { ptr, i64 } poison, ptr %_3.0, 0
  %7 = insertvalue { ptr, i64 } %6, i64 %_3.1, 1
  ret { ptr, i64 } %7
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @"_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h57ae31fb1acedaf3E"(ptr align 1 %self.0, i64 %self.1, i64 %index, ptr align 8 %0) unnamed_addr #1 {
start:
  %index.dbg.spill = alloca i64, align 8
  %self.dbg.spill = alloca { ptr, i64 }, align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill, i32 0, i32 0
  store ptr %self.0, ptr %1, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill, i32 0, i32 1
  store i64 %self.1, ptr %2, align 8
  store i64 %index, ptr %index.dbg.spill, align 8
  %3 = call { ptr, i64 } @"_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h2afc70bf2cfa2744E"(i64 %index, ptr align 1 %self.0, i64 %self.1, ptr align 8 %0)
  %_3.0 = extractvalue { ptr, i64 } %3, 0
  %_3.1 = extractvalue { ptr, i64 } %3, 1
  %4 = insertvalue { ptr, i64 } poison, ptr %_3.0, 0
  %5 = insertvalue { ptr, i64 } %4, i64 %_3.1, 1
  ret { ptr, i64 } %5
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15swap_with_slice17h89c08e0cb3ed30c7E"(ptr align 1 %self.0, i64 %self.1, ptr align 1 %other.0, i64 %other.1, ptr align 8 %0) unnamed_addr #0 {
start:
  %other.dbg.spill = alloca { ptr, i64 }, align 8
  %self.dbg.spill = alloca { ptr, i64 }, align 8
  %_10 = alloca %"core::fmt::Arguments<'_>", align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill, i32 0, i32 0
  store ptr %self.0, ptr %1, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill, i32 0, i32 1
  store i64 %self.1, ptr %2, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %other.dbg.spill, i32 0, i32 0
  store ptr %other.0, ptr %3, align 8
  %4 = getelementptr inbounds { ptr, i64 }, ptr %other.dbg.spill, i32 0, i32 1
  store i64 %other.1, ptr %4, align 8
  %_4 = icmp eq i64 %self.1, %other.1
  %_3 = xor i1 %_4, true
  br i1 %_3, label %bb1, label %bb3

bb3:                                              ; preds = %start
  call void @_ZN4core3ptr19swap_nonoverlapping17h013be17606e25d7dE(ptr %self.0, ptr %other.0, i64 %self.1)
  ret void

bb1:                                              ; preds = %start
  call void @_ZN4core3fmt9Arguments9new_const17h0293293043d64517E(ptr sret(%"core::fmt::Arguments<'_>") %_10, ptr align 8 @alloc_94f3a08e137bbd5a87c396537c0c442a, i64 1)
  call void @_ZN4core9panicking9panic_fmt17h8ed9ca1959946403E(ptr %_10, ptr align 8 %0) #7
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3ptr19swap_nonoverlapping17h013be17606e25d7dE(ptr %x, ptr %y, i64 %count) unnamed_addr #1 {
start:
  %count.dbg.spill8 = alloca i64, align 8
  %y.dbg.spill6 = alloca ptr, align 8
  %x.dbg.spill5 = alloca ptr, align 8
  %count.dbg.spill4 = alloca i64, align 8
  %y.dbg.spill2 = alloca ptr, align 8
  %x.dbg.spill1 = alloca ptr, align 8
  %0 = alloca i64, align 8
  %self.dbg.spill = alloca i64, align 8
  %count.dbg.spill = alloca i64, align 8
  %y.dbg.spill = alloca ptr, align 8
  %x.dbg.spill = alloca ptr, align 8
  %_29 = alloca i8, align 1
  %_15 = alloca i8, align 1
  %_8 = alloca i8, align 1
  %_4 = alloca i8, align 1
  store ptr %x, ptr %x.dbg.spill, align 8
  store ptr %y, ptr %y.dbg.spill, align 8
  store i64 %count, ptr %count.dbg.spill, align 8
  br i1 true, label %bb2, label %bb1

bb1:                                              ; preds = %start
  store i8 0, ptr %_4, align 1
  br label %bb3

bb2:                                              ; preds = %start
  store i64 4, ptr %self.dbg.spill, align 8
  %1 = call i64 @llvm.ctpop.i64(i64 4)
  store i64 %1, ptr %0, align 8
  %_47 = load i64, ptr %0, align 8, !noundef !4
  %_46 = trunc i64 %_47 to i32
  %_10 = icmp eq i32 %_46, 1
  %_9 = xor i1 %_10, true
  br i1 %_9, label %bb4, label %bb5

bb5:                                              ; preds = %bb2
  store i8 0, ptr %_8, align 1
  br label %bb6

bb4:                                              ; preds = %bb2
  store i8 1, ptr %_8, align 1
  br label %bb6

bb6:                                              ; preds = %bb4, %bb5
  %2 = load i8, ptr %_8, align 1, !range !6, !noundef !4
  %3 = trunc i8 %2 to i1
  %4 = zext i1 %3 to i8
  store i8 %4, ptr %_4, align 1
  br label %bb3

bb3:                                              ; preds = %bb6, %bb1
  %5 = load i8, ptr %_4, align 1, !range !6, !noundef !4
  %6 = trunc i8 %5 to i1
  br i1 %6, label %bb7, label %bb20

bb20:                                             ; preds = %bb19, %bb3
  call void @_ZN4core3ptr34swap_nonoverlapping_simple_untyped17hddfdaefe7498392aE(ptr %x, ptr %y, i64 %count)
  br label %bb22

bb7:                                              ; preds = %bb3
  br i1 false, label %bb9, label %bb8

bb8:                                              ; preds = %bb7
  store i8 0, ptr %_15, align 1
  br label %bb10

bb9:                                              ; preds = %bb7
  store i8 0, ptr %_15, align 1
  br label %bb10

bb10:                                             ; preds = %bb9, %bb8
  %7 = load i8, ptr %_15, align 1, !range !6, !noundef !4
  %8 = trunc i8 %7 to i1
  br i1 %8, label %bb11, label %bb13

bb13:                                             ; preds = %bb10
  br i1 true, label %bb15, label %bb14

bb11:                                             ; preds = %bb10
  store ptr %x, ptr %x.dbg.spill1, align 8
  store ptr %y, ptr %y.dbg.spill2, align 8
  %count3 = mul i64 %count, 0
  store i64 %count3, ptr %count.dbg.spill4, align 8
  call void @_ZN4core3ptr34swap_nonoverlapping_simple_untyped17h3ffc5ebfdfec49feE(ptr %x, ptr %y, i64 %count3)
  br label %bb21

bb21:                                             ; preds = %bb17, %bb11
  br label %bb22

bb14:                                             ; preds = %bb13
  store i8 0, ptr %_29, align 1
  br label %bb16

bb15:                                             ; preds = %bb13
  store i8 1, ptr %_29, align 1
  br label %bb16

bb16:                                             ; preds = %bb15, %bb14
  %9 = load i8, ptr %_29, align 1, !range !6, !noundef !4
  %10 = trunc i8 %9 to i1
  br i1 %10, label %bb17, label %bb19

bb19:                                             ; preds = %bb16
  br label %bb20

bb17:                                             ; preds = %bb16
  store ptr %x, ptr %x.dbg.spill5, align 8
  store ptr %y, ptr %y.dbg.spill6, align 8
  %count7 = mul i64 %count, 4
  store i64 %count7, ptr %count.dbg.spill8, align 8
  call void @_ZN4core3ptr34swap_nonoverlapping_simple_untyped17hffdf849b7bb6f878E(ptr %x, ptr %y, i64 %count7)
  br label %bb21

bb22:                                             ; preds = %bb21, %bb20
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3fmt9Arguments9new_const17h0293293043d64517E(ptr sret(%"core::fmt::Arguments<'_>") %0, ptr align 8 %pieces.0, i64 %pieces.1) unnamed_addr #1 {
start:
  %pieces.dbg.spill = alloca { ptr, i64 }, align 8
  %_7 = alloca { ptr, i64 }, align 8
  %_5 = alloca %"core::fmt::Arguments<'_>", align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %pieces.dbg.spill, i32 0, i32 0
  store ptr %pieces.0, ptr %1, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %pieces.dbg.spill, i32 0, i32 1
  store i64 %pieces.1, ptr %2, align 8
  %_2 = icmp ugt i64 %pieces.1, 1
  br i1 %_2, label %bb1, label %bb3

bb3:                                              ; preds = %start
  store ptr null, ptr %_7, align 8
  %3 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %0, i32 0, i32 1
  %4 = getelementptr inbounds { ptr, i64 }, ptr %3, i32 0, i32 0
  store ptr %pieces.0, ptr %4, align 8
  %5 = getelementptr inbounds { ptr, i64 }, ptr %3, i32 0, i32 1
  store i64 %pieces.1, ptr %5, align 8
  %6 = getelementptr inbounds { ptr, i64 }, ptr %_7, i32 0, i32 0
  %7 = load ptr, ptr %6, align 8, !align !8, !noundef !4
  %8 = getelementptr inbounds { ptr, i64 }, ptr %_7, i32 0, i32 1
  %9 = load i64, ptr %8, align 8
  %10 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 0
  store ptr %7, ptr %10, align 8
  %11 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 1
  store i64 %9, ptr %11, align 8
  %12 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %0, i32 0, i32 2
  %13 = getelementptr inbounds { ptr, i64 }, ptr %12, i32 0, i32 0
  store ptr @alloc_513570631223a12912d85da2bec3b15a, ptr %13, align 8
  %14 = getelementptr inbounds { ptr, i64 }, ptr %12, i32 0, i32 1
  store i64 0, ptr %14, align 8
  ret void

bb1:                                              ; preds = %start
  call void @_ZN4core3fmt9Arguments9new_const17h0293293043d64517E(ptr sret(%"core::fmt::Arguments<'_>") %_5, ptr align 8 @alloc_560206a49c61adca6f3f0639a12632eb, i64 1)
  call void @_ZN4core9panicking9panic_fmt17h8ed9ca1959946403E(ptr %_5, ptr align 8 @alloc_fac9b2bfef1487396ce3a9bad0068a7e) #7
  unreachable
}

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking9panic_fmt17h8ed9ca1959946403E(ptr, ptr align 8) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #5

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3ptr34swap_nonoverlapping_simple_untyped17hddfdaefe7498392aE(ptr %x, ptr %y, i64 %count) unnamed_addr #1 {
start:
  %y.dbg.spill10 = alloca ptr, align 8
  %0 = alloca ptr, align 8
  %count.dbg.spill9 = alloca i64, align 8
  %count.dbg.spill8 = alloca i64, align 8
  %x.dbg.spill6 = alloca ptr, align 8
  %1 = alloca ptr, align 8
  %count.dbg.spill5 = alloca i64, align 8
  %count.dbg.spill4 = alloca i64, align 8
  %y.dbg.spill2 = alloca ptr, align 8
  %x.dbg.spill1 = alloca ptr, align 8
  %count.dbg.spill = alloca i64, align 8
  %y.dbg.spill = alloca ptr, align 8
  %x.dbg.spill = alloca ptr, align 8
  %i = alloca i64, align 8
  store ptr %x, ptr %x.dbg.spill, align 8
  store ptr %y, ptr %y.dbg.spill, align 8
  store i64 %count, ptr %count.dbg.spill, align 8
  store ptr %x, ptr %x.dbg.spill1, align 8
  store ptr %y, ptr %y.dbg.spill2, align 8
  store i64 0, ptr %i, align 8
  br label %bb1

bb1:                                              ; preds = %bb2, %start
  %_8 = load i64, ptr %i, align 8, !noundef !4
  %_7 = icmp ult i64 %_8, %count
  br i1 %_7, label %bb2, label %bb4

bb4:                                              ; preds = %bb1
  ret void

bb2:                                              ; preds = %bb1
  %count3 = load i64, ptr %i, align 8, !noundef !4
  store i64 %count3, ptr %count.dbg.spill4, align 8
  store i64 %count3, ptr %count.dbg.spill5, align 8
  %2 = getelementptr inbounds %"core::mem::maybe_uninit::MaybeUninit<src::lib::CpPixelT>", ptr %x, i64 %count3
  store ptr %2, ptr %1, align 8
  %_17 = load ptr, ptr %1, align 8, !noundef !4
  store ptr %_17, ptr %x.dbg.spill6, align 8
  %count7 = load i64, ptr %i, align 8, !noundef !4
  store i64 %count7, ptr %count.dbg.spill8, align 8
  store i64 %count7, ptr %count.dbg.spill9, align 8
  %3 = getelementptr inbounds %"core::mem::maybe_uninit::MaybeUninit<src::lib::CpPixelT>", ptr %y, i64 %count7
  store ptr %3, ptr %0, align 8
  %_20 = load ptr, ptr %0, align 8, !noundef !4
  store ptr %_20, ptr %y.dbg.spill10, align 8
  call void @_ZN4core3mem11swap_simple17h955ece7f64e980f6E(ptr align 1 %_17, ptr align 1 %_20)
  %4 = load i64, ptr %i, align 8, !noundef !4
  %5 = add i64 %4, 1
  store i64 %5, ptr %i, align 8
  br label %bb1
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3ptr34swap_nonoverlapping_simple_untyped17h3ffc5ebfdfec49feE(ptr %x, ptr %y, i64 %count) unnamed_addr #1 {
start:
  %y.dbg.spill10 = alloca ptr, align 8
  %0 = alloca ptr, align 8
  %count.dbg.spill9 = alloca i64, align 8
  %count.dbg.spill8 = alloca i64, align 8
  %x.dbg.spill6 = alloca ptr, align 8
  %1 = alloca ptr, align 8
  %count.dbg.spill5 = alloca i64, align 8
  %count.dbg.spill4 = alloca i64, align 8
  %y.dbg.spill2 = alloca ptr, align 8
  %x.dbg.spill1 = alloca ptr, align 8
  %count.dbg.spill = alloca i64, align 8
  %y.dbg.spill = alloca ptr, align 8
  %x.dbg.spill = alloca ptr, align 8
  %i = alloca i64, align 8
  store ptr %x, ptr %x.dbg.spill, align 8
  store ptr %y, ptr %y.dbg.spill, align 8
  store i64 %count, ptr %count.dbg.spill, align 8
  store ptr %x, ptr %x.dbg.spill1, align 8
  store ptr %y, ptr %y.dbg.spill2, align 8
  store i64 0, ptr %i, align 8
  br label %bb1

bb1:                                              ; preds = %bb2, %start
  %_8 = load i64, ptr %i, align 8, !noundef !4
  %_7 = icmp ult i64 %_8, %count
  br i1 %_7, label %bb2, label %bb4

bb4:                                              ; preds = %bb1
  ret void

bb2:                                              ; preds = %bb1
  %count3 = load i64, ptr %i, align 8, !noundef !4
  store i64 %count3, ptr %count.dbg.spill4, align 8
  store i64 %count3, ptr %count.dbg.spill5, align 8
  %2 = getelementptr inbounds i64, ptr %x, i64 %count3
  store ptr %2, ptr %1, align 8
  %_17 = load ptr, ptr %1, align 8, !noundef !4
  store ptr %_17, ptr %x.dbg.spill6, align 8
  %count7 = load i64, ptr %i, align 8, !noundef !4
  store i64 %count7, ptr %count.dbg.spill8, align 8
  store i64 %count7, ptr %count.dbg.spill9, align 8
  %3 = getelementptr inbounds i64, ptr %y, i64 %count7
  store ptr %3, ptr %0, align 8
  %_20 = load ptr, ptr %0, align 8, !noundef !4
  store ptr %_20, ptr %y.dbg.spill10, align 8
  call void @_ZN4core3mem11swap_simple17h97df72e04c58659cE(ptr align 8 %_17, ptr align 8 %_20)
  %4 = load i64, ptr %i, align 8, !noundef !4
  %5 = add i64 %4, 1
  store i64 %5, ptr %i, align 8
  br label %bb1
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3ptr34swap_nonoverlapping_simple_untyped17hffdf849b7bb6f878E(ptr %x, ptr %y, i64 %count) unnamed_addr #1 {
start:
  %y.dbg.spill10 = alloca ptr, align 8
  %0 = alloca ptr, align 8
  %count.dbg.spill9 = alloca i64, align 8
  %count.dbg.spill8 = alloca i64, align 8
  %x.dbg.spill6 = alloca ptr, align 8
  %1 = alloca ptr, align 8
  %count.dbg.spill5 = alloca i64, align 8
  %count.dbg.spill4 = alloca i64, align 8
  %y.dbg.spill2 = alloca ptr, align 8
  %x.dbg.spill1 = alloca ptr, align 8
  %count.dbg.spill = alloca i64, align 8
  %y.dbg.spill = alloca ptr, align 8
  %x.dbg.spill = alloca ptr, align 8
  %i = alloca i64, align 8
  store ptr %x, ptr %x.dbg.spill, align 8
  store ptr %y, ptr %y.dbg.spill, align 8
  store i64 %count, ptr %count.dbg.spill, align 8
  store ptr %x, ptr %x.dbg.spill1, align 8
  store ptr %y, ptr %y.dbg.spill2, align 8
  store i64 0, ptr %i, align 8
  br label %bb1

bb1:                                              ; preds = %bb2, %start
  %_8 = load i64, ptr %i, align 8, !noundef !4
  %_7 = icmp ult i64 %_8, %count
  br i1 %_7, label %bb2, label %bb4

bb4:                                              ; preds = %bb1
  ret void

bb2:                                              ; preds = %bb1
  %count3 = load i64, ptr %i, align 8, !noundef !4
  store i64 %count3, ptr %count.dbg.spill4, align 8
  store i64 %count3, ptr %count.dbg.spill5, align 8
  %2 = getelementptr inbounds i8, ptr %x, i64 %count3
  store ptr %2, ptr %1, align 8
  %_17 = load ptr, ptr %1, align 8, !noundef !4
  store ptr %_17, ptr %x.dbg.spill6, align 8
  %count7 = load i64, ptr %i, align 8, !noundef !4
  store i64 %count7, ptr %count.dbg.spill8, align 8
  store i64 %count7, ptr %count.dbg.spill9, align 8
  %3 = getelementptr inbounds i8, ptr %y, i64 %count7
  store ptr %3, ptr %0, align 8
  %_20 = load ptr, ptr %0, align 8, !noundef !4
  store ptr %_20, ptr %y.dbg.spill10, align 8
  call void @_ZN4core3mem11swap_simple17h0511fda322b80120E(ptr align 1 %_17, ptr align 1 %_20)
  %4 = load i64, ptr %i, align 8, !noundef !4
  %5 = add i64 %4, 1
  store i64 %5, ptr %i, align 8
  br label %bb1
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3mem11swap_simple17h0511fda322b80120E(ptr align 1 %x, ptr align 1 %y) unnamed_addr #1 {
start:
  %dst.dbg.spill3 = alloca ptr, align 8
  %dst.dbg.spill = alloca ptr, align 8
  %b.dbg.spill = alloca i8, align 1
  %src.dbg.spill2 = alloca ptr, align 8
  %a.dbg.spill = alloca i8, align 1
  %src.dbg.spill = alloca ptr, align 8
  %y.dbg.spill = alloca ptr, align 8
  %x.dbg.spill = alloca ptr, align 8
  %src1 = alloca i8, align 1
  %src = alloca i8, align 1
  store ptr %x, ptr %x.dbg.spill, align 8
  store ptr %y, ptr %y.dbg.spill, align 8
  store ptr %x, ptr %src.dbg.spill, align 8
  %a = load i8, ptr %x, align 1
  store i8 %a, ptr %a.dbg.spill, align 1
  store ptr %y, ptr %src.dbg.spill2, align 8
  %b = load i8, ptr %y, align 1
  store i8 %b, ptr %b.dbg.spill, align 1
  store ptr %x, ptr %dst.dbg.spill, align 8
  store i8 %b, ptr %src, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %x, ptr align 1 %src, i64 1, i1 false)
  store ptr %y, ptr %dst.dbg.spill3, align 8
  store i8 %a, ptr %src1, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %y, ptr align 1 %src1, i64 1, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3mem11swap_simple17h97df72e04c58659cE(ptr align 8 %x, ptr align 8 %y) unnamed_addr #1 {
start:
  %dst.dbg.spill3 = alloca ptr, align 8
  %dst.dbg.spill = alloca ptr, align 8
  %b.dbg.spill = alloca i64, align 8
  %src.dbg.spill2 = alloca ptr, align 8
  %a.dbg.spill = alloca i64, align 8
  %src.dbg.spill = alloca ptr, align 8
  %y.dbg.spill = alloca ptr, align 8
  %x.dbg.spill = alloca ptr, align 8
  %src1 = alloca i64, align 8
  %src = alloca i64, align 8
  store ptr %x, ptr %x.dbg.spill, align 8
  store ptr %y, ptr %y.dbg.spill, align 8
  store ptr %x, ptr %src.dbg.spill, align 8
  %a = load i64, ptr %x, align 8
  store i64 %a, ptr %a.dbg.spill, align 8
  store ptr %y, ptr %src.dbg.spill2, align 8
  %b = load i64, ptr %y, align 8
  store i64 %b, ptr %b.dbg.spill, align 8
  store ptr %x, ptr %dst.dbg.spill, align 8
  store i64 %b, ptr %src, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %x, ptr align 8 %src, i64 8, i1 false)
  store ptr %y, ptr %dst.dbg.spill3, align 8
  store i64 %a, ptr %src1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %y, ptr align 8 %src1, i64 8, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3mem11swap_simple17h955ece7f64e980f6E(ptr align 1 %x, ptr align 1 %y) unnamed_addr #1 {
start:
  %dst.dbg.spill3 = alloca ptr, align 8
  %dst.dbg.spill = alloca ptr, align 8
  %src.dbg.spill2 = alloca ptr, align 8
  %src.dbg.spill = alloca ptr, align 8
  %y.dbg.spill = alloca ptr, align 8
  %x.dbg.spill = alloca ptr, align 8
  %src1 = alloca %"core::mem::maybe_uninit::MaybeUninit<src::lib::CpPixelT>", align 1
  %src = alloca %"core::mem::maybe_uninit::MaybeUninit<src::lib::CpPixelT>", align 1
  %b = alloca %"core::mem::maybe_uninit::MaybeUninit<src::lib::CpPixelT>", align 1
  %a = alloca %"core::mem::maybe_uninit::MaybeUninit<src::lib::CpPixelT>", align 1
  store ptr %x, ptr %x.dbg.spill, align 8
  store ptr %y, ptr %y.dbg.spill, align 8
  store ptr %x, ptr %src.dbg.spill, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %a, ptr align 1 %x, i64 4, i1 false)
  store ptr %y, ptr %src.dbg.spill2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b, ptr align 1 %y, i64 4, i1 false)
  store ptr %x, ptr %dst.dbg.spill, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %src, ptr align 1 %b, i64 4, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %x, ptr align 1 %src, i64 4, i1 false)
  store ptr %y, ptr %dst.dbg.spill3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %src1, ptr align 1 %a, i64 4, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %y, ptr align 1 %src1, i64 4, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @"_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h2afc70bf2cfa2744E"(i64 %self, ptr align 1 %slice.0, i64 %slice.1, ptr align 8 %0) unnamed_addr #1 {
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
  %8 = call { ptr, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h074c76c370b16c44E"(i64 %5, i64 %7, ptr align 1 %slice.0, i64 %slice.1, ptr align 8 %0)
  %_3.0 = extractvalue { ptr, i64 } %8, 0
  %_3.1 = extractvalue { ptr, i64 } %8, 1
  %9 = insertvalue { ptr, i64 } poison, ptr %_3.0, 0
  %10 = insertvalue { ptr, i64 } %9, i64 %_3.1, 1
  ret { ptr, i64 } %10
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h074c76c370b16c44E"(i64 %self.0, i64 %self.1, ptr align 1 %slice.0, i64 %slice.1, ptr align 8 %0) unnamed_addr #1 {
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
  %_34 = alloca %"core::ptr::metadata::PtrRepr<[src::lib::CpPixelT]>", align 8
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
  %10 = getelementptr inbounds %"src::lib::CpPixelT", ptr %slice.0, i64 %self.0
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

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$22split_at_mut_unchecked17h1f998c537d798436E"(ptr sret({ { ptr, i64 }, { ptr, i64 } }) %0, ptr align 1 %self.0, i64 %self.1, i64 %mid) unnamed_addr #1 {
start:
  %data_address.dbg.spill2 = alloca ptr, align 8
  %len.dbg.spill1 = alloca i64, align 8
  %data.dbg.spill = alloca ptr, align 8
  %1 = alloca ptr, align 8
  %count.dbg.spill = alloca i64, align 8
  %data_address.dbg.spill = alloca ptr, align 8
  %ptr.dbg.spill = alloca ptr, align 8
  %len.dbg.spill = alloca i64, align 8
  %mid.dbg.spill = alloca i64, align 8
  %self.dbg.spill = alloca { ptr, i64 }, align 8
  %_28 = alloca { ptr, i64 }, align 8
  %_27 = alloca %"core::ptr::metadata::PtrRepr<[src::lib::CpPixelT]>", align 8
  %_18 = alloca { ptr, i64 }, align 8
  %_17 = alloca %"core::ptr::metadata::PtrRepr<[src::lib::CpPixelT]>", align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill, i32 0, i32 0
  store ptr %self.0, ptr %2, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill, i32 0, i32 1
  store i64 %self.1, ptr %3, align 8
  store i64 %mid, ptr %mid.dbg.spill, align 8
  store i64 %self.1, ptr %len.dbg.spill, align 8
  store ptr %self.0, ptr %ptr.dbg.spill, align 8
  store ptr %self.0, ptr %data_address.dbg.spill, align 8
  store ptr %self.0, ptr %_18, align 8
  %4 = getelementptr inbounds { ptr, i64 }, ptr %_18, i32 0, i32 1
  store i64 %mid, ptr %4, align 8
  %5 = getelementptr inbounds { ptr, i64 }, ptr %_18, i32 0, i32 0
  %6 = load ptr, ptr %5, align 8, !noundef !4
  %7 = getelementptr inbounds { ptr, i64 }, ptr %_18, i32 0, i32 1
  %8 = load i64, ptr %7, align 8, !noundef !4
  %9 = getelementptr inbounds { ptr, i64 }, ptr %_17, i32 0, i32 0
  store ptr %6, ptr %9, align 8
  %10 = getelementptr inbounds { ptr, i64 }, ptr %_17, i32 0, i32 1
  store i64 %8, ptr %10, align 8
  %11 = getelementptr inbounds { ptr, i64 }, ptr %_17, i32 0, i32 0
  %_13.0 = load ptr, ptr %11, align 8, !noundef !4
  %12 = getelementptr inbounds { ptr, i64 }, ptr %_17, i32 0, i32 1
  %_13.1 = load i64, ptr %12, align 8, !noundef !4
  store i64 %mid, ptr %count.dbg.spill, align 8
  %13 = getelementptr inbounds %"src::lib::CpPixelT", ptr %self.0, i64 %mid
  store ptr %13, ptr %1, align 8
  %_21 = load ptr, ptr %1, align 8, !noundef !4
  store ptr %_21, ptr %data.dbg.spill, align 8
  %len = sub i64 %self.1, %mid
  store i64 %len, ptr %len.dbg.spill1, align 8
  store ptr %_21, ptr %data_address.dbg.spill2, align 8
  store ptr %_21, ptr %_28, align 8
  %14 = getelementptr inbounds { ptr, i64 }, ptr %_28, i32 0, i32 1
  store i64 %len, ptr %14, align 8
  %15 = getelementptr inbounds { ptr, i64 }, ptr %_28, i32 0, i32 0
  %16 = load ptr, ptr %15, align 8, !noundef !4
  %17 = getelementptr inbounds { ptr, i64 }, ptr %_28, i32 0, i32 1
  %18 = load i64, ptr %17, align 8, !noundef !4
  %19 = getelementptr inbounds { ptr, i64 }, ptr %_27, i32 0, i32 0
  store ptr %16, ptr %19, align 8
  %20 = getelementptr inbounds { ptr, i64 }, ptr %_27, i32 0, i32 1
  store i64 %18, ptr %20, align 8
  %21 = getelementptr inbounds { ptr, i64 }, ptr %_27, i32 0, i32 0
  %_23.0 = load ptr, ptr %21, align 8, !noundef !4
  %22 = getelementptr inbounds { ptr, i64 }, ptr %_27, i32 0, i32 1
  %_23.1 = load i64, ptr %22, align 8, !noundef !4
  %23 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 0
  store ptr %_13.0, ptr %23, align 8
  %24 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 1
  store i64 %_13.1, ptr %24, align 8
  %25 = getelementptr inbounds { { ptr, i64 }, { ptr, i64 } }, ptr %0, i32 0, i32 1
  %26 = getelementptr inbounds { ptr, i64 }, ptr %25, i32 0, i32 0
  store ptr %_23.0, ptr %26, align 8
  %27 = getelementptr inbounds { ptr, i64 }, ptr %25, i32 0, i32 1
  store i64 %_23.1, ptr %27, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @"_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17he1fceba947888dd9E"(ptr align 8 %self) unnamed_addr #1 {
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
  %_2 = call zeroext i1 @"_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17h5b94af32bd4c2f5cE"(ptr align 8 %self, ptr align 8 %_4)
  br i1 %_2, label %bb2, label %bb5

bb5:                                              ; preds = %start
  store i64 0, ptr %0, align 8
  br label %bb6

bb2:                                              ; preds = %start
  store ptr %self, ptr %self.dbg.spill.i, align 8
  %1 = load i64, ptr %self, align 8, !noundef !4
  %n = call i64 @"_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17h5e1ef28dcff495adE"(i64 %1, i64 1)
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
define internal zeroext i1 @"_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17h5b94af32bd4c2f5cE"(ptr align 8 %self, ptr align 8 %other) unnamed_addr #1 {
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
define internal i64 @"_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17h5e1ef28dcff495adE"(i64 %start1, i64 %n) unnamed_addr #1 {
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
  call void @flip_horizontal(ptr %img)
  store i8 49, ptr %_26, align 1
  %68 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_26, i32 0, i32 1
  store i8 50, ptr %68, align 1
  %69 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_26, i32 0, i32 2
  store i8 51, ptr %69, align 1
  %70 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_26, i32 0, i32 3
  store i8 52, ptr %70, align 1
  store i8 53, ptr %_27, align 1
  %71 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_27, i32 0, i32 1
  store i8 54, ptr %71, align 1
  %72 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_27, i32 0, i32 2
  store i8 55, ptr %72, align 1
  %73 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_27, i32 0, i32 3
  store i8 56, ptr %73, align 1
  store i8 57, ptr %_28, align 1
  %74 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_28, i32 0, i32 1
  store i8 58, ptr %74, align 1
  %75 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_28, i32 0, i32 2
  store i8 59, ptr %75, align 1
  %76 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_28, i32 0, i32 3
  store i8 60, ptr %76, align 1
  store i8 61, ptr %_29, align 1
  %77 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_29, i32 0, i32 1
  store i8 62, ptr %77, align 1
  %78 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_29, i32 0, i32 2
  store i8 63, ptr %78, align 1
  %79 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_29, i32 0, i32 3
  store i8 64, ptr %79, align 1
  store i8 33, ptr %_30, align 1
  %80 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_30, i32 0, i32 1
  store i8 34, ptr %80, align 1
  %81 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_30, i32 0, i32 2
  store i8 35, ptr %81, align 1
  %82 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_30, i32 0, i32 3
  store i8 36, ptr %82, align 1
  store i8 37, ptr %_31, align 1
  %83 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_31, i32 0, i32 1
  store i8 38, ptr %83, align 1
  %84 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_31, i32 0, i32 2
  store i8 39, ptr %84, align 1
  %85 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_31, i32 0, i32 3
  store i8 40, ptr %85, align 1
  store i8 41, ptr %_32, align 1
  %86 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_32, i32 0, i32 1
  store i8 42, ptr %86, align 1
  %87 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_32, i32 0, i32 2
  store i8 43, ptr %87, align 1
  %88 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_32, i32 0, i32 3
  store i8 44, ptr %88, align 1
  store i8 45, ptr %_33, align 1
  %89 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_33, i32 0, i32 1
  store i8 46, ptr %89, align 1
  %90 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_33, i32 0, i32 2
  store i8 47, ptr %90, align 1
  %91 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_33, i32 0, i32 3
  store i8 48, ptr %91, align 1
  store i8 17, ptr %_34, align 1
  %92 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_34, i32 0, i32 1
  store i8 18, ptr %92, align 1
  %93 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_34, i32 0, i32 2
  store i8 19, ptr %93, align 1
  %94 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_34, i32 0, i32 3
  store i8 20, ptr %94, align 1
  store i8 21, ptr %_35, align 1
  %95 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_35, i32 0, i32 1
  store i8 22, ptr %95, align 1
  %96 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_35, i32 0, i32 2
  store i8 23, ptr %96, align 1
  %97 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_35, i32 0, i32 3
  store i8 24, ptr %97, align 1
  store i8 25, ptr %_36, align 1
  %98 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_36, i32 0, i32 1
  store i8 26, ptr %98, align 1
  %99 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_36, i32 0, i32 2
  store i8 27, ptr %99, align 1
  %100 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_36, i32 0, i32 3
  store i8 28, ptr %100, align 1
  store i8 29, ptr %_37, align 1
  %101 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_37, i32 0, i32 1
  store i8 30, ptr %101, align 1
  %102 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_37, i32 0, i32 2
  store i8 31, ptr %102, align 1
  %103 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_37, i32 0, i32 3
  store i8 32, ptr %103, align 1
  store i8 1, ptr %_38, align 1
  %104 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_38, i32 0, i32 1
  store i8 2, ptr %104, align 1
  %105 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_38, i32 0, i32 2
  store i8 3, ptr %105, align 1
  %106 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_38, i32 0, i32 3
  store i8 4, ptr %106, align 1
  store i8 5, ptr %_39, align 1
  %107 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_39, i32 0, i32 1
  store i8 6, ptr %107, align 1
  %108 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_39, i32 0, i32 2
  store i8 7, ptr %108, align 1
  %109 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_39, i32 0, i32 3
  store i8 8, ptr %109, align 1
  store i8 9, ptr %_40, align 1
  %110 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_40, i32 0, i32 1
  store i8 10, ptr %110, align 1
  %111 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_40, i32 0, i32 2
  store i8 11, ptr %111, align 1
  %112 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_40, i32 0, i32 3
  store i8 12, ptr %112, align 1
  store i8 13, ptr %_41, align 1
  %113 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_41, i32 0, i32 1
  store i8 14, ptr %113, align 1
  %114 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_41, i32 0, i32 2
  store i8 15, ptr %114, align 1
  %115 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_41, i32 0, i32 3
  store i8 16, ptr %115, align 1
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
  %137 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h94e35dcbe65505f3E"(i64 %134, i64 %136)
  %_42.0 = extractvalue { i64, i64 } %137, 0
  %_42.1 = extractvalue { i64, i64 } %137, 1
  %138 = getelementptr inbounds { i64, i64 }, ptr %iter, i32 0, i32 0
  store i64 %_42.0, ptr %138, align 8
  %139 = getelementptr inbounds { i64, i64 }, ptr %iter, i32 0, i32 1
  store i64 %_42.1, ptr %139, align 8
  br label %bb4

bb4:                                              ; preds = %bb11, %start
  %140 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17he7bbdf001a7ba4ddE"(ptr align 8 %iter)
  store { i64, i64 } %140, ptr %_45, align 8
  %_47 = load i64, ptr %_45, align 8, !range !5, !noundef !4
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
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_c98aab89a0ba048eccbf4b40092d097a) #7
  unreachable

bb19:                                             ; preds = %bb18
  %146 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 %i
  %_56 = load i8, ptr %146, align 1, !noundef !4
  %_52 = icmp ne i8 %_53, %_56
  br i1 %_52, label %bb15, label %bb16

panic1:                                           ; preds = %bb18
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_c065d6da53a1d14022335d225ec4b9dc) #7
  unreachable

bb16:                                             ; preds = %bb19
  %_62 = icmp ult i64 %i, 16
  %147 = call i1 @llvm.expect.i1(i1 %_62, i1 true)
  br i1 %147, label %bb20, label %panic2

bb15:                                             ; preds = %bb19
  store i8 1, ptr %_51, align 1
  br label %bb17

bb17:                                             ; preds = %bb21, %bb15
  %148 = load i8, ptr %_51, align 1, !range !6, !noundef !4
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
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_a49e62c3cf9266ab428e68e732cf7633) #7
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
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_6e53deb12cfceb1176fdfcbe54e5f116) #7
  unreachable

bb13:                                             ; preds = %bb17
  %_69 = icmp ult i64 %i, 16
  %156 = call i1 @llvm.expect.i1(i1 %_69, i1 true)
  br i1 %156, label %bb22, label %panic4

bb12:                                             ; preds = %bb17
  store i8 1, ptr %_50, align 1
  br label %bb14

bb14:                                             ; preds = %bb23, %bb12
  %157 = load i8, ptr %_50, align 1, !range !6, !noundef !4
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
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_fb67f45825753652d4a21ad4d31e331c) #7
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
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_a8aa1402a8c00e42091950a5857ba703) #7
  unreachable

bb10:                                             ; preds = %bb14
  %_76 = icmp ult i64 %i, 16
  %165 = call i1 @llvm.expect.i1(i1 %_76, i1 true)
  br i1 %165, label %bb24, label %panic6

bb9:                                              ; preds = %bb14
  store i8 1, ptr %_49, align 1
  br label %bb11

bb11:                                             ; preds = %bb25, %bb9
  %166 = load i8, ptr %_49, align 1, !range !6, !noundef !4
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
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_773c185baee2769f0de9a4785c96c986) #7
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
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_e912690185a66a07ea9ec61b7872900d) #7
  unreachable

bb26:                                             ; preds = %bb11
  store i8 0, ptr %0, align 1
  br label %bb27

bb27:                                             ; preds = %bb26, %bb8
  %174 = load i8, ptr %0, align 1, !range !6, !noundef !4
  %175 = trunc i8 %174 to i1
  ret i1 %175
}

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64, i64, ptr align 8) unnamed_addr #3

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
  call void @flip_horizontal(ptr %img)
  store i8 -87, ptr %_26, align 1
  %68 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_26, i32 0, i32 1
  store i8 -103, ptr %68, align 1
  %69 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_26, i32 0, i32 2
  store i8 -88, ptr %69, align 1
  %70 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_26, i32 0, i32 3
  store i8 -82, ptr %70, align 1
  store i8 122, ptr %_27, align 1
  %71 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_27, i32 0, i32 1
  store i8 -10, ptr %71, align 1
  %72 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_27, i32 0, i32 2
  store i8 -58, ptr %72, align 1
  %73 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_27, i32 0, i32 3
  store i8 98, ptr %73, align 1
  store i8 -10, ptr %_28, align 1
  %74 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_28, i32 0, i32 1
  store i8 -111, ptr %74, align 1
  %75 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_28, i32 0, i32 2
  store i8 59, ptr %75, align 1
  %76 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_28, i32 0, i32 3
  store i8 -7, ptr %76, align 1
  store i8 -11, ptr %_29, align 1
  %77 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_29, i32 0, i32 1
  store i8 13, ptr %77, align 1
  %78 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_29, i32 0, i32 2
  store i8 102, ptr %78, align 1
  %79 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_29, i32 0, i32 3
  store i8 -65, ptr %79, align 1
  store i8 64, ptr %_30, align 1
  %80 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_30, i32 0, i32 1
  store i8 8, ptr %80, align 1
  %81 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_30, i32 0, i32 2
  store i8 40, ptr %81, align 1
  %82 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_30, i32 0, i32 3
  store i8 116, ptr %82, align 1
  store i8 -65, ptr %_31, align 1
  %83 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_31, i32 0, i32 1
  store i8 -78, ptr %83, align 1
  %84 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_31, i32 0, i32 2
  store i8 62, ptr %84, align 1
  %85 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_31, i32 0, i32 3
  store i8 -96, ptr %85, align 1
  store i8 5, ptr %_32, align 1
  %86 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_32, i32 0, i32 1
  store i8 -37, ptr %86, align 1
  %87 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_32, i32 0, i32 2
  store i8 -116, ptr %87, align 1
  %88 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_32, i32 0, i32 3
  store i8 -121, ptr %88, align 1
  store i8 -75, ptr %_33, align 1
  %89 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_33, i32 0, i32 1
  store i8 -116, ptr %89, align 1
  %90 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_33, i32 0, i32 2
  store i8 -83, ptr %90, align 1
  %91 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_33, i32 0, i32 3
  store i8 -57, ptr %91, align 1
  store i8 -45, ptr %_34, align 1
  %92 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_34, i32 0, i32 1
  store i8 -23, ptr %92, align 1
  %93 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_34, i32 0, i32 2
  store i8 -81, ptr %93, align 1
  %94 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_34, i32 0, i32 3
  store i8 -77, ptr %94, align 1
  store i8 64, ptr %_35, align 1
  %95 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_35, i32 0, i32 1
  store i8 -85, ptr %95, align 1
  %96 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_35, i32 0, i32 2
  store i8 4, ptr %96, align 1
  %97 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_35, i32 0, i32 3
  store i8 46, ptr %97, align 1
  store i8 -7, ptr %_36, align 1
  %98 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_36, i32 0, i32 1
  store i8 16, ptr %98, align 1
  %99 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_36, i32 0, i32 2
  store i8 -116, ptr %99, align 1
  %100 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_36, i32 0, i32 3
  store i8 27, ptr %100, align 1
  store i8 -85, ptr %_37, align 1
  %101 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_37, i32 0, i32 1
  store i8 24, ptr %101, align 1
  %102 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_37, i32 0, i32 2
  store i8 -91, ptr %102, align 1
  %103 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_37, i32 0, i32 3
  store i8 2, ptr %103, align 1
  store i8 -27, ptr %_38, align 1
  %104 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_38, i32 0, i32 1
  store i8 -16, ptr %104, align 1
  %105 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_38, i32 0, i32 2
  store i8 -6, ptr %105, align 1
  %106 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_38, i32 0, i32 3
  store i8 -122, ptr %106, align 1
  store i8 0, ptr %_39, align 1
  %107 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_39, i32 0, i32 1
  store i8 -64, ptr %107, align 1
  %108 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_39, i32 0, i32 2
  store i8 -98, ptr %108, align 1
  %109 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_39, i32 0, i32 3
  store i8 -106, ptr %109, align 1
  store i8 -8, ptr %_40, align 1
  %110 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_40, i32 0, i32 1
  store i8 -25, ptr %110, align 1
  %111 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_40, i32 0, i32 2
  store i8 -43, ptr %111, align 1
  %112 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_40, i32 0, i32 3
  store i8 9, ptr %112, align 1
  store i8 115, ptr %_41, align 1
  %113 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_41, i32 0, i32 1
  store i8 -116, ptr %113, align 1
  %114 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_41, i32 0, i32 2
  store i8 85, ptr %114, align 1
  %115 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_41, i32 0, i32 3
  store i8 -121, ptr %115, align 1
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
  %137 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h94e35dcbe65505f3E"(i64 %134, i64 %136)
  %_42.0 = extractvalue { i64, i64 } %137, 0
  %_42.1 = extractvalue { i64, i64 } %137, 1
  %138 = getelementptr inbounds { i64, i64 }, ptr %iter, i32 0, i32 0
  store i64 %_42.0, ptr %138, align 8
  %139 = getelementptr inbounds { i64, i64 }, ptr %iter, i32 0, i32 1
  store i64 %_42.1, ptr %139, align 8
  br label %bb4

bb4:                                              ; preds = %bb11, %start
  %140 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17he7bbdf001a7ba4ddE"(ptr align 8 %iter)
  store { i64, i64 } %140, ptr %_45, align 8
  %_47 = load i64, ptr %_45, align 8, !range !5, !noundef !4
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
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_49fcf67c4bd21976b6b732b8b108bd11) #7
  unreachable

bb19:                                             ; preds = %bb18
  %146 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 %i
  %_56 = load i8, ptr %146, align 1, !noundef !4
  %_52 = icmp ne i8 %_53, %_56
  br i1 %_52, label %bb15, label %bb16

panic1:                                           ; preds = %bb18
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_c9bf2ddf222b7fb91cb926cfd567efd0) #7
  unreachable

bb16:                                             ; preds = %bb19
  %_62 = icmp ult i64 %i, 16
  %147 = call i1 @llvm.expect.i1(i1 %_62, i1 true)
  br i1 %147, label %bb20, label %panic2

bb15:                                             ; preds = %bb19
  store i8 1, ptr %_51, align 1
  br label %bb17

bb17:                                             ; preds = %bb21, %bb15
  %148 = load i8, ptr %_51, align 1, !range !6, !noundef !4
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
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_4a13c2563b3f6bcfd680e48b26606443) #7
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
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_cbd50bc2e2b285856b19e018fbb9d78b) #7
  unreachable

bb13:                                             ; preds = %bb17
  %_69 = icmp ult i64 %i, 16
  %156 = call i1 @llvm.expect.i1(i1 %_69, i1 true)
  br i1 %156, label %bb22, label %panic4

bb12:                                             ; preds = %bb17
  store i8 1, ptr %_50, align 1
  br label %bb14

bb14:                                             ; preds = %bb23, %bb12
  %157 = load i8, ptr %_50, align 1, !range !6, !noundef !4
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
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_954c0b78425366a4eddc8fe05f30d43c) #7
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
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_bbf14c299cf08e7e747cc5e7d433ca67) #7
  unreachable

bb10:                                             ; preds = %bb14
  %_76 = icmp ult i64 %i, 16
  %165 = call i1 @llvm.expect.i1(i1 %_76, i1 true)
  br i1 %165, label %bb24, label %panic6

bb9:                                              ; preds = %bb14
  store i8 1, ptr %_49, align 1
  br label %bb11

bb11:                                             ; preds = %bb25, %bb9
  %166 = load i8, ptr %_49, align 1, !range !6, !noundef !4
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
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_489536f5d74f82227d98a054147a0af2) #7
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
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_71b503b4923202afddfaa2c24010b31c) #7
  unreachable

bb26:                                             ; preds = %bb11
  store i8 0, ptr %0, align 1
  br label %bb27

bb27:                                             ; preds = %bb26, %bb8
  %174 = load i8, ptr %0, align 1, !range !6, !noundef !4
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
  call void @flip_horizontal(ptr %img)
  store i8 -91, ptr %_26, align 1
  %68 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_26, i32 0, i32 1
  store i8 118, ptr %68, align 1
  %69 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_26, i32 0, i32 2
  store i8 -80, ptr %69, align 1
  %70 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_26, i32 0, i32 3
  store i8 111, ptr %70, align 1
  store i8 -126, ptr %_27, align 1
  %71 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_27, i32 0, i32 1
  store i8 -25, ptr %71, align 1
  %72 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_27, i32 0, i32 2
  store i8 -70, ptr %72, align 1
  %73 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_27, i32 0, i32 3
  store i8 112, ptr %73, align 1
  store i8 91, ptr %_28, align 1
  %74 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_28, i32 0, i32 1
  store i8 55, ptr %74, align 1
  %75 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_28, i32 0, i32 2
  store i8 -122, ptr %75, align 1
  %76 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_28, i32 0, i32 3
  store i8 70, ptr %76, align 1
  store i8 -50, ptr %_29, align 1
  %77 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_29, i32 0, i32 1
  store i8 36, ptr %77, align 1
  %78 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_29, i32 0, i32 2
  store i8 -57, ptr %78, align 1
  %79 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_29, i32 0, i32 3
  store i8 -17, ptr %79, align 1
  store i8 -118, ptr %_30, align 1
  %80 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_30, i32 0, i32 1
  store i8 118, ptr %80, align 1
  %81 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_30, i32 0, i32 2
  store i8 65, ptr %81, align 1
  %82 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_30, i32 0, i32 3
  store i8 91, ptr %82, align 1
  store i8 -58, ptr %_31, align 1
  %83 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_31, i32 0, i32 1
  store i8 -106, ptr %83, align 1
  %84 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_31, i32 0, i32 2
  store i8 -38, ptr %84, align 1
  %85 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_31, i32 0, i32 3
  store i8 -66, ptr %85, align 1
  store i8 113, ptr %_32, align 1
  %86 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_32, i32 0, i32 1
  store i8 -13, ptr %86, align 1
  %87 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_32, i32 0, i32 2
  store i8 83, ptr %87, align 1
  %88 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_32, i32 0, i32 3
  store i8 -53, ptr %88, align 1
  store i8 -117, ptr %_33, align 1
  %89 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_33, i32 0, i32 1
  store i8 119, ptr %89, align 1
  %90 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_33, i32 0, i32 2
  store i8 84, ptr %90, align 1
  %91 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_33, i32 0, i32 3
  store i8 -124, ptr %91, align 1
  store i8 -52, ptr %_34, align 1
  %92 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_34, i32 0, i32 1
  store i8 -14, ptr %92, align 1
  %93 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_34, i32 0, i32 2
  store i8 9, ptr %93, align 1
  %94 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_34, i32 0, i32 3
  store i8 65, ptr %94, align 1
  store i8 98, ptr %_35, align 1
  %95 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_35, i32 0, i32 1
  store i8 68, ptr %95, align 1
  %96 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_35, i32 0, i32 2
  store i8 81, ptr %96, align 1
  %97 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_35, i32 0, i32 3
  store i8 -107, ptr %97, align 1
  store i8 -54, ptr %_36, align 1
  %98 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_36, i32 0, i32 1
  store i8 -93, ptr %98, align 1
  %99 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_36, i32 0, i32 2
  store i8 -96, ptr %99, align 1
  %100 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_36, i32 0, i32 3
  store i8 59, ptr %100, align 1
  store i8 -63, ptr %_37, align 1
  %101 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_37, i32 0, i32 1
  store i8 29, ptr %101, align 1
  %102 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_37, i32 0, i32 2
  store i8 46, ptr %102, align 1
  %103 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_37, i32 0, i32 3
  store i8 -46, ptr %103, align 1
  store i8 0, ptr %_38, align 1
  %104 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_38, i32 0, i32 1
  store i8 -98, ptr %104, align 1
  %105 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_38, i32 0, i32 2
  store i8 15, ptr %105, align 1
  %106 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_38, i32 0, i32 3
  store i8 71, ptr %106, align 1
  store i8 83, ptr %_39, align 1
  %107 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_39, i32 0, i32 1
  store i8 22, ptr %107, align 1
  %108 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_39, i32 0, i32 2
  store i8 -93, ptr %108, align 1
  %109 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_39, i32 0, i32 3
  store i8 1, ptr %109, align 1
  store i8 -67, ptr %_40, align 1
  %110 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_40, i32 0, i32 1
  store i8 97, ptr %110, align 1
  %111 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_40, i32 0, i32 2
  store i8 64, ptr %111, align 1
  %112 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_40, i32 0, i32 3
  store i8 87, ptr %112, align 1
  store i8 28, ptr %_41, align 1
  %113 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_41, i32 0, i32 1
  store i8 108, ptr %113, align 1
  %114 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_41, i32 0, i32 2
  store i8 111, ptr %114, align 1
  %115 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_41, i32 0, i32 3
  store i8 -69, ptr %115, align 1
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
  %137 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h94e35dcbe65505f3E"(i64 %134, i64 %136)
  %_42.0 = extractvalue { i64, i64 } %137, 0
  %_42.1 = extractvalue { i64, i64 } %137, 1
  %138 = getelementptr inbounds { i64, i64 }, ptr %iter, i32 0, i32 0
  store i64 %_42.0, ptr %138, align 8
  %139 = getelementptr inbounds { i64, i64 }, ptr %iter, i32 0, i32 1
  store i64 %_42.1, ptr %139, align 8
  br label %bb4

bb4:                                              ; preds = %bb11, %start
  %140 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17he7bbdf001a7ba4ddE"(ptr align 8 %iter)
  store { i64, i64 } %140, ptr %_45, align 8
  %_47 = load i64, ptr %_45, align 8, !range !5, !noundef !4
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
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_bced08fde2c409ec9cd52b3190c25bdd) #7
  unreachable

bb19:                                             ; preds = %bb18
  %146 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 %i
  %_56 = load i8, ptr %146, align 1, !noundef !4
  %_52 = icmp ne i8 %_53, %_56
  br i1 %_52, label %bb15, label %bb16

panic1:                                           ; preds = %bb18
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_2b9a5b7616955f31c1e7c94370bbb15c) #7
  unreachable

bb16:                                             ; preds = %bb19
  %_62 = icmp ult i64 %i, 16
  %147 = call i1 @llvm.expect.i1(i1 %_62, i1 true)
  br i1 %147, label %bb20, label %panic2

bb15:                                             ; preds = %bb19
  store i8 1, ptr %_51, align 1
  br label %bb17

bb17:                                             ; preds = %bb21, %bb15
  %148 = load i8, ptr %_51, align 1, !range !6, !noundef !4
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
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_2f03392ad3b676596def755b1c66b513) #7
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
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_9941eb6bcb1a398fb6e22f95a6625fde) #7
  unreachable

bb13:                                             ; preds = %bb17
  %_69 = icmp ult i64 %i, 16
  %156 = call i1 @llvm.expect.i1(i1 %_69, i1 true)
  br i1 %156, label %bb22, label %panic4

bb12:                                             ; preds = %bb17
  store i8 1, ptr %_50, align 1
  br label %bb14

bb14:                                             ; preds = %bb23, %bb12
  %157 = load i8, ptr %_50, align 1, !range !6, !noundef !4
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
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_4a374c6f5bc7693b7f2b36394711af74) #7
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
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_6e5895018258916dd5da53b05a5d0a31) #7
  unreachable

bb10:                                             ; preds = %bb14
  %_76 = icmp ult i64 %i, 16
  %165 = call i1 @llvm.expect.i1(i1 %_76, i1 true)
  br i1 %165, label %bb24, label %panic6

bb9:                                              ; preds = %bb14
  store i8 1, ptr %_49, align 1
  br label %bb11

bb11:                                             ; preds = %bb25, %bb9
  %166 = load i8, ptr %_49, align 1, !range !6, !noundef !4
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
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_a9c9d5cf9b08c15d827d720e9ae81950) #7
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
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_45f478d2c0c33f6fa87891a9bbe9e638) #7
  unreachable

bb26:                                             ; preds = %bb11
  store i8 0, ptr %0, align 1
  br label %bb27

bb27:                                             ; preds = %bb26, %bb8
  %174 = load i8, ptr %0, align 1, !range !6, !noundef !4
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
  call void @flip_horizontal(ptr %img)
  store i8 -57, ptr %_26, align 1
  %68 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_26, i32 0, i32 1
  store i8 -73, ptr %68, align 1
  %69 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_26, i32 0, i32 2
  store i8 58, ptr %69, align 1
  %70 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_26, i32 0, i32 3
  store i8 -102, ptr %70, align 1
  store i8 54, ptr %_27, align 1
  %71 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_27, i32 0, i32 1
  store i8 26, ptr %71, align 1
  %72 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_27, i32 0, i32 2
  store i8 89, ptr %72, align 1
  %73 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_27, i32 0, i32 3
  store i8 13, ptr %73, align 1
  store i8 -46, ptr %_28, align 1
  %74 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_28, i32 0, i32 1
  store i8 4, ptr %74, align 1
  %75 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_28, i32 0, i32 2
  store i8 123, ptr %75, align 1
  %76 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_28, i32 0, i32 3
  store i8 84, ptr %76, align 1
  store i8 106, ptr %_29, align 1
  %77 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_29, i32 0, i32 1
  store i8 -81, ptr %77, align 1
  %78 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_29, i32 0, i32 2
  store i8 4, ptr %78, align 1
  %79 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_29, i32 0, i32 3
  store i8 74, ptr %79, align 1
  store i8 -109, ptr %_30, align 1
  %80 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_30, i32 0, i32 1
  store i8 -57, ptr %80, align 1
  %81 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_30, i32 0, i32 2
  store i8 -128, ptr %81, align 1
  %82 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_30, i32 0, i32 3
  store i8 18, ptr %82, align 1
  store i8 51, ptr %_31, align 1
  %83 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_31, i32 0, i32 1
  store i8 -98, ptr %83, align 1
  %84 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_31, i32 0, i32 2
  store i8 55, ptr %84, align 1
  %85 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_31, i32 0, i32 3
  store i8 -65, ptr %85, align 1
  store i8 60, ptr %_32, align 1
  %86 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_32, i32 0, i32 1
  store i8 -128, ptr %86, align 1
  %87 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_32, i32 0, i32 2
  store i8 102, ptr %87, align 1
  %88 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_32, i32 0, i32 3
  store i8 27, ptr %88, align 1
  store i8 -126, ptr %_33, align 1
  %89 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_33, i32 0, i32 1
  store i8 125, ptr %89, align 1
  %90 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_33, i32 0, i32 2
  store i8 -85, ptr %90, align 1
  %91 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_33, i32 0, i32 3
  store i8 63, ptr %91, align 1
  store i8 -100, ptr %_34, align 1
  %92 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_34, i32 0, i32 1
  store i8 76, ptr %92, align 1
  %93 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_34, i32 0, i32 2
  store i8 -64, ptr %93, align 1
  %94 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_34, i32 0, i32 3
  store i8 10, ptr %94, align 1
  store i8 29, ptr %_35, align 1
  %95 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_35, i32 0, i32 1
  store i8 -33, ptr %95, align 1
  %96 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_35, i32 0, i32 2
  store i8 26, ptr %96, align 1
  %97 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_35, i32 0, i32 3
  store i8 -36, ptr %97, align 1
  store i8 41, ptr %_36, align 1
  %98 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_36, i32 0, i32 1
  store i8 -86, ptr %98, align 1
  %99 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_36, i32 0, i32 2
  store i8 -69, ptr %99, align 1
  %100 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_36, i32 0, i32 3
  store i8 -38, ptr %100, align 1
  store i8 7, ptr %_37, align 1
  %101 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_37, i32 0, i32 1
  store i8 -60, ptr %101, align 1
  %102 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_37, i32 0, i32 2
  store i8 80, ptr %102, align 1
  %103 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_37, i32 0, i32 3
  store i8 36, ptr %103, align 1
  store i8 -24, ptr %_38, align 1
  %104 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_38, i32 0, i32 1
  store i8 -79, ptr %104, align 1
  %105 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_38, i32 0, i32 2
  store i8 109, ptr %105, align 1
  %106 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_38, i32 0, i32 3
  store i8 -24, ptr %106, align 1
  store i8 -15, ptr %_39, align 1
  %107 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_39, i32 0, i32 1
  store i8 117, ptr %107, align 1
  %108 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_39, i32 0, i32 2
  store i8 71, ptr %108, align 1
  %109 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_39, i32 0, i32 3
  store i8 66, ptr %109, align 1
  store i8 120, ptr %_40, align 1
  %110 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_40, i32 0, i32 1
  store i8 62, ptr %110, align 1
  %111 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_40, i32 0, i32 2
  store i8 -1, ptr %111, align 1
  %112 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_40, i32 0, i32 3
  store i8 -84, ptr %112, align 1
  store i8 32, ptr %_41, align 1
  %113 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_41, i32 0, i32 1
  store i8 -19, ptr %113, align 1
  %114 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_41, i32 0, i32 2
  store i8 62, ptr %114, align 1
  %115 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_41, i32 0, i32 3
  store i8 -83, ptr %115, align 1
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
  %137 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h94e35dcbe65505f3E"(i64 %134, i64 %136)
  %_42.0 = extractvalue { i64, i64 } %137, 0
  %_42.1 = extractvalue { i64, i64 } %137, 1
  %138 = getelementptr inbounds { i64, i64 }, ptr %iter, i32 0, i32 0
  store i64 %_42.0, ptr %138, align 8
  %139 = getelementptr inbounds { i64, i64 }, ptr %iter, i32 0, i32 1
  store i64 %_42.1, ptr %139, align 8
  br label %bb4

bb4:                                              ; preds = %bb11, %start
  %140 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17he7bbdf001a7ba4ddE"(ptr align 8 %iter)
  store { i64, i64 } %140, ptr %_45, align 8
  %_47 = load i64, ptr %_45, align 8, !range !5, !noundef !4
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
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_0bf4db5d2d74b680fe2fba93d56aa075) #7
  unreachable

bb19:                                             ; preds = %bb18
  %146 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 %i
  %_56 = load i8, ptr %146, align 1, !noundef !4
  %_52 = icmp ne i8 %_53, %_56
  br i1 %_52, label %bb15, label %bb16

panic1:                                           ; preds = %bb18
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_0ef97b999b87de931e88af9b6008ce84) #7
  unreachable

bb16:                                             ; preds = %bb19
  %_62 = icmp ult i64 %i, 16
  %147 = call i1 @llvm.expect.i1(i1 %_62, i1 true)
  br i1 %147, label %bb20, label %panic2

bb15:                                             ; preds = %bb19
  store i8 1, ptr %_51, align 1
  br label %bb17

bb17:                                             ; preds = %bb21, %bb15
  %148 = load i8, ptr %_51, align 1, !range !6, !noundef !4
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
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_dd51a0e96554aa8519d1905638dd9ed1) #7
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
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_abed534d78fe83285195251241279d1f) #7
  unreachable

bb13:                                             ; preds = %bb17
  %_69 = icmp ult i64 %i, 16
  %156 = call i1 @llvm.expect.i1(i1 %_69, i1 true)
  br i1 %156, label %bb22, label %panic4

bb12:                                             ; preds = %bb17
  store i8 1, ptr %_50, align 1
  br label %bb14

bb14:                                             ; preds = %bb23, %bb12
  %157 = load i8, ptr %_50, align 1, !range !6, !noundef !4
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
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_9a11c590b6d786abe6c4d0a0b9377442) #7
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
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_669e143b579a2313cf998b6557e34d76) #7
  unreachable

bb10:                                             ; preds = %bb14
  %_76 = icmp ult i64 %i, 16
  %165 = call i1 @llvm.expect.i1(i1 %_76, i1 true)
  br i1 %165, label %bb24, label %panic6

bb9:                                              ; preds = %bb14
  store i8 1, ptr %_49, align 1
  br label %bb11

bb11:                                             ; preds = %bb25, %bb9
  %166 = load i8, ptr %_49, align 1, !range !6, !noundef !4
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
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_4386581fb904acfaaa9d2e27355e816b) #7
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
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_257258b6eef9503606085dc86273c743) #7
  unreachable

bb26:                                             ; preds = %bb11
  store i8 0, ptr %0, align 1
  br label %bb27

bb27:                                             ; preds = %bb26, %bb8
  %174 = load i8, ptr %0, align 1, !range !6, !noundef !4
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
  call void @flip_horizontal(ptr %img)
  store i8 -58, ptr %_26, align 1
  %68 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_26, i32 0, i32 1
  store i8 100, ptr %68, align 1
  %69 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_26, i32 0, i32 2
  store i8 47, ptr %69, align 1
  %70 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_26, i32 0, i32 3
  store i8 -18, ptr %70, align 1
  store i8 51, ptr %_27, align 1
  %71 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_27, i32 0, i32 1
  store i8 -73, ptr %71, align 1
  %72 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_27, i32 0, i32 2
  store i8 -74, ptr %72, align 1
  %73 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_27, i32 0, i32 3
  store i8 -3, ptr %73, align 1
  store i8 102, ptr %_28, align 1
  %74 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_28, i32 0, i32 1
  store i8 -68, ptr %74, align 1
  %75 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_28, i32 0, i32 2
  store i8 34, ptr %75, align 1
  %76 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_28, i32 0, i32 3
  store i8 39, ptr %76, align 1
  store i8 44, ptr %_29, align 1
  %77 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_29, i32 0, i32 1
  store i8 60, ptr %77, align 1
  %78 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_29, i32 0, i32 2
  store i8 9, ptr %78, align 1
  %79 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_29, i32 0, i32 3
  store i8 42, ptr %79, align 1
  store i8 -64, ptr %_30, align 1
  %80 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_30, i32 0, i32 1
  store i8 68, ptr %80, align 1
  %81 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_30, i32 0, i32 2
  store i8 12, ptr %81, align 1
  %82 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_30, i32 0, i32 3
  store i8 -57, ptr %82, align 1
  store i8 14, ptr %_31, align 1
  %83 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_31, i32 0, i32 1
  store i8 -115, ptr %83, align 1
  %84 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_31, i32 0, i32 2
  store i8 109, ptr %84, align 1
  %85 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_31, i32 0, i32 3
  store i8 -44, ptr %85, align 1
  store i8 46, ptr %_32, align 1
  %86 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_32, i32 0, i32 1
  store i8 75, ptr %86, align 1
  %87 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_32, i32 0, i32 2
  store i8 63, ptr %87, align 1
  %88 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_32, i32 0, i32 3
  store i8 -96, ptr %88, align 1
  store i8 -93, ptr %_33, align 1
  %89 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_33, i32 0, i32 1
  store i8 77, ptr %89, align 1
  %90 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_33, i32 0, i32 2
  store i8 67, ptr %90, align 1
  %91 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_33, i32 0, i32 3
  store i8 -14, ptr %91, align 1
  store i8 -13, ptr %_34, align 1
  %92 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_34, i32 0, i32 1
  store i8 124, ptr %92, align 1
  %93 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_34, i32 0, i32 2
  store i8 -102, ptr %93, align 1
  %94 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_34, i32 0, i32 3
  store i8 -1, ptr %94, align 1
  store i8 72, ptr %_35, align 1
  %95 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_35, i32 0, i32 1
  store i8 -31, ptr %95, align 1
  %96 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_35, i32 0, i32 2
  store i8 -128, ptr %96, align 1
  %97 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_35, i32 0, i32 3
  store i8 -17, ptr %97, align 1
  store i8 -19, ptr %_36, align 1
  %98 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_36, i32 0, i32 1
  store i8 -99, ptr %98, align 1
  %99 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_36, i32 0, i32 2
  store i8 43, ptr %99, align 1
  %100 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_36, i32 0, i32 3
  store i8 85, ptr %100, align 1
  store i8 -86, ptr %_37, align 1
  %101 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_37, i32 0, i32 1
  store i8 64, ptr %101, align 1
  %102 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_37, i32 0, i32 2
  store i8 -38, ptr %102, align 1
  %103 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_37, i32 0, i32 3
  store i8 -123, ptr %103, align 1
  store i8 -109, ptr %_38, align 1
  %104 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_38, i32 0, i32 1
  store i8 25, ptr %104, align 1
  %105 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_38, i32 0, i32 2
  store i8 16, ptr %105, align 1
  %106 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_38, i32 0, i32 3
  store i8 112, ptr %106, align 1
  store i8 46, ptr %_39, align 1
  %107 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_39, i32 0, i32 1
  store i8 80, ptr %107, align 1
  %108 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_39, i32 0, i32 2
  store i8 85, ptr %108, align 1
  %109 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_39, i32 0, i32 3
  store i8 68, ptr %109, align 1
  store i8 54, ptr %_40, align 1
  %110 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_40, i32 0, i32 1
  store i8 81, ptr %110, align 1
  %111 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_40, i32 0, i32 2
  store i8 21, ptr %111, align 1
  %112 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_40, i32 0, i32 3
  store i8 13, ptr %112, align 1
  store i8 19, ptr %_41, align 1
  %113 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_41, i32 0, i32 1
  store i8 -2, ptr %113, align 1
  %114 = getelementptr inbounds %"src::lib::CpPixelT", ptr %_41, i32 0, i32 2
  store i8 5, ptr %114, align 1
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
  %137 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h94e35dcbe65505f3E"(i64 %134, i64 %136)
  %_42.0 = extractvalue { i64, i64 } %137, 0
  %_42.1 = extractvalue { i64, i64 } %137, 1
  %138 = getelementptr inbounds { i64, i64 }, ptr %iter, i32 0, i32 0
  store i64 %_42.0, ptr %138, align 8
  %139 = getelementptr inbounds { i64, i64 }, ptr %iter, i32 0, i32 1
  store i64 %_42.1, ptr %139, align 8
  br label %bb4

bb4:                                              ; preds = %bb11, %start
  %140 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17he7bbdf001a7ba4ddE"(ptr align 8 %iter)
  store { i64, i64 } %140, ptr %_45, align 8
  %_47 = load i64, ptr %_45, align 8, !range !5, !noundef !4
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
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_901e997463b21e6161114b30ea0dd439) #7
  unreachable

bb19:                                             ; preds = %bb18
  %146 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %expected, i64 0, i64 %i
  %_56 = load i8, ptr %146, align 1, !noundef !4
  %_52 = icmp ne i8 %_53, %_56
  br i1 %_52, label %bb15, label %bb16

panic1:                                           ; preds = %bb18
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_a2e5d7c33dbc9828707a1558a7b33247) #7
  unreachable

bb16:                                             ; preds = %bb19
  %_62 = icmp ult i64 %i, 16
  %147 = call i1 @llvm.expect.i1(i1 %_62, i1 true)
  br i1 %147, label %bb20, label %panic2

bb15:                                             ; preds = %bb19
  store i8 1, ptr %_51, align 1
  br label %bb17

bb17:                                             ; preds = %bb21, %bb15
  %148 = load i8, ptr %_51, align 1, !range !6, !noundef !4
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
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_7d100bb3eacf6b328c94fd101159589b) #7
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
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_5d5a91849d70319fa9dbb97b54f75406) #7
  unreachable

bb13:                                             ; preds = %bb17
  %_69 = icmp ult i64 %i, 16
  %156 = call i1 @llvm.expect.i1(i1 %_69, i1 true)
  br i1 %156, label %bb22, label %panic4

bb12:                                             ; preds = %bb17
  store i8 1, ptr %_50, align 1
  br label %bb14

bb14:                                             ; preds = %bb23, %bb12
  %157 = load i8, ptr %_50, align 1, !range !6, !noundef !4
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
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_d8f5fff258f48d52d0706fb5fda8f28f) #7
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
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_7d18f42d878201001132fe29daea4766) #7
  unreachable

bb10:                                             ; preds = %bb14
  %_76 = icmp ult i64 %i, 16
  %165 = call i1 @llvm.expect.i1(i1 %_76, i1 true)
  br i1 %165, label %bb24, label %panic6

bb9:                                              ; preds = %bb14
  store i8 1, ptr %_49, align 1
  br label %bb11

bb11:                                             ; preds = %bb25, %bb9
  %166 = load i8, ptr %_49, align 1, !range !6, !noundef !4
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
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_955b6b1757a32572a1487dda42ff0e20) #7
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
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 16, ptr align 8 @alloc_d288a0c1c8a8154464a7100830307491) #7
  unreachable

bb26:                                             ; preds = %bb11
  store i8 0, ptr %0, align 1
  br label %bb27

bb27:                                             ; preds = %bb26, %bb8
  %174 = load i8, ptr %0, align 1, !range !6, !noundef !4
  %175 = trunc i8 %174 to i1
  ret i1 %175
}

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #3 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { noreturn }
attributes #8 = { noinline noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 2, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{}
!5 = !{i64 0, i64 2}
!6 = !{i8 0, i8 2}
!7 = !{i64 1}
!8 = !{i64 8}
