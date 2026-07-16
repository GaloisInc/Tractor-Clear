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

@alloc_f5ffd2fd1476bab43ad89fb40c72d0c5 = private unnamed_addr constant <{ [10 x i8] }> <{ [10 x i8] c"src/lib.rs" }>, align 1
@alloc_d6ddd4180c5459cc84d0a08e8253088a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\14\00\00\00\0C\00\00\00" }>, align 8
@str.0 = internal constant [28 x i8] c"attempt to add with overflow"
@alloc_e43b5a971b1b591750a1361ced8edf7b = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\15\00\00\00\0C\00\00\00" }>, align 8
@str.1 = internal constant [33 x i8] c"attempt to subtract with overflow"
@alloc_32d7e1f0fa65659655c395b259c622d7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\002\00\00\00\0D\00\00\00" }>, align 8
@str.2 = internal constant [33 x i8] c"attempt to multiply with overflow"
@alloc_29272b52d64967274a0b5e929695cbca = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\002\00\00\00\0C\00\00\00" }>, align 8
@alloc_b38409f3e1c67300cf3cdfa45a52bf25 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\004\00\00\00\10\00\00\00" }>, align 8
@str.3 = internal constant [31 x i8] c"attempt to negate with overflow"
@alloc_da391e30797b1e7f20184e16b31bd61e = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\006\00\00\00\0E\00\00\00" }>, align 8
@alloc_888ce1ac969f239e42d00aa267812496 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\007\00\00\00\0A\00\00\00" }>, align 8
@alloc_4fb2bb7d234d88c268cd0278aaee3d76 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00:\00\00\00\0D\00\00\00" }>, align 8
@alloc_4f4600897c4a56f99e1a677ab978f4de = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00:\00\00\00\0C\00\00\00" }>, align 8
@alloc_a42db8b4a75888d8cf068f9e0bdee762 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00<\00\00\00\10\00\00\00" }>, align 8
@alloc_fee20dcf54bb854ccd3947414d115b90 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00>\00\00\00\0E\00\00\00" }>, align 8
@alloc_4b39757b6afbe2e4b81b5bba0f0a9cd1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00?\00\00\00\0A\00\00\00" }>, align 8
@alloc_11cd1e91bc4ab1224b1a7b811ca849f6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00B\00\00\00\0D\00\00\00" }>, align 8
@alloc_bc5945034b8b20feaa98552d8c8c3da9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00B\00\00\00\0C\00\00\00" }>, align 8
@alloc_4b38fc73a6acd3a427858c8d41f41012 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00D\00\00\00\10\00\00\00" }>, align 8
@alloc_15105f1d8f2bd5e11c053f61d54aa2b8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00F\00\00\00\0E\00\00\00" }>, align 8
@alloc_91f5570ca6d0556ba204c79440903f5c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00G\00\00\00\0A\00\00\00" }>, align 8
@alloc_d0d845d216e3b85be9ac93c85b013143 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00J\00\00\00\0A\00\00\00" }>, align 8
@alloc_48d1039bac1ad72ff0267fc8d3112a01 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00L\00\00\00\05\00\00\00" }>, align 8
@alloc_681267d27e37f0e6c6232ed56f76bcc8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00N\00\00\00\0A\00\00\00" }>, align 8
@alloc_4bbb76dba03fa24d635ad2f2aaf2d698 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00P\00\00\00\05\00\00\00" }>, align 8
@alloc_ae99b7348057c7d60125e3115209dd36 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00R\00\00\00\0A\00\00\00" }>, align 8
@alloc_afe5fff3904874d7813e6057263f3d85 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00T\00\00\00\05\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define i32 @encode_quant(i32 %uni, i32 %step, i32 %pred, i32 %tgt, i32 %tgt2, i32 %lsbit) unnamed_addr #0 !dbg !6 {
start:
  %lsbit.dbg.spill = alloca i32, align 4
  %tgt2.dbg.spill = alloca i32, align 4
  %tgt.dbg.spill = alloca i32, align 4
  %pred.dbg.spill = alloca i32, align 4
  %step.dbg.spill = alloca i32, align 4
  %uni.dbg.spill = alloca i32, align 4
  store i32 %uni, ptr %uni.dbg.spill, align 4
    #dbg_declare(ptr %uni.dbg.spill, !15, !DIExpression(), !22)
  store i32 %step, ptr %step.dbg.spill, align 4
    #dbg_declare(ptr %step.dbg.spill, !16, !DIExpression(), !23)
  store i32 %pred, ptr %pred.dbg.spill, align 4
    #dbg_declare(ptr %pred.dbg.spill, !17, !DIExpression(), !24)
  store i32 %tgt, ptr %tgt.dbg.spill, align 4
    #dbg_declare(ptr %tgt.dbg.spill, !18, !DIExpression(), !25)
  store i32 %tgt2, ptr %tgt2.dbg.spill, align 4
    #dbg_declare(ptr %tgt2.dbg.spill, !19, !DIExpression(), !26)
  store i32 %lsbit, ptr %lsbit.dbg.spill, align 4
    #dbg_declare(ptr %lsbit.dbg.spill, !20, !DIExpression(), !27)
  %0 = call i32 @_ZN16encode_quant_lib3src3lib12encode_quant17h9cbfa90afd2f9f2eE(i32 %uni, i32 %step, i32 %pred, i32 %tgt, i32 %tgt2, i32 %lsbit), !dbg !28
  ret i32 %0, !dbg !29
}

; Function Attrs: nonlazybind uwtable
define internal i32 @_ZN16encode_quant_lib3src3lib12encode_quant17h9cbfa90afd2f9f2eE(i32 %0, i32 %step, i32 %pred, i32 %tgt, i32 %tgt2, i32 %lsbit) unnamed_addr #0 !dbg !30 {
start:
  %p2.dbg.spill = alloca i32, align 4
  %p1.dbg.spill = alloca i32, align 4
  %p0.dbg.spill = alloca i32, align 4
  %lsbit.dbg.spill = alloca i32, align 4
  %tgt2.dbg.spill = alloca i32, align 4
  %tgt.dbg.spill = alloca i32, align 4
  %pred.dbg.spill = alloca i32, align 4
  %step.dbg.spill = alloca i32, align 4
  %d3 = alloca i32, align 4
  %d2 = alloca i32, align 4
  %d1 = alloca i32, align 4
  %d0 = alloca i32, align 4
  %diff = alloca i32, align 4
  %uni2 = alloca i32, align 4
  %uni1 = alloca i32, align 4
  %uni = alloca i32, align 4
  store i32 %0, ptr %uni, align 4
    #dbg_declare(ptr %uni, !32, !DIExpression(), !64)
  store i32 %step, ptr %step.dbg.spill, align 4
    #dbg_declare(ptr %step.dbg.spill, !33, !DIExpression(), !65)
  store i32 %pred, ptr %pred.dbg.spill, align 4
    #dbg_declare(ptr %pred.dbg.spill, !34, !DIExpression(), !66)
  store i32 %tgt, ptr %tgt.dbg.spill, align 4
    #dbg_declare(ptr %tgt.dbg.spill, !35, !DIExpression(), !67)
  store i32 %tgt2, ptr %tgt2.dbg.spill, align 4
    #dbg_declare(ptr %tgt2.dbg.spill, !36, !DIExpression(), !68)
  store i32 %lsbit, ptr %lsbit.dbg.spill, align 4
    #dbg_declare(ptr %lsbit.dbg.spill, !37, !DIExpression(), !69)
    #dbg_declare(ptr %uni1, !38, !DIExpression(), !70)
    #dbg_declare(ptr %uni2, !40, !DIExpression(), !71)
    #dbg_declare(ptr %diff, !42, !DIExpression(), !72)
    #dbg_declare(ptr %d0, !50, !DIExpression(), !73)
    #dbg_declare(ptr %d1, !52, !DIExpression(), !74)
    #dbg_declare(ptr %d2, !54, !DIExpression(), !75)
    #dbg_declare(ptr %d3, !56, !DIExpression(), !76)
  %_17 = load i32, ptr %uni, align 4, !dbg !77, !noundef !21
  %1 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_17, i32 1), !dbg !77
  %_18.0 = extractvalue { i32, i1 } %1, 0, !dbg !77
  %_18.1 = extractvalue { i32, i1 } %1, 1, !dbg !77
  %2 = call i1 @llvm.expect.i1(i1 %_18.1, i1 false), !dbg !77
  br i1 %2, label %panic, label %bb1, !dbg !77

bb1:                                              ; preds = %start
  store i32 %_18.0, ptr %uni1, align 4, !dbg !78
  %_19 = load i32, ptr %uni, align 4, !dbg !79, !noundef !21
  %3 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_19, i32 1), !dbg !79
  %_20.0 = extractvalue { i32, i1 } %3, 0, !dbg !79
  %_20.1 = extractvalue { i32, i1 } %3, 1, !dbg !79
  %4 = call i1 @llvm.expect.i1(i1 %_20.1, i1 false), !dbg !79
  br i1 %4, label %panic1, label %bb2, !dbg !79

panic:                                            ; preds = %start
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.0, i64 28, ptr align 8 @alloc_d6ddd4180c5459cc84d0a08e8253088a) #4, !dbg !77
  unreachable, !dbg !77

bb2:                                              ; preds = %bb1
  store i32 %_20.0, ptr %uni2, align 4, !dbg !80
  %_23 = load i32, ptr %uni, align 4, !dbg !81, !noundef !21
  %_24 = load i32, ptr %uni1, align 4, !dbg !82, !noundef !21
  %_22 = xor i32 %_23, %_24, !dbg !83
  %_21 = and i32 %_22, -8, !dbg !83
  %5 = icmp eq i32 %_21, 0, !dbg !83
  br i1 %5, label %bb4, label %bb3, !dbg !83

panic1:                                           ; preds = %bb1
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.1, i64 33, ptr align 8 @alloc_e43b5a971b1b591750a1361ced8edf7b) #4, !dbg !79
  unreachable, !dbg !79

bb4:                                              ; preds = %bb3, %bb2
  %_29 = load i32, ptr %uni, align 4, !dbg !84, !noundef !21
  %_30 = load i32, ptr %uni2, align 4, !dbg !85, !noundef !21
  %_28 = xor i32 %_29, %_30, !dbg !86
  %_27 = and i32 %_28, -8, !dbg !86
  %6 = icmp eq i32 %_27, 0, !dbg !86
  br i1 %6, label %bb6, label %bb5, !dbg !86

bb3:                                              ; preds = %bb2
  %_26 = load i32, ptr %uni, align 4, !dbg !87, !noundef !21
  store i32 %_26, ptr %uni1, align 4, !dbg !88
  br label %bb4, !dbg !89

bb6:                                              ; preds = %bb5, %bb4
  %7 = icmp eq i32 %lsbit, 0, !dbg !90
  br i1 %7, label %bb12, label %bb7, !dbg !90

bb5:                                              ; preds = %bb4
  %_32 = load i32, ptr %uni, align 4, !dbg !91, !noundef !21
  store i32 %_32, ptr %uni2, align 4, !dbg !92
  br label %bb6, !dbg !93

bb12:                                             ; preds = %bb10, %bb11, %bb8, %bb6
  %_62 = load i32, ptr %uni, align 4, !dbg !94, !noundef !21
  %_61 = and i32 %_62, 7, !dbg !95
  %8 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 2, i32 %_61), !dbg !96
  %_63.0 = extractvalue { i32, i1 } %8, 0, !dbg !96
  %_63.1 = extractvalue { i32, i1 } %8, 1, !dbg !96
  %9 = call i1 @llvm.expect.i1(i1 %_63.1, i1 false), !dbg !96
  br i1 %9, label %panic2, label %bb13, !dbg !96

bb7:                                              ; preds = %bb6
  %10 = icmp eq i32 %lsbit, 4, !dbg !97
  br i1 %10, label %bb8, label %bb9, !dbg !97

bb8:                                              ; preds = %bb7
  %11 = load i32, ptr %uni, align 4, !dbg !98, !noundef !21
  %12 = and i32 %11, -2, !dbg !98
  store i32 %12, ptr %uni, align 4, !dbg !98
  %13 = load i32, ptr %uni1, align 4, !dbg !99, !noundef !21
  %14 = and i32 %13, -2, !dbg !99
  store i32 %14, ptr %uni1, align 4, !dbg !99
  %15 = load i32, ptr %uni2, align 4, !dbg !100, !noundef !21
  %16 = and i32 %15, -2, !dbg !100
  store i32 %16, ptr %uni2, align 4, !dbg !100
  %_39 = load i32, ptr %uni, align 4, !dbg !101, !noundef !21
  %_38 = ashr i32 %_39, 1, !dbg !102
  %_41 = load i32, ptr %uni, align 4, !dbg !103, !noundef !21
  %_40 = ashr i32 %_41, 2, !dbg !104
  %_37 = and i32 %_38, %_40, !dbg !102
  %_36 = and i32 %_37, 1, !dbg !102
  %17 = load i32, ptr %uni, align 4, !dbg !105, !noundef !21
  %18 = or i32 %17, %_36, !dbg !105
  store i32 %18, ptr %uni, align 4, !dbg !105
  %_45 = load i32, ptr %uni1, align 4, !dbg !106, !noundef !21
  %_44 = ashr i32 %_45, 1, !dbg !107
  %_47 = load i32, ptr %uni1, align 4, !dbg !108, !noundef !21
  %_46 = ashr i32 %_47, 2, !dbg !109
  %_43 = and i32 %_44, %_46, !dbg !107
  %_42 = and i32 %_43, 1, !dbg !107
  %19 = load i32, ptr %uni1, align 4, !dbg !110, !noundef !21
  %20 = or i32 %19, %_42, !dbg !110
  store i32 %20, ptr %uni1, align 4, !dbg !110
  %_51 = load i32, ptr %uni2, align 4, !dbg !111, !noundef !21
  %_50 = ashr i32 %_51, 1, !dbg !112
  %_53 = load i32, ptr %uni2, align 4, !dbg !113, !noundef !21
  %_52 = ashr i32 %_53, 2, !dbg !114
  %_49 = and i32 %_50, %_52, !dbg !112
  %_48 = and i32 %_49, 1, !dbg !112
  %21 = load i32, ptr %uni2, align 4, !dbg !115, !noundef !21
  %22 = or i32 %21, %_48, !dbg !115
  store i32 %22, ptr %uni2, align 4, !dbg !115
  br label %bb12, !dbg !116

bb9:                                              ; preds = %bb7
  %_54 = and i32 %lsbit, 1, !dbg !117
  %23 = icmp eq i32 %_54, 0, !dbg !117
  br i1 %23, label %bb11, label %bb10, !dbg !117

bb11:                                             ; preds = %bb9
  %24 = load i32, ptr %uni, align 4, !dbg !118, !noundef !21
  %25 = and i32 %24, -2, !dbg !118
  store i32 %25, ptr %uni, align 4, !dbg !118
  %26 = load i32, ptr %uni1, align 4, !dbg !119, !noundef !21
  %27 = and i32 %26, -2, !dbg !119
  store i32 %27, ptr %uni1, align 4, !dbg !119
  %28 = load i32, ptr %uni2, align 4, !dbg !120, !noundef !21
  %29 = and i32 %28, -2, !dbg !120
  store i32 %29, ptr %uni2, align 4, !dbg !120
  br label %bb12, !dbg !121

bb10:                                             ; preds = %bb9
  %30 = load i32, ptr %uni, align 4, !dbg !122, !noundef !21
  %31 = or i32 %30, 1, !dbg !122
  store i32 %31, ptr %uni, align 4, !dbg !122
  %32 = load i32, ptr %uni1, align 4, !dbg !123, !noundef !21
  %33 = or i32 %32, 1, !dbg !123
  store i32 %33, ptr %uni1, align 4, !dbg !123
  %34 = load i32, ptr %uni2, align 4, !dbg !124, !noundef !21
  %35 = or i32 %34, 1, !dbg !124
  store i32 %35, ptr %uni2, align 4, !dbg !124
  br label %bb12, !dbg !121

bb13:                                             ; preds = %bb12
  %36 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_63.0, i32 1), !dbg !125
  %_64.0 = extractvalue { i32, i1 } %36, 0, !dbg !125
  %_64.1 = extractvalue { i32, i1 } %36, 1, !dbg !125
  %37 = call i1 @llvm.expect.i1(i1 %_64.1, i1 false), !dbg !125
  br i1 %37, label %panic3, label %bb14, !dbg !125

panic2:                                           ; preds = %bb12
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.2, i64 33, ptr align 8 @alloc_32d7e1f0fa65659655c395b259c622d7) #4, !dbg !96
  unreachable, !dbg !96

bb14:                                             ; preds = %bb13
  %38 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_64.0, i32 %step), !dbg !125
  %_65.0 = extractvalue { i32, i1 } %38, 0, !dbg !125
  %_65.1 = extractvalue { i32, i1 } %38, 1, !dbg !125
  %39 = call i1 @llvm.expect.i1(i1 %_65.1, i1 false), !dbg !125
  br i1 %39, label %panic4, label %bb15, !dbg !125

panic3:                                           ; preds = %bb13
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.0, i64 28, ptr align 8 @alloc_29272b52d64967274a0b5e929695cbca) #4, !dbg !125
  unreachable, !dbg !125

bb15:                                             ; preds = %bb14
  %40 = sdiv i32 %_65.0, 8, !dbg !126
  store i32 %40, ptr %diff, align 4, !dbg !126
  %_67 = load i32, ptr %uni, align 4, !dbg !127, !noundef !21
  %_66 = and i32 %_67, 8, !dbg !128
  %41 = icmp eq i32 %_66, 0, !dbg !128
  br i1 %41, label %bb18, label %bb16, !dbg !128

panic4:                                           ; preds = %bb14
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.2, i64 33, ptr align 8 @alloc_29272b52d64967274a0b5e929695cbca) #4, !dbg !125
  unreachable, !dbg !125

bb18:                                             ; preds = %bb17, %bb15
  %_71 = load i32, ptr %diff, align 4, !dbg !129, !noundef !21
  %42 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %pred, i32 %_71), !dbg !130
  %_72.0 = extractvalue { i32, i1 } %42, 0, !dbg !130
  %_72.1 = extractvalue { i32, i1 } %42, 1, !dbg !130
  %43 = call i1 @llvm.expect.i1(i1 %_72.1, i1 false), !dbg !130
  br i1 %43, label %panic6, label %bb19, !dbg !130

bb16:                                             ; preds = %bb15
  %_68 = load i32, ptr %diff, align 4, !dbg !131, !noundef !21
  %_69 = icmp eq i32 %_68, -2147483648, !dbg !132
  %44 = call i1 @llvm.expect.i1(i1 %_69, i1 false), !dbg !132
  br i1 %44, label %panic5, label %bb17, !dbg !132

bb17:                                             ; preds = %bb16
  %45 = sub i32 0, %_68, !dbg !133
  store i32 %45, ptr %diff, align 4, !dbg !133
  br label %bb18, !dbg !134

panic5:                                           ; preds = %bb16
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.3, i64 31, ptr align 8 @alloc_b38409f3e1c67300cf3cdfa45a52bf25) #4, !dbg !132
  unreachable, !dbg !132

bb19:                                             ; preds = %bb18
  store i32 %_72.0, ptr %p0.dbg.spill, align 4, !dbg !130
    #dbg_declare(ptr %p0.dbg.spill, !58, !DIExpression(), !135)
  %46 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %tgt, i32 %_72.0), !dbg !136
  %_73.0 = extractvalue { i32, i1 } %46, 0, !dbg !136
  %_73.1 = extractvalue { i32, i1 } %46, 1, !dbg !136
  %47 = call i1 @llvm.expect.i1(i1 %_73.1, i1 false), !dbg !136
  br i1 %47, label %panic7, label %bb20, !dbg !136

panic6:                                           ; preds = %bb18
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.0, i64 28, ptr align 8 @alloc_da391e30797b1e7f20184e16b31bd61e) #4, !dbg !130
  unreachable, !dbg !130

bb20:                                             ; preds = %bb19
  store i32 %_73.0, ptr %d0, align 4, !dbg !137
  %_75 = load i32, ptr %d0, align 4, !dbg !138, !noundef !21
  %_74 = ashr i32 %_75, 31, !dbg !138
  %48 = load i32, ptr %d0, align 4, !dbg !139, !noundef !21
  %49 = xor i32 %48, %_74, !dbg !139
  store i32 %49, ptr %d0, align 4, !dbg !139
  %_80 = load i32, ptr %uni1, align 4, !dbg !140, !noundef !21
  %_79 = and i32 %_80, 7, !dbg !141
  %50 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 2, i32 %_79), !dbg !142
  %_81.0 = extractvalue { i32, i1 } %50, 0, !dbg !142
  %_81.1 = extractvalue { i32, i1 } %50, 1, !dbg !142
  %51 = call i1 @llvm.expect.i1(i1 %_81.1, i1 false), !dbg !142
  br i1 %51, label %panic8, label %bb21, !dbg !142

panic7:                                           ; preds = %bb19
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.1, i64 33, ptr align 8 @alloc_888ce1ac969f239e42d00aa267812496) #4, !dbg !136
  unreachable, !dbg !136

bb21:                                             ; preds = %bb20
  %52 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_81.0, i32 1), !dbg !143
  %_82.0 = extractvalue { i32, i1 } %52, 0, !dbg !143
  %_82.1 = extractvalue { i32, i1 } %52, 1, !dbg !143
  %53 = call i1 @llvm.expect.i1(i1 %_82.1, i1 false), !dbg !143
  br i1 %53, label %panic9, label %bb22, !dbg !143

panic8:                                           ; preds = %bb20
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.2, i64 33, ptr align 8 @alloc_4fb2bb7d234d88c268cd0278aaee3d76) #4, !dbg !142
  unreachable, !dbg !142

bb22:                                             ; preds = %bb21
  %54 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_82.0, i32 %step), !dbg !143
  %_83.0 = extractvalue { i32, i1 } %54, 0, !dbg !143
  %_83.1 = extractvalue { i32, i1 } %54, 1, !dbg !143
  %55 = call i1 @llvm.expect.i1(i1 %_83.1, i1 false), !dbg !143
  br i1 %55, label %panic10, label %bb23, !dbg !143

panic9:                                           ; preds = %bb21
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.0, i64 28, ptr align 8 @alloc_4f4600897c4a56f99e1a677ab978f4de) #4, !dbg !143
  unreachable, !dbg !143

bb23:                                             ; preds = %bb22
  %56 = sdiv i32 %_83.0, 8, !dbg !144
  store i32 %56, ptr %diff, align 4, !dbg !144
  %_85 = load i32, ptr %uni1, align 4, !dbg !145, !noundef !21
  %_84 = and i32 %_85, 8, !dbg !146
  %57 = icmp eq i32 %_84, 0, !dbg !146
  br i1 %57, label %bb26, label %bb24, !dbg !146

panic10:                                          ; preds = %bb22
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.2, i64 33, ptr align 8 @alloc_4f4600897c4a56f99e1a677ab978f4de) #4, !dbg !143
  unreachable, !dbg !143

bb26:                                             ; preds = %bb25, %bb23
  %_89 = load i32, ptr %diff, align 4, !dbg !147, !noundef !21
  %58 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %pred, i32 %_89), !dbg !148
  %_90.0 = extractvalue { i32, i1 } %58, 0, !dbg !148
  %_90.1 = extractvalue { i32, i1 } %58, 1, !dbg !148
  %59 = call i1 @llvm.expect.i1(i1 %_90.1, i1 false), !dbg !148
  br i1 %59, label %panic12, label %bb27, !dbg !148

bb24:                                             ; preds = %bb23
  %_86 = load i32, ptr %diff, align 4, !dbg !149, !noundef !21
  %_87 = icmp eq i32 %_86, -2147483648, !dbg !150
  %60 = call i1 @llvm.expect.i1(i1 %_87, i1 false), !dbg !150
  br i1 %60, label %panic11, label %bb25, !dbg !150

bb25:                                             ; preds = %bb24
  %61 = sub i32 0, %_86, !dbg !151
  store i32 %61, ptr %diff, align 4, !dbg !151
  br label %bb26, !dbg !152

panic11:                                          ; preds = %bb24
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.3, i64 31, ptr align 8 @alloc_a42db8b4a75888d8cf068f9e0bdee762) #4, !dbg !150
  unreachable, !dbg !150

bb27:                                             ; preds = %bb26
  store i32 %_90.0, ptr %p1.dbg.spill, align 4, !dbg !148
    #dbg_declare(ptr %p1.dbg.spill, !60, !DIExpression(), !153)
  %62 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %tgt, i32 %_90.0), !dbg !154
  %_91.0 = extractvalue { i32, i1 } %62, 0, !dbg !154
  %_91.1 = extractvalue { i32, i1 } %62, 1, !dbg !154
  %63 = call i1 @llvm.expect.i1(i1 %_91.1, i1 false), !dbg !154
  br i1 %63, label %panic13, label %bb28, !dbg !154

panic12:                                          ; preds = %bb26
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.0, i64 28, ptr align 8 @alloc_fee20dcf54bb854ccd3947414d115b90) #4, !dbg !148
  unreachable, !dbg !148

bb28:                                             ; preds = %bb27
  store i32 %_91.0, ptr %d1, align 4, !dbg !155
  %_93 = load i32, ptr %d1, align 4, !dbg !156, !noundef !21
  %_92 = ashr i32 %_93, 31, !dbg !156
  %64 = load i32, ptr %d1, align 4, !dbg !157, !noundef !21
  %65 = xor i32 %64, %_92, !dbg !157
  store i32 %65, ptr %d1, align 4, !dbg !157
  %_98 = load i32, ptr %uni2, align 4, !dbg !158, !noundef !21
  %_97 = and i32 %_98, 7, !dbg !159
  %66 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 2, i32 %_97), !dbg !160
  %_99.0 = extractvalue { i32, i1 } %66, 0, !dbg !160
  %_99.1 = extractvalue { i32, i1 } %66, 1, !dbg !160
  %67 = call i1 @llvm.expect.i1(i1 %_99.1, i1 false), !dbg !160
  br i1 %67, label %panic14, label %bb29, !dbg !160

panic13:                                          ; preds = %bb27
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.1, i64 33, ptr align 8 @alloc_4b39757b6afbe2e4b81b5bba0f0a9cd1) #4, !dbg !154
  unreachable, !dbg !154

bb29:                                             ; preds = %bb28
  %68 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_99.0, i32 1), !dbg !161
  %_100.0 = extractvalue { i32, i1 } %68, 0, !dbg !161
  %_100.1 = extractvalue { i32, i1 } %68, 1, !dbg !161
  %69 = call i1 @llvm.expect.i1(i1 %_100.1, i1 false), !dbg !161
  br i1 %69, label %panic15, label %bb30, !dbg !161

panic14:                                          ; preds = %bb28
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.2, i64 33, ptr align 8 @alloc_11cd1e91bc4ab1224b1a7b811ca849f6) #4, !dbg !160
  unreachable, !dbg !160

bb30:                                             ; preds = %bb29
  %70 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %_100.0, i32 %step), !dbg !161
  %_101.0 = extractvalue { i32, i1 } %70, 0, !dbg !161
  %_101.1 = extractvalue { i32, i1 } %70, 1, !dbg !161
  %71 = call i1 @llvm.expect.i1(i1 %_101.1, i1 false), !dbg !161
  br i1 %71, label %panic16, label %bb31, !dbg !161

panic15:                                          ; preds = %bb29
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.0, i64 28, ptr align 8 @alloc_bc5945034b8b20feaa98552d8c8c3da9) #4, !dbg !161
  unreachable, !dbg !161

bb31:                                             ; preds = %bb30
  %72 = sdiv i32 %_101.0, 8, !dbg !162
  store i32 %72, ptr %diff, align 4, !dbg !162
  %_103 = load i32, ptr %uni2, align 4, !dbg !163, !noundef !21
  %_102 = and i32 %_103, 8, !dbg !164
  %73 = icmp eq i32 %_102, 0, !dbg !164
  br i1 %73, label %bb34, label %bb32, !dbg !164

panic16:                                          ; preds = %bb30
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.2, i64 33, ptr align 8 @alloc_bc5945034b8b20feaa98552d8c8c3da9) #4, !dbg !161
  unreachable, !dbg !161

bb34:                                             ; preds = %bb33, %bb31
  %_107 = load i32, ptr %diff, align 4, !dbg !165, !noundef !21
  %74 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %pred, i32 %_107), !dbg !166
  %_108.0 = extractvalue { i32, i1 } %74, 0, !dbg !166
  %_108.1 = extractvalue { i32, i1 } %74, 1, !dbg !166
  %75 = call i1 @llvm.expect.i1(i1 %_108.1, i1 false), !dbg !166
  br i1 %75, label %panic18, label %bb35, !dbg !166

bb32:                                             ; preds = %bb31
  %_104 = load i32, ptr %diff, align 4, !dbg !167, !noundef !21
  %_105 = icmp eq i32 %_104, -2147483648, !dbg !168
  %76 = call i1 @llvm.expect.i1(i1 %_105, i1 false), !dbg !168
  br i1 %76, label %panic17, label %bb33, !dbg !168

bb33:                                             ; preds = %bb32
  %77 = sub i32 0, %_104, !dbg !169
  store i32 %77, ptr %diff, align 4, !dbg !169
  br label %bb34, !dbg !170

panic17:                                          ; preds = %bb32
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.3, i64 31, ptr align 8 @alloc_4b38fc73a6acd3a427858c8d41f41012) #4, !dbg !168
  unreachable, !dbg !168

bb35:                                             ; preds = %bb34
  store i32 %_108.0, ptr %p2.dbg.spill, align 4, !dbg !166
    #dbg_declare(ptr %p2.dbg.spill, !62, !DIExpression(), !171)
  %78 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %tgt, i32 %_108.0), !dbg !172
  %_109.0 = extractvalue { i32, i1 } %78, 0, !dbg !172
  %_109.1 = extractvalue { i32, i1 } %78, 1, !dbg !172
  %79 = call i1 @llvm.expect.i1(i1 %_109.1, i1 false), !dbg !172
  br i1 %79, label %panic19, label %bb36, !dbg !172

panic18:                                          ; preds = %bb34
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.0, i64 28, ptr align 8 @alloc_15105f1d8f2bd5e11c053f61d54aa2b8) #4, !dbg !166
  unreachable, !dbg !166

bb36:                                             ; preds = %bb35
  store i32 %_109.0, ptr %d2, align 4, !dbg !173
  %_111 = load i32, ptr %d2, align 4, !dbg !174, !noundef !21
  %_110 = ashr i32 %_111, 31, !dbg !174
  %80 = load i32, ptr %d2, align 4, !dbg !175, !noundef !21
  %81 = xor i32 %80, %_110, !dbg !175
  store i32 %81, ptr %d2, align 4, !dbg !175
  %82 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %tgt2, i32 %_72.0), !dbg !176
  %_112.0 = extractvalue { i32, i1 } %82, 0, !dbg !176
  %_112.1 = extractvalue { i32, i1 } %82, 1, !dbg !176
  %83 = call i1 @llvm.expect.i1(i1 %_112.1, i1 false), !dbg !176
  br i1 %83, label %panic20, label %bb37, !dbg !176

panic19:                                          ; preds = %bb35
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.1, i64 33, ptr align 8 @alloc_91f5570ca6d0556ba204c79440903f5c) #4, !dbg !172
  unreachable, !dbg !172

bb37:                                             ; preds = %bb36
  store i32 %_112.0, ptr %d3, align 4, !dbg !177
  %_114 = load i32, ptr %d3, align 4, !dbg !178, !noundef !21
  %_113 = ashr i32 %_114, 31, !dbg !178
  %84 = load i32, ptr %d3, align 4, !dbg !179, !noundef !21
  %85 = xor i32 %84, %_113, !dbg !179
  store i32 %85, ptr %d3, align 4, !dbg !179
  %_116 = load i32, ptr %d3, align 4, !dbg !180, !noundef !21
  %_115 = ashr i32 %_116, 5, !dbg !180
  %86 = load i32, ptr %d0, align 4, !dbg !181, !noundef !21
  %87 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %86, i32 %_115), !dbg !181
  %_117.0 = extractvalue { i32, i1 } %87, 0, !dbg !181
  %_117.1 = extractvalue { i32, i1 } %87, 1, !dbg !181
  %88 = call i1 @llvm.expect.i1(i1 %_117.1, i1 false), !dbg !181
  br i1 %88, label %panic21, label %bb38, !dbg !181

panic20:                                          ; preds = %bb36
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.1, i64 33, ptr align 8 @alloc_d0d845d216e3b85be9ac93c85b013143) #4, !dbg !176
  unreachable, !dbg !176

bb38:                                             ; preds = %bb37
  store i32 %_117.0, ptr %d0, align 4, !dbg !181
  %89 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %tgt2, i32 %_90.0), !dbg !182
  %_118.0 = extractvalue { i32, i1 } %89, 0, !dbg !182
  %_118.1 = extractvalue { i32, i1 } %89, 1, !dbg !182
  %90 = call i1 @llvm.expect.i1(i1 %_118.1, i1 false), !dbg !182
  br i1 %90, label %panic22, label %bb39, !dbg !182

panic21:                                          ; preds = %bb37
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.0, i64 28, ptr align 8 @alloc_48d1039bac1ad72ff0267fc8d3112a01) #4, !dbg !181
  unreachable, !dbg !181

bb39:                                             ; preds = %bb38
  store i32 %_118.0, ptr %d3, align 4, !dbg !183
  %_120 = load i32, ptr %d3, align 4, !dbg !184, !noundef !21
  %_119 = ashr i32 %_120, 31, !dbg !184
  %91 = load i32, ptr %d3, align 4, !dbg !185, !noundef !21
  %92 = xor i32 %91, %_119, !dbg !185
  store i32 %92, ptr %d3, align 4, !dbg !185
  %_122 = load i32, ptr %d3, align 4, !dbg !186, !noundef !21
  %_121 = ashr i32 %_122, 5, !dbg !186
  %93 = load i32, ptr %d1, align 4, !dbg !187, !noundef !21
  %94 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %93, i32 %_121), !dbg !187
  %_123.0 = extractvalue { i32, i1 } %94, 0, !dbg !187
  %_123.1 = extractvalue { i32, i1 } %94, 1, !dbg !187
  %95 = call i1 @llvm.expect.i1(i1 %_123.1, i1 false), !dbg !187
  br i1 %95, label %panic23, label %bb40, !dbg !187

panic22:                                          ; preds = %bb38
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.1, i64 33, ptr align 8 @alloc_681267d27e37f0e6c6232ed56f76bcc8) #4, !dbg !182
  unreachable, !dbg !182

bb40:                                             ; preds = %bb39
  store i32 %_123.0, ptr %d1, align 4, !dbg !187
  %96 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %tgt2, i32 %_108.0), !dbg !188
  %_124.0 = extractvalue { i32, i1 } %96, 0, !dbg !188
  %_124.1 = extractvalue { i32, i1 } %96, 1, !dbg !188
  %97 = call i1 @llvm.expect.i1(i1 %_124.1, i1 false), !dbg !188
  br i1 %97, label %panic24, label %bb41, !dbg !188

panic23:                                          ; preds = %bb39
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.0, i64 28, ptr align 8 @alloc_4bbb76dba03fa24d635ad2f2aaf2d698) #4, !dbg !187
  unreachable, !dbg !187

bb41:                                             ; preds = %bb40
  store i32 %_124.0, ptr %d3, align 4, !dbg !189
  %_126 = load i32, ptr %d3, align 4, !dbg !190, !noundef !21
  %_125 = ashr i32 %_126, 31, !dbg !190
  %98 = load i32, ptr %d3, align 4, !dbg !191, !noundef !21
  %99 = xor i32 %98, %_125, !dbg !191
  store i32 %99, ptr %d3, align 4, !dbg !191
  %_128 = load i32, ptr %d3, align 4, !dbg !192, !noundef !21
  %_127 = ashr i32 %_128, 5, !dbg !192
  %100 = load i32, ptr %d2, align 4, !dbg !193, !noundef !21
  %101 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %100, i32 %_127), !dbg !193
  %_129.0 = extractvalue { i32, i1 } %101, 0, !dbg !193
  %_129.1 = extractvalue { i32, i1 } %101, 1, !dbg !193
  %102 = call i1 @llvm.expect.i1(i1 %_129.1, i1 false), !dbg !193
  br i1 %102, label %panic25, label %bb42, !dbg !193

panic24:                                          ; preds = %bb40
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.1, i64 33, ptr align 8 @alloc_ae99b7348057c7d60125e3115209dd36) #4, !dbg !188
  unreachable, !dbg !188

bb42:                                             ; preds = %bb41
  store i32 %_129.0, ptr %d2, align 4, !dbg !193
  %_131 = load i32, ptr %d1, align 4, !dbg !194, !noundef !21
  %_132 = load i32, ptr %d0, align 4, !dbg !195, !noundef !21
  %_130 = icmp slt i32 %_131, %_132, !dbg !194
  br i1 %_130, label %bb43, label %bb44, !dbg !194

panic25:                                          ; preds = %bb41
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.0, i64 28, ptr align 8 @alloc_afe5fff3904874d7813e6057263f3d85) #4, !dbg !193
  unreachable, !dbg !193

bb44:                                             ; preds = %bb43, %bb42
  %_135 = load i32, ptr %d2, align 4, !dbg !196, !noundef !21
  %_136 = load i32, ptr %d0, align 4, !dbg !197, !noundef !21
  %_134 = icmp slt i32 %_135, %_136, !dbg !196
  br i1 %_134, label %bb45, label %bb46, !dbg !196

bb43:                                             ; preds = %bb42
  %_133 = load i32, ptr %uni1, align 4, !dbg !198, !noundef !21
  store i32 %_133, ptr %uni, align 4, !dbg !199
  br label %bb44, !dbg !200

bb46:                                             ; preds = %bb45, %bb44
  %103 = load i32, ptr %uni, align 4, !dbg !201, !noundef !21
  ret i32 %103, !dbg !202

bb45:                                             ; preds = %bb44
  %_137 = load i32, ptr %uni2, align 4, !dbg !203, !noundef !21
  store i32 %_137, ptr %uni, align 4, !dbg !204
  br label %bb46, !dbg !205
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.expect.i1(i1, i1) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1, i64, ptr align 8) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.smul.with.overflow.i32(i32, i32) #1

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_1() unnamed_addr #0 !dbg !206 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %lsbit.dbg.spill = alloca i32, align 4
  %tgt2.dbg.spill = alloca i32, align 4
  %tgt.dbg.spill = alloca i32, align 4
  %pred.dbg.spill = alloca i32, align 4
  %step.dbg.spill = alloca i32, align 4
  %uni.dbg.spill = alloca i32, align 4
  store i32 7, ptr %uni.dbg.spill, align 4, !dbg !227
    #dbg_declare(ptr %uni.dbg.spill, !211, !DIExpression(), !228)
  store i32 10, ptr %step.dbg.spill, align 4, !dbg !229
    #dbg_declare(ptr %step.dbg.spill, !213, !DIExpression(), !230)
  store i32 100, ptr %pred.dbg.spill, align 4, !dbg !231
    #dbg_declare(ptr %pred.dbg.spill, !215, !DIExpression(), !232)
  store i32 50, ptr %tgt.dbg.spill, align 4, !dbg !233
    #dbg_declare(ptr %tgt.dbg.spill, !217, !DIExpression(), !234)
  store i32 60, ptr %tgt2.dbg.spill, align 4, !dbg !235
    #dbg_declare(ptr %tgt2.dbg.spill, !219, !DIExpression(), !236)
  store i32 0, ptr %lsbit.dbg.spill, align 4, !dbg !237
    #dbg_declare(ptr %lsbit.dbg.spill, !221, !DIExpression(), !238)
  store i32 6, ptr %expected_returns.dbg.spill, align 4, !dbg !239
    #dbg_declare(ptr %expected_returns.dbg.spill, !223, !DIExpression(), !240)
  %result = call i32 @_ZN16encode_quant_lib3src3lib12encode_quant17h9cbfa90afd2f9f2eE(i32 7, i32 10, i32 100, i32 50, i32 60, i32 0), !dbg !241
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !241
    #dbg_declare(ptr %result.dbg.spill, !225, !DIExpression(), !242)
  %0 = icmp eq i32 %result, 6, !dbg !243
  ret i1 %0, !dbg !244
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_2() unnamed_addr #0 !dbg !245 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %lsbit.dbg.spill = alloca i32, align 4
  %tgt2.dbg.spill = alloca i32, align 4
  %tgt.dbg.spill = alloca i32, align 4
  %pred.dbg.spill = alloca i32, align 4
  %step.dbg.spill = alloca i32, align 4
  %uni.dbg.spill = alloca i32, align 4
  store i32 5, ptr %uni.dbg.spill, align 4, !dbg !263
    #dbg_declare(ptr %uni.dbg.spill, !247, !DIExpression(), !264)
  store i32 10, ptr %step.dbg.spill, align 4, !dbg !265
    #dbg_declare(ptr %step.dbg.spill, !249, !DIExpression(), !266)
  store i32 100, ptr %pred.dbg.spill, align 4, !dbg !267
    #dbg_declare(ptr %pred.dbg.spill, !251, !DIExpression(), !268)
  store i32 50, ptr %tgt.dbg.spill, align 4, !dbg !269
    #dbg_declare(ptr %tgt.dbg.spill, !253, !DIExpression(), !270)
  store i32 60, ptr %tgt2.dbg.spill, align 4, !dbg !271
    #dbg_declare(ptr %tgt2.dbg.spill, !255, !DIExpression(), !272)
  store i32 0, ptr %lsbit.dbg.spill, align 4, !dbg !273
    #dbg_declare(ptr %lsbit.dbg.spill, !257, !DIExpression(), !274)
  store i32 4, ptr %expected_returns.dbg.spill, align 4, !dbg !275
    #dbg_declare(ptr %expected_returns.dbg.spill, !259, !DIExpression(), !276)
  %result = call i32 @_ZN16encode_quant_lib3src3lib12encode_quant17h9cbfa90afd2f9f2eE(i32 5, i32 10, i32 100, i32 50, i32 60, i32 0), !dbg !277
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !277
    #dbg_declare(ptr %result.dbg.spill, !261, !DIExpression(), !278)
  %0 = icmp eq i32 %result, 4, !dbg !279
  ret i1 %0, !dbg !280
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_3() unnamed_addr #0 !dbg !281 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %lsbit.dbg.spill = alloca i32, align 4
  %tgt2.dbg.spill = alloca i32, align 4
  %tgt.dbg.spill = alloca i32, align 4
  %pred.dbg.spill = alloca i32, align 4
  %step.dbg.spill = alloca i32, align 4
  %uni.dbg.spill = alloca i32, align 4
  store i32 8, ptr %uni.dbg.spill, align 4, !dbg !299
    #dbg_declare(ptr %uni.dbg.spill, !283, !DIExpression(), !300)
  store i32 10, ptr %step.dbg.spill, align 4, !dbg !301
    #dbg_declare(ptr %step.dbg.spill, !285, !DIExpression(), !302)
  store i32 100, ptr %pred.dbg.spill, align 4, !dbg !303
    #dbg_declare(ptr %pred.dbg.spill, !287, !DIExpression(), !304)
  store i32 50, ptr %tgt.dbg.spill, align 4, !dbg !305
    #dbg_declare(ptr %tgt.dbg.spill, !289, !DIExpression(), !306)
  store i32 60, ptr %tgt2.dbg.spill, align 4, !dbg !307
    #dbg_declare(ptr %tgt2.dbg.spill, !291, !DIExpression(), !308)
  store i32 0, ptr %lsbit.dbg.spill, align 4, !dbg !309
    #dbg_declare(ptr %lsbit.dbg.spill, !293, !DIExpression(), !310)
  store i32 9, ptr %expected_returns.dbg.spill, align 4, !dbg !311
    #dbg_declare(ptr %expected_returns.dbg.spill, !295, !DIExpression(), !312)
  %result = call i32 @_ZN16encode_quant_lib3src3lib12encode_quant17h9cbfa90afd2f9f2eE(i32 8, i32 10, i32 100, i32 50, i32 60, i32 0), !dbg !313
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !313
    #dbg_declare(ptr %result.dbg.spill, !297, !DIExpression(), !314)
  %0 = icmp eq i32 %result, 9, !dbg !315
  ret i1 %0, !dbg !316
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_4() unnamed_addr #0 !dbg !317 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %lsbit.dbg.spill = alloca i32, align 4
  %tgt2.dbg.spill = alloca i32, align 4
  %tgt.dbg.spill = alloca i32, align 4
  %pred.dbg.spill = alloca i32, align 4
  %step.dbg.spill = alloca i32, align 4
  %uni.dbg.spill = alloca i32, align 4
  store i32 6, ptr %uni.dbg.spill, align 4, !dbg !335
    #dbg_declare(ptr %uni.dbg.spill, !319, !DIExpression(), !336)
  store i32 10, ptr %step.dbg.spill, align 4, !dbg !337
    #dbg_declare(ptr %step.dbg.spill, !321, !DIExpression(), !338)
  store i32 100, ptr %pred.dbg.spill, align 4, !dbg !339
    #dbg_declare(ptr %pred.dbg.spill, !323, !DIExpression(), !340)
  store i32 50, ptr %tgt.dbg.spill, align 4, !dbg !341
    #dbg_declare(ptr %tgt.dbg.spill, !325, !DIExpression(), !342)
  store i32 60, ptr %tgt2.dbg.spill, align 4, !dbg !343
    #dbg_declare(ptr %tgt2.dbg.spill, !327, !DIExpression(), !344)
  store i32 0, ptr %lsbit.dbg.spill, align 4, !dbg !345
    #dbg_declare(ptr %lsbit.dbg.spill, !329, !DIExpression(), !346)
  store i32 5, ptr %expected_returns.dbg.spill, align 4, !dbg !347
    #dbg_declare(ptr %expected_returns.dbg.spill, !331, !DIExpression(), !348)
  %result = call i32 @_ZN16encode_quant_lib3src3lib12encode_quant17h9cbfa90afd2f9f2eE(i32 6, i32 10, i32 100, i32 50, i32 60, i32 0), !dbg !349
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !349
    #dbg_declare(ptr %result.dbg.spill, !333, !DIExpression(), !350)
  %0 = icmp eq i32 %result, 5, !dbg !351
  ret i1 %0, !dbg !352
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_5() unnamed_addr #0 !dbg !353 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %lsbit.dbg.spill = alloca i32, align 4
  %tgt2.dbg.spill = alloca i32, align 4
  %tgt.dbg.spill = alloca i32, align 4
  %pred.dbg.spill = alloca i32, align 4
  %step.dbg.spill = alloca i32, align 4
  %uni.dbg.spill = alloca i32, align 4
  store i32 10, ptr %uni.dbg.spill, align 4, !dbg !371
    #dbg_declare(ptr %uni.dbg.spill, !355, !DIExpression(), !372)
  store i32 15, ptr %step.dbg.spill, align 4, !dbg !373
    #dbg_declare(ptr %step.dbg.spill, !357, !DIExpression(), !374)
  store i32 200, ptr %pred.dbg.spill, align 4, !dbg !375
    #dbg_declare(ptr %pred.dbg.spill, !359, !DIExpression(), !376)
  store i32 180, ptr %tgt.dbg.spill, align 4, !dbg !377
    #dbg_declare(ptr %tgt.dbg.spill, !361, !DIExpression(), !378)
  store i32 190, ptr %tgt2.dbg.spill, align 4, !dbg !379
    #dbg_declare(ptr %tgt2.dbg.spill, !363, !DIExpression(), !380)
  store i32 0, ptr %lsbit.dbg.spill, align 4, !dbg !381
    #dbg_declare(ptr %lsbit.dbg.spill, !365, !DIExpression(), !382)
  store i32 11, ptr %expected_returns.dbg.spill, align 4, !dbg !383
    #dbg_declare(ptr %expected_returns.dbg.spill, !367, !DIExpression(), !384)
  %result = call i32 @_ZN16encode_quant_lib3src3lib12encode_quant17h9cbfa90afd2f9f2eE(i32 10, i32 15, i32 200, i32 180, i32 190, i32 0), !dbg !385
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !385
    #dbg_declare(ptr %result.dbg.spill, !369, !DIExpression(), !386)
  %0 = icmp eq i32 %result, 11, !dbg !387
  ret i1 %0, !dbg !388
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_6() unnamed_addr #0 !dbg !389 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %lsbit.dbg.spill = alloca i32, align 4
  %tgt2.dbg.spill = alloca i32, align 4
  %tgt.dbg.spill = alloca i32, align 4
  %pred.dbg.spill = alloca i32, align 4
  %step.dbg.spill = alloca i32, align 4
  %uni.dbg.spill = alloca i32, align 4
  store i32 10, ptr %uni.dbg.spill, align 4, !dbg !407
    #dbg_declare(ptr %uni.dbg.spill, !391, !DIExpression(), !408)
  store i32 15, ptr %step.dbg.spill, align 4, !dbg !409
    #dbg_declare(ptr %step.dbg.spill, !393, !DIExpression(), !410)
  store i32 200, ptr %pred.dbg.spill, align 4, !dbg !411
    #dbg_declare(ptr %pred.dbg.spill, !395, !DIExpression(), !412)
  store i32 180, ptr %tgt.dbg.spill, align 4, !dbg !413
    #dbg_declare(ptr %tgt.dbg.spill, !397, !DIExpression(), !414)
  store i32 190, ptr %tgt2.dbg.spill, align 4, !dbg !415
    #dbg_declare(ptr %tgt2.dbg.spill, !399, !DIExpression(), !416)
  store i32 4, ptr %lsbit.dbg.spill, align 4, !dbg !417
    #dbg_declare(ptr %lsbit.dbg.spill, !401, !DIExpression(), !418)
  store i32 10, ptr %expected_returns.dbg.spill, align 4, !dbg !419
    #dbg_declare(ptr %expected_returns.dbg.spill, !403, !DIExpression(), !420)
  %result = call i32 @_ZN16encode_quant_lib3src3lib12encode_quant17h9cbfa90afd2f9f2eE(i32 10, i32 15, i32 200, i32 180, i32 190, i32 4), !dbg !421
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !421
    #dbg_declare(ptr %result.dbg.spill, !405, !DIExpression(), !422)
  %0 = icmp eq i32 %result, 10, !dbg !423
  ret i1 %0, !dbg !424
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_7() unnamed_addr #0 !dbg !425 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %lsbit.dbg.spill = alloca i32, align 4
  %tgt2.dbg.spill = alloca i32, align 4
  %tgt.dbg.spill = alloca i32, align 4
  %pred.dbg.spill = alloca i32, align 4
  %step.dbg.spill = alloca i32, align 4
  %uni.dbg.spill = alloca i32, align 4
  store i32 10, ptr %uni.dbg.spill, align 4, !dbg !443
    #dbg_declare(ptr %uni.dbg.spill, !427, !DIExpression(), !444)
  store i32 15, ptr %step.dbg.spill, align 4, !dbg !445
    #dbg_declare(ptr %step.dbg.spill, !429, !DIExpression(), !446)
  store i32 200, ptr %pred.dbg.spill, align 4, !dbg !447
    #dbg_declare(ptr %pred.dbg.spill, !431, !DIExpression(), !448)
  store i32 180, ptr %tgt.dbg.spill, align 4, !dbg !449
    #dbg_declare(ptr %tgt.dbg.spill, !433, !DIExpression(), !450)
  store i32 190, ptr %tgt2.dbg.spill, align 4, !dbg !451
    #dbg_declare(ptr %tgt2.dbg.spill, !435, !DIExpression(), !452)
  store i32 1, ptr %lsbit.dbg.spill, align 4, !dbg !453
    #dbg_declare(ptr %lsbit.dbg.spill, !437, !DIExpression(), !454)
  store i32 11, ptr %expected_returns.dbg.spill, align 4, !dbg !455
    #dbg_declare(ptr %expected_returns.dbg.spill, !439, !DIExpression(), !456)
  %result = call i32 @_ZN16encode_quant_lib3src3lib12encode_quant17h9cbfa90afd2f9f2eE(i32 10, i32 15, i32 200, i32 180, i32 190, i32 1), !dbg !457
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !457
    #dbg_declare(ptr %result.dbg.spill, !441, !DIExpression(), !458)
  %0 = icmp eq i32 %result, 11, !dbg !459
  ret i1 %0, !dbg !460
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_8() unnamed_addr #0 !dbg !461 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %lsbit.dbg.spill = alloca i32, align 4
  %tgt2.dbg.spill = alloca i32, align 4
  %tgt.dbg.spill = alloca i32, align 4
  %pred.dbg.spill = alloca i32, align 4
  %step.dbg.spill = alloca i32, align 4
  %uni.dbg.spill = alloca i32, align 4
  store i32 10, ptr %uni.dbg.spill, align 4, !dbg !479
    #dbg_declare(ptr %uni.dbg.spill, !463, !DIExpression(), !480)
  store i32 15, ptr %step.dbg.spill, align 4, !dbg !481
    #dbg_declare(ptr %step.dbg.spill, !465, !DIExpression(), !482)
  store i32 200, ptr %pred.dbg.spill, align 4, !dbg !483
    #dbg_declare(ptr %pred.dbg.spill, !467, !DIExpression(), !484)
  store i32 180, ptr %tgt.dbg.spill, align 4, !dbg !485
    #dbg_declare(ptr %tgt.dbg.spill, !469, !DIExpression(), !486)
  store i32 190, ptr %tgt2.dbg.spill, align 4, !dbg !487
    #dbg_declare(ptr %tgt2.dbg.spill, !471, !DIExpression(), !488)
  store i32 2, ptr %lsbit.dbg.spill, align 4, !dbg !489
    #dbg_declare(ptr %lsbit.dbg.spill, !473, !DIExpression(), !490)
  store i32 10, ptr %expected_returns.dbg.spill, align 4, !dbg !491
    #dbg_declare(ptr %expected_returns.dbg.spill, !475, !DIExpression(), !492)
  %result = call i32 @_ZN16encode_quant_lib3src3lib12encode_quant17h9cbfa90afd2f9f2eE(i32 10, i32 15, i32 200, i32 180, i32 190, i32 2), !dbg !493
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !493
    #dbg_declare(ptr %result.dbg.spill, !477, !DIExpression(), !494)
  %0 = icmp eq i32 %result, 10, !dbg !495
  ret i1 %0, !dbg !496
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_9() unnamed_addr #0 !dbg !497 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %lsbit.dbg.spill = alloca i32, align 4
  %tgt2.dbg.spill = alloca i32, align 4
  %tgt.dbg.spill = alloca i32, align 4
  %pred.dbg.spill = alloca i32, align 4
  %step.dbg.spill = alloca i32, align 4
  %uni.dbg.spill = alloca i32, align 4
  store i32 10, ptr %uni.dbg.spill, align 4, !dbg !515
    #dbg_declare(ptr %uni.dbg.spill, !499, !DIExpression(), !516)
  store i32 15, ptr %step.dbg.spill, align 4, !dbg !517
    #dbg_declare(ptr %step.dbg.spill, !501, !DIExpression(), !518)
  store i32 200, ptr %pred.dbg.spill, align 4, !dbg !519
    #dbg_declare(ptr %pred.dbg.spill, !503, !DIExpression(), !520)
  store i32 180, ptr %tgt.dbg.spill, align 4, !dbg !521
    #dbg_declare(ptr %tgt.dbg.spill, !505, !DIExpression(), !522)
  store i32 190, ptr %tgt2.dbg.spill, align 4, !dbg !523
    #dbg_declare(ptr %tgt2.dbg.spill, !507, !DIExpression(), !524)
  store i32 3, ptr %lsbit.dbg.spill, align 4, !dbg !525
    #dbg_declare(ptr %lsbit.dbg.spill, !509, !DIExpression(), !526)
  store i32 11, ptr %expected_returns.dbg.spill, align 4, !dbg !527
    #dbg_declare(ptr %expected_returns.dbg.spill, !511, !DIExpression(), !528)
  %result = call i32 @_ZN16encode_quant_lib3src3lib12encode_quant17h9cbfa90afd2f9f2eE(i32 10, i32 15, i32 200, i32 180, i32 190, i32 3), !dbg !529
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !529
    #dbg_declare(ptr %result.dbg.spill, !513, !DIExpression(), !530)
  %0 = icmp eq i32 %result, 11, !dbg !531
  ret i1 %0, !dbg !532
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_10() unnamed_addr #0 !dbg !533 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %lsbit.dbg.spill = alloca i32, align 4
  %tgt2.dbg.spill = alloca i32, align 4
  %tgt.dbg.spill = alloca i32, align 4
  %pred.dbg.spill = alloca i32, align 4
  %step.dbg.spill = alloca i32, align 4
  %uni.dbg.spill = alloca i32, align 4
  store i32 3, ptr %uni.dbg.spill, align 4, !dbg !551
    #dbg_declare(ptr %uni.dbg.spill, !535, !DIExpression(), !552)
  store i32 20, ptr %step.dbg.spill, align 4, !dbg !553
    #dbg_declare(ptr %step.dbg.spill, !537, !DIExpression(), !554)
  store i32 100, ptr %pred.dbg.spill, align 4, !dbg !555
    #dbg_declare(ptr %pred.dbg.spill, !539, !DIExpression(), !556)
  store i32 120, ptr %tgt.dbg.spill, align 4, !dbg !557
    #dbg_declare(ptr %tgt.dbg.spill, !541, !DIExpression(), !558)
  store i32 110, ptr %tgt2.dbg.spill, align 4, !dbg !559
    #dbg_declare(ptr %tgt2.dbg.spill, !543, !DIExpression(), !560)
  store i32 0, ptr %lsbit.dbg.spill, align 4, !dbg !561
    #dbg_declare(ptr %lsbit.dbg.spill, !545, !DIExpression(), !562)
  store i32 4, ptr %expected_returns.dbg.spill, align 4, !dbg !563
    #dbg_declare(ptr %expected_returns.dbg.spill, !547, !DIExpression(), !564)
  %result = call i32 @_ZN16encode_quant_lib3src3lib12encode_quant17h9cbfa90afd2f9f2eE(i32 3, i32 20, i32 100, i32 120, i32 110, i32 0), !dbg !565
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !565
    #dbg_declare(ptr %result.dbg.spill, !549, !DIExpression(), !566)
  %0 = icmp eq i32 %result, 4, !dbg !567
  ret i1 %0, !dbg !568
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_11() unnamed_addr #0 !dbg !569 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %lsbit.dbg.spill = alloca i32, align 4
  %tgt2.dbg.spill = alloca i32, align 4
  %tgt.dbg.spill = alloca i32, align 4
  %pred.dbg.spill = alloca i32, align 4
  %step.dbg.spill = alloca i32, align 4
  %uni.dbg.spill = alloca i32, align 4
  store i32 11, ptr %uni.dbg.spill, align 4, !dbg !587
    #dbg_declare(ptr %uni.dbg.spill, !571, !DIExpression(), !588)
  store i32 20, ptr %step.dbg.spill, align 4, !dbg !589
    #dbg_declare(ptr %step.dbg.spill, !573, !DIExpression(), !590)
  store i32 100, ptr %pred.dbg.spill, align 4, !dbg !591
    #dbg_declare(ptr %pred.dbg.spill, !575, !DIExpression(), !592)
  store i32 120, ptr %tgt.dbg.spill, align 4, !dbg !593
    #dbg_declare(ptr %tgt.dbg.spill, !577, !DIExpression(), !594)
  store i32 110, ptr %tgt2.dbg.spill, align 4, !dbg !595
    #dbg_declare(ptr %tgt2.dbg.spill, !579, !DIExpression(), !596)
  store i32 0, ptr %lsbit.dbg.spill, align 4, !dbg !597
    #dbg_declare(ptr %lsbit.dbg.spill, !581, !DIExpression(), !598)
  store i32 10, ptr %expected_returns.dbg.spill, align 4, !dbg !599
    #dbg_declare(ptr %expected_returns.dbg.spill, !583, !DIExpression(), !600)
  %result = call i32 @_ZN16encode_quant_lib3src3lib12encode_quant17h9cbfa90afd2f9f2eE(i32 11, i32 20, i32 100, i32 120, i32 110, i32 0), !dbg !601
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !601
    #dbg_declare(ptr %result.dbg.spill, !585, !DIExpression(), !602)
  %0 = icmp eq i32 %result, 10, !dbg !603
  ret i1 %0, !dbg !604
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_12() unnamed_addr #0 !dbg !605 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %lsbit.dbg.spill = alloca i32, align 4
  %tgt2.dbg.spill = alloca i32, align 4
  %tgt.dbg.spill = alloca i32, align 4
  %pred.dbg.spill = alloca i32, align 4
  %step.dbg.spill = alloca i32, align 4
  %uni.dbg.spill = alloca i32, align 4
  store i32 2, ptr %uni.dbg.spill, align 4, !dbg !623
    #dbg_declare(ptr %uni.dbg.spill, !607, !DIExpression(), !624)
  store i32 20, ptr %step.dbg.spill, align 4, !dbg !625
    #dbg_declare(ptr %step.dbg.spill, !609, !DIExpression(), !626)
  store i32 100, ptr %pred.dbg.spill, align 4, !dbg !627
    #dbg_declare(ptr %pred.dbg.spill, !611, !DIExpression(), !628)
  store i32 120, ptr %tgt.dbg.spill, align 4, !dbg !629
    #dbg_declare(ptr %tgt.dbg.spill, !613, !DIExpression(), !630)
  store i32 110, ptr %tgt2.dbg.spill, align 4, !dbg !631
    #dbg_declare(ptr %tgt2.dbg.spill, !615, !DIExpression(), !632)
  store i32 0, ptr %lsbit.dbg.spill, align 4, !dbg !633
    #dbg_declare(ptr %lsbit.dbg.spill, !617, !DIExpression(), !634)
  store i32 3, ptr %expected_returns.dbg.spill, align 4, !dbg !635
    #dbg_declare(ptr %expected_returns.dbg.spill, !619, !DIExpression(), !636)
  %result = call i32 @_ZN16encode_quant_lib3src3lib12encode_quant17h9cbfa90afd2f9f2eE(i32 2, i32 20, i32 100, i32 120, i32 110, i32 0), !dbg !637
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !637
    #dbg_declare(ptr %result.dbg.spill, !621, !DIExpression(), !638)
  %0 = icmp eq i32 %result, 3, !dbg !639
  ret i1 %0, !dbg !640
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_13() unnamed_addr #0 !dbg !641 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %lsbit.dbg.spill = alloca i32, align 4
  %tgt2.dbg.spill = alloca i32, align 4
  %tgt.dbg.spill = alloca i32, align 4
  %pred.dbg.spill = alloca i32, align 4
  %step.dbg.spill = alloca i32, align 4
  %uni.dbg.spill = alloca i32, align 4
  store i32 10, ptr %uni.dbg.spill, align 4, !dbg !659
    #dbg_declare(ptr %uni.dbg.spill, !643, !DIExpression(), !660)
  store i32 20, ptr %step.dbg.spill, align 4, !dbg !661
    #dbg_declare(ptr %step.dbg.spill, !645, !DIExpression(), !662)
  store i32 100, ptr %pred.dbg.spill, align 4, !dbg !663
    #dbg_declare(ptr %pred.dbg.spill, !647, !DIExpression(), !664)
  store i32 120, ptr %tgt.dbg.spill, align 4, !dbg !665
    #dbg_declare(ptr %tgt.dbg.spill, !649, !DIExpression(), !666)
  store i32 110, ptr %tgt2.dbg.spill, align 4, !dbg !667
    #dbg_declare(ptr %tgt2.dbg.spill, !651, !DIExpression(), !668)
  store i32 0, ptr %lsbit.dbg.spill, align 4, !dbg !669
    #dbg_declare(ptr %lsbit.dbg.spill, !653, !DIExpression(), !670)
  store i32 9, ptr %expected_returns.dbg.spill, align 4, !dbg !671
    #dbg_declare(ptr %expected_returns.dbg.spill, !655, !DIExpression(), !672)
  %result = call i32 @_ZN16encode_quant_lib3src3lib12encode_quant17h9cbfa90afd2f9f2eE(i32 10, i32 20, i32 100, i32 120, i32 110, i32 0), !dbg !673
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !673
    #dbg_declare(ptr %result.dbg.spill, !657, !DIExpression(), !674)
  %0 = icmp eq i32 %result, 9, !dbg !675
  ret i1 %0, !dbg !676
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_14() unnamed_addr #0 !dbg !677 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %lsbit.dbg.spill = alloca i32, align 4
  %tgt2.dbg.spill = alloca i32, align 4
  %tgt.dbg.spill = alloca i32, align 4
  %pred.dbg.spill = alloca i32, align 4
  %step.dbg.spill = alloca i32, align 4
  %uni.dbg.spill = alloca i32, align 4
  store i32 4, ptr %uni.dbg.spill, align 4, !dbg !695
    #dbg_declare(ptr %uni.dbg.spill, !679, !DIExpression(), !696)
  store i32 20, ptr %step.dbg.spill, align 4, !dbg !697
    #dbg_declare(ptr %step.dbg.spill, !681, !DIExpression(), !698)
  store i32 100, ptr %pred.dbg.spill, align 4, !dbg !699
    #dbg_declare(ptr %pred.dbg.spill, !683, !DIExpression(), !700)
  store i32 120, ptr %tgt.dbg.spill, align 4, !dbg !701
    #dbg_declare(ptr %tgt.dbg.spill, !685, !DIExpression(), !702)
  store i32 110, ptr %tgt2.dbg.spill, align 4, !dbg !703
    #dbg_declare(ptr %tgt2.dbg.spill, !687, !DIExpression(), !704)
  store i32 0, ptr %lsbit.dbg.spill, align 4, !dbg !705
    #dbg_declare(ptr %lsbit.dbg.spill, !689, !DIExpression(), !706)
  store i32 4, ptr %expected_returns.dbg.spill, align 4, !dbg !707
    #dbg_declare(ptr %expected_returns.dbg.spill, !691, !DIExpression(), !708)
  %result = call i32 @_ZN16encode_quant_lib3src3lib12encode_quant17h9cbfa90afd2f9f2eE(i32 4, i32 20, i32 100, i32 120, i32 110, i32 0), !dbg !709
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !709
    #dbg_declare(ptr %result.dbg.spill, !693, !DIExpression(), !710)
  %0 = icmp eq i32 %result, 4, !dbg !711
  ret i1 %0, !dbg !712
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_15() unnamed_addr #0 !dbg !713 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %lsbit.dbg.spill = alloca i32, align 4
  %tgt2.dbg.spill = alloca i32, align 4
  %tgt.dbg.spill = alloca i32, align 4
  %pred.dbg.spill = alloca i32, align 4
  %step.dbg.spill = alloca i32, align 4
  %uni.dbg.spill = alloca i32, align 4
  store i32 12, ptr %uni.dbg.spill, align 4, !dbg !731
    #dbg_declare(ptr %uni.dbg.spill, !715, !DIExpression(), !732)
  store i32 20, ptr %step.dbg.spill, align 4, !dbg !733
    #dbg_declare(ptr %step.dbg.spill, !717, !DIExpression(), !734)
  store i32 100, ptr %pred.dbg.spill, align 4, !dbg !735
    #dbg_declare(ptr %pred.dbg.spill, !719, !DIExpression(), !736)
  store i32 120, ptr %tgt.dbg.spill, align 4, !dbg !737
    #dbg_declare(ptr %tgt.dbg.spill, !721, !DIExpression(), !738)
  store i32 110, ptr %tgt2.dbg.spill, align 4, !dbg !739
    #dbg_declare(ptr %tgt2.dbg.spill, !723, !DIExpression(), !740)
  store i32 0, ptr %lsbit.dbg.spill, align 4, !dbg !741
    #dbg_declare(ptr %lsbit.dbg.spill, !725, !DIExpression(), !742)
  store i32 11, ptr %expected_returns.dbg.spill, align 4, !dbg !743
    #dbg_declare(ptr %expected_returns.dbg.spill, !727, !DIExpression(), !744)
  %result = call i32 @_ZN16encode_quant_lib3src3lib12encode_quant17h9cbfa90afd2f9f2eE(i32 12, i32 20, i32 100, i32 120, i32 110, i32 0), !dbg !745
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !745
    #dbg_declare(ptr %result.dbg.spill, !729, !DIExpression(), !746)
  %0 = icmp eq i32 %result, 11, !dbg !747
  ret i1 %0, !dbg !748
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_16() unnamed_addr #0 !dbg !749 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %lsbit.dbg.spill = alloca i32, align 4
  %tgt2.dbg.spill = alloca i32, align 4
  %tgt.dbg.spill = alloca i32, align 4
  %pred.dbg.spill = alloca i32, align 4
  %step.dbg.spill = alloca i32, align 4
  %uni.dbg.spill = alloca i32, align 4
  store i32 10, ptr %uni.dbg.spill, align 4, !dbg !767
    #dbg_declare(ptr %uni.dbg.spill, !751, !DIExpression(), !768)
  store i32 5, ptr %step.dbg.spill, align 4, !dbg !769
    #dbg_declare(ptr %step.dbg.spill, !753, !DIExpression(), !770)
  store i32 100, ptr %pred.dbg.spill, align 4, !dbg !771
    #dbg_declare(ptr %pred.dbg.spill, !755, !DIExpression(), !772)
  store i32 102, ptr %tgt.dbg.spill, align 4, !dbg !773
    #dbg_declare(ptr %tgt.dbg.spill, !757, !DIExpression(), !774)
  store i32 105, ptr %tgt2.dbg.spill, align 4, !dbg !775
    #dbg_declare(ptr %tgt2.dbg.spill, !759, !DIExpression(), !776)
  store i32 0, ptr %lsbit.dbg.spill, align 4, !dbg !777
    #dbg_declare(ptr %lsbit.dbg.spill, !761, !DIExpression(), !778)
  store i32 9, ptr %expected_returns.dbg.spill, align 4, !dbg !779
    #dbg_declare(ptr %expected_returns.dbg.spill, !763, !DIExpression(), !780)
  %result = call i32 @_ZN16encode_quant_lib3src3lib12encode_quant17h9cbfa90afd2f9f2eE(i32 10, i32 5, i32 100, i32 102, i32 105, i32 0), !dbg !781
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !781
    #dbg_declare(ptr %result.dbg.spill, !765, !DIExpression(), !782)
  %0 = icmp eq i32 %result, 9, !dbg !783
  ret i1 %0, !dbg !784
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_17() unnamed_addr #0 !dbg !785 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %lsbit.dbg.spill = alloca i32, align 4
  %tgt2.dbg.spill = alloca i32, align 4
  %tgt.dbg.spill = alloca i32, align 4
  %pred.dbg.spill = alloca i32, align 4
  %step.dbg.spill = alloca i32, align 4
  %uni.dbg.spill = alloca i32, align 4
  store i32 10, ptr %uni.dbg.spill, align 4, !dbg !803
    #dbg_declare(ptr %uni.dbg.spill, !787, !DIExpression(), !804)
  store i32 5, ptr %step.dbg.spill, align 4, !dbg !805
    #dbg_declare(ptr %step.dbg.spill, !789, !DIExpression(), !806)
  store i32 100, ptr %pred.dbg.spill, align 4, !dbg !807
    #dbg_declare(ptr %pred.dbg.spill, !791, !DIExpression(), !808)
  store i32 98, ptr %tgt.dbg.spill, align 4, !dbg !809
    #dbg_declare(ptr %tgt.dbg.spill, !793, !DIExpression(), !810)
  store i32 95, ptr %tgt2.dbg.spill, align 4, !dbg !811
    #dbg_declare(ptr %tgt2.dbg.spill, !795, !DIExpression(), !812)
  store i32 0, ptr %lsbit.dbg.spill, align 4, !dbg !813
    #dbg_declare(ptr %lsbit.dbg.spill, !797, !DIExpression(), !814)
  store i32 9, ptr %expected_returns.dbg.spill, align 4, !dbg !815
    #dbg_declare(ptr %expected_returns.dbg.spill, !799, !DIExpression(), !816)
  %result = call i32 @_ZN16encode_quant_lib3src3lib12encode_quant17h9cbfa90afd2f9f2eE(i32 10, i32 5, i32 100, i32 98, i32 95, i32 0), !dbg !817
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !817
    #dbg_declare(ptr %result.dbg.spill, !801, !DIExpression(), !818)
  %0 = icmp eq i32 %result, 9, !dbg !819
  ret i1 %0, !dbg !820
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_18() unnamed_addr #0 !dbg !821 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %lsbit.dbg.spill = alloca i32, align 4
  %tgt2.dbg.spill = alloca i32, align 4
  %tgt.dbg.spill = alloca i32, align 4
  %pred.dbg.spill = alloca i32, align 4
  %step.dbg.spill = alloca i32, align 4
  %uni.dbg.spill = alloca i32, align 4
  store i32 10, ptr %uni.dbg.spill, align 4, !dbg !839
    #dbg_declare(ptr %uni.dbg.spill, !823, !DIExpression(), !840)
  store i32 8, ptr %step.dbg.spill, align 4, !dbg !841
    #dbg_declare(ptr %step.dbg.spill, !825, !DIExpression(), !842)
  store i32 100, ptr %pred.dbg.spill, align 4, !dbg !843
    #dbg_declare(ptr %pred.dbg.spill, !827, !DIExpression(), !844)
  store i32 110, ptr %tgt.dbg.spill, align 4, !dbg !845
    #dbg_declare(ptr %tgt.dbg.spill, !829, !DIExpression(), !846)
  store i32 115, ptr %tgt2.dbg.spill, align 4, !dbg !847
    #dbg_declare(ptr %tgt2.dbg.spill, !831, !DIExpression(), !848)
  store i32 0, ptr %lsbit.dbg.spill, align 4, !dbg !849
    #dbg_declare(ptr %lsbit.dbg.spill, !833, !DIExpression(), !850)
  store i32 9, ptr %expected_returns.dbg.spill, align 4, !dbg !851
    #dbg_declare(ptr %expected_returns.dbg.spill, !835, !DIExpression(), !852)
  %result = call i32 @_ZN16encode_quant_lib3src3lib12encode_quant17h9cbfa90afd2f9f2eE(i32 10, i32 8, i32 100, i32 110, i32 115, i32 0), !dbg !853
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !853
    #dbg_declare(ptr %result.dbg.spill, !837, !DIExpression(), !854)
  %0 = icmp eq i32 %result, 9, !dbg !855
  ret i1 %0, !dbg !856
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_19() unnamed_addr #0 !dbg !857 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %lsbit.dbg.spill = alloca i32, align 4
  %tgt2.dbg.spill = alloca i32, align 4
  %tgt.dbg.spill = alloca i32, align 4
  %pred.dbg.spill = alloca i32, align 4
  %step.dbg.spill = alloca i32, align 4
  %uni.dbg.spill = alloca i32, align 4
  store i32 10, ptr %uni.dbg.spill, align 4, !dbg !875
    #dbg_declare(ptr %uni.dbg.spill, !859, !DIExpression(), !876)
  store i32 12, ptr %step.dbg.spill, align 4, !dbg !877
    #dbg_declare(ptr %step.dbg.spill, !861, !DIExpression(), !878)
  store i32 100, ptr %pred.dbg.spill, align 4, !dbg !879
    #dbg_declare(ptr %pred.dbg.spill, !863, !DIExpression(), !880)
  store i32 108, ptr %tgt.dbg.spill, align 4, !dbg !881
    #dbg_declare(ptr %tgt.dbg.spill, !865, !DIExpression(), !882)
  store i32 112, ptr %tgt2.dbg.spill, align 4, !dbg !883
    #dbg_declare(ptr %tgt2.dbg.spill, !867, !DIExpression(), !884)
  store i32 0, ptr %lsbit.dbg.spill, align 4, !dbg !885
    #dbg_declare(ptr %lsbit.dbg.spill, !869, !DIExpression(), !886)
  store i32 9, ptr %expected_returns.dbg.spill, align 4, !dbg !887
    #dbg_declare(ptr %expected_returns.dbg.spill, !871, !DIExpression(), !888)
  %result = call i32 @_ZN16encode_quant_lib3src3lib12encode_quant17h9cbfa90afd2f9f2eE(i32 10, i32 12, i32 100, i32 108, i32 112, i32 0), !dbg !889
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !889
    #dbg_declare(ptr %result.dbg.spill, !873, !DIExpression(), !890)
  %0 = icmp eq i32 %result, 9, !dbg !891
  ret i1 %0, !dbg !892
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_20() unnamed_addr #0 !dbg !893 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %lsbit.dbg.spill = alloca i32, align 4
  %tgt2.dbg.spill = alloca i32, align 4
  %tgt.dbg.spill = alloca i32, align 4
  %pred.dbg.spill = alloca i32, align 4
  %step.dbg.spill = alloca i32, align 4
  %uni.dbg.spill = alloca i32, align 4
  store i32 7, ptr %uni.dbg.spill, align 4, !dbg !911
    #dbg_declare(ptr %uni.dbg.spill, !895, !DIExpression(), !912)
  store i32 10, ptr %step.dbg.spill, align 4, !dbg !913
    #dbg_declare(ptr %step.dbg.spill, !897, !DIExpression(), !914)
  store i32 50, ptr %pred.dbg.spill, align 4, !dbg !915
    #dbg_declare(ptr %pred.dbg.spill, !899, !DIExpression(), !916)
  store i32 55, ptr %tgt.dbg.spill, align 4, !dbg !917
    #dbg_declare(ptr %tgt.dbg.spill, !901, !DIExpression(), !918)
  store i32 52, ptr %tgt2.dbg.spill, align 4, !dbg !919
    #dbg_declare(ptr %tgt2.dbg.spill, !903, !DIExpression(), !920)
  store i32 4, ptr %lsbit.dbg.spill, align 4, !dbg !921
    #dbg_declare(ptr %lsbit.dbg.spill, !905, !DIExpression(), !922)
  store i32 7, ptr %expected_returns.dbg.spill, align 4, !dbg !923
    #dbg_declare(ptr %expected_returns.dbg.spill, !907, !DIExpression(), !924)
  %result = call i32 @_ZN16encode_quant_lib3src3lib12encode_quant17h9cbfa90afd2f9f2eE(i32 7, i32 10, i32 50, i32 55, i32 52, i32 4), !dbg !925
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !925
    #dbg_declare(ptr %result.dbg.spill, !909, !DIExpression(), !926)
  %0 = icmp eq i32 %result, 7, !dbg !927
  ret i1 %0, !dbg !928
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_21() unnamed_addr #0 !dbg !929 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %lsbit.dbg.spill = alloca i32, align 4
  %tgt2.dbg.spill = alloca i32, align 4
  %tgt.dbg.spill = alloca i32, align 4
  %pred.dbg.spill = alloca i32, align 4
  %step.dbg.spill = alloca i32, align 4
  %uni.dbg.spill = alloca i32, align 4
  store i32 0, ptr %uni.dbg.spill, align 4, !dbg !947
    #dbg_declare(ptr %uni.dbg.spill, !931, !DIExpression(), !948)
  store i32 10, ptr %step.dbg.spill, align 4, !dbg !949
    #dbg_declare(ptr %step.dbg.spill, !933, !DIExpression(), !950)
  store i32 50, ptr %pred.dbg.spill, align 4, !dbg !951
    #dbg_declare(ptr %pred.dbg.spill, !935, !DIExpression(), !952)
  store i32 55, ptr %tgt.dbg.spill, align 4, !dbg !953
    #dbg_declare(ptr %tgt.dbg.spill, !937, !DIExpression(), !954)
  store i32 52, ptr %tgt2.dbg.spill, align 4, !dbg !955
    #dbg_declare(ptr %tgt2.dbg.spill, !939, !DIExpression(), !956)
  store i32 0, ptr %lsbit.dbg.spill, align 4, !dbg !957
    #dbg_declare(ptr %lsbit.dbg.spill, !941, !DIExpression(), !958)
  store i32 1, ptr %expected_returns.dbg.spill, align 4, !dbg !959
    #dbg_declare(ptr %expected_returns.dbg.spill, !943, !DIExpression(), !960)
  %result = call i32 @_ZN16encode_quant_lib3src3lib12encode_quant17h9cbfa90afd2f9f2eE(i32 0, i32 10, i32 50, i32 55, i32 52, i32 0), !dbg !961
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !961
    #dbg_declare(ptr %result.dbg.spill, !945, !DIExpression(), !962)
  %0 = icmp eq i32 %result, 1, !dbg !963
  ret i1 %0, !dbg !964
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_22() unnamed_addr #0 !dbg !965 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %lsbit.dbg.spill = alloca i32, align 4
  %tgt2.dbg.spill = alloca i32, align 4
  %tgt.dbg.spill = alloca i32, align 4
  %pred.dbg.spill = alloca i32, align 4
  %step.dbg.spill = alloca i32, align 4
  %uni.dbg.spill = alloca i32, align 4
  store i32 15, ptr %uni.dbg.spill, align 4, !dbg !983
    #dbg_declare(ptr %uni.dbg.spill, !967, !DIExpression(), !984)
  store i32 1000, ptr %step.dbg.spill, align 4, !dbg !985
    #dbg_declare(ptr %step.dbg.spill, !969, !DIExpression(), !986)
  store i32 10000, ptr %pred.dbg.spill, align 4, !dbg !987
    #dbg_declare(ptr %pred.dbg.spill, !971, !DIExpression(), !988)
  store i32 9500, ptr %tgt.dbg.spill, align 4, !dbg !989
    #dbg_declare(ptr %tgt.dbg.spill, !973, !DIExpression(), !990)
  store i32 10500, ptr %tgt2.dbg.spill, align 4, !dbg !991
    #dbg_declare(ptr %tgt2.dbg.spill, !975, !DIExpression(), !992)
  store i32 1, ptr %lsbit.dbg.spill, align 4, !dbg !993
    #dbg_declare(ptr %lsbit.dbg.spill, !977, !DIExpression(), !994)
  store i32 15, ptr %expected_returns.dbg.spill, align 4, !dbg !995
    #dbg_declare(ptr %expected_returns.dbg.spill, !979, !DIExpression(), !996)
  %result = call i32 @_ZN16encode_quant_lib3src3lib12encode_quant17h9cbfa90afd2f9f2eE(i32 15, i32 1000, i32 10000, i32 9500, i32 10500, i32 1), !dbg !997
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !997
    #dbg_declare(ptr %result.dbg.spill, !981, !DIExpression(), !998)
  %0 = icmp eq i32 %result, 15, !dbg !999
  ret i1 %0, !dbg !1000
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_23() unnamed_addr #0 !dbg !1001 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %lsbit.dbg.spill = alloca i32, align 4
  %tgt2.dbg.spill = alloca i32, align 4
  %tgt.dbg.spill = alloca i32, align 4
  %pred.dbg.spill = alloca i32, align 4
  %step.dbg.spill = alloca i32, align 4
  %uni.dbg.spill = alloca i32, align 4
  store i32 5, ptr %uni.dbg.spill, align 4, !dbg !1019
    #dbg_declare(ptr %uni.dbg.spill, !1003, !DIExpression(), !1020)
  store i32 10, ptr %step.dbg.spill, align 4, !dbg !1021
    #dbg_declare(ptr %step.dbg.spill, !1005, !DIExpression(), !1022)
  store i32 -100, ptr %pred.dbg.spill, align 4, !dbg !1023
    #dbg_declare(ptr %pred.dbg.spill, !1007, !DIExpression(), !1024)
  store i32 -90, ptr %tgt.dbg.spill, align 4, !dbg !1025
    #dbg_declare(ptr %tgt.dbg.spill, !1009, !DIExpression(), !1026)
  store i32 -110, ptr %tgt2.dbg.spill, align 4, !dbg !1027
    #dbg_declare(ptr %tgt2.dbg.spill, !1011, !DIExpression(), !1028)
  store i32 2, ptr %lsbit.dbg.spill, align 4, !dbg !1029
    #dbg_declare(ptr %lsbit.dbg.spill, !1013, !DIExpression(), !1030)
  store i32 4, ptr %expected_returns.dbg.spill, align 4, !dbg !1031
    #dbg_declare(ptr %expected_returns.dbg.spill, !1015, !DIExpression(), !1032)
  %result = call i32 @_ZN16encode_quant_lib3src3lib12encode_quant17h9cbfa90afd2f9f2eE(i32 5, i32 10, i32 -100, i32 -90, i32 -110, i32 2), !dbg !1033
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1033
    #dbg_declare(ptr %result.dbg.spill, !1017, !DIExpression(), !1034)
  %0 = icmp eq i32 %result, 4, !dbg !1035
  ret i1 %0, !dbg !1036
}

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #3 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}

!0 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !1, producer: "clang LLVM (rustc version 1.70.0-nightly (84dd17b56 2023-04-14))", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!1 = !DIFile(filename: "lib.rs/@/5ennco7mct7pnmc4", directory: "/crisp-rust-outputs/B01_organic/encode_quant_lib/translated_rust")
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 2, !"RtLibUseGOT", i32 1}
!4 = !{i32 2, !"Dwarf Version", i32 4}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = distinct !DISubprogram(name: "encode_quant_ffi", linkageName: "encode_quant", scope: !8, file: !7, line: 97, type: !11, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !21, retainedNodes: !14)
!7 = !DIFile(filename: "src/lib.rs", directory: "/crisp-rust-outputs/B01_organic/encode_quant_lib/translated_rust", checksumkind: CSK_MD5, checksum: "23b5abf99b749850ebbe3c244423cc7d")
!8 = !DINamespace(name: "lib", scope: !9)
!9 = !DINamespace(name: "src", scope: !10)
!10 = !DINamespace(name: "encode_quant_lib", scope: null)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !13, !13, !13, !13, !13, !13}
!13 = !DIBasicType(name: "i32", size: 32, encoding: DW_ATE_signed)
!14 = !{!15, !16, !17, !18, !19, !20}
!15 = !DILocalVariable(name: "uni", arg: 1, scope: !6, file: !7, line: 98, type: !13)
!16 = !DILocalVariable(name: "step", arg: 2, scope: !6, file: !7, line: 99, type: !13)
!17 = !DILocalVariable(name: "pred", arg: 3, scope: !6, file: !7, line: 100, type: !13)
!18 = !DILocalVariable(name: "tgt", arg: 4, scope: !6, file: !7, line: 101, type: !13)
!19 = !DILocalVariable(name: "tgt2", arg: 5, scope: !6, file: !7, line: 102, type: !13)
!20 = !DILocalVariable(name: "lsbit", arg: 6, scope: !6, file: !7, line: 103, type: !13)
!21 = !{}
!22 = !DILocation(line: 98, column: 5, scope: !6)
!23 = !DILocation(line: 99, column: 5, scope: !6)
!24 = !DILocation(line: 100, column: 5, scope: !6)
!25 = !DILocation(line: 101, column: 5, scope: !6)
!26 = !DILocation(line: 102, column: 5, scope: !6)
!27 = !DILocation(line: 103, column: 5, scope: !6)
!28 = !DILocation(line: 105, column: 5, scope: !6)
!29 = !DILocation(line: 106, column: 2, scope: !6)
!30 = distinct !DISubprogram(name: "encode_quant", linkageName: "_ZN16encode_quant_lib3src3lib12encode_quant17h9cbfa90afd2f9f2eE", scope: !8, file: !7, line: 1, type: !11, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !21, retainedNodes: !31)
!31 = !{!32, !33, !34, !35, !36, !37, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62}
!32 = !DILocalVariable(name: "uni", arg: 1, scope: !30, file: !7, line: 2, type: !13)
!33 = !DILocalVariable(name: "step", arg: 2, scope: !30, file: !7, line: 3, type: !13)
!34 = !DILocalVariable(name: "pred", arg: 3, scope: !30, file: !7, line: 4, type: !13)
!35 = !DILocalVariable(name: "tgt", arg: 4, scope: !30, file: !7, line: 5, type: !13)
!36 = !DILocalVariable(name: "tgt2", arg: 5, scope: !30, file: !7, line: 6, type: !13)
!37 = !DILocalVariable(name: "lsbit", arg: 6, scope: !30, file: !7, line: 7, type: !13)
!38 = !DILocalVariable(name: "uni1", scope: !39, file: !7, line: 9, type: !13, align: 4)
!39 = distinct !DILexicalBlock(scope: !30, file: !7, line: 9, column: 5)
!40 = !DILocalVariable(name: "uni2", scope: !41, file: !7, line: 10, type: !13, align: 4)
!41 = distinct !DILexicalBlock(scope: !39, file: !7, line: 10, column: 5)
!42 = !DILocalVariable(name: "diff", scope: !43, file: !7, line: 11, type: !13, align: 4)
!43 = distinct !DILexicalBlock(scope: !41, file: !7, line: 11, column: 5)
!44 = !DILocalVariable(name: "p0", scope: !45, file: !7, line: 12, type: !13, align: 4)
!45 = distinct !DILexicalBlock(scope: !43, file: !7, line: 12, column: 5)
!46 = !DILocalVariable(name: "p1", scope: !47, file: !7, line: 13, type: !13, align: 4)
!47 = distinct !DILexicalBlock(scope: !45, file: !7, line: 13, column: 5)
!48 = !DILocalVariable(name: "p2", scope: !49, file: !7, line: 14, type: !13, align: 4)
!49 = distinct !DILexicalBlock(scope: !47, file: !7, line: 14, column: 5)
!50 = !DILocalVariable(name: "d0", scope: !51, file: !7, line: 15, type: !13, align: 4)
!51 = distinct !DILexicalBlock(scope: !49, file: !7, line: 15, column: 5)
!52 = !DILocalVariable(name: "d1", scope: !53, file: !7, line: 16, type: !13, align: 4)
!53 = distinct !DILexicalBlock(scope: !51, file: !7, line: 16, column: 5)
!54 = !DILocalVariable(name: "d2", scope: !55, file: !7, line: 17, type: !13, align: 4)
!55 = distinct !DILexicalBlock(scope: !53, file: !7, line: 17, column: 5)
!56 = !DILocalVariable(name: "d3", scope: !57, file: !7, line: 18, type: !13, align: 4)
!57 = distinct !DILexicalBlock(scope: !55, file: !7, line: 18, column: 5)
!58 = !DILocalVariable(name: "p0", scope: !59, file: !7, line: 54, type: !13, align: 4)
!59 = distinct !DILexicalBlock(scope: !57, file: !7, line: 54, column: 5)
!60 = !DILocalVariable(name: "p1", scope: !61, file: !7, line: 62, type: !13, align: 4)
!61 = distinct !DILexicalBlock(scope: !59, file: !7, line: 62, column: 5)
!62 = !DILocalVariable(name: "p2", scope: !63, file: !7, line: 70, type: !13, align: 4)
!63 = distinct !DILexicalBlock(scope: !61, file: !7, line: 70, column: 5)
!64 = !DILocation(line: 2, column: 5, scope: !30)
!65 = !DILocation(line: 3, column: 5, scope: !30)
!66 = !DILocation(line: 4, column: 5, scope: !30)
!67 = !DILocation(line: 5, column: 5, scope: !30)
!68 = !DILocation(line: 6, column: 5, scope: !30)
!69 = !DILocation(line: 7, column: 5, scope: !30)
!70 = !DILocation(line: 9, column: 9, scope: !39)
!71 = !DILocation(line: 10, column: 9, scope: !41)
!72 = !DILocation(line: 11, column: 9, scope: !43)
!73 = !DILocation(line: 15, column: 9, scope: !51)
!74 = !DILocation(line: 16, column: 9, scope: !53)
!75 = !DILocation(line: 17, column: 9, scope: !55)
!76 = !DILocation(line: 18, column: 9, scope: !57)
!77 = !DILocation(line: 20, column: 12, scope: !57)
!78 = !DILocation(line: 20, column: 5, scope: !57)
!79 = !DILocation(line: 21, column: 12, scope: !57)
!80 = !DILocation(line: 21, column: 5, scope: !57)
!81 = !DILocation(line: 23, column: 9, scope: !57)
!82 = !DILocation(line: 23, column: 15, scope: !57)
!83 = !DILocation(line: 23, column: 8, scope: !57)
!84 = !DILocation(line: 26, column: 9, scope: !57)
!85 = !DILocation(line: 26, column: 15, scope: !57)
!86 = !DILocation(line: 26, column: 8, scope: !57)
!87 = !DILocation(line: 24, column: 16, scope: !57)
!88 = !DILocation(line: 24, column: 9, scope: !57)
!89 = !DILocation(line: 23, column: 5, scope: !57)
!90 = !DILocation(line: 30, column: 8, scope: !57)
!91 = !DILocation(line: 27, column: 16, scope: !57)
!92 = !DILocation(line: 27, column: 9, scope: !57)
!93 = !DILocation(line: 26, column: 5, scope: !57)
!94 = !DILocation(line: 50, column: 18, scope: !57)
!95 = !DILocation(line: 50, column: 17, scope: !57)
!96 = !DILocation(line: 50, column: 13, scope: !57)
!97 = !DILocation(line: 31, column: 12, scope: !57)
!98 = !DILocation(line: 32, column: 13, scope: !57)
!99 = !DILocation(line: 33, column: 13, scope: !57)
!100 = !DILocation(line: 34, column: 13, scope: !57)
!101 = !DILocation(line: 36, column: 21, scope: !57)
!102 = !DILocation(line: 36, column: 20, scope: !57)
!103 = !DILocation(line: 36, column: 34, scope: !57)
!104 = !DILocation(line: 36, column: 33, scope: !57)
!105 = !DILocation(line: 36, column: 13, scope: !57)
!106 = !DILocation(line: 37, column: 22, scope: !57)
!107 = !DILocation(line: 37, column: 21, scope: !57)
!108 = !DILocation(line: 37, column: 36, scope: !57)
!109 = !DILocation(line: 37, column: 35, scope: !57)
!110 = !DILocation(line: 37, column: 13, scope: !57)
!111 = !DILocation(line: 38, column: 22, scope: !57)
!112 = !DILocation(line: 38, column: 21, scope: !57)
!113 = !DILocation(line: 38, column: 36, scope: !57)
!114 = !DILocation(line: 38, column: 35, scope: !57)
!115 = !DILocation(line: 38, column: 13, scope: !57)
!116 = !DILocation(line: 31, column: 9, scope: !57)
!117 = !DILocation(line: 39, column: 19, scope: !57)
!118 = !DILocation(line: 44, column: 13, scope: !57)
!119 = !DILocation(line: 45, column: 13, scope: !57)
!120 = !DILocation(line: 46, column: 13, scope: !57)
!121 = !DILocation(line: 39, column: 16, scope: !57)
!122 = !DILocation(line: 40, column: 13, scope: !57)
!123 = !DILocation(line: 41, column: 13, scope: !57)
!124 = !DILocation(line: 42, column: 13, scope: !57)
!125 = !DILocation(line: 50, column: 12, scope: !57)
!126 = !DILocation(line: 50, column: 5, scope: !57)
!127 = !DILocation(line: 51, column: 9, scope: !57)
!128 = !DILocation(line: 51, column: 8, scope: !57)
!129 = !DILocation(line: 54, column: 21, scope: !57)
!130 = !DILocation(line: 54, column: 14, scope: !57)
!131 = !DILocation(line: 52, column: 17, scope: !57)
!132 = !DILocation(line: 52, column: 16, scope: !57)
!133 = !DILocation(line: 52, column: 9, scope: !57)
!134 = !DILocation(line: 51, column: 5, scope: !57)
!135 = !DILocation(line: 54, column: 9, scope: !59)
!136 = !DILocation(line: 55, column: 10, scope: !59)
!137 = !DILocation(line: 55, column: 5, scope: !59)
!138 = !DILocation(line: 56, column: 11, scope: !59)
!139 = !DILocation(line: 56, column: 5, scope: !59)
!140 = !DILocation(line: 58, column: 18, scope: !59)
!141 = !DILocation(line: 58, column: 17, scope: !59)
!142 = !DILocation(line: 58, column: 13, scope: !59)
!143 = !DILocation(line: 58, column: 12, scope: !59)
!144 = !DILocation(line: 58, column: 5, scope: !59)
!145 = !DILocation(line: 59, column: 9, scope: !59)
!146 = !DILocation(line: 59, column: 8, scope: !59)
!147 = !DILocation(line: 62, column: 21, scope: !59)
!148 = !DILocation(line: 62, column: 14, scope: !59)
!149 = !DILocation(line: 60, column: 17, scope: !59)
!150 = !DILocation(line: 60, column: 16, scope: !59)
!151 = !DILocation(line: 60, column: 9, scope: !59)
!152 = !DILocation(line: 59, column: 5, scope: !59)
!153 = !DILocation(line: 62, column: 9, scope: !61)
!154 = !DILocation(line: 63, column: 10, scope: !61)
!155 = !DILocation(line: 63, column: 5, scope: !61)
!156 = !DILocation(line: 64, column: 11, scope: !61)
!157 = !DILocation(line: 64, column: 5, scope: !61)
!158 = !DILocation(line: 66, column: 18, scope: !61)
!159 = !DILocation(line: 66, column: 17, scope: !61)
!160 = !DILocation(line: 66, column: 13, scope: !61)
!161 = !DILocation(line: 66, column: 12, scope: !61)
!162 = !DILocation(line: 66, column: 5, scope: !61)
!163 = !DILocation(line: 67, column: 9, scope: !61)
!164 = !DILocation(line: 67, column: 8, scope: !61)
!165 = !DILocation(line: 70, column: 21, scope: !61)
!166 = !DILocation(line: 70, column: 14, scope: !61)
!167 = !DILocation(line: 68, column: 17, scope: !61)
!168 = !DILocation(line: 68, column: 16, scope: !61)
!169 = !DILocation(line: 68, column: 9, scope: !61)
!170 = !DILocation(line: 67, column: 5, scope: !61)
!171 = !DILocation(line: 70, column: 9, scope: !63)
!172 = !DILocation(line: 71, column: 10, scope: !63)
!173 = !DILocation(line: 71, column: 5, scope: !63)
!174 = !DILocation(line: 72, column: 11, scope: !63)
!175 = !DILocation(line: 72, column: 5, scope: !63)
!176 = !DILocation(line: 74, column: 10, scope: !63)
!177 = !DILocation(line: 74, column: 5, scope: !63)
!178 = !DILocation(line: 75, column: 11, scope: !63)
!179 = !DILocation(line: 75, column: 5, scope: !63)
!180 = !DILocation(line: 76, column: 11, scope: !63)
!181 = !DILocation(line: 76, column: 5, scope: !63)
!182 = !DILocation(line: 78, column: 10, scope: !63)
!183 = !DILocation(line: 78, column: 5, scope: !63)
!184 = !DILocation(line: 79, column: 11, scope: !63)
!185 = !DILocation(line: 79, column: 5, scope: !63)
!186 = !DILocation(line: 80, column: 11, scope: !63)
!187 = !DILocation(line: 80, column: 5, scope: !63)
!188 = !DILocation(line: 82, column: 10, scope: !63)
!189 = !DILocation(line: 82, column: 5, scope: !63)
!190 = !DILocation(line: 83, column: 11, scope: !63)
!191 = !DILocation(line: 83, column: 5, scope: !63)
!192 = !DILocation(line: 84, column: 11, scope: !63)
!193 = !DILocation(line: 84, column: 5, scope: !63)
!194 = !DILocation(line: 86, column: 8, scope: !63)
!195 = !DILocation(line: 86, column: 13, scope: !63)
!196 = !DILocation(line: 89, column: 8, scope: !63)
!197 = !DILocation(line: 89, column: 13, scope: !63)
!198 = !DILocation(line: 87, column: 15, scope: !63)
!199 = !DILocation(line: 87, column: 9, scope: !63)
!200 = !DILocation(line: 86, column: 5, scope: !63)
!201 = !DILocation(line: 93, column: 5, scope: !63)
!202 = !DILocation(line: 94, column: 2, scope: !30)
!203 = !DILocation(line: 90, column: 15, scope: !63)
!204 = !DILocation(line: 90, column: 9, scope: !63)
!205 = !DILocation(line: 89, column: 5, scope: !63)
!206 = distinct !DISubprogram(name: "run_test_1", scope: !8, file: !7, line: 109, type: !207, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !21, retainedNodes: !210)
!207 = !DISubroutineType(types: !208)
!208 = !{!209}
!209 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!210 = !{!211, !213, !215, !217, !219, !221, !223, !225}
!211 = !DILocalVariable(name: "uni", scope: !212, file: !7, line: 110, type: !13, align: 4)
!212 = distinct !DILexicalBlock(scope: !206, file: !7, line: 110, column: 5)
!213 = !DILocalVariable(name: "step", scope: !214, file: !7, line: 111, type: !13, align: 4)
!214 = distinct !DILexicalBlock(scope: !212, file: !7, line: 111, column: 5)
!215 = !DILocalVariable(name: "pred", scope: !216, file: !7, line: 112, type: !13, align: 4)
!216 = distinct !DILexicalBlock(scope: !214, file: !7, line: 112, column: 5)
!217 = !DILocalVariable(name: "tgt", scope: !218, file: !7, line: 113, type: !13, align: 4)
!218 = distinct !DILexicalBlock(scope: !216, file: !7, line: 113, column: 5)
!219 = !DILocalVariable(name: "tgt2", scope: !220, file: !7, line: 114, type: !13, align: 4)
!220 = distinct !DILexicalBlock(scope: !218, file: !7, line: 114, column: 5)
!221 = !DILocalVariable(name: "lsbit", scope: !222, file: !7, line: 115, type: !13, align: 4)
!222 = distinct !DILexicalBlock(scope: !220, file: !7, line: 115, column: 5)
!223 = !DILocalVariable(name: "expected_returns", scope: !224, file: !7, line: 116, type: !13, align: 4)
!224 = distinct !DILexicalBlock(scope: !222, file: !7, line: 116, column: 5)
!225 = !DILocalVariable(name: "result", scope: !226, file: !7, line: 118, type: !13, align: 4)
!226 = distinct !DILexicalBlock(scope: !224, file: !7, line: 118, column: 5)
!227 = !DILocation(line: 110, column: 35, scope: !206)
!228 = !DILocation(line: 110, column: 9, scope: !212)
!229 = !DILocation(line: 111, column: 36, scope: !212)
!230 = !DILocation(line: 111, column: 9, scope: !214)
!231 = !DILocation(line: 112, column: 36, scope: !214)
!232 = !DILocation(line: 112, column: 9, scope: !216)
!233 = !DILocation(line: 113, column: 35, scope: !216)
!234 = !DILocation(line: 113, column: 9, scope: !218)
!235 = !DILocation(line: 114, column: 36, scope: !218)
!236 = !DILocation(line: 114, column: 9, scope: !220)
!237 = !DILocation(line: 115, column: 37, scope: !220)
!238 = !DILocation(line: 115, column: 9, scope: !222)
!239 = !DILocation(line: 116, column: 48, scope: !222)
!240 = !DILocation(line: 116, column: 9, scope: !224)
!241 = !DILocation(line: 118, column: 18, scope: !224)
!242 = !DILocation(line: 118, column: 9, scope: !226)
!243 = !DILocation(line: 119, column: 5, scope: !226)
!244 = !DILocation(line: 120, column: 2, scope: !206)
!245 = distinct !DISubprogram(name: "run_test_2", scope: !8, file: !7, line: 123, type: !207, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !21, retainedNodes: !246)
!246 = !{!247, !249, !251, !253, !255, !257, !259, !261}
!247 = !DILocalVariable(name: "uni", scope: !248, file: !7, line: 124, type: !13, align: 4)
!248 = distinct !DILexicalBlock(scope: !245, file: !7, line: 124, column: 5)
!249 = !DILocalVariable(name: "step", scope: !250, file: !7, line: 125, type: !13, align: 4)
!250 = distinct !DILexicalBlock(scope: !248, file: !7, line: 125, column: 5)
!251 = !DILocalVariable(name: "pred", scope: !252, file: !7, line: 126, type: !13, align: 4)
!252 = distinct !DILexicalBlock(scope: !250, file: !7, line: 126, column: 5)
!253 = !DILocalVariable(name: "tgt", scope: !254, file: !7, line: 127, type: !13, align: 4)
!254 = distinct !DILexicalBlock(scope: !252, file: !7, line: 127, column: 5)
!255 = !DILocalVariable(name: "tgt2", scope: !256, file: !7, line: 128, type: !13, align: 4)
!256 = distinct !DILexicalBlock(scope: !254, file: !7, line: 128, column: 5)
!257 = !DILocalVariable(name: "lsbit", scope: !258, file: !7, line: 129, type: !13, align: 4)
!258 = distinct !DILexicalBlock(scope: !256, file: !7, line: 129, column: 5)
!259 = !DILocalVariable(name: "expected_returns", scope: !260, file: !7, line: 130, type: !13, align: 4)
!260 = distinct !DILexicalBlock(scope: !258, file: !7, line: 130, column: 5)
!261 = !DILocalVariable(name: "result", scope: !262, file: !7, line: 132, type: !13, align: 4)
!262 = distinct !DILexicalBlock(scope: !260, file: !7, line: 132, column: 5)
!263 = !DILocation(line: 124, column: 35, scope: !245)
!264 = !DILocation(line: 124, column: 9, scope: !248)
!265 = !DILocation(line: 125, column: 36, scope: !248)
!266 = !DILocation(line: 125, column: 9, scope: !250)
!267 = !DILocation(line: 126, column: 36, scope: !250)
!268 = !DILocation(line: 126, column: 9, scope: !252)
!269 = !DILocation(line: 127, column: 35, scope: !252)
!270 = !DILocation(line: 127, column: 9, scope: !254)
!271 = !DILocation(line: 128, column: 36, scope: !254)
!272 = !DILocation(line: 128, column: 9, scope: !256)
!273 = !DILocation(line: 129, column: 37, scope: !256)
!274 = !DILocation(line: 129, column: 9, scope: !258)
!275 = !DILocation(line: 130, column: 48, scope: !258)
!276 = !DILocation(line: 130, column: 9, scope: !260)
!277 = !DILocation(line: 132, column: 18, scope: !260)
!278 = !DILocation(line: 132, column: 9, scope: !262)
!279 = !DILocation(line: 133, column: 5, scope: !262)
!280 = !DILocation(line: 134, column: 2, scope: !245)
!281 = distinct !DISubprogram(name: "run_test_3", scope: !8, file: !7, line: 137, type: !207, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !21, retainedNodes: !282)
!282 = !{!283, !285, !287, !289, !291, !293, !295, !297}
!283 = !DILocalVariable(name: "uni", scope: !284, file: !7, line: 138, type: !13, align: 4)
!284 = distinct !DILexicalBlock(scope: !281, file: !7, line: 138, column: 5)
!285 = !DILocalVariable(name: "step", scope: !286, file: !7, line: 139, type: !13, align: 4)
!286 = distinct !DILexicalBlock(scope: !284, file: !7, line: 139, column: 5)
!287 = !DILocalVariable(name: "pred", scope: !288, file: !7, line: 140, type: !13, align: 4)
!288 = distinct !DILexicalBlock(scope: !286, file: !7, line: 140, column: 5)
!289 = !DILocalVariable(name: "tgt", scope: !290, file: !7, line: 141, type: !13, align: 4)
!290 = distinct !DILexicalBlock(scope: !288, file: !7, line: 141, column: 5)
!291 = !DILocalVariable(name: "tgt2", scope: !292, file: !7, line: 142, type: !13, align: 4)
!292 = distinct !DILexicalBlock(scope: !290, file: !7, line: 142, column: 5)
!293 = !DILocalVariable(name: "lsbit", scope: !294, file: !7, line: 143, type: !13, align: 4)
!294 = distinct !DILexicalBlock(scope: !292, file: !7, line: 143, column: 5)
!295 = !DILocalVariable(name: "expected_returns", scope: !296, file: !7, line: 144, type: !13, align: 4)
!296 = distinct !DILexicalBlock(scope: !294, file: !7, line: 144, column: 5)
!297 = !DILocalVariable(name: "result", scope: !298, file: !7, line: 146, type: !13, align: 4)
!298 = distinct !DILexicalBlock(scope: !296, file: !7, line: 146, column: 5)
!299 = !DILocation(line: 138, column: 35, scope: !281)
!300 = !DILocation(line: 138, column: 9, scope: !284)
!301 = !DILocation(line: 139, column: 36, scope: !284)
!302 = !DILocation(line: 139, column: 9, scope: !286)
!303 = !DILocation(line: 140, column: 36, scope: !286)
!304 = !DILocation(line: 140, column: 9, scope: !288)
!305 = !DILocation(line: 141, column: 35, scope: !288)
!306 = !DILocation(line: 141, column: 9, scope: !290)
!307 = !DILocation(line: 142, column: 36, scope: !290)
!308 = !DILocation(line: 142, column: 9, scope: !292)
!309 = !DILocation(line: 143, column: 37, scope: !292)
!310 = !DILocation(line: 143, column: 9, scope: !294)
!311 = !DILocation(line: 144, column: 48, scope: !294)
!312 = !DILocation(line: 144, column: 9, scope: !296)
!313 = !DILocation(line: 146, column: 18, scope: !296)
!314 = !DILocation(line: 146, column: 9, scope: !298)
!315 = !DILocation(line: 147, column: 5, scope: !298)
!316 = !DILocation(line: 148, column: 2, scope: !281)
!317 = distinct !DISubprogram(name: "run_test_4", scope: !8, file: !7, line: 151, type: !207, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !21, retainedNodes: !318)
!318 = !{!319, !321, !323, !325, !327, !329, !331, !333}
!319 = !DILocalVariable(name: "uni", scope: !320, file: !7, line: 152, type: !13, align: 4)
!320 = distinct !DILexicalBlock(scope: !317, file: !7, line: 152, column: 5)
!321 = !DILocalVariable(name: "step", scope: !322, file: !7, line: 153, type: !13, align: 4)
!322 = distinct !DILexicalBlock(scope: !320, file: !7, line: 153, column: 5)
!323 = !DILocalVariable(name: "pred", scope: !324, file: !7, line: 154, type: !13, align: 4)
!324 = distinct !DILexicalBlock(scope: !322, file: !7, line: 154, column: 5)
!325 = !DILocalVariable(name: "tgt", scope: !326, file: !7, line: 155, type: !13, align: 4)
!326 = distinct !DILexicalBlock(scope: !324, file: !7, line: 155, column: 5)
!327 = !DILocalVariable(name: "tgt2", scope: !328, file: !7, line: 156, type: !13, align: 4)
!328 = distinct !DILexicalBlock(scope: !326, file: !7, line: 156, column: 5)
!329 = !DILocalVariable(name: "lsbit", scope: !330, file: !7, line: 157, type: !13, align: 4)
!330 = distinct !DILexicalBlock(scope: !328, file: !7, line: 157, column: 5)
!331 = !DILocalVariable(name: "expected_returns", scope: !332, file: !7, line: 158, type: !13, align: 4)
!332 = distinct !DILexicalBlock(scope: !330, file: !7, line: 158, column: 5)
!333 = !DILocalVariable(name: "result", scope: !334, file: !7, line: 160, type: !13, align: 4)
!334 = distinct !DILexicalBlock(scope: !332, file: !7, line: 160, column: 5)
!335 = !DILocation(line: 152, column: 35, scope: !317)
!336 = !DILocation(line: 152, column: 9, scope: !320)
!337 = !DILocation(line: 153, column: 36, scope: !320)
!338 = !DILocation(line: 153, column: 9, scope: !322)
!339 = !DILocation(line: 154, column: 36, scope: !322)
!340 = !DILocation(line: 154, column: 9, scope: !324)
!341 = !DILocation(line: 155, column: 35, scope: !324)
!342 = !DILocation(line: 155, column: 9, scope: !326)
!343 = !DILocation(line: 156, column: 36, scope: !326)
!344 = !DILocation(line: 156, column: 9, scope: !328)
!345 = !DILocation(line: 157, column: 37, scope: !328)
!346 = !DILocation(line: 157, column: 9, scope: !330)
!347 = !DILocation(line: 158, column: 48, scope: !330)
!348 = !DILocation(line: 158, column: 9, scope: !332)
!349 = !DILocation(line: 160, column: 18, scope: !332)
!350 = !DILocation(line: 160, column: 9, scope: !334)
!351 = !DILocation(line: 161, column: 5, scope: !334)
!352 = !DILocation(line: 162, column: 2, scope: !317)
!353 = distinct !DISubprogram(name: "run_test_5", scope: !8, file: !7, line: 165, type: !207, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !21, retainedNodes: !354)
!354 = !{!355, !357, !359, !361, !363, !365, !367, !369}
!355 = !DILocalVariable(name: "uni", scope: !356, file: !7, line: 166, type: !13, align: 4)
!356 = distinct !DILexicalBlock(scope: !353, file: !7, line: 166, column: 5)
!357 = !DILocalVariable(name: "step", scope: !358, file: !7, line: 167, type: !13, align: 4)
!358 = distinct !DILexicalBlock(scope: !356, file: !7, line: 167, column: 5)
!359 = !DILocalVariable(name: "pred", scope: !360, file: !7, line: 168, type: !13, align: 4)
!360 = distinct !DILexicalBlock(scope: !358, file: !7, line: 168, column: 5)
!361 = !DILocalVariable(name: "tgt", scope: !362, file: !7, line: 169, type: !13, align: 4)
!362 = distinct !DILexicalBlock(scope: !360, file: !7, line: 169, column: 5)
!363 = !DILocalVariable(name: "tgt2", scope: !364, file: !7, line: 170, type: !13, align: 4)
!364 = distinct !DILexicalBlock(scope: !362, file: !7, line: 170, column: 5)
!365 = !DILocalVariable(name: "lsbit", scope: !366, file: !7, line: 171, type: !13, align: 4)
!366 = distinct !DILexicalBlock(scope: !364, file: !7, line: 171, column: 5)
!367 = !DILocalVariable(name: "expected_returns", scope: !368, file: !7, line: 172, type: !13, align: 4)
!368 = distinct !DILexicalBlock(scope: !366, file: !7, line: 172, column: 5)
!369 = !DILocalVariable(name: "result", scope: !370, file: !7, line: 174, type: !13, align: 4)
!370 = distinct !DILexicalBlock(scope: !368, file: !7, line: 174, column: 5)
!371 = !DILocation(line: 166, column: 35, scope: !353)
!372 = !DILocation(line: 166, column: 9, scope: !356)
!373 = !DILocation(line: 167, column: 36, scope: !356)
!374 = !DILocation(line: 167, column: 9, scope: !358)
!375 = !DILocation(line: 168, column: 36, scope: !358)
!376 = !DILocation(line: 168, column: 9, scope: !360)
!377 = !DILocation(line: 169, column: 35, scope: !360)
!378 = !DILocation(line: 169, column: 9, scope: !362)
!379 = !DILocation(line: 170, column: 36, scope: !362)
!380 = !DILocation(line: 170, column: 9, scope: !364)
!381 = !DILocation(line: 171, column: 37, scope: !364)
!382 = !DILocation(line: 171, column: 9, scope: !366)
!383 = !DILocation(line: 172, column: 48, scope: !366)
!384 = !DILocation(line: 172, column: 9, scope: !368)
!385 = !DILocation(line: 174, column: 18, scope: !368)
!386 = !DILocation(line: 174, column: 9, scope: !370)
!387 = !DILocation(line: 175, column: 5, scope: !370)
!388 = !DILocation(line: 176, column: 2, scope: !353)
!389 = distinct !DISubprogram(name: "run_test_6", scope: !8, file: !7, line: 180, type: !207, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !21, retainedNodes: !390)
!390 = !{!391, !393, !395, !397, !399, !401, !403, !405}
!391 = !DILocalVariable(name: "uni", scope: !392, file: !7, line: 181, type: !13, align: 4)
!392 = distinct !DILexicalBlock(scope: !389, file: !7, line: 181, column: 5)
!393 = !DILocalVariable(name: "step", scope: !394, file: !7, line: 182, type: !13, align: 4)
!394 = distinct !DILexicalBlock(scope: !392, file: !7, line: 182, column: 5)
!395 = !DILocalVariable(name: "pred", scope: !396, file: !7, line: 183, type: !13, align: 4)
!396 = distinct !DILexicalBlock(scope: !394, file: !7, line: 183, column: 5)
!397 = !DILocalVariable(name: "tgt", scope: !398, file: !7, line: 184, type: !13, align: 4)
!398 = distinct !DILexicalBlock(scope: !396, file: !7, line: 184, column: 5)
!399 = !DILocalVariable(name: "tgt2", scope: !400, file: !7, line: 185, type: !13, align: 4)
!400 = distinct !DILexicalBlock(scope: !398, file: !7, line: 185, column: 5)
!401 = !DILocalVariable(name: "lsbit", scope: !402, file: !7, line: 186, type: !13, align: 4)
!402 = distinct !DILexicalBlock(scope: !400, file: !7, line: 186, column: 5)
!403 = !DILocalVariable(name: "expected_returns", scope: !404, file: !7, line: 187, type: !13, align: 4)
!404 = distinct !DILexicalBlock(scope: !402, file: !7, line: 187, column: 5)
!405 = !DILocalVariable(name: "result", scope: !406, file: !7, line: 188, type: !13, align: 4)
!406 = distinct !DILexicalBlock(scope: !404, file: !7, line: 188, column: 5)
!407 = !DILocation(line: 181, column: 35, scope: !389)
!408 = !DILocation(line: 181, column: 9, scope: !392)
!409 = !DILocation(line: 182, column: 36, scope: !392)
!410 = !DILocation(line: 182, column: 9, scope: !394)
!411 = !DILocation(line: 183, column: 36, scope: !394)
!412 = !DILocation(line: 183, column: 9, scope: !396)
!413 = !DILocation(line: 184, column: 35, scope: !396)
!414 = !DILocation(line: 184, column: 9, scope: !398)
!415 = !DILocation(line: 185, column: 36, scope: !398)
!416 = !DILocation(line: 185, column: 9, scope: !400)
!417 = !DILocation(line: 186, column: 37, scope: !400)
!418 = !DILocation(line: 186, column: 9, scope: !402)
!419 = !DILocation(line: 187, column: 48, scope: !402)
!420 = !DILocation(line: 187, column: 9, scope: !404)
!421 = !DILocation(line: 188, column: 18, scope: !404)
!422 = !DILocation(line: 188, column: 9, scope: !406)
!423 = !DILocation(line: 189, column: 5, scope: !406)
!424 = !DILocation(line: 190, column: 2, scope: !389)
!425 = distinct !DISubprogram(name: "run_test_7", scope: !8, file: !7, line: 193, type: !207, scopeLine: 193, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !21, retainedNodes: !426)
!426 = !{!427, !429, !431, !433, !435, !437, !439, !441}
!427 = !DILocalVariable(name: "uni", scope: !428, file: !7, line: 194, type: !13, align: 4)
!428 = distinct !DILexicalBlock(scope: !425, file: !7, line: 194, column: 5)
!429 = !DILocalVariable(name: "step", scope: !430, file: !7, line: 195, type: !13, align: 4)
!430 = distinct !DILexicalBlock(scope: !428, file: !7, line: 195, column: 5)
!431 = !DILocalVariable(name: "pred", scope: !432, file: !7, line: 196, type: !13, align: 4)
!432 = distinct !DILexicalBlock(scope: !430, file: !7, line: 196, column: 5)
!433 = !DILocalVariable(name: "tgt", scope: !434, file: !7, line: 197, type: !13, align: 4)
!434 = distinct !DILexicalBlock(scope: !432, file: !7, line: 197, column: 5)
!435 = !DILocalVariable(name: "tgt2", scope: !436, file: !7, line: 198, type: !13, align: 4)
!436 = distinct !DILexicalBlock(scope: !434, file: !7, line: 198, column: 5)
!437 = !DILocalVariable(name: "lsbit", scope: !438, file: !7, line: 199, type: !13, align: 4)
!438 = distinct !DILexicalBlock(scope: !436, file: !7, line: 199, column: 5)
!439 = !DILocalVariable(name: "expected_returns", scope: !440, file: !7, line: 200, type: !13, align: 4)
!440 = distinct !DILexicalBlock(scope: !438, file: !7, line: 200, column: 5)
!441 = !DILocalVariable(name: "result", scope: !442, file: !7, line: 201, type: !13, align: 4)
!442 = distinct !DILexicalBlock(scope: !440, file: !7, line: 201, column: 5)
!443 = !DILocation(line: 194, column: 35, scope: !425)
!444 = !DILocation(line: 194, column: 9, scope: !428)
!445 = !DILocation(line: 195, column: 36, scope: !428)
!446 = !DILocation(line: 195, column: 9, scope: !430)
!447 = !DILocation(line: 196, column: 36, scope: !430)
!448 = !DILocation(line: 196, column: 9, scope: !432)
!449 = !DILocation(line: 197, column: 35, scope: !432)
!450 = !DILocation(line: 197, column: 9, scope: !434)
!451 = !DILocation(line: 198, column: 36, scope: !434)
!452 = !DILocation(line: 198, column: 9, scope: !436)
!453 = !DILocation(line: 199, column: 37, scope: !436)
!454 = !DILocation(line: 199, column: 9, scope: !438)
!455 = !DILocation(line: 200, column: 48, scope: !438)
!456 = !DILocation(line: 200, column: 9, scope: !440)
!457 = !DILocation(line: 201, column: 18, scope: !440)
!458 = !DILocation(line: 201, column: 9, scope: !442)
!459 = !DILocation(line: 202, column: 5, scope: !442)
!460 = !DILocation(line: 203, column: 2, scope: !425)
!461 = distinct !DISubprogram(name: "run_test_8", scope: !8, file: !7, line: 206, type: !207, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !21, retainedNodes: !462)
!462 = !{!463, !465, !467, !469, !471, !473, !475, !477}
!463 = !DILocalVariable(name: "uni", scope: !464, file: !7, line: 207, type: !13, align: 4)
!464 = distinct !DILexicalBlock(scope: !461, file: !7, line: 207, column: 5)
!465 = !DILocalVariable(name: "step", scope: !466, file: !7, line: 208, type: !13, align: 4)
!466 = distinct !DILexicalBlock(scope: !464, file: !7, line: 208, column: 5)
!467 = !DILocalVariable(name: "pred", scope: !468, file: !7, line: 209, type: !13, align: 4)
!468 = distinct !DILexicalBlock(scope: !466, file: !7, line: 209, column: 5)
!469 = !DILocalVariable(name: "tgt", scope: !470, file: !7, line: 210, type: !13, align: 4)
!470 = distinct !DILexicalBlock(scope: !468, file: !7, line: 210, column: 5)
!471 = !DILocalVariable(name: "tgt2", scope: !472, file: !7, line: 211, type: !13, align: 4)
!472 = distinct !DILexicalBlock(scope: !470, file: !7, line: 211, column: 5)
!473 = !DILocalVariable(name: "lsbit", scope: !474, file: !7, line: 212, type: !13, align: 4)
!474 = distinct !DILexicalBlock(scope: !472, file: !7, line: 212, column: 5)
!475 = !DILocalVariable(name: "expected_returns", scope: !476, file: !7, line: 213, type: !13, align: 4)
!476 = distinct !DILexicalBlock(scope: !474, file: !7, line: 213, column: 5)
!477 = !DILocalVariable(name: "result", scope: !478, file: !7, line: 214, type: !13, align: 4)
!478 = distinct !DILexicalBlock(scope: !476, file: !7, line: 214, column: 5)
!479 = !DILocation(line: 207, column: 35, scope: !461)
!480 = !DILocation(line: 207, column: 9, scope: !464)
!481 = !DILocation(line: 208, column: 36, scope: !464)
!482 = !DILocation(line: 208, column: 9, scope: !466)
!483 = !DILocation(line: 209, column: 36, scope: !466)
!484 = !DILocation(line: 209, column: 9, scope: !468)
!485 = !DILocation(line: 210, column: 35, scope: !468)
!486 = !DILocation(line: 210, column: 9, scope: !470)
!487 = !DILocation(line: 211, column: 36, scope: !470)
!488 = !DILocation(line: 211, column: 9, scope: !472)
!489 = !DILocation(line: 212, column: 37, scope: !472)
!490 = !DILocation(line: 212, column: 9, scope: !474)
!491 = !DILocation(line: 213, column: 48, scope: !474)
!492 = !DILocation(line: 213, column: 9, scope: !476)
!493 = !DILocation(line: 214, column: 18, scope: !476)
!494 = !DILocation(line: 214, column: 9, scope: !478)
!495 = !DILocation(line: 215, column: 5, scope: !478)
!496 = !DILocation(line: 216, column: 2, scope: !461)
!497 = distinct !DISubprogram(name: "run_test_9", scope: !8, file: !7, line: 219, type: !207, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !21, retainedNodes: !498)
!498 = !{!499, !501, !503, !505, !507, !509, !511, !513}
!499 = !DILocalVariable(name: "uni", scope: !500, file: !7, line: 220, type: !13, align: 4)
!500 = distinct !DILexicalBlock(scope: !497, file: !7, line: 220, column: 5)
!501 = !DILocalVariable(name: "step", scope: !502, file: !7, line: 221, type: !13, align: 4)
!502 = distinct !DILexicalBlock(scope: !500, file: !7, line: 221, column: 5)
!503 = !DILocalVariable(name: "pred", scope: !504, file: !7, line: 222, type: !13, align: 4)
!504 = distinct !DILexicalBlock(scope: !502, file: !7, line: 222, column: 5)
!505 = !DILocalVariable(name: "tgt", scope: !506, file: !7, line: 223, type: !13, align: 4)
!506 = distinct !DILexicalBlock(scope: !504, file: !7, line: 223, column: 5)
!507 = !DILocalVariable(name: "tgt2", scope: !508, file: !7, line: 224, type: !13, align: 4)
!508 = distinct !DILexicalBlock(scope: !506, file: !7, line: 224, column: 5)
!509 = !DILocalVariable(name: "lsbit", scope: !510, file: !7, line: 225, type: !13, align: 4)
!510 = distinct !DILexicalBlock(scope: !508, file: !7, line: 225, column: 5)
!511 = !DILocalVariable(name: "expected_returns", scope: !512, file: !7, line: 226, type: !13, align: 4)
!512 = distinct !DILexicalBlock(scope: !510, file: !7, line: 226, column: 5)
!513 = !DILocalVariable(name: "result", scope: !514, file: !7, line: 227, type: !13, align: 4)
!514 = distinct !DILexicalBlock(scope: !512, file: !7, line: 227, column: 5)
!515 = !DILocation(line: 220, column: 35, scope: !497)
!516 = !DILocation(line: 220, column: 9, scope: !500)
!517 = !DILocation(line: 221, column: 36, scope: !500)
!518 = !DILocation(line: 221, column: 9, scope: !502)
!519 = !DILocation(line: 222, column: 36, scope: !502)
!520 = !DILocation(line: 222, column: 9, scope: !504)
!521 = !DILocation(line: 223, column: 35, scope: !504)
!522 = !DILocation(line: 223, column: 9, scope: !506)
!523 = !DILocation(line: 224, column: 36, scope: !506)
!524 = !DILocation(line: 224, column: 9, scope: !508)
!525 = !DILocation(line: 225, column: 37, scope: !508)
!526 = !DILocation(line: 225, column: 9, scope: !510)
!527 = !DILocation(line: 226, column: 48, scope: !510)
!528 = !DILocation(line: 226, column: 9, scope: !512)
!529 = !DILocation(line: 227, column: 18, scope: !512)
!530 = !DILocation(line: 227, column: 9, scope: !514)
!531 = !DILocation(line: 228, column: 5, scope: !514)
!532 = !DILocation(line: 229, column: 2, scope: !497)
!533 = distinct !DISubprogram(name: "run_test_10", scope: !8, file: !7, line: 232, type: !207, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !21, retainedNodes: !534)
!534 = !{!535, !537, !539, !541, !543, !545, !547, !549}
!535 = !DILocalVariable(name: "uni", scope: !536, file: !7, line: 233, type: !13, align: 4)
!536 = distinct !DILexicalBlock(scope: !533, file: !7, line: 233, column: 5)
!537 = !DILocalVariable(name: "step", scope: !538, file: !7, line: 234, type: !13, align: 4)
!538 = distinct !DILexicalBlock(scope: !536, file: !7, line: 234, column: 5)
!539 = !DILocalVariable(name: "pred", scope: !540, file: !7, line: 235, type: !13, align: 4)
!540 = distinct !DILexicalBlock(scope: !538, file: !7, line: 235, column: 5)
!541 = !DILocalVariable(name: "tgt", scope: !542, file: !7, line: 236, type: !13, align: 4)
!542 = distinct !DILexicalBlock(scope: !540, file: !7, line: 236, column: 5)
!543 = !DILocalVariable(name: "tgt2", scope: !544, file: !7, line: 237, type: !13, align: 4)
!544 = distinct !DILexicalBlock(scope: !542, file: !7, line: 237, column: 5)
!545 = !DILocalVariable(name: "lsbit", scope: !546, file: !7, line: 238, type: !13, align: 4)
!546 = distinct !DILexicalBlock(scope: !544, file: !7, line: 238, column: 5)
!547 = !DILocalVariable(name: "expected_returns", scope: !548, file: !7, line: 239, type: !13, align: 4)
!548 = distinct !DILexicalBlock(scope: !546, file: !7, line: 239, column: 5)
!549 = !DILocalVariable(name: "result", scope: !550, file: !7, line: 240, type: !13, align: 4)
!550 = distinct !DILexicalBlock(scope: !548, file: !7, line: 240, column: 5)
!551 = !DILocation(line: 233, column: 35, scope: !533)
!552 = !DILocation(line: 233, column: 9, scope: !536)
!553 = !DILocation(line: 234, column: 36, scope: !536)
!554 = !DILocation(line: 234, column: 9, scope: !538)
!555 = !DILocation(line: 235, column: 36, scope: !538)
!556 = !DILocation(line: 235, column: 9, scope: !540)
!557 = !DILocation(line: 236, column: 35, scope: !540)
!558 = !DILocation(line: 236, column: 9, scope: !542)
!559 = !DILocation(line: 237, column: 36, scope: !542)
!560 = !DILocation(line: 237, column: 9, scope: !544)
!561 = !DILocation(line: 238, column: 37, scope: !544)
!562 = !DILocation(line: 238, column: 9, scope: !546)
!563 = !DILocation(line: 239, column: 48, scope: !546)
!564 = !DILocation(line: 239, column: 9, scope: !548)
!565 = !DILocation(line: 240, column: 18, scope: !548)
!566 = !DILocation(line: 240, column: 9, scope: !550)
!567 = !DILocation(line: 241, column: 5, scope: !550)
!568 = !DILocation(line: 242, column: 2, scope: !533)
!569 = distinct !DISubprogram(name: "run_test_11", scope: !8, file: !7, line: 245, type: !207, scopeLine: 245, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !21, retainedNodes: !570)
!570 = !{!571, !573, !575, !577, !579, !581, !583, !585}
!571 = !DILocalVariable(name: "uni", scope: !572, file: !7, line: 246, type: !13, align: 4)
!572 = distinct !DILexicalBlock(scope: !569, file: !7, line: 246, column: 5)
!573 = !DILocalVariable(name: "step", scope: !574, file: !7, line: 247, type: !13, align: 4)
!574 = distinct !DILexicalBlock(scope: !572, file: !7, line: 247, column: 5)
!575 = !DILocalVariable(name: "pred", scope: !576, file: !7, line: 248, type: !13, align: 4)
!576 = distinct !DILexicalBlock(scope: !574, file: !7, line: 248, column: 5)
!577 = !DILocalVariable(name: "tgt", scope: !578, file: !7, line: 249, type: !13, align: 4)
!578 = distinct !DILexicalBlock(scope: !576, file: !7, line: 249, column: 5)
!579 = !DILocalVariable(name: "tgt2", scope: !580, file: !7, line: 250, type: !13, align: 4)
!580 = distinct !DILexicalBlock(scope: !578, file: !7, line: 250, column: 5)
!581 = !DILocalVariable(name: "lsbit", scope: !582, file: !7, line: 251, type: !13, align: 4)
!582 = distinct !DILexicalBlock(scope: !580, file: !7, line: 251, column: 5)
!583 = !DILocalVariable(name: "expected_returns", scope: !584, file: !7, line: 252, type: !13, align: 4)
!584 = distinct !DILexicalBlock(scope: !582, file: !7, line: 252, column: 5)
!585 = !DILocalVariable(name: "result", scope: !586, file: !7, line: 253, type: !13, align: 4)
!586 = distinct !DILexicalBlock(scope: !584, file: !7, line: 253, column: 5)
!587 = !DILocation(line: 246, column: 35, scope: !569)
!588 = !DILocation(line: 246, column: 9, scope: !572)
!589 = !DILocation(line: 247, column: 36, scope: !572)
!590 = !DILocation(line: 247, column: 9, scope: !574)
!591 = !DILocation(line: 248, column: 36, scope: !574)
!592 = !DILocation(line: 248, column: 9, scope: !576)
!593 = !DILocation(line: 249, column: 35, scope: !576)
!594 = !DILocation(line: 249, column: 9, scope: !578)
!595 = !DILocation(line: 250, column: 36, scope: !578)
!596 = !DILocation(line: 250, column: 9, scope: !580)
!597 = !DILocation(line: 251, column: 37, scope: !580)
!598 = !DILocation(line: 251, column: 9, scope: !582)
!599 = !DILocation(line: 252, column: 48, scope: !582)
!600 = !DILocation(line: 252, column: 9, scope: !584)
!601 = !DILocation(line: 253, column: 18, scope: !584)
!602 = !DILocation(line: 253, column: 9, scope: !586)
!603 = !DILocation(line: 254, column: 5, scope: !586)
!604 = !DILocation(line: 255, column: 2, scope: !569)
!605 = distinct !DISubprogram(name: "run_test_12", scope: !8, file: !7, line: 258, type: !207, scopeLine: 258, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !21, retainedNodes: !606)
!606 = !{!607, !609, !611, !613, !615, !617, !619, !621}
!607 = !DILocalVariable(name: "uni", scope: !608, file: !7, line: 259, type: !13, align: 4)
!608 = distinct !DILexicalBlock(scope: !605, file: !7, line: 259, column: 5)
!609 = !DILocalVariable(name: "step", scope: !610, file: !7, line: 260, type: !13, align: 4)
!610 = distinct !DILexicalBlock(scope: !608, file: !7, line: 260, column: 5)
!611 = !DILocalVariable(name: "pred", scope: !612, file: !7, line: 261, type: !13, align: 4)
!612 = distinct !DILexicalBlock(scope: !610, file: !7, line: 261, column: 5)
!613 = !DILocalVariable(name: "tgt", scope: !614, file: !7, line: 262, type: !13, align: 4)
!614 = distinct !DILexicalBlock(scope: !612, file: !7, line: 262, column: 5)
!615 = !DILocalVariable(name: "tgt2", scope: !616, file: !7, line: 263, type: !13, align: 4)
!616 = distinct !DILexicalBlock(scope: !614, file: !7, line: 263, column: 5)
!617 = !DILocalVariable(name: "lsbit", scope: !618, file: !7, line: 264, type: !13, align: 4)
!618 = distinct !DILexicalBlock(scope: !616, file: !7, line: 264, column: 5)
!619 = !DILocalVariable(name: "expected_returns", scope: !620, file: !7, line: 265, type: !13, align: 4)
!620 = distinct !DILexicalBlock(scope: !618, file: !7, line: 265, column: 5)
!621 = !DILocalVariable(name: "result", scope: !622, file: !7, line: 266, type: !13, align: 4)
!622 = distinct !DILexicalBlock(scope: !620, file: !7, line: 266, column: 5)
!623 = !DILocation(line: 259, column: 35, scope: !605)
!624 = !DILocation(line: 259, column: 9, scope: !608)
!625 = !DILocation(line: 260, column: 36, scope: !608)
!626 = !DILocation(line: 260, column: 9, scope: !610)
!627 = !DILocation(line: 261, column: 36, scope: !610)
!628 = !DILocation(line: 261, column: 9, scope: !612)
!629 = !DILocation(line: 262, column: 35, scope: !612)
!630 = !DILocation(line: 262, column: 9, scope: !614)
!631 = !DILocation(line: 263, column: 36, scope: !614)
!632 = !DILocation(line: 263, column: 9, scope: !616)
!633 = !DILocation(line: 264, column: 37, scope: !616)
!634 = !DILocation(line: 264, column: 9, scope: !618)
!635 = !DILocation(line: 265, column: 48, scope: !618)
!636 = !DILocation(line: 265, column: 9, scope: !620)
!637 = !DILocation(line: 266, column: 18, scope: !620)
!638 = !DILocation(line: 266, column: 9, scope: !622)
!639 = !DILocation(line: 267, column: 5, scope: !622)
!640 = !DILocation(line: 268, column: 2, scope: !605)
!641 = distinct !DISubprogram(name: "run_test_13", scope: !8, file: !7, line: 271, type: !207, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !21, retainedNodes: !642)
!642 = !{!643, !645, !647, !649, !651, !653, !655, !657}
!643 = !DILocalVariable(name: "uni", scope: !644, file: !7, line: 272, type: !13, align: 4)
!644 = distinct !DILexicalBlock(scope: !641, file: !7, line: 272, column: 5)
!645 = !DILocalVariable(name: "step", scope: !646, file: !7, line: 273, type: !13, align: 4)
!646 = distinct !DILexicalBlock(scope: !644, file: !7, line: 273, column: 5)
!647 = !DILocalVariable(name: "pred", scope: !648, file: !7, line: 274, type: !13, align: 4)
!648 = distinct !DILexicalBlock(scope: !646, file: !7, line: 274, column: 5)
!649 = !DILocalVariable(name: "tgt", scope: !650, file: !7, line: 275, type: !13, align: 4)
!650 = distinct !DILexicalBlock(scope: !648, file: !7, line: 275, column: 5)
!651 = !DILocalVariable(name: "tgt2", scope: !652, file: !7, line: 276, type: !13, align: 4)
!652 = distinct !DILexicalBlock(scope: !650, file: !7, line: 276, column: 5)
!653 = !DILocalVariable(name: "lsbit", scope: !654, file: !7, line: 277, type: !13, align: 4)
!654 = distinct !DILexicalBlock(scope: !652, file: !7, line: 277, column: 5)
!655 = !DILocalVariable(name: "expected_returns", scope: !656, file: !7, line: 278, type: !13, align: 4)
!656 = distinct !DILexicalBlock(scope: !654, file: !7, line: 278, column: 5)
!657 = !DILocalVariable(name: "result", scope: !658, file: !7, line: 279, type: !13, align: 4)
!658 = distinct !DILexicalBlock(scope: !656, file: !7, line: 279, column: 5)
!659 = !DILocation(line: 272, column: 35, scope: !641)
!660 = !DILocation(line: 272, column: 9, scope: !644)
!661 = !DILocation(line: 273, column: 36, scope: !644)
!662 = !DILocation(line: 273, column: 9, scope: !646)
!663 = !DILocation(line: 274, column: 36, scope: !646)
!664 = !DILocation(line: 274, column: 9, scope: !648)
!665 = !DILocation(line: 275, column: 35, scope: !648)
!666 = !DILocation(line: 275, column: 9, scope: !650)
!667 = !DILocation(line: 276, column: 36, scope: !650)
!668 = !DILocation(line: 276, column: 9, scope: !652)
!669 = !DILocation(line: 277, column: 37, scope: !652)
!670 = !DILocation(line: 277, column: 9, scope: !654)
!671 = !DILocation(line: 278, column: 48, scope: !654)
!672 = !DILocation(line: 278, column: 9, scope: !656)
!673 = !DILocation(line: 279, column: 18, scope: !656)
!674 = !DILocation(line: 279, column: 9, scope: !658)
!675 = !DILocation(line: 280, column: 5, scope: !658)
!676 = !DILocation(line: 281, column: 2, scope: !641)
!677 = distinct !DISubprogram(name: "run_test_14", scope: !8, file: !7, line: 284, type: !207, scopeLine: 284, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !21, retainedNodes: !678)
!678 = !{!679, !681, !683, !685, !687, !689, !691, !693}
!679 = !DILocalVariable(name: "uni", scope: !680, file: !7, line: 285, type: !13, align: 4)
!680 = distinct !DILexicalBlock(scope: !677, file: !7, line: 285, column: 5)
!681 = !DILocalVariable(name: "step", scope: !682, file: !7, line: 286, type: !13, align: 4)
!682 = distinct !DILexicalBlock(scope: !680, file: !7, line: 286, column: 5)
!683 = !DILocalVariable(name: "pred", scope: !684, file: !7, line: 287, type: !13, align: 4)
!684 = distinct !DILexicalBlock(scope: !682, file: !7, line: 287, column: 5)
!685 = !DILocalVariable(name: "tgt", scope: !686, file: !7, line: 288, type: !13, align: 4)
!686 = distinct !DILexicalBlock(scope: !684, file: !7, line: 288, column: 5)
!687 = !DILocalVariable(name: "tgt2", scope: !688, file: !7, line: 289, type: !13, align: 4)
!688 = distinct !DILexicalBlock(scope: !686, file: !7, line: 289, column: 5)
!689 = !DILocalVariable(name: "lsbit", scope: !690, file: !7, line: 290, type: !13, align: 4)
!690 = distinct !DILexicalBlock(scope: !688, file: !7, line: 290, column: 5)
!691 = !DILocalVariable(name: "expected_returns", scope: !692, file: !7, line: 291, type: !13, align: 4)
!692 = distinct !DILexicalBlock(scope: !690, file: !7, line: 291, column: 5)
!693 = !DILocalVariable(name: "result", scope: !694, file: !7, line: 292, type: !13, align: 4)
!694 = distinct !DILexicalBlock(scope: !692, file: !7, line: 292, column: 5)
!695 = !DILocation(line: 285, column: 35, scope: !677)
!696 = !DILocation(line: 285, column: 9, scope: !680)
!697 = !DILocation(line: 286, column: 36, scope: !680)
!698 = !DILocation(line: 286, column: 9, scope: !682)
!699 = !DILocation(line: 287, column: 36, scope: !682)
!700 = !DILocation(line: 287, column: 9, scope: !684)
!701 = !DILocation(line: 288, column: 35, scope: !684)
!702 = !DILocation(line: 288, column: 9, scope: !686)
!703 = !DILocation(line: 289, column: 36, scope: !686)
!704 = !DILocation(line: 289, column: 9, scope: !688)
!705 = !DILocation(line: 290, column: 37, scope: !688)
!706 = !DILocation(line: 290, column: 9, scope: !690)
!707 = !DILocation(line: 291, column: 48, scope: !690)
!708 = !DILocation(line: 291, column: 9, scope: !692)
!709 = !DILocation(line: 292, column: 18, scope: !692)
!710 = !DILocation(line: 292, column: 9, scope: !694)
!711 = !DILocation(line: 293, column: 5, scope: !694)
!712 = !DILocation(line: 294, column: 2, scope: !677)
!713 = distinct !DISubprogram(name: "run_test_15", scope: !8, file: !7, line: 297, type: !207, scopeLine: 297, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !21, retainedNodes: !714)
!714 = !{!715, !717, !719, !721, !723, !725, !727, !729}
!715 = !DILocalVariable(name: "uni", scope: !716, file: !7, line: 298, type: !13, align: 4)
!716 = distinct !DILexicalBlock(scope: !713, file: !7, line: 298, column: 5)
!717 = !DILocalVariable(name: "step", scope: !718, file: !7, line: 299, type: !13, align: 4)
!718 = distinct !DILexicalBlock(scope: !716, file: !7, line: 299, column: 5)
!719 = !DILocalVariable(name: "pred", scope: !720, file: !7, line: 300, type: !13, align: 4)
!720 = distinct !DILexicalBlock(scope: !718, file: !7, line: 300, column: 5)
!721 = !DILocalVariable(name: "tgt", scope: !722, file: !7, line: 301, type: !13, align: 4)
!722 = distinct !DILexicalBlock(scope: !720, file: !7, line: 301, column: 5)
!723 = !DILocalVariable(name: "tgt2", scope: !724, file: !7, line: 302, type: !13, align: 4)
!724 = distinct !DILexicalBlock(scope: !722, file: !7, line: 302, column: 5)
!725 = !DILocalVariable(name: "lsbit", scope: !726, file: !7, line: 303, type: !13, align: 4)
!726 = distinct !DILexicalBlock(scope: !724, file: !7, line: 303, column: 5)
!727 = !DILocalVariable(name: "expected_returns", scope: !728, file: !7, line: 304, type: !13, align: 4)
!728 = distinct !DILexicalBlock(scope: !726, file: !7, line: 304, column: 5)
!729 = !DILocalVariable(name: "result", scope: !730, file: !7, line: 305, type: !13, align: 4)
!730 = distinct !DILexicalBlock(scope: !728, file: !7, line: 305, column: 5)
!731 = !DILocation(line: 298, column: 35, scope: !713)
!732 = !DILocation(line: 298, column: 9, scope: !716)
!733 = !DILocation(line: 299, column: 36, scope: !716)
!734 = !DILocation(line: 299, column: 9, scope: !718)
!735 = !DILocation(line: 300, column: 36, scope: !718)
!736 = !DILocation(line: 300, column: 9, scope: !720)
!737 = !DILocation(line: 301, column: 35, scope: !720)
!738 = !DILocation(line: 301, column: 9, scope: !722)
!739 = !DILocation(line: 302, column: 36, scope: !722)
!740 = !DILocation(line: 302, column: 9, scope: !724)
!741 = !DILocation(line: 303, column: 37, scope: !724)
!742 = !DILocation(line: 303, column: 9, scope: !726)
!743 = !DILocation(line: 304, column: 48, scope: !726)
!744 = !DILocation(line: 304, column: 9, scope: !728)
!745 = !DILocation(line: 305, column: 18, scope: !728)
!746 = !DILocation(line: 305, column: 9, scope: !730)
!747 = !DILocation(line: 306, column: 5, scope: !730)
!748 = !DILocation(line: 307, column: 2, scope: !713)
!749 = distinct !DISubprogram(name: "run_test_16", scope: !8, file: !7, line: 310, type: !207, scopeLine: 310, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !21, retainedNodes: !750)
!750 = !{!751, !753, !755, !757, !759, !761, !763, !765}
!751 = !DILocalVariable(name: "uni", scope: !752, file: !7, line: 311, type: !13, align: 4)
!752 = distinct !DILexicalBlock(scope: !749, file: !7, line: 311, column: 5)
!753 = !DILocalVariable(name: "step", scope: !754, file: !7, line: 312, type: !13, align: 4)
!754 = distinct !DILexicalBlock(scope: !752, file: !7, line: 312, column: 5)
!755 = !DILocalVariable(name: "pred", scope: !756, file: !7, line: 313, type: !13, align: 4)
!756 = distinct !DILexicalBlock(scope: !754, file: !7, line: 313, column: 5)
!757 = !DILocalVariable(name: "tgt", scope: !758, file: !7, line: 314, type: !13, align: 4)
!758 = distinct !DILexicalBlock(scope: !756, file: !7, line: 314, column: 5)
!759 = !DILocalVariable(name: "tgt2", scope: !760, file: !7, line: 315, type: !13, align: 4)
!760 = distinct !DILexicalBlock(scope: !758, file: !7, line: 315, column: 5)
!761 = !DILocalVariable(name: "lsbit", scope: !762, file: !7, line: 316, type: !13, align: 4)
!762 = distinct !DILexicalBlock(scope: !760, file: !7, line: 316, column: 5)
!763 = !DILocalVariable(name: "expected_returns", scope: !764, file: !7, line: 317, type: !13, align: 4)
!764 = distinct !DILexicalBlock(scope: !762, file: !7, line: 317, column: 5)
!765 = !DILocalVariable(name: "result", scope: !766, file: !7, line: 318, type: !13, align: 4)
!766 = distinct !DILexicalBlock(scope: !764, file: !7, line: 318, column: 5)
!767 = !DILocation(line: 311, column: 35, scope: !749)
!768 = !DILocation(line: 311, column: 9, scope: !752)
!769 = !DILocation(line: 312, column: 36, scope: !752)
!770 = !DILocation(line: 312, column: 9, scope: !754)
!771 = !DILocation(line: 313, column: 36, scope: !754)
!772 = !DILocation(line: 313, column: 9, scope: !756)
!773 = !DILocation(line: 314, column: 35, scope: !756)
!774 = !DILocation(line: 314, column: 9, scope: !758)
!775 = !DILocation(line: 315, column: 36, scope: !758)
!776 = !DILocation(line: 315, column: 9, scope: !760)
!777 = !DILocation(line: 316, column: 37, scope: !760)
!778 = !DILocation(line: 316, column: 9, scope: !762)
!779 = !DILocation(line: 317, column: 48, scope: !762)
!780 = !DILocation(line: 317, column: 9, scope: !764)
!781 = !DILocation(line: 318, column: 18, scope: !764)
!782 = !DILocation(line: 318, column: 9, scope: !766)
!783 = !DILocation(line: 319, column: 5, scope: !766)
!784 = !DILocation(line: 320, column: 2, scope: !749)
!785 = distinct !DISubprogram(name: "run_test_17", scope: !8, file: !7, line: 323, type: !207, scopeLine: 323, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !21, retainedNodes: !786)
!786 = !{!787, !789, !791, !793, !795, !797, !799, !801}
!787 = !DILocalVariable(name: "uni", scope: !788, file: !7, line: 324, type: !13, align: 4)
!788 = distinct !DILexicalBlock(scope: !785, file: !7, line: 324, column: 5)
!789 = !DILocalVariable(name: "step", scope: !790, file: !7, line: 325, type: !13, align: 4)
!790 = distinct !DILexicalBlock(scope: !788, file: !7, line: 325, column: 5)
!791 = !DILocalVariable(name: "pred", scope: !792, file: !7, line: 326, type: !13, align: 4)
!792 = distinct !DILexicalBlock(scope: !790, file: !7, line: 326, column: 5)
!793 = !DILocalVariable(name: "tgt", scope: !794, file: !7, line: 327, type: !13, align: 4)
!794 = distinct !DILexicalBlock(scope: !792, file: !7, line: 327, column: 5)
!795 = !DILocalVariable(name: "tgt2", scope: !796, file: !7, line: 328, type: !13, align: 4)
!796 = distinct !DILexicalBlock(scope: !794, file: !7, line: 328, column: 5)
!797 = !DILocalVariable(name: "lsbit", scope: !798, file: !7, line: 329, type: !13, align: 4)
!798 = distinct !DILexicalBlock(scope: !796, file: !7, line: 329, column: 5)
!799 = !DILocalVariable(name: "expected_returns", scope: !800, file: !7, line: 330, type: !13, align: 4)
!800 = distinct !DILexicalBlock(scope: !798, file: !7, line: 330, column: 5)
!801 = !DILocalVariable(name: "result", scope: !802, file: !7, line: 331, type: !13, align: 4)
!802 = distinct !DILexicalBlock(scope: !800, file: !7, line: 331, column: 5)
!803 = !DILocation(line: 324, column: 35, scope: !785)
!804 = !DILocation(line: 324, column: 9, scope: !788)
!805 = !DILocation(line: 325, column: 36, scope: !788)
!806 = !DILocation(line: 325, column: 9, scope: !790)
!807 = !DILocation(line: 326, column: 36, scope: !790)
!808 = !DILocation(line: 326, column: 9, scope: !792)
!809 = !DILocation(line: 327, column: 35, scope: !792)
!810 = !DILocation(line: 327, column: 9, scope: !794)
!811 = !DILocation(line: 328, column: 36, scope: !794)
!812 = !DILocation(line: 328, column: 9, scope: !796)
!813 = !DILocation(line: 329, column: 37, scope: !796)
!814 = !DILocation(line: 329, column: 9, scope: !798)
!815 = !DILocation(line: 330, column: 48, scope: !798)
!816 = !DILocation(line: 330, column: 9, scope: !800)
!817 = !DILocation(line: 331, column: 18, scope: !800)
!818 = !DILocation(line: 331, column: 9, scope: !802)
!819 = !DILocation(line: 332, column: 5, scope: !802)
!820 = !DILocation(line: 333, column: 2, scope: !785)
!821 = distinct !DISubprogram(name: "run_test_18", scope: !8, file: !7, line: 336, type: !207, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !21, retainedNodes: !822)
!822 = !{!823, !825, !827, !829, !831, !833, !835, !837}
!823 = !DILocalVariable(name: "uni", scope: !824, file: !7, line: 337, type: !13, align: 4)
!824 = distinct !DILexicalBlock(scope: !821, file: !7, line: 337, column: 5)
!825 = !DILocalVariable(name: "step", scope: !826, file: !7, line: 338, type: !13, align: 4)
!826 = distinct !DILexicalBlock(scope: !824, file: !7, line: 338, column: 5)
!827 = !DILocalVariable(name: "pred", scope: !828, file: !7, line: 339, type: !13, align: 4)
!828 = distinct !DILexicalBlock(scope: !826, file: !7, line: 339, column: 5)
!829 = !DILocalVariable(name: "tgt", scope: !830, file: !7, line: 340, type: !13, align: 4)
!830 = distinct !DILexicalBlock(scope: !828, file: !7, line: 340, column: 5)
!831 = !DILocalVariable(name: "tgt2", scope: !832, file: !7, line: 341, type: !13, align: 4)
!832 = distinct !DILexicalBlock(scope: !830, file: !7, line: 341, column: 5)
!833 = !DILocalVariable(name: "lsbit", scope: !834, file: !7, line: 342, type: !13, align: 4)
!834 = distinct !DILexicalBlock(scope: !832, file: !7, line: 342, column: 5)
!835 = !DILocalVariable(name: "expected_returns", scope: !836, file: !7, line: 343, type: !13, align: 4)
!836 = distinct !DILexicalBlock(scope: !834, file: !7, line: 343, column: 5)
!837 = !DILocalVariable(name: "result", scope: !838, file: !7, line: 344, type: !13, align: 4)
!838 = distinct !DILexicalBlock(scope: !836, file: !7, line: 344, column: 5)
!839 = !DILocation(line: 337, column: 35, scope: !821)
!840 = !DILocation(line: 337, column: 9, scope: !824)
!841 = !DILocation(line: 338, column: 36, scope: !824)
!842 = !DILocation(line: 338, column: 9, scope: !826)
!843 = !DILocation(line: 339, column: 36, scope: !826)
!844 = !DILocation(line: 339, column: 9, scope: !828)
!845 = !DILocation(line: 340, column: 35, scope: !828)
!846 = !DILocation(line: 340, column: 9, scope: !830)
!847 = !DILocation(line: 341, column: 36, scope: !830)
!848 = !DILocation(line: 341, column: 9, scope: !832)
!849 = !DILocation(line: 342, column: 37, scope: !832)
!850 = !DILocation(line: 342, column: 9, scope: !834)
!851 = !DILocation(line: 343, column: 48, scope: !834)
!852 = !DILocation(line: 343, column: 9, scope: !836)
!853 = !DILocation(line: 344, column: 18, scope: !836)
!854 = !DILocation(line: 344, column: 9, scope: !838)
!855 = !DILocation(line: 345, column: 5, scope: !838)
!856 = !DILocation(line: 346, column: 2, scope: !821)
!857 = distinct !DISubprogram(name: "run_test_19", scope: !8, file: !7, line: 349, type: !207, scopeLine: 349, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !21, retainedNodes: !858)
!858 = !{!859, !861, !863, !865, !867, !869, !871, !873}
!859 = !DILocalVariable(name: "uni", scope: !860, file: !7, line: 350, type: !13, align: 4)
!860 = distinct !DILexicalBlock(scope: !857, file: !7, line: 350, column: 5)
!861 = !DILocalVariable(name: "step", scope: !862, file: !7, line: 351, type: !13, align: 4)
!862 = distinct !DILexicalBlock(scope: !860, file: !7, line: 351, column: 5)
!863 = !DILocalVariable(name: "pred", scope: !864, file: !7, line: 352, type: !13, align: 4)
!864 = distinct !DILexicalBlock(scope: !862, file: !7, line: 352, column: 5)
!865 = !DILocalVariable(name: "tgt", scope: !866, file: !7, line: 353, type: !13, align: 4)
!866 = distinct !DILexicalBlock(scope: !864, file: !7, line: 353, column: 5)
!867 = !DILocalVariable(name: "tgt2", scope: !868, file: !7, line: 354, type: !13, align: 4)
!868 = distinct !DILexicalBlock(scope: !866, file: !7, line: 354, column: 5)
!869 = !DILocalVariable(name: "lsbit", scope: !870, file: !7, line: 355, type: !13, align: 4)
!870 = distinct !DILexicalBlock(scope: !868, file: !7, line: 355, column: 5)
!871 = !DILocalVariable(name: "expected_returns", scope: !872, file: !7, line: 356, type: !13, align: 4)
!872 = distinct !DILexicalBlock(scope: !870, file: !7, line: 356, column: 5)
!873 = !DILocalVariable(name: "result", scope: !874, file: !7, line: 357, type: !13, align: 4)
!874 = distinct !DILexicalBlock(scope: !872, file: !7, line: 357, column: 5)
!875 = !DILocation(line: 350, column: 35, scope: !857)
!876 = !DILocation(line: 350, column: 9, scope: !860)
!877 = !DILocation(line: 351, column: 36, scope: !860)
!878 = !DILocation(line: 351, column: 9, scope: !862)
!879 = !DILocation(line: 352, column: 36, scope: !862)
!880 = !DILocation(line: 352, column: 9, scope: !864)
!881 = !DILocation(line: 353, column: 35, scope: !864)
!882 = !DILocation(line: 353, column: 9, scope: !866)
!883 = !DILocation(line: 354, column: 36, scope: !866)
!884 = !DILocation(line: 354, column: 9, scope: !868)
!885 = !DILocation(line: 355, column: 37, scope: !868)
!886 = !DILocation(line: 355, column: 9, scope: !870)
!887 = !DILocation(line: 356, column: 48, scope: !870)
!888 = !DILocation(line: 356, column: 9, scope: !872)
!889 = !DILocation(line: 357, column: 18, scope: !872)
!890 = !DILocation(line: 357, column: 9, scope: !874)
!891 = !DILocation(line: 358, column: 5, scope: !874)
!892 = !DILocation(line: 359, column: 2, scope: !857)
!893 = distinct !DISubprogram(name: "run_test_20", scope: !8, file: !7, line: 362, type: !207, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !21, retainedNodes: !894)
!894 = !{!895, !897, !899, !901, !903, !905, !907, !909}
!895 = !DILocalVariable(name: "uni", scope: !896, file: !7, line: 363, type: !13, align: 4)
!896 = distinct !DILexicalBlock(scope: !893, file: !7, line: 363, column: 5)
!897 = !DILocalVariable(name: "step", scope: !898, file: !7, line: 364, type: !13, align: 4)
!898 = distinct !DILexicalBlock(scope: !896, file: !7, line: 364, column: 5)
!899 = !DILocalVariable(name: "pred", scope: !900, file: !7, line: 365, type: !13, align: 4)
!900 = distinct !DILexicalBlock(scope: !898, file: !7, line: 365, column: 5)
!901 = !DILocalVariable(name: "tgt", scope: !902, file: !7, line: 366, type: !13, align: 4)
!902 = distinct !DILexicalBlock(scope: !900, file: !7, line: 366, column: 5)
!903 = !DILocalVariable(name: "tgt2", scope: !904, file: !7, line: 367, type: !13, align: 4)
!904 = distinct !DILexicalBlock(scope: !902, file: !7, line: 367, column: 5)
!905 = !DILocalVariable(name: "lsbit", scope: !906, file: !7, line: 368, type: !13, align: 4)
!906 = distinct !DILexicalBlock(scope: !904, file: !7, line: 368, column: 5)
!907 = !DILocalVariable(name: "expected_returns", scope: !908, file: !7, line: 369, type: !13, align: 4)
!908 = distinct !DILexicalBlock(scope: !906, file: !7, line: 369, column: 5)
!909 = !DILocalVariable(name: "result", scope: !910, file: !7, line: 370, type: !13, align: 4)
!910 = distinct !DILexicalBlock(scope: !908, file: !7, line: 370, column: 5)
!911 = !DILocation(line: 363, column: 35, scope: !893)
!912 = !DILocation(line: 363, column: 9, scope: !896)
!913 = !DILocation(line: 364, column: 36, scope: !896)
!914 = !DILocation(line: 364, column: 9, scope: !898)
!915 = !DILocation(line: 365, column: 36, scope: !898)
!916 = !DILocation(line: 365, column: 9, scope: !900)
!917 = !DILocation(line: 366, column: 35, scope: !900)
!918 = !DILocation(line: 366, column: 9, scope: !902)
!919 = !DILocation(line: 367, column: 36, scope: !902)
!920 = !DILocation(line: 367, column: 9, scope: !904)
!921 = !DILocation(line: 368, column: 37, scope: !904)
!922 = !DILocation(line: 368, column: 9, scope: !906)
!923 = !DILocation(line: 369, column: 48, scope: !906)
!924 = !DILocation(line: 369, column: 9, scope: !908)
!925 = !DILocation(line: 370, column: 18, scope: !908)
!926 = !DILocation(line: 370, column: 9, scope: !910)
!927 = !DILocation(line: 371, column: 5, scope: !910)
!928 = !DILocation(line: 372, column: 2, scope: !893)
!929 = distinct !DISubprogram(name: "run_test_21", scope: !8, file: !7, line: 375, type: !207, scopeLine: 375, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !21, retainedNodes: !930)
!930 = !{!931, !933, !935, !937, !939, !941, !943, !945}
!931 = !DILocalVariable(name: "uni", scope: !932, file: !7, line: 376, type: !13, align: 4)
!932 = distinct !DILexicalBlock(scope: !929, file: !7, line: 376, column: 5)
!933 = !DILocalVariable(name: "step", scope: !934, file: !7, line: 377, type: !13, align: 4)
!934 = distinct !DILexicalBlock(scope: !932, file: !7, line: 377, column: 5)
!935 = !DILocalVariable(name: "pred", scope: !936, file: !7, line: 378, type: !13, align: 4)
!936 = distinct !DILexicalBlock(scope: !934, file: !7, line: 378, column: 5)
!937 = !DILocalVariable(name: "tgt", scope: !938, file: !7, line: 379, type: !13, align: 4)
!938 = distinct !DILexicalBlock(scope: !936, file: !7, line: 379, column: 5)
!939 = !DILocalVariable(name: "tgt2", scope: !940, file: !7, line: 380, type: !13, align: 4)
!940 = distinct !DILexicalBlock(scope: !938, file: !7, line: 380, column: 5)
!941 = !DILocalVariable(name: "lsbit", scope: !942, file: !7, line: 381, type: !13, align: 4)
!942 = distinct !DILexicalBlock(scope: !940, file: !7, line: 381, column: 5)
!943 = !DILocalVariable(name: "expected_returns", scope: !944, file: !7, line: 382, type: !13, align: 4)
!944 = distinct !DILexicalBlock(scope: !942, file: !7, line: 382, column: 5)
!945 = !DILocalVariable(name: "result", scope: !946, file: !7, line: 383, type: !13, align: 4)
!946 = distinct !DILexicalBlock(scope: !944, file: !7, line: 383, column: 5)
!947 = !DILocation(line: 376, column: 35, scope: !929)
!948 = !DILocation(line: 376, column: 9, scope: !932)
!949 = !DILocation(line: 377, column: 36, scope: !932)
!950 = !DILocation(line: 377, column: 9, scope: !934)
!951 = !DILocation(line: 378, column: 36, scope: !934)
!952 = !DILocation(line: 378, column: 9, scope: !936)
!953 = !DILocation(line: 379, column: 35, scope: !936)
!954 = !DILocation(line: 379, column: 9, scope: !938)
!955 = !DILocation(line: 380, column: 36, scope: !938)
!956 = !DILocation(line: 380, column: 9, scope: !940)
!957 = !DILocation(line: 381, column: 37, scope: !940)
!958 = !DILocation(line: 381, column: 9, scope: !942)
!959 = !DILocation(line: 382, column: 48, scope: !942)
!960 = !DILocation(line: 382, column: 9, scope: !944)
!961 = !DILocation(line: 383, column: 18, scope: !944)
!962 = !DILocation(line: 383, column: 9, scope: !946)
!963 = !DILocation(line: 384, column: 5, scope: !946)
!964 = !DILocation(line: 385, column: 2, scope: !929)
!965 = distinct !DISubprogram(name: "run_test_22", scope: !8, file: !7, line: 388, type: !207, scopeLine: 388, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !21, retainedNodes: !966)
!966 = !{!967, !969, !971, !973, !975, !977, !979, !981}
!967 = !DILocalVariable(name: "uni", scope: !968, file: !7, line: 389, type: !13, align: 4)
!968 = distinct !DILexicalBlock(scope: !965, file: !7, line: 389, column: 5)
!969 = !DILocalVariable(name: "step", scope: !970, file: !7, line: 390, type: !13, align: 4)
!970 = distinct !DILexicalBlock(scope: !968, file: !7, line: 390, column: 5)
!971 = !DILocalVariable(name: "pred", scope: !972, file: !7, line: 391, type: !13, align: 4)
!972 = distinct !DILexicalBlock(scope: !970, file: !7, line: 391, column: 5)
!973 = !DILocalVariable(name: "tgt", scope: !974, file: !7, line: 392, type: !13, align: 4)
!974 = distinct !DILexicalBlock(scope: !972, file: !7, line: 392, column: 5)
!975 = !DILocalVariable(name: "tgt2", scope: !976, file: !7, line: 393, type: !13, align: 4)
!976 = distinct !DILexicalBlock(scope: !974, file: !7, line: 393, column: 5)
!977 = !DILocalVariable(name: "lsbit", scope: !978, file: !7, line: 394, type: !13, align: 4)
!978 = distinct !DILexicalBlock(scope: !976, file: !7, line: 394, column: 5)
!979 = !DILocalVariable(name: "expected_returns", scope: !980, file: !7, line: 395, type: !13, align: 4)
!980 = distinct !DILexicalBlock(scope: !978, file: !7, line: 395, column: 5)
!981 = !DILocalVariable(name: "result", scope: !982, file: !7, line: 396, type: !13, align: 4)
!982 = distinct !DILexicalBlock(scope: !980, file: !7, line: 396, column: 5)
!983 = !DILocation(line: 389, column: 35, scope: !965)
!984 = !DILocation(line: 389, column: 9, scope: !968)
!985 = !DILocation(line: 390, column: 36, scope: !968)
!986 = !DILocation(line: 390, column: 9, scope: !970)
!987 = !DILocation(line: 391, column: 36, scope: !970)
!988 = !DILocation(line: 391, column: 9, scope: !972)
!989 = !DILocation(line: 392, column: 35, scope: !972)
!990 = !DILocation(line: 392, column: 9, scope: !974)
!991 = !DILocation(line: 393, column: 36, scope: !974)
!992 = !DILocation(line: 393, column: 9, scope: !976)
!993 = !DILocation(line: 394, column: 37, scope: !976)
!994 = !DILocation(line: 394, column: 9, scope: !978)
!995 = !DILocation(line: 395, column: 48, scope: !978)
!996 = !DILocation(line: 395, column: 9, scope: !980)
!997 = !DILocation(line: 396, column: 18, scope: !980)
!998 = !DILocation(line: 396, column: 9, scope: !982)
!999 = !DILocation(line: 397, column: 5, scope: !982)
!1000 = !DILocation(line: 398, column: 2, scope: !965)
!1001 = distinct !DISubprogram(name: "run_test_23", scope: !8, file: !7, line: 401, type: !207, scopeLine: 401, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !21, retainedNodes: !1002)
!1002 = !{!1003, !1005, !1007, !1009, !1011, !1013, !1015, !1017}
!1003 = !DILocalVariable(name: "uni", scope: !1004, file: !7, line: 402, type: !13, align: 4)
!1004 = distinct !DILexicalBlock(scope: !1001, file: !7, line: 402, column: 5)
!1005 = !DILocalVariable(name: "step", scope: !1006, file: !7, line: 403, type: !13, align: 4)
!1006 = distinct !DILexicalBlock(scope: !1004, file: !7, line: 403, column: 5)
!1007 = !DILocalVariable(name: "pred", scope: !1008, file: !7, line: 404, type: !13, align: 4)
!1008 = distinct !DILexicalBlock(scope: !1006, file: !7, line: 404, column: 5)
!1009 = !DILocalVariable(name: "tgt", scope: !1010, file: !7, line: 405, type: !13, align: 4)
!1010 = distinct !DILexicalBlock(scope: !1008, file: !7, line: 405, column: 5)
!1011 = !DILocalVariable(name: "tgt2", scope: !1012, file: !7, line: 406, type: !13, align: 4)
!1012 = distinct !DILexicalBlock(scope: !1010, file: !7, line: 406, column: 5)
!1013 = !DILocalVariable(name: "lsbit", scope: !1014, file: !7, line: 407, type: !13, align: 4)
!1014 = distinct !DILexicalBlock(scope: !1012, file: !7, line: 407, column: 5)
!1015 = !DILocalVariable(name: "expected_returns", scope: !1016, file: !7, line: 408, type: !13, align: 4)
!1016 = distinct !DILexicalBlock(scope: !1014, file: !7, line: 408, column: 5)
!1017 = !DILocalVariable(name: "result", scope: !1018, file: !7, line: 409, type: !13, align: 4)
!1018 = distinct !DILexicalBlock(scope: !1016, file: !7, line: 409, column: 5)
!1019 = !DILocation(line: 402, column: 35, scope: !1001)
!1020 = !DILocation(line: 402, column: 9, scope: !1004)
!1021 = !DILocation(line: 403, column: 36, scope: !1004)
!1022 = !DILocation(line: 403, column: 9, scope: !1006)
!1023 = !DILocation(line: 404, column: 36, scope: !1006)
!1024 = !DILocation(line: 404, column: 9, scope: !1008)
!1025 = !DILocation(line: 405, column: 35, scope: !1008)
!1026 = !DILocation(line: 405, column: 9, scope: !1010)
!1027 = !DILocation(line: 406, column: 36, scope: !1010)
!1028 = !DILocation(line: 406, column: 9, scope: !1012)
!1029 = !DILocation(line: 407, column: 37, scope: !1012)
!1030 = !DILocation(line: 407, column: 9, scope: !1014)
!1031 = !DILocation(line: 408, column: 48, scope: !1014)
!1032 = !DILocation(line: 408, column: 9, scope: !1016)
!1033 = !DILocation(line: 409, column: 18, scope: !1016)
!1034 = !DILocation(line: 409, column: 9, scope: !1018)
!1035 = !DILocation(line: 410, column: 5, scope: !1018)
!1036 = !DILocation(line: 411, column: 2, scope: !1001)
