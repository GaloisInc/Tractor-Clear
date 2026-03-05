; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; ASSERT EQ: i1 1 = call i1 @run_test_1()
; ASSERT EQ: i1 1 = call i1 @run_test_2()
; ASSERT EQ: i1 1 = call i1 @run_test_3()
; ASSERT EQ: i1 1 = call i1 @run_test_4()
; ASSERT EQ: i1 1 = call i1 @run_test_5()

%"src::lib::TflacMd5" = type { i32, i32, i32, i32 }

@alloc_f5ffd2fd1476bab43ad89fb40c72d0c5 = private unnamed_addr constant <{ [10 x i8] }> <{ [10 x i8] c"src/lib.rs" }>, align 1
@alloc_0f3f08c0fcc92eb0c09c8a082f113d87 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00'\00\00\00\10\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define void @md5_digest(ptr %m, ptr %out) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !6 {
start:
  %out.dbg.spill = alloca ptr, align 8
  %m.dbg.spill = alloca ptr, align 8
  store ptr %m, ptr %m.dbg.spill, align 8
    #dbg_declare(ptr %m.dbg.spill, !26, !DIExpression(), !28)
  store ptr %out, ptr %out.dbg.spill, align 8
    #dbg_declare(ptr %out.dbg.spill, !27, !DIExpression(), !29)
  %_7 = ptrtoint ptr %m to i64, !dbg !30
  %_10 = and i64 %_7, 3, !dbg !30
  %_11 = icmp eq i64 %_10, 0, !dbg !30
  %0 = call i1 @llvm.expect.i1(i1 %_11, i1 true), !dbg !30
  br i1 %0, label %bb2, label %panic, !dbg !30

bb2:                                              ; preds = %start
  call void @_ZN14md5_digest_lib3src3lib10md5_digest17hebd4745c658297eaE(ptr align 4 %m, ptr align 1 %out), !dbg !31
  ret void, !dbg !32

panic:                                            ; preds = %start
  invoke void @_ZN4core9panicking36panic_misaligned_pointer_dereference17h587229c42ea18e2bE(i64 4, i64 %_7, ptr align 8 @alloc_0f3f08c0fcc92eb0c09c8a082f113d87) #5
          to label %unreachable unwind label %terminate, !dbg !30

terminate:                                        ; preds = %panic
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  call void @_ZN4core9panicking19panic_cannot_unwind17h629e1da841ab4abfE() #6, !dbg !33
  unreachable, !dbg !33

unreachable:                                      ; preds = %panic
  unreachable
}

; Function Attrs: nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.expect.i1(i1, i1) #1

; Function Attrs: nonlazybind uwtable
define internal void @_ZN14md5_digest_lib3src3lib10md5_digest17hebd4745c658297eaE(ptr align 4 %m, ptr align 1 %out) unnamed_addr #0 !dbg !34 {
start:
  %out.dbg.spill = alloca ptr, align 8
  %m.dbg.spill = alloca ptr, align 8
  store ptr %m, ptr %m.dbg.spill, align 8
    #dbg_declare(ptr %m.dbg.spill, !43, !DIExpression(), !45)
  store ptr %out, ptr %out.dbg.spill, align 8
    #dbg_declare(ptr %out.dbg.spill, !44, !DIExpression(), !46)
  %_3 = load i32, ptr %m, align 4, !dbg !47, !noundef !22
  %0 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 0, !dbg !48
  %1 = trunc i32 %_3 to i8, !dbg !48
  store i8 %1, ptr %0, align 1, !dbg !48
  %_6 = load i32, ptr %m, align 4, !dbg !49, !noundef !22
  %_5 = lshr i32 %_6, 8, !dbg !50
  %2 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 1, !dbg !51
  %3 = trunc i32 %_5 to i8, !dbg !51
  store i8 %3, ptr %2, align 1, !dbg !51
  %_9 = load i32, ptr %m, align 4, !dbg !52, !noundef !22
  %_8 = lshr i32 %_9, 16, !dbg !53
  %4 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 2, !dbg !54
  %5 = trunc i32 %_8 to i8, !dbg !54
  store i8 %5, ptr %4, align 1, !dbg !54
  %_12 = load i32, ptr %m, align 4, !dbg !55, !noundef !22
  %_11 = lshr i32 %_12, 24, !dbg !56
  %6 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 3, !dbg !57
  %7 = trunc i32 %_11 to i8, !dbg !57
  store i8 %7, ptr %6, align 1, !dbg !57
  %8 = getelementptr inbounds %"src::lib::TflacMd5", ptr %m, i32 0, i32 1, !dbg !58
  %_14 = load i32, ptr %8, align 4, !dbg !58, !noundef !22
  %9 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 4, !dbg !59
  %10 = trunc i32 %_14 to i8, !dbg !59
  store i8 %10, ptr %9, align 1, !dbg !59
  %11 = getelementptr inbounds %"src::lib::TflacMd5", ptr %m, i32 0, i32 1, !dbg !60
  %_17 = load i32, ptr %11, align 4, !dbg !60, !noundef !22
  %_16 = lshr i32 %_17, 8, !dbg !61
  %12 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 5, !dbg !62
  %13 = trunc i32 %_16 to i8, !dbg !62
  store i8 %13, ptr %12, align 1, !dbg !62
  %14 = getelementptr inbounds %"src::lib::TflacMd5", ptr %m, i32 0, i32 1, !dbg !63
  %_20 = load i32, ptr %14, align 4, !dbg !63, !noundef !22
  %_19 = lshr i32 %_20, 16, !dbg !64
  %15 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 6, !dbg !65
  %16 = trunc i32 %_19 to i8, !dbg !65
  store i8 %16, ptr %15, align 1, !dbg !65
  %17 = getelementptr inbounds %"src::lib::TflacMd5", ptr %m, i32 0, i32 1, !dbg !66
  %_23 = load i32, ptr %17, align 4, !dbg !66, !noundef !22
  %_22 = lshr i32 %_23, 24, !dbg !67
  %18 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 7, !dbg !68
  %19 = trunc i32 %_22 to i8, !dbg !68
  store i8 %19, ptr %18, align 1, !dbg !68
  %20 = getelementptr inbounds %"src::lib::TflacMd5", ptr %m, i32 0, i32 2, !dbg !69
  %_25 = load i32, ptr %20, align 4, !dbg !69, !noundef !22
  %21 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 8, !dbg !70
  %22 = trunc i32 %_25 to i8, !dbg !70
  store i8 %22, ptr %21, align 1, !dbg !70
  %23 = getelementptr inbounds %"src::lib::TflacMd5", ptr %m, i32 0, i32 2, !dbg !71
  %_28 = load i32, ptr %23, align 4, !dbg !71, !noundef !22
  %_27 = lshr i32 %_28, 8, !dbg !72
  %24 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 9, !dbg !73
  %25 = trunc i32 %_27 to i8, !dbg !73
  store i8 %25, ptr %24, align 1, !dbg !73
  %26 = getelementptr inbounds %"src::lib::TflacMd5", ptr %m, i32 0, i32 2, !dbg !74
  %_31 = load i32, ptr %26, align 4, !dbg !74, !noundef !22
  %_30 = lshr i32 %_31, 16, !dbg !75
  %27 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 10, !dbg !76
  %28 = trunc i32 %_30 to i8, !dbg !76
  store i8 %28, ptr %27, align 1, !dbg !76
  %29 = getelementptr inbounds %"src::lib::TflacMd5", ptr %m, i32 0, i32 2, !dbg !77
  %_34 = load i32, ptr %29, align 4, !dbg !77, !noundef !22
  %_33 = lshr i32 %_34, 24, !dbg !78
  %30 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 11, !dbg !79
  %31 = trunc i32 %_33 to i8, !dbg !79
  store i8 %31, ptr %30, align 1, !dbg !79
  %32 = getelementptr inbounds %"src::lib::TflacMd5", ptr %m, i32 0, i32 3, !dbg !80
  %_36 = load i32, ptr %32, align 4, !dbg !80, !noundef !22
  %33 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 12, !dbg !81
  %34 = trunc i32 %_36 to i8, !dbg !81
  store i8 %34, ptr %33, align 1, !dbg !81
  %35 = getelementptr inbounds %"src::lib::TflacMd5", ptr %m, i32 0, i32 3, !dbg !82
  %_39 = load i32, ptr %35, align 4, !dbg !82, !noundef !22
  %_38 = lshr i32 %_39, 8, !dbg !83
  %36 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 13, !dbg !84
  %37 = trunc i32 %_38 to i8, !dbg !84
  store i8 %37, ptr %36, align 1, !dbg !84
  %38 = getelementptr inbounds %"src::lib::TflacMd5", ptr %m, i32 0, i32 3, !dbg !85
  %_42 = load i32, ptr %38, align 4, !dbg !85, !noundef !22
  %_41 = lshr i32 %_42, 16, !dbg !86
  %39 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 14, !dbg !87
  %40 = trunc i32 %_41 to i8, !dbg !87
  store i8 %40, ptr %39, align 1, !dbg !87
  %41 = getelementptr inbounds %"src::lib::TflacMd5", ptr %m, i32 0, i32 3, !dbg !88
  %_45 = load i32, ptr %41, align 4, !dbg !88, !noundef !22
  %_44 = lshr i32 %_45, 24, !dbg !89
  %42 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 15, !dbg !90
  %43 = trunc i32 %_44 to i8, !dbg !90
  store i8 %43, ptr %42, align 1, !dbg !90
  ret void, !dbg !91
}

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking36panic_misaligned_pointer_dereference17h587229c42ea18e2bE(i64, i64, ptr align 8) unnamed_addr #2

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_ZN4core9panicking19panic_cannot_unwind17h629e1da841ab4abfE() unnamed_addr #3

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_1() unnamed_addr #0 !dbg !92 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %expected = alloca [16 x i8], align 1
  %out = alloca [16 x i8], align 1
  %m = alloca %"src::lib::TflacMd5", align 4
    #dbg_declare(ptr %m, !97, !DIExpression(), !103)
    #dbg_declare(ptr %out, !99, !DIExpression(), !104)
    #dbg_declare(ptr %expected, !101, !DIExpression(), !105)
  store i32 61539269, ptr %m, align 4, !dbg !106
  %0 = getelementptr inbounds %"src::lib::TflacMd5", ptr %m, i32 0, i32 1, !dbg !106
  store i32 -1924970356, ptr %0, align 4, !dbg !106
  %1 = getelementptr inbounds %"src::lib::TflacMd5", ptr %m, i32 0, i32 2, !dbg !106
  store i32 -1411181604, ptr %1, align 4, !dbg !106
  %2 = getelementptr inbounds %"src::lib::TflacMd5", ptr %m, i32 0, i32 3, !dbg !106
  store i32 -1079261113, ptr %2, align 4, !dbg !106
  %3 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 0, !dbg !107
  store i8 -104, ptr %3, align 1, !dbg !107
  %4 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 1, !dbg !107
  store i8 121, ptr %4, align 1, !dbg !107
  %5 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 2, !dbg !107
  store i8 -87, ptr %5, align 1, !dbg !107
  %6 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 3, !dbg !107
  store i8 -58, ptr %6, align 1, !dbg !107
  %7 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 4, !dbg !107
  store i8 -116, ptr %7, align 1, !dbg !107
  %8 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 5, !dbg !107
  store i8 -27, ptr %8, align 1, !dbg !107
  %9 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 6, !dbg !107
  store i8 21, ptr %9, align 1, !dbg !107
  %10 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 7, !dbg !107
  store i8 65, ptr %10, align 1, !dbg !107
  %11 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 8, !dbg !107
  store i8 8, ptr %11, align 1, !dbg !107
  %12 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 9, !dbg !107
  store i8 20, ptr %12, align 1, !dbg !107
  %13 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 10, !dbg !107
  store i8 -76, ptr %13, align 1, !dbg !107
  %14 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 11, !dbg !107
  store i8 38, ptr %14, align 1, !dbg !107
  %15 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 12, !dbg !107
  store i8 0, ptr %15, align 1, !dbg !107
  %16 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 13, !dbg !107
  store i8 64, ptr %16, align 1, !dbg !107
  %17 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 14, !dbg !107
  store i8 -16, ptr %17, align 1, !dbg !107
  %18 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 15, !dbg !107
  store i8 -94, ptr %18, align 1, !dbg !107
  store ptr %out, ptr %self.dbg.spill.i, align 8
  %19 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 16, ptr %19, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !108, !DIExpression(), !125)
  call void @md5_digest(ptr %m, ptr %out), !dbg !127
  %20 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 0, !dbg !128
  store i8 -59, ptr %20, align 1, !dbg !128
  %21 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 1, !dbg !128
  store i8 3, ptr %21, align 1, !dbg !128
  %22 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 2, !dbg !128
  store i8 -85, ptr %22, align 1, !dbg !128
  %23 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 3, !dbg !128
  store i8 3, ptr %23, align 1, !dbg !128
  %24 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 4, !dbg !128
  store i8 -116, ptr %24, align 1, !dbg !128
  %25 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 5, !dbg !128
  store i8 72, ptr %25, align 1, !dbg !128
  %26 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 6, !dbg !128
  store i8 67, ptr %26, align 1, !dbg !128
  %27 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 7, !dbg !128
  store i8 -115, ptr %27, align 1, !dbg !128
  %28 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 8, !dbg !128
  store i8 -36, ptr %28, align 1, !dbg !128
  %29 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 9, !dbg !128
  store i8 19, ptr %29, align 1, !dbg !128
  %30 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 10, !dbg !128
  store i8 -29, ptr %30, align 1, !dbg !128
  %31 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 11, !dbg !128
  store i8 -85, ptr %31, align 1, !dbg !128
  %32 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 12, !dbg !128
  store i8 71, ptr %32, align 1, !dbg !128
  %33 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 13, !dbg !128
  store i8 -56, ptr %33, align 1, !dbg !128
  %34 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 14, !dbg !128
  store i8 -85, ptr %34, align 1, !dbg !128
  %35 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 15, !dbg !128
  store i8 -65, ptr %35, align 1, !dbg !128
  %36 = call zeroext i1 @"_ZN4core5array8equality103_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$B$u3b$$u20$N$u5d$$GT$$u20$for$u20$$u5b$A$u3b$$u20$N$u5d$$GT$2eq17h355385d475b251e7E"(ptr align 1 %out, ptr align 1 %expected), !dbg !129
  ret i1 %36, !dbg !130
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core5array8equality103_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$B$u3b$$u20$N$u5d$$GT$$u20$for$u20$$u5b$A$u3b$$u20$N$u5d$$GT$2eq17h355385d475b251e7E"(ptr align 1 %self, ptr align 1 %other) unnamed_addr #4 !dbg !131 {
start:
  %other.dbg.spill = alloca ptr, align 8
  %self.dbg.spill = alloca ptr, align 8
  store ptr %self, ptr %self.dbg.spill, align 8
    #dbg_declare(ptr %self.dbg.spill, !140, !DIExpression(), !145)
  store ptr %other, ptr %other.dbg.spill, align 8
    #dbg_declare(ptr %other.dbg.spill, !141, !DIExpression(), !146)
  %0 = call zeroext i1 @"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h9e34d2e803710923E"(ptr align 1 %self, ptr align 1 %other), !dbg !147
  ret i1 %0, !dbg !148
}

; Function Attrs: nonlazybind uwtable
define internal zeroext i1 @"_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h9e34d2e803710923E"(ptr align 1 %a, ptr align 1 %b) unnamed_addr #0 !dbg !149 {
start:
  %0 = alloca i8, align 1
  %b.dbg.spill = alloca ptr, align 8
  %a.dbg.spill = alloca ptr, align 8
  store ptr %a, ptr %a.dbg.spill, align 8
    #dbg_declare(ptr %a.dbg.spill, !152, !DIExpression(), !156)
  store ptr %b, ptr %b.dbg.spill, align 8
    #dbg_declare(ptr %b.dbg.spill, !153, !DIExpression(), !157)
  %1 = load i128, ptr %a, align 1, !dbg !158
  %2 = load i128, ptr %b, align 1, !dbg !158
  %3 = icmp eq i128 %1, %2, !dbg !158
  %4 = zext i1 %3 to i8, !dbg !158
  store i8 %4, ptr %0, align 1, !dbg !158
  %5 = load i8, ptr %0, align 1, !dbg !158, !range !159, !noundef !22
  %6 = trunc i8 %5 to i1, !dbg !158
  ret i1 %6, !dbg !160
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_2() unnamed_addr #0 !dbg !161 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %expected = alloca [16 x i8], align 1
  %out = alloca [16 x i8], align 1
  %m = alloca %"src::lib::TflacMd5", align 4
    #dbg_declare(ptr %m, !163, !DIExpression(), !169)
    #dbg_declare(ptr %out, !165, !DIExpression(), !170)
    #dbg_declare(ptr %expected, !167, !DIExpression(), !171)
  store i32 274051987, ptr %m, align 4, !dbg !172
  %0 = getelementptr inbounds %"src::lib::TflacMd5", ptr %m, i32 0, i32 1, !dbg !172
  store i32 2147196113, ptr %0, align 4, !dbg !172
  %1 = getelementptr inbounds %"src::lib::TflacMd5", ptr %m, i32 0, i32 2, !dbg !172
  store i32 1360955111, ptr %1, align 4, !dbg !172
  %2 = getelementptr inbounds %"src::lib::TflacMd5", ptr %m, i32 0, i32 3, !dbg !172
  store i32 1053418827, ptr %2, align 4, !dbg !172
  %3 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 0, !dbg !173
  store i8 -122, ptr %3, align 1, !dbg !173
  %4 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 1, !dbg !173
  store i8 83, ptr %4, align 1, !dbg !173
  %5 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 2, !dbg !173
  store i8 -49, ptr %5, align 1, !dbg !173
  %6 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 3, !dbg !173
  store i8 -46, ptr %6, align 1, !dbg !173
  %7 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 4, !dbg !173
  store i8 -24, ptr %7, align 1, !dbg !173
  %8 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 5, !dbg !173
  store i8 -64, ptr %8, align 1, !dbg !173
  %9 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 6, !dbg !173
  store i8 126, ptr %9, align 1, !dbg !173
  %10 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 7, !dbg !173
  store i8 -78, ptr %10, align 1, !dbg !173
  %11 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 8, !dbg !173
  store i8 -54, ptr %11, align 1, !dbg !173
  %12 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 9, !dbg !173
  store i8 -40, ptr %12, align 1, !dbg !173
  %13 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 10, !dbg !173
  store i8 -80, ptr %13, align 1, !dbg !173
  %14 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 11, !dbg !173
  store i8 63, ptr %14, align 1, !dbg !173
  %15 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 12, !dbg !173
  store i8 -57, ptr %15, align 1, !dbg !173
  %16 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 13, !dbg !173
  store i8 53, ptr %16, align 1, !dbg !173
  %17 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 14, !dbg !173
  store i8 74, ptr %17, align 1, !dbg !173
  %18 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 15, !dbg !173
  store i8 -24, ptr %18, align 1, !dbg !173
  store ptr %out, ptr %self.dbg.spill.i, align 8
  %19 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 16, ptr %19, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !108, !DIExpression(), !174)
  call void @md5_digest(ptr %m, ptr %out), !dbg !176
  %20 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 0, !dbg !177
  store i8 -109, ptr %20, align 1, !dbg !177
  %21 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 1, !dbg !177
  store i8 -77, ptr %21, align 1, !dbg !177
  %22 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 2, !dbg !177
  store i8 85, ptr %22, align 1, !dbg !177
  %23 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 3, !dbg !177
  store i8 16, ptr %23, align 1, !dbg !177
  %24 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 4, !dbg !177
  store i8 -47, ptr %24, align 1, !dbg !177
  %25 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 5, !dbg !177
  store i8 -100, ptr %25, align 1, !dbg !177
  %26 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 6, !dbg !177
  store i8 -5, ptr %26, align 1, !dbg !177
  %27 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 7, !dbg !177
  store i8 127, ptr %27, align 1, !dbg !177
  %28 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 8, !dbg !177
  store i8 -25, ptr %28, align 1, !dbg !177
  %29 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 9, !dbg !177
  store i8 -122, ptr %29, align 1, !dbg !177
  %30 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 10, !dbg !177
  store i8 30, ptr %30, align 1, !dbg !177
  %31 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 11, !dbg !177
  store i8 81, ptr %31, align 1, !dbg !177
  %32 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 12, !dbg !177
  store i8 75, ptr %32, align 1, !dbg !177
  %33 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 13, !dbg !177
  store i8 -27, ptr %33, align 1, !dbg !177
  %34 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 14, !dbg !177
  store i8 -55, ptr %34, align 1, !dbg !177
  %35 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 15, !dbg !177
  store i8 62, ptr %35, align 1, !dbg !177
  %36 = call zeroext i1 @"_ZN4core5array8equality103_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$B$u3b$$u20$N$u5d$$GT$$u20$for$u20$$u5b$A$u3b$$u20$N$u5d$$GT$2eq17h355385d475b251e7E"(ptr align 1 %out, ptr align 1 %expected), !dbg !178
  ret i1 %36, !dbg !179
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_3() unnamed_addr #0 !dbg !180 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %expected = alloca [16 x i8], align 1
  %out = alloca [16 x i8], align 1
  %m = alloca %"src::lib::TflacMd5", align 4
    #dbg_declare(ptr %m, !182, !DIExpression(), !188)
    #dbg_declare(ptr %out, !184, !DIExpression(), !189)
    #dbg_declare(ptr %expected, !186, !DIExpression(), !190)
  store i32 705554095, ptr %m, align 4, !dbg !191
  %0 = getelementptr inbounds %"src::lib::TflacMd5", ptr %m, i32 0, i32 1, !dbg !191
  store i32 1101994371, ptr %0, align 4, !dbg !191
  %1 = getelementptr inbounds %"src::lib::TflacMd5", ptr %m, i32 0, i32 2, !dbg !191
  store i32 -94464709, ptr %1, align 4, !dbg !191
  %2 = getelementptr inbounds %"src::lib::TflacMd5", ptr %m, i32 0, i32 3, !dbg !191
  store i32 1880582026, ptr %2, align 4, !dbg !191
  %3 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 0, !dbg !192
  store i8 -98, ptr %3, align 1, !dbg !192
  %4 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 1, !dbg !192
  store i8 -118, ptr %4, align 1, !dbg !192
  %5 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 2, !dbg !192
  store i8 56, ptr %5, align 1, !dbg !192
  %6 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 3, !dbg !192
  store i8 120, ptr %6, align 1, !dbg !192
  %7 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 4, !dbg !192
  store i8 4, ptr %7, align 1, !dbg !192
  %8 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 5, !dbg !192
  store i8 4, ptr %8, align 1, !dbg !192
  %9 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 6, !dbg !192
  store i8 39, ptr %9, align 1, !dbg !192
  %10 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 7, !dbg !192
  store i8 -58, ptr %10, align 1, !dbg !192
  %11 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 8, !dbg !192
  store i8 97, ptr %11, align 1, !dbg !192
  %12 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 9, !dbg !192
  store i8 114, ptr %12, align 1, !dbg !192
  %13 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 10, !dbg !192
  store i8 -81, ptr %13, align 1, !dbg !192
  %14 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 11, !dbg !192
  store i8 123, ptr %14, align 1, !dbg !192
  %15 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 12, !dbg !192
  store i8 -1, ptr %15, align 1, !dbg !192
  %16 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 13, !dbg !192
  store i8 116, ptr %16, align 1, !dbg !192
  %17 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 14, !dbg !192
  store i8 -64, ptr %17, align 1, !dbg !192
  %18 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 15, !dbg !192
  store i8 -20, ptr %18, align 1, !dbg !192
  store ptr %out, ptr %self.dbg.spill.i, align 8
  %19 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 16, ptr %19, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !108, !DIExpression(), !193)
  call void @md5_digest(ptr %m, ptr %out), !dbg !195
  %20 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 0, !dbg !196
  store i8 -81, ptr %20, align 1, !dbg !196
  %21 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 1, !dbg !196
  store i8 -26, ptr %21, align 1, !dbg !196
  %22 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 2, !dbg !196
  store i8 13, ptr %22, align 1, !dbg !196
  %23 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 3, !dbg !196
  store i8 42, ptr %23, align 1, !dbg !196
  %24 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 4, !dbg !196
  store i8 -125, ptr %24, align 1, !dbg !196
  %25 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 5, !dbg !196
  store i8 25, ptr %25, align 1, !dbg !196
  %26 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 6, !dbg !196
  store i8 -81, ptr %26, align 1, !dbg !196
  %27 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 7, !dbg !196
  store i8 65, ptr %27, align 1, !dbg !196
  %28 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 8, !dbg !196
  store i8 59, ptr %28, align 1, !dbg !196
  %29 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 9, !dbg !196
  store i8 -107, ptr %29, align 1, !dbg !196
  %30 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 10, !dbg !196
  store i8 94, ptr %30, align 1, !dbg !196
  %31 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 11, !dbg !196
  store i8 -6, ptr %31, align 1, !dbg !196
  %32 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 12, !dbg !196
  store i8 -118, ptr %32, align 1, !dbg !196
  %33 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 13, !dbg !196
  store i8 103, ptr %33, align 1, !dbg !196
  %34 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 14, !dbg !196
  store i8 23, ptr %34, align 1, !dbg !196
  %35 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 15, !dbg !196
  store i8 112, ptr %35, align 1, !dbg !196
  %36 = call zeroext i1 @"_ZN4core5array8equality103_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$B$u3b$$u20$N$u5d$$GT$$u20$for$u20$$u5b$A$u3b$$u20$N$u5d$$GT$2eq17h355385d475b251e7E"(ptr align 1 %out, ptr align 1 %expected), !dbg !197
  ret i1 %36, !dbg !198
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_4() unnamed_addr #0 !dbg !199 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %expected = alloca [16 x i8], align 1
  %out = alloca [16 x i8], align 1
  %m = alloca %"src::lib::TflacMd5", align 4
    #dbg_declare(ptr %m, !201, !DIExpression(), !207)
    #dbg_declare(ptr %out, !203, !DIExpression(), !208)
    #dbg_declare(ptr %expected, !205, !DIExpression(), !209)
  store i32 -917610122, ptr %m, align 4, !dbg !210
  %0 = getelementptr inbounds %"src::lib::TflacMd5", ptr %m, i32 0, i32 1, !dbg !210
  store i32 -644071863, ptr %0, align 4, !dbg !210
  %1 = getelementptr inbounds %"src::lib::TflacMd5", ptr %m, i32 0, i32 2, !dbg !210
  store i32 1053678897, ptr %1, align 4, !dbg !210
  %2 = getelementptr inbounds %"src::lib::TflacMd5", ptr %m, i32 0, i32 3, !dbg !210
  store i32 1476143889, ptr %2, align 4, !dbg !210
  %3 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 0, !dbg !211
  store i8 7, ptr %3, align 1, !dbg !211
  %4 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 1, !dbg !211
  store i8 -32, ptr %4, align 1, !dbg !211
  %5 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 2, !dbg !211
  store i8 14, ptr %5, align 1, !dbg !211
  %6 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 3, !dbg !211
  store i8 -40, ptr %6, align 1, !dbg !211
  %7 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 4, !dbg !211
  store i8 -23, ptr %7, align 1, !dbg !211
  %8 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 5, !dbg !211
  store i8 100, ptr %8, align 1, !dbg !211
  %9 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 6, !dbg !211
  store i8 -12, ptr %9, align 1, !dbg !211
  %10 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 7, !dbg !211
  store i8 -105, ptr %10, align 1, !dbg !211
  %11 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 8, !dbg !211
  store i8 -75, ptr %11, align 1, !dbg !211
  %12 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 9, !dbg !211
  store i8 -14, ptr %12, align 1, !dbg !211
  %13 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 10, !dbg !211
  store i8 14, ptr %13, align 1, !dbg !211
  %14 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 11, !dbg !211
  store i8 88, ptr %14, align 1, !dbg !211
  %15 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 12, !dbg !211
  store i8 -104, ptr %15, align 1, !dbg !211
  %16 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 13, !dbg !211
  store i8 113, ptr %16, align 1, !dbg !211
  %17 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 14, !dbg !211
  store i8 -62, ptr %17, align 1, !dbg !211
  %18 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 15, !dbg !211
  store i8 -22, ptr %18, align 1, !dbg !211
  store ptr %out, ptr %self.dbg.spill.i, align 8
  %19 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 16, ptr %19, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !108, !DIExpression(), !212)
  call void @md5_digest(ptr %m, ptr %out), !dbg !214
  %20 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 0, !dbg !215
  store i8 118, ptr %20, align 1, !dbg !215
  %21 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 1, !dbg !215
  store i8 97, ptr %21, align 1, !dbg !215
  %22 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 2, !dbg !215
  store i8 78, ptr %22, align 1, !dbg !215
  %23 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 3, !dbg !215
  store i8 -55, ptr %23, align 1, !dbg !215
  %24 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 4, !dbg !215
  store i8 73, ptr %24, align 1, !dbg !215
  %25 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 5, !dbg !215
  store i8 62, ptr %25, align 1, !dbg !215
  %26 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 6, !dbg !215
  store i8 -100, ptr %26, align 1, !dbg !215
  %27 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 7, !dbg !215
  store i8 -39, ptr %27, align 1, !dbg !215
  %28 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 8, !dbg !215
  store i8 49, ptr %28, align 1, !dbg !215
  %29 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 9, !dbg !215
  store i8 -35, ptr %29, align 1, !dbg !215
  %30 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 10, !dbg !215
  store i8 -51, ptr %30, align 1, !dbg !215
  %31 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 11, !dbg !215
  store i8 62, ptr %31, align 1, !dbg !215
  %32 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 12, !dbg !215
  store i8 17, ptr %32, align 1, !dbg !215
  %33 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 13, !dbg !215
  store i8 43, ptr %33, align 1, !dbg !215
  %34 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 14, !dbg !215
  store i8 -4, ptr %34, align 1, !dbg !215
  %35 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 15, !dbg !215
  store i8 87, ptr %35, align 1, !dbg !215
  %36 = call zeroext i1 @"_ZN4core5array8equality103_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$B$u3b$$u20$N$u5d$$GT$$u20$for$u20$$u5b$A$u3b$$u20$N$u5d$$GT$2eq17h355385d475b251e7E"(ptr align 1 %out, ptr align 1 %expected), !dbg !216
  ret i1 %36, !dbg !217
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_5() unnamed_addr #0 !dbg !218 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %expected = alloca [16 x i8], align 1
  %out = alloca [16 x i8], align 1
  %m = alloca %"src::lib::TflacMd5", align 4
    #dbg_declare(ptr %m, !220, !DIExpression(), !226)
    #dbg_declare(ptr %out, !222, !DIExpression(), !227)
    #dbg_declare(ptr %expected, !224, !DIExpression(), !228)
  store i32 -59823601, ptr %m, align 4, !dbg !229
  %0 = getelementptr inbounds %"src::lib::TflacMd5", ptr %m, i32 0, i32 1, !dbg !229
  store i32 -1444458266, ptr %0, align 4, !dbg !229
  %1 = getelementptr inbounds %"src::lib::TflacMd5", ptr %m, i32 0, i32 2, !dbg !229
  store i32 -2064024557, ptr %1, align 4, !dbg !229
  %2 = getelementptr inbounds %"src::lib::TflacMd5", ptr %m, i32 0, i32 3, !dbg !229
  store i32 -832993048, ptr %2, align 4, !dbg !229
  %3 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 0, !dbg !230
  store i8 63, ptr %3, align 1, !dbg !230
  %4 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 1, !dbg !230
  store i8 69, ptr %4, align 1, !dbg !230
  %5 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 2, !dbg !230
  store i8 65, ptr %5, align 1, !dbg !230
  %6 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 3, !dbg !230
  store i8 28, ptr %6, align 1, !dbg !230
  %7 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 4, !dbg !230
  store i8 102, ptr %7, align 1, !dbg !230
  %8 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 5, !dbg !230
  store i8 -63, ptr %8, align 1, !dbg !230
  %9 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 6, !dbg !230
  store i8 -102, ptr %9, align 1, !dbg !230
  %10 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 7, !dbg !230
  store i8 34, ptr %10, align 1, !dbg !230
  %11 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 8, !dbg !230
  store i8 -5, ptr %11, align 1, !dbg !230
  %12 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 9, !dbg !230
  store i8 -62, ptr %12, align 1, !dbg !230
  %13 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 10, !dbg !230
  store i8 123, ptr %13, align 1, !dbg !230
  %14 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 11, !dbg !230
  store i8 45, ptr %14, align 1, !dbg !230
  %15 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 12, !dbg !230
  store i8 -81, ptr %15, align 1, !dbg !230
  %16 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 13, !dbg !230
  store i8 -79, ptr %16, align 1, !dbg !230
  %17 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 14, !dbg !230
  store i8 -31, ptr %17, align 1, !dbg !230
  %18 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 15, !dbg !230
  store i8 -110, ptr %18, align 1, !dbg !230
  store ptr %out, ptr %self.dbg.spill.i, align 8
  %19 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 16, ptr %19, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !108, !DIExpression(), !231)
  call void @md5_digest(ptr %m, ptr %out), !dbg !233
  %20 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 0, !dbg !234
  store i8 15, ptr %20, align 1, !dbg !234
  %21 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 1, !dbg !234
  store i8 42, ptr %21, align 1, !dbg !234
  %22 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 2, !dbg !234
  store i8 111, ptr %22, align 1, !dbg !234
  %23 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 3, !dbg !234
  store i8 -4, ptr %23, align 1, !dbg !234
  %24 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 4, !dbg !234
  store i8 -26, ptr %24, align 1, !dbg !234
  %25 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 5, !dbg !234
  store i8 80, ptr %25, align 1, !dbg !234
  %26 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 6, !dbg !234
  store i8 -25, ptr %26, align 1, !dbg !234
  %27 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 7, !dbg !234
  store i8 -87, ptr %27, align 1, !dbg !234
  %28 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 8, !dbg !234
  store i8 19, ptr %28, align 1, !dbg !234
  %29 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 9, !dbg !234
  store i8 124, ptr %29, align 1, !dbg !234
  %30 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 10, !dbg !234
  store i8 -7, ptr %30, align 1, !dbg !234
  %31 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 11, !dbg !234
  store i8 -124, ptr %31, align 1, !dbg !234
  %32 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 12, !dbg !234
  store i8 -24, ptr %32, align 1, !dbg !234
  %33 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 13, !dbg !234
  store i8 -120, ptr %33, align 1, !dbg !234
  %34 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 14, !dbg !234
  store i8 89, ptr %34, align 1, !dbg !234
  %35 = getelementptr inbounds [16 x i8], ptr %expected, i64 0, i64 15, !dbg !234
  store i8 -50, ptr %35, align 1, !dbg !234
  %36 = call zeroext i1 @"_ZN4core5array8equality103_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$B$u3b$$u20$N$u5d$$GT$$u20$for$u20$$u5b$A$u3b$$u20$N$u5d$$GT$2eq17h355385d475b251e7E"(ptr align 1 %out, ptr align 1 %expected), !dbg !235
  ret i1 %36, !dbg !236
}

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #2 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { noreturn }
attributes #6 = { noinline noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}

!0 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !1, producer: "clang LLVM (rustc version 1.70.0-nightly (84dd17b56 2023-04-14))", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!1 = !DIFile(filename: "lib.rs/@/2dff5nk7vf7aeb7", directory: "/crisp-rust-outputs/B01_organic/md5_digest_lib/translated_rust")
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 2, !"RtLibUseGOT", i32 1}
!4 = !{i32 2, !"Dwarf Version", i32 4}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = distinct !DISubprogram(name: "md5_digest_ffi", linkageName: "md5_digest", scope: !8, file: !7, line: 38, type: !11, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !22, retainedNodes: !25)
!7 = !DIFile(filename: "src/lib.rs", directory: "/crisp-rust-outputs/B01_organic/md5_digest_lib/translated_rust", checksumkind: CSK_MD5, checksum: "c9af7b30ef2399a5c3e0e56b84305791")
!8 = !DINamespace(name: "lib", scope: !9)
!9 = !DINamespace(name: "src", scope: !10)
!10 = !DINamespace(name: "md5_digest_lib", scope: null)
!11 = !DISubroutineType(types: !12)
!12 = !{null, !13, !23}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const md5_digest_lib::src::lib::TflacMd5", baseType: !14, size: 64, align: 64, dwarfAddressSpace: 0)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "TflacMd5", scope: !8, file: !15, size: 128, align: 32, elements: !16, templateParams: !22, identifier: "c7b41561c21733ba25646e119abb5261")
!15 = !DIFile(filename: "<unknown>", directory: "")
!16 = !{!17, !19, !20, !21}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !14, file: !15, baseType: !18, size: 32, align: 32)
!18 = !DIBasicType(name: "u32", size: 32, encoding: DW_ATE_unsigned)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !14, file: !15, baseType: !18, size: 32, align: 32, offset: 32)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !14, file: !15, baseType: !18, size: 32, align: 32, offset: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !14, file: !15, baseType: !18, size: 32, align: 32, offset: 96)
!22 = !{}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut u8", baseType: !24, size: 64, align: 64, dwarfAddressSpace: 0)
!24 = !DIBasicType(name: "u8", size: 8, encoding: DW_ATE_unsigned)
!25 = !{!26, !27}
!26 = !DILocalVariable(name: "m", arg: 1, scope: !6, file: !7, line: 38, type: !13)
!27 = !DILocalVariable(name: "out", arg: 2, scope: !6, file: !7, line: 38, type: !23)
!28 = !DILocation(line: 38, column: 41, scope: !6)
!29 = !DILocation(line: 38, column: 61, scope: !6)
!30 = !DILocation(line: 39, column: 16, scope: !6)
!31 = !DILocation(line: 39, column: 5, scope: !6)
!32 = !DILocation(line: 40, column: 2, scope: !6)
!33 = !DILocation(line: 38, column: 1, scope: !6)
!34 = distinct !DISubprogram(name: "md5_digest", linkageName: "_ZN14md5_digest_lib3src3lib10md5_digest17hebd4745c658297eaE", scope: !8, file: !7, line: 15, type: !35, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !22, retainedNodes: !42)
!35 = !DISubroutineType(types: !36)
!36 = !{null, !37, !38}
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&md5_digest_lib::src::lib::TflacMd5", baseType: !14, size: 64, align: 64, dwarfAddressSpace: 0)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut [u8; 16]", baseType: !39, size: 64, align: 64, dwarfAddressSpace: 0)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 128, align: 8, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 16, lowerBound: 0)
!42 = !{!43, !44}
!43 = !DILocalVariable(name: "m", arg: 1, scope: !34, file: !7, line: 15, type: !37)
!44 = !DILocalVariable(name: "out", arg: 2, scope: !34, file: !7, line: 15, type: !38)
!45 = !DILocation(line: 15, column: 19, scope: !34)
!46 = !DILocation(line: 15, column: 33, scope: !34)
!47 = !DILocation(line: 16, column: 14, scope: !34)
!48 = !DILocation(line: 16, column: 5, scope: !34)
!49 = !DILocation(line: 17, column: 15, scope: !34)
!50 = !DILocation(line: 17, column: 14, scope: !34)
!51 = !DILocation(line: 17, column: 5, scope: !34)
!52 = !DILocation(line: 18, column: 15, scope: !34)
!53 = !DILocation(line: 18, column: 14, scope: !34)
!54 = !DILocation(line: 18, column: 5, scope: !34)
!55 = !DILocation(line: 19, column: 15, scope: !34)
!56 = !DILocation(line: 19, column: 14, scope: !34)
!57 = !DILocation(line: 19, column: 5, scope: !34)
!58 = !DILocation(line: 21, column: 14, scope: !34)
!59 = !DILocation(line: 21, column: 5, scope: !34)
!60 = !DILocation(line: 22, column: 15, scope: !34)
!61 = !DILocation(line: 22, column: 14, scope: !34)
!62 = !DILocation(line: 22, column: 5, scope: !34)
!63 = !DILocation(line: 23, column: 15, scope: !34)
!64 = !DILocation(line: 23, column: 14, scope: !34)
!65 = !DILocation(line: 23, column: 5, scope: !34)
!66 = !DILocation(line: 24, column: 15, scope: !34)
!67 = !DILocation(line: 24, column: 14, scope: !34)
!68 = !DILocation(line: 24, column: 5, scope: !34)
!69 = !DILocation(line: 26, column: 14, scope: !34)
!70 = !DILocation(line: 26, column: 5, scope: !34)
!71 = !DILocation(line: 27, column: 15, scope: !34)
!72 = !DILocation(line: 27, column: 14, scope: !34)
!73 = !DILocation(line: 27, column: 5, scope: !34)
!74 = !DILocation(line: 28, column: 16, scope: !34)
!75 = !DILocation(line: 28, column: 15, scope: !34)
!76 = !DILocation(line: 28, column: 5, scope: !34)
!77 = !DILocation(line: 29, column: 16, scope: !34)
!78 = !DILocation(line: 29, column: 15, scope: !34)
!79 = !DILocation(line: 29, column: 5, scope: !34)
!80 = !DILocation(line: 31, column: 15, scope: !34)
!81 = !DILocation(line: 31, column: 5, scope: !34)
!82 = !DILocation(line: 32, column: 16, scope: !34)
!83 = !DILocation(line: 32, column: 15, scope: !34)
!84 = !DILocation(line: 32, column: 5, scope: !34)
!85 = !DILocation(line: 33, column: 16, scope: !34)
!86 = !DILocation(line: 33, column: 15, scope: !34)
!87 = !DILocation(line: 33, column: 5, scope: !34)
!88 = !DILocation(line: 34, column: 16, scope: !34)
!89 = !DILocation(line: 34, column: 15, scope: !34)
!90 = !DILocation(line: 34, column: 5, scope: !34)
!91 = !DILocation(line: 35, column: 2, scope: !34)
!92 = distinct !DISubprogram(name: "run_test_1", scope: !8, file: !7, line: 43, type: !93, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !22, retainedNodes: !96)
!93 = !DISubroutineType(types: !94)
!94 = !{!95}
!95 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!96 = !{!97, !99, !101}
!97 = !DILocalVariable(name: "m", scope: !98, file: !7, line: 44, type: !14, align: 4)
!98 = distinct !DILexicalBlock(scope: !92, file: !7, line: 44, column: 5)
!99 = !DILocalVariable(name: "out", scope: !100, file: !7, line: 50, type: !39, align: 1)
!100 = distinct !DILexicalBlock(scope: !98, file: !7, line: 50, column: 5)
!101 = !DILocalVariable(name: "expected", scope: !102, file: !7, line: 52, type: !39, align: 1)
!102 = distinct !DILexicalBlock(scope: !100, file: !7, line: 52, column: 5)
!103 = !DILocation(line: 44, column: 9, scope: !98)
!104 = !DILocation(line: 50, column: 9, scope: !100)
!105 = !DILocation(line: 52, column: 9, scope: !102)
!106 = !DILocation(line: 44, column: 13, scope: !92)
!107 = !DILocation(line: 50, column: 34, scope: !98)
!108 = !DILocalVariable(name: "self", arg: 1, scope: !109, file: !110, line: 506, type: !116)
!109 = distinct !DISubprogram(name: "as_mut_ptr<u8>", linkageName: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17h50db040792584614E", scope: !111, file: !110, line: 506, type: !114, scopeLine: 506, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !123, retainedNodes: !122)
!110 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/slice/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "0b3adda84e3d0ea3eafbebcfb4ca210d")
!111 = !DINamespace(name: "{impl#0}", scope: !112)
!112 = !DINamespace(name: "slice", scope: !113)
!113 = !DINamespace(name: "core", scope: null)
!114 = !DISubroutineType(types: !115)
!115 = !{!23, !116}
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "&mut [u8]", file: !15, size: 128, align: 64, elements: !117, templateParams: !22, identifier: "5acbf15c847666982b641ea58cf98317")
!117 = !{!118, !120}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !116, file: !15, baseType: !119, size: 64, align: 64)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64, dwarfAddressSpace: 0)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !116, file: !15, baseType: !121, size: 64, align: 64, offset: 64)
!121 = !DIBasicType(name: "usize", size: 64, encoding: DW_ATE_unsigned)
!122 = !{!108}
!123 = !{!124}
!124 = !DITemplateTypeParameter(name: "T", type: !24)
!125 = !DILocation(line: 506, column: 29, scope: !109, inlinedAt: !126)
!126 = distinct !DILocation(line: 51, column: 43, scope: !100)
!127 = !DILocation(line: 51, column: 5, scope: !100)
!128 = !DILocation(line: 52, column: 35, scope: !100)
!129 = !DILocation(line: 53, column: 5, scope: !102)
!130 = !DILocation(line: 54, column: 2, scope: !92)
!131 = distinct !DISubprogram(name: "eq<u8, u8, 16>", linkageName: "_ZN4core5array8equality103_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$B$u3b$$u20$N$u5d$$GT$$u20$for$u20$$u5b$A$u3b$$u20$N$u5d$$GT$2eq17h355385d475b251e7E", scope: !133, file: !132, line: 10, type: !136, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !142, retainedNodes: !139)
!132 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/array/equality.rs", directory: "", checksumkind: CSK_MD5, checksum: "1524894cf0ce28fd6e90c297c47c06f9")
!133 = !DINamespace(name: "{impl#0}", scope: !134)
!134 = !DINamespace(name: "equality", scope: !135)
!135 = !DINamespace(name: "array", scope: !113)
!136 = !DISubroutineType(types: !137)
!137 = !{!95, !138, !138}
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&[u8; 16]", baseType: !39, size: 64, align: 64, dwarfAddressSpace: 0)
!139 = !{!140, !141}
!140 = !DILocalVariable(name: "self", arg: 1, scope: !131, file: !132, line: 10, type: !138)
!141 = !DILocalVariable(name: "other", arg: 2, scope: !131, file: !132, line: 10, type: !138)
!142 = !{!143, !144}
!143 = !DITemplateTypeParameter(name: "A", type: !24)
!144 = !DITemplateTypeParameter(name: "B", type: !24)
!145 = !DILocation(line: 10, column: 11, scope: !131)
!146 = !DILocation(line: 10, column: 18, scope: !131)
!147 = !DILocation(line: 11, column: 9, scope: !131)
!148 = !DILocation(line: 12, column: 6, scope: !131)
!149 = distinct !DISubprogram(name: "spec_eq<u8, u8, 16>", linkageName: "_ZN69_$LT$T$u20$as$u20$core..array..equality..SpecArrayEq$LT$U$C$_$GT$$GT$7spec_eq17h9e34d2e803710923E", scope: !150, file: !132, line: 147, type: !136, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !154, retainedNodes: !151)
!150 = !DINamespace(name: "{impl#9}", scope: !134)
!151 = !{!152, !153}
!152 = !DILocalVariable(name: "a", arg: 1, scope: !149, file: !132, line: 147, type: !138)
!153 = !DILocalVariable(name: "b", arg: 2, scope: !149, file: !132, line: 147, type: !138)
!154 = !{!124, !155}
!155 = !DITemplateTypeParameter(name: "U", type: !24)
!156 = !DILocation(line: 147, column: 16, scope: !149)
!157 = !DILocation(line: 147, column: 28, scope: !149)
!158 = !DILocation(line: 151, column: 18, scope: !149)
!159 = !{i8 0, i8 2}
!160 = !DILocation(line: 152, column: 6, scope: !149)
!161 = distinct !DISubprogram(name: "run_test_2", scope: !8, file: !7, line: 57, type: !93, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !22, retainedNodes: !162)
!162 = !{!163, !165, !167}
!163 = !DILocalVariable(name: "m", scope: !164, file: !7, line: 58, type: !14, align: 4)
!164 = distinct !DILexicalBlock(scope: !161, file: !7, line: 58, column: 5)
!165 = !DILocalVariable(name: "out", scope: !166, file: !7, line: 64, type: !39, align: 1)
!166 = distinct !DILexicalBlock(scope: !164, file: !7, line: 64, column: 5)
!167 = !DILocalVariable(name: "expected", scope: !168, file: !7, line: 66, type: !39, align: 1)
!168 = distinct !DILexicalBlock(scope: !166, file: !7, line: 66, column: 5)
!169 = !DILocation(line: 58, column: 9, scope: !164)
!170 = !DILocation(line: 64, column: 9, scope: !166)
!171 = !DILocation(line: 66, column: 9, scope: !168)
!172 = !DILocation(line: 58, column: 13, scope: !161)
!173 = !DILocation(line: 64, column: 34, scope: !164)
!174 = !DILocation(line: 506, column: 29, scope: !109, inlinedAt: !175)
!175 = distinct !DILocation(line: 65, column: 43, scope: !166)
!176 = !DILocation(line: 65, column: 5, scope: !166)
!177 = !DILocation(line: 66, column: 35, scope: !166)
!178 = !DILocation(line: 67, column: 5, scope: !168)
!179 = !DILocation(line: 68, column: 2, scope: !161)
!180 = distinct !DISubprogram(name: "run_test_3", scope: !8, file: !7, line: 71, type: !93, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !22, retainedNodes: !181)
!181 = !{!182, !184, !186}
!182 = !DILocalVariable(name: "m", scope: !183, file: !7, line: 72, type: !14, align: 4)
!183 = distinct !DILexicalBlock(scope: !180, file: !7, line: 72, column: 5)
!184 = !DILocalVariable(name: "out", scope: !185, file: !7, line: 78, type: !39, align: 1)
!185 = distinct !DILexicalBlock(scope: !183, file: !7, line: 78, column: 5)
!186 = !DILocalVariable(name: "expected", scope: !187, file: !7, line: 80, type: !39, align: 1)
!187 = distinct !DILexicalBlock(scope: !185, file: !7, line: 80, column: 5)
!188 = !DILocation(line: 72, column: 9, scope: !183)
!189 = !DILocation(line: 78, column: 9, scope: !185)
!190 = !DILocation(line: 80, column: 9, scope: !187)
!191 = !DILocation(line: 72, column: 13, scope: !180)
!192 = !DILocation(line: 78, column: 34, scope: !183)
!193 = !DILocation(line: 506, column: 29, scope: !109, inlinedAt: !194)
!194 = distinct !DILocation(line: 79, column: 43, scope: !185)
!195 = !DILocation(line: 79, column: 5, scope: !185)
!196 = !DILocation(line: 80, column: 35, scope: !185)
!197 = !DILocation(line: 81, column: 5, scope: !187)
!198 = !DILocation(line: 82, column: 2, scope: !180)
!199 = distinct !DISubprogram(name: "run_test_4", scope: !8, file: !7, line: 85, type: !93, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !22, retainedNodes: !200)
!200 = !{!201, !203, !205}
!201 = !DILocalVariable(name: "m", scope: !202, file: !7, line: 86, type: !14, align: 4)
!202 = distinct !DILexicalBlock(scope: !199, file: !7, line: 86, column: 5)
!203 = !DILocalVariable(name: "out", scope: !204, file: !7, line: 92, type: !39, align: 1)
!204 = distinct !DILexicalBlock(scope: !202, file: !7, line: 92, column: 5)
!205 = !DILocalVariable(name: "expected", scope: !206, file: !7, line: 94, type: !39, align: 1)
!206 = distinct !DILexicalBlock(scope: !204, file: !7, line: 94, column: 5)
!207 = !DILocation(line: 86, column: 9, scope: !202)
!208 = !DILocation(line: 92, column: 9, scope: !204)
!209 = !DILocation(line: 94, column: 9, scope: !206)
!210 = !DILocation(line: 86, column: 13, scope: !199)
!211 = !DILocation(line: 92, column: 34, scope: !202)
!212 = !DILocation(line: 506, column: 29, scope: !109, inlinedAt: !213)
!213 = distinct !DILocation(line: 93, column: 43, scope: !204)
!214 = !DILocation(line: 93, column: 5, scope: !204)
!215 = !DILocation(line: 94, column: 35, scope: !204)
!216 = !DILocation(line: 95, column: 5, scope: !206)
!217 = !DILocation(line: 96, column: 2, scope: !199)
!218 = distinct !DISubprogram(name: "run_test_5", scope: !8, file: !7, line: 99, type: !93, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !22, retainedNodes: !219)
!219 = !{!220, !222, !224}
!220 = !DILocalVariable(name: "m", scope: !221, file: !7, line: 100, type: !14, align: 4)
!221 = distinct !DILexicalBlock(scope: !218, file: !7, line: 100, column: 5)
!222 = !DILocalVariable(name: "out", scope: !223, file: !7, line: 106, type: !39, align: 1)
!223 = distinct !DILexicalBlock(scope: !221, file: !7, line: 106, column: 5)
!224 = !DILocalVariable(name: "expected", scope: !225, file: !7, line: 108, type: !39, align: 1)
!225 = distinct !DILexicalBlock(scope: !223, file: !7, line: 108, column: 5)
!226 = !DILocation(line: 100, column: 9, scope: !221)
!227 = !DILocation(line: 106, column: 9, scope: !223)
!228 = !DILocation(line: 108, column: 9, scope: !225)
!229 = !DILocation(line: 100, column: 13, scope: !218)
!230 = !DILocation(line: 106, column: 34, scope: !221)
!231 = !DILocation(line: 506, column: 29, scope: !109, inlinedAt: !232)
!232 = distinct !DILocation(line: 107, column: 43, scope: !223)
!233 = !DILocation(line: 107, column: 5, scope: !223)
!234 = !DILocation(line: 108, column: 35, scope: !223)
!235 = !DILocation(line: 109, column: 5, scope: !225)
!236 = !DILocation(line: 110, column: 2, scope: !218)
