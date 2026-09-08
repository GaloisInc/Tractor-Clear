; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"core::fmt::Arguments<'_>" = type { { ptr, i64 }, { ptr, i64 }, { ptr, i64 } }
%"std::sync::remutex::ReentrantMutex<core::cell::RefCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>>" = type { %"core::sync::atomic::AtomicUsize", %"core::cell::RefCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>", %"std::sys::unix::locks::futex_mutex::Mutex", i32 }
%"core::sync::atomic::AtomicUsize" = type { i64 }
%"core::cell::RefCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>" = type { i64, %"core::cell::UnsafeCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>" }
%"core::cell::UnsafeCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>" = type { %"std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>" }
%"std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>" = type { %"std::io::buffered::bufwriter::BufWriter<std::io::stdio::StdoutRaw>" }
%"std::io::buffered::bufwriter::BufWriter<std::io::stdio::StdoutRaw>" = type { %"std::io::stdio::StdoutRaw", %"alloc::vec::Vec<u8>", i8, [7 x i8] }
%"std::io::stdio::StdoutRaw" = type { %"std::sys::unix::stdio::Stdout" }
%"std::sys::unix::stdio::Stdout" = type { {} }
%"alloc::vec::Vec<u8>" = type { { i64, ptr }, i64 }
%"std::sys::unix::locks::futex_mutex::Mutex" = type { %"core::sync::atomic::AtomicU32" }
%"core::sync::atomic::AtomicU32" = type { i32 }

@vtable.0 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @"_ZN4core3ptr89drop_in_place$LT$std..io..Write..write_fmt..Adapter$LT$std..io..stdio..StdoutLock$GT$$GT$17he90e37f96cc5eaedE", [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17hb3d888215ed5a7a2E", ptr @_ZN4core3fmt5Write10write_char17hecd60418a48c6305E, ptr @_ZN4core3fmt5Write9write_fmt17hd05fcc92507d2152E }>, align 8
@alloc_118e5dd62e18907a47aec3e2be501119 = private unnamed_addr constant <{ [15 x i8] }> <{ [15 x i8] c"formatter error" }>, align 1
@alloc_8bb4120231b65ad69880f6a736762954 = private unnamed_addr constant <{ ptr, [9 x i8], [7 x i8] }> <{ ptr @alloc_118e5dd62e18907a47aec3e2be501119, [9 x i8] c"\0F\00\00\00\00\00\00\00(", [7 x i8] undef }>, align 8
@vtable.1 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @"_ZN4core3ptr101drop_in_place$LT$$RF$mut$u20$std..io..Write..write_fmt..Adapter$LT$std..io..stdio..StdoutLock$GT$$GT$17h62b1e5ce230d96feE", [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h194ae08d00cda8c7E", ptr @"_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h5520edfa89334da9E", ptr @"_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17heb9f84a51d0d5732E" }>, align 8
@alloc_42a1020df2329185d835ebcc4f437f77 = private unnamed_addr constant <{ [14 x i8] }> <{ [14 x i8] c"alphanumeric: " }>, align 1
@alloc_49a1e817e911805af64bbc7efb390101 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc_600b2402f1afbc831e281265eab29287 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc_42a1020df2329185d835ebcc4f437f77, [8 x i8] c"\0E\00\00\00\00\00\00\00", ptr @alloc_49a1e817e911805af64bbc7efb390101, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc_d286254ff3d29a4b0cf4c5d17d3205c9 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"alphabetic: " }>, align 1
@alloc_8db1cee8f974728134b57980aa8a814b = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc_d286254ff3d29a4b0cf4c5d17d3205c9, [8 x i8] c"\0C\00\00\00\00\00\00\00", ptr @alloc_49a1e817e911805af64bbc7efb390101, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc_cbc2fa60581b5c3c85644c00e246674b = private unnamed_addr constant <{ [11 x i8] }> <{ [11 x i8] c"lowercase: " }>, align 1
@alloc_c7634249b7541961025721a7ea3e19a2 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc_cbc2fa60581b5c3c85644c00e246674b, [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @alloc_49a1e817e911805af64bbc7efb390101, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc_02c6377219521f0e67135b9282034929 = private unnamed_addr constant <{ [11 x i8] }> <{ [11 x i8] c"uppercase: " }>, align 1
@alloc_f96757438ee6b24c2026463ec7775983 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc_02c6377219521f0e67135b9282034929, [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @alloc_49a1e817e911805af64bbc7efb390101, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc_8c81c267e5e207aca8e9a19535d9b3b3 = private unnamed_addr constant <{ [7 x i8] }> <{ [7 x i8] c"digit: " }>, align 1
@alloc_058a672d1787f811ea5db22534146bf0 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc_8c81c267e5e207aca8e9a19535d9b3b3, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @alloc_49a1e817e911805af64bbc7efb390101, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc_299e724e77ea56356db3bbbee2e216f0 = private unnamed_addr constant <{ [13 x i8] }> <{ [13 x i8] c"hexadecimal: " }>, align 1
@alloc_9c9287e17de7198e969b558701c83d42 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc_299e724e77ea56356db3bbbee2e216f0, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @alloc_49a1e817e911805af64bbc7efb390101, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc_ceb2fca32b16af3750fa26b9d37f93f3 = private unnamed_addr constant <{ [9 x i8] }> <{ [9 x i8] c"control: " }>, align 1
@alloc_1f2f6554c2383acfd860b695b90e6604 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc_ceb2fca32b16af3750fa26b9d37f93f3, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @alloc_49a1e817e911805af64bbc7efb390101, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc_cbda966a8a2a71a408bc616372725987 = private unnamed_addr constant <{ [11 x i8] }> <{ [11 x i8] c"graphical: " }>, align 1
@alloc_4c3ed02e960ac03d90e45c8e9b94d737 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc_cbda966a8a2a71a408bc616372725987, [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @alloc_49a1e817e911805af64bbc7efb390101, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc_69cba35b131f42f33dde3a5c7e682767 = private unnamed_addr constant <{ [7 x i8] }> <{ [7 x i8] c"space: " }>, align 1
@alloc_d2287bc38ff6a250864a020d267786c5 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc_69cba35b131f42f33dde3a5c7e682767, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @alloc_49a1e817e911805af64bbc7efb390101, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc_ce7f3c7a0054af05f941824b1461ccd7 = private unnamed_addr constant <{ [7 x i8] }> <{ [7 x i8] c"blank: " }>, align 1
@alloc_ef569ffcb25de0165ae561259b184c76 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc_ce7f3c7a0054af05f941824b1461ccd7, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @alloc_49a1e817e911805af64bbc7efb390101, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc_34aac06a3ca5963c7c424e61cfbdc6c1 = private unnamed_addr constant <{ [10 x i8] }> <{ [10 x i8] c"printing: " }>, align 1
@alloc_0fef3d11b201f05f4abeeb45b929d766 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc_34aac06a3ca5963c7c424e61cfbdc6c1, [8 x i8] c"\0A\00\00\00\00\00\00\00", ptr @alloc_49a1e817e911805af64bbc7efb390101, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc_a36b5add9474b56ee21d1809876d1bc4 = private unnamed_addr constant <{ [13 x i8] }> <{ [13 x i8] c"punctuation: " }>, align 1
@alloc_8939cec4e792092ccae6d9391466ffd1 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc_a36b5add9474b56ee21d1809876d1bc4, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @alloc_49a1e817e911805af64bbc7efb390101, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc_aed661219b618c2b91d9a428afc43fda = private unnamed_addr constant <{ [10 x i8] }> <{ [10 x i8] c"to lower: " }>, align 1
@alloc_5e43b5ada3c358794915b0ac40c8e4a7 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc_aed661219b618c2b91d9a428afc43fda, [8 x i8] c"\0A\00\00\00\00\00\00\00", ptr @alloc_49a1e817e911805af64bbc7efb390101, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc_cdd84fd89b55ba42aa1091d84635f922 = private unnamed_addr constant <{ [10 x i8] }> <{ [10 x i8] c"to upper: " }>, align 1
@alloc_e397949512dbef17d037bed997562b22 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc_cdd84fd89b55ba42aa1091d84635f922, [8 x i8] c"\0A\00\00\00\00\00\00\00", ptr @alloc_49a1e817e911805af64bbc7efb390101, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define void @driver(i8 noundef signext %c) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %_172.i = alloca [1 x { ptr, ptr }], align 8
  %_168.i = alloca %"core::fmt::Arguments<'_>", align 8
  %_163.i = alloca [1 x { ptr, ptr }], align 8
  %_159.i = alloca %"core::fmt::Arguments<'_>", align 8
  %_154.i = alloca i32, align 4
  %_151.i = alloca [1 x { ptr, ptr }], align 8
  %_147.i = alloca %"core::fmt::Arguments<'_>", align 8
  %_142.i = alloca i32, align 4
  %_139.i = alloca [1 x { ptr, ptr }], align 8
  %_135.i = alloca %"core::fmt::Arguments<'_>", align 8
  %_130.i = alloca i32, align 4
  %_127.i = alloca [1 x { ptr, ptr }], align 8
  %_123.i = alloca %"core::fmt::Arguments<'_>", align 8
  %_118.i = alloca i32, align 4
  %_115.i = alloca [1 x { ptr, ptr }], align 8
  %_111.i = alloca %"core::fmt::Arguments<'_>", align 8
  %_106.i = alloca i32, align 4
  %_103.i = alloca [1 x { ptr, ptr }], align 8
  %_99.i = alloca %"core::fmt::Arguments<'_>", align 8
  %_94.i = alloca i32, align 4
  %_91.i = alloca [1 x { ptr, ptr }], align 8
  %_87.i = alloca %"core::fmt::Arguments<'_>", align 8
  %_82.i = alloca i32, align 4
  %_79.i = alloca [1 x { ptr, ptr }], align 8
  %_75.i = alloca %"core::fmt::Arguments<'_>", align 8
  %_70.i = alloca i32, align 4
  %_67.i = alloca [1 x { ptr, ptr }], align 8
  %_63.i = alloca %"core::fmt::Arguments<'_>", align 8
  %_58.i = alloca i32, align 4
  %_55.i = alloca [1 x { ptr, ptr }], align 8
  %_51.i = alloca %"core::fmt::Arguments<'_>", align 8
  %_46.i = alloca i32, align 4
  %_43.i = alloca [1 x { ptr, ptr }], align 8
  %_39.i = alloca %"core::fmt::Arguments<'_>", align 8
  %_34.i = alloca i32, align 4
  %_31.i = alloca [1 x { ptr, ptr }], align 8
  %_27.i = alloca %"core::fmt::Arguments<'_>", align 8
  %_22.i = alloca i32, align 4
  %_19.i = alloca [1 x { ptr, ptr }], align 8
  %_15.i = alloca %"core::fmt::Arguments<'_>", align 8
  %_12.i = alloca ptr, align 8
  %out.i = alloca ptr, align 8
  %upper.i = alloca i32, align 4
  %lower.i = alloca i32, align 4
  %0 = add i8 %c, -48
  %or.cond.i.i = icmp ult i8 %0, 10
  %1 = add i8 %c, -65
  %or.cond1.i.i = icmp ult i8 %1, 26
  %or.cond34.i.i = or i1 %or.cond.i.i, %or.cond1.i.i
  %2 = add i8 %c, -97
  %or.cond2.i.i = icmp ult i8 %2, 26
  %or.cond35.i.i = or i1 %or.cond2.i.i, %or.cond34.i.i
  %spec.select.i.i = select i1 %or.cond35.i.i, i32 8, i32 0
  %or.cond36.i.i = or i1 %or.cond1.i.i, %or.cond2.i.i
  %3 = or i32 %spec.select.i.i, 1024
  %spec.select37.i.i = select i1 %or.cond36.i.i, i32 %3, i32 %spec.select.i.i
  %4 = or i32 %spec.select37.i.i, 512
  %.2.i.i = select i1 %or.cond2.i.i, i32 %4, i32 %spec.select37.i.i
  %5 = or i32 %.2.i.i, 256
  %.3.i.i = select i1 %or.cond1.i.i, i32 %5, i32 %.2.i.i
  %6 = or i32 %.3.i.i, 2048
  %.4.i.i = select i1 %or.cond.i.i, i32 %6, i32 %.3.i.i
  br i1 %or.cond.i.i, label %7, label %switch.early.test.i.i

switch.early.test.i.i:                            ; preds = %start
  switch i8 %c, label %bb16.i.i [
    i8 102, label %7
    i8 101, label %7
    i8 100, label %7
    i8 99, label %7
    i8 98, label %7
    i8 97, label %7
    i8 70, label %7
    i8 69, label %7
    i8 68, label %7
    i8 67, label %7
    i8 66, label %7
    i8 65, label %7
  ]

7:                                                ; preds = %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %start
  %8 = or i32 %.4.i.i, 4096
  br label %bb16.i.i

bb16.i.i:                                         ; preds = %7, %switch.early.test.i.i
  %9 = phi i32 [ %8, %7 ], [ %.3.i.i, %switch.early.test.i.i ]
  %_66.i.i = icmp ult i8 %c, 32
  %10 = icmp eq i8 %c, 127
  %or.cond12.i.i = or i1 %_66.i.i, %10
  %11 = or i32 %9, 2
  %.6.i.i = select i1 %or.cond12.i.i, i32 %11, i32 %9
  %12 = add i8 %c, -33
  %or.cond14.i.i = icmp ult i8 %12, 94
  %13 = or i32 %.6.i.i, 32768
  %.7.i.i = select i1 %or.cond14.i.i, i32 %13, i32 %.6.i.i
  switch i8 %c, label %bb29.i.i [
    i8 32, label %14
    i8 13, label %14
    i8 12, label %14
    i8 11, label %14
    i8 10, label %14
    i8 9, label %14
  ]

14:                                               ; preds = %bb16.i.i, %bb16.i.i, %bb16.i.i, %bb16.i.i, %bb16.i.i, %bb16.i.i
  %15 = or i32 %.7.i.i, 8192
  br label %bb29.i.i

bb29.i.i:                                         ; preds = %14, %bb16.i.i
  %16 = phi i32 [ %15, %14 ], [ %.7.i.i, %bb16.i.i ]
  %17 = icmp eq i8 %c, 32
  %_31.i.i = icmp eq i8 %c, 9
  %_30.0.i.i = or i1 %17, %_31.i.i
  %18 = zext i1 %_30.0.i.i to i32
  %.9.i.i = or i32 %16, %18
  %_70.i.i = icmp ugt i8 %c, 31
  %19 = icmp ne i8 %c, 127
  %or.cond19.not.i.i = and i1 %_70.i.i, %19
  br i1 %or.cond19.not.i.i, label %bb39.i.i, label %bb39.thread.i.i

bb39.i.i:                                         ; preds = %bb29.i.i
  %_37.i.i = icmp sgt i8 %c, -1
  %20 = or i32 %.9.i.i, 16384
  br i1 %_37.i.i, label %bb39.thread.i.i, label %switch.early.test.i.i.i

bb39.thread.i.i:                                  ; preds = %bb39.i.i, %bb29.i.i
  %21 = phi i32 [ %.9.i.i, %bb29.i.i ], [ %20, %bb39.i.i ]
  %or.cond.i.i.i = icmp ult i8 %12, 15
  br i1 %or.cond.i.i.i, label %23, label %switch.early.test.i.i.i

switch.early.test.i.i.i:                          ; preds = %bb39.thread.i.i, %bb39.i.i
  %22 = phi i32 [ %21, %bb39.thread.i.i ], [ %.9.i.i, %bb39.i.i ]
  switch i8 %c, label %bb6.i [
    i8 126, label %23
    i8 125, label %23
    i8 124, label %23
    i8 123, label %23
    i8 96, label %23
    i8 95, label %23
    i8 94, label %23
    i8 93, label %23
    i8 92, label %23
    i8 91, label %23
    i8 64, label %23
    i8 63, label %23
    i8 62, label %23
    i8 61, label %23
    i8 60, label %23
    i8 59, label %23
    i8 58, label %23
  ]

23:                                               ; preds = %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %bb39.thread.i.i
  %.ph.i.i = phi i32 [ %22, %switch.early.test.i.i.i ], [ %22, %switch.early.test.i.i.i ], [ %22, %switch.early.test.i.i.i ], [ %22, %switch.early.test.i.i.i ], [ %22, %switch.early.test.i.i.i ], [ %22, %switch.early.test.i.i.i ], [ %22, %switch.early.test.i.i.i ], [ %22, %switch.early.test.i.i.i ], [ %22, %switch.early.test.i.i.i ], [ %22, %switch.early.test.i.i.i ], [ %22, %switch.early.test.i.i.i ], [ %22, %switch.early.test.i.i.i ], [ %22, %switch.early.test.i.i.i ], [ %22, %switch.early.test.i.i.i ], [ %22, %switch.early.test.i.i.i ], [ %22, %switch.early.test.i.i.i ], [ %21, %bb39.thread.i.i ], [ %22, %switch.early.test.i.i.i ]
  %24 = or i32 %.ph.i.i, 4
  br label %bb6.i

cleanup.i:                                        ; preds = %bb45.i, %bb42.i, %bb39.i, %bb36.i, %bb33.i, %bb30.i, %bb27.i, %bb24.i, %bb21.i, %bb18.i, %bb15.i, %bb12.i, %bb9.i, %bb6.i
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %cleanup.body.i

cleanup.body.i:                                   ; preds = %cleanup.i.i.i.i.i.i.i.i230.i, %cleanup.i.i.i.i.i.i.i.i212.i, %cleanup.i.i.i.i.i.i.i.i194.i, %cleanup.i.i.i.i.i.i.i.i176.i, %cleanup.i.i.i.i.i.i.i.i158.i, %cleanup.i.i.i.i.i.i.i.i140.i, %cleanup.i.i.i.i.i.i.i.i122.i, %cleanup.i.i.i.i.i.i.i.i104.i, %cleanup.i.i.i.i.i.i.i.i86.i, %cleanup.i.i.i.i.i.i.i.i68.i, %cleanup.i.i.i.i.i.i.i.i50.i, %cleanup.i.i.i.i.i.i.i.i32.i, %cleanup.i.i.i.i.i.i.i.i14.i, %cleanup.i.i.i.i.i.i.i.i.i, %cleanup.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %46, %cleanup.i.i.i.i.i.i.i.i.i ], [ %69, %cleanup.i.i.i.i.i.i.i.i14.i ], [ %92, %cleanup.i.i.i.i.i.i.i.i32.i ], [ %115, %cleanup.i.i.i.i.i.i.i.i50.i ], [ %138, %cleanup.i.i.i.i.i.i.i.i68.i ], [ %161, %cleanup.i.i.i.i.i.i.i.i86.i ], [ %184, %cleanup.i.i.i.i.i.i.i.i104.i ], [ %207, %cleanup.i.i.i.i.i.i.i.i122.i ], [ %230, %cleanup.i.i.i.i.i.i.i.i140.i ], [ %253, %cleanup.i.i.i.i.i.i.i.i158.i ], [ %276, %cleanup.i.i.i.i.i.i.i.i176.i ], [ %299, %cleanup.i.i.i.i.i.i.i.i194.i ], [ %321, %cleanup.i.i.i.i.i.i.i.i212.i ], [ %25, %cleanup.i ], [ %343, %cleanup.i.i.i.i.i.i.i.i230.i ]
  %out.val1.i = load ptr, ptr %out.i, align 8, !alias.scope !2, !nonnull !5, !align !6
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$std..io..stdio..StdoutLock$GT$17hf6ce6f856a54ef4aE"(ptr nonnull %out.val1.i) #9
          to label %bb50.i unwind label %terminate.i

bb6.i:                                            ; preds = %23, %switch.early.test.i.i.i
  %26 = phi i32 [ %24, %23 ], [ %22, %switch.early.test.i.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lower.i)
  %27 = zext i8 %c to i32
  %28 = add nsw i32 %27, -65
  %or.cond.i2.i = icmp ult i32 %28, 26
  %29 = xor i32 %27, 32
  %.0.i.i = select i1 %or.cond.i2.i, i32 %29, i32 %27
  store i32 %.0.i.i, ptr %lower.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %upper.i)
  %30 = add nsw i32 %27, -97
  %or.cond.i3.i = icmp ult i32 %30, 26
  %.0.i4.i = select i1 %or.cond.i3.i, i32 %29, i32 %27
  store i32 %.0.i4.i, ptr %upper.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_12.i)
  %31 = tail call noundef nonnull align 8 ptr @_ZN3std2io5stdio6stdout17he9b6f4d8775ef0f6E()
  store ptr %31, ptr %_12.i, align 8
  %32 = call noundef nonnull align 8 ptr @_ZN3std2io5stdio6Stdout4lock17h9f862ea3b055bc56E(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %_12.i)
  store ptr %32, ptr %out.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_12.i)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_15.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_19.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_22.i)
  %33 = and i32 %26, 8
  store i32 %33, ptr %_22.i, align 4
  store ptr %_22.i, ptr %_19.i, align 8
  %34 = getelementptr inbounds { ptr, ptr }, ptr %_19.i, i64 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %34, align 8
  %35 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_15.i, i64 0, i32 1
  store ptr @alloc_600b2402f1afbc831e281265eab29287, ptr %35, align 8, !alias.scope !7, !noalias !10
  %36 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_15.i, i64 0, i32 1, i32 1
  store i64 2, ptr %36, align 8, !alias.scope !7, !noalias !10
  store ptr null, ptr %_15.i, align 8, !alias.scope !7, !noalias !10
  %37 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_15.i, i64 0, i32 2
  store ptr %_19.i, ptr %37, align 8, !alias.scope !7, !noalias !10
  %38 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_15.i, i64 0, i32 2, i32 1
  store i64 1, ptr %38, align 8, !alias.scope !7, !noalias !10
  %39 = invoke fastcc noundef ptr @_ZN3std2io5Write9write_fmt17h20eb944dadef0a1eE(ptr noalias noundef nonnull align 8 dereferenceable(8) %out.i, ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_15.i)
          to label %bb7.i unwind label %cleanup.i

bb7.i:                                            ; preds = %bb6.i
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_15.i)
  %40 = icmp ne ptr %39, null
  %41 = ptrtoint ptr %39 to i64
  %_5.i.i.i.i.i.i = and i64 %41, 3
  %switch.i.i.i.i.i = icmp eq i64 %_5.i.i.i.i.i.i, 1
  %or.cond.i5.i = and i1 %40, %switch.i.i.i.i.i
  br i1 %or.cond.i5.i, label %bb2.i1.i.i.i.i.i, label %bb9.i

bb2.i1.i.i.i.i.i:                                 ; preds = %bb7.i
  %42 = getelementptr i8, ptr %39, i64 -1
  %43 = icmp ne ptr %42, null
  call void @llvm.assume(i1 %43)
  %_4.0.i.i.i.i.i.i.i.i.i = load ptr, ptr %42, align 8, !noundef !5
  %44 = getelementptr i8, ptr %39, i64 7
  %_4.1.i.i.i.i.i.i.i.i.i = load ptr, ptr %44, align 8, !nonnull !5, !align !6, !noundef !5
  %45 = load ptr, ptr %_4.1.i.i.i.i.i.i.i.i.i, align 8, !invariant.load !5, !nonnull !5
  invoke void %45(ptr noundef %_4.0.i.i.i.i.i.i.i.i.i)
          to label %bb3.i.i.i.i.i.i.i.i.i unwind label %cleanup.i.i.i.i.i.i.i.i.i

cleanup.i.i.i.i.i.i.i.i.i:                        ; preds = %bb2.i1.i.i.i.i.i
  %46 = landingpad { ptr, i32 }
          cleanup
  %47 = load ptr, ptr %42, align 8, !nonnull !5, !noundef !5
  %48 = load ptr, ptr %44, align 8, !nonnull !5, !align !6, !noundef !5
  %49 = getelementptr i8, ptr %48, i64 8
  %.val2.i.i.i.i.i.i.i.i.i = load i64, ptr %49, align 8, !range !13
  %50 = getelementptr i8, ptr %48, i64 16
  %.val3.i.i.i.i.i.i.i.i.i = load i64, ptr %50, align 8, !range !14
  call fastcc void @_ZN5alloc5alloc8box_free17h8a1c49e7dbb7be52E(ptr noundef nonnull %47, i64 %.val2.i.i.i.i.i.i.i.i.i, i64 %.val3.i.i.i.i.i.i.i.i.i) #9
  call fastcc void @_ZN5alloc5alloc8box_free17h0e351884321d3057E(ptr noundef nonnull %42) #9
  br label %cleanup.body.i

bb3.i.i.i.i.i.i.i.i.i:                            ; preds = %bb2.i1.i.i.i.i.i
  %51 = load ptr, ptr %44, align 8, !nonnull !5, !align !6, !noundef !5
  %52 = getelementptr i8, ptr %51, i64 8
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %52, align 8, !range !13
  %53 = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i, 0
  br i1 %53, label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hd87857f6e0823052E.exit.i.i.i.i.i.i", label %bb1.i.i.i.i.i.i.i.i.i.i.i

bb1.i.i.i.i.i.i.i.i.i.i.i:                        ; preds = %bb3.i.i.i.i.i.i.i.i.i
  %54 = getelementptr i8, ptr %51, i64 16
  %.val1.i.i.i.i.i.i.i.i.i = load i64, ptr %54, align 8, !range !14
  %55 = load ptr, ptr %42, align 8, !nonnull !5, !noundef !5
  %_16.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %.val1.i.i.i.i.i.i.i.i.i, -9223372036854775807
  call void @llvm.assume(i1 %_16.i.i.i.i.i.i.i.i.i.i.i)
  call void @__rust_dealloc(ptr noundef nonnull %55, i64 noundef %.val.i.i.i.i.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i.i.i.i.i) #10
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hd87857f6e0823052E.exit.i.i.i.i.i.i"

"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hd87857f6e0823052E.exit.i.i.i.i.i.i": ; preds = %bb1.i.i.i.i.i.i.i.i.i.i.i, %bb3.i.i.i.i.i.i.i.i.i
  call void @__rust_dealloc(ptr noundef nonnull %42, i64 noundef 24, i64 noundef 8) #10
  br label %bb9.i

bb9.i:                                            ; preds = %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hd87857f6e0823052E.exit.i.i.i.i.i.i", %bb7.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_22.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_19.i)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_27.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_31.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_34.i)
  %56 = and i32 %26, 1024
  store i32 %56, ptr %_34.i, align 4
  store ptr %_34.i, ptr %_31.i, align 8
  %57 = getelementptr inbounds { ptr, ptr }, ptr %_31.i, i64 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %57, align 8
  %58 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_27.i, i64 0, i32 1
  store ptr @alloc_8db1cee8f974728134b57980aa8a814b, ptr %58, align 8, !alias.scope !15, !noalias !18
  %59 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_27.i, i64 0, i32 1, i32 1
  store i64 2, ptr %59, align 8, !alias.scope !15, !noalias !18
  store ptr null, ptr %_27.i, align 8, !alias.scope !15, !noalias !18
  %60 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_27.i, i64 0, i32 2
  store ptr %_31.i, ptr %60, align 8, !alias.scope !15, !noalias !18
  %61 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_27.i, i64 0, i32 2, i32 1
  store i64 1, ptr %61, align 8, !alias.scope !15, !noalias !18
  %62 = invoke fastcc noundef ptr @_ZN3std2io5Write9write_fmt17h20eb944dadef0a1eE(ptr noalias noundef nonnull align 8 dereferenceable(8) %out.i, ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_27.i)
          to label %bb10.i unwind label %cleanup.i

bb10.i:                                           ; preds = %bb9.i
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_27.i)
  %63 = icmp ne ptr %62, null
  %64 = ptrtoint ptr %62 to i64
  %_5.i.i.i.i.i6.i = and i64 %64, 3
  %switch.i.i.i.i7.i = icmp eq i64 %_5.i.i.i.i.i6.i, 1
  %or.cond.i8.i = and i1 %63, %switch.i.i.i.i7.i
  br i1 %or.cond.i8.i, label %bb2.i1.i.i.i.i11.i, label %bb12.i

bb2.i1.i.i.i.i11.i:                               ; preds = %bb10.i
  %65 = getelementptr i8, ptr %62, i64 -1
  %66 = icmp ne ptr %65, null
  call void @llvm.assume(i1 %66)
  %_4.0.i.i.i.i.i.i.i.i9.i = load ptr, ptr %65, align 8, !noundef !5
  %67 = getelementptr i8, ptr %62, i64 7
  %_4.1.i.i.i.i.i.i.i.i10.i = load ptr, ptr %67, align 8, !nonnull !5, !align !6, !noundef !5
  %68 = load ptr, ptr %_4.1.i.i.i.i.i.i.i.i10.i, align 8, !invariant.load !5, !nonnull !5
  invoke void %68(ptr noundef %_4.0.i.i.i.i.i.i.i.i9.i)
          to label %bb3.i.i.i.i.i.i.i.i16.i unwind label %cleanup.i.i.i.i.i.i.i.i14.i

cleanup.i.i.i.i.i.i.i.i14.i:                      ; preds = %bb2.i1.i.i.i.i11.i
  %69 = landingpad { ptr, i32 }
          cleanup
  %70 = load ptr, ptr %65, align 8, !nonnull !5, !noundef !5
  %71 = load ptr, ptr %67, align 8, !nonnull !5, !align !6, !noundef !5
  %72 = getelementptr i8, ptr %71, i64 8
  %.val2.i.i.i.i.i.i.i.i12.i = load i64, ptr %72, align 8, !range !13
  %73 = getelementptr i8, ptr %71, i64 16
  %.val3.i.i.i.i.i.i.i.i13.i = load i64, ptr %73, align 8, !range !14
  call fastcc void @_ZN5alloc5alloc8box_free17h8a1c49e7dbb7be52E(ptr noundef nonnull %70, i64 %.val2.i.i.i.i.i.i.i.i12.i, i64 %.val3.i.i.i.i.i.i.i.i13.i) #9
  call fastcc void @_ZN5alloc5alloc8box_free17h0e351884321d3057E(ptr noundef nonnull %65) #9
  br label %cleanup.body.i

bb3.i.i.i.i.i.i.i.i16.i:                          ; preds = %bb2.i1.i.i.i.i11.i
  %74 = load ptr, ptr %67, align 8, !nonnull !5, !align !6, !noundef !5
  %75 = getelementptr i8, ptr %74, i64 8
  %.val.i.i.i.i.i.i.i.i15.i = load i64, ptr %75, align 8, !range !13
  %76 = icmp eq i64 %.val.i.i.i.i.i.i.i.i15.i, 0
  br i1 %76, label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hd87857f6e0823052E.exit.i.i.i.i.i20.i", label %bb1.i.i.i.i.i.i.i.i.i.i19.i

bb1.i.i.i.i.i.i.i.i.i.i19.i:                      ; preds = %bb3.i.i.i.i.i.i.i.i16.i
  %77 = getelementptr i8, ptr %74, i64 16
  %.val1.i.i.i.i.i.i.i.i17.i = load i64, ptr %77, align 8, !range !14
  %78 = load ptr, ptr %65, align 8, !nonnull !5, !noundef !5
  %_16.i.i.i.i.i.i.i.i.i.i18.i = icmp ult i64 %.val1.i.i.i.i.i.i.i.i17.i, -9223372036854775807
  call void @llvm.assume(i1 %_16.i.i.i.i.i.i.i.i.i.i18.i)
  call void @__rust_dealloc(ptr noundef nonnull %78, i64 noundef %.val.i.i.i.i.i.i.i.i15.i, i64 noundef %.val1.i.i.i.i.i.i.i.i17.i) #10
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hd87857f6e0823052E.exit.i.i.i.i.i20.i"

"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hd87857f6e0823052E.exit.i.i.i.i.i20.i": ; preds = %bb1.i.i.i.i.i.i.i.i.i.i19.i, %bb3.i.i.i.i.i.i.i.i16.i
  call void @__rust_dealloc(ptr noundef nonnull %65, i64 noundef 24, i64 noundef 8) #10
  br label %bb12.i

bb12.i:                                           ; preds = %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hd87857f6e0823052E.exit.i.i.i.i.i20.i", %bb10.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_34.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_31.i)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_39.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_43.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_46.i)
  %79 = and i32 %26, 512
  store i32 %79, ptr %_46.i, align 4
  store ptr %_46.i, ptr %_43.i, align 8
  %80 = getelementptr inbounds { ptr, ptr }, ptr %_43.i, i64 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %80, align 8
  %81 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_39.i, i64 0, i32 1
  store ptr @alloc_c7634249b7541961025721a7ea3e19a2, ptr %81, align 8, !alias.scope !21, !noalias !24
  %82 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_39.i, i64 0, i32 1, i32 1
  store i64 2, ptr %82, align 8, !alias.scope !21, !noalias !24
  store ptr null, ptr %_39.i, align 8, !alias.scope !21, !noalias !24
  %83 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_39.i, i64 0, i32 2
  store ptr %_43.i, ptr %83, align 8, !alias.scope !21, !noalias !24
  %84 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_39.i, i64 0, i32 2, i32 1
  store i64 1, ptr %84, align 8, !alias.scope !21, !noalias !24
  %85 = invoke fastcc noundef ptr @_ZN3std2io5Write9write_fmt17h20eb944dadef0a1eE(ptr noalias noundef nonnull align 8 dereferenceable(8) %out.i, ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_39.i)
          to label %bb13.i unwind label %cleanup.i

bb13.i:                                           ; preds = %bb12.i
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_39.i)
  %86 = icmp ne ptr %85, null
  %87 = ptrtoint ptr %85 to i64
  %_5.i.i.i.i.i24.i = and i64 %87, 3
  %switch.i.i.i.i25.i = icmp eq i64 %_5.i.i.i.i.i24.i, 1
  %or.cond.i26.i = and i1 %86, %switch.i.i.i.i25.i
  br i1 %or.cond.i26.i, label %bb2.i1.i.i.i.i29.i, label %bb15.i

bb2.i1.i.i.i.i29.i:                               ; preds = %bb13.i
  %88 = getelementptr i8, ptr %85, i64 -1
  %89 = icmp ne ptr %88, null
  call void @llvm.assume(i1 %89)
  %_4.0.i.i.i.i.i.i.i.i27.i = load ptr, ptr %88, align 8, !noundef !5
  %90 = getelementptr i8, ptr %85, i64 7
  %_4.1.i.i.i.i.i.i.i.i28.i = load ptr, ptr %90, align 8, !nonnull !5, !align !6, !noundef !5
  %91 = load ptr, ptr %_4.1.i.i.i.i.i.i.i.i28.i, align 8, !invariant.load !5, !nonnull !5
  invoke void %91(ptr noundef %_4.0.i.i.i.i.i.i.i.i27.i)
          to label %bb3.i.i.i.i.i.i.i.i34.i unwind label %cleanup.i.i.i.i.i.i.i.i32.i

cleanup.i.i.i.i.i.i.i.i32.i:                      ; preds = %bb2.i1.i.i.i.i29.i
  %92 = landingpad { ptr, i32 }
          cleanup
  %93 = load ptr, ptr %88, align 8, !nonnull !5, !noundef !5
  %94 = load ptr, ptr %90, align 8, !nonnull !5, !align !6, !noundef !5
  %95 = getelementptr i8, ptr %94, i64 8
  %.val2.i.i.i.i.i.i.i.i30.i = load i64, ptr %95, align 8, !range !13
  %96 = getelementptr i8, ptr %94, i64 16
  %.val3.i.i.i.i.i.i.i.i31.i = load i64, ptr %96, align 8, !range !14
  call fastcc void @_ZN5alloc5alloc8box_free17h8a1c49e7dbb7be52E(ptr noundef nonnull %93, i64 %.val2.i.i.i.i.i.i.i.i30.i, i64 %.val3.i.i.i.i.i.i.i.i31.i) #9
  call fastcc void @_ZN5alloc5alloc8box_free17h0e351884321d3057E(ptr noundef nonnull %88) #9
  br label %cleanup.body.i

bb3.i.i.i.i.i.i.i.i34.i:                          ; preds = %bb2.i1.i.i.i.i29.i
  %97 = load ptr, ptr %90, align 8, !nonnull !5, !align !6, !noundef !5
  %98 = getelementptr i8, ptr %97, i64 8
  %.val.i.i.i.i.i.i.i.i33.i = load i64, ptr %98, align 8, !range !13
  %99 = icmp eq i64 %.val.i.i.i.i.i.i.i.i33.i, 0
  br i1 %99, label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hd87857f6e0823052E.exit.i.i.i.i.i38.i", label %bb1.i.i.i.i.i.i.i.i.i.i37.i

bb1.i.i.i.i.i.i.i.i.i.i37.i:                      ; preds = %bb3.i.i.i.i.i.i.i.i34.i
  %100 = getelementptr i8, ptr %97, i64 16
  %.val1.i.i.i.i.i.i.i.i35.i = load i64, ptr %100, align 8, !range !14
  %101 = load ptr, ptr %88, align 8, !nonnull !5, !noundef !5
  %_16.i.i.i.i.i.i.i.i.i.i36.i = icmp ult i64 %.val1.i.i.i.i.i.i.i.i35.i, -9223372036854775807
  call void @llvm.assume(i1 %_16.i.i.i.i.i.i.i.i.i.i36.i)
  call void @__rust_dealloc(ptr noundef nonnull %101, i64 noundef %.val.i.i.i.i.i.i.i.i33.i, i64 noundef %.val1.i.i.i.i.i.i.i.i35.i) #10
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hd87857f6e0823052E.exit.i.i.i.i.i38.i"

"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hd87857f6e0823052E.exit.i.i.i.i.i38.i": ; preds = %bb1.i.i.i.i.i.i.i.i.i.i37.i, %bb3.i.i.i.i.i.i.i.i34.i
  call void @__rust_dealloc(ptr noundef nonnull %88, i64 noundef 24, i64 noundef 8) #10
  br label %bb15.i

bb15.i:                                           ; preds = %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hd87857f6e0823052E.exit.i.i.i.i.i38.i", %bb13.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_46.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_43.i)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_51.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_55.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_58.i)
  %102 = and i32 %26, 256
  store i32 %102, ptr %_58.i, align 4
  store ptr %_58.i, ptr %_55.i, align 8
  %103 = getelementptr inbounds { ptr, ptr }, ptr %_55.i, i64 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %103, align 8
  %104 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_51.i, i64 0, i32 1
  store ptr @alloc_f96757438ee6b24c2026463ec7775983, ptr %104, align 8, !alias.scope !27, !noalias !30
  %105 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_51.i, i64 0, i32 1, i32 1
  store i64 2, ptr %105, align 8, !alias.scope !27, !noalias !30
  store ptr null, ptr %_51.i, align 8, !alias.scope !27, !noalias !30
  %106 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_51.i, i64 0, i32 2
  store ptr %_55.i, ptr %106, align 8, !alias.scope !27, !noalias !30
  %107 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_51.i, i64 0, i32 2, i32 1
  store i64 1, ptr %107, align 8, !alias.scope !27, !noalias !30
  %108 = invoke fastcc noundef ptr @_ZN3std2io5Write9write_fmt17h20eb944dadef0a1eE(ptr noalias noundef nonnull align 8 dereferenceable(8) %out.i, ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_51.i)
          to label %bb16.i unwind label %cleanup.i

bb16.i:                                           ; preds = %bb15.i
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_51.i)
  %109 = icmp ne ptr %108, null
  %110 = ptrtoint ptr %108 to i64
  %_5.i.i.i.i.i42.i = and i64 %110, 3
  %switch.i.i.i.i43.i = icmp eq i64 %_5.i.i.i.i.i42.i, 1
  %or.cond.i44.i = and i1 %109, %switch.i.i.i.i43.i
  br i1 %or.cond.i44.i, label %bb2.i1.i.i.i.i47.i, label %bb18.i

bb2.i1.i.i.i.i47.i:                               ; preds = %bb16.i
  %111 = getelementptr i8, ptr %108, i64 -1
  %112 = icmp ne ptr %111, null
  call void @llvm.assume(i1 %112)
  %_4.0.i.i.i.i.i.i.i.i45.i = load ptr, ptr %111, align 8, !noundef !5
  %113 = getelementptr i8, ptr %108, i64 7
  %_4.1.i.i.i.i.i.i.i.i46.i = load ptr, ptr %113, align 8, !nonnull !5, !align !6, !noundef !5
  %114 = load ptr, ptr %_4.1.i.i.i.i.i.i.i.i46.i, align 8, !invariant.load !5, !nonnull !5
  invoke void %114(ptr noundef %_4.0.i.i.i.i.i.i.i.i45.i)
          to label %bb3.i.i.i.i.i.i.i.i52.i unwind label %cleanup.i.i.i.i.i.i.i.i50.i

cleanup.i.i.i.i.i.i.i.i50.i:                      ; preds = %bb2.i1.i.i.i.i47.i
  %115 = landingpad { ptr, i32 }
          cleanup
  %116 = load ptr, ptr %111, align 8, !nonnull !5, !noundef !5
  %117 = load ptr, ptr %113, align 8, !nonnull !5, !align !6, !noundef !5
  %118 = getelementptr i8, ptr %117, i64 8
  %.val2.i.i.i.i.i.i.i.i48.i = load i64, ptr %118, align 8, !range !13
  %119 = getelementptr i8, ptr %117, i64 16
  %.val3.i.i.i.i.i.i.i.i49.i = load i64, ptr %119, align 8, !range !14
  call fastcc void @_ZN5alloc5alloc8box_free17h8a1c49e7dbb7be52E(ptr noundef nonnull %116, i64 %.val2.i.i.i.i.i.i.i.i48.i, i64 %.val3.i.i.i.i.i.i.i.i49.i) #9
  call fastcc void @_ZN5alloc5alloc8box_free17h0e351884321d3057E(ptr noundef nonnull %111) #9
  br label %cleanup.body.i

bb3.i.i.i.i.i.i.i.i52.i:                          ; preds = %bb2.i1.i.i.i.i47.i
  %120 = load ptr, ptr %113, align 8, !nonnull !5, !align !6, !noundef !5
  %121 = getelementptr i8, ptr %120, i64 8
  %.val.i.i.i.i.i.i.i.i51.i = load i64, ptr %121, align 8, !range !13
  %122 = icmp eq i64 %.val.i.i.i.i.i.i.i.i51.i, 0
  br i1 %122, label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hd87857f6e0823052E.exit.i.i.i.i.i56.i", label %bb1.i.i.i.i.i.i.i.i.i.i55.i

bb1.i.i.i.i.i.i.i.i.i.i55.i:                      ; preds = %bb3.i.i.i.i.i.i.i.i52.i
  %123 = getelementptr i8, ptr %120, i64 16
  %.val1.i.i.i.i.i.i.i.i53.i = load i64, ptr %123, align 8, !range !14
  %124 = load ptr, ptr %111, align 8, !nonnull !5, !noundef !5
  %_16.i.i.i.i.i.i.i.i.i.i54.i = icmp ult i64 %.val1.i.i.i.i.i.i.i.i53.i, -9223372036854775807
  call void @llvm.assume(i1 %_16.i.i.i.i.i.i.i.i.i.i54.i)
  call void @__rust_dealloc(ptr noundef nonnull %124, i64 noundef %.val.i.i.i.i.i.i.i.i51.i, i64 noundef %.val1.i.i.i.i.i.i.i.i53.i) #10
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hd87857f6e0823052E.exit.i.i.i.i.i56.i"

"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hd87857f6e0823052E.exit.i.i.i.i.i56.i": ; preds = %bb1.i.i.i.i.i.i.i.i.i.i55.i, %bb3.i.i.i.i.i.i.i.i52.i
  call void @__rust_dealloc(ptr noundef nonnull %111, i64 noundef 24, i64 noundef 8) #10
  br label %bb18.i

bb18.i:                                           ; preds = %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hd87857f6e0823052E.exit.i.i.i.i.i56.i", %bb16.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_58.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_55.i)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_63.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_67.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_70.i)
  %125 = and i32 %26, 2048
  store i32 %125, ptr %_70.i, align 4
  store ptr %_70.i, ptr %_67.i, align 8
  %126 = getelementptr inbounds { ptr, ptr }, ptr %_67.i, i64 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %126, align 8
  %127 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_63.i, i64 0, i32 1
  store ptr @alloc_058a672d1787f811ea5db22534146bf0, ptr %127, align 8, !alias.scope !33, !noalias !36
  %128 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_63.i, i64 0, i32 1, i32 1
  store i64 2, ptr %128, align 8, !alias.scope !33, !noalias !36
  store ptr null, ptr %_63.i, align 8, !alias.scope !33, !noalias !36
  %129 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_63.i, i64 0, i32 2
  store ptr %_67.i, ptr %129, align 8, !alias.scope !33, !noalias !36
  %130 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_63.i, i64 0, i32 2, i32 1
  store i64 1, ptr %130, align 8, !alias.scope !33, !noalias !36
  %131 = invoke fastcc noundef ptr @_ZN3std2io5Write9write_fmt17h20eb944dadef0a1eE(ptr noalias noundef nonnull align 8 dereferenceable(8) %out.i, ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_63.i)
          to label %bb19.i unwind label %cleanup.i

bb19.i:                                           ; preds = %bb18.i
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_63.i)
  %132 = icmp ne ptr %131, null
  %133 = ptrtoint ptr %131 to i64
  %_5.i.i.i.i.i60.i = and i64 %133, 3
  %switch.i.i.i.i61.i = icmp eq i64 %_5.i.i.i.i.i60.i, 1
  %or.cond.i62.i = and i1 %132, %switch.i.i.i.i61.i
  br i1 %or.cond.i62.i, label %bb2.i1.i.i.i.i65.i, label %bb21.i

bb2.i1.i.i.i.i65.i:                               ; preds = %bb19.i
  %134 = getelementptr i8, ptr %131, i64 -1
  %135 = icmp ne ptr %134, null
  call void @llvm.assume(i1 %135)
  %_4.0.i.i.i.i.i.i.i.i63.i = load ptr, ptr %134, align 8, !noundef !5
  %136 = getelementptr i8, ptr %131, i64 7
  %_4.1.i.i.i.i.i.i.i.i64.i = load ptr, ptr %136, align 8, !nonnull !5, !align !6, !noundef !5
  %137 = load ptr, ptr %_4.1.i.i.i.i.i.i.i.i64.i, align 8, !invariant.load !5, !nonnull !5
  invoke void %137(ptr noundef %_4.0.i.i.i.i.i.i.i.i63.i)
          to label %bb3.i.i.i.i.i.i.i.i70.i unwind label %cleanup.i.i.i.i.i.i.i.i68.i

cleanup.i.i.i.i.i.i.i.i68.i:                      ; preds = %bb2.i1.i.i.i.i65.i
  %138 = landingpad { ptr, i32 }
          cleanup
  %139 = load ptr, ptr %134, align 8, !nonnull !5, !noundef !5
  %140 = load ptr, ptr %136, align 8, !nonnull !5, !align !6, !noundef !5
  %141 = getelementptr i8, ptr %140, i64 8
  %.val2.i.i.i.i.i.i.i.i66.i = load i64, ptr %141, align 8, !range !13
  %142 = getelementptr i8, ptr %140, i64 16
  %.val3.i.i.i.i.i.i.i.i67.i = load i64, ptr %142, align 8, !range !14
  call fastcc void @_ZN5alloc5alloc8box_free17h8a1c49e7dbb7be52E(ptr noundef nonnull %139, i64 %.val2.i.i.i.i.i.i.i.i66.i, i64 %.val3.i.i.i.i.i.i.i.i67.i) #9
  call fastcc void @_ZN5alloc5alloc8box_free17h0e351884321d3057E(ptr noundef nonnull %134) #9
  br label %cleanup.body.i

bb3.i.i.i.i.i.i.i.i70.i:                          ; preds = %bb2.i1.i.i.i.i65.i
  %143 = load ptr, ptr %136, align 8, !nonnull !5, !align !6, !noundef !5
  %144 = getelementptr i8, ptr %143, i64 8
  %.val.i.i.i.i.i.i.i.i69.i = load i64, ptr %144, align 8, !range !13
  %145 = icmp eq i64 %.val.i.i.i.i.i.i.i.i69.i, 0
  br i1 %145, label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hd87857f6e0823052E.exit.i.i.i.i.i74.i", label %bb1.i.i.i.i.i.i.i.i.i.i73.i

bb1.i.i.i.i.i.i.i.i.i.i73.i:                      ; preds = %bb3.i.i.i.i.i.i.i.i70.i
  %146 = getelementptr i8, ptr %143, i64 16
  %.val1.i.i.i.i.i.i.i.i71.i = load i64, ptr %146, align 8, !range !14
  %147 = load ptr, ptr %134, align 8, !nonnull !5, !noundef !5
  %_16.i.i.i.i.i.i.i.i.i.i72.i = icmp ult i64 %.val1.i.i.i.i.i.i.i.i71.i, -9223372036854775807
  call void @llvm.assume(i1 %_16.i.i.i.i.i.i.i.i.i.i72.i)
  call void @__rust_dealloc(ptr noundef nonnull %147, i64 noundef %.val.i.i.i.i.i.i.i.i69.i, i64 noundef %.val1.i.i.i.i.i.i.i.i71.i) #10
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hd87857f6e0823052E.exit.i.i.i.i.i74.i"

"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hd87857f6e0823052E.exit.i.i.i.i.i74.i": ; preds = %bb1.i.i.i.i.i.i.i.i.i.i73.i, %bb3.i.i.i.i.i.i.i.i70.i
  call void @__rust_dealloc(ptr noundef nonnull %134, i64 noundef 24, i64 noundef 8) #10
  br label %bb21.i

bb21.i:                                           ; preds = %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hd87857f6e0823052E.exit.i.i.i.i.i74.i", %bb19.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_70.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_67.i)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_75.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_79.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_82.i)
  %148 = and i32 %26, 4096
  store i32 %148, ptr %_82.i, align 4
  store ptr %_82.i, ptr %_79.i, align 8
  %149 = getelementptr inbounds { ptr, ptr }, ptr %_79.i, i64 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %149, align 8
  %150 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_75.i, i64 0, i32 1
  store ptr @alloc_9c9287e17de7198e969b558701c83d42, ptr %150, align 8, !alias.scope !39, !noalias !42
  %151 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_75.i, i64 0, i32 1, i32 1
  store i64 2, ptr %151, align 8, !alias.scope !39, !noalias !42
  store ptr null, ptr %_75.i, align 8, !alias.scope !39, !noalias !42
  %152 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_75.i, i64 0, i32 2
  store ptr %_79.i, ptr %152, align 8, !alias.scope !39, !noalias !42
  %153 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_75.i, i64 0, i32 2, i32 1
  store i64 1, ptr %153, align 8, !alias.scope !39, !noalias !42
  %154 = invoke fastcc noundef ptr @_ZN3std2io5Write9write_fmt17h20eb944dadef0a1eE(ptr noalias noundef nonnull align 8 dereferenceable(8) %out.i, ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_75.i)
          to label %bb22.i unwind label %cleanup.i

bb22.i:                                           ; preds = %bb21.i
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_75.i)
  %155 = icmp ne ptr %154, null
  %156 = ptrtoint ptr %154 to i64
  %_5.i.i.i.i.i78.i = and i64 %156, 3
  %switch.i.i.i.i79.i = icmp eq i64 %_5.i.i.i.i.i78.i, 1
  %or.cond.i80.i = and i1 %155, %switch.i.i.i.i79.i
  br i1 %or.cond.i80.i, label %bb2.i1.i.i.i.i83.i, label %bb24.i

bb2.i1.i.i.i.i83.i:                               ; preds = %bb22.i
  %157 = getelementptr i8, ptr %154, i64 -1
  %158 = icmp ne ptr %157, null
  call void @llvm.assume(i1 %158)
  %_4.0.i.i.i.i.i.i.i.i81.i = load ptr, ptr %157, align 8, !noundef !5
  %159 = getelementptr i8, ptr %154, i64 7
  %_4.1.i.i.i.i.i.i.i.i82.i = load ptr, ptr %159, align 8, !nonnull !5, !align !6, !noundef !5
  %160 = load ptr, ptr %_4.1.i.i.i.i.i.i.i.i82.i, align 8, !invariant.load !5, !nonnull !5
  invoke void %160(ptr noundef %_4.0.i.i.i.i.i.i.i.i81.i)
          to label %bb3.i.i.i.i.i.i.i.i88.i unwind label %cleanup.i.i.i.i.i.i.i.i86.i

cleanup.i.i.i.i.i.i.i.i86.i:                      ; preds = %bb2.i1.i.i.i.i83.i
  %161 = landingpad { ptr, i32 }
          cleanup
  %162 = load ptr, ptr %157, align 8, !nonnull !5, !noundef !5
  %163 = load ptr, ptr %159, align 8, !nonnull !5, !align !6, !noundef !5
  %164 = getelementptr i8, ptr %163, i64 8
  %.val2.i.i.i.i.i.i.i.i84.i = load i64, ptr %164, align 8, !range !13
  %165 = getelementptr i8, ptr %163, i64 16
  %.val3.i.i.i.i.i.i.i.i85.i = load i64, ptr %165, align 8, !range !14
  call fastcc void @_ZN5alloc5alloc8box_free17h8a1c49e7dbb7be52E(ptr noundef nonnull %162, i64 %.val2.i.i.i.i.i.i.i.i84.i, i64 %.val3.i.i.i.i.i.i.i.i85.i) #9
  call fastcc void @_ZN5alloc5alloc8box_free17h0e351884321d3057E(ptr noundef nonnull %157) #9
  br label %cleanup.body.i

bb3.i.i.i.i.i.i.i.i88.i:                          ; preds = %bb2.i1.i.i.i.i83.i
  %166 = load ptr, ptr %159, align 8, !nonnull !5, !align !6, !noundef !5
  %167 = getelementptr i8, ptr %166, i64 8
  %.val.i.i.i.i.i.i.i.i87.i = load i64, ptr %167, align 8, !range !13
  %168 = icmp eq i64 %.val.i.i.i.i.i.i.i.i87.i, 0
  br i1 %168, label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hd87857f6e0823052E.exit.i.i.i.i.i92.i", label %bb1.i.i.i.i.i.i.i.i.i.i91.i

bb1.i.i.i.i.i.i.i.i.i.i91.i:                      ; preds = %bb3.i.i.i.i.i.i.i.i88.i
  %169 = getelementptr i8, ptr %166, i64 16
  %.val1.i.i.i.i.i.i.i.i89.i = load i64, ptr %169, align 8, !range !14
  %170 = load ptr, ptr %157, align 8, !nonnull !5, !noundef !5
  %_16.i.i.i.i.i.i.i.i.i.i90.i = icmp ult i64 %.val1.i.i.i.i.i.i.i.i89.i, -9223372036854775807
  call void @llvm.assume(i1 %_16.i.i.i.i.i.i.i.i.i.i90.i)
  call void @__rust_dealloc(ptr noundef nonnull %170, i64 noundef %.val.i.i.i.i.i.i.i.i87.i, i64 noundef %.val1.i.i.i.i.i.i.i.i89.i) #10
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hd87857f6e0823052E.exit.i.i.i.i.i92.i"

"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hd87857f6e0823052E.exit.i.i.i.i.i92.i": ; preds = %bb1.i.i.i.i.i.i.i.i.i.i91.i, %bb3.i.i.i.i.i.i.i.i88.i
  call void @__rust_dealloc(ptr noundef nonnull %157, i64 noundef 24, i64 noundef 8) #10
  br label %bb24.i

bb24.i:                                           ; preds = %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hd87857f6e0823052E.exit.i.i.i.i.i92.i", %bb22.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_82.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_79.i)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_87.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_91.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_94.i)
  %171 = and i32 %26, 2
  store i32 %171, ptr %_94.i, align 4
  store ptr %_94.i, ptr %_91.i, align 8
  %172 = getelementptr inbounds { ptr, ptr }, ptr %_91.i, i64 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %172, align 8
  %173 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_87.i, i64 0, i32 1
  store ptr @alloc_1f2f6554c2383acfd860b695b90e6604, ptr %173, align 8, !alias.scope !45, !noalias !48
  %174 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_87.i, i64 0, i32 1, i32 1
  store i64 2, ptr %174, align 8, !alias.scope !45, !noalias !48
  store ptr null, ptr %_87.i, align 8, !alias.scope !45, !noalias !48
  %175 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_87.i, i64 0, i32 2
  store ptr %_91.i, ptr %175, align 8, !alias.scope !45, !noalias !48
  %176 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_87.i, i64 0, i32 2, i32 1
  store i64 1, ptr %176, align 8, !alias.scope !45, !noalias !48
  %177 = invoke fastcc noundef ptr @_ZN3std2io5Write9write_fmt17h20eb944dadef0a1eE(ptr noalias noundef nonnull align 8 dereferenceable(8) %out.i, ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_87.i)
          to label %bb25.i unwind label %cleanup.i

bb25.i:                                           ; preds = %bb24.i
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_87.i)
  %178 = icmp ne ptr %177, null
  %179 = ptrtoint ptr %177 to i64
  %_5.i.i.i.i.i96.i = and i64 %179, 3
  %switch.i.i.i.i97.i = icmp eq i64 %_5.i.i.i.i.i96.i, 1
  %or.cond.i98.i = and i1 %178, %switch.i.i.i.i97.i
  br i1 %or.cond.i98.i, label %bb2.i1.i.i.i.i101.i, label %bb27.i

bb2.i1.i.i.i.i101.i:                              ; preds = %bb25.i
  %180 = getelementptr i8, ptr %177, i64 -1
  %181 = icmp ne ptr %180, null
  call void @llvm.assume(i1 %181)
  %_4.0.i.i.i.i.i.i.i.i99.i = load ptr, ptr %180, align 8, !noundef !5
  %182 = getelementptr i8, ptr %177, i64 7
  %_4.1.i.i.i.i.i.i.i.i100.i = load ptr, ptr %182, align 8, !nonnull !5, !align !6, !noundef !5
  %183 = load ptr, ptr %_4.1.i.i.i.i.i.i.i.i100.i, align 8, !invariant.load !5, !nonnull !5
  invoke void %183(ptr noundef %_4.0.i.i.i.i.i.i.i.i99.i)
          to label %bb3.i.i.i.i.i.i.i.i106.i unwind label %cleanup.i.i.i.i.i.i.i.i104.i

cleanup.i.i.i.i.i.i.i.i104.i:                     ; preds = %bb2.i1.i.i.i.i101.i
  %184 = landingpad { ptr, i32 }
          cleanup
  %185 = load ptr, ptr %180, align 8, !nonnull !5, !noundef !5
  %186 = load ptr, ptr %182, align 8, !nonnull !5, !align !6, !noundef !5
  %187 = getelementptr i8, ptr %186, i64 8
  %.val2.i.i.i.i.i.i.i.i102.i = load i64, ptr %187, align 8, !range !13
  %188 = getelementptr i8, ptr %186, i64 16
  %.val3.i.i.i.i.i.i.i.i103.i = load i64, ptr %188, align 8, !range !14
  call fastcc void @_ZN5alloc5alloc8box_free17h8a1c49e7dbb7be52E(ptr noundef nonnull %185, i64 %.val2.i.i.i.i.i.i.i.i102.i, i64 %.val3.i.i.i.i.i.i.i.i103.i) #9
  call fastcc void @_ZN5alloc5alloc8box_free17h0e351884321d3057E(ptr noundef nonnull %180) #9
  br label %cleanup.body.i

bb3.i.i.i.i.i.i.i.i106.i:                         ; preds = %bb2.i1.i.i.i.i101.i
  %189 = load ptr, ptr %182, align 8, !nonnull !5, !align !6, !noundef !5
  %190 = getelementptr i8, ptr %189, i64 8
  %.val.i.i.i.i.i.i.i.i105.i = load i64, ptr %190, align 8, !range !13
  %191 = icmp eq i64 %.val.i.i.i.i.i.i.i.i105.i, 0
  br i1 %191, label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hd87857f6e0823052E.exit.i.i.i.i.i110.i", label %bb1.i.i.i.i.i.i.i.i.i.i109.i

bb1.i.i.i.i.i.i.i.i.i.i109.i:                     ; preds = %bb3.i.i.i.i.i.i.i.i106.i
  %192 = getelementptr i8, ptr %189, i64 16
  %.val1.i.i.i.i.i.i.i.i107.i = load i64, ptr %192, align 8, !range !14
  %193 = load ptr, ptr %180, align 8, !nonnull !5, !noundef !5
  %_16.i.i.i.i.i.i.i.i.i.i108.i = icmp ult i64 %.val1.i.i.i.i.i.i.i.i107.i, -9223372036854775807
  call void @llvm.assume(i1 %_16.i.i.i.i.i.i.i.i.i.i108.i)
  call void @__rust_dealloc(ptr noundef nonnull %193, i64 noundef %.val.i.i.i.i.i.i.i.i105.i, i64 noundef %.val1.i.i.i.i.i.i.i.i107.i) #10
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hd87857f6e0823052E.exit.i.i.i.i.i110.i"

"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hd87857f6e0823052E.exit.i.i.i.i.i110.i": ; preds = %bb1.i.i.i.i.i.i.i.i.i.i109.i, %bb3.i.i.i.i.i.i.i.i106.i
  call void @__rust_dealloc(ptr noundef nonnull %180, i64 noundef 24, i64 noundef 8) #10
  br label %bb27.i

bb27.i:                                           ; preds = %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hd87857f6e0823052E.exit.i.i.i.i.i110.i", %bb25.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_94.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_91.i)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_99.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_103.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_106.i)
  %194 = and i32 %26, 32768
  store i32 %194, ptr %_106.i, align 4
  store ptr %_106.i, ptr %_103.i, align 8
  %195 = getelementptr inbounds { ptr, ptr }, ptr %_103.i, i64 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %195, align 8
  %196 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_99.i, i64 0, i32 1
  store ptr @alloc_4c3ed02e960ac03d90e45c8e9b94d737, ptr %196, align 8, !alias.scope !51, !noalias !54
  %197 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_99.i, i64 0, i32 1, i32 1
  store i64 2, ptr %197, align 8, !alias.scope !51, !noalias !54
  store ptr null, ptr %_99.i, align 8, !alias.scope !51, !noalias !54
  %198 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_99.i, i64 0, i32 2
  store ptr %_103.i, ptr %198, align 8, !alias.scope !51, !noalias !54
  %199 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_99.i, i64 0, i32 2, i32 1
  store i64 1, ptr %199, align 8, !alias.scope !51, !noalias !54
  %200 = invoke fastcc noundef ptr @_ZN3std2io5Write9write_fmt17h20eb944dadef0a1eE(ptr noalias noundef nonnull align 8 dereferenceable(8) %out.i, ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_99.i)
          to label %bb28.i unwind label %cleanup.i

bb28.i:                                           ; preds = %bb27.i
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_99.i)
  %201 = icmp ne ptr %200, null
  %202 = ptrtoint ptr %200 to i64
  %_5.i.i.i.i.i114.i = and i64 %202, 3
  %switch.i.i.i.i115.i = icmp eq i64 %_5.i.i.i.i.i114.i, 1
  %or.cond.i116.i = and i1 %201, %switch.i.i.i.i115.i
  br i1 %or.cond.i116.i, label %bb2.i1.i.i.i.i119.i, label %bb30.i

bb2.i1.i.i.i.i119.i:                              ; preds = %bb28.i
  %203 = getelementptr i8, ptr %200, i64 -1
  %204 = icmp ne ptr %203, null
  call void @llvm.assume(i1 %204)
  %_4.0.i.i.i.i.i.i.i.i117.i = load ptr, ptr %203, align 8, !noundef !5
  %205 = getelementptr i8, ptr %200, i64 7
  %_4.1.i.i.i.i.i.i.i.i118.i = load ptr, ptr %205, align 8, !nonnull !5, !align !6, !noundef !5
  %206 = load ptr, ptr %_4.1.i.i.i.i.i.i.i.i118.i, align 8, !invariant.load !5, !nonnull !5
  invoke void %206(ptr noundef %_4.0.i.i.i.i.i.i.i.i117.i)
          to label %bb3.i.i.i.i.i.i.i.i124.i unwind label %cleanup.i.i.i.i.i.i.i.i122.i

cleanup.i.i.i.i.i.i.i.i122.i:                     ; preds = %bb2.i1.i.i.i.i119.i
  %207 = landingpad { ptr, i32 }
          cleanup
  %208 = load ptr, ptr %203, align 8, !nonnull !5, !noundef !5
  %209 = load ptr, ptr %205, align 8, !nonnull !5, !align !6, !noundef !5
  %210 = getelementptr i8, ptr %209, i64 8
  %.val2.i.i.i.i.i.i.i.i120.i = load i64, ptr %210, align 8, !range !13
  %211 = getelementptr i8, ptr %209, i64 16
  %.val3.i.i.i.i.i.i.i.i121.i = load i64, ptr %211, align 8, !range !14
  call fastcc void @_ZN5alloc5alloc8box_free17h8a1c49e7dbb7be52E(ptr noundef nonnull %208, i64 %.val2.i.i.i.i.i.i.i.i120.i, i64 %.val3.i.i.i.i.i.i.i.i121.i) #9
  call fastcc void @_ZN5alloc5alloc8box_free17h0e351884321d3057E(ptr noundef nonnull %203) #9
  br label %cleanup.body.i

bb3.i.i.i.i.i.i.i.i124.i:                         ; preds = %bb2.i1.i.i.i.i119.i
  %212 = load ptr, ptr %205, align 8, !nonnull !5, !align !6, !noundef !5
  %213 = getelementptr i8, ptr %212, i64 8
  %.val.i.i.i.i.i.i.i.i123.i = load i64, ptr %213, align 8, !range !13
  %214 = icmp eq i64 %.val.i.i.i.i.i.i.i.i123.i, 0
  br i1 %214, label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hd87857f6e0823052E.exit.i.i.i.i.i128.i", label %bb1.i.i.i.i.i.i.i.i.i.i127.i

bb1.i.i.i.i.i.i.i.i.i.i127.i:                     ; preds = %bb3.i.i.i.i.i.i.i.i124.i
  %215 = getelementptr i8, ptr %212, i64 16
  %.val1.i.i.i.i.i.i.i.i125.i = load i64, ptr %215, align 8, !range !14
  %216 = load ptr, ptr %203, align 8, !nonnull !5, !noundef !5
  %_16.i.i.i.i.i.i.i.i.i.i126.i = icmp ult i64 %.val1.i.i.i.i.i.i.i.i125.i, -9223372036854775807
  call void @llvm.assume(i1 %_16.i.i.i.i.i.i.i.i.i.i126.i)
  call void @__rust_dealloc(ptr noundef nonnull %216, i64 noundef %.val.i.i.i.i.i.i.i.i123.i, i64 noundef %.val1.i.i.i.i.i.i.i.i125.i) #10
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hd87857f6e0823052E.exit.i.i.i.i.i128.i"

"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hd87857f6e0823052E.exit.i.i.i.i.i128.i": ; preds = %bb1.i.i.i.i.i.i.i.i.i.i127.i, %bb3.i.i.i.i.i.i.i.i124.i
  call void @__rust_dealloc(ptr noundef nonnull %203, i64 noundef 24, i64 noundef 8) #10
  br label %bb30.i

bb30.i:                                           ; preds = %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hd87857f6e0823052E.exit.i.i.i.i.i128.i", %bb28.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_106.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_103.i)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_111.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_115.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_118.i)
  %217 = and i32 %26, 8192
  store i32 %217, ptr %_118.i, align 4
  store ptr %_118.i, ptr %_115.i, align 8
  %218 = getelementptr inbounds { ptr, ptr }, ptr %_115.i, i64 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %218, align 8
  %219 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_111.i, i64 0, i32 1
  store ptr @alloc_d2287bc38ff6a250864a020d267786c5, ptr %219, align 8, !alias.scope !57, !noalias !60
  %220 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_111.i, i64 0, i32 1, i32 1
  store i64 2, ptr %220, align 8, !alias.scope !57, !noalias !60
  store ptr null, ptr %_111.i, align 8, !alias.scope !57, !noalias !60
  %221 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_111.i, i64 0, i32 2
  store ptr %_115.i, ptr %221, align 8, !alias.scope !57, !noalias !60
  %222 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_111.i, i64 0, i32 2, i32 1
  store i64 1, ptr %222, align 8, !alias.scope !57, !noalias !60
  %223 = invoke fastcc noundef ptr @_ZN3std2io5Write9write_fmt17h20eb944dadef0a1eE(ptr noalias noundef nonnull align 8 dereferenceable(8) %out.i, ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_111.i)
          to label %bb31.i unwind label %cleanup.i

bb31.i:                                           ; preds = %bb30.i
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_111.i)
  %224 = icmp ne ptr %223, null
  %225 = ptrtoint ptr %223 to i64
  %_5.i.i.i.i.i132.i = and i64 %225, 3
  %switch.i.i.i.i133.i = icmp eq i64 %_5.i.i.i.i.i132.i, 1
  %or.cond.i134.i = and i1 %224, %switch.i.i.i.i133.i
  br i1 %or.cond.i134.i, label %bb2.i1.i.i.i.i137.i, label %bb33.i

bb2.i1.i.i.i.i137.i:                              ; preds = %bb31.i
  %226 = getelementptr i8, ptr %223, i64 -1
  %227 = icmp ne ptr %226, null
  call void @llvm.assume(i1 %227)
  %_4.0.i.i.i.i.i.i.i.i135.i = load ptr, ptr %226, align 8, !noundef !5
  %228 = getelementptr i8, ptr %223, i64 7
  %_4.1.i.i.i.i.i.i.i.i136.i = load ptr, ptr %228, align 8, !nonnull !5, !align !6, !noundef !5
  %229 = load ptr, ptr %_4.1.i.i.i.i.i.i.i.i136.i, align 8, !invariant.load !5, !nonnull !5
  invoke void %229(ptr noundef %_4.0.i.i.i.i.i.i.i.i135.i)
          to label %bb3.i.i.i.i.i.i.i.i142.i unwind label %cleanup.i.i.i.i.i.i.i.i140.i

cleanup.i.i.i.i.i.i.i.i140.i:                     ; preds = %bb2.i1.i.i.i.i137.i
  %230 = landingpad { ptr, i32 }
          cleanup
  %231 = load ptr, ptr %226, align 8, !nonnull !5, !noundef !5
  %232 = load ptr, ptr %228, align 8, !nonnull !5, !align !6, !noundef !5
  %233 = getelementptr i8, ptr %232, i64 8
  %.val2.i.i.i.i.i.i.i.i138.i = load i64, ptr %233, align 8, !range !13
  %234 = getelementptr i8, ptr %232, i64 16
  %.val3.i.i.i.i.i.i.i.i139.i = load i64, ptr %234, align 8, !range !14
  call fastcc void @_ZN5alloc5alloc8box_free17h8a1c49e7dbb7be52E(ptr noundef nonnull %231, i64 %.val2.i.i.i.i.i.i.i.i138.i, i64 %.val3.i.i.i.i.i.i.i.i139.i) #9
  call fastcc void @_ZN5alloc5alloc8box_free17h0e351884321d3057E(ptr noundef nonnull %226) #9
  br label %cleanup.body.i

bb3.i.i.i.i.i.i.i.i142.i:                         ; preds = %bb2.i1.i.i.i.i137.i
  %235 = load ptr, ptr %228, align 8, !nonnull !5, !align !6, !noundef !5
  %236 = getelementptr i8, ptr %235, i64 8
  %.val.i.i.i.i.i.i.i.i141.i = load i64, ptr %236, align 8, !range !13
  %237 = icmp eq i64 %.val.i.i.i.i.i.i.i.i141.i, 0
  br i1 %237, label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hd87857f6e0823052E.exit.i.i.i.i.i146.i", label %bb1.i.i.i.i.i.i.i.i.i.i145.i

bb1.i.i.i.i.i.i.i.i.i.i145.i:                     ; preds = %bb3.i.i.i.i.i.i.i.i142.i
  %238 = getelementptr i8, ptr %235, i64 16
  %.val1.i.i.i.i.i.i.i.i143.i = load i64, ptr %238, align 8, !range !14
  %239 = load ptr, ptr %226, align 8, !nonnull !5, !noundef !5
  %_16.i.i.i.i.i.i.i.i.i.i144.i = icmp ult i64 %.val1.i.i.i.i.i.i.i.i143.i, -9223372036854775807
  call void @llvm.assume(i1 %_16.i.i.i.i.i.i.i.i.i.i144.i)
  call void @__rust_dealloc(ptr noundef nonnull %239, i64 noundef %.val.i.i.i.i.i.i.i.i141.i, i64 noundef %.val1.i.i.i.i.i.i.i.i143.i) #10
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hd87857f6e0823052E.exit.i.i.i.i.i146.i"

"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hd87857f6e0823052E.exit.i.i.i.i.i146.i": ; preds = %bb1.i.i.i.i.i.i.i.i.i.i145.i, %bb3.i.i.i.i.i.i.i.i142.i
  call void @__rust_dealloc(ptr noundef nonnull %226, i64 noundef 24, i64 noundef 8) #10
  br label %bb33.i

bb33.i:                                           ; preds = %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hd87857f6e0823052E.exit.i.i.i.i.i146.i", %bb31.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_118.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_115.i)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_123.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_127.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_130.i)
  %240 = and i32 %26, 1
  store i32 %240, ptr %_130.i, align 4
  store ptr %_130.i, ptr %_127.i, align 8
  %241 = getelementptr inbounds { ptr, ptr }, ptr %_127.i, i64 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %241, align 8
  %242 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_123.i, i64 0, i32 1
  store ptr @alloc_ef569ffcb25de0165ae561259b184c76, ptr %242, align 8, !alias.scope !63, !noalias !66
  %243 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_123.i, i64 0, i32 1, i32 1
  store i64 2, ptr %243, align 8, !alias.scope !63, !noalias !66
  store ptr null, ptr %_123.i, align 8, !alias.scope !63, !noalias !66
  %244 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_123.i, i64 0, i32 2
  store ptr %_127.i, ptr %244, align 8, !alias.scope !63, !noalias !66
  %245 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_123.i, i64 0, i32 2, i32 1
  store i64 1, ptr %245, align 8, !alias.scope !63, !noalias !66
  %246 = invoke fastcc noundef ptr @_ZN3std2io5Write9write_fmt17h20eb944dadef0a1eE(ptr noalias noundef nonnull align 8 dereferenceable(8) %out.i, ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_123.i)
          to label %bb34.i unwind label %cleanup.i

bb34.i:                                           ; preds = %bb33.i
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_123.i)
  %247 = icmp ne ptr %246, null
  %248 = ptrtoint ptr %246 to i64
  %_5.i.i.i.i.i150.i = and i64 %248, 3
  %switch.i.i.i.i151.i = icmp eq i64 %_5.i.i.i.i.i150.i, 1
  %or.cond.i152.i = and i1 %247, %switch.i.i.i.i151.i
  br i1 %or.cond.i152.i, label %bb2.i1.i.i.i.i155.i, label %bb36.i

bb2.i1.i.i.i.i155.i:                              ; preds = %bb34.i
  %249 = getelementptr i8, ptr %246, i64 -1
  %250 = icmp ne ptr %249, null
  call void @llvm.assume(i1 %250)
  %_4.0.i.i.i.i.i.i.i.i153.i = load ptr, ptr %249, align 8, !noundef !5
  %251 = getelementptr i8, ptr %246, i64 7
  %_4.1.i.i.i.i.i.i.i.i154.i = load ptr, ptr %251, align 8, !nonnull !5, !align !6, !noundef !5
  %252 = load ptr, ptr %_4.1.i.i.i.i.i.i.i.i154.i, align 8, !invariant.load !5, !nonnull !5
  invoke void %252(ptr noundef %_4.0.i.i.i.i.i.i.i.i153.i)
          to label %bb3.i.i.i.i.i.i.i.i160.i unwind label %cleanup.i.i.i.i.i.i.i.i158.i

cleanup.i.i.i.i.i.i.i.i158.i:                     ; preds = %bb2.i1.i.i.i.i155.i
  %253 = landingpad { ptr, i32 }
          cleanup
  %254 = load ptr, ptr %249, align 8, !nonnull !5, !noundef !5
  %255 = load ptr, ptr %251, align 8, !nonnull !5, !align !6, !noundef !5
  %256 = getelementptr i8, ptr %255, i64 8
  %.val2.i.i.i.i.i.i.i.i156.i = load i64, ptr %256, align 8, !range !13
  %257 = getelementptr i8, ptr %255, i64 16
  %.val3.i.i.i.i.i.i.i.i157.i = load i64, ptr %257, align 8, !range !14
  call fastcc void @_ZN5alloc5alloc8box_free17h8a1c49e7dbb7be52E(ptr noundef nonnull %254, i64 %.val2.i.i.i.i.i.i.i.i156.i, i64 %.val3.i.i.i.i.i.i.i.i157.i) #9
  call fastcc void @_ZN5alloc5alloc8box_free17h0e351884321d3057E(ptr noundef nonnull %249) #9
  br label %cleanup.body.i

bb3.i.i.i.i.i.i.i.i160.i:                         ; preds = %bb2.i1.i.i.i.i155.i
  %258 = load ptr, ptr %251, align 8, !nonnull !5, !align !6, !noundef !5
  %259 = getelementptr i8, ptr %258, i64 8
  %.val.i.i.i.i.i.i.i.i159.i = load i64, ptr %259, align 8, !range !13
  %260 = icmp eq i64 %.val.i.i.i.i.i.i.i.i159.i, 0
  br i1 %260, label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hd87857f6e0823052E.exit.i.i.i.i.i164.i", label %bb1.i.i.i.i.i.i.i.i.i.i163.i

bb1.i.i.i.i.i.i.i.i.i.i163.i:                     ; preds = %bb3.i.i.i.i.i.i.i.i160.i
  %261 = getelementptr i8, ptr %258, i64 16
  %.val1.i.i.i.i.i.i.i.i161.i = load i64, ptr %261, align 8, !range !14
  %262 = load ptr, ptr %249, align 8, !nonnull !5, !noundef !5
  %_16.i.i.i.i.i.i.i.i.i.i162.i = icmp ult i64 %.val1.i.i.i.i.i.i.i.i161.i, -9223372036854775807
  call void @llvm.assume(i1 %_16.i.i.i.i.i.i.i.i.i.i162.i)
  call void @__rust_dealloc(ptr noundef nonnull %262, i64 noundef %.val.i.i.i.i.i.i.i.i159.i, i64 noundef %.val1.i.i.i.i.i.i.i.i161.i) #10
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hd87857f6e0823052E.exit.i.i.i.i.i164.i"

"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hd87857f6e0823052E.exit.i.i.i.i.i164.i": ; preds = %bb1.i.i.i.i.i.i.i.i.i.i163.i, %bb3.i.i.i.i.i.i.i.i160.i
  call void @__rust_dealloc(ptr noundef nonnull %249, i64 noundef 24, i64 noundef 8) #10
  br label %bb36.i

bb36.i:                                           ; preds = %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hd87857f6e0823052E.exit.i.i.i.i.i164.i", %bb34.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_130.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_127.i)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_135.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_139.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_142.i)
  %263 = and i32 %26, 16384
  store i32 %263, ptr %_142.i, align 4
  store ptr %_142.i, ptr %_139.i, align 8
  %264 = getelementptr inbounds { ptr, ptr }, ptr %_139.i, i64 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %264, align 8
  %265 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_135.i, i64 0, i32 1
  store ptr @alloc_0fef3d11b201f05f4abeeb45b929d766, ptr %265, align 8, !alias.scope !69, !noalias !72
  %266 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_135.i, i64 0, i32 1, i32 1
  store i64 2, ptr %266, align 8, !alias.scope !69, !noalias !72
  store ptr null, ptr %_135.i, align 8, !alias.scope !69, !noalias !72
  %267 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_135.i, i64 0, i32 2
  store ptr %_139.i, ptr %267, align 8, !alias.scope !69, !noalias !72
  %268 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_135.i, i64 0, i32 2, i32 1
  store i64 1, ptr %268, align 8, !alias.scope !69, !noalias !72
  %269 = invoke fastcc noundef ptr @_ZN3std2io5Write9write_fmt17h20eb944dadef0a1eE(ptr noalias noundef nonnull align 8 dereferenceable(8) %out.i, ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_135.i)
          to label %bb37.i unwind label %cleanup.i

bb37.i:                                           ; preds = %bb36.i
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_135.i)
  %270 = icmp ne ptr %269, null
  %271 = ptrtoint ptr %269 to i64
  %_5.i.i.i.i.i168.i = and i64 %271, 3
  %switch.i.i.i.i169.i = icmp eq i64 %_5.i.i.i.i.i168.i, 1
  %or.cond.i170.i = and i1 %270, %switch.i.i.i.i169.i
  br i1 %or.cond.i170.i, label %bb2.i1.i.i.i.i173.i, label %bb39.i

bb2.i1.i.i.i.i173.i:                              ; preds = %bb37.i
  %272 = getelementptr i8, ptr %269, i64 -1
  %273 = icmp ne ptr %272, null
  call void @llvm.assume(i1 %273)
  %_4.0.i.i.i.i.i.i.i.i171.i = load ptr, ptr %272, align 8, !noundef !5
  %274 = getelementptr i8, ptr %269, i64 7
  %_4.1.i.i.i.i.i.i.i.i172.i = load ptr, ptr %274, align 8, !nonnull !5, !align !6, !noundef !5
  %275 = load ptr, ptr %_4.1.i.i.i.i.i.i.i.i172.i, align 8, !invariant.load !5, !nonnull !5
  invoke void %275(ptr noundef %_4.0.i.i.i.i.i.i.i.i171.i)
          to label %bb3.i.i.i.i.i.i.i.i178.i unwind label %cleanup.i.i.i.i.i.i.i.i176.i

cleanup.i.i.i.i.i.i.i.i176.i:                     ; preds = %bb2.i1.i.i.i.i173.i
  %276 = landingpad { ptr, i32 }
          cleanup
  %277 = load ptr, ptr %272, align 8, !nonnull !5, !noundef !5
  %278 = load ptr, ptr %274, align 8, !nonnull !5, !align !6, !noundef !5
  %279 = getelementptr i8, ptr %278, i64 8
  %.val2.i.i.i.i.i.i.i.i174.i = load i64, ptr %279, align 8, !range !13
  %280 = getelementptr i8, ptr %278, i64 16
  %.val3.i.i.i.i.i.i.i.i175.i = load i64, ptr %280, align 8, !range !14
  call fastcc void @_ZN5alloc5alloc8box_free17h8a1c49e7dbb7be52E(ptr noundef nonnull %277, i64 %.val2.i.i.i.i.i.i.i.i174.i, i64 %.val3.i.i.i.i.i.i.i.i175.i) #9
  call fastcc void @_ZN5alloc5alloc8box_free17h0e351884321d3057E(ptr noundef nonnull %272) #9
  br label %cleanup.body.i

bb3.i.i.i.i.i.i.i.i178.i:                         ; preds = %bb2.i1.i.i.i.i173.i
  %281 = load ptr, ptr %274, align 8, !nonnull !5, !align !6, !noundef !5
  %282 = getelementptr i8, ptr %281, i64 8
  %.val.i.i.i.i.i.i.i.i177.i = load i64, ptr %282, align 8, !range !13
  %283 = icmp eq i64 %.val.i.i.i.i.i.i.i.i177.i, 0
  br i1 %283, label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hd87857f6e0823052E.exit.i.i.i.i.i182.i", label %bb1.i.i.i.i.i.i.i.i.i.i181.i

bb1.i.i.i.i.i.i.i.i.i.i181.i:                     ; preds = %bb3.i.i.i.i.i.i.i.i178.i
  %284 = getelementptr i8, ptr %281, i64 16
  %.val1.i.i.i.i.i.i.i.i179.i = load i64, ptr %284, align 8, !range !14
  %285 = load ptr, ptr %272, align 8, !nonnull !5, !noundef !5
  %_16.i.i.i.i.i.i.i.i.i.i180.i = icmp ult i64 %.val1.i.i.i.i.i.i.i.i179.i, -9223372036854775807
  call void @llvm.assume(i1 %_16.i.i.i.i.i.i.i.i.i.i180.i)
  call void @__rust_dealloc(ptr noundef nonnull %285, i64 noundef %.val.i.i.i.i.i.i.i.i177.i, i64 noundef %.val1.i.i.i.i.i.i.i.i179.i) #10
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hd87857f6e0823052E.exit.i.i.i.i.i182.i"

"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hd87857f6e0823052E.exit.i.i.i.i.i182.i": ; preds = %bb1.i.i.i.i.i.i.i.i.i.i181.i, %bb3.i.i.i.i.i.i.i.i178.i
  call void @__rust_dealloc(ptr noundef nonnull %272, i64 noundef 24, i64 noundef 8) #10
  br label %bb39.i

bb39.i:                                           ; preds = %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hd87857f6e0823052E.exit.i.i.i.i.i182.i", %bb37.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_142.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_139.i)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_147.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_151.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_154.i)
  %286 = and i32 %26, 4
  store i32 %286, ptr %_154.i, align 4
  store ptr %_154.i, ptr %_151.i, align 8
  %287 = getelementptr inbounds { ptr, ptr }, ptr %_151.i, i64 0, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %287, align 8
  %288 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_147.i, i64 0, i32 1
  store ptr @alloc_8939cec4e792092ccae6d9391466ffd1, ptr %288, align 8, !alias.scope !75, !noalias !78
  %289 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_147.i, i64 0, i32 1, i32 1
  store i64 2, ptr %289, align 8, !alias.scope !75, !noalias !78
  store ptr null, ptr %_147.i, align 8, !alias.scope !75, !noalias !78
  %290 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_147.i, i64 0, i32 2
  store ptr %_151.i, ptr %290, align 8, !alias.scope !75, !noalias !78
  %291 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_147.i, i64 0, i32 2, i32 1
  store i64 1, ptr %291, align 8, !alias.scope !75, !noalias !78
  %292 = invoke fastcc noundef ptr @_ZN3std2io5Write9write_fmt17h20eb944dadef0a1eE(ptr noalias noundef nonnull align 8 dereferenceable(8) %out.i, ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_147.i)
          to label %bb40.i unwind label %cleanup.i

bb40.i:                                           ; preds = %bb39.i
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_147.i)
  %293 = icmp ne ptr %292, null
  %294 = ptrtoint ptr %292 to i64
  %_5.i.i.i.i.i186.i = and i64 %294, 3
  %switch.i.i.i.i187.i = icmp eq i64 %_5.i.i.i.i.i186.i, 1
  %or.cond.i188.i = and i1 %293, %switch.i.i.i.i187.i
  br i1 %or.cond.i188.i, label %bb2.i1.i.i.i.i191.i, label %bb42.i

bb2.i1.i.i.i.i191.i:                              ; preds = %bb40.i
  %295 = getelementptr i8, ptr %292, i64 -1
  %296 = icmp ne ptr %295, null
  call void @llvm.assume(i1 %296)
  %_4.0.i.i.i.i.i.i.i.i189.i = load ptr, ptr %295, align 8, !noundef !5
  %297 = getelementptr i8, ptr %292, i64 7
  %_4.1.i.i.i.i.i.i.i.i190.i = load ptr, ptr %297, align 8, !nonnull !5, !align !6, !noundef !5
  %298 = load ptr, ptr %_4.1.i.i.i.i.i.i.i.i190.i, align 8, !invariant.load !5, !nonnull !5
  invoke void %298(ptr noundef %_4.0.i.i.i.i.i.i.i.i189.i)
          to label %bb3.i.i.i.i.i.i.i.i196.i unwind label %cleanup.i.i.i.i.i.i.i.i194.i

cleanup.i.i.i.i.i.i.i.i194.i:                     ; preds = %bb2.i1.i.i.i.i191.i
  %299 = landingpad { ptr, i32 }
          cleanup
  %300 = load ptr, ptr %295, align 8, !nonnull !5, !noundef !5
  %301 = load ptr, ptr %297, align 8, !nonnull !5, !align !6, !noundef !5
  %302 = getelementptr i8, ptr %301, i64 8
  %.val2.i.i.i.i.i.i.i.i192.i = load i64, ptr %302, align 8, !range !13
  %303 = getelementptr i8, ptr %301, i64 16
  %.val3.i.i.i.i.i.i.i.i193.i = load i64, ptr %303, align 8, !range !14
  call fastcc void @_ZN5alloc5alloc8box_free17h8a1c49e7dbb7be52E(ptr noundef nonnull %300, i64 %.val2.i.i.i.i.i.i.i.i192.i, i64 %.val3.i.i.i.i.i.i.i.i193.i) #9
  call fastcc void @_ZN5alloc5alloc8box_free17h0e351884321d3057E(ptr noundef nonnull %295) #9
  br label %cleanup.body.i

bb3.i.i.i.i.i.i.i.i196.i:                         ; preds = %bb2.i1.i.i.i.i191.i
  %304 = load ptr, ptr %297, align 8, !nonnull !5, !align !6, !noundef !5
  %305 = getelementptr i8, ptr %304, i64 8
  %.val.i.i.i.i.i.i.i.i195.i = load i64, ptr %305, align 8, !range !13
  %306 = icmp eq i64 %.val.i.i.i.i.i.i.i.i195.i, 0
  br i1 %306, label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hd87857f6e0823052E.exit.i.i.i.i.i200.i", label %bb1.i.i.i.i.i.i.i.i.i.i199.i

bb1.i.i.i.i.i.i.i.i.i.i199.i:                     ; preds = %bb3.i.i.i.i.i.i.i.i196.i
  %307 = getelementptr i8, ptr %304, i64 16
  %.val1.i.i.i.i.i.i.i.i197.i = load i64, ptr %307, align 8, !range !14
  %308 = load ptr, ptr %295, align 8, !nonnull !5, !noundef !5
  %_16.i.i.i.i.i.i.i.i.i.i198.i = icmp ult i64 %.val1.i.i.i.i.i.i.i.i197.i, -9223372036854775807
  call void @llvm.assume(i1 %_16.i.i.i.i.i.i.i.i.i.i198.i)
  call void @__rust_dealloc(ptr noundef nonnull %308, i64 noundef %.val.i.i.i.i.i.i.i.i195.i, i64 noundef %.val1.i.i.i.i.i.i.i.i197.i) #10
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hd87857f6e0823052E.exit.i.i.i.i.i200.i"

"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hd87857f6e0823052E.exit.i.i.i.i.i200.i": ; preds = %bb1.i.i.i.i.i.i.i.i.i.i199.i, %bb3.i.i.i.i.i.i.i.i196.i
  call void @__rust_dealloc(ptr noundef nonnull %295, i64 noundef 24, i64 noundef 8) #10
  br label %bb42.i

bb42.i:                                           ; preds = %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hd87857f6e0823052E.exit.i.i.i.i.i200.i", %bb40.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_154.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_151.i)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_159.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_163.i)
  store ptr %lower.i, ptr %_163.i, align 8
  %309 = getelementptr inbounds { ptr, ptr }, ptr %_163.i, i64 0, i32 1
  store ptr @"_ZN43_$LT$char$u20$as$u20$core..fmt..Display$GT$3fmt17hd0a2b739fc68e587E", ptr %309, align 8
  %310 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_159.i, i64 0, i32 1
  store ptr @alloc_5e43b5ada3c358794915b0ac40c8e4a7, ptr %310, align 8, !alias.scope !81, !noalias !84
  %311 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_159.i, i64 0, i32 1, i32 1
  store i64 2, ptr %311, align 8, !alias.scope !81, !noalias !84
  store ptr null, ptr %_159.i, align 8, !alias.scope !81, !noalias !84
  %312 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_159.i, i64 0, i32 2
  store ptr %_163.i, ptr %312, align 8, !alias.scope !81, !noalias !84
  %313 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_159.i, i64 0, i32 2, i32 1
  store i64 1, ptr %313, align 8, !alias.scope !81, !noalias !84
  %314 = invoke fastcc noundef ptr @_ZN3std2io5Write9write_fmt17h20eb944dadef0a1eE(ptr noalias noundef nonnull align 8 dereferenceable(8) %out.i, ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_159.i)
          to label %bb43.i unwind label %cleanup.i

bb43.i:                                           ; preds = %bb42.i
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_159.i)
  %315 = icmp ne ptr %314, null
  %316 = ptrtoint ptr %314 to i64
  %_5.i.i.i.i.i204.i = and i64 %316, 3
  %switch.i.i.i.i205.i = icmp eq i64 %_5.i.i.i.i.i204.i, 1
  %or.cond.i206.i = and i1 %315, %switch.i.i.i.i205.i
  br i1 %or.cond.i206.i, label %bb2.i1.i.i.i.i209.i, label %bb45.i

bb2.i1.i.i.i.i209.i:                              ; preds = %bb43.i
  %317 = getelementptr i8, ptr %314, i64 -1
  %318 = icmp ne ptr %317, null
  call void @llvm.assume(i1 %318)
  %_4.0.i.i.i.i.i.i.i.i207.i = load ptr, ptr %317, align 8, !noundef !5
  %319 = getelementptr i8, ptr %314, i64 7
  %_4.1.i.i.i.i.i.i.i.i208.i = load ptr, ptr %319, align 8, !nonnull !5, !align !6, !noundef !5
  %320 = load ptr, ptr %_4.1.i.i.i.i.i.i.i.i208.i, align 8, !invariant.load !5, !nonnull !5
  invoke void %320(ptr noundef %_4.0.i.i.i.i.i.i.i.i207.i)
          to label %bb3.i.i.i.i.i.i.i.i214.i unwind label %cleanup.i.i.i.i.i.i.i.i212.i

cleanup.i.i.i.i.i.i.i.i212.i:                     ; preds = %bb2.i1.i.i.i.i209.i
  %321 = landingpad { ptr, i32 }
          cleanup
  %322 = load ptr, ptr %317, align 8, !nonnull !5, !noundef !5
  %323 = load ptr, ptr %319, align 8, !nonnull !5, !align !6, !noundef !5
  %324 = getelementptr i8, ptr %323, i64 8
  %.val2.i.i.i.i.i.i.i.i210.i = load i64, ptr %324, align 8, !range !13
  %325 = getelementptr i8, ptr %323, i64 16
  %.val3.i.i.i.i.i.i.i.i211.i = load i64, ptr %325, align 8, !range !14
  call fastcc void @_ZN5alloc5alloc8box_free17h8a1c49e7dbb7be52E(ptr noundef nonnull %322, i64 %.val2.i.i.i.i.i.i.i.i210.i, i64 %.val3.i.i.i.i.i.i.i.i211.i) #9
  call fastcc void @_ZN5alloc5alloc8box_free17h0e351884321d3057E(ptr noundef nonnull %317) #9
  br label %cleanup.body.i

bb3.i.i.i.i.i.i.i.i214.i:                         ; preds = %bb2.i1.i.i.i.i209.i
  %326 = load ptr, ptr %319, align 8, !nonnull !5, !align !6, !noundef !5
  %327 = getelementptr i8, ptr %326, i64 8
  %.val.i.i.i.i.i.i.i.i213.i = load i64, ptr %327, align 8, !range !13
  %328 = icmp eq i64 %.val.i.i.i.i.i.i.i.i213.i, 0
  br i1 %328, label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hd87857f6e0823052E.exit.i.i.i.i.i218.i", label %bb1.i.i.i.i.i.i.i.i.i.i217.i

bb1.i.i.i.i.i.i.i.i.i.i217.i:                     ; preds = %bb3.i.i.i.i.i.i.i.i214.i
  %329 = getelementptr i8, ptr %326, i64 16
  %.val1.i.i.i.i.i.i.i.i215.i = load i64, ptr %329, align 8, !range !14
  %330 = load ptr, ptr %317, align 8, !nonnull !5, !noundef !5
  %_16.i.i.i.i.i.i.i.i.i.i216.i = icmp ult i64 %.val1.i.i.i.i.i.i.i.i215.i, -9223372036854775807
  call void @llvm.assume(i1 %_16.i.i.i.i.i.i.i.i.i.i216.i)
  call void @__rust_dealloc(ptr noundef nonnull %330, i64 noundef %.val.i.i.i.i.i.i.i.i213.i, i64 noundef %.val1.i.i.i.i.i.i.i.i215.i) #10
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hd87857f6e0823052E.exit.i.i.i.i.i218.i"

"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hd87857f6e0823052E.exit.i.i.i.i.i218.i": ; preds = %bb1.i.i.i.i.i.i.i.i.i.i217.i, %bb3.i.i.i.i.i.i.i.i214.i
  call void @__rust_dealloc(ptr noundef nonnull %317, i64 noundef 24, i64 noundef 8) #10
  br label %bb45.i

bb45.i:                                           ; preds = %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hd87857f6e0823052E.exit.i.i.i.i.i218.i", %bb43.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_163.i)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_168.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_172.i)
  store ptr %upper.i, ptr %_172.i, align 8
  %331 = getelementptr inbounds { ptr, ptr }, ptr %_172.i, i64 0, i32 1
  store ptr @"_ZN43_$LT$char$u20$as$u20$core..fmt..Display$GT$3fmt17hd0a2b739fc68e587E", ptr %331, align 8
  %332 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_168.i, i64 0, i32 1
  store ptr @alloc_e397949512dbef17d037bed997562b22, ptr %332, align 8, !alias.scope !87, !noalias !90
  %333 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_168.i, i64 0, i32 1, i32 1
  store i64 2, ptr %333, align 8, !alias.scope !87, !noalias !90
  store ptr null, ptr %_168.i, align 8, !alias.scope !87, !noalias !90
  %334 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_168.i, i64 0, i32 2
  store ptr %_172.i, ptr %334, align 8, !alias.scope !87, !noalias !90
  %335 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_168.i, i64 0, i32 2, i32 1
  store i64 1, ptr %335, align 8, !alias.scope !87, !noalias !90
  %336 = invoke fastcc noundef ptr @_ZN3std2io5Write9write_fmt17h20eb944dadef0a1eE(ptr noalias noundef nonnull align 8 dereferenceable(8) %out.i, ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_168.i)
          to label %bb46.i unwind label %cleanup.i

bb46.i:                                           ; preds = %bb45.i
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_168.i)
  %337 = icmp ne ptr %336, null
  %338 = ptrtoint ptr %336 to i64
  %_5.i.i.i.i.i222.i = and i64 %338, 3
  %switch.i.i.i.i223.i = icmp eq i64 %_5.i.i.i.i.i222.i, 1
  %or.cond.i224.i = and i1 %337, %switch.i.i.i.i223.i
  br i1 %or.cond.i224.i, label %bb2.i1.i.i.i.i227.i, label %bb47.i

bb2.i1.i.i.i.i227.i:                              ; preds = %bb46.i
  %339 = getelementptr i8, ptr %336, i64 -1
  %340 = icmp ne ptr %339, null
  call void @llvm.assume(i1 %340)
  %_4.0.i.i.i.i.i.i.i.i225.i = load ptr, ptr %339, align 8, !noundef !5
  %341 = getelementptr i8, ptr %336, i64 7
  %_4.1.i.i.i.i.i.i.i.i226.i = load ptr, ptr %341, align 8, !nonnull !5, !align !6, !noundef !5
  %342 = load ptr, ptr %_4.1.i.i.i.i.i.i.i.i226.i, align 8, !invariant.load !5, !nonnull !5
  invoke void %342(ptr noundef %_4.0.i.i.i.i.i.i.i.i225.i)
          to label %bb3.i.i.i.i.i.i.i.i232.i unwind label %cleanup.i.i.i.i.i.i.i.i230.i

cleanup.i.i.i.i.i.i.i.i230.i:                     ; preds = %bb2.i1.i.i.i.i227.i
  %343 = landingpad { ptr, i32 }
          cleanup
  %344 = load ptr, ptr %339, align 8, !nonnull !5, !noundef !5
  %345 = load ptr, ptr %341, align 8, !nonnull !5, !align !6, !noundef !5
  %346 = getelementptr i8, ptr %345, i64 8
  %.val2.i.i.i.i.i.i.i.i228.i = load i64, ptr %346, align 8, !range !13
  %347 = getelementptr i8, ptr %345, i64 16
  %.val3.i.i.i.i.i.i.i.i229.i = load i64, ptr %347, align 8, !range !14
  call fastcc void @_ZN5alloc5alloc8box_free17h8a1c49e7dbb7be52E(ptr noundef nonnull %344, i64 %.val2.i.i.i.i.i.i.i.i228.i, i64 %.val3.i.i.i.i.i.i.i.i229.i) #9
  call fastcc void @_ZN5alloc5alloc8box_free17h0e351884321d3057E(ptr noundef nonnull %339) #9
  br label %cleanup.body.i

bb3.i.i.i.i.i.i.i.i232.i:                         ; preds = %bb2.i1.i.i.i.i227.i
  %348 = load ptr, ptr %341, align 8, !nonnull !5, !align !6, !noundef !5
  %349 = getelementptr i8, ptr %348, i64 8
  %.val.i.i.i.i.i.i.i.i231.i = load i64, ptr %349, align 8, !range !13
  %350 = icmp eq i64 %.val.i.i.i.i.i.i.i.i231.i, 0
  br i1 %350, label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hd87857f6e0823052E.exit.i.i.i.i.i236.i", label %bb1.i.i.i.i.i.i.i.i.i.i235.i

bb1.i.i.i.i.i.i.i.i.i.i235.i:                     ; preds = %bb3.i.i.i.i.i.i.i.i232.i
  %351 = getelementptr i8, ptr %348, i64 16
  %.val1.i.i.i.i.i.i.i.i233.i = load i64, ptr %351, align 8, !range !14
  %352 = load ptr, ptr %339, align 8, !nonnull !5, !noundef !5
  %_16.i.i.i.i.i.i.i.i.i.i234.i = icmp ult i64 %.val1.i.i.i.i.i.i.i.i233.i, -9223372036854775807
  call void @llvm.assume(i1 %_16.i.i.i.i.i.i.i.i.i.i234.i)
  call void @__rust_dealloc(ptr noundef nonnull %352, i64 noundef %.val.i.i.i.i.i.i.i.i231.i, i64 noundef %.val1.i.i.i.i.i.i.i.i233.i) #10
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hd87857f6e0823052E.exit.i.i.i.i.i236.i"

"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hd87857f6e0823052E.exit.i.i.i.i.i236.i": ; preds = %bb1.i.i.i.i.i.i.i.i.i.i235.i, %bb3.i.i.i.i.i.i.i.i232.i
  call void @__rust_dealloc(ptr noundef nonnull %339, i64 noundef 24, i64 noundef 8) #10
  br label %bb47.i

bb47.i:                                           ; preds = %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hd87857f6e0823052E.exit.i.i.i.i.i236.i", %bb46.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_172.i)
  %out.val.i = load ptr, ptr %out.i, align 8, !alias.scope !2, !nonnull !5, !align !6
  %self1.i.i.i.i = getelementptr inbounds %"std::sync::remutex::ReentrantMutex<core::cell::RefCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>>", ptr %out.val.i, i64 0, i32 3
  %353 = load i32, ptr %self1.i.i.i.i, align 4, !noalias !93, !noundef !5
  %354 = add i32 %353, -1
  store i32 %354, ptr %self1.i.i.i.i, align 4, !noalias !93
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %bb1.i.i.i.i, label %_ZN6driver3src6driver6driver17h9242d1830623f1b6E.exit

bb1.i.i.i.i:                                      ; preds = %bb47.i
  store atomic i64 0, ptr %out.val.i monotonic, align 8, !noalias !93
  %self3.i.i.i.i = getelementptr inbounds %"std::sync::remutex::ReentrantMutex<core::cell::RefCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>>", ptr %out.val.i, i64 0, i32 2
  %356 = atomicrmw xchg ptr %self3.i.i.i.i, i32 0 release, align 4, !noalias !93
  %357 = icmp eq i32 %356, 2
  br i1 %357, label %bb6.i.i.i.i, label %_ZN6driver3src6driver6driver17h9242d1830623f1b6E.exit

bb6.i.i.i.i:                                      ; preds = %bb1.i.i.i.i
  call void @_ZN3std3sys4unix5locks11futex_mutex5Mutex4wake17heeac318d850ee859E(ptr noundef nonnull align 4 %self3.i.i.i.i), !noalias !93
  br label %_ZN6driver3src6driver6driver17h9242d1830623f1b6E.exit

terminate.i:                                      ; preds = %cleanup.body.i
  %358 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4core9panicking19panic_cannot_unwind17h629e1da841ab4abfE() #11
  unreachable

bb50.i:                                           ; preds = %cleanup.body.i
  resume { ptr, i32 } %eh.lpad-body.i

_ZN6driver3src6driver6driver17h9242d1830623f1b6E.exit: ; preds = %bb6.i.i.i.i, %bb1.i.i.i.i, %bb47.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %upper.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lower.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
declare noundef i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr47drop_in_place$LT$std..io..stdio..StdoutLock$GT$17hf6ce6f856a54ef4aE"(ptr %_1.0.val) unnamed_addr #0 {
start:
  %self1.i.i = getelementptr inbounds %"std::sync::remutex::ReentrantMutex<core::cell::RefCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>>", ptr %_1.0.val, i64 0, i32 3
  %0 = load i32, ptr %self1.i.i, align 4, !noalias !96, !noundef !5
  %1 = add i32 %0, -1
  store i32 %1, ptr %self1.i.i, align 4, !noalias !96
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %bb1.i.i, label %"_ZN4core3ptr169drop_in_place$LT$std..sync..remutex..ReentrantMutexGuard$LT$core..cell..RefCell$LT$std..io..buffered..linewriter..LineWriter$LT$std..io..stdio..StdoutRaw$GT$$GT$$GT$$GT$17h7cfb93f5fc0dfc95E.exit"

bb1.i.i:                                          ; preds = %start
  store atomic i64 0, ptr %_1.0.val monotonic, align 8, !noalias !96
  %self3.i.i = getelementptr inbounds %"std::sync::remutex::ReentrantMutex<core::cell::RefCell<std::io::buffered::linewriter::LineWriter<std::io::stdio::StdoutRaw>>>", ptr %_1.0.val, i64 0, i32 2
  %3 = atomicrmw xchg ptr %self3.i.i, i32 0 release, align 4, !noalias !96
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %bb6.i.i, label %"_ZN4core3ptr169drop_in_place$LT$std..sync..remutex..ReentrantMutexGuard$LT$core..cell..RefCell$LT$std..io..buffered..linewriter..LineWriter$LT$std..io..stdio..StdoutRaw$GT$$GT$$GT$$GT$17h7cfb93f5fc0dfc95E.exit"

bb6.i.i:                                          ; preds = %bb1.i.i
  tail call void @_ZN3std3sys4unix5locks11futex_mutex5Mutex4wake17heeac318d850ee859E(ptr noundef nonnull align 4 %self3.i.i), !noalias !96
  br label %"_ZN4core3ptr169drop_in_place$LT$std..sync..remutex..ReentrantMutexGuard$LT$core..cell..RefCell$LT$std..io..buffered..linewriter..LineWriter$LT$std..io..stdio..StdoutRaw$GT$$GT$$GT$$GT$17h7cfb93f5fc0dfc95E.exit"

"_ZN4core3ptr169drop_in_place$LT$std..sync..remutex..ReentrantMutexGuard$LT$core..cell..RefCell$LT$std..io..buffered..linewriter..LineWriter$LT$std..io..stdio..StdoutRaw$GT$$GT$$GT$$GT$17h7cfb93f5fc0dfc95E.exit": ; preds = %bb6.i.i, %bb1.i.i, %start
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_ZN3std2io5stdio6stdout17he9b6f4d8775ef0f6E() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_ZN3std2io5stdio6Stdout4lock17h9f862ea3b055bc56E(ptr noalias noundef readonly align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE"(ptr noalias noundef readonly align 4 dereferenceable(4), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_ZN3std2io5Write9write_fmt17h20eb944dadef0a1eE(ptr noalias noundef align 8 dereferenceable(8) %self, ptr noalias nocapture noundef readonly dereferenceable(48) %fmt) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %0 = alloca %"core::fmt::Arguments<'_>", align 8
  %output = alloca { ptr, ptr }, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %output)
  %1 = getelementptr inbounds { ptr, ptr }, ptr %output, i64 0, i32 1
  store ptr %self, ptr %1, align 8
  store ptr null, ptr %output, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %fmt, i64 48, i1 false)
  %2 = invoke noundef zeroext i1 @_ZN4core3fmt5write17h6275e2f63c0a8319E(ptr noundef nonnull align 1 %output, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @vtable.0, ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %0)
          to label %bb1 unwind label %cleanup

cleanup:                                          ; preds = %start
  %3 = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr89drop_in_place$LT$std..io..Write..write_fmt..Adapter$LT$std..io..stdio..StdoutLock$GT$$GT$17he90e37f96cc5eaedE"(ptr noundef nonnull %output) #9
          to label %common.resume unwind label %terminate

bb1:                                              ; preds = %start
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %0)
  %4 = load ptr, ptr %output, align 8
  br i1 %2, label %bb12, label %bb11

terminate:                                        ; preds = %cleanup
  %5 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4core9panicking19panic_cannot_unwind17h629e1da841ab4abfE() #11
  unreachable

common.resume:                                    ; preds = %cleanup.i.i.i.i.i.i.i.i, %cleanup
  %common.resume.op = phi { ptr, i32 } [ %12, %cleanup.i.i.i.i.i.i.i.i ], [ %3, %cleanup ]
  resume { ptr, i32 } %common.resume.op

bb12:                                             ; preds = %bb1
  %.not = icmp eq ptr %4, null
  %spec.select = select i1 %.not, ptr @alloc_8bb4120231b65ad69880f6a736762954, ptr %4
  br label %bb10

bb10:                                             ; preds = %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hd87857f6e0823052E.exit.i.i.i.i.i", %bb11, %bb12
  %.04 = phi ptr [ null, %bb11 ], [ null, %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hd87857f6e0823052E.exit.i.i.i.i.i" ], [ %spec.select, %bb12 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %output)
  ret ptr %.04

bb11:                                             ; preds = %bb1
  %6 = icmp ne ptr %4, null
  %7 = ptrtoint ptr %4 to i64
  %_5.i.i.i.i.i = and i64 %7, 3
  %switch.i.i.i.i = icmp eq i64 %_5.i.i.i.i.i, 1
  %or.cond.i = and i1 %6, %switch.i.i.i.i
  br i1 %or.cond.i, label %bb2.i1.i.i.i.i, label %bb10

bb2.i1.i.i.i.i:                                   ; preds = %bb11
  %8 = getelementptr i8, ptr %4, i64 -1
  %9 = icmp ne ptr %8, null
  call void @llvm.assume(i1 %9)
  %_4.0.i.i.i.i.i.i.i.i = load ptr, ptr %8, align 8, !noundef !5
  %10 = getelementptr i8, ptr %4, i64 7
  %_4.1.i.i.i.i.i.i.i.i = load ptr, ptr %10, align 8, !nonnull !5, !align !6, !noundef !5
  %11 = load ptr, ptr %_4.1.i.i.i.i.i.i.i.i, align 8, !invariant.load !5, !nonnull !5
  invoke void %11(ptr noundef %_4.0.i.i.i.i.i.i.i.i)
          to label %bb3.i.i.i.i.i.i.i.i unwind label %cleanup.i.i.i.i.i.i.i.i

cleanup.i.i.i.i.i.i.i.i:                          ; preds = %bb2.i1.i.i.i.i
  %12 = landingpad { ptr, i32 }
          cleanup
  %13 = load ptr, ptr %8, align 8, !nonnull !5, !noundef !5
  %14 = load ptr, ptr %10, align 8, !nonnull !5, !align !6, !noundef !5
  %15 = getelementptr i8, ptr %14, i64 8
  %.val2.i.i.i.i.i.i.i.i = load i64, ptr %15, align 8, !range !13
  %16 = getelementptr i8, ptr %14, i64 16
  %.val3.i.i.i.i.i.i.i.i = load i64, ptr %16, align 8, !range !14
  call fastcc void @_ZN5alloc5alloc8box_free17h8a1c49e7dbb7be52E(ptr noundef nonnull %13, i64 %.val2.i.i.i.i.i.i.i.i, i64 %.val3.i.i.i.i.i.i.i.i) #9
  call fastcc void @_ZN5alloc5alloc8box_free17h0e351884321d3057E(ptr noundef nonnull %8) #9
  br label %common.resume

bb3.i.i.i.i.i.i.i.i:                              ; preds = %bb2.i1.i.i.i.i
  %17 = load ptr, ptr %10, align 8, !nonnull !5, !align !6, !noundef !5
  %18 = getelementptr i8, ptr %17, i64 8
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %18, align 8, !range !13
  %19 = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %19, label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hd87857f6e0823052E.exit.i.i.i.i.i", label %bb1.i.i.i.i.i.i.i.i.i.i

bb1.i.i.i.i.i.i.i.i.i.i:                          ; preds = %bb3.i.i.i.i.i.i.i.i
  %20 = getelementptr i8, ptr %17, i64 16
  %.val1.i.i.i.i.i.i.i.i = load i64, ptr %20, align 8, !range !14
  %21 = load ptr, ptr %8, align 8, !nonnull !5, !noundef !5
  %_16.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %.val1.i.i.i.i.i.i.i.i, -9223372036854775807
  call void @llvm.assume(i1 %_16.i.i.i.i.i.i.i.i.i.i)
  call void @__rust_dealloc(ptr noundef nonnull %21, i64 noundef %.val.i.i.i.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i.i.i.i) #10
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hd87857f6e0823052E.exit.i.i.i.i.i"

"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hd87857f6e0823052E.exit.i.i.i.i.i": ; preds = %bb1.i.i.i.i.i.i.i.i.i.i, %bb3.i.i.i.i.i.i.i.i
  call void @__rust_dealloc(ptr noundef nonnull %8, i64 noundef 24, i64 noundef 8) #10
  br label %bb10
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #2

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_ZN5alloc5alloc8box_free17h8a1c49e7dbb7be52E(ptr noundef nonnull %0, i64 %.8.val, i64 %.16.val) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  %1 = icmp eq i64 %.8.val, 0
  br i1 %1, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17he8928256f518c172E.exit", label %bb1.i

bb1.i:                                            ; preds = %start
  %_16.i = icmp ult i64 %.16.val, -9223372036854775807
  tail call void @llvm.assume(i1 %_16.i)
  tail call void @__rust_dealloc(ptr noundef nonnull %0, i64 noundef %.8.val, i64 noundef %.16.val) #10
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17he8928256f518c172E.exit"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17he8928256f518c172E.exit": ; preds = %bb1.i, %start
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_ZN5alloc5alloc8box_free17h0e351884321d3057E(ptr noundef nonnull %0) unnamed_addr #3 personality ptr @rust_eh_personality {
start:
  tail call void @__rust_dealloc(ptr noundef nonnull %0, i64 noundef 24, i64 noundef 8) #10
  ret void
}

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @__rust_dealloc(ptr allocptr noundef, i64 noundef, i64 noundef) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN43_$LT$char$u20$as$u20$core..fmt..Display$GT$3fmt17hd0a2b739fc68e587E"(ptr noalias noundef readonly align 4 dereferenceable(4), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_ZN3std3sys4unix5locks11futex_mutex5Mutex4wake17heeac318d850ee859E(ptr noundef nonnull align 4) unnamed_addr #5

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_ZN4core9panicking19panic_cannot_unwind17h629e1da841ab4abfE() unnamed_addr #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core3fmt5write17h6275e2f63c0a8319E(ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 dereferenceable(24), ptr noalias nocapture noundef readonly dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr89drop_in_place$LT$std..io..Write..write_fmt..Adapter$LT$std..io..stdio..StdoutLock$GT$$GT$17he90e37f96cc5eaedE"(ptr nocapture noundef readonly %_1) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %_1.val = load ptr, ptr %_1, align 8, !noundef !5
  %0 = icmp ne ptr %_1.val, null
  %1 = ptrtoint ptr %_1.val to i64
  %_5.i.i.i.i.i = and i64 %1, 3
  %switch.i.i.i.i = icmp eq i64 %_5.i.i.i.i.i, 1
  %or.cond.i = and i1 %0, %switch.i.i.i.i
  br i1 %or.cond.i, label %bb2.i1.i.i.i.i, label %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17he752f24c99df84adE.exit"

bb2.i1.i.i.i.i:                                   ; preds = %start
  %2 = getelementptr i8, ptr %_1.val, i64 -1
  %3 = icmp ne ptr %2, null
  tail call void @llvm.assume(i1 %3)
  %_4.0.i.i.i.i.i.i.i.i = load ptr, ptr %2, align 8, !noundef !5
  %4 = getelementptr i8, ptr %_1.val, i64 7
  %_4.1.i.i.i.i.i.i.i.i = load ptr, ptr %4, align 8, !nonnull !5, !align !6, !noundef !5
  %5 = load ptr, ptr %_4.1.i.i.i.i.i.i.i.i, align 8, !invariant.load !5, !nonnull !5
  invoke void %5(ptr noundef %_4.0.i.i.i.i.i.i.i.i)
          to label %bb3.i.i.i.i.i.i.i.i unwind label %cleanup.i.i.i.i.i.i.i.i

cleanup.i.i.i.i.i.i.i.i:                          ; preds = %bb2.i1.i.i.i.i
  %6 = landingpad { ptr, i32 }
          cleanup
  %7 = load ptr, ptr %2, align 8, !nonnull !5, !noundef !5
  %8 = load ptr, ptr %4, align 8, !nonnull !5, !align !6, !noundef !5
  %9 = getelementptr i8, ptr %8, i64 8
  %.val2.i.i.i.i.i.i.i.i = load i64, ptr %9, align 8, !range !13
  %10 = getelementptr i8, ptr %8, i64 16
  %.val3.i.i.i.i.i.i.i.i = load i64, ptr %10, align 8, !range !14
  tail call fastcc void @_ZN5alloc5alloc8box_free17h8a1c49e7dbb7be52E(ptr noundef nonnull %7, i64 %.val2.i.i.i.i.i.i.i.i, i64 %.val3.i.i.i.i.i.i.i.i) #9
  tail call fastcc void @_ZN5alloc5alloc8box_free17h0e351884321d3057E(ptr noundef nonnull %2) #9
  resume { ptr, i32 } %6

bb3.i.i.i.i.i.i.i.i:                              ; preds = %bb2.i1.i.i.i.i
  %11 = load ptr, ptr %4, align 8, !nonnull !5, !align !6, !noundef !5
  %12 = getelementptr i8, ptr %11, i64 8
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %12, align 8, !range !13
  %13 = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %13, label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hd87857f6e0823052E.exit.i.i.i.i.i", label %bb1.i.i.i.i.i.i.i.i.i.i

bb1.i.i.i.i.i.i.i.i.i.i:                          ; preds = %bb3.i.i.i.i.i.i.i.i
  %14 = getelementptr i8, ptr %11, i64 16
  %.val1.i.i.i.i.i.i.i.i = load i64, ptr %14, align 8, !range !14
  %15 = load ptr, ptr %2, align 8, !nonnull !5, !noundef !5
  %_16.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %.val1.i.i.i.i.i.i.i.i, -9223372036854775807
  tail call void @llvm.assume(i1 %_16.i.i.i.i.i.i.i.i.i.i)
  tail call void @__rust_dealloc(ptr noundef nonnull %15, i64 noundef %.val.i.i.i.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i.i.i.i) #10
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hd87857f6e0823052E.exit.i.i.i.i.i"

"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hd87857f6e0823052E.exit.i.i.i.i.i": ; preds = %bb1.i.i.i.i.i.i.i.i.i.i, %bb3.i.i.i.i.i.i.i.i
  tail call void @__rust_dealloc(ptr noundef nonnull %2, i64 noundef 24, i64 noundef 8) #10
  br label %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17he752f24c99df84adE.exit"

"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17he752f24c99df84adE.exit": ; preds = %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hd87857f6e0823052E.exit.i.i.i.i.i", %start
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17hb3d888215ed5a7a2E"(ptr noalias nocapture noundef align 8 dereferenceable(16) %self, ptr noalias noundef nonnull readonly align 1 %s.0, i64 noundef %s.1) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %0 = getelementptr inbounds { ptr, ptr }, ptr %self, i64 0, i32 1
  %_8 = load ptr, ptr %0, align 8, !nonnull !5, !align !6, !noundef !5
  %1 = tail call noundef ptr @"_ZN61_$LT$std..io..stdio..StdoutLock$u20$as$u20$std..io..Write$GT$9write_all17h410d25da5cb9ffb6E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %_8, ptr noalias noundef nonnull readonly align 1 %s.0, i64 noundef %s.1)
  %2 = icmp ne ptr %1, null
  br i1 %2, label %bb2, label %bb7

bb2:                                              ; preds = %start
  %self.val = load ptr, ptr %self, align 8, !noundef !5
  %3 = icmp ne ptr %self.val, null
  %4 = ptrtoint ptr %self.val to i64
  %_5.i.i.i.i.i = and i64 %4, 3
  %switch.i.i.i.i = icmp eq i64 %_5.i.i.i.i.i, 1
  %or.cond.i = and i1 %3, %switch.i.i.i.i
  br i1 %or.cond.i, label %bb2.i1.i.i.i.i, label %bb5

bb2.i1.i.i.i.i:                                   ; preds = %bb2
  %5 = getelementptr i8, ptr %self.val, i64 -1
  %6 = icmp ne ptr %5, null
  tail call void @llvm.assume(i1 %6)
  %_4.0.i.i.i.i.i.i.i.i = load ptr, ptr %5, align 8, !noundef !5
  %7 = getelementptr i8, ptr %self.val, i64 7
  %_4.1.i.i.i.i.i.i.i.i = load ptr, ptr %7, align 8, !nonnull !5, !align !6, !noundef !5
  %8 = load ptr, ptr %_4.1.i.i.i.i.i.i.i.i, align 8, !invariant.load !5, !nonnull !5
  invoke void %8(ptr noundef %_4.0.i.i.i.i.i.i.i.i)
          to label %bb3.i.i.i.i.i.i.i.i unwind label %cleanup.i.i.i.i.i.i.i.i

cleanup.i.i.i.i.i.i.i.i:                          ; preds = %bb2.i1.i.i.i.i
  %9 = landingpad { ptr, i32 }
          cleanup
  %10 = load ptr, ptr %5, align 8, !nonnull !5, !noundef !5
  %11 = load ptr, ptr %7, align 8, !nonnull !5, !align !6, !noundef !5
  %12 = getelementptr i8, ptr %11, i64 8
  %.val2.i.i.i.i.i.i.i.i = load i64, ptr %12, align 8, !range !13
  %13 = getelementptr i8, ptr %11, i64 16
  %.val3.i.i.i.i.i.i.i.i = load i64, ptr %13, align 8, !range !14
  tail call fastcc void @_ZN5alloc5alloc8box_free17h8a1c49e7dbb7be52E(ptr noundef nonnull %10, i64 %.val2.i.i.i.i.i.i.i.i, i64 %.val3.i.i.i.i.i.i.i.i) #9
  tail call fastcc void @_ZN5alloc5alloc8box_free17h0e351884321d3057E(ptr noundef nonnull %5) #9
  store ptr %1, ptr %self, align 8
  resume { ptr, i32 } %9

bb3.i.i.i.i.i.i.i.i:                              ; preds = %bb2.i1.i.i.i.i
  %14 = load ptr, ptr %7, align 8, !nonnull !5, !align !6, !noundef !5
  %15 = getelementptr i8, ptr %14, i64 8
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %15, align 8, !range !13
  %16 = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %16, label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hd87857f6e0823052E.exit.i.i.i.i.i", label %bb1.i.i.i.i.i.i.i.i.i.i

bb1.i.i.i.i.i.i.i.i.i.i:                          ; preds = %bb3.i.i.i.i.i.i.i.i
  %17 = getelementptr i8, ptr %14, i64 16
  %.val1.i.i.i.i.i.i.i.i = load i64, ptr %17, align 8, !range !14
  %18 = load ptr, ptr %5, align 8, !nonnull !5, !noundef !5
  %_16.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %.val1.i.i.i.i.i.i.i.i, -9223372036854775807
  tail call void @llvm.assume(i1 %_16.i.i.i.i.i.i.i.i.i.i)
  tail call void @__rust_dealloc(ptr noundef nonnull %18, i64 noundef %.val.i.i.i.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i.i.i.i) #10
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hd87857f6e0823052E.exit.i.i.i.i.i"

"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hd87857f6e0823052E.exit.i.i.i.i.i": ; preds = %bb1.i.i.i.i.i.i.i.i.i.i, %bb3.i.i.i.i.i.i.i.i
  tail call void @__rust_dealloc(ptr noundef nonnull %5, i64 noundef 24, i64 noundef 8) #10
  br label %bb5

bb5:                                              ; preds = %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hd87857f6e0823052E.exit.i.i.i.i.i", %bb2
  store ptr %1, ptr %self, align 8
  br label %bb7

bb7:                                              ; preds = %bb5, %start
  ret i1 %2
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_ZN4core3fmt5Write10write_char17hecd60418a48c6305E(ptr noalias nocapture noundef align 8 dereferenceable(16) %self, i32 noundef %c) unnamed_addr #0 {
start:
  %_7 = alloca [4 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_7)
  store i32 0, ptr %_7, align 4
  %_83.i = icmp ult i32 %c, 128
  br i1 %_83.i, label %bb6.i, label %bb13.i

bb13.i:                                           ; preds = %start
  %_84.i = icmp ult i32 %c, 2048
  br i1 %_84.i, label %bb7.i, label %bb15.i

bb15.i:                                           ; preds = %bb13.i
  %_85.i = icmp ult i32 %c, 65536
  %b2.i = getelementptr inbounds [0 x i8], ptr %_7, i64 0, i64 1
  %c3.i = getelementptr inbounds [0 x i8], ptr %_7, i64 0, i64 2
  br i1 %_85.i, label %bb8.i, label %bb9.i

bb9.i:                                            ; preds = %bb15.i
  %d.i = getelementptr inbounds [0 x i8], ptr %_7, i64 0, i64 3
  %_43.i = lshr i32 %c, 18
  %0 = trunc i32 %_43.i to i8
  %_41.i = and i8 %0, 7
  %1 = or i8 %_41.i, -16
  store i8 %1, ptr %_7, align 4, !alias.scope !99
  %_46.i = lshr i32 %c, 12
  %2 = trunc i32 %_46.i to i8
  %_44.i = and i8 %2, 63
  %3 = or i8 %_44.i, -128
  store i8 %3, ptr %b2.i, align 1, !alias.scope !99
  %_49.i = lshr i32 %c, 6
  %4 = trunc i32 %_49.i to i8
  %_47.i = and i8 %4, 63
  %5 = or i8 %_47.i, -128
  store i8 %5, ptr %c3.i, align 2, !alias.scope !99
  %6 = trunc i32 %c to i8
  %_50.i = and i8 %6, 63
  %7 = or i8 %_50.i, -128
  store i8 %7, ptr %d.i, align 1, !alias.scope !99
  br label %_ZN4core4char7methods15encode_utf8_raw17h2f28c279514d3feaE.exit

bb8.i:                                            ; preds = %bb15.i
  %_31.i = lshr i32 %c, 12
  %8 = trunc i32 %_31.i to i8
  %9 = or i8 %8, -32
  store i8 %9, ptr %_7, align 4, !alias.scope !99
  %_34.i = lshr i32 %c, 6
  %10 = trunc i32 %_34.i to i8
  %_32.i = and i8 %10, 63
  %11 = or i8 %_32.i, -128
  store i8 %11, ptr %b2.i, align 1, !alias.scope !99
  %12 = trunc i32 %c to i8
  %_35.i = and i8 %12, 63
  %13 = or i8 %_35.i, -128
  store i8 %13, ptr %c3.i, align 2, !alias.scope !99
  br label %_ZN4core4char7methods15encode_utf8_raw17h2f28c279514d3feaE.exit

bb7.i:                                            ; preds = %bb13.i
  %b5.i = getelementptr inbounds [0 x i8], ptr %_7, i64 0, i64 1
  %_23.i = lshr i32 %c, 6
  %14 = trunc i32 %_23.i to i8
  %15 = or i8 %14, -64
  store i8 %15, ptr %_7, align 4, !alias.scope !99
  %16 = trunc i32 %c to i8
  %_24.i = and i8 %16, 63
  %17 = or i8 %_24.i, -128
  store i8 %17, ptr %b5.i, align 1, !alias.scope !99
  br label %_ZN4core4char7methods15encode_utf8_raw17h2f28c279514d3feaE.exit

bb6.i:                                            ; preds = %start
  %18 = trunc i32 %c to i8
  store i8 %18, ptr %_7, align 4, !alias.scope !99
  br label %_ZN4core4char7methods15encode_utf8_raw17h2f28c279514d3feaE.exit

_ZN4core4char7methods15encode_utf8_raw17h2f28c279514d3feaE.exit: ; preds = %bb6.i, %bb7.i, %bb8.i, %bb9.i
  %_521.i = phi i64 [ 1, %bb6.i ], [ 2, %bb7.i ], [ 3, %bb8.i ], [ 4, %bb9.i ]
  %19 = call noundef zeroext i1 @"_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17hb3d888215ed5a7a2E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %self, ptr noalias noundef nonnull readonly align 1 %_7, i64 noundef %_521.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_7)
  ret i1 %19
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_ZN4core3fmt5Write9write_fmt17hd05fcc92507d2152E(ptr noalias noundef align 8 dereferenceable(16) %0, ptr noalias nocapture noundef readonly dereferenceable(48) %args) unnamed_addr #0 {
start:
  %1 = alloca %"core::fmt::Arguments<'_>", align 8
  %self = alloca ptr, align 8
  store ptr %0, ptr %self, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %args, i64 48, i1 false)
  %2 = call noundef zeroext i1 @_ZN4core3fmt5write17h6275e2f63c0a8319E(ptr noundef nonnull align 1 %self, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @vtable.1, ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %1)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %1)
  ret i1 %2
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @"_ZN4core3ptr101drop_in_place$LT$$RF$mut$u20$std..io..Write..write_fmt..Adapter$LT$std..io..stdio..StdoutLock$GT$$GT$17h62b1e5ce230d96feE"(ptr nocapture readnone %_1) unnamed_addr #8 {
start:
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h194ae08d00cda8c7E"(ptr noalias nocapture noundef readonly align 8 dereferenceable(8) %self, ptr noalias noundef nonnull readonly align 1 %s.0, i64 noundef %s.1) unnamed_addr #0 {
start:
  %_3 = load ptr, ptr %self, align 8, !nonnull !5, !align !6, !noundef !5
  %0 = tail call noundef zeroext i1 @"_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17hb3d888215ed5a7a2E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %_3, ptr noalias noundef nonnull readonly align 1 %s.0, i64 noundef %s.1)
  ret i1 %0
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h5520edfa89334da9E"(ptr noalias nocapture noundef readonly align 8 dereferenceable(8) %self, i32 noundef %c) unnamed_addr #0 {
start:
  %_7.i = alloca [4 x i8], align 4
  %_3 = load ptr, ptr %self, align 8, !nonnull !5, !align !6, !noundef !5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_7.i), !noalias !102
  store i32 0, ptr %_7.i, align 4, !noalias !102
  %_83.i.i = icmp ult i32 %c, 128
  br i1 %_83.i.i, label %bb6.i.i, label %bb13.i.i

bb13.i.i:                                         ; preds = %start
  %_84.i.i = icmp ult i32 %c, 2048
  br i1 %_84.i.i, label %bb7.i.i, label %bb15.i.i

bb15.i.i:                                         ; preds = %bb13.i.i
  %_85.i.i = icmp ult i32 %c, 65536
  %b2.i.i = getelementptr inbounds [0 x i8], ptr %_7.i, i64 0, i64 1
  %c3.i.i = getelementptr inbounds [0 x i8], ptr %_7.i, i64 0, i64 2
  br i1 %_85.i.i, label %bb8.i.i, label %bb9.i.i

bb9.i.i:                                          ; preds = %bb15.i.i
  %d.i.i = getelementptr inbounds [0 x i8], ptr %_7.i, i64 0, i64 3
  %_43.i.i = lshr i32 %c, 18
  %0 = trunc i32 %_43.i.i to i8
  %_41.i.i = and i8 %0, 7
  %1 = or i8 %_41.i.i, -16
  store i8 %1, ptr %_7.i, align 4, !alias.scope !105, !noalias !102
  %_46.i.i = lshr i32 %c, 12
  %2 = trunc i32 %_46.i.i to i8
  %_44.i.i = and i8 %2, 63
  %3 = or i8 %_44.i.i, -128
  store i8 %3, ptr %b2.i.i, align 1, !alias.scope !105, !noalias !102
  %_49.i.i = lshr i32 %c, 6
  %4 = trunc i32 %_49.i.i to i8
  %_47.i.i = and i8 %4, 63
  %5 = or i8 %_47.i.i, -128
  store i8 %5, ptr %c3.i.i, align 2, !alias.scope !105, !noalias !102
  %6 = trunc i32 %c to i8
  %_50.i.i = and i8 %6, 63
  %7 = or i8 %_50.i.i, -128
  store i8 %7, ptr %d.i.i, align 1, !alias.scope !105, !noalias !102
  br label %_ZN4core3fmt5Write10write_char17hecd60418a48c6305E.exit

bb8.i.i:                                          ; preds = %bb15.i.i
  %_31.i.i = lshr i32 %c, 12
  %8 = trunc i32 %_31.i.i to i8
  %9 = or i8 %8, -32
  store i8 %9, ptr %_7.i, align 4, !alias.scope !105, !noalias !102
  %_34.i.i = lshr i32 %c, 6
  %10 = trunc i32 %_34.i.i to i8
  %_32.i.i = and i8 %10, 63
  %11 = or i8 %_32.i.i, -128
  store i8 %11, ptr %b2.i.i, align 1, !alias.scope !105, !noalias !102
  %12 = trunc i32 %c to i8
  %_35.i.i = and i8 %12, 63
  %13 = or i8 %_35.i.i, -128
  store i8 %13, ptr %c3.i.i, align 2, !alias.scope !105, !noalias !102
  br label %_ZN4core3fmt5Write10write_char17hecd60418a48c6305E.exit

bb7.i.i:                                          ; preds = %bb13.i.i
  %b5.i.i = getelementptr inbounds [0 x i8], ptr %_7.i, i64 0, i64 1
  %_23.i.i = lshr i32 %c, 6
  %14 = trunc i32 %_23.i.i to i8
  %15 = or i8 %14, -64
  store i8 %15, ptr %_7.i, align 4, !alias.scope !105, !noalias !102
  %16 = trunc i32 %c to i8
  %_24.i.i = and i8 %16, 63
  %17 = or i8 %_24.i.i, -128
  store i8 %17, ptr %b5.i.i, align 1, !alias.scope !105, !noalias !102
  br label %_ZN4core3fmt5Write10write_char17hecd60418a48c6305E.exit

bb6.i.i:                                          ; preds = %start
  %18 = trunc i32 %c to i8
  store i8 %18, ptr %_7.i, align 4, !alias.scope !105, !noalias !102
  br label %_ZN4core3fmt5Write10write_char17hecd60418a48c6305E.exit

_ZN4core3fmt5Write10write_char17hecd60418a48c6305E.exit: ; preds = %bb6.i.i, %bb7.i.i, %bb8.i.i, %bb9.i.i
  %_521.i.i = phi i64 [ 1, %bb6.i.i ], [ 2, %bb7.i.i ], [ 3, %bb8.i.i ], [ 4, %bb9.i.i ]
  %19 = call noundef zeroext i1 @"_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17hb3d888215ed5a7a2E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %_3, ptr noalias noundef nonnull readonly align 1 %_7.i, i64 noundef %_521.i.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_7.i), !noalias !102
  ret i1 %19
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17heb9f84a51d0d5732E"(ptr noalias nocapture noundef readonly align 8 dereferenceable(8) %self, ptr noalias nocapture noundef readonly dereferenceable(48) %args) unnamed_addr #0 {
start:
  %0 = alloca %"core::fmt::Arguments<'_>", align 8
  %self.i = alloca ptr, align 8
  %_3 = load ptr, ptr %self, align 8, !nonnull !5, !align !6, !noundef !5
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %0), !noalias !108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %args, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %self.i)
  store ptr %_3, ptr %self.i, align 8, !noalias !108
  %1 = call noundef zeroext i1 @_ZN4core3fmt5write17h6275e2f63c0a8319E(ptr noundef nonnull align 1 %self.i, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @vtable.1, ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %0), !noalias !112
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %0), !noalias !108
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %self.i)
  ret i1 %1
}

; Function Attrs: nonlazybind uwtable
declare noundef ptr @"_ZN61_$LT$std..io..stdio..StdoutLock$u20$as$u20$std..io..Write$GT$9write_all17h410d25da5cb9ffb6E"(ptr noalias noundef align 8 dereferenceable(8), ptr noalias noundef nonnull readonly align 1, i64 noundef) unnamed_addr #0

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #3 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { noinline }
attributes #10 = { nounwind }
attributes #11 = { noinline noreturn nounwind }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!3}
!3 = distinct !{!3, !4, !"_ZN90_$LT$std..sync..remutex..ReentrantMutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5ded8294b181937fE: %self"}
!4 = distinct !{!4, !"_ZN90_$LT$std..sync..remutex..ReentrantMutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5ded8294b181937fE"}
!5 = !{}
!6 = !{i64 8}
!7 = !{!8}
!8 = distinct !{!8, !9, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!9 = distinct !{!9, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!10 = !{!11, !12}
!11 = distinct !{!11, !9, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %pieces.0"}
!12 = distinct !{!12, !9, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!13 = !{i64 0, i64 -9223372036854775808}
!14 = !{i64 1, i64 0}
!15 = !{!16}
!16 = distinct !{!16, !17, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!17 = distinct !{!17, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!18 = !{!19, !20}
!19 = distinct !{!19, !17, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %pieces.0"}
!20 = distinct !{!20, !17, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!21 = !{!22}
!22 = distinct !{!22, !23, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!23 = distinct !{!23, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!24 = !{!25, !26}
!25 = distinct !{!25, !23, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %pieces.0"}
!26 = distinct !{!26, !23, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!27 = !{!28}
!28 = distinct !{!28, !29, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!29 = distinct !{!29, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!30 = !{!31, !32}
!31 = distinct !{!31, !29, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %pieces.0"}
!32 = distinct !{!32, !29, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!33 = !{!34}
!34 = distinct !{!34, !35, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!35 = distinct !{!35, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!36 = !{!37, !38}
!37 = distinct !{!37, !35, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %pieces.0"}
!38 = distinct !{!38, !35, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!39 = !{!40}
!40 = distinct !{!40, !41, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!41 = distinct !{!41, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!42 = !{!43, !44}
!43 = distinct !{!43, !41, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %pieces.0"}
!44 = distinct !{!44, !41, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!45 = !{!46}
!46 = distinct !{!46, !47, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!47 = distinct !{!47, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!48 = !{!49, !50}
!49 = distinct !{!49, !47, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %pieces.0"}
!50 = distinct !{!50, !47, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!51 = !{!52}
!52 = distinct !{!52, !53, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!53 = distinct !{!53, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!54 = !{!55, !56}
!55 = distinct !{!55, !53, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %pieces.0"}
!56 = distinct !{!56, !53, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!57 = !{!58}
!58 = distinct !{!58, !59, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!59 = distinct !{!59, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!60 = !{!61, !62}
!61 = distinct !{!61, !59, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %pieces.0"}
!62 = distinct !{!62, !59, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!63 = !{!64}
!64 = distinct !{!64, !65, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!65 = distinct !{!65, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!66 = !{!67, !68}
!67 = distinct !{!67, !65, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %pieces.0"}
!68 = distinct !{!68, !65, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!69 = !{!70}
!70 = distinct !{!70, !71, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!71 = distinct !{!71, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!72 = !{!73, !74}
!73 = distinct !{!73, !71, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %pieces.0"}
!74 = distinct !{!74, !71, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!75 = !{!76}
!76 = distinct !{!76, !77, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!77 = distinct !{!77, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!78 = !{!79, !80}
!79 = distinct !{!79, !77, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %pieces.0"}
!80 = distinct !{!80, !77, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!81 = !{!82}
!82 = distinct !{!82, !83, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!83 = distinct !{!83, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!84 = !{!85, !86}
!85 = distinct !{!85, !83, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %pieces.0"}
!86 = distinct !{!86, !83, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!87 = !{!88}
!88 = distinct !{!88, !89, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!89 = distinct !{!89, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!90 = !{!91, !92}
!91 = distinct !{!91, !89, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %pieces.0"}
!92 = distinct !{!92, !89, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!93 = !{!94}
!94 = distinct !{!94, !95, !"_ZN90_$LT$std..sync..remutex..ReentrantMutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5ded8294b181937fE: %self"}
!95 = distinct !{!95, !"_ZN90_$LT$std..sync..remutex..ReentrantMutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5ded8294b181937fE"}
!96 = !{!97}
!97 = distinct !{!97, !98, !"_ZN90_$LT$std..sync..remutex..ReentrantMutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5ded8294b181937fE: %self"}
!98 = distinct !{!98, !"_ZN90_$LT$std..sync..remutex..ReentrantMutexGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5ded8294b181937fE"}
!99 = !{!100}
!100 = distinct !{!100, !101, !"_ZN4core4char7methods15encode_utf8_raw17h2f28c279514d3feaE: %dst.0"}
!101 = distinct !{!101, !"_ZN4core4char7methods15encode_utf8_raw17h2f28c279514d3feaE"}
!102 = !{!103}
!103 = distinct !{!103, !104, !"_ZN4core3fmt5Write10write_char17hecd60418a48c6305E: %self"}
!104 = distinct !{!104, !"_ZN4core3fmt5Write10write_char17hecd60418a48c6305E"}
!105 = !{!106}
!106 = distinct !{!106, !107, !"_ZN4core4char7methods15encode_utf8_raw17h2f28c279514d3feaE: %dst.0"}
!107 = distinct !{!107, !"_ZN4core4char7methods15encode_utf8_raw17h2f28c279514d3feaE"}
!108 = !{!109, !111}
!109 = distinct !{!109, !110, !"_ZN4core3fmt5Write9write_fmt17hd05fcc92507d2152E: argument 0"}
!110 = distinct !{!110, !"_ZN4core3fmt5Write9write_fmt17hd05fcc92507d2152E"}
!111 = distinct !{!111, !110, !"_ZN4core3fmt5Write9write_fmt17hd05fcc92507d2152E: %args"}
!112 = !{!111}
