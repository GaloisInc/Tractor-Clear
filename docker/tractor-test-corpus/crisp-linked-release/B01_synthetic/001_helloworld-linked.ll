; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"core::fmt::Arguments<'_>" = type { { ptr, i64 }, { ptr, i64 }, { ptr, i64 } }

@alloc_513570631223a12912d85da2bec3b15a = private unnamed_addr constant <{}> zeroinitializer, align 8
@alloc_ce1271145689f68f77474488674dace2 = private unnamed_addr constant <{ [13 x i8] }> <{ [13 x i8] c"Hello World!\0A" }>, align 1
@alloc_0491e60cbbe299a1a4f9d33d921c7ebe = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @alloc_ce1271145689f68f77474488674dace2, [8 x i8] c"\0D\00\00\00\00\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define noundef i32 @main() unnamed_addr #0 {
start:
  %_2.i = alloca %"core::fmt::Arguments<'_>", align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_2.i)
  %0 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_2.i, i64 0, i32 1
  store ptr @alloc_0491e60cbbe299a1a4f9d33d921c7ebe, ptr %0, align 8, !alias.scope !2
  %1 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_2.i, i64 0, i32 1, i32 1
  store i64 1, ptr %1, align 8, !alias.scope !2
  store ptr null, ptr %_2.i, align 8, !alias.scope !2
  %2 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_2.i, i64 0, i32 2
  store ptr @alloc_513570631223a12912d85da2bec3b15a, ptr %2, align 8, !alias.scope !2
  %3 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_2.i, i64 0, i32 2, i32 1
  store i64 0, ptr %3, align 8, !alias.scope !2
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_2.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_2.i)
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

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
!3 = distinct !{!3, !4, !"_ZN4core3fmt9Arguments9new_const17h00a508d8cf4830ceE: argument 0"}
!4 = distinct !{!4, !"_ZN4core3fmt9Arguments9new_const17h00a508d8cf4830ceE"}
