; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@alloc_e14f096bd30e7c4fffb0d07638e6275d = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/num/mod.rs" }>, align 1
@alloc_d1e68eb04df0257e0899e21ea2c814fc = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e14f096bd30e7c4fffb0d07638e6275d, [16 x i8] c"K\00\00\00\00\00\00\00/\04\00\00\05\00\00\00" }>, align 8
@str.0 = internal constant [25 x i8] c"attempt to divide by zero"

; Function Attrs: nonlazybind uwtable
define i32 @max_size_frame(i32 %blocksize, i32 %channels, i32 %bitdepth) unnamed_addr #0 !dbg !6 {
start:
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 %blocksize, ptr %blocksize.dbg.spill, align 4
    #dbg_declare(ptr %blocksize.dbg.spill, !15, !DIExpression(), !19)
  store i32 %channels, ptr %channels.dbg.spill, align 4
    #dbg_declare(ptr %channels.dbg.spill, !16, !DIExpression(), !20)
  store i32 %bitdepth, ptr %bitdepth.dbg.spill, align 4
    #dbg_declare(ptr %bitdepth.dbg.spill, !17, !DIExpression(), !21)
  %0 = call i32 @_ZN18max_size_frame_lib3src3lib14max_size_frame17haa8e092ae8de9b50E(i32 %blocksize, i32 %channels, i32 %bitdepth), !dbg !22
  ret i32 %0, !dbg !23
}

; Function Attrs: nonlazybind uwtable
define internal i32 @_ZN18max_size_frame_lib3src3lib14max_size_frame17haa8e092ae8de9b50E(i32 %blocksize, i32 %channels, i32 %bitdepth) unnamed_addr #0 !dbg !24 {
start:
  %rhs.dbg.spill.i25 = alloca i32, align 4
  %self.dbg.spill.i26 = alloca i32, align 4
  %rhs.dbg.spill.i23 = alloca i32, align 4
  %self.dbg.spill.i24 = alloca i32, align 4
  %rhs.dbg.spill.i21 = alloca i32, align 4
  %self.dbg.spill.i22 = alloca i32, align 4
  %rhs.dbg.spill.i19 = alloca i32, align 4
  %self.dbg.spill.i20 = alloca i32, align 4
  %rhs.dbg.spill.i17 = alloca i32, align 4
  %self.dbg.spill.i18 = alloca i32, align 4
  %rhs.dbg.spill.i15 = alloca i32, align 4
  %self.dbg.spill.i16 = alloca i32, align 4
  %rhs.dbg.spill.i13 = alloca i32, align 4
  %self.dbg.spill.i14 = alloca i32, align 4
  %rhs.dbg.spill.i11 = alloca i32, align 4
  %self.dbg.spill.i12 = alloca i32, align 4
  %rhs.dbg.spill.i9 = alloca i32, align 4
  %self.dbg.spill.i10 = alloca i32, align 4
  %rhs.dbg.spill.i7 = alloca i32, align 4
  %self.dbg.spill.i8 = alloca i32, align 4
  %rhs.dbg.spill.i5 = alloca i32, align 4
  %self.dbg.spill.i6 = alloca i32, align 4
  %rhs.dbg.spill.i3 = alloca i32, align 4
  %self.dbg.spill.i4 = alloca i32, align 4
  %rhs.dbg.spill.i1 = alloca i32, align 4
  %self.dbg.spill.i2 = alloca i32, align 4
  %rhs.dbg.spill.i = alloca i32, align 4
  %self.dbg.spill.i = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 %blocksize, ptr %blocksize.dbg.spill, align 4
    #dbg_declare(ptr %blocksize.dbg.spill, !26, !DIExpression(), !29)
  store i32 %channels, ptr %channels.dbg.spill, align 4
    #dbg_declare(ptr %channels.dbg.spill, !27, !DIExpression(), !30)
  store i32 %bitdepth, ptr %bitdepth.dbg.spill, align 4
    #dbg_declare(ptr %bitdepth.dbg.spill, !28, !DIExpression(), !31)
  store i32 18, ptr %self.dbg.spill.i10, align 4
    #dbg_declare(ptr %self.dbg.spill.i10, !32, !DIExpression(), !42)
  store i32 %channels, ptr %rhs.dbg.spill.i9, align 4
    #dbg_declare(ptr %rhs.dbg.spill.i9, !41, !DIExpression(), !44)
  %0 = add i32 18, %channels, !dbg !45
  store i32 %blocksize, ptr %self.dbg.spill.i26, align 4
    #dbg_declare(ptr %self.dbg.spill.i26, !46, !DIExpression(), !50)
  store i32 %bitdepth, ptr %rhs.dbg.spill.i25, align 4
    #dbg_declare(ptr %rhs.dbg.spill.i25, !49, !DIExpression(), !52)
  %1 = mul i32 %blocksize, %bitdepth, !dbg !53
  %_14 = icmp ne i32 %channels, 2, !dbg !54
  %_13 = zext i1 %_14 to i32, !dbg !54
  store i32 %channels, ptr %self.dbg.spill.i24, align 4
    #dbg_declare(ptr %self.dbg.spill.i24, !46, !DIExpression(), !55)
  store i32 %_13, ptr %rhs.dbg.spill.i23, align 4
    #dbg_declare(ptr %rhs.dbg.spill.i23, !49, !DIExpression(), !57)
  %2 = mul i32 %channels, %_13, !dbg !58
  store i32 %1, ptr %self.dbg.spill.i22, align 4
    #dbg_declare(ptr %self.dbg.spill.i22, !46, !DIExpression(), !59)
  store i32 %2, ptr %rhs.dbg.spill.i21, align 4
    #dbg_declare(ptr %rhs.dbg.spill.i21, !49, !DIExpression(), !61)
  %3 = mul i32 %1, %2, !dbg !62
  store i32 %blocksize, ptr %self.dbg.spill.i20, align 4
    #dbg_declare(ptr %self.dbg.spill.i20, !46, !DIExpression(), !63)
  store i32 %bitdepth, ptr %rhs.dbg.spill.i19, align 4
    #dbg_declare(ptr %rhs.dbg.spill.i19, !49, !DIExpression(), !65)
  %4 = mul i32 %blocksize, %bitdepth, !dbg !66
  %_18 = icmp eq i32 %channels, 2, !dbg !67
  %_17 = zext i1 %_18 to i32, !dbg !67
  store i32 %4, ptr %self.dbg.spill.i18, align 4
    #dbg_declare(ptr %self.dbg.spill.i18, !46, !DIExpression(), !68)
  store i32 %_17, ptr %rhs.dbg.spill.i17, align 4
    #dbg_declare(ptr %rhs.dbg.spill.i17, !49, !DIExpression(), !70)
  %5 = mul i32 %4, %_17, !dbg !71
  store i32 %3, ptr %self.dbg.spill.i8, align 4
    #dbg_declare(ptr %self.dbg.spill.i8, !32, !DIExpression(), !72)
  store i32 %5, ptr %rhs.dbg.spill.i7, align 4
    #dbg_declare(ptr %rhs.dbg.spill.i7, !41, !DIExpression(), !74)
  %6 = add i32 %3, %5, !dbg !75
  %_23 = icmp ne i32 %bitdepth, 32, !dbg !76
  %_22 = zext i1 %_23 to i32, !dbg !76
  store i32 %bitdepth, ptr %self.dbg.spill.i6, align 4
    #dbg_declare(ptr %self.dbg.spill.i6, !32, !DIExpression(), !77)
  store i32 %_22, ptr %rhs.dbg.spill.i5, align 4
    #dbg_declare(ptr %rhs.dbg.spill.i5, !41, !DIExpression(), !79)
  %7 = add i32 %bitdepth, %_22, !dbg !80
  store i32 %blocksize, ptr %self.dbg.spill.i16, align 4
    #dbg_declare(ptr %self.dbg.spill.i16, !46, !DIExpression(), !81)
  store i32 %7, ptr %rhs.dbg.spill.i15, align 4
    #dbg_declare(ptr %rhs.dbg.spill.i15, !49, !DIExpression(), !83)
  %8 = mul i32 %blocksize, %7, !dbg !84
  %_25 = icmp eq i32 %channels, 2, !dbg !85
  %_24 = zext i1 %_25 to i32, !dbg !85
  store i32 %8, ptr %self.dbg.spill.i14, align 4
    #dbg_declare(ptr %self.dbg.spill.i14, !46, !DIExpression(), !86)
  store i32 %_24, ptr %rhs.dbg.spill.i13, align 4
    #dbg_declare(ptr %rhs.dbg.spill.i13, !49, !DIExpression(), !88)
  %9 = mul i32 %8, %_24, !dbg !89
  store i32 %6, ptr %self.dbg.spill.i4, align 4
    #dbg_declare(ptr %self.dbg.spill.i4, !32, !DIExpression(), !90)
  store i32 %9, ptr %rhs.dbg.spill.i3, align 4
    #dbg_declare(ptr %rhs.dbg.spill.i3, !41, !DIExpression(), !92)
  %10 = add i32 %6, %9, !dbg !93
  store i32 %10, ptr %self.dbg.spill.i2, align 4
    #dbg_declare(ptr %self.dbg.spill.i2, !32, !DIExpression(), !94)
  store i32 7, ptr %rhs.dbg.spill.i1, align 4
    #dbg_declare(ptr %rhs.dbg.spill.i1, !41, !DIExpression(), !96)
  %11 = add i32 %10, 7, !dbg !97
  store i32 %11, ptr %self.dbg.spill.i12, align 4
    #dbg_declare(ptr %self.dbg.spill.i12, !98, !DIExpression(), !102)
  store i32 8, ptr %rhs.dbg.spill.i11, align 4
    #dbg_declare(ptr %rhs.dbg.spill.i11, !101, !DIExpression(), !104)
  %12 = call i1 @llvm.expect.i1(i1 false, i1 false), !dbg !105
  br i1 %12, label %panic.i, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_div17hf40315d2ad7da5c6E.exit", !dbg !105

panic.i:                                          ; preds = %start
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.0, i64 25, ptr align 8 @alloc_d1e68eb04df0257e0899e21ea2c814fc) #3, !dbg !105
  unreachable, !dbg !105

"_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_div17hf40315d2ad7da5c6E.exit": ; preds = %start
  %13 = udiv i32 %11, 8, !dbg !105
  store i32 %0, ptr %self.dbg.spill.i, align 4
    #dbg_declare(ptr %self.dbg.spill.i, !32, !DIExpression(), !106)
  store i32 %13, ptr %rhs.dbg.spill.i, align 4
    #dbg_declare(ptr %rhs.dbg.spill.i, !41, !DIExpression(), !108)
  %14 = add i32 %0, %13, !dbg !109
  ret i32 %14, !dbg !110
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.expect.i1(i1, i1) #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1, i64, ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_1() unnamed_addr #0 !dbg !111 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 1024, ptr %blocksize.dbg.spill, align 4, !dbg !126
    #dbg_declare(ptr %blocksize.dbg.spill, !116, !DIExpression(), !127)
  store i32 2, ptr %channels.dbg.spill, align 4, !dbg !128
    #dbg_declare(ptr %channels.dbg.spill, !118, !DIExpression(), !129)
  store i32 16, ptr %bitdepth.dbg.spill, align 4, !dbg !130
    #dbg_declare(ptr %bitdepth.dbg.spill, !120, !DIExpression(), !131)
  store i32 4244, ptr %expected_returns.dbg.spill, align 4, !dbg !132
    #dbg_declare(ptr %expected_returns.dbg.spill, !122, !DIExpression(), !133)
  %result = call i32 @max_size_frame(i32 1024, i32 2, i32 16), !dbg !134
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !134
    #dbg_declare(ptr %result.dbg.spill, !124, !DIExpression(), !135)
  %0 = icmp eq i32 %result, 4244, !dbg !136
  ret i1 %0, !dbg !137
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_2() unnamed_addr #0 !dbg !138 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 512, ptr %blocksize.dbg.spill, align 4, !dbg !150
    #dbg_declare(ptr %blocksize.dbg.spill, !140, !DIExpression(), !151)
  store i32 2, ptr %channels.dbg.spill, align 4, !dbg !152
    #dbg_declare(ptr %channels.dbg.spill, !142, !DIExpression(), !153)
  store i32 24, ptr %bitdepth.dbg.spill, align 4, !dbg !154
    #dbg_declare(ptr %bitdepth.dbg.spill, !144, !DIExpression(), !155)
  store i32 3156, ptr %expected_returns.dbg.spill, align 4, !dbg !156
    #dbg_declare(ptr %expected_returns.dbg.spill, !146, !DIExpression(), !157)
  %result = call i32 @max_size_frame(i32 512, i32 2, i32 24), !dbg !158
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !158
    #dbg_declare(ptr %result.dbg.spill, !148, !DIExpression(), !159)
  %0 = icmp eq i32 %result, 3156, !dbg !160
  ret i1 %0, !dbg !161
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_3() unnamed_addr #0 !dbg !162 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 2048, ptr %blocksize.dbg.spill, align 4, !dbg !174
    #dbg_declare(ptr %blocksize.dbg.spill, !164, !DIExpression(), !175)
  store i32 2, ptr %channels.dbg.spill, align 4, !dbg !176
    #dbg_declare(ptr %channels.dbg.spill, !166, !DIExpression(), !177)
  store i32 8, ptr %bitdepth.dbg.spill, align 4, !dbg !178
    #dbg_declare(ptr %bitdepth.dbg.spill, !168, !DIExpression(), !179)
  store i32 4372, ptr %expected_returns.dbg.spill, align 4, !dbg !180
    #dbg_declare(ptr %expected_returns.dbg.spill, !170, !DIExpression(), !181)
  %result = call i32 @max_size_frame(i32 2048, i32 2, i32 8), !dbg !182
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !182
    #dbg_declare(ptr %result.dbg.spill, !172, !DIExpression(), !183)
  %0 = icmp eq i32 %result, 4372, !dbg !184
  ret i1 %0, !dbg !185
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_4() unnamed_addr #0 !dbg !186 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 4096, ptr %blocksize.dbg.spill, align 4, !dbg !198
    #dbg_declare(ptr %blocksize.dbg.spill, !188, !DIExpression(), !199)
  store i32 2, ptr %channels.dbg.spill, align 4, !dbg !200
    #dbg_declare(ptr %channels.dbg.spill, !190, !DIExpression(), !201)
  store i32 32, ptr %bitdepth.dbg.spill, align 4, !dbg !202
    #dbg_declare(ptr %bitdepth.dbg.spill, !192, !DIExpression(), !203)
  store i32 32788, ptr %expected_returns.dbg.spill, align 4, !dbg !204
    #dbg_declare(ptr %expected_returns.dbg.spill, !194, !DIExpression(), !205)
  %result = call i32 @max_size_frame(i32 4096, i32 2, i32 32), !dbg !206
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !206
    #dbg_declare(ptr %result.dbg.spill, !196, !DIExpression(), !207)
  %0 = icmp eq i32 %result, 32788, !dbg !208
  ret i1 %0, !dbg !209
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_5() unnamed_addr #0 !dbg !210 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 256, ptr %blocksize.dbg.spill, align 4, !dbg !222
    #dbg_declare(ptr %blocksize.dbg.spill, !212, !DIExpression(), !223)
  store i32 2, ptr %channels.dbg.spill, align 4, !dbg !224
    #dbg_declare(ptr %channels.dbg.spill, !214, !DIExpression(), !225)
  store i32 20, ptr %bitdepth.dbg.spill, align 4, !dbg !226
    #dbg_declare(ptr %bitdepth.dbg.spill, !216, !DIExpression(), !227)
  store i32 1332, ptr %expected_returns.dbg.spill, align 4, !dbg !228
    #dbg_declare(ptr %expected_returns.dbg.spill, !218, !DIExpression(), !229)
  %result = call i32 @max_size_frame(i32 256, i32 2, i32 20), !dbg !230
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !230
    #dbg_declare(ptr %result.dbg.spill, !220, !DIExpression(), !231)
  %0 = icmp eq i32 %result, 1332, !dbg !232
  ret i1 %0, !dbg !233
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_6() unnamed_addr #0 !dbg !234 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 1024, ptr %blocksize.dbg.spill, align 4, !dbg !246
    #dbg_declare(ptr %blocksize.dbg.spill, !236, !DIExpression(), !247)
  store i32 1, ptr %channels.dbg.spill, align 4, !dbg !248
    #dbg_declare(ptr %channels.dbg.spill, !238, !DIExpression(), !249)
  store i32 16, ptr %bitdepth.dbg.spill, align 4, !dbg !250
    #dbg_declare(ptr %bitdepth.dbg.spill, !240, !DIExpression(), !251)
  store i32 2067, ptr %expected_returns.dbg.spill, align 4, !dbg !252
    #dbg_declare(ptr %expected_returns.dbg.spill, !242, !DIExpression(), !253)
  %result = call i32 @max_size_frame(i32 1024, i32 1, i32 16), !dbg !254
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !254
    #dbg_declare(ptr %result.dbg.spill, !244, !DIExpression(), !255)
  %0 = icmp eq i32 %result, 2067, !dbg !256
  ret i1 %0, !dbg !257
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_7() unnamed_addr #0 !dbg !258 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 1024, ptr %blocksize.dbg.spill, align 4, !dbg !270
    #dbg_declare(ptr %blocksize.dbg.spill, !260, !DIExpression(), !271)
  store i32 3, ptr %channels.dbg.spill, align 4, !dbg !272
    #dbg_declare(ptr %channels.dbg.spill, !262, !DIExpression(), !273)
  store i32 16, ptr %bitdepth.dbg.spill, align 4, !dbg !274
    #dbg_declare(ptr %bitdepth.dbg.spill, !264, !DIExpression(), !275)
  store i32 6165, ptr %expected_returns.dbg.spill, align 4, !dbg !276
    #dbg_declare(ptr %expected_returns.dbg.spill, !266, !DIExpression(), !277)
  %result = call i32 @max_size_frame(i32 1024, i32 3, i32 16), !dbg !278
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !278
    #dbg_declare(ptr %result.dbg.spill, !268, !DIExpression(), !279)
  %0 = icmp eq i32 %result, 6165, !dbg !280
  ret i1 %0, !dbg !281
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_8() unnamed_addr #0 !dbg !282 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 1024, ptr %blocksize.dbg.spill, align 4, !dbg !294
    #dbg_declare(ptr %blocksize.dbg.spill, !284, !DIExpression(), !295)
  store i32 4, ptr %channels.dbg.spill, align 4, !dbg !296
    #dbg_declare(ptr %channels.dbg.spill, !286, !DIExpression(), !297)
  store i32 16, ptr %bitdepth.dbg.spill, align 4, !dbg !298
    #dbg_declare(ptr %bitdepth.dbg.spill, !288, !DIExpression(), !299)
  store i32 8214, ptr %expected_returns.dbg.spill, align 4, !dbg !300
    #dbg_declare(ptr %expected_returns.dbg.spill, !290, !DIExpression(), !301)
  %result = call i32 @max_size_frame(i32 1024, i32 4, i32 16), !dbg !302
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !302
    #dbg_declare(ptr %result.dbg.spill, !292, !DIExpression(), !303)
  %0 = icmp eq i32 %result, 8214, !dbg !304
  ret i1 %0, !dbg !305
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_9() unnamed_addr #0 !dbg !306 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 1024, ptr %blocksize.dbg.spill, align 4, !dbg !318
    #dbg_declare(ptr %blocksize.dbg.spill, !308, !DIExpression(), !319)
  store i32 6, ptr %channels.dbg.spill, align 4, !dbg !320
    #dbg_declare(ptr %channels.dbg.spill, !310, !DIExpression(), !321)
  store i32 16, ptr %bitdepth.dbg.spill, align 4, !dbg !322
    #dbg_declare(ptr %bitdepth.dbg.spill, !312, !DIExpression(), !323)
  store i32 12312, ptr %expected_returns.dbg.spill, align 4, !dbg !324
    #dbg_declare(ptr %expected_returns.dbg.spill, !314, !DIExpression(), !325)
  %result = call i32 @max_size_frame(i32 1024, i32 6, i32 16), !dbg !326
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !326
    #dbg_declare(ptr %result.dbg.spill, !316, !DIExpression(), !327)
  %0 = icmp eq i32 %result, 12312, !dbg !328
  ret i1 %0, !dbg !329
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_10() unnamed_addr #0 !dbg !330 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 1024, ptr %blocksize.dbg.spill, align 4, !dbg !342
    #dbg_declare(ptr %blocksize.dbg.spill, !332, !DIExpression(), !343)
  store i32 8, ptr %channels.dbg.spill, align 4, !dbg !344
    #dbg_declare(ptr %channels.dbg.spill, !334, !DIExpression(), !345)
  store i32 16, ptr %bitdepth.dbg.spill, align 4, !dbg !346
    #dbg_declare(ptr %bitdepth.dbg.spill, !336, !DIExpression(), !347)
  store i32 16410, ptr %expected_returns.dbg.spill, align 4, !dbg !348
    #dbg_declare(ptr %expected_returns.dbg.spill, !338, !DIExpression(), !349)
  %result = call i32 @max_size_frame(i32 1024, i32 8, i32 16), !dbg !350
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !350
    #dbg_declare(ptr %result.dbg.spill, !340, !DIExpression(), !351)
  %0 = icmp eq i32 %result, 16410, !dbg !352
  ret i1 %0, !dbg !353
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_11() unnamed_addr #0 !dbg !354 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 512, ptr %blocksize.dbg.spill, align 4, !dbg !366
    #dbg_declare(ptr %blocksize.dbg.spill, !356, !DIExpression(), !367)
  store i32 1, ptr %channels.dbg.spill, align 4, !dbg !368
    #dbg_declare(ptr %channels.dbg.spill, !358, !DIExpression(), !369)
  store i32 24, ptr %bitdepth.dbg.spill, align 4, !dbg !370
    #dbg_declare(ptr %bitdepth.dbg.spill, !360, !DIExpression(), !371)
  store i32 1555, ptr %expected_returns.dbg.spill, align 4, !dbg !372
    #dbg_declare(ptr %expected_returns.dbg.spill, !362, !DIExpression(), !373)
  %result = call i32 @max_size_frame(i32 512, i32 1, i32 24), !dbg !374
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !374
    #dbg_declare(ptr %result.dbg.spill, !364, !DIExpression(), !375)
  %0 = icmp eq i32 %result, 1555, !dbg !376
  ret i1 %0, !dbg !377
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_12() unnamed_addr #0 !dbg !378 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 512, ptr %blocksize.dbg.spill, align 4, !dbg !390
    #dbg_declare(ptr %blocksize.dbg.spill, !380, !DIExpression(), !391)
  store i32 5, ptr %channels.dbg.spill, align 4, !dbg !392
    #dbg_declare(ptr %channels.dbg.spill, !382, !DIExpression(), !393)
  store i32 24, ptr %bitdepth.dbg.spill, align 4, !dbg !394
    #dbg_declare(ptr %bitdepth.dbg.spill, !384, !DIExpression(), !395)
  store i32 7703, ptr %expected_returns.dbg.spill, align 4, !dbg !396
    #dbg_declare(ptr %expected_returns.dbg.spill, !386, !DIExpression(), !397)
  %result = call i32 @max_size_frame(i32 512, i32 5, i32 24), !dbg !398
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !398
    #dbg_declare(ptr %result.dbg.spill, !388, !DIExpression(), !399)
  %0 = icmp eq i32 %result, 7703, !dbg !400
  ret i1 %0, !dbg !401
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_13() unnamed_addr #0 !dbg !402 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 2048, ptr %blocksize.dbg.spill, align 4, !dbg !414
    #dbg_declare(ptr %blocksize.dbg.spill, !404, !DIExpression(), !415)
  store i32 1, ptr %channels.dbg.spill, align 4, !dbg !416
    #dbg_declare(ptr %channels.dbg.spill, !406, !DIExpression(), !417)
  store i32 8, ptr %bitdepth.dbg.spill, align 4, !dbg !418
    #dbg_declare(ptr %bitdepth.dbg.spill, !408, !DIExpression(), !419)
  store i32 2067, ptr %expected_returns.dbg.spill, align 4, !dbg !420
    #dbg_declare(ptr %expected_returns.dbg.spill, !410, !DIExpression(), !421)
  %result = call i32 @max_size_frame(i32 2048, i32 1, i32 8), !dbg !422
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !422
    #dbg_declare(ptr %result.dbg.spill, !412, !DIExpression(), !423)
  %0 = icmp eq i32 %result, 2067, !dbg !424
  ret i1 %0, !dbg !425
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_14() unnamed_addr #0 !dbg !426 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 2048, ptr %blocksize.dbg.spill, align 4, !dbg !438
    #dbg_declare(ptr %blocksize.dbg.spill, !428, !DIExpression(), !439)
  store i32 7, ptr %channels.dbg.spill, align 4, !dbg !440
    #dbg_declare(ptr %channels.dbg.spill, !430, !DIExpression(), !441)
  store i32 8, ptr %bitdepth.dbg.spill, align 4, !dbg !442
    #dbg_declare(ptr %bitdepth.dbg.spill, !432, !DIExpression(), !443)
  store i32 14361, ptr %expected_returns.dbg.spill, align 4, !dbg !444
    #dbg_declare(ptr %expected_returns.dbg.spill, !434, !DIExpression(), !445)
  %result = call i32 @max_size_frame(i32 2048, i32 7, i32 8), !dbg !446
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !446
    #dbg_declare(ptr %result.dbg.spill, !436, !DIExpression(), !447)
  %0 = icmp eq i32 %result, 14361, !dbg !448
  ret i1 %0, !dbg !449
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_15() unnamed_addr #0 !dbg !450 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 1024, ptr %blocksize.dbg.spill, align 4, !dbg !462
    #dbg_declare(ptr %blocksize.dbg.spill, !452, !DIExpression(), !463)
  store i32 16, ptr %channels.dbg.spill, align 4, !dbg !464
    #dbg_declare(ptr %channels.dbg.spill, !454, !DIExpression(), !465)
  store i32 16, ptr %bitdepth.dbg.spill, align 4, !dbg !466
    #dbg_declare(ptr %bitdepth.dbg.spill, !456, !DIExpression(), !467)
  store i32 32802, ptr %expected_returns.dbg.spill, align 4, !dbg !468
    #dbg_declare(ptr %expected_returns.dbg.spill, !458, !DIExpression(), !469)
  %result = call i32 @max_size_frame(i32 1024, i32 16, i32 16), !dbg !470
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !470
    #dbg_declare(ptr %result.dbg.spill, !460, !DIExpression(), !471)
  %0 = icmp eq i32 %result, 32802, !dbg !472
  ret i1 %0, !dbg !473
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_16() unnamed_addr #0 !dbg !474 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 1024, ptr %blocksize.dbg.spill, align 4, !dbg !486
    #dbg_declare(ptr %blocksize.dbg.spill, !476, !DIExpression(), !487)
  store i32 2, ptr %channels.dbg.spill, align 4, !dbg !488
    #dbg_declare(ptr %channels.dbg.spill, !478, !DIExpression(), !489)
  store i32 32, ptr %bitdepth.dbg.spill, align 4, !dbg !490
    #dbg_declare(ptr %bitdepth.dbg.spill, !480, !DIExpression(), !491)
  store i32 8212, ptr %expected_returns.dbg.spill, align 4, !dbg !492
    #dbg_declare(ptr %expected_returns.dbg.spill, !482, !DIExpression(), !493)
  %result = call i32 @max_size_frame(i32 1024, i32 2, i32 32), !dbg !494
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !494
    #dbg_declare(ptr %result.dbg.spill, !484, !DIExpression(), !495)
  %0 = icmp eq i32 %result, 8212, !dbg !496
  ret i1 %0, !dbg !497
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_17() unnamed_addr #0 !dbg !498 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 512, ptr %blocksize.dbg.spill, align 4, !dbg !510
    #dbg_declare(ptr %blocksize.dbg.spill, !500, !DIExpression(), !511)
  store i32 2, ptr %channels.dbg.spill, align 4, !dbg !512
    #dbg_declare(ptr %channels.dbg.spill, !502, !DIExpression(), !513)
  store i32 32, ptr %bitdepth.dbg.spill, align 4, !dbg !514
    #dbg_declare(ptr %bitdepth.dbg.spill, !504, !DIExpression(), !515)
  store i32 4116, ptr %expected_returns.dbg.spill, align 4, !dbg !516
    #dbg_declare(ptr %expected_returns.dbg.spill, !506, !DIExpression(), !517)
  %result = call i32 @max_size_frame(i32 512, i32 2, i32 32), !dbg !518
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !518
    #dbg_declare(ptr %result.dbg.spill, !508, !DIExpression(), !519)
  %0 = icmp eq i32 %result, 4116, !dbg !520
  ret i1 %0, !dbg !521
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_18() unnamed_addr #0 !dbg !522 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 2048, ptr %blocksize.dbg.spill, align 4, !dbg !534
    #dbg_declare(ptr %blocksize.dbg.spill, !524, !DIExpression(), !535)
  store i32 2, ptr %channels.dbg.spill, align 4, !dbg !536
    #dbg_declare(ptr %channels.dbg.spill, !526, !DIExpression(), !537)
  store i32 32, ptr %bitdepth.dbg.spill, align 4, !dbg !538
    #dbg_declare(ptr %bitdepth.dbg.spill, !528, !DIExpression(), !539)
  store i32 16404, ptr %expected_returns.dbg.spill, align 4, !dbg !540
    #dbg_declare(ptr %expected_returns.dbg.spill, !530, !DIExpression(), !541)
  %result = call i32 @max_size_frame(i32 2048, i32 2, i32 32), !dbg !542
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !542
    #dbg_declare(ptr %result.dbg.spill, !532, !DIExpression(), !543)
  %0 = icmp eq i32 %result, 16404, !dbg !544
  ret i1 %0, !dbg !545
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_19() unnamed_addr #0 !dbg !546 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 64, ptr %blocksize.dbg.spill, align 4, !dbg !558
    #dbg_declare(ptr %blocksize.dbg.spill, !548, !DIExpression(), !559)
  store i32 2, ptr %channels.dbg.spill, align 4, !dbg !560
    #dbg_declare(ptr %channels.dbg.spill, !550, !DIExpression(), !561)
  store i32 32, ptr %bitdepth.dbg.spill, align 4, !dbg !562
    #dbg_declare(ptr %bitdepth.dbg.spill, !552, !DIExpression(), !563)
  store i32 532, ptr %expected_returns.dbg.spill, align 4, !dbg !564
    #dbg_declare(ptr %expected_returns.dbg.spill, !554, !DIExpression(), !565)
  %result = call i32 @max_size_frame(i32 64, i32 2, i32 32), !dbg !566
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !566
    #dbg_declare(ptr %result.dbg.spill, !556, !DIExpression(), !567)
  %0 = icmp eq i32 %result, 532, !dbg !568
  ret i1 %0, !dbg !569
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_20() unnamed_addr #0 !dbg !570 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 4096, ptr %blocksize.dbg.spill, align 4, !dbg !582
    #dbg_declare(ptr %blocksize.dbg.spill, !572, !DIExpression(), !583)
  store i32 2, ptr %channels.dbg.spill, align 4, !dbg !584
    #dbg_declare(ptr %channels.dbg.spill, !574, !DIExpression(), !585)
  store i32 32, ptr %bitdepth.dbg.spill, align 4, !dbg !586
    #dbg_declare(ptr %bitdepth.dbg.spill, !576, !DIExpression(), !587)
  store i32 32788, ptr %expected_returns.dbg.spill, align 4, !dbg !588
    #dbg_declare(ptr %expected_returns.dbg.spill, !578, !DIExpression(), !589)
  %result = call i32 @max_size_frame(i32 4096, i32 2, i32 32), !dbg !590
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !590
    #dbg_declare(ptr %result.dbg.spill, !580, !DIExpression(), !591)
  %0 = icmp eq i32 %result, 32788, !dbg !592
  ret i1 %0, !dbg !593
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_21() unnamed_addr #0 !dbg !594 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 1024, ptr %blocksize.dbg.spill, align 4, !dbg !606
    #dbg_declare(ptr %blocksize.dbg.spill, !596, !DIExpression(), !607)
  store i32 2, ptr %channels.dbg.spill, align 4, !dbg !608
    #dbg_declare(ptr %channels.dbg.spill, !598, !DIExpression(), !609)
  store i32 16, ptr %bitdepth.dbg.spill, align 4, !dbg !610
    #dbg_declare(ptr %bitdepth.dbg.spill, !600, !DIExpression(), !611)
  store i32 4244, ptr %expected_returns.dbg.spill, align 4, !dbg !612
    #dbg_declare(ptr %expected_returns.dbg.spill, !602, !DIExpression(), !613)
  %result = call i32 @max_size_frame(i32 1024, i32 2, i32 16), !dbg !614
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !614
    #dbg_declare(ptr %result.dbg.spill, !604, !DIExpression(), !615)
  %0 = icmp eq i32 %result, 4244, !dbg !616
  ret i1 %0, !dbg !617
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_22() unnamed_addr #0 !dbg !618 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 1024, ptr %blocksize.dbg.spill, align 4, !dbg !630
    #dbg_declare(ptr %blocksize.dbg.spill, !620, !DIExpression(), !631)
  store i32 2, ptr %channels.dbg.spill, align 4, !dbg !632
    #dbg_declare(ptr %channels.dbg.spill, !622, !DIExpression(), !633)
  store i32 24, ptr %bitdepth.dbg.spill, align 4, !dbg !634
    #dbg_declare(ptr %bitdepth.dbg.spill, !624, !DIExpression(), !635)
  store i32 6292, ptr %expected_returns.dbg.spill, align 4, !dbg !636
    #dbg_declare(ptr %expected_returns.dbg.spill, !626, !DIExpression(), !637)
  %result = call i32 @max_size_frame(i32 1024, i32 2, i32 24), !dbg !638
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !638
    #dbg_declare(ptr %result.dbg.spill, !628, !DIExpression(), !639)
  %0 = icmp eq i32 %result, 6292, !dbg !640
  ret i1 %0, !dbg !641
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_23() unnamed_addr #0 !dbg !642 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 1024, ptr %blocksize.dbg.spill, align 4, !dbg !654
    #dbg_declare(ptr %blocksize.dbg.spill, !644, !DIExpression(), !655)
  store i32 2, ptr %channels.dbg.spill, align 4, !dbg !656
    #dbg_declare(ptr %channels.dbg.spill, !646, !DIExpression(), !657)
  store i32 8, ptr %bitdepth.dbg.spill, align 4, !dbg !658
    #dbg_declare(ptr %bitdepth.dbg.spill, !648, !DIExpression(), !659)
  store i32 2196, ptr %expected_returns.dbg.spill, align 4, !dbg !660
    #dbg_declare(ptr %expected_returns.dbg.spill, !650, !DIExpression(), !661)
  %result = call i32 @max_size_frame(i32 1024, i32 2, i32 8), !dbg !662
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !662
    #dbg_declare(ptr %result.dbg.spill, !652, !DIExpression(), !663)
  %0 = icmp eq i32 %result, 2196, !dbg !664
  ret i1 %0, !dbg !665
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_24() unnamed_addr #0 !dbg !666 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 1024, ptr %blocksize.dbg.spill, align 4, !dbg !678
    #dbg_declare(ptr %blocksize.dbg.spill, !668, !DIExpression(), !679)
  store i32 2, ptr %channels.dbg.spill, align 4, !dbg !680
    #dbg_declare(ptr %channels.dbg.spill, !670, !DIExpression(), !681)
  store i32 12, ptr %bitdepth.dbg.spill, align 4, !dbg !682
    #dbg_declare(ptr %bitdepth.dbg.spill, !672, !DIExpression(), !683)
  store i32 3220, ptr %expected_returns.dbg.spill, align 4, !dbg !684
    #dbg_declare(ptr %expected_returns.dbg.spill, !674, !DIExpression(), !685)
  %result = call i32 @max_size_frame(i32 1024, i32 2, i32 12), !dbg !686
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !686
    #dbg_declare(ptr %result.dbg.spill, !676, !DIExpression(), !687)
  %0 = icmp eq i32 %result, 3220, !dbg !688
  ret i1 %0, !dbg !689
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_25() unnamed_addr #0 !dbg !690 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 1024, ptr %blocksize.dbg.spill, align 4, !dbg !702
    #dbg_declare(ptr %blocksize.dbg.spill, !692, !DIExpression(), !703)
  store i32 2, ptr %channels.dbg.spill, align 4, !dbg !704
    #dbg_declare(ptr %channels.dbg.spill, !694, !DIExpression(), !705)
  store i32 20, ptr %bitdepth.dbg.spill, align 4, !dbg !706
    #dbg_declare(ptr %bitdepth.dbg.spill, !696, !DIExpression(), !707)
  store i32 5268, ptr %expected_returns.dbg.spill, align 4, !dbg !708
    #dbg_declare(ptr %expected_returns.dbg.spill, !698, !DIExpression(), !709)
  %result = call i32 @max_size_frame(i32 1024, i32 2, i32 20), !dbg !710
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !710
    #dbg_declare(ptr %result.dbg.spill, !700, !DIExpression(), !711)
  %0 = icmp eq i32 %result, 5268, !dbg !712
  ret i1 %0, !dbg !713
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_26() unnamed_addr #0 !dbg !714 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 1024, ptr %blocksize.dbg.spill, align 4, !dbg !726
    #dbg_declare(ptr %blocksize.dbg.spill, !716, !DIExpression(), !727)
  store i32 1, ptr %channels.dbg.spill, align 4, !dbg !728
    #dbg_declare(ptr %channels.dbg.spill, !718, !DIExpression(), !729)
  store i32 32, ptr %bitdepth.dbg.spill, align 4, !dbg !730
    #dbg_declare(ptr %bitdepth.dbg.spill, !720, !DIExpression(), !731)
  store i32 4115, ptr %expected_returns.dbg.spill, align 4, !dbg !732
    #dbg_declare(ptr %expected_returns.dbg.spill, !722, !DIExpression(), !733)
  %result = call i32 @max_size_frame(i32 1024, i32 1, i32 32), !dbg !734
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !734
    #dbg_declare(ptr %result.dbg.spill, !724, !DIExpression(), !735)
  %0 = icmp eq i32 %result, 4115, !dbg !736
  ret i1 %0, !dbg !737
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_27() unnamed_addr #0 !dbg !738 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 1024, ptr %blocksize.dbg.spill, align 4, !dbg !750
    #dbg_declare(ptr %blocksize.dbg.spill, !740, !DIExpression(), !751)
  store i32 4, ptr %channels.dbg.spill, align 4, !dbg !752
    #dbg_declare(ptr %channels.dbg.spill, !742, !DIExpression(), !753)
  store i32 32, ptr %bitdepth.dbg.spill, align 4, !dbg !754
    #dbg_declare(ptr %bitdepth.dbg.spill, !744, !DIExpression(), !755)
  store i32 16406, ptr %expected_returns.dbg.spill, align 4, !dbg !756
    #dbg_declare(ptr %expected_returns.dbg.spill, !746, !DIExpression(), !757)
  %result = call i32 @max_size_frame(i32 1024, i32 4, i32 32), !dbg !758
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !758
    #dbg_declare(ptr %result.dbg.spill, !748, !DIExpression(), !759)
  %0 = icmp eq i32 %result, 16406, !dbg !760
  ret i1 %0, !dbg !761
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_28() unnamed_addr #0 !dbg !762 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 1024, ptr %blocksize.dbg.spill, align 4, !dbg !774
    #dbg_declare(ptr %blocksize.dbg.spill, !764, !DIExpression(), !775)
  store i32 1, ptr %channels.dbg.spill, align 4, !dbg !776
    #dbg_declare(ptr %channels.dbg.spill, !766, !DIExpression(), !777)
  store i32 16, ptr %bitdepth.dbg.spill, align 4, !dbg !778
    #dbg_declare(ptr %bitdepth.dbg.spill, !768, !DIExpression(), !779)
  store i32 2067, ptr %expected_returns.dbg.spill, align 4, !dbg !780
    #dbg_declare(ptr %expected_returns.dbg.spill, !770, !DIExpression(), !781)
  %result = call i32 @max_size_frame(i32 1024, i32 1, i32 16), !dbg !782
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !782
    #dbg_declare(ptr %result.dbg.spill, !772, !DIExpression(), !783)
  %0 = icmp eq i32 %result, 2067, !dbg !784
  ret i1 %0, !dbg !785
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_29() unnamed_addr #0 !dbg !786 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 1024, ptr %blocksize.dbg.spill, align 4, !dbg !798
    #dbg_declare(ptr %blocksize.dbg.spill, !788, !DIExpression(), !799)
  store i32 6, ptr %channels.dbg.spill, align 4, !dbg !800
    #dbg_declare(ptr %channels.dbg.spill, !790, !DIExpression(), !801)
  store i32 24, ptr %bitdepth.dbg.spill, align 4, !dbg !802
    #dbg_declare(ptr %bitdepth.dbg.spill, !792, !DIExpression(), !803)
  store i32 18456, ptr %expected_returns.dbg.spill, align 4, !dbg !804
    #dbg_declare(ptr %expected_returns.dbg.spill, !794, !DIExpression(), !805)
  %result = call i32 @max_size_frame(i32 1024, i32 6, i32 24), !dbg !806
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !806
    #dbg_declare(ptr %result.dbg.spill, !796, !DIExpression(), !807)
  %0 = icmp eq i32 %result, 18456, !dbg !808
  ret i1 %0, !dbg !809
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_30() unnamed_addr #0 !dbg !810 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 1024, ptr %blocksize.dbg.spill, align 4, !dbg !822
    #dbg_declare(ptr %blocksize.dbg.spill, !812, !DIExpression(), !823)
  store i32 8, ptr %channels.dbg.spill, align 4, !dbg !824
    #dbg_declare(ptr %channels.dbg.spill, !814, !DIExpression(), !825)
  store i32 8, ptr %bitdepth.dbg.spill, align 4, !dbg !826
    #dbg_declare(ptr %bitdepth.dbg.spill, !816, !DIExpression(), !827)
  store i32 8218, ptr %expected_returns.dbg.spill, align 4, !dbg !828
    #dbg_declare(ptr %expected_returns.dbg.spill, !818, !DIExpression(), !829)
  %result = call i32 @max_size_frame(i32 1024, i32 8, i32 8), !dbg !830
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !830
    #dbg_declare(ptr %result.dbg.spill, !820, !DIExpression(), !831)
  %0 = icmp eq i32 %result, 8218, !dbg !832
  ret i1 %0, !dbg !833
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_31() unnamed_addr #0 !dbg !834 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 1, ptr %blocksize.dbg.spill, align 4, !dbg !846
    #dbg_declare(ptr %blocksize.dbg.spill, !836, !DIExpression(), !847)
  store i32 1, ptr %channels.dbg.spill, align 4, !dbg !848
    #dbg_declare(ptr %channels.dbg.spill, !838, !DIExpression(), !849)
  store i32 1, ptr %bitdepth.dbg.spill, align 4, !dbg !850
    #dbg_declare(ptr %bitdepth.dbg.spill, !840, !DIExpression(), !851)
  store i32 20, ptr %expected_returns.dbg.spill, align 4, !dbg !852
    #dbg_declare(ptr %expected_returns.dbg.spill, !842, !DIExpression(), !853)
  %result = call i32 @max_size_frame(i32 1, i32 1, i32 1), !dbg !854
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !854
    #dbg_declare(ptr %result.dbg.spill, !844, !DIExpression(), !855)
  %0 = icmp eq i32 %result, 20, !dbg !856
  ret i1 %0, !dbg !857
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_32() unnamed_addr #0 !dbg !858 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 1, ptr %blocksize.dbg.spill, align 4, !dbg !870
    #dbg_declare(ptr %blocksize.dbg.spill, !860, !DIExpression(), !871)
  store i32 2, ptr %channels.dbg.spill, align 4, !dbg !872
    #dbg_declare(ptr %channels.dbg.spill, !862, !DIExpression(), !873)
  store i32 1, ptr %bitdepth.dbg.spill, align 4, !dbg !874
    #dbg_declare(ptr %bitdepth.dbg.spill, !864, !DIExpression(), !875)
  store i32 21, ptr %expected_returns.dbg.spill, align 4, !dbg !876
    #dbg_declare(ptr %expected_returns.dbg.spill, !866, !DIExpression(), !877)
  %result = call i32 @max_size_frame(i32 1, i32 2, i32 1), !dbg !878
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !878
    #dbg_declare(ptr %result.dbg.spill, !868, !DIExpression(), !879)
  %0 = icmp eq i32 %result, 21, !dbg !880
  ret i1 %0, !dbg !881
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_33() unnamed_addr #0 !dbg !882 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 1, ptr %blocksize.dbg.spill, align 4, !dbg !894
    #dbg_declare(ptr %blocksize.dbg.spill, !884, !DIExpression(), !895)
  store i32 1, ptr %channels.dbg.spill, align 4, !dbg !896
    #dbg_declare(ptr %channels.dbg.spill, !886, !DIExpression(), !897)
  store i32 32, ptr %bitdepth.dbg.spill, align 4, !dbg !898
    #dbg_declare(ptr %bitdepth.dbg.spill, !888, !DIExpression(), !899)
  store i32 23, ptr %expected_returns.dbg.spill, align 4, !dbg !900
    #dbg_declare(ptr %expected_returns.dbg.spill, !890, !DIExpression(), !901)
  %result = call i32 @max_size_frame(i32 1, i32 1, i32 32), !dbg !902
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !902
    #dbg_declare(ptr %result.dbg.spill, !892, !DIExpression(), !903)
  %0 = icmp eq i32 %result, 23, !dbg !904
  ret i1 %0, !dbg !905
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_34() unnamed_addr #0 !dbg !906 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 1, ptr %blocksize.dbg.spill, align 4, !dbg !918
    #dbg_declare(ptr %blocksize.dbg.spill, !908, !DIExpression(), !919)
  store i32 2, ptr %channels.dbg.spill, align 4, !dbg !920
    #dbg_declare(ptr %channels.dbg.spill, !910, !DIExpression(), !921)
  store i32 32, ptr %bitdepth.dbg.spill, align 4, !dbg !922
    #dbg_declare(ptr %bitdepth.dbg.spill, !912, !DIExpression(), !923)
  store i32 28, ptr %expected_returns.dbg.spill, align 4, !dbg !924
    #dbg_declare(ptr %expected_returns.dbg.spill, !914, !DIExpression(), !925)
  %result = call i32 @max_size_frame(i32 1, i32 2, i32 32), !dbg !926
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !926
    #dbg_declare(ptr %result.dbg.spill, !916, !DIExpression(), !927)
  %0 = icmp eq i32 %result, 28, !dbg !928
  ret i1 %0, !dbg !929
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_35() unnamed_addr #0 !dbg !930 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 8192, ptr %blocksize.dbg.spill, align 4, !dbg !942
    #dbg_declare(ptr %blocksize.dbg.spill, !932, !DIExpression(), !943)
  store i32 2, ptr %channels.dbg.spill, align 4, !dbg !944
    #dbg_declare(ptr %channels.dbg.spill, !934, !DIExpression(), !945)
  store i32 32, ptr %bitdepth.dbg.spill, align 4, !dbg !946
    #dbg_declare(ptr %bitdepth.dbg.spill, !936, !DIExpression(), !947)
  store i32 65556, ptr %expected_returns.dbg.spill, align 4, !dbg !948
    #dbg_declare(ptr %expected_returns.dbg.spill, !938, !DIExpression(), !949)
  %result = call i32 @max_size_frame(i32 8192, i32 2, i32 32), !dbg !950
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !950
    #dbg_declare(ptr %result.dbg.spill, !940, !DIExpression(), !951)
  %0 = icmp eq i32 %result, 65556, !dbg !952
  ret i1 %0, !dbg !953
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_36() unnamed_addr #0 !dbg !954 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 4096, ptr %blocksize.dbg.spill, align 4, !dbg !966
    #dbg_declare(ptr %blocksize.dbg.spill, !956, !DIExpression(), !967)
  store i32 8, ptr %channels.dbg.spill, align 4, !dbg !968
    #dbg_declare(ptr %channels.dbg.spill, !958, !DIExpression(), !969)
  store i32 24, ptr %bitdepth.dbg.spill, align 4, !dbg !970
    #dbg_declare(ptr %bitdepth.dbg.spill, !960, !DIExpression(), !971)
  store i32 98330, ptr %expected_returns.dbg.spill, align 4, !dbg !972
    #dbg_declare(ptr %expected_returns.dbg.spill, !962, !DIExpression(), !973)
  %result = call i32 @max_size_frame(i32 4096, i32 8, i32 24), !dbg !974
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !974
    #dbg_declare(ptr %result.dbg.spill, !964, !DIExpression(), !975)
  %0 = icmp eq i32 %result, 98330, !dbg !976
  ret i1 %0, !dbg !977
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_37() unnamed_addr #0 !dbg !978 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 2048, ptr %blocksize.dbg.spill, align 4, !dbg !990
    #dbg_declare(ptr %blocksize.dbg.spill, !980, !DIExpression(), !991)
  store i32 16, ptr %channels.dbg.spill, align 4, !dbg !992
    #dbg_declare(ptr %channels.dbg.spill, !982, !DIExpression(), !993)
  store i32 32, ptr %bitdepth.dbg.spill, align 4, !dbg !994
    #dbg_declare(ptr %bitdepth.dbg.spill, !984, !DIExpression(), !995)
  store i32 131106, ptr %expected_returns.dbg.spill, align 4, !dbg !996
    #dbg_declare(ptr %expected_returns.dbg.spill, !986, !DIExpression(), !997)
  %result = call i32 @max_size_frame(i32 2048, i32 16, i32 32), !dbg !998
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !998
    #dbg_declare(ptr %result.dbg.spill, !988, !DIExpression(), !999)
  %0 = icmp eq i32 %result, 131106, !dbg !1000
  ret i1 %0, !dbg !1001
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_38() unnamed_addr #0 !dbg !1002 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 4608, ptr %blocksize.dbg.spill, align 4, !dbg !1014
    #dbg_declare(ptr %blocksize.dbg.spill, !1004, !DIExpression(), !1015)
  store i32 2, ptr %channels.dbg.spill, align 4, !dbg !1016
    #dbg_declare(ptr %channels.dbg.spill, !1006, !DIExpression(), !1017)
  store i32 16, ptr %bitdepth.dbg.spill, align 4, !dbg !1018
    #dbg_declare(ptr %bitdepth.dbg.spill, !1008, !DIExpression(), !1019)
  store i32 19028, ptr %expected_returns.dbg.spill, align 4, !dbg !1020
    #dbg_declare(ptr %expected_returns.dbg.spill, !1010, !DIExpression(), !1021)
  %result = call i32 @max_size_frame(i32 4608, i32 2, i32 16), !dbg !1022
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1022
    #dbg_declare(ptr %result.dbg.spill, !1012, !DIExpression(), !1023)
  %0 = icmp eq i32 %result, 19028, !dbg !1024
  ret i1 %0, !dbg !1025
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_39() unnamed_addr #0 !dbg !1026 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 1152, ptr %blocksize.dbg.spill, align 4, !dbg !1038
    #dbg_declare(ptr %blocksize.dbg.spill, !1028, !DIExpression(), !1039)
  store i32 2, ptr %channels.dbg.spill, align 4, !dbg !1040
    #dbg_declare(ptr %channels.dbg.spill, !1030, !DIExpression(), !1041)
  store i32 16, ptr %bitdepth.dbg.spill, align 4, !dbg !1042
    #dbg_declare(ptr %bitdepth.dbg.spill, !1032, !DIExpression(), !1043)
  store i32 4772, ptr %expected_returns.dbg.spill, align 4, !dbg !1044
    #dbg_declare(ptr %expected_returns.dbg.spill, !1034, !DIExpression(), !1045)
  %result = call i32 @max_size_frame(i32 1152, i32 2, i32 16), !dbg !1046
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1046
    #dbg_declare(ptr %result.dbg.spill, !1036, !DIExpression(), !1047)
  %0 = icmp eq i32 %result, 4772, !dbg !1048
  ret i1 %0, !dbg !1049
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_40() unnamed_addr #0 !dbg !1050 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 576, ptr %blocksize.dbg.spill, align 4, !dbg !1062
    #dbg_declare(ptr %blocksize.dbg.spill, !1052, !DIExpression(), !1063)
  store i32 2, ptr %channels.dbg.spill, align 4, !dbg !1064
    #dbg_declare(ptr %channels.dbg.spill, !1054, !DIExpression(), !1065)
  store i32 16, ptr %bitdepth.dbg.spill, align 4, !dbg !1066
    #dbg_declare(ptr %bitdepth.dbg.spill, !1056, !DIExpression(), !1067)
  store i32 2396, ptr %expected_returns.dbg.spill, align 4, !dbg !1068
    #dbg_declare(ptr %expected_returns.dbg.spill, !1058, !DIExpression(), !1069)
  %result = call i32 @max_size_frame(i32 576, i32 2, i32 16), !dbg !1070
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1070
    #dbg_declare(ptr %result.dbg.spill, !1060, !DIExpression(), !1071)
  %0 = icmp eq i32 %result, 2396, !dbg !1072
  ret i1 %0, !dbg !1073
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_41() unnamed_addr #0 !dbg !1074 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 8, ptr %blocksize.dbg.spill, align 4, !dbg !1086
    #dbg_declare(ptr %blocksize.dbg.spill, !1076, !DIExpression(), !1087)
  store i32 2, ptr %channels.dbg.spill, align 4, !dbg !1088
    #dbg_declare(ptr %channels.dbg.spill, !1078, !DIExpression(), !1089)
  store i32 16, ptr %bitdepth.dbg.spill, align 4, !dbg !1090
    #dbg_declare(ptr %bitdepth.dbg.spill, !1080, !DIExpression(), !1091)
  store i32 53, ptr %expected_returns.dbg.spill, align 4, !dbg !1092
    #dbg_declare(ptr %expected_returns.dbg.spill, !1082, !DIExpression(), !1093)
  %result = call i32 @max_size_frame(i32 8, i32 2, i32 16), !dbg !1094
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1094
    #dbg_declare(ptr %result.dbg.spill, !1084, !DIExpression(), !1095)
  %0 = icmp eq i32 %result, 53, !dbg !1096
  ret i1 %0, !dbg !1097
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_42() unnamed_addr #0 !dbg !1098 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 7, ptr %blocksize.dbg.spill, align 4, !dbg !1110
    #dbg_declare(ptr %blocksize.dbg.spill, !1100, !DIExpression(), !1111)
  store i32 2, ptr %channels.dbg.spill, align 4, !dbg !1112
    #dbg_declare(ptr %channels.dbg.spill, !1102, !DIExpression(), !1113)
  store i32 16, ptr %bitdepth.dbg.spill, align 4, !dbg !1114
    #dbg_declare(ptr %bitdepth.dbg.spill, !1104, !DIExpression(), !1115)
  store i32 49, ptr %expected_returns.dbg.spill, align 4, !dbg !1116
    #dbg_declare(ptr %expected_returns.dbg.spill, !1106, !DIExpression(), !1117)
  %result = call i32 @max_size_frame(i32 7, i32 2, i32 16), !dbg !1118
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1118
    #dbg_declare(ptr %result.dbg.spill, !1108, !DIExpression(), !1119)
  %0 = icmp eq i32 %result, 49, !dbg !1120
  ret i1 %0, !dbg !1121
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_43() unnamed_addr #0 !dbg !1122 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 15, ptr %blocksize.dbg.spill, align 4, !dbg !1134
    #dbg_declare(ptr %blocksize.dbg.spill, !1124, !DIExpression(), !1135)
  store i32 2, ptr %channels.dbg.spill, align 4, !dbg !1136
    #dbg_declare(ptr %channels.dbg.spill, !1126, !DIExpression(), !1137)
  store i32 32, ptr %bitdepth.dbg.spill, align 4, !dbg !1138
    #dbg_declare(ptr %bitdepth.dbg.spill, !1128, !DIExpression(), !1139)
  store i32 140, ptr %expected_returns.dbg.spill, align 4, !dbg !1140
    #dbg_declare(ptr %expected_returns.dbg.spill, !1130, !DIExpression(), !1141)
  %result = call i32 @max_size_frame(i32 15, i32 2, i32 32), !dbg !1142
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1142
    #dbg_declare(ptr %result.dbg.spill, !1132, !DIExpression(), !1143)
  %0 = icmp eq i32 %result, 140, !dbg !1144
  ret i1 %0, !dbg !1145
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_44() unnamed_addr #0 !dbg !1146 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 16, ptr %blocksize.dbg.spill, align 4, !dbg !1158
    #dbg_declare(ptr %blocksize.dbg.spill, !1148, !DIExpression(), !1159)
  store i32 2, ptr %channels.dbg.spill, align 4, !dbg !1160
    #dbg_declare(ptr %channels.dbg.spill, !1150, !DIExpression(), !1161)
  store i32 32, ptr %bitdepth.dbg.spill, align 4, !dbg !1162
    #dbg_declare(ptr %bitdepth.dbg.spill, !1152, !DIExpression(), !1163)
  store i32 148, ptr %expected_returns.dbg.spill, align 4, !dbg !1164
    #dbg_declare(ptr %expected_returns.dbg.spill, !1154, !DIExpression(), !1165)
  %result = call i32 @max_size_frame(i32 16, i32 2, i32 32), !dbg !1166
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1166
    #dbg_declare(ptr %result.dbg.spill, !1156, !DIExpression(), !1167)
  %0 = icmp eq i32 %result, 148, !dbg !1168
  ret i1 %0, !dbg !1169
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_45() unnamed_addr #0 !dbg !1170 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 17, ptr %blocksize.dbg.spill, align 4, !dbg !1182
    #dbg_declare(ptr %blocksize.dbg.spill, !1172, !DIExpression(), !1183)
  store i32 2, ptr %channels.dbg.spill, align 4, !dbg !1184
    #dbg_declare(ptr %channels.dbg.spill, !1174, !DIExpression(), !1185)
  store i32 32, ptr %bitdepth.dbg.spill, align 4, !dbg !1186
    #dbg_declare(ptr %bitdepth.dbg.spill, !1176, !DIExpression(), !1187)
  store i32 156, ptr %expected_returns.dbg.spill, align 4, !dbg !1188
    #dbg_declare(ptr %expected_returns.dbg.spill, !1178, !DIExpression(), !1189)
  %result = call i32 @max_size_frame(i32 17, i32 2, i32 32), !dbg !1190
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1190
    #dbg_declare(ptr %result.dbg.spill, !1180, !DIExpression(), !1191)
  %0 = icmp eq i32 %result, 156, !dbg !1192
  ret i1 %0, !dbg !1193
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_46() unnamed_addr #0 !dbg !1194 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 1, ptr %blocksize.dbg.spill, align 4, !dbg !1206
    #dbg_declare(ptr %blocksize.dbg.spill, !1196, !DIExpression(), !1207)
  store i32 2, ptr %channels.dbg.spill, align 4, !dbg !1208
    #dbg_declare(ptr %channels.dbg.spill, !1198, !DIExpression(), !1209)
  store i32 8, ptr %bitdepth.dbg.spill, align 4, !dbg !1210
    #dbg_declare(ptr %bitdepth.dbg.spill, !1200, !DIExpression(), !1211)
  store i32 23, ptr %expected_returns.dbg.spill, align 4, !dbg !1212
    #dbg_declare(ptr %expected_returns.dbg.spill, !1202, !DIExpression(), !1213)
  %result = call i32 @max_size_frame(i32 1, i32 2, i32 8), !dbg !1214
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1214
    #dbg_declare(ptr %result.dbg.spill, !1204, !DIExpression(), !1215)
  %0 = icmp eq i32 %result, 23, !dbg !1216
  ret i1 %0, !dbg !1217
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_47() unnamed_addr #0 !dbg !1218 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 2, ptr %blocksize.dbg.spill, align 4, !dbg !1230
    #dbg_declare(ptr %blocksize.dbg.spill, !1220, !DIExpression(), !1231)
  store i32 2, ptr %channels.dbg.spill, align 4, !dbg !1232
    #dbg_declare(ptr %channels.dbg.spill, !1222, !DIExpression(), !1233)
  store i32 4, ptr %bitdepth.dbg.spill, align 4, !dbg !1234
    #dbg_declare(ptr %bitdepth.dbg.spill, !1224, !DIExpression(), !1235)
  store i32 23, ptr %expected_returns.dbg.spill, align 4, !dbg !1236
    #dbg_declare(ptr %expected_returns.dbg.spill, !1226, !DIExpression(), !1237)
  %result = call i32 @max_size_frame(i32 2, i32 2, i32 4), !dbg !1238
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1238
    #dbg_declare(ptr %result.dbg.spill, !1228, !DIExpression(), !1239)
  %0 = icmp eq i32 %result, 23, !dbg !1240
  ret i1 %0, !dbg !1241
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_48() unnamed_addr #0 !dbg !1242 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 3, ptr %blocksize.dbg.spill, align 4, !dbg !1254
    #dbg_declare(ptr %blocksize.dbg.spill, !1244, !DIExpression(), !1255)
  store i32 3, ptr %channels.dbg.spill, align 4, !dbg !1256
    #dbg_declare(ptr %channels.dbg.spill, !1246, !DIExpression(), !1257)
  store i32 3, ptr %bitdepth.dbg.spill, align 4, !dbg !1258
    #dbg_declare(ptr %bitdepth.dbg.spill, !1248, !DIExpression(), !1259)
  store i32 25, ptr %expected_returns.dbg.spill, align 4, !dbg !1260
    #dbg_declare(ptr %expected_returns.dbg.spill, !1250, !DIExpression(), !1261)
  %result = call i32 @max_size_frame(i32 3, i32 3, i32 3), !dbg !1262
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1262
    #dbg_declare(ptr %result.dbg.spill, !1252, !DIExpression(), !1263)
  %0 = icmp eq i32 %result, 25, !dbg !1264
  ret i1 %0, !dbg !1265
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_49() unnamed_addr #0 !dbg !1266 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 5, ptr %blocksize.dbg.spill, align 4, !dbg !1278
    #dbg_declare(ptr %blocksize.dbg.spill, !1268, !DIExpression(), !1279)
  store i32 5, ptr %channels.dbg.spill, align 4, !dbg !1280
    #dbg_declare(ptr %channels.dbg.spill, !1270, !DIExpression(), !1281)
  store i32 5, ptr %bitdepth.dbg.spill, align 4, !dbg !1282
    #dbg_declare(ptr %bitdepth.dbg.spill, !1272, !DIExpression(), !1283)
  store i32 39, ptr %expected_returns.dbg.spill, align 4, !dbg !1284
    #dbg_declare(ptr %expected_returns.dbg.spill, !1274, !DIExpression(), !1285)
  %result = call i32 @max_size_frame(i32 5, i32 5, i32 5), !dbg !1286
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1286
    #dbg_declare(ptr %result.dbg.spill, !1276, !DIExpression(), !1287)
  %0 = icmp eq i32 %result, 39, !dbg !1288
  ret i1 %0, !dbg !1289
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_50() unnamed_addr #0 !dbg !1290 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 10, ptr %blocksize.dbg.spill, align 4, !dbg !1302
    #dbg_declare(ptr %blocksize.dbg.spill, !1292, !DIExpression(), !1303)
  store i32 10, ptr %channels.dbg.spill, align 4, !dbg !1304
    #dbg_declare(ptr %channels.dbg.spill, !1294, !DIExpression(), !1305)
  store i32 10, ptr %bitdepth.dbg.spill, align 4, !dbg !1306
    #dbg_declare(ptr %bitdepth.dbg.spill, !1296, !DIExpression(), !1307)
  store i32 153, ptr %expected_returns.dbg.spill, align 4, !dbg !1308
    #dbg_declare(ptr %expected_returns.dbg.spill, !1298, !DIExpression(), !1309)
  %result = call i32 @max_size_frame(i32 10, i32 10, i32 10), !dbg !1310
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1310
    #dbg_declare(ptr %result.dbg.spill, !1300, !DIExpression(), !1311)
  %0 = icmp eq i32 %result, 153, !dbg !1312
  ret i1 %0, !dbg !1313
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_51() unnamed_addr #0 !dbg !1314 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 0, ptr %blocksize.dbg.spill, align 4, !dbg !1326
    #dbg_declare(ptr %blocksize.dbg.spill, !1316, !DIExpression(), !1327)
  store i32 1, ptr %channels.dbg.spill, align 4, !dbg !1328
    #dbg_declare(ptr %channels.dbg.spill, !1318, !DIExpression(), !1329)
  store i32 16, ptr %bitdepth.dbg.spill, align 4, !dbg !1330
    #dbg_declare(ptr %bitdepth.dbg.spill, !1320, !DIExpression(), !1331)
  store i32 19, ptr %expected_returns.dbg.spill, align 4, !dbg !1332
    #dbg_declare(ptr %expected_returns.dbg.spill, !1322, !DIExpression(), !1333)
  %result = call i32 @max_size_frame(i32 0, i32 1, i32 16), !dbg !1334
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1334
    #dbg_declare(ptr %result.dbg.spill, !1324, !DIExpression(), !1335)
  %0 = icmp eq i32 %result, 19, !dbg !1336
  ret i1 %0, !dbg !1337
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_52() unnamed_addr #0 !dbg !1338 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 1024, ptr %blocksize.dbg.spill, align 4, !dbg !1350
    #dbg_declare(ptr %blocksize.dbg.spill, !1340, !DIExpression(), !1351)
  store i32 0, ptr %channels.dbg.spill, align 4, !dbg !1352
    #dbg_declare(ptr %channels.dbg.spill, !1342, !DIExpression(), !1353)
  store i32 16, ptr %bitdepth.dbg.spill, align 4, !dbg !1354
    #dbg_declare(ptr %bitdepth.dbg.spill, !1344, !DIExpression(), !1355)
  store i32 18, ptr %expected_returns.dbg.spill, align 4, !dbg !1356
    #dbg_declare(ptr %expected_returns.dbg.spill, !1346, !DIExpression(), !1357)
  %result = call i32 @max_size_frame(i32 1024, i32 0, i32 16), !dbg !1358
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1358
    #dbg_declare(ptr %result.dbg.spill, !1348, !DIExpression(), !1359)
  %0 = icmp eq i32 %result, 18, !dbg !1360
  ret i1 %0, !dbg !1361
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_53() unnamed_addr #0 !dbg !1362 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 1024, ptr %blocksize.dbg.spill, align 4, !dbg !1374
    #dbg_declare(ptr %blocksize.dbg.spill, !1364, !DIExpression(), !1375)
  store i32 2, ptr %channels.dbg.spill, align 4, !dbg !1376
    #dbg_declare(ptr %channels.dbg.spill, !1366, !DIExpression(), !1377)
  store i32 0, ptr %bitdepth.dbg.spill, align 4, !dbg !1378
    #dbg_declare(ptr %bitdepth.dbg.spill, !1368, !DIExpression(), !1379)
  store i32 148, ptr %expected_returns.dbg.spill, align 4, !dbg !1380
    #dbg_declare(ptr %expected_returns.dbg.spill, !1370, !DIExpression(), !1381)
  %result = call i32 @max_size_frame(i32 1024, i32 2, i32 0), !dbg !1382
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1382
    #dbg_declare(ptr %result.dbg.spill, !1372, !DIExpression(), !1383)
  %0 = icmp eq i32 %result, 148, !dbg !1384
  ret i1 %0, !dbg !1385
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_54() unnamed_addr #0 !dbg !1386 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 0, ptr %blocksize.dbg.spill, align 4, !dbg !1398
    #dbg_declare(ptr %blocksize.dbg.spill, !1388, !DIExpression(), !1399)
  store i32 0, ptr %channels.dbg.spill, align 4, !dbg !1400
    #dbg_declare(ptr %channels.dbg.spill, !1390, !DIExpression(), !1401)
  store i32 16, ptr %bitdepth.dbg.spill, align 4, !dbg !1402
    #dbg_declare(ptr %bitdepth.dbg.spill, !1392, !DIExpression(), !1403)
  store i32 18, ptr %expected_returns.dbg.spill, align 4, !dbg !1404
    #dbg_declare(ptr %expected_returns.dbg.spill, !1394, !DIExpression(), !1405)
  %result = call i32 @max_size_frame(i32 0, i32 0, i32 16), !dbg !1406
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1406
    #dbg_declare(ptr %result.dbg.spill, !1396, !DIExpression(), !1407)
  %0 = icmp eq i32 %result, 18, !dbg !1408
  ret i1 %0, !dbg !1409
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_55() unnamed_addr #0 !dbg !1410 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 0, ptr %blocksize.dbg.spill, align 4, !dbg !1422
    #dbg_declare(ptr %blocksize.dbg.spill, !1412, !DIExpression(), !1423)
  store i32 2, ptr %channels.dbg.spill, align 4, !dbg !1424
    #dbg_declare(ptr %channels.dbg.spill, !1414, !DIExpression(), !1425)
  store i32 0, ptr %bitdepth.dbg.spill, align 4, !dbg !1426
    #dbg_declare(ptr %bitdepth.dbg.spill, !1416, !DIExpression(), !1427)
  store i32 20, ptr %expected_returns.dbg.spill, align 4, !dbg !1428
    #dbg_declare(ptr %expected_returns.dbg.spill, !1418, !DIExpression(), !1429)
  %result = call i32 @max_size_frame(i32 0, i32 2, i32 0), !dbg !1430
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1430
    #dbg_declare(ptr %result.dbg.spill, !1420, !DIExpression(), !1431)
  %0 = icmp eq i32 %result, 20, !dbg !1432
  ret i1 %0, !dbg !1433
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_56() unnamed_addr #0 !dbg !1434 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 1024, ptr %blocksize.dbg.spill, align 4, !dbg !1446
    #dbg_declare(ptr %blocksize.dbg.spill, !1436, !DIExpression(), !1447)
  store i32 0, ptr %channels.dbg.spill, align 4, !dbg !1448
    #dbg_declare(ptr %channels.dbg.spill, !1438, !DIExpression(), !1449)
  store i32 0, ptr %bitdepth.dbg.spill, align 4, !dbg !1450
    #dbg_declare(ptr %bitdepth.dbg.spill, !1440, !DIExpression(), !1451)
  store i32 18, ptr %expected_returns.dbg.spill, align 4, !dbg !1452
    #dbg_declare(ptr %expected_returns.dbg.spill, !1442, !DIExpression(), !1453)
  %result = call i32 @max_size_frame(i32 1024, i32 0, i32 0), !dbg !1454
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1454
    #dbg_declare(ptr %result.dbg.spill, !1444, !DIExpression(), !1455)
  %0 = icmp eq i32 %result, 18, !dbg !1456
  ret i1 %0, !dbg !1457
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_57() unnamed_addr #0 !dbg !1458 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 0, ptr %blocksize.dbg.spill, align 4, !dbg !1470
    #dbg_declare(ptr %blocksize.dbg.spill, !1460, !DIExpression(), !1471)
  store i32 0, ptr %channels.dbg.spill, align 4, !dbg !1472
    #dbg_declare(ptr %channels.dbg.spill, !1462, !DIExpression(), !1473)
  store i32 0, ptr %bitdepth.dbg.spill, align 4, !dbg !1474
    #dbg_declare(ptr %bitdepth.dbg.spill, !1464, !DIExpression(), !1475)
  store i32 18, ptr %expected_returns.dbg.spill, align 4, !dbg !1476
    #dbg_declare(ptr %expected_returns.dbg.spill, !1466, !DIExpression(), !1477)
  %result = call i32 @max_size_frame(i32 0, i32 0, i32 0), !dbg !1478
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1478
    #dbg_declare(ptr %result.dbg.spill, !1468, !DIExpression(), !1479)
  %0 = icmp eq i32 %result, 18, !dbg !1480
  ret i1 %0, !dbg !1481
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_58() unnamed_addr #0 !dbg !1482 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 65535, ptr %blocksize.dbg.spill, align 4, !dbg !1494
    #dbg_declare(ptr %blocksize.dbg.spill, !1484, !DIExpression(), !1495)
  store i32 2, ptr %channels.dbg.spill, align 4, !dbg !1496
    #dbg_declare(ptr %channels.dbg.spill, !1486, !DIExpression(), !1497)
  store i32 32, ptr %bitdepth.dbg.spill, align 4, !dbg !1498
    #dbg_declare(ptr %bitdepth.dbg.spill, !1488, !DIExpression(), !1499)
  store i32 524300, ptr %expected_returns.dbg.spill, align 4, !dbg !1500
    #dbg_declare(ptr %expected_returns.dbg.spill, !1490, !DIExpression(), !1501)
  %result = call i32 @max_size_frame(i32 65535, i32 2, i32 32), !dbg !1502
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1502
    #dbg_declare(ptr %result.dbg.spill, !1492, !DIExpression(), !1503)
  %0 = icmp eq i32 %result, 524300, !dbg !1504
  ret i1 %0, !dbg !1505
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_59() unnamed_addr #0 !dbg !1506 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 1024, ptr %blocksize.dbg.spill, align 4, !dbg !1518
    #dbg_declare(ptr %blocksize.dbg.spill, !1508, !DIExpression(), !1519)
  store i32 255, ptr %channels.dbg.spill, align 4, !dbg !1520
    #dbg_declare(ptr %channels.dbg.spill, !1510, !DIExpression(), !1521)
  store i32 16, ptr %bitdepth.dbg.spill, align 4, !dbg !1522
    #dbg_declare(ptr %bitdepth.dbg.spill, !1512, !DIExpression(), !1523)
  store i32 522513, ptr %expected_returns.dbg.spill, align 4, !dbg !1524
    #dbg_declare(ptr %expected_returns.dbg.spill, !1514, !DIExpression(), !1525)
  %result = call i32 @max_size_frame(i32 1024, i32 255, i32 16), !dbg !1526
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1526
    #dbg_declare(ptr %result.dbg.spill, !1516, !DIExpression(), !1527)
  %0 = icmp eq i32 %result, 522513, !dbg !1528
  ret i1 %0, !dbg !1529
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_60() unnamed_addr #0 !dbg !1530 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 1024, ptr %blocksize.dbg.spill, align 4, !dbg !1542
    #dbg_declare(ptr %blocksize.dbg.spill, !1532, !DIExpression(), !1543)
  store i32 2, ptr %channels.dbg.spill, align 4, !dbg !1544
    #dbg_declare(ptr %channels.dbg.spill, !1534, !DIExpression(), !1545)
  store i32 255, ptr %bitdepth.dbg.spill, align 4, !dbg !1546
    #dbg_declare(ptr %bitdepth.dbg.spill, !1536, !DIExpression(), !1547)
  store i32 65428, ptr %expected_returns.dbg.spill, align 4, !dbg !1548
    #dbg_declare(ptr %expected_returns.dbg.spill, !1538, !DIExpression(), !1549)
  %result = call i32 @max_size_frame(i32 1024, i32 2, i32 255), !dbg !1550
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1550
    #dbg_declare(ptr %result.dbg.spill, !1540, !DIExpression(), !1551)
  %0 = icmp eq i32 %result, 65428, !dbg !1552
  ret i1 %0, !dbg !1553
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_61() unnamed_addr #0 !dbg !1554 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 32768, ptr %blocksize.dbg.spill, align 4, !dbg !1566
    #dbg_declare(ptr %blocksize.dbg.spill, !1556, !DIExpression(), !1567)
  store i32 8, ptr %channels.dbg.spill, align 4, !dbg !1568
    #dbg_declare(ptr %channels.dbg.spill, !1558, !DIExpression(), !1569)
  store i32 32, ptr %bitdepth.dbg.spill, align 4, !dbg !1570
    #dbg_declare(ptr %bitdepth.dbg.spill, !1560, !DIExpression(), !1571)
  store i32 1048602, ptr %expected_returns.dbg.spill, align 4, !dbg !1572
    #dbg_declare(ptr %expected_returns.dbg.spill, !1562, !DIExpression(), !1573)
  %result = call i32 @max_size_frame(i32 32768, i32 8, i32 32), !dbg !1574
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1574
    #dbg_declare(ptr %result.dbg.spill, !1564, !DIExpression(), !1575)
  %0 = icmp eq i32 %result, 1048602, !dbg !1576
  ret i1 %0, !dbg !1577
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_62() unnamed_addr #0 !dbg !1578 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 16384, ptr %blocksize.dbg.spill, align 4, !dbg !1590
    #dbg_declare(ptr %blocksize.dbg.spill, !1580, !DIExpression(), !1591)
  store i32 16, ptr %channels.dbg.spill, align 4, !dbg !1592
    #dbg_declare(ptr %channels.dbg.spill, !1582, !DIExpression(), !1593)
  store i32 24, ptr %bitdepth.dbg.spill, align 4, !dbg !1594
    #dbg_declare(ptr %bitdepth.dbg.spill, !1584, !DIExpression(), !1595)
  store i32 786466, ptr %expected_returns.dbg.spill, align 4, !dbg !1596
    #dbg_declare(ptr %expected_returns.dbg.spill, !1586, !DIExpression(), !1597)
  %result = call i32 @max_size_frame(i32 16384, i32 16, i32 24), !dbg !1598
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1598
    #dbg_declare(ptr %result.dbg.spill, !1588, !DIExpression(), !1599)
  %0 = icmp eq i32 %result, 786466, !dbg !1600
  ret i1 %0, !dbg !1601
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_63() unnamed_addr #0 !dbg !1602 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 8192, ptr %blocksize.dbg.spill, align 4, !dbg !1614
    #dbg_declare(ptr %blocksize.dbg.spill, !1604, !DIExpression(), !1615)
  store i32 32, ptr %channels.dbg.spill, align 4, !dbg !1616
    #dbg_declare(ptr %channels.dbg.spill, !1606, !DIExpression(), !1617)
  store i32 16, ptr %bitdepth.dbg.spill, align 4, !dbg !1618
    #dbg_declare(ptr %bitdepth.dbg.spill, !1608, !DIExpression(), !1619)
  store i32 524338, ptr %expected_returns.dbg.spill, align 4, !dbg !1620
    #dbg_declare(ptr %expected_returns.dbg.spill, !1610, !DIExpression(), !1621)
  %result = call i32 @max_size_frame(i32 8192, i32 32, i32 16), !dbg !1622
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1622
    #dbg_declare(ptr %result.dbg.spill, !1612, !DIExpression(), !1623)
  %0 = icmp eq i32 %result, 524338, !dbg !1624
  ret i1 %0, !dbg !1625
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_64() unnamed_addr #0 !dbg !1626 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 65536, ptr %blocksize.dbg.spill, align 4, !dbg !1638
    #dbg_declare(ptr %blocksize.dbg.spill, !1628, !DIExpression(), !1639)
  store i32 2, ptr %channels.dbg.spill, align 4, !dbg !1640
    #dbg_declare(ptr %channels.dbg.spill, !1630, !DIExpression(), !1641)
  store i32 32, ptr %bitdepth.dbg.spill, align 4, !dbg !1642
    #dbg_declare(ptr %bitdepth.dbg.spill, !1632, !DIExpression(), !1643)
  store i32 524308, ptr %expected_returns.dbg.spill, align 4, !dbg !1644
    #dbg_declare(ptr %expected_returns.dbg.spill, !1634, !DIExpression(), !1645)
  %result = call i32 @max_size_frame(i32 65536, i32 2, i32 32), !dbg !1646
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1646
    #dbg_declare(ptr %result.dbg.spill, !1636, !DIExpression(), !1647)
  %0 = icmp eq i32 %result, 524308, !dbg !1648
  ret i1 %0, !dbg !1649
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_65() unnamed_addr #0 !dbg !1650 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 4096, ptr %blocksize.dbg.spill, align 4, !dbg !1662
    #dbg_declare(ptr %blocksize.dbg.spill, !1652, !DIExpression(), !1663)
  store i32 64, ptr %channels.dbg.spill, align 4, !dbg !1664
    #dbg_declare(ptr %channels.dbg.spill, !1654, !DIExpression(), !1665)
  store i32 16, ptr %bitdepth.dbg.spill, align 4, !dbg !1666
    #dbg_declare(ptr %bitdepth.dbg.spill, !1656, !DIExpression(), !1667)
  store i32 524370, ptr %expected_returns.dbg.spill, align 4, !dbg !1668
    #dbg_declare(ptr %expected_returns.dbg.spill, !1658, !DIExpression(), !1669)
  %result = call i32 @max_size_frame(i32 4096, i32 64, i32 16), !dbg !1670
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1670
    #dbg_declare(ptr %result.dbg.spill, !1660, !DIExpression(), !1671)
  %0 = icmp eq i32 %result, 524370, !dbg !1672
  ret i1 %0, !dbg !1673
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_66() unnamed_addr #0 !dbg !1674 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 1024, ptr %blocksize.dbg.spill, align 4, !dbg !1686
    #dbg_declare(ptr %blocksize.dbg.spill, !1676, !DIExpression(), !1687)
  store i32 2, ptr %channels.dbg.spill, align 4, !dbg !1688
    #dbg_declare(ptr %channels.dbg.spill, !1678, !DIExpression(), !1689)
  store i32 128, ptr %bitdepth.dbg.spill, align 4, !dbg !1690
    #dbg_declare(ptr %bitdepth.dbg.spill, !1680, !DIExpression(), !1691)
  store i32 32916, ptr %expected_returns.dbg.spill, align 4, !dbg !1692
    #dbg_declare(ptr %expected_returns.dbg.spill, !1682, !DIExpression(), !1693)
  %result = call i32 @max_size_frame(i32 1024, i32 2, i32 128), !dbg !1694
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1694
    #dbg_declare(ptr %result.dbg.spill, !1684, !DIExpression(), !1695)
  %0 = icmp eq i32 %result, 32916, !dbg !1696
  ret i1 %0, !dbg !1697
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_67() unnamed_addr #0 !dbg !1698 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 4294967, ptr %blocksize.dbg.spill, align 4, !dbg !1710
    #dbg_declare(ptr %blocksize.dbg.spill, !1700, !DIExpression(), !1711)
  store i32 2, ptr %channels.dbg.spill, align 4, !dbg !1712
    #dbg_declare(ptr %channels.dbg.spill, !1702, !DIExpression(), !1713)
  store i32 16, ptr %bitdepth.dbg.spill, align 4, !dbg !1714
    #dbg_declare(ptr %bitdepth.dbg.spill, !1704, !DIExpression(), !1715)
  store i32 17716759, ptr %expected_returns.dbg.spill, align 4, !dbg !1716
    #dbg_declare(ptr %expected_returns.dbg.spill, !1706, !DIExpression(), !1717)
  %result = call i32 @max_size_frame(i32 4294967, i32 2, i32 16), !dbg !1718
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1718
    #dbg_declare(ptr %result.dbg.spill, !1708, !DIExpression(), !1719)
  %0 = icmp eq i32 %result, 17716759, !dbg !1720
  ret i1 %0, !dbg !1721
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_68() unnamed_addr #0 !dbg !1722 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 1024, ptr %blocksize.dbg.spill, align 4, !dbg !1734
    #dbg_declare(ptr %blocksize.dbg.spill, !1724, !DIExpression(), !1735)
  store i32 4294967, ptr %channels.dbg.spill, align 4, !dbg !1736
    #dbg_declare(ptr %channels.dbg.spill, !1726, !DIExpression(), !1737)
  store i32 16, ptr %bitdepth.dbg.spill, align 4, !dbg !1738
    #dbg_declare(ptr %bitdepth.dbg.spill, !1728, !DIExpression(), !1739)
  store i32 210452809, ptr %expected_returns.dbg.spill, align 4, !dbg !1740
    #dbg_declare(ptr %expected_returns.dbg.spill, !1730, !DIExpression(), !1741)
  %result = call i32 @max_size_frame(i32 1024, i32 4294967, i32 16), !dbg !1742
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1742
    #dbg_declare(ptr %result.dbg.spill, !1732, !DIExpression(), !1743)
  %0 = icmp eq i32 %result, 210452809, !dbg !1744
  ret i1 %0, !dbg !1745
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_69() unnamed_addr #0 !dbg !1746 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 1024, ptr %blocksize.dbg.spill, align 4, !dbg !1758
    #dbg_declare(ptr %blocksize.dbg.spill, !1748, !DIExpression(), !1759)
  store i32 2, ptr %channels.dbg.spill, align 4, !dbg !1760
    #dbg_declare(ptr %channels.dbg.spill, !1750, !DIExpression(), !1761)
  store i32 4294967, ptr %bitdepth.dbg.spill, align 4, !dbg !1762
    #dbg_declare(ptr %bitdepth.dbg.spill, !1752, !DIExpression(), !1763)
  store i32 25769876, ptr %expected_returns.dbg.spill, align 4, !dbg !1764
    #dbg_declare(ptr %expected_returns.dbg.spill, !1754, !DIExpression(), !1765)
  %result = call i32 @max_size_frame(i32 1024, i32 2, i32 4294967), !dbg !1766
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1766
    #dbg_declare(ptr %result.dbg.spill, !1756, !DIExpression(), !1767)
  %0 = icmp eq i32 %result, 25769876, !dbg !1768
  ret i1 %0, !dbg !1769
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_70() unnamed_addr #0 !dbg !1770 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 10000, ptr %blocksize.dbg.spill, align 4, !dbg !1782
    #dbg_declare(ptr %blocksize.dbg.spill, !1772, !DIExpression(), !1783)
  store i32 100, ptr %channels.dbg.spill, align 4, !dbg !1784
    #dbg_declare(ptr %channels.dbg.spill, !1774, !DIExpression(), !1785)
  store i32 100, ptr %bitdepth.dbg.spill, align 4, !dbg !1786
    #dbg_declare(ptr %bitdepth.dbg.spill, !1776, !DIExpression(), !1787)
  store i32 12500118, ptr %expected_returns.dbg.spill, align 4, !dbg !1788
    #dbg_declare(ptr %expected_returns.dbg.spill, !1778, !DIExpression(), !1789)
  %result = call i32 @max_size_frame(i32 10000, i32 100, i32 100), !dbg !1790
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1790
    #dbg_declare(ptr %result.dbg.spill, !1780, !DIExpression(), !1791)
  %0 = icmp eq i32 %result, 12500118, !dbg !1792
  ret i1 %0, !dbg !1793
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_71() unnamed_addr #0 !dbg !1794 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 1024, ptr %blocksize.dbg.spill, align 4, !dbg !1806
    #dbg_declare(ptr %blocksize.dbg.spill, !1796, !DIExpression(), !1807)
  store i32 2, ptr %channels.dbg.spill, align 4, !dbg !1808
    #dbg_declare(ptr %channels.dbg.spill, !1798, !DIExpression(), !1809)
  store i32 1, ptr %bitdepth.dbg.spill, align 4, !dbg !1810
    #dbg_declare(ptr %bitdepth.dbg.spill, !1800, !DIExpression(), !1811)
  store i32 404, ptr %expected_returns.dbg.spill, align 4, !dbg !1812
    #dbg_declare(ptr %expected_returns.dbg.spill, !1802, !DIExpression(), !1813)
  %result = call i32 @max_size_frame(i32 1024, i32 2, i32 1), !dbg !1814
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1814
    #dbg_declare(ptr %result.dbg.spill, !1804, !DIExpression(), !1815)
  %0 = icmp eq i32 %result, 404, !dbg !1816
  ret i1 %0, !dbg !1817
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_72() unnamed_addr #0 !dbg !1818 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 1024, ptr %blocksize.dbg.spill, align 4, !dbg !1830
    #dbg_declare(ptr %blocksize.dbg.spill, !1820, !DIExpression(), !1831)
  store i32 2, ptr %channels.dbg.spill, align 4, !dbg !1832
    #dbg_declare(ptr %channels.dbg.spill, !1822, !DIExpression(), !1833)
  store i32 4, ptr %bitdepth.dbg.spill, align 4, !dbg !1834
    #dbg_declare(ptr %bitdepth.dbg.spill, !1824, !DIExpression(), !1835)
  store i32 1172, ptr %expected_returns.dbg.spill, align 4, !dbg !1836
    #dbg_declare(ptr %expected_returns.dbg.spill, !1826, !DIExpression(), !1837)
  %result = call i32 @max_size_frame(i32 1024, i32 2, i32 4), !dbg !1838
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1838
    #dbg_declare(ptr %result.dbg.spill, !1828, !DIExpression(), !1839)
  %0 = icmp eq i32 %result, 1172, !dbg !1840
  ret i1 %0, !dbg !1841
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_73() unnamed_addr #0 !dbg !1842 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 1024, ptr %blocksize.dbg.spill, align 4, !dbg !1854
    #dbg_declare(ptr %blocksize.dbg.spill, !1844, !DIExpression(), !1855)
  store i32 2, ptr %channels.dbg.spill, align 4, !dbg !1856
    #dbg_declare(ptr %channels.dbg.spill, !1846, !DIExpression(), !1857)
  store i32 12, ptr %bitdepth.dbg.spill, align 4, !dbg !1858
    #dbg_declare(ptr %bitdepth.dbg.spill, !1848, !DIExpression(), !1859)
  store i32 3220, ptr %expected_returns.dbg.spill, align 4, !dbg !1860
    #dbg_declare(ptr %expected_returns.dbg.spill, !1850, !DIExpression(), !1861)
  %result = call i32 @max_size_frame(i32 1024, i32 2, i32 12), !dbg !1862
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1862
    #dbg_declare(ptr %result.dbg.spill, !1852, !DIExpression(), !1863)
  %0 = icmp eq i32 %result, 3220, !dbg !1864
  ret i1 %0, !dbg !1865
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_74() unnamed_addr #0 !dbg !1866 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 1024, ptr %blocksize.dbg.spill, align 4, !dbg !1878
    #dbg_declare(ptr %blocksize.dbg.spill, !1868, !DIExpression(), !1879)
  store i32 2, ptr %channels.dbg.spill, align 4, !dbg !1880
    #dbg_declare(ptr %channels.dbg.spill, !1870, !DIExpression(), !1881)
  store i32 18, ptr %bitdepth.dbg.spill, align 4, !dbg !1882
    #dbg_declare(ptr %bitdepth.dbg.spill, !1872, !DIExpression(), !1883)
  store i32 4756, ptr %expected_returns.dbg.spill, align 4, !dbg !1884
    #dbg_declare(ptr %expected_returns.dbg.spill, !1874, !DIExpression(), !1885)
  %result = call i32 @max_size_frame(i32 1024, i32 2, i32 18), !dbg !1886
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1886
    #dbg_declare(ptr %result.dbg.spill, !1876, !DIExpression(), !1887)
  %0 = icmp eq i32 %result, 4756, !dbg !1888
  ret i1 %0, !dbg !1889
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_75() unnamed_addr #0 !dbg !1890 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 1024, ptr %blocksize.dbg.spill, align 4, !dbg !1902
    #dbg_declare(ptr %blocksize.dbg.spill, !1892, !DIExpression(), !1903)
  store i32 2, ptr %channels.dbg.spill, align 4, !dbg !1904
    #dbg_declare(ptr %channels.dbg.spill, !1894, !DIExpression(), !1905)
  store i32 31, ptr %bitdepth.dbg.spill, align 4, !dbg !1906
    #dbg_declare(ptr %bitdepth.dbg.spill, !1896, !DIExpression(), !1907)
  store i32 8084, ptr %expected_returns.dbg.spill, align 4, !dbg !1908
    #dbg_declare(ptr %expected_returns.dbg.spill, !1898, !DIExpression(), !1909)
  %result = call i32 @max_size_frame(i32 1024, i32 2, i32 31), !dbg !1910
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1910
    #dbg_declare(ptr %result.dbg.spill, !1900, !DIExpression(), !1911)
  %0 = icmp eq i32 %result, 8084, !dbg !1912
  ret i1 %0, !dbg !1913
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_76() unnamed_addr #0 !dbg !1914 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 1024, ptr %blocksize.dbg.spill, align 4, !dbg !1926
    #dbg_declare(ptr %blocksize.dbg.spill, !1916, !DIExpression(), !1927)
  store i32 2, ptr %channels.dbg.spill, align 4, !dbg !1928
    #dbg_declare(ptr %channels.dbg.spill, !1918, !DIExpression(), !1929)
  store i32 33, ptr %bitdepth.dbg.spill, align 4, !dbg !1930
    #dbg_declare(ptr %bitdepth.dbg.spill, !1920, !DIExpression(), !1931)
  store i32 8596, ptr %expected_returns.dbg.spill, align 4, !dbg !1932
    #dbg_declare(ptr %expected_returns.dbg.spill, !1922, !DIExpression(), !1933)
  %result = call i32 @max_size_frame(i32 1024, i32 2, i32 33), !dbg !1934
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1934
    #dbg_declare(ptr %result.dbg.spill, !1924, !DIExpression(), !1935)
  %0 = icmp eq i32 %result, 8596, !dbg !1936
  ret i1 %0, !dbg !1937
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_77() unnamed_addr #0 !dbg !1938 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 1024, ptr %blocksize.dbg.spill, align 4, !dbg !1950
    #dbg_declare(ptr %blocksize.dbg.spill, !1940, !DIExpression(), !1951)
  store i32 2, ptr %channels.dbg.spill, align 4, !dbg !1952
    #dbg_declare(ptr %channels.dbg.spill, !1942, !DIExpression(), !1953)
  store i32 64, ptr %bitdepth.dbg.spill, align 4, !dbg !1954
    #dbg_declare(ptr %bitdepth.dbg.spill, !1944, !DIExpression(), !1955)
  store i32 16532, ptr %expected_returns.dbg.spill, align 4, !dbg !1956
    #dbg_declare(ptr %expected_returns.dbg.spill, !1946, !DIExpression(), !1957)
  %result = call i32 @max_size_frame(i32 1024, i32 2, i32 64), !dbg !1958
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1958
    #dbg_declare(ptr %result.dbg.spill, !1948, !DIExpression(), !1959)
  %0 = icmp eq i32 %result, 16532, !dbg !1960
  ret i1 %0, !dbg !1961
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_78() unnamed_addr #0 !dbg !1962 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 1024, ptr %blocksize.dbg.spill, align 4, !dbg !1974
    #dbg_declare(ptr %blocksize.dbg.spill, !1964, !DIExpression(), !1975)
  store i32 1, ptr %channels.dbg.spill, align 4, !dbg !1976
    #dbg_declare(ptr %channels.dbg.spill, !1966, !DIExpression(), !1977)
  store i32 32, ptr %bitdepth.dbg.spill, align 4, !dbg !1978
    #dbg_declare(ptr %bitdepth.dbg.spill, !1968, !DIExpression(), !1979)
  store i32 4115, ptr %expected_returns.dbg.spill, align 4, !dbg !1980
    #dbg_declare(ptr %expected_returns.dbg.spill, !1970, !DIExpression(), !1981)
  %result = call i32 @max_size_frame(i32 1024, i32 1, i32 32), !dbg !1982
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1982
    #dbg_declare(ptr %result.dbg.spill, !1972, !DIExpression(), !1983)
  %0 = icmp eq i32 %result, 4115, !dbg !1984
  ret i1 %0, !dbg !1985
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_79() unnamed_addr #0 !dbg !1986 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 1024, ptr %blocksize.dbg.spill, align 4, !dbg !1998
    #dbg_declare(ptr %blocksize.dbg.spill, !1988, !DIExpression(), !1999)
  store i32 3, ptr %channels.dbg.spill, align 4, !dbg !2000
    #dbg_declare(ptr %channels.dbg.spill, !1990, !DIExpression(), !2001)
  store i32 32, ptr %bitdepth.dbg.spill, align 4, !dbg !2002
    #dbg_declare(ptr %bitdepth.dbg.spill, !1992, !DIExpression(), !2003)
  store i32 12309, ptr %expected_returns.dbg.spill, align 4, !dbg !2004
    #dbg_declare(ptr %expected_returns.dbg.spill, !1994, !DIExpression(), !2005)
  %result = call i32 @max_size_frame(i32 1024, i32 3, i32 32), !dbg !2006
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !2006
    #dbg_declare(ptr %result.dbg.spill, !1996, !DIExpression(), !2007)
  %0 = icmp eq i32 %result, 12309, !dbg !2008
  ret i1 %0, !dbg !2009
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_80() unnamed_addr #0 !dbg !2010 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 1024, ptr %blocksize.dbg.spill, align 4, !dbg !2022
    #dbg_declare(ptr %blocksize.dbg.spill, !2012, !DIExpression(), !2023)
  store i32 255, ptr %channels.dbg.spill, align 4, !dbg !2024
    #dbg_declare(ptr %channels.dbg.spill, !2014, !DIExpression(), !2025)
  store i32 32, ptr %bitdepth.dbg.spill, align 4, !dbg !2026
    #dbg_declare(ptr %bitdepth.dbg.spill, !2016, !DIExpression(), !2027)
  store i32 1044753, ptr %expected_returns.dbg.spill, align 4, !dbg !2028
    #dbg_declare(ptr %expected_returns.dbg.spill, !2018, !DIExpression(), !2029)
  %result = call i32 @max_size_frame(i32 1024, i32 255, i32 32), !dbg !2030
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !2030
    #dbg_declare(ptr %result.dbg.spill, !2020, !DIExpression(), !2031)
  %0 = icmp eq i32 %result, 1044753, !dbg !2032
  ret i1 %0, !dbg !2033
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_81() unnamed_addr #0 !dbg !2034 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 8, ptr %blocksize.dbg.spill, align 4, !dbg !2046
    #dbg_declare(ptr %blocksize.dbg.spill, !2036, !DIExpression(), !2047)
  store i32 1, ptr %channels.dbg.spill, align 4, !dbg !2048
    #dbg_declare(ptr %channels.dbg.spill, !2038, !DIExpression(), !2049)
  store i32 8, ptr %bitdepth.dbg.spill, align 4, !dbg !2050
    #dbg_declare(ptr %bitdepth.dbg.spill, !2040, !DIExpression(), !2051)
  store i32 27, ptr %expected_returns.dbg.spill, align 4, !dbg !2052
    #dbg_declare(ptr %expected_returns.dbg.spill, !2042, !DIExpression(), !2053)
  %result = call i32 @max_size_frame(i32 8, i32 1, i32 8), !dbg !2054
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !2054
    #dbg_declare(ptr %result.dbg.spill, !2044, !DIExpression(), !2055)
  %0 = icmp eq i32 %result, 27, !dbg !2056
  ret i1 %0, !dbg !2057
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_82() unnamed_addr #0 !dbg !2058 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 8, ptr %blocksize.dbg.spill, align 4, !dbg !2070
    #dbg_declare(ptr %blocksize.dbg.spill, !2060, !DIExpression(), !2071)
  store i32 2, ptr %channels.dbg.spill, align 4, !dbg !2072
    #dbg_declare(ptr %channels.dbg.spill, !2062, !DIExpression(), !2073)
  store i32 8, ptr %bitdepth.dbg.spill, align 4, !dbg !2074
    #dbg_declare(ptr %bitdepth.dbg.spill, !2064, !DIExpression(), !2075)
  store i32 37, ptr %expected_returns.dbg.spill, align 4, !dbg !2076
    #dbg_declare(ptr %expected_returns.dbg.spill, !2066, !DIExpression(), !2077)
  %result = call i32 @max_size_frame(i32 8, i32 2, i32 8), !dbg !2078
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !2078
    #dbg_declare(ptr %result.dbg.spill, !2068, !DIExpression(), !2079)
  %0 = icmp eq i32 %result, 37, !dbg !2080
  ret i1 %0, !dbg !2081
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_83() unnamed_addr #0 !dbg !2082 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 8, ptr %blocksize.dbg.spill, align 4, !dbg !2094
    #dbg_declare(ptr %blocksize.dbg.spill, !2084, !DIExpression(), !2095)
  store i32 3, ptr %channels.dbg.spill, align 4, !dbg !2096
    #dbg_declare(ptr %channels.dbg.spill, !2086, !DIExpression(), !2097)
  store i32 8, ptr %bitdepth.dbg.spill, align 4, !dbg !2098
    #dbg_declare(ptr %bitdepth.dbg.spill, !2088, !DIExpression(), !2099)
  store i32 45, ptr %expected_returns.dbg.spill, align 4, !dbg !2100
    #dbg_declare(ptr %expected_returns.dbg.spill, !2090, !DIExpression(), !2101)
  %result = call i32 @max_size_frame(i32 8, i32 3, i32 8), !dbg !2102
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !2102
    #dbg_declare(ptr %result.dbg.spill, !2092, !DIExpression(), !2103)
  %0 = icmp eq i32 %result, 45, !dbg !2104
  ret i1 %0, !dbg !2105
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_84() unnamed_addr #0 !dbg !2106 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 8, ptr %blocksize.dbg.spill, align 4, !dbg !2118
    #dbg_declare(ptr %blocksize.dbg.spill, !2108, !DIExpression(), !2119)
  store i32 2, ptr %channels.dbg.spill, align 4, !dbg !2120
    #dbg_declare(ptr %channels.dbg.spill, !2110, !DIExpression(), !2121)
  store i32 32, ptr %bitdepth.dbg.spill, align 4, !dbg !2122
    #dbg_declare(ptr %bitdepth.dbg.spill, !2112, !DIExpression(), !2123)
  store i32 84, ptr %expected_returns.dbg.spill, align 4, !dbg !2124
    #dbg_declare(ptr %expected_returns.dbg.spill, !2114, !DIExpression(), !2125)
  %result = call i32 @max_size_frame(i32 8, i32 2, i32 32), !dbg !2126
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !2126
    #dbg_declare(ptr %result.dbg.spill, !2116, !DIExpression(), !2127)
  %0 = icmp eq i32 %result, 84, !dbg !2128
  ret i1 %0, !dbg !2129
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_85() unnamed_addr #0 !dbg !2130 {
start:
  %result.dbg.spill = alloca i32, align 4
  %expected_returns.dbg.spill = alloca i32, align 4
  %bitdepth.dbg.spill = alloca i32, align 4
  %channels.dbg.spill = alloca i32, align 4
  %blocksize.dbg.spill = alloca i32, align 4
  store i32 8, ptr %blocksize.dbg.spill, align 4, !dbg !2142
    #dbg_declare(ptr %blocksize.dbg.spill, !2132, !DIExpression(), !2143)
  store i32 4, ptr %channels.dbg.spill, align 4, !dbg !2144
    #dbg_declare(ptr %channels.dbg.spill, !2134, !DIExpression(), !2145)
  store i32 32, ptr %bitdepth.dbg.spill, align 4, !dbg !2146
    #dbg_declare(ptr %bitdepth.dbg.spill, !2136, !DIExpression(), !2147)
  store i32 150, ptr %expected_returns.dbg.spill, align 4, !dbg !2148
    #dbg_declare(ptr %expected_returns.dbg.spill, !2138, !DIExpression(), !2149)
  %result = call i32 @max_size_frame(i32 8, i32 4, i32 32), !dbg !2150
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !2150
    #dbg_declare(ptr %result.dbg.spill, !2140, !DIExpression(), !2151)
  %0 = icmp eq i32 %result, 150, !dbg !2152
  ret i1 %0, !dbg !2153
}

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #2 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}

!0 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !1, producer: "clang LLVM (rustc version 1.70.0-nightly (84dd17b56 2023-04-14))", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!1 = !DIFile(filename: "lib.rs/@/2if6jbdbuueez9up", directory: "/crisp-rust-outputs/B01_organic/max_size_frame_lib/translated_rust")
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 2, !"RtLibUseGOT", i32 1}
!4 = !{i32 2, !"Dwarf Version", i32 4}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = distinct !DISubprogram(name: "max_size_frame_ffi", linkageName: "max_size_frame", scope: !8, file: !7, line: 25, type: !11, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !14)
!7 = !DIFile(filename: "src/lib.rs", directory: "/crisp-rust-outputs/B01_organic/max_size_frame_lib/translated_rust", checksumkind: CSK_MD5, checksum: "010fe9525d459212a68bf4685810c633")
!8 = !DINamespace(name: "lib", scope: !9)
!9 = !DINamespace(name: "src", scope: !10)
!10 = !DINamespace(name: "max_size_frame_lib", scope: null)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !13, !13, !13}
!13 = !DIBasicType(name: "u32", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16, !17}
!15 = !DILocalVariable(name: "blocksize", arg: 1, scope: !6, file: !7, line: 26, type: !13)
!16 = !DILocalVariable(name: "channels", arg: 2, scope: !6, file: !7, line: 27, type: !13)
!17 = !DILocalVariable(name: "bitdepth", arg: 3, scope: !6, file: !7, line: 28, type: !13)
!18 = !{}
!19 = !DILocation(line: 26, column: 5, scope: !6)
!20 = !DILocation(line: 27, column: 5, scope: !6)
!21 = !DILocation(line: 28, column: 5, scope: !6)
!22 = !DILocation(line: 30, column: 5, scope: !6)
!23 = !DILocation(line: 31, column: 2, scope: !6)
!24 = distinct !DISubprogram(name: "max_size_frame", linkageName: "_ZN18max_size_frame_lib3src3lib14max_size_frame17haa8e092ae8de9b50E", scope: !8, file: !7, line: 4, type: !11, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !25)
!25 = !{!26, !27, !28}
!26 = !DILocalVariable(name: "blocksize", arg: 1, scope: !24, file: !7, line: 4, type: !13)
!27 = !DILocalVariable(name: "channels", arg: 2, scope: !24, file: !7, line: 4, type: !13)
!28 = !DILocalVariable(name: "bitdepth", arg: 3, scope: !24, file: !7, line: 4, type: !13)
!29 = !DILocation(line: 4, column: 23, scope: !24)
!30 = !DILocation(line: 4, column: 44, scope: !24)
!31 = !DILocation(line: 4, column: 64, scope: !24)
!32 = !DILocalVariable(name: "self", arg: 1, scope: !33, file: !34, line: 1188, type: !13)
!33 = distinct !DISubprogram(name: "wrapping_add", linkageName: "_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_add17ha47a709bc54d730dE", scope: !35, file: !34, line: 1188, type: !38, scopeLine: 1188, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !40)
!34 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/num/uint_macros.rs", directory: "", checksumkind: CSK_MD5, checksum: "b2a733f80e3cd43066f918bdafc87bd0")
!35 = !DINamespace(name: "{impl#8}", scope: !36)
!36 = !DINamespace(name: "num", scope: !37)
!37 = !DINamespace(name: "core", scope: null)
!38 = !DISubroutineType(types: !39)
!39 = !{!13, !13, !13}
!40 = !{!32, !41}
!41 = !DILocalVariable(name: "rhs", arg: 2, scope: !33, file: !34, line: 1188, type: !13)
!42 = !DILocation(line: 1188, column: 35, scope: !33, inlinedAt: !43)
!43 = distinct !DILocation(line: 5, column: 5, scope: !24)
!44 = !DILocation(line: 1188, column: 41, scope: !33, inlinedAt: !43)
!45 = !DILocation(line: 1189, column: 13, scope: !33, inlinedAt: !43)
!46 = !DILocalVariable(name: "self", arg: 1, scope: !47, file: !34, line: 1252, type: !13)
!47 = distinct !DISubprogram(name: "wrapping_mul", linkageName: "_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_mul17h04f18fd3c570e36cE", scope: !35, file: !34, line: 1252, type: !38, scopeLine: 1252, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !48)
!48 = !{!46, !49}
!49 = !DILocalVariable(name: "rhs", arg: 2, scope: !47, file: !34, line: 1252, type: !13)
!50 = !DILocation(line: 1252, column: 35, scope: !47, inlinedAt: !51)
!51 = distinct !DILocation(line: 6, column: 9, scope: !24)
!52 = !DILocation(line: 1252, column: 41, scope: !47, inlinedAt: !51)
!53 = !DILocation(line: 1253, column: 13, scope: !47, inlinedAt: !51)
!54 = !DILocation(line: 8, column: 49, scope: !24)
!55 = !DILocation(line: 1252, column: 35, scope: !47, inlinedAt: !56)
!56 = distinct !DILocation(line: 8, column: 27, scope: !24)
!57 = !DILocation(line: 1252, column: 41, scope: !47, inlinedAt: !56)
!58 = !DILocation(line: 1253, column: 13, scope: !47, inlinedAt: !56)
!59 = !DILocation(line: 1252, column: 35, scope: !47, inlinedAt: !60)
!60 = distinct !DILocation(line: 6, column: 9, scope: !24)
!61 = !DILocation(line: 1252, column: 41, scope: !47, inlinedAt: !60)
!62 = !DILocation(line: 1253, column: 13, scope: !47, inlinedAt: !60)
!63 = !DILocation(line: 1252, column: 35, scope: !47, inlinedAt: !64)
!64 = distinct !DILocation(line: 10, column: 17, scope: !24)
!65 = !DILocation(line: 1252, column: 41, scope: !47, inlinedAt: !64)
!66 = !DILocation(line: 1253, column: 13, scope: !47, inlinedAt: !64)
!67 = !DILocation(line: 12, column: 35, scope: !24)
!68 = !DILocation(line: 1252, column: 35, scope: !47, inlinedAt: !69)
!69 = distinct !DILocation(line: 10, column: 17, scope: !24)
!70 = !DILocation(line: 1252, column: 41, scope: !47, inlinedAt: !69)
!71 = !DILocation(line: 1253, column: 13, scope: !47, inlinedAt: !69)
!72 = !DILocation(line: 1188, column: 35, scope: !33, inlinedAt: !73)
!73 = distinct !DILocation(line: 6, column: 9, scope: !24)
!74 = !DILocation(line: 1188, column: 41, scope: !33, inlinedAt: !73)
!75 = !DILocation(line: 1189, column: 13, scope: !33, inlinedAt: !73)
!76 = !DILocation(line: 16, column: 57, scope: !24)
!77 = !DILocation(line: 1188, column: 35, scope: !33, inlinedAt: !78)
!78 = distinct !DILocation(line: 16, column: 35, scope: !24)
!79 = !DILocation(line: 1188, column: 41, scope: !33, inlinedAt: !78)
!80 = !DILocation(line: 1189, column: 13, scope: !33, inlinedAt: !78)
!81 = !DILocation(line: 1252, column: 35, scope: !47, inlinedAt: !82)
!82 = distinct !DILocation(line: 15, column: 17, scope: !24)
!83 = !DILocation(line: 1252, column: 41, scope: !47, inlinedAt: !82)
!84 = !DILocation(line: 1253, column: 13, scope: !47, inlinedAt: !82)
!85 = !DILocation(line: 17, column: 35, scope: !24)
!86 = !DILocation(line: 1252, column: 35, scope: !47, inlinedAt: !87)
!87 = distinct !DILocation(line: 15, column: 17, scope: !24)
!88 = !DILocation(line: 1252, column: 41, scope: !47, inlinedAt: !87)
!89 = !DILocation(line: 1253, column: 13, scope: !47, inlinedAt: !87)
!90 = !DILocation(line: 1188, column: 35, scope: !33, inlinedAt: !91)
!91 = distinct !DILocation(line: 6, column: 9, scope: !24)
!92 = !DILocation(line: 1188, column: 41, scope: !33, inlinedAt: !91)
!93 = !DILocation(line: 1189, column: 13, scope: !33, inlinedAt: !91)
!94 = !DILocation(line: 1188, column: 35, scope: !33, inlinedAt: !95)
!95 = distinct !DILocation(line: 6, column: 9, scope: !24)
!96 = !DILocation(line: 1188, column: 41, scope: !33, inlinedAt: !95)
!97 = !DILocation(line: 1189, column: 13, scope: !33, inlinedAt: !95)
!98 = !DILocalVariable(name: "self", arg: 1, scope: !99, file: !34, line: 1274, type: !13)
!99 = distinct !DISubprogram(name: "wrapping_div", linkageName: "_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_div17hf40315d2ad7da5c6E", scope: !35, file: !34, line: 1274, type: !38, scopeLine: 1274, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !100)
!100 = !{!98, !101}
!101 = !DILocalVariable(name: "rhs", arg: 2, scope: !99, file: !34, line: 1274, type: !13)
!102 = !DILocation(line: 1274, column: 35, scope: !99, inlinedAt: !103)
!103 = distinct !DILocation(line: 6, column: 9, scope: !24)
!104 = !DILocation(line: 1274, column: 41, scope: !99, inlinedAt: !103)
!105 = !DILocation(line: 1275, column: 13, scope: !99, inlinedAt: !103)
!106 = !DILocation(line: 1188, column: 35, scope: !33, inlinedAt: !107)
!107 = distinct !DILocation(line: 5, column: 5, scope: !24)
!108 = !DILocation(line: 1188, column: 41, scope: !33, inlinedAt: !107)
!109 = !DILocation(line: 1189, column: 13, scope: !33, inlinedAt: !107)
!110 = !DILocation(line: 22, column: 2, scope: !24)
!111 = distinct !DISubprogram(name: "run_test_1", scope: !8, file: !7, line: 34, type: !112, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !115)
!112 = !DISubroutineType(types: !113)
!113 = !{!114}
!114 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!115 = !{!116, !118, !120, !122, !124}
!116 = !DILocalVariable(name: "blocksize", scope: !117, file: !7, line: 35, type: !13, align: 4)
!117 = distinct !DILexicalBlock(scope: !111, file: !7, line: 35, column: 5)
!118 = !DILocalVariable(name: "channels", scope: !119, file: !7, line: 36, type: !13, align: 4)
!119 = distinct !DILexicalBlock(scope: !117, file: !7, line: 36, column: 5)
!120 = !DILocalVariable(name: "bitdepth", scope: !121, file: !7, line: 37, type: !13, align: 4)
!121 = distinct !DILexicalBlock(scope: !119, file: !7, line: 37, column: 5)
!122 = !DILocalVariable(name: "expected_returns", scope: !123, file: !7, line: 38, type: !13, align: 4)
!123 = distinct !DILexicalBlock(scope: !121, file: !7, line: 38, column: 5)
!124 = !DILocalVariable(name: "result", scope: !125, file: !7, line: 39, type: !13, align: 4)
!125 = distinct !DILexicalBlock(scope: !123, file: !7, line: 39, column: 5)
!126 = !DILocation(line: 35, column: 31, scope: !111)
!127 = !DILocation(line: 35, column: 9, scope: !117)
!128 = !DILocation(line: 36, column: 30, scope: !117)
!129 = !DILocation(line: 36, column: 9, scope: !119)
!130 = !DILocation(line: 37, column: 30, scope: !119)
!131 = !DILocation(line: 37, column: 9, scope: !121)
!132 = !DILocation(line: 38, column: 38, scope: !121)
!133 = !DILocation(line: 38, column: 9, scope: !123)
!134 = !DILocation(line: 39, column: 18, scope: !123)
!135 = !DILocation(line: 39, column: 9, scope: !125)
!136 = !DILocation(line: 40, column: 5, scope: !125)
!137 = !DILocation(line: 41, column: 2, scope: !111)
!138 = distinct !DISubprogram(name: "run_test_2", scope: !8, file: !7, line: 44, type: !112, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !139)
!139 = !{!140, !142, !144, !146, !148}
!140 = !DILocalVariable(name: "blocksize", scope: !141, file: !7, line: 45, type: !13, align: 4)
!141 = distinct !DILexicalBlock(scope: !138, file: !7, line: 45, column: 5)
!142 = !DILocalVariable(name: "channels", scope: !143, file: !7, line: 46, type: !13, align: 4)
!143 = distinct !DILexicalBlock(scope: !141, file: !7, line: 46, column: 5)
!144 = !DILocalVariable(name: "bitdepth", scope: !145, file: !7, line: 47, type: !13, align: 4)
!145 = distinct !DILexicalBlock(scope: !143, file: !7, line: 47, column: 5)
!146 = !DILocalVariable(name: "expected_returns", scope: !147, file: !7, line: 48, type: !13, align: 4)
!147 = distinct !DILexicalBlock(scope: !145, file: !7, line: 48, column: 5)
!148 = !DILocalVariable(name: "result", scope: !149, file: !7, line: 49, type: !13, align: 4)
!149 = distinct !DILexicalBlock(scope: !147, file: !7, line: 49, column: 5)
!150 = !DILocation(line: 45, column: 31, scope: !138)
!151 = !DILocation(line: 45, column: 9, scope: !141)
!152 = !DILocation(line: 46, column: 30, scope: !141)
!153 = !DILocation(line: 46, column: 9, scope: !143)
!154 = !DILocation(line: 47, column: 30, scope: !143)
!155 = !DILocation(line: 47, column: 9, scope: !145)
!156 = !DILocation(line: 48, column: 38, scope: !145)
!157 = !DILocation(line: 48, column: 9, scope: !147)
!158 = !DILocation(line: 49, column: 18, scope: !147)
!159 = !DILocation(line: 49, column: 9, scope: !149)
!160 = !DILocation(line: 50, column: 5, scope: !149)
!161 = !DILocation(line: 51, column: 2, scope: !138)
!162 = distinct !DISubprogram(name: "run_test_3", scope: !8, file: !7, line: 54, type: !112, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !163)
!163 = !{!164, !166, !168, !170, !172}
!164 = !DILocalVariable(name: "blocksize", scope: !165, file: !7, line: 55, type: !13, align: 4)
!165 = distinct !DILexicalBlock(scope: !162, file: !7, line: 55, column: 5)
!166 = !DILocalVariable(name: "channels", scope: !167, file: !7, line: 56, type: !13, align: 4)
!167 = distinct !DILexicalBlock(scope: !165, file: !7, line: 56, column: 5)
!168 = !DILocalVariable(name: "bitdepth", scope: !169, file: !7, line: 57, type: !13, align: 4)
!169 = distinct !DILexicalBlock(scope: !167, file: !7, line: 57, column: 5)
!170 = !DILocalVariable(name: "expected_returns", scope: !171, file: !7, line: 58, type: !13, align: 4)
!171 = distinct !DILexicalBlock(scope: !169, file: !7, line: 58, column: 5)
!172 = !DILocalVariable(name: "result", scope: !173, file: !7, line: 59, type: !13, align: 4)
!173 = distinct !DILexicalBlock(scope: !171, file: !7, line: 59, column: 5)
!174 = !DILocation(line: 55, column: 31, scope: !162)
!175 = !DILocation(line: 55, column: 9, scope: !165)
!176 = !DILocation(line: 56, column: 30, scope: !165)
!177 = !DILocation(line: 56, column: 9, scope: !167)
!178 = !DILocation(line: 57, column: 30, scope: !167)
!179 = !DILocation(line: 57, column: 9, scope: !169)
!180 = !DILocation(line: 58, column: 38, scope: !169)
!181 = !DILocation(line: 58, column: 9, scope: !171)
!182 = !DILocation(line: 59, column: 18, scope: !171)
!183 = !DILocation(line: 59, column: 9, scope: !173)
!184 = !DILocation(line: 60, column: 5, scope: !173)
!185 = !DILocation(line: 61, column: 2, scope: !162)
!186 = distinct !DISubprogram(name: "run_test_4", scope: !8, file: !7, line: 64, type: !112, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !187)
!187 = !{!188, !190, !192, !194, !196}
!188 = !DILocalVariable(name: "blocksize", scope: !189, file: !7, line: 65, type: !13, align: 4)
!189 = distinct !DILexicalBlock(scope: !186, file: !7, line: 65, column: 5)
!190 = !DILocalVariable(name: "channels", scope: !191, file: !7, line: 66, type: !13, align: 4)
!191 = distinct !DILexicalBlock(scope: !189, file: !7, line: 66, column: 5)
!192 = !DILocalVariable(name: "bitdepth", scope: !193, file: !7, line: 67, type: !13, align: 4)
!193 = distinct !DILexicalBlock(scope: !191, file: !7, line: 67, column: 5)
!194 = !DILocalVariable(name: "expected_returns", scope: !195, file: !7, line: 68, type: !13, align: 4)
!195 = distinct !DILexicalBlock(scope: !193, file: !7, line: 68, column: 5)
!196 = !DILocalVariable(name: "result", scope: !197, file: !7, line: 69, type: !13, align: 4)
!197 = distinct !DILexicalBlock(scope: !195, file: !7, line: 69, column: 5)
!198 = !DILocation(line: 65, column: 31, scope: !186)
!199 = !DILocation(line: 65, column: 9, scope: !189)
!200 = !DILocation(line: 66, column: 30, scope: !189)
!201 = !DILocation(line: 66, column: 9, scope: !191)
!202 = !DILocation(line: 67, column: 30, scope: !191)
!203 = !DILocation(line: 67, column: 9, scope: !193)
!204 = !DILocation(line: 68, column: 38, scope: !193)
!205 = !DILocation(line: 68, column: 9, scope: !195)
!206 = !DILocation(line: 69, column: 18, scope: !195)
!207 = !DILocation(line: 69, column: 9, scope: !197)
!208 = !DILocation(line: 70, column: 5, scope: !197)
!209 = !DILocation(line: 71, column: 2, scope: !186)
!210 = distinct !DISubprogram(name: "run_test_5", scope: !8, file: !7, line: 74, type: !112, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !211)
!211 = !{!212, !214, !216, !218, !220}
!212 = !DILocalVariable(name: "blocksize", scope: !213, file: !7, line: 75, type: !13, align: 4)
!213 = distinct !DILexicalBlock(scope: !210, file: !7, line: 75, column: 5)
!214 = !DILocalVariable(name: "channels", scope: !215, file: !7, line: 76, type: !13, align: 4)
!215 = distinct !DILexicalBlock(scope: !213, file: !7, line: 76, column: 5)
!216 = !DILocalVariable(name: "bitdepth", scope: !217, file: !7, line: 77, type: !13, align: 4)
!217 = distinct !DILexicalBlock(scope: !215, file: !7, line: 77, column: 5)
!218 = !DILocalVariable(name: "expected_returns", scope: !219, file: !7, line: 78, type: !13, align: 4)
!219 = distinct !DILexicalBlock(scope: !217, file: !7, line: 78, column: 5)
!220 = !DILocalVariable(name: "result", scope: !221, file: !7, line: 79, type: !13, align: 4)
!221 = distinct !DILexicalBlock(scope: !219, file: !7, line: 79, column: 5)
!222 = !DILocation(line: 75, column: 31, scope: !210)
!223 = !DILocation(line: 75, column: 9, scope: !213)
!224 = !DILocation(line: 76, column: 30, scope: !213)
!225 = !DILocation(line: 76, column: 9, scope: !215)
!226 = !DILocation(line: 77, column: 30, scope: !215)
!227 = !DILocation(line: 77, column: 9, scope: !217)
!228 = !DILocation(line: 78, column: 38, scope: !217)
!229 = !DILocation(line: 78, column: 9, scope: !219)
!230 = !DILocation(line: 79, column: 18, scope: !219)
!231 = !DILocation(line: 79, column: 9, scope: !221)
!232 = !DILocation(line: 80, column: 5, scope: !221)
!233 = !DILocation(line: 81, column: 2, scope: !210)
!234 = distinct !DISubprogram(name: "run_test_6", scope: !8, file: !7, line: 85, type: !112, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !235)
!235 = !{!236, !238, !240, !242, !244}
!236 = !DILocalVariable(name: "blocksize", scope: !237, file: !7, line: 86, type: !13, align: 4)
!237 = distinct !DILexicalBlock(scope: !234, file: !7, line: 86, column: 5)
!238 = !DILocalVariable(name: "channels", scope: !239, file: !7, line: 87, type: !13, align: 4)
!239 = distinct !DILexicalBlock(scope: !237, file: !7, line: 87, column: 5)
!240 = !DILocalVariable(name: "bitdepth", scope: !241, file: !7, line: 88, type: !13, align: 4)
!241 = distinct !DILexicalBlock(scope: !239, file: !7, line: 88, column: 5)
!242 = !DILocalVariable(name: "expected_returns", scope: !243, file: !7, line: 89, type: !13, align: 4)
!243 = distinct !DILexicalBlock(scope: !241, file: !7, line: 89, column: 5)
!244 = !DILocalVariable(name: "result", scope: !245, file: !7, line: 90, type: !13, align: 4)
!245 = distinct !DILexicalBlock(scope: !243, file: !7, line: 90, column: 5)
!246 = !DILocation(line: 86, column: 31, scope: !234)
!247 = !DILocation(line: 86, column: 9, scope: !237)
!248 = !DILocation(line: 87, column: 30, scope: !237)
!249 = !DILocation(line: 87, column: 9, scope: !239)
!250 = !DILocation(line: 88, column: 30, scope: !239)
!251 = !DILocation(line: 88, column: 9, scope: !241)
!252 = !DILocation(line: 89, column: 38, scope: !241)
!253 = !DILocation(line: 89, column: 9, scope: !243)
!254 = !DILocation(line: 90, column: 18, scope: !243)
!255 = !DILocation(line: 90, column: 9, scope: !245)
!256 = !DILocation(line: 91, column: 5, scope: !245)
!257 = !DILocation(line: 92, column: 2, scope: !234)
!258 = distinct !DISubprogram(name: "run_test_7", scope: !8, file: !7, line: 95, type: !112, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !259)
!259 = !{!260, !262, !264, !266, !268}
!260 = !DILocalVariable(name: "blocksize", scope: !261, file: !7, line: 96, type: !13, align: 4)
!261 = distinct !DILexicalBlock(scope: !258, file: !7, line: 96, column: 5)
!262 = !DILocalVariable(name: "channels", scope: !263, file: !7, line: 97, type: !13, align: 4)
!263 = distinct !DILexicalBlock(scope: !261, file: !7, line: 97, column: 5)
!264 = !DILocalVariable(name: "bitdepth", scope: !265, file: !7, line: 98, type: !13, align: 4)
!265 = distinct !DILexicalBlock(scope: !263, file: !7, line: 98, column: 5)
!266 = !DILocalVariable(name: "expected_returns", scope: !267, file: !7, line: 99, type: !13, align: 4)
!267 = distinct !DILexicalBlock(scope: !265, file: !7, line: 99, column: 5)
!268 = !DILocalVariable(name: "result", scope: !269, file: !7, line: 100, type: !13, align: 4)
!269 = distinct !DILexicalBlock(scope: !267, file: !7, line: 100, column: 5)
!270 = !DILocation(line: 96, column: 31, scope: !258)
!271 = !DILocation(line: 96, column: 9, scope: !261)
!272 = !DILocation(line: 97, column: 30, scope: !261)
!273 = !DILocation(line: 97, column: 9, scope: !263)
!274 = !DILocation(line: 98, column: 30, scope: !263)
!275 = !DILocation(line: 98, column: 9, scope: !265)
!276 = !DILocation(line: 99, column: 38, scope: !265)
!277 = !DILocation(line: 99, column: 9, scope: !267)
!278 = !DILocation(line: 100, column: 18, scope: !267)
!279 = !DILocation(line: 100, column: 9, scope: !269)
!280 = !DILocation(line: 101, column: 5, scope: !269)
!281 = !DILocation(line: 102, column: 2, scope: !258)
!282 = distinct !DISubprogram(name: "run_test_8", scope: !8, file: !7, line: 105, type: !112, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !283)
!283 = !{!284, !286, !288, !290, !292}
!284 = !DILocalVariable(name: "blocksize", scope: !285, file: !7, line: 106, type: !13, align: 4)
!285 = distinct !DILexicalBlock(scope: !282, file: !7, line: 106, column: 5)
!286 = !DILocalVariable(name: "channels", scope: !287, file: !7, line: 107, type: !13, align: 4)
!287 = distinct !DILexicalBlock(scope: !285, file: !7, line: 107, column: 5)
!288 = !DILocalVariable(name: "bitdepth", scope: !289, file: !7, line: 108, type: !13, align: 4)
!289 = distinct !DILexicalBlock(scope: !287, file: !7, line: 108, column: 5)
!290 = !DILocalVariable(name: "expected_returns", scope: !291, file: !7, line: 109, type: !13, align: 4)
!291 = distinct !DILexicalBlock(scope: !289, file: !7, line: 109, column: 5)
!292 = !DILocalVariable(name: "result", scope: !293, file: !7, line: 110, type: !13, align: 4)
!293 = distinct !DILexicalBlock(scope: !291, file: !7, line: 110, column: 5)
!294 = !DILocation(line: 106, column: 31, scope: !282)
!295 = !DILocation(line: 106, column: 9, scope: !285)
!296 = !DILocation(line: 107, column: 30, scope: !285)
!297 = !DILocation(line: 107, column: 9, scope: !287)
!298 = !DILocation(line: 108, column: 30, scope: !287)
!299 = !DILocation(line: 108, column: 9, scope: !289)
!300 = !DILocation(line: 109, column: 38, scope: !289)
!301 = !DILocation(line: 109, column: 9, scope: !291)
!302 = !DILocation(line: 110, column: 18, scope: !291)
!303 = !DILocation(line: 110, column: 9, scope: !293)
!304 = !DILocation(line: 111, column: 5, scope: !293)
!305 = !DILocation(line: 112, column: 2, scope: !282)
!306 = distinct !DISubprogram(name: "run_test_9", scope: !8, file: !7, line: 115, type: !112, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !307)
!307 = !{!308, !310, !312, !314, !316}
!308 = !DILocalVariable(name: "blocksize", scope: !309, file: !7, line: 116, type: !13, align: 4)
!309 = distinct !DILexicalBlock(scope: !306, file: !7, line: 116, column: 5)
!310 = !DILocalVariable(name: "channels", scope: !311, file: !7, line: 117, type: !13, align: 4)
!311 = distinct !DILexicalBlock(scope: !309, file: !7, line: 117, column: 5)
!312 = !DILocalVariable(name: "bitdepth", scope: !313, file: !7, line: 118, type: !13, align: 4)
!313 = distinct !DILexicalBlock(scope: !311, file: !7, line: 118, column: 5)
!314 = !DILocalVariable(name: "expected_returns", scope: !315, file: !7, line: 119, type: !13, align: 4)
!315 = distinct !DILexicalBlock(scope: !313, file: !7, line: 119, column: 5)
!316 = !DILocalVariable(name: "result", scope: !317, file: !7, line: 120, type: !13, align: 4)
!317 = distinct !DILexicalBlock(scope: !315, file: !7, line: 120, column: 5)
!318 = !DILocation(line: 116, column: 31, scope: !306)
!319 = !DILocation(line: 116, column: 9, scope: !309)
!320 = !DILocation(line: 117, column: 30, scope: !309)
!321 = !DILocation(line: 117, column: 9, scope: !311)
!322 = !DILocation(line: 118, column: 30, scope: !311)
!323 = !DILocation(line: 118, column: 9, scope: !313)
!324 = !DILocation(line: 119, column: 38, scope: !313)
!325 = !DILocation(line: 119, column: 9, scope: !315)
!326 = !DILocation(line: 120, column: 18, scope: !315)
!327 = !DILocation(line: 120, column: 9, scope: !317)
!328 = !DILocation(line: 121, column: 5, scope: !317)
!329 = !DILocation(line: 122, column: 2, scope: !306)
!330 = distinct !DISubprogram(name: "run_test_10", scope: !8, file: !7, line: 125, type: !112, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !331)
!331 = !{!332, !334, !336, !338, !340}
!332 = !DILocalVariable(name: "blocksize", scope: !333, file: !7, line: 126, type: !13, align: 4)
!333 = distinct !DILexicalBlock(scope: !330, file: !7, line: 126, column: 5)
!334 = !DILocalVariable(name: "channels", scope: !335, file: !7, line: 127, type: !13, align: 4)
!335 = distinct !DILexicalBlock(scope: !333, file: !7, line: 127, column: 5)
!336 = !DILocalVariable(name: "bitdepth", scope: !337, file: !7, line: 128, type: !13, align: 4)
!337 = distinct !DILexicalBlock(scope: !335, file: !7, line: 128, column: 5)
!338 = !DILocalVariable(name: "expected_returns", scope: !339, file: !7, line: 129, type: !13, align: 4)
!339 = distinct !DILexicalBlock(scope: !337, file: !7, line: 129, column: 5)
!340 = !DILocalVariable(name: "result", scope: !341, file: !7, line: 130, type: !13, align: 4)
!341 = distinct !DILexicalBlock(scope: !339, file: !7, line: 130, column: 5)
!342 = !DILocation(line: 126, column: 31, scope: !330)
!343 = !DILocation(line: 126, column: 9, scope: !333)
!344 = !DILocation(line: 127, column: 30, scope: !333)
!345 = !DILocation(line: 127, column: 9, scope: !335)
!346 = !DILocation(line: 128, column: 30, scope: !335)
!347 = !DILocation(line: 128, column: 9, scope: !337)
!348 = !DILocation(line: 129, column: 38, scope: !337)
!349 = !DILocation(line: 129, column: 9, scope: !339)
!350 = !DILocation(line: 130, column: 18, scope: !339)
!351 = !DILocation(line: 130, column: 9, scope: !341)
!352 = !DILocation(line: 131, column: 5, scope: !341)
!353 = !DILocation(line: 132, column: 2, scope: !330)
!354 = distinct !DISubprogram(name: "run_test_11", scope: !8, file: !7, line: 135, type: !112, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !355)
!355 = !{!356, !358, !360, !362, !364}
!356 = !DILocalVariable(name: "blocksize", scope: !357, file: !7, line: 136, type: !13, align: 4)
!357 = distinct !DILexicalBlock(scope: !354, file: !7, line: 136, column: 5)
!358 = !DILocalVariable(name: "channels", scope: !359, file: !7, line: 137, type: !13, align: 4)
!359 = distinct !DILexicalBlock(scope: !357, file: !7, line: 137, column: 5)
!360 = !DILocalVariable(name: "bitdepth", scope: !361, file: !7, line: 138, type: !13, align: 4)
!361 = distinct !DILexicalBlock(scope: !359, file: !7, line: 138, column: 5)
!362 = !DILocalVariable(name: "expected_returns", scope: !363, file: !7, line: 139, type: !13, align: 4)
!363 = distinct !DILexicalBlock(scope: !361, file: !7, line: 139, column: 5)
!364 = !DILocalVariable(name: "result", scope: !365, file: !7, line: 140, type: !13, align: 4)
!365 = distinct !DILexicalBlock(scope: !363, file: !7, line: 140, column: 5)
!366 = !DILocation(line: 136, column: 31, scope: !354)
!367 = !DILocation(line: 136, column: 9, scope: !357)
!368 = !DILocation(line: 137, column: 30, scope: !357)
!369 = !DILocation(line: 137, column: 9, scope: !359)
!370 = !DILocation(line: 138, column: 30, scope: !359)
!371 = !DILocation(line: 138, column: 9, scope: !361)
!372 = !DILocation(line: 139, column: 38, scope: !361)
!373 = !DILocation(line: 139, column: 9, scope: !363)
!374 = !DILocation(line: 140, column: 18, scope: !363)
!375 = !DILocation(line: 140, column: 9, scope: !365)
!376 = !DILocation(line: 141, column: 5, scope: !365)
!377 = !DILocation(line: 142, column: 2, scope: !354)
!378 = distinct !DISubprogram(name: "run_test_12", scope: !8, file: !7, line: 145, type: !112, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !379)
!379 = !{!380, !382, !384, !386, !388}
!380 = !DILocalVariable(name: "blocksize", scope: !381, file: !7, line: 146, type: !13, align: 4)
!381 = distinct !DILexicalBlock(scope: !378, file: !7, line: 146, column: 5)
!382 = !DILocalVariable(name: "channels", scope: !383, file: !7, line: 147, type: !13, align: 4)
!383 = distinct !DILexicalBlock(scope: !381, file: !7, line: 147, column: 5)
!384 = !DILocalVariable(name: "bitdepth", scope: !385, file: !7, line: 148, type: !13, align: 4)
!385 = distinct !DILexicalBlock(scope: !383, file: !7, line: 148, column: 5)
!386 = !DILocalVariable(name: "expected_returns", scope: !387, file: !7, line: 149, type: !13, align: 4)
!387 = distinct !DILexicalBlock(scope: !385, file: !7, line: 149, column: 5)
!388 = !DILocalVariable(name: "result", scope: !389, file: !7, line: 150, type: !13, align: 4)
!389 = distinct !DILexicalBlock(scope: !387, file: !7, line: 150, column: 5)
!390 = !DILocation(line: 146, column: 31, scope: !378)
!391 = !DILocation(line: 146, column: 9, scope: !381)
!392 = !DILocation(line: 147, column: 30, scope: !381)
!393 = !DILocation(line: 147, column: 9, scope: !383)
!394 = !DILocation(line: 148, column: 30, scope: !383)
!395 = !DILocation(line: 148, column: 9, scope: !385)
!396 = !DILocation(line: 149, column: 38, scope: !385)
!397 = !DILocation(line: 149, column: 9, scope: !387)
!398 = !DILocation(line: 150, column: 18, scope: !387)
!399 = !DILocation(line: 150, column: 9, scope: !389)
!400 = !DILocation(line: 151, column: 5, scope: !389)
!401 = !DILocation(line: 152, column: 2, scope: !378)
!402 = distinct !DISubprogram(name: "run_test_13", scope: !8, file: !7, line: 155, type: !112, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !403)
!403 = !{!404, !406, !408, !410, !412}
!404 = !DILocalVariable(name: "blocksize", scope: !405, file: !7, line: 156, type: !13, align: 4)
!405 = distinct !DILexicalBlock(scope: !402, file: !7, line: 156, column: 5)
!406 = !DILocalVariable(name: "channels", scope: !407, file: !7, line: 157, type: !13, align: 4)
!407 = distinct !DILexicalBlock(scope: !405, file: !7, line: 157, column: 5)
!408 = !DILocalVariable(name: "bitdepth", scope: !409, file: !7, line: 158, type: !13, align: 4)
!409 = distinct !DILexicalBlock(scope: !407, file: !7, line: 158, column: 5)
!410 = !DILocalVariable(name: "expected_returns", scope: !411, file: !7, line: 159, type: !13, align: 4)
!411 = distinct !DILexicalBlock(scope: !409, file: !7, line: 159, column: 5)
!412 = !DILocalVariable(name: "result", scope: !413, file: !7, line: 160, type: !13, align: 4)
!413 = distinct !DILexicalBlock(scope: !411, file: !7, line: 160, column: 5)
!414 = !DILocation(line: 156, column: 31, scope: !402)
!415 = !DILocation(line: 156, column: 9, scope: !405)
!416 = !DILocation(line: 157, column: 30, scope: !405)
!417 = !DILocation(line: 157, column: 9, scope: !407)
!418 = !DILocation(line: 158, column: 30, scope: !407)
!419 = !DILocation(line: 158, column: 9, scope: !409)
!420 = !DILocation(line: 159, column: 38, scope: !409)
!421 = !DILocation(line: 159, column: 9, scope: !411)
!422 = !DILocation(line: 160, column: 18, scope: !411)
!423 = !DILocation(line: 160, column: 9, scope: !413)
!424 = !DILocation(line: 161, column: 5, scope: !413)
!425 = !DILocation(line: 162, column: 2, scope: !402)
!426 = distinct !DISubprogram(name: "run_test_14", scope: !8, file: !7, line: 165, type: !112, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !427)
!427 = !{!428, !430, !432, !434, !436}
!428 = !DILocalVariable(name: "blocksize", scope: !429, file: !7, line: 166, type: !13, align: 4)
!429 = distinct !DILexicalBlock(scope: !426, file: !7, line: 166, column: 5)
!430 = !DILocalVariable(name: "channels", scope: !431, file: !7, line: 167, type: !13, align: 4)
!431 = distinct !DILexicalBlock(scope: !429, file: !7, line: 167, column: 5)
!432 = !DILocalVariable(name: "bitdepth", scope: !433, file: !7, line: 168, type: !13, align: 4)
!433 = distinct !DILexicalBlock(scope: !431, file: !7, line: 168, column: 5)
!434 = !DILocalVariable(name: "expected_returns", scope: !435, file: !7, line: 169, type: !13, align: 4)
!435 = distinct !DILexicalBlock(scope: !433, file: !7, line: 169, column: 5)
!436 = !DILocalVariable(name: "result", scope: !437, file: !7, line: 170, type: !13, align: 4)
!437 = distinct !DILexicalBlock(scope: !435, file: !7, line: 170, column: 5)
!438 = !DILocation(line: 166, column: 31, scope: !426)
!439 = !DILocation(line: 166, column: 9, scope: !429)
!440 = !DILocation(line: 167, column: 30, scope: !429)
!441 = !DILocation(line: 167, column: 9, scope: !431)
!442 = !DILocation(line: 168, column: 30, scope: !431)
!443 = !DILocation(line: 168, column: 9, scope: !433)
!444 = !DILocation(line: 169, column: 38, scope: !433)
!445 = !DILocation(line: 169, column: 9, scope: !435)
!446 = !DILocation(line: 170, column: 18, scope: !435)
!447 = !DILocation(line: 170, column: 9, scope: !437)
!448 = !DILocation(line: 171, column: 5, scope: !437)
!449 = !DILocation(line: 172, column: 2, scope: !426)
!450 = distinct !DISubprogram(name: "run_test_15", scope: !8, file: !7, line: 175, type: !112, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !451)
!451 = !{!452, !454, !456, !458, !460}
!452 = !DILocalVariable(name: "blocksize", scope: !453, file: !7, line: 176, type: !13, align: 4)
!453 = distinct !DILexicalBlock(scope: !450, file: !7, line: 176, column: 5)
!454 = !DILocalVariable(name: "channels", scope: !455, file: !7, line: 177, type: !13, align: 4)
!455 = distinct !DILexicalBlock(scope: !453, file: !7, line: 177, column: 5)
!456 = !DILocalVariable(name: "bitdepth", scope: !457, file: !7, line: 178, type: !13, align: 4)
!457 = distinct !DILexicalBlock(scope: !455, file: !7, line: 178, column: 5)
!458 = !DILocalVariable(name: "expected_returns", scope: !459, file: !7, line: 179, type: !13, align: 4)
!459 = distinct !DILexicalBlock(scope: !457, file: !7, line: 179, column: 5)
!460 = !DILocalVariable(name: "result", scope: !461, file: !7, line: 180, type: !13, align: 4)
!461 = distinct !DILexicalBlock(scope: !459, file: !7, line: 180, column: 5)
!462 = !DILocation(line: 176, column: 31, scope: !450)
!463 = !DILocation(line: 176, column: 9, scope: !453)
!464 = !DILocation(line: 177, column: 30, scope: !453)
!465 = !DILocation(line: 177, column: 9, scope: !455)
!466 = !DILocation(line: 178, column: 30, scope: !455)
!467 = !DILocation(line: 178, column: 9, scope: !457)
!468 = !DILocation(line: 179, column: 38, scope: !457)
!469 = !DILocation(line: 179, column: 9, scope: !459)
!470 = !DILocation(line: 180, column: 18, scope: !459)
!471 = !DILocation(line: 180, column: 9, scope: !461)
!472 = !DILocation(line: 181, column: 5, scope: !461)
!473 = !DILocation(line: 182, column: 2, scope: !450)
!474 = distinct !DISubprogram(name: "run_test_16", scope: !8, file: !7, line: 185, type: !112, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !475)
!475 = !{!476, !478, !480, !482, !484}
!476 = !DILocalVariable(name: "blocksize", scope: !477, file: !7, line: 186, type: !13, align: 4)
!477 = distinct !DILexicalBlock(scope: !474, file: !7, line: 186, column: 5)
!478 = !DILocalVariable(name: "channels", scope: !479, file: !7, line: 187, type: !13, align: 4)
!479 = distinct !DILexicalBlock(scope: !477, file: !7, line: 187, column: 5)
!480 = !DILocalVariable(name: "bitdepth", scope: !481, file: !7, line: 188, type: !13, align: 4)
!481 = distinct !DILexicalBlock(scope: !479, file: !7, line: 188, column: 5)
!482 = !DILocalVariable(name: "expected_returns", scope: !483, file: !7, line: 189, type: !13, align: 4)
!483 = distinct !DILexicalBlock(scope: !481, file: !7, line: 189, column: 5)
!484 = !DILocalVariable(name: "result", scope: !485, file: !7, line: 190, type: !13, align: 4)
!485 = distinct !DILexicalBlock(scope: !483, file: !7, line: 190, column: 5)
!486 = !DILocation(line: 186, column: 31, scope: !474)
!487 = !DILocation(line: 186, column: 9, scope: !477)
!488 = !DILocation(line: 187, column: 30, scope: !477)
!489 = !DILocation(line: 187, column: 9, scope: !479)
!490 = !DILocation(line: 188, column: 30, scope: !479)
!491 = !DILocation(line: 188, column: 9, scope: !481)
!492 = !DILocation(line: 189, column: 38, scope: !481)
!493 = !DILocation(line: 189, column: 9, scope: !483)
!494 = !DILocation(line: 190, column: 18, scope: !483)
!495 = !DILocation(line: 190, column: 9, scope: !485)
!496 = !DILocation(line: 191, column: 5, scope: !485)
!497 = !DILocation(line: 192, column: 2, scope: !474)
!498 = distinct !DISubprogram(name: "run_test_17", scope: !8, file: !7, line: 195, type: !112, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !499)
!499 = !{!500, !502, !504, !506, !508}
!500 = !DILocalVariable(name: "blocksize", scope: !501, file: !7, line: 196, type: !13, align: 4)
!501 = distinct !DILexicalBlock(scope: !498, file: !7, line: 196, column: 5)
!502 = !DILocalVariable(name: "channels", scope: !503, file: !7, line: 197, type: !13, align: 4)
!503 = distinct !DILexicalBlock(scope: !501, file: !7, line: 197, column: 5)
!504 = !DILocalVariable(name: "bitdepth", scope: !505, file: !7, line: 198, type: !13, align: 4)
!505 = distinct !DILexicalBlock(scope: !503, file: !7, line: 198, column: 5)
!506 = !DILocalVariable(name: "expected_returns", scope: !507, file: !7, line: 199, type: !13, align: 4)
!507 = distinct !DILexicalBlock(scope: !505, file: !7, line: 199, column: 5)
!508 = !DILocalVariable(name: "result", scope: !509, file: !7, line: 200, type: !13, align: 4)
!509 = distinct !DILexicalBlock(scope: !507, file: !7, line: 200, column: 5)
!510 = !DILocation(line: 196, column: 31, scope: !498)
!511 = !DILocation(line: 196, column: 9, scope: !501)
!512 = !DILocation(line: 197, column: 30, scope: !501)
!513 = !DILocation(line: 197, column: 9, scope: !503)
!514 = !DILocation(line: 198, column: 30, scope: !503)
!515 = !DILocation(line: 198, column: 9, scope: !505)
!516 = !DILocation(line: 199, column: 38, scope: !505)
!517 = !DILocation(line: 199, column: 9, scope: !507)
!518 = !DILocation(line: 200, column: 18, scope: !507)
!519 = !DILocation(line: 200, column: 9, scope: !509)
!520 = !DILocation(line: 201, column: 5, scope: !509)
!521 = !DILocation(line: 202, column: 2, scope: !498)
!522 = distinct !DISubprogram(name: "run_test_18", scope: !8, file: !7, line: 205, type: !112, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !523)
!523 = !{!524, !526, !528, !530, !532}
!524 = !DILocalVariable(name: "blocksize", scope: !525, file: !7, line: 206, type: !13, align: 4)
!525 = distinct !DILexicalBlock(scope: !522, file: !7, line: 206, column: 5)
!526 = !DILocalVariable(name: "channels", scope: !527, file: !7, line: 207, type: !13, align: 4)
!527 = distinct !DILexicalBlock(scope: !525, file: !7, line: 207, column: 5)
!528 = !DILocalVariable(name: "bitdepth", scope: !529, file: !7, line: 208, type: !13, align: 4)
!529 = distinct !DILexicalBlock(scope: !527, file: !7, line: 208, column: 5)
!530 = !DILocalVariable(name: "expected_returns", scope: !531, file: !7, line: 209, type: !13, align: 4)
!531 = distinct !DILexicalBlock(scope: !529, file: !7, line: 209, column: 5)
!532 = !DILocalVariable(name: "result", scope: !533, file: !7, line: 210, type: !13, align: 4)
!533 = distinct !DILexicalBlock(scope: !531, file: !7, line: 210, column: 5)
!534 = !DILocation(line: 206, column: 31, scope: !522)
!535 = !DILocation(line: 206, column: 9, scope: !525)
!536 = !DILocation(line: 207, column: 30, scope: !525)
!537 = !DILocation(line: 207, column: 9, scope: !527)
!538 = !DILocation(line: 208, column: 30, scope: !527)
!539 = !DILocation(line: 208, column: 9, scope: !529)
!540 = !DILocation(line: 209, column: 38, scope: !529)
!541 = !DILocation(line: 209, column: 9, scope: !531)
!542 = !DILocation(line: 210, column: 18, scope: !531)
!543 = !DILocation(line: 210, column: 9, scope: !533)
!544 = !DILocation(line: 211, column: 5, scope: !533)
!545 = !DILocation(line: 212, column: 2, scope: !522)
!546 = distinct !DISubprogram(name: "run_test_19", scope: !8, file: !7, line: 215, type: !112, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !547)
!547 = !{!548, !550, !552, !554, !556}
!548 = !DILocalVariable(name: "blocksize", scope: !549, file: !7, line: 216, type: !13, align: 4)
!549 = distinct !DILexicalBlock(scope: !546, file: !7, line: 216, column: 5)
!550 = !DILocalVariable(name: "channels", scope: !551, file: !7, line: 217, type: !13, align: 4)
!551 = distinct !DILexicalBlock(scope: !549, file: !7, line: 217, column: 5)
!552 = !DILocalVariable(name: "bitdepth", scope: !553, file: !7, line: 218, type: !13, align: 4)
!553 = distinct !DILexicalBlock(scope: !551, file: !7, line: 218, column: 5)
!554 = !DILocalVariable(name: "expected_returns", scope: !555, file: !7, line: 219, type: !13, align: 4)
!555 = distinct !DILexicalBlock(scope: !553, file: !7, line: 219, column: 5)
!556 = !DILocalVariable(name: "result", scope: !557, file: !7, line: 220, type: !13, align: 4)
!557 = distinct !DILexicalBlock(scope: !555, file: !7, line: 220, column: 5)
!558 = !DILocation(line: 216, column: 31, scope: !546)
!559 = !DILocation(line: 216, column: 9, scope: !549)
!560 = !DILocation(line: 217, column: 30, scope: !549)
!561 = !DILocation(line: 217, column: 9, scope: !551)
!562 = !DILocation(line: 218, column: 30, scope: !551)
!563 = !DILocation(line: 218, column: 9, scope: !553)
!564 = !DILocation(line: 219, column: 38, scope: !553)
!565 = !DILocation(line: 219, column: 9, scope: !555)
!566 = !DILocation(line: 220, column: 18, scope: !555)
!567 = !DILocation(line: 220, column: 9, scope: !557)
!568 = !DILocation(line: 221, column: 5, scope: !557)
!569 = !DILocation(line: 222, column: 2, scope: !546)
!570 = distinct !DISubprogram(name: "run_test_20", scope: !8, file: !7, line: 225, type: !112, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !571)
!571 = !{!572, !574, !576, !578, !580}
!572 = !DILocalVariable(name: "blocksize", scope: !573, file: !7, line: 226, type: !13, align: 4)
!573 = distinct !DILexicalBlock(scope: !570, file: !7, line: 226, column: 5)
!574 = !DILocalVariable(name: "channels", scope: !575, file: !7, line: 227, type: !13, align: 4)
!575 = distinct !DILexicalBlock(scope: !573, file: !7, line: 227, column: 5)
!576 = !DILocalVariable(name: "bitdepth", scope: !577, file: !7, line: 228, type: !13, align: 4)
!577 = distinct !DILexicalBlock(scope: !575, file: !7, line: 228, column: 5)
!578 = !DILocalVariable(name: "expected_returns", scope: !579, file: !7, line: 229, type: !13, align: 4)
!579 = distinct !DILexicalBlock(scope: !577, file: !7, line: 229, column: 5)
!580 = !DILocalVariable(name: "result", scope: !581, file: !7, line: 230, type: !13, align: 4)
!581 = distinct !DILexicalBlock(scope: !579, file: !7, line: 230, column: 5)
!582 = !DILocation(line: 226, column: 31, scope: !570)
!583 = !DILocation(line: 226, column: 9, scope: !573)
!584 = !DILocation(line: 227, column: 30, scope: !573)
!585 = !DILocation(line: 227, column: 9, scope: !575)
!586 = !DILocation(line: 228, column: 30, scope: !575)
!587 = !DILocation(line: 228, column: 9, scope: !577)
!588 = !DILocation(line: 229, column: 38, scope: !577)
!589 = !DILocation(line: 229, column: 9, scope: !579)
!590 = !DILocation(line: 230, column: 18, scope: !579)
!591 = !DILocation(line: 230, column: 9, scope: !581)
!592 = !DILocation(line: 231, column: 5, scope: !581)
!593 = !DILocation(line: 232, column: 2, scope: !570)
!594 = distinct !DISubprogram(name: "run_test_21", scope: !8, file: !7, line: 235, type: !112, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !595)
!595 = !{!596, !598, !600, !602, !604}
!596 = !DILocalVariable(name: "blocksize", scope: !597, file: !7, line: 236, type: !13, align: 4)
!597 = distinct !DILexicalBlock(scope: !594, file: !7, line: 236, column: 5)
!598 = !DILocalVariable(name: "channels", scope: !599, file: !7, line: 237, type: !13, align: 4)
!599 = distinct !DILexicalBlock(scope: !597, file: !7, line: 237, column: 5)
!600 = !DILocalVariable(name: "bitdepth", scope: !601, file: !7, line: 238, type: !13, align: 4)
!601 = distinct !DILexicalBlock(scope: !599, file: !7, line: 238, column: 5)
!602 = !DILocalVariable(name: "expected_returns", scope: !603, file: !7, line: 239, type: !13, align: 4)
!603 = distinct !DILexicalBlock(scope: !601, file: !7, line: 239, column: 5)
!604 = !DILocalVariable(name: "result", scope: !605, file: !7, line: 240, type: !13, align: 4)
!605 = distinct !DILexicalBlock(scope: !603, file: !7, line: 240, column: 5)
!606 = !DILocation(line: 236, column: 31, scope: !594)
!607 = !DILocation(line: 236, column: 9, scope: !597)
!608 = !DILocation(line: 237, column: 30, scope: !597)
!609 = !DILocation(line: 237, column: 9, scope: !599)
!610 = !DILocation(line: 238, column: 30, scope: !599)
!611 = !DILocation(line: 238, column: 9, scope: !601)
!612 = !DILocation(line: 239, column: 38, scope: !601)
!613 = !DILocation(line: 239, column: 9, scope: !603)
!614 = !DILocation(line: 240, column: 18, scope: !603)
!615 = !DILocation(line: 240, column: 9, scope: !605)
!616 = !DILocation(line: 241, column: 5, scope: !605)
!617 = !DILocation(line: 242, column: 2, scope: !594)
!618 = distinct !DISubprogram(name: "run_test_22", scope: !8, file: !7, line: 245, type: !112, scopeLine: 245, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !619)
!619 = !{!620, !622, !624, !626, !628}
!620 = !DILocalVariable(name: "blocksize", scope: !621, file: !7, line: 246, type: !13, align: 4)
!621 = distinct !DILexicalBlock(scope: !618, file: !7, line: 246, column: 5)
!622 = !DILocalVariable(name: "channels", scope: !623, file: !7, line: 247, type: !13, align: 4)
!623 = distinct !DILexicalBlock(scope: !621, file: !7, line: 247, column: 5)
!624 = !DILocalVariable(name: "bitdepth", scope: !625, file: !7, line: 248, type: !13, align: 4)
!625 = distinct !DILexicalBlock(scope: !623, file: !7, line: 248, column: 5)
!626 = !DILocalVariable(name: "expected_returns", scope: !627, file: !7, line: 249, type: !13, align: 4)
!627 = distinct !DILexicalBlock(scope: !625, file: !7, line: 249, column: 5)
!628 = !DILocalVariable(name: "result", scope: !629, file: !7, line: 250, type: !13, align: 4)
!629 = distinct !DILexicalBlock(scope: !627, file: !7, line: 250, column: 5)
!630 = !DILocation(line: 246, column: 31, scope: !618)
!631 = !DILocation(line: 246, column: 9, scope: !621)
!632 = !DILocation(line: 247, column: 30, scope: !621)
!633 = !DILocation(line: 247, column: 9, scope: !623)
!634 = !DILocation(line: 248, column: 30, scope: !623)
!635 = !DILocation(line: 248, column: 9, scope: !625)
!636 = !DILocation(line: 249, column: 38, scope: !625)
!637 = !DILocation(line: 249, column: 9, scope: !627)
!638 = !DILocation(line: 250, column: 18, scope: !627)
!639 = !DILocation(line: 250, column: 9, scope: !629)
!640 = !DILocation(line: 251, column: 5, scope: !629)
!641 = !DILocation(line: 252, column: 2, scope: !618)
!642 = distinct !DISubprogram(name: "run_test_23", scope: !8, file: !7, line: 255, type: !112, scopeLine: 255, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !643)
!643 = !{!644, !646, !648, !650, !652}
!644 = !DILocalVariable(name: "blocksize", scope: !645, file: !7, line: 256, type: !13, align: 4)
!645 = distinct !DILexicalBlock(scope: !642, file: !7, line: 256, column: 5)
!646 = !DILocalVariable(name: "channels", scope: !647, file: !7, line: 257, type: !13, align: 4)
!647 = distinct !DILexicalBlock(scope: !645, file: !7, line: 257, column: 5)
!648 = !DILocalVariable(name: "bitdepth", scope: !649, file: !7, line: 258, type: !13, align: 4)
!649 = distinct !DILexicalBlock(scope: !647, file: !7, line: 258, column: 5)
!650 = !DILocalVariable(name: "expected_returns", scope: !651, file: !7, line: 259, type: !13, align: 4)
!651 = distinct !DILexicalBlock(scope: !649, file: !7, line: 259, column: 5)
!652 = !DILocalVariable(name: "result", scope: !653, file: !7, line: 260, type: !13, align: 4)
!653 = distinct !DILexicalBlock(scope: !651, file: !7, line: 260, column: 5)
!654 = !DILocation(line: 256, column: 31, scope: !642)
!655 = !DILocation(line: 256, column: 9, scope: !645)
!656 = !DILocation(line: 257, column: 30, scope: !645)
!657 = !DILocation(line: 257, column: 9, scope: !647)
!658 = !DILocation(line: 258, column: 30, scope: !647)
!659 = !DILocation(line: 258, column: 9, scope: !649)
!660 = !DILocation(line: 259, column: 38, scope: !649)
!661 = !DILocation(line: 259, column: 9, scope: !651)
!662 = !DILocation(line: 260, column: 18, scope: !651)
!663 = !DILocation(line: 260, column: 9, scope: !653)
!664 = !DILocation(line: 261, column: 5, scope: !653)
!665 = !DILocation(line: 262, column: 2, scope: !642)
!666 = distinct !DISubprogram(name: "run_test_24", scope: !8, file: !7, line: 265, type: !112, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !667)
!667 = !{!668, !670, !672, !674, !676}
!668 = !DILocalVariable(name: "blocksize", scope: !669, file: !7, line: 266, type: !13, align: 4)
!669 = distinct !DILexicalBlock(scope: !666, file: !7, line: 266, column: 5)
!670 = !DILocalVariable(name: "channels", scope: !671, file: !7, line: 267, type: !13, align: 4)
!671 = distinct !DILexicalBlock(scope: !669, file: !7, line: 267, column: 5)
!672 = !DILocalVariable(name: "bitdepth", scope: !673, file: !7, line: 268, type: !13, align: 4)
!673 = distinct !DILexicalBlock(scope: !671, file: !7, line: 268, column: 5)
!674 = !DILocalVariable(name: "expected_returns", scope: !675, file: !7, line: 269, type: !13, align: 4)
!675 = distinct !DILexicalBlock(scope: !673, file: !7, line: 269, column: 5)
!676 = !DILocalVariable(name: "result", scope: !677, file: !7, line: 270, type: !13, align: 4)
!677 = distinct !DILexicalBlock(scope: !675, file: !7, line: 270, column: 5)
!678 = !DILocation(line: 266, column: 31, scope: !666)
!679 = !DILocation(line: 266, column: 9, scope: !669)
!680 = !DILocation(line: 267, column: 30, scope: !669)
!681 = !DILocation(line: 267, column: 9, scope: !671)
!682 = !DILocation(line: 268, column: 30, scope: !671)
!683 = !DILocation(line: 268, column: 9, scope: !673)
!684 = !DILocation(line: 269, column: 38, scope: !673)
!685 = !DILocation(line: 269, column: 9, scope: !675)
!686 = !DILocation(line: 270, column: 18, scope: !675)
!687 = !DILocation(line: 270, column: 9, scope: !677)
!688 = !DILocation(line: 271, column: 5, scope: !677)
!689 = !DILocation(line: 272, column: 2, scope: !666)
!690 = distinct !DISubprogram(name: "run_test_25", scope: !8, file: !7, line: 275, type: !112, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !691)
!691 = !{!692, !694, !696, !698, !700}
!692 = !DILocalVariable(name: "blocksize", scope: !693, file: !7, line: 276, type: !13, align: 4)
!693 = distinct !DILexicalBlock(scope: !690, file: !7, line: 276, column: 5)
!694 = !DILocalVariable(name: "channels", scope: !695, file: !7, line: 277, type: !13, align: 4)
!695 = distinct !DILexicalBlock(scope: !693, file: !7, line: 277, column: 5)
!696 = !DILocalVariable(name: "bitdepth", scope: !697, file: !7, line: 278, type: !13, align: 4)
!697 = distinct !DILexicalBlock(scope: !695, file: !7, line: 278, column: 5)
!698 = !DILocalVariable(name: "expected_returns", scope: !699, file: !7, line: 279, type: !13, align: 4)
!699 = distinct !DILexicalBlock(scope: !697, file: !7, line: 279, column: 5)
!700 = !DILocalVariable(name: "result", scope: !701, file: !7, line: 280, type: !13, align: 4)
!701 = distinct !DILexicalBlock(scope: !699, file: !7, line: 280, column: 5)
!702 = !DILocation(line: 276, column: 31, scope: !690)
!703 = !DILocation(line: 276, column: 9, scope: !693)
!704 = !DILocation(line: 277, column: 30, scope: !693)
!705 = !DILocation(line: 277, column: 9, scope: !695)
!706 = !DILocation(line: 278, column: 30, scope: !695)
!707 = !DILocation(line: 278, column: 9, scope: !697)
!708 = !DILocation(line: 279, column: 38, scope: !697)
!709 = !DILocation(line: 279, column: 9, scope: !699)
!710 = !DILocation(line: 280, column: 18, scope: !699)
!711 = !DILocation(line: 280, column: 9, scope: !701)
!712 = !DILocation(line: 281, column: 5, scope: !701)
!713 = !DILocation(line: 282, column: 2, scope: !690)
!714 = distinct !DISubprogram(name: "run_test_26", scope: !8, file: !7, line: 285, type: !112, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !715)
!715 = !{!716, !718, !720, !722, !724}
!716 = !DILocalVariable(name: "blocksize", scope: !717, file: !7, line: 286, type: !13, align: 4)
!717 = distinct !DILexicalBlock(scope: !714, file: !7, line: 286, column: 5)
!718 = !DILocalVariable(name: "channels", scope: !719, file: !7, line: 287, type: !13, align: 4)
!719 = distinct !DILexicalBlock(scope: !717, file: !7, line: 287, column: 5)
!720 = !DILocalVariable(name: "bitdepth", scope: !721, file: !7, line: 288, type: !13, align: 4)
!721 = distinct !DILexicalBlock(scope: !719, file: !7, line: 288, column: 5)
!722 = !DILocalVariable(name: "expected_returns", scope: !723, file: !7, line: 289, type: !13, align: 4)
!723 = distinct !DILexicalBlock(scope: !721, file: !7, line: 289, column: 5)
!724 = !DILocalVariable(name: "result", scope: !725, file: !7, line: 290, type: !13, align: 4)
!725 = distinct !DILexicalBlock(scope: !723, file: !7, line: 290, column: 5)
!726 = !DILocation(line: 286, column: 31, scope: !714)
!727 = !DILocation(line: 286, column: 9, scope: !717)
!728 = !DILocation(line: 287, column: 30, scope: !717)
!729 = !DILocation(line: 287, column: 9, scope: !719)
!730 = !DILocation(line: 288, column: 30, scope: !719)
!731 = !DILocation(line: 288, column: 9, scope: !721)
!732 = !DILocation(line: 289, column: 38, scope: !721)
!733 = !DILocation(line: 289, column: 9, scope: !723)
!734 = !DILocation(line: 290, column: 18, scope: !723)
!735 = !DILocation(line: 290, column: 9, scope: !725)
!736 = !DILocation(line: 291, column: 5, scope: !725)
!737 = !DILocation(line: 292, column: 2, scope: !714)
!738 = distinct !DISubprogram(name: "run_test_27", scope: !8, file: !7, line: 295, type: !112, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !739)
!739 = !{!740, !742, !744, !746, !748}
!740 = !DILocalVariable(name: "blocksize", scope: !741, file: !7, line: 296, type: !13, align: 4)
!741 = distinct !DILexicalBlock(scope: !738, file: !7, line: 296, column: 5)
!742 = !DILocalVariable(name: "channels", scope: !743, file: !7, line: 297, type: !13, align: 4)
!743 = distinct !DILexicalBlock(scope: !741, file: !7, line: 297, column: 5)
!744 = !DILocalVariable(name: "bitdepth", scope: !745, file: !7, line: 298, type: !13, align: 4)
!745 = distinct !DILexicalBlock(scope: !743, file: !7, line: 298, column: 5)
!746 = !DILocalVariable(name: "expected_returns", scope: !747, file: !7, line: 299, type: !13, align: 4)
!747 = distinct !DILexicalBlock(scope: !745, file: !7, line: 299, column: 5)
!748 = !DILocalVariable(name: "result", scope: !749, file: !7, line: 300, type: !13, align: 4)
!749 = distinct !DILexicalBlock(scope: !747, file: !7, line: 300, column: 5)
!750 = !DILocation(line: 296, column: 31, scope: !738)
!751 = !DILocation(line: 296, column: 9, scope: !741)
!752 = !DILocation(line: 297, column: 30, scope: !741)
!753 = !DILocation(line: 297, column: 9, scope: !743)
!754 = !DILocation(line: 298, column: 30, scope: !743)
!755 = !DILocation(line: 298, column: 9, scope: !745)
!756 = !DILocation(line: 299, column: 38, scope: !745)
!757 = !DILocation(line: 299, column: 9, scope: !747)
!758 = !DILocation(line: 300, column: 18, scope: !747)
!759 = !DILocation(line: 300, column: 9, scope: !749)
!760 = !DILocation(line: 301, column: 5, scope: !749)
!761 = !DILocation(line: 302, column: 2, scope: !738)
!762 = distinct !DISubprogram(name: "run_test_28", scope: !8, file: !7, line: 305, type: !112, scopeLine: 305, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !763)
!763 = !{!764, !766, !768, !770, !772}
!764 = !DILocalVariable(name: "blocksize", scope: !765, file: !7, line: 306, type: !13, align: 4)
!765 = distinct !DILexicalBlock(scope: !762, file: !7, line: 306, column: 5)
!766 = !DILocalVariable(name: "channels", scope: !767, file: !7, line: 307, type: !13, align: 4)
!767 = distinct !DILexicalBlock(scope: !765, file: !7, line: 307, column: 5)
!768 = !DILocalVariable(name: "bitdepth", scope: !769, file: !7, line: 308, type: !13, align: 4)
!769 = distinct !DILexicalBlock(scope: !767, file: !7, line: 308, column: 5)
!770 = !DILocalVariable(name: "expected_returns", scope: !771, file: !7, line: 309, type: !13, align: 4)
!771 = distinct !DILexicalBlock(scope: !769, file: !7, line: 309, column: 5)
!772 = !DILocalVariable(name: "result", scope: !773, file: !7, line: 310, type: !13, align: 4)
!773 = distinct !DILexicalBlock(scope: !771, file: !7, line: 310, column: 5)
!774 = !DILocation(line: 306, column: 31, scope: !762)
!775 = !DILocation(line: 306, column: 9, scope: !765)
!776 = !DILocation(line: 307, column: 30, scope: !765)
!777 = !DILocation(line: 307, column: 9, scope: !767)
!778 = !DILocation(line: 308, column: 30, scope: !767)
!779 = !DILocation(line: 308, column: 9, scope: !769)
!780 = !DILocation(line: 309, column: 38, scope: !769)
!781 = !DILocation(line: 309, column: 9, scope: !771)
!782 = !DILocation(line: 310, column: 18, scope: !771)
!783 = !DILocation(line: 310, column: 9, scope: !773)
!784 = !DILocation(line: 311, column: 5, scope: !773)
!785 = !DILocation(line: 312, column: 2, scope: !762)
!786 = distinct !DISubprogram(name: "run_test_29", scope: !8, file: !7, line: 315, type: !112, scopeLine: 315, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !787)
!787 = !{!788, !790, !792, !794, !796}
!788 = !DILocalVariable(name: "blocksize", scope: !789, file: !7, line: 316, type: !13, align: 4)
!789 = distinct !DILexicalBlock(scope: !786, file: !7, line: 316, column: 5)
!790 = !DILocalVariable(name: "channels", scope: !791, file: !7, line: 317, type: !13, align: 4)
!791 = distinct !DILexicalBlock(scope: !789, file: !7, line: 317, column: 5)
!792 = !DILocalVariable(name: "bitdepth", scope: !793, file: !7, line: 318, type: !13, align: 4)
!793 = distinct !DILexicalBlock(scope: !791, file: !7, line: 318, column: 5)
!794 = !DILocalVariable(name: "expected_returns", scope: !795, file: !7, line: 319, type: !13, align: 4)
!795 = distinct !DILexicalBlock(scope: !793, file: !7, line: 319, column: 5)
!796 = !DILocalVariable(name: "result", scope: !797, file: !7, line: 320, type: !13, align: 4)
!797 = distinct !DILexicalBlock(scope: !795, file: !7, line: 320, column: 5)
!798 = !DILocation(line: 316, column: 31, scope: !786)
!799 = !DILocation(line: 316, column: 9, scope: !789)
!800 = !DILocation(line: 317, column: 30, scope: !789)
!801 = !DILocation(line: 317, column: 9, scope: !791)
!802 = !DILocation(line: 318, column: 30, scope: !791)
!803 = !DILocation(line: 318, column: 9, scope: !793)
!804 = !DILocation(line: 319, column: 38, scope: !793)
!805 = !DILocation(line: 319, column: 9, scope: !795)
!806 = !DILocation(line: 320, column: 18, scope: !795)
!807 = !DILocation(line: 320, column: 9, scope: !797)
!808 = !DILocation(line: 321, column: 5, scope: !797)
!809 = !DILocation(line: 322, column: 2, scope: !786)
!810 = distinct !DISubprogram(name: "run_test_30", scope: !8, file: !7, line: 325, type: !112, scopeLine: 325, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !811)
!811 = !{!812, !814, !816, !818, !820}
!812 = !DILocalVariable(name: "blocksize", scope: !813, file: !7, line: 326, type: !13, align: 4)
!813 = distinct !DILexicalBlock(scope: !810, file: !7, line: 326, column: 5)
!814 = !DILocalVariable(name: "channels", scope: !815, file: !7, line: 327, type: !13, align: 4)
!815 = distinct !DILexicalBlock(scope: !813, file: !7, line: 327, column: 5)
!816 = !DILocalVariable(name: "bitdepth", scope: !817, file: !7, line: 328, type: !13, align: 4)
!817 = distinct !DILexicalBlock(scope: !815, file: !7, line: 328, column: 5)
!818 = !DILocalVariable(name: "expected_returns", scope: !819, file: !7, line: 329, type: !13, align: 4)
!819 = distinct !DILexicalBlock(scope: !817, file: !7, line: 329, column: 5)
!820 = !DILocalVariable(name: "result", scope: !821, file: !7, line: 330, type: !13, align: 4)
!821 = distinct !DILexicalBlock(scope: !819, file: !7, line: 330, column: 5)
!822 = !DILocation(line: 326, column: 31, scope: !810)
!823 = !DILocation(line: 326, column: 9, scope: !813)
!824 = !DILocation(line: 327, column: 30, scope: !813)
!825 = !DILocation(line: 327, column: 9, scope: !815)
!826 = !DILocation(line: 328, column: 30, scope: !815)
!827 = !DILocation(line: 328, column: 9, scope: !817)
!828 = !DILocation(line: 329, column: 38, scope: !817)
!829 = !DILocation(line: 329, column: 9, scope: !819)
!830 = !DILocation(line: 330, column: 18, scope: !819)
!831 = !DILocation(line: 330, column: 9, scope: !821)
!832 = !DILocation(line: 331, column: 5, scope: !821)
!833 = !DILocation(line: 332, column: 2, scope: !810)
!834 = distinct !DISubprogram(name: "run_test_31", scope: !8, file: !7, line: 335, type: !112, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !835)
!835 = !{!836, !838, !840, !842, !844}
!836 = !DILocalVariable(name: "blocksize", scope: !837, file: !7, line: 336, type: !13, align: 4)
!837 = distinct !DILexicalBlock(scope: !834, file: !7, line: 336, column: 5)
!838 = !DILocalVariable(name: "channels", scope: !839, file: !7, line: 337, type: !13, align: 4)
!839 = distinct !DILexicalBlock(scope: !837, file: !7, line: 337, column: 5)
!840 = !DILocalVariable(name: "bitdepth", scope: !841, file: !7, line: 338, type: !13, align: 4)
!841 = distinct !DILexicalBlock(scope: !839, file: !7, line: 338, column: 5)
!842 = !DILocalVariable(name: "expected_returns", scope: !843, file: !7, line: 339, type: !13, align: 4)
!843 = distinct !DILexicalBlock(scope: !841, file: !7, line: 339, column: 5)
!844 = !DILocalVariable(name: "result", scope: !845, file: !7, line: 340, type: !13, align: 4)
!845 = distinct !DILexicalBlock(scope: !843, file: !7, line: 340, column: 5)
!846 = !DILocation(line: 336, column: 31, scope: !834)
!847 = !DILocation(line: 336, column: 9, scope: !837)
!848 = !DILocation(line: 337, column: 30, scope: !837)
!849 = !DILocation(line: 337, column: 9, scope: !839)
!850 = !DILocation(line: 338, column: 30, scope: !839)
!851 = !DILocation(line: 338, column: 9, scope: !841)
!852 = !DILocation(line: 339, column: 38, scope: !841)
!853 = !DILocation(line: 339, column: 9, scope: !843)
!854 = !DILocation(line: 340, column: 18, scope: !843)
!855 = !DILocation(line: 340, column: 9, scope: !845)
!856 = !DILocation(line: 341, column: 5, scope: !845)
!857 = !DILocation(line: 342, column: 2, scope: !834)
!858 = distinct !DISubprogram(name: "run_test_32", scope: !8, file: !7, line: 345, type: !112, scopeLine: 345, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !859)
!859 = !{!860, !862, !864, !866, !868}
!860 = !DILocalVariable(name: "blocksize", scope: !861, file: !7, line: 346, type: !13, align: 4)
!861 = distinct !DILexicalBlock(scope: !858, file: !7, line: 346, column: 5)
!862 = !DILocalVariable(name: "channels", scope: !863, file: !7, line: 347, type: !13, align: 4)
!863 = distinct !DILexicalBlock(scope: !861, file: !7, line: 347, column: 5)
!864 = !DILocalVariable(name: "bitdepth", scope: !865, file: !7, line: 348, type: !13, align: 4)
!865 = distinct !DILexicalBlock(scope: !863, file: !7, line: 348, column: 5)
!866 = !DILocalVariable(name: "expected_returns", scope: !867, file: !7, line: 349, type: !13, align: 4)
!867 = distinct !DILexicalBlock(scope: !865, file: !7, line: 349, column: 5)
!868 = !DILocalVariable(name: "result", scope: !869, file: !7, line: 350, type: !13, align: 4)
!869 = distinct !DILexicalBlock(scope: !867, file: !7, line: 350, column: 5)
!870 = !DILocation(line: 346, column: 31, scope: !858)
!871 = !DILocation(line: 346, column: 9, scope: !861)
!872 = !DILocation(line: 347, column: 30, scope: !861)
!873 = !DILocation(line: 347, column: 9, scope: !863)
!874 = !DILocation(line: 348, column: 30, scope: !863)
!875 = !DILocation(line: 348, column: 9, scope: !865)
!876 = !DILocation(line: 349, column: 38, scope: !865)
!877 = !DILocation(line: 349, column: 9, scope: !867)
!878 = !DILocation(line: 350, column: 18, scope: !867)
!879 = !DILocation(line: 350, column: 9, scope: !869)
!880 = !DILocation(line: 351, column: 5, scope: !869)
!881 = !DILocation(line: 352, column: 2, scope: !858)
!882 = distinct !DISubprogram(name: "run_test_33", scope: !8, file: !7, line: 355, type: !112, scopeLine: 355, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !883)
!883 = !{!884, !886, !888, !890, !892}
!884 = !DILocalVariable(name: "blocksize", scope: !885, file: !7, line: 356, type: !13, align: 4)
!885 = distinct !DILexicalBlock(scope: !882, file: !7, line: 356, column: 5)
!886 = !DILocalVariable(name: "channels", scope: !887, file: !7, line: 357, type: !13, align: 4)
!887 = distinct !DILexicalBlock(scope: !885, file: !7, line: 357, column: 5)
!888 = !DILocalVariable(name: "bitdepth", scope: !889, file: !7, line: 358, type: !13, align: 4)
!889 = distinct !DILexicalBlock(scope: !887, file: !7, line: 358, column: 5)
!890 = !DILocalVariable(name: "expected_returns", scope: !891, file: !7, line: 359, type: !13, align: 4)
!891 = distinct !DILexicalBlock(scope: !889, file: !7, line: 359, column: 5)
!892 = !DILocalVariable(name: "result", scope: !893, file: !7, line: 360, type: !13, align: 4)
!893 = distinct !DILexicalBlock(scope: !891, file: !7, line: 360, column: 5)
!894 = !DILocation(line: 356, column: 31, scope: !882)
!895 = !DILocation(line: 356, column: 9, scope: !885)
!896 = !DILocation(line: 357, column: 30, scope: !885)
!897 = !DILocation(line: 357, column: 9, scope: !887)
!898 = !DILocation(line: 358, column: 30, scope: !887)
!899 = !DILocation(line: 358, column: 9, scope: !889)
!900 = !DILocation(line: 359, column: 38, scope: !889)
!901 = !DILocation(line: 359, column: 9, scope: !891)
!902 = !DILocation(line: 360, column: 18, scope: !891)
!903 = !DILocation(line: 360, column: 9, scope: !893)
!904 = !DILocation(line: 361, column: 5, scope: !893)
!905 = !DILocation(line: 362, column: 2, scope: !882)
!906 = distinct !DISubprogram(name: "run_test_34", scope: !8, file: !7, line: 365, type: !112, scopeLine: 365, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !907)
!907 = !{!908, !910, !912, !914, !916}
!908 = !DILocalVariable(name: "blocksize", scope: !909, file: !7, line: 366, type: !13, align: 4)
!909 = distinct !DILexicalBlock(scope: !906, file: !7, line: 366, column: 5)
!910 = !DILocalVariable(name: "channels", scope: !911, file: !7, line: 367, type: !13, align: 4)
!911 = distinct !DILexicalBlock(scope: !909, file: !7, line: 367, column: 5)
!912 = !DILocalVariable(name: "bitdepth", scope: !913, file: !7, line: 368, type: !13, align: 4)
!913 = distinct !DILexicalBlock(scope: !911, file: !7, line: 368, column: 5)
!914 = !DILocalVariable(name: "expected_returns", scope: !915, file: !7, line: 369, type: !13, align: 4)
!915 = distinct !DILexicalBlock(scope: !913, file: !7, line: 369, column: 5)
!916 = !DILocalVariable(name: "result", scope: !917, file: !7, line: 370, type: !13, align: 4)
!917 = distinct !DILexicalBlock(scope: !915, file: !7, line: 370, column: 5)
!918 = !DILocation(line: 366, column: 31, scope: !906)
!919 = !DILocation(line: 366, column: 9, scope: !909)
!920 = !DILocation(line: 367, column: 30, scope: !909)
!921 = !DILocation(line: 367, column: 9, scope: !911)
!922 = !DILocation(line: 368, column: 30, scope: !911)
!923 = !DILocation(line: 368, column: 9, scope: !913)
!924 = !DILocation(line: 369, column: 38, scope: !913)
!925 = !DILocation(line: 369, column: 9, scope: !915)
!926 = !DILocation(line: 370, column: 18, scope: !915)
!927 = !DILocation(line: 370, column: 9, scope: !917)
!928 = !DILocation(line: 371, column: 5, scope: !917)
!929 = !DILocation(line: 372, column: 2, scope: !906)
!930 = distinct !DISubprogram(name: "run_test_35", scope: !8, file: !7, line: 375, type: !112, scopeLine: 375, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !931)
!931 = !{!932, !934, !936, !938, !940}
!932 = !DILocalVariable(name: "blocksize", scope: !933, file: !7, line: 376, type: !13, align: 4)
!933 = distinct !DILexicalBlock(scope: !930, file: !7, line: 376, column: 5)
!934 = !DILocalVariable(name: "channels", scope: !935, file: !7, line: 377, type: !13, align: 4)
!935 = distinct !DILexicalBlock(scope: !933, file: !7, line: 377, column: 5)
!936 = !DILocalVariable(name: "bitdepth", scope: !937, file: !7, line: 378, type: !13, align: 4)
!937 = distinct !DILexicalBlock(scope: !935, file: !7, line: 378, column: 5)
!938 = !DILocalVariable(name: "expected_returns", scope: !939, file: !7, line: 379, type: !13, align: 4)
!939 = distinct !DILexicalBlock(scope: !937, file: !7, line: 379, column: 5)
!940 = !DILocalVariable(name: "result", scope: !941, file: !7, line: 380, type: !13, align: 4)
!941 = distinct !DILexicalBlock(scope: !939, file: !7, line: 380, column: 5)
!942 = !DILocation(line: 376, column: 31, scope: !930)
!943 = !DILocation(line: 376, column: 9, scope: !933)
!944 = !DILocation(line: 377, column: 30, scope: !933)
!945 = !DILocation(line: 377, column: 9, scope: !935)
!946 = !DILocation(line: 378, column: 30, scope: !935)
!947 = !DILocation(line: 378, column: 9, scope: !937)
!948 = !DILocation(line: 379, column: 38, scope: !937)
!949 = !DILocation(line: 379, column: 9, scope: !939)
!950 = !DILocation(line: 380, column: 18, scope: !939)
!951 = !DILocation(line: 380, column: 9, scope: !941)
!952 = !DILocation(line: 381, column: 5, scope: !941)
!953 = !DILocation(line: 382, column: 2, scope: !930)
!954 = distinct !DISubprogram(name: "run_test_36", scope: !8, file: !7, line: 385, type: !112, scopeLine: 385, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !955)
!955 = !{!956, !958, !960, !962, !964}
!956 = !DILocalVariable(name: "blocksize", scope: !957, file: !7, line: 386, type: !13, align: 4)
!957 = distinct !DILexicalBlock(scope: !954, file: !7, line: 386, column: 5)
!958 = !DILocalVariable(name: "channels", scope: !959, file: !7, line: 387, type: !13, align: 4)
!959 = distinct !DILexicalBlock(scope: !957, file: !7, line: 387, column: 5)
!960 = !DILocalVariable(name: "bitdepth", scope: !961, file: !7, line: 388, type: !13, align: 4)
!961 = distinct !DILexicalBlock(scope: !959, file: !7, line: 388, column: 5)
!962 = !DILocalVariable(name: "expected_returns", scope: !963, file: !7, line: 389, type: !13, align: 4)
!963 = distinct !DILexicalBlock(scope: !961, file: !7, line: 389, column: 5)
!964 = !DILocalVariable(name: "result", scope: !965, file: !7, line: 390, type: !13, align: 4)
!965 = distinct !DILexicalBlock(scope: !963, file: !7, line: 390, column: 5)
!966 = !DILocation(line: 386, column: 31, scope: !954)
!967 = !DILocation(line: 386, column: 9, scope: !957)
!968 = !DILocation(line: 387, column: 30, scope: !957)
!969 = !DILocation(line: 387, column: 9, scope: !959)
!970 = !DILocation(line: 388, column: 30, scope: !959)
!971 = !DILocation(line: 388, column: 9, scope: !961)
!972 = !DILocation(line: 389, column: 38, scope: !961)
!973 = !DILocation(line: 389, column: 9, scope: !963)
!974 = !DILocation(line: 390, column: 18, scope: !963)
!975 = !DILocation(line: 390, column: 9, scope: !965)
!976 = !DILocation(line: 391, column: 5, scope: !965)
!977 = !DILocation(line: 392, column: 2, scope: !954)
!978 = distinct !DISubprogram(name: "run_test_37", scope: !8, file: !7, line: 395, type: !112, scopeLine: 395, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !979)
!979 = !{!980, !982, !984, !986, !988}
!980 = !DILocalVariable(name: "blocksize", scope: !981, file: !7, line: 396, type: !13, align: 4)
!981 = distinct !DILexicalBlock(scope: !978, file: !7, line: 396, column: 5)
!982 = !DILocalVariable(name: "channels", scope: !983, file: !7, line: 397, type: !13, align: 4)
!983 = distinct !DILexicalBlock(scope: !981, file: !7, line: 397, column: 5)
!984 = !DILocalVariable(name: "bitdepth", scope: !985, file: !7, line: 398, type: !13, align: 4)
!985 = distinct !DILexicalBlock(scope: !983, file: !7, line: 398, column: 5)
!986 = !DILocalVariable(name: "expected_returns", scope: !987, file: !7, line: 399, type: !13, align: 4)
!987 = distinct !DILexicalBlock(scope: !985, file: !7, line: 399, column: 5)
!988 = !DILocalVariable(name: "result", scope: !989, file: !7, line: 400, type: !13, align: 4)
!989 = distinct !DILexicalBlock(scope: !987, file: !7, line: 400, column: 5)
!990 = !DILocation(line: 396, column: 31, scope: !978)
!991 = !DILocation(line: 396, column: 9, scope: !981)
!992 = !DILocation(line: 397, column: 30, scope: !981)
!993 = !DILocation(line: 397, column: 9, scope: !983)
!994 = !DILocation(line: 398, column: 30, scope: !983)
!995 = !DILocation(line: 398, column: 9, scope: !985)
!996 = !DILocation(line: 399, column: 38, scope: !985)
!997 = !DILocation(line: 399, column: 9, scope: !987)
!998 = !DILocation(line: 400, column: 18, scope: !987)
!999 = !DILocation(line: 400, column: 9, scope: !989)
!1000 = !DILocation(line: 401, column: 5, scope: !989)
!1001 = !DILocation(line: 402, column: 2, scope: !978)
!1002 = distinct !DISubprogram(name: "run_test_38", scope: !8, file: !7, line: 405, type: !112, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !1003)
!1003 = !{!1004, !1006, !1008, !1010, !1012}
!1004 = !DILocalVariable(name: "blocksize", scope: !1005, file: !7, line: 406, type: !13, align: 4)
!1005 = distinct !DILexicalBlock(scope: !1002, file: !7, line: 406, column: 5)
!1006 = !DILocalVariable(name: "channels", scope: !1007, file: !7, line: 407, type: !13, align: 4)
!1007 = distinct !DILexicalBlock(scope: !1005, file: !7, line: 407, column: 5)
!1008 = !DILocalVariable(name: "bitdepth", scope: !1009, file: !7, line: 408, type: !13, align: 4)
!1009 = distinct !DILexicalBlock(scope: !1007, file: !7, line: 408, column: 5)
!1010 = !DILocalVariable(name: "expected_returns", scope: !1011, file: !7, line: 409, type: !13, align: 4)
!1011 = distinct !DILexicalBlock(scope: !1009, file: !7, line: 409, column: 5)
!1012 = !DILocalVariable(name: "result", scope: !1013, file: !7, line: 410, type: !13, align: 4)
!1013 = distinct !DILexicalBlock(scope: !1011, file: !7, line: 410, column: 5)
!1014 = !DILocation(line: 406, column: 31, scope: !1002)
!1015 = !DILocation(line: 406, column: 9, scope: !1005)
!1016 = !DILocation(line: 407, column: 30, scope: !1005)
!1017 = !DILocation(line: 407, column: 9, scope: !1007)
!1018 = !DILocation(line: 408, column: 30, scope: !1007)
!1019 = !DILocation(line: 408, column: 9, scope: !1009)
!1020 = !DILocation(line: 409, column: 38, scope: !1009)
!1021 = !DILocation(line: 409, column: 9, scope: !1011)
!1022 = !DILocation(line: 410, column: 18, scope: !1011)
!1023 = !DILocation(line: 410, column: 9, scope: !1013)
!1024 = !DILocation(line: 411, column: 5, scope: !1013)
!1025 = !DILocation(line: 412, column: 2, scope: !1002)
!1026 = distinct !DISubprogram(name: "run_test_39", scope: !8, file: !7, line: 415, type: !112, scopeLine: 415, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !1027)
!1027 = !{!1028, !1030, !1032, !1034, !1036}
!1028 = !DILocalVariable(name: "blocksize", scope: !1029, file: !7, line: 416, type: !13, align: 4)
!1029 = distinct !DILexicalBlock(scope: !1026, file: !7, line: 416, column: 5)
!1030 = !DILocalVariable(name: "channels", scope: !1031, file: !7, line: 417, type: !13, align: 4)
!1031 = distinct !DILexicalBlock(scope: !1029, file: !7, line: 417, column: 5)
!1032 = !DILocalVariable(name: "bitdepth", scope: !1033, file: !7, line: 418, type: !13, align: 4)
!1033 = distinct !DILexicalBlock(scope: !1031, file: !7, line: 418, column: 5)
!1034 = !DILocalVariable(name: "expected_returns", scope: !1035, file: !7, line: 419, type: !13, align: 4)
!1035 = distinct !DILexicalBlock(scope: !1033, file: !7, line: 419, column: 5)
!1036 = !DILocalVariable(name: "result", scope: !1037, file: !7, line: 420, type: !13, align: 4)
!1037 = distinct !DILexicalBlock(scope: !1035, file: !7, line: 420, column: 5)
!1038 = !DILocation(line: 416, column: 31, scope: !1026)
!1039 = !DILocation(line: 416, column: 9, scope: !1029)
!1040 = !DILocation(line: 417, column: 30, scope: !1029)
!1041 = !DILocation(line: 417, column: 9, scope: !1031)
!1042 = !DILocation(line: 418, column: 30, scope: !1031)
!1043 = !DILocation(line: 418, column: 9, scope: !1033)
!1044 = !DILocation(line: 419, column: 38, scope: !1033)
!1045 = !DILocation(line: 419, column: 9, scope: !1035)
!1046 = !DILocation(line: 420, column: 18, scope: !1035)
!1047 = !DILocation(line: 420, column: 9, scope: !1037)
!1048 = !DILocation(line: 421, column: 5, scope: !1037)
!1049 = !DILocation(line: 422, column: 2, scope: !1026)
!1050 = distinct !DISubprogram(name: "run_test_40", scope: !8, file: !7, line: 425, type: !112, scopeLine: 425, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !1051)
!1051 = !{!1052, !1054, !1056, !1058, !1060}
!1052 = !DILocalVariable(name: "blocksize", scope: !1053, file: !7, line: 426, type: !13, align: 4)
!1053 = distinct !DILexicalBlock(scope: !1050, file: !7, line: 426, column: 5)
!1054 = !DILocalVariable(name: "channels", scope: !1055, file: !7, line: 427, type: !13, align: 4)
!1055 = distinct !DILexicalBlock(scope: !1053, file: !7, line: 427, column: 5)
!1056 = !DILocalVariable(name: "bitdepth", scope: !1057, file: !7, line: 428, type: !13, align: 4)
!1057 = distinct !DILexicalBlock(scope: !1055, file: !7, line: 428, column: 5)
!1058 = !DILocalVariable(name: "expected_returns", scope: !1059, file: !7, line: 429, type: !13, align: 4)
!1059 = distinct !DILexicalBlock(scope: !1057, file: !7, line: 429, column: 5)
!1060 = !DILocalVariable(name: "result", scope: !1061, file: !7, line: 430, type: !13, align: 4)
!1061 = distinct !DILexicalBlock(scope: !1059, file: !7, line: 430, column: 5)
!1062 = !DILocation(line: 426, column: 31, scope: !1050)
!1063 = !DILocation(line: 426, column: 9, scope: !1053)
!1064 = !DILocation(line: 427, column: 30, scope: !1053)
!1065 = !DILocation(line: 427, column: 9, scope: !1055)
!1066 = !DILocation(line: 428, column: 30, scope: !1055)
!1067 = !DILocation(line: 428, column: 9, scope: !1057)
!1068 = !DILocation(line: 429, column: 38, scope: !1057)
!1069 = !DILocation(line: 429, column: 9, scope: !1059)
!1070 = !DILocation(line: 430, column: 18, scope: !1059)
!1071 = !DILocation(line: 430, column: 9, scope: !1061)
!1072 = !DILocation(line: 431, column: 5, scope: !1061)
!1073 = !DILocation(line: 432, column: 2, scope: !1050)
!1074 = distinct !DISubprogram(name: "run_test_41", scope: !8, file: !7, line: 435, type: !112, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !1075)
!1075 = !{!1076, !1078, !1080, !1082, !1084}
!1076 = !DILocalVariable(name: "blocksize", scope: !1077, file: !7, line: 436, type: !13, align: 4)
!1077 = distinct !DILexicalBlock(scope: !1074, file: !7, line: 436, column: 5)
!1078 = !DILocalVariable(name: "channels", scope: !1079, file: !7, line: 437, type: !13, align: 4)
!1079 = distinct !DILexicalBlock(scope: !1077, file: !7, line: 437, column: 5)
!1080 = !DILocalVariable(name: "bitdepth", scope: !1081, file: !7, line: 438, type: !13, align: 4)
!1081 = distinct !DILexicalBlock(scope: !1079, file: !7, line: 438, column: 5)
!1082 = !DILocalVariable(name: "expected_returns", scope: !1083, file: !7, line: 439, type: !13, align: 4)
!1083 = distinct !DILexicalBlock(scope: !1081, file: !7, line: 439, column: 5)
!1084 = !DILocalVariable(name: "result", scope: !1085, file: !7, line: 440, type: !13, align: 4)
!1085 = distinct !DILexicalBlock(scope: !1083, file: !7, line: 440, column: 5)
!1086 = !DILocation(line: 436, column: 31, scope: !1074)
!1087 = !DILocation(line: 436, column: 9, scope: !1077)
!1088 = !DILocation(line: 437, column: 30, scope: !1077)
!1089 = !DILocation(line: 437, column: 9, scope: !1079)
!1090 = !DILocation(line: 438, column: 30, scope: !1079)
!1091 = !DILocation(line: 438, column: 9, scope: !1081)
!1092 = !DILocation(line: 439, column: 38, scope: !1081)
!1093 = !DILocation(line: 439, column: 9, scope: !1083)
!1094 = !DILocation(line: 440, column: 18, scope: !1083)
!1095 = !DILocation(line: 440, column: 9, scope: !1085)
!1096 = !DILocation(line: 441, column: 5, scope: !1085)
!1097 = !DILocation(line: 442, column: 2, scope: !1074)
!1098 = distinct !DISubprogram(name: "run_test_42", scope: !8, file: !7, line: 445, type: !112, scopeLine: 445, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !1099)
!1099 = !{!1100, !1102, !1104, !1106, !1108}
!1100 = !DILocalVariable(name: "blocksize", scope: !1101, file: !7, line: 446, type: !13, align: 4)
!1101 = distinct !DILexicalBlock(scope: !1098, file: !7, line: 446, column: 5)
!1102 = !DILocalVariable(name: "channels", scope: !1103, file: !7, line: 447, type: !13, align: 4)
!1103 = distinct !DILexicalBlock(scope: !1101, file: !7, line: 447, column: 5)
!1104 = !DILocalVariable(name: "bitdepth", scope: !1105, file: !7, line: 448, type: !13, align: 4)
!1105 = distinct !DILexicalBlock(scope: !1103, file: !7, line: 448, column: 5)
!1106 = !DILocalVariable(name: "expected_returns", scope: !1107, file: !7, line: 449, type: !13, align: 4)
!1107 = distinct !DILexicalBlock(scope: !1105, file: !7, line: 449, column: 5)
!1108 = !DILocalVariable(name: "result", scope: !1109, file: !7, line: 450, type: !13, align: 4)
!1109 = distinct !DILexicalBlock(scope: !1107, file: !7, line: 450, column: 5)
!1110 = !DILocation(line: 446, column: 31, scope: !1098)
!1111 = !DILocation(line: 446, column: 9, scope: !1101)
!1112 = !DILocation(line: 447, column: 30, scope: !1101)
!1113 = !DILocation(line: 447, column: 9, scope: !1103)
!1114 = !DILocation(line: 448, column: 30, scope: !1103)
!1115 = !DILocation(line: 448, column: 9, scope: !1105)
!1116 = !DILocation(line: 449, column: 38, scope: !1105)
!1117 = !DILocation(line: 449, column: 9, scope: !1107)
!1118 = !DILocation(line: 450, column: 18, scope: !1107)
!1119 = !DILocation(line: 450, column: 9, scope: !1109)
!1120 = !DILocation(line: 451, column: 5, scope: !1109)
!1121 = !DILocation(line: 452, column: 2, scope: !1098)
!1122 = distinct !DISubprogram(name: "run_test_43", scope: !8, file: !7, line: 455, type: !112, scopeLine: 455, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !1123)
!1123 = !{!1124, !1126, !1128, !1130, !1132}
!1124 = !DILocalVariable(name: "blocksize", scope: !1125, file: !7, line: 456, type: !13, align: 4)
!1125 = distinct !DILexicalBlock(scope: !1122, file: !7, line: 456, column: 5)
!1126 = !DILocalVariable(name: "channels", scope: !1127, file: !7, line: 457, type: !13, align: 4)
!1127 = distinct !DILexicalBlock(scope: !1125, file: !7, line: 457, column: 5)
!1128 = !DILocalVariable(name: "bitdepth", scope: !1129, file: !7, line: 458, type: !13, align: 4)
!1129 = distinct !DILexicalBlock(scope: !1127, file: !7, line: 458, column: 5)
!1130 = !DILocalVariable(name: "expected_returns", scope: !1131, file: !7, line: 459, type: !13, align: 4)
!1131 = distinct !DILexicalBlock(scope: !1129, file: !7, line: 459, column: 5)
!1132 = !DILocalVariable(name: "result", scope: !1133, file: !7, line: 460, type: !13, align: 4)
!1133 = distinct !DILexicalBlock(scope: !1131, file: !7, line: 460, column: 5)
!1134 = !DILocation(line: 456, column: 31, scope: !1122)
!1135 = !DILocation(line: 456, column: 9, scope: !1125)
!1136 = !DILocation(line: 457, column: 30, scope: !1125)
!1137 = !DILocation(line: 457, column: 9, scope: !1127)
!1138 = !DILocation(line: 458, column: 30, scope: !1127)
!1139 = !DILocation(line: 458, column: 9, scope: !1129)
!1140 = !DILocation(line: 459, column: 38, scope: !1129)
!1141 = !DILocation(line: 459, column: 9, scope: !1131)
!1142 = !DILocation(line: 460, column: 18, scope: !1131)
!1143 = !DILocation(line: 460, column: 9, scope: !1133)
!1144 = !DILocation(line: 461, column: 5, scope: !1133)
!1145 = !DILocation(line: 462, column: 2, scope: !1122)
!1146 = distinct !DISubprogram(name: "run_test_44", scope: !8, file: !7, line: 465, type: !112, scopeLine: 465, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !1147)
!1147 = !{!1148, !1150, !1152, !1154, !1156}
!1148 = !DILocalVariable(name: "blocksize", scope: !1149, file: !7, line: 466, type: !13, align: 4)
!1149 = distinct !DILexicalBlock(scope: !1146, file: !7, line: 466, column: 5)
!1150 = !DILocalVariable(name: "channels", scope: !1151, file: !7, line: 467, type: !13, align: 4)
!1151 = distinct !DILexicalBlock(scope: !1149, file: !7, line: 467, column: 5)
!1152 = !DILocalVariable(name: "bitdepth", scope: !1153, file: !7, line: 468, type: !13, align: 4)
!1153 = distinct !DILexicalBlock(scope: !1151, file: !7, line: 468, column: 5)
!1154 = !DILocalVariable(name: "expected_returns", scope: !1155, file: !7, line: 469, type: !13, align: 4)
!1155 = distinct !DILexicalBlock(scope: !1153, file: !7, line: 469, column: 5)
!1156 = !DILocalVariable(name: "result", scope: !1157, file: !7, line: 470, type: !13, align: 4)
!1157 = distinct !DILexicalBlock(scope: !1155, file: !7, line: 470, column: 5)
!1158 = !DILocation(line: 466, column: 31, scope: !1146)
!1159 = !DILocation(line: 466, column: 9, scope: !1149)
!1160 = !DILocation(line: 467, column: 30, scope: !1149)
!1161 = !DILocation(line: 467, column: 9, scope: !1151)
!1162 = !DILocation(line: 468, column: 30, scope: !1151)
!1163 = !DILocation(line: 468, column: 9, scope: !1153)
!1164 = !DILocation(line: 469, column: 38, scope: !1153)
!1165 = !DILocation(line: 469, column: 9, scope: !1155)
!1166 = !DILocation(line: 470, column: 18, scope: !1155)
!1167 = !DILocation(line: 470, column: 9, scope: !1157)
!1168 = !DILocation(line: 471, column: 5, scope: !1157)
!1169 = !DILocation(line: 472, column: 2, scope: !1146)
!1170 = distinct !DISubprogram(name: "run_test_45", scope: !8, file: !7, line: 475, type: !112, scopeLine: 475, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !1171)
!1171 = !{!1172, !1174, !1176, !1178, !1180}
!1172 = !DILocalVariable(name: "blocksize", scope: !1173, file: !7, line: 476, type: !13, align: 4)
!1173 = distinct !DILexicalBlock(scope: !1170, file: !7, line: 476, column: 5)
!1174 = !DILocalVariable(name: "channels", scope: !1175, file: !7, line: 477, type: !13, align: 4)
!1175 = distinct !DILexicalBlock(scope: !1173, file: !7, line: 477, column: 5)
!1176 = !DILocalVariable(name: "bitdepth", scope: !1177, file: !7, line: 478, type: !13, align: 4)
!1177 = distinct !DILexicalBlock(scope: !1175, file: !7, line: 478, column: 5)
!1178 = !DILocalVariable(name: "expected_returns", scope: !1179, file: !7, line: 479, type: !13, align: 4)
!1179 = distinct !DILexicalBlock(scope: !1177, file: !7, line: 479, column: 5)
!1180 = !DILocalVariable(name: "result", scope: !1181, file: !7, line: 480, type: !13, align: 4)
!1181 = distinct !DILexicalBlock(scope: !1179, file: !7, line: 480, column: 5)
!1182 = !DILocation(line: 476, column: 31, scope: !1170)
!1183 = !DILocation(line: 476, column: 9, scope: !1173)
!1184 = !DILocation(line: 477, column: 30, scope: !1173)
!1185 = !DILocation(line: 477, column: 9, scope: !1175)
!1186 = !DILocation(line: 478, column: 30, scope: !1175)
!1187 = !DILocation(line: 478, column: 9, scope: !1177)
!1188 = !DILocation(line: 479, column: 38, scope: !1177)
!1189 = !DILocation(line: 479, column: 9, scope: !1179)
!1190 = !DILocation(line: 480, column: 18, scope: !1179)
!1191 = !DILocation(line: 480, column: 9, scope: !1181)
!1192 = !DILocation(line: 481, column: 5, scope: !1181)
!1193 = !DILocation(line: 482, column: 2, scope: !1170)
!1194 = distinct !DISubprogram(name: "run_test_46", scope: !8, file: !7, line: 485, type: !112, scopeLine: 485, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !1195)
!1195 = !{!1196, !1198, !1200, !1202, !1204}
!1196 = !DILocalVariable(name: "blocksize", scope: !1197, file: !7, line: 486, type: !13, align: 4)
!1197 = distinct !DILexicalBlock(scope: !1194, file: !7, line: 486, column: 5)
!1198 = !DILocalVariable(name: "channels", scope: !1199, file: !7, line: 487, type: !13, align: 4)
!1199 = distinct !DILexicalBlock(scope: !1197, file: !7, line: 487, column: 5)
!1200 = !DILocalVariable(name: "bitdepth", scope: !1201, file: !7, line: 488, type: !13, align: 4)
!1201 = distinct !DILexicalBlock(scope: !1199, file: !7, line: 488, column: 5)
!1202 = !DILocalVariable(name: "expected_returns", scope: !1203, file: !7, line: 489, type: !13, align: 4)
!1203 = distinct !DILexicalBlock(scope: !1201, file: !7, line: 489, column: 5)
!1204 = !DILocalVariable(name: "result", scope: !1205, file: !7, line: 490, type: !13, align: 4)
!1205 = distinct !DILexicalBlock(scope: !1203, file: !7, line: 490, column: 5)
!1206 = !DILocation(line: 486, column: 31, scope: !1194)
!1207 = !DILocation(line: 486, column: 9, scope: !1197)
!1208 = !DILocation(line: 487, column: 30, scope: !1197)
!1209 = !DILocation(line: 487, column: 9, scope: !1199)
!1210 = !DILocation(line: 488, column: 30, scope: !1199)
!1211 = !DILocation(line: 488, column: 9, scope: !1201)
!1212 = !DILocation(line: 489, column: 38, scope: !1201)
!1213 = !DILocation(line: 489, column: 9, scope: !1203)
!1214 = !DILocation(line: 490, column: 18, scope: !1203)
!1215 = !DILocation(line: 490, column: 9, scope: !1205)
!1216 = !DILocation(line: 491, column: 5, scope: !1205)
!1217 = !DILocation(line: 492, column: 2, scope: !1194)
!1218 = distinct !DISubprogram(name: "run_test_47", scope: !8, file: !7, line: 495, type: !112, scopeLine: 495, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !1219)
!1219 = !{!1220, !1222, !1224, !1226, !1228}
!1220 = !DILocalVariable(name: "blocksize", scope: !1221, file: !7, line: 496, type: !13, align: 4)
!1221 = distinct !DILexicalBlock(scope: !1218, file: !7, line: 496, column: 5)
!1222 = !DILocalVariable(name: "channels", scope: !1223, file: !7, line: 497, type: !13, align: 4)
!1223 = distinct !DILexicalBlock(scope: !1221, file: !7, line: 497, column: 5)
!1224 = !DILocalVariable(name: "bitdepth", scope: !1225, file: !7, line: 498, type: !13, align: 4)
!1225 = distinct !DILexicalBlock(scope: !1223, file: !7, line: 498, column: 5)
!1226 = !DILocalVariable(name: "expected_returns", scope: !1227, file: !7, line: 499, type: !13, align: 4)
!1227 = distinct !DILexicalBlock(scope: !1225, file: !7, line: 499, column: 5)
!1228 = !DILocalVariable(name: "result", scope: !1229, file: !7, line: 500, type: !13, align: 4)
!1229 = distinct !DILexicalBlock(scope: !1227, file: !7, line: 500, column: 5)
!1230 = !DILocation(line: 496, column: 31, scope: !1218)
!1231 = !DILocation(line: 496, column: 9, scope: !1221)
!1232 = !DILocation(line: 497, column: 30, scope: !1221)
!1233 = !DILocation(line: 497, column: 9, scope: !1223)
!1234 = !DILocation(line: 498, column: 30, scope: !1223)
!1235 = !DILocation(line: 498, column: 9, scope: !1225)
!1236 = !DILocation(line: 499, column: 38, scope: !1225)
!1237 = !DILocation(line: 499, column: 9, scope: !1227)
!1238 = !DILocation(line: 500, column: 18, scope: !1227)
!1239 = !DILocation(line: 500, column: 9, scope: !1229)
!1240 = !DILocation(line: 501, column: 5, scope: !1229)
!1241 = !DILocation(line: 502, column: 2, scope: !1218)
!1242 = distinct !DISubprogram(name: "run_test_48", scope: !8, file: !7, line: 505, type: !112, scopeLine: 505, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !1243)
!1243 = !{!1244, !1246, !1248, !1250, !1252}
!1244 = !DILocalVariable(name: "blocksize", scope: !1245, file: !7, line: 506, type: !13, align: 4)
!1245 = distinct !DILexicalBlock(scope: !1242, file: !7, line: 506, column: 5)
!1246 = !DILocalVariable(name: "channels", scope: !1247, file: !7, line: 507, type: !13, align: 4)
!1247 = distinct !DILexicalBlock(scope: !1245, file: !7, line: 507, column: 5)
!1248 = !DILocalVariable(name: "bitdepth", scope: !1249, file: !7, line: 508, type: !13, align: 4)
!1249 = distinct !DILexicalBlock(scope: !1247, file: !7, line: 508, column: 5)
!1250 = !DILocalVariable(name: "expected_returns", scope: !1251, file: !7, line: 509, type: !13, align: 4)
!1251 = distinct !DILexicalBlock(scope: !1249, file: !7, line: 509, column: 5)
!1252 = !DILocalVariable(name: "result", scope: !1253, file: !7, line: 510, type: !13, align: 4)
!1253 = distinct !DILexicalBlock(scope: !1251, file: !7, line: 510, column: 5)
!1254 = !DILocation(line: 506, column: 31, scope: !1242)
!1255 = !DILocation(line: 506, column: 9, scope: !1245)
!1256 = !DILocation(line: 507, column: 30, scope: !1245)
!1257 = !DILocation(line: 507, column: 9, scope: !1247)
!1258 = !DILocation(line: 508, column: 30, scope: !1247)
!1259 = !DILocation(line: 508, column: 9, scope: !1249)
!1260 = !DILocation(line: 509, column: 38, scope: !1249)
!1261 = !DILocation(line: 509, column: 9, scope: !1251)
!1262 = !DILocation(line: 510, column: 18, scope: !1251)
!1263 = !DILocation(line: 510, column: 9, scope: !1253)
!1264 = !DILocation(line: 511, column: 5, scope: !1253)
!1265 = !DILocation(line: 512, column: 2, scope: !1242)
!1266 = distinct !DISubprogram(name: "run_test_49", scope: !8, file: !7, line: 515, type: !112, scopeLine: 515, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !1267)
!1267 = !{!1268, !1270, !1272, !1274, !1276}
!1268 = !DILocalVariable(name: "blocksize", scope: !1269, file: !7, line: 516, type: !13, align: 4)
!1269 = distinct !DILexicalBlock(scope: !1266, file: !7, line: 516, column: 5)
!1270 = !DILocalVariable(name: "channels", scope: !1271, file: !7, line: 517, type: !13, align: 4)
!1271 = distinct !DILexicalBlock(scope: !1269, file: !7, line: 517, column: 5)
!1272 = !DILocalVariable(name: "bitdepth", scope: !1273, file: !7, line: 518, type: !13, align: 4)
!1273 = distinct !DILexicalBlock(scope: !1271, file: !7, line: 518, column: 5)
!1274 = !DILocalVariable(name: "expected_returns", scope: !1275, file: !7, line: 519, type: !13, align: 4)
!1275 = distinct !DILexicalBlock(scope: !1273, file: !7, line: 519, column: 5)
!1276 = !DILocalVariable(name: "result", scope: !1277, file: !7, line: 520, type: !13, align: 4)
!1277 = distinct !DILexicalBlock(scope: !1275, file: !7, line: 520, column: 5)
!1278 = !DILocation(line: 516, column: 31, scope: !1266)
!1279 = !DILocation(line: 516, column: 9, scope: !1269)
!1280 = !DILocation(line: 517, column: 30, scope: !1269)
!1281 = !DILocation(line: 517, column: 9, scope: !1271)
!1282 = !DILocation(line: 518, column: 30, scope: !1271)
!1283 = !DILocation(line: 518, column: 9, scope: !1273)
!1284 = !DILocation(line: 519, column: 38, scope: !1273)
!1285 = !DILocation(line: 519, column: 9, scope: !1275)
!1286 = !DILocation(line: 520, column: 18, scope: !1275)
!1287 = !DILocation(line: 520, column: 9, scope: !1277)
!1288 = !DILocation(line: 521, column: 5, scope: !1277)
!1289 = !DILocation(line: 522, column: 2, scope: !1266)
!1290 = distinct !DISubprogram(name: "run_test_50", scope: !8, file: !7, line: 525, type: !112, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !1291)
!1291 = !{!1292, !1294, !1296, !1298, !1300}
!1292 = !DILocalVariable(name: "blocksize", scope: !1293, file: !7, line: 526, type: !13, align: 4)
!1293 = distinct !DILexicalBlock(scope: !1290, file: !7, line: 526, column: 5)
!1294 = !DILocalVariable(name: "channels", scope: !1295, file: !7, line: 527, type: !13, align: 4)
!1295 = distinct !DILexicalBlock(scope: !1293, file: !7, line: 527, column: 5)
!1296 = !DILocalVariable(name: "bitdepth", scope: !1297, file: !7, line: 528, type: !13, align: 4)
!1297 = distinct !DILexicalBlock(scope: !1295, file: !7, line: 528, column: 5)
!1298 = !DILocalVariable(name: "expected_returns", scope: !1299, file: !7, line: 529, type: !13, align: 4)
!1299 = distinct !DILexicalBlock(scope: !1297, file: !7, line: 529, column: 5)
!1300 = !DILocalVariable(name: "result", scope: !1301, file: !7, line: 530, type: !13, align: 4)
!1301 = distinct !DILexicalBlock(scope: !1299, file: !7, line: 530, column: 5)
!1302 = !DILocation(line: 526, column: 31, scope: !1290)
!1303 = !DILocation(line: 526, column: 9, scope: !1293)
!1304 = !DILocation(line: 527, column: 30, scope: !1293)
!1305 = !DILocation(line: 527, column: 9, scope: !1295)
!1306 = !DILocation(line: 528, column: 30, scope: !1295)
!1307 = !DILocation(line: 528, column: 9, scope: !1297)
!1308 = !DILocation(line: 529, column: 38, scope: !1297)
!1309 = !DILocation(line: 529, column: 9, scope: !1299)
!1310 = !DILocation(line: 530, column: 18, scope: !1299)
!1311 = !DILocation(line: 530, column: 9, scope: !1301)
!1312 = !DILocation(line: 531, column: 5, scope: !1301)
!1313 = !DILocation(line: 532, column: 2, scope: !1290)
!1314 = distinct !DISubprogram(name: "run_test_51", scope: !8, file: !7, line: 535, type: !112, scopeLine: 535, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !1315)
!1315 = !{!1316, !1318, !1320, !1322, !1324}
!1316 = !DILocalVariable(name: "blocksize", scope: !1317, file: !7, line: 536, type: !13, align: 4)
!1317 = distinct !DILexicalBlock(scope: !1314, file: !7, line: 536, column: 5)
!1318 = !DILocalVariable(name: "channels", scope: !1319, file: !7, line: 537, type: !13, align: 4)
!1319 = distinct !DILexicalBlock(scope: !1317, file: !7, line: 537, column: 5)
!1320 = !DILocalVariable(name: "bitdepth", scope: !1321, file: !7, line: 538, type: !13, align: 4)
!1321 = distinct !DILexicalBlock(scope: !1319, file: !7, line: 538, column: 5)
!1322 = !DILocalVariable(name: "expected_returns", scope: !1323, file: !7, line: 539, type: !13, align: 4)
!1323 = distinct !DILexicalBlock(scope: !1321, file: !7, line: 539, column: 5)
!1324 = !DILocalVariable(name: "result", scope: !1325, file: !7, line: 540, type: !13, align: 4)
!1325 = distinct !DILexicalBlock(scope: !1323, file: !7, line: 540, column: 5)
!1326 = !DILocation(line: 536, column: 31, scope: !1314)
!1327 = !DILocation(line: 536, column: 9, scope: !1317)
!1328 = !DILocation(line: 537, column: 30, scope: !1317)
!1329 = !DILocation(line: 537, column: 9, scope: !1319)
!1330 = !DILocation(line: 538, column: 30, scope: !1319)
!1331 = !DILocation(line: 538, column: 9, scope: !1321)
!1332 = !DILocation(line: 539, column: 38, scope: !1321)
!1333 = !DILocation(line: 539, column: 9, scope: !1323)
!1334 = !DILocation(line: 540, column: 18, scope: !1323)
!1335 = !DILocation(line: 540, column: 9, scope: !1325)
!1336 = !DILocation(line: 541, column: 5, scope: !1325)
!1337 = !DILocation(line: 542, column: 2, scope: !1314)
!1338 = distinct !DISubprogram(name: "run_test_52", scope: !8, file: !7, line: 545, type: !112, scopeLine: 545, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !1339)
!1339 = !{!1340, !1342, !1344, !1346, !1348}
!1340 = !DILocalVariable(name: "blocksize", scope: !1341, file: !7, line: 546, type: !13, align: 4)
!1341 = distinct !DILexicalBlock(scope: !1338, file: !7, line: 546, column: 5)
!1342 = !DILocalVariable(name: "channels", scope: !1343, file: !7, line: 547, type: !13, align: 4)
!1343 = distinct !DILexicalBlock(scope: !1341, file: !7, line: 547, column: 5)
!1344 = !DILocalVariable(name: "bitdepth", scope: !1345, file: !7, line: 548, type: !13, align: 4)
!1345 = distinct !DILexicalBlock(scope: !1343, file: !7, line: 548, column: 5)
!1346 = !DILocalVariable(name: "expected_returns", scope: !1347, file: !7, line: 549, type: !13, align: 4)
!1347 = distinct !DILexicalBlock(scope: !1345, file: !7, line: 549, column: 5)
!1348 = !DILocalVariable(name: "result", scope: !1349, file: !7, line: 550, type: !13, align: 4)
!1349 = distinct !DILexicalBlock(scope: !1347, file: !7, line: 550, column: 5)
!1350 = !DILocation(line: 546, column: 31, scope: !1338)
!1351 = !DILocation(line: 546, column: 9, scope: !1341)
!1352 = !DILocation(line: 547, column: 30, scope: !1341)
!1353 = !DILocation(line: 547, column: 9, scope: !1343)
!1354 = !DILocation(line: 548, column: 30, scope: !1343)
!1355 = !DILocation(line: 548, column: 9, scope: !1345)
!1356 = !DILocation(line: 549, column: 38, scope: !1345)
!1357 = !DILocation(line: 549, column: 9, scope: !1347)
!1358 = !DILocation(line: 550, column: 18, scope: !1347)
!1359 = !DILocation(line: 550, column: 9, scope: !1349)
!1360 = !DILocation(line: 551, column: 5, scope: !1349)
!1361 = !DILocation(line: 552, column: 2, scope: !1338)
!1362 = distinct !DISubprogram(name: "run_test_53", scope: !8, file: !7, line: 555, type: !112, scopeLine: 555, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !1363)
!1363 = !{!1364, !1366, !1368, !1370, !1372}
!1364 = !DILocalVariable(name: "blocksize", scope: !1365, file: !7, line: 556, type: !13, align: 4)
!1365 = distinct !DILexicalBlock(scope: !1362, file: !7, line: 556, column: 5)
!1366 = !DILocalVariable(name: "channels", scope: !1367, file: !7, line: 557, type: !13, align: 4)
!1367 = distinct !DILexicalBlock(scope: !1365, file: !7, line: 557, column: 5)
!1368 = !DILocalVariable(name: "bitdepth", scope: !1369, file: !7, line: 558, type: !13, align: 4)
!1369 = distinct !DILexicalBlock(scope: !1367, file: !7, line: 558, column: 5)
!1370 = !DILocalVariable(name: "expected_returns", scope: !1371, file: !7, line: 559, type: !13, align: 4)
!1371 = distinct !DILexicalBlock(scope: !1369, file: !7, line: 559, column: 5)
!1372 = !DILocalVariable(name: "result", scope: !1373, file: !7, line: 560, type: !13, align: 4)
!1373 = distinct !DILexicalBlock(scope: !1371, file: !7, line: 560, column: 5)
!1374 = !DILocation(line: 556, column: 31, scope: !1362)
!1375 = !DILocation(line: 556, column: 9, scope: !1365)
!1376 = !DILocation(line: 557, column: 30, scope: !1365)
!1377 = !DILocation(line: 557, column: 9, scope: !1367)
!1378 = !DILocation(line: 558, column: 30, scope: !1367)
!1379 = !DILocation(line: 558, column: 9, scope: !1369)
!1380 = !DILocation(line: 559, column: 38, scope: !1369)
!1381 = !DILocation(line: 559, column: 9, scope: !1371)
!1382 = !DILocation(line: 560, column: 18, scope: !1371)
!1383 = !DILocation(line: 560, column: 9, scope: !1373)
!1384 = !DILocation(line: 561, column: 5, scope: !1373)
!1385 = !DILocation(line: 562, column: 2, scope: !1362)
!1386 = distinct !DISubprogram(name: "run_test_54", scope: !8, file: !7, line: 565, type: !112, scopeLine: 565, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !1387)
!1387 = !{!1388, !1390, !1392, !1394, !1396}
!1388 = !DILocalVariable(name: "blocksize", scope: !1389, file: !7, line: 566, type: !13, align: 4)
!1389 = distinct !DILexicalBlock(scope: !1386, file: !7, line: 566, column: 5)
!1390 = !DILocalVariable(name: "channels", scope: !1391, file: !7, line: 567, type: !13, align: 4)
!1391 = distinct !DILexicalBlock(scope: !1389, file: !7, line: 567, column: 5)
!1392 = !DILocalVariable(name: "bitdepth", scope: !1393, file: !7, line: 568, type: !13, align: 4)
!1393 = distinct !DILexicalBlock(scope: !1391, file: !7, line: 568, column: 5)
!1394 = !DILocalVariable(name: "expected_returns", scope: !1395, file: !7, line: 569, type: !13, align: 4)
!1395 = distinct !DILexicalBlock(scope: !1393, file: !7, line: 569, column: 5)
!1396 = !DILocalVariable(name: "result", scope: !1397, file: !7, line: 570, type: !13, align: 4)
!1397 = distinct !DILexicalBlock(scope: !1395, file: !7, line: 570, column: 5)
!1398 = !DILocation(line: 566, column: 31, scope: !1386)
!1399 = !DILocation(line: 566, column: 9, scope: !1389)
!1400 = !DILocation(line: 567, column: 30, scope: !1389)
!1401 = !DILocation(line: 567, column: 9, scope: !1391)
!1402 = !DILocation(line: 568, column: 30, scope: !1391)
!1403 = !DILocation(line: 568, column: 9, scope: !1393)
!1404 = !DILocation(line: 569, column: 38, scope: !1393)
!1405 = !DILocation(line: 569, column: 9, scope: !1395)
!1406 = !DILocation(line: 570, column: 18, scope: !1395)
!1407 = !DILocation(line: 570, column: 9, scope: !1397)
!1408 = !DILocation(line: 571, column: 5, scope: !1397)
!1409 = !DILocation(line: 572, column: 2, scope: !1386)
!1410 = distinct !DISubprogram(name: "run_test_55", scope: !8, file: !7, line: 575, type: !112, scopeLine: 575, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !1411)
!1411 = !{!1412, !1414, !1416, !1418, !1420}
!1412 = !DILocalVariable(name: "blocksize", scope: !1413, file: !7, line: 576, type: !13, align: 4)
!1413 = distinct !DILexicalBlock(scope: !1410, file: !7, line: 576, column: 5)
!1414 = !DILocalVariable(name: "channels", scope: !1415, file: !7, line: 577, type: !13, align: 4)
!1415 = distinct !DILexicalBlock(scope: !1413, file: !7, line: 577, column: 5)
!1416 = !DILocalVariable(name: "bitdepth", scope: !1417, file: !7, line: 578, type: !13, align: 4)
!1417 = distinct !DILexicalBlock(scope: !1415, file: !7, line: 578, column: 5)
!1418 = !DILocalVariable(name: "expected_returns", scope: !1419, file: !7, line: 579, type: !13, align: 4)
!1419 = distinct !DILexicalBlock(scope: !1417, file: !7, line: 579, column: 5)
!1420 = !DILocalVariable(name: "result", scope: !1421, file: !7, line: 580, type: !13, align: 4)
!1421 = distinct !DILexicalBlock(scope: !1419, file: !7, line: 580, column: 5)
!1422 = !DILocation(line: 576, column: 31, scope: !1410)
!1423 = !DILocation(line: 576, column: 9, scope: !1413)
!1424 = !DILocation(line: 577, column: 30, scope: !1413)
!1425 = !DILocation(line: 577, column: 9, scope: !1415)
!1426 = !DILocation(line: 578, column: 30, scope: !1415)
!1427 = !DILocation(line: 578, column: 9, scope: !1417)
!1428 = !DILocation(line: 579, column: 38, scope: !1417)
!1429 = !DILocation(line: 579, column: 9, scope: !1419)
!1430 = !DILocation(line: 580, column: 18, scope: !1419)
!1431 = !DILocation(line: 580, column: 9, scope: !1421)
!1432 = !DILocation(line: 581, column: 5, scope: !1421)
!1433 = !DILocation(line: 582, column: 2, scope: !1410)
!1434 = distinct !DISubprogram(name: "run_test_56", scope: !8, file: !7, line: 585, type: !112, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !1435)
!1435 = !{!1436, !1438, !1440, !1442, !1444}
!1436 = !DILocalVariable(name: "blocksize", scope: !1437, file: !7, line: 586, type: !13, align: 4)
!1437 = distinct !DILexicalBlock(scope: !1434, file: !7, line: 586, column: 5)
!1438 = !DILocalVariable(name: "channels", scope: !1439, file: !7, line: 587, type: !13, align: 4)
!1439 = distinct !DILexicalBlock(scope: !1437, file: !7, line: 587, column: 5)
!1440 = !DILocalVariable(name: "bitdepth", scope: !1441, file: !7, line: 588, type: !13, align: 4)
!1441 = distinct !DILexicalBlock(scope: !1439, file: !7, line: 588, column: 5)
!1442 = !DILocalVariable(name: "expected_returns", scope: !1443, file: !7, line: 589, type: !13, align: 4)
!1443 = distinct !DILexicalBlock(scope: !1441, file: !7, line: 589, column: 5)
!1444 = !DILocalVariable(name: "result", scope: !1445, file: !7, line: 590, type: !13, align: 4)
!1445 = distinct !DILexicalBlock(scope: !1443, file: !7, line: 590, column: 5)
!1446 = !DILocation(line: 586, column: 31, scope: !1434)
!1447 = !DILocation(line: 586, column: 9, scope: !1437)
!1448 = !DILocation(line: 587, column: 30, scope: !1437)
!1449 = !DILocation(line: 587, column: 9, scope: !1439)
!1450 = !DILocation(line: 588, column: 30, scope: !1439)
!1451 = !DILocation(line: 588, column: 9, scope: !1441)
!1452 = !DILocation(line: 589, column: 38, scope: !1441)
!1453 = !DILocation(line: 589, column: 9, scope: !1443)
!1454 = !DILocation(line: 590, column: 18, scope: !1443)
!1455 = !DILocation(line: 590, column: 9, scope: !1445)
!1456 = !DILocation(line: 591, column: 5, scope: !1445)
!1457 = !DILocation(line: 592, column: 2, scope: !1434)
!1458 = distinct !DISubprogram(name: "run_test_57", scope: !8, file: !7, line: 595, type: !112, scopeLine: 595, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !1459)
!1459 = !{!1460, !1462, !1464, !1466, !1468}
!1460 = !DILocalVariable(name: "blocksize", scope: !1461, file: !7, line: 596, type: !13, align: 4)
!1461 = distinct !DILexicalBlock(scope: !1458, file: !7, line: 596, column: 5)
!1462 = !DILocalVariable(name: "channels", scope: !1463, file: !7, line: 597, type: !13, align: 4)
!1463 = distinct !DILexicalBlock(scope: !1461, file: !7, line: 597, column: 5)
!1464 = !DILocalVariable(name: "bitdepth", scope: !1465, file: !7, line: 598, type: !13, align: 4)
!1465 = distinct !DILexicalBlock(scope: !1463, file: !7, line: 598, column: 5)
!1466 = !DILocalVariable(name: "expected_returns", scope: !1467, file: !7, line: 599, type: !13, align: 4)
!1467 = distinct !DILexicalBlock(scope: !1465, file: !7, line: 599, column: 5)
!1468 = !DILocalVariable(name: "result", scope: !1469, file: !7, line: 600, type: !13, align: 4)
!1469 = distinct !DILexicalBlock(scope: !1467, file: !7, line: 600, column: 5)
!1470 = !DILocation(line: 596, column: 31, scope: !1458)
!1471 = !DILocation(line: 596, column: 9, scope: !1461)
!1472 = !DILocation(line: 597, column: 30, scope: !1461)
!1473 = !DILocation(line: 597, column: 9, scope: !1463)
!1474 = !DILocation(line: 598, column: 30, scope: !1463)
!1475 = !DILocation(line: 598, column: 9, scope: !1465)
!1476 = !DILocation(line: 599, column: 38, scope: !1465)
!1477 = !DILocation(line: 599, column: 9, scope: !1467)
!1478 = !DILocation(line: 600, column: 18, scope: !1467)
!1479 = !DILocation(line: 600, column: 9, scope: !1469)
!1480 = !DILocation(line: 601, column: 5, scope: !1469)
!1481 = !DILocation(line: 602, column: 2, scope: !1458)
!1482 = distinct !DISubprogram(name: "run_test_58", scope: !8, file: !7, line: 605, type: !112, scopeLine: 605, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !1483)
!1483 = !{!1484, !1486, !1488, !1490, !1492}
!1484 = !DILocalVariable(name: "blocksize", scope: !1485, file: !7, line: 606, type: !13, align: 4)
!1485 = distinct !DILexicalBlock(scope: !1482, file: !7, line: 606, column: 5)
!1486 = !DILocalVariable(name: "channels", scope: !1487, file: !7, line: 607, type: !13, align: 4)
!1487 = distinct !DILexicalBlock(scope: !1485, file: !7, line: 607, column: 5)
!1488 = !DILocalVariable(name: "bitdepth", scope: !1489, file: !7, line: 608, type: !13, align: 4)
!1489 = distinct !DILexicalBlock(scope: !1487, file: !7, line: 608, column: 5)
!1490 = !DILocalVariable(name: "expected_returns", scope: !1491, file: !7, line: 609, type: !13, align: 4)
!1491 = distinct !DILexicalBlock(scope: !1489, file: !7, line: 609, column: 5)
!1492 = !DILocalVariable(name: "result", scope: !1493, file: !7, line: 610, type: !13, align: 4)
!1493 = distinct !DILexicalBlock(scope: !1491, file: !7, line: 610, column: 5)
!1494 = !DILocation(line: 606, column: 31, scope: !1482)
!1495 = !DILocation(line: 606, column: 9, scope: !1485)
!1496 = !DILocation(line: 607, column: 30, scope: !1485)
!1497 = !DILocation(line: 607, column: 9, scope: !1487)
!1498 = !DILocation(line: 608, column: 30, scope: !1487)
!1499 = !DILocation(line: 608, column: 9, scope: !1489)
!1500 = !DILocation(line: 609, column: 38, scope: !1489)
!1501 = !DILocation(line: 609, column: 9, scope: !1491)
!1502 = !DILocation(line: 610, column: 18, scope: !1491)
!1503 = !DILocation(line: 610, column: 9, scope: !1493)
!1504 = !DILocation(line: 611, column: 5, scope: !1493)
!1505 = !DILocation(line: 612, column: 2, scope: !1482)
!1506 = distinct !DISubprogram(name: "run_test_59", scope: !8, file: !7, line: 615, type: !112, scopeLine: 615, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !1507)
!1507 = !{!1508, !1510, !1512, !1514, !1516}
!1508 = !DILocalVariable(name: "blocksize", scope: !1509, file: !7, line: 616, type: !13, align: 4)
!1509 = distinct !DILexicalBlock(scope: !1506, file: !7, line: 616, column: 5)
!1510 = !DILocalVariable(name: "channels", scope: !1511, file: !7, line: 617, type: !13, align: 4)
!1511 = distinct !DILexicalBlock(scope: !1509, file: !7, line: 617, column: 5)
!1512 = !DILocalVariable(name: "bitdepth", scope: !1513, file: !7, line: 618, type: !13, align: 4)
!1513 = distinct !DILexicalBlock(scope: !1511, file: !7, line: 618, column: 5)
!1514 = !DILocalVariable(name: "expected_returns", scope: !1515, file: !7, line: 619, type: !13, align: 4)
!1515 = distinct !DILexicalBlock(scope: !1513, file: !7, line: 619, column: 5)
!1516 = !DILocalVariable(name: "result", scope: !1517, file: !7, line: 620, type: !13, align: 4)
!1517 = distinct !DILexicalBlock(scope: !1515, file: !7, line: 620, column: 5)
!1518 = !DILocation(line: 616, column: 31, scope: !1506)
!1519 = !DILocation(line: 616, column: 9, scope: !1509)
!1520 = !DILocation(line: 617, column: 30, scope: !1509)
!1521 = !DILocation(line: 617, column: 9, scope: !1511)
!1522 = !DILocation(line: 618, column: 30, scope: !1511)
!1523 = !DILocation(line: 618, column: 9, scope: !1513)
!1524 = !DILocation(line: 619, column: 38, scope: !1513)
!1525 = !DILocation(line: 619, column: 9, scope: !1515)
!1526 = !DILocation(line: 620, column: 18, scope: !1515)
!1527 = !DILocation(line: 620, column: 9, scope: !1517)
!1528 = !DILocation(line: 621, column: 5, scope: !1517)
!1529 = !DILocation(line: 622, column: 2, scope: !1506)
!1530 = distinct !DISubprogram(name: "run_test_60", scope: !8, file: !7, line: 625, type: !112, scopeLine: 625, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !1531)
!1531 = !{!1532, !1534, !1536, !1538, !1540}
!1532 = !DILocalVariable(name: "blocksize", scope: !1533, file: !7, line: 626, type: !13, align: 4)
!1533 = distinct !DILexicalBlock(scope: !1530, file: !7, line: 626, column: 5)
!1534 = !DILocalVariable(name: "channels", scope: !1535, file: !7, line: 627, type: !13, align: 4)
!1535 = distinct !DILexicalBlock(scope: !1533, file: !7, line: 627, column: 5)
!1536 = !DILocalVariable(name: "bitdepth", scope: !1537, file: !7, line: 628, type: !13, align: 4)
!1537 = distinct !DILexicalBlock(scope: !1535, file: !7, line: 628, column: 5)
!1538 = !DILocalVariable(name: "expected_returns", scope: !1539, file: !7, line: 629, type: !13, align: 4)
!1539 = distinct !DILexicalBlock(scope: !1537, file: !7, line: 629, column: 5)
!1540 = !DILocalVariable(name: "result", scope: !1541, file: !7, line: 630, type: !13, align: 4)
!1541 = distinct !DILexicalBlock(scope: !1539, file: !7, line: 630, column: 5)
!1542 = !DILocation(line: 626, column: 31, scope: !1530)
!1543 = !DILocation(line: 626, column: 9, scope: !1533)
!1544 = !DILocation(line: 627, column: 30, scope: !1533)
!1545 = !DILocation(line: 627, column: 9, scope: !1535)
!1546 = !DILocation(line: 628, column: 30, scope: !1535)
!1547 = !DILocation(line: 628, column: 9, scope: !1537)
!1548 = !DILocation(line: 629, column: 38, scope: !1537)
!1549 = !DILocation(line: 629, column: 9, scope: !1539)
!1550 = !DILocation(line: 630, column: 18, scope: !1539)
!1551 = !DILocation(line: 630, column: 9, scope: !1541)
!1552 = !DILocation(line: 631, column: 5, scope: !1541)
!1553 = !DILocation(line: 632, column: 2, scope: !1530)
!1554 = distinct !DISubprogram(name: "run_test_61", scope: !8, file: !7, line: 635, type: !112, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !1555)
!1555 = !{!1556, !1558, !1560, !1562, !1564}
!1556 = !DILocalVariable(name: "blocksize", scope: !1557, file: !7, line: 636, type: !13, align: 4)
!1557 = distinct !DILexicalBlock(scope: !1554, file: !7, line: 636, column: 5)
!1558 = !DILocalVariable(name: "channels", scope: !1559, file: !7, line: 637, type: !13, align: 4)
!1559 = distinct !DILexicalBlock(scope: !1557, file: !7, line: 637, column: 5)
!1560 = !DILocalVariable(name: "bitdepth", scope: !1561, file: !7, line: 638, type: !13, align: 4)
!1561 = distinct !DILexicalBlock(scope: !1559, file: !7, line: 638, column: 5)
!1562 = !DILocalVariable(name: "expected_returns", scope: !1563, file: !7, line: 639, type: !13, align: 4)
!1563 = distinct !DILexicalBlock(scope: !1561, file: !7, line: 639, column: 5)
!1564 = !DILocalVariable(name: "result", scope: !1565, file: !7, line: 640, type: !13, align: 4)
!1565 = distinct !DILexicalBlock(scope: !1563, file: !7, line: 640, column: 5)
!1566 = !DILocation(line: 636, column: 31, scope: !1554)
!1567 = !DILocation(line: 636, column: 9, scope: !1557)
!1568 = !DILocation(line: 637, column: 30, scope: !1557)
!1569 = !DILocation(line: 637, column: 9, scope: !1559)
!1570 = !DILocation(line: 638, column: 30, scope: !1559)
!1571 = !DILocation(line: 638, column: 9, scope: !1561)
!1572 = !DILocation(line: 639, column: 38, scope: !1561)
!1573 = !DILocation(line: 639, column: 9, scope: !1563)
!1574 = !DILocation(line: 640, column: 18, scope: !1563)
!1575 = !DILocation(line: 640, column: 9, scope: !1565)
!1576 = !DILocation(line: 641, column: 5, scope: !1565)
!1577 = !DILocation(line: 642, column: 2, scope: !1554)
!1578 = distinct !DISubprogram(name: "run_test_62", scope: !8, file: !7, line: 645, type: !112, scopeLine: 645, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !1579)
!1579 = !{!1580, !1582, !1584, !1586, !1588}
!1580 = !DILocalVariable(name: "blocksize", scope: !1581, file: !7, line: 646, type: !13, align: 4)
!1581 = distinct !DILexicalBlock(scope: !1578, file: !7, line: 646, column: 5)
!1582 = !DILocalVariable(name: "channels", scope: !1583, file: !7, line: 647, type: !13, align: 4)
!1583 = distinct !DILexicalBlock(scope: !1581, file: !7, line: 647, column: 5)
!1584 = !DILocalVariable(name: "bitdepth", scope: !1585, file: !7, line: 648, type: !13, align: 4)
!1585 = distinct !DILexicalBlock(scope: !1583, file: !7, line: 648, column: 5)
!1586 = !DILocalVariable(name: "expected_returns", scope: !1587, file: !7, line: 649, type: !13, align: 4)
!1587 = distinct !DILexicalBlock(scope: !1585, file: !7, line: 649, column: 5)
!1588 = !DILocalVariable(name: "result", scope: !1589, file: !7, line: 650, type: !13, align: 4)
!1589 = distinct !DILexicalBlock(scope: !1587, file: !7, line: 650, column: 5)
!1590 = !DILocation(line: 646, column: 31, scope: !1578)
!1591 = !DILocation(line: 646, column: 9, scope: !1581)
!1592 = !DILocation(line: 647, column: 30, scope: !1581)
!1593 = !DILocation(line: 647, column: 9, scope: !1583)
!1594 = !DILocation(line: 648, column: 30, scope: !1583)
!1595 = !DILocation(line: 648, column: 9, scope: !1585)
!1596 = !DILocation(line: 649, column: 38, scope: !1585)
!1597 = !DILocation(line: 649, column: 9, scope: !1587)
!1598 = !DILocation(line: 650, column: 18, scope: !1587)
!1599 = !DILocation(line: 650, column: 9, scope: !1589)
!1600 = !DILocation(line: 651, column: 5, scope: !1589)
!1601 = !DILocation(line: 652, column: 2, scope: !1578)
!1602 = distinct !DISubprogram(name: "run_test_63", scope: !8, file: !7, line: 655, type: !112, scopeLine: 655, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !1603)
!1603 = !{!1604, !1606, !1608, !1610, !1612}
!1604 = !DILocalVariable(name: "blocksize", scope: !1605, file: !7, line: 656, type: !13, align: 4)
!1605 = distinct !DILexicalBlock(scope: !1602, file: !7, line: 656, column: 5)
!1606 = !DILocalVariable(name: "channels", scope: !1607, file: !7, line: 657, type: !13, align: 4)
!1607 = distinct !DILexicalBlock(scope: !1605, file: !7, line: 657, column: 5)
!1608 = !DILocalVariable(name: "bitdepth", scope: !1609, file: !7, line: 658, type: !13, align: 4)
!1609 = distinct !DILexicalBlock(scope: !1607, file: !7, line: 658, column: 5)
!1610 = !DILocalVariable(name: "expected_returns", scope: !1611, file: !7, line: 659, type: !13, align: 4)
!1611 = distinct !DILexicalBlock(scope: !1609, file: !7, line: 659, column: 5)
!1612 = !DILocalVariable(name: "result", scope: !1613, file: !7, line: 660, type: !13, align: 4)
!1613 = distinct !DILexicalBlock(scope: !1611, file: !7, line: 660, column: 5)
!1614 = !DILocation(line: 656, column: 31, scope: !1602)
!1615 = !DILocation(line: 656, column: 9, scope: !1605)
!1616 = !DILocation(line: 657, column: 30, scope: !1605)
!1617 = !DILocation(line: 657, column: 9, scope: !1607)
!1618 = !DILocation(line: 658, column: 30, scope: !1607)
!1619 = !DILocation(line: 658, column: 9, scope: !1609)
!1620 = !DILocation(line: 659, column: 38, scope: !1609)
!1621 = !DILocation(line: 659, column: 9, scope: !1611)
!1622 = !DILocation(line: 660, column: 18, scope: !1611)
!1623 = !DILocation(line: 660, column: 9, scope: !1613)
!1624 = !DILocation(line: 661, column: 5, scope: !1613)
!1625 = !DILocation(line: 662, column: 2, scope: !1602)
!1626 = distinct !DISubprogram(name: "run_test_64", scope: !8, file: !7, line: 665, type: !112, scopeLine: 665, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !1627)
!1627 = !{!1628, !1630, !1632, !1634, !1636}
!1628 = !DILocalVariable(name: "blocksize", scope: !1629, file: !7, line: 666, type: !13, align: 4)
!1629 = distinct !DILexicalBlock(scope: !1626, file: !7, line: 666, column: 5)
!1630 = !DILocalVariable(name: "channels", scope: !1631, file: !7, line: 667, type: !13, align: 4)
!1631 = distinct !DILexicalBlock(scope: !1629, file: !7, line: 667, column: 5)
!1632 = !DILocalVariable(name: "bitdepth", scope: !1633, file: !7, line: 668, type: !13, align: 4)
!1633 = distinct !DILexicalBlock(scope: !1631, file: !7, line: 668, column: 5)
!1634 = !DILocalVariable(name: "expected_returns", scope: !1635, file: !7, line: 669, type: !13, align: 4)
!1635 = distinct !DILexicalBlock(scope: !1633, file: !7, line: 669, column: 5)
!1636 = !DILocalVariable(name: "result", scope: !1637, file: !7, line: 670, type: !13, align: 4)
!1637 = distinct !DILexicalBlock(scope: !1635, file: !7, line: 670, column: 5)
!1638 = !DILocation(line: 666, column: 31, scope: !1626)
!1639 = !DILocation(line: 666, column: 9, scope: !1629)
!1640 = !DILocation(line: 667, column: 30, scope: !1629)
!1641 = !DILocation(line: 667, column: 9, scope: !1631)
!1642 = !DILocation(line: 668, column: 30, scope: !1631)
!1643 = !DILocation(line: 668, column: 9, scope: !1633)
!1644 = !DILocation(line: 669, column: 38, scope: !1633)
!1645 = !DILocation(line: 669, column: 9, scope: !1635)
!1646 = !DILocation(line: 670, column: 18, scope: !1635)
!1647 = !DILocation(line: 670, column: 9, scope: !1637)
!1648 = !DILocation(line: 671, column: 5, scope: !1637)
!1649 = !DILocation(line: 672, column: 2, scope: !1626)
!1650 = distinct !DISubprogram(name: "run_test_65", scope: !8, file: !7, line: 675, type: !112, scopeLine: 675, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !1651)
!1651 = !{!1652, !1654, !1656, !1658, !1660}
!1652 = !DILocalVariable(name: "blocksize", scope: !1653, file: !7, line: 676, type: !13, align: 4)
!1653 = distinct !DILexicalBlock(scope: !1650, file: !7, line: 676, column: 5)
!1654 = !DILocalVariable(name: "channels", scope: !1655, file: !7, line: 677, type: !13, align: 4)
!1655 = distinct !DILexicalBlock(scope: !1653, file: !7, line: 677, column: 5)
!1656 = !DILocalVariable(name: "bitdepth", scope: !1657, file: !7, line: 678, type: !13, align: 4)
!1657 = distinct !DILexicalBlock(scope: !1655, file: !7, line: 678, column: 5)
!1658 = !DILocalVariable(name: "expected_returns", scope: !1659, file: !7, line: 679, type: !13, align: 4)
!1659 = distinct !DILexicalBlock(scope: !1657, file: !7, line: 679, column: 5)
!1660 = !DILocalVariable(name: "result", scope: !1661, file: !7, line: 680, type: !13, align: 4)
!1661 = distinct !DILexicalBlock(scope: !1659, file: !7, line: 680, column: 5)
!1662 = !DILocation(line: 676, column: 31, scope: !1650)
!1663 = !DILocation(line: 676, column: 9, scope: !1653)
!1664 = !DILocation(line: 677, column: 30, scope: !1653)
!1665 = !DILocation(line: 677, column: 9, scope: !1655)
!1666 = !DILocation(line: 678, column: 30, scope: !1655)
!1667 = !DILocation(line: 678, column: 9, scope: !1657)
!1668 = !DILocation(line: 679, column: 38, scope: !1657)
!1669 = !DILocation(line: 679, column: 9, scope: !1659)
!1670 = !DILocation(line: 680, column: 18, scope: !1659)
!1671 = !DILocation(line: 680, column: 9, scope: !1661)
!1672 = !DILocation(line: 681, column: 5, scope: !1661)
!1673 = !DILocation(line: 682, column: 2, scope: !1650)
!1674 = distinct !DISubprogram(name: "run_test_66", scope: !8, file: !7, line: 685, type: !112, scopeLine: 685, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !1675)
!1675 = !{!1676, !1678, !1680, !1682, !1684}
!1676 = !DILocalVariable(name: "blocksize", scope: !1677, file: !7, line: 686, type: !13, align: 4)
!1677 = distinct !DILexicalBlock(scope: !1674, file: !7, line: 686, column: 5)
!1678 = !DILocalVariable(name: "channels", scope: !1679, file: !7, line: 687, type: !13, align: 4)
!1679 = distinct !DILexicalBlock(scope: !1677, file: !7, line: 687, column: 5)
!1680 = !DILocalVariable(name: "bitdepth", scope: !1681, file: !7, line: 688, type: !13, align: 4)
!1681 = distinct !DILexicalBlock(scope: !1679, file: !7, line: 688, column: 5)
!1682 = !DILocalVariable(name: "expected_returns", scope: !1683, file: !7, line: 689, type: !13, align: 4)
!1683 = distinct !DILexicalBlock(scope: !1681, file: !7, line: 689, column: 5)
!1684 = !DILocalVariable(name: "result", scope: !1685, file: !7, line: 690, type: !13, align: 4)
!1685 = distinct !DILexicalBlock(scope: !1683, file: !7, line: 690, column: 5)
!1686 = !DILocation(line: 686, column: 31, scope: !1674)
!1687 = !DILocation(line: 686, column: 9, scope: !1677)
!1688 = !DILocation(line: 687, column: 30, scope: !1677)
!1689 = !DILocation(line: 687, column: 9, scope: !1679)
!1690 = !DILocation(line: 688, column: 30, scope: !1679)
!1691 = !DILocation(line: 688, column: 9, scope: !1681)
!1692 = !DILocation(line: 689, column: 38, scope: !1681)
!1693 = !DILocation(line: 689, column: 9, scope: !1683)
!1694 = !DILocation(line: 690, column: 18, scope: !1683)
!1695 = !DILocation(line: 690, column: 9, scope: !1685)
!1696 = !DILocation(line: 691, column: 5, scope: !1685)
!1697 = !DILocation(line: 692, column: 2, scope: !1674)
!1698 = distinct !DISubprogram(name: "run_test_67", scope: !8, file: !7, line: 695, type: !112, scopeLine: 695, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !1699)
!1699 = !{!1700, !1702, !1704, !1706, !1708}
!1700 = !DILocalVariable(name: "blocksize", scope: !1701, file: !7, line: 696, type: !13, align: 4)
!1701 = distinct !DILexicalBlock(scope: !1698, file: !7, line: 696, column: 5)
!1702 = !DILocalVariable(name: "channels", scope: !1703, file: !7, line: 697, type: !13, align: 4)
!1703 = distinct !DILexicalBlock(scope: !1701, file: !7, line: 697, column: 5)
!1704 = !DILocalVariable(name: "bitdepth", scope: !1705, file: !7, line: 698, type: !13, align: 4)
!1705 = distinct !DILexicalBlock(scope: !1703, file: !7, line: 698, column: 5)
!1706 = !DILocalVariable(name: "expected_returns", scope: !1707, file: !7, line: 699, type: !13, align: 4)
!1707 = distinct !DILexicalBlock(scope: !1705, file: !7, line: 699, column: 5)
!1708 = !DILocalVariable(name: "result", scope: !1709, file: !7, line: 700, type: !13, align: 4)
!1709 = distinct !DILexicalBlock(scope: !1707, file: !7, line: 700, column: 5)
!1710 = !DILocation(line: 696, column: 31, scope: !1698)
!1711 = !DILocation(line: 696, column: 9, scope: !1701)
!1712 = !DILocation(line: 697, column: 30, scope: !1701)
!1713 = !DILocation(line: 697, column: 9, scope: !1703)
!1714 = !DILocation(line: 698, column: 30, scope: !1703)
!1715 = !DILocation(line: 698, column: 9, scope: !1705)
!1716 = !DILocation(line: 699, column: 38, scope: !1705)
!1717 = !DILocation(line: 699, column: 9, scope: !1707)
!1718 = !DILocation(line: 700, column: 18, scope: !1707)
!1719 = !DILocation(line: 700, column: 9, scope: !1709)
!1720 = !DILocation(line: 701, column: 5, scope: !1709)
!1721 = !DILocation(line: 702, column: 2, scope: !1698)
!1722 = distinct !DISubprogram(name: "run_test_68", scope: !8, file: !7, line: 705, type: !112, scopeLine: 705, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !1723)
!1723 = !{!1724, !1726, !1728, !1730, !1732}
!1724 = !DILocalVariable(name: "blocksize", scope: !1725, file: !7, line: 706, type: !13, align: 4)
!1725 = distinct !DILexicalBlock(scope: !1722, file: !7, line: 706, column: 5)
!1726 = !DILocalVariable(name: "channels", scope: !1727, file: !7, line: 707, type: !13, align: 4)
!1727 = distinct !DILexicalBlock(scope: !1725, file: !7, line: 707, column: 5)
!1728 = !DILocalVariable(name: "bitdepth", scope: !1729, file: !7, line: 708, type: !13, align: 4)
!1729 = distinct !DILexicalBlock(scope: !1727, file: !7, line: 708, column: 5)
!1730 = !DILocalVariable(name: "expected_returns", scope: !1731, file: !7, line: 709, type: !13, align: 4)
!1731 = distinct !DILexicalBlock(scope: !1729, file: !7, line: 709, column: 5)
!1732 = !DILocalVariable(name: "result", scope: !1733, file: !7, line: 710, type: !13, align: 4)
!1733 = distinct !DILexicalBlock(scope: !1731, file: !7, line: 710, column: 5)
!1734 = !DILocation(line: 706, column: 31, scope: !1722)
!1735 = !DILocation(line: 706, column: 9, scope: !1725)
!1736 = !DILocation(line: 707, column: 30, scope: !1725)
!1737 = !DILocation(line: 707, column: 9, scope: !1727)
!1738 = !DILocation(line: 708, column: 30, scope: !1727)
!1739 = !DILocation(line: 708, column: 9, scope: !1729)
!1740 = !DILocation(line: 709, column: 38, scope: !1729)
!1741 = !DILocation(line: 709, column: 9, scope: !1731)
!1742 = !DILocation(line: 710, column: 18, scope: !1731)
!1743 = !DILocation(line: 710, column: 9, scope: !1733)
!1744 = !DILocation(line: 711, column: 5, scope: !1733)
!1745 = !DILocation(line: 712, column: 2, scope: !1722)
!1746 = distinct !DISubprogram(name: "run_test_69", scope: !8, file: !7, line: 715, type: !112, scopeLine: 715, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !1747)
!1747 = !{!1748, !1750, !1752, !1754, !1756}
!1748 = !DILocalVariable(name: "blocksize", scope: !1749, file: !7, line: 716, type: !13, align: 4)
!1749 = distinct !DILexicalBlock(scope: !1746, file: !7, line: 716, column: 5)
!1750 = !DILocalVariable(name: "channels", scope: !1751, file: !7, line: 717, type: !13, align: 4)
!1751 = distinct !DILexicalBlock(scope: !1749, file: !7, line: 717, column: 5)
!1752 = !DILocalVariable(name: "bitdepth", scope: !1753, file: !7, line: 718, type: !13, align: 4)
!1753 = distinct !DILexicalBlock(scope: !1751, file: !7, line: 718, column: 5)
!1754 = !DILocalVariable(name: "expected_returns", scope: !1755, file: !7, line: 719, type: !13, align: 4)
!1755 = distinct !DILexicalBlock(scope: !1753, file: !7, line: 719, column: 5)
!1756 = !DILocalVariable(name: "result", scope: !1757, file: !7, line: 720, type: !13, align: 4)
!1757 = distinct !DILexicalBlock(scope: !1755, file: !7, line: 720, column: 5)
!1758 = !DILocation(line: 716, column: 31, scope: !1746)
!1759 = !DILocation(line: 716, column: 9, scope: !1749)
!1760 = !DILocation(line: 717, column: 30, scope: !1749)
!1761 = !DILocation(line: 717, column: 9, scope: !1751)
!1762 = !DILocation(line: 718, column: 30, scope: !1751)
!1763 = !DILocation(line: 718, column: 9, scope: !1753)
!1764 = !DILocation(line: 719, column: 38, scope: !1753)
!1765 = !DILocation(line: 719, column: 9, scope: !1755)
!1766 = !DILocation(line: 720, column: 18, scope: !1755)
!1767 = !DILocation(line: 720, column: 9, scope: !1757)
!1768 = !DILocation(line: 721, column: 5, scope: !1757)
!1769 = !DILocation(line: 722, column: 2, scope: !1746)
!1770 = distinct !DISubprogram(name: "run_test_70", scope: !8, file: !7, line: 725, type: !112, scopeLine: 725, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !1771)
!1771 = !{!1772, !1774, !1776, !1778, !1780}
!1772 = !DILocalVariable(name: "blocksize", scope: !1773, file: !7, line: 726, type: !13, align: 4)
!1773 = distinct !DILexicalBlock(scope: !1770, file: !7, line: 726, column: 5)
!1774 = !DILocalVariable(name: "channels", scope: !1775, file: !7, line: 727, type: !13, align: 4)
!1775 = distinct !DILexicalBlock(scope: !1773, file: !7, line: 727, column: 5)
!1776 = !DILocalVariable(name: "bitdepth", scope: !1777, file: !7, line: 728, type: !13, align: 4)
!1777 = distinct !DILexicalBlock(scope: !1775, file: !7, line: 728, column: 5)
!1778 = !DILocalVariable(name: "expected_returns", scope: !1779, file: !7, line: 729, type: !13, align: 4)
!1779 = distinct !DILexicalBlock(scope: !1777, file: !7, line: 729, column: 5)
!1780 = !DILocalVariable(name: "result", scope: !1781, file: !7, line: 730, type: !13, align: 4)
!1781 = distinct !DILexicalBlock(scope: !1779, file: !7, line: 730, column: 5)
!1782 = !DILocation(line: 726, column: 31, scope: !1770)
!1783 = !DILocation(line: 726, column: 9, scope: !1773)
!1784 = !DILocation(line: 727, column: 30, scope: !1773)
!1785 = !DILocation(line: 727, column: 9, scope: !1775)
!1786 = !DILocation(line: 728, column: 30, scope: !1775)
!1787 = !DILocation(line: 728, column: 9, scope: !1777)
!1788 = !DILocation(line: 729, column: 38, scope: !1777)
!1789 = !DILocation(line: 729, column: 9, scope: !1779)
!1790 = !DILocation(line: 730, column: 18, scope: !1779)
!1791 = !DILocation(line: 730, column: 9, scope: !1781)
!1792 = !DILocation(line: 731, column: 5, scope: !1781)
!1793 = !DILocation(line: 732, column: 2, scope: !1770)
!1794 = distinct !DISubprogram(name: "run_test_71", scope: !8, file: !7, line: 735, type: !112, scopeLine: 735, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !1795)
!1795 = !{!1796, !1798, !1800, !1802, !1804}
!1796 = !DILocalVariable(name: "blocksize", scope: !1797, file: !7, line: 736, type: !13, align: 4)
!1797 = distinct !DILexicalBlock(scope: !1794, file: !7, line: 736, column: 5)
!1798 = !DILocalVariable(name: "channels", scope: !1799, file: !7, line: 737, type: !13, align: 4)
!1799 = distinct !DILexicalBlock(scope: !1797, file: !7, line: 737, column: 5)
!1800 = !DILocalVariable(name: "bitdepth", scope: !1801, file: !7, line: 738, type: !13, align: 4)
!1801 = distinct !DILexicalBlock(scope: !1799, file: !7, line: 738, column: 5)
!1802 = !DILocalVariable(name: "expected_returns", scope: !1803, file: !7, line: 739, type: !13, align: 4)
!1803 = distinct !DILexicalBlock(scope: !1801, file: !7, line: 739, column: 5)
!1804 = !DILocalVariable(name: "result", scope: !1805, file: !7, line: 740, type: !13, align: 4)
!1805 = distinct !DILexicalBlock(scope: !1803, file: !7, line: 740, column: 5)
!1806 = !DILocation(line: 736, column: 31, scope: !1794)
!1807 = !DILocation(line: 736, column: 9, scope: !1797)
!1808 = !DILocation(line: 737, column: 30, scope: !1797)
!1809 = !DILocation(line: 737, column: 9, scope: !1799)
!1810 = !DILocation(line: 738, column: 30, scope: !1799)
!1811 = !DILocation(line: 738, column: 9, scope: !1801)
!1812 = !DILocation(line: 739, column: 38, scope: !1801)
!1813 = !DILocation(line: 739, column: 9, scope: !1803)
!1814 = !DILocation(line: 740, column: 18, scope: !1803)
!1815 = !DILocation(line: 740, column: 9, scope: !1805)
!1816 = !DILocation(line: 741, column: 5, scope: !1805)
!1817 = !DILocation(line: 742, column: 2, scope: !1794)
!1818 = distinct !DISubprogram(name: "run_test_72", scope: !8, file: !7, line: 745, type: !112, scopeLine: 745, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !1819)
!1819 = !{!1820, !1822, !1824, !1826, !1828}
!1820 = !DILocalVariable(name: "blocksize", scope: !1821, file: !7, line: 746, type: !13, align: 4)
!1821 = distinct !DILexicalBlock(scope: !1818, file: !7, line: 746, column: 5)
!1822 = !DILocalVariable(name: "channels", scope: !1823, file: !7, line: 747, type: !13, align: 4)
!1823 = distinct !DILexicalBlock(scope: !1821, file: !7, line: 747, column: 5)
!1824 = !DILocalVariable(name: "bitdepth", scope: !1825, file: !7, line: 748, type: !13, align: 4)
!1825 = distinct !DILexicalBlock(scope: !1823, file: !7, line: 748, column: 5)
!1826 = !DILocalVariable(name: "expected_returns", scope: !1827, file: !7, line: 749, type: !13, align: 4)
!1827 = distinct !DILexicalBlock(scope: !1825, file: !7, line: 749, column: 5)
!1828 = !DILocalVariable(name: "result", scope: !1829, file: !7, line: 750, type: !13, align: 4)
!1829 = distinct !DILexicalBlock(scope: !1827, file: !7, line: 750, column: 5)
!1830 = !DILocation(line: 746, column: 31, scope: !1818)
!1831 = !DILocation(line: 746, column: 9, scope: !1821)
!1832 = !DILocation(line: 747, column: 30, scope: !1821)
!1833 = !DILocation(line: 747, column: 9, scope: !1823)
!1834 = !DILocation(line: 748, column: 30, scope: !1823)
!1835 = !DILocation(line: 748, column: 9, scope: !1825)
!1836 = !DILocation(line: 749, column: 38, scope: !1825)
!1837 = !DILocation(line: 749, column: 9, scope: !1827)
!1838 = !DILocation(line: 750, column: 18, scope: !1827)
!1839 = !DILocation(line: 750, column: 9, scope: !1829)
!1840 = !DILocation(line: 751, column: 5, scope: !1829)
!1841 = !DILocation(line: 752, column: 2, scope: !1818)
!1842 = distinct !DISubprogram(name: "run_test_73", scope: !8, file: !7, line: 755, type: !112, scopeLine: 755, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !1843)
!1843 = !{!1844, !1846, !1848, !1850, !1852}
!1844 = !DILocalVariable(name: "blocksize", scope: !1845, file: !7, line: 756, type: !13, align: 4)
!1845 = distinct !DILexicalBlock(scope: !1842, file: !7, line: 756, column: 5)
!1846 = !DILocalVariable(name: "channels", scope: !1847, file: !7, line: 757, type: !13, align: 4)
!1847 = distinct !DILexicalBlock(scope: !1845, file: !7, line: 757, column: 5)
!1848 = !DILocalVariable(name: "bitdepth", scope: !1849, file: !7, line: 758, type: !13, align: 4)
!1849 = distinct !DILexicalBlock(scope: !1847, file: !7, line: 758, column: 5)
!1850 = !DILocalVariable(name: "expected_returns", scope: !1851, file: !7, line: 759, type: !13, align: 4)
!1851 = distinct !DILexicalBlock(scope: !1849, file: !7, line: 759, column: 5)
!1852 = !DILocalVariable(name: "result", scope: !1853, file: !7, line: 760, type: !13, align: 4)
!1853 = distinct !DILexicalBlock(scope: !1851, file: !7, line: 760, column: 5)
!1854 = !DILocation(line: 756, column: 31, scope: !1842)
!1855 = !DILocation(line: 756, column: 9, scope: !1845)
!1856 = !DILocation(line: 757, column: 30, scope: !1845)
!1857 = !DILocation(line: 757, column: 9, scope: !1847)
!1858 = !DILocation(line: 758, column: 30, scope: !1847)
!1859 = !DILocation(line: 758, column: 9, scope: !1849)
!1860 = !DILocation(line: 759, column: 38, scope: !1849)
!1861 = !DILocation(line: 759, column: 9, scope: !1851)
!1862 = !DILocation(line: 760, column: 18, scope: !1851)
!1863 = !DILocation(line: 760, column: 9, scope: !1853)
!1864 = !DILocation(line: 761, column: 5, scope: !1853)
!1865 = !DILocation(line: 762, column: 2, scope: !1842)
!1866 = distinct !DISubprogram(name: "run_test_74", scope: !8, file: !7, line: 765, type: !112, scopeLine: 765, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !1867)
!1867 = !{!1868, !1870, !1872, !1874, !1876}
!1868 = !DILocalVariable(name: "blocksize", scope: !1869, file: !7, line: 766, type: !13, align: 4)
!1869 = distinct !DILexicalBlock(scope: !1866, file: !7, line: 766, column: 5)
!1870 = !DILocalVariable(name: "channels", scope: !1871, file: !7, line: 767, type: !13, align: 4)
!1871 = distinct !DILexicalBlock(scope: !1869, file: !7, line: 767, column: 5)
!1872 = !DILocalVariable(name: "bitdepth", scope: !1873, file: !7, line: 768, type: !13, align: 4)
!1873 = distinct !DILexicalBlock(scope: !1871, file: !7, line: 768, column: 5)
!1874 = !DILocalVariable(name: "expected_returns", scope: !1875, file: !7, line: 769, type: !13, align: 4)
!1875 = distinct !DILexicalBlock(scope: !1873, file: !7, line: 769, column: 5)
!1876 = !DILocalVariable(name: "result", scope: !1877, file: !7, line: 770, type: !13, align: 4)
!1877 = distinct !DILexicalBlock(scope: !1875, file: !7, line: 770, column: 5)
!1878 = !DILocation(line: 766, column: 31, scope: !1866)
!1879 = !DILocation(line: 766, column: 9, scope: !1869)
!1880 = !DILocation(line: 767, column: 30, scope: !1869)
!1881 = !DILocation(line: 767, column: 9, scope: !1871)
!1882 = !DILocation(line: 768, column: 30, scope: !1871)
!1883 = !DILocation(line: 768, column: 9, scope: !1873)
!1884 = !DILocation(line: 769, column: 38, scope: !1873)
!1885 = !DILocation(line: 769, column: 9, scope: !1875)
!1886 = !DILocation(line: 770, column: 18, scope: !1875)
!1887 = !DILocation(line: 770, column: 9, scope: !1877)
!1888 = !DILocation(line: 771, column: 5, scope: !1877)
!1889 = !DILocation(line: 772, column: 2, scope: !1866)
!1890 = distinct !DISubprogram(name: "run_test_75", scope: !8, file: !7, line: 775, type: !112, scopeLine: 775, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !1891)
!1891 = !{!1892, !1894, !1896, !1898, !1900}
!1892 = !DILocalVariable(name: "blocksize", scope: !1893, file: !7, line: 776, type: !13, align: 4)
!1893 = distinct !DILexicalBlock(scope: !1890, file: !7, line: 776, column: 5)
!1894 = !DILocalVariable(name: "channels", scope: !1895, file: !7, line: 777, type: !13, align: 4)
!1895 = distinct !DILexicalBlock(scope: !1893, file: !7, line: 777, column: 5)
!1896 = !DILocalVariable(name: "bitdepth", scope: !1897, file: !7, line: 778, type: !13, align: 4)
!1897 = distinct !DILexicalBlock(scope: !1895, file: !7, line: 778, column: 5)
!1898 = !DILocalVariable(name: "expected_returns", scope: !1899, file: !7, line: 779, type: !13, align: 4)
!1899 = distinct !DILexicalBlock(scope: !1897, file: !7, line: 779, column: 5)
!1900 = !DILocalVariable(name: "result", scope: !1901, file: !7, line: 780, type: !13, align: 4)
!1901 = distinct !DILexicalBlock(scope: !1899, file: !7, line: 780, column: 5)
!1902 = !DILocation(line: 776, column: 31, scope: !1890)
!1903 = !DILocation(line: 776, column: 9, scope: !1893)
!1904 = !DILocation(line: 777, column: 30, scope: !1893)
!1905 = !DILocation(line: 777, column: 9, scope: !1895)
!1906 = !DILocation(line: 778, column: 30, scope: !1895)
!1907 = !DILocation(line: 778, column: 9, scope: !1897)
!1908 = !DILocation(line: 779, column: 38, scope: !1897)
!1909 = !DILocation(line: 779, column: 9, scope: !1899)
!1910 = !DILocation(line: 780, column: 18, scope: !1899)
!1911 = !DILocation(line: 780, column: 9, scope: !1901)
!1912 = !DILocation(line: 781, column: 5, scope: !1901)
!1913 = !DILocation(line: 782, column: 2, scope: !1890)
!1914 = distinct !DISubprogram(name: "run_test_76", scope: !8, file: !7, line: 785, type: !112, scopeLine: 785, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !1915)
!1915 = !{!1916, !1918, !1920, !1922, !1924}
!1916 = !DILocalVariable(name: "blocksize", scope: !1917, file: !7, line: 786, type: !13, align: 4)
!1917 = distinct !DILexicalBlock(scope: !1914, file: !7, line: 786, column: 5)
!1918 = !DILocalVariable(name: "channels", scope: !1919, file: !7, line: 787, type: !13, align: 4)
!1919 = distinct !DILexicalBlock(scope: !1917, file: !7, line: 787, column: 5)
!1920 = !DILocalVariable(name: "bitdepth", scope: !1921, file: !7, line: 788, type: !13, align: 4)
!1921 = distinct !DILexicalBlock(scope: !1919, file: !7, line: 788, column: 5)
!1922 = !DILocalVariable(name: "expected_returns", scope: !1923, file: !7, line: 789, type: !13, align: 4)
!1923 = distinct !DILexicalBlock(scope: !1921, file: !7, line: 789, column: 5)
!1924 = !DILocalVariable(name: "result", scope: !1925, file: !7, line: 790, type: !13, align: 4)
!1925 = distinct !DILexicalBlock(scope: !1923, file: !7, line: 790, column: 5)
!1926 = !DILocation(line: 786, column: 31, scope: !1914)
!1927 = !DILocation(line: 786, column: 9, scope: !1917)
!1928 = !DILocation(line: 787, column: 30, scope: !1917)
!1929 = !DILocation(line: 787, column: 9, scope: !1919)
!1930 = !DILocation(line: 788, column: 30, scope: !1919)
!1931 = !DILocation(line: 788, column: 9, scope: !1921)
!1932 = !DILocation(line: 789, column: 38, scope: !1921)
!1933 = !DILocation(line: 789, column: 9, scope: !1923)
!1934 = !DILocation(line: 790, column: 18, scope: !1923)
!1935 = !DILocation(line: 790, column: 9, scope: !1925)
!1936 = !DILocation(line: 791, column: 5, scope: !1925)
!1937 = !DILocation(line: 792, column: 2, scope: !1914)
!1938 = distinct !DISubprogram(name: "run_test_77", scope: !8, file: !7, line: 795, type: !112, scopeLine: 795, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !1939)
!1939 = !{!1940, !1942, !1944, !1946, !1948}
!1940 = !DILocalVariable(name: "blocksize", scope: !1941, file: !7, line: 796, type: !13, align: 4)
!1941 = distinct !DILexicalBlock(scope: !1938, file: !7, line: 796, column: 5)
!1942 = !DILocalVariable(name: "channels", scope: !1943, file: !7, line: 797, type: !13, align: 4)
!1943 = distinct !DILexicalBlock(scope: !1941, file: !7, line: 797, column: 5)
!1944 = !DILocalVariable(name: "bitdepth", scope: !1945, file: !7, line: 798, type: !13, align: 4)
!1945 = distinct !DILexicalBlock(scope: !1943, file: !7, line: 798, column: 5)
!1946 = !DILocalVariable(name: "expected_returns", scope: !1947, file: !7, line: 799, type: !13, align: 4)
!1947 = distinct !DILexicalBlock(scope: !1945, file: !7, line: 799, column: 5)
!1948 = !DILocalVariable(name: "result", scope: !1949, file: !7, line: 800, type: !13, align: 4)
!1949 = distinct !DILexicalBlock(scope: !1947, file: !7, line: 800, column: 5)
!1950 = !DILocation(line: 796, column: 31, scope: !1938)
!1951 = !DILocation(line: 796, column: 9, scope: !1941)
!1952 = !DILocation(line: 797, column: 30, scope: !1941)
!1953 = !DILocation(line: 797, column: 9, scope: !1943)
!1954 = !DILocation(line: 798, column: 30, scope: !1943)
!1955 = !DILocation(line: 798, column: 9, scope: !1945)
!1956 = !DILocation(line: 799, column: 38, scope: !1945)
!1957 = !DILocation(line: 799, column: 9, scope: !1947)
!1958 = !DILocation(line: 800, column: 18, scope: !1947)
!1959 = !DILocation(line: 800, column: 9, scope: !1949)
!1960 = !DILocation(line: 801, column: 5, scope: !1949)
!1961 = !DILocation(line: 802, column: 2, scope: !1938)
!1962 = distinct !DISubprogram(name: "run_test_78", scope: !8, file: !7, line: 805, type: !112, scopeLine: 805, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !1963)
!1963 = !{!1964, !1966, !1968, !1970, !1972}
!1964 = !DILocalVariable(name: "blocksize", scope: !1965, file: !7, line: 806, type: !13, align: 4)
!1965 = distinct !DILexicalBlock(scope: !1962, file: !7, line: 806, column: 5)
!1966 = !DILocalVariable(name: "channels", scope: !1967, file: !7, line: 807, type: !13, align: 4)
!1967 = distinct !DILexicalBlock(scope: !1965, file: !7, line: 807, column: 5)
!1968 = !DILocalVariable(name: "bitdepth", scope: !1969, file: !7, line: 808, type: !13, align: 4)
!1969 = distinct !DILexicalBlock(scope: !1967, file: !7, line: 808, column: 5)
!1970 = !DILocalVariable(name: "expected_returns", scope: !1971, file: !7, line: 809, type: !13, align: 4)
!1971 = distinct !DILexicalBlock(scope: !1969, file: !7, line: 809, column: 5)
!1972 = !DILocalVariable(name: "result", scope: !1973, file: !7, line: 810, type: !13, align: 4)
!1973 = distinct !DILexicalBlock(scope: !1971, file: !7, line: 810, column: 5)
!1974 = !DILocation(line: 806, column: 31, scope: !1962)
!1975 = !DILocation(line: 806, column: 9, scope: !1965)
!1976 = !DILocation(line: 807, column: 30, scope: !1965)
!1977 = !DILocation(line: 807, column: 9, scope: !1967)
!1978 = !DILocation(line: 808, column: 30, scope: !1967)
!1979 = !DILocation(line: 808, column: 9, scope: !1969)
!1980 = !DILocation(line: 809, column: 38, scope: !1969)
!1981 = !DILocation(line: 809, column: 9, scope: !1971)
!1982 = !DILocation(line: 810, column: 18, scope: !1971)
!1983 = !DILocation(line: 810, column: 9, scope: !1973)
!1984 = !DILocation(line: 811, column: 5, scope: !1973)
!1985 = !DILocation(line: 812, column: 2, scope: !1962)
!1986 = distinct !DISubprogram(name: "run_test_79", scope: !8, file: !7, line: 815, type: !112, scopeLine: 815, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !1987)
!1987 = !{!1988, !1990, !1992, !1994, !1996}
!1988 = !DILocalVariable(name: "blocksize", scope: !1989, file: !7, line: 816, type: !13, align: 4)
!1989 = distinct !DILexicalBlock(scope: !1986, file: !7, line: 816, column: 5)
!1990 = !DILocalVariable(name: "channels", scope: !1991, file: !7, line: 817, type: !13, align: 4)
!1991 = distinct !DILexicalBlock(scope: !1989, file: !7, line: 817, column: 5)
!1992 = !DILocalVariable(name: "bitdepth", scope: !1993, file: !7, line: 818, type: !13, align: 4)
!1993 = distinct !DILexicalBlock(scope: !1991, file: !7, line: 818, column: 5)
!1994 = !DILocalVariable(name: "expected_returns", scope: !1995, file: !7, line: 819, type: !13, align: 4)
!1995 = distinct !DILexicalBlock(scope: !1993, file: !7, line: 819, column: 5)
!1996 = !DILocalVariable(name: "result", scope: !1997, file: !7, line: 820, type: !13, align: 4)
!1997 = distinct !DILexicalBlock(scope: !1995, file: !7, line: 820, column: 5)
!1998 = !DILocation(line: 816, column: 31, scope: !1986)
!1999 = !DILocation(line: 816, column: 9, scope: !1989)
!2000 = !DILocation(line: 817, column: 30, scope: !1989)
!2001 = !DILocation(line: 817, column: 9, scope: !1991)
!2002 = !DILocation(line: 818, column: 30, scope: !1991)
!2003 = !DILocation(line: 818, column: 9, scope: !1993)
!2004 = !DILocation(line: 819, column: 38, scope: !1993)
!2005 = !DILocation(line: 819, column: 9, scope: !1995)
!2006 = !DILocation(line: 820, column: 18, scope: !1995)
!2007 = !DILocation(line: 820, column: 9, scope: !1997)
!2008 = !DILocation(line: 821, column: 5, scope: !1997)
!2009 = !DILocation(line: 822, column: 2, scope: !1986)
!2010 = distinct !DISubprogram(name: "run_test_80", scope: !8, file: !7, line: 825, type: !112, scopeLine: 825, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !2011)
!2011 = !{!2012, !2014, !2016, !2018, !2020}
!2012 = !DILocalVariable(name: "blocksize", scope: !2013, file: !7, line: 826, type: !13, align: 4)
!2013 = distinct !DILexicalBlock(scope: !2010, file: !7, line: 826, column: 5)
!2014 = !DILocalVariable(name: "channels", scope: !2015, file: !7, line: 827, type: !13, align: 4)
!2015 = distinct !DILexicalBlock(scope: !2013, file: !7, line: 827, column: 5)
!2016 = !DILocalVariable(name: "bitdepth", scope: !2017, file: !7, line: 828, type: !13, align: 4)
!2017 = distinct !DILexicalBlock(scope: !2015, file: !7, line: 828, column: 5)
!2018 = !DILocalVariable(name: "expected_returns", scope: !2019, file: !7, line: 829, type: !13, align: 4)
!2019 = distinct !DILexicalBlock(scope: !2017, file: !7, line: 829, column: 5)
!2020 = !DILocalVariable(name: "result", scope: !2021, file: !7, line: 830, type: !13, align: 4)
!2021 = distinct !DILexicalBlock(scope: !2019, file: !7, line: 830, column: 5)
!2022 = !DILocation(line: 826, column: 31, scope: !2010)
!2023 = !DILocation(line: 826, column: 9, scope: !2013)
!2024 = !DILocation(line: 827, column: 30, scope: !2013)
!2025 = !DILocation(line: 827, column: 9, scope: !2015)
!2026 = !DILocation(line: 828, column: 30, scope: !2015)
!2027 = !DILocation(line: 828, column: 9, scope: !2017)
!2028 = !DILocation(line: 829, column: 38, scope: !2017)
!2029 = !DILocation(line: 829, column: 9, scope: !2019)
!2030 = !DILocation(line: 830, column: 18, scope: !2019)
!2031 = !DILocation(line: 830, column: 9, scope: !2021)
!2032 = !DILocation(line: 831, column: 5, scope: !2021)
!2033 = !DILocation(line: 832, column: 2, scope: !2010)
!2034 = distinct !DISubprogram(name: "run_test_81", scope: !8, file: !7, line: 835, type: !112, scopeLine: 835, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !2035)
!2035 = !{!2036, !2038, !2040, !2042, !2044}
!2036 = !DILocalVariable(name: "blocksize", scope: !2037, file: !7, line: 836, type: !13, align: 4)
!2037 = distinct !DILexicalBlock(scope: !2034, file: !7, line: 836, column: 5)
!2038 = !DILocalVariable(name: "channels", scope: !2039, file: !7, line: 837, type: !13, align: 4)
!2039 = distinct !DILexicalBlock(scope: !2037, file: !7, line: 837, column: 5)
!2040 = !DILocalVariable(name: "bitdepth", scope: !2041, file: !7, line: 838, type: !13, align: 4)
!2041 = distinct !DILexicalBlock(scope: !2039, file: !7, line: 838, column: 5)
!2042 = !DILocalVariable(name: "expected_returns", scope: !2043, file: !7, line: 839, type: !13, align: 4)
!2043 = distinct !DILexicalBlock(scope: !2041, file: !7, line: 839, column: 5)
!2044 = !DILocalVariable(name: "result", scope: !2045, file: !7, line: 840, type: !13, align: 4)
!2045 = distinct !DILexicalBlock(scope: !2043, file: !7, line: 840, column: 5)
!2046 = !DILocation(line: 836, column: 31, scope: !2034)
!2047 = !DILocation(line: 836, column: 9, scope: !2037)
!2048 = !DILocation(line: 837, column: 30, scope: !2037)
!2049 = !DILocation(line: 837, column: 9, scope: !2039)
!2050 = !DILocation(line: 838, column: 30, scope: !2039)
!2051 = !DILocation(line: 838, column: 9, scope: !2041)
!2052 = !DILocation(line: 839, column: 38, scope: !2041)
!2053 = !DILocation(line: 839, column: 9, scope: !2043)
!2054 = !DILocation(line: 840, column: 18, scope: !2043)
!2055 = !DILocation(line: 840, column: 9, scope: !2045)
!2056 = !DILocation(line: 841, column: 5, scope: !2045)
!2057 = !DILocation(line: 842, column: 2, scope: !2034)
!2058 = distinct !DISubprogram(name: "run_test_82", scope: !8, file: !7, line: 845, type: !112, scopeLine: 845, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !2059)
!2059 = !{!2060, !2062, !2064, !2066, !2068}
!2060 = !DILocalVariable(name: "blocksize", scope: !2061, file: !7, line: 846, type: !13, align: 4)
!2061 = distinct !DILexicalBlock(scope: !2058, file: !7, line: 846, column: 5)
!2062 = !DILocalVariable(name: "channels", scope: !2063, file: !7, line: 847, type: !13, align: 4)
!2063 = distinct !DILexicalBlock(scope: !2061, file: !7, line: 847, column: 5)
!2064 = !DILocalVariable(name: "bitdepth", scope: !2065, file: !7, line: 848, type: !13, align: 4)
!2065 = distinct !DILexicalBlock(scope: !2063, file: !7, line: 848, column: 5)
!2066 = !DILocalVariable(name: "expected_returns", scope: !2067, file: !7, line: 849, type: !13, align: 4)
!2067 = distinct !DILexicalBlock(scope: !2065, file: !7, line: 849, column: 5)
!2068 = !DILocalVariable(name: "result", scope: !2069, file: !7, line: 850, type: !13, align: 4)
!2069 = distinct !DILexicalBlock(scope: !2067, file: !7, line: 850, column: 5)
!2070 = !DILocation(line: 846, column: 31, scope: !2058)
!2071 = !DILocation(line: 846, column: 9, scope: !2061)
!2072 = !DILocation(line: 847, column: 30, scope: !2061)
!2073 = !DILocation(line: 847, column: 9, scope: !2063)
!2074 = !DILocation(line: 848, column: 30, scope: !2063)
!2075 = !DILocation(line: 848, column: 9, scope: !2065)
!2076 = !DILocation(line: 849, column: 38, scope: !2065)
!2077 = !DILocation(line: 849, column: 9, scope: !2067)
!2078 = !DILocation(line: 850, column: 18, scope: !2067)
!2079 = !DILocation(line: 850, column: 9, scope: !2069)
!2080 = !DILocation(line: 851, column: 5, scope: !2069)
!2081 = !DILocation(line: 852, column: 2, scope: !2058)
!2082 = distinct !DISubprogram(name: "run_test_83", scope: !8, file: !7, line: 855, type: !112, scopeLine: 855, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !2083)
!2083 = !{!2084, !2086, !2088, !2090, !2092}
!2084 = !DILocalVariable(name: "blocksize", scope: !2085, file: !7, line: 856, type: !13, align: 4)
!2085 = distinct !DILexicalBlock(scope: !2082, file: !7, line: 856, column: 5)
!2086 = !DILocalVariable(name: "channels", scope: !2087, file: !7, line: 857, type: !13, align: 4)
!2087 = distinct !DILexicalBlock(scope: !2085, file: !7, line: 857, column: 5)
!2088 = !DILocalVariable(name: "bitdepth", scope: !2089, file: !7, line: 858, type: !13, align: 4)
!2089 = distinct !DILexicalBlock(scope: !2087, file: !7, line: 858, column: 5)
!2090 = !DILocalVariable(name: "expected_returns", scope: !2091, file: !7, line: 859, type: !13, align: 4)
!2091 = distinct !DILexicalBlock(scope: !2089, file: !7, line: 859, column: 5)
!2092 = !DILocalVariable(name: "result", scope: !2093, file: !7, line: 860, type: !13, align: 4)
!2093 = distinct !DILexicalBlock(scope: !2091, file: !7, line: 860, column: 5)
!2094 = !DILocation(line: 856, column: 31, scope: !2082)
!2095 = !DILocation(line: 856, column: 9, scope: !2085)
!2096 = !DILocation(line: 857, column: 30, scope: !2085)
!2097 = !DILocation(line: 857, column: 9, scope: !2087)
!2098 = !DILocation(line: 858, column: 30, scope: !2087)
!2099 = !DILocation(line: 858, column: 9, scope: !2089)
!2100 = !DILocation(line: 859, column: 38, scope: !2089)
!2101 = !DILocation(line: 859, column: 9, scope: !2091)
!2102 = !DILocation(line: 860, column: 18, scope: !2091)
!2103 = !DILocation(line: 860, column: 9, scope: !2093)
!2104 = !DILocation(line: 861, column: 5, scope: !2093)
!2105 = !DILocation(line: 862, column: 2, scope: !2082)
!2106 = distinct !DISubprogram(name: "run_test_84", scope: !8, file: !7, line: 865, type: !112, scopeLine: 865, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !2107)
!2107 = !{!2108, !2110, !2112, !2114, !2116}
!2108 = !DILocalVariable(name: "blocksize", scope: !2109, file: !7, line: 866, type: !13, align: 4)
!2109 = distinct !DILexicalBlock(scope: !2106, file: !7, line: 866, column: 5)
!2110 = !DILocalVariable(name: "channels", scope: !2111, file: !7, line: 867, type: !13, align: 4)
!2111 = distinct !DILexicalBlock(scope: !2109, file: !7, line: 867, column: 5)
!2112 = !DILocalVariable(name: "bitdepth", scope: !2113, file: !7, line: 868, type: !13, align: 4)
!2113 = distinct !DILexicalBlock(scope: !2111, file: !7, line: 868, column: 5)
!2114 = !DILocalVariable(name: "expected_returns", scope: !2115, file: !7, line: 869, type: !13, align: 4)
!2115 = distinct !DILexicalBlock(scope: !2113, file: !7, line: 869, column: 5)
!2116 = !DILocalVariable(name: "result", scope: !2117, file: !7, line: 870, type: !13, align: 4)
!2117 = distinct !DILexicalBlock(scope: !2115, file: !7, line: 870, column: 5)
!2118 = !DILocation(line: 866, column: 31, scope: !2106)
!2119 = !DILocation(line: 866, column: 9, scope: !2109)
!2120 = !DILocation(line: 867, column: 30, scope: !2109)
!2121 = !DILocation(line: 867, column: 9, scope: !2111)
!2122 = !DILocation(line: 868, column: 30, scope: !2111)
!2123 = !DILocation(line: 868, column: 9, scope: !2113)
!2124 = !DILocation(line: 869, column: 38, scope: !2113)
!2125 = !DILocation(line: 869, column: 9, scope: !2115)
!2126 = !DILocation(line: 870, column: 18, scope: !2115)
!2127 = !DILocation(line: 870, column: 9, scope: !2117)
!2128 = !DILocation(line: 871, column: 5, scope: !2117)
!2129 = !DILocation(line: 872, column: 2, scope: !2106)
!2130 = distinct !DISubprogram(name: "run_test_85", scope: !8, file: !7, line: 875, type: !112, scopeLine: 875, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !18, retainedNodes: !2131)
!2131 = !{!2132, !2134, !2136, !2138, !2140}
!2132 = !DILocalVariable(name: "blocksize", scope: !2133, file: !7, line: 876, type: !13, align: 4)
!2133 = distinct !DILexicalBlock(scope: !2130, file: !7, line: 876, column: 5)
!2134 = !DILocalVariable(name: "channels", scope: !2135, file: !7, line: 877, type: !13, align: 4)
!2135 = distinct !DILexicalBlock(scope: !2133, file: !7, line: 877, column: 5)
!2136 = !DILocalVariable(name: "bitdepth", scope: !2137, file: !7, line: 878, type: !13, align: 4)
!2137 = distinct !DILexicalBlock(scope: !2135, file: !7, line: 878, column: 5)
!2138 = !DILocalVariable(name: "expected_returns", scope: !2139, file: !7, line: 879, type: !13, align: 4)
!2139 = distinct !DILexicalBlock(scope: !2137, file: !7, line: 879, column: 5)
!2140 = !DILocalVariable(name: "result", scope: !2141, file: !7, line: 880, type: !13, align: 4)
!2141 = distinct !DILexicalBlock(scope: !2139, file: !7, line: 880, column: 5)
!2142 = !DILocation(line: 876, column: 31, scope: !2130)
!2143 = !DILocation(line: 876, column: 9, scope: !2133)
!2144 = !DILocation(line: 877, column: 30, scope: !2133)
!2145 = !DILocation(line: 877, column: 9, scope: !2135)
!2146 = !DILocation(line: 878, column: 30, scope: !2135)
!2147 = !DILocation(line: 878, column: 9, scope: !2137)
!2148 = !DILocation(line: 879, column: 38, scope: !2137)
!2149 = !DILocation(line: 879, column: 9, scope: !2139)
!2150 = !DILocation(line: 880, column: 18, scope: !2139)
!2151 = !DILocation(line: 880, column: 9, scope: !2141)
!2152 = !DILocation(line: 881, column: 5, scope: !2141)
!2153 = !DILocation(line: 882, column: 2, scope: !2130)
