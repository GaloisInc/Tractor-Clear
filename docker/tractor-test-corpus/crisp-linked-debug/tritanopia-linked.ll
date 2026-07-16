; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; ASSERT EQ: i1 1 = call i1 @run_test_1()
; ASSERT EQ: i1 1 = call i1 @run_test_2()
; ASSERT EQ: i1 1 = call i1 @run_test_3()
; ASSERT EQ: i1 1 = call i1 @run_test_4()
; ASSERT EQ: i1 1 = call i1 @run_test_5()

%"src::lib::CbRgb255" = type { i8, i8, i8 }
%"src::lib::CbRgb" = type { float, float, float }

; Function Attrs: nonlazybind uwtable
define i24 @tritanopia(i24 %0) unnamed_addr #0 !dbg !6 {
start:
  %1 = alloca i24, align 4
  %2 = alloca %"src::lib::CbRgb255", align 1
  %3 = alloca %"src::lib::CbRgb255", align 1
  %4 = alloca i24, align 4
  %rgb = alloca %"src::lib::CbRgb255", align 1
  store i24 %0, ptr %4, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rgb, ptr align 4 %4, i64 3, i1 false)
    #dbg_declare(ptr %rgb, !22, !DIExpression(), !23)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %rgb, i64 3, i1 false), !dbg !24
  %5 = load i24, ptr %2, align 1, !dbg !24
  %6 = call i24 @_ZN14tritanopia_lib3src3lib10tritanopia17h2029e3269572ccdcE(i24 %5), !dbg !24
  store i24 %6, ptr %1, align 4, !dbg !24
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr align 4 %1, i64 3, i1 false), !dbg !24
  %7 = load i24, ptr %3, align 1, !dbg !25
  ret i24 %7, !dbg !25
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nonlazybind uwtable
define internal i24 @_ZN14tritanopia_lib3src3lib10tritanopia17h2029e3269572ccdcE(i24 %0) unnamed_addr #0 !dbg !26 {
start:
  %1 = alloca i24, align 4
  %2 = alloca %"src::lib::CbRgb255", align 1
  %_9 = alloca %"src::lib::CbRgb", align 4
  %_8 = alloca %"src::lib::CbRgb", align 4
  %_3 = alloca %"src::lib::CbRgb", align 4
  %rgb_norm = alloca %"src::lib::CbRgb", align 4
  %3 = alloca %"src::lib::CbRgb255", align 1
  %4 = alloca i24, align 4
  %rgb = alloca %"src::lib::CbRgb255", align 1
  store i24 %0, ptr %4, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rgb, ptr align 4 %4, i64 3, i1 false)
    #dbg_declare(ptr %rgb, !28, !DIExpression(), !37)
    #dbg_declare(ptr %rgb_norm, !29, !DIExpression(), !38)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %rgb, i64 3, i1 false), !dbg !39
  %5 = load i24, ptr %2, align 1, !dbg !39
  call void @_ZN14tritanopia_lib3src3lib7cb_norm17h3aab88f3279972b5E(ptr sret(%"src::lib::CbRgb") %_3, i24 %5), !dbg !39
  call void @_ZN14tritanopia_lib3src3lib19cb_remove_gamma_rgb17h138975dcfb7ddf2fE(ptr sret(%"src::lib::CbRgb") %rgb_norm, ptr %_3), !dbg !40
  %_6 = getelementptr inbounds %"src::lib::CbRgb", ptr %rgb_norm, i32 0, i32 1, !dbg !41
  %_7 = getelementptr inbounds %"src::lib::CbRgb", ptr %rgb_norm, i32 0, i32 2, !dbg !42
  call void @_ZN14tritanopia_lib3src3lib12tritanopia_017h4c676abdcb0ae3bfE(ptr align 4 %rgb_norm, ptr align 4 %_6, ptr align 4 %_7), !dbg !43
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %_9, ptr align 4 %rgb_norm, i64 12, i1 false), !dbg !44
  call void @_ZN14tritanopia_lib3src3lib18cb_apply_gamma_rgb17h23dadd02b9546a05E(ptr sret(%"src::lib::CbRgb") %_8, ptr %_9), !dbg !45
  %6 = call i24 @_ZN14tritanopia_lib3src3lib9cb_denorm17hd99e928718a270a8E(ptr %_8), !dbg !46
  store i24 %6, ptr %1, align 4, !dbg !46
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr align 4 %1, i64 3, i1 false), !dbg !46
  %7 = load i24, ptr %3, align 1, !dbg !47
  ret i24 %7, !dbg !47
}

; Function Attrs: nonlazybind uwtable
define internal void @_ZN14tritanopia_lib3src3lib7cb_norm17h3aab88f3279972b5E(ptr sret(%"src::lib::CbRgb") %0, i24 %1) unnamed_addr #0 !dbg !48 {
start:
  %2 = alloca i24, align 4
  %rgb = alloca %"src::lib::CbRgb255", align 1
  store i24 %1, ptr %2, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rgb, ptr align 4 %2, i64 3, i1 false)
    #dbg_declare(ptr %rgb, !52, !DIExpression(), !53)
  %_4 = load i8, ptr %rgb, align 1, !dbg !54, !noundef !20
  %_3 = uitofp i8 %_4 to float, !dbg !54
  %_2 = fdiv float %_3, 2.550000e+02, !dbg !54
  %3 = getelementptr inbounds %"src::lib::CbRgb255", ptr %rgb, i32 0, i32 1, !dbg !55
  %_7 = load i8, ptr %3, align 1, !dbg !55, !noundef !20
  %_6 = uitofp i8 %_7 to float, !dbg !55
  %_5 = fdiv float %_6, 2.550000e+02, !dbg !55
  %4 = getelementptr inbounds %"src::lib::CbRgb255", ptr %rgb, i32 0, i32 2, !dbg !56
  %_10 = load i8, ptr %4, align 1, !dbg !56, !noundef !20
  %_9 = uitofp i8 %_10 to float, !dbg !56
  %_8 = fdiv float %_9, 2.550000e+02, !dbg !56
  store float %_2, ptr %0, align 4, !dbg !57
  %5 = getelementptr inbounds %"src::lib::CbRgb", ptr %0, i32 0, i32 1, !dbg !57
  store float %_5, ptr %5, align 4, !dbg !57
  %6 = getelementptr inbounds %"src::lib::CbRgb", ptr %0, i32 0, i32 2, !dbg !57
  store float %_8, ptr %6, align 4, !dbg !57
  ret void, !dbg !58
}

; Function Attrs: nonlazybind uwtable
define internal void @_ZN14tritanopia_lib3src3lib19cb_remove_gamma_rgb17h138975dcfb7ddf2fE(ptr sret(%"src::lib::CbRgb") %0, ptr %rgb) unnamed_addr #0 !dbg !59 {
start:
  %_26 = alloca float, align 4
  %_14 = alloca float, align 4
  %_2 = alloca float, align 4
    #dbg_declare(ptr %rgb, !63, !DIExpression(), !64)
  %_5 = load float, ptr %rgb, align 4, !dbg !65, !noundef !20
  %_4 = fpext float %_5 to double, !dbg !65
  %_3 = fcmp ogt double %_4, 4.045000e-02, !dbg !65
  br i1 %_3, label %bb1, label %bb3, !dbg !65

bb3:                                              ; preds = %start
  %_13 = load float, ptr %rgb, align 4, !dbg !66, !noundef !20
  %_12 = fpext float %_13 to double, !dbg !66
  %_11 = fdiv double %_12, 1.292000e+01, !dbg !67
  %1 = fptrunc double %_11 to float, !dbg !67
  store float %1, ptr %_2, align 4, !dbg !67
  br label %bb4, !dbg !68

bb1:                                              ; preds = %start
  %_10 = load float, ptr %rgb, align 4, !dbg !69, !noundef !20
  %_9 = fpext float %_10 to double, !dbg !69
  %_8 = fadd double %_9, 5.500000e-02, !dbg !70
  %_7 = fdiv double %_8, 1.055000e+00, !dbg !71
  %_6 = call double @"_ZN3std3f6421_$LT$impl$u20$f64$GT$4powf17h4134c183b1062440E"(double %_7, double 2.400000e+00), !dbg !72
  %2 = fptrunc double %_6 to float, !dbg !72
  store float %2, ptr %_2, align 4, !dbg !72
  br label %bb4, !dbg !68

bb4:                                              ; preds = %bb1, %bb3
  %3 = getelementptr inbounds %"src::lib::CbRgb", ptr %rgb, i32 0, i32 1, !dbg !73
  %_17 = load float, ptr %3, align 4, !dbg !73, !noundef !20
  %_16 = fpext float %_17 to double, !dbg !73
  %_15 = fcmp ogt double %_16, 4.045000e-02, !dbg !73
  br i1 %_15, label %bb5, label %bb7, !dbg !73

bb7:                                              ; preds = %bb4
  %4 = getelementptr inbounds %"src::lib::CbRgb", ptr %rgb, i32 0, i32 1, !dbg !74
  %_25 = load float, ptr %4, align 4, !dbg !74, !noundef !20
  %_24 = fpext float %_25 to double, !dbg !74
  %_23 = fdiv double %_24, 1.292000e+01, !dbg !75
  %5 = fptrunc double %_23 to float, !dbg !75
  store float %5, ptr %_14, align 4, !dbg !75
  br label %bb8, !dbg !76

bb5:                                              ; preds = %bb4
  %6 = getelementptr inbounds %"src::lib::CbRgb", ptr %rgb, i32 0, i32 1, !dbg !77
  %_22 = load float, ptr %6, align 4, !dbg !77, !noundef !20
  %_21 = fpext float %_22 to double, !dbg !77
  %_20 = fadd double %_21, 5.500000e-02, !dbg !78
  %_19 = fdiv double %_20, 1.055000e+00, !dbg !79
  %_18 = call double @"_ZN3std3f6421_$LT$impl$u20$f64$GT$4powf17h4134c183b1062440E"(double %_19, double 2.400000e+00), !dbg !80
  %7 = fptrunc double %_18 to float, !dbg !80
  store float %7, ptr %_14, align 4, !dbg !80
  br label %bb8, !dbg !76

bb8:                                              ; preds = %bb5, %bb7
  %8 = getelementptr inbounds %"src::lib::CbRgb", ptr %rgb, i32 0, i32 2, !dbg !81
  %_29 = load float, ptr %8, align 4, !dbg !81, !noundef !20
  %_28 = fpext float %_29 to double, !dbg !81
  %_27 = fcmp ogt double %_28, 4.045000e-02, !dbg !81
  br i1 %_27, label %bb9, label %bb11, !dbg !81

bb11:                                             ; preds = %bb8
  %9 = getelementptr inbounds %"src::lib::CbRgb", ptr %rgb, i32 0, i32 2, !dbg !82
  %_37 = load float, ptr %9, align 4, !dbg !82, !noundef !20
  %_36 = fpext float %_37 to double, !dbg !82
  %_35 = fdiv double %_36, 1.292000e+01, !dbg !83
  %10 = fptrunc double %_35 to float, !dbg !83
  store float %10, ptr %_26, align 4, !dbg !83
  br label %bb12, !dbg !84

bb9:                                              ; preds = %bb8
  %11 = getelementptr inbounds %"src::lib::CbRgb", ptr %rgb, i32 0, i32 2, !dbg !85
  %_34 = load float, ptr %11, align 4, !dbg !85, !noundef !20
  %_33 = fpext float %_34 to double, !dbg !85
  %_32 = fadd double %_33, 5.500000e-02, !dbg !86
  %_31 = fdiv double %_32, 1.055000e+00, !dbg !87
  %_30 = call double @"_ZN3std3f6421_$LT$impl$u20$f64$GT$4powf17h4134c183b1062440E"(double %_31, double 2.400000e+00), !dbg !88
  %12 = fptrunc double %_30 to float, !dbg !88
  store float %12, ptr %_26, align 4, !dbg !88
  br label %bb12, !dbg !84

bb12:                                             ; preds = %bb9, %bb11
  %13 = load float, ptr %_2, align 4, !dbg !89, !noundef !20
  store float %13, ptr %0, align 4, !dbg !89
  %14 = load float, ptr %_14, align 4, !dbg !89, !noundef !20
  %15 = getelementptr inbounds %"src::lib::CbRgb", ptr %0, i32 0, i32 1, !dbg !89
  store float %14, ptr %15, align 4, !dbg !89
  %16 = load float, ptr %_26, align 4, !dbg !89, !noundef !20
  %17 = getelementptr inbounds %"src::lib::CbRgb", ptr %0, i32 0, i32 2, !dbg !89
  store float %16, ptr %17, align 4, !dbg !89
  ret void, !dbg !90
}

; Function Attrs: nonlazybind uwtable
define internal void @_ZN14tritanopia_lib3src3lib12tritanopia_017h4c676abdcb0ae3bfE(ptr align 4 %red, ptr align 4 %green, ptr align 4 %blue) unnamed_addr #0 !dbg !91 {
start:
  %b.dbg.spill = alloca float, align 4
  %g.dbg.spill = alloca float, align 4
  %r.dbg.spill = alloca float, align 4
  %blue.dbg.spill = alloca ptr, align 8
  %green.dbg.spill = alloca ptr, align 8
  %red.dbg.spill = alloca ptr, align 8
  store ptr %red, ptr %red.dbg.spill, align 8
    #dbg_declare(ptr %red.dbg.spill, !96, !DIExpression(), !105)
  store ptr %green, ptr %green.dbg.spill, align 8
    #dbg_declare(ptr %green.dbg.spill, !97, !DIExpression(), !106)
  store ptr %blue, ptr %blue.dbg.spill, align 8
    #dbg_declare(ptr %blue.dbg.spill, !98, !DIExpression(), !107)
  %r = load float, ptr %red, align 4, !dbg !108, !noundef !20
  store float %r, ptr %r.dbg.spill, align 4, !dbg !108
    #dbg_declare(ptr %r.dbg.spill, !99, !DIExpression(), !109)
  %g = load float, ptr %green, align 4, !dbg !110, !noundef !20
  store float %g, ptr %g.dbg.spill, align 4, !dbg !110
    #dbg_declare(ptr %g.dbg.spill, !101, !DIExpression(), !111)
  %b = load float, ptr %blue, align 4, !dbg !112, !noundef !20
  store float %b, ptr %b.dbg.spill, align 4, !dbg !112
    #dbg_declare(ptr %b.dbg.spill, !103, !DIExpression(), !113)
  %_8 = fmul float 0x3FC04E9B20000000, %g, !dbg !114
  %_7 = fadd float %r, %_8, !dbg !115
  %_9 = fmul float 0x3FC04E9B20000000, %b, !dbg !116
  %0 = fsub float %_7, %_9, !dbg !117
  store float %0, ptr %red, align 4, !dbg !117
  %_11 = fmul float 0xBDC8A97BE0000000, %r, !dbg !118
  %_12 = fmul float 0x3FEBF710A0000000, %g, !dbg !119
  %_10 = fadd float %_11, %_12, !dbg !118
  %_13 = fmul float 0x3FC023BD80000000, %b, !dbg !120
  %1 = fadd float %_10, %_13, !dbg !121
  store float %1, ptr %green, align 4, !dbg !121
  %_15 = fmul float 0x3DF5617500000000, %r, !dbg !122
  %_16 = fmul float 0x3FEBF710A0000000, %g, !dbg !123
  %_14 = fadd float %_15, %_16, !dbg !122
  %_17 = fmul float 0x3FC023BD80000000, %b, !dbg !124
  %2 = fadd float %_14, %_17, !dbg !125
  store float %2, ptr %blue, align 4, !dbg !125
  ret void, !dbg !126
}

; Function Attrs: nonlazybind uwtable
define internal void @_ZN14tritanopia_lib3src3lib18cb_apply_gamma_rgb17h23dadd02b9546a05E(ptr sret(%"src::lib::CbRgb") %0, ptr %rgb) unnamed_addr #0 !dbg !127 {
start:
  %_26 = alloca float, align 4
  %_14 = alloca float, align 4
  %_2 = alloca float, align 4
    #dbg_declare(ptr %rgb, !129, !DIExpression(), !130)
  %_5 = load float, ptr %rgb, align 4, !dbg !131, !noundef !20
  %_4 = fpext float %_5 to double, !dbg !131
  %_3 = fcmp ogt double %_4, 0x3F69A5C61C57A062, !dbg !131
  br i1 %_3, label %bb1, label %bb3, !dbg !131

bb3:                                              ; preds = %start
  %_13 = load float, ptr %rgb, align 4, !dbg !132, !noundef !20
  %_12 = fpext float %_13 to double, !dbg !132
  %_11 = fmul double %_12, 1.292000e+01, !dbg !133
  %1 = fptrunc double %_11 to float, !dbg !133
  store float %1, ptr %_2, align 4, !dbg !133
  br label %bb4, !dbg !134

bb1:                                              ; preds = %start
  %_10 = load float, ptr %rgb, align 4, !dbg !135, !noundef !20
  %_9 = fpext float %_10 to double, !dbg !136
  %_8 = call double @"_ZN3std3f6421_$LT$impl$u20$f64$GT$4powf17h4134c183b1062440E"(double %_9, double 0x3FDAAAAAAA98576B), !dbg !136
  %_7 = fmul double 1.055000e+00, %_8, !dbg !137
  %_6 = fsub double %_7, 5.500000e-02, !dbg !138
  %2 = fptrunc double %_6 to float, !dbg !138
  store float %2, ptr %_2, align 4, !dbg !138
  br label %bb4, !dbg !134

bb4:                                              ; preds = %bb1, %bb3
  %3 = getelementptr inbounds %"src::lib::CbRgb", ptr %rgb, i32 0, i32 1, !dbg !139
  %_17 = load float, ptr %3, align 4, !dbg !139, !noundef !20
  %_16 = fpext float %_17 to double, !dbg !139
  %_15 = fcmp ogt double %_16, 0x3F69A5C61C57A062, !dbg !139
  br i1 %_15, label %bb5, label %bb7, !dbg !139

bb7:                                              ; preds = %bb4
  %4 = getelementptr inbounds %"src::lib::CbRgb", ptr %rgb, i32 0, i32 1, !dbg !140
  %_25 = load float, ptr %4, align 4, !dbg !140, !noundef !20
  %_24 = fpext float %_25 to double, !dbg !140
  %_23 = fmul double %_24, 1.292000e+01, !dbg !141
  %5 = fptrunc double %_23 to float, !dbg !141
  store float %5, ptr %_14, align 4, !dbg !141
  br label %bb8, !dbg !142

bb5:                                              ; preds = %bb4
  %6 = getelementptr inbounds %"src::lib::CbRgb", ptr %rgb, i32 0, i32 1, !dbg !143
  %_22 = load float, ptr %6, align 4, !dbg !143, !noundef !20
  %_21 = fpext float %_22 to double, !dbg !144
  %_20 = call double @"_ZN3std3f6421_$LT$impl$u20$f64$GT$4powf17h4134c183b1062440E"(double %_21, double 0x3FDAAAAAAA98576B), !dbg !144
  %_19 = fmul double 1.055000e+00, %_20, !dbg !145
  %_18 = fsub double %_19, 5.500000e-02, !dbg !146
  %7 = fptrunc double %_18 to float, !dbg !146
  store float %7, ptr %_14, align 4, !dbg !146
  br label %bb8, !dbg !142

bb8:                                              ; preds = %bb5, %bb7
  %8 = getelementptr inbounds %"src::lib::CbRgb", ptr %rgb, i32 0, i32 2, !dbg !147
  %_29 = load float, ptr %8, align 4, !dbg !147, !noundef !20
  %_28 = fpext float %_29 to double, !dbg !147
  %_27 = fcmp ogt double %_28, 0x3F69A5C61C57A062, !dbg !147
  br i1 %_27, label %bb9, label %bb11, !dbg !147

bb11:                                             ; preds = %bb8
  %9 = getelementptr inbounds %"src::lib::CbRgb", ptr %rgb, i32 0, i32 2, !dbg !148
  %_37 = load float, ptr %9, align 4, !dbg !148, !noundef !20
  %_36 = fpext float %_37 to double, !dbg !148
  %_35 = fmul double %_36, 1.292000e+01, !dbg !149
  %10 = fptrunc double %_35 to float, !dbg !149
  store float %10, ptr %_26, align 4, !dbg !149
  br label %bb12, !dbg !150

bb9:                                              ; preds = %bb8
  %11 = getelementptr inbounds %"src::lib::CbRgb", ptr %rgb, i32 0, i32 2, !dbg !151
  %_34 = load float, ptr %11, align 4, !dbg !151, !noundef !20
  %_33 = fpext float %_34 to double, !dbg !152
  %_32 = call double @"_ZN3std3f6421_$LT$impl$u20$f64$GT$4powf17h4134c183b1062440E"(double %_33, double 0x3FDAAAAAAA98576B), !dbg !152
  %_31 = fmul double 1.055000e+00, %_32, !dbg !153
  %_30 = fsub double %_31, 5.500000e-02, !dbg !154
  %12 = fptrunc double %_30 to float, !dbg !154
  store float %12, ptr %_26, align 4, !dbg !154
  br label %bb12, !dbg !150

bb12:                                             ; preds = %bb9, %bb11
  %13 = load float, ptr %_2, align 4, !dbg !155, !noundef !20
  store float %13, ptr %0, align 4, !dbg !155
  %14 = load float, ptr %_14, align 4, !dbg !155, !noundef !20
  %15 = getelementptr inbounds %"src::lib::CbRgb", ptr %0, i32 0, i32 1, !dbg !155
  store float %14, ptr %15, align 4, !dbg !155
  %16 = load float, ptr %_26, align 4, !dbg !155, !noundef !20
  %17 = getelementptr inbounds %"src::lib::CbRgb", ptr %0, i32 0, i32 2, !dbg !155
  store float %16, ptr %17, align 4, !dbg !155
  ret void, !dbg !156
}

; Function Attrs: nonlazybind uwtable
define internal i24 @_ZN14tritanopia_lib3src3lib9cb_denorm17hd99e928718a270a8E(ptr %rgb) unnamed_addr #0 !dbg !157 {
start:
  %0 = alloca %"src::lib::CbRgb255", align 1
    #dbg_declare(ptr %rgb, !161, !DIExpression(), !162)
  %_5 = load float, ptr %rgb, align 4, !dbg !163, !noundef !20
  %_4 = fmul float %_5, 2.550000e+02, !dbg !163
  %_3 = fadd float %_4, 5.000000e-01, !dbg !164
  %_2 = call i8 @llvm.fptoui.sat.i8.f32(float %_3), !dbg !164
  %1 = getelementptr inbounds %"src::lib::CbRgb", ptr %rgb, i32 0, i32 1, !dbg !165
  %_9 = load float, ptr %1, align 4, !dbg !165, !noundef !20
  %_8 = fmul float %_9, 2.550000e+02, !dbg !165
  %_7 = fadd float %_8, 5.000000e-01, !dbg !166
  %_6 = call i8 @llvm.fptoui.sat.i8.f32(float %_7), !dbg !166
  %2 = getelementptr inbounds %"src::lib::CbRgb", ptr %rgb, i32 0, i32 2, !dbg !167
  %_13 = load float, ptr %2, align 4, !dbg !167, !noundef !20
  %_12 = fmul float %_13, 2.550000e+02, !dbg !167
  %_11 = fadd float %_12, 5.000000e-01, !dbg !168
  %_10 = call i8 @llvm.fptoui.sat.i8.f32(float %_11), !dbg !168
  store i8 %_2, ptr %0, align 1, !dbg !169
  %3 = getelementptr inbounds %"src::lib::CbRgb255", ptr %0, i32 0, i32 1, !dbg !169
  store i8 %_6, ptr %3, align 1, !dbg !169
  %4 = getelementptr inbounds %"src::lib::CbRgb255", ptr %0, i32 0, i32 2, !dbg !169
  store i8 %_10, ptr %4, align 1, !dbg !169
  %5 = load i24, ptr %0, align 1, !dbg !170
  ret i24 %5, !dbg !170
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fptoui.sat.i8.f32(float) #2

; Function Attrs: inlinehint nonlazybind uwtable
define internal double @"_ZN3std3f6421_$LT$impl$u20$f64$GT$4powf17h4134c183b1062440E"(double %self, double %n) unnamed_addr #3 !dbg !171 {
start:
  %0 = alloca double, align 8
  %n.dbg.spill = alloca double, align 8
  %self.dbg.spill = alloca double, align 8
  store double %self, ptr %self.dbg.spill, align 8
    #dbg_declare(ptr %self.dbg.spill, !180, !DIExpression(), !182)
  store double %n, ptr %n.dbg.spill, align 8
    #dbg_declare(ptr %n.dbg.spill, !181, !DIExpression(), !183)
  %1 = call double @llvm.pow.f64(double %self, double %n), !dbg !184
  store double %1, ptr %0, align 8, !dbg !184
  %2 = load double, ptr %0, align 8, !dbg !184, !noundef !20
  ret double %2, !dbg !185
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.pow.f64(double, double) #2

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_1() unnamed_addr #0 !dbg !186 {
start:
  %0 = alloca i24, align 4
  %1 = alloca %"src::lib::CbRgb255", align 1
  %_3 = alloca i8, align 1
  %result = alloca %"src::lib::CbRgb255", align 1
  %rgb = alloca %"src::lib::CbRgb255", align 1
  %2 = alloca i8, align 1
    #dbg_declare(ptr %rgb, !191, !DIExpression(), !195)
    #dbg_declare(ptr %result, !193, !DIExpression(), !196)
  store i8 67, ptr %rgb, align 1, !dbg !197
  %3 = getelementptr inbounds %"src::lib::CbRgb255", ptr %rgb, i32 0, i32 1, !dbg !197
  store i8 -61, ptr %3, align 1, !dbg !197
  %4 = getelementptr inbounds %"src::lib::CbRgb255", ptr %rgb, i32 0, i32 2, !dbg !197
  store i8 16, ptr %4, align 1, !dbg !197
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %rgb, i64 3, i1 false), !dbg !198
  %5 = load i24, ptr %1, align 1, !dbg !198
  %6 = call i24 @tritanopia(i24 %5), !dbg !198
  store i24 %6, ptr %0, align 4, !dbg !198
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %result, ptr align 4 %0, i64 3, i1 false), !dbg !198
  %_4 = load i8, ptr %result, align 1, !dbg !199, !noundef !20
  %7 = icmp eq i8 %_4, 99, !dbg !199
  br i1 %7, label %bb6, label %bb5, !dbg !199

bb6:                                              ; preds = %start
  %8 = getelementptr inbounds %"src::lib::CbRgb255", ptr %result, i32 0, i32 1, !dbg !200
  %_6 = load i8, ptr %8, align 1, !dbg !200, !noundef !20
  %_5 = icmp eq i8 %_6, -72, !dbg !200
  %9 = zext i1 %_5 to i8, !dbg !199
  store i8 %9, ptr %_3, align 1, !dbg !199
  br label %bb7, !dbg !199

bb5:                                              ; preds = %start
  store i8 0, ptr %_3, align 1, !dbg !199
  br label %bb7, !dbg !199

bb7:                                              ; preds = %bb5, %bb6
  %10 = load i8, ptr %_3, align 1, !dbg !199, !range !201, !noundef !20
  %11 = trunc i8 %10 to i1, !dbg !199
  br i1 %11, label %bb3, label %bb2, !dbg !199

bb2:                                              ; preds = %bb7
  store i8 0, ptr %2, align 1, !dbg !199
  br label %bb4, !dbg !199

bb3:                                              ; preds = %bb7
  %12 = getelementptr inbounds %"src::lib::CbRgb255", ptr %result, i32 0, i32 2, !dbg !202
  %_8 = load i8, ptr %12, align 1, !dbg !202, !noundef !20
  %_7 = icmp eq i8 %_8, -72, !dbg !202
  %13 = zext i1 %_7 to i8, !dbg !199
  store i8 %13, ptr %2, align 1, !dbg !199
  br label %bb4, !dbg !199

bb4:                                              ; preds = %bb3, %bb2
  %14 = load i8, ptr %2, align 1, !dbg !203, !range !201, !noundef !20
  %15 = trunc i8 %14 to i1, !dbg !203
  ret i1 %15, !dbg !203
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_2() unnamed_addr #0 !dbg !204 {
start:
  %0 = alloca i24, align 4
  %1 = alloca %"src::lib::CbRgb255", align 1
  %_3 = alloca i8, align 1
  %result = alloca %"src::lib::CbRgb255", align 1
  %rgb = alloca %"src::lib::CbRgb255", align 1
  %2 = alloca i8, align 1
    #dbg_declare(ptr %rgb, !206, !DIExpression(), !210)
    #dbg_declare(ptr %result, !208, !DIExpression(), !211)
  store i8 66, ptr %rgb, align 1, !dbg !212
  %3 = getelementptr inbounds %"src::lib::CbRgb255", ptr %rgb, i32 0, i32 1, !dbg !212
  store i8 -40, ptr %3, align 1, !dbg !212
  %4 = getelementptr inbounds %"src::lib::CbRgb255", ptr %rgb, i32 0, i32 2, !dbg !212
  store i8 30, ptr %4, align 1, !dbg !212
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %rgb, i64 3, i1 false), !dbg !213
  %5 = load i24, ptr %1, align 1, !dbg !213
  %6 = call i24 @tritanopia(i24 %5), !dbg !213
  store i24 %6, ptr %0, align 4, !dbg !213
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %result, ptr align 4 %0, i64 3, i1 false), !dbg !213
  %_4 = load i8, ptr %result, align 1, !dbg !214, !noundef !20
  %7 = icmp eq i8 %_4, 105, !dbg !214
  br i1 %7, label %bb6, label %bb5, !dbg !214

bb6:                                              ; preds = %start
  %8 = getelementptr inbounds %"src::lib::CbRgb255", ptr %result, i32 0, i32 1, !dbg !215
  %_6 = load i8, ptr %8, align 1, !dbg !215, !noundef !20
  %_5 = icmp eq i8 %_6, -52, !dbg !215
  %9 = zext i1 %_5 to i8, !dbg !214
  store i8 %9, ptr %_3, align 1, !dbg !214
  br label %bb7, !dbg !214

bb5:                                              ; preds = %start
  store i8 0, ptr %_3, align 1, !dbg !214
  br label %bb7, !dbg !214

bb7:                                              ; preds = %bb5, %bb6
  %10 = load i8, ptr %_3, align 1, !dbg !214, !range !201, !noundef !20
  %11 = trunc i8 %10 to i1, !dbg !214
  br i1 %11, label %bb3, label %bb2, !dbg !214

bb2:                                              ; preds = %bb7
  store i8 0, ptr %2, align 1, !dbg !214
  br label %bb4, !dbg !214

bb3:                                              ; preds = %bb7
  %12 = getelementptr inbounds %"src::lib::CbRgb255", ptr %result, i32 0, i32 2, !dbg !216
  %_8 = load i8, ptr %12, align 1, !dbg !216, !noundef !20
  %_7 = icmp eq i8 %_8, -52, !dbg !216
  %13 = zext i1 %_7 to i8, !dbg !214
  store i8 %13, ptr %2, align 1, !dbg !214
  br label %bb4, !dbg !214

bb4:                                              ; preds = %bb3, %bb2
  %14 = load i8, ptr %2, align 1, !dbg !217, !range !201, !noundef !20
  %15 = trunc i8 %14 to i1, !dbg !217
  ret i1 %15, !dbg !217
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_3() unnamed_addr #0 !dbg !218 {
start:
  %0 = alloca i24, align 4
  %1 = alloca %"src::lib::CbRgb255", align 1
  %_3 = alloca i8, align 1
  %result = alloca %"src::lib::CbRgb255", align 1
  %rgb = alloca %"src::lib::CbRgb255", align 1
  %2 = alloca i8, align 1
    #dbg_declare(ptr %rgb, !220, !DIExpression(), !224)
    #dbg_declare(ptr %result, !222, !DIExpression(), !225)
  store i8 92, ptr %rgb, align 1, !dbg !226
  %3 = getelementptr inbounds %"src::lib::CbRgb255", ptr %rgb, i32 0, i32 1, !dbg !226
  store i8 23, ptr %3, align 1, !dbg !226
  %4 = getelementptr inbounds %"src::lib::CbRgb255", ptr %rgb, i32 0, i32 2, !dbg !226
  store i8 -3, ptr %4, align 1, !dbg !226
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %rgb, i64 3, i1 false), !dbg !227
  %5 = load i24, ptr %1, align 1, !dbg !227
  %6 = call i24 @tritanopia(i24 %5), !dbg !227
  store i24 %6, ptr %0, align 4, !dbg !227
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %result, ptr align 4 %0, i64 3, i1 false), !dbg !227
  %_4 = load i8, ptr %result, align 1, !dbg !228, !noundef !20
  %7 = icmp eq i8 %_4, -55, !dbg !228
  br i1 %7, label %bb6, label %bb5, !dbg !228

bb6:                                              ; preds = %start
  %8 = getelementptr inbounds %"src::lib::CbRgb255", ptr %result, i32 0, i32 1, !dbg !229
  %_6 = load i8, ptr %8, align 1, !dbg !229, !noundef !20
  %_5 = icmp eq i8 %_6, 101, !dbg !229
  %9 = zext i1 %_5 to i8, !dbg !228
  store i8 %9, ptr %_3, align 1, !dbg !228
  br label %bb7, !dbg !228

bb5:                                              ; preds = %start
  store i8 0, ptr %_3, align 1, !dbg !228
  br label %bb7, !dbg !228

bb7:                                              ; preds = %bb5, %bb6
  %10 = load i8, ptr %_3, align 1, !dbg !228, !range !201, !noundef !20
  %11 = trunc i8 %10 to i1, !dbg !228
  br i1 %11, label %bb3, label %bb2, !dbg !228

bb2:                                              ; preds = %bb7
  store i8 0, ptr %2, align 1, !dbg !228
  br label %bb4, !dbg !228

bb3:                                              ; preds = %bb7
  %12 = getelementptr inbounds %"src::lib::CbRgb255", ptr %result, i32 0, i32 2, !dbg !230
  %_8 = load i8, ptr %12, align 1, !dbg !230, !noundef !20
  %_7 = icmp eq i8 %_8, 101, !dbg !230
  %13 = zext i1 %_7 to i8, !dbg !228
  store i8 %13, ptr %2, align 1, !dbg !228
  br label %bb4, !dbg !228

bb4:                                              ; preds = %bb3, %bb2
  %14 = load i8, ptr %2, align 1, !dbg !231, !range !201, !noundef !20
  %15 = trunc i8 %14 to i1, !dbg !231
  ret i1 %15, !dbg !231
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_4() unnamed_addr #0 !dbg !232 {
start:
  %0 = alloca i24, align 4
  %1 = alloca %"src::lib::CbRgb255", align 1
  %_3 = alloca i8, align 1
  %result = alloca %"src::lib::CbRgb255", align 1
  %rgb = alloca %"src::lib::CbRgb255", align 1
  %2 = alloca i8, align 1
    #dbg_declare(ptr %rgb, !234, !DIExpression(), !238)
    #dbg_declare(ptr %result, !236, !DIExpression(), !239)
  store i8 -90, ptr %rgb, align 1, !dbg !240
  %3 = getelementptr inbounds %"src::lib::CbRgb255", ptr %rgb, i32 0, i32 1, !dbg !240
  store i8 -101, ptr %3, align 1, !dbg !240
  %4 = getelementptr inbounds %"src::lib::CbRgb255", ptr %rgb, i32 0, i32 2, !dbg !240
  store i8 -74, ptr %4, align 1, !dbg !240
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %rgb, i64 3, i1 false), !dbg !241
  %5 = load i24, ptr %1, align 1, !dbg !241
  %6 = call i24 @tritanopia(i24 %5), !dbg !241
  store i24 %6, ptr %0, align 4, !dbg !241
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %result, ptr align 4 %0, i64 3, i1 false), !dbg !241
  %_4 = load i8, ptr %result, align 1, !dbg !242, !noundef !20
  %7 = icmp eq i8 %_4, -94, !dbg !242
  br i1 %7, label %bb6, label %bb5, !dbg !242

bb6:                                              ; preds = %start
  %8 = getelementptr inbounds %"src::lib::CbRgb255", ptr %result, i32 0, i32 1, !dbg !243
  %_6 = load i8, ptr %8, align 1, !dbg !243, !noundef !20
  %_5 = icmp eq i8 %_6, -97, !dbg !243
  %9 = zext i1 %_5 to i8, !dbg !242
  store i8 %9, ptr %_3, align 1, !dbg !242
  br label %bb7, !dbg !242

bb5:                                              ; preds = %start
  store i8 0, ptr %_3, align 1, !dbg !242
  br label %bb7, !dbg !242

bb7:                                              ; preds = %bb5, %bb6
  %10 = load i8, ptr %_3, align 1, !dbg !242, !range !201, !noundef !20
  %11 = trunc i8 %10 to i1, !dbg !242
  br i1 %11, label %bb3, label %bb2, !dbg !242

bb2:                                              ; preds = %bb7
  store i8 0, ptr %2, align 1, !dbg !242
  br label %bb4, !dbg !242

bb3:                                              ; preds = %bb7
  %12 = getelementptr inbounds %"src::lib::CbRgb255", ptr %result, i32 0, i32 2, !dbg !244
  %_8 = load i8, ptr %12, align 1, !dbg !244, !noundef !20
  %_7 = icmp eq i8 %_8, -97, !dbg !244
  %13 = zext i1 %_7 to i8, !dbg !242
  store i8 %13, ptr %2, align 1, !dbg !242
  br label %bb4, !dbg !242

bb4:                                              ; preds = %bb3, %bb2
  %14 = load i8, ptr %2, align 1, !dbg !245, !range !201, !noundef !20
  %15 = trunc i8 %14 to i1, !dbg !245
  ret i1 %15, !dbg !245
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_5() unnamed_addr #0 !dbg !246 {
start:
  %0 = alloca i24, align 4
  %1 = alloca %"src::lib::CbRgb255", align 1
  %_3 = alloca i8, align 1
  %result = alloca %"src::lib::CbRgb255", align 1
  %rgb = alloca %"src::lib::CbRgb255", align 1
  %2 = alloca i8, align 1
    #dbg_declare(ptr %rgb, !248, !DIExpression(), !252)
    #dbg_declare(ptr %result, !250, !DIExpression(), !253)
  store i8 46, ptr %rgb, align 1, !dbg !254
  %3 = getelementptr inbounds %"src::lib::CbRgb255", ptr %rgb, i32 0, i32 1, !dbg !254
  store i8 70, ptr %3, align 1, !dbg !254
  %4 = getelementptr inbounds %"src::lib::CbRgb255", ptr %rgb, i32 0, i32 2, !dbg !254
  store i8 75, ptr %4, align 1, !dbg !254
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %rgb, i64 3, i1 false), !dbg !255
  %5 = load i24, ptr %1, align 1, !dbg !255
  %6 = call i24 @tritanopia(i24 %5), !dbg !255
  store i24 %6, ptr %0, align 4, !dbg !255
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %result, ptr align 4 %0, i64 3, i1 false), !dbg !255
  %_4 = load i8, ptr %result, align 1, !dbg !256, !noundef !20
  %7 = icmp eq i8 %_4, 45, !dbg !256
  br i1 %7, label %bb6, label %bb5, !dbg !256

bb6:                                              ; preds = %start
  %8 = getelementptr inbounds %"src::lib::CbRgb255", ptr %result, i32 0, i32 1, !dbg !257
  %_6 = load i8, ptr %8, align 1, !dbg !257, !noundef !20
  %_5 = icmp eq i8 %_6, 71, !dbg !257
  %9 = zext i1 %_5 to i8, !dbg !256
  store i8 %9, ptr %_3, align 1, !dbg !256
  br label %bb7, !dbg !256

bb5:                                              ; preds = %start
  store i8 0, ptr %_3, align 1, !dbg !256
  br label %bb7, !dbg !256

bb7:                                              ; preds = %bb5, %bb6
  %10 = load i8, ptr %_3, align 1, !dbg !256, !range !201, !noundef !20
  %11 = trunc i8 %10 to i1, !dbg !256
  br i1 %11, label %bb3, label %bb2, !dbg !256

bb2:                                              ; preds = %bb7
  store i8 0, ptr %2, align 1, !dbg !256
  br label %bb4, !dbg !256

bb3:                                              ; preds = %bb7
  %12 = getelementptr inbounds %"src::lib::CbRgb255", ptr %result, i32 0, i32 2, !dbg !258
  %_8 = load i8, ptr %12, align 1, !dbg !258, !noundef !20
  %_7 = icmp eq i8 %_8, 71, !dbg !258
  %13 = zext i1 %_7 to i8, !dbg !256
  store i8 %13, ptr %2, align 1, !dbg !256
  br label %bb4, !dbg !256

bb4:                                              ; preds = %bb3, %bb2
  %14 = load i8, ptr %2, align 1, !dbg !259, !range !201, !noundef !20
  %15 = trunc i8 %14 to i1, !dbg !259
  ret i1 %15, !dbg !259
}

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}

!0 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !1, producer: "clang LLVM (rustc version 1.70.0-nightly (84dd17b56 2023-04-14))", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!1 = !DIFile(filename: "lib.rs/@/3dwd6pw7kll0by6l", directory: "/crisp-rust-outputs/B01_organic/tritanopia_lib/translated_rust")
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 2, !"RtLibUseGOT", i32 1}
!4 = !{i32 2, !"Dwarf Version", i32 4}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = distinct !DISubprogram(name: "tritanopia_ffi", linkageName: "tritanopia", scope: !8, file: !7, line: 85, type: !11, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !20, retainedNodes: !21)
!7 = !DIFile(filename: "src/lib.rs", directory: "/crisp-rust-outputs/B01_organic/tritanopia_lib/translated_rust", checksumkind: CSK_MD5, checksum: "1c5e087a02cdff2830b2c962dcfc6daf")
!8 = !DINamespace(name: "lib", scope: !9)
!9 = !DINamespace(name: "src", scope: !10)
!10 = !DINamespace(name: "tritanopia_lib", scope: null)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !13}
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CbRgb255", scope: !8, file: !14, size: 24, align: 8, elements: !15, templateParams: !20, identifier: "e3ed68be882e21095bdc4fc5949c542e")
!14 = !DIFile(filename: "<unknown>", directory: "")
!15 = !{!16, !18, !19}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "R", scope: !13, file: !14, baseType: !17, size: 8, align: 8)
!17 = !DIBasicType(name: "u8", size: 8, encoding: DW_ATE_unsigned)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "G", scope: !13, file: !14, baseType: !17, size: 8, align: 8, offset: 8)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "B", scope: !13, file: !14, baseType: !17, size: 8, align: 8, offset: 16)
!20 = !{}
!21 = !{!22}
!22 = !DILocalVariable(name: "rgb", arg: 1, scope: !6, file: !7, line: 85, type: !13)
!23 = !DILocation(line: 85, column: 34, scope: !6)
!24 = !DILocation(line: 86, column: 5, scope: !6)
!25 = !DILocation(line: 87, column: 2, scope: !6)
!26 = distinct !DISubprogram(name: "tritanopia", linkageName: "_ZN14tritanopia_lib3src3lib10tritanopia17h2029e3269572ccdcE", scope: !8, file: !7, line: 78, type: !11, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !20, retainedNodes: !27)
!27 = !{!28, !29}
!28 = !DILocalVariable(name: "rgb", arg: 1, scope: !26, file: !7, line: 78, type: !13)
!29 = !DILocalVariable(name: "rgb_norm", scope: !30, file: !7, line: 79, type: !31, align: 4)
!30 = distinct !DILexicalBlock(scope: !26, file: !7, line: 79, column: 5)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CbRgb", scope: !8, file: !14, size: 96, align: 32, elements: !32, templateParams: !20, identifier: "f10a57607d527dcbb8c229c2d1593eaa")
!32 = !{!33, !35, !36}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "R", scope: !31, file: !14, baseType: !34, size: 32, align: 32)
!34 = !DIBasicType(name: "f32", size: 32, encoding: DW_ATE_float)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "G", scope: !31, file: !14, baseType: !34, size: 32, align: 32, offset: 32)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "B", scope: !31, file: !14, baseType: !34, size: 32, align: 32, offset: 64)
!37 = !DILocation(line: 78, column: 30, scope: !26)
!38 = !DILocation(line: 79, column: 9, scope: !30)
!39 = !DILocation(line: 79, column: 44, scope: !26)
!40 = !DILocation(line: 79, column: 24, scope: !26)
!41 = !DILocation(line: 80, column: 35, scope: !30)
!42 = !DILocation(line: 80, column: 52, scope: !30)
!43 = !DILocation(line: 80, column: 5, scope: !30)
!44 = !DILocation(line: 81, column: 34, scope: !30)
!45 = !DILocation(line: 81, column: 15, scope: !30)
!46 = !DILocation(line: 81, column: 5, scope: !30)
!47 = !DILocation(line: 82, column: 2, scope: !26)
!48 = distinct !DISubprogram(name: "cb_norm", linkageName: "_ZN14tritanopia_lib3src3lib7cb_norm17h3aab88f3279972b5E", scope: !8, file: !7, line: 37, type: !49, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !20, retainedNodes: !51)
!49 = !DISubroutineType(types: !50)
!50 = !{!31, !13}
!51 = !{!52}
!52 = !DILocalVariable(name: "rgb", arg: 1, scope: !48, file: !7, line: 37, type: !13)
!53 = !DILocation(line: 37, column: 12, scope: !48)
!54 = !DILocation(line: 39, column: 12, scope: !48)
!55 = !DILocation(line: 40, column: 12, scope: !48)
!56 = !DILocation(line: 41, column: 12, scope: !48)
!57 = !DILocation(line: 38, column: 5, scope: !48)
!58 = !DILocation(line: 43, column: 2, scope: !48)
!59 = distinct !DISubprogram(name: "cb_remove_gamma_rgb", linkageName: "_ZN14tritanopia_lib3src3lib19cb_remove_gamma_rgb17h138975dcfb7ddf2fE", scope: !8, file: !7, line: 18, type: !60, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !20, retainedNodes: !62)
!60 = !DISubroutineType(types: !61)
!61 = !{!31, !31}
!62 = !{!63}
!63 = !DILocalVariable(name: "rgb", arg: 1, scope: !59, file: !7, line: 18, type: !31)
!64 = !DILocation(line: 18, column: 24, scope: !59)
!65 = !DILocation(line: 20, column: 15, scope: !59)
!66 = !DILocation(line: 23, column: 14, scope: !59)
!67 = !DILocation(line: 23, column: 13, scope: !59)
!68 = !DILocation(line: 20, column: 12, scope: !59)
!69 = !DILocation(line: 21, column: 16, scope: !59)
!70 = !DILocation(line: 21, column: 15, scope: !59)
!71 = !DILocation(line: 21, column: 14, scope: !59)
!72 = !DILocation(line: 21, column: 13, scope: !59)
!73 = !DILocation(line: 25, column: 15, scope: !59)
!74 = !DILocation(line: 28, column: 14, scope: !59)
!75 = !DILocation(line: 28, column: 13, scope: !59)
!76 = !DILocation(line: 25, column: 12, scope: !59)
!77 = !DILocation(line: 26, column: 16, scope: !59)
!78 = !DILocation(line: 26, column: 15, scope: !59)
!79 = !DILocation(line: 26, column: 14, scope: !59)
!80 = !DILocation(line: 26, column: 13, scope: !59)
!81 = !DILocation(line: 30, column: 15, scope: !59)
!82 = !DILocation(line: 33, column: 14, scope: !59)
!83 = !DILocation(line: 33, column: 13, scope: !59)
!84 = !DILocation(line: 30, column: 12, scope: !59)
!85 = !DILocation(line: 31, column: 16, scope: !59)
!86 = !DILocation(line: 31, column: 15, scope: !59)
!87 = !DILocation(line: 31, column: 14, scope: !59)
!88 = !DILocation(line: 31, column: 13, scope: !59)
!89 = !DILocation(line: 19, column: 5, scope: !59)
!90 = !DILocation(line: 36, column: 2, scope: !59)
!91 = distinct !DISubprogram(name: "tritanopia_0", linkageName: "_ZN14tritanopia_lib3src3lib12tritanopia_017h4c676abdcb0ae3bfE", scope: !8, file: !7, line: 70, type: !92, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !20, retainedNodes: !95)
!92 = !DISubroutineType(types: !93)
!93 = !{null, !94, !94, !94}
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut f32", baseType: !34, size: 64, align: 64, dwarfAddressSpace: 0)
!95 = !{!96, !97, !98, !99, !101, !103}
!96 = !DILocalVariable(name: "red", arg: 1, scope: !91, file: !7, line: 70, type: !94)
!97 = !DILocalVariable(name: "green", arg: 2, scope: !91, file: !7, line: 70, type: !94)
!98 = !DILocalVariable(name: "blue", arg: 3, scope: !91, file: !7, line: 70, type: !94)
!99 = !DILocalVariable(name: "r", scope: !100, file: !7, line: 71, type: !34, align: 4)
!100 = distinct !DILexicalBlock(scope: !91, file: !7, line: 71, column: 5)
!101 = !DILocalVariable(name: "g", scope: !102, file: !7, line: 72, type: !34, align: 4)
!102 = distinct !DILexicalBlock(scope: !100, file: !7, line: 72, column: 5)
!103 = !DILocalVariable(name: "b", scope: !104, file: !7, line: 73, type: !34, align: 4)
!104 = distinct !DILexicalBlock(scope: !102, file: !7, line: 73, column: 5)
!105 = !DILocation(line: 70, column: 17, scope: !91)
!106 = !DILocation(line: 70, column: 32, scope: !91)
!107 = !DILocation(line: 70, column: 49, scope: !91)
!108 = !DILocation(line: 71, column: 13, scope: !91)
!109 = !DILocation(line: 71, column: 9, scope: !100)
!110 = !DILocation(line: 72, column: 13, scope: !100)
!111 = !DILocation(line: 72, column: 9, scope: !102)
!112 = !DILocation(line: 73, column: 13, scope: !102)
!113 = !DILocation(line: 73, column: 9, scope: !104)
!114 = !DILocation(line: 74, column: 16, scope: !104)
!115 = !DILocation(line: 74, column: 12, scope: !104)
!116 = !DILocation(line: 74, column: 42, scope: !104)
!117 = !DILocation(line: 74, column: 5, scope: !104)
!118 = !DILocation(line: 75, column: 14, scope: !104)
!119 = !DILocation(line: 75, column: 34, scope: !104)
!120 = !DILocation(line: 75, column: 60, scope: !104)
!121 = !DILocation(line: 75, column: 5, scope: !104)
!122 = !DILocation(line: 76, column: 13, scope: !104)
!123 = !DILocation(line: 76, column: 33, scope: !104)
!124 = !DILocation(line: 76, column: 59, scope: !104)
!125 = !DILocation(line: 76, column: 5, scope: !104)
!126 = !DILocation(line: 77, column: 2, scope: !91)
!127 = distinct !DISubprogram(name: "cb_apply_gamma_rgb", linkageName: "_ZN14tritanopia_lib3src3lib18cb_apply_gamma_rgb17h23dadd02b9546a05E", scope: !8, file: !7, line: 51, type: !60, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !20, retainedNodes: !128)
!128 = !{!129}
!129 = !DILocalVariable(name: "rgb", arg: 1, scope: !127, file: !7, line: 51, type: !31)
!130 = !DILocation(line: 51, column: 23, scope: !127)
!131 = !DILocation(line: 53, column: 15, scope: !127)
!132 = !DILocation(line: 56, column: 14, scope: !127)
!133 = !DILocation(line: 56, column: 13, scope: !127)
!134 = !DILocation(line: 53, column: 12, scope: !127)
!135 = !DILocation(line: 54, column: 26, scope: !127)
!136 = !DILocation(line: 54, column: 25, scope: !127)
!137 = !DILocation(line: 54, column: 14, scope: !127)
!138 = !DILocation(line: 54, column: 13, scope: !127)
!139 = !DILocation(line: 58, column: 15, scope: !127)
!140 = !DILocation(line: 61, column: 14, scope: !127)
!141 = !DILocation(line: 61, column: 13, scope: !127)
!142 = !DILocation(line: 58, column: 12, scope: !127)
!143 = !DILocation(line: 59, column: 26, scope: !127)
!144 = !DILocation(line: 59, column: 25, scope: !127)
!145 = !DILocation(line: 59, column: 14, scope: !127)
!146 = !DILocation(line: 59, column: 13, scope: !127)
!147 = !DILocation(line: 63, column: 15, scope: !127)
!148 = !DILocation(line: 66, column: 14, scope: !127)
!149 = !DILocation(line: 66, column: 13, scope: !127)
!150 = !DILocation(line: 63, column: 12, scope: !127)
!151 = !DILocation(line: 64, column: 26, scope: !127)
!152 = !DILocation(line: 64, column: 25, scope: !127)
!153 = !DILocation(line: 64, column: 14, scope: !127)
!154 = !DILocation(line: 64, column: 13, scope: !127)
!155 = !DILocation(line: 52, column: 5, scope: !127)
!156 = !DILocation(line: 69, column: 2, scope: !127)
!157 = distinct !DISubprogram(name: "cb_denorm", linkageName: "_ZN14tritanopia_lib3src3lib9cb_denorm17hd99e928718a270a8E", scope: !8, file: !7, line: 44, type: !158, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !20, retainedNodes: !160)
!158 = !DISubroutineType(types: !159)
!159 = !{!13, !31}
!160 = !{!161}
!161 = !DILocalVariable(name: "rgb", arg: 1, scope: !157, file: !7, line: 44, type: !31)
!162 = !DILocation(line: 44, column: 14, scope: !157)
!163 = !DILocation(line: 46, column: 13, scope: !157)
!164 = !DILocation(line: 46, column: 12, scope: !157)
!165 = !DILocation(line: 47, column: 13, scope: !157)
!166 = !DILocation(line: 47, column: 12, scope: !157)
!167 = !DILocation(line: 48, column: 13, scope: !157)
!168 = !DILocation(line: 48, column: 12, scope: !157)
!169 = !DILocation(line: 45, column: 5, scope: !157)
!170 = !DILocation(line: 50, column: 2, scope: !157)
!171 = distinct !DISubprogram(name: "powf", linkageName: "_ZN3std3f6421_$LT$impl$u20$f64$GT$4powf17h4134c183b1062440E", scope: !173, file: !172, line: 369, type: !176, scopeLine: 369, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !20, retainedNodes: !179)
!172 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/std/src/f64.rs", directory: "", checksumkind: CSK_MD5, checksum: "a7ebb38f72abf189099398374312abae")
!173 = !DINamespace(name: "{impl#0}", scope: !174)
!174 = !DINamespace(name: "f64", scope: !175)
!175 = !DINamespace(name: "std", scope: null)
!176 = !DISubroutineType(types: !177)
!177 = !{!178, !178, !178}
!178 = !DIBasicType(name: "f64", size: 64, encoding: DW_ATE_float)
!179 = !{!180, !181}
!180 = !DILocalVariable(name: "self", arg: 1, scope: !171, file: !172, line: 369, type: !178)
!181 = !DILocalVariable(name: "n", arg: 2, scope: !171, file: !172, line: 369, type: !178)
!182 = !DILocation(line: 369, column: 17, scope: !171)
!183 = !DILocation(line: 369, column: 23, scope: !171)
!184 = !DILocation(line: 370, column: 18, scope: !171)
!185 = !DILocation(line: 371, column: 6, scope: !171)
!186 = distinct !DISubprogram(name: "run_test_1", scope: !8, file: !7, line: 90, type: !187, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !20, retainedNodes: !190)
!187 = !DISubroutineType(types: !188)
!188 = !{!189}
!189 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!190 = !{!191, !193}
!191 = !DILocalVariable(name: "rgb", scope: !192, file: !7, line: 91, type: !13, align: 1)
!192 = distinct !DILexicalBlock(scope: !186, file: !7, line: 91, column: 5)
!193 = !DILocalVariable(name: "result", scope: !194, file: !7, line: 92, type: !13, align: 1)
!194 = distinct !DILexicalBlock(scope: !192, file: !7, line: 92, column: 5)
!195 = !DILocation(line: 91, column: 9, scope: !192)
!196 = !DILocation(line: 92, column: 9, scope: !194)
!197 = !DILocation(line: 91, column: 15, scope: !186)
!198 = !DILocation(line: 92, column: 18, scope: !192)
!199 = !DILocation(line: 93, column: 5, scope: !194)
!200 = !DILocation(line: 93, column: 23, scope: !194)
!201 = !{i8 0, i8 2}
!202 = !DILocation(line: 93, column: 42, scope: !194)
!203 = !DILocation(line: 94, column: 2, scope: !186)
!204 = distinct !DISubprogram(name: "run_test_2", scope: !8, file: !7, line: 97, type: !187, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !20, retainedNodes: !205)
!205 = !{!206, !208}
!206 = !DILocalVariable(name: "rgb", scope: !207, file: !7, line: 98, type: !13, align: 1)
!207 = distinct !DILexicalBlock(scope: !204, file: !7, line: 98, column: 5)
!208 = !DILocalVariable(name: "result", scope: !209, file: !7, line: 99, type: !13, align: 1)
!209 = distinct !DILexicalBlock(scope: !207, file: !7, line: 99, column: 5)
!210 = !DILocation(line: 98, column: 9, scope: !207)
!211 = !DILocation(line: 99, column: 9, scope: !209)
!212 = !DILocation(line: 98, column: 15, scope: !204)
!213 = !DILocation(line: 99, column: 18, scope: !207)
!214 = !DILocation(line: 100, column: 5, scope: !209)
!215 = !DILocation(line: 100, column: 24, scope: !209)
!216 = !DILocation(line: 100, column: 43, scope: !209)
!217 = !DILocation(line: 101, column: 2, scope: !204)
!218 = distinct !DISubprogram(name: "run_test_3", scope: !8, file: !7, line: 104, type: !187, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !20, retainedNodes: !219)
!219 = !{!220, !222}
!220 = !DILocalVariable(name: "rgb", scope: !221, file: !7, line: 105, type: !13, align: 1)
!221 = distinct !DILexicalBlock(scope: !218, file: !7, line: 105, column: 5)
!222 = !DILocalVariable(name: "result", scope: !223, file: !7, line: 106, type: !13, align: 1)
!223 = distinct !DILexicalBlock(scope: !221, file: !7, line: 106, column: 5)
!224 = !DILocation(line: 105, column: 9, scope: !221)
!225 = !DILocation(line: 106, column: 9, scope: !223)
!226 = !DILocation(line: 105, column: 15, scope: !218)
!227 = !DILocation(line: 106, column: 18, scope: !221)
!228 = !DILocation(line: 107, column: 5, scope: !223)
!229 = !DILocation(line: 107, column: 24, scope: !223)
!230 = !DILocation(line: 107, column: 43, scope: !223)
!231 = !DILocation(line: 108, column: 2, scope: !218)
!232 = distinct !DISubprogram(name: "run_test_4", scope: !8, file: !7, line: 111, type: !187, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !20, retainedNodes: !233)
!233 = !{!234, !236}
!234 = !DILocalVariable(name: "rgb", scope: !235, file: !7, line: 112, type: !13, align: 1)
!235 = distinct !DILexicalBlock(scope: !232, file: !7, line: 112, column: 5)
!236 = !DILocalVariable(name: "result", scope: !237, file: !7, line: 113, type: !13, align: 1)
!237 = distinct !DILexicalBlock(scope: !235, file: !7, line: 113, column: 5)
!238 = !DILocation(line: 112, column: 9, scope: !235)
!239 = !DILocation(line: 113, column: 9, scope: !237)
!240 = !DILocation(line: 112, column: 15, scope: !232)
!241 = !DILocation(line: 113, column: 18, scope: !235)
!242 = !DILocation(line: 114, column: 5, scope: !237)
!243 = !DILocation(line: 114, column: 24, scope: !237)
!244 = !DILocation(line: 114, column: 43, scope: !237)
!245 = !DILocation(line: 115, column: 2, scope: !232)
!246 = distinct !DISubprogram(name: "run_test_5", scope: !8, file: !7, line: 118, type: !187, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !20, retainedNodes: !247)
!247 = !{!248, !250}
!248 = !DILocalVariable(name: "rgb", scope: !249, file: !7, line: 119, type: !13, align: 1)
!249 = distinct !DILexicalBlock(scope: !246, file: !7, line: 119, column: 5)
!250 = !DILocalVariable(name: "result", scope: !251, file: !7, line: 120, type: !13, align: 1)
!251 = distinct !DILexicalBlock(scope: !249, file: !7, line: 120, column: 5)
!252 = !DILocation(line: 119, column: 9, scope: !249)
!253 = !DILocation(line: 120, column: 9, scope: !251)
!254 = !DILocation(line: 119, column: 15, scope: !246)
!255 = !DILocation(line: 120, column: 18, scope: !249)
!256 = !DILocation(line: 121, column: 5, scope: !251)
!257 = !DILocation(line: 121, column: 23, scope: !251)
!258 = !DILocation(line: 121, column: 41, scope: !251)
!259 = !DILocation(line: 122, column: 2, scope: !246)
