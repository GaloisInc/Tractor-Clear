; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"src::lib::CbRgb255" = type { i8, i8, i8 }

; Function Attrs: nonlazybind uwtable
define float @contrast_ratio(i24 %0, i24 %1) unnamed_addr #0 !dbg !6 {
start:
  %2 = alloca %"src::lib::CbRgb255", align 1
  %3 = alloca %"src::lib::CbRgb255", align 1
  %4 = alloca i24, align 4
  %b = alloca %"src::lib::CbRgb255", align 1
  %5 = alloca i24, align 4
  %a = alloca %"src::lib::CbRgb255", align 1
  store i24 %0, ptr %5, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %a, ptr align 4 %5, i64 3, i1 false)
  store i24 %1, ptr %4, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b, ptr align 4 %4, i64 3, i1 false)
    #dbg_declare(ptr %a, !23, !DIExpression(), !25)
    #dbg_declare(ptr %b, !24, !DIExpression(), !26)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr align 1 %a, i64 3, i1 false), !dbg !27
  %6 = load i24, ptr %3, align 1, !dbg !27
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %b, i64 3, i1 false), !dbg !27
  %7 = load i24, ptr %2, align 1, !dbg !27
  %8 = call float @_ZN18contrast_ratio_lib3src3lib14contrast_ratio17h495012384fba0a48E(i24 %6, i24 %7), !dbg !27
  ret float %8, !dbg !28
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nonlazybind uwtable
define internal float @_ZN18contrast_ratio_lib3src3lib14contrast_ratio17h495012384fba0a48E(i24 %0, i24 %1) unnamed_addr #0 !dbg !29 {
start:
  %2 = alloca i24, align 4
  %b = alloca %"src::lib::CbRgb255", align 1
  %3 = alloca i24, align 4
  %a = alloca %"src::lib::CbRgb255", align 1
  store i24 %0, ptr %3, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %a, ptr align 4 %3, i64 3, i1 false)
  store i24 %1, ptr %2, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b, ptr align 4 %2, i64 3, i1 false)
    #dbg_declare(ptr %a, !31, !DIExpression(), !33)
    #dbg_declare(ptr %b, !32, !DIExpression(), !34)
  %_5 = load i8, ptr %a, align 1, !dbg !35, !noundef !21
  %_4 = uitofp i8 %_5 to float, !dbg !35
  %_3 = fdiv float %_4, 2.550000e+02, !dbg !35
  %4 = getelementptr inbounds %"src::lib::CbRgb255", ptr %a, i32 0, i32 1, !dbg !36
  %_8 = load i8, ptr %4, align 1, !dbg !36, !noundef !21
  %_7 = uitofp i8 %_8 to float, !dbg !36
  %_6 = fdiv float %_7, 2.550000e+02, !dbg !36
  %5 = getelementptr inbounds %"src::lib::CbRgb255", ptr %a, i32 0, i32 2, !dbg !37
  %_11 = load i8, ptr %5, align 1, !dbg !37, !noundef !21
  %_10 = uitofp i8 %_11 to float, !dbg !37
  %_9 = fdiv float %_10, 2.550000e+02, !dbg !37
  %_14 = load i8, ptr %b, align 1, !dbg !38, !noundef !21
  %_13 = uitofp i8 %_14 to float, !dbg !38
  %_12 = fdiv float %_13, 2.550000e+02, !dbg !38
  %6 = getelementptr inbounds %"src::lib::CbRgb255", ptr %b, i32 0, i32 1, !dbg !39
  %_17 = load i8, ptr %6, align 1, !dbg !39, !noundef !21
  %_16 = uitofp i8 %_17 to float, !dbg !39
  %_15 = fdiv float %_16, 2.550000e+02, !dbg !39
  %7 = getelementptr inbounds %"src::lib::CbRgb255", ptr %b, i32 0, i32 2, !dbg !40
  %_20 = load i8, ptr %7, align 1, !dbg !40, !noundef !21
  %_19 = uitofp i8 %_20 to float, !dbg !40
  %_18 = fdiv float %_19, 2.550000e+02, !dbg !40
  %8 = call float @_ZN18contrast_ratio_lib3src3lib17cb_contrast_ratio17he10fab0171491499E(float %_3, float %_6, float %_9, float %_12, float %_15, float %_18), !dbg !41
  ret float %8, !dbg !42
}

; Function Attrs: nonlazybind uwtable
define internal float @_ZN18contrast_ratio_lib3src3lib17cb_contrast_ratio17he10fab0171491499E(float %ra, float %ga, float %ba, float %rb, float %gb, float %bb) unnamed_addr #0 !dbg !43 {
start:
  %low.dbg.spill = alloca float, align 4
  %high.dbg.spill = alloca float, align 4
  %lum_b.dbg.spill = alloca float, align 4
  %lum_a.dbg.spill = alloca float, align 4
  %bb.dbg.spill = alloca float, align 4
  %gb.dbg.spill = alloca float, align 4
  %rb.dbg.spill = alloca float, align 4
  %ba.dbg.spill = alloca float, align 4
  %ga.dbg.spill = alloca float, align 4
  %ra.dbg.spill = alloca float, align 4
  %_11 = alloca { float, float }, align 4
  store float %ra, ptr %ra.dbg.spill, align 4
    #dbg_declare(ptr %ra.dbg.spill, !47, !DIExpression(), !60)
  store float %ga, ptr %ga.dbg.spill, align 4
    #dbg_declare(ptr %ga.dbg.spill, !48, !DIExpression(), !61)
  store float %ba, ptr %ba.dbg.spill, align 4
    #dbg_declare(ptr %ba.dbg.spill, !49, !DIExpression(), !62)
  store float %rb, ptr %rb.dbg.spill, align 4
    #dbg_declare(ptr %rb.dbg.spill, !50, !DIExpression(), !63)
  store float %gb, ptr %gb.dbg.spill, align 4
    #dbg_declare(ptr %gb.dbg.spill, !51, !DIExpression(), !64)
  store float %bb, ptr %bb.dbg.spill, align 4
    #dbg_declare(ptr %bb.dbg.spill, !52, !DIExpression(), !65)
  %lum_a = call float @_ZN18contrast_ratio_lib3src3lib12cb_luminance17h671916d1d5a46baeE(float %ra, float %ga, float %ba), !dbg !66
  store float %lum_a, ptr %lum_a.dbg.spill, align 4, !dbg !66
    #dbg_declare(ptr %lum_a.dbg.spill, !53, !DIExpression(), !67)
  %lum_b = call float @_ZN18contrast_ratio_lib3src3lib12cb_luminance17h671916d1d5a46baeE(float %rb, float %gb, float %bb), !dbg !68
  store float %lum_b, ptr %lum_b.dbg.spill, align 4, !dbg !68
    #dbg_declare(ptr %lum_b.dbg.spill, !55, !DIExpression(), !69)
  %_12 = fcmp olt float %lum_a, %lum_b, !dbg !70
  br i1 %_12, label %bb3, label %bb4, !dbg !70

bb4:                                              ; preds = %start
  store float %lum_a, ptr %_11, align 4, !dbg !71
  %0 = getelementptr inbounds { float, float }, ptr %_11, i32 0, i32 1, !dbg !71
  store float %lum_b, ptr %0, align 4, !dbg !71
  br label %bb5, !dbg !72

bb3:                                              ; preds = %start
  store float %lum_b, ptr %_11, align 4, !dbg !73
  %1 = getelementptr inbounds { float, float }, ptr %_11, i32 0, i32 1, !dbg !73
  store float %lum_a, ptr %1, align 4, !dbg !73
  br label %bb5, !dbg !72

bb5:                                              ; preds = %bb3, %bb4
  %high = load float, ptr %_11, align 4, !dbg !74, !noundef !21
  store float %high, ptr %high.dbg.spill, align 4, !dbg !74
    #dbg_declare(ptr %high.dbg.spill, !57, !DIExpression(), !75)
  %2 = getelementptr inbounds { float, float }, ptr %_11, i32 0, i32 1, !dbg !76
  %low = load float, ptr %2, align 4, !dbg !76, !noundef !21
  store float %low, ptr %low.dbg.spill, align 4, !dbg !76
    #dbg_declare(ptr %low.dbg.spill, !59, !DIExpression(), !77)
  %3 = fdiv float %high, %low, !dbg !78
  ret float %3, !dbg !79
}

; Function Attrs: nonlazybind uwtable
define internal float @_ZN18contrast_ratio_lib3src3lib12cb_luminance17h671916d1d5a46baeE(float %0, float %1, float %2) unnamed_addr #0 !dbg !80 {
start:
  %_28 = alloca float, align 4
  %_16 = alloca float, align 4
  %_4 = alloca float, align 4
  %b = alloca float, align 4
  %g = alloca float, align 4
  %r = alloca float, align 4
  store float %0, ptr %r, align 4
  store float %1, ptr %g, align 4
  store float %2, ptr %b, align 4
    #dbg_declare(ptr %r, !84, !DIExpression(), !87)
    #dbg_declare(ptr %g, !85, !DIExpression(), !88)
    #dbg_declare(ptr %b, !86, !DIExpression(), !89)
  %_7 = load float, ptr %r, align 4, !dbg !90, !noundef !21
  %_6 = fpext float %_7 to double, !dbg !90
  %_5 = fcmp ogt double %_6, 4.045000e-02, !dbg !90
  br i1 %_5, label %bb1, label %bb3, !dbg !90

bb3:                                              ; preds = %start
  %_15 = load float, ptr %r, align 4, !dbg !91, !noundef !21
  %_14 = fpext float %_15 to double, !dbg !91
  %_13 = fdiv double %_14, 1.292000e+01, !dbg !92
  %3 = fptrunc double %_13 to float, !dbg !92
  store float %3, ptr %_4, align 4, !dbg !92
  br label %bb4, !dbg !93

bb1:                                              ; preds = %start
  %_12 = load float, ptr %r, align 4, !dbg !94, !noundef !21
  %_11 = fpext float %_12 to double, !dbg !94
  %_10 = fadd double %_11, 5.500000e-02, !dbg !95
  %_9 = fdiv double %_10, 1.055000e+00, !dbg !96
  %_8 = call double @"_ZN3std3f6421_$LT$impl$u20$f64$GT$4powf17h04aa8e8a71a2d1a8E"(double %_9, double 2.400000e+00), !dbg !97
  %4 = fptrunc double %_8 to float, !dbg !97
  store float %4, ptr %_4, align 4, !dbg !97
  br label %bb4, !dbg !93

bb4:                                              ; preds = %bb1, %bb3
  %5 = load float, ptr %_4, align 4, !dbg !98, !noundef !21
  store float %5, ptr %r, align 4, !dbg !98
  %_19 = load float, ptr %g, align 4, !dbg !99, !noundef !21
  %_18 = fpext float %_19 to double, !dbg !99
  %_17 = fcmp ogt double %_18, 4.045000e-02, !dbg !99
  br i1 %_17, label %bb5, label %bb7, !dbg !99

bb7:                                              ; preds = %bb4
  %_27 = load float, ptr %g, align 4, !dbg !100, !noundef !21
  %_26 = fpext float %_27 to double, !dbg !100
  %_25 = fdiv double %_26, 1.292000e+01, !dbg !101
  %6 = fptrunc double %_25 to float, !dbg !101
  store float %6, ptr %_16, align 4, !dbg !101
  br label %bb8, !dbg !102

bb5:                                              ; preds = %bb4
  %_24 = load float, ptr %g, align 4, !dbg !103, !noundef !21
  %_23 = fpext float %_24 to double, !dbg !103
  %_22 = fadd double %_23, 5.500000e-02, !dbg !104
  %_21 = fdiv double %_22, 1.055000e+00, !dbg !105
  %_20 = call double @"_ZN3std3f6421_$LT$impl$u20$f64$GT$4powf17h04aa8e8a71a2d1a8E"(double %_21, double 2.400000e+00), !dbg !106
  %7 = fptrunc double %_20 to float, !dbg !106
  store float %7, ptr %_16, align 4, !dbg !106
  br label %bb8, !dbg !102

bb8:                                              ; preds = %bb5, %bb7
  %8 = load float, ptr %_16, align 4, !dbg !107, !noundef !21
  store float %8, ptr %g, align 4, !dbg !107
  %_31 = load float, ptr %b, align 4, !dbg !108, !noundef !21
  %_30 = fpext float %_31 to double, !dbg !108
  %_29 = fcmp ogt double %_30, 4.045000e-02, !dbg !108
  br i1 %_29, label %bb9, label %bb11, !dbg !108

bb11:                                             ; preds = %bb8
  %_39 = load float, ptr %b, align 4, !dbg !109, !noundef !21
  %_38 = fpext float %_39 to double, !dbg !109
  %_37 = fdiv double %_38, 1.292000e+01, !dbg !110
  %9 = fptrunc double %_37 to float, !dbg !110
  store float %9, ptr %_28, align 4, !dbg !110
  br label %bb12, !dbg !111

bb9:                                              ; preds = %bb8
  %_36 = load float, ptr %b, align 4, !dbg !112, !noundef !21
  %_35 = fpext float %_36 to double, !dbg !112
  %_34 = fadd double %_35, 5.500000e-02, !dbg !113
  %_33 = fdiv double %_34, 1.055000e+00, !dbg !114
  %_32 = call double @"_ZN3std3f6421_$LT$impl$u20$f64$GT$4powf17h04aa8e8a71a2d1a8E"(double %_33, double 2.400000e+00), !dbg !115
  %10 = fptrunc double %_32 to float, !dbg !115
  store float %10, ptr %_28, align 4, !dbg !115
  br label %bb12, !dbg !111

bb12:                                             ; preds = %bb9, %bb11
  %11 = load float, ptr %_28, align 4, !dbg !116, !noundef !21
  store float %11, ptr %b, align 4, !dbg !116
  %_42 = load float, ptr %r, align 4, !dbg !117, !noundef !21
  %_41 = fmul float 0x3FCB367A00000000, %_42, !dbg !118
  %_44 = load float, ptr %g, align 4, !dbg !119, !noundef !21
  %_43 = fmul float 0x3FE6E2EB20000000, %_44, !dbg !120
  %_40 = fadd float %_41, %_43, !dbg !118
  %_46 = load float, ptr %b, align 4, !dbg !121, !noundef !21
  %_45 = fmul float 0x3FB27BB300000000, %_46, !dbg !122
  %12 = fadd float %_40, %_45, !dbg !118
  ret float %12, !dbg !123
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal double @"_ZN3std3f6421_$LT$impl$u20$f64$GT$4powf17h04aa8e8a71a2d1a8E"(double %self, double %n) unnamed_addr #2 !dbg !124 {
start:
  %0 = alloca double, align 8
  %n.dbg.spill = alloca double, align 8
  %self.dbg.spill = alloca double, align 8
  store double %self, ptr %self.dbg.spill, align 8
    #dbg_declare(ptr %self.dbg.spill, !133, !DIExpression(), !135)
  store double %n, ptr %n.dbg.spill, align 8
    #dbg_declare(ptr %n.dbg.spill, !134, !DIExpression(), !136)
  %1 = call double @llvm.pow.f64(double %self, double %n), !dbg !137
  store double %1, ptr %0, align 8, !dbg !137
  %2 = load double, ptr %0, align 8, !dbg !137, !noundef !21
  ret double %2, !dbg !138
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.pow.f64(double, double) #3

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_1() unnamed_addr #0 !dbg !139 {
start:
  %expected.dbg.spill = alloca float, align 4
  %result.dbg.spill = alloca float, align 4
  %0 = alloca %"src::lib::CbRgb255", align 1
  %1 = alloca %"src::lib::CbRgb255", align 1
  %b = alloca %"src::lib::CbRgb255", align 1
  %a = alloca %"src::lib::CbRgb255", align 1
    #dbg_declare(ptr %a, !144, !DIExpression(), !152)
    #dbg_declare(ptr %b, !146, !DIExpression(), !153)
  store i8 5, ptr %a, align 1, !dbg !154
  %2 = getelementptr inbounds %"src::lib::CbRgb255", ptr %a, i32 0, i32 1, !dbg !154
  store i8 8, ptr %2, align 1, !dbg !154
  %3 = getelementptr inbounds %"src::lib::CbRgb255", ptr %a, i32 0, i32 2, !dbg !154
  store i8 10, ptr %3, align 1, !dbg !154
  store i8 2, ptr %b, align 1, !dbg !155
  %4 = getelementptr inbounds %"src::lib::CbRgb255", ptr %b, i32 0, i32 1, !dbg !155
  store i8 4, ptr %4, align 1, !dbg !155
  %5 = getelementptr inbounds %"src::lib::CbRgb255", ptr %b, i32 0, i32 2, !dbg !155
  store i8 6, ptr %5, align 1, !dbg !155
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %a, i64 3, i1 false), !dbg !156
  %6 = load i24, ptr %1, align 1, !dbg !156
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %b, i64 3, i1 false), !dbg !156
  %7 = load i24, ptr %0, align 1, !dbg !156
  %result = call float @contrast_ratio(i24 %6, i24 %7), !dbg !156
  store float %result, ptr %result.dbg.spill, align 4, !dbg !156
    #dbg_declare(ptr %result.dbg.spill, !148, !DIExpression(), !157)
  store float 0x4000258E20000000, ptr %expected.dbg.spill, align 4, !dbg !158
    #dbg_declare(ptr %expected.dbg.spill, !150, !DIExpression(), !159)
  %8 = fcmp oeq float %result, 0x4000258E20000000, !dbg !160
  ret i1 %8, !dbg !161
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_2() unnamed_addr #0 !dbg !162 {
start:
  %expected.dbg.spill = alloca float, align 4
  %result.dbg.spill = alloca float, align 4
  %0 = alloca %"src::lib::CbRgb255", align 1
  %1 = alloca %"src::lib::CbRgb255", align 1
  %b = alloca %"src::lib::CbRgb255", align 1
  %a = alloca %"src::lib::CbRgb255", align 1
    #dbg_declare(ptr %a, !164, !DIExpression(), !172)
    #dbg_declare(ptr %b, !166, !DIExpression(), !173)
  store i8 -128, ptr %a, align 1, !dbg !174
  %2 = getelementptr inbounds %"src::lib::CbRgb255", ptr %a, i32 0, i32 1, !dbg !174
  store i8 -56, ptr %2, align 1, !dbg !174
  %3 = getelementptr inbounds %"src::lib::CbRgb255", ptr %a, i32 0, i32 2, !dbg !174
  store i8 -1, ptr %3, align 1, !dbg !174
  store i8 100, ptr %b, align 1, !dbg !175
  %4 = getelementptr inbounds %"src::lib::CbRgb255", ptr %b, i32 0, i32 1, !dbg !175
  store i8 -106, ptr %4, align 1, !dbg !175
  %5 = getelementptr inbounds %"src::lib::CbRgb255", ptr %b, i32 0, i32 2, !dbg !175
  store i8 -76, ptr %5, align 1, !dbg !175
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %a, i64 3, i1 false), !dbg !176
  %6 = load i24, ptr %1, align 1, !dbg !176
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %b, i64 3, i1 false), !dbg !176
  %7 = load i24, ptr %0, align 1, !dbg !176
  %result = call float @contrast_ratio(i24 %6, i24 %7), !dbg !176
  store float %result, ptr %result.dbg.spill, align 4, !dbg !176
    #dbg_declare(ptr %result.dbg.spill, !168, !DIExpression(), !177)
  store float 0x3FFE8D6680000000, ptr %expected.dbg.spill, align 4, !dbg !178
    #dbg_declare(ptr %expected.dbg.spill, !170, !DIExpression(), !179)
  %8 = fcmp oeq float %result, 0x3FFE8D6680000000, !dbg !180
  ret i1 %8, !dbg !181
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_3() unnamed_addr #0 !dbg !182 {
start:
  %expected.dbg.spill = alloca float, align 4
  %result.dbg.spill = alloca float, align 4
  %0 = alloca %"src::lib::CbRgb255", align 1
  %1 = alloca %"src::lib::CbRgb255", align 1
  %b = alloca %"src::lib::CbRgb255", align 1
  %a = alloca %"src::lib::CbRgb255", align 1
    #dbg_declare(ptr %a, !184, !DIExpression(), !192)
    #dbg_declare(ptr %b, !186, !DIExpression(), !193)
  store i8 5, ptr %a, align 1, !dbg !194
  %2 = getelementptr inbounds %"src::lib::CbRgb255", ptr %a, i32 0, i32 1, !dbg !194
  store i8 8, ptr %2, align 1, !dbg !194
  %3 = getelementptr inbounds %"src::lib::CbRgb255", ptr %a, i32 0, i32 2, !dbg !194
  store i8 10, ptr %3, align 1, !dbg !194
  store i8 -128, ptr %b, align 1, !dbg !195
  %4 = getelementptr inbounds %"src::lib::CbRgb255", ptr %b, i32 0, i32 1, !dbg !195
  store i8 -56, ptr %4, align 1, !dbg !195
  %5 = getelementptr inbounds %"src::lib::CbRgb255", ptr %b, i32 0, i32 2, !dbg !195
  store i8 -1, ptr %5, align 1, !dbg !195
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %a, i64 3, i1 false), !dbg !196
  %6 = load i24, ptr %1, align 1, !dbg !196
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %b, i64 3, i1 false), !dbg !196
  %7 = load i24, ptr %0, align 1, !dbg !196
  %result = call float @contrast_ratio(i24 %6, i24 %7), !dbg !196
  store float %result, ptr %result.dbg.spill, align 4, !dbg !196
    #dbg_declare(ptr %result.dbg.spill, !188, !DIExpression(), !197)
  store float 0x406D242D00000000, ptr %expected.dbg.spill, align 4, !dbg !198
    #dbg_declare(ptr %expected.dbg.spill, !190, !DIExpression(), !199)
  %8 = fcmp oeq float %result, 0x406D242D00000000, !dbg !200
  ret i1 %8, !dbg !201
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_4() unnamed_addr #0 !dbg !202 {
start:
  %expected.dbg.spill = alloca float, align 4
  %result.dbg.spill = alloca float, align 4
  %0 = alloca %"src::lib::CbRgb255", align 1
  %1 = alloca %"src::lib::CbRgb255", align 1
  %b = alloca %"src::lib::CbRgb255", align 1
  %a = alloca %"src::lib::CbRgb255", align 1
    #dbg_declare(ptr %a, !204, !DIExpression(), !212)
    #dbg_declare(ptr %b, !206, !DIExpression(), !213)
  store i8 -128, ptr %a, align 1, !dbg !214
  %2 = getelementptr inbounds %"src::lib::CbRgb255", ptr %a, i32 0, i32 1, !dbg !214
  store i8 -56, ptr %2, align 1, !dbg !214
  %3 = getelementptr inbounds %"src::lib::CbRgb255", ptr %a, i32 0, i32 2, !dbg !214
  store i8 -1, ptr %3, align 1, !dbg !214
  store i8 5, ptr %b, align 1, !dbg !215
  %4 = getelementptr inbounds %"src::lib::CbRgb255", ptr %b, i32 0, i32 1, !dbg !215
  store i8 8, ptr %4, align 1, !dbg !215
  %5 = getelementptr inbounds %"src::lib::CbRgb255", ptr %b, i32 0, i32 2, !dbg !215
  store i8 10, ptr %5, align 1, !dbg !215
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %a, i64 3, i1 false), !dbg !216
  %6 = load i24, ptr %1, align 1, !dbg !216
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %b, i64 3, i1 false), !dbg !216
  %7 = load i24, ptr %0, align 1, !dbg !216
  %result = call float @contrast_ratio(i24 %6, i24 %7), !dbg !216
  store float %result, ptr %result.dbg.spill, align 4, !dbg !216
    #dbg_declare(ptr %result.dbg.spill, !208, !DIExpression(), !217)
  store float 0x406D242D00000000, ptr %expected.dbg.spill, align 4, !dbg !218
    #dbg_declare(ptr %expected.dbg.spill, !210, !DIExpression(), !219)
  %8 = fcmp oeq float %result, 0x406D242D00000000, !dbg !220
  ret i1 %8, !dbg !221
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_5() unnamed_addr #0 !dbg !222 {
start:
  %expected.dbg.spill = alloca float, align 4
  %result.dbg.spill = alloca float, align 4
  %0 = alloca %"src::lib::CbRgb255", align 1
  %1 = alloca %"src::lib::CbRgb255", align 1
  %b = alloca %"src::lib::CbRgb255", align 1
  %a = alloca %"src::lib::CbRgb255", align 1
    #dbg_declare(ptr %a, !224, !DIExpression(), !232)
    #dbg_declare(ptr %b, !226, !DIExpression(), !233)
  store i8 10, ptr %a, align 1, !dbg !234
  %2 = getelementptr inbounds %"src::lib::CbRgb255", ptr %a, i32 0, i32 1, !dbg !234
  store i8 50, ptr %2, align 1, !dbg !234
  %3 = getelementptr inbounds %"src::lib::CbRgb255", ptr %a, i32 0, i32 2, !dbg !234
  store i8 100, ptr %3, align 1, !dbg !234
  store i8 50, ptr %b, align 1, !dbg !235
  %4 = getelementptr inbounds %"src::lib::CbRgb255", ptr %b, i32 0, i32 1, !dbg !235
  store i8 10, ptr %4, align 1, !dbg !235
  %5 = getelementptr inbounds %"src::lib::CbRgb255", ptr %b, i32 0, i32 2, !dbg !235
  store i8 -56, ptr %5, align 1, !dbg !235
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %a, i64 3, i1 false), !dbg !236
  %6 = load i24, ptr %1, align 1, !dbg !236
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %b, i64 3, i1 false), !dbg !236
  %7 = load i24, ptr %0, align 1, !dbg !236
  %result = call float @contrast_ratio(i24 %6, i24 %7), !dbg !236
  store float %result, ptr %result.dbg.spill, align 4, !dbg !236
    #dbg_declare(ptr %result.dbg.spill, !228, !DIExpression(), !237)
  store float 0x3FF8D0E9E0000000, ptr %expected.dbg.spill, align 4, !dbg !238
    #dbg_declare(ptr %expected.dbg.spill, !230, !DIExpression(), !239)
  %8 = fcmp oeq float %result, 0x3FF8D0E9E0000000, !dbg !240
  ret i1 %8, !dbg !241
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_8() unnamed_addr #0 !dbg !242 {
start:
  %result.dbg.spill = alloca float, align 4
  %0 = alloca %"src::lib::CbRgb255", align 1
  %1 = alloca %"src::lib::CbRgb255", align 1
  %b = alloca %"src::lib::CbRgb255", align 1
  %a = alloca %"src::lib::CbRgb255", align 1
    #dbg_declare(ptr %a, !244, !DIExpression(), !250)
    #dbg_declare(ptr %b, !246, !DIExpression(), !251)
  store i8 -128, ptr %a, align 1, !dbg !252
  %2 = getelementptr inbounds %"src::lib::CbRgb255", ptr %a, i32 0, i32 1, !dbg !252
  store i8 -128, ptr %2, align 1, !dbg !252
  %3 = getelementptr inbounds %"src::lib::CbRgb255", ptr %a, i32 0, i32 2, !dbg !252
  store i8 -128, ptr %3, align 1, !dbg !252
  store i8 -128, ptr %b, align 1, !dbg !253
  %4 = getelementptr inbounds %"src::lib::CbRgb255", ptr %b, i32 0, i32 1, !dbg !253
  store i8 -128, ptr %4, align 1, !dbg !253
  %5 = getelementptr inbounds %"src::lib::CbRgb255", ptr %b, i32 0, i32 2, !dbg !253
  store i8 -128, ptr %5, align 1, !dbg !253
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %a, i64 3, i1 false), !dbg !254
  %6 = load i24, ptr %1, align 1, !dbg !254
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %b, i64 3, i1 false), !dbg !254
  %7 = load i24, ptr %0, align 1, !dbg !254
  %result = call float @contrast_ratio(i24 %6, i24 %7), !dbg !254
  store float %result, ptr %result.dbg.spill, align 4, !dbg !254
    #dbg_declare(ptr %result.dbg.spill, !248, !DIExpression(), !255)
  %_5 = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h08f1eafce42863eeE"(i32 1065353216), !dbg !256
  %8 = fcmp oeq float %result, %_5, !dbg !257
  ret i1 %8, !dbg !258
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h08f1eafce42863eeE"(i32 %v) unnamed_addr #2 !dbg !259 {
start:
  %x.dbg.spill = alloca i32, align 4
  %v.dbg.spill = alloca i32, align 4
  %_2 = alloca i32, align 4
  store i32 %v, ptr %v.dbg.spill, align 4
    #dbg_declare(ptr %v.dbg.spill, !268, !DIExpression(), !269)
  store i32 %v, ptr %_2, align 4, !dbg !270
  %x = load i32, ptr %_2, align 4, !dbg !271, !noundef !21
  store i32 %x, ptr %x.dbg.spill, align 4, !dbg !271
    #dbg_declare(ptr %x.dbg.spill, !272, !DIExpression(), !276)
  %0 = bitcast i32 %x to float, !dbg !277
  ret float %0, !dbg !278
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_9() unnamed_addr #0 !dbg !279 {
start:
  %result.dbg.spill = alloca float, align 4
  %0 = alloca %"src::lib::CbRgb255", align 1
  %1 = alloca %"src::lib::CbRgb255", align 1
  %b = alloca %"src::lib::CbRgb255", align 1
  %a = alloca %"src::lib::CbRgb255", align 1
    #dbg_declare(ptr %a, !281, !DIExpression(), !287)
    #dbg_declare(ptr %b, !283, !DIExpression(), !288)
  store i8 10, ptr %a, align 1, !dbg !289
  %2 = getelementptr inbounds %"src::lib::CbRgb255", ptr %a, i32 0, i32 1, !dbg !289
  store i8 10, ptr %2, align 1, !dbg !289
  %3 = getelementptr inbounds %"src::lib::CbRgb255", ptr %a, i32 0, i32 2, !dbg !289
  store i8 10, ptr %3, align 1, !dbg !289
  store i8 11, ptr %b, align 1, !dbg !290
  %4 = getelementptr inbounds %"src::lib::CbRgb255", ptr %b, i32 0, i32 1, !dbg !290
  store i8 11, ptr %4, align 1, !dbg !290
  %5 = getelementptr inbounds %"src::lib::CbRgb255", ptr %b, i32 0, i32 2, !dbg !290
  store i8 11, ptr %5, align 1, !dbg !290
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %a, i64 3, i1 false), !dbg !291
  %6 = load i24, ptr %1, align 1, !dbg !291
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %b, i64 3, i1 false), !dbg !291
  %7 = load i24, ptr %0, align 1, !dbg !291
  %result = call float @contrast_ratio(i24 %6, i24 %7), !dbg !291
  store float %result, ptr %result.dbg.spill, align 4, !dbg !291
    #dbg_declare(ptr %result.dbg.spill, !285, !DIExpression(), !292)
  %_5 = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h08f1eafce42863eeE"(i32 1066213465), !dbg !293
  %8 = fcmp oeq float %result, %_5, !dbg !294
  ret i1 %8, !dbg !295
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_10() unnamed_addr #0 !dbg !296 {
start:
  %result.dbg.spill = alloca float, align 4
  %0 = alloca %"src::lib::CbRgb255", align 1
  %1 = alloca %"src::lib::CbRgb255", align 1
  %b = alloca %"src::lib::CbRgb255", align 1
  %a = alloca %"src::lib::CbRgb255", align 1
    #dbg_declare(ptr %a, !298, !DIExpression(), !304)
    #dbg_declare(ptr %b, !300, !DIExpression(), !305)
  store i8 5, ptr %a, align 1, !dbg !306
  %2 = getelementptr inbounds %"src::lib::CbRgb255", ptr %a, i32 0, i32 1, !dbg !306
  store i8 50, ptr %2, align 1, !dbg !306
  %3 = getelementptr inbounds %"src::lib::CbRgb255", ptr %a, i32 0, i32 2, !dbg !306
  store i8 -56, ptr %3, align 1, !dbg !306
  store i8 50, ptr %b, align 1, !dbg !307
  %4 = getelementptr inbounds %"src::lib::CbRgb255", ptr %b, i32 0, i32 1, !dbg !307
  store i8 5, ptr %4, align 1, !dbg !307
  %5 = getelementptr inbounds %"src::lib::CbRgb255", ptr %b, i32 0, i32 2, !dbg !307
  store i8 -56, ptr %5, align 1, !dbg !307
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %a, i64 3, i1 false), !dbg !308
  %6 = load i24, ptr %1, align 1, !dbg !308
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %b, i64 3, i1 false), !dbg !308
  %7 = load i24, ptr %0, align 1, !dbg !308
  %result = call float @contrast_ratio(i24 %6, i24 %7), !dbg !308
  store float %result, ptr %result.dbg.spill, align 4, !dbg !308
    #dbg_declare(ptr %result.dbg.spill, !302, !DIExpression(), !309)
  %_5 = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h08f1eafce42863eeE"(i32 1067937127), !dbg !310
  %8 = fcmp oeq float %result, %_5, !dbg !311
  ret i1 %8, !dbg !312
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_11() unnamed_addr #0 !dbg !313 {
start:
  %result.dbg.spill = alloca float, align 4
  %0 = alloca %"src::lib::CbRgb255", align 1
  %1 = alloca %"src::lib::CbRgb255", align 1
  %b = alloca %"src::lib::CbRgb255", align 1
  %a = alloca %"src::lib::CbRgb255", align 1
    #dbg_declare(ptr %a, !315, !DIExpression(), !321)
    #dbg_declare(ptr %b, !317, !DIExpression(), !322)
  store i8 -56, ptr %a, align 1, !dbg !323
  %2 = getelementptr inbounds %"src::lib::CbRgb255", ptr %a, i32 0, i32 1, !dbg !323
  store i8 -56, ptr %2, align 1, !dbg !323
  %3 = getelementptr inbounds %"src::lib::CbRgb255", ptr %a, i32 0, i32 2, !dbg !323
  store i8 5, ptr %3, align 1, !dbg !323
  store i8 100, ptr %b, align 1, !dbg !324
  %4 = getelementptr inbounds %"src::lib::CbRgb255", ptr %b, i32 0, i32 1, !dbg !324
  store i8 100, ptr %4, align 1, !dbg !324
  %5 = getelementptr inbounds %"src::lib::CbRgb255", ptr %b, i32 0, i32 2, !dbg !324
  store i8 100, ptr %5, align 1, !dbg !324
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %a, i64 3, i1 false), !dbg !325
  %6 = load i24, ptr %1, align 1, !dbg !325
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %b, i64 3, i1 false), !dbg !325
  %7 = load i24, ptr %0, align 1, !dbg !325
  %result = call float @contrast_ratio(i24 %6, i24 %7), !dbg !325
  store float %result, ptr %result.dbg.spill, align 4, !dbg !325
    #dbg_declare(ptr %result.dbg.spill, !319, !DIExpression(), !326)
  %_5 = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h08f1eafce42863eeE"(i32 1082562212), !dbg !327
  %8 = fcmp oeq float %result, %_5, !dbg !328
  ret i1 %8, !dbg !329
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_14() unnamed_addr #0 !dbg !330 {
start:
  %result.dbg.spill = alloca float, align 4
  %0 = alloca %"src::lib::CbRgb255", align 1
  %1 = alloca %"src::lib::CbRgb255", align 1
  %b = alloca %"src::lib::CbRgb255", align 1
  %a = alloca %"src::lib::CbRgb255", align 1
    #dbg_declare(ptr %a, !332, !DIExpression(), !338)
    #dbg_declare(ptr %b, !334, !DIExpression(), !339)
  store i8 10, ptr %a, align 1, !dbg !340
  %2 = getelementptr inbounds %"src::lib::CbRgb255", ptr %a, i32 0, i32 1, !dbg !340
  store i8 50, ptr %2, align 1, !dbg !340
  %3 = getelementptr inbounds %"src::lib::CbRgb255", ptr %a, i32 0, i32 2, !dbg !340
  store i8 100, ptr %3, align 1, !dbg !340
  store i8 15, ptr %b, align 1, !dbg !341
  %4 = getelementptr inbounds %"src::lib::CbRgb255", ptr %b, i32 0, i32 1, !dbg !341
  store i8 60, ptr %4, align 1, !dbg !341
  %5 = getelementptr inbounds %"src::lib::CbRgb255", ptr %b, i32 0, i32 2, !dbg !341
  store i8 120, ptr %5, align 1, !dbg !341
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %a, i64 3, i1 false), !dbg !342
  %6 = load i24, ptr %1, align 1, !dbg !342
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %b, i64 3, i1 false), !dbg !342
  %7 = load i24, ptr %0, align 1, !dbg !342
  %result = call float @contrast_ratio(i24 %6, i24 %7), !dbg !342
  store float %result, ptr %result.dbg.spill, align 4, !dbg !342
    #dbg_declare(ptr %result.dbg.spill, !336, !DIExpression(), !343)
  %_5 = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h08f1eafce42863eeE"(i32 1069009631), !dbg !344
  %8 = fcmp oeq float %result, %_5, !dbg !345
  ret i1 %8, !dbg !346
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_15() unnamed_addr #0 !dbg !347 {
start:
  %result.dbg.spill = alloca float, align 4
  %0 = alloca %"src::lib::CbRgb255", align 1
  %1 = alloca %"src::lib::CbRgb255", align 1
  %b = alloca %"src::lib::CbRgb255", align 1
  %a = alloca %"src::lib::CbRgb255", align 1
    #dbg_declare(ptr %a, !349, !DIExpression(), !355)
    #dbg_declare(ptr %b, !351, !DIExpression(), !356)
  store i8 50, ptr %a, align 1, !dbg !357
  %2 = getelementptr inbounds %"src::lib::CbRgb255", ptr %a, i32 0, i32 1, !dbg !357
  store i8 10, ptr %2, align 1, !dbg !357
  %3 = getelementptr inbounds %"src::lib::CbRgb255", ptr %a, i32 0, i32 2, !dbg !357
  store i8 100, ptr %3, align 1, !dbg !357
  store i8 60, ptr %b, align 1, !dbg !358
  %4 = getelementptr inbounds %"src::lib::CbRgb255", ptr %b, i32 0, i32 1, !dbg !358
  store i8 15, ptr %4, align 1, !dbg !358
  %5 = getelementptr inbounds %"src::lib::CbRgb255", ptr %b, i32 0, i32 2, !dbg !358
  store i8 120, ptr %5, align 1, !dbg !358
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %a, i64 3, i1 false), !dbg !359
  %6 = load i24, ptr %1, align 1, !dbg !359
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %b, i64 3, i1 false), !dbg !359
  %7 = load i24, ptr %0, align 1, !dbg !359
  %result = call float @contrast_ratio(i24 %6, i24 %7), !dbg !359
  store float %result, ptr %result.dbg.spill, align 4, !dbg !359
    #dbg_declare(ptr %result.dbg.spill, !353, !DIExpression(), !360)
  %_5 = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h08f1eafce42863eeE"(i32 1069249156), !dbg !361
  %8 = fcmp oeq float %result, %_5, !dbg !362
  ret i1 %8, !dbg !363
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_16() unnamed_addr #0 !dbg !364 {
start:
  %result.dbg.spill = alloca float, align 4
  %0 = alloca %"src::lib::CbRgb255", align 1
  %1 = alloca %"src::lib::CbRgb255", align 1
  %b = alloca %"src::lib::CbRgb255", align 1
  %a = alloca %"src::lib::CbRgb255", align 1
    #dbg_declare(ptr %a, !366, !DIExpression(), !372)
    #dbg_declare(ptr %b, !368, !DIExpression(), !373)
  store i8 50, ptr %a, align 1, !dbg !374
  %2 = getelementptr inbounds %"src::lib::CbRgb255", ptr %a, i32 0, i32 1, !dbg !374
  store i8 100, ptr %2, align 1, !dbg !374
  %3 = getelementptr inbounds %"src::lib::CbRgb255", ptr %a, i32 0, i32 2, !dbg !374
  store i8 10, ptr %3, align 1, !dbg !374
  store i8 60, ptr %b, align 1, !dbg !375
  %4 = getelementptr inbounds %"src::lib::CbRgb255", ptr %b, i32 0, i32 1, !dbg !375
  store i8 120, ptr %4, align 1, !dbg !375
  %5 = getelementptr inbounds %"src::lib::CbRgb255", ptr %b, i32 0, i32 2, !dbg !375
  store i8 15, ptr %5, align 1, !dbg !375
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %a, i64 3, i1 false), !dbg !376
  %6 = load i24, ptr %1, align 1, !dbg !376
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %b, i64 3, i1 false), !dbg !376
  %7 = load i24, ptr %0, align 1, !dbg !376
  %result = call float @contrast_ratio(i24 %6, i24 %7), !dbg !376
  store float %result, ptr %result.dbg.spill, align 4, !dbg !376
    #dbg_declare(ptr %result.dbg.spill, !370, !DIExpression(), !377)
  %_5 = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h08f1eafce42863eeE"(i32 1069296693), !dbg !378
  %8 = fcmp oeq float %result, %_5, !dbg !379
  ret i1 %8, !dbg !380
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_17() unnamed_addr #0 !dbg !381 {
start:
  %result.dbg.spill = alloca float, align 4
  %0 = alloca %"src::lib::CbRgb255", align 1
  %1 = alloca %"src::lib::CbRgb255", align 1
  %b = alloca %"src::lib::CbRgb255", align 1
  %a = alloca %"src::lib::CbRgb255", align 1
    #dbg_declare(ptr %a, !383, !DIExpression(), !389)
    #dbg_declare(ptr %b, !385, !DIExpression(), !390)
  store i8 8, ptr %a, align 1, !dbg !391
  %2 = getelementptr inbounds %"src::lib::CbRgb255", ptr %a, i32 0, i32 1, !dbg !391
  store i8 9, ptr %2, align 1, !dbg !391
  %3 = getelementptr inbounds %"src::lib::CbRgb255", ptr %a, i32 0, i32 2, !dbg !391
  store i8 50, ptr %3, align 1, !dbg !391
  store i8 7, ptr %b, align 1, !dbg !392
  %4 = getelementptr inbounds %"src::lib::CbRgb255", ptr %b, i32 0, i32 1, !dbg !392
  store i8 8, ptr %4, align 1, !dbg !392
  %5 = getelementptr inbounds %"src::lib::CbRgb255", ptr %b, i32 0, i32 2, !dbg !392
  store i8 60, ptr %5, align 1, !dbg !392
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %a, i64 3, i1 false), !dbg !393
  %6 = load i24, ptr %1, align 1, !dbg !393
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %b, i64 3, i1 false), !dbg !393
  %7 = load i24, ptr %0, align 1, !dbg !393
  %result = call float @contrast_ratio(i24 %6, i24 %7), !dbg !393
  store float %result, ptr %result.dbg.spill, align 4, !dbg !393
    #dbg_declare(ptr %result.dbg.spill, !387, !DIExpression(), !394)
  %_5 = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h08f1eafce42863eeE"(i32 1066544733), !dbg !395
  %8 = fcmp oeq float %result, %_5, !dbg !396
  ret i1 %8, !dbg !397
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_18() unnamed_addr #0 !dbg !398 {
start:
  %result.dbg.spill = alloca float, align 4
  %0 = alloca %"src::lib::CbRgb255", align 1
  %1 = alloca %"src::lib::CbRgb255", align 1
  %b = alloca %"src::lib::CbRgb255", align 1
  %a = alloca %"src::lib::CbRgb255", align 1
    #dbg_declare(ptr %a, !400, !DIExpression(), !406)
    #dbg_declare(ptr %b, !402, !DIExpression(), !407)
  store i8 9, ptr %a, align 1, !dbg !408
  %2 = getelementptr inbounds %"src::lib::CbRgb255", ptr %a, i32 0, i32 1, !dbg !408
  store i8 50, ptr %2, align 1, !dbg !408
  %3 = getelementptr inbounds %"src::lib::CbRgb255", ptr %a, i32 0, i32 2, !dbg !408
  store i8 60, ptr %3, align 1, !dbg !408
  store i8 8, ptr %b, align 1, !dbg !409
  %4 = getelementptr inbounds %"src::lib::CbRgb255", ptr %b, i32 0, i32 1, !dbg !409
  store i8 55, ptr %4, align 1, !dbg !409
  %5 = getelementptr inbounds %"src::lib::CbRgb255", ptr %b, i32 0, i32 2, !dbg !409
  store i8 65, ptr %5, align 1, !dbg !409
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %a, i64 3, i1 false), !dbg !410
  %6 = load i24, ptr %1, align 1, !dbg !410
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %b, i64 3, i1 false), !dbg !410
  %7 = load i24, ptr %0, align 1, !dbg !410
  %result = call float @contrast_ratio(i24 %6, i24 %7), !dbg !410
  store float %result, ptr %result.dbg.spill, align 4, !dbg !410
    #dbg_declare(ptr %result.dbg.spill, !404, !DIExpression(), !411)
  %_5 = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h08f1eafce42863eeE"(i32 1066927159), !dbg !412
  %8 = fcmp oeq float %result, %_5, !dbg !413
  ret i1 %8, !dbg !414
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_19() unnamed_addr #0 !dbg !415 {
start:
  %result.dbg.spill = alloca float, align 4
  %0 = alloca %"src::lib::CbRgb255", align 1
  %1 = alloca %"src::lib::CbRgb255", align 1
  %b = alloca %"src::lib::CbRgb255", align 1
  %a = alloca %"src::lib::CbRgb255", align 1
    #dbg_declare(ptr %a, !417, !DIExpression(), !423)
    #dbg_declare(ptr %b, !419, !DIExpression(), !424)
  store i8 127, ptr %a, align 1, !dbg !425
  %2 = getelementptr inbounds %"src::lib::CbRgb255", ptr %a, i32 0, i32 1, !dbg !425
  store i8 127, ptr %2, align 1, !dbg !425
  %3 = getelementptr inbounds %"src::lib::CbRgb255", ptr %a, i32 0, i32 2, !dbg !425
  store i8 127, ptr %3, align 1, !dbg !425
  store i8 -128, ptr %b, align 1, !dbg !426
  %4 = getelementptr inbounds %"src::lib::CbRgb255", ptr %b, i32 0, i32 1, !dbg !426
  store i8 -128, ptr %4, align 1, !dbg !426
  %5 = getelementptr inbounds %"src::lib::CbRgb255", ptr %b, i32 0, i32 2, !dbg !426
  store i8 -128, ptr %5, align 1, !dbg !426
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %a, i64 3, i1 false), !dbg !427
  %6 = load i24, ptr %1, align 1, !dbg !427
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %b, i64 3, i1 false), !dbg !427
  %7 = load i24, ptr %0, align 1, !dbg !427
  %result = call float @contrast_ratio(i24 %6, i24 %7), !dbg !427
  store float %result, ptr %result.dbg.spill, align 4, !dbg !427
    #dbg_declare(ptr %result.dbg.spill, !421, !DIExpression(), !428)
  %_5 = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h08f1eafce42863eeE"(i32 1065496685), !dbg !429
  %8 = fcmp oeq float %result, %_5, !dbg !430
  ret i1 %8, !dbg !431
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @run_test_20() unnamed_addr #0 !dbg !432 {
start:
  %result.dbg.spill = alloca float, align 4
  %0 = alloca %"src::lib::CbRgb255", align 1
  %1 = alloca %"src::lib::CbRgb255", align 1
  %b = alloca %"src::lib::CbRgb255", align 1
  %a = alloca %"src::lib::CbRgb255", align 1
    #dbg_declare(ptr %a, !434, !DIExpression(), !440)
    #dbg_declare(ptr %b, !436, !DIExpression(), !441)
  store i8 10, ptr %a, align 1, !dbg !442
  %2 = getelementptr inbounds %"src::lib::CbRgb255", ptr %a, i32 0, i32 1, !dbg !442
  store i8 -1, ptr %2, align 1, !dbg !442
  %3 = getelementptr inbounds %"src::lib::CbRgb255", ptr %a, i32 0, i32 2, !dbg !442
  store i8 -1, ptr %3, align 1, !dbg !442
  store i8 -1, ptr %b, align 1, !dbg !443
  %4 = getelementptr inbounds %"src::lib::CbRgb255", ptr %b, i32 0, i32 1, !dbg !443
  store i8 10, ptr %4, align 1, !dbg !443
  %5 = getelementptr inbounds %"src::lib::CbRgb255", ptr %b, i32 0, i32 2, !dbg !443
  store i8 10, ptr %5, align 1, !dbg !443
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %a, i64 3, i1 false), !dbg !444
  %6 = load i24, ptr %1, align 1, !dbg !444
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %b, i64 3, i1 false), !dbg !444
  %7 = load i24, ptr %0, align 1, !dbg !444
  %result = call float @contrast_ratio(i24 %6, i24 %7), !dbg !444
  store float %result, ptr %result.dbg.spill, align 4, !dbg !444
    #dbg_declare(ptr %result.dbg.spill, !438, !DIExpression(), !445)
  %_5 = call float @"_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h08f1eafce42863eeE"(i32 1080727428), !dbg !446
  %8 = fcmp oeq float %result, %_5, !dbg !447
  ret i1 %8, !dbg !448
}

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}

!0 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !1, producer: "clang LLVM (rustc version 1.70.0-nightly (84dd17b56 2023-04-14))", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!1 = !DIFile(filename: "lib.rs/@/4gkiuh38fqmzlgs", directory: "/crisp-rust-outputs/B01_organic/contrast_ratio_lib/translated_rust")
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 2, !"RtLibUseGOT", i32 1}
!4 = !{i32 2, !"Dwarf Version", i32 4}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = distinct !DISubprogram(name: "contrast_ratio_ffi", linkageName: "contrast_ratio", scope: !8, file: !7, line: 70, type: !11, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !21, retainedNodes: !22)
!7 = !DIFile(filename: "src/lib.rs", directory: "/crisp-rust-outputs/B01_organic/contrast_ratio_lib/translated_rust", checksumkind: CSK_MD5, checksum: "47faeaa34410e609d4764551ee1440db")
!8 = !DINamespace(name: "lib", scope: !9)
!9 = !DINamespace(name: "src", scope: !10)
!10 = !DINamespace(name: "contrast_ratio_lib", scope: null)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !14, !14}
!13 = !DIBasicType(name: "f32", size: 32, encoding: DW_ATE_float)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CbRgb255", scope: !8, file: !15, size: 24, align: 8, elements: !16, templateParams: !21, identifier: "1b6fac5fb75d59e8582dc4c2bf129517")
!15 = !DIFile(filename: "<unknown>", directory: "")
!16 = !{!17, !19, !20}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "R", scope: !14, file: !15, baseType: !18, size: 8, align: 8)
!18 = !DIBasicType(name: "u8", size: 8, encoding: DW_ATE_unsigned)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "G", scope: !14, file: !15, baseType: !18, size: 8, align: 8, offset: 8)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "B", scope: !14, file: !15, baseType: !18, size: 8, align: 8, offset: 16)
!21 = !{}
!22 = !{!23, !24}
!23 = !DILocalVariable(name: "a", arg: 1, scope: !6, file: !7, line: 71, type: !14)
!24 = !DILocalVariable(name: "b", arg: 2, scope: !6, file: !7, line: 72, type: !14)
!25 = !DILocation(line: 71, column: 5, scope: !6)
!26 = !DILocation(line: 72, column: 5, scope: !6)
!27 = !DILocation(line: 74, column: 5, scope: !6)
!28 = !DILocation(line: 75, column: 2, scope: !6)
!29 = distinct !DISubprogram(name: "contrast_ratio", linkageName: "_ZN18contrast_ratio_lib3src3lib14contrast_ratio17h495012384fba0a48E", scope: !8, file: !7, line: 58, type: !11, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !21, retainedNodes: !30)
!30 = !{!31, !32}
!31 = !DILocalVariable(name: "a", arg: 1, scope: !29, file: !7, line: 58, type: !14)
!32 = !DILocalVariable(name: "b", arg: 2, scope: !29, file: !7, line: 58, type: !14)
!33 = !DILocation(line: 58, column: 34, scope: !29)
!34 = !DILocation(line: 58, column: 47, scope: !29)
!35 = !DILocation(line: 60, column: 9, scope: !29)
!36 = !DILocation(line: 61, column: 9, scope: !29)
!37 = !DILocation(line: 62, column: 9, scope: !29)
!38 = !DILocation(line: 63, column: 9, scope: !29)
!39 = !DILocation(line: 64, column: 9, scope: !29)
!40 = !DILocation(line: 65, column: 9, scope: !29)
!41 = !DILocation(line: 59, column: 5, scope: !29)
!42 = !DILocation(line: 67, column: 2, scope: !29)
!43 = distinct !DISubprogram(name: "cb_contrast_ratio", linkageName: "_ZN18contrast_ratio_lib3src3lib17cb_contrast_ratio17he10fab0171491499E", scope: !8, file: !7, line: 39, type: !44, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !21, retainedNodes: !46)
!44 = !DISubroutineType(types: !45)
!45 = !{!13, !13, !13, !13, !13, !13, !13}
!46 = !{!47, !48, !49, !50, !51, !52, !53, !55, !57, !59}
!47 = !DILocalVariable(name: "ra", arg: 1, scope: !43, file: !7, line: 40, type: !13)
!48 = !DILocalVariable(name: "ga", arg: 2, scope: !43, file: !7, line: 41, type: !13)
!49 = !DILocalVariable(name: "ba", arg: 3, scope: !43, file: !7, line: 42, type: !13)
!50 = !DILocalVariable(name: "rb", arg: 4, scope: !43, file: !7, line: 43, type: !13)
!51 = !DILocalVariable(name: "gb", arg: 5, scope: !43, file: !7, line: 44, type: !13)
!52 = !DILocalVariable(name: "bb", arg: 6, scope: !43, file: !7, line: 45, type: !13)
!53 = !DILocalVariable(name: "lum_a", scope: !54, file: !7, line: 47, type: !13, align: 4)
!54 = distinct !DILexicalBlock(scope: !43, file: !7, line: 47, column: 5)
!55 = !DILocalVariable(name: "lum_b", scope: !56, file: !7, line: 48, type: !13, align: 4)
!56 = distinct !DILexicalBlock(scope: !54, file: !7, line: 48, column: 5)
!57 = !DILocalVariable(name: "high", scope: !58, file: !7, line: 50, type: !13, align: 4)
!58 = distinct !DILexicalBlock(scope: !56, file: !7, line: 50, column: 5)
!59 = !DILocalVariable(name: "low", scope: !58, file: !7, line: 50, type: !13, align: 4)
!60 = !DILocation(line: 40, column: 5, scope: !43)
!61 = !DILocation(line: 41, column: 5, scope: !43)
!62 = !DILocation(line: 42, column: 5, scope: !43)
!63 = !DILocation(line: 43, column: 5, scope: !43)
!64 = !DILocation(line: 44, column: 5, scope: !43)
!65 = !DILocation(line: 45, column: 5, scope: !43)
!66 = !DILocation(line: 47, column: 39, scope: !43)
!67 = !DILocation(line: 47, column: 9, scope: !54)
!68 = !DILocation(line: 48, column: 39, scope: !54)
!69 = !DILocation(line: 48, column: 9, scope: !56)
!70 = !DILocation(line: 50, column: 26, scope: !56)
!71 = !DILocation(line: 53, column: 9, scope: !56)
!72 = !DILocation(line: 50, column: 23, scope: !56)
!73 = !DILocation(line: 51, column: 9, scope: !56)
!74 = !DILocation(line: 50, column: 10, scope: !56)
!75 = !DILocation(line: 50, column: 10, scope: !58)
!76 = !DILocation(line: 50, column: 16, scope: !56)
!77 = !DILocation(line: 50, column: 16, scope: !58)
!78 = !DILocation(line: 56, column: 5, scope: !58)
!79 = !DILocation(line: 57, column: 2, scope: !43)
!80 = distinct !DISubprogram(name: "cb_luminance", linkageName: "_ZN18contrast_ratio_lib3src3lib12cb_luminance17h671916d1d5a46baeE", scope: !8, file: !7, line: 11, type: !81, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !21, retainedNodes: !83)
!81 = !DISubroutineType(types: !82)
!82 = !{!13, !13, !13, !13}
!83 = !{!84, !85, !86}
!84 = !DILocalVariable(name: "r", arg: 1, scope: !80, file: !7, line: 12, type: !13)
!85 = !DILocalVariable(name: "g", arg: 2, scope: !80, file: !7, line: 13, type: !13)
!86 = !DILocalVariable(name: "b", arg: 3, scope: !80, file: !7, line: 14, type: !13)
!87 = !DILocation(line: 12, column: 5, scope: !80)
!88 = !DILocation(line: 13, column: 5, scope: !80)
!89 = !DILocation(line: 14, column: 5, scope: !80)
!90 = !DILocation(line: 16, column: 12, scope: !80)
!91 = !DILocation(line: 20, column: 10, scope: !80)
!92 = !DILocation(line: 20, column: 9, scope: !80)
!93 = !DILocation(line: 16, column: 9, scope: !80)
!94 = !DILocation(line: 17, column: 12, scope: !80)
!95 = !DILocation(line: 17, column: 11, scope: !80)
!96 = !DILocation(line: 17, column: 10, scope: !80)
!97 = !DILocation(line: 17, column: 9, scope: !80)
!98 = !DILocation(line: 16, column: 5, scope: !80)
!99 = !DILocation(line: 23, column: 12, scope: !80)
!100 = !DILocation(line: 27, column: 10, scope: !80)
!101 = !DILocation(line: 27, column: 9, scope: !80)
!102 = !DILocation(line: 23, column: 9, scope: !80)
!103 = !DILocation(line: 24, column: 12, scope: !80)
!104 = !DILocation(line: 24, column: 11, scope: !80)
!105 = !DILocation(line: 24, column: 10, scope: !80)
!106 = !DILocation(line: 24, column: 9, scope: !80)
!107 = !DILocation(line: 23, column: 5, scope: !80)
!108 = !DILocation(line: 30, column: 12, scope: !80)
!109 = !DILocation(line: 34, column: 10, scope: !80)
!110 = !DILocation(line: 34, column: 9, scope: !80)
!111 = !DILocation(line: 30, column: 9, scope: !80)
!112 = !DILocation(line: 31, column: 12, scope: !80)
!113 = !DILocation(line: 31, column: 11, scope: !80)
!114 = !DILocation(line: 31, column: 10, scope: !80)
!115 = !DILocation(line: 31, column: 9, scope: !80)
!116 = !DILocation(line: 30, column: 5, scope: !80)
!117 = !DILocation(line: 37, column: 17, scope: !80)
!118 = !DILocation(line: 37, column: 5, scope: !80)
!119 = !DILocation(line: 37, column: 33, scope: !80)
!120 = !DILocation(line: 37, column: 21, scope: !80)
!121 = !DILocation(line: 37, column: 49, scope: !80)
!122 = !DILocation(line: 37, column: 37, scope: !80)
!123 = !DILocation(line: 38, column: 2, scope: !80)
!124 = distinct !DISubprogram(name: "powf", linkageName: "_ZN3std3f6421_$LT$impl$u20$f64$GT$4powf17h04aa8e8a71a2d1a8E", scope: !126, file: !125, line: 369, type: !129, scopeLine: 369, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !21, retainedNodes: !132)
!125 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/std/src/f64.rs", directory: "", checksumkind: CSK_MD5, checksum: "a7ebb38f72abf189099398374312abae")
!126 = !DINamespace(name: "{impl#0}", scope: !127)
!127 = !DINamespace(name: "f64", scope: !128)
!128 = !DINamespace(name: "std", scope: null)
!129 = !DISubroutineType(types: !130)
!130 = !{!131, !131, !131}
!131 = !DIBasicType(name: "f64", size: 64, encoding: DW_ATE_float)
!132 = !{!133, !134}
!133 = !DILocalVariable(name: "self", arg: 1, scope: !124, file: !125, line: 369, type: !131)
!134 = !DILocalVariable(name: "n", arg: 2, scope: !124, file: !125, line: 369, type: !131)
!135 = !DILocation(line: 369, column: 17, scope: !124)
!136 = !DILocation(line: 369, column: 23, scope: !124)
!137 = !DILocation(line: 370, column: 18, scope: !124)
!138 = !DILocation(line: 371, column: 6, scope: !124)
!139 = distinct !DISubprogram(name: "run_test_1", scope: !8, file: !7, line: 78, type: !140, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !21, retainedNodes: !143)
!140 = !DISubroutineType(types: !141)
!141 = !{!142}
!142 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!143 = !{!144, !146, !148, !150}
!144 = !DILocalVariable(name: "a", scope: !145, file: !7, line: 79, type: !14, align: 1)
!145 = distinct !DILexicalBlock(scope: !139, file: !7, line: 79, column: 5)
!146 = !DILocalVariable(name: "b", scope: !147, file: !7, line: 80, type: !14, align: 1)
!147 = distinct !DILexicalBlock(scope: !145, file: !7, line: 80, column: 5)
!148 = !DILocalVariable(name: "result", scope: !149, file: !7, line: 81, type: !13, align: 4)
!149 = distinct !DILexicalBlock(scope: !147, file: !7, line: 81, column: 5)
!150 = !DILocalVariable(name: "expected", scope: !151, file: !7, line: 82, type: !13, align: 4)
!151 = distinct !DILexicalBlock(scope: !149, file: !7, line: 82, column: 5)
!152 = !DILocation(line: 79, column: 9, scope: !145)
!153 = !DILocation(line: 80, column: 9, scope: !147)
!154 = !DILocation(line: 79, column: 13, scope: !139)
!155 = !DILocation(line: 80, column: 13, scope: !145)
!156 = !DILocation(line: 81, column: 18, scope: !147)
!157 = !DILocation(line: 81, column: 9, scope: !149)
!158 = !DILocation(line: 82, column: 42, scope: !149)
!159 = !DILocation(line: 82, column: 9, scope: !151)
!160 = !DILocation(line: 83, column: 5, scope: !151)
!161 = !DILocation(line: 84, column: 2, scope: !139)
!162 = distinct !DISubprogram(name: "run_test_2", scope: !8, file: !7, line: 87, type: !140, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !21, retainedNodes: !163)
!163 = !{!164, !166, !168, !170}
!164 = !DILocalVariable(name: "a", scope: !165, file: !7, line: 88, type: !14, align: 1)
!165 = distinct !DILexicalBlock(scope: !162, file: !7, line: 88, column: 5)
!166 = !DILocalVariable(name: "b", scope: !167, file: !7, line: 89, type: !14, align: 1)
!167 = distinct !DILexicalBlock(scope: !165, file: !7, line: 89, column: 5)
!168 = !DILocalVariable(name: "result", scope: !169, file: !7, line: 90, type: !13, align: 4)
!169 = distinct !DILexicalBlock(scope: !167, file: !7, line: 90, column: 5)
!170 = !DILocalVariable(name: "expected", scope: !171, file: !7, line: 91, type: !13, align: 4)
!171 = distinct !DILexicalBlock(scope: !169, file: !7, line: 91, column: 5)
!172 = !DILocation(line: 88, column: 9, scope: !165)
!173 = !DILocation(line: 89, column: 9, scope: !167)
!174 = !DILocation(line: 88, column: 13, scope: !162)
!175 = !DILocation(line: 89, column: 13, scope: !165)
!176 = !DILocation(line: 90, column: 18, scope: !167)
!177 = !DILocation(line: 90, column: 9, scope: !169)
!178 = !DILocation(line: 91, column: 42, scope: !169)
!179 = !DILocation(line: 91, column: 9, scope: !171)
!180 = !DILocation(line: 92, column: 5, scope: !171)
!181 = !DILocation(line: 93, column: 2, scope: !162)
!182 = distinct !DISubprogram(name: "run_test_3", scope: !8, file: !7, line: 96, type: !140, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !21, retainedNodes: !183)
!183 = !{!184, !186, !188, !190}
!184 = !DILocalVariable(name: "a", scope: !185, file: !7, line: 97, type: !14, align: 1)
!185 = distinct !DILexicalBlock(scope: !182, file: !7, line: 97, column: 5)
!186 = !DILocalVariable(name: "b", scope: !187, file: !7, line: 98, type: !14, align: 1)
!187 = distinct !DILexicalBlock(scope: !185, file: !7, line: 98, column: 5)
!188 = !DILocalVariable(name: "result", scope: !189, file: !7, line: 99, type: !13, align: 4)
!189 = distinct !DILexicalBlock(scope: !187, file: !7, line: 99, column: 5)
!190 = !DILocalVariable(name: "expected", scope: !191, file: !7, line: 100, type: !13, align: 4)
!191 = distinct !DILexicalBlock(scope: !189, file: !7, line: 100, column: 5)
!192 = !DILocation(line: 97, column: 9, scope: !185)
!193 = !DILocation(line: 98, column: 9, scope: !187)
!194 = !DILocation(line: 97, column: 13, scope: !182)
!195 = !DILocation(line: 98, column: 13, scope: !185)
!196 = !DILocation(line: 99, column: 18, scope: !187)
!197 = !DILocation(line: 99, column: 9, scope: !189)
!198 = !DILocation(line: 100, column: 42, scope: !189)
!199 = !DILocation(line: 100, column: 9, scope: !191)
!200 = !DILocation(line: 101, column: 5, scope: !191)
!201 = !DILocation(line: 102, column: 2, scope: !182)
!202 = distinct !DISubprogram(name: "run_test_4", scope: !8, file: !7, line: 105, type: !140, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !21, retainedNodes: !203)
!203 = !{!204, !206, !208, !210}
!204 = !DILocalVariable(name: "a", scope: !205, file: !7, line: 106, type: !14, align: 1)
!205 = distinct !DILexicalBlock(scope: !202, file: !7, line: 106, column: 5)
!206 = !DILocalVariable(name: "b", scope: !207, file: !7, line: 107, type: !14, align: 1)
!207 = distinct !DILexicalBlock(scope: !205, file: !7, line: 107, column: 5)
!208 = !DILocalVariable(name: "result", scope: !209, file: !7, line: 108, type: !13, align: 4)
!209 = distinct !DILexicalBlock(scope: !207, file: !7, line: 108, column: 5)
!210 = !DILocalVariable(name: "expected", scope: !211, file: !7, line: 109, type: !13, align: 4)
!211 = distinct !DILexicalBlock(scope: !209, file: !7, line: 109, column: 5)
!212 = !DILocation(line: 106, column: 9, scope: !205)
!213 = !DILocation(line: 107, column: 9, scope: !207)
!214 = !DILocation(line: 106, column: 13, scope: !202)
!215 = !DILocation(line: 107, column: 13, scope: !205)
!216 = !DILocation(line: 108, column: 18, scope: !207)
!217 = !DILocation(line: 108, column: 9, scope: !209)
!218 = !DILocation(line: 109, column: 42, scope: !209)
!219 = !DILocation(line: 109, column: 9, scope: !211)
!220 = !DILocation(line: 110, column: 5, scope: !211)
!221 = !DILocation(line: 111, column: 2, scope: !202)
!222 = distinct !DISubprogram(name: "run_test_5", scope: !8, file: !7, line: 114, type: !140, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !21, retainedNodes: !223)
!223 = !{!224, !226, !228, !230}
!224 = !DILocalVariable(name: "a", scope: !225, file: !7, line: 115, type: !14, align: 1)
!225 = distinct !DILexicalBlock(scope: !222, file: !7, line: 115, column: 5)
!226 = !DILocalVariable(name: "b", scope: !227, file: !7, line: 116, type: !14, align: 1)
!227 = distinct !DILexicalBlock(scope: !225, file: !7, line: 116, column: 5)
!228 = !DILocalVariable(name: "result", scope: !229, file: !7, line: 117, type: !13, align: 4)
!229 = distinct !DILexicalBlock(scope: !227, file: !7, line: 117, column: 5)
!230 = !DILocalVariable(name: "expected", scope: !231, file: !7, line: 118, type: !13, align: 4)
!231 = distinct !DILexicalBlock(scope: !229, file: !7, line: 118, column: 5)
!232 = !DILocation(line: 115, column: 9, scope: !225)
!233 = !DILocation(line: 116, column: 9, scope: !227)
!234 = !DILocation(line: 115, column: 13, scope: !222)
!235 = !DILocation(line: 116, column: 13, scope: !225)
!236 = !DILocation(line: 117, column: 18, scope: !227)
!237 = !DILocation(line: 117, column: 9, scope: !229)
!238 = !DILocation(line: 118, column: 42, scope: !229)
!239 = !DILocation(line: 118, column: 9, scope: !231)
!240 = !DILocation(line: 119, column: 5, scope: !231)
!241 = !DILocation(line: 120, column: 2, scope: !222)
!242 = distinct !DISubprogram(name: "run_test_8", scope: !8, file: !7, line: 124, type: !140, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !21, retainedNodes: !243)
!243 = !{!244, !246, !248}
!244 = !DILocalVariable(name: "a", scope: !245, file: !7, line: 125, type: !14, align: 1)
!245 = distinct !DILexicalBlock(scope: !242, file: !7, line: 125, column: 5)
!246 = !DILocalVariable(name: "b", scope: !247, file: !7, line: 126, type: !14, align: 1)
!247 = distinct !DILexicalBlock(scope: !245, file: !7, line: 126, column: 5)
!248 = !DILocalVariable(name: "result", scope: !249, file: !7, line: 127, type: !13, align: 4)
!249 = distinct !DILexicalBlock(scope: !247, file: !7, line: 127, column: 5)
!250 = !DILocation(line: 125, column: 9, scope: !245)
!251 = !DILocation(line: 126, column: 9, scope: !247)
!252 = !DILocation(line: 125, column: 13, scope: !242)
!253 = !DILocation(line: 126, column: 13, scope: !245)
!254 = !DILocation(line: 127, column: 18, scope: !247)
!255 = !DILocation(line: 127, column: 9, scope: !249)
!256 = !DILocation(line: 128, column: 15, scope: !249)
!257 = !DILocation(line: 128, column: 5, scope: !249)
!258 = !DILocation(line: 129, column: 2, scope: !242)
!259 = distinct !DISubprogram(name: "from_bits", linkageName: "_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits17h08f1eafce42863eeE", scope: !261, file: !260, line: 1088, type: !264, scopeLine: 1088, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !21, retainedNodes: !267)
!260 = !DIFile(filename: "/rustc/84dd17b56a931a631a23dfd5ef2018fd3ef49108/library/core/src/num/f32.rs", directory: "", checksumkind: CSK_MD5, checksum: "1164a9ceed8d542109bde0277f15bb37")
!261 = !DINamespace(name: "{impl#0}", scope: !262)
!262 = !DINamespace(name: "f32", scope: !263)
!263 = !DINamespace(name: "core", scope: null)
!264 = !DISubroutineType(types: !265)
!265 = !{!13, !266}
!266 = !DIBasicType(name: "u32", size: 32, encoding: DW_ATE_unsigned)
!267 = !{!268}
!268 = !DILocalVariable(name: "v", arg: 1, scope: !259, file: !260, line: 1088, type: !266)
!269 = !DILocation(line: 1088, column: 28, scope: !259)
!270 = !DILocation(line: 1137, column: 48, scope: !259)
!271 = !DILocation(line: 1137, column: 18, scope: !259)
!272 = !DILocalVariable(name: "x", arg: 1, scope: !273, file: !260, line: 1130, type: !266)
!273 = distinct !DISubprogram(name: "rt_u32_to_f32", linkageName: "_ZN4core3f3221_$LT$impl$u20$f32$GT$9from_bits13rt_u32_to_f3217h0c6ef5d5083740aaE", scope: !274, file: !260, line: 1130, type: !264, scopeLine: 1130, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, templateParams: !21, retainedNodes: !275)
!274 = !DINamespace(name: "from_bits", scope: !261)
!275 = !{!272}
!276 = !DILocation(line: 1130, column: 26, scope: !273, inlinedAt: !271)
!277 = !DILocation(line: 1134, column: 22, scope: !273, inlinedAt: !271)
!278 = !DILocation(line: 1138, column: 6, scope: !259)
!279 = distinct !DISubprogram(name: "run_test_9", scope: !8, file: !7, line: 132, type: !140, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !21, retainedNodes: !280)
!280 = !{!281, !283, !285}
!281 = !DILocalVariable(name: "a", scope: !282, file: !7, line: 133, type: !14, align: 1)
!282 = distinct !DILexicalBlock(scope: !279, file: !7, line: 133, column: 5)
!283 = !DILocalVariable(name: "b", scope: !284, file: !7, line: 134, type: !14, align: 1)
!284 = distinct !DILexicalBlock(scope: !282, file: !7, line: 134, column: 5)
!285 = !DILocalVariable(name: "result", scope: !286, file: !7, line: 135, type: !13, align: 4)
!286 = distinct !DILexicalBlock(scope: !284, file: !7, line: 135, column: 5)
!287 = !DILocation(line: 133, column: 9, scope: !282)
!288 = !DILocation(line: 134, column: 9, scope: !284)
!289 = !DILocation(line: 133, column: 13, scope: !279)
!290 = !DILocation(line: 134, column: 13, scope: !282)
!291 = !DILocation(line: 135, column: 18, scope: !284)
!292 = !DILocation(line: 135, column: 9, scope: !286)
!293 = !DILocation(line: 136, column: 15, scope: !286)
!294 = !DILocation(line: 136, column: 5, scope: !286)
!295 = !DILocation(line: 137, column: 2, scope: !279)
!296 = distinct !DISubprogram(name: "run_test_10", scope: !8, file: !7, line: 140, type: !140, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !21, retainedNodes: !297)
!297 = !{!298, !300, !302}
!298 = !DILocalVariable(name: "a", scope: !299, file: !7, line: 141, type: !14, align: 1)
!299 = distinct !DILexicalBlock(scope: !296, file: !7, line: 141, column: 5)
!300 = !DILocalVariable(name: "b", scope: !301, file: !7, line: 142, type: !14, align: 1)
!301 = distinct !DILexicalBlock(scope: !299, file: !7, line: 142, column: 5)
!302 = !DILocalVariable(name: "result", scope: !303, file: !7, line: 143, type: !13, align: 4)
!303 = distinct !DILexicalBlock(scope: !301, file: !7, line: 143, column: 5)
!304 = !DILocation(line: 141, column: 9, scope: !299)
!305 = !DILocation(line: 142, column: 9, scope: !301)
!306 = !DILocation(line: 141, column: 13, scope: !296)
!307 = !DILocation(line: 142, column: 13, scope: !299)
!308 = !DILocation(line: 143, column: 18, scope: !301)
!309 = !DILocation(line: 143, column: 9, scope: !303)
!310 = !DILocation(line: 144, column: 15, scope: !303)
!311 = !DILocation(line: 144, column: 5, scope: !303)
!312 = !DILocation(line: 145, column: 2, scope: !296)
!313 = distinct !DISubprogram(name: "run_test_11", scope: !8, file: !7, line: 148, type: !140, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !21, retainedNodes: !314)
!314 = !{!315, !317, !319}
!315 = !DILocalVariable(name: "a", scope: !316, file: !7, line: 149, type: !14, align: 1)
!316 = distinct !DILexicalBlock(scope: !313, file: !7, line: 149, column: 5)
!317 = !DILocalVariable(name: "b", scope: !318, file: !7, line: 150, type: !14, align: 1)
!318 = distinct !DILexicalBlock(scope: !316, file: !7, line: 150, column: 5)
!319 = !DILocalVariable(name: "result", scope: !320, file: !7, line: 151, type: !13, align: 4)
!320 = distinct !DILexicalBlock(scope: !318, file: !7, line: 151, column: 5)
!321 = !DILocation(line: 149, column: 9, scope: !316)
!322 = !DILocation(line: 150, column: 9, scope: !318)
!323 = !DILocation(line: 149, column: 13, scope: !313)
!324 = !DILocation(line: 150, column: 13, scope: !316)
!325 = !DILocation(line: 151, column: 18, scope: !318)
!326 = !DILocation(line: 151, column: 9, scope: !320)
!327 = !DILocation(line: 152, column: 15, scope: !320)
!328 = !DILocation(line: 152, column: 5, scope: !320)
!329 = !DILocation(line: 153, column: 2, scope: !313)
!330 = distinct !DISubprogram(name: "run_test_14", scope: !8, file: !7, line: 156, type: !140, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !21, retainedNodes: !331)
!331 = !{!332, !334, !336}
!332 = !DILocalVariable(name: "a", scope: !333, file: !7, line: 157, type: !14, align: 1)
!333 = distinct !DILexicalBlock(scope: !330, file: !7, line: 157, column: 5)
!334 = !DILocalVariable(name: "b", scope: !335, file: !7, line: 158, type: !14, align: 1)
!335 = distinct !DILexicalBlock(scope: !333, file: !7, line: 158, column: 5)
!336 = !DILocalVariable(name: "result", scope: !337, file: !7, line: 159, type: !13, align: 4)
!337 = distinct !DILexicalBlock(scope: !335, file: !7, line: 159, column: 5)
!338 = !DILocation(line: 157, column: 9, scope: !333)
!339 = !DILocation(line: 158, column: 9, scope: !335)
!340 = !DILocation(line: 157, column: 13, scope: !330)
!341 = !DILocation(line: 158, column: 13, scope: !333)
!342 = !DILocation(line: 159, column: 18, scope: !335)
!343 = !DILocation(line: 159, column: 9, scope: !337)
!344 = !DILocation(line: 160, column: 15, scope: !337)
!345 = !DILocation(line: 160, column: 5, scope: !337)
!346 = !DILocation(line: 161, column: 2, scope: !330)
!347 = distinct !DISubprogram(name: "run_test_15", scope: !8, file: !7, line: 164, type: !140, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !21, retainedNodes: !348)
!348 = !{!349, !351, !353}
!349 = !DILocalVariable(name: "a", scope: !350, file: !7, line: 165, type: !14, align: 1)
!350 = distinct !DILexicalBlock(scope: !347, file: !7, line: 165, column: 5)
!351 = !DILocalVariable(name: "b", scope: !352, file: !7, line: 166, type: !14, align: 1)
!352 = distinct !DILexicalBlock(scope: !350, file: !7, line: 166, column: 5)
!353 = !DILocalVariable(name: "result", scope: !354, file: !7, line: 167, type: !13, align: 4)
!354 = distinct !DILexicalBlock(scope: !352, file: !7, line: 167, column: 5)
!355 = !DILocation(line: 165, column: 9, scope: !350)
!356 = !DILocation(line: 166, column: 9, scope: !352)
!357 = !DILocation(line: 165, column: 13, scope: !347)
!358 = !DILocation(line: 166, column: 13, scope: !350)
!359 = !DILocation(line: 167, column: 18, scope: !352)
!360 = !DILocation(line: 167, column: 9, scope: !354)
!361 = !DILocation(line: 168, column: 15, scope: !354)
!362 = !DILocation(line: 168, column: 5, scope: !354)
!363 = !DILocation(line: 169, column: 2, scope: !347)
!364 = distinct !DISubprogram(name: "run_test_16", scope: !8, file: !7, line: 172, type: !140, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !21, retainedNodes: !365)
!365 = !{!366, !368, !370}
!366 = !DILocalVariable(name: "a", scope: !367, file: !7, line: 173, type: !14, align: 1)
!367 = distinct !DILexicalBlock(scope: !364, file: !7, line: 173, column: 5)
!368 = !DILocalVariable(name: "b", scope: !369, file: !7, line: 174, type: !14, align: 1)
!369 = distinct !DILexicalBlock(scope: !367, file: !7, line: 174, column: 5)
!370 = !DILocalVariable(name: "result", scope: !371, file: !7, line: 175, type: !13, align: 4)
!371 = distinct !DILexicalBlock(scope: !369, file: !7, line: 175, column: 5)
!372 = !DILocation(line: 173, column: 9, scope: !367)
!373 = !DILocation(line: 174, column: 9, scope: !369)
!374 = !DILocation(line: 173, column: 13, scope: !364)
!375 = !DILocation(line: 174, column: 13, scope: !367)
!376 = !DILocation(line: 175, column: 18, scope: !369)
!377 = !DILocation(line: 175, column: 9, scope: !371)
!378 = !DILocation(line: 176, column: 15, scope: !371)
!379 = !DILocation(line: 176, column: 5, scope: !371)
!380 = !DILocation(line: 177, column: 2, scope: !364)
!381 = distinct !DISubprogram(name: "run_test_17", scope: !8, file: !7, line: 180, type: !140, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !21, retainedNodes: !382)
!382 = !{!383, !385, !387}
!383 = !DILocalVariable(name: "a", scope: !384, file: !7, line: 181, type: !14, align: 1)
!384 = distinct !DILexicalBlock(scope: !381, file: !7, line: 181, column: 5)
!385 = !DILocalVariable(name: "b", scope: !386, file: !7, line: 182, type: !14, align: 1)
!386 = distinct !DILexicalBlock(scope: !384, file: !7, line: 182, column: 5)
!387 = !DILocalVariable(name: "result", scope: !388, file: !7, line: 183, type: !13, align: 4)
!388 = distinct !DILexicalBlock(scope: !386, file: !7, line: 183, column: 5)
!389 = !DILocation(line: 181, column: 9, scope: !384)
!390 = !DILocation(line: 182, column: 9, scope: !386)
!391 = !DILocation(line: 181, column: 13, scope: !381)
!392 = !DILocation(line: 182, column: 13, scope: !384)
!393 = !DILocation(line: 183, column: 18, scope: !386)
!394 = !DILocation(line: 183, column: 9, scope: !388)
!395 = !DILocation(line: 184, column: 15, scope: !388)
!396 = !DILocation(line: 184, column: 5, scope: !388)
!397 = !DILocation(line: 185, column: 2, scope: !381)
!398 = distinct !DISubprogram(name: "run_test_18", scope: !8, file: !7, line: 188, type: !140, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !21, retainedNodes: !399)
!399 = !{!400, !402, !404}
!400 = !DILocalVariable(name: "a", scope: !401, file: !7, line: 189, type: !14, align: 1)
!401 = distinct !DILexicalBlock(scope: !398, file: !7, line: 189, column: 5)
!402 = !DILocalVariable(name: "b", scope: !403, file: !7, line: 190, type: !14, align: 1)
!403 = distinct !DILexicalBlock(scope: !401, file: !7, line: 190, column: 5)
!404 = !DILocalVariable(name: "result", scope: !405, file: !7, line: 191, type: !13, align: 4)
!405 = distinct !DILexicalBlock(scope: !403, file: !7, line: 191, column: 5)
!406 = !DILocation(line: 189, column: 9, scope: !401)
!407 = !DILocation(line: 190, column: 9, scope: !403)
!408 = !DILocation(line: 189, column: 13, scope: !398)
!409 = !DILocation(line: 190, column: 13, scope: !401)
!410 = !DILocation(line: 191, column: 18, scope: !403)
!411 = !DILocation(line: 191, column: 9, scope: !405)
!412 = !DILocation(line: 192, column: 15, scope: !405)
!413 = !DILocation(line: 192, column: 5, scope: !405)
!414 = !DILocation(line: 193, column: 2, scope: !398)
!415 = distinct !DISubprogram(name: "run_test_19", scope: !8, file: !7, line: 196, type: !140, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !21, retainedNodes: !416)
!416 = !{!417, !419, !421}
!417 = !DILocalVariable(name: "a", scope: !418, file: !7, line: 197, type: !14, align: 1)
!418 = distinct !DILexicalBlock(scope: !415, file: !7, line: 197, column: 5)
!419 = !DILocalVariable(name: "b", scope: !420, file: !7, line: 198, type: !14, align: 1)
!420 = distinct !DILexicalBlock(scope: !418, file: !7, line: 198, column: 5)
!421 = !DILocalVariable(name: "result", scope: !422, file: !7, line: 199, type: !13, align: 4)
!422 = distinct !DILexicalBlock(scope: !420, file: !7, line: 199, column: 5)
!423 = !DILocation(line: 197, column: 9, scope: !418)
!424 = !DILocation(line: 198, column: 9, scope: !420)
!425 = !DILocation(line: 197, column: 13, scope: !415)
!426 = !DILocation(line: 198, column: 13, scope: !418)
!427 = !DILocation(line: 199, column: 18, scope: !420)
!428 = !DILocation(line: 199, column: 9, scope: !422)
!429 = !DILocation(line: 200, column: 15, scope: !422)
!430 = !DILocation(line: 200, column: 5, scope: !422)
!431 = !DILocation(line: 201, column: 2, scope: !415)
!432 = distinct !DISubprogram(name: "run_test_20", scope: !8, file: !7, line: 204, type: !140, scopeLine: 204, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, templateParams: !21, retainedNodes: !433)
!433 = !{!434, !436, !438}
!434 = !DILocalVariable(name: "a", scope: !435, file: !7, line: 205, type: !14, align: 1)
!435 = distinct !DILexicalBlock(scope: !432, file: !7, line: 205, column: 5)
!436 = !DILocalVariable(name: "b", scope: !437, file: !7, line: 206, type: !14, align: 1)
!437 = distinct !DILexicalBlock(scope: !435, file: !7, line: 206, column: 5)
!438 = !DILocalVariable(name: "result", scope: !439, file: !7, line: 207, type: !13, align: 4)
!439 = distinct !DILexicalBlock(scope: !437, file: !7, line: 207, column: 5)
!440 = !DILocation(line: 205, column: 9, scope: !435)
!441 = !DILocation(line: 206, column: 9, scope: !437)
!442 = !DILocation(line: 205, column: 13, scope: !432)
!443 = !DILocation(line: 206, column: 13, scope: !435)
!444 = !DILocation(line: 207, column: 18, scope: !437)
!445 = !DILocation(line: 207, column: 9, scope: !439)
!446 = !DILocation(line: 208, column: 15, scope: !439)
!447 = !DILocation(line: 208, column: 5, scope: !439)
!448 = !DILocation(line: 209, column: 2, scope: !432)
