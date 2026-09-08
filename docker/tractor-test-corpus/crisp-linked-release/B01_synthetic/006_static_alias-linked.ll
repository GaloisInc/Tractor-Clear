; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_ZN11StaticAlias3src11staticalias12static_alias5inner17h6e6a0369d38c94c1E = internal global <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 4
@alloc_87551382a9de3243abbfdbda2f0b586b = private unnamed_addr constant <{ [4 x i8] }> <{ [4 x i8] c"%d\0A\00" }>, align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define noundef ptr @static_alias(ptr noundef %outer) unnamed_addr #0 {
start:
  %_3.i = load i32, ptr %outer, align 4, !noundef !2
  %_4.i = load i32, ptr @_ZN11StaticAlias3src11staticalias12static_alias5inner17h6e6a0369d38c94c1E, align 4, !noundef !2
  %_2.not.i = icmp slt i32 %_3.i, %_4.i
  %0 = add i32 %_4.i, %_3.i
  %outer._ZN11StaticAlias3src11staticalias12static_alias5inner17h6e6a0369d38c94c1E.i = select i1 %_2.not.i, ptr %outer, ptr @_ZN11StaticAlias3src11staticalias12static_alias5inner17h6e6a0369d38c94c1E
  store i32 %0, ptr %outer._ZN11StaticAlias3src11staticalias12static_alias5inner17h6e6a0369d38c94c1E.i, align 4
  ret ptr %outer._ZN11StaticAlias3src11staticalias12static_alias5inner17h6e6a0369d38c94c1E.i
}

; Function Attrs: nofree nounwind nonlazybind uwtable
define void @driver(i32 noundef %initial_value, i32 noundef %iterations) unnamed_addr #1 {
start:
  %initial_value.i = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %initial_value.i)
  store i32 %initial_value, ptr %initial_value.i, align 4
  %_52.i = icmp sgt i32 %iterations, 0
  br i1 %_52.i, label %bb2.i, label %_ZN11StaticAlias3src11staticalias6driver17ha3bf2ac098779123E.exit

bb2.i:                                            ; preds = %bb2.i, %start
  %running_sum.04.i = phi ptr [ %outer._ZN11StaticAlias3src11staticalias12static_alias5inner17h6e6a0369d38c94c1E.i.i, %bb2.i ], [ %initial_value.i, %start ]
  %i.03.i = phi i32 [ %1, %bb2.i ], [ 0, %start ]
  %_3.i.i = load i32, ptr %running_sum.04.i, align 4, !noundef !2
  %_4.i.i = load i32, ptr @_ZN11StaticAlias3src11staticalias12static_alias5inner17h6e6a0369d38c94c1E, align 4, !noundef !2
  %_2.not.i.i = icmp slt i32 %_3.i.i, %_4.i.i
  %0 = add i32 %_4.i.i, %_3.i.i
  %outer._ZN11StaticAlias3src11staticalias12static_alias5inner17h6e6a0369d38c94c1E.i.i = select i1 %_2.not.i.i, ptr %running_sum.04.i, ptr @_ZN11StaticAlias3src11staticalias12static_alias5inner17h6e6a0369d38c94c1E
  store i32 %0, ptr %outer._ZN11StaticAlias3src11staticalias12static_alias5inner17h6e6a0369d38c94c1E.i.i, align 4
  %_9.i = tail call noundef i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @alloc_87551382a9de3243abbfdbda2f0b586b, i32 noundef %0)
  %1 = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %1, %iterations
  br i1 %exitcond.not.i, label %_ZN11StaticAlias3src11staticalias6driver17ha3bf2ac098779123E.exit, label %bb2.i

_ZN11StaticAlias3src11staticalias6driver17ha3bf2ac098779123E.exit: ; preds = %bb2.i, %start
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %initial_value.i)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nounwind nonlazybind uwtable
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nofree nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{}
