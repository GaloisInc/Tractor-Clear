; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@run_test_2 = unnamed_addr alias i1 (), ptr @run_test_1

; Function Attrs: nofree nosync nounwind nonlazybind uwtable
define void @gaussian_kernel(ptr noundef %dest, i32 noundef %size, float noundef %radius) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %len = sext i32 %size to i64
  %hsize.neg.i = sdiv i32 %size, -2
  %rs.i = fdiv float 0x3FF99999A0000000, %radius
  %0 = getelementptr inbounds float, ptr %dest, i64 %len
  %1 = icmp eq i32 %size, 0
  br i1 %1, label %_ZN19gaussian_kernel_lib3src3lib15gaussian_kernel17h72b3a43daa83dbb5E.exit, label %bb3.i

bb5.i:                                            ; preds = %bb3.i
  %_36.i = fcmp ogt float %6, 0.000000e+00
  br i1 %_36.i, label %bb12.i.preheader, label %_ZN19gaussian_kernel_lib3src3lib15gaussian_kernel17h72b3a43daa83dbb5E.exit

bb3.i:                                            ; preds = %bb3.i, %start
  %sum.022.i = phi float [ %6, %bb3.i ], [ 0.000000e+00, %start ]
  %iter.sroa.10.021.i = phi i64 [ %2, %bb3.i ], [ %len, %start ]
  %iter.sroa.7.020.i = phi ptr [ %3, %bb3.i ], [ %dest, %start ]
  %iter.sroa.0.019.i = phi i32 [ %_9.0.i.i, %bb3.i ], [ 0, %start ]
  %2 = add nsw i64 %iter.sroa.10.021.i, -1
  %3 = getelementptr inbounds float, ptr %iter.sroa.7.020.i, i64 1
  %_9.0.i.i = add i32 %iter.sroa.0.019.i, 1
  %r.i = add i32 %iter.sroa.0.019.i, %hsize.neg.i
  %_26.i = sitofp i32 %r.i to float
  %x.i = fmul float %rs.i, %_26.i
  %self4.i = fmul float %x.i, %x.i
  %4 = tail call float @llvm.exp.f32(float %self4.i)
  %_28.i = fdiv float 1.000000e+00, %4
  %5 = fadd float %_28.i, 0xBF69D05BE0000000
  %_32.i = fcmp ogt float %5, 0.000000e+00
  %..i = select i1 %_32.i, float %5, float 0.000000e+00
  store float %..i, ptr %iter.sroa.7.020.i, align 4, !alias.scope !2
  %6 = fadd float %sum.022.i, %..i
  %7 = icmp eq i64 %2, 0
  %_10.i.i.i.i = icmp eq ptr %3, %0
  %or.cond.i = select i1 %7, i1 true, i1 %_10.i.i.i.i
  br i1 %or.cond.i, label %bb5.i, label %bb3.i

bb12.i.preheader:                                 ; preds = %bb5.i
  %isum.i = fdiv float 1.000000e+00, %6
  %8 = add nsw i64 %len, 4611686018427387903
  %9 = and i64 %8, 4611686018427387903
  %10 = add nsw i64 %len, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %9, i64 %10)
  %11 = add nuw nsw i64 %umin, 1
  %min.iters.check = icmp ult i64 %umin, 7
  br i1 %min.iters.check, label %bb12.i.preheader7, label %vector.ph

vector.ph:                                        ; preds = %bb12.i.preheader
  %n.vec = and i64 %11, -8
  %ind.end = sub i64 %len, %n.vec
  %12 = shl i64 %n.vec, 2
  %ind.end1 = getelementptr i8, ptr %dest, i64 %12
  %broadcast.splatinsert = insertelement <4 x float> poison, float %isum.i, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert5 = insertelement <4 x float> poison, float %isum.i, i64 0
  %broadcast.splat6 = shufflevector <4 x float> %broadcast.splatinsert5, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %13 = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %dest, i64 %13
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !alias.scope !2
  %14 = getelementptr float, ptr %next.gep, i64 4
  %wide.load4 = load <4 x float>, ptr %14, align 4, !alias.scope !2
  %15 = fmul <4 x float> %broadcast.splat, %wide.load
  %16 = fmul <4 x float> %broadcast.splat6, %wide.load4
  store <4 x float> %15, ptr %next.gep, align 4, !alias.scope !2
  store <4 x float> %16, ptr %14, align 4, !alias.scope !2
  %index.next = add nuw i64 %index, 8
  %17 = icmp eq i64 %index.next, %n.vec
  br i1 %17, label %middle.block, label %vector.body, !llvm.loop !5

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %11, %n.vec
  br i1 %cmp.n, label %_ZN19gaussian_kernel_lib3src3lib15gaussian_kernel17h72b3a43daa83dbb5E.exit, label %bb12.i.preheader7

bb12.i.preheader7:                                ; preds = %middle.block, %bb12.i.preheader
  %iter3.sroa.7.026.i.ph = phi i64 [ %len, %bb12.i.preheader ], [ %ind.end, %middle.block ]
  %iter3.sroa.4.025.i.ph = phi ptr [ %dest, %bb12.i.preheader ], [ %ind.end1, %middle.block ]
  br label %bb12.i

bb12.i:                                           ; preds = %bb12.i, %bb12.i.preheader7
  %iter3.sroa.7.026.i = phi i64 [ %18, %bb12.i ], [ %iter3.sroa.7.026.i.ph, %bb12.i.preheader7 ]
  %iter3.sroa.4.025.i = phi ptr [ %19, %bb12.i ], [ %iter3.sroa.4.025.i.ph, %bb12.i.preheader7 ]
  %18 = add nsw i64 %iter3.sroa.7.026.i, -1
  %19 = getelementptr inbounds float, ptr %iter3.sroa.4.025.i, i64 1
  %20 = load float, ptr %iter3.sroa.4.025.i, align 4, !alias.scope !2, !noundef !8
  %21 = fmul float %isum.i, %20
  store float %21, ptr %iter3.sroa.4.025.i, align 4, !alias.scope !2
  %22 = icmp eq i64 %18, 0
  %_10.i.i = icmp eq ptr %19, %0
  %or.cond16.i = select i1 %22, i1 true, i1 %_10.i.i
  br i1 %or.cond16.i, label %_ZN19gaussian_kernel_lib3src3lib15gaussian_kernel17h72b3a43daa83dbb5E.exit, label %bb12.i, !llvm.loop !9

_ZN19gaussian_kernel_lib3src3lib15gaussian_kernel17h72b3a43daa83dbb5E.exit: ; preds = %bb12.i, %middle.block, %bb5.i, %start
  ret void
}

; Function Attrs: nonlazybind uwtable
declare noundef i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #2

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @run_test_1() unnamed_addr #1 personality ptr @rust_eh_personality {
bb10:
  ret i1 true
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @run_test_3() unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %expected = alloca [100 x float], align 16
  %dest = alloca [100 x float], align 16
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %dest)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) %dest, i8 0, i64 400, i1 false)
  br label %bb3.i.i

bb5.i.i:                                          ; preds = %bb3.i.i
  %_36.i.i = fcmp ogt float %2, 0.000000e+00
  br i1 %_36.i.i, label %vector.body, label %gaussian_kernel.exit

bb3.i.i:                                          ; preds = %bb3.i.i, %start
  %sum.022.i.i = phi float [ %2, %bb3.i.i ], [ 0.000000e+00, %start ]
  %iter.sroa.7.020.i.i.idx = phi i64 [ %iter.sroa.7.020.i.i.add, %bb3.i.i ], [ 0, %start ]
  %indvars11 = trunc i64 %iter.sroa.7.020.i.i.idx to i32
  %iter.sroa.7.020.i.i.ptr = getelementptr inbounds float, ptr %dest, i64 %iter.sroa.7.020.i.i.idx
  %iter.sroa.7.020.i.i.add = add nuw nsw i64 %iter.sroa.7.020.i.i.idx, 1
  %r.i.i = add nsw i32 %indvars11, -50
  %_26.i.i = sitofp i32 %r.i.i to float
  %x.i.i = fmul float %_26.i.i, 0x3F90624DE0000000
  %self4.i.i = fmul float %x.i.i, %x.i.i
  %0 = tail call float @llvm.exp.f32(float %self4.i.i)
  %_28.i.i = fdiv float 1.000000e+00, %0
  %1 = fadd float %_28.i.i, 0xBF69D05BE0000000
  %_32.i.i = fcmp ogt float %1, 0.000000e+00
  %..i.i = select i1 %_32.i.i, float %1, float 0.000000e+00
  store float %..i.i, ptr %iter.sroa.7.020.i.i.ptr, align 4, !alias.scope !10
  %2 = fadd float %sum.022.i.i, %..i.i
  %exitcond = icmp eq i64 %iter.sroa.7.020.i.i.add, 100
  br i1 %exitcond, label %bb5.i.i, label %bb3.i.i

vector.body:                                      ; preds = %bb5.i.i
  %isum.i.i = fdiv float 1.000000e+00, %2
  %broadcast.splatinsert = insertelement <4 x float> poison, float %isum.i.i, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %wide.load = load <4 x float>, ptr %dest, align 16, !alias.scope !10
  %3 = fmul <4 x float> %broadcast.splat, %wide.load
  store <4 x float> %3, ptr %dest, align 16, !alias.scope !10
  %4 = getelementptr inbounds float, ptr %dest, i64 4
  %wide.load.1 = load <4 x float>, ptr %4, align 16, !alias.scope !10
  %5 = fmul <4 x float> %broadcast.splat, %wide.load.1
  store <4 x float> %5, ptr %4, align 16, !alias.scope !10
  %6 = getelementptr inbounds float, ptr %dest, i64 8
  %wide.load.2 = load <4 x float>, ptr %6, align 16, !alias.scope !10
  %7 = fmul <4 x float> %broadcast.splat, %wide.load.2
  store <4 x float> %7, ptr %6, align 16, !alias.scope !10
  %8 = getelementptr inbounds float, ptr %dest, i64 12
  %wide.load.3 = load <4 x float>, ptr %8, align 16, !alias.scope !10
  %9 = fmul <4 x float> %broadcast.splat, %wide.load.3
  store <4 x float> %9, ptr %8, align 16, !alias.scope !10
  %10 = getelementptr inbounds float, ptr %dest, i64 16
  %wide.load.4 = load <4 x float>, ptr %10, align 16, !alias.scope !10
  %11 = fmul <4 x float> %broadcast.splat, %wide.load.4
  store <4 x float> %11, ptr %10, align 16, !alias.scope !10
  %12 = getelementptr inbounds float, ptr %dest, i64 20
  %wide.load.5 = load <4 x float>, ptr %12, align 16, !alias.scope !10
  %13 = fmul <4 x float> %broadcast.splat, %wide.load.5
  store <4 x float> %13, ptr %12, align 16, !alias.scope !10
  %14 = getelementptr inbounds float, ptr %dest, i64 24
  %wide.load.6 = load <4 x float>, ptr %14, align 16, !alias.scope !10
  %15 = fmul <4 x float> %broadcast.splat, %wide.load.6
  store <4 x float> %15, ptr %14, align 16, !alias.scope !10
  %16 = getelementptr inbounds float, ptr %dest, i64 28
  %wide.load.7 = load <4 x float>, ptr %16, align 16, !alias.scope !10
  %17 = fmul <4 x float> %broadcast.splat, %wide.load.7
  store <4 x float> %17, ptr %16, align 16, !alias.scope !10
  %18 = getelementptr inbounds float, ptr %dest, i64 32
  %wide.load.8 = load <4 x float>, ptr %18, align 16, !alias.scope !10
  %19 = fmul <4 x float> %broadcast.splat, %wide.load.8
  store <4 x float> %19, ptr %18, align 16, !alias.scope !10
  %20 = getelementptr inbounds float, ptr %dest, i64 36
  %wide.load.9 = load <4 x float>, ptr %20, align 16, !alias.scope !10
  %21 = fmul <4 x float> %broadcast.splat, %wide.load.9
  store <4 x float> %21, ptr %20, align 16, !alias.scope !10
  %22 = getelementptr inbounds float, ptr %dest, i64 40
  %wide.load.10 = load <4 x float>, ptr %22, align 16, !alias.scope !10
  %23 = fmul <4 x float> %broadcast.splat, %wide.load.10
  store <4 x float> %23, ptr %22, align 16, !alias.scope !10
  %24 = getelementptr inbounds float, ptr %dest, i64 44
  %wide.load.11 = load <4 x float>, ptr %24, align 16, !alias.scope !10
  %25 = fmul <4 x float> %broadcast.splat, %wide.load.11
  store <4 x float> %25, ptr %24, align 16, !alias.scope !10
  %26 = getelementptr inbounds float, ptr %dest, i64 48
  %wide.load.12 = load <4 x float>, ptr %26, align 16, !alias.scope !10
  %27 = fmul <4 x float> %broadcast.splat, %wide.load.12
  store <4 x float> %27, ptr %26, align 16, !alias.scope !10
  %28 = getelementptr inbounds float, ptr %dest, i64 52
  %wide.load.13 = load <4 x float>, ptr %28, align 16, !alias.scope !10
  %29 = fmul <4 x float> %broadcast.splat, %wide.load.13
  store <4 x float> %29, ptr %28, align 16, !alias.scope !10
  %30 = getelementptr inbounds float, ptr %dest, i64 56
  %wide.load.14 = load <4 x float>, ptr %30, align 16, !alias.scope !10
  %31 = fmul <4 x float> %broadcast.splat, %wide.load.14
  store <4 x float> %31, ptr %30, align 16, !alias.scope !10
  %32 = getelementptr inbounds float, ptr %dest, i64 60
  %wide.load.15 = load <4 x float>, ptr %32, align 16, !alias.scope !10
  %33 = fmul <4 x float> %broadcast.splat, %wide.load.15
  store <4 x float> %33, ptr %32, align 16, !alias.scope !10
  %34 = getelementptr inbounds float, ptr %dest, i64 64
  %wide.load.16 = load <4 x float>, ptr %34, align 16, !alias.scope !10
  %35 = fmul <4 x float> %broadcast.splat, %wide.load.16
  store <4 x float> %35, ptr %34, align 16, !alias.scope !10
  %36 = getelementptr inbounds float, ptr %dest, i64 68
  %wide.load.17 = load <4 x float>, ptr %36, align 16, !alias.scope !10
  %37 = fmul <4 x float> %broadcast.splat, %wide.load.17
  store <4 x float> %37, ptr %36, align 16, !alias.scope !10
  %38 = getelementptr inbounds float, ptr %dest, i64 72
  %wide.load.18 = load <4 x float>, ptr %38, align 16, !alias.scope !10
  %39 = fmul <4 x float> %broadcast.splat, %wide.load.18
  store <4 x float> %39, ptr %38, align 16, !alias.scope !10
  %40 = getelementptr inbounds float, ptr %dest, i64 76
  %wide.load.19 = load <4 x float>, ptr %40, align 16, !alias.scope !10
  %41 = fmul <4 x float> %broadcast.splat, %wide.load.19
  store <4 x float> %41, ptr %40, align 16, !alias.scope !10
  %42 = getelementptr inbounds float, ptr %dest, i64 80
  %wide.load.20 = load <4 x float>, ptr %42, align 16, !alias.scope !10
  %43 = fmul <4 x float> %broadcast.splat, %wide.load.20
  store <4 x float> %43, ptr %42, align 16, !alias.scope !10
  %44 = getelementptr inbounds float, ptr %dest, i64 84
  %wide.load.21 = load <4 x float>, ptr %44, align 16, !alias.scope !10
  %45 = fmul <4 x float> %broadcast.splat, %wide.load.21
  store <4 x float> %45, ptr %44, align 16, !alias.scope !10
  %46 = getelementptr inbounds float, ptr %dest, i64 88
  %wide.load.22 = load <4 x float>, ptr %46, align 16, !alias.scope !10
  %47 = fmul <4 x float> %broadcast.splat, %wide.load.22
  store <4 x float> %47, ptr %46, align 16, !alias.scope !10
  %48 = getelementptr inbounds float, ptr %dest, i64 92
  %wide.load.23 = load <4 x float>, ptr %48, align 16, !alias.scope !10
  %49 = fmul <4 x float> %broadcast.splat, %wide.load.23
  store <4 x float> %49, ptr %48, align 16, !alias.scope !10
  %50 = getelementptr inbounds float, ptr %dest, i64 96
  %wide.load.24 = load <4 x float>, ptr %50, align 16, !alias.scope !10
  %51 = fmul <4 x float> %broadcast.splat, %wide.load.24
  store <4 x float> %51, ptr %50, align 16, !alias.scope !10
  br label %gaussian_kernel.exit

gaussian_kernel.exit:                             ; preds = %vector.body, %bb5.i.i
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %expected)
  store <4 x float> <float 0x3F7A0CABE0000000, float 0x3F7AB8DEE0000000, float 0x3F7B65E0C0000000, float 0x3F7C1388A0000000>, ptr %expected, align 16
  %52 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 4
  store <4 x float> <float 0x3F7CC1AC60000000, float 0x3F7D702120000000, float 0x3F7E1EBA20000000, float 0x3F7ECD4A60000000>, ptr %52, align 16
  %53 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 8
  store <4 x float> <float 0x3F7F7BA300000000, float 0x3F8014CA60000000, float 0x3F806B77C0000000, float 0x3F80C1C100000000>, ptr %53, align 16
  %54 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 12
  store <4 x float> <float 0x3F81178D20000000, float 0x3F816CC320000000, float 0x3F81C14960000000, float 0x3F82150680000000>, ptr %54, align 16
  %55 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 16
  store <4 x float> <float 0x3F8267E020000000, float 0x3F82B9BCE0000000, float 0x3F830A8260000000, float 0x3F835A16C0000000>, ptr %55, align 16
  %56 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 20
  store <4 x float> <float 0x3F83A85FE0000000, float 0x3F83F54400000000, float 0x3F8440A920000000, float 0x3F848A7640000000>, ptr %56, align 16
  %57 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 24
  store <4 x float> <float 0x3F84D291A0000000, float 0x3F8518E260000000, float 0x3F855D5020000000, float 0x3F859FC280000000>, ptr %57, align 16
  %58 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 28
  store <4 x float> <float 0x3F85E021E0000000, float 0x3F861E5740000000, float 0x3F865A4C60000000, float 0x3F8693EA80000000>, ptr %58, align 16
  %59 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 32
  store <4 x float> <float 0x3F86CB1D60000000, float 0x3F86FFD000000000, float 0x3F8731EF00000000, float 0x3F87616760000000>, ptr %59, align 16
  %60 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 36
  store <4 x float> <float 0x3F878E27C0000000, float 0x3F87B81E60000000, float 0x3F87DF3BC0000000, float 0x3F880370E0000000>, ptr %60, align 16
  %61 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 40
  store <4 x float> <float 0x3F8824AFC0000000, float 0x3F8842EBA0000000, float 0x3F885E18C0000000, float 0x3F88762CA0000000>, ptr %61, align 16
  %62 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 44
  store <4 x float> <float 0x3F888B1DC0000000, float 0x3F889CE420000000, float 0x3F88AB78A0000000, float 0x3F88B6D5A0000000>, ptr %62, align 16
  %63 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 48
  store <4 x float> <float 0x3F88BEF6E0000000, float 0x3F88C3D8A0000000, float 0x3F88C57980000000, float 0x3F88C3D8A0000000>, ptr %63, align 16
  %64 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 52
  store <4 x float> <float 0x3F88BEF6E0000000, float 0x3F88B6D5A0000000, float 0x3F88AB78A0000000, float 0x3F889CE420000000>, ptr %64, align 16
  %65 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 56
  store <4 x float> <float 0x3F888B1DC0000000, float 0x3F88762CA0000000, float 0x3F885E18C0000000, float 0x3F8842EBA0000000>, ptr %65, align 16
  %66 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 60
  store <4 x float> <float 0x3F8824AFC0000000, float 0x3F880370E0000000, float 0x3F87DF3BC0000000, float 0x3F87B81E60000000>, ptr %66, align 16
  %67 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 64
  store <4 x float> <float 0x3F878E27C0000000, float 0x3F87616760000000, float 0x3F8731EF00000000, float 0x3F86FFD000000000>, ptr %67, align 16
  %68 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 68
  store <4 x float> <float 0x3F86CB1D60000000, float 0x3F8693EA80000000, float 0x3F865A4C60000000, float 0x3F861E5740000000>, ptr %68, align 16
  %69 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 72
  store <4 x float> <float 0x3F85E021E0000000, float 0x3F859FC280000000, float 0x3F855D5020000000, float 0x3F8518E260000000>, ptr %69, align 16
  %70 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 76
  store <4 x float> <float 0x3F84D291A0000000, float 0x3F848A7640000000, float 0x3F8440A920000000, float 0x3F83F54400000000>, ptr %70, align 16
  %71 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 80
  store <4 x float> <float 0x3F83A85FE0000000, float 0x3F835A16C0000000, float 0x3F830A8260000000, float 0x3F82B9BCE0000000>, ptr %71, align 16
  %72 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 84
  store <4 x float> <float 0x3F8267E020000000, float 0x3F82150680000000, float 0x3F81C14960000000, float 0x3F816CC320000000>, ptr %72, align 16
  %73 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 88
  store <4 x float> <float 0x3F81178D20000000, float 0x3F80C1C100000000, float 0x3F806B77C0000000, float 0x3F8014CA60000000>, ptr %73, align 16
  %74 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 92
  store <4 x float> <float 0x3F7F7BA300000000, float 0x3F7ECD4A60000000, float 0x3F7E1EBA20000000, float 0x3F7D702120000000>, ptr %74, align 16
  %75 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 96
  store <4 x float> <float 0x3F7CC1AC60000000, float 0x3F7C1388A0000000, float 0x3F7B65E0C0000000, float 0x3F7AB8DEE0000000>, ptr %75, align 16
  br label %bb2

bb2:                                              ; preds = %bb6.3, %gaussian_kernel.exit
  %iter.sroa.0.0 = phi i64 [ 0, %gaussian_kernel.exit ], [ %85, %bb6.3 ]
  %exitcond13 = icmp eq i64 %iter.sroa.0.0, 100
  br i1 %exitcond13, label %bb5, label %bb6

bb5:                                              ; preds = %bb2
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %expected)
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %dest)
  br label %bb10

bb6:                                              ; preds = %bb2
  %76 = or i64 %iter.sroa.0.0, 1
  %77 = getelementptr inbounds [100 x float], ptr %dest, i64 0, i64 %iter.sroa.0.0
  %_16 = load float, ptr %77, align 16, !noundef !8
  %78 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 %iter.sroa.0.0
  %_19 = load float, ptr %78, align 16, !noundef !8
  %_15 = fcmp une float %_16, %_19
  br i1 %_15, label %bb8, label %bb6.1

bb6.1:                                            ; preds = %bb6
  %79 = or i64 %iter.sroa.0.0, 2
  %80 = getelementptr inbounds [100 x float], ptr %dest, i64 0, i64 %76
  %_16.1 = load float, ptr %80, align 4, !noundef !8
  %81 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 %76
  %_19.1 = load float, ptr %81, align 4, !noundef !8
  %_15.1 = fcmp une float %_16.1, %_19.1
  br i1 %_15.1, label %bb8, label %bb6.2

bb6.2:                                            ; preds = %bb6.1
  %82 = or i64 %iter.sroa.0.0, 3
  %83 = getelementptr inbounds [100 x float], ptr %dest, i64 0, i64 %79
  %_16.2 = load float, ptr %83, align 8, !noundef !8
  %84 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 %79
  %_19.2 = load float, ptr %84, align 8, !noundef !8
  %_15.2 = fcmp une float %_16.2, %_19.2
  br i1 %_15.2, label %bb8, label %bb6.3

bb6.3:                                            ; preds = %bb6.2
  %85 = add nuw nsw i64 %iter.sroa.0.0, 4
  %86 = getelementptr inbounds [100 x float], ptr %dest, i64 0, i64 %82
  %_16.3 = load float, ptr %86, align 4, !noundef !8
  %87 = getelementptr inbounds [100 x float], ptr %expected, i64 0, i64 %82
  %_19.3 = load float, ptr %87, align 4, !noundef !8
  %_15.3 = fcmp une float %_16.3, %_19.3
  br i1 %_15.3, label %bb8, label %bb2

bb8:                                              ; preds = %bb6.3, %bb6.2, %bb6.1, %bb6
  %iter.sroa.0.0.lcssa18 = phi i64 [ %iter.sroa.0.0, %bb6 ], [ %76, %bb6.1 ], [ %79, %bb6.2 ], [ %82, %bb6.3 ]
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %expected)
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %dest)
  br label %bb10

bb10:                                             ; preds = %bb8, %bb5
  %iter.sroa.0.019 = phi i64 [ %iter.sroa.0.0, %bb5 ], [ %iter.sroa.0.0.lcssa18, %bb8 ]
  %88 = icmp ugt i64 %iter.sroa.0.019, 99
  ret i1 %88
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @run_test_4() unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %0 = tail call <4 x float> @llvm.exp.v4f32(<4 x float> <float 4.096000e+05, float 2.304000e+05, float 1.024000e+05, float 2.560000e+04>)
  %1 = fdiv <4 x float> splat (float 1.000000e+00), %0
  %2 = fadd <4 x float> %1, splat (float 0xBF69D05BE0000000)
  %3 = fcmp ogt <4 x float> %2, zeroinitializer
  %4 = select <4 x i1> %3, <4 x float> %2, <4 x float> zeroinitializer
  %5 = extractelement <4 x float> %4, i64 0
  %6 = fadd float %5, 0.000000e+00
  %7 = extractelement <4 x float> %4, i64 1
  %8 = fadd float %6, %7
  %9 = extractelement <4 x float> %4, i64 2
  %10 = fadd float %8, %9
  %11 = extractelement <4 x float> %4, i64 3
  %12 = fadd float %10, %11
  %13 = fadd float %12, 0x3FEFE62FA0000000
  %14 = fadd float %13, %11
  %15 = fadd float %14, %9
  %16 = fadd float %15, %7
  %17 = fadd float %16, %5
  %_36.i.i = fcmp ogt float %17, 0.000000e+00
  br i1 %_36.i.i, label %bb12.i.preheader.i, label %gaussian_kernel.exit

bb12.i.preheader.i:                               ; preds = %start
  %isum.i.i = fdiv float 1.000000e+00, %17
  %18 = insertelement <4 x float> poison, float %isum.i.i, i64 0
  %19 = shufflevector <4 x float> %18, <4 x float> poison, <4 x i32> zeroinitializer
  %.fr15 = freeze <4 x float> %19
  %20 = fmul <4 x float> %.fr15, %4
  %21 = fmul float %isum.i.i, 0x3FEFE62FA0000000
  %22 = fcmp une float %21, 1.000000e+00
  br label %gaussian_kernel.exit

gaussian_kernel.exit:                             ; preds = %bb12.i.preheader.i, %start
  %dest.sroa.20.0 = phi i1 [ %22, %bb12.i.preheader.i ], [ true, %start ]
  %.fr = phi <4 x float> [ %20, %bb12.i.preheader.i ], [ %4, %start ]
  %23 = fcmp une <4 x float> %.fr, zeroinitializer
  %24 = bitcast <4 x i1> %23 to i4
  %25 = icmp ne i4 %24, 0
  %op.rdx = select i1 %25, i1 true, i1 %dest.sroa.20.0
  %not.or.cond14 = xor i1 %op.rdx, true
  ret i1 %not.or.cond14
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.exp.v4f32(<4 x float>) #2

; Function Attrs: nofree nosync nounwind nonlazybind memory(none) uwtable
define noundef zeroext i1 @run_test_5() unnamed_addr #5 personality ptr @rust_eh_personality {
bb4:
  ret i1 true
}

attributes #0 = { nofree nosync nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nofree nosync nounwind nonlazybind memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!3}
!3 = distinct !{!3, !4, !"_ZN19gaussian_kernel_lib3src3lib15gaussian_kernel17h72b3a43daa83dbb5E: %dest.0"}
!4 = distinct !{!4, !"_ZN19gaussian_kernel_lib3src3lib15gaussian_kernel17h72b3a43daa83dbb5E"}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.isvectorized", i32 1}
!7 = !{!"llvm.loop.unroll.runtime.disable"}
!8 = !{}
!9 = distinct !{!9, !7, !6}
!10 = !{!11}
!11 = distinct !{!11, !12, !"_ZN19gaussian_kernel_lib3src3lib15gaussian_kernel17h72b3a43daa83dbb5E: %dest.0"}
!12 = distinct !{!12, !"_ZN19gaussian_kernel_lib3src3lib15gaussian_kernel17h72b3a43daa83dbb5E"}
