; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"[closure@core::str::pattern::simd_contains::{closure#2}]" = type { { ptr, i64 }, { ptr, i64 } }
%"core::str::pattern::StrSearcher<'_, '_>" = type { { ptr, i64 }, { ptr, i64 }, %"core::str::pattern::StrSearcherImpl" }
%"core::str::pattern::StrSearcherImpl" = type { i64, [8 x i64] }
%"core::fmt::Arguments<'_>" = type { { ptr, i64 }, { ptr, i64 }, { ptr, i64 } }
%"core::str::error::Utf8Error" = type { i64, { i8, i8 }, [6 x i8] }
%"core::result::Result<&str, core::str::error::Utf8Error>" = type { i64, [2 x i64] }
%"core::result::Result<&str, core::str::error::Utf8Error>::Err" = type { [1 x i64], %"core::str::error::Utf8Error" }
%"core::result::Result<&str, core::str::error::Utf8Error>::Ok" = type { [1 x i64], { ptr, i64 } }

@alloc_513570631223a12912d85da2bec3b15a = private unnamed_addr constant <{}> zeroinitializer, align 8
@alloc_a638753069a8ba19c9cbcca7fca358d9 = private unnamed_addr constant <{ [79 x i8] }> <{ [79 x i8] c"/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/str/pattern.rs" }>, align 1
@alloc_895e9b10e78f9e4cd0bcd256acf09bb7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_a638753069a8ba19c9cbcca7fca358d9, [16 x i8] c"O\00\00\00\00\00\00\00\A7\05\00\00!\00\00\00" }>, align 8
@alloc_d688453ff83925730a6c9b89287a35c6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_a638753069a8ba19c9cbcca7fca358d9, [16 x i8] c"O\00\00\00\00\00\00\00\B3\05\00\00\14\00\00\00" }>, align 8
@alloc_7dd646b910703aa78ed2998132a78434 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_a638753069a8ba19c9cbcca7fca358d9, [16 x i8] c"O\00\00\00\00\00\00\00\B3\05\00\00!\00\00\00" }>, align 8
@alloc_00ae4b301f7fab8ac9617c03fcbd7274 = private unnamed_addr constant <{ [43 x i8] }> <{ [43 x i8] c"called `Result::unwrap()` on an `Err` value" }>, align 1
@vtable.0 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @"_ZN4core3ptr48drop_in_place$LT$core..str..error..Utf8Error$GT$17h1d6f64b633b1d7c5E", [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN64_$LT$core..str..error..Utf8Error$u20$as$u20$core..fmt..Debug$GT$3fmt17he5298eb5cbc8b1a7E" }>, align 8
@alloc_3b110eab6f99e4012d4a0f4d0e2b68a0 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_a638753069a8ba19c9cbcca7fca358d9, [16 x i8] c"O\00\00\00\00\00\00\007\04\00\00\17\00\00\00" }>, align 8
@alloc_49a1e817e911805af64bbc7efb390101 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc_4ed11f17954caf7854f80f02ae34907e = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc_513570631223a12912d85da2bec3b15a, [8 x i8] zeroinitializer, ptr @alloc_49a1e817e911805af64bbc7efb390101, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc_00728171eaa7ec2c5a267f4bf25d4ac3 = private unnamed_addr constant <{ [13 x i8] }> <{ [13 x i8] c"src/driver.rs" }>, align 1
@alloc_3cf13cde9150b6d0a2a1f3569ceff686 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_00728171eaa7ec2c5a267f4bf25d4ac3, [16 x i8] c"\0D\00\00\00\00\00\00\00\15\00\00\006\00\00\00" }>, align 8
@alloc_a710eb9aa3439bbc3f5eef1e32b35a50 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_00728171eaa7ec2c5a267f4bf25d4ac3, [16 x i8] c"\0D\00\00\00\00\00\00\00\16\00\00\006\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define void @driver(ptr noundef %s1, ptr noundef %s2) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %check_mask.i.i.i.i.i.i.i.i.i = alloca %"[closure@core::str::pattern::simd_contains::{closure#2}]", align 8
  %_25.i.i.i.i.i.i.i.i = alloca %"core::str::pattern::StrSearcher<'_, '_>", align 8
  %buffer.i.i.i.i.i.i.i = alloca [4 x i8], align 4
  %_12.i = alloca [1 x { ptr, ptr }], align 8
  %_8.i = alloca %"core::fmt::Arguments<'_>", align 8
  %count.i = alloca i64, align 8
  %e.i6 = alloca %"core::str::error::Utf8Error", align 8
  %e.i = alloca %"core::str::error::Utf8Error", align 8
  %_7 = alloca %"core::result::Result<&str, core::str::error::Utf8Error>", align 8
  %_4 = alloca %"core::result::Result<&str, core::str::error::Utf8Error>", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_4)
  %len = tail call noundef i64 @_ZN4core3ffi5c_str4CStr8from_ptr9strlen_rt17h463292534e232c62E(ptr noundef %s1)
  %len1 = add i64 %len, 1
  %0 = icmp ne ptr %s1, null
  tail call void @llvm.assume(i1 %0)
  call void @_ZN4core3ffi5c_str4CStr6to_str17h7660279a6932e49cE(ptr noalias nocapture noundef nonnull sret(%"core::result::Result<&str, core::str::error::Utf8Error>") dereferenceable(24) %_4, ptr noalias noundef nonnull readonly align 1 %s1, i64 noundef %len1)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2)
  %_2.i = load i64, ptr %_4, align 8, !range !5, !alias.scope !2, !noalias !6, !noundef !8
  %trunc.not.i = icmp eq i64 %_2.i, 0
  br i1 %trunc.not.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h64a198ee6f8b054dE.exit", label %bb1.i

bb1.i:                                            ; preds = %start
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %e.i), !noalias !9
  %1 = getelementptr inbounds %"core::result::Result<&str, core::str::error::Utf8Error>::Err", ptr %_4, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %e.i, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !noalias !6
  call void @_ZN4core6result13unwrap_failed17h008634a1b68516fbE(ptr noalias noundef nonnull readonly align 1 @alloc_00ae4b301f7fab8ac9617c03fcbd7274, i64 noundef 43, ptr noundef nonnull align 1 %e.i, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @vtable.0, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_3cf13cde9150b6d0a2a1f3569ceff686) #10, !noalias !2
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h64a198ee6f8b054dE.exit": ; preds = %start
  %2 = getelementptr inbounds %"core::result::Result<&str, core::str::error::Utf8Error>::Ok", ptr %_4, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !alias.scope !2, !noalias !6, !nonnull !8, !align !10, !noundef !8
  %4 = getelementptr inbounds %"core::result::Result<&str, core::str::error::Utf8Error>::Ok", ptr %_4, i64 0, i32 1, i32 1
  %5 = load i64, ptr %4, align 8, !alias.scope !2, !noalias !6, !noundef !8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_4)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_7)
  %len2 = tail call noundef i64 @_ZN4core3ffi5c_str4CStr8from_ptr9strlen_rt17h463292534e232c62E(ptr noundef %s2)
  %len3 = add i64 %len2, 1
  %6 = icmp ne ptr %s2, null
  tail call void @llvm.assume(i1 %6)
  call void @_ZN4core3ffi5c_str4CStr6to_str17h7660279a6932e49cE(ptr noalias nocapture noundef nonnull sret(%"core::result::Result<&str, core::str::error::Utf8Error>") dereferenceable(24) %_7, ptr noalias noundef nonnull readonly align 1 %s2, i64 noundef %len3)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11)
  %_2.i7 = load i64, ptr %_7, align 8, !range !5, !alias.scope !11, !noalias !14, !noundef !8
  %trunc.not.i8 = icmp eq i64 %_2.i7, 0
  br i1 %trunc.not.i8, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h64a198ee6f8b054dE.exit10", label %bb1.i9

bb1.i9:                                           ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h64a198ee6f8b054dE.exit"
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %e.i6), !noalias !16
  %7 = getelementptr inbounds %"core::result::Result<&str, core::str::error::Utf8Error>::Err", ptr %_7, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %e.i6, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !noalias !14
  call void @_ZN4core6result13unwrap_failed17h008634a1b68516fbE(ptr noalias noundef nonnull readonly align 1 @alloc_00ae4b301f7fab8ac9617c03fcbd7274, i64 noundef 43, ptr noundef nonnull align 1 %e.i6, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @vtable.0, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_a710eb9aa3439bbc3f5eef1e32b35a50) #10, !noalias !11
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h64a198ee6f8b054dE.exit10": ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h64a198ee6f8b054dE.exit"
  %8 = getelementptr inbounds %"core::result::Result<&str, core::str::error::Utf8Error>::Ok", ptr %_7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !alias.scope !11, !noalias !14, !nonnull !8, !align !10, !noundef !8
  %10 = getelementptr inbounds %"core::result::Result<&str, core::str::error::Utf8Error>::Ok", ptr %_7, i64 0, i32 1, i32 1
  %11 = load i64, ptr %10, align 8, !alias.scope !11, !noalias !14, !noundef !8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_7)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %count.i), !noalias !22
  %12 = getelementptr inbounds i8, ptr %3, i64 %5
  %_10.i.i.i112.i.i.i.i = icmp eq i64 %5, 0
  br i1 %_10.i.i.i112.i.i.i.i, label %_ZN6driver3src6driver6driver17h9646a70af6781dffE.exit, label %bb3.i.i.lr.ph.i.i.i.i

bb3.i.i.lr.ph.i.i.i.i:                            ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h64a198ee6f8b054dE.exit10"
  %b2.i.i.i.i.i.i.i.i = getelementptr inbounds [0 x i8], ptr %buffer.i.i.i.i.i.i.i, i64 0, i64 1
  %c3.i.i.i.i.i.i.i.i = getelementptr inbounds [0 x i8], ptr %buffer.i.i.i.i.i.i.i, i64 0, i64 2
  %d.i.i.i.i.i.i.i.i = getelementptr inbounds [0 x i8], ptr %buffer.i.i.i.i.i.i.i, i64 0, i64 3
  %13 = getelementptr inbounds %"core::str::pattern::StrSearcher<'_, '_>", ptr %_25.i.i.i.i.i.i.i.i, i64 0, i32 2
  %searcher.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds %"core::str::pattern::StrSearcher<'_, '_>", ptr %_25.i.i.i.i.i.i.i.i, i64 0, i32 2, i32 1
  %14 = getelementptr inbounds { ptr, i64 }, ptr %_25.i.i.i.i.i.i.i.i, i64 0, i32 1
  %15 = getelementptr inbounds %"core::str::pattern::StrSearcher<'_, '_>", ptr %_25.i.i.i.i.i.i.i.i, i64 0, i32 2, i32 1, i64 6
  %16 = getelementptr inbounds %"core::str::pattern::StrSearcher<'_, '_>", ptr %_25.i.i.i.i.i.i.i.i, i64 0, i32 1
  %17 = getelementptr inbounds %"core::str::pattern::StrSearcher<'_, '_>", ptr %_25.i.i.i.i.i.i.i.i, i64 0, i32 1, i32 1
  %18 = getelementptr inbounds %"core::str::pattern::StrSearcher<'_, '_>", ptr %_25.i.i.i.i.i.i.i.i, i64 0, i32 2, i32 1, i64 4
  %19 = getelementptr inbounds %"core::str::pattern::StrSearcher<'_, '_>", ptr %_25.i.i.i.i.i.i.i.i, i64 0, i32 2, i32 1, i64 3
  %20 = getelementptr inbounds %"core::str::pattern::StrSearcher<'_, '_>", ptr %_25.i.i.i.i.i.i.i.i, i64 0, i32 2, i32 1, i64 2
  %21 = getelementptr inbounds i8, ptr %_25.i.i.i.i.i.i.i.i, i64 58
  %_31.i19.i.i.i.i.i.i.i = icmp ugt i64 %11, 2
  %_2386.i.i.i.i.i.i.i.i.i = icmp ult i64 %11, 17
  %22 = getelementptr inbounds { ptr, i64 }, ptr %check_mask.i.i.i.i.i.i.i.i.i, i64 0, i32 1
  %23 = getelementptr inbounds %"[closure@core::str::pattern::simd_contains::{closure#2}]", ptr %check_mask.i.i.i.i.i.i.i.i.i, i64 0, i32 1
  %24 = getelementptr inbounds %"[closure@core::str::pattern::simd_contains::{closure#2}]", ptr %check_mask.i.i.i.i.i.i.i.i.i, i64 0, i32 1, i32 1
  %_6.i.i.i.i.i.i.i.i = icmp ult i64 %11, 16
  %_44.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %11, 0
  br label %bb3.i.i.i.i.i.i

bb3.i.i.i.i.i.i:                                  ; preds = %"_ZN115_$LT$core..iter..adapters..take_while..TakeWhile$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold5check28_$u7b$$u7b$closure$u7d$$u7d$17h2af9662d6e62ee12E.exit.i.i.i.i", %bb3.i.i.lr.ph.i.i.i.i
  %accum.0113.i.i.i.i = phi i64 [ 0, %bb3.i.i.lr.ph.i.i.i.i ], [ %_4.0.i.i.i.i.i.i.i, %"_ZN115_$LT$core..iter..adapters..take_while..TakeWhile$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold5check28_$u7b$$u7b$closure$u7d$$u7d$17h2af9662d6e62ee12E.exit.i.i.i.i" ]
  %25 = phi ptr [ %3, %bb3.i.i.lr.ph.i.i.i.i ], [ %197, %"_ZN115_$LT$core..iter..adapters..take_while..TakeWhile$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold5check28_$u7b$$u7b$closure$u7d$$u7d$17h2af9662d6e62ee12E.exit.i.i.i.i" ]
  %26 = getelementptr inbounds i8, ptr %25, i64 1
  %x.i.i.i.i.i.i = load i8, ptr %25, align 1, !alias.scope !17, !noalias !23, !noundef !8
  %_7.i.i.i.i.i.i = icmp sgt i8 %x.i.i.i.i.i.i, -1
  br i1 %_7.i.i.i.i.i.i, label %bb3.thread.i.i.i.i, label %bb7.i.i.i.i.i.i

bb7.i.i.i.i.i.i:                                  ; preds = %bb3.i.i.i.i.i.i
  %_33.i.i.i.i.i.i = and i8 %x.i.i.i.i.i.i, 31
  %init.i.i.i.i.i.i = zext i8 %_33.i.i.i.i.i.i to i32
  %_10.i10.i.i.i.i.i.i = icmp ne ptr %26, %12
  call void @llvm.assume(i1 %_10.i10.i.i.i.i.i.i)
  %27 = getelementptr inbounds i8, ptr %25, i64 2
  %y.i.i.i.i.i.i = load i8, ptr %26, align 1, !alias.scope !17, !noalias !23, !noundef !8
  %_37.i.i.i.i.i.i = shl nuw nsw i32 %init.i.i.i.i.i.i, 6
  %_39.i.i.i.i.i.i = and i8 %y.i.i.i.i.i.i, 63
  %_38.i.i.i.i.i.i = zext i8 %_39.i.i.i.i.i.i to i32
  %28 = or i32 %_37.i.i.i.i.i.i, %_38.i.i.i.i.i.i
  %_14.i.i.i.i.i.i = icmp ugt i8 %x.i.i.i.i.i.i, -33
  br i1 %_14.i.i.i.i.i.i, label %bb9.i.i.i.i.i.i, label %bb3.i.i.i.i

bb3.thread.i.i.i.i:                               ; preds = %bb3.i.i.i.i.i.i
  %_8.i.i.i.i.i.i = zext i8 %x.i.i.i.i.i.i to i32
  br label %bb1.i.i.i.i.i.i.i

bb9.i.i.i.i.i.i:                                  ; preds = %bb7.i.i.i.i.i.i
  %_10.i16.i.i.i.i.i.i = icmp ne ptr %27, %12
  call void @llvm.assume(i1 %_10.i16.i.i.i.i.i.i)
  %29 = getelementptr inbounds i8, ptr %25, i64 3
  %z.i.i.i.i.i.i = load i8, ptr %27, align 1, !alias.scope !17, !noalias !23, !noundef !8
  %_42.i.i.i.i.i.i = shl nuw nsw i32 %_38.i.i.i.i.i.i, 6
  %_44.i.i.i.i.i.i = and i8 %z.i.i.i.i.i.i, 63
  %_43.i.i.i.i.i.i = zext i8 %_44.i.i.i.i.i.i to i32
  %y_z.i.i.i.i.i.i = or i32 %_42.i.i.i.i.i.i, %_43.i.i.i.i.i.i
  %_21.i.i.i.i.i.i = shl nuw nsw i32 %init.i.i.i.i.i.i, 12
  %30 = or i32 %y_z.i.i.i.i.i.i, %_21.i.i.i.i.i.i
  %_22.i.i.i.i.i.i = icmp ugt i8 %x.i.i.i.i.i.i, -17
  br i1 %_22.i.i.i.i.i.i, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h724deb5152f416dbE.exit.i.i.i.i", label %bb3.i.i.i.i

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h724deb5152f416dbE.exit.i.i.i.i": ; preds = %bb9.i.i.i.i.i.i
  %_10.i22.i.i.i.i.i.i = icmp ne ptr %29, %12
  call void @llvm.assume(i1 %_10.i22.i.i.i.i.i.i)
  %31 = getelementptr inbounds i8, ptr %25, i64 4
  %w.i.i.i.i.i.i = load i8, ptr %29, align 1, !alias.scope !17, !noalias !23, !noundef !8
  %_27.i.i.i.i.i.i = shl nuw nsw i32 %init.i.i.i.i.i.i, 18
  %_26.i.i.i.i.i.i = and i32 %_27.i.i.i.i.i.i, 1835008
  %_47.i.i.i.i.i.i = shl nuw nsw i32 %y_z.i.i.i.i.i.i, 6
  %_49.i.i.i.i.i.i = and i8 %w.i.i.i.i.i.i, 63
  %_48.i.i.i.i.i.i = zext i8 %_49.i.i.i.i.i.i to i32
  %_28.i.i.i.i.i.i = or i32 %_47.i.i.i.i.i.i, %_48.i.i.i.i.i.i
  %32 = or i32 %_28.i.i.i.i.i.i, %_26.i.i.i.i.i.i
  %.not.i.i.i.i = icmp eq i32 %32, 1114112
  br i1 %.not.i.i.i.i, label %_ZN6driver3src6driver6driver17h9646a70af6781dffE.exit, label %bb3.i.i.i.i

bb3.i.i.i.i:                                      ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h724deb5152f416dbE.exit.i.i.i.i", %bb9.i.i.i.i.i.i, %bb7.i.i.i.i.i.i
  %33 = phi ptr [ %31, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h724deb5152f416dbE.exit.i.i.i.i" ], [ %29, %bb9.i.i.i.i.i.i ], [ %27, %bb7.i.i.i.i.i.i ]
  %34 = phi i32 [ %32, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h724deb5152f416dbE.exit.i.i.i.i" ], [ %30, %bb9.i.i.i.i.i.i ], [ %28, %bb7.i.i.i.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !36)
  %_3.i.i.i.i.i.i.i = icmp ult i32 %34, 128
  br i1 %_3.i.i.i.i.i.i.i, label %bb1.i.i.i.i.i.i.i, label %bb13.i.i.i.i.i.i.i.i

bb13.i.i.i.i.i.i.i.i:                             ; preds = %bb3.i.i.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buffer.i.i.i.i.i.i.i), !noalias !39
  store i32 0, ptr %buffer.i.i.i.i.i.i.i, align 4, !noalias !39
  %_84.i.i.i.i.i.i.i.i = icmp ult i32 %34, 2048
  br i1 %_84.i.i.i.i.i.i.i.i, label %bb2.i.thread.i.i.i.i.i.i.i, label %bb15.i.i.i.i.i.i.i.i

bb15.i.i.i.i.i.i.i.i:                             ; preds = %bb13.i.i.i.i.i.i.i.i
  %_85.i.i.i.i.i.i.i.i = icmp ult i32 %34, 65536
  br i1 %_85.i.i.i.i.i.i.i.i, label %bb8.i.i.i.i.i.i.i.i, label %bb9.i.i.i.i.i.i.i.i

bb9.i.i.i.i.i.i.i.i:                              ; preds = %bb15.i.i.i.i.i.i.i.i
  %_43.i.i.i.i.i.i.i.i = lshr i32 %34, 18
  %35 = trunc i32 %_43.i.i.i.i.i.i.i.i to i8
  %36 = or i8 %35, -16
  %_46.i.i.i.i.i.i.i.i = lshr i32 %34, 12
  %_49.i.i.i.i.i.i.i.i = lshr i32 %34, 6
  %37 = trunc i32 %34 to i8
  %_50.i.i.i.i.i.i.i.i = and i8 %37, 63
  %38 = or i8 %_50.i.i.i.i.i.i.i.i, -128
  store i8 %38, ptr %d.i.i.i.i.i.i.i.i, align 1, !alias.scope !40, !noalias !39
  br label %bb2.i.i.i.i.i.i.i.i

bb8.i.i.i.i.i.i.i.i:                              ; preds = %bb15.i.i.i.i.i.i.i.i
  %_31.i.i.i.i.i.i.i.i = lshr i32 %34, 12
  %39 = trunc i32 %_31.i.i.i.i.i.i.i.i to i8
  %40 = or i8 %39, -32
  %_34.i.i.i.i.i.i.i.i = lshr i32 %34, 6
  br label %bb2.i.i.i.i.i.i.i.i

bb2.i.i.i.i.i.i.i.i:                              ; preds = %bb8.i.i.i.i.i.i.i.i, %bb9.i.i.i.i.i.i.i.i
  %41 = phi i8 [ %40, %bb8.i.i.i.i.i.i.i.i ], [ %36, %bb9.i.i.i.i.i.i.i.i ]
  %.sink74.in.in.in.i.i.i.i.i.i.i = phi i32 [ %_34.i.i.i.i.i.i.i.i, %bb8.i.i.i.i.i.i.i.i ], [ %_46.i.i.i.i.i.i.i.i, %bb9.i.i.i.i.i.i.i.i ]
  %.sink.in.in.in.i.i.i.i.i.i.i = phi i32 [ %34, %bb8.i.i.i.i.i.i.i.i ], [ %_49.i.i.i.i.i.i.i.i, %bb9.i.i.i.i.i.i.i.i ]
  %_521.i.i.i.i.i.i.i.i = phi i64 [ 3, %bb8.i.i.i.i.i.i.i.i ], [ 4, %bb9.i.i.i.i.i.i.i.i ]
  %.sink.in.in.i.i.i.i.i.i.i = trunc i32 %.sink.in.in.in.i.i.i.i.i.i.i to i8
  %.sink.in.i.i.i.i.i.i.i = and i8 %.sink.in.in.i.i.i.i.i.i.i, 63
  %.sink.i.i.i.i.i.i.i = or i8 %.sink.in.i.i.i.i.i.i.i, -128
  %.sink74.in.in.i.i.i.i.i.i.i = trunc i32 %.sink74.in.in.in.i.i.i.i.i.i.i to i8
  %.sink74.in.i.i.i.i.i.i.i = and i8 %.sink74.in.in.i.i.i.i.i.i.i, 63
  %.sink74.i.i.i.i.i.i.i = or i8 %.sink74.in.i.i.i.i.i.i.i, -128
  store i8 %41, ptr %buffer.i.i.i.i.i.i.i, align 4, !noalias !39
  store i8 %.sink74.i.i.i.i.i.i.i, ptr %b2.i.i.i.i.i.i.i.i, align 1, !noalias !39
  store i8 %.sink.i.i.i.i.i.i.i, ptr %c3.i.i.i.i.i.i.i.i, align 2, !noalias !39
  call void @llvm.experimental.noalias.scope.decl(metadata !43)
  call void @llvm.experimental.noalias.scope.decl(metadata !46)
  %_31.i1.i.i.i.i.i.i.i = icmp ult i64 %_521.i.i.i.i.i.i.i.i, %11
  br i1 %_31.i1.i.i.i.i.i.i.i, label %bb3.i.i.i.i.i.i.i.i.i, label %bb3.i.i.i.i.i.i.i.i

bb2.i.thread.i.i.i.i.i.i.i:                       ; preds = %bb13.i.i.i.i.i.i.i.i
  %_23.i.i.i.i.i.i.i.i = lshr i32 %34, 6
  %42 = trunc i32 %_23.i.i.i.i.i.i.i.i to i8
  %43 = or i8 %42, -64
  store i8 %43, ptr %buffer.i.i.i.i.i.i.i, align 4, !alias.scope !40, !noalias !39
  %44 = trunc i32 %34 to i8
  %_24.i.i.i.i.i.i.i.i = and i8 %44, 63
  %45 = or i8 %_24.i.i.i.i.i.i.i.i, -128
  store i8 %45, ptr %b2.i.i.i.i.i.i.i.i, align 1, !alias.scope !40, !noalias !39
  br i1 %_31.i19.i.i.i.i.i.i.i, label %bb7.thread.i.i.i.i.i.i.i.i.i, label %bb3.i.i.i.i.i.i.i.i

bb3.i.i.i.i.i.i.i.i:                              ; preds = %bb2.i.thread.i.i.i.i.i.i.i, %bb2.i.i.i.i.i.i.i.i
  %_521.i11.i.i.i.i.i.i.i = phi i64 [ 2, %bb2.i.thread.i.i.i.i.i.i.i ], [ %_521.i.i.i.i.i.i.i.i, %bb2.i.i.i.i.i.i.i.i ]
  %_3.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %_521.i11.i.i.i.i.i.i.i, %11
  br i1 %_3.not.i.i.i.i.i.i.i.i.i.i, label %bb2.i.i.i.i.i.i.i.i.i.i, label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17h3861d3b7582ecf43E.exit.i.i.thread.i.i.i.i.i"

bb2.i.i.i.i.i.i.i.i.i.i:                          ; preds = %bb3.i.i.i.i.i.i.i.i
  %bcmp.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %buffer.i.i.i.i.i.i.i, ptr noundef nonnull dereferenceable(1) %9, i64 %11), !alias.scope !48, !noalias !55
  %46 = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buffer.i.i.i.i.i.i.i), !noalias !39
  br i1 %46, label %_ZN6driver3src6driver6driver17h9646a70af6781dffE.exit, label %"_ZN115_$LT$core..iter..adapters..take_while..TakeWhile$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold5check28_$u7b$$u7b$closure$u7d$$u7d$17h2af9662d6e62ee12E.exit.i.i.i.i"

bb12.i.i.i.i.i.i.i.i:                             ; preds = %bb1.i.i.i.i.i.i.i.i.i.i.4, %bb1.i.i.i.i.i.i.i.i.i.i.3, %bb1.i.i.i.i.i.i.i.i.i.i.2, %bb1.i.i.i.i.i.i.i.i.i.i.1
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %_25.i.i.i.i.i.i.i.i), !noalias !56
  call void @_ZN4core3str7pattern11StrSearcher3new17h069dfca780d7eb06E(ptr noalias nocapture noundef nonnull sret(%"core::str::pattern::StrSearcher<'_, '_>") dereferenceable(104) %_25.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 %9, i64 noundef %11, ptr noalias noundef nonnull readonly align 1 %buffer.i.i.i.i.i.i.i, i64 noundef %_521.i.i.i.i.i.i.i.i), !noalias !57
  call void @llvm.experimental.noalias.scope.decl(metadata !58)
  %_2.i.i.i.i.i.i.i.i.i = load i64, ptr %13, align 8, !range !5, !alias.scope !58, !noalias !61, !noundef !8
  %trunc.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %_2.i.i.i.i.i.i.i.i.i, 0
  %self.06.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %_25.i.i.i.i.i.i.i.i, align 8, !noalias !39
  %self.17.i.i.i.i.i.i.i.i.i.i = load i64, ptr %14, align 8, !noalias !39
  br i1 %trunc.not.i.i.i.i.i.i.i.i.i, label %bb3.preheader.i.i.i.i.i.i.i.i.i, label %bb1.i.i.i.i.i.i.i.i.i

bb3.preheader.i.i.i.i.i.i.i.i.i:                  ; preds = %bb12.i.i.i.i.i.i.i.i
  %47 = load i8, ptr %21, align 2, !alias.scope !58, !noalias !61
  %_4.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %47, 0
  %48 = getelementptr inbounds i8, ptr %self.06.i.i.i.i.i.i.i.i.i.i, i64 %self.17.i.i.i.i.i.i.i.i.i.i
  br i1 %_4.not.i.i.i.i.i.i.i.i.i.i, label %bb5.i.us.preheader.i.i.i.i.i.i.i.i.i, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hd81aa0d91957da2eE.exit.i.i.i.i.i.i.i.i"

bb5.i.us.preheader.i.i.i.i.i.i.i.i.i:             ; preds = %bb3.preheader.i.i.i.i.i.i.i.i.i
  %.promoted82.i.i.i.i.i.i.i.i.i = load i8, ptr %20, align 8, !alias.scope !63, !noalias !66
  %searcher.i.promoted.i.i.i.i.i.i.i.i.i = load i64, ptr %searcher.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !63, !noalias !66
  %is_match.not.i.us.i.peel.i.i.i.i.i.i.i.i = icmp eq i8 %.promoted82.i.i.i.i.i.i.i.i.i, 0
  %49 = icmp eq i64 %searcher.i.promoted.i.i.i.i.i.i.i.i.i, 0
  br i1 %49, label %"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$5index17h6e4652210e4d84b6E.exit.i.us.i.peel.i.i.i.i.i.i.i.i", label %bb3.i.i.i.i.us.i.peel.i.i.i.i.i.i.i.i

bb3.i.i.i.i.us.i.peel.i.i.i.i.i.i.i.i:            ; preds = %bb5.i.us.preheader.i.i.i.i.i.i.i.i.i
  %_9.not.i.i.i.i.us.i.peel.i.i.i.i.i.i.i.i = icmp ugt i64 %self.17.i.i.i.i.i.i.i.i.i.i, %searcher.i.promoted.i.i.i.i.i.i.i.i.i
  br i1 %_9.not.i.i.i.i.us.i.peel.i.i.i.i.i.i.i.i, label %"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h0d9ed69ee3a2c216E.exit.i.i.i.us.i.peel.i.i.i.i.i.i.i.i", label %bb5.i.i.i.i.us.i.peel.i.i.i.i.i.i.i.i

bb5.i.i.i.i.us.i.peel.i.i.i.i.i.i.i.i:            ; preds = %bb3.i.i.i.i.us.i.peel.i.i.i.i.i.i.i.i
  %50 = icmp eq i64 %self.17.i.i.i.i.i.i.i.i.i.i, %searcher.i.promoted.i.i.i.i.i.i.i.i.i
  br i1 %50, label %"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$5index17h6e4652210e4d84b6E.exit.i.us.i.peel.i.i.i.i.i.i.i.i", label %bb2.i13.i.split.us.i.i.i.i.i.i.i.i.i

"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h0d9ed69ee3a2c216E.exit.i.i.i.us.i.peel.i.i.i.i.i.i.i.i": ; preds = %bb3.i.i.i.i.us.i.peel.i.i.i.i.i.i.i.i
  %51 = getelementptr inbounds i8, ptr %self.06.i.i.i.i.i.i.i.i.i.i, i64 %searcher.i.promoted.i.i.i.i.i.i.i.i.i
  %b.i.i.i.i.us.i.peel.i.i.i.i.i.i.i.i = load i8, ptr %51, align 1, !alias.scope !68, !noalias !75, !noundef !8
  %52 = icmp sgt i8 %b.i.i.i.i.us.i.peel.i.i.i.i.i.i.i.i, -65
  br i1 %52, label %"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$5index17h6e4652210e4d84b6E.exit.i.us.i.peel.i.i.i.i.i.i.i.i", label %bb2.i13.i.split.us.i.i.i.i.i.i.i.i.i

"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$5index17h6e4652210e4d84b6E.exit.i.us.i.peel.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h0d9ed69ee3a2c216E.exit.i.i.i.us.i.peel.i.i.i.i.i.i.i.i", %bb5.i.i.i.i.us.i.peel.i.i.i.i.i.i.i.i, %bb5.i.us.preheader.i.i.i.i.i.i.i.i.i
  %53 = getelementptr inbounds i8, ptr %self.06.i.i.i.i.i.i.i.i.i.i, i64 %searcher.i.promoted.i.i.i.i.i.i.i.i.i
  %_10.i.i.i.us.i.peel.i.i.i.i.i.i.i.i = icmp eq i64 %searcher.i.promoted.i.i.i.i.i.i.i.i.i, %self.17.i.i.i.i.i.i.i.i.i.i
  br i1 %_10.i.i.i.us.i.peel.i.i.i.i.i.i.i.i, label %.thread.i.split.us.i.i.i.i.i.i.i.i.i, label %bb3.i15.i.us.i.peel.i.i.i.i.i.i.i.i

bb3.i15.i.us.i.peel.i.i.i.i.i.i.i.i:              ; preds = %"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$5index17h6e4652210e4d84b6E.exit.i.us.i.peel.i.i.i.i.i.i.i.i"
  %x.i.i.us.i.peel.i.i.i.i.i.i.i.i = load i8, ptr %53, align 1, !noalias !77, !noundef !8
  %_7.i.i.us.i.peel.i.i.i.i.i.i.i.i = icmp sgt i8 %x.i.i.us.i.peel.i.i.i.i.i.i.i.i, -1
  br i1 %_7.i.i.us.i.peel.i.i.i.i.i.i.i.i, label %bb6.i.i.us.i.peel.i.i.i.i.i.i.i.i, label %bb7.i.i.us.i.peel.i.i.i.i.i.i.i.i

bb7.i.i.us.i.peel.i.i.i.i.i.i.i.i:                ; preds = %bb3.i15.i.us.i.peel.i.i.i.i.i.i.i.i
  %54 = getelementptr inbounds i8, ptr %53, i64 1
  %_33.i.i.us.i.peel.i.i.i.i.i.i.i.i = and i8 %x.i.i.us.i.peel.i.i.i.i.i.i.i.i, 31
  %init.i.i.us.i.peel.i.i.i.i.i.i.i.i = zext i8 %_33.i.i.us.i.peel.i.i.i.i.i.i.i.i to i32
  %_10.i10.i.i.us.i.peel.i.i.i.i.i.i.i.i = icmp ne ptr %54, %48
  call void @llvm.assume(i1 %_10.i10.i.i.us.i.peel.i.i.i.i.i.i.i.i)
  %y.i.i.us.i.peel.i.i.i.i.i.i.i.i = load i8, ptr %54, align 1, !noalias !77, !noundef !8
  %_37.i16.i.us.i.peel.i.i.i.i.i.i.i.i = shl nuw nsw i32 %init.i.i.us.i.peel.i.i.i.i.i.i.i.i, 6
  %_39.i.i.us.i.peel.i.i.i.i.i.i.i.i = and i8 %y.i.i.us.i.peel.i.i.i.i.i.i.i.i, 63
  %_38.i.i.us.i.peel.i.i.i.i.i.i.i.i = zext i8 %_39.i.i.us.i.peel.i.i.i.i.i.i.i.i to i32
  %55 = or i32 %_37.i16.i.us.i.peel.i.i.i.i.i.i.i.i, %_38.i.i.us.i.peel.i.i.i.i.i.i.i.i
  %_14.i.i.us.i.peel.i.i.i.i.i.i.i.i = icmp ugt i8 %x.i.i.us.i.peel.i.i.i.i.i.i.i.i, -33
  br i1 %_14.i.i.us.i.peel.i.i.i.i.i.i.i.i, label %bb9.i.i.us.i.peel.i.i.i.i.i.i.i.i, label %_ZN4core3str11validations15next_code_point17h3d023179b661daadE.exit.thread.i.us.i.peel.i.i.i.i.i.i.i.i

bb9.i.i.us.i.peel.i.i.i.i.i.i.i.i:                ; preds = %bb7.i.i.us.i.peel.i.i.i.i.i.i.i.i
  %56 = getelementptr inbounds i8, ptr %53, i64 2
  %_10.i16.i.i.us.i.peel.i.i.i.i.i.i.i.i = icmp ne ptr %56, %48
  call void @llvm.assume(i1 %_10.i16.i.i.us.i.peel.i.i.i.i.i.i.i.i)
  %z.i.i.us.i.peel.i.i.i.i.i.i.i.i = load i8, ptr %56, align 1, !noalias !77, !noundef !8
  %_42.i.i.us.i.peel.i.i.i.i.i.i.i.i = shl nuw nsw i32 %_38.i.i.us.i.peel.i.i.i.i.i.i.i.i, 6
  %_44.i17.i.us.i.peel.i.i.i.i.i.i.i.i = and i8 %z.i.i.us.i.peel.i.i.i.i.i.i.i.i, 63
  %_43.i.i.us.i.peel.i.i.i.i.i.i.i.i = zext i8 %_44.i17.i.us.i.peel.i.i.i.i.i.i.i.i to i32
  %y_z.i.i.us.i.peel.i.i.i.i.i.i.i.i = or i32 %_42.i.i.us.i.peel.i.i.i.i.i.i.i.i, %_43.i.i.us.i.peel.i.i.i.i.i.i.i.i
  %_21.i.i.us.i.peel.i.i.i.i.i.i.i.i = shl nuw nsw i32 %init.i.i.us.i.peel.i.i.i.i.i.i.i.i, 12
  %57 = or i32 %y_z.i.i.us.i.peel.i.i.i.i.i.i.i.i, %_21.i.i.us.i.peel.i.i.i.i.i.i.i.i
  %_22.i.i.us.i.peel.i.i.i.i.i.i.i.i = icmp ugt i8 %x.i.i.us.i.peel.i.i.i.i.i.i.i.i, -17
  br i1 %_22.i.i.us.i.peel.i.i.i.i.i.i.i.i, label %bb11.i.i.us.i.peel.i.i.i.i.i.i.i.i, label %_ZN4core3str11validations15next_code_point17h3d023179b661daadE.exit.thread.i.us.i.peel.i.i.i.i.i.i.i.i

bb11.i.i.us.i.peel.i.i.i.i.i.i.i.i:               ; preds = %bb9.i.i.us.i.peel.i.i.i.i.i.i.i.i
  %58 = getelementptr inbounds i8, ptr %56, i64 1
  %_10.i22.i.i.us.i.peel.i.i.i.i.i.i.i.i = icmp ne ptr %58, %48
  call void @llvm.assume(i1 %_10.i22.i.i.us.i.peel.i.i.i.i.i.i.i.i)
  %w.i.i.us.i.peel.i.i.i.i.i.i.i.i = load i8, ptr %58, align 1, !noalias !77, !noundef !8
  %_27.i.i.us.i.peel.i.i.i.i.i.i.i.i = shl nuw nsw i32 %init.i.i.us.i.peel.i.i.i.i.i.i.i.i, 18
  %_26.i.i.us.i.peel.i.i.i.i.i.i.i.i = and i32 %_27.i.i.us.i.peel.i.i.i.i.i.i.i.i, 1835008
  %_47.i.i.us.i.peel.i.i.i.i.i.i.i.i = shl nuw nsw i32 %y_z.i.i.us.i.peel.i.i.i.i.i.i.i.i, 6
  %_49.i.i.us.i.peel.i.i.i.i.i.i.i.i = and i8 %w.i.i.us.i.peel.i.i.i.i.i.i.i.i, 63
  %_48.i.i.us.i.peel.i.i.i.i.i.i.i.i = zext i8 %_49.i.i.us.i.peel.i.i.i.i.i.i.i.i to i32
  %_28.i.i.us.i.peel.i.i.i.i.i.i.i.i = or i32 %_47.i.i.us.i.peel.i.i.i.i.i.i.i.i, %_48.i.i.us.i.peel.i.i.i.i.i.i.i.i
  %59 = or i32 %_28.i.i.us.i.peel.i.i.i.i.i.i.i.i, %_26.i.i.us.i.peel.i.i.i.i.i.i.i.i
  br label %_ZN4core3str11validations15next_code_point17h3d023179b661daadE.exit.thread.i.us.i.peel.i.i.i.i.i.i.i.i

bb6.i.i.us.i.peel.i.i.i.i.i.i.i.i:                ; preds = %bb3.i15.i.us.i.peel.i.i.i.i.i.i.i.i
  %_8.i.i.us.i.peel.i.i.i.i.i.i.i.i = zext i8 %x.i.i.us.i.peel.i.i.i.i.i.i.i.i to i32
  br label %_ZN4core3str11validations15next_code_point17h3d023179b661daadE.exit.thread.i.us.i.peel.i.i.i.i.i.i.i.i

_ZN4core3str11validations15next_code_point17h3d023179b661daadE.exit.thread.i.us.i.peel.i.i.i.i.i.i.i.i: ; preds = %bb6.i.i.us.i.peel.i.i.i.i.i.i.i.i, %bb11.i.i.us.i.peel.i.i.i.i.i.i.i.i, %bb9.i.i.us.i.peel.i.i.i.i.i.i.i.i, %bb7.i.i.us.i.peel.i.i.i.i.i.i.i.i
  %.sroa.4.0.i.ph.i.us.i.peel.i.i.i.i.i.i.i.i = phi i32 [ %55, %bb7.i.i.us.i.peel.i.i.i.i.i.i.i.i ], [ %57, %bb9.i.i.us.i.peel.i.i.i.i.i.i.i.i ], [ %59, %bb11.i.i.us.i.peel.i.i.i.i.i.i.i.i ], [ %_8.i.i.us.i.peel.i.i.i.i.i.i.i.i, %bb6.i.i.us.i.peel.i.i.i.i.i.i.i.i ]
  br i1 %is_match.not.i.us.i.peel.i.i.i.i.i.i.i.i, label %bb8.i.us.i.peel.i.i.i.i.i.i.i.i, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hd81aa0d91957da2eE.exit.i.i.i.thread.i.i.i.i.i"

bb8.i.us.i.peel.i.i.i.i.i.i.i.i:                  ; preds = %_ZN4core3str11validations15next_code_point17h3d023179b661daadE.exit.thread.i.us.i.peel.i.i.i.i.i.i.i.i
  %60 = icmp eq i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i.i.i.i.i.i.i, 1114112
  br i1 %60, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hd81aa0d91957da2eE.exit.i.i.i.i.i.i.i.i", label %bb6.i.us.i.peel.i.i.i.i.i.i.i.i

bb6.i.us.i.peel.i.i.i.i.i.i.i.i:                  ; preds = %bb8.i.us.i.peel.i.i.i.i.i.i.i.i
  %_49.i.us.i.peel.i.i.i.i.i.i.i.i = icmp ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i.i.i.i.i.i.i, 128
  br i1 %_49.i.us.i.peel.i.i.i.i.i.i.i.i, label %bb5.i.us.i.i.i.i.i.i.i.i.i, label %bb27.i.us.i.peel.i.i.i.i.i.i.i.i

bb27.i.us.i.peel.i.i.i.i.i.i.i.i:                 ; preds = %bb6.i.us.i.peel.i.i.i.i.i.i.i.i
  %_50.i.us.i.peel.i.i.i.i.i.i.i.i = icmp ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i.i.i.i.i.i.i, 2048
  br i1 %_50.i.us.i.peel.i.i.i.i.i.i.i.i, label %bb5.i.us.i.i.i.i.i.i.i.i.i, label %bb29.i.us.i.peel.i.i.i.i.i.i.i.i

bb29.i.us.i.peel.i.i.i.i.i.i.i.i:                 ; preds = %bb27.i.us.i.peel.i.i.i.i.i.i.i.i
  %_51.i.us.i.peel.i.i.i.i.i.i.i.i = icmp ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i.i.i.i.i.i.i, 65536
  %..i.us.i.peel.i.i.i.i.i.i.i.i = select i1 %_51.i.us.i.peel.i.i.i.i.i.i.i.i, i64 3, i64 4
  br label %bb5.i.us.i.i.i.i.i.i.i.i.i

bb5.i.us.i.i.i.i.i.i.i.i.i:                       ; preds = %bb29.i.us.i.peel.i.i.i.i.i.i.i.i, %bb27.i.us.i.peel.i.i.i.i.i.i.i.i, %bb6.i.us.i.peel.i.i.i.i.i.i.i.i
  %_16.0.i.us.i.peel.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb6.i.us.i.peel.i.i.i.i.i.i.i.i ], [ %..i.us.i.peel.i.i.i.i.i.i.i.i, %bb29.i.us.i.peel.i.i.i.i.i.i.i.i ], [ 2, %bb27.i.us.i.peel.i.i.i.i.i.i.i.i ]
  %61 = add i64 %_16.0.i.us.i.peel.i.i.i.i.i.i.i.i, %searcher.i.promoted.i.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !80)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$5index17h6e4652210e4d84b6E.exit.i.us.i.i.i.i.i.i.i.i.i", label %bb3.i.i.i.i.us.i.i.i.i.i.i.i.i.i

bb3.i.i.i.i.us.i.i.i.i.i.i.i.i.i:                 ; preds = %bb5.i.us.i.i.i.i.i.i.i.i.i
  %_9.not.i.i.i.i.us.i.i.i.i.i.i.i.i.i = icmp ugt i64 %self.17.i.i.i.i.i.i.i.i.i.i, %61
  br i1 %_9.not.i.i.i.i.us.i.i.i.i.i.i.i.i.i, label %"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h0d9ed69ee3a2c216E.exit.i.i.i.us.i.i.i.i.i.i.i.i.i", label %bb5.i.i.i.i.us.i.i.i.i.i.i.i.i.i

bb5.i.i.i.i.us.i.i.i.i.i.i.i.i.i:                 ; preds = %bb3.i.i.i.i.us.i.i.i.i.i.i.i.i.i
  %63 = icmp eq i64 %self.17.i.i.i.i.i.i.i.i.i.i, %61
  br i1 %63, label %"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$5index17h6e4652210e4d84b6E.exit.i.us.i.i.i.i.i.i.i.i.i", label %bb2.i13.i.split.us.i.i.i.i.i.i.i.i.i

"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h0d9ed69ee3a2c216E.exit.i.i.i.us.i.i.i.i.i.i.i.i.i": ; preds = %bb3.i.i.i.i.us.i.i.i.i.i.i.i.i.i
  %64 = getelementptr inbounds i8, ptr %self.06.i.i.i.i.i.i.i.i.i.i, i64 %61
  %b.i.i.i.i.us.i.i.i.i.i.i.i.i.i = load i8, ptr %64, align 1, !alias.scope !68, !noalias !81, !noundef !8
  %65 = icmp sgt i8 %b.i.i.i.i.us.i.i.i.i.i.i.i.i.i, -65
  br i1 %65, label %"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$5index17h6e4652210e4d84b6E.exit.i.us.i.i.i.i.i.i.i.i.i", label %bb2.i13.i.split.us.i.i.i.i.i.i.i.i.i

"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$5index17h6e4652210e4d84b6E.exit.i.us.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h0d9ed69ee3a2c216E.exit.i.i.i.us.i.i.i.i.i.i.i.i.i", %bb5.i.i.i.i.us.i.i.i.i.i.i.i.i.i, %bb5.i.us.i.i.i.i.i.i.i.i.i
  %66 = getelementptr inbounds i8, ptr %self.06.i.i.i.i.i.i.i.i.i.i, i64 %61
  %_10.i.i.i.us.i.i.i.i.i.i.i.i.i = icmp eq i64 %61, %self.17.i.i.i.i.i.i.i.i.i.i
  br i1 %_10.i.i.i.us.i.i.i.i.i.i.i.i.i, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hd81aa0d91957da2eE.exit.i.i.i.thread.i.i.i.i.i", label %bb3.i15.i.us.i.i.i.i.i.i.i.i.i

bb3.i15.i.us.i.i.i.i.i.i.i.i.i:                   ; preds = %"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$5index17h6e4652210e4d84b6E.exit.i.us.i.i.i.i.i.i.i.i.i"
  %x.i.i.us.i.i.i.i.i.i.i.i.i = load i8, ptr %66, align 1, !noalias !82, !noundef !8
  %_7.i.i.us.i.i.i.i.i.i.i.i.i = icmp sgt i8 %x.i.i.us.i.i.i.i.i.i.i.i.i, -1
  br i1 %_7.i.i.us.i.i.i.i.i.i.i.i.i, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hd81aa0d91957da2eE.exit.i.i.i.thread.i.i.i.i.i", label %bb7.i.i.us.i.i.i.i.i.i.i.i.i

bb7.i.i.us.i.i.i.i.i.i.i.i.i:                     ; preds = %bb3.i15.i.us.i.i.i.i.i.i.i.i.i
  %67 = getelementptr inbounds i8, ptr %66, i64 1
  %_10.i10.i.i.us.i.i.i.i.i.i.i.i.i = icmp ne ptr %67, %48
  call void @llvm.assume(i1 %_10.i10.i.i.us.i.i.i.i.i.i.i.i.i)
  %_14.i.i.us.i.i.i.i.i.i.i.i.i = icmp ugt i8 %x.i.i.us.i.i.i.i.i.i.i.i.i, -33
  br i1 %_14.i.i.us.i.i.i.i.i.i.i.i.i, label %bb9.i.i.us.i.i.i.i.i.i.i.i.i, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hd81aa0d91957da2eE.exit.i.i.i.thread.i.i.i.i.i"

bb9.i.i.us.i.i.i.i.i.i.i.i.i:                     ; preds = %bb7.i.i.us.i.i.i.i.i.i.i.i.i
  %68 = getelementptr inbounds i8, ptr %66, i64 2
  %_10.i16.i.i.us.i.i.i.i.i.i.i.i.i = icmp ne ptr %68, %48
  call void @llvm.assume(i1 %_10.i16.i.i.us.i.i.i.i.i.i.i.i.i)
  %_22.i.i.us.i.i.i.i.i.i.i.i.i = icmp ugt i8 %x.i.i.us.i.i.i.i.i.i.i.i.i, -17
  br i1 %_22.i.i.us.i.i.i.i.i.i.i.i.i, label %bb11.i.i.us.i.i.i.i.i.i.i.i.i, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hd81aa0d91957da2eE.exit.i.i.i.thread.i.i.i.i.i"

bb11.i.i.us.i.i.i.i.i.i.i.i.i:                    ; preds = %bb9.i.i.us.i.i.i.i.i.i.i.i.i
  %69 = getelementptr inbounds i8, ptr %68, i64 1
  %_10.i22.i.i.us.i.i.i.i.i.i.i.i.i = icmp ne ptr %69, %48
  call void @llvm.assume(i1 %_10.i22.i.i.us.i.i.i.i.i.i.i.i.i)
  br label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hd81aa0d91957da2eE.exit.i.i.i.thread.i.i.i.i.i"

bb2.i13.i.split.us.i.i.i.i.i.i.i.i.i:             ; preds = %"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h0d9ed69ee3a2c216E.exit.i.i.i.us.i.i.i.i.i.i.i.i.i", %bb5.i.i.i.i.us.i.i.i.i.i.i.i.i.i, %"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h0d9ed69ee3a2c216E.exit.i.i.i.us.i.peel.i.i.i.i.i.i.i.i", %bb5.i.i.i.i.us.i.peel.i.i.i.i.i.i.i.i
  %v1.i.i73.us83.i.lcssa.i.i.i.i.i.i.i.i = phi i64 [ %61, %bb5.i.i.i.i.us.i.i.i.i.i.i.i.i.i ], [ %61, %"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h0d9ed69ee3a2c216E.exit.i.i.i.us.i.i.i.i.i.i.i.i.i" ], [ %searcher.i.promoted.i.i.i.i.i.i.i.i.i, %bb5.i.i.i.i.us.i.peel.i.i.i.i.i.i.i.i ], [ %searcher.i.promoted.i.i.i.i.i.i.i.i.i, %"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h0d9ed69ee3a2c216E.exit.i.i.i.us.i.peel.i.i.i.i.i.i.i.i" ]
  call void @_ZN4core3str16slice_error_fail17h696d29a1b388d0feE(ptr noalias noundef nonnull readonly align 1 %self.06.i.i.i.i.i.i.i.i.i.i, i64 noundef %self.17.i.i.i.i.i.i.i.i.i.i, i64 noundef %v1.i.i73.us83.i.lcssa.i.i.i.i.i.i.i.i, i64 noundef %self.17.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_3b110eab6f99e4012d4a0f4d0e2b68a0) #10, !noalias !81
  unreachable

.thread.i.split.us.i.i.i.i.i.i.i.i.i:             ; preds = %"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$5index17h6e4652210e4d84b6E.exit.i.us.i.peel.i.i.i.i.i.i.i.i"
  br i1 %is_match.not.i.us.i.peel.i.i.i.i.i.i.i.i, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hd81aa0d91957da2eE.exit.i.i.i.i.i.i.i.i", label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hd81aa0d91957da2eE.exit.i.i.i.thread.i.i.i.i.i"

bb1.i.i.i.i.i.i.i.i.i:                            ; preds = %bb12.i.i.i.i.i.i.i.i
  %_10.i.i.i.i.i.i.i.i.i = load i64, ptr %15, align 8, !alias.scope !58, !noalias !61, !noundef !8
  %is_long.i.i.i.i.i.i.i.i.i = icmp eq i64 %_10.i.i.i.i.i.i.i.i.i, -1
  %self.01.i.i.i.i.i.i.i.i.i = load ptr, ptr %16, align 8, !alias.scope !58, !noalias !61, !nonnull !8, !align !10
  %self.12.i.i.i.i.i.i.i.i.i = load i64, ptr %17, align 8, !alias.scope !58, !noalias !61
  br i1 %is_long.i.i.i.i.i.i.i.i.i, label %bb8.i.i.i.i.i.i.i.i.i, label %bb9.i.i.i.i.i.i.i.i.i

bb9.i.i.i.i.i.i.i.i.i:                            ; preds = %bb1.i.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !83)
  call void @llvm.experimental.noalias.scope.decl(metadata !86)
  call void @llvm.experimental.noalias.scope.decl(metadata !88)
  %.promoted.i31.i.i.i.i.i.i.i.i = load i64, ptr %18, align 8, !alias.scope !83, !noalias !90
  %needle_last38.i32.i.i.i.i.i.i.i.i = add i64 %self.12.i.i.i.i.i.i.i.i.i, -1
  %index39.i33.i.i.i.i.i.i.i.i = add i64 %.promoted.i31.i.i.i.i.i.i.i.i, %needle_last38.i32.i.i.i.i.i.i.i.i
  %_79.not40.i34.i.i.i.i.i.i.i.i = icmp ult i64 %index39.i33.i.i.i.i.i.i.i.i, %self.17.i.i.i.i.i.i.i.i.i.i
  br i1 %_79.not40.i34.i.i.i.i.i.i.i.i, label %bb4.lr.ph.i39.i.i.i.i.i.i.i.i, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hd81aa0d91957da2eE.exit.i.i.i.i.i.i.i.i"

bb4.lr.ph.i39.i.i.i.i.i.i.i.i:                    ; preds = %bb9.i.i.i.i.i.i.i.i.i
  %_90.i35.i.i.i.i.i.i.i.i = load i64, ptr %19, align 8, !alias.scope !83, !noalias !90, !noundef !8
  %v1.i36.i.i.i.i.i.i.i.i = load i64, ptr %searcher.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !83, !noalias !90
  %_69.i37.i.i.i.i.i.i.i.i = load i64, ptr %20, align 8, !alias.scope !83, !noalias !90
  %70 = sub i64 %self.12.i.i.i.i.i.i.i.i.i, %_69.i37.i.i.i.i.i.i.i.i
  %_45.i67.i.i.i.i.i.i.i.i = sub i64 1, %v1.i36.i.i.i.i.i.i.i.i
  br label %bb4.i45.i.i.i.i.i.i.i.i

bb4.i45.i.i.i.i.i.i.i.i:                          ; preds = %bb1.backedge.sink.split.i.i.i.i.i.i.i.i.i, %bb4.lr.ph.i39.i.i.i.i.i.i.i.i
  %71 = phi i64 [ %.promoted.i31.i.i.i.i.i.i.i.i, %bb4.lr.ph.i39.i.i.i.i.i.i.i.i ], [ %.ph.i.i.i.i.i.i.i.i.i, %bb1.backedge.sink.split.i.i.i.i.i.i.i.i.i ]
  %v246.i41.i.i.i.i.i.i.i.i = phi i64 [ %_10.i.i.i.i.i.i.i.i.i, %bb4.lr.ph.i39.i.i.i.i.i.i.i.i ], [ %.sink.i.i.i.i.i.i.i.i.i, %bb1.backedge.sink.split.i.i.i.i.i.i.i.i.i ]
  %index41.i42.i.i.i.i.i.i.i.i = phi i64 [ %index39.i33.i.i.i.i.i.i.i.i, %bb4.lr.ph.i39.i.i.i.i.i.i.i.i ], [ %index.i51.i.i.i.i.i.i.i.i, %bb1.backedge.sink.split.i.i.i.i.i.i.i.i.i ]
  %72 = getelementptr inbounds i8, ptr %self.06.i.i.i.i.i.i.i.i.i.i, i64 %index41.i42.i.i.i.i.i.i.i.i
  %tail_byte.i43.i.i.i.i.i.i.i.i = load i8, ptr %72, align 1, !alias.scope !86, !noalias !92, !noundef !8
  %73 = and i8 %tail_byte.i43.i.i.i.i.i.i.i.i, 63
  %74 = zext i8 %73 to i64
  %75 = shl nuw i64 1, %74
  %76 = and i64 %75, %_90.i35.i.i.i.i.i.i.i.i
  %_21.not.i44.i.i.i.i.i.i.i.i = icmp eq i64 %76, 0
  br i1 %_21.not.i44.i.i.i.i.i.i.i.i, label %bb13.i49.i.i.i.i.i.i.i.i, label %bb16.i48.i.i.i.i.i.i.i.i

bb16.i48.i.i.i.i.i.i.i.i:                         ; preds = %bb4.i45.i.i.i.i.i.i.i.i
  %.0.sroa.speculated.i.i47.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %v1.i36.i.i.i.i.i.i.i.i, i64 %v246.i41.i.i.i.i.i.i.i.i)
  br label %bb20.i55.i.i.i.i.i.i.i.i

bb13.i49.i.i.i.i.i.i.i.i:                         ; preds = %bb4.i45.i.i.i.i.i.i.i.i
  %77 = add i64 %71, %self.12.i.i.i.i.i.i.i.i.i
  br label %bb1.backedge.sink.split.i.i.i.i.i.i.i.i.i

bb1.backedge.sink.split.i.i.i.i.i.i.i.i.i:        ; preds = %bb37.i83.i.i.i.i.i.i.i.i, %bb25.i68.i.i.i.i.i.i.i.i, %bb13.i49.i.i.i.i.i.i.i.i
  %.sink.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb13.i49.i.i.i.i.i.i.i.i ], [ 0, %bb25.i68.i.i.i.i.i.i.i.i ], [ %70, %bb37.i83.i.i.i.i.i.i.i.i ]
  %.ph.i.i.i.i.i.i.i.i.i = phi i64 [ %77, %bb13.i49.i.i.i.i.i.i.i.i ], [ %83, %bb25.i68.i.i.i.i.i.i.i.i ], [ %88, %bb37.i83.i.i.i.i.i.i.i.i ]
  %index.i51.i.i.i.i.i.i.i.i = add i64 %.ph.i.i.i.i.i.i.i.i.i, %needle_last38.i32.i.i.i.i.i.i.i.i
  %_79.not.i52.i.i.i.i.i.i.i.i = icmp ult i64 %index.i51.i.i.i.i.i.i.i.i, %self.17.i.i.i.i.i.i.i.i.i.i
  br i1 %_79.not.i52.i.i.i.i.i.i.i.i, label %bb4.i45.i.i.i.i.i.i.i.i, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hd81aa0d91957da2eE.exit.i.i.i.i.i.i.i.i"

bb20.i55.i.i.i.i.i.i.i.i:                         ; preds = %bb24.i63.i.i.i.i.i.i.i.i, %bb16.i48.i.i.i.i.i.i.i.i
  %iter.sroa.0.0.i54.i.i.i.i.i.i.i.i = phi i64 [ %.0.sroa.speculated.i.i47.i.i.i.i.i.i.i.i, %bb16.i48.i.i.i.i.i.i.i.i ], [ %79, %bb24.i63.i.i.i.i.i.i.i.i ]
  %78 = icmp ult i64 %iter.sroa.0.0.i54.i.i.i.i.i.i.i.i, %self.12.i.i.i.i.i.i.i.i.i
  br i1 %78, label %bb23.i59.i.i.i.i.i.i.i.i, label %bb32.i70.i.i.i.i.i.i.i.i

bb23.i59.i.i.i.i.i.i.i.i:                         ; preds = %bb20.i55.i.i.i.i.i.i.i.i
  %_41.i57.i.i.i.i.i.i.i.i = add i64 %iter.sroa.0.0.i54.i.i.i.i.i.i.i.i, %71
  %_44.i58.i.i.i.i.i.i.i.i = icmp ult i64 %_41.i57.i.i.i.i.i.i.i.i, %self.17.i.i.i.i.i.i.i.i.i.i
  br i1 %_44.i58.i.i.i.i.i.i.i.i, label %bb24.i63.i.i.i.i.i.i.i.i, label %panic6.i65.i.i.i.i.i.i.i.i, !prof !93

bb24.i63.i.i.i.i.i.i.i.i:                         ; preds = %bb23.i59.i.i.i.i.i.i.i.i
  %79 = add nuw i64 %iter.sroa.0.0.i54.i.i.i.i.i.i.i.i, 1
  %80 = getelementptr inbounds [0 x i8], ptr %self.01.i.i.i.i.i.i.i.i.i, i64 0, i64 %iter.sroa.0.0.i54.i.i.i.i.i.i.i.i
  %_37.i60.i.i.i.i.i.i.i.i = load i8, ptr %80, align 1, !alias.scope !88, !noalias !94, !noundef !8
  %81 = getelementptr inbounds [0 x i8], ptr %self.06.i.i.i.i.i.i.i.i.i.i, i64 0, i64 %_41.i57.i.i.i.i.i.i.i.i
  %_40.i61.i.i.i.i.i.i.i.i = load i8, ptr %81, align 1, !alias.scope !86, !noalias !92, !noundef !8
  %_36.not.i62.i.i.i.i.i.i.i.i = icmp eq i8 %_37.i60.i.i.i.i.i.i.i.i, %_40.i61.i.i.i.i.i.i.i.i
  br i1 %_36.not.i62.i.i.i.i.i.i.i.i, label %bb20.i55.i.i.i.i.i.i.i.i, label %bb25.i68.i.i.i.i.i.i.i.i

panic6.i65.i.i.i.i.i.i.i.i:                       ; preds = %bb23.i59.i.i.i.i.i.i.i.i
  %82 = add i64 %.0.sroa.speculated.i.i47.i.i.i.i.i.i.i.i, %71
  %umax.i64.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %self.17.i.i.i.i.i.i.i.i.i.i, i64 %82)
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 noundef %umax.i64.i.i.i.i.i.i.i.i, i64 noundef %self.17.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_895e9b10e78f9e4cd0bcd256acf09bb7) #10, !noalias !95
  unreachable

bb25.i68.i.i.i.i.i.i.i.i:                         ; preds = %bb24.i63.i.i.i.i.i.i.i.i
  %83 = add i64 %_45.i67.i.i.i.i.i.i.i.i, %_41.i57.i.i.i.i.i.i.i.i
  br label %bb1.backedge.sink.split.i.i.i.i.i.i.i.i.i

bb32.i70.i.i.i.i.i.i.i.i:                         ; preds = %bb36.i81.i.i.i.i.i.i.i.i, %bb20.i55.i.i.i.i.i.i.i.i
  %iter5.sroa.5.0.i69.i.i.i.i.i.i.i.i = phi i64 [ %85, %bb36.i81.i.i.i.i.i.i.i.i ], [ %v1.i36.i.i.i.i.i.i.i.i, %bb20.i55.i.i.i.i.i.i.i.i ]
  %84 = icmp ult i64 %v246.i41.i.i.i.i.i.i.i.i, %iter5.sroa.5.0.i69.i.i.i.i.i.i.i.i
  br i1 %84, label %bb33.i73.i.i.i.i.i.i.i.i, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hd81aa0d91957da2eE.exit.i.i.i.thread.i.i.i.i.i"

bb33.i73.i.i.i.i.i.i.i.i:                         ; preds = %bb32.i70.i.i.i.i.i.i.i.i
  %85 = add i64 %iter5.sroa.5.0.i69.i.i.i.i.i.i.i.i, -1
  %_63.i72.i.i.i.i.i.i.i.i = icmp ult i64 %85, %self.12.i.i.i.i.i.i.i.i.i
  br i1 %_63.i72.i.i.i.i.i.i.i.i, label %bb35.i76.i.i.i.i.i.i.i.i, label %panic8.i77.i.i.i.i.i.i.i.i, !prof !93

bb35.i76.i.i.i.i.i.i.i.i:                         ; preds = %bb33.i73.i.i.i.i.i.i.i.i
  %_65.i74.i.i.i.i.i.i.i.i = add i64 %85, %71
  %_68.i75.i.i.i.i.i.i.i.i = icmp ult i64 %_65.i74.i.i.i.i.i.i.i.i, %self.17.i.i.i.i.i.i.i.i.i.i
  br i1 %_68.i75.i.i.i.i.i.i.i.i, label %bb36.i81.i.i.i.i.i.i.i.i, label %panic9.i82.i.i.i.i.i.i.i.i, !prof !93

panic8.i77.i.i.i.i.i.i.i.i:                       ; preds = %bb33.i73.i.i.i.i.i.i.i.i
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 noundef %85, i64 noundef %self.12.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_d688453ff83925730a6c9b89287a35c6) #10, !noalias !95
  unreachable

bb36.i81.i.i.i.i.i.i.i.i:                         ; preds = %bb35.i76.i.i.i.i.i.i.i.i
  %86 = getelementptr inbounds [0 x i8], ptr %self.01.i.i.i.i.i.i.i.i.i, i64 0, i64 %85
  %_61.i78.i.i.i.i.i.i.i.i = load i8, ptr %86, align 1, !alias.scope !88, !noalias !94, !noundef !8
  %87 = getelementptr inbounds [0 x i8], ptr %self.06.i.i.i.i.i.i.i.i.i.i, i64 0, i64 %_65.i74.i.i.i.i.i.i.i.i
  %_64.i79.i.i.i.i.i.i.i.i = load i8, ptr %87, align 1, !alias.scope !86, !noalias !92, !noundef !8
  %_60.not.i80.i.i.i.i.i.i.i.i = icmp eq i8 %_61.i78.i.i.i.i.i.i.i.i, %_64.i79.i.i.i.i.i.i.i.i
  br i1 %_60.not.i80.i.i.i.i.i.i.i.i, label %bb32.i70.i.i.i.i.i.i.i.i, label %bb37.i83.i.i.i.i.i.i.i.i

panic9.i82.i.i.i.i.i.i.i.i:                       ; preds = %bb35.i76.i.i.i.i.i.i.i.i
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 noundef %_65.i74.i.i.i.i.i.i.i.i, i64 noundef %self.17.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_7dd646b910703aa78ed2998132a78434) #10, !noalias !95
  unreachable

bb37.i83.i.i.i.i.i.i.i.i:                         ; preds = %bb36.i81.i.i.i.i.i.i.i.i
  %88 = add i64 %71, %_69.i37.i.i.i.i.i.i.i.i
  br label %bb1.backedge.sink.split.i.i.i.i.i.i.i.i.i

bb8.i.i.i.i.i.i.i.i.i:                            ; preds = %bb1.i.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !96)
  call void @llvm.experimental.noalias.scope.decl(metadata !99)
  call void @llvm.experimental.noalias.scope.decl(metadata !101)
  %.promoted.i.i.i.i.i.i.i.i.i = load i64, ptr %18, align 8, !alias.scope !96, !noalias !103
  %needle_last38.i.i.i.i.i.i.i.i.i = add i64 %self.12.i.i.i.i.i.i.i.i.i, -1
  %index39.i.i.i.i.i.i.i.i.i = add i64 %.promoted.i.i.i.i.i.i.i.i.i, %needle_last38.i.i.i.i.i.i.i.i.i
  %_79.not40.i.i.i.i.i.i.i.i.i = icmp ult i64 %index39.i.i.i.i.i.i.i.i.i, %self.17.i.i.i.i.i.i.i.i.i.i
  br i1 %_79.not40.i.i.i.i.i.i.i.i.i, label %bb4.lr.ph.i.i.i.i.i.i.i.i.i, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hd81aa0d91957da2eE.exit.i.i.i.i.i.i.i.i"

bb4.lr.ph.i.i.i.i.i.i.i.i.i:                      ; preds = %bb8.i.i.i.i.i.i.i.i.i
  %_90.i26.i.i.i.i.i.i.i.i = load i64, ptr %19, align 8, !alias.scope !96, !noalias !103, !noundef !8
  %v1.i.i.i.i.i.i.i.i.i = load i64, ptr %searcher.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !96, !noalias !103
  %_69.i.i.i.i.i.i.i.i.i = load i64, ptr %20, align 8, !alias.scope !96, !noalias !103
  %89 = add i64 %v1.i.i.i.i.i.i.i.i.i, -1
  %_63.i.first_iter.i.i.i.i.i.i.i.i = icmp ult i64 %89, %self.12.i.i.i.i.i.i.i.i.i
  %_63.i.first_iter.i.fr.i.i.i.i.i.i.i = freeze i1 %_63.i.first_iter.i.i.i.i.i.i.i.i
  %_45.i.i.i.i.i.i.i.i.i = sub i64 1, %v1.i.i.i.i.i.i.i.i.i
  br label %bb4.i.i.i.i.i.i.i.i.i

bb4.i.i.i.i.i.i.i.i.i:                            ; preds = %bb1.backedge.i.i.i.i.i.i.i.i.i, %bb4.lr.ph.i.i.i.i.i.i.i.i.i
  %90 = phi i64 [ %.promoted.i.i.i.i.i.i.i.i.i, %bb4.lr.ph.i.i.i.i.i.i.i.i.i ], [ %97, %bb1.backedge.i.i.i.i.i.i.i.i.i ]
  %index41.i.i.i.i.i.i.i.i.i = phi i64 [ %index39.i.i.i.i.i.i.i.i.i, %bb4.lr.ph.i.i.i.i.i.i.i.i.i ], [ %index.i.i.i.i.i.i.i.i.i, %bb1.backedge.i.i.i.i.i.i.i.i.i ]
  %91 = getelementptr inbounds i8, ptr %self.06.i.i.i.i.i.i.i.i.i.i, i64 %index41.i.i.i.i.i.i.i.i.i
  %tail_byte.i.i.i.i.i.i.i.i.i = load i8, ptr %91, align 1, !alias.scope !99, !noalias !105, !noundef !8
  %92 = and i8 %tail_byte.i.i.i.i.i.i.i.i.i, 63
  %93 = zext i8 %92 to i64
  %94 = shl nuw i64 1, %93
  %95 = and i64 %94, %_90.i26.i.i.i.i.i.i.i.i
  %_21.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %95, 0
  br i1 %_21.not.i.i.i.i.i.i.i.i.i, label %bb13.i.i.i.i.i.i.i.i.i, label %bb20.i.i.i.i.i.i.i.i.i

bb13.i.i.i.i.i.i.i.i.i:                           ; preds = %bb4.i.i.i.i.i.i.i.i.i
  %96 = add i64 %90, %self.12.i.i.i.i.i.i.i.i.i
  br label %bb1.backedge.i.i.i.i.i.i.i.i.i

bb1.backedge.i.i.i.i.i.i.i.i.i:                   ; preds = %bb25.i.i.i.i.i.i.i.i.i, %bb37.i29.i.split.us.i.i.i.i.i.i.i, %bb13.i.i.i.i.i.i.i.i.i
  %97 = phi i64 [ %96, %bb13.i.i.i.i.i.i.i.i.i ], [ %102, %bb37.i29.i.split.us.i.i.i.i.i.i.i ], [ %107, %bb25.i.i.i.i.i.i.i.i.i ]
  %index.i.i.i.i.i.i.i.i.i = add i64 %97, %needle_last38.i.i.i.i.i.i.i.i.i
  %_79.not.i.i.i.i.i.i.i.i.i = icmp ult i64 %index.i.i.i.i.i.i.i.i.i, %self.17.i.i.i.i.i.i.i.i.i.i
  br i1 %_79.not.i.i.i.i.i.i.i.i.i, label %bb4.i.i.i.i.i.i.i.i.i, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hd81aa0d91957da2eE.exit.i.i.i.i.i.i.i.i"

bb20.i.i.i.i.i.i.i.i.i:                           ; preds = %bb24.i.i.i.i.i.i.i.i.i, %bb4.i.i.i.i.i.i.i.i.i
  %iter.sroa.0.0.i.i.i.i.i.i.i.i.i = phi i64 [ %103, %bb24.i.i.i.i.i.i.i.i.i ], [ %v1.i.i.i.i.i.i.i.i.i, %bb4.i.i.i.i.i.i.i.i.i ]
  %98 = icmp ult i64 %iter.sroa.0.0.i.i.i.i.i.i.i.i.i, %self.12.i.i.i.i.i.i.i.i.i
  br i1 %98, label %bb23.i.i.i.i.i.i.i.i.i, label %bb32.i.i.preheader.i.i.i.i.i.i.i

bb32.i.i.preheader.i.i.i.i.i.i.i:                 ; preds = %bb20.i.i.i.i.i.i.i.i.i
  br i1 %_63.i.first_iter.i.fr.i.i.i.i.i.i.i, label %bb32.i.i.us.i.i.i.i.i.i.i, label %bb32.i.i.i.i.i.i.i.i.i, !prof !93

bb32.i.i.us.i.i.i.i.i.i.i:                        ; preds = %bb36.i.i.us.i.i.i.i.i.i.i, %bb32.i.i.preheader.i.i.i.i.i.i.i
  %iter5.sroa.5.0.i.i.us.i.i.i.i.i.i.i = phi i64 [ %99, %bb36.i.i.us.i.i.i.i.i.i.i ], [ %v1.i.i.i.i.i.i.i.i.i, %bb32.i.i.preheader.i.i.i.i.i.i.i ]
  %.not.i.us.i.i.i.i.i.i.i = icmp eq i64 %iter5.sroa.5.0.i.i.us.i.i.i.i.i.i.i, 0
  br i1 %.not.i.us.i.i.i.i.i.i.i, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hd81aa0d91957da2eE.exit.i.i.i.thread.i.i.i.i.i", label %bb33.i.i.us.i.i.i.i.i.i.i

bb33.i.i.us.i.i.i.i.i.i.i:                        ; preds = %bb32.i.i.us.i.i.i.i.i.i.i
  %99 = add i64 %iter5.sroa.5.0.i.i.us.i.i.i.i.i.i.i, -1
  %_65.i.i.us.i.i.i.i.i.i.i = add i64 %99, %90
  %_68.i.i.us.i.i.i.i.i.i.i = icmp ult i64 %_65.i.i.us.i.i.i.i.i.i.i, %self.17.i.i.i.i.i.i.i.i.i.i
  br i1 %_68.i.i.us.i.i.i.i.i.i.i, label %bb36.i.i.us.i.i.i.i.i.i.i, label %panic9.i.i.i.i.i.i.i.i.i, !prof !93

bb36.i.i.us.i.i.i.i.i.i.i:                        ; preds = %bb33.i.i.us.i.i.i.i.i.i.i
  %100 = getelementptr inbounds [0 x i8], ptr %self.01.i.i.i.i.i.i.i.i.i, i64 0, i64 %99
  %_61.i.i.us.i.i.i.i.i.i.i = load i8, ptr %100, align 1, !alias.scope !101, !noalias !106, !noundef !8
  %101 = getelementptr inbounds [0 x i8], ptr %self.06.i.i.i.i.i.i.i.i.i.i, i64 0, i64 %_65.i.i.us.i.i.i.i.i.i.i
  %_64.i.i.us.i.i.i.i.i.i.i = load i8, ptr %101, align 1, !alias.scope !99, !noalias !105, !noundef !8
  %_60.not.i.i.us.i.i.i.i.i.i.i = icmp eq i8 %_61.i.i.us.i.i.i.i.i.i.i, %_64.i.i.us.i.i.i.i.i.i.i
  br i1 %_60.not.i.i.us.i.i.i.i.i.i.i, label %bb32.i.i.us.i.i.i.i.i.i.i, label %bb37.i29.i.split.us.i.i.i.i.i.i.i

bb37.i29.i.split.us.i.i.i.i.i.i.i:                ; preds = %bb36.i.i.us.i.i.i.i.i.i.i
  %102 = add i64 %90, %_69.i.i.i.i.i.i.i.i.i
  br label %bb1.backedge.i.i.i.i.i.i.i.i.i

bb23.i.i.i.i.i.i.i.i.i:                           ; preds = %bb20.i.i.i.i.i.i.i.i.i
  %_41.i.i.i.i.i.i.i.i.i = add i64 %iter.sroa.0.0.i.i.i.i.i.i.i.i.i, %90
  %_44.i.i.i.i.i.i.i.i.i = icmp ult i64 %_41.i.i.i.i.i.i.i.i.i, %self.17.i.i.i.i.i.i.i.i.i.i
  br i1 %_44.i.i.i.i.i.i.i.i.i, label %bb24.i.i.i.i.i.i.i.i.i, label %panic6.i.i.i.i.i.i.i.i.i, !prof !93

bb24.i.i.i.i.i.i.i.i.i:                           ; preds = %bb23.i.i.i.i.i.i.i.i.i
  %103 = add nuw i64 %iter.sroa.0.0.i.i.i.i.i.i.i.i.i, 1
  %104 = getelementptr inbounds [0 x i8], ptr %self.01.i.i.i.i.i.i.i.i.i, i64 0, i64 %iter.sroa.0.0.i.i.i.i.i.i.i.i.i
  %_37.i.i.i.i.i.i.i.i.i = load i8, ptr %104, align 1, !alias.scope !101, !noalias !106, !noundef !8
  %105 = getelementptr inbounds [0 x i8], ptr %self.06.i.i.i.i.i.i.i.i.i.i, i64 0, i64 %_41.i.i.i.i.i.i.i.i.i
  %_40.i.i.i.i.i.i.i.i.i = load i8, ptr %105, align 1, !alias.scope !99, !noalias !105, !noundef !8
  %_36.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %_37.i.i.i.i.i.i.i.i.i, %_40.i.i.i.i.i.i.i.i.i
  br i1 %_36.not.i.i.i.i.i.i.i.i.i, label %bb20.i.i.i.i.i.i.i.i.i, label %bb25.i.i.i.i.i.i.i.i.i

panic6.i.i.i.i.i.i.i.i.i:                         ; preds = %bb23.i.i.i.i.i.i.i.i.i
  %106 = add i64 %90, %v1.i.i.i.i.i.i.i.i.i
  %umax.i.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %self.17.i.i.i.i.i.i.i.i.i.i, i64 %106)
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 noundef %umax.i.i.i.i.i.i.i.i.i, i64 noundef %self.17.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_895e9b10e78f9e4cd0bcd256acf09bb7) #10, !noalias !107
  unreachable

bb25.i.i.i.i.i.i.i.i.i:                           ; preds = %bb24.i.i.i.i.i.i.i.i.i
  %107 = add i64 %_45.i.i.i.i.i.i.i.i.i, %_41.i.i.i.i.i.i.i.i.i
  br label %bb1.backedge.i.i.i.i.i.i.i.i.i

bb32.i.i.i.i.i.i.i.i.i:                           ; preds = %bb32.i.i.preheader.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %v1.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hd81aa0d91957da2eE.exit.i.i.i.thread.i.i.i.i.i", label %bb33.i.i.i.i.i.i.i.i.i

bb33.i.i.i.i.i.i.i.i.i:                           ; preds = %bb32.i.i.i.i.i.i.i.i.i
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 noundef %89, i64 noundef %self.12.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_d688453ff83925730a6c9b89287a35c6) #10, !noalias !107
  unreachable

panic9.i.i.i.i.i.i.i.i.i:                         ; preds = %bb33.i.i.us.i.i.i.i.i.i.i
  call void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 noundef %_65.i.i.us.i.i.i.i.i.i.i, i64 noundef %self.17.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc_7dd646b910703aa78ed2998132a78434) #10, !noalias !107
  unreachable

"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hd81aa0d91957da2eE.exit.i.i.i.thread.i.i.i.i.i": ; preds = %bb32.i.i.i.i.i.i.i.i.i, %bb32.i.i.us.i.i.i.i.i.i.i, %bb32.i70.i.i.i.i.i.i.i.i, %.thread.i.split.us.i.i.i.i.i.i.i.i.i, %bb11.i.i.us.i.i.i.i.i.i.i.i.i, %bb9.i.i.us.i.i.i.i.i.i.i.i.i, %bb7.i.i.us.i.i.i.i.i.i.i.i.i, %bb3.i15.i.us.i.i.i.i.i.i.i.i.i, %"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$5index17h6e4652210e4d84b6E.exit.i.us.i.i.i.i.i.i.i.i.i", %_ZN4core3str11validations15next_code_point17h3d023179b661daadE.exit.thread.i.us.i.peel.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %_25.i.i.i.i.i.i.i.i), !noalias !56
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buffer.i.i.i.i.i.i.i), !noalias !39
  br label %_ZN6driver3src6driver6driver17h9646a70af6781dffE.exit

"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hd81aa0d91957da2eE.exit.i.i.i.i.i.i.i.i": ; preds = %bb1.backedge.i.i.i.i.i.i.i.i.i, %bb8.i.i.i.i.i.i.i.i.i, %bb1.backedge.sink.split.i.i.i.i.i.i.i.i.i, %bb9.i.i.i.i.i.i.i.i.i, %.thread.i.split.us.i.i.i.i.i.i.i.i.i, %bb8.i.us.i.peel.i.i.i.i.i.i.i.i, %bb3.preheader.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %_25.i.i.i.i.i.i.i.i), !noalias !56
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buffer.i.i.i.i.i.i.i), !noalias !39
  br label %"_ZN115_$LT$core..iter..adapters..take_while..TakeWhile$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold5check28_$u7b$$u7b$closure$u7d$$u7d$17h2af9662d6e62ee12E.exit.i.i.i.i"

bb3.i.i.i.i.i.i.i.i.i:                            ; preds = %bb2.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !108)
  call void @llvm.experimental.noalias.scope.decl(metadata !111)
  %last_byte_offset.i.i.i.i.i.i.i.i.i = add nsw i64 %_521.i.i.i.i.i.i.i.i, -1
  %108 = add nsw i64 %_521.i.i.i.i.i.i.i.i, -1
  %109 = getelementptr inbounds [0 x i8], ptr %buffer.i.i.i.i.i.i.i, i64 0, i64 %108
  %_4.i.i10.i.i.i.i.i.i.i.i.i.i = load i8, ptr %109, align 1, !alias.scope !113, !noalias !114, !noundef !8
  %.not.i.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %_4.i.i10.i.i.i.i.i.i.i.i.i.i, %41
  br i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i, label %bb1.i.i.i.i.i.i.i.i.i.i.1, label %bb7.i.i.i.i.i.i.i.i.i

bb1.i.i.i.i.i.i.i.i.i.i.1:                        ; preds = %bb3.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.1 = icmp eq i64 %108, 0
  br i1 %.not.i.i.i.i.i.i.i.1, label %bb12.i.i.i.i.i.i.i.i, label %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h3c726e78f030f398E.exit.i.i.i.i.i.i.i.i.i.i.1"

"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h3c726e78f030f398E.exit.i.i.i.i.i.i.i.i.i.i.1": ; preds = %bb1.i.i.i.i.i.i.i.i.i.i.1
  %110 = add nsw i64 %_521.i.i.i.i.i.i.i.i, -2
  %111 = getelementptr inbounds [0 x i8], ptr %buffer.i.i.i.i.i.i.i, i64 0, i64 %110
  %_4.i.i10.i.i.i.i.i.i.i.i.i.i.1 = load i8, ptr %111, align 1, !alias.scope !113, !noalias !114, !noundef !8
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.1 = icmp eq i8 %_4.i.i10.i.i.i.i.i.i.i.i.i.i.1, %41
  br i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.1, label %bb1.i.i.i.i.i.i.i.i.i.i.2, label %bb7.i.i.i.i.i.i.i.i.i

bb1.i.i.i.i.i.i.i.i.i.i.2:                        ; preds = %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h3c726e78f030f398E.exit.i.i.i.i.i.i.i.i.i.i.1"
  %.not.i.i.i.i.i.i.i.2 = icmp eq i64 %110, 0
  br i1 %.not.i.i.i.i.i.i.i.2, label %bb12.i.i.i.i.i.i.i.i, label %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h3c726e78f030f398E.exit.i.i.i.i.i.i.i.i.i.i.2"

"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h3c726e78f030f398E.exit.i.i.i.i.i.i.i.i.i.i.2": ; preds = %bb1.i.i.i.i.i.i.i.i.i.i.2
  %112 = add nsw i64 %_521.i.i.i.i.i.i.i.i, -3
  %113 = getelementptr inbounds [0 x i8], ptr %buffer.i.i.i.i.i.i.i, i64 0, i64 %112
  %_4.i.i10.i.i.i.i.i.i.i.i.i.i.2 = load i8, ptr %113, align 1, !alias.scope !113, !noalias !114, !noundef !8
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.2 = icmp eq i8 %_4.i.i10.i.i.i.i.i.i.i.i.i.i.2, %41
  br i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.2, label %bb1.i.i.i.i.i.i.i.i.i.i.3, label %bb7.i.i.i.i.i.i.i.i.i

bb1.i.i.i.i.i.i.i.i.i.i.3:                        ; preds = %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h3c726e78f030f398E.exit.i.i.i.i.i.i.i.i.i.i.2"
  %.not.i.i.i.i.i.i.i.3 = icmp eq i64 %112, 0
  br i1 %.not.i.i.i.i.i.i.i.3, label %bb12.i.i.i.i.i.i.i.i, label %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h3c726e78f030f398E.exit.i.i.i.i.i.i.i.i.i.i.3"

"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h3c726e78f030f398E.exit.i.i.i.i.i.i.i.i.i.i.3": ; preds = %bb1.i.i.i.i.i.i.i.i.i.i.3
  %114 = add nsw i64 %_521.i.i.i.i.i.i.i.i, -4
  %115 = getelementptr inbounds [0 x i8], ptr %buffer.i.i.i.i.i.i.i, i64 0, i64 %114
  %_4.i.i10.i.i.i.i.i.i.i.i.i.i.3 = load i8, ptr %115, align 1, !alias.scope !113, !noalias !114, !noundef !8
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i8 %_4.i.i10.i.i.i.i.i.i.i.i.i.i.3, %41
  br i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.3, label %bb1.i.i.i.i.i.i.i.i.i.i.4, label %bb7.i.i.i.i.i.i.i.i.i

bb1.i.i.i.i.i.i.i.i.i.i.4:                        ; preds = %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h3c726e78f030f398E.exit.i.i.i.i.i.i.i.i.i.i.3"
  %.not.i.i.i.i.i.i.i.4 = icmp eq i64 %114, 0
  br i1 %.not.i.i.i.i.i.i.i.4, label %bb12.i.i.i.i.i.i.i.i, label %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h3c726e78f030f398E.exit.i.i.i.i.i.i.i.i.i.i.4"

"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h3c726e78f030f398E.exit.i.i.i.i.i.i.i.i.i.i.4": ; preds = %bb1.i.i.i.i.i.i.i.i.i.i.4
  %116 = add nsw i64 %_521.i.i.i.i.i.i.i.i, -5
  %117 = getelementptr inbounds [0 x i8], ptr %buffer.i.i.i.i.i.i.i, i64 0, i64 %116
  %_4.i.i10.i.i.i.i.i.i.i.i.i.i.4 = load i8, ptr %117, align 1, !alias.scope !113, !noalias !114, !noundef !8
  br label %bb7.i.i.i.i.i.i.i.i.i

bb7.i.i.i.i.i.i.i.i.i:                            ; preds = %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h3c726e78f030f398E.exit.i.i.i.i.i.i.i.i.i.i.4", %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h3c726e78f030f398E.exit.i.i.i.i.i.i.i.i.i.i.3", %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h3c726e78f030f398E.exit.i.i.i.i.i.i.i.i.i.i.2", %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h3c726e78f030f398E.exit.i.i.i.i.i.i.i.i.i.i.1", %bb3.i.i.i.i.i.i.i.i.i
  %.lcssa = phi i64 [ %108, %bb3.i.i.i.i.i.i.i.i.i ], [ %110, %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h3c726e78f030f398E.exit.i.i.i.i.i.i.i.i.i.i.1" ], [ %112, %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h3c726e78f030f398E.exit.i.i.i.i.i.i.i.i.i.i.2" ], [ %114, %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h3c726e78f030f398E.exit.i.i.i.i.i.i.i.i.i.i.3" ], [ %116, %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h3c726e78f030f398E.exit.i.i.i.i.i.i.i.i.i.i.4" ]
  %_4.i.i10.i.i.i.i.i.i.i.i.i.i.lcssa = phi i8 [ %_4.i.i10.i.i.i.i.i.i.i.i.i.i, %bb3.i.i.i.i.i.i.i.i.i ], [ %_4.i.i10.i.i.i.i.i.i.i.i.i.i.1, %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h3c726e78f030f398E.exit.i.i.i.i.i.i.i.i.i.i.1" ], [ %_4.i.i10.i.i.i.i.i.i.i.i.i.i.2, %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h3c726e78f030f398E.exit.i.i.i.i.i.i.i.i.i.i.2" ], [ %_4.i.i10.i.i.i.i.i.i.i.i.i.i.3, %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h3c726e78f030f398E.exit.i.i.i.i.i.i.i.i.i.i.3" ], [ %_4.i.i10.i.i.i.i.i.i.i.i.i.i.4, %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h3c726e78f030f398E.exit.i.i.i.i.i.i.i.i.i.i.4" ]
  %_25.i.i.i.i.i.i.i.i.i = add nuw nsw i64 %_521.i.i.i.i.i.i.i.i, 15
  %_23.i.i.i.i.i.i.i.i.i = icmp ugt i64 %_25.i.i.i.i.i.i.i.i.i, %11
  br i1 %_23.i.i.i.i.i.i.i.i.i, label %bb56.i.i.i.i.i.i.i.i.i, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h924dcc624a004165E.exit.i.i.i.i.i.i.i.i.i"

bb7.thread.i.i.i.i.i.i.i.i.i:                     ; preds = %bb2.i.thread.i.i.i.i.i.i.i
  br i1 %_2386.i.i.i.i.i.i.i.i.i, label %bb56.i.i.i.i.i.i.i.i.i, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h924dcc624a004165E.exit.i.i.i.i.i.i.i.i.i"

bb56.i.i.i.i.i.i.i.i.i:                           ; preds = %bb7.thread.i.i.i.i.i.i.i.i.i, %bb7.i.i.i.i.i.i.i.i.i
  %_521.i1014.i.i.i.i.i.i.i = phi i64 [ 2, %bb7.thread.i.i.i.i.i.i.i.i.i ], [ %_521.i.i.i.i.i.i.i.i, %bb7.i.i.i.i.i.i.i.i.i ]
  %_2.i6.not.i.i.i.i.i.i.i.i.i.i = icmp ugt i64 %_521.i1014.i.i.i.i.i.i.i, %11
  br i1 %_2.i6.not.i.i.i.i.i.i.i.i.i.i, label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17h3861d3b7582ecf43E.exit.i.i.thread.i.i.i.i.i", label %bb3.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i

bb3.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i:           ; preds = %bb56.i.i.i.i.i.i.i.i.i
  %bcmp.i.i.i.i.us17.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %buffer.i.i.i.i.i.i.i, i64 %_521.i1014.i.i.i.i.i.i.i), !alias.scope !122, !noalias !129
  %118 = icmp eq i32 %bcmp.i.i.i.i.us17.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %118, label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17h3861d3b7582ecf43E.exit.i.i.thread57.i.i.i.i.i", label %bb1.backedge.us.i.i.i.i.i.i.i.i.i.i

bb3.us.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb1.backedge.us.i.i.i.i.i.i.i.i.i.i
  %119 = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i.i.i.i.i, i64 1
  %bcmp.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %119, ptr noundef nonnull dereferenceable(1) %buffer.i.i.i.i.i.i.i, i64 %_521.i1014.i.i.i.i.i.i.i), !alias.scope !122, !noalias !129
  %120 = icmp eq i32 %bcmp.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %120, label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17h3861d3b7582ecf43E.exit.i.i.thread57.i.i.i.i.i", label %bb1.backedge.us.i.i.i.i.i.i.i.i.i.i

bb1.backedge.us.i.i.i.i.i.i.i.i.i.i:              ; preds = %bb3.us.i.i.i.i.i.i.i.i.i.i, %bb3.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i
  %.pn.i.i.i.i.i.i.i.i.i = phi ptr [ %119, %bb3.us.i.i.i.i.i.i.i.i.i.i ], [ %9, %bb3.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i ]
  %.in.i.i.i.i.i.i.i.i.i = phi i64 [ %121, %bb3.us.i.i.i.i.i.i.i.i.i.i ], [ %11, %bb3.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i ]
  %121 = add i64 %.in.i.i.i.i.i.i.i.i.i, -1
  %_2.i.us.not.i.i.not.i.not.i.not.i.not.i.i.i.i.i = icmp ult i64 %121, %_521.i1014.i.i.i.i.i.i.i
  br i1 %_2.i.us.not.i.i.not.i.not.i.not.i.not.i.i.i.i.i, label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17h3861d3b7582ecf43E.exit.i.i.thread.i.i.i.i.i", label %bb3.us.i.i.i.i.i.i.i.i.i.i

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h924dcc624a004165E.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb7.thread.i.i.i.i.i.i.i.i.i, %bb7.i.i.i.i.i.i.i.i.i
  %.sink102.i.i.i.i.i.i.i = phi i8 [ %43, %bb7.thread.i.i.i.i.i.i.i.i.i ], [ %41, %bb7.i.i.i.i.i.i.i.i.i ]
  %last_byte_offset.i.i17.i.i.i.i.i.i.i = phi i64 [ 1, %bb7.thread.i.i.i.i.i.i.i.i.i ], [ %last_byte_offset.i.i.i.i.i.i.i.i.i, %bb7.i.i.i.i.i.i.i.i.i ]
  %_521.i1016.i.i.i.i.i.i.i = phi i64 [ 2, %bb7.thread.i.i.i.i.i.i.i.i.i ], [ %_521.i.i.i.i.i.i.i.i, %bb7.i.i.i.i.i.i.i.i.i ]
  %_34.i.i.i.i.i.i.i.i.i = phi i8 [ %45, %bb7.thread.i.i.i.i.i.i.i.i.i ], [ %_4.i.i10.i.i.i.i.i.i.i.i.i.i.lcssa, %bb7.i.i.i.i.i.i.i.i.i ]
  %storemerge8790.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb7.thread.i.i.i.i.i.i.i.i.i ], [ %.lcssa, %bb7.i.i.i.i.i.i.i.i.i ]
  %122 = insertelement <1 x i8> poison, i8 %.sink102.i.i.i.i.i.i.i, i64 0
  %123 = shufflevector <1 x i8> %122, <1 x i8> poison, <16 x i32> zeroinitializer
  %124 = insertelement <1 x i8> poison, i8 %_34.i.i.i.i.i.i.i.i.i, i64 0
  %125 = shufflevector <1 x i8> %124, <1 x i8> poison, <16 x i32> zeroinitializer
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %check_mask.i.i.i.i.i.i.i.i.i), !noalias !133
  store ptr %9, ptr %check_mask.i.i.i.i.i.i.i.i.i, align 8, !noalias !133
  store i64 %11, ptr %22, align 8, !noalias !133
  store ptr %b2.i.i.i.i.i.i.i.i, ptr %23, align 8, !noalias !133
  store i64 %last_byte_offset.i.i17.i.i.i.i.i.i.i, ptr %24, align 8, !noalias !133
  %_50103.i.i.i.i.i.i.i.i.i = add nsw i64 %_521.i1016.i.i.i.i.i.i.i, 63
  %_49104.i.i.i.i.i.i.i.i.i = icmp ult i64 %_50103.i.i.i.i.i.i.i.i.i, %11
  br i1 %_49104.i.i.i.i.i.i.i.i.i, label %bb17.i.preheader.i.i.i.i.i.i.i.i, label %bb31.preheader.i.i.i.i.i.i.i.i.i

bb17.i.preheader.i.i.i.i.i.i.i.i:                 ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h924dcc624a004165E.exit.i.i.i.i.i.i.i.i.i"
  %_51.i.i.i.i.i.i.i.i.i = add nsw i64 %_521.i1016.i.i.i.i.i.i.i, 127
  br label %bb17.i.i.i.i.i.i.i.i.i

bb31.preheader.i.i.i.i.i.i.i.i.i:                 ; preds = %bb29.3.i.i.i.i.i.i.i.i.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h924dcc624a004165E.exit.i.i.i.i.i.i.i.i.i"
  %i.0.lcssa.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h924dcc624a004165E.exit.i.i.i.i.i.i.i.i.i" ], [ %164, %bb29.3.i.i.i.i.i.i.i.i.i ]
  %result.0.lcssa.i.i.i.i.i.i.i.i.i = phi i8 [ 0, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h924dcc624a004165E.exit.i.i.i.i.i.i.i.i.i" ], [ %result.2.3.i.i.i.i.i.i.i.i.i, %bb29.3.i.i.i.i.i.i.i.i.i ]
  %_92108.i.i.i.i.i.i.i.i.i = add nsw i64 %_521.i1016.i.i.i.i.i.i.i, 15
  %_91109.i.i.i.i.i.i.i.i.i = add i64 %_92108.i.i.i.i.i.i.i.i.i, %i.0.lcssa.i.i.i.i.i.i.i.i.i
  %_90110.i.i.i.i.i.i.i.i.i = icmp ult i64 %_91109.i.i.i.i.i.i.i.i.i, %11
  %126 = and i8 %result.0.lcssa.i.i.i.i.i.i.i.i.i, 1
  %_96.not111.i.i.i.i.i.i.i.i.i = icmp eq i8 %126, 0
  %_89.0112.i.i.i.i.i.i.i.i.i = select i1 %_90110.i.i.i.i.i.i.i.i.i, i1 %_96.not111.i.i.i.i.i.i.i.i.i, i1 false
  br i1 %_89.0112.i.i.i.i.i.i.i.i.i, label %bb35.i.preheader.i.i.i.i.i.i.i.i, label %bb40.i.i.i.i.i.i.i.i.i

bb35.i.preheader.i.i.i.i.i.i.i.i:                 ; preds = %bb31.preheader.i.i.i.i.i.i.i.i.i
  %_92.i.i.i.i.i.i.i.i.i = add nsw i64 %_521.i1016.i.i.i.i.i.i.i, 31
  br label %bb35.i.i.i.i.i.i.i.i.i

bb17.i.i.i.i.i.i.i.i.i:                           ; preds = %bb29.3.i.i.i.i.i.i.i.i.i, %bb17.i.preheader.i.i.i.i.i.i.i.i
  %result.0106.i.i.i.i.i.i.i.i.i = phi i8 [ %result.2.3.i.i.i.i.i.i.i.i.i, %bb29.3.i.i.i.i.i.i.i.i.i ], [ 0, %bb17.i.preheader.i.i.i.i.i.i.i.i ]
  %i.0105.i.i.i.i.i.i.i.i.i = phi i64 [ %164, %bb29.3.i.i.i.i.i.i.i.i.i ], [ 0, %bb17.i.preheader.i.i.i.i.i.i.i.i ]
  %127 = getelementptr inbounds i8, ptr %9, i64 %i.0105.i.i.i.i.i.i.i.i.i
  %tmp.0.copyload.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %127, align 1, !alias.scope !134, !noalias !135
  %128 = getelementptr inbounds i8, ptr %127, i64 %storemerge8790.i.i.i.i.i.i.i.i.i
  %tmp1.0.copyload.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %128, align 1, !alias.scope !134, !noalias !135
  %129 = icmp eq <16 x i8> %tmp.0.copyload.i.i.i.i.i.i.i.i.i.i, %123
  %130 = icmp eq <16 x i8> %tmp1.0.copyload.i.i.i.i.i.i.i.i.i.i, %125
  %131 = and <16 x i1> %130, %129
  %132 = bitcast <16 x i1> %131 to i16
  %_67.1.i.i.i.i.i.i.i.i.i = or i64 %i.0105.i.i.i.i.i.i.i.i.i, 16
  %133 = getelementptr inbounds i8, ptr %9, i64 %_67.1.i.i.i.i.i.i.i.i.i
  %tmp.0.copyload.i.1.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %133, align 1, !alias.scope !134, !noalias !135
  %134 = getelementptr inbounds i8, ptr %133, i64 %storemerge8790.i.i.i.i.i.i.i.i.i
  %tmp1.0.copyload.i.1.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %134, align 1, !alias.scope !134, !noalias !135
  %135 = icmp eq <16 x i8> %tmp.0.copyload.i.1.i.i.i.i.i.i.i.i.i, %123
  %136 = icmp eq <16 x i8> %tmp1.0.copyload.i.1.i.i.i.i.i.i.i.i.i, %125
  %137 = and <16 x i1> %136, %135
  %138 = bitcast <16 x i1> %137 to i16
  %_67.2.i.i.i.i.i.i.i.i.i = or i64 %i.0105.i.i.i.i.i.i.i.i.i, 32
  %139 = getelementptr inbounds i8, ptr %9, i64 %_67.2.i.i.i.i.i.i.i.i.i
  %tmp.0.copyload.i.2.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %139, align 1, !alias.scope !134, !noalias !135
  %140 = getelementptr inbounds i8, ptr %139, i64 %storemerge8790.i.i.i.i.i.i.i.i.i
  %tmp1.0.copyload.i.2.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %140, align 1, !alias.scope !134, !noalias !135
  %141 = icmp eq <16 x i8> %tmp.0.copyload.i.2.i.i.i.i.i.i.i.i.i, %123
  %142 = icmp eq <16 x i8> %tmp1.0.copyload.i.2.i.i.i.i.i.i.i.i.i, %125
  %143 = and <16 x i1> %142, %141
  %144 = bitcast <16 x i1> %143 to i16
  %_67.3.i.i.i.i.i.i.i.i.i = or i64 %i.0105.i.i.i.i.i.i.i.i.i, 48
  %145 = getelementptr inbounds i8, ptr %9, i64 %_67.3.i.i.i.i.i.i.i.i.i
  %tmp.0.copyload.i.3.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %145, align 1, !alias.scope !134, !noalias !135
  %146 = getelementptr inbounds i8, ptr %145, i64 %storemerge8790.i.i.i.i.i.i.i.i.i
  %tmp1.0.copyload.i.3.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %146, align 1, !alias.scope !134, !noalias !135
  %147 = icmp eq <16 x i8> %tmp.0.copyload.i.3.i.i.i.i.i.i.i.i.i, %123
  %148 = icmp eq <16 x i8> %tmp1.0.copyload.i.3.i.i.i.i.i.i.i.i.i, %125
  %149 = and <16 x i1> %148, %147
  %150 = bitcast <16 x i1> %149 to i16
  %151 = icmp eq i16 %132, 0
  br i1 %151, label %bb29.i.i.i.i.i.i.i.i.i, label %bb27.i.i.i.i.i.i.i.i.i

bb29.i.i.i.i.i.i.i.i.i:                           ; preds = %bb27.i.i.i.i.i.i.i.i.i, %bb17.i.i.i.i.i.i.i.i.i
  %result.2.i.i.i.i.i.i.i.i.i = phi i8 [ %result.0106.i.i.i.i.i.i.i.i.i, %bb17.i.i.i.i.i.i.i.i.i ], [ %168, %bb27.i.i.i.i.i.i.i.i.i ]
  %152 = icmp eq i16 %138, 0
  br i1 %152, label %bb29.1.i.i.i.i.i.i.i.i.i, label %bb27.1.i.i.i.i.i.i.i.i.i

bb27.1.i.i.i.i.i.i.i.i.i:                         ; preds = %bb29.i.i.i.i.i.i.i.i.i
  %153 = and i8 %result.2.i.i.i.i.i.i.i.i.i, 1
  %_87.1.i.i.i.i.i.i.i.i.i = icmp ne i8 %153, 0
  %_81.1.i.i.i.i.i.i.i.i.i = call fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h2f53266587cc4647E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %check_mask.i.i.i.i.i.i.i.i.i, i64 noundef %_67.1.i.i.i.i.i.i.i.i.i, i16 noundef %138, i1 noundef zeroext %_87.1.i.i.i.i.i.i.i.i.i), !noalias !57
  %154 = or i1 %_87.1.i.i.i.i.i.i.i.i.i, %_81.1.i.i.i.i.i.i.i.i.i
  %155 = zext i1 %154 to i8
  br label %bb29.1.i.i.i.i.i.i.i.i.i

bb29.1.i.i.i.i.i.i.i.i.i:                         ; preds = %bb27.1.i.i.i.i.i.i.i.i.i, %bb29.i.i.i.i.i.i.i.i.i
  %result.2.1.i.i.i.i.i.i.i.i.i = phi i8 [ %result.2.i.i.i.i.i.i.i.i.i, %bb29.i.i.i.i.i.i.i.i.i ], [ %155, %bb27.1.i.i.i.i.i.i.i.i.i ]
  %156 = icmp eq i16 %144, 0
  br i1 %156, label %bb29.2.i.i.i.i.i.i.i.i.i, label %bb27.2.i.i.i.i.i.i.i.i.i

bb27.2.i.i.i.i.i.i.i.i.i:                         ; preds = %bb29.1.i.i.i.i.i.i.i.i.i
  %157 = and i8 %result.2.1.i.i.i.i.i.i.i.i.i, 1
  %_87.2.i.i.i.i.i.i.i.i.i = icmp ne i8 %157, 0
  %_81.2.i.i.i.i.i.i.i.i.i = call fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h2f53266587cc4647E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %check_mask.i.i.i.i.i.i.i.i.i, i64 noundef %_67.2.i.i.i.i.i.i.i.i.i, i16 noundef %144, i1 noundef zeroext %_87.2.i.i.i.i.i.i.i.i.i), !noalias !57
  %158 = or i1 %_87.2.i.i.i.i.i.i.i.i.i, %_81.2.i.i.i.i.i.i.i.i.i
  %159 = zext i1 %158 to i8
  br label %bb29.2.i.i.i.i.i.i.i.i.i

bb29.2.i.i.i.i.i.i.i.i.i:                         ; preds = %bb27.2.i.i.i.i.i.i.i.i.i, %bb29.1.i.i.i.i.i.i.i.i.i
  %result.2.2.i.i.i.i.i.i.i.i.i = phi i8 [ %result.2.1.i.i.i.i.i.i.i.i.i, %bb29.1.i.i.i.i.i.i.i.i.i ], [ %159, %bb27.2.i.i.i.i.i.i.i.i.i ]
  %160 = icmp eq i16 %150, 0
  br i1 %160, label %bb29.3.i.i.i.i.i.i.i.i.i, label %bb27.3.i.i.i.i.i.i.i.i.i

bb27.3.i.i.i.i.i.i.i.i.i:                         ; preds = %bb29.2.i.i.i.i.i.i.i.i.i
  %161 = and i8 %result.2.2.i.i.i.i.i.i.i.i.i, 1
  %_87.3.i.i.i.i.i.i.i.i.i = icmp ne i8 %161, 0
  %_81.3.i.i.i.i.i.i.i.i.i = call fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h2f53266587cc4647E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %check_mask.i.i.i.i.i.i.i.i.i, i64 noundef %_67.3.i.i.i.i.i.i.i.i.i, i16 noundef %150, i1 noundef zeroext %_87.3.i.i.i.i.i.i.i.i.i), !noalias !57
  %162 = or i1 %_87.3.i.i.i.i.i.i.i.i.i, %_81.3.i.i.i.i.i.i.i.i.i
  %163 = zext i1 %162 to i8
  br label %bb29.3.i.i.i.i.i.i.i.i.i

bb29.3.i.i.i.i.i.i.i.i.i:                         ; preds = %bb27.3.i.i.i.i.i.i.i.i.i, %bb29.2.i.i.i.i.i.i.i.i.i
  %result.2.3.i.i.i.i.i.i.i.i.i = phi i8 [ %result.2.2.i.i.i.i.i.i.i.i.i, %bb29.2.i.i.i.i.i.i.i.i.i ], [ %163, %bb27.3.i.i.i.i.i.i.i.i.i ]
  %164 = add i64 %i.0105.i.i.i.i.i.i.i.i.i, 64
  %_50.i.i.i.i.i.i.i.i.i = add i64 %_51.i.i.i.i.i.i.i.i.i, %i.0105.i.i.i.i.i.i.i.i.i
  %_49.i.i.i.i.i.i.i.i.i = icmp ult i64 %_50.i.i.i.i.i.i.i.i.i, %11
  %165 = and i8 %result.2.3.i.i.i.i.i.i.i.i.i, 1
  %_56.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %165, 0
  %_48.0.i.i.i.i.i.i.i.i.i = select i1 %_49.i.i.i.i.i.i.i.i.i, i1 %_56.not.i.i.i.i.i.i.i.i.i, i1 false
  br i1 %_48.0.i.i.i.i.i.i.i.i.i, label %bb17.i.i.i.i.i.i.i.i.i, label %bb31.preheader.i.i.i.i.i.i.i.i.i

bb27.i.i.i.i.i.i.i.i.i:                           ; preds = %bb17.i.i.i.i.i.i.i.i.i
  %166 = and i8 %result.0106.i.i.i.i.i.i.i.i.i, 1
  %_87.i.i.i.i.i.i.i.i.i = icmp ne i8 %166, 0
  %_81.i.i.i.i.i.i.i.i.i = call fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h2f53266587cc4647E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %check_mask.i.i.i.i.i.i.i.i.i, i64 noundef %i.0105.i.i.i.i.i.i.i.i.i, i16 noundef %132, i1 noundef zeroext %_87.i.i.i.i.i.i.i.i.i), !noalias !57
  %167 = or i1 %_87.i.i.i.i.i.i.i.i.i, %_81.i.i.i.i.i.i.i.i.i
  %168 = zext i1 %167 to i8
  br label %bb29.i.i.i.i.i.i.i.i.i

bb40.i.i.i.i.i.i.i.i.i:                           ; preds = %bb39.i.i.i.i.i.i.i.i.i, %bb31.preheader.i.i.i.i.i.i.i.i.i
  %result.3.lcssa.i.i.i.i.i.i.i.i.i = phi i8 [ %result.0.lcssa.i.i.i.i.i.i.i.i.i, %bb31.preheader.i.i.i.i.i.i.i.i.i ], [ %result.4.i.i.i.i.i.i.i.i.i, %bb39.i.i.i.i.i.i.i.i.i ]
  %.lcssa.i.i.i.i.i.i.i.i.i = phi i8 [ %126, %bb31.preheader.i.i.i.i.i.i.i.i.i ], [ %184, %bb39.i.i.i.i.i.i.i.i.i ]
  %_109.i.i.i.i.i.i.i.i.i = sub i64 %11, %last_byte_offset.i.i17.i.i.i.i.i.i.i
  %i14.i.i.i.i.i.i.i.i.i = add i64 %_109.i.i.i.i.i.i.i.i.i, -16
  %169 = getelementptr inbounds i8, ptr %9, i64 %i14.i.i.i.i.i.i.i.i.i
  %tmp.0.copyload.i48.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %169, align 1, !alias.scope !134, !noalias !138
  %170 = getelementptr inbounds i8, ptr %169, i64 %storemerge8790.i.i.i.i.i.i.i.i.i
  %tmp1.0.copyload.i51.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %170, align 1, !alias.scope !134, !noalias !138
  %171 = icmp eq <16 x i8> %tmp.0.copyload.i48.i.i.i.i.i.i.i.i.i, %123
  %172 = icmp eq <16 x i8> %tmp1.0.copyload.i51.i.i.i.i.i.i.i.i.i, %125
  %173 = and <16 x i1> %172, %171
  %174 = bitcast <16 x i1> %173 to i16
  %175 = icmp eq i16 %174, 0
  br i1 %175, label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17h3861d3b7582ecf43E.exit.i.i.i.i.i.i.i", label %bb42.i.i.i.i.i.i.i.i.i

bb35.i.i.i.i.i.i.i.i.i:                           ; preds = %bb39.i.i.i.i.i.i.i.i.i, %bb35.i.preheader.i.i.i.i.i.i.i.i
  %result.3114.i.i.i.i.i.i.i.i.i = phi i8 [ %result.4.i.i.i.i.i.i.i.i.i, %bb39.i.i.i.i.i.i.i.i.i ], [ %result.0.lcssa.i.i.i.i.i.i.i.i.i, %bb35.i.preheader.i.i.i.i.i.i.i.i ]
  %i.1113.i.i.i.i.i.i.i.i.i = phi i64 [ %183, %bb39.i.i.i.i.i.i.i.i.i ], [ %i.0.lcssa.i.i.i.i.i.i.i.i.i, %bb35.i.preheader.i.i.i.i.i.i.i.i ]
  %176 = getelementptr inbounds i8, ptr %9, i64 %i.1113.i.i.i.i.i.i.i.i.i
  %tmp.0.copyload.i57.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %176, align 1, !alias.scope !134, !noalias !141
  %177 = getelementptr inbounds i8, ptr %176, i64 %storemerge8790.i.i.i.i.i.i.i.i.i
  %tmp1.0.copyload.i60.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %177, align 1, !alias.scope !134, !noalias !141
  %178 = icmp eq <16 x i8> %tmp.0.copyload.i57.i.i.i.i.i.i.i.i.i, %123
  %179 = icmp eq <16 x i8> %tmp1.0.copyload.i60.i.i.i.i.i.i.i.i.i, %125
  %180 = and <16 x i1> %179, %178
  %181 = bitcast <16 x i1> %180 to i16
  %182 = icmp eq i16 %181, 0
  br i1 %182, label %bb39.i.i.i.i.i.i.i.i.i, label %bb37.i.i.i.i.i.i.i.i.i

bb39.i.i.i.i.i.i.i.i.i:                           ; preds = %bb37.i.i.i.i.i.i.i.i.i, %bb35.i.i.i.i.i.i.i.i.i
  %result.4.i.i.i.i.i.i.i.i.i = phi i8 [ %result.3114.i.i.i.i.i.i.i.i.i, %bb35.i.i.i.i.i.i.i.i.i ], [ %185, %bb37.i.i.i.i.i.i.i.i.i ]
  %183 = add i64 %i.1113.i.i.i.i.i.i.i.i.i, 16
  %_91.i.i.i.i.i.i.i.i.i = add i64 %_92.i.i.i.i.i.i.i.i.i, %i.1113.i.i.i.i.i.i.i.i.i
  %_90.i.i.i.i.i.i.i.i.i = icmp ult i64 %_91.i.i.i.i.i.i.i.i.i, %11
  %184 = and i8 %result.4.i.i.i.i.i.i.i.i.i, 1
  %_96.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %184, 0
  %_89.0.i.i.i.i.i.i.i.i.i = select i1 %_90.i.i.i.i.i.i.i.i.i, i1 %_96.not.i.i.i.i.i.i.i.i.i, i1 false
  br i1 %_89.0.i.i.i.i.i.i.i.i.i, label %bb35.i.i.i.i.i.i.i.i.i, label %bb40.i.i.i.i.i.i.i.i.i

bb37.i.i.i.i.i.i.i.i.i:                           ; preds = %bb35.i.i.i.i.i.i.i.i.i
  %_102.i.i.i.i.i.i.i.i.i = call fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h2f53266587cc4647E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %check_mask.i.i.i.i.i.i.i.i.i, i64 noundef %i.1113.i.i.i.i.i.i.i.i.i, i16 noundef %181, i1 noundef zeroext false), !noalias !57
  %185 = zext i1 %_102.i.i.i.i.i.i.i.i.i to i8
  br label %bb39.i.i.i.i.i.i.i.i.i

bb42.i.i.i.i.i.i.i.i.i:                           ; preds = %bb40.i.i.i.i.i.i.i.i.i
  %_119.i.i.i.i.i.i.i.i.i = icmp ne i8 %.lcssa.i.i.i.i.i.i.i.i.i, 0
  %_115.i.i.i.i.i.i.i.i.i = call fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h2f53266587cc4647E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %check_mask.i.i.i.i.i.i.i.i.i, i64 noundef %i14.i.i.i.i.i.i.i.i.i, i16 noundef %174, i1 noundef zeroext %_119.i.i.i.i.i.i.i.i.i), !noalias !57
  %186 = or i1 %_119.i.i.i.i.i.i.i.i.i, %_115.i.i.i.i.i.i.i.i.i
  %187 = zext i1 %186 to i8
  br label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17h3861d3b7582ecf43E.exit.i.i.i.i.i.i.i"

"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17h3861d3b7582ecf43E.exit.i.i.thread.i.i.i.i.i": ; preds = %bb1.backedge.us.i.i.i.i.i.i.i.i.i.i, %bb56.i.i.i.i.i.i.i.i.i, %bb3.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buffer.i.i.i.i.i.i.i), !noalias !39
  br label %"_ZN115_$LT$core..iter..adapters..take_while..TakeWhile$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold5check28_$u7b$$u7b$closure$u7d$$u7d$17h2af9662d6e62ee12E.exit.i.i.i.i"

"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17h3861d3b7582ecf43E.exit.i.i.thread57.i.i.i.i.i": ; preds = %bb3.us.i.i.i.i.i.i.i.i.i.i, %bb3.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buffer.i.i.i.i.i.i.i), !noalias !39
  br label %_ZN6driver3src6driver6driver17h9646a70af6781dffE.exit

"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17h3861d3b7582ecf43E.exit.i.i.i.i.i.i.i": ; preds = %bb42.i.i.i.i.i.i.i.i.i, %bb40.i.i.i.i.i.i.i.i.i
  %result.5.i.i.i.i.i.i.i.i.i = phi i8 [ %result.3.lcssa.i.i.i.i.i.i.i.i.i, %bb40.i.i.i.i.i.i.i.i.i ], [ %187, %bb42.i.i.i.i.i.i.i.i.i ]
  %188 = and i8 %result.5.i.i.i.i.i.i.i.i.i, 1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %check_mask.i.i.i.i.i.i.i.i.i), !noalias !133
  %.not.i.i.i.i.i = icmp eq i8 %188, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buffer.i.i.i.i.i.i.i), !noalias !39
  br i1 %.not.i.i.i.i.i, label %"_ZN115_$LT$core..iter..adapters..take_while..TakeWhile$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold5check28_$u7b$$u7b$closure$u7d$$u7d$17h2af9662d6e62ee12E.exit.i.i.i.i", label %_ZN6driver3src6driver6driver17h9646a70af6781dffE.exit

bb1.i.i.i.i.i.i.i:                                ; preds = %bb3.i.i.i.i, %bb3.thread.i.i.i.i
  %189 = phi ptr [ %26, %bb3.thread.i.i.i.i ], [ %33, %bb3.i.i.i.i ]
  %190 = phi i32 [ %_8.i.i.i.i.i.i, %bb3.thread.i.i.i.i ], [ %34, %bb3.i.i.i.i ]
  %191 = trunc i32 %190 to i8
  br i1 %_6.i.i.i.i.i.i.i.i, label %bb3.i5.i.i.i.i.i.i.i, label %"_ZN6driver3src6driver6driver28_$u7b$$u7b$closure$u7d$$u7d$17h67b7ca6d6a2551f0E.exit.i.i.i.i.i"

bb3.i5.i.i.i.i.i.i.i:                             ; preds = %bb1.i.i.i.i.i.i.i
  br i1 %_44.not.i.i.i.i.i.i.i.i.i, label %"_ZN115_$LT$core..iter..adapters..take_while..TakeWhile$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold5check28_$u7b$$u7b$closure$u7d$$u7d$17h2af9662d6e62ee12E.exit.i.i.i.i", label %bb3.i.i6.i.i.i.i.i.i.i

bb3.i.i6.i.i.i.i.i.i.i:                           ; preds = %bb5.i.i7.i.i.i.i.i.i.i, %bb3.i5.i.i.i.i.i.i.i
  %i.05.i.i.i.i.i.i.i.i.i = phi i64 [ %193, %bb5.i.i7.i.i.i.i.i.i.i ], [ 0, %bb3.i5.i.i.i.i.i.i.i ]
  %192 = getelementptr inbounds [0 x i8], ptr %9, i64 0, i64 %i.05.i.i.i.i.i.i.i.i.i
  %_8.i.i.i.i.i.i.i.i.i = load i8, ptr %192, align 1, !alias.scope !144, !noalias !55, !noundef !8
  %_7.i.i.i.i.i.i.i.i.i = icmp eq i8 %_8.i.i.i.i.i.i.i.i.i, %191
  br i1 %_7.i.i.i.i.i.i.i.i.i, label %_ZN6driver3src6driver6driver17h9646a70af6781dffE.exit, label %bb5.i.i7.i.i.i.i.i.i.i

bb5.i.i7.i.i.i.i.i.i.i:                           ; preds = %bb3.i.i6.i.i.i.i.i.i.i
  %193 = add nuw nsw i64 %i.05.i.i.i.i.i.i.i.i.i, 1
  %exitcond.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %193, %11
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i, label %"_ZN115_$LT$core..iter..adapters..take_while..TakeWhile$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold5check28_$u7b$$u7b$closure$u7d$$u7d$17h2af9662d6e62ee12E.exit.i.i.i.i", label %bb3.i.i6.i.i.i.i.i.i.i

"_ZN6driver3src6driver6driver28_$u7b$$u7b$closure$u7d$$u7d$17h67b7ca6d6a2551f0E.exit.i.i.i.i.i": ; preds = %bb1.i.i.i.i.i.i.i
  %194 = call { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h99d7a3bd88378fa7E(i8 noundef %191, ptr noalias noundef nonnull readonly align 1 %9, i64 noundef %11), !noalias !57
  %195 = extractvalue { i64, i64 } %194, 0
  %196 = icmp eq i64 %195, 1
  br i1 %196, label %_ZN6driver3src6driver6driver17h9646a70af6781dffE.exit, label %"_ZN115_$LT$core..iter..adapters..take_while..TakeWhile$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold5check28_$u7b$$u7b$closure$u7d$$u7d$17h2af9662d6e62ee12E.exit.i.i.i.i"

"_ZN115_$LT$core..iter..adapters..take_while..TakeWhile$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold5check28_$u7b$$u7b$closure$u7d$$u7d$17h2af9662d6e62ee12E.exit.i.i.i.i": ; preds = %"_ZN6driver3src6driver6driver28_$u7b$$u7b$closure$u7d$$u7d$17h67b7ca6d6a2551f0E.exit.i.i.i.i.i", %bb5.i.i7.i.i.i.i.i.i.i, %bb3.i5.i.i.i.i.i.i.i, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17h3861d3b7582ecf43E.exit.i.i.i.i.i.i.i", %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17h3861d3b7582ecf43E.exit.i.i.thread.i.i.i.i.i", %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hd81aa0d91957da2eE.exit.i.i.i.i.i.i.i.i", %bb2.i.i.i.i.i.i.i.i.i.i
  %197 = phi ptr [ %33, %bb2.i.i.i.i.i.i.i.i.i.i ], [ %33, %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hd81aa0d91957da2eE.exit.i.i.i.i.i.i.i.i" ], [ %33, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17h3861d3b7582ecf43E.exit.i.i.thread.i.i.i.i.i" ], [ %33, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17h3861d3b7582ecf43E.exit.i.i.i.i.i.i.i" ], [ %189, %bb3.i5.i.i.i.i.i.i.i ], [ %189, %"_ZN6driver3src6driver6driver28_$u7b$$u7b$closure$u7d$$u7d$17h67b7ca6d6a2551f0E.exit.i.i.i.i.i" ], [ %189, %bb5.i.i7.i.i.i.i.i.i.i ]
  %_4.0.i.i.i.i.i.i.i = add i64 %accum.0113.i.i.i.i, 1
  %_10.i.i.i.i.i.i.i = icmp eq ptr %197, %12
  br i1 %_10.i.i.i.i.i.i.i, label %_ZN6driver3src6driver6driver17h9646a70af6781dffE.exit, label %bb3.i.i.i.i.i.i

_ZN6driver3src6driver6driver17h9646a70af6781dffE.exit: ; preds = %"_ZN115_$LT$core..iter..adapters..take_while..TakeWhile$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold5check28_$u7b$$u7b$closure$u7d$$u7d$17h2af9662d6e62ee12E.exit.i.i.i.i", %"_ZN6driver3src6driver6driver28_$u7b$$u7b$closure$u7d$$u7d$17h67b7ca6d6a2551f0E.exit.i.i.i.i.i", %bb3.i.i6.i.i.i.i.i.i.i, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17h3861d3b7582ecf43E.exit.i.i.i.i.i.i.i", %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17h3861d3b7582ecf43E.exit.i.i.thread57.i.i.i.i.i", %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hd81aa0d91957da2eE.exit.i.i.i.thread.i.i.i.i.i", %bb2.i.i.i.i.i.i.i.i.i.i, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h724deb5152f416dbE.exit.i.i.i.i", %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h64a198ee6f8b054dE.exit10"
  %.1.i.i.i = phi i64 [ 0, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h64a198ee6f8b054dE.exit10" ], [ %accum.0113.i.i.i.i, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17h3861d3b7582ecf43E.exit.i.i.thread57.i.i.i.i.i" ], [ %accum.0113.i.i.i.i, %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hd81aa0d91957da2eE.exit.i.i.i.thread.i.i.i.i.i" ], [ %accum.0113.i.i.i.i, %bb3.i.i6.i.i.i.i.i.i.i ], [ %accum.0113.i.i.i.i, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h724deb5152f416dbE.exit.i.i.i.i" ], [ %_4.0.i.i.i.i.i.i.i, %"_ZN115_$LT$core..iter..adapters..take_while..TakeWhile$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold5check28_$u7b$$u7b$closure$u7d$$u7d$17h2af9662d6e62ee12E.exit.i.i.i.i" ], [ %accum.0113.i.i.i.i, %"_ZN6driver3src6driver6driver28_$u7b$$u7b$closure$u7d$$u7d$17h67b7ca6d6a2551f0E.exit.i.i.i.i.i" ], [ %accum.0113.i.i.i.i, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17h3861d3b7582ecf43E.exit.i.i.i.i.i.i.i" ], [ %accum.0113.i.i.i.i, %bb2.i.i.i.i.i.i.i.i.i.i ]
  store i64 %.1.i.i.i, ptr %count.i, align 8, !noalias !22
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_8.i), !noalias !22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_12.i), !noalias !22
  store ptr %count.i, ptr %_12.i, align 8, !noalias !22
  %198 = getelementptr inbounds { ptr, ptr }, ptr %_12.i, i64 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h8ec4fd1cd29d9461E", ptr %198, align 8, !noalias !22
  %199 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_8.i, i64 0, i32 1
  store ptr @alloc_4ed11f17954caf7854f80f02ae34907e, ptr %199, align 8, !alias.scope !149, !noalias !152
  %200 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_8.i, i64 0, i32 1, i32 1
  store i64 2, ptr %200, align 8, !alias.scope !149, !noalias !152
  store ptr null, ptr %_8.i, align 8, !alias.scope !149, !noalias !152
  %201 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_8.i, i64 0, i32 2
  store ptr %_12.i, ptr %201, align 8, !alias.scope !149, !noalias !152
  %202 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_8.i, i64 0, i32 2, i32 1
  store i64 1, ptr %202, align 8, !alias.scope !149, !noalias !152
  call void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_8.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_8.i), !noalias !22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_12.i), !noalias !22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %count.i), !noalias !22
  ret void
}

; Function Attrs: nonlazybind uwtable
declare noundef i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_ZN4core3ffi5c_str4CStr8from_ptr9strlen_rt17h463292534e232c62E(ptr noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #2

; Function Attrs: nonlazybind uwtable
declare void @_ZN4core3ffi5c_str4CStr6to_str17h7660279a6932e49cE(ptr noalias nocapture noundef sret(%"core::result::Result<&str, core::str::error::Utf8Error>") dereferenceable(24), ptr noalias noundef nonnull readonly align 1, i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6result13unwrap_failed17h008634a1b68516fbE(ptr noalias noundef nonnull readonly align 1, i64 noundef, ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 dereferenceable(24), ptr noalias noundef readonly align 8 dereferenceable(24)) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare void @_ZN4core3str7pattern11StrSearcher3new17h069dfca780d7eb06E(ptr noalias nocapture noundef sret(%"core::str::pattern::StrSearcher<'_, '_>") dereferenceable(104), ptr noalias noundef nonnull readonly align 1, i64 noundef, ptr noalias noundef nonnull readonly align 1, i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core3str16slice_error_fail17h696d29a1b388d0feE(ptr noalias noundef nonnull readonly align 1, i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 dereferenceable(24)) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h8fef77d0859e3526E(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 dereferenceable(24)) unnamed_addr #5

; Function Attrs: cold inlinehint nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable
define internal fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h2f53266587cc4647E"(ptr noalias nocapture noundef readonly align 8 dereferenceable(32) %_1, i64 noundef %idx, i16 noundef %mask, i1 noundef zeroext %skip) unnamed_addr #8 personality ptr @rust_eh_personality {
start:
  %.not18 = icmp eq i16 %mask, 0
  %or.cond = or i1 %.not18, %skip
  br i1 %or.cond, label %bb10, label %bb4.lr.ph

bb4.lr.ph:                                        ; preds = %start
  %_10 = add i64 %idx, 1
  %self.0 = load ptr, ptr %_1, align 8, !nonnull !8, !align !10, !noundef !8
  %0 = getelementptr inbounds %"[closure@core::str::pattern::simd_contains::{closure#2}]", ptr %_1, i64 0, i32 1
  %1 = getelementptr inbounds %"[closure@core::str::pattern::simd_contains::{closure#2}]", ptr %_1, i64 0, i32 1, i32 1
  %_21.1 = load i64, ptr %1, align 8, !noundef !8
  %_22.0 = load ptr, ptr %0, align 8, !nonnull !8, !align !10, !noundef !8
  %_6.i = icmp ult i64 %_21.1, 4
  %count.i = add i64 %_21.1, -4
  %2 = getelementptr inbounds i8, ptr %_22.0, i64 %count.i
  br i1 %_6.i, label %bb4.us.preheader, label %bb4.lr.ph.split

bb4.us.preheader:                                 ; preds = %bb4.lr.ph
  %exitcond.not.i.us = icmp eq i64 %_21.1, 0
  %exitcond.not.i.us.1 = icmp eq i64 %_21.1, 1
  %3 = getelementptr inbounds i8, ptr %_22.0, i64 1
  %exitcond.not.i.us.2 = icmp eq i64 %_21.1, 2
  %4 = getelementptr inbounds i8, ptr %_22.0, i64 2
  %exitcond.not.i.us.3 = icmp eq i64 %_21.1, 3
  br label %bb4.us

bb4.us:                                           ; preds = %bb7.loopexit.us, %bb4.us.preheader
  %mask1.019.us = phi i16 [ %9, %bb7.loopexit.us ], [ %mask, %bb4.us.preheader ]
  %5 = tail call i16 @llvm.cttz.i16(i16 %mask1.019.us, i1 true), !range !155
  %_11.us = zext i16 %5 to i64
  %offset.us = add i64 %_10, %_11.us
  %6 = getelementptr inbounds i8, ptr %self.0, i64 %offset.us
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159)
  br i1 %exitcond.not.i.us, label %bb10, label %bb4.i.us

bb4.i.us:                                         ; preds = %bb4.us
  %b1.i.us = load i8, ptr %6, align 1, !alias.scope !156, !noalias !159, !noundef !8
  %b2.i.us = load i8, ptr %_22.0, align 1, !alias.scope !159, !noalias !156, !noundef !8
  %_17.not.i.us = icmp eq i8 %b1.i.us, %b2.i.us
  br i1 %_17.not.i.us, label %bb3.i.us.1, label %bb7.loopexit.us

bb3.i.us.1:                                       ; preds = %bb4.i.us
  br i1 %exitcond.not.i.us.1, label %bb10, label %bb4.i.us.1

bb4.i.us.1:                                       ; preds = %bb3.i.us.1
  %7 = getelementptr inbounds i8, ptr %6, i64 1
  %b1.i.us.1 = load i8, ptr %7, align 1, !alias.scope !156, !noalias !159, !noundef !8
  %b2.i.us.1 = load i8, ptr %3, align 1, !alias.scope !159, !noalias !156, !noundef !8
  %_17.not.i.us.1 = icmp eq i8 %b1.i.us.1, %b2.i.us.1
  br i1 %_17.not.i.us.1, label %bb3.i.us.2, label %bb7.loopexit.us

bb3.i.us.2:                                       ; preds = %bb4.i.us.1
  br i1 %exitcond.not.i.us.2, label %bb10, label %bb4.i.us.2

bb4.i.us.2:                                       ; preds = %bb3.i.us.2
  %8 = getelementptr inbounds i8, ptr %6, i64 2
  %b1.i.us.2 = load i8, ptr %8, align 1, !alias.scope !156, !noalias !159, !noundef !8
  %b2.i.us.2 = load i8, ptr %4, align 1, !alias.scope !159, !noalias !156, !noundef !8
  %_17.not.i.us.2 = icmp eq i8 %b1.i.us.2, %b2.i.us.2
  %_17.not.i.us.2.not = xor i1 %_17.not.i.us.2, true
  %exitcond.not.i.us.3.not = xor i1 %exitcond.not.i.us.3, true
  %brmerge = or i1 %_17.not.i.us.2.not, %exitcond.not.i.us.3.not
  br i1 %brmerge, label %bb7.loopexit.us, label %bb10

bb7.loopexit.us:                                  ; preds = %bb4.i.us.2, %bb4.i.us.1, %bb4.i.us
  %_19.us = shl nuw i16 1, %5
  %_18.us = xor i16 %_19.us, -1
  %9 = and i16 %mask1.019.us, %_18.us
  %.not.us = icmp eq i16 %9, 0
  br i1 %.not.us, label %bb10, label %bb4.us

bb4.lr.ph.split:                                  ; preds = %bb4.lr.ph
  %_3418.i = icmp sgt i64 %count.i, 0
  br i1 %_3418.i, label %bb4.us21, label %bb4.lr.ph.split.split

bb4.us21:                                         ; preds = %bb7.us25, %bb4.lr.ph.split
  %mask1.019.us22 = phi i16 [ %15, %bb7.us25 ], [ %mask, %bb4.lr.ph.split ]
  %10 = tail call i16 @llvm.cttz.i16(i16 %mask1.019.us22, i1 true), !range !155
  %_11.us23 = zext i16 %10 to i64
  %offset.us24 = add i64 %_10, %_11.us23
  %11 = getelementptr inbounds i8, ptr %self.0, i64 %offset.us24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159)
  %12 = getelementptr inbounds i8, ptr %11, i64 %count.i
  br label %bb11.i.us

bb11.i.us:                                        ; preds = %bb13.i.us, %bb4.us21
  %py.020.i.us = phi ptr [ %14, %bb13.i.us ], [ %_22.0, %bb4.us21 ]
  %px.019.i.us = phi ptr [ %13, %bb13.i.us ], [ %11, %bb4.us21 ]
  %tmp.0.copyload.i.us = load i32, ptr %px.019.i.us, align 1, !alias.scope !156, !noalias !159
  %tmp1.0.copyload.i.us = load i32, ptr %py.020.i.us, align 1, !alias.scope !159, !noalias !156
  %_42.not.i.us = icmp eq i32 %tmp.0.copyload.i.us, %tmp1.0.copyload.i.us
  br i1 %_42.not.i.us, label %bb13.i.us, label %bb7.us25

bb13.i.us:                                        ; preds = %bb11.i.us
  %13 = getelementptr inbounds i8, ptr %px.019.i.us, i64 4
  %14 = getelementptr inbounds i8, ptr %py.020.i.us, i64 4
  %_34.i.us = icmp ult ptr %13, %12
  br i1 %_34.i.us, label %bb11.i.us, label %_ZN4core3str7pattern14small_slice_eq17h3259ade9aa2d4994E.exit.loopexit.us

bb7.us25:                                         ; preds = %_ZN4core3str7pattern14small_slice_eq17h3259ade9aa2d4994E.exit.loopexit.us, %bb11.i.us
  %_19.us26 = shl nuw i16 1, %10
  %_18.us27 = xor i16 %_19.us26, -1
  %15 = and i16 %mask1.019.us22, %_18.us27
  %.not.us28 = icmp eq i16 %15, 0
  br i1 %.not.us28, label %bb10, label %bb4.us21

_ZN4core3str7pattern14small_slice_eq17h3259ade9aa2d4994E.exit.loopexit.us: ; preds = %bb13.i.us
  %tmp2.0.copyload.i.us = load i32, ptr %12, align 1, !alias.scope !156, !noalias !159
  %tmp3.0.copyload.i.us = load i32, ptr %2, align 1, !alias.scope !159, !noalias !156
  %16 = icmp eq i32 %tmp2.0.copyload.i.us, %tmp3.0.copyload.i.us
  br i1 %16, label %bb10, label %bb7.us25

bb4.lr.ph.split.split:                            ; preds = %bb4.lr.ph.split
  %tmp3.0.copyload.i = load i32, ptr %2, align 1, !alias.scope !159, !noalias !156
  %17 = getelementptr i8, ptr %self.0, i64 %count.i
  br label %bb4

bb10:                                             ; preds = %bb7, %bb4, %_ZN4core3str7pattern14small_slice_eq17h3259ade9aa2d4994E.exit.loopexit.us, %bb7.us25, %bb7.loopexit.us, %bb4.i.us.2, %bb3.i.us.2, %bb3.i.us.1, %bb4.us, %start
  %.0 = phi i1 [ false, %start ], [ true, %bb3.i.us.2 ], [ true, %bb3.i.us.1 ], [ true, %bb4.us ], [ false, %bb7.loopexit.us ], [ true, %_ZN4core3str7pattern14small_slice_eq17h3259ade9aa2d4994E.exit.loopexit.us ], [ false, %bb7.us25 ], [ %20, %bb7 ], [ %20, %bb4 ], [ true, %bb4.i.us.2 ]
  ret i1 %.0

bb4:                                              ; preds = %bb7, %bb4.lr.ph.split.split
  %mask1.019 = phi i16 [ %mask, %bb4.lr.ph.split.split ], [ %21, %bb7 ]
  %18 = tail call i16 @llvm.cttz.i16(i16 %mask1.019, i1 true), !range !155
  %_11 = zext i16 %18 to i64
  %offset = add i64 %_10, %_11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159)
  %19 = getelementptr i8, ptr %17, i64 %offset
  %tmp2.0.copyload.i = load i32, ptr %19, align 1, !alias.scope !156, !noalias !159
  %20 = icmp eq i32 %tmp2.0.copyload.i, %tmp3.0.copyload.i
  br i1 %20, label %bb10, label %bb7

bb7:                                              ; preds = %bb4
  %_19 = shl nuw i16 1, %18
  %_18 = xor i16 %_19, -1
  %21 = and i16 %mask1.019, %_18
  %.not = icmp eq i16 %21, 0
  br i1 %.not, label %bb10, label %bb4
}

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h99d7a3bd88378fa7E(i8 noundef, ptr noalias noundef nonnull readonly align 1, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h8ec4fd1cd29d9461E"(ptr noalias noundef readonly align 8 dereferenceable(8), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef readonly dereferenceable(48)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #7

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @"_ZN4core3ptr48drop_in_place$LT$core..str..error..Utf8Error$GT$17h1d6f64b633b1d7c5E"(ptr nocapture readnone %_1) unnamed_addr #9 {
start:
  ret void
}

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN64_$LT$core..str..error..Utf8Error$u20$as$u20$core..fmt..Debug$GT$3fmt17he5298eb5cbc8b1a7E"(ptr noalias noundef readonly align 8 dereferenceable(16), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nofree nounwind nonlazybind willreturn memory(argmem: read) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { cold inlinehint nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { noreturn }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!3}
!3 = distinct !{!3, !4, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h64a198ee6f8b054dE: %self"}
!4 = distinct !{!4, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h64a198ee6f8b054dE"}
!5 = !{i64 0, i64 2}
!6 = !{!7}
!7 = distinct !{!7, !4, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h64a198ee6f8b054dE: argument 1"}
!8 = !{}
!9 = !{!3, !7}
!10 = !{i64 1}
!11 = !{!12}
!12 = distinct !{!12, !13, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h64a198ee6f8b054dE: %self"}
!13 = distinct !{!13, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h64a198ee6f8b054dE"}
!14 = !{!15}
!15 = distinct !{!15, !13, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h64a198ee6f8b054dE: argument 1"}
!16 = !{!12, !15}
!17 = !{!18}
!18 = distinct !{!18, !19, !"_ZN6driver3src6driver6driver17h9646a70af6781dffE: %s1.0"}
!19 = distinct !{!19, !"_ZN6driver3src6driver6driver17h9646a70af6781dffE"}
!20 = !{!21}
!21 = distinct !{!21, !19, !"_ZN6driver3src6driver6driver17h9646a70af6781dffE: %s2.0"}
!22 = !{!18, !21}
!23 = !{!24, !26, !28, !30, !31, !32, !34, !21}
!24 = distinct !{!24, !25, !"_ZN4core3str11validations15next_code_point17h3d023179b661daadE: %bytes"}
!25 = distinct !{!25, !"_ZN4core3str11validations15next_code_point17h3d023179b661daadE"}
!26 = distinct !{!26, !27, !"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h724deb5152f416dbE: %self"}
!27 = distinct !{!27, !"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h724deb5152f416dbE"}
!28 = distinct !{!28, !29, !"_ZN4core4iter6traits8iterator8Iterator8try_fold17h1a60db37bb5d398dE: %self"}
!29 = distinct !{!29, !"_ZN4core4iter6traits8iterator8Iterator8try_fold17h1a60db37bb5d398dE"}
!30 = distinct !{!30, !29, !"_ZN4core4iter6traits8iterator8Iterator8try_fold17h1a60db37bb5d398dE: argument 1"}
!31 = distinct !{!31, !29, !"_ZN4core4iter6traits8iterator8Iterator8try_fold17h1a60db37bb5d398dE: argument 2"}
!32 = distinct !{!32, !33, !"_ZN115_$LT$core..iter..adapters..take_while..TakeWhile$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17ha0fbaaa111f15768E: %self"}
!33 = distinct !{!33, !"_ZN115_$LT$core..iter..adapters..take_while..TakeWhile$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17ha0fbaaa111f15768E"}
!34 = distinct !{!34, !35, !"_ZN115_$LT$core..iter..adapters..take_while..TakeWhile$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfb43b7de8c7901f0E: %self"}
!35 = distinct !{!35, !"_ZN115_$LT$core..iter..adapters..take_while..TakeWhile$LT$I$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hfb43b7de8c7901f0E"}
!36 = !{!37}
!37 = distinct !{!37, !38, !"_ZN52_$LT$char$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17h6e493eff84ddc167E: %haystack.0"}
!38 = distinct !{!38, !"_ZN52_$LT$char$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17h6e493eff84ddc167E"}
!39 = !{!37, !28, !30, !31, !32, !34, !18, !21}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_ZN4core4char7methods15encode_utf8_raw17h2f28c279514d3feaE: %dst.0"}
!42 = distinct !{!42, !"_ZN4core4char7methods15encode_utf8_raw17h2f28c279514d3feaE"}
!43 = !{!44}
!44 = distinct !{!44, !45, !"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17h3861d3b7582ecf43E: argument 0"}
!45 = distinct !{!45, !"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17h3861d3b7582ecf43E"}
!46 = !{!47}
!47 = distinct !{!47, !45, !"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17h3861d3b7582ecf43E: argument 1"}
!48 = !{!49, !51, !52, !54, !44, !47}
!49 = distinct !{!49, !50, !"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h0172443a0d124206E: %self.0"}
!50 = distinct !{!50, !"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h0172443a0d124206E"}
!51 = distinct !{!51, !50, !"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h0172443a0d124206E: %other.0"}
!52 = distinct !{!52, !53, !"_ZN4core5slice3cmp81_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$B$u5d$$GT$$u20$for$u20$$u5b$A$u5d$$GT$2eq17h4dfaddcec1e339daE: %self.0"}
!53 = distinct !{!53, !"_ZN4core5slice3cmp81_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$B$u5d$$GT$$u20$for$u20$$u5b$A$u5d$$GT$2eq17h4dfaddcec1e339daE"}
!54 = distinct !{!54, !53, !"_ZN4core5slice3cmp81_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$B$u5d$$GT$$u20$for$u20$$u5b$A$u5d$$GT$2eq17h4dfaddcec1e339daE: %other.0"}
!55 = !{!28, !30, !31, !32, !34, !18}
!56 = !{!44, !47, !37, !28, !30, !31, !32, !34, !18, !21}
!57 = !{!28, !30, !31, !32, !34}
!58 = !{!59}
!59 = distinct !{!59, !60, !"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hd81aa0d91957da2eE: %self"}
!60 = distinct !{!60, !"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hd81aa0d91957da2eE"}
!61 = !{!62, !44, !47, !37, !28, !30, !31, !32, !34, !18, !21}
!62 = distinct !{!62, !60, !"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hd81aa0d91957da2eE: argument 0"}
!63 = !{!64, !59}
!64 = distinct !{!64, !65, !"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h39f01321eea874fcE: %self"}
!65 = distinct !{!65, !"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h39f01321eea874fcE"}
!66 = !{!67, !62, !44, !47, !37, !28, !30, !31, !32, !34, !18, !21}
!67 = distinct !{!67, !65, !"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h39f01321eea874fcE: argument 0"}
!68 = !{!69, !71, !73}
!69 = distinct !{!69, !70, !"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h0d9ed69ee3a2c216E: %self.0"}
!70 = distinct !{!70, !"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h0d9ed69ee3a2c216E"}
!71 = distinct !{!71, !72, !"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17hc8ce0f66ba7f5ab4E: %slice.0"}
!72 = distinct !{!72, !"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17hc8ce0f66ba7f5ab4E"}
!73 = distinct !{!73, !74, !"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$5index17h6e4652210e4d84b6E: %slice.0"}
!74 = distinct !{!74, !"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$5index17h6e4652210e4d84b6E"}
!75 = !{!67, !76, !62, !59, !28, !30, !31, !32, !34}
!76 = distinct !{!76, !65, !"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h39f01321eea874fcE: %self:Peel0"}
!77 = !{!78, !67, !76, !62, !59, !28, !30, !31, !32, !34}
!78 = distinct !{!78, !79, !"_ZN4core3str11validations15next_code_point17h3d023179b661daadE: %bytes"}
!79 = distinct !{!79, !"_ZN4core3str11validations15next_code_point17h3d023179b661daadE"}
!80 = !{!64}
!81 = !{!67, !64, !62, !59, !28, !30, !31, !32, !34}
!82 = !{!78, !67, !64, !62, !59, !28, !30, !31, !32, !34}
!83 = !{!84}
!84 = distinct !{!84, !85, !"_ZN4core3str7pattern14TwoWaySearcher4next17h1750142708846026E: %self"}
!85 = distinct !{!85, !"_ZN4core3str7pattern14TwoWaySearcher4next17h1750142708846026E"}
!86 = !{!87}
!87 = distinct !{!87, !85, !"_ZN4core3str7pattern14TwoWaySearcher4next17h1750142708846026E: %haystack.0"}
!88 = !{!89}
!89 = distinct !{!89, !85, !"_ZN4core3str7pattern14TwoWaySearcher4next17h1750142708846026E: %needle.0"}
!90 = !{!91, !87, !89, !44, !47, !37, !28, !30, !31, !32, !34, !18, !21}
!91 = distinct !{!91, !85, !"_ZN4core3str7pattern14TwoWaySearcher4next17h1750142708846026E: argument 0"}
!92 = !{!91, !84, !89, !28, !30, !31, !32, !34}
!93 = !{!"branch_weights", i32 2000, i32 1}
!94 = !{!91, !84, !87, !28, !30, !31, !32, !34}
!95 = !{!91, !84, !87, !89, !28, !30, !31, !32, !34}
!96 = !{!97}
!97 = distinct !{!97, !98, !"_ZN4core3str7pattern14TwoWaySearcher4next17h1750142708846026E: %self"}
!98 = distinct !{!98, !"_ZN4core3str7pattern14TwoWaySearcher4next17h1750142708846026E"}
!99 = !{!100}
!100 = distinct !{!100, !98, !"_ZN4core3str7pattern14TwoWaySearcher4next17h1750142708846026E: %haystack.0"}
!101 = !{!102}
!102 = distinct !{!102, !98, !"_ZN4core3str7pattern14TwoWaySearcher4next17h1750142708846026E: %needle.0"}
!103 = !{!104, !100, !102, !44, !47, !37, !28, !30, !31, !32, !34, !18, !21}
!104 = distinct !{!104, !98, !"_ZN4core3str7pattern14TwoWaySearcher4next17h1750142708846026E: argument 0"}
!105 = !{!104, !97, !102, !28, !30, !31, !32, !34}
!106 = !{!104, !97, !100, !28, !30, !31, !32, !34}
!107 = !{!104, !97, !100, !102, !28, !30, !31, !32, !34}
!108 = !{!109}
!109 = distinct !{!109, !110, !"_ZN4core3str7pattern13simd_contains17h2daa09cce4282f7aE: %needle.0"}
!110 = distinct !{!110, !"_ZN4core3str7pattern13simd_contains17h2daa09cce4282f7aE"}
!111 = !{!112}
!112 = distinct !{!112, !110, !"_ZN4core3str7pattern13simd_contains17h2daa09cce4282f7aE: %haystack.0"}
!113 = !{!109, !44}
!114 = !{!115, !117, !119, !121, !112, !47, !37, !28, !30, !31, !32, !34, !18, !21}
!115 = distinct !{!115, !116, !"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h8b977c913c0b9374E: %_1"}
!116 = distinct !{!116, !"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h8b977c913c0b9374E"}
!117 = distinct !{!117, !118, !"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h3c726e78f030f398E: %_1"}
!118 = distinct !{!118, !"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h3c726e78f030f398E"}
!119 = distinct !{!119, !120, !"_ZN4core4iter6traits12double_ended19DoubleEndedIterator9try_rfold17h3255c045b9bff948E: %self"}
!120 = distinct !{!120, !"_ZN4core4iter6traits12double_ended19DoubleEndedIterator9try_rfold17h3255c045b9bff948E"}
!121 = distinct !{!121, !120, !"_ZN4core4iter6traits12double_ended19DoubleEndedIterator9try_rfold17h3255c045b9bff948E: %f"}
!122 = !{!123, !125, !126, !128, !109, !112, !44, !47}
!123 = distinct !{!123, !124, !"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h0172443a0d124206E: %self.0"}
!124 = distinct !{!124, !"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h0172443a0d124206E"}
!125 = distinct !{!125, !124, !"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h0172443a0d124206E: %other.0"}
!126 = distinct !{!126, !127, !"_ZN4core5slice3cmp81_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$B$u5d$$GT$$u20$for$u20$$u5b$A$u5d$$GT$2eq17h4dfaddcec1e339daE: %self.0"}
!127 = distinct !{!127, !"_ZN4core5slice3cmp81_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$B$u5d$$GT$$u20$for$u20$$u5b$A$u5d$$GT$2eq17h4dfaddcec1e339daE"}
!128 = distinct !{!128, !127, !"_ZN4core5slice3cmp81_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$B$u5d$$GT$$u20$for$u20$$u5b$A$u5d$$GT$2eq17h4dfaddcec1e339daE: %other.0"}
!129 = !{!130, !132, !28, !30, !31, !32, !34, !18}
!130 = distinct !{!130, !131, !"_ZN4core4iter6traits8iterator8Iterator8try_fold17h1ac29cfd2be7467eE: %self"}
!131 = distinct !{!131, !"_ZN4core4iter6traits8iterator8Iterator8try_fold17h1ac29cfd2be7467eE"}
!132 = distinct !{!132, !131, !"_ZN4core4iter6traits8iterator8Iterator8try_fold17h1ac29cfd2be7467eE: argument 1"}
!133 = !{!109, !112, !44, !47, !37, !28, !30, !31, !32, !34, !18, !21}
!134 = !{!112, !47, !37, !21}
!135 = !{!136, !109, !44, !28, !30, !31, !32, !34, !18}
!136 = distinct !{!136, !137, !"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h46b820c54d19b2abE: %_1"}
!137 = distinct !{!137, !"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h46b820c54d19b2abE"}
!138 = !{!139, !109, !44, !28, !30, !31, !32, !34, !18}
!139 = distinct !{!139, !140, !"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h46b820c54d19b2abE: %_1"}
!140 = distinct !{!140, !"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h46b820c54d19b2abE"}
!141 = !{!142, !109, !44, !28, !30, !31, !32, !34, !18}
!142 = distinct !{!142, !143, !"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h46b820c54d19b2abE: %_1"}
!143 = distinct !{!143, !"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h46b820c54d19b2abE"}
!144 = !{!145, !147, !37, !21}
!145 = distinct !{!145, !146, !"_ZN4core5slice6memchr12memchr_naive17hb849b0443d9b323dE: %text.0"}
!146 = distinct !{!146, !"_ZN4core5slice6memchr12memchr_naive17hb849b0443d9b323dE"}
!147 = distinct !{!147, !148, !"_ZN54_$LT$u8$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains17hdebfad77ef053a53E: %x.0"}
!148 = distinct !{!148, !"_ZN54_$LT$u8$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains17hdebfad77ef053a53E"}
!149 = !{!150}
!150 = distinct !{!150, !151, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!151 = distinct !{!151, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!152 = !{!153, !154, !18, !21}
!153 = distinct !{!153, !151, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %pieces.0"}
!154 = distinct !{!154, !151, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!155 = !{i16 0, i16 17}
!156 = !{!157}
!157 = distinct !{!157, !158, !"_ZN4core3str7pattern14small_slice_eq17h3259ade9aa2d4994E: %x.0"}
!158 = distinct !{!158, !"_ZN4core3str7pattern14small_slice_eq17h3259ade9aa2d4994E"}
!159 = !{!160}
!160 = distinct !{!160, !158, !"_ZN4core3str7pattern14small_slice_eq17h3259ade9aa2d4994E: %y.0"}
