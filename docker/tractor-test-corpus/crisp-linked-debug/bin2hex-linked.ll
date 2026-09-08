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

@alloc_e14f096bd30e7c4fffb0d07638e6275d = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/num/mod.rs" }>, align 1
@alloc_ffdada6babe8a86b9551cf4cdc2f5673 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e14f096bd30e7c4fffb0d07638e6275d, [16 x i8] c"K\00\00\00\00\00\00\00\A6\04\00\00\05\00\00\00" }>, align 8
@str.0 = internal constant [25 x i8] c"attempt to divide by zero"
@alloc_f5ffd2fd1476bab43ad89fb40c72d0c5 = private unnamed_addr constant <{ [10 x i8] }> <{ [10 x i8] c"src/lib.rs" }>, align 1
@alloc_2a07e6877efa1102b7bc10394c349060 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\15\00\00\00\14\00\00\00" }>, align 8
@alloc_f1747e4da537d5b496022ed05d97ad87 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00!\00\00\00\09\00\00\00" }>, align 8
@alloc_f0ffe9766e826e35d82793f1240264d2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\22\00\00\00\09\00\00\00" }>, align 8
@alloc_301af894193a3fb17ce4e6246b68f088 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00'\00\00\00\05\00\00\00" }>, align 8
@alloc_61052ac8c5c3e956567d2de58e02eb56 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00N\00\00\00\05\00\00\00" }>, align 8
@alloc_bf509f6f8336a6f855658c67fc9fe7b1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00[\00\00\00\05\00\00\00" }>, align 8
@alloc_dc0f9eb7ba01a59368e2fb3a79ea27ee = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00h\00\00\00\05\00\00\00" }>, align 8
@alloc_7cd83522dbc9313c7e61b8d33994fda1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00u\00\00\00\05\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define ptr @bin2hex(ptr %hex, i64 %hex_maxlen, ptr %bin, i64 %bin_len) unnamed_addr #0 !dbg !6 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %bin_slice.dbg.spill = alloca { ptr, i64 }, align 8
  %hex_slice.dbg.spill = alloca { ptr, i64 }, align 8
  %bin_len.dbg.spill = alloca i64, align 8
  %bin.dbg.spill = alloca ptr, align 8
  %hex_maxlen.dbg.spill = alloca i64, align 8
  %hex.dbg.spill = alloca ptr, align 8
  store ptr %hex, ptr %hex.dbg.spill, align 8
    #dbg_declare(ptr %hex.dbg.spill, !19, !DIExpression(), !39)
  store i64 %hex_maxlen, ptr %hex_maxlen.dbg.spill, align 8
    #dbg_declare(ptr %hex_maxlen.dbg.spill, !20, !DIExpression(), !40)
  store ptr %bin, ptr %bin.dbg.spill, align 8
    #dbg_declare(ptr %bin.dbg.spill, !21, !DIExpression(), !41)
  store i64 %bin_len, ptr %bin_len.dbg.spill, align 8
    #dbg_declare(ptr %bin_len.dbg.spill, !22, !DIExpression(), !42)
  %0 = call { ptr, i64 } @_ZN4core5slice3raw18from_raw_parts_mut17h917bc637a87cc744E(ptr %hex, i64 %hex_maxlen), !dbg !43
  %hex_slice.0 = extractvalue { ptr, i64 } %0, 0, !dbg !43
  %hex_slice.1 = extractvalue { ptr, i64 } %0, 1, !dbg !43
  %1 = getelementptr inbounds { ptr, i64 }, ptr %hex_slice.dbg.spill, i32 0, i32 0, !dbg !43
  store ptr %hex_slice.0, ptr %1, align 8, !dbg !43
  %2 = getelementptr inbounds { ptr, i64 }, ptr %hex_slice.dbg.spill, i32 0, i32 1, !dbg !43
  store i64 %hex_slice.1, ptr %2, align 8, !dbg !43
    #dbg_declare(ptr %hex_slice.dbg.spill, !23, !DIExpression(), !44)
  %3 = call { ptr, i64 } @_ZN4core5slice3raw14from_raw_parts17ha67b45eb760ba5c4E(ptr %bin, i64 %bin_len), !dbg !45
  %bin_slice.0 = extractvalue { ptr, i64 } %3, 0, !dbg !45
  %bin_slice.1 = extractvalue { ptr, i64 } %3, 1, !dbg !45
  %4 = getelementptr inbounds { ptr, i64 }, ptr %bin_slice.dbg.spill, i32 0, i32 0, !dbg !45
  store ptr %bin_slice.0, ptr %4, align 8, !dbg !45
  %5 = getelementptr inbounds { ptr, i64 }, ptr %bin_slice.dbg.spill, i32 0, i32 1, !dbg !45
  store i64 %bin_slice.1, ptr %5, align 8, !dbg !45
    #dbg_declare(ptr %bin_slice.dbg.spill, !32, !DIExpression(), !46)
  %6 = call { ptr, i64 } @_ZN11bin2hex_lib3src3lib7bin2hex17h023cdcb8e949623eE(ptr align 1 %hex_slice.0, i64 %hex_slice.1, ptr align 1 %bin_slice.0, i64 %bin_slice.1), !dbg !47
  %_8.0 = extractvalue { ptr, i64 } %6, 0, !dbg !47
  %_8.1 = extractvalue { ptr, i64 } %6, 1, !dbg !47
  store ptr %_8.0, ptr %self.dbg.spill.i, align 8
  %7 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 %_8.1, ptr %7, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !48, !DIExpression(), !59)
  ret ptr %_8.0, !dbg !61
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @_ZN4core5slice3raw18from_raw_parts_mut17h917bc637a87cc744E(ptr %data, i64 %len) unnamed_addr #1 !dbg !62 {
start:
  %data_address.dbg.spill = alloca ptr, align 8
  %len.dbg.spill = alloca i64, align 8
  %data.dbg.spill = alloca ptr, align 8
  %_8 = alloca { ptr, i64 }, align 8
  %_7 = alloca %"core::ptr::metadata::PtrRepr<[u8]>", align 8
  store ptr %data, ptr %data.dbg.spill, align 8
    #dbg_declare(ptr %data.dbg.spill, !68, !DIExpression(), !70)
    #dbg_declare(ptr %data.dbg.spill, !71, !DIExpression(), !83)
    #dbg_declare(ptr %data.dbg.spill, !85, !DIExpression(), !97)
  store i64 %len, ptr %len.dbg.spill, align 8
    #dbg_declare(ptr %len.dbg.spill, !69, !DIExpression(), !99)
    #dbg_declare(ptr %len.dbg.spill, !82, !DIExpression(), !100)
    #dbg_declare(ptr %len.dbg.spill, !101, !DIExpression(), !109)
  store ptr %data, ptr %data_address.dbg.spill, align 8, !dbg !111
    #dbg_declare(ptr %data_address.dbg.spill, !108, !DIExpression(), !112)
  store ptr %data, ptr %_8, align 8, !dbg !113
  %0 = getelementptr inbounds { ptr, i64 }, ptr %_8, i32 0, i32 1, !dbg !113
  store i64 %len, ptr %0, align 8, !dbg !113
  %1 = getelementptr inbounds { ptr, i64 }, ptr %_8, i32 0, i32 0, !dbg !114
  %2 = load ptr, ptr %1, align 8, !dbg !114, !noundef !31
  %3 = getelementptr inbounds { ptr, i64 }, ptr %_8, i32 0, i32 1, !dbg !114
  %4 = load i64, ptr %3, align 8, !dbg !114, !noundef !31
  %5 = getelementptr inbounds { ptr, i64 }, ptr %_7, i32 0, i32 0, !dbg !114
  store ptr %2, ptr %5, align 8, !dbg !114
  %6 = getelementptr inbounds { ptr, i64 }, ptr %_7, i32 0, i32 1, !dbg !114
  store i64 %4, ptr %6, align 8, !dbg !114
  %7 = getelementptr inbounds { ptr, i64 }, ptr %_7, i32 0, i32 0, !dbg !114
  %_3.0 = load ptr, ptr %7, align 8, !dbg !114, !noundef !31
  %8 = getelementptr inbounds { ptr, i64 }, ptr %_7, i32 0, i32 1, !dbg !114
  %_3.1 = load i64, ptr %8, align 8, !dbg !114, !noundef !31
  %9 = insertvalue { ptr, i64 } poison, ptr %_3.0, 0, !dbg !115
  %10 = insertvalue { ptr, i64 } %9, i64 %_3.1, 1, !dbg !115
  ret { ptr, i64 } %10, !dbg !115
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @_ZN4core5slice3raw14from_raw_parts17ha67b45eb760ba5c4E(ptr %data, i64 %len) unnamed_addr #1 !dbg !116 {
start:
  %data_address.dbg.spill = alloca ptr, align 8
  %len.dbg.spill = alloca i64, align 8
  %data.dbg.spill = alloca ptr, align 8
  %_8 = alloca { ptr, i64 }, align 8
  %_7 = alloca %"core::ptr::metadata::PtrRepr<[u8]>", align 8
  store ptr %data, ptr %data.dbg.spill, align 8
    #dbg_declare(ptr %data.dbg.spill, !120, !DIExpression(), !124)
    #dbg_declare(ptr %data.dbg.spill, !125, !DIExpression(), !135)
    #dbg_declare(ptr %data.dbg.spill, !137, !DIExpression(), !147)
  store i64 %len, ptr %len.dbg.spill, align 8
    #dbg_declare(ptr %len.dbg.spill, !121, !DIExpression(), !149)
    #dbg_declare(ptr %len.dbg.spill, !134, !DIExpression(), !150)
    #dbg_declare(ptr %len.dbg.spill, !151, !DIExpression(), !157)
  store ptr %data, ptr %data_address.dbg.spill, align 8, !dbg !159
    #dbg_declare(ptr %data_address.dbg.spill, !156, !DIExpression(), !160)
  store ptr %data, ptr %_8, align 8, !dbg !161
  %0 = getelementptr inbounds { ptr, i64 }, ptr %_8, i32 0, i32 1, !dbg !161
  store i64 %len, ptr %0, align 8, !dbg !161
  %1 = getelementptr inbounds { ptr, i64 }, ptr %_8, i32 0, i32 0, !dbg !162
  %2 = load ptr, ptr %1, align 8, !dbg !162, !noundef !31
  %3 = getelementptr inbounds { ptr, i64 }, ptr %_8, i32 0, i32 1, !dbg !162
  %4 = load i64, ptr %3, align 8, !dbg !162, !noundef !31
  %5 = getelementptr inbounds { ptr, i64 }, ptr %_7, i32 0, i32 0, !dbg !162
  store ptr %2, ptr %5, align 8, !dbg !162
  %6 = getelementptr inbounds { ptr, i64 }, ptr %_7, i32 0, i32 1, !dbg !162
  store i64 %4, ptr %6, align 8, !dbg !162
  %7 = getelementptr inbounds { ptr, i64 }, ptr %_7, i32 0, i32 0, !dbg !162
  %_3.0 = load ptr, ptr %7, align 8, !dbg !162, !noundef !31
  %8 = getelementptr inbounds { ptr, i64 }, ptr %_7, i32 0, i32 1, !dbg !162
  %_3.1 = load i64, ptr %8, align 8, !dbg !162, !noundef !31
  %9 = insertvalue { ptr, i64 } poison, ptr %_3.0, 0, !dbg !163
  %10 = insertvalue { ptr, i64 } %9, i64 %_3.1, 1, !dbg !163
  ret { ptr, i64 } %10, !dbg !163
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, i64 } @_ZN11bin2hex_lib3src3lib7bin2hex17h023cdcb8e949623eE(ptr align 1 %hex.0, i64 %hex.1, ptr align 1 %bin.0, i64 %bin.1) unnamed_addr #0 !dbg !164 {
start:
  %rhs.dbg.spill.i26 = alloca i64, align 8
  %self.dbg.spill.i27 = alloca i64, align 8
  %rhs.dbg.spill.i24 = alloca i64, align 8
  %self.dbg.spill.i25 = alloca i64, align 8
  %rhs.dbg.spill.i22 = alloca i64, align 8
  %self.dbg.spill.i23 = alloca i64, align 8
  %rhs.dbg.spill.i20 = alloca i64, align 8
  %self.dbg.spill.i21 = alloca i64, align 8
  %rhs.dbg.spill.i18 = alloca i64, align 8
  %self.dbg.spill.i19 = alloca i64, align 8
  %rhs.dbg.spill.i16 = alloca i64, align 8
  %self.dbg.spill.i17 = alloca i64, align 8
  %rhs.dbg.spill.i14 = alloca i64, align 8
  %self.dbg.spill.i15 = alloca i64, align 8
  %rhs.dbg.spill.i12 = alloca i32, align 4
  %self.dbg.spill.i13 = alloca i32, align 4
  %rhs.dbg.spill.i10 = alloca i32, align 4
  %self.dbg.spill.i11 = alloca i32, align 4
  %rhs.dbg.spill.i8 = alloca i32, align 4
  %self.dbg.spill.i9 = alloca i32, align 4
  %rhs.dbg.spill.i6 = alloca i32, align 4
  %self.dbg.spill.i7 = alloca i32, align 4
  %rhs.dbg.spill.i4 = alloca i32, align 4
  %self.dbg.spill.i5 = alloca i32, align 4
  %rhs.dbg.spill.i = alloca i32, align 4
  %self.dbg.spill.i = alloca i32, align 4
  %x.dbg.spill = alloca i32, align 4
  %b.dbg.spill = alloca i32, align 4
  %c.dbg.spill = alloca i32, align 4
  %byte.dbg.spill = alloca i8, align 1
  %hex_maxlen.dbg.spill = alloca i64, align 8
  %bin_len.dbg.spill = alloca i64, align 8
  %bin.dbg.spill = alloca { ptr, i64 }, align 8
  %hex.dbg.spill = alloca { ptr, i64 }, align 8
  %i = alloca i64, align 8
  %_6 = alloca i8, align 1
  %0 = getelementptr inbounds { ptr, i64 }, ptr %hex.dbg.spill, i32 0, i32 0
  store ptr %hex.0, ptr %0, align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %hex.dbg.spill, i32 0, i32 1
  store i64 %hex.1, ptr %1, align 8
    #dbg_declare(ptr %hex.dbg.spill, !168, !DIExpression(), !185)
  %2 = getelementptr inbounds { ptr, i64 }, ptr %bin.dbg.spill, i32 0, i32 0
  store ptr %bin.0, ptr %2, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %bin.dbg.spill, i32 0, i32 1
  store i64 %bin.1, ptr %3, align 8
    #dbg_declare(ptr %bin.dbg.spill, !169, !DIExpression(), !186)
    #dbg_declare(ptr %i, !174, !DIExpression(), !187)
  store i64 %bin.1, ptr %bin_len.dbg.spill, align 8, !dbg !188
    #dbg_declare(ptr %bin_len.dbg.spill, !170, !DIExpression(), !189)
  store i64 %hex.1, ptr %hex_maxlen.dbg.spill, align 8, !dbg !190
    #dbg_declare(ptr %hex_maxlen.dbg.spill, !172, !DIExpression(), !191)
  store i64 -1, ptr %self.dbg.spill.i19, align 8
    #dbg_declare(ptr %self.dbg.spill.i19, !192, !DIExpression(), !201)
  store i64 2, ptr %rhs.dbg.spill.i18, align 8
    #dbg_declare(ptr %rhs.dbg.spill.i18, !200, !DIExpression(), !203)
  %4 = call i1 @llvm.expect.i1(i1 false, i1 false), !dbg !204
  br i1 %4, label %panic.i, label %"_ZN4core3num23_$LT$impl$u20$usize$GT$12wrapping_div17h448f4b1f9b503d7bE.exit", !dbg !204

panic.i:                                          ; preds = %start
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.0, i64 25, ptr align 8 @alloc_ffdada6babe8a86b9551cf4cdc2f5673) #7, !dbg !204
  unreachable, !dbg !204

"_ZN4core3num23_$LT$impl$u20$usize$GT$12wrapping_div17h448f4b1f9b503d7bE.exit": ; preds = %start
  %_7 = icmp uge i64 %bin.1, 9223372036854775807, !dbg !205
  br i1 %_7, label %bb1, label %bb2, !dbg !205

bb2:                                              ; preds = %"_ZN4core3num23_$LT$impl$u20$usize$GT$12wrapping_div17h448f4b1f9b503d7bE.exit"
  store i64 %bin.1, ptr %self.dbg.spill.i27, align 8
    #dbg_declare(ptr %self.dbg.spill.i27, !206, !DIExpression(), !210)
  store i64 2, ptr %rhs.dbg.spill.i26, align 8
    #dbg_declare(ptr %rhs.dbg.spill.i26, !209, !DIExpression(), !212)
  %5 = mul i64 %bin.1, 2, !dbg !213
  %_9 = icmp ule i64 %hex.1, %5, !dbg !214
  %6 = zext i1 %_9 to i8, !dbg !205
  store i8 %6, ptr %_6, align 1, !dbg !205
  br label %bb3, !dbg !205

bb1:                                              ; preds = %"_ZN4core3num23_$LT$impl$u20$usize$GT$12wrapping_div17h448f4b1f9b503d7bE.exit"
  store i8 1, ptr %_6, align 1, !dbg !205
  br label %bb3, !dbg !205

bb3:                                              ; preds = %bb1, %bb2
  %7 = load i8, ptr %_6, align 1, !dbg !205, !range !215, !noundef !31
  %8 = trunc i8 %7 to i1, !dbg !205
  br i1 %8, label %bb6, label %bb7, !dbg !205

bb7:                                              ; preds = %bb3
  store i64 0, ptr %i, align 8, !dbg !216
  br label %bb8, !dbg !217

bb6:                                              ; preds = %bb3
  call void @_ZN3std7process5abort17h6c3420dae5e21601E() #7, !dbg !218
  unreachable, !dbg !218

bb8:                                              ; preds = %bb21, %bb7
  %_14 = load i64, ptr %i, align 8, !dbg !219, !noundef !31
  %_13 = icmp ult i64 %_14, %bin.1, !dbg !219
  br i1 %_13, label %bb9, label %bb23, !dbg !219

bb23:                                             ; preds = %bb8
  %_54 = load i64, ptr %i, align 8, !dbg !220, !noundef !31
  store i64 %_54, ptr %self.dbg.spill.i21, align 8
    #dbg_declare(ptr %self.dbg.spill.i21, !206, !DIExpression(), !221)
  store i64 2, ptr %rhs.dbg.spill.i20, align 8
    #dbg_declare(ptr %rhs.dbg.spill.i20, !209, !DIExpression(), !223)
  %9 = mul i64 %_54, 2, !dbg !224
  %_56 = icmp ult i64 %9, %hex.1, !dbg !225
  %10 = call i1 @llvm.expect.i1(i1 %_56, i1 true), !dbg !225
  br i1 %10, label %bb25, label %panic3, !dbg !225

bb9:                                              ; preds = %bb8
  %_16 = load i64, ptr %i, align 8, !dbg !226, !noundef !31
  %_18 = icmp ult i64 %_16, %bin.1, !dbg !227
  %11 = call i1 @llvm.expect.i1(i1 %_18, i1 true), !dbg !227
  br i1 %11, label %bb10, label %panic, !dbg !227

bb10:                                             ; preds = %bb9
  %12 = getelementptr inbounds [0 x i8], ptr %bin.0, i64 0, i64 %_16, !dbg !227
  %byte = load i8, ptr %12, align 1, !dbg !227, !noundef !31
  store i8 %byte, ptr %byte.dbg.spill, align 1, !dbg !227
    #dbg_declare(ptr %byte.dbg.spill, !176, !DIExpression(), !228)
  %_20 = zext i8 %byte to i32, !dbg !229
  %c = and i32 %_20, 15, !dbg !230
  store i32 %c, ptr %c.dbg.spill, align 4, !dbg !230
    #dbg_declare(ptr %c.dbg.spill, !178, !DIExpression(), !231)
  %_22 = zext i8 %byte to i32, !dbg !232
  %b = lshr i32 %_22, 4, !dbg !233
  store i32 %b, ptr %b.dbg.spill, align 4, !dbg !233
    #dbg_declare(ptr %b.dbg.spill, !181, !DIExpression(), !234)
  store i32 87, ptr %self.dbg.spill.i9, align 4
    #dbg_declare(ptr %self.dbg.spill.i9, !235, !DIExpression(), !242)
  store i32 %c, ptr %rhs.dbg.spill.i8, align 4
    #dbg_declare(ptr %rhs.dbg.spill.i8, !241, !DIExpression(), !244)
  %13 = add i32 87, %c, !dbg !245
  store i32 %c, ptr %self.dbg.spill.i13, align 4
    #dbg_declare(ptr %self.dbg.spill.i13, !246, !DIExpression(), !250)
  store i32 10, ptr %rhs.dbg.spill.i12, align 4
    #dbg_declare(ptr %rhs.dbg.spill.i12, !249, !DIExpression(), !252)
  %14 = sub i32 %c, 10, !dbg !253
  %_30 = lshr i32 %14, 8, !dbg !254
  %_29 = and i32 %_30, -39, !dbg !254
  store i32 %13, ptr %self.dbg.spill.i7, align 4
    #dbg_declare(ptr %self.dbg.spill.i7, !235, !DIExpression(), !255)
  store i32 %_29, ptr %rhs.dbg.spill.i6, align 4
    #dbg_declare(ptr %rhs.dbg.spill.i6, !241, !DIExpression(), !257)
  %15 = add i32 %13, %_29, !dbg !258
  %_26 = trunc i32 %15 to i8, !dbg !259
  %_25 = zext i8 %_26 to i32, !dbg !260
  %_24 = shl i32 %_25, 8, !dbg !261
  store i32 87, ptr %self.dbg.spill.i5, align 4
    #dbg_declare(ptr %self.dbg.spill.i5, !235, !DIExpression(), !262)
  store i32 %b, ptr %rhs.dbg.spill.i4, align 4
    #dbg_declare(ptr %rhs.dbg.spill.i4, !241, !DIExpression(), !264)
  %16 = add i32 87, %b, !dbg !265
  store i32 %b, ptr %self.dbg.spill.i11, align 4
    #dbg_declare(ptr %self.dbg.spill.i11, !246, !DIExpression(), !266)
  store i32 10, ptr %rhs.dbg.spill.i10, align 4
    #dbg_declare(ptr %rhs.dbg.spill.i10, !249, !DIExpression(), !268)
  %17 = sub i32 %b, 10, !dbg !269
  %_38 = lshr i32 %17, 8, !dbg !270
  %_37 = and i32 %_38, -39, !dbg !270
  store i32 %16, ptr %self.dbg.spill.i, align 4
    #dbg_declare(ptr %self.dbg.spill.i, !235, !DIExpression(), !271)
  store i32 %_37, ptr %rhs.dbg.spill.i, align 4
    #dbg_declare(ptr %rhs.dbg.spill.i, !241, !DIExpression(), !273)
  %18 = add i32 %16, %_37, !dbg !274
  %_34 = trunc i32 %18 to i8, !dbg !275
  %_33 = zext i8 %_34 to i32, !dbg !276
  %x = or i32 %_24, %_33, !dbg !261
  store i32 %x, ptr %x.dbg.spill, align 4, !dbg !261
    #dbg_declare(ptr %x.dbg.spill, !183, !DIExpression(), !277)
  %_42 = load i64, ptr %i, align 8, !dbg !278, !noundef !31
  store i64 %_42, ptr %self.dbg.spill.i25, align 8
    #dbg_declare(ptr %self.dbg.spill.i25, !206, !DIExpression(), !279)
  store i64 2, ptr %rhs.dbg.spill.i24, align 8
    #dbg_declare(ptr %rhs.dbg.spill.i24, !209, !DIExpression(), !281)
  %19 = mul i64 %_42, 2, !dbg !282
  %_44 = icmp ult i64 %19, %hex.1, !dbg !283
  %20 = call i1 @llvm.expect.i1(i1 %_44, i1 true), !dbg !283
  br i1 %20, label %bb18, label %panic1, !dbg !283

panic:                                            ; preds = %bb9
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %_16, i64 %bin.1, ptr align 8 @alloc_2a07e6877efa1102b7bc10394c349060) #7, !dbg !227
  unreachable, !dbg !227

bb18:                                             ; preds = %bb10
  %21 = getelementptr inbounds [0 x i8], ptr %hex.0, i64 0, i64 %19, !dbg !283
  %22 = trunc i32 %x to i8, !dbg !283
  store i8 %22, ptr %21, align 1, !dbg !283
  %_45 = lshr i32 %x, 8, !dbg !284
  %_48 = load i64, ptr %i, align 8, !dbg !285, !noundef !31
  store i64 %_48, ptr %self.dbg.spill.i23, align 8
    #dbg_declare(ptr %self.dbg.spill.i23, !206, !DIExpression(), !286)
  store i64 2, ptr %rhs.dbg.spill.i22, align 8
    #dbg_declare(ptr %rhs.dbg.spill.i22, !209, !DIExpression(), !288)
  %23 = mul i64 %_48, 2, !dbg !289
  store i64 %23, ptr %self.dbg.spill.i17, align 8
    #dbg_declare(ptr %self.dbg.spill.i17, !290, !DIExpression(), !294)
  store i64 1, ptr %rhs.dbg.spill.i16, align 8
    #dbg_declare(ptr %rhs.dbg.spill.i16, !293, !DIExpression(), !296)
  %24 = add i64 %23, 1, !dbg !297
  %_50 = icmp ult i64 %24, %hex.1, !dbg !298
  %25 = call i1 @llvm.expect.i1(i1 %_50, i1 true), !dbg !298
  br i1 %25, label %bb21, label %panic2, !dbg !298

panic1:                                           ; preds = %bb10
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %19, i64 %hex.1, ptr align 8 @alloc_f1747e4da537d5b496022ed05d97ad87) #7, !dbg !283
  unreachable, !dbg !283

bb21:                                             ; preds = %bb18
  %26 = getelementptr inbounds [0 x i8], ptr %hex.0, i64 0, i64 %24, !dbg !298
  %27 = trunc i32 %_45 to i8, !dbg !298
  store i8 %27, ptr %26, align 1, !dbg !298
  %_52 = load i64, ptr %i, align 8, !dbg !299, !noundef !31
  store i64 %_52, ptr %self.dbg.spill.i15, align 8
    #dbg_declare(ptr %self.dbg.spill.i15, !290, !DIExpression(), !300)
  store i64 1, ptr %rhs.dbg.spill.i14, align 8
    #dbg_declare(ptr %rhs.dbg.spill.i14, !293, !DIExpression(), !302)
  %28 = add i64 %_52, 1, !dbg !303
  store i64 %28, ptr %i, align 8, !dbg !304
  br label %bb8, !dbg !217

panic2:                                           ; preds = %bb18
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %24, i64 %hex.1, ptr align 8 @alloc_f0ffe9766e826e35d82793f1240264d2) #7, !dbg !298
  unreachable, !dbg !298

bb25:                                             ; preds = %bb23
  %29 = getelementptr inbounds [0 x i8], ptr %hex.0, i64 0, i64 %9, !dbg !225
  store i8 0, ptr %29, align 1, !dbg !225
  %30 = insertvalue { ptr, i64 } poison, ptr %hex.0, 0, !dbg !305
  %31 = insertvalue { ptr, i64 } %30, i64 %hex.1, 1, !dbg !305
  ret { ptr, i64 } %31, !dbg !305

panic3:                                           ; preds = %bb23
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %9, i64 %hex.1, ptr align 8 @alloc_301af894193a3fb17ce4e6246b68f088) #7, !dbg !225
  unreachable, !dbg !225
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.expect.i1(i1, i1) #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1, i64, ptr align 8) unnamed_addr #3

; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_ZN3std7process5abort17h6c3420dae5e21601E() unnamed_addr #4

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64, i64, ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_1() unnamed_addr #0 !dbg !306 {
start:
  %self.dbg.spill.i1 = alloca { ptr, i64 }, align 8
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %bin_len.dbg.spill = alloca i64, align 8
  %hex_maxlen.dbg.spill = alloca i64, align 8
  %expected_hex = alloca [3 x i8], align 1
  %bin = alloca [1 x i8], align 1
  %hex = alloca [3 x i8], align 1
    #dbg_declare(ptr %hex, !311, !DIExpression(), !327)
    #dbg_declare(ptr %bin, !316, !DIExpression(), !328)
    #dbg_declare(ptr %expected_hex, !325, !DIExpression(), !329)
  %0 = getelementptr inbounds [3 x i8], ptr %hex, i64 0, i64 0, !dbg !330
  store i8 0, ptr %0, align 1, !dbg !330
  %1 = getelementptr inbounds [3 x i8], ptr %hex, i64 0, i64 1, !dbg !330
  store i8 0, ptr %1, align 1, !dbg !330
  %2 = getelementptr inbounds [3 x i8], ptr %hex, i64 0, i64 2, !dbg !330
  store i8 0, ptr %2, align 1, !dbg !330
  %3 = getelementptr inbounds [1 x i8], ptr %bin, i64 0, i64 0, !dbg !331
  store i8 -1, ptr %3, align 1, !dbg !331
  store i64 3, ptr %hex_maxlen.dbg.spill, align 8, !dbg !332
    #dbg_declare(ptr %hex_maxlen.dbg.spill, !321, !DIExpression(), !333)
  store i64 1, ptr %bin_len.dbg.spill, align 8, !dbg !334
    #dbg_declare(ptr %bin_len.dbg.spill, !323, !DIExpression(), !335)
  store ptr %hex, ptr %self.dbg.spill.i, align 8
  %4 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %4, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !48, !DIExpression(), !336)
  store ptr %bin, ptr %self.dbg.spill.i1, align 8
  %5 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i1, i32 0, i32 1
  store i64 1, ptr %5, align 8
    #dbg_declare(ptr %self.dbg.spill.i1, !338, !DIExpression(), !343)
  %_5 = call ptr @bin2hex(ptr %hex, i64 3, ptr %bin, i64 1), !dbg !345
  %6 = getelementptr inbounds [3 x i8], ptr %expected_hex, i64 0, i64 0, !dbg !346
  store i8 102, ptr %6, align 1, !dbg !346
  %7 = getelementptr inbounds [3 x i8], ptr %expected_hex, i64 0, i64 1, !dbg !346
  store i8 102, ptr %7, align 1, !dbg !346
  %8 = getelementptr inbounds [3 x i8], ptr %expected_hex, i64 0, i64 2, !dbg !346
  store i8 0, ptr %8, align 1, !dbg !346
  %9 = call zeroext i1 @"_ZN4core5array8equality103_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$B$u3b$$u20$N$u5d$$GT$$u20$for$u20$$u5b$A$u3b$$u20$N$u5d$$GT$2eq17hfc757c2b0b9965aeE"(ptr align 1 %hex, ptr align 1 %expected_hex), !dbg !347
  ret i1 %9, !dbg !348
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core5array8equality103_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$B$u3b$$u20$N$u5d$$GT$$u20$for$u20$$u5b$A$u3b$$u20$N$u5d$$GT$2eq17hfc757c2b0b9965aeE"(ptr align 1 %self, ptr align 1 %other) unnamed_addr #1 !dbg !349 {
start:
  %other.dbg.spill = alloca ptr, align 8
  %self.dbg.spill = alloca ptr, align 8
  store ptr %self, ptr %self.dbg.spill, align 8
    #dbg_declare(ptr %self.dbg.spill, !358, !DIExpression(), !363)
  store ptr %other, ptr %other.dbg.spill, align 8
    #dbg_declare(ptr %other.dbg.spill, !359, !DIExpression(), !364)
  %0 = call zeroext i1 @"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17hc9fdf6c3965b0b55E"(ptr align 1 %self, ptr align 1 %other), !dbg !365
  ret i1 %0, !dbg !366
}

; Function Attrs: nonlazybind uwtable
define internal zeroext i1 @"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17hc9fdf6c3965b0b55E"(ptr align 1 %a, ptr align 1 %b) unnamed_addr #0 !dbg !367 {
start:
  %0 = alloca i8, align 1
  %b.dbg.spill = alloca ptr, align 8
  %a.dbg.spill = alloca ptr, align 8
  store ptr %a, ptr %a.dbg.spill, align 8
    #dbg_declare(ptr %a.dbg.spill, !370, !DIExpression(), !374)
  store ptr %b, ptr %b.dbg.spill, align 8
    #dbg_declare(ptr %b.dbg.spill, !371, !DIExpression(), !375)
  %1 = load i24, ptr %a, align 1, !dbg !376
  %2 = load i24, ptr %b, align 1, !dbg !376
  %3 = icmp eq i24 %1, %2, !dbg !376
  %4 = zext i1 %3 to i8, !dbg !376
  store i8 %4, ptr %0, align 1, !dbg !376
  %5 = load i8, ptr %0, align 1, !dbg !376, !range !215, !noundef !31
  %6 = trunc i8 %5 to i1, !dbg !376
  ret i1 %6, !dbg !377
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_2() unnamed_addr #0 !dbg !378 {
start:
  %self.dbg.spill.i1 = alloca { ptr, i64 }, align 8
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %bin_len.dbg.spill = alloca i64, align 8
  %hex_maxlen.dbg.spill = alloca i64, align 8
  %expected_hex = alloca [8 x i8], align 1
  %bin = alloca [3 x i8], align 1
  %hex = alloca [9 x i8], align 1
    #dbg_declare(ptr %hex, !380, !DIExpression(), !397)
    #dbg_declare(ptr %bin, !385, !DIExpression(), !398)
    #dbg_declare(ptr %expected_hex, !392, !DIExpression(), !399)
  %0 = getelementptr inbounds [9 x i8], ptr %hex, i64 0, i64 0, !dbg !400
  store i8 0, ptr %0, align 1, !dbg !400
  %1 = getelementptr inbounds [9 x i8], ptr %hex, i64 0, i64 1, !dbg !400
  store i8 0, ptr %1, align 1, !dbg !400
  %2 = getelementptr inbounds [9 x i8], ptr %hex, i64 0, i64 2, !dbg !400
  store i8 0, ptr %2, align 1, !dbg !400
  %3 = getelementptr inbounds [9 x i8], ptr %hex, i64 0, i64 3, !dbg !400
  store i8 0, ptr %3, align 1, !dbg !400
  %4 = getelementptr inbounds [9 x i8], ptr %hex, i64 0, i64 4, !dbg !400
  store i8 0, ptr %4, align 1, !dbg !400
  %5 = getelementptr inbounds [9 x i8], ptr %hex, i64 0, i64 5, !dbg !400
  store i8 0, ptr %5, align 1, !dbg !400
  %6 = getelementptr inbounds [9 x i8], ptr %hex, i64 0, i64 6, !dbg !400
  store i8 0, ptr %6, align 1, !dbg !400
  %7 = getelementptr inbounds [9 x i8], ptr %hex, i64 0, i64 7, !dbg !400
  store i8 0, ptr %7, align 1, !dbg !400
  %8 = getelementptr inbounds [9 x i8], ptr %hex, i64 0, i64 8, !dbg !400
  store i8 0, ptr %8, align 1, !dbg !400
  %9 = getelementptr inbounds [3 x i8], ptr %bin, i64 0, i64 0, !dbg !401
  store i8 8, ptr %9, align 1, !dbg !401
  %10 = getelementptr inbounds [3 x i8], ptr %bin, i64 0, i64 1, !dbg !401
  store i8 65, ptr %10, align 1, !dbg !401
  %11 = getelementptr inbounds [3 x i8], ptr %bin, i64 0, i64 2, !dbg !401
  store i8 19, ptr %11, align 1, !dbg !401
  store i64 9, ptr %hex_maxlen.dbg.spill, align 8, !dbg !402
    #dbg_declare(ptr %hex_maxlen.dbg.spill, !388, !DIExpression(), !403)
  store i64 3, ptr %bin_len.dbg.spill, align 8, !dbg !404
    #dbg_declare(ptr %bin_len.dbg.spill, !390, !DIExpression(), !405)
  store ptr %hex, ptr %self.dbg.spill.i, align 8
  %12 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 9, ptr %12, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !48, !DIExpression(), !406)
  store ptr %bin, ptr %self.dbg.spill.i1, align 8
  %13 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i1, i32 0, i32 1
  store i64 3, ptr %13, align 8
    #dbg_declare(ptr %self.dbg.spill.i1, !338, !DIExpression(), !408)
  %_5 = call ptr @bin2hex(ptr %hex, i64 9, ptr %bin, i64 3), !dbg !410
  %14 = getelementptr inbounds [8 x i8], ptr %expected_hex, i64 0, i64 0, !dbg !411
  store i8 48, ptr %14, align 1, !dbg !411
  %15 = getelementptr inbounds [8 x i8], ptr %expected_hex, i64 0, i64 1, !dbg !411
  store i8 56, ptr %15, align 1, !dbg !411
  %16 = getelementptr inbounds [8 x i8], ptr %expected_hex, i64 0, i64 2, !dbg !411
  store i8 52, ptr %16, align 1, !dbg !411
  %17 = getelementptr inbounds [8 x i8], ptr %expected_hex, i64 0, i64 3, !dbg !411
  store i8 49, ptr %17, align 1, !dbg !411
  %18 = getelementptr inbounds [8 x i8], ptr %expected_hex, i64 0, i64 4, !dbg !411
  store i8 49, ptr %18, align 1, !dbg !411
  %19 = getelementptr inbounds [8 x i8], ptr %expected_hex, i64 0, i64 5, !dbg !411
  store i8 51, ptr %19, align 1, !dbg !411
  %20 = getelementptr inbounds [8 x i8], ptr %expected_hex, i64 0, i64 6, !dbg !411
  store i8 0, ptr %20, align 1, !dbg !411
  %21 = getelementptr inbounds [8 x i8], ptr %expected_hex, i64 0, i64 7, !dbg !411
  store i8 0, ptr %21, align 1, !dbg !411
  %22 = call { ptr, i64 } @"_ZN4core5array85_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$5index17h1455a6d2a267635aE"(ptr align 1 %hex, i64 8, ptr align 8 @alloc_61052ac8c5c3e956567d2de58e02eb56), !dbg !412
  %_14.0 = extractvalue { ptr, i64 } %22, 0, !dbg !412
  %_14.1 = extractvalue { ptr, i64 } %22, 1, !dbg !412
  %23 = call zeroext i1 @"_ZN4core5array8equality92_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$A$u3b$$u20$N$u5d$$GT$$u20$for$u20$$u5b$B$u5d$$GT$2eq17hc4637cf22f467cf4E"(ptr align 1 %_14.0, i64 %_14.1, ptr align 1 %expected_hex), !dbg !412
  ret i1 %23, !dbg !413
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @"_ZN4core5array85_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$5index17h1455a6d2a267635aE"(ptr align 1 %self, i64 %index, ptr align 8 %0) unnamed_addr #1 !dbg !414 {
start:
  %index.dbg.spill = alloca i64, align 8
  %self.dbg.spill = alloca ptr, align 8
  store ptr %self, ptr %self.dbg.spill, align 8
    #dbg_declare(ptr %self.dbg.spill, !444, !DIExpression(), !448)
  store i64 %index, ptr %index.dbg.spill, align 8
    #dbg_declare(ptr %index.dbg.spill, !445, !DIExpression(), !449)
  %1 = call { ptr, i64 } @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17hef2c5ce49f314e95E"(ptr align 1 %self, i64 9, i64 %index, ptr align 8 %0), !dbg !450
  %2 = extractvalue { ptr, i64 } %1, 0, !dbg !450
  %3 = extractvalue { ptr, i64 } %1, 1, !dbg !450
  %4 = insertvalue { ptr, i64 } poison, ptr %2, 0, !dbg !451
  %5 = insertvalue { ptr, i64 } %4, i64 %3, 1, !dbg !451
  ret { ptr, i64 } %5, !dbg !451
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core5array8equality92_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$A$u3b$$u20$N$u5d$$GT$$u20$for$u20$$u5b$B$u5d$$GT$2eq17hc4637cf22f467cf4E"(ptr align 1 %self.0, i64 %self.1, ptr align 1 %other) unnamed_addr #1 !dbg !452 {
start:
  %b.dbg.spill = alloca ptr, align 8
  %other.dbg.spill = alloca ptr, align 8
  %self.dbg.spill = alloca { ptr, i64 }, align 8
  %b = alloca ptr, align 8
  %0 = alloca i8, align 1
  %1 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill, i32 0, i32 0
  store ptr %self.0, ptr %1, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill, i32 0, i32 1
  store i64 %self.1, ptr %2, align 8
    #dbg_declare(ptr %self.dbg.spill, !458, !DIExpression(), !485)
    #dbg_declare(ptr %self.dbg.spill, !486, !DIExpression(), !497)
  store ptr %other, ptr %other.dbg.spill, align 8
    #dbg_declare(ptr %other.dbg.spill, !459, !DIExpression(), !499)
    #dbg_declare(ptr %other.dbg.spill, !500, !DIExpression(), !506)
    #dbg_declare(ptr %b, !460, !DIExpression(), !508)
  %3 = call align 1 ptr @"_ZN4core5array102_$LT$impl$u20$core..convert..TryFrom$LT$$RF$$u5b$T$u5d$$GT$$u20$for$u20$$RF$$u5b$T$u3b$$u20$N$u5d$$GT$8try_from17h96de4e8a01048dbeE"(ptr align 1 %self.0, i64 %self.1), !dbg !509
  store ptr %3, ptr %b, align 8, !dbg !509
  %4 = load ptr, ptr %b, align 8, !dbg !510, !noundef !31
  %5 = ptrtoint ptr %4 to i64, !dbg !510
  %6 = icmp eq i64 %5, 0, !dbg !510
  %_4 = select i1 %6, i64 1, i64 0, !dbg !510
  %7 = icmp eq i64 %_4, 0, !dbg !511
  br i1 %7, label %bb3, label %bb1, !dbg !511

bb3:                                              ; preds = %start
  %b1 = load ptr, ptr %b, align 8, !dbg !512, !nonnull !31, !align !513, !noundef !31
  store ptr %b1, ptr %b.dbg.spill, align 8, !dbg !512
    #dbg_declare(ptr %b.dbg.spill, !483, !DIExpression(), !514)
    #dbg_declare(ptr %b.dbg.spill, !505, !DIExpression(), !515)
  %8 = call zeroext i1 @"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h022d93e985cc1d65E"(ptr align 1 %b1, ptr align 1 %other), !dbg !516
  %9 = zext i1 %8 to i8, !dbg !516
  store i8 %9, ptr %0, align 1, !dbg !516
  br label %bb4, !dbg !516

bb1:                                              ; preds = %start
  store i8 0, ptr %0, align 1, !dbg !517
  br label %bb4, !dbg !517

bb2:                                              ; No predecessors!
  unreachable, !dbg !510

bb4:                                              ; preds = %bb1, %bb3
  %10 = load i8, ptr %0, align 1, !dbg !518, !range !215, !noundef !31
  %11 = trunc i8 %10 to i1, !dbg !518
  ret i1 %11, !dbg !518
}

; Function Attrs: nonlazybind uwtable
define internal align 1 ptr @"_ZN4core5array102_$LT$impl$u20$core..convert..TryFrom$LT$$RF$$u5b$T$u5d$$GT$$u20$for$u20$$RF$$u5b$T$u3b$$u20$N$u5d$$GT$8try_from17h96de4e8a01048dbeE"(ptr align 1 %slice.0, i64 %slice.1) unnamed_addr #0 !dbg !519 {
start:
  %ptr.dbg.spill = alloca ptr, align 8
  %slice.dbg.spill = alloca { ptr, i64 }, align 8
  %0 = alloca ptr, align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %slice.dbg.spill, i32 0, i32 0
  store ptr %slice.0, ptr %1, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %slice.dbg.spill, i32 0, i32 1
  store i64 %slice.1, ptr %2, align 8
    #dbg_declare(ptr %slice.dbg.spill, !522, !DIExpression(), !526)
    #dbg_declare(ptr %slice.dbg.spill, !527, !DIExpression(), !533)
  %_2 = icmp eq i64 %slice.1, 8, !dbg !535
  br i1 %_2, label %bb1, label %bb2, !dbg !535

bb2:                                              ; preds = %start
  store ptr null, ptr %0, align 8, !dbg !536
  br label %bb3, !dbg !537

bb1:                                              ; preds = %start
  store ptr %slice.0, ptr %ptr.dbg.spill, align 8, !dbg !538
    #dbg_declare(ptr %ptr.dbg.spill, !523, !DIExpression(), !539)
  store ptr %slice.0, ptr %0, align 8, !dbg !540
  br label %bb3, !dbg !537

bb3:                                              ; preds = %bb1, %bb2
  %3 = load ptr, ptr %0, align 8, !dbg !541, !align !513, !noundef !31
  ret ptr %3, !dbg !541
}

; Function Attrs: nonlazybind uwtable
define internal zeroext i1 @"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h022d93e985cc1d65E"(ptr align 1 %a, ptr align 1 %b) unnamed_addr #0 !dbg !542 {
start:
  %0 = alloca i8, align 1
  %b.dbg.spill = alloca ptr, align 8
  %a.dbg.spill = alloca ptr, align 8
  store ptr %a, ptr %a.dbg.spill, align 8
    #dbg_declare(ptr %a.dbg.spill, !544, !DIExpression(), !546)
  store ptr %b, ptr %b.dbg.spill, align 8
    #dbg_declare(ptr %b.dbg.spill, !545, !DIExpression(), !547)
  %1 = load i64, ptr %a, align 1, !dbg !548
  %2 = load i64, ptr %b, align 1, !dbg !548
  %3 = icmp eq i64 %1, %2, !dbg !548
  %4 = zext i1 %3 to i8, !dbg !548
  store i8 %4, ptr %0, align 1, !dbg !548
  %5 = load i8, ptr %0, align 1, !dbg !548, !range !215, !noundef !31
  %6 = trunc i8 %5 to i1, !dbg !548
  ret i1 %6, !dbg !549
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17hef2c5ce49f314e95E"(ptr align 1 %self.0, i64 %self.1, i64 %index, ptr align 8 %0) unnamed_addr #1 !dbg !550 {
start:
  %index.dbg.spill = alloca i64, align 8
  %self.dbg.spill = alloca { ptr, i64 }, align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill, i32 0, i32 0
  store ptr %self.0, ptr %1, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill, i32 0, i32 1
  store i64 %self.1, ptr %2, align 8
    #dbg_declare(ptr %self.dbg.spill, !557, !DIExpression(), !559)
  store i64 %index, ptr %index.dbg.spill, align 8
    #dbg_declare(ptr %index.dbg.spill, !558, !DIExpression(), !560)
  %3 = call { ptr, i64 } @"_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h705393f1141e1369E"(i64 %index, ptr align 1 %self.0, i64 %self.1, ptr align 8 %0), !dbg !561
  %4 = extractvalue { ptr, i64 } %3, 0, !dbg !561
  %5 = extractvalue { ptr, i64 } %3, 1, !dbg !561
  %6 = insertvalue { ptr, i64 } poison, ptr %4, 0, !dbg !562
  %7 = insertvalue { ptr, i64 } %6, i64 %5, 1, !dbg !562
  ret { ptr, i64 } %7, !dbg !562
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @"_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h705393f1141e1369E"(i64 %self, ptr align 1 %slice.0, i64 %slice.1, ptr align 8 %0) unnamed_addr #1 !dbg !563 {
start:
  %slice.dbg.spill = alloca { ptr, i64 }, align 8
  %self.dbg.spill = alloca i64, align 8
  %_3 = alloca { i64, i64 }, align 8
  store i64 %self, ptr %self.dbg.spill, align 8
    #dbg_declare(ptr %self.dbg.spill, !568, !DIExpression(), !570)
  %1 = getelementptr inbounds { ptr, i64 }, ptr %slice.dbg.spill, i32 0, i32 0
  store ptr %slice.0, ptr %1, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %slice.dbg.spill, i32 0, i32 1
  store i64 %slice.1, ptr %2, align 8
    #dbg_declare(ptr %slice.dbg.spill, !569, !DIExpression(), !571)
  store i64 0, ptr %_3, align 8, !dbg !572
  %3 = getelementptr inbounds { i64, i64 }, ptr %_3, i32 0, i32 1, !dbg !572
  store i64 %self, ptr %3, align 8, !dbg !572
  %4 = getelementptr inbounds { i64, i64 }, ptr %_3, i32 0, i32 0, !dbg !572
  %5 = load i64, ptr %4, align 8, !dbg !572, !noundef !31
  %6 = getelementptr inbounds { i64, i64 }, ptr %_3, i32 0, i32 1, !dbg !572
  %7 = load i64, ptr %6, align 8, !dbg !572, !noundef !31
  %8 = call { ptr, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h6ffd306747e64266E"(i64 %5, i64 %7, ptr align 1 %slice.0, i64 %slice.1, ptr align 8 %0), !dbg !572
  %9 = extractvalue { ptr, i64 } %8, 0, !dbg !572
  %10 = extractvalue { ptr, i64 } %8, 1, !dbg !572
  %11 = insertvalue { ptr, i64 } poison, ptr %9, 0, !dbg !573
  %12 = insertvalue { ptr, i64 } %11, i64 %10, 1, !dbg !573
  ret { ptr, i64 } %12, !dbg !573
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h6ffd306747e64266E"(i64 %self.0, i64 %self.1, ptr align 1 %slice.0, i64 %slice.1, ptr align 8 %0) unnamed_addr #1 !dbg !574 {
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
    #dbg_declare(ptr %self.dbg.spill, !583, !DIExpression(), !585)
    #dbg_declare(ptr %self.dbg.spill, !586, !DIExpression(), !600)
  %5 = getelementptr inbounds { ptr, i64 }, ptr %slice.dbg.spill, i32 0, i32 0
  store ptr %slice.0, ptr %5, align 8
  %6 = getelementptr inbounds { ptr, i64 }, ptr %slice.dbg.spill, i32 0, i32 1
  store i64 %slice.1, ptr %6, align 8
    #dbg_declare(ptr %slice.dbg.spill, !584, !DIExpression(), !602)
  %_3 = icmp ugt i64 %self.0, %self.1, !dbg !603
  br i1 %_3, label %bb1, label %bb2, !dbg !603

bb2:                                              ; preds = %start
  %_9 = icmp ugt i64 %self.1, %slice.1, !dbg !604
  br i1 %_9, label %bb3, label %bb4, !dbg !604

bb1:                                              ; preds = %start
  call void @_ZN4core5slice5index22slice_index_order_fail17h2045503bd7776290E(i64 %self.0, i64 %self.1, ptr align 8 %0) #7, !dbg !605
  unreachable, !dbg !605

bb4:                                              ; preds = %bb2
  %7 = getelementptr inbounds { ptr, i64 }, ptr %slice.dbg.spill1, i32 0, i32 0, !dbg !606
  store ptr %slice.0, ptr %7, align 8, !dbg !606
  %8 = getelementptr inbounds { ptr, i64 }, ptr %slice.dbg.spill1, i32 0, i32 1, !dbg !606
  store i64 %slice.1, ptr %8, align 8, !dbg !606
    #dbg_declare(ptr %slice.dbg.spill1, !595, !DIExpression(), !607)
    #dbg_declare(ptr %slice.dbg.spill1, !608, !DIExpression(), !614)
  %9 = sub nuw i64 %self.1, %self.0, !dbg !616
  store i64 %9, ptr %2, align 8, !dbg !616
  %new_len = load i64, ptr %2, align 8, !dbg !616, !noundef !31
  store i64 %new_len, ptr %new_len.dbg.spill, align 8, !dbg !616
    #dbg_declare(ptr %new_len.dbg.spill, !598, !DIExpression(), !617)
  store ptr %slice.0, ptr %self.dbg.spill2, align 8, !dbg !618
    #dbg_declare(ptr %self.dbg.spill2, !619, !DIExpression(), !625)
    #dbg_declare(ptr %self.dbg.spill2, !627, !DIExpression(), !634)
  store i64 %self.0, ptr %count.dbg.spill, align 8, !dbg !636
    #dbg_declare(ptr %count.dbg.spill, !624, !DIExpression(), !637)
  store i64 %self.0, ptr %count.dbg.spill3, align 8, !dbg !638
    #dbg_declare(ptr %count.dbg.spill3, !633, !DIExpression(), !639)
  %10 = getelementptr inbounds i8, ptr %slice.0, i64 %self.0, !dbg !640
  store ptr %10, ptr %1, align 8, !dbg !640
  %data = load ptr, ptr %1, align 8, !dbg !640, !noundef !31
  store ptr %data, ptr %data.dbg.spill, align 8, !dbg !640
    #dbg_declare(ptr %data.dbg.spill, !641, !DIExpression(), !647)
    #dbg_declare(ptr %data.dbg.spill, !649, !DIExpression(), !654)
  store i64 %new_len, ptr %len.dbg.spill, align 8, !dbg !656
    #dbg_declare(ptr %len.dbg.spill, !646, !DIExpression(), !657)
    #dbg_declare(ptr %len.dbg.spill, !658, !DIExpression(), !664)
  store ptr %data, ptr %data_address.dbg.spill, align 8, !dbg !666
    #dbg_declare(ptr %data_address.dbg.spill, !663, !DIExpression(), !667)
  store ptr %data, ptr %_30, align 8, !dbg !668
  %11 = getelementptr inbounds { ptr, i64 }, ptr %_30, i32 0, i32 1, !dbg !668
  store i64 %new_len, ptr %11, align 8, !dbg !668
  %12 = getelementptr inbounds { ptr, i64 }, ptr %_30, i32 0, i32 0, !dbg !669
  %13 = load ptr, ptr %12, align 8, !dbg !669, !noundef !31
  %14 = getelementptr inbounds { ptr, i64 }, ptr %_30, i32 0, i32 1, !dbg !669
  %15 = load i64, ptr %14, align 8, !dbg !669, !noundef !31
  %16 = getelementptr inbounds { ptr, i64 }, ptr %_29, i32 0, i32 0, !dbg !669
  store ptr %13, ptr %16, align 8, !dbg !669
  %17 = getelementptr inbounds { ptr, i64 }, ptr %_29, i32 0, i32 1, !dbg !669
  store i64 %15, ptr %17, align 8, !dbg !669
  %18 = getelementptr inbounds { ptr, i64 }, ptr %_29, i32 0, i32 0, !dbg !669
  %_15.0 = load ptr, ptr %18, align 8, !dbg !669, !noundef !31
  %19 = getelementptr inbounds { ptr, i64 }, ptr %_29, i32 0, i32 1, !dbg !669
  %_15.1 = load i64, ptr %19, align 8, !dbg !669, !noundef !31
  %20 = insertvalue { ptr, i64 } poison, ptr %_15.0, 0, !dbg !670
  %21 = insertvalue { ptr, i64 } %20, i64 %_15.1, 1, !dbg !670
  ret { ptr, i64 } %21, !dbg !670

bb3:                                              ; preds = %bb2
  call void @_ZN4core5slice5index24slice_end_index_len_fail17h63e54c65524702d3E(i64 %self.1, i64 %slice.1, ptr align 8 %0) #7, !dbg !671
  unreachable, !dbg !671
}

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice5index22slice_index_order_fail17h2045503bd7776290E(i64, i64, ptr align 8) unnamed_addr #3

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice5index24slice_end_index_len_fail17h63e54c65524702d3E(i64, i64, ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_3() unnamed_addr #0 !dbg !672 {
start:
  %self.dbg.spill.i1 = alloca { ptr, i64 }, align 8
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %bin_len.dbg.spill = alloca i64, align 8
  %hex_maxlen.dbg.spill = alloca i64, align 8
  %expected_hex = alloca [9 x i8], align 1
  %bin = alloca [4 x i8], align 1
  %hex = alloca [10 x i8], align 1
    #dbg_declare(ptr %hex, !674, !DIExpression(), !690)
    #dbg_declare(ptr %bin, !679, !DIExpression(), !691)
    #dbg_declare(ptr %expected_hex, !688, !DIExpression(), !692)
  %0 = getelementptr inbounds [10 x i8], ptr %hex, i64 0, i64 0, !dbg !693
  store i8 0, ptr %0, align 1, !dbg !693
  %1 = getelementptr inbounds [10 x i8], ptr %hex, i64 0, i64 1, !dbg !693
  store i8 0, ptr %1, align 1, !dbg !693
  %2 = getelementptr inbounds [10 x i8], ptr %hex, i64 0, i64 2, !dbg !693
  store i8 0, ptr %2, align 1, !dbg !693
  %3 = getelementptr inbounds [10 x i8], ptr %hex, i64 0, i64 3, !dbg !693
  store i8 0, ptr %3, align 1, !dbg !693
  %4 = getelementptr inbounds [10 x i8], ptr %hex, i64 0, i64 4, !dbg !693
  store i8 0, ptr %4, align 1, !dbg !693
  %5 = getelementptr inbounds [10 x i8], ptr %hex, i64 0, i64 5, !dbg !693
  store i8 0, ptr %5, align 1, !dbg !693
  %6 = getelementptr inbounds [10 x i8], ptr %hex, i64 0, i64 6, !dbg !693
  store i8 0, ptr %6, align 1, !dbg !693
  %7 = getelementptr inbounds [10 x i8], ptr %hex, i64 0, i64 7, !dbg !693
  store i8 0, ptr %7, align 1, !dbg !693
  %8 = getelementptr inbounds [10 x i8], ptr %hex, i64 0, i64 8, !dbg !693
  store i8 0, ptr %8, align 1, !dbg !693
  %9 = getelementptr inbounds [10 x i8], ptr %hex, i64 0, i64 9, !dbg !693
  store i8 0, ptr %9, align 1, !dbg !693
  %10 = getelementptr inbounds [4 x i8], ptr %bin, i64 0, i64 0, !dbg !694
  store i8 118, ptr %10, align 1, !dbg !694
  %11 = getelementptr inbounds [4 x i8], ptr %bin, i64 0, i64 1, !dbg !694
  store i8 0, ptr %11, align 1, !dbg !694
  %12 = getelementptr inbounds [4 x i8], ptr %bin, i64 0, i64 2, !dbg !694
  store i8 -56, ptr %12, align 1, !dbg !694
  %13 = getelementptr inbounds [4 x i8], ptr %bin, i64 0, i64 3, !dbg !694
  store i8 1, ptr %13, align 1, !dbg !694
  store i64 10, ptr %hex_maxlen.dbg.spill, align 8, !dbg !695
    #dbg_declare(ptr %hex_maxlen.dbg.spill, !684, !DIExpression(), !696)
  store i64 4, ptr %bin_len.dbg.spill, align 8, !dbg !697
    #dbg_declare(ptr %bin_len.dbg.spill, !686, !DIExpression(), !698)
  store ptr %hex, ptr %self.dbg.spill.i, align 8
  %14 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 10, ptr %14, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !48, !DIExpression(), !699)
  store ptr %bin, ptr %self.dbg.spill.i1, align 8
  %15 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i1, i32 0, i32 1
  store i64 4, ptr %15, align 8
    #dbg_declare(ptr %self.dbg.spill.i1, !338, !DIExpression(), !701)
  %_5 = call ptr @bin2hex(ptr %hex, i64 10, ptr %bin, i64 4), !dbg !703
  %16 = getelementptr inbounds [9 x i8], ptr %expected_hex, i64 0, i64 0, !dbg !704
  store i8 55, ptr %16, align 1, !dbg !704
  %17 = getelementptr inbounds [9 x i8], ptr %expected_hex, i64 0, i64 1, !dbg !704
  store i8 54, ptr %17, align 1, !dbg !704
  %18 = getelementptr inbounds [9 x i8], ptr %expected_hex, i64 0, i64 2, !dbg !704
  store i8 48, ptr %18, align 1, !dbg !704
  %19 = getelementptr inbounds [9 x i8], ptr %expected_hex, i64 0, i64 3, !dbg !704
  store i8 48, ptr %19, align 1, !dbg !704
  %20 = getelementptr inbounds [9 x i8], ptr %expected_hex, i64 0, i64 4, !dbg !704
  store i8 99, ptr %20, align 1, !dbg !704
  %21 = getelementptr inbounds [9 x i8], ptr %expected_hex, i64 0, i64 5, !dbg !704
  store i8 56, ptr %21, align 1, !dbg !704
  %22 = getelementptr inbounds [9 x i8], ptr %expected_hex, i64 0, i64 6, !dbg !704
  store i8 48, ptr %22, align 1, !dbg !704
  %23 = getelementptr inbounds [9 x i8], ptr %expected_hex, i64 0, i64 7, !dbg !704
  store i8 49, ptr %23, align 1, !dbg !704
  %24 = getelementptr inbounds [9 x i8], ptr %expected_hex, i64 0, i64 8, !dbg !704
  store i8 0, ptr %24, align 1, !dbg !704
  %25 = call { ptr, i64 } @"_ZN4core5array85_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$5index17hc18a83fc52e57499E"(ptr align 1 %hex, i64 9, ptr align 8 @alloc_bf509f6f8336a6f855658c67fc9fe7b1), !dbg !705
  %_14.0 = extractvalue { ptr, i64 } %25, 0, !dbg !705
  %_14.1 = extractvalue { ptr, i64 } %25, 1, !dbg !705
  %26 = call zeroext i1 @"_ZN4core5array8equality92_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$A$u3b$$u20$N$u5d$$GT$$u20$for$u20$$u5b$B$u5d$$GT$2eq17h4f0dda4e9fdf6fbeE"(ptr align 1 %_14.0, i64 %_14.1, ptr align 1 %expected_hex), !dbg !705
  ret i1 %26, !dbg !706
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @"_ZN4core5array85_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$5index17hc18a83fc52e57499E"(ptr align 1 %self, i64 %index, ptr align 8 %0) unnamed_addr #1 !dbg !707 {
start:
  %index.dbg.spill = alloca i64, align 8
  %self.dbg.spill = alloca ptr, align 8
  store ptr %self, ptr %self.dbg.spill, align 8
    #dbg_declare(ptr %self.dbg.spill, !712, !DIExpression(), !714)
  store i64 %index, ptr %index.dbg.spill, align 8
    #dbg_declare(ptr %index.dbg.spill, !713, !DIExpression(), !715)
  %1 = call { ptr, i64 } @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17hef2c5ce49f314e95E"(ptr align 1 %self, i64 10, i64 %index, ptr align 8 %0), !dbg !716
  %2 = extractvalue { ptr, i64 } %1, 0, !dbg !716
  %3 = extractvalue { ptr, i64 } %1, 1, !dbg !716
  %4 = insertvalue { ptr, i64 } poison, ptr %2, 0, !dbg !717
  %5 = insertvalue { ptr, i64 } %4, i64 %3, 1, !dbg !717
  ret { ptr, i64 } %5, !dbg !717
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core5array8equality92_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$A$u3b$$u20$N$u5d$$GT$$u20$for$u20$$u5b$B$u5d$$GT$2eq17h4f0dda4e9fdf6fbeE"(ptr align 1 %self.0, i64 %self.1, ptr align 1 %other) unnamed_addr #1 !dbg !718 {
start:
  %b.dbg.spill = alloca ptr, align 8
  %other.dbg.spill = alloca ptr, align 8
  %self.dbg.spill = alloca { ptr, i64 }, align 8
  %b = alloca ptr, align 8
  %0 = alloca i8, align 1
  %1 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill, i32 0, i32 0
  store ptr %self.0, ptr %1, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill, i32 0, i32 1
  store i64 %self.1, ptr %2, align 8
    #dbg_declare(ptr %self.dbg.spill, !722, !DIExpression(), !743)
    #dbg_declare(ptr %self.dbg.spill, !744, !DIExpression(), !751)
  store ptr %other, ptr %other.dbg.spill, align 8
    #dbg_declare(ptr %other.dbg.spill, !723, !DIExpression(), !753)
    #dbg_declare(ptr %other.dbg.spill, !754, !DIExpression(), !760)
    #dbg_declare(ptr %b, !724, !DIExpression(), !762)
  %3 = call align 1 ptr @"_ZN4core5array102_$LT$impl$u20$core..convert..TryFrom$LT$$RF$$u5b$T$u5d$$GT$$u20$for$u20$$RF$$u5b$T$u3b$$u20$N$u5d$$GT$8try_from17h1518fe4d4caa8597E"(ptr align 1 %self.0, i64 %self.1), !dbg !763
  store ptr %3, ptr %b, align 8, !dbg !763
  %4 = load ptr, ptr %b, align 8, !dbg !764, !noundef !31
  %5 = ptrtoint ptr %4 to i64, !dbg !764
  %6 = icmp eq i64 %5, 0, !dbg !764
  %_4 = select i1 %6, i64 1, i64 0, !dbg !764
  %7 = icmp eq i64 %_4, 0, !dbg !765
  br i1 %7, label %bb3, label %bb1, !dbg !765

bb3:                                              ; preds = %start
  %b1 = load ptr, ptr %b, align 8, !dbg !766, !nonnull !31, !align !513, !noundef !31
  store ptr %b1, ptr %b.dbg.spill, align 8, !dbg !766
    #dbg_declare(ptr %b.dbg.spill, !741, !DIExpression(), !767)
    #dbg_declare(ptr %b.dbg.spill, !759, !DIExpression(), !768)
  %8 = call zeroext i1 @"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h1377638be9c59522E"(ptr align 1 %b1, ptr align 1 %other), !dbg !769
  %9 = zext i1 %8 to i8, !dbg !769
  store i8 %9, ptr %0, align 1, !dbg !769
  br label %bb4, !dbg !769

bb1:                                              ; preds = %start
  store i8 0, ptr %0, align 1, !dbg !770
  br label %bb4, !dbg !770

bb2:                                              ; No predecessors!
  unreachable, !dbg !764

bb4:                                              ; preds = %bb1, %bb3
  %10 = load i8, ptr %0, align 1, !dbg !771, !range !215, !noundef !31
  %11 = trunc i8 %10 to i1, !dbg !771
  ret i1 %11, !dbg !771
}

; Function Attrs: nonlazybind uwtable
define internal align 1 ptr @"_ZN4core5array102_$LT$impl$u20$core..convert..TryFrom$LT$$RF$$u5b$T$u5d$$GT$$u20$for$u20$$RF$$u5b$T$u3b$$u20$N$u5d$$GT$8try_from17h1518fe4d4caa8597E"(ptr align 1 %slice.0, i64 %slice.1) unnamed_addr #0 !dbg !772 {
start:
  %ptr.dbg.spill = alloca ptr, align 8
  %slice.dbg.spill = alloca { ptr, i64 }, align 8
  %0 = alloca ptr, align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %slice.dbg.spill, i32 0, i32 0
  store ptr %slice.0, ptr %1, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %slice.dbg.spill, i32 0, i32 1
  store i64 %slice.1, ptr %2, align 8
    #dbg_declare(ptr %slice.dbg.spill, !774, !DIExpression(), !778)
    #dbg_declare(ptr %slice.dbg.spill, !779, !DIExpression(), !782)
  %_2 = icmp eq i64 %slice.1, 9, !dbg !784
  br i1 %_2, label %bb1, label %bb2, !dbg !784

bb2:                                              ; preds = %start
  store ptr null, ptr %0, align 8, !dbg !785
  br label %bb3, !dbg !786

bb1:                                              ; preds = %start
  store ptr %slice.0, ptr %ptr.dbg.spill, align 8, !dbg !787
    #dbg_declare(ptr %ptr.dbg.spill, !775, !DIExpression(), !788)
  store ptr %slice.0, ptr %0, align 8, !dbg !789
  br label %bb3, !dbg !786

bb3:                                              ; preds = %bb1, %bb2
  %3 = load ptr, ptr %0, align 8, !dbg !790, !align !513, !noundef !31
  ret ptr %3, !dbg !790
}

; Function Attrs: nonlazybind uwtable
define internal zeroext i1 @"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h1377638be9c59522E"(ptr align 1 %a, ptr align 1 %b) unnamed_addr #0 !dbg !791 {
start:
  %0 = alloca i8, align 1
  %b.dbg.spill = alloca ptr, align 8
  %a.dbg.spill = alloca ptr, align 8
  store ptr %a, ptr %a.dbg.spill, align 8
    #dbg_declare(ptr %a.dbg.spill, !793, !DIExpression(), !795)
  store ptr %b, ptr %b.dbg.spill, align 8
    #dbg_declare(ptr %b.dbg.spill, !794, !DIExpression(), !796)
  %1 = load i72, ptr %a, align 1, !dbg !797
  %2 = load i72, ptr %b, align 1, !dbg !797
  %3 = icmp eq i72 %1, %2, !dbg !797
  %4 = zext i1 %3 to i8, !dbg !797
  store i8 %4, ptr %0, align 1, !dbg !797
  %5 = load i8, ptr %0, align 1, !dbg !797, !range !215, !noundef !31
  %6 = trunc i8 %5 to i1, !dbg !797
  ret i1 %6, !dbg !798
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_4() unnamed_addr #0 !dbg !799 {
start:
  %self.dbg.spill.i1 = alloca { ptr, i64 }, align 8
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %bin_len.dbg.spill = alloca i64, align 8
  %hex_maxlen.dbg.spill = alloca i64, align 8
  %expected_hex = alloca [25 x i8], align 1
  %bin = alloca [12 x i8], align 1
  %hex = alloca [26 x i8], align 1
    #dbg_declare(ptr %hex, !801, !DIExpression(), !820)
    #dbg_declare(ptr %bin, !806, !DIExpression(), !821)
    #dbg_declare(ptr %expected_hex, !815, !DIExpression(), !822)
  %0 = getelementptr inbounds [26 x i8], ptr %hex, i64 0, i64 0, !dbg !823
  call void @llvm.memset.p0.i64(ptr align 1 %0, i8 0, i64 26, i1 false), !dbg !823
  %1 = getelementptr inbounds [12 x i8], ptr %bin, i64 0, i64 0, !dbg !824
  store i8 60, ptr %1, align 1, !dbg !824
  %2 = getelementptr inbounds [12 x i8], ptr %bin, i64 0, i64 1, !dbg !824
  store i8 61, ptr %2, align 1, !dbg !824
  %3 = getelementptr inbounds [12 x i8], ptr %bin, i64 0, i64 2, !dbg !824
  store i8 62, ptr %3, align 1, !dbg !824
  %4 = getelementptr inbounds [12 x i8], ptr %bin, i64 0, i64 3, !dbg !824
  store i8 63, ptr %4, align 1, !dbg !824
  %5 = getelementptr inbounds [12 x i8], ptr %bin, i64 0, i64 4, !dbg !824
  store i8 64, ptr %5, align 1, !dbg !824
  %6 = getelementptr inbounds [12 x i8], ptr %bin, i64 0, i64 5, !dbg !824
  store i8 65, ptr %6, align 1, !dbg !824
  %7 = getelementptr inbounds [12 x i8], ptr %bin, i64 0, i64 6, !dbg !824
  store i8 66, ptr %7, align 1, !dbg !824
  %8 = getelementptr inbounds [12 x i8], ptr %bin, i64 0, i64 7, !dbg !824
  store i8 67, ptr %8, align 1, !dbg !824
  %9 = getelementptr inbounds [12 x i8], ptr %bin, i64 0, i64 8, !dbg !824
  store i8 68, ptr %9, align 1, !dbg !824
  %10 = getelementptr inbounds [12 x i8], ptr %bin, i64 0, i64 9, !dbg !824
  store i8 69, ptr %10, align 1, !dbg !824
  %11 = getelementptr inbounds [12 x i8], ptr %bin, i64 0, i64 10, !dbg !824
  store i8 70, ptr %11, align 1, !dbg !824
  %12 = getelementptr inbounds [12 x i8], ptr %bin, i64 0, i64 11, !dbg !824
  store i8 71, ptr %12, align 1, !dbg !824
  store i64 26, ptr %hex_maxlen.dbg.spill, align 8, !dbg !825
    #dbg_declare(ptr %hex_maxlen.dbg.spill, !811, !DIExpression(), !826)
  store i64 12, ptr %bin_len.dbg.spill, align 8, !dbg !827
    #dbg_declare(ptr %bin_len.dbg.spill, !813, !DIExpression(), !828)
  store ptr %hex, ptr %self.dbg.spill.i, align 8
  %13 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 26, ptr %13, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !48, !DIExpression(), !829)
  store ptr %bin, ptr %self.dbg.spill.i1, align 8
  %14 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i1, i32 0, i32 1
  store i64 12, ptr %14, align 8
    #dbg_declare(ptr %self.dbg.spill.i1, !338, !DIExpression(), !831)
  %_5 = call ptr @bin2hex(ptr %hex, i64 26, ptr %bin, i64 12), !dbg !833
  %15 = getelementptr inbounds [25 x i8], ptr %expected_hex, i64 0, i64 0, !dbg !834
  store i8 51, ptr %15, align 1, !dbg !834
  %16 = getelementptr inbounds [25 x i8], ptr %expected_hex, i64 0, i64 1, !dbg !834
  store i8 99, ptr %16, align 1, !dbg !834
  %17 = getelementptr inbounds [25 x i8], ptr %expected_hex, i64 0, i64 2, !dbg !834
  store i8 51, ptr %17, align 1, !dbg !834
  %18 = getelementptr inbounds [25 x i8], ptr %expected_hex, i64 0, i64 3, !dbg !834
  store i8 100, ptr %18, align 1, !dbg !834
  %19 = getelementptr inbounds [25 x i8], ptr %expected_hex, i64 0, i64 4, !dbg !834
  store i8 51, ptr %19, align 1, !dbg !834
  %20 = getelementptr inbounds [25 x i8], ptr %expected_hex, i64 0, i64 5, !dbg !834
  store i8 101, ptr %20, align 1, !dbg !834
  %21 = getelementptr inbounds [25 x i8], ptr %expected_hex, i64 0, i64 6, !dbg !834
  store i8 51, ptr %21, align 1, !dbg !834
  %22 = getelementptr inbounds [25 x i8], ptr %expected_hex, i64 0, i64 7, !dbg !834
  store i8 102, ptr %22, align 1, !dbg !834
  %23 = getelementptr inbounds [25 x i8], ptr %expected_hex, i64 0, i64 8, !dbg !834
  store i8 52, ptr %23, align 1, !dbg !834
  %24 = getelementptr inbounds [25 x i8], ptr %expected_hex, i64 0, i64 9, !dbg !834
  store i8 48, ptr %24, align 1, !dbg !834
  %25 = getelementptr inbounds [25 x i8], ptr %expected_hex, i64 0, i64 10, !dbg !834
  store i8 52, ptr %25, align 1, !dbg !834
  %26 = getelementptr inbounds [25 x i8], ptr %expected_hex, i64 0, i64 11, !dbg !834
  store i8 49, ptr %26, align 1, !dbg !834
  %27 = getelementptr inbounds [25 x i8], ptr %expected_hex, i64 0, i64 12, !dbg !834
  store i8 52, ptr %27, align 1, !dbg !834
  %28 = getelementptr inbounds [25 x i8], ptr %expected_hex, i64 0, i64 13, !dbg !834
  store i8 50, ptr %28, align 1, !dbg !834
  %29 = getelementptr inbounds [25 x i8], ptr %expected_hex, i64 0, i64 14, !dbg !834
  store i8 52, ptr %29, align 1, !dbg !834
  %30 = getelementptr inbounds [25 x i8], ptr %expected_hex, i64 0, i64 15, !dbg !834
  store i8 51, ptr %30, align 1, !dbg !834
  %31 = getelementptr inbounds [25 x i8], ptr %expected_hex, i64 0, i64 16, !dbg !834
  store i8 52, ptr %31, align 1, !dbg !834
  %32 = getelementptr inbounds [25 x i8], ptr %expected_hex, i64 0, i64 17, !dbg !834
  store i8 52, ptr %32, align 1, !dbg !834
  %33 = getelementptr inbounds [25 x i8], ptr %expected_hex, i64 0, i64 18, !dbg !834
  store i8 52, ptr %33, align 1, !dbg !834
  %34 = getelementptr inbounds [25 x i8], ptr %expected_hex, i64 0, i64 19, !dbg !834
  store i8 53, ptr %34, align 1, !dbg !834
  %35 = getelementptr inbounds [25 x i8], ptr %expected_hex, i64 0, i64 20, !dbg !834
  store i8 52, ptr %35, align 1, !dbg !834
  %36 = getelementptr inbounds [25 x i8], ptr %expected_hex, i64 0, i64 21, !dbg !834
  store i8 54, ptr %36, align 1, !dbg !834
  %37 = getelementptr inbounds [25 x i8], ptr %expected_hex, i64 0, i64 22, !dbg !834
  store i8 52, ptr %37, align 1, !dbg !834
  %38 = getelementptr inbounds [25 x i8], ptr %expected_hex, i64 0, i64 23, !dbg !834
  store i8 55, ptr %38, align 1, !dbg !834
  %39 = getelementptr inbounds [25 x i8], ptr %expected_hex, i64 0, i64 24, !dbg !834
  store i8 0, ptr %39, align 1, !dbg !834
  %40 = call { ptr, i64 } @"_ZN4core5array85_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$5index17h2b3a130d449703b1E"(ptr align 1 %hex, i64 25, ptr align 8 @alloc_dc0f9eb7ba01a59368e2fb3a79ea27ee), !dbg !835
  %_14.0 = extractvalue { ptr, i64 } %40, 0, !dbg !835
  %_14.1 = extractvalue { ptr, i64 } %40, 1, !dbg !835
  %41 = call zeroext i1 @"_ZN4core5array8equality92_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$A$u3b$$u20$N$u5d$$GT$$u20$for$u20$$u5b$B$u5d$$GT$2eq17h08dc17811ba7d026E"(ptr align 1 %_14.0, i64 %_14.1, ptr align 1 %expected_hex), !dbg !835
  ret i1 %41, !dbg !836
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @"_ZN4core5array85_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$5index17h2b3a130d449703b1E"(ptr align 1 %self, i64 %index, ptr align 8 %0) unnamed_addr #1 !dbg !837 {
start:
  %index.dbg.spill = alloca i64, align 8
  %self.dbg.spill = alloca ptr, align 8
  store ptr %self, ptr %self.dbg.spill, align 8
    #dbg_declare(ptr %self.dbg.spill, !842, !DIExpression(), !844)
  store i64 %index, ptr %index.dbg.spill, align 8
    #dbg_declare(ptr %index.dbg.spill, !843, !DIExpression(), !845)
  %1 = call { ptr, i64 } @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17hef2c5ce49f314e95E"(ptr align 1 %self, i64 26, i64 %index, ptr align 8 %0), !dbg !846
  %2 = extractvalue { ptr, i64 } %1, 0, !dbg !846
  %3 = extractvalue { ptr, i64 } %1, 1, !dbg !846
  %4 = insertvalue { ptr, i64 } poison, ptr %2, 0, !dbg !847
  %5 = insertvalue { ptr, i64 } %4, i64 %3, 1, !dbg !847
  ret { ptr, i64 } %5, !dbg !847
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core5array8equality92_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$A$u3b$$u20$N$u5d$$GT$$u20$for$u20$$u5b$B$u5d$$GT$2eq17h08dc17811ba7d026E"(ptr align 1 %self.0, i64 %self.1, ptr align 1 %other) unnamed_addr #1 !dbg !848 {
start:
  %b.dbg.spill = alloca ptr, align 8
  %other.dbg.spill = alloca ptr, align 8
  %self.dbg.spill = alloca { ptr, i64 }, align 8
  %b = alloca ptr, align 8
  %0 = alloca i8, align 1
  %1 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill, i32 0, i32 0
  store ptr %self.0, ptr %1, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill, i32 0, i32 1
  store i64 %self.1, ptr %2, align 8
    #dbg_declare(ptr %self.dbg.spill, !853, !DIExpression(), !874)
    #dbg_declare(ptr %self.dbg.spill, !875, !DIExpression(), !882)
  store ptr %other, ptr %other.dbg.spill, align 8
    #dbg_declare(ptr %other.dbg.spill, !854, !DIExpression(), !884)
    #dbg_declare(ptr %other.dbg.spill, !885, !DIExpression(), !891)
    #dbg_declare(ptr %b, !855, !DIExpression(), !893)
  %3 = call align 1 ptr @"_ZN4core5array102_$LT$impl$u20$core..convert..TryFrom$LT$$RF$$u5b$T$u5d$$GT$$u20$for$u20$$RF$$u5b$T$u3b$$u20$N$u5d$$GT$8try_from17ha3b40aa3b1a9259fE"(ptr align 1 %self.0, i64 %self.1), !dbg !894
  store ptr %3, ptr %b, align 8, !dbg !894
  %4 = load ptr, ptr %b, align 8, !dbg !895, !noundef !31
  %5 = ptrtoint ptr %4 to i64, !dbg !895
  %6 = icmp eq i64 %5, 0, !dbg !895
  %_4 = select i1 %6, i64 1, i64 0, !dbg !895
  %7 = icmp eq i64 %_4, 0, !dbg !896
  br i1 %7, label %bb3, label %bb1, !dbg !896

bb3:                                              ; preds = %start
  %b1 = load ptr, ptr %b, align 8, !dbg !897, !nonnull !31, !align !513, !noundef !31
  store ptr %b1, ptr %b.dbg.spill, align 8, !dbg !897
    #dbg_declare(ptr %b.dbg.spill, !872, !DIExpression(), !898)
    #dbg_declare(ptr %b.dbg.spill, !890, !DIExpression(), !899)
  %8 = call zeroext i1 @"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17hbb19462c0f9dbab8E"(ptr align 1 %b1, ptr align 1 %other), !dbg !900
  %9 = zext i1 %8 to i8, !dbg !900
  store i8 %9, ptr %0, align 1, !dbg !900
  br label %bb4, !dbg !900

bb1:                                              ; preds = %start
  store i8 0, ptr %0, align 1, !dbg !901
  br label %bb4, !dbg !901

bb2:                                              ; No predecessors!
  unreachable, !dbg !895

bb4:                                              ; preds = %bb1, %bb3
  %10 = load i8, ptr %0, align 1, !dbg !902, !range !215, !noundef !31
  %11 = trunc i8 %10 to i1, !dbg !902
  ret i1 %11, !dbg !902
}

; Function Attrs: nonlazybind uwtable
define internal align 1 ptr @"_ZN4core5array102_$LT$impl$u20$core..convert..TryFrom$LT$$RF$$u5b$T$u5d$$GT$$u20$for$u20$$RF$$u5b$T$u3b$$u20$N$u5d$$GT$8try_from17ha3b40aa3b1a9259fE"(ptr align 1 %slice.0, i64 %slice.1) unnamed_addr #0 !dbg !903 {
start:
  %ptr.dbg.spill = alloca ptr, align 8
  %slice.dbg.spill = alloca { ptr, i64 }, align 8
  %0 = alloca ptr, align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %slice.dbg.spill, i32 0, i32 0
  store ptr %slice.0, ptr %1, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %slice.dbg.spill, i32 0, i32 1
  store i64 %slice.1, ptr %2, align 8
    #dbg_declare(ptr %slice.dbg.spill, !905, !DIExpression(), !909)
    #dbg_declare(ptr %slice.dbg.spill, !910, !DIExpression(), !913)
  %_2 = icmp eq i64 %slice.1, 25, !dbg !915
  br i1 %_2, label %bb1, label %bb2, !dbg !915

bb2:                                              ; preds = %start
  store ptr null, ptr %0, align 8, !dbg !916
  br label %bb3, !dbg !917

bb1:                                              ; preds = %start
  store ptr %slice.0, ptr %ptr.dbg.spill, align 8, !dbg !918
    #dbg_declare(ptr %ptr.dbg.spill, !906, !DIExpression(), !919)
  store ptr %slice.0, ptr %0, align 8, !dbg !920
  br label %bb3, !dbg !917

bb3:                                              ; preds = %bb1, %bb2
  %3 = load ptr, ptr %0, align 8, !dbg !921, !align !513, !noundef !31
  ret ptr %3, !dbg !921
}

; Function Attrs: nonlazybind uwtable
define internal zeroext i1 @"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17hbb19462c0f9dbab8E"(ptr align 1 %a, ptr align 1 %b) unnamed_addr #0 !dbg !922 {
start:
  %0 = alloca i8, align 1
  %b.dbg.spill = alloca ptr, align 8
  %a.dbg.spill = alloca ptr, align 8
  store ptr %a, ptr %a.dbg.spill, align 8
    #dbg_declare(ptr %a.dbg.spill, !924, !DIExpression(), !926)
  store ptr %b, ptr %b.dbg.spill, align 8
    #dbg_declare(ptr %b.dbg.spill, !925, !DIExpression(), !927)
  %1 = call i32 @memcmp(ptr %a, ptr %b, i64 25), !dbg !928
  %2 = icmp eq i32 %1, 0, !dbg !928
  %3 = zext i1 %2 to i8, !dbg !928
  store i8 %3, ptr %0, align 1, !dbg !928
  %4 = load i8, ptr %0, align 1, !dbg !928, !range !215, !noundef !31
  %5 = trunc i8 %4 to i1, !dbg !928
  ret i1 %5, !dbg !929
}

; Function Attrs: nonlazybind
declare i32 @memcmp(ptr, ptr, i64) #6

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_5() unnamed_addr #0 !dbg !930 {
start:
  %self.dbg.spill.i1 = alloca { ptr, i64 }, align 8
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %bin_len.dbg.spill = alloca i64, align 8
  %hex_maxlen.dbg.spill = alloca i64, align 8
  %expected_hex = alloca [7 x i8], align 1
  %bin = alloca [3 x i8], align 1
  %hex = alloca [8 x i8], align 1
    #dbg_declare(ptr %hex, !932, !DIExpression(), !945)
    #dbg_declare(ptr %bin, !934, !DIExpression(), !946)
    #dbg_declare(ptr %expected_hex, !940, !DIExpression(), !947)
  %0 = getelementptr inbounds [8 x i8], ptr %hex, i64 0, i64 0, !dbg !948
  store i8 0, ptr %0, align 1, !dbg !948
  %1 = getelementptr inbounds [8 x i8], ptr %hex, i64 0, i64 1, !dbg !948
  store i8 0, ptr %1, align 1, !dbg !948
  %2 = getelementptr inbounds [8 x i8], ptr %hex, i64 0, i64 2, !dbg !948
  store i8 0, ptr %2, align 1, !dbg !948
  %3 = getelementptr inbounds [8 x i8], ptr %hex, i64 0, i64 3, !dbg !948
  store i8 0, ptr %3, align 1, !dbg !948
  %4 = getelementptr inbounds [8 x i8], ptr %hex, i64 0, i64 4, !dbg !948
  store i8 0, ptr %4, align 1, !dbg !948
  %5 = getelementptr inbounds [8 x i8], ptr %hex, i64 0, i64 5, !dbg !948
  store i8 0, ptr %5, align 1, !dbg !948
  %6 = getelementptr inbounds [8 x i8], ptr %hex, i64 0, i64 6, !dbg !948
  store i8 0, ptr %6, align 1, !dbg !948
  %7 = getelementptr inbounds [8 x i8], ptr %hex, i64 0, i64 7, !dbg !948
  store i8 0, ptr %7, align 1, !dbg !948
  %8 = getelementptr inbounds [3 x i8], ptr %bin, i64 0, i64 0, !dbg !949
  store i8 0, ptr %8, align 1, !dbg !949
  %9 = getelementptr inbounds [3 x i8], ptr %bin, i64 0, i64 1, !dbg !949
  store i8 0, ptr %9, align 1, !dbg !949
  %10 = getelementptr inbounds [3 x i8], ptr %bin, i64 0, i64 2, !dbg !949
  store i8 0, ptr %10, align 1, !dbg !949
  store i64 8, ptr %hex_maxlen.dbg.spill, align 8, !dbg !950
    #dbg_declare(ptr %hex_maxlen.dbg.spill, !936, !DIExpression(), !951)
  store i64 3, ptr %bin_len.dbg.spill, align 8, !dbg !952
    #dbg_declare(ptr %bin_len.dbg.spill, !938, !DIExpression(), !953)
  store ptr %hex, ptr %self.dbg.spill.i, align 8
  %11 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 8, ptr %11, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !48, !DIExpression(), !954)
  store ptr %bin, ptr %self.dbg.spill.i1, align 8
  %12 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i1, i32 0, i32 1
  store i64 3, ptr %12, align 8
    #dbg_declare(ptr %self.dbg.spill.i1, !338, !DIExpression(), !956)
  %_5 = call ptr @bin2hex(ptr %hex, i64 8, ptr %bin, i64 3), !dbg !958
  %13 = getelementptr inbounds [7 x i8], ptr %expected_hex, i64 0, i64 0, !dbg !959
  store i8 48, ptr %13, align 1, !dbg !959
  %14 = getelementptr inbounds [7 x i8], ptr %expected_hex, i64 0, i64 1, !dbg !959
  store i8 48, ptr %14, align 1, !dbg !959
  %15 = getelementptr inbounds [7 x i8], ptr %expected_hex, i64 0, i64 2, !dbg !959
  store i8 48, ptr %15, align 1, !dbg !959
  %16 = getelementptr inbounds [7 x i8], ptr %expected_hex, i64 0, i64 3, !dbg !959
  store i8 48, ptr %16, align 1, !dbg !959
  %17 = getelementptr inbounds [7 x i8], ptr %expected_hex, i64 0, i64 4, !dbg !959
  store i8 48, ptr %17, align 1, !dbg !959
  %18 = getelementptr inbounds [7 x i8], ptr %expected_hex, i64 0, i64 5, !dbg !959
  store i8 48, ptr %18, align 1, !dbg !959
  %19 = getelementptr inbounds [7 x i8], ptr %expected_hex, i64 0, i64 6, !dbg !959
  store i8 0, ptr %19, align 1, !dbg !959
  %20 = call { ptr, i64 } @"_ZN4core5array85_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$5index17h03facd33b536693cE"(ptr align 1 %hex, i64 7, ptr align 8 @alloc_7cd83522dbc9313c7e61b8d33994fda1), !dbg !960
  %_14.0 = extractvalue { ptr, i64 } %20, 0, !dbg !960
  %_14.1 = extractvalue { ptr, i64 } %20, 1, !dbg !960
  %21 = call zeroext i1 @"_ZN4core5array8equality92_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$A$u3b$$u20$N$u5d$$GT$$u20$for$u20$$u5b$B$u5d$$GT$2eq17hffd0bbbc4e4061dfE"(ptr align 1 %_14.0, i64 %_14.1, ptr align 1 %expected_hex), !dbg !960
  ret i1 %21, !dbg !961
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @"_ZN4core5array85_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$5index17h03facd33b536693cE"(ptr align 1 %self, i64 %index, ptr align 8 %0) unnamed_addr #1 !dbg !962 {
start:
  %index.dbg.spill = alloca i64, align 8
  %self.dbg.spill = alloca ptr, align 8
  store ptr %self, ptr %self.dbg.spill, align 8
    #dbg_declare(ptr %self.dbg.spill, !966, !DIExpression(), !968)
  store i64 %index, ptr %index.dbg.spill, align 8
    #dbg_declare(ptr %index.dbg.spill, !967, !DIExpression(), !969)
  %1 = call { ptr, i64 } @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17hef2c5ce49f314e95E"(ptr align 1 %self, i64 8, i64 %index, ptr align 8 %0), !dbg !970
  %2 = extractvalue { ptr, i64 } %1, 0, !dbg !970
  %3 = extractvalue { ptr, i64 } %1, 1, !dbg !970
  %4 = insertvalue { ptr, i64 } poison, ptr %2, 0, !dbg !971
  %5 = insertvalue { ptr, i64 } %4, i64 %3, 1, !dbg !971
  ret { ptr, i64 } %5, !dbg !971
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core5array8equality92_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$A$u3b$$u20$N$u5d$$GT$$u20$for$u20$$u5b$B$u5d$$GT$2eq17hffd0bbbc4e4061dfE"(ptr align 1 %self.0, i64 %self.1, ptr align 1 %other) unnamed_addr #1 !dbg !972 {
start:
  %b.dbg.spill = alloca ptr, align 8
  %other.dbg.spill = alloca ptr, align 8
  %self.dbg.spill = alloca { ptr, i64 }, align 8
  %b = alloca ptr, align 8
  %0 = alloca i8, align 1
  %1 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill, i32 0, i32 0
  store ptr %self.0, ptr %1, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill, i32 0, i32 1
  store i64 %self.1, ptr %2, align 8
    #dbg_declare(ptr %self.dbg.spill, !977, !DIExpression(), !998)
    #dbg_declare(ptr %self.dbg.spill, !999, !DIExpression(), !1006)
  store ptr %other, ptr %other.dbg.spill, align 8
    #dbg_declare(ptr %other.dbg.spill, !978, !DIExpression(), !1008)
    #dbg_declare(ptr %other.dbg.spill, !1009, !DIExpression(), !1015)
    #dbg_declare(ptr %b, !979, !DIExpression(), !1017)
  %3 = call align 1 ptr @"_ZN4core5array102_$LT$impl$u20$core..convert..TryFrom$LT$$RF$$u5b$T$u5d$$GT$$u20$for$u20$$RF$$u5b$T$u3b$$u20$N$u5d$$GT$8try_from17hc01fb3f685ef4b13E"(ptr align 1 %self.0, i64 %self.1), !dbg !1018
  store ptr %3, ptr %b, align 8, !dbg !1018
  %4 = load ptr, ptr %b, align 8, !dbg !1019, !noundef !31
  %5 = ptrtoint ptr %4 to i64, !dbg !1019
  %6 = icmp eq i64 %5, 0, !dbg !1019
  %_4 = select i1 %6, i64 1, i64 0, !dbg !1019
  %7 = icmp eq i64 %_4, 0, !dbg !1020
  br i1 %7, label %bb3, label %bb1, !dbg !1020

bb3:                                              ; preds = %start
  %b1 = load ptr, ptr %b, align 8, !dbg !1021, !nonnull !31, !align !513, !noundef !31
  store ptr %b1, ptr %b.dbg.spill, align 8, !dbg !1021
    #dbg_declare(ptr %b.dbg.spill, !996, !DIExpression(), !1022)
    #dbg_declare(ptr %b.dbg.spill, !1014, !DIExpression(), !1023)
  %8 = call zeroext i1 @"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17he77690f5c474b9ddE"(ptr align 1 %b1, ptr align 1 %other), !dbg !1024
  %9 = zext i1 %8 to i8, !dbg !1024
  store i8 %9, ptr %0, align 1, !dbg !1024
  br label %bb4, !dbg !1024

bb1:                                              ; preds = %start
  store i8 0, ptr %0, align 1, !dbg !1025
  br label %bb4, !dbg !1025

bb2:                                              ; No predecessors!
  unreachable, !dbg !1019

bb4:                                              ; preds = %bb1, %bb3
  %10 = load i8, ptr %0, align 1, !dbg !1026, !range !215, !noundef !31
  %11 = trunc i8 %10 to i1, !dbg !1026
  ret i1 %11, !dbg !1026
}

; Function Attrs: nonlazybind uwtable
define internal align 1 ptr @"_ZN4core5array102_$LT$impl$u20$core..convert..TryFrom$LT$$RF$$u5b$T$u5d$$GT$$u20$for$u20$$RF$$u5b$T$u3b$$u20$N$u5d$$GT$8try_from17hc01fb3f685ef4b13E"(ptr align 1 %slice.0, i64 %slice.1) unnamed_addr #0 !dbg !1027 {
start:
  %ptr.dbg.spill = alloca ptr, align 8
  %slice.dbg.spill = alloca { ptr, i64 }, align 8
  %0 = alloca ptr, align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %slice.dbg.spill, i32 0, i32 0
  store ptr %slice.0, ptr %1, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %slice.dbg.spill, i32 0, i32 1
  store i64 %slice.1, ptr %2, align 8
    #dbg_declare(ptr %slice.dbg.spill, !1029, !DIExpression(), !1033)
    #dbg_declare(ptr %slice.dbg.spill, !1034, !DIExpression(), !1037)
  %_2 = icmp eq i64 %slice.1, 7, !dbg !1039
  br i1 %_2, label %bb1, label %bb2, !dbg !1039

bb2:                                              ; preds = %start
  store ptr null, ptr %0, align 8, !dbg !1040
  br label %bb3, !dbg !1041

bb1:                                              ; preds = %start
  store ptr %slice.0, ptr %ptr.dbg.spill, align 8, !dbg !1042
    #dbg_declare(ptr %ptr.dbg.spill, !1030, !DIExpression(), !1043)
  store ptr %slice.0, ptr %0, align 8, !dbg !1044
  br label %bb3, !dbg !1041

bb3:                                              ; preds = %bb1, %bb2
  %3 = load ptr, ptr %0, align 8, !dbg !1045, !align !513, !noundef !31
  ret ptr %3, !dbg !1045
}

; Function Attrs: nonlazybind uwtable
define internal zeroext i1 @"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17he77690f5c474b9ddE"(ptr align 1 %a, ptr align 1 %b) unnamed_addr #0 !dbg !1046 {
start:
  %0 = alloca i8, align 1
  %b.dbg.spill = alloca ptr, align 8
  %a.dbg.spill = alloca ptr, align 8
  store ptr %a, ptr %a.dbg.spill, align 8
    #dbg_declare(ptr %a.dbg.spill, !1048, !DIExpression(), !1050)
  store ptr %b, ptr %b.dbg.spill, align 8
    #dbg_declare(ptr %b.dbg.spill, !1049, !DIExpression(), !1051)
  %1 = load i56, ptr %a, align 1, !dbg !1052
  %2 = load i56, ptr %b, align 1, !dbg !1052
  %3 = icmp eq i56 %1, %2, !dbg !1052
  %4 = zext i1 %3 to i8, !dbg !1052
  store i8 %4, ptr %0, align 1, !dbg !1052
  %5 = load i8, ptr %0, align 1, !dbg !1052, !range !215, !noundef !31
  %6 = trunc i8 %5 to i1, !dbg !1052
  ret i1 %6, !dbg !1053
}

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #3 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nonlazybind }
attributes #7 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}

!0 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !1, producer: "clang LLVM (rustc version 1.70.0-nightly (84dd17b56 2023-04-14))", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!1 = !DIFile(filename: "lib.rs/@/1rfmw4b2tixaahb0", directory: "/crisp-rust-outputs/B01_organic/bin2hex_lib/translated_rust")
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 2, !"RtLibUseGOT", i32 1}
!4 = !{i32 2, !"Dwarf Version", i32 4}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = distinct !DISubprogram(name: "bin2hex_ffi", linkageName: "bin2hex", scope: !8, file: !7, line: 44, type: !11, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !31, retainedNodes: !18)
!7 = !DIFile(filename: "src/lib.rs", directory: "/crisp-rust-outputs/B01_organic/bin2hex_lib/translated_rust", checksumkind: CSK_MD5, checksum: "9e2d1250a09e4088b25d4f30811e0104")
!8 = !DINamespace(name: "lib", scope: !9)
!9 = !DINamespace(name: "src", scope: !10)
!10 = !DINamespace(name: "bin2hex_lib", scope: null)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !13, !15, !16, !15}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut i8", baseType: !14, size: 64, align: 64, dwarfAddressSpace: 0)
!14 = !DIBasicType(name: "i8", size: 8, encoding: DW_ATE_signed)
!15 = !DIBasicType(name: "usize", size: 64, encoding: DW_ATE_unsigned)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const u8", baseType: !17, size: 64, align: 64, dwarfAddressSpace: 0)
!17 = !DIBasicType(name: "u8", size: 8, encoding: DW_ATE_unsigned)
!18 = !{!19, !20, !21, !22, !23, !32}
!19 = !DILocalVariable(name: "hex", arg: 1, scope: !6, file: !7, line: 45, type: !13)
!20 = !DILocalVariable(name: "hex_maxlen", arg: 2, scope: !6, file: !7, line: 46, type: !15)
!21 = !DILocalVariable(name: "bin", arg: 3, scope: !6, file: !7, line: 47, type: !16)
!22 = !DILocalVariable(name: "bin_len", arg: 4, scope: !6, file: !7, line: 48, type: !15)
!23 = !DILocalVariable(name: "hex_slice", scope: !24, file: !7, line: 50, type: !25, align: 8)
!24 = distinct !DILexicalBlock(scope: !6, file: !7, line: 50, column: 5)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "&mut [i8]", file: !26, size: 128, align: 64, elements: !27, templateParams: !31, identifier: "9d7ffb2ff0185110e0145edd6aaef826")
!26 = !DIFile(filename: "<unknown>", directory: "")
!27 = !{!28, !30}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !25, file: !26, baseType: !29, size: 64, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64, dwarfAddressSpace: 0)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !25, file: !26, baseType: !15, size: 64, align: 64, offset: 64)
!31 = !{}
!32 = !DILocalVariable(name: "bin_slice", scope: !33, file: !7, line: 51, type: !34, align: 8)
!33 = distinct !DILexicalBlock(scope: !24, file: !7, line: 51, column: 5)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "&[u8]", file: !26, size: 128, align: 64, elements: !35, templateParams: !31, identifier: "4f7d759e2003ffb713a77bd933fd0146")
!35 = !{!36, !38}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !34, file: !26, baseType: !37, size: 64, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64, dwarfAddressSpace: 0)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !34, file: !26, baseType: !15, size: 64, align: 64, offset: 64)
!39 = !DILocation(line: 45, column: 5, scope: !6)
!40 = !DILocation(line: 46, column: 5, scope: !6)
!41 = !DILocation(line: 47, column: 5, scope: !6)
!42 = !DILocation(line: 48, column: 5, scope: !6)
!43 = !DILocation(line: 50, column: 21, scope: !6)
!44 = !DILocation(line: 50, column: 9, scope: !24)
!45 = !DILocation(line: 51, column: 21, scope: !24)
!46 = !DILocation(line: 51, column: 9, scope: !33)
!47 = !DILocation(line: 52, column: 5, scope: !33)
!48 = !DILocalVariable(name: "self", arg: 1, scope: !49, file: !50, line: 506, type: !25)
!49 = distinct !DISubprogram(name: "as_mut_ptr<i8>", linkageName: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17hb8ec4afc0cb9bebeE", scope: !51, file: !50, line: 506, type: !54, scopeLine: 506, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !57, retainedNodes: !56)
!50 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/slice/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "0b3adda84e3d0ea3eafbebcfb4ca210d")
!51 = !DINamespace(name: "{impl#0}", scope: !52)
!52 = !DINamespace(name: "slice", scope: !53)
!53 = !DINamespace(name: "core", scope: null)
!54 = !DISubroutineType(types: !55)
!55 = !{!13, !25}
!56 = !{!48}
!57 = !{!58}
!58 = !DITemplateTypeParameter(name: "T", type: !14)
!59 = !DILocation(line: 506, column: 29, scope: !49, inlinedAt: !60)
!60 = distinct !DILocation(line: 52, column: 5, scope: !33)
!61 = !DILocation(line: 53, column: 2, scope: !6)
!62 = distinct !DISubprogram(name: "from_raw_parts_mut<i8>", linkageName: "_ZN4core5slice3raw18from_raw_parts_mut17h917bc637a87cc744E", scope: !64, file: !63, line: 137, type: !65, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !57, retainedNodes: !67)
!63 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/slice/raw.rs", directory: "", checksumkind: CSK_MD5, checksum: "4e9e8b780584cc248c586456197d9cf5")
!64 = !DINamespace(name: "raw", scope: !52)
!65 = !DISubroutineType(types: !66)
!66 = !{!25, !13, !15}
!67 = !{!68, !69}
!68 = !DILocalVariable(name: "data", arg: 1, scope: !62, file: !63, line: 137, type: !13)
!69 = !DILocalVariable(name: "len", arg: 2, scope: !62, file: !63, line: 137, type: !15)
!70 = !DILocation(line: 137, column: 47, scope: !62)
!71 = !DILocalVariable(name: "data", arg: 1, scope: !72, file: !73, line: 765, type: !13)
!72 = distinct !DISubprogram(name: "slice_from_raw_parts_mut<i8>", linkageName: "_ZN4core3ptr24slice_from_raw_parts_mut17h07ea813152c4bd4aE", scope: !74, file: !73, line: 765, type: !75, scopeLine: 765, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !57, retainedNodes: !81)
!73 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/ptr/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "4b0ac29df94a7dc1bf2bc7efca5e253a")
!74 = !DINamespace(name: "ptr", scope: !53)
!75 = !DISubroutineType(types: !76)
!76 = !{!77, !13, !15}
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "*mut [i8]", file: !26, size: 128, align: 64, elements: !78, templateParams: !31, identifier: "543a1a03d0e59fca807fc7e6ac3337da")
!78 = !{!79, !80}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !77, file: !26, baseType: !29, size: 64, align: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !77, file: !26, baseType: !15, size: 64, align: 64, offset: 64)
!81 = !{!71, !82}
!82 = !DILocalVariable(name: "len", arg: 2, scope: !72, file: !73, line: 765, type: !15)
!83 = !DILocation(line: 765, column: 42, scope: !72, inlinedAt: !84)
!84 = !DILocation(line: 145, column: 15, scope: !62)
!85 = !DILocalVariable(name: "self", arg: 1, scope: !86, file: !87, line: 57, type: !13)
!86 = distinct !DISubprogram(name: "cast<i8, ()>", linkageName: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4cast17hcc0be2ed688726ccE", scope: !88, file: !87, line: 57, type: !90, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !95, retainedNodes: !94)
!87 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/ptr/mut_ptr.rs", directory: "", checksumkind: CSK_MD5, checksum: "11087a90ad8f3b9862444e143466697a")
!88 = !DINamespace(name: "{impl#0}", scope: !89)
!89 = !DINamespace(name: "mut_ptr", scope: !74)
!90 = !DISubroutineType(types: !91)
!91 = !{!92, !13}
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut ()", baseType: !93, size: 64, align: 64, dwarfAddressSpace: 0)
!93 = !DIBasicType(name: "()", encoding: DW_ATE_unsigned)
!94 = !{!85}
!95 = !{!58, !96}
!96 = !DITemplateTypeParameter(name: "U", type: !93)
!97 = !DILocation(line: 57, column: 26, scope: !86, inlinedAt: !98)
!98 = !DILocation(line: 766, column: 29, scope: !72, inlinedAt: !84)
!99 = !DILocation(line: 137, column: 61, scope: !62)
!100 = !DILocation(line: 765, column: 56, scope: !72, inlinedAt: !84)
!101 = !DILocalVariable(name: "metadata", arg: 2, scope: !102, file: !103, line: 130, type: !15)
!102 = distinct !DISubprogram(name: "from_raw_parts_mut<[i8]>", linkageName: "_ZN4core3ptr8metadata18from_raw_parts_mut17hab282e30e3502082E", scope: !104, file: !103, line: 128, type: !105, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !57, retainedNodes: !107)
!103 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/ptr/metadata.rs", directory: "", checksumkind: CSK_MD5, checksum: "1e1a461bde75de7a93357ca7e628f393")
!104 = !DINamespace(name: "metadata", scope: !74)
!105 = !DISubroutineType(types: !106)
!106 = !{!77, !92, !15}
!107 = !{!108, !101}
!108 = !DILocalVariable(name: "data_address", arg: 1, scope: !102, file: !103, line: 129, type: !92)
!109 = !DILocation(line: 130, column: 5, scope: !102, inlinedAt: !110)
!110 = !DILocation(line: 766, column: 5, scope: !72, inlinedAt: !84)
!111 = !DILocation(line: 58, column: 9, scope: !86, inlinedAt: !98)
!112 = !DILocation(line: 129, column: 5, scope: !102, inlinedAt: !110)
!113 = !DILocation(line: 135, column: 36, scope: !102, inlinedAt: !110)
!114 = !DILocation(line: 135, column: 14, scope: !102, inlinedAt: !110)
!115 = !DILocation(line: 147, column: 2, scope: !62)
!116 = distinct !DISubprogram(name: "from_raw_parts<u8>", linkageName: "_ZN4core5slice3raw14from_raw_parts17ha67b45eb760ba5c4E", scope: !64, file: !63, line: 92, type: !117, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !122, retainedNodes: !119)
!117 = !DISubroutineType(types: !118)
!118 = !{!34, !16, !15}
!119 = !{!120, !121}
!120 = !DILocalVariable(name: "data", arg: 1, scope: !116, file: !63, line: 92, type: !16)
!121 = !DILocalVariable(name: "len", arg: 2, scope: !116, file: !63, line: 92, type: !15)
!122 = !{!123}
!123 = !DITemplateTypeParameter(name: "T", type: !17)
!124 = !DILocation(line: 92, column: 43, scope: !116)
!125 = !DILocalVariable(name: "data", arg: 1, scope: !126, file: !73, line: 733, type: !16)
!126 = distinct !DISubprogram(name: "slice_from_raw_parts<u8>", linkageName: "_ZN4core3ptr20slice_from_raw_parts17h400de776eac1612cE", scope: !74, file: !73, line: 733, type: !127, scopeLine: 733, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !122, retainedNodes: !133)
!127 = !DISubroutineType(types: !128)
!128 = !{!129, !16, !15}
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "*const [u8]", file: !26, size: 128, align: 64, elements: !130, templateParams: !31, identifier: "a329dffc2f36de2e98a77091932cf429")
!130 = !{!131, !132}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !129, file: !26, baseType: !37, size: 64, align: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !129, file: !26, baseType: !15, size: 64, align: 64, offset: 64)
!133 = !{!125, !134}
!134 = !DILocalVariable(name: "len", arg: 2, scope: !126, file: !73, line: 733, type: !15)
!135 = !DILocation(line: 733, column: 38, scope: !126, inlinedAt: !136)
!136 = !DILocation(line: 100, column: 11, scope: !116)
!137 = !DILocalVariable(name: "self", arg: 1, scope: !138, file: !139, line: 58, type: !16)
!138 = distinct !DISubprogram(name: "cast<u8, ()>", linkageName: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17hf0f5aef35693cce5E", scope: !140, file: !139, line: 58, type: !142, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !146, retainedNodes: !145)
!139 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/ptr/const_ptr.rs", directory: "", checksumkind: CSK_MD5, checksum: "2a21946c6980740609ff35bdd2bfdb1c")
!140 = !DINamespace(name: "{impl#0}", scope: !141)
!141 = !DINamespace(name: "const_ptr", scope: !74)
!142 = !DISubroutineType(types: !143)
!143 = !{!144, !16}
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const ()", baseType: !93, size: 64, align: 64, dwarfAddressSpace: 0)
!145 = !{!137}
!146 = !{!123, !96}
!147 = !DILocation(line: 58, column: 26, scope: !138, inlinedAt: !148)
!148 = !DILocation(line: 734, column: 25, scope: !126, inlinedAt: !136)
!149 = !DILocation(line: 92, column: 59, scope: !116)
!150 = !DILocation(line: 733, column: 54, scope: !126, inlinedAt: !136)
!151 = !DILocalVariable(name: "metadata", arg: 2, scope: !152, file: !103, line: 113, type: !15)
!152 = distinct !DISubprogram(name: "from_raw_parts<[u8]>", linkageName: "_ZN4core3ptr8metadata14from_raw_parts17hd1b45ed755f1e7d6E", scope: !104, file: !103, line: 111, type: !153, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !122, retainedNodes: !155)
!153 = !DISubroutineType(types: !154)
!154 = !{!129, !144, !15}
!155 = !{!156, !151}
!156 = !DILocalVariable(name: "data_address", arg: 1, scope: !152, file: !103, line: 112, type: !144)
!157 = !DILocation(line: 113, column: 5, scope: !152, inlinedAt: !158)
!158 = !DILocation(line: 734, column: 5, scope: !126, inlinedAt: !136)
!159 = !DILocation(line: 59, column: 9, scope: !138, inlinedAt: !148)
!160 = !DILocation(line: 112, column: 5, scope: !152, inlinedAt: !158)
!161 = !DILocation(line: 118, column: 36, scope: !152, inlinedAt: !158)
!162 = !DILocation(line: 118, column: 14, scope: !152, inlinedAt: !158)
!163 = !DILocation(line: 102, column: 2, scope: !116)
!164 = distinct !DISubprogram(name: "bin2hex", linkageName: "_ZN11bin2hex_lib3src3lib7bin2hex17h023cdcb8e949623eE", scope: !8, file: !7, line: 8, type: !165, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !31, retainedNodes: !167)
!165 = !DISubroutineType(types: !166)
!166 = !{!25, !25, !34}
!167 = !{!168, !169, !170, !172, !174, !176, !178, !181, !183}
!168 = !DILocalVariable(name: "hex", arg: 1, scope: !164, file: !7, line: 9, type: !25)
!169 = !DILocalVariable(name: "bin", arg: 2, scope: !164, file: !7, line: 10, type: !34)
!170 = !DILocalVariable(name: "bin_len", scope: !171, file: !7, line: 12, type: !15, align: 8)
!171 = distinct !DILexicalBlock(scope: !164, file: !7, line: 12, column: 5)
!172 = !DILocalVariable(name: "hex_maxlen", scope: !173, file: !7, line: 13, type: !15, align: 8)
!173 = distinct !DILexicalBlock(scope: !171, file: !7, line: 13, column: 5)
!174 = !DILocalVariable(name: "i", scope: !175, file: !7, line: 19, type: !15, align: 8)
!175 = distinct !DILexicalBlock(scope: !173, file: !7, line: 19, column: 5)
!176 = !DILocalVariable(name: "byte", scope: !177, file: !7, line: 21, type: !17, align: 1)
!177 = distinct !DILexicalBlock(scope: !175, file: !7, line: 21, column: 9)
!178 = !DILocalVariable(name: "c", scope: !179, file: !7, line: 22, type: !180, align: 4)
!179 = distinct !DILexicalBlock(scope: !177, file: !7, line: 22, column: 9)
!180 = !DIBasicType(name: "u32", size: 32, encoding: DW_ATE_unsigned)
!181 = !DILocalVariable(name: "b", scope: !182, file: !7, line: 23, type: !180, align: 4)
!182 = distinct !DILexicalBlock(scope: !179, file: !7, line: 23, column: 9)
!183 = !DILocalVariable(name: "x", scope: !184, file: !7, line: 25, type: !180, align: 4)
!184 = distinct !DILexicalBlock(scope: !182, file: !7, line: 25, column: 9)
!185 = !DILocation(line: 9, column: 5, scope: !164)
!186 = !DILocation(line: 10, column: 5, scope: !164)
!187 = !DILocation(line: 19, column: 9, scope: !175)
!188 = !DILocation(line: 12, column: 19, scope: !164)
!189 = !DILocation(line: 12, column: 9, scope: !171)
!190 = !DILocation(line: 13, column: 22, scope: !171)
!191 = !DILocation(line: 13, column: 9, scope: !173)
!192 = !DILocalVariable(name: "self", arg: 1, scope: !193, file: !194, line: 1274, type: !15)
!193 = distinct !DISubprogram(name: "wrapping_div", linkageName: "_ZN4core3num23_$LT$impl$u20$usize$GT$12wrapping_div17h448f4b1f9b503d7bE", scope: !195, file: !194, line: 1274, type: !197, scopeLine: 1274, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !31, retainedNodes: !199)
!194 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/num/uint_macros.rs", directory: "", checksumkind: CSK_MD5, checksum: "b2a733f80e3cd43066f918bdafc87bd0")
!195 = !DINamespace(name: "{impl#11}", scope: !196)
!196 = !DINamespace(name: "num", scope: !53)
!197 = !DISubroutineType(types: !198)
!198 = !{!15, !15, !15}
!199 = !{!192, !200}
!200 = !DILocalVariable(name: "rhs", arg: 2, scope: !193, file: !194, line: 1274, type: !15)
!201 = !DILocation(line: 1274, column: 35, scope: !193, inlinedAt: !202)
!202 = distinct !DILocation(line: 15, column: 19, scope: !173)
!203 = !DILocation(line: 1274, column: 41, scope: !193, inlinedAt: !202)
!204 = !DILocation(line: 1275, column: 13, scope: !193, inlinedAt: !202)
!205 = !DILocation(line: 15, column: 8, scope: !173)
!206 = !DILocalVariable(name: "self", arg: 1, scope: !207, file: !194, line: 1252, type: !15)
!207 = distinct !DISubprogram(name: "wrapping_mul", linkageName: "_ZN4core3num23_$LT$impl$u20$usize$GT$12wrapping_mul17h0a1e3e6e5b085a07E", scope: !195, file: !194, line: 1252, type: !197, scopeLine: 1252, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !31, retainedNodes: !208)
!208 = !{!206, !209}
!209 = !DILocalVariable(name: "rhs", arg: 2, scope: !207, file: !194, line: 1252, type: !15)
!210 = !DILocation(line: 1252, column: 35, scope: !207, inlinedAt: !211)
!211 = distinct !DILocation(line: 15, column: 63, scope: !173)
!212 = !DILocation(line: 1252, column: 41, scope: !207, inlinedAt: !211)
!213 = !DILocation(line: 1253, column: 13, scope: !207, inlinedAt: !211)
!214 = !DILocation(line: 15, column: 49, scope: !173)
!215 = !{i8 0, i8 2}
!216 = !DILocation(line: 19, column: 24, scope: !173)
!217 = !DILocation(line: 20, column: 5, scope: !175)
!218 = !DILocation(line: 16, column: 9, scope: !173)
!219 = !DILocation(line: 20, column: 11, scope: !175)
!220 = !DILocation(line: 39, column: 9, scope: !175)
!221 = !DILocation(line: 1252, column: 35, scope: !207, inlinedAt: !222)
!222 = distinct !DILocation(line: 39, column: 9, scope: !175)
!223 = !DILocation(line: 1252, column: 41, scope: !207, inlinedAt: !222)
!224 = !DILocation(line: 1253, column: 13, scope: !207, inlinedAt: !222)
!225 = !DILocation(line: 39, column: 5, scope: !175)
!226 = !DILocation(line: 21, column: 24, scope: !175)
!227 = !DILocation(line: 21, column: 20, scope: !175)
!228 = !DILocation(line: 21, column: 13, scope: !177)
!229 = !DILocation(line: 22, column: 18, scope: !177)
!230 = !DILocation(line: 22, column: 17, scope: !177)
!231 = !DILocation(line: 22, column: 13, scope: !179)
!232 = !DILocation(line: 23, column: 18, scope: !179)
!233 = !DILocation(line: 23, column: 17, scope: !179)
!234 = !DILocation(line: 23, column: 13, scope: !182)
!235 = !DILocalVariable(name: "self", arg: 1, scope: !236, file: !194, line: 1188, type: !180)
!236 = distinct !DISubprogram(name: "wrapping_add", linkageName: "_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_add17ha47a709bc54d730dE", scope: !237, file: !194, line: 1188, type: !238, scopeLine: 1188, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !31, retainedNodes: !240)
!237 = !DINamespace(name: "{impl#8}", scope: !196)
!238 = !DISubroutineType(types: !239)
!239 = !{!180, !180, !180}
!240 = !{!235, !241}
!241 = !DILocalVariable(name: "rhs", arg: 2, scope: !236, file: !194, line: 1188, type: !180)
!242 = !DILocation(line: 1188, column: 35, scope: !236, inlinedAt: !243)
!243 = distinct !DILocation(line: 25, column: 19, scope: !182)
!244 = !DILocation(line: 1188, column: 41, scope: !236, inlinedAt: !243)
!245 = !DILocation(line: 1189, column: 13, scope: !236, inlinedAt: !243)
!246 = !DILocalVariable(name: "self", arg: 1, scope: !247, file: !194, line: 1229, type: !180)
!247 = distinct !DISubprogram(name: "wrapping_sub", linkageName: "_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_sub17hb7724822f5ad2c8fE", scope: !237, file: !194, line: 1229, type: !238, scopeLine: 1229, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !31, retainedNodes: !248)
!248 = !{!246, !249}
!249 = !DILocalVariable(name: "rhs", arg: 2, scope: !247, file: !194, line: 1229, type: !180)
!250 = !DILocation(line: 1229, column: 35, scope: !247, inlinedAt: !251)
!251 = distinct !DILocation(line: 27, column: 27, scope: !182)
!252 = !DILocation(line: 1229, column: 41, scope: !247, inlinedAt: !251)
!253 = !DILocation(line: 1230, column: 13, scope: !247, inlinedAt: !251)
!254 = !DILocation(line: 27, column: 27, scope: !182)
!255 = !DILocation(line: 1188, column: 35, scope: !236, inlinedAt: !256)
!256 = distinct !DILocation(line: 25, column: 19, scope: !182)
!257 = !DILocation(line: 1188, column: 41, scope: !236, inlinedAt: !256)
!258 = !DILocation(line: 1189, column: 13, scope: !236, inlinedAt: !256)
!259 = !DILocation(line: 25, column: 19, scope: !182)
!260 = !DILocation(line: 25, column: 18, scope: !182)
!261 = !DILocation(line: 25, column: 17, scope: !182)
!262 = !DILocation(line: 1188, column: 35, scope: !236, inlinedAt: !263)
!263 = distinct !DILocation(line: 29, column: 16, scope: !182)
!264 = !DILocation(line: 1188, column: 41, scope: !236, inlinedAt: !263)
!265 = !DILocation(line: 1189, column: 13, scope: !236, inlinedAt: !263)
!266 = !DILocation(line: 1229, column: 35, scope: !247, inlinedAt: !267)
!267 = distinct !DILocation(line: 31, column: 31, scope: !182)
!268 = !DILocation(line: 1229, column: 41, scope: !247, inlinedAt: !267)
!269 = !DILocation(line: 1230, column: 13, scope: !247, inlinedAt: !267)
!270 = !DILocation(line: 31, column: 31, scope: !182)
!271 = !DILocation(line: 1188, column: 35, scope: !236, inlinedAt: !272)
!272 = distinct !DILocation(line: 29, column: 16, scope: !182)
!273 = !DILocation(line: 1188, column: 41, scope: !236, inlinedAt: !272)
!274 = !DILocation(line: 1189, column: 13, scope: !236, inlinedAt: !272)
!275 = !DILocation(line: 29, column: 16, scope: !182)
!276 = !DILocation(line: 29, column: 15, scope: !182)
!277 = !DILocation(line: 25, column: 13, scope: !184)
!278 = !DILocation(line: 33, column: 13, scope: !184)
!279 = !DILocation(line: 1252, column: 35, scope: !207, inlinedAt: !280)
!280 = distinct !DILocation(line: 33, column: 13, scope: !184)
!281 = !DILocation(line: 1252, column: 41, scope: !207, inlinedAt: !280)
!282 = !DILocation(line: 1253, column: 13, scope: !207, inlinedAt: !280)
!283 = !DILocation(line: 33, column: 9, scope: !184)
!284 = !DILocation(line: 34, column: 50, scope: !184)
!285 = !DILocation(line: 34, column: 13, scope: !184)
!286 = !DILocation(line: 1252, column: 35, scope: !207, inlinedAt: !287)
!287 = distinct !DILocation(line: 34, column: 13, scope: !184)
!288 = !DILocation(line: 1252, column: 41, scope: !207, inlinedAt: !287)
!289 = !DILocation(line: 1253, column: 13, scope: !207, inlinedAt: !287)
!290 = !DILocalVariable(name: "self", arg: 1, scope: !291, file: !194, line: 1188, type: !15)
!291 = distinct !DISubprogram(name: "wrapping_add", linkageName: "_ZN4core3num23_$LT$impl$u20$usize$GT$12wrapping_add17h8913d289991a8319E", scope: !195, file: !194, line: 1188, type: !197, scopeLine: 1188, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !31, retainedNodes: !292)
!292 = !{!290, !293}
!293 = !DILocalVariable(name: "rhs", arg: 2, scope: !291, file: !194, line: 1188, type: !15)
!294 = !DILocation(line: 1188, column: 35, scope: !291, inlinedAt: !295)
!295 = distinct !DILocation(line: 34, column: 13, scope: !184)
!296 = !DILocation(line: 1188, column: 41, scope: !291, inlinedAt: !295)
!297 = !DILocation(line: 1189, column: 13, scope: !291, inlinedAt: !295)
!298 = !DILocation(line: 34, column: 9, scope: !184)
!299 = !DILocation(line: 36, column: 13, scope: !184)
!300 = !DILocation(line: 1188, column: 35, scope: !291, inlinedAt: !301)
!301 = distinct !DILocation(line: 36, column: 13, scope: !184)
!302 = !DILocation(line: 1188, column: 41, scope: !291, inlinedAt: !301)
!303 = !DILocation(line: 1189, column: 13, scope: !291, inlinedAt: !301)
!304 = !DILocation(line: 36, column: 9, scope: !184)
!305 = !DILocation(line: 41, column: 2, scope: !164)
!306 = distinct !DISubprogram(name: "run_test_1", scope: !8, file: !7, line: 56, type: !307, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !31, retainedNodes: !310)
!307 = !DISubroutineType(types: !308)
!308 = !{!309}
!309 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!310 = !{!311, !316, !321, !323, !325}
!311 = !DILocalVariable(name: "hex", scope: !312, file: !7, line: 57, type: !313, align: 1)
!312 = distinct !DILexicalBlock(scope: !306, file: !7, line: 57, column: 5)
!313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 24, align: 8, elements: !314)
!314 = !{!315}
!315 = !DISubrange(count: 3, lowerBound: 0)
!316 = !DILocalVariable(name: "bin", scope: !317, file: !7, line: 58, type: !318, align: 1)
!317 = distinct !DILexicalBlock(scope: !312, file: !7, line: 58, column: 5)
!318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 8, align: 8, elements: !319)
!319 = !{!320}
!320 = !DISubrange(count: 1, lowerBound: 0)
!321 = !DILocalVariable(name: "hex_maxlen", scope: !322, file: !7, line: 59, type: !15, align: 8)
!322 = distinct !DILexicalBlock(scope: !317, file: !7, line: 59, column: 5)
!323 = !DILocalVariable(name: "bin_len", scope: !324, file: !7, line: 60, type: !15, align: 8)
!324 = distinct !DILexicalBlock(scope: !322, file: !7, line: 60, column: 5)
!325 = !DILocalVariable(name: "expected_hex", scope: !326, file: !7, line: 64, type: !313, align: 1)
!326 = distinct !DILexicalBlock(scope: !324, file: !7, line: 64, column: 5)
!327 = !DILocation(line: 57, column: 9, scope: !312)
!328 = !DILocation(line: 58, column: 9, scope: !317)
!329 = !DILocation(line: 64, column: 9, scope: !326)
!330 = !DILocation(line: 57, column: 43, scope: !306)
!331 = !DILocation(line: 58, column: 30, scope: !312)
!332 = !DILocation(line: 59, column: 29, scope: !317)
!333 = !DILocation(line: 59, column: 9, scope: !322)
!334 = !DILocation(line: 60, column: 26, scope: !322)
!335 = !DILocation(line: 60, column: 9, scope: !324)
!336 = !DILocation(line: 506, column: 29, scope: !49, inlinedAt: !337)
!337 = distinct !DILocation(line: 62, column: 17, scope: !324)
!338 = !DILocalVariable(name: "self", arg: 1, scope: !339, file: !50, line: 476, type: !34)
!339 = distinct !DISubprogram(name: "as_ptr<u8>", linkageName: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17hdff19c657935e168E", scope: !51, file: !50, line: 476, type: !340, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !122, retainedNodes: !342)
!340 = !DISubroutineType(types: !341)
!341 = !{!16, !34}
!342 = !{!338}
!343 = !DILocation(line: 476, column: 25, scope: !339, inlinedAt: !344)
!344 = distinct !DILocation(line: 62, column: 47, scope: !324)
!345 = !DILocation(line: 62, column: 5, scope: !324)
!346 = !DILocation(line: 64, column: 48, scope: !324)
!347 = !DILocation(line: 65, column: 5, scope: !326)
!348 = !DILocation(line: 66, column: 2, scope: !306)
!349 = distinct !DISubprogram(name: "eq<i8, i8, 3>", linkageName: "_ZN4core5array8equality103_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$B$u3b$$u20$N$u5d$$GT$$u20$for$u20$$u5b$A$u3b$$u20$N$u5d$$GT$2eq17hfc757c2b0b9965aeE", scope: !351, file: !350, line: 10, type: !354, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !360, retainedNodes: !357)
!350 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/array/equality.rs", directory: "", checksumkind: CSK_MD5, checksum: "1524894cf0ce28fd6e90c297c47c06f9")
!351 = !DINamespace(name: "{impl#0}", scope: !352)
!352 = !DINamespace(name: "equality", scope: !353)
!353 = !DINamespace(name: "array", scope: !53)
!354 = !DISubroutineType(types: !355)
!355 = !{!309, !356, !356}
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&[i8; 3]", baseType: !313, size: 64, align: 64, dwarfAddressSpace: 0)
!357 = !{!358, !359}
!358 = !DILocalVariable(name: "self", arg: 1, scope: !349, file: !350, line: 10, type: !356)
!359 = !DILocalVariable(name: "other", arg: 2, scope: !349, file: !350, line: 10, type: !356)
!360 = !{!361, !362}
!361 = !DITemplateTypeParameter(name: "A", type: !14)
!362 = !DITemplateTypeParameter(name: "B", type: !14)
!363 = !DILocation(line: 10, column: 11, scope: !349)
!364 = !DILocation(line: 10, column: 18, scope: !349)
!365 = !DILocation(line: 11, column: 9, scope: !349)
!366 = !DILocation(line: 12, column: 6, scope: !349)
!367 = distinct !DISubprogram(name: "spec_eq<i8, i8, 3>", linkageName: "_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17hc9fdf6c3965b0b55E", scope: !368, file: !350, line: 147, type: !354, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !372, retainedNodes: !369)
!368 = !DINamespace(name: "{impl#9}", scope: !352)
!369 = !{!370, !371}
!370 = !DILocalVariable(name: "a", arg: 1, scope: !367, file: !350, line: 147, type: !356)
!371 = !DILocalVariable(name: "b", arg: 2, scope: !367, file: !350, line: 147, type: !356)
!372 = !{!58, !373}
!373 = !DITemplateTypeParameter(name: "U", type: !14)
!374 = !DILocation(line: 147, column: 16, scope: !367)
!375 = !DILocation(line: 147, column: 28, scope: !367)
!376 = !DILocation(line: 151, column: 18, scope: !367)
!377 = !DILocation(line: 152, column: 6, scope: !367)
!378 = distinct !DISubprogram(name: "run_test_2", scope: !8, file: !7, line: 69, type: !307, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !31, retainedNodes: !379)
!379 = !{!380, !385, !388, !390, !392}
!380 = !DILocalVariable(name: "hex", scope: !381, file: !7, line: 70, type: !382, align: 1)
!381 = distinct !DILexicalBlock(scope: !378, file: !7, line: 70, column: 5)
!382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 72, align: 8, elements: !383)
!383 = !{!384}
!384 = !DISubrange(count: 9, lowerBound: 0)
!385 = !DILocalVariable(name: "bin", scope: !386, file: !7, line: 71, type: !387, align: 1)
!386 = distinct !DILexicalBlock(scope: !381, file: !7, line: 71, column: 5)
!387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 24, align: 8, elements: !314)
!388 = !DILocalVariable(name: "hex_maxlen", scope: !389, file: !7, line: 72, type: !15, align: 8)
!389 = distinct !DILexicalBlock(scope: !386, file: !7, line: 72, column: 5)
!390 = !DILocalVariable(name: "bin_len", scope: !391, file: !7, line: 73, type: !15, align: 8)
!391 = distinct !DILexicalBlock(scope: !389, file: !7, line: 73, column: 5)
!392 = !DILocalVariable(name: "expected_hex", scope: !393, file: !7, line: 77, type: !394, align: 1)
!393 = distinct !DILexicalBlock(scope: !391, file: !7, line: 77, column: 5)
!394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 64, align: 8, elements: !395)
!395 = !{!396}
!396 = !DISubrange(count: 8, lowerBound: 0)
!397 = !DILocation(line: 70, column: 9, scope: !381)
!398 = !DILocation(line: 71, column: 9, scope: !386)
!399 = !DILocation(line: 77, column: 9, scope: !393)
!400 = !DILocation(line: 70, column: 43, scope: !378)
!401 = !DILocation(line: 71, column: 30, scope: !381)
!402 = !DILocation(line: 72, column: 29, scope: !386)
!403 = !DILocation(line: 72, column: 9, scope: !389)
!404 = !DILocation(line: 73, column: 26, scope: !389)
!405 = !DILocation(line: 73, column: 9, scope: !391)
!406 = !DILocation(line: 506, column: 29, scope: !49, inlinedAt: !407)
!407 = distinct !DILocation(line: 75, column: 17, scope: !391)
!408 = !DILocation(line: 476, column: 25, scope: !339, inlinedAt: !409)
!409 = distinct !DILocation(line: 75, column: 47, scope: !391)
!410 = !DILocation(line: 75, column: 5, scope: !391)
!411 = !DILocation(line: 77, column: 48, scope: !391)
!412 = !DILocation(line: 78, column: 5, scope: !393)
!413 = !DILocation(line: 79, column: 2, scope: !378)
!414 = distinct !DISubprogram(name: "index<i8, core::ops::range::RangeTo<usize>, 9>", linkageName: "_ZN4core5array85_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$5index17h1455a6d2a267635aE", scope: !416, file: !415, line: 347, type: !417, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !446, retainedNodes: !443)
!415 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/array/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "a3c36e35ceb67ad777a82e040f0657ec")
!416 = !DINamespace(name: "{impl#15}", scope: !353)
!417 = !DISubroutineType(types: !418)
!418 = !{!419, !423, !424, !431}
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "&[i8]", file: !26, size: 128, align: 64, elements: !420, templateParams: !31, identifier: "48c794eb092151cccbcb9e68b1ce60bf")
!420 = !{!421, !422}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !419, file: !26, baseType: !29, size: 64, align: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !419, file: !26, baseType: !15, size: 64, align: 64, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&[i8; 9]", baseType: !382, size: 64, align: 64, dwarfAddressSpace: 0)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RangeTo<usize>", scope: !425, file: !26, size: 64, align: 64, elements: !427, templateParams: !429, identifier: "da302084393465f458307a5c67238369")
!425 = !DINamespace(name: "range", scope: !426)
!426 = !DINamespace(name: "ops", scope: !53)
!427 = !{!428}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !424, file: !26, baseType: !15, size: 64, align: 64)
!429 = !{!430}
!430 = !DITemplateTypeParameter(name: "Idx", type: !15)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::panic::location::Location", baseType: !432, size: 64, align: 64, dwarfAddressSpace: 0)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Location", scope: !433, file: !26, size: 192, align: 64, elements: !435, templateParams: !31, identifier: "2dffe35ce6e614c7231bda0a859f9fe2")
!433 = !DINamespace(name: "location", scope: !434)
!434 = !DINamespace(name: "panic", scope: !53)
!435 = !{!436, !441, !442}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !432, file: !26, baseType: !437, size: 128, align: 64)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "&str", file: !26, size: 128, align: 64, elements: !438, templateParams: !31, identifier: "857c99401054bcaa39f98e6e0c6d74b")
!438 = !{!439, !440}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !437, file: !26, baseType: !37, size: 64, align: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !437, file: !26, baseType: !15, size: 64, align: 64, offset: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !432, file: !26, baseType: !180, size: 32, align: 32, offset: 128)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "col", scope: !432, file: !26, baseType: !180, size: 32, align: 32, offset: 160)
!443 = !{!444, !445}
!444 = !DILocalVariable(name: "self", arg: 1, scope: !414, file: !415, line: 347, type: !423)
!445 = !DILocalVariable(name: "index", arg: 2, scope: !414, file: !415, line: 347, type: !424)
!446 = !{!58, !447}
!447 = !DITemplateTypeParameter(name: "I", type: !424)
!448 = !DILocation(line: 347, column: 14, scope: !414)
!449 = !DILocation(line: 347, column: 21, scope: !414)
!450 = !DILocation(line: 348, column: 9, scope: !414)
!451 = !DILocation(line: 349, column: 6, scope: !414)
!452 = distinct !DISubprogram(name: "eq<i8, i8, 8>", linkageName: "_ZN4core5array8equality92_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$A$u3b$$u20$N$u5d$$GT$$u20$for$u20$$u5b$B$u5d$$GT$2eq17hc4637cf22f467cf4E", scope: !453, file: !350, line: 48, type: !454, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !360, retainedNodes: !457)
!453 = !DINamespace(name: "{impl#2}", scope: !352)
!454 = !DISubroutineType(types: !455)
!455 = !{!309, !419, !456}
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&[i8; 8]", baseType: !394, size: 64, align: 64, dwarfAddressSpace: 0)
!457 = !{!458, !459, !460, !483}
!458 = !DILocalVariable(name: "self", arg: 1, scope: !452, file: !350, line: 48, type: !419)
!459 = !DILocalVariable(name: "other", arg: 2, scope: !452, file: !350, line: 48, type: !456)
!460 = !DILocalVariable(name: "b", scope: !461, file: !350, line: 49, type: !462, align: 8)
!461 = distinct !DILexicalBlock(scope: !452, file: !350, line: 49, column: 9)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Result<&[i8; 8], core::array::TryFromSliceError>", scope: !463, file: !26, size: 64, align: 64, elements: !464, templateParams: !31, identifier: "915cf356f7d3c7f34ce22b2535ae30ac")
!463 = !DINamespace(name: "result", scope: !53)
!464 = !{!465}
!465 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !462, file: !26, size: 64, align: 64, elements: !466, templateParams: !31, identifier: "3c536d63cb881051e8c79683463da0f", discriminator: !481)
!466 = !{!467, !477}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "Ok", scope: !465, file: !26, baseType: !468, size: 64, align: 64)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Ok", scope: !462, file: !26, size: 64, align: 64, elements: !469, templateParams: !471, identifier: "6734ec73b80784af571b88346cfce0bb")
!469 = !{!470}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !468, file: !26, baseType: !456, size: 64, align: 64)
!471 = !{!472, !473}
!472 = !DITemplateTypeParameter(name: "T", type: !456)
!473 = !DITemplateTypeParameter(name: "E", type: !474)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "TryFromSliceError", scope: !353, file: !26, align: 8, elements: !475, templateParams: !31, identifier: "259b6ad155e523d42d4ed2436924b54a")
!475 = !{!476}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !474, file: !26, baseType: !93, align: 8)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "Err", scope: !465, file: !26, baseType: !478, size: 64, align: 64, extraData: i64 0)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Err", scope: !462, file: !26, size: 64, align: 64, elements: !479, templateParams: !471, identifier: "cb56ef467ca4922fd4e44e9e8c1f15db")
!479 = !{!480}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !478, file: !26, baseType: !474, align: 8)
!481 = !DIDerivedType(tag: DW_TAG_member, scope: !462, file: !26, baseType: !482, size: 64, align: 64, flags: DIFlagArtificial)
!482 = !DIBasicType(name: "u64", size: 64, encoding: DW_ATE_unsigned)
!483 = !DILocalVariable(name: "b", scope: !484, file: !350, line: 51, type: !456, align: 8)
!484 = distinct !DILexicalBlock(scope: !461, file: !350, line: 51, column: 13)
!485 = !DILocation(line: 48, column: 11, scope: !452)
!486 = !DILocalVariable(name: "self", arg: 1, scope: !487, file: !488, line: 768, type: !419)
!487 = distinct !DISubprogram(name: "try_into<&[i8], &[i8; 8]>", linkageName: "_ZN53_$LT$T$u20$as$u20$core..convert..TryInto$LT$U$GT$$GT$8try_into17h144657903bc6b921E", scope: !489, file: !488, line: 768, type: !491, scopeLine: 768, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !494, retainedNodes: !493)
!488 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/convert/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "6f9a2bb114e3c17a8c818ecd735f695f")
!489 = !DINamespace(name: "{impl#6}", scope: !490)
!490 = !DINamespace(name: "convert", scope: !53)
!491 = !DISubroutineType(types: !492)
!492 = !{!462, !419}
!493 = !{!486}
!494 = !{!495, !496}
!495 = !DITemplateTypeParameter(name: "T", type: !419)
!496 = !DITemplateTypeParameter(name: "U", type: !456)
!497 = !DILocation(line: 768, column: 17, scope: !487, inlinedAt: !498)
!498 = !DILocation(line: 49, column: 42, scope: !452)
!499 = !DILocation(line: 48, column: 18, scope: !452)
!500 = !DILocalVariable(name: "other", arg: 2, scope: !501, file: !350, line: 10, type: !456)
!501 = distinct !DISubprogram(name: "eq<i8, i8, 8>", linkageName: "_ZN4core5array8equality103_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$B$u3b$$u20$N$u5d$$GT$$u20$for$u20$$u5b$A$u3b$$u20$N$u5d$$GT$2eq17h366bcf9325d42f93E", scope: !351, file: !350, line: 10, type: !502, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !360, retainedNodes: !504)
!502 = !DISubroutineType(types: !503)
!503 = !{!309, !456, !456}
!504 = !{!505, !500}
!505 = !DILocalVariable(name: "self", arg: 1, scope: !501, file: !350, line: 10, type: !456)
!506 = !DILocation(line: 10, column: 18, scope: !501, inlinedAt: !507)
!507 = !DILocation(line: 51, column: 22, scope: !484)
!508 = !DILocation(line: 49, column: 13, scope: !461)
!509 = !DILocation(line: 769, column: 9, scope: !487, inlinedAt: !498)
!510 = !DILocation(line: 50, column: 15, scope: !461)
!511 = !DILocation(line: 50, column: 9, scope: !461)
!512 = !DILocation(line: 51, column: 16, scope: !461)
!513 = !{i64 1}
!514 = !DILocation(line: 51, column: 16, scope: !484)
!515 = !DILocation(line: 10, column: 11, scope: !501, inlinedAt: !507)
!516 = !DILocation(line: 11, column: 9, scope: !501, inlinedAt: !507)
!517 = !DILocation(line: 52, column: 23, scope: !461)
!518 = !DILocation(line: 54, column: 6, scope: !452)
!519 = distinct !DISubprogram(name: "try_from<i8, 8>", linkageName: "_ZN4core5array102_$LT$impl$u20$core..convert..TryFrom$LT$$RF$$u5b$T$u5d$$GT$$u20$for$u20$$RF$$u5b$T$u3b$$u20$N$u5d$$GT$8try_from17h96de4e8a01048dbeE", scope: !520, file: !415, line: 254, type: !491, scopeLine: 254, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !57, retainedNodes: !521)
!520 = !DINamespace(name: "{impl#9}", scope: !353)
!521 = !{!522, !523}
!522 = !DILocalVariable(name: "slice", arg: 1, scope: !519, file: !415, line: 254, type: !419)
!523 = !DILocalVariable(name: "ptr", scope: !524, file: !415, line: 256, type: !525, align: 8)
!524 = distinct !DILexicalBlock(scope: !519, file: !415, line: 256, column: 13)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const [i8; 8]", baseType: !394, size: 64, align: 64, dwarfAddressSpace: 0)
!526 = !DILocation(line: 254, column: 17, scope: !519)
!527 = !DILocalVariable(name: "self", arg: 1, scope: !528, file: !50, line: 476, type: !419)
!528 = distinct !DISubprogram(name: "as_ptr<i8>", linkageName: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17ha9b82327818fffcaE", scope: !51, file: !50, line: 476, type: !529, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !57, retainedNodes: !532)
!529 = !DISubroutineType(types: !530)
!530 = !{!531, !419}
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const i8", baseType: !14, size: 64, align: 64, dwarfAddressSpace: 0)
!532 = !{!527}
!533 = !DILocation(line: 476, column: 25, scope: !528, inlinedAt: !534)
!534 = !DILocation(line: 256, column: 29, scope: !519)
!535 = !DILocation(line: 255, column: 12, scope: !519)
!536 = !DILocation(line: 260, column: 13, scope: !519)
!537 = !DILocation(line: 255, column: 9, scope: !519)
!538 = !DILocation(line: 256, column: 23, scope: !519)
!539 = !DILocation(line: 256, column: 17, scope: !524)
!540 = !DILocation(line: 258, column: 22, scope: !524)
!541 = !DILocation(line: 262, column: 6, scope: !519)
!542 = distinct !DISubprogram(name: "spec_eq<i8, i8, 8>", linkageName: "_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h022d93e985cc1d65E", scope: !368, file: !350, line: 147, type: !502, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !372, retainedNodes: !543)
!543 = !{!544, !545}
!544 = !DILocalVariable(name: "a", arg: 1, scope: !542, file: !350, line: 147, type: !456)
!545 = !DILocalVariable(name: "b", arg: 2, scope: !542, file: !350, line: 147, type: !456)
!546 = !DILocation(line: 147, column: 16, scope: !542)
!547 = !DILocation(line: 147, column: 28, scope: !542)
!548 = !DILocation(line: 151, column: 18, scope: !542)
!549 = !DILocation(line: 152, column: 6, scope: !542)
!550 = distinct !DISubprogram(name: "index<i8, core::ops::range::RangeTo<usize>>", linkageName: "_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17hef2c5ce49f314e95E", scope: !552, file: !551, line: 18, type: !554, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !446, retainedNodes: !556)
!551 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/slice/index.rs", directory: "", checksumkind: CSK_MD5, checksum: "1350c165f4aa6e79d8fe4fa0de29c328")
!552 = !DINamespace(name: "{impl#0}", scope: !553)
!553 = !DINamespace(name: "index", scope: !52)
!554 = !DISubroutineType(types: !555)
!555 = !{!419, !419, !424, !431}
!556 = !{!557, !558}
!557 = !DILocalVariable(name: "self", arg: 1, scope: !550, file: !551, line: 18, type: !419)
!558 = !DILocalVariable(name: "index", arg: 2, scope: !550, file: !551, line: 18, type: !424)
!559 = !DILocation(line: 18, column: 14, scope: !550)
!560 = !DILocation(line: 18, column: 21, scope: !550)
!561 = !DILocation(line: 19, column: 9, scope: !550)
!562 = !DILocation(line: 20, column: 6, scope: !550)
!563 = distinct !DISubprogram(name: "index<i8>", linkageName: "_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h705393f1141e1369E", scope: !564, file: !551, line: 457, type: !565, scopeLine: 457, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !57, retainedNodes: !567)
!564 = !DINamespace(name: "{impl#5}", scope: !553)
!565 = !DISubroutineType(types: !566)
!566 = !{!419, !424, !419, !431}
!567 = !{!568, !569}
!568 = !DILocalVariable(name: "self", arg: 1, scope: !563, file: !551, line: 457, type: !424)
!569 = !DILocalVariable(name: "slice", arg: 2, scope: !563, file: !551, line: 457, type: !419)
!570 = !DILocation(line: 457, column: 14, scope: !563)
!571 = !DILocation(line: 457, column: 20, scope: !563)
!572 = !DILocation(line: 458, column: 9, scope: !563)
!573 = !DILocation(line: 459, column: 6, scope: !563)
!574 = distinct !DISubprogram(name: "index<i8>", linkageName: "_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h6ffd306747e64266E", scope: !575, file: !551, line: 407, type: !576, scopeLine: 407, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !57, retainedNodes: !582)
!575 = !DINamespace(name: "{impl#4}", scope: !553)
!576 = !DISubroutineType(types: !577)
!577 = !{!419, !578, !419, !431}
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Range<usize>", scope: !425, file: !26, size: 128, align: 64, elements: !579, templateParams: !429, identifier: "b01c4dff50019c623f2ca4609ab20f0a")
!579 = !{!580, !581}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !578, file: !26, baseType: !15, size: 64, align: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !578, file: !26, baseType: !15, size: 64, align: 64, offset: 64)
!582 = !{!583, !584}
!583 = !DILocalVariable(name: "self", arg: 1, scope: !574, file: !551, line: 407, type: !578)
!584 = !DILocalVariable(name: "slice", arg: 2, scope: !574, file: !551, line: 407, type: !419)
!585 = !DILocation(line: 407, column: 14, scope: !574)
!586 = !DILocalVariable(name: "self", arg: 1, scope: !587, file: !551, line: 374, type: !578)
!587 = distinct !DISubprogram(name: "get_unchecked<i8>", linkageName: "_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17h54bed88da0607263E", scope: !575, file: !551, line: 374, type: !588, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !57, retainedNodes: !594)
!588 = !DISubroutineType(types: !589)
!589 = !{!590, !578, !590}
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "*const [i8]", file: !26, size: 128, align: 64, elements: !591, templateParams: !31, identifier: "3b5df3bb8a8b28ad4e2590f018a52005")
!591 = !{!592, !593}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !590, file: !26, baseType: !29, size: 64, align: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !590, file: !26, baseType: !15, size: 64, align: 64, offset: 64)
!594 = !{!586, !595, !596, !598}
!595 = !DILocalVariable(name: "slice", arg: 2, scope: !587, file: !551, line: 374, type: !590)
!596 = !DILocalVariable(name: "this", scope: !597, file: !551, line: 375, type: !578, align: 8)
!597 = distinct !DILexicalBlock(scope: !587, file: !551, line: 375, column: 9)
!598 = !DILocalVariable(name: "new_len", scope: !599, file: !551, line: 386, type: !15, align: 8)
!599 = distinct !DILexicalBlock(scope: !597, file: !551, line: 386, column: 13)
!600 = !DILocation(line: 374, column: 29, scope: !587, inlinedAt: !601)
!601 = !DILocation(line: 414, column: 25, scope: !574)
!602 = !DILocation(line: 407, column: 20, scope: !574)
!603 = !DILocation(line: 408, column: 12, scope: !574)
!604 = !DILocation(line: 410, column: 19, scope: !574)
!605 = !DILocation(line: 409, column: 13, scope: !574)
!606 = !DILocation(line: 414, column: 39, scope: !574)
!607 = !DILocation(line: 374, column: 35, scope: !587, inlinedAt: !601)
!608 = !DILocalVariable(name: "self", arg: 1, scope: !609, file: !139, line: 1629, type: !590)
!609 = distinct !DISubprogram(name: "as_ptr<i8>", linkageName: "_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$6as_ptr17h3769f1984c3002b9E", scope: !610, file: !139, line: 1629, type: !611, scopeLine: 1629, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !57, retainedNodes: !613)
!610 = !DINamespace(name: "{impl#1}", scope: !141)
!611 = !DISubroutineType(types: !612)
!612 = !{!531, !590}
!613 = !{!608}
!614 = !DILocation(line: 1629, column: 25, scope: !609, inlinedAt: !615)
!615 = !DILocation(line: 387, column: 45, scope: !599, inlinedAt: !601)
!616 = !DILocation(line: 386, column: 27, scope: !597, inlinedAt: !601)
!617 = !DILocation(line: 386, column: 17, scope: !599, inlinedAt: !601)
!618 = !DILocation(line: 1630, column: 9, scope: !609, inlinedAt: !615)
!619 = !DILocalVariable(name: "self", arg: 1, scope: !620, file: !139, line: 915, type: !531)
!620 = distinct !DISubprogram(name: "add<i8>", linkageName: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$3add17hfdb0345f57488556E", scope: !140, file: !139, line: 915, type: !621, scopeLine: 915, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !57, retainedNodes: !623)
!621 = !DISubroutineType(types: !622)
!622 = !{!531, !531, !15}
!623 = !{!619, !624}
!624 = !DILocalVariable(name: "count", arg: 2, scope: !620, file: !139, line: 915, type: !15)
!625 = !DILocation(line: 915, column: 29, scope: !620, inlinedAt: !626)
!626 = !DILocation(line: 387, column: 54, scope: !599, inlinedAt: !601)
!627 = !DILocalVariable(name: "self", arg: 1, scope: !628, file: !139, line: 460, type: !531)
!628 = distinct !DISubprogram(name: "offset<i8>", linkageName: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$6offset17haaf3518c7d94e6deE", scope: !140, file: !139, line: 460, type: !629, scopeLine: 460, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !57, retainedNodes: !632)
!629 = !DISubroutineType(types: !630)
!630 = !{!531, !531, !631}
!631 = !DIBasicType(name: "isize", size: 64, encoding: DW_ATE_signed)
!632 = !{!627, !633}
!633 = !DILocalVariable(name: "count", arg: 2, scope: !628, file: !139, line: 460, type: !631)
!634 = !DILocation(line: 460, column: 32, scope: !628, inlinedAt: !635)
!635 = !DILocation(line: 920, column: 23, scope: !620, inlinedAt: !626)
!636 = !DILocation(line: 387, column: 58, scope: !599, inlinedAt: !601)
!637 = !DILocation(line: 915, column: 35, scope: !620, inlinedAt: !626)
!638 = !DILocation(line: 920, column: 30, scope: !620, inlinedAt: !626)
!639 = !DILocation(line: 460, column: 38, scope: !628, inlinedAt: !635)
!640 = !DILocation(line: 465, column: 18, scope: !628, inlinedAt: !635)
!641 = !DILocalVariable(name: "data", arg: 1, scope: !642, file: !73, line: 733, type: !531)
!642 = distinct !DISubprogram(name: "slice_from_raw_parts<i8>", linkageName: "_ZN4core3ptr20slice_from_raw_parts17hcd02a5e50b6f9e3bE", scope: !74, file: !73, line: 733, type: !643, scopeLine: 733, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !57, retainedNodes: !645)
!643 = !DISubroutineType(types: !644)
!644 = !{!590, !531, !15}
!645 = !{!641, !646}
!646 = !DILocalVariable(name: "len", arg: 2, scope: !642, file: !73, line: 733, type: !15)
!647 = !DILocation(line: 733, column: 38, scope: !642, inlinedAt: !648)
!648 = !DILocation(line: 387, column: 13, scope: !599, inlinedAt: !601)
!649 = !DILocalVariable(name: "self", arg: 1, scope: !650, file: !139, line: 58, type: !531)
!650 = distinct !DISubprogram(name: "cast<i8, ()>", linkageName: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17he15dcc3ec60d5d87E", scope: !140, file: !139, line: 58, type: !651, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !95, retainedNodes: !653)
!651 = !DISubroutineType(types: !652)
!652 = !{!144, !531}
!653 = !{!649}
!654 = !DILocation(line: 58, column: 26, scope: !650, inlinedAt: !655)
!655 = !DILocation(line: 734, column: 25, scope: !642, inlinedAt: !648)
!656 = !DILocation(line: 387, column: 71, scope: !599, inlinedAt: !601)
!657 = !DILocation(line: 733, column: 54, scope: !642, inlinedAt: !648)
!658 = !DILocalVariable(name: "metadata", arg: 2, scope: !659, file: !103, line: 113, type: !15)
!659 = distinct !DISubprogram(name: "from_raw_parts<[i8]>", linkageName: "_ZN4core3ptr8metadata14from_raw_parts17h3f7f651bb8134ca5E", scope: !104, file: !103, line: 111, type: !660, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !57, retainedNodes: !662)
!660 = !DISubroutineType(types: !661)
!661 = !{!590, !144, !15}
!662 = !{!663, !658}
!663 = !DILocalVariable(name: "data_address", arg: 1, scope: !659, file: !103, line: 112, type: !144)
!664 = !DILocation(line: 113, column: 5, scope: !659, inlinedAt: !665)
!665 = !DILocation(line: 734, column: 5, scope: !642, inlinedAt: !648)
!666 = !DILocation(line: 59, column: 9, scope: !650, inlinedAt: !655)
!667 = !DILocation(line: 112, column: 5, scope: !659, inlinedAt: !665)
!668 = !DILocation(line: 118, column: 36, scope: !659, inlinedAt: !665)
!669 = !DILocation(line: 118, column: 14, scope: !659, inlinedAt: !665)
!670 = !DILocation(line: 415, column: 6, scope: !574)
!671 = !DILocation(line: 411, column: 13, scope: !574)
!672 = distinct !DISubprogram(name: "run_test_3", scope: !8, file: !7, line: 82, type: !307, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !31, retainedNodes: !673)
!673 = !{!674, !679, !684, !686, !688}
!674 = !DILocalVariable(name: "hex", scope: !675, file: !7, line: 83, type: !676, align: 1)
!675 = distinct !DILexicalBlock(scope: !672, file: !7, line: 83, column: 5)
!676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 80, align: 8, elements: !677)
!677 = !{!678}
!678 = !DISubrange(count: 10, lowerBound: 0)
!679 = !DILocalVariable(name: "bin", scope: !680, file: !7, line: 84, type: !681, align: 1)
!680 = distinct !DILexicalBlock(scope: !675, file: !7, line: 84, column: 5)
!681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 32, align: 8, elements: !682)
!682 = !{!683}
!683 = !DISubrange(count: 4, lowerBound: 0)
!684 = !DILocalVariable(name: "hex_maxlen", scope: !685, file: !7, line: 85, type: !15, align: 8)
!685 = distinct !DILexicalBlock(scope: !680, file: !7, line: 85, column: 5)
!686 = !DILocalVariable(name: "bin_len", scope: !687, file: !7, line: 86, type: !15, align: 8)
!687 = distinct !DILexicalBlock(scope: !685, file: !7, line: 86, column: 5)
!688 = !DILocalVariable(name: "expected_hex", scope: !689, file: !7, line: 90, type: !382, align: 1)
!689 = distinct !DILexicalBlock(scope: !687, file: !7, line: 90, column: 5)
!690 = !DILocation(line: 83, column: 9, scope: !675)
!691 = !DILocation(line: 84, column: 9, scope: !680)
!692 = !DILocation(line: 90, column: 9, scope: !689)
!693 = !DILocation(line: 83, column: 44, scope: !672)
!694 = !DILocation(line: 84, column: 30, scope: !675)
!695 = !DILocation(line: 85, column: 29, scope: !680)
!696 = !DILocation(line: 85, column: 9, scope: !685)
!697 = !DILocation(line: 86, column: 26, scope: !685)
!698 = !DILocation(line: 86, column: 9, scope: !687)
!699 = !DILocation(line: 506, column: 29, scope: !49, inlinedAt: !700)
!700 = distinct !DILocation(line: 88, column: 17, scope: !687)
!701 = !DILocation(line: 476, column: 25, scope: !339, inlinedAt: !702)
!702 = distinct !DILocation(line: 88, column: 47, scope: !687)
!703 = !DILocation(line: 88, column: 5, scope: !687)
!704 = !DILocation(line: 90, column: 48, scope: !687)
!705 = !DILocation(line: 91, column: 5, scope: !689)
!706 = !DILocation(line: 92, column: 2, scope: !672)
!707 = distinct !DISubprogram(name: "index<i8, core::ops::range::RangeTo<usize>, 10>", linkageName: "_ZN4core5array85_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$5index17hc18a83fc52e57499E", scope: !416, file: !415, line: 347, type: !708, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !446, retainedNodes: !711)
!708 = !DISubroutineType(types: !709)
!709 = !{!419, !710, !424, !431}
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&[i8; 10]", baseType: !676, size: 64, align: 64, dwarfAddressSpace: 0)
!711 = !{!712, !713}
!712 = !DILocalVariable(name: "self", arg: 1, scope: !707, file: !415, line: 347, type: !710)
!713 = !DILocalVariable(name: "index", arg: 2, scope: !707, file: !415, line: 347, type: !424)
!714 = !DILocation(line: 347, column: 14, scope: !707)
!715 = !DILocation(line: 347, column: 21, scope: !707)
!716 = !DILocation(line: 348, column: 9, scope: !707)
!717 = !DILocation(line: 349, column: 6, scope: !707)
!718 = distinct !DISubprogram(name: "eq<i8, i8, 9>", linkageName: "_ZN4core5array8equality92_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$A$u3b$$u20$N$u5d$$GT$$u20$for$u20$$u5b$B$u5d$$GT$2eq17h4f0dda4e9fdf6fbeE", scope: !453, file: !350, line: 48, type: !719, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !360, retainedNodes: !721)
!719 = !DISubroutineType(types: !720)
!720 = !{!309, !419, !423}
!721 = !{!722, !723, !724, !741}
!722 = !DILocalVariable(name: "self", arg: 1, scope: !718, file: !350, line: 48, type: !419)
!723 = !DILocalVariable(name: "other", arg: 2, scope: !718, file: !350, line: 48, type: !423)
!724 = !DILocalVariable(name: "b", scope: !725, file: !350, line: 49, type: !726, align: 8)
!725 = distinct !DILexicalBlock(scope: !718, file: !350, line: 49, column: 9)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Result<&[i8; 9], core::array::TryFromSliceError>", scope: !463, file: !26, size: 64, align: 64, elements: !727, templateParams: !31, identifier: "f06e6081038d79f582a948a44a9790b1")
!727 = !{!728}
!728 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !726, file: !26, size: 64, align: 64, elements: !729, templateParams: !31, identifier: "82a06b363633412a37a6ffc543b45526", discriminator: !740)
!729 = !{!730, !736}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "Ok", scope: !728, file: !26, baseType: !731, size: 64, align: 64)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Ok", scope: !726, file: !26, size: 64, align: 64, elements: !732, templateParams: !734, identifier: "e10be146d26b8fadf78a28bb6c7abcf1")
!732 = !{!733}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !731, file: !26, baseType: !423, size: 64, align: 64)
!734 = !{!735, !473}
!735 = !DITemplateTypeParameter(name: "T", type: !423)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "Err", scope: !728, file: !26, baseType: !737, size: 64, align: 64, extraData: i64 0)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Err", scope: !726, file: !26, size: 64, align: 64, elements: !738, templateParams: !734, identifier: "2ed32d60eb68428030774b2ac3cd3a21")
!738 = !{!739}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !737, file: !26, baseType: !474, align: 8)
!740 = !DIDerivedType(tag: DW_TAG_member, scope: !726, file: !26, baseType: !482, size: 64, align: 64, flags: DIFlagArtificial)
!741 = !DILocalVariable(name: "b", scope: !742, file: !350, line: 51, type: !423, align: 8)
!742 = distinct !DILexicalBlock(scope: !725, file: !350, line: 51, column: 13)
!743 = !DILocation(line: 48, column: 11, scope: !718)
!744 = !DILocalVariable(name: "self", arg: 1, scope: !745, file: !488, line: 768, type: !419)
!745 = distinct !DISubprogram(name: "try_into<&[i8], &[i8; 9]>", linkageName: "_ZN53_$LT$T$u20$as$u20$core..convert..TryInto$LT$U$GT$$GT$8try_into17h73c9bdedda897a97E", scope: !489, file: !488, line: 768, type: !746, scopeLine: 768, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !749, retainedNodes: !748)
!746 = !DISubroutineType(types: !747)
!747 = !{!726, !419}
!748 = !{!744}
!749 = !{!495, !750}
!750 = !DITemplateTypeParameter(name: "U", type: !423)
!751 = !DILocation(line: 768, column: 17, scope: !745, inlinedAt: !752)
!752 = !DILocation(line: 49, column: 42, scope: !718)
!753 = !DILocation(line: 48, column: 18, scope: !718)
!754 = !DILocalVariable(name: "other", arg: 2, scope: !755, file: !350, line: 10, type: !423)
!755 = distinct !DISubprogram(name: "eq<i8, i8, 9>", linkageName: "_ZN4core5array8equality103_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$B$u3b$$u20$N$u5d$$GT$$u20$for$u20$$u5b$A$u3b$$u20$N$u5d$$GT$2eq17h4e491b6100ae09cfE", scope: !351, file: !350, line: 10, type: !756, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !360, retainedNodes: !758)
!756 = !DISubroutineType(types: !757)
!757 = !{!309, !423, !423}
!758 = !{!759, !754}
!759 = !DILocalVariable(name: "self", arg: 1, scope: !755, file: !350, line: 10, type: !423)
!760 = !DILocation(line: 10, column: 18, scope: !755, inlinedAt: !761)
!761 = !DILocation(line: 51, column: 22, scope: !742)
!762 = !DILocation(line: 49, column: 13, scope: !725)
!763 = !DILocation(line: 769, column: 9, scope: !745, inlinedAt: !752)
!764 = !DILocation(line: 50, column: 15, scope: !725)
!765 = !DILocation(line: 50, column: 9, scope: !725)
!766 = !DILocation(line: 51, column: 16, scope: !725)
!767 = !DILocation(line: 51, column: 16, scope: !742)
!768 = !DILocation(line: 10, column: 11, scope: !755, inlinedAt: !761)
!769 = !DILocation(line: 11, column: 9, scope: !755, inlinedAt: !761)
!770 = !DILocation(line: 52, column: 23, scope: !725)
!771 = !DILocation(line: 54, column: 6, scope: !718)
!772 = distinct !DISubprogram(name: "try_from<i8, 9>", linkageName: "_ZN4core5array102_$LT$impl$u20$core..convert..TryFrom$LT$$RF$$u5b$T$u5d$$GT$$u20$for$u20$$RF$$u5b$T$u3b$$u20$N$u5d$$GT$8try_from17h1518fe4d4caa8597E", scope: !520, file: !415, line: 254, type: !746, scopeLine: 254, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !57, retainedNodes: !773)
!773 = !{!774, !775}
!774 = !DILocalVariable(name: "slice", arg: 1, scope: !772, file: !415, line: 254, type: !419)
!775 = !DILocalVariable(name: "ptr", scope: !776, file: !415, line: 256, type: !777, align: 8)
!776 = distinct !DILexicalBlock(scope: !772, file: !415, line: 256, column: 13)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const [i8; 9]", baseType: !382, size: 64, align: 64, dwarfAddressSpace: 0)
!778 = !DILocation(line: 254, column: 17, scope: !772)
!779 = !DILocalVariable(name: "self", arg: 1, scope: !780, file: !50, line: 476, type: !419)
!780 = distinct !DISubprogram(name: "as_ptr<i8>", linkageName: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17ha9b82327818fffcaE", scope: !51, file: !50, line: 476, type: !529, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !57, retainedNodes: !781)
!781 = !{!779}
!782 = !DILocation(line: 476, column: 25, scope: !780, inlinedAt: !783)
!783 = !DILocation(line: 256, column: 29, scope: !772)
!784 = !DILocation(line: 255, column: 12, scope: !772)
!785 = !DILocation(line: 260, column: 13, scope: !772)
!786 = !DILocation(line: 255, column: 9, scope: !772)
!787 = !DILocation(line: 256, column: 23, scope: !772)
!788 = !DILocation(line: 256, column: 17, scope: !776)
!789 = !DILocation(line: 258, column: 22, scope: !776)
!790 = !DILocation(line: 262, column: 6, scope: !772)
!791 = distinct !DISubprogram(name: "spec_eq<i8, i8, 9>", linkageName: "_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h1377638be9c59522E", scope: !368, file: !350, line: 147, type: !756, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !372, retainedNodes: !792)
!792 = !{!793, !794}
!793 = !DILocalVariable(name: "a", arg: 1, scope: !791, file: !350, line: 147, type: !423)
!794 = !DILocalVariable(name: "b", arg: 2, scope: !791, file: !350, line: 147, type: !423)
!795 = !DILocation(line: 147, column: 16, scope: !791)
!796 = !DILocation(line: 147, column: 28, scope: !791)
!797 = !DILocation(line: 151, column: 18, scope: !791)
!798 = !DILocation(line: 152, column: 6, scope: !791)
!799 = distinct !DISubprogram(name: "run_test_4", scope: !8, file: !7, line: 95, type: !307, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !31, retainedNodes: !800)
!800 = !{!801, !806, !811, !813, !815}
!801 = !DILocalVariable(name: "hex", scope: !802, file: !7, line: 96, type: !803, align: 1)
!802 = distinct !DILexicalBlock(scope: !799, file: !7, line: 96, column: 5)
!803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 208, align: 8, elements: !804)
!804 = !{!805}
!805 = !DISubrange(count: 26, lowerBound: 0)
!806 = !DILocalVariable(name: "bin", scope: !807, file: !7, line: 97, type: !808, align: 1)
!807 = distinct !DILexicalBlock(scope: !802, file: !7, line: 97, column: 5)
!808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 96, align: 8, elements: !809)
!809 = !{!810}
!810 = !DISubrange(count: 12, lowerBound: 0)
!811 = !DILocalVariable(name: "hex_maxlen", scope: !812, file: !7, line: 98, type: !15, align: 8)
!812 = distinct !DILexicalBlock(scope: !807, file: !7, line: 98, column: 5)
!813 = !DILocalVariable(name: "bin_len", scope: !814, file: !7, line: 99, type: !15, align: 8)
!814 = distinct !DILexicalBlock(scope: !812, file: !7, line: 99, column: 5)
!815 = !DILocalVariable(name: "expected_hex", scope: !816, file: !7, line: 103, type: !817, align: 1)
!816 = distinct !DILexicalBlock(scope: !814, file: !7, line: 103, column: 5)
!817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 200, align: 8, elements: !818)
!818 = !{!819}
!819 = !DISubrange(count: 25, lowerBound: 0)
!820 = !DILocation(line: 96, column: 9, scope: !802)
!821 = !DILocation(line: 97, column: 9, scope: !807)
!822 = !DILocation(line: 103, column: 9, scope: !816)
!823 = !DILocation(line: 96, column: 44, scope: !799)
!824 = !DILocation(line: 97, column: 31, scope: !802)
!825 = !DILocation(line: 98, column: 29, scope: !807)
!826 = !DILocation(line: 98, column: 9, scope: !812)
!827 = !DILocation(line: 99, column: 26, scope: !812)
!828 = !DILocation(line: 99, column: 9, scope: !814)
!829 = !DILocation(line: 506, column: 29, scope: !49, inlinedAt: !830)
!830 = distinct !DILocation(line: 101, column: 17, scope: !814)
!831 = !DILocation(line: 476, column: 25, scope: !339, inlinedAt: !832)
!832 = distinct !DILocation(line: 101, column: 47, scope: !814)
!833 = !DILocation(line: 101, column: 5, scope: !814)
!834 = !DILocation(line: 103, column: 49, scope: !814)
!835 = !DILocation(line: 104, column: 5, scope: !816)
!836 = !DILocation(line: 105, column: 2, scope: !799)
!837 = distinct !DISubprogram(name: "index<i8, core::ops::range::RangeTo<usize>, 26>", linkageName: "_ZN4core5array85_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$5index17h2b3a130d449703b1E", scope: !416, file: !415, line: 347, type: !838, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !446, retainedNodes: !841)
!838 = !DISubroutineType(types: !839)
!839 = !{!419, !840, !424, !431}
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&[i8; 26]", baseType: !803, size: 64, align: 64, dwarfAddressSpace: 0)
!841 = !{!842, !843}
!842 = !DILocalVariable(name: "self", arg: 1, scope: !837, file: !415, line: 347, type: !840)
!843 = !DILocalVariable(name: "index", arg: 2, scope: !837, file: !415, line: 347, type: !424)
!844 = !DILocation(line: 347, column: 14, scope: !837)
!845 = !DILocation(line: 347, column: 21, scope: !837)
!846 = !DILocation(line: 348, column: 9, scope: !837)
!847 = !DILocation(line: 349, column: 6, scope: !837)
!848 = distinct !DISubprogram(name: "eq<i8, i8, 25>", linkageName: "_ZN4core5array8equality92_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$A$u3b$$u20$N$u5d$$GT$$u20$for$u20$$u5b$B$u5d$$GT$2eq17h08dc17811ba7d026E", scope: !453, file: !350, line: 48, type: !849, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !360, retainedNodes: !852)
!849 = !DISubroutineType(types: !850)
!850 = !{!309, !419, !851}
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&[i8; 25]", baseType: !817, size: 64, align: 64, dwarfAddressSpace: 0)
!852 = !{!853, !854, !855, !872}
!853 = !DILocalVariable(name: "self", arg: 1, scope: !848, file: !350, line: 48, type: !419)
!854 = !DILocalVariable(name: "other", arg: 2, scope: !848, file: !350, line: 48, type: !851)
!855 = !DILocalVariable(name: "b", scope: !856, file: !350, line: 49, type: !857, align: 8)
!856 = distinct !DILexicalBlock(scope: !848, file: !350, line: 49, column: 9)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Result<&[i8; 25], core::array::TryFromSliceError>", scope: !463, file: !26, size: 64, align: 64, elements: !858, templateParams: !31, identifier: "c7bcc43b7d8f2f6a9e9e3dbc9581b81f")
!858 = !{!859}
!859 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !857, file: !26, size: 64, align: 64, elements: !860, templateParams: !31, identifier: "52502e17c30a2d308c4f47c2b5d74c4b", discriminator: !871)
!860 = !{!861, !867}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "Ok", scope: !859, file: !26, baseType: !862, size: 64, align: 64)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Ok", scope: !857, file: !26, size: 64, align: 64, elements: !863, templateParams: !865, identifier: "a4e38bafc411625fa83e248d237c6263")
!863 = !{!864}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !862, file: !26, baseType: !851, size: 64, align: 64)
!865 = !{!866, !473}
!866 = !DITemplateTypeParameter(name: "T", type: !851)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "Err", scope: !859, file: !26, baseType: !868, size: 64, align: 64, extraData: i64 0)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Err", scope: !857, file: !26, size: 64, align: 64, elements: !869, templateParams: !865, identifier: "a45a44359a7465224b5238655dd15cae")
!869 = !{!870}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !868, file: !26, baseType: !474, align: 8)
!871 = !DIDerivedType(tag: DW_TAG_member, scope: !857, file: !26, baseType: !482, size: 64, align: 64, flags: DIFlagArtificial)
!872 = !DILocalVariable(name: "b", scope: !873, file: !350, line: 51, type: !851, align: 8)
!873 = distinct !DILexicalBlock(scope: !856, file: !350, line: 51, column: 13)
!874 = !DILocation(line: 48, column: 11, scope: !848)
!875 = !DILocalVariable(name: "self", arg: 1, scope: !876, file: !488, line: 768, type: !419)
!876 = distinct !DISubprogram(name: "try_into<&[i8], &[i8; 25]>", linkageName: "_ZN53_$LT$T$u20$as$u20$core..convert..TryInto$LT$U$GT$$GT$8try_into17h16650f99b3ed7c64E", scope: !489, file: !488, line: 768, type: !877, scopeLine: 768, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !880, retainedNodes: !879)
!877 = !DISubroutineType(types: !878)
!878 = !{!857, !419}
!879 = !{!875}
!880 = !{!495, !881}
!881 = !DITemplateTypeParameter(name: "U", type: !851)
!882 = !DILocation(line: 768, column: 17, scope: !876, inlinedAt: !883)
!883 = !DILocation(line: 49, column: 42, scope: !848)
!884 = !DILocation(line: 48, column: 18, scope: !848)
!885 = !DILocalVariable(name: "other", arg: 2, scope: !886, file: !350, line: 10, type: !851)
!886 = distinct !DISubprogram(name: "eq<i8, i8, 25>", linkageName: "_ZN4core5array8equality103_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$B$u3b$$u20$N$u5d$$GT$$u20$for$u20$$u5b$A$u3b$$u20$N$u5d$$GT$2eq17h6d87e59ea85ea72aE", scope: !351, file: !350, line: 10, type: !887, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !360, retainedNodes: !889)
!887 = !DISubroutineType(types: !888)
!888 = !{!309, !851, !851}
!889 = !{!890, !885}
!890 = !DILocalVariable(name: "self", arg: 1, scope: !886, file: !350, line: 10, type: !851)
!891 = !DILocation(line: 10, column: 18, scope: !886, inlinedAt: !892)
!892 = !DILocation(line: 51, column: 22, scope: !873)
!893 = !DILocation(line: 49, column: 13, scope: !856)
!894 = !DILocation(line: 769, column: 9, scope: !876, inlinedAt: !883)
!895 = !DILocation(line: 50, column: 15, scope: !856)
!896 = !DILocation(line: 50, column: 9, scope: !856)
!897 = !DILocation(line: 51, column: 16, scope: !856)
!898 = !DILocation(line: 51, column: 16, scope: !873)
!899 = !DILocation(line: 10, column: 11, scope: !886, inlinedAt: !892)
!900 = !DILocation(line: 11, column: 9, scope: !886, inlinedAt: !892)
!901 = !DILocation(line: 52, column: 23, scope: !856)
!902 = !DILocation(line: 54, column: 6, scope: !848)
!903 = distinct !DISubprogram(name: "try_from<i8, 25>", linkageName: "_ZN4core5array102_$LT$impl$u20$core..convert..TryFrom$LT$$RF$$u5b$T$u5d$$GT$$u20$for$u20$$RF$$u5b$T$u3b$$u20$N$u5d$$GT$8try_from17ha3b40aa3b1a9259fE", scope: !520, file: !415, line: 254, type: !877, scopeLine: 254, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !57, retainedNodes: !904)
!904 = !{!905, !906}
!905 = !DILocalVariable(name: "slice", arg: 1, scope: !903, file: !415, line: 254, type: !419)
!906 = !DILocalVariable(name: "ptr", scope: !907, file: !415, line: 256, type: !908, align: 8)
!907 = distinct !DILexicalBlock(scope: !903, file: !415, line: 256, column: 13)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const [i8; 25]", baseType: !817, size: 64, align: 64, dwarfAddressSpace: 0)
!909 = !DILocation(line: 254, column: 17, scope: !903)
!910 = !DILocalVariable(name: "self", arg: 1, scope: !911, file: !50, line: 476, type: !419)
!911 = distinct !DISubprogram(name: "as_ptr<i8>", linkageName: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17ha9b82327818fffcaE", scope: !51, file: !50, line: 476, type: !529, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !57, retainedNodes: !912)
!912 = !{!910}
!913 = !DILocation(line: 476, column: 25, scope: !911, inlinedAt: !914)
!914 = !DILocation(line: 256, column: 29, scope: !903)
!915 = !DILocation(line: 255, column: 12, scope: !903)
!916 = !DILocation(line: 260, column: 13, scope: !903)
!917 = !DILocation(line: 255, column: 9, scope: !903)
!918 = !DILocation(line: 256, column: 23, scope: !903)
!919 = !DILocation(line: 256, column: 17, scope: !907)
!920 = !DILocation(line: 258, column: 22, scope: !907)
!921 = !DILocation(line: 262, column: 6, scope: !903)
!922 = distinct !DISubprogram(name: "spec_eq<i8, i8, 25>", linkageName: "_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17hbb19462c0f9dbab8E", scope: !368, file: !350, line: 147, type: !887, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !372, retainedNodes: !923)
!923 = !{!924, !925}
!924 = !DILocalVariable(name: "a", arg: 1, scope: !922, file: !350, line: 147, type: !851)
!925 = !DILocalVariable(name: "b", arg: 2, scope: !922, file: !350, line: 147, type: !851)
!926 = !DILocation(line: 147, column: 16, scope: !922)
!927 = !DILocation(line: 147, column: 28, scope: !922)
!928 = !DILocation(line: 151, column: 18, scope: !922)
!929 = !DILocation(line: 152, column: 6, scope: !922)
!930 = distinct !DISubprogram(name: "run_test_5", scope: !8, file: !7, line: 108, type: !307, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !31, retainedNodes: !931)
!931 = !{!932, !934, !936, !938, !940}
!932 = !DILocalVariable(name: "hex", scope: !933, file: !7, line: 109, type: !394, align: 1)
!933 = distinct !DILexicalBlock(scope: !930, file: !7, line: 109, column: 5)
!934 = !DILocalVariable(name: "bin", scope: !935, file: !7, line: 110, type: !387, align: 1)
!935 = distinct !DILexicalBlock(scope: !933, file: !7, line: 110, column: 5)
!936 = !DILocalVariable(name: "hex_maxlen", scope: !937, file: !7, line: 111, type: !15, align: 8)
!937 = distinct !DILexicalBlock(scope: !935, file: !7, line: 111, column: 5)
!938 = !DILocalVariable(name: "bin_len", scope: !939, file: !7, line: 112, type: !15, align: 8)
!939 = distinct !DILexicalBlock(scope: !937, file: !7, line: 112, column: 5)
!940 = !DILocalVariable(name: "expected_hex", scope: !941, file: !7, line: 116, type: !942, align: 1)
!941 = distinct !DILexicalBlock(scope: !939, file: !7, line: 116, column: 5)
!942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 56, align: 8, elements: !943)
!943 = !{!944}
!944 = !DISubrange(count: 7, lowerBound: 0)
!945 = !DILocation(line: 109, column: 9, scope: !933)
!946 = !DILocation(line: 110, column: 9, scope: !935)
!947 = !DILocation(line: 116, column: 9, scope: !941)
!948 = !DILocation(line: 109, column: 43, scope: !930)
!949 = !DILocation(line: 110, column: 30, scope: !933)
!950 = !DILocation(line: 111, column: 29, scope: !935)
!951 = !DILocation(line: 111, column: 9, scope: !937)
!952 = !DILocation(line: 112, column: 26, scope: !937)
!953 = !DILocation(line: 112, column: 9, scope: !939)
!954 = !DILocation(line: 506, column: 29, scope: !49, inlinedAt: !955)
!955 = distinct !DILocation(line: 114, column: 17, scope: !939)
!956 = !DILocation(line: 476, column: 25, scope: !339, inlinedAt: !957)
!957 = distinct !DILocation(line: 114, column: 47, scope: !939)
!958 = !DILocation(line: 114, column: 5, scope: !939)
!959 = !DILocation(line: 116, column: 48, scope: !939)
!960 = !DILocation(line: 117, column: 5, scope: !941)
!961 = !DILocation(line: 118, column: 2, scope: !930)
!962 = distinct !DISubprogram(name: "index<i8, core::ops::range::RangeTo<usize>, 8>", linkageName: "_ZN4core5array85_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$5index17h03facd33b536693cE", scope: !416, file: !415, line: 347, type: !963, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !446, retainedNodes: !965)
!963 = !DISubroutineType(types: !964)
!964 = !{!419, !456, !424, !431}
!965 = !{!966, !967}
!966 = !DILocalVariable(name: "self", arg: 1, scope: !962, file: !415, line: 347, type: !456)
!967 = !DILocalVariable(name: "index", arg: 2, scope: !962, file: !415, line: 347, type: !424)
!968 = !DILocation(line: 347, column: 14, scope: !962)
!969 = !DILocation(line: 347, column: 21, scope: !962)
!970 = !DILocation(line: 348, column: 9, scope: !962)
!971 = !DILocation(line: 349, column: 6, scope: !962)
!972 = distinct !DISubprogram(name: "eq<i8, i8, 7>", linkageName: "_ZN4core5array8equality92_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$A$u3b$$u20$N$u5d$$GT$$u20$for$u20$$u5b$B$u5d$$GT$2eq17hffd0bbbc4e4061dfE", scope: !453, file: !350, line: 48, type: !973, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !360, retainedNodes: !976)
!973 = !DISubroutineType(types: !974)
!974 = !{!309, !419, !975}
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&[i8; 7]", baseType: !942, size: 64, align: 64, dwarfAddressSpace: 0)
!976 = !{!977, !978, !979, !996}
!977 = !DILocalVariable(name: "self", arg: 1, scope: !972, file: !350, line: 48, type: !419)
!978 = !DILocalVariable(name: "other", arg: 2, scope: !972, file: !350, line: 48, type: !975)
!979 = !DILocalVariable(name: "b", scope: !980, file: !350, line: 49, type: !981, align: 8)
!980 = distinct !DILexicalBlock(scope: !972, file: !350, line: 49, column: 9)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Result<&[i8; 7], core::array::TryFromSliceError>", scope: !463, file: !26, size: 64, align: 64, elements: !982, templateParams: !31, identifier: "121462e81cc8238da3e7fa811c75f1")
!982 = !{!983}
!983 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !981, file: !26, size: 64, align: 64, elements: !984, templateParams: !31, identifier: "a5f2a38d8f0dc9252df661f5ac2d075d", discriminator: !995)
!984 = !{!985, !991}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "Ok", scope: !983, file: !26, baseType: !986, size: 64, align: 64)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Ok", scope: !981, file: !26, size: 64, align: 64, elements: !987, templateParams: !989, identifier: "87ecfe72d87472e082df39675950b9e1")
!987 = !{!988}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !986, file: !26, baseType: !975, size: 64, align: 64)
!989 = !{!990, !473}
!990 = !DITemplateTypeParameter(name: "T", type: !975)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "Err", scope: !983, file: !26, baseType: !992, size: 64, align: 64, extraData: i64 0)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Err", scope: !981, file: !26, size: 64, align: 64, elements: !993, templateParams: !989, identifier: "104152bbe7cc1b34511d1a34eb91956")
!993 = !{!994}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !992, file: !26, baseType: !474, align: 8)
!995 = !DIDerivedType(tag: DW_TAG_member, scope: !981, file: !26, baseType: !482, size: 64, align: 64, flags: DIFlagArtificial)
!996 = !DILocalVariable(name: "b", scope: !997, file: !350, line: 51, type: !975, align: 8)
!997 = distinct !DILexicalBlock(scope: !980, file: !350, line: 51, column: 13)
!998 = !DILocation(line: 48, column: 11, scope: !972)
!999 = !DILocalVariable(name: "self", arg: 1, scope: !1000, file: !488, line: 768, type: !419)
!1000 = distinct !DISubprogram(name: "try_into<&[i8], &[i8; 7]>", linkageName: "_ZN53_$LT$T$u20$as$u20$core..convert..TryInto$LT$U$GT$$GT$8try_into17hf50537b5ef5b250fE", scope: !489, file: !488, line: 768, type: !1001, scopeLine: 768, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !1004, retainedNodes: !1003)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!981, !419}
!1003 = !{!999}
!1004 = !{!495, !1005}
!1005 = !DITemplateTypeParameter(name: "U", type: !975)
!1006 = !DILocation(line: 768, column: 17, scope: !1000, inlinedAt: !1007)
!1007 = !DILocation(line: 49, column: 42, scope: !972)
!1008 = !DILocation(line: 48, column: 18, scope: !972)
!1009 = !DILocalVariable(name: "other", arg: 2, scope: !1010, file: !350, line: 10, type: !975)
!1010 = distinct !DISubprogram(name: "eq<i8, i8, 7>", linkageName: "_ZN4core5array8equality103_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$B$u3b$$u20$N$u5d$$GT$$u20$for$u20$$u5b$A$u3b$$u20$N$u5d$$GT$2eq17h7e882bc33f607427E", scope: !351, file: !350, line: 10, type: !1011, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !360, retainedNodes: !1013)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!309, !975, !975}
!1013 = !{!1014, !1009}
!1014 = !DILocalVariable(name: "self", arg: 1, scope: !1010, file: !350, line: 10, type: !975)
!1015 = !DILocation(line: 10, column: 18, scope: !1010, inlinedAt: !1016)
!1016 = !DILocation(line: 51, column: 22, scope: !997)
!1017 = !DILocation(line: 49, column: 13, scope: !980)
!1018 = !DILocation(line: 769, column: 9, scope: !1000, inlinedAt: !1007)
!1019 = !DILocation(line: 50, column: 15, scope: !980)
!1020 = !DILocation(line: 50, column: 9, scope: !980)
!1021 = !DILocation(line: 51, column: 16, scope: !980)
!1022 = !DILocation(line: 51, column: 16, scope: !997)
!1023 = !DILocation(line: 10, column: 11, scope: !1010, inlinedAt: !1016)
!1024 = !DILocation(line: 11, column: 9, scope: !1010, inlinedAt: !1016)
!1025 = !DILocation(line: 52, column: 23, scope: !980)
!1026 = !DILocation(line: 54, column: 6, scope: !972)
!1027 = distinct !DISubprogram(name: "try_from<i8, 7>", linkageName: "_ZN4core5array102_$LT$impl$u20$core..convert..TryFrom$LT$$RF$$u5b$T$u5d$$GT$$u20$for$u20$$RF$$u5b$T$u3b$$u20$N$u5d$$GT$8try_from17hc01fb3f685ef4b13E", scope: !520, file: !415, line: 254, type: !1001, scopeLine: 254, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !57, retainedNodes: !1028)
!1028 = !{!1029, !1030}
!1029 = !DILocalVariable(name: "slice", arg: 1, scope: !1027, file: !415, line: 254, type: !419)
!1030 = !DILocalVariable(name: "ptr", scope: !1031, file: !415, line: 256, type: !1032, align: 8)
!1031 = distinct !DILexicalBlock(scope: !1027, file: !415, line: 256, column: 13)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const [i8; 7]", baseType: !942, size: 64, align: 64, dwarfAddressSpace: 0)
!1033 = !DILocation(line: 254, column: 17, scope: !1027)
!1034 = !DILocalVariable(name: "self", arg: 1, scope: !1035, file: !50, line: 476, type: !419)
!1035 = distinct !DISubprogram(name: "as_ptr<i8>", linkageName: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17ha9b82327818fffcaE", scope: !51, file: !50, line: 476, type: !529, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !57, retainedNodes: !1036)
!1036 = !{!1034}
!1037 = !DILocation(line: 476, column: 25, scope: !1035, inlinedAt: !1038)
!1038 = !DILocation(line: 256, column: 29, scope: !1027)
!1039 = !DILocation(line: 255, column: 12, scope: !1027)
!1040 = !DILocation(line: 260, column: 13, scope: !1027)
!1041 = !DILocation(line: 255, column: 9, scope: !1027)
!1042 = !DILocation(line: 256, column: 23, scope: !1027)
!1043 = !DILocation(line: 256, column: 17, scope: !1031)
!1044 = !DILocation(line: 258, column: 22, scope: !1031)
!1045 = !DILocation(line: 262, column: 6, scope: !1027)
!1046 = distinct !DISubprogram(name: "spec_eq<i8, i8, 7>", linkageName: "_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17he77690f5c474b9ddE", scope: !368, file: !350, line: 147, type: !1011, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !372, retainedNodes: !1047)
!1047 = !{!1048, !1049}
!1048 = !DILocalVariable(name: "a", arg: 1, scope: !1046, file: !350, line: 147, type: !975)
!1049 = !DILocalVariable(name: "b", arg: 2, scope: !1046, file: !350, line: 147, type: !975)
!1050 = !DILocation(line: 147, column: 16, scope: !1046)
!1051 = !DILocation(line: 147, column: 28, scope: !1046)
!1052 = !DILocation(line: 151, column: 18, scope: !1046)
!1053 = !DILocation(line: 152, column: 6, scope: !1046)
