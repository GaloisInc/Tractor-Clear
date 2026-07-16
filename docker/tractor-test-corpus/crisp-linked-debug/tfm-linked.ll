; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; ASSERT EQ: i1 1 = call i1 @run_test_1()
; ASSERT EQ: i1 1 = call i1 @run_test_2()
; ASSERT EQ: i1 1 = call i1 @run_test_3()
; ASSERT EQ: i1 1 = call i1 @run_test_4()
; ASSERT EQ: i1 1 = call i1 @run_test_5()

%"core::ptr::metadata::PtrRepr<[f32]>" = type { [2 x i64] }

@alloc_f5ffd2fd1476bab43ad89fb40c72d0c5 = private unnamed_addr constant <{ [10 x i8] }> <{ [10 x i8] c"src/lib.rs" }>, align 1
@alloc_4b5675bddb8e817c82e3d08651e686d4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\06\00\00\00\16\00\00\00" }>, align 8
@str.0 = internal constant [33 x i8] c"attempt to multiply with overflow"
@alloc_c4beff6bc516f099c3481d32eb222c77 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\06\00\00\00\1D\00\00\00" }>, align 8
@str.1 = internal constant [28 x i8] c"attempt to add with overflow"
@alloc_d1eb30dd2eed9b34a78a7c43254dd551 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\06\00\00\00\12\00\00\00" }>, align 8
@alloc_d1720db325016f96f4dff4adec71c7b1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\07\00\00\00\1B\00\00\00" }>, align 8
@alloc_87405345ae9736bea08da8b33b34b6e0 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\07\00\00\00\22\00\00\00" }>, align 8
@alloc_b5ccadda23d5bb60272946a88318f101 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\07\00\00\00\16\00\00\00" }>, align 8
@alloc_1a9bc750627c22a3b00ce6f1cb84aa81 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\09\00\00\00\0C\00\00\00" }>, align 8
@alloc_6a5ca03e475df1c71fba09b2a9a2f82a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\09\00\00\00\13\00\00\00" }>, align 8
@alloc_b7cbdfa7a04757e2eeff1770e7779b6f = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\0A\00\00\00\17\00\00\00" }>, align 8
@alloc_09af14c905c0f9aeaf3bb956db87c4b4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\0B\00\00\00\17\00\00\00" }>, align 8
@alloc_56d5b8ea42da89121afbaf9165a5e5a2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\0C\00\00\00\17\00\00\00" }>, align 8
@alloc_8ae832dbeb0323557382afffc99cbb76 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\0F\00\00\00\0D\00\00\00" }>, align 8
@alloc_a1ae2a29779e6450de26f1a9cd4cb5ba = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\10\00\00\00\0D\00\00\00" }>, align 8
@alloc_7a99024bd21489020c4baedbf6e0fa87 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\12\00\00\00\17\00\00\00" }>, align 8
@alloc_f9a233705560a7f527f09c1972bd636b = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\13\00\00\00\17\00\00\00" }>, align 8
@alloc_7e487d8a6282c64f69aceb61c4e6950b = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\14\00\00\00\17\00\00\00" }>, align 8
@alloc_ba4c6bc0f2c747f213dc15b4313f5a3a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\17\00\00\00\0D\00\00\00" }>, align 8
@alloc_0cce52c4e89bdcd8097f2f5c953d54b9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\18\00\00\00\0D\00\00\00" }>, align 8
@alloc_ee4fe487f026a7bb69e65b1a3cfeb8f4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00m\00\00\00\0C\00\00\00" }>, align 8
@alloc_2b82cbee872ea59b95e2d1fb38dd45cb = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00m\00\00\00\17\00\00\00" }>, align 8
@alloc_b39fdbc25c217b5391e133e483a3855d = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00p\00\00\00\09\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define void @tfm(ptr %dest, ptr %src, i32 %count) unnamed_addr #0 !dbg !16 {
start:
  %src.dbg.spill2 = alloca { ptr, i64 }, align 8
  %dest.dbg.spill1 = alloca { ptr, i64 }, align 8
  %count_usize.dbg.spill = alloca i64, align 8
  %count.dbg.spill = alloca i32, align 4
  %src.dbg.spill = alloca ptr, align 8
  %dest.dbg.spill = alloca ptr, align 8
  store ptr %dest, ptr %dest.dbg.spill, align 8
    #dbg_declare(ptr %dest.dbg.spill, !28, !DIExpression(), !48)
  store ptr %src, ptr %src.dbg.spill, align 8
    #dbg_declare(ptr %src.dbg.spill, !29, !DIExpression(), !49)
  store i32 %count, ptr %count.dbg.spill, align 4
    #dbg_declare(ptr %count.dbg.spill, !30, !DIExpression(), !50)
  %_5 = call i32 @_ZN4core3cmp3Ord3max17hac9d5fc93f2f690eE(i32 %count, i32 0), !dbg !51
  %count_usize = sext i32 %_5 to i64, !dbg !51
  store i64 %count_usize, ptr %count_usize.dbg.spill, align 8, !dbg !51
    #dbg_declare(ptr %count_usize.dbg.spill, !31, !DIExpression(), !52)
  %_7 = call i64 @"_ZN4core3num23_$LT$impl$u20$usize$GT$14saturating_mul17ha95f1534954266deE"(i64 %count_usize, i64 2), !dbg !53
  %0 = call { ptr, i64 } @_ZN4core5slice3raw18from_raw_parts_mut17ha44e24eddc883233E(ptr %dest, i64 %_7), !dbg !54
  %dest.0 = extractvalue { ptr, i64 } %0, 0, !dbg !54
  %dest.1 = extractvalue { ptr, i64 } %0, 1, !dbg !54
  %1 = getelementptr inbounds { ptr, i64 }, ptr %dest.dbg.spill1, i32 0, i32 0, !dbg !54
  store ptr %dest.0, ptr %1, align 8, !dbg !54
  %2 = getelementptr inbounds { ptr, i64 }, ptr %dest.dbg.spill1, i32 0, i32 1, !dbg !54
  store i64 %dest.1, ptr %2, align 8, !dbg !54
    #dbg_declare(ptr %dest.dbg.spill1, !34, !DIExpression(), !55)
  %_9 = call i64 @"_ZN4core3num23_$LT$impl$u20$usize$GT$14saturating_mul17ha95f1534954266deE"(i64 %count_usize, i64 3), !dbg !56
  %3 = call { ptr, i64 } @_ZN4core5slice3raw14from_raw_parts17h24007b28a01c9179E(ptr %src, i64 %_9), !dbg !57
  %src.0 = extractvalue { ptr, i64 } %3, 0, !dbg !57
  %src.1 = extractvalue { ptr, i64 } %3, 1, !dbg !57
  %4 = getelementptr inbounds { ptr, i64 }, ptr %src.dbg.spill2, i32 0, i32 0, !dbg !57
  store ptr %src.0, ptr %4, align 8, !dbg !57
  %5 = getelementptr inbounds { ptr, i64 }, ptr %src.dbg.spill2, i32 0, i32 1, !dbg !57
  store i64 %src.1, ptr %5, align 8, !dbg !57
    #dbg_declare(ptr %src.dbg.spill2, !42, !DIExpression(), !58)
  call void @_ZN7tfm_lib3src3lib3tfm17hb908a2a2bc05bec9E(ptr align 4 %dest.0, i64 %dest.1, ptr align 4 %src.0, i64 %src.1, i32 %count), !dbg !59
  ret void, !dbg !60
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @_ZN4core3cmp3Ord3max17hac9d5fc93f2f690eE(i32 %self, i32 %other) unnamed_addr #1 !dbg !61 {
start:
  %other.dbg.spill = alloca i32, align 4
  %self.dbg.spill = alloca i32, align 4
  store i32 %self, ptr %self.dbg.spill, align 4
    #dbg_declare(ptr %self.dbg.spill, !67, !DIExpression(), !71)
  store i32 %other, ptr %other.dbg.spill, align 4
    #dbg_declare(ptr %other.dbg.spill, !68, !DIExpression(), !72)
  %0 = call i32 @_ZN4core3cmp6max_by17h89f7a6c06c40c6b2E(i32 %self, i32 %other), !dbg !73
  ret i32 %0, !dbg !74
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @"_ZN4core3num23_$LT$impl$u20$usize$GT$14saturating_mul17ha95f1534954266deE"(i64 %self, i64 %rhs) unnamed_addr #1 !dbg !75 {
start:
  %x.dbg.spill = alloca i64, align 8
  %0 = alloca i8, align 1
  %b.dbg.spill2 = alloca i8, align 1
  %a.dbg.spill1 = alloca i64, align 8
  %b.dbg.spill = alloca i8, align 1
  %a.dbg.spill = alloca i64, align 8
  %rhs.dbg.spill = alloca i64, align 8
  %self.dbg.spill = alloca i64, align 8
  %_8 = alloca { i64, i8 }, align 8
  %_3 = alloca { i64, i64 }, align 8
  %1 = alloca i64, align 8
  store i64 %self, ptr %self.dbg.spill, align 8
    #dbg_declare(ptr %self.dbg.spill, !82, !DIExpression(), !86)
    #dbg_declare(ptr %self.dbg.spill, !87, !DIExpression(), !112)
    #dbg_declare(ptr %self.dbg.spill, !114, !DIExpression(), !127)
  store i64 %rhs, ptr %rhs.dbg.spill, align 8
    #dbg_declare(ptr %rhs.dbg.spill, !83, !DIExpression(), !129)
    #dbg_declare(ptr %rhs.dbg.spill, !107, !DIExpression(), !130)
    #dbg_declare(ptr %rhs.dbg.spill, !123, !DIExpression(), !131)
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %self, i64 %rhs), !dbg !132
  %_12.0 = extractvalue { i64, i1 } %2, 0, !dbg !132
  %_12.1 = extractvalue { i64, i1 } %2, 1, !dbg !132
  store i64 %_12.0, ptr %a.dbg.spill, align 8, !dbg !133
    #dbg_declare(ptr %a.dbg.spill, !124, !DIExpression(), !134)
  %3 = zext i1 %_12.1 to i8, !dbg !135
  store i8 %3, ptr %b.dbg.spill, align 1, !dbg !135
    #dbg_declare(ptr %b.dbg.spill, !126, !DIExpression(), !136)
  store i64 %_12.0, ptr %_8, align 8, !dbg !137
  %4 = getelementptr inbounds { i64, i8 }, ptr %_8, i32 0, i32 1, !dbg !137
  %5 = zext i1 %_12.1 to i8, !dbg !137
  store i8 %5, ptr %4, align 8, !dbg !137
  %a = load i64, ptr %_8, align 8, !dbg !138, !noundef !41
  store i64 %a, ptr %a.dbg.spill1, align 8, !dbg !138
    #dbg_declare(ptr %a.dbg.spill1, !108, !DIExpression(), !139)
  %6 = getelementptr inbounds { i64, i8 }, ptr %_8, i32 0, i32 1, !dbg !140
  %7 = load i8, ptr %6, align 8, !dbg !140, !range !141, !noundef !41
  %b = trunc i8 %7 to i1, !dbg !140
  %8 = zext i1 %b to i8, !dbg !140
  store i8 %8, ptr %b.dbg.spill2, align 1, !dbg !140
    #dbg_declare(ptr %b.dbg.spill2, !110, !DIExpression(), !142)
  %9 = call i1 @llvm.expect.i1(i1 %b, i1 false), !dbg !143
  %10 = zext i1 %9 to i8, !dbg !143
  store i8 %10, ptr %0, align 1, !dbg !143
  %11 = load i8, ptr %0, align 1, !dbg !143, !range !141, !noundef !41
  %_9 = trunc i8 %11 to i1, !dbg !143
  br i1 %_9, label %bb6, label %bb7, !dbg !143

bb7:                                              ; preds = %start
  %12 = getelementptr inbounds { i64, i64 }, ptr %_3, i32 0, i32 1, !dbg !146
  store i64 %a, ptr %12, align 8, !dbg !146
  store i64 1, ptr %_3, align 8, !dbg !146
  br label %bb8, !dbg !147

bb6:                                              ; preds = %start
  store i64 0, ptr %_3, align 8, !dbg !148
  br label %bb8, !dbg !147

bb8:                                              ; preds = %bb6, %bb7
  %_4 = load i64, ptr %_3, align 8, !dbg !149, !range !150, !noundef !41
  %13 = icmp eq i64 %_4, 0, !dbg !151
  br i1 %13, label %bb1, label %bb3, !dbg !151

bb1:                                              ; preds = %bb8
  store i64 -1, ptr %1, align 8, !dbg !152
  br label %bb4, !dbg !152

bb3:                                              ; preds = %bb8
  %14 = getelementptr inbounds { i64, i64 }, ptr %_3, i32 0, i32 1, !dbg !153
  %x = load i64, ptr %14, align 8, !dbg !153, !noundef !41
  store i64 %x, ptr %x.dbg.spill, align 8, !dbg !153
    #dbg_declare(ptr %x.dbg.spill, !84, !DIExpression(), !154)
  store i64 %x, ptr %1, align 8, !dbg !155
  br label %bb4, !dbg !156

bb2:                                              ; No predecessors!
  unreachable, !dbg !149

bb4:                                              ; preds = %bb3, %bb1
  %15 = load i64, ptr %1, align 8, !dbg !157, !noundef !41
  ret i64 %15, !dbg !157
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @_ZN4core5slice3raw18from_raw_parts_mut17ha44e24eddc883233E(ptr %data, i64 %len) unnamed_addr #1 !dbg !158 {
start:
  %data_address.dbg.spill = alloca ptr, align 8
  %len.dbg.spill = alloca i64, align 8
  %data.dbg.spill = alloca ptr, align 8
  %_8 = alloca { ptr, i64 }, align 8
  %_7 = alloca %"core::ptr::metadata::PtrRepr<[f32]>", align 8
  store ptr %data, ptr %data.dbg.spill, align 8
    #dbg_declare(ptr %data.dbg.spill, !165, !DIExpression(), !169)
    #dbg_declare(ptr %data.dbg.spill, !170, !DIExpression(), !182)
    #dbg_declare(ptr %data.dbg.spill, !184, !DIExpression(), !196)
  store i64 %len, ptr %len.dbg.spill, align 8
    #dbg_declare(ptr %len.dbg.spill, !166, !DIExpression(), !198)
    #dbg_declare(ptr %len.dbg.spill, !181, !DIExpression(), !199)
    #dbg_declare(ptr %len.dbg.spill, !200, !DIExpression(), !208)
  store ptr %data, ptr %data_address.dbg.spill, align 8, !dbg !210
    #dbg_declare(ptr %data_address.dbg.spill, !207, !DIExpression(), !211)
  store ptr %data, ptr %_8, align 8, !dbg !212
  %0 = getelementptr inbounds { ptr, i64 }, ptr %_8, i32 0, i32 1, !dbg !212
  store i64 %len, ptr %0, align 8, !dbg !212
  %1 = getelementptr inbounds { ptr, i64 }, ptr %_8, i32 0, i32 0, !dbg !213
  %2 = load ptr, ptr %1, align 8, !dbg !213, !noundef !41
  %3 = getelementptr inbounds { ptr, i64 }, ptr %_8, i32 0, i32 1, !dbg !213
  %4 = load i64, ptr %3, align 8, !dbg !213, !noundef !41
  %5 = getelementptr inbounds { ptr, i64 }, ptr %_7, i32 0, i32 0, !dbg !213
  store ptr %2, ptr %5, align 8, !dbg !213
  %6 = getelementptr inbounds { ptr, i64 }, ptr %_7, i32 0, i32 1, !dbg !213
  store i64 %4, ptr %6, align 8, !dbg !213
  %7 = getelementptr inbounds { ptr, i64 }, ptr %_7, i32 0, i32 0, !dbg !213
  %_3.0 = load ptr, ptr %7, align 8, !dbg !213, !noundef !41
  %8 = getelementptr inbounds { ptr, i64 }, ptr %_7, i32 0, i32 1, !dbg !213
  %_3.1 = load i64, ptr %8, align 8, !dbg !213, !noundef !41
  %9 = insertvalue { ptr, i64 } poison, ptr %_3.0, 0, !dbg !214
  %10 = insertvalue { ptr, i64 } %9, i64 %_3.1, 1, !dbg !214
  ret { ptr, i64 } %10, !dbg !214
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @_ZN4core5slice3raw14from_raw_parts17h24007b28a01c9179E(ptr %data, i64 %len) unnamed_addr #1 !dbg !215 {
start:
  %data_address.dbg.spill = alloca ptr, align 8
  %len.dbg.spill = alloca i64, align 8
  %data.dbg.spill = alloca ptr, align 8
  %_8 = alloca { ptr, i64 }, align 8
  %_7 = alloca %"core::ptr::metadata::PtrRepr<[f32]>", align 8
  store ptr %data, ptr %data.dbg.spill, align 8
    #dbg_declare(ptr %data.dbg.spill, !219, !DIExpression(), !221)
    #dbg_declare(ptr %data.dbg.spill, !222, !DIExpression(), !232)
    #dbg_declare(ptr %data.dbg.spill, !234, !DIExpression(), !243)
  store i64 %len, ptr %len.dbg.spill, align 8
    #dbg_declare(ptr %len.dbg.spill, !220, !DIExpression(), !245)
    #dbg_declare(ptr %len.dbg.spill, !231, !DIExpression(), !246)
    #dbg_declare(ptr %len.dbg.spill, !247, !DIExpression(), !253)
  store ptr %data, ptr %data_address.dbg.spill, align 8, !dbg !255
    #dbg_declare(ptr %data_address.dbg.spill, !252, !DIExpression(), !256)
  store ptr %data, ptr %_8, align 8, !dbg !257
  %0 = getelementptr inbounds { ptr, i64 }, ptr %_8, i32 0, i32 1, !dbg !257
  store i64 %len, ptr %0, align 8, !dbg !257
  %1 = getelementptr inbounds { ptr, i64 }, ptr %_8, i32 0, i32 0, !dbg !258
  %2 = load ptr, ptr %1, align 8, !dbg !258, !noundef !41
  %3 = getelementptr inbounds { ptr, i64 }, ptr %_8, i32 0, i32 1, !dbg !258
  %4 = load i64, ptr %3, align 8, !dbg !258, !noundef !41
  %5 = getelementptr inbounds { ptr, i64 }, ptr %_7, i32 0, i32 0, !dbg !258
  store ptr %2, ptr %5, align 8, !dbg !258
  %6 = getelementptr inbounds { ptr, i64 }, ptr %_7, i32 0, i32 1, !dbg !258
  store i64 %4, ptr %6, align 8, !dbg !258
  %7 = getelementptr inbounds { ptr, i64 }, ptr %_7, i32 0, i32 0, !dbg !258
  %_3.0 = load ptr, ptr %7, align 8, !dbg !258, !noundef !41
  %8 = getelementptr inbounds { ptr, i64 }, ptr %_7, i32 0, i32 1, !dbg !258
  %_3.1 = load i64, ptr %8, align 8, !dbg !258, !noundef !41
  %9 = insertvalue { ptr, i64 } poison, ptr %_3.0, 0, !dbg !259
  %10 = insertvalue { ptr, i64 } %9, i64 %_3.1, 1, !dbg !259
  ret { ptr, i64 } %10, !dbg !259
}

; Function Attrs: nonlazybind uwtable
define internal void @_ZN7tfm_lib3src3lib3tfm17hb908a2a2bc05bec9E(ptr align 4 %dest.0, i64 %dest.1, ptr align 4 %src.0, i64 %src.1, i32 %count) unnamed_addr #0 !dbg !260 {
start:
  %lambda.dbg.spill27 = alloca float, align 4
  %sqd.dbg.spill25 = alloca float, align 4
  %dxy.dbg.spill23 = alloca float, align 4
  %dx2.dbg.spill20 = alloca float, align 4
  %dy2.dbg.spill17 = alloca float, align 4
  %lambda.dbg.spill = alloca float, align 4
  %sqd.dbg.spill = alloca float, align 4
  %dxy.dbg.spill = alloca float, align 4
  %dy2.dbg.spill = alloca float, align 4
  %dx2.dbg.spill = alloca float, align 4
  %d.dbg.spill = alloca { ptr, i64 }, align 8
  %s.dbg.spill = alloca { ptr, i64 }, align 8
  %i.dbg.spill = alloca i64, align 8
  %n.dbg.spill = alloca i64, align 8
  %count.dbg.spill2 = alloca i64, align 8
  %count.dbg.spill = alloca i32, align 4
  %src.dbg.spill = alloca { ptr, i64 }, align 8
  %dest.dbg.spill = alloca { ptr, i64 }, align 8
  %_32 = alloca { i64, i64 }, align 8
  %_23 = alloca { i64, i64 }, align 8
  %_17 = alloca { i64, i64 }, align 8
  %iter = alloca { i64, i64 }, align 8
  %_14 = alloca { i64, i64 }, align 8
  %0 = getelementptr inbounds { ptr, i64 }, ptr %dest.dbg.spill, i32 0, i32 0
  store ptr %dest.0, ptr %0, align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %dest.dbg.spill, i32 0, i32 1
  store i64 %dest.1, ptr %1, align 8
    #dbg_declare(ptr %dest.dbg.spill, !264, !DIExpression(), !307)
  %2 = getelementptr inbounds { ptr, i64 }, ptr %src.dbg.spill, i32 0, i32 0
  store ptr %src.0, ptr %2, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %src.dbg.spill, i32 0, i32 1
  store i64 %src.1, ptr %3, align 8
    #dbg_declare(ptr %src.dbg.spill, !265, !DIExpression(), !308)
  store i32 %count, ptr %count.dbg.spill, align 4
    #dbg_declare(ptr %count.dbg.spill, !266, !DIExpression(), !309)
    #dbg_declare(ptr %iter, !271, !DIExpression(), !310)
  %_5 = call i32 @_ZN4core3cmp3Ord3max17hac9d5fc93f2f690eE(i32 %count, i32 0), !dbg !311
  %count1 = sext i32 %_5 to i64, !dbg !311
  store i64 %count1, ptr %count.dbg.spill2, align 8, !dbg !311
    #dbg_declare(ptr %count.dbg.spill2, !267, !DIExpression(), !312)
  %_8 = udiv i64 %dest.1, 2, !dbg !313
  %_7 = call i64 @_ZN4core3cmp3Ord3min17had85a050e015c93aE(i64 %count1, i64 %_8), !dbg !314
  %_11 = udiv i64 %src.1, 3, !dbg !315
  %n = call i64 @_ZN4core3cmp3Ord3min17had85a050e015c93aE(i64 %_7, i64 %_11), !dbg !314
  store i64 %n, ptr %n.dbg.spill, align 8, !dbg !314
    #dbg_declare(ptr %n.dbg.spill, !269, !DIExpression(), !316)
  store i64 0, ptr %_14, align 8, !dbg !317
  %4 = getelementptr inbounds { i64, i64 }, ptr %_14, i32 0, i32 1, !dbg !317
  store i64 %n, ptr %4, align 8, !dbg !317
  %5 = getelementptr inbounds { i64, i64 }, ptr %_14, i32 0, i32 0, !dbg !317
  %6 = load i64, ptr %5, align 8, !dbg !317, !noundef !41
  %7 = getelementptr inbounds { i64, i64 }, ptr %_14, i32 0, i32 1, !dbg !317
  %8 = load i64, ptr %7, align 8, !dbg !317, !noundef !41
  %9 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h4a2372f10929c463E"(i64 %6, i64 %8), !dbg !317
  %_13.0 = extractvalue { i64, i64 } %9, 0, !dbg !317
  %_13.1 = extractvalue { i64, i64 } %9, 1, !dbg !317
  %10 = getelementptr inbounds { i64, i64 }, ptr %iter, i32 0, i32 0, !dbg !317
  store i64 %_13.0, ptr %10, align 8, !dbg !317
  %11 = getelementptr inbounds { i64, i64 }, ptr %iter, i32 0, i32 1, !dbg !317
  store i64 %_13.1, ptr %11, align 8, !dbg !317
  br label %bb5, !dbg !318

bb5:                                              ; preds = %bb35, %bb27, %start
  %12 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h0b94592bcb4c2ddbE"(ptr align 8 %iter), !dbg !310
  store { i64, i64 } %12, ptr %_17, align 8, !dbg !310
  %_19 = load i64, ptr %_17, align 8, !dbg !310, !range !150, !noundef !41
  %13 = icmp eq i64 %_19, 0, !dbg !310
  br i1 %13, label %bb9, label %bb7, !dbg !310

bb9:                                              ; preds = %bb5
  ret void, !dbg !319

bb7:                                              ; preds = %bb5
  %14 = getelementptr inbounds { i64, i64 }, ptr %_17, i32 0, i32 1, !dbg !320
  %i = load i64, ptr %14, align 8, !dbg !320, !noundef !41
  store i64 %i, ptr %i.dbg.spill, align 8, !dbg !320
    #dbg_declare(ptr %i.dbg.spill, !281, !DIExpression(), !321)
  %15 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i, i64 3), !dbg !322
  %_25.0 = extractvalue { i64, i1 } %15, 0, !dbg !322
  %_25.1 = extractvalue { i64, i1 } %15, 1, !dbg !322
  %16 = call i1 @llvm.expect.i1(i1 %_25.1, i1 false), !dbg !322
  br i1 %16, label %panic, label %bb10, !dbg !322

bb8:                                              ; No predecessors!
  unreachable, !dbg !310

bb10:                                             ; preds = %bb7
  %17 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i, i64 3), !dbg !323
  %_28.0 = extractvalue { i64, i1 } %17, 0, !dbg !323
  %_28.1 = extractvalue { i64, i1 } %17, 1, !dbg !323
  %18 = call i1 @llvm.expect.i1(i1 %_28.1, i1 false), !dbg !323
  br i1 %18, label %panic3, label %bb11, !dbg !323

panic:                                            ; preds = %bb7
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.0, i64 33, ptr align 8 @alloc_4b5675bddb8e817c82e3d08651e686d4) #6, !dbg !322
  unreachable, !dbg !322

bb11:                                             ; preds = %bb10
  %19 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_28.0, i64 3), !dbg !323
  %_29.0 = extractvalue { i64, i1 } %19, 0, !dbg !323
  %_29.1 = extractvalue { i64, i1 } %19, 1, !dbg !323
  %20 = call i1 @llvm.expect.i1(i1 %_29.1, i1 false), !dbg !323
  br i1 %20, label %panic4, label %bb12, !dbg !323

panic3:                                           ; preds = %bb10
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.0, i64 33, ptr align 8 @alloc_c4beff6bc516f099c3481d32eb222c77) #6, !dbg !323
  unreachable, !dbg !323

bb12:                                             ; preds = %bb11
  store i64 %_25.0, ptr %_23, align 8, !dbg !322
  %21 = getelementptr inbounds { i64, i64 }, ptr %_23, i32 0, i32 1, !dbg !322
  store i64 %_29.0, ptr %21, align 8, !dbg !322
  %22 = getelementptr inbounds { i64, i64 }, ptr %_23, i32 0, i32 0, !dbg !324
  %23 = load i64, ptr %22, align 8, !dbg !324, !noundef !41
  %24 = getelementptr inbounds { i64, i64 }, ptr %_23, i32 0, i32 1, !dbg !324
  %25 = load i64, ptr %24, align 8, !dbg !324, !noundef !41
  %26 = call { ptr, i64 } @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17hbd175deddb34bf65E"(ptr align 4 %src.0, i64 %src.1, i64 %23, i64 %25, ptr align 8 @alloc_d1eb30dd2eed9b34a78a7c43254dd551), !dbg !324
  %_22.0 = extractvalue { ptr, i64 } %26, 0, !dbg !324
  %_22.1 = extractvalue { ptr, i64 } %26, 1, !dbg !324
  %27 = getelementptr inbounds { ptr, i64 }, ptr %s.dbg.spill, i32 0, i32 0, !dbg !325
  store ptr %_22.0, ptr %27, align 8, !dbg !325
  %28 = getelementptr inbounds { ptr, i64 }, ptr %s.dbg.spill, i32 0, i32 1, !dbg !325
  store i64 %_22.1, ptr %28, align 8, !dbg !325
    #dbg_declare(ptr %s.dbg.spill, !283, !DIExpression(), !326)
  %29 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i, i64 2), !dbg !327
  %_34.0 = extractvalue { i64, i1 } %29, 0, !dbg !327
  %_34.1 = extractvalue { i64, i1 } %29, 1, !dbg !327
  %30 = call i1 @llvm.expect.i1(i1 %_34.1, i1 false), !dbg !327
  br i1 %30, label %panic5, label %bb14, !dbg !327

panic4:                                           ; preds = %bb11
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.1, i64 28, ptr align 8 @alloc_c4beff6bc516f099c3481d32eb222c77) #6, !dbg !323
  unreachable, !dbg !323

bb14:                                             ; preds = %bb12
  %31 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i, i64 2), !dbg !328
  %_37.0 = extractvalue { i64, i1 } %31, 0, !dbg !328
  %_37.1 = extractvalue { i64, i1 } %31, 1, !dbg !328
  %32 = call i1 @llvm.expect.i1(i1 %_37.1, i1 false), !dbg !328
  br i1 %32, label %panic6, label %bb15, !dbg !328

panic5:                                           ; preds = %bb12
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.0, i64 33, ptr align 8 @alloc_d1720db325016f96f4dff4adec71c7b1) #6, !dbg !327
  unreachable, !dbg !327

bb15:                                             ; preds = %bb14
  %33 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_37.0, i64 2), !dbg !328
  %_38.0 = extractvalue { i64, i1 } %33, 0, !dbg !328
  %_38.1 = extractvalue { i64, i1 } %33, 1, !dbg !328
  %34 = call i1 @llvm.expect.i1(i1 %_38.1, i1 false), !dbg !328
  br i1 %34, label %panic7, label %bb16, !dbg !328

panic6:                                           ; preds = %bb14
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.0, i64 33, ptr align 8 @alloc_87405345ae9736bea08da8b33b34b6e0) #6, !dbg !328
  unreachable, !dbg !328

bb16:                                             ; preds = %bb15
  store i64 %_34.0, ptr %_32, align 8, !dbg !327
  %35 = getelementptr inbounds { i64, i64 }, ptr %_32, i32 0, i32 1, !dbg !327
  store i64 %_38.0, ptr %35, align 8, !dbg !327
  %36 = getelementptr inbounds { i64, i64 }, ptr %_32, i32 0, i32 0, !dbg !329
  %37 = load i64, ptr %36, align 8, !dbg !329, !noundef !41
  %38 = getelementptr inbounds { i64, i64 }, ptr %_32, i32 0, i32 1, !dbg !329
  %39 = load i64, ptr %38, align 8, !dbg !329, !noundef !41
  %40 = call { ptr, i64 } @"_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h244088d47dbca3efE"(ptr align 4 %dest.0, i64 %dest.1, i64 %37, i64 %39, ptr align 8 @alloc_b5ccadda23d5bb60272946a88318f101), !dbg !329
  %_31.0 = extractvalue { ptr, i64 } %40, 0, !dbg !329
  %_31.1 = extractvalue { ptr, i64 } %40, 1, !dbg !329
  %41 = getelementptr inbounds { ptr, i64 }, ptr %d.dbg.spill, i32 0, i32 0, !dbg !330
  store ptr %_31.0, ptr %41, align 8, !dbg !330
  %42 = getelementptr inbounds { ptr, i64 }, ptr %d.dbg.spill, i32 0, i32 1, !dbg !330
  store i64 %_31.1, ptr %42, align 8, !dbg !330
    #dbg_declare(ptr %d.dbg.spill, !285, !DIExpression(), !331)
  %_43 = icmp ult i64 0, %_22.1, !dbg !332
  %43 = call i1 @llvm.expect.i1(i1 %_43, i1 true), !dbg !332
  br i1 %43, label %bb18, label %panic8, !dbg !332

panic7:                                           ; preds = %bb15
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.1, i64 28, ptr align 8 @alloc_87405345ae9736bea08da8b33b34b6e0) #6, !dbg !328
  unreachable, !dbg !328

bb18:                                             ; preds = %bb16
  %44 = getelementptr inbounds [0 x float], ptr %_22.0, i64 0, i64 0, !dbg !332
  %_40 = load float, ptr %44, align 4, !dbg !332, !noundef !41
  %_47 = icmp ult i64 1, %_22.1, !dbg !333
  %45 = call i1 @llvm.expect.i1(i1 %_47, i1 true), !dbg !333
  br i1 %45, label %bb19, label %panic9, !dbg !333

panic8:                                           ; preds = %bb16
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 0, i64 %_22.1, ptr align 8 @alloc_1a9bc750627c22a3b00ce6f1cb84aa81) #6, !dbg !332
  unreachable, !dbg !332

bb19:                                             ; preds = %bb18
  %46 = getelementptr inbounds [0 x float], ptr %_22.0, i64 0, i64 1, !dbg !333
  %_44 = load float, ptr %46, align 4, !dbg !333, !noundef !41
  %_39 = fcmp olt float %_40, %_44, !dbg !332
  br i1 %_39, label %bb20, label %bb28, !dbg !332

panic9:                                           ; preds = %bb18
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 1, i64 %_22.1, ptr align 8 @alloc_6a5ca03e475df1c71fba09b2a9a2f82a) #6, !dbg !333
  unreachable, !dbg !333

bb28:                                             ; preds = %bb19
  %_83 = icmp ult i64 0, %_22.1, !dbg !334
  %47 = call i1 @llvm.expect.i1(i1 %_83, i1 true), !dbg !334
  br i1 %47, label %bb29, label %panic15, !dbg !334

bb20:                                             ; preds = %bb19
  %_51 = icmp ult i64 0, %_22.1, !dbg !335
  %48 = call i1 @llvm.expect.i1(i1 %_51, i1 true), !dbg !335
  br i1 %48, label %bb21, label %panic10, !dbg !335

bb21:                                             ; preds = %bb20
  %49 = getelementptr inbounds [0 x float], ptr %_22.0, i64 0, i64 0, !dbg !335
  %dx2 = load float, ptr %49, align 4, !dbg !335, !noundef !41
  store float %dx2, ptr %dx2.dbg.spill, align 4, !dbg !335
    #dbg_declare(ptr %dx2.dbg.spill, !287, !DIExpression(), !336)
  %_55 = icmp ult i64 1, %_22.1, !dbg !337
  %50 = call i1 @llvm.expect.i1(i1 %_55, i1 true), !dbg !337
  br i1 %50, label %bb22, label %panic11, !dbg !337

panic10:                                          ; preds = %bb20
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 0, i64 %_22.1, ptr align 8 @alloc_b7cbdfa7a04757e2eeff1770e7779b6f) #6, !dbg !335
  unreachable, !dbg !335

bb22:                                             ; preds = %bb21
  %51 = getelementptr inbounds [0 x float], ptr %_22.0, i64 0, i64 1, !dbg !337
  %dy2 = load float, ptr %51, align 4, !dbg !337, !noundef !41
  store float %dy2, ptr %dy2.dbg.spill, align 4, !dbg !337
    #dbg_declare(ptr %dy2.dbg.spill, !289, !DIExpression(), !338)
  %_59 = icmp ult i64 2, %_22.1, !dbg !339
  %52 = call i1 @llvm.expect.i1(i1 %_59, i1 true), !dbg !339
  br i1 %52, label %bb23, label %panic12, !dbg !339

panic11:                                          ; preds = %bb21
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 1, i64 %_22.1, ptr align 8 @alloc_09af14c905c0f9aeaf3bb956db87c4b4) #6, !dbg !337
  unreachable, !dbg !337

bb23:                                             ; preds = %bb22
  %53 = getelementptr inbounds [0 x float], ptr %_22.0, i64 0, i64 2, !dbg !339
  %dxy = load float, ptr %53, align 4, !dbg !339, !noundef !41
  store float %dxy, ptr %dxy.dbg.spill, align 4, !dbg !339
    #dbg_declare(ptr %dxy.dbg.spill, !291, !DIExpression(), !340)
  %_63 = fmul float %dy2, %dy2, !dbg !341
  %_65 = fmul float 2.000000e+00, %dx2, !dbg !342
  %_64 = fmul float %_65, %dy2, !dbg !342
  %_62 = fsub float %_63, %_64, !dbg !341
  %_66 = fmul float %dx2, %dx2, !dbg !343
  %_61 = fadd float %_62, %_66, !dbg !341
  %_68 = fmul float 4.000000e+00, %dxy, !dbg !344
  %_67 = fmul float %_68, %dxy, !dbg !344
  %sqd = fadd float %_61, %_67, !dbg !341
  store float %sqd, ptr %sqd.dbg.spill, align 4, !dbg !341
    #dbg_declare(ptr %sqd.dbg.spill, !293, !DIExpression(), !345)
  %_71 = fadd float %dy2, %dx2, !dbg !346
  %_73 = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$3max17hf059a6522ee4cfbaE"(float %sqd, float 0.000000e+00), !dbg !347
  %_72 = call float @"_ZN3std3f3221_$LT$impl$u20$f32$GT$4sqrt17h32aef8043cab721fE"(float %_73), !dbg !347
  %_70 = fadd float %_71, %_72, !dbg !348
  %lambda = fmul float 5.000000e-01, %_70, !dbg !349
  store float %lambda, ptr %lambda.dbg.spill, align 4, !dbg !349
    #dbg_declare(ptr %lambda.dbg.spill, !295, !DIExpression(), !350)
  %_76 = icmp ult i64 0, %_31.1, !dbg !351
  %54 = call i1 @llvm.expect.i1(i1 %_76, i1 true), !dbg !351
  br i1 %54, label %bb26, label %panic13, !dbg !351

panic12:                                          ; preds = %bb22
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 2, i64 %_22.1, ptr align 8 @alloc_56d5b8ea42da89121afbaf9165a5e5a2) #6, !dbg !339
  unreachable, !dbg !339

bb26:                                             ; preds = %bb23
  %55 = getelementptr inbounds [0 x float], ptr %_31.0, i64 0, i64 0, !dbg !351
  %56 = fsub float %dx2, %lambda, !dbg !351
  store float %56, ptr %55, align 4, !dbg !351
  %_79 = icmp ult i64 1, %_31.1, !dbg !352
  %57 = call i1 @llvm.expect.i1(i1 %_79, i1 true), !dbg !352
  br i1 %57, label %bb27, label %panic14, !dbg !352

panic13:                                          ; preds = %bb23
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 0, i64 %_31.1, ptr align 8 @alloc_8ae832dbeb0323557382afffc99cbb76) #6, !dbg !351
  unreachable, !dbg !351

bb27:                                             ; preds = %bb26
  %58 = getelementptr inbounds [0 x float], ptr %_31.0, i64 0, i64 1, !dbg !352
  store float %dxy, ptr %58, align 4, !dbg !352
  br label %bb5, !dbg !353

panic14:                                          ; preds = %bb26
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 1, i64 %_31.1, ptr align 8 @alloc_a1ae2a29779e6450de26f1a9cd4cb5ba) #6, !dbg !352
  unreachable, !dbg !352

bb29:                                             ; preds = %bb28
  %59 = getelementptr inbounds [0 x float], ptr %_22.0, i64 0, i64 0, !dbg !334
  %dy216 = load float, ptr %59, align 4, !dbg !334, !noundef !41
  store float %dy216, ptr %dy2.dbg.spill17, align 4, !dbg !334
    #dbg_declare(ptr %dy2.dbg.spill17, !297, !DIExpression(), !354)
  %_87 = icmp ult i64 1, %_22.1, !dbg !355
  %60 = call i1 @llvm.expect.i1(i1 %_87, i1 true), !dbg !355
  br i1 %60, label %bb30, label %panic18, !dbg !355

panic15:                                          ; preds = %bb28
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 0, i64 %_22.1, ptr align 8 @alloc_7a99024bd21489020c4baedbf6e0fa87) #6, !dbg !334
  unreachable, !dbg !334

bb30:                                             ; preds = %bb29
  %61 = getelementptr inbounds [0 x float], ptr %_22.0, i64 0, i64 1, !dbg !355
  %dx219 = load float, ptr %61, align 4, !dbg !355, !noundef !41
  store float %dx219, ptr %dx2.dbg.spill20, align 4, !dbg !355
    #dbg_declare(ptr %dx2.dbg.spill20, !299, !DIExpression(), !356)
  %_91 = icmp ult i64 2, %_22.1, !dbg !357
  %62 = call i1 @llvm.expect.i1(i1 %_91, i1 true), !dbg !357
  br i1 %62, label %bb31, label %panic21, !dbg !357

panic18:                                          ; preds = %bb29
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 1, i64 %_22.1, ptr align 8 @alloc_f9a233705560a7f527f09c1972bd636b) #6, !dbg !355
  unreachable, !dbg !355

bb31:                                             ; preds = %bb30
  %63 = getelementptr inbounds [0 x float], ptr %_22.0, i64 0, i64 2, !dbg !357
  %dxy22 = load float, ptr %63, align 4, !dbg !357, !noundef !41
  store float %dxy22, ptr %dxy.dbg.spill23, align 4, !dbg !357
    #dbg_declare(ptr %dxy.dbg.spill23, !301, !DIExpression(), !358)
  %_95 = fmul float %dy216, %dy216, !dbg !359
  %_97 = fmul float 2.000000e+00, %dx219, !dbg !360
  %_96 = fmul float %_97, %dy216, !dbg !360
  %_94 = fsub float %_95, %_96, !dbg !359
  %_98 = fmul float %dx219, %dx219, !dbg !361
  %_93 = fadd float %_94, %_98, !dbg !359
  %_100 = fmul float 4.000000e+00, %dxy22, !dbg !362
  %_99 = fmul float %_100, %dxy22, !dbg !362
  %sqd24 = fadd float %_93, %_99, !dbg !359
  store float %sqd24, ptr %sqd.dbg.spill25, align 4, !dbg !359
    #dbg_declare(ptr %sqd.dbg.spill25, !303, !DIExpression(), !363)
  %_103 = fadd float %dy216, %dx219, !dbg !364
  %_105 = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$3max17hf059a6522ee4cfbaE"(float %sqd24, float 0.000000e+00), !dbg !365
  %_104 = call float @"_ZN3std3f3221_$LT$impl$u20$f32$GT$4sqrt17h32aef8043cab721fE"(float %_105), !dbg !365
  %_102 = fadd float %_103, %_104, !dbg !366
  %lambda26 = fmul float 5.000000e-01, %_102, !dbg !367
  store float %lambda26, ptr %lambda.dbg.spill27, align 4, !dbg !367
    #dbg_declare(ptr %lambda.dbg.spill27, !305, !DIExpression(), !368)
  %_108 = icmp ult i64 0, %_31.1, !dbg !369
  %64 = call i1 @llvm.expect.i1(i1 %_108, i1 true), !dbg !369
  br i1 %64, label %bb34, label %panic28, !dbg !369

panic21:                                          ; preds = %bb30
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 2, i64 %_22.1, ptr align 8 @alloc_7e487d8a6282c64f69aceb61c4e6950b) #6, !dbg !357
  unreachable, !dbg !357

bb34:                                             ; preds = %bb31
  %65 = getelementptr inbounds [0 x float], ptr %_31.0, i64 0, i64 0, !dbg !369
  store float %dxy22, ptr %65, align 4, !dbg !369
  %_111 = icmp ult i64 1, %_31.1, !dbg !370
  %66 = call i1 @llvm.expect.i1(i1 %_111, i1 true), !dbg !370
  br i1 %66, label %bb35, label %panic29, !dbg !370

panic28:                                          ; preds = %bb31
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 0, i64 %_31.1, ptr align 8 @alloc_ba4c6bc0f2c747f213dc15b4313f5a3a) #6, !dbg !369
  unreachable, !dbg !369

bb35:                                             ; preds = %bb34
  %67 = getelementptr inbounds [0 x float], ptr %_31.0, i64 0, i64 1, !dbg !370
  %68 = fsub float %dx219, %lambda26, !dbg !370
  store float %68, ptr %67, align 4, !dbg !370
  br label %bb5, !dbg !353

panic29:                                          ; preds = %bb34
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 1, i64 %_31.1, ptr align 8 @alloc_0cce52c4e89bdcd8097f2f5c953d54b9) #6, !dbg !370
  unreachable, !dbg !370
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_ZN4core3cmp3Ord3min17had85a050e015c93aE(i64 %self, i64 %other) unnamed_addr #1 !dbg !371 {
start:
  %other.dbg.spill = alloca i64, align 8
  %self.dbg.spill = alloca i64, align 8
  store i64 %self, ptr %self.dbg.spill, align 8
    #dbg_declare(ptr %self.dbg.spill, !373, !DIExpression(), !377)
  store i64 %other, ptr %other.dbg.spill, align 8
    #dbg_declare(ptr %other.dbg.spill, !374, !DIExpression(), !378)
  %0 = call i64 @_ZN4core3cmp6min_by17hcb2c8982c64a6efdE(i64 %self, i64 %other), !dbg !379
  ret i64 %0, !dbg !380
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h4a2372f10929c463E"(i64 %self.0, i64 %self.1) unnamed_addr #1 !dbg !381 {
start:
  %self.dbg.spill = alloca { i64, i64 }, align 8
  %0 = getelementptr inbounds { i64, i64 }, ptr %self.dbg.spill, i32 0, i32 0
  store i64 %self.0, ptr %0, align 8
  %1 = getelementptr inbounds { i64, i64 }, ptr %self.dbg.spill, i32 0, i32 1
  store i64 %self.1, ptr %1, align 8
    #dbg_declare(ptr %self.dbg.spill, !390, !DIExpression(), !393)
  %2 = insertvalue { i64, i64 } poison, i64 %self.0, 0, !dbg !394
  %3 = insertvalue { i64, i64 } %2, i64 %self.1, 1, !dbg !394
  ret { i64, i64 } %3, !dbg !394
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h0b94592bcb4c2ddbE"(ptr align 8 %self) unnamed_addr #1 !dbg !395 {
start:
  %self.dbg.spill = alloca ptr, align 8
  store ptr %self, ptr %self.dbg.spill, align 8
    #dbg_declare(ptr %self.dbg.spill, !403, !DIExpression(), !406)
  %0 = call { i64, i64 } @"_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17h2ee309bd7daa1ab5E"(ptr align 8 %self), !dbg !407
  %1 = extractvalue { i64, i64 } %0, 0, !dbg !407
  %2 = extractvalue { i64, i64 } %0, 1, !dbg !407
  %3 = insertvalue { i64, i64 } poison, i64 %1, 0, !dbg !408
  %4 = insertvalue { i64, i64 } %3, i64 %2, 1, !dbg !408
  ret { i64, i64 } %4, !dbg !408
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.expect.i1(i1, i1) #3

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1, i64, ptr align 8) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #2

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17hbd175deddb34bf65E"(ptr align 4 %self.0, i64 %self.1, i64 %index.0, i64 %index.1, ptr align 8 %0) unnamed_addr #1 !dbg !409 {
start:
  %index.dbg.spill = alloca { i64, i64 }, align 8
  %self.dbg.spill = alloca { ptr, i64 }, align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill, i32 0, i32 0
  store ptr %self.0, ptr %1, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill, i32 0, i32 1
  store i64 %self.1, ptr %2, align 8
    #dbg_declare(ptr %self.dbg.spill, !431, !DIExpression(), !434)
  %3 = getelementptr inbounds { i64, i64 }, ptr %index.dbg.spill, i32 0, i32 0
  store i64 %index.0, ptr %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, ptr %index.dbg.spill, i32 0, i32 1
  store i64 %index.1, ptr %4, align 8
    #dbg_declare(ptr %index.dbg.spill, !432, !DIExpression(), !435)
  %5 = call { ptr, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hfaf1ce62e9edcdb7E"(i64 %index.0, i64 %index.1, ptr align 4 %self.0, i64 %self.1, ptr align 8 %0), !dbg !436
  %6 = extractvalue { ptr, i64 } %5, 0, !dbg !436
  %7 = extractvalue { ptr, i64 } %5, 1, !dbg !436
  %8 = insertvalue { ptr, i64 } poison, ptr %6, 0, !dbg !437
  %9 = insertvalue { ptr, i64 } %8, i64 %7, 1, !dbg !437
  ret { ptr, i64 } %9, !dbg !437
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @"_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h244088d47dbca3efE"(ptr align 4 %self.0, i64 %self.1, i64 %index.0, i64 %index.1, ptr align 8 %0) unnamed_addr #1 !dbg !438 {
start:
  %index.dbg.spill = alloca { i64, i64 }, align 8
  %self.dbg.spill = alloca { ptr, i64 }, align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill, i32 0, i32 0
  store ptr %self.0, ptr %1, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill, i32 0, i32 1
  store i64 %self.1, ptr %2, align 8
    #dbg_declare(ptr %self.dbg.spill, !443, !DIExpression(), !445)
  %3 = getelementptr inbounds { i64, i64 }, ptr %index.dbg.spill, i32 0, i32 0
  store i64 %index.0, ptr %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, ptr %index.dbg.spill, i32 0, i32 1
  store i64 %index.1, ptr %4, align 8
    #dbg_declare(ptr %index.dbg.spill, !444, !DIExpression(), !446)
  %5 = call { ptr, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hee7341bf73648ea9E"(i64 %index.0, i64 %index.1, ptr align 4 %self.0, i64 %self.1, ptr align 8 %0), !dbg !447
  %_3.0 = extractvalue { ptr, i64 } %5, 0, !dbg !447
  %_3.1 = extractvalue { ptr, i64 } %5, 1, !dbg !447
  %6 = insertvalue { ptr, i64 } poison, ptr %_3.0, 0, !dbg !448
  %7 = insertvalue { ptr, i64 } %6, i64 %_3.1, 1, !dbg !448
  ret { ptr, i64 } %7, !dbg !448
}

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64, i64, ptr align 8) unnamed_addr #4

; Function Attrs: inlinehint nonlazybind uwtable
define internal float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$3max17hf059a6522ee4cfbaE"(float %self, float %other) unnamed_addr #1 !dbg !449 {
start:
  %0 = alloca float, align 4
  %other.dbg.spill = alloca float, align 4
  %self.dbg.spill = alloca float, align 4
  store float %self, ptr %self.dbg.spill, align 4
    #dbg_declare(ptr %self.dbg.spill, !456, !DIExpression(), !458)
  store float %other, ptr %other.dbg.spill, align 4
    #dbg_declare(ptr %other.dbg.spill, !457, !DIExpression(), !459)
  %1 = call float @llvm.maxnum.f32(float %self, float %other), !dbg !460
  store float %1, ptr %0, align 4, !dbg !460
  %2 = load float, ptr %0, align 4, !dbg !460, !noundef !41
  ret float %2, !dbg !461
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal float @"_ZN3std3f3221_$LT$impl$u20$f32$GT$4sqrt17h32aef8043cab721fE"(float %self) unnamed_addr #1 !dbg !462 {
start:
  %0 = alloca float, align 4
  %self.dbg.spill = alloca float, align 4
  store float %self, ptr %self.dbg.spill, align 4
    #dbg_declare(ptr %self.dbg.spill, !470, !DIExpression(), !471)
  %1 = call float @llvm.sqrt.f32(float %self), !dbg !472
  store float %1, ptr %0, align 4, !dbg !472
  %2 = load float, ptr %0, align 4, !dbg !472, !noundef !41
  ret float %2, !dbg !473
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #2

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hee7341bf73648ea9E"(i64 %self.0, i64 %self.1, ptr align 4 %slice.0, i64 %slice.1, ptr align 8 %0) unnamed_addr #1 !dbg !474 {
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
  %_34 = alloca %"core::ptr::metadata::PtrRepr<[f32]>", align 8
  %3 = getelementptr inbounds { i64, i64 }, ptr %self.dbg.spill, i32 0, i32 0
  store i64 %self.0, ptr %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, ptr %self.dbg.spill, i32 0, i32 1
  store i64 %self.1, ptr %4, align 8
    #dbg_declare(ptr %self.dbg.spill, !479, !DIExpression(), !481)
    #dbg_declare(ptr %self.dbg.spill, !482, !DIExpression(), !492)
  %5 = getelementptr inbounds { ptr, i64 }, ptr %slice.dbg.spill, i32 0, i32 0
  store ptr %slice.0, ptr %5, align 8
  %6 = getelementptr inbounds { ptr, i64 }, ptr %slice.dbg.spill, i32 0, i32 1
  store i64 %slice.1, ptr %6, align 8
    #dbg_declare(ptr %slice.dbg.spill, !480, !DIExpression(), !494)
  %_3 = icmp ugt i64 %self.0, %self.1, !dbg !495
  br i1 %_3, label %bb1, label %bb2, !dbg !495

bb2:                                              ; preds = %start
  %_9 = icmp ugt i64 %self.1, %slice.1, !dbg !496
  br i1 %_9, label %bb3, label %bb4, !dbg !496

bb1:                                              ; preds = %start
  call void @_ZN4core5slice5index22slice_index_order_fail17h2045503bd7776290E(i64 %self.0, i64 %self.1, ptr align 8 %0) #6, !dbg !497
  unreachable, !dbg !497

bb4:                                              ; preds = %bb2
  %7 = getelementptr inbounds { ptr, i64 }, ptr %slice.dbg.spill1, i32 0, i32 0, !dbg !498
  store ptr %slice.0, ptr %7, align 8, !dbg !498
  %8 = getelementptr inbounds { ptr, i64 }, ptr %slice.dbg.spill1, i32 0, i32 1, !dbg !498
  store i64 %slice.1, ptr %8, align 8, !dbg !498
    #dbg_declare(ptr %slice.dbg.spill1, !487, !DIExpression(), !499)
    #dbg_declare(ptr %slice.dbg.spill1, !500, !DIExpression(), !506)
  %9 = sub nuw i64 %self.1, %self.0, !dbg !508
  store i64 %9, ptr %2, align 8, !dbg !508
  %new_len = load i64, ptr %2, align 8, !dbg !508, !noundef !41
  store i64 %new_len, ptr %new_len.dbg.spill, align 8, !dbg !508
    #dbg_declare(ptr %new_len.dbg.spill, !490, !DIExpression(), !509)
  store ptr %slice.0, ptr %self.dbg.spill2, align 8, !dbg !510
    #dbg_declare(ptr %self.dbg.spill2, !511, !DIExpression(), !517)
    #dbg_declare(ptr %self.dbg.spill2, !519, !DIExpression(), !526)
  store i64 %self.0, ptr %count.dbg.spill, align 8, !dbg !528
    #dbg_declare(ptr %count.dbg.spill, !516, !DIExpression(), !529)
  store i64 %self.0, ptr %count.dbg.spill3, align 8, !dbg !530
    #dbg_declare(ptr %count.dbg.spill3, !525, !DIExpression(), !531)
  %10 = getelementptr inbounds float, ptr %slice.0, i64 %self.0, !dbg !532
  store ptr %10, ptr %1, align 8, !dbg !532
  %_31 = load ptr, ptr %1, align 8, !dbg !532, !noundef !41
  store ptr %_31, ptr %data.dbg.spill, align 8, !dbg !532
    #dbg_declare(ptr %data.dbg.spill, !533, !DIExpression(), !537)
    #dbg_declare(ptr %data.dbg.spill, !539, !DIExpression(), !542)
  store i64 %new_len, ptr %len.dbg.spill, align 8, !dbg !544
    #dbg_declare(ptr %len.dbg.spill, !536, !DIExpression(), !545)
    #dbg_declare(ptr %len.dbg.spill, !546, !DIExpression(), !550)
  store ptr %_31, ptr %data_address.dbg.spill, align 8, !dbg !552
    #dbg_declare(ptr %data_address.dbg.spill, !549, !DIExpression(), !553)
  store ptr %_31, ptr %_35, align 8, !dbg !554
  %11 = getelementptr inbounds { ptr, i64 }, ptr %_35, i32 0, i32 1, !dbg !554
  store i64 %new_len, ptr %11, align 8, !dbg !554
  %12 = getelementptr inbounds { ptr, i64 }, ptr %_35, i32 0, i32 0, !dbg !555
  %13 = load ptr, ptr %12, align 8, !dbg !555, !noundef !41
  %14 = getelementptr inbounds { ptr, i64 }, ptr %_35, i32 0, i32 1, !dbg !555
  %15 = load i64, ptr %14, align 8, !dbg !555, !noundef !41
  %16 = getelementptr inbounds { ptr, i64 }, ptr %_34, i32 0, i32 0, !dbg !555
  store ptr %13, ptr %16, align 8, !dbg !555
  %17 = getelementptr inbounds { ptr, i64 }, ptr %_34, i32 0, i32 1, !dbg !555
  store i64 %15, ptr %17, align 8, !dbg !555
  %18 = getelementptr inbounds { ptr, i64 }, ptr %_34, i32 0, i32 0, !dbg !555
  %_17.0 = load ptr, ptr %18, align 8, !dbg !555, !noundef !41
  %19 = getelementptr inbounds { ptr, i64 }, ptr %_34, i32 0, i32 1, !dbg !555
  %_17.1 = load i64, ptr %19, align 8, !dbg !555, !noundef !41
  %20 = insertvalue { ptr, i64 } poison, ptr %_17.0, 0, !dbg !556
  %21 = insertvalue { ptr, i64 } %20, i64 %_17.1, 1, !dbg !556
  ret { ptr, i64 } %21, !dbg !556

bb3:                                              ; preds = %bb2
  call void @_ZN4core5slice5index24slice_end_index_len_fail17h63e54c65524702d3E(i64 %self.1, i64 %slice.1, ptr align 8 %0) #6, !dbg !557
  unreachable, !dbg !557
}

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice5index22slice_index_order_fail17h2045503bd7776290E(i64, i64, ptr align 8) unnamed_addr #4

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core5slice5index24slice_end_index_len_fail17h63e54c65524702d3E(i64, i64, ptr align 8) unnamed_addr #4

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hfaf1ce62e9edcdb7E"(i64 %self.0, i64 %self.1, ptr align 4 %slice.0, i64 %slice.1, ptr align 8 %0) unnamed_addr #1 !dbg !558 {
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
  %_29 = alloca %"core::ptr::metadata::PtrRepr<[f32]>", align 8
  %3 = getelementptr inbounds { i64, i64 }, ptr %self.dbg.spill, i32 0, i32 0
  store i64 %self.0, ptr %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, ptr %self.dbg.spill, i32 0, i32 1
  store i64 %self.1, ptr %4, align 8
    #dbg_declare(ptr %self.dbg.spill, !562, !DIExpression(), !564)
    #dbg_declare(ptr %self.dbg.spill, !565, !DIExpression(), !575)
  %5 = getelementptr inbounds { ptr, i64 }, ptr %slice.dbg.spill, i32 0, i32 0
  store ptr %slice.0, ptr %5, align 8
  %6 = getelementptr inbounds { ptr, i64 }, ptr %slice.dbg.spill, i32 0, i32 1
  store i64 %slice.1, ptr %6, align 8
    #dbg_declare(ptr %slice.dbg.spill, !563, !DIExpression(), !577)
  %_3 = icmp ugt i64 %self.0, %self.1, !dbg !578
  br i1 %_3, label %bb1, label %bb2, !dbg !578

bb2:                                              ; preds = %start
  %_9 = icmp ugt i64 %self.1, %slice.1, !dbg !579
  br i1 %_9, label %bb3, label %bb4, !dbg !579

bb1:                                              ; preds = %start
  call void @_ZN4core5slice5index22slice_index_order_fail17h2045503bd7776290E(i64 %self.0, i64 %self.1, ptr align 8 %0) #6, !dbg !580
  unreachable, !dbg !580

bb4:                                              ; preds = %bb2
  %7 = getelementptr inbounds { ptr, i64 }, ptr %slice.dbg.spill1, i32 0, i32 0, !dbg !581
  store ptr %slice.0, ptr %7, align 8, !dbg !581
  %8 = getelementptr inbounds { ptr, i64 }, ptr %slice.dbg.spill1, i32 0, i32 1, !dbg !581
  store i64 %slice.1, ptr %8, align 8, !dbg !581
    #dbg_declare(ptr %slice.dbg.spill1, !570, !DIExpression(), !582)
    #dbg_declare(ptr %slice.dbg.spill1, !583, !DIExpression(), !589)
  %9 = sub nuw i64 %self.1, %self.0, !dbg !591
  store i64 %9, ptr %2, align 8, !dbg !591
  %new_len = load i64, ptr %2, align 8, !dbg !591, !noundef !41
  store i64 %new_len, ptr %new_len.dbg.spill, align 8, !dbg !591
    #dbg_declare(ptr %new_len.dbg.spill, !573, !DIExpression(), !592)
  store ptr %slice.0, ptr %self.dbg.spill2, align 8, !dbg !593
    #dbg_declare(ptr %self.dbg.spill2, !594, !DIExpression(), !600)
    #dbg_declare(ptr %self.dbg.spill2, !602, !DIExpression(), !608)
  store i64 %self.0, ptr %count.dbg.spill, align 8, !dbg !610
    #dbg_declare(ptr %count.dbg.spill, !599, !DIExpression(), !611)
  store i64 %self.0, ptr %count.dbg.spill3, align 8, !dbg !612
    #dbg_declare(ptr %count.dbg.spill3, !607, !DIExpression(), !613)
  %10 = getelementptr inbounds float, ptr %slice.0, i64 %self.0, !dbg !614
  store ptr %10, ptr %1, align 8, !dbg !614
  %data = load ptr, ptr %1, align 8, !dbg !614, !noundef !41
  store ptr %data, ptr %data.dbg.spill, align 8, !dbg !614
    #dbg_declare(ptr %data.dbg.spill, !615, !DIExpression(), !619)
    #dbg_declare(ptr %data.dbg.spill, !621, !DIExpression(), !624)
  store i64 %new_len, ptr %len.dbg.spill, align 8, !dbg !626
    #dbg_declare(ptr %len.dbg.spill, !618, !DIExpression(), !627)
    #dbg_declare(ptr %len.dbg.spill, !628, !DIExpression(), !632)
  store ptr %data, ptr %data_address.dbg.spill, align 8, !dbg !634
    #dbg_declare(ptr %data_address.dbg.spill, !631, !DIExpression(), !635)
  store ptr %data, ptr %_30, align 8, !dbg !636
  %11 = getelementptr inbounds { ptr, i64 }, ptr %_30, i32 0, i32 1, !dbg !636
  store i64 %new_len, ptr %11, align 8, !dbg !636
  %12 = getelementptr inbounds { ptr, i64 }, ptr %_30, i32 0, i32 0, !dbg !637
  %13 = load ptr, ptr %12, align 8, !dbg !637, !noundef !41
  %14 = getelementptr inbounds { ptr, i64 }, ptr %_30, i32 0, i32 1, !dbg !637
  %15 = load i64, ptr %14, align 8, !dbg !637, !noundef !41
  %16 = getelementptr inbounds { ptr, i64 }, ptr %_29, i32 0, i32 0, !dbg !637
  store ptr %13, ptr %16, align 8, !dbg !637
  %17 = getelementptr inbounds { ptr, i64 }, ptr %_29, i32 0, i32 1, !dbg !637
  store i64 %15, ptr %17, align 8, !dbg !637
  %18 = getelementptr inbounds { ptr, i64 }, ptr %_29, i32 0, i32 0, !dbg !637
  %_15.0 = load ptr, ptr %18, align 8, !dbg !637, !noundef !41
  %19 = getelementptr inbounds { ptr, i64 }, ptr %_29, i32 0, i32 1, !dbg !637
  %_15.1 = load i64, ptr %19, align 8, !dbg !637, !noundef !41
  %20 = insertvalue { ptr, i64 } poison, ptr %_15.0, 0, !dbg !638
  %21 = insertvalue { ptr, i64 } %20, i64 %_15.1, 1, !dbg !638
  ret { ptr, i64 } %21, !dbg !638

bb3:                                              ; preds = %bb2
  call void @_ZN4core5slice5index24slice_end_index_len_fail17h63e54c65524702d3E(i64 %self.1, i64 %slice.1, ptr align 8 %0) #6, !dbg !639
  unreachable, !dbg !639
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @"_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17h2ee309bd7daa1ab5E"(ptr align 8 %self) unnamed_addr #1 !dbg !640 {
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
    #dbg_declare(ptr %self.dbg.spill, !643, !DIExpression(), !646)
    #dbg_declare(ptr %src, !647, !DIExpression(), !654)
  %_4 = getelementptr inbounds { i64, i64 }, ptr %self, i32 0, i32 1, !dbg !668
  %_2 = call zeroext i1 @"_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17h2f3602d4c0699498E"(ptr align 8 %self, ptr align 8 %_4), !dbg !669
  br i1 %_2, label %bb2, label %bb5, !dbg !669

bb5:                                              ; preds = %start
  store i64 0, ptr %0, align 8, !dbg !670
  br label %bb6, !dbg !671

bb2:                                              ; preds = %start
  store ptr %self, ptr %self.dbg.spill.i, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !672, !DIExpression(), !682)
  %1 = load i64, ptr %self, align 8, !dbg !684, !noundef !41
  %n = call i64 @"_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17ha8917451ce204b42E"(i64 %1, i64 1), !dbg !685
  store i64 %n, ptr %n.dbg.spill, align 8, !dbg !685
    #dbg_declare(ptr %n.dbg.spill, !644, !DIExpression(), !686)
  store ptr %self, ptr %dest.dbg.spill, align 8, !dbg !687
    #dbg_declare(ptr %dest.dbg.spill, !664, !DIExpression(), !688)
  store i64 %n, ptr %src.dbg.spill, align 8, !dbg !689
    #dbg_declare(ptr %src.dbg.spill, !665, !DIExpression(), !690)
  store ptr %self, ptr %src.dbg.spill1, align 8, !dbg !691
    #dbg_declare(ptr %src.dbg.spill1, !692, !DIExpression(), !698)
  %result = load i64, ptr %self, align 8, !dbg !700, !noundef !41
  store i64 %result, ptr %result.dbg.spill, align 8, !dbg !700
    #dbg_declare(ptr %result.dbg.spill, !666, !DIExpression(), !701)
  store ptr %self, ptr %dst.dbg.spill, align 8, !dbg !702
    #dbg_declare(ptr %dst.dbg.spill, !653, !DIExpression(), !703)
  store i64 %n, ptr %src, align 8, !dbg !704
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %self, ptr align 8 %src, i64 8, i1 false), !dbg !705
  %2 = getelementptr inbounds { i64, i64 }, ptr %0, i32 0, i32 1, !dbg !706
  store i64 %result, ptr %2, align 8, !dbg !706
  store i64 1, ptr %0, align 8, !dbg !706
  br label %bb6, !dbg !671

bb6:                                              ; preds = %bb2, %bb5
  %3 = getelementptr inbounds { i64, i64 }, ptr %0, i32 0, i32 0, !dbg !707
  %4 = load i64, ptr %3, align 8, !dbg !707, !range !150, !noundef !41
  %5 = getelementptr inbounds { i64, i64 }, ptr %0, i32 0, i32 1, !dbg !707
  %6 = load i64, ptr %5, align 8, !dbg !707
  %7 = insertvalue { i64, i64 } poison, i64 %4, 0, !dbg !707
  %8 = insertvalue { i64, i64 } %7, i64 %6, 1, !dbg !707
  ret { i64, i64 } %8, !dbg !707
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17h2f3602d4c0699498E"(ptr align 8 %self, ptr align 8 %other) unnamed_addr #1 !dbg !708 {
start:
  %other.dbg.spill = alloca ptr, align 8
  %self.dbg.spill = alloca ptr, align 8
  store ptr %self, ptr %self.dbg.spill, align 8
    #dbg_declare(ptr %self.dbg.spill, !714, !DIExpression(), !716)
  store ptr %other, ptr %other.dbg.spill, align 8
    #dbg_declare(ptr %other.dbg.spill, !715, !DIExpression(), !717)
  %_3 = load i64, ptr %self, align 8, !dbg !718, !noundef !41
  %_4 = load i64, ptr %other, align 8, !dbg !719, !noundef !41
  %0 = icmp ult i64 %_3, %_4, !dbg !718
  ret i1 %0, !dbg !720
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @"_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17ha8917451ce204b42E"(i64 %start1, i64 %n) unnamed_addr #1 !dbg !721 {
start:
  %0 = alloca i64, align 8
  %n.dbg.spill = alloca i64, align 8
  %start.dbg.spill = alloca i64, align 8
  store i64 %start1, ptr %start.dbg.spill, align 8
    #dbg_declare(ptr %start.dbg.spill, !724, !DIExpression(), !726)
    #dbg_declare(ptr %start.dbg.spill, !727, !DIExpression(), !731)
  store i64 %n, ptr %n.dbg.spill, align 8
    #dbg_declare(ptr %n.dbg.spill, !725, !DIExpression(), !733)
    #dbg_declare(ptr %n.dbg.spill, !730, !DIExpression(), !734)
  %1 = add nuw i64 %start1, %n, !dbg !735
  store i64 %1, ptr %0, align 8, !dbg !735
  %2 = load i64, ptr %0, align 8, !dbg !735, !noundef !41
  ret i64 %2, !dbg !736
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_ZN4core3cmp6min_by17hcb2c8982c64a6efdE(i64 %0, i64 %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !737 {
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
    #dbg_declare(ptr %v1, !744, !DIExpression(), !749)
    #dbg_declare(ptr %v2, !745, !DIExpression(), !750)
    #dbg_declare(ptr %compare.dbg.spill, !746, !DIExpression(), !751)
  store i8 1, ptr %_10, align 1, !dbg !752
  store i8 1, ptr %_9, align 1, !dbg !752
  store ptr %v1, ptr %_5, align 8, !dbg !752
  %4 = getelementptr inbounds { ptr, ptr }, ptr %_5, i32 0, i32 1, !dbg !752
  store ptr %v2, ptr %4, align 8, !dbg !752
  %5 = getelementptr inbounds { ptr, ptr }, ptr %_5, i32 0, i32 0, !dbg !752
  %6 = load ptr, ptr %5, align 8, !dbg !752, !nonnull !41, !align !753, !noundef !41
  %7 = getelementptr inbounds { ptr, ptr }, ptr %_5, i32 0, i32 1, !dbg !752
  %8 = load ptr, ptr %7, align 8, !dbg !752, !nonnull !41, !align !753, !noundef !41
  %9 = invoke i8 @_ZN4core3ops8function6FnOnce9call_once17hafcc39bb4f29a3d2E(ptr align 8 %6, ptr align 8 %8)
          to label %bb1 unwind label %cleanup, !dbg !752, !range !754

bb8:                                              ; preds = %cleanup
  br label %bb13, !dbg !755

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
  store i8 %9, ptr %_4, align 1, !dbg !752
  %_8 = load i8, ptr %_4, align 1, !dbg !752, !range !754, !noundef !41
  switch i8 %_8, label %bb3 [
    i8 -1, label %bb4
    i8 0, label %bb4
    i8 1, label %bb2
  ], !dbg !756

bb13:                                             ; preds = %bb8
  %15 = load i8, ptr %_10, align 1, !dbg !755, !range !141, !noundef !41
  %16 = trunc i8 %15 to i1, !dbg !755
  br i1 %16, label %bb12, label %bb9, !dbg !755

bb3:                                              ; preds = %bb1
  unreachable, !dbg !752

bb4:                                              ; preds = %bb1, %bb1
  store i8 0, ptr %_10, align 1, !dbg !757
  %17 = load i64, ptr %v1, align 8, !dbg !757, !noundef !41
  store i64 %17, ptr %3, align 8, !dbg !757
  br label %bb5, !dbg !757

bb2:                                              ; preds = %bb1
  store i8 0, ptr %_9, align 1, !dbg !758
  %18 = load i64, ptr %v2, align 8, !dbg !758, !noundef !41
  store i64 %18, ptr %3, align 8, !dbg !758
  br label %bb5, !dbg !758

bb5:                                              ; preds = %bb2, %bb4
  %19 = load i8, ptr %_9, align 1, !dbg !755, !range !141, !noundef !41
  %20 = trunc i8 %19 to i1, !dbg !755
  br i1 %20, label %bb10, label %bb6, !dbg !755

bb6:                                              ; preds = %bb10, %bb5
  %21 = load i8, ptr %_10, align 1, !dbg !755, !range !141, !noundef !41
  %22 = trunc i8 %21 to i1, !dbg !755
  br i1 %22, label %bb11, label %bb7, !dbg !755

bb10:                                             ; preds = %bb5
  br label %bb6, !dbg !755

bb9:                                              ; preds = %bb12, %bb13
  %23 = load ptr, ptr %2, align 8, !dbg !759, !noundef !41
  %24 = getelementptr inbounds { ptr, i32 }, ptr %2, i32 0, i32 1, !dbg !759
  %25 = load i32, ptr %24, align 8, !dbg !759, !noundef !41
  %26 = insertvalue { ptr, i32 } poison, ptr %23, 0, !dbg !759
  %27 = insertvalue { ptr, i32 } %26, i32 %25, 1, !dbg !759
  resume { ptr, i32 } %27, !dbg !759

bb12:                                             ; preds = %bb13
  br label %bb9, !dbg !755

bb7:                                              ; preds = %bb11, %bb6
  %28 = load i64, ptr %3, align 8, !dbg !760, !noundef !41
  ret i64 %28, !dbg !760

bb11:                                             ; preds = %bb6
  br label %bb7, !dbg !755
}

; Function Attrs: nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8 @_ZN4core3ops8function6FnOnce9call_once17hafcc39bb4f29a3d2E(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 !dbg !761 {
start:
  %_1.dbg.spill = alloca {}, align 1
  %_2 = alloca { ptr, ptr }, align 8
  store ptr %0, ptr %_2, align 8
  %2 = getelementptr inbounds { ptr, ptr }, ptr %_2, i32 0, i32 1
  store ptr %1, ptr %2, align 8
    #dbg_declare(ptr %_1.dbg.spill, !768, !DIExpression(), !777)
    #dbg_declare(ptr %_2, !769, !DIExpression(), !777)
  %3 = load ptr, ptr %_2, align 8, !dbg !777, !nonnull !41, !align !753, !noundef !41
  %4 = getelementptr inbounds { ptr, ptr }, ptr %_2, i32 0, i32 1, !dbg !777
  %5 = load ptr, ptr %4, align 8, !dbg !777, !nonnull !41, !align !753, !noundef !41
  %6 = call i8 @"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$usize$GT$3cmp17h36a84a6de0da93c9E"(ptr align 8 %3, ptr align 8 %5), !dbg !777, !range !754
  ret i8 %6, !dbg !777
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8 @"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$usize$GT$3cmp17h36a84a6de0da93c9E"(ptr align 8 %self, ptr align 8 %other) unnamed_addr #1 !dbg !778 {
start:
  %other.dbg.spill = alloca ptr, align 8
  %self.dbg.spill = alloca ptr, align 8
  %0 = alloca i8, align 1
  store ptr %self, ptr %self.dbg.spill, align 8
    #dbg_declare(ptr %self.dbg.spill, !781, !DIExpression(), !783)
  store ptr %other, ptr %other.dbg.spill, align 8
    #dbg_declare(ptr %other.dbg.spill, !782, !DIExpression(), !784)
  %_4 = load i64, ptr %self, align 8, !dbg !785, !noundef !41
  %_5 = load i64, ptr %other, align 8, !dbg !786, !noundef !41
  %_3 = icmp ult i64 %_4, %_5, !dbg !785
  br i1 %_3, label %bb1, label %bb2, !dbg !785

bb2:                                              ; preds = %start
  %_7 = load i64, ptr %self, align 8, !dbg !787, !noundef !41
  %_8 = load i64, ptr %other, align 8, !dbg !788, !noundef !41
  %_6 = icmp eq i64 %_7, %_8, !dbg !787
  br i1 %_6, label %bb3, label %bb4, !dbg !787

bb1:                                              ; preds = %start
  store i8 -1, ptr %0, align 1, !dbg !789
  br label %bb6, !dbg !790

bb6:                                              ; preds = %bb5, %bb1
  %1 = load i8, ptr %0, align 1, !dbg !791, !range !754, !noundef !41
  ret i8 %1, !dbg !791

bb4:                                              ; preds = %bb2
  store i8 1, ptr %0, align 1, !dbg !792
  br label %bb5, !dbg !793

bb3:                                              ; preds = %bb2
  store i8 0, ptr %0, align 1, !dbg !794
  br label %bb5, !dbg !793

bb5:                                              ; preds = %bb3, %bb4
  br label %bb6, !dbg !790
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @_ZN4core3cmp6max_by17h89f7a6c06c40c6b2E(i32 %0, i32 %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !795 {
start:
  %2 = alloca { ptr, i32 }, align 8
  %compare.dbg.spill = alloca {}, align 1
  %_10 = alloca i8, align 1
  %_9 = alloca i8, align 1
  %_5 = alloca { ptr, ptr }, align 8
  %_4 = alloca i8, align 1
  %3 = alloca i32, align 4
  %v2 = alloca i32, align 4
  %v1 = alloca i32, align 4
  store i32 %0, ptr %v1, align 4
  store i32 %1, ptr %v2, align 4
    #dbg_declare(ptr %v1, !803, !DIExpression(), !809)
    #dbg_declare(ptr %v2, !804, !DIExpression(), !810)
    #dbg_declare(ptr %compare.dbg.spill, !805, !DIExpression(), !811)
  store i8 1, ptr %_10, align 1, !dbg !812
  store i8 1, ptr %_9, align 1, !dbg !812
  store ptr %v1, ptr %_5, align 8, !dbg !812
  %4 = getelementptr inbounds { ptr, ptr }, ptr %_5, i32 0, i32 1, !dbg !812
  store ptr %v2, ptr %4, align 8, !dbg !812
  %5 = getelementptr inbounds { ptr, ptr }, ptr %_5, i32 0, i32 0, !dbg !812
  %6 = load ptr, ptr %5, align 8, !dbg !812, !nonnull !41, !align !813, !noundef !41
  %7 = getelementptr inbounds { ptr, ptr }, ptr %_5, i32 0, i32 1, !dbg !812
  %8 = load ptr, ptr %7, align 8, !dbg !812, !nonnull !41, !align !813, !noundef !41
  %9 = invoke i8 @_ZN4core3ops8function6FnOnce9call_once17h74e58f9869514295E(ptr align 4 %6, ptr align 4 %8)
          to label %bb1 unwind label %cleanup, !dbg !812, !range !754

bb8:                                              ; preds = %cleanup
  br label %bb13, !dbg !814

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
  store i8 %9, ptr %_4, align 1, !dbg !812
  %_8 = load i8, ptr %_4, align 1, !dbg !812, !range !754, !noundef !41
  switch i8 %_8, label %bb3 [
    i8 -1, label %bb4
    i8 0, label %bb4
    i8 1, label %bb2
  ], !dbg !815

bb13:                                             ; preds = %bb8
  %15 = load i8, ptr %_10, align 1, !dbg !814, !range !141, !noundef !41
  %16 = trunc i8 %15 to i1, !dbg !814
  br i1 %16, label %bb12, label %bb9, !dbg !814

bb3:                                              ; preds = %bb1
  unreachable, !dbg !812

bb4:                                              ; preds = %bb1, %bb1
  store i8 0, ptr %_9, align 1, !dbg !816
  %17 = load i32, ptr %v2, align 4, !dbg !816, !noundef !41
  store i32 %17, ptr %3, align 4, !dbg !816
  br label %bb5, !dbg !816

bb2:                                              ; preds = %bb1
  store i8 0, ptr %_10, align 1, !dbg !817
  %18 = load i32, ptr %v1, align 4, !dbg !817, !noundef !41
  store i32 %18, ptr %3, align 4, !dbg !817
  br label %bb5, !dbg !817

bb5:                                              ; preds = %bb2, %bb4
  %19 = load i8, ptr %_9, align 1, !dbg !814, !range !141, !noundef !41
  %20 = trunc i8 %19 to i1, !dbg !814
  br i1 %20, label %bb10, label %bb6, !dbg !814

bb6:                                              ; preds = %bb10, %bb5
  %21 = load i8, ptr %_10, align 1, !dbg !814, !range !141, !noundef !41
  %22 = trunc i8 %21 to i1, !dbg !814
  br i1 %22, label %bb11, label %bb7, !dbg !814

bb10:                                             ; preds = %bb5
  br label %bb6, !dbg !814

bb9:                                              ; preds = %bb12, %bb13
  %23 = load ptr, ptr %2, align 8, !dbg !818, !noundef !41
  %24 = getelementptr inbounds { ptr, i32 }, ptr %2, i32 0, i32 1, !dbg !818
  %25 = load i32, ptr %24, align 8, !dbg !818, !noundef !41
  %26 = insertvalue { ptr, i32 } poison, ptr %23, 0, !dbg !818
  %27 = insertvalue { ptr, i32 } %26, i32 %25, 1, !dbg !818
  resume { ptr, i32 } %27, !dbg !818

bb12:                                             ; preds = %bb13
  br label %bb9, !dbg !814

bb7:                                              ; preds = %bb11, %bb6
  %28 = load i32, ptr %3, align 4, !dbg !819, !noundef !41
  ret i32 %28, !dbg !819

bb11:                                             ; preds = %bb6
  br label %bb7, !dbg !814
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8 @_ZN4core3ops8function6FnOnce9call_once17h74e58f9869514295E(ptr align 4 %0, ptr align 4 %1) unnamed_addr #1 !dbg !820 {
start:
  %_1.dbg.spill = alloca {}, align 1
  %_2 = alloca { ptr, ptr }, align 8
  store ptr %0, ptr %_2, align 8
  %2 = getelementptr inbounds { ptr, ptr }, ptr %_2, i32 0, i32 1
  store ptr %1, ptr %2, align 8
    #dbg_declare(ptr %_1.dbg.spill, !824, !DIExpression(), !833)
    #dbg_declare(ptr %_2, !825, !DIExpression(), !833)
  %3 = load ptr, ptr %_2, align 8, !dbg !833, !nonnull !41, !align !813, !noundef !41
  %4 = getelementptr inbounds { ptr, ptr }, ptr %_2, i32 0, i32 1, !dbg !833
  %5 = load ptr, ptr %4, align 8, !dbg !833, !nonnull !41, !align !813, !noundef !41
  %6 = call i8 @"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17hebe48809fb923d82E"(ptr align 4 %3, ptr align 4 %5), !dbg !833, !range !754
  ret i8 %6, !dbg !833
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8 @"_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17hebe48809fb923d82E"(ptr align 4 %self, ptr align 4 %other) unnamed_addr #1 !dbg !834 {
start:
  %other.dbg.spill = alloca ptr, align 8
  %self.dbg.spill = alloca ptr, align 8
  %0 = alloca i8, align 1
  store ptr %self, ptr %self.dbg.spill, align 8
    #dbg_declare(ptr %self.dbg.spill, !837, !DIExpression(), !839)
  store ptr %other, ptr %other.dbg.spill, align 8
    #dbg_declare(ptr %other.dbg.spill, !838, !DIExpression(), !840)
  %_4 = load i32, ptr %self, align 4, !dbg !841, !noundef !41
  %_5 = load i32, ptr %other, align 4, !dbg !842, !noundef !41
  %_3 = icmp slt i32 %_4, %_5, !dbg !841
  br i1 %_3, label %bb1, label %bb2, !dbg !841

bb2:                                              ; preds = %start
  %_7 = load i32, ptr %self, align 4, !dbg !843, !noundef !41
  %_8 = load i32, ptr %other, align 4, !dbg !844, !noundef !41
  %_6 = icmp eq i32 %_7, %_8, !dbg !843
  br i1 %_6, label %bb3, label %bb4, !dbg !843

bb1:                                              ; preds = %start
  store i8 -1, ptr %0, align 1, !dbg !845
  br label %bb6, !dbg !846

bb6:                                              ; preds = %bb5, %bb1
  %1 = load i8, ptr %0, align 1, !dbg !847, !range !754, !noundef !41
  ret i8 %1, !dbg !847

bb4:                                              ; preds = %bb2
  store i8 1, ptr %0, align 1, !dbg !848
  br label %bb5, !dbg !849

bb3:                                              ; preds = %bb2
  store i8 0, ptr %0, align 1, !dbg !850
  br label %bb5, !dbg !849

bb5:                                              ; preds = %bb3, %bb4
  br label %bb6, !dbg !846
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_1() unnamed_addr #0 !dbg !851 {
start:
  %self.dbg.spill.i1 = alloca { ptr, i64 }, align 8
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %count.dbg.spill = alloca i32, align 4
  %expected_dest = alloca [2 x float], align 4
  %dest = alloca [2 x float], align 4
  %src = alloca [3 x float], align 4
  %0 = alloca i8, align 1
    #dbg_declare(ptr %src, !855, !DIExpression(), !869)
    #dbg_declare(ptr %dest, !862, !DIExpression(), !870)
    #dbg_declare(ptr %expected_dest, !867, !DIExpression(), !871)
  %1 = getelementptr inbounds [3 x float], ptr %src, i64 0, i64 0, !dbg !872
  store float 0x3FB99999A0000000, ptr %1, align 4, !dbg !872
  %2 = getelementptr inbounds [3 x float], ptr %src, i64 0, i64 1, !dbg !872
  store float 0x3FC99999A0000000, ptr %2, align 4, !dbg !872
  %3 = getelementptr inbounds [3 x float], ptr %src, i64 0, i64 2, !dbg !872
  store float 0x3FD3333340000000, ptr %3, align 4, !dbg !872
  store i32 1, ptr %count.dbg.spill, align 4, !dbg !873
    #dbg_declare(ptr %count.dbg.spill, !860, !DIExpression(), !874)
  %4 = getelementptr inbounds [2 x float], ptr %dest, i64 0, i64 0, !dbg !875
  %5 = getelementptr inbounds [2 x float], ptr %dest, i64 0, i64 0, !dbg !875
  %6 = getelementptr inbounds [2 x float], ptr %dest, i64 0, i64 2, !dbg !875
  br label %repeat_loop_header, !dbg !875

repeat_loop_header:                               ; preds = %repeat_loop_body, %start
  %7 = phi ptr [ %5, %start ], [ %9, %repeat_loop_body ]
  %8 = icmp ne ptr %7, %6
  br i1 %8, label %repeat_loop_body, label %repeat_loop_next

repeat_loop_body:                                 ; preds = %repeat_loop_header
  store float 0.000000e+00, ptr %7, align 4
  %9 = getelementptr inbounds float, ptr %7, i64 1
  br label %repeat_loop_header

repeat_loop_next:                                 ; preds = %repeat_loop_header
  store ptr %dest, ptr %self.dbg.spill.i, align 8
  %10 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 2, ptr %10, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !876, !DIExpression(), !883)
  store ptr %src, ptr %self.dbg.spill.i1, align 8
  %11 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i1, i32 0, i32 1
  store i64 3, ptr %11, align 8
    #dbg_declare(ptr %self.dbg.spill.i1, !885, !DIExpression(), !890)
  call void @tfm(ptr %dest, ptr %src, i32 1), !dbg !892
  %12 = getelementptr inbounds [2 x float], ptr %expected_dest, i64 0, i64 0, !dbg !893
  store float 0xBFD6AA3300000000, ptr %12, align 4, !dbg !893
  %13 = getelementptr inbounds [2 x float], ptr %expected_dest, i64 0, i64 1, !dbg !893
  store float 0x3FD3333340000000, ptr %13, align 4, !dbg !893
  %14 = getelementptr inbounds [2 x float], ptr %dest, i64 0, i64 0, !dbg !894
  %_13 = load float, ptr %14, align 4, !dbg !894, !noundef !41
  %_12 = fcmp oeq float %_13, 0xBFD6AA3300000000, !dbg !894
  br i1 %_12, label %bb5, label %bb4, !dbg !894

bb4:                                              ; preds = %repeat_loop_next
  store i8 0, ptr %0, align 1, !dbg !894
  br label %bb6, !dbg !894

bb5:                                              ; preds = %repeat_loop_next
  %15 = getelementptr inbounds [2 x float], ptr %dest, i64 0, i64 1, !dbg !895
  %_17 = load float, ptr %15, align 4, !dbg !895, !noundef !41
  %_16 = fcmp oeq float %_17, 0x3FD3333340000000, !dbg !895
  %16 = zext i1 %_16 to i8, !dbg !894
  store i8 %16, ptr %0, align 1, !dbg !894
  br label %bb6, !dbg !894

bb6:                                              ; preds = %bb5, %bb4
  %17 = load i8, ptr %0, align 1, !dbg !896, !range !141, !noundef !41
  %18 = trunc i8 %17 to i1, !dbg !896
  ret i1 %18, !dbg !896
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_2() unnamed_addr #0 !dbg !897 {
start:
  %self.dbg.spill.i1 = alloca { ptr, i64 }, align 8
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %count.dbg.spill = alloca i32, align 4
  %expected_dest = alloca [2 x float], align 4
  %dest = alloca [2 x float], align 4
  %src = alloca [3 x float], align 4
  %0 = alloca i8, align 1
    #dbg_declare(ptr %src, !899, !DIExpression(), !907)
    #dbg_declare(ptr %dest, !903, !DIExpression(), !908)
    #dbg_declare(ptr %expected_dest, !905, !DIExpression(), !909)
  %1 = getelementptr inbounds [3 x float], ptr %src, i64 0, i64 0, !dbg !910
  store float 0xC3E0BCF5C0000000, ptr %1, align 4, !dbg !910
  %2 = getelementptr inbounds [3 x float], ptr %src, i64 0, i64 1, !dbg !910
  store float 0x4133AE2D00000000, ptr %2, align 4, !dbg !910
  %3 = getelementptr inbounds [3 x float], ptr %src, i64 0, i64 2, !dbg !910
  store float 0x42BFCC9E20000000, ptr %3, align 4, !dbg !910
  store i32 1, ptr %count.dbg.spill, align 4, !dbg !911
    #dbg_declare(ptr %count.dbg.spill, !901, !DIExpression(), !912)
  %4 = getelementptr inbounds [2 x float], ptr %dest, i64 0, i64 0, !dbg !913
  %5 = getelementptr inbounds [2 x float], ptr %dest, i64 0, i64 0, !dbg !913
  %6 = getelementptr inbounds [2 x float], ptr %dest, i64 0, i64 2, !dbg !913
  br label %repeat_loop_header, !dbg !913

repeat_loop_header:                               ; preds = %repeat_loop_body, %start
  %7 = phi ptr [ %5, %start ], [ %9, %repeat_loop_body ]
  %8 = icmp ne ptr %7, %6
  br i1 %8, label %repeat_loop_body, label %repeat_loop_next

repeat_loop_body:                                 ; preds = %repeat_loop_header
  store float 0.000000e+00, ptr %7, align 4
  %9 = getelementptr inbounds float, ptr %7, i64 1
  br label %repeat_loop_header

repeat_loop_next:                                 ; preds = %repeat_loop_header
  store ptr %dest, ptr %self.dbg.spill.i, align 8
  %10 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 2, ptr %10, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !876, !DIExpression(), !914)
  store ptr %src, ptr %self.dbg.spill.i1, align 8
  %11 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i1, i32 0, i32 1
  store i64 3, ptr %11, align 8
    #dbg_declare(ptr %self.dbg.spill.i1, !885, !DIExpression(), !916)
  call void @tfm(ptr %dest, ptr %src, i32 1), !dbg !918
  %12 = getelementptr inbounds [2 x float], ptr %expected_dest, i64 0, i64 0, !dbg !919
  store float 0xC3E0BCF5C0000000, ptr %12, align 4, !dbg !919
  %13 = getelementptr inbounds [2 x float], ptr %expected_dest, i64 0, i64 1, !dbg !919
  store float 0x42BFCC9E20000000, ptr %13, align 4, !dbg !919
  %14 = getelementptr inbounds [2 x float], ptr %dest, i64 0, i64 0, !dbg !920
  %_13 = load float, ptr %14, align 4, !dbg !920, !noundef !41
  %_12 = fcmp oeq float %_13, 0xC3E0BCF5C0000000, !dbg !920
  br i1 %_12, label %bb5, label %bb4, !dbg !920

bb4:                                              ; preds = %repeat_loop_next
  store i8 0, ptr %0, align 1, !dbg !920
  br label %bb6, !dbg !920

bb5:                                              ; preds = %repeat_loop_next
  %15 = getelementptr inbounds [2 x float], ptr %dest, i64 0, i64 1, !dbg !921
  %_17 = load float, ptr %15, align 4, !dbg !921, !noundef !41
  %_16 = fcmp oeq float %_17, 0x42BFCC9E20000000, !dbg !921
  %16 = zext i1 %_16 to i8, !dbg !920
  store i8 %16, ptr %0, align 1, !dbg !920
  br label %bb6, !dbg !920

bb6:                                              ; preds = %bb5, %bb4
  %17 = load i8, ptr %0, align 1, !dbg !922, !range !141, !noundef !41
  %18 = trunc i8 %17 to i1, !dbg !922
  ret i1 %18, !dbg !922
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_3() unnamed_addr #0 !dbg !923 {
start:
  %self.dbg.spill.i1 = alloca { ptr, i64 }, align 8
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %count.dbg.spill = alloca i32, align 4
  %_15 = alloca i8, align 1
  %_14 = alloca i8, align 1
  %_13 = alloca i8, align 1
  %_12 = alloca i8, align 1
  %expected_dest = alloca [6 x float], align 4
  %dest = alloca [6 x float], align 4
  %src = alloca [9 x float], align 4
  %0 = alloca i8, align 1
    #dbg_declare(ptr %src, !925, !DIExpression(), !939)
    #dbg_declare(ptr %dest, !932, !DIExpression(), !940)
    #dbg_declare(ptr %expected_dest, !937, !DIExpression(), !941)
  %1 = getelementptr inbounds [9 x float], ptr %src, i64 0, i64 0, !dbg !942
  store float 0xC3E0BCF5C0000000, ptr %1, align 4, !dbg !942
  %2 = getelementptr inbounds [9 x float], ptr %src, i64 0, i64 1, !dbg !942
  store float 0x4133AE2D00000000, ptr %2, align 4, !dbg !942
  %3 = getelementptr inbounds [9 x float], ptr %src, i64 0, i64 2, !dbg !942
  store float 0x42BFCC9E20000000, ptr %3, align 4, !dbg !942
  %4 = getelementptr inbounds [9 x float], ptr %src, i64 0, i64 3, !dbg !942
  store float 0xC3E0BCF5C0000000, ptr %4, align 4, !dbg !942
  %5 = getelementptr inbounds [9 x float], ptr %src, i64 0, i64 4, !dbg !942
  store float 0x4133AE2D00000000, ptr %5, align 4, !dbg !942
  %6 = getelementptr inbounds [9 x float], ptr %src, i64 0, i64 5, !dbg !942
  store float 0x42BFCC9E20000000, ptr %6, align 4, !dbg !942
  %7 = getelementptr inbounds [9 x float], ptr %src, i64 0, i64 6, !dbg !942
  store float 0xC3E0BCF5C0000000, ptr %7, align 4, !dbg !942
  %8 = getelementptr inbounds [9 x float], ptr %src, i64 0, i64 7, !dbg !942
  store float 0x4133AE2D00000000, ptr %8, align 4, !dbg !942
  %9 = getelementptr inbounds [9 x float], ptr %src, i64 0, i64 8, !dbg !942
  store float 0x42BFCC9E20000000, ptr %9, align 4, !dbg !942
  store i32 3, ptr %count.dbg.spill, align 4, !dbg !943
    #dbg_declare(ptr %count.dbg.spill, !930, !DIExpression(), !944)
  %10 = getelementptr inbounds [6 x float], ptr %dest, i64 0, i64 0, !dbg !945
  %11 = getelementptr inbounds [6 x float], ptr %dest, i64 0, i64 0, !dbg !945
  %12 = getelementptr inbounds [6 x float], ptr %dest, i64 0, i64 6, !dbg !945
  br label %repeat_loop_header, !dbg !945

repeat_loop_header:                               ; preds = %repeat_loop_body, %start
  %13 = phi ptr [ %11, %start ], [ %15, %repeat_loop_body ]
  %14 = icmp ne ptr %13, %12
  br i1 %14, label %repeat_loop_body, label %repeat_loop_next

repeat_loop_body:                                 ; preds = %repeat_loop_header
  store float 0.000000e+00, ptr %13, align 4
  %15 = getelementptr inbounds float, ptr %13, i64 1
  br label %repeat_loop_header

repeat_loop_next:                                 ; preds = %repeat_loop_header
  store ptr %dest, ptr %self.dbg.spill.i, align 8
  %16 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 6, ptr %16, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !876, !DIExpression(), !946)
  store ptr %src, ptr %self.dbg.spill.i1, align 8
  %17 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i1, i32 0, i32 1
  store i64 9, ptr %17, align 8
    #dbg_declare(ptr %self.dbg.spill.i1, !885, !DIExpression(), !948)
  call void @tfm(ptr %dest, ptr %src, i32 3), !dbg !950
  %18 = getelementptr inbounds [6 x float], ptr %expected_dest, i64 0, i64 0, !dbg !951
  store float 0xC3E0BCF5C0000000, ptr %18, align 4, !dbg !951
  %19 = getelementptr inbounds [6 x float], ptr %expected_dest, i64 0, i64 1, !dbg !951
  store float 0x42BFCC9E20000000, ptr %19, align 4, !dbg !951
  %20 = getelementptr inbounds [6 x float], ptr %expected_dest, i64 0, i64 2, !dbg !951
  store float 0xC3E0BCF5C0000000, ptr %20, align 4, !dbg !951
  %21 = getelementptr inbounds [6 x float], ptr %expected_dest, i64 0, i64 3, !dbg !951
  store float 0x42BFCC9E20000000, ptr %21, align 4, !dbg !951
  %22 = getelementptr inbounds [6 x float], ptr %expected_dest, i64 0, i64 4, !dbg !951
  store float 0xC3E0BCF5C0000000, ptr %22, align 4, !dbg !951
  %23 = getelementptr inbounds [6 x float], ptr %expected_dest, i64 0, i64 5, !dbg !951
  store float 0x42BFCC9E20000000, ptr %23, align 4, !dbg !951
  %24 = getelementptr inbounds [6 x float], ptr %dest, i64 0, i64 0, !dbg !952
  %_17 = load float, ptr %24, align 4, !dbg !952, !noundef !41
  %_16 = fcmp oeq float %_17, 0xC3E0BCF5C0000000, !dbg !952
  br i1 %_16, label %bb17, label %bb16, !dbg !952

bb16:                                             ; preds = %repeat_loop_next
  store i8 0, ptr %_15, align 1, !dbg !952
  br label %bb18, !dbg !952

bb17:                                             ; preds = %repeat_loop_next
  %25 = getelementptr inbounds [6 x float], ptr %dest, i64 0, i64 1, !dbg !953
  %_21 = load float, ptr %25, align 4, !dbg !953, !noundef !41
  %_20 = fcmp oeq float %_21, 0x42BFCC9E20000000, !dbg !953
  %26 = zext i1 %_20 to i8, !dbg !952
  store i8 %26, ptr %_15, align 1, !dbg !952
  br label %bb18, !dbg !952

bb18:                                             ; preds = %bb17, %bb16
  %27 = load i8, ptr %_15, align 1, !dbg !952, !range !141, !noundef !41
  %28 = trunc i8 %27 to i1, !dbg !952
  br i1 %28, label %bb14, label %bb13, !dbg !952

bb13:                                             ; preds = %bb18
  store i8 0, ptr %_14, align 1, !dbg !952
  br label %bb15, !dbg !952

bb14:                                             ; preds = %bb18
  %29 = getelementptr inbounds [6 x float], ptr %dest, i64 0, i64 2, !dbg !954
  %_25 = load float, ptr %29, align 4, !dbg !954, !noundef !41
  %_24 = fcmp oeq float %_25, 0xC3E0BCF5C0000000, !dbg !954
  %30 = zext i1 %_24 to i8, !dbg !952
  store i8 %30, ptr %_14, align 1, !dbg !952
  br label %bb15, !dbg !952

bb15:                                             ; preds = %bb14, %bb13
  %31 = load i8, ptr %_14, align 1, !dbg !952, !range !141, !noundef !41
  %32 = trunc i8 %31 to i1, !dbg !952
  br i1 %32, label %bb11, label %bb10, !dbg !952

bb10:                                             ; preds = %bb15
  store i8 0, ptr %_13, align 1, !dbg !952
  br label %bb12, !dbg !952

bb11:                                             ; preds = %bb15
  %33 = getelementptr inbounds [6 x float], ptr %dest, i64 0, i64 3, !dbg !955
  %_29 = load float, ptr %33, align 4, !dbg !955, !noundef !41
  %_28 = fcmp oeq float %_29, 0x42BFCC9E20000000, !dbg !955
  %34 = zext i1 %_28 to i8, !dbg !952
  store i8 %34, ptr %_13, align 1, !dbg !952
  br label %bb12, !dbg !952

bb12:                                             ; preds = %bb11, %bb10
  %35 = load i8, ptr %_13, align 1, !dbg !952, !range !141, !noundef !41
  %36 = trunc i8 %35 to i1, !dbg !952
  br i1 %36, label %bb8, label %bb7, !dbg !952

bb7:                                              ; preds = %bb12
  store i8 0, ptr %_12, align 1, !dbg !952
  br label %bb9, !dbg !952

bb8:                                              ; preds = %bb12
  %37 = getelementptr inbounds [6 x float], ptr %dest, i64 0, i64 4, !dbg !956
  %_33 = load float, ptr %37, align 4, !dbg !956, !noundef !41
  %_32 = fcmp oeq float %_33, 0xC3E0BCF5C0000000, !dbg !956
  %38 = zext i1 %_32 to i8, !dbg !952
  store i8 %38, ptr %_12, align 1, !dbg !952
  br label %bb9, !dbg !952

bb9:                                              ; preds = %bb8, %bb7
  %39 = load i8, ptr %_12, align 1, !dbg !952, !range !141, !noundef !41
  %40 = trunc i8 %39 to i1, !dbg !952
  br i1 %40, label %bb5, label %bb4, !dbg !952

bb4:                                              ; preds = %bb9
  store i8 0, ptr %0, align 1, !dbg !952
  br label %bb6, !dbg !952

bb5:                                              ; preds = %bb9
  %41 = getelementptr inbounds [6 x float], ptr %dest, i64 0, i64 5, !dbg !957
  %_37 = load float, ptr %41, align 4, !dbg !957, !noundef !41
  %_36 = fcmp oeq float %_37, 0x42BFCC9E20000000, !dbg !957
  %42 = zext i1 %_36 to i8, !dbg !952
  store i8 %42, ptr %0, align 1, !dbg !952
  br label %bb6, !dbg !952

bb6:                                              ; preds = %bb5, %bb4
  %43 = load i8, ptr %0, align 1, !dbg !958, !range !141, !noundef !41
  %44 = trunc i8 %43 to i1, !dbg !958
  ret i1 %44, !dbg !958
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_4() unnamed_addr #0 !dbg !959 {
start:
  %self.dbg.spill.i6 = alloca { ptr, i64 }, align 8
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %count.dbg.spill = alloca i32, align 4
  %i = alloca i64, align 8
  %expected_dest = alloca [14 x float], align 4
  %dest = alloca [14 x float], align 4
  %src = alloca [21 x float], align 4
  %0 = alloca i8, align 1
    #dbg_declare(ptr %0, !975, !DIExpression(), !979)
    #dbg_declare(ptr %src, !961, !DIExpression(), !980)
    #dbg_declare(ptr %dest, !968, !DIExpression(), !981)
    #dbg_declare(ptr %expected_dest, !973, !DIExpression(), !982)
    #dbg_declare(ptr %i, !977, !DIExpression(), !983)
  %1 = getelementptr inbounds [21 x float], ptr %src, i64 0, i64 0, !dbg !984
  %2 = getelementptr inbounds [21 x float], ptr %src, i64 0, i64 0, !dbg !984
  %3 = getelementptr inbounds [21 x float], ptr %src, i64 0, i64 21, !dbg !984
  br label %repeat_loop_header, !dbg !984

repeat_loop_header:                               ; preds = %repeat_loop_body, %start
  %4 = phi ptr [ %2, %start ], [ %6, %repeat_loop_body ]
  %5 = icmp ne ptr %4, %3
  br i1 %5, label %repeat_loop_body, label %repeat_loop_next

repeat_loop_body:                                 ; preds = %repeat_loop_header
  store float 0.000000e+00, ptr %4, align 4
  %6 = getelementptr inbounds float, ptr %4, i64 1
  br label %repeat_loop_header

repeat_loop_next:                                 ; preds = %repeat_loop_header
  store i32 7, ptr %count.dbg.spill, align 4, !dbg !985
    #dbg_declare(ptr %count.dbg.spill, !966, !DIExpression(), !986)
  %7 = getelementptr inbounds [14 x float], ptr %dest, i64 0, i64 0, !dbg !987
  %8 = getelementptr inbounds [14 x float], ptr %dest, i64 0, i64 0, !dbg !987
  %9 = getelementptr inbounds [14 x float], ptr %dest, i64 0, i64 14, !dbg !987
  br label %repeat_loop_header1, !dbg !987

repeat_loop_header1:                              ; preds = %repeat_loop_body2, %repeat_loop_next
  %10 = phi ptr [ %8, %repeat_loop_next ], [ %12, %repeat_loop_body2 ]
  %11 = icmp ne ptr %10, %9
  br i1 %11, label %repeat_loop_body2, label %repeat_loop_next3

repeat_loop_body2:                                ; preds = %repeat_loop_header1
  store float 0.000000e+00, ptr %10, align 4
  %12 = getelementptr inbounds float, ptr %10, i64 1
  br label %repeat_loop_header1

repeat_loop_next3:                                ; preds = %repeat_loop_header1
  store ptr %dest, ptr %self.dbg.spill.i, align 8
  %13 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 14, ptr %13, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !876, !DIExpression(), !988)
  store ptr %src, ptr %self.dbg.spill.i6, align 8
  %14 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i6, i32 0, i32 1
  store i64 21, ptr %14, align 8
    #dbg_declare(ptr %self.dbg.spill.i6, !885, !DIExpression(), !990)
  call void @tfm(ptr %dest, ptr %src, i32 7), !dbg !992
  %15 = getelementptr inbounds [14 x float], ptr %expected_dest, i64 0, i64 0, !dbg !993
  store float 0.000000e+00, ptr %15, align 4, !dbg !993
  %16 = getelementptr inbounds [14 x float], ptr %expected_dest, i64 0, i64 1, !dbg !993
  store float 0.000000e+00, ptr %16, align 4, !dbg !993
  %17 = getelementptr inbounds [14 x float], ptr %expected_dest, i64 0, i64 2, !dbg !993
  store float 0.000000e+00, ptr %17, align 4, !dbg !993
  %18 = getelementptr inbounds [14 x float], ptr %expected_dest, i64 0, i64 3, !dbg !993
  store float 0.000000e+00, ptr %18, align 4, !dbg !993
  %19 = getelementptr inbounds [14 x float], ptr %expected_dest, i64 0, i64 4, !dbg !993
  store float 0.000000e+00, ptr %19, align 4, !dbg !993
  %20 = getelementptr inbounds [14 x float], ptr %expected_dest, i64 0, i64 5, !dbg !993
  store float 0.000000e+00, ptr %20, align 4, !dbg !993
  %21 = getelementptr inbounds [14 x float], ptr %expected_dest, i64 0, i64 6, !dbg !993
  store float 0.000000e+00, ptr %21, align 4, !dbg !993
  %22 = getelementptr inbounds [14 x float], ptr %expected_dest, i64 0, i64 7, !dbg !993
  store float 0.000000e+00, ptr %22, align 4, !dbg !993
  %23 = getelementptr inbounds [14 x float], ptr %expected_dest, i64 0, i64 8, !dbg !993
  store float 0.000000e+00, ptr %23, align 4, !dbg !993
  %24 = getelementptr inbounds [14 x float], ptr %expected_dest, i64 0, i64 9, !dbg !993
  store float 0.000000e+00, ptr %24, align 4, !dbg !993
  %25 = getelementptr inbounds [14 x float], ptr %expected_dest, i64 0, i64 10, !dbg !993
  store float 0.000000e+00, ptr %25, align 4, !dbg !993
  %26 = getelementptr inbounds [14 x float], ptr %expected_dest, i64 0, i64 11, !dbg !993
  store float 0.000000e+00, ptr %26, align 4, !dbg !993
  %27 = getelementptr inbounds [14 x float], ptr %expected_dest, i64 0, i64 12, !dbg !993
  store float 0.000000e+00, ptr %27, align 4, !dbg !993
  %28 = getelementptr inbounds [14 x float], ptr %expected_dest, i64 0, i64 13, !dbg !993
  store float 0.000000e+00, ptr %28, align 4, !dbg !993
  store i8 1, ptr %0, align 1, !dbg !994
  store i64 0, ptr %i, align 8, !dbg !995
  br label %bb4, !dbg !996

bb4:                                              ; preds = %bb10, %repeat_loop_next3
  %_14 = load i64, ptr %i, align 8, !dbg !997, !noundef !41
  %_13 = icmp ult i64 %_14, 14, !dbg !997
  br i1 %_13, label %bb5, label %bb11, !dbg !997

bb11:                                             ; preds = %bb4
  %29 = load i8, ptr %0, align 1, !dbg !998, !range !141, !noundef !41
  %30 = trunc i8 %29 to i1, !dbg !998
  ret i1 %30, !dbg !998

bb5:                                              ; preds = %bb4
  %_17 = load i64, ptr %i, align 8, !dbg !999, !noundef !41
  %_19 = icmp ult i64 %_17, 14, !dbg !1000
  %31 = call i1 @llvm.expect.i1(i1 %_19, i1 true), !dbg !1000
  br i1 %31, label %bb6, label %panic, !dbg !1000

bb6:                                              ; preds = %bb5
  %32 = getelementptr inbounds [14 x float], ptr %dest, i64 0, i64 %_17, !dbg !1000
  %_16 = load float, ptr %32, align 4, !dbg !1000, !noundef !41
  %_21 = load i64, ptr %i, align 8, !dbg !1001, !noundef !41
  %_23 = icmp ult i64 %_21, 14, !dbg !1002
  %33 = call i1 @llvm.expect.i1(i1 %_23, i1 true), !dbg !1002
  br i1 %33, label %bb7, label %panic4, !dbg !1002

panic:                                            ; preds = %bb5
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %_17, i64 14, ptr align 8 @alloc_ee4fe487f026a7bb69e65b1a3cfeb8f4) #6, !dbg !1000
  unreachable, !dbg !1000

bb7:                                              ; preds = %bb6
  %34 = getelementptr inbounds [14 x float], ptr %expected_dest, i64 0, i64 %_21, !dbg !1002
  %_20 = load float, ptr %34, align 4, !dbg !1002, !noundef !41
  %_15 = fcmp une float %_16, %_20, !dbg !1000
  br i1 %_15, label %bb8, label %bb9, !dbg !1000

panic4:                                           ; preds = %bb6
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %_21, i64 14, ptr align 8 @alloc_2b82cbee872ea59b95e2d1fb38dd45cb) #6, !dbg !1002
  unreachable, !dbg !1002

bb9:                                              ; preds = %bb8, %bb7
  %35 = load i64, ptr %i, align 8, !dbg !1003, !noundef !41
  %36 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %35, i64 1), !dbg !1003
  %_24.0 = extractvalue { i64, i1 } %36, 0, !dbg !1003
  %_24.1 = extractvalue { i64, i1 } %36, 1, !dbg !1003
  %37 = call i1 @llvm.expect.i1(i1 %_24.1, i1 false), !dbg !1003
  br i1 %37, label %panic5, label %bb10, !dbg !1003

bb8:                                              ; preds = %bb7
  store i8 0, ptr %0, align 1, !dbg !1004
  br label %bb9, !dbg !1005

bb10:                                             ; preds = %bb9
  store i64 %_24.0, ptr %i, align 8, !dbg !1003
  br label %bb4, !dbg !996

panic5:                                           ; preds = %bb9
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.1, i64 28, ptr align 8 @alloc_b39fdbc25c217b5391e133e483a3855d) #6, !dbg !1003
  unreachable, !dbg !1003
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_5() unnamed_addr #0 !dbg !1006 {
start:
  %self.dbg.spill.i1 = alloca { ptr, i64 }, align 8
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %count.dbg.spill = alloca i32, align 4
  %_13 = alloca i8, align 1
  %_12 = alloca i8, align 1
  %expected_dest = alloca [4 x float], align 4
  %dest = alloca [4 x float], align 4
  %src = alloca [6 x float], align 4
  %0 = alloca i8, align 1
    #dbg_declare(ptr %src, !1008, !DIExpression(), !1019)
    #dbg_declare(ptr %dest, !1012, !DIExpression(), !1020)
    #dbg_declare(ptr %expected_dest, !1017, !DIExpression(), !1021)
  %1 = getelementptr inbounds [6 x float], ptr %src, i64 0, i64 0, !dbg !1022
  store float 0xBFD3333340000000, ptr %1, align 4, !dbg !1022
  %2 = getelementptr inbounds [6 x float], ptr %src, i64 0, i64 1, !dbg !1022
  store float 0xBFC99999A0000000, ptr %2, align 4, !dbg !1022
  %3 = getelementptr inbounds [6 x float], ptr %src, i64 0, i64 2, !dbg !1022
  store float 0xBFB99999A0000000, ptr %3, align 4, !dbg !1022
  %4 = getelementptr inbounds [6 x float], ptr %src, i64 0, i64 3, !dbg !1022
  store float 0x3FB99999A0000000, ptr %4, align 4, !dbg !1022
  %5 = getelementptr inbounds [6 x float], ptr %src, i64 0, i64 4, !dbg !1022
  store float 0x3FC99999A0000000, ptr %5, align 4, !dbg !1022
  %6 = getelementptr inbounds [6 x float], ptr %src, i64 0, i64 5, !dbg !1022
  store float 0x3FD3333340000000, ptr %6, align 4, !dbg !1022
  store i32 2, ptr %count.dbg.spill, align 4, !dbg !1023
    #dbg_declare(ptr %count.dbg.spill, !1010, !DIExpression(), !1024)
  %7 = getelementptr inbounds [4 x float], ptr %dest, i64 0, i64 0, !dbg !1025
  %8 = getelementptr inbounds [4 x float], ptr %dest, i64 0, i64 0, !dbg !1025
  %9 = getelementptr inbounds [4 x float], ptr %dest, i64 0, i64 4, !dbg !1025
  br label %repeat_loop_header, !dbg !1025

repeat_loop_header:                               ; preds = %repeat_loop_body, %start
  %10 = phi ptr [ %8, %start ], [ %12, %repeat_loop_body ]
  %11 = icmp ne ptr %10, %9
  br i1 %11, label %repeat_loop_body, label %repeat_loop_next

repeat_loop_body:                                 ; preds = %repeat_loop_header
  store float 0.000000e+00, ptr %10, align 4
  %12 = getelementptr inbounds float, ptr %10, i64 1
  br label %repeat_loop_header

repeat_loop_next:                                 ; preds = %repeat_loop_header
  store ptr %dest, ptr %self.dbg.spill.i, align 8
  %13 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 4, ptr %13, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !876, !DIExpression(), !1026)
  store ptr %src, ptr %self.dbg.spill.i1, align 8
  %14 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i1, i32 0, i32 1
  store i64 6, ptr %14, align 8
    #dbg_declare(ptr %self.dbg.spill.i1, !885, !DIExpression(), !1028)
  call void @tfm(ptr %dest, ptr %src, i32 2), !dbg !1030
  %15 = getelementptr inbounds [4 x float], ptr %expected_dest, i64 0, i64 0, !dbg !1031
  store float 0xBFC4B5F980000000, ptr %15, align 4, !dbg !1031
  %16 = getelementptr inbounds [4 x float], ptr %expected_dest, i64 0, i64 1, !dbg !1031
  store float 0xBFB99999A0000000, ptr %16, align 4, !dbg !1031
  %17 = getelementptr inbounds [4 x float], ptr %expected_dest, i64 0, i64 2, !dbg !1031
  store float 0xBFD6AA3300000000, ptr %17, align 4, !dbg !1031
  %18 = getelementptr inbounds [4 x float], ptr %expected_dest, i64 0, i64 3, !dbg !1031
  store float 0x3FD3333340000000, ptr %18, align 4, !dbg !1031
  %19 = getelementptr inbounds [4 x float], ptr %dest, i64 0, i64 0, !dbg !1032
  %_15 = load float, ptr %19, align 4, !dbg !1032, !noundef !41
  %_14 = fcmp oeq float %_15, 0xBFC4B5F980000000, !dbg !1032
  br i1 %_14, label %bb11, label %bb10, !dbg !1032

bb10:                                             ; preds = %repeat_loop_next
  store i8 0, ptr %_13, align 1, !dbg !1032
  br label %bb12, !dbg !1032

bb11:                                             ; preds = %repeat_loop_next
  %20 = getelementptr inbounds [4 x float], ptr %dest, i64 0, i64 1, !dbg !1033
  %_19 = load float, ptr %20, align 4, !dbg !1033, !noundef !41
  %_18 = fcmp oeq float %_19, 0xBFB99999A0000000, !dbg !1033
  %21 = zext i1 %_18 to i8, !dbg !1032
  store i8 %21, ptr %_13, align 1, !dbg !1032
  br label %bb12, !dbg !1032

bb12:                                             ; preds = %bb11, %bb10
  %22 = load i8, ptr %_13, align 1, !dbg !1032, !range !141, !noundef !41
  %23 = trunc i8 %22 to i1, !dbg !1032
  br i1 %23, label %bb8, label %bb7, !dbg !1032

bb7:                                              ; preds = %bb12
  store i8 0, ptr %_12, align 1, !dbg !1032
  br label %bb9, !dbg !1032

bb8:                                              ; preds = %bb12
  %24 = getelementptr inbounds [4 x float], ptr %dest, i64 0, i64 2, !dbg !1034
  %_23 = load float, ptr %24, align 4, !dbg !1034, !noundef !41
  %_22 = fcmp oeq float %_23, 0xBFD6AA3300000000, !dbg !1034
  %25 = zext i1 %_22 to i8, !dbg !1032
  store i8 %25, ptr %_12, align 1, !dbg !1032
  br label %bb9, !dbg !1032

bb9:                                              ; preds = %bb8, %bb7
  %26 = load i8, ptr %_12, align 1, !dbg !1032, !range !141, !noundef !41
  %27 = trunc i8 %26 to i1, !dbg !1032
  br i1 %27, label %bb5, label %bb4, !dbg !1032

bb4:                                              ; preds = %bb9
  store i8 0, ptr %0, align 1, !dbg !1032
  br label %bb6, !dbg !1032

bb5:                                              ; preds = %bb9
  %28 = getelementptr inbounds [4 x float], ptr %dest, i64 0, i64 3, !dbg !1035
  %_27 = load float, ptr %28, align 4, !dbg !1035, !noundef !41
  %_26 = fcmp oeq float %_27, 0x3FD3333340000000, !dbg !1035
  %29 = zext i1 %_26 to i8, !dbg !1032
  store i8 %29, ptr %0, align 1, !dbg !1032
  br label %bb6, !dbg !1032

bb6:                                              ; preds = %bb5, %bb4
  %30 = load i8, ptr %0, align 1, !dbg !1036, !range !141, !noundef !41
  %31 = trunc i8 %30 to i1, !dbg !1036
  ret i1 %31, !dbg !1036
}

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!12, !13, !14, !15}

!0 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !1, producer: "clang LLVM (rustc version 1.70.0-nightly (84dd17b56 2023-04-14))", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false)
!1 = !DIFile(filename: "lib.rs/@/36z0w657mrcudrsc", directory: "/crisp-rust-outputs/B01_organic/tfm_lib/translated_rust")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Ordering", scope: !5, file: !4, baseType: !7, size: 8, align: 8, flags: DIFlagEnumClass, elements: !8)
!4 = !DIFile(filename: "<unknown>", directory: "")
!5 = !DINamespace(name: "cmp", scope: !6)
!6 = !DINamespace(name: "core", scope: null)
!7 = !DIBasicType(name: "i8", size: 8, encoding: DW_ATE_signed)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "Less", value: -1)
!10 = !DIEnumerator(name: "Equal", value: 0)
!11 = !DIEnumerator(name: "Greater", value: 1)
!12 = !{i32 8, !"PIC Level", i32 2}
!13 = !{i32 2, !"RtLibUseGOT", i32 1}
!14 = !{i32 2, !"Dwarf Version", i32 4}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = distinct !DISubprogram(name: "tfm_ffi", linkageName: "tfm", scope: !18, file: !17, line: 30, type: !21, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !41, retainedNodes: !27)
!17 = !DIFile(filename: "src/lib.rs", directory: "/crisp-rust-outputs/B01_organic/tfm_lib/translated_rust", checksumkind: CSK_MD5, checksum: "f2ed07926f326df72556d9ff89489a7d")
!18 = !DINamespace(name: "lib", scope: !19)
!19 = !DINamespace(name: "src", scope: !20)
!20 = !DINamespace(name: "tfm_lib", scope: null)
!21 = !DISubroutineType(types: !22)
!22 = !{null, !23, !25, !26}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut f32", baseType: !24, size: 64, align: 64, dwarfAddressSpace: 0)
!24 = !DIBasicType(name: "f32", size: 32, encoding: DW_ATE_float)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const f32", baseType: !24, size: 64, align: 64, dwarfAddressSpace: 0)
!26 = !DIBasicType(name: "i32", size: 32, encoding: DW_ATE_signed)
!27 = !{!28, !29, !30, !31, !34, !42}
!28 = !DILocalVariable(name: "dest", arg: 1, scope: !16, file: !17, line: 31, type: !23)
!29 = !DILocalVariable(name: "src", arg: 2, scope: !16, file: !17, line: 32, type: !25)
!30 = !DILocalVariable(name: "count", arg: 3, scope: !16, file: !17, line: 33, type: !26)
!31 = !DILocalVariable(name: "count_usize", scope: !32, file: !17, line: 35, type: !33, align: 8)
!32 = distinct !DILexicalBlock(scope: !16, file: !17, line: 35, column: 5)
!33 = !DIBasicType(name: "usize", size: 64, encoding: DW_ATE_unsigned)
!34 = !DILocalVariable(name: "dest", scope: !35, file: !17, line: 36, type: !36, align: 8)
!35 = distinct !DILexicalBlock(scope: !32, file: !17, line: 36, column: 5)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "&mut [f32]", file: !4, size: 128, align: 64, elements: !37, templateParams: !41, identifier: "a9fe21d6fa3092c2cb2855c7d48c366d")
!37 = !{!38, !40}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !36, file: !4, baseType: !39, size: 64, align: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64, dwarfAddressSpace: 0)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !36, file: !4, baseType: !33, size: 64, align: 64, offset: 64)
!41 = !{}
!42 = !DILocalVariable(name: "src", scope: !43, file: !17, line: 37, type: !44, align: 8)
!43 = distinct !DILexicalBlock(scope: !35, file: !17, line: 37, column: 5)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "&[f32]", file: !4, size: 128, align: 64, elements: !45, templateParams: !41, identifier: "f8c75a6f6fa2cfa780c3894767ae5bdb")
!45 = !{!46, !47}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !44, file: !4, baseType: !39, size: 64, align: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !44, file: !4, baseType: !33, size: 64, align: 64, offset: 64)
!48 = !DILocation(line: 31, column: 5, scope: !16)
!49 = !DILocation(line: 32, column: 5, scope: !16)
!50 = !DILocation(line: 33, column: 5, scope: !16)
!51 = !DILocation(line: 35, column: 23, scope: !16)
!52 = !DILocation(line: 35, column: 9, scope: !32)
!53 = !DILocation(line: 36, column: 56, scope: !32)
!54 = !DILocation(line: 36, column: 16, scope: !32)
!55 = !DILocation(line: 36, column: 9, scope: !35)
!56 = !DILocation(line: 37, column: 50, scope: !35)
!57 = !DILocation(line: 37, column: 15, scope: !35)
!58 = !DILocation(line: 37, column: 9, scope: !43)
!59 = !DILocation(line: 38, column: 5, scope: !43)
!60 = !DILocation(line: 39, column: 2, scope: !16)
!61 = distinct !DISubprogram(name: "max<i32>", linkageName: "_ZN4core3cmp3Ord3max17hac9d5fc93f2f690eE", scope: !63, file: !62, line: 799, type: !64, scopeLine: 799, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !69, retainedNodes: !66)
!62 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/cmp.rs", directory: "", checksumkind: CSK_MD5, checksum: "1600eb58139fc5bc9fc1d10b55c4e0c1")
!63 = !DINamespace(name: "Ord", scope: !5)
!64 = !DISubroutineType(types: !65)
!65 = !{!26, !26, !26}
!66 = !{!67, !68}
!67 = !DILocalVariable(name: "self", arg: 1, scope: !61, file: !62, line: 799, type: !26)
!68 = !DILocalVariable(name: "other", arg: 2, scope: !61, file: !62, line: 799, type: !26)
!69 = !{!70}
!70 = !DITemplateTypeParameter(name: "Self", type: !26)
!71 = !DILocation(line: 799, column: 12, scope: !61)
!72 = !DILocation(line: 799, column: 18, scope: !61)
!73 = !DILocation(line: 804, column: 9, scope: !61)
!74 = !DILocation(line: 805, column: 6, scope: !61)
!75 = distinct !DISubprogram(name: "saturating_mul", linkageName: "_ZN4core3num23_$LT$impl$u20$usize$GT$14saturating_mul17ha95f1534954266deE", scope: !77, file: !76, line: 1116, type: !79, scopeLine: 1116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !41, retainedNodes: !81)
!76 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/num/uint_macros.rs", directory: "", checksumkind: CSK_MD5, checksum: "b2a733f80e3cd43066f918bdafc87bd0")
!77 = !DINamespace(name: "{impl#11}", scope: !78)
!78 = !DINamespace(name: "num", scope: !6)
!79 = !DISubroutineType(types: !80)
!80 = !{!33, !33, !33}
!81 = !{!82, !83, !84}
!82 = !DILocalVariable(name: "self", arg: 1, scope: !75, file: !76, line: 1116, type: !33)
!83 = !DILocalVariable(name: "rhs", arg: 2, scope: !75, file: !76, line: 1116, type: !33)
!84 = !DILocalVariable(name: "x", scope: !85, file: !76, line: 1118, type: !33, align: 8)
!85 = distinct !DILexicalBlock(scope: !75, file: !76, line: 1118, column: 17)
!86 = !DILocation(line: 1116, column: 37, scope: !75)
!87 = !DILocalVariable(name: "self", arg: 1, scope: !88, file: !76, line: 576, type: !33)
!88 = distinct !DISubprogram(name: "checked_mul", linkageName: "_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17hdf612c5ffc9137e6E", scope: !77, file: !76, line: 576, type: !89, scopeLine: 576, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !41, retainedNodes: !106)
!89 = !DISubroutineType(types: !90)
!90 = !{!91, !33, !33}
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<usize>", scope: !92, file: !4, size: 128, align: 64, elements: !93, templateParams: !41, identifier: "b17de5dc2d457f8dce2303437d5e4e98")
!92 = !DINamespace(name: "option", scope: !6)
!93 = !{!94}
!94 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !91, file: !4, size: 128, align: 64, elements: !95, templateParams: !41, identifier: "a0efaaf7efdca478bc2c7a6ba9e35ba1", discriminator: !104)
!95 = !{!96, !100}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !94, file: !4, baseType: !97, size: 128, align: 64, extraData: i64 0)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !91, file: !4, size: 128, align: 64, elements: !41, templateParams: !98, identifier: "d9e649f4c7d5b1429d931d66c43390e")
!98 = !{!99}
!99 = !DITemplateTypeParameter(name: "T", type: !33)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !94, file: !4, baseType: !101, size: 128, align: 64, extraData: i64 1)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !91, file: !4, size: 128, align: 64, elements: !102, templateParams: !98, identifier: "a60d11814afcef06411361a374d9c4d2")
!102 = !{!103}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !101, file: !4, baseType: !33, size: 64, align: 64, offset: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, scope: !91, file: !4, baseType: !105, size: 64, align: 64, flags: DIFlagArtificial)
!105 = !DIBasicType(name: "u64", size: 64, encoding: DW_ATE_unsigned)
!106 = !{!87, !107, !108, !110}
!107 = !DILocalVariable(name: "rhs", arg: 2, scope: !88, file: !76, line: 576, type: !33)
!108 = !DILocalVariable(name: "a", scope: !109, file: !76, line: 577, type: !33, align: 8)
!109 = distinct !DILexicalBlock(scope: !88, file: !76, line: 577, column: 13)
!110 = !DILocalVariable(name: "b", scope: !109, file: !76, line: 577, type: !111, align: 1)
!111 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!112 = !DILocation(line: 576, column: 34, scope: !88, inlinedAt: !113)
!113 = !DILocation(line: 1117, column: 24, scope: !75)
!114 = !DILocalVariable(name: "self", arg: 1, scope: !115, file: !76, line: 1702, type: !33)
!115 = distinct !DISubprogram(name: "overflowing_mul", linkageName: "_ZN4core3num23_$LT$impl$u20$usize$GT$15overflowing_mul17h42660a952cc1f184E", scope: !77, file: !76, line: 1702, type: !116, scopeLine: 1702, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !41, retainedNodes: !122)
!116 = !DISubroutineType(types: !117)
!117 = !{!118, !33, !33}
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "(usize, bool)", file: !4, size: 128, align: 64, elements: !119, templateParams: !41, identifier: "4030f8452435be378048c6d8b59c8539")
!119 = !{!120, !121}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !118, file: !4, baseType: !33, size: 64, align: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !118, file: !4, baseType: !111, size: 8, align: 8, offset: 64)
!122 = !{!114, !123, !124, !126}
!123 = !DILocalVariable(name: "rhs", arg: 2, scope: !115, file: !76, line: 1702, type: !33)
!124 = !DILocalVariable(name: "a", scope: !125, file: !76, line: 1703, type: !105, align: 8)
!125 = distinct !DILexicalBlock(scope: !115, file: !76, line: 1703, column: 13)
!126 = !DILocalVariable(name: "b", scope: !125, file: !76, line: 1703, type: !111, align: 1)
!127 = !DILocation(line: 1702, column: 38, scope: !115, inlinedAt: !128)
!128 = !DILocation(line: 577, column: 31, scope: !88, inlinedAt: !113)
!129 = !DILocation(line: 1116, column: 43, scope: !75)
!130 = !DILocation(line: 576, column: 40, scope: !88, inlinedAt: !113)
!131 = !DILocation(line: 1702, column: 44, scope: !115, inlinedAt: !128)
!132 = !DILocation(line: 1703, column: 26, scope: !115, inlinedAt: !128)
!133 = !DILocation(line: 1703, column: 18, scope: !115, inlinedAt: !128)
!134 = !DILocation(line: 1703, column: 18, scope: !125, inlinedAt: !128)
!135 = !DILocation(line: 1703, column: 21, scope: !115, inlinedAt: !128)
!136 = !DILocation(line: 1703, column: 21, scope: !125, inlinedAt: !128)
!137 = !DILocation(line: 1704, column: 13, scope: !125, inlinedAt: !128)
!138 = !DILocation(line: 577, column: 18, scope: !88, inlinedAt: !113)
!139 = !DILocation(line: 577, column: 18, scope: !109, inlinedAt: !113)
!140 = !DILocation(line: 577, column: 21, scope: !88, inlinedAt: !113)
!141 = !{i8 0, i8 2}
!142 = !DILocation(line: 577, column: 21, scope: !109, inlinedAt: !113)
!143 = !DILocation(line: 25, column: 9, scope: !144, inlinedAt: !113)
!144 = !DILexicalBlockFile(scope: !109, file: !145, discriminator: 0)
!145 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/num/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "a7ba011b8e003e67bcc4ed42200ecd38")
!146 = !DILocation(line: 578, column: 42, scope: !109, inlinedAt: !113)
!147 = !DILocation(line: 578, column: 13, scope: !109, inlinedAt: !113)
!148 = !DILocation(line: 578, column: 30, scope: !109, inlinedAt: !113)
!149 = !DILocation(line: 1117, column: 19, scope: !75)
!150 = !{i64 0, i64 2}
!151 = !DILocation(line: 1117, column: 13, scope: !75)
!152 = !DILocation(line: 1119, column: 25, scope: !75)
!153 = !DILocation(line: 1118, column: 22, scope: !75)
!154 = !DILocation(line: 1118, column: 22, scope: !85)
!155 = !DILocation(line: 1118, column: 28, scope: !85)
!156 = !DILocation(line: 1118, column: 28, scope: !75)
!157 = !DILocation(line: 1121, column: 10, scope: !75)
!158 = distinct !DISubprogram(name: "from_raw_parts_mut<f32>", linkageName: "_ZN4core5slice3raw18from_raw_parts_mut17ha44e24eddc883233E", scope: !160, file: !159, line: 137, type: !162, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !167, retainedNodes: !164)
!159 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/slice/raw.rs", directory: "", checksumkind: CSK_MD5, checksum: "4e9e8b780584cc248c586456197d9cf5")
!160 = !DINamespace(name: "raw", scope: !161)
!161 = !DINamespace(name: "slice", scope: !6)
!162 = !DISubroutineType(types: !163)
!163 = !{!36, !23, !33}
!164 = !{!165, !166}
!165 = !DILocalVariable(name: "data", arg: 1, scope: !158, file: !159, line: 137, type: !23)
!166 = !DILocalVariable(name: "len", arg: 2, scope: !158, file: !159, line: 137, type: !33)
!167 = !{!168}
!168 = !DITemplateTypeParameter(name: "T", type: !24)
!169 = !DILocation(line: 137, column: 47, scope: !158)
!170 = !DILocalVariable(name: "data", arg: 1, scope: !171, file: !172, line: 765, type: !23)
!171 = distinct !DISubprogram(name: "slice_from_raw_parts_mut<f32>", linkageName: "_ZN4core3ptr24slice_from_raw_parts_mut17hd200ec8c7c39d892E", scope: !173, file: !172, line: 765, type: !174, scopeLine: 765, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !167, retainedNodes: !180)
!172 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/ptr/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "4b0ac29df94a7dc1bf2bc7efca5e253a")
!173 = !DINamespace(name: "ptr", scope: !6)
!174 = !DISubroutineType(types: !175)
!175 = !{!176, !23, !33}
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "*mut [f32]", file: !4, size: 128, align: 64, elements: !177, templateParams: !41, identifier: "ab40b59d4b99edf4abebcd50da9304d4")
!177 = !{!178, !179}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !176, file: !4, baseType: !39, size: 64, align: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !176, file: !4, baseType: !33, size: 64, align: 64, offset: 64)
!180 = !{!170, !181}
!181 = !DILocalVariable(name: "len", arg: 2, scope: !171, file: !172, line: 765, type: !33)
!182 = !DILocation(line: 765, column: 42, scope: !171, inlinedAt: !183)
!183 = !DILocation(line: 145, column: 15, scope: !158)
!184 = !DILocalVariable(name: "self", arg: 1, scope: !185, file: !186, line: 57, type: !23)
!185 = distinct !DISubprogram(name: "cast<f32, ()>", linkageName: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4cast17h17aa23564979706fE", scope: !187, file: !186, line: 57, type: !189, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !194, retainedNodes: !193)
!186 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/ptr/mut_ptr.rs", directory: "", checksumkind: CSK_MD5, checksum: "11087a90ad8f3b9862444e143466697a")
!187 = !DINamespace(name: "{impl#0}", scope: !188)
!188 = !DINamespace(name: "mut_ptr", scope: !173)
!189 = !DISubroutineType(types: !190)
!190 = !{!191, !23}
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut ()", baseType: !192, size: 64, align: 64, dwarfAddressSpace: 0)
!192 = !DIBasicType(name: "()", encoding: DW_ATE_unsigned)
!193 = !{!184}
!194 = !{!168, !195}
!195 = !DITemplateTypeParameter(name: "U", type: !192)
!196 = !DILocation(line: 57, column: 26, scope: !185, inlinedAt: !197)
!197 = !DILocation(line: 766, column: 29, scope: !171, inlinedAt: !183)
!198 = !DILocation(line: 137, column: 61, scope: !158)
!199 = !DILocation(line: 765, column: 56, scope: !171, inlinedAt: !183)
!200 = !DILocalVariable(name: "metadata", arg: 2, scope: !201, file: !202, line: 130, type: !33)
!201 = distinct !DISubprogram(name: "from_raw_parts_mut<[f32]>", linkageName: "_ZN4core3ptr8metadata18from_raw_parts_mut17h77b4d57cdef6ab5eE", scope: !203, file: !202, line: 128, type: !204, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !167, retainedNodes: !206)
!202 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/ptr/metadata.rs", directory: "", checksumkind: CSK_MD5, checksum: "1e1a461bde75de7a93357ca7e628f393")
!203 = !DINamespace(name: "metadata", scope: !173)
!204 = !DISubroutineType(types: !205)
!205 = !{!176, !191, !33}
!206 = !{!207, !200}
!207 = !DILocalVariable(name: "data_address", arg: 1, scope: !201, file: !202, line: 129, type: !191)
!208 = !DILocation(line: 130, column: 5, scope: !201, inlinedAt: !209)
!209 = !DILocation(line: 766, column: 5, scope: !171, inlinedAt: !183)
!210 = !DILocation(line: 58, column: 9, scope: !185, inlinedAt: !197)
!211 = !DILocation(line: 129, column: 5, scope: !201, inlinedAt: !209)
!212 = !DILocation(line: 135, column: 36, scope: !201, inlinedAt: !209)
!213 = !DILocation(line: 135, column: 14, scope: !201, inlinedAt: !209)
!214 = !DILocation(line: 147, column: 2, scope: !158)
!215 = distinct !DISubprogram(name: "from_raw_parts<f32>", linkageName: "_ZN4core5slice3raw14from_raw_parts17h24007b28a01c9179E", scope: !160, file: !159, line: 92, type: !216, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !167, retainedNodes: !218)
!216 = !DISubroutineType(types: !217)
!217 = !{!44, !25, !33}
!218 = !{!219, !220}
!219 = !DILocalVariable(name: "data", arg: 1, scope: !215, file: !159, line: 92, type: !25)
!220 = !DILocalVariable(name: "len", arg: 2, scope: !215, file: !159, line: 92, type: !33)
!221 = !DILocation(line: 92, column: 43, scope: !215)
!222 = !DILocalVariable(name: "data", arg: 1, scope: !223, file: !172, line: 733, type: !25)
!223 = distinct !DISubprogram(name: "slice_from_raw_parts<f32>", linkageName: "_ZN4core3ptr20slice_from_raw_parts17h0edf5e8f570a2e42E", scope: !173, file: !172, line: 733, type: !224, scopeLine: 733, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !167, retainedNodes: !230)
!224 = !DISubroutineType(types: !225)
!225 = !{!226, !25, !33}
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "*const [f32]", file: !4, size: 128, align: 64, elements: !227, templateParams: !41, identifier: "4ebd3bece4b2cace3e385f1461136d75")
!227 = !{!228, !229}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !226, file: !4, baseType: !39, size: 64, align: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !226, file: !4, baseType: !33, size: 64, align: 64, offset: 64)
!230 = !{!222, !231}
!231 = !DILocalVariable(name: "len", arg: 2, scope: !223, file: !172, line: 733, type: !33)
!232 = !DILocation(line: 733, column: 38, scope: !223, inlinedAt: !233)
!233 = !DILocation(line: 100, column: 11, scope: !215)
!234 = !DILocalVariable(name: "self", arg: 1, scope: !235, file: !236, line: 58, type: !25)
!235 = distinct !DISubprogram(name: "cast<f32, ()>", linkageName: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17hd8b506b81549e527E", scope: !237, file: !236, line: 58, type: !239, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !194, retainedNodes: !242)
!236 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/ptr/const_ptr.rs", directory: "", checksumkind: CSK_MD5, checksum: "2a21946c6980740609ff35bdd2bfdb1c")
!237 = !DINamespace(name: "{impl#0}", scope: !238)
!238 = !DINamespace(name: "const_ptr", scope: !173)
!239 = !DISubroutineType(types: !240)
!240 = !{!241, !25}
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const ()", baseType: !192, size: 64, align: 64, dwarfAddressSpace: 0)
!242 = !{!234}
!243 = !DILocation(line: 58, column: 26, scope: !235, inlinedAt: !244)
!244 = !DILocation(line: 734, column: 25, scope: !223, inlinedAt: !233)
!245 = !DILocation(line: 92, column: 59, scope: !215)
!246 = !DILocation(line: 733, column: 54, scope: !223, inlinedAt: !233)
!247 = !DILocalVariable(name: "metadata", arg: 2, scope: !248, file: !202, line: 113, type: !33)
!248 = distinct !DISubprogram(name: "from_raw_parts<[f32]>", linkageName: "_ZN4core3ptr8metadata14from_raw_parts17h76a44eae964f45d8E", scope: !203, file: !202, line: 111, type: !249, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !167, retainedNodes: !251)
!249 = !DISubroutineType(types: !250)
!250 = !{!226, !241, !33}
!251 = !{!252, !247}
!252 = !DILocalVariable(name: "data_address", arg: 1, scope: !248, file: !202, line: 112, type: !241)
!253 = !DILocation(line: 113, column: 5, scope: !248, inlinedAt: !254)
!254 = !DILocation(line: 734, column: 5, scope: !223, inlinedAt: !233)
!255 = !DILocation(line: 59, column: 9, scope: !235, inlinedAt: !244)
!256 = !DILocation(line: 112, column: 5, scope: !248, inlinedAt: !254)
!257 = !DILocation(line: 118, column: 36, scope: !248, inlinedAt: !254)
!258 = !DILocation(line: 118, column: 14, scope: !248, inlinedAt: !254)
!259 = !DILocation(line: 102, column: 2, scope: !215)
!260 = distinct !DISubprogram(name: "tfm", linkageName: "_ZN7tfm_lib3src3lib3tfm17hb908a2a2bc05bec9E", scope: !18, file: !17, line: 1, type: !261, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !41, retainedNodes: !263)
!261 = !DISubroutineType(types: !262)
!262 = !{null, !36, !44, !26}
!263 = !{!264, !265, !266, !267, !269, !271, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305}
!264 = !DILocalVariable(name: "dest", arg: 1, scope: !260, file: !17, line: 1, type: !36)
!265 = !DILocalVariable(name: "src", arg: 2, scope: !260, file: !17, line: 1, type: !44)
!266 = !DILocalVariable(name: "count", arg: 3, scope: !260, file: !17, line: 1, type: !26)
!267 = !DILocalVariable(name: "count", scope: !268, file: !17, line: 2, type: !33, align: 8)
!268 = distinct !DILexicalBlock(scope: !260, file: !17, line: 2, column: 5)
!269 = !DILocalVariable(name: "n", scope: !270, file: !17, line: 3, type: !33, align: 8)
!270 = distinct !DILexicalBlock(scope: !268, file: !17, line: 3, column: 5)
!271 = !DILocalVariable(name: "iter", scope: !272, file: !17, line: 5, type: !273, align: 8)
!272 = distinct !DILexicalBlock(scope: !270, file: !17, line: 5, column: 5)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Range<usize>", scope: !274, file: !4, size: 128, align: 64, elements: !276, templateParams: !279, identifier: "b01c4dff50019c623f2ca4609ab20f0a")
!274 = !DINamespace(name: "range", scope: !275)
!275 = !DINamespace(name: "ops", scope: !6)
!276 = !{!277, !278}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !273, file: !4, baseType: !33, size: 64, align: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !273, file: !4, baseType: !33, size: 64, align: 64, offset: 64)
!279 = !{!280}
!280 = !DITemplateTypeParameter(name: "Idx", type: !33)
!281 = !DILocalVariable(name: "i", scope: !282, file: !17, line: 5, type: !33, align: 8)
!282 = distinct !DILexicalBlock(scope: !272, file: !17, line: 5, column: 19)
!283 = !DILocalVariable(name: "s", scope: !284, file: !17, line: 6, type: !44, align: 8)
!284 = distinct !DILexicalBlock(scope: !282, file: !17, line: 6, column: 9)
!285 = !DILocalVariable(name: "d", scope: !286, file: !17, line: 7, type: !36, align: 8)
!286 = distinct !DILexicalBlock(scope: !284, file: !17, line: 7, column: 9)
!287 = !DILocalVariable(name: "dx2", scope: !288, file: !17, line: 10, type: !24, align: 4)
!288 = distinct !DILexicalBlock(scope: !286, file: !17, line: 10, column: 13)
!289 = !DILocalVariable(name: "dy2", scope: !290, file: !17, line: 11, type: !24, align: 4)
!290 = distinct !DILexicalBlock(scope: !288, file: !17, line: 11, column: 13)
!291 = !DILocalVariable(name: "dxy", scope: !292, file: !17, line: 12, type: !24, align: 4)
!292 = distinct !DILexicalBlock(scope: !290, file: !17, line: 12, column: 13)
!293 = !DILocalVariable(name: "sqd", scope: !294, file: !17, line: 13, type: !24, align: 4)
!294 = distinct !DILexicalBlock(scope: !292, file: !17, line: 13, column: 13)
!295 = !DILocalVariable(name: "lambda", scope: !296, file: !17, line: 14, type: !24, align: 4)
!296 = distinct !DILexicalBlock(scope: !294, file: !17, line: 14, column: 13)
!297 = !DILocalVariable(name: "dy2", scope: !298, file: !17, line: 18, type: !24, align: 4)
!298 = distinct !DILexicalBlock(scope: !286, file: !17, line: 18, column: 13)
!299 = !DILocalVariable(name: "dx2", scope: !300, file: !17, line: 19, type: !24, align: 4)
!300 = distinct !DILexicalBlock(scope: !298, file: !17, line: 19, column: 13)
!301 = !DILocalVariable(name: "dxy", scope: !302, file: !17, line: 20, type: !24, align: 4)
!302 = distinct !DILexicalBlock(scope: !300, file: !17, line: 20, column: 13)
!303 = !DILocalVariable(name: "sqd", scope: !304, file: !17, line: 21, type: !24, align: 4)
!304 = distinct !DILexicalBlock(scope: !302, file: !17, line: 21, column: 13)
!305 = !DILocalVariable(name: "lambda", scope: !306, file: !17, line: 22, type: !24, align: 4)
!306 = distinct !DILexicalBlock(scope: !304, file: !17, line: 22, column: 13)
!307 = !DILocation(line: 1, column: 12, scope: !260)
!308 = !DILocation(line: 1, column: 30, scope: !260)
!309 = !DILocation(line: 1, column: 43, scope: !260)
!310 = !DILocation(line: 5, column: 14, scope: !272)
!311 = !DILocation(line: 2, column: 17, scope: !260)
!312 = !DILocation(line: 2, column: 9, scope: !268)
!313 = !DILocation(line: 3, column: 23, scope: !268)
!314 = !DILocation(line: 3, column: 13, scope: !268)
!315 = !DILocation(line: 3, column: 43, scope: !268)
!316 = !DILocation(line: 3, column: 9, scope: !270)
!317 = !DILocation(line: 5, column: 14, scope: !270)
!318 = !DILocation(line: 5, column: 5, scope: !272)
!319 = !DILocation(line: 27, column: 2, scope: !260)
!320 = !DILocation(line: 5, column: 9, scope: !272)
!321 = !DILocation(line: 5, column: 9, scope: !282)
!322 = !DILocation(line: 6, column: 22, scope: !282)
!323 = !DILocation(line: 6, column: 29, scope: !282)
!324 = !DILocation(line: 6, column: 18, scope: !282)
!325 = !DILocation(line: 6, column: 17, scope: !282)
!326 = !DILocation(line: 6, column: 13, scope: !284)
!327 = !DILocation(line: 7, column: 27, scope: !284)
!328 = !DILocation(line: 7, column: 34, scope: !284)
!329 = !DILocation(line: 7, column: 22, scope: !284)
!330 = !DILocation(line: 7, column: 17, scope: !284)
!331 = !DILocation(line: 7, column: 13, scope: !286)
!332 = !DILocation(line: 9, column: 12, scope: !286)
!333 = !DILocation(line: 9, column: 19, scope: !286)
!334 = !DILocation(line: 18, column: 23, scope: !286)
!335 = !DILocation(line: 10, column: 23, scope: !286)
!336 = !DILocation(line: 10, column: 17, scope: !288)
!337 = !DILocation(line: 11, column: 23, scope: !288)
!338 = !DILocation(line: 11, column: 17, scope: !290)
!339 = !DILocation(line: 12, column: 23, scope: !290)
!340 = !DILocation(line: 12, column: 17, scope: !292)
!341 = !DILocation(line: 13, column: 23, scope: !292)
!342 = !DILocation(line: 13, column: 35, scope: !292)
!343 = !DILocation(line: 13, column: 56, scope: !292)
!344 = !DILocation(line: 13, column: 68, scope: !292)
!345 = !DILocation(line: 13, column: 17, scope: !294)
!346 = !DILocation(line: 14, column: 36, scope: !294)
!347 = !DILocation(line: 14, column: 48, scope: !294)
!348 = !DILocation(line: 14, column: 35, scope: !294)
!349 = !DILocation(line: 14, column: 26, scope: !294)
!350 = !DILocation(line: 14, column: 17, scope: !296)
!351 = !DILocation(line: 15, column: 13, scope: !296)
!352 = !DILocation(line: 16, column: 13, scope: !296)
!353 = !DILocation(line: 9, column: 9, scope: !286)
!354 = !DILocation(line: 18, column: 17, scope: !298)
!355 = !DILocation(line: 19, column: 23, scope: !298)
!356 = !DILocation(line: 19, column: 17, scope: !300)
!357 = !DILocation(line: 20, column: 23, scope: !300)
!358 = !DILocation(line: 20, column: 17, scope: !302)
!359 = !DILocation(line: 21, column: 23, scope: !302)
!360 = !DILocation(line: 21, column: 35, scope: !302)
!361 = !DILocation(line: 21, column: 56, scope: !302)
!362 = !DILocation(line: 21, column: 68, scope: !302)
!363 = !DILocation(line: 21, column: 17, scope: !304)
!364 = !DILocation(line: 22, column: 36, scope: !304)
!365 = !DILocation(line: 22, column: 48, scope: !304)
!366 = !DILocation(line: 22, column: 35, scope: !304)
!367 = !DILocation(line: 22, column: 26, scope: !304)
!368 = !DILocation(line: 22, column: 17, scope: !306)
!369 = !DILocation(line: 23, column: 13, scope: !306)
!370 = !DILocation(line: 24, column: 13, scope: !306)
!371 = distinct !DISubprogram(name: "min<usize>", linkageName: "_ZN4core3cmp3Ord3min17had85a050e015c93aE", scope: !63, file: !62, line: 820, type: !79, scopeLine: 820, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !375, retainedNodes: !372)
!372 = !{!373, !374}
!373 = !DILocalVariable(name: "self", arg: 1, scope: !371, file: !62, line: 820, type: !33)
!374 = !DILocalVariable(name: "other", arg: 2, scope: !371, file: !62, line: 820, type: !33)
!375 = !{!376}
!376 = !DITemplateTypeParameter(name: "Self", type: !33)
!377 = !DILocation(line: 820, column: 12, scope: !371)
!378 = !DILocation(line: 820, column: 18, scope: !371)
!379 = !DILocation(line: 825, column: 9, scope: !371)
!380 = !DILocation(line: 826, column: 6, scope: !371)
!381 = distinct !DISubprogram(name: "into_iter<core::ops::range::Range<usize>>", linkageName: "_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h4a2372f10929c463E", scope: !383, file: !382, line: 272, type: !387, scopeLine: 272, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !391, retainedNodes: !389)
!382 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/iter/traits/collect.rs", directory: "", checksumkind: CSK_MD5, checksum: "697d559cdba63f105535b8b53d6ea422")
!383 = !DINamespace(name: "{impl#0}", scope: !384)
!384 = !DINamespace(name: "collect", scope: !385)
!385 = !DINamespace(name: "traits", scope: !386)
!386 = !DINamespace(name: "iter", scope: !6)
!387 = !DISubroutineType(types: !388)
!388 = !{!273, !273}
!389 = !{!390}
!390 = !DILocalVariable(name: "self", arg: 1, scope: !381, file: !382, line: 272, type: !273)
!391 = !{!392}
!392 = !DITemplateTypeParameter(name: "I", type: !273)
!393 = !DILocation(line: 272, column: 18, scope: !381)
!394 = !DILocation(line: 274, column: 6, scope: !381)
!395 = distinct !DISubprogram(name: "next<usize>", linkageName: "_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h0b94592bcb4c2ddbE", scope: !397, file: !396, line: 710, type: !399, scopeLine: 710, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !404, retainedNodes: !402)
!396 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/iter/range.rs", directory: "", checksumkind: CSK_MD5, checksum: "3b797d7135735e151bb7112e46eae892")
!397 = !DINamespace(name: "{impl#3}", scope: !398)
!398 = !DINamespace(name: "range", scope: !386)
!399 = !DISubroutineType(types: !400)
!400 = !{!91, !401}
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::ops::range::Range<usize>", baseType: !273, size: 64, align: 64, dwarfAddressSpace: 0)
!402 = !{!403}
!403 = !DILocalVariable(name: "self", arg: 1, scope: !395, file: !396, line: 710, type: !401)
!404 = !{!405}
!405 = !DITemplateTypeParameter(name: "A", type: !33)
!406 = !DILocation(line: 710, column: 13, scope: !395)
!407 = !DILocation(line: 711, column: 9, scope: !395)
!408 = !DILocation(line: 712, column: 6, scope: !395)
!409 = distinct !DISubprogram(name: "index<f32, core::ops::range::Range<usize>>", linkageName: "_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17hbd175deddb34bf65E", scope: !411, file: !410, line: 18, type: !413, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !433, retainedNodes: !430)
!410 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/slice/index.rs", directory: "", checksumkind: CSK_MD5, checksum: "1350c165f4aa6e79d8fe4fa0de29c328")
!411 = !DINamespace(name: "{impl#0}", scope: !412)
!412 = !DINamespace(name: "index", scope: !161)
!413 = !DISubroutineType(types: !414)
!414 = !{!44, !44, !273, !415}
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::panic::location::Location", baseType: !416, size: 64, align: 64, dwarfAddressSpace: 0)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Location", scope: !417, file: !4, size: 192, align: 64, elements: !419, templateParams: !41, identifier: "2dffe35ce6e614c7231bda0a859f9fe2")
!417 = !DINamespace(name: "location", scope: !418)
!418 = !DINamespace(name: "panic", scope: !6)
!419 = !{!420, !427, !429}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !416, file: !4, baseType: !421, size: 128, align: 64)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "&str", file: !4, size: 128, align: 64, elements: !422, templateParams: !41, identifier: "857c99401054bcaa39f98e6e0c6d74b")
!422 = !{!423, !426}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !421, file: !4, baseType: !424, size: 64, align: 64)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64, align: 64, dwarfAddressSpace: 0)
!425 = !DIBasicType(name: "u8", size: 8, encoding: DW_ATE_unsigned)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !421, file: !4, baseType: !33, size: 64, align: 64, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !416, file: !4, baseType: !428, size: 32, align: 32, offset: 128)
!428 = !DIBasicType(name: "u32", size: 32, encoding: DW_ATE_unsigned)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "col", scope: !416, file: !4, baseType: !428, size: 32, align: 32, offset: 160)
!430 = !{!431, !432}
!431 = !DILocalVariable(name: "self", arg: 1, scope: !409, file: !410, line: 18, type: !44)
!432 = !DILocalVariable(name: "index", arg: 2, scope: !409, file: !410, line: 18, type: !273)
!433 = !{!168, !392}
!434 = !DILocation(line: 18, column: 14, scope: !409)
!435 = !DILocation(line: 18, column: 21, scope: !409)
!436 = !DILocation(line: 19, column: 9, scope: !409)
!437 = !DILocation(line: 20, column: 6, scope: !409)
!438 = distinct !DISubprogram(name: "index_mut<f32, core::ops::range::Range<usize>>", linkageName: "_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h244088d47dbca3efE", scope: !439, file: !410, line: 30, type: !440, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !433, retainedNodes: !442)
!439 = !DINamespace(name: "{impl#1}", scope: !412)
!440 = !DISubroutineType(types: !441)
!441 = !{!36, !36, !273, !415}
!442 = !{!443, !444}
!443 = !DILocalVariable(name: "self", arg: 1, scope: !438, file: !410, line: 30, type: !36)
!444 = !DILocalVariable(name: "index", arg: 2, scope: !438, file: !410, line: 30, type: !273)
!445 = !DILocation(line: 30, column: 18, scope: !438)
!446 = !DILocation(line: 30, column: 29, scope: !438)
!447 = !DILocation(line: 31, column: 9, scope: !438)
!448 = !DILocation(line: 32, column: 6, scope: !438)
!449 = distinct !DISubprogram(name: "max", linkageName: "_ZN4core3f3221_$LT$impl$u20$f32$GT$3max17hf059a6522ee4cfbaE", scope: !451, file: !450, line: 849, type: !453, scopeLine: 849, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !41, retainedNodes: !455)
!450 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/num/f32.rs", directory: "", checksumkind: CSK_MD5, checksum: "1164a9ceed8d542109bde0277f15bb37")
!451 = !DINamespace(name: "{impl#0}", scope: !452)
!452 = !DINamespace(name: "f32", scope: !6)
!453 = !DISubroutineType(types: !454)
!454 = !{!24, !24, !24}
!455 = !{!456, !457}
!456 = !DILocalVariable(name: "self", arg: 1, scope: !449, file: !450, line: 849, type: !24)
!457 = !DILocalVariable(name: "other", arg: 2, scope: !449, file: !450, line: 849, type: !24)
!458 = !DILocation(line: 849, column: 16, scope: !449)
!459 = !DILocation(line: 849, column: 22, scope: !449)
!460 = !DILocation(line: 850, column: 9, scope: !449)
!461 = !DILocation(line: 851, column: 6, scope: !449)
!462 = distinct !DISubprogram(name: "sqrt", linkageName: "_ZN3std3f3221_$LT$impl$u20$f32$GT$4sqrt17h32aef8043cab721fE", scope: !464, file: !463, line: 394, type: !467, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !41, retainedNodes: !469)
!463 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/std/src/f32.rs", directory: "", checksumkind: CSK_MD5, checksum: "6b62533421807b23255475a153f626cd")
!464 = !DINamespace(name: "{impl#0}", scope: !465)
!465 = !DINamespace(name: "f32", scope: !466)
!466 = !DINamespace(name: "std", scope: null)
!467 = !DISubroutineType(types: !468)
!468 = !{!24, !24}
!469 = !{!470}
!470 = !DILocalVariable(name: "self", arg: 1, scope: !462, file: !463, line: 394, type: !24)
!471 = !DILocation(line: 394, column: 17, scope: !462)
!472 = !DILocation(line: 395, column: 18, scope: !462)
!473 = !DILocation(line: 396, column: 6, scope: !462)
!474 = distinct !DISubprogram(name: "index_mut<f32>", linkageName: "_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hee7341bf73648ea9E", scope: !475, file: !410, line: 418, type: !476, scopeLine: 418, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !167, retainedNodes: !478)
!475 = !DINamespace(name: "{impl#4}", scope: !412)
!476 = !DISubroutineType(types: !477)
!477 = !{!36, !273, !36, !415}
!478 = !{!479, !480}
!479 = !DILocalVariable(name: "self", arg: 1, scope: !474, file: !410, line: 418, type: !273)
!480 = !DILocalVariable(name: "slice", arg: 2, scope: !474, file: !410, line: 418, type: !36)
!481 = !DILocation(line: 418, column: 18, scope: !474)
!482 = !DILocalVariable(name: "self", arg: 1, scope: !483, file: !410, line: 392, type: !273)
!483 = distinct !DISubprogram(name: "get_unchecked_mut<f32>", linkageName: "_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$17get_unchecked_mut17h0eda8265cccc1ce8E", scope: !475, file: !410, line: 392, type: !484, scopeLine: 392, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !167, retainedNodes: !486)
!484 = !DISubroutineType(types: !485)
!485 = !{!176, !273, !176}
!486 = !{!482, !487, !488, !490}
!487 = !DILocalVariable(name: "slice", arg: 2, scope: !483, file: !410, line: 392, type: !176)
!488 = !DILocalVariable(name: "this", scope: !489, file: !410, line: 393, type: !273, align: 8)
!489 = distinct !DILexicalBlock(scope: !483, file: !410, line: 393, column: 9)
!490 = !DILocalVariable(name: "new_len", scope: !491, file: !410, line: 401, type: !33, align: 8)
!491 = distinct !DILexicalBlock(scope: !489, file: !410, line: 401, column: 13)
!492 = !DILocation(line: 392, column: 33, scope: !483, inlinedAt: !493)
!493 = !DILocation(line: 425, column: 29, scope: !474)
!494 = !DILocation(line: 418, column: 24, scope: !474)
!495 = !DILocation(line: 419, column: 12, scope: !474)
!496 = !DILocation(line: 421, column: 19, scope: !474)
!497 = !DILocation(line: 420, column: 13, scope: !474)
!498 = !DILocation(line: 425, column: 47, scope: !474)
!499 = !DILocation(line: 392, column: 39, scope: !483, inlinedAt: !493)
!500 = !DILocalVariable(name: "self", arg: 1, scope: !501, file: !186, line: 2014, type: !176)
!501 = distinct !DISubprogram(name: "as_mut_ptr<f32>", linkageName: "_ZN4core3ptr7mut_ptr41_$LT$impl$u20$$BP$mut$u20$$u5b$T$u5d$$GT$10as_mut_ptr17h24895baaedc08ed2E", scope: !502, file: !186, line: 2014, type: !503, scopeLine: 2014, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !167, retainedNodes: !505)
!502 = !DINamespace(name: "{impl#1}", scope: !188)
!503 = !DISubroutineType(types: !504)
!504 = !{!23, !176}
!505 = !{!500}
!506 = !DILocation(line: 2014, column: 29, scope: !501, inlinedAt: !507)
!507 = !DILocation(line: 402, column: 49, scope: !491, inlinedAt: !493)
!508 = !DILocation(line: 401, column: 27, scope: !489, inlinedAt: !493)
!509 = !DILocation(line: 401, column: 17, scope: !491, inlinedAt: !493)
!510 = !DILocation(line: 2015, column: 9, scope: !501, inlinedAt: !507)
!511 = !DILocalVariable(name: "self", arg: 1, scope: !512, file: !186, line: 1015, type: !23)
!512 = distinct !DISubprogram(name: "add<f32>", linkageName: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17h39d4beaef7b7a80eE", scope: !187, file: !186, line: 1015, type: !513, scopeLine: 1015, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !167, retainedNodes: !515)
!513 = !DISubroutineType(types: !514)
!514 = !{!23, !23, !33}
!515 = !{!511, !516}
!516 = !DILocalVariable(name: "count", arg: 2, scope: !512, file: !186, line: 1015, type: !33)
!517 = !DILocation(line: 1015, column: 29, scope: !512, inlinedAt: !518)
!518 = !DILocation(line: 402, column: 62, scope: !491, inlinedAt: !493)
!519 = !DILocalVariable(name: "self", arg: 1, scope: !520, file: !186, line: 472, type: !23)
!520 = distinct !DISubprogram(name: "offset<f32>", linkageName: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset17hae79951fff3b802dE", scope: !187, file: !186, line: 472, type: !521, scopeLine: 472, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !167, retainedNodes: !524)
!521 = !DISubroutineType(types: !522)
!522 = !{!23, !23, !523}
!523 = !DIBasicType(name: "isize", size: 64, encoding: DW_ATE_signed)
!524 = !{!519, !525}
!525 = !DILocalVariable(name: "count", arg: 2, scope: !520, file: !186, line: 472, type: !523)
!526 = !DILocation(line: 472, column: 32, scope: !520, inlinedAt: !527)
!527 = !DILocation(line: 1020, column: 23, scope: !512, inlinedAt: !518)
!528 = !DILocation(line: 402, column: 66, scope: !491, inlinedAt: !493)
!529 = !DILocation(line: 1015, column: 35, scope: !512, inlinedAt: !518)
!530 = !DILocation(line: 1020, column: 30, scope: !512, inlinedAt: !518)
!531 = !DILocation(line: 472, column: 38, scope: !520, inlinedAt: !527)
!532 = !DILocation(line: 479, column: 18, scope: !520, inlinedAt: !527)
!533 = !DILocalVariable(name: "data", arg: 1, scope: !534, file: !172, line: 765, type: !23)
!534 = distinct !DISubprogram(name: "slice_from_raw_parts_mut<f32>", linkageName: "_ZN4core3ptr24slice_from_raw_parts_mut17hd200ec8c7c39d892E", scope: !173, file: !172, line: 765, type: !174, scopeLine: 765, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !167, retainedNodes: !535)
!535 = !{!533, !536}
!536 = !DILocalVariable(name: "len", arg: 2, scope: !534, file: !172, line: 765, type: !33)
!537 = !DILocation(line: 765, column: 42, scope: !534, inlinedAt: !538)
!538 = !DILocation(line: 402, column: 13, scope: !491, inlinedAt: !493)
!539 = !DILocalVariable(name: "self", arg: 1, scope: !540, file: !186, line: 57, type: !23)
!540 = distinct !DISubprogram(name: "cast<f32, ()>", linkageName: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4cast17h17aa23564979706fE", scope: !187, file: !186, line: 57, type: !189, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !194, retainedNodes: !541)
!541 = !{!539}
!542 = !DILocation(line: 57, column: 26, scope: !540, inlinedAt: !543)
!543 = !DILocation(line: 766, column: 29, scope: !534, inlinedAt: !538)
!544 = !DILocation(line: 402, column: 79, scope: !491, inlinedAt: !493)
!545 = !DILocation(line: 765, column: 56, scope: !534, inlinedAt: !538)
!546 = !DILocalVariable(name: "metadata", arg: 2, scope: !547, file: !202, line: 130, type: !33)
!547 = distinct !DISubprogram(name: "from_raw_parts_mut<[f32]>", linkageName: "_ZN4core3ptr8metadata18from_raw_parts_mut17h77b4d57cdef6ab5eE", scope: !203, file: !202, line: 128, type: !204, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !167, retainedNodes: !548)
!548 = !{!549, !546}
!549 = !DILocalVariable(name: "data_address", arg: 1, scope: !547, file: !202, line: 129, type: !191)
!550 = !DILocation(line: 130, column: 5, scope: !547, inlinedAt: !551)
!551 = !DILocation(line: 766, column: 5, scope: !534, inlinedAt: !538)
!552 = !DILocation(line: 58, column: 9, scope: !540, inlinedAt: !543)
!553 = !DILocation(line: 129, column: 5, scope: !547, inlinedAt: !551)
!554 = !DILocation(line: 135, column: 36, scope: !547, inlinedAt: !551)
!555 = !DILocation(line: 135, column: 14, scope: !547, inlinedAt: !551)
!556 = !DILocation(line: 426, column: 6, scope: !474)
!557 = !DILocation(line: 422, column: 13, scope: !474)
!558 = distinct !DISubprogram(name: "index<f32>", linkageName: "_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hfaf1ce62e9edcdb7E", scope: !475, file: !410, line: 407, type: !559, scopeLine: 407, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !167, retainedNodes: !561)
!559 = !DISubroutineType(types: !560)
!560 = !{!44, !273, !44, !415}
!561 = !{!562, !563}
!562 = !DILocalVariable(name: "self", arg: 1, scope: !558, file: !410, line: 407, type: !273)
!563 = !DILocalVariable(name: "slice", arg: 2, scope: !558, file: !410, line: 407, type: !44)
!564 = !DILocation(line: 407, column: 14, scope: !558)
!565 = !DILocalVariable(name: "self", arg: 1, scope: !566, file: !410, line: 374, type: !273)
!566 = distinct !DISubprogram(name: "get_unchecked<f32>", linkageName: "_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17h5225f85d492460e5E", scope: !475, file: !410, line: 374, type: !567, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !167, retainedNodes: !569)
!567 = !DISubroutineType(types: !568)
!568 = !{!226, !273, !226}
!569 = !{!565, !570, !571, !573}
!570 = !DILocalVariable(name: "slice", arg: 2, scope: !566, file: !410, line: 374, type: !226)
!571 = !DILocalVariable(name: "this", scope: !572, file: !410, line: 375, type: !273, align: 8)
!572 = distinct !DILexicalBlock(scope: !566, file: !410, line: 375, column: 9)
!573 = !DILocalVariable(name: "new_len", scope: !574, file: !410, line: 386, type: !33, align: 8)
!574 = distinct !DILexicalBlock(scope: !572, file: !410, line: 386, column: 13)
!575 = !DILocation(line: 374, column: 29, scope: !566, inlinedAt: !576)
!576 = !DILocation(line: 414, column: 25, scope: !558)
!577 = !DILocation(line: 407, column: 20, scope: !558)
!578 = !DILocation(line: 408, column: 12, scope: !558)
!579 = !DILocation(line: 410, column: 19, scope: !558)
!580 = !DILocation(line: 409, column: 13, scope: !558)
!581 = !DILocation(line: 414, column: 39, scope: !558)
!582 = !DILocation(line: 374, column: 35, scope: !566, inlinedAt: !576)
!583 = !DILocalVariable(name: "self", arg: 1, scope: !584, file: !236, line: 1629, type: !226)
!584 = distinct !DISubprogram(name: "as_ptr<f32>", linkageName: "_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$6as_ptr17h0a4f21f3c05778e8E", scope: !585, file: !236, line: 1629, type: !586, scopeLine: 1629, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !167, retainedNodes: !588)
!585 = !DINamespace(name: "{impl#1}", scope: !238)
!586 = !DISubroutineType(types: !587)
!587 = !{!25, !226}
!588 = !{!583}
!589 = !DILocation(line: 1629, column: 25, scope: !584, inlinedAt: !590)
!590 = !DILocation(line: 387, column: 45, scope: !574, inlinedAt: !576)
!591 = !DILocation(line: 386, column: 27, scope: !572, inlinedAt: !576)
!592 = !DILocation(line: 386, column: 17, scope: !574, inlinedAt: !576)
!593 = !DILocation(line: 1630, column: 9, scope: !584, inlinedAt: !590)
!594 = !DILocalVariable(name: "self", arg: 1, scope: !595, file: !236, line: 915, type: !25)
!595 = distinct !DISubprogram(name: "add<f32>", linkageName: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$3add17hf0a1303894ac82ccE", scope: !237, file: !236, line: 915, type: !596, scopeLine: 915, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !167, retainedNodes: !598)
!596 = !DISubroutineType(types: !597)
!597 = !{!25, !25, !33}
!598 = !{!594, !599}
!599 = !DILocalVariable(name: "count", arg: 2, scope: !595, file: !236, line: 915, type: !33)
!600 = !DILocation(line: 915, column: 29, scope: !595, inlinedAt: !601)
!601 = !DILocation(line: 387, column: 54, scope: !574, inlinedAt: !576)
!602 = !DILocalVariable(name: "self", arg: 1, scope: !603, file: !236, line: 460, type: !25)
!603 = distinct !DISubprogram(name: "offset<f32>", linkageName: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$6offset17hc6dc7ad3976a8138E", scope: !237, file: !236, line: 460, type: !604, scopeLine: 460, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !167, retainedNodes: !606)
!604 = !DISubroutineType(types: !605)
!605 = !{!25, !25, !523}
!606 = !{!602, !607}
!607 = !DILocalVariable(name: "count", arg: 2, scope: !603, file: !236, line: 460, type: !523)
!608 = !DILocation(line: 460, column: 32, scope: !603, inlinedAt: !609)
!609 = !DILocation(line: 920, column: 23, scope: !595, inlinedAt: !601)
!610 = !DILocation(line: 387, column: 58, scope: !574, inlinedAt: !576)
!611 = !DILocation(line: 915, column: 35, scope: !595, inlinedAt: !601)
!612 = !DILocation(line: 920, column: 30, scope: !595, inlinedAt: !601)
!613 = !DILocation(line: 460, column: 38, scope: !603, inlinedAt: !609)
!614 = !DILocation(line: 465, column: 18, scope: !603, inlinedAt: !609)
!615 = !DILocalVariable(name: "data", arg: 1, scope: !616, file: !172, line: 733, type: !25)
!616 = distinct !DISubprogram(name: "slice_from_raw_parts<f32>", linkageName: "_ZN4core3ptr20slice_from_raw_parts17h0edf5e8f570a2e42E", scope: !173, file: !172, line: 733, type: !224, scopeLine: 733, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !167, retainedNodes: !617)
!617 = !{!615, !618}
!618 = !DILocalVariable(name: "len", arg: 2, scope: !616, file: !172, line: 733, type: !33)
!619 = !DILocation(line: 733, column: 38, scope: !616, inlinedAt: !620)
!620 = !DILocation(line: 387, column: 13, scope: !574, inlinedAt: !576)
!621 = !DILocalVariable(name: "self", arg: 1, scope: !622, file: !236, line: 58, type: !25)
!622 = distinct !DISubprogram(name: "cast<f32, ()>", linkageName: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17hd8b506b81549e527E", scope: !237, file: !236, line: 58, type: !239, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !194, retainedNodes: !623)
!623 = !{!621}
!624 = !DILocation(line: 58, column: 26, scope: !622, inlinedAt: !625)
!625 = !DILocation(line: 734, column: 25, scope: !616, inlinedAt: !620)
!626 = !DILocation(line: 387, column: 71, scope: !574, inlinedAt: !576)
!627 = !DILocation(line: 733, column: 54, scope: !616, inlinedAt: !620)
!628 = !DILocalVariable(name: "metadata", arg: 2, scope: !629, file: !202, line: 113, type: !33)
!629 = distinct !DISubprogram(name: "from_raw_parts<[f32]>", linkageName: "_ZN4core3ptr8metadata14from_raw_parts17h76a44eae964f45d8E", scope: !203, file: !202, line: 111, type: !249, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !167, retainedNodes: !630)
!630 = !{!631, !628}
!631 = !DILocalVariable(name: "data_address", arg: 1, scope: !629, file: !202, line: 112, type: !241)
!632 = !DILocation(line: 113, column: 5, scope: !629, inlinedAt: !633)
!633 = !DILocation(line: 734, column: 5, scope: !616, inlinedAt: !620)
!634 = !DILocation(line: 59, column: 9, scope: !622, inlinedAt: !625)
!635 = !DILocation(line: 112, column: 5, scope: !629, inlinedAt: !633)
!636 = !DILocation(line: 118, column: 36, scope: !629, inlinedAt: !633)
!637 = !DILocation(line: 118, column: 14, scope: !629, inlinedAt: !633)
!638 = !DILocation(line: 415, column: 6, scope: !558)
!639 = !DILocation(line: 411, column: 13, scope: !558)
!640 = distinct !DISubprogram(name: "spec_next<usize>", linkageName: "_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17h2ee309bd7daa1ab5E", scope: !641, file: !396, line: 620, type: !399, scopeLine: 620, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !98, retainedNodes: !642)
!641 = !DINamespace(name: "{impl#2}", scope: !398)
!642 = !{!643, !644}
!643 = !DILocalVariable(name: "self", arg: 1, scope: !640, file: !396, line: 620, type: !401)
!644 = !DILocalVariable(name: "n", scope: !645, file: !396, line: 623, type: !33, align: 8)
!645 = distinct !DILexicalBlock(scope: !640, file: !396, line: 623, column: 13)
!646 = !DILocation(line: 620, column: 18, scope: !640)
!647 = !DILocalVariable(name: "src", arg: 2, scope: !648, file: !172, line: 1369, type: !33)
!648 = distinct !DISubprogram(name: "write<usize>", linkageName: "_ZN4core3ptr5write17h23167e04cbe5e571E", scope: !173, file: !172, line: 1369, type: !649, scopeLine: 1369, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !98, retainedNodes: !652)
!649 = !DISubroutineType(types: !650)
!650 = !{null, !651, !33}
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut usize", baseType: !33, size: 64, align: 64, dwarfAddressSpace: 0)
!652 = !{!653, !647}
!653 = !DILocalVariable(name: "dst", arg: 1, scope: !648, file: !172, line: 1369, type: !651)
!654 = !DILocation(line: 1369, column: 43, scope: !648, inlinedAt: !655)
!655 = !DILocation(line: 910, column: 9, scope: !656, inlinedAt: !667)
!656 = distinct !DILexicalBlock(scope: !658, file: !657, line: 909, column: 9)
!657 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/mem/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "2818803a2f5479a3883c65b3bb9963fd")
!658 = distinct !DISubprogram(name: "replace<usize>", linkageName: "_ZN4core3mem7replace17h36daa428c572319aE", scope: !659, file: !657, line: 904, type: !660, scopeLine: 904, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !98, retainedNodes: !663)
!659 = !DINamespace(name: "mem", scope: !6)
!660 = !DISubroutineType(types: !661)
!661 = !{!33, !662, !33}
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut usize", baseType: !33, size: 64, align: 64, dwarfAddressSpace: 0)
!663 = !{!664, !665, !666}
!664 = !DILocalVariable(name: "dest", arg: 1, scope: !658, file: !657, line: 904, type: !662)
!665 = !DILocalVariable(name: "src", arg: 2, scope: !658, file: !657, line: 904, type: !33)
!666 = !DILocalVariable(name: "result", scope: !656, file: !657, line: 909, type: !33, align: 8)
!667 = !DILocation(line: 624, column: 18, scope: !645)
!668 = !DILocation(line: 621, column: 25, scope: !640)
!669 = !DILocation(line: 621, column: 12, scope: !640)
!670 = !DILocation(line: 626, column: 13, scope: !640)
!671 = !DILocation(line: 621, column: 9, scope: !640)
!672 = !DILocalVariable(name: "self", arg: 1, scope: !673, file: !674, line: 188, type: !680)
!673 = distinct !DISubprogram(name: "clone", linkageName: "_ZN4core5clone5impls54_$LT$impl$u20$core..clone..Clone$u20$for$u20$usize$GT$5clone17hebc2a1de5f3fc684E", scope: !675, file: !674, line: 188, type: !678, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !41, retainedNodes: !681)
!674 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/clone.rs", directory: "", checksumkind: CSK_MD5, checksum: "d116d2b81cbc11c420da76ff7ce51e4d")
!675 = !DINamespace(name: "{impl#5}", scope: !676)
!676 = !DINamespace(name: "impls", scope: !677)
!677 = !DINamespace(name: "clone", scope: !6)
!678 = !DISubroutineType(types: !679)
!679 = !{!33, !680}
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&usize", baseType: !33, size: 64, align: 64, dwarfAddressSpace: 0)
!681 = !{!672}
!682 = !DILocation(line: 188, column: 30, scope: !673, inlinedAt: !683)
!683 = distinct !DILocation(line: 623, column: 54, scope: !640)
!684 = !DILocation(line: 189, column: 25, scope: !673, inlinedAt: !683)
!685 = !DILocation(line: 623, column: 30, scope: !640)
!686 = !DILocation(line: 623, column: 17, scope: !645)
!687 = !DILocation(line: 624, column: 31, scope: !645)
!688 = !DILocation(line: 904, column: 25, scope: !658, inlinedAt: !667)
!689 = !DILocation(line: 624, column: 48, scope: !645)
!690 = !DILocation(line: 904, column: 39, scope: !658, inlinedAt: !667)
!691 = !DILocation(line: 909, column: 32, scope: !658, inlinedAt: !667)
!692 = !DILocalVariable(name: "src", arg: 1, scope: !693, file: !172, line: 1137, type: !696)
!693 = distinct !DISubprogram(name: "read<usize>", linkageName: "_ZN4core3ptr4read17heccaa5d5c2dce871E", scope: !173, file: !172, line: 1137, type: !694, scopeLine: 1137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !98, retainedNodes: !697)
!694 = !DISubroutineType(types: !695)
!695 = !{!33, !696}
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const usize", baseType: !33, size: 64, align: 64, dwarfAddressSpace: 0)
!697 = !{!692}
!698 = !DILocation(line: 1137, column: 29, scope: !693, inlinedAt: !699)
!699 = !DILocation(line: 909, column: 22, scope: !658, inlinedAt: !667)
!700 = !DILocation(line: 1188, column: 13, scope: !693, inlinedAt: !699)
!701 = !DILocation(line: 909, column: 13, scope: !656, inlinedAt: !667)
!702 = !DILocation(line: 910, column: 20, scope: !656, inlinedAt: !667)
!703 = !DILocation(line: 1369, column: 30, scope: !648, inlinedAt: !655)
!704 = !DILocation(line: 910, column: 26, scope: !656, inlinedAt: !667)
!705 = !DILocation(line: 1386, column: 9, scope: !648, inlinedAt: !655)
!706 = !DILocation(line: 624, column: 13, scope: !645)
!707 = !DILocation(line: 628, column: 6, scope: !640)
!708 = distinct !DISubprogram(name: "lt", linkageName: "_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17h2f3602d4c0699498E", scope: !709, file: !62, line: 1402, type: !711, scopeLine: 1402, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !41, retainedNodes: !713)
!709 = !DINamespace(name: "{impl#54}", scope: !710)
!710 = !DINamespace(name: "impls", scope: !5)
!711 = !DISubroutineType(types: !712)
!712 = !{!111, !680, !680}
!713 = !{!714, !715}
!714 = !DILocalVariable(name: "self", arg: 1, scope: !708, file: !62, line: 1402, type: !680)
!715 = !DILocalVariable(name: "other", arg: 2, scope: !708, file: !62, line: 1402, type: !680)
!716 = !DILocation(line: 1402, column: 23, scope: !708)
!717 = !DILocation(line: 1402, column: 30, scope: !708)
!718 = !DILocation(line: 1402, column: 52, scope: !708)
!719 = !DILocation(line: 1402, column: 62, scope: !708)
!720 = !DILocation(line: 1402, column: 72, scope: !708)
!721 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17ha8917451ce204b42E", scope: !722, file: !396, line: 189, type: !79, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !41, retainedNodes: !723)
!722 = !DINamespace(name: "{impl#37}", scope: !398)
!723 = !{!724, !725}
!724 = !DILocalVariable(name: "start", arg: 1, scope: !721, file: !396, line: 189, type: !33)
!725 = !DILocalVariable(name: "n", arg: 2, scope: !721, file: !396, line: 189, type: !33)
!726 = !DILocation(line: 189, column: 37, scope: !721)
!727 = !DILocalVariable(name: "self", arg: 1, scope: !728, file: !76, line: 485, type: !33)
!728 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_ZN4core3num23_$LT$impl$u20$usize$GT$13unchecked_add17h1fdcbaf9b5493cafE", scope: !77, file: !76, line: 485, type: !79, scopeLine: 485, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !41, retainedNodes: !729)
!729 = !{!727, !730}
!730 = !DILocalVariable(name: "rhs", arg: 2, scope: !728, file: !76, line: 485, type: !33)
!731 = !DILocation(line: 485, column: 43, scope: !728, inlinedAt: !732)
!732 = !DILocation(line: 191, column: 28, scope: !721)
!733 = !DILocation(line: 189, column: 50, scope: !721)
!734 = !DILocation(line: 485, column: 49, scope: !728, inlinedAt: !732)
!735 = !DILocation(line: 488, column: 22, scope: !728, inlinedAt: !732)
!736 = !DILocation(line: 192, column: 10, scope: !721)
!737 = distinct !DISubprogram(name: "min_by<usize, fn(&usize, &usize) -> core::cmp::Ordering>", linkageName: "_ZN4core3cmp6min_by17hcb2c8982c64a6efdE", scope: !5, file: !62, line: 1191, type: !738, scopeLine: 1191, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !747, retainedNodes: !743)
!738 = !DISubroutineType(types: !739)
!739 = !{!33, !33, !33, !740}
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "fn(&usize, &usize) -> core::cmp::Ordering", baseType: !741, size: 64, align: 64, dwarfAddressSpace: 0)
!741 = !DISubroutineType(types: !742)
!742 = !{!3, !680, !680}
!743 = !{!744, !745, !746}
!744 = !DILocalVariable(name: "v1", arg: 1, scope: !737, file: !62, line: 1191, type: !33)
!745 = !DILocalVariable(name: "v2", arg: 2, scope: !737, file: !62, line: 1191, type: !33)
!746 = !DILocalVariable(name: "compare", arg: 3, scope: !737, file: !62, line: 1191, type: !740)
!747 = !{!99, !748}
!748 = !DITemplateTypeParameter(name: "F", type: !740)
!749 = !DILocation(line: 1191, column: 62, scope: !737)
!750 = !DILocation(line: 1191, column: 69, scope: !737)
!751 = !DILocation(line: 1191, column: 76, scope: !737)
!752 = !DILocation(line: 1196, column: 11, scope: !737)
!753 = !{i64 8}
!754 = !{i8 -1, i8 2}
!755 = !DILocation(line: 1200, column: 1, scope: !737)
!756 = !DILocation(line: 1196, column: 5, scope: !737)
!757 = !DILocation(line: 1197, column: 45, scope: !737)
!758 = !DILocation(line: 1198, column: 30, scope: !737)
!759 = !DILocation(line: 1191, column: 1, scope: !737)
!760 = !DILocation(line: 1200, column: 2, scope: !737)
!761 = distinct !DISubprogram(name: "call_once<fn(&usize, &usize) -> core::cmp::Ordering, (&usize, &usize)>", linkageName: "_ZN4core3ops8function6FnOnce9call_once17hafcc39bb4f29a3d2E", scope: !763, file: !762, line: 250, type: !765, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !774, retainedNodes: !767)
!762 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/ops/function.rs", directory: "", checksumkind: CSK_MD5, checksum: "56fb008eac3df8d06ce524ffb023f0b6")
!763 = !DINamespace(name: "FnOnce", scope: !764)
!764 = !DINamespace(name: "function", scope: !275)
!765 = !DISubroutineType(types: !766)
!766 = !{!3, !740, !680, !680}
!767 = !{!768, !769}
!768 = !DILocalVariable(arg: 1, scope: !761, file: !762, line: 250, type: !740)
!769 = !DILocalVariable(arg: 2, scope: !761, file: !762, line: 250, type: !770)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "(&usize, &usize)", file: !4, size: 128, align: 64, elements: !771, templateParams: !41, identifier: "4b3e20cac744c4f572f611737389d9c8")
!771 = !{!772, !773}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !770, file: !4, baseType: !680, size: 64, align: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !770, file: !4, baseType: !680, size: 64, align: 64, offset: 64)
!774 = !{!775, !776}
!775 = !DITemplateTypeParameter(name: "Self", type: !740)
!776 = !DITemplateTypeParameter(name: "Args", type: !770)
!777 = !DILocation(line: 250, column: 5, scope: !761)
!778 = distinct !DISubprogram(name: "cmp", linkageName: "_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$usize$GT$3cmp17h36a84a6de0da93c9E", scope: !779, file: !62, line: 1415, type: !741, scopeLine: 1415, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !41, retainedNodes: !780)
!779 = !DINamespace(name: "{impl#55}", scope: !710)
!780 = !{!781, !782}
!781 = !DILocalVariable(name: "self", arg: 1, scope: !778, file: !62, line: 1415, type: !680)
!782 = !DILocalVariable(name: "other", arg: 2, scope: !778, file: !62, line: 1415, type: !680)
!783 = !DILocation(line: 1415, column: 24, scope: !778)
!784 = !DILocation(line: 1415, column: 31, scope: !778)
!785 = !DILocation(line: 1418, column: 24, scope: !778)
!786 = !DILocation(line: 1418, column: 32, scope: !778)
!787 = !DILocation(line: 1419, column: 29, scope: !778)
!788 = !DILocation(line: 1419, column: 38, scope: !778)
!789 = !DILocation(line: 1418, column: 41, scope: !778)
!790 = !DILocation(line: 1418, column: 21, scope: !778)
!791 = !DILocation(line: 1421, column: 18, scope: !778)
!792 = !DILocation(line: 1420, column: 28, scope: !778)
!793 = !DILocation(line: 1419, column: 26, scope: !778)
!794 = !DILocation(line: 1419, column: 47, scope: !778)
!795 = distinct !DISubprogram(name: "max_by<i32, fn(&i32, &i32) -> core::cmp::Ordering>", linkageName: "_ZN4core3cmp6max_by17h89f7a6c06c40c6b2E", scope: !5, file: !62, line: 1266, type: !796, scopeLine: 1266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !806, retainedNodes: !802)
!796 = !DISubroutineType(types: !797)
!797 = !{!26, !26, !26, !798}
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "fn(&i32, &i32) -> core::cmp::Ordering", baseType: !799, size: 64, align: 64, dwarfAddressSpace: 0)
!799 = !DISubroutineType(types: !800)
!800 = !{!3, !801, !801}
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&i32", baseType: !26, size: 64, align: 64, dwarfAddressSpace: 0)
!802 = !{!803, !804, !805}
!803 = !DILocalVariable(name: "v1", arg: 1, scope: !795, file: !62, line: 1266, type: !26)
!804 = !DILocalVariable(name: "v2", arg: 2, scope: !795, file: !62, line: 1266, type: !26)
!805 = !DILocalVariable(name: "compare", arg: 3, scope: !795, file: !62, line: 1266, type: !798)
!806 = !{!807, !808}
!807 = !DITemplateTypeParameter(name: "T", type: !26)
!808 = !DITemplateTypeParameter(name: "F", type: !798)
!809 = !DILocation(line: 1266, column: 62, scope: !795)
!810 = !DILocation(line: 1266, column: 69, scope: !795)
!811 = !DILocation(line: 1266, column: 76, scope: !795)
!812 = !DILocation(line: 1271, column: 11, scope: !795)
!813 = !{i64 4}
!814 = !DILocation(line: 1275, column: 1, scope: !795)
!815 = !DILocation(line: 1271, column: 5, scope: !795)
!816 = !DILocation(line: 1272, column: 45, scope: !795)
!817 = !DILocation(line: 1273, column: 30, scope: !795)
!818 = !DILocation(line: 1266, column: 1, scope: !795)
!819 = !DILocation(line: 1275, column: 2, scope: !795)
!820 = distinct !DISubprogram(name: "call_once<fn(&i32, &i32) -> core::cmp::Ordering, (&i32, &i32)>", linkageName: "_ZN4core3ops8function6FnOnce9call_once17h74e58f9869514295E", scope: !763, file: !762, line: 250, type: !821, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !830, retainedNodes: !823)
!821 = !DISubroutineType(types: !822)
!822 = !{!3, !798, !801, !801}
!823 = !{!824, !825}
!824 = !DILocalVariable(arg: 1, scope: !820, file: !762, line: 250, type: !798)
!825 = !DILocalVariable(arg: 2, scope: !820, file: !762, line: 250, type: !826)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "(&i32, &i32)", file: !4, size: 128, align: 64, elements: !827, templateParams: !41, identifier: "5b4145eb202f498e1b1a330828ad902e")
!827 = !{!828, !829}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !826, file: !4, baseType: !801, size: 64, align: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !826, file: !4, baseType: !801, size: 64, align: 64, offset: 64)
!830 = !{!831, !832}
!831 = !DITemplateTypeParameter(name: "Self", type: !798)
!832 = !DITemplateTypeParameter(name: "Args", type: !826)
!833 = !DILocation(line: 250, column: 5, scope: !820)
!834 = distinct !DISubprogram(name: "cmp", linkageName: "_ZN4core3cmp5impls48_$LT$impl$u20$core..cmp..Ord$u20$for$u20$i32$GT$3cmp17hebe48809fb923d82E", scope: !835, file: !62, line: 1415, type: !799, scopeLine: 1415, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !41, retainedNodes: !836)
!835 = !DINamespace(name: "{impl#73}", scope: !710)
!836 = !{!837, !838}
!837 = !DILocalVariable(name: "self", arg: 1, scope: !834, file: !62, line: 1415, type: !801)
!838 = !DILocalVariable(name: "other", arg: 2, scope: !834, file: !62, line: 1415, type: !801)
!839 = !DILocation(line: 1415, column: 24, scope: !834)
!840 = !DILocation(line: 1415, column: 31, scope: !834)
!841 = !DILocation(line: 1418, column: 24, scope: !834)
!842 = !DILocation(line: 1418, column: 32, scope: !834)
!843 = !DILocation(line: 1419, column: 29, scope: !834)
!844 = !DILocation(line: 1419, column: 38, scope: !834)
!845 = !DILocation(line: 1418, column: 41, scope: !834)
!846 = !DILocation(line: 1418, column: 21, scope: !834)
!847 = !DILocation(line: 1421, column: 18, scope: !834)
!848 = !DILocation(line: 1420, column: 28, scope: !834)
!849 = !DILocation(line: 1419, column: 26, scope: !834)
!850 = !DILocation(line: 1419, column: 47, scope: !834)
!851 = distinct !DISubprogram(name: "run_test_1", scope: !18, file: !17, line: 42, type: !852, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !41, retainedNodes: !854)
!852 = !DISubroutineType(types: !853)
!853 = !{!111}
!854 = !{!855, !860, !862, !867}
!855 = !DILocalVariable(name: "src", scope: !856, file: !17, line: 43, type: !857, align: 4)
!856 = distinct !DILexicalBlock(scope: !851, file: !17, line: 43, column: 5)
!857 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 96, align: 32, elements: !858)
!858 = !{!859}
!859 = !DISubrange(count: 3, lowerBound: 0)
!860 = !DILocalVariable(name: "count", scope: !861, file: !17, line: 44, type: !26, align: 4)
!861 = distinct !DILexicalBlock(scope: !856, file: !17, line: 44, column: 5)
!862 = !DILocalVariable(name: "dest", scope: !863, file: !17, line: 45, type: !864, align: 4)
!863 = distinct !DILexicalBlock(scope: !861, file: !17, line: 45, column: 5)
!864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 64, align: 32, elements: !865)
!865 = !{!866}
!866 = !DISubrange(count: 2, lowerBound: 0)
!867 = !DILocalVariable(name: "expected_dest", scope: !868, file: !17, line: 49, type: !864, align: 4)
!868 = distinct !DILexicalBlock(scope: !863, file: !17, line: 49, column: 5)
!869 = !DILocation(line: 43, column: 9, scope: !856)
!870 = !DILocation(line: 45, column: 9, scope: !863)
!871 = !DILocation(line: 49, column: 9, scope: !868)
!872 = !DILocation(line: 43, column: 25, scope: !851)
!873 = !DILocation(line: 44, column: 22, scope: !856)
!874 = !DILocation(line: 44, column: 9, scope: !861)
!875 = !DILocation(line: 45, column: 30, scope: !861)
!876 = !DILocalVariable(name: "self", arg: 1, scope: !877, file: !878, line: 506, type: !36)
!877 = distinct !DISubprogram(name: "as_mut_ptr<f32>", linkageName: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17hd9b58581bec53935E", scope: !879, file: !878, line: 506, type: !880, scopeLine: 506, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !167, retainedNodes: !882)
!878 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/slice/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "0b3adda84e3d0ea3eafbebcfb4ca210d")
!879 = !DINamespace(name: "{impl#0}", scope: !161)
!880 = !DISubroutineType(types: !881)
!881 = !{!23, !36}
!882 = !{!876}
!883 = !DILocation(line: 506, column: 29, scope: !877, inlinedAt: !884)
!884 = distinct !DILocation(line: 47, column: 13, scope: !863)
!885 = !DILocalVariable(name: "self", arg: 1, scope: !886, file: !878, line: 476, type: !44)
!886 = distinct !DISubprogram(name: "as_ptr<f32>", linkageName: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h44d3c092ca4185c6E", scope: !879, file: !878, line: 476, type: !887, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !167, retainedNodes: !889)
!887 = !DISubroutineType(types: !888)
!888 = !{!25, !44}
!889 = !{!885}
!890 = !DILocation(line: 476, column: 25, scope: !886, inlinedAt: !891)
!891 = distinct !DILocation(line: 47, column: 32, scope: !863)
!892 = !DILocation(line: 47, column: 5, scope: !863)
!893 = !DILocation(line: 49, column: 35, scope: !863)
!894 = !DILocation(line: 51, column: 5, scope: !868)
!895 = !DILocation(line: 51, column: 36, scope: !868)
!896 = !DILocation(line: 52, column: 2, scope: !851)
!897 = distinct !DISubprogram(name: "run_test_2", scope: !18, file: !17, line: 55, type: !852, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !41, retainedNodes: !898)
!898 = !{!899, !901, !903, !905}
!899 = !DILocalVariable(name: "src", scope: !900, file: !17, line: 56, type: !857, align: 4)
!900 = distinct !DILexicalBlock(scope: !897, file: !17, line: 56, column: 5)
!901 = !DILocalVariable(name: "count", scope: !902, file: !17, line: 57, type: !26, align: 4)
!902 = distinct !DILexicalBlock(scope: !900, file: !17, line: 57, column: 5)
!903 = !DILocalVariable(name: "dest", scope: !904, file: !17, line: 58, type: !864, align: 4)
!904 = distinct !DILexicalBlock(scope: !902, file: !17, line: 58, column: 5)
!905 = !DILocalVariable(name: "expected_dest", scope: !906, file: !17, line: 62, type: !864, align: 4)
!906 = distinct !DILexicalBlock(scope: !904, file: !17, line: 62, column: 5)
!907 = !DILocation(line: 56, column: 9, scope: !900)
!908 = !DILocation(line: 58, column: 9, scope: !904)
!909 = !DILocation(line: 62, column: 9, scope: !906)
!910 = !DILocation(line: 56, column: 25, scope: !897)
!911 = !DILocation(line: 57, column: 22, scope: !900)
!912 = !DILocation(line: 57, column: 9, scope: !902)
!913 = !DILocation(line: 58, column: 30, scope: !902)
!914 = !DILocation(line: 506, column: 29, scope: !877, inlinedAt: !915)
!915 = distinct !DILocation(line: 60, column: 13, scope: !904)
!916 = !DILocation(line: 476, column: 25, scope: !886, inlinedAt: !917)
!917 = distinct !DILocation(line: 60, column: 32, scope: !904)
!918 = !DILocation(line: 60, column: 5, scope: !904)
!919 = !DILocation(line: 62, column: 35, scope: !904)
!920 = !DILocation(line: 64, column: 5, scope: !906)
!921 = !DILocation(line: 64, column: 36, scope: !906)
!922 = !DILocation(line: 65, column: 2, scope: !897)
!923 = distinct !DISubprogram(name: "run_test_3", scope: !18, file: !17, line: 68, type: !852, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !41, retainedNodes: !924)
!924 = !{!925, !930, !932, !937}
!925 = !DILocalVariable(name: "src", scope: !926, file: !17, line: 69, type: !927, align: 4)
!926 = distinct !DILexicalBlock(scope: !923, file: !17, line: 69, column: 5)
!927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 288, align: 32, elements: !928)
!928 = !{!929}
!929 = !DISubrange(count: 9, lowerBound: 0)
!930 = !DILocalVariable(name: "count", scope: !931, file: !17, line: 74, type: !26, align: 4)
!931 = distinct !DILexicalBlock(scope: !926, file: !17, line: 74, column: 5)
!932 = !DILocalVariable(name: "dest", scope: !933, file: !17, line: 75, type: !934, align: 4)
!933 = distinct !DILexicalBlock(scope: !931, file: !17, line: 75, column: 5)
!934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 192, align: 32, elements: !935)
!935 = !{!936}
!936 = !DISubrange(count: 6, lowerBound: 0)
!937 = !DILocalVariable(name: "expected_dest", scope: !938, file: !17, line: 79, type: !934, align: 4)
!938 = distinct !DILexicalBlock(scope: !933, file: !17, line: 79, column: 5)
!939 = !DILocation(line: 69, column: 9, scope: !926)
!940 = !DILocation(line: 75, column: 9, scope: !933)
!941 = !DILocation(line: 79, column: 9, scope: !938)
!942 = !DILocation(line: 69, column: 25, scope: !923)
!943 = !DILocation(line: 74, column: 22, scope: !926)
!944 = !DILocation(line: 74, column: 9, scope: !931)
!945 = !DILocation(line: 75, column: 30, scope: !931)
!946 = !DILocation(line: 506, column: 29, scope: !877, inlinedAt: !947)
!947 = distinct !DILocation(line: 77, column: 13, scope: !933)
!948 = !DILocation(line: 476, column: 25, scope: !886, inlinedAt: !949)
!949 = distinct !DILocation(line: 77, column: 32, scope: !933)
!950 = !DILocation(line: 77, column: 5, scope: !933)
!951 = !DILocation(line: 79, column: 35, scope: !933)
!952 = !DILocation(line: 85, column: 5, scope: !938)
!953 = !DILocation(line: 86, column: 12, scope: !938)
!954 = !DILocation(line: 87, column: 12, scope: !938)
!955 = !DILocation(line: 88, column: 12, scope: !938)
!956 = !DILocation(line: 89, column: 12, scope: !938)
!957 = !DILocation(line: 90, column: 12, scope: !938)
!958 = !DILocation(line: 91, column: 2, scope: !923)
!959 = distinct !DISubprogram(name: "run_test_4", scope: !18, file: !17, line: 94, type: !852, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !41, retainedNodes: !960)
!960 = !{!961, !966, !968, !973, !975, !977}
!961 = !DILocalVariable(name: "src", scope: !962, file: !17, line: 95, type: !963, align: 4)
!962 = distinct !DILexicalBlock(scope: !959, file: !17, line: 95, column: 5)
!963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 672, align: 32, elements: !964)
!964 = !{!965}
!965 = !DISubrange(count: 21, lowerBound: 0)
!966 = !DILocalVariable(name: "count", scope: !967, file: !17, line: 96, type: !26, align: 4)
!967 = distinct !DILexicalBlock(scope: !962, file: !17, line: 96, column: 5)
!968 = !DILocalVariable(name: "dest", scope: !969, file: !17, line: 97, type: !970, align: 4)
!969 = distinct !DILexicalBlock(scope: !967, file: !17, line: 97, column: 5)
!970 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 448, align: 32, elements: !971)
!971 = !{!972}
!972 = !DISubrange(count: 14, lowerBound: 0)
!973 = !DILocalVariable(name: "expected_dest", scope: !974, file: !17, line: 101, type: !970, align: 4)
!974 = distinct !DILexicalBlock(scope: !969, file: !17, line: 101, column: 5)
!975 = !DILocalVariable(name: "pass", scope: !976, file: !17, line: 106, type: !111, align: 1)
!976 = distinct !DILexicalBlock(scope: !974, file: !17, line: 106, column: 5)
!977 = !DILocalVariable(name: "i", scope: !978, file: !17, line: 107, type: !33, align: 8)
!978 = distinct !DILexicalBlock(scope: !976, file: !17, line: 107, column: 5)
!979 = !DILocation(line: 106, column: 9, scope: !976)
!980 = !DILocation(line: 95, column: 9, scope: !962)
!981 = !DILocation(line: 97, column: 9, scope: !969)
!982 = !DILocation(line: 101, column: 9, scope: !974)
!983 = !DILocation(line: 107, column: 9, scope: !978)
!984 = !DILocation(line: 95, column: 26, scope: !959)
!985 = !DILocation(line: 96, column: 22, scope: !962)
!986 = !DILocation(line: 96, column: 9, scope: !967)
!987 = !DILocation(line: 97, column: 31, scope: !967)
!988 = !DILocation(line: 506, column: 29, scope: !877, inlinedAt: !989)
!989 = distinct !DILocation(line: 99, column: 13, scope: !969)
!990 = !DILocation(line: 476, column: 25, scope: !886, inlinedAt: !991)
!991 = distinct !DILocation(line: 99, column: 32, scope: !969)
!992 = !DILocation(line: 99, column: 5, scope: !969)
!993 = !DILocation(line: 101, column: 36, scope: !969)
!994 = !DILocation(line: 106, column: 20, scope: !974)
!995 = !DILocation(line: 107, column: 17, scope: !976)
!996 = !DILocation(line: 108, column: 5, scope: !978)
!997 = !DILocation(line: 108, column: 11, scope: !978)
!998 = !DILocation(line: 115, column: 2, scope: !959)
!999 = !DILocation(line: 109, column: 17, scope: !978)
!1000 = !DILocation(line: 109, column: 12, scope: !978)
!1001 = !DILocation(line: 109, column: 37, scope: !978)
!1002 = !DILocation(line: 109, column: 23, scope: !978)
!1003 = !DILocation(line: 112, column: 9, scope: !978)
!1004 = !DILocation(line: 110, column: 13, scope: !978)
!1005 = !DILocation(line: 109, column: 9, scope: !978)
!1006 = distinct !DISubprogram(name: "run_test_5", scope: !18, file: !17, line: 118, type: !852, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !41, retainedNodes: !1007)
!1007 = !{!1008, !1010, !1012, !1017}
!1008 = !DILocalVariable(name: "src", scope: !1009, file: !17, line: 119, type: !934, align: 4)
!1009 = distinct !DILexicalBlock(scope: !1006, file: !17, line: 119, column: 5)
!1010 = !DILocalVariable(name: "count", scope: !1011, file: !17, line: 120, type: !26, align: 4)
!1011 = distinct !DILexicalBlock(scope: !1009, file: !17, line: 120, column: 5)
!1012 = !DILocalVariable(name: "dest", scope: !1013, file: !17, line: 121, type: !1014, align: 4)
!1013 = distinct !DILexicalBlock(scope: !1011, file: !17, line: 121, column: 5)
!1014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 128, align: 32, elements: !1015)
!1015 = !{!1016}
!1016 = !DISubrange(count: 4, lowerBound: 0)
!1017 = !DILocalVariable(name: "expected_dest", scope: !1018, file: !17, line: 125, type: !1014, align: 4)
!1018 = distinct !DILexicalBlock(scope: !1013, file: !17, line: 125, column: 5)
!1019 = !DILocation(line: 119, column: 9, scope: !1009)
!1020 = !DILocation(line: 121, column: 9, scope: !1013)
!1021 = !DILocation(line: 125, column: 9, scope: !1018)
!1022 = !DILocation(line: 119, column: 25, scope: !1006)
!1023 = !DILocation(line: 120, column: 22, scope: !1009)
!1024 = !DILocation(line: 120, column: 9, scope: !1011)
!1025 = !DILocation(line: 121, column: 30, scope: !1011)
!1026 = !DILocation(line: 506, column: 29, scope: !877, inlinedAt: !1027)
!1027 = distinct !DILocation(line: 123, column: 13, scope: !1013)
!1028 = !DILocation(line: 476, column: 25, scope: !886, inlinedAt: !1029)
!1029 = distinct !DILocation(line: 123, column: 32, scope: !1013)
!1030 = !DILocation(line: 123, column: 5, scope: !1013)
!1031 = !DILocation(line: 125, column: 35, scope: !1013)
!1032 = !DILocation(line: 127, column: 5, scope: !1018)
!1033 = !DILocation(line: 128, column: 12, scope: !1018)
!1034 = !DILocation(line: 129, column: 12, scope: !1018)
!1035 = !DILocation(line: 130, column: 12, scope: !1018)
!1036 = !DILocation(line: 131, column: 2, scope: !1006)
