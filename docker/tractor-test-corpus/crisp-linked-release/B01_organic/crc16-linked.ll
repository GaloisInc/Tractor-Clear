; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; ASSERT EQ: i1 1 = call i1 @run_test_1()
; ASSERT EQ: i1 1 = call i1 @run_test_2()
; ASSERT EQ: i1 1 = call i1 @run_test_3()

@_ZN9crc16_lib3src3lib18TFLAC_CRC16_TABLES17h079e0bfde3fc85c1E = internal unnamed_addr constant <{ [4096 x i8] }> <{ [4096 x i8] c"\00\00\05\80\0F\80\0A\00\1B\80\1E\00\14\00\11\803\806\00<\009\80(\00-\80'\80\22\00c\80f\00l\00i\80x\00}\80w\80r\00P\00U\80_\80Z\00K\80N\00D\00A\80\C3\80\C6\00\CC\00\C9\80\D8\00\DD\80\D7\80\D2\00\F0\00\F5\80\FF\80\FA\00\EB\80\EE\00\E4\00\E1\80\A0\00\A5\80\AF\80\AA\00\BB\80\BE\00\B4\00\B1\80\93\80\96\00\9C\00\99\80\88\00\8D\80\87\80\82\00\83\81\86\01\8C\01\89\81\98\01\9D\81\97\81\92\01\B0\01\B5\81\BF\81\BA\01\AB\81\AE\01\A4\01\A1\81\E0\01\E5\81\EF\81\EA\01\FB\81\FE\01\F4\01\F1\81\D3\81\D6\01\DC\01\D9\81\C8\01\CD\81\C7\81\C2\01@\01E\81O\81J\01[\81^\01T\01Q\81s\81v\01|\01y\81h\01m\81g\81b\01#\81&\01,\01)\818\01=\817\812\01\10\01\15\81\1F\81\1A\01\0B\81\0E\01\04\01\01\81\03\83\06\03\0C\03\09\83\18\03\1D\83\17\83\12\030\035\83?\83:\03+\83.\03$\03!\83`\03e\83o\83j\03{\83~\03t\03q\83S\83V\03\\\03Y\83H\03M\83G\83B\03\C0\03\C5\83\CF\83\CA\03\DB\83\DE\03\D4\03\D1\83\F3\83\F6\03\FC\03\F9\83\E8\03\ED\83\E7\83\E2\03\A3\83\A6\03\AC\03\A9\83\B8\03\BD\83\B7\83\B2\03\90\03\95\83\9F\83\9A\03\8B\83\8E\03\84\03\81\83\80\02\85\82\8F\82\8A\02\9B\82\9E\02\94\02\91\82\B3\82\B6\02\BC\02\B9\82\A8\02\AD\82\A7\82\A2\02\E3\82\E6\02\EC\02\E9\82\F8\02\FD\82\F7\82\F2\02\D0\02\D5\82\DF\82\DA\02\CB\82\CE\02\C4\02\C1\82C\82F\02L\02I\82X\02]\82W\82R\02p\02u\82\7F\82z\02k\82n\02d\02a\82 \02%\82/\82*\02;\82>\024\021\82\13\82\16\02\1C\02\19\82\08\02\0D\82\07\82\02\02\00\00\03\86\03\8C\00\0A\03\98\00\1E\00\14\03\92\03\B0\006\00<\03\BA\00(\03\AE\03\A4\00\22\03\E0\00f\00l\03\EA\00x\03\FE\03\F4\00r\00P\03\D6\03\DC\00Z\03\C8\00N\00D\03\C2\03@\00\C6\00\CC\03J\00\D8\03^\03T\00\D2\00\F0\03v\03|\00\FA\03h\00\EE\00\E4\03b\00\A0\03&\03,\00\AA\038\00\BE\00\B4\032\03\10\00\96\00\9C\03\1A\00\88\03\0E\03\04\00\82\06\80\05\06\05\0C\06\8A\05\18\06\9E\06\94\05\12\050\06\B6\06\BC\05:\06\A8\05.\05$\06\A2\05`\06\E6\06\EC\05j\06\F8\05~\05t\06\F2\06\D0\05V\05\\\06\DA\05H\06\CE\06\C4\05B\05\C0\06F\06L\05\CA\06X\05\DE\05\D4\06R\06p\05\F6\05\FC\06z\05\E8\06n\06d\05\E2\06 \05\A6\05\AC\06*\05\B8\06>\064\05\B2\05\90\06\16\06\1C\05\9A\06\08\05\8E\05\84\06\02\09\80\0A\06\0A\0C\09\8A\0A\18\09\9E\09\94\0A\12\0A0\09\B6\09\BC\0A:\09\A8\0A.\0A$\09\A2\0A`\09\E6\09\EC\0Aj\09\F8\0A~\0At\09\F2\09\D0\0AV\0A\\\09\DA\0AH\09\CE\09\C4\0AB\0A\C0\09F\09L\0A\CA\09X\0A\DE\0A\D4\09R\09p\0A\F6\0A\FC\09z\0A\E8\09n\09d\0A\E2\09 \0A\A6\0A\AC\09*\0A\B8\09>\094\0A\B2\0A\90\09\16\09\1C\0A\9A\09\08\0A\8E\0A\84\09\02\0F\00\0C\86\0C\8C\0F\0A\0C\98\0F\1E\0F\14\0C\92\0C\B0\0F6\0F<\0C\BA\0F(\0C\AE\0C\A4\0F\22\0C\E0\0Ff\0Fl\0C\EA\0Fx\0C\FE\0C\F4\0Fr\0FP\0C\D6\0C\DC\0FZ\0C\C8\0FN\0FD\0C\C2\0C@\0F\C6\0F\CC\0CJ\0F\D8\0C^\0CT\0F\D2\0F\F0\0Cv\0C|\0F\FA\0Ch\0F\EE\0F\E4\0Cb\0F\A0\0C&\0C,\0F\AA\0C8\0F\BE\0F\B4\0C2\0C\10\0F\96\0F\9C\0C\1A\0F\88\0C\0E\0C\04\0F\82\00\00\17\80+\80<\00S\80D\00x\00o\80\A3\80\B4\00\88\00\9F\80\F0\00\E7\80\DB\80\CC\00C\81T\01h\01\7F\81\10\01\07\81;\81,\01\E0\01\F7\81\CB\81\DC\01\B3\81\A4\01\98\01\8F\81\83\82\94\02\A8\02\BF\82\D0\02\C7\82\FB\82\EC\02 \027\82\0B\82\1C\02s\82d\02X\02O\82\C0\03\D7\83\EB\83\FC\03\93\83\84\03\B8\03\AF\83c\83t\03H\03_\830\03'\83\1B\83\0C\03\03\85\14\05(\05?\85P\05G\85{\85l\05\A0\05\B7\85\8B\85\9C\05\F3\85\E4\05\D8\05\CF\85@\04W\84k\84|\04\13\84\04\048\04/\84\E3\84\F4\04\C8\04\DF\84\B0\04\A7\84\9B\84\8C\04\80\07\97\87\AB\87\BC\07\D3\87\C4\07\F8\07\EF\87#\874\07\08\07\1F\87p\07g\87[\87L\07\C3\86\D4\06\E8\06\FF\86\90\06\87\86\BB\86\AC\06`\06w\86K\86\\\063\86$\06\18\06\0F\86\03\8A\14\0A(\0A?\8AP\0AG\8A{\8Al\0A\A0\0A\B7\8A\8B\8A\9C\0A\F3\8A\E4\0A\D8\0A\CF\8A@\0BW\8Bk\8B|\0B\13\8B\04\0B8\0B/\8B\E3\8B\F4\0B\C8\0B\DF\8B\B0\0B\A7\8B\9B\8B\8C\0B\80\08\97\88\AB\88\BC\08\D3\88\C4\08\F8\08\EF\88#\884\08\08\08\1F\88p\08g\88[\88L\08\C3\89\D4\09\E8\09\FF\89\90\09\87\89\BB\89\AC\09`\09w\89K\89\\\093\89$\09\18\09\0F\89\00\0F\17\8F+\8F<\0FS\8FD\0Fx\0Fo\8F\A3\8F\B4\0F\88\0F\9F\8F\F0\0F\E7\8F\DB\8F\CC\0FC\8ET\0Eh\0E\7F\8E\10\0E\07\8E;\8E,\0E\E0\0E\F7\8E\CB\8E\DC\0E\B3\8E\A4\0E\98\0E\8F\8E\83\8D\94\0D\A8\0D\BF\8D\D0\0D\C7\8D\FB\8D\EC\0D \0D7\8D\0B\8D\1C\0Ds\8Dd\0DX\0DO\8D\C0\0C\D7\8C\EB\8C\FC\0C\93\8C\84\0C\B8\0C\AF\8Cc\8Ct\0CH\0C_\8C0\0C'\8C\1B\8C\0C\0C\00\00\03\94\03\A8\00<\03\D0\00D\00x\03\EC\03 \00\B4\00\88\03\1C\00\F0\03d\03X\00\CC\06@\05\D4\05\E8\06|\05\90\06\04\068\05\AC\05`\06\F4\06\C8\05\\\06\B0\05$\05\18\06\8C\0C\80\0F\14\0F(\0C\BC\0FP\0C\C4\0C\F8\0Fl\0F\A0\0C4\0C\08\0F\9C\0Cp\0F\E4\0F\D8\0CL\0A\C0\09T\09h\0A\FC\09\10\0A\84\0A\B8\09,\09\E0\0At\0AH\09\DC\0A0\09\A4\09\98\0A\0C\1D\80\1E\14\1E(\1D\BC\1EP\1D\C4\1D\F8\1El\1E\A0\1D4\1D\08\1E\9C\1Dp\1E\E4\1E\D8\1DL\1B\C0\18T\18h\1B\FC\18\10\1B\84\1B\B8\18,\18\E0\1Bt\1BH\18\DC\1B0\18\A4\18\98\1B\0C\11\00\12\94\12\A8\11<\12\D0\11D\11x\12\EC\12 \11\B4\11\88\12\1C\11\F0\12d\12X\11\CC\17@\14\D4\14\E8\17|\14\90\17\04\178\14\AC\14`\17\F4\17\C8\14\\\17\B0\14$\14\18\17\8C?\80<\14<(?\BC<P?\C4?\F8<l<\A0?4?\08<\9C?p<\E4<\D8?L9\C0:T:h9\FC:\109\849\B8:,:\E09t9H:\DC90:\A4:\989\0C3\000\940\A83<0\D03D3x0\EC0 3\B43\880\1C3\F00d0X3\CC5@6\D46\E85|6\905\04586\AC6`5\F45\C86\\5\B06$6\185\8C\22\00!\94!\A8\22<!\D0\22D\22x!\EC! \22\B4\22\88!\1C\22\F0!d!X\22\CC$@'\D4'\E8$|'\90$\04$8'\AC'`$\F4$\C8'\\$\B0'$'\18$\8C.\80-\14-(.\BC-P.\C4.\F8-l-\A0.4.\08-\9C.p-\E4-\D8.L(\C0+T+h(\FC+\10(\84(\B8+,+\E0(t(H+\DC(0+\A4+\98(\0C\00\00{\80\F3\80\88\00\E3\81\98\01\10\01k\81\C3\83\B8\030\03K\83 \02[\82\D3\82\A8\02\83\87\F8\07p\07\0B\87`\06\1B\86\93\86\E8\06@\04;\84\B3\84\C8\04\A3\85\D8\05P\05+\85\03\8Fx\0F\F0\0F\8B\8F\E0\0E\9B\8E\13\8Eh\0E\C0\0C\BB\8C3\8CH\0C#\8DX\0D\D0\0D\AB\8D\80\08\FB\88s\88\08\08c\89\18\09\90\09\EB\89C\8B8\0B\B0\0B\CB\8B\A0\0A\DB\8AS\8A(\0A\03\9Ex\1E\F0\1E\8B\9E\E0\1F\9B\9F\13\9Fh\1F\C0\1D\BB\9D3\9DH\1D#\9CX\1C\D0\1C\AB\9C\80\19\FB\99s\99\08\19c\98\18\18\90\18\EB\98C\9A8\1A\B0\1A\CB\9A\A0\1B\DB\9BS\9B(\1B\00\11{\91\F3\91\88\11\E3\90\98\10\10\10k\90\C3\92\B8\120\12K\92 \13[\93\D3\93\A8\13\83\96\F8\16p\16\0B\96`\17\1B\97\93\97\E8\17@\15;\95\B3\95\C8\15\A3\94\D8\14P\14+\94\03\BCx<\F0<\8B\BC\E0=\9B\BD\13\BDh=\C0?\BB\BF3\BFH?#\BEX>\D0>\AB\BE\80;\FB\BBs\BB\08;c\BA\18:\90:\EB\BAC\B888\B08\CB\B8\A09\DB\B9S\B9(9\003{\B3\F3\B3\883\E3\B2\982\102k\B2\C3\B0\B8000K\B0 1[\B1\D3\B1\A81\83\B4\F84p4\0B\B4`5\1B\B5\93\B5\E85@7;\B7\B3\B7\C87\A3\B6\D86P6+\B6\00\22{\A2\F3\A2\88\22\E3\A3\98#\10#k\A3\C3\A1\B8!0!K\A1  [\A0\D3\A0\A8 \83\A5\F8%p%\0B\A5`$\1B\A4\93\A4\E8$@&;\A6\B3\A6\C8&\A3\A7\D8'P'+\A7\03\ADx-\F0-\8B\AD\E0,\9B\AC\13\ACh,\C0.\BB\AE3\AEH.#\AFX/\D0/\AB\AF\80*\FB\AAs\AA\08*c\AB\18+\90+\EB\ABC\A98)\B0)\CB\A9\A0(\DB\A8S\A8((\00\00\03\F8\03p\00\88\06\E0\05\18\05\90\06h\09@\0A\B8\0A0\09\C8\0F\A0\0CX\0C\D0\0F(\12\80\11x\11\F0\12\08\14`\17\98\17\10\14\E8\1B\C0\188\18\B0\1BH\1D \1E\D8\1EP\1D\A8!\80\22x\22\F0!\08'`$\98$\10'\E8(\C0+8+\B0(H. -\D8-P.\A83\000\F80p3\885\E06\186\905h:@9\B890:\C8<\A0?X?\D0<(G\80DxD\F0G\08A`B\98B\10A\E8N\C0M8M\B0NHH K\D8KPH\A8U\00V\F8VpU\88S\E0P\18P\90Sh\\@_\B8_0\\\C8Z\A0YXY\D0Z(f\00e\F8epf\88`\E0c\18c\90`ho@l\B8l0o\C8i\A0jXj\D0i(t\80wxw\F0t\08r`q\98q\10r\E8}\C0~8~\B0}H{ x\D8xP{\A8\8B\80\88x\88\F0\8B\08\8D`\8E\98\8E\10\8D\E8\82\C0\818\81\B0\82H\84 \87\D8\87P\84\A8\99\00\9A\F8\9Ap\99\88\9F\E0\9C\18\9C\90\9Fh\90@\93\B8\930\90\C8\96\A0\95X\95\D0\96(\AA\00\A9\F8\A9p\AA\88\AC\E0\AF\18\AF\90\ACh\A3@\A0\B8\A00\A3\C8\A5\A0\A6X\A6\D0\A5(\B8\80\BBx\BB\F0\B8\08\BE`\BD\98\BD\10\BE\E8\B1\C0\B28\B2\B0\B1H\B7 \B4\D8\B4P\B7\A8\CC\00\CF\F8\CFp\CC\88\CA\E0\C9\18\C9\90\CAh\C5@\C6\B8\C60\C5\C8\C3\A0\C0X\C0\D0\C3(\DE\80\DDx\DD\F0\DE\08\D8`\DB\98\DB\10\D8\E8\D7\C0\D48\D4\B0\D7H\D1 \D2\D8\D2P\D1\A8\ED\80\EEx\EE\F0\ED\08\EB`\E8\98\E8\10\EB\E8\E4\C0\E78\E7\B0\E4H\E2 \E1\D8\E1P\E2\A8\FF\00\FC\F8\FCp\FF\88\F9\E0\FA\18\FA\90\F9h\F6@\F5\B8\F50\F6\C8\F0\A0\F3X\F3\D0\F0(\00\00\13\81#\820\03C\84P\05`\06s\87\83\88\90\09\A0\0A\B3\8B\C0\0C\D3\8D\E3\8E\F0\0F\03\91\10\10 \133\92@\15S\94c\97p\16\80\19\93\98\A3\9B\B0\1A\C3\9D\D0\1C\E0\1F\F3\9E\03\A2\10#  3\A1@&S\A7c\A4p%\80*\93\AB\A3\A8\B0)\C3\AE\D0/\E0,\F3\AD\003\13\B2#\B100C\B7P6`5s\B4\83\BB\90:\A09\B3\B8\C0?\D3\BE\E3\BD\F0<\03\C4\10E F3\C7@@S\C1c\C2pC\80L\93\CD\A3\CE\B0O\C3\C8\D0I\E0J\F3\CB\00U\13\D4#\D70VC\D1PP`Ss\D2\83\DD\90\\\A0_\B3\DE\C0Y\D3\D8\E3\DB\F0Z\00f\13\E7#\E40eC\E2Pc``s\E1\83\EE\90o\A0l\B3\ED\C0j\D3\EB\E3\E8\F0i\03\F7\10v u3\F4@sS\F2c\F1pp\80\7F\93\FE\A3\FD\B0|\C3\FB\D0z\E0y\F3\F8\03\08\10\89 \8A3\0B@\8CS\0Dc\0Ep\8F\80\80\93\01\A3\02\B0\83\C3\04\D0\85\E0\86\F3\07\00\99\13\18#\1B0\9AC\1DP\9C`\9Fs\1E\83\11\90\90\A0\93\B3\12\C0\95\D3\14\E3\17\F0\96\00\AA\13+#(0\A9C.P\AF`\ACs-\83\22\90\A3\A0\A0\B3!\C0\A6\D3'\E3$\F0\A5\03;\10\BA \B938@\BFS>c=p\BC\80\B3\932\A31\B0\B0\C37\D0\B6\E0\B5\F34\00\CC\13M#N0\CFCHP\C9`\CAsK\83D\90\C5\A0\C6\B3G\C0\C0\D3A\E3B\F0\C3\03]\10\DC \DF3^@\D9SXc[p\DA\80\D5\93T\A3W\B0\D6\C3Q\D0\D0\E0\D3\F3R\03n\10\EF \EC3m@\EASkchp\E9\80\E6\93g\A3d\B0\E5\C3b\D0\E3\E0\E0\F3a\00\FF\13~#}0\FCC{P\FA`\F9sx\83w\90\F6\A0\F5\B3t\C0\F3\D3r\E3q\F0\F0\00\00\06\10\0C \0A0\18@\1EP\14`\12p0\806\90<\A0:\B0(\C0.\D0$\E0\22\F0e\80c\90i\A0o\B0}\C0{\D0q\E0w\F0U\00S\10Y _0M@KPA`Gp\CF\80\C9\90\C3\A0\C5\B0\D7\C0\D1\D0\DB\E0\DD\F0\FF\00\F9\10\F3 \F50\E7@\E1P\EB`\EDp\AA\00\AC\10\A6 \A00\B2@\B4P\BE`\B8p\9A\80\9C\90\96\A0\90\B0\82\C0\84\D0\8E\E0\88\F0\9B\81\9D\91\97\A1\91\B1\83\C1\85\D1\8F\E1\89\F1\AB\01\AD\11\A7!\A11\B3A\B5Q\BFa\B9q\FE\01\F8\11\F2!\F41\E6A\E0Q\EAa\ECq\CE\81\C8\91\C2\A1\C4\B1\D6\C1\D0\D1\DA\E1\DC\F1T\01R\11X!^1LAJQ@aFqd\81b\91h\A1n\B1|\C1z\D1p\E1v\F11\817\91=\A1;\B1)\C1/\D1%\E1#\F1\01\01\07\11\0D!\0B1\19A\1FQ\15a\13q3\835\93?\A39\B3+\C3-\D3'\E3!\F3\03\03\05\13\0F#\093\1BC\1DS\17c\11sV\03P\13Z#\\3NCHSBcDsf\83`\93j\A3l\B3~\C3x\D3r\E3t\F3\FC\03\FA\13\F0#\F63\E4C\E2S\E8c\EEs\CC\83\CA\93\C0\A3\C6\B3\D4\C3\D2\D3\D8\E3\DE\F3\99\83\9F\93\95\A3\93\B3\81\C3\87\D3\8D\E3\8B\F3\A9\03\AF\13\A5#\A33\B1C\B7S\BDc\BBs\A8\02\AE\12\A4\22\A22\B0B\B6R\BCb\BAr\98\82\9E\92\94\A2\92\B2\80\C2\86\D2\8C\E2\8A\F2\CD\82\CB\92\C1\A2\C7\B2\D5\C2\D3\D2\D9\E2\DF\F2\FD\02\FB\12\F1\22\F72\E5B\E3R\E9b\EFrg\82a\92k\A2m\B2\7F\C2y\D2s\E2u\F2W\02Q\12[\22]2OBIRCbEr\02\02\04\12\0E\22\082\1AB\1CR\16b\10r2\824\92>\A28\B2*\C2,\D2&\E2 \F2" }>, align 2
@alloc_f5ffd2fd1476bab43ad89fb40c72d0c5 = private unnamed_addr constant <{ [10 x i8] }> <{ [10 x i8] c"src/lib.rs" }>, align 1
@alloc_af6a6ea55f66237b995b1f7d021ca6d0 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00!\08\00\00\16\00\00\00" }>, align 8
@alloc_64fa8243a8fba827f7eee6dd5f1d40f3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00!\08\00\005\00\00\00" }>, align 8
@alloc_3c2a609c89b0f299646cbe591a403226 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00$\08\00\00%\00\00\00" }>, align 8
@alloc_364eb88264faa985233e4988da6bed84 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00%\08\00\00%\00\00\00" }>, align 8
@alloc_1388d27c39dd93f9d375abe4251a47f8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00&\08\00\00%\00\00\00" }>, align 8
@alloc_d350627508ad4f413de8348eabcbdc42 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00'\08\00\00%\00\00\00" }>, align 8
@alloc_a11c6771b174fecfc12b14626931b5c5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00(\08\00\00%\00\00\00" }>, align 8
@alloc_4ea89818aeff730605a9ce2fcad78cb2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00)\08\00\00%\00\00\00" }>, align 8
@alloc_c4910eeff1cb48d25400c40cee316773 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00.\08\00\00\13\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define noundef zeroext i16 @crc16(ptr noundef readonly %d, i32 noundef %len, i16 noundef zeroext %crc16_0) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %len1 = zext i32 %len to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2)
  %_981.i = icmp ugt i32 %len, 7
  br i1 %_981.i, label %bb2.i, label %"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hdcdebe57b7b844ffE.exit.i"

bb19.i:                                           ; preds = %bb18.i
  %_118.i = add i64 %offset.082.i, %remaining.083.i
  %_3.i.i = icmp ult i64 %_118.i, %23
  br i1 %_3.i.i, label %bb1.i.i, label %bb2.i.i

bb2.i.i:                                          ; preds = %bb19.i
  %_9.i.i = icmp ugt i64 %_118.i, %len1
  br i1 %_9.i.i, label %bb3.i.i, label %"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hdcdebe57b7b844ffE.exit.i"

bb1.i.i:                                          ; preds = %bb19.i
  tail call void @_ZN4core5slice5index22slice_index_order_fail17h2045503bd7776290E(i64 noundef %23, i64 noundef %_118.i, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_c4910eeff1cb48d25400c40cee316773) #5, !noalias !5
  unreachable

bb3.i.i:                                          ; preds = %bb2.i.i
  tail call void @_ZN4core5slice5index24slice_end_index_len_fail17h63e54c65524702d3E(i64 noundef %_118.i, i64 noundef %len1, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_c4910eeff1cb48d25400c40cee316773) #5, !noalias !5
  unreachable

"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hdcdebe57b7b844ffE.exit.i": ; preds = %bb2.i.i, %start
  %offset.0.lcssa134145.i = phi i64 [ %23, %bb2.i.i ], [ 0, %start ]
  %remaining.0.lcssa135144.i = phi i64 [ %24, %bb2.i.i ], [ %len1, %start ]
  %crc16_0.0.lcssa136143.i = phi i16 [ %_24.i, %bb2.i.i ], [ %crc16_0, %start ]
  %0 = getelementptr inbounds i8, ptr %d, i64 %offset.0.lcssa134145.i
  %1 = getelementptr inbounds i8, ptr %0, i64 %remaining.0.lcssa135144.i
  %_10.i87.i = icmp eq i64 %remaining.0.lcssa135144.i, 0
  br i1 %_10.i87.i, label %_ZN9crc16_lib3src3lib5crc1617hf861253d6a083316E.exit, label %bb26.i.preheader

bb26.i.preheader:                                 ; preds = %"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hdcdebe57b7b844ffE.exit.i"
  %xtraiter = and i64 %remaining.0.lcssa135144.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb26.i.prol.loopexit, label %bb26.i.prol

bb26.i.prol:                                      ; preds = %bb26.i.preheader
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %_133.i.prol = lshr i16 %crc16_0.0.lcssa136143.i, 8
  %byte.i.prol = load i8, ptr %0, align 1, !alias.scope !2, !noundef !8
  %_135.i.prol = zext i8 %byte.i.prol to i16
  %_132.i.prol = xor i16 %_133.i.prol, %_135.i.prol
  %_131.i.prol = zext i16 %_132.i.prol to i64
  %_126.i.prol = shl i16 %crc16_0.0.lcssa136143.i, 8
  %3 = getelementptr inbounds [256 x i16], ptr @_ZN9crc16_lib3src3lib18TFLAC_CRC16_TABLES17h079e0bfde3fc85c1E, i64 0, i64 %_131.i.prol
  %_128.i.prol = load i16, ptr %3, align 2, !noalias !2, !noundef !8
  %4 = xor i16 %_128.i.prol, %_126.i.prol
  br label %bb26.i.prol.loopexit

bb26.i.prol.loopexit:                             ; preds = %bb26.i.prol, %bb26.i.preheader
  %.lcssa.unr = phi i16 [ undef, %bb26.i.preheader ], [ %4, %bb26.i.prol ]
  %crc16_0.189.i.unr = phi i16 [ %crc16_0.0.lcssa136143.i, %bb26.i.preheader ], [ %4, %bb26.i.prol ]
  %iter.sroa.4.088.i.unr = phi ptr [ %0, %bb26.i.preheader ], [ %2, %bb26.i.prol ]
  %5 = icmp eq i64 %remaining.0.lcssa135144.i, 1
  br i1 %5, label %_ZN9crc16_lib3src3lib5crc1617hf861253d6a083316E.exit, label %bb26.i

bb2.i:                                            ; preds = %bb18.i, %start
  %crc16_0.084.i = phi i16 [ %_24.i, %bb18.i ], [ %crc16_0, %start ]
  %remaining.083.i = phi i64 [ %24, %bb18.i ], [ %len1, %start ]
  %offset.082.i = phi i64 [ %23, %bb18.i ], [ 0, %start ]
  %_17.i = icmp ult i64 %offset.082.i, %len1
  br i1 %_17.i, label %bb3.i, label %panic.i, !prof !9

bb3.i:                                            ; preds = %bb2.i
  %_20.i = or i64 %offset.082.i, 1
  %_23.i = icmp ult i64 %_20.i, %len1
  br i1 %_23.i, label %bb6.i, label %panic1.i, !prof !9

panic.i:                                          ; preds = %bb2.i
  tail call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 noundef %offset.082.i, i64 noundef %len1, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_af6a6ea55f66237b995b1f7d021ca6d0) #5, !noalias !2
  unreachable

panic1.i:                                         ; preds = %bb3.i
  tail call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 noundef %_20.i, i64 noundef %len1, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_64fa8243a8fba827f7eee6dd5f1d40f3) #5, !noalias !2
  unreachable

bb6.i:                                            ; preds = %bb3.i
  %_52.i = or i64 %offset.082.i, 2
  %_55.i = icmp ult i64 %_52.i, %len1
  br i1 %_55.i, label %bb8.i, label %panic4.i, !prof !9

panic4.i:                                         ; preds = %bb6.i
  tail call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 noundef %_52.i, i64 noundef %len1, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_3c2a609c89b0f299646cbe591a403226) #5, !noalias !2
  unreachable

bb8.i:                                            ; preds = %bb6.i
  %_63.i = or i64 %offset.082.i, 3
  %_66.i = icmp ult i64 %_63.i, %len1
  br i1 %_66.i, label %bb10.i, label %panic6.i, !prof !9

panic6.i:                                         ; preds = %bb8.i
  tail call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 noundef %_63.i, i64 noundef %len1, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_364eb88264faa985233e4988da6bed84) #5, !noalias !2
  unreachable

bb10.i:                                           ; preds = %bb8.i
  %_74.i = or i64 %offset.082.i, 4
  %_77.i = icmp ult i64 %_74.i, %len1
  br i1 %_77.i, label %bb12.i, label %panic8.i, !prof !9

panic8.i:                                         ; preds = %bb10.i
  tail call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 noundef %_74.i, i64 noundef %len1, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_1388d27c39dd93f9d375abe4251a47f8) #5, !noalias !2
  unreachable

bb12.i:                                           ; preds = %bb10.i
  %_85.i = or i64 %offset.082.i, 5
  %_88.i = icmp ult i64 %_85.i, %len1
  br i1 %_88.i, label %bb14.i, label %panic10.i, !prof !9

panic10.i:                                        ; preds = %bb12.i
  tail call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 noundef %_85.i, i64 noundef %len1, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_d350627508ad4f413de8348eabcbdc42) #5, !noalias !2
  unreachable

bb14.i:                                           ; preds = %bb12.i
  %_96.i = or i64 %offset.082.i, 6
  %_99.i = icmp ult i64 %_96.i, %len1
  br i1 %_99.i, label %bb16.i, label %panic12.i, !prof !9

panic12.i:                                        ; preds = %bb14.i
  tail call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 noundef %_96.i, i64 noundef %len1, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_a11c6771b174fecfc12b14626931b5c5) #5, !noalias !2
  unreachable

bb16.i:                                           ; preds = %bb14.i
  %_107.i = or i64 %offset.082.i, 7
  %_110.i = icmp ult i64 %_107.i, %len1
  br i1 %_110.i, label %bb18.i, label %panic14.i, !prof !9

panic14.i:                                        ; preds = %bb16.i
  tail call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 noundef %_107.i, i64 noundef %len1, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_4ea89818aeff730605a9ce2fcad78cb2) #5, !noalias !2
  unreachable

bb18.i:                                           ; preds = %bb16.i
  %6 = getelementptr inbounds [0 x i8], ptr %d, i64 0, i64 %offset.082.i
  %_14.i = load i8, ptr %6, align 1, !alias.scope !2, !noundef !8
  %_13.i = zext i8 %_14.i to i16
  %_12.i = shl nuw i16 %_13.i, 8
  %7 = getelementptr inbounds [0 x i8], ptr %d, i64 0, i64 %_20.i
  %_19.i = load i8, ptr %7, align 1, !alias.scope !2, !noundef !8
  %_18.i = zext i8 %_19.i to i16
  %_11.i = or i16 %_12.i, %_18.i
  %8 = xor i16 %_11.i, %crc16_0.084.i
  %_35.i = lshr i16 %8, 8
  %_34.i = zext i16 %_35.i to i64
  %9 = getelementptr inbounds [256 x i16], ptr getelementptr inbounds (<{ [4096 x i8] }>, ptr @_ZN9crc16_lib3src3lib18TFLAC_CRC16_TABLES17h079e0bfde3fc85c1E, i64 0, i32 0, i64 3584), i64 0, i64 %_34.i
  %_31.i = load i16, ptr %9, align 2, !noalias !2, !noundef !8
  %_43.i = and i16 %8, 255
  %_42.i = zext i16 %_43.i to i64
  %10 = getelementptr inbounds [256 x i16], ptr getelementptr inbounds (<{ [4096 x i8] }>, ptr @_ZN9crc16_lib3src3lib18TFLAC_CRC16_TABLES17h079e0bfde3fc85c1E, i64 0, i32 0, i64 3072), i64 0, i64 %_42.i
  %_39.i = load i16, ptr %10, align 2, !noalias !2, !noundef !8
  %_30.i = xor i16 %_39.i, %_31.i
  %11 = getelementptr inbounds [0 x i8], ptr %d, i64 0, i64 %_52.i
  %_51.i = load i8, ptr %11, align 1, !alias.scope !2, !noundef !8
  %_50.i = zext i8 %_51.i to i64
  %12 = getelementptr inbounds [256 x i16], ptr getelementptr inbounds (<{ [4096 x i8] }>, ptr @_ZN9crc16_lib3src3lib18TFLAC_CRC16_TABLES17h079e0bfde3fc85c1E, i64 0, i32 0, i64 2560), i64 0, i64 %_50.i
  %_47.i = load i16, ptr %12, align 2, !noalias !2, !noundef !8
  %_29.i = xor i16 %_30.i, %_47.i
  %13 = getelementptr inbounds [0 x i8], ptr %d, i64 0, i64 %_63.i
  %_62.i = load i8, ptr %13, align 1, !alias.scope !2, !noundef !8
  %_61.i = zext i8 %_62.i to i64
  %14 = getelementptr inbounds [256 x i16], ptr getelementptr inbounds (<{ [4096 x i8] }>, ptr @_ZN9crc16_lib3src3lib18TFLAC_CRC16_TABLES17h079e0bfde3fc85c1E, i64 0, i32 0, i64 2048), i64 0, i64 %_61.i
  %_58.i = load i16, ptr %14, align 2, !noalias !2, !noundef !8
  %_28.i = xor i16 %_29.i, %_58.i
  %15 = getelementptr inbounds [0 x i8], ptr %d, i64 0, i64 %_74.i
  %_73.i = load i8, ptr %15, align 1, !alias.scope !2, !noundef !8
  %_72.i = zext i8 %_73.i to i64
  %16 = getelementptr inbounds [256 x i16], ptr getelementptr inbounds (<{ [4096 x i8] }>, ptr @_ZN9crc16_lib3src3lib18TFLAC_CRC16_TABLES17h079e0bfde3fc85c1E, i64 0, i32 0, i64 1536), i64 0, i64 %_72.i
  %_69.i = load i16, ptr %16, align 2, !noalias !2, !noundef !8
  %_27.i = xor i16 %_28.i, %_69.i
  %17 = getelementptr inbounds [0 x i8], ptr %d, i64 0, i64 %_85.i
  %_84.i = load i8, ptr %17, align 1, !alias.scope !2, !noundef !8
  %_83.i = zext i8 %_84.i to i64
  %18 = getelementptr inbounds [256 x i16], ptr getelementptr inbounds (<{ [4096 x i8] }>, ptr @_ZN9crc16_lib3src3lib18TFLAC_CRC16_TABLES17h079e0bfde3fc85c1E, i64 0, i32 0, i64 1024), i64 0, i64 %_83.i
  %_80.i = load i16, ptr %18, align 2, !noalias !2, !noundef !8
  %_26.i = xor i16 %_27.i, %_80.i
  %19 = getelementptr inbounds [0 x i8], ptr %d, i64 0, i64 %_96.i
  %_95.i = load i8, ptr %19, align 1, !alias.scope !2, !noundef !8
  %_94.i = zext i8 %_95.i to i64
  %20 = getelementptr inbounds [256 x i16], ptr getelementptr inbounds (<{ [4096 x i8] }>, ptr @_ZN9crc16_lib3src3lib18TFLAC_CRC16_TABLES17h079e0bfde3fc85c1E, i64 0, i32 0, i64 512), i64 0, i64 %_94.i
  %_91.i = load i16, ptr %20, align 2, !noalias !2, !noundef !8
  %_25.i = xor i16 %_26.i, %_91.i
  %21 = getelementptr inbounds [0 x i8], ptr %d, i64 0, i64 %_107.i
  %_106.i = load i8, ptr %21, align 1, !alias.scope !2, !noundef !8
  %_105.i = zext i8 %_106.i to i64
  %22 = getelementptr inbounds [256 x i16], ptr @_ZN9crc16_lib3src3lib18TFLAC_CRC16_TABLES17h079e0bfde3fc85c1E, i64 0, i64 %_105.i
  %_102.i = load i16, ptr %22, align 2, !noalias !2, !noundef !8
  %_24.i = xor i16 %_25.i, %_102.i
  %23 = add nuw nsw i64 %offset.082.i, 8
  %24 = add nsw i64 %remaining.083.i, -8
  %_9.i = icmp ugt i64 %24, 7
  br i1 %_9.i, label %bb2.i, label %bb19.i

bb26.i:                                           ; preds = %bb26.i, %bb26.i.prol.loopexit
  %crc16_0.189.i = phi i16 [ %30, %bb26.i ], [ %crc16_0.189.i.unr, %bb26.i.prol.loopexit ]
  %iter.sroa.4.088.i = phi ptr [ %28, %bb26.i ], [ %iter.sroa.4.088.i.unr, %bb26.i.prol.loopexit ]
  %25 = getelementptr inbounds i8, ptr %iter.sroa.4.088.i, i64 1
  %_133.i = lshr i16 %crc16_0.189.i, 8
  %byte.i = load i8, ptr %iter.sroa.4.088.i, align 1, !alias.scope !2, !noundef !8
  %_135.i = zext i8 %byte.i to i16
  %_132.i = xor i16 %_133.i, %_135.i
  %_131.i = zext i16 %_132.i to i64
  %_126.i = shl i16 %crc16_0.189.i, 8
  %26 = getelementptr inbounds [256 x i16], ptr @_ZN9crc16_lib3src3lib18TFLAC_CRC16_TABLES17h079e0bfde3fc85c1E, i64 0, i64 %_131.i
  %_128.i = load i16, ptr %26, align 2, !noalias !2, !noundef !8
  %27 = xor i16 %_128.i, %_126.i
  %28 = getelementptr inbounds i8, ptr %iter.sroa.4.088.i, i64 2
  %_133.i.1 = lshr i16 %27, 8
  %byte.i.1 = load i8, ptr %25, align 1, !alias.scope !2, !noundef !8
  %_135.i.1 = zext i8 %byte.i.1 to i16
  %_132.i.1 = xor i16 %_133.i.1, %_135.i.1
  %_131.i.1 = zext i16 %_132.i.1 to i64
  %_126.i.1 = shl i16 %_128.i, 8
  %29 = getelementptr inbounds [256 x i16], ptr @_ZN9crc16_lib3src3lib18TFLAC_CRC16_TABLES17h079e0bfde3fc85c1E, i64 0, i64 %_131.i.1
  %_128.i.1 = load i16, ptr %29, align 2, !noalias !2, !noundef !8
  %30 = xor i16 %_128.i.1, %_126.i.1
  %_10.i.i.1 = icmp eq ptr %28, %1
  br i1 %_10.i.i.1, label %_ZN9crc16_lib3src3lib5crc1617hf861253d6a083316E.exit, label %bb26.i

_ZN9crc16_lib3src3lib5crc1617hf861253d6a083316E.exit: ; preds = %bb26.i, %bb26.i.prol.loopexit, %"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hdcdebe57b7b844ffE.exit.i"
  %crc16_0.1.lcssa.i = phi i16 [ %crc16_0.0.lcssa136143.i, %"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hdcdebe57b7b844ffE.exit.i" ], [ %.lcssa.unr, %bb26.i.prol.loopexit ], [ %30, %bb26.i ]
  ret i16 %crc16_0.1.lcssa.i
}

; Function Attrs: nonlazybind uwtable
declare noundef i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice5index22slice_index_order_fail17h2045503bd7776290E(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice5index24slice_end_index_len_fail17h63e54c65524702d3E(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @run_test_1() unnamed_addr #0 {
start:
  %d = alloca [9 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %d)
  store <8 x i8> <i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8>, ptr %d, align 8
  %0 = getelementptr inbounds [9 x i8], ptr %d, i64 0, i64 8
  store i8 9, ptr %0, align 8
  %result = call noundef zeroext i16 @crc16(ptr noundef nonnull %d, i32 noundef 9, i16 noundef zeroext 2000)
  %1 = icmp eq i16 %result, 7541
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %d)
  ret i1 %1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @run_test_2() unnamed_addr #0 {
start:
  %d = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %d)
  store i64 -1, ptr %d, align 8
  %result = call noundef zeroext i16 @crc16(ptr noundef nonnull %d, i32 noundef 8, i16 noundef zeroext 16000)
  %0 = icmp eq i16 %result, 27308
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %d)
  ret i1 %0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @run_test_3() unnamed_addr #0 {
start:
  %d = alloca [21 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %d)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %d, i8 0, i64 21, i1 false)
  %result = call noundef zeroext i16 @crc16(ptr noundef nonnull %d, i32 noundef 21, i16 noundef zeroext 1)
  %0 = icmp eq i16 %result, -1925
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %d)
  ret i1 %0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #2 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!3}
!3 = distinct !{!3, !4, !"_ZN9crc16_lib3src3lib5crc1617hf861253d6a083316E: %d.0"}
!4 = distinct !{!4, !"_ZN9crc16_lib3src3lib5crc1617hf861253d6a083316E"}
!5 = !{!6, !3}
!6 = distinct !{!6, !7, !"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hdcdebe57b7b844ffE: %slice.0"}
!7 = distinct !{!7, !"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hdcdebe57b7b844ffE"}
!8 = !{}
!9 = !{!"branch_weights", i32 2000, i32 1}
