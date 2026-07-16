; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; ASSERT EQ: i1 1 = call i1 @run_test_1()
; ASSERT EQ: i1 1 = call i1 @run_test_2()
; ASSERT EQ: i1 1 = call i1 @run_test_3()
; ASSERT EQ: i1 1 = call i1 @run_test_4()
; ASSERT EQ: i1 1 = call i1 @run_test_5()

%"src::lib::TflacMd5" = type { i32, i32, i32, i32 }

@run_test_2 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_3 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_4 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_5 = unnamed_addr alias i1 (), ptr @run_test_1

; Function Attrs: mustprogress nofree nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @md5_digest(ptr nocapture noundef readonly %m, ptr nocapture noundef writeonly %out) unnamed_addr #0 {
start:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5)
  %_3.i = load i32, ptr %m, align 4, !alias.scope !2, !noalias !5
  %0 = trunc i32 %_3.i to i8
  store i8 %0, ptr %out, align 1, !alias.scope !5, !noalias !2
  %_5.i = lshr i32 %_3.i, 8
  %1 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 1
  %2 = trunc i32 %_5.i to i8
  store i8 %2, ptr %1, align 1, !alias.scope !5, !noalias !2
  %_8.i = lshr i32 %_3.i, 16
  %3 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 2
  %4 = trunc i32 %_8.i to i8
  store i8 %4, ptr %3, align 1, !alias.scope !5, !noalias !2
  %_11.i = lshr i32 %_3.i, 24
  %5 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 3
  %6 = trunc i32 %_11.i to i8
  store i8 %6, ptr %5, align 1, !alias.scope !5, !noalias !2
  %7 = getelementptr inbounds %"src::lib::TflacMd5", ptr %m, i64 0, i32 1
  %_14.i = load i32, ptr %7, align 4, !alias.scope !2, !noalias !5
  %8 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 4
  %9 = trunc i32 %_14.i to i8
  store i8 %9, ptr %8, align 1, !alias.scope !5, !noalias !2
  %_16.i = lshr i32 %_14.i, 8
  %10 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 5
  %11 = trunc i32 %_16.i to i8
  store i8 %11, ptr %10, align 1, !alias.scope !5, !noalias !2
  %_19.i = lshr i32 %_14.i, 16
  %12 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 6
  %13 = trunc i32 %_19.i to i8
  store i8 %13, ptr %12, align 1, !alias.scope !5, !noalias !2
  %_22.i = lshr i32 %_14.i, 24
  %14 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 7
  %15 = trunc i32 %_22.i to i8
  store i8 %15, ptr %14, align 1, !alias.scope !5, !noalias !2
  %16 = getelementptr inbounds %"src::lib::TflacMd5", ptr %m, i64 0, i32 2
  %_25.i = load i32, ptr %16, align 4, !alias.scope !2, !noalias !5
  %17 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 8
  %18 = trunc i32 %_25.i to i8
  store i8 %18, ptr %17, align 1, !alias.scope !5, !noalias !2
  %_27.i = lshr i32 %_25.i, 8
  %19 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 9
  %20 = trunc i32 %_27.i to i8
  store i8 %20, ptr %19, align 1, !alias.scope !5, !noalias !2
  %_30.i = lshr i32 %_25.i, 16
  %21 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 10
  %22 = trunc i32 %_30.i to i8
  store i8 %22, ptr %21, align 1, !alias.scope !5, !noalias !2
  %_33.i = lshr i32 %_25.i, 24
  %23 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 11
  %24 = trunc i32 %_33.i to i8
  store i8 %24, ptr %23, align 1, !alias.scope !5, !noalias !2
  %25 = getelementptr inbounds %"src::lib::TflacMd5", ptr %m, i64 0, i32 3
  %_36.i = load i32, ptr %25, align 4, !alias.scope !2, !noalias !5
  %26 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 12
  %27 = trunc i32 %_36.i to i8
  store i8 %27, ptr %26, align 1, !alias.scope !5, !noalias !2
  %_38.i = lshr i32 %_36.i, 8
  %28 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 13
  %29 = trunc i32 %_38.i to i8
  store i8 %29, ptr %28, align 1, !alias.scope !5, !noalias !2
  %_41.i = lshr i32 %_36.i, 16
  %30 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 14
  %31 = trunc i32 %_41.i to i8
  store i8 %31, ptr %30, align 1, !alias.scope !5, !noalias !2
  %_44.i = lshr i32 %_36.i, 24
  %32 = getelementptr inbounds [16 x i8], ptr %out, i64 0, i64 15
  %33 = trunc i32 %_44.i to i8
  store i8 %33, ptr %32, align 1, !alias.scope !5, !noalias !2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #1

; Function Attrs: mustprogress nofree nosync nounwind nonlazybind willreturn memory(inaccessiblemem: readwrite) uwtable
define noundef zeroext i1 @run_test_1() unnamed_addr #2 {
start:
  ret i1 true
}

attributes #0 = { mustprogress nofree nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #2 = { mustprogress nofree nosync nounwind nonlazybind willreturn memory(inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!3}
!3 = distinct !{!3, !4, !"_ZN14md5_digest_lib3src3lib10md5_digest17hc93976a8119636c8E: %m"}
!4 = distinct !{!4, !"_ZN14md5_digest_lib3src3lib10md5_digest17hc93976a8119636c8E"}
!5 = !{!6}
!6 = distinct !{!6, !4, !"_ZN14md5_digest_lib3src3lib10md5_digest17hc93976a8119636c8E: %out"}
