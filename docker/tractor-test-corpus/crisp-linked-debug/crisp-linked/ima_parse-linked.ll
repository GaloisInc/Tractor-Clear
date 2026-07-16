; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"src::lib::ImaInfo" = type { ptr, i64, double, i64, i32, [1 x i32] }

@run_test_2 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_3 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_4 = unnamed_addr alias i1 (), ptr @run_test_1
@run_test_5 = unnamed_addr alias i1 (), ptr @run_test_1

; Function Attrs: nofree nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i32 @ima_parse(ptr noundef writeonly %info, ptr noundef %data) unnamed_addr #0 {
start:
  %0 = icmp eq ptr %info, null
  %_4 = icmp eq ptr %data, null
  %_3.0 = or i1 %0, %_4
  br i1 %_3.0, label %bb6, label %bb5

bb5:                                              ; preds = %start
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5)
  %_11.i.i = load i32, ptr %data, align 1, !alias.scope !7, !noalias !2
  %_8.not.i = icmp eq i32 %_11.i.i, 1667327590
  br i1 %_8.not.i, label %bb9.i, label %bb6

bb9.i:                                            ; preds = %bb5
  %1 = getelementptr inbounds i8, ptr %data, i64 4
  %_11.i39.i = load i16, ptr %1, align 1, !alias.scope !10, !noalias !2
  %2 = icmp eq i16 %_11.i39.i, 256
  br i1 %2, label %bb15.i, label %bb6

bb15.i:                                           ; preds = %bb35.i, %bb9.i
  %pakt_offset.sroa.6.0.i = phi i64 [ %pakt_offset.sroa.6.1.i, %bb35.i ], [ undef, %bb9.i ]
  %pakt_offset.sroa.0.0.i = phi i64 [ %pakt_offset.sroa.0.1.i, %bb35.i ], [ 0, %bb9.i ]
  %desc_offset.sroa.6.0.i = phi i64 [ %desc_offset.sroa.6.1.i, %bb35.i ], [ undef, %bb9.i ]
  %desc_offset.sroa.0.0.i = phi i64 [ %desc_offset.sroa.0.1.i, %bb35.i ], [ 0, %bb9.i ]
  %chunk_offset.0.i = phi i64 [ %_95.0.i, %bb35.i ], [ 8, %bb9.i ]
  %_19.i = add nuw nsw i64 %chunk_offset.0.i, 12
  %_18.i = icmp ugt i64 %chunk_offset.0.i, 500
  br i1 %_18.i, label %bb42.i, label %bb22.i

bb42.i:                                           ; preds = %bb30.i, %bb15.i
  %blocks_offset.sroa.6.0.i = phi i64 [ %blocks.i, %bb30.i ], [ undef, %bb15.i ]
  %data_chunk_size.0.i = phi i64 [ %7, %bb30.i ], [ 0, %bb15.i ]
  %switch25.i = icmp eq i64 %desc_offset.sroa.0.0.i, 0
  %switch28.i = icmp eq i64 %pakt_offset.sroa.0.0.i, 0
  %or.cond36.i = select i1 %switch25.i, i1 true, i1 %switch28.i
  %or.cond37.i = or i1 %or.cond36.i, %_18.i
  %3 = add i64 %desc_offset.sroa.6.0.i, -481
  %_64.i = icmp ult i64 %3, -513
  %or.cond38.i = select i1 %or.cond37.i, i1 true, i1 %_64.i
  br i1 %or.cond38.i, label %bb6, label %bb50.i

bb22.i:                                           ; preds = %bb15.i
  %4 = getelementptr inbounds i8, ptr %data, i64 %chunk_offset.0.i
  %_11.i40.i = load i32, ptr %4, align 1, !alias.scope !13, !noalias !2
  %5 = tail call i32 @llvm.bswap.i32(i32 %_11.i40.i)
  %_27.i = add nuw nsw i64 %chunk_offset.0.i, 4
  %6 = getelementptr inbounds i8, ptr %data, i64 %_27.i
  %_11.i44.i = load i64, ptr %6, align 1, !alias.scope !16, !noalias !2
  %7 = tail call i64 @llvm.bswap.i64(i64 %_11.i44.i)
  switch i32 %5, label %bb35.fold.split74.i [
    i32 1668506980, label %bb35.i
    i32 1953194352, label %bb35.fold.split.i
    i32 1635017060, label %bb30.i
  ]

bb35.fold.split.i:                                ; preds = %bb22.i
  br label %bb35.i

bb35.fold.split74.i:                              ; preds = %bb22.i
  br label %bb35.i

bb35.i:                                           ; preds = %bb35.fold.split74.i, %bb35.fold.split.i, %bb22.i
  %pakt_offset.sroa.6.1.i = phi i64 [ %pakt_offset.sroa.6.0.i, %bb22.i ], [ %_19.i, %bb35.fold.split.i ], [ %pakt_offset.sroa.6.0.i, %bb35.fold.split74.i ]
  %pakt_offset.sroa.0.1.i = phi i64 [ %pakt_offset.sroa.0.0.i, %bb22.i ], [ 1, %bb35.fold.split.i ], [ %pakt_offset.sroa.0.0.i, %bb35.fold.split74.i ]
  %desc_offset.sroa.6.1.i = phi i64 [ %_19.i, %bb22.i ], [ %desc_offset.sroa.6.0.i, %bb35.fold.split.i ], [ %desc_offset.sroa.6.0.i, %bb35.fold.split74.i ]
  %desc_offset.sroa.0.1.i = phi i64 [ 1, %bb22.i ], [ %desc_offset.sroa.0.0.i, %bb35.fold.split.i ], [ %desc_offset.sroa.0.0.i, %bb35.fold.split74.i ]
  %_49.i = icmp slt i64 %7, 0
  %_95.0.i = add i64 %7, %_19.i
  %_56.i = icmp ugt i64 %_95.0.i, 512
  %or.cond35.i = select i1 %_49.i, i1 true, i1 %_56.i
  br i1 %or.cond35.i, label %bb6, label %bb15.i

bb30.i:                                           ; preds = %bb22.i
  %blocks.i = add nuw nsw i64 %chunk_offset.0.i, 16
  %_46.i = icmp ugt i64 %chunk_offset.0.i, 496
  br i1 %_46.i, label %bb6, label %bb42.i

bb50.i:                                           ; preds = %bb42.i
  %_68.i = add nsw i64 %desc_offset.sroa.6.0.i, 8
  %_3.0.i.i45.i = icmp ugt i64 %_68.i, 508
  br i1 %_3.0.i.i45.i, label %bb6, label %bb53.i

bb53.i:                                           ; preds = %bb50.i
  %8 = getelementptr inbounds i8, ptr %data, i64 %_68.i
  %_11.i48.i = load i32, ptr %8, align 1, !alias.scope !19, !noalias !2
  %_71.not.i = icmp eq i32 %_11.i48.i, 1768775988
  br i1 %_71.not.i, label %bb56.i, label %bb6

bb56.i:                                           ; preds = %bb53.i
  %_74.i = add i64 %pakt_offset.sroa.6.0.i, 8
  %_3.0.i.i51.i = icmp ult i64 %_74.i, 505
  %_3.0.i.i.i.i = icmp ult i64 %desc_offset.sroa.6.0.i, 505
  %or.cond.i = select i1 %_3.0.i.i51.i, i1 %_3.0.i.i.i.i, i1 false
  br i1 %or.cond.i, label %bb65.i, label %bb6

bb65.i:                                           ; preds = %bb56.i
  %_78.i = add nuw nsw i64 %desc_offset.sroa.6.0.i, 24
  %9 = getelementptr inbounds i8, ptr %data, i64 %_78.i
  %_11.i59.i = load i32, ptr %9, align 1, !alias.scope !22, !noalias !2
  %10 = tail call i32 @llvm.bswap.i32(i32 %_11.i59.i)
  %11 = getelementptr inbounds i8, ptr %data, i64 %_74.i
  %_11.i54.i = load i64, ptr %11, align 1, !alias.scope !25, !noalias !2
  %12 = tail call i64 @llvm.bswap.i64(i64 %_11.i54.i)
  %13 = getelementptr inbounds i8, ptr %data, i64 %desc_offset.sroa.6.0.i
  %_11.i.i.i = load i64, ptr %13, align 1, !alias.scope !28, !noalias !2
  %14 = tail call i64 @llvm.bswap.i64(i64 %_11.i.i.i)
  %15 = getelementptr inbounds i8, ptr %data, i64 %blocks_offset.sroa.6.0.i
  store ptr %15, ptr %info, align 8, !alias.scope !2, !noalias !5
  %16 = getelementptr inbounds %"src::lib::ImaInfo", ptr %info, i64 0, i32 1
  store i64 %data_chunk_size.0.i, ptr %16, align 8, !alias.scope !2, !noalias !5
  %17 = getelementptr inbounds %"src::lib::ImaInfo", ptr %info, i64 0, i32 3
  store i64 %12, ptr %17, align 8, !alias.scope !2, !noalias !5
  %18 = getelementptr inbounds %"src::lib::ImaInfo", ptr %info, i64 0, i32 4
  store i32 %10, ptr %18, align 8, !alias.scope !2, !noalias !5
  %19 = getelementptr inbounds %"src::lib::ImaInfo", ptr %info, i64 0, i32 2
  store i64 %14, ptr %19, align 8, !alias.scope !2, !noalias !5
  br label %bb6

bb6:                                              ; preds = %bb65.i, %bb56.i, %bb53.i, %bb50.i, %bb30.i, %bb35.i, %bb42.i, %bb9.i, %bb5, %start
  %.0 = phi i32 [ -1, %start ], [ 0, %bb65.i ], [ -1, %bb5 ], [ -2, %bb9.i ], [ -3, %bb30.i ], [ -3, %bb42.i ], [ -3, %bb53.i ], [ -3, %bb50.i ], [ -3, %bb56.i ], [ -3, %bb35.i ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #2

; Function Attrs: nofree nosync nounwind nonlazybind memory(inaccessiblemem: readwrite) uwtable
define noundef zeroext i1 @run_test_1() unnamed_addr #3 {
bb13:
  ret i1 true
}

attributes #0 = { nofree nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nofree nosync nounwind nonlazybind memory(inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!3}
!3 = distinct !{!3, !4, !"_ZN13ima_parse_lib3src3lib9ima_parse17he85934772079ed05E: %info"}
!4 = distinct !{!4, !"_ZN13ima_parse_lib3src3lib9ima_parse17he85934772079ed05E"}
!5 = !{!6}
!6 = distinct !{!6, !4, !"_ZN13ima_parse_lib3src3lib9ima_parse17he85934772079ed05E: %data.0"}
!7 = !{!8, !6}
!8 = distinct !{!8, !9, !"_ZN13ima_parse_lib3src3lib14read_u32_be_at17h569ebe5d202a51dbE: %data.0"}
!9 = distinct !{!9, !"_ZN13ima_parse_lib3src3lib14read_u32_be_at17h569ebe5d202a51dbE"}
!10 = !{!11, !6}
!11 = distinct !{!11, !12, !"_ZN13ima_parse_lib3src3lib14read_u16_be_at17h2b6afbe2ecc834f7E: %data.0"}
!12 = distinct !{!12, !"_ZN13ima_parse_lib3src3lib14read_u16_be_at17h2b6afbe2ecc834f7E"}
!13 = !{!14, !6}
!14 = distinct !{!14, !15, !"_ZN13ima_parse_lib3src3lib14read_u32_be_at17h569ebe5d202a51dbE: %data.0"}
!15 = distinct !{!15, !"_ZN13ima_parse_lib3src3lib14read_u32_be_at17h569ebe5d202a51dbE"}
!16 = !{!17, !6}
!17 = distinct !{!17, !18, !"_ZN13ima_parse_lib3src3lib14read_i64_be_at17h6a7b44269cb0b682E: %data.0"}
!18 = distinct !{!18, !"_ZN13ima_parse_lib3src3lib14read_i64_be_at17h6a7b44269cb0b682E"}
!19 = !{!20, !6}
!20 = distinct !{!20, !21, !"_ZN13ima_parse_lib3src3lib14read_u32_be_at17h569ebe5d202a51dbE: %data.0"}
!21 = distinct !{!21, !"_ZN13ima_parse_lib3src3lib14read_u32_be_at17h569ebe5d202a51dbE"}
!22 = !{!23, !6}
!23 = distinct !{!23, !24, !"_ZN13ima_parse_lib3src3lib14read_u32_be_at17h569ebe5d202a51dbE: %data.0"}
!24 = distinct !{!24, !"_ZN13ima_parse_lib3src3lib14read_u32_be_at17h569ebe5d202a51dbE"}
!25 = !{!26, !6}
!26 = distinct !{!26, !27, !"_ZN13ima_parse_lib3src3lib14read_u64_be_at17h99b96937c402c53fE: %data.0"}
!27 = distinct !{!27, !"_ZN13ima_parse_lib3src3lib14read_u64_be_at17h99b96937c402c53fE"}
!28 = !{!29, !31, !6}
!29 = distinct !{!29, !30, !"_ZN13ima_parse_lib3src3lib14read_u64_be_at17h99b96937c402c53fE: %data.0"}
!30 = distinct !{!30, !"_ZN13ima_parse_lib3src3lib14read_u64_be_at17h99b96937c402c53fE"}
!31 = distinct !{!31, !32, !"_ZN13ima_parse_lib3src3lib14read_f64_be_at17h1961352280c29881E: %data.0"}
!32 = distinct !{!32, !"_ZN13ima_parse_lib3src3lib14read_f64_be_at17h1961352280c29881E"}
