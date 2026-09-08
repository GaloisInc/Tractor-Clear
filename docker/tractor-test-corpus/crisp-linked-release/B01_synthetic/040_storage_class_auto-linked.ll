; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"core::fmt::Arguments<'_>" = type { { ptr, i64 }, { ptr, i64 }, { ptr, i64 } }

@alloc_513570631223a12912d85da2bec3b15a = private unnamed_addr constant <{}> zeroinitializer, align 8
@alloc_49a1e817e911805af64bbc7efb390101 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc_4ed11f17954caf7854f80f02ae34907e = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc_513570631223a12912d85da2bec3b15a, [8 x i8] zeroinitializer, ptr @alloc_49a1e817e911805af64bbc7efb390101, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define void @driver(i32 noundef %x) unnamed_addr #0 {
start:
  %_8.i = alloca [1 x { ptr, ptr }], align 8
  %_4.i = alloca %"core::fmt::Arguments<'_>", align 8
  %y.i = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y.i)
  %0 = shl i32 %x, 1
  %1 = add i32 %0, 300
  store i32 %1, ptr %y.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_4.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_8.i)
  store ptr %y.i, ptr %_8.i, align 8
  %2 = getelementptr inbounds { ptr, ptr }, ptr %_8.i, i64 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %2, align 8
  %3 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_4.i, i64 0, i32 1
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %3, align 8, !alias.scope !2, !noalias !5
  %4 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_4.i, i64 0, i32 1, i32 1
  store i64 2, ptr %4, align 8, !alias.scope !2, !noalias !5
  store ptr null, ptr %_4.i, align 8, !alias.scope !2, !noalias !5
  %5 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_4.i, i64 0, i32 2
  store ptr %_8.i, ptr %5, align 8, !alias.scope !2, !noalias !5
  %6 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_4.i, i64 0, i32 2, i32 1
  store i64 1, ptr %6, align 8, !alias.scope !2, !noalias !5
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_4.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_4.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_8.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y.i)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE"(ptr noalias noundef readonly align 4 dereferenceable(4), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef readonly dereferenceable(48)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!3}
!3 = distinct !{!3, !4, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!4 = distinct !{!4, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!5 = !{!6}
!6 = distinct !{!6, !4, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
