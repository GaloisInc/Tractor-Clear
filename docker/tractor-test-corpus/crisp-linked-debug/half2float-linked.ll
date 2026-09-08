; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; ASSERT EQ: i1 1 = call i1 @run_test_1()
; ASSERT EQ: i1 1 = call i1 @run_test_2()
; ASSERT EQ: i1 1 = call i1 @run_test_3()
; ASSERT EQ: i1 1 = call i1 @run_test_4()
; ASSERT EQ: i1 1 = call i1 @run_test_5()

@_ZN14half2float_lib3src3lib10M_MANTISSA17h2b1d40f2048e14eaE = internal constant <{ [8192 x i8] }> <{ [8192 x i8] c"\00\00\00\00\00\00\803\00\00\004\00\00@4\00\00\804\00\00\A04\00\00\C04\00\00\E04\00\00\005\00\00\105\00\00 5\00\0005\00\00@5\00\00P5\00\00`5\00\00p5\00\00\805\00\00\885\00\00\905\00\00\985\00\00\A05\00\00\A85\00\00\B05\00\00\B85\00\00\C05\00\00\C85\00\00\D05\00\00\D85\00\00\E05\00\00\E85\00\00\F05\00\00\F85\00\00\006\00\00\046\00\00\086\00\00\0C6\00\00\106\00\00\146\00\00\186\00\00\1C6\00\00 6\00\00$6\00\00(6\00\00,6\00\0006\00\0046\00\0086\00\00<6\00\00@6\00\00D6\00\00H6\00\00L6\00\00P6\00\00T6\00\00X6\00\00\\6\00\00`6\00\00d6\00\00h6\00\00l6\00\00p6\00\00t6\00\00x6\00\00|6\00\00\806\00\00\826\00\00\846\00\00\866\00\00\886\00\00\8A6\00\00\8C6\00\00\8E6\00\00\906\00\00\926\00\00\946\00\00\966\00\00\986\00\00\9A6\00\00\9C6\00\00\9E6\00\00\A06\00\00\A26\00\00\A46\00\00\A66\00\00\A86\00\00\AA6\00\00\AC6\00\00\AE6\00\00\B06\00\00\B26\00\00\B46\00\00\B66\00\00\B86\00\00\BA6\00\00\BC6\00\00\BE6\00\00\C06\00\00\C26\00\00\C46\00\00\C66\00\00\C86\00\00\CA6\00\00\CC6\00\00\CE6\00\00\D06\00\00\D26\00\00\D46\00\00\D66\00\00\D86\00\00\DA6\00\00\DC6\00\00\DE6\00\00\E06\00\00\E26\00\00\E46\00\00\E66\00\00\E86\00\00\EA6\00\00\EC6\00\00\EE6\00\00\F06\00\00\F26\00\00\F46\00\00\F66\00\00\F86\00\00\FA6\00\00\FC6\00\00\FE6\00\00\007\00\00\017\00\00\027\00\00\037\00\00\047\00\00\057\00\00\067\00\00\077\00\00\087\00\00\097\00\00\0A7\00\00\0B7\00\00\0C7\00\00\0D7\00\00\0E7\00\00\0F7\00\00\107\00\00\117\00\00\127\00\00\137\00\00\147\00\00\157\00\00\167\00\00\177\00\00\187\00\00\197\00\00\1A7\00\00\1B7\00\00\1C7\00\00\1D7\00\00\1E7\00\00\1F7\00\00 7\00\00!7\00\00\227\00\00#7\00\00$7\00\00%7\00\00&7\00\00'7\00\00(7\00\00)7\00\00*7\00\00+7\00\00,7\00\00-7\00\00.7\00\00/7\00\0007\00\0017\00\0027\00\0037\00\0047\00\0057\00\0067\00\0077\00\0087\00\0097\00\00:7\00\00;7\00\00<7\00\00=7\00\00>7\00\00?7\00\00@7\00\00A7\00\00B7\00\00C7\00\00D7\00\00E7\00\00F7\00\00G7\00\00H7\00\00I7\00\00J7\00\00K7\00\00L7\00\00M7\00\00N7\00\00O7\00\00P7\00\00Q7\00\00R7\00\00S7\00\00T7\00\00U7\00\00V7\00\00W7\00\00X7\00\00Y7\00\00Z7\00\00[7\00\00\\7\00\00]7\00\00^7\00\00_7\00\00`7\00\00a7\00\00b7\00\00c7\00\00d7\00\00e7\00\00f7\00\00g7\00\00h7\00\00i7\00\00j7\00\00k7\00\00l7\00\00m7\00\00n7\00\00o7\00\00p7\00\00q7\00\00r7\00\00s7\00\00t7\00\00u7\00\00v7\00\00w7\00\00x7\00\00y7\00\00z7\00\00{7\00\00|7\00\00}7\00\00~7\00\00\7F7\00\00\807\00\80\807\00\00\817\00\80\817\00\00\827\00\80\827\00\00\837\00\80\837\00\00\847\00\80\847\00\00\857\00\80\857\00\00\867\00\80\867\00\00\877\00\80\877\00\00\887\00\80\887\00\00\897\00\80\897\00\00\8A7\00\80\8A7\00\00\8B7\00\80\8B7\00\00\8C7\00\80\8C7\00\00\8D7\00\80\8D7\00\00\8E7\00\80\8E7\00\00\8F7\00\80\8F7\00\00\907\00\80\907\00\00\917\00\80\917\00\00\927\00\80\927\00\00\937\00\80\937\00\00\947\00\80\947\00\00\957\00\80\957\00\00\967\00\80\967\00\00\977\00\80\977\00\00\987\00\80\987\00\00\997\00\80\997\00\00\9A7\00\80\9A7\00\00\9B7\00\80\9B7\00\00\9C7\00\80\9C7\00\00\9D7\00\80\9D7\00\00\9E7\00\80\9E7\00\00\9F7\00\80\9F7\00\00\A07\00\80\A07\00\00\A17\00\80\A17\00\00\A27\00\80\A27\00\00\A37\00\80\A37\00\00\A47\00\80\A47\00\00\A57\00\80\A57\00\00\A67\00\80\A67\00\00\A77\00\80\A77\00\00\A87\00\80\A87\00\00\A97\00\80\A97\00\00\AA7\00\80\AA7\00\00\AB7\00\80\AB7\00\00\AC7\00\80\AC7\00\00\AD7\00\80\AD7\00\00\AE7\00\80\AE7\00\00\AF7\00\80\AF7\00\00\B07\00\80\B07\00\00\B17\00\80\B17\00\00\B27\00\80\B27\00\00\B37\00\80\B37\00\00\B47\00\80\B47\00\00\B57\00\80\B57\00\00\B67\00\80\B67\00\00\B77\00\80\B77\00\00\B87\00\80\B87\00\00\B97\00\80\B97\00\00\BA7\00\80\BA7\00\00\BB7\00\80\BB7\00\00\BC7\00\80\BC7\00\00\BD7\00\80\BD7\00\00\BE7\00\80\BE7\00\00\BF7\00\80\BF7\00\00\C07\00\80\C07\00\00\C17\00\80\C17\00\00\C27\00\80\C27\00\00\C37\00\80\C37\00\00\C47\00\80\C47\00\00\C57\00\80\C57\00\00\C67\00\80\C67\00\00\C77\00\80\C77\00\00\C87\00\80\C87\00\00\C97\00\80\C97\00\00\CA7\00\80\CA7\00\00\CB7\00\80\CB7\00\00\CC7\00\80\CC7\00\00\CD7\00\80\CD7\00\00\CE7\00\80\CE7\00\00\CF7\00\80\CF7\00\00\D07\00\80\D07\00\00\D17\00\80\D17\00\00\D27\00\80\D27\00\00\D37\00\80\D37\00\00\D47\00\80\D47\00\00\D57\00\80\D57\00\00\D67\00\80\D67\00\00\D77\00\80\D77\00\00\D87\00\80\D87\00\00\D97\00\80\D97\00\00\DA7\00\80\DA7\00\00\DB7\00\80\DB7\00\00\DC7\00\80\DC7\00\00\DD7\00\80\DD7\00\00\DE7\00\80\DE7\00\00\DF7\00\80\DF7\00\00\E07\00\80\E07\00\00\E17\00\80\E17\00\00\E27\00\80\E27\00\00\E37\00\80\E37\00\00\E47\00\80\E47\00\00\E57\00\80\E57\00\00\E67\00\80\E67\00\00\E77\00\80\E77\00\00\E87\00\80\E87\00\00\E97\00\80\E97\00\00\EA7\00\80\EA7\00\00\EB7\00\80\EB7\00\00\EC7\00\80\EC7\00\00\ED7\00\80\ED7\00\00\EE7\00\80\EE7\00\00\EF7\00\80\EF7\00\00\F07\00\80\F07\00\00\F17\00\80\F17\00\00\F27\00\80\F27\00\00\F37\00\80\F37\00\00\F47\00\80\F47\00\00\F57\00\80\F57\00\00\F67\00\80\F67\00\00\F77\00\80\F77\00\00\F87\00\80\F87\00\00\F97\00\80\F97\00\00\FA7\00\80\FA7\00\00\FB7\00\80\FB7\00\00\FC7\00\80\FC7\00\00\FD7\00\80\FD7\00\00\FE7\00\80\FE7\00\00\FF7\00\80\FF7\00\00\008\00@\008\00\80\008\00\C0\008\00\00\018\00@\018\00\80\018\00\C0\018\00\00\028\00@\028\00\80\028\00\C0\028\00\00\038\00@\038\00\80\038\00\C0\038\00\00\048\00@\048\00\80\048\00\C0\048\00\00\058\00@\058\00\80\058\00\C0\058\00\00\068\00@\068\00\80\068\00\C0\068\00\00\078\00@\078\00\80\078\00\C0\078\00\00\088\00@\088\00\80\088\00\C0\088\00\00\098\00@\098\00\80\098\00\C0\098\00\00\0A8\00@\0A8\00\80\0A8\00\C0\0A8\00\00\0B8\00@\0B8\00\80\0B8\00\C0\0B8\00\00\0C8\00@\0C8\00\80\0C8\00\C0\0C8\00\00\0D8\00@\0D8\00\80\0D8\00\C0\0D8\00\00\0E8\00@\0E8\00\80\0E8\00\C0\0E8\00\00\0F8\00@\0F8\00\80\0F8\00\C0\0F8\00\00\108\00@\108\00\80\108\00\C0\108\00\00\118\00@\118\00\80\118\00\C0\118\00\00\128\00@\128\00\80\128\00\C0\128\00\00\138\00@\138\00\80\138\00\C0\138\00\00\148\00@\148\00\80\148\00\C0\148\00\00\158\00@\158\00\80\158\00\C0\158\00\00\168\00@\168\00\80\168\00\C0\168\00\00\178\00@\178\00\80\178\00\C0\178\00\00\188\00@\188\00\80\188\00\C0\188\00\00\198\00@\198\00\80\198\00\C0\198\00\00\1A8\00@\1A8\00\80\1A8\00\C0\1A8\00\00\1B8\00@\1B8\00\80\1B8\00\C0\1B8\00\00\1C8\00@\1C8\00\80\1C8\00\C0\1C8\00\00\1D8\00@\1D8\00\80\1D8\00\C0\1D8\00\00\1E8\00@\1E8\00\80\1E8\00\C0\1E8\00\00\1F8\00@\1F8\00\80\1F8\00\C0\1F8\00\00 8\00@ 8\00\80 8\00\C0 8\00\00!8\00@!8\00\80!8\00\C0!8\00\00\228\00@\228\00\80\228\00\C0\228\00\00#8\00@#8\00\80#8\00\C0#8\00\00$8\00@$8\00\80$8\00\C0$8\00\00%8\00@%8\00\80%8\00\C0%8\00\00&8\00@&8\00\80&8\00\C0&8\00\00'8\00@'8\00\80'8\00\C0'8\00\00(8\00@(8\00\80(8\00\C0(8\00\00)8\00@)8\00\80)8\00\C0)8\00\00*8\00@*8\00\80*8\00\C0*8\00\00+8\00@+8\00\80+8\00\C0+8\00\00,8\00@,8\00\80,8\00\C0,8\00\00-8\00@-8\00\80-8\00\C0-8\00\00.8\00@.8\00\80.8\00\C0.8\00\00/8\00@/8\00\80/8\00\C0/8\00\0008\00@08\00\8008\00\C008\00\0018\00@18\00\8018\00\C018\00\0028\00@28\00\8028\00\C028\00\0038\00@38\00\8038\00\C038\00\0048\00@48\00\8048\00\C048\00\0058\00@58\00\8058\00\C058\00\0068\00@68\00\8068\00\C068\00\0078\00@78\00\8078\00\C078\00\0088\00@88\00\8088\00\C088\00\0098\00@98\00\8098\00\C098\00\00:8\00@:8\00\80:8\00\C0:8\00\00;8\00@;8\00\80;8\00\C0;8\00\00<8\00@<8\00\80<8\00\C0<8\00\00=8\00@=8\00\80=8\00\C0=8\00\00>8\00@>8\00\80>8\00\C0>8\00\00?8\00@?8\00\80?8\00\C0?8\00\00@8\00@@8\00\80@8\00\C0@8\00\00A8\00@A8\00\80A8\00\C0A8\00\00B8\00@B8\00\80B8\00\C0B8\00\00C8\00@C8\00\80C8\00\C0C8\00\00D8\00@D8\00\80D8\00\C0D8\00\00E8\00@E8\00\80E8\00\C0E8\00\00F8\00@F8\00\80F8\00\C0F8\00\00G8\00@G8\00\80G8\00\C0G8\00\00H8\00@H8\00\80H8\00\C0H8\00\00I8\00@I8\00\80I8\00\C0I8\00\00J8\00@J8\00\80J8\00\C0J8\00\00K8\00@K8\00\80K8\00\C0K8\00\00L8\00@L8\00\80L8\00\C0L8\00\00M8\00@M8\00\80M8\00\C0M8\00\00N8\00@N8\00\80N8\00\C0N8\00\00O8\00@O8\00\80O8\00\C0O8\00\00P8\00@P8\00\80P8\00\C0P8\00\00Q8\00@Q8\00\80Q8\00\C0Q8\00\00R8\00@R8\00\80R8\00\C0R8\00\00S8\00@S8\00\80S8\00\C0S8\00\00T8\00@T8\00\80T8\00\C0T8\00\00U8\00@U8\00\80U8\00\C0U8\00\00V8\00@V8\00\80V8\00\C0V8\00\00W8\00@W8\00\80W8\00\C0W8\00\00X8\00@X8\00\80X8\00\C0X8\00\00Y8\00@Y8\00\80Y8\00\C0Y8\00\00Z8\00@Z8\00\80Z8\00\C0Z8\00\00[8\00@[8\00\80[8\00\C0[8\00\00\\8\00@\\8\00\80\\8\00\C0\\8\00\00]8\00@]8\00\80]8\00\C0]8\00\00^8\00@^8\00\80^8\00\C0^8\00\00_8\00@_8\00\80_8\00\C0_8\00\00`8\00@`8\00\80`8\00\C0`8\00\00a8\00@a8\00\80a8\00\C0a8\00\00b8\00@b8\00\80b8\00\C0b8\00\00c8\00@c8\00\80c8\00\C0c8\00\00d8\00@d8\00\80d8\00\C0d8\00\00e8\00@e8\00\80e8\00\C0e8\00\00f8\00@f8\00\80f8\00\C0f8\00\00g8\00@g8\00\80g8\00\C0g8\00\00h8\00@h8\00\80h8\00\C0h8\00\00i8\00@i8\00\80i8\00\C0i8\00\00j8\00@j8\00\80j8\00\C0j8\00\00k8\00@k8\00\80k8\00\C0k8\00\00l8\00@l8\00\80l8\00\C0l8\00\00m8\00@m8\00\80m8\00\C0m8\00\00n8\00@n8\00\80n8\00\C0n8\00\00o8\00@o8\00\80o8\00\C0o8\00\00p8\00@p8\00\80p8\00\C0p8\00\00q8\00@q8\00\80q8\00\C0q8\00\00r8\00@r8\00\80r8\00\C0r8\00\00s8\00@s8\00\80s8\00\C0s8\00\00t8\00@t8\00\80t8\00\C0t8\00\00u8\00@u8\00\80u8\00\C0u8\00\00v8\00@v8\00\80v8\00\C0v8\00\00w8\00@w8\00\80w8\00\C0w8\00\00x8\00@x8\00\80x8\00\C0x8\00\00y8\00@y8\00\80y8\00\C0y8\00\00z8\00@z8\00\80z8\00\C0z8\00\00{8\00@{8\00\80{8\00\C0{8\00\00|8\00@|8\00\80|8\00\C0|8\00\00}8\00@}8\00\80}8\00\C0}8\00\00~8\00@~8\00\80~8\00\C0~8\00\00\7F8\00@\7F8\00\80\7F8\00\C0\7F8\00\00\008\00 \008\00@\008\00`\008\00\80\008\00\A0\008\00\C0\008\00\E0\008\00\00\018\00 \018\00@\018\00`\018\00\80\018\00\A0\018\00\C0\018\00\E0\018\00\00\028\00 \028\00@\028\00`\028\00\80\028\00\A0\028\00\C0\028\00\E0\028\00\00\038\00 \038\00@\038\00`\038\00\80\038\00\A0\038\00\C0\038\00\E0\038\00\00\048\00 \048\00@\048\00`\048\00\80\048\00\A0\048\00\C0\048\00\E0\048\00\00\058\00 \058\00@\058\00`\058\00\80\058\00\A0\058\00\C0\058\00\E0\058\00\00\068\00 \068\00@\068\00`\068\00\80\068\00\A0\068\00\C0\068\00\E0\068\00\00\078\00 \078\00@\078\00`\078\00\80\078\00\A0\078\00\C0\078\00\E0\078\00\00\088\00 \088\00@\088\00`\088\00\80\088\00\A0\088\00\C0\088\00\E0\088\00\00\098\00 \098\00@\098\00`\098\00\80\098\00\A0\098\00\C0\098\00\E0\098\00\00\0A8\00 \0A8\00@\0A8\00`\0A8\00\80\0A8\00\A0\0A8\00\C0\0A8\00\E0\0A8\00\00\0B8\00 \0B8\00@\0B8\00`\0B8\00\80\0B8\00\A0\0B8\00\C0\0B8\00\E0\0B8\00\00\0C8\00 \0C8\00@\0C8\00`\0C8\00\80\0C8\00\A0\0C8\00\C0\0C8\00\E0\0C8\00\00\0D8\00 \0D8\00@\0D8\00`\0D8\00\80\0D8\00\A0\0D8\00\C0\0D8\00\E0\0D8\00\00\0E8\00 \0E8\00@\0E8\00`\0E8\00\80\0E8\00\A0\0E8\00\C0\0E8\00\E0\0E8\00\00\0F8\00 \0F8\00@\0F8\00`\0F8\00\80\0F8\00\A0\0F8\00\C0\0F8\00\E0\0F8\00\00\108\00 \108\00@\108\00`\108\00\80\108\00\A0\108\00\C0\108\00\E0\108\00\00\118\00 \118\00@\118\00`\118\00\80\118\00\A0\118\00\C0\118\00\E0\118\00\00\128\00 \128\00@\128\00`\128\00\80\128\00\A0\128\00\C0\128\00\E0\128\00\00\138\00 \138\00@\138\00`\138\00\80\138\00\A0\138\00\C0\138\00\E0\138\00\00\148\00 \148\00@\148\00`\148\00\80\148\00\A0\148\00\C0\148\00\E0\148\00\00\158\00 \158\00@\158\00`\158\00\80\158\00\A0\158\00\C0\158\00\E0\158\00\00\168\00 \168\00@\168\00`\168\00\80\168\00\A0\168\00\C0\168\00\E0\168\00\00\178\00 \178\00@\178\00`\178\00\80\178\00\A0\178\00\C0\178\00\E0\178\00\00\188\00 \188\00@\188\00`\188\00\80\188\00\A0\188\00\C0\188\00\E0\188\00\00\198\00 \198\00@\198\00`\198\00\80\198\00\A0\198\00\C0\198\00\E0\198\00\00\1A8\00 \1A8\00@\1A8\00`\1A8\00\80\1A8\00\A0\1A8\00\C0\1A8\00\E0\1A8\00\00\1B8\00 \1B8\00@\1B8\00`\1B8\00\80\1B8\00\A0\1B8\00\C0\1B8\00\E0\1B8\00\00\1C8\00 \1C8\00@\1C8\00`\1C8\00\80\1C8\00\A0\1C8\00\C0\1C8\00\E0\1C8\00\00\1D8\00 \1D8\00@\1D8\00`\1D8\00\80\1D8\00\A0\1D8\00\C0\1D8\00\E0\1D8\00\00\1E8\00 \1E8\00@\1E8\00`\1E8\00\80\1E8\00\A0\1E8\00\C0\1E8\00\E0\1E8\00\00\1F8\00 \1F8\00@\1F8\00`\1F8\00\80\1F8\00\A0\1F8\00\C0\1F8\00\E0\1F8\00\00 8\00  8\00@ 8\00` 8\00\80 8\00\A0 8\00\C0 8\00\E0 8\00\00!8\00 !8\00@!8\00`!8\00\80!8\00\A0!8\00\C0!8\00\E0!8\00\00\228\00 \228\00@\228\00`\228\00\80\228\00\A0\228\00\C0\228\00\E0\228\00\00#8\00 #8\00@#8\00`#8\00\80#8\00\A0#8\00\C0#8\00\E0#8\00\00$8\00 $8\00@$8\00`$8\00\80$8\00\A0$8\00\C0$8\00\E0$8\00\00%8\00 %8\00@%8\00`%8\00\80%8\00\A0%8\00\C0%8\00\E0%8\00\00&8\00 &8\00@&8\00`&8\00\80&8\00\A0&8\00\C0&8\00\E0&8\00\00'8\00 '8\00@'8\00`'8\00\80'8\00\A0'8\00\C0'8\00\E0'8\00\00(8\00 (8\00@(8\00`(8\00\80(8\00\A0(8\00\C0(8\00\E0(8\00\00)8\00 )8\00@)8\00`)8\00\80)8\00\A0)8\00\C0)8\00\E0)8\00\00*8\00 *8\00@*8\00`*8\00\80*8\00\A0*8\00\C0*8\00\E0*8\00\00+8\00 +8\00@+8\00`+8\00\80+8\00\A0+8\00\C0+8\00\E0+8\00\00,8\00 ,8\00@,8\00`,8\00\80,8\00\A0,8\00\C0,8\00\E0,8\00\00-8\00 -8\00@-8\00`-8\00\80-8\00\A0-8\00\C0-8\00\E0-8\00\00.8\00 .8\00@.8\00`.8\00\80.8\00\A0.8\00\C0.8\00\E0.8\00\00/8\00 /8\00@/8\00`/8\00\80/8\00\A0/8\00\C0/8\00\E0/8\00\0008\00 08\00@08\00`08\00\8008\00\A008\00\C008\00\E008\00\0018\00 18\00@18\00`18\00\8018\00\A018\00\C018\00\E018\00\0028\00 28\00@28\00`28\00\8028\00\A028\00\C028\00\E028\00\0038\00 38\00@38\00`38\00\8038\00\A038\00\C038\00\E038\00\0048\00 48\00@48\00`48\00\8048\00\A048\00\C048\00\E048\00\0058\00 58\00@58\00`58\00\8058\00\A058\00\C058\00\E058\00\0068\00 68\00@68\00`68\00\8068\00\A068\00\C068\00\E068\00\0078\00 78\00@78\00`78\00\8078\00\A078\00\C078\00\E078\00\0088\00 88\00@88\00`88\00\8088\00\A088\00\C088\00\E088\00\0098\00 98\00@98\00`98\00\8098\00\A098\00\C098\00\E098\00\00:8\00 :8\00@:8\00`:8\00\80:8\00\A0:8\00\C0:8\00\E0:8\00\00;8\00 ;8\00@;8\00`;8\00\80;8\00\A0;8\00\C0;8\00\E0;8\00\00<8\00 <8\00@<8\00`<8\00\80<8\00\A0<8\00\C0<8\00\E0<8\00\00=8\00 =8\00@=8\00`=8\00\80=8\00\A0=8\00\C0=8\00\E0=8\00\00>8\00 >8\00@>8\00`>8\00\80>8\00\A0>8\00\C0>8\00\E0>8\00\00?8\00 ?8\00@?8\00`?8\00\80?8\00\A0?8\00\C0?8\00\E0?8\00\00@8\00 @8\00@@8\00`@8\00\80@8\00\A0@8\00\C0@8\00\E0@8\00\00A8\00 A8\00@A8\00`A8\00\80A8\00\A0A8\00\C0A8\00\E0A8\00\00B8\00 B8\00@B8\00`B8\00\80B8\00\A0B8\00\C0B8\00\E0B8\00\00C8\00 C8\00@C8\00`C8\00\80C8\00\A0C8\00\C0C8\00\E0C8\00\00D8\00 D8\00@D8\00`D8\00\80D8\00\A0D8\00\C0D8\00\E0D8\00\00E8\00 E8\00@E8\00`E8\00\80E8\00\A0E8\00\C0E8\00\E0E8\00\00F8\00 F8\00@F8\00`F8\00\80F8\00\A0F8\00\C0F8\00\E0F8\00\00G8\00 G8\00@G8\00`G8\00\80G8\00\A0G8\00\C0G8\00\E0G8\00\00H8\00 H8\00@H8\00`H8\00\80H8\00\A0H8\00\C0H8\00\E0H8\00\00I8\00 I8\00@I8\00`I8\00\80I8\00\A0I8\00\C0I8\00\E0I8\00\00J8\00 J8\00@J8\00`J8\00\80J8\00\A0J8\00\C0J8\00\E0J8\00\00K8\00 K8\00@K8\00`K8\00\80K8\00\A0K8\00\C0K8\00\E0K8\00\00L8\00 L8\00@L8\00`L8\00\80L8\00\A0L8\00\C0L8\00\E0L8\00\00M8\00 M8\00@M8\00`M8\00\80M8\00\A0M8\00\C0M8\00\E0M8\00\00N8\00 N8\00@N8\00`N8\00\80N8\00\A0N8\00\C0N8\00\E0N8\00\00O8\00 O8\00@O8\00`O8\00\80O8\00\A0O8\00\C0O8\00\E0O8\00\00P8\00 P8\00@P8\00`P8\00\80P8\00\A0P8\00\C0P8\00\E0P8\00\00Q8\00 Q8\00@Q8\00`Q8\00\80Q8\00\A0Q8\00\C0Q8\00\E0Q8\00\00R8\00 R8\00@R8\00`R8\00\80R8\00\A0R8\00\C0R8\00\E0R8\00\00S8\00 S8\00@S8\00`S8\00\80S8\00\A0S8\00\C0S8\00\E0S8\00\00T8\00 T8\00@T8\00`T8\00\80T8\00\A0T8\00\C0T8\00\E0T8\00\00U8\00 U8\00@U8\00`U8\00\80U8\00\A0U8\00\C0U8\00\E0U8\00\00V8\00 V8\00@V8\00`V8\00\80V8\00\A0V8\00\C0V8\00\E0V8\00\00W8\00 W8\00@W8\00`W8\00\80W8\00\A0W8\00\C0W8\00\E0W8\00\00X8\00 X8\00@X8\00`X8\00\80X8\00\A0X8\00\C0X8\00\E0X8\00\00Y8\00 Y8\00@Y8\00`Y8\00\80Y8\00\A0Y8\00\C0Y8\00\E0Y8\00\00Z8\00 Z8\00@Z8\00`Z8\00\80Z8\00\A0Z8\00\C0Z8\00\E0Z8\00\00[8\00 [8\00@[8\00`[8\00\80[8\00\A0[8\00\C0[8\00\E0[8\00\00\\8\00 \\8\00@\\8\00`\\8\00\80\\8\00\A0\\8\00\C0\\8\00\E0\\8\00\00]8\00 ]8\00@]8\00`]8\00\80]8\00\A0]8\00\C0]8\00\E0]8\00\00^8\00 ^8\00@^8\00`^8\00\80^8\00\A0^8\00\C0^8\00\E0^8\00\00_8\00 _8\00@_8\00`_8\00\80_8\00\A0_8\00\C0_8\00\E0_8\00\00`8\00 `8\00@`8\00``8\00\80`8\00\A0`8\00\C0`8\00\E0`8\00\00a8\00 a8\00@a8\00`a8\00\80a8\00\A0a8\00\C0a8\00\E0a8\00\00b8\00 b8\00@b8\00`b8\00\80b8\00\A0b8\00\C0b8\00\E0b8\00\00c8\00 c8\00@c8\00`c8\00\80c8\00\A0c8\00\C0c8\00\E0c8\00\00d8\00 d8\00@d8\00`d8\00\80d8\00\A0d8\00\C0d8\00\E0d8\00\00e8\00 e8\00@e8\00`e8\00\80e8\00\A0e8\00\C0e8\00\E0e8\00\00f8\00 f8\00@f8\00`f8\00\80f8\00\A0f8\00\C0f8\00\E0f8\00\00g8\00 g8\00@g8\00`g8\00\80g8\00\A0g8\00\C0g8\00\E0g8\00\00h8\00 h8\00@h8\00`h8\00\80h8\00\A0h8\00\C0h8\00\E0h8\00\00i8\00 i8\00@i8\00`i8\00\80i8\00\A0i8\00\C0i8\00\E0i8\00\00j8\00 j8\00@j8\00`j8\00\80j8\00\A0j8\00\C0j8\00\E0j8\00\00k8\00 k8\00@k8\00`k8\00\80k8\00\A0k8\00\C0k8\00\E0k8\00\00l8\00 l8\00@l8\00`l8\00\80l8\00\A0l8\00\C0l8\00\E0l8\00\00m8\00 m8\00@m8\00`m8\00\80m8\00\A0m8\00\C0m8\00\E0m8\00\00n8\00 n8\00@n8\00`n8\00\80n8\00\A0n8\00\C0n8\00\E0n8\00\00o8\00 o8\00@o8\00`o8\00\80o8\00\A0o8\00\C0o8\00\E0o8\00\00p8\00 p8\00@p8\00`p8\00\80p8\00\A0p8\00\C0p8\00\E0p8\00\00q8\00 q8\00@q8\00`q8\00\80q8\00\A0q8\00\C0q8\00\E0q8\00\00r8\00 r8\00@r8\00`r8\00\80r8\00\A0r8\00\C0r8\00\E0r8\00\00s8\00 s8\00@s8\00`s8\00\80s8\00\A0s8\00\C0s8\00\E0s8\00\00t8\00 t8\00@t8\00`t8\00\80t8\00\A0t8\00\C0t8\00\E0t8\00\00u8\00 u8\00@u8\00`u8\00\80u8\00\A0u8\00\C0u8\00\E0u8\00\00v8\00 v8\00@v8\00`v8\00\80v8\00\A0v8\00\C0v8\00\E0v8\00\00w8\00 w8\00@w8\00`w8\00\80w8\00\A0w8\00\C0w8\00\E0w8\00\00x8\00 x8\00@x8\00`x8\00\80x8\00\A0x8\00\C0x8\00\E0x8\00\00y8\00 y8\00@y8\00`y8\00\80y8\00\A0y8\00\C0y8\00\E0y8\00\00z8\00 z8\00@z8\00`z8\00\80z8\00\A0z8\00\C0z8\00\E0z8\00\00{8\00 {8\00@{8\00`{8\00\80{8\00\A0{8\00\C0{8\00\E0{8\00\00|8\00 |8\00@|8\00`|8\00\80|8\00\A0|8\00\C0|8\00\E0|8\00\00}8\00 }8\00@}8\00`}8\00\80}8\00\A0}8\00\C0}8\00\E0}8\00\00~8\00 ~8\00@~8\00`~8\00\80~8\00\A0~8\00\C0~8\00\E0~8\00\00\7F8\00 \7F8\00@\7F8\00`\7F8\00\80\7F8\00\A0\7F8\00\C0\7F8\00\E0\7F8" }>, align 4, !dbg !0
@_ZN14half2float_lib3src3lib8M_OFFSET17h6c92efd5bbafc3d3E = internal constant <{ [128 x i8] }> <{ [128 x i8] c"\00\00\00\04\00\04\00\04\00\04\00\04\00\04\00\04\00\04\00\04\00\04\00\04\00\04\00\04\00\04\00\04\00\04\00\04\00\04\00\04\00\04\00\04\00\04\00\04\00\04\00\04\00\04\00\04\00\04\00\04\00\04\00\04\00\00\00\04\00\04\00\04\00\04\00\04\00\04\00\04\00\04\00\04\00\04\00\04\00\04\00\04\00\04\00\04\00\04\00\04\00\04\00\04\00\04\00\04\00\04\00\04\00\04\00\04\00\04\00\04\00\04\00\04\00\04\00\04" }>, align 2, !dbg !10
@_ZN14half2float_lib3src3lib10M_EXPONENT17he28f60a88a491cbbE = internal constant <{ [256 x i8] }> <{ [256 x i8] c"\00\00\00\00\00\00\80\00\00\00\00\01\00\00\80\01\00\00\00\02\00\00\80\02\00\00\00\03\00\00\80\03\00\00\00\04\00\00\80\04\00\00\00\05\00\00\80\05\00\00\00\06\00\00\80\06\00\00\00\07\00\00\80\07\00\00\00\08\00\00\80\08\00\00\00\09\00\00\80\09\00\00\00\0A\00\00\80\0A\00\00\00\0B\00\00\80\0B\00\00\00\0C\00\00\80\0C\00\00\00\0D\00\00\80\0D\00\00\00\0E\00\00\80\0E\00\00\00\0F\00\00\80G\00\00\00\80\00\00\80\80\00\00\00\81\00\00\80\81\00\00\00\82\00\00\80\82\00\00\00\83\00\00\80\83\00\00\00\84\00\00\80\84\00\00\00\85\00\00\80\85\00\00\00\86\00\00\80\86\00\00\00\87\00\00\80\87\00\00\00\88\00\00\80\88\00\00\00\89\00\00\80\89\00\00\00\8A\00\00\80\8A\00\00\00\8B\00\00\80\8B\00\00\00\8C\00\00\80\8C\00\00\00\8D\00\00\80\8D\00\00\00\8E\00\00\80\8E\00\00\00\8F\00\00\80\C7" }>, align 4, !dbg !16
@alloc_f5ffd2fd1476bab43ad89fb40c72d0c5 = private unnamed_addr constant <{ [10 x i8] }> <{ [10 x i8] c"src/lib.rs" }>, align 1
@alloc_e2f27b792e9290192c8ed618e2fac55d = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\93\08\00\005\00\00\00" }>, align 8
@alloc_c20174e5b37b496f8280a5bf6b9358a8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\93\08\00\00\1A\00\00\00" }>, align 8
@str.0 = internal constant [28 x i8] c"attempt to add with overflow"
@alloc_86bedb7b320edfefc571e75aceef882e = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\94\08\00\00\10\00\00\00" }>, align 8
@alloc_0e7f58f8c8b890b7d7b20cd5b28b417c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\94\08\00\008\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define float @half2float(i16 zeroext %h) unnamed_addr #0 !dbg !26 {
start:
  %h.dbg.spill = alloca i16, align 2
  store i16 %h, ptr %h.dbg.spill, align 2
    #dbg_declare(ptr %h.dbg.spill, !31, !DIExpression(), !33)
  %0 = call float @_ZN14half2float_lib3src3lib10half2float17hc6360e86f9d3f1ceE(i16 zeroext %h), !dbg !34
  ret float %0, !dbg !35
}

; Function Attrs: nonlazybind uwtable
define internal float @_ZN14half2float_lib3src3lib10half2float17hc6360e86f9d3f1ceE(i16 zeroext %h) unnamed_addr #0 !dbg !36 {
start:
  %rhs.dbg.spill.i = alloca i32, align 4
  %self.dbg.spill.i = alloca i32, align 4
  %bits.dbg.spill = alloca i32, align 4
  %mantissa_index.dbg.spill = alloca i64, align 8
  %n.dbg.spill = alloca i64, align 8
  %h.dbg.spill = alloca i16, align 2
  store i16 %h, ptr %h.dbg.spill, align 2
    #dbg_declare(ptr %h.dbg.spill, !38, !DIExpression(), !46)
  %_3 = lshr i16 %h, 10, !dbg !47
  %n = zext i16 %_3 to i64, !dbg !47
  store i64 %n, ptr %n.dbg.spill, align 8, !dbg !47
    #dbg_declare(ptr %n.dbg.spill, !39, !DIExpression(), !48)
  %_6 = and i16 %h, 1023, !dbg !49
  %_5 = zext i16 %_6 to i64, !dbg !50
  %_11 = icmp ult i64 %n, 64, !dbg !51
  %0 = call i1 @llvm.expect.i1(i1 %_11, i1 true), !dbg !51
  br i1 %0, label %bb1, label %panic, !dbg !51

bb1:                                              ; preds = %start
  %1 = getelementptr inbounds [64 x i16], ptr @_ZN14half2float_lib3src3lib8M_OFFSET17h6c92efd5bbafc3d3E, i64 0, i64 %n, !dbg !51
  %_8 = load i16, ptr %1, align 2, !dbg !51, !noundef !32
  %_7 = zext i16 %_8 to i64, !dbg !52
  %2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_5, i64 %_7), !dbg !50
  %_12.0 = extractvalue { i64, i1 } %2, 0, !dbg !50
  %_12.1 = extractvalue { i64, i1 } %2, 1, !dbg !50
  %3 = call i1 @llvm.expect.i1(i1 %_12.1, i1 false), !dbg !50
  br i1 %3, label %panic1, label %bb2, !dbg !50

panic:                                            ; preds = %start
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %n, i64 64, ptr align 8 @alloc_e2f27b792e9290192c8ed618e2fac55d) #5, !dbg !51
  unreachable, !dbg !51

bb2:                                              ; preds = %bb1
  store i64 %_12.0, ptr %mantissa_index.dbg.spill, align 8, !dbg !50
    #dbg_declare(ptr %mantissa_index.dbg.spill, !42, !DIExpression(), !53)
  %_17 = icmp ult i64 %_12.0, 2048, !dbg !54
  %4 = call i1 @llvm.expect.i1(i1 %_17, i1 true), !dbg !54
  br i1 %4, label %bb3, label %panic2, !dbg !54

panic1:                                           ; preds = %bb1
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.0, i64 28, ptr align 8 @alloc_c20174e5b37b496f8280a5bf6b9358a8) #5, !dbg !50
  unreachable, !dbg !50

bb3:                                              ; preds = %bb2
  %5 = getelementptr inbounds [2048 x i32], ptr @_ZN14half2float_lib3src3lib10M_MANTISSA17h2b1d40f2048e14eaE, i64 0, i64 %_12.0, !dbg !54
  %_14 = load i32, ptr %5, align 4, !dbg !54, !noundef !32
  %_21 = icmp ult i64 %n, 64, !dbg !55
  %6 = call i1 @llvm.expect.i1(i1 %_21, i1 true), !dbg !55
  br i1 %6, label %bb4, label %panic3, !dbg !55

panic2:                                           ; preds = %bb2
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %_12.0, i64 2048, ptr align 8 @alloc_86bedb7b320edfefc571e75aceef882e) #5, !dbg !54
  unreachable, !dbg !54

bb4:                                              ; preds = %bb3
  %7 = getelementptr inbounds [64 x i32], ptr @_ZN14half2float_lib3src3lib10M_EXPONENT17he28f60a88a491cbbE, i64 0, i64 %n, !dbg !55
  %_18 = load i32, ptr %7, align 4, !dbg !55, !noundef !32
  store i32 %_14, ptr %self.dbg.spill.i, align 4
    #dbg_declare(ptr %self.dbg.spill.i, !56, !DIExpression(), !66)
  store i32 %_18, ptr %rhs.dbg.spill.i, align 4
    #dbg_declare(ptr %rhs.dbg.spill.i, !65, !DIExpression(), !68)
  %8 = add i32 %_14, %_18, !dbg !69
  store i32 %8, ptr %bits.dbg.spill, align 4, !dbg !54
    #dbg_declare(ptr %bits.dbg.spill, !44, !DIExpression(), !70)
  %9 = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17hf9780703a78310c3E"(i32 %8), !dbg !71
  ret float %9, !dbg !72

panic3:                                           ; preds = %bb3
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %n, i64 64, ptr align 8 @alloc_0e7f58f8c8b890b7d7b20cd5b28b417c) #5, !dbg !55
  unreachable, !dbg !55
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.expect.i1(i1, i1) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64, i64, ptr align 8) unnamed_addr #3

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1, i64, ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
define internal float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17hf9780703a78310c3E"(i32 %v) unnamed_addr #4 !dbg !73 {
start:
  %x.dbg.spill = alloca i32, align 4
  %v.dbg.spill = alloca i32, align 4
  %_2 = alloca i32, align 4
  store i32 %v, ptr %v.dbg.spill, align 4
    #dbg_declare(ptr %v.dbg.spill, !80, !DIExpression(), !81)
  store i32 %v, ptr %_2, align 4, !dbg !82
  %x = load i32, ptr %_2, align 4, !dbg !83, !noundef !32
  store i32 %x, ptr %x.dbg.spill, align 4, !dbg !83
    #dbg_declare(ptr %x.dbg.spill, !84, !DIExpression(), !88)
  %0 = bitcast i32 %x to float, !dbg !89
  ret float %0, !dbg !90
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_1() unnamed_addr #0 !dbg !91 {
start:
  %expected.dbg.spill = alloca float, align 4
  %result.dbg.spill = alloca float, align 4
  %h.dbg.spill = alloca i16, align 2
  store i16 11122, ptr %h.dbg.spill, align 2, !dbg !102
    #dbg_declare(ptr %h.dbg.spill, !96, !DIExpression(), !103)
  %result = call float @_ZN14half2float_lib3src3lib10half2float17hc6360e86f9d3f1ceE(i16 zeroext 11122), !dbg !104
  store float %result, ptr %result.dbg.spill, align 4, !dbg !104
    #dbg_declare(ptr %result.dbg.spill, !98, !DIExpression(), !105)
  %expected = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17hf9780703a78310c3E"(i32 1030635520), !dbg !106
  store float %expected, ptr %expected.dbg.spill, align 4, !dbg !106
    #dbg_declare(ptr %expected.dbg.spill, !100, !DIExpression(), !107)
  %_4 = call i32 @"_ZN4core3f3221_$LT$impl$u20$f32$GT$7to_bits17h7da1bf791101da05E"(float %result), !dbg !108
  %_6 = call i32 @"_ZN4core3f3221_$LT$impl$u20$f32$GT$7to_bits17h7da1bf791101da05E"(float %expected), !dbg !109
  %0 = icmp eq i32 %_4, %_6, !dbg !108
  ret i1 %0, !dbg !110
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN4core3f3221_$LT$impl$u20$f32$GT$7to_bits17h7da1bf791101da05E"(float %self) unnamed_addr #4 !dbg !111 {
start:
  %x.dbg.spill = alloca float, align 4
  %self.dbg.spill = alloca float, align 4
  %_2 = alloca float, align 4
  store float %self, ptr %self.dbg.spill, align 4
    #dbg_declare(ptr %self.dbg.spill, !115, !DIExpression(), !116)
  store float %self, ptr %_2, align 4, !dbg !117
  %x = load float, ptr %_2, align 4, !dbg !118, !noundef !32
  store float %x, ptr %x.dbg.spill, align 4, !dbg !118
    #dbg_declare(ptr %x.dbg.spill, !119, !DIExpression(), !123)
  %0 = bitcast float %x to i32, !dbg !124
  ret i32 %0, !dbg !125
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_2() unnamed_addr #0 !dbg !126 {
start:
  %expected.dbg.spill = alloca float, align 4
  %result.dbg.spill = alloca float, align 4
  %h.dbg.spill = alloca i16, align 2
  store i16 26915, ptr %h.dbg.spill, align 2, !dbg !134
    #dbg_declare(ptr %h.dbg.spill, !128, !DIExpression(), !135)
  %result = call float @_ZN14half2float_lib3src3lib10half2float17hc6360e86f9d3f1ceE(i16 zeroext 26915), !dbg !136
  store float %result, ptr %result.dbg.spill, align 4, !dbg !136
    #dbg_declare(ptr %result.dbg.spill, !130, !DIExpression(), !137)
  %expected = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17hf9780703a78310c3E"(i32 1160011776), !dbg !138
  store float %expected, ptr %expected.dbg.spill, align 4, !dbg !138
    #dbg_declare(ptr %expected.dbg.spill, !132, !DIExpression(), !139)
  %_4 = call i32 @"_ZN4core3f3221_$LT$impl$u20$f32$GT$7to_bits17h7da1bf791101da05E"(float %result), !dbg !140
  %_6 = call i32 @"_ZN4core3f3221_$LT$impl$u20$f32$GT$7to_bits17h7da1bf791101da05E"(float %expected), !dbg !141
  %0 = icmp eq i32 %_4, %_6, !dbg !140
  ret i1 %0, !dbg !142
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_3() unnamed_addr #0 !dbg !143 {
start:
  %expected.dbg.spill = alloca float, align 4
  %result.dbg.spill = alloca float, align 4
  %h.dbg.spill = alloca i16, align 2
  store i16 -21407, ptr %h.dbg.spill, align 2, !dbg !151
    #dbg_declare(ptr %h.dbg.spill, !145, !DIExpression(), !152)
  %result = call float @_ZN14half2float_lib3src3lib10half2float17hc6360e86f9d3f1ceE(i16 zeroext -21407), !dbg !153
  store float %result, ptr %result.dbg.spill, align 4, !dbg !153
    #dbg_declare(ptr %result.dbg.spill, !147, !DIExpression(), !154)
  %expected = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17hf9780703a78310c3E"(i32 -1114890240), !dbg !155
  store float %expected, ptr %expected.dbg.spill, align 4, !dbg !155
    #dbg_declare(ptr %expected.dbg.spill, !149, !DIExpression(), !156)
  %_4 = call i32 @"_ZN4core3f3221_$LT$impl$u20$f32$GT$7to_bits17h7da1bf791101da05E"(float %result), !dbg !157
  %_6 = call i32 @"_ZN4core3f3221_$LT$impl$u20$f32$GT$7to_bits17h7da1bf791101da05E"(float %expected), !dbg !158
  %0 = icmp eq i32 %_4, %_6, !dbg !157
  ret i1 %0, !dbg !159
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_4() unnamed_addr #0 !dbg !160 {
start:
  %expected.dbg.spill = alloca float, align 4
  %result.dbg.spill = alloca float, align 4
  %h.dbg.spill = alloca i16, align 2
  store i16 27299, ptr %h.dbg.spill, align 2, !dbg !168
    #dbg_declare(ptr %h.dbg.spill, !162, !DIExpression(), !169)
  %result = call float @_ZN14half2float_lib3src3lib10half2float17hc6360e86f9d3f1ceE(i16 zeroext 27299), !dbg !170
  store float %result, ptr %result.dbg.spill, align 4, !dbg !170
    #dbg_declare(ptr %result.dbg.spill, !164, !DIExpression(), !171)
  %expected = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17hf9780703a78310c3E"(i32 1163157504), !dbg !172
  store float %expected, ptr %expected.dbg.spill, align 4, !dbg !172
    #dbg_declare(ptr %expected.dbg.spill, !166, !DIExpression(), !173)
  %_4 = call i32 @"_ZN4core3f3221_$LT$impl$u20$f32$GT$7to_bits17h7da1bf791101da05E"(float %result), !dbg !174
  %_6 = call i32 @"_ZN4core3f3221_$LT$impl$u20$f32$GT$7to_bits17h7da1bf791101da05E"(float %expected), !dbg !175
  %0 = icmp eq i32 %_4, %_6, !dbg !174
  ret i1 %0, !dbg !176
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_5() unnamed_addr #0 !dbg !177 {
start:
  %expected.dbg.spill = alloca float, align 4
  %result.dbg.spill = alloca float, align 4
  %h.dbg.spill = alloca i16, align 2
  store i16 1494, ptr %h.dbg.spill, align 2, !dbg !185
    #dbg_declare(ptr %h.dbg.spill, !179, !DIExpression(), !186)
  %result = call float @_ZN14half2float_lib3src3lib10half2float17hc6360e86f9d3f1ceE(i16 zeroext 1494), !dbg !187
  store float %result, ptr %result.dbg.spill, align 4, !dbg !187
    #dbg_declare(ptr %result.dbg.spill, !181, !DIExpression(), !188)
  %expected = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17hf9780703a78310c3E"(i32 951762944), !dbg !189
  store float %expected, ptr %expected.dbg.spill, align 4, !dbg !189
    #dbg_declare(ptr %expected.dbg.spill, !183, !DIExpression(), !190)
  %_4 = call i32 @"_ZN4core3f3221_$LT$impl$u20$f32$GT$7to_bits17h7da1bf791101da05E"(float %result), !dbg !191
  %_6 = call i32 @"_ZN4core3f3221_$LT$impl$u20$f32$GT$7to_bits17h7da1bf791101da05E"(float %expected), !dbg !192
  %0 = icmp eq i32 %_4, %_6, !dbg !191
  ret i1 %0, !dbg !193
}

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { noreturn }

!llvm.dbg.cu = !{!19}
!llvm.module.flags = !{!22, !23, !24, !25}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "M_MANTISSA", linkageName: "_ZN14half2float_lib3src3lib10M_MANTISSA17h2b1d40f2048e14eaE", scope: !2, file: !5, line: 11, type: !6, isLocal: true, isDefinition: true, align: 32)
!2 = !DINamespace(name: "lib", scope: !3)
!3 = !DINamespace(name: "src", scope: !4)
!4 = !DINamespace(name: "half2float_lib", scope: null)
!5 = !DIFile(filename: "src/lib.rs", directory: "/crisp-rust-outputs/B01_organic/half2float_lib/translated_rust", checksumkind: CSK_MD5, checksum: "f549d00801fd6814bf6fd67ec15f9109")
!6 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 65536, align: 32, elements: !8)
!7 = !DIBasicType(name: "u32", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9}
!9 = !DISubrange(count: 2048, lowerBound: 0)
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression())
!11 = distinct !DIGlobalVariable(name: "M_OFFSET", linkageName: "_ZN14half2float_lib3src3lib8M_OFFSET17h6c92efd5bbafc3d3E", scope: !2, file: !5, line: 2061, type: !12, isLocal: true, isDefinition: true, align: 16)
!12 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 1024, align: 16, elements: !14)
!13 = !DIBasicType(name: "u16", size: 16, encoding: DW_ATE_unsigned)
!14 = !{!15}
!15 = !DISubrange(count: 64, lowerBound: 0)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "M_EXPONENT", linkageName: "_ZN14half2float_lib3src3lib10M_EXPONENT17he28f60a88a491cbbE", scope: !2, file: !5, line: 2127, type: !18, isLocal: true, isDefinition: true, align: 32)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2048, align: 32, elements: !14)
!19 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !20, producer: "clang LLVM (rustc version 1.70.0-nightly (84dd17b56 2023-04-14))", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !21, splitDebugInlining: false)
!20 = !DIFile(filename: "lib.rs/@/4uqjtdfwgwftjg05", directory: "/crisp-rust-outputs/B01_organic/half2float_lib/translated_rust")
!21 = !{!0, !10, !16}
!22 = !{i32 8, !"PIC Level", i32 2}
!23 = !{i32 2, !"RtLibUseGOT", i32 1}
!24 = !{i32 2, !"Dwarf Version", i32 4}
!25 = !{i32 2, !"Debug Info Version", i32 3}
!26 = distinct !DISubprogram(name: "half2float_ffi", linkageName: "half2float", scope: !2, file: !5, line: 2201, type: !27, scopeLine: 2201, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, templateParams: !32, retainedNodes: !30)
!27 = !DISubroutineType(types: !28)
!28 = !{!29, !13}
!29 = !DIBasicType(name: "f32", size: 32, encoding: DW_ATE_float)
!30 = !{!31}
!31 = !DILocalVariable(name: "h", arg: 1, scope: !26, file: !5, line: 2201, type: !13)
!32 = !{}
!33 = !DILocation(line: 2201, column: 34, scope: !26)
!34 = !DILocation(line: 2202, column: 5, scope: !26)
!35 = !DILocation(line: 2203, column: 2, scope: !26)
!36 = distinct !DISubprogram(name: "half2float", linkageName: "_ZN14half2float_lib3src3lib10half2float17hc6360e86f9d3f1ceE", scope: !2, file: !5, line: 2193, type: !27, scopeLine: 2193, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !19, templateParams: !32, retainedNodes: !37)
!37 = !{!38, !39, !42, !44}
!38 = !DILocalVariable(name: "h", arg: 1, scope: !36, file: !5, line: 2193, type: !13)
!39 = !DILocalVariable(name: "n", scope: !40, file: !5, line: 2194, type: !41, align: 8)
!40 = distinct !DILexicalBlock(scope: !36, file: !5, line: 2194, column: 5)
!41 = !DIBasicType(name: "usize", size: 64, encoding: DW_ATE_unsigned)
!42 = !DILocalVariable(name: "mantissa_index", scope: !43, file: !5, line: 2195, type: !41, align: 8)
!43 = distinct !DILexicalBlock(scope: !40, file: !5, line: 2195, column: 5)
!44 = !DILocalVariable(name: "bits", scope: !45, file: !5, line: 2196, type: !7, align: 4)
!45 = distinct !DILexicalBlock(scope: !43, file: !5, line: 2196, column: 5)
!46 = !DILocation(line: 2193, column: 30, scope: !36)
!47 = !DILocation(line: 2194, column: 13, scope: !36)
!48 = !DILocation(line: 2194, column: 9, scope: !40)
!49 = !DILocation(line: 2195, column: 27, scope: !40)
!50 = !DILocation(line: 2195, column: 26, scope: !40)
!51 = !DILocation(line: 2195, column: 53, scope: !40)
!52 = !DILocation(line: 2195, column: 52, scope: !40)
!53 = !DILocation(line: 2195, column: 9, scope: !43)
!54 = !DILocation(line: 2196, column: 16, scope: !43)
!55 = !DILocation(line: 2196, column: 56, scope: !43)
!56 = !DILocalVariable(name: "self", arg: 1, scope: !57, file: !58, line: 1188, type: !7)
!57 = distinct !DISubprogram(name: "wrapping_add", linkageName: "_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_add17ha47a709bc54d730dE", scope: !59, file: !58, line: 1188, type: !62, scopeLine: 1188, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !19, templateParams: !32, retainedNodes: !64)
!58 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/num/uint_macros.rs", directory: "", checksumkind: CSK_MD5, checksum: "b2a733f80e3cd43066f918bdafc87bd0")
!59 = !DINamespace(name: "{impl#8}", scope: !60)
!60 = !DINamespace(name: "num", scope: !61)
!61 = !DINamespace(name: "core", scope: null)
!62 = !DISubroutineType(types: !63)
!63 = !{!7, !7, !7}
!64 = !{!56, !65}
!65 = !DILocalVariable(name: "rhs", arg: 2, scope: !57, file: !58, line: 1188, type: !7)
!66 = !DILocation(line: 1188, column: 35, scope: !57, inlinedAt: !67)
!67 = distinct !DILocation(line: 2196, column: 16, scope: !43)
!68 = !DILocation(line: 1188, column: 41, scope: !57, inlinedAt: !67)
!69 = !DILocation(line: 1189, column: 13, scope: !57, inlinedAt: !67)
!70 = !DILocation(line: 2196, column: 9, scope: !45)
!71 = !DILocation(line: 2197, column: 5, scope: !45)
!72 = !DILocation(line: 2198, column: 2, scope: !36)
!73 = distinct !DISubprogram(name: "from_bits", linkageName: "_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17hf9780703a78310c3E", scope: !75, file: !74, line: 1088, type: !77, scopeLine: 1088, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !19, templateParams: !32, retainedNodes: !79)
!74 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/num/f32.rs", directory: "", checksumkind: CSK_MD5, checksum: "1164a9ceed8d542109bde0277f15bb37")
!75 = !DINamespace(name: "{impl#0}", scope: !76)
!76 = !DINamespace(name: "f32", scope: !61)
!77 = !DISubroutineType(types: !78)
!78 = !{!29, !7}
!79 = !{!80}
!80 = !DILocalVariable(name: "v", arg: 1, scope: !73, file: !74, line: 1088, type: !7)
!81 = !DILocation(line: 1088, column: 28, scope: !73)
!82 = !DILocation(line: 1137, column: 48, scope: !73)
!83 = !DILocation(line: 1137, column: 18, scope: !73)
!84 = !DILocalVariable(name: "x", arg: 1, scope: !85, file: !74, line: 1130, type: !7)
!85 = distinct !DISubprogram(name: "rt_u32_to_f32", linkageName: "_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits13rt_u32_to_f3217h0c6ef5d5083740aaE", scope: !86, file: !74, line: 1130, type: !77, scopeLine: 1130, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !19, templateParams: !32, retainedNodes: !87)
!86 = !DINamespace(name: "from_bits", scope: !75)
!87 = !{!84}
!88 = !DILocation(line: 1130, column: 26, scope: !85, inlinedAt: !83)
!89 = !DILocation(line: 1134, column: 22, scope: !85, inlinedAt: !83)
!90 = !DILocation(line: 1138, column: 6, scope: !73)
!91 = distinct !DISubprogram(name: "run_test_1", scope: !2, file: !5, line: 2206, type: !92, scopeLine: 2206, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, templateParams: !32, retainedNodes: !95)
!92 = !DISubroutineType(types: !93)
!93 = !{!94}
!94 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!95 = !{!96, !98, !100}
!96 = !DILocalVariable(name: "h", scope: !97, file: !5, line: 2207, type: !13, align: 2)
!97 = distinct !DILexicalBlock(scope: !91, file: !5, line: 2207, column: 5)
!98 = !DILocalVariable(name: "result", scope: !99, file: !5, line: 2208, type: !29, align: 4)
!99 = distinct !DILexicalBlock(scope: !97, file: !5, line: 2208, column: 5)
!100 = !DILocalVariable(name: "expected", scope: !101, file: !5, line: 2209, type: !29, align: 4)
!101 = distinct !DILexicalBlock(scope: !99, file: !5, line: 2209, column: 5)
!102 = !DILocation(line: 2207, column: 18, scope: !91)
!103 = !DILocation(line: 2207, column: 9, scope: !97)
!104 = !DILocation(line: 2208, column: 18, scope: !97)
!105 = !DILocation(line: 2208, column: 9, scope: !99)
!106 = !DILocation(line: 2209, column: 20, scope: !99)
!107 = !DILocation(line: 2209, column: 9, scope: !101)
!108 = !DILocation(line: 2210, column: 5, scope: !101)
!109 = !DILocation(line: 2210, column: 25, scope: !101)
!110 = !DILocation(line: 2211, column: 2, scope: !91)
!111 = distinct !DISubprogram(name: "to_bits", linkageName: "_ZN4core3f3221_$LT$impl$u20$f32$GT$7to_bits17h7da1bf791101da05E", scope: !75, file: !74, line: 998, type: !112, scopeLine: 998, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !19, templateParams: !32, retainedNodes: !114)
!112 = !DISubroutineType(types: !113)
!113 = !{!7, !29}
!114 = !{!115}
!115 = !DILocalVariable(name: "self", arg: 1, scope: !111, file: !74, line: 998, type: !29)
!116 = !DILocation(line: 998, column: 26, scope: !111)
!117 = !DILocation(line: 1045, column: 48, scope: !111)
!118 = !DILocation(line: 1045, column: 18, scope: !111)
!119 = !DILocalVariable(name: "x", arg: 1, scope: !120, file: !74, line: 1038, type: !29)
!120 = distinct !DISubprogram(name: "rt_f32_to_u32", linkageName: "_ZN4core3f3221_$LT$impl$u20$f32$GT$7to_bits13rt_f32_to_u3217hf1ecbe9db85e8e74E", scope: !121, file: !74, line: 1038, type: !112, scopeLine: 1038, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !19, templateParams: !32, retainedNodes: !122)
!121 = !DINamespace(name: "to_bits", scope: !75)
!122 = !{!119}
!123 = !DILocation(line: 1038, column: 26, scope: !120, inlinedAt: !118)
!124 = !DILocation(line: 1042, column: 22, scope: !120, inlinedAt: !118)
!125 = !DILocation(line: 1046, column: 6, scope: !111)
!126 = distinct !DISubprogram(name: "run_test_2", scope: !2, file: !5, line: 2214, type: !92, scopeLine: 2214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, templateParams: !32, retainedNodes: !127)
!127 = !{!128, !130, !132}
!128 = !DILocalVariable(name: "h", scope: !129, file: !5, line: 2215, type: !13, align: 2)
!129 = distinct !DILexicalBlock(scope: !126, file: !5, line: 2215, column: 5)
!130 = !DILocalVariable(name: "result", scope: !131, file: !5, line: 2216, type: !29, align: 4)
!131 = distinct !DILexicalBlock(scope: !129, file: !5, line: 2216, column: 5)
!132 = !DILocalVariable(name: "expected", scope: !133, file: !5, line: 2217, type: !29, align: 4)
!133 = distinct !DILexicalBlock(scope: !131, file: !5, line: 2217, column: 5)
!134 = !DILocation(line: 2215, column: 18, scope: !126)
!135 = !DILocation(line: 2215, column: 9, scope: !129)
!136 = !DILocation(line: 2216, column: 18, scope: !129)
!137 = !DILocation(line: 2216, column: 9, scope: !131)
!138 = !DILocation(line: 2217, column: 20, scope: !131)
!139 = !DILocation(line: 2217, column: 9, scope: !133)
!140 = !DILocation(line: 2218, column: 5, scope: !133)
!141 = !DILocation(line: 2218, column: 25, scope: !133)
!142 = !DILocation(line: 2219, column: 2, scope: !126)
!143 = distinct !DISubprogram(name: "run_test_3", scope: !2, file: !5, line: 2222, type: !92, scopeLine: 2222, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, templateParams: !32, retainedNodes: !144)
!144 = !{!145, !147, !149}
!145 = !DILocalVariable(name: "h", scope: !146, file: !5, line: 2223, type: !13, align: 2)
!146 = distinct !DILexicalBlock(scope: !143, file: !5, line: 2223, column: 5)
!147 = !DILocalVariable(name: "result", scope: !148, file: !5, line: 2224, type: !29, align: 4)
!148 = distinct !DILexicalBlock(scope: !146, file: !5, line: 2224, column: 5)
!149 = !DILocalVariable(name: "expected", scope: !150, file: !5, line: 2225, type: !29, align: 4)
!150 = distinct !DILexicalBlock(scope: !148, file: !5, line: 2225, column: 5)
!151 = !DILocation(line: 2223, column: 18, scope: !143)
!152 = !DILocation(line: 2223, column: 9, scope: !146)
!153 = !DILocation(line: 2224, column: 18, scope: !146)
!154 = !DILocation(line: 2224, column: 9, scope: !148)
!155 = !DILocation(line: 2225, column: 20, scope: !148)
!156 = !DILocation(line: 2225, column: 9, scope: !150)
!157 = !DILocation(line: 2226, column: 5, scope: !150)
!158 = !DILocation(line: 2226, column: 25, scope: !150)
!159 = !DILocation(line: 2227, column: 2, scope: !143)
!160 = distinct !DISubprogram(name: "run_test_4", scope: !2, file: !5, line: 2230, type: !92, scopeLine: 2230, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, templateParams: !32, retainedNodes: !161)
!161 = !{!162, !164, !166}
!162 = !DILocalVariable(name: "h", scope: !163, file: !5, line: 2231, type: !13, align: 2)
!163 = distinct !DILexicalBlock(scope: !160, file: !5, line: 2231, column: 5)
!164 = !DILocalVariable(name: "result", scope: !165, file: !5, line: 2232, type: !29, align: 4)
!165 = distinct !DILexicalBlock(scope: !163, file: !5, line: 2232, column: 5)
!166 = !DILocalVariable(name: "expected", scope: !167, file: !5, line: 2233, type: !29, align: 4)
!167 = distinct !DILexicalBlock(scope: !165, file: !5, line: 2233, column: 5)
!168 = !DILocation(line: 2231, column: 18, scope: !160)
!169 = !DILocation(line: 2231, column: 9, scope: !163)
!170 = !DILocation(line: 2232, column: 18, scope: !163)
!171 = !DILocation(line: 2232, column: 9, scope: !165)
!172 = !DILocation(line: 2233, column: 20, scope: !165)
!173 = !DILocation(line: 2233, column: 9, scope: !167)
!174 = !DILocation(line: 2234, column: 5, scope: !167)
!175 = !DILocation(line: 2234, column: 25, scope: !167)
!176 = !DILocation(line: 2235, column: 2, scope: !160)
!177 = distinct !DISubprogram(name: "run_test_5", scope: !2, file: !5, line: 2238, type: !92, scopeLine: 2238, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, templateParams: !32, retainedNodes: !178)
!178 = !{!179, !181, !183}
!179 = !DILocalVariable(name: "h", scope: !180, file: !5, line: 2239, type: !13, align: 2)
!180 = distinct !DILexicalBlock(scope: !177, file: !5, line: 2239, column: 5)
!181 = !DILocalVariable(name: "result", scope: !182, file: !5, line: 2240, type: !29, align: 4)
!182 = distinct !DILexicalBlock(scope: !180, file: !5, line: 2240, column: 5)
!183 = !DILocalVariable(name: "expected", scope: !184, file: !5, line: 2241, type: !29, align: 4)
!184 = distinct !DILexicalBlock(scope: !182, file: !5, line: 2241, column: 5)
!185 = !DILocation(line: 2239, column: 18, scope: !177)
!186 = !DILocation(line: 2239, column: 9, scope: !180)
!187 = !DILocation(line: 2240, column: 18, scope: !180)
!188 = !DILocation(line: 2240, column: 9, scope: !182)
!189 = !DILocation(line: 2241, column: 20, scope: !182)
!190 = !DILocation(line: 2241, column: 9, scope: !184)
!191 = !DILocation(line: 2242, column: 5, scope: !184)
!192 = !DILocation(line: 2242, column: 25, scope: !184)
!193 = !DILocation(line: 2243, column: 2, scope: !177)
