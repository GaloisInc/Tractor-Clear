; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; ASSERT EQ: i1 1 = call i1 @run_test_1()
; ASSERT EQ: i1 1 = call i1 @run_test_2()
; ASSERT EQ: i1 1 = call i1 @run_test_3()
; ASSERT EQ: i1 1 = call i1 @run_test_4()
; ASSERT EQ: i1 1 = call i1 @run_test_5()

%"src::lib::TflacBitwriter" = type { i64, i32, i32, i32, i32, ptr }

@alloc_f5ffd2fd1476bab43ad89fb40c72d0c5 = private unnamed_addr constant <{ [10 x i8] }> <{ [10 x i8] c"src/lib.rs" }>, align 1
@alloc_10062f18c1168c5bb90ca70352065aa1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\1D\00\00\00\05\00\00\00" }>, align 8
@str.0 = internal constant [35 x i8] c"attempt to shift left with overflow"
@alloc_c9bc1093e9b010d11a2b880db438167c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00.\00\00\00\13\00\00\00" }>, align 8
@str.1 = internal constant [36 x i8] c"attempt to shift right with overflow"
@alloc_39be42af0d12b528896e2d6fb718dbfa = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\001\00\00\00\09\00\00\00" }>, align 8
@alloc_e448c9f90db7382f612861224b62fad1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\003\00\00\00\09\00\00\00" }>, align 8
@str.2 = internal constant [28 x i8] c"attempt to add with overflow"
@alloc_779bac1291f525afd4ccb3b04fbf2ffc = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\006\00\00\00\0F\00\00\00" }>, align 8
@alloc_e3d8f1c9520796f217d7cbdade334b34 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00A\00\00\00\13\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define i32 @bitwriter_add(ptr %bw, i32 %bits, i64 %val) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !6 {
start:
  %val.dbg.spill = alloca i64, align 8
  %bits.dbg.spill = alloca i32, align 4
  %bw.dbg.spill = alloca ptr, align 8
  store ptr %bw, ptr %bw.dbg.spill, align 8
    #dbg_declare(ptr %bw.dbg.spill, !30, !DIExpression(), !33)
  store i32 %bits, ptr %bits.dbg.spill, align 4
    #dbg_declare(ptr %bits.dbg.spill, !31, !DIExpression(), !34)
  store i64 %val, ptr %val.dbg.spill, align 8
    #dbg_declare(ptr %val.dbg.spill, !32, !DIExpression(), !35)
  %_6 = ptrtoint ptr %bw to i64, !dbg !36
  %_9 = and i64 %_6, 7, !dbg !36
  %_10 = icmp eq i64 %_9, 0, !dbg !36
  %0 = call i1 @llvm.expect.i1(i1 %_10, i1 true), !dbg !36
  br i1 %0, label %bb2, label %panic, !dbg !36

bb2:                                              ; preds = %start
  %1 = call i32 @_ZN17bitwriter_add_lib3src3lib13bitwriter_add17h78257638373fb672E(ptr align 8 %bw, i32 %bits, i64 %val), !dbg !37
  ret i32 %1, !dbg !38

panic:                                            ; preds = %start
  invoke void @_ZN4core9panicking36panic_misaligned_pointer_dereference17h587229c42ea18e2bE(i64 8, i64 %_6, ptr align 8 @alloc_e3d8f1c9520796f217d7cbdade334b34) #5
          to label %unreachable unwind label %terminate, !dbg !36

terminate:                                        ; preds = %panic
  %2 = landingpad { ptr, i32 }
          cleanup
  %3 = extractvalue { ptr, i32 } %2, 0
  %4 = extractvalue { ptr, i32 } %2, 1
  call void @_ZN4core9panicking19panic_cannot_unwind17h629e1da841ab4abfE() #6, !dbg !39
  unreachable, !dbg !39

unreachable:                                      ; preds = %panic
  unreachable
}

; Function Attrs: nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.expect.i1(i1, i1) #1

; Function Attrs: nonlazybind uwtable
define internal i32 @_ZN17bitwriter_add_lib3src3lib13bitwriter_add17h78257638373fb672E(ptr align 8 %bw, i32 %0, i64 %1) unnamed_addr #0 !dbg !40 {
start:
  %rhs.dbg.spill.i23 = alloca i64, align 8
  %self.dbg.spill.i24 = alloca i64, align 8
  %rhs.dbg.spill.i21 = alloca i64, align 8
  %self.dbg.spill.i22 = alloca i64, align 8
  %rhs.dbg.spill.i19 = alloca i64, align 8
  %self.dbg.spill.i20 = alloca i64, align 8
  %rhs.dbg.spill.i17 = alloca i64, align 8
  %self.dbg.spill.i18 = alloca i64, align 8
  %rhs.dbg.spill.i15 = alloca i64, align 8
  %self.dbg.spill.i16 = alloca i64, align 8
  %rhs.dbg.spill.i13 = alloca i64, align 8
  %self.dbg.spill.i14 = alloca i64, align 8
  %rhs.dbg.spill.i11 = alloca i32, align 4
  %self.dbg.spill.i12 = alloca i32, align 4
  %rhs.dbg.spill.i9 = alloca i32, align 4
  %self.dbg.spill.i10 = alloca i32, align 4
  %rhs.dbg.spill.i7 = alloca i32, align 4
  %self.dbg.spill.i8 = alloca i32, align 4
  %rhs.dbg.spill.i5 = alloca i32, align 4
  %self.dbg.spill.i6 = alloca i32, align 4
  %rhs.dbg.spill.i = alloca i32, align 4
  %self.dbg.spill.i = alloca i32, align 4
  %mask.dbg.spill = alloca i64, align 8
  %bw.dbg.spill = alloca ptr, align 8
  %_32 = alloca i32, align 4
  %_16 = alloca i8, align 1
  %i = alloca i32, align 4
  %b = alloca i32, align 4
  %val = alloca i64, align 8
  %bits = alloca i32, align 4
  store i32 %0, ptr %bits, align 4
  store i64 %1, ptr %val, align 8
  store ptr %bw, ptr %bw.dbg.spill, align 8
    #dbg_declare(ptr %bw.dbg.spill, !45, !DIExpression(), !54)
    #dbg_declare(ptr %bits, !46, !DIExpression(), !55)
    #dbg_declare(ptr %val, !47, !DIExpression(), !56)
    #dbg_declare(ptr %b, !50, !DIExpression(), !57)
    #dbg_declare(ptr %i, !52, !DIExpression(), !58)
  store i64 -2, ptr %mask.dbg.spill, align 8, !dbg !59
    #dbg_declare(ptr %mask.dbg.spill, !48, !DIExpression(), !60)
  store i32 0, ptr %b, align 4, !dbg !61
  store i64 8, ptr %self.dbg.spill.i18, align 8
    #dbg_declare(ptr %self.dbg.spill.i18, !62, !DIExpression(), !73)
  store i64 8, ptr %rhs.dbg.spill.i17, align 8
    #dbg_declare(ptr %rhs.dbg.spill.i17, !72, !DIExpression(), !75)
  %_10 = load i32, ptr %bits, align 4, !dbg !76, !noundef !28
  %_9 = zext i32 %_10 to i64, !dbg !76
  store i64 64, ptr %self.dbg.spill.i24, align 8
    #dbg_declare(ptr %self.dbg.spill.i24, !77, !DIExpression(), !81)
  store i64 %_9, ptr %rhs.dbg.spill.i23, align 8
    #dbg_declare(ptr %rhs.dbg.spill.i23, !80, !DIExpression(), !83)
  %2 = sub i64 64, %_9, !dbg !84
  %_11 = icmp ult i64 %2, 64, !dbg !85
  %3 = call i1 @llvm.expect.i1(i1 %_11, i1 true), !dbg !85
  br i1 %3, label %bb4, label %panic, !dbg !85

bb4:                                              ; preds = %start
  %4 = load i64, ptr %val, align 8, !dbg !85, !noundef !28
  %5 = and i64 %2, 63, !dbg !85
  %6 = shl i64 %4, %5, !dbg !85
  store i64 %6, ptr %val, align 8, !dbg !85
  %7 = getelementptr inbounds %"src::lib::TflacBitwriter", ptr %bw, i32 0, i32 4, !dbg !86
  %_13 = load i32, ptr %7, align 4, !dbg !86, !noundef !28
  %_14 = load i32, ptr %bits, align 4, !dbg !87, !noundef !28
  store i32 %_13, ptr %self.dbg.spill.i10, align 4
    #dbg_declare(ptr %self.dbg.spill.i10, !88, !DIExpression(), !95)
  store i32 %_14, ptr %rhs.dbg.spill.i9, align 4
    #dbg_declare(ptr %rhs.dbg.spill.i9, !94, !DIExpression(), !97)
  %8 = add i32 %_13, %_14, !dbg !98
  %9 = getelementptr inbounds %"src::lib::TflacBitwriter", ptr %bw, i32 0, i32 4, !dbg !99
  store i32 %8, ptr %9, align 4, !dbg !99
  store i32 0, ptr %i, align 4, !dbg !100
  br label %bb6, !dbg !101

panic:                                            ; preds = %start
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.0, i64 35, ptr align 8 @alloc_10062f18c1168c5bb90ca70352065aa1) #5, !dbg !85
  unreachable, !dbg !85

bb6:                                              ; preds = %bb25, %bb4
  %10 = getelementptr inbounds %"src::lib::TflacBitwriter", ptr %bw, i32 0, i32 1, !dbg !102
  %_20 = load i32, ptr %10, align 8, !dbg !102, !noundef !28
  %_21 = load i32, ptr %bits, align 4, !dbg !103, !noundef !28
  store i32 %_20, ptr %self.dbg.spill.i8, align 4
    #dbg_declare(ptr %self.dbg.spill.i8, !88, !DIExpression(), !104)
  store i32 %_21, ptr %rhs.dbg.spill.i7, align 4
    #dbg_declare(ptr %rhs.dbg.spill.i7, !94, !DIExpression(), !106)
  %11 = add i32 %_20, %_21, !dbg !107
  %_18 = zext i32 %11 to i64, !dbg !102
  store i64 8, ptr %self.dbg.spill.i16, align 8
    #dbg_declare(ptr %self.dbg.spill.i16, !62, !DIExpression(), !108)
  store i64 8, ptr %rhs.dbg.spill.i15, align 8
    #dbg_declare(ptr %rhs.dbg.spill.i15, !72, !DIExpression(), !110)
  %_17 = icmp uge i64 %_18, 64, !dbg !102
  br i1 %_17, label %bb8, label %bb7, !dbg !102

bb7:                                              ; preds = %bb6
  store i8 0, ptr %_16, align 1, !dbg !102
  br label %bb9, !dbg !102

bb8:                                              ; preds = %bb6
  %_25 = load i32, ptr %i, align 4, !dbg !111, !noundef !28
  %_24 = icmp slt i32 %_25, 100, !dbg !111
  %12 = zext i1 %_24 to i8, !dbg !102
  store i8 %12, ptr %_16, align 1, !dbg !102
  br label %bb9, !dbg !102

bb9:                                              ; preds = %bb8, %bb7
  %13 = load i8, ptr %_16, align 1, !dbg !102, !range !112, !noundef !28
  %14 = trunc i8 %13 to i1, !dbg !102
  br i1 %14, label %bb13, label %bb26, !dbg !102

bb26:                                             ; preds = %bb9
  %_50 = load i64, ptr %val, align 8, !dbg !113, !noundef !28
  %15 = getelementptr inbounds %"src::lib::TflacBitwriter", ptr %bw, i32 0, i32 1, !dbg !114
  %_51 = load i32, ptr %15, align 8, !dbg !114, !noundef !28
  %_52 = icmp ult i32 %_51, 64, !dbg !113
  %16 = call i1 @llvm.expect.i1(i1 %_52, i1 true), !dbg !113
  br i1 %16, label %bb27, label %panic4, !dbg !113

bb13:                                             ; preds = %bb9
  store i64 8, ptr %self.dbg.spill.i14, align 8
    #dbg_declare(ptr %self.dbg.spill.i14, !62, !DIExpression(), !115)
  store i64 8, ptr %rhs.dbg.spill.i13, align 8
    #dbg_declare(ptr %rhs.dbg.spill.i13, !72, !DIExpression(), !117)
  %17 = getelementptr inbounds %"src::lib::TflacBitwriter", ptr %bw, i32 0, i32 1, !dbg !118
  %_31 = load i32, ptr %17, align 8, !dbg !118, !noundef !28
  %_30 = zext i32 %_31 to i64, !dbg !118
  store i64 64, ptr %self.dbg.spill.i22, align 8
    #dbg_declare(ptr %self.dbg.spill.i22, !77, !DIExpression(), !119)
  store i64 %_30, ptr %rhs.dbg.spill.i21, align 8
    #dbg_declare(ptr %rhs.dbg.spill.i21, !80, !DIExpression(), !121)
  %18 = sub i64 64, %_30, !dbg !122
  store i64 %18, ptr %self.dbg.spill.i20, align 8
    #dbg_declare(ptr %self.dbg.spill.i20, !77, !DIExpression(), !123)
  store i64 1, ptr %rhs.dbg.spill.i19, align 8
    #dbg_declare(ptr %rhs.dbg.spill.i19, !80, !DIExpression(), !125)
  %19 = sub i64 %18, 1, !dbg !126
  %20 = trunc i64 %19 to i32, !dbg !127
  store i32 %20, ptr %b, align 4, !dbg !127
  %_34 = load i32, ptr %b, align 4, !dbg !128, !noundef !28
  %_35 = load i32, ptr %bits, align 4, !dbg !129, !noundef !28
  %_33 = icmp ugt i32 %_34, %_35, !dbg !128
  br i1 %_33, label %bb18, label %bb19, !dbg !128

bb19:                                             ; preds = %bb13
  %21 = load i32, ptr %b, align 4, !dbg !130, !noundef !28
  store i32 %21, ptr %_32, align 4, !dbg !130
  br label %bb20, !dbg !131

bb18:                                             ; preds = %bb13
  %22 = load i32, ptr %bits, align 4, !dbg !132, !noundef !28
  store i32 %22, ptr %_32, align 4, !dbg !132
  br label %bb20, !dbg !131

bb20:                                             ; preds = %bb18, %bb19
  %23 = load i32, ptr %_32, align 4, !dbg !133, !noundef !28
  store i32 %23, ptr %b, align 4, !dbg !133
  %_37 = load i64, ptr %val, align 8, !dbg !134, !noundef !28
  %24 = getelementptr inbounds %"src::lib::TflacBitwriter", ptr %bw, i32 0, i32 1, !dbg !135
  %_38 = load i32, ptr %24, align 8, !dbg !135, !noundef !28
  %_39 = icmp ult i32 %_38, 64, !dbg !134
  %25 = call i1 @llvm.expect.i1(i1 %_39, i1 true), !dbg !134
  br i1 %25, label %bb21, label %panic1, !dbg !134

bb21:                                             ; preds = %bb20
  %26 = zext i32 %_38 to i64, !dbg !134
  %27 = and i64 %26, 63, !dbg !134
  %_36 = lshr i64 %_37, %27, !dbg !134
  %28 = load i64, ptr %bw, align 8, !dbg !136, !noundef !28
  %29 = or i64 %28, %_36, !dbg !136
  store i64 %29, ptr %bw, align 8, !dbg !136
  %30 = getelementptr inbounds %"src::lib::TflacBitwriter", ptr %bw, i32 0, i32 1, !dbg !137
  %_41 = load i32, ptr %30, align 8, !dbg !137, !noundef !28
  %_42 = load i32, ptr %b, align 4, !dbg !138, !noundef !28
  store i32 %_41, ptr %self.dbg.spill.i6, align 4
    #dbg_declare(ptr %self.dbg.spill.i6, !88, !DIExpression(), !139)
  store i32 %_42, ptr %rhs.dbg.spill.i5, align 4
    #dbg_declare(ptr %rhs.dbg.spill.i5, !94, !DIExpression(), !141)
  %31 = add i32 %_41, %_42, !dbg !142
  %32 = getelementptr inbounds %"src::lib::TflacBitwriter", ptr %bw, i32 0, i32 1, !dbg !143
  store i32 %31, ptr %32, align 8, !dbg !143
  %33 = load i64, ptr %bw, align 8, !dbg !144, !noundef !28
  %34 = and i64 %33, -2, !dbg !144
  store i64 %34, ptr %bw, align 8, !dbg !144
  %_43 = load i32, ptr %b, align 4, !dbg !145, !noundef !28
  %_44 = icmp ult i32 %_43, 64, !dbg !146
  %35 = call i1 @llvm.expect.i1(i1 %_44, i1 true), !dbg !146
  br i1 %35, label %bb23, label %panic2, !dbg !146

panic1:                                           ; preds = %bb20
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.1, i64 36, ptr align 8 @alloc_c9bc1093e9b010d11a2b880db438167c) #5, !dbg !134
  unreachable, !dbg !134

bb23:                                             ; preds = %bb21
  %36 = load i64, ptr %val, align 8, !dbg !146, !noundef !28
  %37 = zext i32 %_43 to i64, !dbg !146
  %38 = and i64 %37, 63, !dbg !146
  %39 = shl i64 %36, %38, !dbg !146
  store i64 %39, ptr %val, align 8, !dbg !146
  %_46 = load i32, ptr %bits, align 4, !dbg !147, !noundef !28
  %_47 = load i32, ptr %b, align 4, !dbg !148, !noundef !28
  store i32 %_46, ptr %self.dbg.spill.i12, align 4
    #dbg_declare(ptr %self.dbg.spill.i12, !149, !DIExpression(), !153)
  store i32 %_47, ptr %rhs.dbg.spill.i11, align 4
    #dbg_declare(ptr %rhs.dbg.spill.i11, !152, !DIExpression(), !155)
  %40 = sub i32 %_46, %_47, !dbg !156
  store i32 %40, ptr %bits, align 4, !dbg !157
  %41 = load i32, ptr %i, align 4, !dbg !158, !noundef !28
  %42 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %41, i32 1), !dbg !158
  %_48.0 = extractvalue { i32, i1 } %42, 0, !dbg !158
  %_48.1 = extractvalue { i32, i1 } %42, 1, !dbg !158
  %43 = call i1 @llvm.expect.i1(i1 %_48.1, i1 false), !dbg !158
  br i1 %43, label %panic3, label %bb25, !dbg !158

panic2:                                           ; preds = %bb21
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.0, i64 35, ptr align 8 @alloc_39be42af0d12b528896e2d6fb718dbfa) #5, !dbg !146
  unreachable, !dbg !146

bb25:                                             ; preds = %bb23
  store i32 %_48.0, ptr %i, align 4, !dbg !158
  br label %bb6, !dbg !101

panic3:                                           ; preds = %bb23
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.2, i64 28, ptr align 8 @alloc_e448c9f90db7382f612861224b62fad1) #5, !dbg !158
  unreachable, !dbg !158

bb27:                                             ; preds = %bb26
  %44 = zext i32 %_51 to i64, !dbg !113
  %45 = and i64 %44, 63, !dbg !113
  %_49 = lshr i64 %_50, %45, !dbg !113
  %46 = load i64, ptr %bw, align 8, !dbg !159, !noundef !28
  %47 = or i64 %46, %_49, !dbg !159
  store i64 %47, ptr %bw, align 8, !dbg !159
  %48 = getelementptr inbounds %"src::lib::TflacBitwriter", ptr %bw, i32 0, i32 1, !dbg !160
  %_54 = load i32, ptr %48, align 8, !dbg !160, !noundef !28
  %_55 = load i32, ptr %bits, align 4, !dbg !161, !noundef !28
  store i32 %_54, ptr %self.dbg.spill.i, align 4
    #dbg_declare(ptr %self.dbg.spill.i, !88, !DIExpression(), !162)
  store i32 %_55, ptr %rhs.dbg.spill.i, align 4
    #dbg_declare(ptr %rhs.dbg.spill.i, !94, !DIExpression(), !164)
  %49 = add i32 %_54, %_55, !dbg !165
  %50 = getelementptr inbounds %"src::lib::TflacBitwriter", ptr %bw, i32 0, i32 1, !dbg !166
  store i32 %49, ptr %50, align 8, !dbg !166
  ret i32 0, !dbg !167

panic4:                                           ; preds = %bb26
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.1, i64 36, ptr align 8 @alloc_779bac1291f525afd4ccb3b04fbf2ffc) #5, !dbg !113
  unreachable, !dbg !113
}

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking36panic_misaligned_pointer_dereference17h587229c42ea18e2bE(i64, i64, ptr align 8) unnamed_addr #2

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_ZN4core9panicking19panic_cannot_unwind17h629e1da841ab4abfE() unnamed_addr #3

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1, i64, ptr align 8) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #4

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_1() unnamed_addr #0 !dbg !168 {
start:
  %ret.dbg.spill = alloca i32, align 4
  %_9 = alloca i8, align 1
  %_8 = alloca i8, align 1
  %s = alloca %"src::lib::TflacBitwriter", align 8
  %z = alloca i8, align 1
  %0 = alloca i8, align 1
    #dbg_declare(ptr %z, !173, !DIExpression(), !179)
    #dbg_declare(ptr %s, !175, !DIExpression(), !180)
  store i8 0, ptr %z, align 1, !dbg !181
  store i64 1, ptr %s, align 8, !dbg !182
  %1 = getelementptr inbounds %"src::lib::TflacBitwriter", ptr %s, i32 0, i32 1, !dbg !182
  store i32 2, ptr %1, align 8, !dbg !182
  %2 = getelementptr inbounds %"src::lib::TflacBitwriter", ptr %s, i32 0, i32 2, !dbg !182
  store i32 0, ptr %2, align 4, !dbg !182
  %3 = getelementptr inbounds %"src::lib::TflacBitwriter", ptr %s, i32 0, i32 3, !dbg !182
  store i32 0, ptr %3, align 8, !dbg !182
  %4 = getelementptr inbounds %"src::lib::TflacBitwriter", ptr %s, i32 0, i32 4, !dbg !182
  store i32 3, ptr %4, align 4, !dbg !182
  %5 = getelementptr inbounds %"src::lib::TflacBitwriter", ptr %s, i32 0, i32 5, !dbg !182
  store ptr %z, ptr %5, align 8, !dbg !182
  %ret = call i32 @bitwriter_add(ptr %s, i32 4, i64 5), !dbg !183
  store i32 %ret, ptr %ret.dbg.spill, align 4, !dbg !183
    #dbg_declare(ptr %ret.dbg.spill, !177, !DIExpression(), !184)
  %_10 = load i64, ptr %s, align 8, !dbg !185, !noundef !28
  %6 = icmp eq i64 %_10, 1441151880758558721, !dbg !185
  br i1 %6, label %bb9, label %bb8, !dbg !185

bb9:                                              ; preds = %start
  %7 = getelementptr inbounds %"src::lib::TflacBitwriter", ptr %s, i32 0, i32 1, !dbg !186
  %_12 = load i32, ptr %7, align 8, !dbg !186, !noundef !28
  %_11 = icmp eq i32 %_12, 6, !dbg !186
  %8 = zext i1 %_11 to i8, !dbg !185
  store i8 %8, ptr %_9, align 1, !dbg !185
  br label %bb10, !dbg !185

bb8:                                              ; preds = %start
  store i8 0, ptr %_9, align 1, !dbg !185
  br label %bb10, !dbg !185

bb10:                                             ; preds = %bb8, %bb9
  %9 = load i8, ptr %_9, align 1, !dbg !185, !range !112, !noundef !28
  %10 = trunc i8 %9 to i1, !dbg !185
  br i1 %10, label %bb6, label %bb5, !dbg !185

bb5:                                              ; preds = %bb10
  store i8 0, ptr %_8, align 1, !dbg !185
  br label %bb7, !dbg !185

bb6:                                              ; preds = %bb10
  %11 = getelementptr inbounds %"src::lib::TflacBitwriter", ptr %s, i32 0, i32 4, !dbg !187
  %_14 = load i32, ptr %11, align 4, !dbg !187, !noundef !28
  %_13 = icmp eq i32 %_14, 7, !dbg !187
  %12 = zext i1 %_13 to i8, !dbg !185
  store i8 %12, ptr %_8, align 1, !dbg !185
  br label %bb7, !dbg !185

bb7:                                              ; preds = %bb6, %bb5
  %13 = load i8, ptr %_8, align 1, !dbg !185, !range !112, !noundef !28
  %14 = trunc i8 %13 to i1, !dbg !185
  br i1 %14, label %bb3, label %bb2, !dbg !185

bb2:                                              ; preds = %bb7
  store i8 0, ptr %0, align 1, !dbg !185
  br label %bb4, !dbg !185

bb3:                                              ; preds = %bb7
  %_15 = icmp eq i32 %ret, 0, !dbg !188
  %15 = zext i1 %_15 to i8, !dbg !185
  store i8 %15, ptr %0, align 1, !dbg !185
  br label %bb4, !dbg !185

bb4:                                              ; preds = %bb3, %bb2
  %16 = load i8, ptr %0, align 1, !dbg !189, !range !112, !noundef !28
  %17 = trunc i8 %16 to i1, !dbg !189
  ret i1 %17, !dbg !189
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_2() unnamed_addr #0 !dbg !190 {
start:
  %ret.dbg.spill = alloca i32, align 4
  %_9 = alloca i8, align 1
  %_8 = alloca i8, align 1
  %s = alloca %"src::lib::TflacBitwriter", align 8
  %z = alloca i8, align 1
  %0 = alloca i8, align 1
    #dbg_declare(ptr %z, !192, !DIExpression(), !198)
    #dbg_declare(ptr %s, !194, !DIExpression(), !199)
  store i8 0, ptr %z, align 1, !dbg !200
  store i64 1, ptr %s, align 8, !dbg !201
  %1 = getelementptr inbounds %"src::lib::TflacBitwriter", ptr %s, i32 0, i32 1, !dbg !201
  store i32 100, ptr %1, align 8, !dbg !201
  %2 = getelementptr inbounds %"src::lib::TflacBitwriter", ptr %s, i32 0, i32 2, !dbg !201
  store i32 0, ptr %2, align 4, !dbg !201
  %3 = getelementptr inbounds %"src::lib::TflacBitwriter", ptr %s, i32 0, i32 3, !dbg !201
  store i32 0, ptr %3, align 8, !dbg !201
  %4 = getelementptr inbounds %"src::lib::TflacBitwriter", ptr %s, i32 0, i32 4, !dbg !201
  store i32 3, ptr %4, align 4, !dbg !201
  %5 = getelementptr inbounds %"src::lib::TflacBitwriter", ptr %s, i32 0, i32 5, !dbg !201
  store ptr %z, ptr %5, align 8, !dbg !201
  %ret = call i32 @bitwriter_add(ptr %s, i32 4, i64 5), !dbg !202
  store i32 %ret, ptr %ret.dbg.spill, align 4, !dbg !202
    #dbg_declare(ptr %ret.dbg.spill, !196, !DIExpression(), !203)
  %_10 = load i64, ptr %s, align 8, !dbg !204, !noundef !28
  %6 = icmp eq i64 %_10, 83886080, !dbg !204
  br i1 %6, label %bb9, label %bb8, !dbg !204

bb9:                                              ; preds = %start
  %7 = getelementptr inbounds %"src::lib::TflacBitwriter", ptr %s, i32 0, i32 1, !dbg !205
  %_12 = load i32, ptr %7, align 8, !dbg !205, !noundef !28
  %_11 = icmp eq i32 %_12, 104, !dbg !205
  %8 = zext i1 %_11 to i8, !dbg !204
  store i8 %8, ptr %_9, align 1, !dbg !204
  br label %bb10, !dbg !204

bb8:                                              ; preds = %start
  store i8 0, ptr %_9, align 1, !dbg !204
  br label %bb10, !dbg !204

bb10:                                             ; preds = %bb8, %bb9
  %9 = load i8, ptr %_9, align 1, !dbg !204, !range !112, !noundef !28
  %10 = trunc i8 %9 to i1, !dbg !204
  br i1 %10, label %bb6, label %bb5, !dbg !204

bb5:                                              ; preds = %bb10
  store i8 0, ptr %_8, align 1, !dbg !204
  br label %bb7, !dbg !204

bb6:                                              ; preds = %bb10
  %11 = getelementptr inbounds %"src::lib::TflacBitwriter", ptr %s, i32 0, i32 4, !dbg !206
  %_14 = load i32, ptr %11, align 4, !dbg !206, !noundef !28
  %_13 = icmp eq i32 %_14, 7, !dbg !206
  %12 = zext i1 %_13 to i8, !dbg !204
  store i8 %12, ptr %_8, align 1, !dbg !204
  br label %bb7, !dbg !204

bb7:                                              ; preds = %bb6, %bb5
  %13 = load i8, ptr %_8, align 1, !dbg !204, !range !112, !noundef !28
  %14 = trunc i8 %13 to i1, !dbg !204
  br i1 %14, label %bb3, label %bb2, !dbg !204

bb2:                                              ; preds = %bb7
  store i8 0, ptr %0, align 1, !dbg !204
  br label %bb4, !dbg !204

bb3:                                              ; preds = %bb7
  %_15 = icmp eq i32 %ret, 0, !dbg !207
  %15 = zext i1 %_15 to i8, !dbg !204
  store i8 %15, ptr %0, align 1, !dbg !204
  br label %bb4, !dbg !204

bb4:                                              ; preds = %bb3, %bb2
  %16 = load i8, ptr %0, align 1, !dbg !208, !range !112, !noundef !28
  %17 = trunc i8 %16 to i1, !dbg !208
  ret i1 %17, !dbg !208
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_3() unnamed_addr #0 !dbg !209 {
start:
  %ret.dbg.spill = alloca i32, align 4
  %_9 = alloca i8, align 1
  %_8 = alloca i8, align 1
  %s = alloca %"src::lib::TflacBitwriter", align 8
  %z = alloca i8, align 1
  %0 = alloca i8, align 1
    #dbg_declare(ptr %z, !211, !DIExpression(), !217)
    #dbg_declare(ptr %s, !213, !DIExpression(), !218)
  store i8 0, ptr %z, align 1, !dbg !219
  store i64 1, ptr %s, align 8, !dbg !220
  %1 = getelementptr inbounds %"src::lib::TflacBitwriter", ptr %s, i32 0, i32 1, !dbg !220
  store i32 2, ptr %1, align 8, !dbg !220
  %2 = getelementptr inbounds %"src::lib::TflacBitwriter", ptr %s, i32 0, i32 2, !dbg !220
  store i32 0, ptr %2, align 4, !dbg !220
  %3 = getelementptr inbounds %"src::lib::TflacBitwriter", ptr %s, i32 0, i32 3, !dbg !220
  store i32 0, ptr %3, align 8, !dbg !220
  %4 = getelementptr inbounds %"src::lib::TflacBitwriter", ptr %s, i32 0, i32 4, !dbg !220
  store i32 100, ptr %4, align 4, !dbg !220
  %5 = getelementptr inbounds %"src::lib::TflacBitwriter", ptr %s, i32 0, i32 5, !dbg !220
  store ptr %z, ptr %5, align 8, !dbg !220
  %ret = call i32 @bitwriter_add(ptr %s, i32 4, i64 5), !dbg !221
  store i32 %ret, ptr %ret.dbg.spill, align 4, !dbg !221
    #dbg_declare(ptr %ret.dbg.spill, !215, !DIExpression(), !222)
  %_10 = load i64, ptr %s, align 8, !dbg !223, !noundef !28
  %6 = icmp eq i64 %_10, 1441151880758558721, !dbg !223
  br i1 %6, label %bb9, label %bb8, !dbg !223

bb9:                                              ; preds = %start
  %7 = getelementptr inbounds %"src::lib::TflacBitwriter", ptr %s, i32 0, i32 1, !dbg !224
  %_12 = load i32, ptr %7, align 8, !dbg !224, !noundef !28
  %_11 = icmp eq i32 %_12, 6, !dbg !224
  %8 = zext i1 %_11 to i8, !dbg !223
  store i8 %8, ptr %_9, align 1, !dbg !223
  br label %bb10, !dbg !223

bb8:                                              ; preds = %start
  store i8 0, ptr %_9, align 1, !dbg !223
  br label %bb10, !dbg !223

bb10:                                             ; preds = %bb8, %bb9
  %9 = load i8, ptr %_9, align 1, !dbg !223, !range !112, !noundef !28
  %10 = trunc i8 %9 to i1, !dbg !223
  br i1 %10, label %bb6, label %bb5, !dbg !223

bb5:                                              ; preds = %bb10
  store i8 0, ptr %_8, align 1, !dbg !223
  br label %bb7, !dbg !223

bb6:                                              ; preds = %bb10
  %11 = getelementptr inbounds %"src::lib::TflacBitwriter", ptr %s, i32 0, i32 4, !dbg !225
  %_14 = load i32, ptr %11, align 4, !dbg !225, !noundef !28
  %_13 = icmp eq i32 %_14, 104, !dbg !225
  %12 = zext i1 %_13 to i8, !dbg !223
  store i8 %12, ptr %_8, align 1, !dbg !223
  br label %bb7, !dbg !223

bb7:                                              ; preds = %bb6, %bb5
  %13 = load i8, ptr %_8, align 1, !dbg !223, !range !112, !noundef !28
  %14 = trunc i8 %13 to i1, !dbg !223
  br i1 %14, label %bb3, label %bb2, !dbg !223

bb2:                                              ; preds = %bb7
  store i8 0, ptr %0, align 1, !dbg !223
  br label %bb4, !dbg !223

bb3:                                              ; preds = %bb7
  %_15 = icmp eq i32 %ret, 0, !dbg !226
  %15 = zext i1 %_15 to i8, !dbg !223
  store i8 %15, ptr %0, align 1, !dbg !223
  br label %bb4, !dbg !223

bb4:                                              ; preds = %bb3, %bb2
  %16 = load i8, ptr %0, align 1, !dbg !227, !range !112, !noundef !28
  %17 = trunc i8 %16 to i1, !dbg !227
  ret i1 %17, !dbg !227
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_4() unnamed_addr #0 !dbg !228 {
start:
  %ret.dbg.spill = alloca i32, align 4
  %_9 = alloca i8, align 1
  %_8 = alloca i8, align 1
  %s = alloca %"src::lib::TflacBitwriter", align 8
  %z = alloca i8, align 1
  %0 = alloca i8, align 1
    #dbg_declare(ptr %z, !230, !DIExpression(), !236)
    #dbg_declare(ptr %s, !232, !DIExpression(), !237)
  store i8 0, ptr %z, align 1, !dbg !238
  store i64 1, ptr %s, align 8, !dbg !239
  %1 = getelementptr inbounds %"src::lib::TflacBitwriter", ptr %s, i32 0, i32 1, !dbg !239
  store i32 2, ptr %1, align 8, !dbg !239
  %2 = getelementptr inbounds %"src::lib::TflacBitwriter", ptr %s, i32 0, i32 2, !dbg !239
  store i32 0, ptr %2, align 4, !dbg !239
  %3 = getelementptr inbounds %"src::lib::TflacBitwriter", ptr %s, i32 0, i32 3, !dbg !239
  store i32 0, ptr %3, align 8, !dbg !239
  %4 = getelementptr inbounds %"src::lib::TflacBitwriter", ptr %s, i32 0, i32 4, !dbg !239
  store i32 3, ptr %4, align 4, !dbg !239
  %5 = getelementptr inbounds %"src::lib::TflacBitwriter", ptr %s, i32 0, i32 5, !dbg !239
  store ptr %z, ptr %5, align 8, !dbg !239
  %ret = call i32 @bitwriter_add(ptr %s, i32 100, i64 5), !dbg !240
  store i32 %ret, ptr %ret.dbg.spill, align 4, !dbg !240
    #dbg_declare(ptr %ret.dbg.spill, !234, !DIExpression(), !241)
  %_10 = load i64, ptr %s, align 8, !dbg !242, !noundef !28
  %6 = icmp eq i64 %_10, 335544320, !dbg !242
  br i1 %6, label %bb9, label %bb8, !dbg !242

bb9:                                              ; preds = %start
  %7 = getelementptr inbounds %"src::lib::TflacBitwriter", ptr %s, i32 0, i32 1, !dbg !243
  %_12 = load i32, ptr %7, align 8, !dbg !243, !noundef !28
  %_11 = icmp eq i32 %_12, 102, !dbg !243
  %8 = zext i1 %_11 to i8, !dbg !242
  store i8 %8, ptr %_9, align 1, !dbg !242
  br label %bb10, !dbg !242

bb8:                                              ; preds = %start
  store i8 0, ptr %_9, align 1, !dbg !242
  br label %bb10, !dbg !242

bb10:                                             ; preds = %bb8, %bb9
  %9 = load i8, ptr %_9, align 1, !dbg !242, !range !112, !noundef !28
  %10 = trunc i8 %9 to i1, !dbg !242
  br i1 %10, label %bb6, label %bb5, !dbg !242

bb5:                                              ; preds = %bb10
  store i8 0, ptr %_8, align 1, !dbg !242
  br label %bb7, !dbg !242

bb6:                                              ; preds = %bb10
  %11 = getelementptr inbounds %"src::lib::TflacBitwriter", ptr %s, i32 0, i32 4, !dbg !244
  %_14 = load i32, ptr %11, align 4, !dbg !244, !noundef !28
  %_13 = icmp eq i32 %_14, 103, !dbg !244
  %12 = zext i1 %_13 to i8, !dbg !242
  store i8 %12, ptr %_8, align 1, !dbg !242
  br label %bb7, !dbg !242

bb7:                                              ; preds = %bb6, %bb5
  %13 = load i8, ptr %_8, align 1, !dbg !242, !range !112, !noundef !28
  %14 = trunc i8 %13 to i1, !dbg !242
  br i1 %14, label %bb3, label %bb2, !dbg !242

bb2:                                              ; preds = %bb7
  store i8 0, ptr %0, align 1, !dbg !242
  br label %bb4, !dbg !242

bb3:                                              ; preds = %bb7
  %_15 = icmp eq i32 %ret, 0, !dbg !245
  %15 = zext i1 %_15 to i8, !dbg !242
  store i8 %15, ptr %0, align 1, !dbg !242
  br label %bb4, !dbg !242

bb4:                                              ; preds = %bb3, %bb2
  %16 = load i8, ptr %0, align 1, !dbg !246, !range !112, !noundef !28
  %17 = trunc i8 %16 to i1, !dbg !246
  ret i1 %17, !dbg !246
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_5() unnamed_addr #0 !dbg !247 {
start:
  %ret.dbg.spill = alloca i32, align 4
  %_9 = alloca i8, align 1
  %_8 = alloca i8, align 1
  %s = alloca %"src::lib::TflacBitwriter", align 8
  %z = alloca i8, align 1
  %0 = alloca i8, align 1
    #dbg_declare(ptr %z, !249, !DIExpression(), !255)
    #dbg_declare(ptr %s, !251, !DIExpression(), !256)
  store i8 0, ptr %z, align 1, !dbg !257
  store i64 1, ptr %s, align 8, !dbg !258
  %1 = getelementptr inbounds %"src::lib::TflacBitwriter", ptr %s, i32 0, i32 1, !dbg !258
  store i32 2, ptr %1, align 8, !dbg !258
  %2 = getelementptr inbounds %"src::lib::TflacBitwriter", ptr %s, i32 0, i32 2, !dbg !258
  store i32 0, ptr %2, align 4, !dbg !258
  %3 = getelementptr inbounds %"src::lib::TflacBitwriter", ptr %s, i32 0, i32 3, !dbg !258
  store i32 0, ptr %3, align 8, !dbg !258
  %4 = getelementptr inbounds %"src::lib::TflacBitwriter", ptr %s, i32 0, i32 4, !dbg !258
  store i32 3, ptr %4, align 4, !dbg !258
  %5 = getelementptr inbounds %"src::lib::TflacBitwriter", ptr %s, i32 0, i32 5, !dbg !258
  store ptr %z, ptr %5, align 8, !dbg !258
  %ret = call i32 @bitwriter_add(ptr %s, i32 4, i64 100), !dbg !259
  store i32 %ret, ptr %ret.dbg.spill, align 4, !dbg !259
    #dbg_declare(ptr %ret.dbg.spill, !253, !DIExpression(), !260)
  %_10 = load i64, ptr %s, align 8, !dbg !261, !noundef !28
  %6 = icmp eq i64 %_10, 1152921504606846977, !dbg !261
  br i1 %6, label %bb9, label %bb8, !dbg !261

bb9:                                              ; preds = %start
  %7 = getelementptr inbounds %"src::lib::TflacBitwriter", ptr %s, i32 0, i32 1, !dbg !262
  %_12 = load i32, ptr %7, align 8, !dbg !262, !noundef !28
  %_11 = icmp eq i32 %_12, 6, !dbg !262
  %8 = zext i1 %_11 to i8, !dbg !261
  store i8 %8, ptr %_9, align 1, !dbg !261
  br label %bb10, !dbg !261

bb8:                                              ; preds = %start
  store i8 0, ptr %_9, align 1, !dbg !261
  br label %bb10, !dbg !261

bb10:                                             ; preds = %bb8, %bb9
  %9 = load i8, ptr %_9, align 1, !dbg !261, !range !112, !noundef !28
  %10 = trunc i8 %9 to i1, !dbg !261
  br i1 %10, label %bb6, label %bb5, !dbg !261

bb5:                                              ; preds = %bb10
  store i8 0, ptr %_8, align 1, !dbg !261
  br label %bb7, !dbg !261

bb6:                                              ; preds = %bb10
  %11 = getelementptr inbounds %"src::lib::TflacBitwriter", ptr %s, i32 0, i32 4, !dbg !263
  %_14 = load i32, ptr %11, align 4, !dbg !263, !noundef !28
  %_13 = icmp eq i32 %_14, 7, !dbg !263
  %12 = zext i1 %_13 to i8, !dbg !261
  store i8 %12, ptr %_8, align 1, !dbg !261
  br label %bb7, !dbg !261

bb7:                                              ; preds = %bb6, %bb5
  %13 = load i8, ptr %_8, align 1, !dbg !261, !range !112, !noundef !28
  %14 = trunc i8 %13 to i1, !dbg !261
  br i1 %14, label %bb3, label %bb2, !dbg !261

bb2:                                              ; preds = %bb7
  store i8 0, ptr %0, align 1, !dbg !261
  br label %bb4, !dbg !261

bb3:                                              ; preds = %bb7
  %_15 = icmp eq i32 %ret, 0, !dbg !264
  %15 = zext i1 %_15 to i8, !dbg !261
  store i8 %15, ptr %0, align 1, !dbg !261
  br label %bb4, !dbg !261

bb4:                                              ; preds = %bb3, %bb2
  %16 = load i8, ptr %0, align 1, !dbg !265, !range !112, !noundef !28
  %17 = trunc i8 %16 to i1, !dbg !265
  ret i1 %17, !dbg !265
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
!1 = !DIFile(filename: "lib.rs/@/3kl83qq4gbxc51u", directory: "/crisp-rust-outputs/B01_organic/bitwriter_add_lib/translated_rust")
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 2, !"RtLibUseGOT", i32 1}
!4 = !{i32 2, !"Dwarf Version", i32 4}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = distinct !DISubprogram(name: "bitwriter_add_ffi", linkageName: "bitwriter_add", scope: !8, file: !7, line: 60, type: !11, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !28, retainedNodes: !29)
!7 = !DIFile(filename: "src/lib.rs", directory: "/crisp-rust-outputs/B01_organic/bitwriter_add_lib/translated_rust", checksumkind: CSK_MD5, checksum: "3976c8cd08f98336bbd087d5b409bcda")
!8 = !DINamespace(name: "lib", scope: !9)
!9 = !DINamespace(name: "src", scope: !10)
!10 = !DINamespace(name: "bitwriter_add_lib", scope: null)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !14, !21, !19}
!13 = !DIBasicType(name: "i32", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut bitwriter_add_lib::src::lib::TflacBitwriter", baseType: !15, size: 64, align: 64, dwarfAddressSpace: 0)
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "TflacBitwriter", scope: !8, file: !16, size: 256, align: 64, elements: !17, templateParams: !28, identifier: "b1d8dea1df1c9ecb8e247d24d508c3ff")
!16 = !DIFile(filename: "<unknown>", directory: "")
!17 = !{!18, !20, !22, !23, !24, !25}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !15, file: !16, baseType: !19, size: 64, align: 64)
!19 = !DIBasicType(name: "u64", size: 64, encoding: DW_ATE_unsigned)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !15, file: !16, baseType: !21, size: 32, align: 32, offset: 64)
!21 = !DIBasicType(name: "u32", size: 32, encoding: DW_ATE_unsigned)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !15, file: !16, baseType: !21, size: 32, align: 32, offset: 96)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !15, file: !16, baseType: !21, size: 32, align: 32, offset: 128)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "tot", scope: !15, file: !16, baseType: !21, size: 32, align: 32, offset: 160)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !15, file: !16, baseType: !26, size: 64, align: 64, offset: 192)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut u8", baseType: !27, size: 64, align: 64, dwarfAddressSpace: 0)
!27 = !DIBasicType(name: "u8", size: 8, encoding: DW_ATE_unsigned)
!28 = !{}
!29 = !{!30, !31, !32}
!30 = !DILocalVariable(name: "bw", arg: 1, scope: !6, file: !7, line: 61, type: !14)
!31 = !DILocalVariable(name: "bits", arg: 2, scope: !6, file: !7, line: 62, type: !21)
!32 = !DILocalVariable(name: "val", arg: 3, scope: !6, file: !7, line: 63, type: !19)
!33 = !DILocation(line: 61, column: 5, scope: !6)
!34 = !DILocation(line: 62, column: 5, scope: !6)
!35 = !DILocation(line: 63, column: 5, scope: !6)
!36 = !DILocation(line: 65, column: 19, scope: !6)
!37 = !DILocation(line: 65, column: 5, scope: !6)
!38 = !DILocation(line: 66, column: 2, scope: !6)
!39 = !DILocation(line: 60, column: 1, scope: !6)
!40 = distinct !DISubprogram(name: "bitwriter_add", linkageName: "_ZN17bitwriter_add_lib3src3lib13bitwriter_add17h78257638373fb672E", scope: !8, file: !7, line: 21, type: !41, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !28, retainedNodes: !44)
!41 = !DISubroutineType(types: !42)
!42 = !{!13, !43, !21, !19}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut bitwriter_add_lib::src::lib::TflacBitwriter", baseType: !15, size: 64, align: 64, dwarfAddressSpace: 0)
!44 = !{!45, !46, !47, !48, !50, !52}
!45 = !DILocalVariable(name: "bw", arg: 1, scope: !40, file: !7, line: 22, type: !43)
!46 = !DILocalVariable(name: "bits", arg: 2, scope: !40, file: !7, line: 23, type: !21)
!47 = !DILocalVariable(name: "val", arg: 3, scope: !40, file: !7, line: 24, type: !19)
!48 = !DILocalVariable(name: "mask", scope: !49, file: !7, line: 26, type: !19, align: 8)
!49 = distinct !DILexicalBlock(scope: !40, file: !7, line: 26, column: 5)
!50 = !DILocalVariable(name: "b", scope: !51, file: !7, line: 27, type: !21, align: 4)
!51 = distinct !DILexicalBlock(scope: !49, file: !7, line: 27, column: 5)
!52 = !DILocalVariable(name: "i", scope: !53, file: !7, line: 35, type: !13, align: 4)
!53 = distinct !DILexicalBlock(scope: !51, file: !7, line: 35, column: 5)
!54 = !DILocation(line: 22, column: 5, scope: !40)
!55 = !DILocation(line: 23, column: 5, scope: !40)
!56 = !DILocation(line: 24, column: 5, scope: !40)
!57 = !DILocation(line: 27, column: 9, scope: !51)
!58 = !DILocation(line: 35, column: 9, scope: !53)
!59 = !DILocation(line: 26, column: 27, scope: !40)
!60 = !DILocation(line: 26, column: 9, scope: !49)
!61 = !DILocation(line: 27, column: 27, scope: !49)
!62 = !DILocalVariable(name: "self", arg: 1, scope: !63, file: !64, line: 1252, type: !70)
!63 = distinct !DISubprogram(name: "wrapping_mul", linkageName: "_ZN4core3num23_$LT$impl$u20$usize$GT$12wrapping_mul17h0a1e3e6e5b085a07E", scope: !65, file: !64, line: 1252, type: !68, scopeLine: 1252, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !28, retainedNodes: !71)
!64 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/num/uint_macros.rs", directory: "", checksumkind: CSK_MD5, checksum: "b2a733f80e3cd43066f918bdafc87bd0")
!65 = !DINamespace(name: "{impl#11}", scope: !66)
!66 = !DINamespace(name: "num", scope: !67)
!67 = !DINamespace(name: "core", scope: null)
!68 = !DISubroutineType(types: !69)
!69 = !{!70, !70, !70}
!70 = !DIBasicType(name: "usize", size: 64, encoding: DW_ATE_unsigned)
!71 = !{!62, !72}
!72 = !DILocalVariable(name: "rhs", arg: 2, scope: !63, file: !64, line: 1252, type: !70)
!73 = !DILocation(line: 1252, column: 35, scope: !63, inlinedAt: !74)
!74 = distinct !DILocation(line: 29, column: 13, scope: !51)
!75 = !DILocation(line: 1252, column: 41, scope: !63, inlinedAt: !74)
!76 = !DILocation(line: 31, column: 23, scope: !51)
!77 = !DILocalVariable(name: "self", arg: 1, scope: !78, file: !64, line: 1229, type: !70)
!78 = distinct !DISubprogram(name: "wrapping_sub", linkageName: "_ZN4core3num23_$LT$impl$u20$usize$GT$12wrapping_sub17h4c16fe33215ece0dE", scope: !65, file: !64, line: 1229, type: !68, scopeLine: 1229, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !28, retainedNodes: !79)
!79 = !{!77, !80}
!80 = !DILocalVariable(name: "rhs", arg: 2, scope: !78, file: !64, line: 1229, type: !70)
!81 = !DILocation(line: 1229, column: 35, scope: !78, inlinedAt: !82)
!82 = distinct !DILocation(line: 29, column: 13, scope: !51)
!83 = !DILocation(line: 1229, column: 41, scope: !78, inlinedAt: !82)
!84 = !DILocation(line: 1230, column: 13, scope: !78, inlinedAt: !82)
!85 = !DILocation(line: 29, column: 5, scope: !51)
!86 = !DILocation(line: 33, column: 14, scope: !51)
!87 = !DILocation(line: 33, column: 34, scope: !51)
!88 = !DILocalVariable(name: "self", arg: 1, scope: !89, file: !64, line: 1188, type: !21)
!89 = distinct !DISubprogram(name: "wrapping_add", linkageName: "_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_add17ha47a709bc54d730dE", scope: !90, file: !64, line: 1188, type: !91, scopeLine: 1188, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !28, retainedNodes: !93)
!90 = !DINamespace(name: "{impl#8}", scope: !66)
!91 = !DISubroutineType(types: !92)
!92 = !{!21, !21, !21}
!93 = !{!88, !94}
!94 = !DILocalVariable(name: "rhs", arg: 2, scope: !89, file: !64, line: 1188, type: !21)
!95 = !DILocation(line: 1188, column: 35, scope: !89, inlinedAt: !96)
!96 = distinct !DILocation(line: 33, column: 14, scope: !51)
!97 = !DILocation(line: 1188, column: 41, scope: !89, inlinedAt: !96)
!98 = !DILocation(line: 1189, column: 13, scope: !89, inlinedAt: !96)
!99 = !DILocation(line: 33, column: 5, scope: !51)
!100 = !DILocation(line: 35, column: 37, scope: !51)
!101 = !DILocation(line: 36, column: 5, scope: !53)
!102 = !DILocation(line: 36, column: 11, scope: !53)
!103 = !DILocation(line: 36, column: 32, scope: !53)
!104 = !DILocation(line: 1188, column: 35, scope: !89, inlinedAt: !105)
!105 = distinct !DILocation(line: 36, column: 11, scope: !53)
!106 = !DILocation(line: 1188, column: 41, scope: !89, inlinedAt: !105)
!107 = !DILocation(line: 1189, column: 13, scope: !89, inlinedAt: !105)
!108 = !DILocation(line: 1252, column: 35, scope: !63, inlinedAt: !109)
!109 = distinct !DILocation(line: 37, column: 12, scope: !53)
!110 = !DILocation(line: 1252, column: 41, scope: !63, inlinedAt: !109)
!111 = !DILocation(line: 38, column: 12, scope: !53)
!112 = !{i8 0, i8 2}
!113 = !DILocation(line: 54, column: 15, scope: !53)
!114 = !DILocation(line: 54, column: 22, scope: !53)
!115 = !DILocation(line: 1252, column: 35, scope: !63, inlinedAt: !116)
!116 = distinct !DILocation(line: 40, column: 13, scope: !53)
!117 = !DILocation(line: 1252, column: 41, scope: !63, inlinedAt: !116)
!118 = !DILocation(line: 42, column: 27, scope: !53)
!119 = !DILocation(line: 1229, column: 35, scope: !78, inlinedAt: !120)
!120 = distinct !DILocation(line: 40, column: 13, scope: !53)
!121 = !DILocation(line: 1229, column: 41, scope: !78, inlinedAt: !120)
!122 = !DILocation(line: 1230, column: 13, scope: !78, inlinedAt: !120)
!123 = !DILocation(line: 1229, column: 35, scope: !78, inlinedAt: !124)
!124 = distinct !DILocation(line: 40, column: 13, scope: !53)
!125 = !DILocation(line: 1229, column: 41, scope: !78, inlinedAt: !124)
!126 = !DILocation(line: 1230, column: 13, scope: !78, inlinedAt: !124)
!127 = !DILocation(line: 40, column: 9, scope: !53)
!128 = !DILocation(line: 44, column: 16, scope: !53)
!129 = !DILocation(line: 44, column: 20, scope: !53)
!130 = !DILocation(line: 44, column: 41, scope: !53)
!131 = !DILocation(line: 44, column: 13, scope: !53)
!132 = !DILocation(line: 44, column: 27, scope: !53)
!133 = !DILocation(line: 44, column: 9, scope: !53)
!134 = !DILocation(line: 46, column: 19, scope: !53)
!135 = !DILocation(line: 46, column: 26, scope: !53)
!136 = !DILocation(line: 46, column: 9, scope: !53)
!137 = !DILocation(line: 47, column: 19, scope: !53)
!138 = !DILocation(line: 47, column: 40, scope: !53)
!139 = !DILocation(line: 1188, column: 35, scope: !89, inlinedAt: !140)
!140 = distinct !DILocation(line: 47, column: 19, scope: !53)
!141 = !DILocation(line: 1188, column: 41, scope: !89, inlinedAt: !140)
!142 = !DILocation(line: 1189, column: 13, scope: !89, inlinedAt: !140)
!143 = !DILocation(line: 47, column: 9, scope: !53)
!144 = !DILocation(line: 48, column: 9, scope: !53)
!145 = !DILocation(line: 49, column: 17, scope: !53)
!146 = !DILocation(line: 49, column: 9, scope: !53)
!147 = !DILocation(line: 50, column: 16, scope: !53)
!148 = !DILocation(line: 50, column: 34, scope: !53)
!149 = !DILocalVariable(name: "self", arg: 1, scope: !150, file: !64, line: 1229, type: !21)
!150 = distinct !DISubprogram(name: "wrapping_sub", linkageName: "_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_sub17hb7724822f5ad2c8fE", scope: !90, file: !64, line: 1229, type: !91, scopeLine: 1229, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !28, retainedNodes: !151)
!151 = !{!149, !152}
!152 = !DILocalVariable(name: "rhs", arg: 2, scope: !150, file: !64, line: 1229, type: !21)
!153 = !DILocation(line: 1229, column: 35, scope: !150, inlinedAt: !154)
!154 = distinct !DILocation(line: 50, column: 16, scope: !53)
!155 = !DILocation(line: 1229, column: 41, scope: !150, inlinedAt: !154)
!156 = !DILocation(line: 1230, column: 13, scope: !150, inlinedAt: !154)
!157 = !DILocation(line: 50, column: 9, scope: !53)
!158 = !DILocation(line: 51, column: 9, scope: !53)
!159 = !DILocation(line: 54, column: 5, scope: !53)
!160 = !DILocation(line: 55, column: 15, scope: !53)
!161 = !DILocation(line: 55, column: 36, scope: !53)
!162 = !DILocation(line: 1188, column: 35, scope: !89, inlinedAt: !163)
!163 = distinct !DILocation(line: 55, column: 15, scope: !53)
!164 = !DILocation(line: 1188, column: 41, scope: !89, inlinedAt: !163)
!165 = !DILocation(line: 1189, column: 13, scope: !89, inlinedAt: !163)
!166 = !DILocation(line: 55, column: 5, scope: !53)
!167 = !DILocation(line: 57, column: 2, scope: !40)
!168 = distinct !DISubprogram(name: "run_test_1", scope: !8, file: !7, line: 69, type: !169, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !28, retainedNodes: !172)
!169 = !DISubroutineType(types: !170)
!170 = !{!171}
!171 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!172 = !{!173, !175, !177}
!173 = !DILocalVariable(name: "z", scope: !174, file: !7, line: 70, type: !27, align: 1)
!174 = distinct !DILexicalBlock(scope: !168, file: !7, line: 70, column: 5)
!175 = !DILocalVariable(name: "s", scope: !176, file: !7, line: 71, type: !15, align: 8)
!176 = distinct !DILexicalBlock(scope: !174, file: !7, line: 71, column: 5)
!177 = !DILocalVariable(name: "ret", scope: !178, file: !7, line: 79, type: !13, align: 4)
!178 = distinct !DILexicalBlock(scope: !176, file: !7, line: 79, column: 5)
!179 = !DILocation(line: 70, column: 9, scope: !174)
!180 = !DILocation(line: 71, column: 9, scope: !176)
!181 = !DILocation(line: 70, column: 26, scope: !168)
!182 = !DILocation(line: 71, column: 17, scope: !174)
!183 = !DILocation(line: 79, column: 15, scope: !176)
!184 = !DILocation(line: 79, column: 9, scope: !178)
!185 = !DILocation(line: 80, column: 5, scope: !178)
!186 = !DILocation(line: 81, column: 12, scope: !178)
!187 = !DILocation(line: 82, column: 12, scope: !178)
!188 = !DILocation(line: 83, column: 12, scope: !178)
!189 = !DILocation(line: 84, column: 2, scope: !168)
!190 = distinct !DISubprogram(name: "run_test_2", scope: !8, file: !7, line: 87, type: !169, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !28, retainedNodes: !191)
!191 = !{!192, !194, !196}
!192 = !DILocalVariable(name: "z", scope: !193, file: !7, line: 88, type: !27, align: 1)
!193 = distinct !DILexicalBlock(scope: !190, file: !7, line: 88, column: 5)
!194 = !DILocalVariable(name: "s", scope: !195, file: !7, line: 89, type: !15, align: 8)
!195 = distinct !DILexicalBlock(scope: !193, file: !7, line: 89, column: 5)
!196 = !DILocalVariable(name: "ret", scope: !197, file: !7, line: 97, type: !13, align: 4)
!197 = distinct !DILexicalBlock(scope: !195, file: !7, line: 97, column: 5)
!198 = !DILocation(line: 88, column: 9, scope: !193)
!199 = !DILocation(line: 89, column: 9, scope: !195)
!200 = !DILocation(line: 88, column: 26, scope: !190)
!201 = !DILocation(line: 89, column: 17, scope: !193)
!202 = !DILocation(line: 97, column: 15, scope: !195)
!203 = !DILocation(line: 97, column: 9, scope: !197)
!204 = !DILocation(line: 98, column: 5, scope: !197)
!205 = !DILocation(line: 99, column: 12, scope: !197)
!206 = !DILocation(line: 100, column: 12, scope: !197)
!207 = !DILocation(line: 101, column: 12, scope: !197)
!208 = !DILocation(line: 102, column: 2, scope: !190)
!209 = distinct !DISubprogram(name: "run_test_3", scope: !8, file: !7, line: 105, type: !169, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !28, retainedNodes: !210)
!210 = !{!211, !213, !215}
!211 = !DILocalVariable(name: "z", scope: !212, file: !7, line: 106, type: !27, align: 1)
!212 = distinct !DILexicalBlock(scope: !209, file: !7, line: 106, column: 5)
!213 = !DILocalVariable(name: "s", scope: !214, file: !7, line: 107, type: !15, align: 8)
!214 = distinct !DILexicalBlock(scope: !212, file: !7, line: 107, column: 5)
!215 = !DILocalVariable(name: "ret", scope: !216, file: !7, line: 115, type: !13, align: 4)
!216 = distinct !DILexicalBlock(scope: !214, file: !7, line: 115, column: 5)
!217 = !DILocation(line: 106, column: 9, scope: !212)
!218 = !DILocation(line: 107, column: 9, scope: !214)
!219 = !DILocation(line: 106, column: 26, scope: !209)
!220 = !DILocation(line: 107, column: 17, scope: !212)
!221 = !DILocation(line: 115, column: 15, scope: !214)
!222 = !DILocation(line: 115, column: 9, scope: !216)
!223 = !DILocation(line: 116, column: 5, scope: !216)
!224 = !DILocation(line: 117, column: 12, scope: !216)
!225 = !DILocation(line: 118, column: 12, scope: !216)
!226 = !DILocation(line: 119, column: 12, scope: !216)
!227 = !DILocation(line: 120, column: 2, scope: !209)
!228 = distinct !DISubprogram(name: "run_test_4", scope: !8, file: !7, line: 123, type: !169, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !28, retainedNodes: !229)
!229 = !{!230, !232, !234}
!230 = !DILocalVariable(name: "z", scope: !231, file: !7, line: 124, type: !27, align: 1)
!231 = distinct !DILexicalBlock(scope: !228, file: !7, line: 124, column: 5)
!232 = !DILocalVariable(name: "s", scope: !233, file: !7, line: 125, type: !15, align: 8)
!233 = distinct !DILexicalBlock(scope: !231, file: !7, line: 125, column: 5)
!234 = !DILocalVariable(name: "ret", scope: !235, file: !7, line: 133, type: !13, align: 4)
!235 = distinct !DILexicalBlock(scope: !233, file: !7, line: 133, column: 5)
!236 = !DILocation(line: 124, column: 9, scope: !231)
!237 = !DILocation(line: 125, column: 9, scope: !233)
!238 = !DILocation(line: 124, column: 26, scope: !228)
!239 = !DILocation(line: 125, column: 17, scope: !231)
!240 = !DILocation(line: 133, column: 15, scope: !233)
!241 = !DILocation(line: 133, column: 9, scope: !235)
!242 = !DILocation(line: 134, column: 5, scope: !235)
!243 = !DILocation(line: 135, column: 12, scope: !235)
!244 = !DILocation(line: 136, column: 12, scope: !235)
!245 = !DILocation(line: 137, column: 12, scope: !235)
!246 = !DILocation(line: 138, column: 2, scope: !228)
!247 = distinct !DISubprogram(name: "run_test_5", scope: !8, file: !7, line: 141, type: !169, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !28, retainedNodes: !248)
!248 = !{!249, !251, !253}
!249 = !DILocalVariable(name: "z", scope: !250, file: !7, line: 142, type: !27, align: 1)
!250 = distinct !DILexicalBlock(scope: !247, file: !7, line: 142, column: 5)
!251 = !DILocalVariable(name: "s", scope: !252, file: !7, line: 143, type: !15, align: 8)
!252 = distinct !DILexicalBlock(scope: !250, file: !7, line: 143, column: 5)
!253 = !DILocalVariable(name: "ret", scope: !254, file: !7, line: 151, type: !13, align: 4)
!254 = distinct !DILexicalBlock(scope: !252, file: !7, line: 151, column: 5)
!255 = !DILocation(line: 142, column: 9, scope: !250)
!256 = !DILocation(line: 143, column: 9, scope: !252)
!257 = !DILocation(line: 142, column: 26, scope: !247)
!258 = !DILocation(line: 143, column: 17, scope: !250)
!259 = !DILocation(line: 151, column: 15, scope: !252)
!260 = !DILocation(line: 151, column: 9, scope: !254)
!261 = !DILocation(line: 152, column: 5, scope: !254)
!262 = !DILocation(line: 153, column: 12, scope: !254)
!263 = !DILocation(line: 154, column: 12, scope: !254)
!264 = !DILocation(line: 155, column: 12, scope: !254)
!265 = !DILocation(line: 156, column: 2, scope: !247)
