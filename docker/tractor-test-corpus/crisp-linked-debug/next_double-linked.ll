; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; ASSERT EQ: i1 1 = call i1 @run_test_1()
; ASSERT EQ: i1 1 = call i1 @run_test_2()
; ASSERT EQ: i1 1 = call i1 @run_test_3()
; ASSERT EQ: i1 1 = call i1 @run_test_4()
; ASSERT EQ: i1 1 = call i1 @run_test_5()
; ASSERT EQ: i1 1 = call i1 @run_test_6()
; ASSERT EQ: i1 1 = call i1 @run_test_7()
; ASSERT EQ: i1 1 = call i1 @run_test_8()
; ASSERT EQ: i1 1 = call i1 @run_test_9()
; ASSERT EQ: i1 1 = call i1 @run_test_10()
; ASSERT EQ: i1 1 = call i1 @run_test_11()
; ASSERT EQ: i1 1 = call i1 @run_test_12()
; ASSERT EQ: i1 1 = call i1 @run_test_13()
; ASSERT EQ: i1 1 = call i1 @run_test_14()
; ASSERT EQ: i1 1 = call i1 @run_test_15()
; ASSERT EQ: i1 1 = call i1 @run_test_16()
; ASSERT EQ: i1 1 = call i1 @run_test_17()
; ASSERT EQ: i1 1 = call i1 @run_test_18()
; ASSERT EQ: i1 1 = call i1 @run_test_19()
; ASSERT EQ: i1 1 = call i1 @run_test_20()
; ASSERT EQ: i1 1 = call i1 @run_test_21()
; ASSERT EQ: i1 1 = call i1 @run_test_22()
; ASSERT EQ: i1 1 = call i1 @run_test_23()
; ASSERT EQ: i1 1 = call i1 @run_test_24()
; ASSERT EQ: i1 1 = call i1 @run_test_25()
; ASSERT EQ: i1 1 = call i1 @run_test_26()
; ASSERT EQ: i1 1 = call i1 @run_test_27()
; ASSERT EQ: i1 1 = call i1 @run_test_28()
; ASSERT EQ: i1 1 = call i1 @run_test_29()
; ASSERT EQ: i1 1 = call i1 @run_test_30()
; ASSERT EQ: i1 1 = call i1 @run_test_31()
; ASSERT EQ: i1 1 = call i1 @run_test_32()
; ASSERT EQ: i1 1 = call i1 @run_test_33()
; ASSERT EQ: i1 1 = call i1 @run_test_34()
; ASSERT EQ: i1 1 = call i1 @run_test_35()
; ASSERT EQ: i1 1 = call i1 @run_test_36()
; ASSERT EQ: i1 1 = call i1 @run_test_37()
; ASSERT EQ: i1 1 = call i1 @run_test_38()
; ASSERT EQ: i1 1 = call i1 @run_test_39()
; ASSERT EQ: i1 1 = call i1 @run_test_40()
; ASSERT EQ: i1 1 = call i1 @run_test_41()
; ASSERT EQ: i1 1 = call i1 @run_test_42()
; ASSERT EQ: i1 1 = call i1 @run_test_43()
; ASSERT EQ: i1 1 = call i1 @run_test_44()
; ASSERT EQ: i1 1 = call i1 @run_test_45()
; ASSERT EQ: i1 1 = call i1 @run_test_46()
; ASSERT EQ: i1 1 = call i1 @run_test_47()
; ASSERT EQ: i1 1 = call i1 @run_test_48()
; ASSERT EQ: i1 1 = call i1 @run_test_49()
; ASSERT EQ: i1 1 = call i1 @run_test_50()
; ASSERT EQ: i1 1 = call i1 @run_test_51()
; ASSERT EQ: i1 1 = call i1 @run_test_52()
; ASSERT EQ: i1 1 = call i1 @run_test_53()
; ASSERT EQ: i1 1 = call i1 @run_test_54()
; ASSERT EQ: i1 1 = call i1 @run_test_55()
; ASSERT EQ: i1 1 = call i1 @run_test_56()
; ASSERT EQ: i1 1 = call i1 @run_test_57()
; ASSERT EQ: i1 1 = call i1 @run_test_58()
; ASSERT EQ: i1 1 = call i1 @run_test_59()
; ASSERT EQ: i1 1 = call i1 @run_test_60()
; ASSERT EQ: i1 1 = call i1 @run_test_61()
; ASSERT EQ: i1 1 = call i1 @run_test_62()
; ASSERT EQ: i1 1 = call i1 @run_test_63()
; ASSERT EQ: i1 1 = call i1 @run_test_64()
; ASSERT EQ: i1 1 = call i1 @run_test_65()
; ASSERT EQ: i1 1 = call i1 @run_test_66()
; ASSERT EQ: i1 1 = call i1 @run_test_67()
; ASSERT EQ: i1 1 = call i1 @run_test_68()
; ASSERT EQ: i1 1 = call i1 @run_test_69()
; ASSERT EQ: i1 1 = call i1 @run_test_70()
; ASSERT EQ: i1 1 = call i1 @run_test_71()
; ASSERT EQ: i1 1 = call i1 @run_test_72()
; ASSERT EQ: i1 1 = call i1 @run_test_73()
; ASSERT EQ: i1 1 = call i1 @run_test_74()
; ASSERT EQ: i1 1 = call i1 @run_test_75()

%"src::lib::CnRndT" = type { [2 x i64] }

@alloc_f5ffd2fd1476bab43ad89fb40c72d0c5 = private unnamed_addr constant <{ [10 x i8] }> <{ [10 x i8] c"src/lib.rs" }>, align 1
@alloc_c7ad444e4217bf96568d3e4838ae0630 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\1C\00\00\00\11\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define double @next_double(ptr %rnd) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !6 {
start:
  %rnd.dbg.spill = alloca ptr, align 8
  store ptr %rnd, ptr %rnd.dbg.spill, align 8
    #dbg_declare(ptr %rnd.dbg.spill, !25, !DIExpression(), !26)
  %_4 = ptrtoint ptr %rnd to i64, !dbg !27
  %_7 = and i64 %_4, 7, !dbg !27
  %_8 = icmp eq i64 %_7, 0, !dbg !27
  %0 = call i1 @llvm.expect.i1(i1 %_8, i1 true), !dbg !27
  br i1 %0, label %bb2, label %panic, !dbg !27

bb2:                                              ; preds = %start
  %1 = call double @_ZN15next_double_lib3src3lib11next_double17hdc97fe7af77a0959E(ptr align 8 %rnd), !dbg !28
  ret double %1, !dbg !29

panic:                                            ; preds = %start
  invoke void @_ZN4core9panicking36panic_misaligned_pointer_dereference17h587229c42ea18e2bE(i64 8, i64 %_4, ptr align 8 @alloc_c7ad444e4217bf96568d3e4838ae0630) #6
          to label %unreachable unwind label %terminate, !dbg !27

terminate:                                        ; preds = %panic
  %2 = landingpad { ptr, i32 }
          cleanup
  %3 = extractvalue { ptr, i32 } %2, 0
  %4 = extractvalue { ptr, i32 } %2, 1
  call void @_ZN4core9panicking19panic_cannot_unwind17h629e1da841ab4abfE() #7, !dbg !30
  unreachable, !dbg !30

unreachable:                                      ; preds = %panic
  unreachable
}

; Function Attrs: nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.expect.i1(i1, i1) #1

; Function Attrs: nonlazybind uwtable
define internal double @_ZN15next_double_lib3src3lib11next_double17hdc97fe7af77a0959E(ptr align 8 %rnd) unnamed_addr #0 !dbg !31 {
start:
  %result.dbg.spill = alloca i64, align 8
  %mantissa.dbg.spill = alloca i64, align 8
  %exponent.dbg.spill = alloca i64, align 8
  %value.dbg.spill = alloca i64, align 8
  %rnd.dbg.spill = alloca ptr, align 8
  store ptr %rnd, ptr %rnd.dbg.spill, align 8
    #dbg_declare(ptr %rnd.dbg.spill, !36, !DIExpression(), !45)
  %value = call i64 @_ZN15next_double_lib3src3lib11cn_rnd_next17hae1e273f8a026280E(ptr align 8 %rnd), !dbg !46
  store i64 %value, ptr %value.dbg.spill, align 8, !dbg !46
    #dbg_declare(ptr %value.dbg.spill, !37, !DIExpression(), !47)
  store i64 1023, ptr %exponent.dbg.spill, align 8, !dbg !48
    #dbg_declare(ptr %exponent.dbg.spill, !39, !DIExpression(), !49)
  %mantissa = lshr i64 %value, 12, !dbg !50
  store i64 %mantissa, ptr %mantissa.dbg.spill, align 8, !dbg !50
    #dbg_declare(ptr %mantissa.dbg.spill, !41, !DIExpression(), !51)
  %result = or i64 4607182418800017408, %mantissa, !dbg !52
  store i64 %result, ptr %result.dbg.spill, align 8, !dbg !52
    #dbg_declare(ptr %result.dbg.spill, !43, !DIExpression(), !53)
  %_8 = call double @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE"(i64 %result), !dbg !54
  %0 = fsub double %_8, 1.000000e+00, !dbg !54
  ret double %0, !dbg !55
}

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking36panic_misaligned_pointer_dereference17h587229c42ea18e2bE(i64, i64, ptr align 8) unnamed_addr #2

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_ZN4core9panicking19panic_cannot_unwind17h629e1da841ab4abfE() unnamed_addr #3

; Function Attrs: nonlazybind uwtable
define internal i64 @_ZN15next_double_lib3src3lib11cn_rnd_next17hae1e273f8a026280E(ptr align 8 %rnd) unnamed_addr #0 !dbg !56 {
start:
  %rhs.dbg.spill.i = alloca i64, align 8
  %self.dbg.spill.i = alloca i64, align 8
  %y.dbg.spill = alloca i64, align 8
  %rnd.dbg.spill = alloca ptr, align 8
  %x = alloca i64, align 8
  store ptr %rnd, ptr %rnd.dbg.spill, align 8
    #dbg_declare(ptr %rnd.dbg.spill, !60, !DIExpression(), !65)
    #dbg_declare(ptr %x, !61, !DIExpression(), !66)
  %0 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !67
  %1 = load i64, ptr %0, align 8, !dbg !67, !noundef !23
  store i64 %1, ptr %x, align 8, !dbg !67
  %2 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !68
  %y = load i64, ptr %2, align 8, !dbg !68, !noundef !23
  store i64 %y, ptr %y.dbg.spill, align 8, !dbg !68
    #dbg_declare(ptr %y.dbg.spill, !63, !DIExpression(), !69)
  %3 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !70
  store i64 %y, ptr %3, align 8, !dbg !70
  %_8 = load i64, ptr %x, align 8, !dbg !71, !noundef !23
  %_7 = shl i64 %_8, 23, !dbg !71
  %4 = load i64, ptr %x, align 8, !dbg !72, !noundef !23
  %5 = xor i64 %4, %_7, !dbg !72
  store i64 %5, ptr %x, align 8, !dbg !72
  %_10 = load i64, ptr %x, align 8, !dbg !73, !noundef !23
  %_9 = lshr i64 %_10, 17, !dbg !73
  %6 = load i64, ptr %x, align 8, !dbg !74, !noundef !23
  %7 = xor i64 %6, %_9, !dbg !74
  store i64 %7, ptr %x, align 8, !dbg !74
  %_12 = lshr i64 %y, 26, !dbg !75
  %_11 = xor i64 %y, %_12, !dbg !76
  %8 = load i64, ptr %x, align 8, !dbg !77, !noundef !23
  %9 = xor i64 %8, %_11, !dbg !77
  store i64 %9, ptr %x, align 8, !dbg !77
  %_13 = load i64, ptr %x, align 8, !dbg !78, !noundef !23
  %10 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !79
  store i64 %_13, ptr %10, align 8, !dbg !79
  %_15 = load i64, ptr %x, align 8, !dbg !80, !noundef !23
  store i64 %_15, ptr %self.dbg.spill.i, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !81, !DIExpression(), !91)
  store i64 %y, ptr %rhs.dbg.spill.i, align 8
    #dbg_declare(ptr %rhs.dbg.spill.i, !90, !DIExpression(), !93)
  %11 = add i64 %_15, %y, !dbg !94
  ret i64 %11, !dbg !95
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal double @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE"(i64 %v) unnamed_addr #4 !dbg !96 {
start:
  %rt.dbg.spill = alloca i64, align 8
  %v.dbg.spill = alloca i64, align 8
  %_2 = alloca i64, align 8
  store i64 %v, ptr %v.dbg.spill, align 8
    #dbg_declare(ptr %v.dbg.spill, !103, !DIExpression(), !104)
  store i64 %v, ptr %_2, align 8, !dbg !105
  %rt = load i64, ptr %_2, align 8, !dbg !106, !noundef !23
  store i64 %rt, ptr %rt.dbg.spill, align 8, !dbg !106
    #dbg_declare(ptr %rt.dbg.spill, !107, !DIExpression(), !111)
  %0 = bitcast i64 %rt to double, !dbg !112
  ret double %0, !dbg !113
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_1() unnamed_addr #0 !dbg !114 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !119, !DIExpression(), !127)
    #dbg_declare(ptr %expected_state, !123, !DIExpression(), !128)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !129
  store i64 1, ptr %1, align 8, !dbg !129
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !129
  store i64 1, ptr %2, align 8, !dbg !129
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !130
  %ret = call double @next_double(ptr %rnd), !dbg !131
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !131
    #dbg_declare(ptr %ret.dbg.spill, !121, !DIExpression(), !132)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !133
  store i64 1, ptr %3, align 8, !dbg !133
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !133
  store i64 8388672, ptr %4, align 8, !dbg !133
  store double 0x3D60000000000000, ptr %expected_ret.dbg.spill, align 8, !dbg !134
    #dbg_declare(ptr %expected_ret.dbg.spill, !125, !DIExpression(), !135)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !136
  %_10 = load i64, ptr %5, align 8, !dbg !136, !noundef !23
  %_9 = icmp eq i64 %_10, 1, !dbg !136
  br i1 %_9, label %bb6, label %bb5, !dbg !136

bb5:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !136
  br label %bb7, !dbg !136

bb6:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !137
  %_14 = load i64, ptr %6, align 8, !dbg !137, !noundef !23
  %_13 = icmp eq i64 %_14, 8388672, !dbg !137
  %7 = zext i1 %_13 to i8, !dbg !136
  store i8 %7, ptr %_8, align 1, !dbg !136
  br label %bb7, !dbg !136

bb7:                                              ; preds = %bb6, %bb5
  %8 = load i8, ptr %_8, align 1, !dbg !136, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !136
  br i1 %9, label %bb3, label %bb2, !dbg !136

bb2:                                              ; preds = %bb7
  store i8 0, ptr %0, align 1, !dbg !136
  br label %bb4, !dbg !136

bb3:                                              ; preds = %bb7
  %_17 = fcmp oeq double %ret, 0x3D60000000000000, !dbg !139
  %10 = zext i1 %_17 to i8, !dbg !136
  store i8 %10, ptr %0, align 1, !dbg !136
  br label %bb4, !dbg !136

bb4:                                              ; preds = %bb3, %bb2
  %11 = load i8, ptr %0, align 1, !dbg !140, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !140
  ret i1 %12, !dbg !140
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_2() unnamed_addr #0 !dbg !141 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !143, !DIExpression(), !151)
    #dbg_declare(ptr %expected_state, !147, !DIExpression(), !152)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !153
  store i64 42, ptr %1, align 8, !dbg !153
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !153
  store i64 123, ptr %2, align 8, !dbg !153
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !154
  %ret = call double @next_double(ptr %rnd), !dbg !155
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !155
    #dbg_declare(ptr %ret.dbg.spill, !145, !DIExpression(), !156)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !157
  store i64 123, ptr %3, align 8, !dbg !157
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !157
  store i64 352324305, ptr %4, align 8, !dbg !157
  store double 0x3DB5000000000000, ptr %expected_ret.dbg.spill, align 8, !dbg !158
    #dbg_declare(ptr %expected_ret.dbg.spill, !149, !DIExpression(), !159)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !160
  %_10 = load i64, ptr %5, align 8, !dbg !160, !noundef !23
  %_9 = icmp eq i64 %_10, 123, !dbg !160
  br i1 %_9, label %bb6, label %bb5, !dbg !160

bb5:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !160
  br label %bb7, !dbg !160

bb6:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !161
  %_14 = load i64, ptr %6, align 8, !dbg !161, !noundef !23
  %_13 = icmp eq i64 %_14, 352324305, !dbg !161
  %7 = zext i1 %_13 to i8, !dbg !160
  store i8 %7, ptr %_8, align 1, !dbg !160
  br label %bb7, !dbg !160

bb7:                                              ; preds = %bb6, %bb5
  %8 = load i8, ptr %_8, align 1, !dbg !160, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !160
  br i1 %9, label %bb3, label %bb2, !dbg !160

bb2:                                              ; preds = %bb7
  store i8 0, ptr %0, align 1, !dbg !160
  br label %bb4, !dbg !160

bb3:                                              ; preds = %bb7
  %_17 = fcmp oeq double %ret, 0x3DB5000000000000, !dbg !162
  %10 = zext i1 %_17 to i8, !dbg !160
  store i8 %10, ptr %0, align 1, !dbg !160
  br label %bb4, !dbg !160

bb4:                                              ; preds = %bb3, %bb2
  %11 = load i8, ptr %0, align 1, !dbg !163, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !163
  ret i1 %12, !dbg !163
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_3() unnamed_addr #0 !dbg !164 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !166, !DIExpression(), !174)
    #dbg_declare(ptr %expected_state, !170, !DIExpression(), !175)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !176
  store i64 1000, ptr %1, align 8, !dbg !176
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !176
  store i64 2000, ptr %2, align 8, !dbg !176
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !177
  %ret = call double @next_double(ptr %rnd), !dbg !178
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !178
    #dbg_declare(ptr %ret.dbg.spill, !168, !DIExpression(), !179)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !180
  store i64 2000, ptr %3, align 8, !dbg !180
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !180
  store i64 8388673080, ptr %4, align 8, !dbg !180
  store double 0x3DFF401000000000, ptr %expected_ret.dbg.spill, align 8, !dbg !181
    #dbg_declare(ptr %expected_ret.dbg.spill, !172, !DIExpression(), !182)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !183
  %_10 = load i64, ptr %5, align 8, !dbg !183, !noundef !23
  %_9 = icmp eq i64 %_10, 2000, !dbg !183
  br i1 %_9, label %bb6, label %bb5, !dbg !183

bb5:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !183
  br label %bb7, !dbg !183

bb6:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !184
  %_14 = load i64, ptr %6, align 8, !dbg !184, !noundef !23
  %_13 = icmp eq i64 %_14, 8388673080, !dbg !184
  %7 = zext i1 %_13 to i8, !dbg !183
  store i8 %7, ptr %_8, align 1, !dbg !183
  br label %bb7, !dbg !183

bb7:                                              ; preds = %bb6, %bb5
  %8 = load i8, ptr %_8, align 1, !dbg !183, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !183
  br i1 %9, label %bb3, label %bb2, !dbg !183

bb2:                                              ; preds = %bb7
  store i8 0, ptr %0, align 1, !dbg !183
  br label %bb4, !dbg !183

bb3:                                              ; preds = %bb7
  %_17 = fcmp oeq double %ret, 0x3DFF401000000000, !dbg !185
  %10 = zext i1 %_17 to i8, !dbg !183
  store i8 %10, ptr %0, align 1, !dbg !183
  br label %bb4, !dbg !183

bb4:                                              ; preds = %bb3, %bb2
  %11 = load i8, ptr %0, align 1, !dbg !186, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !186
  ret i1 %12, !dbg !186
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_4() unnamed_addr #0 !dbg !187 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !189, !DIExpression(), !197)
    #dbg_declare(ptr %expected_state, !193, !DIExpression(), !198)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !199
  store i64 305419896, ptr %1, align 8, !dbg !199
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !199
  store i64 2596069104, ptr %2, align 8, !dbg !199
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !200
  %ret = call double @next_double(ptr %rnd), !dbg !201
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !201
    #dbg_declare(ptr %ret.dbg.spill, !191, !DIExpression(), !202)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !203
  store i64 2596069104, ptr %3, align 8, !dbg !203
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !203
  store i64 2562064922779572, ptr %4, align 8, !dbg !203
  store double 0x3F22345FA8B3E000, ptr %expected_ret.dbg.spill, align 8, !dbg !204
    #dbg_declare(ptr %expected_ret.dbg.spill, !195, !DIExpression(), !205)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !206
  %_10 = load i64, ptr %5, align 8, !dbg !206, !noundef !23
  %_9 = icmp eq i64 %_10, 2596069104, !dbg !206
  br i1 %_9, label %bb6, label %bb5, !dbg !206

bb5:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !206
  br label %bb7, !dbg !206

bb6:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !207
  %_14 = load i64, ptr %6, align 8, !dbg !207, !noundef !23
  %_13 = icmp eq i64 %_14, 2562064922779572, !dbg !207
  %7 = zext i1 %_13 to i8, !dbg !206
  store i8 %7, ptr %_8, align 1, !dbg !206
  br label %bb7, !dbg !206

bb7:                                              ; preds = %bb6, %bb5
  %8 = load i8, ptr %_8, align 1, !dbg !206, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !206
  br i1 %9, label %bb3, label %bb2, !dbg !206

bb2:                                              ; preds = %bb7
  store i8 0, ptr %0, align 1, !dbg !206
  br label %bb4, !dbg !206

bb3:                                              ; preds = %bb7
  %_17 = fcmp oeq double %ret, 0x3F22345FA8B3E000, !dbg !208
  %10 = zext i1 %_17 to i8, !dbg !206
  store i8 %10, ptr %0, align 1, !dbg !206
  br label %bb4, !dbg !206

bb4:                                              ; preds = %bb3, %bb2
  %11 = load i8, ptr %0, align 1, !dbg !209, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !209
  ret i1 %12, !dbg !209
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_5() unnamed_addr #0 !dbg !210 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !212, !DIExpression(), !220)
    #dbg_declare(ptr %expected_state, !216, !DIExpression(), !221)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !222
  store i64 2863311530, ptr %1, align 8, !dbg !222
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !222
  store i64 1431655765, ptr %2, align 8, !dbg !222
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !223
  %ret = call double @next_double(ptr %rnd), !dbg !224
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !224
    #dbg_declare(ptr %ret.dbg.spill, !214, !DIExpression(), !225)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !226
  store i64 1431655765, ptr %3, align 8, !dbg !226
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !226
  store i64 24019376975183935, ptr %4, align 8, !dbg !226
  store double 0x3F55555FD56A9400, ptr %expected_ret.dbg.spill, align 8, !dbg !227
    #dbg_declare(ptr %expected_ret.dbg.spill, !218, !DIExpression(), !228)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !229
  %_10 = load i64, ptr %5, align 8, !dbg !229, !noundef !23
  %_9 = icmp eq i64 %_10, 1431655765, !dbg !229
  br i1 %_9, label %bb6, label %bb5, !dbg !229

bb5:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !229
  br label %bb7, !dbg !229

bb6:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !230
  %_14 = load i64, ptr %6, align 8, !dbg !230, !noundef !23
  %_13 = icmp eq i64 %_14, 24019376975183935, !dbg !230
  %7 = zext i1 %_13 to i8, !dbg !229
  store i8 %7, ptr %_8, align 1, !dbg !229
  br label %bb7, !dbg !229

bb7:                                              ; preds = %bb6, %bb5
  %8 = load i8, ptr %_8, align 1, !dbg !229, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !229
  br i1 %9, label %bb3, label %bb2, !dbg !229

bb2:                                              ; preds = %bb7
  store i8 0, ptr %0, align 1, !dbg !229
  br label %bb4, !dbg !229

bb3:                                              ; preds = %bb7
  %_17 = fcmp oeq double %ret, 0x3F55555FD56A9400, !dbg !231
  %10 = zext i1 %_17 to i8, !dbg !229
  store i8 %10, ptr %0, align 1, !dbg !229
  br label %bb4, !dbg !229

bb4:                                              ; preds = %bb3, %bb2
  %11 = load i8, ptr %0, align 1, !dbg !232, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !232
  ret i1 %12, !dbg !232
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_6() unnamed_addr #0 !dbg !233 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !235, !DIExpression(), !243)
    #dbg_declare(ptr %expected_state, !239, !DIExpression(), !244)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !245
  store i64 4294967295, ptr %1, align 8, !dbg !245
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !245
  store i64 0, ptr %2, align 8, !dbg !245
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !246
  %ret = call double @next_double(ptr %rnd), !dbg !247
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !247
    #dbg_declare(ptr %ret.dbg.spill, !237, !DIExpression(), !248)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !249
  store i64 0, ptr %3, align 8, !dbg !249
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !249
  store i64 36028526427668416, ptr %4, align 8, !dbg !249
  %expected_ret = call double @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE"(i64 4566649954505858048), !dbg !250
  store double %expected_ret, ptr %expected_ret.dbg.spill, align 8, !dbg !250
    #dbg_declare(ptr %expected_ret.dbg.spill, !241, !DIExpression(), !251)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !252
  %_10 = load i64, ptr %5, align 8, !dbg !252, !noundef !23
  %_9 = icmp eq i64 %_10, 0, !dbg !252
  br i1 %_9, label %bb7, label %bb6, !dbg !252

bb6:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !252
  br label %bb8, !dbg !252

bb7:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !253
  %_14 = load i64, ptr %6, align 8, !dbg !253, !noundef !23
  %_13 = icmp eq i64 %_14, 36028526427668416, !dbg !253
  %7 = zext i1 %_13 to i8, !dbg !252
  store i8 %7, ptr %_8, align 1, !dbg !252
  br label %bb8, !dbg !252

bb8:                                              ; preds = %bb7, %bb6
  %8 = load i8, ptr %_8, align 1, !dbg !252, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !252
  br i1 %9, label %bb4, label %bb3, !dbg !252

bb3:                                              ; preds = %bb8
  store i8 0, ptr %0, align 1, !dbg !252
  br label %bb5, !dbg !252

bb4:                                              ; preds = %bb8
  %_17 = fcmp oeq double %ret, %expected_ret, !dbg !254
  %10 = zext i1 %_17 to i8, !dbg !252
  store i8 %10, ptr %0, align 1, !dbg !252
  br label %bb5, !dbg !252

bb5:                                              ; preds = %bb4, %bb3
  %11 = load i8, ptr %0, align 1, !dbg !255, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !255
  ret i1 %12, !dbg !255
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_7() unnamed_addr #0 !dbg !256 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !258, !DIExpression(), !266)
    #dbg_declare(ptr %expected_state, !262, !DIExpression(), !267)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !268
  store i64 1, ptr %1, align 8, !dbg !268
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !268
  store i64 -1, ptr %2, align 8, !dbg !268
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !269
  %ret = call double @next_double(ptr %rnd), !dbg !270
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !270
    #dbg_declare(ptr %ret.dbg.spill, !260, !DIExpression(), !271)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !272
  store i64 -1, ptr %3, align 8, !dbg !272
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !272
  store i64 -274869518271, ptr %4, align 8, !dbg !272
  %expected_ret = call double @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE"(i64 4607182418665803776), !dbg !273
  store double %expected_ret, ptr %expected_ret.dbg.spill, align 8, !dbg !273
    #dbg_declare(ptr %expected_ret.dbg.spill, !264, !DIExpression(), !274)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !275
  %_10 = load i64, ptr %5, align 8, !dbg !275, !noundef !23
  %_9 = icmp eq i64 %_10, -1, !dbg !275
  br i1 %_9, label %bb7, label %bb6, !dbg !275

bb6:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !275
  br label %bb8, !dbg !275

bb7:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !276
  %_14 = load i64, ptr %6, align 8, !dbg !276, !noundef !23
  %_13 = icmp eq i64 %_14, -274869518271, !dbg !276
  %7 = zext i1 %_13 to i8, !dbg !275
  store i8 %7, ptr %_8, align 1, !dbg !275
  br label %bb8, !dbg !275

bb8:                                              ; preds = %bb7, %bb6
  %8 = load i8, ptr %_8, align 1, !dbg !275, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !275
  br i1 %9, label %bb4, label %bb3, !dbg !275

bb3:                                              ; preds = %bb8
  store i8 0, ptr %0, align 1, !dbg !275
  br label %bb5, !dbg !275

bb4:                                              ; preds = %bb8
  %_17 = fcmp oeq double %ret, %expected_ret, !dbg !277
  %10 = zext i1 %_17 to i8, !dbg !275
  store i8 %10, ptr %0, align 1, !dbg !275
  br label %bb5, !dbg !275

bb5:                                              ; preds = %bb4, %bb3
  %11 = load i8, ptr %0, align 1, !dbg !278, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !278
  ret i1 %12, !dbg !278
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_8() unnamed_addr #0 !dbg !279 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !281, !DIExpression(), !289)
    #dbg_declare(ptr %expected_state, !285, !DIExpression(), !290)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !291
  store i64 123456789, ptr %1, align 8, !dbg !291
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !291
  store i64 987654321, ptr %2, align 8, !dbg !291
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !292
  %ret = call double @next_double(ptr %rnd), !dbg !293
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !293
    #dbg_declare(ptr %ret.dbg.spill, !283, !DIExpression(), !294)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !295
  store i64 987654321, ptr %3, align 8, !dbg !295
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !295
  store i64 1035634222752583, ptr %4, align 8, !dbg !295
  %expected_ret = call double @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE"(i64 4543409906445320192), !dbg !296
  store double %expected_ret, ptr %expected_ret.dbg.spill, align 8, !dbg !296
    #dbg_declare(ptr %expected_ret.dbg.spill, !287, !DIExpression(), !297)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !298
  %_10 = load i64, ptr %5, align 8, !dbg !298, !noundef !23
  %_9 = icmp eq i64 %_10, 987654321, !dbg !298
  br i1 %_9, label %bb7, label %bb6, !dbg !298

bb6:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !298
  br label %bb8, !dbg !298

bb7:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !299
  %_14 = load i64, ptr %6, align 8, !dbg !299, !noundef !23
  %_13 = icmp eq i64 %_14, 1035634222752583, !dbg !299
  %7 = zext i1 %_13 to i8, !dbg !298
  store i8 %7, ptr %_8, align 1, !dbg !298
  br label %bb8, !dbg !298

bb8:                                              ; preds = %bb7, %bb6
  %8 = load i8, ptr %_8, align 1, !dbg !298, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !298
  br i1 %9, label %bb4, label %bb3, !dbg !298

bb3:                                              ; preds = %bb8
  store i8 0, ptr %0, align 1, !dbg !298
  br label %bb5, !dbg !298

bb4:                                              ; preds = %bb8
  %_17 = fcmp oeq double %ret, %expected_ret, !dbg !300
  %10 = zext i1 %_17 to i8, !dbg !298
  store i8 %10, ptr %0, align 1, !dbg !298
  br label %bb5, !dbg !298

bb5:                                              ; preds = %bb4, %bb3
  %11 = load i8, ptr %0, align 1, !dbg !301, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !301
  ret i1 %12, !dbg !301
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_9() unnamed_addr #0 !dbg !302 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !304, !DIExpression(), !312)
    #dbg_declare(ptr %expected_state, !308, !DIExpression(), !313)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !314
  store i64 81985529216486895, ptr %1, align 8, !dbg !314
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !314
  store i64 -81985529216486896, ptr %2, align 8, !dbg !314
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !315
  %ret = call double @next_double(ptr %rnd), !dbg !316
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !316
    #dbg_declare(ptr %ret.dbg.spill, !306, !DIExpression(), !317)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !318
  store i64 -81985529216486896, ptr %3, align 8, !dbg !318
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !318
  store i64 5493110981415528183, ptr %4, align 8, !dbg !318
  %expected_ret = call double @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE"(i64 4598955922117319044), !dbg !319
  store double %expected_ret, ptr %expected_ret.dbg.spill, align 8, !dbg !319
    #dbg_declare(ptr %expected_ret.dbg.spill, !310, !DIExpression(), !320)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !321
  %_10 = load i64, ptr %5, align 8, !dbg !321, !noundef !23
  %_9 = icmp eq i64 %_10, -81985529216486896, !dbg !321
  br i1 %_9, label %bb7, label %bb6, !dbg !321

bb6:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !321
  br label %bb8, !dbg !321

bb7:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !322
  %_14 = load i64, ptr %6, align 8, !dbg !322, !noundef !23
  %_13 = icmp eq i64 %_14, 5493110981415528183, !dbg !322
  %7 = zext i1 %_13 to i8, !dbg !321
  store i8 %7, ptr %_8, align 1, !dbg !321
  br label %bb8, !dbg !321

bb8:                                              ; preds = %bb7, %bb6
  %8 = load i8, ptr %_8, align 1, !dbg !321, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !321
  br i1 %9, label %bb4, label %bb3, !dbg !321

bb3:                                              ; preds = %bb8
  store i8 0, ptr %0, align 1, !dbg !321
  br label %bb5, !dbg !321

bb4:                                              ; preds = %bb8
  %_17 = fcmp oeq double %ret, %expected_ret, !dbg !323
  %10 = zext i1 %_17 to i8, !dbg !321
  store i8 %10, ptr %0, align 1, !dbg !321
  br label %bb5, !dbg !321

bb5:                                              ; preds = %bb4, %bb3
  %11 = load i8, ptr %0, align 1, !dbg !324, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !324
  ret i1 %12, !dbg !324
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_10() unnamed_addr #0 !dbg !325 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !327, !DIExpression(), !335)
    #dbg_declare(ptr %expected_state, !331, !DIExpression(), !336)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !337
  store i64 2147483647, ptr %1, align 8, !dbg !337
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !337
  store i64 2147483648, ptr %2, align 8, !dbg !337
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !338
  %ret = call double @next_double(ptr %rnd), !dbg !339
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !339
    #dbg_declare(ptr %ret.dbg.spill, !329, !DIExpression(), !340)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !341
  store i64 2147483648, ptr %3, align 8, !dbg !341
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !341
  store i64 18014265357123552, ptr %4, align 8, !dbg !341
  %expected_ret = call double @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE"(i64 4562146357023873024), !dbg !342
  store double %expected_ret, ptr %expected_ret.dbg.spill, align 8, !dbg !342
    #dbg_declare(ptr %expected_ret.dbg.spill, !333, !DIExpression(), !343)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !344
  %_10 = load i64, ptr %5, align 8, !dbg !344, !noundef !23
  %_9 = icmp eq i64 %_10, 2147483648, !dbg !344
  br i1 %_9, label %bb7, label %bb6, !dbg !344

bb6:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !344
  br label %bb8, !dbg !344

bb7:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !345
  %_14 = load i64, ptr %6, align 8, !dbg !345, !noundef !23
  %_13 = icmp eq i64 %_14, 18014265357123552, !dbg !345
  %7 = zext i1 %_13 to i8, !dbg !344
  store i8 %7, ptr %_8, align 1, !dbg !344
  br label %bb8, !dbg !344

bb8:                                              ; preds = %bb7, %bb6
  %8 = load i8, ptr %_8, align 1, !dbg !344, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !344
  br i1 %9, label %bb4, label %bb3, !dbg !344

bb3:                                              ; preds = %bb8
  store i8 0, ptr %0, align 1, !dbg !344
  br label %bb5, !dbg !344

bb4:                                              ; preds = %bb8
  %_17 = fcmp oeq double %ret, %expected_ret, !dbg !346
  %10 = zext i1 %_17 to i8, !dbg !344
  store i8 %10, ptr %0, align 1, !dbg !344
  br label %bb5, !dbg !344

bb5:                                              ; preds = %bb4, %bb3
  %11 = load i8, ptr %0, align 1, !dbg !347, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !347
  ret i1 %12, !dbg !347
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_11() unnamed_addr #0 !dbg !348 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !350, !DIExpression(), !358)
    #dbg_declare(ptr %expected_state, !354, !DIExpression(), !359)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !360
  store i64 1, ptr %1, align 8, !dbg !360
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !360
  store i64 0, ptr %2, align 8, !dbg !360
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !361
  %ret = call double @next_double(ptr %rnd), !dbg !362
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !362
    #dbg_declare(ptr %ret.dbg.spill, !352, !DIExpression(), !363)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !364
  store i64 0, ptr %3, align 8, !dbg !364
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !364
  store i64 8388673, ptr %4, align 8, !dbg !364
  %expected_ret = call double @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE"(i64 4422534834077827072), !dbg !365
  store double %expected_ret, ptr %expected_ret.dbg.spill, align 8, !dbg !365
    #dbg_declare(ptr %expected_ret.dbg.spill, !356, !DIExpression(), !366)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !367
  %_10 = load i64, ptr %5, align 8, !dbg !367, !noundef !23
  %_9 = icmp eq i64 %_10, 0, !dbg !367
  br i1 %_9, label %bb7, label %bb6, !dbg !367

bb6:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !367
  br label %bb8, !dbg !367

bb7:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !368
  %_14 = load i64, ptr %6, align 8, !dbg !368, !noundef !23
  %_13 = icmp eq i64 %_14, 8388673, !dbg !368
  %7 = zext i1 %_13 to i8, !dbg !367
  store i8 %7, ptr %_8, align 1, !dbg !367
  br label %bb8, !dbg !367

bb8:                                              ; preds = %bb7, %bb6
  %8 = load i8, ptr %_8, align 1, !dbg !367, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !367
  br i1 %9, label %bb4, label %bb3, !dbg !367

bb3:                                              ; preds = %bb8
  store i8 0, ptr %0, align 1, !dbg !367
  br label %bb5, !dbg !367

bb4:                                              ; preds = %bb8
  %_17 = fcmp oeq double %ret, %expected_ret, !dbg !369
  %10 = zext i1 %_17 to i8, !dbg !367
  store i8 %10, ptr %0, align 1, !dbg !367
  br label %bb5, !dbg !367

bb5:                                              ; preds = %bb4, %bb3
  %11 = load i8, ptr %0, align 1, !dbg !370, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !370
  ret i1 %12, !dbg !370
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_12() unnamed_addr #0 !dbg !371 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !373, !DIExpression(), !381)
    #dbg_declare(ptr %expected_state, !377, !DIExpression(), !382)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !383
  store i64 511, ptr %1, align 8, !dbg !383
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !383
  store i64 0, ptr %2, align 8, !dbg !383
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !384
  %ret = call double @next_double(ptr %rnd), !dbg !385
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !385
    #dbg_declare(ptr %ret.dbg.spill, !375, !DIExpression(), !386)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !387
  store i64 0, ptr %3, align 8, !dbg !387
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !387
  store i64 4286611007, ptr %4, align 8, !dbg !387
  %expected_ret = call double @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE"(i64 4463049698667659264), !dbg !388
  store double %expected_ret, ptr %expected_ret.dbg.spill, align 8, !dbg !388
    #dbg_declare(ptr %expected_ret.dbg.spill, !379, !DIExpression(), !389)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !390
  %_10 = load i64, ptr %5, align 8, !dbg !390, !noundef !23
  %_9 = icmp eq i64 %_10, 0, !dbg !390
  br i1 %_9, label %bb7, label %bb6, !dbg !390

bb6:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !390
  br label %bb8, !dbg !390

bb7:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !391
  %_14 = load i64, ptr %6, align 8, !dbg !391, !noundef !23
  %_13 = icmp eq i64 %_14, 4286611007, !dbg !391
  %7 = zext i1 %_13 to i8, !dbg !390
  store i8 %7, ptr %_8, align 1, !dbg !390
  br label %bb8, !dbg !390

bb8:                                              ; preds = %bb7, %bb6
  %8 = load i8, ptr %_8, align 1, !dbg !390, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !390
  br i1 %9, label %bb4, label %bb3, !dbg !390

bb3:                                              ; preds = %bb8
  store i8 0, ptr %0, align 1, !dbg !390
  br label %bb5, !dbg !390

bb4:                                              ; preds = %bb8
  %_17 = fcmp oeq double %ret, %expected_ret, !dbg !392
  %10 = zext i1 %_17 to i8, !dbg !390
  store i8 %10, ptr %0, align 1, !dbg !390
  br label %bb5, !dbg !390

bb5:                                              ; preds = %bb4, %bb3
  %11 = load i8, ptr %0, align 1, !dbg !393, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !393
  ret i1 %12, !dbg !393
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_13() unnamed_addr #0 !dbg !394 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !396, !DIExpression(), !404)
    #dbg_declare(ptr %expected_state, !400, !DIExpression(), !405)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !406
  store i64 36028797018963967, ptr %1, align 8, !dbg !406
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !406
  store i64 0, ptr %2, align 8, !dbg !406
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !407
  %ret = call double @next_double(ptr %rnd), !dbg !408
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !408
    #dbg_declare(ptr %ret.dbg.spill, !398, !DIExpression(), !409)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !410
  store i64 0, ptr %3, align 8, !dbg !410
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !410
  store i64 -35888334400127040, ptr %4, align 8, !dbg !410
  %expected_ret = call double @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE"(i64 4607164895199236094), !dbg !411
  store double %expected_ret, ptr %expected_ret.dbg.spill, align 8, !dbg !411
    #dbg_declare(ptr %expected_ret.dbg.spill, !402, !DIExpression(), !412)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !413
  %_10 = load i64, ptr %5, align 8, !dbg !413, !noundef !23
  %_9 = icmp eq i64 %_10, 0, !dbg !413
  br i1 %_9, label %bb7, label %bb6, !dbg !413

bb6:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !413
  br label %bb8, !dbg !413

bb7:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !414
  %_14 = load i64, ptr %6, align 8, !dbg !414, !noundef !23
  %_13 = icmp eq i64 %_14, -35888334400127040, !dbg !414
  %7 = zext i1 %_13 to i8, !dbg !413
  store i8 %7, ptr %_8, align 1, !dbg !413
  br label %bb8, !dbg !413

bb8:                                              ; preds = %bb7, %bb6
  %8 = load i8, ptr %_8, align 1, !dbg !413, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !413
  br i1 %9, label %bb4, label %bb3, !dbg !413

bb3:                                              ; preds = %bb8
  store i8 0, ptr %0, align 1, !dbg !413
  br label %bb5, !dbg !413

bb4:                                              ; preds = %bb8
  %_17 = fcmp oeq double %ret, %expected_ret, !dbg !415
  %10 = zext i1 %_17 to i8, !dbg !413
  store i8 %10, ptr %0, align 1, !dbg !413
  br label %bb5, !dbg !413

bb5:                                              ; preds = %bb4, %bb3
  %11 = load i8, ptr %0, align 1, !dbg !416, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !416
  ret i1 %12, !dbg !416
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_14() unnamed_addr #0 !dbg !417 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !419, !DIExpression(), !427)
    #dbg_declare(ptr %expected_state, !423, !DIExpression(), !428)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !429
  store i64 131072, ptr %1, align 8, !dbg !429
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !429
  store i64 0, ptr %2, align 8, !dbg !429
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !430
  %ret = call double @next_double(ptr %rnd), !dbg !431
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !431
    #dbg_declare(ptr %ret.dbg.spill, !421, !DIExpression(), !432)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !433
  store i64 0, ptr %3, align 8, !dbg !433
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !433
  store i64 1099520147457, ptr %4, align 8, !dbg !433
  %expected_ret = call double @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE"(i64 4499096062639734784), !dbg !434
  store double %expected_ret, ptr %expected_ret.dbg.spill, align 8, !dbg !434
    #dbg_declare(ptr %expected_ret.dbg.spill, !425, !DIExpression(), !435)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !436
  %_10 = load i64, ptr %5, align 8, !dbg !436, !noundef !23
  %_9 = icmp eq i64 %_10, 0, !dbg !436
  br i1 %_9, label %bb7, label %bb6, !dbg !436

bb6:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !436
  br label %bb8, !dbg !436

bb7:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !437
  %_14 = load i64, ptr %6, align 8, !dbg !437, !noundef !23
  %_13 = icmp eq i64 %_14, 1099520147457, !dbg !437
  %7 = zext i1 %_13 to i8, !dbg !436
  store i8 %7, ptr %_8, align 1, !dbg !436
  br label %bb8, !dbg !436

bb8:                                              ; preds = %bb7, %bb6
  %8 = load i8, ptr %_8, align 1, !dbg !436, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !436
  br i1 %9, label %bb4, label %bb3, !dbg !436

bb3:                                              ; preds = %bb8
  store i8 0, ptr %0, align 1, !dbg !436
  br label %bb5, !dbg !436

bb4:                                              ; preds = %bb8
  %_17 = fcmp oeq double %ret, %expected_ret, !dbg !438
  %10 = zext i1 %_17 to i8, !dbg !436
  store i8 %10, ptr %0, align 1, !dbg !436
  br label %bb5, !dbg !436

bb5:                                              ; preds = %bb4, %bb3
  %11 = load i8, ptr %0, align 1, !dbg !439, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !439
  ret i1 %12, !dbg !439
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_15() unnamed_addr #0 !dbg !440 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !442, !DIExpression(), !450)
    #dbg_declare(ptr %expected_state, !446, !DIExpression(), !451)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !452
  store i64 -131072, ptr %1, align 8, !dbg !452
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !452
  store i64 0, ptr %2, align 8, !dbg !452
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !453
  %ret = call double @next_double(ptr %rnd), !dbg !454
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !454
    #dbg_declare(ptr %ret.dbg.spill, !444, !DIExpression(), !455)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !456
  store i64 0, ptr %3, align 8, !dbg !456
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !456
  store i64 1099503370239, ptr %4, align 8, !dbg !456
  %expected_ret = call double @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE"(i64 4499095960063836160), !dbg !457
  store double %expected_ret, ptr %expected_ret.dbg.spill, align 8, !dbg !457
    #dbg_declare(ptr %expected_ret.dbg.spill, !448, !DIExpression(), !458)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !459
  %_10 = load i64, ptr %5, align 8, !dbg !459, !noundef !23
  %_9 = icmp eq i64 %_10, 0, !dbg !459
  br i1 %_9, label %bb7, label %bb6, !dbg !459

bb6:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !459
  br label %bb8, !dbg !459

bb7:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !460
  %_14 = load i64, ptr %6, align 8, !dbg !460, !noundef !23
  %_13 = icmp eq i64 %_14, 1099503370239, !dbg !460
  %7 = zext i1 %_13 to i8, !dbg !459
  store i8 %7, ptr %_8, align 1, !dbg !459
  br label %bb8, !dbg !459

bb8:                                              ; preds = %bb7, %bb6
  %8 = load i8, ptr %_8, align 1, !dbg !459, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !459
  br i1 %9, label %bb4, label %bb3, !dbg !459

bb3:                                              ; preds = %bb8
  store i8 0, ptr %0, align 1, !dbg !459
  br label %bb5, !dbg !459

bb4:                                              ; preds = %bb8
  %_17 = fcmp oeq double %ret, %expected_ret, !dbg !461
  %10 = zext i1 %_17 to i8, !dbg !459
  store i8 %10, ptr %0, align 1, !dbg !459
  br label %bb5, !dbg !459

bb5:                                              ; preds = %bb4, %bb3
  %11 = load i8, ptr %0, align 1, !dbg !462, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !462
  ret i1 %12, !dbg !462
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_16() unnamed_addr #0 !dbg !463 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !465, !DIExpression(), !473)
    #dbg_declare(ptr %expected_state, !469, !DIExpression(), !474)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !475
  store i64 0, ptr %1, align 8, !dbg !475
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !475
  store i64 67108864, ptr %2, align 8, !dbg !475
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !476
  %ret = call double @next_double(ptr %rnd), !dbg !477
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !477
    #dbg_declare(ptr %ret.dbg.spill, !467, !DIExpression(), !478)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !479
  store i64 67108864, ptr %3, align 8, !dbg !479
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !479
  store i64 67108865, ptr %4, align 8, !dbg !479
  %expected_ret = call double @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE"(i64 4440549232587309056), !dbg !480
  store double %expected_ret, ptr %expected_ret.dbg.spill, align 8, !dbg !480
    #dbg_declare(ptr %expected_ret.dbg.spill, !471, !DIExpression(), !481)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !482
  %_10 = load i64, ptr %5, align 8, !dbg !482, !noundef !23
  %_9 = icmp eq i64 %_10, 67108864, !dbg !482
  br i1 %_9, label %bb7, label %bb6, !dbg !482

bb6:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !482
  br label %bb8, !dbg !482

bb7:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !483
  %_14 = load i64, ptr %6, align 8, !dbg !483, !noundef !23
  %_13 = icmp eq i64 %_14, 67108865, !dbg !483
  %7 = zext i1 %_13 to i8, !dbg !482
  store i8 %7, ptr %_8, align 1, !dbg !482
  br label %bb8, !dbg !482

bb8:                                              ; preds = %bb7, %bb6
  %8 = load i8, ptr %_8, align 1, !dbg !482, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !482
  br i1 %9, label %bb4, label %bb3, !dbg !482

bb3:                                              ; preds = %bb8
  store i8 0, ptr %0, align 1, !dbg !482
  br label %bb5, !dbg !482

bb4:                                              ; preds = %bb8
  %_17 = fcmp oeq double %ret, %expected_ret, !dbg !484
  %10 = zext i1 %_17 to i8, !dbg !482
  store i8 %10, ptr %0, align 1, !dbg !482
  br label %bb5, !dbg !482

bb5:                                              ; preds = %bb4, %bb3
  %11 = load i8, ptr %0, align 1, !dbg !485, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !485
  ret i1 %12, !dbg !485
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_17() unnamed_addr #0 !dbg !486 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !488, !DIExpression(), !496)
    #dbg_declare(ptr %expected_state, !492, !DIExpression(), !497)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !498
  store i64 0, ptr %1, align 8, !dbg !498
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !498
  store i64 4227858432, ptr %2, align 8, !dbg !498
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !499
  %ret = call double @next_double(ptr %rnd), !dbg !500
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !500
    #dbg_declare(ptr %ret.dbg.spill, !490, !DIExpression(), !501)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !502
  store i64 4227858432, ptr %3, align 8, !dbg !502
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !502
  store i64 4227858495, ptr %4, align 8, !dbg !502
  %expected_ret = call double @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE"(i64 4467430092863176704), !dbg !503
  store double %expected_ret, ptr %expected_ret.dbg.spill, align 8, !dbg !503
    #dbg_declare(ptr %expected_ret.dbg.spill, !494, !DIExpression(), !504)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !505
  %_10 = load i64, ptr %5, align 8, !dbg !505, !noundef !23
  %_9 = icmp eq i64 %_10, 4227858432, !dbg !505
  br i1 %_9, label %bb7, label %bb6, !dbg !505

bb6:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !505
  br label %bb8, !dbg !505

bb7:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !506
  %_14 = load i64, ptr %6, align 8, !dbg !506, !noundef !23
  %_13 = icmp eq i64 %_14, 4227858495, !dbg !506
  %7 = zext i1 %_13 to i8, !dbg !505
  store i8 %7, ptr %_8, align 1, !dbg !505
  br label %bb8, !dbg !505

bb8:                                              ; preds = %bb7, %bb6
  %8 = load i8, ptr %_8, align 1, !dbg !505, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !505
  br i1 %9, label %bb4, label %bb3, !dbg !505

bb3:                                              ; preds = %bb8
  store i8 0, ptr %0, align 1, !dbg !505
  br label %bb5, !dbg !505

bb4:                                              ; preds = %bb8
  %_17 = fcmp oeq double %ret, %expected_ret, !dbg !507
  %10 = zext i1 %_17 to i8, !dbg !505
  store i8 %10, ptr %0, align 1, !dbg !505
  br label %bb5, !dbg !505

bb5:                                              ; preds = %bb4, %bb3
  %11 = load i8, ptr %0, align 1, !dbg !508, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !508
  ret i1 %12, !dbg !508
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_18() unnamed_addr #0 !dbg !509 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !511, !DIExpression(), !519)
    #dbg_declare(ptr %expected_state, !515, !DIExpression(), !520)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !521
  store i64 0, ptr %1, align 8, !dbg !521
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !521
  store i64 -67108864, ptr %2, align 8, !dbg !521
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !522
  %ret = call double @next_double(ptr %rnd), !dbg !523
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !523
    #dbg_declare(ptr %ret.dbg.spill, !513, !DIExpression(), !524)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !525
  store i64 -67108864, ptr %3, align 8, !dbg !525
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !525
  store i64 -274810798081, ptr %4, align 8, !dbg !525
  %expected_ret = call double @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE"(i64 4607182418665799678), !dbg !526
  store double %expected_ret, ptr %expected_ret.dbg.spill, align 8, !dbg !526
    #dbg_declare(ptr %expected_ret.dbg.spill, !517, !DIExpression(), !527)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !528
  %_10 = load i64, ptr %5, align 8, !dbg !528, !noundef !23
  %_9 = icmp eq i64 %_10, -67108864, !dbg !528
  br i1 %_9, label %bb7, label %bb6, !dbg !528

bb6:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !528
  br label %bb8, !dbg !528

bb7:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !529
  %_14 = load i64, ptr %6, align 8, !dbg !529, !noundef !23
  %_13 = icmp eq i64 %_14, -274810798081, !dbg !529
  %7 = zext i1 %_13 to i8, !dbg !528
  store i8 %7, ptr %_8, align 1, !dbg !528
  br label %bb8, !dbg !528

bb8:                                              ; preds = %bb7, %bb6
  %8 = load i8, ptr %_8, align 1, !dbg !528, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !528
  br i1 %9, label %bb4, label %bb3, !dbg !528

bb3:                                              ; preds = %bb8
  store i8 0, ptr %0, align 1, !dbg !528
  br label %bb5, !dbg !528

bb4:                                              ; preds = %bb8
  %_17 = fcmp oeq double %ret, %expected_ret, !dbg !530
  %10 = zext i1 %_17 to i8, !dbg !528
  store i8 %10, ptr %0, align 1, !dbg !528
  br label %bb5, !dbg !528

bb5:                                              ; preds = %bb4, %bb3
  %11 = load i8, ptr %0, align 1, !dbg !531, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !531
  ret i1 %12, !dbg !531
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_19() unnamed_addr #0 !dbg !532 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !534, !DIExpression(), !542)
    #dbg_declare(ptr %expected_state, !538, !DIExpression(), !543)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !544
  store i64 8388608, ptr %1, align 8, !dbg !544
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !544
  store i64 67108864, ptr %2, align 8, !dbg !544
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !545
  %ret = call double @next_double(ptr %rnd), !dbg !546
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !546
    #dbg_declare(ptr %ret.dbg.spill, !536, !DIExpression(), !547)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !548
  store i64 67108864, ptr %3, align 8, !dbg !548
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !548
  store i64 70369356546113, ptr %4, align 8, !dbg !548
  %expected_ret = call double @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE"(i64 4526117668993892352), !dbg !549
  store double %expected_ret, ptr %expected_ret.dbg.spill, align 8, !dbg !549
    #dbg_declare(ptr %expected_ret.dbg.spill, !540, !DIExpression(), !550)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !551
  %_10 = load i64, ptr %5, align 8, !dbg !551, !noundef !23
  %_9 = icmp eq i64 %_10, 67108864, !dbg !551
  br i1 %_9, label %bb7, label %bb6, !dbg !551

bb6:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !551
  br label %bb8, !dbg !551

bb7:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !552
  %_14 = load i64, ptr %6, align 8, !dbg !552, !noundef !23
  %_13 = icmp eq i64 %_14, 70369356546113, !dbg !552
  %7 = zext i1 %_13 to i8, !dbg !551
  store i8 %7, ptr %_8, align 1, !dbg !551
  br label %bb8, !dbg !551

bb8:                                              ; preds = %bb7, %bb6
  %8 = load i8, ptr %_8, align 1, !dbg !551, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !551
  br i1 %9, label %bb4, label %bb3, !dbg !551

bb3:                                              ; preds = %bb8
  store i8 0, ptr %0, align 1, !dbg !551
  br label %bb5, !dbg !551

bb4:                                              ; preds = %bb8
  %_17 = fcmp oeq double %ret, %expected_ret, !dbg !553
  %10 = zext i1 %_17 to i8, !dbg !551
  store i8 %10, ptr %0, align 1, !dbg !551
  br label %bb5, !dbg !551

bb5:                                              ; preds = %bb4, %bb3
  %11 = load i8, ptr %0, align 1, !dbg !554, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !554
  ret i1 %12, !dbg !554
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_20() unnamed_addr #0 !dbg !555 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !557, !DIExpression(), !565)
    #dbg_declare(ptr %expected_state, !561, !DIExpression(), !566)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !567
  store i64 -1, ptr %1, align 8, !dbg !567
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !567
  store i64 -1, ptr %2, align 8, !dbg !567
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !568
  %ret = call double @next_double(ptr %rnd), !dbg !569
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !569
    #dbg_declare(ptr %ret.dbg.spill, !559, !DIExpression(), !570)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !571
  store i64 -1, ptr %3, align 8, !dbg !571
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !571
  store i64 -274869518400, ptr %4, align 8, !dbg !571
  %expected_ret = call double @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE"(i64 4607182418665803774), !dbg !572
  store double %expected_ret, ptr %expected_ret.dbg.spill, align 8, !dbg !572
    #dbg_declare(ptr %expected_ret.dbg.spill, !563, !DIExpression(), !573)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !574
  %_10 = load i64, ptr %5, align 8, !dbg !574, !noundef !23
  %_9 = icmp eq i64 %_10, -1, !dbg !574
  br i1 %_9, label %bb7, label %bb6, !dbg !574

bb6:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !574
  br label %bb8, !dbg !574

bb7:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !575
  %_14 = load i64, ptr %6, align 8, !dbg !575, !noundef !23
  %_13 = icmp eq i64 %_14, -274869518400, !dbg !575
  %7 = zext i1 %_13 to i8, !dbg !574
  store i8 %7, ptr %_8, align 1, !dbg !574
  br label %bb8, !dbg !574

bb8:                                              ; preds = %bb7, %bb6
  %8 = load i8, ptr %_8, align 1, !dbg !574, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !574
  br i1 %9, label %bb4, label %bb3, !dbg !574

bb3:                                              ; preds = %bb8
  store i8 0, ptr %0, align 1, !dbg !574
  br label %bb5, !dbg !574

bb4:                                              ; preds = %bb8
  %_17 = fcmp oeq double %ret, %expected_ret, !dbg !576
  %10 = zext i1 %_17 to i8, !dbg !574
  store i8 %10, ptr %0, align 1, !dbg !574
  br label %bb5, !dbg !574

bb5:                                              ; preds = %bb4, %bb3
  %11 = load i8, ptr %0, align 1, !dbg !577, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !577
  ret i1 %12, !dbg !577
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_21() unnamed_addr #0 !dbg !578 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !580, !DIExpression(), !588)
    #dbg_declare(ptr %expected_state, !584, !DIExpression(), !589)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !590
  store i64 4095, ptr %1, align 8, !dbg !590
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !590
  store i64 0, ptr %2, align 8, !dbg !590
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !591
  %ret = call double @next_double(ptr %rnd), !dbg !592
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !592
    #dbg_declare(ptr %ret.dbg.spill, !582, !DIExpression(), !593)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !594
  store i64 0, ptr %3, align 8, !dbg !594
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !594
  store i64 34351607871, ptr %4, align 8, !dbg !594
  %expected_ret = call double @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE"(i64 4476575898228752384), !dbg !595
  store double %expected_ret, ptr %expected_ret.dbg.spill, align 8, !dbg !595
    #dbg_declare(ptr %expected_ret.dbg.spill, !586, !DIExpression(), !596)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !597
  %_10 = load i64, ptr %5, align 8, !dbg !597, !noundef !23
  %_9 = icmp eq i64 %_10, 0, !dbg !597
  br i1 %_9, label %bb7, label %bb6, !dbg !597

bb6:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !597
  br label %bb8, !dbg !597

bb7:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !598
  %_14 = load i64, ptr %6, align 8, !dbg !598, !noundef !23
  %_13 = icmp eq i64 %_14, 34351607871, !dbg !598
  %7 = zext i1 %_13 to i8, !dbg !597
  store i8 %7, ptr %_8, align 1, !dbg !597
  br label %bb8, !dbg !597

bb8:                                              ; preds = %bb7, %bb6
  %8 = load i8, ptr %_8, align 1, !dbg !597, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !597
  br i1 %9, label %bb4, label %bb3, !dbg !597

bb3:                                              ; preds = %bb8
  store i8 0, ptr %0, align 1, !dbg !597
  br label %bb5, !dbg !597

bb4:                                              ; preds = %bb8
  %_17 = fcmp oeq double %ret, %expected_ret, !dbg !599
  %10 = zext i1 %_17 to i8, !dbg !597
  store i8 %10, ptr %0, align 1, !dbg !597
  br label %bb5, !dbg !597

bb5:                                              ; preds = %bb4, %bb3
  %11 = load i8, ptr %0, align 1, !dbg !600, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !600
  ret i1 %12, !dbg !600
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_22() unnamed_addr #0 !dbg !601 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !603, !DIExpression(), !611)
    #dbg_declare(ptr %expected_state, !607, !DIExpression(), !612)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !613
  store i64 4096, ptr %1, align 8, !dbg !613
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !613
  store i64 0, ptr %2, align 8, !dbg !613
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !614
  %ret = call double @next_double(ptr %rnd), !dbg !615
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !615
    #dbg_declare(ptr %ret.dbg.spill, !605, !DIExpression(), !616)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !617
  store i64 0, ptr %3, align 8, !dbg !617
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !617
  store i64 34360004608, ptr %4, align 8, !dbg !617
  %expected_ret = call double @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE"(i64 4476578064502882304), !dbg !618
  store double %expected_ret, ptr %expected_ret.dbg.spill, align 8, !dbg !618
    #dbg_declare(ptr %expected_ret.dbg.spill, !609, !DIExpression(), !619)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !620
  %_10 = load i64, ptr %5, align 8, !dbg !620, !noundef !23
  %_9 = icmp eq i64 %_10, 0, !dbg !620
  br i1 %_9, label %bb7, label %bb6, !dbg !620

bb6:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !620
  br label %bb8, !dbg !620

bb7:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !621
  %_14 = load i64, ptr %6, align 8, !dbg !621, !noundef !23
  %_13 = icmp eq i64 %_14, 34360004608, !dbg !621
  %7 = zext i1 %_13 to i8, !dbg !620
  store i8 %7, ptr %_8, align 1, !dbg !620
  br label %bb8, !dbg !620

bb8:                                              ; preds = %bb7, %bb6
  %8 = load i8, ptr %_8, align 1, !dbg !620, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !620
  br i1 %9, label %bb4, label %bb3, !dbg !620

bb3:                                              ; preds = %bb8
  store i8 0, ptr %0, align 1, !dbg !620
  br label %bb5, !dbg !620

bb4:                                              ; preds = %bb8
  %_17 = fcmp oeq double %ret, %expected_ret, !dbg !622
  %10 = zext i1 %_17 to i8, !dbg !620
  store i8 %10, ptr %0, align 1, !dbg !620
  br label %bb5, !dbg !620

bb5:                                              ; preds = %bb4, %bb3
  %11 = load i8, ptr %0, align 1, !dbg !623, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !623
  ret i1 %12, !dbg !623
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_23() unnamed_addr #0 !dbg !624 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !626, !DIExpression(), !634)
    #dbg_declare(ptr %expected_state, !630, !DIExpression(), !635)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !636
  store i64 -4096, ptr %1, align 8, !dbg !636
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !636
  store i64 0, ptr %2, align 8, !dbg !636
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !637
  %ret = call double @next_double(ptr %rnd), !dbg !638
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !638
    #dbg_declare(ptr %ret.dbg.spill, !628, !DIExpression(), !639)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !640
  store i64 0, ptr %3, align 8, !dbg !640
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !640
  store i64 34359480319, ptr %4, align 8, !dbg !640
  %expected_ret = call double @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE"(i64 4476577960886796288), !dbg !641
  store double %expected_ret, ptr %expected_ret.dbg.spill, align 8, !dbg !641
    #dbg_declare(ptr %expected_ret.dbg.spill, !632, !DIExpression(), !642)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !643
  %_10 = load i64, ptr %5, align 8, !dbg !643, !noundef !23
  %_9 = icmp eq i64 %_10, 0, !dbg !643
  br i1 %_9, label %bb7, label %bb6, !dbg !643

bb6:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !643
  br label %bb8, !dbg !643

bb7:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !644
  %_14 = load i64, ptr %6, align 8, !dbg !644, !noundef !23
  %_13 = icmp eq i64 %_14, 34359480319, !dbg !644
  %7 = zext i1 %_13 to i8, !dbg !643
  store i8 %7, ptr %_8, align 1, !dbg !643
  br label %bb8, !dbg !643

bb8:                                              ; preds = %bb7, %bb6
  %8 = load i8, ptr %_8, align 1, !dbg !643, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !643
  br i1 %9, label %bb4, label %bb3, !dbg !643

bb3:                                              ; preds = %bb8
  store i8 0, ptr %0, align 1, !dbg !643
  br label %bb5, !dbg !643

bb4:                                              ; preds = %bb8
  %_17 = fcmp oeq double %ret, %expected_ret, !dbg !645
  %10 = zext i1 %_17 to i8, !dbg !643
  store i8 %10, ptr %0, align 1, !dbg !643
  br label %bb5, !dbg !643

bb5:                                              ; preds = %bb4, %bb3
  %11 = load i8, ptr %0, align 1, !dbg !646, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !646
  ret i1 %12, !dbg !646
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_24() unnamed_addr #0 !dbg !647 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !649, !DIExpression(), !657)
    #dbg_declare(ptr %expected_state, !653, !DIExpression(), !658)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !659
  store i64 -9223372036854775808, ptr %1, align 8, !dbg !659
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !659
  store i64 0, ptr %2, align 8, !dbg !659
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !660
  %ret = call double @next_double(ptr %rnd), !dbg !661
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !661
    #dbg_declare(ptr %ret.dbg.spill, !651, !DIExpression(), !662)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !663
  store i64 0, ptr %3, align 8, !dbg !663
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !663
  store i64 -9223301668110598144, ptr %4, align 8, !dbg !663
  %expected_ret = call double @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE"(i64 4602678853532385280), !dbg !664
  store double %expected_ret, ptr %expected_ret.dbg.spill, align 8, !dbg !664
    #dbg_declare(ptr %expected_ret.dbg.spill, !655, !DIExpression(), !665)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !666
  %_10 = load i64, ptr %5, align 8, !dbg !666, !noundef !23
  %_9 = icmp eq i64 %_10, 0, !dbg !666
  br i1 %_9, label %bb7, label %bb6, !dbg !666

bb6:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !666
  br label %bb8, !dbg !666

bb7:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !667
  %_14 = load i64, ptr %6, align 8, !dbg !667, !noundef !23
  %_13 = icmp eq i64 %_14, -9223301668110598144, !dbg !667
  %7 = zext i1 %_13 to i8, !dbg !666
  store i8 %7, ptr %_8, align 1, !dbg !666
  br label %bb8, !dbg !666

bb8:                                              ; preds = %bb7, %bb6
  %8 = load i8, ptr %_8, align 1, !dbg !666, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !666
  br i1 %9, label %bb4, label %bb3, !dbg !666

bb3:                                              ; preds = %bb8
  store i8 0, ptr %0, align 1, !dbg !666
  br label %bb5, !dbg !666

bb4:                                              ; preds = %bb8
  %_17 = fcmp oeq double %ret, %expected_ret, !dbg !668
  %10 = zext i1 %_17 to i8, !dbg !666
  store i8 %10, ptr %0, align 1, !dbg !666
  br label %bb5, !dbg !666

bb5:                                              ; preds = %bb4, %bb3
  %11 = load i8, ptr %0, align 1, !dbg !669, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !669
  ret i1 %12, !dbg !669
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_25() unnamed_addr #0 !dbg !670 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !672, !DIExpression(), !680)
    #dbg_declare(ptr %expected_state, !676, !DIExpression(), !681)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !682
  store i64 0, ptr %1, align 8, !dbg !682
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !682
  store i64 4096, ptr %2, align 8, !dbg !682
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !683
  %ret = call double @next_double(ptr %rnd), !dbg !684
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !684
    #dbg_declare(ptr %ret.dbg.spill, !674, !DIExpression(), !685)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !686
  store i64 4096, ptr %3, align 8, !dbg !686
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !686
  store i64 4096, ptr %4, align 8, !dbg !686
  %expected_ret = call double @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE"(i64 4377498837804122112), !dbg !687
  store double %expected_ret, ptr %expected_ret.dbg.spill, align 8, !dbg !687
    #dbg_declare(ptr %expected_ret.dbg.spill, !678, !DIExpression(), !688)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !689
  %_10 = load i64, ptr %5, align 8, !dbg !689, !noundef !23
  %_9 = icmp eq i64 %_10, 4096, !dbg !689
  br i1 %_9, label %bb7, label %bb6, !dbg !689

bb6:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !689
  br label %bb8, !dbg !689

bb7:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !690
  %_14 = load i64, ptr %6, align 8, !dbg !690, !noundef !23
  %_13 = icmp eq i64 %_14, 4096, !dbg !690
  %7 = zext i1 %_13 to i8, !dbg !689
  store i8 %7, ptr %_8, align 1, !dbg !689
  br label %bb8, !dbg !689

bb8:                                              ; preds = %bb7, %bb6
  %8 = load i8, ptr %_8, align 1, !dbg !689, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !689
  br i1 %9, label %bb4, label %bb3, !dbg !689

bb3:                                              ; preds = %bb8
  store i8 0, ptr %0, align 1, !dbg !689
  br label %bb5, !dbg !689

bb4:                                              ; preds = %bb8
  %_17 = fcmp oeq double %ret, %expected_ret, !dbg !691
  %10 = zext i1 %_17 to i8, !dbg !689
  store i8 %10, ptr %0, align 1, !dbg !689
  br label %bb5, !dbg !689

bb5:                                              ; preds = %bb4, %bb3
  %11 = load i8, ptr %0, align 1, !dbg !692, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !692
  ret i1 %12, !dbg !692
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_26() unnamed_addr #0 !dbg !693 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !695, !DIExpression(), !703)
    #dbg_declare(ptr %expected_state, !699, !DIExpression(), !704)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !705
  store i64 -4096, ptr %1, align 8, !dbg !705
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !705
  store i64 -4096, ptr %2, align 8, !dbg !705
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !706
  %ret = call double @next_double(ptr %rnd), !dbg !707
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !707
    #dbg_declare(ptr %ret.dbg.spill, !697, !DIExpression(), !708)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !709
  store i64 -4096, ptr %3, align 8, !dbg !709
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !709
  store i64 -240518430720, ptr %4, align 8, !dbg !709
  %expected_ret = call double @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE"(i64 4607182418682576766), !dbg !710
  store double %expected_ret, ptr %expected_ret.dbg.spill, align 8, !dbg !710
    #dbg_declare(ptr %expected_ret.dbg.spill, !701, !DIExpression(), !711)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !712
  %_10 = load i64, ptr %5, align 8, !dbg !712, !noundef !23
  %_9 = icmp eq i64 %_10, -4096, !dbg !712
  br i1 %_9, label %bb7, label %bb6, !dbg !712

bb6:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !712
  br label %bb8, !dbg !712

bb7:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !713
  %_14 = load i64, ptr %6, align 8, !dbg !713, !noundef !23
  %_13 = icmp eq i64 %_14, -240518430720, !dbg !713
  %7 = zext i1 %_13 to i8, !dbg !712
  store i8 %7, ptr %_8, align 1, !dbg !712
  br label %bb8, !dbg !712

bb8:                                              ; preds = %bb7, %bb6
  %8 = load i8, ptr %_8, align 1, !dbg !712, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !712
  br i1 %9, label %bb4, label %bb3, !dbg !712

bb3:                                              ; preds = %bb8
  store i8 0, ptr %0, align 1, !dbg !712
  br label %bb5, !dbg !712

bb4:                                              ; preds = %bb8
  %_17 = fcmp oeq double %ret, %expected_ret, !dbg !714
  %10 = zext i1 %_17 to i8, !dbg !712
  store i8 %10, ptr %0, align 1, !dbg !712
  br label %bb5, !dbg !712

bb5:                                              ; preds = %bb4, %bb3
  %11 = load i8, ptr %0, align 1, !dbg !715, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !715
  ret i1 %12, !dbg !715
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_27() unnamed_addr #0 !dbg !716 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !718, !DIExpression(), !726)
    #dbg_declare(ptr %expected_state, !722, !DIExpression(), !727)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !728
  store i64 1311673391471656960, ptr %1, align 8, !dbg !728
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !728
  store i64 6230730084467081216, ptr %2, align 8, !dbg !728
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !729
  %ret = call double @next_double(ptr %rnd), !dbg !730
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !730
    #dbg_declare(ptr %ret.dbg.spill, !720, !DIExpression(), !731)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !732
  store i64 6230730084467081216, ptr %3, align 8, !dbg !732
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !732
  store i64 4921318455489069056, ptr %4, align 8, !dbg !732
  %expected_ret = call double @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE"(i64 4603620555746426880), !dbg !733
  store double %expected_ret, ptr %expected_ret.dbg.spill, align 8, !dbg !733
    #dbg_declare(ptr %expected_ret.dbg.spill, !724, !DIExpression(), !734)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !735
  %_10 = load i64, ptr %5, align 8, !dbg !735, !noundef !23
  %_9 = icmp eq i64 %_10, 6230730084467081216, !dbg !735
  br i1 %_9, label %bb7, label %bb6, !dbg !735

bb6:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !735
  br label %bb8, !dbg !735

bb7:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !736
  %_14 = load i64, ptr %6, align 8, !dbg !736, !noundef !23
  %_13 = icmp eq i64 %_14, 4921318455489069056, !dbg !736
  %7 = zext i1 %_13 to i8, !dbg !735
  store i8 %7, ptr %_8, align 1, !dbg !735
  br label %bb8, !dbg !735

bb8:                                              ; preds = %bb7, %bb6
  %8 = load i8, ptr %_8, align 1, !dbg !735, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !735
  br i1 %9, label %bb4, label %bb3, !dbg !735

bb3:                                              ; preds = %bb8
  store i8 0, ptr %0, align 1, !dbg !735
  br label %bb5, !dbg !735

bb4:                                              ; preds = %bb8
  %_17 = fcmp oeq double %ret, %expected_ret, !dbg !737
  %10 = zext i1 %_17 to i8, !dbg !735
  store i8 %10, ptr %0, align 1, !dbg !735
  br label %bb5, !dbg !735

bb5:                                              ; preds = %bb4, %bb3
  %11 = load i8, ptr %0, align 1, !dbg !738, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !738
  ret i1 %12, !dbg !738
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_28() unnamed_addr #0 !dbg !739 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !741, !DIExpression(), !749)
    #dbg_declare(ptr %expected_state, !745, !DIExpression(), !750)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !751
  store i64 281474976645120, ptr %1, align 8, !dbg !751
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !751
  store i64 281474976645120, ptr %2, align 8, !dbg !751
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !752
  %ret = call double @next_double(ptr %rnd), !dbg !753
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !753
    #dbg_declare(ptr %ret.dbg.spill, !743, !DIExpression(), !754)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !755
  store i64 281474976645120, ptr %3, align 8, !dbg !755
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !755
  store i64 -140189880025088, ptr %4, align 8, !dbg !755
  %expected_ret = call double @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE"(i64 4530638748599189504), !dbg !756
  store double %expected_ret, ptr %expected_ret.dbg.spill, align 8, !dbg !756
    #dbg_declare(ptr %expected_ret.dbg.spill, !747, !DIExpression(), !757)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !758
  %_10 = load i64, ptr %5, align 8, !dbg !758, !noundef !23
  %_9 = icmp eq i64 %_10, 281474976645120, !dbg !758
  br i1 %_9, label %bb7, label %bb6, !dbg !758

bb6:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !758
  br label %bb8, !dbg !758

bb7:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !759
  %_14 = load i64, ptr %6, align 8, !dbg !759, !noundef !23
  %_13 = icmp eq i64 %_14, -140189880025088, !dbg !759
  %7 = zext i1 %_13 to i8, !dbg !758
  store i8 %7, ptr %_8, align 1, !dbg !758
  br label %bb8, !dbg !758

bb8:                                              ; preds = %bb7, %bb6
  %8 = load i8, ptr %_8, align 1, !dbg !758, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !758
  br i1 %9, label %bb4, label %bb3, !dbg !758

bb3:                                              ; preds = %bb8
  store i8 0, ptr %0, align 1, !dbg !758
  br label %bb5, !dbg !758

bb4:                                              ; preds = %bb8
  %_17 = fcmp oeq double %ret, %expected_ret, !dbg !760
  %10 = zext i1 %_17 to i8, !dbg !758
  store i8 %10, ptr %0, align 1, !dbg !758
  br label %bb5, !dbg !758

bb5:                                              ; preds = %bb4, %bb3
  %11 = load i8, ptr %0, align 1, !dbg !761, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !761
  ret i1 %12, !dbg !761
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_29() unnamed_addr #0 !dbg !762 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !764, !DIExpression(), !772)
    #dbg_declare(ptr %expected_state, !768, !DIExpression(), !773)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !774
  store i64 6148914691236515840, ptr %1, align 8, !dbg !774
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !774
  store i64 768614336404561920, ptr %2, align 8, !dbg !774
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !775
  %ret = call double @next_double(ptr %rnd), !dbg !776
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !776
    #dbg_declare(ptr %ret.dbg.spill, !766, !DIExpression(), !777)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !778
  store i64 768614336404561920, ptr %3, align 8, !dbg !778
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !778
  store i64 -768661248900599808, ptr %4, align 8, !dbg !778
  %expected_ret = call double @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE"(i64 4607182395893525202), !dbg !779
  store double %expected_ret, ptr %expected_ret.dbg.spill, align 8, !dbg !779
    #dbg_declare(ptr %expected_ret.dbg.spill, !770, !DIExpression(), !780)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !781
  %_10 = load i64, ptr %5, align 8, !dbg !781, !noundef !23
  %_9 = icmp eq i64 %_10, 768614336404561920, !dbg !781
  br i1 %_9, label %bb7, label %bb6, !dbg !781

bb6:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !781
  br label %bb8, !dbg !781

bb7:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !782
  %_14 = load i64, ptr %6, align 8, !dbg !782, !noundef !23
  %_13 = icmp eq i64 %_14, -768661248900599808, !dbg !782
  %7 = zext i1 %_13 to i8, !dbg !781
  store i8 %7, ptr %_8, align 1, !dbg !781
  br label %bb8, !dbg !781

bb8:                                              ; preds = %bb7, %bb6
  %8 = load i8, ptr %_8, align 1, !dbg !781, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !781
  br i1 %9, label %bb4, label %bb3, !dbg !781

bb3:                                              ; preds = %bb8
  store i8 0, ptr %0, align 1, !dbg !781
  br label %bb5, !dbg !781

bb4:                                              ; preds = %bb8
  %_17 = fcmp oeq double %ret, %expected_ret, !dbg !783
  %10 = zext i1 %_17 to i8, !dbg !781
  store i8 %10, ptr %0, align 1, !dbg !781
  br label %bb5, !dbg !781

bb5:                                              ; preds = %bb4, %bb3
  %11 = load i8, ptr %0, align 1, !dbg !784, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !784
  ret i1 %12, !dbg !784
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_30() unnamed_addr #0 !dbg !785 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !787, !DIExpression(), !795)
    #dbg_declare(ptr %expected_state, !791, !DIExpression(), !796)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !797
  store i64 1311768467463786496, ptr %1, align 8, !dbg !797
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !797
  store i64 -81986143110479872, ptr %2, align 8, !dbg !797
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !798
  %ret = call double @next_double(ptr %rnd), !dbg !799
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !799
    #dbg_declare(ptr %ret.dbg.spill, !789, !DIExpression(), !800)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !801
  store i64 -81986143110479872, ptr %3, align 8, !dbg !801
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !801
  store i64 -3412139610787061953, ptr %4, align 8, !dbg !801
  %expected_ret = call double @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE"(i64 4605476302709247122), !dbg !802
  store double %expected_ret, ptr %expected_ret.dbg.spill, align 8, !dbg !802
    #dbg_declare(ptr %expected_ret.dbg.spill, !793, !DIExpression(), !803)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !804
  %_10 = load i64, ptr %5, align 8, !dbg !804, !noundef !23
  %_9 = icmp eq i64 %_10, -81986143110479872, !dbg !804
  br i1 %_9, label %bb7, label %bb6, !dbg !804

bb6:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !804
  br label %bb8, !dbg !804

bb7:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !805
  %_14 = load i64, ptr %6, align 8, !dbg !805, !noundef !23
  %_13 = icmp eq i64 %_14, -3412139610787061953, !dbg !805
  %7 = zext i1 %_13 to i8, !dbg !804
  store i8 %7, ptr %_8, align 1, !dbg !804
  br label %bb8, !dbg !804

bb8:                                              ; preds = %bb7, %bb6
  %8 = load i8, ptr %_8, align 1, !dbg !804, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !804
  br i1 %9, label %bb4, label %bb3, !dbg !804

bb3:                                              ; preds = %bb8
  store i8 0, ptr %0, align 1, !dbg !804
  br label %bb5, !dbg !804

bb4:                                              ; preds = %bb8
  %_17 = fcmp oeq double %ret, %expected_ret, !dbg !806
  %10 = zext i1 %_17 to i8, !dbg !804
  store i8 %10, ptr %0, align 1, !dbg !804
  br label %bb5, !dbg !804

bb5:                                              ; preds = %bb4, %bb3
  %11 = load i8, ptr %0, align 1, !dbg !807, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !807
  ret i1 %12, !dbg !807
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_31() unnamed_addr #0 !dbg !808 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !810, !DIExpression(), !818)
    #dbg_declare(ptr %expected_state, !814, !DIExpression(), !819)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !820
  store i64 0, ptr %1, align 8, !dbg !820
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !820
  store i64 0, ptr %2, align 8, !dbg !820
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !821
  %ret = call double @next_double(ptr %rnd), !dbg !822
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !822
    #dbg_declare(ptr %ret.dbg.spill, !812, !DIExpression(), !823)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !824
  store i64 0, ptr %3, align 8, !dbg !824
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !824
  store i64 0, ptr %4, align 8, !dbg !824
  store double 0.000000e+00, ptr %expected_ret.dbg.spill, align 8, !dbg !825
    #dbg_declare(ptr %expected_ret.dbg.spill, !816, !DIExpression(), !826)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !827
  %_10 = load i64, ptr %5, align 8, !dbg !827, !noundef !23
  %_9 = icmp eq i64 %_10, 0, !dbg !827
  br i1 %_9, label %bb6, label %bb5, !dbg !827

bb5:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !827
  br label %bb7, !dbg !827

bb6:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !828
  %_14 = load i64, ptr %6, align 8, !dbg !828, !noundef !23
  %_13 = icmp eq i64 %_14, 0, !dbg !828
  %7 = zext i1 %_13 to i8, !dbg !827
  store i8 %7, ptr %_8, align 1, !dbg !827
  br label %bb7, !dbg !827

bb7:                                              ; preds = %bb6, %bb5
  %8 = load i8, ptr %_8, align 1, !dbg !827, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !827
  br i1 %9, label %bb3, label %bb2, !dbg !827

bb2:                                              ; preds = %bb7
  store i8 0, ptr %0, align 1, !dbg !827
  br label %bb4, !dbg !827

bb3:                                              ; preds = %bb7
  %_17 = fcmp oeq double %ret, 0.000000e+00, !dbg !829
  %10 = zext i1 %_17 to i8, !dbg !827
  store i8 %10, ptr %0, align 1, !dbg !827
  br label %bb4, !dbg !827

bb4:                                              ; preds = %bb3, %bb2
  %11 = load i8, ptr %0, align 1, !dbg !830, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !830
  ret i1 %12, !dbg !830
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_32() unnamed_addr #0 !dbg !831 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !833, !DIExpression(), !841)
    #dbg_declare(ptr %expected_state, !837, !DIExpression(), !842)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !843
  store i64 1, ptr %1, align 8, !dbg !843
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !843
  store i64 0, ptr %2, align 8, !dbg !843
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !844
  %ret = call double @next_double(ptr %rnd), !dbg !845
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !845
    #dbg_declare(ptr %ret.dbg.spill, !835, !DIExpression(), !846)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !847
  store i64 0, ptr %3, align 8, !dbg !847
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !847
  store i64 8388673, ptr %4, align 8, !dbg !847
  %expected_ret = call double @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE"(i64 4422534834077827072), !dbg !848
  store double %expected_ret, ptr %expected_ret.dbg.spill, align 8, !dbg !848
    #dbg_declare(ptr %expected_ret.dbg.spill, !839, !DIExpression(), !849)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !850
  %_10 = load i64, ptr %5, align 8, !dbg !850, !noundef !23
  %_9 = icmp eq i64 %_10, 0, !dbg !850
  br i1 %_9, label %bb7, label %bb6, !dbg !850

bb6:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !850
  br label %bb8, !dbg !850

bb7:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !851
  %_14 = load i64, ptr %6, align 8, !dbg !851, !noundef !23
  %_13 = icmp eq i64 %_14, 8388673, !dbg !851
  %7 = zext i1 %_13 to i8, !dbg !850
  store i8 %7, ptr %_8, align 1, !dbg !850
  br label %bb8, !dbg !850

bb8:                                              ; preds = %bb7, %bb6
  %8 = load i8, ptr %_8, align 1, !dbg !850, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !850
  br i1 %9, label %bb4, label %bb3, !dbg !850

bb3:                                              ; preds = %bb8
  store i8 0, ptr %0, align 1, !dbg !850
  br label %bb5, !dbg !850

bb4:                                              ; preds = %bb8
  %_17 = fcmp oeq double %ret, %expected_ret, !dbg !852
  %10 = zext i1 %_17 to i8, !dbg !850
  store i8 %10, ptr %0, align 1, !dbg !850
  br label %bb5, !dbg !850

bb5:                                              ; preds = %bb4, %bb3
  %11 = load i8, ptr %0, align 1, !dbg !853, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !853
  ret i1 %12, !dbg !853
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_33() unnamed_addr #0 !dbg !854 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !856, !DIExpression(), !864)
    #dbg_declare(ptr %expected_state, !860, !DIExpression(), !865)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !866
  store i64 0, ptr %1, align 8, !dbg !866
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !866
  store i64 1, ptr %2, align 8, !dbg !866
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !867
  %ret = call double @next_double(ptr %rnd), !dbg !868
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !868
    #dbg_declare(ptr %ret.dbg.spill, !858, !DIExpression(), !869)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !870
  store i64 1, ptr %3, align 8, !dbg !870
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !870
  store i64 1, ptr %4, align 8, !dbg !870
  store double 0.000000e+00, ptr %expected_ret.dbg.spill, align 8, !dbg !871
    #dbg_declare(ptr %expected_ret.dbg.spill, !862, !DIExpression(), !872)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !873
  %_10 = load i64, ptr %5, align 8, !dbg !873, !noundef !23
  %_9 = icmp eq i64 %_10, 1, !dbg !873
  br i1 %_9, label %bb6, label %bb5, !dbg !873

bb5:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !873
  br label %bb7, !dbg !873

bb6:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !874
  %_14 = load i64, ptr %6, align 8, !dbg !874, !noundef !23
  %_13 = icmp eq i64 %_14, 1, !dbg !874
  %7 = zext i1 %_13 to i8, !dbg !873
  store i8 %7, ptr %_8, align 1, !dbg !873
  br label %bb7, !dbg !873

bb7:                                              ; preds = %bb6, %bb5
  %8 = load i8, ptr %_8, align 1, !dbg !873, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !873
  br i1 %9, label %bb3, label %bb2, !dbg !873

bb2:                                              ; preds = %bb7
  store i8 0, ptr %0, align 1, !dbg !873
  br label %bb4, !dbg !873

bb3:                                              ; preds = %bb7
  %_17 = fcmp oeq double %ret, 0.000000e+00, !dbg !875
  %10 = zext i1 %_17 to i8, !dbg !873
  store i8 %10, ptr %0, align 1, !dbg !873
  br label %bb4, !dbg !873

bb4:                                              ; preds = %bb3, %bb2
  %11 = load i8, ptr %0, align 1, !dbg !876, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !876
  ret i1 %12, !dbg !876
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_34() unnamed_addr #0 !dbg !877 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !879, !DIExpression(), !887)
    #dbg_declare(ptr %expected_state, !883, !DIExpression(), !888)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !889
  store i64 -1, ptr %1, align 8, !dbg !889
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !889
  store i64 0, ptr %2, align 8, !dbg !889
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !890
  %ret = call double @next_double(ptr %rnd), !dbg !891
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !891
    #dbg_declare(ptr %ret.dbg.spill, !881, !DIExpression(), !892)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !893
  store i64 0, ptr %3, align 8, !dbg !893
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !893
  store i64 8388544, ptr %4, align 8, !dbg !893
  %expected_ret = call double @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE"(i64 4422530436031315968), !dbg !894
  store double %expected_ret, ptr %expected_ret.dbg.spill, align 8, !dbg !894
    #dbg_declare(ptr %expected_ret.dbg.spill, !885, !DIExpression(), !895)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !896
  %_10 = load i64, ptr %5, align 8, !dbg !896, !noundef !23
  %_9 = icmp eq i64 %_10, 0, !dbg !896
  br i1 %_9, label %bb7, label %bb6, !dbg !896

bb6:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !896
  br label %bb8, !dbg !896

bb7:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !897
  %_14 = load i64, ptr %6, align 8, !dbg !897, !noundef !23
  %_13 = icmp eq i64 %_14, 8388544, !dbg !897
  %7 = zext i1 %_13 to i8, !dbg !896
  store i8 %7, ptr %_8, align 1, !dbg !896
  br label %bb8, !dbg !896

bb8:                                              ; preds = %bb7, %bb6
  %8 = load i8, ptr %_8, align 1, !dbg !896, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !896
  br i1 %9, label %bb4, label %bb3, !dbg !896

bb3:                                              ; preds = %bb8
  store i8 0, ptr %0, align 1, !dbg !896
  br label %bb5, !dbg !896

bb4:                                              ; preds = %bb8
  %_17 = fcmp oeq double %ret, %expected_ret, !dbg !898
  %10 = zext i1 %_17 to i8, !dbg !896
  store i8 %10, ptr %0, align 1, !dbg !896
  br label %bb5, !dbg !896

bb5:                                              ; preds = %bb4, %bb3
  %11 = load i8, ptr %0, align 1, !dbg !899, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !899
  ret i1 %12, !dbg !899
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_35() unnamed_addr #0 !dbg !900 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !902, !DIExpression(), !910)
    #dbg_declare(ptr %expected_state, !906, !DIExpression(), !911)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !912
  store i64 0, ptr %1, align 8, !dbg !912
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !912
  store i64 -1, ptr %2, align 8, !dbg !912
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !913
  %ret = call double @next_double(ptr %rnd), !dbg !914
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !914
    #dbg_declare(ptr %ret.dbg.spill, !904, !DIExpression(), !915)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !916
  store i64 -1, ptr %3, align 8, !dbg !916
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !916
  store i64 -274877906944, ptr %4, align 8, !dbg !916
  %expected_ret = call double @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE"(i64 4607182418665799678), !dbg !917
  store double %expected_ret, ptr %expected_ret.dbg.spill, align 8, !dbg !917
    #dbg_declare(ptr %expected_ret.dbg.spill, !908, !DIExpression(), !918)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !919
  %_10 = load i64, ptr %5, align 8, !dbg !919, !noundef !23
  %_9 = icmp eq i64 %_10, -1, !dbg !919
  br i1 %_9, label %bb7, label %bb6, !dbg !919

bb6:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !919
  br label %bb8, !dbg !919

bb7:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !920
  %_14 = load i64, ptr %6, align 8, !dbg !920, !noundef !23
  %_13 = icmp eq i64 %_14, -274877906944, !dbg !920
  %7 = zext i1 %_13 to i8, !dbg !919
  store i8 %7, ptr %_8, align 1, !dbg !919
  br label %bb8, !dbg !919

bb8:                                              ; preds = %bb7, %bb6
  %8 = load i8, ptr %_8, align 1, !dbg !919, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !919
  br i1 %9, label %bb4, label %bb3, !dbg !919

bb3:                                              ; preds = %bb8
  store i8 0, ptr %0, align 1, !dbg !919
  br label %bb5, !dbg !919

bb4:                                              ; preds = %bb8
  %_17 = fcmp oeq double %ret, %expected_ret, !dbg !921
  %10 = zext i1 %_17 to i8, !dbg !919
  store i8 %10, ptr %0, align 1, !dbg !919
  br label %bb5, !dbg !919

bb5:                                              ; preds = %bb4, %bb3
  %11 = load i8, ptr %0, align 1, !dbg !922, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !922
  ret i1 %12, !dbg !922
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_36() unnamed_addr #0 !dbg !923 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !925, !DIExpression(), !933)
    #dbg_declare(ptr %expected_state, !929, !DIExpression(), !934)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !935
  store i64 -1, ptr %1, align 8, !dbg !935
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !935
  store i64 -1, ptr %2, align 8, !dbg !935
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !936
  %ret = call double @next_double(ptr %rnd), !dbg !937
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !937
    #dbg_declare(ptr %ret.dbg.spill, !927, !DIExpression(), !938)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !939
  store i64 -1, ptr %3, align 8, !dbg !939
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !939
  store i64 -274869518400, ptr %4, align 8, !dbg !939
  %expected_ret = call double @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE"(i64 4607182418665803774), !dbg !940
  store double %expected_ret, ptr %expected_ret.dbg.spill, align 8, !dbg !940
    #dbg_declare(ptr %expected_ret.dbg.spill, !931, !DIExpression(), !941)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !942
  %_10 = load i64, ptr %5, align 8, !dbg !942, !noundef !23
  %_9 = icmp eq i64 %_10, -1, !dbg !942
  br i1 %_9, label %bb7, label %bb6, !dbg !942

bb6:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !942
  br label %bb8, !dbg !942

bb7:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !943
  %_14 = load i64, ptr %6, align 8, !dbg !943, !noundef !23
  %_13 = icmp eq i64 %_14, -274869518400, !dbg !943
  %7 = zext i1 %_13 to i8, !dbg !942
  store i8 %7, ptr %_8, align 1, !dbg !942
  br label %bb8, !dbg !942

bb8:                                              ; preds = %bb7, %bb6
  %8 = load i8, ptr %_8, align 1, !dbg !942, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !942
  br i1 %9, label %bb4, label %bb3, !dbg !942

bb3:                                              ; preds = %bb8
  store i8 0, ptr %0, align 1, !dbg !942
  br label %bb5, !dbg !942

bb4:                                              ; preds = %bb8
  %_17 = fcmp oeq double %ret, %expected_ret, !dbg !944
  %10 = zext i1 %_17 to i8, !dbg !942
  store i8 %10, ptr %0, align 1, !dbg !942
  br label %bb5, !dbg !942

bb5:                                              ; preds = %bb4, %bb3
  %11 = load i8, ptr %0, align 1, !dbg !945, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !945
  ret i1 %12, !dbg !945
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_37() unnamed_addr #0 !dbg !946 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !948, !DIExpression(), !956)
    #dbg_declare(ptr %expected_state, !952, !DIExpression(), !957)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !958
  store i64 -9223372036854775808, ptr %1, align 8, !dbg !958
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !958
  store i64 -9223372036854775808, ptr %2, align 8, !dbg !958
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !959
  %ret = call double @next_double(ptr %rnd), !dbg !960
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !960
    #dbg_declare(ptr %ret.dbg.spill, !950, !DIExpression(), !961)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !962
  store i64 -9223372036854775808, ptr %3, align 8, !dbg !962
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !962
  store i64 70506183131136, ptr %4, align 8, !dbg !962
  %expected_ret = call double @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE"(i64 4602678853599494144), !dbg !963
  store double %expected_ret, ptr %expected_ret.dbg.spill, align 8, !dbg !963
    #dbg_declare(ptr %expected_ret.dbg.spill, !954, !DIExpression(), !964)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !965
  %_10 = load i64, ptr %5, align 8, !dbg !965, !noundef !23
  %_9 = icmp eq i64 %_10, -9223372036854775808, !dbg !965
  br i1 %_9, label %bb7, label %bb6, !dbg !965

bb6:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !965
  br label %bb8, !dbg !965

bb7:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !966
  %_14 = load i64, ptr %6, align 8, !dbg !966, !noundef !23
  %_13 = icmp eq i64 %_14, 70506183131136, !dbg !966
  %7 = zext i1 %_13 to i8, !dbg !965
  store i8 %7, ptr %_8, align 1, !dbg !965
  br label %bb8, !dbg !965

bb8:                                              ; preds = %bb7, %bb6
  %8 = load i8, ptr %_8, align 1, !dbg !965, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !965
  br i1 %9, label %bb4, label %bb3, !dbg !965

bb3:                                              ; preds = %bb8
  store i8 0, ptr %0, align 1, !dbg !965
  br label %bb5, !dbg !965

bb4:                                              ; preds = %bb8
  %_17 = fcmp oeq double %ret, %expected_ret, !dbg !967
  %10 = zext i1 %_17 to i8, !dbg !965
  store i8 %10, ptr %0, align 1, !dbg !965
  br label %bb5, !dbg !965

bb5:                                              ; preds = %bb4, %bb3
  %11 = load i8, ptr %0, align 1, !dbg !968, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !968
  ret i1 %12, !dbg !968
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_38() unnamed_addr #0 !dbg !969 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !971, !DIExpression(), !979)
    #dbg_declare(ptr %expected_state, !975, !DIExpression(), !980)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !981
  store i64 4611686018427387904, ptr %1, align 8, !dbg !981
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !981
  store i64 4611686018427387904, ptr %2, align 8, !dbg !981
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !982
  %ret = call double @next_double(ptr %rnd), !dbg !983
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !983
    #dbg_declare(ptr %ret.dbg.spill, !973, !DIExpression(), !984)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !985
  store i64 4611686018427387904, ptr %3, align 8, !dbg !985
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !985
  store i64 35253091565568, ptr %4, align 8, !dbg !985
  %expected_ret = call double @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE"(i64 4598175253972123648), !dbg !986
  store double %expected_ret, ptr %expected_ret.dbg.spill, align 8, !dbg !986
    #dbg_declare(ptr %expected_ret.dbg.spill, !977, !DIExpression(), !987)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !988
  %_10 = load i64, ptr %5, align 8, !dbg !988, !noundef !23
  %_9 = icmp eq i64 %_10, 4611686018427387904, !dbg !988
  br i1 %_9, label %bb7, label %bb6, !dbg !988

bb6:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !988
  br label %bb8, !dbg !988

bb7:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !989
  %_14 = load i64, ptr %6, align 8, !dbg !989, !noundef !23
  %_13 = icmp eq i64 %_14, 35253091565568, !dbg !989
  %7 = zext i1 %_13 to i8, !dbg !988
  store i8 %7, ptr %_8, align 1, !dbg !988
  br label %bb8, !dbg !988

bb8:                                              ; preds = %bb7, %bb6
  %8 = load i8, ptr %_8, align 1, !dbg !988, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !988
  br i1 %9, label %bb4, label %bb3, !dbg !988

bb3:                                              ; preds = %bb8
  store i8 0, ptr %0, align 1, !dbg !988
  br label %bb5, !dbg !988

bb4:                                              ; preds = %bb8
  %_17 = fcmp oeq double %ret, %expected_ret, !dbg !990
  %10 = zext i1 %_17 to i8, !dbg !988
  store i8 %10, ptr %0, align 1, !dbg !988
  br label %bb5, !dbg !988

bb5:                                              ; preds = %bb4, %bb3
  %11 = load i8, ptr %0, align 1, !dbg !991, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !991
  ret i1 %12, !dbg !991
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_39() unnamed_addr #0 !dbg !992 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !994, !DIExpression(), !1002)
    #dbg_declare(ptr %expected_state, !998, !DIExpression(), !1003)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !1004
  store i64 4294967296, ptr %1, align 8, !dbg !1004
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !1004
  store i64 4294967296, ptr %2, align 8, !dbg !1004
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !1005
  %ret = call double @next_double(ptr %rnd), !dbg !1006
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !1006
    #dbg_declare(ptr %ret.dbg.spill, !996, !DIExpression(), !1007)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !1008
  store i64 4294967296, ptr %3, align 8, !dbg !1008
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !1008
  store i64 36029071896903744, ptr %4, align 8, !dbg !1008
  %expected_ret = call double @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE"(i64 4566650057050296320), !dbg !1009
  store double %expected_ret, ptr %expected_ret.dbg.spill, align 8, !dbg !1009
    #dbg_declare(ptr %expected_ret.dbg.spill, !1000, !DIExpression(), !1010)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !1011
  %_10 = load i64, ptr %5, align 8, !dbg !1011, !noundef !23
  %_9 = icmp eq i64 %_10, 4294967296, !dbg !1011
  br i1 %_9, label %bb7, label %bb6, !dbg !1011

bb6:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !1011
  br label %bb8, !dbg !1011

bb7:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !1012
  %_14 = load i64, ptr %6, align 8, !dbg !1012, !noundef !23
  %_13 = icmp eq i64 %_14, 36029071896903744, !dbg !1012
  %7 = zext i1 %_13 to i8, !dbg !1011
  store i8 %7, ptr %_8, align 1, !dbg !1011
  br label %bb8, !dbg !1011

bb8:                                              ; preds = %bb7, %bb6
  %8 = load i8, ptr %_8, align 1, !dbg !1011, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !1011
  br i1 %9, label %bb4, label %bb3, !dbg !1011

bb3:                                              ; preds = %bb8
  store i8 0, ptr %0, align 1, !dbg !1011
  br label %bb5, !dbg !1011

bb4:                                              ; preds = %bb8
  %_17 = fcmp oeq double %ret, %expected_ret, !dbg !1013
  %10 = zext i1 %_17 to i8, !dbg !1011
  store i8 %10, ptr %0, align 1, !dbg !1011
  br label %bb5, !dbg !1011

bb5:                                              ; preds = %bb4, %bb3
  %11 = load i8, ptr %0, align 1, !dbg !1014, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !1014
  ret i1 %12, !dbg !1014
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_40() unnamed_addr #0 !dbg !1015 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !1017, !DIExpression(), !1025)
    #dbg_declare(ptr %expected_state, !1021, !DIExpression(), !1026)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !1027
  store i64 65536, ptr %1, align 8, !dbg !1027
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !1027
  store i64 65536, ptr %2, align 8, !dbg !1027
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !1028
  %ret = call double @next_double(ptr %rnd), !dbg !1029
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !1029
    #dbg_declare(ptr %ret.dbg.spill, !1019, !DIExpression(), !1030)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !1031
  store i64 65536, ptr %3, align 8, !dbg !1031
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !1031
  store i64 549760008192, ptr %4, align 8, !dbg !1031
  %expected_ret = call double @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE"(i64 4494592463012364288), !dbg !1032
  store double %expected_ret, ptr %expected_ret.dbg.spill, align 8, !dbg !1032
    #dbg_declare(ptr %expected_ret.dbg.spill, !1023, !DIExpression(), !1033)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !1034
  %_10 = load i64, ptr %5, align 8, !dbg !1034, !noundef !23
  %_9 = icmp eq i64 %_10, 65536, !dbg !1034
  br i1 %_9, label %bb7, label %bb6, !dbg !1034

bb6:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !1034
  br label %bb8, !dbg !1034

bb7:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !1035
  %_14 = load i64, ptr %6, align 8, !dbg !1035, !noundef !23
  %_13 = icmp eq i64 %_14, 549760008192, !dbg !1035
  %7 = zext i1 %_13 to i8, !dbg !1034
  store i8 %7, ptr %_8, align 1, !dbg !1034
  br label %bb8, !dbg !1034

bb8:                                              ; preds = %bb7, %bb6
  %8 = load i8, ptr %_8, align 1, !dbg !1034, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !1034
  br i1 %9, label %bb4, label %bb3, !dbg !1034

bb3:                                              ; preds = %bb8
  store i8 0, ptr %0, align 1, !dbg !1034
  br label %bb5, !dbg !1034

bb4:                                              ; preds = %bb8
  %_17 = fcmp oeq double %ret, %expected_ret, !dbg !1036
  %10 = zext i1 %_17 to i8, !dbg !1034
  store i8 %10, ptr %0, align 1, !dbg !1034
  br label %bb5, !dbg !1034

bb5:                                              ; preds = %bb4, %bb3
  %11 = load i8, ptr %0, align 1, !dbg !1037, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !1037
  ret i1 %12, !dbg !1037
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_41() unnamed_addr #0 !dbg !1038 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !1040, !DIExpression(), !1048)
    #dbg_declare(ptr %expected_state, !1044, !DIExpression(), !1049)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !1050
  store i64 1, ptr %1, align 8, !dbg !1050
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !1050
  store i64 2, ptr %2, align 8, !dbg !1050
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !1051
  %ret = call double @next_double(ptr %rnd), !dbg !1052
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !1052
    #dbg_declare(ptr %ret.dbg.spill, !1042, !DIExpression(), !1053)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !1054
  store i64 2, ptr %3, align 8, !dbg !1054
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !1054
  store i64 8388675, ptr %4, align 8, !dbg !1054
  %expected_ret = call double @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE"(i64 4422534834077827072), !dbg !1055
  store double %expected_ret, ptr %expected_ret.dbg.spill, align 8, !dbg !1055
    #dbg_declare(ptr %expected_ret.dbg.spill, !1046, !DIExpression(), !1056)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !1057
  %_10 = load i64, ptr %5, align 8, !dbg !1057, !noundef !23
  %_9 = icmp eq i64 %_10, 2, !dbg !1057
  br i1 %_9, label %bb7, label %bb6, !dbg !1057

bb6:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !1057
  br label %bb8, !dbg !1057

bb7:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !1058
  %_14 = load i64, ptr %6, align 8, !dbg !1058, !noundef !23
  %_13 = icmp eq i64 %_14, 8388675, !dbg !1058
  %7 = zext i1 %_13 to i8, !dbg !1057
  store i8 %7, ptr %_8, align 1, !dbg !1057
  br label %bb8, !dbg !1057

bb8:                                              ; preds = %bb7, %bb6
  %8 = load i8, ptr %_8, align 1, !dbg !1057, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !1057
  br i1 %9, label %bb4, label %bb3, !dbg !1057

bb3:                                              ; preds = %bb8
  store i8 0, ptr %0, align 1, !dbg !1057
  br label %bb5, !dbg !1057

bb4:                                              ; preds = %bb8
  %_17 = fcmp oeq double %ret, %expected_ret, !dbg !1059
  %10 = zext i1 %_17 to i8, !dbg !1057
  store i8 %10, ptr %0, align 1, !dbg !1057
  br label %bb5, !dbg !1057

bb5:                                              ; preds = %bb4, %bb3
  %11 = load i8, ptr %0, align 1, !dbg !1060, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !1060
  ret i1 %12, !dbg !1060
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_42() unnamed_addr #0 !dbg !1061 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !1063, !DIExpression(), !1071)
    #dbg_declare(ptr %expected_state, !1067, !DIExpression(), !1072)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !1073
  store i64 2, ptr %1, align 8, !dbg !1073
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !1073
  store i64 8388675, ptr %2, align 8, !dbg !1073
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !1074
  %ret = call double @next_double(ptr %rnd), !dbg !1075
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !1075
    #dbg_declare(ptr %ret.dbg.spill, !1065, !DIExpression(), !1076)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !1077
  store i64 8388675, ptr %3, align 8, !dbg !1077
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !1077
  store i64 25166017, ptr %4, align 8, !dbg !1077
  %expected_ret = call double @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE"(i64 4431542033332568064), !dbg !1078
  store double %expected_ret, ptr %expected_ret.dbg.spill, align 8, !dbg !1078
    #dbg_declare(ptr %expected_ret.dbg.spill, !1069, !DIExpression(), !1079)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !1080
  %_10 = load i64, ptr %5, align 8, !dbg !1080, !noundef !23
  %_9 = icmp eq i64 %_10, 8388675, !dbg !1080
  br i1 %_9, label %bb7, label %bb6, !dbg !1080

bb6:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !1080
  br label %bb8, !dbg !1080

bb7:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !1081
  %_14 = load i64, ptr %6, align 8, !dbg !1081, !noundef !23
  %_13 = icmp eq i64 %_14, 25166017, !dbg !1081
  %7 = zext i1 %_13 to i8, !dbg !1080
  store i8 %7, ptr %_8, align 1, !dbg !1080
  br label %bb8, !dbg !1080

bb8:                                              ; preds = %bb7, %bb6
  %8 = load i8, ptr %_8, align 1, !dbg !1080, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !1080
  br i1 %9, label %bb4, label %bb3, !dbg !1080

bb3:                                              ; preds = %bb8
  store i8 0, ptr %0, align 1, !dbg !1080
  br label %bb5, !dbg !1080

bb4:                                              ; preds = %bb8
  %_17 = fcmp oeq double %ret, %expected_ret, !dbg !1082
  %10 = zext i1 %_17 to i8, !dbg !1080
  store i8 %10, ptr %0, align 1, !dbg !1080
  br label %bb5, !dbg !1080

bb5:                                              ; preds = %bb4, %bb3
  %11 = load i8, ptr %0, align 1, !dbg !1083, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !1083
  ret i1 %12, !dbg !1083
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_43() unnamed_addr #0 !dbg !1084 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !1086, !DIExpression(), !1094)
    #dbg_declare(ptr %expected_state, !1090, !DIExpression(), !1095)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !1096
  store i64 8388675, ptr %1, align 8, !dbg !1096
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !1096
  store i64 25166017, ptr %2, align 8, !dbg !1096
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !1097
  %ret = call double @next_double(ptr %rnd), !dbg !1098
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !1098
    #dbg_declare(ptr %ret.dbg.spill, !1088, !DIExpression(), !1099)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !1100
  store i64 25166017, ptr %3, align 8, !dbg !1100
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !1100
  store i64 70368752570370, ptr %4, align 8, !dbg !1100
  %expected_ret = call double @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE"(i64 4526117627655094272), !dbg !1101
  store double %expected_ret, ptr %expected_ret.dbg.spill, align 8, !dbg !1101
    #dbg_declare(ptr %expected_ret.dbg.spill, !1092, !DIExpression(), !1102)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !1103
  %_10 = load i64, ptr %5, align 8, !dbg !1103, !noundef !23
  %_9 = icmp eq i64 %_10, 25166017, !dbg !1103
  br i1 %_9, label %bb7, label %bb6, !dbg !1103

bb6:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !1103
  br label %bb8, !dbg !1103

bb7:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !1104
  %_14 = load i64, ptr %6, align 8, !dbg !1104, !noundef !23
  %_13 = icmp eq i64 %_14, 70368752570370, !dbg !1104
  %7 = zext i1 %_13 to i8, !dbg !1103
  store i8 %7, ptr %_8, align 1, !dbg !1103
  br label %bb8, !dbg !1103

bb8:                                              ; preds = %bb7, %bb6
  %8 = load i8, ptr %_8, align 1, !dbg !1103, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !1103
  br i1 %9, label %bb4, label %bb3, !dbg !1103

bb3:                                              ; preds = %bb8
  store i8 0, ptr %0, align 1, !dbg !1103
  br label %bb5, !dbg !1103

bb4:                                              ; preds = %bb8
  %_17 = fcmp oeq double %ret, %expected_ret, !dbg !1105
  %10 = zext i1 %_17 to i8, !dbg !1103
  store i8 %10, ptr %0, align 1, !dbg !1103
  br label %bb5, !dbg !1103

bb5:                                              ; preds = %bb4, %bb3
  %11 = load i8, ptr %0, align 1, !dbg !1106, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !1106
  ret i1 %12, !dbg !1106
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_44() unnamed_addr #0 !dbg !1107 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !1109, !DIExpression(), !1117)
    #dbg_declare(ptr %expected_state, !1113, !DIExpression(), !1118)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !1119
  store i64 25166017, ptr %1, align 8, !dbg !1119
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !1119
  store i64 70368752570370, ptr %2, align 8, !dbg !1119
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !1120
  %ret = call double @next_double(ptr %rnd), !dbg !1121
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !1121
    #dbg_declare(ptr %ret.dbg.spill, !1111, !DIExpression(), !1122)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !1123
  store i64 70368752570370, ptr %3, align 8, !dbg !1123
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !1123
  store i64 140737514577987, ptr %4, align 8, !dbg !1123
  %expected_ret = call double @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE"(i64 4532873026056093696), !dbg !1124
  store double %expected_ret, ptr %expected_ret.dbg.spill, align 8, !dbg !1124
    #dbg_declare(ptr %expected_ret.dbg.spill, !1115, !DIExpression(), !1125)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !1126
  %_10 = load i64, ptr %5, align 8, !dbg !1126, !noundef !23
  %_9 = icmp eq i64 %_10, 70368752570370, !dbg !1126
  br i1 %_9, label %bb7, label %bb6, !dbg !1126

bb6:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !1126
  br label %bb8, !dbg !1126

bb7:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !1127
  %_14 = load i64, ptr %6, align 8, !dbg !1127, !noundef !23
  %_13 = icmp eq i64 %_14, 140737514577987, !dbg !1127
  %7 = zext i1 %_13 to i8, !dbg !1126
  store i8 %7, ptr %_8, align 1, !dbg !1126
  br label %bb8, !dbg !1126

bb8:                                              ; preds = %bb7, %bb6
  %8 = load i8, ptr %_8, align 1, !dbg !1126, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !1126
  br i1 %9, label %bb4, label %bb3, !dbg !1126

bb3:                                              ; preds = %bb8
  store i8 0, ptr %0, align 1, !dbg !1126
  br label %bb5, !dbg !1126

bb4:                                              ; preds = %bb8
  %_17 = fcmp oeq double %ret, %expected_ret, !dbg !1128
  %10 = zext i1 %_17 to i8, !dbg !1126
  store i8 %10, ptr %0, align 1, !dbg !1126
  br label %bb5, !dbg !1126

bb5:                                              ; preds = %bb4, %bb3
  %11 = load i8, ptr %0, align 1, !dbg !1129, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !1129
  ret i1 %12, !dbg !1129
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_45() unnamed_addr #0 !dbg !1130 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !1132, !DIExpression(), !1140)
    #dbg_declare(ptr %expected_state, !1136, !DIExpression(), !1141)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !1142
  store i64 70368752570370, ptr %1, align 8, !dbg !1142
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !1142
  store i64 140737514577987, ptr %2, align 8, !dbg !1142
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !1143
  %ret = call double @next_double(ptr %rnd), !dbg !1144
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !1144
    #dbg_declare(ptr %ret.dbg.spill, !1134, !DIExpression(), !1145)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !1146
  store i64 140737514577987, ptr %3, align 8, !dbg !1146
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !1146
  store i64 140771851513985, ptr %4, align 8, !dbg !1146
  %expected_ret = call double @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE"(i64 4535125374992187392), !dbg !1147
  store double %expected_ret, ptr %expected_ret.dbg.spill, align 8, !dbg !1147
    #dbg_declare(ptr %expected_ret.dbg.spill, !1138, !DIExpression(), !1148)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !1149
  %_10 = load i64, ptr %5, align 8, !dbg !1149, !noundef !23
  %_9 = icmp eq i64 %_10, 140737514577987, !dbg !1149
  br i1 %_9, label %bb7, label %bb6, !dbg !1149

bb6:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !1149
  br label %bb8, !dbg !1149

bb7:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !1150
  %_14 = load i64, ptr %6, align 8, !dbg !1150, !noundef !23
  %_13 = icmp eq i64 %_14, 140771851513985, !dbg !1150
  %7 = zext i1 %_13 to i8, !dbg !1149
  store i8 %7, ptr %_8, align 1, !dbg !1149
  br label %bb8, !dbg !1149

bb8:                                              ; preds = %bb7, %bb6
  %8 = load i8, ptr %_8, align 1, !dbg !1149, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !1149
  br i1 %9, label %bb4, label %bb3, !dbg !1149

bb3:                                              ; preds = %bb8
  store i8 0, ptr %0, align 1, !dbg !1149
  br label %bb5, !dbg !1149

bb4:                                              ; preds = %bb8
  %_17 = fcmp oeq double %ret, %expected_ret, !dbg !1151
  %10 = zext i1 %_17 to i8, !dbg !1149
  store i8 %10, ptr %0, align 1, !dbg !1149
  br label %bb5, !dbg !1149

bb5:                                              ; preds = %bb4, %bb3
  %11 = load i8, ptr %0, align 1, !dbg !1152, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !1152
  ret i1 %12, !dbg !1152
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_46() unnamed_addr #0 !dbg !1153 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !1155, !DIExpression(), !1163)
    #dbg_declare(ptr %expected_state, !1159, !DIExpression(), !1164)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !1165
  store i64 140737514577987, ptr %1, align 8, !dbg !1165
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !1165
  store i64 140771851513985, ptr %2, align 8, !dbg !1165
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !1166
  %ret = call double @next_double(ptr %rnd), !dbg !1167
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !1167
    #dbg_declare(ptr %ret.dbg.spill, !1157, !DIExpression(), !1168)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !1169
  store i64 140771851513985, ptr %3, align 8, !dbg !1169
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !1169
  store i64 220005472666314, ptr %4, align 8, !dbg !1169
  %expected_ret = call double @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE"(i64 4536393662321590272), !dbg !1170
  store double %expected_ret, ptr %expected_ret.dbg.spill, align 8, !dbg !1170
    #dbg_declare(ptr %expected_ret.dbg.spill, !1161, !DIExpression(), !1171)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !1172
  %_10 = load i64, ptr %5, align 8, !dbg !1172, !noundef !23
  %_9 = icmp eq i64 %_10, 140771851513985, !dbg !1172
  br i1 %_9, label %bb7, label %bb6, !dbg !1172

bb6:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !1172
  br label %bb8, !dbg !1172

bb7:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !1173
  %_14 = load i64, ptr %6, align 8, !dbg !1173, !noundef !23
  %_13 = icmp eq i64 %_14, 220005472666314, !dbg !1173
  %7 = zext i1 %_13 to i8, !dbg !1172
  store i8 %7, ptr %_8, align 1, !dbg !1172
  br label %bb8, !dbg !1172

bb8:                                              ; preds = %bb7, %bb6
  %8 = load i8, ptr %_8, align 1, !dbg !1172, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !1172
  br i1 %9, label %bb4, label %bb3, !dbg !1172

bb3:                                              ; preds = %bb8
  store i8 0, ptr %0, align 1, !dbg !1172
  br label %bb5, !dbg !1172

bb4:                                              ; preds = %bb8
  %_17 = fcmp oeq double %ret, %expected_ret, !dbg !1174
  %10 = zext i1 %_17 to i8, !dbg !1172
  store i8 %10, ptr %0, align 1, !dbg !1172
  br label %bb5, !dbg !1172

bb5:                                              ; preds = %bb4, %bb3
  %11 = load i8, ptr %0, align 1, !dbg !1175, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !1175
  ret i1 %12, !dbg !1175
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_47() unnamed_addr #0 !dbg !1176 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !1178, !DIExpression(), !1186)
    #dbg_declare(ptr %expected_state, !1182, !DIExpression(), !1187)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !1188
  store i64 140771851513985, ptr %1, align 8, !dbg !1188
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !1188
  store i64 220005472666314, ptr %2, align 8, !dbg !1188
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !1189
  %ret = call double @next_double(ptr %rnd), !dbg !1190
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !1190
    #dbg_declare(ptr %ret.dbg.spill, !1180, !DIExpression(), !1191)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !1192
  store i64 220005472666314, ptr %3, align 8, !dbg !1192
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !1192
  store i64 288318371601191952, ptr %4, align 8, !dbg !1192
  %expected_ret = call double @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE"(i64 4580165633550202944), !dbg !1193
  store double %expected_ret, ptr %expected_ret.dbg.spill, align 8, !dbg !1193
    #dbg_declare(ptr %expected_ret.dbg.spill, !1184, !DIExpression(), !1194)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !1195
  %_10 = load i64, ptr %5, align 8, !dbg !1195, !noundef !23
  %_9 = icmp eq i64 %_10, 220005472666314, !dbg !1195
  br i1 %_9, label %bb7, label %bb6, !dbg !1195

bb6:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !1195
  br label %bb8, !dbg !1195

bb7:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !1196
  %_14 = load i64, ptr %6, align 8, !dbg !1196, !noundef !23
  %_13 = icmp eq i64 %_14, 288318371601191952, !dbg !1196
  %7 = zext i1 %_13 to i8, !dbg !1195
  store i8 %7, ptr %_8, align 1, !dbg !1195
  br label %bb8, !dbg !1195

bb8:                                              ; preds = %bb7, %bb6
  %8 = load i8, ptr %_8, align 1, !dbg !1195, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !1195
  br i1 %9, label %bb4, label %bb3, !dbg !1195

bb3:                                              ; preds = %bb8
  store i8 0, ptr %0, align 1, !dbg !1195
  br label %bb5, !dbg !1195

bb4:                                              ; preds = %bb8
  %_17 = fcmp oeq double %ret, %expected_ret, !dbg !1197
  %10 = zext i1 %_17 to i8, !dbg !1195
  store i8 %10, ptr %0, align 1, !dbg !1195
  br label %bb5, !dbg !1195

bb5:                                              ; preds = %bb4, %bb3
  %11 = load i8, ptr %0, align 1, !dbg !1198, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !1198
  ret i1 %12, !dbg !1198
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_48() unnamed_addr #0 !dbg !1199 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !1201, !DIExpression(), !1209)
    #dbg_declare(ptr %expected_state, !1205, !DIExpression(), !1210)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !1211
  store i64 220005472666314, ptr %1, align 8, !dbg !1211
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !1211
  store i64 288318371601191952, ptr %2, align 8, !dbg !1211
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !1212
  %ret = call double @next_double(ptr %rnd), !dbg !1213
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !1213
    #dbg_declare(ptr %ret.dbg.spill, !1203, !DIExpression(), !1214)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !1215
  store i64 288318371601191952, ptr %3, align 8, !dbg !1215
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !1215
  store i64 577190901300241502, ptr %4, align 8, !dbg !1215
  %expected_ret = call double @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE"(i64 4586922612230336864), !dbg !1216
  store double %expected_ret, ptr %expected_ret.dbg.spill, align 8, !dbg !1216
    #dbg_declare(ptr %expected_ret.dbg.spill, !1207, !DIExpression(), !1217)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !1218
  %_10 = load i64, ptr %5, align 8, !dbg !1218, !noundef !23
  %_9 = icmp eq i64 %_10, 288318371601191952, !dbg !1218
  br i1 %_9, label %bb7, label %bb6, !dbg !1218

bb6:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !1218
  br label %bb8, !dbg !1218

bb7:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !1219
  %_14 = load i64, ptr %6, align 8, !dbg !1219, !noundef !23
  %_13 = icmp eq i64 %_14, 577190901300241502, !dbg !1219
  %7 = zext i1 %_13 to i8, !dbg !1218
  store i8 %7, ptr %_8, align 1, !dbg !1218
  br label %bb8, !dbg !1218

bb8:                                              ; preds = %bb7, %bb6
  %8 = load i8, ptr %_8, align 1, !dbg !1218, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !1218
  br i1 %9, label %bb4, label %bb3, !dbg !1218

bb3:                                              ; preds = %bb8
  store i8 0, ptr %0, align 1, !dbg !1218
  br label %bb5, !dbg !1218

bb4:                                              ; preds = %bb8
  %_17 = fcmp oeq double %ret, %expected_ret, !dbg !1220
  %10 = zext i1 %_17 to i8, !dbg !1218
  store i8 %10, ptr %0, align 1, !dbg !1218
  br label %bb5, !dbg !1218

bb5:                                              ; preds = %bb4, %bb3
  %11 = load i8, ptr %0, align 1, !dbg !1221, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !1221
  ret i1 %12, !dbg !1221
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_49() unnamed_addr #0 !dbg !1222 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !1224, !DIExpression(), !1232)
    #dbg_declare(ptr %expected_state, !1228, !DIExpression(), !1233)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !1234
  store i64 288318371601191952, ptr %1, align 8, !dbg !1234
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !1234
  store i64 577190901300241502, ptr %2, align 8, !dbg !1234
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !1235
  %ret = call double @next_double(ptr %rnd), !dbg !1236
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !1236
    #dbg_declare(ptr %ret.dbg.spill, !1226, !DIExpression(), !1237)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !1238
  store i64 577190901300241502, ptr %3, align 8, !dbg !1238
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !1238
  store i64 578159580550509772, ptr %4, align 8, !dbg !1238
  %expected_ret = call double @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE"(i64 4589177508482894416), !dbg !1239
  store double %expected_ret, ptr %expected_ret.dbg.spill, align 8, !dbg !1239
    #dbg_declare(ptr %expected_ret.dbg.spill, !1230, !DIExpression(), !1240)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !1241
  %_10 = load i64, ptr %5, align 8, !dbg !1241, !noundef !23
  %_9 = icmp eq i64 %_10, 577190901300241502, !dbg !1241
  br i1 %_9, label %bb7, label %bb6, !dbg !1241

bb6:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !1241
  br label %bb8, !dbg !1241

bb7:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !1242
  %_14 = load i64, ptr %6, align 8, !dbg !1242, !noundef !23
  %_13 = icmp eq i64 %_14, 578159580550509772, !dbg !1242
  %7 = zext i1 %_13 to i8, !dbg !1241
  store i8 %7, ptr %_8, align 1, !dbg !1241
  br label %bb8, !dbg !1241

bb8:                                              ; preds = %bb7, %bb6
  %8 = load i8, ptr %_8, align 1, !dbg !1241, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !1241
  br i1 %9, label %bb4, label %bb3, !dbg !1241

bb3:                                              ; preds = %bb8
  store i8 0, ptr %0, align 1, !dbg !1241
  br label %bb5, !dbg !1241

bb4:                                              ; preds = %bb8
  %_17 = fcmp oeq double %ret, %expected_ret, !dbg !1243
  %10 = zext i1 %_17 to i8, !dbg !1241
  store i8 %10, ptr %0, align 1, !dbg !1241
  br label %bb5, !dbg !1241

bb5:                                              ; preds = %bb4, %bb3
  %11 = load i8, ptr %0, align 1, !dbg !1244, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !1244
  ret i1 %12, !dbg !1244
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_50() unnamed_addr #0 !dbg !1245 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !1247, !DIExpression(), !1255)
    #dbg_declare(ptr %expected_state, !1251, !DIExpression(), !1256)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !1257
  store i64 577190901300241502, ptr %1, align 8, !dbg !1257
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !1257
  store i64 578159580550509772, ptr %2, align 8, !dbg !1257
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !1258
  %ret = call double @next_double(ptr %rnd), !dbg !1259
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !1259
    #dbg_declare(ptr %ret.dbg.spill, !1249, !DIExpression(), !1260)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !1261
  store i64 578159580550509772, ptr %3, align 8, !dbg !1261
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !1261
  store i64 613433002483434504, ptr %4, align 8, !dbg !1261
  %expected_ret = call double @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE"(i64 4589319079190641264), !dbg !1262
  store double %expected_ret, ptr %expected_ret.dbg.spill, align 8, !dbg !1262
    #dbg_declare(ptr %expected_ret.dbg.spill, !1253, !DIExpression(), !1263)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !1264
  %_10 = load i64, ptr %5, align 8, !dbg !1264, !noundef !23
  %_9 = icmp eq i64 %_10, 578159580550509772, !dbg !1264
  br i1 %_9, label %bb7, label %bb6, !dbg !1264

bb6:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !1264
  br label %bb8, !dbg !1264

bb7:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !1265
  %_14 = load i64, ptr %6, align 8, !dbg !1265, !noundef !23
  %_13 = icmp eq i64 %_14, 613433002483434504, !dbg !1265
  %7 = zext i1 %_13 to i8, !dbg !1264
  store i8 %7, ptr %_8, align 1, !dbg !1264
  br label %bb8, !dbg !1264

bb8:                                              ; preds = %bb7, %bb6
  %8 = load i8, ptr %_8, align 1, !dbg !1264, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !1264
  br i1 %9, label %bb4, label %bb3, !dbg !1264

bb3:                                              ; preds = %bb8
  store i8 0, ptr %0, align 1, !dbg !1264
  br label %bb5, !dbg !1264

bb4:                                              ; preds = %bb8
  %_17 = fcmp oeq double %ret, %expected_ret, !dbg !1266
  %10 = zext i1 %_17 to i8, !dbg !1264
  store i8 %10, ptr %0, align 1, !dbg !1264
  br label %bb5, !dbg !1264

bb5:                                              ; preds = %bb4, %bb3
  %11 = load i8, ptr %0, align 1, !dbg !1267, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !1267
  ret i1 %12, !dbg !1267
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_51() unnamed_addr #0 !dbg !1268 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !1270, !DIExpression(), !1278)
    #dbg_declare(ptr %expected_state, !1274, !DIExpression(), !1279)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !1280
  store i64 8388608, ptr %1, align 8, !dbg !1280
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !1280
  store i64 67108864, ptr %2, align 8, !dbg !1280
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !1281
  %ret = call double @next_double(ptr %rnd), !dbg !1282
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !1282
    #dbg_declare(ptr %ret.dbg.spill, !1272, !DIExpression(), !1283)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !1284
  store i64 67108864, ptr %3, align 8, !dbg !1284
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !1284
  store i64 70369356546113, ptr %4, align 8, !dbg !1284
  %expected_ret = call double @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE"(i64 4526117668993892352), !dbg !1285
  store double %expected_ret, ptr %expected_ret.dbg.spill, align 8, !dbg !1285
    #dbg_declare(ptr %expected_ret.dbg.spill, !1276, !DIExpression(), !1286)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !1287
  %_10 = load i64, ptr %5, align 8, !dbg !1287, !noundef !23
  %_9 = icmp eq i64 %_10, 67108864, !dbg !1287
  br i1 %_9, label %bb7, label %bb6, !dbg !1287

bb6:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !1287
  br label %bb8, !dbg !1287

bb7:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !1288
  %_14 = load i64, ptr %6, align 8, !dbg !1288, !noundef !23
  %_13 = icmp eq i64 %_14, 70369356546113, !dbg !1288
  %7 = zext i1 %_13 to i8, !dbg !1287
  store i8 %7, ptr %_8, align 1, !dbg !1287
  br label %bb8, !dbg !1287

bb8:                                              ; preds = %bb7, %bb6
  %8 = load i8, ptr %_8, align 1, !dbg !1287, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !1287
  br i1 %9, label %bb4, label %bb3, !dbg !1287

bb3:                                              ; preds = %bb8
  store i8 0, ptr %0, align 1, !dbg !1287
  br label %bb5, !dbg !1287

bb4:                                              ; preds = %bb8
  %_17 = fcmp oeq double %ret, %expected_ret, !dbg !1289
  %10 = zext i1 %_17 to i8, !dbg !1287
  store i8 %10, ptr %0, align 1, !dbg !1287
  br label %bb5, !dbg !1287

bb5:                                              ; preds = %bb4, %bb3
  %11 = load i8, ptr %0, align 1, !dbg !1290, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !1290
  ret i1 %12, !dbg !1290
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_52() unnamed_addr #0 !dbg !1291 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !1293, !DIExpression(), !1301)
    #dbg_declare(ptr %expected_state, !1297, !DIExpression(), !1302)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !1303
  store i64 131072, ptr %1, align 8, !dbg !1303
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !1303
  store i64 64, ptr %2, align 8, !dbg !1303
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !1304
  %ret = call double @next_double(ptr %rnd), !dbg !1305
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !1305
    #dbg_declare(ptr %ret.dbg.spill, !1295, !DIExpression(), !1306)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !1307
  store i64 64, ptr %3, align 8, !dbg !1307
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !1307
  store i64 1099520147521, ptr %4, align 8, !dbg !1307
  %expected_ret = call double @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE"(i64 4499096062639734784), !dbg !1308
  store double %expected_ret, ptr %expected_ret.dbg.spill, align 8, !dbg !1308
    #dbg_declare(ptr %expected_ret.dbg.spill, !1299, !DIExpression(), !1309)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !1310
  %_10 = load i64, ptr %5, align 8, !dbg !1310, !noundef !23
  %_9 = icmp eq i64 %_10, 64, !dbg !1310
  br i1 %_9, label %bb7, label %bb6, !dbg !1310

bb6:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !1310
  br label %bb8, !dbg !1310

bb7:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !1311
  %_14 = load i64, ptr %6, align 8, !dbg !1311, !noundef !23
  %_13 = icmp eq i64 %_14, 1099520147521, !dbg !1311
  %7 = zext i1 %_13 to i8, !dbg !1310
  store i8 %7, ptr %_8, align 1, !dbg !1310
  br label %bb8, !dbg !1310

bb8:                                              ; preds = %bb7, %bb6
  %8 = load i8, ptr %_8, align 1, !dbg !1310, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !1310
  br i1 %9, label %bb4, label %bb3, !dbg !1310

bb3:                                              ; preds = %bb8
  store i8 0, ptr %0, align 1, !dbg !1310
  br label %bb5, !dbg !1310

bb4:                                              ; preds = %bb8
  %_17 = fcmp oeq double %ret, %expected_ret, !dbg !1312
  %10 = zext i1 %_17 to i8, !dbg !1310
  store i8 %10, ptr %0, align 1, !dbg !1310
  br label %bb5, !dbg !1310

bb5:                                              ; preds = %bb4, %bb3
  %11 = load i8, ptr %0, align 1, !dbg !1313, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !1313
  ret i1 %12, !dbg !1313
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_53() unnamed_addr #0 !dbg !1314 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !1316, !DIExpression(), !1324)
    #dbg_declare(ptr %expected_state, !1320, !DIExpression(), !1325)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !1326
  store i64 -144115188075855872, ptr %1, align 8, !dbg !1326
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !1326
  store i64 0, ptr %2, align 8, !dbg !1326
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !1327
  %ret = call double @next_double(ptr %rnd), !dbg !1328
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !1328
    #dbg_declare(ptr %ret.dbg.spill, !1318, !DIExpression(), !1329)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !1330
  store i64 0, ptr %3, align 8, !dbg !1330
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !1330
  store i64 -143975550099128320, ptr %4, align 8, !dbg !1330
  %expected_ret = call double @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE"(i64 4607112118238445568), !dbg !1331
  store double %expected_ret, ptr %expected_ret.dbg.spill, align 8, !dbg !1331
    #dbg_declare(ptr %expected_ret.dbg.spill, !1322, !DIExpression(), !1332)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !1333
  %_10 = load i64, ptr %5, align 8, !dbg !1333, !noundef !23
  %_9 = icmp eq i64 %_10, 0, !dbg !1333
  br i1 %_9, label %bb7, label %bb6, !dbg !1333

bb6:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !1333
  br label %bb8, !dbg !1333

bb7:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !1334
  %_14 = load i64, ptr %6, align 8, !dbg !1334, !noundef !23
  %_13 = icmp eq i64 %_14, -143975550099128320, !dbg !1334
  %7 = zext i1 %_13 to i8, !dbg !1333
  store i8 %7, ptr %_8, align 1, !dbg !1333
  br label %bb8, !dbg !1333

bb8:                                              ; preds = %bb7, %bb6
  %8 = load i8, ptr %_8, align 1, !dbg !1333, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !1333
  br i1 %9, label %bb4, label %bb3, !dbg !1333

bb3:                                              ; preds = %bb8
  store i8 0, ptr %0, align 1, !dbg !1333
  br label %bb5, !dbg !1333

bb4:                                              ; preds = %bb8
  %_17 = fcmp oeq double %ret, %expected_ret, !dbg !1335
  %10 = zext i1 %_17 to i8, !dbg !1333
  store i8 %10, ptr %0, align 1, !dbg !1333
  br label %bb5, !dbg !1333

bb5:                                              ; preds = %bb4, %bb3
  %11 = load i8, ptr %0, align 1, !dbg !1336, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !1336
  ret i1 %12, !dbg !1336
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_54() unnamed_addr #0 !dbg !1337 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !1339, !DIExpression(), !1347)
    #dbg_declare(ptr %expected_state, !1343, !DIExpression(), !1348)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !1349
  store i64 1, ptr %1, align 8, !dbg !1349
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !1349
  store i64 -288230376151711744, ptr %2, align 8, !dbg !1349
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !1350
  %ret = call double @next_double(ptr %rnd), !dbg !1351
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !1351
    #dbg_declare(ptr %ret.dbg.spill, !1341, !DIExpression(), !1352)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !1353
  store i64 -288230376151711744, ptr %3, align 8, !dbg !1353
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !1353
  store i64 -288230105560383423, ptr %4, align 8, !dbg !1353
  %expected_ret = call double @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE"(i64 4606900943955431424), !dbg !1354
  store double %expected_ret, ptr %expected_ret.dbg.spill, align 8, !dbg !1354
    #dbg_declare(ptr %expected_ret.dbg.spill, !1345, !DIExpression(), !1355)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !1356
  %_10 = load i64, ptr %5, align 8, !dbg !1356, !noundef !23
  %_9 = icmp eq i64 %_10, -288230376151711744, !dbg !1356
  br i1 %_9, label %bb7, label %bb6, !dbg !1356

bb6:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !1356
  br label %bb8, !dbg !1356

bb7:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !1357
  %_14 = load i64, ptr %6, align 8, !dbg !1357, !noundef !23
  %_13 = icmp eq i64 %_14, -288230105560383423, !dbg !1357
  %7 = zext i1 %_13 to i8, !dbg !1356
  store i8 %7, ptr %_8, align 1, !dbg !1356
  br label %bb8, !dbg !1356

bb8:                                              ; preds = %bb7, %bb6
  %8 = load i8, ptr %_8, align 1, !dbg !1356, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !1356
  br i1 %9, label %bb4, label %bb3, !dbg !1356

bb3:                                              ; preds = %bb8
  store i8 0, ptr %0, align 1, !dbg !1356
  br label %bb5, !dbg !1356

bb4:                                              ; preds = %bb8
  %_17 = fcmp oeq double %ret, %expected_ret, !dbg !1358
  %10 = zext i1 %_17 to i8, !dbg !1356
  store i8 %10, ptr %0, align 1, !dbg !1356
  br label %bb5, !dbg !1356

bb5:                                              ; preds = %bb4, %bb3
  %11 = load i8, ptr %0, align 1, !dbg !1359, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !1359
  ret i1 %12, !dbg !1359
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_55() unnamed_addr #0 !dbg !1360 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !1362, !DIExpression(), !1370)
    #dbg_declare(ptr %expected_state, !1366, !DIExpression(), !1371)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !1372
  store i64 -8192, ptr %1, align 8, !dbg !1372
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !1372
  store i64 -8192, ptr %2, align 8, !dbg !1372
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !1373
  %ret = call double @next_double(ptr %rnd), !dbg !1374
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !1374
    #dbg_declare(ptr %ret.dbg.spill, !1364, !DIExpression(), !1375)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !1376
  store i64 -8192, ptr %3, align 8, !dbg !1376
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !1376
  store i64 -206158954496, ptr %4, align 8, !dbg !1376
  %expected_ret = call double @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE"(i64 4607182418699353852), !dbg !1377
  store double %expected_ret, ptr %expected_ret.dbg.spill, align 8, !dbg !1377
    #dbg_declare(ptr %expected_ret.dbg.spill, !1368, !DIExpression(), !1378)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !1379
  %_10 = load i64, ptr %5, align 8, !dbg !1379, !noundef !23
  %_9 = icmp eq i64 %_10, -8192, !dbg !1379
  br i1 %_9, label %bb7, label %bb6, !dbg !1379

bb6:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !1379
  br label %bb8, !dbg !1379

bb7:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !1380
  %_14 = load i64, ptr %6, align 8, !dbg !1380, !noundef !23
  %_13 = icmp eq i64 %_14, -206158954496, !dbg !1380
  %7 = zext i1 %_13 to i8, !dbg !1379
  store i8 %7, ptr %_8, align 1, !dbg !1379
  br label %bb8, !dbg !1379

bb8:                                              ; preds = %bb7, %bb6
  %8 = load i8, ptr %_8, align 1, !dbg !1379, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !1379
  br i1 %9, label %bb4, label %bb3, !dbg !1379

bb3:                                              ; preds = %bb8
  store i8 0, ptr %0, align 1, !dbg !1379
  br label %bb5, !dbg !1379

bb4:                                              ; preds = %bb8
  %_17 = fcmp oeq double %ret, %expected_ret, !dbg !1381
  %10 = zext i1 %_17 to i8, !dbg !1379
  store i8 %10, ptr %0, align 1, !dbg !1379
  br label %bb5, !dbg !1379

bb5:                                              ; preds = %bb4, %bb3
  %11 = load i8, ptr %0, align 1, !dbg !1382, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !1382
  ret i1 %12, !dbg !1382
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_56() unnamed_addr #0 !dbg !1383 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !1385, !DIExpression(), !1393)
    #dbg_declare(ptr %expected_state, !1389, !DIExpression(), !1394)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !1395
  store i64 8191, ptr %1, align 8, !dbg !1395
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !1395
  store i64 8191, ptr %2, align 8, !dbg !1395
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !1396
  %ret = call double @next_double(ptr %rnd), !dbg !1397
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !1397
    #dbg_declare(ptr %ret.dbg.spill, !1387, !DIExpression(), !1398)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !1399
  store i64 8191, ptr %3, align 8, !dbg !1399
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !1399
  store i64 68711612352, ptr %4, align 8, !dbg !1399
  %expected_ret = call double @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE"(i64 4481080598978363392), !dbg !1400
  store double %expected_ret, ptr %expected_ret.dbg.spill, align 8, !dbg !1400
    #dbg_declare(ptr %expected_ret.dbg.spill, !1391, !DIExpression(), !1401)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !1402
  %_10 = load i64, ptr %5, align 8, !dbg !1402, !noundef !23
  %_9 = icmp eq i64 %_10, 8191, !dbg !1402
  br i1 %_9, label %bb7, label %bb6, !dbg !1402

bb6:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !1402
  br label %bb8, !dbg !1402

bb7:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !1403
  %_14 = load i64, ptr %6, align 8, !dbg !1403, !noundef !23
  %_13 = icmp eq i64 %_14, 68711612352, !dbg !1403
  %7 = zext i1 %_13 to i8, !dbg !1402
  store i8 %7, ptr %_8, align 1, !dbg !1402
  br label %bb8, !dbg !1402

bb8:                                              ; preds = %bb7, %bb6
  %8 = load i8, ptr %_8, align 1, !dbg !1402, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !1402
  br i1 %9, label %bb4, label %bb3, !dbg !1402

bb3:                                              ; preds = %bb8
  store i8 0, ptr %0, align 1, !dbg !1402
  br label %bb5, !dbg !1402

bb4:                                              ; preds = %bb8
  %_17 = fcmp oeq double %ret, %expected_ret, !dbg !1404
  %10 = zext i1 %_17 to i8, !dbg !1402
  store i8 %10, ptr %0, align 1, !dbg !1402
  br label %bb5, !dbg !1402

bb5:                                              ; preds = %bb4, %bb3
  %11 = load i8, ptr %0, align 1, !dbg !1405, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !1405
  ret i1 %12, !dbg !1405
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_57() unnamed_addr #0 !dbg !1406 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !1408, !DIExpression(), !1416)
    #dbg_declare(ptr %expected_state, !1412, !DIExpression(), !1417)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !1418
  store i64 72340172838076673, ptr %1, align 8, !dbg !1418
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !1418
  store i64 1157442765409226768, ptr %2, align 8, !dbg !1418
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !1419
  %ret = call double @next_double(ptr %rnd), !dbg !1420
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !1420
    #dbg_declare(ptr %ret.dbg.spill, !1410, !DIExpression(), !1421)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !1422
  store i64 1157442765409226768, ptr %3, align 8, !dbg !1422
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !1422
  store i64 -7957348902152841771, ptr %4, align 8, !dbg !1422
  %expected_ret = call double @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE"(i64 4603862152131685564), !dbg !1423
  store double %expected_ret, ptr %expected_ret.dbg.spill, align 8, !dbg !1423
    #dbg_declare(ptr %expected_ret.dbg.spill, !1414, !DIExpression(), !1424)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !1425
  %_10 = load i64, ptr %5, align 8, !dbg !1425, !noundef !23
  %_9 = icmp eq i64 %_10, 1157442765409226768, !dbg !1425
  br i1 %_9, label %bb7, label %bb6, !dbg !1425

bb6:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !1425
  br label %bb8, !dbg !1425

bb7:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !1426
  %_14 = load i64, ptr %6, align 8, !dbg !1426, !noundef !23
  %_13 = icmp eq i64 %_14, -7957348902152841771, !dbg !1426
  %7 = zext i1 %_13 to i8, !dbg !1425
  store i8 %7, ptr %_8, align 1, !dbg !1425
  br label %bb8, !dbg !1425

bb8:                                              ; preds = %bb7, %bb6
  %8 = load i8, ptr %_8, align 1, !dbg !1425, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !1425
  br i1 %9, label %bb4, label %bb3, !dbg !1425

bb3:                                              ; preds = %bb8
  store i8 0, ptr %0, align 1, !dbg !1425
  br label %bb5, !dbg !1425

bb4:                                              ; preds = %bb8
  %_17 = fcmp oeq double %ret, %expected_ret, !dbg !1427
  %10 = zext i1 %_17 to i8, !dbg !1425
  store i8 %10, ptr %0, align 1, !dbg !1425
  br label %bb5, !dbg !1425

bb5:                                              ; preds = %bb4, %bb3
  %11 = load i8, ptr %0, align 1, !dbg !1428, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !1428
  ret i1 %12, !dbg !1428
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_58() unnamed_addr #0 !dbg !1429 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !1431, !DIExpression(), !1439)
    #dbg_declare(ptr %expected_state, !1435, !DIExpression(), !1440)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !1441
  store i64 1085102592571150095, ptr %1, align 8, !dbg !1441
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !1441
  store i64 -1085102592571150096, ptr %2, align 8, !dbg !1441
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !1442
  %ret = call double @next_double(ptr %rnd), !dbg !1443
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !1443
    #dbg_declare(ptr %ret.dbg.spill, !1433, !DIExpression(), !1444)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !1445
  store i64 -1085102592571150096, ptr %3, align 8, !dbg !1445
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !1445
  store i64 8680754252454791044, ptr %4, align 8, !dbg !1445
  %expected_ret = call double @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE"(i64 4601089248492011036), !dbg !1446
  store double %expected_ret, ptr %expected_ret.dbg.spill, align 8, !dbg !1446
    #dbg_declare(ptr %expected_ret.dbg.spill, !1437, !DIExpression(), !1447)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !1448
  %_10 = load i64, ptr %5, align 8, !dbg !1448, !noundef !23
  %_9 = icmp eq i64 %_10, -1085102592571150096, !dbg !1448
  br i1 %_9, label %bb7, label %bb6, !dbg !1448

bb6:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !1448
  br label %bb8, !dbg !1448

bb7:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !1449
  %_14 = load i64, ptr %6, align 8, !dbg !1449, !noundef !23
  %_13 = icmp eq i64 %_14, 8680754252454791044, !dbg !1449
  %7 = zext i1 %_13 to i8, !dbg !1448
  store i8 %7, ptr %_8, align 1, !dbg !1448
  br label %bb8, !dbg !1448

bb8:                                              ; preds = %bb7, %bb6
  %8 = load i8, ptr %_8, align 1, !dbg !1448, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !1448
  br i1 %9, label %bb4, label %bb3, !dbg !1448

bb3:                                              ; preds = %bb8
  store i8 0, ptr %0, align 1, !dbg !1448
  br label %bb5, !dbg !1448

bb4:                                              ; preds = %bb8
  %_17 = fcmp oeq double %ret, %expected_ret, !dbg !1450
  %10 = zext i1 %_17 to i8, !dbg !1448
  store i8 %10, ptr %0, align 1, !dbg !1448
  br label %bb5, !dbg !1448

bb5:                                              ; preds = %bb4, %bb3
  %11 = load i8, ptr %0, align 1, !dbg !1451, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !1451
  ret i1 %12, !dbg !1451
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_59() unnamed_addr #0 !dbg !1452 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !1454, !DIExpression(), !1462)
    #dbg_declare(ptr %expected_state, !1458, !DIExpression(), !1463)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !1464
  store i64 71777214294589695, ptr %1, align 8, !dbg !1464
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !1464
  store i64 -71777214294589696, ptr %2, align 8, !dbg !1464
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !1465
  %ret = call double @next_double(ptr %rnd), !dbg !1466
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !1466
    #dbg_declare(ptr %ret.dbg.spill, !1456, !DIExpression(), !1467)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !1468
  store i64 -71777214294589696, ptr %3, align 8, !dbg !1468
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !1468
  store i64 -9187413608580022145, ptr %4, align 8, !dbg !1468
  %expected_ret = call double @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE"(i64 4602643839889424412), !dbg !1469
  store double %expected_ret, ptr %expected_ret.dbg.spill, align 8, !dbg !1469
    #dbg_declare(ptr %expected_ret.dbg.spill, !1460, !DIExpression(), !1470)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !1471
  %_10 = load i64, ptr %5, align 8, !dbg !1471, !noundef !23
  %_9 = icmp eq i64 %_10, -71777214294589696, !dbg !1471
  br i1 %_9, label %bb7, label %bb6, !dbg !1471

bb6:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !1471
  br label %bb8, !dbg !1471

bb7:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !1472
  %_14 = load i64, ptr %6, align 8, !dbg !1472, !noundef !23
  %_13 = icmp eq i64 %_14, -9187413608580022145, !dbg !1472
  %7 = zext i1 %_13 to i8, !dbg !1471
  store i8 %7, ptr %_8, align 1, !dbg !1471
  br label %bb8, !dbg !1471

bb8:                                              ; preds = %bb7, %bb6
  %8 = load i8, ptr %_8, align 1, !dbg !1471, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !1471
  br i1 %9, label %bb4, label %bb3, !dbg !1471

bb3:                                              ; preds = %bb8
  store i8 0, ptr %0, align 1, !dbg !1471
  br label %bb5, !dbg !1471

bb4:                                              ; preds = %bb8
  %_17 = fcmp oeq double %ret, %expected_ret, !dbg !1473
  %10 = zext i1 %_17 to i8, !dbg !1471
  store i8 %10, ptr %0, align 1, !dbg !1471
  br label %bb5, !dbg !1471

bb5:                                              ; preds = %bb4, %bb3
  %11 = load i8, ptr %0, align 1, !dbg !1474, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !1474
  ret i1 %12, !dbg !1474
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_60() unnamed_addr #0 !dbg !1475 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !1477, !DIExpression(), !1485)
    #dbg_declare(ptr %expected_state, !1481, !DIExpression(), !1486)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !1487
  store i64 281470681808895, ptr %1, align 8, !dbg !1487
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !1487
  store i64 -281470681808896, ptr %2, align 8, !dbg !1487
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !1488
  %ret = call double @next_double(ptr %rnd), !dbg !1489
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !1489
    #dbg_declare(ptr %ret.dbg.spill, !1479, !DIExpression(), !1490)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !1491
  store i64 -281470681808896, ptr %3, align 8, !dbg !1491
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !1491
  store i64 35888607147294720, ptr %4, align 8, !dbg !1491
  %expected_ret = call double @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE"(i64 4566544607015313408), !dbg !1492
  store double %expected_ret, ptr %expected_ret.dbg.spill, align 8, !dbg !1492
    #dbg_declare(ptr %expected_ret.dbg.spill, !1483, !DIExpression(), !1493)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !1494
  %_10 = load i64, ptr %5, align 8, !dbg !1494, !noundef !23
  %_9 = icmp eq i64 %_10, -281470681808896, !dbg !1494
  br i1 %_9, label %bb7, label %bb6, !dbg !1494

bb6:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !1494
  br label %bb8, !dbg !1494

bb7:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !1495
  %_14 = load i64, ptr %6, align 8, !dbg !1495, !noundef !23
  %_13 = icmp eq i64 %_14, 35888607147294720, !dbg !1495
  %7 = zext i1 %_13 to i8, !dbg !1494
  store i8 %7, ptr %_8, align 1, !dbg !1494
  br label %bb8, !dbg !1494

bb8:                                              ; preds = %bb7, %bb6
  %8 = load i8, ptr %_8, align 1, !dbg !1494, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !1494
  br i1 %9, label %bb4, label %bb3, !dbg !1494

bb3:                                              ; preds = %bb8
  store i8 0, ptr %0, align 1, !dbg !1494
  br label %bb5, !dbg !1494

bb4:                                              ; preds = %bb8
  %_17 = fcmp oeq double %ret, %expected_ret, !dbg !1496
  %10 = zext i1 %_17 to i8, !dbg !1494
  store i8 %10, ptr %0, align 1, !dbg !1494
  br label %bb5, !dbg !1494

bb5:                                              ; preds = %bb4, %bb3
  %11 = load i8, ptr %0, align 1, !dbg !1497, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !1497
  ret i1 %12, !dbg !1497
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_61() unnamed_addr #0 !dbg !1498 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !1500, !DIExpression(), !1508)
    #dbg_declare(ptr %expected_state, !1504, !DIExpression(), !1509)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !1510
  store i64 0, ptr %1, align 8, !dbg !1510
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !1510
  store i64 0, ptr %2, align 8, !dbg !1510
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !1511
  %ret = call double @next_double(ptr %rnd), !dbg !1512
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !1512
    #dbg_declare(ptr %ret.dbg.spill, !1502, !DIExpression(), !1513)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !1514
  store i64 0, ptr %3, align 8, !dbg !1514
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !1514
  store i64 0, ptr %4, align 8, !dbg !1514
  store double 0.000000e+00, ptr %expected_ret.dbg.spill, align 8, !dbg !1515
    #dbg_declare(ptr %expected_ret.dbg.spill, !1506, !DIExpression(), !1516)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !1517
  %_10 = load i64, ptr %5, align 8, !dbg !1517, !noundef !23
  %_9 = icmp eq i64 %_10, 0, !dbg !1517
  br i1 %_9, label %bb6, label %bb5, !dbg !1517

bb5:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !1517
  br label %bb7, !dbg !1517

bb6:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !1518
  %_14 = load i64, ptr %6, align 8, !dbg !1518, !noundef !23
  %_13 = icmp eq i64 %_14, 0, !dbg !1518
  %7 = zext i1 %_13 to i8, !dbg !1517
  store i8 %7, ptr %_8, align 1, !dbg !1517
  br label %bb7, !dbg !1517

bb7:                                              ; preds = %bb6, %bb5
  %8 = load i8, ptr %_8, align 1, !dbg !1517, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !1517
  br i1 %9, label %bb3, label %bb2, !dbg !1517

bb2:                                              ; preds = %bb7
  store i8 0, ptr %0, align 1, !dbg !1517
  br label %bb4, !dbg !1517

bb3:                                              ; preds = %bb7
  %_17 = fcmp oeq double %ret, 0.000000e+00, !dbg !1519
  %10 = zext i1 %_17 to i8, !dbg !1517
  store i8 %10, ptr %0, align 1, !dbg !1517
  br label %bb4, !dbg !1517

bb4:                                              ; preds = %bb3, %bb2
  %11 = load i8, ptr %0, align 1, !dbg !1520, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !1520
  ret i1 %12, !dbg !1520
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_62() unnamed_addr #0 !dbg !1521 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !1523, !DIExpression(), !1531)
    #dbg_declare(ptr %expected_state, !1527, !DIExpression(), !1532)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !1533
  store i64 1, ptr %1, align 8, !dbg !1533
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !1533
  store i64 1, ptr %2, align 8, !dbg !1533
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !1534
  %ret = call double @next_double(ptr %rnd), !dbg !1535
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !1535
    #dbg_declare(ptr %ret.dbg.spill, !1525, !DIExpression(), !1536)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !1537
  store i64 1, ptr %3, align 8, !dbg !1537
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !1537
  store i64 8388672, ptr %4, align 8, !dbg !1537
  %expected_ret = call double @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE"(i64 4422534834077827072), !dbg !1538
  store double %expected_ret, ptr %expected_ret.dbg.spill, align 8, !dbg !1538
    #dbg_declare(ptr %expected_ret.dbg.spill, !1529, !DIExpression(), !1539)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !1540
  %_10 = load i64, ptr %5, align 8, !dbg !1540, !noundef !23
  %_9 = icmp eq i64 %_10, 1, !dbg !1540
  br i1 %_9, label %bb7, label %bb6, !dbg !1540

bb6:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !1540
  br label %bb8, !dbg !1540

bb7:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !1541
  %_14 = load i64, ptr %6, align 8, !dbg !1541, !noundef !23
  %_13 = icmp eq i64 %_14, 8388672, !dbg !1541
  %7 = zext i1 %_13 to i8, !dbg !1540
  store i8 %7, ptr %_8, align 1, !dbg !1540
  br label %bb8, !dbg !1540

bb8:                                              ; preds = %bb7, %bb6
  %8 = load i8, ptr %_8, align 1, !dbg !1540, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !1540
  br i1 %9, label %bb4, label %bb3, !dbg !1540

bb3:                                              ; preds = %bb8
  store i8 0, ptr %0, align 1, !dbg !1540
  br label %bb5, !dbg !1540

bb4:                                              ; preds = %bb8
  %_17 = fcmp oeq double %ret, %expected_ret, !dbg !1542
  %10 = zext i1 %_17 to i8, !dbg !1540
  store i8 %10, ptr %0, align 1, !dbg !1540
  br label %bb5, !dbg !1540

bb5:                                              ; preds = %bb4, %bb3
  %11 = load i8, ptr %0, align 1, !dbg !1543, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !1543
  ret i1 %12, !dbg !1543
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_63() unnamed_addr #0 !dbg !1544 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !1546, !DIExpression(), !1554)
    #dbg_declare(ptr %expected_state, !1550, !DIExpression(), !1555)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !1556
  store i64 -1, ptr %1, align 8, !dbg !1556
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !1556
  store i64 -1, ptr %2, align 8, !dbg !1556
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !1557
  %ret = call double @next_double(ptr %rnd), !dbg !1558
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !1558
    #dbg_declare(ptr %ret.dbg.spill, !1548, !DIExpression(), !1559)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !1560
  store i64 -1, ptr %3, align 8, !dbg !1560
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !1560
  store i64 -274869518400, ptr %4, align 8, !dbg !1560
  %expected_ret = call double @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE"(i64 4607182418665803774), !dbg !1561
  store double %expected_ret, ptr %expected_ret.dbg.spill, align 8, !dbg !1561
    #dbg_declare(ptr %expected_ret.dbg.spill, !1552, !DIExpression(), !1562)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !1563
  %_10 = load i64, ptr %5, align 8, !dbg !1563, !noundef !23
  %_9 = icmp eq i64 %_10, -1, !dbg !1563
  br i1 %_9, label %bb7, label %bb6, !dbg !1563

bb6:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !1563
  br label %bb8, !dbg !1563

bb7:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !1564
  %_14 = load i64, ptr %6, align 8, !dbg !1564, !noundef !23
  %_13 = icmp eq i64 %_14, -274869518400, !dbg !1564
  %7 = zext i1 %_13 to i8, !dbg !1563
  store i8 %7, ptr %_8, align 1, !dbg !1563
  br label %bb8, !dbg !1563

bb8:                                              ; preds = %bb7, %bb6
  %8 = load i8, ptr %_8, align 1, !dbg !1563, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !1563
  br i1 %9, label %bb4, label %bb3, !dbg !1563

bb3:                                              ; preds = %bb8
  store i8 0, ptr %0, align 1, !dbg !1563
  br label %bb5, !dbg !1563

bb4:                                              ; preds = %bb8
  %_17 = fcmp oeq double %ret, %expected_ret, !dbg !1565
  %10 = zext i1 %_17 to i8, !dbg !1563
  store i8 %10, ptr %0, align 1, !dbg !1563
  br label %bb5, !dbg !1563

bb5:                                              ; preds = %bb4, %bb3
  %11 = load i8, ptr %0, align 1, !dbg !1566, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !1566
  ret i1 %12, !dbg !1566
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_64() unnamed_addr #0 !dbg !1567 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !1569, !DIExpression(), !1577)
    #dbg_declare(ptr %expected_state, !1573, !DIExpression(), !1578)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !1579
  store i64 1, ptr %1, align 8, !dbg !1579
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !1579
  store i64 1, ptr %2, align 8, !dbg !1579
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !1580
  %ret = call double @next_double(ptr %rnd), !dbg !1581
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !1581
    #dbg_declare(ptr %ret.dbg.spill, !1571, !DIExpression(), !1582)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !1583
  store i64 1, ptr %3, align 8, !dbg !1583
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !1583
  store i64 8388672, ptr %4, align 8, !dbg !1583
  %expected_ret = call double @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE"(i64 4422534834077827072), !dbg !1584
  store double %expected_ret, ptr %expected_ret.dbg.spill, align 8, !dbg !1584
    #dbg_declare(ptr %expected_ret.dbg.spill, !1575, !DIExpression(), !1585)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !1586
  %_10 = load i64, ptr %5, align 8, !dbg !1586, !noundef !23
  %_9 = icmp eq i64 %_10, 1, !dbg !1586
  br i1 %_9, label %bb7, label %bb6, !dbg !1586

bb6:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !1586
  br label %bb8, !dbg !1586

bb7:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !1587
  %_14 = load i64, ptr %6, align 8, !dbg !1587, !noundef !23
  %_13 = icmp eq i64 %_14, 8388672, !dbg !1587
  %7 = zext i1 %_13 to i8, !dbg !1586
  store i8 %7, ptr %_8, align 1, !dbg !1586
  br label %bb8, !dbg !1586

bb8:                                              ; preds = %bb7, %bb6
  %8 = load i8, ptr %_8, align 1, !dbg !1586, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !1586
  br i1 %9, label %bb4, label %bb3, !dbg !1586

bb3:                                              ; preds = %bb8
  store i8 0, ptr %0, align 1, !dbg !1586
  br label %bb5, !dbg !1586

bb4:                                              ; preds = %bb8
  %_17 = fcmp oeq double %ret, %expected_ret, !dbg !1588
  %10 = zext i1 %_17 to i8, !dbg !1586
  store i8 %10, ptr %0, align 1, !dbg !1586
  br label %bb5, !dbg !1586

bb5:                                              ; preds = %bb4, %bb3
  %11 = load i8, ptr %0, align 1, !dbg !1589, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !1589
  ret i1 %12, !dbg !1589
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_65() unnamed_addr #0 !dbg !1590 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !1592, !DIExpression(), !1600)
    #dbg_declare(ptr %expected_state, !1596, !DIExpression(), !1601)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !1602
  store i64 -9223372036854775808, ptr %1, align 8, !dbg !1602
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !1602
  store i64 -9223372036854775808, ptr %2, align 8, !dbg !1602
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !1603
  %ret = call double @next_double(ptr %rnd), !dbg !1604
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !1604
    #dbg_declare(ptr %ret.dbg.spill, !1594, !DIExpression(), !1605)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !1606
  store i64 -9223372036854775808, ptr %3, align 8, !dbg !1606
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !1606
  store i64 70506183131136, ptr %4, align 8, !dbg !1606
  %expected_ret = call double @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE"(i64 4602678853599494144), !dbg !1607
  store double %expected_ret, ptr %expected_ret.dbg.spill, align 8, !dbg !1607
    #dbg_declare(ptr %expected_ret.dbg.spill, !1598, !DIExpression(), !1608)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !1609
  %_10 = load i64, ptr %5, align 8, !dbg !1609, !noundef !23
  %_9 = icmp eq i64 %_10, -9223372036854775808, !dbg !1609
  br i1 %_9, label %bb7, label %bb6, !dbg !1609

bb6:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !1609
  br label %bb8, !dbg !1609

bb7:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !1610
  %_14 = load i64, ptr %6, align 8, !dbg !1610, !noundef !23
  %_13 = icmp eq i64 %_14, 70506183131136, !dbg !1610
  %7 = zext i1 %_13 to i8, !dbg !1609
  store i8 %7, ptr %_8, align 1, !dbg !1609
  br label %bb8, !dbg !1609

bb8:                                              ; preds = %bb7, %bb6
  %8 = load i8, ptr %_8, align 1, !dbg !1609, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !1609
  br i1 %9, label %bb4, label %bb3, !dbg !1609

bb3:                                              ; preds = %bb8
  store i8 0, ptr %0, align 1, !dbg !1609
  br label %bb5, !dbg !1609

bb4:                                              ; preds = %bb8
  %_17 = fcmp oeq double %ret, %expected_ret, !dbg !1611
  %10 = zext i1 %_17 to i8, !dbg !1609
  store i8 %10, ptr %0, align 1, !dbg !1609
  br label %bb5, !dbg !1609

bb5:                                              ; preds = %bb4, %bb3
  %11 = load i8, ptr %0, align 1, !dbg !1612, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !1612
  ret i1 %12, !dbg !1612
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_66() unnamed_addr #0 !dbg !1613 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !1615, !DIExpression(), !1623)
    #dbg_declare(ptr %expected_state, !1619, !DIExpression(), !1624)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !1625
  store i64 8388608, ptr %1, align 8, !dbg !1625
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !1625
  store i64 8388608, ptr %2, align 8, !dbg !1625
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !1626
  %ret = call double @next_double(ptr %rnd), !dbg !1627
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !1627
    #dbg_declare(ptr %ret.dbg.spill, !1617, !DIExpression(), !1628)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !1629
  store i64 8388608, ptr %3, align 8, !dbg !1629
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !1629
  store i64 70369281048640, ptr %4, align 8, !dbg !1629
  %expected_ret = call double @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE"(i64 4526117660403957760), !dbg !1630
  store double %expected_ret, ptr %expected_ret.dbg.spill, align 8, !dbg !1630
    #dbg_declare(ptr %expected_ret.dbg.spill, !1621, !DIExpression(), !1631)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !1632
  %_10 = load i64, ptr %5, align 8, !dbg !1632, !noundef !23
  %_9 = icmp eq i64 %_10, 8388608, !dbg !1632
  br i1 %_9, label %bb7, label %bb6, !dbg !1632

bb6:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !1632
  br label %bb8, !dbg !1632

bb7:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !1633
  %_14 = load i64, ptr %6, align 8, !dbg !1633, !noundef !23
  %_13 = icmp eq i64 %_14, 70369281048640, !dbg !1633
  %7 = zext i1 %_13 to i8, !dbg !1632
  store i8 %7, ptr %_8, align 1, !dbg !1632
  br label %bb8, !dbg !1632

bb8:                                              ; preds = %bb7, %bb6
  %8 = load i8, ptr %_8, align 1, !dbg !1632, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !1632
  br i1 %9, label %bb4, label %bb3, !dbg !1632

bb3:                                              ; preds = %bb8
  store i8 0, ptr %0, align 1, !dbg !1632
  br label %bb5, !dbg !1632

bb4:                                              ; preds = %bb8
  %_17 = fcmp oeq double %ret, %expected_ret, !dbg !1634
  %10 = zext i1 %_17 to i8, !dbg !1632
  store i8 %10, ptr %0, align 1, !dbg !1632
  br label %bb5, !dbg !1632

bb5:                                              ; preds = %bb4, %bb3
  %11 = load i8, ptr %0, align 1, !dbg !1635, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !1635
  ret i1 %12, !dbg !1635
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_67() unnamed_addr #0 !dbg !1636 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !1638, !DIExpression(), !1646)
    #dbg_declare(ptr %expected_state, !1642, !DIExpression(), !1647)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !1648
  store i64 131072, ptr %1, align 8, !dbg !1648
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !1648
  store i64 131072, ptr %2, align 8, !dbg !1648
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !1649
  %ret = call double @next_double(ptr %rnd), !dbg !1650
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !1650
    #dbg_declare(ptr %ret.dbg.spill, !1640, !DIExpression(), !1651)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !1652
  store i64 131072, ptr %3, align 8, !dbg !1652
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !1652
  store i64 1099520016385, ptr %4, align 8, !dbg !1652
  %expected_ret = call double @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE"(i64 4499096062639734784), !dbg !1653
  store double %expected_ret, ptr %expected_ret.dbg.spill, align 8, !dbg !1653
    #dbg_declare(ptr %expected_ret.dbg.spill, !1644, !DIExpression(), !1654)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !1655
  %_10 = load i64, ptr %5, align 8, !dbg !1655, !noundef !23
  %_9 = icmp eq i64 %_10, 131072, !dbg !1655
  br i1 %_9, label %bb7, label %bb6, !dbg !1655

bb6:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !1655
  br label %bb8, !dbg !1655

bb7:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !1656
  %_14 = load i64, ptr %6, align 8, !dbg !1656, !noundef !23
  %_13 = icmp eq i64 %_14, 1099520016385, !dbg !1656
  %7 = zext i1 %_13 to i8, !dbg !1655
  store i8 %7, ptr %_8, align 1, !dbg !1655
  br label %bb8, !dbg !1655

bb8:                                              ; preds = %bb7, %bb6
  %8 = load i8, ptr %_8, align 1, !dbg !1655, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !1655
  br i1 %9, label %bb4, label %bb3, !dbg !1655

bb3:                                              ; preds = %bb8
  store i8 0, ptr %0, align 1, !dbg !1655
  br label %bb5, !dbg !1655

bb4:                                              ; preds = %bb8
  %_17 = fcmp oeq double %ret, %expected_ret, !dbg !1657
  %10 = zext i1 %_17 to i8, !dbg !1655
  store i8 %10, ptr %0, align 1, !dbg !1655
  br label %bb5, !dbg !1655

bb5:                                              ; preds = %bb4, %bb3
  %11 = load i8, ptr %0, align 1, !dbg !1658, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !1658
  ret i1 %12, !dbg !1658
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_68() unnamed_addr #0 !dbg !1659 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !1661, !DIExpression(), !1669)
    #dbg_declare(ptr %expected_state, !1665, !DIExpression(), !1670)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !1671
  store i64 67108864, ptr %1, align 8, !dbg !1671
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !1671
  store i64 67108864, ptr %2, align 8, !dbg !1671
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !1672
  %ret = call double @next_double(ptr %rnd), !dbg !1673
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !1673
    #dbg_declare(ptr %ret.dbg.spill, !1663, !DIExpression(), !1674)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !1675
  store i64 67108864, ptr %3, align 8, !dbg !1675
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !1675
  store i64 562954248389121, ptr %4, align 8, !dbg !1675
  %expected_ret = call double @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE"(i64 4539628459286069248), !dbg !1676
  store double %expected_ret, ptr %expected_ret.dbg.spill, align 8, !dbg !1676
    #dbg_declare(ptr %expected_ret.dbg.spill, !1667, !DIExpression(), !1677)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !1678
  %_10 = load i64, ptr %5, align 8, !dbg !1678, !noundef !23
  %_9 = icmp eq i64 %_10, 67108864, !dbg !1678
  br i1 %_9, label %bb7, label %bb6, !dbg !1678

bb6:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !1678
  br label %bb8, !dbg !1678

bb7:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !1679
  %_14 = load i64, ptr %6, align 8, !dbg !1679, !noundef !23
  %_13 = icmp eq i64 %_14, 562954248389121, !dbg !1679
  %7 = zext i1 %_13 to i8, !dbg !1678
  store i8 %7, ptr %_8, align 1, !dbg !1678
  br label %bb8, !dbg !1678

bb8:                                              ; preds = %bb7, %bb6
  %8 = load i8, ptr %_8, align 1, !dbg !1678, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !1678
  br i1 %9, label %bb4, label %bb3, !dbg !1678

bb3:                                              ; preds = %bb8
  store i8 0, ptr %0, align 1, !dbg !1678
  br label %bb5, !dbg !1678

bb4:                                              ; preds = %bb8
  %_17 = fcmp oeq double %ret, %expected_ret, !dbg !1680
  %10 = zext i1 %_17 to i8, !dbg !1678
  store i8 %10, ptr %0, align 1, !dbg !1678
  br label %bb5, !dbg !1678

bb5:                                              ; preds = %bb4, %bb3
  %11 = load i8, ptr %0, align 1, !dbg !1681, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !1681
  ret i1 %12, !dbg !1681
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_69() unnamed_addr #0 !dbg !1682 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !1684, !DIExpression(), !1692)
    #dbg_declare(ptr %expected_state, !1688, !DIExpression(), !1693)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !1694
  store i64 6148914691236517205, ptr %1, align 8, !dbg !1694
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !1694
  store i64 -6148914691236517206, ptr %2, align 8, !dbg !1694
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !1695
  %ret = call double @next_double(ptr %rnd), !dbg !1696
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !1696
    #dbg_declare(ptr %ret.dbg.spill, !1686, !DIExpression(), !1697)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !1698
  store i64 -6148914691236517206, ptr %3, align 8, !dbg !1698
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !1698
  store i64 6148867595491257023, ptr %4, align 8, !dbg !1698
  %expected_ret = call double @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE"(i64 4607182395804048042), !dbg !1699
  store double %expected_ret, ptr %expected_ret.dbg.spill, align 8, !dbg !1699
    #dbg_declare(ptr %expected_ret.dbg.spill, !1690, !DIExpression(), !1700)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !1701
  %_10 = load i64, ptr %5, align 8, !dbg !1701, !noundef !23
  %_9 = icmp eq i64 %_10, -6148914691236517206, !dbg !1701
  br i1 %_9, label %bb7, label %bb6, !dbg !1701

bb6:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !1701
  br label %bb8, !dbg !1701

bb7:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !1702
  %_14 = load i64, ptr %6, align 8, !dbg !1702, !noundef !23
  %_13 = icmp eq i64 %_14, 6148867595491257023, !dbg !1702
  %7 = zext i1 %_13 to i8, !dbg !1701
  store i8 %7, ptr %_8, align 1, !dbg !1701
  br label %bb8, !dbg !1701

bb8:                                              ; preds = %bb7, %bb6
  %8 = load i8, ptr %_8, align 1, !dbg !1701, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !1701
  br i1 %9, label %bb4, label %bb3, !dbg !1701

bb3:                                              ; preds = %bb8
  store i8 0, ptr %0, align 1, !dbg !1701
  br label %bb5, !dbg !1701

bb4:                                              ; preds = %bb8
  %_17 = fcmp oeq double %ret, %expected_ret, !dbg !1703
  %10 = zext i1 %_17 to i8, !dbg !1701
  store i8 %10, ptr %0, align 1, !dbg !1701
  br label %bb5, !dbg !1701

bb5:                                              ; preds = %bb4, %bb3
  %11 = load i8, ptr %0, align 1, !dbg !1704, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !1704
  ret i1 %12, !dbg !1704
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_70() unnamed_addr #0 !dbg !1705 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !1707, !DIExpression(), !1715)
    #dbg_declare(ptr %expected_state, !1711, !DIExpression(), !1716)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !1717
  store i64 -6148914691236517206, ptr %1, align 8, !dbg !1717
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !1717
  store i64 6148914691236517205, ptr %2, align 8, !dbg !1717
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !1718
  %ret = call double @next_double(ptr %rnd), !dbg !1719
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !1719
    #dbg_declare(ptr %ret.dbg.spill, !1709, !DIExpression(), !1720)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !1721
  store i64 6148914691236517205, ptr %3, align 8, !dbg !1721
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !1721
  store i64 -6148867870360775297, ptr %4, align 8, !dbg !1721
  %expected_ret = call double @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE"(i64 4523103498347216896), !dbg !1722
  store double %expected_ret, ptr %expected_ret.dbg.spill, align 8, !dbg !1722
    #dbg_declare(ptr %expected_ret.dbg.spill, !1713, !DIExpression(), !1723)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !1724
  %_10 = load i64, ptr %5, align 8, !dbg !1724, !noundef !23
  %_9 = icmp eq i64 %_10, 6148914691236517205, !dbg !1724
  br i1 %_9, label %bb7, label %bb6, !dbg !1724

bb6:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !1724
  br label %bb8, !dbg !1724

bb7:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !1725
  %_14 = load i64, ptr %6, align 8, !dbg !1725, !noundef !23
  %_13 = icmp eq i64 %_14, -6148867870360775297, !dbg !1725
  %7 = zext i1 %_13 to i8, !dbg !1724
  store i8 %7, ptr %_8, align 1, !dbg !1724
  br label %bb8, !dbg !1724

bb8:                                              ; preds = %bb7, %bb6
  %8 = load i8, ptr %_8, align 1, !dbg !1724, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !1724
  br i1 %9, label %bb4, label %bb3, !dbg !1724

bb3:                                              ; preds = %bb8
  store i8 0, ptr %0, align 1, !dbg !1724
  br label %bb5, !dbg !1724

bb4:                                              ; preds = %bb8
  %_17 = fcmp oeq double %ret, %expected_ret, !dbg !1726
  %10 = zext i1 %_17 to i8, !dbg !1724
  store i8 %10, ptr %0, align 1, !dbg !1724
  br label %bb5, !dbg !1724

bb5:                                              ; preds = %bb4, %bb3
  %11 = load i8, ptr %0, align 1, !dbg !1727, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !1727
  ret i1 %12, !dbg !1727
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_71() unnamed_addr #0 !dbg !1728 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !1730, !DIExpression(), !1738)
    #dbg_declare(ptr %expected_state, !1734, !DIExpression(), !1739)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !1740
  store i64 0, ptr %1, align 8, !dbg !1740
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !1740
  store i64 4096, ptr %2, align 8, !dbg !1740
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !1741
  %ret = call double @next_double(ptr %rnd), !dbg !1742
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !1742
    #dbg_declare(ptr %ret.dbg.spill, !1732, !DIExpression(), !1743)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !1744
  store i64 4096, ptr %3, align 8, !dbg !1744
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !1744
  store i64 4096, ptr %4, align 8, !dbg !1744
  %expected_ret = call double @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE"(i64 4377498837804122112), !dbg !1745
  store double %expected_ret, ptr %expected_ret.dbg.spill, align 8, !dbg !1745
    #dbg_declare(ptr %expected_ret.dbg.spill, !1736, !DIExpression(), !1746)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !1747
  %_10 = load i64, ptr %5, align 8, !dbg !1747, !noundef !23
  %_9 = icmp eq i64 %_10, 4096, !dbg !1747
  br i1 %_9, label %bb7, label %bb6, !dbg !1747

bb6:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !1747
  br label %bb8, !dbg !1747

bb7:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !1748
  %_14 = load i64, ptr %6, align 8, !dbg !1748, !noundef !23
  %_13 = icmp eq i64 %_14, 4096, !dbg !1748
  %7 = zext i1 %_13 to i8, !dbg !1747
  store i8 %7, ptr %_8, align 1, !dbg !1747
  br label %bb8, !dbg !1747

bb8:                                              ; preds = %bb7, %bb6
  %8 = load i8, ptr %_8, align 1, !dbg !1747, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !1747
  br i1 %9, label %bb4, label %bb3, !dbg !1747

bb3:                                              ; preds = %bb8
  store i8 0, ptr %0, align 1, !dbg !1747
  br label %bb5, !dbg !1747

bb4:                                              ; preds = %bb8
  %_17 = fcmp oeq double %ret, %expected_ret, !dbg !1749
  %10 = zext i1 %_17 to i8, !dbg !1747
  store i8 %10, ptr %0, align 1, !dbg !1747
  br label %bb5, !dbg !1747

bb5:                                              ; preds = %bb4, %bb3
  %11 = load i8, ptr %0, align 1, !dbg !1750, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !1750
  ret i1 %12, !dbg !1750
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_72() unnamed_addr #0 !dbg !1751 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !1753, !DIExpression(), !1761)
    #dbg_declare(ptr %expected_state, !1757, !DIExpression(), !1762)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !1763
  store i64 -4096, ptr %1, align 8, !dbg !1763
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !1763
  store i64 -4096, ptr %2, align 8, !dbg !1763
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !1764
  %ret = call double @next_double(ptr %rnd), !dbg !1765
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !1765
    #dbg_declare(ptr %ret.dbg.spill, !1755, !DIExpression(), !1766)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !1767
  store i64 -4096, ptr %3, align 8, !dbg !1767
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !1767
  store i64 -240518430720, ptr %4, align 8, !dbg !1767
  %expected_ret = call double @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE"(i64 4607182418682576766), !dbg !1768
  store double %expected_ret, ptr %expected_ret.dbg.spill, align 8, !dbg !1768
    #dbg_declare(ptr %expected_ret.dbg.spill, !1759, !DIExpression(), !1769)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !1770
  %_10 = load i64, ptr %5, align 8, !dbg !1770, !noundef !23
  %_9 = icmp eq i64 %_10, -4096, !dbg !1770
  br i1 %_9, label %bb7, label %bb6, !dbg !1770

bb6:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !1770
  br label %bb8, !dbg !1770

bb7:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !1771
  %_14 = load i64, ptr %6, align 8, !dbg !1771, !noundef !23
  %_13 = icmp eq i64 %_14, -240518430720, !dbg !1771
  %7 = zext i1 %_13 to i8, !dbg !1770
  store i8 %7, ptr %_8, align 1, !dbg !1770
  br label %bb8, !dbg !1770

bb8:                                              ; preds = %bb7, %bb6
  %8 = load i8, ptr %_8, align 1, !dbg !1770, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !1770
  br i1 %9, label %bb4, label %bb3, !dbg !1770

bb3:                                              ; preds = %bb8
  store i8 0, ptr %0, align 1, !dbg !1770
  br label %bb5, !dbg !1770

bb4:                                              ; preds = %bb8
  %_17 = fcmp oeq double %ret, %expected_ret, !dbg !1772
  %10 = zext i1 %_17 to i8, !dbg !1770
  store i8 %10, ptr %0, align 1, !dbg !1770
  br label %bb5, !dbg !1770

bb5:                                              ; preds = %bb4, %bb3
  %11 = load i8, ptr %0, align 1, !dbg !1773, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !1773
  ret i1 %12, !dbg !1773
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_73() unnamed_addr #0 !dbg !1774 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !1776, !DIExpression(), !1784)
    #dbg_declare(ptr %expected_state, !1780, !DIExpression(), !1785)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !1786
  store i64 -9223372036854775808, ptr %1, align 8, !dbg !1786
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !1786
  store i64 -9223372036854775808, ptr %2, align 8, !dbg !1786
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !1787
  %ret = call double @next_double(ptr %rnd), !dbg !1788
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !1788
    #dbg_declare(ptr %ret.dbg.spill, !1778, !DIExpression(), !1789)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !1790
  store i64 -9223372036854775808, ptr %3, align 8, !dbg !1790
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !1790
  store i64 70506183131136, ptr %4, align 8, !dbg !1790
  %expected_ret = call double @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE"(i64 4602678853599494144), !dbg !1791
  store double %expected_ret, ptr %expected_ret.dbg.spill, align 8, !dbg !1791
    #dbg_declare(ptr %expected_ret.dbg.spill, !1782, !DIExpression(), !1792)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !1793
  %_10 = load i64, ptr %5, align 8, !dbg !1793, !noundef !23
  %_9 = icmp eq i64 %_10, -9223372036854775808, !dbg !1793
  br i1 %_9, label %bb7, label %bb6, !dbg !1793

bb6:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !1793
  br label %bb8, !dbg !1793

bb7:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !1794
  %_14 = load i64, ptr %6, align 8, !dbg !1794, !noundef !23
  %_13 = icmp eq i64 %_14, 70506183131136, !dbg !1794
  %7 = zext i1 %_13 to i8, !dbg !1793
  store i8 %7, ptr %_8, align 1, !dbg !1793
  br label %bb8, !dbg !1793

bb8:                                              ; preds = %bb7, %bb6
  %8 = load i8, ptr %_8, align 1, !dbg !1793, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !1793
  br i1 %9, label %bb4, label %bb3, !dbg !1793

bb3:                                              ; preds = %bb8
  store i8 0, ptr %0, align 1, !dbg !1793
  br label %bb5, !dbg !1793

bb4:                                              ; preds = %bb8
  %_17 = fcmp oeq double %ret, %expected_ret, !dbg !1795
  %10 = zext i1 %_17 to i8, !dbg !1793
  store i8 %10, ptr %0, align 1, !dbg !1793
  br label %bb5, !dbg !1793

bb5:                                              ; preds = %bb4, %bb3
  %11 = load i8, ptr %0, align 1, !dbg !1796, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !1796
  ret i1 %12, !dbg !1796
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_74() unnamed_addr #0 !dbg !1797 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !1799, !DIExpression(), !1807)
    #dbg_declare(ptr %expected_state, !1803, !DIExpression(), !1808)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !1809
  store i64 4611686018427387904, ptr %1, align 8, !dbg !1809
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !1809
  store i64 4611686018427387904, ptr %2, align 8, !dbg !1809
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !1810
  %ret = call double @next_double(ptr %rnd), !dbg !1811
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !1811
    #dbg_declare(ptr %ret.dbg.spill, !1801, !DIExpression(), !1812)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !1813
  store i64 4611686018427387904, ptr %3, align 8, !dbg !1813
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !1813
  store i64 35253091565568, ptr %4, align 8, !dbg !1813
  %expected_ret = call double @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE"(i64 4598175253972123648), !dbg !1814
  store double %expected_ret, ptr %expected_ret.dbg.spill, align 8, !dbg !1814
    #dbg_declare(ptr %expected_ret.dbg.spill, !1805, !DIExpression(), !1815)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !1816
  %_10 = load i64, ptr %5, align 8, !dbg !1816, !noundef !23
  %_9 = icmp eq i64 %_10, 4611686018427387904, !dbg !1816
  br i1 %_9, label %bb7, label %bb6, !dbg !1816

bb6:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !1816
  br label %bb8, !dbg !1816

bb7:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !1817
  %_14 = load i64, ptr %6, align 8, !dbg !1817, !noundef !23
  %_13 = icmp eq i64 %_14, 35253091565568, !dbg !1817
  %7 = zext i1 %_13 to i8, !dbg !1816
  store i8 %7, ptr %_8, align 1, !dbg !1816
  br label %bb8, !dbg !1816

bb8:                                              ; preds = %bb7, %bb6
  %8 = load i8, ptr %_8, align 1, !dbg !1816, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !1816
  br i1 %9, label %bb4, label %bb3, !dbg !1816

bb3:                                              ; preds = %bb8
  store i8 0, ptr %0, align 1, !dbg !1816
  br label %bb5, !dbg !1816

bb4:                                              ; preds = %bb8
  %_17 = fcmp oeq double %ret, %expected_ret, !dbg !1818
  %10 = zext i1 %_17 to i8, !dbg !1816
  store i8 %10, ptr %0, align 1, !dbg !1816
  br label %bb5, !dbg !1816

bb5:                                              ; preds = %bb4, %bb3
  %11 = load i8, ptr %0, align 1, !dbg !1819, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !1819
  ret i1 %12, !dbg !1819
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_75() unnamed_addr #0 !dbg !1820 {
start:
  %expected_ret.dbg.spill = alloca double, align 8
  %ret.dbg.spill = alloca double, align 8
  %_8 = alloca i8, align 1
  %expected_state = alloca [2 x i64], align 8
  %_2 = alloca [2 x i64], align 8
  %rnd = alloca %"src::lib::CnRndT", align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %rnd, !1822, !DIExpression(), !1830)
    #dbg_declare(ptr %expected_state, !1826, !DIExpression(), !1831)
  %1 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 0, !dbg !1832
  store i64 -4611686018427387904, ptr %1, align 8, !dbg !1832
  %2 = getelementptr inbounds [2 x i64], ptr %_2, i64 0, i64 1, !dbg !1832
  store i64 -4611686018427387904, ptr %2, align 8, !dbg !1832
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rnd, ptr align 8 %_2, i64 16, i1 false), !dbg !1833
  %ret = call double @next_double(ptr %rnd), !dbg !1834
  store double %ret, ptr %ret.dbg.spill, align 8, !dbg !1834
    #dbg_declare(ptr %ret.dbg.spill, !1824, !DIExpression(), !1835)
  %3 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 0, !dbg !1836
  store i64 -4611686018427387904, ptr %3, align 8, !dbg !1836
  %4 = getelementptr inbounds [2 x i64], ptr %expected_state, i64 0, i64 1, !dbg !1836
  store i64 105759274696704, ptr %4, align 8, !dbg !1836
  %expected_ret = call double @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE"(i64 4604930670626603008), !dbg !1837
  store double %expected_ret, ptr %expected_ret.dbg.spill, align 8, !dbg !1837
    #dbg_declare(ptr %expected_ret.dbg.spill, !1828, !DIExpression(), !1838)
  %5 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 0, !dbg !1839
  %_10 = load i64, ptr %5, align 8, !dbg !1839, !noundef !23
  %_9 = icmp eq i64 %_10, -4611686018427387904, !dbg !1839
  br i1 %_9, label %bb7, label %bb6, !dbg !1839

bb6:                                              ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !1839
  br label %bb8, !dbg !1839

bb7:                                              ; preds = %start
  %6 = getelementptr inbounds [2 x i64], ptr %rnd, i64 0, i64 1, !dbg !1840
  %_14 = load i64, ptr %6, align 8, !dbg !1840, !noundef !23
  %_13 = icmp eq i64 %_14, 105759274696704, !dbg !1840
  %7 = zext i1 %_13 to i8, !dbg !1839
  store i8 %7, ptr %_8, align 1, !dbg !1839
  br label %bb8, !dbg !1839

bb8:                                              ; preds = %bb7, %bb6
  %8 = load i8, ptr %_8, align 1, !dbg !1839, !range !138, !noundef !23
  %9 = trunc i8 %8 to i1, !dbg !1839
  br i1 %9, label %bb4, label %bb3, !dbg !1839

bb3:                                              ; preds = %bb8
  store i8 0, ptr %0, align 1, !dbg !1839
  br label %bb5, !dbg !1839

bb4:                                              ; preds = %bb8
  %_17 = fcmp oeq double %ret, %expected_ret, !dbg !1841
  %10 = zext i1 %_17 to i8, !dbg !1839
  store i8 %10, ptr %0, align 1, !dbg !1839
  br label %bb5, !dbg !1839

bb5:                                              ; preds = %bb4, %bb3
  %11 = load i8, ptr %0, align 1, !dbg !1842, !range !138, !noundef !23
  %12 = trunc i8 %11 to i1, !dbg !1842
  ret i1 %12, !dbg !1842
}

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #2 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noreturn }
attributes #7 = { noinline noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}

!0 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !1, producer: "clang LLVM (rustc version 1.70.0-nightly (84dd17b56 2023-04-14))", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!1 = !DIFile(filename: "lib.rs/@/1amlftv3ui4kz75h", directory: "/crisp-rust-outputs/B01_organic/next_double_lib/translated_rust")
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 2, !"RtLibUseGOT", i32 1}
!4 = !{i32 2, !"Dwarf Version", i32 4}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = distinct !DISubprogram(name: "next_double_ffi", linkageName: "next_double", scope: !8, file: !7, line: 27, type: !11, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !24)
!7 = !DIFile(filename: "src/lib.rs", directory: "/crisp-rust-outputs/B01_organic/next_double_lib/translated_rust", checksumkind: CSK_MD5, checksum: "68da8dda955a6f056d78f63e1888bf52")
!8 = !DINamespace(name: "lib", scope: !9)
!9 = !DINamespace(name: "src", scope: !10)
!10 = !DINamespace(name: "next_double_lib", scope: null)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !14}
!13 = !DIBasicType(name: "f64", size: 64, encoding: DW_ATE_float)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut next_double_lib::src::lib::CnRndT", baseType: !15, size: 64, align: 64, dwarfAddressSpace: 0)
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CnRndT", scope: !8, file: !16, size: 128, align: 64, elements: !17, templateParams: !23, identifier: "b244a2336e78a21c6f28b2271dde1740")
!16 = !DIFile(filename: "<unknown>", directory: "")
!17 = !{!18}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !15, file: !16, baseType: !19, size: 128, align: 64)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 128, align: 64, elements: !21)
!20 = !DIBasicType(name: "u64", size: 64, encoding: DW_ATE_unsigned)
!21 = !{!22}
!22 = !DISubrange(count: 2, lowerBound: 0)
!23 = !{}
!24 = !{!25}
!25 = !DILocalVariable(name: "rnd", arg: 1, scope: !6, file: !7, line: 27, type: !14)
!26 = !DILocation(line: 27, column: 42, scope: !6)
!27 = !DILocation(line: 28, column: 17, scope: !6)
!28 = !DILocation(line: 28, column: 5, scope: !6)
!29 = !DILocation(line: 29, column: 2, scope: !6)
!30 = !DILocation(line: 27, column: 1, scope: !6)
!31 = distinct !DISubprogram(name: "next_double", linkageName: "_ZN15next_double_lib3src3lib11next_double17hdc97fe7af77a0959E", scope: !8, file: !7, line: 18, type: !32, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !35)
!32 = !DISubroutineType(types: !33)
!33 = !{!13, !34}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut next_double_lib::src::lib::CnRndT", baseType: !15, size: 64, align: 64, dwarfAddressSpace: 0)
!35 = !{!36, !37, !39, !41, !43}
!36 = !DILocalVariable(name: "rnd", arg: 1, scope: !31, file: !7, line: 18, type: !34)
!37 = !DILocalVariable(name: "value", scope: !38, file: !7, line: 19, type: !20, align: 8)
!38 = distinct !DILexicalBlock(scope: !31, file: !7, line: 19, column: 5)
!39 = !DILocalVariable(name: "exponent", scope: !40, file: !7, line: 20, type: !20, align: 8)
!40 = distinct !DILexicalBlock(scope: !38, file: !7, line: 20, column: 5)
!41 = !DILocalVariable(name: "mantissa", scope: !42, file: !7, line: 21, type: !20, align: 8)
!42 = distinct !DILexicalBlock(scope: !40, file: !7, line: 21, column: 5)
!43 = !DILocalVariable(name: "result", scope: !44, file: !7, line: 22, type: !20, align: 8)
!44 = distinct !DILexicalBlock(scope: !42, file: !7, line: 22, column: 5)
!45 = !DILocation(line: 18, column: 20, scope: !31)
!46 = !DILocation(line: 19, column: 28, scope: !31)
!47 = !DILocation(line: 19, column: 9, scope: !38)
!48 = !DILocation(line: 20, column: 31, scope: !38)
!49 = !DILocation(line: 20, column: 9, scope: !40)
!50 = !DILocation(line: 21, column: 31, scope: !40)
!51 = !DILocation(line: 21, column: 9, scope: !42)
!52 = !DILocation(line: 22, column: 29, scope: !42)
!53 = !DILocation(line: 22, column: 9, scope: !44)
!54 = !DILocation(line: 23, column: 5, scope: !44)
!55 = !DILocation(line: 24, column: 2, scope: !31)
!56 = distinct !DISubprogram(name: "cn_rnd_next", linkageName: "_ZN15next_double_lib3src3lib11cn_rnd_next17hae1e273f8a026280E", scope: !8, file: !7, line: 8, type: !57, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !59)
!57 = !DISubroutineType(types: !58)
!58 = !{!20, !34}
!59 = !{!60, !61, !63}
!60 = !DILocalVariable(name: "rnd", arg: 1, scope: !56, file: !7, line: 8, type: !34)
!61 = !DILocalVariable(name: "x", scope: !62, file: !7, line: 9, type: !20, align: 8)
!62 = distinct !DILexicalBlock(scope: !56, file: !7, line: 9, column: 5)
!63 = !DILocalVariable(name: "y", scope: !64, file: !7, line: 10, type: !20, align: 8)
!64 = distinct !DILexicalBlock(scope: !62, file: !7, line: 10, column: 5)
!65 = !DILocation(line: 8, column: 16, scope: !56)
!66 = !DILocation(line: 9, column: 9, scope: !62)
!67 = !DILocation(line: 9, column: 28, scope: !56)
!68 = !DILocation(line: 10, column: 24, scope: !62)
!69 = !DILocation(line: 10, column: 9, scope: !64)
!70 = !DILocation(line: 11, column: 5, scope: !64)
!71 = !DILocation(line: 12, column: 10, scope: !64)
!72 = !DILocation(line: 12, column: 5, scope: !64)
!73 = !DILocation(line: 13, column: 10, scope: !64)
!74 = !DILocation(line: 13, column: 5, scope: !64)
!75 = !DILocation(line: 14, column: 14, scope: !64)
!76 = !DILocation(line: 14, column: 10, scope: !64)
!77 = !DILocation(line: 14, column: 5, scope: !64)
!78 = !DILocation(line: 15, column: 20, scope: !64)
!79 = !DILocation(line: 15, column: 5, scope: !64)
!80 = !DILocation(line: 16, column: 5, scope: !64)
!81 = !DILocalVariable(name: "self", arg: 1, scope: !82, file: !83, line: 1188, type: !20)
!82 = distinct !DISubprogram(name: "wrapping_add", linkageName: "_ZN4core3num21_$LT$impl$u20$u64$GT$12wrapping_add17hdafba3365f37919dE", scope: !84, file: !83, line: 1188, type: !87, scopeLine: 1188, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !89)
!83 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/num/uint_macros.rs", directory: "", checksumkind: CSK_MD5, checksum: "b2a733f80e3cd43066f918bdafc87bd0")
!84 = !DINamespace(name: "{impl#9}", scope: !85)
!85 = !DINamespace(name: "num", scope: !86)
!86 = !DINamespace(name: "core", scope: null)
!87 = !DISubroutineType(types: !88)
!88 = !{!20, !20, !20}
!89 = !{!81, !90}
!90 = !DILocalVariable(name: "rhs", arg: 2, scope: !82, file: !83, line: 1188, type: !20)
!91 = !DILocation(line: 1188, column: 35, scope: !82, inlinedAt: !92)
!92 = distinct !DILocation(line: 16, column: 5, scope: !64)
!93 = !DILocation(line: 1188, column: 41, scope: !82, inlinedAt: !92)
!94 = !DILocation(line: 1189, column: 13, scope: !82, inlinedAt: !92)
!95 = !DILocation(line: 17, column: 2, scope: !56)
!96 = distinct !DISubprogram(name: "from_bits", linkageName: "_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits17hace4e0dccfb9ebcdE", scope: !98, file: !97, line: 1081, type: !100, scopeLine: 1081, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !102)
!97 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/num/f64.rs", directory: "", checksumkind: CSK_MD5, checksum: "4ceb980f1a6af4a863582b1592076b01")
!98 = !DINamespace(name: "{impl#0}", scope: !99)
!99 = !DINamespace(name: "f64", scope: !86)
!100 = !DISubroutineType(types: !101)
!101 = !{!13, !20}
!102 = !{!103}
!103 = !DILocalVariable(name: "v", arg: 1, scope: !96, file: !97, line: 1081, type: !20)
!104 = !DILocation(line: 1081, column: 28, scope: !96)
!105 = !DILocation(line: 1135, column: 48, scope: !96)
!106 = !DILocation(line: 1135, column: 18, scope: !96)
!107 = !DILocalVariable(name: "rt", arg: 1, scope: !108, file: !97, line: 1128, type: !20)
!108 = distinct !DISubprogram(name: "rt_u64_to_f64", linkageName: "_ZN4core3f6421_$LT$impl$u20$f64$GT$9from_bits13rt_u64_to_f6417hbe66dbc0993ed9d6E", scope: !109, file: !97, line: 1128, type: !100, scopeLine: 1128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !110)
!109 = !DINamespace(name: "from_bits", scope: !98)
!110 = !{!107}
!111 = !DILocation(line: 1128, column: 26, scope: !108, inlinedAt: !106)
!112 = !DILocation(line: 1132, column: 22, scope: !108, inlinedAt: !106)
!113 = !DILocation(line: 1136, column: 6, scope: !96)
!114 = distinct !DISubprogram(name: "run_test_1", scope: !8, file: !7, line: 32, type: !115, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !118)
!115 = !DISubroutineType(types: !116)
!116 = !{!117}
!117 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!118 = !{!119, !121, !123, !125}
!119 = !DILocalVariable(name: "rnd", scope: !120, file: !7, line: 33, type: !15, align: 8)
!120 = distinct !DILexicalBlock(scope: !114, file: !7, line: 33, column: 5)
!121 = !DILocalVariable(name: "ret", scope: !122, file: !7, line: 34, type: !13, align: 8)
!122 = distinct !DILexicalBlock(scope: !120, file: !7, line: 34, column: 5)
!123 = !DILocalVariable(name: "expected_state", scope: !124, file: !7, line: 35, type: !19, align: 8)
!124 = distinct !DILexicalBlock(scope: !122, file: !7, line: 35, column: 5)
!125 = !DILocalVariable(name: "expected_ret", scope: !126, file: !7, line: 36, type: !13, align: 8)
!126 = distinct !DILexicalBlock(scope: !124, file: !7, line: 36, column: 5)
!127 = !DILocation(line: 33, column: 9, scope: !120)
!128 = !DILocation(line: 35, column: 9, scope: !124)
!129 = !DILocation(line: 33, column: 35, scope: !114)
!130 = !DILocation(line: 33, column: 19, scope: !114)
!131 = !DILocation(line: 34, column: 15, scope: !120)
!132 = !DILocation(line: 34, column: 9, scope: !122)
!133 = !DILocation(line: 35, column: 42, scope: !122)
!134 = !DILocation(line: 36, column: 29, scope: !124)
!135 = !DILocation(line: 36, column: 9, scope: !126)
!136 = !DILocation(line: 37, column: 5, scope: !126)
!137 = !DILocation(line: 38, column: 12, scope: !126)
!138 = !{i8 0, i8 2}
!139 = !DILocation(line: 39, column: 12, scope: !126)
!140 = !DILocation(line: 40, column: 2, scope: !114)
!141 = distinct !DISubprogram(name: "run_test_2", scope: !8, file: !7, line: 43, type: !115, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !142)
!142 = !{!143, !145, !147, !149}
!143 = !DILocalVariable(name: "rnd", scope: !144, file: !7, line: 44, type: !15, align: 8)
!144 = distinct !DILexicalBlock(scope: !141, file: !7, line: 44, column: 5)
!145 = !DILocalVariable(name: "ret", scope: !146, file: !7, line: 45, type: !13, align: 8)
!146 = distinct !DILexicalBlock(scope: !144, file: !7, line: 45, column: 5)
!147 = !DILocalVariable(name: "expected_state", scope: !148, file: !7, line: 46, type: !19, align: 8)
!148 = distinct !DILexicalBlock(scope: !146, file: !7, line: 46, column: 5)
!149 = !DILocalVariable(name: "expected_ret", scope: !150, file: !7, line: 47, type: !13, align: 8)
!150 = distinct !DILexicalBlock(scope: !148, file: !7, line: 47, column: 5)
!151 = !DILocation(line: 44, column: 9, scope: !144)
!152 = !DILocation(line: 46, column: 9, scope: !148)
!153 = !DILocation(line: 44, column: 35, scope: !141)
!154 = !DILocation(line: 44, column: 19, scope: !141)
!155 = !DILocation(line: 45, column: 15, scope: !144)
!156 = !DILocation(line: 45, column: 9, scope: !146)
!157 = !DILocation(line: 46, column: 42, scope: !146)
!158 = !DILocation(line: 47, column: 29, scope: !148)
!159 = !DILocation(line: 47, column: 9, scope: !150)
!160 = !DILocation(line: 48, column: 5, scope: !150)
!161 = !DILocation(line: 49, column: 12, scope: !150)
!162 = !DILocation(line: 50, column: 12, scope: !150)
!163 = !DILocation(line: 51, column: 2, scope: !141)
!164 = distinct !DISubprogram(name: "run_test_3", scope: !8, file: !7, line: 54, type: !115, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !165)
!165 = !{!166, !168, !170, !172}
!166 = !DILocalVariable(name: "rnd", scope: !167, file: !7, line: 55, type: !15, align: 8)
!167 = distinct !DILexicalBlock(scope: !164, file: !7, line: 55, column: 5)
!168 = !DILocalVariable(name: "ret", scope: !169, file: !7, line: 56, type: !13, align: 8)
!169 = distinct !DILexicalBlock(scope: !167, file: !7, line: 56, column: 5)
!170 = !DILocalVariable(name: "expected_state", scope: !171, file: !7, line: 57, type: !19, align: 8)
!171 = distinct !DILexicalBlock(scope: !169, file: !7, line: 57, column: 5)
!172 = !DILocalVariable(name: "expected_ret", scope: !173, file: !7, line: 58, type: !13, align: 8)
!173 = distinct !DILexicalBlock(scope: !171, file: !7, line: 58, column: 5)
!174 = !DILocation(line: 55, column: 9, scope: !167)
!175 = !DILocation(line: 57, column: 9, scope: !171)
!176 = !DILocation(line: 55, column: 35, scope: !164)
!177 = !DILocation(line: 55, column: 19, scope: !164)
!178 = !DILocation(line: 56, column: 15, scope: !167)
!179 = !DILocation(line: 56, column: 9, scope: !169)
!180 = !DILocation(line: 57, column: 42, scope: !169)
!181 = !DILocation(line: 58, column: 29, scope: !171)
!182 = !DILocation(line: 58, column: 9, scope: !173)
!183 = !DILocation(line: 59, column: 5, scope: !173)
!184 = !DILocation(line: 60, column: 12, scope: !173)
!185 = !DILocation(line: 61, column: 12, scope: !173)
!186 = !DILocation(line: 62, column: 2, scope: !164)
!187 = distinct !DISubprogram(name: "run_test_4", scope: !8, file: !7, line: 65, type: !115, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !188)
!188 = !{!189, !191, !193, !195}
!189 = !DILocalVariable(name: "rnd", scope: !190, file: !7, line: 66, type: !15, align: 8)
!190 = distinct !DILexicalBlock(scope: !187, file: !7, line: 66, column: 5)
!191 = !DILocalVariable(name: "ret", scope: !192, file: !7, line: 67, type: !13, align: 8)
!192 = distinct !DILexicalBlock(scope: !190, file: !7, line: 67, column: 5)
!193 = !DILocalVariable(name: "expected_state", scope: !194, file: !7, line: 68, type: !19, align: 8)
!194 = distinct !DILexicalBlock(scope: !192, file: !7, line: 68, column: 5)
!195 = !DILocalVariable(name: "expected_ret", scope: !196, file: !7, line: 69, type: !13, align: 8)
!196 = distinct !DILexicalBlock(scope: !194, file: !7, line: 69, column: 5)
!197 = !DILocation(line: 66, column: 9, scope: !190)
!198 = !DILocation(line: 68, column: 9, scope: !194)
!199 = !DILocation(line: 66, column: 35, scope: !187)
!200 = !DILocation(line: 66, column: 19, scope: !187)
!201 = !DILocation(line: 67, column: 15, scope: !190)
!202 = !DILocation(line: 67, column: 9, scope: !192)
!203 = !DILocation(line: 68, column: 42, scope: !192)
!204 = !DILocation(line: 69, column: 29, scope: !194)
!205 = !DILocation(line: 69, column: 9, scope: !196)
!206 = !DILocation(line: 70, column: 5, scope: !196)
!207 = !DILocation(line: 71, column: 12, scope: !196)
!208 = !DILocation(line: 72, column: 12, scope: !196)
!209 = !DILocation(line: 73, column: 2, scope: !187)
!210 = distinct !DISubprogram(name: "run_test_5", scope: !8, file: !7, line: 76, type: !115, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !211)
!211 = !{!212, !214, !216, !218}
!212 = !DILocalVariable(name: "rnd", scope: !213, file: !7, line: 77, type: !15, align: 8)
!213 = distinct !DILexicalBlock(scope: !210, file: !7, line: 77, column: 5)
!214 = !DILocalVariable(name: "ret", scope: !215, file: !7, line: 78, type: !13, align: 8)
!215 = distinct !DILexicalBlock(scope: !213, file: !7, line: 78, column: 5)
!216 = !DILocalVariable(name: "expected_state", scope: !217, file: !7, line: 79, type: !19, align: 8)
!217 = distinct !DILexicalBlock(scope: !215, file: !7, line: 79, column: 5)
!218 = !DILocalVariable(name: "expected_ret", scope: !219, file: !7, line: 80, type: !13, align: 8)
!219 = distinct !DILexicalBlock(scope: !217, file: !7, line: 80, column: 5)
!220 = !DILocation(line: 77, column: 9, scope: !213)
!221 = !DILocation(line: 79, column: 9, scope: !217)
!222 = !DILocation(line: 77, column: 35, scope: !210)
!223 = !DILocation(line: 77, column: 19, scope: !210)
!224 = !DILocation(line: 78, column: 15, scope: !213)
!225 = !DILocation(line: 78, column: 9, scope: !215)
!226 = !DILocation(line: 79, column: 42, scope: !215)
!227 = !DILocation(line: 80, column: 29, scope: !217)
!228 = !DILocation(line: 80, column: 9, scope: !219)
!229 = !DILocation(line: 81, column: 5, scope: !219)
!230 = !DILocation(line: 82, column: 12, scope: !219)
!231 = !DILocation(line: 83, column: 12, scope: !219)
!232 = !DILocation(line: 84, column: 2, scope: !210)
!233 = distinct !DISubprogram(name: "run_test_6", scope: !8, file: !7, line: 88, type: !115, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !234)
!234 = !{!235, !237, !239, !241}
!235 = !DILocalVariable(name: "rnd", scope: !236, file: !7, line: 89, type: !15, align: 8)
!236 = distinct !DILexicalBlock(scope: !233, file: !7, line: 89, column: 5)
!237 = !DILocalVariable(name: "ret", scope: !238, file: !7, line: 90, type: !13, align: 8)
!238 = distinct !DILexicalBlock(scope: !236, file: !7, line: 90, column: 5)
!239 = !DILocalVariable(name: "expected_state", scope: !240, file: !7, line: 91, type: !19, align: 8)
!240 = distinct !DILexicalBlock(scope: !238, file: !7, line: 91, column: 5)
!241 = !DILocalVariable(name: "expected_ret", scope: !242, file: !7, line: 92, type: !13, align: 8)
!242 = distinct !DILexicalBlock(scope: !240, file: !7, line: 92, column: 5)
!243 = !DILocation(line: 89, column: 9, scope: !236)
!244 = !DILocation(line: 91, column: 9, scope: !240)
!245 = !DILocation(line: 89, column: 35, scope: !233)
!246 = !DILocation(line: 89, column: 19, scope: !233)
!247 = !DILocation(line: 90, column: 15, scope: !236)
!248 = !DILocation(line: 90, column: 9, scope: !238)
!249 = !DILocation(line: 91, column: 42, scope: !238)
!250 = !DILocation(line: 92, column: 29, scope: !240)
!251 = !DILocation(line: 92, column: 9, scope: !242)
!252 = !DILocation(line: 93, column: 5, scope: !242)
!253 = !DILocation(line: 94, column: 12, scope: !242)
!254 = !DILocation(line: 95, column: 12, scope: !242)
!255 = !DILocation(line: 96, column: 2, scope: !233)
!256 = distinct !DISubprogram(name: "run_test_7", scope: !8, file: !7, line: 99, type: !115, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !257)
!257 = !{!258, !260, !262, !264}
!258 = !DILocalVariable(name: "rnd", scope: !259, file: !7, line: 100, type: !15, align: 8)
!259 = distinct !DILexicalBlock(scope: !256, file: !7, line: 100, column: 5)
!260 = !DILocalVariable(name: "ret", scope: !261, file: !7, line: 101, type: !13, align: 8)
!261 = distinct !DILexicalBlock(scope: !259, file: !7, line: 101, column: 5)
!262 = !DILocalVariable(name: "expected_state", scope: !263, file: !7, line: 102, type: !19, align: 8)
!263 = distinct !DILexicalBlock(scope: !261, file: !7, line: 102, column: 5)
!264 = !DILocalVariable(name: "expected_ret", scope: !265, file: !7, line: 103, type: !13, align: 8)
!265 = distinct !DILexicalBlock(scope: !263, file: !7, line: 103, column: 5)
!266 = !DILocation(line: 100, column: 9, scope: !259)
!267 = !DILocation(line: 102, column: 9, scope: !263)
!268 = !DILocation(line: 100, column: 35, scope: !256)
!269 = !DILocation(line: 100, column: 19, scope: !256)
!270 = !DILocation(line: 101, column: 15, scope: !259)
!271 = !DILocation(line: 101, column: 9, scope: !261)
!272 = !DILocation(line: 102, column: 42, scope: !261)
!273 = !DILocation(line: 103, column: 29, scope: !263)
!274 = !DILocation(line: 103, column: 9, scope: !265)
!275 = !DILocation(line: 104, column: 5, scope: !265)
!276 = !DILocation(line: 105, column: 12, scope: !265)
!277 = !DILocation(line: 106, column: 12, scope: !265)
!278 = !DILocation(line: 107, column: 2, scope: !256)
!279 = distinct !DISubprogram(name: "run_test_8", scope: !8, file: !7, line: 110, type: !115, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !280)
!280 = !{!281, !283, !285, !287}
!281 = !DILocalVariable(name: "rnd", scope: !282, file: !7, line: 111, type: !15, align: 8)
!282 = distinct !DILexicalBlock(scope: !279, file: !7, line: 111, column: 5)
!283 = !DILocalVariable(name: "ret", scope: !284, file: !7, line: 112, type: !13, align: 8)
!284 = distinct !DILexicalBlock(scope: !282, file: !7, line: 112, column: 5)
!285 = !DILocalVariable(name: "expected_state", scope: !286, file: !7, line: 113, type: !19, align: 8)
!286 = distinct !DILexicalBlock(scope: !284, file: !7, line: 113, column: 5)
!287 = !DILocalVariable(name: "expected_ret", scope: !288, file: !7, line: 114, type: !13, align: 8)
!288 = distinct !DILexicalBlock(scope: !286, file: !7, line: 114, column: 5)
!289 = !DILocation(line: 111, column: 9, scope: !282)
!290 = !DILocation(line: 113, column: 9, scope: !286)
!291 = !DILocation(line: 111, column: 35, scope: !279)
!292 = !DILocation(line: 111, column: 19, scope: !279)
!293 = !DILocation(line: 112, column: 15, scope: !282)
!294 = !DILocation(line: 112, column: 9, scope: !284)
!295 = !DILocation(line: 113, column: 42, scope: !284)
!296 = !DILocation(line: 114, column: 29, scope: !286)
!297 = !DILocation(line: 114, column: 9, scope: !288)
!298 = !DILocation(line: 115, column: 5, scope: !288)
!299 = !DILocation(line: 116, column: 12, scope: !288)
!300 = !DILocation(line: 117, column: 12, scope: !288)
!301 = !DILocation(line: 118, column: 2, scope: !279)
!302 = distinct !DISubprogram(name: "run_test_9", scope: !8, file: !7, line: 121, type: !115, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !303)
!303 = !{!304, !306, !308, !310}
!304 = !DILocalVariable(name: "rnd", scope: !305, file: !7, line: 122, type: !15, align: 8)
!305 = distinct !DILexicalBlock(scope: !302, file: !7, line: 122, column: 5)
!306 = !DILocalVariable(name: "ret", scope: !307, file: !7, line: 123, type: !13, align: 8)
!307 = distinct !DILexicalBlock(scope: !305, file: !7, line: 123, column: 5)
!308 = !DILocalVariable(name: "expected_state", scope: !309, file: !7, line: 124, type: !19, align: 8)
!309 = distinct !DILexicalBlock(scope: !307, file: !7, line: 124, column: 5)
!310 = !DILocalVariable(name: "expected_ret", scope: !311, file: !7, line: 125, type: !13, align: 8)
!311 = distinct !DILexicalBlock(scope: !309, file: !7, line: 125, column: 5)
!312 = !DILocation(line: 122, column: 9, scope: !305)
!313 = !DILocation(line: 124, column: 9, scope: !309)
!314 = !DILocation(line: 122, column: 35, scope: !302)
!315 = !DILocation(line: 122, column: 19, scope: !302)
!316 = !DILocation(line: 123, column: 15, scope: !305)
!317 = !DILocation(line: 123, column: 9, scope: !307)
!318 = !DILocation(line: 124, column: 42, scope: !307)
!319 = !DILocation(line: 125, column: 29, scope: !309)
!320 = !DILocation(line: 125, column: 9, scope: !311)
!321 = !DILocation(line: 126, column: 5, scope: !311)
!322 = !DILocation(line: 127, column: 12, scope: !311)
!323 = !DILocation(line: 128, column: 12, scope: !311)
!324 = !DILocation(line: 129, column: 2, scope: !302)
!325 = distinct !DISubprogram(name: "run_test_10", scope: !8, file: !7, line: 132, type: !115, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !326)
!326 = !{!327, !329, !331, !333}
!327 = !DILocalVariable(name: "rnd", scope: !328, file: !7, line: 133, type: !15, align: 8)
!328 = distinct !DILexicalBlock(scope: !325, file: !7, line: 133, column: 5)
!329 = !DILocalVariable(name: "ret", scope: !330, file: !7, line: 134, type: !13, align: 8)
!330 = distinct !DILexicalBlock(scope: !328, file: !7, line: 134, column: 5)
!331 = !DILocalVariable(name: "expected_state", scope: !332, file: !7, line: 135, type: !19, align: 8)
!332 = distinct !DILexicalBlock(scope: !330, file: !7, line: 135, column: 5)
!333 = !DILocalVariable(name: "expected_ret", scope: !334, file: !7, line: 136, type: !13, align: 8)
!334 = distinct !DILexicalBlock(scope: !332, file: !7, line: 136, column: 5)
!335 = !DILocation(line: 133, column: 9, scope: !328)
!336 = !DILocation(line: 135, column: 9, scope: !332)
!337 = !DILocation(line: 133, column: 35, scope: !325)
!338 = !DILocation(line: 133, column: 19, scope: !325)
!339 = !DILocation(line: 134, column: 15, scope: !328)
!340 = !DILocation(line: 134, column: 9, scope: !330)
!341 = !DILocation(line: 135, column: 42, scope: !330)
!342 = !DILocation(line: 136, column: 29, scope: !332)
!343 = !DILocation(line: 136, column: 9, scope: !334)
!344 = !DILocation(line: 137, column: 5, scope: !334)
!345 = !DILocation(line: 138, column: 12, scope: !334)
!346 = !DILocation(line: 139, column: 12, scope: !334)
!347 = !DILocation(line: 140, column: 2, scope: !325)
!348 = distinct !DISubprogram(name: "run_test_11", scope: !8, file: !7, line: 143, type: !115, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !349)
!349 = !{!350, !352, !354, !356}
!350 = !DILocalVariable(name: "rnd", scope: !351, file: !7, line: 144, type: !15, align: 8)
!351 = distinct !DILexicalBlock(scope: !348, file: !7, line: 144, column: 5)
!352 = !DILocalVariable(name: "ret", scope: !353, file: !7, line: 145, type: !13, align: 8)
!353 = distinct !DILexicalBlock(scope: !351, file: !7, line: 145, column: 5)
!354 = !DILocalVariable(name: "expected_state", scope: !355, file: !7, line: 146, type: !19, align: 8)
!355 = distinct !DILexicalBlock(scope: !353, file: !7, line: 146, column: 5)
!356 = !DILocalVariable(name: "expected_ret", scope: !357, file: !7, line: 147, type: !13, align: 8)
!357 = distinct !DILexicalBlock(scope: !355, file: !7, line: 147, column: 5)
!358 = !DILocation(line: 144, column: 9, scope: !351)
!359 = !DILocation(line: 146, column: 9, scope: !355)
!360 = !DILocation(line: 144, column: 35, scope: !348)
!361 = !DILocation(line: 144, column: 19, scope: !348)
!362 = !DILocation(line: 145, column: 15, scope: !351)
!363 = !DILocation(line: 145, column: 9, scope: !353)
!364 = !DILocation(line: 146, column: 42, scope: !353)
!365 = !DILocation(line: 147, column: 29, scope: !355)
!366 = !DILocation(line: 147, column: 9, scope: !357)
!367 = !DILocation(line: 148, column: 5, scope: !357)
!368 = !DILocation(line: 149, column: 12, scope: !357)
!369 = !DILocation(line: 150, column: 12, scope: !357)
!370 = !DILocation(line: 151, column: 2, scope: !348)
!371 = distinct !DISubprogram(name: "run_test_12", scope: !8, file: !7, line: 154, type: !115, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !372)
!372 = !{!373, !375, !377, !379}
!373 = !DILocalVariable(name: "rnd", scope: !374, file: !7, line: 155, type: !15, align: 8)
!374 = distinct !DILexicalBlock(scope: !371, file: !7, line: 155, column: 5)
!375 = !DILocalVariable(name: "ret", scope: !376, file: !7, line: 156, type: !13, align: 8)
!376 = distinct !DILexicalBlock(scope: !374, file: !7, line: 156, column: 5)
!377 = !DILocalVariable(name: "expected_state", scope: !378, file: !7, line: 157, type: !19, align: 8)
!378 = distinct !DILexicalBlock(scope: !376, file: !7, line: 157, column: 5)
!379 = !DILocalVariable(name: "expected_ret", scope: !380, file: !7, line: 158, type: !13, align: 8)
!380 = distinct !DILexicalBlock(scope: !378, file: !7, line: 158, column: 5)
!381 = !DILocation(line: 155, column: 9, scope: !374)
!382 = !DILocation(line: 157, column: 9, scope: !378)
!383 = !DILocation(line: 155, column: 35, scope: !371)
!384 = !DILocation(line: 155, column: 19, scope: !371)
!385 = !DILocation(line: 156, column: 15, scope: !374)
!386 = !DILocation(line: 156, column: 9, scope: !376)
!387 = !DILocation(line: 157, column: 42, scope: !376)
!388 = !DILocation(line: 158, column: 29, scope: !378)
!389 = !DILocation(line: 158, column: 9, scope: !380)
!390 = !DILocation(line: 159, column: 5, scope: !380)
!391 = !DILocation(line: 160, column: 12, scope: !380)
!392 = !DILocation(line: 161, column: 12, scope: !380)
!393 = !DILocation(line: 162, column: 2, scope: !371)
!394 = distinct !DISubprogram(name: "run_test_13", scope: !8, file: !7, line: 165, type: !115, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !395)
!395 = !{!396, !398, !400, !402}
!396 = !DILocalVariable(name: "rnd", scope: !397, file: !7, line: 166, type: !15, align: 8)
!397 = distinct !DILexicalBlock(scope: !394, file: !7, line: 166, column: 5)
!398 = !DILocalVariable(name: "ret", scope: !399, file: !7, line: 167, type: !13, align: 8)
!399 = distinct !DILexicalBlock(scope: !397, file: !7, line: 167, column: 5)
!400 = !DILocalVariable(name: "expected_state", scope: !401, file: !7, line: 168, type: !19, align: 8)
!401 = distinct !DILexicalBlock(scope: !399, file: !7, line: 168, column: 5)
!402 = !DILocalVariable(name: "expected_ret", scope: !403, file: !7, line: 169, type: !13, align: 8)
!403 = distinct !DILexicalBlock(scope: !401, file: !7, line: 169, column: 5)
!404 = !DILocation(line: 166, column: 9, scope: !397)
!405 = !DILocation(line: 168, column: 9, scope: !401)
!406 = !DILocation(line: 166, column: 35, scope: !394)
!407 = !DILocation(line: 166, column: 19, scope: !394)
!408 = !DILocation(line: 167, column: 15, scope: !397)
!409 = !DILocation(line: 167, column: 9, scope: !399)
!410 = !DILocation(line: 168, column: 42, scope: !399)
!411 = !DILocation(line: 169, column: 29, scope: !401)
!412 = !DILocation(line: 169, column: 9, scope: !403)
!413 = !DILocation(line: 170, column: 5, scope: !403)
!414 = !DILocation(line: 171, column: 12, scope: !403)
!415 = !DILocation(line: 172, column: 12, scope: !403)
!416 = !DILocation(line: 173, column: 2, scope: !394)
!417 = distinct !DISubprogram(name: "run_test_14", scope: !8, file: !7, line: 176, type: !115, scopeLine: 176, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !418)
!418 = !{!419, !421, !423, !425}
!419 = !DILocalVariable(name: "rnd", scope: !420, file: !7, line: 177, type: !15, align: 8)
!420 = distinct !DILexicalBlock(scope: !417, file: !7, line: 177, column: 5)
!421 = !DILocalVariable(name: "ret", scope: !422, file: !7, line: 178, type: !13, align: 8)
!422 = distinct !DILexicalBlock(scope: !420, file: !7, line: 178, column: 5)
!423 = !DILocalVariable(name: "expected_state", scope: !424, file: !7, line: 179, type: !19, align: 8)
!424 = distinct !DILexicalBlock(scope: !422, file: !7, line: 179, column: 5)
!425 = !DILocalVariable(name: "expected_ret", scope: !426, file: !7, line: 180, type: !13, align: 8)
!426 = distinct !DILexicalBlock(scope: !424, file: !7, line: 180, column: 5)
!427 = !DILocation(line: 177, column: 9, scope: !420)
!428 = !DILocation(line: 179, column: 9, scope: !424)
!429 = !DILocation(line: 177, column: 35, scope: !417)
!430 = !DILocation(line: 177, column: 19, scope: !417)
!431 = !DILocation(line: 178, column: 15, scope: !420)
!432 = !DILocation(line: 178, column: 9, scope: !422)
!433 = !DILocation(line: 179, column: 42, scope: !422)
!434 = !DILocation(line: 180, column: 29, scope: !424)
!435 = !DILocation(line: 180, column: 9, scope: !426)
!436 = !DILocation(line: 181, column: 5, scope: !426)
!437 = !DILocation(line: 182, column: 12, scope: !426)
!438 = !DILocation(line: 183, column: 12, scope: !426)
!439 = !DILocation(line: 184, column: 2, scope: !417)
!440 = distinct !DISubprogram(name: "run_test_15", scope: !8, file: !7, line: 187, type: !115, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !441)
!441 = !{!442, !444, !446, !448}
!442 = !DILocalVariable(name: "rnd", scope: !443, file: !7, line: 188, type: !15, align: 8)
!443 = distinct !DILexicalBlock(scope: !440, file: !7, line: 188, column: 5)
!444 = !DILocalVariable(name: "ret", scope: !445, file: !7, line: 189, type: !13, align: 8)
!445 = distinct !DILexicalBlock(scope: !443, file: !7, line: 189, column: 5)
!446 = !DILocalVariable(name: "expected_state", scope: !447, file: !7, line: 190, type: !19, align: 8)
!447 = distinct !DILexicalBlock(scope: !445, file: !7, line: 190, column: 5)
!448 = !DILocalVariable(name: "expected_ret", scope: !449, file: !7, line: 191, type: !13, align: 8)
!449 = distinct !DILexicalBlock(scope: !447, file: !7, line: 191, column: 5)
!450 = !DILocation(line: 188, column: 9, scope: !443)
!451 = !DILocation(line: 190, column: 9, scope: !447)
!452 = !DILocation(line: 188, column: 35, scope: !440)
!453 = !DILocation(line: 188, column: 19, scope: !440)
!454 = !DILocation(line: 189, column: 15, scope: !443)
!455 = !DILocation(line: 189, column: 9, scope: !445)
!456 = !DILocation(line: 190, column: 42, scope: !445)
!457 = !DILocation(line: 191, column: 29, scope: !447)
!458 = !DILocation(line: 191, column: 9, scope: !449)
!459 = !DILocation(line: 192, column: 5, scope: !449)
!460 = !DILocation(line: 193, column: 12, scope: !449)
!461 = !DILocation(line: 194, column: 12, scope: !449)
!462 = !DILocation(line: 195, column: 2, scope: !440)
!463 = distinct !DISubprogram(name: "run_test_16", scope: !8, file: !7, line: 198, type: !115, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !464)
!464 = !{!465, !467, !469, !471}
!465 = !DILocalVariable(name: "rnd", scope: !466, file: !7, line: 199, type: !15, align: 8)
!466 = distinct !DILexicalBlock(scope: !463, file: !7, line: 199, column: 5)
!467 = !DILocalVariable(name: "ret", scope: !468, file: !7, line: 200, type: !13, align: 8)
!468 = distinct !DILexicalBlock(scope: !466, file: !7, line: 200, column: 5)
!469 = !DILocalVariable(name: "expected_state", scope: !470, file: !7, line: 201, type: !19, align: 8)
!470 = distinct !DILexicalBlock(scope: !468, file: !7, line: 201, column: 5)
!471 = !DILocalVariable(name: "expected_ret", scope: !472, file: !7, line: 202, type: !13, align: 8)
!472 = distinct !DILexicalBlock(scope: !470, file: !7, line: 202, column: 5)
!473 = !DILocation(line: 199, column: 9, scope: !466)
!474 = !DILocation(line: 201, column: 9, scope: !470)
!475 = !DILocation(line: 199, column: 35, scope: !463)
!476 = !DILocation(line: 199, column: 19, scope: !463)
!477 = !DILocation(line: 200, column: 15, scope: !466)
!478 = !DILocation(line: 200, column: 9, scope: !468)
!479 = !DILocation(line: 201, column: 42, scope: !468)
!480 = !DILocation(line: 202, column: 29, scope: !470)
!481 = !DILocation(line: 202, column: 9, scope: !472)
!482 = !DILocation(line: 203, column: 5, scope: !472)
!483 = !DILocation(line: 204, column: 12, scope: !472)
!484 = !DILocation(line: 205, column: 12, scope: !472)
!485 = !DILocation(line: 206, column: 2, scope: !463)
!486 = distinct !DISubprogram(name: "run_test_17", scope: !8, file: !7, line: 209, type: !115, scopeLine: 209, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !487)
!487 = !{!488, !490, !492, !494}
!488 = !DILocalVariable(name: "rnd", scope: !489, file: !7, line: 210, type: !15, align: 8)
!489 = distinct !DILexicalBlock(scope: !486, file: !7, line: 210, column: 5)
!490 = !DILocalVariable(name: "ret", scope: !491, file: !7, line: 211, type: !13, align: 8)
!491 = distinct !DILexicalBlock(scope: !489, file: !7, line: 211, column: 5)
!492 = !DILocalVariable(name: "expected_state", scope: !493, file: !7, line: 212, type: !19, align: 8)
!493 = distinct !DILexicalBlock(scope: !491, file: !7, line: 212, column: 5)
!494 = !DILocalVariable(name: "expected_ret", scope: !495, file: !7, line: 213, type: !13, align: 8)
!495 = distinct !DILexicalBlock(scope: !493, file: !7, line: 213, column: 5)
!496 = !DILocation(line: 210, column: 9, scope: !489)
!497 = !DILocation(line: 212, column: 9, scope: !493)
!498 = !DILocation(line: 210, column: 35, scope: !486)
!499 = !DILocation(line: 210, column: 19, scope: !486)
!500 = !DILocation(line: 211, column: 15, scope: !489)
!501 = !DILocation(line: 211, column: 9, scope: !491)
!502 = !DILocation(line: 212, column: 42, scope: !491)
!503 = !DILocation(line: 213, column: 29, scope: !493)
!504 = !DILocation(line: 213, column: 9, scope: !495)
!505 = !DILocation(line: 214, column: 5, scope: !495)
!506 = !DILocation(line: 215, column: 12, scope: !495)
!507 = !DILocation(line: 216, column: 12, scope: !495)
!508 = !DILocation(line: 217, column: 2, scope: !486)
!509 = distinct !DISubprogram(name: "run_test_18", scope: !8, file: !7, line: 220, type: !115, scopeLine: 220, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !510)
!510 = !{!511, !513, !515, !517}
!511 = !DILocalVariable(name: "rnd", scope: !512, file: !7, line: 221, type: !15, align: 8)
!512 = distinct !DILexicalBlock(scope: !509, file: !7, line: 221, column: 5)
!513 = !DILocalVariable(name: "ret", scope: !514, file: !7, line: 222, type: !13, align: 8)
!514 = distinct !DILexicalBlock(scope: !512, file: !7, line: 222, column: 5)
!515 = !DILocalVariable(name: "expected_state", scope: !516, file: !7, line: 223, type: !19, align: 8)
!516 = distinct !DILexicalBlock(scope: !514, file: !7, line: 223, column: 5)
!517 = !DILocalVariable(name: "expected_ret", scope: !518, file: !7, line: 224, type: !13, align: 8)
!518 = distinct !DILexicalBlock(scope: !516, file: !7, line: 224, column: 5)
!519 = !DILocation(line: 221, column: 9, scope: !512)
!520 = !DILocation(line: 223, column: 9, scope: !516)
!521 = !DILocation(line: 221, column: 35, scope: !509)
!522 = !DILocation(line: 221, column: 19, scope: !509)
!523 = !DILocation(line: 222, column: 15, scope: !512)
!524 = !DILocation(line: 222, column: 9, scope: !514)
!525 = !DILocation(line: 223, column: 42, scope: !514)
!526 = !DILocation(line: 224, column: 29, scope: !516)
!527 = !DILocation(line: 224, column: 9, scope: !518)
!528 = !DILocation(line: 225, column: 5, scope: !518)
!529 = !DILocation(line: 226, column: 12, scope: !518)
!530 = !DILocation(line: 227, column: 12, scope: !518)
!531 = !DILocation(line: 228, column: 2, scope: !509)
!532 = distinct !DISubprogram(name: "run_test_19", scope: !8, file: !7, line: 231, type: !115, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !533)
!533 = !{!534, !536, !538, !540}
!534 = !DILocalVariable(name: "rnd", scope: !535, file: !7, line: 232, type: !15, align: 8)
!535 = distinct !DILexicalBlock(scope: !532, file: !7, line: 232, column: 5)
!536 = !DILocalVariable(name: "ret", scope: !537, file: !7, line: 233, type: !13, align: 8)
!537 = distinct !DILexicalBlock(scope: !535, file: !7, line: 233, column: 5)
!538 = !DILocalVariable(name: "expected_state", scope: !539, file: !7, line: 234, type: !19, align: 8)
!539 = distinct !DILexicalBlock(scope: !537, file: !7, line: 234, column: 5)
!540 = !DILocalVariable(name: "expected_ret", scope: !541, file: !7, line: 235, type: !13, align: 8)
!541 = distinct !DILexicalBlock(scope: !539, file: !7, line: 235, column: 5)
!542 = !DILocation(line: 232, column: 9, scope: !535)
!543 = !DILocation(line: 234, column: 9, scope: !539)
!544 = !DILocation(line: 232, column: 35, scope: !532)
!545 = !DILocation(line: 232, column: 19, scope: !532)
!546 = !DILocation(line: 233, column: 15, scope: !535)
!547 = !DILocation(line: 233, column: 9, scope: !537)
!548 = !DILocation(line: 234, column: 42, scope: !537)
!549 = !DILocation(line: 235, column: 29, scope: !539)
!550 = !DILocation(line: 235, column: 9, scope: !541)
!551 = !DILocation(line: 236, column: 5, scope: !541)
!552 = !DILocation(line: 237, column: 12, scope: !541)
!553 = !DILocation(line: 238, column: 12, scope: !541)
!554 = !DILocation(line: 239, column: 2, scope: !532)
!555 = distinct !DISubprogram(name: "run_test_20", scope: !8, file: !7, line: 242, type: !115, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !556)
!556 = !{!557, !559, !561, !563}
!557 = !DILocalVariable(name: "rnd", scope: !558, file: !7, line: 243, type: !15, align: 8)
!558 = distinct !DILexicalBlock(scope: !555, file: !7, line: 243, column: 5)
!559 = !DILocalVariable(name: "ret", scope: !560, file: !7, line: 244, type: !13, align: 8)
!560 = distinct !DILexicalBlock(scope: !558, file: !7, line: 244, column: 5)
!561 = !DILocalVariable(name: "expected_state", scope: !562, file: !7, line: 245, type: !19, align: 8)
!562 = distinct !DILexicalBlock(scope: !560, file: !7, line: 245, column: 5)
!563 = !DILocalVariable(name: "expected_ret", scope: !564, file: !7, line: 246, type: !13, align: 8)
!564 = distinct !DILexicalBlock(scope: !562, file: !7, line: 246, column: 5)
!565 = !DILocation(line: 243, column: 9, scope: !558)
!566 = !DILocation(line: 245, column: 9, scope: !562)
!567 = !DILocation(line: 243, column: 35, scope: !555)
!568 = !DILocation(line: 243, column: 19, scope: !555)
!569 = !DILocation(line: 244, column: 15, scope: !558)
!570 = !DILocation(line: 244, column: 9, scope: !560)
!571 = !DILocation(line: 245, column: 42, scope: !560)
!572 = !DILocation(line: 246, column: 29, scope: !562)
!573 = !DILocation(line: 246, column: 9, scope: !564)
!574 = !DILocation(line: 247, column: 5, scope: !564)
!575 = !DILocation(line: 248, column: 12, scope: !564)
!576 = !DILocation(line: 249, column: 12, scope: !564)
!577 = !DILocation(line: 250, column: 2, scope: !555)
!578 = distinct !DISubprogram(name: "run_test_21", scope: !8, file: !7, line: 253, type: !115, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !579)
!579 = !{!580, !582, !584, !586}
!580 = !DILocalVariable(name: "rnd", scope: !581, file: !7, line: 254, type: !15, align: 8)
!581 = distinct !DILexicalBlock(scope: !578, file: !7, line: 254, column: 5)
!582 = !DILocalVariable(name: "ret", scope: !583, file: !7, line: 255, type: !13, align: 8)
!583 = distinct !DILexicalBlock(scope: !581, file: !7, line: 255, column: 5)
!584 = !DILocalVariable(name: "expected_state", scope: !585, file: !7, line: 256, type: !19, align: 8)
!585 = distinct !DILexicalBlock(scope: !583, file: !7, line: 256, column: 5)
!586 = !DILocalVariable(name: "expected_ret", scope: !587, file: !7, line: 257, type: !13, align: 8)
!587 = distinct !DILexicalBlock(scope: !585, file: !7, line: 257, column: 5)
!588 = !DILocation(line: 254, column: 9, scope: !581)
!589 = !DILocation(line: 256, column: 9, scope: !585)
!590 = !DILocation(line: 254, column: 35, scope: !578)
!591 = !DILocation(line: 254, column: 19, scope: !578)
!592 = !DILocation(line: 255, column: 15, scope: !581)
!593 = !DILocation(line: 255, column: 9, scope: !583)
!594 = !DILocation(line: 256, column: 42, scope: !583)
!595 = !DILocation(line: 257, column: 29, scope: !585)
!596 = !DILocation(line: 257, column: 9, scope: !587)
!597 = !DILocation(line: 258, column: 5, scope: !587)
!598 = !DILocation(line: 259, column: 12, scope: !587)
!599 = !DILocation(line: 260, column: 12, scope: !587)
!600 = !DILocation(line: 261, column: 2, scope: !578)
!601 = distinct !DISubprogram(name: "run_test_22", scope: !8, file: !7, line: 264, type: !115, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !602)
!602 = !{!603, !605, !607, !609}
!603 = !DILocalVariable(name: "rnd", scope: !604, file: !7, line: 265, type: !15, align: 8)
!604 = distinct !DILexicalBlock(scope: !601, file: !7, line: 265, column: 5)
!605 = !DILocalVariable(name: "ret", scope: !606, file: !7, line: 266, type: !13, align: 8)
!606 = distinct !DILexicalBlock(scope: !604, file: !7, line: 266, column: 5)
!607 = !DILocalVariable(name: "expected_state", scope: !608, file: !7, line: 267, type: !19, align: 8)
!608 = distinct !DILexicalBlock(scope: !606, file: !7, line: 267, column: 5)
!609 = !DILocalVariable(name: "expected_ret", scope: !610, file: !7, line: 268, type: !13, align: 8)
!610 = distinct !DILexicalBlock(scope: !608, file: !7, line: 268, column: 5)
!611 = !DILocation(line: 265, column: 9, scope: !604)
!612 = !DILocation(line: 267, column: 9, scope: !608)
!613 = !DILocation(line: 265, column: 35, scope: !601)
!614 = !DILocation(line: 265, column: 19, scope: !601)
!615 = !DILocation(line: 266, column: 15, scope: !604)
!616 = !DILocation(line: 266, column: 9, scope: !606)
!617 = !DILocation(line: 267, column: 42, scope: !606)
!618 = !DILocation(line: 268, column: 29, scope: !608)
!619 = !DILocation(line: 268, column: 9, scope: !610)
!620 = !DILocation(line: 269, column: 5, scope: !610)
!621 = !DILocation(line: 270, column: 12, scope: !610)
!622 = !DILocation(line: 271, column: 12, scope: !610)
!623 = !DILocation(line: 272, column: 2, scope: !601)
!624 = distinct !DISubprogram(name: "run_test_23", scope: !8, file: !7, line: 275, type: !115, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !625)
!625 = !{!626, !628, !630, !632}
!626 = !DILocalVariable(name: "rnd", scope: !627, file: !7, line: 276, type: !15, align: 8)
!627 = distinct !DILexicalBlock(scope: !624, file: !7, line: 276, column: 5)
!628 = !DILocalVariable(name: "ret", scope: !629, file: !7, line: 277, type: !13, align: 8)
!629 = distinct !DILexicalBlock(scope: !627, file: !7, line: 277, column: 5)
!630 = !DILocalVariable(name: "expected_state", scope: !631, file: !7, line: 278, type: !19, align: 8)
!631 = distinct !DILexicalBlock(scope: !629, file: !7, line: 278, column: 5)
!632 = !DILocalVariable(name: "expected_ret", scope: !633, file: !7, line: 279, type: !13, align: 8)
!633 = distinct !DILexicalBlock(scope: !631, file: !7, line: 279, column: 5)
!634 = !DILocation(line: 276, column: 9, scope: !627)
!635 = !DILocation(line: 278, column: 9, scope: !631)
!636 = !DILocation(line: 276, column: 35, scope: !624)
!637 = !DILocation(line: 276, column: 19, scope: !624)
!638 = !DILocation(line: 277, column: 15, scope: !627)
!639 = !DILocation(line: 277, column: 9, scope: !629)
!640 = !DILocation(line: 278, column: 42, scope: !629)
!641 = !DILocation(line: 279, column: 29, scope: !631)
!642 = !DILocation(line: 279, column: 9, scope: !633)
!643 = !DILocation(line: 280, column: 5, scope: !633)
!644 = !DILocation(line: 281, column: 12, scope: !633)
!645 = !DILocation(line: 282, column: 12, scope: !633)
!646 = !DILocation(line: 283, column: 2, scope: !624)
!647 = distinct !DISubprogram(name: "run_test_24", scope: !8, file: !7, line: 286, type: !115, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !648)
!648 = !{!649, !651, !653, !655}
!649 = !DILocalVariable(name: "rnd", scope: !650, file: !7, line: 287, type: !15, align: 8)
!650 = distinct !DILexicalBlock(scope: !647, file: !7, line: 287, column: 5)
!651 = !DILocalVariable(name: "ret", scope: !652, file: !7, line: 288, type: !13, align: 8)
!652 = distinct !DILexicalBlock(scope: !650, file: !7, line: 288, column: 5)
!653 = !DILocalVariable(name: "expected_state", scope: !654, file: !7, line: 289, type: !19, align: 8)
!654 = distinct !DILexicalBlock(scope: !652, file: !7, line: 289, column: 5)
!655 = !DILocalVariable(name: "expected_ret", scope: !656, file: !7, line: 290, type: !13, align: 8)
!656 = distinct !DILexicalBlock(scope: !654, file: !7, line: 290, column: 5)
!657 = !DILocation(line: 287, column: 9, scope: !650)
!658 = !DILocation(line: 289, column: 9, scope: !654)
!659 = !DILocation(line: 287, column: 35, scope: !647)
!660 = !DILocation(line: 287, column: 19, scope: !647)
!661 = !DILocation(line: 288, column: 15, scope: !650)
!662 = !DILocation(line: 288, column: 9, scope: !652)
!663 = !DILocation(line: 289, column: 42, scope: !652)
!664 = !DILocation(line: 290, column: 29, scope: !654)
!665 = !DILocation(line: 290, column: 9, scope: !656)
!666 = !DILocation(line: 291, column: 5, scope: !656)
!667 = !DILocation(line: 292, column: 12, scope: !656)
!668 = !DILocation(line: 293, column: 12, scope: !656)
!669 = !DILocation(line: 294, column: 2, scope: !647)
!670 = distinct !DISubprogram(name: "run_test_25", scope: !8, file: !7, line: 297, type: !115, scopeLine: 297, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !671)
!671 = !{!672, !674, !676, !678}
!672 = !DILocalVariable(name: "rnd", scope: !673, file: !7, line: 298, type: !15, align: 8)
!673 = distinct !DILexicalBlock(scope: !670, file: !7, line: 298, column: 5)
!674 = !DILocalVariable(name: "ret", scope: !675, file: !7, line: 299, type: !13, align: 8)
!675 = distinct !DILexicalBlock(scope: !673, file: !7, line: 299, column: 5)
!676 = !DILocalVariable(name: "expected_state", scope: !677, file: !7, line: 300, type: !19, align: 8)
!677 = distinct !DILexicalBlock(scope: !675, file: !7, line: 300, column: 5)
!678 = !DILocalVariable(name: "expected_ret", scope: !679, file: !7, line: 301, type: !13, align: 8)
!679 = distinct !DILexicalBlock(scope: !677, file: !7, line: 301, column: 5)
!680 = !DILocation(line: 298, column: 9, scope: !673)
!681 = !DILocation(line: 300, column: 9, scope: !677)
!682 = !DILocation(line: 298, column: 35, scope: !670)
!683 = !DILocation(line: 298, column: 19, scope: !670)
!684 = !DILocation(line: 299, column: 15, scope: !673)
!685 = !DILocation(line: 299, column: 9, scope: !675)
!686 = !DILocation(line: 300, column: 42, scope: !675)
!687 = !DILocation(line: 301, column: 29, scope: !677)
!688 = !DILocation(line: 301, column: 9, scope: !679)
!689 = !DILocation(line: 302, column: 5, scope: !679)
!690 = !DILocation(line: 303, column: 12, scope: !679)
!691 = !DILocation(line: 304, column: 12, scope: !679)
!692 = !DILocation(line: 305, column: 2, scope: !670)
!693 = distinct !DISubprogram(name: "run_test_26", scope: !8, file: !7, line: 308, type: !115, scopeLine: 308, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !694)
!694 = !{!695, !697, !699, !701}
!695 = !DILocalVariable(name: "rnd", scope: !696, file: !7, line: 309, type: !15, align: 8)
!696 = distinct !DILexicalBlock(scope: !693, file: !7, line: 309, column: 5)
!697 = !DILocalVariable(name: "ret", scope: !698, file: !7, line: 310, type: !13, align: 8)
!698 = distinct !DILexicalBlock(scope: !696, file: !7, line: 310, column: 5)
!699 = !DILocalVariable(name: "expected_state", scope: !700, file: !7, line: 311, type: !19, align: 8)
!700 = distinct !DILexicalBlock(scope: !698, file: !7, line: 311, column: 5)
!701 = !DILocalVariable(name: "expected_ret", scope: !702, file: !7, line: 312, type: !13, align: 8)
!702 = distinct !DILexicalBlock(scope: !700, file: !7, line: 312, column: 5)
!703 = !DILocation(line: 309, column: 9, scope: !696)
!704 = !DILocation(line: 311, column: 9, scope: !700)
!705 = !DILocation(line: 309, column: 35, scope: !693)
!706 = !DILocation(line: 309, column: 19, scope: !693)
!707 = !DILocation(line: 310, column: 15, scope: !696)
!708 = !DILocation(line: 310, column: 9, scope: !698)
!709 = !DILocation(line: 311, column: 42, scope: !698)
!710 = !DILocation(line: 312, column: 29, scope: !700)
!711 = !DILocation(line: 312, column: 9, scope: !702)
!712 = !DILocation(line: 313, column: 5, scope: !702)
!713 = !DILocation(line: 314, column: 12, scope: !702)
!714 = !DILocation(line: 315, column: 12, scope: !702)
!715 = !DILocation(line: 316, column: 2, scope: !693)
!716 = distinct !DISubprogram(name: "run_test_27", scope: !8, file: !7, line: 319, type: !115, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !717)
!717 = !{!718, !720, !722, !724}
!718 = !DILocalVariable(name: "rnd", scope: !719, file: !7, line: 320, type: !15, align: 8)
!719 = distinct !DILexicalBlock(scope: !716, file: !7, line: 320, column: 5)
!720 = !DILocalVariable(name: "ret", scope: !721, file: !7, line: 321, type: !13, align: 8)
!721 = distinct !DILexicalBlock(scope: !719, file: !7, line: 321, column: 5)
!722 = !DILocalVariable(name: "expected_state", scope: !723, file: !7, line: 322, type: !19, align: 8)
!723 = distinct !DILexicalBlock(scope: !721, file: !7, line: 322, column: 5)
!724 = !DILocalVariable(name: "expected_ret", scope: !725, file: !7, line: 323, type: !13, align: 8)
!725 = distinct !DILexicalBlock(scope: !723, file: !7, line: 323, column: 5)
!726 = !DILocation(line: 320, column: 9, scope: !719)
!727 = !DILocation(line: 322, column: 9, scope: !723)
!728 = !DILocation(line: 320, column: 35, scope: !716)
!729 = !DILocation(line: 320, column: 19, scope: !716)
!730 = !DILocation(line: 321, column: 15, scope: !719)
!731 = !DILocation(line: 321, column: 9, scope: !721)
!732 = !DILocation(line: 322, column: 42, scope: !721)
!733 = !DILocation(line: 323, column: 29, scope: !723)
!734 = !DILocation(line: 323, column: 9, scope: !725)
!735 = !DILocation(line: 324, column: 5, scope: !725)
!736 = !DILocation(line: 325, column: 12, scope: !725)
!737 = !DILocation(line: 326, column: 12, scope: !725)
!738 = !DILocation(line: 327, column: 2, scope: !716)
!739 = distinct !DISubprogram(name: "run_test_28", scope: !8, file: !7, line: 330, type: !115, scopeLine: 330, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !740)
!740 = !{!741, !743, !745, !747}
!741 = !DILocalVariable(name: "rnd", scope: !742, file: !7, line: 331, type: !15, align: 8)
!742 = distinct !DILexicalBlock(scope: !739, file: !7, line: 331, column: 5)
!743 = !DILocalVariable(name: "ret", scope: !744, file: !7, line: 332, type: !13, align: 8)
!744 = distinct !DILexicalBlock(scope: !742, file: !7, line: 332, column: 5)
!745 = !DILocalVariable(name: "expected_state", scope: !746, file: !7, line: 333, type: !19, align: 8)
!746 = distinct !DILexicalBlock(scope: !744, file: !7, line: 333, column: 5)
!747 = !DILocalVariable(name: "expected_ret", scope: !748, file: !7, line: 334, type: !13, align: 8)
!748 = distinct !DILexicalBlock(scope: !746, file: !7, line: 334, column: 5)
!749 = !DILocation(line: 331, column: 9, scope: !742)
!750 = !DILocation(line: 333, column: 9, scope: !746)
!751 = !DILocation(line: 331, column: 35, scope: !739)
!752 = !DILocation(line: 331, column: 19, scope: !739)
!753 = !DILocation(line: 332, column: 15, scope: !742)
!754 = !DILocation(line: 332, column: 9, scope: !744)
!755 = !DILocation(line: 333, column: 42, scope: !744)
!756 = !DILocation(line: 334, column: 29, scope: !746)
!757 = !DILocation(line: 334, column: 9, scope: !748)
!758 = !DILocation(line: 335, column: 5, scope: !748)
!759 = !DILocation(line: 336, column: 12, scope: !748)
!760 = !DILocation(line: 337, column: 12, scope: !748)
!761 = !DILocation(line: 338, column: 2, scope: !739)
!762 = distinct !DISubprogram(name: "run_test_29", scope: !8, file: !7, line: 341, type: !115, scopeLine: 341, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !763)
!763 = !{!764, !766, !768, !770}
!764 = !DILocalVariable(name: "rnd", scope: !765, file: !7, line: 342, type: !15, align: 8)
!765 = distinct !DILexicalBlock(scope: !762, file: !7, line: 342, column: 5)
!766 = !DILocalVariable(name: "ret", scope: !767, file: !7, line: 343, type: !13, align: 8)
!767 = distinct !DILexicalBlock(scope: !765, file: !7, line: 343, column: 5)
!768 = !DILocalVariable(name: "expected_state", scope: !769, file: !7, line: 344, type: !19, align: 8)
!769 = distinct !DILexicalBlock(scope: !767, file: !7, line: 344, column: 5)
!770 = !DILocalVariable(name: "expected_ret", scope: !771, file: !7, line: 345, type: !13, align: 8)
!771 = distinct !DILexicalBlock(scope: !769, file: !7, line: 345, column: 5)
!772 = !DILocation(line: 342, column: 9, scope: !765)
!773 = !DILocation(line: 344, column: 9, scope: !769)
!774 = !DILocation(line: 342, column: 35, scope: !762)
!775 = !DILocation(line: 342, column: 19, scope: !762)
!776 = !DILocation(line: 343, column: 15, scope: !765)
!777 = !DILocation(line: 343, column: 9, scope: !767)
!778 = !DILocation(line: 344, column: 42, scope: !767)
!779 = !DILocation(line: 345, column: 29, scope: !769)
!780 = !DILocation(line: 345, column: 9, scope: !771)
!781 = !DILocation(line: 346, column: 5, scope: !771)
!782 = !DILocation(line: 347, column: 12, scope: !771)
!783 = !DILocation(line: 348, column: 12, scope: !771)
!784 = !DILocation(line: 349, column: 2, scope: !762)
!785 = distinct !DISubprogram(name: "run_test_30", scope: !8, file: !7, line: 352, type: !115, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !786)
!786 = !{!787, !789, !791, !793}
!787 = !DILocalVariable(name: "rnd", scope: !788, file: !7, line: 353, type: !15, align: 8)
!788 = distinct !DILexicalBlock(scope: !785, file: !7, line: 353, column: 5)
!789 = !DILocalVariable(name: "ret", scope: !790, file: !7, line: 354, type: !13, align: 8)
!790 = distinct !DILexicalBlock(scope: !788, file: !7, line: 354, column: 5)
!791 = !DILocalVariable(name: "expected_state", scope: !792, file: !7, line: 355, type: !19, align: 8)
!792 = distinct !DILexicalBlock(scope: !790, file: !7, line: 355, column: 5)
!793 = !DILocalVariable(name: "expected_ret", scope: !794, file: !7, line: 356, type: !13, align: 8)
!794 = distinct !DILexicalBlock(scope: !792, file: !7, line: 356, column: 5)
!795 = !DILocation(line: 353, column: 9, scope: !788)
!796 = !DILocation(line: 355, column: 9, scope: !792)
!797 = !DILocation(line: 353, column: 35, scope: !785)
!798 = !DILocation(line: 353, column: 19, scope: !785)
!799 = !DILocation(line: 354, column: 15, scope: !788)
!800 = !DILocation(line: 354, column: 9, scope: !790)
!801 = !DILocation(line: 355, column: 42, scope: !790)
!802 = !DILocation(line: 356, column: 29, scope: !792)
!803 = !DILocation(line: 356, column: 9, scope: !794)
!804 = !DILocation(line: 357, column: 5, scope: !794)
!805 = !DILocation(line: 358, column: 12, scope: !794)
!806 = !DILocation(line: 359, column: 12, scope: !794)
!807 = !DILocation(line: 360, column: 2, scope: !785)
!808 = distinct !DISubprogram(name: "run_test_31", scope: !8, file: !7, line: 363, type: !115, scopeLine: 363, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !809)
!809 = !{!810, !812, !814, !816}
!810 = !DILocalVariable(name: "rnd", scope: !811, file: !7, line: 364, type: !15, align: 8)
!811 = distinct !DILexicalBlock(scope: !808, file: !7, line: 364, column: 5)
!812 = !DILocalVariable(name: "ret", scope: !813, file: !7, line: 365, type: !13, align: 8)
!813 = distinct !DILexicalBlock(scope: !811, file: !7, line: 365, column: 5)
!814 = !DILocalVariable(name: "expected_state", scope: !815, file: !7, line: 366, type: !19, align: 8)
!815 = distinct !DILexicalBlock(scope: !813, file: !7, line: 366, column: 5)
!816 = !DILocalVariable(name: "expected_ret", scope: !817, file: !7, line: 367, type: !13, align: 8)
!817 = distinct !DILexicalBlock(scope: !815, file: !7, line: 367, column: 5)
!818 = !DILocation(line: 364, column: 9, scope: !811)
!819 = !DILocation(line: 366, column: 9, scope: !815)
!820 = !DILocation(line: 364, column: 35, scope: !808)
!821 = !DILocation(line: 364, column: 19, scope: !808)
!822 = !DILocation(line: 365, column: 15, scope: !811)
!823 = !DILocation(line: 365, column: 9, scope: !813)
!824 = !DILocation(line: 366, column: 42, scope: !813)
!825 = !DILocation(line: 367, column: 29, scope: !815)
!826 = !DILocation(line: 367, column: 9, scope: !817)
!827 = !DILocation(line: 368, column: 5, scope: !817)
!828 = !DILocation(line: 369, column: 12, scope: !817)
!829 = !DILocation(line: 370, column: 12, scope: !817)
!830 = !DILocation(line: 371, column: 2, scope: !808)
!831 = distinct !DISubprogram(name: "run_test_32", scope: !8, file: !7, line: 374, type: !115, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !832)
!832 = !{!833, !835, !837, !839}
!833 = !DILocalVariable(name: "rnd", scope: !834, file: !7, line: 375, type: !15, align: 8)
!834 = distinct !DILexicalBlock(scope: !831, file: !7, line: 375, column: 5)
!835 = !DILocalVariable(name: "ret", scope: !836, file: !7, line: 376, type: !13, align: 8)
!836 = distinct !DILexicalBlock(scope: !834, file: !7, line: 376, column: 5)
!837 = !DILocalVariable(name: "expected_state", scope: !838, file: !7, line: 377, type: !19, align: 8)
!838 = distinct !DILexicalBlock(scope: !836, file: !7, line: 377, column: 5)
!839 = !DILocalVariable(name: "expected_ret", scope: !840, file: !7, line: 378, type: !13, align: 8)
!840 = distinct !DILexicalBlock(scope: !838, file: !7, line: 378, column: 5)
!841 = !DILocation(line: 375, column: 9, scope: !834)
!842 = !DILocation(line: 377, column: 9, scope: !838)
!843 = !DILocation(line: 375, column: 35, scope: !831)
!844 = !DILocation(line: 375, column: 19, scope: !831)
!845 = !DILocation(line: 376, column: 15, scope: !834)
!846 = !DILocation(line: 376, column: 9, scope: !836)
!847 = !DILocation(line: 377, column: 42, scope: !836)
!848 = !DILocation(line: 378, column: 29, scope: !838)
!849 = !DILocation(line: 378, column: 9, scope: !840)
!850 = !DILocation(line: 379, column: 5, scope: !840)
!851 = !DILocation(line: 380, column: 12, scope: !840)
!852 = !DILocation(line: 381, column: 12, scope: !840)
!853 = !DILocation(line: 382, column: 2, scope: !831)
!854 = distinct !DISubprogram(name: "run_test_33", scope: !8, file: !7, line: 385, type: !115, scopeLine: 385, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !855)
!855 = !{!856, !858, !860, !862}
!856 = !DILocalVariable(name: "rnd", scope: !857, file: !7, line: 386, type: !15, align: 8)
!857 = distinct !DILexicalBlock(scope: !854, file: !7, line: 386, column: 5)
!858 = !DILocalVariable(name: "ret", scope: !859, file: !7, line: 387, type: !13, align: 8)
!859 = distinct !DILexicalBlock(scope: !857, file: !7, line: 387, column: 5)
!860 = !DILocalVariable(name: "expected_state", scope: !861, file: !7, line: 388, type: !19, align: 8)
!861 = distinct !DILexicalBlock(scope: !859, file: !7, line: 388, column: 5)
!862 = !DILocalVariable(name: "expected_ret", scope: !863, file: !7, line: 389, type: !13, align: 8)
!863 = distinct !DILexicalBlock(scope: !861, file: !7, line: 389, column: 5)
!864 = !DILocation(line: 386, column: 9, scope: !857)
!865 = !DILocation(line: 388, column: 9, scope: !861)
!866 = !DILocation(line: 386, column: 35, scope: !854)
!867 = !DILocation(line: 386, column: 19, scope: !854)
!868 = !DILocation(line: 387, column: 15, scope: !857)
!869 = !DILocation(line: 387, column: 9, scope: !859)
!870 = !DILocation(line: 388, column: 42, scope: !859)
!871 = !DILocation(line: 389, column: 29, scope: !861)
!872 = !DILocation(line: 389, column: 9, scope: !863)
!873 = !DILocation(line: 390, column: 5, scope: !863)
!874 = !DILocation(line: 391, column: 12, scope: !863)
!875 = !DILocation(line: 392, column: 12, scope: !863)
!876 = !DILocation(line: 393, column: 2, scope: !854)
!877 = distinct !DISubprogram(name: "run_test_34", scope: !8, file: !7, line: 396, type: !115, scopeLine: 396, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !878)
!878 = !{!879, !881, !883, !885}
!879 = !DILocalVariable(name: "rnd", scope: !880, file: !7, line: 397, type: !15, align: 8)
!880 = distinct !DILexicalBlock(scope: !877, file: !7, line: 397, column: 5)
!881 = !DILocalVariable(name: "ret", scope: !882, file: !7, line: 398, type: !13, align: 8)
!882 = distinct !DILexicalBlock(scope: !880, file: !7, line: 398, column: 5)
!883 = !DILocalVariable(name: "expected_state", scope: !884, file: !7, line: 399, type: !19, align: 8)
!884 = distinct !DILexicalBlock(scope: !882, file: !7, line: 399, column: 5)
!885 = !DILocalVariable(name: "expected_ret", scope: !886, file: !7, line: 400, type: !13, align: 8)
!886 = distinct !DILexicalBlock(scope: !884, file: !7, line: 400, column: 5)
!887 = !DILocation(line: 397, column: 9, scope: !880)
!888 = !DILocation(line: 399, column: 9, scope: !884)
!889 = !DILocation(line: 397, column: 35, scope: !877)
!890 = !DILocation(line: 397, column: 19, scope: !877)
!891 = !DILocation(line: 398, column: 15, scope: !880)
!892 = !DILocation(line: 398, column: 9, scope: !882)
!893 = !DILocation(line: 399, column: 42, scope: !882)
!894 = !DILocation(line: 400, column: 29, scope: !884)
!895 = !DILocation(line: 400, column: 9, scope: !886)
!896 = !DILocation(line: 401, column: 5, scope: !886)
!897 = !DILocation(line: 402, column: 12, scope: !886)
!898 = !DILocation(line: 403, column: 12, scope: !886)
!899 = !DILocation(line: 404, column: 2, scope: !877)
!900 = distinct !DISubprogram(name: "run_test_35", scope: !8, file: !7, line: 407, type: !115, scopeLine: 407, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !901)
!901 = !{!902, !904, !906, !908}
!902 = !DILocalVariable(name: "rnd", scope: !903, file: !7, line: 408, type: !15, align: 8)
!903 = distinct !DILexicalBlock(scope: !900, file: !7, line: 408, column: 5)
!904 = !DILocalVariable(name: "ret", scope: !905, file: !7, line: 409, type: !13, align: 8)
!905 = distinct !DILexicalBlock(scope: !903, file: !7, line: 409, column: 5)
!906 = !DILocalVariable(name: "expected_state", scope: !907, file: !7, line: 410, type: !19, align: 8)
!907 = distinct !DILexicalBlock(scope: !905, file: !7, line: 410, column: 5)
!908 = !DILocalVariable(name: "expected_ret", scope: !909, file: !7, line: 411, type: !13, align: 8)
!909 = distinct !DILexicalBlock(scope: !907, file: !7, line: 411, column: 5)
!910 = !DILocation(line: 408, column: 9, scope: !903)
!911 = !DILocation(line: 410, column: 9, scope: !907)
!912 = !DILocation(line: 408, column: 35, scope: !900)
!913 = !DILocation(line: 408, column: 19, scope: !900)
!914 = !DILocation(line: 409, column: 15, scope: !903)
!915 = !DILocation(line: 409, column: 9, scope: !905)
!916 = !DILocation(line: 410, column: 42, scope: !905)
!917 = !DILocation(line: 411, column: 29, scope: !907)
!918 = !DILocation(line: 411, column: 9, scope: !909)
!919 = !DILocation(line: 412, column: 5, scope: !909)
!920 = !DILocation(line: 413, column: 12, scope: !909)
!921 = !DILocation(line: 414, column: 12, scope: !909)
!922 = !DILocation(line: 415, column: 2, scope: !900)
!923 = distinct !DISubprogram(name: "run_test_36", scope: !8, file: !7, line: 418, type: !115, scopeLine: 418, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !924)
!924 = !{!925, !927, !929, !931}
!925 = !DILocalVariable(name: "rnd", scope: !926, file: !7, line: 419, type: !15, align: 8)
!926 = distinct !DILexicalBlock(scope: !923, file: !7, line: 419, column: 5)
!927 = !DILocalVariable(name: "ret", scope: !928, file: !7, line: 420, type: !13, align: 8)
!928 = distinct !DILexicalBlock(scope: !926, file: !7, line: 420, column: 5)
!929 = !DILocalVariable(name: "expected_state", scope: !930, file: !7, line: 421, type: !19, align: 8)
!930 = distinct !DILexicalBlock(scope: !928, file: !7, line: 421, column: 5)
!931 = !DILocalVariable(name: "expected_ret", scope: !932, file: !7, line: 422, type: !13, align: 8)
!932 = distinct !DILexicalBlock(scope: !930, file: !7, line: 422, column: 5)
!933 = !DILocation(line: 419, column: 9, scope: !926)
!934 = !DILocation(line: 421, column: 9, scope: !930)
!935 = !DILocation(line: 419, column: 35, scope: !923)
!936 = !DILocation(line: 419, column: 19, scope: !923)
!937 = !DILocation(line: 420, column: 15, scope: !926)
!938 = !DILocation(line: 420, column: 9, scope: !928)
!939 = !DILocation(line: 421, column: 42, scope: !928)
!940 = !DILocation(line: 422, column: 29, scope: !930)
!941 = !DILocation(line: 422, column: 9, scope: !932)
!942 = !DILocation(line: 423, column: 5, scope: !932)
!943 = !DILocation(line: 424, column: 12, scope: !932)
!944 = !DILocation(line: 425, column: 12, scope: !932)
!945 = !DILocation(line: 426, column: 2, scope: !923)
!946 = distinct !DISubprogram(name: "run_test_37", scope: !8, file: !7, line: 429, type: !115, scopeLine: 429, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !947)
!947 = !{!948, !950, !952, !954}
!948 = !DILocalVariable(name: "rnd", scope: !949, file: !7, line: 430, type: !15, align: 8)
!949 = distinct !DILexicalBlock(scope: !946, file: !7, line: 430, column: 5)
!950 = !DILocalVariable(name: "ret", scope: !951, file: !7, line: 431, type: !13, align: 8)
!951 = distinct !DILexicalBlock(scope: !949, file: !7, line: 431, column: 5)
!952 = !DILocalVariable(name: "expected_state", scope: !953, file: !7, line: 432, type: !19, align: 8)
!953 = distinct !DILexicalBlock(scope: !951, file: !7, line: 432, column: 5)
!954 = !DILocalVariable(name: "expected_ret", scope: !955, file: !7, line: 433, type: !13, align: 8)
!955 = distinct !DILexicalBlock(scope: !953, file: !7, line: 433, column: 5)
!956 = !DILocation(line: 430, column: 9, scope: !949)
!957 = !DILocation(line: 432, column: 9, scope: !953)
!958 = !DILocation(line: 430, column: 35, scope: !946)
!959 = !DILocation(line: 430, column: 19, scope: !946)
!960 = !DILocation(line: 431, column: 15, scope: !949)
!961 = !DILocation(line: 431, column: 9, scope: !951)
!962 = !DILocation(line: 432, column: 42, scope: !951)
!963 = !DILocation(line: 433, column: 29, scope: !953)
!964 = !DILocation(line: 433, column: 9, scope: !955)
!965 = !DILocation(line: 434, column: 5, scope: !955)
!966 = !DILocation(line: 435, column: 12, scope: !955)
!967 = !DILocation(line: 436, column: 12, scope: !955)
!968 = !DILocation(line: 437, column: 2, scope: !946)
!969 = distinct !DISubprogram(name: "run_test_38", scope: !8, file: !7, line: 440, type: !115, scopeLine: 440, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !970)
!970 = !{!971, !973, !975, !977}
!971 = !DILocalVariable(name: "rnd", scope: !972, file: !7, line: 441, type: !15, align: 8)
!972 = distinct !DILexicalBlock(scope: !969, file: !7, line: 441, column: 5)
!973 = !DILocalVariable(name: "ret", scope: !974, file: !7, line: 442, type: !13, align: 8)
!974 = distinct !DILexicalBlock(scope: !972, file: !7, line: 442, column: 5)
!975 = !DILocalVariable(name: "expected_state", scope: !976, file: !7, line: 443, type: !19, align: 8)
!976 = distinct !DILexicalBlock(scope: !974, file: !7, line: 443, column: 5)
!977 = !DILocalVariable(name: "expected_ret", scope: !978, file: !7, line: 444, type: !13, align: 8)
!978 = distinct !DILexicalBlock(scope: !976, file: !7, line: 444, column: 5)
!979 = !DILocation(line: 441, column: 9, scope: !972)
!980 = !DILocation(line: 443, column: 9, scope: !976)
!981 = !DILocation(line: 441, column: 35, scope: !969)
!982 = !DILocation(line: 441, column: 19, scope: !969)
!983 = !DILocation(line: 442, column: 15, scope: !972)
!984 = !DILocation(line: 442, column: 9, scope: !974)
!985 = !DILocation(line: 443, column: 42, scope: !974)
!986 = !DILocation(line: 444, column: 29, scope: !976)
!987 = !DILocation(line: 444, column: 9, scope: !978)
!988 = !DILocation(line: 445, column: 5, scope: !978)
!989 = !DILocation(line: 446, column: 12, scope: !978)
!990 = !DILocation(line: 447, column: 12, scope: !978)
!991 = !DILocation(line: 448, column: 2, scope: !969)
!992 = distinct !DISubprogram(name: "run_test_39", scope: !8, file: !7, line: 451, type: !115, scopeLine: 451, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !993)
!993 = !{!994, !996, !998, !1000}
!994 = !DILocalVariable(name: "rnd", scope: !995, file: !7, line: 452, type: !15, align: 8)
!995 = distinct !DILexicalBlock(scope: !992, file: !7, line: 452, column: 5)
!996 = !DILocalVariable(name: "ret", scope: !997, file: !7, line: 453, type: !13, align: 8)
!997 = distinct !DILexicalBlock(scope: !995, file: !7, line: 453, column: 5)
!998 = !DILocalVariable(name: "expected_state", scope: !999, file: !7, line: 454, type: !19, align: 8)
!999 = distinct !DILexicalBlock(scope: !997, file: !7, line: 454, column: 5)
!1000 = !DILocalVariable(name: "expected_ret", scope: !1001, file: !7, line: 455, type: !13, align: 8)
!1001 = distinct !DILexicalBlock(scope: !999, file: !7, line: 455, column: 5)
!1002 = !DILocation(line: 452, column: 9, scope: !995)
!1003 = !DILocation(line: 454, column: 9, scope: !999)
!1004 = !DILocation(line: 452, column: 35, scope: !992)
!1005 = !DILocation(line: 452, column: 19, scope: !992)
!1006 = !DILocation(line: 453, column: 15, scope: !995)
!1007 = !DILocation(line: 453, column: 9, scope: !997)
!1008 = !DILocation(line: 454, column: 42, scope: !997)
!1009 = !DILocation(line: 455, column: 29, scope: !999)
!1010 = !DILocation(line: 455, column: 9, scope: !1001)
!1011 = !DILocation(line: 456, column: 5, scope: !1001)
!1012 = !DILocation(line: 457, column: 12, scope: !1001)
!1013 = !DILocation(line: 458, column: 12, scope: !1001)
!1014 = !DILocation(line: 459, column: 2, scope: !992)
!1015 = distinct !DISubprogram(name: "run_test_40", scope: !8, file: !7, line: 462, type: !115, scopeLine: 462, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !1016)
!1016 = !{!1017, !1019, !1021, !1023}
!1017 = !DILocalVariable(name: "rnd", scope: !1018, file: !7, line: 463, type: !15, align: 8)
!1018 = distinct !DILexicalBlock(scope: !1015, file: !7, line: 463, column: 5)
!1019 = !DILocalVariable(name: "ret", scope: !1020, file: !7, line: 464, type: !13, align: 8)
!1020 = distinct !DILexicalBlock(scope: !1018, file: !7, line: 464, column: 5)
!1021 = !DILocalVariable(name: "expected_state", scope: !1022, file: !7, line: 465, type: !19, align: 8)
!1022 = distinct !DILexicalBlock(scope: !1020, file: !7, line: 465, column: 5)
!1023 = !DILocalVariable(name: "expected_ret", scope: !1024, file: !7, line: 466, type: !13, align: 8)
!1024 = distinct !DILexicalBlock(scope: !1022, file: !7, line: 466, column: 5)
!1025 = !DILocation(line: 463, column: 9, scope: !1018)
!1026 = !DILocation(line: 465, column: 9, scope: !1022)
!1027 = !DILocation(line: 463, column: 35, scope: !1015)
!1028 = !DILocation(line: 463, column: 19, scope: !1015)
!1029 = !DILocation(line: 464, column: 15, scope: !1018)
!1030 = !DILocation(line: 464, column: 9, scope: !1020)
!1031 = !DILocation(line: 465, column: 42, scope: !1020)
!1032 = !DILocation(line: 466, column: 29, scope: !1022)
!1033 = !DILocation(line: 466, column: 9, scope: !1024)
!1034 = !DILocation(line: 467, column: 5, scope: !1024)
!1035 = !DILocation(line: 468, column: 12, scope: !1024)
!1036 = !DILocation(line: 469, column: 12, scope: !1024)
!1037 = !DILocation(line: 470, column: 2, scope: !1015)
!1038 = distinct !DISubprogram(name: "run_test_41", scope: !8, file: !7, line: 473, type: !115, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !1039)
!1039 = !{!1040, !1042, !1044, !1046}
!1040 = !DILocalVariable(name: "rnd", scope: !1041, file: !7, line: 474, type: !15, align: 8)
!1041 = distinct !DILexicalBlock(scope: !1038, file: !7, line: 474, column: 5)
!1042 = !DILocalVariable(name: "ret", scope: !1043, file: !7, line: 475, type: !13, align: 8)
!1043 = distinct !DILexicalBlock(scope: !1041, file: !7, line: 475, column: 5)
!1044 = !DILocalVariable(name: "expected_state", scope: !1045, file: !7, line: 476, type: !19, align: 8)
!1045 = distinct !DILexicalBlock(scope: !1043, file: !7, line: 476, column: 5)
!1046 = !DILocalVariable(name: "expected_ret", scope: !1047, file: !7, line: 477, type: !13, align: 8)
!1047 = distinct !DILexicalBlock(scope: !1045, file: !7, line: 477, column: 5)
!1048 = !DILocation(line: 474, column: 9, scope: !1041)
!1049 = !DILocation(line: 476, column: 9, scope: !1045)
!1050 = !DILocation(line: 474, column: 35, scope: !1038)
!1051 = !DILocation(line: 474, column: 19, scope: !1038)
!1052 = !DILocation(line: 475, column: 15, scope: !1041)
!1053 = !DILocation(line: 475, column: 9, scope: !1043)
!1054 = !DILocation(line: 476, column: 42, scope: !1043)
!1055 = !DILocation(line: 477, column: 29, scope: !1045)
!1056 = !DILocation(line: 477, column: 9, scope: !1047)
!1057 = !DILocation(line: 478, column: 5, scope: !1047)
!1058 = !DILocation(line: 479, column: 12, scope: !1047)
!1059 = !DILocation(line: 480, column: 12, scope: !1047)
!1060 = !DILocation(line: 481, column: 2, scope: !1038)
!1061 = distinct !DISubprogram(name: "run_test_42", scope: !8, file: !7, line: 484, type: !115, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !1062)
!1062 = !{!1063, !1065, !1067, !1069}
!1063 = !DILocalVariable(name: "rnd", scope: !1064, file: !7, line: 485, type: !15, align: 8)
!1064 = distinct !DILexicalBlock(scope: !1061, file: !7, line: 485, column: 5)
!1065 = !DILocalVariable(name: "ret", scope: !1066, file: !7, line: 486, type: !13, align: 8)
!1066 = distinct !DILexicalBlock(scope: !1064, file: !7, line: 486, column: 5)
!1067 = !DILocalVariable(name: "expected_state", scope: !1068, file: !7, line: 487, type: !19, align: 8)
!1068 = distinct !DILexicalBlock(scope: !1066, file: !7, line: 487, column: 5)
!1069 = !DILocalVariable(name: "expected_ret", scope: !1070, file: !7, line: 488, type: !13, align: 8)
!1070 = distinct !DILexicalBlock(scope: !1068, file: !7, line: 488, column: 5)
!1071 = !DILocation(line: 485, column: 9, scope: !1064)
!1072 = !DILocation(line: 487, column: 9, scope: !1068)
!1073 = !DILocation(line: 485, column: 35, scope: !1061)
!1074 = !DILocation(line: 485, column: 19, scope: !1061)
!1075 = !DILocation(line: 486, column: 15, scope: !1064)
!1076 = !DILocation(line: 486, column: 9, scope: !1066)
!1077 = !DILocation(line: 487, column: 42, scope: !1066)
!1078 = !DILocation(line: 488, column: 29, scope: !1068)
!1079 = !DILocation(line: 488, column: 9, scope: !1070)
!1080 = !DILocation(line: 489, column: 5, scope: !1070)
!1081 = !DILocation(line: 490, column: 12, scope: !1070)
!1082 = !DILocation(line: 491, column: 12, scope: !1070)
!1083 = !DILocation(line: 492, column: 2, scope: !1061)
!1084 = distinct !DISubprogram(name: "run_test_43", scope: !8, file: !7, line: 495, type: !115, scopeLine: 495, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !1085)
!1085 = !{!1086, !1088, !1090, !1092}
!1086 = !DILocalVariable(name: "rnd", scope: !1087, file: !7, line: 496, type: !15, align: 8)
!1087 = distinct !DILexicalBlock(scope: !1084, file: !7, line: 496, column: 5)
!1088 = !DILocalVariable(name: "ret", scope: !1089, file: !7, line: 497, type: !13, align: 8)
!1089 = distinct !DILexicalBlock(scope: !1087, file: !7, line: 497, column: 5)
!1090 = !DILocalVariable(name: "expected_state", scope: !1091, file: !7, line: 498, type: !19, align: 8)
!1091 = distinct !DILexicalBlock(scope: !1089, file: !7, line: 498, column: 5)
!1092 = !DILocalVariable(name: "expected_ret", scope: !1093, file: !7, line: 499, type: !13, align: 8)
!1093 = distinct !DILexicalBlock(scope: !1091, file: !7, line: 499, column: 5)
!1094 = !DILocation(line: 496, column: 9, scope: !1087)
!1095 = !DILocation(line: 498, column: 9, scope: !1091)
!1096 = !DILocation(line: 496, column: 35, scope: !1084)
!1097 = !DILocation(line: 496, column: 19, scope: !1084)
!1098 = !DILocation(line: 497, column: 15, scope: !1087)
!1099 = !DILocation(line: 497, column: 9, scope: !1089)
!1100 = !DILocation(line: 498, column: 42, scope: !1089)
!1101 = !DILocation(line: 499, column: 29, scope: !1091)
!1102 = !DILocation(line: 499, column: 9, scope: !1093)
!1103 = !DILocation(line: 500, column: 5, scope: !1093)
!1104 = !DILocation(line: 501, column: 12, scope: !1093)
!1105 = !DILocation(line: 502, column: 12, scope: !1093)
!1106 = !DILocation(line: 503, column: 2, scope: !1084)
!1107 = distinct !DISubprogram(name: "run_test_44", scope: !8, file: !7, line: 506, type: !115, scopeLine: 506, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !1108)
!1108 = !{!1109, !1111, !1113, !1115}
!1109 = !DILocalVariable(name: "rnd", scope: !1110, file: !7, line: 507, type: !15, align: 8)
!1110 = distinct !DILexicalBlock(scope: !1107, file: !7, line: 507, column: 5)
!1111 = !DILocalVariable(name: "ret", scope: !1112, file: !7, line: 508, type: !13, align: 8)
!1112 = distinct !DILexicalBlock(scope: !1110, file: !7, line: 508, column: 5)
!1113 = !DILocalVariable(name: "expected_state", scope: !1114, file: !7, line: 509, type: !19, align: 8)
!1114 = distinct !DILexicalBlock(scope: !1112, file: !7, line: 509, column: 5)
!1115 = !DILocalVariable(name: "expected_ret", scope: !1116, file: !7, line: 510, type: !13, align: 8)
!1116 = distinct !DILexicalBlock(scope: !1114, file: !7, line: 510, column: 5)
!1117 = !DILocation(line: 507, column: 9, scope: !1110)
!1118 = !DILocation(line: 509, column: 9, scope: !1114)
!1119 = !DILocation(line: 507, column: 35, scope: !1107)
!1120 = !DILocation(line: 507, column: 19, scope: !1107)
!1121 = !DILocation(line: 508, column: 15, scope: !1110)
!1122 = !DILocation(line: 508, column: 9, scope: !1112)
!1123 = !DILocation(line: 509, column: 42, scope: !1112)
!1124 = !DILocation(line: 510, column: 29, scope: !1114)
!1125 = !DILocation(line: 510, column: 9, scope: !1116)
!1126 = !DILocation(line: 511, column: 5, scope: !1116)
!1127 = !DILocation(line: 512, column: 12, scope: !1116)
!1128 = !DILocation(line: 513, column: 12, scope: !1116)
!1129 = !DILocation(line: 514, column: 2, scope: !1107)
!1130 = distinct !DISubprogram(name: "run_test_45", scope: !8, file: !7, line: 517, type: !115, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !1131)
!1131 = !{!1132, !1134, !1136, !1138}
!1132 = !DILocalVariable(name: "rnd", scope: !1133, file: !7, line: 518, type: !15, align: 8)
!1133 = distinct !DILexicalBlock(scope: !1130, file: !7, line: 518, column: 5)
!1134 = !DILocalVariable(name: "ret", scope: !1135, file: !7, line: 519, type: !13, align: 8)
!1135 = distinct !DILexicalBlock(scope: !1133, file: !7, line: 519, column: 5)
!1136 = !DILocalVariable(name: "expected_state", scope: !1137, file: !7, line: 520, type: !19, align: 8)
!1137 = distinct !DILexicalBlock(scope: !1135, file: !7, line: 520, column: 5)
!1138 = !DILocalVariable(name: "expected_ret", scope: !1139, file: !7, line: 521, type: !13, align: 8)
!1139 = distinct !DILexicalBlock(scope: !1137, file: !7, line: 521, column: 5)
!1140 = !DILocation(line: 518, column: 9, scope: !1133)
!1141 = !DILocation(line: 520, column: 9, scope: !1137)
!1142 = !DILocation(line: 518, column: 35, scope: !1130)
!1143 = !DILocation(line: 518, column: 19, scope: !1130)
!1144 = !DILocation(line: 519, column: 15, scope: !1133)
!1145 = !DILocation(line: 519, column: 9, scope: !1135)
!1146 = !DILocation(line: 520, column: 42, scope: !1135)
!1147 = !DILocation(line: 521, column: 29, scope: !1137)
!1148 = !DILocation(line: 521, column: 9, scope: !1139)
!1149 = !DILocation(line: 522, column: 5, scope: !1139)
!1150 = !DILocation(line: 523, column: 12, scope: !1139)
!1151 = !DILocation(line: 524, column: 12, scope: !1139)
!1152 = !DILocation(line: 525, column: 2, scope: !1130)
!1153 = distinct !DISubprogram(name: "run_test_46", scope: !8, file: !7, line: 528, type: !115, scopeLine: 528, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !1154)
!1154 = !{!1155, !1157, !1159, !1161}
!1155 = !DILocalVariable(name: "rnd", scope: !1156, file: !7, line: 529, type: !15, align: 8)
!1156 = distinct !DILexicalBlock(scope: !1153, file: !7, line: 529, column: 5)
!1157 = !DILocalVariable(name: "ret", scope: !1158, file: !7, line: 530, type: !13, align: 8)
!1158 = distinct !DILexicalBlock(scope: !1156, file: !7, line: 530, column: 5)
!1159 = !DILocalVariable(name: "expected_state", scope: !1160, file: !7, line: 531, type: !19, align: 8)
!1160 = distinct !DILexicalBlock(scope: !1158, file: !7, line: 531, column: 5)
!1161 = !DILocalVariable(name: "expected_ret", scope: !1162, file: !7, line: 532, type: !13, align: 8)
!1162 = distinct !DILexicalBlock(scope: !1160, file: !7, line: 532, column: 5)
!1163 = !DILocation(line: 529, column: 9, scope: !1156)
!1164 = !DILocation(line: 531, column: 9, scope: !1160)
!1165 = !DILocation(line: 529, column: 35, scope: !1153)
!1166 = !DILocation(line: 529, column: 19, scope: !1153)
!1167 = !DILocation(line: 530, column: 15, scope: !1156)
!1168 = !DILocation(line: 530, column: 9, scope: !1158)
!1169 = !DILocation(line: 531, column: 42, scope: !1158)
!1170 = !DILocation(line: 532, column: 29, scope: !1160)
!1171 = !DILocation(line: 532, column: 9, scope: !1162)
!1172 = !DILocation(line: 533, column: 5, scope: !1162)
!1173 = !DILocation(line: 534, column: 12, scope: !1162)
!1174 = !DILocation(line: 535, column: 12, scope: !1162)
!1175 = !DILocation(line: 536, column: 2, scope: !1153)
!1176 = distinct !DISubprogram(name: "run_test_47", scope: !8, file: !7, line: 539, type: !115, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !1177)
!1177 = !{!1178, !1180, !1182, !1184}
!1178 = !DILocalVariable(name: "rnd", scope: !1179, file: !7, line: 540, type: !15, align: 8)
!1179 = distinct !DILexicalBlock(scope: !1176, file: !7, line: 540, column: 5)
!1180 = !DILocalVariable(name: "ret", scope: !1181, file: !7, line: 541, type: !13, align: 8)
!1181 = distinct !DILexicalBlock(scope: !1179, file: !7, line: 541, column: 5)
!1182 = !DILocalVariable(name: "expected_state", scope: !1183, file: !7, line: 542, type: !19, align: 8)
!1183 = distinct !DILexicalBlock(scope: !1181, file: !7, line: 542, column: 5)
!1184 = !DILocalVariable(name: "expected_ret", scope: !1185, file: !7, line: 543, type: !13, align: 8)
!1185 = distinct !DILexicalBlock(scope: !1183, file: !7, line: 543, column: 5)
!1186 = !DILocation(line: 540, column: 9, scope: !1179)
!1187 = !DILocation(line: 542, column: 9, scope: !1183)
!1188 = !DILocation(line: 540, column: 35, scope: !1176)
!1189 = !DILocation(line: 540, column: 19, scope: !1176)
!1190 = !DILocation(line: 541, column: 15, scope: !1179)
!1191 = !DILocation(line: 541, column: 9, scope: !1181)
!1192 = !DILocation(line: 542, column: 42, scope: !1181)
!1193 = !DILocation(line: 543, column: 29, scope: !1183)
!1194 = !DILocation(line: 543, column: 9, scope: !1185)
!1195 = !DILocation(line: 544, column: 5, scope: !1185)
!1196 = !DILocation(line: 545, column: 12, scope: !1185)
!1197 = !DILocation(line: 546, column: 12, scope: !1185)
!1198 = !DILocation(line: 547, column: 2, scope: !1176)
!1199 = distinct !DISubprogram(name: "run_test_48", scope: !8, file: !7, line: 550, type: !115, scopeLine: 550, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !1200)
!1200 = !{!1201, !1203, !1205, !1207}
!1201 = !DILocalVariable(name: "rnd", scope: !1202, file: !7, line: 551, type: !15, align: 8)
!1202 = distinct !DILexicalBlock(scope: !1199, file: !7, line: 551, column: 5)
!1203 = !DILocalVariable(name: "ret", scope: !1204, file: !7, line: 552, type: !13, align: 8)
!1204 = distinct !DILexicalBlock(scope: !1202, file: !7, line: 552, column: 5)
!1205 = !DILocalVariable(name: "expected_state", scope: !1206, file: !7, line: 553, type: !19, align: 8)
!1206 = distinct !DILexicalBlock(scope: !1204, file: !7, line: 553, column: 5)
!1207 = !DILocalVariable(name: "expected_ret", scope: !1208, file: !7, line: 554, type: !13, align: 8)
!1208 = distinct !DILexicalBlock(scope: !1206, file: !7, line: 554, column: 5)
!1209 = !DILocation(line: 551, column: 9, scope: !1202)
!1210 = !DILocation(line: 553, column: 9, scope: !1206)
!1211 = !DILocation(line: 551, column: 35, scope: !1199)
!1212 = !DILocation(line: 551, column: 19, scope: !1199)
!1213 = !DILocation(line: 552, column: 15, scope: !1202)
!1214 = !DILocation(line: 552, column: 9, scope: !1204)
!1215 = !DILocation(line: 553, column: 42, scope: !1204)
!1216 = !DILocation(line: 554, column: 29, scope: !1206)
!1217 = !DILocation(line: 554, column: 9, scope: !1208)
!1218 = !DILocation(line: 555, column: 5, scope: !1208)
!1219 = !DILocation(line: 556, column: 12, scope: !1208)
!1220 = !DILocation(line: 557, column: 12, scope: !1208)
!1221 = !DILocation(line: 558, column: 2, scope: !1199)
!1222 = distinct !DISubprogram(name: "run_test_49", scope: !8, file: !7, line: 561, type: !115, scopeLine: 561, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !1223)
!1223 = !{!1224, !1226, !1228, !1230}
!1224 = !DILocalVariable(name: "rnd", scope: !1225, file: !7, line: 562, type: !15, align: 8)
!1225 = distinct !DILexicalBlock(scope: !1222, file: !7, line: 562, column: 5)
!1226 = !DILocalVariable(name: "ret", scope: !1227, file: !7, line: 563, type: !13, align: 8)
!1227 = distinct !DILexicalBlock(scope: !1225, file: !7, line: 563, column: 5)
!1228 = !DILocalVariable(name: "expected_state", scope: !1229, file: !7, line: 564, type: !19, align: 8)
!1229 = distinct !DILexicalBlock(scope: !1227, file: !7, line: 564, column: 5)
!1230 = !DILocalVariable(name: "expected_ret", scope: !1231, file: !7, line: 565, type: !13, align: 8)
!1231 = distinct !DILexicalBlock(scope: !1229, file: !7, line: 565, column: 5)
!1232 = !DILocation(line: 562, column: 9, scope: !1225)
!1233 = !DILocation(line: 564, column: 9, scope: !1229)
!1234 = !DILocation(line: 562, column: 35, scope: !1222)
!1235 = !DILocation(line: 562, column: 19, scope: !1222)
!1236 = !DILocation(line: 563, column: 15, scope: !1225)
!1237 = !DILocation(line: 563, column: 9, scope: !1227)
!1238 = !DILocation(line: 564, column: 42, scope: !1227)
!1239 = !DILocation(line: 565, column: 29, scope: !1229)
!1240 = !DILocation(line: 565, column: 9, scope: !1231)
!1241 = !DILocation(line: 566, column: 5, scope: !1231)
!1242 = !DILocation(line: 567, column: 12, scope: !1231)
!1243 = !DILocation(line: 568, column: 12, scope: !1231)
!1244 = !DILocation(line: 569, column: 2, scope: !1222)
!1245 = distinct !DISubprogram(name: "run_test_50", scope: !8, file: !7, line: 572, type: !115, scopeLine: 572, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !1246)
!1246 = !{!1247, !1249, !1251, !1253}
!1247 = !DILocalVariable(name: "rnd", scope: !1248, file: !7, line: 573, type: !15, align: 8)
!1248 = distinct !DILexicalBlock(scope: !1245, file: !7, line: 573, column: 5)
!1249 = !DILocalVariable(name: "ret", scope: !1250, file: !7, line: 574, type: !13, align: 8)
!1250 = distinct !DILexicalBlock(scope: !1248, file: !7, line: 574, column: 5)
!1251 = !DILocalVariable(name: "expected_state", scope: !1252, file: !7, line: 575, type: !19, align: 8)
!1252 = distinct !DILexicalBlock(scope: !1250, file: !7, line: 575, column: 5)
!1253 = !DILocalVariable(name: "expected_ret", scope: !1254, file: !7, line: 576, type: !13, align: 8)
!1254 = distinct !DILexicalBlock(scope: !1252, file: !7, line: 576, column: 5)
!1255 = !DILocation(line: 573, column: 9, scope: !1248)
!1256 = !DILocation(line: 575, column: 9, scope: !1252)
!1257 = !DILocation(line: 573, column: 35, scope: !1245)
!1258 = !DILocation(line: 573, column: 19, scope: !1245)
!1259 = !DILocation(line: 574, column: 15, scope: !1248)
!1260 = !DILocation(line: 574, column: 9, scope: !1250)
!1261 = !DILocation(line: 575, column: 42, scope: !1250)
!1262 = !DILocation(line: 576, column: 29, scope: !1252)
!1263 = !DILocation(line: 576, column: 9, scope: !1254)
!1264 = !DILocation(line: 577, column: 5, scope: !1254)
!1265 = !DILocation(line: 578, column: 12, scope: !1254)
!1266 = !DILocation(line: 579, column: 12, scope: !1254)
!1267 = !DILocation(line: 580, column: 2, scope: !1245)
!1268 = distinct !DISubprogram(name: "run_test_51", scope: !8, file: !7, line: 583, type: !115, scopeLine: 583, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !1269)
!1269 = !{!1270, !1272, !1274, !1276}
!1270 = !DILocalVariable(name: "rnd", scope: !1271, file: !7, line: 584, type: !15, align: 8)
!1271 = distinct !DILexicalBlock(scope: !1268, file: !7, line: 584, column: 5)
!1272 = !DILocalVariable(name: "ret", scope: !1273, file: !7, line: 585, type: !13, align: 8)
!1273 = distinct !DILexicalBlock(scope: !1271, file: !7, line: 585, column: 5)
!1274 = !DILocalVariable(name: "expected_state", scope: !1275, file: !7, line: 586, type: !19, align: 8)
!1275 = distinct !DILexicalBlock(scope: !1273, file: !7, line: 586, column: 5)
!1276 = !DILocalVariable(name: "expected_ret", scope: !1277, file: !7, line: 587, type: !13, align: 8)
!1277 = distinct !DILexicalBlock(scope: !1275, file: !7, line: 587, column: 5)
!1278 = !DILocation(line: 584, column: 9, scope: !1271)
!1279 = !DILocation(line: 586, column: 9, scope: !1275)
!1280 = !DILocation(line: 584, column: 35, scope: !1268)
!1281 = !DILocation(line: 584, column: 19, scope: !1268)
!1282 = !DILocation(line: 585, column: 15, scope: !1271)
!1283 = !DILocation(line: 585, column: 9, scope: !1273)
!1284 = !DILocation(line: 586, column: 42, scope: !1273)
!1285 = !DILocation(line: 587, column: 29, scope: !1275)
!1286 = !DILocation(line: 587, column: 9, scope: !1277)
!1287 = !DILocation(line: 588, column: 5, scope: !1277)
!1288 = !DILocation(line: 589, column: 12, scope: !1277)
!1289 = !DILocation(line: 590, column: 12, scope: !1277)
!1290 = !DILocation(line: 591, column: 2, scope: !1268)
!1291 = distinct !DISubprogram(name: "run_test_52", scope: !8, file: !7, line: 594, type: !115, scopeLine: 594, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !1292)
!1292 = !{!1293, !1295, !1297, !1299}
!1293 = !DILocalVariable(name: "rnd", scope: !1294, file: !7, line: 595, type: !15, align: 8)
!1294 = distinct !DILexicalBlock(scope: !1291, file: !7, line: 595, column: 5)
!1295 = !DILocalVariable(name: "ret", scope: !1296, file: !7, line: 596, type: !13, align: 8)
!1296 = distinct !DILexicalBlock(scope: !1294, file: !7, line: 596, column: 5)
!1297 = !DILocalVariable(name: "expected_state", scope: !1298, file: !7, line: 597, type: !19, align: 8)
!1298 = distinct !DILexicalBlock(scope: !1296, file: !7, line: 597, column: 5)
!1299 = !DILocalVariable(name: "expected_ret", scope: !1300, file: !7, line: 598, type: !13, align: 8)
!1300 = distinct !DILexicalBlock(scope: !1298, file: !7, line: 598, column: 5)
!1301 = !DILocation(line: 595, column: 9, scope: !1294)
!1302 = !DILocation(line: 597, column: 9, scope: !1298)
!1303 = !DILocation(line: 595, column: 35, scope: !1291)
!1304 = !DILocation(line: 595, column: 19, scope: !1291)
!1305 = !DILocation(line: 596, column: 15, scope: !1294)
!1306 = !DILocation(line: 596, column: 9, scope: !1296)
!1307 = !DILocation(line: 597, column: 42, scope: !1296)
!1308 = !DILocation(line: 598, column: 29, scope: !1298)
!1309 = !DILocation(line: 598, column: 9, scope: !1300)
!1310 = !DILocation(line: 599, column: 5, scope: !1300)
!1311 = !DILocation(line: 600, column: 12, scope: !1300)
!1312 = !DILocation(line: 601, column: 12, scope: !1300)
!1313 = !DILocation(line: 602, column: 2, scope: !1291)
!1314 = distinct !DISubprogram(name: "run_test_53", scope: !8, file: !7, line: 605, type: !115, scopeLine: 605, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !1315)
!1315 = !{!1316, !1318, !1320, !1322}
!1316 = !DILocalVariable(name: "rnd", scope: !1317, file: !7, line: 606, type: !15, align: 8)
!1317 = distinct !DILexicalBlock(scope: !1314, file: !7, line: 606, column: 5)
!1318 = !DILocalVariable(name: "ret", scope: !1319, file: !7, line: 607, type: !13, align: 8)
!1319 = distinct !DILexicalBlock(scope: !1317, file: !7, line: 607, column: 5)
!1320 = !DILocalVariable(name: "expected_state", scope: !1321, file: !7, line: 608, type: !19, align: 8)
!1321 = distinct !DILexicalBlock(scope: !1319, file: !7, line: 608, column: 5)
!1322 = !DILocalVariable(name: "expected_ret", scope: !1323, file: !7, line: 609, type: !13, align: 8)
!1323 = distinct !DILexicalBlock(scope: !1321, file: !7, line: 609, column: 5)
!1324 = !DILocation(line: 606, column: 9, scope: !1317)
!1325 = !DILocation(line: 608, column: 9, scope: !1321)
!1326 = !DILocation(line: 606, column: 35, scope: !1314)
!1327 = !DILocation(line: 606, column: 19, scope: !1314)
!1328 = !DILocation(line: 607, column: 15, scope: !1317)
!1329 = !DILocation(line: 607, column: 9, scope: !1319)
!1330 = !DILocation(line: 608, column: 42, scope: !1319)
!1331 = !DILocation(line: 609, column: 29, scope: !1321)
!1332 = !DILocation(line: 609, column: 9, scope: !1323)
!1333 = !DILocation(line: 610, column: 5, scope: !1323)
!1334 = !DILocation(line: 611, column: 12, scope: !1323)
!1335 = !DILocation(line: 612, column: 12, scope: !1323)
!1336 = !DILocation(line: 613, column: 2, scope: !1314)
!1337 = distinct !DISubprogram(name: "run_test_54", scope: !8, file: !7, line: 616, type: !115, scopeLine: 616, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !1338)
!1338 = !{!1339, !1341, !1343, !1345}
!1339 = !DILocalVariable(name: "rnd", scope: !1340, file: !7, line: 617, type: !15, align: 8)
!1340 = distinct !DILexicalBlock(scope: !1337, file: !7, line: 617, column: 5)
!1341 = !DILocalVariable(name: "ret", scope: !1342, file: !7, line: 618, type: !13, align: 8)
!1342 = distinct !DILexicalBlock(scope: !1340, file: !7, line: 618, column: 5)
!1343 = !DILocalVariable(name: "expected_state", scope: !1344, file: !7, line: 619, type: !19, align: 8)
!1344 = distinct !DILexicalBlock(scope: !1342, file: !7, line: 619, column: 5)
!1345 = !DILocalVariable(name: "expected_ret", scope: !1346, file: !7, line: 620, type: !13, align: 8)
!1346 = distinct !DILexicalBlock(scope: !1344, file: !7, line: 620, column: 5)
!1347 = !DILocation(line: 617, column: 9, scope: !1340)
!1348 = !DILocation(line: 619, column: 9, scope: !1344)
!1349 = !DILocation(line: 617, column: 35, scope: !1337)
!1350 = !DILocation(line: 617, column: 19, scope: !1337)
!1351 = !DILocation(line: 618, column: 15, scope: !1340)
!1352 = !DILocation(line: 618, column: 9, scope: !1342)
!1353 = !DILocation(line: 619, column: 42, scope: !1342)
!1354 = !DILocation(line: 620, column: 29, scope: !1344)
!1355 = !DILocation(line: 620, column: 9, scope: !1346)
!1356 = !DILocation(line: 621, column: 5, scope: !1346)
!1357 = !DILocation(line: 622, column: 12, scope: !1346)
!1358 = !DILocation(line: 623, column: 12, scope: !1346)
!1359 = !DILocation(line: 624, column: 2, scope: !1337)
!1360 = distinct !DISubprogram(name: "run_test_55", scope: !8, file: !7, line: 627, type: !115, scopeLine: 627, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !1361)
!1361 = !{!1362, !1364, !1366, !1368}
!1362 = !DILocalVariable(name: "rnd", scope: !1363, file: !7, line: 628, type: !15, align: 8)
!1363 = distinct !DILexicalBlock(scope: !1360, file: !7, line: 628, column: 5)
!1364 = !DILocalVariable(name: "ret", scope: !1365, file: !7, line: 629, type: !13, align: 8)
!1365 = distinct !DILexicalBlock(scope: !1363, file: !7, line: 629, column: 5)
!1366 = !DILocalVariable(name: "expected_state", scope: !1367, file: !7, line: 630, type: !19, align: 8)
!1367 = distinct !DILexicalBlock(scope: !1365, file: !7, line: 630, column: 5)
!1368 = !DILocalVariable(name: "expected_ret", scope: !1369, file: !7, line: 631, type: !13, align: 8)
!1369 = distinct !DILexicalBlock(scope: !1367, file: !7, line: 631, column: 5)
!1370 = !DILocation(line: 628, column: 9, scope: !1363)
!1371 = !DILocation(line: 630, column: 9, scope: !1367)
!1372 = !DILocation(line: 628, column: 35, scope: !1360)
!1373 = !DILocation(line: 628, column: 19, scope: !1360)
!1374 = !DILocation(line: 629, column: 15, scope: !1363)
!1375 = !DILocation(line: 629, column: 9, scope: !1365)
!1376 = !DILocation(line: 630, column: 42, scope: !1365)
!1377 = !DILocation(line: 631, column: 29, scope: !1367)
!1378 = !DILocation(line: 631, column: 9, scope: !1369)
!1379 = !DILocation(line: 632, column: 5, scope: !1369)
!1380 = !DILocation(line: 633, column: 12, scope: !1369)
!1381 = !DILocation(line: 634, column: 12, scope: !1369)
!1382 = !DILocation(line: 635, column: 2, scope: !1360)
!1383 = distinct !DISubprogram(name: "run_test_56", scope: !8, file: !7, line: 638, type: !115, scopeLine: 638, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !1384)
!1384 = !{!1385, !1387, !1389, !1391}
!1385 = !DILocalVariable(name: "rnd", scope: !1386, file: !7, line: 639, type: !15, align: 8)
!1386 = distinct !DILexicalBlock(scope: !1383, file: !7, line: 639, column: 5)
!1387 = !DILocalVariable(name: "ret", scope: !1388, file: !7, line: 640, type: !13, align: 8)
!1388 = distinct !DILexicalBlock(scope: !1386, file: !7, line: 640, column: 5)
!1389 = !DILocalVariable(name: "expected_state", scope: !1390, file: !7, line: 641, type: !19, align: 8)
!1390 = distinct !DILexicalBlock(scope: !1388, file: !7, line: 641, column: 5)
!1391 = !DILocalVariable(name: "expected_ret", scope: !1392, file: !7, line: 642, type: !13, align: 8)
!1392 = distinct !DILexicalBlock(scope: !1390, file: !7, line: 642, column: 5)
!1393 = !DILocation(line: 639, column: 9, scope: !1386)
!1394 = !DILocation(line: 641, column: 9, scope: !1390)
!1395 = !DILocation(line: 639, column: 35, scope: !1383)
!1396 = !DILocation(line: 639, column: 19, scope: !1383)
!1397 = !DILocation(line: 640, column: 15, scope: !1386)
!1398 = !DILocation(line: 640, column: 9, scope: !1388)
!1399 = !DILocation(line: 641, column: 42, scope: !1388)
!1400 = !DILocation(line: 642, column: 29, scope: !1390)
!1401 = !DILocation(line: 642, column: 9, scope: !1392)
!1402 = !DILocation(line: 643, column: 5, scope: !1392)
!1403 = !DILocation(line: 644, column: 12, scope: !1392)
!1404 = !DILocation(line: 645, column: 12, scope: !1392)
!1405 = !DILocation(line: 646, column: 2, scope: !1383)
!1406 = distinct !DISubprogram(name: "run_test_57", scope: !8, file: !7, line: 649, type: !115, scopeLine: 649, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !1407)
!1407 = !{!1408, !1410, !1412, !1414}
!1408 = !DILocalVariable(name: "rnd", scope: !1409, file: !7, line: 650, type: !15, align: 8)
!1409 = distinct !DILexicalBlock(scope: !1406, file: !7, line: 650, column: 5)
!1410 = !DILocalVariable(name: "ret", scope: !1411, file: !7, line: 651, type: !13, align: 8)
!1411 = distinct !DILexicalBlock(scope: !1409, file: !7, line: 651, column: 5)
!1412 = !DILocalVariable(name: "expected_state", scope: !1413, file: !7, line: 652, type: !19, align: 8)
!1413 = distinct !DILexicalBlock(scope: !1411, file: !7, line: 652, column: 5)
!1414 = !DILocalVariable(name: "expected_ret", scope: !1415, file: !7, line: 653, type: !13, align: 8)
!1415 = distinct !DILexicalBlock(scope: !1413, file: !7, line: 653, column: 5)
!1416 = !DILocation(line: 650, column: 9, scope: !1409)
!1417 = !DILocation(line: 652, column: 9, scope: !1413)
!1418 = !DILocation(line: 650, column: 35, scope: !1406)
!1419 = !DILocation(line: 650, column: 19, scope: !1406)
!1420 = !DILocation(line: 651, column: 15, scope: !1409)
!1421 = !DILocation(line: 651, column: 9, scope: !1411)
!1422 = !DILocation(line: 652, column: 42, scope: !1411)
!1423 = !DILocation(line: 653, column: 29, scope: !1413)
!1424 = !DILocation(line: 653, column: 9, scope: !1415)
!1425 = !DILocation(line: 654, column: 5, scope: !1415)
!1426 = !DILocation(line: 655, column: 12, scope: !1415)
!1427 = !DILocation(line: 656, column: 12, scope: !1415)
!1428 = !DILocation(line: 657, column: 2, scope: !1406)
!1429 = distinct !DISubprogram(name: "run_test_58", scope: !8, file: !7, line: 660, type: !115, scopeLine: 660, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !1430)
!1430 = !{!1431, !1433, !1435, !1437}
!1431 = !DILocalVariable(name: "rnd", scope: !1432, file: !7, line: 661, type: !15, align: 8)
!1432 = distinct !DILexicalBlock(scope: !1429, file: !7, line: 661, column: 5)
!1433 = !DILocalVariable(name: "ret", scope: !1434, file: !7, line: 662, type: !13, align: 8)
!1434 = distinct !DILexicalBlock(scope: !1432, file: !7, line: 662, column: 5)
!1435 = !DILocalVariable(name: "expected_state", scope: !1436, file: !7, line: 663, type: !19, align: 8)
!1436 = distinct !DILexicalBlock(scope: !1434, file: !7, line: 663, column: 5)
!1437 = !DILocalVariable(name: "expected_ret", scope: !1438, file: !7, line: 664, type: !13, align: 8)
!1438 = distinct !DILexicalBlock(scope: !1436, file: !7, line: 664, column: 5)
!1439 = !DILocation(line: 661, column: 9, scope: !1432)
!1440 = !DILocation(line: 663, column: 9, scope: !1436)
!1441 = !DILocation(line: 661, column: 35, scope: !1429)
!1442 = !DILocation(line: 661, column: 19, scope: !1429)
!1443 = !DILocation(line: 662, column: 15, scope: !1432)
!1444 = !DILocation(line: 662, column: 9, scope: !1434)
!1445 = !DILocation(line: 663, column: 42, scope: !1434)
!1446 = !DILocation(line: 664, column: 29, scope: !1436)
!1447 = !DILocation(line: 664, column: 9, scope: !1438)
!1448 = !DILocation(line: 665, column: 5, scope: !1438)
!1449 = !DILocation(line: 666, column: 12, scope: !1438)
!1450 = !DILocation(line: 667, column: 12, scope: !1438)
!1451 = !DILocation(line: 668, column: 2, scope: !1429)
!1452 = distinct !DISubprogram(name: "run_test_59", scope: !8, file: !7, line: 671, type: !115, scopeLine: 671, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !1453)
!1453 = !{!1454, !1456, !1458, !1460}
!1454 = !DILocalVariable(name: "rnd", scope: !1455, file: !7, line: 672, type: !15, align: 8)
!1455 = distinct !DILexicalBlock(scope: !1452, file: !7, line: 672, column: 5)
!1456 = !DILocalVariable(name: "ret", scope: !1457, file: !7, line: 673, type: !13, align: 8)
!1457 = distinct !DILexicalBlock(scope: !1455, file: !7, line: 673, column: 5)
!1458 = !DILocalVariable(name: "expected_state", scope: !1459, file: !7, line: 674, type: !19, align: 8)
!1459 = distinct !DILexicalBlock(scope: !1457, file: !7, line: 674, column: 5)
!1460 = !DILocalVariable(name: "expected_ret", scope: !1461, file: !7, line: 675, type: !13, align: 8)
!1461 = distinct !DILexicalBlock(scope: !1459, file: !7, line: 675, column: 5)
!1462 = !DILocation(line: 672, column: 9, scope: !1455)
!1463 = !DILocation(line: 674, column: 9, scope: !1459)
!1464 = !DILocation(line: 672, column: 35, scope: !1452)
!1465 = !DILocation(line: 672, column: 19, scope: !1452)
!1466 = !DILocation(line: 673, column: 15, scope: !1455)
!1467 = !DILocation(line: 673, column: 9, scope: !1457)
!1468 = !DILocation(line: 674, column: 42, scope: !1457)
!1469 = !DILocation(line: 675, column: 29, scope: !1459)
!1470 = !DILocation(line: 675, column: 9, scope: !1461)
!1471 = !DILocation(line: 676, column: 5, scope: !1461)
!1472 = !DILocation(line: 677, column: 12, scope: !1461)
!1473 = !DILocation(line: 678, column: 12, scope: !1461)
!1474 = !DILocation(line: 679, column: 2, scope: !1452)
!1475 = distinct !DISubprogram(name: "run_test_60", scope: !8, file: !7, line: 682, type: !115, scopeLine: 682, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !1476)
!1476 = !{!1477, !1479, !1481, !1483}
!1477 = !DILocalVariable(name: "rnd", scope: !1478, file: !7, line: 683, type: !15, align: 8)
!1478 = distinct !DILexicalBlock(scope: !1475, file: !7, line: 683, column: 5)
!1479 = !DILocalVariable(name: "ret", scope: !1480, file: !7, line: 684, type: !13, align: 8)
!1480 = distinct !DILexicalBlock(scope: !1478, file: !7, line: 684, column: 5)
!1481 = !DILocalVariable(name: "expected_state", scope: !1482, file: !7, line: 685, type: !19, align: 8)
!1482 = distinct !DILexicalBlock(scope: !1480, file: !7, line: 685, column: 5)
!1483 = !DILocalVariable(name: "expected_ret", scope: !1484, file: !7, line: 686, type: !13, align: 8)
!1484 = distinct !DILexicalBlock(scope: !1482, file: !7, line: 686, column: 5)
!1485 = !DILocation(line: 683, column: 9, scope: !1478)
!1486 = !DILocation(line: 685, column: 9, scope: !1482)
!1487 = !DILocation(line: 683, column: 35, scope: !1475)
!1488 = !DILocation(line: 683, column: 19, scope: !1475)
!1489 = !DILocation(line: 684, column: 15, scope: !1478)
!1490 = !DILocation(line: 684, column: 9, scope: !1480)
!1491 = !DILocation(line: 685, column: 42, scope: !1480)
!1492 = !DILocation(line: 686, column: 29, scope: !1482)
!1493 = !DILocation(line: 686, column: 9, scope: !1484)
!1494 = !DILocation(line: 687, column: 5, scope: !1484)
!1495 = !DILocation(line: 688, column: 12, scope: !1484)
!1496 = !DILocation(line: 689, column: 12, scope: !1484)
!1497 = !DILocation(line: 690, column: 2, scope: !1475)
!1498 = distinct !DISubprogram(name: "run_test_61", scope: !8, file: !7, line: 693, type: !115, scopeLine: 693, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !1499)
!1499 = !{!1500, !1502, !1504, !1506}
!1500 = !DILocalVariable(name: "rnd", scope: !1501, file: !7, line: 694, type: !15, align: 8)
!1501 = distinct !DILexicalBlock(scope: !1498, file: !7, line: 694, column: 5)
!1502 = !DILocalVariable(name: "ret", scope: !1503, file: !7, line: 695, type: !13, align: 8)
!1503 = distinct !DILexicalBlock(scope: !1501, file: !7, line: 695, column: 5)
!1504 = !DILocalVariable(name: "expected_state", scope: !1505, file: !7, line: 696, type: !19, align: 8)
!1505 = distinct !DILexicalBlock(scope: !1503, file: !7, line: 696, column: 5)
!1506 = !DILocalVariable(name: "expected_ret", scope: !1507, file: !7, line: 697, type: !13, align: 8)
!1507 = distinct !DILexicalBlock(scope: !1505, file: !7, line: 697, column: 5)
!1508 = !DILocation(line: 694, column: 9, scope: !1501)
!1509 = !DILocation(line: 696, column: 9, scope: !1505)
!1510 = !DILocation(line: 694, column: 35, scope: !1498)
!1511 = !DILocation(line: 694, column: 19, scope: !1498)
!1512 = !DILocation(line: 695, column: 15, scope: !1501)
!1513 = !DILocation(line: 695, column: 9, scope: !1503)
!1514 = !DILocation(line: 696, column: 42, scope: !1503)
!1515 = !DILocation(line: 697, column: 29, scope: !1505)
!1516 = !DILocation(line: 697, column: 9, scope: !1507)
!1517 = !DILocation(line: 698, column: 5, scope: !1507)
!1518 = !DILocation(line: 699, column: 12, scope: !1507)
!1519 = !DILocation(line: 700, column: 12, scope: !1507)
!1520 = !DILocation(line: 701, column: 2, scope: !1498)
!1521 = distinct !DISubprogram(name: "run_test_62", scope: !8, file: !7, line: 704, type: !115, scopeLine: 704, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !1522)
!1522 = !{!1523, !1525, !1527, !1529}
!1523 = !DILocalVariable(name: "rnd", scope: !1524, file: !7, line: 705, type: !15, align: 8)
!1524 = distinct !DILexicalBlock(scope: !1521, file: !7, line: 705, column: 5)
!1525 = !DILocalVariable(name: "ret", scope: !1526, file: !7, line: 706, type: !13, align: 8)
!1526 = distinct !DILexicalBlock(scope: !1524, file: !7, line: 706, column: 5)
!1527 = !DILocalVariable(name: "expected_state", scope: !1528, file: !7, line: 707, type: !19, align: 8)
!1528 = distinct !DILexicalBlock(scope: !1526, file: !7, line: 707, column: 5)
!1529 = !DILocalVariable(name: "expected_ret", scope: !1530, file: !7, line: 708, type: !13, align: 8)
!1530 = distinct !DILexicalBlock(scope: !1528, file: !7, line: 708, column: 5)
!1531 = !DILocation(line: 705, column: 9, scope: !1524)
!1532 = !DILocation(line: 707, column: 9, scope: !1528)
!1533 = !DILocation(line: 705, column: 35, scope: !1521)
!1534 = !DILocation(line: 705, column: 19, scope: !1521)
!1535 = !DILocation(line: 706, column: 15, scope: !1524)
!1536 = !DILocation(line: 706, column: 9, scope: !1526)
!1537 = !DILocation(line: 707, column: 42, scope: !1526)
!1538 = !DILocation(line: 708, column: 29, scope: !1528)
!1539 = !DILocation(line: 708, column: 9, scope: !1530)
!1540 = !DILocation(line: 709, column: 5, scope: !1530)
!1541 = !DILocation(line: 710, column: 12, scope: !1530)
!1542 = !DILocation(line: 711, column: 12, scope: !1530)
!1543 = !DILocation(line: 712, column: 2, scope: !1521)
!1544 = distinct !DISubprogram(name: "run_test_63", scope: !8, file: !7, line: 715, type: !115, scopeLine: 715, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !1545)
!1545 = !{!1546, !1548, !1550, !1552}
!1546 = !DILocalVariable(name: "rnd", scope: !1547, file: !7, line: 716, type: !15, align: 8)
!1547 = distinct !DILexicalBlock(scope: !1544, file: !7, line: 716, column: 5)
!1548 = !DILocalVariable(name: "ret", scope: !1549, file: !7, line: 717, type: !13, align: 8)
!1549 = distinct !DILexicalBlock(scope: !1547, file: !7, line: 717, column: 5)
!1550 = !DILocalVariable(name: "expected_state", scope: !1551, file: !7, line: 718, type: !19, align: 8)
!1551 = distinct !DILexicalBlock(scope: !1549, file: !7, line: 718, column: 5)
!1552 = !DILocalVariable(name: "expected_ret", scope: !1553, file: !7, line: 719, type: !13, align: 8)
!1553 = distinct !DILexicalBlock(scope: !1551, file: !7, line: 719, column: 5)
!1554 = !DILocation(line: 716, column: 9, scope: !1547)
!1555 = !DILocation(line: 718, column: 9, scope: !1551)
!1556 = !DILocation(line: 716, column: 35, scope: !1544)
!1557 = !DILocation(line: 716, column: 19, scope: !1544)
!1558 = !DILocation(line: 717, column: 15, scope: !1547)
!1559 = !DILocation(line: 717, column: 9, scope: !1549)
!1560 = !DILocation(line: 718, column: 42, scope: !1549)
!1561 = !DILocation(line: 719, column: 29, scope: !1551)
!1562 = !DILocation(line: 719, column: 9, scope: !1553)
!1563 = !DILocation(line: 720, column: 5, scope: !1553)
!1564 = !DILocation(line: 721, column: 12, scope: !1553)
!1565 = !DILocation(line: 722, column: 12, scope: !1553)
!1566 = !DILocation(line: 723, column: 2, scope: !1544)
!1567 = distinct !DISubprogram(name: "run_test_64", scope: !8, file: !7, line: 726, type: !115, scopeLine: 726, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !1568)
!1568 = !{!1569, !1571, !1573, !1575}
!1569 = !DILocalVariable(name: "rnd", scope: !1570, file: !7, line: 727, type: !15, align: 8)
!1570 = distinct !DILexicalBlock(scope: !1567, file: !7, line: 727, column: 5)
!1571 = !DILocalVariable(name: "ret", scope: !1572, file: !7, line: 728, type: !13, align: 8)
!1572 = distinct !DILexicalBlock(scope: !1570, file: !7, line: 728, column: 5)
!1573 = !DILocalVariable(name: "expected_state", scope: !1574, file: !7, line: 729, type: !19, align: 8)
!1574 = distinct !DILexicalBlock(scope: !1572, file: !7, line: 729, column: 5)
!1575 = !DILocalVariable(name: "expected_ret", scope: !1576, file: !7, line: 730, type: !13, align: 8)
!1576 = distinct !DILexicalBlock(scope: !1574, file: !7, line: 730, column: 5)
!1577 = !DILocation(line: 727, column: 9, scope: !1570)
!1578 = !DILocation(line: 729, column: 9, scope: !1574)
!1579 = !DILocation(line: 727, column: 35, scope: !1567)
!1580 = !DILocation(line: 727, column: 19, scope: !1567)
!1581 = !DILocation(line: 728, column: 15, scope: !1570)
!1582 = !DILocation(line: 728, column: 9, scope: !1572)
!1583 = !DILocation(line: 729, column: 42, scope: !1572)
!1584 = !DILocation(line: 730, column: 29, scope: !1574)
!1585 = !DILocation(line: 730, column: 9, scope: !1576)
!1586 = !DILocation(line: 731, column: 5, scope: !1576)
!1587 = !DILocation(line: 732, column: 12, scope: !1576)
!1588 = !DILocation(line: 733, column: 12, scope: !1576)
!1589 = !DILocation(line: 734, column: 2, scope: !1567)
!1590 = distinct !DISubprogram(name: "run_test_65", scope: !8, file: !7, line: 737, type: !115, scopeLine: 737, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !1591)
!1591 = !{!1592, !1594, !1596, !1598}
!1592 = !DILocalVariable(name: "rnd", scope: !1593, file: !7, line: 738, type: !15, align: 8)
!1593 = distinct !DILexicalBlock(scope: !1590, file: !7, line: 738, column: 5)
!1594 = !DILocalVariable(name: "ret", scope: !1595, file: !7, line: 739, type: !13, align: 8)
!1595 = distinct !DILexicalBlock(scope: !1593, file: !7, line: 739, column: 5)
!1596 = !DILocalVariable(name: "expected_state", scope: !1597, file: !7, line: 740, type: !19, align: 8)
!1597 = distinct !DILexicalBlock(scope: !1595, file: !7, line: 740, column: 5)
!1598 = !DILocalVariable(name: "expected_ret", scope: !1599, file: !7, line: 741, type: !13, align: 8)
!1599 = distinct !DILexicalBlock(scope: !1597, file: !7, line: 741, column: 5)
!1600 = !DILocation(line: 738, column: 9, scope: !1593)
!1601 = !DILocation(line: 740, column: 9, scope: !1597)
!1602 = !DILocation(line: 738, column: 35, scope: !1590)
!1603 = !DILocation(line: 738, column: 19, scope: !1590)
!1604 = !DILocation(line: 739, column: 15, scope: !1593)
!1605 = !DILocation(line: 739, column: 9, scope: !1595)
!1606 = !DILocation(line: 740, column: 42, scope: !1595)
!1607 = !DILocation(line: 741, column: 29, scope: !1597)
!1608 = !DILocation(line: 741, column: 9, scope: !1599)
!1609 = !DILocation(line: 742, column: 5, scope: !1599)
!1610 = !DILocation(line: 743, column: 12, scope: !1599)
!1611 = !DILocation(line: 744, column: 12, scope: !1599)
!1612 = !DILocation(line: 745, column: 2, scope: !1590)
!1613 = distinct !DISubprogram(name: "run_test_66", scope: !8, file: !7, line: 748, type: !115, scopeLine: 748, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !1614)
!1614 = !{!1615, !1617, !1619, !1621}
!1615 = !DILocalVariable(name: "rnd", scope: !1616, file: !7, line: 749, type: !15, align: 8)
!1616 = distinct !DILexicalBlock(scope: !1613, file: !7, line: 749, column: 5)
!1617 = !DILocalVariable(name: "ret", scope: !1618, file: !7, line: 750, type: !13, align: 8)
!1618 = distinct !DILexicalBlock(scope: !1616, file: !7, line: 750, column: 5)
!1619 = !DILocalVariable(name: "expected_state", scope: !1620, file: !7, line: 751, type: !19, align: 8)
!1620 = distinct !DILexicalBlock(scope: !1618, file: !7, line: 751, column: 5)
!1621 = !DILocalVariable(name: "expected_ret", scope: !1622, file: !7, line: 752, type: !13, align: 8)
!1622 = distinct !DILexicalBlock(scope: !1620, file: !7, line: 752, column: 5)
!1623 = !DILocation(line: 749, column: 9, scope: !1616)
!1624 = !DILocation(line: 751, column: 9, scope: !1620)
!1625 = !DILocation(line: 749, column: 35, scope: !1613)
!1626 = !DILocation(line: 749, column: 19, scope: !1613)
!1627 = !DILocation(line: 750, column: 15, scope: !1616)
!1628 = !DILocation(line: 750, column: 9, scope: !1618)
!1629 = !DILocation(line: 751, column: 42, scope: !1618)
!1630 = !DILocation(line: 752, column: 29, scope: !1620)
!1631 = !DILocation(line: 752, column: 9, scope: !1622)
!1632 = !DILocation(line: 753, column: 5, scope: !1622)
!1633 = !DILocation(line: 754, column: 12, scope: !1622)
!1634 = !DILocation(line: 755, column: 12, scope: !1622)
!1635 = !DILocation(line: 756, column: 2, scope: !1613)
!1636 = distinct !DISubprogram(name: "run_test_67", scope: !8, file: !7, line: 759, type: !115, scopeLine: 759, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !1637)
!1637 = !{!1638, !1640, !1642, !1644}
!1638 = !DILocalVariable(name: "rnd", scope: !1639, file: !7, line: 760, type: !15, align: 8)
!1639 = distinct !DILexicalBlock(scope: !1636, file: !7, line: 760, column: 5)
!1640 = !DILocalVariable(name: "ret", scope: !1641, file: !7, line: 761, type: !13, align: 8)
!1641 = distinct !DILexicalBlock(scope: !1639, file: !7, line: 761, column: 5)
!1642 = !DILocalVariable(name: "expected_state", scope: !1643, file: !7, line: 762, type: !19, align: 8)
!1643 = distinct !DILexicalBlock(scope: !1641, file: !7, line: 762, column: 5)
!1644 = !DILocalVariable(name: "expected_ret", scope: !1645, file: !7, line: 763, type: !13, align: 8)
!1645 = distinct !DILexicalBlock(scope: !1643, file: !7, line: 763, column: 5)
!1646 = !DILocation(line: 760, column: 9, scope: !1639)
!1647 = !DILocation(line: 762, column: 9, scope: !1643)
!1648 = !DILocation(line: 760, column: 35, scope: !1636)
!1649 = !DILocation(line: 760, column: 19, scope: !1636)
!1650 = !DILocation(line: 761, column: 15, scope: !1639)
!1651 = !DILocation(line: 761, column: 9, scope: !1641)
!1652 = !DILocation(line: 762, column: 42, scope: !1641)
!1653 = !DILocation(line: 763, column: 29, scope: !1643)
!1654 = !DILocation(line: 763, column: 9, scope: !1645)
!1655 = !DILocation(line: 764, column: 5, scope: !1645)
!1656 = !DILocation(line: 765, column: 12, scope: !1645)
!1657 = !DILocation(line: 766, column: 12, scope: !1645)
!1658 = !DILocation(line: 767, column: 2, scope: !1636)
!1659 = distinct !DISubprogram(name: "run_test_68", scope: !8, file: !7, line: 770, type: !115, scopeLine: 770, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !1660)
!1660 = !{!1661, !1663, !1665, !1667}
!1661 = !DILocalVariable(name: "rnd", scope: !1662, file: !7, line: 771, type: !15, align: 8)
!1662 = distinct !DILexicalBlock(scope: !1659, file: !7, line: 771, column: 5)
!1663 = !DILocalVariable(name: "ret", scope: !1664, file: !7, line: 772, type: !13, align: 8)
!1664 = distinct !DILexicalBlock(scope: !1662, file: !7, line: 772, column: 5)
!1665 = !DILocalVariable(name: "expected_state", scope: !1666, file: !7, line: 773, type: !19, align: 8)
!1666 = distinct !DILexicalBlock(scope: !1664, file: !7, line: 773, column: 5)
!1667 = !DILocalVariable(name: "expected_ret", scope: !1668, file: !7, line: 774, type: !13, align: 8)
!1668 = distinct !DILexicalBlock(scope: !1666, file: !7, line: 774, column: 5)
!1669 = !DILocation(line: 771, column: 9, scope: !1662)
!1670 = !DILocation(line: 773, column: 9, scope: !1666)
!1671 = !DILocation(line: 771, column: 35, scope: !1659)
!1672 = !DILocation(line: 771, column: 19, scope: !1659)
!1673 = !DILocation(line: 772, column: 15, scope: !1662)
!1674 = !DILocation(line: 772, column: 9, scope: !1664)
!1675 = !DILocation(line: 773, column: 42, scope: !1664)
!1676 = !DILocation(line: 774, column: 29, scope: !1666)
!1677 = !DILocation(line: 774, column: 9, scope: !1668)
!1678 = !DILocation(line: 775, column: 5, scope: !1668)
!1679 = !DILocation(line: 776, column: 12, scope: !1668)
!1680 = !DILocation(line: 777, column: 12, scope: !1668)
!1681 = !DILocation(line: 778, column: 2, scope: !1659)
!1682 = distinct !DISubprogram(name: "run_test_69", scope: !8, file: !7, line: 781, type: !115, scopeLine: 781, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !1683)
!1683 = !{!1684, !1686, !1688, !1690}
!1684 = !DILocalVariable(name: "rnd", scope: !1685, file: !7, line: 782, type: !15, align: 8)
!1685 = distinct !DILexicalBlock(scope: !1682, file: !7, line: 782, column: 5)
!1686 = !DILocalVariable(name: "ret", scope: !1687, file: !7, line: 783, type: !13, align: 8)
!1687 = distinct !DILexicalBlock(scope: !1685, file: !7, line: 783, column: 5)
!1688 = !DILocalVariable(name: "expected_state", scope: !1689, file: !7, line: 784, type: !19, align: 8)
!1689 = distinct !DILexicalBlock(scope: !1687, file: !7, line: 784, column: 5)
!1690 = !DILocalVariable(name: "expected_ret", scope: !1691, file: !7, line: 785, type: !13, align: 8)
!1691 = distinct !DILexicalBlock(scope: !1689, file: !7, line: 785, column: 5)
!1692 = !DILocation(line: 782, column: 9, scope: !1685)
!1693 = !DILocation(line: 784, column: 9, scope: !1689)
!1694 = !DILocation(line: 782, column: 35, scope: !1682)
!1695 = !DILocation(line: 782, column: 19, scope: !1682)
!1696 = !DILocation(line: 783, column: 15, scope: !1685)
!1697 = !DILocation(line: 783, column: 9, scope: !1687)
!1698 = !DILocation(line: 784, column: 42, scope: !1687)
!1699 = !DILocation(line: 785, column: 29, scope: !1689)
!1700 = !DILocation(line: 785, column: 9, scope: !1691)
!1701 = !DILocation(line: 786, column: 5, scope: !1691)
!1702 = !DILocation(line: 787, column: 12, scope: !1691)
!1703 = !DILocation(line: 788, column: 12, scope: !1691)
!1704 = !DILocation(line: 789, column: 2, scope: !1682)
!1705 = distinct !DISubprogram(name: "run_test_70", scope: !8, file: !7, line: 792, type: !115, scopeLine: 792, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !1706)
!1706 = !{!1707, !1709, !1711, !1713}
!1707 = !DILocalVariable(name: "rnd", scope: !1708, file: !7, line: 793, type: !15, align: 8)
!1708 = distinct !DILexicalBlock(scope: !1705, file: !7, line: 793, column: 5)
!1709 = !DILocalVariable(name: "ret", scope: !1710, file: !7, line: 794, type: !13, align: 8)
!1710 = distinct !DILexicalBlock(scope: !1708, file: !7, line: 794, column: 5)
!1711 = !DILocalVariable(name: "expected_state", scope: !1712, file: !7, line: 795, type: !19, align: 8)
!1712 = distinct !DILexicalBlock(scope: !1710, file: !7, line: 795, column: 5)
!1713 = !DILocalVariable(name: "expected_ret", scope: !1714, file: !7, line: 796, type: !13, align: 8)
!1714 = distinct !DILexicalBlock(scope: !1712, file: !7, line: 796, column: 5)
!1715 = !DILocation(line: 793, column: 9, scope: !1708)
!1716 = !DILocation(line: 795, column: 9, scope: !1712)
!1717 = !DILocation(line: 793, column: 35, scope: !1705)
!1718 = !DILocation(line: 793, column: 19, scope: !1705)
!1719 = !DILocation(line: 794, column: 15, scope: !1708)
!1720 = !DILocation(line: 794, column: 9, scope: !1710)
!1721 = !DILocation(line: 795, column: 42, scope: !1710)
!1722 = !DILocation(line: 796, column: 29, scope: !1712)
!1723 = !DILocation(line: 796, column: 9, scope: !1714)
!1724 = !DILocation(line: 797, column: 5, scope: !1714)
!1725 = !DILocation(line: 798, column: 12, scope: !1714)
!1726 = !DILocation(line: 799, column: 12, scope: !1714)
!1727 = !DILocation(line: 800, column: 2, scope: !1705)
!1728 = distinct !DISubprogram(name: "run_test_71", scope: !8, file: !7, line: 803, type: !115, scopeLine: 803, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !1729)
!1729 = !{!1730, !1732, !1734, !1736}
!1730 = !DILocalVariable(name: "rnd", scope: !1731, file: !7, line: 804, type: !15, align: 8)
!1731 = distinct !DILexicalBlock(scope: !1728, file: !7, line: 804, column: 5)
!1732 = !DILocalVariable(name: "ret", scope: !1733, file: !7, line: 805, type: !13, align: 8)
!1733 = distinct !DILexicalBlock(scope: !1731, file: !7, line: 805, column: 5)
!1734 = !DILocalVariable(name: "expected_state", scope: !1735, file: !7, line: 806, type: !19, align: 8)
!1735 = distinct !DILexicalBlock(scope: !1733, file: !7, line: 806, column: 5)
!1736 = !DILocalVariable(name: "expected_ret", scope: !1737, file: !7, line: 807, type: !13, align: 8)
!1737 = distinct !DILexicalBlock(scope: !1735, file: !7, line: 807, column: 5)
!1738 = !DILocation(line: 804, column: 9, scope: !1731)
!1739 = !DILocation(line: 806, column: 9, scope: !1735)
!1740 = !DILocation(line: 804, column: 35, scope: !1728)
!1741 = !DILocation(line: 804, column: 19, scope: !1728)
!1742 = !DILocation(line: 805, column: 15, scope: !1731)
!1743 = !DILocation(line: 805, column: 9, scope: !1733)
!1744 = !DILocation(line: 806, column: 42, scope: !1733)
!1745 = !DILocation(line: 807, column: 29, scope: !1735)
!1746 = !DILocation(line: 807, column: 9, scope: !1737)
!1747 = !DILocation(line: 808, column: 5, scope: !1737)
!1748 = !DILocation(line: 809, column: 12, scope: !1737)
!1749 = !DILocation(line: 810, column: 12, scope: !1737)
!1750 = !DILocation(line: 811, column: 2, scope: !1728)
!1751 = distinct !DISubprogram(name: "run_test_72", scope: !8, file: !7, line: 814, type: !115, scopeLine: 814, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !1752)
!1752 = !{!1753, !1755, !1757, !1759}
!1753 = !DILocalVariable(name: "rnd", scope: !1754, file: !7, line: 815, type: !15, align: 8)
!1754 = distinct !DILexicalBlock(scope: !1751, file: !7, line: 815, column: 5)
!1755 = !DILocalVariable(name: "ret", scope: !1756, file: !7, line: 816, type: !13, align: 8)
!1756 = distinct !DILexicalBlock(scope: !1754, file: !7, line: 816, column: 5)
!1757 = !DILocalVariable(name: "expected_state", scope: !1758, file: !7, line: 817, type: !19, align: 8)
!1758 = distinct !DILexicalBlock(scope: !1756, file: !7, line: 817, column: 5)
!1759 = !DILocalVariable(name: "expected_ret", scope: !1760, file: !7, line: 818, type: !13, align: 8)
!1760 = distinct !DILexicalBlock(scope: !1758, file: !7, line: 818, column: 5)
!1761 = !DILocation(line: 815, column: 9, scope: !1754)
!1762 = !DILocation(line: 817, column: 9, scope: !1758)
!1763 = !DILocation(line: 815, column: 35, scope: !1751)
!1764 = !DILocation(line: 815, column: 19, scope: !1751)
!1765 = !DILocation(line: 816, column: 15, scope: !1754)
!1766 = !DILocation(line: 816, column: 9, scope: !1756)
!1767 = !DILocation(line: 817, column: 42, scope: !1756)
!1768 = !DILocation(line: 818, column: 29, scope: !1758)
!1769 = !DILocation(line: 818, column: 9, scope: !1760)
!1770 = !DILocation(line: 819, column: 5, scope: !1760)
!1771 = !DILocation(line: 820, column: 12, scope: !1760)
!1772 = !DILocation(line: 821, column: 12, scope: !1760)
!1773 = !DILocation(line: 822, column: 2, scope: !1751)
!1774 = distinct !DISubprogram(name: "run_test_73", scope: !8, file: !7, line: 825, type: !115, scopeLine: 825, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !1775)
!1775 = !{!1776, !1778, !1780, !1782}
!1776 = !DILocalVariable(name: "rnd", scope: !1777, file: !7, line: 826, type: !15, align: 8)
!1777 = distinct !DILexicalBlock(scope: !1774, file: !7, line: 826, column: 5)
!1778 = !DILocalVariable(name: "ret", scope: !1779, file: !7, line: 827, type: !13, align: 8)
!1779 = distinct !DILexicalBlock(scope: !1777, file: !7, line: 827, column: 5)
!1780 = !DILocalVariable(name: "expected_state", scope: !1781, file: !7, line: 828, type: !19, align: 8)
!1781 = distinct !DILexicalBlock(scope: !1779, file: !7, line: 828, column: 5)
!1782 = !DILocalVariable(name: "expected_ret", scope: !1783, file: !7, line: 829, type: !13, align: 8)
!1783 = distinct !DILexicalBlock(scope: !1781, file: !7, line: 829, column: 5)
!1784 = !DILocation(line: 826, column: 9, scope: !1777)
!1785 = !DILocation(line: 828, column: 9, scope: !1781)
!1786 = !DILocation(line: 826, column: 35, scope: !1774)
!1787 = !DILocation(line: 826, column: 19, scope: !1774)
!1788 = !DILocation(line: 827, column: 15, scope: !1777)
!1789 = !DILocation(line: 827, column: 9, scope: !1779)
!1790 = !DILocation(line: 828, column: 42, scope: !1779)
!1791 = !DILocation(line: 829, column: 29, scope: !1781)
!1792 = !DILocation(line: 829, column: 9, scope: !1783)
!1793 = !DILocation(line: 830, column: 5, scope: !1783)
!1794 = !DILocation(line: 831, column: 12, scope: !1783)
!1795 = !DILocation(line: 832, column: 12, scope: !1783)
!1796 = !DILocation(line: 833, column: 2, scope: !1774)
!1797 = distinct !DISubprogram(name: "run_test_74", scope: !8, file: !7, line: 836, type: !115, scopeLine: 836, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !1798)
!1798 = !{!1799, !1801, !1803, !1805}
!1799 = !DILocalVariable(name: "rnd", scope: !1800, file: !7, line: 837, type: !15, align: 8)
!1800 = distinct !DILexicalBlock(scope: !1797, file: !7, line: 837, column: 5)
!1801 = !DILocalVariable(name: "ret", scope: !1802, file: !7, line: 838, type: !13, align: 8)
!1802 = distinct !DILexicalBlock(scope: !1800, file: !7, line: 838, column: 5)
!1803 = !DILocalVariable(name: "expected_state", scope: !1804, file: !7, line: 839, type: !19, align: 8)
!1804 = distinct !DILexicalBlock(scope: !1802, file: !7, line: 839, column: 5)
!1805 = !DILocalVariable(name: "expected_ret", scope: !1806, file: !7, line: 840, type: !13, align: 8)
!1806 = distinct !DILexicalBlock(scope: !1804, file: !7, line: 840, column: 5)
!1807 = !DILocation(line: 837, column: 9, scope: !1800)
!1808 = !DILocation(line: 839, column: 9, scope: !1804)
!1809 = !DILocation(line: 837, column: 35, scope: !1797)
!1810 = !DILocation(line: 837, column: 19, scope: !1797)
!1811 = !DILocation(line: 838, column: 15, scope: !1800)
!1812 = !DILocation(line: 838, column: 9, scope: !1802)
!1813 = !DILocation(line: 839, column: 42, scope: !1802)
!1814 = !DILocation(line: 840, column: 29, scope: !1804)
!1815 = !DILocation(line: 840, column: 9, scope: !1806)
!1816 = !DILocation(line: 841, column: 5, scope: !1806)
!1817 = !DILocation(line: 842, column: 12, scope: !1806)
!1818 = !DILocation(line: 843, column: 12, scope: !1806)
!1819 = !DILocation(line: 844, column: 2, scope: !1797)
!1820 = distinct !DISubprogram(name: "run_test_75", scope: !8, file: !7, line: 847, type: !115, scopeLine: 847, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !23, retainedNodes: !1821)
!1821 = !{!1822, !1824, !1826, !1828}
!1822 = !DILocalVariable(name: "rnd", scope: !1823, file: !7, line: 848, type: !15, align: 8)
!1823 = distinct !DILexicalBlock(scope: !1820, file: !7, line: 848, column: 5)
!1824 = !DILocalVariable(name: "ret", scope: !1825, file: !7, line: 849, type: !13, align: 8)
!1825 = distinct !DILexicalBlock(scope: !1823, file: !7, line: 849, column: 5)
!1826 = !DILocalVariable(name: "expected_state", scope: !1827, file: !7, line: 850, type: !19, align: 8)
!1827 = distinct !DILexicalBlock(scope: !1825, file: !7, line: 850, column: 5)
!1828 = !DILocalVariable(name: "expected_ret", scope: !1829, file: !7, line: 851, type: !13, align: 8)
!1829 = distinct !DILexicalBlock(scope: !1827, file: !7, line: 851, column: 5)
!1830 = !DILocation(line: 848, column: 9, scope: !1823)
!1831 = !DILocation(line: 850, column: 9, scope: !1827)
!1832 = !DILocation(line: 848, column: 35, scope: !1820)
!1833 = !DILocation(line: 848, column: 19, scope: !1820)
!1834 = !DILocation(line: 849, column: 15, scope: !1823)
!1835 = !DILocation(line: 849, column: 9, scope: !1825)
!1836 = !DILocation(line: 850, column: 42, scope: !1825)
!1837 = !DILocation(line: 851, column: 29, scope: !1827)
!1838 = !DILocation(line: 851, column: 9, scope: !1829)
!1839 = !DILocation(line: 852, column: 5, scope: !1829)
!1840 = !DILocation(line: 853, column: 12, scope: !1829)
!1841 = !DILocation(line: 854, column: 12, scope: !1829)
!1842 = !DILocation(line: 855, column: 2, scope: !1820)
