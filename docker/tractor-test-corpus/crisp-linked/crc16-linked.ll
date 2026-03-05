; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; ASSERT EQ: i1 1 = call i1 @run_test_1()
; ASSERT EQ: i1 1 = call i1 @run_test_2()
; ASSERT EQ: i1 1 = call i1 @run_test_3()

define zeroext i1 @main() {
  %res = call i1 @run_test_1()
  ret i1 %res
}

%"core::ptr::metadata::PtrRepr<[u8]>" = type { [2 x i64] }
%"core::num::error::TryFromIntError" = type { {} }
%"core::ptr::metadata::PtrComponents<u8>" = type { ptr, {} }
%"core::ptr::metadata::PtrRepr<u8>" = type { [1 x i64] }

@_ZN9crc16_lib3src3lib18TFLAC_CRC16_TABLES17hed463e074a527dbbE = internal constant <{ [4096 x i8] }> <{ [4096 x i8] c"\00\00\05\80\0F\80\0A\00\1B\80\1E\00\14\00\11\803\806\00<\009\80(\00-\80'\80\22\00c\80f\00l\00i\80x\00}\80w\80r\00P\00U\80_\80Z\00K\80N\00D\00A\80\C3\80\C6\00\CC\00\C9\80\D8\00\DD\80\D7\80\D2\00\F0\00\F5\80\FF\80\FA\00\EB\80\EE\00\E4\00\E1\80\A0\00\A5\80\AF\80\AA\00\BB\80\BE\00\B4\00\B1\80\93\80\96\00\9C\00\99\80\88\00\8D\80\87\80\82\00\83\81\86\01\8C\01\89\81\98\01\9D\81\97\81\92\01\B0\01\B5\81\BF\81\BA\01\AB\81\AE\01\A4\01\A1\81\E0\01\E5\81\EF\81\EA\01\FB\81\FE\01\F4\01\F1\81\D3\81\D6\01\DC\01\D9\81\C8\01\CD\81\C7\81\C2\01@\01E\81O\81J\01[\81^\01T\01Q\81s\81v\01|\01y\81h\01m\81g\81b\01#\81&\01,\01)\818\01=\817\812\01\10\01\15\81\1F\81\1A\01\0B\81\0E\01\04\01\01\81\03\83\06\03\0C\03\09\83\18\03\1D\83\17\83\12\030\035\83?\83:\03+\83.\03$\03!\83`\03e\83o\83j\03{\83~\03t\03q\83S\83V\03\\\03Y\83H\03M\83G\83B\03\C0\03\C5\83\CF\83\CA\03\DB\83\DE\03\D4\03\D1\83\F3\83\F6\03\FC\03\F9\83\E8\03\ED\83\E7\83\E2\03\A3\83\A6\03\AC\03\A9\83\B8\03\BD\83\B7\83\B2\03\90\03\95\83\9F\83\9A\03\8B\83\8E\03\84\03\81\83\80\02\85\82\8F\82\8A\02\9B\82\9E\02\94\02\91\82\B3\82\B6\02\BC\02\B9\82\A8\02\AD\82\A7\82\A2\02\E3\82\E6\02\EC\02\E9\82\F8\02\FD\82\F7\82\F2\02\D0\02\D5\82\DF\82\DA\02\CB\82\CE\02\C4\02\C1\82C\82F\02L\02I\82X\02]\82W\82R\02p\02u\82\7F\82z\02k\82n\02d\02a\82 \02%\82/\82*\02;\82>\024\021\82\13\82\16\02\1C\02\19\82\08\02\0D\82\07\82\02\02\00\00\03\86\03\8C\00\0A\03\98\00\1E\00\14\03\92\03\B0\006\00<\03\BA\00(\03\AE\03\A4\00\22\03\E0\00f\00l\03\EA\00x\03\FE\03\F4\00r\00P\03\D6\03\DC\00Z\03\C8\00N\00D\03\C2\03@\00\C6\00\CC\03J\00\D8\03^\03T\00\D2\00\F0\03v\03|\00\FA\03h\00\EE\00\E4\03b\00\A0\03&\03,\00\AA\038\00\BE\00\B4\032\03\10\00\96\00\9C\03\1A\00\88\03\0E\03\04\00\82\06\80\05\06\05\0C\06\8A\05\18\06\9E\06\94\05\12\050\06\B6\06\BC\05:\06\A8\05.\05$\06\A2\05`\06\E6\06\EC\05j\06\F8\05~\05t\06\F2\06\D0\05V\05\\\06\DA\05H\06\CE\06\C4\05B\05\C0\06F\06L\05\CA\06X\05\DE\05\D4\06R\06p\05\F6\05\FC\06z\05\E8\06n\06d\05\E2\06 \05\A6\05\AC\06*\05\B8\06>\064\05\B2\05\90\06\16\06\1C\05\9A\06\08\05\8E\05\84\06\02\09\80\0A\06\0A\0C\09\8A\0A\18\09\9E\09\94\0A\12\0A0\09\B6\09\BC\0A:\09\A8\0A.\0A$\09\A2\0A`\09\E6\09\EC\0Aj\09\F8\0A~\0At\09\F2\09\D0\0AV\0A\\\09\DA\0AH\09\CE\09\C4\0AB\0A\C0\09F\09L\0A\CA\09X\0A\DE\0A\D4\09R\09p\0A\F6\0A\FC\09z\0A\E8\09n\09d\0A\E2\09 \0A\A6\0A\AC\09*\0A\B8\09>\094\0A\B2\0A\90\09\16\09\1C\0A\9A\09\08\0A\8E\0A\84\09\02\0F\00\0C\86\0C\8C\0F\0A\0C\98\0F\1E\0F\14\0C\92\0C\B0\0F6\0F<\0C\BA\0F(\0C\AE\0C\A4\0F\22\0C\E0\0Ff\0Fl\0C\EA\0Fx\0C\FE\0C\F4\0Fr\0FP\0C\D6\0C\DC\0FZ\0C\C8\0FN\0FD\0C\C2\0C@\0F\C6\0F\CC\0CJ\0F\D8\0C^\0CT\0F\D2\0F\F0\0Cv\0C|\0F\FA\0Ch\0F\EE\0F\E4\0Cb\0F\A0\0C&\0C,\0F\AA\0C8\0F\BE\0F\B4\0C2\0C\10\0F\96\0F\9C\0C\1A\0F\88\0C\0E\0C\04\0F\82\00\00\17\80+\80<\00S\80D\00x\00o\80\A3\80\B4\00\88\00\9F\80\F0\00\E7\80\DB\80\CC\00C\81T\01h\01\7F\81\10\01\07\81;\81,\01\E0\01\F7\81\CB\81\DC\01\B3\81\A4\01\98\01\8F\81\83\82\94\02\A8\02\BF\82\D0\02\C7\82\FB\82\EC\02 \027\82\0B\82\1C\02s\82d\02X\02O\82\C0\03\D7\83\EB\83\FC\03\93\83\84\03\B8\03\AF\83c\83t\03H\03_\830\03'\83\1B\83\0C\03\03\85\14\05(\05?\85P\05G\85{\85l\05\A0\05\B7\85\8B\85\9C\05\F3\85\E4\05\D8\05\CF\85@\04W\84k\84|\04\13\84\04\048\04/\84\E3\84\F4\04\C8\04\DF\84\B0\04\A7\84\9B\84\8C\04\80\07\97\87\AB\87\BC\07\D3\87\C4\07\F8\07\EF\87#\874\07\08\07\1F\87p\07g\87[\87L\07\C3\86\D4\06\E8\06\FF\86\90\06\87\86\BB\86\AC\06`\06w\86K\86\\\063\86$\06\18\06\0F\86\03\8A\14\0A(\0A?\8AP\0AG\8A{\8Al\0A\A0\0A\B7\8A\8B\8A\9C\0A\F3\8A\E4\0A\D8\0A\CF\8A@\0BW\8Bk\8B|\0B\13\8B\04\0B8\0B/\8B\E3\8B\F4\0B\C8\0B\DF\8B\B0\0B\A7\8B\9B\8B\8C\0B\80\08\97\88\AB\88\BC\08\D3\88\C4\08\F8\08\EF\88#\884\08\08\08\1F\88p\08g\88[\88L\08\C3\89\D4\09\E8\09\FF\89\90\09\87\89\BB\89\AC\09`\09w\89K\89\\\093\89$\09\18\09\0F\89\00\0F\17\8F+\8F<\0FS\8FD\0Fx\0Fo\8F\A3\8F\B4\0F\88\0F\9F\8F\F0\0F\E7\8F\DB\8F\CC\0FC\8ET\0Eh\0E\7F\8E\10\0E\07\8E;\8E,\0E\E0\0E\F7\8E\CB\8E\DC\0E\B3\8E\A4\0E\98\0E\8F\8E\83\8D\94\0D\A8\0D\BF\8D\D0\0D\C7\8D\FB\8D\EC\0D \0D7\8D\0B\8D\1C\0Ds\8Dd\0DX\0DO\8D\C0\0C\D7\8C\EB\8C\FC\0C\93\8C\84\0C\B8\0C\AF\8Cc\8Ct\0CH\0C_\8C0\0C'\8C\1B\8C\0C\0C\00\00\03\94\03\A8\00<\03\D0\00D\00x\03\EC\03 \00\B4\00\88\03\1C\00\F0\03d\03X\00\CC\06@\05\D4\05\E8\06|\05\90\06\04\068\05\AC\05`\06\F4\06\C8\05\\\06\B0\05$\05\18\06\8C\0C\80\0F\14\0F(\0C\BC\0FP\0C\C4\0C\F8\0Fl\0F\A0\0C4\0C\08\0F\9C\0Cp\0F\E4\0F\D8\0CL\0A\C0\09T\09h\0A\FC\09\10\0A\84\0A\B8\09,\09\E0\0At\0AH\09\DC\0A0\09\A4\09\98\0A\0C\1D\80\1E\14\1E(\1D\BC\1EP\1D\C4\1D\F8\1El\1E\A0\1D4\1D\08\1E\9C\1Dp\1E\E4\1E\D8\1DL\1B\C0\18T\18h\1B\FC\18\10\1B\84\1B\B8\18,\18\E0\1Bt\1BH\18\DC\1B0\18\A4\18\98\1B\0C\11\00\12\94\12\A8\11<\12\D0\11D\11x\12\EC\12 \11\B4\11\88\12\1C\11\F0\12d\12X\11\CC\17@\14\D4\14\E8\17|\14\90\17\04\178\14\AC\14`\17\F4\17\C8\14\\\17\B0\14$\14\18\17\8C?\80<\14<(?\BC<P?\C4?\F8<l<\A0?4?\08<\9C?p<\E4<\D8?L9\C0:T:h9\FC:\109\849\B8:,:\E09t9H:\DC90:\A4:\989\0C3\000\940\A83<0\D03D3x0\EC0 3\B43\880\1C3\F00d0X3\CC5@6\D46\E85|6\905\04586\AC6`5\F45\C86\\5\B06$6\185\8C\22\00!\94!\A8\22<!\D0\22D\22x!\EC! \22\B4\22\88!\1C\22\F0!d!X\22\CC$@'\D4'\E8$|'\90$\04$8'\AC'`$\F4$\C8'\\$\B0'$'\18$\8C.\80-\14-(.\BC-P.\C4.\F8-l-\A0.4.\08-\9C.p-\E4-\D8.L(\C0+T+h(\FC+\10(\84(\B8+,+\E0(t(H+\DC(0+\A4+\98(\0C\00\00{\80\F3\80\88\00\E3\81\98\01\10\01k\81\C3\83\B8\030\03K\83 \02[\82\D3\82\A8\02\83\87\F8\07p\07\0B\87`\06\1B\86\93\86\E8\06@\04;\84\B3\84\C8\04\A3\85\D8\05P\05+\85\03\8Fx\0F\F0\0F\8B\8F\E0\0E\9B\8E\13\8Eh\0E\C0\0C\BB\8C3\8CH\0C#\8DX\0D\D0\0D\AB\8D\80\08\FB\88s\88\08\08c\89\18\09\90\09\EB\89C\8B8\0B\B0\0B\CB\8B\A0\0A\DB\8AS\8A(\0A\03\9Ex\1E\F0\1E\8B\9E\E0\1F\9B\9F\13\9Fh\1F\C0\1D\BB\9D3\9DH\1D#\9CX\1C\D0\1C\AB\9C\80\19\FB\99s\99\08\19c\98\18\18\90\18\EB\98C\9A8\1A\B0\1A\CB\9A\A0\1B\DB\9BS\9B(\1B\00\11{\91\F3\91\88\11\E3\90\98\10\10\10k\90\C3\92\B8\120\12K\92 \13[\93\D3\93\A8\13\83\96\F8\16p\16\0B\96`\17\1B\97\93\97\E8\17@\15;\95\B3\95\C8\15\A3\94\D8\14P\14+\94\03\BCx<\F0<\8B\BC\E0=\9B\BD\13\BDh=\C0?\BB\BF3\BFH?#\BEX>\D0>\AB\BE\80;\FB\BBs\BB\08;c\BA\18:\90:\EB\BAC\B888\B08\CB\B8\A09\DB\B9S\B9(9\003{\B3\F3\B3\883\E3\B2\982\102k\B2\C3\B0\B8000K\B0 1[\B1\D3\B1\A81\83\B4\F84p4\0B\B4`5\1B\B5\93\B5\E85@7;\B7\B3\B7\C87\A3\B6\D86P6+\B6\00\22{\A2\F3\A2\88\22\E3\A3\98#\10#k\A3\C3\A1\B8!0!K\A1  [\A0\D3\A0\A8 \83\A5\F8%p%\0B\A5`$\1B\A4\93\A4\E8$@&;\A6\B3\A6\C8&\A3\A7\D8'P'+\A7\03\ADx-\F0-\8B\AD\E0,\9B\AC\13\ACh,\C0.\BB\AE3\AEH.#\AFX/\D0/\AB\AF\80*\FB\AAs\AA\08*c\AB\18+\90+\EB\ABC\A98)\B0)\CB\A9\A0(\DB\A8S\A8((\00\00\03\F8\03p\00\88\06\E0\05\18\05\90\06h\09@\0A\B8\0A0\09\C8\0F\A0\0CX\0C\D0\0F(\12\80\11x\11\F0\12\08\14`\17\98\17\10\14\E8\1B\C0\188\18\B0\1BH\1D \1E\D8\1EP\1D\A8!\80\22x\22\F0!\08'`$\98$\10'\E8(\C0+8+\B0(H. -\D8-P.\A83\000\F80p3\885\E06\186\905h:@9\B890:\C8<\A0?X?\D0<(G\80DxD\F0G\08A`B\98B\10A\E8N\C0M8M\B0NHH K\D8KPH\A8U\00V\F8VpU\88S\E0P\18P\90Sh\\@_\B8_0\\\C8Z\A0YXY\D0Z(f\00e\F8epf\88`\E0c\18c\90`ho@l\B8l0o\C8i\A0jXj\D0i(t\80wxw\F0t\08r`q\98q\10r\E8}\C0~8~\B0}H{ x\D8xP{\A8\8B\80\88x\88\F0\8B\08\8D`\8E\98\8E\10\8D\E8\82\C0\818\81\B0\82H\84 \87\D8\87P\84\A8\99\00\9A\F8\9Ap\99\88\9F\E0\9C\18\9C\90\9Fh\90@\93\B8\930\90\C8\96\A0\95X\95\D0\96(\AA\00\A9\F8\A9p\AA\88\AC\E0\AF\18\AF\90\ACh\A3@\A0\B8\A00\A3\C8\A5\A0\A6X\A6\D0\A5(\B8\80\BBx\BB\F0\B8\08\BE`\BD\98\BD\10\BE\E8\B1\C0\B28\B2\B0\B1H\B7 \B4\D8\B4P\B7\A8\CC\00\CF\F8\CFp\CC\88\CA\E0\C9\18\C9\90\CAh\C5@\C6\B8\C60\C5\C8\C3\A0\C0X\C0\D0\C3(\DE\80\DDx\DD\F0\DE\08\D8`\DB\98\DB\10\D8\E8\D7\C0\D48\D4\B0\D7H\D1 \D2\D8\D2P\D1\A8\ED\80\EEx\EE\F0\ED\08\EB`\E8\98\E8\10\EB\E8\E4\C0\E78\E7\B0\E4H\E2 \E1\D8\E1P\E2\A8\FF\00\FC\F8\FCp\FF\88\F9\E0\FA\18\FA\90\F9h\F6@\F5\B8\F50\F6\C8\F0\A0\F3X\F3\D0\F0(\00\00\13\81#\820\03C\84P\05`\06s\87\83\88\90\09\A0\0A\B3\8B\C0\0C\D3\8D\E3\8E\F0\0F\03\91\10\10 \133\92@\15S\94c\97p\16\80\19\93\98\A3\9B\B0\1A\C3\9D\D0\1C\E0\1F\F3\9E\03\A2\10#  3\A1@&S\A7c\A4p%\80*\93\AB\A3\A8\B0)\C3\AE\D0/\E0,\F3\AD\003\13\B2#\B100C\B7P6`5s\B4\83\BB\90:\A09\B3\B8\C0?\D3\BE\E3\BD\F0<\03\C4\10E F3\C7@@S\C1c\C2pC\80L\93\CD\A3\CE\B0O\C3\C8\D0I\E0J\F3\CB\00U\13\D4#\D70VC\D1PP`Ss\D2\83\DD\90\\\A0_\B3\DE\C0Y\D3\D8\E3\DB\F0Z\00f\13\E7#\E40eC\E2Pc``s\E1\83\EE\90o\A0l\B3\ED\C0j\D3\EB\E3\E8\F0i\03\F7\10v u3\F4@sS\F2c\F1pp\80\7F\93\FE\A3\FD\B0|\C3\FB\D0z\E0y\F3\F8\03\08\10\89 \8A3\0B@\8CS\0Dc\0Ep\8F\80\80\93\01\A3\02\B0\83\C3\04\D0\85\E0\86\F3\07\00\99\13\18#\1B0\9AC\1DP\9C`\9Fs\1E\83\11\90\90\A0\93\B3\12\C0\95\D3\14\E3\17\F0\96\00\AA\13+#(0\A9C.P\AF`\ACs-\83\22\90\A3\A0\A0\B3!\C0\A6\D3'\E3$\F0\A5\03;\10\BA \B938@\BFS>c=p\BC\80\B3\932\A31\B0\B0\C37\D0\B6\E0\B5\F34\00\CC\13M#N0\CFCHP\C9`\CAsK\83D\90\C5\A0\C6\B3G\C0\C0\D3A\E3B\F0\C3\03]\10\DC \DF3^@\D9SXc[p\DA\80\D5\93T\A3W\B0\D6\C3Q\D0\D0\E0\D3\F3R\03n\10\EF \EC3m@\EASkchp\E9\80\E6\93g\A3d\B0\E5\C3b\D0\E3\E0\E0\F3a\00\FF\13~#}0\FCC{P\FA`\F9sx\83w\90\F6\A0\F5\B3t\C0\F3\D3r\E3q\F0\F0\00\00\06\10\0C \0A0\18@\1EP\14`\12p0\806\90<\A0:\B0(\C0.\D0$\E0\22\F0e\80c\90i\A0o\B0}\C0{\D0q\E0w\F0U\00S\10Y _0M@KPA`Gp\CF\80\C9\90\C3\A0\C5\B0\D7\C0\D1\D0\DB\E0\DD\F0\FF\00\F9\10\F3 \F50\E7@\E1P\EB`\EDp\AA\00\AC\10\A6 \A00\B2@\B4P\BE`\B8p\9A\80\9C\90\96\A0\90\B0\82\C0\84\D0\8E\E0\88\F0\9B\81\9D\91\97\A1\91\B1\83\C1\85\D1\8F\E1\89\F1\AB\01\AD\11\A7!\A11\B3A\B5Q\BFa\B9q\FE\01\F8\11\F2!\F41\E6A\E0Q\EAa\ECq\CE\81\C8\91\C2\A1\C4\B1\D6\C1\D0\D1\DA\E1\DC\F1T\01R\11X!^1LAJQ@aFqd\81b\91h\A1n\B1|\C1z\D1p\E1v\F11\817\91=\A1;\B1)\C1/\D1%\E1#\F1\01\01\07\11\0D!\0B1\19A\1FQ\15a\13q3\835\93?\A39\B3+\C3-\D3'\E3!\F3\03\03\05\13\0F#\093\1BC\1DS\17c\11sV\03P\13Z#\\3NCHSBcDsf\83`\93j\A3l\B3~\C3x\D3r\E3t\F3\FC\03\FA\13\F0#\F63\E4C\E2S\E8c\EEs\CC\83\CA\93\C0\A3\C6\B3\D4\C3\D2\D3\D8\E3\DE\F3\99\83\9F\93\95\A3\93\B3\81\C3\87\D3\8D\E3\8B\F3\A9\03\AF\13\A5#\A33\B1C\B7S\BDc\BBs\A8\02\AE\12\A4\22\A22\B0B\B6R\BCb\BAr\98\82\9E\92\94\A2\92\B2\80\C2\86\D2\8C\E2\8A\F2\CD\82\CB\92\C1\A2\C7\B2\D5\C2\D3\D2\D9\E2\DF\F2\FD\02\FB\12\F1\22\F72\E5B\E3R\E9b\EFrg\82a\92k\A2m\B2\7F\C2y\D2s\E2u\F2W\02Q\12[\22]2OBIRCbEr\02\02\04\12\0E\22\082\1AB\1CR\16b\10r2\824\92>\A28\B2*\C2,\D2&\E2 \F2" }>, align 2
@alloc_f5ffd2fd1476bab43ad89fb40c72d0c5 = private unnamed_addr constant <{ [10 x i8] }> <{ [10 x i8] c"src/lib.rs" }>, align 1
@alloc_af6a6ea55f66237b995b1f7d021ca6d0 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00!\08\00\00\16\00\00\00" }>, align 8
@alloc_8a448476e41a1c577736fef12139acd5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00!\08\00\007\00\00\00" }>, align 8
@str.0 = internal constant [28 x i8] c"attempt to add with overflow"
@alloc_64fa8243a8fba827f7eee6dd5f1d40f3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00!\08\00\005\00\00\00" }>, align 8
@alloc_18db6e0a5d202194de2e6728a81a101d = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\22\08\00\00\14\00\00\00" }>, align 8
@alloc_96c7af0e2d86dfb99f28fd7c41134563 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00#\08\00\00\0F\00\00\00" }>, align 8
@alloc_57af6ae2edd7dc2a4e30547de9981c70 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00$\08\00\00'\00\00\00" }>, align 8
@alloc_3c2a609c89b0f299646cbe591a403226 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00$\08\00\00%\00\00\00" }>, align 8
@alloc_cdc2cf13e3f1cfafb52bcce8a5b5975f = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00$\08\00\00\0F\00\00\00" }>, align 8
@alloc_59d80a0cdbe9d182dea37755826f7ae8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00%\08\00\00'\00\00\00" }>, align 8
@alloc_364eb88264faa985233e4988da6bed84 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00%\08\00\00%\00\00\00" }>, align 8
@alloc_5f732468b37f17e843400cb35aa7b93b = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00%\08\00\00\0F\00\00\00" }>, align 8
@alloc_a70e07ea39256409370d2d0c7b6fa0d5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00&\08\00\00'\00\00\00" }>, align 8
@alloc_1388d27c39dd93f9d375abe4251a47f8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00&\08\00\00%\00\00\00" }>, align 8
@alloc_245a0e339dfd12d3c39966713bf8c0fe = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00&\08\00\00\0F\00\00\00" }>, align 8
@alloc_fe64ae535ad01fe965938a7bf4373339 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00'\08\00\00'\00\00\00" }>, align 8
@alloc_d350627508ad4f413de8348eabcbdc42 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00'\08\00\00%\00\00\00" }>, align 8
@alloc_cd0d52529a7014f8b447c941a799a92c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00'\08\00\00\0F\00\00\00" }>, align 8
@alloc_c18e034c31e9fe6fae8749ec8e79792c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00(\08\00\00'\00\00\00" }>, align 8
@alloc_a11c6771b174fecfc12b14626931b5c5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00(\08\00\00%\00\00\00" }>, align 8
@alloc_c8bbe3d40d7f87c9d4b886621da5185d = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00(\08\00\00\0F\00\00\00" }>, align 8
@alloc_7b3e824396c172fa320e95cfc7027435 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00)\08\00\00'\00\00\00" }>, align 8
@alloc_4ea89818aeff730605a9ce2fcad78cb2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00)\08\00\00%\00\00\00" }>, align 8
@alloc_aa21bc06145886830adf1a059f4c7961 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00)\08\00\00\0F\00\00\00" }>, align 8
@alloc_fb9dcfa74205e4a3fdacb6268eb08f5f = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00*\08\00\00\09\00\00\00" }>, align 8
@alloc_f24f77ace498da94f044afd7094acca4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00+\08\00\00\09\00\00\00" }>, align 8
@str.1 = internal constant [33 x i8] c"attempt to subtract with overflow"
@alloc_01ca615c958dc53b6cc46468531ab25c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00.\08\00\00\1D\00\00\00" }>, align 8
@alloc_c4910eeff1cb48d25400c40cee316773 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00.\08\00\00\13\00\00\00" }>, align 8
@alloc_aaedd2481b409d39d588b1b0c48499cb = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\000\08\00\00\0F\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define zeroext i16 @crc16(ptr %d, i32 %len, i16 zeroext %crc16_0) unnamed_addr #0 {
start:
  %d.dbg.spill1 = alloca { ptr, i64 }, align 8
  %crc16_0.dbg.spill = alloca i16, align 2
  %len.dbg.spill = alloca i32, align 4
  %d.dbg.spill = alloca ptr, align 8
  store ptr %d, ptr %d.dbg.spill, align 8
  store i32 %len, ptr %len.dbg.spill, align 4
  store i16 %crc16_0, ptr %crc16_0.dbg.spill, align 2
  %_5 = zext i32 %len to i64
  %0 = call { ptr, i64 } @_ZN4core5slice3raw14from_raw_parts17h610118dec667aa5fE(ptr %d, i64 %_5)
  %d.0 = extractvalue { ptr, i64 } %0, 0
  %d.1 = extractvalue { ptr, i64 } %0, 1
  %1 = getelementptr inbounds { ptr, i64 }, ptr %d.dbg.spill1, i32 0, i32 0
  store ptr %d.0, ptr %1, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %d.dbg.spill1, i32 0, i32 1
  store i64 %d.1, ptr %2, align 8
  %3 = call i16 @_ZN9crc16_lib3src3lib5crc1617h3b9134a0c87bd1ffE(ptr align 1 %d.0, i64 %d.1, i32 %len, i16 %crc16_0)
  ret i16 %3
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @_ZN4core5slice3raw14from_raw_parts17h610118dec667aa5fE(ptr %data, i64 %len) unnamed_addr #1 {
start:
  %data_address.dbg.spill = alloca ptr, align 8
  %len.dbg.spill = alloca i64, align 8
  %data.dbg.spill = alloca ptr, align 8
  %_8 = alloca { ptr, i64 }, align 8
  %_7 = alloca %"core::ptr::metadata::PtrRepr<[u8]>", align 8
  store ptr %data, ptr %data.dbg.spill, align 8
  store i64 %len, ptr %len.dbg.spill, align 8
  store ptr %data, ptr %data_address.dbg.spill, align 8
  store ptr %data, ptr %_8, align 8
  %0 = getelementptr inbounds { ptr, i64 }, ptr %_8, i32 0, i32 1
  store i64 %len, ptr %0, align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %_8, i32 0, i32 0
  %2 = load ptr, ptr %1, align 8, !noundef !4
  %3 = getelementptr inbounds { ptr, i64 }, ptr %_8, i32 0, i32 1
  %4 = load i64, ptr %3, align 8, !noundef !4
  %5 = getelementptr inbounds { ptr, i64 }, ptr %_7, i32 0, i32 0
  store ptr %2, ptr %5, align 8
  %6 = getelementptr inbounds { ptr, i64 }, ptr %_7, i32 0, i32 1
  store i64 %4, ptr %6, align 8
  %7 = getelementptr inbounds { ptr, i64 }, ptr %_7, i32 0, i32 0
  %_3.0 = load ptr, ptr %7, align 8, !noundef !4
  %8 = getelementptr inbounds { ptr, i64 }, ptr %_7, i32 0, i32 1
  %_3.1 = load i64, ptr %8, align 8, !noundef !4
  %9 = insertvalue { ptr, i64 } poison, ptr %_3.0, 0
  %10 = insertvalue { ptr, i64 } %9, i64 %_3.1, 1
  ret { ptr, i64 } %10
}

; Function Attrs: nonlazybind uwtable
define internal i16 @_ZN9crc16_lib3src3lib5crc1617h3b9134a0c87bd1ffE(ptr align 1 %d.0, i64 %d.1, i32 %len, i16 %0) unnamed_addr #0 {
start:
  %byte.dbg.spill = alloca i8, align 1
  %len.dbg.spill = alloca i32, align 4
  %d.dbg.spill = alloca { ptr, i64 }, align 8
  %_132 = alloca ptr, align 8
  %iter = alloca { ptr, ptr }, align 8
  %_125 = alloca { i64, i64 }, align 8
  %offset = alloca i64, align 8
  %remaining = alloca i64, align 8
  %crc16_0 = alloca i16, align 2
  store i16 %0, ptr %crc16_0, align 2
  %1 = getelementptr inbounds { ptr, i64 }, ptr %d.dbg.spill, i32 0, i32 0
  store ptr %d.0, ptr %1, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %d.dbg.spill, i32 0, i32 1
  store i64 %d.1, ptr %2, align 8
  store i32 %len, ptr %len.dbg.spill, align 4
  %3 = call { i64, i64 } @"_ZN4core7convert3num18ptr_try_from_impls69_$LT$impl$u20$core..convert..TryFrom$LT$u32$GT$$u20$for$u20$usize$GT$8try_from17h7b1d115a05dda4e9E"(i32 %len)
  %_6.0 = extractvalue { i64, i64 } %3, 0
  %_6.1 = extractvalue { i64, i64 } %3, 1
  %_5 = call i64 @"_ZN4core6result19Result$LT$T$C$E$GT$9unwrap_or17hf292cb718edf61afE"(i64 %_6.0, i64 %_6.1, i64 -1)
  %4 = call i64 @_ZN4core3cmp3Ord3min17hbd2ee066558eac2eE(i64 %_5, i64 %d.1)
  store i64 %4, ptr %remaining, align 8
  store i64 0, ptr %offset, align 8
  br label %bb4

bb4:                                              ; preds = %bb30, %start
  %_10 = load i64, ptr %remaining, align 8, !noundef !4
  %_9 = icmp uge i64 %_10, 8
  br i1 %_9, label %bb5, label %bb31

bb31:                                             ; preds = %bb4
  %_126 = load i64, ptr %offset, align 8, !noundef !4
  %_128 = load i64, ptr %offset, align 8, !noundef !4
  %_129 = load i64, ptr %remaining, align 8, !noundef !4
  %5 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_128, i64 %_129)
  %_130.0 = extractvalue { i64, i1 } %5, 0
  %_130.1 = extractvalue { i64, i1 } %5, 1
  %6 = call i1 @llvm.expect.i1(i1 %_130.1, i1 false)
  br i1 %6, label %panic25, label %bb33

bb5:                                              ; preds = %bb4
  %_15 = load i64, ptr %offset, align 8, !noundef !4
  %_17 = icmp ult i64 %_15, %d.1
  %7 = call i1 @llvm.expect.i1(i1 %_17, i1 true)
  br i1 %7, label %bb6, label %panic

bb6:                                              ; preds = %bb5
  %8 = getelementptr inbounds [0 x i8], ptr %d.0, i64 0, i64 %_15
  %_14 = load i8, ptr %8, align 1, !noundef !4
  %_13 = zext i8 %_14 to i16
  %_12 = shl i16 %_13, 8
  %_21 = load i64, ptr %offset, align 8, !noundef !4
  %9 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_21, i64 1)
  %_22.0 = extractvalue { i64, i1 } %9, 0
  %_22.1 = extractvalue { i64, i1 } %9, 1
  %10 = call i1 @llvm.expect.i1(i1 %_22.1, i1 false)
  br i1 %10, label %panic1, label %bb7

panic:                                            ; preds = %bb5
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %_15, i64 %d.1, ptr align 8 @alloc_af6a6ea55f66237b995b1f7d021ca6d0) #7
  unreachable

bb7:                                              ; preds = %bb6
  %_24 = icmp ult i64 %_22.0, %d.1
  %11 = call i1 @llvm.expect.i1(i1 %_24, i1 true)
  br i1 %11, label %bb8, label %panic2

panic1:                                           ; preds = %bb6
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.0, i64 28, ptr align 8 @alloc_8a448476e41a1c577736fef12139acd5) #7
  unreachable

bb8:                                              ; preds = %bb7
  %12 = getelementptr inbounds [0 x i8], ptr %d.0, i64 0, i64 %_22.0
  %_19 = load i8, ptr %12, align 1, !noundef !4
  %_18 = zext i8 %_19 to i16
  %_11 = or i16 %_12, %_18
  %13 = load i16, ptr %crc16_0, align 2, !noundef !4
  %14 = xor i16 %13, %_11
  store i16 %14, ptr %crc16_0, align 2
  %_37 = load i16, ptr %crc16_0, align 2, !noundef !4
  %_36 = lshr i16 %_37, 8
  %_35 = zext i16 %_36 to i64
  %_39 = icmp ult i64 %_35, 256
  %15 = call i1 @llvm.expect.i1(i1 %_39, i1 true)
  br i1 %15, label %bb9, label %panic3

panic2:                                           ; preds = %bb7
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %_22.0, i64 %d.1, ptr align 8 @alloc_64fa8243a8fba827f7eee6dd5f1d40f3) #7
  unreachable

bb9:                                              ; preds = %bb8
  %16 = getelementptr inbounds [256 x i16], ptr getelementptr inbounds ([8 x [256 x i16]], ptr @_ZN9crc16_lib3src3lib18TFLAC_CRC16_TABLES17hed463e074a527dbbE, i64 0, i64 7), i64 0, i64 %_35
  %_32 = load i16, ptr %16, align 2, !noundef !4
  %_45 = load i16, ptr %crc16_0, align 2, !noundef !4
  %_44 = and i16 %_45, 255
  %_43 = zext i16 %_44 to i64
  %_47 = icmp ult i64 %_43, 256
  %17 = call i1 @llvm.expect.i1(i1 %_47, i1 true)
  br i1 %17, label %bb10, label %panic4

panic3:                                           ; preds = %bb8
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %_35, i64 256, ptr align 8 @alloc_18db6e0a5d202194de2e6728a81a101d) #7
  unreachable

bb10:                                             ; preds = %bb9
  %18 = getelementptr inbounds [256 x i16], ptr getelementptr inbounds ([8 x [256 x i16]], ptr @_ZN9crc16_lib3src3lib18TFLAC_CRC16_TABLES17hed463e074a527dbbE, i64 0, i64 6), i64 0, i64 %_43
  %_40 = load i16, ptr %18, align 2, !noundef !4
  %_31 = xor i16 %_32, %_40
  %_54 = load i64, ptr %offset, align 8, !noundef !4
  %19 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_54, i64 2)
  %_55.0 = extractvalue { i64, i1 } %19, 0
  %_55.1 = extractvalue { i64, i1 } %19, 1
  %20 = call i1 @llvm.expect.i1(i1 %_55.1, i1 false)
  br i1 %20, label %panic5, label %bb11

panic4:                                           ; preds = %bb9
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %_43, i64 256, ptr align 8 @alloc_96c7af0e2d86dfb99f28fd7c41134563) #7
  unreachable

bb11:                                             ; preds = %bb10
  %_57 = icmp ult i64 %_55.0, %d.1
  %21 = call i1 @llvm.expect.i1(i1 %_57, i1 true)
  br i1 %21, label %bb12, label %panic6

panic5:                                           ; preds = %bb10
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.0, i64 28, ptr align 8 @alloc_57af6ae2edd7dc2a4e30547de9981c70) #7
  unreachable

bb12:                                             ; preds = %bb11
  %22 = getelementptr inbounds [0 x i8], ptr %d.0, i64 0, i64 %_55.0
  %_52 = load i8, ptr %22, align 1, !noundef !4
  %_51 = zext i8 %_52 to i64
  %_59 = icmp ult i64 %_51, 256
  %23 = call i1 @llvm.expect.i1(i1 %_59, i1 true)
  br i1 %23, label %bb13, label %panic7

panic6:                                           ; preds = %bb11
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %_55.0, i64 %d.1, ptr align 8 @alloc_3c2a609c89b0f299646cbe591a403226) #7
  unreachable

bb13:                                             ; preds = %bb12
  %24 = getelementptr inbounds [256 x i16], ptr getelementptr inbounds ([8 x [256 x i16]], ptr @_ZN9crc16_lib3src3lib18TFLAC_CRC16_TABLES17hed463e074a527dbbE, i64 0, i64 5), i64 0, i64 %_51
  %_48 = load i16, ptr %24, align 2, !noundef !4
  %_30 = xor i16 %_31, %_48
  %_66 = load i64, ptr %offset, align 8, !noundef !4
  %25 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_66, i64 3)
  %_67.0 = extractvalue { i64, i1 } %25, 0
  %_67.1 = extractvalue { i64, i1 } %25, 1
  %26 = call i1 @llvm.expect.i1(i1 %_67.1, i1 false)
  br i1 %26, label %panic8, label %bb14

panic7:                                           ; preds = %bb12
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %_51, i64 256, ptr align 8 @alloc_cdc2cf13e3f1cfafb52bcce8a5b5975f) #7
  unreachable

bb14:                                             ; preds = %bb13
  %_69 = icmp ult i64 %_67.0, %d.1
  %27 = call i1 @llvm.expect.i1(i1 %_69, i1 true)
  br i1 %27, label %bb15, label %panic9

panic8:                                           ; preds = %bb13
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.0, i64 28, ptr align 8 @alloc_59d80a0cdbe9d182dea37755826f7ae8) #7
  unreachable

bb15:                                             ; preds = %bb14
  %28 = getelementptr inbounds [0 x i8], ptr %d.0, i64 0, i64 %_67.0
  %_64 = load i8, ptr %28, align 1, !noundef !4
  %_63 = zext i8 %_64 to i64
  %_71 = icmp ult i64 %_63, 256
  %29 = call i1 @llvm.expect.i1(i1 %_71, i1 true)
  br i1 %29, label %bb16, label %panic10

panic9:                                           ; preds = %bb14
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %_67.0, i64 %d.1, ptr align 8 @alloc_364eb88264faa985233e4988da6bed84) #7
  unreachable

bb16:                                             ; preds = %bb15
  %30 = getelementptr inbounds [256 x i16], ptr getelementptr inbounds ([8 x [256 x i16]], ptr @_ZN9crc16_lib3src3lib18TFLAC_CRC16_TABLES17hed463e074a527dbbE, i64 0, i64 4), i64 0, i64 %_63
  %_60 = load i16, ptr %30, align 2, !noundef !4
  %_29 = xor i16 %_30, %_60
  %_78 = load i64, ptr %offset, align 8, !noundef !4
  %31 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_78, i64 4)
  %_79.0 = extractvalue { i64, i1 } %31, 0
  %_79.1 = extractvalue { i64, i1 } %31, 1
  %32 = call i1 @llvm.expect.i1(i1 %_79.1, i1 false)
  br i1 %32, label %panic11, label %bb17

panic10:                                          ; preds = %bb15
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %_63, i64 256, ptr align 8 @alloc_5f732468b37f17e843400cb35aa7b93b) #7
  unreachable

bb17:                                             ; preds = %bb16
  %_81 = icmp ult i64 %_79.0, %d.1
  %33 = call i1 @llvm.expect.i1(i1 %_81, i1 true)
  br i1 %33, label %bb18, label %panic12

panic11:                                          ; preds = %bb16
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.0, i64 28, ptr align 8 @alloc_a70e07ea39256409370d2d0c7b6fa0d5) #7
  unreachable

bb18:                                             ; preds = %bb17
  %34 = getelementptr inbounds [0 x i8], ptr %d.0, i64 0, i64 %_79.0
  %_76 = load i8, ptr %34, align 1, !noundef !4
  %_75 = zext i8 %_76 to i64
  %_83 = icmp ult i64 %_75, 256
  %35 = call i1 @llvm.expect.i1(i1 %_83, i1 true)
  br i1 %35, label %bb19, label %panic13

panic12:                                          ; preds = %bb17
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %_79.0, i64 %d.1, ptr align 8 @alloc_1388d27c39dd93f9d375abe4251a47f8) #7
  unreachable

bb19:                                             ; preds = %bb18
  %36 = getelementptr inbounds [256 x i16], ptr getelementptr inbounds ([8 x [256 x i16]], ptr @_ZN9crc16_lib3src3lib18TFLAC_CRC16_TABLES17hed463e074a527dbbE, i64 0, i64 3), i64 0, i64 %_75
  %_72 = load i16, ptr %36, align 2, !noundef !4
  %_28 = xor i16 %_29, %_72
  %_90 = load i64, ptr %offset, align 8, !noundef !4
  %37 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_90, i64 5)
  %_91.0 = extractvalue { i64, i1 } %37, 0
  %_91.1 = extractvalue { i64, i1 } %37, 1
  %38 = call i1 @llvm.expect.i1(i1 %_91.1, i1 false)
  br i1 %38, label %panic14, label %bb20

panic13:                                          ; preds = %bb18
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %_75, i64 256, ptr align 8 @alloc_245a0e339dfd12d3c39966713bf8c0fe) #7
  unreachable

bb20:                                             ; preds = %bb19
  %_93 = icmp ult i64 %_91.0, %d.1
  %39 = call i1 @llvm.expect.i1(i1 %_93, i1 true)
  br i1 %39, label %bb21, label %panic15

panic14:                                          ; preds = %bb19
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.0, i64 28, ptr align 8 @alloc_fe64ae535ad01fe965938a7bf4373339) #7
  unreachable

bb21:                                             ; preds = %bb20
  %40 = getelementptr inbounds [0 x i8], ptr %d.0, i64 0, i64 %_91.0
  %_88 = load i8, ptr %40, align 1, !noundef !4
  %_87 = zext i8 %_88 to i64
  %_95 = icmp ult i64 %_87, 256
  %41 = call i1 @llvm.expect.i1(i1 %_95, i1 true)
  br i1 %41, label %bb22, label %panic16

panic15:                                          ; preds = %bb20
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %_91.0, i64 %d.1, ptr align 8 @alloc_d350627508ad4f413de8348eabcbdc42) #7
  unreachable

bb22:                                             ; preds = %bb21
  %42 = getelementptr inbounds [256 x i16], ptr getelementptr inbounds ([8 x [256 x i16]], ptr @_ZN9crc16_lib3src3lib18TFLAC_CRC16_TABLES17hed463e074a527dbbE, i64 0, i64 2), i64 0, i64 %_87
  %_84 = load i16, ptr %42, align 2, !noundef !4
  %_27 = xor i16 %_28, %_84
  %_102 = load i64, ptr %offset, align 8, !noundef !4
  %43 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_102, i64 6)
  %_103.0 = extractvalue { i64, i1 } %43, 0
  %_103.1 = extractvalue { i64, i1 } %43, 1
  %44 = call i1 @llvm.expect.i1(i1 %_103.1, i1 false)
  br i1 %44, label %panic17, label %bb23

panic16:                                          ; preds = %bb21
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %_87, i64 256, ptr align 8 @alloc_cd0d52529a7014f8b447c941a799a92c) #7
  unreachable

bb23:                                             ; preds = %bb22
  %_105 = icmp ult i64 %_103.0, %d.1
  %45 = call i1 @llvm.expect.i1(i1 %_105, i1 true)
  br i1 %45, label %bb24, label %panic18

panic17:                                          ; preds = %bb22
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.0, i64 28, ptr align 8 @alloc_c18e034c31e9fe6fae8749ec8e79792c) #7
  unreachable

bb24:                                             ; preds = %bb23
  %46 = getelementptr inbounds [0 x i8], ptr %d.0, i64 0, i64 %_103.0
  %_100 = load i8, ptr %46, align 1, !noundef !4
  %_99 = zext i8 %_100 to i64
  %_107 = icmp ult i64 %_99, 256
  %47 = call i1 @llvm.expect.i1(i1 %_107, i1 true)
  br i1 %47, label %bb25, label %panic19

panic18:                                          ; preds = %bb23
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %_103.0, i64 %d.1, ptr align 8 @alloc_a11c6771b174fecfc12b14626931b5c5) #7
  unreachable

bb25:                                             ; preds = %bb24
  %48 = getelementptr inbounds [256 x i16], ptr getelementptr inbounds ([8 x [256 x i16]], ptr @_ZN9crc16_lib3src3lib18TFLAC_CRC16_TABLES17hed463e074a527dbbE, i64 0, i64 1), i64 0, i64 %_99
  %_96 = load i16, ptr %48, align 2, !noundef !4
  %_26 = xor i16 %_27, %_96
  %_114 = load i64, ptr %offset, align 8, !noundef !4
  %49 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_114, i64 7)
  %_115.0 = extractvalue { i64, i1 } %49, 0
  %_115.1 = extractvalue { i64, i1 } %49, 1
  %50 = call i1 @llvm.expect.i1(i1 %_115.1, i1 false)
  br i1 %50, label %panic20, label %bb26

panic19:                                          ; preds = %bb24
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %_99, i64 256, ptr align 8 @alloc_c8bbe3d40d7f87c9d4b886621da5185d) #7
  unreachable

bb26:                                             ; preds = %bb25
  %_117 = icmp ult i64 %_115.0, %d.1
  %51 = call i1 @llvm.expect.i1(i1 %_117, i1 true)
  br i1 %51, label %bb27, label %panic21

panic20:                                          ; preds = %bb25
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.0, i64 28, ptr align 8 @alloc_7b3e824396c172fa320e95cfc7027435) #7
  unreachable

bb27:                                             ; preds = %bb26
  %52 = getelementptr inbounds [0 x i8], ptr %d.0, i64 0, i64 %_115.0
  %_112 = load i8, ptr %52, align 1, !noundef !4
  %_111 = zext i8 %_112 to i64
  %_119 = icmp ult i64 %_111, 256
  %53 = call i1 @llvm.expect.i1(i1 %_119, i1 true)
  br i1 %53, label %bb28, label %panic22

panic21:                                          ; preds = %bb26
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %_115.0, i64 %d.1, ptr align 8 @alloc_4ea89818aeff730605a9ce2fcad78cb2) #7
  unreachable

bb28:                                             ; preds = %bb27
  %54 = getelementptr inbounds [256 x i16], ptr @_ZN9crc16_lib3src3lib18TFLAC_CRC16_TABLES17hed463e074a527dbbE, i64 0, i64 %_111
  %_108 = load i16, ptr %54, align 2, !noundef !4
  %_25 = xor i16 %_26, %_108
  store i16 %_25, ptr %crc16_0, align 2
  %55 = load i64, ptr %offset, align 8, !noundef !4
  %56 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %55, i64 8)
  %_120.0 = extractvalue { i64, i1 } %56, 0
  %_120.1 = extractvalue { i64, i1 } %56, 1
  %57 = call i1 @llvm.expect.i1(i1 %_120.1, i1 false)
  br i1 %57, label %panic23, label %bb29

panic22:                                          ; preds = %bb27
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %_111, i64 256, ptr align 8 @alloc_aa21bc06145886830adf1a059f4c7961) #7
  unreachable

bb29:                                             ; preds = %bb28
  store i64 %_120.0, ptr %offset, align 8
  %58 = load i64, ptr %remaining, align 8, !noundef !4
  %_121.0 = sub i64 %58, 8
  %_121.1 = icmp ult i64 %58, 8
  %59 = call i1 @llvm.expect.i1(i1 %_121.1, i1 false)
  br i1 %59, label %panic24, label %bb30

panic23:                                          ; preds = %bb28
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.0, i64 28, ptr align 8 @alloc_fb9dcfa74205e4a3fdacb6268eb08f5f) #7
  unreachable

bb30:                                             ; preds = %bb29
  store i64 %_121.0, ptr %remaining, align 8
  br label %bb4

panic24:                                          ; preds = %bb29
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.1, i64 33, ptr align 8 @alloc_f24f77ace498da94f044afd7094acca4) #7
  unreachable

bb33:                                             ; preds = %bb31
  store i64 %_126, ptr %_125, align 8
  %60 = getelementptr inbounds { i64, i64 }, ptr %_125, i32 0, i32 1
  store i64 %_130.0, ptr %60, align 8
  %61 = getelementptr inbounds { i64, i64 }, ptr %_125, i32 0, i32 0
  %62 = load i64, ptr %61, align 8, !noundef !4
  %63 = getelementptr inbounds { i64, i64 }, ptr %_125, i32 0, i32 1
  %64 = load i64, ptr %63, align 8, !noundef !4
  %65 = call { ptr, i64 } @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h4bcbeca96f2a7fadE"(ptr align 1 %d.0, i64 %d.1, i64 %62, i64 %64, ptr align 8 @alloc_c4910eeff1cb48d25400c40cee316773)
  %_124.0 = extractvalue { ptr, i64 } %65, 0
  %_124.1 = extractvalue { ptr, i64 } %65, 1
  %66 = call { ptr, ptr } @"_ZN4core5slice4iter87_$LT$impl$u20$core..iter..traits..collect..IntoIterator$u20$for$u20$$RF$$u5b$T$u5d$$GT$9into_iter17hff93bf9f56a9364cE"(ptr align 1 %_124.0, i64 %_124.1)
  %_122.0 = extractvalue { ptr, ptr } %66, 0
  %_122.1 = extractvalue { ptr, ptr } %66, 1
  %67 = getelementptr inbounds { ptr, ptr }, ptr %iter, i32 0, i32 0
  store ptr %_122.0, ptr %67, align 8
  %68 = getelementptr inbounds { ptr, ptr }, ptr %iter, i32 0, i32 1
  store ptr %_122.1, ptr %68, align 8
  br label %bb36

panic25:                                          ; preds = %bb31
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.0, i64 28, ptr align 8 @alloc_01ca615c958dc53b6cc46468531ab25c) #7
  unreachable

bb36:                                             ; preds = %bb40, %bb33
  %69 = call align 1 ptr @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8315464e0c558e38E"(ptr align 8 %iter)
  store ptr %69, ptr %_132, align 8
  %70 = load ptr, ptr %_132, align 8, !noundef !4
  %71 = ptrtoint ptr %70 to i64
  %72 = icmp eq i64 %71, 0
  %_134 = select i1 %72, i64 0, i64 1
  %73 = icmp eq i64 %_134, 0
  br i1 %73, label %bb39, label %bb38

bb39:                                             ; preds = %bb36
  %74 = load i16, ptr %crc16_0, align 2, !noundef !4
  ret i16 %74

bb38:                                             ; preds = %bb36
  %_148 = load ptr, ptr %_132, align 8, !nonnull !4, !align !5, !noundef !4
  %byte = load i8, ptr %_148, align 1, !noundef !4
  store i8 %byte, ptr %byte.dbg.spill, align 1
  %_137 = load i16, ptr %crc16_0, align 2, !noundef !4
  %_136 = shl i16 %_137, 8
  %_144 = load i16, ptr %crc16_0, align 2, !noundef !4
  %_143 = lshr i16 %_144, 8
  %_145 = zext i8 %byte to i16
  %_142 = xor i16 %_143, %_145
  %_141 = zext i16 %_142 to i64
  %_147 = icmp ult i64 %_141, 256
  %75 = call i1 @llvm.expect.i1(i1 %_147, i1 true)
  br i1 %75, label %bb40, label %panic26

bb32:                                             ; No predecessors!
  unreachable

bb40:                                             ; preds = %bb38
  %76 = getelementptr inbounds [256 x i16], ptr @_ZN9crc16_lib3src3lib18TFLAC_CRC16_TABLES17hed463e074a527dbbE, i64 0, i64 %_141
  %_138 = load i16, ptr %76, align 2, !noundef !4
  %77 = xor i16 %_136, %_138
  store i16 %77, ptr %crc16_0, align 2
  br label %bb36

panic26:                                          ; preds = %bb38
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %_141, i64 256, ptr align 8 @alloc_aaedd2481b409d39d588b1b0c48499cb) #7
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @"_ZN4core7convert3num18ptr_try_from_impls69_$LT$impl$u20$core..convert..TryFrom$LT$u32$GT$$u20$for$u20$usize$GT$8try_from17h7b1d115a05dda4e9E"(i32 %value) unnamed_addr #1 {
start:
  %value.dbg.spill = alloca i32, align 4
  %0 = alloca { i64, i64 }, align 8
  store i32 %value, ptr %value.dbg.spill, align 4
  %_2 = zext i32 %value to i64
  %1 = getelementptr inbounds { i64, i64 }, ptr %0, i32 0, i32 1
  store i64 %_2, ptr %1, align 8
  store i64 0, ptr %0, align 8
  %2 = getelementptr inbounds { i64, i64 }, ptr %0, i32 0, i32 0
  %3 = load i64, ptr %2, align 8, !range !6, !noundef !4
  %4 = getelementptr inbounds { i64, i64 }, ptr %0, i32 0, i32 1
  %5 = load i64, ptr %4, align 8
  %6 = insertvalue { i64, i64 } poison, i64 %3, 0
  %7 = insertvalue { i64, i64 } %6, i64 %5, 1
  ret { i64, i64 } %7
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @"_ZN4core6result19Result$LT$T$C$E$GT$9unwrap_or17hf292cb718edf61afE"(i64 %0, i64 %1, i64 %default) unnamed_addr #1 {
start:
  %t.dbg.spill = alloca i64, align 8
  %e.dbg.spill = alloca %"core::num::error::TryFromIntError", align 1
  %default.dbg.spill = alloca i64, align 8
  %_6 = alloca i8, align 1
  %2 = alloca i64, align 8
  %self = alloca { i64, i64 }, align 8
  %3 = getelementptr inbounds { i64, i64 }, ptr %self, i32 0, i32 0
  store i64 %0, ptr %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, ptr %self, i32 0, i32 1
  store i64 %1, ptr %4, align 8
  store i64 %default, ptr %default.dbg.spill, align 8
  store i8 1, ptr %_6, align 1
  %_3 = load i64, ptr %self, align 8, !range !6, !noundef !4
  %5 = icmp eq i64 %_3, 0
  br i1 %5, label %bb3, label %bb1

bb3:                                              ; preds = %start
  %6 = getelementptr inbounds { i64, i64 }, ptr %self, i32 0, i32 1
  %t = load i64, ptr %6, align 8, !noundef !4
  store i64 %t, ptr %t.dbg.spill, align 8
  store i64 %t, ptr %2, align 8
  br label %bb7

bb1:                                              ; preds = %start
  store i8 0, ptr %_6, align 1
  store i64 %default, ptr %2, align 8
  br label %bb7

bb2:                                              ; No predecessors!
  unreachable

bb7:                                              ; preds = %bb1, %bb3
  %7 = load i8, ptr %_6, align 1, !range !7, !noundef !4
  %8 = trunc i8 %7 to i1
  br i1 %8, label %bb6, label %bb5

bb5:                                              ; preds = %bb6, %bb7
  %9 = load i64, ptr %2, align 8, !noundef !4
  ret i64 %9

bb6:                                              ; preds = %bb7
  br label %bb5
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_ZN4core3cmp3Ord3min17hbd2ee066558eac2eE(i64 %self, i64 %other) unnamed_addr #1 {
start:
  %other.dbg.spill = alloca i64, align 8
  %self.dbg.spill = alloca i64, align 8
  store i64 %self, ptr %self.dbg.spill, align 8
  store i64 %other, ptr %other.dbg.spill, align 8
  %0 = call i64 @_ZN4core3cmp6min_by17h6b703cf3a3cc4762E(i64 %self, i64 %other)
  ret i64 %0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.expect.i1(i1, i1) #3

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64, i64, ptr align 8) unnamed_addr #4

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1, i64, ptr align 8) unnamed_addr #4

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h4bcbeca96f2a7fadE"(ptr align 1 %self.0, i64 %self.1, i64 %index.0, i64 %index.1, ptr align 8 %0) unnamed_addr #1 {
start:
  %index.dbg.spill = alloca { i64, i64 }, align 8
  %self.dbg.spill = alloca { ptr, i64 }, align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill, i32 0, i32 0
  store ptr %self.0, ptr %1, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill, i32 0, i32 1
  store i64 %self.1, ptr %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, ptr %index.dbg.spill, i32 0, i32 0
  store i64 %index.0, ptr %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, ptr %index.dbg.spill, i32 0, i32 1
  store i64 %index.1, ptr %4, align 8
  %5 = call { ptr, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hd72f7df2e2079cb5E"(i64 %index.0, i64 %index.1, ptr align 1 %self.0, i64 %self.1, ptr align 8 %0)
  %6 = extractvalue { ptr, i64 } %5, 0
  %7 = extractvalue { ptr, i64 } %5, 1
  %8 = insertvalue { ptr, i64 } poison, ptr %6, 0
  %9 = insertvalue { ptr, i64 } %8, i64 %7, 1
  ret { ptr, i64 } %9
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @"_ZN4core5slice4iter87_$LT$impl$u20$core..iter..traits..collect..IntoIterator$u20$for$u20$$RF$$u5b$T$u5d$$GT$9into_iter17hff93bf9f56a9364cE"(ptr align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %self.dbg.spill = alloca { ptr, i64 }, align 8
  %0 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill, i32 0, i32 0
  store ptr %self.0, ptr %0, align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill, i32 0, i32 1
  store i64 %self.1, ptr %1, align 8
  %2 = call { ptr, ptr } @"_ZN4core5slice4iter13Iter$LT$T$GT$3new17h5e47d1a7e1f9dc7aE"(ptr align 1 %self.0, i64 %self.1)
  %3 = extractvalue { ptr, ptr } %2, 0
  %4 = extractvalue { ptr, ptr } %2, 1
  %5 = insertvalue { ptr, ptr } poison, ptr %3, 0
  %6 = insertvalue { ptr, ptr } %5, ptr %4, 1
  ret { ptr, ptr } %6
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal align 1 ptr @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8315464e0c558e38E"(ptr align 8 %self) unnamed_addr #1 {
start:
  %self.dbg.spill23 = alloca ptr, align 8
  %data_address.dbg.spill = alloca ptr, align 8
  %self.dbg.spill21 = alloca ptr, align 8
  %0 = alloca ptr, align 8
  %count.dbg.spill19 = alloca i64, align 8
  %self.dbg.spill18 = alloca ptr, align 8
  %self.dbg.spill17 = alloca ptr, align 8
  %ptr.dbg.spill15 = alloca ptr, align 8
  %1 = alloca ptr, align 8
  %count.dbg.spill = alloca i64, align 8
  %self.dbg.spill14 = alloca ptr, align 8
  %self.dbg.spill13 = alloca ptr, align 8
  %old.dbg.spill = alloca ptr, align 8
  %self.dbg.spill11 = alloca ptr, align 8
  %self.dbg.spill9 = alloca ptr, align 8
  %ptr.dbg.spill7 = alloca ptr, align 8
  %self.dbg.spill5 = alloca ptr, align 8
  %ptr.dbg.spill = alloca ptr, align 8
  %self.dbg.spill3 = alloca ptr, align 8
  %self.dbg.spill2 = alloca ptr, align 8
  %self.dbg.spill = alloca ptr, align 8
  %_48 = alloca %"core::ptr::metadata::PtrComponents<u8>", align 8
  %_47 = alloca %"core::ptr::metadata::PtrRepr<u8>", align 8
  %_37 = alloca ptr, align 8
  %_23 = alloca ptr, align 8
  %_18 = alloca ptr, align 8
  %_16 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %metadata.dbg.spill = alloca {}, align 1
  store ptr %self, ptr %self.dbg.spill, align 8
  %3 = getelementptr inbounds { ptr, ptr }, ptr %self, i32 0, i32 1
  %self1 = load ptr, ptr %3, align 8, !nonnull !4, !noundef !4
  store ptr %self1, ptr %self.dbg.spill2, align 8
  store ptr %self1, ptr %self.dbg.spill3, align 8
  store ptr %self1, ptr %_18, align 8
  %ptr = load ptr, ptr %_18, align 8, !noundef !4
  store ptr %ptr, ptr %ptr.dbg.spill, align 8
  %_21 = ptrtoint ptr %ptr to i64
  %_3 = icmp eq i64 %_21, 0
  %_2 = xor i1 %_3, true
  call void @llvm.assume(i1 %_2)
  br i1 true, label %bb1, label %bb2

bb2:                                              ; preds = %bb1, %start
  %4 = getelementptr inbounds { ptr, ptr }, ptr %self, i32 0, i32 1
  %self8 = load ptr, ptr %4, align 8, !nonnull !4, !noundef !4
  store ptr %self8, ptr %self.dbg.spill9, align 8
  %_14 = load ptr, ptr %self, align 8, !noundef !4
  %_10 = icmp eq ptr %self8, %_14
  br i1 %_10, label %bb3, label %bb4

bb1:                                              ; preds = %start
  %self4 = load ptr, ptr %self, align 8, !noundef !4
  store ptr %self4, ptr %self.dbg.spill5, align 8
  store ptr %self4, ptr %_23, align 8
  %ptr6 = load ptr, ptr %_23, align 8, !noundef !4
  store ptr %ptr6, ptr %ptr.dbg.spill7, align 8
  %_26 = ptrtoint ptr %ptr6 to i64
  %_8 = icmp eq i64 %_26, 0
  %_7 = xor i1 %_8, true
  call void @llvm.assume(i1 %_7)
  br label %bb2

bb4:                                              ; preds = %bb2
  br i1 false, label %bb6, label %bb7

bb3:                                              ; preds = %bb2
  store ptr null, ptr %2, align 8
  br label %bb5

bb5:                                              ; preds = %bb8, %bb3
  %5 = load ptr, ptr %2, align 8, !align !5, !noundef !4
  ret ptr %5

bb6:                                              ; preds = %bb4
  %self16 = load ptr, ptr %self, align 8, !noundef !4
  store ptr %self16, ptr %self.dbg.spill17, align 8
  store ptr %self16, ptr %self.dbg.spill18, align 8
  store i64 -1, ptr %count.dbg.spill19, align 8
  %6 = getelementptr i8, ptr %self16, i64 -1
  store ptr %6, ptr %0, align 8
  %self20 = load ptr, ptr %0, align 8, !noundef !4
  store ptr %self20, ptr %self.dbg.spill21, align 8
  store ptr %self20, ptr %data_address.dbg.spill, align 8
  store ptr %self20, ptr %_48, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_47, ptr align 8 %_48, i64 8, i1 false)
  %_31 = load ptr, ptr %_47, align 8, !noundef !4
  store ptr %_31, ptr %self, align 8
  %7 = getelementptr inbounds { ptr, ptr }, ptr %self, i32 0, i32 1
  %self22 = load ptr, ptr %7, align 8, !nonnull !4, !noundef !4
  store ptr %self22, ptr %self.dbg.spill23, align 8
  store ptr %self22, ptr %_16, align 8
  br label %bb8

bb7:                                              ; preds = %bb4
  %8 = getelementptr inbounds { ptr, ptr }, ptr %self, i32 0, i32 1
  %self10 = load ptr, ptr %8, align 8, !nonnull !4, !noundef !4
  store ptr %self10, ptr %self.dbg.spill11, align 8
  store ptr %self10, ptr %old.dbg.spill, align 8
  %9 = getelementptr inbounds { ptr, ptr }, ptr %self, i32 0, i32 1
  %self12 = load ptr, ptr %9, align 8, !nonnull !4, !noundef !4
  store ptr %self12, ptr %self.dbg.spill13, align 8
  store ptr %self12, ptr %self.dbg.spill14, align 8
  store i64 1, ptr %count.dbg.spill, align 8
  %10 = getelementptr inbounds i8, ptr %self12, i64 1
  store ptr %10, ptr %1, align 8
  %_53 = load ptr, ptr %1, align 8, !noundef !4
  store ptr %_53, ptr %ptr.dbg.spill15, align 8
  store ptr %_53, ptr %_37, align 8
  %11 = getelementptr inbounds { ptr, ptr }, ptr %self, i32 0, i32 1
  %12 = load ptr, ptr %_37, align 8, !nonnull !4, !noundef !4
  store ptr %12, ptr %11, align 8
  store ptr %self10, ptr %_16, align 8
  br label %bb8

bb8:                                              ; preds = %bb7, %bb6
  %_15 = load ptr, ptr %_16, align 8, !noundef !4
  store ptr %_15, ptr %2, align 8
  br label %bb5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @"_ZN4core5slice4iter13Iter$LT$T$GT$3new17h5e47d1a7e1f9dc7aE"(ptr align 1 %slice.0, i64 %slice.1) unnamed_addr #1 {
start:
  %ptr.dbg.spill6 = alloca ptr, align 8
  %count.dbg.spill5 = alloca i64, align 8
  %count.dbg.spill4 = alloca i64, align 8
  %data_address.dbg.spill = alloca ptr, align 8
  %self.dbg.spill3 = alloca ptr, align 8
  %0 = alloca ptr, align 8
  %count.dbg.spill2 = alloca i64, align 8
  %self.dbg.spill = alloca ptr, align 8
  %count.dbg.spill = alloca i64, align 8
  %ptr.dbg.spill1 = alloca ptr, align 8
  %ptr.dbg.spill = alloca ptr, align 8
  %slice.dbg.spill = alloca { ptr, i64 }, align 8
  %_23 = alloca %"core::ptr::metadata::PtrComponents<u8>", align 8
  %_22 = alloca %"core::ptr::metadata::PtrRepr<u8>", align 8
  %_13 = alloca ptr, align 8
  %_9 = alloca ptr, align 8
  %end = alloca ptr, align 8
  %1 = alloca { ptr, ptr }, align 8
  %metadata.dbg.spill = alloca {}, align 1
  %2 = getelementptr inbounds { ptr, i64 }, ptr %slice.dbg.spill, i32 0, i32 0
  store ptr %slice.0, ptr %2, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %slice.dbg.spill, i32 0, i32 1
  store i64 %slice.1, ptr %3, align 8
  store ptr %slice.0, ptr %ptr.dbg.spill, align 8
  store ptr %slice.0, ptr %_13, align 8
  %ptr = load ptr, ptr %_13, align 8, !noundef !4
  store ptr %ptr, ptr %ptr.dbg.spill1, align 8
  %_16 = ptrtoint ptr %ptr to i64
  %_4 = icmp eq i64 %_16, 0
  %_3 = xor i1 %_4, true
  call void @llvm.assume(i1 %_3)
  br i1 false, label %bb1, label %bb2

bb2:                                              ; preds = %start
  store i64 %slice.1, ptr %count.dbg.spill4, align 8
  store i64 %slice.1, ptr %count.dbg.spill5, align 8
  %4 = getelementptr inbounds i8, ptr %slice.0, i64 %slice.1
  store ptr %4, ptr %end, align 8
  br label %bb3

bb1:                                              ; preds = %start
  store i64 %slice.1, ptr %count.dbg.spill, align 8
  store ptr %slice.0, ptr %self.dbg.spill, align 8
  store i64 %slice.1, ptr %count.dbg.spill2, align 8
  %5 = getelementptr i8, ptr %slice.0, i64 %slice.1
  store ptr %5, ptr %0, align 8
  %self = load ptr, ptr %0, align 8, !noundef !4
  store ptr %self, ptr %self.dbg.spill3, align 8
  store ptr %self, ptr %data_address.dbg.spill, align 8
  store ptr %self, ptr %_23, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_22, ptr align 8 %_23, i64 8, i1 false)
  %6 = load ptr, ptr %_22, align 8, !noundef !4
  store ptr %6, ptr %end, align 8
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  store ptr %slice.0, ptr %ptr.dbg.spill6, align 8
  store ptr %slice.0, ptr %_9, align 8
  %_11 = load ptr, ptr %end, align 8, !noundef !4
  %7 = load ptr, ptr %_9, align 8, !nonnull !4, !noundef !4
  %8 = getelementptr inbounds { ptr, ptr }, ptr %1, i32 0, i32 1
  store ptr %7, ptr %8, align 8
  store ptr %_11, ptr %1, align 8
  %9 = getelementptr inbounds { ptr, ptr }, ptr %1, i32 0, i32 0
  %10 = load ptr, ptr %9, align 8, !noundef !4
  %11 = getelementptr inbounds { ptr, ptr }, ptr %1, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8, !nonnull !4, !noundef !4
  %13 = insertvalue { ptr, ptr } poison, ptr %10, 0
  %14 = insertvalue { ptr, ptr } %13, ptr %12, 1
  ret { ptr, ptr } %14
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hd72f7df2e2079cb5E"(i64 %self.0, i64 %self.1, ptr align 1 %slice.0, i64 %slice.1, ptr align 8 %0) unnamed_addr #1 {
start:
  %data_address.dbg.spill = alloca ptr, align 8
  %len.dbg.spill = alloca i64, align 8
  %data.dbg.spill = alloca ptr, align 8
  %1 = alloca ptr, align 8
  %count.dbg.spill3 = alloca i64, align 8
  %count.dbg.spill = alloca i64, align 8
  %self.dbg.spill2 = alloca ptr, align 8
  %new_len.dbg.spill = alloca i64, align 8
  %2 = alloca i64, align 8
  %slice.dbg.spill1 = alloca { ptr, i64 }, align 8
  %slice.dbg.spill = alloca { ptr, i64 }, align 8
  %self.dbg.spill = alloca { i64, i64 }, align 8
  %_30 = alloca { ptr, i64 }, align 8
  %_29 = alloca %"core::ptr::metadata::PtrRepr<[u8]>", align 8
  %3 = getelementptr inbounds { i64, i64 }, ptr %self.dbg.spill, i32 0, i32 0
  store i64 %self.0, ptr %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, ptr %self.dbg.spill, i32 0, i32 1
  store i64 %self.1, ptr %4, align 8
  %5 = getelementptr inbounds { ptr, i64 }, ptr %slice.dbg.spill, i32 0, i32 0
  store ptr %slice.0, ptr %5, align 8
  %6 = getelementptr inbounds { ptr, i64 }, ptr %slice.dbg.spill, i32 0, i32 1
  store i64 %slice.1, ptr %6, align 8
  %_3 = icmp ugt i64 %self.0, %self.1
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_9 = icmp ugt i64 %self.1, %slice.1
  br i1 %_9, label %bb3, label %bb4

bb1:                                              ; preds = %start
  call void @_ZN4core5slice5index22slice_index_order_fail17h2045503bd7776290E(i64 %self.0, i64 %self.1, ptr align 8 %0) #7
  unreachable

bb4:                                              ; preds = %bb2
  %7 = getelementptr inbounds { ptr, i64 }, ptr %slice.dbg.spill1, i32 0, i32 0
  store ptr %slice.0, ptr %7, align 8
  %8 = getelementptr inbounds { ptr, i64 }, ptr %slice.dbg.spill1, i32 0, i32 1
  store i64 %slice.1, ptr %8, align 8
  %9 = sub nuw i64 %self.1, %self.0
  store i64 %9, ptr %2, align 8
  %new_len = load i64, ptr %2, align 8, !noundef !4
  store i64 %new_len, ptr %new_len.dbg.spill, align 8
  store ptr %slice.0, ptr %self.dbg.spill2, align 8
  store i64 %self.0, ptr %count.dbg.spill, align 8
  store i64 %self.0, ptr %count.dbg.spill3, align 8
  %10 = getelementptr inbounds i8, ptr %slice.0, i64 %self.0
  store ptr %10, ptr %1, align 8
  %data = load ptr, ptr %1, align 8, !noundef !4
  store ptr %data, ptr %data.dbg.spill, align 8
  store i64 %new_len, ptr %len.dbg.spill, align 8
  store ptr %data, ptr %data_address.dbg.spill, align 8
  store ptr %data, ptr %_30, align 8
  %11 = getelementptr inbounds { ptr, i64 }, ptr %_30, i32 0, i32 1
  store i64 %new_len, ptr %11, align 8
  %12 = getelementptr inbounds { ptr, i64 }, ptr %_30, i32 0, i32 0
  %13 = load ptr, ptr %12, align 8, !noundef !4
  %14 = getelementptr inbounds { ptr, i64 }, ptr %_30, i32 0, i32 1
  %15 = load i64, ptr %14, align 8, !noundef !4
  %16 = getelementptr inbounds { ptr, i64 }, ptr %_29, i32 0, i32 0
  store ptr %13, ptr %16, align 8
  %17 = getelementptr inbounds { ptr, i64 }, ptr %_29, i32 0, i32 1
  store i64 %15, ptr %17, align 8
  %18 = getelementptr inbounds { ptr, i64 }, ptr %_29, i32 0, i32 0
  %_15.0 = load ptr, ptr %18, align 8, !noundef !4
  %19 = getelementptr inbounds { ptr, i64 }, ptr %_29, i32 0, i32 1
  %_15.1 = load i64, ptr %19, align 8, !noundef !4
  %20 = insertvalue { ptr, i64 } poison, ptr %_15.0, 0
  %21 = insertvalue { ptr, i64 } %20, i64 %_15.1, 1
  ret { ptr, i64 } %21

bb3:                                              ; preds = %bb2
  call void @_ZN4core5slice5index24slice_end_index_len_fail17h63e54c65524702d3E(i64 %self.1, i64 %slice.1, ptr align 8 %0) #7
  unreachable
}

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice5index22slice_index_order_fail17h2045503bd7776290E(i64, i64, ptr align 8) unnamed_addr #4

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice5index24slice_end_index_len_fail17h63e54c65524702d3E(i64, i64, ptr align 8) unnamed_addr #4

; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_ZN4core3cmp6min_by17h6b703cf3a3cc4762E(i64 %0, i64 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %2 = alloca { ptr, i32 }, align 8
  %compare.dbg.spill = alloca {}, align 1
  %_10 = alloca i8, align 1
  %_9 = alloca i8, align 1
  %_5 = alloca { ptr, ptr }, align 8
  %_4 = alloca i8, align 1
  %3 = alloca i64, align 8
  %v2 = alloca i64, align 8
  %v1 = alloca i64, align 8
  store i64 %0, ptr %v1, align 8
  store i64 %1, ptr %v2, align 8
  store i8 1, ptr %_10, align 1
  store i8 1, ptr %_9, align 1
  store ptr %v1, ptr %_5, align 8
  %4 = getelementptr inbounds { ptr, ptr }, ptr %_5, i32 0, i32 1
  store ptr %v2, ptr %4, align 8
  %5 = getelementptr inbounds { ptr, ptr }, ptr %_5, i32 0, i32 0
  %6 = load ptr, ptr %5, align 8, !nonnull !4, !align !8, !noundef !4
  %7 = getelementptr inbounds { ptr, ptr }, ptr %_5, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8, !nonnull !4, !align !8, !noundef !4
  %9 = invoke i8 @_ZN4core3ops8function6FnOnce9call_once17h7a10e0a57cc4a8fcE(ptr align 8 %6, ptr align 8 %8)
          to label %bb1 unwind label %cleanup, !range !9

bb8:                                              ; preds = %cleanup
  br label %bb13

cleanup:                                          ; preds = %start
  %10 = landingpad { ptr, i32 }
          cleanup
  %11 = extractvalue { ptr, i32 } %10, 0
  %12 = extractvalue { ptr, i32 } %10, 1
  %13 = getelementptr inbounds { ptr, i32 }, ptr %2, i32 0, i32 0
  store ptr %11, ptr %13, align 8
  %14 = getelementptr inbounds { ptr, i32 }, ptr %2, i32 0, i32 1
  store i32 %12, ptr %14, align 8
  br label %bb8

bb1:                                              ; preds = %start
  store i8 %9, ptr %_4, align 1
  %_8 = load i8, ptr %_4, align 1, !range !9, !noundef !4
  switch i8 %_8, label %bb3 [
    i8 -1, label %bb4
    i8 0, label %bb4
    i8 1, label %bb2
  ]

bb13:                                             ; preds = %bb8
  %15 = load i8, ptr %_10, align 1, !range !7, !noundef !4
  %16 = trunc i8 %15 to i1
  br i1 %16, label %bb12, label %bb9

bb3:                                              ; preds = %bb1
  unreachable

bb4:                                              ; preds = %bb1, %bb1
  store i8 0, ptr %_10, align 1
  %17 = load i64, ptr %v1, align 8, !noundef !4
  store i64 %17, ptr %3, align 8
  br label %bb5

bb2:                                              ; preds = %bb1
  store i8 0, ptr %_9, align 1
  %18 = load i64, ptr %v2, align 8, !noundef !4
  store i64 %18, ptr %3, align 8
  br label %bb5

bb5:                                              ; preds = %bb2, %bb4
  %19 = load i8, ptr %_9, align 1, !range !7, !noundef !4
  %20 = trunc i8 %19 to i1
  br i1 %20, label %bb10, label %bb6

bb6:                                              ; preds = %bb10, %bb5
  %21 = load i8, ptr %_10, align 1, !range !7, !noundef !4
  %22 = trunc i8 %21 to i1
  br i1 %22, label %bb11, label %bb7

bb10:                                             ; preds = %bb5
  br label %bb6

bb9:                                              ; preds = %bb12, %bb13
  %23 = load ptr, ptr %2, align 8, !noundef !4
  %24 = getelementptr inbounds { ptr, i32 }, ptr %2, i32 0, i32 1
  %25 = load i32, ptr %24, align 8, !noundef !4
  %26 = insertvalue { ptr, i32 } poison, ptr %23, 0
  %27 = insertvalue { ptr, i32 } %26, i32 %25, 1
  resume { ptr, i32 } %27

bb12:                                             ; preds = %bb13
  br label %bb9

bb7:                                              ; preds = %bb11, %bb6
  %28 = load i64, ptr %3, align 8, !noundef !4
  ret i64 %28

bb11:                                             ; preds = %bb6
  br label %bb7
}

; Function Attrs: nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8 @_ZN4core3ops8function6FnOnce9call_once17h7a10e0a57cc4a8fcE(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 {
start:
  %_1.dbg.spill = alloca {}, align 1
  %_2 = alloca { ptr, ptr }, align 8
  store ptr %0, ptr %_2, align 8
  %2 = getelementptr inbounds { ptr, ptr }, ptr %_2, i32 0, i32 1
  store ptr %1, ptr %2, align 8
  %3 = load ptr, ptr %_2, align 8, !nonnull !4, !align !8, !noundef !4
  %4 = getelementptr inbounds { ptr, ptr }, ptr %_2, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8, !nonnull !4, !align !8, !noundef !4
  %6 = call i8 @"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$usize$GT$3cmp17h831c252b899eb520E"(ptr align 8 %3, ptr align 8 %5), !range !9
  ret i8 %6
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8 @"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$usize$GT$3cmp17h831c252b899eb520E"(ptr align 8 %self, ptr align 8 %other) unnamed_addr #1 {
start:
  %other.dbg.spill = alloca ptr, align 8
  %self.dbg.spill = alloca ptr, align 8
  %0 = alloca i8, align 1
  store ptr %self, ptr %self.dbg.spill, align 8
  store ptr %other, ptr %other.dbg.spill, align 8
  %_4 = load i64, ptr %self, align 8, !noundef !4
  %_5 = load i64, ptr %other, align 8, !noundef !4
  %_3 = icmp ult i64 %_4, %_5
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_7 = load i64, ptr %self, align 8, !noundef !4
  %_8 = load i64, ptr %other, align 8, !noundef !4
  %_6 = icmp eq i64 %_7, %_8
  br i1 %_6, label %bb3, label %bb4

bb1:                                              ; preds = %start
  store i8 -1, ptr %0, align 1
  br label %bb6

bb6:                                              ; preds = %bb5, %bb1
  %1 = load i8, ptr %0, align 1, !range !9, !noundef !4
  ret i8 %1

bb4:                                              ; preds = %bb2
  store i8 1, ptr %0, align 1
  br label %bb5

bb3:                                              ; preds = %bb2
  store i8 0, ptr %0, align 1
  br label %bb5

bb5:                                              ; preds = %bb3, %bb4
  br label %bb6
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_1() unnamed_addr #0 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i16, align 2
  %crc16_in.dbg.spill = alloca i16, align 2
  %len.dbg.spill = alloca i32, align 4
  %d = alloca [9 x i8], align 1
  %0 = getelementptr inbounds [9 x i8], ptr %d, i64 0, i64 0
  store i8 1, ptr %0, align 1
  %1 = getelementptr inbounds [9 x i8], ptr %d, i64 0, i64 1
  store i8 2, ptr %1, align 1
  %2 = getelementptr inbounds [9 x i8], ptr %d, i64 0, i64 2
  store i8 3, ptr %2, align 1
  %3 = getelementptr inbounds [9 x i8], ptr %d, i64 0, i64 3
  store i8 4, ptr %3, align 1
  %4 = getelementptr inbounds [9 x i8], ptr %d, i64 0, i64 4
  store i8 5, ptr %4, align 1
  %5 = getelementptr inbounds [9 x i8], ptr %d, i64 0, i64 5
  store i8 6, ptr %5, align 1
  %6 = getelementptr inbounds [9 x i8], ptr %d, i64 0, i64 6
  store i8 7, ptr %6, align 1
  %7 = getelementptr inbounds [9 x i8], ptr %d, i64 0, i64 7
  store i8 8, ptr %7, align 1
  %8 = getelementptr inbounds [9 x i8], ptr %d, i64 0, i64 8
  store i8 9, ptr %8, align 1
  store i32 9, ptr %len.dbg.spill, align 4
  store i16 2000, ptr %crc16_in.dbg.spill, align 2
  store ptr %d, ptr %self.dbg.spill.i, align 8
  %9 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 9, ptr %9, align 8
  %result = call zeroext i16 @crc16(ptr %d, i32 9, i16 zeroext 2000)
  store i16 %result, ptr %result.dbg.spill, align 2
  %10 = icmp eq i16 %result, 7541
  ret i1 %10
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_2() unnamed_addr #0 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i16, align 2
  %crc16_in.dbg.spill = alloca i16, align 2
  %len.dbg.spill = alloca i32, align 4
  %d = alloca [8 x i8], align 1
  %0 = getelementptr inbounds [8 x i8], ptr %d, i64 0, i64 0
  store i8 -1, ptr %0, align 1
  %1 = getelementptr inbounds [8 x i8], ptr %d, i64 0, i64 1
  store i8 -1, ptr %1, align 1
  %2 = getelementptr inbounds [8 x i8], ptr %d, i64 0, i64 2
  store i8 -1, ptr %2, align 1
  %3 = getelementptr inbounds [8 x i8], ptr %d, i64 0, i64 3
  store i8 -1, ptr %3, align 1
  %4 = getelementptr inbounds [8 x i8], ptr %d, i64 0, i64 4
  store i8 -1, ptr %4, align 1
  %5 = getelementptr inbounds [8 x i8], ptr %d, i64 0, i64 5
  store i8 -1, ptr %5, align 1
  %6 = getelementptr inbounds [8 x i8], ptr %d, i64 0, i64 6
  store i8 -1, ptr %6, align 1
  %7 = getelementptr inbounds [8 x i8], ptr %d, i64 0, i64 7
  store i8 -1, ptr %7, align 1
  store i32 8, ptr %len.dbg.spill, align 4
  store i16 16000, ptr %crc16_in.dbg.spill, align 2
  store ptr %d, ptr %self.dbg.spill.i, align 8
  %8 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 8, ptr %8, align 8
  %result = call zeroext i16 @crc16(ptr %d, i32 8, i16 zeroext 16000)
  store i16 %result, ptr %result.dbg.spill, align 2
  %9 = icmp eq i16 %result, 27308
  ret i1 %9
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_3() unnamed_addr #0 {
start:
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %result.dbg.spill = alloca i16, align 2
  %crc16_in.dbg.spill = alloca i16, align 2
  %len.dbg.spill = alloca i32, align 4
  %d = alloca [21 x i8], align 1
  %0 = getelementptr inbounds [21 x i8], ptr %d, i64 0, i64 0
  store i8 0, ptr %0, align 1
  %1 = getelementptr inbounds [21 x i8], ptr %d, i64 0, i64 1
  store i8 0, ptr %1, align 1
  %2 = getelementptr inbounds [21 x i8], ptr %d, i64 0, i64 2
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds [21 x i8], ptr %d, i64 0, i64 3
  store i8 0, ptr %3, align 1
  %4 = getelementptr inbounds [21 x i8], ptr %d, i64 0, i64 4
  store i8 0, ptr %4, align 1
  %5 = getelementptr inbounds [21 x i8], ptr %d, i64 0, i64 5
  store i8 0, ptr %5, align 1
  %6 = getelementptr inbounds [21 x i8], ptr %d, i64 0, i64 6
  store i8 0, ptr %6, align 1
  %7 = getelementptr inbounds [21 x i8], ptr %d, i64 0, i64 7
  store i8 0, ptr %7, align 1
  %8 = getelementptr inbounds [21 x i8], ptr %d, i64 0, i64 8
  store i8 0, ptr %8, align 1
  %9 = getelementptr inbounds [21 x i8], ptr %d, i64 0, i64 9
  store i8 0, ptr %9, align 1
  %10 = getelementptr inbounds [21 x i8], ptr %d, i64 0, i64 10
  store i8 0, ptr %10, align 1
  %11 = getelementptr inbounds [21 x i8], ptr %d, i64 0, i64 11
  store i8 0, ptr %11, align 1
  %12 = getelementptr inbounds [21 x i8], ptr %d, i64 0, i64 12
  store i8 0, ptr %12, align 1
  %13 = getelementptr inbounds [21 x i8], ptr %d, i64 0, i64 13
  store i8 0, ptr %13, align 1
  %14 = getelementptr inbounds [21 x i8], ptr %d, i64 0, i64 14
  store i8 0, ptr %14, align 1
  %15 = getelementptr inbounds [21 x i8], ptr %d, i64 0, i64 15
  store i8 0, ptr %15, align 1
  %16 = getelementptr inbounds [21 x i8], ptr %d, i64 0, i64 16
  store i8 0, ptr %16, align 1
  %17 = getelementptr inbounds [21 x i8], ptr %d, i64 0, i64 17
  store i8 0, ptr %17, align 1
  %18 = getelementptr inbounds [21 x i8], ptr %d, i64 0, i64 18
  store i8 0, ptr %18, align 1
  %19 = getelementptr inbounds [21 x i8], ptr %d, i64 0, i64 19
  store i8 0, ptr %19, align 1
  %20 = getelementptr inbounds [21 x i8], ptr %d, i64 0, i64 20
  store i8 0, ptr %20, align 1
  store i32 21, ptr %len.dbg.spill, align 4
  store i16 1, ptr %crc16_in.dbg.spill, align 2
  store ptr %d, ptr %self.dbg.spill.i, align 8
  %21 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 21, ptr %21, align 8
  %result = call zeroext i16 @crc16(ptr %d, i32 21, i16 zeroext 1)
  store i16 %result, ptr %result.dbg.spill, align 2
  %22 = icmp eq i16 %result, -1925
  ret i1 %22
}

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 2, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{}
!5 = !{i64 1}
!6 = !{i64 0, i64 2}
!7 = !{i8 0, i8 2}
!8 = !{i64 8}
!9 = !{i8 -1, i8 2}
