; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; ASSERT EQ: i1 1 = call i1 @run_test_1()
; ASSERT EQ: i1 1 = call i1 @run_test_2()
; ASSERT EQ: i1 1 = call i1 @run_test_3()
; ASSERT EQ: i1 1 = call i1 @run_test_4()
; ASSERT EQ: i1 1 = call i1 @run_test_5()

%"core::ptr::metadata::PtrRepr<[src::lib::SpritebatchSpriteT]>" = type { [2 x i64] }

@alloc_f5ffd2fd1476bab43ad89fb40c72d0c5 = private unnamed_addr constant <{ [10 x i8] }> <{ [10 x i8] c"src/lib.rs" }>, align 1
@alloc_0716236bf008dfd9e3e82df2c9ed2564 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00)\00\00\00D\00\00\00" }>, align 8
@alloc_2f4f9e7b1263304f4c22dadc7d99c644 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00)\00\00\00K\00\00\00" }>, align 8
@alloc_8875aa3007cfceead63e739e89fe7c00 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00+\00\00\00\14\00\00\00" }>, align 8
@alloc_23f06a3d884e9f9603c8ec551c9b5bb1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00+\00\00\00\0D\00\00\00" }>, align 8
@alloc_8ca925b6c3c7ad5ed756ca87afbcf6e9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00,\00\00\00\0D\00\00\00" }>, align 8
@str.0 = internal constant [28 x i8] c"attempt to add with overflow"
@alloc_d749acd9627e3172d9d9f3ef92f26006 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00.\00\00\00\14\00\00\00" }>, align 8
@alloc_f2b696695c3f0a666e5107c7f9562b39 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00.\00\00\00\0D\00\00\00" }>, align 8
@alloc_f2ea8f6ab17ee7291090aee92891a102 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00/\00\00\00\0D\00\00\00" }>, align 8
@alloc_39be42af0d12b528896e2d6fb718dbfa = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\001\00\00\00\09\00\00\00" }>, align 8
@alloc_97d2b9d63cf6606babed8a13f3b05b84 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00:\00\00\00\08\00\00\00" }>, align 8
@str.1 = internal constant [33 x i8] c"attempt to subtract with overflow"
@alloc_1191ed37dc5753d61cf2b80434807e15 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00=\00\00\00\11\00\00\00" }>, align 8
@alloc_21092a9a4c33962618b9daa6b75832eb = private unnamed_addr constant <{ [33 x i8] }> <{ [33 x i8] c"assertion failed: a.len() >= size" }>, align 1
@alloc_9a9281dff9a5a564d8c070674eaa3c18 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00H\00\00\00\05\00\00\00" }>, align 8
@alloc_3d2ef033057e9d78826e545fbcd529de = private unnamed_addr constant <{ [33 x i8] }> <{ [33 x i8] c"assertion failed: b.len() >= size" }>, align 1
@alloc_5b2e7ff0fe4c25b6ff6c6e47528d35b0 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00I\00\00\00\05\00\00\00" }>, align 8
@alloc_f30d11f348ddbc2bae56ebf03a250c47 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00K\00\00\00\05\00\00\00" }>, align 8
@alloc_efa99efa68d8851aa18301ed2a9e07f9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00K\00\00\00 \00\00\00" }>, align 8
@alloc_51a9f03fb1d6c0098c1ddaf8988be6b1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00K\00\00\00\0F\00\00\00" }>, align 8
@alloc_3bcbaecadfc8333a3eab3599024ec9af = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00L\00\00\002\00\00\00" }>, align 8
@alloc_4b3c613ae76a338e6329e066a45da1b7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00L\00\00\00K\00\00\00" }>, align 8
@alloc_daa6d0061aab628987ecb672d69b485d = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00|\00\00\00\0C\00\00\00" }>, align 8
@alloc_75959f57b54d7afcfdb856c3b007cebd = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00|\00\00\00\1F\00\00\00" }>, align 8
@alloc_58f2721dc6a87876aab3e1031a557b69 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00|\00\00\00;\00\00\00" }>, align 8
@alloc_c96ec0e1194378f1c771b6ff83e8d0c9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00|\00\00\00M\00\00\00" }>, align 8
@alloc_de2c781116b2607ae834123c19f2ae2d = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\7F\00\00\00\0C\00\00\00" }>, align 8
@alloc_55265e5aadf02bbdeec945ee3f0a3e30 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\7F\00\00\00\1F\00\00\00" }>, align 8
@alloc_c3ec45baeea36c706c436445618b22ed = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\7F\00\00\00;\00\00\00" }>, align 8
@alloc_88f318adb67cbff71f976f197b58214c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\7F\00\00\00M\00\00\00" }>, align 8
@alloc_caf1d5f26039f3acf8baf49fc24418cc = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\B2\00\00\00\0C\00\00\00" }>, align 8
@alloc_2eff58e5948ef50df910e0170ace8054 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\B2\00\00\00\1F\00\00\00" }>, align 8
@alloc_cd537a2a236de58e02d2fd7002459d83 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\B2\00\00\00;\00\00\00" }>, align 8
@alloc_7d10da694911bd6794d5c5a8bde2c6b3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\B2\00\00\00M\00\00\00" }>, align 8
@alloc_c91546f8b76b1c2e0c5bd511f8c917f9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\B5\00\00\00\0C\00\00\00" }>, align 8
@alloc_47b4105c0c4ecaac993a232f455fd206 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\B5\00\00\00\1F\00\00\00" }>, align 8
@alloc_78591ffaa67e9d8cca926aaf21af1da6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\B5\00\00\00;\00\00\00" }>, align 8
@alloc_2351454c164546c6f318f8437a585e54 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\B5\00\00\00M\00\00\00" }>, align 8
@alloc_3058c700e64d44ea2b3f0f0d0211c2d5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\DD\00\00\00\0C\00\00\00" }>, align 8
@alloc_6766ab5217a5330301fe1d614447f7f5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\DD\00\00\00\1F\00\00\00" }>, align 8
@alloc_c20feff762f3a60975ba146b96e98390 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\DD\00\00\00;\00\00\00" }>, align 8
@alloc_cabd1938fdfa0e70adb9498a7040b2fa = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\DD\00\00\00M\00\00\00" }>, align 8
@alloc_7b20bd8eab53e01e182e780c986e4c42 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\E0\00\00\00\0C\00\00\00" }>, align 8
@alloc_af22ac31d7907a3e6a596ab0da0a2d8b = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\E0\00\00\00\1F\00\00\00" }>, align 8
@alloc_e2ccb2ec52c18962f6db3ff72e094f3b = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\E0\00\00\00;\00\00\00" }>, align 8
@alloc_a9bdb7c1aaa460f1f80153ea471f68e2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\E0\00\00\00M\00\00\00" }>, align 8
@alloc_3ae9a56f68c27633a857d0e60283b578 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\005\01\00\00\0C\00\00\00" }>, align 8
@alloc_a3c1806865102b3269a585ff4f7fd097 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\005\01\00\00\1F\00\00\00" }>, align 8
@alloc_fb9c2d5397a263ccbe8d1c9372a99860 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\005\01\00\00;\00\00\00" }>, align 8
@alloc_f58d7ee267464a2d6fd0e0da1a98e9b8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\005\01\00\00M\00\00\00" }>, align 8
@alloc_f046352647fcff5ec0f1ffcff9b926d3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\008\01\00\00\0C\00\00\00" }>, align 8
@alloc_359bb44c754a340398eaf1100f1ed852 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\008\01\00\00\1F\00\00\00" }>, align 8
@alloc_f05bc66f8941a71ab3b5ddbf88b4793a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\008\01\00\00;\00\00\00" }>, align 8
@alloc_8b564a105a0cb2786961edd9b6173103 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\008\01\00\00M\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define void @merge_sort(ptr %a, ptr %b, i32 %size) unnamed_addr #0 !dbg !6 {
start:
  %b.dbg.spill2 = alloca { ptr, i64 }, align 8
  %a.dbg.spill1 = alloca { ptr, i64 }, align 8
  %len.dbg.spill = alloca i64, align 8
  %size.dbg.spill = alloca i32, align 4
  %b.dbg.spill = alloca ptr, align 8
  %a.dbg.spill = alloca ptr, align 8
  store ptr %a, ptr %a.dbg.spill, align 8
    #dbg_declare(ptr %a.dbg.spill, !23, !DIExpression(), !38)
  store ptr %b, ptr %b.dbg.spill, align 8
    #dbg_declare(ptr %b.dbg.spill, !24, !DIExpression(), !39)
  store i32 %size, ptr %size.dbg.spill, align 4
    #dbg_declare(ptr %size.dbg.spill, !25, !DIExpression(), !40)
  %len = sext i32 %size to i64, !dbg !41
  store i64 %len, ptr %len.dbg.spill, align 8, !dbg !41
    #dbg_declare(ptr %len.dbg.spill, !26, !DIExpression(), !42)
  %0 = call { ptr, i64 } @_ZN4core5slice3raw18from_raw_parts_mut17h17e023de62a3344eE(ptr %a, i64 %len), !dbg !43
  %a.0 = extractvalue { ptr, i64 } %0, 0, !dbg !43
  %a.1 = extractvalue { ptr, i64 } %0, 1, !dbg !43
  %1 = getelementptr inbounds { ptr, i64 }, ptr %a.dbg.spill1, i32 0, i32 0, !dbg !43
  store ptr %a.0, ptr %1, align 8, !dbg !43
  %2 = getelementptr inbounds { ptr, i64 }, ptr %a.dbg.spill1, i32 0, i32 1, !dbg !43
  store i64 %a.1, ptr %2, align 8, !dbg !43
    #dbg_declare(ptr %a.dbg.spill1, !29, !DIExpression(), !44)
  %3 = call { ptr, i64 } @_ZN4core5slice3raw18from_raw_parts_mut17h17e023de62a3344eE(ptr %b, i64 %len), !dbg !45
  %b.0 = extractvalue { ptr, i64 } %3, 0, !dbg !45
  %b.1 = extractvalue { ptr, i64 } %3, 1, !dbg !45
  %4 = getelementptr inbounds { ptr, i64 }, ptr %b.dbg.spill2, i32 0, i32 0, !dbg !45
  store ptr %b.0, ptr %4, align 8, !dbg !45
  %5 = getelementptr inbounds { ptr, i64 }, ptr %b.dbg.spill2, i32 0, i32 1, !dbg !45
  store i64 %b.1, ptr %5, align 8, !dbg !45
    #dbg_declare(ptr %b.dbg.spill2, !36, !DIExpression(), !46)
  call void @_ZN14merge_sort_lib3src3lib10merge_sort17h3b79dbc282c3e14bE(ptr align 8 %a.0, i64 %a.1, ptr align 8 %b.0, i64 %b.1, i32 %size), !dbg !47
  ret void, !dbg !48
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @_ZN4core5slice3raw18from_raw_parts_mut17h17e023de62a3344eE(ptr %data, i64 %len) unnamed_addr #1 !dbg !49 {
start:
  %data_address.dbg.spill = alloca ptr, align 8
  %len.dbg.spill = alloca i64, align 8
  %data.dbg.spill = alloca ptr, align 8
  %_8 = alloca { ptr, i64 }, align 8
  %_7 = alloca %"core::ptr::metadata::PtrRepr<[src::lib::SpritebatchSpriteT]>", align 8
  store ptr %data, ptr %data.dbg.spill, align 8
    #dbg_declare(ptr %data.dbg.spill, !57, !DIExpression(), !61)
    #dbg_declare(ptr %data.dbg.spill, !62, !DIExpression(), !74)
    #dbg_declare(ptr %data.dbg.spill, !76, !DIExpression(), !88)
  store i64 %len, ptr %len.dbg.spill, align 8
    #dbg_declare(ptr %len.dbg.spill, !58, !DIExpression(), !90)
    #dbg_declare(ptr %len.dbg.spill, !73, !DIExpression(), !91)
    #dbg_declare(ptr %len.dbg.spill, !92, !DIExpression(), !100)
  store ptr %data, ptr %data_address.dbg.spill, align 8, !dbg !102
    #dbg_declare(ptr %data_address.dbg.spill, !99, !DIExpression(), !103)
  store ptr %data, ptr %_8, align 8, !dbg !104
  %0 = getelementptr inbounds { ptr, i64 }, ptr %_8, i32 0, i32 1, !dbg !104
  store i64 %len, ptr %0, align 8, !dbg !104
  %1 = getelementptr inbounds { ptr, i64 }, ptr %_8, i32 0, i32 0, !dbg !105
  %2 = load ptr, ptr %1, align 8, !dbg !105, !noundef !21
  %3 = getelementptr inbounds { ptr, i64 }, ptr %_8, i32 0, i32 1, !dbg !105
  %4 = load i64, ptr %3, align 8, !dbg !105, !noundef !21
  %5 = getelementptr inbounds { ptr, i64 }, ptr %_7, i32 0, i32 0, !dbg !105
  store ptr %2, ptr %5, align 8, !dbg !105
  %6 = getelementptr inbounds { ptr, i64 }, ptr %_7, i32 0, i32 1, !dbg !105
  store i64 %4, ptr %6, align 8, !dbg !105
  %7 = getelementptr inbounds { ptr, i64 }, ptr %_7, i32 0, i32 0, !dbg !105
  %_3.0 = load ptr, ptr %7, align 8, !dbg !105, !noundef !21
  %8 = getelementptr inbounds { ptr, i64 }, ptr %_7, i32 0, i32 1, !dbg !105
  %_3.1 = load i64, ptr %8, align 8, !dbg !105, !noundef !21
  %9 = insertvalue { ptr, i64 } poison, ptr %_3.0, 0, !dbg !106
  %10 = insertvalue { ptr, i64 } %9, i64 %_3.1, 1, !dbg !106
  ret { ptr, i64 } %10, !dbg !106
}

; Function Attrs: nonlazybind uwtable
define internal void @_ZN14merge_sort_lib3src3lib10merge_sort17h3b79dbc282c3e14bE(ptr align 8 %a.0, i64 %a.1, ptr align 8 %b.0, i64 %b.1, i32 %size) unnamed_addr #0 !dbg !107 {
start:
  %size.dbg.spill2 = alloca i64, align 8
  %size.dbg.spill = alloca i32, align 4
  %b.dbg.spill = alloca { ptr, i64 }, align 8
  %a.dbg.spill = alloca { ptr, i64 }, align 8
  %_29 = alloca i64, align 8
  %_26 = alloca i64, align 8
  %_22 = alloca i64, align 8
  %_18 = alloca i64, align 8
  %0 = getelementptr inbounds { ptr, i64 }, ptr %a.dbg.spill, i32 0, i32 0
  store ptr %a.0, ptr %0, align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %a.dbg.spill, i32 0, i32 1
  store i64 %a.1, ptr %1, align 8
    #dbg_declare(ptr %a.dbg.spill, !111, !DIExpression(), !116)
  %2 = getelementptr inbounds { ptr, i64 }, ptr %b.dbg.spill, i32 0, i32 0
  store ptr %b.0, ptr %2, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %b.dbg.spill, i32 0, i32 1
  store i64 %b.1, ptr %3, align 8
    #dbg_declare(ptr %b.dbg.spill, !112, !DIExpression(), !117)
  store i32 %size, ptr %size.dbg.spill, align 4
    #dbg_declare(ptr %size.dbg.spill, !113, !DIExpression(), !118)
  %size1 = sext i32 %size to i64, !dbg !119
  store i64 %size1, ptr %size.dbg.spill2, align 8, !dbg !119
    #dbg_declare(ptr %size.dbg.spill2, !114, !DIExpression(), !120)
  %_6 = icmp uge i64 %a.1, %size1, !dbg !121
  %_5 = xor i1 %_6, true, !dbg !122
  br i1 %_5, label %bb1, label %bb2, !dbg !122

bb2:                                              ; preds = %start
  %_11 = icmp uge i64 %b.1, %size1, !dbg !123
  %_10 = xor i1 %_11, true, !dbg !124
  br i1 %_10, label %bb3, label %bb4, !dbg !124

bb1:                                              ; preds = %start
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @alloc_21092a9a4c33962618b9daa6b75832eb, i64 33, ptr align 8 @alloc_9a9281dff9a5a564d8c070674eaa3c18) #6, !dbg !122
  unreachable, !dbg !122

bb4:                                              ; preds = %bb2
  store i64 %size1, ptr %_18, align 8, !dbg !125
  %4 = load i64, ptr %_18, align 8, !dbg !126, !noundef !21
  %5 = call { ptr, i64 } @"_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h8d9940a6045321a0E"(ptr align 8 %b.0, i64 %b.1, i64 %4, ptr align 8 @alloc_f30d11f348ddbc2bae56ebf03a250c47), !dbg !126
  %_17.0 = extractvalue { ptr, i64 } %5, 0, !dbg !126
  %_17.1 = extractvalue { ptr, i64 } %5, 1, !dbg !126
  store i64 %size1, ptr %_22, align 8, !dbg !127
  %6 = load i64, ptr %_22, align 8, !dbg !128, !noundef !21
  %7 = call { ptr, i64 } @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h5568de0b1ac72d4aE"(ptr align 8 %a.0, i64 %a.1, i64 %6, ptr align 8 @alloc_efa99efa68d8851aa18301ed2a9e07f9), !dbg !128
  %_20.0 = extractvalue { ptr, i64 } %7, 0, !dbg !128
  %_20.1 = extractvalue { ptr, i64 } %7, 1, !dbg !128
  call void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h079f5725ca44250fE"(ptr align 8 %_17.0, i64 %_17.1, ptr align 8 %_20.0, i64 %_20.1, ptr align 8 @alloc_51a9f03fb1d6c0098c1ddaf8988be6b1), !dbg !126
  store i64 %size1, ptr %_26, align 8, !dbg !129
  %8 = load i64, ptr %_26, align 8, !dbg !130, !noundef !21
  %9 = call { ptr, i64 } @"_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h8d9940a6045321a0E"(ptr align 8 %b.0, i64 %b.1, i64 %8, ptr align 8 @alloc_3bcbaecadfc8333a3eab3599024ec9af), !dbg !130
  %_25.0 = extractvalue { ptr, i64 } %9, 0, !dbg !130
  %_25.1 = extractvalue { ptr, i64 } %9, 1, !dbg !130
  store i64 %size1, ptr %_29, align 8, !dbg !131
  %10 = load i64, ptr %_29, align 8, !dbg !132, !noundef !21
  %11 = call { ptr, i64 } @"_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h8d9940a6045321a0E"(ptr align 8 %a.0, i64 %a.1, i64 %10, ptr align 8 @alloc_4b3c613ae76a338e6329e066a45da1b7), !dbg !132
  %_28.0 = extractvalue { ptr, i64 } %11, 0, !dbg !132
  %_28.1 = extractvalue { ptr, i64 } %11, 1, !dbg !132
  call void @_ZN14merge_sort_lib3src3lib39spritebatch_internal_merge_sort_recurse17hdb290813fcbf0615E(ptr align 8 %_25.0, i64 %_25.1, i64 0, i64 %size1, ptr align 8 %_28.0, i64 %_28.1), !dbg !133
  ret void, !dbg !134

bb3:                                              ; preds = %bb2
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @alloc_3d2ef033057e9d78826e545fbcd529de, i64 33, ptr align 8 @alloc_5b2e7ff0fe4c25b6ff6c6e47528d35b0) #6, !dbg !124
  unreachable, !dbg !124
}

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1, i64, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @"_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h8d9940a6045321a0E"(ptr align 8 %self.0, i64 %self.1, i64 %index, ptr align 8 %0) unnamed_addr #1 !dbg !135 {
start:
  %index.dbg.spill = alloca i64, align 8
  %self.dbg.spill = alloca { ptr, i64 }, align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill, i32 0, i32 0
  store ptr %self.0, ptr %1, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill, i32 0, i32 1
  store i64 %self.1, ptr %2, align 8
    #dbg_declare(ptr %self.dbg.spill, !164, !DIExpression(), !168)
  store i64 %index, ptr %index.dbg.spill, align 8
    #dbg_declare(ptr %index.dbg.spill, !165, !DIExpression(), !169)
  %3 = call { ptr, i64 } @"_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h40b604b4cd0a83fbE"(i64 %index, ptr align 8 %self.0, i64 %self.1, ptr align 8 %0), !dbg !170
  %_3.0 = extractvalue { ptr, i64 } %3, 0, !dbg !170
  %_3.1 = extractvalue { ptr, i64 } %3, 1, !dbg !170
  %4 = insertvalue { ptr, i64 } poison, ptr %_3.0, 0, !dbg !171
  %5 = insertvalue { ptr, i64 } %4, i64 %_3.1, 1, !dbg !171
  ret { ptr, i64 } %5, !dbg !171
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h5568de0b1ac72d4aE"(ptr align 8 %self.0, i64 %self.1, i64 %index, ptr align 8 %0) unnamed_addr #1 !dbg !172 {
start:
  %index.dbg.spill = alloca i64, align 8
  %self.dbg.spill = alloca { ptr, i64 }, align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill, i32 0, i32 0
  store ptr %self.0, ptr %1, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill, i32 0, i32 1
  store i64 %self.1, ptr %2, align 8
    #dbg_declare(ptr %self.dbg.spill, !181, !DIExpression(), !183)
  store i64 %index, ptr %index.dbg.spill, align 8
    #dbg_declare(ptr %index.dbg.spill, !182, !DIExpression(), !184)
  %3 = call { ptr, i64 } @"_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17ha165e4d880c32e6bE"(i64 %index, ptr align 8 %self.0, i64 %self.1, ptr align 8 %0), !dbg !185
  %4 = extractvalue { ptr, i64 } %3, 0, !dbg !185
  %5 = extractvalue { ptr, i64 } %3, 1, !dbg !185
  %6 = insertvalue { ptr, i64 } poison, ptr %4, 0, !dbg !186
  %7 = insertvalue { ptr, i64 } %6, i64 %5, 1, !dbg !186
  ret { ptr, i64 } %7, !dbg !186
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h079f5725ca44250fE"(ptr align 8 %self.0, i64 %self.1, ptr align 8 %src.0, i64 %src.1, ptr align 8 %0) unnamed_addr #0 !dbg !187 {
start:
  %count.dbg.spill = alloca i64, align 8
  %dst.dbg.spill = alloca ptr, align 8
  %src.dbg.spill1 = alloca ptr, align 8
  %src.dbg.spill = alloca { ptr, i64 }, align 8
  %self.dbg.spill = alloca { ptr, i64 }, align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill, i32 0, i32 0
  store ptr %self.0, ptr %1, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill, i32 0, i32 1
  store i64 %self.1, ptr %2, align 8
    #dbg_declare(ptr %self.dbg.spill, !193, !DIExpression(), !195)
    #dbg_declare(ptr %self.dbg.spill, !196, !DIExpression(), !201)
  %3 = getelementptr inbounds { ptr, i64 }, ptr %src.dbg.spill, i32 0, i32 0
  store ptr %src.0, ptr %3, align 8
  %4 = getelementptr inbounds { ptr, i64 }, ptr %src.dbg.spill, i32 0, i32 1
  store i64 %src.1, ptr %4, align 8
    #dbg_declare(ptr %src.dbg.spill, !194, !DIExpression(), !203)
    #dbg_declare(ptr %src.dbg.spill, !204, !DIExpression(), !210)
  %_3 = icmp ne i64 %self.1, %src.1, !dbg !212
  br i1 %_3, label %bb1, label %bb2, !dbg !212

bb2:                                              ; preds = %start
  store ptr %src.0, ptr %src.dbg.spill1, align 8, !dbg !213
    #dbg_declare(ptr %src.dbg.spill1, !214, !DIExpression(), !223)
  store ptr %self.0, ptr %dst.dbg.spill, align 8, !dbg !225
    #dbg_declare(ptr %dst.dbg.spill, !221, !DIExpression(), !226)
  store i64 %self.1, ptr %count.dbg.spill, align 8, !dbg !227
    #dbg_declare(ptr %count.dbg.spill, !222, !DIExpression(), !228)
  %5 = mul i64 %self.1, 16, !dbg !229
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %self.0, ptr align 8 %src.0, i64 %5, i1 false), !dbg !229
  ret void, !dbg !230

bb1:                                              ; preds = %start
  call void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17he4895f08c4a919b7E"(i64 %self.1, i64 %src.1, ptr align 8 %0) #6, !dbg !231
  unreachable, !dbg !231
}

; Function Attrs: nonlazybind uwtable
define internal void @_ZN14merge_sort_lib3src3lib39spritebatch_internal_merge_sort_recurse17hdb290813fcbf0615E(ptr align 8 %b.0, i64 %b.1, i64 %lo, i64 %hi, ptr align 8 %a.0, i64 %a.1) unnamed_addr #0 !dbg !232 {
start:
  %split.dbg.spill = alloca i64, align 8
  %a.dbg.spill = alloca { ptr, i64 }, align 8
  %hi.dbg.spill = alloca i64, align 8
  %lo.dbg.spill = alloca i64, align 8
  %b.dbg.spill = alloca { ptr, i64 }, align 8
  %0 = getelementptr inbounds { ptr, i64 }, ptr %b.dbg.spill, i32 0, i32 0
  store ptr %b.0, ptr %0, align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %b.dbg.spill, i32 0, i32 1
  store i64 %b.1, ptr %1, align 8
    #dbg_declare(ptr %b.dbg.spill, !236, !DIExpression(), !242)
  store i64 %lo, ptr %lo.dbg.spill, align 8
    #dbg_declare(ptr %lo.dbg.spill, !237, !DIExpression(), !243)
  store i64 %hi, ptr %hi.dbg.spill, align 8
    #dbg_declare(ptr %hi.dbg.spill, !238, !DIExpression(), !244)
  %2 = getelementptr inbounds { ptr, i64 }, ptr %a.dbg.spill, i32 0, i32 0
  store ptr %a.0, ptr %2, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %a.dbg.spill, i32 0, i32 1
  store i64 %a.1, ptr %3, align 8
    #dbg_declare(ptr %a.dbg.spill, !239, !DIExpression(), !245)
  %_7.0 = sub i64 %hi, %lo, !dbg !246
  %_7.1 = icmp ult i64 %hi, %lo, !dbg !246
  %4 = call i1 @llvm.expect.i1(i1 %_7.1, i1 false), !dbg !246
  br i1 %4, label %panic, label %bb1, !dbg !246

bb1:                                              ; preds = %start
  %_5 = icmp ule i64 %_7.0, 1, !dbg !246
  br i1 %_5, label %bb6, label %bb2, !dbg !246

panic:                                            ; preds = %start
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.1, i64 33, ptr align 8 @alloc_97d2b9d63cf6606babed8a13f3b05b84) #6, !dbg !246
  unreachable, !dbg !246

bb2:                                              ; preds = %bb1
  %5 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %lo, i64 %hi), !dbg !247
  %_10.0 = extractvalue { i64, i1 } %5, 0, !dbg !247
  %_10.1 = extractvalue { i64, i1 } %5, 1, !dbg !247
  %6 = call i1 @llvm.expect.i1(i1 %_10.1, i1 false), !dbg !247
  br i1 %6, label %panic1, label %bb3, !dbg !247

bb6:                                              ; preds = %bb3, %bb1
  ret void, !dbg !248

bb3:                                              ; preds = %bb2
  %split = udiv i64 %_10.0, 2, !dbg !247
  store i64 %split, ptr %split.dbg.spill, align 8, !dbg !247
    #dbg_declare(ptr %split.dbg.spill, !240, !DIExpression(), !249)
  call void @_ZN14merge_sort_lib3src3lib39spritebatch_internal_merge_sort_recurse17hdb290813fcbf0615E(ptr align 8 %a.0, i64 %a.1, i64 %lo, i64 %split, ptr align 8 %b.0, i64 %b.1), !dbg !250
  call void @_ZN14merge_sort_lib3src3lib39spritebatch_internal_merge_sort_recurse17hdb290813fcbf0615E(ptr align 8 %a.0, i64 %a.1, i64 %split, i64 %hi, ptr align 8 %b.0, i64 %b.1), !dbg !251
  call void @_ZN14merge_sort_lib3src3lib41spritebatch_internal_merge_sort_iteration17h2e49a6761ad844daE(ptr align 8 %b.0, i64 %b.1, i64 %lo, i64 %split, i64 %hi, ptr align 8 %a.0, i64 %a.1), !dbg !252
  br label %bb6, !dbg !252

panic1:                                           ; preds = %bb2
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.0, i64 28, ptr align 8 @alloc_1191ed37dc5753d61cf2b80434807e15) #6, !dbg !247
  unreachable, !dbg !247
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.expect.i1(i1, i1) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #4

; Function Attrs: nonlazybind uwtable
define internal void @_ZN14merge_sort_lib3src3lib41spritebatch_internal_merge_sort_iteration17h2e49a6761ad844daE(ptr align 8 %a.0, i64 %a.1, i64 %lo, i64 %split, i64 %hi, ptr align 8 %b.0, i64 %b.1) unnamed_addr #0 !dbg !253 {
start:
  %b.dbg.spill = alloca { ptr, i64 }, align 8
  %hi.dbg.spill = alloca i64, align 8
  %split.dbg.spill = alloca i64, align 8
  %lo.dbg.spill = alloca i64, align 8
  %a.dbg.spill = alloca { ptr, i64 }, align 8
  %_14 = alloca i8, align 1
  %_11 = alloca i8, align 1
  %k = alloca i64, align 8
  %j = alloca i64, align 8
  %i = alloca i64, align 8
  %0 = getelementptr inbounds { ptr, i64 }, ptr %a.dbg.spill, i32 0, i32 0
  store ptr %a.0, ptr %0, align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %a.dbg.spill, i32 0, i32 1
  store i64 %a.1, ptr %1, align 8
    #dbg_declare(ptr %a.dbg.spill, !257, !DIExpression(), !268)
  store i64 %lo, ptr %lo.dbg.spill, align 8
    #dbg_declare(ptr %lo.dbg.spill, !258, !DIExpression(), !269)
  store i64 %split, ptr %split.dbg.spill, align 8
    #dbg_declare(ptr %split.dbg.spill, !259, !DIExpression(), !270)
  store i64 %hi, ptr %hi.dbg.spill, align 8
    #dbg_declare(ptr %hi.dbg.spill, !260, !DIExpression(), !271)
  %2 = getelementptr inbounds { ptr, i64 }, ptr %b.dbg.spill, i32 0, i32 0
  store ptr %b.0, ptr %2, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %b.dbg.spill, i32 0, i32 1
  store i64 %b.1, ptr %3, align 8
    #dbg_declare(ptr %b.dbg.spill, !261, !DIExpression(), !272)
    #dbg_declare(ptr %i, !262, !DIExpression(), !273)
    #dbg_declare(ptr %j, !264, !DIExpression(), !274)
    #dbg_declare(ptr %k, !266, !DIExpression(), !275)
  store i64 %lo, ptr %i, align 8, !dbg !276
  store i64 %split, ptr %j, align 8, !dbg !277
  store i64 %lo, ptr %k, align 8, !dbg !278
  br label %bb1, !dbg !279

bb1:                                              ; preds = %bb21, %start
  %_10 = load i64, ptr %k, align 8, !dbg !280, !noundef !21
  %_9 = icmp ult i64 %_10, %hi, !dbg !280
  br i1 %_9, label %bb2, label %bb22, !dbg !280

bb22:                                             ; preds = %bb1
  ret void, !dbg !281

bb2:                                              ; preds = %bb1
  %_13 = load i64, ptr %i, align 8, !dbg !282, !noundef !21
  %_12 = icmp ult i64 %_13, %split, !dbg !282
  br i1 %_12, label %bb4, label %bb3, !dbg !282

bb3:                                              ; preds = %bb2
  store i8 0, ptr %_11, align 1, !dbg !282
  br label %bb5, !dbg !282

bb4:                                              ; preds = %bb2
  %_16 = load i64, ptr %j, align 8, !dbg !283, !noundef !21
  %_15 = icmp uge i64 %_16, %hi, !dbg !283
  br i1 %_15, label %bb6, label %bb7, !dbg !284

bb7:                                              ; preds = %bb4
  %_20 = load i64, ptr %i, align 8, !dbg !285, !noundef !21
  %_22 = icmp ult i64 %_20, %a.1, !dbg !286
  %4 = call i1 @llvm.expect.i1(i1 %_22, i1 true), !dbg !286
  br i1 %4, label %bb9, label %panic, !dbg !286

bb6:                                              ; preds = %bb4
  store i8 1, ptr %_14, align 1, !dbg !284
  br label %bb8, !dbg !284

bb8:                                              ; preds = %bb10, %bb6
  %5 = load i8, ptr %_14, align 1, !dbg !282, !range !287, !noundef !21
  %6 = trunc i8 %5 to i1, !dbg !282
  %7 = zext i1 %6 to i8, !dbg !282
  store i8 %7, ptr %_11, align 1, !dbg !282
  br label %bb5, !dbg !282

bb9:                                              ; preds = %bb7
  %_19 = getelementptr inbounds [0 x { i64, i32 }], ptr %a.0, i64 0, i64 %_20, !dbg !288
  %_24 = load i64, ptr %j, align 8, !dbg !289, !noundef !21
  %_26 = icmp ult i64 %_24, %a.1, !dbg !290
  %8 = call i1 @llvm.expect.i1(i1 %_26, i1 true), !dbg !290
  br i1 %8, label %bb10, label %panic1, !dbg !290

panic:                                            ; preds = %bb7
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %_20, i64 %a.1, ptr align 8 @alloc_0716236bf008dfd9e3e82df2c9ed2564) #6, !dbg !286
  unreachable, !dbg !286

bb10:                                             ; preds = %bb9
  %_23 = getelementptr inbounds [0 x { i64, i32 }], ptr %a.0, i64 0, i64 %_24, !dbg !291
  %_18 = call i32 @_ZN14merge_sort_lib3src3lib46spritebatch_internal_sprite_less_than_or_equal17hfb959c40440efdd8E(ptr align 8 %_19, ptr align 8 %_23), !dbg !292
  %_17 = icmp ne i32 %_18, 0, !dbg !292
  %9 = zext i1 %_17 to i8, !dbg !284
  store i8 %9, ptr %_14, align 1, !dbg !284
  br label %bb8, !dbg !284

panic1:                                           ; preds = %bb9
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %_24, i64 %a.1, ptr align 8 @alloc_2f4f9e7b1263304f4c22dadc7d99c644) #6, !dbg !290
  unreachable, !dbg !290

bb5:                                              ; preds = %bb8, %bb3
  %10 = load i8, ptr %_11, align 1, !dbg !282, !range !287, !noundef !21
  %11 = trunc i8 %10 to i1, !dbg !282
  br i1 %11, label %bb12, label %bb16, !dbg !282

bb16:                                             ; preds = %bb5
  %_36 = load i64, ptr %j, align 8, !dbg !293, !noundef !21
  %_38 = icmp ult i64 %_36, %a.1, !dbg !294
  %12 = call i1 @llvm.expect.i1(i1 %_38, i1 true), !dbg !294
  br i1 %12, label %bb17, label %panic5, !dbg !294

bb12:                                             ; preds = %bb5
  %_28 = load i64, ptr %i, align 8, !dbg !295, !noundef !21
  %_30 = icmp ult i64 %_28, %a.1, !dbg !296
  %13 = call i1 @llvm.expect.i1(i1 %_30, i1 true), !dbg !296
  br i1 %13, label %bb13, label %panic2, !dbg !296

bb13:                                             ; preds = %bb12
  %14 = getelementptr inbounds [0 x { i64, i32 }], ptr %a.0, i64 0, i64 %_28, !dbg !296
  %15 = getelementptr inbounds { i64, i32 }, ptr %14, i32 0, i32 0, !dbg !296
  %_27.0 = load i64, ptr %15, align 8, !dbg !296, !noundef !21
  %16 = getelementptr inbounds { i64, i32 }, ptr %14, i32 0, i32 1, !dbg !296
  %_27.1 = load i32, ptr %16, align 8, !dbg !296, !noundef !21
  %_31 = load i64, ptr %k, align 8, !dbg !297, !noundef !21
  %_33 = icmp ult i64 %_31, %b.1, !dbg !298
  %17 = call i1 @llvm.expect.i1(i1 %_33, i1 true), !dbg !298
  br i1 %17, label %bb14, label %panic3, !dbg !298

panic2:                                           ; preds = %bb12
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %_28, i64 %a.1, ptr align 8 @alloc_8875aa3007cfceead63e739e89fe7c00) #6, !dbg !296
  unreachable, !dbg !296

bb14:                                             ; preds = %bb13
  %18 = getelementptr inbounds [0 x { i64, i32 }], ptr %b.0, i64 0, i64 %_31, !dbg !298
  %19 = getelementptr inbounds { i64, i32 }, ptr %18, i32 0, i32 0, !dbg !298
  store i64 %_27.0, ptr %19, align 8, !dbg !298
  %20 = getelementptr inbounds { i64, i32 }, ptr %18, i32 0, i32 1, !dbg !298
  store i32 %_27.1, ptr %20, align 8, !dbg !298
  %21 = load i64, ptr %i, align 8, !dbg !299, !noundef !21
  %22 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %21, i64 1), !dbg !299
  %_34.0 = extractvalue { i64, i1 } %22, 0, !dbg !299
  %_34.1 = extractvalue { i64, i1 } %22, 1, !dbg !299
  %23 = call i1 @llvm.expect.i1(i1 %_34.1, i1 false), !dbg !299
  br i1 %23, label %panic4, label %bb15, !dbg !299

panic3:                                           ; preds = %bb13
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %_31, i64 %b.1, ptr align 8 @alloc_23f06a3d884e9f9603c8ec551c9b5bb1) #6, !dbg !298
  unreachable, !dbg !298

bb15:                                             ; preds = %bb14
  store i64 %_34.0, ptr %i, align 8, !dbg !299
  br label %bb20, !dbg !300

panic4:                                           ; preds = %bb14
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.0, i64 28, ptr align 8 @alloc_8ca925b6c3c7ad5ed756ca87afbcf6e9) #6, !dbg !299
  unreachable, !dbg !299

bb20:                                             ; preds = %bb19, %bb15
  %24 = load i64, ptr %k, align 8, !dbg !301, !noundef !21
  %25 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %24, i64 1), !dbg !301
  %_43.0 = extractvalue { i64, i1 } %25, 0, !dbg !301
  %_43.1 = extractvalue { i64, i1 } %25, 1, !dbg !301
  %26 = call i1 @llvm.expect.i1(i1 %_43.1, i1 false), !dbg !301
  br i1 %26, label %panic8, label %bb21, !dbg !301

bb17:                                             ; preds = %bb16
  %27 = getelementptr inbounds [0 x { i64, i32 }], ptr %a.0, i64 0, i64 %_36, !dbg !294
  %28 = getelementptr inbounds { i64, i32 }, ptr %27, i32 0, i32 0, !dbg !294
  %_35.0 = load i64, ptr %28, align 8, !dbg !294, !noundef !21
  %29 = getelementptr inbounds { i64, i32 }, ptr %27, i32 0, i32 1, !dbg !294
  %_35.1 = load i32, ptr %29, align 8, !dbg !294, !noundef !21
  %_39 = load i64, ptr %k, align 8, !dbg !302, !noundef !21
  %_41 = icmp ult i64 %_39, %b.1, !dbg !303
  %30 = call i1 @llvm.expect.i1(i1 %_41, i1 true), !dbg !303
  br i1 %30, label %bb18, label %panic6, !dbg !303

panic5:                                           ; preds = %bb16
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %_36, i64 %a.1, ptr align 8 @alloc_d749acd9627e3172d9d9f3ef92f26006) #6, !dbg !294
  unreachable, !dbg !294

bb18:                                             ; preds = %bb17
  %31 = getelementptr inbounds [0 x { i64, i32 }], ptr %b.0, i64 0, i64 %_39, !dbg !303
  %32 = getelementptr inbounds { i64, i32 }, ptr %31, i32 0, i32 0, !dbg !303
  store i64 %_35.0, ptr %32, align 8, !dbg !303
  %33 = getelementptr inbounds { i64, i32 }, ptr %31, i32 0, i32 1, !dbg !303
  store i32 %_35.1, ptr %33, align 8, !dbg !303
  %34 = load i64, ptr %j, align 8, !dbg !304, !noundef !21
  %35 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %34, i64 1), !dbg !304
  %_42.0 = extractvalue { i64, i1 } %35, 0, !dbg !304
  %_42.1 = extractvalue { i64, i1 } %35, 1, !dbg !304
  %36 = call i1 @llvm.expect.i1(i1 %_42.1, i1 false), !dbg !304
  br i1 %36, label %panic7, label %bb19, !dbg !304

panic6:                                           ; preds = %bb17
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %_39, i64 %b.1, ptr align 8 @alloc_f2b696695c3f0a666e5107c7f9562b39) #6, !dbg !303
  unreachable, !dbg !303

bb19:                                             ; preds = %bb18
  store i64 %_42.0, ptr %j, align 8, !dbg !304
  br label %bb20, !dbg !300

panic7:                                           ; preds = %bb18
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.0, i64 28, ptr align 8 @alloc_f2ea8f6ab17ee7291090aee92891a102) #6, !dbg !304
  unreachable, !dbg !304

bb21:                                             ; preds = %bb20
  store i64 %_43.0, ptr %k, align 8, !dbg !301
  br label %bb1, !dbg !279

panic8:                                           ; preds = %bb20
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.0, i64 28, ptr align 8 @alloc_39be42af0d12b528896e2d6fb718dbfa) #6, !dbg !301
  unreachable, !dbg !301
}

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64, i64, ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
define internal i32 @_ZN14merge_sort_lib3src3lib46spritebatch_internal_sprite_less_than_or_equal17hfb959c40440efdd8E(ptr align 8 %a, ptr align 8 %b) unnamed_addr #0 !dbg !305 {
start:
  %b.dbg.spill = alloca ptr, align 8
  %a.dbg.spill = alloca ptr, align 8
  %_6 = alloca i8, align 1
  %0 = alloca i32, align 4
  store ptr %a, ptr %a.dbg.spill, align 8
    #dbg_declare(ptr %a.dbg.spill, !310, !DIExpression(), !312)
  store ptr %b, ptr %b.dbg.spill, align 8
    #dbg_declare(ptr %b.dbg.spill, !311, !DIExpression(), !313)
  %1 = getelementptr inbounds { i64, i32 }, ptr %a, i32 0, i32 1, !dbg !314
  %_4 = load i32, ptr %1, align 8, !dbg !314, !noundef !21
  %2 = getelementptr inbounds { i64, i32 }, ptr %b, i32 0, i32 1, !dbg !315
  %_5 = load i32, ptr %2, align 8, !dbg !315, !noundef !21
  %_3 = icmp sle i32 %_4, %_5, !dbg !314
  br i1 %_3, label %bb1, label %bb2, !dbg !314

bb2:                                              ; preds = %start
  %3 = getelementptr inbounds { i64, i32 }, ptr %a, i32 0, i32 1, !dbg !316
  %_8 = load i32, ptr %3, align 8, !dbg !316, !noundef !21
  %4 = getelementptr inbounds { i64, i32 }, ptr %b, i32 0, i32 1, !dbg !317
  %_9 = load i32, ptr %4, align 8, !dbg !317, !noundef !21
  %_7 = icmp eq i32 %_8, %_9, !dbg !316
  br i1 %_7, label %bb4, label %bb3, !dbg !316

bb1:                                              ; preds = %start
  store i32 1, ptr %0, align 4, !dbg !318
  br label %bb8, !dbg !319

bb8:                                              ; preds = %bb6, %bb7, %bb1
  %5 = load i32, ptr %0, align 4, !dbg !322, !noundef !21
  ret i32 %5, !dbg !322

bb3:                                              ; preds = %bb2
  store i8 0, ptr %_6, align 1, !dbg !316
  br label %bb5, !dbg !316

bb4:                                              ; preds = %bb2
  %_11 = load i64, ptr %a, align 8, !dbg !323, !noundef !21
  %_12 = load i64, ptr %b, align 8, !dbg !324, !noundef !21
  %_10 = icmp ule i64 %_11, %_12, !dbg !323
  %6 = zext i1 %_10 to i8, !dbg !316
  store i8 %6, ptr %_6, align 1, !dbg !316
  br label %bb5, !dbg !316

bb5:                                              ; preds = %bb4, %bb3
  %7 = load i8, ptr %_6, align 1, !dbg !316, !range !287, !noundef !21
  %8 = trunc i8 %7 to i1, !dbg !316
  br i1 %8, label %bb6, label %bb7, !dbg !316

bb7:                                              ; preds = %bb5
  store i32 0, ptr %0, align 4, !dbg !325
  br label %bb8, !dbg !322

bb6:                                              ; preds = %bb5
  store i32 1, ptr %0, align 4, !dbg !326
  br label %bb8, !dbg !319
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17he4895f08c4a919b7E"(i64, i64, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @"_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17ha165e4d880c32e6bE"(i64 %self, ptr align 8 %slice.0, i64 %slice.1, ptr align 8 %0) unnamed_addr #1 !dbg !327 {
start:
  %slice.dbg.spill = alloca { ptr, i64 }, align 8
  %self.dbg.spill = alloca i64, align 8
  %_3 = alloca { i64, i64 }, align 8
  store i64 %self, ptr %self.dbg.spill, align 8
    #dbg_declare(ptr %self.dbg.spill, !332, !DIExpression(), !334)
  %1 = getelementptr inbounds { ptr, i64 }, ptr %slice.dbg.spill, i32 0, i32 0
  store ptr %slice.0, ptr %1, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %slice.dbg.spill, i32 0, i32 1
  store i64 %slice.1, ptr %2, align 8
    #dbg_declare(ptr %slice.dbg.spill, !333, !DIExpression(), !335)
  store i64 0, ptr %_3, align 8, !dbg !336
  %3 = getelementptr inbounds { i64, i64 }, ptr %_3, i32 0, i32 1, !dbg !336
  store i64 %self, ptr %3, align 8, !dbg !336
  %4 = getelementptr inbounds { i64, i64 }, ptr %_3, i32 0, i32 0, !dbg !336
  %5 = load i64, ptr %4, align 8, !dbg !336, !noundef !21
  %6 = getelementptr inbounds { i64, i64 }, ptr %_3, i32 0, i32 1, !dbg !336
  %7 = load i64, ptr %6, align 8, !dbg !336, !noundef !21
  %8 = call { ptr, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17he069b55b4a2976d2E"(i64 %5, i64 %7, ptr align 8 %slice.0, i64 %slice.1, ptr align 8 %0), !dbg !336
  %9 = extractvalue { ptr, i64 } %8, 0, !dbg !336
  %10 = extractvalue { ptr, i64 } %8, 1, !dbg !336
  %11 = insertvalue { ptr, i64 } poison, ptr %9, 0, !dbg !337
  %12 = insertvalue { ptr, i64 } %11, i64 %10, 1, !dbg !337
  ret { ptr, i64 } %12, !dbg !337
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17he069b55b4a2976d2E"(i64 %self.0, i64 %self.1, ptr align 8 %slice.0, i64 %slice.1, ptr align 8 %0) unnamed_addr #1 !dbg !338 {
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
  %_29 = alloca %"core::ptr::metadata::PtrRepr<[src::lib::SpritebatchSpriteT]>", align 8
  %3 = getelementptr inbounds { i64, i64 }, ptr %self.dbg.spill, i32 0, i32 0
  store i64 %self.0, ptr %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, ptr %self.dbg.spill, i32 0, i32 1
  store i64 %self.1, ptr %4, align 8
    #dbg_declare(ptr %self.dbg.spill, !347, !DIExpression(), !349)
    #dbg_declare(ptr %self.dbg.spill, !350, !DIExpression(), !364)
  %5 = getelementptr inbounds { ptr, i64 }, ptr %slice.dbg.spill, i32 0, i32 0
  store ptr %slice.0, ptr %5, align 8
  %6 = getelementptr inbounds { ptr, i64 }, ptr %slice.dbg.spill, i32 0, i32 1
  store i64 %slice.1, ptr %6, align 8
    #dbg_declare(ptr %slice.dbg.spill, !348, !DIExpression(), !366)
  %_3 = icmp ugt i64 %self.0, %self.1, !dbg !367
  br i1 %_3, label %bb1, label %bb2, !dbg !367

bb2:                                              ; preds = %start
  %_9 = icmp ugt i64 %self.1, %slice.1, !dbg !368
  br i1 %_9, label %bb3, label %bb4, !dbg !368

bb1:                                              ; preds = %start
  call void @_ZN4core5slice5index22slice_index_order_fail17h2045503bd7776290E(i64 %self.0, i64 %self.1, ptr align 8 %0) #6, !dbg !369
  unreachable, !dbg !369

bb4:                                              ; preds = %bb2
  %7 = getelementptr inbounds { ptr, i64 }, ptr %slice.dbg.spill1, i32 0, i32 0, !dbg !370
  store ptr %slice.0, ptr %7, align 8, !dbg !370
  %8 = getelementptr inbounds { ptr, i64 }, ptr %slice.dbg.spill1, i32 0, i32 1, !dbg !370
  store i64 %slice.1, ptr %8, align 8, !dbg !370
    #dbg_declare(ptr %slice.dbg.spill1, !359, !DIExpression(), !371)
    #dbg_declare(ptr %slice.dbg.spill1, !372, !DIExpression(), !380)
  %9 = sub nuw i64 %self.1, %self.0, !dbg !382
  store i64 %9, ptr %2, align 8, !dbg !382
  %new_len = load i64, ptr %2, align 8, !dbg !382, !noundef !21
  store i64 %new_len, ptr %new_len.dbg.spill, align 8, !dbg !382
    #dbg_declare(ptr %new_len.dbg.spill, !362, !DIExpression(), !383)
  store ptr %slice.0, ptr %self.dbg.spill2, align 8, !dbg !384
    #dbg_declare(ptr %self.dbg.spill2, !385, !DIExpression(), !392)
    #dbg_declare(ptr %self.dbg.spill2, !394, !DIExpression(), !401)
  store i64 %self.0, ptr %count.dbg.spill, align 8, !dbg !403
    #dbg_declare(ptr %count.dbg.spill, !391, !DIExpression(), !404)
  store i64 %self.0, ptr %count.dbg.spill3, align 8, !dbg !405
    #dbg_declare(ptr %count.dbg.spill3, !400, !DIExpression(), !406)
  %10 = getelementptr inbounds { i64, i32 }, ptr %slice.0, i64 %self.0, !dbg !407
  store ptr %10, ptr %1, align 8, !dbg !407
  %data = load ptr, ptr %1, align 8, !dbg !407, !noundef !21
  store ptr %data, ptr %data.dbg.spill, align 8, !dbg !407
    #dbg_declare(ptr %data.dbg.spill, !408, !DIExpression(), !414)
    #dbg_declare(ptr %data.dbg.spill, !416, !DIExpression(), !422)
  store i64 %new_len, ptr %len.dbg.spill, align 8, !dbg !424
    #dbg_declare(ptr %len.dbg.spill, !413, !DIExpression(), !425)
    #dbg_declare(ptr %len.dbg.spill, !426, !DIExpression(), !432)
  store ptr %data, ptr %data_address.dbg.spill, align 8, !dbg !434
    #dbg_declare(ptr %data_address.dbg.spill, !431, !DIExpression(), !435)
  store ptr %data, ptr %_30, align 8, !dbg !436
  %11 = getelementptr inbounds { ptr, i64 }, ptr %_30, i32 0, i32 1, !dbg !436
  store i64 %new_len, ptr %11, align 8, !dbg !436
  %12 = getelementptr inbounds { ptr, i64 }, ptr %_30, i32 0, i32 0, !dbg !437
  %13 = load ptr, ptr %12, align 8, !dbg !437, !noundef !21
  %14 = getelementptr inbounds { ptr, i64 }, ptr %_30, i32 0, i32 1, !dbg !437
  %15 = load i64, ptr %14, align 8, !dbg !437, !noundef !21
  %16 = getelementptr inbounds { ptr, i64 }, ptr %_29, i32 0, i32 0, !dbg !437
  store ptr %13, ptr %16, align 8, !dbg !437
  %17 = getelementptr inbounds { ptr, i64 }, ptr %_29, i32 0, i32 1, !dbg !437
  store i64 %15, ptr %17, align 8, !dbg !437
  %18 = getelementptr inbounds { ptr, i64 }, ptr %_29, i32 0, i32 0, !dbg !437
  %_15.0 = load ptr, ptr %18, align 8, !dbg !437, !noundef !21
  %19 = getelementptr inbounds { ptr, i64 }, ptr %_29, i32 0, i32 1, !dbg !437
  %_15.1 = load i64, ptr %19, align 8, !dbg !437, !noundef !21
  %20 = insertvalue { ptr, i64 } poison, ptr %_15.0, 0, !dbg !438
  %21 = insertvalue { ptr, i64 } %20, i64 %_15.1, 1, !dbg !438
  ret { ptr, i64 } %21, !dbg !438

bb3:                                              ; preds = %bb2
  call void @_ZN4core5slice5index24slice_end_index_len_fail17h63e54c65524702d3E(i64 %self.1, i64 %slice.1, ptr align 8 %0) #6, !dbg !439
  unreachable, !dbg !439
}

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice5index22slice_index_order_fail17h2045503bd7776290E(i64, i64, ptr align 8) unnamed_addr #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice5index24slice_end_index_len_fail17h63e54c65524702d3E(i64, i64, ptr align 8) unnamed_addr #2

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @"_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h40b604b4cd0a83fbE"(i64 %self, ptr align 8 %slice.0, i64 %slice.1, ptr align 8 %0) unnamed_addr #1 !dbg !440 {
start:
  %slice.dbg.spill = alloca { ptr, i64 }, align 8
  %self.dbg.spill = alloca i64, align 8
  %_4 = alloca { i64, i64 }, align 8
  store i64 %self, ptr %self.dbg.spill, align 8
    #dbg_declare(ptr %self.dbg.spill, !444, !DIExpression(), !446)
  %1 = getelementptr inbounds { ptr, i64 }, ptr %slice.dbg.spill, i32 0, i32 0
  store ptr %slice.0, ptr %1, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %slice.dbg.spill, i32 0, i32 1
  store i64 %slice.1, ptr %2, align 8
    #dbg_declare(ptr %slice.dbg.spill, !445, !DIExpression(), !447)
  store i64 0, ptr %_4, align 8, !dbg !448
  %3 = getelementptr inbounds { i64, i64 }, ptr %_4, i32 0, i32 1, !dbg !448
  store i64 %self, ptr %3, align 8, !dbg !448
  %4 = getelementptr inbounds { i64, i64 }, ptr %_4, i32 0, i32 0, !dbg !448
  %5 = load i64, ptr %4, align 8, !dbg !448, !noundef !21
  %6 = getelementptr inbounds { i64, i64 }, ptr %_4, i32 0, i32 1, !dbg !448
  %7 = load i64, ptr %6, align 8, !dbg !448, !noundef !21
  %8 = call { ptr, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hb0d9fa130f61a5efE"(i64 %5, i64 %7, ptr align 8 %slice.0, i64 %slice.1, ptr align 8 %0), !dbg !448
  %_3.0 = extractvalue { ptr, i64 } %8, 0, !dbg !448
  %_3.1 = extractvalue { ptr, i64 } %8, 1, !dbg !448
  %9 = insertvalue { ptr, i64 } poison, ptr %_3.0, 0, !dbg !449
  %10 = insertvalue { ptr, i64 } %9, i64 %_3.1, 1, !dbg !449
  ret { ptr, i64 } %10, !dbg !449
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hb0d9fa130f61a5efE"(i64 %self.0, i64 %self.1, ptr align 8 %slice.0, i64 %slice.1, ptr align 8 %0) unnamed_addr #1 !dbg !450 {
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
  %_35 = alloca { ptr, i64 }, align 8
  %_34 = alloca %"core::ptr::metadata::PtrRepr<[src::lib::SpritebatchSpriteT]>", align 8
  %3 = getelementptr inbounds { i64, i64 }, ptr %self.dbg.spill, i32 0, i32 0
  store i64 %self.0, ptr %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, ptr %self.dbg.spill, i32 0, i32 1
  store i64 %self.1, ptr %4, align 8
    #dbg_declare(ptr %self.dbg.spill, !454, !DIExpression(), !456)
    #dbg_declare(ptr %self.dbg.spill, !457, !DIExpression(), !467)
  %5 = getelementptr inbounds { ptr, i64 }, ptr %slice.dbg.spill, i32 0, i32 0
  store ptr %slice.0, ptr %5, align 8
  %6 = getelementptr inbounds { ptr, i64 }, ptr %slice.dbg.spill, i32 0, i32 1
  store i64 %slice.1, ptr %6, align 8
    #dbg_declare(ptr %slice.dbg.spill, !455, !DIExpression(), !469)
  %_3 = icmp ugt i64 %self.0, %self.1, !dbg !470
  br i1 %_3, label %bb1, label %bb2, !dbg !470

bb2:                                              ; preds = %start
  %_9 = icmp ugt i64 %self.1, %slice.1, !dbg !471
  br i1 %_9, label %bb3, label %bb4, !dbg !471

bb1:                                              ; preds = %start
  call void @_ZN4core5slice5index22slice_index_order_fail17h2045503bd7776290E(i64 %self.0, i64 %self.1, ptr align 8 %0) #6, !dbg !472
  unreachable, !dbg !472

bb4:                                              ; preds = %bb2
  %7 = getelementptr inbounds { ptr, i64 }, ptr %slice.dbg.spill1, i32 0, i32 0, !dbg !473
  store ptr %slice.0, ptr %7, align 8, !dbg !473
  %8 = getelementptr inbounds { ptr, i64 }, ptr %slice.dbg.spill1, i32 0, i32 1, !dbg !473
  store i64 %slice.1, ptr %8, align 8, !dbg !473
    #dbg_declare(ptr %slice.dbg.spill1, !462, !DIExpression(), !474)
    #dbg_declare(ptr %slice.dbg.spill1, !475, !DIExpression(), !481)
  %9 = sub nuw i64 %self.1, %self.0, !dbg !483
  store i64 %9, ptr %2, align 8, !dbg !483
  %new_len = load i64, ptr %2, align 8, !dbg !483, !noundef !21
  store i64 %new_len, ptr %new_len.dbg.spill, align 8, !dbg !483
    #dbg_declare(ptr %new_len.dbg.spill, !465, !DIExpression(), !484)
  store ptr %slice.0, ptr %self.dbg.spill2, align 8, !dbg !485
    #dbg_declare(ptr %self.dbg.spill2, !486, !DIExpression(), !492)
    #dbg_declare(ptr %self.dbg.spill2, !494, !DIExpression(), !500)
  store i64 %self.0, ptr %count.dbg.spill, align 8, !dbg !502
    #dbg_declare(ptr %count.dbg.spill, !491, !DIExpression(), !503)
  store i64 %self.0, ptr %count.dbg.spill3, align 8, !dbg !504
    #dbg_declare(ptr %count.dbg.spill3, !499, !DIExpression(), !505)
  %10 = getelementptr inbounds { i64, i32 }, ptr %slice.0, i64 %self.0, !dbg !506
  store ptr %10, ptr %1, align 8, !dbg !506
  %_31 = load ptr, ptr %1, align 8, !dbg !506, !noundef !21
  store ptr %_31, ptr %data.dbg.spill, align 8, !dbg !506
    #dbg_declare(ptr %data.dbg.spill, !507, !DIExpression(), !511)
    #dbg_declare(ptr %data.dbg.spill, !513, !DIExpression(), !516)
  store i64 %new_len, ptr %len.dbg.spill, align 8, !dbg !518
    #dbg_declare(ptr %len.dbg.spill, !510, !DIExpression(), !519)
    #dbg_declare(ptr %len.dbg.spill, !520, !DIExpression(), !524)
  store ptr %_31, ptr %data_address.dbg.spill, align 8, !dbg !526
    #dbg_declare(ptr %data_address.dbg.spill, !523, !DIExpression(), !527)
  store ptr %_31, ptr %_35, align 8, !dbg !528
  %11 = getelementptr inbounds { ptr, i64 }, ptr %_35, i32 0, i32 1, !dbg !528
  store i64 %new_len, ptr %11, align 8, !dbg !528
  %12 = getelementptr inbounds { ptr, i64 }, ptr %_35, i32 0, i32 0, !dbg !529
  %13 = load ptr, ptr %12, align 8, !dbg !529, !noundef !21
  %14 = getelementptr inbounds { ptr, i64 }, ptr %_35, i32 0, i32 1, !dbg !529
  %15 = load i64, ptr %14, align 8, !dbg !529, !noundef !21
  %16 = getelementptr inbounds { ptr, i64 }, ptr %_34, i32 0, i32 0, !dbg !529
  store ptr %13, ptr %16, align 8, !dbg !529
  %17 = getelementptr inbounds { ptr, i64 }, ptr %_34, i32 0, i32 1, !dbg !529
  store i64 %15, ptr %17, align 8, !dbg !529
  %18 = getelementptr inbounds { ptr, i64 }, ptr %_34, i32 0, i32 0, !dbg !529
  %_17.0 = load ptr, ptr %18, align 8, !dbg !529, !noundef !21
  %19 = getelementptr inbounds { ptr, i64 }, ptr %_34, i32 0, i32 1, !dbg !529
  %_17.1 = load i64, ptr %19, align 8, !dbg !529, !noundef !21
  %20 = insertvalue { ptr, i64 } poison, ptr %_17.0, 0, !dbg !530
  %21 = insertvalue { ptr, i64 } %20, i64 %_17.1, 1, !dbg !530
  ret { ptr, i64 } %21, !dbg !530

bb3:                                              ; preds = %bb2
  call void @_ZN4core5slice5index24slice_end_index_len_fail17h63e54c65524702d3E(i64 %self.1, i64 %slice.1, ptr align 8 %0) #6, !dbg !531
  unreachable, !dbg !531
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_1() unnamed_addr #0 !dbg !532 {
start:
  %self.dbg.spill.i8 = alloca { ptr, i64 }, align 8
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %i.dbg.spill = alloca i64, align 8
  %size.dbg.spill = alloca i32, align 4
  %_51 = alloca i8, align 1
  %_36 = alloca i8, align 1
  %_32 = alloca { i64, i64 }, align 8
  %iter = alloca { i64, i64 }, align 8
  %_30 = alloca { i64, i64 }, align 8
  %_28 = alloca { i64, i32 }, align 8
  %_27 = alloca { i64, i32 }, align 8
  %_26 = alloca { i64, i32 }, align 8
  %_25 = alloca { i64, i32 }, align 8
  %_24 = alloca { i64, i32 }, align 8
  %expected_b = alloca [5 x { i64, i32 }], align 8
  %_22 = alloca { i64, i32 }, align 8
  %_21 = alloca { i64, i32 }, align 8
  %_20 = alloca { i64, i32 }, align 8
  %_19 = alloca { i64, i32 }, align 8
  %_18 = alloca { i64, i32 }, align 8
  %expected_a = alloca [5 x { i64, i32 }], align 8
  %_8 = alloca { i64, i32 }, align 8
  %b = alloca [5 x { i64, i32 }], align 8
  %_6 = alloca { i64, i32 }, align 8
  %_5 = alloca { i64, i32 }, align 8
  %_4 = alloca { i64, i32 }, align 8
  %_3 = alloca { i64, i32 }, align 8
  %_2 = alloca { i64, i32 }, align 8
  %a = alloca [5 x { i64, i32 }], align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %a, !537, !DIExpression(), !554)
    #dbg_declare(ptr %b, !542, !DIExpression(), !555)
    #dbg_declare(ptr %expected_a, !546, !DIExpression(), !556)
    #dbg_declare(ptr %expected_b, !548, !DIExpression(), !557)
    #dbg_declare(ptr %iter, !550, !DIExpression(), !558)
  store i64 5, ptr %_2, align 8, !dbg !559
  %1 = getelementptr inbounds { i64, i32 }, ptr %_2, i32 0, i32 1, !dbg !559
  store i32 5, ptr %1, align 8, !dbg !559
  store i64 1, ptr %_3, align 8, !dbg !560
  %2 = getelementptr inbounds { i64, i32 }, ptr %_3, i32 0, i32 1, !dbg !560
  store i32 3, ptr %2, align 8, !dbg !560
  store i64 2, ptr %_4, align 8, !dbg !561
  %3 = getelementptr inbounds { i64, i32 }, ptr %_4, i32 0, i32 1, !dbg !561
  store i32 2, ptr %3, align 8, !dbg !561
  store i64 3, ptr %_5, align 8, !dbg !562
  %4 = getelementptr inbounds { i64, i32 }, ptr %_5, i32 0, i32 1, !dbg !562
  store i32 1, ptr %4, align 8, !dbg !562
  store i64 4, ptr %_6, align 8, !dbg !563
  %5 = getelementptr inbounds { i64, i32 }, ptr %_6, i32 0, i32 1, !dbg !563
  store i32 4, ptr %5, align 8, !dbg !563
  %6 = getelementptr inbounds { i64, i32 }, ptr %_2, i32 0, i32 0, !dbg !564
  %7 = load i64, ptr %6, align 8, !dbg !564, !noundef !21
  %8 = getelementptr inbounds { i64, i32 }, ptr %_2, i32 0, i32 1, !dbg !564
  %9 = load i32, ptr %8, align 8, !dbg !564, !noundef !21
  %10 = getelementptr inbounds [5 x { i64, i32 }], ptr %a, i64 0, i64 0, !dbg !564
  %11 = getelementptr inbounds { i64, i32 }, ptr %10, i32 0, i32 0, !dbg !564
  store i64 %7, ptr %11, align 8, !dbg !564
  %12 = getelementptr inbounds { i64, i32 }, ptr %10, i32 0, i32 1, !dbg !564
  store i32 %9, ptr %12, align 8, !dbg !564
  %13 = getelementptr inbounds { i64, i32 }, ptr %_3, i32 0, i32 0, !dbg !564
  %14 = load i64, ptr %13, align 8, !dbg !564, !noundef !21
  %15 = getelementptr inbounds { i64, i32 }, ptr %_3, i32 0, i32 1, !dbg !564
  %16 = load i32, ptr %15, align 8, !dbg !564, !noundef !21
  %17 = getelementptr inbounds [5 x { i64, i32 }], ptr %a, i64 0, i64 1, !dbg !564
  %18 = getelementptr inbounds { i64, i32 }, ptr %17, i32 0, i32 0, !dbg !564
  store i64 %14, ptr %18, align 8, !dbg !564
  %19 = getelementptr inbounds { i64, i32 }, ptr %17, i32 0, i32 1, !dbg !564
  store i32 %16, ptr %19, align 8, !dbg !564
  %20 = getelementptr inbounds { i64, i32 }, ptr %_4, i32 0, i32 0, !dbg !564
  %21 = load i64, ptr %20, align 8, !dbg !564, !noundef !21
  %22 = getelementptr inbounds { i64, i32 }, ptr %_4, i32 0, i32 1, !dbg !564
  %23 = load i32, ptr %22, align 8, !dbg !564, !noundef !21
  %24 = getelementptr inbounds [5 x { i64, i32 }], ptr %a, i64 0, i64 2, !dbg !564
  %25 = getelementptr inbounds { i64, i32 }, ptr %24, i32 0, i32 0, !dbg !564
  store i64 %21, ptr %25, align 8, !dbg !564
  %26 = getelementptr inbounds { i64, i32 }, ptr %24, i32 0, i32 1, !dbg !564
  store i32 %23, ptr %26, align 8, !dbg !564
  %27 = getelementptr inbounds { i64, i32 }, ptr %_5, i32 0, i32 0, !dbg !564
  %28 = load i64, ptr %27, align 8, !dbg !564, !noundef !21
  %29 = getelementptr inbounds { i64, i32 }, ptr %_5, i32 0, i32 1, !dbg !564
  %30 = load i32, ptr %29, align 8, !dbg !564, !noundef !21
  %31 = getelementptr inbounds [5 x { i64, i32 }], ptr %a, i64 0, i64 3, !dbg !564
  %32 = getelementptr inbounds { i64, i32 }, ptr %31, i32 0, i32 0, !dbg !564
  store i64 %28, ptr %32, align 8, !dbg !564
  %33 = getelementptr inbounds { i64, i32 }, ptr %31, i32 0, i32 1, !dbg !564
  store i32 %30, ptr %33, align 8, !dbg !564
  %34 = getelementptr inbounds { i64, i32 }, ptr %_6, i32 0, i32 0, !dbg !564
  %35 = load i64, ptr %34, align 8, !dbg !564, !noundef !21
  %36 = getelementptr inbounds { i64, i32 }, ptr %_6, i32 0, i32 1, !dbg !564
  %37 = load i32, ptr %36, align 8, !dbg !564, !noundef !21
  %38 = getelementptr inbounds [5 x { i64, i32 }], ptr %a, i64 0, i64 4, !dbg !564
  %39 = getelementptr inbounds { i64, i32 }, ptr %38, i32 0, i32 0, !dbg !564
  store i64 %35, ptr %39, align 8, !dbg !564
  %40 = getelementptr inbounds { i64, i32 }, ptr %38, i32 0, i32 1, !dbg !564
  store i32 %37, ptr %40, align 8, !dbg !564
  store i64 0, ptr %_8, align 8, !dbg !565
  %41 = getelementptr inbounds { i64, i32 }, ptr %_8, i32 0, i32 1, !dbg !565
  store i32 0, ptr %41, align 8, !dbg !565
  %42 = getelementptr inbounds { i64, i32 }, ptr %_8, i32 0, i32 0, !dbg !566
  %43 = load i64, ptr %42, align 8, !dbg !566, !noundef !21
  %44 = getelementptr inbounds { i64, i32 }, ptr %_8, i32 0, i32 1, !dbg !566
  %45 = load i32, ptr %44, align 8, !dbg !566, !noundef !21
  %46 = getelementptr inbounds [5 x { i64, i32 }], ptr %b, i64 0, i64 0, !dbg !566
  %47 = getelementptr inbounds [5 x { i64, i32 }], ptr %b, i64 0, i64 5, !dbg !566
  br label %repeat_loop_header, !dbg !566

repeat_loop_header:                               ; preds = %repeat_loop_body, %start
  %48 = phi ptr [ %46, %start ], [ %52, %repeat_loop_body ]
  %49 = icmp ne ptr %48, %47
  br i1 %49, label %repeat_loop_body, label %repeat_loop_next

repeat_loop_body:                                 ; preds = %repeat_loop_header
  %50 = getelementptr inbounds { i64, i32 }, ptr %48, i32 0, i32 0
  store i64 %43, ptr %50, align 8
  %51 = getelementptr inbounds { i64, i32 }, ptr %48, i32 0, i32 1
  store i32 %45, ptr %51, align 8
  %52 = getelementptr inbounds { i64, i32 }, ptr %48, i64 1
  br label %repeat_loop_header

repeat_loop_next:                                 ; preds = %repeat_loop_header
  store i32 5, ptr %size.dbg.spill, align 4, !dbg !567
    #dbg_declare(ptr %size.dbg.spill, !544, !DIExpression(), !568)
  store ptr %a, ptr %self.dbg.spill.i8, align 8
  %53 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i8, i32 0, i32 1
  store i64 5, ptr %53, align 8
    #dbg_declare(ptr %self.dbg.spill.i8, !569, !DIExpression(), !572)
  store ptr %b, ptr %self.dbg.spill.i, align 8
  %54 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 5, ptr %54, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !569, !DIExpression(), !574)
  call void @merge_sort(ptr %a, ptr %b, i32 5), !dbg !576
  store i64 3, ptr %_18, align 8, !dbg !577
  %55 = getelementptr inbounds { i64, i32 }, ptr %_18, i32 0, i32 1, !dbg !577
  store i32 1, ptr %55, align 8, !dbg !577
  store i64 2, ptr %_19, align 8, !dbg !578
  %56 = getelementptr inbounds { i64, i32 }, ptr %_19, i32 0, i32 1, !dbg !578
  store i32 2, ptr %56, align 8, !dbg !578
  store i64 1, ptr %_20, align 8, !dbg !579
  %57 = getelementptr inbounds { i64, i32 }, ptr %_20, i32 0, i32 1, !dbg !579
  store i32 3, ptr %57, align 8, !dbg !579
  store i64 4, ptr %_21, align 8, !dbg !580
  %58 = getelementptr inbounds { i64, i32 }, ptr %_21, i32 0, i32 1, !dbg !580
  store i32 4, ptr %58, align 8, !dbg !580
  store i64 5, ptr %_22, align 8, !dbg !581
  %59 = getelementptr inbounds { i64, i32 }, ptr %_22, i32 0, i32 1, !dbg !581
  store i32 5, ptr %59, align 8, !dbg !581
  %60 = getelementptr inbounds { i64, i32 }, ptr %_18, i32 0, i32 0, !dbg !582
  %61 = load i64, ptr %60, align 8, !dbg !582, !noundef !21
  %62 = getelementptr inbounds { i64, i32 }, ptr %_18, i32 0, i32 1, !dbg !582
  %63 = load i32, ptr %62, align 8, !dbg !582, !noundef !21
  %64 = getelementptr inbounds [5 x { i64, i32 }], ptr %expected_a, i64 0, i64 0, !dbg !582
  %65 = getelementptr inbounds { i64, i32 }, ptr %64, i32 0, i32 0, !dbg !582
  store i64 %61, ptr %65, align 8, !dbg !582
  %66 = getelementptr inbounds { i64, i32 }, ptr %64, i32 0, i32 1, !dbg !582
  store i32 %63, ptr %66, align 8, !dbg !582
  %67 = getelementptr inbounds { i64, i32 }, ptr %_19, i32 0, i32 0, !dbg !582
  %68 = load i64, ptr %67, align 8, !dbg !582, !noundef !21
  %69 = getelementptr inbounds { i64, i32 }, ptr %_19, i32 0, i32 1, !dbg !582
  %70 = load i32, ptr %69, align 8, !dbg !582, !noundef !21
  %71 = getelementptr inbounds [5 x { i64, i32 }], ptr %expected_a, i64 0, i64 1, !dbg !582
  %72 = getelementptr inbounds { i64, i32 }, ptr %71, i32 0, i32 0, !dbg !582
  store i64 %68, ptr %72, align 8, !dbg !582
  %73 = getelementptr inbounds { i64, i32 }, ptr %71, i32 0, i32 1, !dbg !582
  store i32 %70, ptr %73, align 8, !dbg !582
  %74 = getelementptr inbounds { i64, i32 }, ptr %_20, i32 0, i32 0, !dbg !582
  %75 = load i64, ptr %74, align 8, !dbg !582, !noundef !21
  %76 = getelementptr inbounds { i64, i32 }, ptr %_20, i32 0, i32 1, !dbg !582
  %77 = load i32, ptr %76, align 8, !dbg !582, !noundef !21
  %78 = getelementptr inbounds [5 x { i64, i32 }], ptr %expected_a, i64 0, i64 2, !dbg !582
  %79 = getelementptr inbounds { i64, i32 }, ptr %78, i32 0, i32 0, !dbg !582
  store i64 %75, ptr %79, align 8, !dbg !582
  %80 = getelementptr inbounds { i64, i32 }, ptr %78, i32 0, i32 1, !dbg !582
  store i32 %77, ptr %80, align 8, !dbg !582
  %81 = getelementptr inbounds { i64, i32 }, ptr %_21, i32 0, i32 0, !dbg !582
  %82 = load i64, ptr %81, align 8, !dbg !582, !noundef !21
  %83 = getelementptr inbounds { i64, i32 }, ptr %_21, i32 0, i32 1, !dbg !582
  %84 = load i32, ptr %83, align 8, !dbg !582, !noundef !21
  %85 = getelementptr inbounds [5 x { i64, i32 }], ptr %expected_a, i64 0, i64 3, !dbg !582
  %86 = getelementptr inbounds { i64, i32 }, ptr %85, i32 0, i32 0, !dbg !582
  store i64 %82, ptr %86, align 8, !dbg !582
  %87 = getelementptr inbounds { i64, i32 }, ptr %85, i32 0, i32 1, !dbg !582
  store i32 %84, ptr %87, align 8, !dbg !582
  %88 = getelementptr inbounds { i64, i32 }, ptr %_22, i32 0, i32 0, !dbg !582
  %89 = load i64, ptr %88, align 8, !dbg !582, !noundef !21
  %90 = getelementptr inbounds { i64, i32 }, ptr %_22, i32 0, i32 1, !dbg !582
  %91 = load i32, ptr %90, align 8, !dbg !582, !noundef !21
  %92 = getelementptr inbounds [5 x { i64, i32 }], ptr %expected_a, i64 0, i64 4, !dbg !582
  %93 = getelementptr inbounds { i64, i32 }, ptr %92, i32 0, i32 0, !dbg !582
  store i64 %89, ptr %93, align 8, !dbg !582
  %94 = getelementptr inbounds { i64, i32 }, ptr %92, i32 0, i32 1, !dbg !582
  store i32 %91, ptr %94, align 8, !dbg !582
  store i64 1, ptr %_24, align 8, !dbg !583
  %95 = getelementptr inbounds { i64, i32 }, ptr %_24, i32 0, i32 1, !dbg !583
  store i32 3, ptr %95, align 8, !dbg !583
  store i64 5, ptr %_25, align 8, !dbg !584
  %96 = getelementptr inbounds { i64, i32 }, ptr %_25, i32 0, i32 1, !dbg !584
  store i32 5, ptr %96, align 8, !dbg !584
  store i64 3, ptr %_26, align 8, !dbg !585
  %97 = getelementptr inbounds { i64, i32 }, ptr %_26, i32 0, i32 1, !dbg !585
  store i32 1, ptr %97, align 8, !dbg !585
  store i64 2, ptr %_27, align 8, !dbg !586
  %98 = getelementptr inbounds { i64, i32 }, ptr %_27, i32 0, i32 1, !dbg !586
  store i32 2, ptr %98, align 8, !dbg !586
  store i64 4, ptr %_28, align 8, !dbg !587
  %99 = getelementptr inbounds { i64, i32 }, ptr %_28, i32 0, i32 1, !dbg !587
  store i32 4, ptr %99, align 8, !dbg !587
  %100 = getelementptr inbounds { i64, i32 }, ptr %_24, i32 0, i32 0, !dbg !588
  %101 = load i64, ptr %100, align 8, !dbg !588, !noundef !21
  %102 = getelementptr inbounds { i64, i32 }, ptr %_24, i32 0, i32 1, !dbg !588
  %103 = load i32, ptr %102, align 8, !dbg !588, !noundef !21
  %104 = getelementptr inbounds [5 x { i64, i32 }], ptr %expected_b, i64 0, i64 0, !dbg !588
  %105 = getelementptr inbounds { i64, i32 }, ptr %104, i32 0, i32 0, !dbg !588
  store i64 %101, ptr %105, align 8, !dbg !588
  %106 = getelementptr inbounds { i64, i32 }, ptr %104, i32 0, i32 1, !dbg !588
  store i32 %103, ptr %106, align 8, !dbg !588
  %107 = getelementptr inbounds { i64, i32 }, ptr %_25, i32 0, i32 0, !dbg !588
  %108 = load i64, ptr %107, align 8, !dbg !588, !noundef !21
  %109 = getelementptr inbounds { i64, i32 }, ptr %_25, i32 0, i32 1, !dbg !588
  %110 = load i32, ptr %109, align 8, !dbg !588, !noundef !21
  %111 = getelementptr inbounds [5 x { i64, i32 }], ptr %expected_b, i64 0, i64 1, !dbg !588
  %112 = getelementptr inbounds { i64, i32 }, ptr %111, i32 0, i32 0, !dbg !588
  store i64 %108, ptr %112, align 8, !dbg !588
  %113 = getelementptr inbounds { i64, i32 }, ptr %111, i32 0, i32 1, !dbg !588
  store i32 %110, ptr %113, align 8, !dbg !588
  %114 = getelementptr inbounds { i64, i32 }, ptr %_26, i32 0, i32 0, !dbg !588
  %115 = load i64, ptr %114, align 8, !dbg !588, !noundef !21
  %116 = getelementptr inbounds { i64, i32 }, ptr %_26, i32 0, i32 1, !dbg !588
  %117 = load i32, ptr %116, align 8, !dbg !588, !noundef !21
  %118 = getelementptr inbounds [5 x { i64, i32 }], ptr %expected_b, i64 0, i64 2, !dbg !588
  %119 = getelementptr inbounds { i64, i32 }, ptr %118, i32 0, i32 0, !dbg !588
  store i64 %115, ptr %119, align 8, !dbg !588
  %120 = getelementptr inbounds { i64, i32 }, ptr %118, i32 0, i32 1, !dbg !588
  store i32 %117, ptr %120, align 8, !dbg !588
  %121 = getelementptr inbounds { i64, i32 }, ptr %_27, i32 0, i32 0, !dbg !588
  %122 = load i64, ptr %121, align 8, !dbg !588, !noundef !21
  %123 = getelementptr inbounds { i64, i32 }, ptr %_27, i32 0, i32 1, !dbg !588
  %124 = load i32, ptr %123, align 8, !dbg !588, !noundef !21
  %125 = getelementptr inbounds [5 x { i64, i32 }], ptr %expected_b, i64 0, i64 3, !dbg !588
  %126 = getelementptr inbounds { i64, i32 }, ptr %125, i32 0, i32 0, !dbg !588
  store i64 %122, ptr %126, align 8, !dbg !588
  %127 = getelementptr inbounds { i64, i32 }, ptr %125, i32 0, i32 1, !dbg !588
  store i32 %124, ptr %127, align 8, !dbg !588
  %128 = getelementptr inbounds { i64, i32 }, ptr %_28, i32 0, i32 0, !dbg !588
  %129 = load i64, ptr %128, align 8, !dbg !588, !noundef !21
  %130 = getelementptr inbounds { i64, i32 }, ptr %_28, i32 0, i32 1, !dbg !588
  %131 = load i32, ptr %130, align 8, !dbg !588, !noundef !21
  %132 = getelementptr inbounds [5 x { i64, i32 }], ptr %expected_b, i64 0, i64 4, !dbg !588
  %133 = getelementptr inbounds { i64, i32 }, ptr %132, i32 0, i32 0, !dbg !588
  store i64 %129, ptr %133, align 8, !dbg !588
  %134 = getelementptr inbounds { i64, i32 }, ptr %132, i32 0, i32 1, !dbg !588
  store i32 %131, ptr %134, align 8, !dbg !588
  store i64 0, ptr %_30, align 8, !dbg !589
  %135 = getelementptr inbounds { i64, i64 }, ptr %_30, i32 0, i32 1, !dbg !589
  store i64 5, ptr %135, align 8, !dbg !589
  %136 = getelementptr inbounds { i64, i64 }, ptr %_30, i32 0, i32 0, !dbg !589
  %137 = load i64, ptr %136, align 8, !dbg !589, !noundef !21
  %138 = getelementptr inbounds { i64, i64 }, ptr %_30, i32 0, i32 1, !dbg !589
  %139 = load i64, ptr %138, align 8, !dbg !589, !noundef !21
  %140 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hb77d94a00def916aE"(i64 %137, i64 %139), !dbg !589
  %_29.0 = extractvalue { i64, i64 } %140, 0, !dbg !589
  %_29.1 = extractvalue { i64, i64 } %140, 1, !dbg !589
  %141 = getelementptr inbounds { i64, i64 }, ptr %iter, i32 0, i32 0, !dbg !589
  store i64 %_29.0, ptr %141, align 8, !dbg !589
  %142 = getelementptr inbounds { i64, i64 }, ptr %iter, i32 0, i32 1, !dbg !589
  store i64 %_29.1, ptr %142, align 8, !dbg !589
  br label %bb5, !dbg !590

bb5:                                              ; preds = %bb21, %repeat_loop_next
  %143 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17he59e48b2a12ae644E"(ptr align 8 %iter), !dbg !558
  store { i64, i64 } %143, ptr %_32, align 8, !dbg !558
  %_34 = load i64, ptr %_32, align 8, !dbg !558, !range !591, !noundef !21
  %144 = icmp eq i64 %_34, 0, !dbg !558
  br i1 %144, label %bb9, label %bb7, !dbg !558

bb9:                                              ; preds = %bb5
  store i8 1, ptr %0, align 1, !dbg !592
  br label %bb27, !dbg !593

bb7:                                              ; preds = %bb5
  %145 = getelementptr inbounds { i64, i64 }, ptr %_32, i32 0, i32 1, !dbg !594
  %i = load i64, ptr %145, align 8, !dbg !594, !noundef !21
  store i64 %i, ptr %i.dbg.spill, align 8, !dbg !594
    #dbg_declare(ptr %i.dbg.spill, !552, !DIExpression(), !595)
  %_40 = icmp ult i64 %i, 5, !dbg !596
  %146 = call i1 @llvm.expect.i1(i1 %_40, i1 true), !dbg !596
  br i1 %146, label %bb13, label %panic, !dbg !596

bb8:                                              ; No predecessors!
  unreachable, !dbg !558

bb13:                                             ; preds = %bb7
  %147 = getelementptr inbounds [5 x { i64, i32 }], ptr %a, i64 0, i64 %i, !dbg !596
  %_38 = load i64, ptr %147, align 8, !dbg !596, !noundef !21
  %_43 = icmp ult i64 %i, 5, !dbg !597
  %148 = call i1 @llvm.expect.i1(i1 %_43, i1 true), !dbg !597
  br i1 %148, label %bb14, label %panic1, !dbg !597

panic:                                            ; preds = %bb7
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 5, ptr align 8 @alloc_daa6d0061aab628987ecb672d69b485d) #6, !dbg !596
  unreachable, !dbg !596

bb14:                                             ; preds = %bb13
  %149 = getelementptr inbounds [5 x { i64, i32 }], ptr %expected_a, i64 0, i64 %i, !dbg !597
  %_41 = load i64, ptr %149, align 8, !dbg !597, !noundef !21
  %_37 = icmp ne i64 %_38, %_41, !dbg !596
  br i1 %_37, label %bb10, label %bb11, !dbg !596

panic1:                                           ; preds = %bb13
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 5, ptr align 8 @alloc_75959f57b54d7afcfdb856c3b007cebd) #6, !dbg !597
  unreachable, !dbg !597

bb11:                                             ; preds = %bb14
  %_47 = icmp ult i64 %i, 5, !dbg !598
  %150 = call i1 @llvm.expect.i1(i1 %_47, i1 true), !dbg !598
  br i1 %150, label %bb15, label %panic2, !dbg !598

bb10:                                             ; preds = %bb14
  store i8 1, ptr %_36, align 1, !dbg !596
  br label %bb12, !dbg !596

bb12:                                             ; preds = %bb16, %bb10
  %151 = load i8, ptr %_36, align 1, !dbg !596, !range !287, !noundef !21
  %152 = trunc i8 %151 to i1, !dbg !596
  br i1 %152, label %bb17, label %bb18, !dbg !596

bb15:                                             ; preds = %bb11
  %153 = getelementptr inbounds [5 x { i64, i32 }], ptr %a, i64 0, i64 %i, !dbg !598
  %154 = getelementptr inbounds { i64, i32 }, ptr %153, i32 0, i32 1, !dbg !598
  %_45 = load i32, ptr %154, align 8, !dbg !598, !noundef !21
  %_50 = icmp ult i64 %i, 5, !dbg !599
  %155 = call i1 @llvm.expect.i1(i1 %_50, i1 true), !dbg !599
  br i1 %155, label %bb16, label %panic3, !dbg !599

panic2:                                           ; preds = %bb11
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 5, ptr align 8 @alloc_58f2721dc6a87876aab3e1031a557b69) #6, !dbg !598
  unreachable, !dbg !598

bb16:                                             ; preds = %bb15
  %156 = getelementptr inbounds [5 x { i64, i32 }], ptr %expected_a, i64 0, i64 %i, !dbg !599
  %157 = getelementptr inbounds { i64, i32 }, ptr %156, i32 0, i32 1, !dbg !599
  %_48 = load i32, ptr %157, align 8, !dbg !599, !noundef !21
  %_44 = icmp ne i32 %_45, %_48, !dbg !598
  %158 = zext i1 %_44 to i8, !dbg !596
  store i8 %158, ptr %_36, align 1, !dbg !596
  br label %bb12, !dbg !596

panic3:                                           ; preds = %bb15
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 5, ptr align 8 @alloc_c96ec0e1194378f1c771b6ff83e8d0c9) #6, !dbg !599
  unreachable, !dbg !599

bb18:                                             ; preds = %bb12
  %_55 = icmp ult i64 %i, 5, !dbg !600
  %159 = call i1 @llvm.expect.i1(i1 %_55, i1 true), !dbg !600
  br i1 %159, label %bb22, label %panic4, !dbg !600

bb17:                                             ; preds = %bb12
  store i8 0, ptr %0, align 1, !dbg !601
  br label %bb27, !dbg !602

bb27:                                             ; preds = %bb26, %bb17, %bb9
  %160 = load i8, ptr %0, align 1, !dbg !593, !range !287, !noundef !21
  %161 = trunc i8 %160 to i1, !dbg !593
  ret i1 %161, !dbg !593

bb22:                                             ; preds = %bb18
  %162 = getelementptr inbounds [5 x { i64, i32 }], ptr %b, i64 0, i64 %i, !dbg !600
  %_53 = load i64, ptr %162, align 8, !dbg !600, !noundef !21
  %_58 = icmp ult i64 %i, 5, !dbg !604
  %163 = call i1 @llvm.expect.i1(i1 %_58, i1 true), !dbg !604
  br i1 %163, label %bb23, label %panic5, !dbg !604

panic4:                                           ; preds = %bb18
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 5, ptr align 8 @alloc_de2c781116b2607ae834123c19f2ae2d) #6, !dbg !600
  unreachable, !dbg !600

bb23:                                             ; preds = %bb22
  %164 = getelementptr inbounds [5 x { i64, i32 }], ptr %expected_b, i64 0, i64 %i, !dbg !604
  %_56 = load i64, ptr %164, align 8, !dbg !604, !noundef !21
  %_52 = icmp ne i64 %_53, %_56, !dbg !600
  br i1 %_52, label %bb19, label %bb20, !dbg !600

panic5:                                           ; preds = %bb22
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 5, ptr align 8 @alloc_55265e5aadf02bbdeec945ee3f0a3e30) #6, !dbg !604
  unreachable, !dbg !604

bb20:                                             ; preds = %bb23
  %_62 = icmp ult i64 %i, 5, !dbg !605
  %165 = call i1 @llvm.expect.i1(i1 %_62, i1 true), !dbg !605
  br i1 %165, label %bb24, label %panic6, !dbg !605

bb19:                                             ; preds = %bb23
  store i8 1, ptr %_51, align 1, !dbg !600
  br label %bb21, !dbg !600

bb21:                                             ; preds = %bb25, %bb19
  %166 = load i8, ptr %_51, align 1, !dbg !600, !range !287, !noundef !21
  %167 = trunc i8 %166 to i1, !dbg !600
  br i1 %167, label %bb26, label %bb5, !dbg !600

bb24:                                             ; preds = %bb20
  %168 = getelementptr inbounds [5 x { i64, i32 }], ptr %b, i64 0, i64 %i, !dbg !605
  %169 = getelementptr inbounds { i64, i32 }, ptr %168, i32 0, i32 1, !dbg !605
  %_60 = load i32, ptr %169, align 8, !dbg !605, !noundef !21
  %_65 = icmp ult i64 %i, 5, !dbg !606
  %170 = call i1 @llvm.expect.i1(i1 %_65, i1 true), !dbg !606
  br i1 %170, label %bb25, label %panic7, !dbg !606

panic6:                                           ; preds = %bb20
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 5, ptr align 8 @alloc_c3ec45baeea36c706c436445618b22ed) #6, !dbg !605
  unreachable, !dbg !605

bb25:                                             ; preds = %bb24
  %171 = getelementptr inbounds [5 x { i64, i32 }], ptr %expected_b, i64 0, i64 %i, !dbg !606
  %172 = getelementptr inbounds { i64, i32 }, ptr %171, i32 0, i32 1, !dbg !606
  %_63 = load i32, ptr %172, align 8, !dbg !606, !noundef !21
  %_59 = icmp ne i32 %_60, %_63, !dbg !605
  %173 = zext i1 %_59 to i8, !dbg !600
  store i8 %173, ptr %_51, align 1, !dbg !600
  br label %bb21, !dbg !600

panic7:                                           ; preds = %bb24
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 5, ptr align 8 @alloc_88f318adb67cbff71f976f197b58214c) #6, !dbg !606
  unreachable, !dbg !606

bb26:                                             ; preds = %bb21
  store i8 0, ptr %0, align 1, !dbg !607
  br label %bb27, !dbg !602
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hb77d94a00def916aE"(i64 %self.0, i64 %self.1) unnamed_addr #1 !dbg !608 {
start:
  %self.dbg.spill = alloca { i64, i64 }, align 8
  %0 = getelementptr inbounds { i64, i64 }, ptr %self.dbg.spill, i32 0, i32 0
  store i64 %self.0, ptr %0, align 8
  %1 = getelementptr inbounds { i64, i64 }, ptr %self.dbg.spill, i32 0, i32 1
  store i64 %self.1, ptr %1, align 8
    #dbg_declare(ptr %self.dbg.spill, !617, !DIExpression(), !620)
  %2 = insertvalue { i64, i64 } poison, i64 %self.0, 0, !dbg !621
  %3 = insertvalue { i64, i64 } %2, i64 %self.1, 1, !dbg !621
  ret { i64, i64 } %3, !dbg !621
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17he59e48b2a12ae644E"(ptr align 8 %self) unnamed_addr #1 !dbg !622 {
start:
  %self.dbg.spill = alloca ptr, align 8
  store ptr %self, ptr %self.dbg.spill, align 8
    #dbg_declare(ptr %self.dbg.spill, !644, !DIExpression(), !647)
  %0 = call { i64, i64 } @"_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17hca7e80fedd5e28feE"(ptr align 8 %self), !dbg !648
  %1 = extractvalue { i64, i64 } %0, 0, !dbg !648
  %2 = extractvalue { i64, i64 } %0, 1, !dbg !648
  %3 = insertvalue { i64, i64 } poison, i64 %1, 0, !dbg !649
  %4 = insertvalue { i64, i64 } %3, i64 %2, 1, !dbg !649
  ret { i64, i64 } %4, !dbg !649
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @"_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17hca7e80fedd5e28feE"(ptr align 8 %self) unnamed_addr #1 !dbg !650 {
start:
  %self.dbg.spill.i = alloca ptr, align 8
  %dst.dbg.spill = alloca ptr, align 8
  %result.dbg.spill = alloca i64, align 8
  %src.dbg.spill1 = alloca ptr, align 8
  %src.dbg.spill = alloca i64, align 8
  %dest.dbg.spill = alloca ptr, align 8
  %n.dbg.spill = alloca i64, align 8
  %self.dbg.spill = alloca ptr, align 8
  %src = alloca i64, align 8
  %0 = alloca { i64, i64 }, align 8
  store ptr %self, ptr %self.dbg.spill, align 8
    #dbg_declare(ptr %self.dbg.spill, !653, !DIExpression(), !656)
    #dbg_declare(ptr %src, !657, !DIExpression(), !664)
  %_4 = getelementptr inbounds { i64, i64 }, ptr %self, i32 0, i32 1, !dbg !678
  %_2 = call zeroext i1 @"_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17h19a8450d6c24409cE"(ptr align 8 %self, ptr align 8 %_4), !dbg !679
  br i1 %_2, label %bb2, label %bb5, !dbg !679

bb5:                                              ; preds = %start
  store i64 0, ptr %0, align 8, !dbg !680
  br label %bb6, !dbg !681

bb2:                                              ; preds = %start
  store ptr %self, ptr %self.dbg.spill.i, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !682, !DIExpression(), !692)
  %1 = load i64, ptr %self, align 8, !dbg !694, !noundef !21
  %n = call i64 @"_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17he6e67ab78a1aaccaE"(i64 %1, i64 1), !dbg !695
  store i64 %n, ptr %n.dbg.spill, align 8, !dbg !695
    #dbg_declare(ptr %n.dbg.spill, !654, !DIExpression(), !696)
  store ptr %self, ptr %dest.dbg.spill, align 8, !dbg !697
    #dbg_declare(ptr %dest.dbg.spill, !674, !DIExpression(), !698)
  store i64 %n, ptr %src.dbg.spill, align 8, !dbg !699
    #dbg_declare(ptr %src.dbg.spill, !675, !DIExpression(), !700)
  store ptr %self, ptr %src.dbg.spill1, align 8, !dbg !701
    #dbg_declare(ptr %src.dbg.spill1, !702, !DIExpression(), !708)
  %result = load i64, ptr %self, align 8, !dbg !710, !noundef !21
  store i64 %result, ptr %result.dbg.spill, align 8, !dbg !710
    #dbg_declare(ptr %result.dbg.spill, !676, !DIExpression(), !711)
  store ptr %self, ptr %dst.dbg.spill, align 8, !dbg !712
    #dbg_declare(ptr %dst.dbg.spill, !663, !DIExpression(), !713)
  store i64 %n, ptr %src, align 8, !dbg !714
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %self, ptr align 8 %src, i64 8, i1 false), !dbg !715
  %2 = getelementptr inbounds { i64, i64 }, ptr %0, i32 0, i32 1, !dbg !716
  store i64 %result, ptr %2, align 8, !dbg !716
  store i64 1, ptr %0, align 8, !dbg !716
  br label %bb6, !dbg !681

bb6:                                              ; preds = %bb2, %bb5
  %3 = getelementptr inbounds { i64, i64 }, ptr %0, i32 0, i32 0, !dbg !717
  %4 = load i64, ptr %3, align 8, !dbg !717, !range !591, !noundef !21
  %5 = getelementptr inbounds { i64, i64 }, ptr %0, i32 0, i32 1, !dbg !717
  %6 = load i64, ptr %5, align 8, !dbg !717
  %7 = insertvalue { i64, i64 } poison, i64 %4, 0, !dbg !717
  %8 = insertvalue { i64, i64 } %7, i64 %6, 1, !dbg !717
  ret { i64, i64 } %8, !dbg !717
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17h19a8450d6c24409cE"(ptr align 8 %self, ptr align 8 %other) unnamed_addr #1 !dbg !718 {
start:
  %other.dbg.spill = alloca ptr, align 8
  %self.dbg.spill = alloca ptr, align 8
  store ptr %self, ptr %self.dbg.spill, align 8
    #dbg_declare(ptr %self.dbg.spill, !726, !DIExpression(), !728)
  store ptr %other, ptr %other.dbg.spill, align 8
    #dbg_declare(ptr %other.dbg.spill, !727, !DIExpression(), !729)
  %_3 = load i64, ptr %self, align 8, !dbg !730, !noundef !21
  %_4 = load i64, ptr %other, align 8, !dbg !731, !noundef !21
  %0 = icmp ult i64 %_3, %_4, !dbg !730
  ret i1 %0, !dbg !732
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @"_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17he6e67ab78a1aaccaE"(i64 %start1, i64 %n) unnamed_addr #1 !dbg !733 {
start:
  %0 = alloca i64, align 8
  %n.dbg.spill = alloca i64, align 8
  %start.dbg.spill = alloca i64, align 8
  store i64 %start1, ptr %start.dbg.spill, align 8
    #dbg_declare(ptr %start.dbg.spill, !738, !DIExpression(), !740)
    #dbg_declare(ptr %start.dbg.spill, !741, !DIExpression(), !748)
  store i64 %n, ptr %n.dbg.spill, align 8
    #dbg_declare(ptr %n.dbg.spill, !739, !DIExpression(), !750)
    #dbg_declare(ptr %n.dbg.spill, !747, !DIExpression(), !751)
  %1 = add nuw i64 %start1, %n, !dbg !752
  store i64 %1, ptr %0, align 8, !dbg !752
  %2 = load i64, ptr %0, align 8, !dbg !752, !noundef !21
  ret i64 %2, !dbg !753
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_2() unnamed_addr #0 !dbg !754 {
start:
  %self.dbg.spill.i1 = alloca { ptr, i64 }, align 8
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %size.dbg.spill = alloca i32, align 4
  %_2 = alloca [0 x { i64, i32 }], align 8
  %_1 = alloca [0 x { i64, i32 }], align 8
  %b.dbg.spill = alloca [0 x { i64, i32 }], align 8
  %a.dbg.spill = alloca [0 x { i64, i32 }], align 8
    #dbg_declare(ptr %a.dbg.spill, !756, !DIExpression(), !765)
    #dbg_declare(ptr %b.dbg.spill, !761, !DIExpression(), !766)
  store i32 0, ptr %size.dbg.spill, align 4, !dbg !767
    #dbg_declare(ptr %size.dbg.spill, !763, !DIExpression(), !768)
  store ptr %_1, ptr %self.dbg.spill.i1, align 8
  %0 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i1, i32 0, i32 1
  store i64 0, ptr %0, align 8
    #dbg_declare(ptr %self.dbg.spill.i1, !569, !DIExpression(), !769)
  store ptr %_2, ptr %self.dbg.spill.i, align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 0, ptr %1, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !569, !DIExpression(), !771)
  call void @merge_sort(ptr %_1, ptr %_2, i32 0), !dbg !773
  ret i1 true, !dbg !774
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_3() unnamed_addr #0 !dbg !775 {
start:
  %self.dbg.spill.i8 = alloca { ptr, i64 }, align 8
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %i.dbg.spill = alloca i64, align 8
  %size.dbg.spill = alloca i32, align 4
  %_51 = alloca i8, align 1
  %_36 = alloca i8, align 1
  %_32 = alloca { i64, i64 }, align 8
  %iter = alloca { i64, i64 }, align 8
  %_30 = alloca { i64, i64 }, align 8
  %_28 = alloca { i64, i32 }, align 8
  %_27 = alloca { i64, i32 }, align 8
  %_26 = alloca { i64, i32 }, align 8
  %_25 = alloca { i64, i32 }, align 8
  %_24 = alloca { i64, i32 }, align 8
  %expected_b = alloca [5 x { i64, i32 }], align 8
  %_22 = alloca { i64, i32 }, align 8
  %_21 = alloca { i64, i32 }, align 8
  %_20 = alloca { i64, i32 }, align 8
  %_19 = alloca { i64, i32 }, align 8
  %_18 = alloca { i64, i32 }, align 8
  %expected_a = alloca [5 x { i64, i32 }], align 8
  %_8 = alloca { i64, i32 }, align 8
  %b = alloca [5 x { i64, i32 }], align 8
  %_6 = alloca { i64, i32 }, align 8
  %_5 = alloca { i64, i32 }, align 8
  %_4 = alloca { i64, i32 }, align 8
  %_3 = alloca { i64, i32 }, align 8
  %_2 = alloca { i64, i32 }, align 8
  %a = alloca [5 x { i64, i32 }], align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %a, !777, !DIExpression(), !791)
    #dbg_declare(ptr %b, !779, !DIExpression(), !792)
    #dbg_declare(ptr %expected_a, !783, !DIExpression(), !793)
    #dbg_declare(ptr %expected_b, !785, !DIExpression(), !794)
    #dbg_declare(ptr %iter, !787, !DIExpression(), !795)
  store i64 15, ptr %_2, align 8, !dbg !796
  %1 = getelementptr inbounds { i64, i32 }, ptr %_2, i32 0, i32 1, !dbg !796
  store i32 7, ptr %1, align 8, !dbg !796
  store i64 3, ptr %_3, align 8, !dbg !797
  %2 = getelementptr inbounds { i64, i32 }, ptr %_3, i32 0, i32 1, !dbg !797
  store i32 7, ptr %2, align 8, !dbg !797
  store i64 33, ptr %_4, align 8, !dbg !798
  %3 = getelementptr inbounds { i64, i32 }, ptr %_4, i32 0, i32 1, !dbg !798
  store i32 7, ptr %3, align 8, !dbg !798
  store i64 1, ptr %_5, align 8, !dbg !799
  %4 = getelementptr inbounds { i64, i32 }, ptr %_5, i32 0, i32 1, !dbg !799
  store i32 7, ptr %4, align 8, !dbg !799
  store i64 14, ptr %_6, align 8, !dbg !800
  %5 = getelementptr inbounds { i64, i32 }, ptr %_6, i32 0, i32 1, !dbg !800
  store i32 7, ptr %5, align 8, !dbg !800
  %6 = getelementptr inbounds { i64, i32 }, ptr %_2, i32 0, i32 0, !dbg !801
  %7 = load i64, ptr %6, align 8, !dbg !801, !noundef !21
  %8 = getelementptr inbounds { i64, i32 }, ptr %_2, i32 0, i32 1, !dbg !801
  %9 = load i32, ptr %8, align 8, !dbg !801, !noundef !21
  %10 = getelementptr inbounds [5 x { i64, i32 }], ptr %a, i64 0, i64 0, !dbg !801
  %11 = getelementptr inbounds { i64, i32 }, ptr %10, i32 0, i32 0, !dbg !801
  store i64 %7, ptr %11, align 8, !dbg !801
  %12 = getelementptr inbounds { i64, i32 }, ptr %10, i32 0, i32 1, !dbg !801
  store i32 %9, ptr %12, align 8, !dbg !801
  %13 = getelementptr inbounds { i64, i32 }, ptr %_3, i32 0, i32 0, !dbg !801
  %14 = load i64, ptr %13, align 8, !dbg !801, !noundef !21
  %15 = getelementptr inbounds { i64, i32 }, ptr %_3, i32 0, i32 1, !dbg !801
  %16 = load i32, ptr %15, align 8, !dbg !801, !noundef !21
  %17 = getelementptr inbounds [5 x { i64, i32 }], ptr %a, i64 0, i64 1, !dbg !801
  %18 = getelementptr inbounds { i64, i32 }, ptr %17, i32 0, i32 0, !dbg !801
  store i64 %14, ptr %18, align 8, !dbg !801
  %19 = getelementptr inbounds { i64, i32 }, ptr %17, i32 0, i32 1, !dbg !801
  store i32 %16, ptr %19, align 8, !dbg !801
  %20 = getelementptr inbounds { i64, i32 }, ptr %_4, i32 0, i32 0, !dbg !801
  %21 = load i64, ptr %20, align 8, !dbg !801, !noundef !21
  %22 = getelementptr inbounds { i64, i32 }, ptr %_4, i32 0, i32 1, !dbg !801
  %23 = load i32, ptr %22, align 8, !dbg !801, !noundef !21
  %24 = getelementptr inbounds [5 x { i64, i32 }], ptr %a, i64 0, i64 2, !dbg !801
  %25 = getelementptr inbounds { i64, i32 }, ptr %24, i32 0, i32 0, !dbg !801
  store i64 %21, ptr %25, align 8, !dbg !801
  %26 = getelementptr inbounds { i64, i32 }, ptr %24, i32 0, i32 1, !dbg !801
  store i32 %23, ptr %26, align 8, !dbg !801
  %27 = getelementptr inbounds { i64, i32 }, ptr %_5, i32 0, i32 0, !dbg !801
  %28 = load i64, ptr %27, align 8, !dbg !801, !noundef !21
  %29 = getelementptr inbounds { i64, i32 }, ptr %_5, i32 0, i32 1, !dbg !801
  %30 = load i32, ptr %29, align 8, !dbg !801, !noundef !21
  %31 = getelementptr inbounds [5 x { i64, i32 }], ptr %a, i64 0, i64 3, !dbg !801
  %32 = getelementptr inbounds { i64, i32 }, ptr %31, i32 0, i32 0, !dbg !801
  store i64 %28, ptr %32, align 8, !dbg !801
  %33 = getelementptr inbounds { i64, i32 }, ptr %31, i32 0, i32 1, !dbg !801
  store i32 %30, ptr %33, align 8, !dbg !801
  %34 = getelementptr inbounds { i64, i32 }, ptr %_6, i32 0, i32 0, !dbg !801
  %35 = load i64, ptr %34, align 8, !dbg !801, !noundef !21
  %36 = getelementptr inbounds { i64, i32 }, ptr %_6, i32 0, i32 1, !dbg !801
  %37 = load i32, ptr %36, align 8, !dbg !801, !noundef !21
  %38 = getelementptr inbounds [5 x { i64, i32 }], ptr %a, i64 0, i64 4, !dbg !801
  %39 = getelementptr inbounds { i64, i32 }, ptr %38, i32 0, i32 0, !dbg !801
  store i64 %35, ptr %39, align 8, !dbg !801
  %40 = getelementptr inbounds { i64, i32 }, ptr %38, i32 0, i32 1, !dbg !801
  store i32 %37, ptr %40, align 8, !dbg !801
  store i64 0, ptr %_8, align 8, !dbg !802
  %41 = getelementptr inbounds { i64, i32 }, ptr %_8, i32 0, i32 1, !dbg !802
  store i32 0, ptr %41, align 8, !dbg !802
  %42 = getelementptr inbounds { i64, i32 }, ptr %_8, i32 0, i32 0, !dbg !803
  %43 = load i64, ptr %42, align 8, !dbg !803, !noundef !21
  %44 = getelementptr inbounds { i64, i32 }, ptr %_8, i32 0, i32 1, !dbg !803
  %45 = load i32, ptr %44, align 8, !dbg !803, !noundef !21
  %46 = getelementptr inbounds [5 x { i64, i32 }], ptr %b, i64 0, i64 0, !dbg !803
  %47 = getelementptr inbounds [5 x { i64, i32 }], ptr %b, i64 0, i64 5, !dbg !803
  br label %repeat_loop_header, !dbg !803

repeat_loop_header:                               ; preds = %repeat_loop_body, %start
  %48 = phi ptr [ %46, %start ], [ %52, %repeat_loop_body ]
  %49 = icmp ne ptr %48, %47
  br i1 %49, label %repeat_loop_body, label %repeat_loop_next

repeat_loop_body:                                 ; preds = %repeat_loop_header
  %50 = getelementptr inbounds { i64, i32 }, ptr %48, i32 0, i32 0
  store i64 %43, ptr %50, align 8
  %51 = getelementptr inbounds { i64, i32 }, ptr %48, i32 0, i32 1
  store i32 %45, ptr %51, align 8
  %52 = getelementptr inbounds { i64, i32 }, ptr %48, i64 1
  br label %repeat_loop_header

repeat_loop_next:                                 ; preds = %repeat_loop_header
  store i32 5, ptr %size.dbg.spill, align 4, !dbg !804
    #dbg_declare(ptr %size.dbg.spill, !781, !DIExpression(), !805)
  store ptr %a, ptr %self.dbg.spill.i8, align 8
  %53 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i8, i32 0, i32 1
  store i64 5, ptr %53, align 8
    #dbg_declare(ptr %self.dbg.spill.i8, !569, !DIExpression(), !806)
  store ptr %b, ptr %self.dbg.spill.i, align 8
  %54 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 5, ptr %54, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !569, !DIExpression(), !808)
  call void @merge_sort(ptr %a, ptr %b, i32 5), !dbg !810
  store i64 15, ptr %_18, align 8, !dbg !811
  %55 = getelementptr inbounds { i64, i32 }, ptr %_18, i32 0, i32 1, !dbg !811
  store i32 7, ptr %55, align 8, !dbg !811
  store i64 3, ptr %_19, align 8, !dbg !812
  %56 = getelementptr inbounds { i64, i32 }, ptr %_19, i32 0, i32 1, !dbg !812
  store i32 7, ptr %56, align 8, !dbg !812
  store i64 33, ptr %_20, align 8, !dbg !813
  %57 = getelementptr inbounds { i64, i32 }, ptr %_20, i32 0, i32 1, !dbg !813
  store i32 7, ptr %57, align 8, !dbg !813
  store i64 1, ptr %_21, align 8, !dbg !814
  %58 = getelementptr inbounds { i64, i32 }, ptr %_21, i32 0, i32 1, !dbg !814
  store i32 7, ptr %58, align 8, !dbg !814
  store i64 14, ptr %_22, align 8, !dbg !815
  %59 = getelementptr inbounds { i64, i32 }, ptr %_22, i32 0, i32 1, !dbg !815
  store i32 7, ptr %59, align 8, !dbg !815
  %60 = getelementptr inbounds { i64, i32 }, ptr %_18, i32 0, i32 0, !dbg !816
  %61 = load i64, ptr %60, align 8, !dbg !816, !noundef !21
  %62 = getelementptr inbounds { i64, i32 }, ptr %_18, i32 0, i32 1, !dbg !816
  %63 = load i32, ptr %62, align 8, !dbg !816, !noundef !21
  %64 = getelementptr inbounds [5 x { i64, i32 }], ptr %expected_a, i64 0, i64 0, !dbg !816
  %65 = getelementptr inbounds { i64, i32 }, ptr %64, i32 0, i32 0, !dbg !816
  store i64 %61, ptr %65, align 8, !dbg !816
  %66 = getelementptr inbounds { i64, i32 }, ptr %64, i32 0, i32 1, !dbg !816
  store i32 %63, ptr %66, align 8, !dbg !816
  %67 = getelementptr inbounds { i64, i32 }, ptr %_19, i32 0, i32 0, !dbg !816
  %68 = load i64, ptr %67, align 8, !dbg !816, !noundef !21
  %69 = getelementptr inbounds { i64, i32 }, ptr %_19, i32 0, i32 1, !dbg !816
  %70 = load i32, ptr %69, align 8, !dbg !816, !noundef !21
  %71 = getelementptr inbounds [5 x { i64, i32 }], ptr %expected_a, i64 0, i64 1, !dbg !816
  %72 = getelementptr inbounds { i64, i32 }, ptr %71, i32 0, i32 0, !dbg !816
  store i64 %68, ptr %72, align 8, !dbg !816
  %73 = getelementptr inbounds { i64, i32 }, ptr %71, i32 0, i32 1, !dbg !816
  store i32 %70, ptr %73, align 8, !dbg !816
  %74 = getelementptr inbounds { i64, i32 }, ptr %_20, i32 0, i32 0, !dbg !816
  %75 = load i64, ptr %74, align 8, !dbg !816, !noundef !21
  %76 = getelementptr inbounds { i64, i32 }, ptr %_20, i32 0, i32 1, !dbg !816
  %77 = load i32, ptr %76, align 8, !dbg !816, !noundef !21
  %78 = getelementptr inbounds [5 x { i64, i32 }], ptr %expected_a, i64 0, i64 2, !dbg !816
  %79 = getelementptr inbounds { i64, i32 }, ptr %78, i32 0, i32 0, !dbg !816
  store i64 %75, ptr %79, align 8, !dbg !816
  %80 = getelementptr inbounds { i64, i32 }, ptr %78, i32 0, i32 1, !dbg !816
  store i32 %77, ptr %80, align 8, !dbg !816
  %81 = getelementptr inbounds { i64, i32 }, ptr %_21, i32 0, i32 0, !dbg !816
  %82 = load i64, ptr %81, align 8, !dbg !816, !noundef !21
  %83 = getelementptr inbounds { i64, i32 }, ptr %_21, i32 0, i32 1, !dbg !816
  %84 = load i32, ptr %83, align 8, !dbg !816, !noundef !21
  %85 = getelementptr inbounds [5 x { i64, i32 }], ptr %expected_a, i64 0, i64 3, !dbg !816
  %86 = getelementptr inbounds { i64, i32 }, ptr %85, i32 0, i32 0, !dbg !816
  store i64 %82, ptr %86, align 8, !dbg !816
  %87 = getelementptr inbounds { i64, i32 }, ptr %85, i32 0, i32 1, !dbg !816
  store i32 %84, ptr %87, align 8, !dbg !816
  %88 = getelementptr inbounds { i64, i32 }, ptr %_22, i32 0, i32 0, !dbg !816
  %89 = load i64, ptr %88, align 8, !dbg !816, !noundef !21
  %90 = getelementptr inbounds { i64, i32 }, ptr %_22, i32 0, i32 1, !dbg !816
  %91 = load i32, ptr %90, align 8, !dbg !816, !noundef !21
  %92 = getelementptr inbounds [5 x { i64, i32 }], ptr %expected_a, i64 0, i64 4, !dbg !816
  %93 = getelementptr inbounds { i64, i32 }, ptr %92, i32 0, i32 0, !dbg !816
  store i64 %89, ptr %93, align 8, !dbg !816
  %94 = getelementptr inbounds { i64, i32 }, ptr %92, i32 0, i32 1, !dbg !816
  store i32 %91, ptr %94, align 8, !dbg !816
  store i64 15, ptr %_24, align 8, !dbg !817
  %95 = getelementptr inbounds { i64, i32 }, ptr %_24, i32 0, i32 1, !dbg !817
  store i32 7, ptr %95, align 8, !dbg !817
  store i64 3, ptr %_25, align 8, !dbg !818
  %96 = getelementptr inbounds { i64, i32 }, ptr %_25, i32 0, i32 1, !dbg !818
  store i32 7, ptr %96, align 8, !dbg !818
  store i64 33, ptr %_26, align 8, !dbg !819
  %97 = getelementptr inbounds { i64, i32 }, ptr %_26, i32 0, i32 1, !dbg !819
  store i32 7, ptr %97, align 8, !dbg !819
  store i64 1, ptr %_27, align 8, !dbg !820
  %98 = getelementptr inbounds { i64, i32 }, ptr %_27, i32 0, i32 1, !dbg !820
  store i32 7, ptr %98, align 8, !dbg !820
  store i64 14, ptr %_28, align 8, !dbg !821
  %99 = getelementptr inbounds { i64, i32 }, ptr %_28, i32 0, i32 1, !dbg !821
  store i32 7, ptr %99, align 8, !dbg !821
  %100 = getelementptr inbounds { i64, i32 }, ptr %_24, i32 0, i32 0, !dbg !822
  %101 = load i64, ptr %100, align 8, !dbg !822, !noundef !21
  %102 = getelementptr inbounds { i64, i32 }, ptr %_24, i32 0, i32 1, !dbg !822
  %103 = load i32, ptr %102, align 8, !dbg !822, !noundef !21
  %104 = getelementptr inbounds [5 x { i64, i32 }], ptr %expected_b, i64 0, i64 0, !dbg !822
  %105 = getelementptr inbounds { i64, i32 }, ptr %104, i32 0, i32 0, !dbg !822
  store i64 %101, ptr %105, align 8, !dbg !822
  %106 = getelementptr inbounds { i64, i32 }, ptr %104, i32 0, i32 1, !dbg !822
  store i32 %103, ptr %106, align 8, !dbg !822
  %107 = getelementptr inbounds { i64, i32 }, ptr %_25, i32 0, i32 0, !dbg !822
  %108 = load i64, ptr %107, align 8, !dbg !822, !noundef !21
  %109 = getelementptr inbounds { i64, i32 }, ptr %_25, i32 0, i32 1, !dbg !822
  %110 = load i32, ptr %109, align 8, !dbg !822, !noundef !21
  %111 = getelementptr inbounds [5 x { i64, i32 }], ptr %expected_b, i64 0, i64 1, !dbg !822
  %112 = getelementptr inbounds { i64, i32 }, ptr %111, i32 0, i32 0, !dbg !822
  store i64 %108, ptr %112, align 8, !dbg !822
  %113 = getelementptr inbounds { i64, i32 }, ptr %111, i32 0, i32 1, !dbg !822
  store i32 %110, ptr %113, align 8, !dbg !822
  %114 = getelementptr inbounds { i64, i32 }, ptr %_26, i32 0, i32 0, !dbg !822
  %115 = load i64, ptr %114, align 8, !dbg !822, !noundef !21
  %116 = getelementptr inbounds { i64, i32 }, ptr %_26, i32 0, i32 1, !dbg !822
  %117 = load i32, ptr %116, align 8, !dbg !822, !noundef !21
  %118 = getelementptr inbounds [5 x { i64, i32 }], ptr %expected_b, i64 0, i64 2, !dbg !822
  %119 = getelementptr inbounds { i64, i32 }, ptr %118, i32 0, i32 0, !dbg !822
  store i64 %115, ptr %119, align 8, !dbg !822
  %120 = getelementptr inbounds { i64, i32 }, ptr %118, i32 0, i32 1, !dbg !822
  store i32 %117, ptr %120, align 8, !dbg !822
  %121 = getelementptr inbounds { i64, i32 }, ptr %_27, i32 0, i32 0, !dbg !822
  %122 = load i64, ptr %121, align 8, !dbg !822, !noundef !21
  %123 = getelementptr inbounds { i64, i32 }, ptr %_27, i32 0, i32 1, !dbg !822
  %124 = load i32, ptr %123, align 8, !dbg !822, !noundef !21
  %125 = getelementptr inbounds [5 x { i64, i32 }], ptr %expected_b, i64 0, i64 3, !dbg !822
  %126 = getelementptr inbounds { i64, i32 }, ptr %125, i32 0, i32 0, !dbg !822
  store i64 %122, ptr %126, align 8, !dbg !822
  %127 = getelementptr inbounds { i64, i32 }, ptr %125, i32 0, i32 1, !dbg !822
  store i32 %124, ptr %127, align 8, !dbg !822
  %128 = getelementptr inbounds { i64, i32 }, ptr %_28, i32 0, i32 0, !dbg !822
  %129 = load i64, ptr %128, align 8, !dbg !822, !noundef !21
  %130 = getelementptr inbounds { i64, i32 }, ptr %_28, i32 0, i32 1, !dbg !822
  %131 = load i32, ptr %130, align 8, !dbg !822, !noundef !21
  %132 = getelementptr inbounds [5 x { i64, i32 }], ptr %expected_b, i64 0, i64 4, !dbg !822
  %133 = getelementptr inbounds { i64, i32 }, ptr %132, i32 0, i32 0, !dbg !822
  store i64 %129, ptr %133, align 8, !dbg !822
  %134 = getelementptr inbounds { i64, i32 }, ptr %132, i32 0, i32 1, !dbg !822
  store i32 %131, ptr %134, align 8, !dbg !822
  store i64 0, ptr %_30, align 8, !dbg !823
  %135 = getelementptr inbounds { i64, i64 }, ptr %_30, i32 0, i32 1, !dbg !823
  store i64 5, ptr %135, align 8, !dbg !823
  %136 = getelementptr inbounds { i64, i64 }, ptr %_30, i32 0, i32 0, !dbg !823
  %137 = load i64, ptr %136, align 8, !dbg !823, !noundef !21
  %138 = getelementptr inbounds { i64, i64 }, ptr %_30, i32 0, i32 1, !dbg !823
  %139 = load i64, ptr %138, align 8, !dbg !823, !noundef !21
  %140 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hb77d94a00def916aE"(i64 %137, i64 %139), !dbg !823
  %_29.0 = extractvalue { i64, i64 } %140, 0, !dbg !823
  %_29.1 = extractvalue { i64, i64 } %140, 1, !dbg !823
  %141 = getelementptr inbounds { i64, i64 }, ptr %iter, i32 0, i32 0, !dbg !823
  store i64 %_29.0, ptr %141, align 8, !dbg !823
  %142 = getelementptr inbounds { i64, i64 }, ptr %iter, i32 0, i32 1, !dbg !823
  store i64 %_29.1, ptr %142, align 8, !dbg !823
  br label %bb5, !dbg !824

bb5:                                              ; preds = %bb21, %repeat_loop_next
  %143 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17he59e48b2a12ae644E"(ptr align 8 %iter), !dbg !795
  store { i64, i64 } %143, ptr %_32, align 8, !dbg !795
  %_34 = load i64, ptr %_32, align 8, !dbg !795, !range !591, !noundef !21
  %144 = icmp eq i64 %_34, 0, !dbg !795
  br i1 %144, label %bb9, label %bb7, !dbg !795

bb9:                                              ; preds = %bb5
  store i8 1, ptr %0, align 1, !dbg !825
  br label %bb27, !dbg !826

bb7:                                              ; preds = %bb5
  %145 = getelementptr inbounds { i64, i64 }, ptr %_32, i32 0, i32 1, !dbg !827
  %i = load i64, ptr %145, align 8, !dbg !827, !noundef !21
  store i64 %i, ptr %i.dbg.spill, align 8, !dbg !827
    #dbg_declare(ptr %i.dbg.spill, !789, !DIExpression(), !828)
  %_40 = icmp ult i64 %i, 5, !dbg !829
  %146 = call i1 @llvm.expect.i1(i1 %_40, i1 true), !dbg !829
  br i1 %146, label %bb13, label %panic, !dbg !829

bb8:                                              ; No predecessors!
  unreachable, !dbg !795

bb13:                                             ; preds = %bb7
  %147 = getelementptr inbounds [5 x { i64, i32 }], ptr %a, i64 0, i64 %i, !dbg !829
  %_38 = load i64, ptr %147, align 8, !dbg !829, !noundef !21
  %_43 = icmp ult i64 %i, 5, !dbg !830
  %148 = call i1 @llvm.expect.i1(i1 %_43, i1 true), !dbg !830
  br i1 %148, label %bb14, label %panic1, !dbg !830

panic:                                            ; preds = %bb7
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 5, ptr align 8 @alloc_caf1d5f26039f3acf8baf49fc24418cc) #6, !dbg !829
  unreachable, !dbg !829

bb14:                                             ; preds = %bb13
  %149 = getelementptr inbounds [5 x { i64, i32 }], ptr %expected_a, i64 0, i64 %i, !dbg !830
  %_41 = load i64, ptr %149, align 8, !dbg !830, !noundef !21
  %_37 = icmp ne i64 %_38, %_41, !dbg !829
  br i1 %_37, label %bb10, label %bb11, !dbg !829

panic1:                                           ; preds = %bb13
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 5, ptr align 8 @alloc_2eff58e5948ef50df910e0170ace8054) #6, !dbg !830
  unreachable, !dbg !830

bb11:                                             ; preds = %bb14
  %_47 = icmp ult i64 %i, 5, !dbg !831
  %150 = call i1 @llvm.expect.i1(i1 %_47, i1 true), !dbg !831
  br i1 %150, label %bb15, label %panic2, !dbg !831

bb10:                                             ; preds = %bb14
  store i8 1, ptr %_36, align 1, !dbg !829
  br label %bb12, !dbg !829

bb12:                                             ; preds = %bb16, %bb10
  %151 = load i8, ptr %_36, align 1, !dbg !829, !range !287, !noundef !21
  %152 = trunc i8 %151 to i1, !dbg !829
  br i1 %152, label %bb17, label %bb18, !dbg !829

bb15:                                             ; preds = %bb11
  %153 = getelementptr inbounds [5 x { i64, i32 }], ptr %a, i64 0, i64 %i, !dbg !831
  %154 = getelementptr inbounds { i64, i32 }, ptr %153, i32 0, i32 1, !dbg !831
  %_45 = load i32, ptr %154, align 8, !dbg !831, !noundef !21
  %_50 = icmp ult i64 %i, 5, !dbg !832
  %155 = call i1 @llvm.expect.i1(i1 %_50, i1 true), !dbg !832
  br i1 %155, label %bb16, label %panic3, !dbg !832

panic2:                                           ; preds = %bb11
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 5, ptr align 8 @alloc_cd537a2a236de58e02d2fd7002459d83) #6, !dbg !831
  unreachable, !dbg !831

bb16:                                             ; preds = %bb15
  %156 = getelementptr inbounds [5 x { i64, i32 }], ptr %expected_a, i64 0, i64 %i, !dbg !832
  %157 = getelementptr inbounds { i64, i32 }, ptr %156, i32 0, i32 1, !dbg !832
  %_48 = load i32, ptr %157, align 8, !dbg !832, !noundef !21
  %_44 = icmp ne i32 %_45, %_48, !dbg !831
  %158 = zext i1 %_44 to i8, !dbg !829
  store i8 %158, ptr %_36, align 1, !dbg !829
  br label %bb12, !dbg !829

panic3:                                           ; preds = %bb15
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 5, ptr align 8 @alloc_7d10da694911bd6794d5c5a8bde2c6b3) #6, !dbg !832
  unreachable, !dbg !832

bb18:                                             ; preds = %bb12
  %_55 = icmp ult i64 %i, 5, !dbg !833
  %159 = call i1 @llvm.expect.i1(i1 %_55, i1 true), !dbg !833
  br i1 %159, label %bb22, label %panic4, !dbg !833

bb17:                                             ; preds = %bb12
  store i8 0, ptr %0, align 1, !dbg !834
  br label %bb27, !dbg !835

bb27:                                             ; preds = %bb26, %bb17, %bb9
  %160 = load i8, ptr %0, align 1, !dbg !826, !range !287, !noundef !21
  %161 = trunc i8 %160 to i1, !dbg !826
  ret i1 %161, !dbg !826

bb22:                                             ; preds = %bb18
  %162 = getelementptr inbounds [5 x { i64, i32 }], ptr %b, i64 0, i64 %i, !dbg !833
  %_53 = load i64, ptr %162, align 8, !dbg !833, !noundef !21
  %_58 = icmp ult i64 %i, 5, !dbg !837
  %163 = call i1 @llvm.expect.i1(i1 %_58, i1 true), !dbg !837
  br i1 %163, label %bb23, label %panic5, !dbg !837

panic4:                                           ; preds = %bb18
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 5, ptr align 8 @alloc_c91546f8b76b1c2e0c5bd511f8c917f9) #6, !dbg !833
  unreachable, !dbg !833

bb23:                                             ; preds = %bb22
  %164 = getelementptr inbounds [5 x { i64, i32 }], ptr %expected_b, i64 0, i64 %i, !dbg !837
  %_56 = load i64, ptr %164, align 8, !dbg !837, !noundef !21
  %_52 = icmp ne i64 %_53, %_56, !dbg !833
  br i1 %_52, label %bb19, label %bb20, !dbg !833

panic5:                                           ; preds = %bb22
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 5, ptr align 8 @alloc_47b4105c0c4ecaac993a232f455fd206) #6, !dbg !837
  unreachable, !dbg !837

bb20:                                             ; preds = %bb23
  %_62 = icmp ult i64 %i, 5, !dbg !838
  %165 = call i1 @llvm.expect.i1(i1 %_62, i1 true), !dbg !838
  br i1 %165, label %bb24, label %panic6, !dbg !838

bb19:                                             ; preds = %bb23
  store i8 1, ptr %_51, align 1, !dbg !833
  br label %bb21, !dbg !833

bb21:                                             ; preds = %bb25, %bb19
  %166 = load i8, ptr %_51, align 1, !dbg !833, !range !287, !noundef !21
  %167 = trunc i8 %166 to i1, !dbg !833
  br i1 %167, label %bb26, label %bb5, !dbg !833

bb24:                                             ; preds = %bb20
  %168 = getelementptr inbounds [5 x { i64, i32 }], ptr %b, i64 0, i64 %i, !dbg !838
  %169 = getelementptr inbounds { i64, i32 }, ptr %168, i32 0, i32 1, !dbg !838
  %_60 = load i32, ptr %169, align 8, !dbg !838, !noundef !21
  %_65 = icmp ult i64 %i, 5, !dbg !839
  %170 = call i1 @llvm.expect.i1(i1 %_65, i1 true), !dbg !839
  br i1 %170, label %bb25, label %panic7, !dbg !839

panic6:                                           ; preds = %bb20
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 5, ptr align 8 @alloc_78591ffaa67e9d8cca926aaf21af1da6) #6, !dbg !838
  unreachable, !dbg !838

bb25:                                             ; preds = %bb24
  %171 = getelementptr inbounds [5 x { i64, i32 }], ptr %expected_b, i64 0, i64 %i, !dbg !839
  %172 = getelementptr inbounds { i64, i32 }, ptr %171, i32 0, i32 1, !dbg !839
  %_63 = load i32, ptr %172, align 8, !dbg !839, !noundef !21
  %_59 = icmp ne i32 %_60, %_63, !dbg !838
  %173 = zext i1 %_59 to i8, !dbg !833
  store i8 %173, ptr %_51, align 1, !dbg !833
  br label %bb21, !dbg !833

panic7:                                           ; preds = %bb24
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 5, ptr align 8 @alloc_2351454c164546c6f318f8437a585e54) #6, !dbg !839
  unreachable, !dbg !839

bb26:                                             ; preds = %bb21
  store i8 0, ptr %0, align 1, !dbg !840
  br label %bb27, !dbg !835
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_4() unnamed_addr #0 !dbg !841 {
start:
  %self.dbg.spill.i8 = alloca { ptr, i64 }, align 8
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %i.dbg.spill = alloca i64, align 8
  %size.dbg.spill = alloca i32, align 4
  %_51 = alloca i8, align 1
  %_36 = alloca i8, align 1
  %_32 = alloca { i64, i64 }, align 8
  %iter = alloca { i64, i64 }, align 8
  %_30 = alloca { i64, i64 }, align 8
  %_28 = alloca { i64, i32 }, align 8
  %_27 = alloca { i64, i32 }, align 8
  %_26 = alloca { i64, i32 }, align 8
  %_25 = alloca { i64, i32 }, align 8
  %_24 = alloca { i64, i32 }, align 8
  %expected_b = alloca [5 x { i64, i32 }], align 8
  %_22 = alloca { i64, i32 }, align 8
  %_21 = alloca { i64, i32 }, align 8
  %_20 = alloca { i64, i32 }, align 8
  %_19 = alloca { i64, i32 }, align 8
  %_18 = alloca { i64, i32 }, align 8
  %expected_a = alloca [5 x { i64, i32 }], align 8
  %_8 = alloca { i64, i32 }, align 8
  %b = alloca [5 x { i64, i32 }], align 8
  %_6 = alloca { i64, i32 }, align 8
  %_5 = alloca { i64, i32 }, align 8
  %_4 = alloca { i64, i32 }, align 8
  %_3 = alloca { i64, i32 }, align 8
  %_2 = alloca { i64, i32 }, align 8
  %a = alloca [5 x { i64, i32 }], align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %a, !843, !DIExpression(), !857)
    #dbg_declare(ptr %b, !845, !DIExpression(), !858)
    #dbg_declare(ptr %expected_a, !849, !DIExpression(), !859)
    #dbg_declare(ptr %expected_b, !851, !DIExpression(), !860)
    #dbg_declare(ptr %iter, !853, !DIExpression(), !861)
  store i64 15, ptr %_2, align 8, !dbg !862
  %1 = getelementptr inbounds { i64, i32 }, ptr %_2, i32 0, i32 1, !dbg !862
  store i32 5, ptr %1, align 8, !dbg !862
  store i64 3, ptr %_3, align 8, !dbg !863
  %2 = getelementptr inbounds { i64, i32 }, ptr %_3, i32 0, i32 1, !dbg !863
  store i32 4, ptr %2, align 8, !dbg !863
  store i64 33, ptr %_4, align 8, !dbg !864
  %3 = getelementptr inbounds { i64, i32 }, ptr %_4, i32 0, i32 1, !dbg !864
  store i32 3, ptr %3, align 8, !dbg !864
  store i64 1, ptr %_5, align 8, !dbg !865
  %4 = getelementptr inbounds { i64, i32 }, ptr %_5, i32 0, i32 1, !dbg !865
  store i32 2, ptr %4, align 8, !dbg !865
  store i64 14, ptr %_6, align 8, !dbg !866
  %5 = getelementptr inbounds { i64, i32 }, ptr %_6, i32 0, i32 1, !dbg !866
  store i32 1, ptr %5, align 8, !dbg !866
  %6 = getelementptr inbounds { i64, i32 }, ptr %_2, i32 0, i32 0, !dbg !867
  %7 = load i64, ptr %6, align 8, !dbg !867, !noundef !21
  %8 = getelementptr inbounds { i64, i32 }, ptr %_2, i32 0, i32 1, !dbg !867
  %9 = load i32, ptr %8, align 8, !dbg !867, !noundef !21
  %10 = getelementptr inbounds [5 x { i64, i32 }], ptr %a, i64 0, i64 0, !dbg !867
  %11 = getelementptr inbounds { i64, i32 }, ptr %10, i32 0, i32 0, !dbg !867
  store i64 %7, ptr %11, align 8, !dbg !867
  %12 = getelementptr inbounds { i64, i32 }, ptr %10, i32 0, i32 1, !dbg !867
  store i32 %9, ptr %12, align 8, !dbg !867
  %13 = getelementptr inbounds { i64, i32 }, ptr %_3, i32 0, i32 0, !dbg !867
  %14 = load i64, ptr %13, align 8, !dbg !867, !noundef !21
  %15 = getelementptr inbounds { i64, i32 }, ptr %_3, i32 0, i32 1, !dbg !867
  %16 = load i32, ptr %15, align 8, !dbg !867, !noundef !21
  %17 = getelementptr inbounds [5 x { i64, i32 }], ptr %a, i64 0, i64 1, !dbg !867
  %18 = getelementptr inbounds { i64, i32 }, ptr %17, i32 0, i32 0, !dbg !867
  store i64 %14, ptr %18, align 8, !dbg !867
  %19 = getelementptr inbounds { i64, i32 }, ptr %17, i32 0, i32 1, !dbg !867
  store i32 %16, ptr %19, align 8, !dbg !867
  %20 = getelementptr inbounds { i64, i32 }, ptr %_4, i32 0, i32 0, !dbg !867
  %21 = load i64, ptr %20, align 8, !dbg !867, !noundef !21
  %22 = getelementptr inbounds { i64, i32 }, ptr %_4, i32 0, i32 1, !dbg !867
  %23 = load i32, ptr %22, align 8, !dbg !867, !noundef !21
  %24 = getelementptr inbounds [5 x { i64, i32 }], ptr %a, i64 0, i64 2, !dbg !867
  %25 = getelementptr inbounds { i64, i32 }, ptr %24, i32 0, i32 0, !dbg !867
  store i64 %21, ptr %25, align 8, !dbg !867
  %26 = getelementptr inbounds { i64, i32 }, ptr %24, i32 0, i32 1, !dbg !867
  store i32 %23, ptr %26, align 8, !dbg !867
  %27 = getelementptr inbounds { i64, i32 }, ptr %_5, i32 0, i32 0, !dbg !867
  %28 = load i64, ptr %27, align 8, !dbg !867, !noundef !21
  %29 = getelementptr inbounds { i64, i32 }, ptr %_5, i32 0, i32 1, !dbg !867
  %30 = load i32, ptr %29, align 8, !dbg !867, !noundef !21
  %31 = getelementptr inbounds [5 x { i64, i32 }], ptr %a, i64 0, i64 3, !dbg !867
  %32 = getelementptr inbounds { i64, i32 }, ptr %31, i32 0, i32 0, !dbg !867
  store i64 %28, ptr %32, align 8, !dbg !867
  %33 = getelementptr inbounds { i64, i32 }, ptr %31, i32 0, i32 1, !dbg !867
  store i32 %30, ptr %33, align 8, !dbg !867
  %34 = getelementptr inbounds { i64, i32 }, ptr %_6, i32 0, i32 0, !dbg !867
  %35 = load i64, ptr %34, align 8, !dbg !867, !noundef !21
  %36 = getelementptr inbounds { i64, i32 }, ptr %_6, i32 0, i32 1, !dbg !867
  %37 = load i32, ptr %36, align 8, !dbg !867, !noundef !21
  %38 = getelementptr inbounds [5 x { i64, i32 }], ptr %a, i64 0, i64 4, !dbg !867
  %39 = getelementptr inbounds { i64, i32 }, ptr %38, i32 0, i32 0, !dbg !867
  store i64 %35, ptr %39, align 8, !dbg !867
  %40 = getelementptr inbounds { i64, i32 }, ptr %38, i32 0, i32 1, !dbg !867
  store i32 %37, ptr %40, align 8, !dbg !867
  store i64 0, ptr %_8, align 8, !dbg !868
  %41 = getelementptr inbounds { i64, i32 }, ptr %_8, i32 0, i32 1, !dbg !868
  store i32 0, ptr %41, align 8, !dbg !868
  %42 = getelementptr inbounds { i64, i32 }, ptr %_8, i32 0, i32 0, !dbg !869
  %43 = load i64, ptr %42, align 8, !dbg !869, !noundef !21
  %44 = getelementptr inbounds { i64, i32 }, ptr %_8, i32 0, i32 1, !dbg !869
  %45 = load i32, ptr %44, align 8, !dbg !869, !noundef !21
  %46 = getelementptr inbounds [5 x { i64, i32 }], ptr %b, i64 0, i64 0, !dbg !869
  %47 = getelementptr inbounds [5 x { i64, i32 }], ptr %b, i64 0, i64 5, !dbg !869
  br label %repeat_loop_header, !dbg !869

repeat_loop_header:                               ; preds = %repeat_loop_body, %start
  %48 = phi ptr [ %46, %start ], [ %52, %repeat_loop_body ]
  %49 = icmp ne ptr %48, %47
  br i1 %49, label %repeat_loop_body, label %repeat_loop_next

repeat_loop_body:                                 ; preds = %repeat_loop_header
  %50 = getelementptr inbounds { i64, i32 }, ptr %48, i32 0, i32 0
  store i64 %43, ptr %50, align 8
  %51 = getelementptr inbounds { i64, i32 }, ptr %48, i32 0, i32 1
  store i32 %45, ptr %51, align 8
  %52 = getelementptr inbounds { i64, i32 }, ptr %48, i64 1
  br label %repeat_loop_header

repeat_loop_next:                                 ; preds = %repeat_loop_header
  store i32 5, ptr %size.dbg.spill, align 4, !dbg !870
    #dbg_declare(ptr %size.dbg.spill, !847, !DIExpression(), !871)
  store ptr %a, ptr %self.dbg.spill.i8, align 8
  %53 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i8, i32 0, i32 1
  store i64 5, ptr %53, align 8
    #dbg_declare(ptr %self.dbg.spill.i8, !569, !DIExpression(), !872)
  store ptr %b, ptr %self.dbg.spill.i, align 8
  %54 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 5, ptr %54, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !569, !DIExpression(), !874)
  call void @merge_sort(ptr %a, ptr %b, i32 5), !dbg !876
  store i64 14, ptr %_18, align 8, !dbg !877
  %55 = getelementptr inbounds { i64, i32 }, ptr %_18, i32 0, i32 1, !dbg !877
  store i32 1, ptr %55, align 8, !dbg !877
  store i64 1, ptr %_19, align 8, !dbg !878
  %56 = getelementptr inbounds { i64, i32 }, ptr %_19, i32 0, i32 1, !dbg !878
  store i32 2, ptr %56, align 8, !dbg !878
  store i64 33, ptr %_20, align 8, !dbg !879
  %57 = getelementptr inbounds { i64, i32 }, ptr %_20, i32 0, i32 1, !dbg !879
  store i32 3, ptr %57, align 8, !dbg !879
  store i64 3, ptr %_21, align 8, !dbg !880
  %58 = getelementptr inbounds { i64, i32 }, ptr %_21, i32 0, i32 1, !dbg !880
  store i32 4, ptr %58, align 8, !dbg !880
  store i64 15, ptr %_22, align 8, !dbg !881
  %59 = getelementptr inbounds { i64, i32 }, ptr %_22, i32 0, i32 1, !dbg !881
  store i32 5, ptr %59, align 8, !dbg !881
  %60 = getelementptr inbounds { i64, i32 }, ptr %_18, i32 0, i32 0, !dbg !882
  %61 = load i64, ptr %60, align 8, !dbg !882, !noundef !21
  %62 = getelementptr inbounds { i64, i32 }, ptr %_18, i32 0, i32 1, !dbg !882
  %63 = load i32, ptr %62, align 8, !dbg !882, !noundef !21
  %64 = getelementptr inbounds [5 x { i64, i32 }], ptr %expected_a, i64 0, i64 0, !dbg !882
  %65 = getelementptr inbounds { i64, i32 }, ptr %64, i32 0, i32 0, !dbg !882
  store i64 %61, ptr %65, align 8, !dbg !882
  %66 = getelementptr inbounds { i64, i32 }, ptr %64, i32 0, i32 1, !dbg !882
  store i32 %63, ptr %66, align 8, !dbg !882
  %67 = getelementptr inbounds { i64, i32 }, ptr %_19, i32 0, i32 0, !dbg !882
  %68 = load i64, ptr %67, align 8, !dbg !882, !noundef !21
  %69 = getelementptr inbounds { i64, i32 }, ptr %_19, i32 0, i32 1, !dbg !882
  %70 = load i32, ptr %69, align 8, !dbg !882, !noundef !21
  %71 = getelementptr inbounds [5 x { i64, i32 }], ptr %expected_a, i64 0, i64 1, !dbg !882
  %72 = getelementptr inbounds { i64, i32 }, ptr %71, i32 0, i32 0, !dbg !882
  store i64 %68, ptr %72, align 8, !dbg !882
  %73 = getelementptr inbounds { i64, i32 }, ptr %71, i32 0, i32 1, !dbg !882
  store i32 %70, ptr %73, align 8, !dbg !882
  %74 = getelementptr inbounds { i64, i32 }, ptr %_20, i32 0, i32 0, !dbg !882
  %75 = load i64, ptr %74, align 8, !dbg !882, !noundef !21
  %76 = getelementptr inbounds { i64, i32 }, ptr %_20, i32 0, i32 1, !dbg !882
  %77 = load i32, ptr %76, align 8, !dbg !882, !noundef !21
  %78 = getelementptr inbounds [5 x { i64, i32 }], ptr %expected_a, i64 0, i64 2, !dbg !882
  %79 = getelementptr inbounds { i64, i32 }, ptr %78, i32 0, i32 0, !dbg !882
  store i64 %75, ptr %79, align 8, !dbg !882
  %80 = getelementptr inbounds { i64, i32 }, ptr %78, i32 0, i32 1, !dbg !882
  store i32 %77, ptr %80, align 8, !dbg !882
  %81 = getelementptr inbounds { i64, i32 }, ptr %_21, i32 0, i32 0, !dbg !882
  %82 = load i64, ptr %81, align 8, !dbg !882, !noundef !21
  %83 = getelementptr inbounds { i64, i32 }, ptr %_21, i32 0, i32 1, !dbg !882
  %84 = load i32, ptr %83, align 8, !dbg !882, !noundef !21
  %85 = getelementptr inbounds [5 x { i64, i32 }], ptr %expected_a, i64 0, i64 3, !dbg !882
  %86 = getelementptr inbounds { i64, i32 }, ptr %85, i32 0, i32 0, !dbg !882
  store i64 %82, ptr %86, align 8, !dbg !882
  %87 = getelementptr inbounds { i64, i32 }, ptr %85, i32 0, i32 1, !dbg !882
  store i32 %84, ptr %87, align 8, !dbg !882
  %88 = getelementptr inbounds { i64, i32 }, ptr %_22, i32 0, i32 0, !dbg !882
  %89 = load i64, ptr %88, align 8, !dbg !882, !noundef !21
  %90 = getelementptr inbounds { i64, i32 }, ptr %_22, i32 0, i32 1, !dbg !882
  %91 = load i32, ptr %90, align 8, !dbg !882, !noundef !21
  %92 = getelementptr inbounds [5 x { i64, i32 }], ptr %expected_a, i64 0, i64 4, !dbg !882
  %93 = getelementptr inbounds { i64, i32 }, ptr %92, i32 0, i32 0, !dbg !882
  store i64 %89, ptr %93, align 8, !dbg !882
  %94 = getelementptr inbounds { i64, i32 }, ptr %92, i32 0, i32 1, !dbg !882
  store i32 %91, ptr %94, align 8, !dbg !882
  store i64 3, ptr %_24, align 8, !dbg !883
  %95 = getelementptr inbounds { i64, i32 }, ptr %_24, i32 0, i32 1, !dbg !883
  store i32 4, ptr %95, align 8, !dbg !883
  store i64 15, ptr %_25, align 8, !dbg !884
  %96 = getelementptr inbounds { i64, i32 }, ptr %_25, i32 0, i32 1, !dbg !884
  store i32 5, ptr %96, align 8, !dbg !884
  store i64 14, ptr %_26, align 8, !dbg !885
  %97 = getelementptr inbounds { i64, i32 }, ptr %_26, i32 0, i32 1, !dbg !885
  store i32 1, ptr %97, align 8, !dbg !885
  store i64 1, ptr %_27, align 8, !dbg !886
  %98 = getelementptr inbounds { i64, i32 }, ptr %_27, i32 0, i32 1, !dbg !886
  store i32 2, ptr %98, align 8, !dbg !886
  store i64 33, ptr %_28, align 8, !dbg !887
  %99 = getelementptr inbounds { i64, i32 }, ptr %_28, i32 0, i32 1, !dbg !887
  store i32 3, ptr %99, align 8, !dbg !887
  %100 = getelementptr inbounds { i64, i32 }, ptr %_24, i32 0, i32 0, !dbg !888
  %101 = load i64, ptr %100, align 8, !dbg !888, !noundef !21
  %102 = getelementptr inbounds { i64, i32 }, ptr %_24, i32 0, i32 1, !dbg !888
  %103 = load i32, ptr %102, align 8, !dbg !888, !noundef !21
  %104 = getelementptr inbounds [5 x { i64, i32 }], ptr %expected_b, i64 0, i64 0, !dbg !888
  %105 = getelementptr inbounds { i64, i32 }, ptr %104, i32 0, i32 0, !dbg !888
  store i64 %101, ptr %105, align 8, !dbg !888
  %106 = getelementptr inbounds { i64, i32 }, ptr %104, i32 0, i32 1, !dbg !888
  store i32 %103, ptr %106, align 8, !dbg !888
  %107 = getelementptr inbounds { i64, i32 }, ptr %_25, i32 0, i32 0, !dbg !888
  %108 = load i64, ptr %107, align 8, !dbg !888, !noundef !21
  %109 = getelementptr inbounds { i64, i32 }, ptr %_25, i32 0, i32 1, !dbg !888
  %110 = load i32, ptr %109, align 8, !dbg !888, !noundef !21
  %111 = getelementptr inbounds [5 x { i64, i32 }], ptr %expected_b, i64 0, i64 1, !dbg !888
  %112 = getelementptr inbounds { i64, i32 }, ptr %111, i32 0, i32 0, !dbg !888
  store i64 %108, ptr %112, align 8, !dbg !888
  %113 = getelementptr inbounds { i64, i32 }, ptr %111, i32 0, i32 1, !dbg !888
  store i32 %110, ptr %113, align 8, !dbg !888
  %114 = getelementptr inbounds { i64, i32 }, ptr %_26, i32 0, i32 0, !dbg !888
  %115 = load i64, ptr %114, align 8, !dbg !888, !noundef !21
  %116 = getelementptr inbounds { i64, i32 }, ptr %_26, i32 0, i32 1, !dbg !888
  %117 = load i32, ptr %116, align 8, !dbg !888, !noundef !21
  %118 = getelementptr inbounds [5 x { i64, i32 }], ptr %expected_b, i64 0, i64 2, !dbg !888
  %119 = getelementptr inbounds { i64, i32 }, ptr %118, i32 0, i32 0, !dbg !888
  store i64 %115, ptr %119, align 8, !dbg !888
  %120 = getelementptr inbounds { i64, i32 }, ptr %118, i32 0, i32 1, !dbg !888
  store i32 %117, ptr %120, align 8, !dbg !888
  %121 = getelementptr inbounds { i64, i32 }, ptr %_27, i32 0, i32 0, !dbg !888
  %122 = load i64, ptr %121, align 8, !dbg !888, !noundef !21
  %123 = getelementptr inbounds { i64, i32 }, ptr %_27, i32 0, i32 1, !dbg !888
  %124 = load i32, ptr %123, align 8, !dbg !888, !noundef !21
  %125 = getelementptr inbounds [5 x { i64, i32 }], ptr %expected_b, i64 0, i64 3, !dbg !888
  %126 = getelementptr inbounds { i64, i32 }, ptr %125, i32 0, i32 0, !dbg !888
  store i64 %122, ptr %126, align 8, !dbg !888
  %127 = getelementptr inbounds { i64, i32 }, ptr %125, i32 0, i32 1, !dbg !888
  store i32 %124, ptr %127, align 8, !dbg !888
  %128 = getelementptr inbounds { i64, i32 }, ptr %_28, i32 0, i32 0, !dbg !888
  %129 = load i64, ptr %128, align 8, !dbg !888, !noundef !21
  %130 = getelementptr inbounds { i64, i32 }, ptr %_28, i32 0, i32 1, !dbg !888
  %131 = load i32, ptr %130, align 8, !dbg !888, !noundef !21
  %132 = getelementptr inbounds [5 x { i64, i32 }], ptr %expected_b, i64 0, i64 4, !dbg !888
  %133 = getelementptr inbounds { i64, i32 }, ptr %132, i32 0, i32 0, !dbg !888
  store i64 %129, ptr %133, align 8, !dbg !888
  %134 = getelementptr inbounds { i64, i32 }, ptr %132, i32 0, i32 1, !dbg !888
  store i32 %131, ptr %134, align 8, !dbg !888
  store i64 0, ptr %_30, align 8, !dbg !889
  %135 = getelementptr inbounds { i64, i64 }, ptr %_30, i32 0, i32 1, !dbg !889
  store i64 5, ptr %135, align 8, !dbg !889
  %136 = getelementptr inbounds { i64, i64 }, ptr %_30, i32 0, i32 0, !dbg !889
  %137 = load i64, ptr %136, align 8, !dbg !889, !noundef !21
  %138 = getelementptr inbounds { i64, i64 }, ptr %_30, i32 0, i32 1, !dbg !889
  %139 = load i64, ptr %138, align 8, !dbg !889, !noundef !21
  %140 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hb77d94a00def916aE"(i64 %137, i64 %139), !dbg !889
  %_29.0 = extractvalue { i64, i64 } %140, 0, !dbg !889
  %_29.1 = extractvalue { i64, i64 } %140, 1, !dbg !889
  %141 = getelementptr inbounds { i64, i64 }, ptr %iter, i32 0, i32 0, !dbg !889
  store i64 %_29.0, ptr %141, align 8, !dbg !889
  %142 = getelementptr inbounds { i64, i64 }, ptr %iter, i32 0, i32 1, !dbg !889
  store i64 %_29.1, ptr %142, align 8, !dbg !889
  br label %bb5, !dbg !890

bb5:                                              ; preds = %bb21, %repeat_loop_next
  %143 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17he59e48b2a12ae644E"(ptr align 8 %iter), !dbg !861
  store { i64, i64 } %143, ptr %_32, align 8, !dbg !861
  %_34 = load i64, ptr %_32, align 8, !dbg !861, !range !591, !noundef !21
  %144 = icmp eq i64 %_34, 0, !dbg !861
  br i1 %144, label %bb9, label %bb7, !dbg !861

bb9:                                              ; preds = %bb5
  store i8 1, ptr %0, align 1, !dbg !891
  br label %bb27, !dbg !892

bb7:                                              ; preds = %bb5
  %145 = getelementptr inbounds { i64, i64 }, ptr %_32, i32 0, i32 1, !dbg !893
  %i = load i64, ptr %145, align 8, !dbg !893, !noundef !21
  store i64 %i, ptr %i.dbg.spill, align 8, !dbg !893
    #dbg_declare(ptr %i.dbg.spill, !855, !DIExpression(), !894)
  %_40 = icmp ult i64 %i, 5, !dbg !895
  %146 = call i1 @llvm.expect.i1(i1 %_40, i1 true), !dbg !895
  br i1 %146, label %bb13, label %panic, !dbg !895

bb8:                                              ; No predecessors!
  unreachable, !dbg !861

bb13:                                             ; preds = %bb7
  %147 = getelementptr inbounds [5 x { i64, i32 }], ptr %a, i64 0, i64 %i, !dbg !895
  %_38 = load i64, ptr %147, align 8, !dbg !895, !noundef !21
  %_43 = icmp ult i64 %i, 5, !dbg !896
  %148 = call i1 @llvm.expect.i1(i1 %_43, i1 true), !dbg !896
  br i1 %148, label %bb14, label %panic1, !dbg !896

panic:                                            ; preds = %bb7
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 5, ptr align 8 @alloc_3058c700e64d44ea2b3f0f0d0211c2d5) #6, !dbg !895
  unreachable, !dbg !895

bb14:                                             ; preds = %bb13
  %149 = getelementptr inbounds [5 x { i64, i32 }], ptr %expected_a, i64 0, i64 %i, !dbg !896
  %_41 = load i64, ptr %149, align 8, !dbg !896, !noundef !21
  %_37 = icmp ne i64 %_38, %_41, !dbg !895
  br i1 %_37, label %bb10, label %bb11, !dbg !895

panic1:                                           ; preds = %bb13
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 5, ptr align 8 @alloc_6766ab5217a5330301fe1d614447f7f5) #6, !dbg !896
  unreachable, !dbg !896

bb11:                                             ; preds = %bb14
  %_47 = icmp ult i64 %i, 5, !dbg !897
  %150 = call i1 @llvm.expect.i1(i1 %_47, i1 true), !dbg !897
  br i1 %150, label %bb15, label %panic2, !dbg !897

bb10:                                             ; preds = %bb14
  store i8 1, ptr %_36, align 1, !dbg !895
  br label %bb12, !dbg !895

bb12:                                             ; preds = %bb16, %bb10
  %151 = load i8, ptr %_36, align 1, !dbg !895, !range !287, !noundef !21
  %152 = trunc i8 %151 to i1, !dbg !895
  br i1 %152, label %bb17, label %bb18, !dbg !895

bb15:                                             ; preds = %bb11
  %153 = getelementptr inbounds [5 x { i64, i32 }], ptr %a, i64 0, i64 %i, !dbg !897
  %154 = getelementptr inbounds { i64, i32 }, ptr %153, i32 0, i32 1, !dbg !897
  %_45 = load i32, ptr %154, align 8, !dbg !897, !noundef !21
  %_50 = icmp ult i64 %i, 5, !dbg !898
  %155 = call i1 @llvm.expect.i1(i1 %_50, i1 true), !dbg !898
  br i1 %155, label %bb16, label %panic3, !dbg !898

panic2:                                           ; preds = %bb11
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 5, ptr align 8 @alloc_c20feff762f3a60975ba146b96e98390) #6, !dbg !897
  unreachable, !dbg !897

bb16:                                             ; preds = %bb15
  %156 = getelementptr inbounds [5 x { i64, i32 }], ptr %expected_a, i64 0, i64 %i, !dbg !898
  %157 = getelementptr inbounds { i64, i32 }, ptr %156, i32 0, i32 1, !dbg !898
  %_48 = load i32, ptr %157, align 8, !dbg !898, !noundef !21
  %_44 = icmp ne i32 %_45, %_48, !dbg !897
  %158 = zext i1 %_44 to i8, !dbg !895
  store i8 %158, ptr %_36, align 1, !dbg !895
  br label %bb12, !dbg !895

panic3:                                           ; preds = %bb15
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 5, ptr align 8 @alloc_cabd1938fdfa0e70adb9498a7040b2fa) #6, !dbg !898
  unreachable, !dbg !898

bb18:                                             ; preds = %bb12
  %_55 = icmp ult i64 %i, 5, !dbg !899
  %159 = call i1 @llvm.expect.i1(i1 %_55, i1 true), !dbg !899
  br i1 %159, label %bb22, label %panic4, !dbg !899

bb17:                                             ; preds = %bb12
  store i8 0, ptr %0, align 1, !dbg !900
  br label %bb27, !dbg !901

bb27:                                             ; preds = %bb26, %bb17, %bb9
  %160 = load i8, ptr %0, align 1, !dbg !892, !range !287, !noundef !21
  %161 = trunc i8 %160 to i1, !dbg !892
  ret i1 %161, !dbg !892

bb22:                                             ; preds = %bb18
  %162 = getelementptr inbounds [5 x { i64, i32 }], ptr %b, i64 0, i64 %i, !dbg !899
  %_53 = load i64, ptr %162, align 8, !dbg !899, !noundef !21
  %_58 = icmp ult i64 %i, 5, !dbg !903
  %163 = call i1 @llvm.expect.i1(i1 %_58, i1 true), !dbg !903
  br i1 %163, label %bb23, label %panic5, !dbg !903

panic4:                                           ; preds = %bb18
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 5, ptr align 8 @alloc_7b20bd8eab53e01e182e780c986e4c42) #6, !dbg !899
  unreachable, !dbg !899

bb23:                                             ; preds = %bb22
  %164 = getelementptr inbounds [5 x { i64, i32 }], ptr %expected_b, i64 0, i64 %i, !dbg !903
  %_56 = load i64, ptr %164, align 8, !dbg !903, !noundef !21
  %_52 = icmp ne i64 %_53, %_56, !dbg !899
  br i1 %_52, label %bb19, label %bb20, !dbg !899

panic5:                                           ; preds = %bb22
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 5, ptr align 8 @alloc_af22ac31d7907a3e6a596ab0da0a2d8b) #6, !dbg !903
  unreachable, !dbg !903

bb20:                                             ; preds = %bb23
  %_62 = icmp ult i64 %i, 5, !dbg !904
  %165 = call i1 @llvm.expect.i1(i1 %_62, i1 true), !dbg !904
  br i1 %165, label %bb24, label %panic6, !dbg !904

bb19:                                             ; preds = %bb23
  store i8 1, ptr %_51, align 1, !dbg !899
  br label %bb21, !dbg !899

bb21:                                             ; preds = %bb25, %bb19
  %166 = load i8, ptr %_51, align 1, !dbg !899, !range !287, !noundef !21
  %167 = trunc i8 %166 to i1, !dbg !899
  br i1 %167, label %bb26, label %bb5, !dbg !899

bb24:                                             ; preds = %bb20
  %168 = getelementptr inbounds [5 x { i64, i32 }], ptr %b, i64 0, i64 %i, !dbg !904
  %169 = getelementptr inbounds { i64, i32 }, ptr %168, i32 0, i32 1, !dbg !904
  %_60 = load i32, ptr %169, align 8, !dbg !904, !noundef !21
  %_65 = icmp ult i64 %i, 5, !dbg !905
  %170 = call i1 @llvm.expect.i1(i1 %_65, i1 true), !dbg !905
  br i1 %170, label %bb25, label %panic7, !dbg !905

panic6:                                           ; preds = %bb20
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 5, ptr align 8 @alloc_e2ccb2ec52c18962f6db3ff72e094f3b) #6, !dbg !904
  unreachable, !dbg !904

bb25:                                             ; preds = %bb24
  %171 = getelementptr inbounds [5 x { i64, i32 }], ptr %expected_b, i64 0, i64 %i, !dbg !905
  %172 = getelementptr inbounds { i64, i32 }, ptr %171, i32 0, i32 1, !dbg !905
  %_63 = load i32, ptr %172, align 8, !dbg !905, !noundef !21
  %_59 = icmp ne i32 %_60, %_63, !dbg !904
  %173 = zext i1 %_59 to i8, !dbg !899
  store i8 %173, ptr %_51, align 1, !dbg !899
  br label %bb21, !dbg !899

panic7:                                           ; preds = %bb24
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 5, ptr align 8 @alloc_a9bdb7c1aaa460f1f80153ea471f68e2) #6, !dbg !905
  unreachable, !dbg !905

bb26:                                             ; preds = %bb21
  store i8 0, ptr %0, align 1, !dbg !906
  br label %bb27, !dbg !901
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_5() unnamed_addr #0 !dbg !907 {
start:
  %self.dbg.spill.i8 = alloca { ptr, i64 }, align 8
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %i.dbg.spill = alloca i64, align 8
  %size.dbg.spill = alloca i32, align 4
  %_96 = alloca i8, align 1
  %_81 = alloca i8, align 1
  %_77 = alloca { i64, i64 }, align 8
  %iter = alloca { i64, i64 }, align 8
  %_75 = alloca { i64, i64 }, align 8
  %_73 = alloca { i64, i32 }, align 8
  %_72 = alloca { i64, i32 }, align 8
  %_71 = alloca { i64, i32 }, align 8
  %_70 = alloca { i64, i32 }, align 8
  %_69 = alloca { i64, i32 }, align 8
  %_68 = alloca { i64, i32 }, align 8
  %_67 = alloca { i64, i32 }, align 8
  %_66 = alloca { i64, i32 }, align 8
  %_65 = alloca { i64, i32 }, align 8
  %_64 = alloca { i64, i32 }, align 8
  %_63 = alloca { i64, i32 }, align 8
  %_62 = alloca { i64, i32 }, align 8
  %_61 = alloca { i64, i32 }, align 8
  %_60 = alloca { i64, i32 }, align 8
  %_59 = alloca { i64, i32 }, align 8
  %_58 = alloca { i64, i32 }, align 8
  %_57 = alloca { i64, i32 }, align 8
  %_56 = alloca { i64, i32 }, align 8
  %_55 = alloca { i64, i32 }, align 8
  %_54 = alloca { i64, i32 }, align 8
  %expected_b = alloca [20 x { i64, i32 }], align 8
  %_52 = alloca { i64, i32 }, align 8
  %_51 = alloca { i64, i32 }, align 8
  %_50 = alloca { i64, i32 }, align 8
  %_49 = alloca { i64, i32 }, align 8
  %_48 = alloca { i64, i32 }, align 8
  %_47 = alloca { i64, i32 }, align 8
  %_46 = alloca { i64, i32 }, align 8
  %_45 = alloca { i64, i32 }, align 8
  %_44 = alloca { i64, i32 }, align 8
  %_43 = alloca { i64, i32 }, align 8
  %_42 = alloca { i64, i32 }, align 8
  %_41 = alloca { i64, i32 }, align 8
  %_40 = alloca { i64, i32 }, align 8
  %_39 = alloca { i64, i32 }, align 8
  %_38 = alloca { i64, i32 }, align 8
  %_37 = alloca { i64, i32 }, align 8
  %_36 = alloca { i64, i32 }, align 8
  %_35 = alloca { i64, i32 }, align 8
  %_34 = alloca { i64, i32 }, align 8
  %_33 = alloca { i64, i32 }, align 8
  %expected_a = alloca [20 x { i64, i32 }], align 8
  %_23 = alloca { i64, i32 }, align 8
  %b = alloca [20 x { i64, i32 }], align 8
  %_21 = alloca { i64, i32 }, align 8
  %_20 = alloca { i64, i32 }, align 8
  %_19 = alloca { i64, i32 }, align 8
  %_18 = alloca { i64, i32 }, align 8
  %_17 = alloca { i64, i32 }, align 8
  %_16 = alloca { i64, i32 }, align 8
  %_15 = alloca { i64, i32 }, align 8
  %_14 = alloca { i64, i32 }, align 8
  %_13 = alloca { i64, i32 }, align 8
  %_12 = alloca { i64, i32 }, align 8
  %_11 = alloca { i64, i32 }, align 8
  %_10 = alloca { i64, i32 }, align 8
  %_9 = alloca { i64, i32 }, align 8
  %_8 = alloca { i64, i32 }, align 8
  %_7 = alloca { i64, i32 }, align 8
  %_6 = alloca { i64, i32 }, align 8
  %_5 = alloca { i64, i32 }, align 8
  %_4 = alloca { i64, i32 }, align 8
  %_3 = alloca { i64, i32 }, align 8
  %_2 = alloca { i64, i32 }, align 8
  %a = alloca [20 x { i64, i32 }], align 8
  %0 = alloca i8, align 1
    #dbg_declare(ptr %a, !909, !DIExpression(), !926)
    #dbg_declare(ptr %b, !914, !DIExpression(), !927)
    #dbg_declare(ptr %expected_a, !918, !DIExpression(), !928)
    #dbg_declare(ptr %expected_b, !920, !DIExpression(), !929)
    #dbg_declare(ptr %iter, !922, !DIExpression(), !930)
  store i64 16, ptr %_2, align 8, !dbg !931
  %1 = getelementptr inbounds { i64, i32 }, ptr %_2, i32 0, i32 1, !dbg !931
  store i32 800, ptr %1, align 8, !dbg !931
  store i64 4, ptr %_3, align 8, !dbg !932
  %2 = getelementptr inbounds { i64, i32 }, ptr %_3, i32 0, i32 1, !dbg !932
  store i32 16000, ptr %2, align 8, !dbg !932
  store i64 34, ptr %_4, align 8, !dbg !933
  %3 = getelementptr inbounds { i64, i32 }, ptr %_4, i32 0, i32 1, !dbg !933
  store i32 0, ptr %3, align 8, !dbg !933
  store i64 2, ptr %_5, align 8, !dbg !934
  %4 = getelementptr inbounds { i64, i32 }, ptr %_5, i32 0, i32 1, !dbg !934
  store i32 22, ptr %4, align 8, !dbg !934
  store i64 15, ptr %_6, align 8, !dbg !935
  %5 = getelementptr inbounds { i64, i32 }, ptr %_6, i32 0, i32 1, !dbg !935
  store i32 16000, ptr %5, align 8, !dbg !935
  store i64 15, ptr %_7, align 8, !dbg !936
  %6 = getelementptr inbounds { i64, i32 }, ptr %_7, i32 0, i32 1, !dbg !936
  store i32 800, ptr %6, align 8, !dbg !936
  store i64 3, ptr %_8, align 8, !dbg !937
  %7 = getelementptr inbounds { i64, i32 }, ptr %_8, i32 0, i32 1, !dbg !937
  store i32 16000, ptr %7, align 8, !dbg !937
  store i64 33, ptr %_9, align 8, !dbg !938
  %8 = getelementptr inbounds { i64, i32 }, ptr %_9, i32 0, i32 1, !dbg !938
  store i32 0, ptr %8, align 8, !dbg !938
  store i64 1, ptr %_10, align 8, !dbg !939
  %9 = getelementptr inbounds { i64, i32 }, ptr %_10, i32 0, i32 1, !dbg !939
  store i32 22, ptr %9, align 8, !dbg !939
  store i64 14, ptr %_11, align 8, !dbg !940
  %10 = getelementptr inbounds { i64, i32 }, ptr %_11, i32 0, i32 1, !dbg !940
  store i32 16000, ptr %10, align 8, !dbg !940
  store i64 14, ptr %_12, align 8, !dbg !941
  %11 = getelementptr inbounds { i64, i32 }, ptr %_12, i32 0, i32 1, !dbg !941
  store i32 800, ptr %11, align 8, !dbg !941
  store i64 2, ptr %_13, align 8, !dbg !942
  %12 = getelementptr inbounds { i64, i32 }, ptr %_13, i32 0, i32 1, !dbg !942
  store i32 16000, ptr %12, align 8, !dbg !942
  store i64 32, ptr %_14, align 8, !dbg !943
  %13 = getelementptr inbounds { i64, i32 }, ptr %_14, i32 0, i32 1, !dbg !943
  store i32 0, ptr %13, align 8, !dbg !943
  store i64 0, ptr %_15, align 8, !dbg !944
  %14 = getelementptr inbounds { i64, i32 }, ptr %_15, i32 0, i32 1, !dbg !944
  store i32 22, ptr %14, align 8, !dbg !944
  store i64 13, ptr %_16, align 8, !dbg !945
  %15 = getelementptr inbounds { i64, i32 }, ptr %_16, i32 0, i32 1, !dbg !945
  store i32 16000, ptr %15, align 8, !dbg !945
  store i64 16, ptr %_17, align 8, !dbg !946
  %16 = getelementptr inbounds { i64, i32 }, ptr %_17, i32 0, i32 1, !dbg !946
  store i32 800, ptr %16, align 8, !dbg !946
  store i64 4, ptr %_18, align 8, !dbg !947
  %17 = getelementptr inbounds { i64, i32 }, ptr %_18, i32 0, i32 1, !dbg !947
  store i32 16000, ptr %17, align 8, !dbg !947
  store i64 34, ptr %_19, align 8, !dbg !948
  %18 = getelementptr inbounds { i64, i32 }, ptr %_19, i32 0, i32 1, !dbg !948
  store i32 0, ptr %18, align 8, !dbg !948
  store i64 2, ptr %_20, align 8, !dbg !949
  %19 = getelementptr inbounds { i64, i32 }, ptr %_20, i32 0, i32 1, !dbg !949
  store i32 22, ptr %19, align 8, !dbg !949
  store i64 15, ptr %_21, align 8, !dbg !950
  %20 = getelementptr inbounds { i64, i32 }, ptr %_21, i32 0, i32 1, !dbg !950
  store i32 16000, ptr %20, align 8, !dbg !950
  %21 = getelementptr inbounds { i64, i32 }, ptr %_2, i32 0, i32 0, !dbg !951
  %22 = load i64, ptr %21, align 8, !dbg !951, !noundef !21
  %23 = getelementptr inbounds { i64, i32 }, ptr %_2, i32 0, i32 1, !dbg !951
  %24 = load i32, ptr %23, align 8, !dbg !951, !noundef !21
  %25 = getelementptr inbounds [20 x { i64, i32 }], ptr %a, i64 0, i64 0, !dbg !951
  %26 = getelementptr inbounds { i64, i32 }, ptr %25, i32 0, i32 0, !dbg !951
  store i64 %22, ptr %26, align 8, !dbg !951
  %27 = getelementptr inbounds { i64, i32 }, ptr %25, i32 0, i32 1, !dbg !951
  store i32 %24, ptr %27, align 8, !dbg !951
  %28 = getelementptr inbounds { i64, i32 }, ptr %_3, i32 0, i32 0, !dbg !951
  %29 = load i64, ptr %28, align 8, !dbg !951, !noundef !21
  %30 = getelementptr inbounds { i64, i32 }, ptr %_3, i32 0, i32 1, !dbg !951
  %31 = load i32, ptr %30, align 8, !dbg !951, !noundef !21
  %32 = getelementptr inbounds [20 x { i64, i32 }], ptr %a, i64 0, i64 1, !dbg !951
  %33 = getelementptr inbounds { i64, i32 }, ptr %32, i32 0, i32 0, !dbg !951
  store i64 %29, ptr %33, align 8, !dbg !951
  %34 = getelementptr inbounds { i64, i32 }, ptr %32, i32 0, i32 1, !dbg !951
  store i32 %31, ptr %34, align 8, !dbg !951
  %35 = getelementptr inbounds { i64, i32 }, ptr %_4, i32 0, i32 0, !dbg !951
  %36 = load i64, ptr %35, align 8, !dbg !951, !noundef !21
  %37 = getelementptr inbounds { i64, i32 }, ptr %_4, i32 0, i32 1, !dbg !951
  %38 = load i32, ptr %37, align 8, !dbg !951, !noundef !21
  %39 = getelementptr inbounds [20 x { i64, i32 }], ptr %a, i64 0, i64 2, !dbg !951
  %40 = getelementptr inbounds { i64, i32 }, ptr %39, i32 0, i32 0, !dbg !951
  store i64 %36, ptr %40, align 8, !dbg !951
  %41 = getelementptr inbounds { i64, i32 }, ptr %39, i32 0, i32 1, !dbg !951
  store i32 %38, ptr %41, align 8, !dbg !951
  %42 = getelementptr inbounds { i64, i32 }, ptr %_5, i32 0, i32 0, !dbg !951
  %43 = load i64, ptr %42, align 8, !dbg !951, !noundef !21
  %44 = getelementptr inbounds { i64, i32 }, ptr %_5, i32 0, i32 1, !dbg !951
  %45 = load i32, ptr %44, align 8, !dbg !951, !noundef !21
  %46 = getelementptr inbounds [20 x { i64, i32 }], ptr %a, i64 0, i64 3, !dbg !951
  %47 = getelementptr inbounds { i64, i32 }, ptr %46, i32 0, i32 0, !dbg !951
  store i64 %43, ptr %47, align 8, !dbg !951
  %48 = getelementptr inbounds { i64, i32 }, ptr %46, i32 0, i32 1, !dbg !951
  store i32 %45, ptr %48, align 8, !dbg !951
  %49 = getelementptr inbounds { i64, i32 }, ptr %_6, i32 0, i32 0, !dbg !951
  %50 = load i64, ptr %49, align 8, !dbg !951, !noundef !21
  %51 = getelementptr inbounds { i64, i32 }, ptr %_6, i32 0, i32 1, !dbg !951
  %52 = load i32, ptr %51, align 8, !dbg !951, !noundef !21
  %53 = getelementptr inbounds [20 x { i64, i32 }], ptr %a, i64 0, i64 4, !dbg !951
  %54 = getelementptr inbounds { i64, i32 }, ptr %53, i32 0, i32 0, !dbg !951
  store i64 %50, ptr %54, align 8, !dbg !951
  %55 = getelementptr inbounds { i64, i32 }, ptr %53, i32 0, i32 1, !dbg !951
  store i32 %52, ptr %55, align 8, !dbg !951
  %56 = getelementptr inbounds { i64, i32 }, ptr %_7, i32 0, i32 0, !dbg !951
  %57 = load i64, ptr %56, align 8, !dbg !951, !noundef !21
  %58 = getelementptr inbounds { i64, i32 }, ptr %_7, i32 0, i32 1, !dbg !951
  %59 = load i32, ptr %58, align 8, !dbg !951, !noundef !21
  %60 = getelementptr inbounds [20 x { i64, i32 }], ptr %a, i64 0, i64 5, !dbg !951
  %61 = getelementptr inbounds { i64, i32 }, ptr %60, i32 0, i32 0, !dbg !951
  store i64 %57, ptr %61, align 8, !dbg !951
  %62 = getelementptr inbounds { i64, i32 }, ptr %60, i32 0, i32 1, !dbg !951
  store i32 %59, ptr %62, align 8, !dbg !951
  %63 = getelementptr inbounds { i64, i32 }, ptr %_8, i32 0, i32 0, !dbg !951
  %64 = load i64, ptr %63, align 8, !dbg !951, !noundef !21
  %65 = getelementptr inbounds { i64, i32 }, ptr %_8, i32 0, i32 1, !dbg !951
  %66 = load i32, ptr %65, align 8, !dbg !951, !noundef !21
  %67 = getelementptr inbounds [20 x { i64, i32 }], ptr %a, i64 0, i64 6, !dbg !951
  %68 = getelementptr inbounds { i64, i32 }, ptr %67, i32 0, i32 0, !dbg !951
  store i64 %64, ptr %68, align 8, !dbg !951
  %69 = getelementptr inbounds { i64, i32 }, ptr %67, i32 0, i32 1, !dbg !951
  store i32 %66, ptr %69, align 8, !dbg !951
  %70 = getelementptr inbounds { i64, i32 }, ptr %_9, i32 0, i32 0, !dbg !951
  %71 = load i64, ptr %70, align 8, !dbg !951, !noundef !21
  %72 = getelementptr inbounds { i64, i32 }, ptr %_9, i32 0, i32 1, !dbg !951
  %73 = load i32, ptr %72, align 8, !dbg !951, !noundef !21
  %74 = getelementptr inbounds [20 x { i64, i32 }], ptr %a, i64 0, i64 7, !dbg !951
  %75 = getelementptr inbounds { i64, i32 }, ptr %74, i32 0, i32 0, !dbg !951
  store i64 %71, ptr %75, align 8, !dbg !951
  %76 = getelementptr inbounds { i64, i32 }, ptr %74, i32 0, i32 1, !dbg !951
  store i32 %73, ptr %76, align 8, !dbg !951
  %77 = getelementptr inbounds { i64, i32 }, ptr %_10, i32 0, i32 0, !dbg !951
  %78 = load i64, ptr %77, align 8, !dbg !951, !noundef !21
  %79 = getelementptr inbounds { i64, i32 }, ptr %_10, i32 0, i32 1, !dbg !951
  %80 = load i32, ptr %79, align 8, !dbg !951, !noundef !21
  %81 = getelementptr inbounds [20 x { i64, i32 }], ptr %a, i64 0, i64 8, !dbg !951
  %82 = getelementptr inbounds { i64, i32 }, ptr %81, i32 0, i32 0, !dbg !951
  store i64 %78, ptr %82, align 8, !dbg !951
  %83 = getelementptr inbounds { i64, i32 }, ptr %81, i32 0, i32 1, !dbg !951
  store i32 %80, ptr %83, align 8, !dbg !951
  %84 = getelementptr inbounds { i64, i32 }, ptr %_11, i32 0, i32 0, !dbg !951
  %85 = load i64, ptr %84, align 8, !dbg !951, !noundef !21
  %86 = getelementptr inbounds { i64, i32 }, ptr %_11, i32 0, i32 1, !dbg !951
  %87 = load i32, ptr %86, align 8, !dbg !951, !noundef !21
  %88 = getelementptr inbounds [20 x { i64, i32 }], ptr %a, i64 0, i64 9, !dbg !951
  %89 = getelementptr inbounds { i64, i32 }, ptr %88, i32 0, i32 0, !dbg !951
  store i64 %85, ptr %89, align 8, !dbg !951
  %90 = getelementptr inbounds { i64, i32 }, ptr %88, i32 0, i32 1, !dbg !951
  store i32 %87, ptr %90, align 8, !dbg !951
  %91 = getelementptr inbounds { i64, i32 }, ptr %_12, i32 0, i32 0, !dbg !951
  %92 = load i64, ptr %91, align 8, !dbg !951, !noundef !21
  %93 = getelementptr inbounds { i64, i32 }, ptr %_12, i32 0, i32 1, !dbg !951
  %94 = load i32, ptr %93, align 8, !dbg !951, !noundef !21
  %95 = getelementptr inbounds [20 x { i64, i32 }], ptr %a, i64 0, i64 10, !dbg !951
  %96 = getelementptr inbounds { i64, i32 }, ptr %95, i32 0, i32 0, !dbg !951
  store i64 %92, ptr %96, align 8, !dbg !951
  %97 = getelementptr inbounds { i64, i32 }, ptr %95, i32 0, i32 1, !dbg !951
  store i32 %94, ptr %97, align 8, !dbg !951
  %98 = getelementptr inbounds { i64, i32 }, ptr %_13, i32 0, i32 0, !dbg !951
  %99 = load i64, ptr %98, align 8, !dbg !951, !noundef !21
  %100 = getelementptr inbounds { i64, i32 }, ptr %_13, i32 0, i32 1, !dbg !951
  %101 = load i32, ptr %100, align 8, !dbg !951, !noundef !21
  %102 = getelementptr inbounds [20 x { i64, i32 }], ptr %a, i64 0, i64 11, !dbg !951
  %103 = getelementptr inbounds { i64, i32 }, ptr %102, i32 0, i32 0, !dbg !951
  store i64 %99, ptr %103, align 8, !dbg !951
  %104 = getelementptr inbounds { i64, i32 }, ptr %102, i32 0, i32 1, !dbg !951
  store i32 %101, ptr %104, align 8, !dbg !951
  %105 = getelementptr inbounds { i64, i32 }, ptr %_14, i32 0, i32 0, !dbg !951
  %106 = load i64, ptr %105, align 8, !dbg !951, !noundef !21
  %107 = getelementptr inbounds { i64, i32 }, ptr %_14, i32 0, i32 1, !dbg !951
  %108 = load i32, ptr %107, align 8, !dbg !951, !noundef !21
  %109 = getelementptr inbounds [20 x { i64, i32 }], ptr %a, i64 0, i64 12, !dbg !951
  %110 = getelementptr inbounds { i64, i32 }, ptr %109, i32 0, i32 0, !dbg !951
  store i64 %106, ptr %110, align 8, !dbg !951
  %111 = getelementptr inbounds { i64, i32 }, ptr %109, i32 0, i32 1, !dbg !951
  store i32 %108, ptr %111, align 8, !dbg !951
  %112 = getelementptr inbounds { i64, i32 }, ptr %_15, i32 0, i32 0, !dbg !951
  %113 = load i64, ptr %112, align 8, !dbg !951, !noundef !21
  %114 = getelementptr inbounds { i64, i32 }, ptr %_15, i32 0, i32 1, !dbg !951
  %115 = load i32, ptr %114, align 8, !dbg !951, !noundef !21
  %116 = getelementptr inbounds [20 x { i64, i32 }], ptr %a, i64 0, i64 13, !dbg !951
  %117 = getelementptr inbounds { i64, i32 }, ptr %116, i32 0, i32 0, !dbg !951
  store i64 %113, ptr %117, align 8, !dbg !951
  %118 = getelementptr inbounds { i64, i32 }, ptr %116, i32 0, i32 1, !dbg !951
  store i32 %115, ptr %118, align 8, !dbg !951
  %119 = getelementptr inbounds { i64, i32 }, ptr %_16, i32 0, i32 0, !dbg !951
  %120 = load i64, ptr %119, align 8, !dbg !951, !noundef !21
  %121 = getelementptr inbounds { i64, i32 }, ptr %_16, i32 0, i32 1, !dbg !951
  %122 = load i32, ptr %121, align 8, !dbg !951, !noundef !21
  %123 = getelementptr inbounds [20 x { i64, i32 }], ptr %a, i64 0, i64 14, !dbg !951
  %124 = getelementptr inbounds { i64, i32 }, ptr %123, i32 0, i32 0, !dbg !951
  store i64 %120, ptr %124, align 8, !dbg !951
  %125 = getelementptr inbounds { i64, i32 }, ptr %123, i32 0, i32 1, !dbg !951
  store i32 %122, ptr %125, align 8, !dbg !951
  %126 = getelementptr inbounds { i64, i32 }, ptr %_17, i32 0, i32 0, !dbg !951
  %127 = load i64, ptr %126, align 8, !dbg !951, !noundef !21
  %128 = getelementptr inbounds { i64, i32 }, ptr %_17, i32 0, i32 1, !dbg !951
  %129 = load i32, ptr %128, align 8, !dbg !951, !noundef !21
  %130 = getelementptr inbounds [20 x { i64, i32 }], ptr %a, i64 0, i64 15, !dbg !951
  %131 = getelementptr inbounds { i64, i32 }, ptr %130, i32 0, i32 0, !dbg !951
  store i64 %127, ptr %131, align 8, !dbg !951
  %132 = getelementptr inbounds { i64, i32 }, ptr %130, i32 0, i32 1, !dbg !951
  store i32 %129, ptr %132, align 8, !dbg !951
  %133 = getelementptr inbounds { i64, i32 }, ptr %_18, i32 0, i32 0, !dbg !951
  %134 = load i64, ptr %133, align 8, !dbg !951, !noundef !21
  %135 = getelementptr inbounds { i64, i32 }, ptr %_18, i32 0, i32 1, !dbg !951
  %136 = load i32, ptr %135, align 8, !dbg !951, !noundef !21
  %137 = getelementptr inbounds [20 x { i64, i32 }], ptr %a, i64 0, i64 16, !dbg !951
  %138 = getelementptr inbounds { i64, i32 }, ptr %137, i32 0, i32 0, !dbg !951
  store i64 %134, ptr %138, align 8, !dbg !951
  %139 = getelementptr inbounds { i64, i32 }, ptr %137, i32 0, i32 1, !dbg !951
  store i32 %136, ptr %139, align 8, !dbg !951
  %140 = getelementptr inbounds { i64, i32 }, ptr %_19, i32 0, i32 0, !dbg !951
  %141 = load i64, ptr %140, align 8, !dbg !951, !noundef !21
  %142 = getelementptr inbounds { i64, i32 }, ptr %_19, i32 0, i32 1, !dbg !951
  %143 = load i32, ptr %142, align 8, !dbg !951, !noundef !21
  %144 = getelementptr inbounds [20 x { i64, i32 }], ptr %a, i64 0, i64 17, !dbg !951
  %145 = getelementptr inbounds { i64, i32 }, ptr %144, i32 0, i32 0, !dbg !951
  store i64 %141, ptr %145, align 8, !dbg !951
  %146 = getelementptr inbounds { i64, i32 }, ptr %144, i32 0, i32 1, !dbg !951
  store i32 %143, ptr %146, align 8, !dbg !951
  %147 = getelementptr inbounds { i64, i32 }, ptr %_20, i32 0, i32 0, !dbg !951
  %148 = load i64, ptr %147, align 8, !dbg !951, !noundef !21
  %149 = getelementptr inbounds { i64, i32 }, ptr %_20, i32 0, i32 1, !dbg !951
  %150 = load i32, ptr %149, align 8, !dbg !951, !noundef !21
  %151 = getelementptr inbounds [20 x { i64, i32 }], ptr %a, i64 0, i64 18, !dbg !951
  %152 = getelementptr inbounds { i64, i32 }, ptr %151, i32 0, i32 0, !dbg !951
  store i64 %148, ptr %152, align 8, !dbg !951
  %153 = getelementptr inbounds { i64, i32 }, ptr %151, i32 0, i32 1, !dbg !951
  store i32 %150, ptr %153, align 8, !dbg !951
  %154 = getelementptr inbounds { i64, i32 }, ptr %_21, i32 0, i32 0, !dbg !951
  %155 = load i64, ptr %154, align 8, !dbg !951, !noundef !21
  %156 = getelementptr inbounds { i64, i32 }, ptr %_21, i32 0, i32 1, !dbg !951
  %157 = load i32, ptr %156, align 8, !dbg !951, !noundef !21
  %158 = getelementptr inbounds [20 x { i64, i32 }], ptr %a, i64 0, i64 19, !dbg !951
  %159 = getelementptr inbounds { i64, i32 }, ptr %158, i32 0, i32 0, !dbg !951
  store i64 %155, ptr %159, align 8, !dbg !951
  %160 = getelementptr inbounds { i64, i32 }, ptr %158, i32 0, i32 1, !dbg !951
  store i32 %157, ptr %160, align 8, !dbg !951
  store i64 0, ptr %_23, align 8, !dbg !952
  %161 = getelementptr inbounds { i64, i32 }, ptr %_23, i32 0, i32 1, !dbg !952
  store i32 0, ptr %161, align 8, !dbg !952
  %162 = getelementptr inbounds { i64, i32 }, ptr %_23, i32 0, i32 0, !dbg !953
  %163 = load i64, ptr %162, align 8, !dbg !953, !noundef !21
  %164 = getelementptr inbounds { i64, i32 }, ptr %_23, i32 0, i32 1, !dbg !953
  %165 = load i32, ptr %164, align 8, !dbg !953, !noundef !21
  %166 = getelementptr inbounds [20 x { i64, i32 }], ptr %b, i64 0, i64 0, !dbg !953
  %167 = getelementptr inbounds [20 x { i64, i32 }], ptr %b, i64 0, i64 20, !dbg !953
  br label %repeat_loop_header, !dbg !953

repeat_loop_header:                               ; preds = %repeat_loop_body, %start
  %168 = phi ptr [ %166, %start ], [ %172, %repeat_loop_body ]
  %169 = icmp ne ptr %168, %167
  br i1 %169, label %repeat_loop_body, label %repeat_loop_next

repeat_loop_body:                                 ; preds = %repeat_loop_header
  %170 = getelementptr inbounds { i64, i32 }, ptr %168, i32 0, i32 0
  store i64 %163, ptr %170, align 8
  %171 = getelementptr inbounds { i64, i32 }, ptr %168, i32 0, i32 1
  store i32 %165, ptr %171, align 8
  %172 = getelementptr inbounds { i64, i32 }, ptr %168, i64 1
  br label %repeat_loop_header

repeat_loop_next:                                 ; preds = %repeat_loop_header
  store i32 20, ptr %size.dbg.spill, align 4, !dbg !954
    #dbg_declare(ptr %size.dbg.spill, !916, !DIExpression(), !955)
  store ptr %a, ptr %self.dbg.spill.i8, align 8
  %173 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i8, i32 0, i32 1
  store i64 20, ptr %173, align 8
    #dbg_declare(ptr %self.dbg.spill.i8, !569, !DIExpression(), !956)
  store ptr %b, ptr %self.dbg.spill.i, align 8
  %174 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 20, ptr %174, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !569, !DIExpression(), !958)
  call void @merge_sort(ptr %a, ptr %b, i32 20), !dbg !960
  store i64 34, ptr %_33, align 8, !dbg !961
  %175 = getelementptr inbounds { i64, i32 }, ptr %_33, i32 0, i32 1, !dbg !961
  store i32 0, ptr %175, align 8, !dbg !961
  store i64 33, ptr %_34, align 8, !dbg !962
  %176 = getelementptr inbounds { i64, i32 }, ptr %_34, i32 0, i32 1, !dbg !962
  store i32 0, ptr %176, align 8, !dbg !962
  store i64 32, ptr %_35, align 8, !dbg !963
  %177 = getelementptr inbounds { i64, i32 }, ptr %_35, i32 0, i32 1, !dbg !963
  store i32 0, ptr %177, align 8, !dbg !963
  store i64 34, ptr %_36, align 8, !dbg !964
  %178 = getelementptr inbounds { i64, i32 }, ptr %_36, i32 0, i32 1, !dbg !964
  store i32 0, ptr %178, align 8, !dbg !964
  store i64 2, ptr %_37, align 8, !dbg !965
  %179 = getelementptr inbounds { i64, i32 }, ptr %_37, i32 0, i32 1, !dbg !965
  store i32 22, ptr %179, align 8, !dbg !965
  store i64 1, ptr %_38, align 8, !dbg !966
  %180 = getelementptr inbounds { i64, i32 }, ptr %_38, i32 0, i32 1, !dbg !966
  store i32 22, ptr %180, align 8, !dbg !966
  store i64 0, ptr %_39, align 8, !dbg !967
  %181 = getelementptr inbounds { i64, i32 }, ptr %_39, i32 0, i32 1, !dbg !967
  store i32 22, ptr %181, align 8, !dbg !967
  store i64 2, ptr %_40, align 8, !dbg !968
  %182 = getelementptr inbounds { i64, i32 }, ptr %_40, i32 0, i32 1, !dbg !968
  store i32 22, ptr %182, align 8, !dbg !968
  store i64 16, ptr %_41, align 8, !dbg !969
  %183 = getelementptr inbounds { i64, i32 }, ptr %_41, i32 0, i32 1, !dbg !969
  store i32 800, ptr %183, align 8, !dbg !969
  store i64 15, ptr %_42, align 8, !dbg !970
  %184 = getelementptr inbounds { i64, i32 }, ptr %_42, i32 0, i32 1, !dbg !970
  store i32 800, ptr %184, align 8, !dbg !970
  store i64 14, ptr %_43, align 8, !dbg !971
  %185 = getelementptr inbounds { i64, i32 }, ptr %_43, i32 0, i32 1, !dbg !971
  store i32 800, ptr %185, align 8, !dbg !971
  store i64 16, ptr %_44, align 8, !dbg !972
  %186 = getelementptr inbounds { i64, i32 }, ptr %_44, i32 0, i32 1, !dbg !972
  store i32 800, ptr %186, align 8, !dbg !972
  store i64 4, ptr %_45, align 8, !dbg !973
  %187 = getelementptr inbounds { i64, i32 }, ptr %_45, i32 0, i32 1, !dbg !973
  store i32 16000, ptr %187, align 8, !dbg !973
  store i64 15, ptr %_46, align 8, !dbg !974
  %188 = getelementptr inbounds { i64, i32 }, ptr %_46, i32 0, i32 1, !dbg !974
  store i32 16000, ptr %188, align 8, !dbg !974
  store i64 3, ptr %_47, align 8, !dbg !975
  %189 = getelementptr inbounds { i64, i32 }, ptr %_47, i32 0, i32 1, !dbg !975
  store i32 16000, ptr %189, align 8, !dbg !975
  store i64 14, ptr %_48, align 8, !dbg !976
  %190 = getelementptr inbounds { i64, i32 }, ptr %_48, i32 0, i32 1, !dbg !976
  store i32 16000, ptr %190, align 8, !dbg !976
  store i64 2, ptr %_49, align 8, !dbg !977
  %191 = getelementptr inbounds { i64, i32 }, ptr %_49, i32 0, i32 1, !dbg !977
  store i32 16000, ptr %191, align 8, !dbg !977
  store i64 13, ptr %_50, align 8, !dbg !978
  %192 = getelementptr inbounds { i64, i32 }, ptr %_50, i32 0, i32 1, !dbg !978
  store i32 16000, ptr %192, align 8, !dbg !978
  store i64 4, ptr %_51, align 8, !dbg !979
  %193 = getelementptr inbounds { i64, i32 }, ptr %_51, i32 0, i32 1, !dbg !979
  store i32 16000, ptr %193, align 8, !dbg !979
  store i64 15, ptr %_52, align 8, !dbg !980
  %194 = getelementptr inbounds { i64, i32 }, ptr %_52, i32 0, i32 1, !dbg !980
  store i32 16000, ptr %194, align 8, !dbg !980
  %195 = getelementptr inbounds { i64, i32 }, ptr %_33, i32 0, i32 0, !dbg !981
  %196 = load i64, ptr %195, align 8, !dbg !981, !noundef !21
  %197 = getelementptr inbounds { i64, i32 }, ptr %_33, i32 0, i32 1, !dbg !981
  %198 = load i32, ptr %197, align 8, !dbg !981, !noundef !21
  %199 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_a, i64 0, i64 0, !dbg !981
  %200 = getelementptr inbounds { i64, i32 }, ptr %199, i32 0, i32 0, !dbg !981
  store i64 %196, ptr %200, align 8, !dbg !981
  %201 = getelementptr inbounds { i64, i32 }, ptr %199, i32 0, i32 1, !dbg !981
  store i32 %198, ptr %201, align 8, !dbg !981
  %202 = getelementptr inbounds { i64, i32 }, ptr %_34, i32 0, i32 0, !dbg !981
  %203 = load i64, ptr %202, align 8, !dbg !981, !noundef !21
  %204 = getelementptr inbounds { i64, i32 }, ptr %_34, i32 0, i32 1, !dbg !981
  %205 = load i32, ptr %204, align 8, !dbg !981, !noundef !21
  %206 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_a, i64 0, i64 1, !dbg !981
  %207 = getelementptr inbounds { i64, i32 }, ptr %206, i32 0, i32 0, !dbg !981
  store i64 %203, ptr %207, align 8, !dbg !981
  %208 = getelementptr inbounds { i64, i32 }, ptr %206, i32 0, i32 1, !dbg !981
  store i32 %205, ptr %208, align 8, !dbg !981
  %209 = getelementptr inbounds { i64, i32 }, ptr %_35, i32 0, i32 0, !dbg !981
  %210 = load i64, ptr %209, align 8, !dbg !981, !noundef !21
  %211 = getelementptr inbounds { i64, i32 }, ptr %_35, i32 0, i32 1, !dbg !981
  %212 = load i32, ptr %211, align 8, !dbg !981, !noundef !21
  %213 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_a, i64 0, i64 2, !dbg !981
  %214 = getelementptr inbounds { i64, i32 }, ptr %213, i32 0, i32 0, !dbg !981
  store i64 %210, ptr %214, align 8, !dbg !981
  %215 = getelementptr inbounds { i64, i32 }, ptr %213, i32 0, i32 1, !dbg !981
  store i32 %212, ptr %215, align 8, !dbg !981
  %216 = getelementptr inbounds { i64, i32 }, ptr %_36, i32 0, i32 0, !dbg !981
  %217 = load i64, ptr %216, align 8, !dbg !981, !noundef !21
  %218 = getelementptr inbounds { i64, i32 }, ptr %_36, i32 0, i32 1, !dbg !981
  %219 = load i32, ptr %218, align 8, !dbg !981, !noundef !21
  %220 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_a, i64 0, i64 3, !dbg !981
  %221 = getelementptr inbounds { i64, i32 }, ptr %220, i32 0, i32 0, !dbg !981
  store i64 %217, ptr %221, align 8, !dbg !981
  %222 = getelementptr inbounds { i64, i32 }, ptr %220, i32 0, i32 1, !dbg !981
  store i32 %219, ptr %222, align 8, !dbg !981
  %223 = getelementptr inbounds { i64, i32 }, ptr %_37, i32 0, i32 0, !dbg !981
  %224 = load i64, ptr %223, align 8, !dbg !981, !noundef !21
  %225 = getelementptr inbounds { i64, i32 }, ptr %_37, i32 0, i32 1, !dbg !981
  %226 = load i32, ptr %225, align 8, !dbg !981, !noundef !21
  %227 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_a, i64 0, i64 4, !dbg !981
  %228 = getelementptr inbounds { i64, i32 }, ptr %227, i32 0, i32 0, !dbg !981
  store i64 %224, ptr %228, align 8, !dbg !981
  %229 = getelementptr inbounds { i64, i32 }, ptr %227, i32 0, i32 1, !dbg !981
  store i32 %226, ptr %229, align 8, !dbg !981
  %230 = getelementptr inbounds { i64, i32 }, ptr %_38, i32 0, i32 0, !dbg !981
  %231 = load i64, ptr %230, align 8, !dbg !981, !noundef !21
  %232 = getelementptr inbounds { i64, i32 }, ptr %_38, i32 0, i32 1, !dbg !981
  %233 = load i32, ptr %232, align 8, !dbg !981, !noundef !21
  %234 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_a, i64 0, i64 5, !dbg !981
  %235 = getelementptr inbounds { i64, i32 }, ptr %234, i32 0, i32 0, !dbg !981
  store i64 %231, ptr %235, align 8, !dbg !981
  %236 = getelementptr inbounds { i64, i32 }, ptr %234, i32 0, i32 1, !dbg !981
  store i32 %233, ptr %236, align 8, !dbg !981
  %237 = getelementptr inbounds { i64, i32 }, ptr %_39, i32 0, i32 0, !dbg !981
  %238 = load i64, ptr %237, align 8, !dbg !981, !noundef !21
  %239 = getelementptr inbounds { i64, i32 }, ptr %_39, i32 0, i32 1, !dbg !981
  %240 = load i32, ptr %239, align 8, !dbg !981, !noundef !21
  %241 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_a, i64 0, i64 6, !dbg !981
  %242 = getelementptr inbounds { i64, i32 }, ptr %241, i32 0, i32 0, !dbg !981
  store i64 %238, ptr %242, align 8, !dbg !981
  %243 = getelementptr inbounds { i64, i32 }, ptr %241, i32 0, i32 1, !dbg !981
  store i32 %240, ptr %243, align 8, !dbg !981
  %244 = getelementptr inbounds { i64, i32 }, ptr %_40, i32 0, i32 0, !dbg !981
  %245 = load i64, ptr %244, align 8, !dbg !981, !noundef !21
  %246 = getelementptr inbounds { i64, i32 }, ptr %_40, i32 0, i32 1, !dbg !981
  %247 = load i32, ptr %246, align 8, !dbg !981, !noundef !21
  %248 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_a, i64 0, i64 7, !dbg !981
  %249 = getelementptr inbounds { i64, i32 }, ptr %248, i32 0, i32 0, !dbg !981
  store i64 %245, ptr %249, align 8, !dbg !981
  %250 = getelementptr inbounds { i64, i32 }, ptr %248, i32 0, i32 1, !dbg !981
  store i32 %247, ptr %250, align 8, !dbg !981
  %251 = getelementptr inbounds { i64, i32 }, ptr %_41, i32 0, i32 0, !dbg !981
  %252 = load i64, ptr %251, align 8, !dbg !981, !noundef !21
  %253 = getelementptr inbounds { i64, i32 }, ptr %_41, i32 0, i32 1, !dbg !981
  %254 = load i32, ptr %253, align 8, !dbg !981, !noundef !21
  %255 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_a, i64 0, i64 8, !dbg !981
  %256 = getelementptr inbounds { i64, i32 }, ptr %255, i32 0, i32 0, !dbg !981
  store i64 %252, ptr %256, align 8, !dbg !981
  %257 = getelementptr inbounds { i64, i32 }, ptr %255, i32 0, i32 1, !dbg !981
  store i32 %254, ptr %257, align 8, !dbg !981
  %258 = getelementptr inbounds { i64, i32 }, ptr %_42, i32 0, i32 0, !dbg !981
  %259 = load i64, ptr %258, align 8, !dbg !981, !noundef !21
  %260 = getelementptr inbounds { i64, i32 }, ptr %_42, i32 0, i32 1, !dbg !981
  %261 = load i32, ptr %260, align 8, !dbg !981, !noundef !21
  %262 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_a, i64 0, i64 9, !dbg !981
  %263 = getelementptr inbounds { i64, i32 }, ptr %262, i32 0, i32 0, !dbg !981
  store i64 %259, ptr %263, align 8, !dbg !981
  %264 = getelementptr inbounds { i64, i32 }, ptr %262, i32 0, i32 1, !dbg !981
  store i32 %261, ptr %264, align 8, !dbg !981
  %265 = getelementptr inbounds { i64, i32 }, ptr %_43, i32 0, i32 0, !dbg !981
  %266 = load i64, ptr %265, align 8, !dbg !981, !noundef !21
  %267 = getelementptr inbounds { i64, i32 }, ptr %_43, i32 0, i32 1, !dbg !981
  %268 = load i32, ptr %267, align 8, !dbg !981, !noundef !21
  %269 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_a, i64 0, i64 10, !dbg !981
  %270 = getelementptr inbounds { i64, i32 }, ptr %269, i32 0, i32 0, !dbg !981
  store i64 %266, ptr %270, align 8, !dbg !981
  %271 = getelementptr inbounds { i64, i32 }, ptr %269, i32 0, i32 1, !dbg !981
  store i32 %268, ptr %271, align 8, !dbg !981
  %272 = getelementptr inbounds { i64, i32 }, ptr %_44, i32 0, i32 0, !dbg !981
  %273 = load i64, ptr %272, align 8, !dbg !981, !noundef !21
  %274 = getelementptr inbounds { i64, i32 }, ptr %_44, i32 0, i32 1, !dbg !981
  %275 = load i32, ptr %274, align 8, !dbg !981, !noundef !21
  %276 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_a, i64 0, i64 11, !dbg !981
  %277 = getelementptr inbounds { i64, i32 }, ptr %276, i32 0, i32 0, !dbg !981
  store i64 %273, ptr %277, align 8, !dbg !981
  %278 = getelementptr inbounds { i64, i32 }, ptr %276, i32 0, i32 1, !dbg !981
  store i32 %275, ptr %278, align 8, !dbg !981
  %279 = getelementptr inbounds { i64, i32 }, ptr %_45, i32 0, i32 0, !dbg !981
  %280 = load i64, ptr %279, align 8, !dbg !981, !noundef !21
  %281 = getelementptr inbounds { i64, i32 }, ptr %_45, i32 0, i32 1, !dbg !981
  %282 = load i32, ptr %281, align 8, !dbg !981, !noundef !21
  %283 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_a, i64 0, i64 12, !dbg !981
  %284 = getelementptr inbounds { i64, i32 }, ptr %283, i32 0, i32 0, !dbg !981
  store i64 %280, ptr %284, align 8, !dbg !981
  %285 = getelementptr inbounds { i64, i32 }, ptr %283, i32 0, i32 1, !dbg !981
  store i32 %282, ptr %285, align 8, !dbg !981
  %286 = getelementptr inbounds { i64, i32 }, ptr %_46, i32 0, i32 0, !dbg !981
  %287 = load i64, ptr %286, align 8, !dbg !981, !noundef !21
  %288 = getelementptr inbounds { i64, i32 }, ptr %_46, i32 0, i32 1, !dbg !981
  %289 = load i32, ptr %288, align 8, !dbg !981, !noundef !21
  %290 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_a, i64 0, i64 13, !dbg !981
  %291 = getelementptr inbounds { i64, i32 }, ptr %290, i32 0, i32 0, !dbg !981
  store i64 %287, ptr %291, align 8, !dbg !981
  %292 = getelementptr inbounds { i64, i32 }, ptr %290, i32 0, i32 1, !dbg !981
  store i32 %289, ptr %292, align 8, !dbg !981
  %293 = getelementptr inbounds { i64, i32 }, ptr %_47, i32 0, i32 0, !dbg !981
  %294 = load i64, ptr %293, align 8, !dbg !981, !noundef !21
  %295 = getelementptr inbounds { i64, i32 }, ptr %_47, i32 0, i32 1, !dbg !981
  %296 = load i32, ptr %295, align 8, !dbg !981, !noundef !21
  %297 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_a, i64 0, i64 14, !dbg !981
  %298 = getelementptr inbounds { i64, i32 }, ptr %297, i32 0, i32 0, !dbg !981
  store i64 %294, ptr %298, align 8, !dbg !981
  %299 = getelementptr inbounds { i64, i32 }, ptr %297, i32 0, i32 1, !dbg !981
  store i32 %296, ptr %299, align 8, !dbg !981
  %300 = getelementptr inbounds { i64, i32 }, ptr %_48, i32 0, i32 0, !dbg !981
  %301 = load i64, ptr %300, align 8, !dbg !981, !noundef !21
  %302 = getelementptr inbounds { i64, i32 }, ptr %_48, i32 0, i32 1, !dbg !981
  %303 = load i32, ptr %302, align 8, !dbg !981, !noundef !21
  %304 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_a, i64 0, i64 15, !dbg !981
  %305 = getelementptr inbounds { i64, i32 }, ptr %304, i32 0, i32 0, !dbg !981
  store i64 %301, ptr %305, align 8, !dbg !981
  %306 = getelementptr inbounds { i64, i32 }, ptr %304, i32 0, i32 1, !dbg !981
  store i32 %303, ptr %306, align 8, !dbg !981
  %307 = getelementptr inbounds { i64, i32 }, ptr %_49, i32 0, i32 0, !dbg !981
  %308 = load i64, ptr %307, align 8, !dbg !981, !noundef !21
  %309 = getelementptr inbounds { i64, i32 }, ptr %_49, i32 0, i32 1, !dbg !981
  %310 = load i32, ptr %309, align 8, !dbg !981, !noundef !21
  %311 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_a, i64 0, i64 16, !dbg !981
  %312 = getelementptr inbounds { i64, i32 }, ptr %311, i32 0, i32 0, !dbg !981
  store i64 %308, ptr %312, align 8, !dbg !981
  %313 = getelementptr inbounds { i64, i32 }, ptr %311, i32 0, i32 1, !dbg !981
  store i32 %310, ptr %313, align 8, !dbg !981
  %314 = getelementptr inbounds { i64, i32 }, ptr %_50, i32 0, i32 0, !dbg !981
  %315 = load i64, ptr %314, align 8, !dbg !981, !noundef !21
  %316 = getelementptr inbounds { i64, i32 }, ptr %_50, i32 0, i32 1, !dbg !981
  %317 = load i32, ptr %316, align 8, !dbg !981, !noundef !21
  %318 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_a, i64 0, i64 17, !dbg !981
  %319 = getelementptr inbounds { i64, i32 }, ptr %318, i32 0, i32 0, !dbg !981
  store i64 %315, ptr %319, align 8, !dbg !981
  %320 = getelementptr inbounds { i64, i32 }, ptr %318, i32 0, i32 1, !dbg !981
  store i32 %317, ptr %320, align 8, !dbg !981
  %321 = getelementptr inbounds { i64, i32 }, ptr %_51, i32 0, i32 0, !dbg !981
  %322 = load i64, ptr %321, align 8, !dbg !981, !noundef !21
  %323 = getelementptr inbounds { i64, i32 }, ptr %_51, i32 0, i32 1, !dbg !981
  %324 = load i32, ptr %323, align 8, !dbg !981, !noundef !21
  %325 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_a, i64 0, i64 18, !dbg !981
  %326 = getelementptr inbounds { i64, i32 }, ptr %325, i32 0, i32 0, !dbg !981
  store i64 %322, ptr %326, align 8, !dbg !981
  %327 = getelementptr inbounds { i64, i32 }, ptr %325, i32 0, i32 1, !dbg !981
  store i32 %324, ptr %327, align 8, !dbg !981
  %328 = getelementptr inbounds { i64, i32 }, ptr %_52, i32 0, i32 0, !dbg !981
  %329 = load i64, ptr %328, align 8, !dbg !981, !noundef !21
  %330 = getelementptr inbounds { i64, i32 }, ptr %_52, i32 0, i32 1, !dbg !981
  %331 = load i32, ptr %330, align 8, !dbg !981, !noundef !21
  %332 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_a, i64 0, i64 19, !dbg !981
  %333 = getelementptr inbounds { i64, i32 }, ptr %332, i32 0, i32 0, !dbg !981
  store i64 %329, ptr %333, align 8, !dbg !981
  %334 = getelementptr inbounds { i64, i32 }, ptr %332, i32 0, i32 1, !dbg !981
  store i32 %331, ptr %334, align 8, !dbg !981
  store i64 34, ptr %_54, align 8, !dbg !982
  %335 = getelementptr inbounds { i64, i32 }, ptr %_54, i32 0, i32 1, !dbg !982
  store i32 0, ptr %335, align 8, !dbg !982
  store i64 33, ptr %_55, align 8, !dbg !983
  %336 = getelementptr inbounds { i64, i32 }, ptr %_55, i32 0, i32 1, !dbg !983
  store i32 0, ptr %336, align 8, !dbg !983
  store i64 2, ptr %_56, align 8, !dbg !984
  %337 = getelementptr inbounds { i64, i32 }, ptr %_56, i32 0, i32 1, !dbg !984
  store i32 22, ptr %337, align 8, !dbg !984
  store i64 1, ptr %_57, align 8, !dbg !985
  %338 = getelementptr inbounds { i64, i32 }, ptr %_57, i32 0, i32 1, !dbg !985
  store i32 22, ptr %338, align 8, !dbg !985
  store i64 16, ptr %_58, align 8, !dbg !986
  %339 = getelementptr inbounds { i64, i32 }, ptr %_58, i32 0, i32 1, !dbg !986
  store i32 800, ptr %339, align 8, !dbg !986
  store i64 15, ptr %_59, align 8, !dbg !987
  %340 = getelementptr inbounds { i64, i32 }, ptr %_59, i32 0, i32 1, !dbg !987
  store i32 800, ptr %340, align 8, !dbg !987
  store i64 4, ptr %_60, align 8, !dbg !988
  %341 = getelementptr inbounds { i64, i32 }, ptr %_60, i32 0, i32 1, !dbg !988
  store i32 16000, ptr %341, align 8, !dbg !988
  store i64 15, ptr %_61, align 8, !dbg !989
  %342 = getelementptr inbounds { i64, i32 }, ptr %_61, i32 0, i32 1, !dbg !989
  store i32 16000, ptr %342, align 8, !dbg !989
  store i64 3, ptr %_62, align 8, !dbg !990
  %343 = getelementptr inbounds { i64, i32 }, ptr %_62, i32 0, i32 1, !dbg !990
  store i32 16000, ptr %343, align 8, !dbg !990
  store i64 14, ptr %_63, align 8, !dbg !991
  %344 = getelementptr inbounds { i64, i32 }, ptr %_63, i32 0, i32 1, !dbg !991
  store i32 16000, ptr %344, align 8, !dbg !991
  store i64 32, ptr %_64, align 8, !dbg !992
  %345 = getelementptr inbounds { i64, i32 }, ptr %_64, i32 0, i32 1, !dbg !992
  store i32 0, ptr %345, align 8, !dbg !992
  store i64 34, ptr %_65, align 8, !dbg !993
  %346 = getelementptr inbounds { i64, i32 }, ptr %_65, i32 0, i32 1, !dbg !993
  store i32 0, ptr %346, align 8, !dbg !993
  store i64 0, ptr %_66, align 8, !dbg !994
  %347 = getelementptr inbounds { i64, i32 }, ptr %_66, i32 0, i32 1, !dbg !994
  store i32 22, ptr %347, align 8, !dbg !994
  store i64 2, ptr %_67, align 8, !dbg !995
  %348 = getelementptr inbounds { i64, i32 }, ptr %_67, i32 0, i32 1, !dbg !995
  store i32 22, ptr %348, align 8, !dbg !995
  store i64 14, ptr %_68, align 8, !dbg !996
  %349 = getelementptr inbounds { i64, i32 }, ptr %_68, i32 0, i32 1, !dbg !996
  store i32 800, ptr %349, align 8, !dbg !996
  store i64 16, ptr %_69, align 8, !dbg !997
  %350 = getelementptr inbounds { i64, i32 }, ptr %_69, i32 0, i32 1, !dbg !997
  store i32 800, ptr %350, align 8, !dbg !997
  store i64 2, ptr %_70, align 8, !dbg !998
  %351 = getelementptr inbounds { i64, i32 }, ptr %_70, i32 0, i32 1, !dbg !998
  store i32 16000, ptr %351, align 8, !dbg !998
  store i64 13, ptr %_71, align 8, !dbg !999
  %352 = getelementptr inbounds { i64, i32 }, ptr %_71, i32 0, i32 1, !dbg !999
  store i32 16000, ptr %352, align 8, !dbg !999
  store i64 4, ptr %_72, align 8, !dbg !1000
  %353 = getelementptr inbounds { i64, i32 }, ptr %_72, i32 0, i32 1, !dbg !1000
  store i32 16000, ptr %353, align 8, !dbg !1000
  store i64 15, ptr %_73, align 8, !dbg !1001
  %354 = getelementptr inbounds { i64, i32 }, ptr %_73, i32 0, i32 1, !dbg !1001
  store i32 16000, ptr %354, align 8, !dbg !1001
  %355 = getelementptr inbounds { i64, i32 }, ptr %_54, i32 0, i32 0, !dbg !1002
  %356 = load i64, ptr %355, align 8, !dbg !1002, !noundef !21
  %357 = getelementptr inbounds { i64, i32 }, ptr %_54, i32 0, i32 1, !dbg !1002
  %358 = load i32, ptr %357, align 8, !dbg !1002, !noundef !21
  %359 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_b, i64 0, i64 0, !dbg !1002
  %360 = getelementptr inbounds { i64, i32 }, ptr %359, i32 0, i32 0, !dbg !1002
  store i64 %356, ptr %360, align 8, !dbg !1002
  %361 = getelementptr inbounds { i64, i32 }, ptr %359, i32 0, i32 1, !dbg !1002
  store i32 %358, ptr %361, align 8, !dbg !1002
  %362 = getelementptr inbounds { i64, i32 }, ptr %_55, i32 0, i32 0, !dbg !1002
  %363 = load i64, ptr %362, align 8, !dbg !1002, !noundef !21
  %364 = getelementptr inbounds { i64, i32 }, ptr %_55, i32 0, i32 1, !dbg !1002
  %365 = load i32, ptr %364, align 8, !dbg !1002, !noundef !21
  %366 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_b, i64 0, i64 1, !dbg !1002
  %367 = getelementptr inbounds { i64, i32 }, ptr %366, i32 0, i32 0, !dbg !1002
  store i64 %363, ptr %367, align 8, !dbg !1002
  %368 = getelementptr inbounds { i64, i32 }, ptr %366, i32 0, i32 1, !dbg !1002
  store i32 %365, ptr %368, align 8, !dbg !1002
  %369 = getelementptr inbounds { i64, i32 }, ptr %_56, i32 0, i32 0, !dbg !1002
  %370 = load i64, ptr %369, align 8, !dbg !1002, !noundef !21
  %371 = getelementptr inbounds { i64, i32 }, ptr %_56, i32 0, i32 1, !dbg !1002
  %372 = load i32, ptr %371, align 8, !dbg !1002, !noundef !21
  %373 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_b, i64 0, i64 2, !dbg !1002
  %374 = getelementptr inbounds { i64, i32 }, ptr %373, i32 0, i32 0, !dbg !1002
  store i64 %370, ptr %374, align 8, !dbg !1002
  %375 = getelementptr inbounds { i64, i32 }, ptr %373, i32 0, i32 1, !dbg !1002
  store i32 %372, ptr %375, align 8, !dbg !1002
  %376 = getelementptr inbounds { i64, i32 }, ptr %_57, i32 0, i32 0, !dbg !1002
  %377 = load i64, ptr %376, align 8, !dbg !1002, !noundef !21
  %378 = getelementptr inbounds { i64, i32 }, ptr %_57, i32 0, i32 1, !dbg !1002
  %379 = load i32, ptr %378, align 8, !dbg !1002, !noundef !21
  %380 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_b, i64 0, i64 3, !dbg !1002
  %381 = getelementptr inbounds { i64, i32 }, ptr %380, i32 0, i32 0, !dbg !1002
  store i64 %377, ptr %381, align 8, !dbg !1002
  %382 = getelementptr inbounds { i64, i32 }, ptr %380, i32 0, i32 1, !dbg !1002
  store i32 %379, ptr %382, align 8, !dbg !1002
  %383 = getelementptr inbounds { i64, i32 }, ptr %_58, i32 0, i32 0, !dbg !1002
  %384 = load i64, ptr %383, align 8, !dbg !1002, !noundef !21
  %385 = getelementptr inbounds { i64, i32 }, ptr %_58, i32 0, i32 1, !dbg !1002
  %386 = load i32, ptr %385, align 8, !dbg !1002, !noundef !21
  %387 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_b, i64 0, i64 4, !dbg !1002
  %388 = getelementptr inbounds { i64, i32 }, ptr %387, i32 0, i32 0, !dbg !1002
  store i64 %384, ptr %388, align 8, !dbg !1002
  %389 = getelementptr inbounds { i64, i32 }, ptr %387, i32 0, i32 1, !dbg !1002
  store i32 %386, ptr %389, align 8, !dbg !1002
  %390 = getelementptr inbounds { i64, i32 }, ptr %_59, i32 0, i32 0, !dbg !1002
  %391 = load i64, ptr %390, align 8, !dbg !1002, !noundef !21
  %392 = getelementptr inbounds { i64, i32 }, ptr %_59, i32 0, i32 1, !dbg !1002
  %393 = load i32, ptr %392, align 8, !dbg !1002, !noundef !21
  %394 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_b, i64 0, i64 5, !dbg !1002
  %395 = getelementptr inbounds { i64, i32 }, ptr %394, i32 0, i32 0, !dbg !1002
  store i64 %391, ptr %395, align 8, !dbg !1002
  %396 = getelementptr inbounds { i64, i32 }, ptr %394, i32 0, i32 1, !dbg !1002
  store i32 %393, ptr %396, align 8, !dbg !1002
  %397 = getelementptr inbounds { i64, i32 }, ptr %_60, i32 0, i32 0, !dbg !1002
  %398 = load i64, ptr %397, align 8, !dbg !1002, !noundef !21
  %399 = getelementptr inbounds { i64, i32 }, ptr %_60, i32 0, i32 1, !dbg !1002
  %400 = load i32, ptr %399, align 8, !dbg !1002, !noundef !21
  %401 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_b, i64 0, i64 6, !dbg !1002
  %402 = getelementptr inbounds { i64, i32 }, ptr %401, i32 0, i32 0, !dbg !1002
  store i64 %398, ptr %402, align 8, !dbg !1002
  %403 = getelementptr inbounds { i64, i32 }, ptr %401, i32 0, i32 1, !dbg !1002
  store i32 %400, ptr %403, align 8, !dbg !1002
  %404 = getelementptr inbounds { i64, i32 }, ptr %_61, i32 0, i32 0, !dbg !1002
  %405 = load i64, ptr %404, align 8, !dbg !1002, !noundef !21
  %406 = getelementptr inbounds { i64, i32 }, ptr %_61, i32 0, i32 1, !dbg !1002
  %407 = load i32, ptr %406, align 8, !dbg !1002, !noundef !21
  %408 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_b, i64 0, i64 7, !dbg !1002
  %409 = getelementptr inbounds { i64, i32 }, ptr %408, i32 0, i32 0, !dbg !1002
  store i64 %405, ptr %409, align 8, !dbg !1002
  %410 = getelementptr inbounds { i64, i32 }, ptr %408, i32 0, i32 1, !dbg !1002
  store i32 %407, ptr %410, align 8, !dbg !1002
  %411 = getelementptr inbounds { i64, i32 }, ptr %_62, i32 0, i32 0, !dbg !1002
  %412 = load i64, ptr %411, align 8, !dbg !1002, !noundef !21
  %413 = getelementptr inbounds { i64, i32 }, ptr %_62, i32 0, i32 1, !dbg !1002
  %414 = load i32, ptr %413, align 8, !dbg !1002, !noundef !21
  %415 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_b, i64 0, i64 8, !dbg !1002
  %416 = getelementptr inbounds { i64, i32 }, ptr %415, i32 0, i32 0, !dbg !1002
  store i64 %412, ptr %416, align 8, !dbg !1002
  %417 = getelementptr inbounds { i64, i32 }, ptr %415, i32 0, i32 1, !dbg !1002
  store i32 %414, ptr %417, align 8, !dbg !1002
  %418 = getelementptr inbounds { i64, i32 }, ptr %_63, i32 0, i32 0, !dbg !1002
  %419 = load i64, ptr %418, align 8, !dbg !1002, !noundef !21
  %420 = getelementptr inbounds { i64, i32 }, ptr %_63, i32 0, i32 1, !dbg !1002
  %421 = load i32, ptr %420, align 8, !dbg !1002, !noundef !21
  %422 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_b, i64 0, i64 9, !dbg !1002
  %423 = getelementptr inbounds { i64, i32 }, ptr %422, i32 0, i32 0, !dbg !1002
  store i64 %419, ptr %423, align 8, !dbg !1002
  %424 = getelementptr inbounds { i64, i32 }, ptr %422, i32 0, i32 1, !dbg !1002
  store i32 %421, ptr %424, align 8, !dbg !1002
  %425 = getelementptr inbounds { i64, i32 }, ptr %_64, i32 0, i32 0, !dbg !1002
  %426 = load i64, ptr %425, align 8, !dbg !1002, !noundef !21
  %427 = getelementptr inbounds { i64, i32 }, ptr %_64, i32 0, i32 1, !dbg !1002
  %428 = load i32, ptr %427, align 8, !dbg !1002, !noundef !21
  %429 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_b, i64 0, i64 10, !dbg !1002
  %430 = getelementptr inbounds { i64, i32 }, ptr %429, i32 0, i32 0, !dbg !1002
  store i64 %426, ptr %430, align 8, !dbg !1002
  %431 = getelementptr inbounds { i64, i32 }, ptr %429, i32 0, i32 1, !dbg !1002
  store i32 %428, ptr %431, align 8, !dbg !1002
  %432 = getelementptr inbounds { i64, i32 }, ptr %_65, i32 0, i32 0, !dbg !1002
  %433 = load i64, ptr %432, align 8, !dbg !1002, !noundef !21
  %434 = getelementptr inbounds { i64, i32 }, ptr %_65, i32 0, i32 1, !dbg !1002
  %435 = load i32, ptr %434, align 8, !dbg !1002, !noundef !21
  %436 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_b, i64 0, i64 11, !dbg !1002
  %437 = getelementptr inbounds { i64, i32 }, ptr %436, i32 0, i32 0, !dbg !1002
  store i64 %433, ptr %437, align 8, !dbg !1002
  %438 = getelementptr inbounds { i64, i32 }, ptr %436, i32 0, i32 1, !dbg !1002
  store i32 %435, ptr %438, align 8, !dbg !1002
  %439 = getelementptr inbounds { i64, i32 }, ptr %_66, i32 0, i32 0, !dbg !1002
  %440 = load i64, ptr %439, align 8, !dbg !1002, !noundef !21
  %441 = getelementptr inbounds { i64, i32 }, ptr %_66, i32 0, i32 1, !dbg !1002
  %442 = load i32, ptr %441, align 8, !dbg !1002, !noundef !21
  %443 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_b, i64 0, i64 12, !dbg !1002
  %444 = getelementptr inbounds { i64, i32 }, ptr %443, i32 0, i32 0, !dbg !1002
  store i64 %440, ptr %444, align 8, !dbg !1002
  %445 = getelementptr inbounds { i64, i32 }, ptr %443, i32 0, i32 1, !dbg !1002
  store i32 %442, ptr %445, align 8, !dbg !1002
  %446 = getelementptr inbounds { i64, i32 }, ptr %_67, i32 0, i32 0, !dbg !1002
  %447 = load i64, ptr %446, align 8, !dbg !1002, !noundef !21
  %448 = getelementptr inbounds { i64, i32 }, ptr %_67, i32 0, i32 1, !dbg !1002
  %449 = load i32, ptr %448, align 8, !dbg !1002, !noundef !21
  %450 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_b, i64 0, i64 13, !dbg !1002
  %451 = getelementptr inbounds { i64, i32 }, ptr %450, i32 0, i32 0, !dbg !1002
  store i64 %447, ptr %451, align 8, !dbg !1002
  %452 = getelementptr inbounds { i64, i32 }, ptr %450, i32 0, i32 1, !dbg !1002
  store i32 %449, ptr %452, align 8, !dbg !1002
  %453 = getelementptr inbounds { i64, i32 }, ptr %_68, i32 0, i32 0, !dbg !1002
  %454 = load i64, ptr %453, align 8, !dbg !1002, !noundef !21
  %455 = getelementptr inbounds { i64, i32 }, ptr %_68, i32 0, i32 1, !dbg !1002
  %456 = load i32, ptr %455, align 8, !dbg !1002, !noundef !21
  %457 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_b, i64 0, i64 14, !dbg !1002
  %458 = getelementptr inbounds { i64, i32 }, ptr %457, i32 0, i32 0, !dbg !1002
  store i64 %454, ptr %458, align 8, !dbg !1002
  %459 = getelementptr inbounds { i64, i32 }, ptr %457, i32 0, i32 1, !dbg !1002
  store i32 %456, ptr %459, align 8, !dbg !1002
  %460 = getelementptr inbounds { i64, i32 }, ptr %_69, i32 0, i32 0, !dbg !1002
  %461 = load i64, ptr %460, align 8, !dbg !1002, !noundef !21
  %462 = getelementptr inbounds { i64, i32 }, ptr %_69, i32 0, i32 1, !dbg !1002
  %463 = load i32, ptr %462, align 8, !dbg !1002, !noundef !21
  %464 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_b, i64 0, i64 15, !dbg !1002
  %465 = getelementptr inbounds { i64, i32 }, ptr %464, i32 0, i32 0, !dbg !1002
  store i64 %461, ptr %465, align 8, !dbg !1002
  %466 = getelementptr inbounds { i64, i32 }, ptr %464, i32 0, i32 1, !dbg !1002
  store i32 %463, ptr %466, align 8, !dbg !1002
  %467 = getelementptr inbounds { i64, i32 }, ptr %_70, i32 0, i32 0, !dbg !1002
  %468 = load i64, ptr %467, align 8, !dbg !1002, !noundef !21
  %469 = getelementptr inbounds { i64, i32 }, ptr %_70, i32 0, i32 1, !dbg !1002
  %470 = load i32, ptr %469, align 8, !dbg !1002, !noundef !21
  %471 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_b, i64 0, i64 16, !dbg !1002
  %472 = getelementptr inbounds { i64, i32 }, ptr %471, i32 0, i32 0, !dbg !1002
  store i64 %468, ptr %472, align 8, !dbg !1002
  %473 = getelementptr inbounds { i64, i32 }, ptr %471, i32 0, i32 1, !dbg !1002
  store i32 %470, ptr %473, align 8, !dbg !1002
  %474 = getelementptr inbounds { i64, i32 }, ptr %_71, i32 0, i32 0, !dbg !1002
  %475 = load i64, ptr %474, align 8, !dbg !1002, !noundef !21
  %476 = getelementptr inbounds { i64, i32 }, ptr %_71, i32 0, i32 1, !dbg !1002
  %477 = load i32, ptr %476, align 8, !dbg !1002, !noundef !21
  %478 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_b, i64 0, i64 17, !dbg !1002
  %479 = getelementptr inbounds { i64, i32 }, ptr %478, i32 0, i32 0, !dbg !1002
  store i64 %475, ptr %479, align 8, !dbg !1002
  %480 = getelementptr inbounds { i64, i32 }, ptr %478, i32 0, i32 1, !dbg !1002
  store i32 %477, ptr %480, align 8, !dbg !1002
  %481 = getelementptr inbounds { i64, i32 }, ptr %_72, i32 0, i32 0, !dbg !1002
  %482 = load i64, ptr %481, align 8, !dbg !1002, !noundef !21
  %483 = getelementptr inbounds { i64, i32 }, ptr %_72, i32 0, i32 1, !dbg !1002
  %484 = load i32, ptr %483, align 8, !dbg !1002, !noundef !21
  %485 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_b, i64 0, i64 18, !dbg !1002
  %486 = getelementptr inbounds { i64, i32 }, ptr %485, i32 0, i32 0, !dbg !1002
  store i64 %482, ptr %486, align 8, !dbg !1002
  %487 = getelementptr inbounds { i64, i32 }, ptr %485, i32 0, i32 1, !dbg !1002
  store i32 %484, ptr %487, align 8, !dbg !1002
  %488 = getelementptr inbounds { i64, i32 }, ptr %_73, i32 0, i32 0, !dbg !1002
  %489 = load i64, ptr %488, align 8, !dbg !1002, !noundef !21
  %490 = getelementptr inbounds { i64, i32 }, ptr %_73, i32 0, i32 1, !dbg !1002
  %491 = load i32, ptr %490, align 8, !dbg !1002, !noundef !21
  %492 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_b, i64 0, i64 19, !dbg !1002
  %493 = getelementptr inbounds { i64, i32 }, ptr %492, i32 0, i32 0, !dbg !1002
  store i64 %489, ptr %493, align 8, !dbg !1002
  %494 = getelementptr inbounds { i64, i32 }, ptr %492, i32 0, i32 1, !dbg !1002
  store i32 %491, ptr %494, align 8, !dbg !1002
  store i64 0, ptr %_75, align 8, !dbg !1003
  %495 = getelementptr inbounds { i64, i64 }, ptr %_75, i32 0, i32 1, !dbg !1003
  store i64 20, ptr %495, align 8, !dbg !1003
  %496 = getelementptr inbounds { i64, i64 }, ptr %_75, i32 0, i32 0, !dbg !1003
  %497 = load i64, ptr %496, align 8, !dbg !1003, !noundef !21
  %498 = getelementptr inbounds { i64, i64 }, ptr %_75, i32 0, i32 1, !dbg !1003
  %499 = load i64, ptr %498, align 8, !dbg !1003, !noundef !21
  %500 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hb77d94a00def916aE"(i64 %497, i64 %499), !dbg !1003
  %_74.0 = extractvalue { i64, i64 } %500, 0, !dbg !1003
  %_74.1 = extractvalue { i64, i64 } %500, 1, !dbg !1003
  %501 = getelementptr inbounds { i64, i64 }, ptr %iter, i32 0, i32 0, !dbg !1003
  store i64 %_74.0, ptr %501, align 8, !dbg !1003
  %502 = getelementptr inbounds { i64, i64 }, ptr %iter, i32 0, i32 1, !dbg !1003
  store i64 %_74.1, ptr %502, align 8, !dbg !1003
  br label %bb5, !dbg !1004

bb5:                                              ; preds = %bb21, %repeat_loop_next
  %503 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17he59e48b2a12ae644E"(ptr align 8 %iter), !dbg !930
  store { i64, i64 } %503, ptr %_77, align 8, !dbg !930
  %_79 = load i64, ptr %_77, align 8, !dbg !930, !range !591, !noundef !21
  %504 = icmp eq i64 %_79, 0, !dbg !930
  br i1 %504, label %bb9, label %bb7, !dbg !930

bb9:                                              ; preds = %bb5
  store i8 1, ptr %0, align 1, !dbg !1005
  br label %bb27, !dbg !1006

bb7:                                              ; preds = %bb5
  %505 = getelementptr inbounds { i64, i64 }, ptr %_77, i32 0, i32 1, !dbg !1007
  %i = load i64, ptr %505, align 8, !dbg !1007, !noundef !21
  store i64 %i, ptr %i.dbg.spill, align 8, !dbg !1007
    #dbg_declare(ptr %i.dbg.spill, !924, !DIExpression(), !1008)
  %_85 = icmp ult i64 %i, 20, !dbg !1009
  %506 = call i1 @llvm.expect.i1(i1 %_85, i1 true), !dbg !1009
  br i1 %506, label %bb13, label %panic, !dbg !1009

bb8:                                              ; No predecessors!
  unreachable, !dbg !930

bb13:                                             ; preds = %bb7
  %507 = getelementptr inbounds [20 x { i64, i32 }], ptr %a, i64 0, i64 %i, !dbg !1009
  %_83 = load i64, ptr %507, align 8, !dbg !1009, !noundef !21
  %_88 = icmp ult i64 %i, 20, !dbg !1010
  %508 = call i1 @llvm.expect.i1(i1 %_88, i1 true), !dbg !1010
  br i1 %508, label %bb14, label %panic1, !dbg !1010

panic:                                            ; preds = %bb7
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 20, ptr align 8 @alloc_3ae9a56f68c27633a857d0e60283b578) #6, !dbg !1009
  unreachable, !dbg !1009

bb14:                                             ; preds = %bb13
  %509 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_a, i64 0, i64 %i, !dbg !1010
  %_86 = load i64, ptr %509, align 8, !dbg !1010, !noundef !21
  %_82 = icmp ne i64 %_83, %_86, !dbg !1009
  br i1 %_82, label %bb10, label %bb11, !dbg !1009

panic1:                                           ; preds = %bb13
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 20, ptr align 8 @alloc_a3c1806865102b3269a585ff4f7fd097) #6, !dbg !1010
  unreachable, !dbg !1010

bb11:                                             ; preds = %bb14
  %_92 = icmp ult i64 %i, 20, !dbg !1011
  %510 = call i1 @llvm.expect.i1(i1 %_92, i1 true), !dbg !1011
  br i1 %510, label %bb15, label %panic2, !dbg !1011

bb10:                                             ; preds = %bb14
  store i8 1, ptr %_81, align 1, !dbg !1009
  br label %bb12, !dbg !1009

bb12:                                             ; preds = %bb16, %bb10
  %511 = load i8, ptr %_81, align 1, !dbg !1009, !range !287, !noundef !21
  %512 = trunc i8 %511 to i1, !dbg !1009
  br i1 %512, label %bb17, label %bb18, !dbg !1009

bb15:                                             ; preds = %bb11
  %513 = getelementptr inbounds [20 x { i64, i32 }], ptr %a, i64 0, i64 %i, !dbg !1011
  %514 = getelementptr inbounds { i64, i32 }, ptr %513, i32 0, i32 1, !dbg !1011
  %_90 = load i32, ptr %514, align 8, !dbg !1011, !noundef !21
  %_95 = icmp ult i64 %i, 20, !dbg !1012
  %515 = call i1 @llvm.expect.i1(i1 %_95, i1 true), !dbg !1012
  br i1 %515, label %bb16, label %panic3, !dbg !1012

panic2:                                           ; preds = %bb11
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 20, ptr align 8 @alloc_fb9c2d5397a263ccbe8d1c9372a99860) #6, !dbg !1011
  unreachable, !dbg !1011

bb16:                                             ; preds = %bb15
  %516 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_a, i64 0, i64 %i, !dbg !1012
  %517 = getelementptr inbounds { i64, i32 }, ptr %516, i32 0, i32 1, !dbg !1012
  %_93 = load i32, ptr %517, align 8, !dbg !1012, !noundef !21
  %_89 = icmp ne i32 %_90, %_93, !dbg !1011
  %518 = zext i1 %_89 to i8, !dbg !1009
  store i8 %518, ptr %_81, align 1, !dbg !1009
  br label %bb12, !dbg !1009

panic3:                                           ; preds = %bb15
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 20, ptr align 8 @alloc_f58d7ee267464a2d6fd0e0da1a98e9b8) #6, !dbg !1012
  unreachable, !dbg !1012

bb18:                                             ; preds = %bb12
  %_100 = icmp ult i64 %i, 20, !dbg !1013
  %519 = call i1 @llvm.expect.i1(i1 %_100, i1 true), !dbg !1013
  br i1 %519, label %bb22, label %panic4, !dbg !1013

bb17:                                             ; preds = %bb12
  store i8 0, ptr %0, align 1, !dbg !1014
  br label %bb27, !dbg !1015

bb27:                                             ; preds = %bb26, %bb17, %bb9
  %520 = load i8, ptr %0, align 1, !dbg !1006, !range !287, !noundef !21
  %521 = trunc i8 %520 to i1, !dbg !1006
  ret i1 %521, !dbg !1006

bb22:                                             ; preds = %bb18
  %522 = getelementptr inbounds [20 x { i64, i32 }], ptr %b, i64 0, i64 %i, !dbg !1013
  %_98 = load i64, ptr %522, align 8, !dbg !1013, !noundef !21
  %_103 = icmp ult i64 %i, 20, !dbg !1017
  %523 = call i1 @llvm.expect.i1(i1 %_103, i1 true), !dbg !1017
  br i1 %523, label %bb23, label %panic5, !dbg !1017

panic4:                                           ; preds = %bb18
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 20, ptr align 8 @alloc_f046352647fcff5ec0f1ffcff9b926d3) #6, !dbg !1013
  unreachable, !dbg !1013

bb23:                                             ; preds = %bb22
  %524 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_b, i64 0, i64 %i, !dbg !1017
  %_101 = load i64, ptr %524, align 8, !dbg !1017, !noundef !21
  %_97 = icmp ne i64 %_98, %_101, !dbg !1013
  br i1 %_97, label %bb19, label %bb20, !dbg !1013

panic5:                                           ; preds = %bb22
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 20, ptr align 8 @alloc_359bb44c754a340398eaf1100f1ed852) #6, !dbg !1017
  unreachable, !dbg !1017

bb20:                                             ; preds = %bb23
  %_107 = icmp ult i64 %i, 20, !dbg !1018
  %525 = call i1 @llvm.expect.i1(i1 %_107, i1 true), !dbg !1018
  br i1 %525, label %bb24, label %panic6, !dbg !1018

bb19:                                             ; preds = %bb23
  store i8 1, ptr %_96, align 1, !dbg !1013
  br label %bb21, !dbg !1013

bb21:                                             ; preds = %bb25, %bb19
  %526 = load i8, ptr %_96, align 1, !dbg !1013, !range !287, !noundef !21
  %527 = trunc i8 %526 to i1, !dbg !1013
  br i1 %527, label %bb26, label %bb5, !dbg !1013

bb24:                                             ; preds = %bb20
  %528 = getelementptr inbounds [20 x { i64, i32 }], ptr %b, i64 0, i64 %i, !dbg !1018
  %529 = getelementptr inbounds { i64, i32 }, ptr %528, i32 0, i32 1, !dbg !1018
  %_105 = load i32, ptr %529, align 8, !dbg !1018, !noundef !21
  %_110 = icmp ult i64 %i, 20, !dbg !1019
  %530 = call i1 @llvm.expect.i1(i1 %_110, i1 true), !dbg !1019
  br i1 %530, label %bb25, label %panic7, !dbg !1019

panic6:                                           ; preds = %bb20
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 20, ptr align 8 @alloc_f05bc66f8941a71ab3b5ddbf88b4793a) #6, !dbg !1018
  unreachable, !dbg !1018

bb25:                                             ; preds = %bb24
  %531 = getelementptr inbounds [20 x { i64, i32 }], ptr %expected_b, i64 0, i64 %i, !dbg !1019
  %532 = getelementptr inbounds { i64, i32 }, ptr %531, i32 0, i32 1, !dbg !1019
  %_108 = load i32, ptr %532, align 8, !dbg !1019, !noundef !21
  %_104 = icmp ne i32 %_105, %_108, !dbg !1018
  %533 = zext i1 %_104 to i8, !dbg !1013
  store i8 %533, ptr %_96, align 1, !dbg !1013
  br label %bb21, !dbg !1013

panic7:                                           ; preds = %bb24
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 20, ptr align 8 @alloc_8b564a105a0cb2786961edd9b6173103) #6, !dbg !1019
  unreachable, !dbg !1019

bb26:                                             ; preds = %bb21
  store i8 0, ptr %0, align 1, !dbg !1020
  br label %bb27, !dbg !1015
}

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}

!0 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !1, producer: "clang LLVM (rustc version 1.70.0-nightly (84dd17b56 2023-04-14))", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!1 = !DIFile(filename: "lib.rs/@/xyawzilhbutqbe7", directory: "/crisp-rust-outputs/B01_organic/merge_sort_lib/translated_rust")
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 2, !"RtLibUseGOT", i32 1}
!4 = !{i32 2, !"Dwarf Version", i32 4}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = distinct !DISubprogram(name: "merge_sort_ffi", linkageName: "merge_sort", scope: !8, file: !7, line: 80, type: !11, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !21, retainedNodes: !22)
!7 = !DIFile(filename: "src/lib.rs", directory: "/crisp-rust-outputs/B01_organic/merge_sort_lib/translated_rust", checksumkind: CSK_MD5, checksum: "c3e01d0808c6ed1e731c55889565db25")
!8 = !DINamespace(name: "lib", scope: !9)
!9 = !DINamespace(name: "src", scope: !10)
!10 = !DINamespace(name: "merge_sort_lib", scope: null)
!11 = !DISubroutineType(types: !12)
!12 = !{null, !13, !13, !20}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut merge_sort_lib::src::lib::SpritebatchSpriteT", baseType: !14, size: 64, align: 64, dwarfAddressSpace: 0)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SpritebatchSpriteT", scope: !8, file: !15, size: 128, align: 64, elements: !16, templateParams: !21, identifier: "665d5c8c4e805dabfcde0e5938f913f1")
!15 = !DIFile(filename: "<unknown>", directory: "")
!16 = !{!17, !19}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "texture_id", scope: !14, file: !15, baseType: !18, size: 64, align: 64)
!18 = !DIBasicType(name: "u64", size: 64, encoding: DW_ATE_unsigned)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "sort_bits", scope: !14, file: !15, baseType: !20, size: 32, align: 32, offset: 64)
!20 = !DIBasicType(name: "i32", size: 32, encoding: DW_ATE_signed)
!21 = !{}
!22 = !{!23, !24, !25, !26, !29, !36}
!23 = !DILocalVariable(name: "a", arg: 1, scope: !6, file: !7, line: 81, type: !13)
!24 = !DILocalVariable(name: "b", arg: 2, scope: !6, file: !7, line: 82, type: !13)
!25 = !DILocalVariable(name: "size", arg: 3, scope: !6, file: !7, line: 83, type: !20)
!26 = !DILocalVariable(name: "len", scope: !27, file: !7, line: 85, type: !28, align: 8)
!27 = distinct !DILexicalBlock(scope: !6, file: !7, line: 85, column: 5)
!28 = !DIBasicType(name: "usize", size: 64, encoding: DW_ATE_unsigned)
!29 = !DILocalVariable(name: "a", scope: !30, file: !7, line: 86, type: !31, align: 8)
!30 = distinct !DILexicalBlock(scope: !27, file: !7, line: 86, column: 5)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "&mut [merge_sort_lib::src::lib::SpritebatchSpriteT]", file: !15, size: 128, align: 64, elements: !32, templateParams: !21, identifier: "915d1e0da3017e268c67339b975b5d0")
!32 = !{!33, !35}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !31, file: !15, baseType: !34, size: 64, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64, dwarfAddressSpace: 0)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !31, file: !15, baseType: !28, size: 64, align: 64, offset: 64)
!36 = !DILocalVariable(name: "b", scope: !37, file: !7, line: 87, type: !31, align: 8)
!37 = distinct !DILexicalBlock(scope: !30, file: !7, line: 87, column: 5)
!38 = !DILocation(line: 81, column: 5, scope: !6)
!39 = !DILocation(line: 82, column: 5, scope: !6)
!40 = !DILocation(line: 83, column: 5, scope: !6)
!41 = !DILocation(line: 85, column: 15, scope: !6)
!42 = !DILocation(line: 85, column: 9, scope: !27)
!43 = !DILocation(line: 86, column: 13, scope: !27)
!44 = !DILocation(line: 86, column: 9, scope: !30)
!45 = !DILocation(line: 87, column: 13, scope: !30)
!46 = !DILocation(line: 87, column: 9, scope: !37)
!47 = !DILocation(line: 88, column: 5, scope: !37)
!48 = !DILocation(line: 89, column: 2, scope: !6)
!49 = distinct !DISubprogram(name: "from_raw_parts_mut<merge_sort_lib::src::lib::SpritebatchSpriteT>", linkageName: "_ZN4core5slice3raw18from_raw_parts_mut17h17e023de62a3344eE", scope: !51, file: !50, line: 137, type: !54, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !59, retainedNodes: !56)
!50 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/slice/raw.rs", directory: "", checksumkind: CSK_MD5, checksum: "4e9e8b780584cc248c586456197d9cf5")
!51 = !DINamespace(name: "raw", scope: !52)
!52 = !DINamespace(name: "slice", scope: !53)
!53 = !DINamespace(name: "core", scope: null)
!54 = !DISubroutineType(types: !55)
!55 = !{!31, !13, !28}
!56 = !{!57, !58}
!57 = !DILocalVariable(name: "data", arg: 1, scope: !49, file: !50, line: 137, type: !13)
!58 = !DILocalVariable(name: "len", arg: 2, scope: !49, file: !50, line: 137, type: !28)
!59 = !{!60}
!60 = !DITemplateTypeParameter(name: "T", type: !14)
!61 = !DILocation(line: 137, column: 47, scope: !49)
!62 = !DILocalVariable(name: "data", arg: 1, scope: !63, file: !64, line: 765, type: !13)
!63 = distinct !DISubprogram(name: "slice_from_raw_parts_mut<merge_sort_lib::src::lib::SpritebatchSpriteT>", linkageName: "_ZN4core3ptr24slice_from_raw_parts_mut17hbf26dfd7ccd42242E", scope: !65, file: !64, line: 765, type: !66, scopeLine: 765, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !59, retainedNodes: !72)
!64 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/ptr/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "4b0ac29df94a7dc1bf2bc7efca5e253a")
!65 = !DINamespace(name: "ptr", scope: !53)
!66 = !DISubroutineType(types: !67)
!67 = !{!68, !13, !28}
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "*mut [merge_sort_lib::src::lib::SpritebatchSpriteT]", file: !15, size: 128, align: 64, elements: !69, templateParams: !21, identifier: "1119838dd6308c95c5acd42fc668f113")
!69 = !{!70, !71}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !68, file: !15, baseType: !34, size: 64, align: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !68, file: !15, baseType: !28, size: 64, align: 64, offset: 64)
!72 = !{!62, !73}
!73 = !DILocalVariable(name: "len", arg: 2, scope: !63, file: !64, line: 765, type: !28)
!74 = !DILocation(line: 765, column: 42, scope: !63, inlinedAt: !75)
!75 = !DILocation(line: 145, column: 15, scope: !49)
!76 = !DILocalVariable(name: "self", arg: 1, scope: !77, file: !78, line: 57, type: !13)
!77 = distinct !DISubprogram(name: "cast<merge_sort_lib::src::lib::SpritebatchSpriteT, ()>", linkageName: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4cast17h1a8d09ae24dc387eE", scope: !79, file: !78, line: 57, type: !81, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !86, retainedNodes: !85)
!78 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/ptr/mut_ptr.rs", directory: "", checksumkind: CSK_MD5, checksum: "11087a90ad8f3b9862444e143466697a")
!79 = !DINamespace(name: "{impl#0}", scope: !80)
!80 = !DINamespace(name: "mut_ptr", scope: !65)
!81 = !DISubroutineType(types: !82)
!82 = !{!83, !13}
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut ()", baseType: !84, size: 64, align: 64, dwarfAddressSpace: 0)
!84 = !DIBasicType(name: "()", encoding: DW_ATE_unsigned)
!85 = !{!76}
!86 = !{!60, !87}
!87 = !DITemplateTypeParameter(name: "U", type: !84)
!88 = !DILocation(line: 57, column: 26, scope: !77, inlinedAt: !89)
!89 = !DILocation(line: 766, column: 29, scope: !63, inlinedAt: !75)
!90 = !DILocation(line: 137, column: 61, scope: !49)
!91 = !DILocation(line: 765, column: 56, scope: !63, inlinedAt: !75)
!92 = !DILocalVariable(name: "metadata", arg: 2, scope: !93, file: !94, line: 130, type: !28)
!93 = distinct !DISubprogram(name: "from_raw_parts_mut<[merge_sort_lib::src::lib::SpritebatchSpriteT]>", linkageName: "_ZN4core3ptr8metadata18from_raw_parts_mut17h2ed6827c7c360ffaE", scope: !95, file: !94, line: 128, type: !96, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !59, retainedNodes: !98)
!94 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/ptr/metadata.rs", directory: "", checksumkind: CSK_MD5, checksum: "1e1a461bde75de7a93357ca7e628f393")
!95 = !DINamespace(name: "metadata", scope: !65)
!96 = !DISubroutineType(types: !97)
!97 = !{!68, !83, !28}
!98 = !{!99, !92}
!99 = !DILocalVariable(name: "data_address", arg: 1, scope: !93, file: !94, line: 129, type: !83)
!100 = !DILocation(line: 130, column: 5, scope: !93, inlinedAt: !101)
!101 = !DILocation(line: 766, column: 5, scope: !63, inlinedAt: !75)
!102 = !DILocation(line: 58, column: 9, scope: !77, inlinedAt: !89)
!103 = !DILocation(line: 129, column: 5, scope: !93, inlinedAt: !101)
!104 = !DILocation(line: 135, column: 36, scope: !93, inlinedAt: !101)
!105 = !DILocation(line: 135, column: 14, scope: !93, inlinedAt: !101)
!106 = !DILocation(line: 147, column: 2, scope: !49)
!107 = distinct !DISubprogram(name: "merge_sort", linkageName: "_ZN14merge_sort_lib3src3lib10merge_sort17h3b79dbc282c3e14bE", scope: !8, file: !7, line: 66, type: !108, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !21, retainedNodes: !110)
!108 = !DISubroutineType(types: !109)
!109 = !{null, !31, !31, !20}
!110 = !{!111, !112, !113, !114}
!111 = !DILocalVariable(name: "a", arg: 1, scope: !107, file: !7, line: 67, type: !31)
!112 = !DILocalVariable(name: "b", arg: 2, scope: !107, file: !7, line: 68, type: !31)
!113 = !DILocalVariable(name: "size", arg: 3, scope: !107, file: !7, line: 69, type: !20)
!114 = !DILocalVariable(name: "size", scope: !115, file: !7, line: 71, type: !28, align: 8)
!115 = distinct !DILexicalBlock(scope: !107, file: !7, line: 71, column: 5)
!116 = !DILocation(line: 67, column: 5, scope: !107)
!117 = !DILocation(line: 68, column: 5, scope: !107)
!118 = !DILocation(line: 69, column: 5, scope: !107)
!119 = !DILocation(line: 71, column: 16, scope: !107)
!120 = !DILocation(line: 71, column: 9, scope: !115)
!121 = !DILocation(line: 72, column: 13, scope: !115)
!122 = !DILocation(line: 72, column: 5, scope: !115)
!123 = !DILocation(line: 73, column: 13, scope: !115)
!124 = !DILocation(line: 73, column: 5, scope: !115)
!125 = !DILocation(line: 75, column: 7, scope: !115)
!126 = !DILocation(line: 75, column: 5, scope: !115)
!127 = !DILocation(line: 75, column: 34, scope: !115)
!128 = !DILocation(line: 75, column: 32, scope: !115)
!129 = !DILocation(line: 76, column: 52, scope: !115)
!130 = !DILocation(line: 76, column: 50, scope: !115)
!131 = !DILocation(line: 76, column: 77, scope: !115)
!132 = !DILocation(line: 76, column: 75, scope: !115)
!133 = !DILocation(line: 76, column: 5, scope: !115)
!134 = !DILocation(line: 77, column: 2, scope: !107)
!135 = distinct !DISubprogram(name: "index_mut<merge_sort_lib::src::lib::SpritebatchSpriteT, core::ops::range::RangeTo<usize>>", linkageName: "_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h8d9940a6045321a0E", scope: !137, file: !136, line: 30, type: !139, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !166, retainedNodes: !163)
!136 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/slice/index.rs", directory: "", checksumkind: CSK_MD5, checksum: "1350c165f4aa6e79d8fe4fa0de29c328")
!137 = !DINamespace(name: "{impl#1}", scope: !138)
!138 = !DINamespace(name: "index", scope: !52)
!139 = !DISubroutineType(types: !140)
!140 = !{!31, !31, !141, !148}
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RangeTo<usize>", scope: !142, file: !15, size: 64, align: 64, elements: !144, templateParams: !146, identifier: "da302084393465f458307a5c67238369")
!142 = !DINamespace(name: "range", scope: !143)
!143 = !DINamespace(name: "ops", scope: !53)
!144 = !{!145}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !141, file: !15, baseType: !28, size: 64, align: 64)
!146 = !{!147}
!147 = !DITemplateTypeParameter(name: "Idx", type: !28)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::panic::location::Location", baseType: !149, size: 64, align: 64, dwarfAddressSpace: 0)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Location", scope: !150, file: !15, size: 192, align: 64, elements: !152, templateParams: !21, identifier: "2dffe35ce6e614c7231bda0a859f9fe2")
!150 = !DINamespace(name: "location", scope: !151)
!151 = !DINamespace(name: "panic", scope: !53)
!152 = !{!153, !160, !162}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !149, file: !15, baseType: !154, size: 128, align: 64)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "&str", file: !15, size: 128, align: 64, elements: !155, templateParams: !21, identifier: "857c99401054bcaa39f98e6e0c6d74b")
!155 = !{!156, !159}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !154, file: !15, baseType: !157, size: 64, align: 64)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64, align: 64, dwarfAddressSpace: 0)
!158 = !DIBasicType(name: "u8", size: 8, encoding: DW_ATE_unsigned)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !154, file: !15, baseType: !28, size: 64, align: 64, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !149, file: !15, baseType: !161, size: 32, align: 32, offset: 128)
!161 = !DIBasicType(name: "u32", size: 32, encoding: DW_ATE_unsigned)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "col", scope: !149, file: !15, baseType: !161, size: 32, align: 32, offset: 160)
!163 = !{!164, !165}
!164 = !DILocalVariable(name: "self", arg: 1, scope: !135, file: !136, line: 30, type: !31)
!165 = !DILocalVariable(name: "index", arg: 2, scope: !135, file: !136, line: 30, type: !141)
!166 = !{!60, !167}
!167 = !DITemplateTypeParameter(name: "I", type: !141)
!168 = !DILocation(line: 30, column: 18, scope: !135)
!169 = !DILocation(line: 30, column: 29, scope: !135)
!170 = !DILocation(line: 31, column: 9, scope: !135)
!171 = !DILocation(line: 32, column: 6, scope: !135)
!172 = distinct !DISubprogram(name: "index<merge_sort_lib::src::lib::SpritebatchSpriteT, core::ops::range::RangeTo<usize>>", linkageName: "_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h5568de0b1ac72d4aE", scope: !173, file: !136, line: 18, type: !174, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !166, retainedNodes: !180)
!173 = !DINamespace(name: "{impl#0}", scope: !138)
!174 = !DISubroutineType(types: !175)
!175 = !{!176, !176, !141, !148}
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "&[merge_sort_lib::src::lib::SpritebatchSpriteT]", file: !15, size: 128, align: 64, elements: !177, templateParams: !21, identifier: "a0afe85923b36d0b72299db6a64dcb22")
!177 = !{!178, !179}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !176, file: !15, baseType: !34, size: 64, align: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !176, file: !15, baseType: !28, size: 64, align: 64, offset: 64)
!180 = !{!181, !182}
!181 = !DILocalVariable(name: "self", arg: 1, scope: !172, file: !136, line: 18, type: !176)
!182 = !DILocalVariable(name: "index", arg: 2, scope: !172, file: !136, line: 18, type: !141)
!183 = !DILocation(line: 18, column: 14, scope: !172)
!184 = !DILocation(line: 18, column: 21, scope: !172)
!185 = !DILocation(line: 19, column: 9, scope: !172)
!186 = !DILocation(line: 20, column: 6, scope: !172)
!187 = distinct !DISubprogram(name: "copy_from_slice<merge_sort_lib::src::lib::SpritebatchSpriteT>", linkageName: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h079f5725ca44250fE", scope: !189, file: !188, line: 3331, type: !190, scopeLine: 3331, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !59, retainedNodes: !192)
!188 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/slice/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "0b3adda84e3d0ea3eafbebcfb4ca210d")
!189 = !DINamespace(name: "{impl#0}", scope: !52)
!190 = !DISubroutineType(types: !191)
!191 = !{null, !31, !176, !148}
!192 = !{!193, !194}
!193 = !DILocalVariable(name: "self", arg: 1, scope: !187, file: !188, line: 3331, type: !31)
!194 = !DILocalVariable(name: "src", arg: 2, scope: !187, file: !188, line: 3331, type: !176)
!195 = !DILocation(line: 3331, column: 28, scope: !187)
!196 = !DILocalVariable(name: "self", arg: 1, scope: !197, file: !188, line: 506, type: !31)
!197 = distinct !DISubprogram(name: "as_mut_ptr<merge_sort_lib::src::lib::SpritebatchSpriteT>", linkageName: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17h7c3365bbcd405c6bE", scope: !189, file: !188, line: 506, type: !198, scopeLine: 506, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !59, retainedNodes: !200)
!198 = !DISubroutineType(types: !199)
!199 = !{!13, !31}
!200 = !{!196}
!201 = !DILocation(line: 506, column: 29, scope: !197, inlinedAt: !202)
!202 = !DILocation(line: 3355, column: 57, scope: !187)
!203 = !DILocation(line: 3331, column: 39, scope: !187)
!204 = !DILocalVariable(name: "self", arg: 1, scope: !205, file: !188, line: 476, type: !176)
!205 = distinct !DISubprogram(name: "as_ptr<merge_sort_lib::src::lib::SpritebatchSpriteT>", linkageName: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h2cba4cf41bf92210E", scope: !189, file: !188, line: 476, type: !206, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !59, retainedNodes: !209)
!206 = !DISubroutineType(types: !207)
!207 = !{!208, !176}
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const merge_sort_lib::src::lib::SpritebatchSpriteT", baseType: !14, size: 64, align: 64, dwarfAddressSpace: 0)
!209 = !{!204}
!210 = !DILocation(line: 476, column: 25, scope: !205, inlinedAt: !211)
!211 = !DILocation(line: 3355, column: 42, scope: !187)
!212 = !DILocation(line: 3347, column: 12, scope: !187)
!213 = !DILocation(line: 477, column: 9, scope: !205, inlinedAt: !211)
!214 = !DILocalVariable(name: "src", arg: 1, scope: !215, file: !216, line: 2619, type: !208)
!215 = distinct !DISubprogram(name: "copy_nonoverlapping<merge_sort_lib::src::lib::SpritebatchSpriteT>", linkageName: "_ZN4core10intrinsics19copy_nonoverlapping17h464802fe503a1074E", scope: !217, file: !216, line: 2619, type: !218, scopeLine: 2619, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !59, retainedNodes: !220)
!216 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/intrinsics.rs", directory: "", checksumkind: CSK_MD5, checksum: "3a443bdaf0a09f89f5b2fb75aa981800")
!217 = !DINamespace(name: "intrinsics", scope: !53)
!218 = !DISubroutineType(types: !219)
!219 = !{null, !208, !13, !28}
!220 = !{!214, !221, !222}
!221 = !DILocalVariable(name: "dst", arg: 2, scope: !215, file: !216, line: 2619, type: !13)
!222 = !DILocalVariable(name: "count", arg: 3, scope: !215, file: !216, line: 2619, type: !28)
!223 = !DILocation(line: 2619, column: 44, scope: !215, inlinedAt: !224)
!224 = !DILocation(line: 3355, column: 13, scope: !187)
!225 = !DILocation(line: 507, column: 9, scope: !197, inlinedAt: !202)
!226 = !DILocation(line: 2619, column: 59, scope: !215, inlinedAt: !224)
!227 = !DILocation(line: 3355, column: 71, scope: !187)
!228 = !DILocation(line: 2619, column: 72, scope: !215, inlinedAt: !224)
!229 = !DILocation(line: 2637, column: 9, scope: !215, inlinedAt: !224)
!230 = !DILocation(line: 3357, column: 6, scope: !187)
!231 = !DILocation(line: 3348, column: 13, scope: !187)
!232 = distinct !DISubprogram(name: "spritebatch_internal_merge_sort_recurse", linkageName: "_ZN14merge_sort_lib3src3lib39spritebatch_internal_merge_sort_recurse17hdb290813fcbf0615E", scope: !8, file: !7, line: 52, type: !233, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !21, retainedNodes: !235)
!233 = !DISubroutineType(types: !234)
!234 = !{null, !31, !28, !28, !31}
!235 = !{!236, !237, !238, !239, !240}
!236 = !DILocalVariable(name: "b", arg: 1, scope: !232, file: !7, line: 53, type: !31)
!237 = !DILocalVariable(name: "lo", arg: 2, scope: !232, file: !7, line: 54, type: !28)
!238 = !DILocalVariable(name: "hi", arg: 3, scope: !232, file: !7, line: 55, type: !28)
!239 = !DILocalVariable(name: "a", arg: 4, scope: !232, file: !7, line: 56, type: !31)
!240 = !DILocalVariable(name: "split", scope: !241, file: !7, line: 61, type: !28, align: 8)
!241 = distinct !DILexicalBlock(scope: !232, file: !7, line: 61, column: 5)
!242 = !DILocation(line: 53, column: 5, scope: !232)
!243 = !DILocation(line: 54, column: 5, scope: !232)
!244 = !DILocation(line: 55, column: 5, scope: !232)
!245 = !DILocation(line: 56, column: 5, scope: !232)
!246 = !DILocation(line: 58, column: 8, scope: !232)
!247 = !DILocation(line: 61, column: 17, scope: !232)
!248 = !DILocation(line: 65, column: 2, scope: !232)
!249 = !DILocation(line: 61, column: 9, scope: !241)
!250 = !DILocation(line: 62, column: 5, scope: !241)
!251 = !DILocation(line: 63, column: 5, scope: !241)
!252 = !DILocation(line: 64, column: 5, scope: !241)
!253 = distinct !DISubprogram(name: "spritebatch_internal_merge_sort_iteration", linkageName: "_ZN14merge_sort_lib3src3lib41spritebatch_internal_merge_sort_iteration17h2e49a6761ad844daE", scope: !8, file: !7, line: 27, type: !254, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !21, retainedNodes: !256)
!254 = !DISubroutineType(types: !255)
!255 = !{null, !176, !28, !28, !28, !31}
!256 = !{!257, !258, !259, !260, !261, !262, !264, !266}
!257 = !DILocalVariable(name: "a", arg: 1, scope: !253, file: !7, line: 28, type: !176)
!258 = !DILocalVariable(name: "lo", arg: 2, scope: !253, file: !7, line: 29, type: !28)
!259 = !DILocalVariable(name: "split", arg: 3, scope: !253, file: !7, line: 30, type: !28)
!260 = !DILocalVariable(name: "hi", arg: 4, scope: !253, file: !7, line: 31, type: !28)
!261 = !DILocalVariable(name: "b", arg: 5, scope: !253, file: !7, line: 32, type: !31)
!262 = !DILocalVariable(name: "i", scope: !263, file: !7, line: 34, type: !28, align: 8)
!263 = distinct !DILexicalBlock(scope: !253, file: !7, line: 34, column: 5)
!264 = !DILocalVariable(name: "j", scope: !265, file: !7, line: 35, type: !28, align: 8)
!265 = distinct !DILexicalBlock(scope: !263, file: !7, line: 35, column: 5)
!266 = !DILocalVariable(name: "k", scope: !267, file: !7, line: 36, type: !28, align: 8)
!267 = distinct !DILexicalBlock(scope: !265, file: !7, line: 36, column: 5)
!268 = !DILocation(line: 28, column: 5, scope: !253)
!269 = !DILocation(line: 29, column: 5, scope: !253)
!270 = !DILocation(line: 30, column: 5, scope: !253)
!271 = !DILocation(line: 31, column: 5, scope: !253)
!272 = !DILocation(line: 32, column: 5, scope: !253)
!273 = !DILocation(line: 34, column: 9, scope: !263)
!274 = !DILocation(line: 35, column: 9, scope: !265)
!275 = !DILocation(line: 36, column: 9, scope: !267)
!276 = !DILocation(line: 34, column: 17, scope: !253)
!277 = !DILocation(line: 35, column: 17, scope: !263)
!278 = !DILocation(line: 36, column: 17, scope: !265)
!279 = !DILocation(line: 38, column: 5, scope: !267)
!280 = !DILocation(line: 38, column: 11, scope: !267)
!281 = !DILocation(line: 51, column: 2, scope: !253)
!282 = !DILocation(line: 39, column: 12, scope: !267)
!283 = !DILocation(line: 40, column: 17, scope: !267)
!284 = !DILocation(line: 40, column: 16, scope: !267)
!285 = !DILocation(line: 41, column: 70, scope: !267)
!286 = !DILocation(line: 41, column: 68, scope: !267)
!287 = !{i8 0, i8 2}
!288 = !DILocation(line: 41, column: 67, scope: !267)
!289 = !DILocation(line: 41, column: 77, scope: !267)
!290 = !DILocation(line: 41, column: 75, scope: !267)
!291 = !DILocation(line: 41, column: 74, scope: !267)
!292 = !DILocation(line: 41, column: 20, scope: !267)
!293 = !DILocation(line: 46, column: 22, scope: !267)
!294 = !DILocation(line: 46, column: 20, scope: !267)
!295 = !DILocation(line: 43, column: 22, scope: !267)
!296 = !DILocation(line: 43, column: 20, scope: !267)
!297 = !DILocation(line: 43, column: 15, scope: !267)
!298 = !DILocation(line: 43, column: 13, scope: !267)
!299 = !DILocation(line: 44, column: 13, scope: !267)
!300 = !DILocation(line: 39, column: 9, scope: !267)
!301 = !DILocation(line: 49, column: 9, scope: !267)
!302 = !DILocation(line: 46, column: 15, scope: !267)
!303 = !DILocation(line: 46, column: 13, scope: !267)
!304 = !DILocation(line: 47, column: 13, scope: !267)
!305 = distinct !DISubprogram(name: "spritebatch_internal_sprite_less_than_or_equal", linkageName: "_ZN14merge_sort_lib3src3lib46spritebatch_internal_sprite_less_than_or_equal17hfb959c40440efdd8E", scope: !8, file: !7, line: 15, type: !306, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !21, retainedNodes: !309)
!306 = !DISubroutineType(types: !307)
!307 = !{!20, !308, !308}
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&merge_sort_lib::src::lib::SpritebatchSpriteT", baseType: !14, size: 64, align: 64, dwarfAddressSpace: 0)
!309 = !{!310, !311}
!310 = !DILocalVariable(name: "a", arg: 1, scope: !305, file: !7, line: 16, type: !308)
!311 = !DILocalVariable(name: "b", arg: 2, scope: !305, file: !7, line: 17, type: !308)
!312 = !DILocation(line: 16, column: 5, scope: !305)
!313 = !DILocation(line: 17, column: 5, scope: !305)
!314 = !DILocation(line: 19, column: 8, scope: !305)
!315 = !DILocation(line: 19, column: 23, scope: !305)
!316 = !DILocation(line: 22, column: 8, scope: !305)
!317 = !DILocation(line: 22, column: 23, scope: !305)
!318 = !DILocation(line: 20, column: 16, scope: !305)
!319 = !DILocation(line: 1, column: 1, scope: !320)
!320 = !DILexicalBlockFile(scope: !305, file: !321, discriminator: 0)
!321 = !DIFile(filename: "lib.rs", directory: "/crisp-rust-outputs/B01_organic/merge_sort_lib/translated_rust", checksumkind: CSK_MD5, checksum: "3517fa76467d691b85abdf25c6292f0d")
!322 = !DILocation(line: 26, column: 2, scope: !305)
!323 = !DILocation(line: 22, column: 38, scope: !305)
!324 = !DILocation(line: 22, column: 54, scope: !305)
!325 = !DILocation(line: 25, column: 5, scope: !305)
!326 = !DILocation(line: 23, column: 16, scope: !305)
!327 = distinct !DISubprogram(name: "index<merge_sort_lib::src::lib::SpritebatchSpriteT>", linkageName: "_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17ha165e4d880c32e6bE", scope: !328, file: !136, line: 457, type: !329, scopeLine: 457, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !59, retainedNodes: !331)
!328 = !DINamespace(name: "{impl#5}", scope: !138)
!329 = !DISubroutineType(types: !330)
!330 = !{!176, !141, !176, !148}
!331 = !{!332, !333}
!332 = !DILocalVariable(name: "self", arg: 1, scope: !327, file: !136, line: 457, type: !141)
!333 = !DILocalVariable(name: "slice", arg: 2, scope: !327, file: !136, line: 457, type: !176)
!334 = !DILocation(line: 457, column: 14, scope: !327)
!335 = !DILocation(line: 457, column: 20, scope: !327)
!336 = !DILocation(line: 458, column: 9, scope: !327)
!337 = !DILocation(line: 459, column: 6, scope: !327)
!338 = distinct !DISubprogram(name: "index<merge_sort_lib::src::lib::SpritebatchSpriteT>", linkageName: "_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17he069b55b4a2976d2E", scope: !339, file: !136, line: 407, type: !340, scopeLine: 407, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !59, retainedNodes: !346)
!339 = !DINamespace(name: "{impl#4}", scope: !138)
!340 = !DISubroutineType(types: !341)
!341 = !{!176, !342, !176, !148}
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Range<usize>", scope: !142, file: !15, size: 128, align: 64, elements: !343, templateParams: !146, identifier: "b01c4dff50019c623f2ca4609ab20f0a")
!343 = !{!344, !345}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !342, file: !15, baseType: !28, size: 64, align: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !342, file: !15, baseType: !28, size: 64, align: 64, offset: 64)
!346 = !{!347, !348}
!347 = !DILocalVariable(name: "self", arg: 1, scope: !338, file: !136, line: 407, type: !342)
!348 = !DILocalVariable(name: "slice", arg: 2, scope: !338, file: !136, line: 407, type: !176)
!349 = !DILocation(line: 407, column: 14, scope: !338)
!350 = !DILocalVariable(name: "self", arg: 1, scope: !351, file: !136, line: 374, type: !342)
!351 = distinct !DISubprogram(name: "get_unchecked<merge_sort_lib::src::lib::SpritebatchSpriteT>", linkageName: "_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17h74f19c9ba366e6ccE", scope: !339, file: !136, line: 374, type: !352, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !59, retainedNodes: !358)
!352 = !DISubroutineType(types: !353)
!353 = !{!354, !342, !354}
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "*const [merge_sort_lib::src::lib::SpritebatchSpriteT]", file: !15, size: 128, align: 64, elements: !355, templateParams: !21, identifier: "9e8fa23768d420543440f2ce99c40061")
!355 = !{!356, !357}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !354, file: !15, baseType: !34, size: 64, align: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !354, file: !15, baseType: !28, size: 64, align: 64, offset: 64)
!358 = !{!350, !359, !360, !362}
!359 = !DILocalVariable(name: "slice", arg: 2, scope: !351, file: !136, line: 374, type: !354)
!360 = !DILocalVariable(name: "this", scope: !361, file: !136, line: 375, type: !342, align: 8)
!361 = distinct !DILexicalBlock(scope: !351, file: !136, line: 375, column: 9)
!362 = !DILocalVariable(name: "new_len", scope: !363, file: !136, line: 386, type: !28, align: 8)
!363 = distinct !DILexicalBlock(scope: !361, file: !136, line: 386, column: 13)
!364 = !DILocation(line: 374, column: 29, scope: !351, inlinedAt: !365)
!365 = !DILocation(line: 414, column: 25, scope: !338)
!366 = !DILocation(line: 407, column: 20, scope: !338)
!367 = !DILocation(line: 408, column: 12, scope: !338)
!368 = !DILocation(line: 410, column: 19, scope: !338)
!369 = !DILocation(line: 409, column: 13, scope: !338)
!370 = !DILocation(line: 414, column: 39, scope: !338)
!371 = !DILocation(line: 374, column: 35, scope: !351, inlinedAt: !365)
!372 = !DILocalVariable(name: "self", arg: 1, scope: !373, file: !374, line: 1629, type: !354)
!373 = distinct !DISubprogram(name: "as_ptr<merge_sort_lib::src::lib::SpritebatchSpriteT>", linkageName: "_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$6as_ptr17he943d598638f3337E", scope: !375, file: !374, line: 1629, type: !377, scopeLine: 1629, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !59, retainedNodes: !379)
!374 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/ptr/const_ptr.rs", directory: "", checksumkind: CSK_MD5, checksum: "2a21946c6980740609ff35bdd2bfdb1c")
!375 = !DINamespace(name: "{impl#1}", scope: !376)
!376 = !DINamespace(name: "const_ptr", scope: !65)
!377 = !DISubroutineType(types: !378)
!378 = !{!208, !354}
!379 = !{!372}
!380 = !DILocation(line: 1629, column: 25, scope: !373, inlinedAt: !381)
!381 = !DILocation(line: 387, column: 45, scope: !363, inlinedAt: !365)
!382 = !DILocation(line: 386, column: 27, scope: !361, inlinedAt: !365)
!383 = !DILocation(line: 386, column: 17, scope: !363, inlinedAt: !365)
!384 = !DILocation(line: 1630, column: 9, scope: !373, inlinedAt: !381)
!385 = !DILocalVariable(name: "self", arg: 1, scope: !386, file: !374, line: 915, type: !208)
!386 = distinct !DISubprogram(name: "add<merge_sort_lib::src::lib::SpritebatchSpriteT>", linkageName: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$3add17h33c613dacd5455a0E", scope: !387, file: !374, line: 915, type: !388, scopeLine: 915, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !59, retainedNodes: !390)
!387 = !DINamespace(name: "{impl#0}", scope: !376)
!388 = !DISubroutineType(types: !389)
!389 = !{!208, !208, !28}
!390 = !{!385, !391}
!391 = !DILocalVariable(name: "count", arg: 2, scope: !386, file: !374, line: 915, type: !28)
!392 = !DILocation(line: 915, column: 29, scope: !386, inlinedAt: !393)
!393 = !DILocation(line: 387, column: 54, scope: !363, inlinedAt: !365)
!394 = !DILocalVariable(name: "self", arg: 1, scope: !395, file: !374, line: 460, type: !208)
!395 = distinct !DISubprogram(name: "offset<merge_sort_lib::src::lib::SpritebatchSpriteT>", linkageName: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$6offset17h268ee70d7374623eE", scope: !387, file: !374, line: 460, type: !396, scopeLine: 460, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !59, retainedNodes: !399)
!396 = !DISubroutineType(types: !397)
!397 = !{!208, !208, !398}
!398 = !DIBasicType(name: "isize", size: 64, encoding: DW_ATE_signed)
!399 = !{!394, !400}
!400 = !DILocalVariable(name: "count", arg: 2, scope: !395, file: !374, line: 460, type: !398)
!401 = !DILocation(line: 460, column: 32, scope: !395, inlinedAt: !402)
!402 = !DILocation(line: 920, column: 23, scope: !386, inlinedAt: !393)
!403 = !DILocation(line: 387, column: 58, scope: !363, inlinedAt: !365)
!404 = !DILocation(line: 915, column: 35, scope: !386, inlinedAt: !393)
!405 = !DILocation(line: 920, column: 30, scope: !386, inlinedAt: !393)
!406 = !DILocation(line: 460, column: 38, scope: !395, inlinedAt: !402)
!407 = !DILocation(line: 465, column: 18, scope: !395, inlinedAt: !402)
!408 = !DILocalVariable(name: "data", arg: 1, scope: !409, file: !64, line: 733, type: !208)
!409 = distinct !DISubprogram(name: "slice_from_raw_parts<merge_sort_lib::src::lib::SpritebatchSpriteT>", linkageName: "_ZN4core3ptr20slice_from_raw_parts17h856c635bb6a66173E", scope: !65, file: !64, line: 733, type: !410, scopeLine: 733, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !59, retainedNodes: !412)
!410 = !DISubroutineType(types: !411)
!411 = !{!354, !208, !28}
!412 = !{!408, !413}
!413 = !DILocalVariable(name: "len", arg: 2, scope: !409, file: !64, line: 733, type: !28)
!414 = !DILocation(line: 733, column: 38, scope: !409, inlinedAt: !415)
!415 = !DILocation(line: 387, column: 13, scope: !363, inlinedAt: !365)
!416 = !DILocalVariable(name: "self", arg: 1, scope: !417, file: !374, line: 58, type: !208)
!417 = distinct !DISubprogram(name: "cast<merge_sort_lib::src::lib::SpritebatchSpriteT, ()>", linkageName: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h2b4e0e4c11dd8d9bE", scope: !387, file: !374, line: 58, type: !418, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !86, retainedNodes: !421)
!418 = !DISubroutineType(types: !419)
!419 = !{!420, !208}
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const ()", baseType: !84, size: 64, align: 64, dwarfAddressSpace: 0)
!421 = !{!416}
!422 = !DILocation(line: 58, column: 26, scope: !417, inlinedAt: !423)
!423 = !DILocation(line: 734, column: 25, scope: !409, inlinedAt: !415)
!424 = !DILocation(line: 387, column: 71, scope: !363, inlinedAt: !365)
!425 = !DILocation(line: 733, column: 54, scope: !409, inlinedAt: !415)
!426 = !DILocalVariable(name: "metadata", arg: 2, scope: !427, file: !94, line: 113, type: !28)
!427 = distinct !DISubprogram(name: "from_raw_parts<[merge_sort_lib::src::lib::SpritebatchSpriteT]>", linkageName: "_ZN4core3ptr8metadata14from_raw_parts17he1882d3881433302E", scope: !95, file: !94, line: 111, type: !428, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !59, retainedNodes: !430)
!428 = !DISubroutineType(types: !429)
!429 = !{!354, !420, !28}
!430 = !{!431, !426}
!431 = !DILocalVariable(name: "data_address", arg: 1, scope: !427, file: !94, line: 112, type: !420)
!432 = !DILocation(line: 113, column: 5, scope: !427, inlinedAt: !433)
!433 = !DILocation(line: 734, column: 5, scope: !409, inlinedAt: !415)
!434 = !DILocation(line: 59, column: 9, scope: !417, inlinedAt: !423)
!435 = !DILocation(line: 112, column: 5, scope: !427, inlinedAt: !433)
!436 = !DILocation(line: 118, column: 36, scope: !427, inlinedAt: !433)
!437 = !DILocation(line: 118, column: 14, scope: !427, inlinedAt: !433)
!438 = !DILocation(line: 415, column: 6, scope: !338)
!439 = !DILocation(line: 411, column: 13, scope: !338)
!440 = distinct !DISubprogram(name: "index_mut<merge_sort_lib::src::lib::SpritebatchSpriteT>", linkageName: "_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h40b604b4cd0a83fbE", scope: !328, file: !136, line: 462, type: !441, scopeLine: 462, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !59, retainedNodes: !443)
!441 = !DISubroutineType(types: !442)
!442 = !{!31, !141, !31, !148}
!443 = !{!444, !445}
!444 = !DILocalVariable(name: "self", arg: 1, scope: !440, file: !136, line: 462, type: !141)
!445 = !DILocalVariable(name: "slice", arg: 2, scope: !440, file: !136, line: 462, type: !31)
!446 = !DILocation(line: 462, column: 18, scope: !440)
!447 = !DILocation(line: 462, column: 24, scope: !440)
!448 = !DILocation(line: 463, column: 9, scope: !440)
!449 = !DILocation(line: 464, column: 6, scope: !440)
!450 = distinct !DISubprogram(name: "index_mut<merge_sort_lib::src::lib::SpritebatchSpriteT>", linkageName: "_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hb0d9fa130f61a5efE", scope: !339, file: !136, line: 418, type: !451, scopeLine: 418, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !59, retainedNodes: !453)
!451 = !DISubroutineType(types: !452)
!452 = !{!31, !342, !31, !148}
!453 = !{!454, !455}
!454 = !DILocalVariable(name: "self", arg: 1, scope: !450, file: !136, line: 418, type: !342)
!455 = !DILocalVariable(name: "slice", arg: 2, scope: !450, file: !136, line: 418, type: !31)
!456 = !DILocation(line: 418, column: 18, scope: !450)
!457 = !DILocalVariable(name: "self", arg: 1, scope: !458, file: !136, line: 392, type: !342)
!458 = distinct !DISubprogram(name: "get_unchecked_mut<merge_sort_lib::src::lib::SpritebatchSpriteT>", linkageName: "_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$17get_unchecked_mut17hdc66aad36028ae7aE", scope: !339, file: !136, line: 392, type: !459, scopeLine: 392, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !59, retainedNodes: !461)
!459 = !DISubroutineType(types: !460)
!460 = !{!68, !342, !68}
!461 = !{!457, !462, !463, !465}
!462 = !DILocalVariable(name: "slice", arg: 2, scope: !458, file: !136, line: 392, type: !68)
!463 = !DILocalVariable(name: "this", scope: !464, file: !136, line: 393, type: !342, align: 8)
!464 = distinct !DILexicalBlock(scope: !458, file: !136, line: 393, column: 9)
!465 = !DILocalVariable(name: "new_len", scope: !466, file: !136, line: 401, type: !28, align: 8)
!466 = distinct !DILexicalBlock(scope: !464, file: !136, line: 401, column: 13)
!467 = !DILocation(line: 392, column: 33, scope: !458, inlinedAt: !468)
!468 = !DILocation(line: 425, column: 29, scope: !450)
!469 = !DILocation(line: 418, column: 24, scope: !450)
!470 = !DILocation(line: 419, column: 12, scope: !450)
!471 = !DILocation(line: 421, column: 19, scope: !450)
!472 = !DILocation(line: 420, column: 13, scope: !450)
!473 = !DILocation(line: 425, column: 47, scope: !450)
!474 = !DILocation(line: 392, column: 39, scope: !458, inlinedAt: !468)
!475 = !DILocalVariable(name: "self", arg: 1, scope: !476, file: !78, line: 2014, type: !68)
!476 = distinct !DISubprogram(name: "as_mut_ptr<merge_sort_lib::src::lib::SpritebatchSpriteT>", linkageName: "_ZN4core3ptr7mut_ptr41_$LT$impl$u20$$BP$mut$u20$$u5b$T$u5d$$GT$10as_mut_ptr17hdbb551b44fdf75d6E", scope: !477, file: !78, line: 2014, type: !478, scopeLine: 2014, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !59, retainedNodes: !480)
!477 = !DINamespace(name: "{impl#1}", scope: !80)
!478 = !DISubroutineType(types: !479)
!479 = !{!13, !68}
!480 = !{!475}
!481 = !DILocation(line: 2014, column: 29, scope: !476, inlinedAt: !482)
!482 = !DILocation(line: 402, column: 49, scope: !466, inlinedAt: !468)
!483 = !DILocation(line: 401, column: 27, scope: !464, inlinedAt: !468)
!484 = !DILocation(line: 401, column: 17, scope: !466, inlinedAt: !468)
!485 = !DILocation(line: 2015, column: 9, scope: !476, inlinedAt: !482)
!486 = !DILocalVariable(name: "self", arg: 1, scope: !487, file: !78, line: 1015, type: !13)
!487 = distinct !DISubprogram(name: "add<merge_sort_lib::src::lib::SpritebatchSpriteT>", linkageName: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17hb138bd4ccbe1f23eE", scope: !79, file: !78, line: 1015, type: !488, scopeLine: 1015, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !59, retainedNodes: !490)
!488 = !DISubroutineType(types: !489)
!489 = !{!13, !13, !28}
!490 = !{!486, !491}
!491 = !DILocalVariable(name: "count", arg: 2, scope: !487, file: !78, line: 1015, type: !28)
!492 = !DILocation(line: 1015, column: 29, scope: !487, inlinedAt: !493)
!493 = !DILocation(line: 402, column: 62, scope: !466, inlinedAt: !468)
!494 = !DILocalVariable(name: "self", arg: 1, scope: !495, file: !78, line: 472, type: !13)
!495 = distinct !DISubprogram(name: "offset<merge_sort_lib::src::lib::SpritebatchSpriteT>", linkageName: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset17h1ef92e0b562b13ebE", scope: !79, file: !78, line: 472, type: !496, scopeLine: 472, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !59, retainedNodes: !498)
!496 = !DISubroutineType(types: !497)
!497 = !{!13, !13, !398}
!498 = !{!494, !499}
!499 = !DILocalVariable(name: "count", arg: 2, scope: !495, file: !78, line: 472, type: !398)
!500 = !DILocation(line: 472, column: 32, scope: !495, inlinedAt: !501)
!501 = !DILocation(line: 1020, column: 23, scope: !487, inlinedAt: !493)
!502 = !DILocation(line: 402, column: 66, scope: !466, inlinedAt: !468)
!503 = !DILocation(line: 1015, column: 35, scope: !487, inlinedAt: !493)
!504 = !DILocation(line: 1020, column: 30, scope: !487, inlinedAt: !493)
!505 = !DILocation(line: 472, column: 38, scope: !495, inlinedAt: !501)
!506 = !DILocation(line: 479, column: 18, scope: !495, inlinedAt: !501)
!507 = !DILocalVariable(name: "data", arg: 1, scope: !508, file: !64, line: 765, type: !13)
!508 = distinct !DISubprogram(name: "slice_from_raw_parts_mut<merge_sort_lib::src::lib::SpritebatchSpriteT>", linkageName: "_ZN4core3ptr24slice_from_raw_parts_mut17hbf26dfd7ccd42242E", scope: !65, file: !64, line: 765, type: !66, scopeLine: 765, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !59, retainedNodes: !509)
!509 = !{!507, !510}
!510 = !DILocalVariable(name: "len", arg: 2, scope: !508, file: !64, line: 765, type: !28)
!511 = !DILocation(line: 765, column: 42, scope: !508, inlinedAt: !512)
!512 = !DILocation(line: 402, column: 13, scope: !466, inlinedAt: !468)
!513 = !DILocalVariable(name: "self", arg: 1, scope: !514, file: !78, line: 57, type: !13)
!514 = distinct !DISubprogram(name: "cast<merge_sort_lib::src::lib::SpritebatchSpriteT, ()>", linkageName: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4cast17h1a8d09ae24dc387eE", scope: !79, file: !78, line: 57, type: !81, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !86, retainedNodes: !515)
!515 = !{!513}
!516 = !DILocation(line: 57, column: 26, scope: !514, inlinedAt: !517)
!517 = !DILocation(line: 766, column: 29, scope: !508, inlinedAt: !512)
!518 = !DILocation(line: 402, column: 79, scope: !466, inlinedAt: !468)
!519 = !DILocation(line: 765, column: 56, scope: !508, inlinedAt: !512)
!520 = !DILocalVariable(name: "metadata", arg: 2, scope: !521, file: !94, line: 130, type: !28)
!521 = distinct !DISubprogram(name: "from_raw_parts_mut<[merge_sort_lib::src::lib::SpritebatchSpriteT]>", linkageName: "_ZN4core3ptr8metadata18from_raw_parts_mut17h2ed6827c7c360ffaE", scope: !95, file: !94, line: 128, type: !96, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !59, retainedNodes: !522)
!522 = !{!523, !520}
!523 = !DILocalVariable(name: "data_address", arg: 1, scope: !521, file: !94, line: 129, type: !83)
!524 = !DILocation(line: 130, column: 5, scope: !521, inlinedAt: !525)
!525 = !DILocation(line: 766, column: 5, scope: !508, inlinedAt: !512)
!526 = !DILocation(line: 58, column: 9, scope: !514, inlinedAt: !517)
!527 = !DILocation(line: 129, column: 5, scope: !521, inlinedAt: !525)
!528 = !DILocation(line: 135, column: 36, scope: !521, inlinedAt: !525)
!529 = !DILocation(line: 135, column: 14, scope: !521, inlinedAt: !525)
!530 = !DILocation(line: 426, column: 6, scope: !450)
!531 = !DILocation(line: 422, column: 13, scope: !450)
!532 = distinct !DISubprogram(name: "run_test_1", scope: !8, file: !7, line: 92, type: !533, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !21, retainedNodes: !536)
!533 = !DISubroutineType(types: !534)
!534 = !{!535}
!535 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!536 = !{!537, !542, !544, !546, !548, !550, !552}
!537 = !DILocalVariable(name: "a", scope: !538, file: !7, line: 93, type: !539, align: 8)
!538 = distinct !DILexicalBlock(scope: !532, file: !7, line: 93, column: 5)
!539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 640, align: 64, elements: !540)
!540 = !{!541}
!541 = !DISubrange(count: 5, lowerBound: 0)
!542 = !DILocalVariable(name: "b", scope: !543, file: !7, line: 100, type: !539, align: 8)
!543 = distinct !DILexicalBlock(scope: !538, file: !7, line: 100, column: 5)
!544 = !DILocalVariable(name: "size", scope: !545, file: !7, line: 104, type: !20, align: 4)
!545 = distinct !DILexicalBlock(scope: !543, file: !7, line: 104, column: 5)
!546 = !DILocalVariable(name: "expected_a", scope: !547, file: !7, line: 108, type: !539, align: 8)
!547 = distinct !DILexicalBlock(scope: !545, file: !7, line: 108, column: 5)
!548 = !DILocalVariable(name: "expected_b", scope: !549, file: !7, line: 115, type: !539, align: 8)
!549 = distinct !DILexicalBlock(scope: !547, file: !7, line: 115, column: 5)
!550 = !DILocalVariable(name: "iter", scope: !551, file: !7, line: 123, type: !342, align: 8)
!551 = distinct !DILexicalBlock(scope: !549, file: !7, line: 123, column: 5)
!552 = !DILocalVariable(name: "i", scope: !553, file: !7, line: 123, type: !28, align: 8)
!553 = distinct !DILexicalBlock(scope: !551, file: !7, line: 123, column: 19)
!554 = !DILocation(line: 93, column: 9, scope: !538)
!555 = !DILocation(line: 100, column: 9, scope: !543)
!556 = !DILocation(line: 108, column: 9, scope: !547)
!557 = !DILocation(line: 115, column: 9, scope: !549)
!558 = !DILocation(line: 123, column: 14, scope: !551)
!559 = !DILocation(line: 94, column: 9, scope: !532)
!560 = !DILocation(line: 95, column: 9, scope: !532)
!561 = !DILocation(line: 96, column: 9, scope: !532)
!562 = !DILocation(line: 97, column: 9, scope: !532)
!563 = !DILocation(line: 98, column: 9, scope: !532)
!564 = !DILocation(line: 93, column: 17, scope: !532)
!565 = !DILocation(line: 101, column: 9, scope: !538)
!566 = !DILocation(line: 100, column: 17, scope: !538)
!567 = !DILocation(line: 104, column: 36, scope: !543)
!568 = !DILocation(line: 104, column: 9, scope: !545)
!569 = !DILocalVariable(name: "self", arg: 1, scope: !570, file: !188, line: 506, type: !31)
!570 = distinct !DISubprogram(name: "as_mut_ptr<merge_sort_lib::src::lib::SpritebatchSpriteT>", linkageName: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17h7c3365bbcd405c6bE", scope: !189, file: !188, line: 506, type: !198, scopeLine: 506, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !59, retainedNodes: !571)
!571 = !{!569}
!572 = !DILocation(line: 506, column: 29, scope: !570, inlinedAt: !573)
!573 = distinct !DILocation(line: 106, column: 20, scope: !545)
!574 = !DILocation(line: 506, column: 29, scope: !570, inlinedAt: !575)
!575 = distinct !DILocation(line: 106, column: 36, scope: !545)
!576 = !DILocation(line: 106, column: 5, scope: !545)
!577 = !DILocation(line: 109, column: 9, scope: !545)
!578 = !DILocation(line: 110, column: 9, scope: !545)
!579 = !DILocation(line: 111, column: 9, scope: !545)
!580 = !DILocation(line: 112, column: 9, scope: !545)
!581 = !DILocation(line: 113, column: 9, scope: !545)
!582 = !DILocation(line: 108, column: 22, scope: !545)
!583 = !DILocation(line: 116, column: 9, scope: !547)
!584 = !DILocation(line: 117, column: 9, scope: !547)
!585 = !DILocation(line: 118, column: 9, scope: !547)
!586 = !DILocation(line: 119, column: 9, scope: !547)
!587 = !DILocation(line: 120, column: 9, scope: !547)
!588 = !DILocation(line: 115, column: 22, scope: !547)
!589 = !DILocation(line: 123, column: 14, scope: !549)
!590 = !DILocation(line: 123, column: 5, scope: !551)
!591 = !{i64 0, i64 2}
!592 = !DILocation(line: 131, column: 5, scope: !549)
!593 = !DILocation(line: 132, column: 2, scope: !532)
!594 = !DILocation(line: 123, column: 9, scope: !551)
!595 = !DILocation(line: 123, column: 9, scope: !553)
!596 = !DILocation(line: 124, column: 12, scope: !553)
!597 = !DILocation(line: 124, column: 31, scope: !553)
!598 = !DILocation(line: 124, column: 59, scope: !553)
!599 = !DILocation(line: 124, column: 77, scope: !553)
!600 = !DILocation(line: 127, column: 12, scope: !553)
!601 = !DILocation(line: 125, column: 20, scope: !553)
!602 = !DILocation(line: 1, column: 1, scope: !603)
!603 = !DILexicalBlockFile(scope: !553, file: !321, discriminator: 0)
!604 = !DILocation(line: 127, column: 31, scope: !553)
!605 = !DILocation(line: 127, column: 59, scope: !553)
!606 = !DILocation(line: 127, column: 77, scope: !553)
!607 = !DILocation(line: 128, column: 20, scope: !553)
!608 = distinct !DISubprogram(name: "into_iter<core::ops::range::Range<usize>>", linkageName: "_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hb77d94a00def916aE", scope: !610, file: !609, line: 272, type: !614, scopeLine: 272, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !618, retainedNodes: !616)
!609 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/iter/traits/collect.rs", directory: "", checksumkind: CSK_MD5, checksum: "697d559cdba63f105535b8b53d6ea422")
!610 = !DINamespace(name: "{impl#0}", scope: !611)
!611 = !DINamespace(name: "collect", scope: !612)
!612 = !DINamespace(name: "traits", scope: !613)
!613 = !DINamespace(name: "iter", scope: !53)
!614 = !DISubroutineType(types: !615)
!615 = !{!342, !342}
!616 = !{!617}
!617 = !DILocalVariable(name: "self", arg: 1, scope: !608, file: !609, line: 272, type: !342)
!618 = !{!619}
!619 = !DITemplateTypeParameter(name: "I", type: !342)
!620 = !DILocation(line: 272, column: 18, scope: !608)
!621 = !DILocation(line: 274, column: 6, scope: !608)
!622 = distinct !DISubprogram(name: "next<usize>", linkageName: "_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17he59e48b2a12ae644E", scope: !624, file: !623, line: 710, type: !626, scopeLine: 710, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !645, retainedNodes: !643)
!623 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/iter/range.rs", directory: "", checksumkind: CSK_MD5, checksum: "3b797d7135735e151bb7112e46eae892")
!624 = !DINamespace(name: "{impl#3}", scope: !625)
!625 = !DINamespace(name: "range", scope: !613)
!626 = !DISubroutineType(types: !627)
!627 = !{!628, !642}
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<usize>", scope: !629, file: !15, size: 128, align: 64, elements: !630, templateParams: !21, identifier: "b17de5dc2d457f8dce2303437d5e4e98")
!629 = !DINamespace(name: "option", scope: !53)
!630 = !{!631}
!631 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !628, file: !15, size: 128, align: 64, elements: !632, templateParams: !21, identifier: "a0efaaf7efdca478bc2c7a6ba9e35ba1", discriminator: !641)
!632 = !{!633, !637}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !631, file: !15, baseType: !634, size: 128, align: 64, extraData: i64 0)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !628, file: !15, size: 128, align: 64, elements: !21, templateParams: !635, identifier: "d9e649f4c7d5b1429d931d66c43390e")
!635 = !{!636}
!636 = !DITemplateTypeParameter(name: "T", type: !28)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !631, file: !15, baseType: !638, size: 128, align: 64, extraData: i64 1)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !628, file: !15, size: 128, align: 64, elements: !639, templateParams: !635, identifier: "a60d11814afcef06411361a374d9c4d2")
!639 = !{!640}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !638, file: !15, baseType: !28, size: 64, align: 64, offset: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, scope: !628, file: !15, baseType: !18, size: 64, align: 64, flags: DIFlagArtificial)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::ops::range::Range<usize>", baseType: !342, size: 64, align: 64, dwarfAddressSpace: 0)
!643 = !{!644}
!644 = !DILocalVariable(name: "self", arg: 1, scope: !622, file: !623, line: 710, type: !642)
!645 = !{!646}
!646 = !DITemplateTypeParameter(name: "A", type: !28)
!647 = !DILocation(line: 710, column: 13, scope: !622)
!648 = !DILocation(line: 711, column: 9, scope: !622)
!649 = !DILocation(line: 712, column: 6, scope: !622)
!650 = distinct !DISubprogram(name: "spec_next<usize>", linkageName: "_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17hca7e80fedd5e28feE", scope: !651, file: !623, line: 620, type: !626, scopeLine: 620, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !635, retainedNodes: !652)
!651 = !DINamespace(name: "{impl#2}", scope: !625)
!652 = !{!653, !654}
!653 = !DILocalVariable(name: "self", arg: 1, scope: !650, file: !623, line: 620, type: !642)
!654 = !DILocalVariable(name: "n", scope: !655, file: !623, line: 623, type: !28, align: 8)
!655 = distinct !DILexicalBlock(scope: !650, file: !623, line: 623, column: 13)
!656 = !DILocation(line: 620, column: 18, scope: !650)
!657 = !DILocalVariable(name: "src", arg: 2, scope: !658, file: !64, line: 1369, type: !28)
!658 = distinct !DISubprogram(name: "write<usize>", linkageName: "_ZN4core3ptr5write17h23d262950483ac80E", scope: !65, file: !64, line: 1369, type: !659, scopeLine: 1369, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !635, retainedNodes: !662)
!659 = !DISubroutineType(types: !660)
!660 = !{null, !661, !28}
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut usize", baseType: !28, size: 64, align: 64, dwarfAddressSpace: 0)
!662 = !{!663, !657}
!663 = !DILocalVariable(name: "dst", arg: 1, scope: !658, file: !64, line: 1369, type: !661)
!664 = !DILocation(line: 1369, column: 43, scope: !658, inlinedAt: !665)
!665 = !DILocation(line: 910, column: 9, scope: !666, inlinedAt: !677)
!666 = distinct !DILexicalBlock(scope: !668, file: !667, line: 909, column: 9)
!667 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/mem/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "2818803a2f5479a3883c65b3bb9963fd")
!668 = distinct !DISubprogram(name: "replace<usize>", linkageName: "_ZN4core3mem7replace17h53ee33bbf07343daE", scope: !669, file: !667, line: 904, type: !670, scopeLine: 904, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !635, retainedNodes: !673)
!669 = !DINamespace(name: "mem", scope: !53)
!670 = !DISubroutineType(types: !671)
!671 = !{!28, !672, !28}
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut usize", baseType: !28, size: 64, align: 64, dwarfAddressSpace: 0)
!673 = !{!674, !675, !676}
!674 = !DILocalVariable(name: "dest", arg: 1, scope: !668, file: !667, line: 904, type: !672)
!675 = !DILocalVariable(name: "src", arg: 2, scope: !668, file: !667, line: 904, type: !28)
!676 = !DILocalVariable(name: "result", scope: !666, file: !667, line: 909, type: !28, align: 8)
!677 = !DILocation(line: 624, column: 18, scope: !655)
!678 = !DILocation(line: 621, column: 25, scope: !650)
!679 = !DILocation(line: 621, column: 12, scope: !650)
!680 = !DILocation(line: 626, column: 13, scope: !650)
!681 = !DILocation(line: 621, column: 9, scope: !650)
!682 = !DILocalVariable(name: "self", arg: 1, scope: !683, file: !684, line: 188, type: !690)
!683 = distinct !DISubprogram(name: "clone", linkageName: "_ZN4core5clone5impls54_$LT$impl$u20$core..clone..Clone$u20$for$u20$usize$GT$5clone17hebc2a1de5f3fc684E", scope: !685, file: !684, line: 188, type: !688, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !21, retainedNodes: !691)
!684 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/clone.rs", directory: "", checksumkind: CSK_MD5, checksum: "d116d2b81cbc11c420da76ff7ce51e4d")
!685 = !DINamespace(name: "{impl#5}", scope: !686)
!686 = !DINamespace(name: "impls", scope: !687)
!687 = !DINamespace(name: "clone", scope: !53)
!688 = !DISubroutineType(types: !689)
!689 = !{!28, !690}
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&usize", baseType: !28, size: 64, align: 64, dwarfAddressSpace: 0)
!691 = !{!682}
!692 = !DILocation(line: 188, column: 30, scope: !683, inlinedAt: !693)
!693 = distinct !DILocation(line: 623, column: 54, scope: !650)
!694 = !DILocation(line: 189, column: 25, scope: !683, inlinedAt: !693)
!695 = !DILocation(line: 623, column: 30, scope: !650)
!696 = !DILocation(line: 623, column: 17, scope: !655)
!697 = !DILocation(line: 624, column: 31, scope: !655)
!698 = !DILocation(line: 904, column: 25, scope: !668, inlinedAt: !677)
!699 = !DILocation(line: 624, column: 48, scope: !655)
!700 = !DILocation(line: 904, column: 39, scope: !668, inlinedAt: !677)
!701 = !DILocation(line: 909, column: 32, scope: !668, inlinedAt: !677)
!702 = !DILocalVariable(name: "src", arg: 1, scope: !703, file: !64, line: 1137, type: !706)
!703 = distinct !DISubprogram(name: "read<usize>", linkageName: "_ZN4core3ptr4read17hd6c64a050eb512bbE", scope: !65, file: !64, line: 1137, type: !704, scopeLine: 1137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !635, retainedNodes: !707)
!704 = !DISubroutineType(types: !705)
!705 = !{!28, !706}
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const usize", baseType: !28, size: 64, align: 64, dwarfAddressSpace: 0)
!707 = !{!702}
!708 = !DILocation(line: 1137, column: 29, scope: !703, inlinedAt: !709)
!709 = !DILocation(line: 909, column: 22, scope: !668, inlinedAt: !677)
!710 = !DILocation(line: 1188, column: 13, scope: !703, inlinedAt: !709)
!711 = !DILocation(line: 909, column: 13, scope: !666, inlinedAt: !677)
!712 = !DILocation(line: 910, column: 20, scope: !666, inlinedAt: !677)
!713 = !DILocation(line: 1369, column: 30, scope: !658, inlinedAt: !665)
!714 = !DILocation(line: 910, column: 26, scope: !666, inlinedAt: !677)
!715 = !DILocation(line: 1386, column: 9, scope: !658, inlinedAt: !665)
!716 = !DILocation(line: 624, column: 13, scope: !655)
!717 = !DILocation(line: 628, column: 6, scope: !650)
!718 = distinct !DISubprogram(name: "lt", linkageName: "_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17h19a8450d6c24409cE", scope: !720, file: !719, line: 1402, type: !723, scopeLine: 1402, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !21, retainedNodes: !725)
!719 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/cmp.rs", directory: "", checksumkind: CSK_MD5, checksum: "1600eb58139fc5bc9fc1d10b55c4e0c1")
!720 = !DINamespace(name: "{impl#54}", scope: !721)
!721 = !DINamespace(name: "impls", scope: !722)
!722 = !DINamespace(name: "cmp", scope: !53)
!723 = !DISubroutineType(types: !724)
!724 = !{!535, !690, !690}
!725 = !{!726, !727}
!726 = !DILocalVariable(name: "self", arg: 1, scope: !718, file: !719, line: 1402, type: !690)
!727 = !DILocalVariable(name: "other", arg: 2, scope: !718, file: !719, line: 1402, type: !690)
!728 = !DILocation(line: 1402, column: 23, scope: !718)
!729 = !DILocation(line: 1402, column: 30, scope: !718)
!730 = !DILocation(line: 1402, column: 52, scope: !718)
!731 = !DILocation(line: 1402, column: 62, scope: !718)
!732 = !DILocation(line: 1402, column: 72, scope: !718)
!733 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17he6e67ab78a1aaccaE", scope: !734, file: !623, line: 189, type: !735, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !21, retainedNodes: !737)
!734 = !DINamespace(name: "{impl#37}", scope: !625)
!735 = !DISubroutineType(types: !736)
!736 = !{!28, !28, !28}
!737 = !{!738, !739}
!738 = !DILocalVariable(name: "start", arg: 1, scope: !733, file: !623, line: 189, type: !28)
!739 = !DILocalVariable(name: "n", arg: 2, scope: !733, file: !623, line: 189, type: !28)
!740 = !DILocation(line: 189, column: 37, scope: !733)
!741 = !DILocalVariable(name: "self", arg: 1, scope: !742, file: !743, line: 485, type: !28)
!742 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_ZN4core3num23_$LT$impl$u20$usize$GT$13unchecked_add17h1fdcbaf9b5493cafE", scope: !744, file: !743, line: 485, type: !735, scopeLine: 485, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !21, retainedNodes: !746)
!743 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/num/uint_macros.rs", directory: "", checksumkind: CSK_MD5, checksum: "b2a733f80e3cd43066f918bdafc87bd0")
!744 = !DINamespace(name: "{impl#11}", scope: !745)
!745 = !DINamespace(name: "num", scope: !53)
!746 = !{!741, !747}
!747 = !DILocalVariable(name: "rhs", arg: 2, scope: !742, file: !743, line: 485, type: !28)
!748 = !DILocation(line: 485, column: 43, scope: !742, inlinedAt: !749)
!749 = !DILocation(line: 191, column: 28, scope: !733)
!750 = !DILocation(line: 189, column: 50, scope: !733)
!751 = !DILocation(line: 485, column: 49, scope: !742, inlinedAt: !749)
!752 = !DILocation(line: 488, column: 22, scope: !742, inlinedAt: !749)
!753 = !DILocation(line: 192, column: 10, scope: !733)
!754 = distinct !DISubprogram(name: "run_test_2", scope: !8, file: !7, line: 135, type: !533, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !21, retainedNodes: !755)
!755 = !{!756, !761, !763}
!756 = !DILocalVariable(name: "a", scope: !757, file: !7, line: 136, type: !758, align: 8)
!757 = distinct !DILexicalBlock(scope: !754, file: !7, line: 136, column: 5)
!758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, align: 64, elements: !759)
!759 = !{!760}
!760 = !DISubrange(count: 0, lowerBound: 0)
!761 = !DILocalVariable(name: "b", scope: !762, file: !7, line: 137, type: !758, align: 8)
!762 = distinct !DILexicalBlock(scope: !757, file: !7, line: 137, column: 5)
!763 = !DILocalVariable(name: "size", scope: !764, file: !7, line: 138, type: !20, align: 4)
!764 = distinct !DILexicalBlock(scope: !762, file: !7, line: 138, column: 5)
!765 = !DILocation(line: 136, column: 9, scope: !757)
!766 = !DILocation(line: 137, column: 9, scope: !762)
!767 = !DILocation(line: 138, column: 36, scope: !762)
!768 = !DILocation(line: 138, column: 9, scope: !764)
!769 = !DILocation(line: 506, column: 29, scope: !570, inlinedAt: !770)
!770 = distinct !DILocation(line: 140, column: 20, scope: !764)
!771 = !DILocation(line: 506, column: 29, scope: !570, inlinedAt: !772)
!772 = distinct !DILocation(line: 140, column: 36, scope: !764)
!773 = !DILocation(line: 140, column: 5, scope: !764)
!774 = !DILocation(line: 143, column: 2, scope: !754)
!775 = distinct !DISubprogram(name: "run_test_3", scope: !8, file: !7, line: 146, type: !533, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !21, retainedNodes: !776)
!776 = !{!777, !779, !781, !783, !785, !787, !789}
!777 = !DILocalVariable(name: "a", scope: !778, file: !7, line: 147, type: !539, align: 8)
!778 = distinct !DILexicalBlock(scope: !775, file: !7, line: 147, column: 5)
!779 = !DILocalVariable(name: "b", scope: !780, file: !7, line: 154, type: !539, align: 8)
!780 = distinct !DILexicalBlock(scope: !778, file: !7, line: 154, column: 5)
!781 = !DILocalVariable(name: "size", scope: !782, file: !7, line: 158, type: !20, align: 4)
!782 = distinct !DILexicalBlock(scope: !780, file: !7, line: 158, column: 5)
!783 = !DILocalVariable(name: "expected_a", scope: !784, file: !7, line: 162, type: !539, align: 8)
!784 = distinct !DILexicalBlock(scope: !782, file: !7, line: 162, column: 5)
!785 = !DILocalVariable(name: "expected_b", scope: !786, file: !7, line: 169, type: !539, align: 8)
!786 = distinct !DILexicalBlock(scope: !784, file: !7, line: 169, column: 5)
!787 = !DILocalVariable(name: "iter", scope: !788, file: !7, line: 177, type: !342, align: 8)
!788 = distinct !DILexicalBlock(scope: !786, file: !7, line: 177, column: 5)
!789 = !DILocalVariable(name: "i", scope: !790, file: !7, line: 177, type: !28, align: 8)
!790 = distinct !DILexicalBlock(scope: !788, file: !7, line: 177, column: 19)
!791 = !DILocation(line: 147, column: 9, scope: !778)
!792 = !DILocation(line: 154, column: 9, scope: !780)
!793 = !DILocation(line: 162, column: 9, scope: !784)
!794 = !DILocation(line: 169, column: 9, scope: !786)
!795 = !DILocation(line: 177, column: 14, scope: !788)
!796 = !DILocation(line: 148, column: 9, scope: !775)
!797 = !DILocation(line: 149, column: 9, scope: !775)
!798 = !DILocation(line: 150, column: 9, scope: !775)
!799 = !DILocation(line: 151, column: 9, scope: !775)
!800 = !DILocation(line: 152, column: 9, scope: !775)
!801 = !DILocation(line: 147, column: 17, scope: !775)
!802 = !DILocation(line: 155, column: 9, scope: !778)
!803 = !DILocation(line: 154, column: 17, scope: !778)
!804 = !DILocation(line: 158, column: 36, scope: !780)
!805 = !DILocation(line: 158, column: 9, scope: !782)
!806 = !DILocation(line: 506, column: 29, scope: !570, inlinedAt: !807)
!807 = distinct !DILocation(line: 160, column: 20, scope: !782)
!808 = !DILocation(line: 506, column: 29, scope: !570, inlinedAt: !809)
!809 = distinct !DILocation(line: 160, column: 36, scope: !782)
!810 = !DILocation(line: 160, column: 5, scope: !782)
!811 = !DILocation(line: 163, column: 9, scope: !782)
!812 = !DILocation(line: 164, column: 9, scope: !782)
!813 = !DILocation(line: 165, column: 9, scope: !782)
!814 = !DILocation(line: 166, column: 9, scope: !782)
!815 = !DILocation(line: 167, column: 9, scope: !782)
!816 = !DILocation(line: 162, column: 22, scope: !782)
!817 = !DILocation(line: 170, column: 9, scope: !784)
!818 = !DILocation(line: 171, column: 9, scope: !784)
!819 = !DILocation(line: 172, column: 9, scope: !784)
!820 = !DILocation(line: 173, column: 9, scope: !784)
!821 = !DILocation(line: 174, column: 9, scope: !784)
!822 = !DILocation(line: 169, column: 22, scope: !784)
!823 = !DILocation(line: 177, column: 14, scope: !786)
!824 = !DILocation(line: 177, column: 5, scope: !788)
!825 = !DILocation(line: 185, column: 5, scope: !786)
!826 = !DILocation(line: 186, column: 2, scope: !775)
!827 = !DILocation(line: 177, column: 9, scope: !788)
!828 = !DILocation(line: 177, column: 9, scope: !790)
!829 = !DILocation(line: 178, column: 12, scope: !790)
!830 = !DILocation(line: 178, column: 31, scope: !790)
!831 = !DILocation(line: 178, column: 59, scope: !790)
!832 = !DILocation(line: 178, column: 77, scope: !790)
!833 = !DILocation(line: 181, column: 12, scope: !790)
!834 = !DILocation(line: 179, column: 20, scope: !790)
!835 = !DILocation(line: 1, column: 1, scope: !836)
!836 = !DILexicalBlockFile(scope: !790, file: !321, discriminator: 0)
!837 = !DILocation(line: 181, column: 31, scope: !790)
!838 = !DILocation(line: 181, column: 59, scope: !790)
!839 = !DILocation(line: 181, column: 77, scope: !790)
!840 = !DILocation(line: 182, column: 20, scope: !790)
!841 = distinct !DISubprogram(name: "run_test_4", scope: !8, file: !7, line: 189, type: !533, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !21, retainedNodes: !842)
!842 = !{!843, !845, !847, !849, !851, !853, !855}
!843 = !DILocalVariable(name: "a", scope: !844, file: !7, line: 190, type: !539, align: 8)
!844 = distinct !DILexicalBlock(scope: !841, file: !7, line: 190, column: 5)
!845 = !DILocalVariable(name: "b", scope: !846, file: !7, line: 197, type: !539, align: 8)
!846 = distinct !DILexicalBlock(scope: !844, file: !7, line: 197, column: 5)
!847 = !DILocalVariable(name: "size", scope: !848, file: !7, line: 201, type: !20, align: 4)
!848 = distinct !DILexicalBlock(scope: !846, file: !7, line: 201, column: 5)
!849 = !DILocalVariable(name: "expected_a", scope: !850, file: !7, line: 205, type: !539, align: 8)
!850 = distinct !DILexicalBlock(scope: !848, file: !7, line: 205, column: 5)
!851 = !DILocalVariable(name: "expected_b", scope: !852, file: !7, line: 212, type: !539, align: 8)
!852 = distinct !DILexicalBlock(scope: !850, file: !7, line: 212, column: 5)
!853 = !DILocalVariable(name: "iter", scope: !854, file: !7, line: 220, type: !342, align: 8)
!854 = distinct !DILexicalBlock(scope: !852, file: !7, line: 220, column: 5)
!855 = !DILocalVariable(name: "i", scope: !856, file: !7, line: 220, type: !28, align: 8)
!856 = distinct !DILexicalBlock(scope: !854, file: !7, line: 220, column: 19)
!857 = !DILocation(line: 190, column: 9, scope: !844)
!858 = !DILocation(line: 197, column: 9, scope: !846)
!859 = !DILocation(line: 205, column: 9, scope: !850)
!860 = !DILocation(line: 212, column: 9, scope: !852)
!861 = !DILocation(line: 220, column: 14, scope: !854)
!862 = !DILocation(line: 191, column: 9, scope: !841)
!863 = !DILocation(line: 192, column: 9, scope: !841)
!864 = !DILocation(line: 193, column: 9, scope: !841)
!865 = !DILocation(line: 194, column: 9, scope: !841)
!866 = !DILocation(line: 195, column: 9, scope: !841)
!867 = !DILocation(line: 190, column: 17, scope: !841)
!868 = !DILocation(line: 198, column: 9, scope: !844)
!869 = !DILocation(line: 197, column: 17, scope: !844)
!870 = !DILocation(line: 201, column: 36, scope: !846)
!871 = !DILocation(line: 201, column: 9, scope: !848)
!872 = !DILocation(line: 506, column: 29, scope: !570, inlinedAt: !873)
!873 = distinct !DILocation(line: 203, column: 20, scope: !848)
!874 = !DILocation(line: 506, column: 29, scope: !570, inlinedAt: !875)
!875 = distinct !DILocation(line: 203, column: 36, scope: !848)
!876 = !DILocation(line: 203, column: 5, scope: !848)
!877 = !DILocation(line: 206, column: 9, scope: !848)
!878 = !DILocation(line: 207, column: 9, scope: !848)
!879 = !DILocation(line: 208, column: 9, scope: !848)
!880 = !DILocation(line: 209, column: 9, scope: !848)
!881 = !DILocation(line: 210, column: 9, scope: !848)
!882 = !DILocation(line: 205, column: 22, scope: !848)
!883 = !DILocation(line: 213, column: 9, scope: !850)
!884 = !DILocation(line: 214, column: 9, scope: !850)
!885 = !DILocation(line: 215, column: 9, scope: !850)
!886 = !DILocation(line: 216, column: 9, scope: !850)
!887 = !DILocation(line: 217, column: 9, scope: !850)
!888 = !DILocation(line: 212, column: 22, scope: !850)
!889 = !DILocation(line: 220, column: 14, scope: !852)
!890 = !DILocation(line: 220, column: 5, scope: !854)
!891 = !DILocation(line: 228, column: 5, scope: !852)
!892 = !DILocation(line: 229, column: 2, scope: !841)
!893 = !DILocation(line: 220, column: 9, scope: !854)
!894 = !DILocation(line: 220, column: 9, scope: !856)
!895 = !DILocation(line: 221, column: 12, scope: !856)
!896 = !DILocation(line: 221, column: 31, scope: !856)
!897 = !DILocation(line: 221, column: 59, scope: !856)
!898 = !DILocation(line: 221, column: 77, scope: !856)
!899 = !DILocation(line: 224, column: 12, scope: !856)
!900 = !DILocation(line: 222, column: 20, scope: !856)
!901 = !DILocation(line: 1, column: 1, scope: !902)
!902 = !DILexicalBlockFile(scope: !856, file: !321, discriminator: 0)
!903 = !DILocation(line: 224, column: 31, scope: !856)
!904 = !DILocation(line: 224, column: 59, scope: !856)
!905 = !DILocation(line: 224, column: 77, scope: !856)
!906 = !DILocation(line: 225, column: 20, scope: !856)
!907 = distinct !DISubprogram(name: "run_test_5", scope: !8, file: !7, line: 232, type: !533, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !21, retainedNodes: !908)
!908 = !{!909, !914, !916, !918, !920, !922, !924}
!909 = !DILocalVariable(name: "a", scope: !910, file: !7, line: 233, type: !911, align: 8)
!910 = distinct !DILexicalBlock(scope: !907, file: !7, line: 233, column: 5)
!911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 2560, align: 64, elements: !912)
!912 = !{!913}
!913 = !DISubrange(count: 20, lowerBound: 0)
!914 = !DILocalVariable(name: "b", scope: !915, file: !7, line: 255, type: !911, align: 8)
!915 = distinct !DILexicalBlock(scope: !910, file: !7, line: 255, column: 5)
!916 = !DILocalVariable(name: "size", scope: !917, file: !7, line: 259, type: !20, align: 4)
!917 = distinct !DILexicalBlock(scope: !915, file: !7, line: 259, column: 5)
!918 = !DILocalVariable(name: "expected_a", scope: !919, file: !7, line: 263, type: !911, align: 8)
!919 = distinct !DILexicalBlock(scope: !917, file: !7, line: 263, column: 5)
!920 = !DILocalVariable(name: "expected_b", scope: !921, file: !7, line: 285, type: !911, align: 8)
!921 = distinct !DILexicalBlock(scope: !919, file: !7, line: 285, column: 5)
!922 = !DILocalVariable(name: "iter", scope: !923, file: !7, line: 308, type: !342, align: 8)
!923 = distinct !DILexicalBlock(scope: !921, file: !7, line: 308, column: 5)
!924 = !DILocalVariable(name: "i", scope: !925, file: !7, line: 308, type: !28, align: 8)
!925 = distinct !DILexicalBlock(scope: !923, file: !7, line: 308, column: 20)
!926 = !DILocation(line: 233, column: 9, scope: !910)
!927 = !DILocation(line: 255, column: 9, scope: !915)
!928 = !DILocation(line: 263, column: 9, scope: !919)
!929 = !DILocation(line: 285, column: 9, scope: !921)
!930 = !DILocation(line: 308, column: 14, scope: !923)
!931 = !DILocation(line: 234, column: 9, scope: !907)
!932 = !DILocation(line: 235, column: 9, scope: !907)
!933 = !DILocation(line: 236, column: 9, scope: !907)
!934 = !DILocation(line: 237, column: 9, scope: !907)
!935 = !DILocation(line: 238, column: 9, scope: !907)
!936 = !DILocation(line: 239, column: 9, scope: !907)
!937 = !DILocation(line: 240, column: 9, scope: !907)
!938 = !DILocation(line: 241, column: 9, scope: !907)
!939 = !DILocation(line: 242, column: 9, scope: !907)
!940 = !DILocation(line: 243, column: 9, scope: !907)
!941 = !DILocation(line: 244, column: 9, scope: !907)
!942 = !DILocation(line: 245, column: 9, scope: !907)
!943 = !DILocation(line: 246, column: 9, scope: !907)
!944 = !DILocation(line: 247, column: 9, scope: !907)
!945 = !DILocation(line: 248, column: 9, scope: !907)
!946 = !DILocation(line: 249, column: 9, scope: !907)
!947 = !DILocation(line: 250, column: 9, scope: !907)
!948 = !DILocation(line: 251, column: 9, scope: !907)
!949 = !DILocation(line: 252, column: 9, scope: !907)
!950 = !DILocation(line: 253, column: 9, scope: !907)
!951 = !DILocation(line: 233, column: 17, scope: !907)
!952 = !DILocation(line: 256, column: 9, scope: !910)
!953 = !DILocation(line: 255, column: 17, scope: !910)
!954 = !DILocation(line: 259, column: 36, scope: !915)
!955 = !DILocation(line: 259, column: 9, scope: !917)
!956 = !DILocation(line: 506, column: 29, scope: !570, inlinedAt: !957)
!957 = distinct !DILocation(line: 261, column: 20, scope: !917)
!958 = !DILocation(line: 506, column: 29, scope: !570, inlinedAt: !959)
!959 = distinct !DILocation(line: 261, column: 36, scope: !917)
!960 = !DILocation(line: 261, column: 5, scope: !917)
!961 = !DILocation(line: 264, column: 9, scope: !917)
!962 = !DILocation(line: 265, column: 9, scope: !917)
!963 = !DILocation(line: 266, column: 9, scope: !917)
!964 = !DILocation(line: 267, column: 9, scope: !917)
!965 = !DILocation(line: 268, column: 9, scope: !917)
!966 = !DILocation(line: 269, column: 9, scope: !917)
!967 = !DILocation(line: 270, column: 9, scope: !917)
!968 = !DILocation(line: 271, column: 9, scope: !917)
!969 = !DILocation(line: 272, column: 9, scope: !917)
!970 = !DILocation(line: 273, column: 9, scope: !917)
!971 = !DILocation(line: 274, column: 9, scope: !917)
!972 = !DILocation(line: 275, column: 9, scope: !917)
!973 = !DILocation(line: 276, column: 9, scope: !917)
!974 = !DILocation(line: 277, column: 9, scope: !917)
!975 = !DILocation(line: 278, column: 9, scope: !917)
!976 = !DILocation(line: 279, column: 9, scope: !917)
!977 = !DILocation(line: 280, column: 9, scope: !917)
!978 = !DILocation(line: 281, column: 9, scope: !917)
!979 = !DILocation(line: 282, column: 9, scope: !917)
!980 = !DILocation(line: 283, column: 9, scope: !917)
!981 = !DILocation(line: 263, column: 22, scope: !917)
!982 = !DILocation(line: 286, column: 9, scope: !919)
!983 = !DILocation(line: 287, column: 9, scope: !919)
!984 = !DILocation(line: 288, column: 9, scope: !919)
!985 = !DILocation(line: 289, column: 9, scope: !919)
!986 = !DILocation(line: 290, column: 9, scope: !919)
!987 = !DILocation(line: 291, column: 9, scope: !919)
!988 = !DILocation(line: 292, column: 9, scope: !919)
!989 = !DILocation(line: 293, column: 9, scope: !919)
!990 = !DILocation(line: 294, column: 9, scope: !919)
!991 = !DILocation(line: 295, column: 9, scope: !919)
!992 = !DILocation(line: 296, column: 9, scope: !919)
!993 = !DILocation(line: 297, column: 9, scope: !919)
!994 = !DILocation(line: 298, column: 9, scope: !919)
!995 = !DILocation(line: 299, column: 9, scope: !919)
!996 = !DILocation(line: 300, column: 9, scope: !919)
!997 = !DILocation(line: 301, column: 9, scope: !919)
!998 = !DILocation(line: 302, column: 9, scope: !919)
!999 = !DILocation(line: 303, column: 9, scope: !919)
!1000 = !DILocation(line: 304, column: 9, scope: !919)
!1001 = !DILocation(line: 305, column: 9, scope: !919)
!1002 = !DILocation(line: 285, column: 22, scope: !919)
!1003 = !DILocation(line: 308, column: 14, scope: !921)
!1004 = !DILocation(line: 308, column: 5, scope: !923)
!1005 = !DILocation(line: 316, column: 5, scope: !921)
!1006 = !DILocation(line: 317, column: 2, scope: !907)
!1007 = !DILocation(line: 308, column: 9, scope: !923)
!1008 = !DILocation(line: 308, column: 9, scope: !925)
!1009 = !DILocation(line: 309, column: 12, scope: !925)
!1010 = !DILocation(line: 309, column: 31, scope: !925)
!1011 = !DILocation(line: 309, column: 59, scope: !925)
!1012 = !DILocation(line: 309, column: 77, scope: !925)
!1013 = !DILocation(line: 312, column: 12, scope: !925)
!1014 = !DILocation(line: 310, column: 20, scope: !925)
!1015 = !DILocation(line: 1, column: 1, scope: !1016)
!1016 = !DILexicalBlockFile(scope: !925, file: !321, discriminator: 0)
!1017 = !DILocation(line: 312, column: 31, scope: !925)
!1018 = !DILocation(line: 312, column: 59, scope: !925)
!1019 = !DILocation(line: 312, column: 77, scope: !925)
!1020 = !DILocation(line: 313, column: 20, scope: !925)
