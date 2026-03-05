; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; ASSERT EQ: i1 1 = call i1 @run_test_1()
; ASSERT EQ: i1 1 = call i1 @run_test_2()
; ASSERT EQ: i1 1 = call i1 @run_test_3()
; ASSERT EQ: i1 1 = call i1 @run_test_4()
; ASSERT EQ: i1 1 = call i1 @run_test_5()

%"src::lib::Tflac" = type { i32, i32, i32, i8, [3 x i8], i32, i32 }

@alloc_e14f096bd30e7c4fffb0d07638e6275d = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/num/mod.rs" }>, align 1
@alloc_d1e68eb04df0257e0899e21ea2c814fc = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e14f096bd30e7c4fffb0d07638e6275d, [16 x i8] c"K\00\00\00\00\00\00\00/\04\00\00\05\00\00\00" }>, align 8
@str.0 = internal constant [25 x i8] c"attempt to divide by zero"
@str.1 = internal constant [57 x i8] c"attempt to calculate the remainder with a divisor of zero"
@alloc_f5ffd2fd1476bab43ad89fb40c72d0c5 = private unnamed_addr constant <{ [10 x i8] }> <{ [10 x i8] c"src/lib.rs" }>, align 1
@alloc_16e5780861a98ffb5d628a2cb42f23bb = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\A6\00\00\00\19\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define void @update_frame_header(ptr %t) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !6 {
start:
  %t.dbg.spill = alloca ptr, align 8
  store ptr %t, ptr %t.dbg.spill, align 8
    #dbg_declare(ptr %t.dbg.spill, !27, !DIExpression(), !28)
  %_4 = ptrtoint ptr %t to i64, !dbg !29
  %_7 = and i64 %_4, 3, !dbg !29
  %_8 = icmp eq i64 %_7, 0, !dbg !29
  %0 = call i1 @llvm.expect.i1(i1 %_8, i1 true), !dbg !29
  br i1 %0, label %bb2, label %panic, !dbg !29

bb2:                                              ; preds = %start
  call void @_ZN23update_frame_header_lib3src3lib19update_frame_header17ha65a98ba98134ea8E(ptr align 4 %t), !dbg !30
  ret void, !dbg !31

panic:                                            ; preds = %start
  invoke void @_ZN4core9panicking36panic_misaligned_pointer_dereference17h587229c42ea18e2bE(i64 4, i64 %_4, ptr align 8 @alloc_16e5780861a98ffb5d628a2cb42f23bb) #4
          to label %unreachable unwind label %terminate, !dbg !29

terminate:                                        ; preds = %panic
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  call void @_ZN4core9panicking19panic_cannot_unwind17h629e1da841ab4abfE() #5, !dbg !32
  unreachable, !dbg !32

unreachable:                                      ; preds = %panic
  unreachable
}

; Function Attrs: nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.expect.i1(i1, i1) #1

; Function Attrs: nonlazybind uwtable
define internal void @_ZN23update_frame_header_lib3src3lib19update_frame_header17ha65a98ba98134ea8E(ptr align 4 %t) unnamed_addr #0 !dbg !33 {
start:
  %rhs.dbg.spill.i12 = alloca i32, align 4
  %self.dbg.spill.i13 = alloca i32, align 4
  %rhs.dbg.spill.i8 = alloca i32, align 4
  %self.dbg.spill.i9 = alloca i32, align 4
  %rhs.dbg.spill.i5 = alloca i32, align 4
  %self.dbg.spill.i6 = alloca i32, align 4
  %rhs.dbg.spill.i1 = alloca i32, align 4
  %self.dbg.spill.i2 = alloca i32, align 4
  %rhs.dbg.spill.i = alloca i32, align 4
  %self.dbg.spill.i = alloca i32, align 4
  %mode.dbg.spill = alloca i8, align 1
  %t.dbg.spill = alloca ptr, align 8
  %_15 = alloca i32, align 4
  store ptr %t, ptr %t.dbg.spill, align 8
    #dbg_declare(ptr %t.dbg.spill, !38, !DIExpression(), !41)
  %0 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !42
  store i32 -524288, ptr %0, align 4, !dbg !42
  %1 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 6, !dbg !43
  %2 = load i32, ptr %1, align 4, !dbg !43, !noundef !25
  switch i32 %2, label %bb1 [
    i32 192, label %bb2
    i32 576, label %bb3
    i32 1152, label %bb4
    i32 2304, label %bb5
    i32 4608, label %bb6
    i32 256, label %bb7
    i32 512, label %bb8
    i32 1024, label %bb9
    i32 2048, label %bb10
    i32 4096, label %bb11
    i32 8192, label %bb12
    i32 16384, label %bb13
    i32 32768, label %bb14
  ], !dbg !43

bb1:                                              ; preds = %start
  %3 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 6, !dbg !44
  %_17 = load i32, ptr %3, align 4, !dbg !44, !noundef !25
  %_16 = icmp ule i32 %_17, 256, !dbg !44
  br i1 %_16, label %bb15, label %bb16, !dbg !44

bb2:                                              ; preds = %start
  %4 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !45
  %5 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !45
  %6 = load i32, ptr %5, align 4, !dbg !45, !noundef !25
  %7 = or i32 %6, 4096, !dbg !45
  store i32 %7, ptr %4, align 4, !dbg !45
  br label %bb18, !dbg !46

bb3:                                              ; preds = %start
  %8 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !47
  %9 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !47
  %10 = load i32, ptr %9, align 4, !dbg !47, !noundef !25
  %11 = or i32 %10, 8192, !dbg !47
  store i32 %11, ptr %8, align 4, !dbg !47
  br label %bb18, !dbg !48

bb4:                                              ; preds = %start
  %12 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !49
  %13 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !49
  %14 = load i32, ptr %13, align 4, !dbg !49, !noundef !25
  %15 = or i32 %14, 12288, !dbg !49
  store i32 %15, ptr %12, align 4, !dbg !49
  br label %bb18, !dbg !50

bb5:                                              ; preds = %start
  %16 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !51
  %17 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !51
  %18 = load i32, ptr %17, align 4, !dbg !51, !noundef !25
  %19 = or i32 %18, 16384, !dbg !51
  store i32 %19, ptr %16, align 4, !dbg !51
  br label %bb18, !dbg !52

bb6:                                              ; preds = %start
  %20 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !53
  %21 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !53
  %22 = load i32, ptr %21, align 4, !dbg !53, !noundef !25
  %23 = or i32 %22, 20480, !dbg !53
  store i32 %23, ptr %20, align 4, !dbg !53
  br label %bb18, !dbg !54

bb7:                                              ; preds = %start
  %24 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !55
  %25 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !55
  %26 = load i32, ptr %25, align 4, !dbg !55, !noundef !25
  %27 = or i32 %26, 32768, !dbg !55
  store i32 %27, ptr %24, align 4, !dbg !55
  br label %bb18, !dbg !56

bb8:                                              ; preds = %start
  %28 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !57
  %29 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !57
  %30 = load i32, ptr %29, align 4, !dbg !57, !noundef !25
  %31 = or i32 %30, 36864, !dbg !57
  store i32 %31, ptr %28, align 4, !dbg !57
  br label %bb18, !dbg !58

bb9:                                              ; preds = %start
  %32 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !59
  %33 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !59
  %34 = load i32, ptr %33, align 4, !dbg !59, !noundef !25
  %35 = or i32 %34, 40960, !dbg !59
  store i32 %35, ptr %32, align 4, !dbg !59
  br label %bb18, !dbg !60

bb10:                                             ; preds = %start
  %36 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !61
  %37 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !61
  %38 = load i32, ptr %37, align 4, !dbg !61, !noundef !25
  %39 = or i32 %38, 45056, !dbg !61
  store i32 %39, ptr %36, align 4, !dbg !61
  br label %bb18, !dbg !62

bb11:                                             ; preds = %start
  %40 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !63
  %41 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !63
  %42 = load i32, ptr %41, align 4, !dbg !63, !noundef !25
  %43 = or i32 %42, 49152, !dbg !63
  store i32 %43, ptr %40, align 4, !dbg !63
  br label %bb18, !dbg !64

bb12:                                             ; preds = %start
  %44 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !65
  %45 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !65
  %46 = load i32, ptr %45, align 4, !dbg !65, !noundef !25
  %47 = or i32 %46, 53248, !dbg !65
  store i32 %47, ptr %44, align 4, !dbg !65
  br label %bb18, !dbg !66

bb13:                                             ; preds = %start
  %48 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !67
  %49 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !67
  %50 = load i32, ptr %49, align 4, !dbg !67, !noundef !25
  %51 = or i32 %50, 57344, !dbg !67
  store i32 %51, ptr %48, align 4, !dbg !67
  br label %bb18, !dbg !68

bb14:                                             ; preds = %start
  %52 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !69
  %53 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !69
  %54 = load i32, ptr %53, align 4, !dbg !69, !noundef !25
  %55 = or i32 %54, 61440, !dbg !69
  store i32 %55, ptr %52, align 4, !dbg !69
  br label %bb18, !dbg !70

bb16:                                             ; preds = %bb1
  store i32 28672, ptr %_15, align 4, !dbg !71
  br label %bb17, !dbg !72

bb15:                                             ; preds = %bb1
  store i32 24576, ptr %_15, align 4, !dbg !73
  br label %bb17, !dbg !72

bb17:                                             ; preds = %bb15, %bb16
  %56 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !74
  %57 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !74
  %58 = load i32, ptr %57, align 4, !dbg !74, !noundef !25
  %59 = load i32, ptr %_15, align 4, !dbg !74, !noundef !25
  %60 = or i32 %58, %59, !dbg !74
  store i32 %60, ptr %56, align 4, !dbg !74
  br label %bb18, !dbg !75

bb18:                                             ; preds = %bb17, %bb14, %bb13, %bb12, %bb11, %bb10, %bb9, %bb8, %bb7, %bb6, %bb5, %bb4, %bb3, %bb2
  %61 = load i32, ptr %t, align 4, !dbg !76, !noundef !25
  switch i32 %61, label %bb19 [
    i32 882000, label %bb20
    i32 176400, label %bb21
    i32 192000, label %bb22
    i32 8000, label %bb23
    i32 16000, label %bb24
    i32 22050, label %bb25
    i32 24000, label %bb26
    i32 32000, label %bb27
    i32 44100, label %bb28
    i32 48000, label %bb29
    i32 96000, label %bb30
  ], !dbg !76

bb19:                                             ; preds = %bb18
  %_30 = load i32, ptr %t, align 4, !dbg !77, !noundef !25
  store i32 %_30, ptr %self.dbg.spill.i9, align 4
    #dbg_declare(ptr %self.dbg.spill.i9, !78, !DIExpression(), !88)
  store i32 1000, ptr %rhs.dbg.spill.i8, align 4
    #dbg_declare(ptr %rhs.dbg.spill.i8, !87, !DIExpression(), !90)
  %62 = call i1 @llvm.expect.i1(i1 false, i1 false), !dbg !91
  br i1 %62, label %panic.i10, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_rem17h444bd8b2161bd3b6E.exit11", !dbg !91

panic.i10:                                        ; preds = %bb19
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.1, i64 57, ptr align 8 @alloc_d1e68eb04df0257e0899e21ea2c814fc) #4, !dbg !91
  unreachable, !dbg !91

"_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_rem17h444bd8b2161bd3b6E.exit11": ; preds = %bb19
  %63 = urem i32 %_30, 1000, !dbg !91
  %64 = icmp eq i32 %63, 0, !dbg !77
  br i1 %64, label %bb32, label %bb35, !dbg !77

bb20:                                             ; preds = %bb18
  %65 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !92
  %66 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !92
  %67 = load i32, ptr %66, align 4, !dbg !92, !noundef !25
  %68 = or i32 %67, 256, !dbg !92
  store i32 %68, ptr %65, align 4, !dbg !92
  br label %bb42, !dbg !93

bb21:                                             ; preds = %bb18
  %69 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !94
  %70 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !94
  %71 = load i32, ptr %70, align 4, !dbg !94, !noundef !25
  %72 = or i32 %71, 512, !dbg !94
  store i32 %72, ptr %69, align 4, !dbg !94
  br label %bb42, !dbg !95

bb22:                                             ; preds = %bb18
  %73 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !96
  %74 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !96
  %75 = load i32, ptr %74, align 4, !dbg !96, !noundef !25
  %76 = or i32 %75, 768, !dbg !96
  store i32 %76, ptr %73, align 4, !dbg !96
  br label %bb42, !dbg !97

bb23:                                             ; preds = %bb18
  %77 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !98
  %78 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !98
  %79 = load i32, ptr %78, align 4, !dbg !98, !noundef !25
  %80 = or i32 %79, 1024, !dbg !98
  store i32 %80, ptr %77, align 4, !dbg !98
  br label %bb42, !dbg !99

bb24:                                             ; preds = %bb18
  %81 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !100
  %82 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !100
  %83 = load i32, ptr %82, align 4, !dbg !100, !noundef !25
  %84 = or i32 %83, 1280, !dbg !100
  store i32 %84, ptr %81, align 4, !dbg !100
  br label %bb42, !dbg !101

bb25:                                             ; preds = %bb18
  %85 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !102
  %86 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !102
  %87 = load i32, ptr %86, align 4, !dbg !102, !noundef !25
  %88 = or i32 %87, 1536, !dbg !102
  store i32 %88, ptr %85, align 4, !dbg !102
  br label %bb42, !dbg !103

bb26:                                             ; preds = %bb18
  %89 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !104
  %90 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !104
  %91 = load i32, ptr %90, align 4, !dbg !104, !noundef !25
  %92 = or i32 %91, 1792, !dbg !104
  store i32 %92, ptr %89, align 4, !dbg !104
  br label %bb42, !dbg !105

bb27:                                             ; preds = %bb18
  %93 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !106
  %94 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !106
  %95 = load i32, ptr %94, align 4, !dbg !106, !noundef !25
  %96 = or i32 %95, 2048, !dbg !106
  store i32 %96, ptr %93, align 4, !dbg !106
  br label %bb42, !dbg !107

bb28:                                             ; preds = %bb18
  %97 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !108
  %98 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !108
  %99 = load i32, ptr %98, align 4, !dbg !108, !noundef !25
  %100 = or i32 %99, 2304, !dbg !108
  store i32 %100, ptr %97, align 4, !dbg !108
  br label %bb42, !dbg !109

bb29:                                             ; preds = %bb18
  %101 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !110
  %102 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !110
  %103 = load i32, ptr %102, align 4, !dbg !110, !noundef !25
  %104 = or i32 %103, 2560, !dbg !110
  store i32 %104, ptr %101, align 4, !dbg !110
  br label %bb42, !dbg !111

bb30:                                             ; preds = %bb18
  %105 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !112
  %106 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !112
  %107 = load i32, ptr %106, align 4, !dbg !112, !noundef !25
  %108 = or i32 %107, 2816, !dbg !112
  store i32 %108, ptr %105, align 4, !dbg !112
  br label %bb42, !dbg !113

bb32:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_rem17h444bd8b2161bd3b6E.exit11"
  %_33 = load i32, ptr %t, align 4, !dbg !114, !noundef !25
  store i32 %_33, ptr %self.dbg.spill.i, align 4
    #dbg_declare(ptr %self.dbg.spill.i, !115, !DIExpression(), !119)
  store i32 1000, ptr %rhs.dbg.spill.i, align 4
    #dbg_declare(ptr %rhs.dbg.spill.i, !118, !DIExpression(), !121)
  %109 = call i1 @llvm.expect.i1(i1 false, i1 false), !dbg !122
  br i1 %109, label %panic.i, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_div17hf40315d2ad7da5c6E.exit", !dbg !122

panic.i:                                          ; preds = %bb32
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.0, i64 25, ptr align 8 @alloc_d1e68eb04df0257e0899e21ea2c814fc) #4, !dbg !122
  unreachable, !dbg !122

"_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_div17hf40315d2ad7da5c6E.exit": ; preds = %bb32
  %110 = udiv i32 %_33, 1000, !dbg !122
  %_31 = icmp ult i32 %110, 256, !dbg !114
  br i1 %_31, label %bb34, label %bb42, !dbg !114

bb35:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_rem17h444bd8b2161bd3b6E.exit11"
  %_36 = load i32, ptr %t, align 4, !dbg !123, !noundef !25
  %_35 = icmp ult i32 %_36, 65536, !dbg !123
  br i1 %_35, label %bb36, label %bb37, !dbg !123

bb37:                                             ; preds = %bb35
  %_39 = load i32, ptr %t, align 4, !dbg !124, !noundef !25
  store i32 %_39, ptr %self.dbg.spill.i6, align 4
    #dbg_declare(ptr %self.dbg.spill.i6, !78, !DIExpression(), !125)
  store i32 10, ptr %rhs.dbg.spill.i5, align 4
    #dbg_declare(ptr %rhs.dbg.spill.i5, !87, !DIExpression(), !127)
  %111 = call i1 @llvm.expect.i1(i1 false, i1 false), !dbg !128
  br i1 %111, label %panic.i7, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_rem17h444bd8b2161bd3b6E.exit", !dbg !128

panic.i7:                                         ; preds = %bb37
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.1, i64 57, ptr align 8 @alloc_d1e68eb04df0257e0899e21ea2c814fc) #4, !dbg !128
  unreachable, !dbg !128

"_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_rem17h444bd8b2161bd3b6E.exit": ; preds = %bb37
  %112 = urem i32 %_39, 10, !dbg !128
  %113 = icmp eq i32 %112, 0, !dbg !124
  br i1 %113, label %bb39, label %bb42, !dbg !124

bb36:                                             ; preds = %bb35
  %114 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !129
  %115 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !129
  %116 = load i32, ptr %115, align 4, !dbg !129, !noundef !25
  %117 = or i32 %116, 3328, !dbg !129
  store i32 %117, ptr %114, align 4, !dbg !129
  br label %bb42, !dbg !130

bb42:                                             ; preds = %bb34, %bb41, %"_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_div17hf40315d2ad7da5c6E.exit4", %bb36, %"_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_rem17h444bd8b2161bd3b6E.exit", %"_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_div17hf40315d2ad7da5c6E.exit", %bb30, %bb29, %bb28, %bb27, %bb26, %bb25, %bb24, %bb23, %bb22, %bb21, %bb20
  %118 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 3, !dbg !131
  %_45 = load i8, ptr %118, align 4, !dbg !131, !noundef !25
  %mode = urem i8 %_45, 4, !dbg !131
  store i8 %mode, ptr %mode.dbg.spill, align 1, !dbg !131
    #dbg_declare(ptr %mode.dbg.spill, !39, !DIExpression(), !132)
  %_46 = zext i8 %mode to i32, !dbg !133
  switch i32 %_46, label %bb48 [
    i32 0, label %bb43
    i32 1, label %bb45
    i32 2, label %bb46
    i32 3, label %bb47
  ], !dbg !134

bb39:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_rem17h444bd8b2161bd3b6E.exit"
  %_42 = load i32, ptr %t, align 4, !dbg !135, !noundef !25
  store i32 %_42, ptr %self.dbg.spill.i2, align 4
    #dbg_declare(ptr %self.dbg.spill.i2, !115, !DIExpression(), !136)
  store i32 10, ptr %rhs.dbg.spill.i1, align 4
    #dbg_declare(ptr %rhs.dbg.spill.i1, !118, !DIExpression(), !138)
  %119 = call i1 @llvm.expect.i1(i1 false, i1 false), !dbg !139
  br i1 %119, label %panic.i3, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_div17hf40315d2ad7da5c6E.exit4", !dbg !139

panic.i3:                                         ; preds = %bb39
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.0, i64 25, ptr align 8 @alloc_d1e68eb04df0257e0899e21ea2c814fc) #4, !dbg !139
  unreachable, !dbg !139

"_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_div17hf40315d2ad7da5c6E.exit4": ; preds = %bb39
  %120 = udiv i32 %_42, 10, !dbg !139
  %_40 = icmp ult i32 %120, 65536, !dbg !135
  br i1 %_40, label %bb41, label %bb42, !dbg !135

bb41:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_div17hf40315d2ad7da5c6E.exit4"
  %121 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !140
  %122 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !140
  %123 = load i32, ptr %122, align 4, !dbg !140, !noundef !25
  %124 = or i32 %123, 3584, !dbg !140
  store i32 %124, ptr %121, align 4, !dbg !140
  br label %bb42, !dbg !141

bb34:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_div17hf40315d2ad7da5c6E.exit"
  %125 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !142
  %126 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !142
  %127 = load i32, ptr %126, align 4, !dbg !142, !noundef !25
  %128 = or i32 %127, 3072, !dbg !142
  store i32 %128, ptr %125, align 4, !dbg !142
  br label %bb42, !dbg !143

bb48:                                             ; preds = %bb47, %bb46, %bb45, %bb43, %bb42
  %129 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 2, !dbg !144
  %130 = load i32, ptr %129, align 4, !dbg !144, !noundef !25
  switch i32 %130, label %bb55 [
    i32 8, label %bb49
    i32 12, label %bb50
    i32 16, label %bb51
    i32 20, label %bb52
    i32 24, label %bb53
    i32 32, label %bb54
  ], !dbg !144

bb43:                                             ; preds = %bb42
  %131 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 1, !dbg !145
  %_49 = load i32, ptr %131, align 4, !dbg !145, !noundef !25
  store i32 %_49, ptr %self.dbg.spill.i13, align 4
    #dbg_declare(ptr %self.dbg.spill.i13, !146, !DIExpression(), !150)
  store i32 1, ptr %rhs.dbg.spill.i12, align 4
    #dbg_declare(ptr %rhs.dbg.spill.i12, !149, !DIExpression(), !152)
  %132 = sub i32 %_49, 1, !dbg !153
  %_47 = shl i32 %132, 4, !dbg !145
  %133 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !154
  %134 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !154
  %135 = load i32, ptr %134, align 4, !dbg !154, !noundef !25
  %136 = or i32 %135, %_47, !dbg !154
  store i32 %136, ptr %133, align 4, !dbg !154
  br label %bb48, !dbg !155

bb45:                                             ; preds = %bb42
  %137 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !156
  %138 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !156
  %139 = load i32, ptr %138, align 4, !dbg !156, !noundef !25
  %140 = or i32 %139, 128, !dbg !156
  store i32 %140, ptr %137, align 4, !dbg !156
  br label %bb48, !dbg !157

bb46:                                             ; preds = %bb42
  %141 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !158
  %142 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !158
  %143 = load i32, ptr %142, align 4, !dbg !158, !noundef !25
  %144 = or i32 %143, 144, !dbg !158
  store i32 %144, ptr %141, align 4, !dbg !158
  br label %bb48, !dbg !159

bb47:                                             ; preds = %bb42
  %145 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !160
  %146 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !160
  %147 = load i32, ptr %146, align 4, !dbg !160, !noundef !25
  %148 = or i32 %147, 160, !dbg !160
  store i32 %148, ptr %145, align 4, !dbg !160
  br label %bb48, !dbg !161

bb55:                                             ; preds = %bb54, %bb53, %bb52, %bb51, %bb50, %bb49, %bb48
  ret void, !dbg !162

bb49:                                             ; preds = %bb48
  %149 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !163
  %150 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !163
  %151 = load i32, ptr %150, align 4, !dbg !163, !noundef !25
  %152 = or i32 %151, 2, !dbg !163
  store i32 %152, ptr %149, align 4, !dbg !163
  br label %bb55, !dbg !164

bb50:                                             ; preds = %bb48
  %153 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !165
  %154 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !165
  %155 = load i32, ptr %154, align 4, !dbg !165, !noundef !25
  %156 = or i32 %155, 4, !dbg !165
  store i32 %156, ptr %153, align 4, !dbg !165
  br label %bb55, !dbg !166

bb51:                                             ; preds = %bb48
  %157 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !167
  %158 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !167
  %159 = load i32, ptr %158, align 4, !dbg !167, !noundef !25
  %160 = or i32 %159, 8, !dbg !167
  store i32 %160, ptr %157, align 4, !dbg !167
  br label %bb55, !dbg !168

bb52:                                             ; preds = %bb48
  %161 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !169
  %162 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !169
  %163 = load i32, ptr %162, align 4, !dbg !169, !noundef !25
  %164 = or i32 %163, 10, !dbg !169
  store i32 %164, ptr %161, align 4, !dbg !169
  br label %bb55, !dbg !170

bb53:                                             ; preds = %bb48
  %165 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !171
  %166 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !171
  %167 = load i32, ptr %166, align 4, !dbg !171, !noundef !25
  %168 = or i32 %167, 12, !dbg !171
  store i32 %168, ptr %165, align 4, !dbg !171
  br label %bb55, !dbg !172

bb54:                                             ; preds = %bb48
  %169 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !173
  %170 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !173
  %171 = load i32, ptr %170, align 4, !dbg !173, !noundef !25
  %172 = or i32 %171, 14, !dbg !173
  store i32 %172, ptr %169, align 4, !dbg !173
  br label %bb55, !dbg !174
}

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking36panic_misaligned_pointer_dereference17h587229c42ea18e2bE(i64, i64, ptr align 8) unnamed_addr #2

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_ZN4core9panicking19panic_cannot_unwind17h629e1da841ab4abfE() unnamed_addr #3

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1, i64, ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_1() unnamed_addr #0 !dbg !175 {
start:
  %_8 = alloca i8, align 1
  %_7 = alloca i8, align 1
  %_6 = alloca i8, align 1
  %_5 = alloca i8, align 1
  %t = alloca %"src::lib::Tflac", align 4
  %0 = alloca i8, align 1
    #dbg_declare(ptr %t, !180, !DIExpression(), !182)
  store i32 0, ptr %t, align 4, !dbg !183
  %1 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 1, !dbg !183
  store i32 0, ptr %1, align 4, !dbg !183
  %2 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 2, !dbg !183
  store i32 0, ptr %2, align 4, !dbg !183
  %3 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 3, !dbg !183
  store i8 0, ptr %3, align 4, !dbg !183
  %4 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !183
  store i32 0, ptr %4, align 4, !dbg !183
  %5 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 6, !dbg !183
  store i32 0, ptr %5, align 4, !dbg !183
  call void @update_frame_header(ptr %t), !dbg !184
  %_9 = load i32, ptr %t, align 4, !dbg !185, !noundef !25
  %6 = icmp eq i32 %_9, 0, !dbg !185
  br i1 %6, label %bb15, label %bb14, !dbg !185

bb15:                                             ; preds = %start
  %7 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 1, !dbg !186
  %_11 = load i32, ptr %7, align 4, !dbg !186, !noundef !25
  %_10 = icmp eq i32 %_11, 0, !dbg !186
  %8 = zext i1 %_10 to i8, !dbg !185
  store i8 %8, ptr %_8, align 1, !dbg !185
  br label %bb16, !dbg !185

bb14:                                             ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !185
  br label %bb16, !dbg !185

bb16:                                             ; preds = %bb14, %bb15
  %9 = load i8, ptr %_8, align 1, !dbg !185, !range !187, !noundef !25
  %10 = trunc i8 %9 to i1, !dbg !185
  br i1 %10, label %bb12, label %bb11, !dbg !185

bb11:                                             ; preds = %bb16
  store i8 0, ptr %_7, align 1, !dbg !185
  br label %bb13, !dbg !185

bb12:                                             ; preds = %bb16
  %11 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 2, !dbg !188
  %_13 = load i32, ptr %11, align 4, !dbg !188, !noundef !25
  %_12 = icmp eq i32 %_13, 0, !dbg !188
  %12 = zext i1 %_12 to i8, !dbg !185
  store i8 %12, ptr %_7, align 1, !dbg !185
  br label %bb13, !dbg !185

bb13:                                             ; preds = %bb12, %bb11
  %13 = load i8, ptr %_7, align 1, !dbg !185, !range !187, !noundef !25
  %14 = trunc i8 %13 to i1, !dbg !185
  br i1 %14, label %bb9, label %bb8, !dbg !185

bb8:                                              ; preds = %bb13
  store i8 0, ptr %_6, align 1, !dbg !185
  br label %bb10, !dbg !185

bb9:                                              ; preds = %bb13
  %15 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 3, !dbg !189
  %_15 = load i8, ptr %15, align 4, !dbg !189, !noundef !25
  %_14 = icmp eq i8 %_15, 0, !dbg !189
  %16 = zext i1 %_14 to i8, !dbg !185
  store i8 %16, ptr %_6, align 1, !dbg !185
  br label %bb10, !dbg !185

bb10:                                             ; preds = %bb9, %bb8
  %17 = load i8, ptr %_6, align 1, !dbg !185, !range !187, !noundef !25
  %18 = trunc i8 %17 to i1, !dbg !185
  br i1 %18, label %bb6, label %bb5, !dbg !185

bb5:                                              ; preds = %bb10
  store i8 0, ptr %_5, align 1, !dbg !185
  br label %bb7, !dbg !185

bb6:                                              ; preds = %bb10
  %19 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !190
  %_17 = load i32, ptr %19, align 4, !dbg !190, !noundef !25
  %_16 = icmp eq i32 %_17, -16, !dbg !190
  %20 = zext i1 %_16 to i8, !dbg !185
  store i8 %20, ptr %_5, align 1, !dbg !185
  br label %bb7, !dbg !185

bb7:                                              ; preds = %bb6, %bb5
  %21 = load i8, ptr %_5, align 1, !dbg !185, !range !187, !noundef !25
  %22 = trunc i8 %21 to i1, !dbg !185
  br i1 %22, label %bb3, label %bb2, !dbg !185

bb2:                                              ; preds = %bb7
  store i8 0, ptr %0, align 1, !dbg !185
  br label %bb4, !dbg !185

bb3:                                              ; preds = %bb7
  %23 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 6, !dbg !191
  %_19 = load i32, ptr %23, align 4, !dbg !191, !noundef !25
  %_18 = icmp eq i32 %_19, 0, !dbg !191
  %24 = zext i1 %_18 to i8, !dbg !185
  store i8 %24, ptr %0, align 1, !dbg !185
  br label %bb4, !dbg !185

bb4:                                              ; preds = %bb3, %bb2
  %25 = load i8, ptr %0, align 1, !dbg !192, !range !187, !noundef !25
  %26 = trunc i8 %25 to i1, !dbg !192
  ret i1 %26, !dbg !192
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_2() unnamed_addr #0 !dbg !193 {
start:
  %_8 = alloca i8, align 1
  %_7 = alloca i8, align 1
  %_6 = alloca i8, align 1
  %_5 = alloca i8, align 1
  %t = alloca %"src::lib::Tflac", align 4
  %0 = alloca i8, align 1
    #dbg_declare(ptr %t, !195, !DIExpression(), !197)
  store i32 882000, ptr %t, align 4, !dbg !198
  %1 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 1, !dbg !198
  store i32 0, ptr %1, align 4, !dbg !198
  %2 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 2, !dbg !198
  store i32 0, ptr %2, align 4, !dbg !198
  %3 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 3, !dbg !198
  store i8 1, ptr %3, align 4, !dbg !198
  %4 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !198
  store i32 0, ptr %4, align 4, !dbg !198
  %5 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 6, !dbg !198
  store i32 192, ptr %5, align 4, !dbg !198
  call void @update_frame_header(ptr %t), !dbg !199
  %_9 = load i32, ptr %t, align 4, !dbg !200, !noundef !25
  %6 = icmp eq i32 %_9, 882000, !dbg !200
  br i1 %6, label %bb15, label %bb14, !dbg !200

bb15:                                             ; preds = %start
  %7 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 1, !dbg !201
  %_11 = load i32, ptr %7, align 4, !dbg !201, !noundef !25
  %_10 = icmp eq i32 %_11, 0, !dbg !201
  %8 = zext i1 %_10 to i8, !dbg !200
  store i8 %8, ptr %_8, align 1, !dbg !200
  br label %bb16, !dbg !200

bb14:                                             ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !200
  br label %bb16, !dbg !200

bb16:                                             ; preds = %bb14, %bb15
  %9 = load i8, ptr %_8, align 1, !dbg !200, !range !187, !noundef !25
  %10 = trunc i8 %9 to i1, !dbg !200
  br i1 %10, label %bb12, label %bb11, !dbg !200

bb11:                                             ; preds = %bb16
  store i8 0, ptr %_7, align 1, !dbg !200
  br label %bb13, !dbg !200

bb12:                                             ; preds = %bb16
  %11 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 2, !dbg !202
  %_13 = load i32, ptr %11, align 4, !dbg !202, !noundef !25
  %_12 = icmp eq i32 %_13, 0, !dbg !202
  %12 = zext i1 %_12 to i8, !dbg !200
  store i8 %12, ptr %_7, align 1, !dbg !200
  br label %bb13, !dbg !200

bb13:                                             ; preds = %bb12, %bb11
  %13 = load i8, ptr %_7, align 1, !dbg !200, !range !187, !noundef !25
  %14 = trunc i8 %13 to i1, !dbg !200
  br i1 %14, label %bb9, label %bb8, !dbg !200

bb8:                                              ; preds = %bb13
  store i8 0, ptr %_6, align 1, !dbg !200
  br label %bb10, !dbg !200

bb9:                                              ; preds = %bb13
  %15 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 3, !dbg !203
  %_15 = load i8, ptr %15, align 4, !dbg !203, !noundef !25
  %_14 = icmp eq i8 %_15, 1, !dbg !203
  %16 = zext i1 %_14 to i8, !dbg !200
  store i8 %16, ptr %_6, align 1, !dbg !200
  br label %bb10, !dbg !200

bb10:                                             ; preds = %bb9, %bb8
  %17 = load i8, ptr %_6, align 1, !dbg !200, !range !187, !noundef !25
  %18 = trunc i8 %17 to i1, !dbg !200
  br i1 %18, label %bb6, label %bb5, !dbg !200

bb5:                                              ; preds = %bb10
  store i8 0, ptr %_5, align 1, !dbg !200
  br label %bb7, !dbg !200

bb6:                                              ; preds = %bb10
  %19 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !204
  %_17 = load i32, ptr %19, align 4, !dbg !204, !noundef !25
  %_16 = icmp eq i32 %_17, -519808, !dbg !204
  %20 = zext i1 %_16 to i8, !dbg !200
  store i8 %20, ptr %_5, align 1, !dbg !200
  br label %bb7, !dbg !200

bb7:                                              ; preds = %bb6, %bb5
  %21 = load i8, ptr %_5, align 1, !dbg !200, !range !187, !noundef !25
  %22 = trunc i8 %21 to i1, !dbg !200
  br i1 %22, label %bb3, label %bb2, !dbg !200

bb2:                                              ; preds = %bb7
  store i8 0, ptr %0, align 1, !dbg !200
  br label %bb4, !dbg !200

bb3:                                              ; preds = %bb7
  %23 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 6, !dbg !205
  %_19 = load i32, ptr %23, align 4, !dbg !205, !noundef !25
  %_18 = icmp eq i32 %_19, 192, !dbg !205
  %24 = zext i1 %_18 to i8, !dbg !200
  store i8 %24, ptr %0, align 1, !dbg !200
  br label %bb4, !dbg !200

bb4:                                              ; preds = %bb3, %bb2
  %25 = load i8, ptr %0, align 1, !dbg !206, !range !187, !noundef !25
  %26 = trunc i8 %25 to i1, !dbg !206
  ret i1 %26, !dbg !206
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_3() unnamed_addr #0 !dbg !207 {
start:
  %_8 = alloca i8, align 1
  %_7 = alloca i8, align 1
  %_6 = alloca i8, align 1
  %_5 = alloca i8, align 1
  %t = alloca %"src::lib::Tflac", align 4
  %0 = alloca i8, align 1
    #dbg_declare(ptr %t, !209, !DIExpression(), !211)
  store i32 882000, ptr %t, align 4, !dbg !212
  %1 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 1, !dbg !212
  store i32 0, ptr %1, align 4, !dbg !212
  %2 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 2, !dbg !212
  store i32 8, ptr %2, align 4, !dbg !212
  %3 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 3, !dbg !212
  store i8 1, ptr %3, align 4, !dbg !212
  %4 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !212
  store i32 0, ptr %4, align 4, !dbg !212
  %5 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 6, !dbg !212
  store i32 192, ptr %5, align 4, !dbg !212
  call void @update_frame_header(ptr %t), !dbg !213
  %_9 = load i32, ptr %t, align 4, !dbg !214, !noundef !25
  %6 = icmp eq i32 %_9, 882000, !dbg !214
  br i1 %6, label %bb15, label %bb14, !dbg !214

bb15:                                             ; preds = %start
  %7 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 1, !dbg !215
  %_11 = load i32, ptr %7, align 4, !dbg !215, !noundef !25
  %_10 = icmp eq i32 %_11, 0, !dbg !215
  %8 = zext i1 %_10 to i8, !dbg !214
  store i8 %8, ptr %_8, align 1, !dbg !214
  br label %bb16, !dbg !214

bb14:                                             ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !214
  br label %bb16, !dbg !214

bb16:                                             ; preds = %bb14, %bb15
  %9 = load i8, ptr %_8, align 1, !dbg !214, !range !187, !noundef !25
  %10 = trunc i8 %9 to i1, !dbg !214
  br i1 %10, label %bb12, label %bb11, !dbg !214

bb11:                                             ; preds = %bb16
  store i8 0, ptr %_7, align 1, !dbg !214
  br label %bb13, !dbg !214

bb12:                                             ; preds = %bb16
  %11 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 2, !dbg !216
  %_13 = load i32, ptr %11, align 4, !dbg !216, !noundef !25
  %_12 = icmp eq i32 %_13, 8, !dbg !216
  %12 = zext i1 %_12 to i8, !dbg !214
  store i8 %12, ptr %_7, align 1, !dbg !214
  br label %bb13, !dbg !214

bb13:                                             ; preds = %bb12, %bb11
  %13 = load i8, ptr %_7, align 1, !dbg !214, !range !187, !noundef !25
  %14 = trunc i8 %13 to i1, !dbg !214
  br i1 %14, label %bb9, label %bb8, !dbg !214

bb8:                                              ; preds = %bb13
  store i8 0, ptr %_6, align 1, !dbg !214
  br label %bb10, !dbg !214

bb9:                                              ; preds = %bb13
  %15 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 3, !dbg !217
  %_15 = load i8, ptr %15, align 4, !dbg !217, !noundef !25
  %_14 = icmp eq i8 %_15, 1, !dbg !217
  %16 = zext i1 %_14 to i8, !dbg !214
  store i8 %16, ptr %_6, align 1, !dbg !214
  br label %bb10, !dbg !214

bb10:                                             ; preds = %bb9, %bb8
  %17 = load i8, ptr %_6, align 1, !dbg !214, !range !187, !noundef !25
  %18 = trunc i8 %17 to i1, !dbg !214
  br i1 %18, label %bb6, label %bb5, !dbg !214

bb5:                                              ; preds = %bb10
  store i8 0, ptr %_5, align 1, !dbg !214
  br label %bb7, !dbg !214

bb6:                                              ; preds = %bb10
  %19 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !218
  %_17 = load i32, ptr %19, align 4, !dbg !218, !noundef !25
  %_16 = icmp eq i32 %_17, -519806, !dbg !218
  %20 = zext i1 %_16 to i8, !dbg !214
  store i8 %20, ptr %_5, align 1, !dbg !214
  br label %bb7, !dbg !214

bb7:                                              ; preds = %bb6, %bb5
  %21 = load i8, ptr %_5, align 1, !dbg !214, !range !187, !noundef !25
  %22 = trunc i8 %21 to i1, !dbg !214
  br i1 %22, label %bb3, label %bb2, !dbg !214

bb2:                                              ; preds = %bb7
  store i8 0, ptr %0, align 1, !dbg !214
  br label %bb4, !dbg !214

bb3:                                              ; preds = %bb7
  %23 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 6, !dbg !219
  %_19 = load i32, ptr %23, align 4, !dbg !219, !noundef !25
  %_18 = icmp eq i32 %_19, 192, !dbg !219
  %24 = zext i1 %_18 to i8, !dbg !214
  store i8 %24, ptr %0, align 1, !dbg !214
  br label %bb4, !dbg !214

bb4:                                              ; preds = %bb3, %bb2
  %25 = load i8, ptr %0, align 1, !dbg !220, !range !187, !noundef !25
  %26 = trunc i8 %25 to i1, !dbg !220
  ret i1 %26, !dbg !220
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_4() unnamed_addr #0 !dbg !221 {
start:
  %_8 = alloca i8, align 1
  %_7 = alloca i8, align 1
  %_6 = alloca i8, align 1
  %_5 = alloca i8, align 1
  %t = alloca %"src::lib::Tflac", align 4
  %0 = alloca i8, align 1
    #dbg_declare(ptr %t, !223, !DIExpression(), !225)
  store i32 882000, ptr %t, align 4, !dbg !226
  %1 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 1, !dbg !226
  store i32 0, ptr %1, align 4, !dbg !226
  %2 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 2, !dbg !226
  store i32 8, ptr %2, align 4, !dbg !226
  %3 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 3, !dbg !226
  store i8 1, ptr %3, align 4, !dbg !226
  %4 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !226
  store i32 0, ptr %4, align 4, !dbg !226
  %5 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 6, !dbg !226
  store i32 576, ptr %5, align 4, !dbg !226
  call void @update_frame_header(ptr %t), !dbg !227
  %_9 = load i32, ptr %t, align 4, !dbg !228, !noundef !25
  %6 = icmp eq i32 %_9, 882000, !dbg !228
  br i1 %6, label %bb15, label %bb14, !dbg !228

bb15:                                             ; preds = %start
  %7 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 1, !dbg !229
  %_11 = load i32, ptr %7, align 4, !dbg !229, !noundef !25
  %_10 = icmp eq i32 %_11, 0, !dbg !229
  %8 = zext i1 %_10 to i8, !dbg !228
  store i8 %8, ptr %_8, align 1, !dbg !228
  br label %bb16, !dbg !228

bb14:                                             ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !228
  br label %bb16, !dbg !228

bb16:                                             ; preds = %bb14, %bb15
  %9 = load i8, ptr %_8, align 1, !dbg !228, !range !187, !noundef !25
  %10 = trunc i8 %9 to i1, !dbg !228
  br i1 %10, label %bb12, label %bb11, !dbg !228

bb11:                                             ; preds = %bb16
  store i8 0, ptr %_7, align 1, !dbg !228
  br label %bb13, !dbg !228

bb12:                                             ; preds = %bb16
  %11 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 2, !dbg !230
  %_13 = load i32, ptr %11, align 4, !dbg !230, !noundef !25
  %_12 = icmp eq i32 %_13, 8, !dbg !230
  %12 = zext i1 %_12 to i8, !dbg !228
  store i8 %12, ptr %_7, align 1, !dbg !228
  br label %bb13, !dbg !228

bb13:                                             ; preds = %bb12, %bb11
  %13 = load i8, ptr %_7, align 1, !dbg !228, !range !187, !noundef !25
  %14 = trunc i8 %13 to i1, !dbg !228
  br i1 %14, label %bb9, label %bb8, !dbg !228

bb8:                                              ; preds = %bb13
  store i8 0, ptr %_6, align 1, !dbg !228
  br label %bb10, !dbg !228

bb9:                                              ; preds = %bb13
  %15 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 3, !dbg !231
  %_15 = load i8, ptr %15, align 4, !dbg !231, !noundef !25
  %_14 = icmp eq i8 %_15, 1, !dbg !231
  %16 = zext i1 %_14 to i8, !dbg !228
  store i8 %16, ptr %_6, align 1, !dbg !228
  br label %bb10, !dbg !228

bb10:                                             ; preds = %bb9, %bb8
  %17 = load i8, ptr %_6, align 1, !dbg !228, !range !187, !noundef !25
  %18 = trunc i8 %17 to i1, !dbg !228
  br i1 %18, label %bb6, label %bb5, !dbg !228

bb5:                                              ; preds = %bb10
  store i8 0, ptr %_5, align 1, !dbg !228
  br label %bb7, !dbg !228

bb6:                                              ; preds = %bb10
  %19 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !232
  %_17 = load i32, ptr %19, align 4, !dbg !232, !noundef !25
  %_16 = icmp eq i32 %_17, -515710, !dbg !232
  %20 = zext i1 %_16 to i8, !dbg !228
  store i8 %20, ptr %_5, align 1, !dbg !228
  br label %bb7, !dbg !228

bb7:                                              ; preds = %bb6, %bb5
  %21 = load i8, ptr %_5, align 1, !dbg !228, !range !187, !noundef !25
  %22 = trunc i8 %21 to i1, !dbg !228
  br i1 %22, label %bb3, label %bb2, !dbg !228

bb2:                                              ; preds = %bb7
  store i8 0, ptr %0, align 1, !dbg !228
  br label %bb4, !dbg !228

bb3:                                              ; preds = %bb7
  %23 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 6, !dbg !233
  %_19 = load i32, ptr %23, align 4, !dbg !233, !noundef !25
  %_18 = icmp eq i32 %_19, 576, !dbg !233
  %24 = zext i1 %_18 to i8, !dbg !228
  store i8 %24, ptr %0, align 1, !dbg !228
  br label %bb4, !dbg !228

bb4:                                              ; preds = %bb3, %bb2
  %25 = load i8, ptr %0, align 1, !dbg !234, !range !187, !noundef !25
  %26 = trunc i8 %25 to i1, !dbg !234
  ret i1 %26, !dbg !234
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_5() unnamed_addr #0 !dbg !235 {
start:
  %_8 = alloca i8, align 1
  %_7 = alloca i8, align 1
  %_6 = alloca i8, align 1
  %_5 = alloca i8, align 1
  %t = alloca %"src::lib::Tflac", align 4
  %0 = alloca i8, align 1
    #dbg_declare(ptr %t, !237, !DIExpression(), !239)
  store i32 176400, ptr %t, align 4, !dbg !240
  %1 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 1, !dbg !240
  store i32 0, ptr %1, align 4, !dbg !240
  %2 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 2, !dbg !240
  store i32 8, ptr %2, align 4, !dbg !240
  %3 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 3, !dbg !240
  store i8 1, ptr %3, align 4, !dbg !240
  %4 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !240
  store i32 0, ptr %4, align 4, !dbg !240
  %5 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 6, !dbg !240
  store i32 576, ptr %5, align 4, !dbg !240
  call void @update_frame_header(ptr %t), !dbg !241
  %_9 = load i32, ptr %t, align 4, !dbg !242, !noundef !25
  %6 = icmp eq i32 %_9, 176400, !dbg !242
  br i1 %6, label %bb15, label %bb14, !dbg !242

bb15:                                             ; preds = %start
  %7 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 1, !dbg !243
  %_11 = load i32, ptr %7, align 4, !dbg !243, !noundef !25
  %_10 = icmp eq i32 %_11, 0, !dbg !243
  %8 = zext i1 %_10 to i8, !dbg !242
  store i8 %8, ptr %_8, align 1, !dbg !242
  br label %bb16, !dbg !242

bb14:                                             ; preds = %start
  store i8 0, ptr %_8, align 1, !dbg !242
  br label %bb16, !dbg !242

bb16:                                             ; preds = %bb14, %bb15
  %9 = load i8, ptr %_8, align 1, !dbg !242, !range !187, !noundef !25
  %10 = trunc i8 %9 to i1, !dbg !242
  br i1 %10, label %bb12, label %bb11, !dbg !242

bb11:                                             ; preds = %bb16
  store i8 0, ptr %_7, align 1, !dbg !242
  br label %bb13, !dbg !242

bb12:                                             ; preds = %bb16
  %11 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 2, !dbg !244
  %_13 = load i32, ptr %11, align 4, !dbg !244, !noundef !25
  %_12 = icmp eq i32 %_13, 8, !dbg !244
  %12 = zext i1 %_12 to i8, !dbg !242
  store i8 %12, ptr %_7, align 1, !dbg !242
  br label %bb13, !dbg !242

bb13:                                             ; preds = %bb12, %bb11
  %13 = load i8, ptr %_7, align 1, !dbg !242, !range !187, !noundef !25
  %14 = trunc i8 %13 to i1, !dbg !242
  br i1 %14, label %bb9, label %bb8, !dbg !242

bb8:                                              ; preds = %bb13
  store i8 0, ptr %_6, align 1, !dbg !242
  br label %bb10, !dbg !242

bb9:                                              ; preds = %bb13
  %15 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 3, !dbg !245
  %_15 = load i8, ptr %15, align 4, !dbg !245, !noundef !25
  %_14 = icmp eq i8 %_15, 1, !dbg !245
  %16 = zext i1 %_14 to i8, !dbg !242
  store i8 %16, ptr %_6, align 1, !dbg !242
  br label %bb10, !dbg !242

bb10:                                             ; preds = %bb9, %bb8
  %17 = load i8, ptr %_6, align 1, !dbg !242, !range !187, !noundef !25
  %18 = trunc i8 %17 to i1, !dbg !242
  br i1 %18, label %bb6, label %bb5, !dbg !242

bb5:                                              ; preds = %bb10
  store i8 0, ptr %_5, align 1, !dbg !242
  br label %bb7, !dbg !242

bb6:                                              ; preds = %bb10
  %19 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 5, !dbg !246
  %_17 = load i32, ptr %19, align 4, !dbg !246, !noundef !25
  %_16 = icmp eq i32 %_17, -515454, !dbg !246
  %20 = zext i1 %_16 to i8, !dbg !242
  store i8 %20, ptr %_5, align 1, !dbg !242
  br label %bb7, !dbg !242

bb7:                                              ; preds = %bb6, %bb5
  %21 = load i8, ptr %_5, align 1, !dbg !242, !range !187, !noundef !25
  %22 = trunc i8 %21 to i1, !dbg !242
  br i1 %22, label %bb3, label %bb2, !dbg !242

bb2:                                              ; preds = %bb7
  store i8 0, ptr %0, align 1, !dbg !242
  br label %bb4, !dbg !242

bb3:                                              ; preds = %bb7
  %23 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i32 0, i32 6, !dbg !247
  %_19 = load i32, ptr %23, align 4, !dbg !247, !noundef !25
  %_18 = icmp eq i32 %_19, 576, !dbg !247
  %24 = zext i1 %_18 to i8, !dbg !242
  store i8 %24, ptr %0, align 1, !dbg !242
  br label %bb4, !dbg !242

bb4:                                              ; preds = %bb3, %bb2
  %25 = load i8, ptr %0, align 1, !dbg !248, !range !187, !noundef !25
  %26 = trunc i8 %25 to i1, !dbg !248
  ret i1 %26, !dbg !248
}

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #2 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { noreturn }
attributes #5 = { noinline noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}

!0 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !1, producer: "clang LLVM (rustc version 1.70.0-nightly (84dd17b56 2023-04-14))", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!1 = !DIFile(filename: "lib.rs/@/965ar07rn6dt11j", directory: "/crisp-rust-outputs/B01_organic/update_frame_header_lib/translated_rust")
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 2, !"RtLibUseGOT", i32 1}
!4 = !{i32 2, !"Dwarf Version", i32 4}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = distinct !DISubprogram(name: "update_frame_header_ffi", linkageName: "update_frame_header", scope: !8, file: !7, line: 165, type: !11, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !25, retainedNodes: !26)
!7 = !DIFile(filename: "src/lib.rs", directory: "/crisp-rust-outputs/B01_organic/update_frame_header_lib/translated_rust", checksumkind: CSK_MD5, checksum: "fe4933349fbf6b13ae761485917a96f9")
!8 = !DINamespace(name: "lib", scope: !9)
!9 = !DINamespace(name: "src", scope: !10)
!10 = !DINamespace(name: "update_frame_header_lib", scope: null)
!11 = !DISubroutineType(types: !12)
!12 = !{null, !13}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut update_frame_header_lib::src::lib::Tflac", baseType: !14, size: 64, align: 64, dwarfAddressSpace: 0)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Tflac", scope: !8, file: !15, size: 192, align: 32, elements: !16, templateParams: !25, identifier: "bfc2ef69bfd8a3a160d1d3510269d91e")
!15 = !DIFile(filename: "<unknown>", directory: "")
!16 = !{!17, !19, !20, !21, !23, !24}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "samplerate", scope: !14, file: !15, baseType: !18, size: 32, align: 32)
!18 = !DIBasicType(name: "u32", size: 32, encoding: DW_ATE_unsigned)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !14, file: !15, baseType: !18, size: 32, align: 32, offset: 32)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "bitdepth", scope: !14, file: !15, baseType: !18, size: 32, align: 32, offset: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "channel_mode", scope: !14, file: !15, baseType: !22, size: 8, align: 8, offset: 96)
!22 = !DIBasicType(name: "u8", size: 8, encoding: DW_ATE_unsigned)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "frame_header", scope: !14, file: !15, baseType: !18, size: 32, align: 32, offset: 128)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "cur_blocksize", scope: !14, file: !15, baseType: !18, size: 32, align: 32, offset: 160)
!25 = !{}
!26 = !{!27}
!27 = !DILocalVariable(name: "t", arg: 1, scope: !6, file: !7, line: 165, type: !13)
!28 = !DILocation(line: 165, column: 50, scope: !6)
!29 = !DILocation(line: 166, column: 25, scope: !6)
!30 = !DILocation(line: 166, column: 5, scope: !6)
!31 = !DILocation(line: 167, column: 2, scope: !6)
!32 = !DILocation(line: 165, column: 1, scope: !6)
!33 = distinct !DISubprogram(name: "update_frame_header", linkageName: "_ZN23update_frame_header_lib3src3lib19update_frame_header17ha65a98ba98134ea8E", scope: !8, file: !7, line: 23, type: !34, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !25, retainedNodes: !37)
!34 = !DISubroutineType(types: !35)
!35 = !{null, !36}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut update_frame_header_lib::src::lib::Tflac", baseType: !14, size: 64, align: 64, dwarfAddressSpace: 0)
!37 = !{!38, !39}
!38 = !DILocalVariable(name: "t", arg: 1, scope: !33, file: !7, line: 23, type: !36)
!39 = !DILocalVariable(name: "mode", scope: !40, file: !7, line: 124, type: !22, align: 1)
!40 = distinct !DILexicalBlock(scope: !33, file: !7, line: 124, column: 5)
!41 = !DILocation(line: 23, column: 28, scope: !33)
!42 = !DILocation(line: 24, column: 5, scope: !33)
!43 = !DILocation(line: 26, column: 5, scope: !33)
!44 = !DILocation(line: 67, column: 34, scope: !33)
!45 = !DILocation(line: 28, column: 13, scope: !33)
!46 = !DILocation(line: 27, column: 16, scope: !33)
!47 = !DILocation(line: 31, column: 13, scope: !33)
!48 = !DILocation(line: 30, column: 16, scope: !33)
!49 = !DILocation(line: 34, column: 13, scope: !33)
!50 = !DILocation(line: 33, column: 17, scope: !33)
!51 = !DILocation(line: 37, column: 13, scope: !33)
!52 = !DILocation(line: 36, column: 17, scope: !33)
!53 = !DILocation(line: 40, column: 13, scope: !33)
!54 = !DILocation(line: 39, column: 17, scope: !33)
!55 = !DILocation(line: 43, column: 13, scope: !33)
!56 = !DILocation(line: 42, column: 16, scope: !33)
!57 = !DILocation(line: 46, column: 13, scope: !33)
!58 = !DILocation(line: 45, column: 16, scope: !33)
!59 = !DILocation(line: 49, column: 13, scope: !33)
!60 = !DILocation(line: 48, column: 17, scope: !33)
!61 = !DILocation(line: 52, column: 13, scope: !33)
!62 = !DILocation(line: 51, column: 17, scope: !33)
!63 = !DILocation(line: 55, column: 13, scope: !33)
!64 = !DILocation(line: 54, column: 17, scope: !33)
!65 = !DILocation(line: 58, column: 13, scope: !33)
!66 = !DILocation(line: 57, column: 17, scope: !33)
!67 = !DILocation(line: 61, column: 13, scope: !33)
!68 = !DILocation(line: 60, column: 18, scope: !33)
!69 = !DILocation(line: 64, column: 13, scope: !33)
!70 = !DILocation(line: 63, column: 18, scope: !33)
!71 = !DILocation(line: 70, column: 17, scope: !33)
!72 = !DILocation(line: 67, column: 31, scope: !33)
!73 = !DILocation(line: 68, column: 17, scope: !33)
!74 = !DILocation(line: 67, column: 13, scope: !33)
!75 = !DILocation(line: 66, column: 14, scope: !33)
!76 = !DILocation(line: 75, column: 5, scope: !33)
!77 = !DILocation(line: 110, column: 16, scope: !33)
!78 = !DILocalVariable(name: "self", arg: 1, scope: !79, file: !80, line: 1322, type: !18)
!79 = distinct !DISubprogram(name: "wrapping_rem", linkageName: "_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_rem17h444bd8b2161bd3b6E", scope: !81, file: !80, line: 1322, type: !84, scopeLine: 1322, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !25, retainedNodes: !86)
!80 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/num/uint_macros.rs", directory: "", checksumkind: CSK_MD5, checksum: "b2a733f80e3cd43066f918bdafc87bd0")
!81 = !DINamespace(name: "{impl#8}", scope: !82)
!82 = !DINamespace(name: "num", scope: !83)
!83 = !DINamespace(name: "core", scope: null)
!84 = !DISubroutineType(types: !85)
!85 = !{!18, !18, !18}
!86 = !{!78, !87}
!87 = !DILocalVariable(name: "rhs", arg: 2, scope: !79, file: !80, line: 1322, type: !18)
!88 = !DILocation(line: 1322, column: 35, scope: !79, inlinedAt: !89)
!89 = distinct !DILocation(line: 110, column: 16, scope: !33)
!90 = !DILocation(line: 1322, column: 41, scope: !79, inlinedAt: !89)
!91 = !DILocation(line: 1323, column: 13, scope: !79, inlinedAt: !89)
!92 = !DILocation(line: 77, column: 13, scope: !33)
!93 = !DILocation(line: 76, column: 19, scope: !33)
!94 = !DILocation(line: 80, column: 13, scope: !33)
!95 = !DILocation(line: 79, column: 19, scope: !33)
!96 = !DILocation(line: 83, column: 13, scope: !33)
!97 = !DILocation(line: 82, column: 19, scope: !33)
!98 = !DILocation(line: 86, column: 13, scope: !33)
!99 = !DILocation(line: 85, column: 17, scope: !33)
!100 = !DILocation(line: 89, column: 13, scope: !33)
!101 = !DILocation(line: 88, column: 18, scope: !33)
!102 = !DILocation(line: 92, column: 13, scope: !33)
!103 = !DILocation(line: 91, column: 18, scope: !33)
!104 = !DILocation(line: 95, column: 13, scope: !33)
!105 = !DILocation(line: 94, column: 18, scope: !33)
!106 = !DILocation(line: 98, column: 13, scope: !33)
!107 = !DILocation(line: 97, column: 18, scope: !33)
!108 = !DILocation(line: 101, column: 13, scope: !33)
!109 = !DILocation(line: 100, column: 18, scope: !33)
!110 = !DILocation(line: 104, column: 13, scope: !33)
!111 = !DILocation(line: 103, column: 18, scope: !33)
!112 = !DILocation(line: 107, column: 13, scope: !33)
!113 = !DILocation(line: 106, column: 18, scope: !33)
!114 = !DILocation(line: 111, column: 20, scope: !33)
!115 = !DILocalVariable(name: "self", arg: 1, scope: !116, file: !80, line: 1274, type: !18)
!116 = distinct !DISubprogram(name: "wrapping_div", linkageName: "_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_div17hf40315d2ad7da5c6E", scope: !81, file: !80, line: 1274, type: !84, scopeLine: 1274, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !25, retainedNodes: !117)
!117 = !{!115, !118}
!118 = !DILocalVariable(name: "rhs", arg: 2, scope: !116, file: !80, line: 1274, type: !18)
!119 = !DILocation(line: 1274, column: 35, scope: !116, inlinedAt: !120)
!120 = distinct !DILocation(line: 111, column: 20, scope: !33)
!121 = !DILocation(line: 1274, column: 41, scope: !116, inlinedAt: !120)
!122 = !DILocation(line: 1275, column: 13, scope: !116, inlinedAt: !120)
!123 = !DILocation(line: 114, column: 23, scope: !33)
!124 = !DILocation(line: 116, column: 23, scope: !33)
!125 = !DILocation(line: 1322, column: 35, scope: !79, inlinedAt: !126)
!126 = distinct !DILocation(line: 116, column: 23, scope: !33)
!127 = !DILocation(line: 1322, column: 41, scope: !79, inlinedAt: !126)
!128 = !DILocation(line: 1323, column: 13, scope: !79, inlinedAt: !126)
!129 = !DILocation(line: 115, column: 17, scope: !33)
!130 = !DILocation(line: 114, column: 20, scope: !33)
!131 = !DILocation(line: 124, column: 25, scope: !33)
!132 = !DILocation(line: 124, column: 9, scope: !40)
!133 = !DILocation(line: 125, column: 11, scope: !40)
!134 = !DILocation(line: 125, column: 5, scope: !40)
!135 = !DILocation(line: 117, column: 20, scope: !33)
!136 = !DILocation(line: 1274, column: 35, scope: !116, inlinedAt: !137)
!137 = distinct !DILocation(line: 117, column: 20, scope: !33)
!138 = !DILocation(line: 1274, column: 41, scope: !116, inlinedAt: !137)
!139 = !DILocation(line: 1275, column: 13, scope: !116, inlinedAt: !137)
!140 = !DILocation(line: 118, column: 21, scope: !33)
!141 = !DILocation(line: 116, column: 20, scope: !33)
!142 = !DILocation(line: 112, column: 21, scope: !33)
!143 = !DILocation(line: 110, column: 13, scope: !33)
!144 = !DILocation(line: 141, column: 5, scope: !40)
!145 = !DILocation(line: 127, column: 31, scope: !40)
!146 = !DILocalVariable(name: "self", arg: 1, scope: !147, file: !80, line: 1229, type: !18)
!147 = distinct !DISubprogram(name: "wrapping_sub", linkageName: "_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_sub17hb7724822f5ad2c8fE", scope: !81, file: !80, line: 1229, type: !84, scopeLine: 1229, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !25, retainedNodes: !148)
!148 = !{!146, !149}
!149 = !DILocalVariable(name: "rhs", arg: 2, scope: !147, file: !80, line: 1229, type: !18)
!150 = !DILocation(line: 1229, column: 35, scope: !147, inlinedAt: !151)
!151 = distinct !DILocation(line: 127, column: 31, scope: !40)
!152 = !DILocation(line: 1229, column: 41, scope: !147, inlinedAt: !151)
!153 = !DILocation(line: 1230, column: 13, scope: !147, inlinedAt: !151)
!154 = !DILocation(line: 127, column: 13, scope: !40)
!155 = !DILocation(line: 126, column: 14, scope: !40)
!156 = !DILocation(line: 130, column: 13, scope: !40)
!157 = !DILocation(line: 129, column: 14, scope: !40)
!158 = !DILocation(line: 133, column: 13, scope: !40)
!159 = !DILocation(line: 132, column: 14, scope: !40)
!160 = !DILocation(line: 136, column: 13, scope: !40)
!161 = !DILocation(line: 135, column: 14, scope: !40)
!162 = !DILocation(line: 162, column: 2, scope: !33)
!163 = !DILocation(line: 143, column: 13, scope: !40)
!164 = !DILocation(line: 142, column: 14, scope: !40)
!165 = !DILocation(line: 146, column: 13, scope: !40)
!166 = !DILocation(line: 145, column: 15, scope: !40)
!167 = !DILocation(line: 149, column: 13, scope: !40)
!168 = !DILocation(line: 148, column: 15, scope: !40)
!169 = !DILocation(line: 152, column: 13, scope: !40)
!170 = !DILocation(line: 151, column: 15, scope: !40)
!171 = !DILocation(line: 155, column: 13, scope: !40)
!172 = !DILocation(line: 154, column: 15, scope: !40)
!173 = !DILocation(line: 158, column: 13, scope: !40)
!174 = !DILocation(line: 157, column: 15, scope: !40)
!175 = distinct !DISubprogram(name: "run_test_1", scope: !8, file: !7, line: 170, type: !176, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !25, retainedNodes: !179)
!176 = !DISubroutineType(types: !177)
!177 = !{!178}
!178 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!179 = !{!180}
!180 = !DILocalVariable(name: "t", scope: !181, file: !7, line: 171, type: !14, align: 4)
!181 = distinct !DILexicalBlock(scope: !175, file: !7, line: 171, column: 5)
!182 = !DILocation(line: 171, column: 9, scope: !181)
!183 = !DILocation(line: 171, column: 17, scope: !175)
!184 = !DILocation(line: 179, column: 5, scope: !181)
!185 = !DILocation(line: 180, column: 5, scope: !181)
!186 = !DILocation(line: 181, column: 12, scope: !181)
!187 = !{i8 0, i8 2}
!188 = !DILocation(line: 182, column: 12, scope: !181)
!189 = !DILocation(line: 183, column: 12, scope: !181)
!190 = !DILocation(line: 184, column: 12, scope: !181)
!191 = !DILocation(line: 185, column: 12, scope: !181)
!192 = !DILocation(line: 186, column: 2, scope: !175)
!193 = distinct !DISubprogram(name: "run_test_2", scope: !8, file: !7, line: 189, type: !176, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !25, retainedNodes: !194)
!194 = !{!195}
!195 = !DILocalVariable(name: "t", scope: !196, file: !7, line: 190, type: !14, align: 4)
!196 = distinct !DILexicalBlock(scope: !193, file: !7, line: 190, column: 5)
!197 = !DILocation(line: 190, column: 9, scope: !196)
!198 = !DILocation(line: 190, column: 17, scope: !193)
!199 = !DILocation(line: 198, column: 5, scope: !196)
!200 = !DILocation(line: 199, column: 5, scope: !196)
!201 = !DILocation(line: 200, column: 12, scope: !196)
!202 = !DILocation(line: 201, column: 12, scope: !196)
!203 = !DILocation(line: 202, column: 12, scope: !196)
!204 = !DILocation(line: 203, column: 12, scope: !196)
!205 = !DILocation(line: 204, column: 12, scope: !196)
!206 = !DILocation(line: 205, column: 2, scope: !193)
!207 = distinct !DISubprogram(name: "run_test_3", scope: !8, file: !7, line: 208, type: !176, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !25, retainedNodes: !208)
!208 = !{!209}
!209 = !DILocalVariable(name: "t", scope: !210, file: !7, line: 209, type: !14, align: 4)
!210 = distinct !DILexicalBlock(scope: !207, file: !7, line: 209, column: 5)
!211 = !DILocation(line: 209, column: 9, scope: !210)
!212 = !DILocation(line: 209, column: 17, scope: !207)
!213 = !DILocation(line: 217, column: 5, scope: !210)
!214 = !DILocation(line: 218, column: 5, scope: !210)
!215 = !DILocation(line: 219, column: 12, scope: !210)
!216 = !DILocation(line: 220, column: 12, scope: !210)
!217 = !DILocation(line: 221, column: 12, scope: !210)
!218 = !DILocation(line: 222, column: 12, scope: !210)
!219 = !DILocation(line: 223, column: 12, scope: !210)
!220 = !DILocation(line: 224, column: 2, scope: !207)
!221 = distinct !DISubprogram(name: "run_test_4", scope: !8, file: !7, line: 227, type: !176, scopeLine: 227, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !25, retainedNodes: !222)
!222 = !{!223}
!223 = !DILocalVariable(name: "t", scope: !224, file: !7, line: 228, type: !14, align: 4)
!224 = distinct !DILexicalBlock(scope: !221, file: !7, line: 228, column: 5)
!225 = !DILocation(line: 228, column: 9, scope: !224)
!226 = !DILocation(line: 228, column: 17, scope: !221)
!227 = !DILocation(line: 236, column: 5, scope: !224)
!228 = !DILocation(line: 237, column: 5, scope: !224)
!229 = !DILocation(line: 238, column: 12, scope: !224)
!230 = !DILocation(line: 239, column: 12, scope: !224)
!231 = !DILocation(line: 240, column: 12, scope: !224)
!232 = !DILocation(line: 241, column: 12, scope: !224)
!233 = !DILocation(line: 242, column: 12, scope: !224)
!234 = !DILocation(line: 243, column: 2, scope: !221)
!235 = distinct !DISubprogram(name: "run_test_5", scope: !8, file: !7, line: 246, type: !176, scopeLine: 246, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !25, retainedNodes: !236)
!236 = !{!237}
!237 = !DILocalVariable(name: "t", scope: !238, file: !7, line: 247, type: !14, align: 4)
!238 = distinct !DILexicalBlock(scope: !235, file: !7, line: 247, column: 5)
!239 = !DILocation(line: 247, column: 9, scope: !238)
!240 = !DILocation(line: 247, column: 17, scope: !235)
!241 = !DILocation(line: 255, column: 5, scope: !238)
!242 = !DILocation(line: 256, column: 5, scope: !238)
!243 = !DILocation(line: 257, column: 12, scope: !238)
!244 = !DILocation(line: 258, column: 12, scope: !238)
!245 = !DILocation(line: 259, column: 12, scope: !238)
!246 = !DILocation(line: 260, column: 12, scope: !238)
!247 = !DILocation(line: 261, column: 12, scope: !238)
!248 = !DILocation(line: 262, column: 2, scope: !235)
