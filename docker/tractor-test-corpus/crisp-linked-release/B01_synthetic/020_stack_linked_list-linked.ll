; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree nosync nounwind nonlazybind memory(read) uwtable
define noundef i32 @smallestValue(ptr noundef readonly %head) unnamed_addr #0 {
start:
  %0 = icmp eq ptr %head, null
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2)
  br i1 %0, label %_ZN10SimpleList3src12simplestruct14smallest_value17h2e011d80eeac54cdE.exit, label %bb3.i

bb3.i:                                            ; preds = %start
  %1 = load i32, ptr %head, align 8, !alias.scope !2, !noundef !5
  %2 = getelementptr inbounds { i32, ptr }, ptr %head, i64 0, i32 1
  %self.i = load ptr, ptr %2, align 8, !alias.scope !2, !noundef !5
  %.not.i = icmp eq ptr %self.i, null
  br i1 %.not.i, label %_ZN10SimpleList3src12simplestruct14smallest_value17h2e011d80eeac54cdE.exit, label %bb8.lr.ph.i

bb8.lr.ph.i:                                      ; preds = %bb8.lr.ph.i, %bb3.i
  %smallest.0.ph13.i = phi i32 [ %spec.select.i, %bb8.lr.ph.i ], [ %1, %bb3.i ]
  %current.sroa.6.1.ph12.i = phi ptr [ %self2.i, %bb8.lr.ph.i ], [ %self.i, %bb3.i ]
  %_12.i = load i32, ptr %current.sroa.6.1.ph12.i, align 8, !noalias !2, !noundef !5
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %_12.i, i32 %smallest.0.ph13.i)
  %3 = getelementptr inbounds { i32, ptr }, ptr %current.sroa.6.1.ph12.i, i64 0, i32 1
  %self2.i = load ptr, ptr %3, align 8, !noalias !2, !noundef !5
  %4 = icmp eq ptr %self2.i, null
  br i1 %4, label %_ZN10SimpleList3src12simplestruct14smallest_value17h2e011d80eeac54cdE.exit, label %bb8.lr.ph.i

_ZN10SimpleList3src12simplestruct14smallest_value17h2e011d80eeac54cdE.exit: ; preds = %bb8.lr.ph.i, %bb3.i, %start
  %.0.i = phi i32 [ -1, %start ], [ %1, %bb3.i ], [ %spec.select.i, %bb8.lr.ph.i ]
  ret i32 %.0.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

attributes #0 = { nofree nosync nounwind nonlazybind memory(read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!3}
!3 = distinct !{!3, !4, !"_ZN10SimpleList3src12simplestruct14smallest_value17h2e011d80eeac54cdE: argument 0"}
!4 = distinct !{!4, !"_ZN10SimpleList3src12simplestruct14smallest_value17h2e011d80eeac54cdE"}
!5 = !{}
