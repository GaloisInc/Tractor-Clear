; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"core::fmt::Arguments<'_>" = type { { ptr, i64 }, { ptr, i64 }, { ptr, i64 } }

@alloc_513570631223a12912d85da2bec3b15a = private unnamed_addr constant <{}> zeroinitializer, align 8
@_ZN10StaticLoop3src10staticloop3SUM17he5e3ef276e675e13E = internal global <{ [4 x i8] }> zeroinitializer, align 4
@alloc_49a1e817e911805af64bbc7efb390101 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc_4ed11f17954caf7854f80f02ae34907e = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc_513570631223a12912d85da2bec3b15a, [8 x i8] zeroinitializer, ptr @alloc_49a1e817e911805af64bbc7efb390101, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define void @driver(i32 noundef %stride) unnamed_addr #0 {
start:
  %_13.i = alloca i32, align 4
  %_10.i = alloca [1 x { ptr, ptr }], align 8
  %_6.i = alloca %"core::fmt::Arguments<'_>", align 8
  %0 = getelementptr inbounds { ptr, ptr }, ptr %_10.i, i64 0, i32 1
  %1 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_6.i, i64 0, i32 1
  %2 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_6.i, i64 0, i32 1, i32 1
  %3 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_6.i, i64 0, i32 2
  %4 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_6.i, i64 0, i32 2, i32 1
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_6.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_10.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_13.i)
  %5 = atomicrmw or ptr @_ZN10StaticLoop3src10staticloop3SUM17he5e3ef276e675e13E, i32 0 seq_cst, align 4
  store i32 %5, ptr %_13.i, align 4
  store ptr %_13.i, ptr %_10.i, align 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %0, align 8
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %1, align 8, !alias.scope !2, !noalias !5
  store i64 2, ptr %2, align 8, !alias.scope !2, !noalias !5
  store ptr null, ptr %_6.i, align 8, !alias.scope !2, !noalias !5
  store ptr %_10.i, ptr %3, align 8, !alias.scope !2, !noalias !5
  store i64 1, ptr %4, align 8, !alias.scope !2, !noalias !5
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_6.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_6.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_13.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_10.i)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_6.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_10.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_13.i)
  %6 = atomicrmw add ptr @_ZN10StaticLoop3src10staticloop3SUM17he5e3ef276e675e13E, i32 %stride seq_cst, align 4
  %7 = add i32 %6, %stride
  store i32 %7, ptr %_13.i, align 4
  store ptr %_13.i, ptr %_10.i, align 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %0, align 8
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %1, align 8, !alias.scope !2, !noalias !5
  store i64 2, ptr %2, align 8, !alias.scope !2, !noalias !5
  store ptr null, ptr %_6.i, align 8, !alias.scope !2, !noalias !5
  store ptr %_10.i, ptr %3, align 8, !alias.scope !2, !noalias !5
  store i64 1, ptr %4, align 8, !alias.scope !2, !noalias !5
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_6.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_6.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_13.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_10.i)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_6.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_10.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_13.i)
  %_14.2.i = shl i32 %stride, 1
  %8 = atomicrmw add ptr @_ZN10StaticLoop3src10staticloop3SUM17he5e3ef276e675e13E, i32 %_14.2.i seq_cst, align 4
  %9 = add i32 %8, %_14.2.i
  store i32 %9, ptr %_13.i, align 4
  store ptr %_13.i, ptr %_10.i, align 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %0, align 8
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %1, align 8, !alias.scope !2, !noalias !5
  store i64 2, ptr %2, align 8, !alias.scope !2, !noalias !5
  store ptr null, ptr %_6.i, align 8, !alias.scope !2, !noalias !5
  store ptr %_10.i, ptr %3, align 8, !alias.scope !2, !noalias !5
  store i64 1, ptr %4, align 8, !alias.scope !2, !noalias !5
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_6.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_6.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_13.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_10.i)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_6.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_10.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_13.i)
  %_14.3.i = mul i32 %stride, 3
  %10 = atomicrmw add ptr @_ZN10StaticLoop3src10staticloop3SUM17he5e3ef276e675e13E, i32 %_14.3.i seq_cst, align 4
  %11 = add i32 %10, %_14.3.i
  store i32 %11, ptr %_13.i, align 4
  store ptr %_13.i, ptr %_10.i, align 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %0, align 8
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %1, align 8, !alias.scope !2, !noalias !5
  store i64 2, ptr %2, align 8, !alias.scope !2, !noalias !5
  store ptr null, ptr %_6.i, align 8, !alias.scope !2, !noalias !5
  store ptr %_10.i, ptr %3, align 8, !alias.scope !2, !noalias !5
  store i64 1, ptr %4, align 8, !alias.scope !2, !noalias !5
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_6.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_6.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_13.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_10.i)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_6.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_10.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_13.i)
  %_14.4.i = shl i32 %stride, 2
  %12 = atomicrmw add ptr @_ZN10StaticLoop3src10staticloop3SUM17he5e3ef276e675e13E, i32 %_14.4.i seq_cst, align 4
  %13 = add i32 %12, %_14.4.i
  store i32 %13, ptr %_13.i, align 4
  store ptr %_13.i, ptr %_10.i, align 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %0, align 8
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %1, align 8, !alias.scope !2, !noalias !5
  store i64 2, ptr %2, align 8, !alias.scope !2, !noalias !5
  store ptr null, ptr %_6.i, align 8, !alias.scope !2, !noalias !5
  store ptr %_10.i, ptr %3, align 8, !alias.scope !2, !noalias !5
  store i64 1, ptr %4, align 8, !alias.scope !2, !noalias !5
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_6.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_6.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_13.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_10.i)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_6.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_10.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_13.i)
  %_14.5.i = mul i32 %stride, 5
  %14 = atomicrmw add ptr @_ZN10StaticLoop3src10staticloop3SUM17he5e3ef276e675e13E, i32 %_14.5.i seq_cst, align 4
  %15 = add i32 %14, %_14.5.i
  store i32 %15, ptr %_13.i, align 4
  store ptr %_13.i, ptr %_10.i, align 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %0, align 8
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %1, align 8, !alias.scope !2, !noalias !5
  store i64 2, ptr %2, align 8, !alias.scope !2, !noalias !5
  store ptr null, ptr %_6.i, align 8, !alias.scope !2, !noalias !5
  store ptr %_10.i, ptr %3, align 8, !alias.scope !2, !noalias !5
  store i64 1, ptr %4, align 8, !alias.scope !2, !noalias !5
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_6.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_6.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_13.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_10.i)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_6.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_10.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_13.i)
  %_14.6.i = mul i32 %stride, 6
  %16 = atomicrmw add ptr @_ZN10StaticLoop3src10staticloop3SUM17he5e3ef276e675e13E, i32 %_14.6.i seq_cst, align 4
  %17 = add i32 %16, %_14.6.i
  store i32 %17, ptr %_13.i, align 4
  store ptr %_13.i, ptr %_10.i, align 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %0, align 8
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %1, align 8, !alias.scope !2, !noalias !5
  store i64 2, ptr %2, align 8, !alias.scope !2, !noalias !5
  store ptr null, ptr %_6.i, align 8, !alias.scope !2, !noalias !5
  store ptr %_10.i, ptr %3, align 8, !alias.scope !2, !noalias !5
  store i64 1, ptr %4, align 8, !alias.scope !2, !noalias !5
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_6.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_6.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_13.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_10.i)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_6.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_10.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_13.i)
  %_14.7.i = mul i32 %stride, 7
  %18 = atomicrmw add ptr @_ZN10StaticLoop3src10staticloop3SUM17he5e3ef276e675e13E, i32 %_14.7.i seq_cst, align 4
  %19 = add i32 %18, %_14.7.i
  store i32 %19, ptr %_13.i, align 4
  store ptr %_13.i, ptr %_10.i, align 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %0, align 8
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %1, align 8, !alias.scope !2, !noalias !5
  store i64 2, ptr %2, align 8, !alias.scope !2, !noalias !5
  store ptr null, ptr %_6.i, align 8, !alias.scope !2, !noalias !5
  store ptr %_10.i, ptr %3, align 8, !alias.scope !2, !noalias !5
  store i64 1, ptr %4, align 8, !alias.scope !2, !noalias !5
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_6.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_6.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_13.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_10.i)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_6.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_10.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_13.i)
  %_14.8.i = shl i32 %stride, 3
  %20 = atomicrmw add ptr @_ZN10StaticLoop3src10staticloop3SUM17he5e3ef276e675e13E, i32 %_14.8.i seq_cst, align 4
  %21 = add i32 %20, %_14.8.i
  store i32 %21, ptr %_13.i, align 4
  store ptr %_13.i, ptr %_10.i, align 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %0, align 8
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %1, align 8, !alias.scope !2, !noalias !5
  store i64 2, ptr %2, align 8, !alias.scope !2, !noalias !5
  store ptr null, ptr %_6.i, align 8, !alias.scope !2, !noalias !5
  store ptr %_10.i, ptr %3, align 8, !alias.scope !2, !noalias !5
  store i64 1, ptr %4, align 8, !alias.scope !2, !noalias !5
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_6.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_6.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_13.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_10.i)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_6.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_10.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_13.i)
  %_14.9.i = mul i32 %stride, 9
  %22 = atomicrmw add ptr @_ZN10StaticLoop3src10staticloop3SUM17he5e3ef276e675e13E, i32 %_14.9.i seq_cst, align 4
  %23 = add i32 %22, %_14.9.i
  store i32 %23, ptr %_13.i, align 4
  store ptr %_13.i, ptr %_10.i, align 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %0, align 8
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %1, align 8, !alias.scope !2, !noalias !5
  store i64 2, ptr %2, align 8, !alias.scope !2, !noalias !5
  store ptr null, ptr %_6.i, align 8, !alias.scope !2, !noalias !5
  store ptr %_10.i, ptr %3, align 8, !alias.scope !2, !noalias !5
  store i64 1, ptr %4, align 8, !alias.scope !2, !noalias !5
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_6.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_6.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_13.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_10.i)
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

; Function Attrs: mustprogress nofree norecurse nounwind nonlazybind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define noundef i32 @static_sum(i32 noundef %update) unnamed_addr #2 {
start:
  %0 = atomicrmw add ptr @_ZN10StaticLoop3src10staticloop3SUM17he5e3ef276e675e13E, i32 %update seq_cst, align 4
  %1 = add i32 %0, %update
  ret i32 %1
}

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nounwind nonlazybind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!3}
!3 = distinct !{!3, !4, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!4 = distinct !{!4, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!5 = !{!6}
!6 = distinct !{!6, !4, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
