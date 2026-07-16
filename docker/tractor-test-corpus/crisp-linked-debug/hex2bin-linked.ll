; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; ASSERT EQ: i1 1 = call i1 @run_test_1()
; ASSERT EQ: i1 1 = call i1 @run_test_2()
; ASSERT EQ: i1 1 = call i1 @run_test_3()
; ASSERT EQ: i1 1 = call i1 @run_test_4()
; ASSERT EQ: i1 1 = call i1 @run_test_5()

%"core::ptr::metadata::PtrRepr<[u8]>" = type { [2 x i64] }
%"core::ptr::metadata::PtrComponents<*const i8>" = type { ptr, {} }
%"core::ptr::metadata::PtrRepr<*const i8>" = type { [1 x i64] }

@alloc_5f55955de67e57c79064b537689facea = private unnamed_addr constant <{ [43 x i8] }> <{ [43 x i8] c"called `Option::unwrap()` on a `None` value" }>, align 1
@alloc_f5ffd2fd1476bab43ad89fb40c72d0c5 = private unnamed_addr constant <{ [10 x i8] }> <{ [10 x i8] c"src/lib.rs" }>, align 1
@alloc_94f59cb50597faf197a6b36fec00cd8a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\22\00\00\00\0D\00\00\00" }>, align 8
@alloc_81de958ef81cd7e1dff369f66004e6b1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00C\00\00\00\15\00\00\00" }>, align 8
@alloc_8abdb251c575612ccdd57b37f9666599 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\000\00\00\00-\00\00\00" }>, align 8
@alloc_38a9d1c1fccd92e612dd2762da060982 = private unnamed_addr constant <{}> zeroinitializer, align 1
@alloc_73ec2d4492238b2fd80312066d0bc066 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\94\00\00\00\0D\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define i32 @hex2bin(ptr %bin, i64 %bin_maxlen, ptr %hex, i64 %hex_len, ptr %ignore, ptr %hex_end_p) unnamed_addr #0 {
start:
  %hex_end_p.dbg.spill = alloca ptr, align 8
  %ignore.dbg.spill = alloca ptr, align 8
  %hex_len.dbg.spill = alloca i64, align 8
  %hex.dbg.spill = alloca ptr, align 8
  %bin_maxlen.dbg.spill = alloca i64, align 8
  %bin.dbg.spill = alloca ptr, align 8
  store ptr %bin, ptr %bin.dbg.spill, align 8
  store i64 %bin_maxlen, ptr %bin_maxlen.dbg.spill, align 8
  store ptr %hex, ptr %hex.dbg.spill, align 8
  store i64 %hex_len, ptr %hex_len.dbg.spill, align 8
  store ptr %ignore, ptr %ignore.dbg.spill, align 8
  store ptr %hex_end_p, ptr %hex_end_p.dbg.spill, align 8
  %0 = call i32 @_ZN11hex2bin_lib3src3lib16hex2bin_from_raw17h87ccbf5667d3906cE(ptr %bin, i64 %bin_maxlen, ptr %hex, i64 %hex_len, ptr %ignore, ptr %hex_end_p)
  ret i32 %0
}

; Function Attrs: nonlazybind uwtable
define internal i32 @_ZN11hex2bin_lib3src3lib16hex2bin_from_raw17h87ccbf5667d3906cE(ptr %bin, i64 %bin_maxlen, ptr %hex, i64 %hex_len, ptr %ignore, ptr %hex_end_p) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %0 = alloca ptr, align 8
  %count.dbg.spill1.i = alloca i64, align 8
  %count.dbg.spill.i = alloca i64, align 8
  %self.dbg.spill.i = alloca ptr, align 8
  %ret.dbg.spill = alloca i32, align 4
  %hex_slice.dbg.spill = alloca { ptr, i64 }, align 8
  %bin_slice.dbg.spill = alloca { ptr, i64 }, align 8
  %hex_end_p.dbg.spill = alloca ptr, align 8
  %ignore.dbg.spill = alloca ptr, align 8
  %hex_len.dbg.spill = alloca i64, align 8
  %hex.dbg.spill = alloca ptr, align 8
  %bin_maxlen.dbg.spill = alloca i64, align 8
  %bin.dbg.spill = alloca ptr, align 8
  %_23 = alloca i8, align 1
  %_16 = alloca { i64, ptr }, align 8
  %end_opt = alloca ptr, align 8
  %end_pos = alloca i64, align 8
  %1 = alloca i32, align 4
  store ptr %bin, ptr %bin.dbg.spill, align 8
  store i64 %bin_maxlen, ptr %bin_maxlen.dbg.spill, align 8
  store ptr %hex, ptr %hex.dbg.spill, align 8
  store i64 %hex_len, ptr %hex_len.dbg.spill, align 8
  store ptr %ignore, ptr %ignore.dbg.spill, align 8
  store ptr %hex_end_p, ptr %hex_end_p.dbg.spill, align 8
  %2 = call { ptr, i64 } @_ZN11hex2bin_lib3src3lib16mut_buf_to_slice17h1bf5090a1c347c85E(ptr %bin, i64 %bin_maxlen)
  %bin_slice.0 = extractvalue { ptr, i64 } %2, 0
  %bin_slice.1 = extractvalue { ptr, i64 } %2, 1
  %3 = getelementptr inbounds { ptr, i64 }, ptr %bin_slice.dbg.spill, i32 0, i32 0
  store ptr %bin_slice.0, ptr %3, align 8
  %4 = getelementptr inbounds { ptr, i64 }, ptr %bin_slice.dbg.spill, i32 0, i32 1
  store i64 %bin_slice.1, ptr %4, align 8
  %5 = call { ptr, i64 } @_ZN11hex2bin_lib3src3lib14c_buf_to_slice17had3adcbe8c2ce4a7E(ptr %hex, i64 %hex_len)
  %hex_slice.0 = extractvalue { ptr, i64 } %5, 0
  %hex_slice.1 = extractvalue { ptr, i64 } %5, 1
  %6 = getelementptr inbounds { ptr, i64 }, ptr %hex_slice.dbg.spill, i32 0, i32 0
  store ptr %hex_slice.0, ptr %6, align 8
  %7 = getelementptr inbounds { ptr, i64 }, ptr %hex_slice.dbg.spill, i32 0, i32 1
  store i64 %hex_slice.1, ptr %7, align 8
  store i64 0, ptr %end_pos, align 8
  %_11 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h8c434b073dedf12eE"(ptr %hex_end_p)
  br i1 %_11, label %bb4, label %bb5

bb5:                                              ; preds = %start
  store ptr %end_pos, ptr %end_opt, align 8
  br label %bb6

bb4:                                              ; preds = %start
  store ptr null, ptr %end_opt, align 8
  br label %bb6

bb6:                                              ; preds = %bb4, %bb5
  %_17 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17he9be66ebca634049E"(ptr %ignore)
  br i1 %_17, label %bb8, label %bb9

bb9:                                              ; preds = %bb6
  %8 = getelementptr inbounds { i64, ptr }, ptr %_16, i32 0, i32 1
  store ptr %ignore, ptr %8, align 8
  store i64 1, ptr %_16, align 8
  br label %bb10

bb8:                                              ; preds = %bb6
  store i64 0, ptr %_16, align 8
  br label %bb10

bb10:                                             ; preds = %bb8, %bb9
  %_18 = load ptr, ptr %end_opt, align 8, !align !4, !noundef !5
  %9 = getelementptr inbounds { i64, ptr }, ptr %_16, i32 0, i32 0
  %10 = load i64, ptr %9, align 8, !range !6, !noundef !5
  %11 = getelementptr inbounds { i64, ptr }, ptr %_16, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %ret = call i32 @_ZN11hex2bin_lib3src3lib7hex2bin17hcbec54617365b66aE(ptr align 1 %bin_slice.0, i64 %bin_slice.1, i64 %bin_maxlen, ptr align 1 %hex_slice.0, i64 %hex_slice.1, i64 %hex_len, i64 %10, ptr %12, ptr align 8 %_18)
  store i32 %ret, ptr %ret.dbg.spill, align 4
  %_20 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h8c434b073dedf12eE"(ptr %hex_end_p)
  %_19 = xor i1 %_20, true
  br i1 %_19, label %bb13, label %bb15

bb15:                                             ; preds = %bb10
  %_25 = load i64, ptr %end_pos, align 8, !noundef !5
  %_26 = call i64 @_ZN4core3cmp3min17h544ce9cc60791699E(i64 %hex_len, i64 %hex_slice.1)
  %_24 = icmp ne i64 %_25, %_26
  br i1 %_24, label %bb17, label %bb16

bb13:                                             ; preds = %bb10
  %_22 = load i64, ptr %end_pos, align 8, !noundef !5
  store ptr %hex, ptr %self.dbg.spill.i, align 8
  store i64 %_22, ptr %count.dbg.spill.i, align 8
  store i64 %_22, ptr %count.dbg.spill1.i, align 8
  %13 = getelementptr i8, ptr %hex, i64 %_22
  store ptr %13, ptr %0, align 8
  %14 = load ptr, ptr %0, align 8, !noundef !5
  %_32 = ptrtoint ptr %hex_end_p to i64
  %_35 = and i64 %_32, 7
  %_36 = icmp eq i64 %_35, 0
  %15 = call i1 @llvm.expect.i1(i1 %_36, i1 true)
  br i1 %15, label %bb23, label %panic

bb23:                                             ; preds = %bb13
  store ptr %14, ptr %hex_end_p, align 8
  br label %bb21

panic:                                            ; preds = %bb13
  invoke void @_ZN4core9panicking36panic_misaligned_pointer_dereference17h587229c42ea18e2bE(i64 8, i64 %_32, ptr align 8 @alloc_73ec2d4492238b2fd80312066d0bc066) #8
          to label %unreachable unwind label %terminate

terminate:                                        ; preds = %panic
  %16 = landingpad { ptr, i32 }
          cleanup
  %17 = extractvalue { ptr, i32 } %16, 0
  %18 = extractvalue { ptr, i32 } %16, 1
  call void @_ZN4core9panicking19panic_cannot_unwind17h629e1da841ab4abfE() #9
  unreachable

unreachable:                                      ; preds = %panic
  unreachable

bb21:                                             ; preds = %bb18, %bb23
  store i32 %ret, ptr %1, align 4
  br label %bb22

bb16:                                             ; preds = %bb15
  store i8 0, ptr %_23, align 1
  br label %bb18

bb17:                                             ; preds = %bb15
  %_29 = icmp eq i32 %ret, 0
  %19 = zext i1 %_29 to i8
  store i8 %19, ptr %_23, align 1
  br label %bb18

bb18:                                             ; preds = %bb17, %bb16
  %20 = load i8, ptr %_23, align 1, !range !7, !noundef !5
  %21 = trunc i8 %20 to i1
  br i1 %21, label %bb20, label %bb21

bb20:                                             ; preds = %bb18
  store i32 -1, ptr %1, align 4
  br label %bb22

bb22:                                             ; preds = %bb20, %bb21
  %22 = load i32, ptr %1, align 4, !noundef !5
  ret i32 %22
}

; Function Attrs: nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
define internal { ptr, i64 } @_ZN11hex2bin_lib3src3lib16mut_buf_to_slice17h1bf5090a1c347c85E(ptr %ptr, i64 %len) unnamed_addr #0 {
start:
  %len.dbg.spill = alloca i64, align 8
  %ptr.dbg.spill = alloca ptr, align 8
  %_3 = alloca { ptr, i64 }, align 8
  store ptr %ptr, ptr %ptr.dbg.spill, align 8
  store i64 %len, ptr %len.dbg.spill, align 8
  %0 = icmp eq i64 %len, 0
  br i1 %0, label %bb1, label %bb2

bb1:                                              ; preds = %start
  %1 = getelementptr inbounds { ptr, i64 }, ptr %_3, i32 0, i32 0
  store ptr @alloc_38a9d1c1fccd92e612dd2762da060982, ptr %1, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %_3, i32 0, i32 1
  store i64 0, ptr %2, align 8
  br label %bb4

bb2:                                              ; preds = %start
  %3 = call { ptr, i64 } @_ZN4core5slice3raw18from_raw_parts_mut17h7a440cd65c93ba42E(ptr %ptr, i64 %len)
  %_6.0 = extractvalue { ptr, i64 } %3, 0
  %_6.1 = extractvalue { ptr, i64 } %3, 1
  %4 = getelementptr inbounds { ptr, i64 }, ptr %_3, i32 0, i32 0
  store ptr %_6.0, ptr %4, align 8
  %5 = getelementptr inbounds { ptr, i64 }, ptr %_3, i32 0, i32 1
  store i64 %_6.1, ptr %5, align 8
  br label %bb4

bb4:                                              ; preds = %bb2, %bb1
  %6 = getelementptr inbounds { ptr, i64 }, ptr %_3, i32 0, i32 0
  %7 = load ptr, ptr %6, align 8, !nonnull !5, !align !8, !noundef !5
  %8 = getelementptr inbounds { ptr, i64 }, ptr %_3, i32 0, i32 1
  %9 = load i64, ptr %8, align 8, !noundef !5
  %10 = insertvalue { ptr, i64 } poison, ptr %7, 0
  %11 = insertvalue { ptr, i64 } %10, i64 %9, 1
  ret { ptr, i64 } %11
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, i64 } @_ZN11hex2bin_lib3src3lib14c_buf_to_slice17had3adcbe8c2ce4a7E(ptr %ptr, i64 %len) unnamed_addr #0 {
start:
  %self.dbg.spill.i = alloca ptr, align 8
  %len.dbg.spill = alloca i64, align 8
  %ptr.dbg.spill = alloca ptr, align 8
  %0 = alloca { ptr, i64 }, align 8
  store ptr %ptr, ptr %ptr.dbg.spill, align 8
  store i64 %len, ptr %len.dbg.spill, align 8
  %1 = icmp eq i64 %len, 0
  br i1 %1, label %bb1, label %bb2

bb1:                                              ; preds = %start
  %2 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 0
  store ptr @alloc_38a9d1c1fccd92e612dd2762da060982, ptr %2, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 1
  store i64 0, ptr %3, align 8
  br label %bb5

bb2:                                              ; preds = %start
  store ptr %ptr, ptr %self.dbg.spill.i, align 8
  %4 = call { ptr, i64 } @_ZN4core5slice3raw14from_raw_parts17hf7bee163743fb7b4E(ptr %ptr, i64 %len)
  %_3.0 = extractvalue { ptr, i64 } %4, 0
  %_3.1 = extractvalue { ptr, i64 } %4, 1
  %5 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 0
  store ptr %_3.0, ptr %5, align 8
  %6 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 1
  store i64 %_3.1, ptr %6, align 8
  br label %bb5

bb5:                                              ; preds = %bb2, %bb1
  %7 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 0
  %8 = load ptr, ptr %7, align 8, !nonnull !5, !align !8, !noundef !5
  %9 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 1
  %10 = load i64, ptr %9, align 8, !noundef !5
  %11 = insertvalue { ptr, i64 } poison, ptr %8, 0
  %12 = insertvalue { ptr, i64 } %11, i64 %10, 1
  ret { ptr, i64 } %12
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h8c434b073dedf12eE"(ptr %self) unnamed_addr #1 {
start:
  %ptr.dbg.spill = alloca ptr, align 8
  %self.dbg.spill = alloca ptr, align 8
  %_2 = alloca ptr, align 8
  store ptr %self, ptr %self.dbg.spill, align 8
  store ptr %self, ptr %_2, align 8
  %ptr = load ptr, ptr %_2, align 8, !noundef !5
  store ptr %ptr, ptr %ptr.dbg.spill, align 8
  %_5 = ptrtoint ptr %ptr to i64
  %0 = icmp eq i64 %_5, 0
  ret i1 %0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17he9be66ebca634049E"(ptr %self) unnamed_addr #1 {
start:
  %ptr.dbg.spill = alloca ptr, align 8
  %self.dbg.spill = alloca ptr, align 8
  %_2 = alloca ptr, align 8
  store ptr %self, ptr %self.dbg.spill, align 8
  store ptr %self, ptr %_2, align 8
  %ptr = load ptr, ptr %_2, align 8, !noundef !5
  store ptr %ptr, ptr %ptr.dbg.spill, align 8
  %_5 = ptrtoint ptr %ptr to i64
  %0 = icmp eq i64 %_5, 0
  ret i1 %0
}

; Function Attrs: nonlazybind uwtable
define internal i32 @_ZN11hex2bin_lib3src3lib7hex2bin17hcbec54617365b66aE(ptr align 1 %bin.0, i64 %bin.1, i64 %bin_maxlen, ptr align 1 %hex.0, i64 %hex.1, i64 %hex_len, i64 %0, ptr %1, ptr align 8 %2) unnamed_addr #0 {
start:
  %rhs.dbg.spill.i16 = alloca i64, align 8
  %self.dbg.spill.i17 = alloca i64, align 8
  %rhs.dbg.spill.i14 = alloca i64, align 8
  %self.dbg.spill.i15 = alloca i64, align 8
  %rhs.dbg.spill.i12 = alloca i64, align 8
  %self.dbg.spill.i13 = alloca i64, align 8
  %rhs.dbg.spill.i10 = alloca i64, align 8
  %self.dbg.spill.i11 = alloca i64, align 8
  %rhs.dbg.spill.i8 = alloca i32, align 4
  %self.dbg.spill.i9 = alloca i32, align 4
  %rhs.dbg.spill.i6 = alloca i32, align 4
  %self.dbg.spill.i7 = alloca i32, align 4
  %rhs.dbg.spill.i4 = alloca i32, align 4
  %self.dbg.spill.i5 = alloca i32, align 4
  %rhs.dbg.spill.i2 = alloca i32, align 4
  %self.dbg.spill.i3 = alloca i32, align 4
  %rhs.dbg.spill.i = alloca i32, align 4
  %self.dbg.spill.i = alloca i32, align 4
  %end_pos.dbg.spill = alloca ptr, align 8
  %fresh0.dbg.spill = alloca i64, align 8
  %c_val.dbg.spill = alloca i8, align 1
  %c_alpha0.dbg.spill = alloca i8, align 1
  %c_alpha.dbg.spill = alloca i8, align 1
  %c_num0.dbg.spill = alloca i8, align 1
  %c_num.dbg.spill = alloca i8, align 1
  %c.dbg.spill = alloca i8, align 1
  %effective_hex_len.dbg.spill = alloca i64, align 8
  %effective_bin_maxlen.dbg.spill = alloca i64, align 8
  %hex_len.dbg.spill = alloca i64, align 8
  %hex.dbg.spill = alloca { ptr, i64 }, align 8
  %bin_maxlen.dbg.spill = alloca i64, align 8
  %bin.dbg.spill = alloca { ptr, i64 }, align 8
  %_50 = alloca i8, align 1
  %_49 = alloca i8, align 1
  %state = alloca i8, align 1
  %c_acc = alloca i8, align 1
  %ret = alloca i32, align 4
  %hex_pos = alloca i64, align 8
  %bin_pos = alloca i64, align 8
  %3 = alloca i32, align 4
  %hex_end_p = alloca ptr, align 8
  %ignore = alloca { i64, ptr }, align 8
  %4 = getelementptr inbounds { i64, ptr }, ptr %ignore, i32 0, i32 0
  store i64 %0, ptr %4, align 8
  %5 = getelementptr inbounds { i64, ptr }, ptr %ignore, i32 0, i32 1
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %hex_end_p, align 8
  %6 = getelementptr inbounds { ptr, i64 }, ptr %bin.dbg.spill, i32 0, i32 0
  store ptr %bin.0, ptr %6, align 8
  %7 = getelementptr inbounds { ptr, i64 }, ptr %bin.dbg.spill, i32 0, i32 1
  store i64 %bin.1, ptr %7, align 8
  store i64 %bin_maxlen, ptr %bin_maxlen.dbg.spill, align 8
  %8 = getelementptr inbounds { ptr, i64 }, ptr %hex.dbg.spill, i32 0, i32 0
  store ptr %hex.0, ptr %8, align 8
  %9 = getelementptr inbounds { ptr, i64 }, ptr %hex.dbg.spill, i32 0, i32 1
  store i64 %hex.1, ptr %9, align 8
  store i64 %hex_len, ptr %hex_len.dbg.spill, align 8
  store i64 0, ptr %bin_pos, align 8
  store i64 0, ptr %hex_pos, align 8
  store i32 0, ptr %ret, align 4
  store i8 0, ptr %c_acc, align 1
  store i8 0, ptr %state, align 1
  %effective_bin_maxlen = call i64 @_ZN4core3cmp3min17h544ce9cc60791699E(i64 %bin_maxlen, i64 %bin.1)
  store i64 %effective_bin_maxlen, ptr %effective_bin_maxlen.dbg.spill, align 8
  %effective_hex_len = call i64 @_ZN4core3cmp3min17h544ce9cc60791699E(i64 %hex_len, i64 %hex.1)
  store i64 %effective_hex_len, ptr %effective_hex_len.dbg.spill, align 8
  br label %bb2

bb2:                                              ; preds = %bb19, %bb29, %start
  %_23 = load i64, ptr %hex_pos, align 8, !noundef !5
  %_22 = icmp ult i64 %_23, %effective_hex_len
  br i1 %_22, label %bb3, label %bb31

bb31:                                             ; preds = %bb12, %bb22, %bb2
  %_89 = load i8, ptr %state, align 1, !noundef !5
  %_88 = zext i8 %_89 to i32
  %10 = icmp eq i32 %_88, 0
  br i1 %10, label %bb34, label %bb32

bb3:                                              ; preds = %bb2
  %_26 = load i64, ptr %hex_pos, align 8, !noundef !5
  %_28 = icmp ult i64 %_26, %hex.1
  %11 = call i1 @llvm.expect.i1(i1 %_28, i1 true)
  br i1 %11, label %bb4, label %panic

bb4:                                              ; preds = %bb3
  %12 = getelementptr inbounds [0 x i8], ptr %hex.0, i64 0, i64 %_26
  %c = load i8, ptr %12, align 1, !noundef !5
  store i8 %c, ptr %c.dbg.spill, align 1
  %_30 = zext i8 %c to i32
  %_29 = xor i32 %_30, 48
  %c_num = trunc i32 %_29 to i8
  store i8 %c_num, ptr %c_num.dbg.spill, align 1
  %_33 = zext i8 %c_num to i32
  store i32 %_33, ptr %self.dbg.spill.i9, align 4
  store i32 10, ptr %rhs.dbg.spill.i8, align 4
  %13 = sub i32 %_33, 10
  %_31 = lshr i32 %13, 8
  %c_num0 = trunc i32 %_31 to i8
  store i8 %c_num0, ptr %c_num0.dbg.spill, align 1
  %_36 = zext i8 %c to i32
  %_35 = and i32 %_36, -33
  store i32 %_35, ptr %self.dbg.spill.i7, align 4
  store i32 55, ptr %rhs.dbg.spill.i6, align 4
  %14 = sub i32 %_35, 55
  %c_alpha = trunc i32 %14 to i8
  store i8 %c_alpha, ptr %c_alpha.dbg.spill, align 1
  %_41 = zext i8 %c_alpha to i32
  store i32 %_41, ptr %self.dbg.spill.i5, align 4
  store i32 10, ptr %rhs.dbg.spill.i4, align 4
  %15 = sub i32 %_41, 10
  %_43 = zext i8 %c_alpha to i32
  store i32 %_43, ptr %self.dbg.spill.i3, align 4
  store i32 16, ptr %rhs.dbg.spill.i2, align 4
  %16 = sub i32 %_43, 16
  %_39 = xor i32 %15, %16
  %_38 = lshr i32 %_39, 8
  %c_alpha0 = trunc i32 %_38 to i8
  store i8 %c_alpha0, ptr %c_alpha0.dbg.spill, align 1
  %_46 = zext i8 %c_num0 to i32
  %_47 = zext i8 %c_alpha0 to i32
  %_45 = or i32 %_46, %_47
  %17 = icmp eq i32 %_45, 0
  br i1 %17, label %bb9, label %bb21

panic:                                            ; preds = %bb3
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %_26, i64 %hex.1, ptr align 8 @alloc_94f59cb50597faf197a6b36fec00cd8a) #8
  unreachable

bb9:                                              ; preds = %bb4
  %_51 = call zeroext i1 @"_ZN4core6option15Option$LT$T$GT$7is_some17he59a6ae310aab183E"(ptr align 8 %ignore)
  br i1 %_51, label %bb14, label %bb13

bb21:                                             ; preds = %bb4
  %_62 = zext i8 %c_num0 to i32
  %_63 = zext i8 %c_num to i32
  %_61 = and i32 %_62, %_63
  %_65 = zext i8 %c_alpha0 to i32
  %_66 = zext i8 %c_alpha to i32
  %_64 = and i32 %_65, %_66
  %_60 = or i32 %_61, %_64
  %c_val = trunc i32 %_60 to i8
  store i8 %c_val, ptr %c_val.dbg.spill, align 1
  %_68 = load i64, ptr %bin_pos, align 8, !noundef !5
  %_67 = icmp uge i64 %_68, %effective_bin_maxlen
  br i1 %_67, label %bb22, label %bb23

bb23:                                             ; preds = %bb21
  %_71 = load i8, ptr %state, align 1, !noundef !5
  %_70 = zext i8 %_71 to i32
  %18 = icmp eq i32 %_70, 0
  br i1 %18, label %bb24, label %bb26

bb22:                                             ; preds = %bb21
  store i32 -1, ptr %ret, align 4
  br label %bb31

bb24:                                             ; preds = %bb23
  %_73 = zext i8 %c_val to i32
  store i32 %_73, ptr %self.dbg.spill.i, align 4
  store i32 16, ptr %rhs.dbg.spill.i, align 4
  %19 = mul i32 %_73, 16
  %20 = trunc i32 %19 to i8
  store i8 %20, ptr %c_acc, align 1
  br label %bb29

bb26:                                             ; preds = %bb23
  %fresh0 = load i64, ptr %bin_pos, align 8, !noundef !5
  store i64 %fresh0, ptr %fresh0.dbg.spill, align 8
  %_76 = load i64, ptr %bin_pos, align 8, !noundef !5
  store i64 %_76, ptr %self.dbg.spill.i15, align 8
  store i64 1, ptr %rhs.dbg.spill.i14, align 8
  %21 = add i64 %_76, 1
  store i64 %21, ptr %bin_pos, align 8
  %_79 = load i8, ptr %c_acc, align 1, !noundef !5
  %_78 = zext i8 %_79 to i32
  %_80 = zext i8 %c_val to i32
  %_77 = or i32 %_78, %_80
  %_82 = icmp ult i64 %fresh0, %bin.1
  %22 = call i1 @llvm.expect.i1(i1 %_82, i1 true)
  br i1 %22, label %bb28, label %panic1

bb28:                                             ; preds = %bb26
  %23 = getelementptr inbounds [0 x i8], ptr %bin.0, i64 0, i64 %fresh0
  %24 = trunc i32 %_77 to i8
  store i8 %24, ptr %23, align 1
  br label %bb29

panic1:                                           ; preds = %bb26
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %fresh0, i64 %bin.1, ptr align 8 @alloc_81de958ef81cd7e1dff369f66004e6b1) #8
  unreachable

bb29:                                             ; preds = %bb28, %bb24
  %_85 = load i8, ptr %state, align 1, !noundef !5
  %_84 = zext i8 %_85 to i32
  %_83 = xor i32 %_84, -1
  %25 = trunc i32 %_83 to i8
  store i8 %25, ptr %state, align 1
  %_87 = load i64, ptr %hex_pos, align 8, !noundef !5
  store i64 %_87, ptr %self.dbg.spill.i13, align 8
  store i64 1, ptr %rhs.dbg.spill.i12, align 8
  %26 = add i64 %_87, 1
  store i64 %26, ptr %hex_pos, align 8
  br label %bb2

bb13:                                             ; preds = %bb9
  store i8 0, ptr %_50, align 1
  br label %bb15

bb14:                                             ; preds = %bb9
  %_55 = load i8, ptr %state, align 1, !noundef !5
  %_54 = zext i8 %_55 to i32
  %_53 = icmp eq i32 %_54, 0
  %27 = zext i1 %_53 to i8
  store i8 %27, ptr %_50, align 1
  br label %bb15

bb15:                                             ; preds = %bb14, %bb13
  %28 = load i8, ptr %_50, align 1, !range !7, !noundef !5
  %29 = trunc i8 %28 to i1
  br i1 %29, label %bb11, label %bb10

bb10:                                             ; preds = %bb15
  store i8 0, ptr %_49, align 1
  br label %bb12

bb11:                                             ; preds = %bb15
  %30 = getelementptr inbounds { i64, ptr }, ptr %ignore, i32 0, i32 0
  %31 = load i64, ptr %30, align 8, !range !6, !noundef !5
  %32 = getelementptr inbounds { i64, ptr }, ptr %ignore, i32 0, i32 1
  %33 = load ptr, ptr %32, align 8
  %_57 = call ptr @"_ZN4core6option15Option$LT$T$GT$6unwrap17hf2e05e815747990cE"(i64 %31, ptr %33, ptr align 8 @alloc_8abdb251c575612ccdd57b37f9666599)
  %_56 = call zeroext i1 @_ZN11hex2bin_lib3src3lib17c_string_contains17hbf2eaf17bd847475E(ptr %_57, i8 %c)
  %34 = zext i1 %_56 to i8
  store i8 %34, ptr %_49, align 1
  br label %bb12

bb12:                                             ; preds = %bb11, %bb10
  %35 = load i8, ptr %_49, align 1, !range !7, !noundef !5
  %36 = trunc i8 %35 to i1
  %_48 = xor i1 %36, true
  br i1 %_48, label %bb31, label %bb19

bb19:                                             ; preds = %bb12
  %_59 = load i64, ptr %hex_pos, align 8, !noundef !5
  store i64 %_59, ptr %self.dbg.spill.i11, align 8
  store i64 1, ptr %rhs.dbg.spill.i10, align 8
  %37 = add i64 %_59, 1
  store i64 %37, ptr %hex_pos, align 8
  br label %bb2

bb34:                                             ; preds = %bb32, %bb31
  %_92 = load i32, ptr %ret, align 4, !noundef !5
  %38 = icmp eq i32 %_92, 0
  br i1 %38, label %bb36, label %bb35

bb32:                                             ; preds = %bb31
  %_91 = load i64, ptr %hex_pos, align 8, !noundef !5
  store i64 %_91, ptr %self.dbg.spill.i17, align 8
  store i64 1, ptr %rhs.dbg.spill.i16, align 8
  %39 = sub i64 %_91, 1
  store i64 %39, ptr %hex_pos, align 8
  store i32 -1, ptr %ret, align 4
  br label %bb34

bb36:                                             ; preds = %bb35, %bb34
  %40 = load ptr, ptr %hex_end_p, align 8, !noundef !5
  %41 = ptrtoint ptr %40 to i64
  %42 = icmp eq i64 %41, 0
  %_93 = select i1 %42, i64 0, i64 1
  %43 = icmp eq i64 %_93, 1
  br i1 %43, label %bb37, label %bb38

bb35:                                             ; preds = %bb34
  store i64 0, ptr %bin_pos, align 8
  br label %bb36

bb37:                                             ; preds = %bb36
  %end_pos = load ptr, ptr %hex_end_p, align 8, !nonnull !5, !align !4, !noundef !5
  store ptr %end_pos, ptr %end_pos.dbg.spill, align 8
  %_95 = load i64, ptr %hex_pos, align 8, !noundef !5
  store i64 %_95, ptr %end_pos, align 8
  br label %bb40

bb38:                                             ; preds = %bb36
  %_97 = load i64, ptr %hex_pos, align 8, !noundef !5
  %_96 = icmp ne i64 %_97, %effective_hex_len
  br i1 %_96, label %bb39, label %bb40

bb40:                                             ; preds = %bb39, %bb38, %bb37
  %_99 = load i32, ptr %ret, align 4, !noundef !5
  %44 = icmp eq i32 %_99, 0
  br i1 %44, label %bb42, label %bb41

bb39:                                             ; preds = %bb38
  store i32 -1, ptr %ret, align 4
  br label %bb40

bb42:                                             ; preds = %bb40
  %_100 = load i64, ptr %bin_pos, align 8, !noundef !5
  %45 = trunc i64 %_100 to i32
  store i32 %45, ptr %3, align 4
  br label %bb43

bb41:                                             ; preds = %bb40
  %46 = load i32, ptr %ret, align 4, !noundef !5
  store i32 %46, ptr %3, align 4
  br label %bb43

bb43:                                             ; preds = %bb41, %bb42
  %47 = load i32, ptr %3, align 4, !noundef !5
  ret i32 %47
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_ZN4core3cmp3min17h544ce9cc60791699E(i64 %v1, i64 %v2) unnamed_addr #1 {
start:
  %v2.dbg.spill = alloca i64, align 8
  %v1.dbg.spill = alloca i64, align 8
  store i64 %v1, ptr %v1.dbg.spill, align 8
  store i64 %v2, ptr %v2.dbg.spill, align 8
  %0 = call i64 @_ZN4core3cmp3Ord3min17h7d4ca96944c55ab5E(i64 %v1, i64 %v2)
  ret i64 %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.expect.i1(i1, i1) #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking36panic_misaligned_pointer_dereference17h587229c42ea18e2bE(i64, i64, ptr align 8) unnamed_addr #3

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_ZN4core9panicking19panic_cannot_unwind17h629e1da841ab4abfE() unnamed_addr #4

; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_ZN4core3cmp3Ord3min17h7d4ca96944c55ab5E(i64 %self, i64 %other) unnamed_addr #1 {
start:
  %other.dbg.spill = alloca i64, align 8
  %self.dbg.spill = alloca i64, align 8
  store i64 %self, ptr %self.dbg.spill, align 8
  store i64 %other, ptr %other.dbg.spill, align 8
  %0 = call i64 @_ZN4core3cmp6min_by17hab5f077c6c686884E(i64 %self, i64 %other)
  ret i64 %0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_ZN4core3cmp6min_by17hab5f077c6c686884E(i64 %0, i64 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  %6 = load ptr, ptr %5, align 8, !nonnull !5, !align !4, !noundef !5
  %7 = getelementptr inbounds { ptr, ptr }, ptr %_5, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8, !nonnull !5, !align !4, !noundef !5
  %9 = invoke i8 @_ZN4core3ops8function6FnOnce9call_once17h4918d9cffc6c03ebE(ptr align 8 %6, ptr align 8 %8)
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
  %_8 = load i8, ptr %_4, align 1, !range !9, !noundef !5
  switch i8 %_8, label %bb3 [
    i8 -1, label %bb4
    i8 0, label %bb4
    i8 1, label %bb2
  ]

bb13:                                             ; preds = %bb8
  %15 = load i8, ptr %_10, align 1, !range !7, !noundef !5
  %16 = trunc i8 %15 to i1
  br i1 %16, label %bb12, label %bb9

bb3:                                              ; preds = %bb1
  unreachable

bb4:                                              ; preds = %bb1, %bb1
  store i8 0, ptr %_10, align 1
  %17 = load i64, ptr %v1, align 8, !noundef !5
  store i64 %17, ptr %3, align 8
  br label %bb5

bb2:                                              ; preds = %bb1
  store i8 0, ptr %_9, align 1
  %18 = load i64, ptr %v2, align 8, !noundef !5
  store i64 %18, ptr %3, align 8
  br label %bb5

bb5:                                              ; preds = %bb2, %bb4
  %19 = load i8, ptr %_9, align 1, !range !7, !noundef !5
  %20 = trunc i8 %19 to i1
  br i1 %20, label %bb10, label %bb6

bb6:                                              ; preds = %bb10, %bb5
  %21 = load i8, ptr %_10, align 1, !range !7, !noundef !5
  %22 = trunc i8 %21 to i1
  br i1 %22, label %bb11, label %bb7

bb10:                                             ; preds = %bb5
  br label %bb6

bb9:                                              ; preds = %bb12, %bb13
  %23 = load ptr, ptr %2, align 8, !noundef !5
  %24 = getelementptr inbounds { ptr, i32 }, ptr %2, i32 0, i32 1
  %25 = load i32, ptr %24, align 8, !noundef !5
  %26 = insertvalue { ptr, i32 } poison, ptr %23, 0
  %27 = insertvalue { ptr, i32 } %26, i32 %25, 1
  resume { ptr, i32 } %27

bb12:                                             ; preds = %bb13
  br label %bb9

bb7:                                              ; preds = %bb11, %bb6
  %28 = load i64, ptr %3, align 8, !noundef !5
  ret i64 %28

bb11:                                             ; preds = %bb6
  br label %bb7
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8 @_ZN4core3ops8function6FnOnce9call_once17h4918d9cffc6c03ebE(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 {
start:
  %_1.dbg.spill = alloca {}, align 1
  %_2 = alloca { ptr, ptr }, align 8
  store ptr %0, ptr %_2, align 8
  %2 = getelementptr inbounds { ptr, ptr }, ptr %_2, i32 0, i32 1
  store ptr %1, ptr %2, align 8
  %3 = load ptr, ptr %_2, align 8, !nonnull !5, !align !4, !noundef !5
  %4 = getelementptr inbounds { ptr, ptr }, ptr %_2, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8, !nonnull !5, !align !4, !noundef !5
  %6 = call i8 @"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$usize$GT$3cmp17h443bfd338fdf7e15E"(ptr align 8 %3, ptr align 8 %5), !range !9
  ret i8 %6
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8 @"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$usize$GT$3cmp17h443bfd338fdf7e15E"(ptr align 8 %self, ptr align 8 %other) unnamed_addr #1 {
start:
  %other.dbg.spill = alloca ptr, align 8
  %self.dbg.spill = alloca ptr, align 8
  %0 = alloca i8, align 1
  store ptr %self, ptr %self.dbg.spill, align 8
  store ptr %other, ptr %other.dbg.spill, align 8
  %_4 = load i64, ptr %self, align 8, !noundef !5
  %_5 = load i64, ptr %other, align 8, !noundef !5
  %_3 = icmp ult i64 %_4, %_5
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_7 = load i64, ptr %self, align 8, !noundef !5
  %_8 = load i64, ptr %other, align 8, !noundef !5
  %_6 = icmp eq i64 %_7, %_8
  br i1 %_6, label %bb3, label %bb4

bb1:                                              ; preds = %start
  store i8 -1, ptr %0, align 1
  br label %bb6

bb6:                                              ; preds = %bb5, %bb1
  %1 = load i8, ptr %0, align 1, !range !9, !noundef !5
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

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64, i64, ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core6option15Option$LT$T$GT$7is_some17he59a6ae310aab183E"(ptr align 8 %self) unnamed_addr #1 {
start:
  %self.dbg.spill = alloca ptr, align 8
  %0 = alloca i8, align 1
  store ptr %self, ptr %self.dbg.spill, align 8
  %_2 = load i64, ptr %self, align 8, !range !6, !noundef !5
  %1 = icmp eq i64 %_2, 1
  br i1 %1, label %bb2, label %bb1

bb2:                                              ; preds = %start
  store i8 1, ptr %0, align 1
  br label %bb3

bb1:                                              ; preds = %start
  store i8 0, ptr %0, align 1
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  %2 = load i8, ptr %0, align 1, !range !7, !noundef !5
  %3 = trunc i8 %2 to i1
  ret i1 %3
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal ptr @"_ZN4core6option15Option$LT$T$GT$6unwrap17hf2e05e815747990cE"(i64 %0, ptr %1, ptr align 8 %2) unnamed_addr #1 {
start:
  %3 = alloca ptr, align 8
  %self = alloca { i64, ptr }, align 8
  %4 = getelementptr inbounds { i64, ptr }, ptr %self, i32 0, i32 0
  store i64 %0, ptr %4, align 8
  %5 = getelementptr inbounds { i64, ptr }, ptr %self, i32 0, i32 1
  store ptr %1, ptr %5, align 8
  %_2 = load i64, ptr %self, align 8, !range !6, !noundef !5
  %6 = icmp eq i64 %_2, 0
  br i1 %6, label %bb1, label %bb3

bb1:                                              ; preds = %start
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @alloc_5f55955de67e57c79064b537689facea, i64 43, ptr align 8 %2) #8
  unreachable

bb3:                                              ; preds = %start
  %7 = getelementptr inbounds { i64, ptr }, ptr %self, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8, !noundef !5
  store ptr %8, ptr %3, align 8
  ret ptr %8

bb2:                                              ; No predecessors!
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal zeroext i1 @_ZN11hex2bin_lib3src3lib17c_string_contains17hbf2eaf17bd847475E(ptr %ptr, i8 %byte) unnamed_addr #0 {
start:
  %self.dbg.spill.i1 = alloca ptr, align 8
  %0 = alloca ptr, align 8
  %count.dbg.spill1.i = alloca i64, align 8
  %count.dbg.spill.i = alloca i64, align 8
  %self.dbg.spill.i = alloca ptr, align 8
  %current.dbg.spill = alloca i8, align 1
  %byte.dbg.spill = alloca i8, align 1
  %ptr.dbg.spill = alloca ptr, align 8
  %p = alloca ptr, align 8
  %1 = alloca i8, align 1
  store ptr %ptr, ptr %ptr.dbg.spill, align 8
  store i8 %byte, ptr %byte.dbg.spill, align 1
  %_3 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17he9be66ebca634049E"(ptr %ptr)
  br i1 %_3, label %bb2, label %bb3

bb3:                                              ; preds = %start
  store ptr %ptr, ptr %self.dbg.spill.i1, align 8
  store ptr %ptr, ptr %p, align 8
  br label %bb4

bb2:                                              ; preds = %start
  store i8 0, ptr %1, align 1
  br label %bb10

bb10:                                             ; preds = %bb7, %bb5, %bb2
  %2 = load i8, ptr %1, align 1, !range !7, !noundef !5
  %3 = trunc i8 %2 to i1
  ret i1 %3

bb4:                                              ; preds = %bb8, %bb3
  %4 = load ptr, ptr %p, align 8, !noundef !5
  %current = load i8, ptr %4, align 1, !noundef !5
  store i8 %current, ptr %current.dbg.spill, align 1
  %5 = icmp eq i8 %current, 0
  br i1 %5, label %bb5, label %bb6

bb5:                                              ; preds = %bb4
  store i8 0, ptr %1, align 1
  br label %bb10

bb6:                                              ; preds = %bb4
  %_6 = icmp eq i8 %current, %byte
  br i1 %_6, label %bb7, label %bb8

bb8:                                              ; preds = %bb6
  %_8 = load ptr, ptr %p, align 8, !noundef !5
  store ptr %_8, ptr %self.dbg.spill.i, align 8
  store i64 1, ptr %count.dbg.spill.i, align 8
  store i64 1, ptr %count.dbg.spill1.i, align 8
  %6 = getelementptr inbounds i8, ptr %_8, i64 1
  store ptr %6, ptr %0, align 8
  %7 = load ptr, ptr %0, align 8, !noundef !5
  store ptr %7, ptr %p, align 8
  br label %bb4

bb7:                                              ; preds = %bb6
  store i8 1, ptr %1, align 1
  br label %bb10
}

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1, i64, ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @_ZN4core5slice3raw14from_raw_parts17hf7bee163743fb7b4E(ptr %data, i64 %len) unnamed_addr #1 {
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
  %2 = load ptr, ptr %1, align 8, !noundef !5
  %3 = getelementptr inbounds { ptr, i64 }, ptr %_8, i32 0, i32 1
  %4 = load i64, ptr %3, align 8, !noundef !5
  %5 = getelementptr inbounds { ptr, i64 }, ptr %_7, i32 0, i32 0
  store ptr %2, ptr %5, align 8
  %6 = getelementptr inbounds { ptr, i64 }, ptr %_7, i32 0, i32 1
  store i64 %4, ptr %6, align 8
  %7 = getelementptr inbounds { ptr, i64 }, ptr %_7, i32 0, i32 0
  %_3.0 = load ptr, ptr %7, align 8, !noundef !5
  %8 = getelementptr inbounds { ptr, i64 }, ptr %_7, i32 0, i32 1
  %_3.1 = load i64, ptr %8, align 8, !noundef !5
  %9 = insertvalue { ptr, i64 } poison, ptr %_3.0, 0
  %10 = insertvalue { ptr, i64 } %9, i64 %_3.1, 1
  ret { ptr, i64 } %10
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @_ZN4core5slice3raw18from_raw_parts_mut17h7a440cd65c93ba42E(ptr %data, i64 %len) unnamed_addr #1 {
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
  %2 = load ptr, ptr %1, align 8, !noundef !5
  %3 = getelementptr inbounds { ptr, i64 }, ptr %_8, i32 0, i32 1
  %4 = load i64, ptr %3, align 8, !noundef !5
  %5 = getelementptr inbounds { ptr, i64 }, ptr %_7, i32 0, i32 0
  store ptr %2, ptr %5, align 8
  %6 = getelementptr inbounds { ptr, i64 }, ptr %_7, i32 0, i32 1
  store i64 %4, ptr %6, align 8
  %7 = getelementptr inbounds { ptr, i64 }, ptr %_7, i32 0, i32 0
  %_3.0 = load ptr, ptr %7, align 8, !noundef !5
  %8 = getelementptr inbounds { ptr, i64 }, ptr %_7, i32 0, i32 1
  %_3.1 = load i64, ptr %8, align 8, !noundef !5
  %9 = insertvalue { ptr, i64 } poison, ptr %_3.0, 0
  %10 = insertvalue { ptr, i64 } %9, i64 %_3.1, 1
  ret { ptr, i64 } %10
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_1() unnamed_addr #0 {
start:
  %self.dbg.spill.i2 = alloca { ptr, i64 }, align 8
  %self.dbg.spill.i1 = alloca { ptr, i64 }, align 8
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %data_address.dbg.spill.i = alloca ptr, align 8
  %addr.dbg.spill.i = alloca i64, align 8
  %_4.i = alloca %"core::ptr::metadata::PtrComponents<*const i8>", align 8
  %_3.i = alloca %"core::ptr::metadata::PtrRepr<*const i8>", align 8
  %expected_returns.dbg.spill = alloca i32, align 4
  %ret.dbg.spill = alloca i32, align 4
  %hex_end_p.dbg.spill = alloca ptr, align 8
  %hex_len.dbg.spill = alloca i64, align 8
  %bin_maxlen.dbg.spill = alloca i64, align 8
  %expected_bin = alloca [1 x i8], align 1
  %bin = alloca [1 x i8], align 1
  %ignore = alloca [1 x i8], align 1
  %hex = alloca [3 x i8], align 1
  %0 = alloca i8, align 1
  store i64 1, ptr %bin_maxlen.dbg.spill, align 8
  %1 = getelementptr inbounds [3 x i8], ptr %hex, i64 0, i64 0
  store i8 102, ptr %1, align 1
  %2 = getelementptr inbounds [3 x i8], ptr %hex, i64 0, i64 1
  store i8 102, ptr %2, align 1
  %3 = getelementptr inbounds [3 x i8], ptr %hex, i64 0, i64 2
  store i8 0, ptr %3, align 1
  store i64 2, ptr %hex_len.dbg.spill, align 8
  %4 = getelementptr inbounds [1 x i8], ptr %ignore, i64 0, i64 0
  store i8 0, ptr %4, align 1
  store i64 0, ptr %addr.dbg.spill.i, align 8
  store ptr null, ptr %data_address.dbg.spill.i, align 8
  store ptr null, ptr %_4.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_3.i, ptr align 8 %_4.i, i64 8, i1 false)
  %5 = load ptr, ptr %_3.i, align 8, !noundef !5
  store ptr %5, ptr %hex_end_p.dbg.spill, align 8
  %6 = getelementptr inbounds [1 x i8], ptr %bin, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 1 %6, i8 0, i64 1, i1 false)
  store ptr %bin, ptr %self.dbg.spill.i, align 8
  %7 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 1, ptr %7, align 8
  store ptr %hex, ptr %self.dbg.spill.i2, align 8
  %8 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i2, i32 0, i32 1
  store i64 3, ptr %8, align 8
  store ptr %ignore, ptr %self.dbg.spill.i1, align 8
  %9 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i1, i32 0, i32 1
  store i64 1, ptr %9, align 8
  %ret = call i32 @hex2bin(ptr %bin, i64 1, ptr %hex, i64 2, ptr %ignore, ptr %5)
  store i32 %ret, ptr %ret.dbg.spill, align 4
  %10 = getelementptr inbounds [1 x i8], ptr %expected_bin, i64 0, i64 0
  store i8 -1, ptr %10, align 1
  store i32 1, ptr %expected_returns.dbg.spill, align 4
  %_20 = icmp eq i32 %ret, 1
  br i1 %_20, label %bb7, label %bb6

bb6:                                              ; preds = %start
  store i8 0, ptr %0, align 1
  br label %bb8

bb7:                                              ; preds = %start
  %_22 = call zeroext i1 @"_ZN4core5array8equality103_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$B$u3b$$u20$N$u5d$$GT$$u20$for$u20$$u5b$A$u3b$$u20$N$u5d$$GT$2eq17h2a92b88b20e0ee92E"(ptr align 1 %bin, ptr align 1 %expected_bin)
  %11 = zext i1 %_22 to i8
  store i8 %11, ptr %0, align 1
  br label %bb8

bb8:                                              ; preds = %bb7, %bb6
  %12 = load i8, ptr %0, align 1, !range !7, !noundef !5
  %13 = trunc i8 %12 to i1
  ret i1 %13
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core5array8equality103_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$B$u3b$$u20$N$u5d$$GT$$u20$for$u20$$u5b$A$u3b$$u20$N$u5d$$GT$2eq17h2a92b88b20e0ee92E"(ptr align 1 %self, ptr align 1 %other) unnamed_addr #1 {
start:
  %other.dbg.spill = alloca ptr, align 8
  %self.dbg.spill = alloca ptr, align 8
  store ptr %self, ptr %self.dbg.spill, align 8
  store ptr %other, ptr %other.dbg.spill, align 8
  %0 = call zeroext i1 @"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h919206f689502415E"(ptr align 1 %self, ptr align 1 %other)
  ret i1 %0
}

; Function Attrs: nonlazybind uwtable
define internal zeroext i1 @"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h919206f689502415E"(ptr align 1 %a, ptr align 1 %b) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %b.dbg.spill = alloca ptr, align 8
  %a.dbg.spill = alloca ptr, align 8
  store ptr %a, ptr %a.dbg.spill, align 8
  store ptr %b, ptr %b.dbg.spill, align 8
  %1 = load i8, ptr %a, align 1
  %2 = load i8, ptr %b, align 1
  %3 = icmp eq i8 %1, %2
  %4 = zext i1 %3 to i8
  store i8 %4, ptr %0, align 1
  %5 = load i8, ptr %0, align 1, !range !7, !noundef !5
  %6 = trunc i8 %5 to i1
  ret i1 %6
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_2() unnamed_addr #0 {
start:
  %self.dbg.spill.i2 = alloca { ptr, i64 }, align 8
  %self.dbg.spill.i1 = alloca { ptr, i64 }, align 8
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %data_address.dbg.spill.i = alloca ptr, align 8
  %addr.dbg.spill.i = alloca i64, align 8
  %_4.i = alloca %"core::ptr::metadata::PtrComponents<*const i8>", align 8
  %_3.i = alloca %"core::ptr::metadata::PtrRepr<*const i8>", align 8
  %expected_returns.dbg.spill = alloca i32, align 4
  %ret.dbg.spill = alloca i32, align 4
  %hex_end_p.dbg.spill = alloca ptr, align 8
  %hex_len.dbg.spill = alloca i64, align 8
  %bin_maxlen.dbg.spill = alloca i64, align 8
  %expected_bin = alloca [6 x i8], align 1
  %bin = alloca [6 x i8], align 1
  %ignore = alloca [1 x i8], align 1
  %hex = alloca [7 x i8], align 1
  %0 = alloca i8, align 1
  store i64 6, ptr %bin_maxlen.dbg.spill, align 8
  %1 = getelementptr inbounds [7 x i8], ptr %hex, i64 0, i64 0
  store i8 48, ptr %1, align 1
  %2 = getelementptr inbounds [7 x i8], ptr %hex, i64 0, i64 1
  store i8 56, ptr %2, align 1
  %3 = getelementptr inbounds [7 x i8], ptr %hex, i64 0, i64 2
  store i8 52, ptr %3, align 1
  %4 = getelementptr inbounds [7 x i8], ptr %hex, i64 0, i64 3
  store i8 49, ptr %4, align 1
  %5 = getelementptr inbounds [7 x i8], ptr %hex, i64 0, i64 4
  store i8 49, ptr %5, align 1
  %6 = getelementptr inbounds [7 x i8], ptr %hex, i64 0, i64 5
  store i8 51, ptr %6, align 1
  %7 = getelementptr inbounds [7 x i8], ptr %hex, i64 0, i64 6
  store i8 0, ptr %7, align 1
  store i64 6, ptr %hex_len.dbg.spill, align 8
  %8 = getelementptr inbounds [1 x i8], ptr %ignore, i64 0, i64 0
  store i8 0, ptr %8, align 1
  store i64 0, ptr %addr.dbg.spill.i, align 8
  store ptr null, ptr %data_address.dbg.spill.i, align 8
  store ptr null, ptr %_4.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_3.i, ptr align 8 %_4.i, i64 8, i1 false)
  %9 = load ptr, ptr %_3.i, align 8, !noundef !5
  store ptr %9, ptr %hex_end_p.dbg.spill, align 8
  %10 = getelementptr inbounds [6 x i8], ptr %bin, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 1 %10, i8 0, i64 6, i1 false)
  store ptr %bin, ptr %self.dbg.spill.i, align 8
  %11 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 6, ptr %11, align 8
  store ptr %hex, ptr %self.dbg.spill.i2, align 8
  %12 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i2, i32 0, i32 1
  store i64 7, ptr %12, align 8
  store ptr %ignore, ptr %self.dbg.spill.i1, align 8
  %13 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i1, i32 0, i32 1
  store i64 1, ptr %13, align 8
  %ret = call i32 @hex2bin(ptr %bin, i64 6, ptr %hex, i64 6, ptr %ignore, ptr %9)
  store i32 %ret, ptr %ret.dbg.spill, align 4
  %14 = getelementptr inbounds [6 x i8], ptr %expected_bin, i64 0, i64 0
  store i8 8, ptr %14, align 1
  %15 = getelementptr inbounds [6 x i8], ptr %expected_bin, i64 0, i64 1
  store i8 65, ptr %15, align 1
  %16 = getelementptr inbounds [6 x i8], ptr %expected_bin, i64 0, i64 2
  store i8 19, ptr %16, align 1
  %17 = getelementptr inbounds [6 x i8], ptr %expected_bin, i64 0, i64 3
  store i8 0, ptr %17, align 1
  %18 = getelementptr inbounds [6 x i8], ptr %expected_bin, i64 0, i64 4
  store i8 0, ptr %18, align 1
  %19 = getelementptr inbounds [6 x i8], ptr %expected_bin, i64 0, i64 5
  store i8 0, ptr %19, align 1
  store i32 3, ptr %expected_returns.dbg.spill, align 4
  %_20 = icmp eq i32 %ret, 3
  br i1 %_20, label %bb7, label %bb6

bb6:                                              ; preds = %start
  store i8 0, ptr %0, align 1
  br label %bb8

bb7:                                              ; preds = %start
  %_22 = call zeroext i1 @"_ZN4core5array8equality103_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$B$u3b$$u20$N$u5d$$GT$$u20$for$u20$$u5b$A$u3b$$u20$N$u5d$$GT$2eq17h14cd5f6f63fe55fbE"(ptr align 1 %bin, ptr align 1 %expected_bin)
  %20 = zext i1 %_22 to i8
  store i8 %20, ptr %0, align 1
  br label %bb8

bb8:                                              ; preds = %bb7, %bb6
  %21 = load i8, ptr %0, align 1, !range !7, !noundef !5
  %22 = trunc i8 %21 to i1
  ret i1 %22
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core5array8equality103_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$B$u3b$$u20$N$u5d$$GT$$u20$for$u20$$u5b$A$u3b$$u20$N$u5d$$GT$2eq17h14cd5f6f63fe55fbE"(ptr align 1 %self, ptr align 1 %other) unnamed_addr #1 {
start:
  %other.dbg.spill = alloca ptr, align 8
  %self.dbg.spill = alloca ptr, align 8
  store ptr %self, ptr %self.dbg.spill, align 8
  store ptr %other, ptr %other.dbg.spill, align 8
  %0 = call zeroext i1 @"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17hc3fcfabaa7417250E"(ptr align 1 %self, ptr align 1 %other)
  ret i1 %0
}

; Function Attrs: nonlazybind uwtable
define internal zeroext i1 @"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17hc3fcfabaa7417250E"(ptr align 1 %a, ptr align 1 %b) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %b.dbg.spill = alloca ptr, align 8
  %a.dbg.spill = alloca ptr, align 8
  store ptr %a, ptr %a.dbg.spill, align 8
  store ptr %b, ptr %b.dbg.spill, align 8
  %1 = load i48, ptr %a, align 1
  %2 = load i48, ptr %b, align 1
  %3 = icmp eq i48 %1, %2
  %4 = zext i1 %3 to i8
  store i8 %4, ptr %0, align 1
  %5 = load i8, ptr %0, align 1, !range !7, !noundef !5
  %6 = trunc i8 %5 to i1
  ret i1 %6
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_3() unnamed_addr #0 {
start:
  %self.dbg.spill.i2 = alloca { ptr, i64 }, align 8
  %self.dbg.spill.i1 = alloca { ptr, i64 }, align 8
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %data_address.dbg.spill.i = alloca ptr, align 8
  %addr.dbg.spill.i = alloca i64, align 8
  %_4.i = alloca %"core::ptr::metadata::PtrComponents<*const i8>", align 8
  %_3.i = alloca %"core::ptr::metadata::PtrRepr<*const i8>", align 8
  %expected_returns.dbg.spill = alloca i32, align 4
  %ret.dbg.spill = alloca i32, align 4
  %hex_end_p.dbg.spill = alloca ptr, align 8
  %hex_len.dbg.spill = alloca i64, align 8
  %bin_maxlen.dbg.spill = alloca i64, align 8
  %expected_bin = alloca [8 x i8], align 1
  %bin = alloca [8 x i8], align 1
  %ignore = alloca [1 x i8], align 1
  %hex = alloca [9 x i8], align 1
  %0 = alloca i8, align 1
  store i64 8, ptr %bin_maxlen.dbg.spill, align 8
  %1 = getelementptr inbounds [9 x i8], ptr %hex, i64 0, i64 0
  store i8 55, ptr %1, align 1
  %2 = getelementptr inbounds [9 x i8], ptr %hex, i64 0, i64 1
  store i8 54, ptr %2, align 1
  %3 = getelementptr inbounds [9 x i8], ptr %hex, i64 0, i64 2
  store i8 48, ptr %3, align 1
  %4 = getelementptr inbounds [9 x i8], ptr %hex, i64 0, i64 3
  store i8 48, ptr %4, align 1
  %5 = getelementptr inbounds [9 x i8], ptr %hex, i64 0, i64 4
  store i8 99, ptr %5, align 1
  %6 = getelementptr inbounds [9 x i8], ptr %hex, i64 0, i64 5
  store i8 56, ptr %6, align 1
  %7 = getelementptr inbounds [9 x i8], ptr %hex, i64 0, i64 6
  store i8 48, ptr %7, align 1
  %8 = getelementptr inbounds [9 x i8], ptr %hex, i64 0, i64 7
  store i8 49, ptr %8, align 1
  %9 = getelementptr inbounds [9 x i8], ptr %hex, i64 0, i64 8
  store i8 0, ptr %9, align 1
  store i64 8, ptr %hex_len.dbg.spill, align 8
  %10 = getelementptr inbounds [1 x i8], ptr %ignore, i64 0, i64 0
  store i8 0, ptr %10, align 1
  store i64 0, ptr %addr.dbg.spill.i, align 8
  store ptr null, ptr %data_address.dbg.spill.i, align 8
  store ptr null, ptr %_4.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_3.i, ptr align 8 %_4.i, i64 8, i1 false)
  %11 = load ptr, ptr %_3.i, align 8, !noundef !5
  store ptr %11, ptr %hex_end_p.dbg.spill, align 8
  %12 = getelementptr inbounds [8 x i8], ptr %bin, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 1 %12, i8 0, i64 8, i1 false)
  store ptr %bin, ptr %self.dbg.spill.i, align 8
  %13 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 8, ptr %13, align 8
  store ptr %hex, ptr %self.dbg.spill.i2, align 8
  %14 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i2, i32 0, i32 1
  store i64 9, ptr %14, align 8
  store ptr %ignore, ptr %self.dbg.spill.i1, align 8
  %15 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i1, i32 0, i32 1
  store i64 1, ptr %15, align 8
  %ret = call i32 @hex2bin(ptr %bin, i64 8, ptr %hex, i64 8, ptr %ignore, ptr %11)
  store i32 %ret, ptr %ret.dbg.spill, align 4
  %16 = getelementptr inbounds [8 x i8], ptr %expected_bin, i64 0, i64 0
  store i8 118, ptr %16, align 1
  %17 = getelementptr inbounds [8 x i8], ptr %expected_bin, i64 0, i64 1
  store i8 0, ptr %17, align 1
  %18 = getelementptr inbounds [8 x i8], ptr %expected_bin, i64 0, i64 2
  store i8 -56, ptr %18, align 1
  %19 = getelementptr inbounds [8 x i8], ptr %expected_bin, i64 0, i64 3
  store i8 1, ptr %19, align 1
  %20 = getelementptr inbounds [8 x i8], ptr %expected_bin, i64 0, i64 4
  store i8 0, ptr %20, align 1
  %21 = getelementptr inbounds [8 x i8], ptr %expected_bin, i64 0, i64 5
  store i8 0, ptr %21, align 1
  %22 = getelementptr inbounds [8 x i8], ptr %expected_bin, i64 0, i64 6
  store i8 0, ptr %22, align 1
  %23 = getelementptr inbounds [8 x i8], ptr %expected_bin, i64 0, i64 7
  store i8 0, ptr %23, align 1
  store i32 4, ptr %expected_returns.dbg.spill, align 4
  %_20 = icmp eq i32 %ret, 4
  br i1 %_20, label %bb7, label %bb6

bb6:                                              ; preds = %start
  store i8 0, ptr %0, align 1
  br label %bb8

bb7:                                              ; preds = %start
  %_22 = call zeroext i1 @"_ZN4core5array8equality103_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$B$u3b$$u20$N$u5d$$GT$$u20$for$u20$$u5b$A$u3b$$u20$N$u5d$$GT$2eq17h1524f6aeb4681408E"(ptr align 1 %bin, ptr align 1 %expected_bin)
  %24 = zext i1 %_22 to i8
  store i8 %24, ptr %0, align 1
  br label %bb8

bb8:                                              ; preds = %bb7, %bb6
  %25 = load i8, ptr %0, align 1, !range !7, !noundef !5
  %26 = trunc i8 %25 to i1
  ret i1 %26
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core5array8equality103_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$B$u3b$$u20$N$u5d$$GT$$u20$for$u20$$u5b$A$u3b$$u20$N$u5d$$GT$2eq17h1524f6aeb4681408E"(ptr align 1 %self, ptr align 1 %other) unnamed_addr #1 {
start:
  %other.dbg.spill = alloca ptr, align 8
  %self.dbg.spill = alloca ptr, align 8
  store ptr %self, ptr %self.dbg.spill, align 8
  store ptr %other, ptr %other.dbg.spill, align 8
  %0 = call zeroext i1 @"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h2e2f340a31514932E"(ptr align 1 %self, ptr align 1 %other)
  ret i1 %0
}

; Function Attrs: nonlazybind uwtable
define internal zeroext i1 @"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h2e2f340a31514932E"(ptr align 1 %a, ptr align 1 %b) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %b.dbg.spill = alloca ptr, align 8
  %a.dbg.spill = alloca ptr, align 8
  store ptr %a, ptr %a.dbg.spill, align 8
  store ptr %b, ptr %b.dbg.spill, align 8
  %1 = load i64, ptr %a, align 1
  %2 = load i64, ptr %b, align 1
  %3 = icmp eq i64 %1, %2
  %4 = zext i1 %3 to i8
  store i8 %4, ptr %0, align 1
  %5 = load i8, ptr %0, align 1, !range !7, !noundef !5
  %6 = trunc i8 %5 to i1
  ret i1 %6
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_4() unnamed_addr #0 {
start:
  %self.dbg.spill.i2 = alloca { ptr, i64 }, align 8
  %self.dbg.spill.i1 = alloca { ptr, i64 }, align 8
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %data_address.dbg.spill.i = alloca ptr, align 8
  %addr.dbg.spill.i = alloca i64, align 8
  %_4.i = alloca %"core::ptr::metadata::PtrComponents<*const i8>", align 8
  %_3.i = alloca %"core::ptr::metadata::PtrRepr<*const i8>", align 8
  %expected_returns.dbg.spill = alloca i32, align 4
  %ret.dbg.spill = alloca i32, align 4
  %hex_end_p.dbg.spill = alloca ptr, align 8
  %hex_len.dbg.spill = alloca i64, align 8
  %bin_maxlen.dbg.spill = alloca i64, align 8
  %expected_bin = alloca [24 x i8], align 1
  %bin = alloca [24 x i8], align 1
  %ignore = alloca [1 x i8], align 1
  %hex = alloca [25 x i8], align 1
  %0 = alloca i8, align 1
  store i64 24, ptr %bin_maxlen.dbg.spill, align 8
  %1 = getelementptr inbounds [25 x i8], ptr %hex, i64 0, i64 0
  store i8 51, ptr %1, align 1
  %2 = getelementptr inbounds [25 x i8], ptr %hex, i64 0, i64 1
  store i8 99, ptr %2, align 1
  %3 = getelementptr inbounds [25 x i8], ptr %hex, i64 0, i64 2
  store i8 51, ptr %3, align 1
  %4 = getelementptr inbounds [25 x i8], ptr %hex, i64 0, i64 3
  store i8 100, ptr %4, align 1
  %5 = getelementptr inbounds [25 x i8], ptr %hex, i64 0, i64 4
  store i8 51, ptr %5, align 1
  %6 = getelementptr inbounds [25 x i8], ptr %hex, i64 0, i64 5
  store i8 101, ptr %6, align 1
  %7 = getelementptr inbounds [25 x i8], ptr %hex, i64 0, i64 6
  store i8 51, ptr %7, align 1
  %8 = getelementptr inbounds [25 x i8], ptr %hex, i64 0, i64 7
  store i8 102, ptr %8, align 1
  %9 = getelementptr inbounds [25 x i8], ptr %hex, i64 0, i64 8
  store i8 52, ptr %9, align 1
  %10 = getelementptr inbounds [25 x i8], ptr %hex, i64 0, i64 9
  store i8 48, ptr %10, align 1
  %11 = getelementptr inbounds [25 x i8], ptr %hex, i64 0, i64 10
  store i8 52, ptr %11, align 1
  %12 = getelementptr inbounds [25 x i8], ptr %hex, i64 0, i64 11
  store i8 49, ptr %12, align 1
  %13 = getelementptr inbounds [25 x i8], ptr %hex, i64 0, i64 12
  store i8 52, ptr %13, align 1
  %14 = getelementptr inbounds [25 x i8], ptr %hex, i64 0, i64 13
  store i8 50, ptr %14, align 1
  %15 = getelementptr inbounds [25 x i8], ptr %hex, i64 0, i64 14
  store i8 52, ptr %15, align 1
  %16 = getelementptr inbounds [25 x i8], ptr %hex, i64 0, i64 15
  store i8 51, ptr %16, align 1
  %17 = getelementptr inbounds [25 x i8], ptr %hex, i64 0, i64 16
  store i8 52, ptr %17, align 1
  %18 = getelementptr inbounds [25 x i8], ptr %hex, i64 0, i64 17
  store i8 52, ptr %18, align 1
  %19 = getelementptr inbounds [25 x i8], ptr %hex, i64 0, i64 18
  store i8 52, ptr %19, align 1
  %20 = getelementptr inbounds [25 x i8], ptr %hex, i64 0, i64 19
  store i8 53, ptr %20, align 1
  %21 = getelementptr inbounds [25 x i8], ptr %hex, i64 0, i64 20
  store i8 52, ptr %21, align 1
  %22 = getelementptr inbounds [25 x i8], ptr %hex, i64 0, i64 21
  store i8 54, ptr %22, align 1
  %23 = getelementptr inbounds [25 x i8], ptr %hex, i64 0, i64 22
  store i8 52, ptr %23, align 1
  %24 = getelementptr inbounds [25 x i8], ptr %hex, i64 0, i64 23
  store i8 55, ptr %24, align 1
  %25 = getelementptr inbounds [25 x i8], ptr %hex, i64 0, i64 24
  store i8 0, ptr %25, align 1
  store i64 24, ptr %hex_len.dbg.spill, align 8
  %26 = getelementptr inbounds [1 x i8], ptr %ignore, i64 0, i64 0
  store i8 0, ptr %26, align 1
  store i64 0, ptr %addr.dbg.spill.i, align 8
  store ptr null, ptr %data_address.dbg.spill.i, align 8
  store ptr null, ptr %_4.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_3.i, ptr align 8 %_4.i, i64 8, i1 false)
  %27 = load ptr, ptr %_3.i, align 8, !noundef !5
  store ptr %27, ptr %hex_end_p.dbg.spill, align 8
  %28 = getelementptr inbounds [24 x i8], ptr %bin, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 1 %28, i8 0, i64 24, i1 false)
  store ptr %bin, ptr %self.dbg.spill.i, align 8
  %29 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 24, ptr %29, align 8
  store ptr %hex, ptr %self.dbg.spill.i2, align 8
  %30 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i2, i32 0, i32 1
  store i64 25, ptr %30, align 8
  store ptr %ignore, ptr %self.dbg.spill.i1, align 8
  %31 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i1, i32 0, i32 1
  store i64 1, ptr %31, align 8
  %ret = call i32 @hex2bin(ptr %bin, i64 24, ptr %hex, i64 24, ptr %ignore, ptr %27)
  store i32 %ret, ptr %ret.dbg.spill, align 4
  %32 = getelementptr inbounds [24 x i8], ptr %expected_bin, i64 0, i64 0
  store i8 60, ptr %32, align 1
  %33 = getelementptr inbounds [24 x i8], ptr %expected_bin, i64 0, i64 1
  store i8 61, ptr %33, align 1
  %34 = getelementptr inbounds [24 x i8], ptr %expected_bin, i64 0, i64 2
  store i8 62, ptr %34, align 1
  %35 = getelementptr inbounds [24 x i8], ptr %expected_bin, i64 0, i64 3
  store i8 63, ptr %35, align 1
  %36 = getelementptr inbounds [24 x i8], ptr %expected_bin, i64 0, i64 4
  store i8 64, ptr %36, align 1
  %37 = getelementptr inbounds [24 x i8], ptr %expected_bin, i64 0, i64 5
  store i8 65, ptr %37, align 1
  %38 = getelementptr inbounds [24 x i8], ptr %expected_bin, i64 0, i64 6
  store i8 66, ptr %38, align 1
  %39 = getelementptr inbounds [24 x i8], ptr %expected_bin, i64 0, i64 7
  store i8 67, ptr %39, align 1
  %40 = getelementptr inbounds [24 x i8], ptr %expected_bin, i64 0, i64 8
  store i8 68, ptr %40, align 1
  %41 = getelementptr inbounds [24 x i8], ptr %expected_bin, i64 0, i64 9
  store i8 69, ptr %41, align 1
  %42 = getelementptr inbounds [24 x i8], ptr %expected_bin, i64 0, i64 10
  store i8 70, ptr %42, align 1
  %43 = getelementptr inbounds [24 x i8], ptr %expected_bin, i64 0, i64 11
  store i8 71, ptr %43, align 1
  %44 = getelementptr inbounds [24 x i8], ptr %expected_bin, i64 0, i64 12
  store i8 0, ptr %44, align 1
  %45 = getelementptr inbounds [24 x i8], ptr %expected_bin, i64 0, i64 13
  store i8 0, ptr %45, align 1
  %46 = getelementptr inbounds [24 x i8], ptr %expected_bin, i64 0, i64 14
  store i8 0, ptr %46, align 1
  %47 = getelementptr inbounds [24 x i8], ptr %expected_bin, i64 0, i64 15
  store i8 0, ptr %47, align 1
  %48 = getelementptr inbounds [24 x i8], ptr %expected_bin, i64 0, i64 16
  store i8 0, ptr %48, align 1
  %49 = getelementptr inbounds [24 x i8], ptr %expected_bin, i64 0, i64 17
  store i8 0, ptr %49, align 1
  %50 = getelementptr inbounds [24 x i8], ptr %expected_bin, i64 0, i64 18
  store i8 0, ptr %50, align 1
  %51 = getelementptr inbounds [24 x i8], ptr %expected_bin, i64 0, i64 19
  store i8 0, ptr %51, align 1
  %52 = getelementptr inbounds [24 x i8], ptr %expected_bin, i64 0, i64 20
  store i8 0, ptr %52, align 1
  %53 = getelementptr inbounds [24 x i8], ptr %expected_bin, i64 0, i64 21
  store i8 0, ptr %53, align 1
  %54 = getelementptr inbounds [24 x i8], ptr %expected_bin, i64 0, i64 22
  store i8 0, ptr %54, align 1
  %55 = getelementptr inbounds [24 x i8], ptr %expected_bin, i64 0, i64 23
  store i8 0, ptr %55, align 1
  store i32 12, ptr %expected_returns.dbg.spill, align 4
  %_20 = icmp eq i32 %ret, 12
  br i1 %_20, label %bb7, label %bb6

bb6:                                              ; preds = %start
  store i8 0, ptr %0, align 1
  br label %bb8

bb7:                                              ; preds = %start
  %_22 = call zeroext i1 @"_ZN4core5array8equality103_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$B$u3b$$u20$N$u5d$$GT$$u20$for$u20$$u5b$A$u3b$$u20$N$u5d$$GT$2eq17h2d604e3c9a85e801E"(ptr align 1 %bin, ptr align 1 %expected_bin)
  %56 = zext i1 %_22 to i8
  store i8 %56, ptr %0, align 1
  br label %bb8

bb8:                                              ; preds = %bb7, %bb6
  %57 = load i8, ptr %0, align 1, !range !7, !noundef !5
  %58 = trunc i8 %57 to i1
  ret i1 %58
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core5array8equality103_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$B$u3b$$u20$N$u5d$$GT$$u20$for$u20$$u5b$A$u3b$$u20$N$u5d$$GT$2eq17h2d604e3c9a85e801E"(ptr align 1 %self, ptr align 1 %other) unnamed_addr #1 {
start:
  %other.dbg.spill = alloca ptr, align 8
  %self.dbg.spill = alloca ptr, align 8
  store ptr %self, ptr %self.dbg.spill, align 8
  store ptr %other, ptr %other.dbg.spill, align 8
  %0 = call zeroext i1 @"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17hd20749c4b5e0ef85E"(ptr align 1 %self, ptr align 1 %other)
  ret i1 %0
}

; Function Attrs: nonlazybind uwtable
define internal zeroext i1 @"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17hd20749c4b5e0ef85E"(ptr align 1 %a, ptr align 1 %b) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %b.dbg.spill = alloca ptr, align 8
  %a.dbg.spill = alloca ptr, align 8
  store ptr %a, ptr %a.dbg.spill, align 8
  store ptr %b, ptr %b.dbg.spill, align 8
  %1 = call i32 @memcmp(ptr %a, ptr %b, i64 24)
  %2 = icmp eq i32 %1, 0
  %3 = zext i1 %2 to i8
  store i8 %3, ptr %0, align 1
  %4 = load i8, ptr %0, align 1, !range !7, !noundef !5
  %5 = trunc i8 %4 to i1
  ret i1 %5
}

; Function Attrs: nonlazybind
declare i32 @memcmp(ptr, ptr, i64) #7

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_5() unnamed_addr #0 {
start:
  %self.dbg.spill.i2 = alloca { ptr, i64 }, align 8
  %self.dbg.spill.i1 = alloca { ptr, i64 }, align 8
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %data_address.dbg.spill.i = alloca ptr, align 8
  %addr.dbg.spill.i = alloca i64, align 8
  %_4.i = alloca %"core::ptr::metadata::PtrComponents<*const i8>", align 8
  %_3.i = alloca %"core::ptr::metadata::PtrRepr<*const i8>", align 8
  %expected_returns.dbg.spill = alloca i32, align 4
  %ret.dbg.spill = alloca i32, align 4
  %hex_end_p.dbg.spill = alloca ptr, align 8
  %hex_len.dbg.spill = alloca i64, align 8
  %bin_maxlen.dbg.spill = alloca i64, align 8
  %expected_bin = alloca [6 x i8], align 1
  %bin = alloca [6 x i8], align 1
  %ignore = alloca [1 x i8], align 1
  %hex = alloca [7 x i8], align 1
  %0 = alloca i8, align 1
  store i64 6, ptr %bin_maxlen.dbg.spill, align 8
  %1 = getelementptr inbounds [7 x i8], ptr %hex, i64 0, i64 0
  store i8 48, ptr %1, align 1
  %2 = getelementptr inbounds [7 x i8], ptr %hex, i64 0, i64 1
  store i8 48, ptr %2, align 1
  %3 = getelementptr inbounds [7 x i8], ptr %hex, i64 0, i64 2
  store i8 48, ptr %3, align 1
  %4 = getelementptr inbounds [7 x i8], ptr %hex, i64 0, i64 3
  store i8 48, ptr %4, align 1
  %5 = getelementptr inbounds [7 x i8], ptr %hex, i64 0, i64 4
  store i8 48, ptr %5, align 1
  %6 = getelementptr inbounds [7 x i8], ptr %hex, i64 0, i64 5
  store i8 48, ptr %6, align 1
  %7 = getelementptr inbounds [7 x i8], ptr %hex, i64 0, i64 6
  store i8 0, ptr %7, align 1
  store i64 6, ptr %hex_len.dbg.spill, align 8
  %8 = getelementptr inbounds [1 x i8], ptr %ignore, i64 0, i64 0
  store i8 0, ptr %8, align 1
  store i64 0, ptr %addr.dbg.spill.i, align 8
  store ptr null, ptr %data_address.dbg.spill.i, align 8
  store ptr null, ptr %_4.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_3.i, ptr align 8 %_4.i, i64 8, i1 false)
  %9 = load ptr, ptr %_3.i, align 8, !noundef !5
  store ptr %9, ptr %hex_end_p.dbg.spill, align 8
  %10 = getelementptr inbounds [6 x i8], ptr %bin, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 1 %10, i8 0, i64 6, i1 false)
  store ptr %bin, ptr %self.dbg.spill.i, align 8
  %11 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 6, ptr %11, align 8
  store ptr %hex, ptr %self.dbg.spill.i2, align 8
  %12 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i2, i32 0, i32 1
  store i64 7, ptr %12, align 8
  store ptr %ignore, ptr %self.dbg.spill.i1, align 8
  %13 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i1, i32 0, i32 1
  store i64 1, ptr %13, align 8
  %ret = call i32 @hex2bin(ptr %bin, i64 6, ptr %hex, i64 6, ptr %ignore, ptr %9)
  store i32 %ret, ptr %ret.dbg.spill, align 4
  %14 = getelementptr inbounds [6 x i8], ptr %expected_bin, i64 0, i64 0
  store i8 0, ptr %14, align 1
  %15 = getelementptr inbounds [6 x i8], ptr %expected_bin, i64 0, i64 1
  store i8 0, ptr %15, align 1
  %16 = getelementptr inbounds [6 x i8], ptr %expected_bin, i64 0, i64 2
  store i8 0, ptr %16, align 1
  %17 = getelementptr inbounds [6 x i8], ptr %expected_bin, i64 0, i64 3
  store i8 0, ptr %17, align 1
  %18 = getelementptr inbounds [6 x i8], ptr %expected_bin, i64 0, i64 4
  store i8 0, ptr %18, align 1
  %19 = getelementptr inbounds [6 x i8], ptr %expected_bin, i64 0, i64 5
  store i8 0, ptr %19, align 1
  store i32 3, ptr %expected_returns.dbg.spill, align 4
  %_20 = icmp eq i32 %ret, 3
  br i1 %_20, label %bb7, label %bb6

bb6:                                              ; preds = %start
  store i8 0, ptr %0, align 1
  br label %bb8

bb7:                                              ; preds = %start
  %_22 = call zeroext i1 @"_ZN4core5array8equality103_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$B$u3b$$u20$N$u5d$$GT$$u20$for$u20$$u5b$A$u3b$$u20$N$u5d$$GT$2eq17h14cd5f6f63fe55fbE"(ptr align 1 %bin, ptr align 1 %expected_bin)
  %20 = zext i1 %_22 to i8
  store i8 %20, ptr %0, align 1
  br label %bb8

bb8:                                              ; preds = %bb7, %bb6
  %21 = load i8, ptr %0, align 1, !range !7, !noundef !5
  %22 = trunc i8 %21 to i1
  ret i1 %22
}

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #3 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nonlazybind }
attributes #8 = { noreturn }
attributes #9 = { noinline noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 2, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i64 8}
!5 = !{}
!6 = !{i64 0, i64 2}
!7 = !{i8 0, i8 2}
!8 = !{i64 1}
!9 = !{i8 -1, i8 2}
