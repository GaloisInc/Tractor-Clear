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

@_ZN9pow43_lib3src3lib7G_POW4317h0f15724307a2d11fE = internal unnamed_addr constant <{ [580 x i8] }> <{ [580 x i8] c"\00\00\00\00\00\00\80\BF\17E!\C0\BAt\8A\C0\F5/\CB\C0O\CC\08\C1\8Fq.\C1\90?V\C1\00\00\80\C1\1B\C4\95\C1\D3Z\AC\C1\D3\B5\C3\C1\FF\C8\DB\C1\EF\89\F4\C1\CD\F7\06\C2\04\F9\13\C2\00\00\00\00\00\00\80?\17E!@\BAt\8A@\F5/\CB@O\CC\08A\8Fq.A\90?VA\00\00\80A\1B\C4\95A\D3Z\ACA\D3\B5\C3A\FF\C8\DBA\EF\89\F4A\CD\F7\06B\04\F9\13B\18E!B\DF\D8.B\81\B1<Bl\CCJBF'YB\E8\BFgBW\94vBa\D1\82B\BAt\8ABm3\92B\BF\0C\9AB\00\00\A2B\8A\0C\AAB\C31\B2B\17o\BAB\FE\C3\C2B\F5/\CBB\80\B2\D3B*K\DCB\82\F9\E4B \BD\EDB\9C\95\F6B\98\82\FFB\DBA\04CO\CC\08C}`\0DC=\FE\11Ch\A5\16C\D8U\1BCi\0F C\F9\D1$Ce\9D)C\8Eq.CUN3C\9A38CB!=C0\17BCI\15GCr\1BLC\92)QC\90?VCT][C\C7\82`C\D1\AFeC^\E4jCW pC\A8cuC<\AEzC\00\00\80Cp\AC\82Ce\\\85C\D6\0F\88C\BA\C6\8AC\08\81\8DC\B7>\90C\C0\FF\92C\1B\C4\95C\BF\8B\98C\A5V\9BC\C5$\9EC\17\F6\A0C\96\CA\A3C9\A2\A6C\FA|\A9C\D3Z\ACC\BB;\AFC\AD\1F\B2C\A4\06\B5C\97\F0\B7C\82\DD\BAC^\CD\BDC%\C0\C0C\D3\B5\C3C`\AE\C6C\C8\A9\C9C\06\A8\CCC\13\A9\CFC\EA\AC\D2C\88\B3\D5C\E5\BC\D8C\FF\C8\DBC\CE\D7\DECP\E9\E1C\7F\FD\E4CV\14\E8C\D2-\EBC\EDI\EEC\A2h\F1C\EF\89\F4C\CF\AD\F7C<\D4\FAC4\FD\FDCY\94\00DY+\02D\99\C3\03D\15]\05D\CD\F7\06D\BE\93\08D\E60\0ADE\CF\0BD\D7n\0DD\9C\0F\0FD\90\B1\10D\B4T\12D\04\F9\13D\80\9E\15D&E\17D\F3\EC\18D\E7\95\1AD\00@\1CD<\EB\1DD\9A\97\1FD\18E!D" }>, align 4
@alloc_f5ffd2fd1476bab43ad89fb40c72d0c5 = private unnamed_addr constant <{ [10 x i8] }> <{ [10 x i8] c"src/lib.rs" }>, align 1
@alloc_916fc21f8fb6836ec656f0a772b197e2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\98\00\00\00\10\00\00\00" }>, align 8
@alloc_c761f54d5cf2d8e7e11a907f15b1da8a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\A0\00\00\00\05\00\00\00" }>, align 8

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
@run_test_16 = unnamed_addr alias i1 (), ptr @run_test_1
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
@run_test_32 = unnamed_addr alias i1 (), ptr @run_test_1
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
@run_test_48 = unnamed_addr alias i1 (), ptr @run_test_1
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
@run_test_64 = unnamed_addr alias i1 (), ptr @run_test_1
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
@run_test_80 = unnamed_addr alias i1 (), ptr @run_test_1
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

; Function Attrs: nonlazybind uwtable
define noundef float @pow43(i32 noundef %x) unnamed_addr #0 {
start:
  %_3.i = icmp slt i32 %x, 129
  br i1 %_3.i, label %bb1.i, label %bb3.i

bb3.i:                                            ; preds = %start
  %_11.i = icmp ult i32 %x, 1024
  %0 = shl i32 %x, 3
  %x.0.i = select i1 %_11.i, i32 %0, i32 %x
  %_14.i = shl i32 %x.0.i, 1
  %sign.i = and i32 %_14.i, 64
  %_32.i = add i32 %sign.i, %x.0.i
  %_31.i = ashr i32 %_32.i, 6
  %_30.i = add nsw i32 %_31.i, 16
  %_29.i = sext i32 %_30.i to i64
  %_35.i = icmp ult i32 %_30.i, 145
  br i1 %_35.i, label %bb6.i, label %panic1.i, !prof !2

bb1.i:                                            ; preds = %start
  %_7.i = add nsw i32 %x, 16
  %_6.i = sext i32 %_7.i to i64
  %_10.i = icmp ult i32 %_7.i, 145
  br i1 %_10.i, label %bb2.i, label %panic.i, !prof !2

bb2.i:                                            ; preds = %bb1.i
  %1 = getelementptr inbounds [145 x float], ptr @_ZN9pow43_lib3src3lib7G_POW4317h0f15724307a2d11fE, i64 0, i64 %_6.i
  %2 = load float, ptr %1, align 4, !noundef !3
  br label %_ZN9pow43_lib3src3lib5pow4317hd7ff497e6467b2dbE.exit

panic.i:                                          ; preds = %bb1.i
  tail call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 noundef %_6.i, i64 noundef 145, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_916fc21f8fb6836ec656f0a772b197e2) #3
  unreachable

bb6.i:                                            ; preds = %bb3.i
  %mult.0.i = select i1 %_11.i, float 1.600000e+01, float 2.560000e+02
  %_19.i = and i32 %x.0.i, 63
  %_18.i = sub nsw i32 %_19.i, %sign.i
  %_17.i = sitofp i32 %_18.i to float
  %_23.i = and i32 %x.0.i, -64
  %_22.i = add i32 %sign.i, %_23.i
  %_21.i = sitofp i32 %_22.i to float
  %frac.i = fdiv float %_17.i, %_21.i
  %3 = getelementptr inbounds [145 x float], ptr @_ZN9pow43_lib3src3lib7G_POW4317h0f15724307a2d11fE, i64 0, i64 %_29.i
  %_27.i = load float, ptr %3, align 4, !noundef !3
  %_40.i = fmul float %frac.i, 0x3FCC71C720000000
  %_38.i = fadd float %_40.i, 0x3FF5555560000000
  %_37.i = fmul float %frac.i, %_38.i
  %_36.i = fadd float %_37.i, 1.000000e+00
  %_26.i = fmul float %_36.i, %_27.i
  %4 = fmul float %mult.0.i, %_26.i
  br label %_ZN9pow43_lib3src3lib5pow4317hd7ff497e6467b2dbE.exit

panic1.i:                                         ; preds = %bb3.i
  tail call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 noundef %_29.i, i64 noundef 145, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_c761f54d5cf2d8e7e11a907f15b1da8a) #3
  unreachable

_ZN9pow43_lib3src3lib5pow4317hd7ff497e6467b2dbE.exit: ; preds = %bb6.i, %bb2.i
  %.0.i = phi float [ %2, %bb2.i ], [ %4, %bb6.i ]
  ret float %.0.i
}

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef zeroext i1 @run_test_1() unnamed_addr #2 {
start:
  ret i1 true
}

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"branch_weights", i32 2000, i32 1}
!3 = !{}
