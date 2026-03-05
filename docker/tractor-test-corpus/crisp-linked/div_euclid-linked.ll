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

@alloc_f5ffd2fd1476bab43ad89fb40c72d0c5 = private unnamed_addr constant <{ [10 x i8] }> <{ [10 x i8] c"src/lib.rs" }>, align 1
@alloc_0cf2542d014ab3f8b5dadcef6a673369 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\0F\00\00\00\14\00\00\00" }>, align 8
@str.0 = internal constant [25 x i8] c"attempt to divide by zero"
@str.1 = internal constant [31 x i8] c"attempt to divide with overflow"
@alloc_75188c60c4f23d417157860609808756 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\11\00\00\00\18\00\00\00" }>, align 8
@str.2 = internal constant [31 x i8] c"attempt to negate with overflow"
@alloc_f9e1199eba90f9006387f5eb0fe13e7c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\11\00\00\00\12\00\00\00" }>, align 8
@alloc_4503fa26f020438fb7aac06f6b218b70 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\11\00\00\00\11\00\00\00" }>, align 8
@alloc_5bd033a6f4442627afebe309b205e8c9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\12\00\00\00\16\00\00\00" }>, align 8
@alloc_986c81bdbc743a5bfaebb93ba69e7c6d = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\12\00\00\00\11\00\00\00" }>, align 8
@str.3 = internal constant [57 x i8] c"attempt to calculate the remainder with a divisor of zero"
@str.4 = internal constant [48 x i8] c"attempt to calculate the remainder with overflow"
@alloc_cf6d4434e80fd53a8775a9fbf69f9171 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\19\00\00\00\13\00\00\00" }>, align 8
@alloc_30d2f351ee1081d320581b5f0af047f2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\19\00\00\00\12\00\00\00" }>, align 8
@alloc_03b04ff9f3781ce088d6b5abb122a731 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\19\00\00\00\11\00\00\00" }>, align 8
@alloc_31f31033fb1da14a8e346e540c3856dd = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\1A\00\00\00\13\00\00\00" }>, align 8
@alloc_8c30797398ded25de77773e2a3132254 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\1A\00\00\00\12\00\00\00" }>, align 8
@alloc_d2150a018abfee9c9cffc55a6d963ef5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\1A\00\00\00\11\00\00\00" }>, align 8
@alloc_c7ad444e4217bf96568d3e4838ae0630 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\1C\00\00\00\11\00\00\00" }>, align 8
@alloc_1f66a3454f8cc3176ff181fc85b02664 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\1C\00\00\00\17\00\00\00" }>, align 8
@alloc_3eadb4b87704d559830dff9205f8ea5a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\1D\00\00\00\13\00\00\00" }>, align 8
@alloc_2b53ad5d2e67eac69aae26e48249b34e = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\1D\00\00\00\19\00\00\00" }>, align 8
@alloc_f77727e0198e98ddb42ee748d53a8088 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\1D\00\00\00\12\00\00\00" }>, align 8
@alloc_93d1808b37db51c373a17385d767dcf0 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\1D\00\00\00\11\00\00\00" }>, align 8
@alloc_b4dcad80c265490ad5b45192369a73c0 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00 \00\00\00\16\00\00\00" }>, align 8
@str.5 = internal constant [33 x i8] c"attempt to multiply with overflow"
@alloc_39902beb6a679df46f55d8c1c1dfebd4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00 \00\00\00\11\00\00\00" }>, align 8
@str.6 = internal constant [33 x i8] c"attempt to subtract with overflow"
@alloc_8d5651603a60ec71bdcc9526beb30d1e = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00#\00\00\00\10\00\00\00" }>, align 8
@str.7 = internal constant [28 x i8] c"attempt to add with overflow"
@alloc_8fabf1756713a904eb1c7b60a8bf26cd = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00#\00\00\00\0F\00\00\00" }>, align 8
@alloc_de88bd72c61af639f5234bd221192523 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00#\00\00\00\0E\00\00\00" }>, align 8
@alloc_e6781611c0417d45918ac3a07fa0183c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00#\00\00\00\0D\00\00\00" }>, align 8
@alloc_d420e262e779bac551caa9e357918eaf = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00$\00\00\00\10\00\00\00" }>, align 8
@alloc_351c3dbd122c617a5fc359880652a8c5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00$\00\00\00\0F\00\00\00" }>, align 8
@alloc_81ca8dc6f0d3dd954595c00838698c19 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00$\00\00\00\0E\00\00\00" }>, align 8
@alloc_28ab973a546b8fda2610cab09f428f10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00$\00\00\00\0D\00\00\00" }>, align 8
@alloc_6cf968ed00d141d95694218e7c670989 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00&\00\00\00\0E\00\00\00" }>, align 8
@alloc_33b03bc3a901f56fbb31d0177eb808c1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00&\00\00\00\0D\00\00\00" }>, align 8
@alloc_d042c41ae0a0d64a6ee09351ccfd2bf1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00&\00\00\00\1A\00\00\00" }>, align 8
@alloc_0f3f08c0fcc92eb0c09c8a082f113d87 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00'\00\00\00\10\00\00\00" }>, align 8
@alloc_46a7d6999291aa1096d6899c79c18e4d = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00'\00\00\00\0F\00\00\00" }>, align 8
@alloc_9a0e2a26b8c9a91b4505368975743ddf = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00'\00\00\00\1C\00\00\00" }>, align 8
@alloc_59887dc89c76b1aa41f0a49df15d100c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00'\00\00\00\0E\00\00\00" }>, align 8
@alloc_0d8fa2b036ae155370ef10cd2143e520 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00'\00\00\00\0D\00\00\00" }>, align 8
@alloc_314f172d9f0624fee38d5cae2e28a9dd = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00.\00\00\00\09\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define i32 @div_euclid(i32 %v1, i32 %v2) unnamed_addr #0 !dbg !6 {
start:
  %v2.dbg.spill = alloca i32, align 4
  %v1.dbg.spill = alloca i32, align 4
  store i32 %v1, ptr %v1.dbg.spill, align 4
    #dbg_declare(ptr %v1.dbg.spill, !15, !DIExpression(), !18)
  store i32 %v2, ptr %v2.dbg.spill, align 4
    #dbg_declare(ptr %v2.dbg.spill, !16, !DIExpression(), !19)
  %0 = call i32 @_ZN14div_euclid_lib3src3lib10div_euclid17he838aad830bf4d22E(i32 %v1, i32 %v2), !dbg !20
  ret i32 %0, !dbg !21
}

; Function Attrs: nonlazybind uwtable
define internal i32 @_ZN14div_euclid_lib3src3lib10div_euclid17he838aad830bf4d22E(i32 %v1, i32 %v2) unnamed_addr #0 !dbg !22 {
start:
  %min.dbg.spill = alloca i32, align 4
  %v2.dbg.spill = alloca i32, align 4
  %v1.dbg.spill = alloca i32, align 4
  %_118 = alloca i32, align 4
  %r = alloca i32, align 4
  %q = alloca i32, align 4
  %0 = alloca i32, align 4
  store i32 %v1, ptr %v1.dbg.spill, align 4
    #dbg_declare(ptr %v1.dbg.spill, !24, !DIExpression(), !32)
  store i32 %v2, ptr %v2.dbg.spill, align 4
    #dbg_declare(ptr %v2.dbg.spill, !25, !DIExpression(), !33)
    #dbg_declare(ptr %q, !28, !DIExpression(), !34)
    #dbg_declare(ptr %r, !30, !DIExpression(), !35)
  %1 = icmp eq i32 %v2, 0, !dbg !36
  br i1 %1, label %bb1, label %bb2, !dbg !36

bb1:                                              ; preds = %start
  store i32 0, ptr %0, align 4, !dbg !37
  br label %bb77, !dbg !38

bb2:                                              ; preds = %start
  store i32 -2147483648, ptr %min.dbg.spill, align 4, !dbg !41
    #dbg_declare(ptr %min.dbg.spill, !26, !DIExpression(), !42)
  %_6 = icmp sge i32 %v1, 0, !dbg !43
  br i1 %_6, label %bb3, label %bb4, !dbg !43

bb4:                                              ; preds = %bb2
  %_27 = icmp ne i32 %v1, -2147483648, !dbg !44
  br i1 %_27, label %bb18, label %bb19, !dbg !44

bb3:                                              ; preds = %bb2
  %_7 = icmp sge i32 %v2, 0, !dbg !45
  br i1 %_7, label %bb5, label %bb8, !dbg !45

bb8:                                              ; preds = %bb3
  %_12 = icmp ne i32 %v2, -2147483648, !dbg !46
  br i1 %_12, label %bb9, label %bb17, !dbg !46

bb5:                                              ; preds = %bb3
  %_8 = icmp eq i32 %v2, 0, !dbg !47
  %2 = call i1 @llvm.expect.i1(i1 %_8, i1 false), !dbg !47
  br i1 %2, label %panic, label %bb6, !dbg !47

bb6:                                              ; preds = %bb5
  %_9 = icmp eq i32 %v2, -1, !dbg !47
  %_10 = icmp eq i32 %v1, -2147483648, !dbg !47
  %_11 = and i1 %_9, %_10, !dbg !47
  %3 = call i1 @llvm.expect.i1(i1 %_11, i1 false), !dbg !47
  br i1 %3, label %panic1, label %bb7, !dbg !47

panic:                                            ; preds = %bb5
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.0, i64 25, ptr align 8 @alloc_0cf2542d014ab3f8b5dadcef6a673369) #4, !dbg !47
  unreachable, !dbg !47

bb7:                                              ; preds = %bb6
  %4 = sdiv i32 %v1, %v2, !dbg !47
  store i32 %4, ptr %0, align 4, !dbg !47
  br label %bb77, !dbg !38

panic1:                                           ; preds = %bb6
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.1, i64 31, ptr align 8 @alloc_0cf2542d014ab3f8b5dadcef6a673369) #4, !dbg !47
  unreachable, !dbg !47

bb77:                                             ; preds = %bb76, %bb7, %bb1
  %5 = load i32, ptr %0, align 4, !dbg !48, !noundef !17
  ret i32 %5, !dbg !48

bb17:                                             ; preds = %bb8
  store i32 0, ptr %q, align 4, !dbg !49
  store i32 %v1, ptr %r, align 4, !dbg !50
  br label %bb70, !dbg !51

bb9:                                              ; preds = %bb8
  %_15 = icmp eq i32 %v2, -2147483648, !dbg !52
  %6 = call i1 @llvm.expect.i1(i1 %_15, i1 false), !dbg !52
  br i1 %6, label %panic2, label %bb10, !dbg !52

bb10:                                             ; preds = %bb9
  %_14 = sub i32 0, %v2, !dbg !52
  %_16 = icmp eq i32 %_14, 0, !dbg !53
  %7 = call i1 @llvm.expect.i1(i1 %_16, i1 false), !dbg !53
  br i1 %7, label %panic3, label %bb11, !dbg !53

panic2:                                           ; preds = %bb9
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.2, i64 31, ptr align 8 @alloc_75188c60c4f23d417157860609808756) #4, !dbg !52
  unreachable, !dbg !52

bb11:                                             ; preds = %bb10
  %_17 = icmp eq i32 %_14, -1, !dbg !53
  %_18 = icmp eq i32 %v1, -2147483648, !dbg !53
  %_19 = and i1 %_17, %_18, !dbg !53
  %8 = call i1 @llvm.expect.i1(i1 %_19, i1 false), !dbg !53
  br i1 %8, label %panic4, label %bb12, !dbg !53

panic3:                                           ; preds = %bb10
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.0, i64 25, ptr align 8 @alloc_f9e1199eba90f9006387f5eb0fe13e7c) #4, !dbg !53
  unreachable, !dbg !53

bb12:                                             ; preds = %bb11
  %_13 = sdiv i32 %v1, %_14, !dbg !53
  %_20 = icmp eq i32 %_13, -2147483648, !dbg !54
  %9 = call i1 @llvm.expect.i1(i1 %_20, i1 false), !dbg !54
  br i1 %9, label %panic5, label %bb13, !dbg !54

panic4:                                           ; preds = %bb11
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.1, i64 31, ptr align 8 @alloc_f9e1199eba90f9006387f5eb0fe13e7c) #4, !dbg !53
  unreachable, !dbg !53

bb13:                                             ; preds = %bb12
  %10 = sub i32 0, %_13, !dbg !55
  store i32 %10, ptr %q, align 4, !dbg !55
  %_22 = icmp eq i32 %v2, -2147483648, !dbg !56
  %11 = call i1 @llvm.expect.i1(i1 %_22, i1 false), !dbg !56
  br i1 %11, label %panic6, label %bb14, !dbg !56

panic5:                                           ; preds = %bb12
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.2, i64 31, ptr align 8 @alloc_4503fa26f020438fb7aac06f6b218b70) #4, !dbg !54
  unreachable, !dbg !54

bb14:                                             ; preds = %bb13
  %_21 = sub i32 0, %v2, !dbg !56
  %_23 = icmp eq i32 %_21, 0, !dbg !57
  %12 = call i1 @llvm.expect.i1(i1 %_23, i1 false), !dbg !57
  br i1 %12, label %panic7, label %bb15, !dbg !57

panic6:                                           ; preds = %bb13
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.2, i64 31, ptr align 8 @alloc_5bd033a6f4442627afebe309b205e8c9) #4, !dbg !56
  unreachable, !dbg !56

bb15:                                             ; preds = %bb14
  %_24 = icmp eq i32 %_21, -1, !dbg !57
  %_25 = icmp eq i32 %v1, -2147483648, !dbg !57
  %_26 = and i1 %_24, %_25, !dbg !57
  %13 = call i1 @llvm.expect.i1(i1 %_26, i1 false), !dbg !57
  br i1 %13, label %panic8, label %bb16, !dbg !57

panic7:                                           ; preds = %bb14
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.3, i64 57, ptr align 8 @alloc_986c81bdbc743a5bfaebb93ba69e7c6d) #4, !dbg !57
  unreachable, !dbg !57

bb16:                                             ; preds = %bb15
  %14 = srem i32 %v1, %_21, !dbg !58
  store i32 %14, ptr %r, align 4, !dbg !58
  br label %bb70, !dbg !51

panic8:                                           ; preds = %bb15
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.4, i64 48, ptr align 8 @alloc_986c81bdbc743a5bfaebb93ba69e7c6d) #4, !dbg !57
  unreachable, !dbg !57

bb70:                                             ; preds = %bb69, %bb57, %bb55, %bb42, %bb39, %bb28, %bb16, %bb17
  %_117 = load i32, ptr %r, align 4, !dbg !59, !noundef !17
  %_116 = icmp slt i32 %_117, 0, !dbg !59
  br i1 %_116, label %bb71, label %bb76, !dbg !59

bb19:                                             ; preds = %bb4
  %_68 = icmp sge i32 %v2, 0, !dbg !60
  br i1 %_68, label %bb43, label %bb44, !dbg !60

bb18:                                             ; preds = %bb4
  %_28 = icmp sge i32 %v2, 0, !dbg !61
  br i1 %_28, label %bb20, label %bb29, !dbg !61

bb29:                                             ; preds = %bb18
  %_45 = icmp ne i32 %v2, -2147483648, !dbg !62
  br i1 %_45, label %bb30, label %bb40, !dbg !62

bb20:                                             ; preds = %bb18
  %_31 = icmp eq i32 %v1, -2147483648, !dbg !63
  %15 = call i1 @llvm.expect.i1(i1 %_31, i1 false), !dbg !63
  br i1 %15, label %panic9, label %bb21, !dbg !63

bb21:                                             ; preds = %bb20
  %_30 = sub i32 0, %v1, !dbg !63
  %_32 = icmp eq i32 %v2, 0, !dbg !64
  %16 = call i1 @llvm.expect.i1(i1 %_32, i1 false), !dbg !64
  br i1 %16, label %panic10, label %bb22, !dbg !64

panic9:                                           ; preds = %bb20
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.2, i64 31, ptr align 8 @alloc_cf6d4434e80fd53a8775a9fbf69f9171) #4, !dbg !63
  unreachable, !dbg !63

bb22:                                             ; preds = %bb21
  %_33 = icmp eq i32 %v2, -1, !dbg !64
  %_34 = icmp eq i32 %_30, -2147483648, !dbg !64
  %_35 = and i1 %_33, %_34, !dbg !64
  %17 = call i1 @llvm.expect.i1(i1 %_35, i1 false), !dbg !64
  br i1 %17, label %panic11, label %bb23, !dbg !64

panic10:                                          ; preds = %bb21
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.0, i64 25, ptr align 8 @alloc_30d2f351ee1081d320581b5f0af047f2) #4, !dbg !64
  unreachable, !dbg !64

bb23:                                             ; preds = %bb22
  %_29 = sdiv i32 %_30, %v2, !dbg !64
  %_36 = icmp eq i32 %_29, -2147483648, !dbg !65
  %18 = call i1 @llvm.expect.i1(i1 %_36, i1 false), !dbg !65
  br i1 %18, label %panic12, label %bb24, !dbg !65

panic11:                                          ; preds = %bb22
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.1, i64 31, ptr align 8 @alloc_30d2f351ee1081d320581b5f0af047f2) #4, !dbg !64
  unreachable, !dbg !64

bb24:                                             ; preds = %bb23
  %19 = sub i32 0, %_29, !dbg !66
  store i32 %19, ptr %q, align 4, !dbg !66
  %_39 = icmp eq i32 %v1, -2147483648, !dbg !67
  %20 = call i1 @llvm.expect.i1(i1 %_39, i1 false), !dbg !67
  br i1 %20, label %panic13, label %bb25, !dbg !67

panic12:                                          ; preds = %bb23
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.2, i64 31, ptr align 8 @alloc_03b04ff9f3781ce088d6b5abb122a731) #4, !dbg !65
  unreachable, !dbg !65

bb25:                                             ; preds = %bb24
  %_38 = sub i32 0, %v1, !dbg !67
  %_40 = icmp eq i32 %v2, 0, !dbg !68
  %21 = call i1 @llvm.expect.i1(i1 %_40, i1 false), !dbg !68
  br i1 %21, label %panic14, label %bb26, !dbg !68

panic13:                                          ; preds = %bb24
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.2, i64 31, ptr align 8 @alloc_31f31033fb1da14a8e346e540c3856dd) #4, !dbg !67
  unreachable, !dbg !67

bb26:                                             ; preds = %bb25
  %_41 = icmp eq i32 %v2, -1, !dbg !68
  %_42 = icmp eq i32 %_38, -2147483648, !dbg !68
  %_43 = and i1 %_41, %_42, !dbg !68
  %22 = call i1 @llvm.expect.i1(i1 %_43, i1 false), !dbg !68
  br i1 %22, label %panic15, label %bb27, !dbg !68

panic14:                                          ; preds = %bb25
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.3, i64 57, ptr align 8 @alloc_8c30797398ded25de77773e2a3132254) #4, !dbg !68
  unreachable, !dbg !68

bb27:                                             ; preds = %bb26
  %_37 = srem i32 %_38, %v2, !dbg !68
  %_44 = icmp eq i32 %_37, -2147483648, !dbg !69
  %23 = call i1 @llvm.expect.i1(i1 %_44, i1 false), !dbg !69
  br i1 %23, label %panic16, label %bb28, !dbg !69

panic15:                                          ; preds = %bb26
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.4, i64 48, ptr align 8 @alloc_8c30797398ded25de77773e2a3132254) #4, !dbg !68
  unreachable, !dbg !68

bb28:                                             ; preds = %bb27
  %24 = sub i32 0, %_37, !dbg !70
  store i32 %24, ptr %r, align 4, !dbg !70
  br label %bb70, !dbg !71

panic16:                                          ; preds = %bb27
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.2, i64 31, ptr align 8 @alloc_d2150a018abfee9c9cffc55a6d963ef5) #4, !dbg !69
  unreachable, !dbg !69

bb40:                                             ; preds = %bb29
  store i32 1, ptr %q, align 4, !dbg !72
  %25 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 1, i32 %v2), !dbg !73
  %_66.0 = extractvalue { i32, i1 } %25, 0, !dbg !73
  %_66.1 = extractvalue { i32, i1 } %25, 1, !dbg !73
  %26 = call i1 @llvm.expect.i1(i1 %_66.1, i1 false), !dbg !73
  br i1 %26, label %panic26, label %bb41, !dbg !73

bb30:                                             ; preds = %bb29
  %_47 = icmp eq i32 %v1, -2147483648, !dbg !74
  %27 = call i1 @llvm.expect.i1(i1 %_47, i1 false), !dbg !74
  br i1 %27, label %panic17, label %bb31, !dbg !74

bb31:                                             ; preds = %bb30
  %_46 = sub i32 0, %v1, !dbg !74
  %_49 = icmp eq i32 %v2, -2147483648, !dbg !75
  %28 = call i1 @llvm.expect.i1(i1 %_49, i1 false), !dbg !75
  br i1 %28, label %panic18, label %bb32, !dbg !75

panic17:                                          ; preds = %bb30
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.2, i64 31, ptr align 8 @alloc_c7ad444e4217bf96568d3e4838ae0630) #4, !dbg !74
  unreachable, !dbg !74

bb32:                                             ; preds = %bb31
  %_48 = sub i32 0, %v2, !dbg !75
  %_50 = icmp eq i32 %_48, 0, !dbg !74
  %29 = call i1 @llvm.expect.i1(i1 %_50, i1 false), !dbg !74
  br i1 %29, label %panic19, label %bb33, !dbg !74

panic18:                                          ; preds = %bb31
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.2, i64 31, ptr align 8 @alloc_1f66a3454f8cc3176ff181fc85b02664) #4, !dbg !75
  unreachable, !dbg !75

bb33:                                             ; preds = %bb32
  %_51 = icmp eq i32 %_48, -1, !dbg !74
  %_52 = icmp eq i32 %_46, -2147483648, !dbg !74
  %_53 = and i1 %_51, %_52, !dbg !74
  %30 = call i1 @llvm.expect.i1(i1 %_53, i1 false), !dbg !74
  br i1 %30, label %panic20, label %bb34, !dbg !74

panic19:                                          ; preds = %bb32
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.0, i64 25, ptr align 8 @alloc_c7ad444e4217bf96568d3e4838ae0630) #4, !dbg !74
  unreachable, !dbg !74

bb34:                                             ; preds = %bb33
  %31 = sdiv i32 %_46, %_48, !dbg !76
  store i32 %31, ptr %q, align 4, !dbg !76
  %_56 = icmp eq i32 %v1, -2147483648, !dbg !77
  %32 = call i1 @llvm.expect.i1(i1 %_56, i1 false), !dbg !77
  br i1 %32, label %panic21, label %bb35, !dbg !77

panic20:                                          ; preds = %bb33
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.1, i64 31, ptr align 8 @alloc_c7ad444e4217bf96568d3e4838ae0630) #4, !dbg !74
  unreachable, !dbg !74

bb35:                                             ; preds = %bb34
  %_55 = sub i32 0, %v1, !dbg !77
  %_58 = icmp eq i32 %v2, -2147483648, !dbg !78
  %33 = call i1 @llvm.expect.i1(i1 %_58, i1 false), !dbg !78
  br i1 %33, label %panic22, label %bb36, !dbg !78

panic21:                                          ; preds = %bb34
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.2, i64 31, ptr align 8 @alloc_3eadb4b87704d559830dff9205f8ea5a) #4, !dbg !77
  unreachable, !dbg !77

bb36:                                             ; preds = %bb35
  %_57 = sub i32 0, %v2, !dbg !78
  %_59 = icmp eq i32 %_57, 0, !dbg !79
  %34 = call i1 @llvm.expect.i1(i1 %_59, i1 false), !dbg !79
  br i1 %34, label %panic23, label %bb37, !dbg !79

panic22:                                          ; preds = %bb35
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.2, i64 31, ptr align 8 @alloc_2b53ad5d2e67eac69aae26e48249b34e) #4, !dbg !78
  unreachable, !dbg !78

bb37:                                             ; preds = %bb36
  %_60 = icmp eq i32 %_57, -1, !dbg !79
  %_61 = icmp eq i32 %_55, -2147483648, !dbg !79
  %_62 = and i1 %_60, %_61, !dbg !79
  %35 = call i1 @llvm.expect.i1(i1 %_62, i1 false), !dbg !79
  br i1 %35, label %panic24, label %bb38, !dbg !79

panic23:                                          ; preds = %bb36
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.3, i64 57, ptr align 8 @alloc_f77727e0198e98ddb42ee748d53a8088) #4, !dbg !79
  unreachable, !dbg !79

bb38:                                             ; preds = %bb37
  %_54 = srem i32 %_55, %_57, !dbg !79
  %_63 = icmp eq i32 %_54, -2147483648, !dbg !80
  %36 = call i1 @llvm.expect.i1(i1 %_63, i1 false), !dbg !80
  br i1 %36, label %panic25, label %bb39, !dbg !80

panic24:                                          ; preds = %bb37
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.4, i64 48, ptr align 8 @alloc_f77727e0198e98ddb42ee748d53a8088) #4, !dbg !79
  unreachable, !dbg !79

bb39:                                             ; preds = %bb38
  %37 = sub i32 0, %_54, !dbg !81
  store i32 %37, ptr %r, align 4, !dbg !81
  br label %bb70, !dbg !82

panic25:                                          ; preds = %bb38
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.2, i64 31, ptr align 8 @alloc_93d1808b37db51c373a17385d767dcf0) #4, !dbg !80
  unreachable, !dbg !80

bb41:                                             ; preds = %bb40
  %38 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %v1, i32 %_66.0), !dbg !83
  %_67.0 = extractvalue { i32, i1 } %38, 0, !dbg !83
  %_67.1 = extractvalue { i32, i1 } %38, 1, !dbg !83
  %39 = call i1 @llvm.expect.i1(i1 %_67.1, i1 false), !dbg !83
  br i1 %39, label %panic27, label %bb42, !dbg !83

panic26:                                          ; preds = %bb40
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.5, i64 33, ptr align 8 @alloc_b4dcad80c265490ad5b45192369a73c0) #4, !dbg !73
  unreachable, !dbg !73

bb42:                                             ; preds = %bb41
  store i32 %_67.0, ptr %r, align 4, !dbg !84
  br label %bb70, !dbg !82

panic27:                                          ; preds = %bb41
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.6, i64 33, ptr align 8 @alloc_39902beb6a679df46f55d8c1c1dfebd4) #4, !dbg !83
  unreachable, !dbg !83

bb44:                                             ; preds = %bb19
  %_91 = icmp ne i32 %v2, -2147483648, !dbg !85
  br i1 %_91, label %bb56, label %bb57, !dbg !85

bb43:                                             ; preds = %bb19
  %40 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %v1, i32 %v2), !dbg !86
  %_73.0 = extractvalue { i32, i1 } %40, 0, !dbg !86
  %_73.1 = extractvalue { i32, i1 } %40, 1, !dbg !86
  %41 = call i1 @llvm.expect.i1(i1 %_73.1, i1 false), !dbg !86
  br i1 %41, label %panic28, label %bb45, !dbg !86

bb45:                                             ; preds = %bb43
  %_74 = icmp eq i32 %_73.0, -2147483648, !dbg !87
  %42 = call i1 @llvm.expect.i1(i1 %_74, i1 false), !dbg !87
  br i1 %42, label %panic29, label %bb46, !dbg !87

panic28:                                          ; preds = %bb43
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.7, i64 28, ptr align 8 @alloc_8d5651603a60ec71bdcc9526beb30d1e) #4, !dbg !86
  unreachable, !dbg !86

bb46:                                             ; preds = %bb45
  %_71 = sub i32 0, %_73.0, !dbg !87
  %_75 = icmp eq i32 %v2, 0, !dbg !88
  %43 = call i1 @llvm.expect.i1(i1 %_75, i1 false), !dbg !88
  br i1 %43, label %panic30, label %bb47, !dbg !88

panic29:                                          ; preds = %bb45
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.2, i64 31, ptr align 8 @alloc_8fabf1756713a904eb1c7b60a8bf26cd) #4, !dbg !87
  unreachable, !dbg !87

bb47:                                             ; preds = %bb46
  %_76 = icmp eq i32 %v2, -1, !dbg !88
  %_77 = icmp eq i32 %_71, -2147483648, !dbg !88
  %_78 = and i1 %_76, %_77, !dbg !88
  %44 = call i1 @llvm.expect.i1(i1 %_78, i1 false), !dbg !88
  br i1 %44, label %panic31, label %bb48, !dbg !88

panic30:                                          ; preds = %bb46
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.0, i64 25, ptr align 8 @alloc_de88bd72c61af639f5234bd221192523) #4, !dbg !88
  unreachable, !dbg !88

bb48:                                             ; preds = %bb47
  %_70 = sdiv i32 %_71, %v2, !dbg !88
  %_79 = icmp eq i32 %_70, -2147483648, !dbg !89
  %45 = call i1 @llvm.expect.i1(i1 %_79, i1 false), !dbg !89
  br i1 %45, label %panic32, label %bb49, !dbg !89

panic31:                                          ; preds = %bb47
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.1, i64 31, ptr align 8 @alloc_de88bd72c61af639f5234bd221192523) #4, !dbg !88
  unreachable, !dbg !88

bb49:                                             ; preds = %bb48
  %_69 = sub i32 0, %_70, !dbg !89
  %46 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_69, i32 1), !dbg !89
  %_80.0 = extractvalue { i32, i1 } %46, 0, !dbg !89
  %_80.1 = extractvalue { i32, i1 } %46, 1, !dbg !89
  %47 = call i1 @llvm.expect.i1(i1 %_80.1, i1 false), !dbg !89
  br i1 %47, label %panic33, label %bb50, !dbg !89

panic32:                                          ; preds = %bb48
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.2, i64 31, ptr align 8 @alloc_e6781611c0417d45918ac3a07fa0183c) #4, !dbg !89
  unreachable, !dbg !89

bb50:                                             ; preds = %bb49
  store i32 %_80.0, ptr %q, align 4, !dbg !90
  %48 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %v1, i32 %v2), !dbg !91
  %_84.0 = extractvalue { i32, i1 } %48, 0, !dbg !91
  %_84.1 = extractvalue { i32, i1 } %48, 1, !dbg !91
  %49 = call i1 @llvm.expect.i1(i1 %_84.1, i1 false), !dbg !91
  br i1 %49, label %panic34, label %bb51, !dbg !91

panic33:                                          ; preds = %bb49
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.6, i64 33, ptr align 8 @alloc_e6781611c0417d45918ac3a07fa0183c) #4, !dbg !89
  unreachable, !dbg !89

bb51:                                             ; preds = %bb50
  %_85 = icmp eq i32 %_84.0, -2147483648, !dbg !92
  %50 = call i1 @llvm.expect.i1(i1 %_85, i1 false), !dbg !92
  br i1 %50, label %panic35, label %bb52, !dbg !92

panic34:                                          ; preds = %bb50
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.7, i64 28, ptr align 8 @alloc_d420e262e779bac551caa9e357918eaf) #4, !dbg !91
  unreachable, !dbg !91

bb52:                                             ; preds = %bb51
  %_82 = sub i32 0, %_84.0, !dbg !92
  %_86 = icmp eq i32 %v2, 0, !dbg !93
  %51 = call i1 @llvm.expect.i1(i1 %_86, i1 false), !dbg !93
  br i1 %51, label %panic36, label %bb53, !dbg !93

panic35:                                          ; preds = %bb51
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.2, i64 31, ptr align 8 @alloc_351c3dbd122c617a5fc359880652a8c5) #4, !dbg !92
  unreachable, !dbg !92

bb53:                                             ; preds = %bb52
  %_87 = icmp eq i32 %v2, -1, !dbg !93
  %_88 = icmp eq i32 %_82, -2147483648, !dbg !93
  %_89 = and i1 %_87, %_88, !dbg !93
  %52 = call i1 @llvm.expect.i1(i1 %_89, i1 false), !dbg !93
  br i1 %52, label %panic37, label %bb54, !dbg !93

panic36:                                          ; preds = %bb52
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.3, i64 57, ptr align 8 @alloc_81ca8dc6f0d3dd954595c00838698c19) #4, !dbg !93
  unreachable, !dbg !93

bb54:                                             ; preds = %bb53
  %_81 = srem i32 %_82, %v2, !dbg !93
  %_90 = icmp eq i32 %_81, -2147483648, !dbg !94
  %53 = call i1 @llvm.expect.i1(i1 %_90, i1 false), !dbg !94
  br i1 %53, label %panic38, label %bb55, !dbg !94

panic37:                                          ; preds = %bb53
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.4, i64 48, ptr align 8 @alloc_81ca8dc6f0d3dd954595c00838698c19) #4, !dbg !93
  unreachable, !dbg !93

bb55:                                             ; preds = %bb54
  %54 = sub i32 0, %_81, !dbg !95
  store i32 %54, ptr %r, align 4, !dbg !95
  br label %bb70, !dbg !96

panic38:                                          ; preds = %bb54
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.2, i64 31, ptr align 8 @alloc_28ab973a546b8fda2610cab09f428f10) #4, !dbg !94
  unreachable, !dbg !94

bb57:                                             ; preds = %bb44
  store i32 1, ptr %q, align 4, !dbg !97
  store i32 0, ptr %r, align 4, !dbg !98
  br label %bb70, !dbg !99

bb56:                                             ; preds = %bb44
  %55 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %v1, i32 %v2), !dbg !100
  %_95.0 = extractvalue { i32, i1 } %55, 0, !dbg !100
  %_95.1 = extractvalue { i32, i1 } %55, 1, !dbg !100
  %56 = call i1 @llvm.expect.i1(i1 %_95.1, i1 false), !dbg !100
  br i1 %56, label %panic39, label %bb58, !dbg !100

bb58:                                             ; preds = %bb56
  %_96 = icmp eq i32 %_95.0, -2147483648, !dbg !101
  %57 = call i1 @llvm.expect.i1(i1 %_96, i1 false), !dbg !101
  br i1 %57, label %panic40, label %bb59, !dbg !101

panic39:                                          ; preds = %bb56
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.6, i64 33, ptr align 8 @alloc_6cf968ed00d141d95694218e7c670989) #4, !dbg !100
  unreachable, !dbg !100

bb59:                                             ; preds = %bb58
  %_93 = sub i32 0, %_95.0, !dbg !101
  %_98 = icmp eq i32 %v2, -2147483648, !dbg !102
  %58 = call i1 @llvm.expect.i1(i1 %_98, i1 false), !dbg !102
  br i1 %58, label %panic41, label %bb60, !dbg !102

panic40:                                          ; preds = %bb58
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.2, i64 31, ptr align 8 @alloc_33b03bc3a901f56fbb31d0177eb808c1) #4, !dbg !101
  unreachable, !dbg !101

bb60:                                             ; preds = %bb59
  %_97 = sub i32 0, %v2, !dbg !102
  %_99 = icmp eq i32 %_97, 0, !dbg !101
  %59 = call i1 @llvm.expect.i1(i1 %_99, i1 false), !dbg !101
  br i1 %59, label %panic42, label %bb61, !dbg !101

panic41:                                          ; preds = %bb59
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.2, i64 31, ptr align 8 @alloc_d042c41ae0a0d64a6ee09351ccfd2bf1) #4, !dbg !102
  unreachable, !dbg !102

bb61:                                             ; preds = %bb60
  %_100 = icmp eq i32 %_97, -1, !dbg !101
  %_101 = icmp eq i32 %_93, -2147483648, !dbg !101
  %_102 = and i1 %_100, %_101, !dbg !101
  %60 = call i1 @llvm.expect.i1(i1 %_102, i1 false), !dbg !101
  br i1 %60, label %panic43, label %bb62, !dbg !101

panic42:                                          ; preds = %bb60
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.0, i64 25, ptr align 8 @alloc_33b03bc3a901f56fbb31d0177eb808c1) #4, !dbg !101
  unreachable, !dbg !101

bb62:                                             ; preds = %bb61
  %_92 = sdiv i32 %_93, %_97, !dbg !101
  %61 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_92, i32 1), !dbg !101
  %_103.0 = extractvalue { i32, i1 } %61, 0, !dbg !101
  %_103.1 = extractvalue { i32, i1 } %61, 1, !dbg !101
  %62 = call i1 @llvm.expect.i1(i1 %_103.1, i1 false), !dbg !101
  br i1 %62, label %panic44, label %bb63, !dbg !101

panic43:                                          ; preds = %bb61
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.1, i64 31, ptr align 8 @alloc_33b03bc3a901f56fbb31d0177eb808c1) #4, !dbg !101
  unreachable, !dbg !101

bb63:                                             ; preds = %bb62
  store i32 %_103.0, ptr %q, align 4, !dbg !103
  %63 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %v1, i32 %v2), !dbg !104
  %_107.0 = extractvalue { i32, i1 } %63, 0, !dbg !104
  %_107.1 = extractvalue { i32, i1 } %63, 1, !dbg !104
  %64 = call i1 @llvm.expect.i1(i1 %_107.1, i1 false), !dbg !104
  br i1 %64, label %panic45, label %bb64, !dbg !104

panic44:                                          ; preds = %bb62
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.7, i64 28, ptr align 8 @alloc_33b03bc3a901f56fbb31d0177eb808c1) #4, !dbg !101
  unreachable, !dbg !101

bb64:                                             ; preds = %bb63
  %_108 = icmp eq i32 %_107.0, -2147483648, !dbg !105
  %65 = call i1 @llvm.expect.i1(i1 %_108, i1 false), !dbg !105
  br i1 %65, label %panic46, label %bb65, !dbg !105

panic45:                                          ; preds = %bb63
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.6, i64 33, ptr align 8 @alloc_0f3f08c0fcc92eb0c09c8a082f113d87) #4, !dbg !104
  unreachable, !dbg !104

bb65:                                             ; preds = %bb64
  %_105 = sub i32 0, %_107.0, !dbg !105
  %_110 = icmp eq i32 %v2, -2147483648, !dbg !106
  %66 = call i1 @llvm.expect.i1(i1 %_110, i1 false), !dbg !106
  br i1 %66, label %panic47, label %bb66, !dbg !106

panic46:                                          ; preds = %bb64
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.2, i64 31, ptr align 8 @alloc_46a7d6999291aa1096d6899c79c18e4d) #4, !dbg !105
  unreachable, !dbg !105

bb66:                                             ; preds = %bb65
  %_109 = sub i32 0, %v2, !dbg !106
  %_111 = icmp eq i32 %_109, 0, !dbg !107
  %67 = call i1 @llvm.expect.i1(i1 %_111, i1 false), !dbg !107
  br i1 %67, label %panic48, label %bb67, !dbg !107

panic47:                                          ; preds = %bb65
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.2, i64 31, ptr align 8 @alloc_9a0e2a26b8c9a91b4505368975743ddf) #4, !dbg !106
  unreachable, !dbg !106

bb67:                                             ; preds = %bb66
  %_112 = icmp eq i32 %_109, -1, !dbg !107
  %_113 = icmp eq i32 %_105, -2147483648, !dbg !107
  %_114 = and i1 %_112, %_113, !dbg !107
  %68 = call i1 @llvm.expect.i1(i1 %_114, i1 false), !dbg !107
  br i1 %68, label %panic49, label %bb68, !dbg !107

panic48:                                          ; preds = %bb66
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.3, i64 57, ptr align 8 @alloc_59887dc89c76b1aa41f0a49df15d100c) #4, !dbg !107
  unreachable, !dbg !107

bb68:                                             ; preds = %bb67
  %_104 = srem i32 %_105, %_109, !dbg !107
  %_115 = icmp eq i32 %_104, -2147483648, !dbg !108
  %69 = call i1 @llvm.expect.i1(i1 %_115, i1 false), !dbg !108
  br i1 %69, label %panic50, label %bb69, !dbg !108

panic49:                                          ; preds = %bb67
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.4, i64 48, ptr align 8 @alloc_59887dc89c76b1aa41f0a49df15d100c) #4, !dbg !107
  unreachable, !dbg !107

bb69:                                             ; preds = %bb68
  %70 = sub i32 0, %_104, !dbg !109
  store i32 %70, ptr %r, align 4, !dbg !109
  br label %bb70, !dbg !99

panic50:                                          ; preds = %bb68
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.2, i64 31, ptr align 8 @alloc_0d8fa2b036ae155370ef10cd2143e520) #4, !dbg !108
  unreachable, !dbg !108

bb76:                                             ; preds = %bb75, %bb70
  %71 = load i32, ptr %q, align 4, !dbg !110, !noundef !17
  store i32 %71, ptr %0, align 4, !dbg !110
  br label %bb77, !dbg !48

bb71:                                             ; preds = %bb70
  %_119 = icmp sgt i32 %v2, 0, !dbg !111
  br i1 %_119, label %bb72, label %bb73, !dbg !111

bb73:                                             ; preds = %bb71
  store i32 1, ptr %_118, align 4, !dbg !112
  br label %bb74, !dbg !113

bb72:                                             ; preds = %bb71
  store i32 -1, ptr %_118, align 4, !dbg !114
  br label %bb74, !dbg !113

bb74:                                             ; preds = %bb72, %bb73
  %72 = load i32, ptr %q, align 4, !dbg !115, !noundef !17
  %73 = load i32, ptr %_118, align 4, !dbg !115, !noundef !17
  %74 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %72, i32 %73), !dbg !115
  %_120.0 = extractvalue { i32, i1 } %74, 0, !dbg !115
  %_120.1 = extractvalue { i32, i1 } %74, 1, !dbg !115
  %75 = call i1 @llvm.expect.i1(i1 %_120.1, i1 false), !dbg !115
  br i1 %75, label %panic51, label %bb75, !dbg !115

bb75:                                             ; preds = %bb74
  store i32 %_120.0, ptr %q, align 4, !dbg !115
  br label %bb76, !dbg !116

panic51:                                          ; preds = %bb74
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.7, i64 28, ptr align 8 @alloc_314f172d9f0624fee38d5cae2e28a9dd) #4, !dbg !115
  unreachable, !dbg !115
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.expect.i1(i1, i1) #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1, i64, ptr align 8) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.smul.with.overflow.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #3

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_1() unnamed_addr #0 !dbg !117 {
start:
  %result.dbg.spill = alloca i32, align 4
  %v2.dbg.spill = alloca i32, align 4
  %v1.dbg.spill = alloca i32, align 4
  store i32 5, ptr %v1.dbg.spill, align 4, !dbg !128
    #dbg_declare(ptr %v1.dbg.spill, !122, !DIExpression(), !129)
  store i32 0, ptr %v2.dbg.spill, align 4, !dbg !130
    #dbg_declare(ptr %v2.dbg.spill, !124, !DIExpression(), !131)
  %result = call i32 @div_euclid(i32 5, i32 0), !dbg !132
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !132
    #dbg_declare(ptr %result.dbg.spill, !126, !DIExpression(), !133)
  %0 = icmp eq i32 %result, 0, !dbg !134
  ret i1 %0, !dbg !135
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_2() unnamed_addr #0 !dbg !136 {
start:
  %result.dbg.spill = alloca i32, align 4
  %v2.dbg.spill = alloca i32, align 4
  %v1.dbg.spill = alloca i32, align 4
  store i32 10, ptr %v1.dbg.spill, align 4, !dbg !144
    #dbg_declare(ptr %v1.dbg.spill, !138, !DIExpression(), !145)
  store i32 3, ptr %v2.dbg.spill, align 4, !dbg !146
    #dbg_declare(ptr %v2.dbg.spill, !140, !DIExpression(), !147)
  %result = call i32 @div_euclid(i32 10, i32 3), !dbg !148
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !148
    #dbg_declare(ptr %result.dbg.spill, !142, !DIExpression(), !149)
  %0 = icmp eq i32 %result, 3, !dbg !150
  ret i1 %0, !dbg !151
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_3() unnamed_addr #0 !dbg !152 {
start:
  %result.dbg.spill = alloca i32, align 4
  %v2.dbg.spill = alloca i32, align 4
  %v1.dbg.spill = alloca i32, align 4
  store i32 10, ptr %v1.dbg.spill, align 4, !dbg !160
    #dbg_declare(ptr %v1.dbg.spill, !154, !DIExpression(), !161)
  store i32 -3, ptr %v2.dbg.spill, align 4, !dbg !162
    #dbg_declare(ptr %v2.dbg.spill, !156, !DIExpression(), !163)
  %result = call i32 @div_euclid(i32 10, i32 -3), !dbg !164
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !164
    #dbg_declare(ptr %result.dbg.spill, !158, !DIExpression(), !165)
  %0 = icmp eq i32 %result, -3, !dbg !166
  ret i1 %0, !dbg !167
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_4() unnamed_addr #0 !dbg !168 {
start:
  %result.dbg.spill = alloca i32, align 4
  %v2.dbg.spill = alloca i32, align 4
  %v1.dbg.spill = alloca i32, align 4
  store i32 10, ptr %v1.dbg.spill, align 4, !dbg !176
    #dbg_declare(ptr %v1.dbg.spill, !170, !DIExpression(), !177)
  store i32 -2147483648, ptr %v2.dbg.spill, align 4, !dbg !178
    #dbg_declare(ptr %v2.dbg.spill, !172, !DIExpression(), !179)
  %result = call i32 @div_euclid(i32 10, i32 -2147483648), !dbg !180
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !180
    #dbg_declare(ptr %result.dbg.spill, !174, !DIExpression(), !181)
  %0 = icmp eq i32 %result, 0, !dbg !182
  ret i1 %0, !dbg !183
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_5() unnamed_addr #0 !dbg !184 {
start:
  %result.dbg.spill = alloca i32, align 4
  %v2.dbg.spill = alloca i32, align 4
  %v1.dbg.spill = alloca i32, align 4
  store i32 -10, ptr %v1.dbg.spill, align 4, !dbg !192
    #dbg_declare(ptr %v1.dbg.spill, !186, !DIExpression(), !193)
  store i32 3, ptr %v2.dbg.spill, align 4, !dbg !194
    #dbg_declare(ptr %v2.dbg.spill, !188, !DIExpression(), !195)
  %result = call i32 @div_euclid(i32 -10, i32 3), !dbg !196
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !196
    #dbg_declare(ptr %result.dbg.spill, !190, !DIExpression(), !197)
  %0 = icmp eq i32 %result, -4, !dbg !198
  ret i1 %0, !dbg !199
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_6() unnamed_addr #0 !dbg !200 {
start:
  %result.dbg.spill = alloca i32, align 4
  %v2.dbg.spill = alloca i32, align 4
  %v1.dbg.spill = alloca i32, align 4
  store i32 -10, ptr %v1.dbg.spill, align 4, !dbg !208
    #dbg_declare(ptr %v1.dbg.spill, !202, !DIExpression(), !209)
  store i32 -3, ptr %v2.dbg.spill, align 4, !dbg !210
    #dbg_declare(ptr %v2.dbg.spill, !204, !DIExpression(), !211)
  %result = call i32 @div_euclid(i32 -10, i32 -3), !dbg !212
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !212
    #dbg_declare(ptr %result.dbg.spill, !206, !DIExpression(), !213)
  %0 = icmp eq i32 %result, 4, !dbg !214
  ret i1 %0, !dbg !215
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_7() unnamed_addr #0 !dbg !216 {
start:
  %result.dbg.spill = alloca i32, align 4
  %v2.dbg.spill = alloca i32, align 4
  %v1.dbg.spill = alloca i32, align 4
  store i32 -10, ptr %v1.dbg.spill, align 4, !dbg !224
    #dbg_declare(ptr %v1.dbg.spill, !218, !DIExpression(), !225)
  store i32 -2147483648, ptr %v2.dbg.spill, align 4, !dbg !226
    #dbg_declare(ptr %v2.dbg.spill, !220, !DIExpression(), !227)
  %result = call i32 @div_euclid(i32 -10, i32 -2147483648), !dbg !228
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !228
    #dbg_declare(ptr %result.dbg.spill, !222, !DIExpression(), !229)
  %0 = icmp eq i32 %result, 1, !dbg !230
  ret i1 %0, !dbg !231
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_8() unnamed_addr #0 !dbg !232 {
start:
  %result.dbg.spill = alloca i32, align 4
  %v2.dbg.spill = alloca i32, align 4
  %v1.dbg.spill = alloca i32, align 4
  store i32 -2147483648, ptr %v1.dbg.spill, align 4, !dbg !240
    #dbg_declare(ptr %v1.dbg.spill, !234, !DIExpression(), !241)
  store i32 3, ptr %v2.dbg.spill, align 4, !dbg !242
    #dbg_declare(ptr %v2.dbg.spill, !236, !DIExpression(), !243)
  %result = call i32 @div_euclid(i32 -2147483648, i32 3), !dbg !244
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !244
    #dbg_declare(ptr %result.dbg.spill, !238, !DIExpression(), !245)
  %0 = icmp eq i32 %result, -715827883, !dbg !246
  ret i1 %0, !dbg !247
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_9() unnamed_addr #0 !dbg !248 {
start:
  %result.dbg.spill = alloca i32, align 4
  %v2.dbg.spill = alloca i32, align 4
  %v1.dbg.spill = alloca i32, align 4
  store i32 -2147483648, ptr %v1.dbg.spill, align 4, !dbg !256
    #dbg_declare(ptr %v1.dbg.spill, !250, !DIExpression(), !257)
  store i32 -3, ptr %v2.dbg.spill, align 4, !dbg !258
    #dbg_declare(ptr %v2.dbg.spill, !252, !DIExpression(), !259)
  %result = call i32 @div_euclid(i32 -2147483648, i32 -3), !dbg !260
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !260
    #dbg_declare(ptr %result.dbg.spill, !254, !DIExpression(), !261)
  %0 = icmp eq i32 %result, 715827883, !dbg !262
  ret i1 %0, !dbg !263
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_10() unnamed_addr #0 !dbg !264 {
start:
  %result.dbg.spill = alloca i32, align 4
  %v2.dbg.spill = alloca i32, align 4
  %v1.dbg.spill = alloca i32, align 4
  store i32 -2147483648, ptr %v1.dbg.spill, align 4, !dbg !272
    #dbg_declare(ptr %v1.dbg.spill, !266, !DIExpression(), !273)
  store i32 -2147483648, ptr %v2.dbg.spill, align 4, !dbg !274
    #dbg_declare(ptr %v2.dbg.spill, !268, !DIExpression(), !275)
  %result = call i32 @div_euclid(i32 -2147483648, i32 -2147483648), !dbg !276
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !276
    #dbg_declare(ptr %result.dbg.spill, !270, !DIExpression(), !277)
  %0 = icmp eq i32 %result, 1, !dbg !278
  ret i1 %0, !dbg !279
}

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #2 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}

!0 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !1, producer: "clang LLVM (rustc version 1.70.0-nightly (84dd17b56 2023-04-14))", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!1 = !DIFile(filename: "lib.rs/@/bt2ian5afk8kyqh", directory: "/crisp-rust-outputs/B01_organic/div_euclid_lib/translated_rust")
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 2, !"RtLibUseGOT", i32 1}
!4 = !{i32 2, !"Dwarf Version", i32 4}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = distinct !DISubprogram(name: "div_euclid_ffi", linkageName: "div_euclid", scope: !8, file: !7, line: 53, type: !11, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !17, retainedNodes: !14)
!7 = !DIFile(filename: "src/lib.rs", directory: "/crisp-rust-outputs/B01_organic/div_euclid_lib/translated_rust", checksumkind: CSK_MD5, checksum: "65f9bbd24f4b247ce8b18f30e7b669ec")
!8 = !DINamespace(name: "lib", scope: !9)
!9 = !DINamespace(name: "src", scope: !10)
!10 = !DINamespace(name: "div_euclid_lib", scope: null)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !13, !13}
!13 = !DIBasicType(name: "i32", size: 32, encoding: DW_ATE_signed)
!14 = !{!15, !16}
!15 = !DILocalVariable(name: "v1", arg: 1, scope: !6, file: !7, line: 54, type: !13)
!16 = !DILocalVariable(name: "v2", arg: 2, scope: !6, file: !7, line: 55, type: !13)
!17 = !{}
!18 = !DILocation(line: 54, column: 5, scope: !6)
!19 = !DILocation(line: 55, column: 5, scope: !6)
!20 = !DILocation(line: 57, column: 5, scope: !6)
!21 = !DILocation(line: 58, column: 2, scope: !6)
!22 = distinct !DISubprogram(name: "div_euclid", linkageName: "_ZN14div_euclid_lib3src3lib10div_euclid17he838aad830bf4d22E", scope: !8, file: !7, line: 1, type: !11, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !17, retainedNodes: !23)
!23 = !{!24, !25, !26, !28, !30}
!24 = !DILocalVariable(name: "v1", arg: 1, scope: !22, file: !7, line: 2, type: !13)
!25 = !DILocalVariable(name: "v2", arg: 2, scope: !22, file: !7, line: 3, type: !13)
!26 = !DILocalVariable(name: "min", scope: !27, file: !7, line: 9, type: !13, align: 4)
!27 = distinct !DILexicalBlock(scope: !22, file: !7, line: 9, column: 5)
!28 = !DILocalVariable(name: "q", scope: !29, file: !7, line: 10, type: !13, align: 4)
!29 = distinct !DILexicalBlock(scope: !27, file: !7, line: 10, column: 5)
!30 = !DILocalVariable(name: "r", scope: !31, file: !7, line: 11, type: !13, align: 4)
!31 = distinct !DILexicalBlock(scope: !29, file: !7, line: 11, column: 5)
!32 = !DILocation(line: 2, column: 5, scope: !22)
!33 = !DILocation(line: 3, column: 5, scope: !22)
!34 = !DILocation(line: 10, column: 9, scope: !29)
!35 = !DILocation(line: 11, column: 9, scope: !31)
!36 = !DILocation(line: 5, column: 8, scope: !22)
!37 = !DILocation(line: 6, column: 16, scope: !22)
!38 = !DILocation(line: 1, column: 1, scope: !39)
!39 = !DILexicalBlockFile(scope: !22, file: !40, discriminator: 0)
!40 = !DIFile(filename: "lib.rs", directory: "/crisp-rust-outputs/B01_organic/div_euclid_lib/translated_rust", checksumkind: CSK_MD5, checksum: "3517fa76467d691b85abdf25c6292f0d")
!41 = !DILocation(line: 9, column: 15, scope: !22)
!42 = !DILocation(line: 9, column: 9, scope: !27)
!43 = !DILocation(line: 13, column: 8, scope: !31)
!44 = !DILocation(line: 23, column: 15, scope: !31)
!45 = !DILocation(line: 14, column: 12, scope: !31)
!46 = !DILocation(line: 16, column: 19, scope: !31)
!47 = !DILocation(line: 15, column: 20, scope: !31)
!48 = !DILocation(line: 50, column: 2, scope: !22)
!49 = !DILocation(line: 20, column: 13, scope: !31)
!50 = !DILocation(line: 21, column: 13, scope: !31)
!51 = !DILocation(line: 16, column: 16, scope: !31)
!52 = !DILocation(line: 17, column: 24, scope: !31)
!53 = !DILocation(line: 17, column: 18, scope: !31)
!54 = !DILocation(line: 17, column: 17, scope: !31)
!55 = !DILocation(line: 17, column: 13, scope: !31)
!56 = !DILocation(line: 18, column: 22, scope: !31)
!57 = !DILocation(line: 18, column: 17, scope: !31)
!58 = !DILocation(line: 18, column: 13, scope: !31)
!59 = !DILocation(line: 45, column: 8, scope: !31)
!60 = !DILocation(line: 34, column: 15, scope: !31)
!61 = !DILocation(line: 24, column: 12, scope: !31)
!62 = !DILocation(line: 27, column: 19, scope: !31)
!63 = !DILocation(line: 25, column: 19, scope: !31)
!64 = !DILocation(line: 25, column: 18, scope: !31)
!65 = !DILocation(line: 25, column: 17, scope: !31)
!66 = !DILocation(line: 25, column: 13, scope: !31)
!67 = !DILocation(line: 26, column: 19, scope: !31)
!68 = !DILocation(line: 26, column: 18, scope: !31)
!69 = !DILocation(line: 26, column: 17, scope: !31)
!70 = !DILocation(line: 26, column: 13, scope: !31)
!71 = !DILocation(line: 24, column: 9, scope: !31)
!72 = !DILocation(line: 31, column: 13, scope: !31)
!73 = !DILocation(line: 32, column: 22, scope: !31)
!74 = !DILocation(line: 28, column: 17, scope: !31)
!75 = !DILocation(line: 28, column: 23, scope: !31)
!76 = !DILocation(line: 28, column: 13, scope: !31)
!77 = !DILocation(line: 29, column: 19, scope: !31)
!78 = !DILocation(line: 29, column: 25, scope: !31)
!79 = !DILocation(line: 29, column: 18, scope: !31)
!80 = !DILocation(line: 29, column: 17, scope: !31)
!81 = !DILocation(line: 29, column: 13, scope: !31)
!82 = !DILocation(line: 27, column: 16, scope: !31)
!83 = !DILocation(line: 32, column: 17, scope: !31)
!84 = !DILocation(line: 32, column: 13, scope: !31)
!85 = !DILocation(line: 37, column: 15, scope: !31)
!86 = !DILocation(line: 35, column: 16, scope: !31)
!87 = !DILocation(line: 35, column: 15, scope: !31)
!88 = !DILocation(line: 35, column: 14, scope: !31)
!89 = !DILocation(line: 35, column: 13, scope: !31)
!90 = !DILocation(line: 35, column: 9, scope: !31)
!91 = !DILocation(line: 36, column: 16, scope: !31)
!92 = !DILocation(line: 36, column: 15, scope: !31)
!93 = !DILocation(line: 36, column: 14, scope: !31)
!94 = !DILocation(line: 36, column: 13, scope: !31)
!95 = !DILocation(line: 36, column: 9, scope: !31)
!96 = !DILocation(line: 34, column: 12, scope: !31)
!97 = !DILocation(line: 41, column: 9, scope: !31)
!98 = !DILocation(line: 42, column: 9, scope: !31)
!99 = !DILocation(line: 37, column: 12, scope: !31)
!100 = !DILocation(line: 38, column: 14, scope: !31)
!101 = !DILocation(line: 38, column: 13, scope: !31)
!102 = !DILocation(line: 38, column: 26, scope: !31)
!103 = !DILocation(line: 38, column: 9, scope: !31)
!104 = !DILocation(line: 39, column: 16, scope: !31)
!105 = !DILocation(line: 39, column: 15, scope: !31)
!106 = !DILocation(line: 39, column: 28, scope: !31)
!107 = !DILocation(line: 39, column: 14, scope: !31)
!108 = !DILocation(line: 39, column: 13, scope: !31)
!109 = !DILocation(line: 39, column: 9, scope: !31)
!110 = !DILocation(line: 49, column: 5, scope: !31)
!111 = !DILocation(line: 46, column: 17, scope: !31)
!112 = !DILocation(line: 46, column: 38, scope: !31)
!113 = !DILocation(line: 46, column: 14, scope: !31)
!114 = !DILocation(line: 46, column: 26, scope: !31)
!115 = !DILocation(line: 46, column: 9, scope: !31)
!116 = !DILocation(line: 45, column: 5, scope: !31)
!117 = distinct !DISubprogram(name: "run_test_1", scope: !8, file: !7, line: 61, type: !118, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !17, retainedNodes: !121)
!118 = !DISubroutineType(types: !119)
!119 = !{!120}
!120 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!121 = !{!122, !124, !126}
!122 = !DILocalVariable(name: "v1", scope: !123, file: !7, line: 62, type: !13, align: 4)
!123 = distinct !DILexicalBlock(scope: !117, file: !7, line: 62, column: 5)
!124 = !DILocalVariable(name: "v2", scope: !125, file: !7, line: 63, type: !13, align: 4)
!125 = distinct !DILexicalBlock(scope: !123, file: !7, line: 63, column: 5)
!126 = !DILocalVariable(name: "result", scope: !127, file: !7, line: 64, type: !13, align: 4)
!127 = distinct !DILexicalBlock(scope: !125, file: !7, line: 64, column: 5)
!128 = !DILocation(line: 62, column: 34, scope: !117)
!129 = !DILocation(line: 62, column: 9, scope: !123)
!130 = !DILocation(line: 63, column: 34, scope: !123)
!131 = !DILocation(line: 63, column: 9, scope: !125)
!132 = !DILocation(line: 64, column: 18, scope: !125)
!133 = !DILocation(line: 64, column: 9, scope: !127)
!134 = !DILocation(line: 65, column: 5, scope: !127)
!135 = !DILocation(line: 66, column: 2, scope: !117)
!136 = distinct !DISubprogram(name: "run_test_2", scope: !8, file: !7, line: 69, type: !118, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !17, retainedNodes: !137)
!137 = !{!138, !140, !142}
!138 = !DILocalVariable(name: "v1", scope: !139, file: !7, line: 70, type: !13, align: 4)
!139 = distinct !DILexicalBlock(scope: !136, file: !7, line: 70, column: 5)
!140 = !DILocalVariable(name: "v2", scope: !141, file: !7, line: 71, type: !13, align: 4)
!141 = distinct !DILexicalBlock(scope: !139, file: !7, line: 71, column: 5)
!142 = !DILocalVariable(name: "result", scope: !143, file: !7, line: 72, type: !13, align: 4)
!143 = distinct !DILexicalBlock(scope: !141, file: !7, line: 72, column: 5)
!144 = !DILocation(line: 70, column: 34, scope: !136)
!145 = !DILocation(line: 70, column: 9, scope: !139)
!146 = !DILocation(line: 71, column: 34, scope: !139)
!147 = !DILocation(line: 71, column: 9, scope: !141)
!148 = !DILocation(line: 72, column: 18, scope: !141)
!149 = !DILocation(line: 72, column: 9, scope: !143)
!150 = !DILocation(line: 73, column: 5, scope: !143)
!151 = !DILocation(line: 74, column: 2, scope: !136)
!152 = distinct !DISubprogram(name: "run_test_3", scope: !8, file: !7, line: 77, type: !118, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !17, retainedNodes: !153)
!153 = !{!154, !156, !158}
!154 = !DILocalVariable(name: "v1", scope: !155, file: !7, line: 78, type: !13, align: 4)
!155 = distinct !DILexicalBlock(scope: !152, file: !7, line: 78, column: 5)
!156 = !DILocalVariable(name: "v2", scope: !157, file: !7, line: 79, type: !13, align: 4)
!157 = distinct !DILexicalBlock(scope: !155, file: !7, line: 79, column: 5)
!158 = !DILocalVariable(name: "result", scope: !159, file: !7, line: 80, type: !13, align: 4)
!159 = distinct !DILexicalBlock(scope: !157, file: !7, line: 80, column: 5)
!160 = !DILocation(line: 78, column: 34, scope: !152)
!161 = !DILocation(line: 78, column: 9, scope: !155)
!162 = !DILocation(line: 79, column: 34, scope: !155)
!163 = !DILocation(line: 79, column: 9, scope: !157)
!164 = !DILocation(line: 80, column: 18, scope: !157)
!165 = !DILocation(line: 80, column: 9, scope: !159)
!166 = !DILocation(line: 81, column: 5, scope: !159)
!167 = !DILocation(line: 82, column: 2, scope: !152)
!168 = distinct !DISubprogram(name: "run_test_4", scope: !8, file: !7, line: 85, type: !118, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !17, retainedNodes: !169)
!169 = !{!170, !172, !174}
!170 = !DILocalVariable(name: "v1", scope: !171, file: !7, line: 86, type: !13, align: 4)
!171 = distinct !DILexicalBlock(scope: !168, file: !7, line: 86, column: 5)
!172 = !DILocalVariable(name: "v2", scope: !173, file: !7, line: 87, type: !13, align: 4)
!173 = distinct !DILexicalBlock(scope: !171, file: !7, line: 87, column: 5)
!174 = !DILocalVariable(name: "result", scope: !175, file: !7, line: 88, type: !13, align: 4)
!175 = distinct !DILexicalBlock(scope: !173, file: !7, line: 88, column: 5)
!176 = !DILocation(line: 86, column: 34, scope: !168)
!177 = !DILocation(line: 86, column: 9, scope: !171)
!178 = !DILocation(line: 87, column: 34, scope: !171)
!179 = !DILocation(line: 87, column: 9, scope: !173)
!180 = !DILocation(line: 88, column: 18, scope: !173)
!181 = !DILocation(line: 88, column: 9, scope: !175)
!182 = !DILocation(line: 89, column: 5, scope: !175)
!183 = !DILocation(line: 90, column: 2, scope: !168)
!184 = distinct !DISubprogram(name: "run_test_5", scope: !8, file: !7, line: 93, type: !118, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !17, retainedNodes: !185)
!185 = !{!186, !188, !190}
!186 = !DILocalVariable(name: "v1", scope: !187, file: !7, line: 94, type: !13, align: 4)
!187 = distinct !DILexicalBlock(scope: !184, file: !7, line: 94, column: 5)
!188 = !DILocalVariable(name: "v2", scope: !189, file: !7, line: 95, type: !13, align: 4)
!189 = distinct !DILexicalBlock(scope: !187, file: !7, line: 95, column: 5)
!190 = !DILocalVariable(name: "result", scope: !191, file: !7, line: 96, type: !13, align: 4)
!191 = distinct !DILexicalBlock(scope: !189, file: !7, line: 96, column: 5)
!192 = !DILocation(line: 94, column: 34, scope: !184)
!193 = !DILocation(line: 94, column: 9, scope: !187)
!194 = !DILocation(line: 95, column: 34, scope: !187)
!195 = !DILocation(line: 95, column: 9, scope: !189)
!196 = !DILocation(line: 96, column: 18, scope: !189)
!197 = !DILocation(line: 96, column: 9, scope: !191)
!198 = !DILocation(line: 97, column: 5, scope: !191)
!199 = !DILocation(line: 98, column: 2, scope: !184)
!200 = distinct !DISubprogram(name: "run_test_6", scope: !8, file: !7, line: 102, type: !118, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !17, retainedNodes: !201)
!201 = !{!202, !204, !206}
!202 = !DILocalVariable(name: "v1", scope: !203, file: !7, line: 103, type: !13, align: 4)
!203 = distinct !DILexicalBlock(scope: !200, file: !7, line: 103, column: 5)
!204 = !DILocalVariable(name: "v2", scope: !205, file: !7, line: 104, type: !13, align: 4)
!205 = distinct !DILexicalBlock(scope: !203, file: !7, line: 104, column: 5)
!206 = !DILocalVariable(name: "result", scope: !207, file: !7, line: 105, type: !13, align: 4)
!207 = distinct !DILexicalBlock(scope: !205, file: !7, line: 105, column: 5)
!208 = !DILocation(line: 103, column: 34, scope: !200)
!209 = !DILocation(line: 103, column: 9, scope: !203)
!210 = !DILocation(line: 104, column: 34, scope: !203)
!211 = !DILocation(line: 104, column: 9, scope: !205)
!212 = !DILocation(line: 105, column: 18, scope: !205)
!213 = !DILocation(line: 105, column: 9, scope: !207)
!214 = !DILocation(line: 106, column: 5, scope: !207)
!215 = !DILocation(line: 107, column: 2, scope: !200)
!216 = distinct !DISubprogram(name: "run_test_7", scope: !8, file: !7, line: 110, type: !118, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !17, retainedNodes: !217)
!217 = !{!218, !220, !222}
!218 = !DILocalVariable(name: "v1", scope: !219, file: !7, line: 111, type: !13, align: 4)
!219 = distinct !DILexicalBlock(scope: !216, file: !7, line: 111, column: 5)
!220 = !DILocalVariable(name: "v2", scope: !221, file: !7, line: 112, type: !13, align: 4)
!221 = distinct !DILexicalBlock(scope: !219, file: !7, line: 112, column: 5)
!222 = !DILocalVariable(name: "result", scope: !223, file: !7, line: 113, type: !13, align: 4)
!223 = distinct !DILexicalBlock(scope: !221, file: !7, line: 113, column: 5)
!224 = !DILocation(line: 111, column: 34, scope: !216)
!225 = !DILocation(line: 111, column: 9, scope: !219)
!226 = !DILocation(line: 112, column: 34, scope: !219)
!227 = !DILocation(line: 112, column: 9, scope: !221)
!228 = !DILocation(line: 113, column: 18, scope: !221)
!229 = !DILocation(line: 113, column: 9, scope: !223)
!230 = !DILocation(line: 114, column: 5, scope: !223)
!231 = !DILocation(line: 115, column: 2, scope: !216)
!232 = distinct !DISubprogram(name: "run_test_8", scope: !8, file: !7, line: 118, type: !118, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !17, retainedNodes: !233)
!233 = !{!234, !236, !238}
!234 = !DILocalVariable(name: "v1", scope: !235, file: !7, line: 119, type: !13, align: 4)
!235 = distinct !DILexicalBlock(scope: !232, file: !7, line: 119, column: 5)
!236 = !DILocalVariable(name: "v2", scope: !237, file: !7, line: 120, type: !13, align: 4)
!237 = distinct !DILexicalBlock(scope: !235, file: !7, line: 120, column: 5)
!238 = !DILocalVariable(name: "result", scope: !239, file: !7, line: 121, type: !13, align: 4)
!239 = distinct !DILexicalBlock(scope: !237, file: !7, line: 121, column: 5)
!240 = !DILocation(line: 119, column: 34, scope: !232)
!241 = !DILocation(line: 119, column: 9, scope: !235)
!242 = !DILocation(line: 120, column: 34, scope: !235)
!243 = !DILocation(line: 120, column: 9, scope: !237)
!244 = !DILocation(line: 121, column: 18, scope: !237)
!245 = !DILocation(line: 121, column: 9, scope: !239)
!246 = !DILocation(line: 122, column: 5, scope: !239)
!247 = !DILocation(line: 123, column: 2, scope: !232)
!248 = distinct !DISubprogram(name: "run_test_9", scope: !8, file: !7, line: 126, type: !118, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !17, retainedNodes: !249)
!249 = !{!250, !252, !254}
!250 = !DILocalVariable(name: "v1", scope: !251, file: !7, line: 127, type: !13, align: 4)
!251 = distinct !DILexicalBlock(scope: !248, file: !7, line: 127, column: 5)
!252 = !DILocalVariable(name: "v2", scope: !253, file: !7, line: 128, type: !13, align: 4)
!253 = distinct !DILexicalBlock(scope: !251, file: !7, line: 128, column: 5)
!254 = !DILocalVariable(name: "result", scope: !255, file: !7, line: 129, type: !13, align: 4)
!255 = distinct !DILexicalBlock(scope: !253, file: !7, line: 129, column: 5)
!256 = !DILocation(line: 127, column: 34, scope: !248)
!257 = !DILocation(line: 127, column: 9, scope: !251)
!258 = !DILocation(line: 128, column: 34, scope: !251)
!259 = !DILocation(line: 128, column: 9, scope: !253)
!260 = !DILocation(line: 129, column: 18, scope: !253)
!261 = !DILocation(line: 129, column: 9, scope: !255)
!262 = !DILocation(line: 130, column: 5, scope: !255)
!263 = !DILocation(line: 131, column: 2, scope: !248)
!264 = distinct !DISubprogram(name: "run_test_10", scope: !8, file: !7, line: 134, type: !118, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !17, retainedNodes: !265)
!265 = !{!266, !268, !270}
!266 = !DILocalVariable(name: "v1", scope: !267, file: !7, line: 135, type: !13, align: 4)
!267 = distinct !DILexicalBlock(scope: !264, file: !7, line: 135, column: 5)
!268 = !DILocalVariable(name: "v2", scope: !269, file: !7, line: 136, type: !13, align: 4)
!269 = distinct !DILexicalBlock(scope: !267, file: !7, line: 136, column: 5)
!270 = !DILocalVariable(name: "result", scope: !271, file: !7, line: 137, type: !13, align: 4)
!271 = distinct !DILexicalBlock(scope: !269, file: !7, line: 137, column: 5)
!272 = !DILocation(line: 135, column: 34, scope: !264)
!273 = !DILocation(line: 135, column: 9, scope: !267)
!274 = !DILocation(line: 136, column: 34, scope: !267)
!275 = !DILocation(line: 136, column: 9, scope: !269)
!276 = !DILocation(line: 137, column: 18, scope: !269)
!277 = !DILocation(line: 137, column: 9, scope: !271)
!278 = !DILocation(line: 138, column: 5, scope: !271)
!279 = !DILocation(line: 139, column: 2, scope: !264)
