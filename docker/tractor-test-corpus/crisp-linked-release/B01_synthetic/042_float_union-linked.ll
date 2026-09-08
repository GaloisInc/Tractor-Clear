; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"core::fmt::rt::v1::Argument" = type { %"core::fmt::rt::v1::FormatSpec", i64 }
%"core::fmt::rt::v1::FormatSpec" = type { { i64, i64 }, { i64, i64 }, i32, i32, i8, [7 x i8] }
%"core::fmt::Arguments<'_>" = type { { ptr, i64 }, { ptr, i64 }, { ptr, i64 } }
%"alloc::string::String" = type { %"alloc::vec::Vec<u8>" }
%"alloc::vec::Vec<u8>" = type { { i64, ptr }, i64 }

@alloc_2a62ba4d4fa46537b277796d74f8c568 = private unnamed_addr constant <{}> zeroinitializer, align 8
@alloc_3bb2650aa074fcfb8c10a9c40791bfbc = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"-" }>, align 1
@alloc_ffa3cdb3ae88e54a1cc225f31dd07672 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @alloc_2a62ba4d4fa46537b277796d74f8c568, [8 x i8] zeroinitializer }>, align 8
@alloc_9ca051ae665b209cf72db9858d4dad1e = private unnamed_addr constant <{ [4 x i8] }> <{ [4 x i8] c"0x1." }>, align 1
@alloc_18c8b0724d8b679495e40da3a3f06821 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"p" }>, align 1
@alloc_e8815bc243df810d36cc4ee0b33fcbe2 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc_2a62ba4d4fa46537b277796d74f8c568, [8 x i8] zeroinitializer, ptr @alloc_9ca051ae665b209cf72db9858d4dad1e, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @alloc_18c8b0724d8b679495e40da3a3f06821, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc_730a95f6d15a7b1c83d54098acd72b78 = private unnamed_addr constant <{ [4 x i8] }> <{ [4 x i8] c"0x1p" }>, align 1
@alloc_911ecf92f2b4e3b0c8a01bc2e7c3d2e8 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc_2a62ba4d4fa46537b277796d74f8c568, [8 x i8] zeroinitializer, ptr @alloc_730a95f6d15a7b1c83d54098acd72b78, [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@alloc_bbe173742141154fcf253606867854d9 = private unnamed_addr constant <{ [3 x i8] }> <{ [3 x i8] c"nan" }>, align 1
@alloc_6c433d3c07b7c6453f8a17b49b46c496 = private unnamed_addr constant <{ [3 x i8] }> <{ [3 x i8] c"inf" }>, align 1
@alloc_2507832265edef6e7b0fc80b2a6f2136 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc_2a62ba4d4fa46537b277796d74f8c568, [8 x i8] zeroinitializer, ptr @alloc_6c433d3c07b7c6453f8a17b49b46c496, [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@alloc_ea6a83bd32a9944fbc3df4c899614fc2 = private unnamed_addr constant <{ [4 x i8] }> <{ [4 x i8] c"0x0." }>, align 1
@alloc_a8e4682289ec0fed5fe794333f8f17c1 = private unnamed_addr constant <{ [6 x i8] }> <{ [6 x i8] c"p-1022" }>, align 1
@alloc_f31a3399c1d97044f7512c11c63a54b9 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc_2a62ba4d4fa46537b277796d74f8c568, [8 x i8] zeroinitializer, ptr @alloc_ea6a83bd32a9944fbc3df4c899614fc2, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @alloc_a8e4682289ec0fed5fe794333f8f17c1, [8 x i8] c"\06\00\00\00\00\00\00\00" }>, align 8
@alloc_d47e899464903c36cb27fad60e571588 = private unnamed_addr constant <{ [6 x i8] }> <{ [6 x i8] c"0x0p+0" }>, align 1
@alloc_303107327c64404bf867c03ee8b0b179 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc_2a62ba4d4fa46537b277796d74f8c568, [8 x i8] zeroinitializer, ptr @alloc_d47e899464903c36cb27fad60e571588, [8 x i8] c"\06\00\00\00\00\00\00\00" }>, align 8
@alloc_0242e8ee118de705af76c627590b82cc = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c" " }>, align 1
@alloc_49a1e817e911805af64bbc7efb390101 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc_f05f44e9ce85bc09adfe8a57683c35b8 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @alloc_2a62ba4d4fa46537b277796d74f8c568, [8 x i8] zeroinitializer, ptr @alloc_0242e8ee118de705af76c627590b82cc, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @alloc_0242e8ee118de705af76c627590b82cc, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @alloc_49a1e817e911805af64bbc7efb390101, [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define void @driver(double noundef %f) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %_116.i.i = alloca [3 x %"core::fmt::rt::v1::Argument"], align 8
  %_106.i.i = alloca [3 x { ptr, ptr }], align 8
  %args21.i.i = alloca %"core::fmt::Arguments<'_>", align 8
  %res20.i.i = alloca %"alloc::string::String", align 8
  %_92.i.i = alloca [2 x %"core::fmt::rt::v1::Argument"], align 8
  %_84.i.i = alloca [2 x { ptr, ptr }], align 8
  %args15.i.i = alloca %"core::fmt::Arguments<'_>", align 8
  %res14.i.i = alloca %"alloc::string::String", align 8
  %frac_hex13.i.i = alloca { ptr, i64 }, align 8
  %_70.i.i = alloca [1 x %"core::fmt::rt::v1::Argument"], align 8
  %_65.i.i = alloca [1 x { ptr, ptr }], align 8
  %args11.i.i = alloca %"core::fmt::Arguments<'_>", align 8
  %res10.i.i = alloca %"alloc::string::String", align 8
  %exponent.i.i = alloca i32, align 4
  %_54.i.i = alloca [1 x { ptr, ptr }], align 8
  %args8.i.i = alloca %"core::fmt::Arguments<'_>", align 8
  %_43.i.i = alloca [2 x { ptr, ptr }], align 8
  %args5.i.i = alloca %"core::fmt::Arguments<'_>", align 8
  %res4.i.i = alloca %"alloc::string::String", align 8
  %frac_hex3.i.i = alloca { ptr, i64 }, align 8
  %_30.i.i = alloca [1 x %"core::fmt::rt::v1::Argument"], align 8
  %_25.i.i = alloca [1 x { ptr, ptr }], align 8
  %args2.i.i = alloca %"core::fmt::Arguments<'_>", align 8
  %res1.i.i = alloca %"alloc::string::String", align 8
  %_16.i.i = alloca [1 x { ptr, ptr }], align 8
  %args.i.i = alloca %"core::fmt::Arguments<'_>", align 8
  %frac.i.i = alloca i64, align 8
  %sign.i.i = alloca { ptr, i64 }, align 8
  %_18.i = alloca [3 x %"core::fmt::rt::v1::Argument"], align 8
  %_13.i = alloca %"alloc::string::String", align 8
  %_8.i = alloca [3 x { ptr, ptr }], align 8
  %_4.i = alloca %"core::fmt::Arguments<'_>", align 8
  %x.i = alloca i64, align 8
  %f.i = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %f.i)
  store double %f, ptr %f.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %x.i)
  store double %f, ptr %x.i, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_4.i)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_8.i)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_13.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %frac.i.i)
  %bits.i.i = bitcast double %f to i64
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sign.i.i), !noalias !2
  %0 = icmp slt i64 %bits.i.i, 0
  %spec.select.i.i = select i1 %0, ptr @alloc_3bb2650aa074fcfb8c10a9c40791bfbc, ptr @alloc_2a62ba4d4fa46537b277796d74f8c568
  %bits.lobit.i.i = lshr i64 %bits.i.i, 63
  store ptr %spec.select.i.i, ptr %sign.i.i, align 8, !noalias !2
  %1 = getelementptr inbounds { ptr, i64 }, ptr %sign.i.i, i64 0, i32 1
  store i64 %bits.lobit.i.i, ptr %1, align 8, !noalias !2
  %_8.i.i = lshr i64 %bits.i.i, 52
  %2 = trunc i64 %_8.i.i to i32
  %exp_bits.i.i = and i32 %2, 2047
  %3 = and i64 %bits.i.i, 4503599627370495
  store i64 %3, ptr %frac.i.i, align 8, !noalias !2
  switch i32 %exp_bits.i.i, label %"_ZN4core6option15Option$LT$T$GT$11map_or_else17h464883ade589ab75E.exit.i.i" [
    i32 0, label %bb4.i.i
    i32 2047, label %bb12.i.i
  ]

bb4.i.i:                                          ; preds = %start
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %"_ZN4core6option15Option$LT$T$GT$11map_or_else17h464883ade589ab75E.exit170.i.i", label %"_ZN4core6option15Option$LT$T$GT$11map_or_else17h464883ade589ab75E.exit198.i.i"

bb12.i.i:                                         ; preds = %start
  %5 = icmp eq i64 %3, 0
  br i1 %5, label %"_ZN4core6option15Option$LT$T$GT$11map_or_else17h464883ade589ab75E.exit141.i.i", label %bb16.i.i

"_ZN4core6option15Option$LT$T$GT$11map_or_else17h464883ade589ab75E.exit.i.i": ; preds = %start
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %exponent.i.i), !noalias !2
  %6 = add nsw i32 %exp_bits.i.i, -1023
  store i32 %6, ptr %exponent.i.i, align 4, !noalias !2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %res10.i.i), !noalias !2
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %args11.i.i), !noalias !2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_65.i.i), !noalias !2
  store ptr %frac.i.i, ptr %_65.i.i, align 8, !noalias !2
  %7 = getelementptr inbounds { ptr, ptr }, ptr %_65.i.i, i64 0, i32 1
  store ptr @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u64$GT$3fmt17h10918494ca6c685eE", ptr %7, align 8, !noalias !2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %_70.i.i), !noalias !2
  store i64 2, ptr %_70.i.i, align 8, !noalias !2
  %_71.sroa.0.sroa.5.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %_70.i.i, i64 16
  store i64 0, ptr %_71.sroa.0.sroa.5.0..sroa_idx.i.i, align 8, !noalias !2
  %_71.sroa.0.sroa.6.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %_70.i.i, i64 24
  store i64 13, ptr %_71.sroa.0.sroa.6.0..sroa_idx.i.i, align 8, !noalias !2
  %_71.sroa.0.sroa.7.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %_70.i.i, i64 32
  store i32 8, ptr %_71.sroa.0.sroa.7.0..sroa_idx.i.i, align 8, !noalias !2
  %_71.sroa.0.sroa.8.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %_70.i.i, i64 36
  store i32 32, ptr %_71.sroa.0.sroa.8.0..sroa_idx.i.i, align 4, !noalias !2
  %_71.sroa.0.sroa.9.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %_70.i.i, i64 40
  store i8 3, ptr %_71.sroa.0.sroa.9.0..sroa_idx.i.i, align 8, !noalias !2
  %_71.sroa.4.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %_70.i.i, i64 48
  store i64 0, ptr %_71.sroa.4.0..sroa_idx.i.i, align 8, !noalias !2
  %8 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %args11.i.i, i64 0, i32 1
  store ptr @alloc_ffa3cdb3ae88e54a1cc225f31dd07672, ptr %8, align 8, !noalias !2
  %9 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %args11.i.i, i64 0, i32 1, i32 1
  store i64 1, ptr %9, align 8, !noalias !2
  store ptr %_70.i.i, ptr %args11.i.i, align 8, !noalias !2
  %10 = getelementptr inbounds { ptr, i64 }, ptr %args11.i.i, i64 0, i32 1
  store i64 1, ptr %10, align 8, !noalias !2
  %11 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %args11.i.i, i64 0, i32 2
  store ptr %_65.i.i, ptr %11, align 8, !noalias !2
  %12 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %args11.i.i, i64 0, i32 2, i32 1
  store i64 1, ptr %12, align 8, !noalias !2
  call void @_ZN5alloc3fmt6format12format_inner17h69770a250c6ca940E(ptr noalias nocapture noundef nonnull sret(%"alloc::string::String") dereferenceable(24) %res10.i.i, ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %args11.i.i), !noalias !2
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %args11.i.i), !noalias !2
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %_70.i.i), !noalias !2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_65.i.i), !noalias !2
  %frac_hex9.sroa.0.0.copyload.i.i = load i64, ptr %res10.i.i, align 8, !noalias !2
  %frac_hex9.sroa.5.0.res10.sroa_idx.i.i = getelementptr inbounds i8, ptr %res10.i.i, i64 8
  %frac_hex9.sroa.5.0.copyload.i.i = load ptr, ptr %frac_hex9.sroa.5.0.res10.sroa_idx.i.i, align 8, !noalias !2, !nonnull !5
  %frac_hex9.sroa.8.0.res10.sroa_idx.i.i = getelementptr inbounds i8, ptr %res10.i.i, i64 16
  %frac_hex9.sroa.8.0.copyload.i.i = load i64, ptr %frac_hex9.sroa.8.0.res10.sroa_idx.i.i, align 8, !noalias !2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %res10.i.i), !noalias !2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %frac_hex13.i.i), !noalias !2
  %self.0.i11.i.i.i.i = ptrtoint ptr %frac_hex9.sroa.5.0.copyload.i.i to i64
  br label %bb1.i.i.i.i

bb1.i.i.i.i:                                      ; preds = %bb1.i.i.i.i.i, %"_ZN4core6option15Option$LT$T$GT$11map_or_else17h464883ade589ab75E.exit.i.i"
  %13 = phi i64 [ %21, %bb1.i.i.i.i.i ], [ %frac_hex9.sroa.8.0.copyload.i.i, %"_ZN4core6option15Option$LT$T$GT$11map_or_else17h464883ade589ab75E.exit.i.i" ]
  %14 = getelementptr inbounds i8, ptr %frac_hex9.sroa.5.0.copyload.i.i, i64 %13
  %_10.i.i.i.i.i.i.i = icmp eq i64 %13, 0
  br i1 %_10.i.i.i.i.i.i.i, label %bb1.i96.i.i, label %bb3.i.i.i.i.i.i

bb3.i.i.i.i.i.i:                                  ; preds = %bb1.i.i.i.i
  %15 = getelementptr inbounds i8, ptr %14, i64 -1
  %_8.i.i.i.i.i.i = load i8, ptr %15, align 1, !alias.scope !6, !noalias !9, !noundef !5
  %_7.i.i.i.i.i.i = icmp sgt i8 %_8.i.i.i.i.i.i, -1
  br i1 %_7.i.i.i.i.i.i, label %.thread16.i.i.i.i.i, label %bb7.i.i.i.i.i.i

bb7.i.i.i.i.i.i:                                  ; preds = %bb3.i.i.i.i.i.i
  %_10.i15.i.i.i.i.i.i = icmp ne ptr %15, %frac_hex9.sroa.5.0.copyload.i.i
  call void @llvm.assume(i1 %_10.i15.i.i.i.i.i.i)
  %16 = getelementptr inbounds i8, ptr %14, i64 -2
  %z.i.i.i.i.i.i = load i8, ptr %16, align 1, !alias.scope !6, !noalias !9, !noundef !5
  %_38.i.i.i.i.i.i = and i8 %z.i.i.i.i.i.i, 31
  %_15.i.i.i.i.i.i = zext i8 %_38.i.i.i.i.i.i to i32
  %_16.i.i.i.i.i.i = icmp slt i8 %z.i.i.i.i.i.i, -64
  br i1 %_16.i.i.i.i.i.i, label %bb9.i.i.i.i.i.i, label %19

.thread16.i.i.i.i.i:                              ; preds = %bb3.i.i.i.i.i.i
  %_9.i.i.i.i.i.i = zext i8 %_8.i.i.i.i.i.i to i32
  br label %bb1.i.i.i.i.i

bb9.i.i.i.i.i.i:                                  ; preds = %bb7.i.i.i.i.i.i
  %_10.i21.i.i.i.i.i.i = icmp ne ptr %16, %frac_hex9.sroa.5.0.copyload.i.i
  call void @llvm.assume(i1 %_10.i21.i.i.i.i.i.i)
  %17 = getelementptr inbounds i8, ptr %16, i64 -1
  %y.i.i.i.i.i.i = load i8, ptr %17, align 1, !alias.scope !6, !noalias !9, !noundef !5
  %_44.i.i.i.i.i.i = and i8 %y.i.i.i.i.i.i, 15
  %_20.i.i.i.i.i.i = zext i8 %_44.i.i.i.i.i.i to i32
  %_21.i.i.i.i.i.i = icmp slt i8 %y.i.i.i.i.i.i, -64
  br i1 %_21.i.i.i.i.i.i, label %bb11.i.i.i.i.i.i, label %bb13.i.i.i.i.i.i

bb13.i.i.i.i.i.i:                                 ; preds = %bb11.i.i.i.i.i.i, %bb9.i.i.i.i.i.i
  %iter.sroa.0.3.i.i.i.i.i = phi ptr [ %18, %bb11.i.i.i.i.i.i ], [ %17, %bb9.i.i.i.i.i.i ]
  %ch.1.i.i.i.i.i.i = phi i32 [ %_26.i.i.i.i.i.i, %bb11.i.i.i.i.i.i ], [ %_20.i.i.i.i.i.i, %bb9.i.i.i.i.i.i ]
  %_55.i.i.i.i.i.i = shl nuw nsw i32 %ch.1.i.i.i.i.i.i, 6
  %_57.i.i.i.i.i.i = and i8 %z.i.i.i.i.i.i, 63
  %_56.i.i.i.i.i.i = zext i8 %_57.i.i.i.i.i.i to i32
  %_28.i.i.i.i.i.i = or i32 %_55.i.i.i.i.i.i, %_56.i.i.i.i.i.i
  br label %19

bb11.i.i.i.i.i.i:                                 ; preds = %bb9.i.i.i.i.i.i
  %_10.i27.i.i.i.i.i.i = icmp ne ptr %17, %frac_hex9.sroa.5.0.copyload.i.i
  call void @llvm.assume(i1 %_10.i27.i.i.i.i.i.i)
  %18 = getelementptr inbounds i8, ptr %17, i64 -1
  %x.i.i.i.i.i.i = load i8, ptr %18, align 1, !alias.scope !6, !noalias !9, !noundef !5
  %_50.i.i.i.i.i.i = and i8 %x.i.i.i.i.i.i, 7
  %_25.i.i.i.i.i.i = zext i8 %_50.i.i.i.i.i.i to i32
  %_52.i.i.i.i.i.i = shl nuw nsw i32 %_25.i.i.i.i.i.i, 6
  %_54.i.i.i.i.i.i = and i8 %y.i.i.i.i.i.i, 63
  %_53.i.i.i.i.i.i = zext i8 %_54.i.i.i.i.i.i to i32
  %_26.i.i.i.i.i.i = or i32 %_52.i.i.i.i.i.i, %_53.i.i.i.i.i.i
  br label %bb13.i.i.i.i.i.i

19:                                               ; preds = %bb13.i.i.i.i.i.i, %bb7.i.i.i.i.i.i
  %iter.sroa.0.1.i.i.i.i.i = phi ptr [ %iter.sroa.0.3.i.i.i.i.i, %bb13.i.i.i.i.i.i ], [ %16, %bb7.i.i.i.i.i.i ]
  %ch.0.i.i.i.i.i.i = phi i32 [ %_28.i.i.i.i.i.i, %bb13.i.i.i.i.i.i ], [ %_15.i.i.i.i.i.i, %bb7.i.i.i.i.i.i ]
  %_58.i.i.i.i.i.i = shl nuw nsw i32 %ch.0.i.i.i.i.i.i, 6
  %_60.i.i.i.i.i.i = and i8 %_8.i.i.i.i.i.i, 63
  %_59.i.i.i.i.i.i = zext i8 %_60.i.i.i.i.i.i to i32
  %_30.i.i.i.i.i.i = or i32 %_58.i.i.i.i.i.i, %_59.i.i.i.i.i.i
  %.not.i.i.i.i.i = icmp eq i32 %_30.i.i.i.i.i.i, 1114112
  br i1 %.not.i.i.i.i.i, label %bb1.i96.i.i, label %bb1.i.i.i.i.i

bb1.i.i.i.i.i:                                    ; preds = %19, %.thread16.i.i.i.i.i
  %.sroa.4.1.i.ph21.i.i.i.i.i = phi i32 [ %_9.i.i.i.i.i.i, %.thread16.i.i.i.i.i ], [ %_30.i.i.i.i.i.i, %19 ]
  %iter.sroa.0.5.ph20.i.i.i.i.i = phi ptr [ %15, %.thread16.i.i.i.i.i ], [ %iter.sroa.0.1.i.i.i.i.i, %19 ]
  %20 = ptrtoint ptr %iter.sroa.0.5.ph20.i.i.i.i.i to i64
  %21 = sub i64 %20, %self.0.i11.i.i.i.i
  %_17.i.i.i.i.i = icmp eq i32 %.sroa.4.1.i.ph21.i.i.i.i.i, 48
  br i1 %_17.i.i.i.i.i, label %bb1.i.i.i.i, label %bb1.i80.i.i

cleanup.i.i:                                      ; preds = %bb1.i96.i.i, %bb1.i80.i.i
  %22 = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c1453a248308996E"(i64 %frac_hex9.sroa.0.0.copyload.i.i, ptr nonnull %frac_hex9.sroa.5.0.copyload.i.i) #10, !noalias !2
  br label %common.resume.i

bb1.i80.i.i:                                      ; preds = %bb1.i.i.i.i.i
  store ptr %frac_hex9.sroa.5.0.copyload.i.i, ptr %frac_hex13.i.i, align 8, !noalias !2
  %.fca.1.gep43.i.i = getelementptr inbounds { ptr, i64 }, ptr %frac_hex13.i.i, i64 0, i32 1
  store i64 %13, ptr %.fca.1.gep43.i.i, align 8, !noalias !2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %res20.i.i), !noalias !2
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %args21.i.i), !noalias !2
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_106.i.i), !noalias !2
  store ptr %sign.i.i, ptr %_106.i.i, align 8, !noalias !2
  %23 = getelementptr inbounds { ptr, ptr }, ptr %_106.i.i, i64 0, i32 1
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6ef0efaac15b9818E", ptr %23, align 8, !noalias !2
  %24 = getelementptr inbounds [3 x { ptr, ptr }], ptr %_106.i.i, i64 0, i64 1
  store ptr %frac_hex13.i.i, ptr %24, align 8, !noalias !2
  %25 = getelementptr inbounds [3 x { ptr, ptr }], ptr %_106.i.i, i64 0, i64 1, i32 1
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6ef0efaac15b9818E", ptr %25, align 8, !noalias !2
  %26 = getelementptr inbounds [3 x { ptr, ptr }], ptr %_106.i.i, i64 0, i64 2
  store ptr %exponent.i.i, ptr %26, align 8, !noalias !2
  %27 = getelementptr inbounds [3 x { ptr, ptr }], ptr %_106.i.i, i64 0, i64 2, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %27, align 8, !noalias !2
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %_116.i.i), !noalias !2
  store i64 2, ptr %_116.i.i, align 8, !noalias !2
  %_117.sroa.0.sroa.5.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %_116.i.i, i64 16
  store i64 2, ptr %_117.sroa.0.sroa.5.0..sroa_idx.i.i, align 8, !noalias !2
  %_117.sroa.0.sroa.7.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %_116.i.i, i64 32
  store i32 0, ptr %_117.sroa.0.sroa.7.0..sroa_idx.i.i, align 8, !noalias !2
  %_117.sroa.0.sroa.8.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %_116.i.i, i64 36
  store i32 32, ptr %_117.sroa.0.sroa.8.0..sroa_idx.i.i, align 4, !noalias !2
  %_117.sroa.0.sroa.9.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %_116.i.i, i64 40
  store i8 3, ptr %_117.sroa.0.sroa.9.0..sroa_idx.i.i, align 8, !noalias !2
  %_117.sroa.4.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %_116.i.i, i64 48
  store i64 0, ptr %_117.sroa.4.0..sroa_idx.i.i, align 8, !noalias !2
  %28 = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_116.i.i, i64 0, i64 1
  store i64 2, ptr %28, align 8, !noalias !2
  %_121.sroa.0.sroa.5.0..sroa_idx.i.i = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_116.i.i, i64 0, i64 1, i32 0, i32 1
  store i64 2, ptr %_121.sroa.0.sroa.5.0..sroa_idx.i.i, align 8, !noalias !2
  %_121.sroa.0.sroa.7.0..sroa_idx.i.i = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_116.i.i, i64 0, i64 1, i32 0, i32 2
  store i32 0, ptr %_121.sroa.0.sroa.7.0..sroa_idx.i.i, align 8, !noalias !2
  %_121.sroa.0.sroa.8.0..sroa_idx.i.i = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_116.i.i, i64 0, i64 1, i32 0, i32 3
  store i32 32, ptr %_121.sroa.0.sroa.8.0..sroa_idx.i.i, align 4, !noalias !2
  %_121.sroa.0.sroa.9.0..sroa_idx.i.i = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_116.i.i, i64 0, i64 1, i32 0, i32 4
  store i8 3, ptr %_121.sroa.0.sroa.9.0..sroa_idx.i.i, align 8, !noalias !2
  %_121.sroa.4.0..sroa_idx.i.i = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_116.i.i, i64 0, i64 1, i32 1
  store i64 1, ptr %_121.sroa.4.0..sroa_idx.i.i, align 8, !noalias !2
  %29 = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_116.i.i, i64 0, i64 2
  store i64 2, ptr %29, align 8, !noalias !2
  %_125.sroa.0.sroa.5.0..sroa_idx.i.i = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_116.i.i, i64 0, i64 2, i32 0, i32 1
  store i64 2, ptr %_125.sroa.0.sroa.5.0..sroa_idx.i.i, align 8, !noalias !2
  %_125.sroa.0.sroa.7.0..sroa_idx.i.i = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_116.i.i, i64 0, i64 2, i32 0, i32 2
  store i32 1, ptr %_125.sroa.0.sroa.7.0..sroa_idx.i.i, align 8, !noalias !2
  %_125.sroa.0.sroa.8.0..sroa_idx.i.i = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_116.i.i, i64 0, i64 2, i32 0, i32 3
  store i32 32, ptr %_125.sroa.0.sroa.8.0..sroa_idx.i.i, align 4, !noalias !2
  %_125.sroa.0.sroa.9.0..sroa_idx.i.i = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_116.i.i, i64 0, i64 2, i32 0, i32 4
  store i8 3, ptr %_125.sroa.0.sroa.9.0..sroa_idx.i.i, align 8, !noalias !2
  %_125.sroa.4.0..sroa_idx.i.i = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_116.i.i, i64 0, i64 2, i32 1
  store i64 2, ptr %_125.sroa.4.0..sroa_idx.i.i, align 8, !noalias !2
  %30 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %args21.i.i, i64 0, i32 1
  store ptr @alloc_e8815bc243df810d36cc4ee0b33fcbe2, ptr %30, align 8, !noalias !2
  %31 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %args21.i.i, i64 0, i32 1, i32 1
  store i64 3, ptr %31, align 8, !noalias !2
  store ptr %_116.i.i, ptr %args21.i.i, align 8, !noalias !2
  %32 = getelementptr inbounds { ptr, i64 }, ptr %args21.i.i, i64 0, i32 1
  store i64 3, ptr %32, align 8, !noalias !2
  %33 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %args21.i.i, i64 0, i32 2
  store ptr %_106.i.i, ptr %33, align 8, !noalias !2
  %34 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %args21.i.i, i64 0, i32 2, i32 1
  store i64 3, ptr %34, align 8, !noalias !2
  invoke void @_ZN5alloc3fmt6format12format_inner17h69770a250c6ca940E(ptr noalias nocapture noundef nonnull sret(%"alloc::string::String") dereferenceable(24) %res20.i.i, ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %args21.i.i)
          to label %bb43.i.i unwind label %cleanup.i.i, !noalias !2

bb43.i.i:                                         ; preds = %bb1.i80.i.i
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %args21.i.i), !noalias !2
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %_116.i.i), !noalias !2
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_106.i.i), !noalias !2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_13.i, ptr noundef nonnull align 8 dereferenceable(24) %res20.i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %res20.i.i), !noalias !2
  br label %bb21.i.i

bb21.i.i:                                         ; preds = %bb41.i.i, %bb43.i.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %frac_hex13.i.i), !noalias !2
  %_3.i.i.i.i.i.i.i = icmp eq i64 %frac_hex9.sroa.0.0.copyload.i.i, 0
  br i1 %_3.i.i.i.i.i.i.i, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c1453a248308996E.exit.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17he8928256f518c172E.exit.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17he8928256f518c172E.exit.i.i.i.i.i.i": ; preds = %bb21.i.i
  call void @__rust_dealloc(ptr noundef nonnull %frac_hex9.sroa.5.0.copyload.i.i, i64 noundef %frac_hex9.sroa.0.0.copyload.i.i, i64 noundef 1) #11, !noalias !2
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c1453a248308996E.exit.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c1453a248308996E.exit.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17he8928256f518c172E.exit.i.i.i.i.i.i", %bb21.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %exponent.i.i), !noalias !2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sign.i.i), !noalias !2
  br label %bb2.i

bb1.i96.i.i:                                      ; preds = %19, %bb1.i.i.i.i
  store ptr %frac_hex9.sroa.5.0.copyload.i.i, ptr %frac_hex13.i.i, align 8, !noalias !2
  %.fca.1.gep43282.i.i = getelementptr inbounds { ptr, i64 }, ptr %frac_hex13.i.i, i64 0, i32 1
  store i64 0, ptr %.fca.1.gep43282.i.i, align 8, !noalias !2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %res14.i.i), !noalias !2
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %args15.i.i), !noalias !2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %_84.i.i), !noalias !2
  store ptr %sign.i.i, ptr %_84.i.i, align 8, !noalias !2
  %35 = getelementptr inbounds { ptr, ptr }, ptr %_84.i.i, i64 0, i32 1
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6ef0efaac15b9818E", ptr %35, align 8, !noalias !2
  %36 = getelementptr inbounds [2 x { ptr, ptr }], ptr %_84.i.i, i64 0, i64 1
  store ptr %exponent.i.i, ptr %36, align 8, !noalias !2
  %37 = getelementptr inbounds [2 x { ptr, ptr }], ptr %_84.i.i, i64 0, i64 1, i32 1
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE", ptr %37, align 8, !noalias !2
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %_92.i.i), !noalias !2
  store i64 2, ptr %_92.i.i, align 8, !noalias !2
  %_93.sroa.0.sroa.5.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %_92.i.i, i64 16
  store i64 2, ptr %_93.sroa.0.sroa.5.0..sroa_idx.i.i, align 8, !noalias !2
  %_93.sroa.0.sroa.7.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %_92.i.i, i64 32
  store i32 0, ptr %_93.sroa.0.sroa.7.0..sroa_idx.i.i, align 8, !noalias !2
  %_93.sroa.0.sroa.8.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %_92.i.i, i64 36
  store i32 32, ptr %_93.sroa.0.sroa.8.0..sroa_idx.i.i, align 4, !noalias !2
  %_93.sroa.0.sroa.9.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %_92.i.i, i64 40
  store i8 3, ptr %_93.sroa.0.sroa.9.0..sroa_idx.i.i, align 8, !noalias !2
  %_93.sroa.4.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %_92.i.i, i64 48
  store i64 0, ptr %_93.sroa.4.0..sroa_idx.i.i, align 8, !noalias !2
  %38 = getelementptr inbounds [2 x %"core::fmt::rt::v1::Argument"], ptr %_92.i.i, i64 0, i64 1
  store i64 2, ptr %38, align 8, !noalias !2
  %_97.sroa.0.sroa.5.0..sroa_idx.i.i = getelementptr inbounds [2 x %"core::fmt::rt::v1::Argument"], ptr %_92.i.i, i64 0, i64 1, i32 0, i32 1
  store i64 2, ptr %_97.sroa.0.sroa.5.0..sroa_idx.i.i, align 8, !noalias !2
  %_97.sroa.0.sroa.7.0..sroa_idx.i.i = getelementptr inbounds [2 x %"core::fmt::rt::v1::Argument"], ptr %_92.i.i, i64 0, i64 1, i32 0, i32 2
  store i32 1, ptr %_97.sroa.0.sroa.7.0..sroa_idx.i.i, align 8, !noalias !2
  %_97.sroa.0.sroa.8.0..sroa_idx.i.i = getelementptr inbounds [2 x %"core::fmt::rt::v1::Argument"], ptr %_92.i.i, i64 0, i64 1, i32 0, i32 3
  store i32 32, ptr %_97.sroa.0.sroa.8.0..sroa_idx.i.i, align 4, !noalias !2
  %_97.sroa.0.sroa.9.0..sroa_idx.i.i = getelementptr inbounds [2 x %"core::fmt::rt::v1::Argument"], ptr %_92.i.i, i64 0, i64 1, i32 0, i32 4
  store i8 3, ptr %_97.sroa.0.sroa.9.0..sroa_idx.i.i, align 8, !noalias !2
  %_97.sroa.4.0..sroa_idx.i.i = getelementptr inbounds [2 x %"core::fmt::rt::v1::Argument"], ptr %_92.i.i, i64 0, i64 1, i32 1
  store i64 1, ptr %_97.sroa.4.0..sroa_idx.i.i, align 8, !noalias !2
  %39 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %args15.i.i, i64 0, i32 1
  store ptr @alloc_911ecf92f2b4e3b0c8a01bc2e7c3d2e8, ptr %39, align 8, !noalias !2
  %40 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %args15.i.i, i64 0, i32 1, i32 1
  store i64 2, ptr %40, align 8, !noalias !2
  store ptr %_92.i.i, ptr %args15.i.i, align 8, !noalias !2
  %41 = getelementptr inbounds { ptr, i64 }, ptr %args15.i.i, i64 0, i32 1
  store i64 2, ptr %41, align 8, !noalias !2
  %42 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %args15.i.i, i64 0, i32 2
  store ptr %_84.i.i, ptr %42, align 8, !noalias !2
  %43 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %args15.i.i, i64 0, i32 2, i32 1
  store i64 2, ptr %43, align 8, !noalias !2
  invoke void @_ZN5alloc3fmt6format12format_inner17h69770a250c6ca940E(ptr noalias nocapture noundef nonnull sret(%"alloc::string::String") dereferenceable(24) %res14.i.i, ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %args15.i.i)
          to label %bb41.i.i unwind label %cleanup.i.i, !noalias !2

bb41.i.i:                                         ; preds = %bb1.i96.i.i
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %args15.i.i), !noalias !2
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %_92.i.i), !noalias !2
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %_84.i.i), !noalias !2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_13.i, ptr noundef nonnull align 8 dereferenceable(24) %res14.i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %res14.i.i), !noalias !2
  br label %bb21.i.i

common.resume.i:                                  ; preds = %cleanup.i, %cleanup37.i.i, %cleanup.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %80, %cleanup.i ], [ %22, %cleanup.i.i ], [ %71, %cleanup37.i.i ]
  resume { ptr, i32 } %common.resume.op.i

"_ZN4core6option15Option$LT$T$GT$11map_or_else17h464883ade589ab75E.exit141.i.i": ; preds = %bb12.i.i
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %args8.i.i), !noalias !2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_54.i.i), !noalias !2
  store ptr %sign.i.i, ptr %_54.i.i, align 8, !noalias !2
  %44 = getelementptr inbounds { ptr, ptr }, ptr %_54.i.i, i64 0, i32 1
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6ef0efaac15b9818E", ptr %44, align 8, !noalias !2
  %45 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %args8.i.i, i64 0, i32 1
  store ptr @alloc_2507832265edef6e7b0fc80b2a6f2136, ptr %45, align 8, !alias.scope !18, !noalias !21
  %46 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %args8.i.i, i64 0, i32 1, i32 1
  store i64 2, ptr %46, align 8, !alias.scope !18, !noalias !21
  store ptr null, ptr %args8.i.i, align 8, !alias.scope !18, !noalias !21
  %47 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %args8.i.i, i64 0, i32 2
  store ptr %_54.i.i, ptr %47, align 8, !alias.scope !18, !noalias !21
  %48 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %args8.i.i, i64 0, i32 2, i32 1
  store i64 1, ptr %48, align 8, !alias.scope !18, !noalias !21
  call void @_ZN5alloc3fmt6format12format_inner17h69770a250c6ca940E(ptr noalias nocapture noundef nonnull sret(%"alloc::string::String") dereferenceable(24) %_13.i, ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %args8.i.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %args8.i.i), !noalias !2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_54.i.i), !noalias !2
  br label %bb24.i.i

bb16.i.i:                                         ; preds = %bb12.i.i
  %49 = tail call noundef dereferenceable_or_null(3) ptr @__rust_alloc(i64 noundef 3, i64 noundef 1) #11, !noalias !24
  %50 = icmp eq ptr %49, null
  br i1 %50, label %bb17.i.i.i.i.i, label %"_ZN5alloc5slice64_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$$u5b$T$u5d$$GT$8to_owned17hd52894607aaea70eE.exit.i.i"

bb17.i.i.i.i.i:                                   ; preds = %bb16.i.i
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h944707b833928a89E(i64 noundef 3, i64 noundef 1) #12, !noalias !24
  unreachable

"_ZN5alloc5slice64_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$$u5b$T$u5d$$GT$8to_owned17hd52894607aaea70eE.exit.i.i": ; preds = %bb16.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %49, ptr noundef nonnull align 1 dereferenceable(3) @alloc_bbe173742141154fcf253606867854d9, i64 3, i1 false), !noalias !2
  store i64 3, ptr %_13.i, align 8, !alias.scope !2
  %bytes.sroa.4.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %_13.i, i64 8
  store ptr %49, ptr %bytes.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2
  %bytes.sroa.5.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %_13.i, i64 16
  store i64 3, ptr %bytes.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2
  br label %bb24.i.i

bb24.i.i:                                         ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17he8928256f518c172E.exit.i.i.i.i280.i.i", %bb34.i.i, %"_ZN4core6option15Option$LT$T$GT$11map_or_else17h464883ade589ab75E.exit170.i.i", %"_ZN5alloc5slice64_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$$u5b$T$u5d$$GT$8to_owned17hd52894607aaea70eE.exit.i.i", %"_ZN4core6option15Option$LT$T$GT$11map_or_else17h464883ade589ab75E.exit141.i.i"
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sign.i.i), !noalias !2
  br label %bb2.i

"_ZN4core6option15Option$LT$T$GT$11map_or_else17h464883ade589ab75E.exit170.i.i": ; preds = %bb4.i.i
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %args.i.i), !noalias !2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_16.i.i), !noalias !2
  store ptr %sign.i.i, ptr %_16.i.i, align 8, !noalias !2
  %51 = getelementptr inbounds { ptr, ptr }, ptr %_16.i.i, i64 0, i32 1
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6ef0efaac15b9818E", ptr %51, align 8, !noalias !2
  %52 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %args.i.i, i64 0, i32 1
  store ptr @alloc_303107327c64404bf867c03ee8b0b179, ptr %52, align 8, !alias.scope !31, !noalias !34
  %53 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %args.i.i, i64 0, i32 1, i32 1
  store i64 2, ptr %53, align 8, !alias.scope !31, !noalias !34
  store ptr null, ptr %args.i.i, align 8, !alias.scope !31, !noalias !34
  %54 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %args.i.i, i64 0, i32 2
  store ptr %_16.i.i, ptr %54, align 8, !alias.scope !31, !noalias !34
  %55 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %args.i.i, i64 0, i32 2, i32 1
  store i64 1, ptr %55, align 8, !alias.scope !31, !noalias !34
  call void @_ZN5alloc3fmt6format12format_inner17h69770a250c6ca940E(ptr noalias nocapture noundef nonnull sret(%"alloc::string::String") dereferenceable(24) %_13.i, ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %args.i.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %args.i.i), !noalias !2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_16.i.i), !noalias !2
  br label %bb24.i.i

"_ZN4core6option15Option$LT$T$GT$11map_or_else17h464883ade589ab75E.exit198.i.i": ; preds = %bb4.i.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %res1.i.i), !noalias !2
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %args2.i.i), !noalias !2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_25.i.i), !noalias !2
  store ptr %frac.i.i, ptr %_25.i.i, align 8, !noalias !2
  %56 = getelementptr inbounds { ptr, ptr }, ptr %_25.i.i, i64 0, i32 1
  store ptr @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u64$GT$3fmt17h10918494ca6c685eE", ptr %56, align 8, !noalias !2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %_30.i.i), !noalias !2
  store i64 2, ptr %_30.i.i, align 8, !noalias !2
  %_31.sroa.0.sroa.5.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %_30.i.i, i64 16
  store i64 0, ptr %_31.sroa.0.sroa.5.0..sroa_idx.i.i, align 8, !noalias !2
  %_31.sroa.0.sroa.6.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %_30.i.i, i64 24
  store i64 13, ptr %_31.sroa.0.sroa.6.0..sroa_idx.i.i, align 8, !noalias !2
  %_31.sroa.0.sroa.7.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %_30.i.i, i64 32
  store i32 8, ptr %_31.sroa.0.sroa.7.0..sroa_idx.i.i, align 8, !noalias !2
  %_31.sroa.0.sroa.8.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %_30.i.i, i64 36
  store i32 32, ptr %_31.sroa.0.sroa.8.0..sroa_idx.i.i, align 4, !noalias !2
  %_31.sroa.0.sroa.9.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %_30.i.i, i64 40
  store i8 3, ptr %_31.sroa.0.sroa.9.0..sroa_idx.i.i, align 8, !noalias !2
  %_31.sroa.4.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %_30.i.i, i64 48
  store i64 0, ptr %_31.sroa.4.0..sroa_idx.i.i, align 8, !noalias !2
  %57 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %args2.i.i, i64 0, i32 1
  store ptr @alloc_ffa3cdb3ae88e54a1cc225f31dd07672, ptr %57, align 8, !noalias !2
  %58 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %args2.i.i, i64 0, i32 1, i32 1
  store i64 1, ptr %58, align 8, !noalias !2
  store ptr %_30.i.i, ptr %args2.i.i, align 8, !noalias !2
  %59 = getelementptr inbounds { ptr, i64 }, ptr %args2.i.i, i64 0, i32 1
  store i64 1, ptr %59, align 8, !noalias !2
  %60 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %args2.i.i, i64 0, i32 2
  store ptr %_25.i.i, ptr %60, align 8, !noalias !2
  %61 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %args2.i.i, i64 0, i32 2, i32 1
  store i64 1, ptr %61, align 8, !noalias !2
  call void @_ZN5alloc3fmt6format12format_inner17h69770a250c6ca940E(ptr noalias nocapture noundef nonnull sret(%"alloc::string::String") dereferenceable(24) %res1.i.i, ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %args2.i.i), !noalias !2
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %args2.i.i), !noalias !2
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %_30.i.i), !noalias !2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_25.i.i), !noalias !2
  %frac_hex.sroa.0.0.copyload.i.i = load i64, ptr %res1.i.i, align 8, !noalias !2
  %frac_hex.sroa.5.0.res1.sroa_idx.i.i = getelementptr inbounds i8, ptr %res1.i.i, i64 8
  %frac_hex.sroa.5.0.copyload.i.i = load ptr, ptr %frac_hex.sroa.5.0.res1.sroa_idx.i.i, align 8, !noalias !2, !nonnull !5
  %frac_hex.sroa.8.0.res1.sroa_idx.i.i = getelementptr inbounds i8, ptr %res1.i.i, i64 16
  %frac_hex.sroa.8.0.copyload.i.i = load i64, ptr %frac_hex.sroa.8.0.res1.sroa_idx.i.i, align 8, !noalias !2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %res1.i.i), !noalias !2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %frac_hex3.i.i), !noalias !2
  %self.0.i11.i.i199.i.i = ptrtoint ptr %frac_hex.sroa.5.0.copyload.i.i to i64
  br label %bb1.i.i201.i.i

bb1.i.i201.i.i:                                   ; preds = %bb1.i.i.i245.i.i, %"_ZN4core6option15Option$LT$T$GT$11map_or_else17h464883ade589ab75E.exit198.i.i"
  %62 = phi i64 [ %70, %bb1.i.i.i245.i.i ], [ %frac_hex.sroa.8.0.copyload.i.i, %"_ZN4core6option15Option$LT$T$GT$11map_or_else17h464883ade589ab75E.exit198.i.i" ]
  %63 = getelementptr inbounds i8, ptr %frac_hex.sroa.5.0.copyload.i.i, i64 %62
  %_10.i.i.i.i.i200.i.i = icmp eq i64 %62, 0
  br i1 %_10.i.i.i.i.i200.i.i, label %bb1.i262.i.i, label %bb3.i.i.i.i204.i.i

bb3.i.i.i.i204.i.i:                               ; preds = %bb1.i.i201.i.i
  %64 = getelementptr inbounds i8, ptr %63, i64 -1
  %_8.i.i.i.i202.i.i = load i8, ptr %64, align 1, !alias.scope !37, !noalias !40, !noundef !5
  %_7.i.i.i.i203.i.i = icmp sgt i8 %_8.i.i.i.i202.i.i, -1
  br i1 %_7.i.i.i.i203.i.i, label %.thread16.i.i.i212.i.i, label %bb7.i.i.i.i210.i.i

bb7.i.i.i.i210.i.i:                               ; preds = %bb3.i.i.i.i204.i.i
  %_10.i15.i.i.i.i205.i.i = icmp ne ptr %64, %frac_hex.sroa.5.0.copyload.i.i
  call void @llvm.assume(i1 %_10.i15.i.i.i.i205.i.i)
  %65 = getelementptr inbounds i8, ptr %63, i64 -2
  %z.i.i.i.i206.i.i = load i8, ptr %65, align 1, !alias.scope !37, !noalias !40, !noundef !5
  %_38.i.i.i.i207.i.i = and i8 %z.i.i.i.i206.i.i, 31
  %_15.i.i.i.i208.i.i = zext i8 %_38.i.i.i.i207.i.i to i32
  %_16.i.i.i.i209.i.i = icmp slt i8 %z.i.i.i.i206.i.i, -64
  br i1 %_16.i.i.i.i209.i.i, label %bb9.i.i.i.i218.i.i, label %68

.thread16.i.i.i212.i.i:                           ; preds = %bb3.i.i.i.i204.i.i
  %_9.i.i.i.i211.i.i = zext i8 %_8.i.i.i.i202.i.i to i32
  br label %bb1.i.i.i245.i.i

bb9.i.i.i.i218.i.i:                               ; preds = %bb7.i.i.i.i210.i.i
  %_10.i21.i.i.i.i213.i.i = icmp ne ptr %65, %frac_hex.sroa.5.0.copyload.i.i
  call void @llvm.assume(i1 %_10.i21.i.i.i.i213.i.i)
  %66 = getelementptr inbounds i8, ptr %65, i64 -1
  %y.i.i.i.i214.i.i = load i8, ptr %66, align 1, !alias.scope !37, !noalias !40, !noundef !5
  %_44.i.i.i.i215.i.i = and i8 %y.i.i.i.i214.i.i, 15
  %_20.i.i.i.i216.i.i = zext i8 %_44.i.i.i.i215.i.i to i32
  %_21.i.i.i.i217.i.i = icmp slt i8 %y.i.i.i.i214.i.i, -64
  br i1 %_21.i.i.i.i217.i.i, label %bb11.i.i.i.i234.i.i, label %bb13.i.i.i.i225.i.i

bb13.i.i.i.i225.i.i:                              ; preds = %bb11.i.i.i.i234.i.i, %bb9.i.i.i.i218.i.i
  %iter.sroa.0.3.i.i.i219.i.i = phi ptr [ %67, %bb11.i.i.i.i234.i.i ], [ %66, %bb9.i.i.i.i218.i.i ]
  %ch.1.i.i.i.i220.i.i = phi i32 [ %_26.i.i.i.i233.i.i, %bb11.i.i.i.i234.i.i ], [ %_20.i.i.i.i216.i.i, %bb9.i.i.i.i218.i.i ]
  %_55.i.i.i.i221.i.i = shl nuw nsw i32 %ch.1.i.i.i.i220.i.i, 6
  %_57.i.i.i.i222.i.i = and i8 %z.i.i.i.i206.i.i, 63
  %_56.i.i.i.i223.i.i = zext i8 %_57.i.i.i.i222.i.i to i32
  %_28.i.i.i.i224.i.i = or i32 %_55.i.i.i.i221.i.i, %_56.i.i.i.i223.i.i
  br label %68

bb11.i.i.i.i234.i.i:                              ; preds = %bb9.i.i.i.i218.i.i
  %_10.i27.i.i.i.i226.i.i = icmp ne ptr %66, %frac_hex.sroa.5.0.copyload.i.i
  call void @llvm.assume(i1 %_10.i27.i.i.i.i226.i.i)
  %67 = getelementptr inbounds i8, ptr %66, i64 -1
  %x.i.i.i.i227.i.i = load i8, ptr %67, align 1, !alias.scope !37, !noalias !40, !noundef !5
  %_50.i.i.i.i228.i.i = and i8 %x.i.i.i.i227.i.i, 7
  %_25.i.i.i.i229.i.i = zext i8 %_50.i.i.i.i228.i.i to i32
  %_52.i.i.i.i230.i.i = shl nuw nsw i32 %_25.i.i.i.i229.i.i, 6
  %_54.i.i.i.i231.i.i = and i8 %y.i.i.i.i214.i.i, 63
  %_53.i.i.i.i232.i.i = zext i8 %_54.i.i.i.i231.i.i to i32
  %_26.i.i.i.i233.i.i = or i32 %_52.i.i.i.i230.i.i, %_53.i.i.i.i232.i.i
  br label %bb13.i.i.i.i225.i.i

68:                                               ; preds = %bb13.i.i.i.i225.i.i, %bb7.i.i.i.i210.i.i
  %iter.sroa.0.1.i.i.i235.i.i = phi ptr [ %iter.sroa.0.3.i.i.i219.i.i, %bb13.i.i.i.i225.i.i ], [ %65, %bb7.i.i.i.i210.i.i ]
  %ch.0.i.i.i.i236.i.i = phi i32 [ %_28.i.i.i.i224.i.i, %bb13.i.i.i.i225.i.i ], [ %_15.i.i.i.i208.i.i, %bb7.i.i.i.i210.i.i ]
  %_58.i.i.i.i237.i.i = shl nuw nsw i32 %ch.0.i.i.i.i236.i.i, 6
  %_60.i.i.i.i238.i.i = and i8 %_8.i.i.i.i202.i.i, 63
  %_59.i.i.i.i239.i.i = zext i8 %_60.i.i.i.i238.i.i to i32
  %_30.i.i.i.i240.i.i = or i32 %_58.i.i.i.i237.i.i, %_59.i.i.i.i239.i.i
  %.not.i.i.i241.i.i = icmp eq i32 %_30.i.i.i.i240.i.i, 1114112
  br i1 %.not.i.i.i241.i.i, label %bb1.i262.i.i, label %bb1.i.i.i245.i.i

bb1.i.i.i245.i.i:                                 ; preds = %68, %.thread16.i.i.i212.i.i
  %.sroa.4.1.i.ph21.i.i.i242.i.i = phi i32 [ %_9.i.i.i.i211.i.i, %.thread16.i.i.i212.i.i ], [ %_30.i.i.i.i240.i.i, %68 ]
  %iter.sroa.0.5.ph20.i.i.i243.i.i = phi ptr [ %64, %.thread16.i.i.i212.i.i ], [ %iter.sroa.0.1.i.i.i235.i.i, %68 ]
  %69 = ptrtoint ptr %iter.sroa.0.5.ph20.i.i.i243.i.i to i64
  %70 = sub i64 %69, %self.0.i11.i.i199.i.i
  %_17.i.i.i244.i.i = icmp eq i32 %.sroa.4.1.i.ph21.i.i.i242.i.i, 48
  br i1 %_17.i.i.i244.i.i, label %bb1.i.i201.i.i, label %bb1.i262.i.i

cleanup37.i.i:                                    ; preds = %bb1.i262.i.i
  %71 = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c1453a248308996E"(i64 %frac_hex.sroa.0.0.copyload.i.i, ptr nonnull %frac_hex.sroa.5.0.copyload.i.i) #10, !noalias !2
  br label %common.resume.i

bb1.i262.i.i:                                     ; preds = %bb1.i.i.i245.i.i, %68, %bb1.i.i201.i.i
  %72 = phi i64 [ %62, %bb1.i.i.i245.i.i ], [ 0, %bb1.i.i201.i.i ], [ 0, %68 ]
  store ptr %frac_hex.sroa.5.0.copyload.i.i, ptr %frac_hex3.i.i, align 8, !noalias !2
  %.fca.1.gep.i.i = getelementptr inbounds { ptr, i64 }, ptr %frac_hex3.i.i, i64 0, i32 1
  store i64 %72, ptr %.fca.1.gep.i.i, align 8, !noalias !2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %res4.i.i), !noalias !2
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %args5.i.i), !noalias !2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %_43.i.i), !noalias !2
  store ptr %sign.i.i, ptr %_43.i.i, align 8, !noalias !2
  %73 = getelementptr inbounds { ptr, ptr }, ptr %_43.i.i, i64 0, i32 1
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6ef0efaac15b9818E", ptr %73, align 8, !noalias !2
  %74 = getelementptr inbounds [2 x { ptr, ptr }], ptr %_43.i.i, i64 0, i64 1
  store ptr %frac_hex3.i.i, ptr %74, align 8, !noalias !2
  %75 = getelementptr inbounds [2 x { ptr, ptr }], ptr %_43.i.i, i64 0, i64 1, i32 1
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6ef0efaac15b9818E", ptr %75, align 8, !noalias !2
  %76 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %args5.i.i, i64 0, i32 1
  store ptr @alloc_f31a3399c1d97044f7512c11c63a54b9, ptr %76, align 8, !alias.scope !49, !noalias !52
  %77 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %args5.i.i, i64 0, i32 1, i32 1
  store i64 3, ptr %77, align 8, !alias.scope !49, !noalias !52
  store ptr null, ptr %args5.i.i, align 8, !alias.scope !49, !noalias !52
  %78 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %args5.i.i, i64 0, i32 2
  store ptr %_43.i.i, ptr %78, align 8, !alias.scope !49, !noalias !52
  %79 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %args5.i.i, i64 0, i32 2, i32 1
  store i64 2, ptr %79, align 8, !alias.scope !49, !noalias !52
  invoke void @_ZN5alloc3fmt6format12format_inner17h69770a250c6ca940E(ptr noalias nocapture noundef nonnull sret(%"alloc::string::String") dereferenceable(24) %res4.i.i, ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %args5.i.i)
          to label %bb34.i.i unwind label %cleanup37.i.i, !noalias !2

bb34.i.i:                                         ; preds = %bb1.i262.i.i
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %args5.i.i), !noalias !2
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %_43.i.i), !noalias !2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %_13.i, ptr noundef nonnull align 8 dereferenceable(24) %res4.i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %res4.i.i), !noalias !2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %frac_hex3.i.i), !noalias !2
  %_3.i.i.i.i.i279.i.i = icmp eq i64 %frac_hex.sroa.0.0.copyload.i.i, 0
  br i1 %_3.i.i.i.i.i279.i.i, label %bb24.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17he8928256f518c172E.exit.i.i.i.i280.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17he8928256f518c172E.exit.i.i.i.i280.i.i": ; preds = %bb34.i.i
  call void @__rust_dealloc(ptr noundef nonnull %frac_hex.sroa.5.0.copyload.i.i, i64 noundef %frac_hex.sroa.0.0.copyload.i.i, i64 noundef 1) #11, !noalias !2
  br label %bb24.i.i

cleanup.i:                                        ; preds = %bb2.i
  %80 = landingpad { ptr, i32 }
          cleanup
  %_13.val5.i = load i64, ptr %_13.i, align 8, !noundef !5
  %81 = getelementptr inbounds i8, ptr %_13.i, i64 8
  %_13.val6.i = load ptr, ptr %81, align 8
  call fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c1453a248308996E"(i64 %_13.val5.i, ptr %_13.val6.i) #10
  br label %common.resume.i

bb2.i:                                            ; preds = %bb24.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c1453a248308996E.exit.i.i"
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %frac.i.i)
  store ptr %x.i, ptr %_8.i, align 8
  %82 = getelementptr inbounds { ptr, ptr }, ptr %_8.i, i64 0, i32 1
  store ptr @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u64$GT$3fmt17h10918494ca6c685eE", ptr %82, align 8
  %83 = getelementptr inbounds [3 x { ptr, ptr }], ptr %_8.i, i64 0, i64 1
  store ptr %_13.i, ptr %83, align 8
  %84 = getelementptr inbounds [3 x { ptr, ptr }], ptr %_8.i, i64 0, i64 1, i32 1
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17haf933a8f09e5a773E", ptr %84, align 8
  %85 = getelementptr inbounds [3 x { ptr, ptr }], ptr %_8.i, i64 0, i64 2
  store ptr %f.i, ptr %85, align 8
  %86 = getelementptr inbounds [3 x { ptr, ptr }], ptr %_8.i, i64 0, i64 2, i32 1
  store ptr @"_ZN4core3fmt5float52_$LT$impl$u20$core..fmt..Display$u20$for$u20$f64$GT$3fmt17hf64b1960e3b02756E", ptr %86, align 8
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %_18.i)
  store i64 2, ptr %_18.i, align 8
  %_19.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %_18.i, i64 16
  store i64 2, ptr %_19.sroa.0.sroa.5.0..sroa_idx.i, align 8
  %_19.sroa.0.sroa.7.0..sroa_idx.i = getelementptr inbounds i8, ptr %_18.i, i64 32
  store i32 0, ptr %_19.sroa.0.sroa.7.0..sroa_idx.i, align 8
  %_19.sroa.0.sroa.8.0..sroa_idx.i = getelementptr inbounds i8, ptr %_18.i, i64 36
  store i32 32, ptr %_19.sroa.0.sroa.8.0..sroa_idx.i, align 4
  %_19.sroa.0.sroa.9.0..sroa_idx.i = getelementptr inbounds i8, ptr %_18.i, i64 40
  store i8 3, ptr %_19.sroa.0.sroa.9.0..sroa_idx.i, align 8
  %_19.sroa.4.0..sroa_idx.i = getelementptr inbounds i8, ptr %_18.i, i64 48
  store i64 0, ptr %_19.sroa.4.0..sroa_idx.i, align 8
  %87 = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_18.i, i64 0, i64 1
  store i64 2, ptr %87, align 8
  %_23.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_18.i, i64 0, i64 1, i32 0, i32 1
  store i64 2, ptr %_23.sroa.0.sroa.5.0..sroa_idx.i, align 8
  %_23.sroa.0.sroa.7.0..sroa_idx.i = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_18.i, i64 0, i64 1, i32 0, i32 2
  store i32 0, ptr %_23.sroa.0.sroa.7.0..sroa_idx.i, align 8
  %_23.sroa.0.sroa.8.0..sroa_idx.i = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_18.i, i64 0, i64 1, i32 0, i32 3
  store i32 32, ptr %_23.sroa.0.sroa.8.0..sroa_idx.i, align 4
  %_23.sroa.0.sroa.9.0..sroa_idx.i = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_18.i, i64 0, i64 1, i32 0, i32 4
  store i8 3, ptr %_23.sroa.0.sroa.9.0..sroa_idx.i, align 8
  %_23.sroa.4.0..sroa_idx.i = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_18.i, i64 0, i64 1, i32 1
  store i64 1, ptr %_23.sroa.4.0..sroa_idx.i, align 8
  %88 = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_18.i, i64 0, i64 2
  store i64 0, ptr %88, align 8
  %_27.sroa.0.sroa.4.0..sroa_idx.i = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_18.i, i64 0, i64 2, i32 0, i32 0, i32 1
  store i64 4, ptr %_27.sroa.0.sroa.4.0..sroa_idx.i, align 8
  %_27.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_18.i, i64 0, i64 2, i32 0, i32 1
  store i64 2, ptr %_27.sroa.0.sroa.5.0..sroa_idx.i, align 8
  %_27.sroa.0.sroa.7.0..sroa_idx.i = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_18.i, i64 0, i64 2, i32 0, i32 2
  store i32 0, ptr %_27.sroa.0.sroa.7.0..sroa_idx.i, align 8
  %_27.sroa.0.sroa.8.0..sroa_idx.i = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_18.i, i64 0, i64 2, i32 0, i32 3
  store i32 32, ptr %_27.sroa.0.sroa.8.0..sroa_idx.i, align 4
  %_27.sroa.0.sroa.9.0..sroa_idx.i = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_18.i, i64 0, i64 2, i32 0, i32 4
  store i8 3, ptr %_27.sroa.0.sroa.9.0..sroa_idx.i, align 8
  %_27.sroa.4.0..sroa_idx.i = getelementptr inbounds [3 x %"core::fmt::rt::v1::Argument"], ptr %_18.i, i64 0, i64 2, i32 1
  store i64 2, ptr %_27.sroa.4.0..sroa_idx.i, align 8
  %89 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_4.i, i64 0, i32 1
  store ptr @alloc_f05f44e9ce85bc09adfe8a57683c35b8, ptr %89, align 8
  %90 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_4.i, i64 0, i32 1, i32 1
  store i64 4, ptr %90, align 8
  store ptr %_18.i, ptr %_4.i, align 8
  %91 = getelementptr inbounds { ptr, i64 }, ptr %_4.i, i64 0, i32 1
  store i64 3, ptr %91, align 8
  %92 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_4.i, i64 0, i32 2
  store ptr %_8.i, ptr %92, align 8
  %93 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_4.i, i64 0, i32 2, i32 1
  store i64 3, ptr %93, align 8
  invoke void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_4.i)
          to label %bb3.i unwind label %cleanup.i

bb3.i:                                            ; preds = %bb2.i
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_4.i)
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %_18.i)
  %_13.val.i = load i64, ptr %_13.i, align 8, !noundef !5
  %_3.i.i.i.i.i.i = icmp eq i64 %_13.val.i, 0
  br i1 %_3.i.i.i.i.i.i, label %_ZN6driver3src6driver6driver17h5aa9bddd01fd152cE.exit, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17he8928256f518c172E.exit.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17he8928256f518c172E.exit.i.i.i.i.i": ; preds = %bb3.i
  %94 = getelementptr inbounds i8, ptr %_13.i, i64 8
  %_13.val4.i = load ptr, ptr %94, align 8
  call void @__rust_dealloc(ptr noundef nonnull %_13.val4.i, i64 noundef %_13.val.i, i64 noundef 1) #11
  br label %_ZN6driver3src6driver6driver17h5aa9bddd01fd152cE.exit

_ZN6driver3src6driver6driver17h5aa9bddd01fd152cE.exit: ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17he8928256f518c172E.exit.i.i.i.i.i", %bb3.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_13.i)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %_8.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %x.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %f.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
declare noundef i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u64$GT$3fmt17h10918494ca6c685eE"(ptr noalias noundef readonly align 8 dereferenceable(8), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_ZN5alloc3fmt6format12format_inner17h69770a250c6ca940E(ptr noalias nocapture noundef sret(%"alloc::string::String") dereferenceable(24), ptr noalias nocapture noundef readonly dereferenceable(48)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c1453a248308996E"(i64 %_1.0.val, ptr %_1.8.val) unnamed_addr #4 personality ptr @rust_eh_personality {
start:
  %_3.i.i.i.i = icmp eq i64 %_1.0.val, 0
  br i1 %_3.i.i.i.i, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h2f3ab2678dd910f2E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17he8928256f518c172E.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17he8928256f518c172E.exit.i.i.i": ; preds = %start
  tail call void @__rust_dealloc(ptr noundef nonnull %_1.8.val, i64 noundef %_1.0.val, i64 noundef 1) #11
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h2f3ab2678dd910f2E.exit"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h2f3ab2678dd910f2E.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17he8928256f518c172E.exit.i.i.i", %start
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6ef0efaac15b9818E"(ptr noalias nocapture noundef readonly align 8 dereferenceable(16) %self, ptr noalias noundef align 8 dereferenceable(64) %f) unnamed_addr #0 {
start:
  %_3.0 = load ptr, ptr %self, align 8, !nonnull !5, !align !55, !noundef !5
  %0 = getelementptr inbounds { ptr, i64 }, ptr %self, i64 0, i32 1
  %_3.1 = load i64, ptr %0, align 8, !noundef !5
  %1 = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h3810e0e68cb69985E"(ptr noalias noundef nonnull readonly align 1 %_3.0, i64 noundef %_3.1, ptr noalias noundef nonnull align 8 dereferenceable(64) %f)
  ret i1 %1
}

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8065c9b04f97f7abE"(ptr noalias noundef readonly align 4 dereferenceable(4), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @__rust_dealloc(ptr allocptr noundef, i64 noundef, i64 noundef) unnamed_addr #6

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @__rust_alloc(i64 noundef, i64 allocalign noundef) unnamed_addr #7

; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_ZN5alloc5alloc18handle_alloc_error17h944707b833928a89E(i64 noundef, i64 noundef) unnamed_addr #8

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17haf933a8f09e5a773E"(ptr noalias nocapture noundef readonly align 8 dereferenceable(24) %self, ptr noalias noundef align 8 dereferenceable(64) %f) unnamed_addr #9 {
start:
  %0 = getelementptr inbounds { i64, ptr }, ptr %self, i64 0, i32 1
  %self1 = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %1 = getelementptr inbounds %"alloc::vec::Vec<u8>", ptr %self, i64 0, i32 1
  %len = load i64, ptr %1, align 8, !noundef !5
  %2 = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h3810e0e68cb69985E"(ptr noalias noundef nonnull readonly align 1 %self1, i64 noundef %len, ptr noalias noundef nonnull align 8 dereferenceable(64) %f)
  ret i1 %2
}

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt5float52_$LT$impl$u20$core..fmt..Display$u20$for$u20$f64$GT$3fmt17hf64b1960e3b02756E"(ptr noalias noundef readonly align 8 dereferenceable(8), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std2io5stdio6_print17h38380bb2b6ce7b21E(ptr noalias nocapture noundef readonly dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h3810e0e68cb69985E"(ptr noalias noundef nonnull readonly align 1, i64 noundef, ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { noinline }
attributes #11 = { nounwind }
attributes #12 = { noreturn }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!3}
!3 = distinct !{!3, !4, !"_ZN6driver3src6driver16format_hex_float17h81a5cf9d260df776E: argument 0"}
!4 = distinct !{!4, !"_ZN6driver3src6driver16format_hex_float17h81a5cf9d260df776E"}
!5 = !{}
!6 = !{!7}
!7 = distinct !{!7, !8, !"_ZN4core3str21_$LT$impl$u20$str$GT$16trim_end_matches17h806e062fd2557fc6E: %self.0"}
!8 = distinct !{!8, !"_ZN4core3str21_$LT$impl$u20$str$GT$16trim_end_matches17h806e062fd2557fc6E"}
!9 = !{!10, !12, !14, !15, !17, !3}
!10 = distinct !{!10, !11, !"_ZN4core3str11validations23next_code_point_reverse17h824d8907ea3d8079E: %bytes"}
!11 = distinct !{!11, !"_ZN4core3str11validations23next_code_point_reverse17h824d8907ea3d8079E"}
!12 = distinct !{!12, !13, !"_ZN88_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..ReverseSearcher$GT$9next_back17hde67956d4f30dda5E: argument 0"}
!13 = distinct !{!13, !"_ZN88_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..ReverseSearcher$GT$9next_back17hde67956d4f30dda5E"}
!14 = distinct !{!14, !13, !"_ZN88_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..ReverseSearcher$GT$9next_back17hde67956d4f30dda5E: %self"}
!15 = distinct !{!15, !16, !"_ZN4core3str7pattern15ReverseSearcher16next_reject_back17h224506b50f2c38d2E: argument 0"}
!16 = distinct !{!16, !"_ZN4core3str7pattern15ReverseSearcher16next_reject_back17h224506b50f2c38d2E"}
!17 = distinct !{!17, !16, !"_ZN4core3str7pattern15ReverseSearcher16next_reject_back17h224506b50f2c38d2E: %self"}
!18 = !{!19}
!19 = distinct !{!19, !20, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!20 = distinct !{!20, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!21 = !{!22, !23, !3}
!22 = distinct !{!22, !20, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %pieces.0"}
!23 = distinct !{!23, !20, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!24 = !{!25, !27, !28, !30, !3}
!25 = distinct !{!25, !26, !"_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17hdcb3b2884da19e14E: %self"}
!26 = distinct !{!26, !"_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17hdcb3b2884da19e14E"}
!27 = distinct !{!27, !26, !"_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17hdcb3b2884da19e14E: %s.0"}
!28 = distinct !{!28, !29, !"_ZN5alloc5slice64_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$$u5b$T$u5d$$GT$8to_owned17hd52894607aaea70eE: argument 0"}
!29 = distinct !{!29, !"_ZN5alloc5slice64_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$$u5b$T$u5d$$GT$8to_owned17hd52894607aaea70eE"}
!30 = distinct !{!30, !29, !"_ZN5alloc5slice64_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$$u5b$T$u5d$$GT$8to_owned17hd52894607aaea70eE: %self.0"}
!31 = !{!32}
!32 = distinct !{!32, !33, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!33 = distinct !{!33, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!34 = !{!35, !36, !3}
!35 = distinct !{!35, !33, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %pieces.0"}
!36 = distinct !{!36, !33, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_ZN4core3str21_$LT$impl$u20$str$GT$16trim_end_matches17h806e062fd2557fc6E: %self.0"}
!39 = distinct !{!39, !"_ZN4core3str21_$LT$impl$u20$str$GT$16trim_end_matches17h806e062fd2557fc6E"}
!40 = !{!41, !43, !45, !46, !48, !3}
!41 = distinct !{!41, !42, !"_ZN4core3str11validations23next_code_point_reverse17h824d8907ea3d8079E: %bytes"}
!42 = distinct !{!42, !"_ZN4core3str11validations23next_code_point_reverse17h824d8907ea3d8079E"}
!43 = distinct !{!43, !44, !"_ZN88_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..ReverseSearcher$GT$9next_back17hde67956d4f30dda5E: argument 0"}
!44 = distinct !{!44, !"_ZN88_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..ReverseSearcher$GT$9next_back17hde67956d4f30dda5E"}
!45 = distinct !{!45, !44, !"_ZN88_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..ReverseSearcher$GT$9next_back17hde67956d4f30dda5E: %self"}
!46 = distinct !{!46, !47, !"_ZN4core3str7pattern15ReverseSearcher16next_reject_back17h224506b50f2c38d2E: argument 0"}
!47 = distinct !{!47, !"_ZN4core3str7pattern15ReverseSearcher16next_reject_back17h224506b50f2c38d2E"}
!48 = distinct !{!48, !47, !"_ZN4core3str7pattern15ReverseSearcher16next_reject_back17h224506b50f2c38d2E: %self"}
!49 = !{!50}
!50 = distinct !{!50, !51, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: argument 0"}
!51 = distinct !{!51, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE"}
!52 = !{!53, !54, !3}
!53 = distinct !{!53, !51, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %pieces.0"}
!54 = distinct !{!54, !51, !"_ZN4core3fmt9Arguments6new_v117h6b8d181e540b6a4fE: %args.0"}
!55 = !{i64 1}
