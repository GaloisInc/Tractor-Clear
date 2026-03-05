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
; ASSERT EQ: i1 1 = call i1 @run_test_76()
; ASSERT EQ: i1 1 = call i1 @run_test_77()
; ASSERT EQ: i1 1 = call i1 @run_test_78()
; ASSERT EQ: i1 1 = call i1 @run_test_79()
; ASSERT EQ: i1 1 = call i1 @run_test_80()
; ASSERT EQ: i1 1 = call i1 @run_test_81()
; ASSERT EQ: i1 1 = call i1 @run_test_82()
; ASSERT EQ: i1 1 = call i1 @run_test_83()
; ASSERT EQ: i1 1 = call i1 @run_test_84()
; ASSERT EQ: i1 1 = call i1 @run_test_85()
; ASSERT EQ: i1 1 = call i1 @run_test_86()
; ASSERT EQ: i1 1 = call i1 @run_test_87()
; ASSERT EQ: i1 1 = call i1 @run_test_88()
; ASSERT EQ: i1 1 = call i1 @run_test_89()
; ASSERT EQ: i1 1 = call i1 @run_test_90()
; ASSERT EQ: i1 1 = call i1 @run_test_91()
; ASSERT EQ: i1 1 = call i1 @run_test_92()
; ASSERT EQ: i1 1 = call i1 @run_test_93()
; ASSERT EQ: i1 1 = call i1 @run_test_94()
; ASSERT EQ: i1 1 = call i1 @run_test_95()
; ASSERT EQ: i1 1 = call i1 @run_test_96()
; ASSERT EQ: i1 1 = call i1 @run_test_97()
; ASSERT EQ: i1 1 = call i1 @run_test_98()
; ASSERT EQ: i1 1 = call i1 @run_test_99()
; ASSERT EQ: i1 1 = call i1 @run_test_100()
; ASSERT EQ: i1 1 = call i1 @run_test_101()
; ASSERT EQ: i1 1 = call i1 @run_test_102()
; ASSERT EQ: i1 1 = call i1 @run_test_103()
; ASSERT EQ: i1 1 = call i1 @run_test_104()
; ASSERT EQ: i1 1 = call i1 @run_test_105()
; ASSERT EQ: i1 1 = call i1 @run_test_106()
; ASSERT EQ: i1 1 = call i1 @run_test_107()
; ASSERT EQ: i1 1 = call i1 @run_test_110()
; ASSERT EQ: i1 1 = call i1 @run_test_111()
; ASSERT EQ: i1 1 = call i1 @run_test_112()
; ASSERT EQ: i1 1 = call i1 @run_test_113()
; ASSERT EQ: i1 1 = call i1 @run_test_115()
; ASSERT EQ: i1 1 = call i1 @run_test_117()
; ASSERT EQ: i1 1 = call i1 @run_test_118()
; ASSERT EQ: i1 1 = call i1 @run_test_119()
; ASSERT EQ: i1 1 = call i1 @run_test_120()
; ASSERT EQ: i1 1 = call i1 @run_test_121()

@alloc_f5ffd2fd1476bab43ad89fb40c72d0c5 = private unnamed_addr constant <{ [10 x i8] }> <{ [10 x i8] c"src/lib.rs" }>, align 1
@alloc_5a44d35f368e79c164956e755c90cc1b = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00q\00\00\00\0B\00\00\00" }>, align 8
@alloc_27c80d29d3f8db09f3235c215be69187 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00s\00\00\003\00\00\00" }>, align 8
@str.0 = internal constant [33 x i8] c"attempt to subtract with overflow"
@alloc_203b4e6b94f95b2201832b00fe551dd3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00p\00\00\00\0C\00\00\00" }>, align 8
@str.1 = internal constant [33 x i8] c"attempt to multiply with overflow"
@_ZN15hdr_bitrate_lib3src3lib11hdr_bitrate8halfrate17h00488c57c5b8dadbE = internal global <{ [90 x i8] }> <{ [90 x i8] c"\00\04\08\0C\10\14\18\1C (08@HP\00\04\08\0C\10\14\18\1C (08@HP\00\10\18\1C (08@HPX`p\80\00\10\14\18\1C (08@P`p\80\A0\00\10\18\1C (08@P`p\80\A0\C0\00\10 0@P`p\80\90\A0\B0\C0\D0\E0" }>, align 1, !dbg !0

; Function Attrs: nonlazybind uwtable
define i32 @hdr_bitrate(ptr %h) unnamed_addr #0 !dbg !24 {
start:
  %h.dbg.spill = alloca ptr, align 8
  store ptr %h, ptr %h.dbg.spill, align 8
    #dbg_declare(ptr %h.dbg.spill, !30, !DIExpression(), !32)
  %0 = call i32 @_ZN15hdr_bitrate_lib3src3lib11hdr_bitrate17hb6022324fb5a1cdfE(ptr %h), !dbg !33
  ret i32 %0, !dbg !34
}

; Function Attrs: nonlazybind uwtable
define internal i32 @_ZN15hdr_bitrate_lib3src3lib11hdr_bitrate17hb6022324fb5a1cdfE(ptr %h) unnamed_addr #0 !dbg !35 {
start:
  %0 = alloca ptr, align 8
  %count.dbg.spill.i7 = alloca i64, align 8
  %self.dbg.spill.i8 = alloca ptr, align 8
  %1 = alloca ptr, align 8
  %count.dbg.spill.i5 = alloca i64, align 8
  %self.dbg.spill.i6 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %count.dbg.spill.i = alloca i64, align 8
  %self.dbg.spill.i = alloca ptr, align 8
  %h.dbg.spill = alloca ptr, align 8
  store ptr %h, ptr %h.dbg.spill, align 8
    #dbg_declare(ptr %h.dbg.spill, !37, !DIExpression(), !38)
  store ptr %h, ptr %self.dbg.spill.i8, align 8
    #dbg_declare(ptr %self.dbg.spill.i8, !39, !DIExpression(), !53)
  store i64 1, ptr %count.dbg.spill.i7, align 8
    #dbg_declare(ptr %count.dbg.spill.i7, !50, !DIExpression(), !55)
  %3 = getelementptr inbounds i8, ptr %h, i64 1, !dbg !56
  store ptr %3, ptr %0, align 8, !dbg !56
  %4 = load ptr, ptr %0, align 8, !dbg !56, !noundef !31
  %_12 = load i8, ptr %4, align 1, !dbg !57, !noundef !31
  %_11 = zext i8 %_12 to i32, !dbg !57
  %_10 = and i32 %_11, 8, !dbg !57
  %_9 = icmp ne i32 %_10, 0, !dbg !58
  %_8 = zext i1 %_9 to i32, !dbg !58
  %_7 = sext i32 %_8 to i64, !dbg !58
  %_17 = icmp ult i64 %_7, 2, !dbg !59
  %5 = call i1 @llvm.expect.i1(i1 %_17, i1 true), !dbg !59
  br i1 %5, label %bb2, label %panic, !dbg !59

bb2:                                              ; preds = %start
  store ptr %h, ptr %self.dbg.spill.i6, align 8
    #dbg_declare(ptr %self.dbg.spill.i6, !39, !DIExpression(), !60)
  store i64 1, ptr %count.dbg.spill.i5, align 8
    #dbg_declare(ptr %count.dbg.spill.i5, !50, !DIExpression(), !62)
  %6 = getelementptr inbounds i8, ptr %h, i64 1, !dbg !63
  store ptr %6, ptr %1, align 8, !dbg !63
  %7 = load ptr, ptr %1, align 8, !dbg !63, !noundef !31
  %_23 = load i8, ptr %7, align 1, !dbg !64, !noundef !31
  %_22 = zext i8 %_23 to i32, !dbg !64
  %_21 = ashr i32 %_22, 1, !dbg !64
  %_20 = and i32 %_21, 3, !dbg !65
  %8 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_20, i32 1), !dbg !66
  %_29.0 = extractvalue { i32, i1 } %8, 0, !dbg !66
  %_29.1 = extractvalue { i32, i1 } %8, 1, !dbg !66
  %9 = call i1 @llvm.expect.i1(i1 %_29.1, i1 false), !dbg !66
  br i1 %9, label %panic1, label %bb4, !dbg !66

panic:                                            ; preds = %start
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %_7, i64 2, ptr align 8 @alloc_5a44d35f368e79c164956e755c90cc1b) #4, !dbg !59
  unreachable, !dbg !59

bb4:                                              ; preds = %bb2
  %_18 = sext i32 %_29.0 to i64, !dbg !66
  %_31 = icmp ult i64 %_18, 3, !dbg !59
  %10 = call i1 @llvm.expect.i1(i1 %_31, i1 true), !dbg !59
  br i1 %10, label %bb5, label %panic2, !dbg !59

panic1:                                           ; preds = %bb2
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.0, i64 33, ptr align 8 @alloc_27c80d29d3f8db09f3235c215be69187) #4, !dbg !66
  unreachable, !dbg !66

bb5:                                              ; preds = %bb4
  store ptr %h, ptr %self.dbg.spill.i, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !39, !DIExpression(), !67)
  store i64 2, ptr %count.dbg.spill.i, align 8
    #dbg_declare(ptr %count.dbg.spill.i, !50, !DIExpression(), !69)
  %11 = getelementptr inbounds i8, ptr %h, i64 2, !dbg !70
  store ptr %11, ptr %2, align 8, !dbg !70
  %12 = load ptr, ptr %2, align 8, !dbg !70, !noundef !31
  %_35 = load i8, ptr %12, align 1, !dbg !71, !noundef !31
  %_34 = zext i8 %_35 to i32, !dbg !71
  %_33 = ashr i32 %_34, 4, !dbg !72
  %_32 = sext i32 %_33 to i64, !dbg !72
  %_40 = icmp ult i64 %_32, 15, !dbg !59
  %13 = call i1 @llvm.expect.i1(i1 %_40, i1 true), !dbg !59
  br i1 %13, label %bb7, label %panic3, !dbg !59

panic2:                                           ; preds = %bb4
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %_18, i64 3, ptr align 8 @alloc_5a44d35f368e79c164956e755c90cc1b) #4, !dbg !59
  unreachable, !dbg !59

bb7:                                              ; preds = %bb5
  %14 = getelementptr inbounds [2 x [3 x [15 x i8]]], ptr @_ZN15hdr_bitrate_lib3src3lib11hdr_bitrate8halfrate17h00488c57c5b8dadbE, i64 0, i64 %_7, !dbg !59
  %15 = getelementptr inbounds [3 x [15 x i8]], ptr %14, i64 0, i64 %_18, !dbg !59
  %16 = getelementptr inbounds [15 x i8], ptr %15, i64 0, i64 %_32, !dbg !59
  %_5 = load i8, ptr %16, align 1, !dbg !59, !noundef !31
  %_4 = zext i8 %_5 to i32, !dbg !59
  %17 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 2, i32 %_4), !dbg !73
  %_41.0 = extractvalue { i32, i1 } %17, 0, !dbg !73
  %_41.1 = extractvalue { i32, i1 } %17, 1, !dbg !73
  %18 = call i1 @llvm.expect.i1(i1 %_41.1, i1 false), !dbg !73
  br i1 %18, label %panic4, label %bb8, !dbg !73

panic3:                                           ; preds = %bb5
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %_32, i64 15, ptr align 8 @alloc_5a44d35f368e79c164956e755c90cc1b) #4, !dbg !59
  unreachable, !dbg !59

bb8:                                              ; preds = %bb7
  ret i32 %_41.0, !dbg !74

panic4:                                           ; preds = %bb7
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.1, i64 33, ptr align 8 @alloc_203b4e6b94f95b2201832b00fe551dd3) #4, !dbg !73
  unreachable, !dbg !73
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.expect.i1(i1, i1) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64, i64, ptr align 8) unnamed_addr #3

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1, i64, ptr align 8) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.smul.with.overflow.i32(i32, i32) #2

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_1() unnamed_addr #0 !dbg !75 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !80, !DIExpression(), !85)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !86
  store i8 0, ptr %0, align 1, !dbg !86
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !86
  store i8 2, ptr %1, align 1, !dbg !86
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !86
  store i8 0, ptr %2, align 1, !dbg !86
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !102)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !104
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !104
    #dbg_declare(ptr %result.dbg.spill, !83, !DIExpression(), !105)
  %4 = icmp eq i32 %result, 0, !dbg !106
  ret i1 %4, !dbg !107
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_2() unnamed_addr #0 !dbg !108 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !110, !DIExpression(), !114)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !115
  store i8 0, ptr %0, align 1, !dbg !115
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !115
  store i8 2, ptr %1, align 1, !dbg !115
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !115
  store i8 16, ptr %2, align 1, !dbg !115
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !116)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !118
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !118
    #dbg_declare(ptr %result.dbg.spill, !112, !DIExpression(), !119)
  %4 = icmp eq i32 %result, 8, !dbg !120
  ret i1 %4, !dbg !121
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_3() unnamed_addr #0 !dbg !122 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !124, !DIExpression(), !128)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !129
  store i8 0, ptr %0, align 1, !dbg !129
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !129
  store i8 2, ptr %1, align 1, !dbg !129
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !129
  store i8 32, ptr %2, align 1, !dbg !129
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !130)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !132
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !132
    #dbg_declare(ptr %result.dbg.spill, !126, !DIExpression(), !133)
  %4 = icmp eq i32 %result, 16, !dbg !134
  ret i1 %4, !dbg !135
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_4() unnamed_addr #0 !dbg !136 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !138, !DIExpression(), !142)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !143
  store i8 0, ptr %0, align 1, !dbg !143
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !143
  store i8 2, ptr %1, align 1, !dbg !143
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !143
  store i8 48, ptr %2, align 1, !dbg !143
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !144)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !146
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !146
    #dbg_declare(ptr %result.dbg.spill, !140, !DIExpression(), !147)
  %4 = icmp eq i32 %result, 24, !dbg !148
  ret i1 %4, !dbg !149
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_5() unnamed_addr #0 !dbg !150 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !152, !DIExpression(), !156)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !157
  store i8 0, ptr %0, align 1, !dbg !157
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !157
  store i8 2, ptr %1, align 1, !dbg !157
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !157
  store i8 64, ptr %2, align 1, !dbg !157
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !158)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !160
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !160
    #dbg_declare(ptr %result.dbg.spill, !154, !DIExpression(), !161)
  %4 = icmp eq i32 %result, 32, !dbg !162
  ret i1 %4, !dbg !163
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_6() unnamed_addr #0 !dbg !164 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !166, !DIExpression(), !170)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !171
  store i8 0, ptr %0, align 1, !dbg !171
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !171
  store i8 2, ptr %1, align 1, !dbg !171
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !171
  store i8 80, ptr %2, align 1, !dbg !171
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !172)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !174
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !174
    #dbg_declare(ptr %result.dbg.spill, !168, !DIExpression(), !175)
  %4 = icmp eq i32 %result, 40, !dbg !176
  ret i1 %4, !dbg !177
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_7() unnamed_addr #0 !dbg !178 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !180, !DIExpression(), !184)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !185
  store i8 0, ptr %0, align 1, !dbg !185
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !185
  store i8 2, ptr %1, align 1, !dbg !185
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !185
  store i8 96, ptr %2, align 1, !dbg !185
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !186)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !188
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !188
    #dbg_declare(ptr %result.dbg.spill, !182, !DIExpression(), !189)
  %4 = icmp eq i32 %result, 48, !dbg !190
  ret i1 %4, !dbg !191
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_8() unnamed_addr #0 !dbg !192 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !194, !DIExpression(), !198)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !199
  store i8 0, ptr %0, align 1, !dbg !199
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !199
  store i8 2, ptr %1, align 1, !dbg !199
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !199
  store i8 112, ptr %2, align 1, !dbg !199
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !200)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !202
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !202
    #dbg_declare(ptr %result.dbg.spill, !196, !DIExpression(), !203)
  %4 = icmp eq i32 %result, 56, !dbg !204
  ret i1 %4, !dbg !205
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_9() unnamed_addr #0 !dbg !206 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !208, !DIExpression(), !212)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !213
  store i8 0, ptr %0, align 1, !dbg !213
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !213
  store i8 2, ptr %1, align 1, !dbg !213
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !213
  store i8 -128, ptr %2, align 1, !dbg !213
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !214)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !216
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !216
    #dbg_declare(ptr %result.dbg.spill, !210, !DIExpression(), !217)
  %4 = icmp eq i32 %result, 64, !dbg !218
  ret i1 %4, !dbg !219
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_10() unnamed_addr #0 !dbg !220 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !222, !DIExpression(), !226)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !227
  store i8 0, ptr %0, align 1, !dbg !227
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !227
  store i8 2, ptr %1, align 1, !dbg !227
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !227
  store i8 -112, ptr %2, align 1, !dbg !227
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !228)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !230
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !230
    #dbg_declare(ptr %result.dbg.spill, !224, !DIExpression(), !231)
  %4 = icmp eq i32 %result, 80, !dbg !232
  ret i1 %4, !dbg !233
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_11() unnamed_addr #0 !dbg !234 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !236, !DIExpression(), !240)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !241
  store i8 0, ptr %0, align 1, !dbg !241
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !241
  store i8 2, ptr %1, align 1, !dbg !241
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !241
  store i8 -96, ptr %2, align 1, !dbg !241
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !242)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !244
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !244
    #dbg_declare(ptr %result.dbg.spill, !238, !DIExpression(), !245)
  %4 = icmp eq i32 %result, 96, !dbg !246
  ret i1 %4, !dbg !247
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_12() unnamed_addr #0 !dbg !248 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !250, !DIExpression(), !254)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !255
  store i8 0, ptr %0, align 1, !dbg !255
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !255
  store i8 2, ptr %1, align 1, !dbg !255
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !255
  store i8 -80, ptr %2, align 1, !dbg !255
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !256)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !258
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !258
    #dbg_declare(ptr %result.dbg.spill, !252, !DIExpression(), !259)
  %4 = icmp eq i32 %result, 112, !dbg !260
  ret i1 %4, !dbg !261
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_13() unnamed_addr #0 !dbg !262 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !264, !DIExpression(), !268)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !269
  store i8 0, ptr %0, align 1, !dbg !269
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !269
  store i8 2, ptr %1, align 1, !dbg !269
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !269
  store i8 -64, ptr %2, align 1, !dbg !269
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !270)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !272
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !272
    #dbg_declare(ptr %result.dbg.spill, !266, !DIExpression(), !273)
  %4 = icmp eq i32 %result, 128, !dbg !274
  ret i1 %4, !dbg !275
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_14() unnamed_addr #0 !dbg !276 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !278, !DIExpression(), !282)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !283
  store i8 0, ptr %0, align 1, !dbg !283
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !283
  store i8 2, ptr %1, align 1, !dbg !283
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !283
  store i8 -48, ptr %2, align 1, !dbg !283
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !284)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !286
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !286
    #dbg_declare(ptr %result.dbg.spill, !280, !DIExpression(), !287)
  %4 = icmp eq i32 %result, 144, !dbg !288
  ret i1 %4, !dbg !289
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_15() unnamed_addr #0 !dbg !290 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !292, !DIExpression(), !296)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !297
  store i8 0, ptr %0, align 1, !dbg !297
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !297
  store i8 2, ptr %1, align 1, !dbg !297
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !297
  store i8 -32, ptr %2, align 1, !dbg !297
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !298)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !300
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !300
    #dbg_declare(ptr %result.dbg.spill, !294, !DIExpression(), !301)
  %4 = icmp eq i32 %result, 160, !dbg !302
  ret i1 %4, !dbg !303
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_16() unnamed_addr #0 !dbg !304 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !306, !DIExpression(), !310)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !311
  store i8 0, ptr %0, align 1, !dbg !311
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !311
  store i8 2, ptr %1, align 1, !dbg !311
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !311
  store i8 -16, ptr %2, align 1, !dbg !311
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !312)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !314
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !314
    #dbg_declare(ptr %result.dbg.spill, !308, !DIExpression(), !315)
  %4 = icmp eq i32 %result, 0, !dbg !316
  ret i1 %4, !dbg !317
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_17() unnamed_addr #0 !dbg !318 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !320, !DIExpression(), !324)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !325
  store i8 0, ptr %0, align 1, !dbg !325
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !325
  store i8 4, ptr %1, align 1, !dbg !325
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !325
  store i8 0, ptr %2, align 1, !dbg !325
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !326)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !328
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !328
    #dbg_declare(ptr %result.dbg.spill, !322, !DIExpression(), !329)
  %4 = icmp eq i32 %result, 0, !dbg !330
  ret i1 %4, !dbg !331
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_18() unnamed_addr #0 !dbg !332 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !334, !DIExpression(), !338)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !339
  store i8 0, ptr %0, align 1, !dbg !339
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !339
  store i8 4, ptr %1, align 1, !dbg !339
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !339
  store i8 16, ptr %2, align 1, !dbg !339
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !340)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !342
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !342
    #dbg_declare(ptr %result.dbg.spill, !336, !DIExpression(), !343)
  %4 = icmp eq i32 %result, 8, !dbg !344
  ret i1 %4, !dbg !345
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_19() unnamed_addr #0 !dbg !346 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !348, !DIExpression(), !352)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !353
  store i8 0, ptr %0, align 1, !dbg !353
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !353
  store i8 4, ptr %1, align 1, !dbg !353
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !353
  store i8 32, ptr %2, align 1, !dbg !353
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !354)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !356
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !356
    #dbg_declare(ptr %result.dbg.spill, !350, !DIExpression(), !357)
  %4 = icmp eq i32 %result, 16, !dbg !358
  ret i1 %4, !dbg !359
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_20() unnamed_addr #0 !dbg !360 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !362, !DIExpression(), !366)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !367
  store i8 0, ptr %0, align 1, !dbg !367
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !367
  store i8 4, ptr %1, align 1, !dbg !367
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !367
  store i8 48, ptr %2, align 1, !dbg !367
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !368)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !370
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !370
    #dbg_declare(ptr %result.dbg.spill, !364, !DIExpression(), !371)
  %4 = icmp eq i32 %result, 24, !dbg !372
  ret i1 %4, !dbg !373
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_21() unnamed_addr #0 !dbg !374 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !376, !DIExpression(), !380)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !381
  store i8 0, ptr %0, align 1, !dbg !381
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !381
  store i8 4, ptr %1, align 1, !dbg !381
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !381
  store i8 64, ptr %2, align 1, !dbg !381
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !382)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !384
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !384
    #dbg_declare(ptr %result.dbg.spill, !378, !DIExpression(), !385)
  %4 = icmp eq i32 %result, 32, !dbg !386
  ret i1 %4, !dbg !387
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_22() unnamed_addr #0 !dbg !388 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !390, !DIExpression(), !394)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !395
  store i8 0, ptr %0, align 1, !dbg !395
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !395
  store i8 4, ptr %1, align 1, !dbg !395
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !395
  store i8 80, ptr %2, align 1, !dbg !395
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !396)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !398
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !398
    #dbg_declare(ptr %result.dbg.spill, !392, !DIExpression(), !399)
  %4 = icmp eq i32 %result, 40, !dbg !400
  ret i1 %4, !dbg !401
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_23() unnamed_addr #0 !dbg !402 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !404, !DIExpression(), !408)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !409
  store i8 0, ptr %0, align 1, !dbg !409
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !409
  store i8 4, ptr %1, align 1, !dbg !409
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !409
  store i8 96, ptr %2, align 1, !dbg !409
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !410)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !412
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !412
    #dbg_declare(ptr %result.dbg.spill, !406, !DIExpression(), !413)
  %4 = icmp eq i32 %result, 48, !dbg !414
  ret i1 %4, !dbg !415
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_24() unnamed_addr #0 !dbg !416 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !418, !DIExpression(), !422)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !423
  store i8 0, ptr %0, align 1, !dbg !423
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !423
  store i8 4, ptr %1, align 1, !dbg !423
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !423
  store i8 112, ptr %2, align 1, !dbg !423
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !424)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !426
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !426
    #dbg_declare(ptr %result.dbg.spill, !420, !DIExpression(), !427)
  %4 = icmp eq i32 %result, 56, !dbg !428
  ret i1 %4, !dbg !429
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_25() unnamed_addr #0 !dbg !430 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !432, !DIExpression(), !436)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !437
  store i8 0, ptr %0, align 1, !dbg !437
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !437
  store i8 4, ptr %1, align 1, !dbg !437
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !437
  store i8 -128, ptr %2, align 1, !dbg !437
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !438)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !440
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !440
    #dbg_declare(ptr %result.dbg.spill, !434, !DIExpression(), !441)
  %4 = icmp eq i32 %result, 64, !dbg !442
  ret i1 %4, !dbg !443
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_26() unnamed_addr #0 !dbg !444 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !446, !DIExpression(), !450)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !451
  store i8 0, ptr %0, align 1, !dbg !451
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !451
  store i8 4, ptr %1, align 1, !dbg !451
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !451
  store i8 -112, ptr %2, align 1, !dbg !451
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !452)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !454
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !454
    #dbg_declare(ptr %result.dbg.spill, !448, !DIExpression(), !455)
  %4 = icmp eq i32 %result, 80, !dbg !456
  ret i1 %4, !dbg !457
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_27() unnamed_addr #0 !dbg !458 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !460, !DIExpression(), !464)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !465
  store i8 0, ptr %0, align 1, !dbg !465
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !465
  store i8 4, ptr %1, align 1, !dbg !465
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !465
  store i8 -96, ptr %2, align 1, !dbg !465
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !466)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !468
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !468
    #dbg_declare(ptr %result.dbg.spill, !462, !DIExpression(), !469)
  %4 = icmp eq i32 %result, 96, !dbg !470
  ret i1 %4, !dbg !471
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_28() unnamed_addr #0 !dbg !472 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !474, !DIExpression(), !478)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !479
  store i8 0, ptr %0, align 1, !dbg !479
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !479
  store i8 4, ptr %1, align 1, !dbg !479
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !479
  store i8 -80, ptr %2, align 1, !dbg !479
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !480)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !482
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !482
    #dbg_declare(ptr %result.dbg.spill, !476, !DIExpression(), !483)
  %4 = icmp eq i32 %result, 112, !dbg !484
  ret i1 %4, !dbg !485
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_29() unnamed_addr #0 !dbg !486 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !488, !DIExpression(), !492)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !493
  store i8 0, ptr %0, align 1, !dbg !493
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !493
  store i8 4, ptr %1, align 1, !dbg !493
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !493
  store i8 -64, ptr %2, align 1, !dbg !493
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !494)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !496
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !496
    #dbg_declare(ptr %result.dbg.spill, !490, !DIExpression(), !497)
  %4 = icmp eq i32 %result, 128, !dbg !498
  ret i1 %4, !dbg !499
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_30() unnamed_addr #0 !dbg !500 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !502, !DIExpression(), !506)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !507
  store i8 0, ptr %0, align 1, !dbg !507
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !507
  store i8 4, ptr %1, align 1, !dbg !507
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !507
  store i8 -48, ptr %2, align 1, !dbg !507
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !508)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !510
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !510
    #dbg_declare(ptr %result.dbg.spill, !504, !DIExpression(), !511)
  %4 = icmp eq i32 %result, 144, !dbg !512
  ret i1 %4, !dbg !513
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_31() unnamed_addr #0 !dbg !514 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !516, !DIExpression(), !520)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !521
  store i8 0, ptr %0, align 1, !dbg !521
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !521
  store i8 4, ptr %1, align 1, !dbg !521
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !521
  store i8 -32, ptr %2, align 1, !dbg !521
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !522)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !524
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !524
    #dbg_declare(ptr %result.dbg.spill, !518, !DIExpression(), !525)
  %4 = icmp eq i32 %result, 160, !dbg !526
  ret i1 %4, !dbg !527
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_32() unnamed_addr #0 !dbg !528 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !530, !DIExpression(), !534)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !535
  store i8 0, ptr %0, align 1, !dbg !535
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !535
  store i8 4, ptr %1, align 1, !dbg !535
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !535
  store i8 -16, ptr %2, align 1, !dbg !535
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !536)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !538
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !538
    #dbg_declare(ptr %result.dbg.spill, !532, !DIExpression(), !539)
  %4 = icmp eq i32 %result, 0, !dbg !540
  ret i1 %4, !dbg !541
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_33() unnamed_addr #0 !dbg !542 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !544, !DIExpression(), !548)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !549
  store i8 0, ptr %0, align 1, !dbg !549
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !549
  store i8 6, ptr %1, align 1, !dbg !549
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !549
  store i8 0, ptr %2, align 1, !dbg !549
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !550)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !552
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !552
    #dbg_declare(ptr %result.dbg.spill, !546, !DIExpression(), !553)
  %4 = icmp eq i32 %result, 0, !dbg !554
  ret i1 %4, !dbg !555
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_34() unnamed_addr #0 !dbg !556 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !558, !DIExpression(), !562)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !563
  store i8 0, ptr %0, align 1, !dbg !563
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !563
  store i8 6, ptr %1, align 1, !dbg !563
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !563
  store i8 16, ptr %2, align 1, !dbg !563
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !564)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !566
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !566
    #dbg_declare(ptr %result.dbg.spill, !560, !DIExpression(), !567)
  %4 = icmp eq i32 %result, 32, !dbg !568
  ret i1 %4, !dbg !569
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_35() unnamed_addr #0 !dbg !570 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !572, !DIExpression(), !576)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !577
  store i8 0, ptr %0, align 1, !dbg !577
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !577
  store i8 6, ptr %1, align 1, !dbg !577
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !577
  store i8 32, ptr %2, align 1, !dbg !577
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !578)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !580
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !580
    #dbg_declare(ptr %result.dbg.spill, !574, !DIExpression(), !581)
  %4 = icmp eq i32 %result, 48, !dbg !582
  ret i1 %4, !dbg !583
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_36() unnamed_addr #0 !dbg !584 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !586, !DIExpression(), !590)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !591
  store i8 0, ptr %0, align 1, !dbg !591
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !591
  store i8 6, ptr %1, align 1, !dbg !591
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !591
  store i8 48, ptr %2, align 1, !dbg !591
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !592)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !594
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !594
    #dbg_declare(ptr %result.dbg.spill, !588, !DIExpression(), !595)
  %4 = icmp eq i32 %result, 56, !dbg !596
  ret i1 %4, !dbg !597
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_37() unnamed_addr #0 !dbg !598 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !600, !DIExpression(), !604)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !605
  store i8 0, ptr %0, align 1, !dbg !605
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !605
  store i8 6, ptr %1, align 1, !dbg !605
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !605
  store i8 64, ptr %2, align 1, !dbg !605
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !606)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !608
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !608
    #dbg_declare(ptr %result.dbg.spill, !602, !DIExpression(), !609)
  %4 = icmp eq i32 %result, 64, !dbg !610
  ret i1 %4, !dbg !611
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_38() unnamed_addr #0 !dbg !612 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !614, !DIExpression(), !618)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !619
  store i8 0, ptr %0, align 1, !dbg !619
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !619
  store i8 6, ptr %1, align 1, !dbg !619
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !619
  store i8 80, ptr %2, align 1, !dbg !619
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !620)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !622
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !622
    #dbg_declare(ptr %result.dbg.spill, !616, !DIExpression(), !623)
  %4 = icmp eq i32 %result, 80, !dbg !624
  ret i1 %4, !dbg !625
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_39() unnamed_addr #0 !dbg !626 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !628, !DIExpression(), !632)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !633
  store i8 0, ptr %0, align 1, !dbg !633
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !633
  store i8 6, ptr %1, align 1, !dbg !633
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !633
  store i8 96, ptr %2, align 1, !dbg !633
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !634)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !636
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !636
    #dbg_declare(ptr %result.dbg.spill, !630, !DIExpression(), !637)
  %4 = icmp eq i32 %result, 96, !dbg !638
  ret i1 %4, !dbg !639
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_40() unnamed_addr #0 !dbg !640 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !642, !DIExpression(), !646)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !647
  store i8 0, ptr %0, align 1, !dbg !647
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !647
  store i8 6, ptr %1, align 1, !dbg !647
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !647
  store i8 112, ptr %2, align 1, !dbg !647
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !648)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !650
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !650
    #dbg_declare(ptr %result.dbg.spill, !644, !DIExpression(), !651)
  %4 = icmp eq i32 %result, 112, !dbg !652
  ret i1 %4, !dbg !653
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_41() unnamed_addr #0 !dbg !654 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !656, !DIExpression(), !660)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !661
  store i8 0, ptr %0, align 1, !dbg !661
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !661
  store i8 6, ptr %1, align 1, !dbg !661
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !661
  store i8 -128, ptr %2, align 1, !dbg !661
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !662)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !664
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !664
    #dbg_declare(ptr %result.dbg.spill, !658, !DIExpression(), !665)
  %4 = icmp eq i32 %result, 128, !dbg !666
  ret i1 %4, !dbg !667
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_42() unnamed_addr #0 !dbg !668 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !670, !DIExpression(), !674)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !675
  store i8 0, ptr %0, align 1, !dbg !675
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !675
  store i8 6, ptr %1, align 1, !dbg !675
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !675
  store i8 -112, ptr %2, align 1, !dbg !675
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !676)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !678
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !678
    #dbg_declare(ptr %result.dbg.spill, !672, !DIExpression(), !679)
  %4 = icmp eq i32 %result, 144, !dbg !680
  ret i1 %4, !dbg !681
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_43() unnamed_addr #0 !dbg !682 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !684, !DIExpression(), !688)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !689
  store i8 0, ptr %0, align 1, !dbg !689
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !689
  store i8 6, ptr %1, align 1, !dbg !689
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !689
  store i8 -96, ptr %2, align 1, !dbg !689
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !690)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !692
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !692
    #dbg_declare(ptr %result.dbg.spill, !686, !DIExpression(), !693)
  %4 = icmp eq i32 %result, 160, !dbg !694
  ret i1 %4, !dbg !695
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_44() unnamed_addr #0 !dbg !696 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !698, !DIExpression(), !702)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !703
  store i8 0, ptr %0, align 1, !dbg !703
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !703
  store i8 6, ptr %1, align 1, !dbg !703
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !703
  store i8 -80, ptr %2, align 1, !dbg !703
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !704)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !706
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !706
    #dbg_declare(ptr %result.dbg.spill, !700, !DIExpression(), !707)
  %4 = icmp eq i32 %result, 176, !dbg !708
  ret i1 %4, !dbg !709
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_45() unnamed_addr #0 !dbg !710 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !712, !DIExpression(), !716)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !717
  store i8 0, ptr %0, align 1, !dbg !717
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !717
  store i8 6, ptr %1, align 1, !dbg !717
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !717
  store i8 -64, ptr %2, align 1, !dbg !717
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !718)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !720
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !720
    #dbg_declare(ptr %result.dbg.spill, !714, !DIExpression(), !721)
  %4 = icmp eq i32 %result, 192, !dbg !722
  ret i1 %4, !dbg !723
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_46() unnamed_addr #0 !dbg !724 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !726, !DIExpression(), !730)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !731
  store i8 0, ptr %0, align 1, !dbg !731
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !731
  store i8 6, ptr %1, align 1, !dbg !731
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !731
  store i8 -48, ptr %2, align 1, !dbg !731
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !732)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !734
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !734
    #dbg_declare(ptr %result.dbg.spill, !728, !DIExpression(), !735)
  %4 = icmp eq i32 %result, 224, !dbg !736
  ret i1 %4, !dbg !737
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_47() unnamed_addr #0 !dbg !738 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !740, !DIExpression(), !744)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !745
  store i8 0, ptr %0, align 1, !dbg !745
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !745
  store i8 6, ptr %1, align 1, !dbg !745
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !745
  store i8 -32, ptr %2, align 1, !dbg !745
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !746)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !748
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !748
    #dbg_declare(ptr %result.dbg.spill, !742, !DIExpression(), !749)
  %4 = icmp eq i32 %result, 256, !dbg !750
  ret i1 %4, !dbg !751
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_48() unnamed_addr #0 !dbg !752 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !754, !DIExpression(), !758)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !759
  store i8 0, ptr %0, align 1, !dbg !759
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !759
  store i8 6, ptr %1, align 1, !dbg !759
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !759
  store i8 -16, ptr %2, align 1, !dbg !759
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !760)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !762
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !762
    #dbg_declare(ptr %result.dbg.spill, !756, !DIExpression(), !763)
  %4 = icmp eq i32 %result, 0, !dbg !764
  ret i1 %4, !dbg !765
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_49() unnamed_addr #0 !dbg !766 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !768, !DIExpression(), !772)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !773
  store i8 0, ptr %0, align 1, !dbg !773
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !773
  store i8 10, ptr %1, align 1, !dbg !773
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !773
  store i8 0, ptr %2, align 1, !dbg !773
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !774)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !776
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !776
    #dbg_declare(ptr %result.dbg.spill, !770, !DIExpression(), !777)
  %4 = icmp eq i32 %result, 0, !dbg !778
  ret i1 %4, !dbg !779
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_50() unnamed_addr #0 !dbg !780 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !782, !DIExpression(), !786)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !787
  store i8 0, ptr %0, align 1, !dbg !787
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !787
  store i8 10, ptr %1, align 1, !dbg !787
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !787
  store i8 16, ptr %2, align 1, !dbg !787
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !788)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !790
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !790
    #dbg_declare(ptr %result.dbg.spill, !784, !DIExpression(), !791)
  %4 = icmp eq i32 %result, 32, !dbg !792
  ret i1 %4, !dbg !793
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_51() unnamed_addr #0 !dbg !794 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !796, !DIExpression(), !800)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !801
  store i8 0, ptr %0, align 1, !dbg !801
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !801
  store i8 10, ptr %1, align 1, !dbg !801
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !801
  store i8 32, ptr %2, align 1, !dbg !801
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !802)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !804
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !804
    #dbg_declare(ptr %result.dbg.spill, !798, !DIExpression(), !805)
  %4 = icmp eq i32 %result, 40, !dbg !806
  ret i1 %4, !dbg !807
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_52() unnamed_addr #0 !dbg !808 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !810, !DIExpression(), !814)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !815
  store i8 0, ptr %0, align 1, !dbg !815
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !815
  store i8 10, ptr %1, align 1, !dbg !815
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !815
  store i8 48, ptr %2, align 1, !dbg !815
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !816)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !818
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !818
    #dbg_declare(ptr %result.dbg.spill, !812, !DIExpression(), !819)
  %4 = icmp eq i32 %result, 48, !dbg !820
  ret i1 %4, !dbg !821
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_53() unnamed_addr #0 !dbg !822 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !824, !DIExpression(), !828)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !829
  store i8 0, ptr %0, align 1, !dbg !829
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !829
  store i8 10, ptr %1, align 1, !dbg !829
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !829
  store i8 64, ptr %2, align 1, !dbg !829
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !830)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !832
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !832
    #dbg_declare(ptr %result.dbg.spill, !826, !DIExpression(), !833)
  %4 = icmp eq i32 %result, 56, !dbg !834
  ret i1 %4, !dbg !835
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_54() unnamed_addr #0 !dbg !836 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !838, !DIExpression(), !842)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !843
  store i8 0, ptr %0, align 1, !dbg !843
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !843
  store i8 10, ptr %1, align 1, !dbg !843
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !843
  store i8 80, ptr %2, align 1, !dbg !843
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !844)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !846
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !846
    #dbg_declare(ptr %result.dbg.spill, !840, !DIExpression(), !847)
  %4 = icmp eq i32 %result, 64, !dbg !848
  ret i1 %4, !dbg !849
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_55() unnamed_addr #0 !dbg !850 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !852, !DIExpression(), !856)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !857
  store i8 0, ptr %0, align 1, !dbg !857
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !857
  store i8 10, ptr %1, align 1, !dbg !857
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !857
  store i8 96, ptr %2, align 1, !dbg !857
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !858)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !860
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !860
    #dbg_declare(ptr %result.dbg.spill, !854, !DIExpression(), !861)
  %4 = icmp eq i32 %result, 80, !dbg !862
  ret i1 %4, !dbg !863
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_56() unnamed_addr #0 !dbg !864 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !866, !DIExpression(), !870)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !871
  store i8 0, ptr %0, align 1, !dbg !871
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !871
  store i8 10, ptr %1, align 1, !dbg !871
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !871
  store i8 112, ptr %2, align 1, !dbg !871
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !872)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !874
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !874
    #dbg_declare(ptr %result.dbg.spill, !868, !DIExpression(), !875)
  %4 = icmp eq i32 %result, 96, !dbg !876
  ret i1 %4, !dbg !877
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_57() unnamed_addr #0 !dbg !878 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !880, !DIExpression(), !884)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !885
  store i8 0, ptr %0, align 1, !dbg !885
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !885
  store i8 10, ptr %1, align 1, !dbg !885
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !885
  store i8 -128, ptr %2, align 1, !dbg !885
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !886)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !888
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !888
    #dbg_declare(ptr %result.dbg.spill, !882, !DIExpression(), !889)
  %4 = icmp eq i32 %result, 112, !dbg !890
  ret i1 %4, !dbg !891
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_58() unnamed_addr #0 !dbg !892 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !894, !DIExpression(), !898)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !899
  store i8 0, ptr %0, align 1, !dbg !899
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !899
  store i8 10, ptr %1, align 1, !dbg !899
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !899
  store i8 -112, ptr %2, align 1, !dbg !899
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !900)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !902
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !902
    #dbg_declare(ptr %result.dbg.spill, !896, !DIExpression(), !903)
  %4 = icmp eq i32 %result, 128, !dbg !904
  ret i1 %4, !dbg !905
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_59() unnamed_addr #0 !dbg !906 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !908, !DIExpression(), !912)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !913
  store i8 0, ptr %0, align 1, !dbg !913
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !913
  store i8 10, ptr %1, align 1, !dbg !913
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !913
  store i8 -96, ptr %2, align 1, !dbg !913
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !914)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !916
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !916
    #dbg_declare(ptr %result.dbg.spill, !910, !DIExpression(), !917)
  %4 = icmp eq i32 %result, 160, !dbg !918
  ret i1 %4, !dbg !919
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_60() unnamed_addr #0 !dbg !920 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !922, !DIExpression(), !926)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !927
  store i8 0, ptr %0, align 1, !dbg !927
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !927
  store i8 10, ptr %1, align 1, !dbg !927
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !927
  store i8 -80, ptr %2, align 1, !dbg !927
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !928)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !930
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !930
    #dbg_declare(ptr %result.dbg.spill, !924, !DIExpression(), !931)
  %4 = icmp eq i32 %result, 192, !dbg !932
  ret i1 %4, !dbg !933
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_61() unnamed_addr #0 !dbg !934 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !936, !DIExpression(), !940)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !941
  store i8 0, ptr %0, align 1, !dbg !941
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !941
  store i8 10, ptr %1, align 1, !dbg !941
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !941
  store i8 -64, ptr %2, align 1, !dbg !941
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !942)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !944
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !944
    #dbg_declare(ptr %result.dbg.spill, !938, !DIExpression(), !945)
  %4 = icmp eq i32 %result, 224, !dbg !946
  ret i1 %4, !dbg !947
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_62() unnamed_addr #0 !dbg !948 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !950, !DIExpression(), !954)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !955
  store i8 0, ptr %0, align 1, !dbg !955
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !955
  store i8 10, ptr %1, align 1, !dbg !955
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !955
  store i8 -48, ptr %2, align 1, !dbg !955
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !956)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !958
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !958
    #dbg_declare(ptr %result.dbg.spill, !952, !DIExpression(), !959)
  %4 = icmp eq i32 %result, 256, !dbg !960
  ret i1 %4, !dbg !961
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_63() unnamed_addr #0 !dbg !962 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !964, !DIExpression(), !968)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !969
  store i8 0, ptr %0, align 1, !dbg !969
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !969
  store i8 10, ptr %1, align 1, !dbg !969
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !969
  store i8 -32, ptr %2, align 1, !dbg !969
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !970)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !972
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !972
    #dbg_declare(ptr %result.dbg.spill, !966, !DIExpression(), !973)
  %4 = icmp eq i32 %result, 320, !dbg !974
  ret i1 %4, !dbg !975
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_64() unnamed_addr #0 !dbg !976 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !978, !DIExpression(), !982)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !983
  store i8 0, ptr %0, align 1, !dbg !983
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !983
  store i8 10, ptr %1, align 1, !dbg !983
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !983
  store i8 -16, ptr %2, align 1, !dbg !983
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !984)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !986
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !986
    #dbg_declare(ptr %result.dbg.spill, !980, !DIExpression(), !987)
  %4 = icmp eq i32 %result, 0, !dbg !988
  ret i1 %4, !dbg !989
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_65() unnamed_addr #0 !dbg !990 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !992, !DIExpression(), !996)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !997
  store i8 0, ptr %0, align 1, !dbg !997
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !997
  store i8 12, ptr %1, align 1, !dbg !997
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !997
  store i8 0, ptr %2, align 1, !dbg !997
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !998)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !1000
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1000
    #dbg_declare(ptr %result.dbg.spill, !994, !DIExpression(), !1001)
  %4 = icmp eq i32 %result, 0, !dbg !1002
  ret i1 %4, !dbg !1003
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_66() unnamed_addr #0 !dbg !1004 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !1006, !DIExpression(), !1010)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !1011
  store i8 0, ptr %0, align 1, !dbg !1011
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !1011
  store i8 12, ptr %1, align 1, !dbg !1011
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !1011
  store i8 16, ptr %2, align 1, !dbg !1011
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !1012)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !1014
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1014
    #dbg_declare(ptr %result.dbg.spill, !1008, !DIExpression(), !1015)
  %4 = icmp eq i32 %result, 32, !dbg !1016
  ret i1 %4, !dbg !1017
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_67() unnamed_addr #0 !dbg !1018 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !1020, !DIExpression(), !1024)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !1025
  store i8 0, ptr %0, align 1, !dbg !1025
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !1025
  store i8 12, ptr %1, align 1, !dbg !1025
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !1025
  store i8 32, ptr %2, align 1, !dbg !1025
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !1026)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !1028
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1028
    #dbg_declare(ptr %result.dbg.spill, !1022, !DIExpression(), !1029)
  %4 = icmp eq i32 %result, 48, !dbg !1030
  ret i1 %4, !dbg !1031
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_68() unnamed_addr #0 !dbg !1032 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !1034, !DIExpression(), !1038)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !1039
  store i8 0, ptr %0, align 1, !dbg !1039
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !1039
  store i8 12, ptr %1, align 1, !dbg !1039
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !1039
  store i8 48, ptr %2, align 1, !dbg !1039
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !1040)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !1042
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1042
    #dbg_declare(ptr %result.dbg.spill, !1036, !DIExpression(), !1043)
  %4 = icmp eq i32 %result, 56, !dbg !1044
  ret i1 %4, !dbg !1045
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_69() unnamed_addr #0 !dbg !1046 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !1048, !DIExpression(), !1052)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !1053
  store i8 0, ptr %0, align 1, !dbg !1053
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !1053
  store i8 12, ptr %1, align 1, !dbg !1053
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !1053
  store i8 64, ptr %2, align 1, !dbg !1053
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !1054)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !1056
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1056
    #dbg_declare(ptr %result.dbg.spill, !1050, !DIExpression(), !1057)
  %4 = icmp eq i32 %result, 64, !dbg !1058
  ret i1 %4, !dbg !1059
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_70() unnamed_addr #0 !dbg !1060 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !1062, !DIExpression(), !1066)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !1067
  store i8 0, ptr %0, align 1, !dbg !1067
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !1067
  store i8 12, ptr %1, align 1, !dbg !1067
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !1067
  store i8 80, ptr %2, align 1, !dbg !1067
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !1068)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !1070
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1070
    #dbg_declare(ptr %result.dbg.spill, !1064, !DIExpression(), !1071)
  %4 = icmp eq i32 %result, 80, !dbg !1072
  ret i1 %4, !dbg !1073
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_71() unnamed_addr #0 !dbg !1074 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !1076, !DIExpression(), !1080)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !1081
  store i8 0, ptr %0, align 1, !dbg !1081
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !1081
  store i8 12, ptr %1, align 1, !dbg !1081
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !1081
  store i8 96, ptr %2, align 1, !dbg !1081
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !1082)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !1084
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1084
    #dbg_declare(ptr %result.dbg.spill, !1078, !DIExpression(), !1085)
  %4 = icmp eq i32 %result, 96, !dbg !1086
  ret i1 %4, !dbg !1087
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_72() unnamed_addr #0 !dbg !1088 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !1090, !DIExpression(), !1094)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !1095
  store i8 0, ptr %0, align 1, !dbg !1095
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !1095
  store i8 12, ptr %1, align 1, !dbg !1095
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !1095
  store i8 112, ptr %2, align 1, !dbg !1095
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !1096)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !1098
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1098
    #dbg_declare(ptr %result.dbg.spill, !1092, !DIExpression(), !1099)
  %4 = icmp eq i32 %result, 112, !dbg !1100
  ret i1 %4, !dbg !1101
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_73() unnamed_addr #0 !dbg !1102 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !1104, !DIExpression(), !1108)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !1109
  store i8 0, ptr %0, align 1, !dbg !1109
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !1109
  store i8 12, ptr %1, align 1, !dbg !1109
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !1109
  store i8 -128, ptr %2, align 1, !dbg !1109
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !1110)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !1112
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1112
    #dbg_declare(ptr %result.dbg.spill, !1106, !DIExpression(), !1113)
  %4 = icmp eq i32 %result, 128, !dbg !1114
  ret i1 %4, !dbg !1115
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_74() unnamed_addr #0 !dbg !1116 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !1118, !DIExpression(), !1122)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !1123
  store i8 0, ptr %0, align 1, !dbg !1123
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !1123
  store i8 12, ptr %1, align 1, !dbg !1123
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !1123
  store i8 -112, ptr %2, align 1, !dbg !1123
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !1124)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !1126
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1126
    #dbg_declare(ptr %result.dbg.spill, !1120, !DIExpression(), !1127)
  %4 = icmp eq i32 %result, 160, !dbg !1128
  ret i1 %4, !dbg !1129
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_75() unnamed_addr #0 !dbg !1130 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !1132, !DIExpression(), !1136)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !1137
  store i8 0, ptr %0, align 1, !dbg !1137
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !1137
  store i8 12, ptr %1, align 1, !dbg !1137
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !1137
  store i8 -96, ptr %2, align 1, !dbg !1137
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !1138)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !1140
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1140
    #dbg_declare(ptr %result.dbg.spill, !1134, !DIExpression(), !1141)
  %4 = icmp eq i32 %result, 192, !dbg !1142
  ret i1 %4, !dbg !1143
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_76() unnamed_addr #0 !dbg !1144 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !1146, !DIExpression(), !1150)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !1151
  store i8 0, ptr %0, align 1, !dbg !1151
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !1151
  store i8 12, ptr %1, align 1, !dbg !1151
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !1151
  store i8 -80, ptr %2, align 1, !dbg !1151
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !1152)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !1154
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1154
    #dbg_declare(ptr %result.dbg.spill, !1148, !DIExpression(), !1155)
  %4 = icmp eq i32 %result, 224, !dbg !1156
  ret i1 %4, !dbg !1157
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_77() unnamed_addr #0 !dbg !1158 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !1160, !DIExpression(), !1164)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !1165
  store i8 0, ptr %0, align 1, !dbg !1165
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !1165
  store i8 12, ptr %1, align 1, !dbg !1165
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !1165
  store i8 -64, ptr %2, align 1, !dbg !1165
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !1166)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !1168
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1168
    #dbg_declare(ptr %result.dbg.spill, !1162, !DIExpression(), !1169)
  %4 = icmp eq i32 %result, 256, !dbg !1170
  ret i1 %4, !dbg !1171
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_78() unnamed_addr #0 !dbg !1172 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !1174, !DIExpression(), !1178)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !1179
  store i8 0, ptr %0, align 1, !dbg !1179
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !1179
  store i8 12, ptr %1, align 1, !dbg !1179
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !1179
  store i8 -48, ptr %2, align 1, !dbg !1179
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !1180)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !1182
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1182
    #dbg_declare(ptr %result.dbg.spill, !1176, !DIExpression(), !1183)
  %4 = icmp eq i32 %result, 320, !dbg !1184
  ret i1 %4, !dbg !1185
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_79() unnamed_addr #0 !dbg !1186 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !1188, !DIExpression(), !1192)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !1193
  store i8 0, ptr %0, align 1, !dbg !1193
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !1193
  store i8 12, ptr %1, align 1, !dbg !1193
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !1193
  store i8 -32, ptr %2, align 1, !dbg !1193
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !1194)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !1196
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1196
    #dbg_declare(ptr %result.dbg.spill, !1190, !DIExpression(), !1197)
  %4 = icmp eq i32 %result, 384, !dbg !1198
  ret i1 %4, !dbg !1199
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_80() unnamed_addr #0 !dbg !1200 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !1202, !DIExpression(), !1206)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !1207
  store i8 0, ptr %0, align 1, !dbg !1207
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !1207
  store i8 12, ptr %1, align 1, !dbg !1207
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !1207
  store i8 -16, ptr %2, align 1, !dbg !1207
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !1208)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !1210
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1210
    #dbg_declare(ptr %result.dbg.spill, !1204, !DIExpression(), !1211)
  %4 = icmp eq i32 %result, 0, !dbg !1212
  ret i1 %4, !dbg !1213
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_81() unnamed_addr #0 !dbg !1214 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !1216, !DIExpression(), !1220)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !1221
  store i8 0, ptr %0, align 1, !dbg !1221
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !1221
  store i8 14, ptr %1, align 1, !dbg !1221
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !1221
  store i8 0, ptr %2, align 1, !dbg !1221
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !1222)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !1224
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1224
    #dbg_declare(ptr %result.dbg.spill, !1218, !DIExpression(), !1225)
  %4 = icmp eq i32 %result, 0, !dbg !1226
  ret i1 %4, !dbg !1227
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_82() unnamed_addr #0 !dbg !1228 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !1230, !DIExpression(), !1234)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !1235
  store i8 0, ptr %0, align 1, !dbg !1235
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !1235
  store i8 14, ptr %1, align 1, !dbg !1235
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !1235
  store i8 16, ptr %2, align 1, !dbg !1235
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !1236)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !1238
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1238
    #dbg_declare(ptr %result.dbg.spill, !1232, !DIExpression(), !1239)
  %4 = icmp eq i32 %result, 32, !dbg !1240
  ret i1 %4, !dbg !1241
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_83() unnamed_addr #0 !dbg !1242 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !1244, !DIExpression(), !1248)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !1249
  store i8 0, ptr %0, align 1, !dbg !1249
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !1249
  store i8 14, ptr %1, align 1, !dbg !1249
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !1249
  store i8 32, ptr %2, align 1, !dbg !1249
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !1250)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !1252
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1252
    #dbg_declare(ptr %result.dbg.spill, !1246, !DIExpression(), !1253)
  %4 = icmp eq i32 %result, 64, !dbg !1254
  ret i1 %4, !dbg !1255
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_84() unnamed_addr #0 !dbg !1256 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !1258, !DIExpression(), !1262)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !1263
  store i8 0, ptr %0, align 1, !dbg !1263
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !1263
  store i8 14, ptr %1, align 1, !dbg !1263
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !1263
  store i8 48, ptr %2, align 1, !dbg !1263
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !1264)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !1266
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1266
    #dbg_declare(ptr %result.dbg.spill, !1260, !DIExpression(), !1267)
  %4 = icmp eq i32 %result, 96, !dbg !1268
  ret i1 %4, !dbg !1269
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_85() unnamed_addr #0 !dbg !1270 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !1272, !DIExpression(), !1276)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !1277
  store i8 0, ptr %0, align 1, !dbg !1277
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !1277
  store i8 14, ptr %1, align 1, !dbg !1277
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !1277
  store i8 64, ptr %2, align 1, !dbg !1277
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !1278)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !1280
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1280
    #dbg_declare(ptr %result.dbg.spill, !1274, !DIExpression(), !1281)
  %4 = icmp eq i32 %result, 128, !dbg !1282
  ret i1 %4, !dbg !1283
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_86() unnamed_addr #0 !dbg !1284 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !1286, !DIExpression(), !1290)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !1291
  store i8 0, ptr %0, align 1, !dbg !1291
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !1291
  store i8 14, ptr %1, align 1, !dbg !1291
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !1291
  store i8 80, ptr %2, align 1, !dbg !1291
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !1292)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !1294
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1294
    #dbg_declare(ptr %result.dbg.spill, !1288, !DIExpression(), !1295)
  %4 = icmp eq i32 %result, 160, !dbg !1296
  ret i1 %4, !dbg !1297
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_87() unnamed_addr #0 !dbg !1298 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !1300, !DIExpression(), !1304)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !1305
  store i8 0, ptr %0, align 1, !dbg !1305
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !1305
  store i8 14, ptr %1, align 1, !dbg !1305
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !1305
  store i8 96, ptr %2, align 1, !dbg !1305
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !1306)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !1308
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1308
    #dbg_declare(ptr %result.dbg.spill, !1302, !DIExpression(), !1309)
  %4 = icmp eq i32 %result, 192, !dbg !1310
  ret i1 %4, !dbg !1311
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_88() unnamed_addr #0 !dbg !1312 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !1314, !DIExpression(), !1318)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !1319
  store i8 0, ptr %0, align 1, !dbg !1319
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !1319
  store i8 14, ptr %1, align 1, !dbg !1319
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !1319
  store i8 112, ptr %2, align 1, !dbg !1319
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !1320)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !1322
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1322
    #dbg_declare(ptr %result.dbg.spill, !1316, !DIExpression(), !1323)
  %4 = icmp eq i32 %result, 224, !dbg !1324
  ret i1 %4, !dbg !1325
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_89() unnamed_addr #0 !dbg !1326 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !1328, !DIExpression(), !1332)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !1333
  store i8 0, ptr %0, align 1, !dbg !1333
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !1333
  store i8 14, ptr %1, align 1, !dbg !1333
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !1333
  store i8 -128, ptr %2, align 1, !dbg !1333
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !1334)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !1336
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1336
    #dbg_declare(ptr %result.dbg.spill, !1330, !DIExpression(), !1337)
  %4 = icmp eq i32 %result, 256, !dbg !1338
  ret i1 %4, !dbg !1339
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_90() unnamed_addr #0 !dbg !1340 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !1342, !DIExpression(), !1346)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !1347
  store i8 0, ptr %0, align 1, !dbg !1347
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !1347
  store i8 14, ptr %1, align 1, !dbg !1347
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !1347
  store i8 -112, ptr %2, align 1, !dbg !1347
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !1348)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !1350
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1350
    #dbg_declare(ptr %result.dbg.spill, !1344, !DIExpression(), !1351)
  %4 = icmp eq i32 %result, 288, !dbg !1352
  ret i1 %4, !dbg !1353
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_91() unnamed_addr #0 !dbg !1354 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !1356, !DIExpression(), !1360)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !1361
  store i8 0, ptr %0, align 1, !dbg !1361
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !1361
  store i8 14, ptr %1, align 1, !dbg !1361
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !1361
  store i8 -96, ptr %2, align 1, !dbg !1361
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !1362)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !1364
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1364
    #dbg_declare(ptr %result.dbg.spill, !1358, !DIExpression(), !1365)
  %4 = icmp eq i32 %result, 320, !dbg !1366
  ret i1 %4, !dbg !1367
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_92() unnamed_addr #0 !dbg !1368 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !1370, !DIExpression(), !1374)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !1375
  store i8 0, ptr %0, align 1, !dbg !1375
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !1375
  store i8 14, ptr %1, align 1, !dbg !1375
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !1375
  store i8 -80, ptr %2, align 1, !dbg !1375
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !1376)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !1378
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1378
    #dbg_declare(ptr %result.dbg.spill, !1372, !DIExpression(), !1379)
  %4 = icmp eq i32 %result, 352, !dbg !1380
  ret i1 %4, !dbg !1381
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_93() unnamed_addr #0 !dbg !1382 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !1384, !DIExpression(), !1388)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !1389
  store i8 0, ptr %0, align 1, !dbg !1389
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !1389
  store i8 14, ptr %1, align 1, !dbg !1389
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !1389
  store i8 -64, ptr %2, align 1, !dbg !1389
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !1390)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !1392
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1392
    #dbg_declare(ptr %result.dbg.spill, !1386, !DIExpression(), !1393)
  %4 = icmp eq i32 %result, 384, !dbg !1394
  ret i1 %4, !dbg !1395
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_94() unnamed_addr #0 !dbg !1396 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !1398, !DIExpression(), !1402)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !1403
  store i8 0, ptr %0, align 1, !dbg !1403
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !1403
  store i8 14, ptr %1, align 1, !dbg !1403
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !1403
  store i8 -48, ptr %2, align 1, !dbg !1403
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !1404)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !1406
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1406
    #dbg_declare(ptr %result.dbg.spill, !1400, !DIExpression(), !1407)
  %4 = icmp eq i32 %result, 416, !dbg !1408
  ret i1 %4, !dbg !1409
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_95() unnamed_addr #0 !dbg !1410 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !1412, !DIExpression(), !1416)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !1417
  store i8 0, ptr %0, align 1, !dbg !1417
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !1417
  store i8 14, ptr %1, align 1, !dbg !1417
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !1417
  store i8 -32, ptr %2, align 1, !dbg !1417
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !1418)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !1420
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1420
    #dbg_declare(ptr %result.dbg.spill, !1414, !DIExpression(), !1421)
  %4 = icmp eq i32 %result, 448, !dbg !1422
  ret i1 %4, !dbg !1423
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_96() unnamed_addr #0 !dbg !1424 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !1426, !DIExpression(), !1430)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !1431
  store i8 0, ptr %0, align 1, !dbg !1431
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !1431
  store i8 14, ptr %1, align 1, !dbg !1431
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !1431
  store i8 -16, ptr %2, align 1, !dbg !1431
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !1432)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !1434
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1434
    #dbg_declare(ptr %result.dbg.spill, !1428, !DIExpression(), !1435)
  %4 = icmp eq i32 %result, 0, !dbg !1436
  ret i1 %4, !dbg !1437
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_97() unnamed_addr #0 !dbg !1438 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !1440, !DIExpression(), !1444)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !1445
  store i8 0, ptr %0, align 1, !dbg !1445
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !1445
  store i8 3, ptr %1, align 1, !dbg !1445
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !1445
  store i8 0, ptr %2, align 1, !dbg !1445
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !1446)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !1448
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1448
    #dbg_declare(ptr %result.dbg.spill, !1442, !DIExpression(), !1449)
  %4 = icmp eq i32 %result, 0, !dbg !1450
  ret i1 %4, !dbg !1451
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_98() unnamed_addr #0 !dbg !1452 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !1454, !DIExpression(), !1458)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !1459
  store i8 0, ptr %0, align 1, !dbg !1459
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !1459
  store i8 -126, ptr %1, align 1, !dbg !1459
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !1459
  store i8 0, ptr %2, align 1, !dbg !1459
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !1460)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !1462
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1462
    #dbg_declare(ptr %result.dbg.spill, !1456, !DIExpression(), !1463)
  %4 = icmp eq i32 %result, 0, !dbg !1464
  ret i1 %4, !dbg !1465
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_99() unnamed_addr #0 !dbg !1466 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !1468, !DIExpression(), !1472)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !1473
  store i8 0, ptr %0, align 1, !dbg !1473
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !1473
  store i8 2, ptr %1, align 1, !dbg !1473
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !1473
  store i8 15, ptr %2, align 1, !dbg !1473
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !1474)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !1476
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1476
    #dbg_declare(ptr %result.dbg.spill, !1470, !DIExpression(), !1477)
  %4 = icmp eq i32 %result, 0, !dbg !1478
  ret i1 %4, !dbg !1479
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_100() unnamed_addr #0 !dbg !1480 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !1482, !DIExpression(), !1486)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !1487
  store i8 0, ptr %0, align 1, !dbg !1487
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !1487
  store i8 2, ptr %1, align 1, !dbg !1487
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !1487
  store i8 31, ptr %2, align 1, !dbg !1487
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !1488)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !1490
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1490
    #dbg_declare(ptr %result.dbg.spill, !1484, !DIExpression(), !1491)
  %4 = icmp eq i32 %result, 8, !dbg !1492
  ret i1 %4, !dbg !1493
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_101() unnamed_addr #0 !dbg !1494 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !1496, !DIExpression(), !1500)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !1501
  store i8 0, ptr %0, align 1, !dbg !1501
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !1501
  store i8 -1, ptr %1, align 1, !dbg !1501
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !1501
  store i8 -1, ptr %2, align 1, !dbg !1501
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !1502)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !1504
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1504
    #dbg_declare(ptr %result.dbg.spill, !1498, !DIExpression(), !1505)
  %4 = icmp eq i32 %result, 0, !dbg !1506
  ret i1 %4, !dbg !1507
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_102() unnamed_addr #0 !dbg !1508 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !1510, !DIExpression(), !1514)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !1515
  store i8 0, ptr %0, align 1, !dbg !1515
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !1515
  store i8 2, ptr %1, align 1, !dbg !1515
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !1515
  store i8 0, ptr %2, align 1, !dbg !1515
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !1516)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !1518
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1518
    #dbg_declare(ptr %result.dbg.spill, !1512, !DIExpression(), !1519)
  %4 = icmp eq i32 %result, 0, !dbg !1520
  ret i1 %4, !dbg !1521
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_103() unnamed_addr #0 !dbg !1522 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !1524, !DIExpression(), !1528)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !1529
  store i8 0, ptr %0, align 1, !dbg !1529
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !1529
  store i8 2, ptr %1, align 1, !dbg !1529
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !1529
  store i8 0, ptr %2, align 1, !dbg !1529
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !1530)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !1532
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1532
    #dbg_declare(ptr %result.dbg.spill, !1526, !DIExpression(), !1533)
  %4 = icmp eq i32 %result, 0, !dbg !1534
  ret i1 %4, !dbg !1535
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_104() unnamed_addr #0 !dbg !1536 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !1538, !DIExpression(), !1542)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !1543
  store i8 0, ptr %0, align 1, !dbg !1543
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !1543
  store i8 2, ptr %1, align 1, !dbg !1543
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !1543
  store i8 16, ptr %2, align 1, !dbg !1543
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !1544)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !1546
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1546
    #dbg_declare(ptr %result.dbg.spill, !1540, !DIExpression(), !1547)
  %4 = icmp eq i32 %result, 8, !dbg !1548
  ret i1 %4, !dbg !1549
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_105() unnamed_addr #0 !dbg !1550 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !1552, !DIExpression(), !1556)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !1557
  store i8 0, ptr %0, align 1, !dbg !1557
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !1557
  store i8 2, ptr %1, align 1, !dbg !1557
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !1557
  store i8 -32, ptr %2, align 1, !dbg !1557
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !1558)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !1560
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1560
    #dbg_declare(ptr %result.dbg.spill, !1554, !DIExpression(), !1561)
  %4 = icmp eq i32 %result, 160, !dbg !1562
  ret i1 %4, !dbg !1563
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_106() unnamed_addr #0 !dbg !1564 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !1566, !DIExpression(), !1570)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !1571
  store i8 0, ptr %0, align 1, !dbg !1571
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !1571
  store i8 6, ptr %1, align 1, !dbg !1571
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !1571
  store i8 -32, ptr %2, align 1, !dbg !1571
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !1572)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !1574
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1574
    #dbg_declare(ptr %result.dbg.spill, !1568, !DIExpression(), !1575)
  %4 = icmp eq i32 %result, 256, !dbg !1576
  ret i1 %4, !dbg !1577
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_107() unnamed_addr #0 !dbg !1578 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !1580, !DIExpression(), !1584)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !1585
  store i8 0, ptr %0, align 1, !dbg !1585
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !1585
  store i8 14, ptr %1, align 1, !dbg !1585
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !1585
  store i8 -32, ptr %2, align 1, !dbg !1585
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !1586)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !1588
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1588
    #dbg_declare(ptr %result.dbg.spill, !1582, !DIExpression(), !1589)
  %4 = icmp eq i32 %result, 448, !dbg !1590
  ret i1 %4, !dbg !1591
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_110() unnamed_addr #0 !dbg !1592 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !1594, !DIExpression(), !1598)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !1599
  store i8 0, ptr %0, align 1, !dbg !1599
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !1599
  store i8 0, ptr %1, align 1, !dbg !1599
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !1599
  store i8 -16, ptr %2, align 1, !dbg !1599
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !1600)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !1602
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1602
    #dbg_declare(ptr %result.dbg.spill, !1596, !DIExpression(), !1603)
  %4 = icmp eq i32 %result, 0, !dbg !1604
  ret i1 %4, !dbg !1605
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_111() unnamed_addr #0 !dbg !1606 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !1608, !DIExpression(), !1612)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !1613
  store i8 0, ptr %0, align 1, !dbg !1613
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !1613
  store i8 8, ptr %1, align 1, !dbg !1613
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !1613
  store i8 0, ptr %2, align 1, !dbg !1613
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !1614)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !1616
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1616
    #dbg_declare(ptr %result.dbg.spill, !1610, !DIExpression(), !1617)
  %4 = icmp eq i32 %result, 0, !dbg !1618
  ret i1 %4, !dbg !1619
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_112() unnamed_addr #0 !dbg !1620 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !1622, !DIExpression(), !1626)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !1627
  store i8 0, ptr %0, align 1, !dbg !1627
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !1627
  store i8 8, ptr %1, align 1, !dbg !1627
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !1627
  store i8 16, ptr %2, align 1, !dbg !1627
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !1628)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !1630
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1630
    #dbg_declare(ptr %result.dbg.spill, !1624, !DIExpression(), !1631)
  %4 = icmp eq i32 %result, 32, !dbg !1632
  ret i1 %4, !dbg !1633
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_113() unnamed_addr #0 !dbg !1634 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !1636, !DIExpression(), !1640)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !1641
  store i8 0, ptr %0, align 1, !dbg !1641
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !1641
  store i8 8, ptr %1, align 1, !dbg !1641
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !1641
  store i8 -16, ptr %2, align 1, !dbg !1641
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !1642)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !1644
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1644
    #dbg_declare(ptr %result.dbg.spill, !1638, !DIExpression(), !1645)
  %4 = icmp eq i32 %result, 0, !dbg !1646
  ret i1 %4, !dbg !1647
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_115() unnamed_addr #0 !dbg !1648 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !1650, !DIExpression(), !1654)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !1655
  store i8 0, ptr %0, align 1, !dbg !1655
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !1655
  store i8 9, ptr %1, align 1, !dbg !1655
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !1655
  store i8 -96, ptr %2, align 1, !dbg !1655
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !1656)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !1658
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1658
    #dbg_declare(ptr %result.dbg.spill, !1652, !DIExpression(), !1659)
  %4 = icmp eq i32 %result, 160, !dbg !1660
  ret i1 %4, !dbg !1661
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_117() unnamed_addr #0 !dbg !1662 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !1664, !DIExpression(), !1668)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !1669
  store i8 0, ptr %0, align 1, !dbg !1669
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !1669
  store i8 -120, ptr %1, align 1, !dbg !1669
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !1669
  store i8 48, ptr %2, align 1, !dbg !1669
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !1670)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !1672
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1672
    #dbg_declare(ptr %result.dbg.spill, !1666, !DIExpression(), !1673)
  %4 = icmp eq i32 %result, 56, !dbg !1674
  ret i1 %4, !dbg !1675
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_118() unnamed_addr #0 !dbg !1676 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !1678, !DIExpression(), !1682)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !1683
  store i8 0, ptr %0, align 1, !dbg !1683
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !1683
  store i8 -14, ptr %1, align 1, !dbg !1683
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !1683
  store i8 15, ptr %2, align 1, !dbg !1683
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !1684)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !1686
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1686
    #dbg_declare(ptr %result.dbg.spill, !1680, !DIExpression(), !1687)
  %4 = icmp eq i32 %result, 0, !dbg !1688
  ret i1 %4, !dbg !1689
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_119() unnamed_addr #0 !dbg !1690 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !1692, !DIExpression(), !1696)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !1697
  store i8 0, ptr %0, align 1, !dbg !1697
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !1697
  store i8 118, ptr %1, align 1, !dbg !1697
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !1697
  store i8 -9, ptr %2, align 1, !dbg !1697
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !1698)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !1700
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1700
    #dbg_declare(ptr %result.dbg.spill, !1694, !DIExpression(), !1701)
  %4 = icmp eq i32 %result, 0, !dbg !1702
  ret i1 %4, !dbg !1703
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_120() unnamed_addr #0 !dbg !1704 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !1706, !DIExpression(), !1710)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !1711
  store i8 0, ptr %0, align 1, !dbg !1711
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !1711
  store i8 10, ptr %1, align 1, !dbg !1711
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !1711
  store i8 32, ptr %2, align 1, !dbg !1711
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !1712)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !1714
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1714
    #dbg_declare(ptr %result.dbg.spill, !1708, !DIExpression(), !1715)
  %4 = icmp eq i32 %result, 40, !dbg !1716
  ret i1 %4, !dbg !1717
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_121() unnamed_addr #0 !dbg !1718 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i32, align 4
  %h = alloca [3 x i8], align 1
    #dbg_declare(ptr %h, !1720, !DIExpression(), !1724)
  %0 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 0, !dbg !1725
  store i8 0, ptr %0, align 1, !dbg !1725
  %1 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 1, !dbg !1725
  store i8 2, ptr %1, align 1, !dbg !1725
  %2 = getelementptr inbounds [3 x i8], ptr %h, i64 0, i64 2, !dbg !1725
  store i8 32, ptr %2, align 1, !dbg !1725
  store ptr %h, ptr %self.dbg.spill.i, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 3, ptr %3, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !87, !DIExpression(), !1726)
  %result = call i32 @hdr_bitrate(ptr %h), !dbg !1728
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !1728
    #dbg_declare(ptr %result.dbg.spill, !1722, !DIExpression(), !1729)
  %4 = icmp eq i32 %result, 16, !dbg !1730
  ret i1 %4, !dbg !1731
}

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { noreturn }

!llvm.dbg.cu = !{!17}
!llvm.module.flags = !{!20, !21, !22, !23}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "halfrate", linkageName: "_ZN15hdr_bitrate_lib3src3lib11hdr_bitrate8halfrate17h00488c57c5b8dadbE", scope: !2, file: !6, line: 4, type: !7, isLocal: true, isDefinition: true, align: 8)
!2 = !DINamespace(name: "hdr_bitrate", scope: !3)
!3 = !DINamespace(name: "lib", scope: !4)
!4 = !DINamespace(name: "src", scope: !5)
!5 = !DINamespace(name: "hdr_bitrate_lib", scope: null)
!6 = !DIFile(filename: "src/lib.rs", directory: "/crisp-rust-outputs/B01_organic/hdr_bitrate_lib/translated_rust", checksumkind: CSK_MD5, checksum: "1b1e9f40d50b4bec5e2ae9caea3de1a0")
!7 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 720, align: 8, elements: !15)
!8 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 360, align: 8, elements: !13)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 120, align: 8, elements: !11)
!10 = !DIBasicType(name: "u8", size: 8, encoding: DW_ATE_unsigned)
!11 = !{!12}
!12 = !DISubrange(count: 15, lowerBound: 0)
!13 = !{!14}
!14 = !DISubrange(count: 3, lowerBound: 0)
!15 = !{!16}
!16 = !DISubrange(count: 2, lowerBound: 0)
!17 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !18, producer: "clang LLVM (rustc version 1.70.0-nightly (84dd17b56 2023-04-14))", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !19, splitDebugInlining: false)
!18 = !DIFile(filename: "lib.rs/@/2yac88846492a1wm", directory: "/crisp-rust-outputs/B01_organic/hdr_bitrate_lib/translated_rust")
!19 = !{!0}
!20 = !{i32 8, !"PIC Level", i32 2}
!21 = !{i32 2, !"RtLibUseGOT", i32 1}
!22 = !{i32 2, !"Dwarf Version", i32 4}
!23 = !{i32 2, !"Debug Info Version", i32 3}
!24 = distinct !DISubprogram(name: "hdr_bitrate_ffi", linkageName: "hdr_bitrate", scope: !3, file: !6, line: 127, type: !25, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !29)
!25 = !DISubroutineType(types: !26)
!26 = !{!27, !28}
!27 = !DIBasicType(name: "u32", size: 32, encoding: DW_ATE_unsigned)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const u8", baseType: !10, size: 64, align: 64, dwarfAddressSpace: 0)
!29 = !{!30}
!30 = !DILocalVariable(name: "h", arg: 1, scope: !24, file: !6, line: 127, type: !28)
!31 = !{}
!32 = !DILocation(line: 127, column: 42, scope: !24)
!33 = !DILocation(line: 128, column: 5, scope: !24)
!34 = !DILocation(line: 129, column: 2, scope: !24)
!35 = distinct !DISubprogram(name: "hdr_bitrate", linkageName: "_ZN15hdr_bitrate_lib3src3lib11hdr_bitrate17hb6022324fb5a1cdfE", scope: !3, file: !6, line: 3, type: !25, scopeLine: 3, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !36)
!36 = !{!37}
!37 = !DILocalVariable(name: "h", arg: 1, scope: !35, file: !6, line: 3, type: !28)
!38 = !DILocation(line: 3, column: 38, scope: !35)
!39 = !DILocalVariable(name: "self", arg: 1, scope: !40, file: !41, line: 460, type: !28)
!40 = distinct !DISubprogram(name: "offset<u8>", linkageName: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$6offset17he2713019c125eb6bE", scope: !42, file: !41, line: 460, type: !46, scopeLine: 460, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !17, templateParams: !51, retainedNodes: !49)
!41 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/ptr/const_ptr.rs", directory: "", checksumkind: CSK_MD5, checksum: "2a21946c6980740609ff35bdd2bfdb1c")
!42 = !DINamespace(name: "{impl#0}", scope: !43)
!43 = !DINamespace(name: "const_ptr", scope: !44)
!44 = !DINamespace(name: "ptr", scope: !45)
!45 = !DINamespace(name: "core", scope: null)
!46 = !DISubroutineType(types: !47)
!47 = !{!28, !28, !48}
!48 = !DIBasicType(name: "isize", size: 64, encoding: DW_ATE_signed)
!49 = !{!39, !50}
!50 = !DILocalVariable(name: "count", arg: 2, scope: !40, file: !41, line: 460, type: !48)
!51 = !{!52}
!52 = !DITemplateTypeParameter(name: "T", type: !10)
!53 = !DILocation(line: 460, column: 32, scope: !40, inlinedAt: !54)
!54 = distinct !DILocation(line: 113, column: 22, scope: !35)
!55 = !DILocation(line: 460, column: 38, scope: !40, inlinedAt: !54)
!56 = !DILocation(line: 465, column: 18, scope: !40, inlinedAt: !54)
!57 = !DILocation(line: 113, column: 21, scope: !35)
!58 = !DILocation(line: 113, column: 20, scope: !35)
!59 = !DILocation(line: 113, column: 11, scope: !35)
!60 = !DILocation(line: 460, column: 32, scope: !40, inlinedAt: !61)
!61 = distinct !DILocation(line: 115, column: 54, scope: !35)
!62 = !DILocation(line: 460, column: 38, scope: !40, inlinedAt: !61)
!63 = !DILocation(line: 465, column: 18, scope: !40, inlinedAt: !61)
!64 = !DILocation(line: 115, column: 53, scope: !35)
!65 = !DILocation(line: 115, column: 52, scope: !35)
!66 = !DILocation(line: 115, column: 51, scope: !35)
!67 = !DILocation(line: 460, column: 32, scope: !40, inlinedAt: !68)
!68 = distinct !DILocation(line: 120, column: 52, scope: !35)
!69 = !DILocation(line: 460, column: 38, scope: !40, inlinedAt: !68)
!70 = !DILocation(line: 465, column: 18, scope: !40, inlinedAt: !68)
!71 = !DILocation(line: 120, column: 51, scope: !35)
!72 = !DILocation(line: 120, column: 50, scope: !35)
!73 = !DILocation(line: 112, column: 12, scope: !35)
!74 = !DILocation(line: 125, column: 2, scope: !35)
!75 = distinct !DISubprogram(name: "run_test_1", scope: !3, file: !6, line: 132, type: !76, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !79)
!76 = !DISubroutineType(types: !77)
!77 = !{!78}
!78 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!79 = !{!80, !83}
!80 = !DILocalVariable(name: "h", scope: !81, file: !6, line: 133, type: !82, align: 1)
!81 = distinct !DILexicalBlock(scope: !75, file: !6, line: 133, column: 5)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 24, align: 8, elements: !13)
!83 = !DILocalVariable(name: "result", scope: !84, file: !6, line: 134, type: !27, align: 4)
!84 = distinct !DILexicalBlock(scope: !81, file: !6, line: 134, column: 5)
!85 = !DILocation(line: 133, column: 9, scope: !81)
!86 = !DILocation(line: 133, column: 22, scope: !75)
!87 = !DILocalVariable(name: "self", arg: 1, scope: !88, file: !89, line: 476, type: !94)
!88 = distinct !DISubprogram(name: "as_ptr<u8>", linkageName: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17hb77657a2f84cbb54E", scope: !90, file: !89, line: 476, type: !92, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !17, templateParams: !51, retainedNodes: !101)
!89 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/slice/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "0b3adda84e3d0ea3eafbebcfb4ca210d")
!90 = !DINamespace(name: "{impl#0}", scope: !91)
!91 = !DINamespace(name: "slice", scope: !45)
!92 = !DISubroutineType(types: !93)
!93 = !{!28, !94}
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "&[u8]", file: !95, size: 128, align: 64, elements: !96, templateParams: !31, identifier: "4f7d759e2003ffb713a77bd933fd0146")
!95 = !DIFile(filename: "<unknown>", directory: "")
!96 = !{!97, !99}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !94, file: !95, baseType: !98, size: 64, align: 64)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64, dwarfAddressSpace: 0)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !94, file: !95, baseType: !100, size: 64, align: 64, offset: 64)
!100 = !DIBasicType(name: "usize", size: 64, encoding: DW_ATE_unsigned)
!101 = !{!87}
!102 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !103)
!103 = distinct !DILocation(line: 134, column: 34, scope: !81)
!104 = !DILocation(line: 134, column: 18, scope: !81)
!105 = !DILocation(line: 134, column: 9, scope: !84)
!106 = !DILocation(line: 135, column: 5, scope: !84)
!107 = !DILocation(line: 136, column: 2, scope: !75)
!108 = distinct !DISubprogram(name: "run_test_2", scope: !3, file: !6, line: 139, type: !76, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !109)
!109 = !{!110, !112}
!110 = !DILocalVariable(name: "h", scope: !111, file: !6, line: 140, type: !82, align: 1)
!111 = distinct !DILexicalBlock(scope: !108, file: !6, line: 140, column: 5)
!112 = !DILocalVariable(name: "result", scope: !113, file: !6, line: 141, type: !27, align: 4)
!113 = distinct !DILexicalBlock(scope: !111, file: !6, line: 141, column: 5)
!114 = !DILocation(line: 140, column: 9, scope: !111)
!115 = !DILocation(line: 140, column: 22, scope: !108)
!116 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !117)
!117 = distinct !DILocation(line: 141, column: 34, scope: !111)
!118 = !DILocation(line: 141, column: 18, scope: !111)
!119 = !DILocation(line: 141, column: 9, scope: !113)
!120 = !DILocation(line: 142, column: 5, scope: !113)
!121 = !DILocation(line: 143, column: 2, scope: !108)
!122 = distinct !DISubprogram(name: "run_test_3", scope: !3, file: !6, line: 146, type: !76, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !123)
!123 = !{!124, !126}
!124 = !DILocalVariable(name: "h", scope: !125, file: !6, line: 147, type: !82, align: 1)
!125 = distinct !DILexicalBlock(scope: !122, file: !6, line: 147, column: 5)
!126 = !DILocalVariable(name: "result", scope: !127, file: !6, line: 148, type: !27, align: 4)
!127 = distinct !DILexicalBlock(scope: !125, file: !6, line: 148, column: 5)
!128 = !DILocation(line: 147, column: 9, scope: !125)
!129 = !DILocation(line: 147, column: 22, scope: !122)
!130 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !131)
!131 = distinct !DILocation(line: 148, column: 34, scope: !125)
!132 = !DILocation(line: 148, column: 18, scope: !125)
!133 = !DILocation(line: 148, column: 9, scope: !127)
!134 = !DILocation(line: 149, column: 5, scope: !127)
!135 = !DILocation(line: 150, column: 2, scope: !122)
!136 = distinct !DISubprogram(name: "run_test_4", scope: !3, file: !6, line: 153, type: !76, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !137)
!137 = !{!138, !140}
!138 = !DILocalVariable(name: "h", scope: !139, file: !6, line: 154, type: !82, align: 1)
!139 = distinct !DILexicalBlock(scope: !136, file: !6, line: 154, column: 5)
!140 = !DILocalVariable(name: "result", scope: !141, file: !6, line: 155, type: !27, align: 4)
!141 = distinct !DILexicalBlock(scope: !139, file: !6, line: 155, column: 5)
!142 = !DILocation(line: 154, column: 9, scope: !139)
!143 = !DILocation(line: 154, column: 22, scope: !136)
!144 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !145)
!145 = distinct !DILocation(line: 155, column: 34, scope: !139)
!146 = !DILocation(line: 155, column: 18, scope: !139)
!147 = !DILocation(line: 155, column: 9, scope: !141)
!148 = !DILocation(line: 156, column: 5, scope: !141)
!149 = !DILocation(line: 157, column: 2, scope: !136)
!150 = distinct !DISubprogram(name: "run_test_5", scope: !3, file: !6, line: 160, type: !76, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !151)
!151 = !{!152, !154}
!152 = !DILocalVariable(name: "h", scope: !153, file: !6, line: 161, type: !82, align: 1)
!153 = distinct !DILexicalBlock(scope: !150, file: !6, line: 161, column: 5)
!154 = !DILocalVariable(name: "result", scope: !155, file: !6, line: 162, type: !27, align: 4)
!155 = distinct !DILexicalBlock(scope: !153, file: !6, line: 162, column: 5)
!156 = !DILocation(line: 161, column: 9, scope: !153)
!157 = !DILocation(line: 161, column: 22, scope: !150)
!158 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !159)
!159 = distinct !DILocation(line: 162, column: 34, scope: !153)
!160 = !DILocation(line: 162, column: 18, scope: !153)
!161 = !DILocation(line: 162, column: 9, scope: !155)
!162 = !DILocation(line: 163, column: 5, scope: !155)
!163 = !DILocation(line: 164, column: 2, scope: !150)
!164 = distinct !DISubprogram(name: "run_test_6", scope: !3, file: !6, line: 167, type: !76, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !165)
!165 = !{!166, !168}
!166 = !DILocalVariable(name: "h", scope: !167, file: !6, line: 168, type: !82, align: 1)
!167 = distinct !DILexicalBlock(scope: !164, file: !6, line: 168, column: 5)
!168 = !DILocalVariable(name: "result", scope: !169, file: !6, line: 169, type: !27, align: 4)
!169 = distinct !DILexicalBlock(scope: !167, file: !6, line: 169, column: 5)
!170 = !DILocation(line: 168, column: 9, scope: !167)
!171 = !DILocation(line: 168, column: 22, scope: !164)
!172 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !173)
!173 = distinct !DILocation(line: 169, column: 34, scope: !167)
!174 = !DILocation(line: 169, column: 18, scope: !167)
!175 = !DILocation(line: 169, column: 9, scope: !169)
!176 = !DILocation(line: 170, column: 5, scope: !169)
!177 = !DILocation(line: 171, column: 2, scope: !164)
!178 = distinct !DISubprogram(name: "run_test_7", scope: !3, file: !6, line: 174, type: !76, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !179)
!179 = !{!180, !182}
!180 = !DILocalVariable(name: "h", scope: !181, file: !6, line: 175, type: !82, align: 1)
!181 = distinct !DILexicalBlock(scope: !178, file: !6, line: 175, column: 5)
!182 = !DILocalVariable(name: "result", scope: !183, file: !6, line: 176, type: !27, align: 4)
!183 = distinct !DILexicalBlock(scope: !181, file: !6, line: 176, column: 5)
!184 = !DILocation(line: 175, column: 9, scope: !181)
!185 = !DILocation(line: 175, column: 22, scope: !178)
!186 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !187)
!187 = distinct !DILocation(line: 176, column: 34, scope: !181)
!188 = !DILocation(line: 176, column: 18, scope: !181)
!189 = !DILocation(line: 176, column: 9, scope: !183)
!190 = !DILocation(line: 177, column: 5, scope: !183)
!191 = !DILocation(line: 178, column: 2, scope: !178)
!192 = distinct !DISubprogram(name: "run_test_8", scope: !3, file: !6, line: 181, type: !76, scopeLine: 181, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !193)
!193 = !{!194, !196}
!194 = !DILocalVariable(name: "h", scope: !195, file: !6, line: 182, type: !82, align: 1)
!195 = distinct !DILexicalBlock(scope: !192, file: !6, line: 182, column: 5)
!196 = !DILocalVariable(name: "result", scope: !197, file: !6, line: 183, type: !27, align: 4)
!197 = distinct !DILexicalBlock(scope: !195, file: !6, line: 183, column: 5)
!198 = !DILocation(line: 182, column: 9, scope: !195)
!199 = !DILocation(line: 182, column: 22, scope: !192)
!200 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !201)
!201 = distinct !DILocation(line: 183, column: 34, scope: !195)
!202 = !DILocation(line: 183, column: 18, scope: !195)
!203 = !DILocation(line: 183, column: 9, scope: !197)
!204 = !DILocation(line: 184, column: 5, scope: !197)
!205 = !DILocation(line: 185, column: 2, scope: !192)
!206 = distinct !DISubprogram(name: "run_test_9", scope: !3, file: !6, line: 188, type: !76, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !207)
!207 = !{!208, !210}
!208 = !DILocalVariable(name: "h", scope: !209, file: !6, line: 189, type: !82, align: 1)
!209 = distinct !DILexicalBlock(scope: !206, file: !6, line: 189, column: 5)
!210 = !DILocalVariable(name: "result", scope: !211, file: !6, line: 190, type: !27, align: 4)
!211 = distinct !DILexicalBlock(scope: !209, file: !6, line: 190, column: 5)
!212 = !DILocation(line: 189, column: 9, scope: !209)
!213 = !DILocation(line: 189, column: 22, scope: !206)
!214 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !215)
!215 = distinct !DILocation(line: 190, column: 34, scope: !209)
!216 = !DILocation(line: 190, column: 18, scope: !209)
!217 = !DILocation(line: 190, column: 9, scope: !211)
!218 = !DILocation(line: 191, column: 5, scope: !211)
!219 = !DILocation(line: 192, column: 2, scope: !206)
!220 = distinct !DISubprogram(name: "run_test_10", scope: !3, file: !6, line: 195, type: !76, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !221)
!221 = !{!222, !224}
!222 = !DILocalVariable(name: "h", scope: !223, file: !6, line: 196, type: !82, align: 1)
!223 = distinct !DILexicalBlock(scope: !220, file: !6, line: 196, column: 5)
!224 = !DILocalVariable(name: "result", scope: !225, file: !6, line: 197, type: !27, align: 4)
!225 = distinct !DILexicalBlock(scope: !223, file: !6, line: 197, column: 5)
!226 = !DILocation(line: 196, column: 9, scope: !223)
!227 = !DILocation(line: 196, column: 22, scope: !220)
!228 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !229)
!229 = distinct !DILocation(line: 197, column: 34, scope: !223)
!230 = !DILocation(line: 197, column: 18, scope: !223)
!231 = !DILocation(line: 197, column: 9, scope: !225)
!232 = !DILocation(line: 198, column: 5, scope: !225)
!233 = !DILocation(line: 199, column: 2, scope: !220)
!234 = distinct !DISubprogram(name: "run_test_11", scope: !3, file: !6, line: 202, type: !76, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !235)
!235 = !{!236, !238}
!236 = !DILocalVariable(name: "h", scope: !237, file: !6, line: 203, type: !82, align: 1)
!237 = distinct !DILexicalBlock(scope: !234, file: !6, line: 203, column: 5)
!238 = !DILocalVariable(name: "result", scope: !239, file: !6, line: 204, type: !27, align: 4)
!239 = distinct !DILexicalBlock(scope: !237, file: !6, line: 204, column: 5)
!240 = !DILocation(line: 203, column: 9, scope: !237)
!241 = !DILocation(line: 203, column: 22, scope: !234)
!242 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !243)
!243 = distinct !DILocation(line: 204, column: 34, scope: !237)
!244 = !DILocation(line: 204, column: 18, scope: !237)
!245 = !DILocation(line: 204, column: 9, scope: !239)
!246 = !DILocation(line: 205, column: 5, scope: !239)
!247 = !DILocation(line: 206, column: 2, scope: !234)
!248 = distinct !DISubprogram(name: "run_test_12", scope: !3, file: !6, line: 209, type: !76, scopeLine: 209, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !249)
!249 = !{!250, !252}
!250 = !DILocalVariable(name: "h", scope: !251, file: !6, line: 210, type: !82, align: 1)
!251 = distinct !DILexicalBlock(scope: !248, file: !6, line: 210, column: 5)
!252 = !DILocalVariable(name: "result", scope: !253, file: !6, line: 211, type: !27, align: 4)
!253 = distinct !DILexicalBlock(scope: !251, file: !6, line: 211, column: 5)
!254 = !DILocation(line: 210, column: 9, scope: !251)
!255 = !DILocation(line: 210, column: 22, scope: !248)
!256 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !257)
!257 = distinct !DILocation(line: 211, column: 34, scope: !251)
!258 = !DILocation(line: 211, column: 18, scope: !251)
!259 = !DILocation(line: 211, column: 9, scope: !253)
!260 = !DILocation(line: 212, column: 5, scope: !253)
!261 = !DILocation(line: 213, column: 2, scope: !248)
!262 = distinct !DISubprogram(name: "run_test_13", scope: !3, file: !6, line: 216, type: !76, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !263)
!263 = !{!264, !266}
!264 = !DILocalVariable(name: "h", scope: !265, file: !6, line: 217, type: !82, align: 1)
!265 = distinct !DILexicalBlock(scope: !262, file: !6, line: 217, column: 5)
!266 = !DILocalVariable(name: "result", scope: !267, file: !6, line: 218, type: !27, align: 4)
!267 = distinct !DILexicalBlock(scope: !265, file: !6, line: 218, column: 5)
!268 = !DILocation(line: 217, column: 9, scope: !265)
!269 = !DILocation(line: 217, column: 22, scope: !262)
!270 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !271)
!271 = distinct !DILocation(line: 218, column: 34, scope: !265)
!272 = !DILocation(line: 218, column: 18, scope: !265)
!273 = !DILocation(line: 218, column: 9, scope: !267)
!274 = !DILocation(line: 219, column: 5, scope: !267)
!275 = !DILocation(line: 220, column: 2, scope: !262)
!276 = distinct !DISubprogram(name: "run_test_14", scope: !3, file: !6, line: 223, type: !76, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !277)
!277 = !{!278, !280}
!278 = !DILocalVariable(name: "h", scope: !279, file: !6, line: 224, type: !82, align: 1)
!279 = distinct !DILexicalBlock(scope: !276, file: !6, line: 224, column: 5)
!280 = !DILocalVariable(name: "result", scope: !281, file: !6, line: 225, type: !27, align: 4)
!281 = distinct !DILexicalBlock(scope: !279, file: !6, line: 225, column: 5)
!282 = !DILocation(line: 224, column: 9, scope: !279)
!283 = !DILocation(line: 224, column: 22, scope: !276)
!284 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !285)
!285 = distinct !DILocation(line: 225, column: 34, scope: !279)
!286 = !DILocation(line: 225, column: 18, scope: !279)
!287 = !DILocation(line: 225, column: 9, scope: !281)
!288 = !DILocation(line: 226, column: 5, scope: !281)
!289 = !DILocation(line: 227, column: 2, scope: !276)
!290 = distinct !DISubprogram(name: "run_test_15", scope: !3, file: !6, line: 230, type: !76, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !291)
!291 = !{!292, !294}
!292 = !DILocalVariable(name: "h", scope: !293, file: !6, line: 231, type: !82, align: 1)
!293 = distinct !DILexicalBlock(scope: !290, file: !6, line: 231, column: 5)
!294 = !DILocalVariable(name: "result", scope: !295, file: !6, line: 232, type: !27, align: 4)
!295 = distinct !DILexicalBlock(scope: !293, file: !6, line: 232, column: 5)
!296 = !DILocation(line: 231, column: 9, scope: !293)
!297 = !DILocation(line: 231, column: 22, scope: !290)
!298 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !299)
!299 = distinct !DILocation(line: 232, column: 34, scope: !293)
!300 = !DILocation(line: 232, column: 18, scope: !293)
!301 = !DILocation(line: 232, column: 9, scope: !295)
!302 = !DILocation(line: 233, column: 5, scope: !295)
!303 = !DILocation(line: 234, column: 2, scope: !290)
!304 = distinct !DISubprogram(name: "run_test_16", scope: !3, file: !6, line: 237, type: !76, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !305)
!305 = !{!306, !308}
!306 = !DILocalVariable(name: "h", scope: !307, file: !6, line: 238, type: !82, align: 1)
!307 = distinct !DILexicalBlock(scope: !304, file: !6, line: 238, column: 5)
!308 = !DILocalVariable(name: "result", scope: !309, file: !6, line: 239, type: !27, align: 4)
!309 = distinct !DILexicalBlock(scope: !307, file: !6, line: 239, column: 5)
!310 = !DILocation(line: 238, column: 9, scope: !307)
!311 = !DILocation(line: 238, column: 22, scope: !304)
!312 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !313)
!313 = distinct !DILocation(line: 239, column: 34, scope: !307)
!314 = !DILocation(line: 239, column: 18, scope: !307)
!315 = !DILocation(line: 239, column: 9, scope: !309)
!316 = !DILocation(line: 240, column: 5, scope: !309)
!317 = !DILocation(line: 241, column: 2, scope: !304)
!318 = distinct !DISubprogram(name: "run_test_17", scope: !3, file: !6, line: 244, type: !76, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !319)
!319 = !{!320, !322}
!320 = !DILocalVariable(name: "h", scope: !321, file: !6, line: 245, type: !82, align: 1)
!321 = distinct !DILexicalBlock(scope: !318, file: !6, line: 245, column: 5)
!322 = !DILocalVariable(name: "result", scope: !323, file: !6, line: 246, type: !27, align: 4)
!323 = distinct !DILexicalBlock(scope: !321, file: !6, line: 246, column: 5)
!324 = !DILocation(line: 245, column: 9, scope: !321)
!325 = !DILocation(line: 245, column: 22, scope: !318)
!326 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !327)
!327 = distinct !DILocation(line: 246, column: 34, scope: !321)
!328 = !DILocation(line: 246, column: 18, scope: !321)
!329 = !DILocation(line: 246, column: 9, scope: !323)
!330 = !DILocation(line: 247, column: 5, scope: !323)
!331 = !DILocation(line: 248, column: 2, scope: !318)
!332 = distinct !DISubprogram(name: "run_test_18", scope: !3, file: !6, line: 251, type: !76, scopeLine: 251, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !333)
!333 = !{!334, !336}
!334 = !DILocalVariable(name: "h", scope: !335, file: !6, line: 252, type: !82, align: 1)
!335 = distinct !DILexicalBlock(scope: !332, file: !6, line: 252, column: 5)
!336 = !DILocalVariable(name: "result", scope: !337, file: !6, line: 253, type: !27, align: 4)
!337 = distinct !DILexicalBlock(scope: !335, file: !6, line: 253, column: 5)
!338 = !DILocation(line: 252, column: 9, scope: !335)
!339 = !DILocation(line: 252, column: 22, scope: !332)
!340 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !341)
!341 = distinct !DILocation(line: 253, column: 34, scope: !335)
!342 = !DILocation(line: 253, column: 18, scope: !335)
!343 = !DILocation(line: 253, column: 9, scope: !337)
!344 = !DILocation(line: 254, column: 5, scope: !337)
!345 = !DILocation(line: 255, column: 2, scope: !332)
!346 = distinct !DISubprogram(name: "run_test_19", scope: !3, file: !6, line: 258, type: !76, scopeLine: 258, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !347)
!347 = !{!348, !350}
!348 = !DILocalVariable(name: "h", scope: !349, file: !6, line: 259, type: !82, align: 1)
!349 = distinct !DILexicalBlock(scope: !346, file: !6, line: 259, column: 5)
!350 = !DILocalVariable(name: "result", scope: !351, file: !6, line: 260, type: !27, align: 4)
!351 = distinct !DILexicalBlock(scope: !349, file: !6, line: 260, column: 5)
!352 = !DILocation(line: 259, column: 9, scope: !349)
!353 = !DILocation(line: 259, column: 22, scope: !346)
!354 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !355)
!355 = distinct !DILocation(line: 260, column: 34, scope: !349)
!356 = !DILocation(line: 260, column: 18, scope: !349)
!357 = !DILocation(line: 260, column: 9, scope: !351)
!358 = !DILocation(line: 261, column: 5, scope: !351)
!359 = !DILocation(line: 262, column: 2, scope: !346)
!360 = distinct !DISubprogram(name: "run_test_20", scope: !3, file: !6, line: 265, type: !76, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !361)
!361 = !{!362, !364}
!362 = !DILocalVariable(name: "h", scope: !363, file: !6, line: 266, type: !82, align: 1)
!363 = distinct !DILexicalBlock(scope: !360, file: !6, line: 266, column: 5)
!364 = !DILocalVariable(name: "result", scope: !365, file: !6, line: 267, type: !27, align: 4)
!365 = distinct !DILexicalBlock(scope: !363, file: !6, line: 267, column: 5)
!366 = !DILocation(line: 266, column: 9, scope: !363)
!367 = !DILocation(line: 266, column: 22, scope: !360)
!368 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !369)
!369 = distinct !DILocation(line: 267, column: 34, scope: !363)
!370 = !DILocation(line: 267, column: 18, scope: !363)
!371 = !DILocation(line: 267, column: 9, scope: !365)
!372 = !DILocation(line: 268, column: 5, scope: !365)
!373 = !DILocation(line: 269, column: 2, scope: !360)
!374 = distinct !DISubprogram(name: "run_test_21", scope: !3, file: !6, line: 272, type: !76, scopeLine: 272, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !375)
!375 = !{!376, !378}
!376 = !DILocalVariable(name: "h", scope: !377, file: !6, line: 273, type: !82, align: 1)
!377 = distinct !DILexicalBlock(scope: !374, file: !6, line: 273, column: 5)
!378 = !DILocalVariable(name: "result", scope: !379, file: !6, line: 274, type: !27, align: 4)
!379 = distinct !DILexicalBlock(scope: !377, file: !6, line: 274, column: 5)
!380 = !DILocation(line: 273, column: 9, scope: !377)
!381 = !DILocation(line: 273, column: 22, scope: !374)
!382 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !383)
!383 = distinct !DILocation(line: 274, column: 34, scope: !377)
!384 = !DILocation(line: 274, column: 18, scope: !377)
!385 = !DILocation(line: 274, column: 9, scope: !379)
!386 = !DILocation(line: 275, column: 5, scope: !379)
!387 = !DILocation(line: 276, column: 2, scope: !374)
!388 = distinct !DISubprogram(name: "run_test_22", scope: !3, file: !6, line: 279, type: !76, scopeLine: 279, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !389)
!389 = !{!390, !392}
!390 = !DILocalVariable(name: "h", scope: !391, file: !6, line: 280, type: !82, align: 1)
!391 = distinct !DILexicalBlock(scope: !388, file: !6, line: 280, column: 5)
!392 = !DILocalVariable(name: "result", scope: !393, file: !6, line: 281, type: !27, align: 4)
!393 = distinct !DILexicalBlock(scope: !391, file: !6, line: 281, column: 5)
!394 = !DILocation(line: 280, column: 9, scope: !391)
!395 = !DILocation(line: 280, column: 22, scope: !388)
!396 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !397)
!397 = distinct !DILocation(line: 281, column: 34, scope: !391)
!398 = !DILocation(line: 281, column: 18, scope: !391)
!399 = !DILocation(line: 281, column: 9, scope: !393)
!400 = !DILocation(line: 282, column: 5, scope: !393)
!401 = !DILocation(line: 283, column: 2, scope: !388)
!402 = distinct !DISubprogram(name: "run_test_23", scope: !3, file: !6, line: 286, type: !76, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !403)
!403 = !{!404, !406}
!404 = !DILocalVariable(name: "h", scope: !405, file: !6, line: 287, type: !82, align: 1)
!405 = distinct !DILexicalBlock(scope: !402, file: !6, line: 287, column: 5)
!406 = !DILocalVariable(name: "result", scope: !407, file: !6, line: 288, type: !27, align: 4)
!407 = distinct !DILexicalBlock(scope: !405, file: !6, line: 288, column: 5)
!408 = !DILocation(line: 287, column: 9, scope: !405)
!409 = !DILocation(line: 287, column: 22, scope: !402)
!410 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !411)
!411 = distinct !DILocation(line: 288, column: 34, scope: !405)
!412 = !DILocation(line: 288, column: 18, scope: !405)
!413 = !DILocation(line: 288, column: 9, scope: !407)
!414 = !DILocation(line: 289, column: 5, scope: !407)
!415 = !DILocation(line: 290, column: 2, scope: !402)
!416 = distinct !DISubprogram(name: "run_test_24", scope: !3, file: !6, line: 293, type: !76, scopeLine: 293, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !417)
!417 = !{!418, !420}
!418 = !DILocalVariable(name: "h", scope: !419, file: !6, line: 294, type: !82, align: 1)
!419 = distinct !DILexicalBlock(scope: !416, file: !6, line: 294, column: 5)
!420 = !DILocalVariable(name: "result", scope: !421, file: !6, line: 295, type: !27, align: 4)
!421 = distinct !DILexicalBlock(scope: !419, file: !6, line: 295, column: 5)
!422 = !DILocation(line: 294, column: 9, scope: !419)
!423 = !DILocation(line: 294, column: 22, scope: !416)
!424 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !425)
!425 = distinct !DILocation(line: 295, column: 34, scope: !419)
!426 = !DILocation(line: 295, column: 18, scope: !419)
!427 = !DILocation(line: 295, column: 9, scope: !421)
!428 = !DILocation(line: 296, column: 5, scope: !421)
!429 = !DILocation(line: 297, column: 2, scope: !416)
!430 = distinct !DISubprogram(name: "run_test_25", scope: !3, file: !6, line: 300, type: !76, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !431)
!431 = !{!432, !434}
!432 = !DILocalVariable(name: "h", scope: !433, file: !6, line: 301, type: !82, align: 1)
!433 = distinct !DILexicalBlock(scope: !430, file: !6, line: 301, column: 5)
!434 = !DILocalVariable(name: "result", scope: !435, file: !6, line: 302, type: !27, align: 4)
!435 = distinct !DILexicalBlock(scope: !433, file: !6, line: 302, column: 5)
!436 = !DILocation(line: 301, column: 9, scope: !433)
!437 = !DILocation(line: 301, column: 22, scope: !430)
!438 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !439)
!439 = distinct !DILocation(line: 302, column: 34, scope: !433)
!440 = !DILocation(line: 302, column: 18, scope: !433)
!441 = !DILocation(line: 302, column: 9, scope: !435)
!442 = !DILocation(line: 303, column: 5, scope: !435)
!443 = !DILocation(line: 304, column: 2, scope: !430)
!444 = distinct !DISubprogram(name: "run_test_26", scope: !3, file: !6, line: 307, type: !76, scopeLine: 307, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !445)
!445 = !{!446, !448}
!446 = !DILocalVariable(name: "h", scope: !447, file: !6, line: 308, type: !82, align: 1)
!447 = distinct !DILexicalBlock(scope: !444, file: !6, line: 308, column: 5)
!448 = !DILocalVariable(name: "result", scope: !449, file: !6, line: 309, type: !27, align: 4)
!449 = distinct !DILexicalBlock(scope: !447, file: !6, line: 309, column: 5)
!450 = !DILocation(line: 308, column: 9, scope: !447)
!451 = !DILocation(line: 308, column: 22, scope: !444)
!452 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !453)
!453 = distinct !DILocation(line: 309, column: 34, scope: !447)
!454 = !DILocation(line: 309, column: 18, scope: !447)
!455 = !DILocation(line: 309, column: 9, scope: !449)
!456 = !DILocation(line: 310, column: 5, scope: !449)
!457 = !DILocation(line: 311, column: 2, scope: !444)
!458 = distinct !DISubprogram(name: "run_test_27", scope: !3, file: !6, line: 314, type: !76, scopeLine: 314, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !459)
!459 = !{!460, !462}
!460 = !DILocalVariable(name: "h", scope: !461, file: !6, line: 315, type: !82, align: 1)
!461 = distinct !DILexicalBlock(scope: !458, file: !6, line: 315, column: 5)
!462 = !DILocalVariable(name: "result", scope: !463, file: !6, line: 316, type: !27, align: 4)
!463 = distinct !DILexicalBlock(scope: !461, file: !6, line: 316, column: 5)
!464 = !DILocation(line: 315, column: 9, scope: !461)
!465 = !DILocation(line: 315, column: 22, scope: !458)
!466 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !467)
!467 = distinct !DILocation(line: 316, column: 34, scope: !461)
!468 = !DILocation(line: 316, column: 18, scope: !461)
!469 = !DILocation(line: 316, column: 9, scope: !463)
!470 = !DILocation(line: 317, column: 5, scope: !463)
!471 = !DILocation(line: 318, column: 2, scope: !458)
!472 = distinct !DISubprogram(name: "run_test_28", scope: !3, file: !6, line: 321, type: !76, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !473)
!473 = !{!474, !476}
!474 = !DILocalVariable(name: "h", scope: !475, file: !6, line: 322, type: !82, align: 1)
!475 = distinct !DILexicalBlock(scope: !472, file: !6, line: 322, column: 5)
!476 = !DILocalVariable(name: "result", scope: !477, file: !6, line: 323, type: !27, align: 4)
!477 = distinct !DILexicalBlock(scope: !475, file: !6, line: 323, column: 5)
!478 = !DILocation(line: 322, column: 9, scope: !475)
!479 = !DILocation(line: 322, column: 22, scope: !472)
!480 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !481)
!481 = distinct !DILocation(line: 323, column: 34, scope: !475)
!482 = !DILocation(line: 323, column: 18, scope: !475)
!483 = !DILocation(line: 323, column: 9, scope: !477)
!484 = !DILocation(line: 324, column: 5, scope: !477)
!485 = !DILocation(line: 325, column: 2, scope: !472)
!486 = distinct !DISubprogram(name: "run_test_29", scope: !3, file: !6, line: 328, type: !76, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !487)
!487 = !{!488, !490}
!488 = !DILocalVariable(name: "h", scope: !489, file: !6, line: 329, type: !82, align: 1)
!489 = distinct !DILexicalBlock(scope: !486, file: !6, line: 329, column: 5)
!490 = !DILocalVariable(name: "result", scope: !491, file: !6, line: 330, type: !27, align: 4)
!491 = distinct !DILexicalBlock(scope: !489, file: !6, line: 330, column: 5)
!492 = !DILocation(line: 329, column: 9, scope: !489)
!493 = !DILocation(line: 329, column: 22, scope: !486)
!494 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !495)
!495 = distinct !DILocation(line: 330, column: 34, scope: !489)
!496 = !DILocation(line: 330, column: 18, scope: !489)
!497 = !DILocation(line: 330, column: 9, scope: !491)
!498 = !DILocation(line: 331, column: 5, scope: !491)
!499 = !DILocation(line: 332, column: 2, scope: !486)
!500 = distinct !DISubprogram(name: "run_test_30", scope: !3, file: !6, line: 335, type: !76, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !501)
!501 = !{!502, !504}
!502 = !DILocalVariable(name: "h", scope: !503, file: !6, line: 336, type: !82, align: 1)
!503 = distinct !DILexicalBlock(scope: !500, file: !6, line: 336, column: 5)
!504 = !DILocalVariable(name: "result", scope: !505, file: !6, line: 337, type: !27, align: 4)
!505 = distinct !DILexicalBlock(scope: !503, file: !6, line: 337, column: 5)
!506 = !DILocation(line: 336, column: 9, scope: !503)
!507 = !DILocation(line: 336, column: 22, scope: !500)
!508 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !509)
!509 = distinct !DILocation(line: 337, column: 34, scope: !503)
!510 = !DILocation(line: 337, column: 18, scope: !503)
!511 = !DILocation(line: 337, column: 9, scope: !505)
!512 = !DILocation(line: 338, column: 5, scope: !505)
!513 = !DILocation(line: 339, column: 2, scope: !500)
!514 = distinct !DISubprogram(name: "run_test_31", scope: !3, file: !6, line: 342, type: !76, scopeLine: 342, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !515)
!515 = !{!516, !518}
!516 = !DILocalVariable(name: "h", scope: !517, file: !6, line: 343, type: !82, align: 1)
!517 = distinct !DILexicalBlock(scope: !514, file: !6, line: 343, column: 5)
!518 = !DILocalVariable(name: "result", scope: !519, file: !6, line: 344, type: !27, align: 4)
!519 = distinct !DILexicalBlock(scope: !517, file: !6, line: 344, column: 5)
!520 = !DILocation(line: 343, column: 9, scope: !517)
!521 = !DILocation(line: 343, column: 22, scope: !514)
!522 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !523)
!523 = distinct !DILocation(line: 344, column: 34, scope: !517)
!524 = !DILocation(line: 344, column: 18, scope: !517)
!525 = !DILocation(line: 344, column: 9, scope: !519)
!526 = !DILocation(line: 345, column: 5, scope: !519)
!527 = !DILocation(line: 346, column: 2, scope: !514)
!528 = distinct !DISubprogram(name: "run_test_32", scope: !3, file: !6, line: 349, type: !76, scopeLine: 349, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !529)
!529 = !{!530, !532}
!530 = !DILocalVariable(name: "h", scope: !531, file: !6, line: 350, type: !82, align: 1)
!531 = distinct !DILexicalBlock(scope: !528, file: !6, line: 350, column: 5)
!532 = !DILocalVariable(name: "result", scope: !533, file: !6, line: 351, type: !27, align: 4)
!533 = distinct !DILexicalBlock(scope: !531, file: !6, line: 351, column: 5)
!534 = !DILocation(line: 350, column: 9, scope: !531)
!535 = !DILocation(line: 350, column: 22, scope: !528)
!536 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !537)
!537 = distinct !DILocation(line: 351, column: 34, scope: !531)
!538 = !DILocation(line: 351, column: 18, scope: !531)
!539 = !DILocation(line: 351, column: 9, scope: !533)
!540 = !DILocation(line: 352, column: 5, scope: !533)
!541 = !DILocation(line: 353, column: 2, scope: !528)
!542 = distinct !DISubprogram(name: "run_test_33", scope: !3, file: !6, line: 356, type: !76, scopeLine: 356, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !543)
!543 = !{!544, !546}
!544 = !DILocalVariable(name: "h", scope: !545, file: !6, line: 357, type: !82, align: 1)
!545 = distinct !DILexicalBlock(scope: !542, file: !6, line: 357, column: 5)
!546 = !DILocalVariable(name: "result", scope: !547, file: !6, line: 358, type: !27, align: 4)
!547 = distinct !DILexicalBlock(scope: !545, file: !6, line: 358, column: 5)
!548 = !DILocation(line: 357, column: 9, scope: !545)
!549 = !DILocation(line: 357, column: 22, scope: !542)
!550 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !551)
!551 = distinct !DILocation(line: 358, column: 34, scope: !545)
!552 = !DILocation(line: 358, column: 18, scope: !545)
!553 = !DILocation(line: 358, column: 9, scope: !547)
!554 = !DILocation(line: 359, column: 5, scope: !547)
!555 = !DILocation(line: 360, column: 2, scope: !542)
!556 = distinct !DISubprogram(name: "run_test_34", scope: !3, file: !6, line: 363, type: !76, scopeLine: 363, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !557)
!557 = !{!558, !560}
!558 = !DILocalVariable(name: "h", scope: !559, file: !6, line: 364, type: !82, align: 1)
!559 = distinct !DILexicalBlock(scope: !556, file: !6, line: 364, column: 5)
!560 = !DILocalVariable(name: "result", scope: !561, file: !6, line: 365, type: !27, align: 4)
!561 = distinct !DILexicalBlock(scope: !559, file: !6, line: 365, column: 5)
!562 = !DILocation(line: 364, column: 9, scope: !559)
!563 = !DILocation(line: 364, column: 22, scope: !556)
!564 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !565)
!565 = distinct !DILocation(line: 365, column: 34, scope: !559)
!566 = !DILocation(line: 365, column: 18, scope: !559)
!567 = !DILocation(line: 365, column: 9, scope: !561)
!568 = !DILocation(line: 366, column: 5, scope: !561)
!569 = !DILocation(line: 367, column: 2, scope: !556)
!570 = distinct !DISubprogram(name: "run_test_35", scope: !3, file: !6, line: 370, type: !76, scopeLine: 370, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !571)
!571 = !{!572, !574}
!572 = !DILocalVariable(name: "h", scope: !573, file: !6, line: 371, type: !82, align: 1)
!573 = distinct !DILexicalBlock(scope: !570, file: !6, line: 371, column: 5)
!574 = !DILocalVariable(name: "result", scope: !575, file: !6, line: 372, type: !27, align: 4)
!575 = distinct !DILexicalBlock(scope: !573, file: !6, line: 372, column: 5)
!576 = !DILocation(line: 371, column: 9, scope: !573)
!577 = !DILocation(line: 371, column: 22, scope: !570)
!578 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !579)
!579 = distinct !DILocation(line: 372, column: 34, scope: !573)
!580 = !DILocation(line: 372, column: 18, scope: !573)
!581 = !DILocation(line: 372, column: 9, scope: !575)
!582 = !DILocation(line: 373, column: 5, scope: !575)
!583 = !DILocation(line: 374, column: 2, scope: !570)
!584 = distinct !DISubprogram(name: "run_test_36", scope: !3, file: !6, line: 377, type: !76, scopeLine: 377, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !585)
!585 = !{!586, !588}
!586 = !DILocalVariable(name: "h", scope: !587, file: !6, line: 378, type: !82, align: 1)
!587 = distinct !DILexicalBlock(scope: !584, file: !6, line: 378, column: 5)
!588 = !DILocalVariable(name: "result", scope: !589, file: !6, line: 379, type: !27, align: 4)
!589 = distinct !DILexicalBlock(scope: !587, file: !6, line: 379, column: 5)
!590 = !DILocation(line: 378, column: 9, scope: !587)
!591 = !DILocation(line: 378, column: 22, scope: !584)
!592 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !593)
!593 = distinct !DILocation(line: 379, column: 34, scope: !587)
!594 = !DILocation(line: 379, column: 18, scope: !587)
!595 = !DILocation(line: 379, column: 9, scope: !589)
!596 = !DILocation(line: 380, column: 5, scope: !589)
!597 = !DILocation(line: 381, column: 2, scope: !584)
!598 = distinct !DISubprogram(name: "run_test_37", scope: !3, file: !6, line: 384, type: !76, scopeLine: 384, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !599)
!599 = !{!600, !602}
!600 = !DILocalVariable(name: "h", scope: !601, file: !6, line: 385, type: !82, align: 1)
!601 = distinct !DILexicalBlock(scope: !598, file: !6, line: 385, column: 5)
!602 = !DILocalVariable(name: "result", scope: !603, file: !6, line: 386, type: !27, align: 4)
!603 = distinct !DILexicalBlock(scope: !601, file: !6, line: 386, column: 5)
!604 = !DILocation(line: 385, column: 9, scope: !601)
!605 = !DILocation(line: 385, column: 22, scope: !598)
!606 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !607)
!607 = distinct !DILocation(line: 386, column: 34, scope: !601)
!608 = !DILocation(line: 386, column: 18, scope: !601)
!609 = !DILocation(line: 386, column: 9, scope: !603)
!610 = !DILocation(line: 387, column: 5, scope: !603)
!611 = !DILocation(line: 388, column: 2, scope: !598)
!612 = distinct !DISubprogram(name: "run_test_38", scope: !3, file: !6, line: 391, type: !76, scopeLine: 391, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !613)
!613 = !{!614, !616}
!614 = !DILocalVariable(name: "h", scope: !615, file: !6, line: 392, type: !82, align: 1)
!615 = distinct !DILexicalBlock(scope: !612, file: !6, line: 392, column: 5)
!616 = !DILocalVariable(name: "result", scope: !617, file: !6, line: 393, type: !27, align: 4)
!617 = distinct !DILexicalBlock(scope: !615, file: !6, line: 393, column: 5)
!618 = !DILocation(line: 392, column: 9, scope: !615)
!619 = !DILocation(line: 392, column: 22, scope: !612)
!620 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !621)
!621 = distinct !DILocation(line: 393, column: 34, scope: !615)
!622 = !DILocation(line: 393, column: 18, scope: !615)
!623 = !DILocation(line: 393, column: 9, scope: !617)
!624 = !DILocation(line: 394, column: 5, scope: !617)
!625 = !DILocation(line: 395, column: 2, scope: !612)
!626 = distinct !DISubprogram(name: "run_test_39", scope: !3, file: !6, line: 398, type: !76, scopeLine: 398, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !627)
!627 = !{!628, !630}
!628 = !DILocalVariable(name: "h", scope: !629, file: !6, line: 399, type: !82, align: 1)
!629 = distinct !DILexicalBlock(scope: !626, file: !6, line: 399, column: 5)
!630 = !DILocalVariable(name: "result", scope: !631, file: !6, line: 400, type: !27, align: 4)
!631 = distinct !DILexicalBlock(scope: !629, file: !6, line: 400, column: 5)
!632 = !DILocation(line: 399, column: 9, scope: !629)
!633 = !DILocation(line: 399, column: 22, scope: !626)
!634 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !635)
!635 = distinct !DILocation(line: 400, column: 34, scope: !629)
!636 = !DILocation(line: 400, column: 18, scope: !629)
!637 = !DILocation(line: 400, column: 9, scope: !631)
!638 = !DILocation(line: 401, column: 5, scope: !631)
!639 = !DILocation(line: 402, column: 2, scope: !626)
!640 = distinct !DISubprogram(name: "run_test_40", scope: !3, file: !6, line: 405, type: !76, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !641)
!641 = !{!642, !644}
!642 = !DILocalVariable(name: "h", scope: !643, file: !6, line: 406, type: !82, align: 1)
!643 = distinct !DILexicalBlock(scope: !640, file: !6, line: 406, column: 5)
!644 = !DILocalVariable(name: "result", scope: !645, file: !6, line: 407, type: !27, align: 4)
!645 = distinct !DILexicalBlock(scope: !643, file: !6, line: 407, column: 5)
!646 = !DILocation(line: 406, column: 9, scope: !643)
!647 = !DILocation(line: 406, column: 22, scope: !640)
!648 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !649)
!649 = distinct !DILocation(line: 407, column: 34, scope: !643)
!650 = !DILocation(line: 407, column: 18, scope: !643)
!651 = !DILocation(line: 407, column: 9, scope: !645)
!652 = !DILocation(line: 408, column: 5, scope: !645)
!653 = !DILocation(line: 409, column: 2, scope: !640)
!654 = distinct !DISubprogram(name: "run_test_41", scope: !3, file: !6, line: 412, type: !76, scopeLine: 412, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !655)
!655 = !{!656, !658}
!656 = !DILocalVariable(name: "h", scope: !657, file: !6, line: 413, type: !82, align: 1)
!657 = distinct !DILexicalBlock(scope: !654, file: !6, line: 413, column: 5)
!658 = !DILocalVariable(name: "result", scope: !659, file: !6, line: 414, type: !27, align: 4)
!659 = distinct !DILexicalBlock(scope: !657, file: !6, line: 414, column: 5)
!660 = !DILocation(line: 413, column: 9, scope: !657)
!661 = !DILocation(line: 413, column: 22, scope: !654)
!662 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !663)
!663 = distinct !DILocation(line: 414, column: 34, scope: !657)
!664 = !DILocation(line: 414, column: 18, scope: !657)
!665 = !DILocation(line: 414, column: 9, scope: !659)
!666 = !DILocation(line: 415, column: 5, scope: !659)
!667 = !DILocation(line: 416, column: 2, scope: !654)
!668 = distinct !DISubprogram(name: "run_test_42", scope: !3, file: !6, line: 419, type: !76, scopeLine: 419, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !669)
!669 = !{!670, !672}
!670 = !DILocalVariable(name: "h", scope: !671, file: !6, line: 420, type: !82, align: 1)
!671 = distinct !DILexicalBlock(scope: !668, file: !6, line: 420, column: 5)
!672 = !DILocalVariable(name: "result", scope: !673, file: !6, line: 421, type: !27, align: 4)
!673 = distinct !DILexicalBlock(scope: !671, file: !6, line: 421, column: 5)
!674 = !DILocation(line: 420, column: 9, scope: !671)
!675 = !DILocation(line: 420, column: 22, scope: !668)
!676 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !677)
!677 = distinct !DILocation(line: 421, column: 34, scope: !671)
!678 = !DILocation(line: 421, column: 18, scope: !671)
!679 = !DILocation(line: 421, column: 9, scope: !673)
!680 = !DILocation(line: 422, column: 5, scope: !673)
!681 = !DILocation(line: 423, column: 2, scope: !668)
!682 = distinct !DISubprogram(name: "run_test_43", scope: !3, file: !6, line: 426, type: !76, scopeLine: 426, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !683)
!683 = !{!684, !686}
!684 = !DILocalVariable(name: "h", scope: !685, file: !6, line: 427, type: !82, align: 1)
!685 = distinct !DILexicalBlock(scope: !682, file: !6, line: 427, column: 5)
!686 = !DILocalVariable(name: "result", scope: !687, file: !6, line: 428, type: !27, align: 4)
!687 = distinct !DILexicalBlock(scope: !685, file: !6, line: 428, column: 5)
!688 = !DILocation(line: 427, column: 9, scope: !685)
!689 = !DILocation(line: 427, column: 22, scope: !682)
!690 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !691)
!691 = distinct !DILocation(line: 428, column: 34, scope: !685)
!692 = !DILocation(line: 428, column: 18, scope: !685)
!693 = !DILocation(line: 428, column: 9, scope: !687)
!694 = !DILocation(line: 429, column: 5, scope: !687)
!695 = !DILocation(line: 430, column: 2, scope: !682)
!696 = distinct !DISubprogram(name: "run_test_44", scope: !3, file: !6, line: 433, type: !76, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !697)
!697 = !{!698, !700}
!698 = !DILocalVariable(name: "h", scope: !699, file: !6, line: 434, type: !82, align: 1)
!699 = distinct !DILexicalBlock(scope: !696, file: !6, line: 434, column: 5)
!700 = !DILocalVariable(name: "result", scope: !701, file: !6, line: 435, type: !27, align: 4)
!701 = distinct !DILexicalBlock(scope: !699, file: !6, line: 435, column: 5)
!702 = !DILocation(line: 434, column: 9, scope: !699)
!703 = !DILocation(line: 434, column: 22, scope: !696)
!704 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !705)
!705 = distinct !DILocation(line: 435, column: 34, scope: !699)
!706 = !DILocation(line: 435, column: 18, scope: !699)
!707 = !DILocation(line: 435, column: 9, scope: !701)
!708 = !DILocation(line: 436, column: 5, scope: !701)
!709 = !DILocation(line: 437, column: 2, scope: !696)
!710 = distinct !DISubprogram(name: "run_test_45", scope: !3, file: !6, line: 440, type: !76, scopeLine: 440, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !711)
!711 = !{!712, !714}
!712 = !DILocalVariable(name: "h", scope: !713, file: !6, line: 441, type: !82, align: 1)
!713 = distinct !DILexicalBlock(scope: !710, file: !6, line: 441, column: 5)
!714 = !DILocalVariable(name: "result", scope: !715, file: !6, line: 442, type: !27, align: 4)
!715 = distinct !DILexicalBlock(scope: !713, file: !6, line: 442, column: 5)
!716 = !DILocation(line: 441, column: 9, scope: !713)
!717 = !DILocation(line: 441, column: 22, scope: !710)
!718 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !719)
!719 = distinct !DILocation(line: 442, column: 34, scope: !713)
!720 = !DILocation(line: 442, column: 18, scope: !713)
!721 = !DILocation(line: 442, column: 9, scope: !715)
!722 = !DILocation(line: 443, column: 5, scope: !715)
!723 = !DILocation(line: 444, column: 2, scope: !710)
!724 = distinct !DISubprogram(name: "run_test_46", scope: !3, file: !6, line: 447, type: !76, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !725)
!725 = !{!726, !728}
!726 = !DILocalVariable(name: "h", scope: !727, file: !6, line: 448, type: !82, align: 1)
!727 = distinct !DILexicalBlock(scope: !724, file: !6, line: 448, column: 5)
!728 = !DILocalVariable(name: "result", scope: !729, file: !6, line: 449, type: !27, align: 4)
!729 = distinct !DILexicalBlock(scope: !727, file: !6, line: 449, column: 5)
!730 = !DILocation(line: 448, column: 9, scope: !727)
!731 = !DILocation(line: 448, column: 22, scope: !724)
!732 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !733)
!733 = distinct !DILocation(line: 449, column: 34, scope: !727)
!734 = !DILocation(line: 449, column: 18, scope: !727)
!735 = !DILocation(line: 449, column: 9, scope: !729)
!736 = !DILocation(line: 450, column: 5, scope: !729)
!737 = !DILocation(line: 451, column: 2, scope: !724)
!738 = distinct !DISubprogram(name: "run_test_47", scope: !3, file: !6, line: 454, type: !76, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !739)
!739 = !{!740, !742}
!740 = !DILocalVariable(name: "h", scope: !741, file: !6, line: 455, type: !82, align: 1)
!741 = distinct !DILexicalBlock(scope: !738, file: !6, line: 455, column: 5)
!742 = !DILocalVariable(name: "result", scope: !743, file: !6, line: 456, type: !27, align: 4)
!743 = distinct !DILexicalBlock(scope: !741, file: !6, line: 456, column: 5)
!744 = !DILocation(line: 455, column: 9, scope: !741)
!745 = !DILocation(line: 455, column: 22, scope: !738)
!746 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !747)
!747 = distinct !DILocation(line: 456, column: 34, scope: !741)
!748 = !DILocation(line: 456, column: 18, scope: !741)
!749 = !DILocation(line: 456, column: 9, scope: !743)
!750 = !DILocation(line: 457, column: 5, scope: !743)
!751 = !DILocation(line: 458, column: 2, scope: !738)
!752 = distinct !DISubprogram(name: "run_test_48", scope: !3, file: !6, line: 461, type: !76, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !753)
!753 = !{!754, !756}
!754 = !DILocalVariable(name: "h", scope: !755, file: !6, line: 462, type: !82, align: 1)
!755 = distinct !DILexicalBlock(scope: !752, file: !6, line: 462, column: 5)
!756 = !DILocalVariable(name: "result", scope: !757, file: !6, line: 463, type: !27, align: 4)
!757 = distinct !DILexicalBlock(scope: !755, file: !6, line: 463, column: 5)
!758 = !DILocation(line: 462, column: 9, scope: !755)
!759 = !DILocation(line: 462, column: 22, scope: !752)
!760 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !761)
!761 = distinct !DILocation(line: 463, column: 34, scope: !755)
!762 = !DILocation(line: 463, column: 18, scope: !755)
!763 = !DILocation(line: 463, column: 9, scope: !757)
!764 = !DILocation(line: 464, column: 5, scope: !757)
!765 = !DILocation(line: 465, column: 2, scope: !752)
!766 = distinct !DISubprogram(name: "run_test_49", scope: !3, file: !6, line: 468, type: !76, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !767)
!767 = !{!768, !770}
!768 = !DILocalVariable(name: "h", scope: !769, file: !6, line: 469, type: !82, align: 1)
!769 = distinct !DILexicalBlock(scope: !766, file: !6, line: 469, column: 5)
!770 = !DILocalVariable(name: "result", scope: !771, file: !6, line: 470, type: !27, align: 4)
!771 = distinct !DILexicalBlock(scope: !769, file: !6, line: 470, column: 5)
!772 = !DILocation(line: 469, column: 9, scope: !769)
!773 = !DILocation(line: 469, column: 22, scope: !766)
!774 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !775)
!775 = distinct !DILocation(line: 470, column: 34, scope: !769)
!776 = !DILocation(line: 470, column: 18, scope: !769)
!777 = !DILocation(line: 470, column: 9, scope: !771)
!778 = !DILocation(line: 471, column: 5, scope: !771)
!779 = !DILocation(line: 472, column: 2, scope: !766)
!780 = distinct !DISubprogram(name: "run_test_50", scope: !3, file: !6, line: 475, type: !76, scopeLine: 475, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !781)
!781 = !{!782, !784}
!782 = !DILocalVariable(name: "h", scope: !783, file: !6, line: 476, type: !82, align: 1)
!783 = distinct !DILexicalBlock(scope: !780, file: !6, line: 476, column: 5)
!784 = !DILocalVariable(name: "result", scope: !785, file: !6, line: 477, type: !27, align: 4)
!785 = distinct !DILexicalBlock(scope: !783, file: !6, line: 477, column: 5)
!786 = !DILocation(line: 476, column: 9, scope: !783)
!787 = !DILocation(line: 476, column: 22, scope: !780)
!788 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !789)
!789 = distinct !DILocation(line: 477, column: 34, scope: !783)
!790 = !DILocation(line: 477, column: 18, scope: !783)
!791 = !DILocation(line: 477, column: 9, scope: !785)
!792 = !DILocation(line: 478, column: 5, scope: !785)
!793 = !DILocation(line: 479, column: 2, scope: !780)
!794 = distinct !DISubprogram(name: "run_test_51", scope: !3, file: !6, line: 482, type: !76, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !795)
!795 = !{!796, !798}
!796 = !DILocalVariable(name: "h", scope: !797, file: !6, line: 483, type: !82, align: 1)
!797 = distinct !DILexicalBlock(scope: !794, file: !6, line: 483, column: 5)
!798 = !DILocalVariable(name: "result", scope: !799, file: !6, line: 484, type: !27, align: 4)
!799 = distinct !DILexicalBlock(scope: !797, file: !6, line: 484, column: 5)
!800 = !DILocation(line: 483, column: 9, scope: !797)
!801 = !DILocation(line: 483, column: 22, scope: !794)
!802 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !803)
!803 = distinct !DILocation(line: 484, column: 34, scope: !797)
!804 = !DILocation(line: 484, column: 18, scope: !797)
!805 = !DILocation(line: 484, column: 9, scope: !799)
!806 = !DILocation(line: 485, column: 5, scope: !799)
!807 = !DILocation(line: 486, column: 2, scope: !794)
!808 = distinct !DISubprogram(name: "run_test_52", scope: !3, file: !6, line: 489, type: !76, scopeLine: 489, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !809)
!809 = !{!810, !812}
!810 = !DILocalVariable(name: "h", scope: !811, file: !6, line: 490, type: !82, align: 1)
!811 = distinct !DILexicalBlock(scope: !808, file: !6, line: 490, column: 5)
!812 = !DILocalVariable(name: "result", scope: !813, file: !6, line: 491, type: !27, align: 4)
!813 = distinct !DILexicalBlock(scope: !811, file: !6, line: 491, column: 5)
!814 = !DILocation(line: 490, column: 9, scope: !811)
!815 = !DILocation(line: 490, column: 22, scope: !808)
!816 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !817)
!817 = distinct !DILocation(line: 491, column: 34, scope: !811)
!818 = !DILocation(line: 491, column: 18, scope: !811)
!819 = !DILocation(line: 491, column: 9, scope: !813)
!820 = !DILocation(line: 492, column: 5, scope: !813)
!821 = !DILocation(line: 493, column: 2, scope: !808)
!822 = distinct !DISubprogram(name: "run_test_53", scope: !3, file: !6, line: 496, type: !76, scopeLine: 496, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !823)
!823 = !{!824, !826}
!824 = !DILocalVariable(name: "h", scope: !825, file: !6, line: 497, type: !82, align: 1)
!825 = distinct !DILexicalBlock(scope: !822, file: !6, line: 497, column: 5)
!826 = !DILocalVariable(name: "result", scope: !827, file: !6, line: 498, type: !27, align: 4)
!827 = distinct !DILexicalBlock(scope: !825, file: !6, line: 498, column: 5)
!828 = !DILocation(line: 497, column: 9, scope: !825)
!829 = !DILocation(line: 497, column: 22, scope: !822)
!830 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !831)
!831 = distinct !DILocation(line: 498, column: 34, scope: !825)
!832 = !DILocation(line: 498, column: 18, scope: !825)
!833 = !DILocation(line: 498, column: 9, scope: !827)
!834 = !DILocation(line: 499, column: 5, scope: !827)
!835 = !DILocation(line: 500, column: 2, scope: !822)
!836 = distinct !DISubprogram(name: "run_test_54", scope: !3, file: !6, line: 503, type: !76, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !837)
!837 = !{!838, !840}
!838 = !DILocalVariable(name: "h", scope: !839, file: !6, line: 504, type: !82, align: 1)
!839 = distinct !DILexicalBlock(scope: !836, file: !6, line: 504, column: 5)
!840 = !DILocalVariable(name: "result", scope: !841, file: !6, line: 505, type: !27, align: 4)
!841 = distinct !DILexicalBlock(scope: !839, file: !6, line: 505, column: 5)
!842 = !DILocation(line: 504, column: 9, scope: !839)
!843 = !DILocation(line: 504, column: 22, scope: !836)
!844 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !845)
!845 = distinct !DILocation(line: 505, column: 34, scope: !839)
!846 = !DILocation(line: 505, column: 18, scope: !839)
!847 = !DILocation(line: 505, column: 9, scope: !841)
!848 = !DILocation(line: 506, column: 5, scope: !841)
!849 = !DILocation(line: 507, column: 2, scope: !836)
!850 = distinct !DISubprogram(name: "run_test_55", scope: !3, file: !6, line: 510, type: !76, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !851)
!851 = !{!852, !854}
!852 = !DILocalVariable(name: "h", scope: !853, file: !6, line: 511, type: !82, align: 1)
!853 = distinct !DILexicalBlock(scope: !850, file: !6, line: 511, column: 5)
!854 = !DILocalVariable(name: "result", scope: !855, file: !6, line: 512, type: !27, align: 4)
!855 = distinct !DILexicalBlock(scope: !853, file: !6, line: 512, column: 5)
!856 = !DILocation(line: 511, column: 9, scope: !853)
!857 = !DILocation(line: 511, column: 22, scope: !850)
!858 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !859)
!859 = distinct !DILocation(line: 512, column: 34, scope: !853)
!860 = !DILocation(line: 512, column: 18, scope: !853)
!861 = !DILocation(line: 512, column: 9, scope: !855)
!862 = !DILocation(line: 513, column: 5, scope: !855)
!863 = !DILocation(line: 514, column: 2, scope: !850)
!864 = distinct !DISubprogram(name: "run_test_56", scope: !3, file: !6, line: 517, type: !76, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !865)
!865 = !{!866, !868}
!866 = !DILocalVariable(name: "h", scope: !867, file: !6, line: 518, type: !82, align: 1)
!867 = distinct !DILexicalBlock(scope: !864, file: !6, line: 518, column: 5)
!868 = !DILocalVariable(name: "result", scope: !869, file: !6, line: 519, type: !27, align: 4)
!869 = distinct !DILexicalBlock(scope: !867, file: !6, line: 519, column: 5)
!870 = !DILocation(line: 518, column: 9, scope: !867)
!871 = !DILocation(line: 518, column: 22, scope: !864)
!872 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !873)
!873 = distinct !DILocation(line: 519, column: 34, scope: !867)
!874 = !DILocation(line: 519, column: 18, scope: !867)
!875 = !DILocation(line: 519, column: 9, scope: !869)
!876 = !DILocation(line: 520, column: 5, scope: !869)
!877 = !DILocation(line: 521, column: 2, scope: !864)
!878 = distinct !DISubprogram(name: "run_test_57", scope: !3, file: !6, line: 524, type: !76, scopeLine: 524, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !879)
!879 = !{!880, !882}
!880 = !DILocalVariable(name: "h", scope: !881, file: !6, line: 525, type: !82, align: 1)
!881 = distinct !DILexicalBlock(scope: !878, file: !6, line: 525, column: 5)
!882 = !DILocalVariable(name: "result", scope: !883, file: !6, line: 526, type: !27, align: 4)
!883 = distinct !DILexicalBlock(scope: !881, file: !6, line: 526, column: 5)
!884 = !DILocation(line: 525, column: 9, scope: !881)
!885 = !DILocation(line: 525, column: 22, scope: !878)
!886 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !887)
!887 = distinct !DILocation(line: 526, column: 34, scope: !881)
!888 = !DILocation(line: 526, column: 18, scope: !881)
!889 = !DILocation(line: 526, column: 9, scope: !883)
!890 = !DILocation(line: 527, column: 5, scope: !883)
!891 = !DILocation(line: 528, column: 2, scope: !878)
!892 = distinct !DISubprogram(name: "run_test_58", scope: !3, file: !6, line: 531, type: !76, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !893)
!893 = !{!894, !896}
!894 = !DILocalVariable(name: "h", scope: !895, file: !6, line: 532, type: !82, align: 1)
!895 = distinct !DILexicalBlock(scope: !892, file: !6, line: 532, column: 5)
!896 = !DILocalVariable(name: "result", scope: !897, file: !6, line: 533, type: !27, align: 4)
!897 = distinct !DILexicalBlock(scope: !895, file: !6, line: 533, column: 5)
!898 = !DILocation(line: 532, column: 9, scope: !895)
!899 = !DILocation(line: 532, column: 22, scope: !892)
!900 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !901)
!901 = distinct !DILocation(line: 533, column: 34, scope: !895)
!902 = !DILocation(line: 533, column: 18, scope: !895)
!903 = !DILocation(line: 533, column: 9, scope: !897)
!904 = !DILocation(line: 534, column: 5, scope: !897)
!905 = !DILocation(line: 535, column: 2, scope: !892)
!906 = distinct !DISubprogram(name: "run_test_59", scope: !3, file: !6, line: 538, type: !76, scopeLine: 538, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !907)
!907 = !{!908, !910}
!908 = !DILocalVariable(name: "h", scope: !909, file: !6, line: 539, type: !82, align: 1)
!909 = distinct !DILexicalBlock(scope: !906, file: !6, line: 539, column: 5)
!910 = !DILocalVariable(name: "result", scope: !911, file: !6, line: 540, type: !27, align: 4)
!911 = distinct !DILexicalBlock(scope: !909, file: !6, line: 540, column: 5)
!912 = !DILocation(line: 539, column: 9, scope: !909)
!913 = !DILocation(line: 539, column: 22, scope: !906)
!914 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !915)
!915 = distinct !DILocation(line: 540, column: 34, scope: !909)
!916 = !DILocation(line: 540, column: 18, scope: !909)
!917 = !DILocation(line: 540, column: 9, scope: !911)
!918 = !DILocation(line: 541, column: 5, scope: !911)
!919 = !DILocation(line: 542, column: 2, scope: !906)
!920 = distinct !DISubprogram(name: "run_test_60", scope: !3, file: !6, line: 545, type: !76, scopeLine: 545, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !921)
!921 = !{!922, !924}
!922 = !DILocalVariable(name: "h", scope: !923, file: !6, line: 546, type: !82, align: 1)
!923 = distinct !DILexicalBlock(scope: !920, file: !6, line: 546, column: 5)
!924 = !DILocalVariable(name: "result", scope: !925, file: !6, line: 547, type: !27, align: 4)
!925 = distinct !DILexicalBlock(scope: !923, file: !6, line: 547, column: 5)
!926 = !DILocation(line: 546, column: 9, scope: !923)
!927 = !DILocation(line: 546, column: 22, scope: !920)
!928 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !929)
!929 = distinct !DILocation(line: 547, column: 34, scope: !923)
!930 = !DILocation(line: 547, column: 18, scope: !923)
!931 = !DILocation(line: 547, column: 9, scope: !925)
!932 = !DILocation(line: 548, column: 5, scope: !925)
!933 = !DILocation(line: 549, column: 2, scope: !920)
!934 = distinct !DISubprogram(name: "run_test_61", scope: !3, file: !6, line: 552, type: !76, scopeLine: 552, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !935)
!935 = !{!936, !938}
!936 = !DILocalVariable(name: "h", scope: !937, file: !6, line: 553, type: !82, align: 1)
!937 = distinct !DILexicalBlock(scope: !934, file: !6, line: 553, column: 5)
!938 = !DILocalVariable(name: "result", scope: !939, file: !6, line: 554, type: !27, align: 4)
!939 = distinct !DILexicalBlock(scope: !937, file: !6, line: 554, column: 5)
!940 = !DILocation(line: 553, column: 9, scope: !937)
!941 = !DILocation(line: 553, column: 22, scope: !934)
!942 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !943)
!943 = distinct !DILocation(line: 554, column: 34, scope: !937)
!944 = !DILocation(line: 554, column: 18, scope: !937)
!945 = !DILocation(line: 554, column: 9, scope: !939)
!946 = !DILocation(line: 555, column: 5, scope: !939)
!947 = !DILocation(line: 556, column: 2, scope: !934)
!948 = distinct !DISubprogram(name: "run_test_62", scope: !3, file: !6, line: 559, type: !76, scopeLine: 559, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !949)
!949 = !{!950, !952}
!950 = !DILocalVariable(name: "h", scope: !951, file: !6, line: 560, type: !82, align: 1)
!951 = distinct !DILexicalBlock(scope: !948, file: !6, line: 560, column: 5)
!952 = !DILocalVariable(name: "result", scope: !953, file: !6, line: 561, type: !27, align: 4)
!953 = distinct !DILexicalBlock(scope: !951, file: !6, line: 561, column: 5)
!954 = !DILocation(line: 560, column: 9, scope: !951)
!955 = !DILocation(line: 560, column: 22, scope: !948)
!956 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !957)
!957 = distinct !DILocation(line: 561, column: 34, scope: !951)
!958 = !DILocation(line: 561, column: 18, scope: !951)
!959 = !DILocation(line: 561, column: 9, scope: !953)
!960 = !DILocation(line: 562, column: 5, scope: !953)
!961 = !DILocation(line: 563, column: 2, scope: !948)
!962 = distinct !DISubprogram(name: "run_test_63", scope: !3, file: !6, line: 566, type: !76, scopeLine: 566, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !963)
!963 = !{!964, !966}
!964 = !DILocalVariable(name: "h", scope: !965, file: !6, line: 567, type: !82, align: 1)
!965 = distinct !DILexicalBlock(scope: !962, file: !6, line: 567, column: 5)
!966 = !DILocalVariable(name: "result", scope: !967, file: !6, line: 568, type: !27, align: 4)
!967 = distinct !DILexicalBlock(scope: !965, file: !6, line: 568, column: 5)
!968 = !DILocation(line: 567, column: 9, scope: !965)
!969 = !DILocation(line: 567, column: 22, scope: !962)
!970 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !971)
!971 = distinct !DILocation(line: 568, column: 34, scope: !965)
!972 = !DILocation(line: 568, column: 18, scope: !965)
!973 = !DILocation(line: 568, column: 9, scope: !967)
!974 = !DILocation(line: 569, column: 5, scope: !967)
!975 = !DILocation(line: 570, column: 2, scope: !962)
!976 = distinct !DISubprogram(name: "run_test_64", scope: !3, file: !6, line: 573, type: !76, scopeLine: 573, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !977)
!977 = !{!978, !980}
!978 = !DILocalVariable(name: "h", scope: !979, file: !6, line: 574, type: !82, align: 1)
!979 = distinct !DILexicalBlock(scope: !976, file: !6, line: 574, column: 5)
!980 = !DILocalVariable(name: "result", scope: !981, file: !6, line: 575, type: !27, align: 4)
!981 = distinct !DILexicalBlock(scope: !979, file: !6, line: 575, column: 5)
!982 = !DILocation(line: 574, column: 9, scope: !979)
!983 = !DILocation(line: 574, column: 22, scope: !976)
!984 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !985)
!985 = distinct !DILocation(line: 575, column: 34, scope: !979)
!986 = !DILocation(line: 575, column: 18, scope: !979)
!987 = !DILocation(line: 575, column: 9, scope: !981)
!988 = !DILocation(line: 576, column: 5, scope: !981)
!989 = !DILocation(line: 577, column: 2, scope: !976)
!990 = distinct !DISubprogram(name: "run_test_65", scope: !3, file: !6, line: 580, type: !76, scopeLine: 580, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !991)
!991 = !{!992, !994}
!992 = !DILocalVariable(name: "h", scope: !993, file: !6, line: 581, type: !82, align: 1)
!993 = distinct !DILexicalBlock(scope: !990, file: !6, line: 581, column: 5)
!994 = !DILocalVariable(name: "result", scope: !995, file: !6, line: 582, type: !27, align: 4)
!995 = distinct !DILexicalBlock(scope: !993, file: !6, line: 582, column: 5)
!996 = !DILocation(line: 581, column: 9, scope: !993)
!997 = !DILocation(line: 581, column: 22, scope: !990)
!998 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !999)
!999 = distinct !DILocation(line: 582, column: 34, scope: !993)
!1000 = !DILocation(line: 582, column: 18, scope: !993)
!1001 = !DILocation(line: 582, column: 9, scope: !995)
!1002 = !DILocation(line: 583, column: 5, scope: !995)
!1003 = !DILocation(line: 584, column: 2, scope: !990)
!1004 = distinct !DISubprogram(name: "run_test_66", scope: !3, file: !6, line: 587, type: !76, scopeLine: 587, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !1005)
!1005 = !{!1006, !1008}
!1006 = !DILocalVariable(name: "h", scope: !1007, file: !6, line: 588, type: !82, align: 1)
!1007 = distinct !DILexicalBlock(scope: !1004, file: !6, line: 588, column: 5)
!1008 = !DILocalVariable(name: "result", scope: !1009, file: !6, line: 589, type: !27, align: 4)
!1009 = distinct !DILexicalBlock(scope: !1007, file: !6, line: 589, column: 5)
!1010 = !DILocation(line: 588, column: 9, scope: !1007)
!1011 = !DILocation(line: 588, column: 22, scope: !1004)
!1012 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !1013)
!1013 = distinct !DILocation(line: 589, column: 34, scope: !1007)
!1014 = !DILocation(line: 589, column: 18, scope: !1007)
!1015 = !DILocation(line: 589, column: 9, scope: !1009)
!1016 = !DILocation(line: 590, column: 5, scope: !1009)
!1017 = !DILocation(line: 591, column: 2, scope: !1004)
!1018 = distinct !DISubprogram(name: "run_test_67", scope: !3, file: !6, line: 594, type: !76, scopeLine: 594, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !1019)
!1019 = !{!1020, !1022}
!1020 = !DILocalVariable(name: "h", scope: !1021, file: !6, line: 595, type: !82, align: 1)
!1021 = distinct !DILexicalBlock(scope: !1018, file: !6, line: 595, column: 5)
!1022 = !DILocalVariable(name: "result", scope: !1023, file: !6, line: 596, type: !27, align: 4)
!1023 = distinct !DILexicalBlock(scope: !1021, file: !6, line: 596, column: 5)
!1024 = !DILocation(line: 595, column: 9, scope: !1021)
!1025 = !DILocation(line: 595, column: 22, scope: !1018)
!1026 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !1027)
!1027 = distinct !DILocation(line: 596, column: 34, scope: !1021)
!1028 = !DILocation(line: 596, column: 18, scope: !1021)
!1029 = !DILocation(line: 596, column: 9, scope: !1023)
!1030 = !DILocation(line: 597, column: 5, scope: !1023)
!1031 = !DILocation(line: 598, column: 2, scope: !1018)
!1032 = distinct !DISubprogram(name: "run_test_68", scope: !3, file: !6, line: 601, type: !76, scopeLine: 601, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !1033)
!1033 = !{!1034, !1036}
!1034 = !DILocalVariable(name: "h", scope: !1035, file: !6, line: 602, type: !82, align: 1)
!1035 = distinct !DILexicalBlock(scope: !1032, file: !6, line: 602, column: 5)
!1036 = !DILocalVariable(name: "result", scope: !1037, file: !6, line: 603, type: !27, align: 4)
!1037 = distinct !DILexicalBlock(scope: !1035, file: !6, line: 603, column: 5)
!1038 = !DILocation(line: 602, column: 9, scope: !1035)
!1039 = !DILocation(line: 602, column: 22, scope: !1032)
!1040 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !1041)
!1041 = distinct !DILocation(line: 603, column: 34, scope: !1035)
!1042 = !DILocation(line: 603, column: 18, scope: !1035)
!1043 = !DILocation(line: 603, column: 9, scope: !1037)
!1044 = !DILocation(line: 604, column: 5, scope: !1037)
!1045 = !DILocation(line: 605, column: 2, scope: !1032)
!1046 = distinct !DISubprogram(name: "run_test_69", scope: !3, file: !6, line: 608, type: !76, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !1047)
!1047 = !{!1048, !1050}
!1048 = !DILocalVariable(name: "h", scope: !1049, file: !6, line: 609, type: !82, align: 1)
!1049 = distinct !DILexicalBlock(scope: !1046, file: !6, line: 609, column: 5)
!1050 = !DILocalVariable(name: "result", scope: !1051, file: !6, line: 610, type: !27, align: 4)
!1051 = distinct !DILexicalBlock(scope: !1049, file: !6, line: 610, column: 5)
!1052 = !DILocation(line: 609, column: 9, scope: !1049)
!1053 = !DILocation(line: 609, column: 22, scope: !1046)
!1054 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !1055)
!1055 = distinct !DILocation(line: 610, column: 34, scope: !1049)
!1056 = !DILocation(line: 610, column: 18, scope: !1049)
!1057 = !DILocation(line: 610, column: 9, scope: !1051)
!1058 = !DILocation(line: 611, column: 5, scope: !1051)
!1059 = !DILocation(line: 612, column: 2, scope: !1046)
!1060 = distinct !DISubprogram(name: "run_test_70", scope: !3, file: !6, line: 615, type: !76, scopeLine: 615, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !1061)
!1061 = !{!1062, !1064}
!1062 = !DILocalVariable(name: "h", scope: !1063, file: !6, line: 616, type: !82, align: 1)
!1063 = distinct !DILexicalBlock(scope: !1060, file: !6, line: 616, column: 5)
!1064 = !DILocalVariable(name: "result", scope: !1065, file: !6, line: 617, type: !27, align: 4)
!1065 = distinct !DILexicalBlock(scope: !1063, file: !6, line: 617, column: 5)
!1066 = !DILocation(line: 616, column: 9, scope: !1063)
!1067 = !DILocation(line: 616, column: 22, scope: !1060)
!1068 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !1069)
!1069 = distinct !DILocation(line: 617, column: 34, scope: !1063)
!1070 = !DILocation(line: 617, column: 18, scope: !1063)
!1071 = !DILocation(line: 617, column: 9, scope: !1065)
!1072 = !DILocation(line: 618, column: 5, scope: !1065)
!1073 = !DILocation(line: 619, column: 2, scope: !1060)
!1074 = distinct !DISubprogram(name: "run_test_71", scope: !3, file: !6, line: 622, type: !76, scopeLine: 622, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !1075)
!1075 = !{!1076, !1078}
!1076 = !DILocalVariable(name: "h", scope: !1077, file: !6, line: 623, type: !82, align: 1)
!1077 = distinct !DILexicalBlock(scope: !1074, file: !6, line: 623, column: 5)
!1078 = !DILocalVariable(name: "result", scope: !1079, file: !6, line: 624, type: !27, align: 4)
!1079 = distinct !DILexicalBlock(scope: !1077, file: !6, line: 624, column: 5)
!1080 = !DILocation(line: 623, column: 9, scope: !1077)
!1081 = !DILocation(line: 623, column: 22, scope: !1074)
!1082 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !1083)
!1083 = distinct !DILocation(line: 624, column: 34, scope: !1077)
!1084 = !DILocation(line: 624, column: 18, scope: !1077)
!1085 = !DILocation(line: 624, column: 9, scope: !1079)
!1086 = !DILocation(line: 625, column: 5, scope: !1079)
!1087 = !DILocation(line: 626, column: 2, scope: !1074)
!1088 = distinct !DISubprogram(name: "run_test_72", scope: !3, file: !6, line: 629, type: !76, scopeLine: 629, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !1089)
!1089 = !{!1090, !1092}
!1090 = !DILocalVariable(name: "h", scope: !1091, file: !6, line: 630, type: !82, align: 1)
!1091 = distinct !DILexicalBlock(scope: !1088, file: !6, line: 630, column: 5)
!1092 = !DILocalVariable(name: "result", scope: !1093, file: !6, line: 631, type: !27, align: 4)
!1093 = distinct !DILexicalBlock(scope: !1091, file: !6, line: 631, column: 5)
!1094 = !DILocation(line: 630, column: 9, scope: !1091)
!1095 = !DILocation(line: 630, column: 22, scope: !1088)
!1096 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !1097)
!1097 = distinct !DILocation(line: 631, column: 34, scope: !1091)
!1098 = !DILocation(line: 631, column: 18, scope: !1091)
!1099 = !DILocation(line: 631, column: 9, scope: !1093)
!1100 = !DILocation(line: 632, column: 5, scope: !1093)
!1101 = !DILocation(line: 633, column: 2, scope: !1088)
!1102 = distinct !DISubprogram(name: "run_test_73", scope: !3, file: !6, line: 636, type: !76, scopeLine: 636, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !1103)
!1103 = !{!1104, !1106}
!1104 = !DILocalVariable(name: "h", scope: !1105, file: !6, line: 637, type: !82, align: 1)
!1105 = distinct !DILexicalBlock(scope: !1102, file: !6, line: 637, column: 5)
!1106 = !DILocalVariable(name: "result", scope: !1107, file: !6, line: 638, type: !27, align: 4)
!1107 = distinct !DILexicalBlock(scope: !1105, file: !6, line: 638, column: 5)
!1108 = !DILocation(line: 637, column: 9, scope: !1105)
!1109 = !DILocation(line: 637, column: 22, scope: !1102)
!1110 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !1111)
!1111 = distinct !DILocation(line: 638, column: 34, scope: !1105)
!1112 = !DILocation(line: 638, column: 18, scope: !1105)
!1113 = !DILocation(line: 638, column: 9, scope: !1107)
!1114 = !DILocation(line: 639, column: 5, scope: !1107)
!1115 = !DILocation(line: 640, column: 2, scope: !1102)
!1116 = distinct !DISubprogram(name: "run_test_74", scope: !3, file: !6, line: 643, type: !76, scopeLine: 643, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !1117)
!1117 = !{!1118, !1120}
!1118 = !DILocalVariable(name: "h", scope: !1119, file: !6, line: 644, type: !82, align: 1)
!1119 = distinct !DILexicalBlock(scope: !1116, file: !6, line: 644, column: 5)
!1120 = !DILocalVariable(name: "result", scope: !1121, file: !6, line: 645, type: !27, align: 4)
!1121 = distinct !DILexicalBlock(scope: !1119, file: !6, line: 645, column: 5)
!1122 = !DILocation(line: 644, column: 9, scope: !1119)
!1123 = !DILocation(line: 644, column: 22, scope: !1116)
!1124 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !1125)
!1125 = distinct !DILocation(line: 645, column: 34, scope: !1119)
!1126 = !DILocation(line: 645, column: 18, scope: !1119)
!1127 = !DILocation(line: 645, column: 9, scope: !1121)
!1128 = !DILocation(line: 646, column: 5, scope: !1121)
!1129 = !DILocation(line: 647, column: 2, scope: !1116)
!1130 = distinct !DISubprogram(name: "run_test_75", scope: !3, file: !6, line: 650, type: !76, scopeLine: 650, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !1131)
!1131 = !{!1132, !1134}
!1132 = !DILocalVariable(name: "h", scope: !1133, file: !6, line: 651, type: !82, align: 1)
!1133 = distinct !DILexicalBlock(scope: !1130, file: !6, line: 651, column: 5)
!1134 = !DILocalVariable(name: "result", scope: !1135, file: !6, line: 652, type: !27, align: 4)
!1135 = distinct !DILexicalBlock(scope: !1133, file: !6, line: 652, column: 5)
!1136 = !DILocation(line: 651, column: 9, scope: !1133)
!1137 = !DILocation(line: 651, column: 22, scope: !1130)
!1138 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !1139)
!1139 = distinct !DILocation(line: 652, column: 34, scope: !1133)
!1140 = !DILocation(line: 652, column: 18, scope: !1133)
!1141 = !DILocation(line: 652, column: 9, scope: !1135)
!1142 = !DILocation(line: 653, column: 5, scope: !1135)
!1143 = !DILocation(line: 654, column: 2, scope: !1130)
!1144 = distinct !DISubprogram(name: "run_test_76", scope: !3, file: !6, line: 657, type: !76, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !1145)
!1145 = !{!1146, !1148}
!1146 = !DILocalVariable(name: "h", scope: !1147, file: !6, line: 658, type: !82, align: 1)
!1147 = distinct !DILexicalBlock(scope: !1144, file: !6, line: 658, column: 5)
!1148 = !DILocalVariable(name: "result", scope: !1149, file: !6, line: 659, type: !27, align: 4)
!1149 = distinct !DILexicalBlock(scope: !1147, file: !6, line: 659, column: 5)
!1150 = !DILocation(line: 658, column: 9, scope: !1147)
!1151 = !DILocation(line: 658, column: 22, scope: !1144)
!1152 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !1153)
!1153 = distinct !DILocation(line: 659, column: 34, scope: !1147)
!1154 = !DILocation(line: 659, column: 18, scope: !1147)
!1155 = !DILocation(line: 659, column: 9, scope: !1149)
!1156 = !DILocation(line: 660, column: 5, scope: !1149)
!1157 = !DILocation(line: 661, column: 2, scope: !1144)
!1158 = distinct !DISubprogram(name: "run_test_77", scope: !3, file: !6, line: 664, type: !76, scopeLine: 664, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !1159)
!1159 = !{!1160, !1162}
!1160 = !DILocalVariable(name: "h", scope: !1161, file: !6, line: 665, type: !82, align: 1)
!1161 = distinct !DILexicalBlock(scope: !1158, file: !6, line: 665, column: 5)
!1162 = !DILocalVariable(name: "result", scope: !1163, file: !6, line: 666, type: !27, align: 4)
!1163 = distinct !DILexicalBlock(scope: !1161, file: !6, line: 666, column: 5)
!1164 = !DILocation(line: 665, column: 9, scope: !1161)
!1165 = !DILocation(line: 665, column: 22, scope: !1158)
!1166 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !1167)
!1167 = distinct !DILocation(line: 666, column: 34, scope: !1161)
!1168 = !DILocation(line: 666, column: 18, scope: !1161)
!1169 = !DILocation(line: 666, column: 9, scope: !1163)
!1170 = !DILocation(line: 667, column: 5, scope: !1163)
!1171 = !DILocation(line: 668, column: 2, scope: !1158)
!1172 = distinct !DISubprogram(name: "run_test_78", scope: !3, file: !6, line: 671, type: !76, scopeLine: 671, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !1173)
!1173 = !{!1174, !1176}
!1174 = !DILocalVariable(name: "h", scope: !1175, file: !6, line: 672, type: !82, align: 1)
!1175 = distinct !DILexicalBlock(scope: !1172, file: !6, line: 672, column: 5)
!1176 = !DILocalVariable(name: "result", scope: !1177, file: !6, line: 673, type: !27, align: 4)
!1177 = distinct !DILexicalBlock(scope: !1175, file: !6, line: 673, column: 5)
!1178 = !DILocation(line: 672, column: 9, scope: !1175)
!1179 = !DILocation(line: 672, column: 22, scope: !1172)
!1180 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !1181)
!1181 = distinct !DILocation(line: 673, column: 34, scope: !1175)
!1182 = !DILocation(line: 673, column: 18, scope: !1175)
!1183 = !DILocation(line: 673, column: 9, scope: !1177)
!1184 = !DILocation(line: 674, column: 5, scope: !1177)
!1185 = !DILocation(line: 675, column: 2, scope: !1172)
!1186 = distinct !DISubprogram(name: "run_test_79", scope: !3, file: !6, line: 678, type: !76, scopeLine: 678, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !1187)
!1187 = !{!1188, !1190}
!1188 = !DILocalVariable(name: "h", scope: !1189, file: !6, line: 679, type: !82, align: 1)
!1189 = distinct !DILexicalBlock(scope: !1186, file: !6, line: 679, column: 5)
!1190 = !DILocalVariable(name: "result", scope: !1191, file: !6, line: 680, type: !27, align: 4)
!1191 = distinct !DILexicalBlock(scope: !1189, file: !6, line: 680, column: 5)
!1192 = !DILocation(line: 679, column: 9, scope: !1189)
!1193 = !DILocation(line: 679, column: 22, scope: !1186)
!1194 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !1195)
!1195 = distinct !DILocation(line: 680, column: 34, scope: !1189)
!1196 = !DILocation(line: 680, column: 18, scope: !1189)
!1197 = !DILocation(line: 680, column: 9, scope: !1191)
!1198 = !DILocation(line: 681, column: 5, scope: !1191)
!1199 = !DILocation(line: 682, column: 2, scope: !1186)
!1200 = distinct !DISubprogram(name: "run_test_80", scope: !3, file: !6, line: 685, type: !76, scopeLine: 685, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !1201)
!1201 = !{!1202, !1204}
!1202 = !DILocalVariable(name: "h", scope: !1203, file: !6, line: 686, type: !82, align: 1)
!1203 = distinct !DILexicalBlock(scope: !1200, file: !6, line: 686, column: 5)
!1204 = !DILocalVariable(name: "result", scope: !1205, file: !6, line: 687, type: !27, align: 4)
!1205 = distinct !DILexicalBlock(scope: !1203, file: !6, line: 687, column: 5)
!1206 = !DILocation(line: 686, column: 9, scope: !1203)
!1207 = !DILocation(line: 686, column: 22, scope: !1200)
!1208 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !1209)
!1209 = distinct !DILocation(line: 687, column: 34, scope: !1203)
!1210 = !DILocation(line: 687, column: 18, scope: !1203)
!1211 = !DILocation(line: 687, column: 9, scope: !1205)
!1212 = !DILocation(line: 688, column: 5, scope: !1205)
!1213 = !DILocation(line: 689, column: 2, scope: !1200)
!1214 = distinct !DISubprogram(name: "run_test_81", scope: !3, file: !6, line: 692, type: !76, scopeLine: 692, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !1215)
!1215 = !{!1216, !1218}
!1216 = !DILocalVariable(name: "h", scope: !1217, file: !6, line: 693, type: !82, align: 1)
!1217 = distinct !DILexicalBlock(scope: !1214, file: !6, line: 693, column: 5)
!1218 = !DILocalVariable(name: "result", scope: !1219, file: !6, line: 694, type: !27, align: 4)
!1219 = distinct !DILexicalBlock(scope: !1217, file: !6, line: 694, column: 5)
!1220 = !DILocation(line: 693, column: 9, scope: !1217)
!1221 = !DILocation(line: 693, column: 22, scope: !1214)
!1222 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !1223)
!1223 = distinct !DILocation(line: 694, column: 34, scope: !1217)
!1224 = !DILocation(line: 694, column: 18, scope: !1217)
!1225 = !DILocation(line: 694, column: 9, scope: !1219)
!1226 = !DILocation(line: 695, column: 5, scope: !1219)
!1227 = !DILocation(line: 696, column: 2, scope: !1214)
!1228 = distinct !DISubprogram(name: "run_test_82", scope: !3, file: !6, line: 699, type: !76, scopeLine: 699, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !1229)
!1229 = !{!1230, !1232}
!1230 = !DILocalVariable(name: "h", scope: !1231, file: !6, line: 700, type: !82, align: 1)
!1231 = distinct !DILexicalBlock(scope: !1228, file: !6, line: 700, column: 5)
!1232 = !DILocalVariable(name: "result", scope: !1233, file: !6, line: 701, type: !27, align: 4)
!1233 = distinct !DILexicalBlock(scope: !1231, file: !6, line: 701, column: 5)
!1234 = !DILocation(line: 700, column: 9, scope: !1231)
!1235 = !DILocation(line: 700, column: 22, scope: !1228)
!1236 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !1237)
!1237 = distinct !DILocation(line: 701, column: 34, scope: !1231)
!1238 = !DILocation(line: 701, column: 18, scope: !1231)
!1239 = !DILocation(line: 701, column: 9, scope: !1233)
!1240 = !DILocation(line: 702, column: 5, scope: !1233)
!1241 = !DILocation(line: 703, column: 2, scope: !1228)
!1242 = distinct !DISubprogram(name: "run_test_83", scope: !3, file: !6, line: 706, type: !76, scopeLine: 706, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !1243)
!1243 = !{!1244, !1246}
!1244 = !DILocalVariable(name: "h", scope: !1245, file: !6, line: 707, type: !82, align: 1)
!1245 = distinct !DILexicalBlock(scope: !1242, file: !6, line: 707, column: 5)
!1246 = !DILocalVariable(name: "result", scope: !1247, file: !6, line: 708, type: !27, align: 4)
!1247 = distinct !DILexicalBlock(scope: !1245, file: !6, line: 708, column: 5)
!1248 = !DILocation(line: 707, column: 9, scope: !1245)
!1249 = !DILocation(line: 707, column: 22, scope: !1242)
!1250 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !1251)
!1251 = distinct !DILocation(line: 708, column: 34, scope: !1245)
!1252 = !DILocation(line: 708, column: 18, scope: !1245)
!1253 = !DILocation(line: 708, column: 9, scope: !1247)
!1254 = !DILocation(line: 709, column: 5, scope: !1247)
!1255 = !DILocation(line: 710, column: 2, scope: !1242)
!1256 = distinct !DISubprogram(name: "run_test_84", scope: !3, file: !6, line: 713, type: !76, scopeLine: 713, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !1257)
!1257 = !{!1258, !1260}
!1258 = !DILocalVariable(name: "h", scope: !1259, file: !6, line: 714, type: !82, align: 1)
!1259 = distinct !DILexicalBlock(scope: !1256, file: !6, line: 714, column: 5)
!1260 = !DILocalVariable(name: "result", scope: !1261, file: !6, line: 715, type: !27, align: 4)
!1261 = distinct !DILexicalBlock(scope: !1259, file: !6, line: 715, column: 5)
!1262 = !DILocation(line: 714, column: 9, scope: !1259)
!1263 = !DILocation(line: 714, column: 22, scope: !1256)
!1264 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !1265)
!1265 = distinct !DILocation(line: 715, column: 34, scope: !1259)
!1266 = !DILocation(line: 715, column: 18, scope: !1259)
!1267 = !DILocation(line: 715, column: 9, scope: !1261)
!1268 = !DILocation(line: 716, column: 5, scope: !1261)
!1269 = !DILocation(line: 717, column: 2, scope: !1256)
!1270 = distinct !DISubprogram(name: "run_test_85", scope: !3, file: !6, line: 720, type: !76, scopeLine: 720, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !1271)
!1271 = !{!1272, !1274}
!1272 = !DILocalVariable(name: "h", scope: !1273, file: !6, line: 721, type: !82, align: 1)
!1273 = distinct !DILexicalBlock(scope: !1270, file: !6, line: 721, column: 5)
!1274 = !DILocalVariable(name: "result", scope: !1275, file: !6, line: 722, type: !27, align: 4)
!1275 = distinct !DILexicalBlock(scope: !1273, file: !6, line: 722, column: 5)
!1276 = !DILocation(line: 721, column: 9, scope: !1273)
!1277 = !DILocation(line: 721, column: 22, scope: !1270)
!1278 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !1279)
!1279 = distinct !DILocation(line: 722, column: 34, scope: !1273)
!1280 = !DILocation(line: 722, column: 18, scope: !1273)
!1281 = !DILocation(line: 722, column: 9, scope: !1275)
!1282 = !DILocation(line: 723, column: 5, scope: !1275)
!1283 = !DILocation(line: 724, column: 2, scope: !1270)
!1284 = distinct !DISubprogram(name: "run_test_86", scope: !3, file: !6, line: 727, type: !76, scopeLine: 727, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !1285)
!1285 = !{!1286, !1288}
!1286 = !DILocalVariable(name: "h", scope: !1287, file: !6, line: 728, type: !82, align: 1)
!1287 = distinct !DILexicalBlock(scope: !1284, file: !6, line: 728, column: 5)
!1288 = !DILocalVariable(name: "result", scope: !1289, file: !6, line: 729, type: !27, align: 4)
!1289 = distinct !DILexicalBlock(scope: !1287, file: !6, line: 729, column: 5)
!1290 = !DILocation(line: 728, column: 9, scope: !1287)
!1291 = !DILocation(line: 728, column: 22, scope: !1284)
!1292 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !1293)
!1293 = distinct !DILocation(line: 729, column: 34, scope: !1287)
!1294 = !DILocation(line: 729, column: 18, scope: !1287)
!1295 = !DILocation(line: 729, column: 9, scope: !1289)
!1296 = !DILocation(line: 730, column: 5, scope: !1289)
!1297 = !DILocation(line: 731, column: 2, scope: !1284)
!1298 = distinct !DISubprogram(name: "run_test_87", scope: !3, file: !6, line: 734, type: !76, scopeLine: 734, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !1299)
!1299 = !{!1300, !1302}
!1300 = !DILocalVariable(name: "h", scope: !1301, file: !6, line: 735, type: !82, align: 1)
!1301 = distinct !DILexicalBlock(scope: !1298, file: !6, line: 735, column: 5)
!1302 = !DILocalVariable(name: "result", scope: !1303, file: !6, line: 736, type: !27, align: 4)
!1303 = distinct !DILexicalBlock(scope: !1301, file: !6, line: 736, column: 5)
!1304 = !DILocation(line: 735, column: 9, scope: !1301)
!1305 = !DILocation(line: 735, column: 22, scope: !1298)
!1306 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !1307)
!1307 = distinct !DILocation(line: 736, column: 34, scope: !1301)
!1308 = !DILocation(line: 736, column: 18, scope: !1301)
!1309 = !DILocation(line: 736, column: 9, scope: !1303)
!1310 = !DILocation(line: 737, column: 5, scope: !1303)
!1311 = !DILocation(line: 738, column: 2, scope: !1298)
!1312 = distinct !DISubprogram(name: "run_test_88", scope: !3, file: !6, line: 741, type: !76, scopeLine: 741, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !1313)
!1313 = !{!1314, !1316}
!1314 = !DILocalVariable(name: "h", scope: !1315, file: !6, line: 742, type: !82, align: 1)
!1315 = distinct !DILexicalBlock(scope: !1312, file: !6, line: 742, column: 5)
!1316 = !DILocalVariable(name: "result", scope: !1317, file: !6, line: 743, type: !27, align: 4)
!1317 = distinct !DILexicalBlock(scope: !1315, file: !6, line: 743, column: 5)
!1318 = !DILocation(line: 742, column: 9, scope: !1315)
!1319 = !DILocation(line: 742, column: 22, scope: !1312)
!1320 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !1321)
!1321 = distinct !DILocation(line: 743, column: 34, scope: !1315)
!1322 = !DILocation(line: 743, column: 18, scope: !1315)
!1323 = !DILocation(line: 743, column: 9, scope: !1317)
!1324 = !DILocation(line: 744, column: 5, scope: !1317)
!1325 = !DILocation(line: 745, column: 2, scope: !1312)
!1326 = distinct !DISubprogram(name: "run_test_89", scope: !3, file: !6, line: 748, type: !76, scopeLine: 748, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !1327)
!1327 = !{!1328, !1330}
!1328 = !DILocalVariable(name: "h", scope: !1329, file: !6, line: 749, type: !82, align: 1)
!1329 = distinct !DILexicalBlock(scope: !1326, file: !6, line: 749, column: 5)
!1330 = !DILocalVariable(name: "result", scope: !1331, file: !6, line: 750, type: !27, align: 4)
!1331 = distinct !DILexicalBlock(scope: !1329, file: !6, line: 750, column: 5)
!1332 = !DILocation(line: 749, column: 9, scope: !1329)
!1333 = !DILocation(line: 749, column: 22, scope: !1326)
!1334 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !1335)
!1335 = distinct !DILocation(line: 750, column: 34, scope: !1329)
!1336 = !DILocation(line: 750, column: 18, scope: !1329)
!1337 = !DILocation(line: 750, column: 9, scope: !1331)
!1338 = !DILocation(line: 751, column: 5, scope: !1331)
!1339 = !DILocation(line: 752, column: 2, scope: !1326)
!1340 = distinct !DISubprogram(name: "run_test_90", scope: !3, file: !6, line: 755, type: !76, scopeLine: 755, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !1341)
!1341 = !{!1342, !1344}
!1342 = !DILocalVariable(name: "h", scope: !1343, file: !6, line: 756, type: !82, align: 1)
!1343 = distinct !DILexicalBlock(scope: !1340, file: !6, line: 756, column: 5)
!1344 = !DILocalVariable(name: "result", scope: !1345, file: !6, line: 757, type: !27, align: 4)
!1345 = distinct !DILexicalBlock(scope: !1343, file: !6, line: 757, column: 5)
!1346 = !DILocation(line: 756, column: 9, scope: !1343)
!1347 = !DILocation(line: 756, column: 22, scope: !1340)
!1348 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !1349)
!1349 = distinct !DILocation(line: 757, column: 34, scope: !1343)
!1350 = !DILocation(line: 757, column: 18, scope: !1343)
!1351 = !DILocation(line: 757, column: 9, scope: !1345)
!1352 = !DILocation(line: 758, column: 5, scope: !1345)
!1353 = !DILocation(line: 759, column: 2, scope: !1340)
!1354 = distinct !DISubprogram(name: "run_test_91", scope: !3, file: !6, line: 762, type: !76, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !1355)
!1355 = !{!1356, !1358}
!1356 = !DILocalVariable(name: "h", scope: !1357, file: !6, line: 763, type: !82, align: 1)
!1357 = distinct !DILexicalBlock(scope: !1354, file: !6, line: 763, column: 5)
!1358 = !DILocalVariable(name: "result", scope: !1359, file: !6, line: 764, type: !27, align: 4)
!1359 = distinct !DILexicalBlock(scope: !1357, file: !6, line: 764, column: 5)
!1360 = !DILocation(line: 763, column: 9, scope: !1357)
!1361 = !DILocation(line: 763, column: 22, scope: !1354)
!1362 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !1363)
!1363 = distinct !DILocation(line: 764, column: 34, scope: !1357)
!1364 = !DILocation(line: 764, column: 18, scope: !1357)
!1365 = !DILocation(line: 764, column: 9, scope: !1359)
!1366 = !DILocation(line: 765, column: 5, scope: !1359)
!1367 = !DILocation(line: 766, column: 2, scope: !1354)
!1368 = distinct !DISubprogram(name: "run_test_92", scope: !3, file: !6, line: 769, type: !76, scopeLine: 769, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !1369)
!1369 = !{!1370, !1372}
!1370 = !DILocalVariable(name: "h", scope: !1371, file: !6, line: 770, type: !82, align: 1)
!1371 = distinct !DILexicalBlock(scope: !1368, file: !6, line: 770, column: 5)
!1372 = !DILocalVariable(name: "result", scope: !1373, file: !6, line: 771, type: !27, align: 4)
!1373 = distinct !DILexicalBlock(scope: !1371, file: !6, line: 771, column: 5)
!1374 = !DILocation(line: 770, column: 9, scope: !1371)
!1375 = !DILocation(line: 770, column: 22, scope: !1368)
!1376 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !1377)
!1377 = distinct !DILocation(line: 771, column: 34, scope: !1371)
!1378 = !DILocation(line: 771, column: 18, scope: !1371)
!1379 = !DILocation(line: 771, column: 9, scope: !1373)
!1380 = !DILocation(line: 772, column: 5, scope: !1373)
!1381 = !DILocation(line: 773, column: 2, scope: !1368)
!1382 = distinct !DISubprogram(name: "run_test_93", scope: !3, file: !6, line: 776, type: !76, scopeLine: 776, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !1383)
!1383 = !{!1384, !1386}
!1384 = !DILocalVariable(name: "h", scope: !1385, file: !6, line: 777, type: !82, align: 1)
!1385 = distinct !DILexicalBlock(scope: !1382, file: !6, line: 777, column: 5)
!1386 = !DILocalVariable(name: "result", scope: !1387, file: !6, line: 778, type: !27, align: 4)
!1387 = distinct !DILexicalBlock(scope: !1385, file: !6, line: 778, column: 5)
!1388 = !DILocation(line: 777, column: 9, scope: !1385)
!1389 = !DILocation(line: 777, column: 22, scope: !1382)
!1390 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !1391)
!1391 = distinct !DILocation(line: 778, column: 34, scope: !1385)
!1392 = !DILocation(line: 778, column: 18, scope: !1385)
!1393 = !DILocation(line: 778, column: 9, scope: !1387)
!1394 = !DILocation(line: 779, column: 5, scope: !1387)
!1395 = !DILocation(line: 780, column: 2, scope: !1382)
!1396 = distinct !DISubprogram(name: "run_test_94", scope: !3, file: !6, line: 783, type: !76, scopeLine: 783, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !1397)
!1397 = !{!1398, !1400}
!1398 = !DILocalVariable(name: "h", scope: !1399, file: !6, line: 784, type: !82, align: 1)
!1399 = distinct !DILexicalBlock(scope: !1396, file: !6, line: 784, column: 5)
!1400 = !DILocalVariable(name: "result", scope: !1401, file: !6, line: 785, type: !27, align: 4)
!1401 = distinct !DILexicalBlock(scope: !1399, file: !6, line: 785, column: 5)
!1402 = !DILocation(line: 784, column: 9, scope: !1399)
!1403 = !DILocation(line: 784, column: 22, scope: !1396)
!1404 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !1405)
!1405 = distinct !DILocation(line: 785, column: 34, scope: !1399)
!1406 = !DILocation(line: 785, column: 18, scope: !1399)
!1407 = !DILocation(line: 785, column: 9, scope: !1401)
!1408 = !DILocation(line: 786, column: 5, scope: !1401)
!1409 = !DILocation(line: 787, column: 2, scope: !1396)
!1410 = distinct !DISubprogram(name: "run_test_95", scope: !3, file: !6, line: 790, type: !76, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !1411)
!1411 = !{!1412, !1414}
!1412 = !DILocalVariable(name: "h", scope: !1413, file: !6, line: 791, type: !82, align: 1)
!1413 = distinct !DILexicalBlock(scope: !1410, file: !6, line: 791, column: 5)
!1414 = !DILocalVariable(name: "result", scope: !1415, file: !6, line: 792, type: !27, align: 4)
!1415 = distinct !DILexicalBlock(scope: !1413, file: !6, line: 792, column: 5)
!1416 = !DILocation(line: 791, column: 9, scope: !1413)
!1417 = !DILocation(line: 791, column: 22, scope: !1410)
!1418 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !1419)
!1419 = distinct !DILocation(line: 792, column: 34, scope: !1413)
!1420 = !DILocation(line: 792, column: 18, scope: !1413)
!1421 = !DILocation(line: 792, column: 9, scope: !1415)
!1422 = !DILocation(line: 793, column: 5, scope: !1415)
!1423 = !DILocation(line: 794, column: 2, scope: !1410)
!1424 = distinct !DISubprogram(name: "run_test_96", scope: !3, file: !6, line: 797, type: !76, scopeLine: 797, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !1425)
!1425 = !{!1426, !1428}
!1426 = !DILocalVariable(name: "h", scope: !1427, file: !6, line: 798, type: !82, align: 1)
!1427 = distinct !DILexicalBlock(scope: !1424, file: !6, line: 798, column: 5)
!1428 = !DILocalVariable(name: "result", scope: !1429, file: !6, line: 799, type: !27, align: 4)
!1429 = distinct !DILexicalBlock(scope: !1427, file: !6, line: 799, column: 5)
!1430 = !DILocation(line: 798, column: 9, scope: !1427)
!1431 = !DILocation(line: 798, column: 22, scope: !1424)
!1432 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !1433)
!1433 = distinct !DILocation(line: 799, column: 34, scope: !1427)
!1434 = !DILocation(line: 799, column: 18, scope: !1427)
!1435 = !DILocation(line: 799, column: 9, scope: !1429)
!1436 = !DILocation(line: 800, column: 5, scope: !1429)
!1437 = !DILocation(line: 801, column: 2, scope: !1424)
!1438 = distinct !DISubprogram(name: "run_test_97", scope: !3, file: !6, line: 804, type: !76, scopeLine: 804, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !1439)
!1439 = !{!1440, !1442}
!1440 = !DILocalVariable(name: "h", scope: !1441, file: !6, line: 805, type: !82, align: 1)
!1441 = distinct !DILexicalBlock(scope: !1438, file: !6, line: 805, column: 5)
!1442 = !DILocalVariable(name: "result", scope: !1443, file: !6, line: 806, type: !27, align: 4)
!1443 = distinct !DILexicalBlock(scope: !1441, file: !6, line: 806, column: 5)
!1444 = !DILocation(line: 805, column: 9, scope: !1441)
!1445 = !DILocation(line: 805, column: 22, scope: !1438)
!1446 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !1447)
!1447 = distinct !DILocation(line: 806, column: 34, scope: !1441)
!1448 = !DILocation(line: 806, column: 18, scope: !1441)
!1449 = !DILocation(line: 806, column: 9, scope: !1443)
!1450 = !DILocation(line: 807, column: 5, scope: !1443)
!1451 = !DILocation(line: 808, column: 2, scope: !1438)
!1452 = distinct !DISubprogram(name: "run_test_98", scope: !3, file: !6, line: 811, type: !76, scopeLine: 811, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !1453)
!1453 = !{!1454, !1456}
!1454 = !DILocalVariable(name: "h", scope: !1455, file: !6, line: 812, type: !82, align: 1)
!1455 = distinct !DILexicalBlock(scope: !1452, file: !6, line: 812, column: 5)
!1456 = !DILocalVariable(name: "result", scope: !1457, file: !6, line: 813, type: !27, align: 4)
!1457 = distinct !DILexicalBlock(scope: !1455, file: !6, line: 813, column: 5)
!1458 = !DILocation(line: 812, column: 9, scope: !1455)
!1459 = !DILocation(line: 812, column: 22, scope: !1452)
!1460 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !1461)
!1461 = distinct !DILocation(line: 813, column: 34, scope: !1455)
!1462 = !DILocation(line: 813, column: 18, scope: !1455)
!1463 = !DILocation(line: 813, column: 9, scope: !1457)
!1464 = !DILocation(line: 814, column: 5, scope: !1457)
!1465 = !DILocation(line: 815, column: 2, scope: !1452)
!1466 = distinct !DISubprogram(name: "run_test_99", scope: !3, file: !6, line: 818, type: !76, scopeLine: 818, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !1467)
!1467 = !{!1468, !1470}
!1468 = !DILocalVariable(name: "h", scope: !1469, file: !6, line: 819, type: !82, align: 1)
!1469 = distinct !DILexicalBlock(scope: !1466, file: !6, line: 819, column: 5)
!1470 = !DILocalVariable(name: "result", scope: !1471, file: !6, line: 820, type: !27, align: 4)
!1471 = distinct !DILexicalBlock(scope: !1469, file: !6, line: 820, column: 5)
!1472 = !DILocation(line: 819, column: 9, scope: !1469)
!1473 = !DILocation(line: 819, column: 22, scope: !1466)
!1474 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !1475)
!1475 = distinct !DILocation(line: 820, column: 34, scope: !1469)
!1476 = !DILocation(line: 820, column: 18, scope: !1469)
!1477 = !DILocation(line: 820, column: 9, scope: !1471)
!1478 = !DILocation(line: 821, column: 5, scope: !1471)
!1479 = !DILocation(line: 822, column: 2, scope: !1466)
!1480 = distinct !DISubprogram(name: "run_test_100", scope: !3, file: !6, line: 825, type: !76, scopeLine: 825, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !1481)
!1481 = !{!1482, !1484}
!1482 = !DILocalVariable(name: "h", scope: !1483, file: !6, line: 826, type: !82, align: 1)
!1483 = distinct !DILexicalBlock(scope: !1480, file: !6, line: 826, column: 5)
!1484 = !DILocalVariable(name: "result", scope: !1485, file: !6, line: 827, type: !27, align: 4)
!1485 = distinct !DILexicalBlock(scope: !1483, file: !6, line: 827, column: 5)
!1486 = !DILocation(line: 826, column: 9, scope: !1483)
!1487 = !DILocation(line: 826, column: 22, scope: !1480)
!1488 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !1489)
!1489 = distinct !DILocation(line: 827, column: 34, scope: !1483)
!1490 = !DILocation(line: 827, column: 18, scope: !1483)
!1491 = !DILocation(line: 827, column: 9, scope: !1485)
!1492 = !DILocation(line: 828, column: 5, scope: !1485)
!1493 = !DILocation(line: 829, column: 2, scope: !1480)
!1494 = distinct !DISubprogram(name: "run_test_101", scope: !3, file: !6, line: 832, type: !76, scopeLine: 832, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !1495)
!1495 = !{!1496, !1498}
!1496 = !DILocalVariable(name: "h", scope: !1497, file: !6, line: 833, type: !82, align: 1)
!1497 = distinct !DILexicalBlock(scope: !1494, file: !6, line: 833, column: 5)
!1498 = !DILocalVariable(name: "result", scope: !1499, file: !6, line: 834, type: !27, align: 4)
!1499 = distinct !DILexicalBlock(scope: !1497, file: !6, line: 834, column: 5)
!1500 = !DILocation(line: 833, column: 9, scope: !1497)
!1501 = !DILocation(line: 833, column: 22, scope: !1494)
!1502 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !1503)
!1503 = distinct !DILocation(line: 834, column: 34, scope: !1497)
!1504 = !DILocation(line: 834, column: 18, scope: !1497)
!1505 = !DILocation(line: 834, column: 9, scope: !1499)
!1506 = !DILocation(line: 835, column: 5, scope: !1499)
!1507 = !DILocation(line: 836, column: 2, scope: !1494)
!1508 = distinct !DISubprogram(name: "run_test_102", scope: !3, file: !6, line: 839, type: !76, scopeLine: 839, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !1509)
!1509 = !{!1510, !1512}
!1510 = !DILocalVariable(name: "h", scope: !1511, file: !6, line: 840, type: !82, align: 1)
!1511 = distinct !DILexicalBlock(scope: !1508, file: !6, line: 840, column: 5)
!1512 = !DILocalVariable(name: "result", scope: !1513, file: !6, line: 841, type: !27, align: 4)
!1513 = distinct !DILexicalBlock(scope: !1511, file: !6, line: 841, column: 5)
!1514 = !DILocation(line: 840, column: 9, scope: !1511)
!1515 = !DILocation(line: 840, column: 22, scope: !1508)
!1516 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !1517)
!1517 = distinct !DILocation(line: 841, column: 34, scope: !1511)
!1518 = !DILocation(line: 841, column: 18, scope: !1511)
!1519 = !DILocation(line: 841, column: 9, scope: !1513)
!1520 = !DILocation(line: 842, column: 5, scope: !1513)
!1521 = !DILocation(line: 843, column: 2, scope: !1508)
!1522 = distinct !DISubprogram(name: "run_test_103", scope: !3, file: !6, line: 846, type: !76, scopeLine: 846, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !1523)
!1523 = !{!1524, !1526}
!1524 = !DILocalVariable(name: "h", scope: !1525, file: !6, line: 847, type: !82, align: 1)
!1525 = distinct !DILexicalBlock(scope: !1522, file: !6, line: 847, column: 5)
!1526 = !DILocalVariable(name: "result", scope: !1527, file: !6, line: 848, type: !27, align: 4)
!1527 = distinct !DILexicalBlock(scope: !1525, file: !6, line: 848, column: 5)
!1528 = !DILocation(line: 847, column: 9, scope: !1525)
!1529 = !DILocation(line: 847, column: 22, scope: !1522)
!1530 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !1531)
!1531 = distinct !DILocation(line: 848, column: 34, scope: !1525)
!1532 = !DILocation(line: 848, column: 18, scope: !1525)
!1533 = !DILocation(line: 848, column: 9, scope: !1527)
!1534 = !DILocation(line: 849, column: 5, scope: !1527)
!1535 = !DILocation(line: 850, column: 2, scope: !1522)
!1536 = distinct !DISubprogram(name: "run_test_104", scope: !3, file: !6, line: 853, type: !76, scopeLine: 853, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !1537)
!1537 = !{!1538, !1540}
!1538 = !DILocalVariable(name: "h", scope: !1539, file: !6, line: 854, type: !82, align: 1)
!1539 = distinct !DILexicalBlock(scope: !1536, file: !6, line: 854, column: 5)
!1540 = !DILocalVariable(name: "result", scope: !1541, file: !6, line: 855, type: !27, align: 4)
!1541 = distinct !DILexicalBlock(scope: !1539, file: !6, line: 855, column: 5)
!1542 = !DILocation(line: 854, column: 9, scope: !1539)
!1543 = !DILocation(line: 854, column: 22, scope: !1536)
!1544 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !1545)
!1545 = distinct !DILocation(line: 855, column: 34, scope: !1539)
!1546 = !DILocation(line: 855, column: 18, scope: !1539)
!1547 = !DILocation(line: 855, column: 9, scope: !1541)
!1548 = !DILocation(line: 856, column: 5, scope: !1541)
!1549 = !DILocation(line: 857, column: 2, scope: !1536)
!1550 = distinct !DISubprogram(name: "run_test_105", scope: !3, file: !6, line: 860, type: !76, scopeLine: 860, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !1551)
!1551 = !{!1552, !1554}
!1552 = !DILocalVariable(name: "h", scope: !1553, file: !6, line: 861, type: !82, align: 1)
!1553 = distinct !DILexicalBlock(scope: !1550, file: !6, line: 861, column: 5)
!1554 = !DILocalVariable(name: "result", scope: !1555, file: !6, line: 862, type: !27, align: 4)
!1555 = distinct !DILexicalBlock(scope: !1553, file: !6, line: 862, column: 5)
!1556 = !DILocation(line: 861, column: 9, scope: !1553)
!1557 = !DILocation(line: 861, column: 22, scope: !1550)
!1558 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !1559)
!1559 = distinct !DILocation(line: 862, column: 34, scope: !1553)
!1560 = !DILocation(line: 862, column: 18, scope: !1553)
!1561 = !DILocation(line: 862, column: 9, scope: !1555)
!1562 = !DILocation(line: 863, column: 5, scope: !1555)
!1563 = !DILocation(line: 864, column: 2, scope: !1550)
!1564 = distinct !DISubprogram(name: "run_test_106", scope: !3, file: !6, line: 867, type: !76, scopeLine: 867, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !1565)
!1565 = !{!1566, !1568}
!1566 = !DILocalVariable(name: "h", scope: !1567, file: !6, line: 868, type: !82, align: 1)
!1567 = distinct !DILexicalBlock(scope: !1564, file: !6, line: 868, column: 5)
!1568 = !DILocalVariable(name: "result", scope: !1569, file: !6, line: 869, type: !27, align: 4)
!1569 = distinct !DILexicalBlock(scope: !1567, file: !6, line: 869, column: 5)
!1570 = !DILocation(line: 868, column: 9, scope: !1567)
!1571 = !DILocation(line: 868, column: 22, scope: !1564)
!1572 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !1573)
!1573 = distinct !DILocation(line: 869, column: 34, scope: !1567)
!1574 = !DILocation(line: 869, column: 18, scope: !1567)
!1575 = !DILocation(line: 869, column: 9, scope: !1569)
!1576 = !DILocation(line: 870, column: 5, scope: !1569)
!1577 = !DILocation(line: 871, column: 2, scope: !1564)
!1578 = distinct !DISubprogram(name: "run_test_107", scope: !3, file: !6, line: 874, type: !76, scopeLine: 874, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !1579)
!1579 = !{!1580, !1582}
!1580 = !DILocalVariable(name: "h", scope: !1581, file: !6, line: 875, type: !82, align: 1)
!1581 = distinct !DILexicalBlock(scope: !1578, file: !6, line: 875, column: 5)
!1582 = !DILocalVariable(name: "result", scope: !1583, file: !6, line: 876, type: !27, align: 4)
!1583 = distinct !DILexicalBlock(scope: !1581, file: !6, line: 876, column: 5)
!1584 = !DILocation(line: 875, column: 9, scope: !1581)
!1585 = !DILocation(line: 875, column: 22, scope: !1578)
!1586 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !1587)
!1587 = distinct !DILocation(line: 876, column: 34, scope: !1581)
!1588 = !DILocation(line: 876, column: 18, scope: !1581)
!1589 = !DILocation(line: 876, column: 9, scope: !1583)
!1590 = !DILocation(line: 877, column: 5, scope: !1583)
!1591 = !DILocation(line: 878, column: 2, scope: !1578)
!1592 = distinct !DISubprogram(name: "run_test_110", scope: !3, file: !6, line: 881, type: !76, scopeLine: 881, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !1593)
!1593 = !{!1594, !1596}
!1594 = !DILocalVariable(name: "h", scope: !1595, file: !6, line: 882, type: !82, align: 1)
!1595 = distinct !DILexicalBlock(scope: !1592, file: !6, line: 882, column: 5)
!1596 = !DILocalVariable(name: "result", scope: !1597, file: !6, line: 883, type: !27, align: 4)
!1597 = distinct !DILexicalBlock(scope: !1595, file: !6, line: 883, column: 5)
!1598 = !DILocation(line: 882, column: 9, scope: !1595)
!1599 = !DILocation(line: 882, column: 22, scope: !1592)
!1600 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !1601)
!1601 = distinct !DILocation(line: 883, column: 34, scope: !1595)
!1602 = !DILocation(line: 883, column: 18, scope: !1595)
!1603 = !DILocation(line: 883, column: 9, scope: !1597)
!1604 = !DILocation(line: 884, column: 5, scope: !1597)
!1605 = !DILocation(line: 885, column: 2, scope: !1592)
!1606 = distinct !DISubprogram(name: "run_test_111", scope: !3, file: !6, line: 888, type: !76, scopeLine: 888, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !1607)
!1607 = !{!1608, !1610}
!1608 = !DILocalVariable(name: "h", scope: !1609, file: !6, line: 889, type: !82, align: 1)
!1609 = distinct !DILexicalBlock(scope: !1606, file: !6, line: 889, column: 5)
!1610 = !DILocalVariable(name: "result", scope: !1611, file: !6, line: 890, type: !27, align: 4)
!1611 = distinct !DILexicalBlock(scope: !1609, file: !6, line: 890, column: 5)
!1612 = !DILocation(line: 889, column: 9, scope: !1609)
!1613 = !DILocation(line: 889, column: 22, scope: !1606)
!1614 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !1615)
!1615 = distinct !DILocation(line: 890, column: 34, scope: !1609)
!1616 = !DILocation(line: 890, column: 18, scope: !1609)
!1617 = !DILocation(line: 890, column: 9, scope: !1611)
!1618 = !DILocation(line: 891, column: 5, scope: !1611)
!1619 = !DILocation(line: 892, column: 2, scope: !1606)
!1620 = distinct !DISubprogram(name: "run_test_112", scope: !3, file: !6, line: 895, type: !76, scopeLine: 895, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !1621)
!1621 = !{!1622, !1624}
!1622 = !DILocalVariable(name: "h", scope: !1623, file: !6, line: 896, type: !82, align: 1)
!1623 = distinct !DILexicalBlock(scope: !1620, file: !6, line: 896, column: 5)
!1624 = !DILocalVariable(name: "result", scope: !1625, file: !6, line: 897, type: !27, align: 4)
!1625 = distinct !DILexicalBlock(scope: !1623, file: !6, line: 897, column: 5)
!1626 = !DILocation(line: 896, column: 9, scope: !1623)
!1627 = !DILocation(line: 896, column: 22, scope: !1620)
!1628 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !1629)
!1629 = distinct !DILocation(line: 897, column: 34, scope: !1623)
!1630 = !DILocation(line: 897, column: 18, scope: !1623)
!1631 = !DILocation(line: 897, column: 9, scope: !1625)
!1632 = !DILocation(line: 898, column: 5, scope: !1625)
!1633 = !DILocation(line: 899, column: 2, scope: !1620)
!1634 = distinct !DISubprogram(name: "run_test_113", scope: !3, file: !6, line: 902, type: !76, scopeLine: 902, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !1635)
!1635 = !{!1636, !1638}
!1636 = !DILocalVariable(name: "h", scope: !1637, file: !6, line: 903, type: !82, align: 1)
!1637 = distinct !DILexicalBlock(scope: !1634, file: !6, line: 903, column: 5)
!1638 = !DILocalVariable(name: "result", scope: !1639, file: !6, line: 904, type: !27, align: 4)
!1639 = distinct !DILexicalBlock(scope: !1637, file: !6, line: 904, column: 5)
!1640 = !DILocation(line: 903, column: 9, scope: !1637)
!1641 = !DILocation(line: 903, column: 22, scope: !1634)
!1642 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !1643)
!1643 = distinct !DILocation(line: 904, column: 34, scope: !1637)
!1644 = !DILocation(line: 904, column: 18, scope: !1637)
!1645 = !DILocation(line: 904, column: 9, scope: !1639)
!1646 = !DILocation(line: 905, column: 5, scope: !1639)
!1647 = !DILocation(line: 906, column: 2, scope: !1634)
!1648 = distinct !DISubprogram(name: "run_test_115", scope: !3, file: !6, line: 909, type: !76, scopeLine: 909, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !1649)
!1649 = !{!1650, !1652}
!1650 = !DILocalVariable(name: "h", scope: !1651, file: !6, line: 910, type: !82, align: 1)
!1651 = distinct !DILexicalBlock(scope: !1648, file: !6, line: 910, column: 5)
!1652 = !DILocalVariable(name: "result", scope: !1653, file: !6, line: 911, type: !27, align: 4)
!1653 = distinct !DILexicalBlock(scope: !1651, file: !6, line: 911, column: 5)
!1654 = !DILocation(line: 910, column: 9, scope: !1651)
!1655 = !DILocation(line: 910, column: 22, scope: !1648)
!1656 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !1657)
!1657 = distinct !DILocation(line: 911, column: 34, scope: !1651)
!1658 = !DILocation(line: 911, column: 18, scope: !1651)
!1659 = !DILocation(line: 911, column: 9, scope: !1653)
!1660 = !DILocation(line: 912, column: 5, scope: !1653)
!1661 = !DILocation(line: 913, column: 2, scope: !1648)
!1662 = distinct !DISubprogram(name: "run_test_117", scope: !3, file: !6, line: 916, type: !76, scopeLine: 916, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !1663)
!1663 = !{!1664, !1666}
!1664 = !DILocalVariable(name: "h", scope: !1665, file: !6, line: 917, type: !82, align: 1)
!1665 = distinct !DILexicalBlock(scope: !1662, file: !6, line: 917, column: 5)
!1666 = !DILocalVariable(name: "result", scope: !1667, file: !6, line: 918, type: !27, align: 4)
!1667 = distinct !DILexicalBlock(scope: !1665, file: !6, line: 918, column: 5)
!1668 = !DILocation(line: 917, column: 9, scope: !1665)
!1669 = !DILocation(line: 917, column: 22, scope: !1662)
!1670 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !1671)
!1671 = distinct !DILocation(line: 918, column: 34, scope: !1665)
!1672 = !DILocation(line: 918, column: 18, scope: !1665)
!1673 = !DILocation(line: 918, column: 9, scope: !1667)
!1674 = !DILocation(line: 919, column: 5, scope: !1667)
!1675 = !DILocation(line: 920, column: 2, scope: !1662)
!1676 = distinct !DISubprogram(name: "run_test_118", scope: !3, file: !6, line: 923, type: !76, scopeLine: 923, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !1677)
!1677 = !{!1678, !1680}
!1678 = !DILocalVariable(name: "h", scope: !1679, file: !6, line: 924, type: !82, align: 1)
!1679 = distinct !DILexicalBlock(scope: !1676, file: !6, line: 924, column: 5)
!1680 = !DILocalVariable(name: "result", scope: !1681, file: !6, line: 925, type: !27, align: 4)
!1681 = distinct !DILexicalBlock(scope: !1679, file: !6, line: 925, column: 5)
!1682 = !DILocation(line: 924, column: 9, scope: !1679)
!1683 = !DILocation(line: 924, column: 22, scope: !1676)
!1684 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !1685)
!1685 = distinct !DILocation(line: 925, column: 34, scope: !1679)
!1686 = !DILocation(line: 925, column: 18, scope: !1679)
!1687 = !DILocation(line: 925, column: 9, scope: !1681)
!1688 = !DILocation(line: 926, column: 5, scope: !1681)
!1689 = !DILocation(line: 927, column: 2, scope: !1676)
!1690 = distinct !DISubprogram(name: "run_test_119", scope: !3, file: !6, line: 930, type: !76, scopeLine: 930, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !1691)
!1691 = !{!1692, !1694}
!1692 = !DILocalVariable(name: "h", scope: !1693, file: !6, line: 931, type: !82, align: 1)
!1693 = distinct !DILexicalBlock(scope: !1690, file: !6, line: 931, column: 5)
!1694 = !DILocalVariable(name: "result", scope: !1695, file: !6, line: 932, type: !27, align: 4)
!1695 = distinct !DILexicalBlock(scope: !1693, file: !6, line: 932, column: 5)
!1696 = !DILocation(line: 931, column: 9, scope: !1693)
!1697 = !DILocation(line: 931, column: 22, scope: !1690)
!1698 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !1699)
!1699 = distinct !DILocation(line: 932, column: 34, scope: !1693)
!1700 = !DILocation(line: 932, column: 18, scope: !1693)
!1701 = !DILocation(line: 932, column: 9, scope: !1695)
!1702 = !DILocation(line: 933, column: 5, scope: !1695)
!1703 = !DILocation(line: 934, column: 2, scope: !1690)
!1704 = distinct !DISubprogram(name: "run_test_120", scope: !3, file: !6, line: 937, type: !76, scopeLine: 937, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !1705)
!1705 = !{!1706, !1708}
!1706 = !DILocalVariable(name: "h", scope: !1707, file: !6, line: 938, type: !82, align: 1)
!1707 = distinct !DILexicalBlock(scope: !1704, file: !6, line: 938, column: 5)
!1708 = !DILocalVariable(name: "result", scope: !1709, file: !6, line: 939, type: !27, align: 4)
!1709 = distinct !DILexicalBlock(scope: !1707, file: !6, line: 939, column: 5)
!1710 = !DILocation(line: 938, column: 9, scope: !1707)
!1711 = !DILocation(line: 938, column: 22, scope: !1704)
!1712 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !1713)
!1713 = distinct !DILocation(line: 939, column: 34, scope: !1707)
!1714 = !DILocation(line: 939, column: 18, scope: !1707)
!1715 = !DILocation(line: 939, column: 9, scope: !1709)
!1716 = !DILocation(line: 940, column: 5, scope: !1709)
!1717 = !DILocation(line: 941, column: 2, scope: !1704)
!1718 = distinct !DISubprogram(name: "run_test_121", scope: !3, file: !6, line: 944, type: !76, scopeLine: 944, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, templateParams: !31, retainedNodes: !1719)
!1719 = !{!1720, !1722}
!1720 = !DILocalVariable(name: "h", scope: !1721, file: !6, line: 945, type: !82, align: 1)
!1721 = distinct !DILexicalBlock(scope: !1718, file: !6, line: 945, column: 5)
!1722 = !DILocalVariable(name: "result", scope: !1723, file: !6, line: 946, type: !27, align: 4)
!1723 = distinct !DILexicalBlock(scope: !1721, file: !6, line: 946, column: 5)
!1724 = !DILocation(line: 945, column: 9, scope: !1721)
!1725 = !DILocation(line: 945, column: 22, scope: !1718)
!1726 = !DILocation(line: 476, column: 25, scope: !88, inlinedAt: !1727)
!1727 = distinct !DILocation(line: 946, column: 34, scope: !1721)
!1728 = !DILocation(line: 946, column: 18, scope: !1721)
!1729 = !DILocation(line: 946, column: 9, scope: !1723)
!1730 = !DILocation(line: 947, column: 5, scope: !1723)
!1731 = !DILocation(line: 948, column: 2, scope: !1718)
