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

%"src::lib::Tflac" = type { i32, i32, i32, i32, i8, i8, i8, i8, i8, [3 x i8], i32 }

@alloc_e14f096bd30e7c4fffb0d07638e6275d = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/num/mod.rs" }>, align 1
@alloc_d1e68eb04df0257e0899e21ea2c814fc = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e14f096bd30e7c4fffb0d07638e6275d, [16 x i8] c"K\00\00\00\00\00\00\00/\04\00\00\05\00\00\00" }>, align 8
@str.0 = internal constant [57 x i8] c"attempt to calculate the remainder with a divisor of zero"
@alloc_f5ffd2fd1476bab43ad89fb40c72d0c5 = private unnamed_addr constant <{ [10 x i8] }> <{ [10 x i8] c"src/lib.rs" }>, align 1
@alloc_d3939c7e3faa32bb0f4397b07fa3b8ab = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00Q\00\00\00-\00\00\00" }>, align 8
@str.1 = internal constant [28 x i8] c"attempt to add with overflow"
@alloc_38937b449e6c6e9e50f34cd35eea66ea = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00Q\00\00\00$\00\00\00" }>, align 8
@str.2 = internal constant [35 x i8] c"attempt to shift left with overflow"
@alloc_6a76e107f52897435cb9e4da40074e9e = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00]\00\00\00\13\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define i32 @flac_validate(ptr %t) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !6 {
start:
  %t.dbg.spill = alloca ptr, align 8
  store ptr %t, ptr %t.dbg.spill, align 8
    #dbg_declare(ptr %t.dbg.spill, !32, !DIExpression(), !33)
  %_4 = ptrtoint ptr %t to i64, !dbg !34
  %_7 = and i64 %_4, 3, !dbg !34
  %_8 = icmp eq i64 %_7, 0, !dbg !34
  %0 = call i1 @llvm.expect.i1(i1 %_8, i1 true), !dbg !34
  br i1 %0, label %bb2, label %panic, !dbg !34

bb2:                                              ; preds = %start
  %1 = call i32 @_ZN17flac_validate_lib3src3lib13flac_validate17hea9069f44434c4ffE(ptr align 4 %t), !dbg !35
  ret i32 %1, !dbg !36

panic:                                            ; preds = %start
  invoke void @_ZN4core9panicking36panic_misaligned_pointer_dereference17h587229c42ea18e2bE(i64 4, i64 %_4, ptr align 8 @alloc_6a76e107f52897435cb9e4da40074e9e) #5
          to label %unreachable unwind label %terminate, !dbg !34

terminate:                                        ; preds = %panic
  %2 = landingpad { ptr, i32 }
          cleanup
  %3 = extractvalue { ptr, i32 } %2, 0
  %4 = extractvalue { ptr, i32 } %2, 1
  call void @_ZN4core9panicking19panic_cannot_unwind17h629e1da841ab4abfE() #6, !dbg !37
  unreachable, !dbg !37

unreachable:                                      ; preds = %panic
  unreachable
}

; Function Attrs: nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.expect.i1(i1, i1) #1

; Function Attrs: nonlazybind uwtable
define internal i32 @_ZN17flac_validate_lib3src3lib13flac_validate17hea9069f44434c4ffE(ptr align 4 %t) unnamed_addr #0 !dbg !38 {
start:
  %rhs.dbg.spill.i2 = alloca i32, align 4
  %self.dbg.spill.i3 = alloca i32, align 4
  %rhs.dbg.spill.i = alloca i8, align 1
  %self.dbg.spill.i = alloca i8, align 1
  %t.dbg.spill = alloca ptr, align 8
  %_39 = alloca i8, align 1
  %_19 = alloca i8, align 1
  %0 = alloca i32, align 4
  store ptr %t, ptr %t.dbg.spill, align 8
    #dbg_declare(ptr %t.dbg.spill, !43, !DIExpression(), !44)
  %_3 = load i32, ptr %t, align 4, !dbg !45, !noundef !30
  %_2 = icmp ult i32 %_3, 16, !dbg !45
  br i1 %_2, label %bb1, label %bb2, !dbg !45

bb2:                                              ; preds = %start
  %_5 = load i32, ptr %t, align 4, !dbg !46, !noundef !30
  %_4 = icmp ugt i32 %_5, 65535, !dbg !46
  br i1 %_4, label %bb3, label %bb4, !dbg !46

bb1:                                              ; preds = %start
  store i32 -1, ptr %0, align 4, !dbg !47
  br label %bb43, !dbg !48

bb43:                                             ; preds = %bb42, %bb31, %bb29, %bb27, %bb15, %bb13, %bb11, %bb9, %bb7, %bb5, %bb3, %bb1
  %1 = load i32, ptr %0, align 4, !dbg !51, !noundef !30
  ret i32 %1, !dbg !51

bb4:                                              ; preds = %bb2
  %2 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 1, !dbg !52
  %_6 = load i32, ptr %2, align 4, !dbg !52, !noundef !30
  %3 = icmp eq i32 %_6, 0, !dbg !52
  br i1 %3, label %bb5, label %bb6, !dbg !52

bb3:                                              ; preds = %bb2
  store i32 -1, ptr %0, align 4, !dbg !53
  br label %bb43, !dbg !48

bb5:                                              ; preds = %bb4
  store i32 -1, ptr %0, align 4, !dbg !54
  br label %bb43, !dbg !48

bb6:                                              ; preds = %bb4
  %4 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 1, !dbg !55
  %_8 = load i32, ptr %4, align 4, !dbg !55, !noundef !30
  %_7 = icmp ugt i32 %_8, 655350, !dbg !55
  br i1 %_7, label %bb7, label %bb8, !dbg !55

bb8:                                              ; preds = %bb6
  %5 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 2, !dbg !56
  %_9 = load i32, ptr %5, align 4, !dbg !56, !noundef !30
  %6 = icmp eq i32 %_9, 0, !dbg !56
  br i1 %6, label %bb9, label %bb10, !dbg !56

bb7:                                              ; preds = %bb6
  store i32 -1, ptr %0, align 4, !dbg !57
  br label %bb43, !dbg !48

bb9:                                              ; preds = %bb8
  store i32 -1, ptr %0, align 4, !dbg !58
  br label %bb43, !dbg !48

bb10:                                             ; preds = %bb8
  %7 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 2, !dbg !59
  %_11 = load i32, ptr %7, align 4, !dbg !59, !noundef !30
  %_10 = icmp ugt i32 %_11, 8, !dbg !59
  br i1 %_10, label %bb11, label %bb12, !dbg !59

bb12:                                             ; preds = %bb10
  %8 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 3, !dbg !60
  %_12 = load i32, ptr %8, align 4, !dbg !60, !noundef !30
  %9 = icmp eq i32 %_12, 0, !dbg !60
  br i1 %9, label %bb13, label %bb14, !dbg !60

bb11:                                             ; preds = %bb10
  store i32 -1, ptr %0, align 4, !dbg !61
  br label %bb43, !dbg !48

bb13:                                             ; preds = %bb12
  store i32 -1, ptr %0, align 4, !dbg !62
  br label %bb43, !dbg !48

bb14:                                             ; preds = %bb12
  %10 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 3, !dbg !63
  %_14 = load i32, ptr %10, align 4, !dbg !63, !noundef !30
  %_13 = icmp ugt i32 %_14, 32, !dbg !63
  br i1 %_13, label %bb15, label %bb16, !dbg !63

bb16:                                             ; preds = %bb14
  %11 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 4, !dbg !64
  %_17 = load i8, ptr %11, align 4, !dbg !64, !noundef !30
  %_16 = zext i8 %_17 to i32, !dbg !64
  %_15 = icmp ne i32 %_16, 0, !dbg !64
  br i1 %_15, label %bb17, label %bb22, !dbg !64

bb15:                                             ; preds = %bb14
  store i32 -1, ptr %0, align 4, !dbg !65
  br label %bb43, !dbg !48

bb22:                                             ; preds = %bb21, %bb20, %bb16
  %12 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !66
  %_24 = load i8, ptr %12, align 1, !dbg !66, !noundef !30
  %_23 = zext i8 %_24 to i32, !dbg !66
  %13 = icmp eq i32 %_23, 0, !dbg !66
  br i1 %13, label %bb23, label %bb26, !dbg !66

bb17:                                             ; preds = %bb16
  %14 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 2, !dbg !67
  %_20 = load i32, ptr %14, align 4, !dbg !67, !noundef !30
  %15 = icmp eq i32 %_20, 2, !dbg !67
  br i1 %15, label %bb19, label %bb18, !dbg !67

bb19:                                             ; preds = %bb17
  %16 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 3, !dbg !68
  %_22 = load i32, ptr %16, align 4, !dbg !68, !noundef !30
  %_21 = icmp eq i32 %_22, 32, !dbg !68
  %17 = zext i1 %_21 to i8, !dbg !67
  store i8 %17, ptr %_19, align 1, !dbg !67
  br label %bb20, !dbg !67

bb18:                                             ; preds = %bb17
  store i8 1, ptr %_19, align 1, !dbg !67
  br label %bb20, !dbg !67

bb20:                                             ; preds = %bb18, %bb19
  %18 = load i8, ptr %_19, align 1, !dbg !67, !range !69, !noundef !30
  %19 = trunc i8 %18 to i1, !dbg !67
  br i1 %19, label %bb21, label %bb22, !dbg !67

bb21:                                             ; preds = %bb20
  %20 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 4, !dbg !70
  store i8 0, ptr %20, align 4, !dbg !70
  br label %bb22, !dbg !71

bb23:                                             ; preds = %bb22
  %21 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 3, !dbg !72
  %_26 = load i32, ptr %21, align 4, !dbg !72, !noundef !30
  %_25 = icmp ule i32 %_26, 16, !dbg !72
  br i1 %_25, label %bb24, label %bb25, !dbg !72

bb26:                                             ; preds = %bb22
  %22 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !73
  %_29 = load i8, ptr %22, align 1, !dbg !73, !noundef !30
  %_28 = zext i8 %_29 to i32, !dbg !73
  %_27 = icmp sgt i32 %_28, 30, !dbg !73
  br i1 %_27, label %bb27, label %bb28, !dbg !73

bb28:                                             ; preds = %bb24, %bb25, %bb26
  %23 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 7, !dbg !74
  %_32 = load i8, ptr %23, align 1, !dbg !74, !noundef !30
  %_31 = zext i8 %_32 to i32, !dbg !74
  %_30 = icmp sgt i32 %_31, 15, !dbg !74
  br i1 %_30, label %bb29, label %bb30, !dbg !74

bb27:                                             ; preds = %bb26
  store i32 -1, ptr %0, align 4, !dbg !75
  br label %bb43, !dbg !48

bb25:                                             ; preds = %bb23
  %24 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !76
  store i8 30, ptr %24, align 1, !dbg !76
  br label %bb28, !dbg !77

bb24:                                             ; preds = %bb23
  %25 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !78
  store i8 14, ptr %25, align 1, !dbg !78
  br label %bb28, !dbg !77

bb30:                                             ; preds = %bb28
  %26 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 6, !dbg !79
  %_35 = load i8, ptr %26, align 2, !dbg !79, !noundef !30
  %_34 = zext i8 %_35 to i32, !dbg !79
  %27 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 7, !dbg !80
  %_37 = load i8, ptr %27, align 1, !dbg !80, !noundef !30
  %_36 = zext i8 %_37 to i32, !dbg !80
  %_33 = icmp sgt i32 %_34, %_36, !dbg !79
  br i1 %_33, label %bb31, label %bb32, !dbg !79

bb29:                                             ; preds = %bb28
  store i32 -1, ptr %0, align 4, !dbg !81
  br label %bb43, !dbg !48

bb32:                                             ; preds = %bb30
  %28 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 6, !dbg !82
  %_38 = load i8, ptr %28, align 2, !dbg !82, !noundef !30
  %29 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 8, !dbg !83
  store i8 %_38, ptr %29, align 4, !dbg !83
  br label %bb33, !dbg !84

bb31:                                             ; preds = %bb30
  store i32 -1, ptr %0, align 4, !dbg !85
  br label %bb43, !dbg !48

bb33:                                             ; preds = %bb40, %bb32
  %_41 = load i32, ptr %t, align 4, !dbg !86, !noundef !30
  %30 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 8, !dbg !87
  %_46 = load i8, ptr %30, align 4, !dbg !87, !noundef !30
  %_45 = zext i8 %_46 to i32, !dbg !87
  %31 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_45, i32 1), !dbg !88
  %_47.0 = extractvalue { i32, i1 } %31, 0, !dbg !88
  %_47.1 = extractvalue { i32, i1 } %31, 1, !dbg !88
  %32 = call i1 @llvm.expect.i1(i1 %_47.1, i1 false), !dbg !88
  br i1 %32, label %panic, label %bb37, !dbg !88

bb37:                                             ; preds = %bb33
  %_49 = icmp ult i32 %_47.0, 32, !dbg !89
  %33 = call i1 @llvm.expect.i1(i1 %_49, i1 true), !dbg !89
  br i1 %33, label %bb38, label %panic1, !dbg !89

panic:                                            ; preds = %bb33
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.1, i64 28, ptr align 8 @alloc_d3939c7e3faa32bb0f4397b07fa3b8ab) #5, !dbg !88
  unreachable, !dbg !88

bb38:                                             ; preds = %bb37
  %34 = and i32 %_47.0, 31, !dbg !89
  %_43 = shl i32 1, %34, !dbg !89
  store i32 %_41, ptr %self.dbg.spill.i3, align 4
    #dbg_declare(ptr %self.dbg.spill.i3, !90, !DIExpression(), !100)
  store i32 %_43, ptr %rhs.dbg.spill.i2, align 4
    #dbg_declare(ptr %rhs.dbg.spill.i2, !99, !DIExpression(), !102)
  %35 = call i1 @llvm.expect.i1(i1 false, i1 false), !dbg !103
  br i1 %35, label %panic.i, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_rem17h444bd8b2161bd3b6E.exit", !dbg !103

panic.i:                                          ; preds = %bb38
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.0, i64 57, ptr align 8 @alloc_d1e68eb04df0257e0899e21ea2c814fc) #5, !dbg !103
  unreachable, !dbg !103

"_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_rem17h444bd8b2161bd3b6E.exit": ; preds = %bb38
  %36 = urem i32 %_41, %_43, !dbg !103
  %37 = icmp eq i32 %36, 0, !dbg !86
  br i1 %37, label %bb35, label %bb34, !dbg !86

panic1:                                           ; preds = %bb37
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.2, i64 35, ptr align 8 @alloc_38937b449e6c6e9e50f34cd35eea66ea) #5, !dbg !89
  unreachable, !dbg !89

bb35:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_rem17h444bd8b2161bd3b6E.exit"
  %38 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 8, !dbg !104
  %_52 = load i8, ptr %38, align 4, !dbg !104, !noundef !30
  %_51 = zext i8 %_52 to i32, !dbg !105
  %39 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 7, !dbg !106
  %_54 = load i8, ptr %39, align 1, !dbg !106, !noundef !30
  %_53 = zext i8 %_54 to i32, !dbg !106
  %_50 = icmp slt i32 %_51, %_53, !dbg !105
  %40 = zext i1 %_50 to i8, !dbg !86
  store i8 %40, ptr %_39, align 1, !dbg !86
  br label %bb36, !dbg !86

bb34:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_rem17h444bd8b2161bd3b6E.exit"
  store i8 0, ptr %_39, align 1, !dbg !86
  br label %bb36, !dbg !86

bb36:                                             ; preds = %bb34, %bb35
  %41 = load i8, ptr %_39, align 1, !dbg !86, !range !69, !noundef !30
  %42 = trunc i8 %41 to i1, !dbg !86
  br i1 %42, label %bb40, label %bb42, !dbg !86

bb42:                                             ; preds = %bb36
  %_57 = load i32, ptr %t, align 4, !dbg !107, !noundef !30
  %43 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 10, !dbg !108
  store i32 %_57, ptr %43, align 4, !dbg !108
  store i32 0, ptr %0, align 4, !dbg !109
  br label %bb43, !dbg !51

bb40:                                             ; preds = %bb36
  %44 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 8, !dbg !110
  %_56 = load i8, ptr %44, align 4, !dbg !110, !noundef !30
  store i8 %_56, ptr %self.dbg.spill.i, align 1
    #dbg_declare(ptr %self.dbg.spill.i, !111, !DIExpression(), !118)
  store i8 1, ptr %rhs.dbg.spill.i, align 1
    #dbg_declare(ptr %rhs.dbg.spill.i, !117, !DIExpression(), !120)
  %45 = add i8 %_56, 1, !dbg !121
  %46 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 8, !dbg !122
  store i8 %45, ptr %46, align 4, !dbg !122
  br label %bb33, !dbg !84
}

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking36panic_misaligned_pointer_dereference17h587229c42ea18e2bE(i64, i64, ptr align 8) unnamed_addr #2

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_ZN4core9panicking19panic_cannot_unwind17h629e1da841ab4abfE() unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #4

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1, i64, ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
define i32 @tflac_size_memory(i32 %blocksize) unnamed_addr #0 !dbg !123 {
start:
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 %blocksize, ptr %blocksize.dbg.spill, align 4
    #dbg_declare(ptr %blocksize.dbg.spill, !127, !DIExpression(), !128)
  %0 = call i32 @_ZN17flac_validate_lib3src3lib17tflac_size_memory17hd8823f4a0aedfcafE(i32 %blocksize), !dbg !129
  ret i32 %0, !dbg !130
}

; Function Attrs: nonlazybind uwtable
define internal i32 @_ZN17flac_validate_lib3src3lib17tflac_size_memory17hd8823f4a0aedfcafE(i32 %blocksize) unnamed_addr #0 !dbg !131 {
start:
  %rhs.dbg.spill.i5 = alloca i32, align 4
  %self.dbg.spill.i6 = alloca i32, align 4
  %rhs.dbg.spill.i3 = alloca i32, align 4
  %self.dbg.spill.i4 = alloca i32, align 4
  %rhs.dbg.spill.i1 = alloca i32, align 4
  %self.dbg.spill.i2 = alloca i32, align 4
  %rhs.dbg.spill.i = alloca i32, align 4
  %self.dbg.spill.i = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 %blocksize, ptr %blocksize.dbg.spill, align 4
    #dbg_declare(ptr %blocksize.dbg.spill, !133, !DIExpression(), !134)
  store i32 %blocksize, ptr %self.dbg.spill.i6, align 4
    #dbg_declare(ptr %self.dbg.spill.i6, !135, !DIExpression(), !139)
  store i32 4, ptr %rhs.dbg.spill.i5, align 4
    #dbg_declare(ptr %rhs.dbg.spill.i5, !138, !DIExpression(), !141)
  %0 = mul i32 %blocksize, 4, !dbg !142
  store i32 15, ptr %self.dbg.spill.i2, align 4
    #dbg_declare(ptr %self.dbg.spill.i2, !143, !DIExpression(), !147)
  store i32 %0, ptr %rhs.dbg.spill.i1, align 4
    #dbg_declare(ptr %rhs.dbg.spill.i1, !146, !DIExpression(), !149)
  %1 = add i32 15, %0, !dbg !150
  %_3 = and i32 %1, -16, !dbg !151
  store i32 5, ptr %self.dbg.spill.i4, align 4
    #dbg_declare(ptr %self.dbg.spill.i4, !135, !DIExpression(), !152)
  store i32 %_3, ptr %rhs.dbg.spill.i3, align 4
    #dbg_declare(ptr %rhs.dbg.spill.i3, !138, !DIExpression(), !154)
  %2 = mul i32 5, %_3, !dbg !155
  store i32 15, ptr %self.dbg.spill.i, align 4
    #dbg_declare(ptr %self.dbg.spill.i, !143, !DIExpression(), !156)
  store i32 %2, ptr %rhs.dbg.spill.i, align 4
    #dbg_declare(ptr %rhs.dbg.spill.i, !146, !DIExpression(), !158)
  %3 = add i32 15, %2, !dbg !159
  ret i32 %3, !dbg !160
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_1() unnamed_addr #0 !dbg !161 {
start:
  %expected_ret.dbg.spill = alloca i32, align 4
  %ret.dbg.spill = alloca i32, align 4
  %t = alloca %"src::lib::Tflac", align 4
  %0 = alloca i8, align 1
    #dbg_declare(ptr %t, !166, !DIExpression(), !172)
  store i32 0, ptr %t, align 4, !dbg !173
  %1 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 1, !dbg !173
  store i32 0, ptr %1, align 4, !dbg !173
  %2 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 2, !dbg !173
  store i32 0, ptr %2, align 4, !dbg !173
  %3 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 3, !dbg !173
  store i32 0, ptr %3, align 4, !dbg !173
  %4 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 4, !dbg !173
  store i8 0, ptr %4, align 4, !dbg !173
  %5 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !173
  store i8 0, ptr %5, align 1, !dbg !173
  %6 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 6, !dbg !173
  store i8 0, ptr %6, align 2, !dbg !173
  %7 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 7, !dbg !173
  store i8 0, ptr %7, align 1, !dbg !173
  %8 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 8, !dbg !173
  store i8 0, ptr %8, align 4, !dbg !173
  %9 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 10, !dbg !173
  store i32 0, ptr %9, align 4, !dbg !173
  %ret = call i32 @flac_validate(ptr %t), !dbg !174
  store i32 %ret, ptr %ret.dbg.spill, align 4, !dbg !174
    #dbg_declare(ptr %ret.dbg.spill, !168, !DIExpression(), !175)
  store i32 -1, ptr %expected_ret.dbg.spill, align 4, !dbg !176
    #dbg_declare(ptr %expected_ret.dbg.spill, !170, !DIExpression(), !177)
  %_6 = icmp ne i32 %ret, -1, !dbg !178
  br i1 %_6, label %bb2, label %bb3, !dbg !178

bb3:                                              ; preds = %start
  %_8 = load i32, ptr %t, align 4, !dbg !179, !noundef !30
  %10 = icmp eq i32 %_8, 0, !dbg !179
  br i1 %10, label %bb5, label %bb4, !dbg !179

bb2:                                              ; preds = %start
  store i8 0, ptr %0, align 1, !dbg !180
  br label %bb24, !dbg !181

bb24:                                             ; preds = %bb22, %bb23, %bb20, %bb18, %bb16, %bb14, %bb12, %bb10, %bb8, %bb6, %bb4, %bb2
  %11 = load i8, ptr %0, align 1, !dbg !183, !range !69, !noundef !30
  %12 = trunc i8 %11 to i1, !dbg !183
  ret i1 %12, !dbg !183

bb5:                                              ; preds = %bb3
  %13 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 1, !dbg !184
  %_9 = load i32, ptr %13, align 4, !dbg !184, !noundef !30
  %14 = icmp eq i32 %_9, 0, !dbg !184
  br i1 %14, label %bb7, label %bb6, !dbg !184

bb4:                                              ; preds = %bb3
  store i8 0, ptr %0, align 1, !dbg !185
  br label %bb24, !dbg !181

bb7:                                              ; preds = %bb5
  %15 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 2, !dbg !186
  %_10 = load i32, ptr %15, align 4, !dbg !186, !noundef !30
  %16 = icmp eq i32 %_10, 0, !dbg !186
  br i1 %16, label %bb9, label %bb8, !dbg !186

bb6:                                              ; preds = %bb5
  store i8 0, ptr %0, align 1, !dbg !187
  br label %bb24, !dbg !181

bb9:                                              ; preds = %bb7
  %17 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 3, !dbg !188
  %_11 = load i32, ptr %17, align 4, !dbg !188, !noundef !30
  %18 = icmp eq i32 %_11, 0, !dbg !188
  br i1 %18, label %bb11, label %bb10, !dbg !188

bb8:                                              ; preds = %bb7
  store i8 0, ptr %0, align 1, !dbg !189
  br label %bb24, !dbg !181

bb11:                                             ; preds = %bb9
  %19 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 4, !dbg !190
  %_12 = load i8, ptr %19, align 4, !dbg !190, !noundef !30
  %20 = icmp eq i8 %_12, 0, !dbg !190
  br i1 %20, label %bb13, label %bb12, !dbg !190

bb10:                                             ; preds = %bb9
  store i8 0, ptr %0, align 1, !dbg !191
  br label %bb24, !dbg !181

bb13:                                             ; preds = %bb11
  %21 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !192
  %_13 = load i8, ptr %21, align 1, !dbg !192, !noundef !30
  %22 = icmp eq i8 %_13, 0, !dbg !192
  br i1 %22, label %bb15, label %bb14, !dbg !192

bb12:                                             ; preds = %bb11
  store i8 0, ptr %0, align 1, !dbg !193
  br label %bb24, !dbg !181

bb15:                                             ; preds = %bb13
  %23 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 6, !dbg !194
  %_14 = load i8, ptr %23, align 2, !dbg !194, !noundef !30
  %24 = icmp eq i8 %_14, 0, !dbg !194
  br i1 %24, label %bb17, label %bb16, !dbg !194

bb14:                                             ; preds = %bb13
  store i8 0, ptr %0, align 1, !dbg !195
  br label %bb24, !dbg !181

bb17:                                             ; preds = %bb15
  %25 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 7, !dbg !196
  %_15 = load i8, ptr %25, align 1, !dbg !196, !noundef !30
  %26 = icmp eq i8 %_15, 0, !dbg !196
  br i1 %26, label %bb19, label %bb18, !dbg !196

bb16:                                             ; preds = %bb15
  store i8 0, ptr %0, align 1, !dbg !197
  br label %bb24, !dbg !181

bb19:                                             ; preds = %bb17
  %27 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 8, !dbg !198
  %_16 = load i8, ptr %27, align 4, !dbg !198, !noundef !30
  %28 = icmp eq i8 %_16, 0, !dbg !198
  br i1 %28, label %bb21, label %bb20, !dbg !198

bb18:                                             ; preds = %bb17
  store i8 0, ptr %0, align 1, !dbg !199
  br label %bb24, !dbg !181

bb21:                                             ; preds = %bb19
  %29 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 10, !dbg !200
  %_17 = load i32, ptr %29, align 4, !dbg !200, !noundef !30
  %30 = icmp eq i32 %_17, 0, !dbg !200
  br i1 %30, label %bb23, label %bb22, !dbg !200

bb20:                                             ; preds = %bb19
  store i8 0, ptr %0, align 1, !dbg !201
  br label %bb24, !dbg !181

bb23:                                             ; preds = %bb21
  store i8 1, ptr %0, align 1, !dbg !202
  br label %bb24, !dbg !183

bb22:                                             ; preds = %bb21
  store i8 0, ptr %0, align 1, !dbg !203
  br label %bb24, !dbg !181
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_2() unnamed_addr #0 !dbg !204 {
start:
  %expected_ret.dbg.spill = alloca i32, align 4
  %ret.dbg.spill = alloca i32, align 4
  %t = alloca %"src::lib::Tflac", align 4
  %0 = alloca i8, align 1
    #dbg_declare(ptr %t, !206, !DIExpression(), !212)
  store i32 16, ptr %t, align 4, !dbg !213
  %1 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 1, !dbg !213
  store i32 0, ptr %1, align 4, !dbg !213
  %2 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 2, !dbg !213
  store i32 0, ptr %2, align 4, !dbg !213
  %3 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 3, !dbg !213
  store i32 0, ptr %3, align 4, !dbg !213
  %4 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 4, !dbg !213
  store i8 0, ptr %4, align 4, !dbg !213
  %5 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !213
  store i8 0, ptr %5, align 1, !dbg !213
  %6 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 6, !dbg !213
  store i8 0, ptr %6, align 2, !dbg !213
  %7 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 7, !dbg !213
  store i8 0, ptr %7, align 1, !dbg !213
  %8 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 8, !dbg !213
  store i8 0, ptr %8, align 4, !dbg !213
  %9 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 10, !dbg !213
  store i32 0, ptr %9, align 4, !dbg !213
  %ret = call i32 @flac_validate(ptr %t), !dbg !214
  store i32 %ret, ptr %ret.dbg.spill, align 4, !dbg !214
    #dbg_declare(ptr %ret.dbg.spill, !208, !DIExpression(), !215)
  store i32 -1, ptr %expected_ret.dbg.spill, align 4, !dbg !216
    #dbg_declare(ptr %expected_ret.dbg.spill, !210, !DIExpression(), !217)
  %_6 = icmp ne i32 %ret, -1, !dbg !218
  br i1 %_6, label %bb2, label %bb3, !dbg !218

bb3:                                              ; preds = %start
  %_8 = load i32, ptr %t, align 4, !dbg !219, !noundef !30
  %10 = icmp eq i32 %_8, 16, !dbg !219
  br i1 %10, label %bb5, label %bb4, !dbg !219

bb2:                                              ; preds = %start
  store i8 0, ptr %0, align 1, !dbg !220
  br label %bb24, !dbg !221

bb24:                                             ; preds = %bb22, %bb23, %bb20, %bb18, %bb16, %bb14, %bb12, %bb10, %bb8, %bb6, %bb4, %bb2
  %11 = load i8, ptr %0, align 1, !dbg !223, !range !69, !noundef !30
  %12 = trunc i8 %11 to i1, !dbg !223
  ret i1 %12, !dbg !223

bb5:                                              ; preds = %bb3
  %13 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 1, !dbg !224
  %_9 = load i32, ptr %13, align 4, !dbg !224, !noundef !30
  %14 = icmp eq i32 %_9, 0, !dbg !224
  br i1 %14, label %bb7, label %bb6, !dbg !224

bb4:                                              ; preds = %bb3
  store i8 0, ptr %0, align 1, !dbg !225
  br label %bb24, !dbg !221

bb7:                                              ; preds = %bb5
  %15 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 2, !dbg !226
  %_10 = load i32, ptr %15, align 4, !dbg !226, !noundef !30
  %16 = icmp eq i32 %_10, 0, !dbg !226
  br i1 %16, label %bb9, label %bb8, !dbg !226

bb6:                                              ; preds = %bb5
  store i8 0, ptr %0, align 1, !dbg !227
  br label %bb24, !dbg !221

bb9:                                              ; preds = %bb7
  %17 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 3, !dbg !228
  %_11 = load i32, ptr %17, align 4, !dbg !228, !noundef !30
  %18 = icmp eq i32 %_11, 0, !dbg !228
  br i1 %18, label %bb11, label %bb10, !dbg !228

bb8:                                              ; preds = %bb7
  store i8 0, ptr %0, align 1, !dbg !229
  br label %bb24, !dbg !221

bb11:                                             ; preds = %bb9
  %19 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 4, !dbg !230
  %_12 = load i8, ptr %19, align 4, !dbg !230, !noundef !30
  %20 = icmp eq i8 %_12, 0, !dbg !230
  br i1 %20, label %bb13, label %bb12, !dbg !230

bb10:                                             ; preds = %bb9
  store i8 0, ptr %0, align 1, !dbg !231
  br label %bb24, !dbg !221

bb13:                                             ; preds = %bb11
  %21 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !232
  %_13 = load i8, ptr %21, align 1, !dbg !232, !noundef !30
  %22 = icmp eq i8 %_13, 0, !dbg !232
  br i1 %22, label %bb15, label %bb14, !dbg !232

bb12:                                             ; preds = %bb11
  store i8 0, ptr %0, align 1, !dbg !233
  br label %bb24, !dbg !221

bb15:                                             ; preds = %bb13
  %23 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 6, !dbg !234
  %_14 = load i8, ptr %23, align 2, !dbg !234, !noundef !30
  %24 = icmp eq i8 %_14, 0, !dbg !234
  br i1 %24, label %bb17, label %bb16, !dbg !234

bb14:                                             ; preds = %bb13
  store i8 0, ptr %0, align 1, !dbg !235
  br label %bb24, !dbg !221

bb17:                                             ; preds = %bb15
  %25 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 7, !dbg !236
  %_15 = load i8, ptr %25, align 1, !dbg !236, !noundef !30
  %26 = icmp eq i8 %_15, 0, !dbg !236
  br i1 %26, label %bb19, label %bb18, !dbg !236

bb16:                                             ; preds = %bb15
  store i8 0, ptr %0, align 1, !dbg !237
  br label %bb24, !dbg !221

bb19:                                             ; preds = %bb17
  %27 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 8, !dbg !238
  %_16 = load i8, ptr %27, align 4, !dbg !238, !noundef !30
  %28 = icmp eq i8 %_16, 0, !dbg !238
  br i1 %28, label %bb21, label %bb20, !dbg !238

bb18:                                             ; preds = %bb17
  store i8 0, ptr %0, align 1, !dbg !239
  br label %bb24, !dbg !221

bb21:                                             ; preds = %bb19
  %29 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 10, !dbg !240
  %_17 = load i32, ptr %29, align 4, !dbg !240, !noundef !30
  %30 = icmp eq i32 %_17, 0, !dbg !240
  br i1 %30, label %bb23, label %bb22, !dbg !240

bb20:                                             ; preds = %bb19
  store i8 0, ptr %0, align 1, !dbg !241
  br label %bb24, !dbg !221

bb23:                                             ; preds = %bb21
  store i8 1, ptr %0, align 1, !dbg !242
  br label %bb24, !dbg !223

bb22:                                             ; preds = %bb21
  store i8 0, ptr %0, align 1, !dbg !243
  br label %bb24, !dbg !221
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_3() unnamed_addr #0 !dbg !244 {
start:
  %expected_ret.dbg.spill = alloca i32, align 4
  %ret.dbg.spill = alloca i32, align 4
  %t = alloca %"src::lib::Tflac", align 4
  %0 = alloca i8, align 1
    #dbg_declare(ptr %t, !246, !DIExpression(), !252)
  store i32 16, ptr %t, align 4, !dbg !253
  %1 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 1, !dbg !253
  store i32 1, ptr %1, align 4, !dbg !253
  %2 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 2, !dbg !253
  store i32 0, ptr %2, align 4, !dbg !253
  %3 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 3, !dbg !253
  store i32 0, ptr %3, align 4, !dbg !253
  %4 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 4, !dbg !253
  store i8 0, ptr %4, align 4, !dbg !253
  %5 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !253
  store i8 0, ptr %5, align 1, !dbg !253
  %6 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 6, !dbg !253
  store i8 0, ptr %6, align 2, !dbg !253
  %7 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 7, !dbg !253
  store i8 0, ptr %7, align 1, !dbg !253
  %8 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 8, !dbg !253
  store i8 0, ptr %8, align 4, !dbg !253
  %9 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 10, !dbg !253
  store i32 0, ptr %9, align 4, !dbg !253
  %ret = call i32 @flac_validate(ptr %t), !dbg !254
  store i32 %ret, ptr %ret.dbg.spill, align 4, !dbg !254
    #dbg_declare(ptr %ret.dbg.spill, !248, !DIExpression(), !255)
  store i32 -1, ptr %expected_ret.dbg.spill, align 4, !dbg !256
    #dbg_declare(ptr %expected_ret.dbg.spill, !250, !DIExpression(), !257)
  %_6 = icmp ne i32 %ret, -1, !dbg !258
  br i1 %_6, label %bb2, label %bb3, !dbg !258

bb3:                                              ; preds = %start
  %_8 = load i32, ptr %t, align 4, !dbg !259, !noundef !30
  %10 = icmp eq i32 %_8, 16, !dbg !259
  br i1 %10, label %bb5, label %bb4, !dbg !259

bb2:                                              ; preds = %start
  store i8 0, ptr %0, align 1, !dbg !260
  br label %bb24, !dbg !261

bb24:                                             ; preds = %bb22, %bb23, %bb20, %bb18, %bb16, %bb14, %bb12, %bb10, %bb8, %bb6, %bb4, %bb2
  %11 = load i8, ptr %0, align 1, !dbg !263, !range !69, !noundef !30
  %12 = trunc i8 %11 to i1, !dbg !263
  ret i1 %12, !dbg !263

bb5:                                              ; preds = %bb3
  %13 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 1, !dbg !264
  %_9 = load i32, ptr %13, align 4, !dbg !264, !noundef !30
  %14 = icmp eq i32 %_9, 1, !dbg !264
  br i1 %14, label %bb7, label %bb6, !dbg !264

bb4:                                              ; preds = %bb3
  store i8 0, ptr %0, align 1, !dbg !265
  br label %bb24, !dbg !261

bb7:                                              ; preds = %bb5
  %15 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 2, !dbg !266
  %_10 = load i32, ptr %15, align 4, !dbg !266, !noundef !30
  %16 = icmp eq i32 %_10, 0, !dbg !266
  br i1 %16, label %bb9, label %bb8, !dbg !266

bb6:                                              ; preds = %bb5
  store i8 0, ptr %0, align 1, !dbg !267
  br label %bb24, !dbg !261

bb9:                                              ; preds = %bb7
  %17 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 3, !dbg !268
  %_11 = load i32, ptr %17, align 4, !dbg !268, !noundef !30
  %18 = icmp eq i32 %_11, 0, !dbg !268
  br i1 %18, label %bb11, label %bb10, !dbg !268

bb8:                                              ; preds = %bb7
  store i8 0, ptr %0, align 1, !dbg !269
  br label %bb24, !dbg !261

bb11:                                             ; preds = %bb9
  %19 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 4, !dbg !270
  %_12 = load i8, ptr %19, align 4, !dbg !270, !noundef !30
  %20 = icmp eq i8 %_12, 0, !dbg !270
  br i1 %20, label %bb13, label %bb12, !dbg !270

bb10:                                             ; preds = %bb9
  store i8 0, ptr %0, align 1, !dbg !271
  br label %bb24, !dbg !261

bb13:                                             ; preds = %bb11
  %21 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !272
  %_13 = load i8, ptr %21, align 1, !dbg !272, !noundef !30
  %22 = icmp eq i8 %_13, 0, !dbg !272
  br i1 %22, label %bb15, label %bb14, !dbg !272

bb12:                                             ; preds = %bb11
  store i8 0, ptr %0, align 1, !dbg !273
  br label %bb24, !dbg !261

bb15:                                             ; preds = %bb13
  %23 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 6, !dbg !274
  %_14 = load i8, ptr %23, align 2, !dbg !274, !noundef !30
  %24 = icmp eq i8 %_14, 0, !dbg !274
  br i1 %24, label %bb17, label %bb16, !dbg !274

bb14:                                             ; preds = %bb13
  store i8 0, ptr %0, align 1, !dbg !275
  br label %bb24, !dbg !261

bb17:                                             ; preds = %bb15
  %25 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 7, !dbg !276
  %_15 = load i8, ptr %25, align 1, !dbg !276, !noundef !30
  %26 = icmp eq i8 %_15, 0, !dbg !276
  br i1 %26, label %bb19, label %bb18, !dbg !276

bb16:                                             ; preds = %bb15
  store i8 0, ptr %0, align 1, !dbg !277
  br label %bb24, !dbg !261

bb19:                                             ; preds = %bb17
  %27 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 8, !dbg !278
  %_16 = load i8, ptr %27, align 4, !dbg !278, !noundef !30
  %28 = icmp eq i8 %_16, 0, !dbg !278
  br i1 %28, label %bb21, label %bb20, !dbg !278

bb18:                                             ; preds = %bb17
  store i8 0, ptr %0, align 1, !dbg !279
  br label %bb24, !dbg !261

bb21:                                             ; preds = %bb19
  %29 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 10, !dbg !280
  %_17 = load i32, ptr %29, align 4, !dbg !280, !noundef !30
  %30 = icmp eq i32 %_17, 0, !dbg !280
  br i1 %30, label %bb23, label %bb22, !dbg !280

bb20:                                             ; preds = %bb19
  store i8 0, ptr %0, align 1, !dbg !281
  br label %bb24, !dbg !261

bb23:                                             ; preds = %bb21
  store i8 1, ptr %0, align 1, !dbg !282
  br label %bb24, !dbg !263

bb22:                                             ; preds = %bb21
  store i8 0, ptr %0, align 1, !dbg !283
  br label %bb24, !dbg !261
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_4() unnamed_addr #0 !dbg !284 {
start:
  %expected_ret.dbg.spill = alloca i32, align 4
  %ret.dbg.spill = alloca i32, align 4
  %t = alloca %"src::lib::Tflac", align 4
  %0 = alloca i8, align 1
    #dbg_declare(ptr %t, !286, !DIExpression(), !292)
  store i32 16, ptr %t, align 4, !dbg !293
  %1 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 1, !dbg !293
  store i32 1, ptr %1, align 4, !dbg !293
  %2 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 2, !dbg !293
  store i32 1, ptr %2, align 4, !dbg !293
  %3 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 3, !dbg !293
  store i32 0, ptr %3, align 4, !dbg !293
  %4 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 4, !dbg !293
  store i8 0, ptr %4, align 4, !dbg !293
  %5 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !293
  store i8 0, ptr %5, align 1, !dbg !293
  %6 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 6, !dbg !293
  store i8 0, ptr %6, align 2, !dbg !293
  %7 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 7, !dbg !293
  store i8 0, ptr %7, align 1, !dbg !293
  %8 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 8, !dbg !293
  store i8 0, ptr %8, align 4, !dbg !293
  %9 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 10, !dbg !293
  store i32 0, ptr %9, align 4, !dbg !293
  %ret = call i32 @flac_validate(ptr %t), !dbg !294
  store i32 %ret, ptr %ret.dbg.spill, align 4, !dbg !294
    #dbg_declare(ptr %ret.dbg.spill, !288, !DIExpression(), !295)
  store i32 -1, ptr %expected_ret.dbg.spill, align 4, !dbg !296
    #dbg_declare(ptr %expected_ret.dbg.spill, !290, !DIExpression(), !297)
  %_6 = icmp ne i32 %ret, -1, !dbg !298
  br i1 %_6, label %bb2, label %bb3, !dbg !298

bb3:                                              ; preds = %start
  %_8 = load i32, ptr %t, align 4, !dbg !299, !noundef !30
  %10 = icmp eq i32 %_8, 16, !dbg !299
  br i1 %10, label %bb5, label %bb4, !dbg !299

bb2:                                              ; preds = %start
  store i8 0, ptr %0, align 1, !dbg !300
  br label %bb24, !dbg !301

bb24:                                             ; preds = %bb22, %bb23, %bb20, %bb18, %bb16, %bb14, %bb12, %bb10, %bb8, %bb6, %bb4, %bb2
  %11 = load i8, ptr %0, align 1, !dbg !303, !range !69, !noundef !30
  %12 = trunc i8 %11 to i1, !dbg !303
  ret i1 %12, !dbg !303

bb5:                                              ; preds = %bb3
  %13 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 1, !dbg !304
  %_9 = load i32, ptr %13, align 4, !dbg !304, !noundef !30
  %14 = icmp eq i32 %_9, 1, !dbg !304
  br i1 %14, label %bb7, label %bb6, !dbg !304

bb4:                                              ; preds = %bb3
  store i8 0, ptr %0, align 1, !dbg !305
  br label %bb24, !dbg !301

bb7:                                              ; preds = %bb5
  %15 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 2, !dbg !306
  %_10 = load i32, ptr %15, align 4, !dbg !306, !noundef !30
  %16 = icmp eq i32 %_10, 1, !dbg !306
  br i1 %16, label %bb9, label %bb8, !dbg !306

bb6:                                              ; preds = %bb5
  store i8 0, ptr %0, align 1, !dbg !307
  br label %bb24, !dbg !301

bb9:                                              ; preds = %bb7
  %17 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 3, !dbg !308
  %_11 = load i32, ptr %17, align 4, !dbg !308, !noundef !30
  %18 = icmp eq i32 %_11, 0, !dbg !308
  br i1 %18, label %bb11, label %bb10, !dbg !308

bb8:                                              ; preds = %bb7
  store i8 0, ptr %0, align 1, !dbg !309
  br label %bb24, !dbg !301

bb11:                                             ; preds = %bb9
  %19 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 4, !dbg !310
  %_12 = load i8, ptr %19, align 4, !dbg !310, !noundef !30
  %20 = icmp eq i8 %_12, 0, !dbg !310
  br i1 %20, label %bb13, label %bb12, !dbg !310

bb10:                                             ; preds = %bb9
  store i8 0, ptr %0, align 1, !dbg !311
  br label %bb24, !dbg !301

bb13:                                             ; preds = %bb11
  %21 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !312
  %_13 = load i8, ptr %21, align 1, !dbg !312, !noundef !30
  %22 = icmp eq i8 %_13, 0, !dbg !312
  br i1 %22, label %bb15, label %bb14, !dbg !312

bb12:                                             ; preds = %bb11
  store i8 0, ptr %0, align 1, !dbg !313
  br label %bb24, !dbg !301

bb15:                                             ; preds = %bb13
  %23 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 6, !dbg !314
  %_14 = load i8, ptr %23, align 2, !dbg !314, !noundef !30
  %24 = icmp eq i8 %_14, 0, !dbg !314
  br i1 %24, label %bb17, label %bb16, !dbg !314

bb14:                                             ; preds = %bb13
  store i8 0, ptr %0, align 1, !dbg !315
  br label %bb24, !dbg !301

bb17:                                             ; preds = %bb15
  %25 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 7, !dbg !316
  %_15 = load i8, ptr %25, align 1, !dbg !316, !noundef !30
  %26 = icmp eq i8 %_15, 0, !dbg !316
  br i1 %26, label %bb19, label %bb18, !dbg !316

bb16:                                             ; preds = %bb15
  store i8 0, ptr %0, align 1, !dbg !317
  br label %bb24, !dbg !301

bb19:                                             ; preds = %bb17
  %27 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 8, !dbg !318
  %_16 = load i8, ptr %27, align 4, !dbg !318, !noundef !30
  %28 = icmp eq i8 %_16, 0, !dbg !318
  br i1 %28, label %bb21, label %bb20, !dbg !318

bb18:                                             ; preds = %bb17
  store i8 0, ptr %0, align 1, !dbg !319
  br label %bb24, !dbg !301

bb21:                                             ; preds = %bb19
  %29 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 10, !dbg !320
  %_17 = load i32, ptr %29, align 4, !dbg !320, !noundef !30
  %30 = icmp eq i32 %_17, 0, !dbg !320
  br i1 %30, label %bb23, label %bb22, !dbg !320

bb20:                                             ; preds = %bb19
  store i8 0, ptr %0, align 1, !dbg !321
  br label %bb24, !dbg !301

bb23:                                             ; preds = %bb21
  store i8 1, ptr %0, align 1, !dbg !322
  br label %bb24, !dbg !303

bb22:                                             ; preds = %bb21
  store i8 0, ptr %0, align 1, !dbg !323
  br label %bb24, !dbg !301
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_5() unnamed_addr #0 !dbg !324 {
start:
  %expected_ret.dbg.spill = alloca i32, align 4
  %ret.dbg.spill = alloca i32, align 4
  %t = alloca %"src::lib::Tflac", align 4
  %0 = alloca i8, align 1
    #dbg_declare(ptr %t, !326, !DIExpression(), !332)
  store i32 16, ptr %t, align 4, !dbg !333
  %1 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 1, !dbg !333
  store i32 1, ptr %1, align 4, !dbg !333
  %2 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 2, !dbg !333
  store i32 1, ptr %2, align 4, !dbg !333
  %3 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 3, !dbg !333
  store i32 1, ptr %3, align 4, !dbg !333
  %4 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 4, !dbg !333
  store i8 0, ptr %4, align 4, !dbg !333
  %5 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !333
  store i8 0, ptr %5, align 1, !dbg !333
  %6 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 6, !dbg !333
  store i8 0, ptr %6, align 2, !dbg !333
  %7 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 7, !dbg !333
  store i8 0, ptr %7, align 1, !dbg !333
  %8 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 8, !dbg !333
  store i8 0, ptr %8, align 4, !dbg !333
  %9 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 10, !dbg !333
  store i32 0, ptr %9, align 4, !dbg !333
  %ret = call i32 @flac_validate(ptr %t), !dbg !334
  store i32 %ret, ptr %ret.dbg.spill, align 4, !dbg !334
    #dbg_declare(ptr %ret.dbg.spill, !328, !DIExpression(), !335)
  store i32 0, ptr %expected_ret.dbg.spill, align 4, !dbg !336
    #dbg_declare(ptr %expected_ret.dbg.spill, !330, !DIExpression(), !337)
  %_6 = icmp ne i32 %ret, 0, !dbg !338
  br i1 %_6, label %bb2, label %bb3, !dbg !338

bb3:                                              ; preds = %start
  %_8 = load i32, ptr %t, align 4, !dbg !339, !noundef !30
  %10 = icmp eq i32 %_8, 16, !dbg !339
  br i1 %10, label %bb5, label %bb4, !dbg !339

bb2:                                              ; preds = %start
  store i8 0, ptr %0, align 1, !dbg !340
  br label %bb24, !dbg !341

bb24:                                             ; preds = %bb22, %bb23, %bb20, %bb18, %bb16, %bb14, %bb12, %bb10, %bb8, %bb6, %bb4, %bb2
  %11 = load i8, ptr %0, align 1, !dbg !343, !range !69, !noundef !30
  %12 = trunc i8 %11 to i1, !dbg !343
  ret i1 %12, !dbg !343

bb5:                                              ; preds = %bb3
  %13 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 1, !dbg !344
  %_9 = load i32, ptr %13, align 4, !dbg !344, !noundef !30
  %14 = icmp eq i32 %_9, 1, !dbg !344
  br i1 %14, label %bb7, label %bb6, !dbg !344

bb4:                                              ; preds = %bb3
  store i8 0, ptr %0, align 1, !dbg !345
  br label %bb24, !dbg !341

bb7:                                              ; preds = %bb5
  %15 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 2, !dbg !346
  %_10 = load i32, ptr %15, align 4, !dbg !346, !noundef !30
  %16 = icmp eq i32 %_10, 1, !dbg !346
  br i1 %16, label %bb9, label %bb8, !dbg !346

bb6:                                              ; preds = %bb5
  store i8 0, ptr %0, align 1, !dbg !347
  br label %bb24, !dbg !341

bb9:                                              ; preds = %bb7
  %17 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 3, !dbg !348
  %_11 = load i32, ptr %17, align 4, !dbg !348, !noundef !30
  %18 = icmp eq i32 %_11, 1, !dbg !348
  br i1 %18, label %bb11, label %bb10, !dbg !348

bb8:                                              ; preds = %bb7
  store i8 0, ptr %0, align 1, !dbg !349
  br label %bb24, !dbg !341

bb11:                                             ; preds = %bb9
  %19 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 4, !dbg !350
  %_12 = load i8, ptr %19, align 4, !dbg !350, !noundef !30
  %20 = icmp eq i8 %_12, 0, !dbg !350
  br i1 %20, label %bb13, label %bb12, !dbg !350

bb10:                                             ; preds = %bb9
  store i8 0, ptr %0, align 1, !dbg !351
  br label %bb24, !dbg !341

bb13:                                             ; preds = %bb11
  %21 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !352
  %_13 = load i8, ptr %21, align 1, !dbg !352, !noundef !30
  %22 = icmp eq i8 %_13, 14, !dbg !352
  br i1 %22, label %bb15, label %bb14, !dbg !352

bb12:                                             ; preds = %bb11
  store i8 0, ptr %0, align 1, !dbg !353
  br label %bb24, !dbg !341

bb15:                                             ; preds = %bb13
  %23 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 6, !dbg !354
  %_14 = load i8, ptr %23, align 2, !dbg !354, !noundef !30
  %24 = icmp eq i8 %_14, 0, !dbg !354
  br i1 %24, label %bb17, label %bb16, !dbg !354

bb14:                                             ; preds = %bb13
  store i8 0, ptr %0, align 1, !dbg !355
  br label %bb24, !dbg !341

bb17:                                             ; preds = %bb15
  %25 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 7, !dbg !356
  %_15 = load i8, ptr %25, align 1, !dbg !356, !noundef !30
  %26 = icmp eq i8 %_15, 0, !dbg !356
  br i1 %26, label %bb19, label %bb18, !dbg !356

bb16:                                             ; preds = %bb15
  store i8 0, ptr %0, align 1, !dbg !357
  br label %bb24, !dbg !341

bb19:                                             ; preds = %bb17
  %27 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 8, !dbg !358
  %_16 = load i8, ptr %27, align 4, !dbg !358, !noundef !30
  %28 = icmp eq i8 %_16, 0, !dbg !358
  br i1 %28, label %bb21, label %bb20, !dbg !358

bb18:                                             ; preds = %bb17
  store i8 0, ptr %0, align 1, !dbg !359
  br label %bb24, !dbg !341

bb21:                                             ; preds = %bb19
  %29 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 10, !dbg !360
  %_17 = load i32, ptr %29, align 4, !dbg !360, !noundef !30
  %30 = icmp eq i32 %_17, 16, !dbg !360
  br i1 %30, label %bb23, label %bb22, !dbg !360

bb20:                                             ; preds = %bb19
  store i8 0, ptr %0, align 1, !dbg !361
  br label %bb24, !dbg !341

bb23:                                             ; preds = %bb21
  store i8 1, ptr %0, align 1, !dbg !362
  br label %bb24, !dbg !343

bb22:                                             ; preds = %bb21
  store i8 0, ptr %0, align 1, !dbg !363
  br label %bb24, !dbg !341
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_6() unnamed_addr #0 !dbg !364 {
start:
  %expected_ret.dbg.spill = alloca i32, align 4
  %ret.dbg.spill = alloca i32, align 4
  %t = alloca %"src::lib::Tflac", align 4
  %0 = alloca i8, align 1
    #dbg_declare(ptr %t, !366, !DIExpression(), !372)
  store i32 16, ptr %t, align 4, !dbg !373
  %1 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 1, !dbg !373
  store i32 1, ptr %1, align 4, !dbg !373
  %2 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 2, !dbg !373
  store i32 1, ptr %2, align 4, !dbg !373
  %3 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 3, !dbg !373
  store i32 1, ptr %3, align 4, !dbg !373
  %4 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 4, !dbg !373
  store i8 0, ptr %4, align 4, !dbg !373
  %5 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !373
  store i8 1, ptr %5, align 1, !dbg !373
  %6 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 6, !dbg !373
  store i8 0, ptr %6, align 2, !dbg !373
  %7 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 7, !dbg !373
  store i8 0, ptr %7, align 1, !dbg !373
  %8 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 8, !dbg !373
  store i8 0, ptr %8, align 4, !dbg !373
  %9 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 10, !dbg !373
  store i32 0, ptr %9, align 4, !dbg !373
  %ret = call i32 @flac_validate(ptr %t), !dbg !374
  store i32 %ret, ptr %ret.dbg.spill, align 4, !dbg !374
    #dbg_declare(ptr %ret.dbg.spill, !368, !DIExpression(), !375)
  store i32 0, ptr %expected_ret.dbg.spill, align 4, !dbg !376
    #dbg_declare(ptr %expected_ret.dbg.spill, !370, !DIExpression(), !377)
  %_6 = icmp ne i32 %ret, 0, !dbg !378
  br i1 %_6, label %bb2, label %bb3, !dbg !378

bb3:                                              ; preds = %start
  %_8 = load i32, ptr %t, align 4, !dbg !379, !noundef !30
  %10 = icmp eq i32 %_8, 16, !dbg !379
  br i1 %10, label %bb5, label %bb4, !dbg !379

bb2:                                              ; preds = %start
  store i8 0, ptr %0, align 1, !dbg !380
  br label %bb24, !dbg !381

bb24:                                             ; preds = %bb22, %bb23, %bb20, %bb18, %bb16, %bb14, %bb12, %bb10, %bb8, %bb6, %bb4, %bb2
  %11 = load i8, ptr %0, align 1, !dbg !383, !range !69, !noundef !30
  %12 = trunc i8 %11 to i1, !dbg !383
  ret i1 %12, !dbg !383

bb5:                                              ; preds = %bb3
  %13 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 1, !dbg !384
  %_9 = load i32, ptr %13, align 4, !dbg !384, !noundef !30
  %14 = icmp eq i32 %_9, 1, !dbg !384
  br i1 %14, label %bb7, label %bb6, !dbg !384

bb4:                                              ; preds = %bb3
  store i8 0, ptr %0, align 1, !dbg !385
  br label %bb24, !dbg !381

bb7:                                              ; preds = %bb5
  %15 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 2, !dbg !386
  %_10 = load i32, ptr %15, align 4, !dbg !386, !noundef !30
  %16 = icmp eq i32 %_10, 1, !dbg !386
  br i1 %16, label %bb9, label %bb8, !dbg !386

bb6:                                              ; preds = %bb5
  store i8 0, ptr %0, align 1, !dbg !387
  br label %bb24, !dbg !381

bb9:                                              ; preds = %bb7
  %17 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 3, !dbg !388
  %_11 = load i32, ptr %17, align 4, !dbg !388, !noundef !30
  %18 = icmp eq i32 %_11, 1, !dbg !388
  br i1 %18, label %bb11, label %bb10, !dbg !388

bb8:                                              ; preds = %bb7
  store i8 0, ptr %0, align 1, !dbg !389
  br label %bb24, !dbg !381

bb11:                                             ; preds = %bb9
  %19 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 4, !dbg !390
  %_12 = load i8, ptr %19, align 4, !dbg !390, !noundef !30
  %20 = icmp eq i8 %_12, 0, !dbg !390
  br i1 %20, label %bb13, label %bb12, !dbg !390

bb10:                                             ; preds = %bb9
  store i8 0, ptr %0, align 1, !dbg !391
  br label %bb24, !dbg !381

bb13:                                             ; preds = %bb11
  %21 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !392
  %_13 = load i8, ptr %21, align 1, !dbg !392, !noundef !30
  %22 = icmp eq i8 %_13, 1, !dbg !392
  br i1 %22, label %bb15, label %bb14, !dbg !392

bb12:                                             ; preds = %bb11
  store i8 0, ptr %0, align 1, !dbg !393
  br label %bb24, !dbg !381

bb15:                                             ; preds = %bb13
  %23 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 6, !dbg !394
  %_14 = load i8, ptr %23, align 2, !dbg !394, !noundef !30
  %24 = icmp eq i8 %_14, 0, !dbg !394
  br i1 %24, label %bb17, label %bb16, !dbg !394

bb14:                                             ; preds = %bb13
  store i8 0, ptr %0, align 1, !dbg !395
  br label %bb24, !dbg !381

bb17:                                             ; preds = %bb15
  %25 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 7, !dbg !396
  %_15 = load i8, ptr %25, align 1, !dbg !396, !noundef !30
  %26 = icmp eq i8 %_15, 0, !dbg !396
  br i1 %26, label %bb19, label %bb18, !dbg !396

bb16:                                             ; preds = %bb15
  store i8 0, ptr %0, align 1, !dbg !397
  br label %bb24, !dbg !381

bb19:                                             ; preds = %bb17
  %27 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 8, !dbg !398
  %_16 = load i8, ptr %27, align 4, !dbg !398, !noundef !30
  %28 = icmp eq i8 %_16, 0, !dbg !398
  br i1 %28, label %bb21, label %bb20, !dbg !398

bb18:                                             ; preds = %bb17
  store i8 0, ptr %0, align 1, !dbg !399
  br label %bb24, !dbg !381

bb21:                                             ; preds = %bb19
  %29 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 10, !dbg !400
  %_17 = load i32, ptr %29, align 4, !dbg !400, !noundef !30
  %30 = icmp eq i32 %_17, 16, !dbg !400
  br i1 %30, label %bb23, label %bb22, !dbg !400

bb20:                                             ; preds = %bb19
  store i8 0, ptr %0, align 1, !dbg !401
  br label %bb24, !dbg !381

bb23:                                             ; preds = %bb21
  store i8 1, ptr %0, align 1, !dbg !402
  br label %bb24, !dbg !383

bb22:                                             ; preds = %bb21
  store i8 0, ptr %0, align 1, !dbg !403
  br label %bb24, !dbg !381
}

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #2 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { noreturn }
attributes #6 = { noinline noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}

!0 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !1, producer: "clang LLVM (rustc version 1.70.0-nightly (84dd17b56 2023-04-14))", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!1 = !DIFile(filename: "lib.rs/@/484n61s2s3gud3rp", directory: "/crisp-rust-outputs/B01_organic/flac_validate_lib/translated_rust")
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 2, !"RtLibUseGOT", i32 1}
!4 = !{i32 2, !"Dwarf Version", i32 4}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = distinct !DISubprogram(name: "flac_validate_ffi", linkageName: "flac_validate", scope: !8, file: !7, line: 92, type: !11, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !30, retainedNodes: !31)
!7 = !DIFile(filename: "src/lib.rs", directory: "/crisp-rust-outputs/B01_organic/flac_validate_lib/translated_rust", checksumkind: CSK_MD5, checksum: "41509d4da6aac3fc5a550efbe089cb9a")
!8 = !DINamespace(name: "lib", scope: !9)
!9 = !DINamespace(name: "src", scope: !10)
!10 = !DINamespace(name: "flac_validate_lib", scope: null)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !14}
!13 = !DIBasicType(name: "i32", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut flac_validate_lib::src::lib::Tflac", baseType: !15, size: 64, align: 64, dwarfAddressSpace: 0)
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Tflac", scope: !8, file: !16, size: 224, align: 32, elements: !17, templateParams: !30, identifier: "3072705d0f025a0f8dc908d680b1fdff")
!16 = !DIFile(filename: "<unknown>", directory: "")
!17 = !{!18, !20, !21, !22, !23, !25, !26, !27, !28, !29}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "blocksize", scope: !15, file: !16, baseType: !19, size: 32, align: 32)
!19 = !DIBasicType(name: "u32", size: 32, encoding: DW_ATE_unsigned)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "samplerate", scope: !15, file: !16, baseType: !19, size: 32, align: 32, offset: 32)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !15, file: !16, baseType: !19, size: 32, align: 32, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth", scope: !15, file: !16, baseType: !19, size: 32, align: 32, offset: 96)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "channel_mode", scope: !15, file: !16, baseType: !24, size: 8, align: 8, offset: 128)
!24 = !DIBasicType(name: "u8", size: 8, encoding: DW_ATE_unsigned)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "max_rice_value", scope: !15, file: !16, baseType: !24, size: 8, align: 8, offset: 136)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "min_partition_order", scope: !15, file: !16, baseType: !24, size: 8, align: 8, offset: 144)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "max_partition_order", scope: !15, file: !16, baseType: !24, size: 8, align: 8, offset: 152)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "partition_order", scope: !15, file: !16, baseType: !24, size: 8, align: 8, offset: 160)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "cur_blocksize", scope: !15, file: !16, baseType: !19, size: 32, align: 32, offset: 192)
!30 = !{}
!31 = !{!32}
!32 = !DILocalVariable(name: "t", arg: 1, scope: !6, file: !7, line: 92, type: !14)
!33 = !DILocation(line: 92, column: 44, scope: !6)
!34 = !DILocation(line: 93, column: 19, scope: !6)
!35 = !DILocation(line: 93, column: 5, scope: !6)
!36 = !DILocation(line: 94, column: 2, scope: !6)
!37 = !DILocation(line: 92, column: 1, scope: !6)
!38 = distinct !DISubprogram(name: "flac_validate", linkageName: "_ZN17flac_validate_lib3src3lib13flac_validate17hea9069f44434c4ffE", scope: !8, file: !7, line: 31, type: !39, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !30, retainedNodes: !42)
!39 = !DISubroutineType(types: !40)
!40 = !{!13, !41}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut flac_validate_lib::src::lib::Tflac", baseType: !15, size: 64, align: 64, dwarfAddressSpace: 0)
!42 = !{!43}
!43 = !DILocalVariable(name: "t", arg: 1, scope: !38, file: !7, line: 31, type: !41)
!44 = !DILocation(line: 31, column: 33, scope: !38)
!45 = !DILocation(line: 32, column: 8, scope: !38)
!46 = !DILocation(line: 35, column: 8, scope: !38)
!47 = !DILocation(line: 33, column: 16, scope: !38)
!48 = !DILocation(line: 1, column: 1, scope: !49)
!49 = !DILexicalBlockFile(scope: !38, file: !50, discriminator: 0)
!50 = !DIFile(filename: "lib.rs", directory: "/crisp-rust-outputs/B01_organic/flac_validate_lib/translated_rust", checksumkind: CSK_MD5, checksum: "3517fa76467d691b85abdf25c6292f0d")
!51 = !DILocation(line: 89, column: 2, scope: !38)
!52 = !DILocation(line: 38, column: 8, scope: !38)
!53 = !DILocation(line: 36, column: 16, scope: !38)
!54 = !DILocation(line: 39, column: 16, scope: !38)
!55 = !DILocation(line: 41, column: 8, scope: !38)
!56 = !DILocation(line: 44, column: 8, scope: !38)
!57 = !DILocation(line: 42, column: 16, scope: !38)
!58 = !DILocation(line: 45, column: 16, scope: !38)
!59 = !DILocation(line: 47, column: 8, scope: !38)
!60 = !DILocation(line: 50, column: 8, scope: !38)
!61 = !DILocation(line: 48, column: 16, scope: !38)
!62 = !DILocation(line: 51, column: 16, scope: !38)
!63 = !DILocation(line: 53, column: 8, scope: !38)
!64 = !DILocation(line: 57, column: 8, scope: !38)
!65 = !DILocation(line: 54, column: 16, scope: !38)
!66 = !DILocation(line: 63, column: 8, scope: !38)
!67 = !DILocation(line: 58, column: 12, scope: !38)
!68 = !DILocation(line: 58, column: 34, scope: !38)
!69 = !{i8 0, i8 2}
!70 = !DILocation(line: 59, column: 13, scope: !38)
!71 = !DILocation(line: 58, column: 9, scope: !38)
!72 = !DILocation(line: 64, column: 12, scope: !38)
!73 = !DILocation(line: 69, column: 15, scope: !38)
!74 = !DILocation(line: 73, column: 8, scope: !38)
!75 = !DILocation(line: 70, column: 16, scope: !38)
!76 = !DILocation(line: 67, column: 13, scope: !38)
!77 = !DILocation(line: 64, column: 9, scope: !38)
!78 = !DILocation(line: 65, column: 13, scope: !38)
!79 = !DILocation(line: 76, column: 8, scope: !38)
!80 = !DILocation(line: 76, column: 54, scope: !38)
!81 = !DILocation(line: 74, column: 16, scope: !38)
!82 = !DILocation(line: 80, column: 25, scope: !38)
!83 = !DILocation(line: 80, column: 5, scope: !38)
!84 = !DILocation(line: 81, column: 5, scope: !38)
!85 = !DILocation(line: 77, column: 16, scope: !38)
!86 = !DILocation(line: 81, column: 11, scope: !38)
!87 = !DILocation(line: 81, column: 46, scope: !38)
!88 = !DILocation(line: 81, column: 45, scope: !38)
!89 = !DILocation(line: 81, column: 36, scope: !38)
!90 = !DILocalVariable(name: "self", arg: 1, scope: !91, file: !92, line: 1322, type: !19)
!91 = distinct !DISubprogram(name: "wrapping_rem", linkageName: "_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_rem17h444bd8b2161bd3b6E", scope: !93, file: !92, line: 1322, type: !96, scopeLine: 1322, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !30, retainedNodes: !98)
!92 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/num/uint_macros.rs", directory: "", checksumkind: CSK_MD5, checksum: "b2a733f80e3cd43066f918bdafc87bd0")
!93 = !DINamespace(name: "{impl#8}", scope: !94)
!94 = !DINamespace(name: "num", scope: !95)
!95 = !DINamespace(name: "core", scope: null)
!96 = !DISubroutineType(types: !97)
!97 = !{!19, !19, !19}
!98 = !{!90, !99}
!99 = !DILocalVariable(name: "rhs", arg: 2, scope: !91, file: !92, line: 1322, type: !19)
!100 = !DILocation(line: 1322, column: 35, scope: !91, inlinedAt: !101)
!101 = distinct !DILocation(line: 81, column: 11, scope: !38)
!102 = !DILocation(line: 1322, column: 41, scope: !91, inlinedAt: !101)
!103 = !DILocation(line: 1323, column: 13, scope: !91, inlinedAt: !101)
!104 = !DILocation(line: 82, column: 13, scope: !38)
!105 = !DILocation(line: 82, column: 12, scope: !38)
!106 = !DILocation(line: 82, column: 56, scope: !38)
!107 = !DILocation(line: 87, column: 23, scope: !38)
!108 = !DILocation(line: 87, column: 5, scope: !38)
!109 = !DILocation(line: 88, column: 5, scope: !38)
!110 = !DILocation(line: 84, column: 29, scope: !38)
!111 = !DILocalVariable(name: "self", arg: 1, scope: !112, file: !92, line: 1188, type: !24)
!112 = distinct !DISubprogram(name: "wrapping_add", linkageName: "_ZN4core3num20_$LT$impl$u20$u8$GT$12wrapping_add17h5bbfca680f743edbE", scope: !113, file: !92, line: 1188, type: !114, scopeLine: 1188, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !30, retainedNodes: !116)
!113 = !DINamespace(name: "{impl#6}", scope: !94)
!114 = !DISubroutineType(types: !115)
!115 = !{!24, !24, !24}
!116 = !{!111, !117}
!117 = !DILocalVariable(name: "rhs", arg: 2, scope: !112, file: !92, line: 1188, type: !24)
!118 = !DILocation(line: 1188, column: 35, scope: !112, inlinedAt: !119)
!119 = distinct !DILocation(line: 84, column: 29, scope: !38)
!120 = !DILocation(line: 1188, column: 41, scope: !112, inlinedAt: !119)
!121 = !DILocation(line: 1189, column: 13, scope: !112, inlinedAt: !119)
!122 = !DILocation(line: 84, column: 9, scope: !38)
!123 = distinct !DISubprogram(name: "tflac_size_memory_ffi", linkageName: "tflac_size_memory", scope: !8, file: !7, line: 97, type: !124, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !30, retainedNodes: !126)
!124 = !DISubroutineType(types: !125)
!125 = !{!19, !19}
!126 = !{!127}
!127 = !DILocalVariable(name: "blocksize", arg: 1, scope: !123, file: !7, line: 97, type: !19)
!128 = !DILocation(line: 97, column: 48, scope: !123)
!129 = !DILocation(line: 98, column: 5, scope: !123)
!130 = !DILocation(line: 99, column: 2, scope: !123)
!131 = distinct !DISubprogram(name: "tflac_size_memory", linkageName: "_ZN17flac_validate_lib3src3lib17tflac_size_memory17hd8823f4a0aedfcafE", scope: !8, file: !7, line: 27, type: !124, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !30, retainedNodes: !132)
!132 = !{!133}
!133 = !DILocalVariable(name: "blocksize", arg: 1, scope: !131, file: !7, line: 27, type: !19)
!134 = !DILocation(line: 27, column: 37, scope: !131)
!135 = !DILocalVariable(name: "self", arg: 1, scope: !136, file: !92, line: 1252, type: !19)
!136 = distinct !DISubprogram(name: "wrapping_mul", linkageName: "_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_mul17h04f18fd3c570e36cE", scope: !93, file: !92, line: 1252, type: !96, scopeLine: 1252, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !30, retainedNodes: !137)
!137 = !{!135, !138}
!138 = !DILocalVariable(name: "rhs", arg: 2, scope: !136, file: !92, line: 1252, type: !19)
!139 = !DILocation(line: 1252, column: 35, scope: !136, inlinedAt: !140)
!140 = distinct !DILocation(line: 28, column: 67, scope: !131)
!141 = !DILocation(line: 1252, column: 41, scope: !136, inlinedAt: !140)
!142 = !DILocation(line: 1253, column: 13, scope: !136, inlinedAt: !140)
!143 = !DILocalVariable(name: "self", arg: 1, scope: !144, file: !92, line: 1188, type: !19)
!144 = distinct !DISubprogram(name: "wrapping_add", linkageName: "_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_add17ha47a709bc54d730dE", scope: !93, file: !92, line: 1188, type: !96, scopeLine: 1188, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !30, retainedNodes: !145)
!145 = !{!143, !146}
!146 = !DILocalVariable(name: "rhs", arg: 2, scope: !144, file: !92, line: 1188, type: !19)
!147 = !DILocation(line: 1188, column: 35, scope: !144, inlinedAt: !148)
!148 = distinct !DILocation(line: 28, column: 46, scope: !131)
!149 = !DILocation(line: 1188, column: 41, scope: !144, inlinedAt: !148)
!150 = !DILocation(line: 1189, column: 13, scope: !144, inlinedAt: !148)
!151 = !DILocation(line: 28, column: 46, scope: !131)
!152 = !DILocation(line: 1252, column: 35, scope: !136, inlinedAt: !153)
!153 = distinct !DILocation(line: 28, column: 26, scope: !131)
!154 = !DILocation(line: 1252, column: 41, scope: !136, inlinedAt: !153)
!155 = !DILocation(line: 1253, column: 13, scope: !136, inlinedAt: !153)
!156 = !DILocation(line: 1188, column: 35, scope: !144, inlinedAt: !157)
!157 = distinct !DILocation(line: 28, column: 5, scope: !131)
!158 = !DILocation(line: 1188, column: 41, scope: !144, inlinedAt: !157)
!159 = !DILocation(line: 1189, column: 13, scope: !144, inlinedAt: !157)
!160 = !DILocation(line: 29, column: 2, scope: !131)
!161 = distinct !DISubprogram(name: "run_test_1", scope: !8, file: !7, line: 102, type: !162, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !30, retainedNodes: !165)
!162 = !DISubroutineType(types: !163)
!163 = !{!164}
!164 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!165 = !{!166, !168, !170}
!166 = !DILocalVariable(name: "t", scope: !167, file: !7, line: 103, type: !15, align: 4)
!167 = distinct !DILexicalBlock(scope: !161, file: !7, line: 103, column: 5)
!168 = !DILocalVariable(name: "ret", scope: !169, file: !7, line: 115, type: !13, align: 4)
!169 = distinct !DILexicalBlock(scope: !167, file: !7, line: 115, column: 5)
!170 = !DILocalVariable(name: "expected_ret", scope: !171, file: !7, line: 116, type: !13, align: 4)
!171 = distinct !DILexicalBlock(scope: !169, file: !7, line: 116, column: 5)
!172 = !DILocation(line: 103, column: 9, scope: !167)
!173 = !DILocation(line: 103, column: 17, scope: !161)
!174 = !DILocation(line: 115, column: 15, scope: !167)
!175 = !DILocation(line: 115, column: 9, scope: !169)
!176 = !DILocation(line: 116, column: 44, scope: !169)
!177 = !DILocation(line: 116, column: 9, scope: !171)
!178 = !DILocation(line: 117, column: 8, scope: !171)
!179 = !DILocation(line: 118, column: 8, scope: !171)
!180 = !DILocation(line: 117, column: 37, scope: !171)
!181 = !DILocation(line: 1, column: 1, scope: !182)
!182 = !DILexicalBlockFile(scope: !171, file: !50, discriminator: 0)
!183 = !DILocation(line: 129, column: 2, scope: !161)
!184 = !DILocation(line: 119, column: 8, scope: !171)
!185 = !DILocation(line: 118, column: 34, scope: !171)
!186 = !DILocation(line: 120, column: 8, scope: !171)
!187 = !DILocation(line: 119, column: 35, scope: !171)
!188 = !DILocation(line: 121, column: 8, scope: !171)
!189 = !DILocation(line: 120, column: 33, scope: !171)
!190 = !DILocation(line: 122, column: 8, scope: !171)
!191 = !DILocation(line: 121, column: 33, scope: !171)
!192 = !DILocation(line: 123, column: 8, scope: !171)
!193 = !DILocation(line: 122, column: 37, scope: !171)
!194 = !DILocation(line: 124, column: 8, scope: !171)
!195 = !DILocation(line: 123, column: 39, scope: !171)
!196 = !DILocation(line: 125, column: 8, scope: !171)
!197 = !DILocation(line: 124, column: 44, scope: !171)
!198 = !DILocation(line: 126, column: 8, scope: !171)
!199 = !DILocation(line: 125, column: 44, scope: !171)
!200 = !DILocation(line: 127, column: 8, scope: !171)
!201 = !DILocation(line: 126, column: 40, scope: !171)
!202 = !DILocation(line: 128, column: 5, scope: !171)
!203 = !DILocation(line: 127, column: 38, scope: !171)
!204 = distinct !DISubprogram(name: "run_test_2", scope: !8, file: !7, line: 132, type: !162, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !30, retainedNodes: !205)
!205 = !{!206, !208, !210}
!206 = !DILocalVariable(name: "t", scope: !207, file: !7, line: 133, type: !15, align: 4)
!207 = distinct !DILexicalBlock(scope: !204, file: !7, line: 133, column: 5)
!208 = !DILocalVariable(name: "ret", scope: !209, file: !7, line: 145, type: !13, align: 4)
!209 = distinct !DILexicalBlock(scope: !207, file: !7, line: 145, column: 5)
!210 = !DILocalVariable(name: "expected_ret", scope: !211, file: !7, line: 146, type: !13, align: 4)
!211 = distinct !DILexicalBlock(scope: !209, file: !7, line: 146, column: 5)
!212 = !DILocation(line: 133, column: 9, scope: !207)
!213 = !DILocation(line: 133, column: 17, scope: !204)
!214 = !DILocation(line: 145, column: 15, scope: !207)
!215 = !DILocation(line: 145, column: 9, scope: !209)
!216 = !DILocation(line: 146, column: 44, scope: !209)
!217 = !DILocation(line: 146, column: 9, scope: !211)
!218 = !DILocation(line: 147, column: 8, scope: !211)
!219 = !DILocation(line: 148, column: 8, scope: !211)
!220 = !DILocation(line: 147, column: 37, scope: !211)
!221 = !DILocation(line: 1, column: 1, scope: !222)
!222 = !DILexicalBlockFile(scope: !211, file: !50, discriminator: 0)
!223 = !DILocation(line: 159, column: 2, scope: !204)
!224 = !DILocation(line: 149, column: 8, scope: !211)
!225 = !DILocation(line: 148, column: 35, scope: !211)
!226 = !DILocation(line: 150, column: 8, scope: !211)
!227 = !DILocation(line: 149, column: 35, scope: !211)
!228 = !DILocation(line: 151, column: 8, scope: !211)
!229 = !DILocation(line: 150, column: 33, scope: !211)
!230 = !DILocation(line: 152, column: 8, scope: !211)
!231 = !DILocation(line: 151, column: 33, scope: !211)
!232 = !DILocation(line: 153, column: 8, scope: !211)
!233 = !DILocation(line: 152, column: 37, scope: !211)
!234 = !DILocation(line: 154, column: 8, scope: !211)
!235 = !DILocation(line: 153, column: 39, scope: !211)
!236 = !DILocation(line: 155, column: 8, scope: !211)
!237 = !DILocation(line: 154, column: 44, scope: !211)
!238 = !DILocation(line: 156, column: 8, scope: !211)
!239 = !DILocation(line: 155, column: 44, scope: !211)
!240 = !DILocation(line: 157, column: 8, scope: !211)
!241 = !DILocation(line: 156, column: 40, scope: !211)
!242 = !DILocation(line: 158, column: 5, scope: !211)
!243 = !DILocation(line: 157, column: 38, scope: !211)
!244 = distinct !DISubprogram(name: "run_test_3", scope: !8, file: !7, line: 162, type: !162, scopeLine: 162, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !30, retainedNodes: !245)
!245 = !{!246, !248, !250}
!246 = !DILocalVariable(name: "t", scope: !247, file: !7, line: 163, type: !15, align: 4)
!247 = distinct !DILexicalBlock(scope: !244, file: !7, line: 163, column: 5)
!248 = !DILocalVariable(name: "ret", scope: !249, file: !7, line: 175, type: !13, align: 4)
!249 = distinct !DILexicalBlock(scope: !247, file: !7, line: 175, column: 5)
!250 = !DILocalVariable(name: "expected_ret", scope: !251, file: !7, line: 176, type: !13, align: 4)
!251 = distinct !DILexicalBlock(scope: !249, file: !7, line: 176, column: 5)
!252 = !DILocation(line: 163, column: 9, scope: !247)
!253 = !DILocation(line: 163, column: 17, scope: !244)
!254 = !DILocation(line: 175, column: 15, scope: !247)
!255 = !DILocation(line: 175, column: 9, scope: !249)
!256 = !DILocation(line: 176, column: 44, scope: !249)
!257 = !DILocation(line: 176, column: 9, scope: !251)
!258 = !DILocation(line: 177, column: 8, scope: !251)
!259 = !DILocation(line: 178, column: 8, scope: !251)
!260 = !DILocation(line: 177, column: 37, scope: !251)
!261 = !DILocation(line: 1, column: 1, scope: !262)
!262 = !DILexicalBlockFile(scope: !251, file: !50, discriminator: 0)
!263 = !DILocation(line: 189, column: 2, scope: !244)
!264 = !DILocation(line: 179, column: 8, scope: !251)
!265 = !DILocation(line: 178, column: 35, scope: !251)
!266 = !DILocation(line: 180, column: 8, scope: !251)
!267 = !DILocation(line: 179, column: 35, scope: !251)
!268 = !DILocation(line: 181, column: 8, scope: !251)
!269 = !DILocation(line: 180, column: 33, scope: !251)
!270 = !DILocation(line: 182, column: 8, scope: !251)
!271 = !DILocation(line: 181, column: 33, scope: !251)
!272 = !DILocation(line: 183, column: 8, scope: !251)
!273 = !DILocation(line: 182, column: 37, scope: !251)
!274 = !DILocation(line: 184, column: 8, scope: !251)
!275 = !DILocation(line: 183, column: 39, scope: !251)
!276 = !DILocation(line: 185, column: 8, scope: !251)
!277 = !DILocation(line: 184, column: 44, scope: !251)
!278 = !DILocation(line: 186, column: 8, scope: !251)
!279 = !DILocation(line: 185, column: 44, scope: !251)
!280 = !DILocation(line: 187, column: 8, scope: !251)
!281 = !DILocation(line: 186, column: 40, scope: !251)
!282 = !DILocation(line: 188, column: 5, scope: !251)
!283 = !DILocation(line: 187, column: 38, scope: !251)
!284 = distinct !DISubprogram(name: "run_test_4", scope: !8, file: !7, line: 192, type: !162, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !30, retainedNodes: !285)
!285 = !{!286, !288, !290}
!286 = !DILocalVariable(name: "t", scope: !287, file: !7, line: 193, type: !15, align: 4)
!287 = distinct !DILexicalBlock(scope: !284, file: !7, line: 193, column: 5)
!288 = !DILocalVariable(name: "ret", scope: !289, file: !7, line: 205, type: !13, align: 4)
!289 = distinct !DILexicalBlock(scope: !287, file: !7, line: 205, column: 5)
!290 = !DILocalVariable(name: "expected_ret", scope: !291, file: !7, line: 206, type: !13, align: 4)
!291 = distinct !DILexicalBlock(scope: !289, file: !7, line: 206, column: 5)
!292 = !DILocation(line: 193, column: 9, scope: !287)
!293 = !DILocation(line: 193, column: 17, scope: !284)
!294 = !DILocation(line: 205, column: 15, scope: !287)
!295 = !DILocation(line: 205, column: 9, scope: !289)
!296 = !DILocation(line: 206, column: 44, scope: !289)
!297 = !DILocation(line: 206, column: 9, scope: !291)
!298 = !DILocation(line: 207, column: 8, scope: !291)
!299 = !DILocation(line: 208, column: 8, scope: !291)
!300 = !DILocation(line: 207, column: 37, scope: !291)
!301 = !DILocation(line: 1, column: 1, scope: !302)
!302 = !DILexicalBlockFile(scope: !291, file: !50, discriminator: 0)
!303 = !DILocation(line: 219, column: 2, scope: !284)
!304 = !DILocation(line: 209, column: 8, scope: !291)
!305 = !DILocation(line: 208, column: 35, scope: !291)
!306 = !DILocation(line: 210, column: 8, scope: !291)
!307 = !DILocation(line: 209, column: 35, scope: !291)
!308 = !DILocation(line: 211, column: 8, scope: !291)
!309 = !DILocation(line: 210, column: 33, scope: !291)
!310 = !DILocation(line: 212, column: 8, scope: !291)
!311 = !DILocation(line: 211, column: 33, scope: !291)
!312 = !DILocation(line: 213, column: 8, scope: !291)
!313 = !DILocation(line: 212, column: 37, scope: !291)
!314 = !DILocation(line: 214, column: 8, scope: !291)
!315 = !DILocation(line: 213, column: 39, scope: !291)
!316 = !DILocation(line: 215, column: 8, scope: !291)
!317 = !DILocation(line: 214, column: 44, scope: !291)
!318 = !DILocation(line: 216, column: 8, scope: !291)
!319 = !DILocation(line: 215, column: 44, scope: !291)
!320 = !DILocation(line: 217, column: 8, scope: !291)
!321 = !DILocation(line: 216, column: 40, scope: !291)
!322 = !DILocation(line: 218, column: 5, scope: !291)
!323 = !DILocation(line: 217, column: 38, scope: !291)
!324 = distinct !DISubprogram(name: "run_test_5", scope: !8, file: !7, line: 222, type: !162, scopeLine: 222, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !30, retainedNodes: !325)
!325 = !{!326, !328, !330}
!326 = !DILocalVariable(name: "t", scope: !327, file: !7, line: 223, type: !15, align: 4)
!327 = distinct !DILexicalBlock(scope: !324, file: !7, line: 223, column: 5)
!328 = !DILocalVariable(name: "ret", scope: !329, file: !7, line: 235, type: !13, align: 4)
!329 = distinct !DILexicalBlock(scope: !327, file: !7, line: 235, column: 5)
!330 = !DILocalVariable(name: "expected_ret", scope: !331, file: !7, line: 236, type: !13, align: 4)
!331 = distinct !DILexicalBlock(scope: !329, file: !7, line: 236, column: 5)
!332 = !DILocation(line: 223, column: 9, scope: !327)
!333 = !DILocation(line: 223, column: 17, scope: !324)
!334 = !DILocation(line: 235, column: 15, scope: !327)
!335 = !DILocation(line: 235, column: 9, scope: !329)
!336 = !DILocation(line: 236, column: 44, scope: !329)
!337 = !DILocation(line: 236, column: 9, scope: !331)
!338 = !DILocation(line: 237, column: 8, scope: !331)
!339 = !DILocation(line: 238, column: 8, scope: !331)
!340 = !DILocation(line: 237, column: 37, scope: !331)
!341 = !DILocation(line: 1, column: 1, scope: !342)
!342 = !DILexicalBlockFile(scope: !331, file: !50, discriminator: 0)
!343 = !DILocation(line: 249, column: 2, scope: !324)
!344 = !DILocation(line: 239, column: 8, scope: !331)
!345 = !DILocation(line: 238, column: 35, scope: !331)
!346 = !DILocation(line: 240, column: 8, scope: !331)
!347 = !DILocation(line: 239, column: 35, scope: !331)
!348 = !DILocation(line: 241, column: 8, scope: !331)
!349 = !DILocation(line: 240, column: 33, scope: !331)
!350 = !DILocation(line: 242, column: 8, scope: !331)
!351 = !DILocation(line: 241, column: 33, scope: !331)
!352 = !DILocation(line: 243, column: 8, scope: !331)
!353 = !DILocation(line: 242, column: 37, scope: !331)
!354 = !DILocation(line: 244, column: 8, scope: !331)
!355 = !DILocation(line: 243, column: 40, scope: !331)
!356 = !DILocation(line: 245, column: 8, scope: !331)
!357 = !DILocation(line: 244, column: 44, scope: !331)
!358 = !DILocation(line: 246, column: 8, scope: !331)
!359 = !DILocation(line: 245, column: 44, scope: !331)
!360 = !DILocation(line: 247, column: 8, scope: !331)
!361 = !DILocation(line: 246, column: 40, scope: !331)
!362 = !DILocation(line: 248, column: 5, scope: !331)
!363 = !DILocation(line: 247, column: 39, scope: !331)
!364 = distinct !DISubprogram(name: "run_test_6", scope: !8, file: !7, line: 253, type: !162, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !30, retainedNodes: !365)
!365 = !{!366, !368, !370}
!366 = !DILocalVariable(name: "t", scope: !367, file: !7, line: 254, type: !15, align: 4)
!367 = distinct !DILexicalBlock(scope: !364, file: !7, line: 254, column: 5)
!368 = !DILocalVariable(name: "ret", scope: !369, file: !7, line: 266, type: !13, align: 4)
!369 = distinct !DILexicalBlock(scope: !367, file: !7, line: 266, column: 5)
!370 = !DILocalVariable(name: "expected_ret", scope: !371, file: !7, line: 267, type: !13, align: 4)
!371 = distinct !DILexicalBlock(scope: !369, file: !7, line: 267, column: 5)
!372 = !DILocation(line: 254, column: 9, scope: !367)
!373 = !DILocation(line: 254, column: 17, scope: !364)
!374 = !DILocation(line: 266, column: 15, scope: !367)
!375 = !DILocation(line: 266, column: 9, scope: !369)
!376 = !DILocation(line: 267, column: 44, scope: !369)
!377 = !DILocation(line: 267, column: 9, scope: !371)
!378 = !DILocation(line: 268, column: 8, scope: !371)
!379 = !DILocation(line: 269, column: 8, scope: !371)
!380 = !DILocation(line: 268, column: 37, scope: !371)
!381 = !DILocation(line: 1, column: 1, scope: !382)
!382 = !DILexicalBlockFile(scope: !371, file: !50, discriminator: 0)
!383 = !DILocation(line: 280, column: 2, scope: !364)
!384 = !DILocation(line: 270, column: 8, scope: !371)
!385 = !DILocation(line: 269, column: 35, scope: !371)
!386 = !DILocation(line: 271, column: 8, scope: !371)
!387 = !DILocation(line: 270, column: 35, scope: !371)
!388 = !DILocation(line: 272, column: 8, scope: !371)
!389 = !DILocation(line: 271, column: 33, scope: !371)
!390 = !DILocation(line: 273, column: 8, scope: !371)
!391 = !DILocation(line: 272, column: 33, scope: !371)
!392 = !DILocation(line: 274, column: 8, scope: !371)
!393 = !DILocation(line: 273, column: 37, scope: !371)
!394 = !DILocation(line: 275, column: 8, scope: !371)
!395 = !DILocation(line: 274, column: 39, scope: !371)
!396 = !DILocation(line: 276, column: 8, scope: !371)
!397 = !DILocation(line: 275, column: 44, scope: !371)
!398 = !DILocation(line: 277, column: 8, scope: !371)
!399 = !DILocation(line: 276, column: 44, scope: !371)
!400 = !DILocation(line: 278, column: 8, scope: !371)
!401 = !DILocation(line: 277, column: 40, scope: !371)
!402 = !DILocation(line: 279, column: 5, scope: !371)
!403 = !DILocation(line: 278, column: 39, scope: !371)
