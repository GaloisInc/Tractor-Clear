; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; ASSERT EQ: i1 1 = call i1 @run_test_1()
; ASSERT EQ: i1 1 = call i1 @run_test_2()
; ASSERT EQ: i1 1 = call i1 @run_test_3()
; ASSERT EQ: i1 1 = call i1 @run_test_4()
; ASSERT EQ: i1 1 = call i1 @run_test_5()

%"src::lib::CpImageT" = type { i32, i32, ptr }
%"src::lib::CpPixelT" = type { i8, i8, i8, i8 }

; Function Attrs: nofree nosync nounwind nonlazybind uwtable
define void @premultiply(ptr noundef readonly %img) unnamed_addr #0 {
start:
  %0 = icmp eq ptr %img, null
  br i1 %0, label %bb3, label %bb2

bb2:                                              ; preds = %start
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2)
  %u.i = load i32, ptr %img, align 8, !alias.scope !2, !noundef !5
  %1 = getelementptr inbounds %"src::lib::CpImageT", ptr %img, i64 0, i32 1
  %u1.i = load i32, ptr %1, align 4, !alias.scope !2, !noundef !5
  %2 = or i32 %u1.i, %u.i
  %or.cond.i = icmp sgt i32 %2, -1
  br i1 %or.cond.i, label %bb4.i, label %bb3

bb4.i:                                            ; preds = %bb2
  %_46.i = zext i32 %u1.i to i64
  %_44.i = zext i32 %u.i to i64
  %_12.0.i.i = mul nuw i64 %_46.i, %_44.i
  %3 = icmp eq i64 %_12.0.i.i, 0
  %4 = getelementptr inbounds %"src::lib::CpImageT", ptr %img, i64 0, i32 2
  %self.i = load ptr, ptr %4, align 8, !alias.scope !2
  %_14.i = icmp eq ptr %self.i, null
  %_12.0.i = select i1 %3, i1 true, i1 %_14.i
  br i1 %_12.0.i, label %bb3, label %bb14.preheader.i

bb14.preheader.i:                                 ; preds = %bb4.i
  %5 = getelementptr inbounds %"src::lib::CpPixelT", ptr %self.i, i64 %_12.0.i.i
  %6 = mul nuw i64 %_46.i, %_44.i
  %7 = add i64 %6, 4611686018427387903
  %8 = and i64 %7, 4611686018427387903
  %9 = add nuw nsw i64 %8, 1
  %min.iters.check = icmp ult i64 %8, 3
  br i1 %min.iters.check, label %bb14.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb14.preheader.i
  %n.vec = and i64 %9, -4
  %10 = shl i64 %n.vec, 2
  %ind.end = getelementptr i8, ptr %self.i, i64 %10
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %11 = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %self.i, i64 %11
  %12 = shl i64 %index, 2
  %13 = or i64 %12, 4
  %next.gep2 = getelementptr i8, ptr %self.i, i64 %13
  %14 = shl i64 %index, 2
  %15 = or i64 %14, 8
  %next.gep3 = getelementptr i8, ptr %self.i, i64 %15
  %16 = shl i64 %index, 2
  %17 = or i64 %16, 12
  %next.gep4 = getelementptr i8, ptr %self.i, i64 %17
  %18 = getelementptr inbounds %"src::lib::CpPixelT", ptr %next.gep, i64 0, i32 3
  %19 = getelementptr inbounds %"src::lib::CpPixelT", ptr %next.gep2, i64 0, i32 3
  %20 = getelementptr inbounds %"src::lib::CpPixelT", ptr %next.gep3, i64 0, i32 3
  %21 = getelementptr inbounds %"src::lib::CpPixelT", ptr %next.gep4, i64 0, i32 3
  %22 = load i8, ptr %18, align 1, !noalias !2, !noundef !5
  %23 = load i8, ptr %19, align 1, !noalias !2, !noundef !5
  %24 = load i8, ptr %20, align 1, !noalias !2, !noundef !5
  %25 = load i8, ptr %21, align 1, !noalias !2, !noundef !5
  %26 = insertelement <4 x i8> poison, i8 %22, i64 0
  %27 = insertelement <4 x i8> %26, i8 %23, i64 1
  %28 = insertelement <4 x i8> %27, i8 %24, i64 2
  %29 = insertelement <4 x i8> %28, i8 %25, i64 3
  %30 = uitofp <4 x i8> %29 to <4 x float>
  %31 = fdiv <4 x float> %30, splat (float 2.550000e+02)
  %32 = load i8, ptr %next.gep, align 1, !noalias !2, !noundef !5
  %33 = load i8, ptr %next.gep2, align 1, !noalias !2, !noundef !5
  %34 = load i8, ptr %next.gep3, align 1, !noalias !2, !noundef !5
  %35 = load i8, ptr %next.gep4, align 1, !noalias !2, !noundef !5
  %36 = insertelement <4 x i8> poison, i8 %32, i64 0
  %37 = insertelement <4 x i8> %36, i8 %33, i64 1
  %38 = insertelement <4 x i8> %37, i8 %34, i64 2
  %39 = insertelement <4 x i8> %38, i8 %35, i64 3
  %40 = uitofp <4 x i8> %39 to <4 x float>
  %41 = fdiv <4 x float> %40, splat (float 2.550000e+02)
  %42 = fmul <4 x float> %31, %41
  %43 = getelementptr inbounds %"src::lib::CpPixelT", ptr %next.gep, i64 0, i32 1
  %44 = getelementptr inbounds %"src::lib::CpPixelT", ptr %next.gep2, i64 0, i32 1
  %45 = getelementptr inbounds %"src::lib::CpPixelT", ptr %next.gep3, i64 0, i32 1
  %46 = getelementptr inbounds %"src::lib::CpPixelT", ptr %next.gep4, i64 0, i32 1
  %47 = load i8, ptr %43, align 1, !noalias !2, !noundef !5
  %48 = load i8, ptr %44, align 1, !noalias !2, !noundef !5
  %49 = load i8, ptr %45, align 1, !noalias !2, !noundef !5
  %50 = load i8, ptr %46, align 1, !noalias !2, !noundef !5
  %51 = insertelement <4 x i8> poison, i8 %47, i64 0
  %52 = insertelement <4 x i8> %51, i8 %48, i64 1
  %53 = insertelement <4 x i8> %52, i8 %49, i64 2
  %54 = insertelement <4 x i8> %53, i8 %50, i64 3
  %55 = uitofp <4 x i8> %54 to <4 x float>
  %56 = fdiv <4 x float> %55, splat (float 2.550000e+02)
  %57 = fmul <4 x float> %31, %56
  %58 = getelementptr inbounds %"src::lib::CpPixelT", ptr %next.gep, i64 0, i32 2
  %59 = getelementptr inbounds %"src::lib::CpPixelT", ptr %next.gep2, i64 0, i32 2
  %60 = getelementptr inbounds %"src::lib::CpPixelT", ptr %next.gep3, i64 0, i32 2
  %61 = getelementptr inbounds %"src::lib::CpPixelT", ptr %next.gep4, i64 0, i32 2
  %62 = load i8, ptr %58, align 1, !noalias !2, !noundef !5
  %63 = load i8, ptr %59, align 1, !noalias !2, !noundef !5
  %64 = load i8, ptr %60, align 1, !noalias !2, !noundef !5
  %65 = load i8, ptr %61, align 1, !noalias !2, !noundef !5
  %66 = insertelement <4 x i8> poison, i8 %62, i64 0
  %67 = insertelement <4 x i8> %66, i8 %63, i64 1
  %68 = insertelement <4 x i8> %67, i8 %64, i64 2
  %69 = insertelement <4 x i8> %68, i8 %65, i64 3
  %70 = uitofp <4 x i8> %69 to <4 x float>
  %71 = fdiv <4 x float> %70, splat (float 2.550000e+02)
  %72 = fmul <4 x float> %31, %71
  %73 = fmul <4 x float> %42, splat (float 2.550000e+02)
  %74 = tail call <4 x i8> @llvm.fptoui.sat.v4i8.v4f32(<4 x float> %73)
  %75 = extractelement <4 x i8> %74, i64 0
  store i8 %75, ptr %next.gep, align 1, !noalias !2
  %76 = extractelement <4 x i8> %74, i64 1
  store i8 %76, ptr %next.gep2, align 1, !noalias !2
  %77 = extractelement <4 x i8> %74, i64 2
  store i8 %77, ptr %next.gep3, align 1, !noalias !2
  %78 = extractelement <4 x i8> %74, i64 3
  store i8 %78, ptr %next.gep4, align 1, !noalias !2
  %79 = fmul <4 x float> %57, splat (float 2.550000e+02)
  %80 = tail call <4 x i8> @llvm.fptoui.sat.v4i8.v4f32(<4 x float> %79)
  %81 = extractelement <4 x i8> %80, i64 0
  store i8 %81, ptr %43, align 1, !noalias !2
  %82 = extractelement <4 x i8> %80, i64 1
  store i8 %82, ptr %44, align 1, !noalias !2
  %83 = extractelement <4 x i8> %80, i64 2
  store i8 %83, ptr %45, align 1, !noalias !2
  %84 = extractelement <4 x i8> %80, i64 3
  store i8 %84, ptr %46, align 1, !noalias !2
  %85 = fmul <4 x float> %72, splat (float 2.550000e+02)
  %86 = tail call <4 x i8> @llvm.fptoui.sat.v4i8.v4f32(<4 x float> %85)
  %87 = extractelement <4 x i8> %86, i64 0
  store i8 %87, ptr %58, align 1, !noalias !2
  %88 = extractelement <4 x i8> %86, i64 1
  store i8 %88, ptr %59, align 1, !noalias !2
  %89 = extractelement <4 x i8> %86, i64 2
  store i8 %89, ptr %60, align 1, !noalias !2
  %90 = extractelement <4 x i8> %86, i64 3
  store i8 %90, ptr %61, align 1, !noalias !2
  %index.next = add nuw i64 %index, 4
  %91 = icmp eq i64 %index.next, %n.vec
  br i1 %91, label %middle.block, label %vector.body, !llvm.loop !6

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %9, %n.vec
  br i1 %cmp.n, label %bb3, label %bb14.i.preheader

bb14.i.preheader:                                 ; preds = %middle.block, %bb14.preheader.i
  %iter.sroa.4.011.i.ph = phi ptr [ %self.i, %bb14.preheader.i ], [ %ind.end, %middle.block ]
  br label %bb14.i

bb14.i:                                           ; preds = %bb14.i, %bb14.i.preheader
  %iter.sroa.4.011.i = phi ptr [ %92, %bb14.i ], [ %iter.sroa.4.011.i.ph, %bb14.i.preheader ]
  %92 = getelementptr inbounds %"src::lib::CpPixelT", ptr %iter.sroa.4.011.i, i64 1
  %93 = getelementptr inbounds %"src::lib::CpPixelT", ptr %iter.sroa.4.011.i, i64 0, i32 3
  %_27.i = load i8, ptr %93, align 1, !noalias !2, !noundef !5
  %_26.i = uitofp i8 %_27.i to float
  %a.i = fdiv float %_26.i, 2.550000e+02
  %_31.i = load i8, ptr %iter.sroa.4.011.i, align 1, !noalias !2, !noundef !5
  %_30.i = uitofp i8 %_31.i to float
  %_29.i = fdiv float %_30.i, 2.550000e+02
  %r.i = fmul float %a.i, %_29.i
  %94 = getelementptr inbounds %"src::lib::CpPixelT", ptr %iter.sroa.4.011.i, i64 0, i32 1
  %_35.i = load i8, ptr %94, align 1, !noalias !2, !noundef !5
  %_34.i = uitofp i8 %_35.i to float
  %_33.i = fdiv float %_34.i, 2.550000e+02
  %g.i = fmul float %a.i, %_33.i
  %95 = getelementptr inbounds %"src::lib::CpPixelT", ptr %iter.sroa.4.011.i, i64 0, i32 2
  %_39.i = load i8, ptr %95, align 1, !noalias !2, !noundef !5
  %_38.i = uitofp i8 %_39.i to float
  %_37.i = fdiv float %_38.i, 2.550000e+02
  %b.i = fmul float %a.i, %_37.i
  %_40.i = fmul float %r.i, 2.550000e+02
  %96 = tail call i8 @llvm.fptoui.sat.i8.f32(float %_40.i)
  store i8 %96, ptr %iter.sroa.4.011.i, align 1, !noalias !2
  %_41.i = fmul float %g.i, 2.550000e+02
  %97 = tail call i8 @llvm.fptoui.sat.i8.f32(float %_41.i)
  store i8 %97, ptr %94, align 1, !noalias !2
  %_42.i = fmul float %b.i, 2.550000e+02
  %98 = tail call i8 @llvm.fptoui.sat.i8.f32(float %_42.i)
  store i8 %98, ptr %95, align 1, !noalias !2
  %_10.i.i = icmp eq ptr %92, %5
  br i1 %_10.i.i, label %bb3, label %bb14.i, !llvm.loop !9

bb3:                                              ; preds = %bb14.i, %middle.block, %bb4.i, %bb2, %start
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i8> @llvm.fptoui.sat.v4i8.v4f32(<4 x float>) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fptoui.sat.i8.f32(float) #2

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @run_test_1() unnamed_addr #3 {
bb14.preheader.i.i:
  %pix = alloca [16 x %"src::lib::CpPixelT"], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %pix)
  store <16 x i8> <i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16>, ptr %pix, align 16
  %0 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 4
  store <16 x i8> <i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32>, ptr %0, align 16
  %1 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 8
  store <16 x i8> <i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48>, ptr %1, align 16
  %2 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 12
  store <16 x i8> <i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63, i8 64>, ptr %2, align 16
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %bb14.preheader.i.i
  %index = phi i64 [ 0, %bb14.preheader.i.i ], [ %index.next, %vector.body ]
  %3 = or i64 %index, 1
  %4 = or i64 %index, 2
  %5 = or i64 %index, 3
  %6 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %index
  %7 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %3
  %8 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %4
  %9 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %5
  %10 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %index, i32 3
  %11 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %3, i32 3
  %12 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %4, i32 3
  %13 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %5, i32 3
  %14 = load i8, ptr %10, align 1, !noalias !10, !noundef !5
  %15 = load i8, ptr %11, align 1, !noalias !10, !noundef !5
  %16 = load i8, ptr %12, align 1, !noalias !10, !noundef !5
  %17 = load i8, ptr %13, align 1, !noalias !10, !noundef !5
  %18 = insertelement <4 x i8> poison, i8 %14, i64 0
  %19 = insertelement <4 x i8> %18, i8 %15, i64 1
  %20 = insertelement <4 x i8> %19, i8 %16, i64 2
  %21 = insertelement <4 x i8> %20, i8 %17, i64 3
  %22 = uitofp <4 x i8> %21 to <4 x float>
  %23 = fdiv <4 x float> %22, splat (float 2.550000e+02)
  %24 = load i8, ptr %6, align 16, !noalias !10, !noundef !5
  %25 = load i8, ptr %7, align 4, !noalias !10, !noundef !5
  %26 = load i8, ptr %8, align 8, !noalias !10, !noundef !5
  %27 = load i8, ptr %9, align 4, !noalias !10, !noundef !5
  %28 = insertelement <4 x i8> poison, i8 %24, i64 0
  %29 = insertelement <4 x i8> %28, i8 %25, i64 1
  %30 = insertelement <4 x i8> %29, i8 %26, i64 2
  %31 = insertelement <4 x i8> %30, i8 %27, i64 3
  %32 = uitofp <4 x i8> %31 to <4 x float>
  %33 = fdiv <4 x float> %32, splat (float 2.550000e+02)
  %34 = fmul <4 x float> %23, %33
  %35 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %index, i32 1
  %36 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %3, i32 1
  %37 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %4, i32 1
  %38 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %5, i32 1
  %39 = load i8, ptr %35, align 1, !noalias !10, !noundef !5
  %40 = load i8, ptr %36, align 1, !noalias !10, !noundef !5
  %41 = load i8, ptr %37, align 1, !noalias !10, !noundef !5
  %42 = load i8, ptr %38, align 1, !noalias !10, !noundef !5
  %43 = insertelement <4 x i8> poison, i8 %39, i64 0
  %44 = insertelement <4 x i8> %43, i8 %40, i64 1
  %45 = insertelement <4 x i8> %44, i8 %41, i64 2
  %46 = insertelement <4 x i8> %45, i8 %42, i64 3
  %47 = uitofp <4 x i8> %46 to <4 x float>
  %48 = fdiv <4 x float> %47, splat (float 2.550000e+02)
  %49 = fmul <4 x float> %23, %48
  %50 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %index, i32 2
  %51 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %3, i32 2
  %52 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %4, i32 2
  %53 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %5, i32 2
  %54 = load i8, ptr %50, align 2, !noalias !10, !noundef !5
  %55 = load i8, ptr %51, align 2, !noalias !10, !noundef !5
  %56 = load i8, ptr %52, align 2, !noalias !10, !noundef !5
  %57 = load i8, ptr %53, align 2, !noalias !10, !noundef !5
  %58 = insertelement <4 x i8> poison, i8 %54, i64 0
  %59 = insertelement <4 x i8> %58, i8 %55, i64 1
  %60 = insertelement <4 x i8> %59, i8 %56, i64 2
  %61 = insertelement <4 x i8> %60, i8 %57, i64 3
  %62 = uitofp <4 x i8> %61 to <4 x float>
  %63 = fdiv <4 x float> %62, splat (float 2.550000e+02)
  %64 = fmul <4 x float> %23, %63
  %65 = fmul <4 x float> %34, splat (float 2.550000e+02)
  %66 = tail call <4 x i8> @llvm.fptoui.sat.v4i8.v4f32(<4 x float> %65)
  %67 = extractelement <4 x i8> %66, i64 0
  store i8 %67, ptr %6, align 16, !noalias !10
  %68 = extractelement <4 x i8> %66, i64 1
  store i8 %68, ptr %7, align 4, !noalias !10
  %69 = extractelement <4 x i8> %66, i64 2
  store i8 %69, ptr %8, align 8, !noalias !10
  %70 = extractelement <4 x i8> %66, i64 3
  store i8 %70, ptr %9, align 4, !noalias !10
  %71 = fmul <4 x float> %49, splat (float 2.550000e+02)
  %72 = tail call <4 x i8> @llvm.fptoui.sat.v4i8.v4f32(<4 x float> %71)
  %73 = extractelement <4 x i8> %72, i64 0
  store i8 %73, ptr %35, align 1, !noalias !10
  %74 = extractelement <4 x i8> %72, i64 1
  store i8 %74, ptr %36, align 1, !noalias !10
  %75 = extractelement <4 x i8> %72, i64 2
  store i8 %75, ptr %37, align 1, !noalias !10
  %76 = extractelement <4 x i8> %72, i64 3
  store i8 %76, ptr %38, align 1, !noalias !10
  %77 = fmul <4 x float> %64, splat (float 2.550000e+02)
  %78 = tail call <4 x i8> @llvm.fptoui.sat.v4i8.v4f32(<4 x float> %77)
  %79 = extractelement <4 x i8> %78, i64 0
  store i8 %79, ptr %50, align 2, !noalias !10
  %80 = extractelement <4 x i8> %78, i64 1
  store i8 %80, ptr %51, align 2, !noalias !10
  %81 = extractelement <4 x i8> %78, i64 2
  store i8 %81, ptr %52, align 2, !noalias !10
  %82 = extractelement <4 x i8> %78, i64 3
  store i8 %82, ptr %53, align 2, !noalias !10
  %index.next = add nuw i64 %index, 4
  %83 = icmp eq i64 %index.next, 16
  br i1 %83, label %bb15, label %vector.body, !llvm.loop !13

bb15:                                             ; preds = %vector.body
  %_52 = load i8, ptr %pix, align 16, !noundef !5
  %_51.not = icmp eq i8 %_52, 0
  %84 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 0, i32 1
  %_59 = load i8, ptr %84, align 1
  %_58.not = icmp eq i8 %_59, 0
  %or.cond = select i1 %_51.not, i1 %_58.not, i1 false
  %85 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 0, i32 2
  %_66 = load i8, ptr %85, align 2
  %_65.not = icmp eq i8 %_66, 0
  %or.cond19 = select i1 %or.cond, i1 %_65.not, i1 false
  %86 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 0, i32 3
  %_73 = load i8, ptr %86, align 1
  %_72.not = icmp eq i8 %_73, 4
  %or.cond20 = select i1 %or.cond19, i1 %_72.not, i1 false
  br i1 %or.cond20, label %bb15.1, label %bb23

bb15.1:                                           ; preds = %bb15
  %87 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 1
  %_52.1 = load i8, ptr %87, align 4, !noundef !5
  %_51.not.1 = icmp eq i8 %_52.1, 0
  %88 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 1, i32 1
  %_59.1 = load i8, ptr %88, align 1
  %_58.not.1 = icmp eq i8 %_59.1, 0
  %or.cond21 = select i1 %_51.not.1, i1 %_58.not.1, i1 false
  %89 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 1, i32 2
  %_66.1 = load i8, ptr %89, align 2
  %_65.not.1 = icmp eq i8 %_66.1, 0
  %or.cond22 = select i1 %or.cond21, i1 %_65.not.1, i1 false
  %90 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 1, i32 3
  %_73.1 = load i8, ptr %90, align 1
  %_72.not.1 = icmp eq i8 %_73.1, 8
  %or.cond23 = select i1 %or.cond22, i1 %_72.not.1, i1 false
  br i1 %or.cond23, label %bb15.2, label %bb23

bb15.2:                                           ; preds = %bb15.1
  %91 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 2
  %_52.2 = load i8, ptr %91, align 8, !noundef !5
  %_51.not.2 = icmp eq i8 %_52.2, 0
  %92 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 2, i32 1
  %_59.2 = load i8, ptr %92, align 1
  %_58.not.2 = icmp eq i8 %_59.2, 0
  %or.cond24 = select i1 %_51.not.2, i1 %_58.not.2, i1 false
  %93 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 2, i32 2
  %_66.2 = load i8, ptr %93, align 2
  %_65.not.2 = icmp eq i8 %_66.2, 0
  %or.cond25 = select i1 %or.cond24, i1 %_65.not.2, i1 false
  %94 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 2, i32 3
  %_73.2 = load i8, ptr %94, align 1
  %_72.not.2 = icmp eq i8 %_73.2, 12
  %or.cond26 = select i1 %or.cond25, i1 %_72.not.2, i1 false
  br i1 %or.cond26, label %bb15.3, label %bb23

bb15.3:                                           ; preds = %bb15.2
  %95 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 3
  %_52.3 = load i8, ptr %95, align 4, !noundef !5
  %_51.not.3 = icmp eq i8 %_52.3, 0
  %96 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 3, i32 1
  %_59.3 = load i8, ptr %96, align 1
  %_58.not.3 = icmp eq i8 %_59.3, 0
  %or.cond27 = select i1 %_51.not.3, i1 %_58.not.3, i1 false
  %97 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 3, i32 2
  %_66.3 = load i8, ptr %97, align 2
  %_65.not.3 = icmp eq i8 %_66.3, 0
  %or.cond28 = select i1 %or.cond27, i1 %_65.not.3, i1 false
  %98 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 3, i32 3
  %_73.3 = load i8, ptr %98, align 1
  %_72.not.3 = icmp eq i8 %_73.3, 16
  %or.cond29 = select i1 %or.cond28, i1 %_72.not.3, i1 false
  br i1 %or.cond29, label %bb15.4, label %bb23

bb15.4:                                           ; preds = %bb15.3
  %99 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 4
  %_52.4 = load i8, ptr %99, align 16, !noundef !5
  %_51.not.4 = icmp eq i8 %_52.4, 1
  %100 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 4, i32 1
  %_59.4 = load i8, ptr %100, align 1
  %_58.not.4 = icmp eq i8 %_59.4, 1
  %or.cond30 = select i1 %_51.not.4, i1 %_58.not.4, i1 false
  %101 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 4, i32 2
  %_66.4 = load i8, ptr %101, align 2
  %_65.not.4 = icmp eq i8 %_66.4, 1
  %or.cond31 = select i1 %or.cond30, i1 %_65.not.4, i1 false
  %102 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 4, i32 3
  %_73.4 = load i8, ptr %102, align 1
  %_72.not.4 = icmp eq i8 %_73.4, 20
  %or.cond32 = select i1 %or.cond31, i1 %_72.not.4, i1 false
  br i1 %or.cond32, label %bb15.5, label %bb23

bb15.5:                                           ; preds = %bb15.4
  %103 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 5
  %_52.5 = load i8, ptr %103, align 4, !noundef !5
  %_51.not.5 = icmp eq i8 %_52.5, 1
  %104 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 5, i32 1
  %_59.5 = load i8, ptr %104, align 1
  %_58.not.5 = icmp eq i8 %_59.5, 2
  %or.cond33 = select i1 %_51.not.5, i1 %_58.not.5, i1 false
  %105 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 5, i32 2
  %_66.5 = load i8, ptr %105, align 2
  %_65.not.5 = icmp eq i8 %_66.5, 2
  %or.cond34 = select i1 %or.cond33, i1 %_65.not.5, i1 false
  %106 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 5, i32 3
  %_73.5 = load i8, ptr %106, align 1
  %_72.not.5 = icmp eq i8 %_73.5, 24
  %or.cond35 = select i1 %or.cond34, i1 %_72.not.5, i1 false
  br i1 %or.cond35, label %bb15.6, label %bb23

bb15.6:                                           ; preds = %bb15.5
  %107 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 6
  %_52.6 = load i8, ptr %107, align 8, !noundef !5
  %_51.not.6 = icmp eq i8 %_52.6, 2
  %108 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 6, i32 1
  %_59.6 = load i8, ptr %108, align 1
  %_58.not.6 = icmp eq i8 %_59.6, 2
  %or.cond36 = select i1 %_51.not.6, i1 %_58.not.6, i1 false
  %109 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 6, i32 2
  %_66.6 = load i8, ptr %109, align 2
  %_65.not.6 = icmp eq i8 %_66.6, 2
  %or.cond37 = select i1 %or.cond36, i1 %_65.not.6, i1 false
  %110 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 6, i32 3
  %_73.6 = load i8, ptr %110, align 1
  %_72.not.6 = icmp eq i8 %_73.6, 28
  %or.cond38 = select i1 %or.cond37, i1 %_72.not.6, i1 false
  br i1 %or.cond38, label %bb15.7, label %bb23

bb15.7:                                           ; preds = %bb15.6
  %111 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 7
  %_52.7 = load i8, ptr %111, align 4, !noundef !5
  %_51.not.7 = icmp eq i8 %_52.7, 3
  %112 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 7, i32 1
  %_59.7 = load i8, ptr %112, align 1
  %_58.not.7 = icmp eq i8 %_59.7, 3
  %or.cond39 = select i1 %_51.not.7, i1 %_58.not.7, i1 false
  %113 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 7, i32 2
  %_66.7 = load i8, ptr %113, align 2
  %_65.not.7 = icmp eq i8 %_66.7, 3
  %or.cond40 = select i1 %or.cond39, i1 %_65.not.7, i1 false
  %114 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 7, i32 3
  %_73.7 = load i8, ptr %114, align 1
  %_72.not.7 = icmp eq i8 %_73.7, 32
  %or.cond41 = select i1 %or.cond40, i1 %_72.not.7, i1 false
  br i1 %or.cond41, label %bb15.8, label %bb23

bb15.8:                                           ; preds = %bb15.7
  %115 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 8
  %_52.8 = load i8, ptr %115, align 16, !noundef !5
  %_51.not.8 = icmp eq i8 %_52.8, 4
  %116 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 8, i32 1
  %_59.8 = load i8, ptr %116, align 1
  %_58.not.8 = icmp eq i8 %_59.8, 4
  %or.cond42 = select i1 %_51.not.8, i1 %_58.not.8, i1 false
  %117 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 8, i32 2
  %_66.8 = load i8, ptr %117, align 2
  %_65.not.8 = icmp eq i8 %_66.8, 4
  %or.cond43 = select i1 %or.cond42, i1 %_65.not.8, i1 false
  %118 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 8, i32 3
  %_73.8 = load i8, ptr %118, align 1
  %_72.not.8 = icmp eq i8 %_73.8, 36
  %or.cond44 = select i1 %or.cond43, i1 %_72.not.8, i1 false
  br i1 %or.cond44, label %bb15.9, label %bb23

bb15.9:                                           ; preds = %bb15.8
  %119 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 9
  %_52.9 = load i8, ptr %119, align 4, !noundef !5
  %_51.not.9 = icmp eq i8 %_52.9, 5
  %120 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 9, i32 1
  %_59.9 = load i8, ptr %120, align 1
  %_58.not.9 = icmp eq i8 %_59.9, 5
  %or.cond45 = select i1 %_51.not.9, i1 %_58.not.9, i1 false
  %121 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 9, i32 2
  %_66.9 = load i8, ptr %121, align 2
  %_65.not.9 = icmp eq i8 %_66.9, 6
  %or.cond46 = select i1 %or.cond45, i1 %_65.not.9, i1 false
  %122 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 9, i32 3
  %_73.9 = load i8, ptr %122, align 1
  %_72.not.9 = icmp eq i8 %_73.9, 40
  %or.cond47 = select i1 %or.cond46, i1 %_72.not.9, i1 false
  br i1 %or.cond47, label %bb15.10, label %bb23

bb15.10:                                          ; preds = %bb15.9
  %123 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 10
  %_52.10 = load i8, ptr %123, align 8, !noundef !5
  %_51.not.10 = icmp eq i8 %_52.10, 7
  %124 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 10, i32 1
  %_59.10 = load i8, ptr %124, align 1
  %_58.not.10 = icmp eq i8 %_59.10, 7
  %or.cond48 = select i1 %_51.not.10, i1 %_58.not.10, i1 false
  %125 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 10, i32 2
  %_66.10 = load i8, ptr %125, align 2
  %_65.not.10 = icmp eq i8 %_66.10, 7
  %or.cond49 = select i1 %or.cond48, i1 %_65.not.10, i1 false
  %126 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 10, i32 3
  %_73.10 = load i8, ptr %126, align 1
  %_72.not.10 = icmp eq i8 %_73.10, 44
  %or.cond50 = select i1 %or.cond49, i1 %_72.not.10, i1 false
  br i1 %or.cond50, label %bb15.11, label %bb23

bb15.11:                                          ; preds = %bb15.10
  %127 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 11
  %_52.11 = load i8, ptr %127, align 4, !noundef !5
  %_51.not.11 = icmp eq i8 %_52.11, 8
  %128 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 11, i32 1
  %_59.11 = load i8, ptr %128, align 1
  %_58.not.11 = icmp eq i8 %_59.11, 8
  %or.cond51 = select i1 %_51.not.11, i1 %_58.not.11, i1 false
  %129 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 11, i32 2
  %_66.11 = load i8, ptr %129, align 2
  %_65.not.11 = icmp eq i8 %_66.11, 8
  %or.cond52 = select i1 %or.cond51, i1 %_65.not.11, i1 false
  %130 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 11, i32 3
  %_73.11 = load i8, ptr %130, align 1
  %_72.not.11 = icmp eq i8 %_73.11, 48
  %or.cond53 = select i1 %or.cond52, i1 %_72.not.11, i1 false
  br i1 %or.cond53, label %bb15.12, label %bb23

bb15.12:                                          ; preds = %bb15.11
  %131 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 12
  %_52.12 = load i8, ptr %131, align 16, !noundef !5
  %_51.not.12 = icmp eq i8 %_52.12, 9
  %132 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 12, i32 1
  %_59.12 = load i8, ptr %132, align 1
  %_58.not.12 = icmp eq i8 %_59.12, 10
  %or.cond54 = select i1 %_51.not.12, i1 %_58.not.12, i1 false
  %133 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 12, i32 2
  %_66.12 = load i8, ptr %133, align 2
  %_65.not.12 = icmp eq i8 %_66.12, 10
  %or.cond55 = select i1 %or.cond54, i1 %_65.not.12, i1 false
  %134 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 12, i32 3
  %_73.12 = load i8, ptr %134, align 1
  %_72.not.12 = icmp eq i8 %_73.12, 52
  %or.cond56 = select i1 %or.cond55, i1 %_72.not.12, i1 false
  br i1 %or.cond56, label %bb15.13, label %bb23

bb15.13:                                          ; preds = %bb15.12
  %135 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 13
  %_52.13 = load i8, ptr %135, align 4, !noundef !5
  %_51.not.13 = icmp eq i8 %_52.13, 11
  %136 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 13, i32 1
  %_59.13 = load i8, ptr %136, align 1
  %_58.not.13 = icmp eq i8 %_59.13, 11
  %or.cond57 = select i1 %_51.not.13, i1 %_58.not.13, i1 false
  %137 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 13, i32 2
  %_66.13 = load i8, ptr %137, align 2
  %_65.not.13 = icmp eq i8 %_66.13, 12
  %or.cond58 = select i1 %or.cond57, i1 %_65.not.13, i1 false
  %138 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 13, i32 3
  %_73.13 = load i8, ptr %138, align 1
  %_72.not.13 = icmp eq i8 %_73.13, 56
  %or.cond59 = select i1 %or.cond58, i1 %_72.not.13, i1 false
  br i1 %or.cond59, label %bb15.14, label %bb23

bb15.14:                                          ; preds = %bb15.13
  %139 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 14
  %_52.14 = load i8, ptr %139, align 8, !noundef !5
  %_51.not.14 = icmp eq i8 %_52.14, 13
  %140 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 14, i32 1
  %_59.14 = load i8, ptr %140, align 1
  %_58.not.14 = icmp eq i8 %_59.14, 13
  %or.cond60 = select i1 %_51.not.14, i1 %_58.not.14, i1 false
  %141 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 14, i32 2
  %_66.14 = load i8, ptr %141, align 2
  %_65.not.14 = icmp eq i8 %_66.14, 13
  %or.cond61 = select i1 %or.cond60, i1 %_65.not.14, i1 false
  %142 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 14, i32 3
  %_73.14 = load i8, ptr %142, align 1
  %_72.not.14 = icmp eq i8 %_73.14, 60
  %or.cond62 = select i1 %or.cond61, i1 %_72.not.14, i1 false
  br i1 %or.cond62, label %bb15.15, label %bb23

bb15.15:                                          ; preds = %bb15.14
  %143 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 15
  %_52.15 = load i8, ptr %143, align 4, !noundef !5
  %_51.not.15 = icmp eq i8 %_52.15, 15
  %144 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 15, i32 1
  %_59.15 = load i8, ptr %144, align 1
  %_58.not.15 = icmp eq i8 %_59.15, 15
  %or.cond63 = select i1 %_51.not.15, i1 %_58.not.15, i1 false
  %145 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 15, i32 2
  %_66.15 = load i8, ptr %145, align 2
  %_65.not.15 = icmp eq i8 %_66.15, 15
  %or.cond64 = select i1 %or.cond63, i1 %_65.not.15, i1 false
  %146 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 15, i32 3
  %_73.15 = load i8, ptr %146, align 1
  %_72.not.15 = icmp eq i8 %_73.15, 64
  %or.cond65 = select i1 %or.cond64, i1 %_72.not.15, i1 false
  br i1 %or.cond65, label %bb2.16, label %bb23

bb2.16:                                           ; preds = %bb15.15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pix)
  br label %bb25

bb23:                                             ; preds = %bb15.15, %bb15.14, %bb15.13, %bb15.12, %bb15.11, %bb15.10, %bb15.9, %bb15.8, %bb15.7, %bb15.6, %bb15.5, %bb15.4, %bb15.3, %bb15.2, %bb15.1, %bb15
  %iter.sroa.0.0.lcssa17 = phi i64 [ 0, %bb15 ], [ 1, %bb15.1 ], [ 2, %bb15.2 ], [ 3, %bb15.3 ], [ 4, %bb15.4 ], [ 5, %bb15.5 ], [ 6, %bb15.6 ], [ 7, %bb15.7 ], [ 8, %bb15.8 ], [ 9, %bb15.9 ], [ 10, %bb15.10 ], [ 11, %bb15.11 ], [ 12, %bb15.12 ], [ 13, %bb15.13 ], [ 14, %bb15.14 ], [ 15, %bb15.15 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pix)
  br label %bb25

bb25:                                             ; preds = %bb23, %bb2.16
  %iter.sroa.0.018 = phi i64 [ 16, %bb2.16 ], [ %iter.sroa.0.0.lcssa17, %bb23 ]
  %147 = icmp ugt i64 %iter.sroa.0.018, 15
  ret i1 %147
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @run_test_2() unnamed_addr #3 {
bb14.preheader.i.i:
  %pix = alloca [16 x %"src::lib::CpPixelT"], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %pix)
  store <16 x i8> <i8 -8, i8 -25, i8 -43, i8 9, i8 115, i8 -116, i8 85, i8 -121, i8 -27, i8 -16, i8 -6, i8 -122, i8 0, i8 -64, i8 -98, i8 -106>, ptr %pix, align 16
  %0 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 4
  store <16 x i8> <i8 -7, i8 16, i8 -116, i8 27, i8 -85, i8 24, i8 -91, i8 2, i8 -45, i8 -23, i8 -81, i8 -77, i8 64, i8 -85, i8 4, i8 46>, ptr %0, align 16
  %1 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 8
  store <16 x i8> <i8 5, i8 -37, i8 -116, i8 -121, i8 -75, i8 -116, i8 -83, i8 -57, i8 64, i8 8, i8 40, i8 116, i8 -65, i8 -78, i8 62, i8 -96>, ptr %1, align 16
  %2 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 12
  store <16 x i8> <i8 -10, i8 -111, i8 59, i8 -7, i8 -11, i8 13, i8 102, i8 -65, i8 -87, i8 -103, i8 -88, i8 -82, i8 122, i8 -10, i8 -58, i8 98>, ptr %2, align 16
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %bb14.preheader.i.i
  %index = phi i64 [ 0, %bb14.preheader.i.i ], [ %index.next, %vector.body ]
  %3 = or i64 %index, 1
  %4 = or i64 %index, 2
  %5 = or i64 %index, 3
  %6 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %index
  %7 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %3
  %8 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %4
  %9 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %5
  %10 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %index, i32 3
  %11 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %3, i32 3
  %12 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %4, i32 3
  %13 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %5, i32 3
  %14 = load i8, ptr %10, align 1, !noalias !14, !noundef !5
  %15 = load i8, ptr %11, align 1, !noalias !14, !noundef !5
  %16 = load i8, ptr %12, align 1, !noalias !14, !noundef !5
  %17 = load i8, ptr %13, align 1, !noalias !14, !noundef !5
  %18 = insertelement <4 x i8> poison, i8 %14, i64 0
  %19 = insertelement <4 x i8> %18, i8 %15, i64 1
  %20 = insertelement <4 x i8> %19, i8 %16, i64 2
  %21 = insertelement <4 x i8> %20, i8 %17, i64 3
  %22 = uitofp <4 x i8> %21 to <4 x float>
  %23 = fdiv <4 x float> %22, splat (float 2.550000e+02)
  %24 = load i8, ptr %6, align 16, !noalias !14, !noundef !5
  %25 = load i8, ptr %7, align 4, !noalias !14, !noundef !5
  %26 = load i8, ptr %8, align 8, !noalias !14, !noundef !5
  %27 = load i8, ptr %9, align 4, !noalias !14, !noundef !5
  %28 = insertelement <4 x i8> poison, i8 %24, i64 0
  %29 = insertelement <4 x i8> %28, i8 %25, i64 1
  %30 = insertelement <4 x i8> %29, i8 %26, i64 2
  %31 = insertelement <4 x i8> %30, i8 %27, i64 3
  %32 = uitofp <4 x i8> %31 to <4 x float>
  %33 = fdiv <4 x float> %32, splat (float 2.550000e+02)
  %34 = fmul <4 x float> %23, %33
  %35 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %index, i32 1
  %36 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %3, i32 1
  %37 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %4, i32 1
  %38 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %5, i32 1
  %39 = load i8, ptr %35, align 1, !noalias !14, !noundef !5
  %40 = load i8, ptr %36, align 1, !noalias !14, !noundef !5
  %41 = load i8, ptr %37, align 1, !noalias !14, !noundef !5
  %42 = load i8, ptr %38, align 1, !noalias !14, !noundef !5
  %43 = insertelement <4 x i8> poison, i8 %39, i64 0
  %44 = insertelement <4 x i8> %43, i8 %40, i64 1
  %45 = insertelement <4 x i8> %44, i8 %41, i64 2
  %46 = insertelement <4 x i8> %45, i8 %42, i64 3
  %47 = uitofp <4 x i8> %46 to <4 x float>
  %48 = fdiv <4 x float> %47, splat (float 2.550000e+02)
  %49 = fmul <4 x float> %23, %48
  %50 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %index, i32 2
  %51 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %3, i32 2
  %52 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %4, i32 2
  %53 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %5, i32 2
  %54 = load i8, ptr %50, align 2, !noalias !14, !noundef !5
  %55 = load i8, ptr %51, align 2, !noalias !14, !noundef !5
  %56 = load i8, ptr %52, align 2, !noalias !14, !noundef !5
  %57 = load i8, ptr %53, align 2, !noalias !14, !noundef !5
  %58 = insertelement <4 x i8> poison, i8 %54, i64 0
  %59 = insertelement <4 x i8> %58, i8 %55, i64 1
  %60 = insertelement <4 x i8> %59, i8 %56, i64 2
  %61 = insertelement <4 x i8> %60, i8 %57, i64 3
  %62 = uitofp <4 x i8> %61 to <4 x float>
  %63 = fdiv <4 x float> %62, splat (float 2.550000e+02)
  %64 = fmul <4 x float> %23, %63
  %65 = fmul <4 x float> %34, splat (float 2.550000e+02)
  %66 = tail call <4 x i8> @llvm.fptoui.sat.v4i8.v4f32(<4 x float> %65)
  %67 = extractelement <4 x i8> %66, i64 0
  store i8 %67, ptr %6, align 16, !noalias !14
  %68 = extractelement <4 x i8> %66, i64 1
  store i8 %68, ptr %7, align 4, !noalias !14
  %69 = extractelement <4 x i8> %66, i64 2
  store i8 %69, ptr %8, align 8, !noalias !14
  %70 = extractelement <4 x i8> %66, i64 3
  store i8 %70, ptr %9, align 4, !noalias !14
  %71 = fmul <4 x float> %49, splat (float 2.550000e+02)
  %72 = tail call <4 x i8> @llvm.fptoui.sat.v4i8.v4f32(<4 x float> %71)
  %73 = extractelement <4 x i8> %72, i64 0
  store i8 %73, ptr %35, align 1, !noalias !14
  %74 = extractelement <4 x i8> %72, i64 1
  store i8 %74, ptr %36, align 1, !noalias !14
  %75 = extractelement <4 x i8> %72, i64 2
  store i8 %75, ptr %37, align 1, !noalias !14
  %76 = extractelement <4 x i8> %72, i64 3
  store i8 %76, ptr %38, align 1, !noalias !14
  %77 = fmul <4 x float> %64, splat (float 2.550000e+02)
  %78 = tail call <4 x i8> @llvm.fptoui.sat.v4i8.v4f32(<4 x float> %77)
  %79 = extractelement <4 x i8> %78, i64 0
  store i8 %79, ptr %50, align 2, !noalias !14
  %80 = extractelement <4 x i8> %78, i64 1
  store i8 %80, ptr %51, align 2, !noalias !14
  %81 = extractelement <4 x i8> %78, i64 2
  store i8 %81, ptr %52, align 2, !noalias !14
  %82 = extractelement <4 x i8> %78, i64 3
  store i8 %82, ptr %53, align 2, !noalias !14
  %index.next = add nuw i64 %index, 4
  %83 = icmp eq i64 %index.next, 16
  br i1 %83, label %bb15, label %vector.body, !llvm.loop !17

bb15:                                             ; preds = %vector.body
  %_52 = load i8, ptr %pix, align 16, !noundef !5
  %_51.not = icmp eq i8 %_52, 8
  %84 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 0, i32 1
  %_59 = load i8, ptr %84, align 1
  %_58.not = icmp eq i8 %_59, 8
  %or.cond = select i1 %_51.not, i1 %_58.not, i1 false
  %85 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 0, i32 2
  %_66 = load i8, ptr %85, align 2
  %_65.not = icmp eq i8 %_66, 7
  %or.cond19 = select i1 %or.cond, i1 %_65.not, i1 false
  %86 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 0, i32 3
  %_73 = load i8, ptr %86, align 1
  %_72.not = icmp eq i8 %_73, 9
  %or.cond20 = select i1 %or.cond19, i1 %_72.not, i1 false
  br i1 %or.cond20, label %bb15.1, label %bb23

bb15.1:                                           ; preds = %bb15
  %87 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 1
  %_52.1 = load i8, ptr %87, align 4, !noundef !5
  %_51.not.1 = icmp eq i8 %_52.1, 60
  %88 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 1, i32 1
  %_59.1 = load i8, ptr %88, align 1
  %_58.not.1 = icmp eq i8 %_59.1, 74
  %or.cond21 = select i1 %_51.not.1, i1 %_58.not.1, i1 false
  %89 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 1, i32 2
  %_66.1 = load i8, ptr %89, align 2
  %_65.not.1 = icmp eq i8 %_66.1, 45
  %or.cond22 = select i1 %or.cond21, i1 %_65.not.1, i1 false
  %90 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 1, i32 3
  %_73.1 = load i8, ptr %90, align 1
  %_72.not.1 = icmp eq i8 %_73.1, -121
  %or.cond23 = select i1 %or.cond22, i1 %_72.not.1, i1 false
  br i1 %or.cond23, label %bb15.2, label %bb23

bb15.2:                                           ; preds = %bb15.1
  %91 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 2
  %_52.2 = load i8, ptr %91, align 8, !noundef !5
  %_51.not.2 = icmp eq i8 %_52.2, 120
  %92 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 2, i32 1
  %_59.2 = load i8, ptr %92, align 1
  %_58.not.2 = icmp eq i8 %_59.2, 126
  %or.cond24 = select i1 %_51.not.2, i1 %_58.not.2, i1 false
  %93 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 2, i32 2
  %_66.2 = load i8, ptr %93, align 2
  %_65.not.2 = icmp eq i8 %_66.2, -125
  %or.cond25 = select i1 %or.cond24, i1 %_65.not.2, i1 false
  %94 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 2, i32 3
  %_73.2 = load i8, ptr %94, align 1
  %_72.not.2 = icmp eq i8 %_73.2, -122
  %or.cond26 = select i1 %or.cond25, i1 %_72.not.2, i1 false
  br i1 %or.cond26, label %bb15.3, label %bb23

bb15.3:                                           ; preds = %bb15.2
  %95 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 3
  %_52.3 = load i8, ptr %95, align 4, !noundef !5
  %_51.not.3 = icmp eq i8 %_52.3, 0
  %96 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 3, i32 1
  %_59.3 = load i8, ptr %96, align 1
  %_58.not.3 = icmp eq i8 %_59.3, 112
  %or.cond27 = select i1 %_51.not.3, i1 %_58.not.3, i1 false
  %97 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 3, i32 2
  %_66.3 = load i8, ptr %97, align 2
  %_65.not.3 = icmp eq i8 %_66.3, 92
  %or.cond28 = select i1 %or.cond27, i1 %_65.not.3, i1 false
  %98 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 3, i32 3
  %_73.3 = load i8, ptr %98, align 1
  %_72.not.3 = icmp eq i8 %_73.3, -106
  %or.cond29 = select i1 %or.cond28, i1 %_72.not.3, i1 false
  br i1 %or.cond29, label %bb15.4, label %bb23

bb15.4:                                           ; preds = %bb15.3
  %99 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 4
  %_52.4 = load i8, ptr %99, align 16, !noundef !5
  %_51.not.4 = icmp eq i8 %_52.4, 26
  %100 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 4, i32 1
  %_59.4 = load i8, ptr %100, align 1
  %_58.not.4 = icmp eq i8 %_59.4, 1
  %or.cond30 = select i1 %_51.not.4, i1 %_58.not.4, i1 false
  %101 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 4, i32 2
  %_66.4 = load i8, ptr %101, align 2
  %_65.not.4 = icmp eq i8 %_66.4, 14
  %or.cond31 = select i1 %or.cond30, i1 %_65.not.4, i1 false
  %102 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 4, i32 3
  %_73.4 = load i8, ptr %102, align 1
  %_72.not.4 = icmp eq i8 %_73.4, 27
  %or.cond32 = select i1 %or.cond31, i1 %_72.not.4, i1 false
  br i1 %or.cond32, label %bb15.5, label %bb23

bb15.5:                                           ; preds = %bb15.4
  %103 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 5
  %_52.5 = load i8, ptr %103, align 4, !noundef !5
  %_51.not.5 = icmp eq i8 %_52.5, 1
  %104 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 5, i32 1
  %_59.5 = load i8, ptr %104, align 1
  %_58.not.5 = icmp eq i8 %_59.5, 0
  %or.cond33 = select i1 %_51.not.5, i1 %_58.not.5, i1 false
  %105 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 5, i32 2
  %_66.5 = load i8, ptr %105, align 2
  %_65.not.5 = icmp eq i8 %_66.5, 1
  %or.cond34 = select i1 %or.cond33, i1 %_65.not.5, i1 false
  %106 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 5, i32 3
  %_73.5 = load i8, ptr %106, align 1
  %_72.not.5 = icmp eq i8 %_73.5, 2
  %or.cond35 = select i1 %or.cond34, i1 %_72.not.5, i1 false
  br i1 %or.cond35, label %bb15.6, label %bb23

bb15.6:                                           ; preds = %bb15.5
  %107 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 6
  %_52.6 = load i8, ptr %107, align 8, !noundef !5
  %_51.not.6 = icmp eq i8 %_52.6, -108
  %108 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 6, i32 1
  %_59.6 = load i8, ptr %108, align 1
  %_58.not.6 = icmp eq i8 %_59.6, -93
  %or.cond36 = select i1 %_51.not.6, i1 %_58.not.6, i1 false
  %109 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 6, i32 2
  %_66.6 = load i8, ptr %109, align 2
  %_65.not.6 = icmp eq i8 %_66.6, 122
  %or.cond37 = select i1 %or.cond36, i1 %_65.not.6, i1 false
  %110 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 6, i32 3
  %_73.6 = load i8, ptr %110, align 1
  %_72.not.6 = icmp eq i8 %_73.6, -77
  %or.cond38 = select i1 %or.cond37, i1 %_72.not.6, i1 false
  br i1 %or.cond38, label %bb15.7, label %bb23

bb15.7:                                           ; preds = %bb15.6
  %111 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 7
  %_52.7 = load i8, ptr %111, align 4, !noundef !5
  %_51.not.7 = icmp eq i8 %_52.7, 11
  %112 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 7, i32 1
  %_59.7 = load i8, ptr %112, align 1
  %_58.not.7 = icmp eq i8 %_59.7, 30
  %or.cond39 = select i1 %_51.not.7, i1 %_58.not.7, i1 false
  %113 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 7, i32 2
  %_66.7 = load i8, ptr %113, align 2
  %_65.not.7 = icmp eq i8 %_66.7, 0
  %or.cond40 = select i1 %or.cond39, i1 %_65.not.7, i1 false
  %114 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 7, i32 3
  %_73.7 = load i8, ptr %114, align 1
  %_72.not.7 = icmp eq i8 %_73.7, 46
  %or.cond41 = select i1 %or.cond40, i1 %_72.not.7, i1 false
  br i1 %or.cond41, label %bb15.8, label %bb23

bb15.8:                                           ; preds = %bb15.7
  %115 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 8
  %_52.8 = load i8, ptr %115, align 16, !noundef !5
  %_51.not.8 = icmp eq i8 %_52.8, 2
  %116 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 8, i32 1
  %_59.8 = load i8, ptr %116, align 1
  %_58.not.8 = icmp eq i8 %_59.8, 115
  %or.cond42 = select i1 %_51.not.8, i1 %_58.not.8, i1 false
  %117 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 8, i32 2
  %_66.8 = load i8, ptr %117, align 2
  %_65.not.8 = icmp eq i8 %_66.8, 74
  %or.cond43 = select i1 %or.cond42, i1 %_65.not.8, i1 false
  %118 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 8, i32 3
  %_73.8 = load i8, ptr %118, align 1
  %_72.not.8 = icmp eq i8 %_73.8, -121
  %or.cond44 = select i1 %or.cond43, i1 %_72.not.8, i1 false
  br i1 %or.cond44, label %bb15.9, label %bb23

bb15.9:                                           ; preds = %bb15.8
  %119 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 9
  %_52.9 = load i8, ptr %119, align 4, !noundef !5
  %_51.not.9 = icmp eq i8 %_52.9, -115
  %120 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 9, i32 1
  %_59.9 = load i8, ptr %120, align 1
  %_58.not.9 = icmp eq i8 %_59.9, 109
  %or.cond45 = select i1 %_51.not.9, i1 %_58.not.9, i1 false
  %121 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 9, i32 2
  %_66.9 = load i8, ptr %121, align 2
  %_65.not.9 = icmp eq i8 %_66.9, -121
  %or.cond46 = select i1 %or.cond45, i1 %_65.not.9, i1 false
  %122 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 9, i32 3
  %_73.9 = load i8, ptr %122, align 1
  %_72.not.9 = icmp eq i8 %_73.9, -57
  %or.cond47 = select i1 %or.cond46, i1 %_72.not.9, i1 false
  br i1 %or.cond47, label %bb15.10, label %bb23

bb15.10:                                          ; preds = %bb15.9
  %123 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 10
  %_52.10 = load i8, ptr %123, align 8, !noundef !5
  %_51.not.10 = icmp eq i8 %_52.10, 29
  %124 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 10, i32 1
  %_59.10 = load i8, ptr %124, align 1
  %_58.not.10 = icmp eq i8 %_59.10, 3
  %or.cond48 = select i1 %_51.not.10, i1 %_58.not.10, i1 false
  %125 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 10, i32 2
  %_66.10 = load i8, ptr %125, align 2
  %_65.not.10 = icmp eq i8 %_66.10, 18
  %or.cond49 = select i1 %or.cond48, i1 %_65.not.10, i1 false
  %126 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 10, i32 3
  %_73.10 = load i8, ptr %126, align 1
  %_72.not.10 = icmp eq i8 %_73.10, 116
  %or.cond50 = select i1 %or.cond49, i1 %_72.not.10, i1 false
  br i1 %or.cond50, label %bb15.11, label %bb23

bb15.11:                                          ; preds = %bb15.10
  %127 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 11
  %_52.11 = load i8, ptr %127, align 4, !noundef !5
  %_51.not.11 = icmp eq i8 %_52.11, 119
  %128 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 11, i32 1
  %_59.11 = load i8, ptr %128, align 1
  %_58.not.11 = icmp eq i8 %_59.11, 111
  %or.cond51 = select i1 %_51.not.11, i1 %_58.not.11, i1 false
  %129 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 11, i32 2
  %_66.11 = load i8, ptr %129, align 2
  %_65.not.11 = icmp eq i8 %_66.11, 38
  %or.cond52 = select i1 %or.cond51, i1 %_65.not.11, i1 false
  %130 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 11, i32 3
  %_73.11 = load i8, ptr %130, align 1
  %_72.not.11 = icmp eq i8 %_73.11, -96
  %or.cond53 = select i1 %or.cond52, i1 %_72.not.11, i1 false
  br i1 %or.cond53, label %bb15.12, label %bb23

bb15.12:                                          ; preds = %bb15.11
  %131 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 12
  %_52.12 = load i8, ptr %131, align 16, !noundef !5
  %_51.not.12 = icmp eq i8 %_52.12, -16
  %132 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 12, i32 1
  %_59.12 = load i8, ptr %132, align 1
  %_58.not.12 = icmp eq i8 %_59.12, -115
  %or.cond54 = select i1 %_51.not.12, i1 %_58.not.12, i1 false
  %133 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 12, i32 2
  %_66.12 = load i8, ptr %133, align 2
  %_65.not.12 = icmp eq i8 %_66.12, 57
  %or.cond55 = select i1 %or.cond54, i1 %_65.not.12, i1 false
  %134 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 12, i32 3
  %_73.12 = load i8, ptr %134, align 1
  %_72.not.12 = icmp eq i8 %_73.12, -7
  %or.cond56 = select i1 %or.cond55, i1 %_72.not.12, i1 false
  br i1 %or.cond56, label %bb15.13, label %bb23

bb15.13:                                          ; preds = %bb15.12
  %135 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 13
  %_52.13 = load i8, ptr %135, align 4, !noundef !5
  %_51.not.13 = icmp eq i8 %_52.13, -73
  %136 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 13, i32 1
  %_59.13 = load i8, ptr %136, align 1
  %_58.not.13 = icmp eq i8 %_59.13, 9
  %or.cond57 = select i1 %_51.not.13, i1 %_58.not.13, i1 false
  %137 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 13, i32 2
  %_66.13 = load i8, ptr %137, align 2
  %_65.not.13 = icmp eq i8 %_66.13, 76
  %or.cond58 = select i1 %or.cond57, i1 %_65.not.13, i1 false
  %138 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 13, i32 3
  %_73.13 = load i8, ptr %138, align 1
  %_72.not.13 = icmp eq i8 %_73.13, -65
  %or.cond59 = select i1 %or.cond58, i1 %_72.not.13, i1 false
  br i1 %or.cond59, label %bb15.14, label %bb23

bb15.14:                                          ; preds = %bb15.13
  %139 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 14
  %_52.14 = load i8, ptr %139, align 8, !noundef !5
  %_51.not.14 = icmp eq i8 %_52.14, 115
  %140 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 14, i32 1
  %_59.14 = load i8, ptr %140, align 1
  %_58.not.14 = icmp eq i8 %_59.14, 104
  %or.cond60 = select i1 %_51.not.14, i1 %_58.not.14, i1 false
  %141 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 14, i32 2
  %_66.14 = load i8, ptr %141, align 2
  %_65.not.14 = icmp eq i8 %_66.14, 114
  %or.cond61 = select i1 %or.cond60, i1 %_65.not.14, i1 false
  %142 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 14, i32 3
  %_73.14 = load i8, ptr %142, align 1
  %_72.not.14 = icmp eq i8 %_73.14, -82
  %or.cond62 = select i1 %or.cond61, i1 %_72.not.14, i1 false
  br i1 %or.cond62, label %bb15.15, label %bb23

bb15.15:                                          ; preds = %bb15.14
  %143 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 15
  %_52.15 = load i8, ptr %143, align 4, !noundef !5
  %_51.not.15 = icmp eq i8 %_52.15, 46
  %144 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 15, i32 1
  %_59.15 = load i8, ptr %144, align 1
  %_58.not.15 = icmp eq i8 %_59.15, 94
  %or.cond63 = select i1 %_51.not.15, i1 %_58.not.15, i1 false
  %145 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 15, i32 2
  %_66.15 = load i8, ptr %145, align 2
  %_65.not.15 = icmp eq i8 %_66.15, 76
  %or.cond64 = select i1 %or.cond63, i1 %_65.not.15, i1 false
  %146 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 15, i32 3
  %_73.15 = load i8, ptr %146, align 1
  %_72.not.15 = icmp eq i8 %_73.15, 98
  %or.cond65 = select i1 %or.cond64, i1 %_72.not.15, i1 false
  br i1 %or.cond65, label %bb2.16, label %bb23

bb2.16:                                           ; preds = %bb15.15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pix)
  br label %bb25

bb23:                                             ; preds = %bb15.15, %bb15.14, %bb15.13, %bb15.12, %bb15.11, %bb15.10, %bb15.9, %bb15.8, %bb15.7, %bb15.6, %bb15.5, %bb15.4, %bb15.3, %bb15.2, %bb15.1, %bb15
  %iter.sroa.0.0.lcssa17 = phi i64 [ 0, %bb15 ], [ 1, %bb15.1 ], [ 2, %bb15.2 ], [ 3, %bb15.3 ], [ 4, %bb15.4 ], [ 5, %bb15.5 ], [ 6, %bb15.6 ], [ 7, %bb15.7 ], [ 8, %bb15.8 ], [ 9, %bb15.9 ], [ 10, %bb15.10 ], [ 11, %bb15.11 ], [ 12, %bb15.12 ], [ 13, %bb15.13 ], [ 14, %bb15.14 ], [ 15, %bb15.15 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pix)
  br label %bb25

bb25:                                             ; preds = %bb23, %bb2.16
  %iter.sroa.0.018 = phi i64 [ 16, %bb2.16 ], [ %iter.sroa.0.0.lcssa17, %bb23 ]
  %147 = icmp ugt i64 %iter.sroa.0.018, 15
  ret i1 %147
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @run_test_3() unnamed_addr #3 {
bb14.preheader.i.i:
  %pix = alloca [16 x %"src::lib::CpPixelT"], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %pix)
  store <16 x i8> <i8 28, i8 108, i8 111, i8 -69, i8 -67, i8 97, i8 64, i8 87, i8 83, i8 22, i8 -93, i8 1, i8 0, i8 -98, i8 15, i8 71>, ptr %pix, align 16
  %0 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 4
  store <16 x i8> <i8 -63, i8 29, i8 46, i8 -46, i8 -54, i8 -93, i8 -96, i8 59, i8 98, i8 68, i8 81, i8 -107, i8 -52, i8 -14, i8 9, i8 65>, ptr %0, align 16
  %1 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 8
  store <16 x i8> <i8 -117, i8 119, i8 84, i8 -124, i8 113, i8 -13, i8 83, i8 -53, i8 -58, i8 -106, i8 -38, i8 -66, i8 -118, i8 118, i8 65, i8 91>, ptr %1, align 16
  %2 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 12
  store <16 x i8> <i8 -50, i8 36, i8 -57, i8 -17, i8 91, i8 55, i8 -122, i8 70, i8 -126, i8 -25, i8 -70, i8 112, i8 -91, i8 118, i8 -80, i8 111>, ptr %2, align 16
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %bb14.preheader.i.i
  %index = phi i64 [ 0, %bb14.preheader.i.i ], [ %index.next, %vector.body ]
  %3 = or i64 %index, 1
  %4 = or i64 %index, 2
  %5 = or i64 %index, 3
  %6 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %index
  %7 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %3
  %8 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %4
  %9 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %5
  %10 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %index, i32 3
  %11 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %3, i32 3
  %12 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %4, i32 3
  %13 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %5, i32 3
  %14 = load i8, ptr %10, align 1, !noalias !18, !noundef !5
  %15 = load i8, ptr %11, align 1, !noalias !18, !noundef !5
  %16 = load i8, ptr %12, align 1, !noalias !18, !noundef !5
  %17 = load i8, ptr %13, align 1, !noalias !18, !noundef !5
  %18 = insertelement <4 x i8> poison, i8 %14, i64 0
  %19 = insertelement <4 x i8> %18, i8 %15, i64 1
  %20 = insertelement <4 x i8> %19, i8 %16, i64 2
  %21 = insertelement <4 x i8> %20, i8 %17, i64 3
  %22 = uitofp <4 x i8> %21 to <4 x float>
  %23 = fdiv <4 x float> %22, splat (float 2.550000e+02)
  %24 = load i8, ptr %6, align 16, !noalias !18, !noundef !5
  %25 = load i8, ptr %7, align 4, !noalias !18, !noundef !5
  %26 = load i8, ptr %8, align 8, !noalias !18, !noundef !5
  %27 = load i8, ptr %9, align 4, !noalias !18, !noundef !5
  %28 = insertelement <4 x i8> poison, i8 %24, i64 0
  %29 = insertelement <4 x i8> %28, i8 %25, i64 1
  %30 = insertelement <4 x i8> %29, i8 %26, i64 2
  %31 = insertelement <4 x i8> %30, i8 %27, i64 3
  %32 = uitofp <4 x i8> %31 to <4 x float>
  %33 = fdiv <4 x float> %32, splat (float 2.550000e+02)
  %34 = fmul <4 x float> %23, %33
  %35 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %index, i32 1
  %36 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %3, i32 1
  %37 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %4, i32 1
  %38 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %5, i32 1
  %39 = load i8, ptr %35, align 1, !noalias !18, !noundef !5
  %40 = load i8, ptr %36, align 1, !noalias !18, !noundef !5
  %41 = load i8, ptr %37, align 1, !noalias !18, !noundef !5
  %42 = load i8, ptr %38, align 1, !noalias !18, !noundef !5
  %43 = insertelement <4 x i8> poison, i8 %39, i64 0
  %44 = insertelement <4 x i8> %43, i8 %40, i64 1
  %45 = insertelement <4 x i8> %44, i8 %41, i64 2
  %46 = insertelement <4 x i8> %45, i8 %42, i64 3
  %47 = uitofp <4 x i8> %46 to <4 x float>
  %48 = fdiv <4 x float> %47, splat (float 2.550000e+02)
  %49 = fmul <4 x float> %23, %48
  %50 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %index, i32 2
  %51 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %3, i32 2
  %52 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %4, i32 2
  %53 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %5, i32 2
  %54 = load i8, ptr %50, align 2, !noalias !18, !noundef !5
  %55 = load i8, ptr %51, align 2, !noalias !18, !noundef !5
  %56 = load i8, ptr %52, align 2, !noalias !18, !noundef !5
  %57 = load i8, ptr %53, align 2, !noalias !18, !noundef !5
  %58 = insertelement <4 x i8> poison, i8 %54, i64 0
  %59 = insertelement <4 x i8> %58, i8 %55, i64 1
  %60 = insertelement <4 x i8> %59, i8 %56, i64 2
  %61 = insertelement <4 x i8> %60, i8 %57, i64 3
  %62 = uitofp <4 x i8> %61 to <4 x float>
  %63 = fdiv <4 x float> %62, splat (float 2.550000e+02)
  %64 = fmul <4 x float> %23, %63
  %65 = fmul <4 x float> %34, splat (float 2.550000e+02)
  %66 = tail call <4 x i8> @llvm.fptoui.sat.v4i8.v4f32(<4 x float> %65)
  %67 = extractelement <4 x i8> %66, i64 0
  store i8 %67, ptr %6, align 16, !noalias !18
  %68 = extractelement <4 x i8> %66, i64 1
  store i8 %68, ptr %7, align 4, !noalias !18
  %69 = extractelement <4 x i8> %66, i64 2
  store i8 %69, ptr %8, align 8, !noalias !18
  %70 = extractelement <4 x i8> %66, i64 3
  store i8 %70, ptr %9, align 4, !noalias !18
  %71 = fmul <4 x float> %49, splat (float 2.550000e+02)
  %72 = tail call <4 x i8> @llvm.fptoui.sat.v4i8.v4f32(<4 x float> %71)
  %73 = extractelement <4 x i8> %72, i64 0
  store i8 %73, ptr %35, align 1, !noalias !18
  %74 = extractelement <4 x i8> %72, i64 1
  store i8 %74, ptr %36, align 1, !noalias !18
  %75 = extractelement <4 x i8> %72, i64 2
  store i8 %75, ptr %37, align 1, !noalias !18
  %76 = extractelement <4 x i8> %72, i64 3
  store i8 %76, ptr %38, align 1, !noalias !18
  %77 = fmul <4 x float> %64, splat (float 2.550000e+02)
  %78 = tail call <4 x i8> @llvm.fptoui.sat.v4i8.v4f32(<4 x float> %77)
  %79 = extractelement <4 x i8> %78, i64 0
  store i8 %79, ptr %50, align 2, !noalias !18
  %80 = extractelement <4 x i8> %78, i64 1
  store i8 %80, ptr %51, align 2, !noalias !18
  %81 = extractelement <4 x i8> %78, i64 2
  store i8 %81, ptr %52, align 2, !noalias !18
  %82 = extractelement <4 x i8> %78, i64 3
  store i8 %82, ptr %53, align 2, !noalias !18
  %index.next = add nuw i64 %index, 4
  %83 = icmp eq i64 %index.next, 16
  br i1 %83, label %bb15, label %vector.body, !llvm.loop !21

bb15:                                             ; preds = %vector.body
  %_52 = load i8, ptr %pix, align 16, !noundef !5
  %_51.not = icmp eq i8 %_52, 20
  %84 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 0, i32 1
  %_59 = load i8, ptr %84, align 1
  %_58.not = icmp eq i8 %_59, 79
  %or.cond = select i1 %_51.not, i1 %_58.not, i1 false
  %85 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 0, i32 2
  %_66 = load i8, ptr %85, align 2
  %_65.not = icmp eq i8 %_66, 81
  %or.cond19 = select i1 %or.cond, i1 %_65.not, i1 false
  %86 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 0, i32 3
  %_73 = load i8, ptr %86, align 1
  %_72.not = icmp eq i8 %_73, -69
  %or.cond20 = select i1 %or.cond19, i1 %_72.not, i1 false
  br i1 %or.cond20, label %bb15.1, label %bb23

bb15.1:                                           ; preds = %bb15
  %87 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 1
  %_52.1 = load i8, ptr %87, align 4, !noundef !5
  %_51.not.1 = icmp eq i8 %_52.1, 64
  %88 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 1, i32 1
  %_59.1 = load i8, ptr %88, align 1
  %_58.not.1 = icmp eq i8 %_59.1, 33
  %or.cond21 = select i1 %_51.not.1, i1 %_58.not.1, i1 false
  %89 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 1, i32 2
  %_66.1 = load i8, ptr %89, align 2
  %_65.not.1 = icmp eq i8 %_66.1, 21
  %or.cond22 = select i1 %or.cond21, i1 %_65.not.1, i1 false
  %90 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 1, i32 3
  %_73.1 = load i8, ptr %90, align 1
  %_72.not.1 = icmp eq i8 %_73.1, 87
  %or.cond23 = select i1 %or.cond22, i1 %_72.not.1, i1 false
  br i1 %or.cond23, label %bb15.2, label %bb23

bb15.2:                                           ; preds = %bb15.1
  %91 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 2
  %_52.2 = load i8, ptr %91, align 8, !noundef !5
  %_51.not.2 = icmp eq i8 %_52.2, 0
  %92 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 2, i32 1
  %_59.2 = load i8, ptr %92, align 1
  %_58.not.2 = icmp eq i8 %_59.2, 0
  %or.cond24 = select i1 %_51.not.2, i1 %_58.not.2, i1 false
  %93 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 2, i32 2
  %_66.2 = load i8, ptr %93, align 2
  %_65.not.2 = icmp eq i8 %_66.2, 0
  %or.cond25 = select i1 %or.cond24, i1 %_65.not.2, i1 false
  %94 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 2, i32 3
  %_73.2 = load i8, ptr %94, align 1
  %_72.not.2 = icmp eq i8 %_73.2, 1
  %or.cond26 = select i1 %or.cond25, i1 %_72.not.2, i1 false
  br i1 %or.cond26, label %bb15.3, label %bb23

bb15.3:                                           ; preds = %bb15.2
  %95 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 3
  %_52.3 = load i8, ptr %95, align 4, !noundef !5
  %_51.not.3 = icmp eq i8 %_52.3, 0
  %96 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 3, i32 1
  %_59.3 = load i8, ptr %96, align 1
  %_58.not.3 = icmp eq i8 %_59.3, 43
  %or.cond27 = select i1 %_51.not.3, i1 %_58.not.3, i1 false
  %97 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 3, i32 2
  %_66.3 = load i8, ptr %97, align 2
  %_65.not.3 = icmp eq i8 %_66.3, 4
  %or.cond28 = select i1 %or.cond27, i1 %_65.not.3, i1 false
  %98 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 3, i32 3
  %_73.3 = load i8, ptr %98, align 1
  %_72.not.3 = icmp eq i8 %_73.3, 71
  %or.cond29 = select i1 %or.cond28, i1 %_72.not.3, i1 false
  br i1 %or.cond29, label %bb15.4, label %bb23

bb15.4:                                           ; preds = %bb15.3
  %99 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 4
  %_52.4 = load i8, ptr %99, align 16, !noundef !5
  %_51.not.4 = icmp eq i8 %_52.4, -98
  %100 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 4, i32 1
  %_59.4 = load i8, ptr %100, align 1
  %_58.not.4 = icmp eq i8 %_59.4, 23
  %or.cond30 = select i1 %_51.not.4, i1 %_58.not.4, i1 false
  %101 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 4, i32 2
  %_66.4 = load i8, ptr %101, align 2
  %_65.not.4 = icmp eq i8 %_66.4, 37
  %or.cond31 = select i1 %or.cond30, i1 %_65.not.4, i1 false
  %102 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 4, i32 3
  %_73.4 = load i8, ptr %102, align 1
  %_72.not.4 = icmp eq i8 %_73.4, -46
  %or.cond32 = select i1 %or.cond31, i1 %_72.not.4, i1 false
  br i1 %or.cond32, label %bb15.5, label %bb23

bb15.5:                                           ; preds = %bb15.4
  %103 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 5
  %_52.5 = load i8, ptr %103, align 4, !noundef !5
  %_51.not.5 = icmp eq i8 %_52.5, 46
  %104 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 5, i32 1
  %_59.5 = load i8, ptr %104, align 1
  %_58.not.5 = icmp eq i8 %_59.5, 37
  %or.cond33 = select i1 %_51.not.5, i1 %_58.not.5, i1 false
  %105 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 5, i32 2
  %_66.5 = load i8, ptr %105, align 2
  %_65.not.5 = icmp eq i8 %_66.5, 37
  %or.cond34 = select i1 %or.cond33, i1 %_65.not.5, i1 false
  %106 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 5, i32 3
  %_73.5 = load i8, ptr %106, align 1
  %_72.not.5 = icmp eq i8 %_73.5, 59
  %or.cond35 = select i1 %or.cond34, i1 %_72.not.5, i1 false
  br i1 %or.cond35, label %bb15.6, label %bb23

bb15.6:                                           ; preds = %bb15.5
  %107 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 6
  %_52.6 = load i8, ptr %107, align 8, !noundef !5
  %_51.not.6 = icmp eq i8 %_52.6, 57
  %108 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 6, i32 1
  %_59.6 = load i8, ptr %108, align 1
  %_58.not.6 = icmp eq i8 %_59.6, 39
  %or.cond36 = select i1 %_51.not.6, i1 %_58.not.6, i1 false
  %109 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 6, i32 2
  %_66.6 = load i8, ptr %109, align 2
  %_65.not.6 = icmp eq i8 %_66.6, 47
  %or.cond37 = select i1 %or.cond36, i1 %_65.not.6, i1 false
  %110 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 6, i32 3
  %_73.6 = load i8, ptr %110, align 1
  %_72.not.6 = icmp eq i8 %_73.6, -107
  %or.cond38 = select i1 %or.cond37, i1 %_72.not.6, i1 false
  br i1 %or.cond38, label %bb15.7, label %bb23

bb15.7:                                           ; preds = %bb15.6
  %111 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 7
  %_52.7 = load i8, ptr %111, align 4, !noundef !5
  %_51.not.7 = icmp eq i8 %_52.7, 52
  %112 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 7, i32 1
  %_59.7 = load i8, ptr %112, align 1
  %_58.not.7 = icmp eq i8 %_59.7, 61
  %or.cond39 = select i1 %_51.not.7, i1 %_58.not.7, i1 false
  %113 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 7, i32 2
  %_66.7 = load i8, ptr %113, align 2
  %_65.not.7 = icmp eq i8 %_66.7, 2
  %or.cond40 = select i1 %or.cond39, i1 %_65.not.7, i1 false
  %114 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 7, i32 3
  %_73.7 = load i8, ptr %114, align 1
  %_72.not.7 = icmp eq i8 %_73.7, 65
  %or.cond41 = select i1 %or.cond40, i1 %_72.not.7, i1 false
  br i1 %or.cond41, label %bb15.8, label %bb23

bb15.8:                                           ; preds = %bb15.7
  %115 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 8
  %_52.8 = load i8, ptr %115, align 16, !noundef !5
  %_51.not.8 = icmp eq i8 %_52.8, 71
  %116 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 8, i32 1
  %_59.8 = load i8, ptr %116, align 1
  %_58.not.8 = icmp eq i8 %_59.8, 61
  %or.cond42 = select i1 %_51.not.8, i1 %_58.not.8, i1 false
  %117 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 8, i32 2
  %_66.8 = load i8, ptr %117, align 2
  %_65.not.8 = icmp eq i8 %_66.8, 43
  %or.cond43 = select i1 %or.cond42, i1 %_65.not.8, i1 false
  %118 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 8, i32 3
  %_73.8 = load i8, ptr %118, align 1
  %_72.not.8 = icmp eq i8 %_73.8, -124
  %or.cond44 = select i1 %or.cond43, i1 %_72.not.8, i1 false
  br i1 %or.cond44, label %bb15.9, label %bb23

bb15.9:                                           ; preds = %bb15.8
  %119 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 9
  %_52.9 = load i8, ptr %119, align 4, !noundef !5
  %_51.not.9 = icmp eq i8 %_52.9, 89
  %120 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 9, i32 1
  %_59.9 = load i8, ptr %120, align 1
  %_58.not.9 = icmp eq i8 %_59.9, -63
  %or.cond45 = select i1 %_51.not.9, i1 %_58.not.9, i1 false
  %121 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 9, i32 2
  %_66.9 = load i8, ptr %121, align 2
  %_65.not.9 = icmp eq i8 %_66.9, 66
  %or.cond46 = select i1 %or.cond45, i1 %_65.not.9, i1 false
  %122 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 9, i32 3
  %_73.9 = load i8, ptr %122, align 1
  %_72.not.9 = icmp eq i8 %_73.9, -53
  %or.cond47 = select i1 %or.cond46, i1 %_72.not.9, i1 false
  br i1 %or.cond47, label %bb15.10, label %bb23

bb15.10:                                          ; preds = %bb15.9
  %123 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 10
  %_52.10 = load i8, ptr %123, align 8, !noundef !5
  %_51.not.10 = icmp eq i8 %_52.10, -109
  %124 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 10, i32 1
  %_59.10 = load i8, ptr %124, align 1
  %_58.not.10 = icmp eq i8 %_59.10, 111
  %or.cond48 = select i1 %_51.not.10, i1 %_58.not.10, i1 false
  %125 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 10, i32 2
  %_66.10 = load i8, ptr %125, align 2
  %_65.not.10 = icmp eq i8 %_66.10, -94
  %or.cond49 = select i1 %or.cond48, i1 %_65.not.10, i1 false
  %126 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 10, i32 3
  %_73.10 = load i8, ptr %126, align 1
  %_72.not.10 = icmp eq i8 %_73.10, -66
  %or.cond50 = select i1 %or.cond49, i1 %_72.not.10, i1 false
  br i1 %or.cond50, label %bb15.11, label %bb23

bb15.11:                                          ; preds = %bb15.10
  %127 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 11
  %_52.11 = load i8, ptr %127, align 4, !noundef !5
  %_51.not.11 = icmp eq i8 %_52.11, 49
  %128 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 11, i32 1
  %_59.11 = load i8, ptr %128, align 1
  %_58.not.11 = icmp eq i8 %_59.11, 42
  %or.cond51 = select i1 %_51.not.11, i1 %_58.not.11, i1 false
  %129 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 11, i32 2
  %_66.11 = load i8, ptr %129, align 2
  %_65.not.11 = icmp eq i8 %_66.11, 23
  %or.cond52 = select i1 %or.cond51, i1 %_65.not.11, i1 false
  %130 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 11, i32 3
  %_73.11 = load i8, ptr %130, align 1
  %_72.not.11 = icmp eq i8 %_73.11, 91
  %or.cond53 = select i1 %or.cond52, i1 %_72.not.11, i1 false
  br i1 %or.cond53, label %bb15.12, label %bb23

bb15.12:                                          ; preds = %bb15.11
  %131 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 12
  %_52.12 = load i8, ptr %131, align 16, !noundef !5
  %_51.not.12 = icmp eq i8 %_52.12, -63
  %132 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 12, i32 1
  %_59.12 = load i8, ptr %132, align 1
  %_58.not.12 = icmp eq i8 %_59.12, 33
  %or.cond54 = select i1 %_51.not.12, i1 %_58.not.12, i1 false
  %133 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 12, i32 2
  %_66.12 = load i8, ptr %133, align 2
  %_65.not.12 = icmp eq i8 %_66.12, -70
  %or.cond55 = select i1 %or.cond54, i1 %_65.not.12, i1 false
  %134 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 12, i32 3
  %_73.12 = load i8, ptr %134, align 1
  %_72.not.12 = icmp eq i8 %_73.12, -17
  %or.cond56 = select i1 %or.cond55, i1 %_72.not.12, i1 false
  br i1 %or.cond56, label %bb15.13, label %bb23

bb15.13:                                          ; preds = %bb15.12
  %135 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 13
  %_52.13 = load i8, ptr %135, align 4, !noundef !5
  %_51.not.13 = icmp eq i8 %_52.13, 24
  %136 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 13, i32 1
  %_59.13 = load i8, ptr %136, align 1
  %_58.not.13 = icmp eq i8 %_59.13, 15
  %or.cond57 = select i1 %_51.not.13, i1 %_58.not.13, i1 false
  %137 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 13, i32 2
  %_66.13 = load i8, ptr %137, align 2
  %_65.not.13 = icmp eq i8 %_66.13, 36
  %or.cond58 = select i1 %or.cond57, i1 %_65.not.13, i1 false
  %138 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 13, i32 3
  %_73.13 = load i8, ptr %138, align 1
  %_72.not.13 = icmp eq i8 %_73.13, 70
  %or.cond59 = select i1 %or.cond58, i1 %_72.not.13, i1 false
  br i1 %or.cond59, label %bb15.14, label %bb23

bb15.14:                                          ; preds = %bb15.13
  %139 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 14
  %_52.14 = load i8, ptr %139, align 8, !noundef !5
  %_51.not.14 = icmp eq i8 %_52.14, 57
  %140 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 14, i32 1
  %_59.14 = load i8, ptr %140, align 1
  %_58.not.14 = icmp eq i8 %_59.14, 101
  %or.cond60 = select i1 %_51.not.14, i1 %_58.not.14, i1 false
  %141 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 14, i32 2
  %_66.14 = load i8, ptr %141, align 2
  %_65.not.14 = icmp eq i8 %_66.14, 81
  %or.cond61 = select i1 %or.cond60, i1 %_65.not.14, i1 false
  %142 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 14, i32 3
  %_73.14 = load i8, ptr %142, align 1
  %_72.not.14 = icmp eq i8 %_73.14, 112
  %or.cond62 = select i1 %or.cond61, i1 %_72.not.14, i1 false
  br i1 %or.cond62, label %bb15.15, label %bb23

bb15.15:                                          ; preds = %bb15.14
  %143 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 15
  %_52.15 = load i8, ptr %143, align 4, !noundef !5
  %_51.not.15 = icmp eq i8 %_52.15, 71
  %144 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 15, i32 1
  %_59.15 = load i8, ptr %144, align 1
  %_58.not.15 = icmp eq i8 %_59.15, 51
  %or.cond63 = select i1 %_51.not.15, i1 %_58.not.15, i1 false
  %145 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 15, i32 2
  %_66.15 = load i8, ptr %145, align 2
  %_65.not.15 = icmp eq i8 %_66.15, 76
  %or.cond64 = select i1 %or.cond63, i1 %_65.not.15, i1 false
  %146 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 15, i32 3
  %_73.15 = load i8, ptr %146, align 1
  %_72.not.15 = icmp eq i8 %_73.15, 111
  %or.cond65 = select i1 %or.cond64, i1 %_72.not.15, i1 false
  br i1 %or.cond65, label %bb2.16, label %bb23

bb2.16:                                           ; preds = %bb15.15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pix)
  br label %bb25

bb23:                                             ; preds = %bb15.15, %bb15.14, %bb15.13, %bb15.12, %bb15.11, %bb15.10, %bb15.9, %bb15.8, %bb15.7, %bb15.6, %bb15.5, %bb15.4, %bb15.3, %bb15.2, %bb15.1, %bb15
  %iter.sroa.0.0.lcssa17 = phi i64 [ 0, %bb15 ], [ 1, %bb15.1 ], [ 2, %bb15.2 ], [ 3, %bb15.3 ], [ 4, %bb15.4 ], [ 5, %bb15.5 ], [ 6, %bb15.6 ], [ 7, %bb15.7 ], [ 8, %bb15.8 ], [ 9, %bb15.9 ], [ 10, %bb15.10 ], [ 11, %bb15.11 ], [ 12, %bb15.12 ], [ 13, %bb15.13 ], [ 14, %bb15.14 ], [ 15, %bb15.15 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pix)
  br label %bb25

bb25:                                             ; preds = %bb23, %bb2.16
  %iter.sroa.0.018 = phi i64 [ 16, %bb2.16 ], [ %iter.sroa.0.0.lcssa17, %bb23 ]
  %147 = icmp ugt i64 %iter.sroa.0.018, 15
  ret i1 %147
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @run_test_4() unnamed_addr #3 {
bb14.preheader.i.i:
  %pix = alloca [16 x %"src::lib::CpPixelT"], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %pix)
  store <16 x i8> <i8 -100, i8 76, i8 -64, i8 10, i8 29, i8 -33, i8 26, i8 -36, i8 41, i8 -86, i8 -69, i8 -38, i8 7, i8 -60, i8 80, i8 36>, ptr %pix, align 16
  %0 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 4
  store <16 x i8> <i8 -24, i8 -79, i8 109, i8 -24, i8 -15, i8 117, i8 71, i8 66, i8 120, i8 62, i8 -1, i8 -84, i8 32, i8 -19, i8 62, i8 -83>, ptr %0, align 16
  %1 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 8
  store <16 x i8> <i8 -57, i8 -73, i8 58, i8 -102, i8 54, i8 26, i8 89, i8 13, i8 -46, i8 4, i8 123, i8 84, i8 106, i8 -81, i8 4, i8 74>, ptr %1, align 16
  %2 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 12
  store <16 x i8> <i8 -109, i8 -57, i8 -128, i8 18, i8 51, i8 -98, i8 55, i8 -65, i8 60, i8 -128, i8 102, i8 27, i8 -126, i8 125, i8 -85, i8 63>, ptr %2, align 16
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %bb14.preheader.i.i
  %index = phi i64 [ 0, %bb14.preheader.i.i ], [ %index.next, %vector.body ]
  %3 = or i64 %index, 1
  %4 = or i64 %index, 2
  %5 = or i64 %index, 3
  %6 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %index
  %7 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %3
  %8 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %4
  %9 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %5
  %10 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %index, i32 3
  %11 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %3, i32 3
  %12 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %4, i32 3
  %13 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %5, i32 3
  %14 = load i8, ptr %10, align 1, !noalias !22, !noundef !5
  %15 = load i8, ptr %11, align 1, !noalias !22, !noundef !5
  %16 = load i8, ptr %12, align 1, !noalias !22, !noundef !5
  %17 = load i8, ptr %13, align 1, !noalias !22, !noundef !5
  %18 = insertelement <4 x i8> poison, i8 %14, i64 0
  %19 = insertelement <4 x i8> %18, i8 %15, i64 1
  %20 = insertelement <4 x i8> %19, i8 %16, i64 2
  %21 = insertelement <4 x i8> %20, i8 %17, i64 3
  %22 = uitofp <4 x i8> %21 to <4 x float>
  %23 = fdiv <4 x float> %22, splat (float 2.550000e+02)
  %24 = load i8, ptr %6, align 16, !noalias !22, !noundef !5
  %25 = load i8, ptr %7, align 4, !noalias !22, !noundef !5
  %26 = load i8, ptr %8, align 8, !noalias !22, !noundef !5
  %27 = load i8, ptr %9, align 4, !noalias !22, !noundef !5
  %28 = insertelement <4 x i8> poison, i8 %24, i64 0
  %29 = insertelement <4 x i8> %28, i8 %25, i64 1
  %30 = insertelement <4 x i8> %29, i8 %26, i64 2
  %31 = insertelement <4 x i8> %30, i8 %27, i64 3
  %32 = uitofp <4 x i8> %31 to <4 x float>
  %33 = fdiv <4 x float> %32, splat (float 2.550000e+02)
  %34 = fmul <4 x float> %23, %33
  %35 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %index, i32 1
  %36 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %3, i32 1
  %37 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %4, i32 1
  %38 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %5, i32 1
  %39 = load i8, ptr %35, align 1, !noalias !22, !noundef !5
  %40 = load i8, ptr %36, align 1, !noalias !22, !noundef !5
  %41 = load i8, ptr %37, align 1, !noalias !22, !noundef !5
  %42 = load i8, ptr %38, align 1, !noalias !22, !noundef !5
  %43 = insertelement <4 x i8> poison, i8 %39, i64 0
  %44 = insertelement <4 x i8> %43, i8 %40, i64 1
  %45 = insertelement <4 x i8> %44, i8 %41, i64 2
  %46 = insertelement <4 x i8> %45, i8 %42, i64 3
  %47 = uitofp <4 x i8> %46 to <4 x float>
  %48 = fdiv <4 x float> %47, splat (float 2.550000e+02)
  %49 = fmul <4 x float> %23, %48
  %50 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %index, i32 2
  %51 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %3, i32 2
  %52 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %4, i32 2
  %53 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %5, i32 2
  %54 = load i8, ptr %50, align 2, !noalias !22, !noundef !5
  %55 = load i8, ptr %51, align 2, !noalias !22, !noundef !5
  %56 = load i8, ptr %52, align 2, !noalias !22, !noundef !5
  %57 = load i8, ptr %53, align 2, !noalias !22, !noundef !5
  %58 = insertelement <4 x i8> poison, i8 %54, i64 0
  %59 = insertelement <4 x i8> %58, i8 %55, i64 1
  %60 = insertelement <4 x i8> %59, i8 %56, i64 2
  %61 = insertelement <4 x i8> %60, i8 %57, i64 3
  %62 = uitofp <4 x i8> %61 to <4 x float>
  %63 = fdiv <4 x float> %62, splat (float 2.550000e+02)
  %64 = fmul <4 x float> %23, %63
  %65 = fmul <4 x float> %34, splat (float 2.550000e+02)
  %66 = tail call <4 x i8> @llvm.fptoui.sat.v4i8.v4f32(<4 x float> %65)
  %67 = extractelement <4 x i8> %66, i64 0
  store i8 %67, ptr %6, align 16, !noalias !22
  %68 = extractelement <4 x i8> %66, i64 1
  store i8 %68, ptr %7, align 4, !noalias !22
  %69 = extractelement <4 x i8> %66, i64 2
  store i8 %69, ptr %8, align 8, !noalias !22
  %70 = extractelement <4 x i8> %66, i64 3
  store i8 %70, ptr %9, align 4, !noalias !22
  %71 = fmul <4 x float> %49, splat (float 2.550000e+02)
  %72 = tail call <4 x i8> @llvm.fptoui.sat.v4i8.v4f32(<4 x float> %71)
  %73 = extractelement <4 x i8> %72, i64 0
  store i8 %73, ptr %35, align 1, !noalias !22
  %74 = extractelement <4 x i8> %72, i64 1
  store i8 %74, ptr %36, align 1, !noalias !22
  %75 = extractelement <4 x i8> %72, i64 2
  store i8 %75, ptr %37, align 1, !noalias !22
  %76 = extractelement <4 x i8> %72, i64 3
  store i8 %76, ptr %38, align 1, !noalias !22
  %77 = fmul <4 x float> %64, splat (float 2.550000e+02)
  %78 = tail call <4 x i8> @llvm.fptoui.sat.v4i8.v4f32(<4 x float> %77)
  %79 = extractelement <4 x i8> %78, i64 0
  store i8 %79, ptr %50, align 2, !noalias !22
  %80 = extractelement <4 x i8> %78, i64 1
  store i8 %80, ptr %51, align 2, !noalias !22
  %81 = extractelement <4 x i8> %78, i64 2
  store i8 %81, ptr %52, align 2, !noalias !22
  %82 = extractelement <4 x i8> %78, i64 3
  store i8 %82, ptr %53, align 2, !noalias !22
  %index.next = add nuw i64 %index, 4
  %83 = icmp eq i64 %index.next, 16
  br i1 %83, label %bb15, label %vector.body, !llvm.loop !25

bb15:                                             ; preds = %vector.body
  %_52 = load i8, ptr %pix, align 16, !noundef !5
  %_51.not = icmp eq i8 %_52, 6
  %84 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 0, i32 1
  %_59 = load i8, ptr %84, align 1
  %_58.not = icmp eq i8 %_59, 2
  %or.cond = select i1 %_51.not, i1 %_58.not, i1 false
  %85 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 0, i32 2
  %_66 = load i8, ptr %85, align 2
  %_65.not = icmp eq i8 %_66, 7
  %or.cond19 = select i1 %or.cond, i1 %_65.not, i1 false
  %86 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 0, i32 3
  %_73 = load i8, ptr %86, align 1
  %_72.not = icmp eq i8 %_73, 10
  %or.cond20 = select i1 %or.cond19, i1 %_72.not, i1 false
  br i1 %or.cond20, label %bb15.1, label %bb23

bb15.1:                                           ; preds = %bb15
  %87 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 1
  %_52.1 = load i8, ptr %87, align 4, !noundef !5
  %_51.not.1 = icmp eq i8 %_52.1, 25
  %88 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 1, i32 1
  %_59.1 = load i8, ptr %88, align 1
  %_58.not.1 = icmp eq i8 %_59.1, -64
  %or.cond21 = select i1 %_51.not.1, i1 %_58.not.1, i1 false
  %89 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 1, i32 2
  %_66.1 = load i8, ptr %89, align 2
  %_65.not.1 = icmp eq i8 %_66.1, 22
  %or.cond22 = select i1 %or.cond21, i1 %_65.not.1, i1 false
  %90 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 1, i32 3
  %_73.1 = load i8, ptr %90, align 1
  %_72.not.1 = icmp eq i8 %_73.1, -36
  %or.cond23 = select i1 %or.cond22, i1 %_72.not.1, i1 false
  br i1 %or.cond23, label %bb15.2, label %bb23

bb15.2:                                           ; preds = %bb15.1
  %91 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 2
  %_52.2 = load i8, ptr %91, align 8, !noundef !5
  %_51.not.2 = icmp eq i8 %_52.2, 35
  %92 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 2, i32 1
  %_59.2 = load i8, ptr %92, align 1
  %_58.not.2 = icmp eq i8 %_59.2, -111
  %or.cond24 = select i1 %_51.not.2, i1 %_58.not.2, i1 false
  %93 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 2, i32 2
  %_66.2 = load i8, ptr %93, align 2
  %_65.not.2 = icmp eq i8 %_66.2, -97
  %or.cond25 = select i1 %or.cond24, i1 %_65.not.2, i1 false
  %94 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 2, i32 3
  %_73.2 = load i8, ptr %94, align 1
  %_72.not.2 = icmp eq i8 %_73.2, -38
  %or.cond26 = select i1 %or.cond25, i1 %_72.not.2, i1 false
  br i1 %or.cond26, label %bb15.3, label %bb23

bb15.3:                                           ; preds = %bb15.2
  %95 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 3
  %_52.3 = load i8, ptr %95, align 4, !noundef !5
  %_51.not.3 = icmp eq i8 %_52.3, 0
  %96 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 3, i32 1
  %_59.3 = load i8, ptr %96, align 1
  %_58.not.3 = icmp eq i8 %_59.3, 27
  %or.cond27 = select i1 %_51.not.3, i1 %_58.not.3, i1 false
  %97 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 3, i32 2
  %_66.3 = load i8, ptr %97, align 2
  %_65.not.3 = icmp eq i8 %_66.3, 11
  %or.cond28 = select i1 %or.cond27, i1 %_65.not.3, i1 false
  %98 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 3, i32 3
  %_73.3 = load i8, ptr %98, align 1
  %_72.not.3 = icmp eq i8 %_73.3, 36
  %or.cond29 = select i1 %or.cond28, i1 %_72.not.3, i1 false
  br i1 %or.cond29, label %bb15.4, label %bb23

bb15.4:                                           ; preds = %bb15.3
  %99 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 4
  %_52.4 = load i8, ptr %99, align 16, !noundef !5
  %_51.not.4 = icmp eq i8 %_52.4, -45
  %100 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 4, i32 1
  %_59.4 = load i8, ptr %100, align 1
  %_58.not.4 = icmp eq i8 %_59.4, -95
  %or.cond30 = select i1 %_51.not.4, i1 %_58.not.4, i1 false
  %101 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 4, i32 2
  %_66.4 = load i8, ptr %101, align 2
  %_65.not.4 = icmp eq i8 %_66.4, 99
  %or.cond31 = select i1 %or.cond30, i1 %_65.not.4, i1 false
  %102 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 4, i32 3
  %_73.4 = load i8, ptr %102, align 1
  %_72.not.4 = icmp eq i8 %_73.4, -24
  %or.cond32 = select i1 %or.cond31, i1 %_72.not.4, i1 false
  br i1 %or.cond32, label %bb15.5, label %bb23

bb15.5:                                           ; preds = %bb15.4
  %103 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 5
  %_52.5 = load i8, ptr %103, align 4, !noundef !5
  %_51.not.5 = icmp eq i8 %_52.5, 62
  %104 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 5, i32 1
  %_59.5 = load i8, ptr %104, align 1
  %_58.not.5 = icmp eq i8 %_59.5, 30
  %or.cond33 = select i1 %_51.not.5, i1 %_58.not.5, i1 false
  %105 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 5, i32 2
  %_66.5 = load i8, ptr %105, align 2
  %_65.not.5 = icmp eq i8 %_66.5, 18
  %or.cond34 = select i1 %or.cond33, i1 %_65.not.5, i1 false
  %106 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 5, i32 3
  %_73.5 = load i8, ptr %106, align 1
  %_72.not.5 = icmp eq i8 %_73.5, 66
  %or.cond35 = select i1 %or.cond34, i1 %_72.not.5, i1 false
  br i1 %or.cond35, label %bb15.6, label %bb23

bb15.6:                                           ; preds = %bb15.5
  %107 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 6
  %_52.6 = load i8, ptr %107, align 8, !noundef !5
  %_51.not.6 = icmp eq i8 %_52.6, 80
  %108 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 6, i32 1
  %_59.6 = load i8, ptr %108, align 1
  %_58.not.6 = icmp eq i8 %_59.6, 41
  %or.cond36 = select i1 %_51.not.6, i1 %_58.not.6, i1 false
  %109 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 6, i32 2
  %_66.6 = load i8, ptr %109, align 2
  %_65.not.6 = icmp eq i8 %_66.6, -84
  %or.cond37 = select i1 %or.cond36, i1 %_65.not.6, i1 false
  %110 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 6, i32 3
  %_73.6 = load i8, ptr %110, align 1
  %_72.not.6 = icmp eq i8 %_73.6, -84
  %or.cond38 = select i1 %or.cond37, i1 %_72.not.6, i1 false
  br i1 %or.cond38, label %bb15.7, label %bb23

bb15.7:                                           ; preds = %bb15.6
  %111 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 7
  %_52.7 = load i8, ptr %111, align 4, !noundef !5
  %_51.not.7 = icmp eq i8 %_52.7, 21
  %112 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 7, i32 1
  %_59.7 = load i8, ptr %112, align 1
  %_58.not.7 = icmp eq i8 %_59.7, -96
  %or.cond39 = select i1 %_51.not.7, i1 %_58.not.7, i1 false
  %113 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 7, i32 2
  %_66.7 = load i8, ptr %113, align 2
  %_65.not.7 = icmp eq i8 %_66.7, 42
  %or.cond40 = select i1 %or.cond39, i1 %_65.not.7, i1 false
  %114 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 7, i32 3
  %_73.7 = load i8, ptr %114, align 1
  %_72.not.7 = icmp eq i8 %_73.7, -83
  %or.cond41 = select i1 %or.cond40, i1 %_72.not.7, i1 false
  br i1 %or.cond41, label %bb15.8, label %bb23

bb15.8:                                           ; preds = %bb15.7
  %115 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 8
  %_52.8 = load i8, ptr %115, align 16, !noundef !5
  %_51.not.8 = icmp eq i8 %_52.8, 120
  %116 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 8, i32 1
  %_59.8 = load i8, ptr %116, align 1
  %_58.not.8 = icmp eq i8 %_59.8, 110
  %or.cond42 = select i1 %_51.not.8, i1 %_58.not.8, i1 false
  %117 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 8, i32 2
  %_66.8 = load i8, ptr %117, align 2
  %_65.not.8 = icmp eq i8 %_66.8, 35
  %or.cond43 = select i1 %or.cond42, i1 %_65.not.8, i1 false
  %118 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 8, i32 3
  %_73.8 = load i8, ptr %118, align 1
  %_72.not.8 = icmp eq i8 %_73.8, -102
  %or.cond44 = select i1 %or.cond43, i1 %_72.not.8, i1 false
  br i1 %or.cond44, label %bb15.9, label %bb23

bb15.9:                                           ; preds = %bb15.8
  %119 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 9
  %_52.9 = load i8, ptr %119, align 4, !noundef !5
  %_51.not.9 = icmp eq i8 %_52.9, 2
  %120 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 9, i32 1
  %_59.9 = load i8, ptr %120, align 1
  %_58.not.9 = icmp eq i8 %_59.9, 1
  %or.cond45 = select i1 %_51.not.9, i1 %_58.not.9, i1 false
  %121 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 9, i32 2
  %_66.9 = load i8, ptr %121, align 2
  %_65.not.9 = icmp eq i8 %_66.9, 4
  %or.cond46 = select i1 %or.cond45, i1 %_65.not.9, i1 false
  %122 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 9, i32 3
  %_73.9 = load i8, ptr %122, align 1
  %_72.not.9 = icmp eq i8 %_73.9, 13
  %or.cond47 = select i1 %or.cond46, i1 %_72.not.9, i1 false
  br i1 %or.cond47, label %bb15.10, label %bb23

bb15.10:                                          ; preds = %bb15.9
  %123 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 10
  %_52.10 = load i8, ptr %123, align 8, !noundef !5
  %_51.not.10 = icmp eq i8 %_52.10, 69
  %124 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 10, i32 1
  %_59.10 = load i8, ptr %124, align 1
  %_58.not.10 = icmp eq i8 %_59.10, 1
  %or.cond48 = select i1 %_51.not.10, i1 %_58.not.10, i1 false
  %125 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 10, i32 2
  %_66.10 = load i8, ptr %125, align 2
  %_65.not.10 = icmp eq i8 %_66.10, 40
  %or.cond49 = select i1 %or.cond48, i1 %_65.not.10, i1 false
  %126 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 10, i32 3
  %_73.10 = load i8, ptr %126, align 1
  %_72.not.10 = icmp eq i8 %_73.10, 84
  %or.cond50 = select i1 %or.cond49, i1 %_72.not.10, i1 false
  br i1 %or.cond50, label %bb15.11, label %bb23

bb15.11:                                          ; preds = %bb15.10
  %127 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 11
  %_52.11 = load i8, ptr %127, align 4, !noundef !5
  %_51.not.11 = icmp eq i8 %_52.11, 30
  %128 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 11, i32 1
  %_59.11 = load i8, ptr %128, align 1
  %_58.not.11 = icmp eq i8 %_59.11, 50
  %or.cond51 = select i1 %_51.not.11, i1 %_58.not.11, i1 false
  %129 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 11, i32 2
  %_66.11 = load i8, ptr %129, align 2
  %_65.not.11 = icmp eq i8 %_66.11, 1
  %or.cond52 = select i1 %or.cond51, i1 %_65.not.11, i1 false
  %130 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 11, i32 3
  %_73.11 = load i8, ptr %130, align 1
  %_72.not.11 = icmp eq i8 %_73.11, 74
  %or.cond53 = select i1 %or.cond52, i1 %_72.not.11, i1 false
  br i1 %or.cond53, label %bb15.12, label %bb23

bb15.12:                                          ; preds = %bb15.11
  %131 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 12
  %_52.12 = load i8, ptr %131, align 16, !noundef !5
  %_51.not.12 = icmp eq i8 %_52.12, 10
  %132 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 12, i32 1
  %_59.12 = load i8, ptr %132, align 1
  %_58.not.12 = icmp eq i8 %_59.12, 14
  %or.cond54 = select i1 %_51.not.12, i1 %_58.not.12, i1 false
  %133 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 12, i32 2
  %_66.12 = load i8, ptr %133, align 2
  %_65.not.12 = icmp eq i8 %_66.12, 9
  %or.cond55 = select i1 %or.cond54, i1 %_65.not.12, i1 false
  %134 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 12, i32 3
  %_73.12 = load i8, ptr %134, align 1
  %_72.not.12 = icmp eq i8 %_73.12, 18
  %or.cond56 = select i1 %or.cond55, i1 %_72.not.12, i1 false
  br i1 %or.cond56, label %bb15.13, label %bb23

bb15.13:                                          ; preds = %bb15.12
  %135 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 13
  %_52.13 = load i8, ptr %135, align 4, !noundef !5
  %_51.not.13 = icmp eq i8 %_52.13, 38
  %136 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 13, i32 1
  %_59.13 = load i8, ptr %136, align 1
  %_58.not.13 = icmp eq i8 %_59.13, 118
  %or.cond57 = select i1 %_51.not.13, i1 %_58.not.13, i1 false
  %137 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 13, i32 2
  %_66.13 = load i8, ptr %137, align 2
  %_65.not.13 = icmp eq i8 %_66.13, 41
  %or.cond58 = select i1 %or.cond57, i1 %_65.not.13, i1 false
  %138 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 13, i32 3
  %_73.13 = load i8, ptr %138, align 1
  %_72.not.13 = icmp eq i8 %_73.13, -65
  %or.cond59 = select i1 %or.cond58, i1 %_72.not.13, i1 false
  br i1 %or.cond59, label %bb15.14, label %bb23

bb15.14:                                          ; preds = %bb15.13
  %139 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 14
  %_52.14 = load i8, ptr %139, align 8, !noundef !5
  %_51.not.14 = icmp eq i8 %_52.14, 6
  %140 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 14, i32 1
  %_59.14 = load i8, ptr %140, align 1
  %_58.not.14 = icmp eq i8 %_59.14, 13
  %or.cond60 = select i1 %_51.not.14, i1 %_58.not.14, i1 false
  %141 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 14, i32 2
  %_66.14 = load i8, ptr %141, align 2
  %_65.not.14 = icmp eq i8 %_66.14, 10
  %or.cond61 = select i1 %or.cond60, i1 %_65.not.14, i1 false
  %142 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 14, i32 3
  %_73.14 = load i8, ptr %142, align 1
  %_72.not.14 = icmp eq i8 %_73.14, 27
  %or.cond62 = select i1 %or.cond61, i1 %_72.not.14, i1 false
  br i1 %or.cond62, label %bb15.15, label %bb23

bb15.15:                                          ; preds = %bb15.14
  %143 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 15
  %_52.15 = load i8, ptr %143, align 4, !noundef !5
  %_51.not.15 = icmp eq i8 %_52.15, 32
  %144 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 15, i32 1
  %_59.15 = load i8, ptr %144, align 1
  %_58.not.15 = icmp eq i8 %_59.15, 30
  %or.cond63 = select i1 %_51.not.15, i1 %_58.not.15, i1 false
  %145 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 15, i32 2
  %_66.15 = load i8, ptr %145, align 2
  %_65.not.15 = icmp eq i8 %_66.15, 42
  %or.cond64 = select i1 %or.cond63, i1 %_65.not.15, i1 false
  %146 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 15, i32 3
  %_73.15 = load i8, ptr %146, align 1
  %_72.not.15 = icmp eq i8 %_73.15, 63
  %or.cond65 = select i1 %or.cond64, i1 %_72.not.15, i1 false
  br i1 %or.cond65, label %bb2.16, label %bb23

bb2.16:                                           ; preds = %bb15.15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pix)
  br label %bb25

bb23:                                             ; preds = %bb15.15, %bb15.14, %bb15.13, %bb15.12, %bb15.11, %bb15.10, %bb15.9, %bb15.8, %bb15.7, %bb15.6, %bb15.5, %bb15.4, %bb15.3, %bb15.2, %bb15.1, %bb15
  %iter.sroa.0.0.lcssa17 = phi i64 [ 0, %bb15 ], [ 1, %bb15.1 ], [ 2, %bb15.2 ], [ 3, %bb15.3 ], [ 4, %bb15.4 ], [ 5, %bb15.5 ], [ 6, %bb15.6 ], [ 7, %bb15.7 ], [ 8, %bb15.8 ], [ 9, %bb15.9 ], [ 10, %bb15.10 ], [ 11, %bb15.11 ], [ 12, %bb15.12 ], [ 13, %bb15.13 ], [ 14, %bb15.14 ], [ 15, %bb15.15 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pix)
  br label %bb25

bb25:                                             ; preds = %bb23, %bb2.16
  %iter.sroa.0.018 = phi i64 [ 16, %bb2.16 ], [ %iter.sroa.0.0.lcssa17, %bb23 ]
  %147 = icmp ugt i64 %iter.sroa.0.018, 15
  ret i1 %147
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @run_test_5() unnamed_addr #3 {
bb14.preheader.i.i:
  %pix = alloca [16 x %"src::lib::CpPixelT"], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %pix)
  store <16 x i8> <i8 -58, i8 100, i8 47, i8 -18, i8 51, i8 -73, i8 -74, i8 -3, i8 102, i8 -68, i8 34, i8 39, i8 44, i8 60, i8 9, i8 42>, ptr %pix, align 16
  %0 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 4
  store <16 x i8> <i8 -64, i8 68, i8 12, i8 -57, i8 14, i8 -115, i8 109, i8 -44, i8 46, i8 75, i8 63, i8 -96, i8 -93, i8 77, i8 67, i8 -14>, ptr %0, align 16
  %1 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 8
  store <16 x i8> <i8 -13, i8 124, i8 -102, i8 -1, i8 72, i8 -31, i8 -128, i8 -17, i8 -19, i8 -99, i8 43, i8 85, i8 -86, i8 64, i8 -38, i8 -123>, ptr %1, align 16
  %2 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 12
  store <16 x i8> <i8 -109, i8 25, i8 16, i8 112, i8 46, i8 80, i8 85, i8 68, i8 54, i8 81, i8 21, i8 13, i8 19, i8 -2, i8 5, i8 43>, ptr %2, align 16
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %bb14.preheader.i.i
  %index = phi i64 [ 0, %bb14.preheader.i.i ], [ %index.next, %vector.body ]
  %3 = or i64 %index, 1
  %4 = or i64 %index, 2
  %5 = or i64 %index, 3
  %6 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %index
  %7 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %3
  %8 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %4
  %9 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %5
  %10 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %index, i32 3
  %11 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %3, i32 3
  %12 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %4, i32 3
  %13 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %5, i32 3
  %14 = load i8, ptr %10, align 1, !noalias !26, !noundef !5
  %15 = load i8, ptr %11, align 1, !noalias !26, !noundef !5
  %16 = load i8, ptr %12, align 1, !noalias !26, !noundef !5
  %17 = load i8, ptr %13, align 1, !noalias !26, !noundef !5
  %18 = insertelement <4 x i8> poison, i8 %14, i64 0
  %19 = insertelement <4 x i8> %18, i8 %15, i64 1
  %20 = insertelement <4 x i8> %19, i8 %16, i64 2
  %21 = insertelement <4 x i8> %20, i8 %17, i64 3
  %22 = uitofp <4 x i8> %21 to <4 x float>
  %23 = fdiv <4 x float> %22, splat (float 2.550000e+02)
  %24 = load i8, ptr %6, align 16, !noalias !26, !noundef !5
  %25 = load i8, ptr %7, align 4, !noalias !26, !noundef !5
  %26 = load i8, ptr %8, align 8, !noalias !26, !noundef !5
  %27 = load i8, ptr %9, align 4, !noalias !26, !noundef !5
  %28 = insertelement <4 x i8> poison, i8 %24, i64 0
  %29 = insertelement <4 x i8> %28, i8 %25, i64 1
  %30 = insertelement <4 x i8> %29, i8 %26, i64 2
  %31 = insertelement <4 x i8> %30, i8 %27, i64 3
  %32 = uitofp <4 x i8> %31 to <4 x float>
  %33 = fdiv <4 x float> %32, splat (float 2.550000e+02)
  %34 = fmul <4 x float> %23, %33
  %35 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %index, i32 1
  %36 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %3, i32 1
  %37 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %4, i32 1
  %38 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %5, i32 1
  %39 = load i8, ptr %35, align 1, !noalias !26, !noundef !5
  %40 = load i8, ptr %36, align 1, !noalias !26, !noundef !5
  %41 = load i8, ptr %37, align 1, !noalias !26, !noundef !5
  %42 = load i8, ptr %38, align 1, !noalias !26, !noundef !5
  %43 = insertelement <4 x i8> poison, i8 %39, i64 0
  %44 = insertelement <4 x i8> %43, i8 %40, i64 1
  %45 = insertelement <4 x i8> %44, i8 %41, i64 2
  %46 = insertelement <4 x i8> %45, i8 %42, i64 3
  %47 = uitofp <4 x i8> %46 to <4 x float>
  %48 = fdiv <4 x float> %47, splat (float 2.550000e+02)
  %49 = fmul <4 x float> %23, %48
  %50 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %index, i32 2
  %51 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %3, i32 2
  %52 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %4, i32 2
  %53 = getelementptr inbounds %"src::lib::CpPixelT", ptr %pix, i64 %5, i32 2
  %54 = load i8, ptr %50, align 2, !noalias !26, !noundef !5
  %55 = load i8, ptr %51, align 2, !noalias !26, !noundef !5
  %56 = load i8, ptr %52, align 2, !noalias !26, !noundef !5
  %57 = load i8, ptr %53, align 2, !noalias !26, !noundef !5
  %58 = insertelement <4 x i8> poison, i8 %54, i64 0
  %59 = insertelement <4 x i8> %58, i8 %55, i64 1
  %60 = insertelement <4 x i8> %59, i8 %56, i64 2
  %61 = insertelement <4 x i8> %60, i8 %57, i64 3
  %62 = uitofp <4 x i8> %61 to <4 x float>
  %63 = fdiv <4 x float> %62, splat (float 2.550000e+02)
  %64 = fmul <4 x float> %23, %63
  %65 = fmul <4 x float> %34, splat (float 2.550000e+02)
  %66 = tail call <4 x i8> @llvm.fptoui.sat.v4i8.v4f32(<4 x float> %65)
  %67 = extractelement <4 x i8> %66, i64 0
  store i8 %67, ptr %6, align 16, !noalias !26
  %68 = extractelement <4 x i8> %66, i64 1
  store i8 %68, ptr %7, align 4, !noalias !26
  %69 = extractelement <4 x i8> %66, i64 2
  store i8 %69, ptr %8, align 8, !noalias !26
  %70 = extractelement <4 x i8> %66, i64 3
  store i8 %70, ptr %9, align 4, !noalias !26
  %71 = fmul <4 x float> %49, splat (float 2.550000e+02)
  %72 = tail call <4 x i8> @llvm.fptoui.sat.v4i8.v4f32(<4 x float> %71)
  %73 = extractelement <4 x i8> %72, i64 0
  store i8 %73, ptr %35, align 1, !noalias !26
  %74 = extractelement <4 x i8> %72, i64 1
  store i8 %74, ptr %36, align 1, !noalias !26
  %75 = extractelement <4 x i8> %72, i64 2
  store i8 %75, ptr %37, align 1, !noalias !26
  %76 = extractelement <4 x i8> %72, i64 3
  store i8 %76, ptr %38, align 1, !noalias !26
  %77 = fmul <4 x float> %64, splat (float 2.550000e+02)
  %78 = tail call <4 x i8> @llvm.fptoui.sat.v4i8.v4f32(<4 x float> %77)
  %79 = extractelement <4 x i8> %78, i64 0
  store i8 %79, ptr %50, align 2, !noalias !26
  %80 = extractelement <4 x i8> %78, i64 1
  store i8 %80, ptr %51, align 2, !noalias !26
  %81 = extractelement <4 x i8> %78, i64 2
  store i8 %81, ptr %52, align 2, !noalias !26
  %82 = extractelement <4 x i8> %78, i64 3
  store i8 %82, ptr %53, align 2, !noalias !26
  %index.next = add nuw i64 %index, 4
  %83 = icmp eq i64 %index.next, 16
  br i1 %83, label %bb15, label %vector.body, !llvm.loop !29

bb15:                                             ; preds = %vector.body
  %_52 = load i8, ptr %pix, align 16, !noundef !5
  %_51.not = icmp eq i8 %_52, -72
  %84 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 0, i32 1
  %_59 = load i8, ptr %84, align 1
  %_58.not = icmp eq i8 %_59, 93
  %or.cond = select i1 %_51.not, i1 %_58.not, i1 false
  %85 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 0, i32 2
  %_66 = load i8, ptr %85, align 2
  %_65.not = icmp eq i8 %_66, 43
  %or.cond19 = select i1 %or.cond, i1 %_65.not, i1 false
  %86 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 0, i32 3
  %_73 = load i8, ptr %86, align 1
  %_72.not = icmp eq i8 %_73, -18
  %or.cond20 = select i1 %or.cond19, i1 %_72.not, i1 false
  br i1 %or.cond20, label %bb15.1, label %bb23

bb15.1:                                           ; preds = %bb15
  %87 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 1
  %_52.1 = load i8, ptr %87, align 4, !noundef !5
  %_51.not.1 = icmp eq i8 %_52.1, 50
  %88 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 1, i32 1
  %_59.1 = load i8, ptr %88, align 1
  %_58.not.1 = icmp eq i8 %_59.1, -75
  %or.cond21 = select i1 %_51.not.1, i1 %_58.not.1, i1 false
  %89 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 1, i32 2
  %_66.1 = load i8, ptr %89, align 2
  %_65.not.1 = icmp eq i8 %_66.1, -76
  %or.cond22 = select i1 %or.cond21, i1 %_65.not.1, i1 false
  %90 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 1, i32 3
  %_73.1 = load i8, ptr %90, align 1
  %_72.not.1 = icmp eq i8 %_73.1, -3
  %or.cond23 = select i1 %or.cond22, i1 %_72.not.1, i1 false
  br i1 %or.cond23, label %bb15.2, label %bb23

bb15.2:                                           ; preds = %bb15.1
  %91 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 2
  %_52.2 = load i8, ptr %91, align 8, !noundef !5
  %_51.not.2 = icmp eq i8 %_52.2, 15
  %92 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 2, i32 1
  %_59.2 = load i8, ptr %92, align 1
  %_58.not.2 = icmp eq i8 %_59.2, 28
  %or.cond24 = select i1 %_51.not.2, i1 %_58.not.2, i1 false
  %93 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 2, i32 2
  %_66.2 = load i8, ptr %93, align 2
  %_65.not.2 = icmp eq i8 %_66.2, 5
  %or.cond25 = select i1 %or.cond24, i1 %_65.not.2, i1 false
  %94 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 2, i32 3
  %_73.2 = load i8, ptr %94, align 1
  %_72.not.2 = icmp eq i8 %_73.2, 39
  %or.cond26 = select i1 %or.cond25, i1 %_72.not.2, i1 false
  br i1 %or.cond26, label %bb15.3, label %bb23

bb15.3:                                           ; preds = %bb15.2
  %95 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 3
  %_52.3 = load i8, ptr %95, align 4, !noundef !5
  %_51.not.3 = icmp eq i8 %_52.3, 7
  %96 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 3, i32 1
  %_59.3 = load i8, ptr %96, align 1
  %_58.not.3 = icmp eq i8 %_59.3, 9
  %or.cond27 = select i1 %_51.not.3, i1 %_58.not.3, i1 false
  %97 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 3, i32 2
  %_66.3 = load i8, ptr %97, align 2
  %_65.not.3 = icmp eq i8 %_66.3, 1
  %or.cond28 = select i1 %or.cond27, i1 %_65.not.3, i1 false
  %98 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 3, i32 3
  %_73.3 = load i8, ptr %98, align 1
  %_72.not.3 = icmp eq i8 %_73.3, 42
  %or.cond29 = select i1 %or.cond28, i1 %_72.not.3, i1 false
  br i1 %or.cond29, label %bb15.4, label %bb23

bb15.4:                                           ; preds = %bb15.3
  %99 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 4
  %_52.4 = load i8, ptr %99, align 16, !noundef !5
  %_51.not.4 = icmp eq i8 %_52.4, -107
  %100 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 4, i32 1
  %_59.4 = load i8, ptr %100, align 1
  %_58.not.4 = icmp eq i8 %_59.4, 53
  %or.cond30 = select i1 %_51.not.4, i1 %_58.not.4, i1 false
  %101 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 4, i32 2
  %_66.4 = load i8, ptr %101, align 2
  %_65.not.4 = icmp eq i8 %_66.4, 9
  %or.cond31 = select i1 %or.cond30, i1 %_65.not.4, i1 false
  %102 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 4, i32 3
  %_73.4 = load i8, ptr %102, align 1
  %_72.not.4 = icmp eq i8 %_73.4, -57
  %or.cond32 = select i1 %or.cond31, i1 %_72.not.4, i1 false
  br i1 %or.cond32, label %bb15.5, label %bb23

bb15.5:                                           ; preds = %bb15.4
  %103 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 5
  %_52.5 = load i8, ptr %103, align 4, !noundef !5
  %_51.not.5 = icmp eq i8 %_52.5, 11
  %104 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 5, i32 1
  %_59.5 = load i8, ptr %104, align 1
  %_58.not.5 = icmp eq i8 %_59.5, 117
  %or.cond33 = select i1 %_51.not.5, i1 %_58.not.5, i1 false
  %105 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 5, i32 2
  %_66.5 = load i8, ptr %105, align 2
  %_65.not.5 = icmp eq i8 %_66.5, 90
  %or.cond34 = select i1 %or.cond33, i1 %_65.not.5, i1 false
  %106 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 5, i32 3
  %_73.5 = load i8, ptr %106, align 1
  %_72.not.5 = icmp eq i8 %_73.5, -44
  %or.cond35 = select i1 %or.cond34, i1 %_72.not.5, i1 false
  br i1 %or.cond35, label %bb15.6, label %bb23

bb15.6:                                           ; preds = %bb15.5
  %107 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 6
  %_52.6 = load i8, ptr %107, align 8, !noundef !5
  %_51.not.6 = icmp eq i8 %_52.6, 28
  %108 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 6, i32 1
  %_59.6 = load i8, ptr %108, align 1
  %_58.not.6 = icmp eq i8 %_59.6, 47
  %or.cond36 = select i1 %_51.not.6, i1 %_58.not.6, i1 false
  %109 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 6, i32 2
  %_66.6 = load i8, ptr %109, align 2
  %_65.not.6 = icmp eq i8 %_66.6, 39
  %or.cond37 = select i1 %or.cond36, i1 %_65.not.6, i1 false
  %110 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 6, i32 3
  %_73.6 = load i8, ptr %110, align 1
  %_72.not.6 = icmp eq i8 %_73.6, -96
  %or.cond38 = select i1 %or.cond37, i1 %_72.not.6, i1 false
  br i1 %or.cond38, label %bb15.7, label %bb23

bb15.7:                                           ; preds = %bb15.6
  %111 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 7
  %_52.7 = load i8, ptr %111, align 4, !noundef !5
  %_51.not.7 = icmp eq i8 %_52.7, -102
  %112 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 7, i32 1
  %_59.7 = load i8, ptr %112, align 1
  %_58.not.7 = icmp eq i8 %_59.7, 73
  %or.cond39 = select i1 %_51.not.7, i1 %_58.not.7, i1 false
  %113 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 7, i32 2
  %_66.7 = load i8, ptr %113, align 2
  %_65.not.7 = icmp eq i8 %_66.7, 63
  %or.cond40 = select i1 %or.cond39, i1 %_65.not.7, i1 false
  %114 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 7, i32 3
  %_73.7 = load i8, ptr %114, align 1
  %_72.not.7 = icmp eq i8 %_73.7, -14
  %or.cond41 = select i1 %or.cond40, i1 %_72.not.7, i1 false
  br i1 %or.cond41, label %bb15.8, label %bb23

bb15.8:                                           ; preds = %bb15.7
  %115 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 8
  %_52.8 = load i8, ptr %115, align 16, !noundef !5
  %_51.not.8 = icmp eq i8 %_52.8, -13
  %116 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 8, i32 1
  %_59.8 = load i8, ptr %116, align 1
  %_58.not.8 = icmp eq i8 %_59.8, 124
  %or.cond42 = select i1 %_51.not.8, i1 %_58.not.8, i1 false
  %117 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 8, i32 2
  %_66.8 = load i8, ptr %117, align 2
  %_65.not.8 = icmp eq i8 %_66.8, -102
  %or.cond43 = select i1 %or.cond42, i1 %_65.not.8, i1 false
  %118 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 8, i32 3
  %_73.8 = load i8, ptr %118, align 1
  %_72.not.8 = icmp eq i8 %_73.8, -1
  %or.cond44 = select i1 %or.cond43, i1 %_72.not.8, i1 false
  br i1 %or.cond44, label %bb15.9, label %bb23

bb15.9:                                           ; preds = %bb15.8
  %119 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 9
  %_52.9 = load i8, ptr %119, align 4, !noundef !5
  %_51.not.9 = icmp eq i8 %_52.9, 67
  %120 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 9, i32 1
  %_59.9 = load i8, ptr %120, align 1
  %_58.not.9 = icmp eq i8 %_59.9, -46
  %or.cond45 = select i1 %_51.not.9, i1 %_58.not.9, i1 false
  %121 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 9, i32 2
  %_66.9 = load i8, ptr %121, align 2
  %_65.not.9 = icmp eq i8 %_66.9, 119
  %or.cond46 = select i1 %or.cond45, i1 %_65.not.9, i1 false
  %122 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 9, i32 3
  %_73.9 = load i8, ptr %122, align 1
  %_72.not.9 = icmp eq i8 %_73.9, -17
  %or.cond47 = select i1 %or.cond46, i1 %_72.not.9, i1 false
  br i1 %or.cond47, label %bb15.10, label %bb23

bb15.10:                                          ; preds = %bb15.9
  %123 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 10
  %_52.10 = load i8, ptr %123, align 8, !noundef !5
  %_51.not.10 = icmp eq i8 %_52.10, 79
  %124 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 10, i32 1
  %_59.10 = load i8, ptr %124, align 1
  %_58.not.10 = icmp eq i8 %_59.10, 52
  %or.cond48 = select i1 %_51.not.10, i1 %_58.not.10, i1 false
  %125 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 10, i32 2
  %_66.10 = load i8, ptr %125, align 2
  %_65.not.10 = icmp eq i8 %_66.10, 14
  %or.cond49 = select i1 %or.cond48, i1 %_65.not.10, i1 false
  %126 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 10, i32 3
  %_73.10 = load i8, ptr %126, align 1
  %_72.not.10 = icmp eq i8 %_73.10, 85
  %or.cond50 = select i1 %or.cond49, i1 %_72.not.10, i1 false
  br i1 %or.cond50, label %bb15.11, label %bb23

bb15.11:                                          ; preds = %bb15.10
  %127 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 11
  %_52.11 = load i8, ptr %127, align 4, !noundef !5
  %_51.not.11 = icmp eq i8 %_52.11, 88
  %128 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 11, i32 1
  %_59.11 = load i8, ptr %128, align 1
  %_58.not.11 = icmp eq i8 %_59.11, 33
  %or.cond51 = select i1 %_51.not.11, i1 %_58.not.11, i1 false
  %129 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 11, i32 2
  %_66.11 = load i8, ptr %129, align 2
  %_65.not.11 = icmp eq i8 %_66.11, 113
  %or.cond52 = select i1 %or.cond51, i1 %_65.not.11, i1 false
  %130 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 11, i32 3
  %_73.11 = load i8, ptr %130, align 1
  %_72.not.11 = icmp eq i8 %_73.11, -123
  %or.cond53 = select i1 %or.cond52, i1 %_72.not.11, i1 false
  br i1 %or.cond53, label %bb15.12, label %bb23

bb15.12:                                          ; preds = %bb15.11
  %131 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 12
  %_52.12 = load i8, ptr %131, align 16, !noundef !5
  %_51.not.12 = icmp eq i8 %_52.12, 64
  %132 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 12, i32 1
  %_59.12 = load i8, ptr %132, align 1
  %_58.not.12 = icmp eq i8 %_59.12, 10
  %or.cond54 = select i1 %_51.not.12, i1 %_58.not.12, i1 false
  %133 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 12, i32 2
  %_66.12 = load i8, ptr %133, align 2
  %_65.not.12 = icmp eq i8 %_66.12, 7
  %or.cond55 = select i1 %or.cond54, i1 %_65.not.12, i1 false
  %134 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 12, i32 3
  %_73.12 = load i8, ptr %134, align 1
  %_72.not.12 = icmp eq i8 %_73.12, 112
  %or.cond56 = select i1 %or.cond55, i1 %_72.not.12, i1 false
  br i1 %or.cond56, label %bb15.13, label %bb23

bb15.13:                                          ; preds = %bb15.12
  %135 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 13
  %_52.13 = load i8, ptr %135, align 4, !noundef !5
  %_51.not.13 = icmp eq i8 %_52.13, 12
  %136 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 13, i32 1
  %_59.13 = load i8, ptr %136, align 1
  %_58.not.13 = icmp eq i8 %_59.13, 21
  %or.cond57 = select i1 %_51.not.13, i1 %_58.not.13, i1 false
  %137 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 13, i32 2
  %_66.13 = load i8, ptr %137, align 2
  %_65.not.13 = icmp eq i8 %_66.13, 22
  %or.cond58 = select i1 %or.cond57, i1 %_65.not.13, i1 false
  %138 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 13, i32 3
  %_73.13 = load i8, ptr %138, align 1
  %_72.not.13 = icmp eq i8 %_73.13, 68
  %or.cond59 = select i1 %or.cond58, i1 %_72.not.13, i1 false
  br i1 %or.cond59, label %bb15.14, label %bb23

bb15.14:                                          ; preds = %bb15.13
  %139 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 14
  %_52.14 = load i8, ptr %139, align 8, !noundef !5
  %_51.not.14 = icmp eq i8 %_52.14, 2
  %140 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 14, i32 1
  %_59.14 = load i8, ptr %140, align 1
  %_58.not.14 = icmp eq i8 %_59.14, 4
  %or.cond60 = select i1 %_51.not.14, i1 %_58.not.14, i1 false
  %141 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 14, i32 2
  %_66.14 = load i8, ptr %141, align 2
  %_65.not.14 = icmp eq i8 %_66.14, 1
  %or.cond61 = select i1 %or.cond60, i1 %_65.not.14, i1 false
  %142 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 14, i32 3
  %_73.14 = load i8, ptr %142, align 1
  %_72.not.14 = icmp eq i8 %_73.14, 13
  %or.cond62 = select i1 %or.cond61, i1 %_72.not.14, i1 false
  br i1 %or.cond62, label %bb15.15, label %bb23

bb15.15:                                          ; preds = %bb15.14
  %143 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 15
  %_52.15 = load i8, ptr %143, align 4, !noundef !5
  %_51.not.15 = icmp eq i8 %_52.15, 3
  %144 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 15, i32 1
  %_59.15 = load i8, ptr %144, align 1
  %_58.not.15 = icmp eq i8 %_59.15, 42
  %or.cond63 = select i1 %_51.not.15, i1 %_58.not.15, i1 false
  %145 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 15, i32 2
  %_66.15 = load i8, ptr %145, align 2
  %_65.not.15 = icmp eq i8 %_66.15, 0
  %or.cond64 = select i1 %or.cond63, i1 %_65.not.15, i1 false
  %146 = getelementptr inbounds [16 x %"src::lib::CpPixelT"], ptr %pix, i64 0, i64 15, i32 3
  %_73.15 = load i8, ptr %146, align 1
  %_72.not.15 = icmp eq i8 %_73.15, 43
  %or.cond65 = select i1 %or.cond64, i1 %_72.not.15, i1 false
  br i1 %or.cond65, label %bb2.16, label %bb23

bb2.16:                                           ; preds = %bb15.15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pix)
  br label %bb25

bb23:                                             ; preds = %bb15.15, %bb15.14, %bb15.13, %bb15.12, %bb15.11, %bb15.10, %bb15.9, %bb15.8, %bb15.7, %bb15.6, %bb15.5, %bb15.4, %bb15.3, %bb15.2, %bb15.1, %bb15
  %iter.sroa.0.0.lcssa17 = phi i64 [ 0, %bb15 ], [ 1, %bb15.1 ], [ 2, %bb15.2 ], [ 3, %bb15.3 ], [ 4, %bb15.4 ], [ 5, %bb15.5 ], [ 6, %bb15.6 ], [ 7, %bb15.7 ], [ 8, %bb15.8 ], [ 9, %bb15.9 ], [ 10, %bb15.10 ], [ 11, %bb15.11 ], [ 12, %bb15.12 ], [ 13, %bb15.13 ], [ 14, %bb15.14 ], [ 15, %bb15.15 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pix)
  br label %bb25

bb25:                                             ; preds = %bb23, %bb2.16
  %iter.sroa.0.018 = phi i64 [ 16, %bb2.16 ], [ %iter.sroa.0.0.lcssa17, %bb23 ]
  %147 = icmp ugt i64 %iter.sroa.0.018, 15
  ret i1 %147
}

attributes #0 = { nofree nosync nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!3}
!3 = distinct !{!3, !4, !"_ZN15premultiply_lib3src3lib11premultiply17h859318f2041388f7E: %img"}
!4 = distinct !{!4, !"_ZN15premultiply_lib3src3lib11premultiply17h859318f2041388f7E"}
!5 = !{}
!6 = distinct !{!6, !7, !8}
!7 = !{!"llvm.loop.isvectorized", i32 1}
!8 = !{!"llvm.loop.unroll.runtime.disable"}
!9 = distinct !{!9, !8, !7}
!10 = !{!11}
!11 = distinct !{!11, !12, !"_ZN15premultiply_lib3src3lib11premultiply17h859318f2041388f7E: %img"}
!12 = distinct !{!12, !"_ZN15premultiply_lib3src3lib11premultiply17h859318f2041388f7E"}
!13 = distinct !{!13, !7, !8}
!14 = !{!15}
!15 = distinct !{!15, !16, !"_ZN15premultiply_lib3src3lib11premultiply17h859318f2041388f7E: %img"}
!16 = distinct !{!16, !"_ZN15premultiply_lib3src3lib11premultiply17h859318f2041388f7E"}
!17 = distinct !{!17, !7, !8}
!18 = !{!19}
!19 = distinct !{!19, !20, !"_ZN15premultiply_lib3src3lib11premultiply17h859318f2041388f7E: %img"}
!20 = distinct !{!20, !"_ZN15premultiply_lib3src3lib11premultiply17h859318f2041388f7E"}
!21 = distinct !{!21, !7, !8}
!22 = !{!23}
!23 = distinct !{!23, !24, !"_ZN15premultiply_lib3src3lib11premultiply17h859318f2041388f7E: %img"}
!24 = distinct !{!24, !"_ZN15premultiply_lib3src3lib11premultiply17h859318f2041388f7E"}
!25 = distinct !{!25, !7, !8}
!26 = !{!27}
!27 = distinct !{!27, !28, !"_ZN15premultiply_lib3src3lib11premultiply17h859318f2041388f7E: %img"}
!28 = distinct !{!28, !"_ZN15premultiply_lib3src3lib11premultiply17h859318f2041388f7E"}
!29 = distinct !{!29, !7, !8}
