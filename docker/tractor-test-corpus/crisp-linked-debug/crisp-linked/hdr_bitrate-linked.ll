; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@alloc_f5ffd2fd1476bab43ad89fb40c72d0c5 = private unnamed_addr constant <{ [10 x i8] }> <{ [10 x i8] c"src/lib.rs" }>, align 1
@alloc_5a44d35f368e79c164956e755c90cc1b = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00q\00\00\00\0B\00\00\00" }>, align 8
@_ZN15hdr_bitrate_lib3src3lib11hdr_bitrate8halfrate17h983811dec1237613E = internal unnamed_addr constant <{ [90 x i8] }> <{ [90 x i8] c"\00\04\08\0C\10\14\18\1C (08@HP\00\04\08\0C\10\14\18\1C (08@HP\00\10\18\1C (08@HPX`p\80\00\10\14\18\1C (08@P`p\80\A0\00\10\18\1C (08@P`p\80\A0\C0\00\10 0@P`p\80\90\A0\B0\C0\D0\E0" }>, align 1

@run_test_32 = unnamed_addr alias i1 (), ptr @run_test_101
@run_test_48 = unnamed_addr alias i1 (), ptr @run_test_101
@run_test_64 = unnamed_addr alias i1 (), ptr @run_test_101
@run_test_80 = unnamed_addr alias i1 (), ptr @run_test_101
@run_test_96 = unnamed_addr alias i1 (), ptr @run_test_101
@run_test_16 = unnamed_addr alias i1 (), ptr @run_test_101
@run_test_111 = unnamed_addr alias i1 (), ptr @run_test_110
@run_test_112 = unnamed_addr alias i1 (), ptr @run_test_110
@run_test_113 = unnamed_addr alias i1 (), ptr @run_test_110
@run_test_115 = unnamed_addr alias i1 (), ptr @run_test_110
@run_test_117 = unnamed_addr alias i1 (), ptr @run_test_110
@run_test_119 = unnamed_addr alias i1 (), ptr @run_test_101
@run_test_2 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_3 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_4 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_5 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_6 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_7 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_8 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_9 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_10 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_11 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_12 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_13 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_14 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_15 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_17 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_18 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_19 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_20 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_21 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_22 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_23 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_24 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_25 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_26 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_27 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_28 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_29 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_30 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_31 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_33 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_34 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_35 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_36 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_37 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_38 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_39 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_40 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_41 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_42 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_43 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_44 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_45 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_46 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_47 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_49 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_50 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_51 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_52 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_53 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_54 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_55 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_56 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_57 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_58 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_59 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_60 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_61 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_62 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_63 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_65 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_66 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_67 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_68 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_69 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_70 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_71 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_72 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_73 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_74 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_75 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_76 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_77 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_78 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_79 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_81 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_82 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_83 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_84 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_85 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_86 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_87 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_88 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_89 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_90 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_91 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_92 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_93 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_94 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_95 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_97 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_98 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_99 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_100 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_102 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_103 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_104 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_105 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_106 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_107 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_118 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_120 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_121 = unnamed_addr alias i1 (), ptr @run_test_1

; Function Attrs: nonlazybind uwtable
define noundef i32 @hdr_bitrate(ptr nocapture noundef readonly %h) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds i8, ptr %h, i64 1
  %_12.i = load i8, ptr %0, align 1, !noundef !2
  %_11.i = zext i8 %_12.i to i32
  %_21.i = lshr i32 %_11.i, 1
  %_20.i = and i32 %_21.i, 3
  %_19.i = add nsw i32 %_20.i, -1
  %_30.i = icmp ult i32 %_19.i, 3
  br i1 %_30.i, label %bb2.i, label %panic1.i, !prof !3

bb2.i:                                            ; preds = %start
  %1 = getelementptr inbounds i8, ptr %h, i64 2
  %_34.i = load i8, ptr %1, align 1, !noundef !2
  %2 = lshr i8 %_34.i, 4
  %_39.not.i = icmp eq i8 %2, 15
  br i1 %_39.not.i, label %panic2.i, label %_ZN15hdr_bitrate_lib3src3lib11hdr_bitrate17h12c82a41016992eeE.exit, !prof !4

panic1.i:                                         ; preds = %start
  tail call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 noundef -1, i64 noundef 3, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_5a44d35f368e79c164956e755c90cc1b) #2
  unreachable

panic2.i:                                         ; preds = %bb2.i
  tail call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 noundef 15, i64 noundef 15, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_5a44d35f368e79c164956e755c90cc1b) #2
  unreachable

_ZN15hdr_bitrate_lib3src3lib11hdr_bitrate17h12c82a41016992eeE.exit: ; preds = %bb2.i
  %_31.i = zext i8 %2 to i64
  %_18.i = zext i32 %_19.i to i64
  %_10.i = lshr i32 %_11.i, 3
  %_10.lobit.i = and i32 %_10.i, 1
  %_7.i = zext i32 %_10.lobit.i to i64
  %3 = getelementptr inbounds [2 x [3 x [15 x i8]]], ptr @_ZN15hdr_bitrate_lib3src3lib11hdr_bitrate8halfrate17h983811dec1237613E, i64 0, i64 %_7.i, i64 %_18.i, i64 %_31.i
  %_5.i = load i8, ptr %3, align 1, !noundef !2
  %_4.i = zext i8 %_5.i to i32
  %_2.i = shl nuw nsw i32 %_4.i, 1
  ret i32 %_2.i
}

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @run_test_1() unnamed_addr #0 {
hdr_bitrate.exit:
  ret i1 true
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @run_test_101() unnamed_addr #0 {
panic2.i.i:
  tail call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 noundef 15, i64 noundef 15, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_5a44d35f368e79c164956e755c90cc1b) #2
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @run_test_110() unnamed_addr #0 {
panic1.i.i:
  tail call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 noundef -1, i64 noundef 3, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_5a44d35f368e79c164956e755c90cc1b) #2
  unreachable
}

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{}
!3 = !{!"branch_weights", i32 2000, i32 1}
!4 = !{!"branch_weights", i32 1, i32 2000}
