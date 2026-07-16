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

@_ZN14float2half_lib3src3lib6M_BASE17h6da74816cc559dd5E = internal constant <{ [1024 x i8] }> <{ [1024 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\02\00\04\00\08\00\10\00 \00@\00\80\00\00\01\00\02\00\04\00\08\00\0C\00\10\00\14\00\18\00\1C\00 \00$\00(\00,\000\004\008\00<\00@\00D\00H\00L\00P\00T\00X\00\\\00`\00d\00h\00l\00p\00t\00x\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00|\00\00\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\00\80\01\80\02\80\04\80\08\80\10\80 \80@\80\80\80\00\81\00\82\00\84\00\88\00\8C\00\90\00\94\00\98\00\9C\00\A0\00\A4\00\A8\00\AC\00\B0\00\B4\00\B8\00\BC\00\C0\00\C4\00\C8\00\CC\00\D0\00\D4\00\D8\00\DC\00\E0\00\E4\00\E8\00\EC\00\F0\00\F4\00\F8\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\FC\00\80" }>, align 2, !dbg !0
@_ZN14float2half_lib3src3lib7M_SHIFT17h17a2ea6077365792E = internal constant <{ [512 x i8] }> <{ [512 x i8] c"\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\17\16\15\14\13\12\11\10\0F\0E\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\0D\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\17\16\15\14\13\12\11\10\0F\0E\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\0D" }>, align 1, !dbg !10
@alloc_f5ffd2fd1476bab43ad89fb40c72d0c5 = private unnamed_addr constant <{ [10 x i8] }> <{ [10 x i8] c"src/lib.rs" }>, align 1
@alloc_6257953765df699c178b6eea7335ed47 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00N\00\00\00\06\00\00\00" }>, align 8
@alloc_ef4811d0acff8278cb5b39cca10d2d52 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00N\00\00\00=\00\00\00" }>, align 8
@alloc_eaff7802e67c92062093f251c52d1001 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00N\00\00\00+\00\00\00" }>, align 8
@str.0 = internal constant [36 x i8] c"attempt to shift right with overflow"

; Function Attrs: nonlazybind uwtable
define zeroext i16 @float2half(float %flt) unnamed_addr #0 !dbg !21 {
start:
  %flt.dbg.spill = alloca float, align 4
  store float %flt, ptr %flt.dbg.spill, align 4
    #dbg_declare(ptr %flt.dbg.spill, !26, !DIExpression(), !28)
  %0 = call zeroext i16 @_ZN14float2half_lib3src3lib10float2half17h06914f8a5e76a15dE(float %flt), !dbg !29
  ret i16 %0, !dbg !30
}

; Function Attrs: nonlazybind uwtable
define internal zeroext i16 @_ZN14float2half_lib3src3lib10float2half17h06914f8a5e76a15dE(float %flt) unnamed_addr #0 !dbg !31 {
start:
  %rhs.dbg.spill.i = alloca i32, align 4
  %self.dbg.spill.i = alloca i32, align 4
  %j.dbg.spill = alloca i64, align 8
  %n.dbg.spill = alloca i32, align 4
  %flt.dbg.spill = alloca float, align 4
  store float %flt, ptr %flt.dbg.spill, align 4
    #dbg_declare(ptr %flt.dbg.spill, !33, !DIExpression(), !40)
  %n = call i32 @"_ZN4core3f3221_$LT$impl$u20$f32$GT$7to_bits17hb9e271236e8564ebE"(float %flt), !dbg !41
  store i32 %n, ptr %n.dbg.spill, align 4, !dbg !41
    #dbg_declare(ptr %n.dbg.spill, !34, !DIExpression(), !42)
  %_5 = lshr i32 %n, 23, !dbg !43
  %_4 = and i32 %_5, 511, !dbg !44
  %j = zext i32 %_4 to i64, !dbg !44
  store i64 %j, ptr %j.dbg.spill, align 8, !dbg !44
    #dbg_declare(ptr %j.dbg.spill, !37, !DIExpression(), !45)
  %_12 = icmp ult i64 %j, 512, !dbg !46
  %0 = call i1 @llvm.expect.i1(i1 %_12, i1 true), !dbg !46
  br i1 %0, label %bb2, label %panic, !dbg !46

bb2:                                              ; preds = %start
  %1 = getelementptr inbounds [512 x i16], ptr @_ZN14float2half_lib3src3lib6M_BASE17h6da74816cc559dd5E, i64 0, i64 %j, !dbg !46
  %_9 = load i16, ptr %1, align 2, !dbg !46, !noundef !27
  %_8 = zext i16 %_9 to i32, !dbg !47
  %_14 = and i32 %n, 8388607, !dbg !48
  %_20 = icmp ult i64 %j, 512, !dbg !49
  %2 = call i1 @llvm.expect.i1(i1 %_20, i1 true), !dbg !49
  br i1 %2, label %bb3, label %panic1, !dbg !49

panic:                                            ; preds = %start
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %j, i64 512, ptr align 8 @alloc_6257953765df699c178b6eea7335ed47) #4, !dbg !46
  unreachable, !dbg !46

bb3:                                              ; preds = %bb2
  %3 = getelementptr inbounds [512 x i8], ptr @_ZN14float2half_lib3src3lib7M_SHIFT17h17a2ea6077365792E, i64 0, i64 %j, !dbg !49
  %_17 = load i8, ptr %3, align 1, !dbg !49, !noundef !27
  %_16 = zext i8 %_17 to i32, !dbg !49
  %_21 = icmp ult i32 %_16, 32, !dbg !48
  %4 = call i1 @llvm.expect.i1(i1 %_21, i1 true), !dbg !48
  br i1 %4, label %bb4, label %panic2, !dbg !48

panic1:                                           ; preds = %bb2
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %j, i64 512, ptr align 8 @alloc_ef4811d0acff8278cb5b39cca10d2d52) #4, !dbg !49
  unreachable, !dbg !49

bb4:                                              ; preds = %bb3
  %5 = and i32 %_16, 31, !dbg !48
  %_13 = lshr i32 %_14, %5, !dbg !48
  store i32 %_8, ptr %self.dbg.spill.i, align 4
    #dbg_declare(ptr %self.dbg.spill.i, !50, !DIExpression(), !60)
  store i32 %_13, ptr %rhs.dbg.spill.i, align 4
    #dbg_declare(ptr %rhs.dbg.spill.i, !59, !DIExpression(), !62)
  %6 = add i32 %_8, %_13, !dbg !63
  %7 = trunc i32 %6 to i16, !dbg !47
  ret i16 %7, !dbg !64

panic2:                                           ; preds = %bb3
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.0, i64 36, ptr align 8 @alloc_eaff7802e67c92062093f251c52d1001) #4, !dbg !48
  unreachable, !dbg !48
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN4core3f3221_$LT$impl$u20$f32$GT$7to_bits17hb9e271236e8564ebE"(float %self) unnamed_addr #1 !dbg !65 {
start:
  %x.dbg.spill = alloca float, align 4
  %self.dbg.spill = alloca float, align 4
  %_2 = alloca float, align 4
  store float %self, ptr %self.dbg.spill, align 4
    #dbg_declare(ptr %self.dbg.spill, !72, !DIExpression(), !73)
  store float %self, ptr %_2, align 4, !dbg !74
  %x = load float, ptr %_2, align 4, !dbg !75, !noundef !27
  store float %x, ptr %x.dbg.spill, align 4, !dbg !75
    #dbg_declare(ptr %x.dbg.spill, !76, !DIExpression(), !80)
  %0 = bitcast float %x to i32, !dbg !81
  ret i32 %0, !dbg !82
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.expect.i1(i1, i1) #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64, i64, ptr align 8) unnamed_addr #3

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1, i64, ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_1() unnamed_addr #0 !dbg !83 {
start:
  %result.dbg.spill = alloca i16, align 2, !dbg !92
  %flt.dbg.spill = alloca float, align 4, !dbg !92
  %flt = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17hc4c24837d33556bfE"(i32 1), !dbg !92
  store float %flt, ptr %flt.dbg.spill, align 4, !dbg !92
    #dbg_declare(ptr %flt.dbg.spill, !88, !DIExpression(), !93)
  %result = call zeroext i16 @float2half(float %flt), !dbg !94
  store i16 %result, ptr %result.dbg.spill, align 2, !dbg !94
    #dbg_declare(ptr %result.dbg.spill, !90, !DIExpression(), !95)
  %0 = icmp eq i16 %result, 0, !dbg !96
  ret i1 %0, !dbg !97
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17hc4c24837d33556bfE"(i32 %v) unnamed_addr #1 !dbg !98 {
start:
  %x.dbg.spill = alloca i32, align 4
  %v.dbg.spill = alloca i32, align 4
  %_2 = alloca i32, align 4
  store i32 %v, ptr %v.dbg.spill, align 4
    #dbg_declare(ptr %v.dbg.spill, !102, !DIExpression(), !103)
  store i32 %v, ptr %_2, align 4, !dbg !104
  %x = load i32, ptr %_2, align 4, !dbg !105, !noundef !27
  store i32 %x, ptr %x.dbg.spill, align 4, !dbg !105
    #dbg_declare(ptr %x.dbg.spill, !106, !DIExpression(), !110)
  %0 = bitcast i32 %x to float, !dbg !111
  ret float %0, !dbg !112
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_2() unnamed_addr #0 !dbg !113 {
start:
  %result.dbg.spill = alloca i16, align 2, !dbg !119
  %flt.dbg.spill = alloca float, align 4, !dbg !119
  %flt = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17hc4c24837d33556bfE"(i32 8388607), !dbg !119
  store float %flt, ptr %flt.dbg.spill, align 4, !dbg !119
    #dbg_declare(ptr %flt.dbg.spill, !115, !DIExpression(), !120)
  %result = call zeroext i16 @float2half(float %flt), !dbg !121
  store i16 %result, ptr %result.dbg.spill, align 2, !dbg !121
    #dbg_declare(ptr %result.dbg.spill, !117, !DIExpression(), !122)
  %0 = icmp eq i16 %result, 0, !dbg !123
  ret i1 %0, !dbg !124
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_3() unnamed_addr #0 !dbg !125 {
start:
  %result.dbg.spill = alloca i16, align 2, !dbg !131
  %flt.dbg.spill = alloca float, align 4, !dbg !131
  %flt = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17hc4c24837d33556bfE"(i32 8388608), !dbg !131
  store float %flt, ptr %flt.dbg.spill, align 4, !dbg !131
    #dbg_declare(ptr %flt.dbg.spill, !127, !DIExpression(), !132)
  %result = call zeroext i16 @float2half(float %flt), !dbg !133
  store i16 %result, ptr %result.dbg.spill, align 2, !dbg !133
    #dbg_declare(ptr %result.dbg.spill, !129, !DIExpression(), !134)
  %0 = icmp eq i16 %result, 0, !dbg !135
  ret i1 %0, !dbg !136
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_4() unnamed_addr #0 !dbg !137 {
start:
  %result.dbg.spill = alloca i16, align 2, !dbg !143
  %flt.dbg.spill = alloca float, align 4, !dbg !143
  %flt = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17hc4c24837d33556bfE"(i32 855638016), !dbg !143
  store float %flt, ptr %flt.dbg.spill, align 4, !dbg !143
    #dbg_declare(ptr %flt.dbg.spill, !139, !DIExpression(), !144)
  %result = call zeroext i16 @float2half(float %flt), !dbg !145
  store i16 %result, ptr %result.dbg.spill, align 2, !dbg !145
    #dbg_declare(ptr %result.dbg.spill, !141, !DIExpression(), !146)
  %0 = icmp eq i16 %result, 0, !dbg !147
  ret i1 %0, !dbg !148
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_5() unnamed_addr #0 !dbg !149 {
start:
  %result.dbg.spill = alloca i16, align 2, !dbg !155
  %flt.dbg.spill = alloca float, align 4, !dbg !155
  %flt = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17hc4c24837d33556bfE"(i32 864026624), !dbg !155
  store float %flt, ptr %flt.dbg.spill, align 4, !dbg !155
    #dbg_declare(ptr %flt.dbg.spill, !151, !DIExpression(), !156)
  %result = call zeroext i16 @float2half(float %flt), !dbg !157
  store i16 %result, ptr %result.dbg.spill, align 2, !dbg !157
    #dbg_declare(ptr %result.dbg.spill, !153, !DIExpression(), !158)
  %0 = icmp eq i16 %result, 1, !dbg !159
  ret i1 %0, !dbg !160
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_6() unnamed_addr #0 !dbg !161 {
start:
  %result.dbg.spill = alloca i16, align 2, !dbg !167
  %flt.dbg.spill = alloca float, align 4, !dbg !167
  %flt = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17hc4c24837d33556bfE"(i32 872415232), !dbg !167
  store float %flt, ptr %flt.dbg.spill, align 4, !dbg !167
    #dbg_declare(ptr %flt.dbg.spill, !163, !DIExpression(), !168)
  %result = call zeroext i16 @float2half(float %flt), !dbg !169
  store i16 %result, ptr %result.dbg.spill, align 2, !dbg !169
    #dbg_declare(ptr %result.dbg.spill, !165, !DIExpression(), !170)
  %0 = icmp eq i16 %result, 2, !dbg !171
  ret i1 %0, !dbg !172
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_7() unnamed_addr #0 !dbg !173 {
start:
  %result.dbg.spill = alloca i16, align 2, !dbg !179
  %flt.dbg.spill = alloca float, align 4, !dbg !179
  %flt = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17hc4c24837d33556bfE"(i32 939524096), !dbg !179
  store float %flt, ptr %flt.dbg.spill, align 4, !dbg !179
    #dbg_declare(ptr %flt.dbg.spill, !175, !DIExpression(), !180)
  %result = call zeroext i16 @float2half(float %flt), !dbg !181
  store i16 %result, ptr %result.dbg.spill, align 2, !dbg !181
    #dbg_declare(ptr %result.dbg.spill, !177, !DIExpression(), !182)
  %0 = icmp eq i16 %result, 512, !dbg !183
  ret i1 %0, !dbg !184
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_8() unnamed_addr #0 !dbg !185 {
start:
  %result.dbg.spill = alloca i16, align 2, !dbg !191
  %flt.dbg.spill = alloca float, align 4, !dbg !191
  %flt = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17hc4c24837d33556bfE"(i32 947912704), !dbg !191
  store float %flt, ptr %flt.dbg.spill, align 4, !dbg !191
    #dbg_declare(ptr %flt.dbg.spill, !187, !DIExpression(), !192)
  %result = call zeroext i16 @float2half(float %flt), !dbg !193
  store i16 %result, ptr %result.dbg.spill, align 2, !dbg !193
    #dbg_declare(ptr %result.dbg.spill, !189, !DIExpression(), !194)
  %0 = icmp eq i16 %result, 1024, !dbg !195
  ret i1 %0, !dbg !196
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_9() unnamed_addr #0 !dbg !197 {
start:
  %result.dbg.spill = alloca i16, align 2, !dbg !203
  %flt.dbg.spill = alloca float, align 4, !dbg !203
  %flt = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17hc4c24837d33556bfE"(i32 1191182336), !dbg !203
  store float %flt, ptr %flt.dbg.spill, align 4, !dbg !203
    #dbg_declare(ptr %flt.dbg.spill, !199, !DIExpression(), !204)
  %result = call zeroext i16 @float2half(float %flt), !dbg !205
  store i16 %result, ptr %result.dbg.spill, align 2, !dbg !205
    #dbg_declare(ptr %result.dbg.spill, !201, !DIExpression(), !206)
  %0 = icmp eq i16 %result, 30720, !dbg !207
  ret i1 %0, !dbg !208
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_10() unnamed_addr #0 !dbg !209 {
start:
  %result.dbg.spill = alloca i16, align 2, !dbg !215
  %flt.dbg.spill = alloca float, align 4, !dbg !215
  %flt = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17hc4c24837d33556bfE"(i32 1199570944), !dbg !215
  store float %flt, ptr %flt.dbg.spill, align 4, !dbg !215
    #dbg_declare(ptr %flt.dbg.spill, !211, !DIExpression(), !216)
  %result = call zeroext i16 @float2half(float %flt), !dbg !217
  store i16 %result, ptr %result.dbg.spill, align 2, !dbg !217
    #dbg_declare(ptr %result.dbg.spill, !213, !DIExpression(), !218)
  %0 = icmp eq i16 %result, 31744, !dbg !219
  ret i1 %0, !dbg !220
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_11() unnamed_addr #0 !dbg !221 {
start:
  %result.dbg.spill = alloca i16, align 2, !dbg !227
  %flt.dbg.spill = alloca float, align 4, !dbg !227
  %flt = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17hc4c24837d33556bfE"(i32 2130706432), !dbg !227
  store float %flt, ptr %flt.dbg.spill, align 4, !dbg !227
    #dbg_declare(ptr %flt.dbg.spill, !223, !DIExpression(), !228)
  %result = call zeroext i16 @float2half(float %flt), !dbg !229
  store i16 %result, ptr %result.dbg.spill, align 2, !dbg !229
    #dbg_declare(ptr %result.dbg.spill, !225, !DIExpression(), !230)
  %0 = icmp eq i16 %result, 31744, !dbg !231
  ret i1 %0, !dbg !232
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_12() unnamed_addr #0 !dbg !233 {
start:
  %result.dbg.spill = alloca i16, align 2
  %flt.dbg.spill = alloca float, align 4
  store float 0.000000e+00, ptr %flt.dbg.spill, align 4, !dbg !239
    #dbg_declare(ptr %flt.dbg.spill, !235, !DIExpression(), !240)
  %result = call zeroext i16 @float2half(float 0.000000e+00), !dbg !241
  store i16 %result, ptr %result.dbg.spill, align 2, !dbg !241
    #dbg_declare(ptr %result.dbg.spill, !237, !DIExpression(), !242)
  %0 = icmp eq i16 %result, -32768, !dbg !243
  ret i1 %0, !dbg !244
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_13() unnamed_addr #0 !dbg !245 {
start:
  %result.dbg.spill = alloca i16, align 2, !dbg !251
  %flt.dbg.spill = alloca float, align 4, !dbg !251
  %flt = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17hc4c24837d33556bfE"(i32 -2139095040), !dbg !251
  store float %flt, ptr %flt.dbg.spill, align 4, !dbg !251
    #dbg_declare(ptr %flt.dbg.spill, !247, !DIExpression(), !252)
  %result = call zeroext i16 @float2half(float %flt), !dbg !253
  store i16 %result, ptr %result.dbg.spill, align 2, !dbg !253
    #dbg_declare(ptr %result.dbg.spill, !249, !DIExpression(), !254)
  %0 = icmp eq i16 %result, -32768, !dbg !255
  ret i1 %0, !dbg !256
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_14() unnamed_addr #0 !dbg !257 {
start:
  %result.dbg.spill = alloca i16, align 2, !dbg !263
  %flt.dbg.spill = alloca float, align 4, !dbg !263
  %flt = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17hc4c24837d33556bfE"(i32 -1283457024), !dbg !263
  store float %flt, ptr %flt.dbg.spill, align 4, !dbg !263
    #dbg_declare(ptr %flt.dbg.spill, !259, !DIExpression(), !264)
  %result = call zeroext i16 @float2half(float %flt), !dbg !265
  store i16 %result, ptr %result.dbg.spill, align 2, !dbg !265
    #dbg_declare(ptr %result.dbg.spill, !261, !DIExpression(), !266)
  %0 = icmp eq i16 %result, -32767, !dbg !267
  ret i1 %0, !dbg !268
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_15() unnamed_addr #0 !dbg !269 {
start:
  %result.dbg.spill = alloca i16, align 2, !dbg !275
  %flt.dbg.spill = alloca float, align 4, !dbg !275
  %flt = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17hc4c24837d33556bfE"(i32 -1275068416), !dbg !275
  store float %flt, ptr %flt.dbg.spill, align 4, !dbg !275
    #dbg_declare(ptr %flt.dbg.spill, !271, !DIExpression(), !276)
  %result = call zeroext i16 @float2half(float %flt), !dbg !277
  store i16 %result, ptr %result.dbg.spill, align 2, !dbg !277
    #dbg_declare(ptr %result.dbg.spill, !273, !DIExpression(), !278)
  %0 = icmp eq i16 %result, -32766, !dbg !279
  ret i1 %0, !dbg !280
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_16() unnamed_addr #0 !dbg !281 {
start:
  %result.dbg.spill = alloca i16, align 2, !dbg !287
  %flt.dbg.spill = alloca float, align 4, !dbg !287
  %flt = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17hc4c24837d33556bfE"(i32 -956301312), !dbg !287
  store float %flt, ptr %flt.dbg.spill, align 4, !dbg !287
    #dbg_declare(ptr %flt.dbg.spill, !283, !DIExpression(), !288)
  %result = call zeroext i16 @float2half(float %flt), !dbg !289
  store i16 %result, ptr %result.dbg.spill, align 2, !dbg !289
    #dbg_declare(ptr %result.dbg.spill, !285, !DIExpression(), !290)
  %0 = icmp eq i16 %result, -2048, !dbg !291
  ret i1 %0, !dbg !292
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_17() unnamed_addr #0 !dbg !293 {
start:
  %result.dbg.spill = alloca i16, align 2, !dbg !299
  %flt.dbg.spill = alloca float, align 4, !dbg !299
  %flt = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17hc4c24837d33556bfE"(i32 -947912704), !dbg !299
  store float %flt, ptr %flt.dbg.spill, align 4, !dbg !299
    #dbg_declare(ptr %flt.dbg.spill, !295, !DIExpression(), !300)
  %result = call zeroext i16 @float2half(float %flt), !dbg !301
  store i16 %result, ptr %result.dbg.spill, align 2, !dbg !301
    #dbg_declare(ptr %result.dbg.spill, !297, !DIExpression(), !302)
  %0 = icmp eq i16 %result, -1024, !dbg !303
  ret i1 %0, !dbg !304
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_18() unnamed_addr #0 !dbg !305 {
start:
  %result.dbg.spill = alloca i16, align 2, !dbg !311
  %flt.dbg.spill = alloca float, align 4, !dbg !311
  %flt = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17hc4c24837d33556bfE"(i32 -16777216), !dbg !311
  store float %flt, ptr %flt.dbg.spill, align 4, !dbg !311
    #dbg_declare(ptr %flt.dbg.spill, !307, !DIExpression(), !312)
  %result = call zeroext i16 @float2half(float %flt), !dbg !313
  store i16 %result, ptr %result.dbg.spill, align 2, !dbg !313
    #dbg_declare(ptr %result.dbg.spill, !309, !DIExpression(), !314)
  %0 = icmp eq i16 %result, -1024, !dbg !315
  ret i1 %0, !dbg !316
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_23() unnamed_addr #0 !dbg !317 {
start:
  %result.dbg.spill = alloca i16, align 2, !dbg !323
  %flt.dbg.spill = alloca float, align 4, !dbg !323
  %flt = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17hc4c24837d33556bfE"(i32 872415231), !dbg !323
  store float %flt, ptr %flt.dbg.spill, align 4, !dbg !323
    #dbg_declare(ptr %flt.dbg.spill, !319, !DIExpression(), !324)
  %result = call zeroext i16 @float2half(float %flt), !dbg !325
  store i16 %result, ptr %result.dbg.spill, align 2, !dbg !325
    #dbg_declare(ptr %result.dbg.spill, !321, !DIExpression(), !326)
  %0 = icmp eq i16 %result, 1, !dbg !327
  ret i1 %0, !dbg !328
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_24() unnamed_addr #0 !dbg !329 {
start:
  %result.dbg.spill = alloca i16, align 2, !dbg !335
  %flt.dbg.spill = alloca float, align 4, !dbg !335
  %flt = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17hc4c24837d33556bfE"(i32 956301311), !dbg !335
  store float %flt, ptr %flt.dbg.spill, align 4, !dbg !335
    #dbg_declare(ptr %flt.dbg.spill, !331, !DIExpression(), !336)
  %result = call zeroext i16 @float2half(float %flt), !dbg !337
  store i16 %result, ptr %result.dbg.spill, align 2, !dbg !337
    #dbg_declare(ptr %result.dbg.spill, !333, !DIExpression(), !338)
  %0 = icmp eq i16 %result, 2047, !dbg !339
  ret i1 %0, !dbg !340
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_25() unnamed_addr #0 !dbg !341 {
start:
  %result.dbg.spill = alloca i16, align 2
  %flt.dbg.spill = alloca float, align 4
  store float 0.000000e+00, ptr %flt.dbg.spill, align 4, !dbg !347
    #dbg_declare(ptr %flt.dbg.spill, !343, !DIExpression(), !348)
  %result = call zeroext i16 @float2half(float 0.000000e+00), !dbg !349
  store i16 %result, ptr %result.dbg.spill, align 2, !dbg !349
    #dbg_declare(ptr %result.dbg.spill, !345, !DIExpression(), !350)
  %0 = icmp eq i16 %result, 0, !dbg !351
  ret i1 %0, !dbg !352
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_26() unnamed_addr #0 !dbg !353 {
start:
  %result.dbg.spill = alloca i16, align 2, !dbg !359
  %flt.dbg.spill = alloca float, align 4, !dbg !359
  %flt = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17hc4c24837d33556bfE"(i32 1065353216), !dbg !359
  store float %flt, ptr %flt.dbg.spill, align 4, !dbg !359
    #dbg_declare(ptr %flt.dbg.spill, !355, !DIExpression(), !360)
  %result = call zeroext i16 @float2half(float %flt), !dbg !361
  store i16 %result, ptr %result.dbg.spill, align 2, !dbg !361
    #dbg_declare(ptr %result.dbg.spill, !357, !DIExpression(), !362)
  %0 = icmp eq i16 %result, 15360, !dbg !363
  ret i1 %0, !dbg !364
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_27() unnamed_addr #0 !dbg !365 {
start:
  %result.dbg.spill = alloca i16, align 2, !dbg !371
  %flt.dbg.spill = alloca float, align 4, !dbg !371
  %flt = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17hc4c24837d33556bfE"(i32 1073741824), !dbg !371
  store float %flt, ptr %flt.dbg.spill, align 4, !dbg !371
    #dbg_declare(ptr %flt.dbg.spill, !367, !DIExpression(), !372)
  %result = call zeroext i16 @float2half(float %flt), !dbg !373
  store i16 %result, ptr %result.dbg.spill, align 2, !dbg !373
    #dbg_declare(ptr %result.dbg.spill, !369, !DIExpression(), !374)
  %0 = icmp eq i16 %result, 16384, !dbg !375
  ret i1 %0, !dbg !376
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_28() unnamed_addr #0 !dbg !377 {
start:
  %result.dbg.spill = alloca i16, align 2, !dbg !383
  %flt.dbg.spill = alloca float, align 4, !dbg !383
  %flt = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17hc4c24837d33556bfE"(i32 1056964608), !dbg !383
  store float %flt, ptr %flt.dbg.spill, align 4, !dbg !383
    #dbg_declare(ptr %flt.dbg.spill, !379, !DIExpression(), !384)
  %result = call zeroext i16 @float2half(float %flt), !dbg !385
  store i16 %result, ptr %result.dbg.spill, align 2, !dbg !385
    #dbg_declare(ptr %result.dbg.spill, !381, !DIExpression(), !386)
  %0 = icmp eq i16 %result, 14336, !dbg !387
  ret i1 %0, !dbg !388
}

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #3 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { noreturn }

!llvm.dbg.cu = !{!14}
!llvm.module.flags = !{!17, !18, !19, !20}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "M_BASE", linkageName: "_ZN14float2half_lib3src3lib6M_BASE17h6da74816cc559dd5E", scope: !2, file: !5, line: 72, type: !6, isLocal: true, isDefinition: true, align: 16)
!2 = !DINamespace(name: "lib", scope: !3)
!3 = !DINamespace(name: "src", scope: !4)
!4 = !DINamespace(name: "float2half_lib", scope: null)
!5 = !DIFile(filename: "src/lib.rs", directory: "/crisp-rust-outputs/B01_organic/float2half_lib/translated_rust", checksumkind: CSK_MD5, checksum: "bd3d8a30695ffbc9d346b73f8eba1b4a")
!6 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8192, align: 16, elements: !8)
!7 = !DIBasicType(name: "u16", size: 16, encoding: DW_ATE_unsigned)
!8 = !{!9}
!9 = !DISubrange(count: 512, lowerBound: 0)
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression())
!11 = distinct !DIGlobalVariable(name: "M_SHIFT", linkageName: "_ZN14float2half_lib3src3lib7M_SHIFT17h17a2ea6077365792E", scope: !2, file: !5, line: 73, type: !12, isLocal: true, isDefinition: true, align: 8)
!12 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 4096, align: 8, elements: !8)
!13 = !DIBasicType(name: "u8", size: 8, encoding: DW_ATE_unsigned)
!14 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !15, producer: "clang LLVM (rustc version 1.70.0-nightly (84dd17b56 2023-04-14))", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !16, splitDebugInlining: false)
!15 = !DIFile(filename: "lib.rs/@/3pc4sfau2sflq9j2", directory: "/crisp-rust-outputs/B01_organic/float2half_lib/translated_rust")
!16 = !{!0, !10}
!17 = !{i32 8, !"PIC Level", i32 2}
!18 = !{i32 2, !"RtLibUseGOT", i32 1}
!19 = !{i32 2, !"Dwarf Version", i32 4}
!20 = !{i32 2, !"Debug Info Version", i32 3}
!21 = distinct !DISubprogram(name: "float2half_ffi", linkageName: "float2half", scope: !2, file: !5, line: 82, type: !22, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, templateParams: !27, retainedNodes: !25)
!22 = !DISubroutineType(types: !23)
!23 = !{!7, !24}
!24 = !DIBasicType(name: "f32", size: 32, encoding: DW_ATE_float)
!25 = !{!26}
!26 = !DILocalVariable(name: "flt", arg: 1, scope: !21, file: !5, line: 82, type: !24)
!27 = !{}
!28 = !DILocation(line: 82, column: 34, scope: !21)
!29 = !DILocation(line: 83, column: 5, scope: !21)
!30 = !DILocation(line: 84, column: 2, scope: !21)
!31 = distinct !DISubprogram(name: "float2half", linkageName: "_ZN14float2half_lib3src3lib10float2half17h06914f8a5e76a15dE", scope: !2, file: !5, line: 75, type: !22, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, templateParams: !27, retainedNodes: !32)
!32 = !{!33, !34, !37}
!33 = !DILocalVariable(name: "flt", arg: 1, scope: !31, file: !5, line: 75, type: !24)
!34 = !DILocalVariable(name: "n", scope: !35, file: !5, line: 76, type: !36, align: 4)
!35 = distinct !DILexicalBlock(scope: !31, file: !5, line: 76, column: 5)
!36 = !DIBasicType(name: "u32", size: 32, encoding: DW_ATE_unsigned)
!37 = !DILocalVariable(name: "j", scope: !38, file: !5, line: 77, type: !39, align: 8)
!38 = distinct !DILexicalBlock(scope: !35, file: !5, line: 77, column: 5)
!39 = !DIBasicType(name: "usize", size: 64, encoding: DW_ATE_unsigned)
!40 = !DILocation(line: 75, column: 30, scope: !31)
!41 = !DILocation(line: 76, column: 24, scope: !31)
!42 = !DILocation(line: 76, column: 9, scope: !35)
!43 = !DILocation(line: 77, column: 21, scope: !35)
!44 = !DILocation(line: 77, column: 20, scope: !35)
!45 = !DILocation(line: 77, column: 9, scope: !38)
!46 = !DILocation(line: 78, column: 6, scope: !38)
!47 = !DILocation(line: 78, column: 5, scope: !38)
!48 = !DILocation(line: 78, column: 43, scope: !38)
!49 = !DILocation(line: 78, column: 61, scope: !38)
!50 = !DILocalVariable(name: "self", arg: 1, scope: !51, file: !52, line: 1188, type: !36)
!51 = distinct !DISubprogram(name: "wrapping_add", linkageName: "_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_add17ha47a709bc54d730dE", scope: !53, file: !52, line: 1188, type: !56, scopeLine: 1188, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, templateParams: !27, retainedNodes: !58)
!52 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/num/uint_macros.rs", directory: "", checksumkind: CSK_MD5, checksum: "b2a733f80e3cd43066f918bdafc87bd0")
!53 = !DINamespace(name: "{impl#8}", scope: !54)
!54 = !DINamespace(name: "num", scope: !55)
!55 = !DINamespace(name: "core", scope: null)
!56 = !DISubroutineType(types: !57)
!57 = !{!36, !36, !36}
!58 = !{!50, !59}
!59 = !DILocalVariable(name: "rhs", arg: 2, scope: !51, file: !52, line: 1188, type: !36)
!60 = !DILocation(line: 1188, column: 35, scope: !51, inlinedAt: !61)
!61 = distinct !DILocation(line: 78, column: 5, scope: !38)
!62 = !DILocation(line: 1188, column: 41, scope: !51, inlinedAt: !61)
!63 = !DILocation(line: 1189, column: 13, scope: !51, inlinedAt: !61)
!64 = !DILocation(line: 79, column: 2, scope: !31)
!65 = distinct !DISubprogram(name: "to_bits", linkageName: "_ZN4core3f3221_$LT$impl$u20$f32$GT$7to_bits17hb9e271236e8564ebE", scope: !67, file: !66, line: 998, type: !69, scopeLine: 998, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, templateParams: !27, retainedNodes: !71)
!66 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/num/f32.rs", directory: "", checksumkind: CSK_MD5, checksum: "1164a9ceed8d542109bde0277f15bb37")
!67 = !DINamespace(name: "{impl#0}", scope: !68)
!68 = !DINamespace(name: "f32", scope: !55)
!69 = !DISubroutineType(types: !70)
!70 = !{!36, !24}
!71 = !{!72}
!72 = !DILocalVariable(name: "self", arg: 1, scope: !65, file: !66, line: 998, type: !24)
!73 = !DILocation(line: 998, column: 26, scope: !65)
!74 = !DILocation(line: 1045, column: 48, scope: !65)
!75 = !DILocation(line: 1045, column: 18, scope: !65)
!76 = !DILocalVariable(name: "x", arg: 1, scope: !77, file: !66, line: 1038, type: !24)
!77 = distinct !DISubprogram(name: "rt_f32_to_u32", linkageName: "_ZN4core3f3221_$LT$impl$u20$f32$GT$7to_bits13rt_f32_to_u3217hf1ecbe9db85e8e74E", scope: !78, file: !66, line: 1038, type: !69, scopeLine: 1038, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, templateParams: !27, retainedNodes: !79)
!78 = !DINamespace(name: "to_bits", scope: !67)
!79 = !{!76}
!80 = !DILocation(line: 1038, column: 26, scope: !77, inlinedAt: !75)
!81 = !DILocation(line: 1042, column: 22, scope: !77, inlinedAt: !75)
!82 = !DILocation(line: 1046, column: 6, scope: !65)
!83 = distinct !DISubprogram(name: "run_test_1", scope: !2, file: !5, line: 87, type: !84, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, templateParams: !27, retainedNodes: !87)
!84 = !DISubroutineType(types: !85)
!85 = !{!86}
!86 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!87 = !{!88, !90}
!88 = !DILocalVariable(name: "flt", scope: !89, file: !5, line: 88, type: !24, align: 4)
!89 = distinct !DILexicalBlock(scope: !83, file: !5, line: 88, column: 5)
!90 = !DILocalVariable(name: "result", scope: !91, file: !5, line: 89, type: !7, align: 2)
!91 = distinct !DILexicalBlock(scope: !89, file: !5, line: 89, column: 5)
!92 = !DILocation(line: 88, column: 37, scope: !83)
!93 = !DILocation(line: 88, column: 9, scope: !89)
!94 = !DILocation(line: 89, column: 18, scope: !89)
!95 = !DILocation(line: 89, column: 9, scope: !91)
!96 = !DILocation(line: 90, column: 5, scope: !91)
!97 = !DILocation(line: 91, column: 2, scope: !83)
!98 = distinct !DISubprogram(name: "from_bits", linkageName: "_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17hc4c24837d33556bfE", scope: !67, file: !66, line: 1088, type: !99, scopeLine: 1088, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, templateParams: !27, retainedNodes: !101)
!99 = !DISubroutineType(types: !100)
!100 = !{!24, !36}
!101 = !{!102}
!102 = !DILocalVariable(name: "v", arg: 1, scope: !98, file: !66, line: 1088, type: !36)
!103 = !DILocation(line: 1088, column: 28, scope: !98)
!104 = !DILocation(line: 1137, column: 48, scope: !98)
!105 = !DILocation(line: 1137, column: 18, scope: !98)
!106 = !DILocalVariable(name: "x", arg: 1, scope: !107, file: !66, line: 1130, type: !36)
!107 = distinct !DISubprogram(name: "rt_u32_to_f32", linkageName: "_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits13rt_u32_to_f3217h0c6ef5d5083740aaE", scope: !108, file: !66, line: 1130, type: !99, scopeLine: 1130, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, templateParams: !27, retainedNodes: !109)
!108 = !DINamespace(name: "from_bits", scope: !67)
!109 = !{!106}
!110 = !DILocation(line: 1130, column: 26, scope: !107, inlinedAt: !105)
!111 = !DILocation(line: 1134, column: 22, scope: !107, inlinedAt: !105)
!112 = !DILocation(line: 1138, column: 6, scope: !98)
!113 = distinct !DISubprogram(name: "run_test_2", scope: !2, file: !5, line: 94, type: !84, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, templateParams: !27, retainedNodes: !114)
!114 = !{!115, !117}
!115 = !DILocalVariable(name: "flt", scope: !116, file: !5, line: 95, type: !24, align: 4)
!116 = distinct !DILexicalBlock(scope: !113, file: !5, line: 95, column: 5)
!117 = !DILocalVariable(name: "result", scope: !118, file: !5, line: 96, type: !7, align: 2)
!118 = distinct !DILexicalBlock(scope: !116, file: !5, line: 96, column: 5)
!119 = !DILocation(line: 95, column: 37, scope: !113)
!120 = !DILocation(line: 95, column: 9, scope: !116)
!121 = !DILocation(line: 96, column: 18, scope: !116)
!122 = !DILocation(line: 96, column: 9, scope: !118)
!123 = !DILocation(line: 97, column: 5, scope: !118)
!124 = !DILocation(line: 98, column: 2, scope: !113)
!125 = distinct !DISubprogram(name: "run_test_3", scope: !2, file: !5, line: 101, type: !84, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, templateParams: !27, retainedNodes: !126)
!126 = !{!127, !129}
!127 = !DILocalVariable(name: "flt", scope: !128, file: !5, line: 102, type: !24, align: 4)
!128 = distinct !DILexicalBlock(scope: !125, file: !5, line: 102, column: 5)
!129 = !DILocalVariable(name: "result", scope: !130, file: !5, line: 103, type: !7, align: 2)
!130 = distinct !DILexicalBlock(scope: !128, file: !5, line: 103, column: 5)
!131 = !DILocation(line: 102, column: 37, scope: !125)
!132 = !DILocation(line: 102, column: 9, scope: !128)
!133 = !DILocation(line: 103, column: 18, scope: !128)
!134 = !DILocation(line: 103, column: 9, scope: !130)
!135 = !DILocation(line: 104, column: 5, scope: !130)
!136 = !DILocation(line: 105, column: 2, scope: !125)
!137 = distinct !DISubprogram(name: "run_test_4", scope: !2, file: !5, line: 108, type: !84, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, templateParams: !27, retainedNodes: !138)
!138 = !{!139, !141}
!139 = !DILocalVariable(name: "flt", scope: !140, file: !5, line: 109, type: !24, align: 4)
!140 = distinct !DILexicalBlock(scope: !137, file: !5, line: 109, column: 5)
!141 = !DILocalVariable(name: "result", scope: !142, file: !5, line: 110, type: !7, align: 2)
!142 = distinct !DILexicalBlock(scope: !140, file: !5, line: 110, column: 5)
!143 = !DILocation(line: 109, column: 37, scope: !137)
!144 = !DILocation(line: 109, column: 9, scope: !140)
!145 = !DILocation(line: 110, column: 18, scope: !140)
!146 = !DILocation(line: 110, column: 9, scope: !142)
!147 = !DILocation(line: 111, column: 5, scope: !142)
!148 = !DILocation(line: 112, column: 2, scope: !137)
!149 = distinct !DISubprogram(name: "run_test_5", scope: !2, file: !5, line: 115, type: !84, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, templateParams: !27, retainedNodes: !150)
!150 = !{!151, !153}
!151 = !DILocalVariable(name: "flt", scope: !152, file: !5, line: 116, type: !24, align: 4)
!152 = distinct !DILexicalBlock(scope: !149, file: !5, line: 116, column: 5)
!153 = !DILocalVariable(name: "result", scope: !154, file: !5, line: 117, type: !7, align: 2)
!154 = distinct !DILexicalBlock(scope: !152, file: !5, line: 117, column: 5)
!155 = !DILocation(line: 116, column: 37, scope: !149)
!156 = !DILocation(line: 116, column: 9, scope: !152)
!157 = !DILocation(line: 117, column: 18, scope: !152)
!158 = !DILocation(line: 117, column: 9, scope: !154)
!159 = !DILocation(line: 118, column: 5, scope: !154)
!160 = !DILocation(line: 119, column: 2, scope: !149)
!161 = distinct !DISubprogram(name: "run_test_6", scope: !2, file: !5, line: 122, type: !84, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, templateParams: !27, retainedNodes: !162)
!162 = !{!163, !165}
!163 = !DILocalVariable(name: "flt", scope: !164, file: !5, line: 123, type: !24, align: 4)
!164 = distinct !DILexicalBlock(scope: !161, file: !5, line: 123, column: 5)
!165 = !DILocalVariable(name: "result", scope: !166, file: !5, line: 124, type: !7, align: 2)
!166 = distinct !DILexicalBlock(scope: !164, file: !5, line: 124, column: 5)
!167 = !DILocation(line: 123, column: 37, scope: !161)
!168 = !DILocation(line: 123, column: 9, scope: !164)
!169 = !DILocation(line: 124, column: 18, scope: !164)
!170 = !DILocation(line: 124, column: 9, scope: !166)
!171 = !DILocation(line: 125, column: 5, scope: !166)
!172 = !DILocation(line: 126, column: 2, scope: !161)
!173 = distinct !DISubprogram(name: "run_test_7", scope: !2, file: !5, line: 129, type: !84, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, templateParams: !27, retainedNodes: !174)
!174 = !{!175, !177}
!175 = !DILocalVariable(name: "flt", scope: !176, file: !5, line: 130, type: !24, align: 4)
!176 = distinct !DILexicalBlock(scope: !173, file: !5, line: 130, column: 5)
!177 = !DILocalVariable(name: "result", scope: !178, file: !5, line: 131, type: !7, align: 2)
!178 = distinct !DILexicalBlock(scope: !176, file: !5, line: 131, column: 5)
!179 = !DILocation(line: 130, column: 37, scope: !173)
!180 = !DILocation(line: 130, column: 9, scope: !176)
!181 = !DILocation(line: 131, column: 18, scope: !176)
!182 = !DILocation(line: 131, column: 9, scope: !178)
!183 = !DILocation(line: 132, column: 5, scope: !178)
!184 = !DILocation(line: 133, column: 2, scope: !173)
!185 = distinct !DISubprogram(name: "run_test_8", scope: !2, file: !5, line: 136, type: !84, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, templateParams: !27, retainedNodes: !186)
!186 = !{!187, !189}
!187 = !DILocalVariable(name: "flt", scope: !188, file: !5, line: 137, type: !24, align: 4)
!188 = distinct !DILexicalBlock(scope: !185, file: !5, line: 137, column: 5)
!189 = !DILocalVariable(name: "result", scope: !190, file: !5, line: 138, type: !7, align: 2)
!190 = distinct !DILexicalBlock(scope: !188, file: !5, line: 138, column: 5)
!191 = !DILocation(line: 137, column: 37, scope: !185)
!192 = !DILocation(line: 137, column: 9, scope: !188)
!193 = !DILocation(line: 138, column: 18, scope: !188)
!194 = !DILocation(line: 138, column: 9, scope: !190)
!195 = !DILocation(line: 139, column: 5, scope: !190)
!196 = !DILocation(line: 140, column: 2, scope: !185)
!197 = distinct !DISubprogram(name: "run_test_9", scope: !2, file: !5, line: 143, type: !84, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, templateParams: !27, retainedNodes: !198)
!198 = !{!199, !201}
!199 = !DILocalVariable(name: "flt", scope: !200, file: !5, line: 144, type: !24, align: 4)
!200 = distinct !DILexicalBlock(scope: !197, file: !5, line: 144, column: 5)
!201 = !DILocalVariable(name: "result", scope: !202, file: !5, line: 145, type: !7, align: 2)
!202 = distinct !DILexicalBlock(scope: !200, file: !5, line: 145, column: 5)
!203 = !DILocation(line: 144, column: 37, scope: !197)
!204 = !DILocation(line: 144, column: 9, scope: !200)
!205 = !DILocation(line: 145, column: 18, scope: !200)
!206 = !DILocation(line: 145, column: 9, scope: !202)
!207 = !DILocation(line: 146, column: 5, scope: !202)
!208 = !DILocation(line: 147, column: 2, scope: !197)
!209 = distinct !DISubprogram(name: "run_test_10", scope: !2, file: !5, line: 150, type: !84, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, templateParams: !27, retainedNodes: !210)
!210 = !{!211, !213}
!211 = !DILocalVariable(name: "flt", scope: !212, file: !5, line: 151, type: !24, align: 4)
!212 = distinct !DILexicalBlock(scope: !209, file: !5, line: 151, column: 5)
!213 = !DILocalVariable(name: "result", scope: !214, file: !5, line: 152, type: !7, align: 2)
!214 = distinct !DILexicalBlock(scope: !212, file: !5, line: 152, column: 5)
!215 = !DILocation(line: 151, column: 37, scope: !209)
!216 = !DILocation(line: 151, column: 9, scope: !212)
!217 = !DILocation(line: 152, column: 18, scope: !212)
!218 = !DILocation(line: 152, column: 9, scope: !214)
!219 = !DILocation(line: 153, column: 5, scope: !214)
!220 = !DILocation(line: 154, column: 2, scope: !209)
!221 = distinct !DISubprogram(name: "run_test_11", scope: !2, file: !5, line: 157, type: !84, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, templateParams: !27, retainedNodes: !222)
!222 = !{!223, !225}
!223 = !DILocalVariable(name: "flt", scope: !224, file: !5, line: 158, type: !24, align: 4)
!224 = distinct !DILexicalBlock(scope: !221, file: !5, line: 158, column: 5)
!225 = !DILocalVariable(name: "result", scope: !226, file: !5, line: 159, type: !7, align: 2)
!226 = distinct !DILexicalBlock(scope: !224, file: !5, line: 159, column: 5)
!227 = !DILocation(line: 158, column: 37, scope: !221)
!228 = !DILocation(line: 158, column: 9, scope: !224)
!229 = !DILocation(line: 159, column: 18, scope: !224)
!230 = !DILocation(line: 159, column: 9, scope: !226)
!231 = !DILocation(line: 160, column: 5, scope: !226)
!232 = !DILocation(line: 161, column: 2, scope: !221)
!233 = distinct !DISubprogram(name: "run_test_12", scope: !2, file: !5, line: 164, type: !84, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, templateParams: !27, retainedNodes: !234)
!234 = !{!235, !237}
!235 = !DILocalVariable(name: "flt", scope: !236, file: !5, line: 165, type: !24, align: 4)
!236 = distinct !DILexicalBlock(scope: !233, file: !5, line: 165, column: 5)
!237 = !DILocalVariable(name: "result", scope: !238, file: !5, line: 166, type: !7, align: 2)
!238 = distinct !DILexicalBlock(scope: !236, file: !5, line: 166, column: 5)
!239 = !DILocation(line: 165, column: 37, scope: !233)
!240 = !DILocation(line: 165, column: 9, scope: !236)
!241 = !DILocation(line: 166, column: 18, scope: !236)
!242 = !DILocation(line: 166, column: 9, scope: !238)
!243 = !DILocation(line: 167, column: 5, scope: !238)
!244 = !DILocation(line: 168, column: 2, scope: !233)
!245 = distinct !DISubprogram(name: "run_test_13", scope: !2, file: !5, line: 171, type: !84, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, templateParams: !27, retainedNodes: !246)
!246 = !{!247, !249}
!247 = !DILocalVariable(name: "flt", scope: !248, file: !5, line: 172, type: !24, align: 4)
!248 = distinct !DILexicalBlock(scope: !245, file: !5, line: 172, column: 5)
!249 = !DILocalVariable(name: "result", scope: !250, file: !5, line: 173, type: !7, align: 2)
!250 = distinct !DILexicalBlock(scope: !248, file: !5, line: 173, column: 5)
!251 = !DILocation(line: 172, column: 37, scope: !245)
!252 = !DILocation(line: 172, column: 9, scope: !248)
!253 = !DILocation(line: 173, column: 18, scope: !248)
!254 = !DILocation(line: 173, column: 9, scope: !250)
!255 = !DILocation(line: 174, column: 5, scope: !250)
!256 = !DILocation(line: 175, column: 2, scope: !245)
!257 = distinct !DISubprogram(name: "run_test_14", scope: !2, file: !5, line: 178, type: !84, scopeLine: 178, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, templateParams: !27, retainedNodes: !258)
!258 = !{!259, !261}
!259 = !DILocalVariable(name: "flt", scope: !260, file: !5, line: 179, type: !24, align: 4)
!260 = distinct !DILexicalBlock(scope: !257, file: !5, line: 179, column: 5)
!261 = !DILocalVariable(name: "result", scope: !262, file: !5, line: 180, type: !7, align: 2)
!262 = distinct !DILexicalBlock(scope: !260, file: !5, line: 180, column: 5)
!263 = !DILocation(line: 179, column: 37, scope: !257)
!264 = !DILocation(line: 179, column: 9, scope: !260)
!265 = !DILocation(line: 180, column: 18, scope: !260)
!266 = !DILocation(line: 180, column: 9, scope: !262)
!267 = !DILocation(line: 181, column: 5, scope: !262)
!268 = !DILocation(line: 182, column: 2, scope: !257)
!269 = distinct !DISubprogram(name: "run_test_15", scope: !2, file: !5, line: 185, type: !84, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, templateParams: !27, retainedNodes: !270)
!270 = !{!271, !273}
!271 = !DILocalVariable(name: "flt", scope: !272, file: !5, line: 186, type: !24, align: 4)
!272 = distinct !DILexicalBlock(scope: !269, file: !5, line: 186, column: 5)
!273 = !DILocalVariable(name: "result", scope: !274, file: !5, line: 187, type: !7, align: 2)
!274 = distinct !DILexicalBlock(scope: !272, file: !5, line: 187, column: 5)
!275 = !DILocation(line: 186, column: 37, scope: !269)
!276 = !DILocation(line: 186, column: 9, scope: !272)
!277 = !DILocation(line: 187, column: 18, scope: !272)
!278 = !DILocation(line: 187, column: 9, scope: !274)
!279 = !DILocation(line: 188, column: 5, scope: !274)
!280 = !DILocation(line: 189, column: 2, scope: !269)
!281 = distinct !DISubprogram(name: "run_test_16", scope: !2, file: !5, line: 192, type: !84, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, templateParams: !27, retainedNodes: !282)
!282 = !{!283, !285}
!283 = !DILocalVariable(name: "flt", scope: !284, file: !5, line: 193, type: !24, align: 4)
!284 = distinct !DILexicalBlock(scope: !281, file: !5, line: 193, column: 5)
!285 = !DILocalVariable(name: "result", scope: !286, file: !5, line: 194, type: !7, align: 2)
!286 = distinct !DILexicalBlock(scope: !284, file: !5, line: 194, column: 5)
!287 = !DILocation(line: 193, column: 37, scope: !281)
!288 = !DILocation(line: 193, column: 9, scope: !284)
!289 = !DILocation(line: 194, column: 18, scope: !284)
!290 = !DILocation(line: 194, column: 9, scope: !286)
!291 = !DILocation(line: 195, column: 5, scope: !286)
!292 = !DILocation(line: 196, column: 2, scope: !281)
!293 = distinct !DISubprogram(name: "run_test_17", scope: !2, file: !5, line: 199, type: !84, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, templateParams: !27, retainedNodes: !294)
!294 = !{!295, !297}
!295 = !DILocalVariable(name: "flt", scope: !296, file: !5, line: 200, type: !24, align: 4)
!296 = distinct !DILexicalBlock(scope: !293, file: !5, line: 200, column: 5)
!297 = !DILocalVariable(name: "result", scope: !298, file: !5, line: 201, type: !7, align: 2)
!298 = distinct !DILexicalBlock(scope: !296, file: !5, line: 201, column: 5)
!299 = !DILocation(line: 200, column: 37, scope: !293)
!300 = !DILocation(line: 200, column: 9, scope: !296)
!301 = !DILocation(line: 201, column: 18, scope: !296)
!302 = !DILocation(line: 201, column: 9, scope: !298)
!303 = !DILocation(line: 202, column: 5, scope: !298)
!304 = !DILocation(line: 203, column: 2, scope: !293)
!305 = distinct !DISubprogram(name: "run_test_18", scope: !2, file: !5, line: 206, type: !84, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, templateParams: !27, retainedNodes: !306)
!306 = !{!307, !309}
!307 = !DILocalVariable(name: "flt", scope: !308, file: !5, line: 207, type: !24, align: 4)
!308 = distinct !DILexicalBlock(scope: !305, file: !5, line: 207, column: 5)
!309 = !DILocalVariable(name: "result", scope: !310, file: !5, line: 208, type: !7, align: 2)
!310 = distinct !DILexicalBlock(scope: !308, file: !5, line: 208, column: 5)
!311 = !DILocation(line: 207, column: 37, scope: !305)
!312 = !DILocation(line: 207, column: 9, scope: !308)
!313 = !DILocation(line: 208, column: 18, scope: !308)
!314 = !DILocation(line: 208, column: 9, scope: !310)
!315 = !DILocation(line: 209, column: 5, scope: !310)
!316 = !DILocation(line: 210, column: 2, scope: !305)
!317 = distinct !DISubprogram(name: "run_test_23", scope: !2, file: !5, line: 213, type: !84, scopeLine: 213, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, templateParams: !27, retainedNodes: !318)
!318 = !{!319, !321}
!319 = !DILocalVariable(name: "flt", scope: !320, file: !5, line: 214, type: !24, align: 4)
!320 = distinct !DILexicalBlock(scope: !317, file: !5, line: 214, column: 5)
!321 = !DILocalVariable(name: "result", scope: !322, file: !5, line: 215, type: !7, align: 2)
!322 = distinct !DILexicalBlock(scope: !320, file: !5, line: 215, column: 5)
!323 = !DILocation(line: 214, column: 37, scope: !317)
!324 = !DILocation(line: 214, column: 9, scope: !320)
!325 = !DILocation(line: 215, column: 18, scope: !320)
!326 = !DILocation(line: 215, column: 9, scope: !322)
!327 = !DILocation(line: 216, column: 5, scope: !322)
!328 = !DILocation(line: 217, column: 2, scope: !317)
!329 = distinct !DISubprogram(name: "run_test_24", scope: !2, file: !5, line: 220, type: !84, scopeLine: 220, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, templateParams: !27, retainedNodes: !330)
!330 = !{!331, !333}
!331 = !DILocalVariable(name: "flt", scope: !332, file: !5, line: 221, type: !24, align: 4)
!332 = distinct !DILexicalBlock(scope: !329, file: !5, line: 221, column: 5)
!333 = !DILocalVariable(name: "result", scope: !334, file: !5, line: 222, type: !7, align: 2)
!334 = distinct !DILexicalBlock(scope: !332, file: !5, line: 222, column: 5)
!335 = !DILocation(line: 221, column: 37, scope: !329)
!336 = !DILocation(line: 221, column: 9, scope: !332)
!337 = !DILocation(line: 222, column: 18, scope: !332)
!338 = !DILocation(line: 222, column: 9, scope: !334)
!339 = !DILocation(line: 223, column: 5, scope: !334)
!340 = !DILocation(line: 224, column: 2, scope: !329)
!341 = distinct !DISubprogram(name: "run_test_25", scope: !2, file: !5, line: 227, type: !84, scopeLine: 227, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, templateParams: !27, retainedNodes: !342)
!342 = !{!343, !345}
!343 = !DILocalVariable(name: "flt", scope: !344, file: !5, line: 228, type: !24, align: 4)
!344 = distinct !DILexicalBlock(scope: !341, file: !5, line: 228, column: 5)
!345 = !DILocalVariable(name: "result", scope: !346, file: !5, line: 229, type: !7, align: 2)
!346 = distinct !DILexicalBlock(scope: !344, file: !5, line: 229, column: 5)
!347 = !DILocation(line: 228, column: 37, scope: !341)
!348 = !DILocation(line: 228, column: 9, scope: !344)
!349 = !DILocation(line: 229, column: 18, scope: !344)
!350 = !DILocation(line: 229, column: 9, scope: !346)
!351 = !DILocation(line: 230, column: 5, scope: !346)
!352 = !DILocation(line: 231, column: 2, scope: !341)
!353 = distinct !DISubprogram(name: "run_test_26", scope: !2, file: !5, line: 234, type: !84, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, templateParams: !27, retainedNodes: !354)
!354 = !{!355, !357}
!355 = !DILocalVariable(name: "flt", scope: !356, file: !5, line: 235, type: !24, align: 4)
!356 = distinct !DILexicalBlock(scope: !353, file: !5, line: 235, column: 5)
!357 = !DILocalVariable(name: "result", scope: !358, file: !5, line: 236, type: !7, align: 2)
!358 = distinct !DILexicalBlock(scope: !356, file: !5, line: 236, column: 5)
!359 = !DILocation(line: 235, column: 37, scope: !353)
!360 = !DILocation(line: 235, column: 9, scope: !356)
!361 = !DILocation(line: 236, column: 18, scope: !356)
!362 = !DILocation(line: 236, column: 9, scope: !358)
!363 = !DILocation(line: 237, column: 5, scope: !358)
!364 = !DILocation(line: 238, column: 2, scope: !353)
!365 = distinct !DISubprogram(name: "run_test_27", scope: !2, file: !5, line: 241, type: !84, scopeLine: 241, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, templateParams: !27, retainedNodes: !366)
!366 = !{!367, !369}
!367 = !DILocalVariable(name: "flt", scope: !368, file: !5, line: 242, type: !24, align: 4)
!368 = distinct !DILexicalBlock(scope: !365, file: !5, line: 242, column: 5)
!369 = !DILocalVariable(name: "result", scope: !370, file: !5, line: 243, type: !7, align: 2)
!370 = distinct !DILexicalBlock(scope: !368, file: !5, line: 243, column: 5)
!371 = !DILocation(line: 242, column: 37, scope: !365)
!372 = !DILocation(line: 242, column: 9, scope: !368)
!373 = !DILocation(line: 243, column: 18, scope: !368)
!374 = !DILocation(line: 243, column: 9, scope: !370)
!375 = !DILocation(line: 244, column: 5, scope: !370)
!376 = !DILocation(line: 245, column: 2, scope: !365)
!377 = distinct !DISubprogram(name: "run_test_28", scope: !2, file: !5, line: 248, type: !84, scopeLine: 248, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, templateParams: !27, retainedNodes: !378)
!378 = !{!379, !381}
!379 = !DILocalVariable(name: "flt", scope: !380, file: !5, line: 249, type: !24, align: 4)
!380 = distinct !DILexicalBlock(scope: !377, file: !5, line: 249, column: 5)
!381 = !DILocalVariable(name: "result", scope: !382, file: !5, line: 250, type: !7, align: 2)
!382 = distinct !DILexicalBlock(scope: !380, file: !5, line: 250, column: 5)
!383 = !DILocation(line: 249, column: 37, scope: !377)
!384 = !DILocation(line: 249, column: 9, scope: !380)
!385 = !DILocation(line: 250, column: 18, scope: !380)
!386 = !DILocation(line: 250, column: 9, scope: !382)
!387 = !DILocation(line: 251, column: 5, scope: !382)
!388 = !DILocation(line: 252, column: 2, scope: !377)
