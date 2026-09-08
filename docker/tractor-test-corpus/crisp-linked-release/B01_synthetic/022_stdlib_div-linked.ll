; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"core::fmt::Arguments<'_>" = type { { ptr, i64 }, { ptr, i64 }, { ptr, i64 } }

@alloc_00728171eaa7ec2c5a267f4bf25d4ac3 = private unnamed_addr constant <{ [13 x i8] }> <{ [13 x i8] c"src/driver.rs" }>, align 1
@alloc_5de93ee51a1f96a076e8f0a7dba00d8f = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_00728171eaa7ec2c5a267f4bf25d4ac3, [16 x i8] c"\0D\00\00\00\00\00\00\00\0D\00\00\00\0F\00\00\00" }>, align 8
@str.0 = internal constant [25 x i8] c"attempt to divide by zero"
@str.1 = internal constant [31 x i8] c"attempt to divide with overflow"
@alloc_93aeeed422b90ad822468b74e3fce4fb = private unnamed_addr constant <{ [10 x i8] }> <{ [10 x i8] c"quotient: " }>, align 1
@alloc_76d0b67b4923cdc406751d7c5a963adc = private unnamed_addr constant <{ [13 x i8] }> <{ [13 x i8] c", remainder: " }>, align 1
@alloc_49a1e817e911805af64bbc7efb390101 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc_9278fc041d39e1e2c0c061ed956b6995 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc_93aeeed422b90ad822468b74e3fce4fb, [8 x i8] c"\0A\00\00\00\00\00\00\00", ptr @alloc_76d0b67b4923cdc406751d7c5a963adc, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @alloc_49a1e817e911805af64bbc7efb390101, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define void @driver(i32 noundef %x, i32 noundef %y) unnamed_addr #0 {
start:
  %_19.i = alloca [2 x { ptr, ptr }], align 8
  %_15.i = alloca %"core::fmt::Arguments<'_>", align 8
  %result.i = alloca { i32, i32 }, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %result.i)
  %_5.i = icmp eq i32 %y, 0
  br i1 %_5.i, label %panic.i, label %bb1.i, !prof !2

bb1.i:                                            ; preds = %start
  %_6.i = icmp eq i32 %y, -1
  %_7.i = icmp eq i32 %x, -2147483648
  %_8.i = and i1 %_7.i, %_6.i
  br i1 %_8.i, label %panic1.i, label %_ZN6driver3src6driver6driver17h4d618a55c446bf3aE.exit, !prof !2

panic.i:                                          ; preds = %start
  tail call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr noalias noundef nonnull readonly align 1 @str.0, i64 noundef 25, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_5de93ee51a1f96a076e8f0a7dba00d8f) #3
  unreachable

panic1.i:                                         ; preds = %bb1.i
  tail call void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr noalias noundef nonnull readonly align 1 @str.1, i64 noundef 31, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_5de93ee51a1f96a076e8f0a7dba00d8f) #3
  unreachable

_ZN6driver3src6driver6driver17h4d618a55c446bf3aE.exit: ; preds = %bb1.i
  %_4.i = sdiv i32 %x, %y
  %_9.i = srem i32 %x, %y
  store i32 %_4.i, ptr %result.i, align 4
  %0 = getelementptr inbounds { i32, i32 }, ptr %result.i, i64 0, i32 1
  store i32 %_9.i, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_15.i)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %_19.i)
  store ptr %result.i, ptr %_19.i, align 8
  %1 = getelementptr inbounds { ptr, ptr }, ptr %_19.i, i64 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %1, align 8
  %2 = getelementptr inbounds [2 x { ptr, ptr }], ptr %_19.i, i64 0, i64 1
  store ptr %0, ptr %2, align 8
  %3 = getelementptr inbounds [2 x { ptr, ptr }], ptr %_19.i, i64 0, i64 1, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %3, align 8
  %4 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_15.i, i64 0, i32 1
  store ptr @alloc_9278fc041d39e1e2c0c061ed956b6995, ptr %4, align 8, !alias.scope !3, !noalias !6
  %5 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_15.i, i64 0, i32 1, i32 1
  store i64 3, ptr %5, align 8, !alias.scope !3, !noalias !6
  store ptr null, ptr %_15.i, align 8, !alias.scope !3, !noalias !6
  %6 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_15.i, i64 0, i32 2
  store ptr %_19.i, ptr %6, align 8, !alias.scope !3, !noalias !6
  %7 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_15.i, i64 0, i32 2, i32 1
  store i64 2, ptr %7, align 8, !alias.scope !3, !noalias !6
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_15.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_15.i)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %_19.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %result.i)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking5panic17hebb2f8602b5ff1bfE(ptr noalias noundef nonnull readonly align 1, i64 noundef, ptr noalias noundef readonly align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE"(ptr noalias noundef readonly align 4 dereferenceable(4), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef readonly dereferenceable(48)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"branch_weights", i32 1, i32 2000}
!3 = !{!4}
!4 = distinct !{!4, !5, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!5 = distinct !{!5, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!6 = !{!7}
!7 = distinct !{!7, !5, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
