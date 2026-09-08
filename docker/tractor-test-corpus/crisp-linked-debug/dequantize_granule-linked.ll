; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; ASSERT EQ: i1 1 = call i1 @run_test_1()
; ASSERT EQ: i1 1 = call i1 @run_test_2()

%"core::ptr::metadata::PtrRepr<[u8]>" = type { [2 x i64] }
%"src::lib::L12ScaleInfo" = type { [192 x float], i8, i8, [64 x i8], [64 x i8], [2 x i8] }
%"src::lib::BsT" = type { ptr, i32, i32 }

@alloc_e14f096bd30e7c4fffb0d07638e6275d = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/num/mod.rs" }>, align 1
@alloc_d1e68eb04df0257e0899e21ea2c814fc = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e14f096bd30e7c4fffb0d07638e6275d, [16 x i8] c"K\00\00\00\00\00\00\00/\04\00\00\05\00\00\00" }>, align 8
@str.0 = internal constant [25 x i8] c"attempt to divide by zero"
@str.1 = internal constant [57 x i8] c"attempt to calculate the remainder with a divisor of zero"
@alloc_f5ffd2fd1476bab43ad89fb40c72d0c5 = private unnamed_addr constant <{ [10 x i8] }> <{ [10 x i8] c"src/lib.rs" }>, align 1
@alloc_60b69d0690b2f363dd73b39df6f61e4c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\1E\00\00\00\05\00\00\00" }>, align 8
@str.2 = internal constant [28 x i8] c"attempt to add with overflow"
@alloc_746a4da714e1f3ec8839f33275ccfd0b = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00#\00\00\00\19\00\00\00" }>, align 8
@alloc_36df7879a551edae8e8731318bcafdb9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00#\00\00\00\18\00\00\00" }>, align 8
@alloc_50126994a3474650c810fd705ba7a045 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00(\00\00\00\0B\00\00\00" }>, align 8
@alloc_012e7bc7e026f73da38ae71b84083700 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00(\00\00\00+\00\00\00" }>, align 8
@str.3 = internal constant [36 x i8] c"attempt to shift right with overflow"
@alloc_7f5c64d0383c8047320b606fdcbe37b5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00)\00\00\00\05\00\00\00" }>, align 8
@alloc_2bbd8fa8bed9bf8a9c3ce3e9cd14e987 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00,\00\00\00\09\00\00\00" }>, align 8
@str.4 = internal constant [33 x i8] c"attempt to subtract with overflow"
@alloc_bb0c63f55f53f1875c303e472fabe8a2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\005\00\00\00\16\00\00\00" }>, align 8
@str.5 = internal constant [31 x i8] c"attempt to negate with overflow"
@alloc_580d367d53f29d06d4e1a88f7820bf87 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\005\00\00\00\0D\00\00\00" }>, align 8
@alloc_93b4632e2044e91617843fbef389f65b = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\000\00\00\00\12\00\00\00" }>, align 8
@str.6 = internal constant [35 x i8] c"attempt to shift left with overflow"
@alloc_95ee0b237610391790bf96d43fb0a464 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\001\00\00\00\10\00\00\00" }>, align 8
@alloc_9295eaf8dd8ddf58e4cfe31d82d4c4fe = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\002\00\00\00\09\00\00\00" }>, align 8
@alloc_d2bde6794d67b726803318630755fc3d = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00B\00\00\00\14\00\00\00" }>, align 8
@str.7 = internal constant [33 x i8] c"attempt to multiply with overflow"
@alloc_81de958ef81cd7e1dff369f66004e6b1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00C\00\00\00\15\00\00\00" }>, align 8
@alloc_599b33c8cf15ce02df08c72ac8b06c7f = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00D\00\00\00<\00\00\00" }>, align 8
@alloc_26d8d840dfe8d5d0e2a2099d20609418 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00E\00\00\00\16\00\00\00" }>, align 8
@alloc_dd5dc01eb569a319ed5ce8a9c20fcad0 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00I\00\00\00&\00\00\00" }>, align 8
@alloc_dbf18ea18ef366f87878d462b7804f2f = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00I\00\00\00 \00\00\00" }>, align 8
@alloc_0d339efd88cb7f30d3ea86248ea8cbe5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00K\00\00\00/\00\00\00" }>, align 8
@alloc_310d97fbb4bc866279bfaeec63cdb065 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00K\00\00\00\1F\00\00\00" }>, align 8
@alloc_7d6fcf0e9c07ef97dcb21a63e95fb6d3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00K\00\00\00\19\00\00\00" }>, align 8
@alloc_f0bb39248cea45b5799df32d3bfa1545 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00P\00\00\00 \00\00\00" }>, align 8
@alloc_958f0ffa22ed22af0aaa1c8d27137097 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00P\00\00\00\1A\00\00\00" }>, align 8
@alloc_af980fefd0ed04d06ae1cd85d4d19372 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00P\00\00\00\19\00\00\00" }>, align 8
@alloc_59fb040a696e2d1f0e26595542c3bf68 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00Z\00\00\00\1F\00\00\00" }>, align 8
@alloc_0cbc833515dca069b47630970e53d9d7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00Z\00\00\00\19\00\00\00" }>, align 8
@alloc_3e0c3650949583151913ac91fd99edba = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00d\00\00\00\15\00\00\00" }>, align 8
@alloc_dc0f9eb7ba01a59368e2fb3a79ea27ee = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00h\00\00\00\05\00\00\00" }>, align 8
@alloc_219fe9f392ddda7a102b01c6ba65383c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00t\00\00\00\09\00\00\00" }>, align 8
@alloc_9696a9daf596d6c95df5044f925c703e = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00u\00\00\00\09\00\00\00" }>, align 8
@alloc_dd7ae175172ce538d104b300a117e7b2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\A1\00\00\00\0C\00\00\00" }>, align 8
@alloc_a3219961c36f635454f61ad523ea5375 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\CE\00\00\00\0C\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define i32 @dequantize_granule(ptr %grbuf, ptr %bs, ptr %sci, i32 %group_size) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !6 {
start:
  %group_size.dbg.spill = alloca i32, align 4
  %sci.dbg.spill = alloca ptr, align 8
  %bs.dbg.spill = alloca ptr, align 8
  %grbuf.dbg.spill = alloca ptr, align 8
  store ptr %grbuf, ptr %grbuf.dbg.spill, align 8
    #dbg_declare(ptr %grbuf.dbg.spill, !41, !DIExpression(), !45)
  store ptr %bs, ptr %bs.dbg.spill, align 8
    #dbg_declare(ptr %bs.dbg.spill, !42, !DIExpression(), !46)
  store ptr %sci, ptr %sci.dbg.spill, align 8
    #dbg_declare(ptr %sci.dbg.spill, !43, !DIExpression(), !47)
  store i32 %group_size, ptr %group_size.dbg.spill, align 4
    #dbg_declare(ptr %group_size.dbg.spill, !44, !DIExpression(), !48)
  %0 = call { ptr, i64 } @_ZN4core5slice3raw18from_raw_parts_mut17h0669e0e3da8d1efcE(ptr %grbuf, i64 576), !dbg !49
  %_6.0 = extractvalue { ptr, i64 } %0, 0, !dbg !49
  %_6.1 = extractvalue { ptr, i64 } %0, 1, !dbg !49
  %_16 = ptrtoint ptr %bs to i64, !dbg !50
  %_19 = and i64 %_16, 7, !dbg !50
  %_20 = icmp eq i64 %_19, 0, !dbg !50
  %1 = call i1 @llvm.expect.i1(i1 %_20, i1 true), !dbg !50
  br i1 %1, label %bb4, label %panic, !dbg !50

bb4:                                              ; preds = %start
  %_10 = ptrtoint ptr %sci to i64, !dbg !51
  %_13 = and i64 %_10, 3, !dbg !51
  %_14 = icmp eq i64 %_13, 0, !dbg !51
  %2 = call i1 @llvm.expect.i1(i1 %_14, i1 true), !dbg !51
  br i1 %2, label %bb3, label %panic1, !dbg !51

panic:                                            ; preds = %start
  invoke void @_ZN4core9panicking36panic_misaligned_pointer_dereference17h587229c42ea18e2bE(i64 8, i64 %_16, ptr align 8 @alloc_219fe9f392ddda7a102b01c6ba65383c) #8
          to label %unreachable unwind label %terminate, !dbg !50

terminate:                                        ; preds = %panic1, %panic
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  %5 = extractvalue { ptr, i32 } %3, 1
  call void @_ZN4core9panicking19panic_cannot_unwind17h629e1da841ab4abfE() #9, !dbg !52
  unreachable, !dbg !52

unreachable:                                      ; preds = %panic1, %panic
  unreachable

bb3:                                              ; preds = %bb4
  %6 = call i32 @_ZN22dequantize_granule_lib3src3lib18dequantize_granule17h3e2a42370def9b08E(ptr align 4 %_6.0, i64 %_6.1, ptr align 8 %bs, ptr align 4 %sci, i32 %group_size), !dbg !53
  ret i32 %6, !dbg !54

panic1:                                           ; preds = %bb4
  invoke void @_ZN4core9panicking36panic_misaligned_pointer_dereference17h587229c42ea18e2bE(i64 4, i64 %_10, ptr align 8 @alloc_9696a9daf596d6c95df5044f925c703e) #8
          to label %unreachable unwind label %terminate, !dbg !51
}

; Function Attrs: nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @_ZN4core5slice3raw18from_raw_parts_mut17h0669e0e3da8d1efcE(ptr %data, i64 %len) unnamed_addr #1 !dbg !55 {
start:
  %data_address.dbg.spill = alloca ptr, align 8
  %len.dbg.spill = alloca i64, align 8
  %data.dbg.spill = alloca ptr, align 8
  %_8 = alloca { ptr, i64 }, align 8
  %_7 = alloca %"core::ptr::metadata::PtrRepr<[u8]>", align 8
  store ptr %data, ptr %data.dbg.spill, align 8
    #dbg_declare(ptr %data.dbg.spill, !69, !DIExpression(), !73)
    #dbg_declare(ptr %data.dbg.spill, !74, !DIExpression(), !86)
    #dbg_declare(ptr %data.dbg.spill, !88, !DIExpression(), !100)
  store i64 %len, ptr %len.dbg.spill, align 8
    #dbg_declare(ptr %len.dbg.spill, !70, !DIExpression(), !102)
    #dbg_declare(ptr %len.dbg.spill, !85, !DIExpression(), !103)
    #dbg_declare(ptr %len.dbg.spill, !104, !DIExpression(), !112)
  store ptr %data, ptr %data_address.dbg.spill, align 8, !dbg !114
    #dbg_declare(ptr %data_address.dbg.spill, !111, !DIExpression(), !115)
  store ptr %data, ptr %_8, align 8, !dbg !116
  %0 = getelementptr inbounds { ptr, i64 }, ptr %_8, i32 0, i32 1, !dbg !116
  store i64 %len, ptr %0, align 8, !dbg !116
  %1 = getelementptr inbounds { ptr, i64 }, ptr %_8, i32 0, i32 0, !dbg !117
  %2 = load ptr, ptr %1, align 8, !dbg !117, !noundef !25
  %3 = getelementptr inbounds { ptr, i64 }, ptr %_8, i32 0, i32 1, !dbg !117
  %4 = load i64, ptr %3, align 8, !dbg !117, !noundef !25
  %5 = getelementptr inbounds { ptr, i64 }, ptr %_7, i32 0, i32 0, !dbg !117
  store ptr %2, ptr %5, align 8, !dbg !117
  %6 = getelementptr inbounds { ptr, i64 }, ptr %_7, i32 0, i32 1, !dbg !117
  store i64 %4, ptr %6, align 8, !dbg !117
  %7 = getelementptr inbounds { ptr, i64 }, ptr %_7, i32 0, i32 0, !dbg !117
  %_3.0 = load ptr, ptr %7, align 8, !dbg !117, !noundef !25
  %8 = getelementptr inbounds { ptr, i64 }, ptr %_7, i32 0, i32 1, !dbg !117
  %_3.1 = load i64, ptr %8, align 8, !dbg !117, !noundef !25
  %9 = insertvalue { ptr, i64 } poison, ptr %_3.0, 0, !dbg !118
  %10 = insertvalue { ptr, i64 } %9, i64 %_3.1, 1, !dbg !118
  ret { ptr, i64 } %10, !dbg !118
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.expect.i1(i1, i1) #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking36panic_misaligned_pointer_dereference17h587229c42ea18e2bE(i64, i64, ptr align 8) unnamed_addr #3

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_ZN4core9panicking19panic_cannot_unwind17h629e1da841ab4abfE() unnamed_addr #4

; Function Attrs: nonlazybind uwtable
define internal i32 @_ZN22dequantize_granule_lib3src3lib18dequantize_granule17h3e2a42370def9b08E(ptr align 4 %grbuf.0, i64 %grbuf.1, ptr align 8 %bs, ptr align 4 %sci, i32 %group_size) unnamed_addr #0 !dbg !119 {
start:
  %rhs.dbg.spill.i33 = alloca i32, align 4
  %self.dbg.spill.i34 = alloca i32, align 4
  %rhs.dbg.spill.i31 = alloca i32, align 4
  %self.dbg.spill.i32 = alloca i32, align 4
  %rhs.dbg.spill.i28 = alloca i32, align 4
  %self.dbg.spill.i29 = alloca i32, align 4
  %rhs.dbg.spill.i24 = alloca i32, align 4
  %self.dbg.spill.i25 = alloca i32, align 4
  %rhs.dbg.spill.i22 = alloca i32, align 4
  %self.dbg.spill.i23 = alloca i32, align 4
  %rhs.dbg.spill.i = alloca i32, align 4
  %self.dbg.spill.i = alloca i32, align 4
  %k.dbg.spill17 = alloca i64, align 8
  %mod_0.dbg.spill = alloca i32, align 4
  %k.dbg.spill = alloca i64, align 8
  %half.dbg.spill = alloca i32, align 4
  %ba.dbg.spill = alloca i32, align 4
  %i.dbg.spill = alloca i32, align 4
  %base.dbg.spill = alloca i64, align 8
  %j.dbg.spill = alloca i32, align 4
  %group_size_usize.dbg.spill = alloca i64, align 8
  %group_size.dbg.spill = alloca i32, align 4
  %sci.dbg.spill = alloca ptr, align 8
  %bs.dbg.spill = alloca ptr, align 8
  %grbuf.dbg.spill = alloca { ptr, i64 }, align 8
  %_76 = alloca { i64, i64 }, align 8
  %iter3 = alloca { i64, i64 }, align 8
  %_74 = alloca { i64, i64 }, align 8
  %code = alloca i32, align 4
  %_47 = alloca { i64, i64 }, align 8
  %iter2 = alloca { i64, i64 }, align 8
  %_45 = alloca { i64, i64 }, align 8
  %dst_base = alloca i64, align 8
  %_24 = alloca { i32, i32 }, align 4
  %iter1 = alloca { i32, i32 }, align 4
  %_18 = alloca { i32, i32 }, align 4
  %_10 = alloca { i32, i32 }, align 4
  %iter = alloca { i32, i32 }, align 4
  %_8 = alloca { i32, i32 }, align 4
  %choff = alloca i32, align 4
  %0 = getelementptr inbounds { ptr, i64 }, ptr %grbuf.dbg.spill, i32 0, i32 0
  store ptr %grbuf.0, ptr %0, align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %grbuf.dbg.spill, i32 0, i32 1
  store i64 %grbuf.1, ptr %1, align 8
    #dbg_declare(ptr %grbuf.dbg.spill, !125, !DIExpression(), !176)
  store ptr %bs, ptr %bs.dbg.spill, align 8
    #dbg_declare(ptr %bs.dbg.spill, !126, !DIExpression(), !177)
  store ptr %sci, ptr %sci.dbg.spill, align 8
    #dbg_declare(ptr %sci.dbg.spill, !127, !DIExpression(), !178)
  store i32 %group_size, ptr %group_size.dbg.spill, align 4
    #dbg_declare(ptr %group_size.dbg.spill, !128, !DIExpression(), !179)
    #dbg_declare(ptr %choff, !129, !DIExpression(), !180)
    #dbg_declare(ptr %iter, !133, !DIExpression(), !181)
    #dbg_declare(ptr %iter1, !147, !DIExpression(), !182)
    #dbg_declare(ptr %dst_base, !151, !DIExpression(), !183)
    #dbg_declare(ptr %iter2, !157, !DIExpression(), !184)
    #dbg_declare(ptr %code, !170, !DIExpression(), !185)
    #dbg_declare(ptr %iter3, !172, !DIExpression(), !186)
  store i32 576, ptr %choff, align 4, !dbg !187
  %group_size_usize = sext i32 %group_size to i64, !dbg !188
  store i64 %group_size_usize, ptr %group_size_usize.dbg.spill, align 8, !dbg !188
    #dbg_declare(ptr %group_size_usize.dbg.spill, !131, !DIExpression(), !189)
  store i32 0, ptr %_8, align 4, !dbg !190
  %2 = getelementptr inbounds { i32, i32 }, ptr %_8, i32 0, i32 1, !dbg !190
  store i32 4, ptr %2, align 4, !dbg !190
  %3 = getelementptr inbounds { i32, i32 }, ptr %_8, i32 0, i32 0, !dbg !190
  %4 = load i32, ptr %3, align 4, !dbg !190, !noundef !25
  %5 = getelementptr inbounds { i32, i32 }, ptr %_8, i32 0, i32 1, !dbg !190
  %6 = load i32, ptr %5, align 4, !dbg !190, !noundef !25
  %7 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hdf0ab3ca505c8bfeE"(i32 %4, i32 %6), !dbg !190
  %_7.0 = extractvalue { i32, i32 } %7, 0, !dbg !190
  %_7.1 = extractvalue { i32, i32 } %7, 1, !dbg !190
  %8 = getelementptr inbounds { i32, i32 }, ptr %iter, i32 0, i32 0, !dbg !190
  store i32 %_7.0, ptr %8, align 4, !dbg !190
  %9 = getelementptr inbounds { i32, i32 }, ptr %iter, i32 0, i32 1, !dbg !190
  store i32 %_7.1, ptr %9, align 4, !dbg !190
  br label %bb2, !dbg !191

bb2:                                              ; preds = %bb10, %start
  %10 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17he710101a5cff9815E"(ptr align 4 %iter), !dbg !181
  store { i32, i32 } %10, ptr %_10, align 4, !dbg !181
  %11 = load i32, ptr %_10, align 4, !dbg !181, !range !192, !noundef !25
  %_12 = zext i32 %11 to i64, !dbg !181
  %12 = icmp eq i64 %_12, 0, !dbg !181
  br i1 %12, label %bb6, label %bb4, !dbg !181

bb6:                                              ; preds = %bb2
  %13 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %group_size, i32 4), !dbg !193
  %_94.0 = extractvalue { i32, i1 } %13, 0, !dbg !193
  %_94.1 = extractvalue { i32, i1 } %13, 1, !dbg !193
  %14 = call i1 @llvm.expect.i1(i1 %_94.1, i1 false), !dbg !193
  br i1 %14, label %panic21, label %bb50, !dbg !193

bb4:                                              ; preds = %bb2
  %15 = getelementptr inbounds { i32, i32 }, ptr %_10, i32 0, i32 1, !dbg !194
  %j = load i32, ptr %15, align 4, !dbg !194, !noundef !25
  store i32 %j, ptr %j.dbg.spill, align 4, !dbg !194
    #dbg_declare(ptr %j.dbg.spill, !143, !DIExpression(), !195)
  %_15 = sext i32 %j to i64, !dbg !196
  %16 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %group_size_usize, i64 %_15), !dbg !197
  %_16.0 = extractvalue { i64, i1 } %16, 0, !dbg !197
  %_16.1 = extractvalue { i64, i1 } %16, 1, !dbg !197
  %17 = call i1 @llvm.expect.i1(i1 %_16.1, i1 false), !dbg !197
  br i1 %17, label %panic, label %bb7, !dbg !197

bb7:                                              ; preds = %bb4
  store i64 %_16.0, ptr %base.dbg.spill, align 8, !dbg !197
    #dbg_declare(ptr %base.dbg.spill, !145, !DIExpression(), !198)
  %18 = getelementptr inbounds %"src::lib::L12ScaleInfo", ptr %sci, i32 0, i32 1, !dbg !199
  %_21 = load i8, ptr %18, align 4, !dbg !199, !noundef !25
  %_20 = zext i8 %_21 to i32, !dbg !199
  %19 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 2, i32 %_20), !dbg !200
  %_22.0 = extractvalue { i32, i1 } %19, 0, !dbg !200
  %_22.1 = extractvalue { i32, i1 } %19, 1, !dbg !200
  %20 = call i1 @llvm.expect.i1(i1 %_22.1, i1 false), !dbg !200
  br i1 %20, label %panic4, label %bb8, !dbg !200

panic:                                            ; preds = %bb4
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.7, i64 33, ptr align 8 @alloc_d2bde6794d67b726803318630755fc3d) #8, !dbg !197
  unreachable, !dbg !197

bb8:                                              ; preds = %bb7
  store i32 0, ptr %_18, align 4, !dbg !201
  %21 = getelementptr inbounds { i32, i32 }, ptr %_18, i32 0, i32 1, !dbg !201
  store i32 %_22.0, ptr %21, align 4, !dbg !201
  %22 = getelementptr inbounds { i32, i32 }, ptr %_18, i32 0, i32 0, !dbg !201
  %23 = load i32, ptr %22, align 4, !dbg !201, !noundef !25
  %24 = getelementptr inbounds { i32, i32 }, ptr %_18, i32 0, i32 1, !dbg !201
  %25 = load i32, ptr %24, align 4, !dbg !201, !noundef !25
  %26 = call { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hdf0ab3ca505c8bfeE"(i32 %23, i32 %25), !dbg !201
  %_17.0 = extractvalue { i32, i32 } %26, 0, !dbg !201
  %_17.1 = extractvalue { i32, i32 } %26, 1, !dbg !201
  %27 = getelementptr inbounds { i32, i32 }, ptr %iter1, i32 0, i32 0, !dbg !201
  store i32 %_17.0, ptr %27, align 4, !dbg !201
  %28 = getelementptr inbounds { i32, i32 }, ptr %iter1, i32 0, i32 1, !dbg !201
  store i32 %_17.1, ptr %28, align 4, !dbg !201
  br label %bb10, !dbg !202

panic4:                                           ; preds = %bb7
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.7, i64 33, ptr align 8 @alloc_81de958ef81cd7e1dff369f66004e6b1) #8, !dbg !200
  unreachable, !dbg !200

bb10:                                             ; preds = %bb49, %bb8
  %29 = call { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17he710101a5cff9815E"(ptr align 4 %iter1), !dbg !182
  store { i32, i32 } %29, ptr %_24, align 4, !dbg !182
  %30 = load i32, ptr %_24, align 4, !dbg !182, !range !192, !noundef !25
  %_26 = zext i32 %30 to i64, !dbg !182
  %31 = icmp eq i64 %_26, 0, !dbg !182
  br i1 %31, label %bb2, label %bb12, !dbg !182

bb12:                                             ; preds = %bb10
  %32 = getelementptr inbounds { i32, i32 }, ptr %_24, i32 0, i32 1, !dbg !203
  %i = load i32, ptr %32, align 4, !dbg !203, !noundef !25
  store i32 %i, ptr %i.dbg.spill, align 4, !dbg !203
    #dbg_declare(ptr %i.dbg.spill, !149, !DIExpression(), !204)
  %_29 = load i32, ptr %choff, align 4, !dbg !205, !noundef !25
  %33 = icmp eq i32 %_29, 576, !dbg !205
  br i1 %33, label %bb13, label %bb14, !dbg !205

bb13:                                             ; preds = %bb12
  store i64 %_16.0, ptr %dst_base, align 8, !dbg !206
  br label %bb16, !dbg !207

bb14:                                             ; preds = %bb12
  %34 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_16.0, i64 18), !dbg !208
  %_30.0 = extractvalue { i64, i1 } %34, 0, !dbg !208
  %_30.1 = extractvalue { i64, i1 } %34, 1, !dbg !208
  %35 = call i1 @llvm.expect.i1(i1 %_30.1, i1 false), !dbg !208
  br i1 %35, label %panic5, label %bb15, !dbg !208

bb15:                                             ; preds = %bb14
  store i64 %_30.0, ptr %dst_base, align 8, !dbg !208
  br label %bb16, !dbg !207

panic5:                                           ; preds = %bb14
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.2, i64 28, ptr align 8 @alloc_599b33c8cf15ce02df08c72ac8b06c7f) #8, !dbg !208
  unreachable, !dbg !208

bb16:                                             ; preds = %bb15, %bb13
  %_33 = sext i32 %i to i64, !dbg !209
  %_35 = icmp ult i64 %_33, 64, !dbg !210
  %36 = call i1 @llvm.expect.i1(i1 %_35, i1 true), !dbg !210
  br i1 %36, label %bb17, label %panic6, !dbg !210

bb17:                                             ; preds = %bb16
  %37 = getelementptr inbounds %"src::lib::L12ScaleInfo", ptr %sci, i32 0, i32 3, !dbg !210
  %38 = getelementptr inbounds [64 x i8], ptr %37, i64 0, i64 %_33, !dbg !210
  %_32 = load i8, ptr %38, align 1, !dbg !210, !noundef !25
  %ba = zext i8 %_32 to i32, !dbg !210
  store i32 %ba, ptr %ba.dbg.spill, align 4, !dbg !210
    #dbg_declare(ptr %ba.dbg.spill, !153, !DIExpression(), !211)
  %39 = icmp eq i32 %ba, 0, !dbg !212
  br i1 %39, label %bb48, label %bb18, !dbg !212

panic6:                                           ; preds = %bb16
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %_33, i64 64, ptr align 8 @alloc_26d8d840dfe8d5d0e2a2099d20609418) #8, !dbg !210
  unreachable, !dbg !210

bb48:                                             ; preds = %bb39, %bb24, %bb17
  %_92 = load i32, ptr %choff, align 4, !dbg !213, !noundef !25
  %40 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 18, i32 %_92), !dbg !214
  %_93.0 = extractvalue { i32, i1 } %40, 0, !dbg !214
  %_93.1 = extractvalue { i32, i1 } %40, 1, !dbg !214
  %41 = call i1 @llvm.expect.i1(i1 %_93.1, i1 false), !dbg !214
  br i1 %41, label %panic20, label %bb49, !dbg !214

bb18:                                             ; preds = %bb17
  %_36 = icmp slt i32 %ba, 17, !dbg !215
  br i1 %_36, label %bb19, label %bb31, !dbg !215

bb31:                                             ; preds = %bb18
  %42 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %ba, i32 17), !dbg !216
  %_64.0 = extractvalue { i32, i1 } %42, 0, !dbg !216
  %_64.1 = extractvalue { i32, i1 } %42, 1, !dbg !216
  %43 = call i1 @llvm.expect.i1(i1 %_64.1, i1 false), !dbg !216
  br i1 %43, label %panic13, label %bb32, !dbg !216

bb19:                                             ; preds = %bb18
  %44 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %ba, i32 1), !dbg !217
  %_40.0 = extractvalue { i32, i1 } %44, 0, !dbg !217
  %_40.1 = extractvalue { i32, i1 } %44, 1, !dbg !217
  %45 = call i1 @llvm.expect.i1(i1 %_40.1, i1 false), !dbg !217
  br i1 %45, label %panic7, label %bb20, !dbg !217

bb20:                                             ; preds = %bb19
  %_42 = icmp ult i32 %_40.0, 32, !dbg !218
  %46 = call i1 @llvm.expect.i1(i1 %_42, i1 true), !dbg !218
  br i1 %46, label %bb21, label %panic8, !dbg !218

panic7:                                           ; preds = %bb19
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.4, i64 33, ptr align 8 @alloc_dd5dc01eb569a319ed5ce8a9c20fcad0) #8, !dbg !217
  unreachable, !dbg !217

bb21:                                             ; preds = %bb20
  %47 = and i32 %_40.0, 31, !dbg !218
  %_38 = shl i32 1, %47, !dbg !218
  %48 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_38, i32 1), !dbg !218
  %_43.0 = extractvalue { i32, i1 } %48, 0, !dbg !218
  %_43.1 = extractvalue { i32, i1 } %48, 1, !dbg !218
  %49 = call i1 @llvm.expect.i1(i1 %_43.1, i1 false), !dbg !218
  br i1 %49, label %panic9, label %bb22, !dbg !218

panic8:                                           ; preds = %bb20
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.6, i64 35, ptr align 8 @alloc_dbf18ea18ef366f87878d462b7804f2f) #8, !dbg !218
  unreachable, !dbg !218

bb22:                                             ; preds = %bb21
  store i32 %_43.0, ptr %half.dbg.spill, align 4, !dbg !218
    #dbg_declare(ptr %half.dbg.spill, !155, !DIExpression(), !219)
  store i64 0, ptr %_45, align 8, !dbg !220
  %50 = getelementptr inbounds { i64, i64 }, ptr %_45, i32 0, i32 1, !dbg !220
  store i64 %group_size_usize, ptr %50, align 8, !dbg !220
  %51 = getelementptr inbounds { i64, i64 }, ptr %_45, i32 0, i32 0, !dbg !220
  %52 = load i64, ptr %51, align 8, !dbg !220, !noundef !25
  %53 = getelementptr inbounds { i64, i64 }, ptr %_45, i32 0, i32 1, !dbg !220
  %54 = load i64, ptr %53, align 8, !dbg !220, !noundef !25
  %55 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hbc8a26c8930e166eE"(i64 %52, i64 %54), !dbg !220
  %_44.0 = extractvalue { i64, i64 } %55, 0, !dbg !220
  %_44.1 = extractvalue { i64, i64 } %55, 1, !dbg !220
  %56 = getelementptr inbounds { i64, i64 }, ptr %iter2, i32 0, i32 0, !dbg !220
  store i64 %_44.0, ptr %56, align 8, !dbg !220
  %57 = getelementptr inbounds { i64, i64 }, ptr %iter2, i32 0, i32 1, !dbg !220
  store i64 %_44.1, ptr %57, align 8, !dbg !220
  br label %bb24, !dbg !221

panic9:                                           ; preds = %bb21
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.4, i64 33, ptr align 8 @alloc_dbf18ea18ef366f87878d462b7804f2f) #8, !dbg !218
  unreachable, !dbg !218

bb24:                                             ; preds = %bb30, %bb22
  %58 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h66006fd4f6bf96e3E"(ptr align 8 %iter2), !dbg !184
  store { i64, i64 } %58, ptr %_47, align 8, !dbg !184
  %_49 = load i64, ptr %_47, align 8, !dbg !184, !range !222, !noundef !25
  %59 = icmp eq i64 %_49, 0, !dbg !184
  br i1 %59, label %bb48, label %bb26, !dbg !184

bb26:                                             ; preds = %bb24
  %60 = getelementptr inbounds { i64, i64 }, ptr %_47, i32 0, i32 1, !dbg !223
  %k = load i64, ptr %60, align 8, !dbg !223, !noundef !25
  store i64 %k, ptr %k.dbg.spill, align 8, !dbg !223
    #dbg_declare(ptr %k.dbg.spill, !165, !DIExpression(), !224)
  %_53 = call i32 @_ZN22dequantize_granule_lib3src3lib8get_bits17hf459dc36fcd0442eE(ptr align 8 %bs, i32 %ba), !dbg !225
  %61 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %_53, i32 %_43.0), !dbg !226
  %_54.0 = extractvalue { i32, i1 } %61, 0, !dbg !226
  %_54.1 = extractvalue { i32, i1 } %61, 1, !dbg !226
  %62 = call i1 @llvm.expect.i1(i1 %_54.1, i1 false), !dbg !226
  br i1 %62, label %panic10, label %bb28, !dbg !226

bb28:                                             ; preds = %bb26
  %_56 = load i64, ptr %dst_base, align 8, !dbg !227, !noundef !25
  %63 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_56, i64 %k), !dbg !227
  %_57.0 = extractvalue { i64, i1 } %63, 0, !dbg !227
  %_57.1 = extractvalue { i64, i1 } %63, 1, !dbg !227
  %64 = call i1 @llvm.expect.i1(i1 %_57.1, i1 false), !dbg !227
  br i1 %64, label %panic11, label %bb29, !dbg !227

panic10:                                          ; preds = %bb26
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.4, i64 33, ptr align 8 @alloc_0d339efd88cb7f30d3ea86248ea8cbe5) #8, !dbg !226
  unreachable, !dbg !226

bb29:                                             ; preds = %bb28
  %_59 = icmp ult i64 %_57.0, %grbuf.1, !dbg !228
  %65 = call i1 @llvm.expect.i1(i1 %_59, i1 true), !dbg !228
  br i1 %65, label %bb30, label %panic12, !dbg !228

panic11:                                          ; preds = %bb28
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.2, i64 28, ptr align 8 @alloc_310d97fbb4bc866279bfaeec63cdb065) #8, !dbg !227
  unreachable, !dbg !227

bb30:                                             ; preds = %bb29
  %66 = getelementptr inbounds [0 x float], ptr %grbuf.0, i64 0, i64 %_57.0, !dbg !228
  %67 = sitofp i32 %_54.0 to float, !dbg !228
  store float %67, ptr %66, align 4, !dbg !228
  br label %bb24, !dbg !221

panic12:                                          ; preds = %bb29
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %_57.0, i64 %grbuf.1, ptr align 8 @alloc_7d6fcf0e9c07ef97dcb21a63e95fb6d3) #8, !dbg !228
  unreachable, !dbg !228

bb32:                                             ; preds = %bb31
  %_66 = icmp ult i32 %_64.0, 32, !dbg !229
  %68 = call i1 @llvm.expect.i1(i1 %_66, i1 true), !dbg !229
  br i1 %68, label %bb33, label %panic14, !dbg !229

panic13:                                          ; preds = %bb31
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.4, i64 33, ptr align 8 @alloc_f0bb39248cea45b5799df32d3bfa1545) #8, !dbg !216
  unreachable, !dbg !216

bb33:                                             ; preds = %bb32
  %69 = and i32 %_64.0, 31, !dbg !229
  %_62 = shl i32 2, %69, !dbg !229
  %70 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %_62, i32 1), !dbg !230
  %_67.0 = extractvalue { i32, i1 } %70, 0, !dbg !230
  %_67.1 = extractvalue { i32, i1 } %70, 1, !dbg !230
  %71 = call i1 @llvm.expect.i1(i1 %_67.1, i1 false), !dbg !230
  br i1 %71, label %panic15, label %bb34, !dbg !230

panic14:                                          ; preds = %bb32
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.6, i64 35, ptr align 8 @alloc_958f0ffa22ed22af0aaa1c8d27137097) #8, !dbg !229
  unreachable, !dbg !229

bb34:                                             ; preds = %bb33
  store i32 %_67.0, ptr %mod_0.dbg.spill, align 4, !dbg !230
    #dbg_declare(ptr %mod_0.dbg.spill, !167, !DIExpression(), !231)
  store i32 %_67.0, ptr %self.dbg.spill.i, align 4
    #dbg_declare(ptr %self.dbg.spill.i, !232, !DIExpression(), !241)
  store i32 2, ptr %rhs.dbg.spill.i, align 4
    #dbg_declare(ptr %rhs.dbg.spill.i, !240, !DIExpression(), !243)
  %72 = add i32 %_67.0, 2, !dbg !244
  %_72 = lshr i32 %_67.0, 3, !dbg !245
  store i32 %72, ptr %self.dbg.spill.i34, align 4
    #dbg_declare(ptr %self.dbg.spill.i34, !246, !DIExpression(), !250)
  store i32 %_72, ptr %rhs.dbg.spill.i33, align 4
    #dbg_declare(ptr %rhs.dbg.spill.i33, !249, !DIExpression(), !252)
  %73 = sub i32 %72, %_72, !dbg !253
  %74 = call i32 @_ZN22dequantize_granule_lib3src3lib8get_bits17hf459dc36fcd0442eE(ptr align 8 %bs, i32 %73), !dbg !254
  store i32 %74, ptr %code, align 4, !dbg !254
  store i64 0, ptr %_74, align 8, !dbg !255
  %75 = getelementptr inbounds { i64, i64 }, ptr %_74, i32 0, i32 1, !dbg !255
  store i64 %group_size_usize, ptr %75, align 8, !dbg !255
  %76 = getelementptr inbounds { i64, i64 }, ptr %_74, i32 0, i32 0, !dbg !255
  %77 = load i64, ptr %76, align 8, !dbg !255, !noundef !25
  %78 = getelementptr inbounds { i64, i64 }, ptr %_74, i32 0, i32 1, !dbg !255
  %79 = load i64, ptr %78, align 8, !dbg !255, !noundef !25
  %80 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hbc8a26c8930e166eE"(i64 %77, i64 %79), !dbg !255
  %_73.0 = extractvalue { i64, i64 } %80, 0, !dbg !255
  %_73.1 = extractvalue { i64, i64 } %80, 1, !dbg !255
  %81 = getelementptr inbounds { i64, i64 }, ptr %iter3, i32 0, i32 0, !dbg !255
  store i64 %_73.0, ptr %81, align 8, !dbg !255
  %82 = getelementptr inbounds { i64, i64 }, ptr %iter3, i32 0, i32 1, !dbg !255
  store i64 %_73.1, ptr %82, align 8, !dbg !255
  br label %bb39, !dbg !256

panic15:                                          ; preds = %bb33
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.2, i64 28, ptr align 8 @alloc_af980fefd0ed04d06ae1cd85d4d19372) #8, !dbg !230
  unreachable, !dbg !230

bb39:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_div17hf40315d2ad7da5c6E.exit", %bb34
  %83 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h66006fd4f6bf96e3E"(ptr align 8 %iter3), !dbg !186
  store { i64, i64 } %83, ptr %_76, align 8, !dbg !186
  %_78 = load i64, ptr %_76, align 8, !dbg !186, !range !222, !noundef !25
  %84 = icmp eq i64 %_78, 0, !dbg !186
  br i1 %84, label %bb48, label %bb41, !dbg !186

bb41:                                             ; preds = %bb39
  %85 = getelementptr inbounds { i64, i64 }, ptr %_76, i32 0, i32 1, !dbg !257
  %k16 = load i64, ptr %85, align 8, !dbg !257, !noundef !25
  store i64 %k16, ptr %k.dbg.spill17, align 8, !dbg !257
    #dbg_declare(ptr %k.dbg.spill17, !174, !DIExpression(), !258)
  %_83 = load i32, ptr %code, align 4, !dbg !259, !noundef !25
  store i32 %_83, ptr %self.dbg.spill.i29, align 4
    #dbg_declare(ptr %self.dbg.spill.i29, !260, !DIExpression(), !264)
  store i32 %_67.0, ptr %rhs.dbg.spill.i28, align 4
    #dbg_declare(ptr %rhs.dbg.spill.i28, !263, !DIExpression(), !266)
  %86 = call i1 @llvm.expect.i1(i1 false, i1 false), !dbg !267
  br i1 %86, label %panic.i30, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_rem17h444bd8b2161bd3b6E.exit", !dbg !267

panic.i30:                                        ; preds = %bb41
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.1, i64 57, ptr align 8 @alloc_d1e68eb04df0257e0899e21ea2c814fc) #8, !dbg !267
  unreachable, !dbg !267

"_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_rem17h444bd8b2161bd3b6E.exit": ; preds = %bb41
  %87 = urem i32 %_83, %_67.0, !dbg !267
  store i32 %_67.0, ptr %self.dbg.spill.i25, align 4
    #dbg_declare(ptr %self.dbg.spill.i25, !268, !DIExpression(), !272)
  store i32 2, ptr %rhs.dbg.spill.i24, align 4
    #dbg_declare(ptr %rhs.dbg.spill.i24, !271, !DIExpression(), !274)
  %88 = call i1 @llvm.expect.i1(i1 false, i1 false), !dbg !275
  br i1 %88, label %panic.i26, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_div17hf40315d2ad7da5c6E.exit27", !dbg !275

panic.i26:                                        ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_rem17h444bd8b2161bd3b6E.exit"
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.0, i64 25, ptr align 8 @alloc_d1e68eb04df0257e0899e21ea2c814fc) #8, !dbg !275
  unreachable, !dbg !275

"_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_div17hf40315d2ad7da5c6E.exit27": ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_rem17h444bd8b2161bd3b6E.exit"
  %89 = udiv i32 %_67.0, 2, !dbg !275
  store i32 %87, ptr %self.dbg.spill.i32, align 4
    #dbg_declare(ptr %self.dbg.spill.i32, !246, !DIExpression(), !276)
  store i32 %89, ptr %rhs.dbg.spill.i31, align 4
    #dbg_declare(ptr %rhs.dbg.spill.i31, !249, !DIExpression(), !278)
  %90 = sub i32 %87, %89, !dbg !279
  %_86 = load i64, ptr %dst_base, align 8, !dbg !280, !noundef !25
  %91 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_86, i64 %k16), !dbg !280
  %_87.0 = extractvalue { i64, i1 } %91, 0, !dbg !280
  %_87.1 = extractvalue { i64, i1 } %91, 1, !dbg !280
  %92 = call i1 @llvm.expect.i1(i1 %_87.1, i1 false), !dbg !280
  br i1 %92, label %panic18, label %bb45, !dbg !280

bb5:                                              ; No predecessors!
  unreachable, !dbg !181

bb45:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_div17hf40315d2ad7da5c6E.exit27"
  %_89 = icmp ult i64 %_87.0, %grbuf.1, !dbg !281
  %93 = call i1 @llvm.expect.i1(i1 %_89, i1 true), !dbg !281
  br i1 %93, label %bb46, label %panic19, !dbg !281

panic18:                                          ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_div17hf40315d2ad7da5c6E.exit27"
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.2, i64 28, ptr align 8 @alloc_59fb040a696e2d1f0e26595542c3bf68) #8, !dbg !280
  unreachable, !dbg !280

bb46:                                             ; preds = %bb45
  %94 = getelementptr inbounds [0 x float], ptr %grbuf.0, i64 0, i64 %_87.0, !dbg !281
  %95 = sitofp i32 %90 to float, !dbg !281
  store float %95, ptr %94, align 4, !dbg !281
  %_91 = load i32, ptr %code, align 4, !dbg !282, !noundef !25
  store i32 %_91, ptr %self.dbg.spill.i23, align 4
    #dbg_declare(ptr %self.dbg.spill.i23, !268, !DIExpression(), !283)
  store i32 %_67.0, ptr %rhs.dbg.spill.i22, align 4
    #dbg_declare(ptr %rhs.dbg.spill.i22, !271, !DIExpression(), !285)
  %96 = call i1 @llvm.expect.i1(i1 false, i1 false), !dbg !286
  br i1 %96, label %panic.i, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_div17hf40315d2ad7da5c6E.exit", !dbg !286

panic.i:                                          ; preds = %bb46
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.0, i64 25, ptr align 8 @alloc_d1e68eb04df0257e0899e21ea2c814fc) #8, !dbg !286
  unreachable, !dbg !286

"_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_div17hf40315d2ad7da5c6E.exit": ; preds = %bb46
  %97 = udiv i32 %_91, %_67.0, !dbg !286
  store i32 %97, ptr %code, align 4, !dbg !287
  br label %bb39, !dbg !256

panic19:                                          ; preds = %bb45
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %_87.0, i64 %grbuf.1, ptr align 8 @alloc_0cbc833515dca069b47630970e53d9d7) #8, !dbg !281
  unreachable, !dbg !281

bb49:                                             ; preds = %bb48
  store i32 %_93.0, ptr %choff, align 4, !dbg !288
  br label %bb10, !dbg !202

panic20:                                          ; preds = %bb48
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.4, i64 33, ptr align 8 @alloc_3e0c3650949583151913ac91fd99edba) #8, !dbg !214
  unreachable, !dbg !214

bb50:                                             ; preds = %bb6
  ret i32 %_94.0, !dbg !289

panic21:                                          ; preds = %bb6
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.7, i64 33, ptr align 8 @alloc_dc0f9eb7ba01a59368e2fb3a79ea27ee) #8, !dbg !193
  unreachable, !dbg !193
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i32, i32 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hdf0ab3ca505c8bfeE"(i32 %self.0, i32 %self.1) unnamed_addr #1 !dbg !290 {
start:
  %self.dbg.spill = alloca { i32, i32 }, align 4
  %0 = getelementptr inbounds { i32, i32 }, ptr %self.dbg.spill, i32 0, i32 0
  store i32 %self.0, ptr %0, align 4
  %1 = getelementptr inbounds { i32, i32 }, ptr %self.dbg.spill, i32 0, i32 1
  store i32 %self.1, ptr %1, align 4
    #dbg_declare(ptr %self.dbg.spill, !299, !DIExpression(), !302)
  %2 = insertvalue { i32, i32 } poison, i32 %self.0, 0, !dbg !303
  %3 = insertvalue { i32, i32 } %2, i32 %self.1, 1, !dbg !303
  ret { i32, i32 } %3, !dbg !303
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i32, i32 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17he710101a5cff9815E"(ptr align 4 %self) unnamed_addr #1 !dbg !304 {
start:
  %self.dbg.spill = alloca ptr, align 8
  store ptr %self, ptr %self.dbg.spill, align 8
    #dbg_declare(ptr %self.dbg.spill, !326, !DIExpression(), !329)
  %0 = call { i32, i32 } @"_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17h4864fa454bed08ddE"(ptr align 4 %self), !dbg !330
  %1 = extractvalue { i32, i32 } %0, 0, !dbg !330
  %2 = extractvalue { i32, i32 } %0, 1, !dbg !330
  %3 = insertvalue { i32, i32 } poison, i32 %1, 0, !dbg !331
  %4 = insertvalue { i32, i32 } %3, i32 %2, 1, !dbg !331
  ret { i32, i32 } %4, !dbg !331
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.smul.with.overflow.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #5

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1, i64, ptr align 8) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #5

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64, i64, ptr align 8) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #5

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hbc8a26c8930e166eE"(i64 %self.0, i64 %self.1) unnamed_addr #1 !dbg !332 {
start:
  %self.dbg.spill = alloca { i64, i64 }, align 8
  %0 = getelementptr inbounds { i64, i64 }, ptr %self.dbg.spill, i32 0, i32 0
  store i64 %self.0, ptr %0, align 8
  %1 = getelementptr inbounds { i64, i64 }, ptr %self.dbg.spill, i32 0, i32 1
  store i64 %self.1, ptr %1, align 8
    #dbg_declare(ptr %self.dbg.spill, !336, !DIExpression(), !339)
  %2 = insertvalue { i64, i64 } poison, i64 %self.0, 0, !dbg !340
  %3 = insertvalue { i64, i64 } %2, i64 %self.1, 1, !dbg !340
  ret { i64, i64 } %3, !dbg !340
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h66006fd4f6bf96e3E"(ptr align 8 %self) unnamed_addr #1 !dbg !341 {
start:
  %self.dbg.spill = alloca ptr, align 8
  store ptr %self, ptr %self.dbg.spill, align 8
    #dbg_declare(ptr %self.dbg.spill, !360, !DIExpression(), !363)
  %0 = call { i64, i64 } @"_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17h79e70f992701c5dfE"(ptr align 8 %self), !dbg !364
  %1 = extractvalue { i64, i64 } %0, 0, !dbg !364
  %2 = extractvalue { i64, i64 } %0, 1, !dbg !364
  %3 = insertvalue { i64, i64 } poison, i64 %1, 0, !dbg !365
  %4 = insertvalue { i64, i64 } %3, i64 %2, 1, !dbg !365
  ret { i64, i64 } %4, !dbg !365
}

; Function Attrs: nonlazybind uwtable
define internal i32 @_ZN22dequantize_granule_lib3src3lib8get_bits17hf459dc36fcd0442eE(ptr align 8 %bs, i32 %n) unnamed_addr #0 !dbg !366 {
start:
  %0 = alloca ptr, align 8
  %count.dbg.spill1.i = alloca i64, align 8
  %count.dbg.spill.i = alloca i64, align 8
  %self.dbg.spill.i12 = alloca ptr, align 8
  %rhs.dbg.spill.i = alloca i32, align 4
  %self.dbg.spill.i = alloca i32, align 4
  %buf.dbg.spill = alloca { ptr, i64 }, align 8
  %bytes_needed.dbg.spill = alloca i64, align 8
  %byte_index.dbg.spill = alloca i64, align 8
  %s.dbg.spill = alloca i32, align 4
  %n.dbg.spill = alloca i32, align 4
  %bs.dbg.spill = alloca ptr, align 8
  %next = alloca i32, align 4
  %p = alloca i64, align 8
  %shl = alloca i32, align 4
  %cache = alloca i32, align 4
  %1 = alloca i32, align 4
  store ptr %bs, ptr %bs.dbg.spill, align 8
    #dbg_declare(ptr %bs.dbg.spill, !370, !DIExpression(), !393)
  store i32 %n, ptr %n.dbg.spill, align 4
    #dbg_declare(ptr %n.dbg.spill, !371, !DIExpression(), !394)
    #dbg_declare(ptr %cache, !372, !DIExpression(), !395)
    #dbg_declare(ptr %shl, !376, !DIExpression(), !396)
    #dbg_declare(ptr %p, !389, !DIExpression(), !397)
    #dbg_declare(ptr %next, !391, !DIExpression(), !398)
  store i32 0, ptr %cache, align 4, !dbg !399
  %2 = getelementptr inbounds %"src::lib::BsT", ptr %bs, i32 0, i32 1, !dbg !400
  %_6 = load i32, ptr %2, align 8, !dbg !400, !noundef !25
  %_5 = and i32 %_6, 7, !dbg !401
  store i32 %_5, ptr %s.dbg.spill, align 4, !dbg !401
    #dbg_declare(ptr %s.dbg.spill, !374, !DIExpression(), !402)
  store i32 %n, ptr %self.dbg.spill.i, align 4
    #dbg_declare(ptr %self.dbg.spill.i, !232, !DIExpression(), !403)
  store i32 %_5, ptr %rhs.dbg.spill.i, align 4
    #dbg_declare(ptr %rhs.dbg.spill.i, !240, !DIExpression(), !405)
  %3 = add i32 %n, %_5, !dbg !406
  store i32 %3, ptr %shl, align 4, !dbg !407
  %4 = getelementptr inbounds %"src::lib::BsT", ptr %bs, i32 0, i32 1, !dbg !408
  %_12 = load i32, ptr %4, align 8, !dbg !408, !noundef !25
  %_11 = ashr i32 %_12, 3, !dbg !409
  %byte_index = sext i32 %_11 to i64, !dbg !409
  store i64 %byte_index, ptr %byte_index.dbg.spill, align 8, !dbg !409
    #dbg_declare(ptr %byte_index.dbg.spill, !378, !DIExpression(), !410)
  %5 = getelementptr inbounds %"src::lib::BsT", ptr %bs, i32 0, i32 1, !dbg !411
  %6 = load i32, ptr %5, align 8, !dbg !411, !noundef !25
  %7 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %6, i32 %n), !dbg !411
  %_13.0 = extractvalue { i32, i1 } %7, 0, !dbg !411
  %_13.1 = extractvalue { i32, i1 } %7, 1, !dbg !411
  %8 = call i1 @llvm.expect.i1(i1 %_13.1, i1 false), !dbg !411
  br i1 %8, label %panic, label %bb2, !dbg !411

bb2:                                              ; preds = %start
  %9 = getelementptr inbounds %"src::lib::BsT", ptr %bs, i32 0, i32 1, !dbg !411
  store i32 %_13.0, ptr %9, align 8, !dbg !411
  %10 = getelementptr inbounds %"src::lib::BsT", ptr %bs, i32 0, i32 1, !dbg !412
  %_15 = load i32, ptr %10, align 8, !dbg !412, !noundef !25
  %11 = getelementptr inbounds %"src::lib::BsT", ptr %bs, i32 0, i32 2, !dbg !413
  %_16 = load i32, ptr %11, align 4, !dbg !413, !noundef !25
  %_14 = icmp sgt i32 %_15, %_16, !dbg !412
  br i1 %_14, label %bb3, label %bb4, !dbg !412

panic:                                            ; preds = %start
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.2, i64 28, ptr align 8 @alloc_60b69d0690b2f363dd73b39df6f61e4c) #8, !dbg !411
  unreachable, !dbg !411

bb4:                                              ; preds = %bb2
  %_20 = sext i32 %n to i64, !dbg !414
  %_21 = zext i32 %_5 to i64, !dbg !415
  %12 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_20, i64 %_21), !dbg !416
  %_22.0 = extractvalue { i64, i1 } %12, 0, !dbg !416
  %_22.1 = extractvalue { i64, i1 } %12, 1, !dbg !416
  %13 = call i1 @llvm.expect.i1(i1 %_22.1, i1 false), !dbg !416
  br i1 %13, label %panic1, label %bb5, !dbg !416

bb3:                                              ; preds = %bb2
  store i32 0, ptr %1, align 4, !dbg !417
  br label %bb21, !dbg !418

bb21:                                             ; preds = %bb20, %bb3
  %14 = load i32, ptr %1, align 4, !dbg !418, !noundef !25
  ret i32 %14, !dbg !418

bb5:                                              ; preds = %bb4
  %15 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_22.0, i64 7), !dbg !419
  %_23.0 = extractvalue { i64, i1 } %15, 0, !dbg !419
  %_23.1 = extractvalue { i64, i1 } %15, 1, !dbg !419
  %16 = call i1 @llvm.expect.i1(i1 %_23.1, i1 false), !dbg !419
  br i1 %16, label %panic2, label %bb6, !dbg !419

panic1:                                           ; preds = %bb4
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.2, i64 28, ptr align 8 @alloc_746a4da714e1f3ec8839f33275ccfd0b) #8, !dbg !416
  unreachable, !dbg !416

bb6:                                              ; preds = %bb5
  %bytes_needed = udiv i64 %_23.0, 8, !dbg !419
  store i64 %bytes_needed, ptr %bytes_needed.dbg.spill, align 8, !dbg !419
    #dbg_declare(ptr %bytes_needed.dbg.spill, !380, !DIExpression(), !420)
  %_26 = load ptr, ptr %bs, align 8, !dbg !421, !noundef !25
  store ptr %_26, ptr %self.dbg.spill.i12, align 8
    #dbg_declare(ptr %self.dbg.spill.i12, !422, !DIExpression(), !433)
    #dbg_declare(ptr %self.dbg.spill.i12, !435, !DIExpression(), !442)
  store i64 %byte_index, ptr %count.dbg.spill.i, align 8
    #dbg_declare(ptr %count.dbg.spill.i, !430, !DIExpression(), !444)
  store i64 %byte_index, ptr %count.dbg.spill1.i, align 8, !dbg !445
    #dbg_declare(ptr %count.dbg.spill1.i, !441, !DIExpression(), !446)
  %17 = getelementptr inbounds i8, ptr %_26, i64 %byte_index, !dbg !447
  store ptr %17, ptr %0, align 8, !dbg !447
  %18 = load ptr, ptr %0, align 8, !dbg !447, !noundef !25
  %19 = call { ptr, i64 } @_ZN4core5slice3raw14from_raw_parts17hd5961777209d5f45E(ptr %18, i64 %bytes_needed), !dbg !448
  %buf.0 = extractvalue { ptr, i64 } %19, 0, !dbg !448
  %buf.1 = extractvalue { ptr, i64 } %19, 1, !dbg !448
  %20 = getelementptr inbounds { ptr, i64 }, ptr %buf.dbg.spill, i32 0, i32 0, !dbg !448
  store ptr %buf.0, ptr %20, align 8, !dbg !448
  %21 = getelementptr inbounds { ptr, i64 }, ptr %buf.dbg.spill, i32 0, i32 1, !dbg !448
  store i64 %buf.1, ptr %21, align 8, !dbg !448
    #dbg_declare(ptr %buf.dbg.spill, !382, !DIExpression(), !449)
  store i64 0, ptr %p, align 8, !dbg !450
  %_34 = icmp ult i64 0, %buf.1, !dbg !451
  %22 = call i1 @llvm.expect.i1(i1 %_34, i1 true), !dbg !451
  br i1 %22, label %bb9, label %panic3, !dbg !451

panic2:                                           ; preds = %bb5
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.2, i64 28, ptr align 8 @alloc_36df7879a551edae8e8731318bcafdb9) #8, !dbg !419
  unreachable, !dbg !419

bb9:                                              ; preds = %bb6
  %23 = getelementptr inbounds [0 x i8], ptr %buf.0, i64 0, i64 0, !dbg !451
  %_31 = load i8, ptr %23, align 1, !dbg !451, !noundef !25
  %_30 = zext i8 %_31 to i32, !dbg !452
  %_36 = icmp ult i32 %_5, 32, !dbg !453
  %24 = call i1 @llvm.expect.i1(i1 %_36, i1 true), !dbg !453
  br i1 %24, label %bb10, label %panic4, !dbg !453

panic3:                                           ; preds = %bb6
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 0, i64 %buf.1, ptr align 8 @alloc_50126994a3474650c810fd705ba7a045) #8, !dbg !451
  unreachable, !dbg !451

bb10:                                             ; preds = %bb9
  %25 = and i32 %_5, 31, !dbg !453
  %_35 = ashr i32 255, %25, !dbg !453
  %_29 = and i32 %_30, %_35, !dbg !454
  store i32 %_29, ptr %next, align 4, !dbg !454
  %26 = load i64, ptr %p, align 8, !dbg !455, !noundef !25
  %27 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %26, i64 1), !dbg !455
  %_37.0 = extractvalue { i64, i1 } %27, 0, !dbg !455
  %_37.1 = extractvalue { i64, i1 } %27, 1, !dbg !455
  %28 = call i1 @llvm.expect.i1(i1 %_37.1, i1 false), !dbg !455
  br i1 %28, label %panic5, label %bb11, !dbg !455

panic4:                                           ; preds = %bb9
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.3, i64 36, ptr align 8 @alloc_012e7bc7e026f73da38ae71b84083700) #8, !dbg !453
  unreachable, !dbg !453

bb11:                                             ; preds = %bb10
  store i64 %_37.0, ptr %p, align 8, !dbg !455
  br label %bb12, !dbg !456

panic5:                                           ; preds = %bb10
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.2, i64 28, ptr align 8 @alloc_7f5c64d0383c8047320b606fdcbe37b5) #8, !dbg !455
  unreachable, !dbg !455

bb12:                                             ; preds = %bb18, %bb11
  %29 = load i32, ptr %shl, align 4, !dbg !457, !noundef !25
  %30 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %29, i32 8), !dbg !457
  %_38.0 = extractvalue { i32, i1 } %30, 0, !dbg !457
  %_38.1 = extractvalue { i32, i1 } %30, 1, !dbg !457
  %31 = call i1 @llvm.expect.i1(i1 %_38.1, i1 false), !dbg !457
  br i1 %31, label %panic6, label %bb13, !dbg !457

bb13:                                             ; preds = %bb12
  store i32 %_38.0, ptr %shl, align 4, !dbg !457
  %_40 = load i32, ptr %shl, align 4, !dbg !458, !noundef !25
  %_39 = icmp sle i32 %_40, 0, !dbg !458
  br i1 %_39, label %bb14, label %bb15, !dbg !458

panic6:                                           ; preds = %bb12
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.4, i64 33, ptr align 8 @alloc_2bbd8fa8bed9bf8a9c3ce3e9cd14e987) #8, !dbg !457
  unreachable, !dbg !457

bb15:                                             ; preds = %bb13
  %_42 = load i32, ptr %next, align 4, !dbg !459, !noundef !25
  %_43 = load i32, ptr %shl, align 4, !dbg !460, !noundef !25
  %_45 = icmp ult i32 %_43, 32, !dbg !459
  %32 = call i1 @llvm.expect.i1(i1 %_45, i1 true), !dbg !459
  br i1 %32, label %bb16, label %panic9, !dbg !459

bb14:                                             ; preds = %bb13
  %_51 = load i32, ptr %cache, align 4, !dbg !461, !noundef !25
  %_53 = load i32, ptr %next, align 4, !dbg !462, !noundef !25
  %_55 = load i32, ptr %shl, align 4, !dbg !463, !noundef !25
  %_56 = icmp eq i32 %_55, -2147483648, !dbg !464
  %33 = call i1 @llvm.expect.i1(i1 %_56, i1 false), !dbg !464
  br i1 %33, label %panic7, label %bb19, !dbg !464

bb19:                                             ; preds = %bb14
  %_54 = sub i32 0, %_55, !dbg !464
  %_58 = icmp ult i32 %_54, 32, !dbg !465
  %34 = call i1 @llvm.expect.i1(i1 %_58, i1 true), !dbg !465
  br i1 %34, label %bb20, label %panic8, !dbg !465

panic7:                                           ; preds = %bb14
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.5, i64 31, ptr align 8 @alloc_bb0c63f55f53f1875c303e472fabe8a2) #8, !dbg !464
  unreachable, !dbg !464

bb20:                                             ; preds = %bb19
  %35 = and i32 %_54, 31, !dbg !465
  %_52 = lshr i32 %_53, %35, !dbg !465
  %36 = or i32 %_51, %_52, !dbg !461
  store i32 %36, ptr %1, align 4, !dbg !461
  br label %bb21, !dbg !418

panic8:                                           ; preds = %bb19
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.3, i64 36, ptr align 8 @alloc_580d367d53f29d06d4e1a88f7820bf87) #8, !dbg !465
  unreachable, !dbg !465

bb16:                                             ; preds = %bb15
  %37 = and i32 %_43, 31, !dbg !459
  %_41 = shl i32 %_42, %37, !dbg !459
  %38 = load i32, ptr %cache, align 4, !dbg !466, !noundef !25
  %39 = or i32 %38, %_41, !dbg !466
  store i32 %39, ptr %cache, align 4, !dbg !466
  %_47 = load i64, ptr %p, align 8, !dbg !467, !noundef !25
  %_49 = icmp ult i64 %_47, %buf.1, !dbg !468
  %40 = call i1 @llvm.expect.i1(i1 %_49, i1 true), !dbg !468
  br i1 %40, label %bb17, label %panic10, !dbg !468

panic9:                                           ; preds = %bb15
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.6, i64 35, ptr align 8 @alloc_93b4632e2044e91617843fbef389f65b) #8, !dbg !459
  unreachable, !dbg !459

bb17:                                             ; preds = %bb16
  %41 = getelementptr inbounds [0 x i8], ptr %buf.0, i64 0, i64 %_47, !dbg !468
  %_46 = load i8, ptr %41, align 1, !dbg !468, !noundef !25
  %42 = zext i8 %_46 to i32, !dbg !469
  store i32 %42, ptr %next, align 4, !dbg !469
  %43 = load i64, ptr %p, align 8, !dbg !470, !noundef !25
  %44 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %43, i64 1), !dbg !470
  %_50.0 = extractvalue { i64, i1 } %44, 0, !dbg !470
  %_50.1 = extractvalue { i64, i1 } %44, 1, !dbg !470
  %45 = call i1 @llvm.expect.i1(i1 %_50.1, i1 false), !dbg !470
  br i1 %45, label %panic11, label %bb18, !dbg !470

panic10:                                          ; preds = %bb16
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %_47, i64 %buf.1, ptr align 8 @alloc_95ee0b237610391790bf96d43fb0a464) #8, !dbg !468
  unreachable, !dbg !468

bb18:                                             ; preds = %bb17
  store i64 %_50.0, ptr %p, align 8, !dbg !470
  br label %bb12, !dbg !456

panic11:                                          ; preds = %bb17
  call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr align 1 @str.2, i64 28, ptr align 8 @alloc_9295eaf8dd8ddf58e4cfe31d82d4c4fe) #8, !dbg !470
  unreachable, !dbg !470
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #5

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, i64 } @_ZN4core5slice3raw14from_raw_parts17hd5961777209d5f45E(ptr %data, i64 %len) unnamed_addr #1 !dbg !471 {
start:
  %data_address.dbg.spill = alloca ptr, align 8
  %len.dbg.spill = alloca i64, align 8
  %data.dbg.spill = alloca ptr, align 8
  %_8 = alloca { ptr, i64 }, align 8
  %_7 = alloca %"core::ptr::metadata::PtrRepr<[u8]>", align 8
  store ptr %data, ptr %data.dbg.spill, align 8
    #dbg_declare(ptr %data.dbg.spill, !475, !DIExpression(), !477)
    #dbg_declare(ptr %data.dbg.spill, !478, !DIExpression(), !488)
    #dbg_declare(ptr %data.dbg.spill, !490, !DIExpression(), !497)
  store i64 %len, ptr %len.dbg.spill, align 8
    #dbg_declare(ptr %len.dbg.spill, !476, !DIExpression(), !499)
    #dbg_declare(ptr %len.dbg.spill, !487, !DIExpression(), !500)
    #dbg_declare(ptr %len.dbg.spill, !501, !DIExpression(), !507)
  store ptr %data, ptr %data_address.dbg.spill, align 8, !dbg !509
    #dbg_declare(ptr %data_address.dbg.spill, !506, !DIExpression(), !510)
  store ptr %data, ptr %_8, align 8, !dbg !511
  %0 = getelementptr inbounds { ptr, i64 }, ptr %_8, i32 0, i32 1, !dbg !511
  store i64 %len, ptr %0, align 8, !dbg !511
  %1 = getelementptr inbounds { ptr, i64 }, ptr %_8, i32 0, i32 0, !dbg !512
  %2 = load ptr, ptr %1, align 8, !dbg !512, !noundef !25
  %3 = getelementptr inbounds { ptr, i64 }, ptr %_8, i32 0, i32 1, !dbg !512
  %4 = load i64, ptr %3, align 8, !dbg !512, !noundef !25
  %5 = getelementptr inbounds { ptr, i64 }, ptr %_7, i32 0, i32 0, !dbg !512
  store ptr %2, ptr %5, align 8, !dbg !512
  %6 = getelementptr inbounds { ptr, i64 }, ptr %_7, i32 0, i32 1, !dbg !512
  store i64 %4, ptr %6, align 8, !dbg !512
  %7 = getelementptr inbounds { ptr, i64 }, ptr %_7, i32 0, i32 0, !dbg !512
  %_3.0 = load ptr, ptr %7, align 8, !dbg !512, !noundef !25
  %8 = getelementptr inbounds { ptr, i64 }, ptr %_7, i32 0, i32 1, !dbg !512
  %_3.1 = load i64, ptr %8, align 8, !dbg !512, !noundef !25
  %9 = insertvalue { ptr, i64 } poison, ptr %_3.0, 0, !dbg !513
  %10 = insertvalue { ptr, i64 } %9, i64 %_3.1, 1, !dbg !513
  ret { ptr, i64 } %10, !dbg !513
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @"_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17h79e70f992701c5dfE"(ptr align 8 %self) unnamed_addr #1 !dbg !514 {
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
    #dbg_declare(ptr %self.dbg.spill, !517, !DIExpression(), !520)
    #dbg_declare(ptr %src, !521, !DIExpression(), !528)
  %_4 = getelementptr inbounds { i64, i64 }, ptr %self, i32 0, i32 1, !dbg !542
  %_2 = call zeroext i1 @"_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17ha7ee1776bb7d0fb2E"(ptr align 8 %self, ptr align 8 %_4), !dbg !543
  br i1 %_2, label %bb2, label %bb5, !dbg !543

bb5:                                              ; preds = %start
  store i64 0, ptr %0, align 8, !dbg !544
  br label %bb6, !dbg !545

bb2:                                              ; preds = %start
  store ptr %self, ptr %self.dbg.spill.i, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !546, !DIExpression(), !556)
  %1 = load i64, ptr %self, align 8, !dbg !558, !noundef !25
  %n = call i64 @"_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17heddc6dd89e2142cfE"(i64 %1, i64 1), !dbg !559
  store i64 %n, ptr %n.dbg.spill, align 8, !dbg !559
    #dbg_declare(ptr %n.dbg.spill, !518, !DIExpression(), !560)
  store ptr %self, ptr %dest.dbg.spill, align 8, !dbg !561
    #dbg_declare(ptr %dest.dbg.spill, !538, !DIExpression(), !562)
  store i64 %n, ptr %src.dbg.spill, align 8, !dbg !563
    #dbg_declare(ptr %src.dbg.spill, !539, !DIExpression(), !564)
  store ptr %self, ptr %src.dbg.spill1, align 8, !dbg !565
    #dbg_declare(ptr %src.dbg.spill1, !566, !DIExpression(), !572)
  %result = load i64, ptr %self, align 8, !dbg !574, !noundef !25
  store i64 %result, ptr %result.dbg.spill, align 8, !dbg !574
    #dbg_declare(ptr %result.dbg.spill, !540, !DIExpression(), !575)
  store ptr %self, ptr %dst.dbg.spill, align 8, !dbg !576
    #dbg_declare(ptr %dst.dbg.spill, !527, !DIExpression(), !577)
  store i64 %n, ptr %src, align 8, !dbg !578
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %self, ptr align 8 %src, i64 8, i1 false), !dbg !579
  %2 = getelementptr inbounds { i64, i64 }, ptr %0, i32 0, i32 1, !dbg !580
  store i64 %result, ptr %2, align 8, !dbg !580
  store i64 1, ptr %0, align 8, !dbg !580
  br label %bb6, !dbg !545

bb6:                                              ; preds = %bb2, %bb5
  %3 = getelementptr inbounds { i64, i64 }, ptr %0, i32 0, i32 0, !dbg !581
  %4 = load i64, ptr %3, align 8, !dbg !581, !range !222, !noundef !25
  %5 = getelementptr inbounds { i64, i64 }, ptr %0, i32 0, i32 1, !dbg !581
  %6 = load i64, ptr %5, align 8, !dbg !581
  %7 = insertvalue { i64, i64 } poison, i64 %4, 0, !dbg !581
  %8 = insertvalue { i64, i64 } %7, i64 %6, 1, !dbg !581
  ret { i64, i64 } %8, !dbg !581
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17ha7ee1776bb7d0fb2E"(ptr align 8 %self, ptr align 8 %other) unnamed_addr #1 !dbg !582 {
start:
  %other.dbg.spill = alloca ptr, align 8
  %self.dbg.spill = alloca ptr, align 8
  store ptr %self, ptr %self.dbg.spill, align 8
    #dbg_declare(ptr %self.dbg.spill, !591, !DIExpression(), !593)
  store ptr %other, ptr %other.dbg.spill, align 8
    #dbg_declare(ptr %other.dbg.spill, !592, !DIExpression(), !594)
  %_3 = load i64, ptr %self, align 8, !dbg !595, !noundef !25
  %_4 = load i64, ptr %other, align 8, !dbg !596, !noundef !25
  %0 = icmp ult i64 %_3, %_4, !dbg !595
  ret i1 %0, !dbg !597
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @"_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17heddc6dd89e2142cfE"(i64 %start1, i64 %n) unnamed_addr #1 !dbg !598 {
start:
  %0 = alloca i64, align 8
  %n.dbg.spill = alloca i64, align 8
  %start.dbg.spill = alloca i64, align 8
  store i64 %start1, ptr %start.dbg.spill, align 8
    #dbg_declare(ptr %start.dbg.spill, !603, !DIExpression(), !605)
    #dbg_declare(ptr %start.dbg.spill, !606, !DIExpression(), !611)
  store i64 %n, ptr %n.dbg.spill, align 8
    #dbg_declare(ptr %n.dbg.spill, !604, !DIExpression(), !613)
    #dbg_declare(ptr %n.dbg.spill, !610, !DIExpression(), !614)
  %1 = add nuw i64 %start1, %n, !dbg !615
  store i64 %1, ptr %0, align 8, !dbg !615
  %2 = load i64, ptr %0, align 8, !dbg !615, !noundef !25
  ret i64 %2, !dbg !616
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i32, i32 } @"_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17h4864fa454bed08ddE"(ptr align 4 %self) unnamed_addr #1 !dbg !617 {
start:
  %self.dbg.spill.i = alloca ptr, align 8
  %dst.dbg.spill = alloca ptr, align 8
  %result.dbg.spill = alloca i32, align 4
  %src.dbg.spill1 = alloca ptr, align 8
  %src.dbg.spill = alloca i32, align 4
  %dest.dbg.spill = alloca ptr, align 8
  %n.dbg.spill = alloca i32, align 4
  %self.dbg.spill = alloca ptr, align 8
  %src = alloca i32, align 4
  %0 = alloca { i32, i32 }, align 4
  store ptr %self, ptr %self.dbg.spill, align 8
    #dbg_declare(ptr %self.dbg.spill, !619, !DIExpression(), !622)
    #dbg_declare(ptr %src, !623, !DIExpression(), !630)
  %_4 = getelementptr inbounds { i32, i32 }, ptr %self, i32 0, i32 1, !dbg !642
  %_2 = call zeroext i1 @"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17hef1c20b71dcec31aE"(ptr align 4 %self, ptr align 4 %_4), !dbg !643
  br i1 %_2, label %bb2, label %bb5, !dbg !643

bb5:                                              ; preds = %start
  store i32 0, ptr %0, align 4, !dbg !644
  br label %bb6, !dbg !645

bb2:                                              ; preds = %start
  store ptr %self, ptr %self.dbg.spill.i, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !646, !DIExpression(), !653)
  %1 = load i32, ptr %self, align 4, !dbg !655, !noundef !25
  %n = call i32 @"_ZN47_$LT$i32$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17h7a37a5bdda0a9711E"(i32 %1, i64 1), !dbg !656
  store i32 %n, ptr %n.dbg.spill, align 4, !dbg !656
    #dbg_declare(ptr %n.dbg.spill, !620, !DIExpression(), !657)
  store ptr %self, ptr %dest.dbg.spill, align 8, !dbg !658
    #dbg_declare(ptr %dest.dbg.spill, !638, !DIExpression(), !659)
  store i32 %n, ptr %src.dbg.spill, align 4, !dbg !660
    #dbg_declare(ptr %src.dbg.spill, !639, !DIExpression(), !661)
  store ptr %self, ptr %src.dbg.spill1, align 8, !dbg !662
    #dbg_declare(ptr %src.dbg.spill1, !663, !DIExpression(), !669)
  %result = load i32, ptr %self, align 4, !dbg !671, !noundef !25
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !671
    #dbg_declare(ptr %result.dbg.spill, !640, !DIExpression(), !672)
  store ptr %self, ptr %dst.dbg.spill, align 8, !dbg !673
    #dbg_declare(ptr %dst.dbg.spill, !629, !DIExpression(), !674)
  store i32 %n, ptr %src, align 4, !dbg !675
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %self, ptr align 4 %src, i64 4, i1 false), !dbg !676
  %2 = getelementptr inbounds { i32, i32 }, ptr %0, i32 0, i32 1, !dbg !677
  store i32 %result, ptr %2, align 4, !dbg !677
  store i32 1, ptr %0, align 4, !dbg !677
  br label %bb6, !dbg !645

bb6:                                              ; preds = %bb2, %bb5
  %3 = getelementptr inbounds { i32, i32 }, ptr %0, i32 0, i32 0, !dbg !678
  %4 = load i32, ptr %3, align 4, !dbg !678, !range !192, !noundef !25
  %5 = getelementptr inbounds { i32, i32 }, ptr %0, i32 0, i32 1, !dbg !678
  %6 = load i32, ptr %5, align 4, !dbg !678
  %7 = insertvalue { i32, i32 } poison, i32 %4, 0, !dbg !678
  %8 = insertvalue { i32, i32 } %7, i32 %6, 1, !dbg !678
  ret { i32, i32 } %8, !dbg !678
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17hef1c20b71dcec31aE"(ptr align 4 %self, ptr align 4 %other) unnamed_addr #1 !dbg !679 {
start:
  %other.dbg.spill = alloca ptr, align 8
  %self.dbg.spill = alloca ptr, align 8
  store ptr %self, ptr %self.dbg.spill, align 8
    #dbg_declare(ptr %self.dbg.spill, !684, !DIExpression(), !686)
  store ptr %other, ptr %other.dbg.spill, align 8
    #dbg_declare(ptr %other.dbg.spill, !685, !DIExpression(), !687)
  %_3 = load i32, ptr %self, align 4, !dbg !688, !noundef !25
  %_4 = load i32, ptr %other, align 4, !dbg !689, !noundef !25
  %0 = icmp slt i32 %_3, %_4, !dbg !688
  ret i1 %0, !dbg !690
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN47_$LT$i32$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17h7a37a5bdda0a9711E"(i32 %start1, i64 %n) unnamed_addr #1 !dbg !691 {
start:
  %0 = alloca i32, align 4
  %rhs.dbg.spill = alloca i32, align 4
  %n.dbg.spill = alloca i64, align 8
  %start.dbg.spill = alloca i32, align 4
  store i32 %start1, ptr %start.dbg.spill, align 4
    #dbg_declare(ptr %start.dbg.spill, !696, !DIExpression(), !698)
    #dbg_declare(ptr %start.dbg.spill, !699, !DIExpression(), !707)
  store i64 %n, ptr %n.dbg.spill, align 8
    #dbg_declare(ptr %n.dbg.spill, !697, !DIExpression(), !709)
  %rhs = trunc i64 %n to i32, !dbg !710
  store i32 %rhs, ptr %rhs.dbg.spill, align 4, !dbg !710
    #dbg_declare(ptr %rhs.dbg.spill, !706, !DIExpression(), !711)
  %1 = add nsw i32 %start1, %rhs, !dbg !712
  store i32 %1, ptr %0, align 4, !dbg !712
  %2 = load i32, ptr %0, align 4, !dbg !712, !noundef !25
  ret i32 %2, !dbg !713
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_1() unnamed_addr #0 !dbg !714 {
start:
  %self.dbg.spill.i4 = alloca { ptr, i64 }, align 8
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %i.dbg.spill = alloca i64, align 8
  %ret.dbg.spill = alloca i32, align 4
  %_25 = alloca { i64, i64 }, align 8
  %iter = alloca { i64, i64 }, align 8
  %_23 = alloca { i64, i64 }, align 8
  %_10 = alloca [64 x i8], align 1
  %_9 = alloca [64 x i8], align 1
  %_8 = alloca [192 x float], align 4
  %sci = alloca %"src::lib::L12ScaleInfo", align 4
  %bs = alloca %"src::lib::BsT", align 8
  %_2 = alloca [0 x i8], align 1
  %grbuf = alloca [576 x float], align 4
  %0 = alloca i8, align 1
  %b_buf.dbg.spill = alloca [0 x i8], align 1
    #dbg_declare(ptr %b_buf.dbg.spill, !723, !DIExpression(), !738)
    #dbg_declare(ptr %grbuf, !718, !DIExpression(), !739)
    #dbg_declare(ptr %bs, !728, !DIExpression(), !740)
    #dbg_declare(ptr %sci, !730, !DIExpression(), !741)
    #dbg_declare(ptr %iter, !734, !DIExpression(), !742)
  %1 = getelementptr inbounds [576 x float], ptr %grbuf, i64 0, i64 0, !dbg !743
  %2 = getelementptr inbounds [576 x float], ptr %grbuf, i64 0, i64 0, !dbg !743
  %3 = getelementptr inbounds [576 x float], ptr %grbuf, i64 0, i64 576, !dbg !743
  br label %repeat_loop_header, !dbg !743

repeat_loop_header:                               ; preds = %repeat_loop_body, %start
  %4 = phi ptr [ %2, %start ], [ %6, %repeat_loop_body ]
  %5 = icmp ne ptr %4, %3
  br i1 %5, label %repeat_loop_body, label %repeat_loop_next

repeat_loop_body:                                 ; preds = %repeat_loop_header
  store float 0.000000e+00, ptr %4, align 4
  %6 = getelementptr inbounds float, ptr %4, i64 1
  br label %repeat_loop_header

repeat_loop_next:                                 ; preds = %repeat_loop_header
  store ptr %_2, ptr %self.dbg.spill.i4, align 8
  %7 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i4, i32 0, i32 1
  store i64 0, ptr %7, align 8
    #dbg_declare(ptr %self.dbg.spill.i4, !744, !DIExpression(), !751)
  store ptr %_2, ptr %bs, align 8, !dbg !753
  %8 = getelementptr inbounds %"src::lib::BsT", ptr %bs, i32 0, i32 1, !dbg !753
  store i32 0, ptr %8, align 8, !dbg !753
  %9 = getelementptr inbounds %"src::lib::BsT", ptr %bs, i32 0, i32 2, !dbg !753
  store i32 0, ptr %9, align 4, !dbg !753
  %10 = getelementptr inbounds [192 x float], ptr %_8, i64 0, i64 0, !dbg !754
  %11 = getelementptr inbounds [192 x float], ptr %_8, i64 0, i64 0, !dbg !754
  %12 = getelementptr inbounds [192 x float], ptr %_8, i64 0, i64 192, !dbg !754
  br label %repeat_loop_header1, !dbg !754

repeat_loop_header1:                              ; preds = %repeat_loop_body2, %repeat_loop_next
  %13 = phi ptr [ %11, %repeat_loop_next ], [ %15, %repeat_loop_body2 ]
  %14 = icmp ne ptr %13, %12
  br i1 %14, label %repeat_loop_body2, label %repeat_loop_next3

repeat_loop_body2:                                ; preds = %repeat_loop_header1
  store float 0.000000e+00, ptr %13, align 4
  %15 = getelementptr inbounds float, ptr %13, i64 1
  br label %repeat_loop_header1

repeat_loop_next3:                                ; preds = %repeat_loop_header1
  %16 = getelementptr inbounds [64 x i8], ptr %_9, i64 0, i64 0, !dbg !755
  call void @llvm.memset.p0.i64(ptr align 1 %16, i8 0, i64 64, i1 false), !dbg !755
  %17 = getelementptr inbounds [64 x i8], ptr %_10, i64 0, i64 0, !dbg !756
  call void @llvm.memset.p0.i64(ptr align 1 %17, i8 0, i64 64, i1 false), !dbg !756
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %sci, ptr align 4 %_8, i64 768, i1 false), !dbg !757
  %18 = getelementptr inbounds %"src::lib::L12ScaleInfo", ptr %sci, i32 0, i32 1, !dbg !757
  store i8 0, ptr %18, align 4, !dbg !757
  %19 = getelementptr inbounds %"src::lib::L12ScaleInfo", ptr %sci, i32 0, i32 2, !dbg !757
  store i8 0, ptr %19, align 1, !dbg !757
  %20 = getelementptr inbounds %"src::lib::L12ScaleInfo", ptr %sci, i32 0, i32 3, !dbg !757
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %20, ptr align 1 %_9, i64 64, i1 false), !dbg !757
  %21 = getelementptr inbounds %"src::lib::L12ScaleInfo", ptr %sci, i32 0, i32 4, !dbg !757
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %21, ptr align 1 %_10, i64 64, i1 false), !dbg !757
  store ptr %grbuf, ptr %self.dbg.spill.i, align 8
  %22 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 576, ptr %22, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !758, !DIExpression(), !763)
  %ret = call i32 @dequantize_granule(ptr %grbuf, ptr %bs, ptr %sci, i32 0), !dbg !765
  store i32 %ret, ptr %ret.dbg.spill, align 4, !dbg !765
    #dbg_declare(ptr %ret.dbg.spill, !732, !DIExpression(), !766)
  %23 = icmp eq i32 %ret, 0, !dbg !767
  br i1 %23, label %bb6, label %bb4, !dbg !767

bb6:                                              ; preds = %repeat_loop_next3
  %24 = getelementptr inbounds %"src::lib::BsT", ptr %bs, i32 0, i32 1, !dbg !768
  %_20 = load i32, ptr %24, align 8, !dbg !768, !noundef !25
  %25 = icmp eq i32 %_20, 0, !dbg !768
  br i1 %25, label %bb8, label %bb7, !dbg !768

bb4:                                              ; preds = %repeat_loop_next3
  store i8 0, ptr %0, align 1, !dbg !769
  br label %bb18, !dbg !770

bb18:                                             ; preds = %bb17, %bb15, %bb9, %bb7, %bb4
  %26 = load i8, ptr %0, align 1, !dbg !773, !range !774, !noundef !25
  %27 = trunc i8 %26 to i1, !dbg !773
  ret i1 %27, !dbg !773

bb8:                                              ; preds = %bb6
  %28 = getelementptr inbounds %"src::lib::BsT", ptr %bs, i32 0, i32 2, !dbg !775
  %_21 = load i32, ptr %28, align 4, !dbg !775, !noundef !25
  %29 = icmp eq i32 %_21, 0, !dbg !775
  br i1 %29, label %bb10, label %bb9, !dbg !775

bb7:                                              ; preds = %bb6
  store i8 0, ptr %0, align 1, !dbg !776
  br label %bb18, !dbg !770

bb10:                                             ; preds = %bb8
  store i64 0, ptr %_23, align 8, !dbg !777
  %30 = getelementptr inbounds { i64, i64 }, ptr %_23, i32 0, i32 1, !dbg !777
  store i64 576, ptr %30, align 8, !dbg !777
  %31 = getelementptr inbounds { i64, i64 }, ptr %_23, i32 0, i32 0, !dbg !777
  %32 = load i64, ptr %31, align 8, !dbg !777, !noundef !25
  %33 = getelementptr inbounds { i64, i64 }, ptr %_23, i32 0, i32 1, !dbg !777
  %34 = load i64, ptr %33, align 8, !dbg !777, !noundef !25
  %35 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hbc8a26c8930e166eE"(i64 %32, i64 %34), !dbg !777
  %_22.0 = extractvalue { i64, i64 } %35, 0, !dbg !777
  %_22.1 = extractvalue { i64, i64 } %35, 1, !dbg !777
  %36 = getelementptr inbounds { i64, i64 }, ptr %iter, i32 0, i32 0, !dbg !777
  store i64 %_22.0, ptr %36, align 8, !dbg !777
  %37 = getelementptr inbounds { i64, i64 }, ptr %iter, i32 0, i32 1, !dbg !777
  store i64 %_22.1, ptr %37, align 8, !dbg !777
  br label %bb12, !dbg !778

bb9:                                              ; preds = %bb8
  store i8 0, ptr %0, align 1, !dbg !779
  br label %bb18, !dbg !770

bb12:                                             ; preds = %bb16, %bb10
  %38 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h66006fd4f6bf96e3E"(ptr align 8 %iter), !dbg !742
  store { i64, i64 } %38, ptr %_25, align 8, !dbg !742
  %_27 = load i64, ptr %_25, align 8, !dbg !742, !range !222, !noundef !25
  %39 = icmp eq i64 %_27, 0, !dbg !742
  br i1 %39, label %bb15, label %bb14, !dbg !742

bb15:                                             ; preds = %bb12
  store i8 1, ptr %0, align 1, !dbg !780
  br label %bb18, !dbg !773

bb14:                                             ; preds = %bb12
  %40 = getelementptr inbounds { i64, i64 }, ptr %_25, i32 0, i32 1, !dbg !781
  %i = load i64, ptr %40, align 8, !dbg !781, !noundef !25
  store i64 %i, ptr %i.dbg.spill, align 8, !dbg !781
    #dbg_declare(ptr %i.dbg.spill, !736, !DIExpression(), !782)
  %_32 = icmp ult i64 %i, 576, !dbg !783
  %41 = call i1 @llvm.expect.i1(i1 %_32, i1 true), !dbg !783
  br i1 %41, label %bb16, label %panic, !dbg !783

bb5:                                              ; No predecessors!
  unreachable, !dbg !784

bb16:                                             ; preds = %bb14
  %42 = getelementptr inbounds [576 x float], ptr %grbuf, i64 0, i64 %i, !dbg !783
  %_30 = load float, ptr %42, align 4, !dbg !783, !noundef !25
  %_29 = fcmp une float %_30, 0.000000e+00, !dbg !783
  br i1 %_29, label %bb17, label %bb12, !dbg !783

panic:                                            ; preds = %bb14
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 576, ptr align 8 @alloc_dd7ae175172ce538d104b300a117e7b2) #8, !dbg !783
  unreachable, !dbg !783

bb17:                                             ; preds = %bb16
  store i8 0, ptr %0, align 1, !dbg !785
  br label %bb18, !dbg !770
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_2() unnamed_addr #0 !dbg !786 {
start:
  %self.dbg.spill.i4 = alloca { ptr, i64 }, align 8
  %self.dbg.spill.i = alloca { ptr, i64 }, align 8
  %i.dbg.spill = alloca i64, align 8
  %ret.dbg.spill = alloca i32, align 4
  %_25 = alloca { i64, i64 }, align 8
  %iter = alloca { i64, i64 }, align 8
  %_23 = alloca { i64, i64 }, align 8
  %_10 = alloca [64 x i8], align 1
  %_9 = alloca [64 x i8], align 1
  %_8 = alloca [192 x float], align 4
  %sci = alloca %"src::lib::L12ScaleInfo", align 4
  %bs = alloca %"src::lib::BsT", align 8
  %_2 = alloca [0 x i8], align 1
  %grbuf = alloca [576 x float], align 4
  %0 = alloca i8, align 1
  %b_buf.dbg.spill = alloca [0 x i8], align 1
    #dbg_declare(ptr %b_buf.dbg.spill, !790, !DIExpression(), !802)
    #dbg_declare(ptr %grbuf, !788, !DIExpression(), !803)
    #dbg_declare(ptr %bs, !792, !DIExpression(), !804)
    #dbg_declare(ptr %sci, !794, !DIExpression(), !805)
    #dbg_declare(ptr %iter, !798, !DIExpression(), !806)
  %1 = getelementptr inbounds [576 x float], ptr %grbuf, i64 0, i64 0, !dbg !807
  %2 = getelementptr inbounds [576 x float], ptr %grbuf, i64 0, i64 0, !dbg !807
  %3 = getelementptr inbounds [576 x float], ptr %grbuf, i64 0, i64 576, !dbg !807
  br label %repeat_loop_header, !dbg !807

repeat_loop_header:                               ; preds = %repeat_loop_body, %start
  %4 = phi ptr [ %2, %start ], [ %6, %repeat_loop_body ]
  %5 = icmp ne ptr %4, %3
  br i1 %5, label %repeat_loop_body, label %repeat_loop_next

repeat_loop_body:                                 ; preds = %repeat_loop_header
  store float 0x42AAAAAAA0000000, ptr %4, align 4
  %6 = getelementptr inbounds float, ptr %4, i64 1
  br label %repeat_loop_header

repeat_loop_next:                                 ; preds = %repeat_loop_header
  store ptr %_2, ptr %self.dbg.spill.i4, align 8
  %7 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i4, i32 0, i32 1
  store i64 0, ptr %7, align 8
    #dbg_declare(ptr %self.dbg.spill.i4, !744, !DIExpression(), !808)
  store ptr %_2, ptr %bs, align 8, !dbg !810
  %8 = getelementptr inbounds %"src::lib::BsT", ptr %bs, i32 0, i32 1, !dbg !810
  store i32 0, ptr %8, align 8, !dbg !810
  %9 = getelementptr inbounds %"src::lib::BsT", ptr %bs, i32 0, i32 2, !dbg !810
  store i32 0, ptr %9, align 4, !dbg !810
  %10 = getelementptr inbounds [192 x float], ptr %_8, i64 0, i64 0, !dbg !811
  %11 = getelementptr inbounds [192 x float], ptr %_8, i64 0, i64 0, !dbg !811
  %12 = getelementptr inbounds [192 x float], ptr %_8, i64 0, i64 192, !dbg !811
  br label %repeat_loop_header1, !dbg !811

repeat_loop_header1:                              ; preds = %repeat_loop_body2, %repeat_loop_next
  %13 = phi ptr [ %11, %repeat_loop_next ], [ %15, %repeat_loop_body2 ]
  %14 = icmp ne ptr %13, %12
  br i1 %14, label %repeat_loop_body2, label %repeat_loop_next3

repeat_loop_body2:                                ; preds = %repeat_loop_header1
  store float 0.000000e+00, ptr %13, align 4
  %15 = getelementptr inbounds float, ptr %13, i64 1
  br label %repeat_loop_header1

repeat_loop_next3:                                ; preds = %repeat_loop_header1
  %16 = getelementptr inbounds [64 x i8], ptr %_9, i64 0, i64 0, !dbg !812
  call void @llvm.memset.p0.i64(ptr align 1 %16, i8 0, i64 64, i1 false), !dbg !812
  %17 = getelementptr inbounds [64 x i8], ptr %_10, i64 0, i64 0, !dbg !813
  call void @llvm.memset.p0.i64(ptr align 1 %17, i8 0, i64 64, i1 false), !dbg !813
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %sci, ptr align 4 %_8, i64 768, i1 false), !dbg !814
  %18 = getelementptr inbounds %"src::lib::L12ScaleInfo", ptr %sci, i32 0, i32 1, !dbg !814
  store i8 0, ptr %18, align 4, !dbg !814
  %19 = getelementptr inbounds %"src::lib::L12ScaleInfo", ptr %sci, i32 0, i32 2, !dbg !814
  store i8 0, ptr %19, align 1, !dbg !814
  %20 = getelementptr inbounds %"src::lib::L12ScaleInfo", ptr %sci, i32 0, i32 3, !dbg !814
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %20, ptr align 1 %_9, i64 64, i1 false), !dbg !814
  %21 = getelementptr inbounds %"src::lib::L12ScaleInfo", ptr %sci, i32 0, i32 4, !dbg !814
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %21, ptr align 1 %_10, i64 64, i1 false), !dbg !814
  store ptr %grbuf, ptr %self.dbg.spill.i, align 8
  %22 = getelementptr inbounds { ptr, i64 }, ptr %self.dbg.spill.i, i32 0, i32 1
  store i64 576, ptr %22, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !758, !DIExpression(), !815)
  %ret = call i32 @dequantize_granule(ptr %grbuf, ptr %bs, ptr %sci, i32 0), !dbg !817
  store i32 %ret, ptr %ret.dbg.spill, align 4, !dbg !817
    #dbg_declare(ptr %ret.dbg.spill, !796, !DIExpression(), !818)
  %23 = icmp eq i32 %ret, 0, !dbg !819
  br i1 %23, label %bb6, label %bb4, !dbg !819

bb6:                                              ; preds = %repeat_loop_next3
  %24 = getelementptr inbounds %"src::lib::BsT", ptr %bs, i32 0, i32 1, !dbg !820
  %_20 = load i32, ptr %24, align 8, !dbg !820, !noundef !25
  %25 = icmp eq i32 %_20, 0, !dbg !820
  br i1 %25, label %bb8, label %bb7, !dbg !820

bb4:                                              ; preds = %repeat_loop_next3
  store i8 0, ptr %0, align 1, !dbg !821
  br label %bb18, !dbg !822

bb18:                                             ; preds = %bb17, %bb15, %bb9, %bb7, %bb4
  %26 = load i8, ptr %0, align 1, !dbg !824, !range !774, !noundef !25
  %27 = trunc i8 %26 to i1, !dbg !824
  ret i1 %27, !dbg !824

bb8:                                              ; preds = %bb6
  %28 = getelementptr inbounds %"src::lib::BsT", ptr %bs, i32 0, i32 2, !dbg !825
  %_21 = load i32, ptr %28, align 4, !dbg !825, !noundef !25
  %29 = icmp eq i32 %_21, 0, !dbg !825
  br i1 %29, label %bb10, label %bb9, !dbg !825

bb7:                                              ; preds = %bb6
  store i8 0, ptr %0, align 1, !dbg !826
  br label %bb18, !dbg !822

bb10:                                             ; preds = %bb8
  store i64 0, ptr %_23, align 8, !dbg !827
  %30 = getelementptr inbounds { i64, i64 }, ptr %_23, i32 0, i32 1, !dbg !827
  store i64 576, ptr %30, align 8, !dbg !827
  %31 = getelementptr inbounds { i64, i64 }, ptr %_23, i32 0, i32 0, !dbg !827
  %32 = load i64, ptr %31, align 8, !dbg !827, !noundef !25
  %33 = getelementptr inbounds { i64, i64 }, ptr %_23, i32 0, i32 1, !dbg !827
  %34 = load i64, ptr %33, align 8, !dbg !827, !noundef !25
  %35 = call { i64, i64 } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hbc8a26c8930e166eE"(i64 %32, i64 %34), !dbg !827
  %_22.0 = extractvalue { i64, i64 } %35, 0, !dbg !827
  %_22.1 = extractvalue { i64, i64 } %35, 1, !dbg !827
  %36 = getelementptr inbounds { i64, i64 }, ptr %iter, i32 0, i32 0, !dbg !827
  store i64 %_22.0, ptr %36, align 8, !dbg !827
  %37 = getelementptr inbounds { i64, i64 }, ptr %iter, i32 0, i32 1, !dbg !827
  store i64 %_22.1, ptr %37, align 8, !dbg !827
  br label %bb12, !dbg !828

bb9:                                              ; preds = %bb8
  store i8 0, ptr %0, align 1, !dbg !829
  br label %bb18, !dbg !822

bb12:                                             ; preds = %bb16, %bb10
  %38 = call { i64, i64 } @"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h66006fd4f6bf96e3E"(ptr align 8 %iter), !dbg !806
  store { i64, i64 } %38, ptr %_25, align 8, !dbg !806
  %_27 = load i64, ptr %_25, align 8, !dbg !806, !range !222, !noundef !25
  %39 = icmp eq i64 %_27, 0, !dbg !806
  br i1 %39, label %bb15, label %bb14, !dbg !806

bb15:                                             ; preds = %bb12
  store i8 1, ptr %0, align 1, !dbg !830
  br label %bb18, !dbg !824

bb14:                                             ; preds = %bb12
  %40 = getelementptr inbounds { i64, i64 }, ptr %_25, i32 0, i32 1, !dbg !831
  %i = load i64, ptr %40, align 8, !dbg !831, !noundef !25
  store i64 %i, ptr %i.dbg.spill, align 8, !dbg !831
    #dbg_declare(ptr %i.dbg.spill, !800, !DIExpression(), !832)
  %_32 = icmp ult i64 %i, 576, !dbg !833
  %41 = call i1 @llvm.expect.i1(i1 %_32, i1 true), !dbg !833
  br i1 %41, label %bb16, label %panic, !dbg !833

bb5:                                              ; No predecessors!
  unreachable, !dbg !834

bb16:                                             ; preds = %bb14
  %42 = getelementptr inbounds [576 x float], ptr %grbuf, i64 0, i64 %i, !dbg !833
  %_30 = load float, ptr %42, align 4, !dbg !833, !noundef !25
  %_29 = fcmp une float %_30, 0x42AAAAAAA0000000, !dbg !833
  br i1 %_29, label %bb17, label %bb12, !dbg !833

panic:                                            ; preds = %bb14
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 %i, i64 576, ptr align 8 @alloc_a3219961c36f635454f61ad523ea5375) #8, !dbg !833
  unreachable, !dbg !833

bb17:                                             ; preds = %bb16
  store i8 0, ptr %0, align 1, !dbg !835
  br label %bb18, !dbg !822
}

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #3 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { noreturn }
attributes #9 = { noinline noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}

!0 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !1, producer: "clang LLVM (rustc version 1.70.0-nightly (84dd17b56 2023-04-14))", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!1 = !DIFile(filename: "lib.rs/@/4eru21ra1lb8717s", directory: "/crisp-rust-outputs/B01_organic/dequantize_granule_lib/translated_rust")
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 2, !"RtLibUseGOT", i32 1}
!4 = !{i32 2, !"Dwarf Version", i32 4}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = distinct !DISubprogram(name: "dequantize_granule_ffi", linkageName: "dequantize_granule", scope: !8, file: !7, line: 108, type: !11, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !25, retainedNodes: !40)
!7 = !DIFile(filename: "src/lib.rs", directory: "/crisp-rust-outputs/B01_organic/dequantize_granule_lib/translated_rust", checksumkind: CSK_MD5, checksum: "1fe1c9004788db650884b9c207a281f0")
!8 = !DINamespace(name: "lib", scope: !9)
!9 = !DINamespace(name: "src", scope: !10)
!10 = !DINamespace(name: "dequantize_granule_lib", scope: null)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !14, !16, !26, !13}
!13 = !DIBasicType(name: "i32", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut f32", baseType: !15, size: 64, align: 64, dwarfAddressSpace: 0)
!15 = !DIBasicType(name: "f32", size: 32, encoding: DW_ATE_float)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut dequantize_granule_lib::src::lib::BsT", baseType: !17, size: 64, align: 64, dwarfAddressSpace: 0)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "BsT", scope: !8, file: !18, size: 128, align: 64, elements: !19, templateParams: !25, identifier: "7855b0a4c8eb5c6a829e9295e6be5548")
!18 = !DIFile(filename: "<unknown>", directory: "")
!19 = !{!20, !23, !24}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !17, file: !18, baseType: !21, size: 64, align: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const u8", baseType: !22, size: 64, align: 64, dwarfAddressSpace: 0)
!22 = !DIBasicType(name: "u8", size: 8, encoding: DW_ATE_unsigned)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !17, file: !18, baseType: !13, size: 32, align: 32, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !17, file: !18, baseType: !13, size: 32, align: 32, offset: 96)
!25 = !{}
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const dequantize_granule_lib::src::lib::L12ScaleInfo", baseType: !27, size: 64, align: 64, dwarfAddressSpace: 0)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "L12ScaleInfo", scope: !8, file: !18, size: 7200, align: 32, elements: !28, templateParams: !25, identifier: "3da72cf4193e2d939121bd584ab9c1ff")
!28 = !{!29, !33, !34, !35, !39}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "scf", scope: !27, file: !18, baseType: !30, size: 6144, align: 32)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 6144, align: 32, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 192, lowerBound: 0)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "total_bands", scope: !27, file: !18, baseType: !22, size: 8, align: 8, offset: 6144)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "stereo_bands", scope: !27, file: !18, baseType: !22, size: 8, align: 8, offset: 6152)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "bitalloc", scope: !27, file: !18, baseType: !36, size: 512, align: 8, offset: 6160)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 512, align: 8, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 64, lowerBound: 0)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "scfcod", scope: !27, file: !18, baseType: !36, size: 512, align: 8, offset: 6672)
!40 = !{!41, !42, !43, !44}
!41 = !DILocalVariable(name: "grbuf", arg: 1, scope: !6, file: !7, line: 109, type: !14)
!42 = !DILocalVariable(name: "bs", arg: 2, scope: !6, file: !7, line: 110, type: !16)
!43 = !DILocalVariable(name: "sci", arg: 3, scope: !6, file: !7, line: 111, type: !26)
!44 = !DILocalVariable(name: "group_size", arg: 4, scope: !6, file: !7, line: 112, type: !13)
!45 = !DILocation(line: 109, column: 5, scope: !6)
!46 = !DILocation(line: 110, column: 5, scope: !6)
!47 = !DILocation(line: 111, column: 5, scope: !6)
!48 = !DILocation(line: 112, column: 5, scope: !6)
!49 = !DILocation(line: 115, column: 9, scope: !6)
!50 = !DILocation(line: 116, column: 9, scope: !6)
!51 = !DILocation(line: 117, column: 9, scope: !6)
!52 = !DILocation(line: 108, column: 1, scope: !6)
!53 = !DILocation(line: 114, column: 5, scope: !6)
!54 = !DILocation(line: 120, column: 2, scope: !6)
!55 = distinct !DISubprogram(name: "from_raw_parts_mut<f32>", linkageName: "_ZN4core5slice3raw18from_raw_parts_mut17h0669e0e3da8d1efcE", scope: !57, file: !56, line: 137, type: !60, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !71, retainedNodes: !68)
!56 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/slice/raw.rs", directory: "", checksumkind: CSK_MD5, checksum: "4e9e8b780584cc248c586456197d9cf5")
!57 = !DINamespace(name: "raw", scope: !58)
!58 = !DINamespace(name: "slice", scope: !59)
!59 = !DINamespace(name: "core", scope: null)
!60 = !DISubroutineType(types: !61)
!61 = !{!62, !14, !67}
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "&mut [f32]", file: !18, size: 128, align: 64, elements: !63, templateParams: !25, identifier: "a9fe21d6fa3092c2cb2855c7d48c366d")
!63 = !{!64, !66}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !62, file: !18, baseType: !65, size: 64, align: 64)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64, dwarfAddressSpace: 0)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !62, file: !18, baseType: !67, size: 64, align: 64, offset: 64)
!67 = !DIBasicType(name: "usize", size: 64, encoding: DW_ATE_unsigned)
!68 = !{!69, !70}
!69 = !DILocalVariable(name: "data", arg: 1, scope: !55, file: !56, line: 137, type: !14)
!70 = !DILocalVariable(name: "len", arg: 2, scope: !55, file: !56, line: 137, type: !67)
!71 = !{!72}
!72 = !DITemplateTypeParameter(name: "T", type: !15)
!73 = !DILocation(line: 137, column: 47, scope: !55)
!74 = !DILocalVariable(name: "data", arg: 1, scope: !75, file: !76, line: 765, type: !14)
!75 = distinct !DISubprogram(name: "slice_from_raw_parts_mut<f32>", linkageName: "_ZN4core3ptr24slice_from_raw_parts_mut17h3eb73e8e971e02c2E", scope: !77, file: !76, line: 765, type: !78, scopeLine: 765, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !71, retainedNodes: !84)
!76 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/ptr/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "4b0ac29df94a7dc1bf2bc7efca5e253a")
!77 = !DINamespace(name: "ptr", scope: !59)
!78 = !DISubroutineType(types: !79)
!79 = !{!80, !14, !67}
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "*mut [f32]", file: !18, size: 128, align: 64, elements: !81, templateParams: !25, identifier: "ab40b59d4b99edf4abebcd50da9304d4")
!81 = !{!82, !83}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !80, file: !18, baseType: !65, size: 64, align: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !80, file: !18, baseType: !67, size: 64, align: 64, offset: 64)
!84 = !{!74, !85}
!85 = !DILocalVariable(name: "len", arg: 2, scope: !75, file: !76, line: 765, type: !67)
!86 = !DILocation(line: 765, column: 42, scope: !75, inlinedAt: !87)
!87 = !DILocation(line: 145, column: 15, scope: !55)
!88 = !DILocalVariable(name: "self", arg: 1, scope: !89, file: !90, line: 57, type: !14)
!89 = distinct !DISubprogram(name: "cast<f32, ()>", linkageName: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$4cast17he91494b42c961005E", scope: !91, file: !90, line: 57, type: !93, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !98, retainedNodes: !97)
!90 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/ptr/mut_ptr.rs", directory: "", checksumkind: CSK_MD5, checksum: "11087a90ad8f3b9862444e143466697a")
!91 = !DINamespace(name: "{impl#0}", scope: !92)
!92 = !DINamespace(name: "mut_ptr", scope: !77)
!93 = !DISubroutineType(types: !94)
!94 = !{!95, !14}
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut ()", baseType: !96, size: 64, align: 64, dwarfAddressSpace: 0)
!96 = !DIBasicType(name: "()", encoding: DW_ATE_unsigned)
!97 = !{!88}
!98 = !{!72, !99}
!99 = !DITemplateTypeParameter(name: "U", type: !96)
!100 = !DILocation(line: 57, column: 26, scope: !89, inlinedAt: !101)
!101 = !DILocation(line: 766, column: 29, scope: !75, inlinedAt: !87)
!102 = !DILocation(line: 137, column: 61, scope: !55)
!103 = !DILocation(line: 765, column: 56, scope: !75, inlinedAt: !87)
!104 = !DILocalVariable(name: "metadata", arg: 2, scope: !105, file: !106, line: 130, type: !67)
!105 = distinct !DISubprogram(name: "from_raw_parts_mut<[f32]>", linkageName: "_ZN4core3ptr8metadata18from_raw_parts_mut17h7ef9c9c27bbb9389E", scope: !107, file: !106, line: 128, type: !108, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !71, retainedNodes: !110)
!106 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/ptr/metadata.rs", directory: "", checksumkind: CSK_MD5, checksum: "1e1a461bde75de7a93357ca7e628f393")
!107 = !DINamespace(name: "metadata", scope: !77)
!108 = !DISubroutineType(types: !109)
!109 = !{!80, !95, !67}
!110 = !{!111, !104}
!111 = !DILocalVariable(name: "data_address", arg: 1, scope: !105, file: !106, line: 129, type: !95)
!112 = !DILocation(line: 130, column: 5, scope: !105, inlinedAt: !113)
!113 = !DILocation(line: 766, column: 5, scope: !75, inlinedAt: !87)
!114 = !DILocation(line: 58, column: 9, scope: !89, inlinedAt: !101)
!115 = !DILocation(line: 129, column: 5, scope: !105, inlinedAt: !113)
!116 = !DILocation(line: 135, column: 36, scope: !105, inlinedAt: !113)
!117 = !DILocation(line: 135, column: 14, scope: !105, inlinedAt: !113)
!118 = !DILocation(line: 147, column: 2, scope: !55)
!119 = distinct !DISubprogram(name: "dequantize_granule", linkageName: "_ZN22dequantize_granule_lib3src3lib18dequantize_granule17h3e2a42370def9b08E", scope: !8, file: !7, line: 56, type: !120, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !25, retainedNodes: !124)
!120 = !DISubroutineType(types: !121)
!121 = !{!13, !62, !122, !123, !13}
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut dequantize_granule_lib::src::lib::BsT", baseType: !17, size: 64, align: 64, dwarfAddressSpace: 0)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&dequantize_granule_lib::src::lib::L12ScaleInfo", baseType: !27, size: 64, align: 64, dwarfAddressSpace: 0)
!124 = !{!125, !126, !127, !128, !129, !131, !133, !143, !145, !147, !149, !151, !153, !155, !157, !165, !167, !170, !172, !174}
!125 = !DILocalVariable(name: "grbuf", arg: 1, scope: !119, file: !7, line: 57, type: !62)
!126 = !DILocalVariable(name: "bs", arg: 2, scope: !119, file: !7, line: 58, type: !122)
!127 = !DILocalVariable(name: "sci", arg: 3, scope: !119, file: !7, line: 59, type: !123)
!128 = !DILocalVariable(name: "group_size", arg: 4, scope: !119, file: !7, line: 60, type: !13)
!129 = !DILocalVariable(name: "choff", scope: !130, file: !7, line: 62, type: !13, align: 4)
!130 = distinct !DILexicalBlock(scope: !119, file: !7, line: 62, column: 5)
!131 = !DILocalVariable(name: "group_size_usize", scope: !132, file: !7, line: 63, type: !67, align: 8)
!132 = distinct !DILexicalBlock(scope: !130, file: !7, line: 63, column: 5)
!133 = !DILocalVariable(name: "iter", scope: !134, file: !7, line: 65, type: !135, align: 4)
!134 = distinct !DILexicalBlock(scope: !132, file: !7, line: 65, column: 5)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Range<i32>", scope: !136, file: !18, size: 64, align: 32, elements: !138, templateParams: !141, identifier: "e876f0d367cea0f1facf5b191d5aeb7d")
!136 = !DINamespace(name: "range", scope: !137)
!137 = !DINamespace(name: "ops", scope: !59)
!138 = !{!139, !140}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !135, file: !18, baseType: !13, size: 32, align: 32)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !135, file: !18, baseType: !13, size: 32, align: 32, offset: 32)
!141 = !{!142}
!142 = !DITemplateTypeParameter(name: "Idx", type: !13)
!143 = !DILocalVariable(name: "j", scope: !144, file: !7, line: 65, type: !13, align: 4)
!144 = distinct !DILexicalBlock(scope: !134, file: !7, line: 65, column: 19)
!145 = !DILocalVariable(name: "base", scope: !146, file: !7, line: 66, type: !67, align: 8)
!146 = distinct !DILexicalBlock(scope: !144, file: !7, line: 66, column: 9)
!147 = !DILocalVariable(name: "iter", scope: !148, file: !7, line: 67, type: !135, align: 4)
!148 = distinct !DILexicalBlock(scope: !146, file: !7, line: 67, column: 9)
!149 = !DILocalVariable(name: "i", scope: !150, file: !7, line: 67, type: !13, align: 4)
!150 = distinct !DILexicalBlock(scope: !148, file: !7, line: 67, column: 65)
!151 = !DILocalVariable(name: "dst_base", scope: !152, file: !7, line: 68, type: !67, align: 8)
!152 = distinct !DILexicalBlock(scope: !150, file: !7, line: 68, column: 13)
!153 = !DILocalVariable(name: "ba", scope: !154, file: !7, line: 69, type: !13, align: 4)
!154 = distinct !DILexicalBlock(scope: !152, file: !7, line: 69, column: 13)
!155 = !DILocalVariable(name: "half", scope: !156, file: !7, line: 73, type: !13, align: 4)
!156 = distinct !DILexicalBlock(scope: !154, file: !7, line: 73, column: 21)
!157 = !DILocalVariable(name: "iter", scope: !158, file: !7, line: 74, type: !159, align: 8)
!158 = distinct !DILexicalBlock(scope: !156, file: !7, line: 74, column: 21)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Range<usize>", scope: !136, file: !18, size: 128, align: 64, elements: !160, templateParams: !163, identifier: "b01c4dff50019c623f2ca4609ab20f0a")
!160 = !{!161, !162}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !159, file: !18, baseType: !67, size: 64, align: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !159, file: !18, baseType: !67, size: 64, align: 64, offset: 64)
!163 = !{!164}
!164 = !DITemplateTypeParameter(name: "Idx", type: !67)
!165 = !DILocalVariable(name: "k", scope: !166, file: !7, line: 74, type: !67, align: 8)
!166 = distinct !DILexicalBlock(scope: !158, file: !7, line: 74, column: 50)
!167 = !DILocalVariable(name: "mod_0", scope: !168, file: !7, line: 79, type: !169, align: 4)
!168 = distinct !DILexicalBlock(scope: !154, file: !7, line: 79, column: 21)
!169 = !DIBasicType(name: "u32", size: 32, encoding: DW_ATE_unsigned)
!170 = !DILocalVariable(name: "code", scope: !171, file: !7, line: 81, type: !169, align: 4)
!171 = distinct !DILexicalBlock(scope: !168, file: !7, line: 81, column: 21)
!172 = !DILocalVariable(name: "iter", scope: !173, file: !7, line: 89, type: !159, align: 8)
!173 = distinct !DILexicalBlock(scope: !171, file: !7, line: 89, column: 21)
!174 = !DILocalVariable(name: "k", scope: !175, file: !7, line: 89, type: !67, align: 8)
!175 = distinct !DILexicalBlock(scope: !173, file: !7, line: 89, column: 50)
!176 = !DILocation(line: 57, column: 5, scope: !119)
!177 = !DILocation(line: 58, column: 5, scope: !119)
!178 = !DILocation(line: 59, column: 5, scope: !119)
!179 = !DILocation(line: 60, column: 5, scope: !119)
!180 = !DILocation(line: 62, column: 9, scope: !130)
!181 = !DILocation(line: 65, column: 14, scope: !134)
!182 = !DILocation(line: 67, column: 18, scope: !148)
!183 = !DILocation(line: 68, column: 17, scope: !152)
!184 = !DILocation(line: 74, column: 30, scope: !158)
!185 = !DILocation(line: 81, column: 25, scope: !171)
!186 = !DILocation(line: 89, column: 30, scope: !173)
!187 = !DILocation(line: 62, column: 41, scope: !119)
!188 = !DILocation(line: 63, column: 28, scope: !130)
!189 = !DILocation(line: 63, column: 9, scope: !132)
!190 = !DILocation(line: 65, column: 14, scope: !132)
!191 = !DILocation(line: 65, column: 5, scope: !134)
!192 = !{i32 0, i32 2}
!193 = !DILocation(line: 104, column: 5, scope: !132)
!194 = !DILocation(line: 65, column: 9, scope: !134)
!195 = !DILocation(line: 65, column: 9, scope: !144)
!196 = !DILocation(line: 66, column: 39, scope: !144)
!197 = !DILocation(line: 66, column: 20, scope: !144)
!198 = !DILocation(line: 66, column: 13, scope: !146)
!199 = !DILocation(line: 67, column: 26, scope: !146)
!200 = !DILocation(line: 67, column: 21, scope: !146)
!201 = !DILocation(line: 67, column: 18, scope: !146)
!202 = !DILocation(line: 67, column: 9, scope: !148)
!203 = !DILocation(line: 67, column: 13, scope: !148)
!204 = !DILocation(line: 67, column: 13, scope: !150)
!205 = !DILocation(line: 68, column: 31, scope: !150)
!206 = !DILocation(line: 68, column: 46, scope: !150)
!207 = !DILocation(line: 68, column: 28, scope: !150)
!208 = !DILocation(line: 68, column: 60, scope: !150)
!209 = !DILocation(line: 69, column: 35, scope: !152)
!210 = !DILocation(line: 69, column: 22, scope: !152)
!211 = !DILocation(line: 69, column: 17, scope: !154)
!212 = !DILocation(line: 71, column: 16, scope: !154)
!213 = !DILocation(line: 100, column: 26, scope: !154)
!214 = !DILocation(line: 100, column: 21, scope: !154)
!215 = !DILocation(line: 72, column: 20, scope: !154)
!216 = !DILocation(line: 80, column: 32, scope: !154)
!217 = !DILocation(line: 73, column: 38, scope: !154)
!218 = !DILocation(line: 73, column: 32, scope: !154)
!219 = !DILocation(line: 73, column: 25, scope: !156)
!220 = !DILocation(line: 74, column: 30, scope: !156)
!221 = !DILocation(line: 74, column: 21, scope: !158)
!222 = !{i64 0, i64 2}
!223 = !DILocation(line: 74, column: 25, scope: !158)
!224 = !DILocation(line: 74, column: 25, scope: !166)
!225 = !DILocation(line: 75, column: 48, scope: !166)
!226 = !DILocation(line: 75, column: 47, scope: !166)
!227 = !DILocation(line: 75, column: 31, scope: !166)
!228 = !DILocation(line: 75, column: 25, scope: !166)
!229 = !DILocation(line: 80, column: 26, scope: !154)
!230 = !DILocation(line: 80, column: 25, scope: !154)
!231 = !DILocation(line: 79, column: 25, scope: !168)
!232 = !DILocalVariable(name: "self", arg: 1, scope: !233, file: !234, line: 1188, type: !169)
!233 = distinct !DISubprogram(name: "wrapping_add", linkageName: "_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_add17ha47a709bc54d730dE", scope: !235, file: !234, line: 1188, type: !237, scopeLine: 1188, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !25, retainedNodes: !239)
!234 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/num/uint_macros.rs", directory: "", checksumkind: CSK_MD5, checksum: "b2a733f80e3cd43066f918bdafc87bd0")
!235 = !DINamespace(name: "{impl#8}", scope: !236)
!236 = !DINamespace(name: "num", scope: !59)
!237 = !DISubroutineType(types: !238)
!238 = !{!169, !169, !169}
!239 = !{!232, !240}
!240 = !DILocalVariable(name: "rhs", arg: 2, scope: !233, file: !234, line: 1188, type: !169)
!241 = !DILocation(line: 1188, column: 35, scope: !233, inlinedAt: !242)
!242 = distinct !DILocation(line: 83, column: 25, scope: !168)
!243 = !DILocation(line: 1188, column: 41, scope: !233, inlinedAt: !242)
!244 = !DILocation(line: 1189, column: 13, scope: !233, inlinedAt: !242)
!245 = !DILocation(line: 85, column: 43, scope: !168)
!246 = !DILocalVariable(name: "self", arg: 1, scope: !247, file: !234, line: 1229, type: !169)
!247 = distinct !DISubprogram(name: "wrapping_sub", linkageName: "_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_sub17hb7724822f5ad2c8fE", scope: !235, file: !234, line: 1229, type: !237, scopeLine: 1229, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !25, retainedNodes: !248)
!248 = !{!246, !249}
!249 = !DILocalVariable(name: "rhs", arg: 2, scope: !247, file: !234, line: 1229, type: !169)
!250 = !DILocation(line: 1229, column: 35, scope: !247, inlinedAt: !251)
!251 = distinct !DILocation(line: 83, column: 25, scope: !168)
!252 = !DILocation(line: 1229, column: 41, scope: !247, inlinedAt: !251)
!253 = !DILocation(line: 1230, column: 13, scope: !247, inlinedAt: !251)
!254 = !DILocation(line: 81, column: 57, scope: !168)
!255 = !DILocation(line: 89, column: 30, scope: !171)
!256 = !DILocation(line: 89, column: 21, scope: !173)
!257 = !DILocation(line: 89, column: 25, scope: !173)
!258 = !DILocation(line: 89, column: 25, scope: !175)
!259 = !DILocation(line: 90, column: 47, scope: !175)
!260 = !DILocalVariable(name: "self", arg: 1, scope: !261, file: !234, line: 1322, type: !169)
!261 = distinct !DISubprogram(name: "wrapping_rem", linkageName: "_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_rem17h444bd8b2161bd3b6E", scope: !235, file: !234, line: 1322, type: !237, scopeLine: 1322, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !25, retainedNodes: !262)
!262 = !{!260, !263}
!263 = !DILocalVariable(name: "rhs", arg: 2, scope: !261, file: !234, line: 1322, type: !169)
!264 = !DILocation(line: 1322, column: 35, scope: !261, inlinedAt: !265)
!265 = distinct !DILocation(line: 90, column: 47, scope: !175)
!266 = !DILocation(line: 1322, column: 41, scope: !261, inlinedAt: !265)
!267 = !DILocation(line: 1323, column: 13, scope: !261, inlinedAt: !265)
!268 = !DILocalVariable(name: "self", arg: 1, scope: !269, file: !234, line: 1274, type: !169)
!269 = distinct !DISubprogram(name: "wrapping_div", linkageName: "_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_div17hf40315d2ad7da5c6E", scope: !235, file: !234, line: 1274, type: !237, scopeLine: 1274, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !25, retainedNodes: !270)
!270 = !{!268, !271}
!271 = !DILocalVariable(name: "rhs", arg: 2, scope: !269, file: !234, line: 1274, type: !169)
!272 = !DILocation(line: 1274, column: 35, scope: !269, inlinedAt: !273)
!273 = distinct !DILocation(line: 92, column: 43, scope: !175)
!274 = !DILocation(line: 1274, column: 41, scope: !269, inlinedAt: !273)
!275 = !DILocation(line: 1275, column: 13, scope: !269, inlinedAt: !273)
!276 = !DILocation(line: 1229, column: 35, scope: !247, inlinedAt: !277)
!277 = distinct !DILocation(line: 90, column: 47, scope: !175)
!278 = !DILocation(line: 1229, column: 41, scope: !247, inlinedAt: !277)
!279 = !DILocation(line: 1230, column: 13, scope: !247, inlinedAt: !277)
!280 = !DILocation(line: 90, column: 31, scope: !175)
!281 = !DILocation(line: 90, column: 25, scope: !175)
!282 = !DILocation(line: 95, column: 32, scope: !175)
!283 = !DILocation(line: 1274, column: 35, scope: !269, inlinedAt: !284)
!284 = distinct !DILocation(line: 95, column: 32, scope: !175)
!285 = !DILocation(line: 1274, column: 41, scope: !269, inlinedAt: !284)
!286 = !DILocation(line: 1275, column: 13, scope: !269, inlinedAt: !284)
!287 = !DILocation(line: 95, column: 25, scope: !175)
!288 = !DILocation(line: 100, column: 13, scope: !154)
!289 = !DILocation(line: 105, column: 2, scope: !119)
!290 = distinct !DISubprogram(name: "into_iter<core::ops::range::Range<i32>>", linkageName: "_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hdf0ab3ca505c8bfeE", scope: !292, file: !291, line: 272, type: !296, scopeLine: 272, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !300, retainedNodes: !298)
!291 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/iter/traits/collect.rs", directory: "", checksumkind: CSK_MD5, checksum: "697d559cdba63f105535b8b53d6ea422")
!292 = !DINamespace(name: "{impl#0}", scope: !293)
!293 = !DINamespace(name: "collect", scope: !294)
!294 = !DINamespace(name: "traits", scope: !295)
!295 = !DINamespace(name: "iter", scope: !59)
!296 = !DISubroutineType(types: !297)
!297 = !{!135, !135}
!298 = !{!299}
!299 = !DILocalVariable(name: "self", arg: 1, scope: !290, file: !291, line: 272, type: !135)
!300 = !{!301}
!301 = !DITemplateTypeParameter(name: "I", type: !135)
!302 = !DILocation(line: 272, column: 18, scope: !290)
!303 = !DILocation(line: 274, column: 6, scope: !290)
!304 = distinct !DISubprogram(name: "next<i32>", linkageName: "_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17he710101a5cff9815E", scope: !306, file: !305, line: 710, type: !308, scopeLine: 710, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !327, retainedNodes: !325)
!305 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/iter/range.rs", directory: "", checksumkind: CSK_MD5, checksum: "3b797d7135735e151bb7112e46eae892")
!306 = !DINamespace(name: "{impl#3}", scope: !307)
!307 = !DINamespace(name: "range", scope: !295)
!308 = !DISubroutineType(types: !309)
!309 = !{!310, !324}
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<i32>", scope: !311, file: !18, size: 64, align: 32, elements: !312, templateParams: !25, identifier: "b72b23c407480ea4eeaccb57082ea6a1")
!311 = !DINamespace(name: "option", scope: !59)
!312 = !{!313}
!313 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !310, file: !18, size: 64, align: 32, elements: !314, templateParams: !25, identifier: "2f65bb6a64e77a27a9554161b4d392d6", discriminator: !323)
!314 = !{!315, !319}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !313, file: !18, baseType: !316, size: 64, align: 32, extraData: i64 0)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !310, file: !18, size: 64, align: 32, elements: !25, templateParams: !317, identifier: "372f672a7e34cd793efc17fde8d896")
!317 = !{!318}
!318 = !DITemplateTypeParameter(name: "T", type: !13)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !313, file: !18, baseType: !320, size: 64, align: 32, extraData: i64 1)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !310, file: !18, size: 64, align: 32, elements: !321, templateParams: !317, identifier: "b4db775a7b4e66d7c5662da379f9ca8f")
!321 = !{!322}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !320, file: !18, baseType: !13, size: 32, align: 32, offset: 32)
!323 = !DIDerivedType(tag: DW_TAG_member, scope: !310, file: !18, baseType: !169, size: 32, align: 32, flags: DIFlagArtificial)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::ops::range::Range<i32>", baseType: !135, size: 64, align: 64, dwarfAddressSpace: 0)
!325 = !{!326}
!326 = !DILocalVariable(name: "self", arg: 1, scope: !304, file: !305, line: 710, type: !324)
!327 = !{!328}
!328 = !DITemplateTypeParameter(name: "A", type: !13)
!329 = !DILocation(line: 710, column: 13, scope: !304)
!330 = !DILocation(line: 711, column: 9, scope: !304)
!331 = !DILocation(line: 712, column: 6, scope: !304)
!332 = distinct !DISubprogram(name: "into_iter<core::ops::range::Range<usize>>", linkageName: "_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hbc8a26c8930e166eE", scope: !292, file: !291, line: 272, type: !333, scopeLine: 272, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !337, retainedNodes: !335)
!333 = !DISubroutineType(types: !334)
!334 = !{!159, !159}
!335 = !{!336}
!336 = !DILocalVariable(name: "self", arg: 1, scope: !332, file: !291, line: 272, type: !159)
!337 = !{!338}
!338 = !DITemplateTypeParameter(name: "I", type: !159)
!339 = !DILocation(line: 272, column: 18, scope: !332)
!340 = !DILocation(line: 274, column: 6, scope: !332)
!341 = distinct !DISubprogram(name: "next<usize>", linkageName: "_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h66006fd4f6bf96e3E", scope: !306, file: !305, line: 710, type: !342, scopeLine: 710, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !361, retainedNodes: !359)
!342 = !DISubroutineType(types: !343)
!343 = !{!344, !358}
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<usize>", scope: !311, file: !18, size: 128, align: 64, elements: !345, templateParams: !25, identifier: "b17de5dc2d457f8dce2303437d5e4e98")
!345 = !{!346}
!346 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !344, file: !18, size: 128, align: 64, elements: !347, templateParams: !25, identifier: "a0efaaf7efdca478bc2c7a6ba9e35ba1", discriminator: !356)
!347 = !{!348, !352}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !346, file: !18, baseType: !349, size: 128, align: 64, extraData: i64 0)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !344, file: !18, size: 128, align: 64, elements: !25, templateParams: !350, identifier: "d9e649f4c7d5b1429d931d66c43390e")
!350 = !{!351}
!351 = !DITemplateTypeParameter(name: "T", type: !67)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !346, file: !18, baseType: !353, size: 128, align: 64, extraData: i64 1)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !344, file: !18, size: 128, align: 64, elements: !354, templateParams: !350, identifier: "a60d11814afcef06411361a374d9c4d2")
!354 = !{!355}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !353, file: !18, baseType: !67, size: 64, align: 64, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, scope: !344, file: !18, baseType: !357, size: 64, align: 64, flags: DIFlagArtificial)
!357 = !DIBasicType(name: "u64", size: 64, encoding: DW_ATE_unsigned)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::ops::range::Range<usize>", baseType: !159, size: 64, align: 64, dwarfAddressSpace: 0)
!359 = !{!360}
!360 = !DILocalVariable(name: "self", arg: 1, scope: !341, file: !305, line: 710, type: !358)
!361 = !{!362}
!362 = !DITemplateTypeParameter(name: "A", type: !67)
!363 = !DILocation(line: 710, column: 13, scope: !341)
!364 = !DILocation(line: 711, column: 9, scope: !341)
!365 = !DILocation(line: 712, column: 6, scope: !341)
!366 = distinct !DISubprogram(name: "get_bits", linkageName: "_ZN22dequantize_granule_lib3src3lib8get_bits17hf459dc36fcd0442eE", scope: !8, file: !7, line: 24, type: !367, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !25, retainedNodes: !369)
!367 = !DISubroutineType(types: !368)
!368 = !{!169, !122, !13}
!369 = !{!370, !371, !372, !374, !376, !378, !380, !382, !389, !391}
!370 = !DILocalVariable(name: "bs", arg: 1, scope: !366, file: !7, line: 24, type: !122)
!371 = !DILocalVariable(name: "n", arg: 2, scope: !366, file: !7, line: 24, type: !13)
!372 = !DILocalVariable(name: "cache", scope: !373, file: !7, line: 25, type: !169, align: 4)
!373 = distinct !DILexicalBlock(scope: !366, file: !7, line: 25, column: 5)
!374 = !DILocalVariable(name: "s", scope: !375, file: !7, line: 26, type: !169, align: 4)
!375 = distinct !DILexicalBlock(scope: !373, file: !7, line: 26, column: 5)
!376 = !DILocalVariable(name: "shl", scope: !377, file: !7, line: 27, type: !13, align: 4)
!377 = distinct !DILexicalBlock(scope: !375, file: !7, line: 27, column: 5)
!378 = !DILocalVariable(name: "byte_index", scope: !379, file: !7, line: 28, type: !67, align: 8)
!379 = distinct !DILexicalBlock(scope: !377, file: !7, line: 28, column: 5)
!380 = !DILocalVariable(name: "bytes_needed", scope: !381, file: !7, line: 35, type: !67, align: 8)
!381 = distinct !DILexicalBlock(scope: !379, file: !7, line: 35, column: 5)
!382 = !DILocalVariable(name: "buf", scope: !383, file: !7, line: 36, type: !384, align: 8)
!383 = distinct !DILexicalBlock(scope: !381, file: !7, line: 36, column: 5)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "&[u8]", file: !18, size: 128, align: 64, elements: !385, templateParams: !25, identifier: "4f7d759e2003ffb713a77bd933fd0146")
!385 = !{!386, !388}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !384, file: !18, baseType: !387, size: 64, align: 64)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64, dwarfAddressSpace: 0)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !384, file: !18, baseType: !67, size: 64, align: 64, offset: 64)
!389 = !DILocalVariable(name: "p", scope: !390, file: !7, line: 38, type: !67, align: 8)
!390 = distinct !DILexicalBlock(scope: !383, file: !7, line: 38, column: 5)
!391 = !DILocalVariable(name: "next", scope: !392, file: !7, line: 39, type: !169, align: 4)
!392 = distinct !DILexicalBlock(scope: !390, file: !7, line: 39, column: 5)
!393 = !DILocation(line: 24, column: 13, scope: !366)
!394 = !DILocation(line: 24, column: 27, scope: !366)
!395 = !DILocation(line: 25, column: 9, scope: !373)
!396 = !DILocation(line: 27, column: 9, scope: !377)
!397 = !DILocation(line: 38, column: 9, scope: !390)
!398 = !DILocation(line: 39, column: 9, scope: !392)
!399 = !DILocation(line: 25, column: 32, scope: !366)
!400 = !DILocation(line: 26, column: 25, scope: !373)
!401 = !DILocation(line: 26, column: 24, scope: !373)
!402 = !DILocation(line: 26, column: 9, scope: !375)
!403 = !DILocation(line: 1188, column: 35, scope: !233, inlinedAt: !404)
!404 = distinct !DILocation(line: 27, column: 39, scope: !375)
!405 = !DILocation(line: 1188, column: 41, scope: !233, inlinedAt: !404)
!406 = !DILocation(line: 1189, column: 13, scope: !233, inlinedAt: !404)
!407 = !DILocation(line: 27, column: 39, scope: !375)
!408 = !DILocation(line: 28, column: 23, scope: !377)
!409 = !DILocation(line: 28, column: 22, scope: !377)
!410 = !DILocation(line: 28, column: 9, scope: !379)
!411 = !DILocation(line: 30, column: 5, scope: !379)
!412 = !DILocation(line: 31, column: 8, scope: !379)
!413 = !DILocation(line: 31, column: 17, scope: !379)
!414 = !DILocation(line: 35, column: 26, scope: !379)
!415 = !DILocation(line: 35, column: 39, scope: !379)
!416 = !DILocation(line: 35, column: 25, scope: !379)
!417 = !DILocation(line: 32, column: 16, scope: !379)
!418 = !DILocation(line: 54, column: 2, scope: !366)
!419 = !DILocation(line: 35, column: 24, scope: !379)
!420 = !DILocation(line: 35, column: 9, scope: !381)
!421 = !DILocation(line: 36, column: 54, scope: !381)
!422 = !DILocalVariable(name: "self", arg: 1, scope: !423, file: !424, line: 915, type: !21)
!423 = distinct !DISubprogram(name: "add<u8>", linkageName: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$3add17hc21c544f482e2e1dE", scope: !425, file: !424, line: 915, type: !427, scopeLine: 915, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !431, retainedNodes: !429)
!424 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/ptr/const_ptr.rs", directory: "", checksumkind: CSK_MD5, checksum: "2a21946c6980740609ff35bdd2bfdb1c")
!425 = !DINamespace(name: "{impl#0}", scope: !426)
!426 = !DINamespace(name: "const_ptr", scope: !77)
!427 = !DISubroutineType(types: !428)
!428 = !{!21, !21, !67}
!429 = !{!422, !430}
!430 = !DILocalVariable(name: "count", arg: 2, scope: !423, file: !424, line: 915, type: !67)
!431 = !{!432}
!432 = !DITemplateTypeParameter(name: "T", type: !22)
!433 = !DILocation(line: 915, column: 29, scope: !423, inlinedAt: !434)
!434 = distinct !DILocation(line: 36, column: 54, scope: !381)
!435 = !DILocalVariable(name: "self", arg: 1, scope: !436, file: !424, line: 460, type: !21)
!436 = distinct !DISubprogram(name: "offset<u8>", linkageName: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$6offset17hce32a8830126aad7E", scope: !425, file: !424, line: 460, type: !437, scopeLine: 460, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !431, retainedNodes: !440)
!437 = !DISubroutineType(types: !438)
!438 = !{!21, !21, !439}
!439 = !DIBasicType(name: "isize", size: 64, encoding: DW_ATE_signed)
!440 = !{!435, !441}
!441 = !DILocalVariable(name: "count", arg: 2, scope: !436, file: !424, line: 460, type: !439)
!442 = !DILocation(line: 460, column: 32, scope: !436, inlinedAt: !443)
!443 = distinct !DILocation(line: 920, column: 23, scope: !423, inlinedAt: !434)
!444 = !DILocation(line: 915, column: 35, scope: !423, inlinedAt: !434)
!445 = !DILocation(line: 920, column: 30, scope: !423, inlinedAt: !434)
!446 = !DILocation(line: 460, column: 38, scope: !436, inlinedAt: !443)
!447 = !DILocation(line: 465, column: 18, scope: !436, inlinedAt: !443)
!448 = !DILocation(line: 36, column: 24, scope: !381)
!449 = !DILocation(line: 36, column: 9, scope: !383)
!450 = !DILocation(line: 38, column: 17, scope: !383)
!451 = !DILocation(line: 40, column: 11, scope: !390)
!452 = !DILocation(line: 40, column: 10, scope: !390)
!453 = !DILocation(line: 40, column: 43, scope: !390)
!454 = !DILocation(line: 40, column: 9, scope: !390)
!455 = !DILocation(line: 41, column: 5, scope: !392)
!456 = !DILocation(line: 43, column: 5, scope: !392)
!457 = !DILocation(line: 44, column: 9, scope: !392)
!458 = !DILocation(line: 45, column: 12, scope: !392)
!459 = !DILocation(line: 48, column: 18, scope: !392)
!460 = !DILocation(line: 48, column: 26, scope: !392)
!461 = !DILocation(line: 53, column: 5, scope: !392)
!462 = !DILocation(line: 53, column: 14, scope: !392)
!463 = !DILocation(line: 53, column: 24, scope: !392)
!464 = !DILocation(line: 53, column: 22, scope: !392)
!465 = !DILocation(line: 53, column: 13, scope: !392)
!466 = !DILocation(line: 48, column: 9, scope: !392)
!467 = !DILocation(line: 49, column: 20, scope: !392)
!468 = !DILocation(line: 49, column: 16, scope: !392)
!469 = !DILocation(line: 49, column: 9, scope: !392)
!470 = !DILocation(line: 50, column: 9, scope: !392)
!471 = distinct !DISubprogram(name: "from_raw_parts<u8>", linkageName: "_ZN4core5slice3raw14from_raw_parts17hd5961777209d5f45E", scope: !57, file: !56, line: 92, type: !472, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !431, retainedNodes: !474)
!472 = !DISubroutineType(types: !473)
!473 = !{!384, !21, !67}
!474 = !{!475, !476}
!475 = !DILocalVariable(name: "data", arg: 1, scope: !471, file: !56, line: 92, type: !21)
!476 = !DILocalVariable(name: "len", arg: 2, scope: !471, file: !56, line: 92, type: !67)
!477 = !DILocation(line: 92, column: 43, scope: !471)
!478 = !DILocalVariable(name: "data", arg: 1, scope: !479, file: !76, line: 733, type: !21)
!479 = distinct !DISubprogram(name: "slice_from_raw_parts<u8>", linkageName: "_ZN4core3ptr20slice_from_raw_parts17h551b1716fa0af204E", scope: !77, file: !76, line: 733, type: !480, scopeLine: 733, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !431, retainedNodes: !486)
!480 = !DISubroutineType(types: !481)
!481 = !{!482, !21, !67}
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "*const [u8]", file: !18, size: 128, align: 64, elements: !483, templateParams: !25, identifier: "a329dffc2f36de2e98a77091932cf429")
!483 = !{!484, !485}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !482, file: !18, baseType: !387, size: 64, align: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !482, file: !18, baseType: !67, size: 64, align: 64, offset: 64)
!486 = !{!478, !487}
!487 = !DILocalVariable(name: "len", arg: 2, scope: !479, file: !76, line: 733, type: !67)
!488 = !DILocation(line: 733, column: 38, scope: !479, inlinedAt: !489)
!489 = !DILocation(line: 100, column: 11, scope: !471)
!490 = !DILocalVariable(name: "self", arg: 1, scope: !491, file: !424, line: 58, type: !21)
!491 = distinct !DISubprogram(name: "cast<u8, ()>", linkageName: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17hfb9636730687236aE", scope: !425, file: !424, line: 58, type: !492, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !496, retainedNodes: !495)
!492 = !DISubroutineType(types: !493)
!493 = !{!494, !21}
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const ()", baseType: !96, size: 64, align: 64, dwarfAddressSpace: 0)
!495 = !{!490}
!496 = !{!432, !99}
!497 = !DILocation(line: 58, column: 26, scope: !491, inlinedAt: !498)
!498 = !DILocation(line: 734, column: 25, scope: !479, inlinedAt: !489)
!499 = !DILocation(line: 92, column: 59, scope: !471)
!500 = !DILocation(line: 733, column: 54, scope: !479, inlinedAt: !489)
!501 = !DILocalVariable(name: "metadata", arg: 2, scope: !502, file: !106, line: 113, type: !67)
!502 = distinct !DISubprogram(name: "from_raw_parts<[u8]>", linkageName: "_ZN4core3ptr8metadata14from_raw_parts17hc9674939e84c73a3E", scope: !107, file: !106, line: 111, type: !503, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !431, retainedNodes: !505)
!503 = !DISubroutineType(types: !504)
!504 = !{!482, !494, !67}
!505 = !{!506, !501}
!506 = !DILocalVariable(name: "data_address", arg: 1, scope: !502, file: !106, line: 112, type: !494)
!507 = !DILocation(line: 113, column: 5, scope: !502, inlinedAt: !508)
!508 = !DILocation(line: 734, column: 5, scope: !479, inlinedAt: !489)
!509 = !DILocation(line: 59, column: 9, scope: !491, inlinedAt: !498)
!510 = !DILocation(line: 112, column: 5, scope: !502, inlinedAt: !508)
!511 = !DILocation(line: 118, column: 36, scope: !502, inlinedAt: !508)
!512 = !DILocation(line: 118, column: 14, scope: !502, inlinedAt: !508)
!513 = !DILocation(line: 102, column: 2, scope: !471)
!514 = distinct !DISubprogram(name: "spec_next<usize>", linkageName: "_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17h79e70f992701c5dfE", scope: !515, file: !305, line: 620, type: !342, scopeLine: 620, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !350, retainedNodes: !516)
!515 = !DINamespace(name: "{impl#2}", scope: !307)
!516 = !{!517, !518}
!517 = !DILocalVariable(name: "self", arg: 1, scope: !514, file: !305, line: 620, type: !358)
!518 = !DILocalVariable(name: "n", scope: !519, file: !305, line: 623, type: !67, align: 8)
!519 = distinct !DILexicalBlock(scope: !514, file: !305, line: 623, column: 13)
!520 = !DILocation(line: 620, column: 18, scope: !514)
!521 = !DILocalVariable(name: "src", arg: 2, scope: !522, file: !76, line: 1369, type: !67)
!522 = distinct !DISubprogram(name: "write<usize>", linkageName: "_ZN4core3ptr5write17h61330691aa15cf43E", scope: !77, file: !76, line: 1369, type: !523, scopeLine: 1369, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !350, retainedNodes: !526)
!523 = !DISubroutineType(types: !524)
!524 = !{null, !525, !67}
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut usize", baseType: !67, size: 64, align: 64, dwarfAddressSpace: 0)
!526 = !{!527, !521}
!527 = !DILocalVariable(name: "dst", arg: 1, scope: !522, file: !76, line: 1369, type: !525)
!528 = !DILocation(line: 1369, column: 43, scope: !522, inlinedAt: !529)
!529 = !DILocation(line: 910, column: 9, scope: !530, inlinedAt: !541)
!530 = distinct !DILexicalBlock(scope: !532, file: !531, line: 909, column: 9)
!531 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/mem/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "2818803a2f5479a3883c65b3bb9963fd")
!532 = distinct !DISubprogram(name: "replace<usize>", linkageName: "_ZN4core3mem7replace17h7b6755db58d22e44E", scope: !533, file: !531, line: 904, type: !534, scopeLine: 904, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !350, retainedNodes: !537)
!533 = !DINamespace(name: "mem", scope: !59)
!534 = !DISubroutineType(types: !535)
!535 = !{!67, !536, !67}
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut usize", baseType: !67, size: 64, align: 64, dwarfAddressSpace: 0)
!537 = !{!538, !539, !540}
!538 = !DILocalVariable(name: "dest", arg: 1, scope: !532, file: !531, line: 904, type: !536)
!539 = !DILocalVariable(name: "src", arg: 2, scope: !532, file: !531, line: 904, type: !67)
!540 = !DILocalVariable(name: "result", scope: !530, file: !531, line: 909, type: !67, align: 8)
!541 = !DILocation(line: 624, column: 18, scope: !519)
!542 = !DILocation(line: 621, column: 25, scope: !514)
!543 = !DILocation(line: 621, column: 12, scope: !514)
!544 = !DILocation(line: 626, column: 13, scope: !514)
!545 = !DILocation(line: 621, column: 9, scope: !514)
!546 = !DILocalVariable(name: "self", arg: 1, scope: !547, file: !548, line: 188, type: !554)
!547 = distinct !DISubprogram(name: "clone", linkageName: "_ZN4core5clone5impls54_$LT$impl$u20$core..clone..Clone$u20$for$u20$usize$GT$5clone17hebc2a1de5f3fc684E", scope: !549, file: !548, line: 188, type: !552, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !25, retainedNodes: !555)
!548 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/clone.rs", directory: "", checksumkind: CSK_MD5, checksum: "d116d2b81cbc11c420da76ff7ce51e4d")
!549 = !DINamespace(name: "{impl#5}", scope: !550)
!550 = !DINamespace(name: "impls", scope: !551)
!551 = !DINamespace(name: "clone", scope: !59)
!552 = !DISubroutineType(types: !553)
!553 = !{!67, !554}
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&usize", baseType: !67, size: 64, align: 64, dwarfAddressSpace: 0)
!555 = !{!546}
!556 = !DILocation(line: 188, column: 30, scope: !547, inlinedAt: !557)
!557 = distinct !DILocation(line: 623, column: 54, scope: !514)
!558 = !DILocation(line: 189, column: 25, scope: !547, inlinedAt: !557)
!559 = !DILocation(line: 623, column: 30, scope: !514)
!560 = !DILocation(line: 623, column: 17, scope: !519)
!561 = !DILocation(line: 624, column: 31, scope: !519)
!562 = !DILocation(line: 904, column: 25, scope: !532, inlinedAt: !541)
!563 = !DILocation(line: 624, column: 48, scope: !519)
!564 = !DILocation(line: 904, column: 39, scope: !532, inlinedAt: !541)
!565 = !DILocation(line: 909, column: 32, scope: !532, inlinedAt: !541)
!566 = !DILocalVariable(name: "src", arg: 1, scope: !567, file: !76, line: 1137, type: !570)
!567 = distinct !DISubprogram(name: "read<usize>", linkageName: "_ZN4core3ptr4read17h5b115c97012c4ae8E", scope: !77, file: !76, line: 1137, type: !568, scopeLine: 1137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !350, retainedNodes: !571)
!568 = !DISubroutineType(types: !569)
!569 = !{!67, !570}
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const usize", baseType: !67, size: 64, align: 64, dwarfAddressSpace: 0)
!571 = !{!566}
!572 = !DILocation(line: 1137, column: 29, scope: !567, inlinedAt: !573)
!573 = !DILocation(line: 909, column: 22, scope: !532, inlinedAt: !541)
!574 = !DILocation(line: 1188, column: 13, scope: !567, inlinedAt: !573)
!575 = !DILocation(line: 909, column: 13, scope: !530, inlinedAt: !541)
!576 = !DILocation(line: 910, column: 20, scope: !530, inlinedAt: !541)
!577 = !DILocation(line: 1369, column: 30, scope: !522, inlinedAt: !529)
!578 = !DILocation(line: 910, column: 26, scope: !530, inlinedAt: !541)
!579 = !DILocation(line: 1386, column: 9, scope: !522, inlinedAt: !529)
!580 = !DILocation(line: 624, column: 13, scope: !519)
!581 = !DILocation(line: 628, column: 6, scope: !514)
!582 = distinct !DISubprogram(name: "lt", linkageName: "_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2lt17ha7ee1776bb7d0fb2E", scope: !584, file: !583, line: 1402, type: !587, scopeLine: 1402, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !25, retainedNodes: !590)
!583 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/cmp.rs", directory: "", checksumkind: CSK_MD5, checksum: "1600eb58139fc5bc9fc1d10b55c4e0c1")
!584 = !DINamespace(name: "{impl#54}", scope: !585)
!585 = !DINamespace(name: "impls", scope: !586)
!586 = !DINamespace(name: "cmp", scope: !59)
!587 = !DISubroutineType(types: !588)
!588 = !{!589, !554, !554}
!589 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!590 = !{!591, !592}
!591 = !DILocalVariable(name: "self", arg: 1, scope: !582, file: !583, line: 1402, type: !554)
!592 = !DILocalVariable(name: "other", arg: 2, scope: !582, file: !583, line: 1402, type: !554)
!593 = !DILocation(line: 1402, column: 23, scope: !582)
!594 = !DILocation(line: 1402, column: 30, scope: !582)
!595 = !DILocation(line: 1402, column: 52, scope: !582)
!596 = !DILocation(line: 1402, column: 62, scope: !582)
!597 = !DILocation(line: 1402, column: 72, scope: !582)
!598 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_ZN49_$LT$usize$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17heddc6dd89e2142cfE", scope: !599, file: !305, line: 189, type: !600, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !25, retainedNodes: !602)
!599 = !DINamespace(name: "{impl#37}", scope: !307)
!600 = !DISubroutineType(types: !601)
!601 = !{!67, !67, !67}
!602 = !{!603, !604}
!603 = !DILocalVariable(name: "start", arg: 1, scope: !598, file: !305, line: 189, type: !67)
!604 = !DILocalVariable(name: "n", arg: 2, scope: !598, file: !305, line: 189, type: !67)
!605 = !DILocation(line: 189, column: 37, scope: !598)
!606 = !DILocalVariable(name: "self", arg: 1, scope: !607, file: !234, line: 485, type: !67)
!607 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_ZN4core3num23_$LT$impl$u20$usize$GT$13unchecked_add17h1fdcbaf9b5493cafE", scope: !608, file: !234, line: 485, type: !600, scopeLine: 485, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !25, retainedNodes: !609)
!608 = !DINamespace(name: "{impl#11}", scope: !236)
!609 = !{!606, !610}
!610 = !DILocalVariable(name: "rhs", arg: 2, scope: !607, file: !234, line: 485, type: !67)
!611 = !DILocation(line: 485, column: 43, scope: !607, inlinedAt: !612)
!612 = !DILocation(line: 191, column: 28, scope: !598)
!613 = !DILocation(line: 189, column: 50, scope: !598)
!614 = !DILocation(line: 485, column: 49, scope: !607, inlinedAt: !612)
!615 = !DILocation(line: 488, column: 22, scope: !607, inlinedAt: !612)
!616 = !DILocation(line: 192, column: 10, scope: !598)
!617 = distinct !DISubprogram(name: "spec_next<i32>", linkageName: "_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17h4864fa454bed08ddE", scope: !515, file: !305, line: 620, type: !308, scopeLine: 620, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !317, retainedNodes: !618)
!618 = !{!619, !620}
!619 = !DILocalVariable(name: "self", arg: 1, scope: !617, file: !305, line: 620, type: !324)
!620 = !DILocalVariable(name: "n", scope: !621, file: !305, line: 623, type: !13, align: 4)
!621 = distinct !DILexicalBlock(scope: !617, file: !305, line: 623, column: 13)
!622 = !DILocation(line: 620, column: 18, scope: !617)
!623 = !DILocalVariable(name: "src", arg: 2, scope: !624, file: !76, line: 1369, type: !13)
!624 = distinct !DISubprogram(name: "write<i32>", linkageName: "_ZN4core3ptr5write17h315ef54e99cbaf57E", scope: !77, file: !76, line: 1369, type: !625, scopeLine: 1369, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !317, retainedNodes: !628)
!625 = !DISubroutineType(types: !626)
!626 = !{null, !627, !13}
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut i32", baseType: !13, size: 64, align: 64, dwarfAddressSpace: 0)
!628 = !{!629, !623}
!629 = !DILocalVariable(name: "dst", arg: 1, scope: !624, file: !76, line: 1369, type: !627)
!630 = !DILocation(line: 1369, column: 43, scope: !624, inlinedAt: !631)
!631 = !DILocation(line: 910, column: 9, scope: !632, inlinedAt: !641)
!632 = distinct !DILexicalBlock(scope: !633, file: !531, line: 909, column: 9)
!633 = distinct !DISubprogram(name: "replace<i32>", linkageName: "_ZN4core3mem7replace17h1f66fac316d7f92aE", scope: !533, file: !531, line: 904, type: !634, scopeLine: 904, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !317, retainedNodes: !637)
!634 = !DISubroutineType(types: !635)
!635 = !{!13, !636, !13}
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut i32", baseType: !13, size: 64, align: 64, dwarfAddressSpace: 0)
!637 = !{!638, !639, !640}
!638 = !DILocalVariable(name: "dest", arg: 1, scope: !633, file: !531, line: 904, type: !636)
!639 = !DILocalVariable(name: "src", arg: 2, scope: !633, file: !531, line: 904, type: !13)
!640 = !DILocalVariable(name: "result", scope: !632, file: !531, line: 909, type: !13, align: 4)
!641 = !DILocation(line: 624, column: 18, scope: !621)
!642 = !DILocation(line: 621, column: 25, scope: !617)
!643 = !DILocation(line: 621, column: 12, scope: !617)
!644 = !DILocation(line: 626, column: 13, scope: !617)
!645 = !DILocation(line: 621, column: 9, scope: !617)
!646 = !DILocalVariable(name: "self", arg: 1, scope: !647, file: !548, line: 188, type: !651)
!647 = distinct !DISubprogram(name: "clone", linkageName: "_ZN4core5clone5impls52_$LT$impl$u20$core..clone..Clone$u20$for$u20$i32$GT$5clone17h72529ebbe73c4679E", scope: !648, file: !548, line: 188, type: !649, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !25, retainedNodes: !652)
!648 = !DINamespace(name: "{impl#14}", scope: !550)
!649 = !DISubroutineType(types: !650)
!650 = !{!13, !651}
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&i32", baseType: !13, size: 64, align: 64, dwarfAddressSpace: 0)
!652 = !{!646}
!653 = !DILocation(line: 188, column: 30, scope: !647, inlinedAt: !654)
!654 = distinct !DILocation(line: 623, column: 54, scope: !617)
!655 = !DILocation(line: 189, column: 25, scope: !647, inlinedAt: !654)
!656 = !DILocation(line: 623, column: 30, scope: !617)
!657 = !DILocation(line: 623, column: 17, scope: !621)
!658 = !DILocation(line: 624, column: 31, scope: !621)
!659 = !DILocation(line: 904, column: 25, scope: !633, inlinedAt: !641)
!660 = !DILocation(line: 624, column: 48, scope: !621)
!661 = !DILocation(line: 904, column: 39, scope: !633, inlinedAt: !641)
!662 = !DILocation(line: 909, column: 32, scope: !633, inlinedAt: !641)
!663 = !DILocalVariable(name: "src", arg: 1, scope: !664, file: !76, line: 1137, type: !667)
!664 = distinct !DISubprogram(name: "read<i32>", linkageName: "_ZN4core3ptr4read17hcdccf31f22d3abd3E", scope: !77, file: !76, line: 1137, type: !665, scopeLine: 1137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !317, retainedNodes: !668)
!665 = !DISubroutineType(types: !666)
!666 = !{!13, !667}
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const i32", baseType: !13, size: 64, align: 64, dwarfAddressSpace: 0)
!668 = !{!663}
!669 = !DILocation(line: 1137, column: 29, scope: !664, inlinedAt: !670)
!670 = !DILocation(line: 909, column: 22, scope: !633, inlinedAt: !641)
!671 = !DILocation(line: 1188, column: 13, scope: !664, inlinedAt: !670)
!672 = !DILocation(line: 909, column: 13, scope: !632, inlinedAt: !641)
!673 = !DILocation(line: 910, column: 20, scope: !632, inlinedAt: !641)
!674 = !DILocation(line: 1369, column: 30, scope: !624, inlinedAt: !631)
!675 = !DILocation(line: 910, column: 26, scope: !632, inlinedAt: !641)
!676 = !DILocation(line: 1386, column: 9, scope: !624, inlinedAt: !631)
!677 = !DILocation(line: 624, column: 13, scope: !621)
!678 = !DILocation(line: 628, column: 6, scope: !617)
!679 = distinct !DISubprogram(name: "lt", linkageName: "_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$i32$GT$2lt17hef1c20b71dcec31aE", scope: !680, file: !583, line: 1402, type: !681, scopeLine: 1402, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !25, retainedNodes: !683)
!680 = !DINamespace(name: "{impl#72}", scope: !585)
!681 = !DISubroutineType(types: !682)
!682 = !{!589, !651, !651}
!683 = !{!684, !685}
!684 = !DILocalVariable(name: "self", arg: 1, scope: !679, file: !583, line: 1402, type: !651)
!685 = !DILocalVariable(name: "other", arg: 2, scope: !679, file: !583, line: 1402, type: !651)
!686 = !DILocation(line: 1402, column: 23, scope: !679)
!687 = !DILocation(line: 1402, column: 30, scope: !679)
!688 = !DILocation(line: 1402, column: 52, scope: !679)
!689 = !DILocation(line: 1402, column: 62, scope: !679)
!690 = !DILocation(line: 1402, column: 72, scope: !679)
!691 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_ZN47_$LT$i32$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17h7a37a5bdda0a9711E", scope: !692, file: !305, line: 189, type: !693, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !25, retainedNodes: !695)
!692 = !DINamespace(name: "{impl#34}", scope: !307)
!693 = !DISubroutineType(types: !694)
!694 = !{!13, !13, !67}
!695 = !{!696, !697}
!696 = !DILocalVariable(name: "start", arg: 1, scope: !691, file: !305, line: 189, type: !13)
!697 = !DILocalVariable(name: "n", arg: 2, scope: !691, file: !305, line: 189, type: !67)
!698 = !DILocation(line: 189, column: 37, scope: !691)
!699 = !DILocalVariable(name: "self", arg: 1, scope: !700, file: !701, line: 477, type: !13)
!700 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_ZN4core3num21_$LT$impl$u20$i32$GT$13unchecked_add17hf3df94cac70c0feeE", scope: !702, file: !701, line: 477, type: !703, scopeLine: 477, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !25, retainedNodes: !705)
!701 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/num/int_macros.rs", directory: "", checksumkind: CSK_MD5, checksum: "7c9d22d8d2e1d9742bccc1dbc079da0e")
!702 = !DINamespace(name: "{impl#2}", scope: !236)
!703 = !DISubroutineType(types: !704)
!704 = !{!13, !13, !13}
!705 = !{!699, !706}
!706 = !DILocalVariable(name: "rhs", arg: 2, scope: !700, file: !701, line: 477, type: !13)
!707 = !DILocation(line: 477, column: 43, scope: !700, inlinedAt: !708)
!708 = !DILocation(line: 191, column: 28, scope: !691)
!709 = !DILocation(line: 189, column: 50, scope: !691)
!710 = !DILocation(line: 191, column: 42, scope: !691)
!711 = !DILocation(line: 477, column: 49, scope: !700, inlinedAt: !708)
!712 = !DILocation(line: 480, column: 22, scope: !700, inlinedAt: !708)
!713 = !DILocation(line: 192, column: 10, scope: !691)
!714 = distinct !DISubprogram(name: "run_test_1", scope: !8, file: !7, line: 123, type: !715, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !25, retainedNodes: !717)
!715 = !DISubroutineType(types: !716)
!716 = !{!589}
!717 = !{!718, !723, !728, !730, !732, !734, !736}
!718 = !DILocalVariable(name: "grbuf", scope: !719, file: !7, line: 127, type: !720, align: 4)
!719 = distinct !DILexicalBlock(scope: !714, file: !7, line: 127, column: 5)
!720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 18432, align: 32, elements: !721)
!721 = !{!722}
!722 = !DISubrange(count: 576, lowerBound: 0)
!723 = !DILocalVariable(name: "b_buf", scope: !724, file: !7, line: 128, type: !725, align: 1)
!724 = distinct !DILexicalBlock(scope: !719, file: !7, line: 128, column: 5)
!725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, align: 8, elements: !726)
!726 = !{!727}
!727 = !DISubrange(count: 0, lowerBound: 0)
!728 = !DILocalVariable(name: "bs", scope: !729, file: !7, line: 129, type: !17, align: 8)
!729 = distinct !DILexicalBlock(scope: !724, file: !7, line: 129, column: 5)
!730 = !DILocalVariable(name: "sci", scope: !731, file: !7, line: 134, type: !27, align: 4)
!731 = distinct !DILexicalBlock(scope: !729, file: !7, line: 134, column: 5)
!732 = !DILocalVariable(name: "ret", scope: !733, file: !7, line: 141, type: !13, align: 4)
!733 = distinct !DILexicalBlock(scope: !731, file: !7, line: 141, column: 5)
!734 = !DILocalVariable(name: "iter", scope: !735, file: !7, line: 160, type: !159, align: 8)
!735 = distinct !DILexicalBlock(scope: !733, file: !7, line: 160, column: 5)
!736 = !DILocalVariable(name: "i", scope: !737, file: !7, line: 160, type: !67, align: 8)
!737 = distinct !DILexicalBlock(scope: !735, file: !7, line: 160, column: 21)
!738 = !DILocation(line: 128, column: 9, scope: !724)
!739 = !DILocation(line: 127, column: 9, scope: !719)
!740 = !DILocation(line: 129, column: 9, scope: !729)
!741 = !DILocation(line: 134, column: 9, scope: !731)
!742 = !DILocation(line: 160, column: 14, scope: !735)
!743 = !DILocation(line: 127, column: 21, scope: !714)
!744 = !DILocalVariable(name: "self", arg: 1, scope: !745, file: !746, line: 476, type: !384)
!745 = distinct !DISubprogram(name: "as_ptr<u8>", linkageName: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h2a3793896923c12cE", scope: !747, file: !746, line: 476, type: !748, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !431, retainedNodes: !750)
!746 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/slice/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "0b3adda84e3d0ea3eafbebcfb4ca210d")
!747 = !DINamespace(name: "{impl#0}", scope: !58)
!748 = !DISubroutineType(types: !749)
!749 = !{!21, !384}
!750 = !{!744}
!751 = !DILocation(line: 476, column: 25, scope: !745, inlinedAt: !752)
!752 = distinct !DILocation(line: 130, column: 14, scope: !724)
!753 = !DILocation(line: 129, column: 18, scope: !724)
!754 = !DILocation(line: 135, column: 14, scope: !729)
!755 = !DILocation(line: 138, column: 19, scope: !729)
!756 = !DILocation(line: 139, column: 17, scope: !729)
!757 = !DILocation(line: 134, column: 15, scope: !729)
!758 = !DILocalVariable(name: "self", arg: 1, scope: !759, file: !746, line: 506, type: !62)
!759 = distinct !DISubprogram(name: "as_mut_ptr<f32>", linkageName: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17h9170e1de468afa0cE", scope: !747, file: !746, line: 506, type: !760, scopeLine: 506, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !71, retainedNodes: !762)
!760 = !DISubroutineType(types: !761)
!761 = !{!14, !62}
!762 = !{!758}
!763 = !DILocation(line: 506, column: 29, scope: !759, inlinedAt: !764)
!764 = distinct !DILocation(line: 142, column: 9, scope: !731)
!765 = !DILocation(line: 141, column: 15, scope: !731)
!766 = !DILocation(line: 141, column: 9, scope: !733)
!767 = !DILocation(line: 149, column: 8, scope: !733)
!768 = !DILocation(line: 153, column: 8, scope: !733)
!769 = !DILocation(line: 150, column: 16, scope: !733)
!770 = !DILocation(line: 1, column: 1, scope: !771)
!771 = !DILexicalBlockFile(scope: !733, file: !772, discriminator: 0)
!772 = !DIFile(filename: "lib.rs", directory: "/crisp-rust-outputs/B01_organic/dequantize_granule_lib/translated_rust", checksumkind: CSK_MD5, checksum: "3517fa76467d691b85abdf25c6292f0d")
!773 = !DILocation(line: 166, column: 2, scope: !714)
!774 = !{i8 0, i8 2}
!775 = !DILocation(line: 156, column: 8, scope: !733)
!776 = !DILocation(line: 154, column: 16, scope: !733)
!777 = !DILocation(line: 160, column: 14, scope: !733)
!778 = !DILocation(line: 160, column: 5, scope: !735)
!779 = !DILocation(line: 157, column: 16, scope: !733)
!780 = !DILocation(line: 165, column: 5, scope: !733)
!781 = !DILocation(line: 160, column: 9, scope: !735)
!782 = !DILocation(line: 160, column: 9, scope: !737)
!783 = !DILocation(line: 161, column: 12, scope: !737)
!784 = !DILocation(line: 149, column: 17, scope: !733)
!785 = !DILocation(line: 162, column: 20, scope: !737)
!786 = distinct !DISubprogram(name: "run_test_2", scope: !8, file: !7, line: 169, type: !715, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !25, retainedNodes: !787)
!787 = !{!788, !790, !792, !794, !796, !798, !800}
!788 = !DILocalVariable(name: "grbuf", scope: !789, file: !7, line: 172, type: !720, align: 4)
!789 = distinct !DILexicalBlock(scope: !786, file: !7, line: 172, column: 5)
!790 = !DILocalVariable(name: "b_buf", scope: !791, file: !7, line: 173, type: !725, align: 1)
!791 = distinct !DILexicalBlock(scope: !789, file: !7, line: 173, column: 5)
!792 = !DILocalVariable(name: "bs", scope: !793, file: !7, line: 174, type: !17, align: 8)
!793 = distinct !DILexicalBlock(scope: !791, file: !7, line: 174, column: 5)
!794 = !DILocalVariable(name: "sci", scope: !795, file: !7, line: 179, type: !27, align: 4)
!795 = distinct !DILexicalBlock(scope: !793, file: !7, line: 179, column: 5)
!796 = !DILocalVariable(name: "ret", scope: !797, file: !7, line: 186, type: !13, align: 4)
!797 = distinct !DILexicalBlock(scope: !795, file: !7, line: 186, column: 5)
!798 = !DILocalVariable(name: "iter", scope: !799, file: !7, line: 205, type: !159, align: 8)
!799 = distinct !DILexicalBlock(scope: !797, file: !7, line: 205, column: 5)
!800 = !DILocalVariable(name: "i", scope: !801, file: !7, line: 205, type: !67, align: 8)
!801 = distinct !DILexicalBlock(scope: !799, file: !7, line: 205, column: 21)
!802 = !DILocation(line: 173, column: 9, scope: !791)
!803 = !DILocation(line: 172, column: 9, scope: !789)
!804 = !DILocation(line: 174, column: 9, scope: !793)
!805 = !DILocation(line: 179, column: 9, scope: !795)
!806 = !DILocation(line: 205, column: 14, scope: !799)
!807 = !DILocation(line: 172, column: 21, scope: !786)
!808 = !DILocation(line: 476, column: 25, scope: !745, inlinedAt: !809)
!809 = distinct !DILocation(line: 175, column: 14, scope: !791)
!810 = !DILocation(line: 174, column: 18, scope: !791)
!811 = !DILocation(line: 180, column: 14, scope: !793)
!812 = !DILocation(line: 183, column: 19, scope: !793)
!813 = !DILocation(line: 184, column: 17, scope: !793)
!814 = !DILocation(line: 179, column: 15, scope: !793)
!815 = !DILocation(line: 506, column: 29, scope: !759, inlinedAt: !816)
!816 = distinct !DILocation(line: 187, column: 9, scope: !795)
!817 = !DILocation(line: 186, column: 15, scope: !795)
!818 = !DILocation(line: 186, column: 9, scope: !797)
!819 = !DILocation(line: 194, column: 8, scope: !797)
!820 = !DILocation(line: 198, column: 8, scope: !797)
!821 = !DILocation(line: 195, column: 16, scope: !797)
!822 = !DILocation(line: 1, column: 1, scope: !823)
!823 = !DILexicalBlockFile(scope: !797, file: !772, discriminator: 0)
!824 = !DILocation(line: 211, column: 2, scope: !786)
!825 = !DILocation(line: 201, column: 8, scope: !797)
!826 = !DILocation(line: 199, column: 16, scope: !797)
!827 = !DILocation(line: 205, column: 14, scope: !797)
!828 = !DILocation(line: 205, column: 5, scope: !799)
!829 = !DILocation(line: 202, column: 16, scope: !797)
!830 = !DILocation(line: 210, column: 5, scope: !797)
!831 = !DILocation(line: 205, column: 9, scope: !799)
!832 = !DILocation(line: 205, column: 9, scope: !801)
!833 = !DILocation(line: 206, column: 12, scope: !801)
!834 = !DILocation(line: 194, column: 17, scope: !797)
!835 = !DILocation(line: 207, column: 20, scope: !801)
