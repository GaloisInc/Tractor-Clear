; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; ASSERT EQ: i1 1 = call i1 @run_test_1()
; ASSERT EQ: i1 1 = call i1 @run_test_2()
; ASSERT EQ: i1 1 = call i1 @run_test_3()
; ASSERT EQ: i1 1 = call i1 @run_test_4()
; ASSERT EQ: i1 1 = call i1 @run_test_5()

; Function Attrs: nonlazybind uwtable
define i32 @rev16(i32 %a) unnamed_addr #0 !dbg !6 {
start:
  %a.dbg.spill = alloca i32, align 4
  store i32 %a, ptr %a.dbg.spill, align 4
    #dbg_declare(ptr %a.dbg.spill, !15, !DIExpression(), !17)
  %0 = call i32 @_ZN9rev16_lib3src3lib5rev1617h149f3685f099d49aE(i32 %a), !dbg !18
  ret i32 %0, !dbg !19
}

; Function Attrs: nonlazybind uwtable
define internal i32 @_ZN9rev16_lib3src3lib5rev1617h149f3685f099d49aE(i32 %0) unnamed_addr #0 !dbg !20 {
start:
  %a = alloca i32, align 4
  store i32 %0, ptr %a, align 4
    #dbg_declare(ptr %a, !22, !DIExpression(), !23)
  %_4 = load i32, ptr %a, align 4, !dbg !24, !noundef !16
  %_3 = and i32 %_4, 43690, !dbg !25
  %_2 = lshr i32 %_3, 1, !dbg !25
  %_7 = load i32, ptr %a, align 4, !dbg !26, !noundef !16
  %_6 = and i32 %_7, 21845, !dbg !27
  %_5 = shl i32 %_6, 1, !dbg !27
  %1 = or i32 %_2, %_5, !dbg !28
  store i32 %1, ptr %a, align 4, !dbg !28
  %_10 = load i32, ptr %a, align 4, !dbg !29, !noundef !16
  %_9 = and i32 %_10, 52428, !dbg !30
  %_8 = lshr i32 %_9, 2, !dbg !30
  %_13 = load i32, ptr %a, align 4, !dbg !31, !noundef !16
  %_12 = and i32 %_13, 13107, !dbg !32
  %_11 = shl i32 %_12, 2, !dbg !32
  %2 = or i32 %_8, %_11, !dbg !33
  store i32 %2, ptr %a, align 4, !dbg !33
  %_16 = load i32, ptr %a, align 4, !dbg !34, !noundef !16
  %_15 = and i32 %_16, 61680, !dbg !35
  %_14 = lshr i32 %_15, 4, !dbg !35
  %_19 = load i32, ptr %a, align 4, !dbg !36, !noundef !16
  %_18 = and i32 %_19, 3855, !dbg !37
  %_17 = shl i32 %_18, 4, !dbg !37
  %3 = or i32 %_14, %_17, !dbg !38
  store i32 %3, ptr %a, align 4, !dbg !38
  %_22 = load i32, ptr %a, align 4, !dbg !39, !noundef !16
  %_21 = and i32 %_22, 65280, !dbg !40
  %_20 = lshr i32 %_21, 8, !dbg !40
  %_25 = load i32, ptr %a, align 4, !dbg !41, !noundef !16
  %_24 = and i32 %_25, 255, !dbg !42
  %_23 = shl i32 %_24, 8, !dbg !42
  %4 = or i32 %_20, %_23, !dbg !43
  store i32 %4, ptr %a, align 4, !dbg !43
  %5 = load i32, ptr %a, align 4, !dbg !44, !noundef !16
  ret i32 %5, !dbg !45
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_1() unnamed_addr #0 !dbg !46 {
start:
  %result.dbg.spill = alloca i32, align 4
  %a.dbg.spill = alloca i32, align 4
  store i32 580244498, ptr %a.dbg.spill, align 4, !dbg !55
    #dbg_declare(ptr %a.dbg.spill, !51, !DIExpression(), !56)
  %result = call i32 @rev16(i32 580244498), !dbg !57
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !57
    #dbg_declare(ptr %result.dbg.spill, !53, !DIExpression(), !58)
  %0 = icmp eq i32 %result, 18475, !dbg !59
  ret i1 %0, !dbg !60
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_2() unnamed_addr #0 !dbg !61 {
start:
  %result.dbg.spill = alloca i32, align 4
  %a.dbg.spill = alloca i32, align 4
  store i32 1089851626, ptr %a.dbg.spill, align 4, !dbg !67
    #dbg_declare(ptr %a.dbg.spill, !63, !DIExpression(), !68)
  %result = call i32 @rev16(i32 1089851626), !dbg !69
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !69
    #dbg_declare(ptr %result.dbg.spill, !65, !DIExpression(), !70)
  %0 = icmp eq i32 %result, 22283, !dbg !71
  ret i1 %0, !dbg !72
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_3() unnamed_addr #0 !dbg !73 {
start:
  %result.dbg.spill = alloca i32, align 4
  %a.dbg.spill = alloca i32, align 4
  store i32 1015771191, ptr %a.dbg.spill, align 4, !dbg !79
    #dbg_declare(ptr %a.dbg.spill, !75, !DIExpression(), !80)
  %result = call i32 @rev16(i32 1015771191), !dbg !81
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !81
    #dbg_declare(ptr %result.dbg.spill, !77, !DIExpression(), !82)
  %0 = icmp eq i32 %result, 60430, !dbg !83
  ret i1 %0, !dbg !84
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_4() unnamed_addr #0 !dbg !85 {
start:
  %result.dbg.spill = alloca i32, align 4
  %a.dbg.spill = alloca i32, align 4
  store i32 -2131136287, ptr %a.dbg.spill, align 4, !dbg !91
    #dbg_declare(ptr %a.dbg.spill, !87, !DIExpression(), !92)
  %result = call i32 @rev16(i32 -2131136287), !dbg !93
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !93
    #dbg_declare(ptr %result.dbg.spill, !89, !DIExpression(), !94)
  %0 = icmp eq i32 %result, 34574, !dbg !95
  ret i1 %0, !dbg !96
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_5() unnamed_addr #0 !dbg !97 {
start:
  %result.dbg.spill = alloca i32, align 4
  %a.dbg.spill = alloca i32, align 4
  store i32 -536124392, ptr %a.dbg.spill, align 4, !dbg !103
    #dbg_declare(ptr %a.dbg.spill, !99, !DIExpression(), !104)
  %result = call i32 @rev16(i32 -536124392), !dbg !105
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !105
    #dbg_declare(ptr %result.dbg.spill, !101, !DIExpression(), !106)
  %0 = icmp eq i32 %result, 6182, !dbg !107
  ret i1 %0, !dbg !108
}

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}

!0 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !1, producer: "clang LLVM (rustc version 1.70.0-nightly (84dd17b56 2023-04-14))", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!1 = !DIFile(filename: "lib.rs/@/3unoo3iimgh0hhps", directory: "/crisp-rust-outputs/B01_organic/rev16_lib/translated_rust")
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 2, !"RtLibUseGOT", i32 1}
!4 = !{i32 2, !"Dwarf Version", i32 4}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = distinct !DISubprogram(name: "rev16_ffi", linkageName: "rev16", scope: !8, file: !7, line: 15, type: !11, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !16, retainedNodes: !14)
!7 = !DIFile(filename: "src/lib.rs", directory: "/crisp-rust-outputs/B01_organic/rev16_lib/translated_rust", checksumkind: CSK_MD5, checksum: "25697890a780c1d4d765aacc479ae532")
!8 = !DINamespace(name: "lib", scope: !9)
!9 = !DINamespace(name: "src", scope: !10)
!10 = !DINamespace(name: "rev16_lib", scope: null)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !13}
!13 = !DIBasicType(name: "u32", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15}
!15 = !DILocalVariable(name: "a", arg: 1, scope: !6, file: !7, line: 15, type: !13)
!16 = !{}
!17 = !DILocation(line: 15, column: 29, scope: !6)
!18 = !DILocation(line: 16, column: 5, scope: !6)
!19 = !DILocation(line: 17, column: 2, scope: !6)
!20 = distinct !DISubprogram(name: "rev16", linkageName: "_ZN9rev16_lib3src3lib5rev1617h149f3685f099d49aE", scope: !8, file: !7, line: 6, type: !11, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !16, retainedNodes: !21)
!21 = !{!22}
!22 = !DILocalVariable(name: "a", arg: 1, scope: !20, file: !7, line: 6, type: !13)
!23 = !DILocation(line: 6, column: 14, scope: !20)
!24 = !DILocation(line: 7, column: 10, scope: !20)
!25 = !DILocation(line: 7, column: 9, scope: !20)
!26 = !DILocation(line: 7, column: 34, scope: !20)
!27 = !DILocation(line: 7, column: 33, scope: !20)
!28 = !DILocation(line: 7, column: 5, scope: !20)
!29 = !DILocation(line: 8, column: 10, scope: !20)
!30 = !DILocation(line: 8, column: 9, scope: !20)
!31 = !DILocation(line: 8, column: 34, scope: !20)
!32 = !DILocation(line: 8, column: 33, scope: !20)
!33 = !DILocation(line: 8, column: 5, scope: !20)
!34 = !DILocation(line: 9, column: 10, scope: !20)
!35 = !DILocation(line: 9, column: 9, scope: !20)
!36 = !DILocation(line: 9, column: 34, scope: !20)
!37 = !DILocation(line: 9, column: 33, scope: !20)
!38 = !DILocation(line: 9, column: 5, scope: !20)
!39 = !DILocation(line: 10, column: 10, scope: !20)
!40 = !DILocation(line: 10, column: 9, scope: !20)
!41 = !DILocation(line: 10, column: 34, scope: !20)
!42 = !DILocation(line: 10, column: 33, scope: !20)
!43 = !DILocation(line: 10, column: 5, scope: !20)
!44 = !DILocation(line: 11, column: 5, scope: !20)
!45 = !DILocation(line: 12, column: 2, scope: !20)
!46 = distinct !DISubprogram(name: "run_test_1", scope: !8, file: !7, line: 20, type: !47, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !16, retainedNodes: !50)
!47 = !DISubroutineType(types: !48)
!48 = !{!49}
!49 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!50 = !{!51, !53}
!51 = !DILocalVariable(name: "a", scope: !52, file: !7, line: 21, type: !13, align: 4)
!52 = distinct !DILexicalBlock(scope: !46, file: !7, line: 21, column: 5)
!53 = !DILocalVariable(name: "result", scope: !54, file: !7, line: 22, type: !13, align: 4)
!54 = distinct !DILexicalBlock(scope: !52, file: !7, line: 22, column: 5)
!55 = !DILocation(line: 21, column: 18, scope: !46)
!56 = !DILocation(line: 21, column: 9, scope: !52)
!57 = !DILocation(line: 22, column: 18, scope: !52)
!58 = !DILocation(line: 22, column: 9, scope: !54)
!59 = !DILocation(line: 23, column: 5, scope: !54)
!60 = !DILocation(line: 24, column: 2, scope: !46)
!61 = distinct !DISubprogram(name: "run_test_2", scope: !8, file: !7, line: 27, type: !47, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !16, retainedNodes: !62)
!62 = !{!63, !65}
!63 = !DILocalVariable(name: "a", scope: !64, file: !7, line: 28, type: !13, align: 4)
!64 = distinct !DILexicalBlock(scope: !61, file: !7, line: 28, column: 5)
!65 = !DILocalVariable(name: "result", scope: !66, file: !7, line: 29, type: !13, align: 4)
!66 = distinct !DILexicalBlock(scope: !64, file: !7, line: 29, column: 5)
!67 = !DILocation(line: 28, column: 18, scope: !61)
!68 = !DILocation(line: 28, column: 9, scope: !64)
!69 = !DILocation(line: 29, column: 18, scope: !64)
!70 = !DILocation(line: 29, column: 9, scope: !66)
!71 = !DILocation(line: 30, column: 5, scope: !66)
!72 = !DILocation(line: 31, column: 2, scope: !61)
!73 = distinct !DISubprogram(name: "run_test_3", scope: !8, file: !7, line: 34, type: !47, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !16, retainedNodes: !74)
!74 = !{!75, !77}
!75 = !DILocalVariable(name: "a", scope: !76, file: !7, line: 35, type: !13, align: 4)
!76 = distinct !DILexicalBlock(scope: !73, file: !7, line: 35, column: 5)
!77 = !DILocalVariable(name: "result", scope: !78, file: !7, line: 36, type: !13, align: 4)
!78 = distinct !DILexicalBlock(scope: !76, file: !7, line: 36, column: 5)
!79 = !DILocation(line: 35, column: 18, scope: !73)
!80 = !DILocation(line: 35, column: 9, scope: !76)
!81 = !DILocation(line: 36, column: 18, scope: !76)
!82 = !DILocation(line: 36, column: 9, scope: !78)
!83 = !DILocation(line: 37, column: 5, scope: !78)
!84 = !DILocation(line: 38, column: 2, scope: !73)
!85 = distinct !DISubprogram(name: "run_test_4", scope: !8, file: !7, line: 41, type: !47, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !16, retainedNodes: !86)
!86 = !{!87, !89}
!87 = !DILocalVariable(name: "a", scope: !88, file: !7, line: 42, type: !13, align: 4)
!88 = distinct !DILexicalBlock(scope: !85, file: !7, line: 42, column: 5)
!89 = !DILocalVariable(name: "result", scope: !90, file: !7, line: 43, type: !13, align: 4)
!90 = distinct !DILexicalBlock(scope: !88, file: !7, line: 43, column: 5)
!91 = !DILocation(line: 42, column: 18, scope: !85)
!92 = !DILocation(line: 42, column: 9, scope: !88)
!93 = !DILocation(line: 43, column: 18, scope: !88)
!94 = !DILocation(line: 43, column: 9, scope: !90)
!95 = !DILocation(line: 44, column: 5, scope: !90)
!96 = !DILocation(line: 45, column: 2, scope: !85)
!97 = distinct !DISubprogram(name: "run_test_5", scope: !8, file: !7, line: 48, type: !47, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !16, retainedNodes: !98)
!98 = !{!99, !101}
!99 = !DILocalVariable(name: "a", scope: !100, file: !7, line: 49, type: !13, align: 4)
!100 = distinct !DILexicalBlock(scope: !97, file: !7, line: 49, column: 5)
!101 = !DILocalVariable(name: "result", scope: !102, file: !7, line: 50, type: !13, align: 4)
!102 = distinct !DILexicalBlock(scope: !100, file: !7, line: 50, column: 5)
!103 = !DILocation(line: 49, column: 18, scope: !97)
!104 = !DILocation(line: 49, column: 9, scope: !100)
!105 = !DILocation(line: 50, column: 18, scope: !100)
!106 = !DILocation(line: 50, column: 9, scope: !102)
!107 = !DILocation(line: 51, column: 5, scope: !102)
!108 = !DILocation(line: 52, column: 2, scope: !97)
