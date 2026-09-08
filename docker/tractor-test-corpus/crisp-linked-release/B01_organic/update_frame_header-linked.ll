; ModuleID = 'linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; ASSERT EQ: i1 1 = call i1 @run_test_1()
; ASSERT EQ: i1 1 = call i1 @run_test_2()
; ASSERT EQ: i1 1 = call i1 @run_test_3()
; ASSERT EQ: i1 1 = call i1 @run_test_4()
; ASSERT EQ: i1 1 = call i1 @run_test_5()

%"src::lib::Tflac" = type { i32, i32, i32, i8, [3 x i8], i32, i32 }

@switch.table.update_frame_header = private unnamed_addr constant [7 x i32] [i32 2, i32 4, i32 8, i32 10, i32 12, i32 2, i32 14], align 4

; Function Attrs: mustprogress nofree nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @update_frame_header(ptr nocapture noundef %t) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i64 0, i32 5
  %1 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i64 0, i32 6
  %2 = load i32, ptr %1, align 4, !alias.scope !2, !noundef !5
  switch i32 %2, label %bb1.i [
    i32 192, label %bb18.i
    i32 576, label %bb3.i
    i32 1152, label %bb4.i
    i32 2304, label %bb5.i
    i32 4608, label %bb6.i
    i32 256, label %bb7.i
    i32 512, label %bb8.i
    i32 1024, label %bb9.i
    i32 2048, label %bb10.i
    i32 4096, label %bb11.i
    i32 8192, label %bb12.i
    i32 16384, label %bb13.i
    i32 32768, label %bb14.i
  ]

bb1.i:                                            ; preds = %start
  %_16.i = icmp ult i32 %2, 257
  %3 = select i1 %_16.i, i32 -499712, i32 -495616
  br label %bb18.i

bb3.i:                                            ; preds = %start
  br label %bb18.i

bb4.i:                                            ; preds = %start
  br label %bb18.i

bb5.i:                                            ; preds = %start
  br label %bb18.i

bb6.i:                                            ; preds = %start
  br label %bb18.i

bb7.i:                                            ; preds = %start
  br label %bb18.i

bb8.i:                                            ; preds = %start
  br label %bb18.i

bb9.i:                                            ; preds = %start
  br label %bb18.i

bb10.i:                                           ; preds = %start
  br label %bb18.i

bb11.i:                                           ; preds = %start
  br label %bb18.i

bb12.i:                                           ; preds = %start
  br label %bb18.i

bb13.i:                                           ; preds = %start
  br label %bb18.i

bb14.i:                                           ; preds = %start
  br label %bb18.i

bb18.i:                                           ; preds = %bb14.i, %bb13.i, %bb12.i, %bb11.i, %bb10.i, %bb9.i, %bb8.i, %bb7.i, %bb6.i, %bb5.i, %bb4.i, %bb3.i, %bb1.i, %start
  %4 = phi i32 [ -516096, %bb3.i ], [ -512000, %bb4.i ], [ -507904, %bb5.i ], [ -503808, %bb6.i ], [ -491520, %bb7.i ], [ -487424, %bb8.i ], [ -483328, %bb9.i ], [ -479232, %bb10.i ], [ -475136, %bb11.i ], [ -471040, %bb12.i ], [ -466944, %bb13.i ], [ -462848, %bb14.i ], [ %3, %bb1.i ], [ -520192, %start ]
  %5 = load i32, ptr %t, align 4, !alias.scope !2, !noundef !5
  switch i32 %5, label %bb19.i [
    i32 882000, label %bb20.i
    i32 176400, label %bb21.i
    i32 192000, label %bb22.i
    i32 8000, label %bb23.i
    i32 16000, label %bb24.i
    i32 22050, label %bb25.i
    i32 24000, label %bb26.i
    i32 32000, label %bb27.i
    i32 44100, label %bb28.i
    i32 48000, label %bb29.i
    i32 96000, label %bb30.i
  ]

bb19.i:                                           ; preds = %bb18.i
  %_29.i = urem i32 %5, 1000
  %6 = icmp eq i32 %_29.i, 0
  br i1 %6, label %bb31.i, label %bb34.i

bb20.i:                                           ; preds = %bb18.i
  %7 = or i32 %4, 256
  br label %bb42.i

bb21.i:                                           ; preds = %bb18.i
  %8 = or i32 %4, 512
  br label %bb42.i

bb22.i:                                           ; preds = %bb18.i
  %9 = or i32 %4, 768
  br label %bb42.i

bb23.i:                                           ; preds = %bb18.i
  %10 = or i32 %4, 1024
  br label %bb42.i

bb24.i:                                           ; preds = %bb18.i
  %11 = or i32 %4, 1280
  br label %bb42.i

bb25.i:                                           ; preds = %bb18.i
  %12 = or i32 %4, 1536
  br label %bb42.i

bb26.i:                                           ; preds = %bb18.i
  %13 = or i32 %4, 1792
  br label %bb42.i

bb27.i:                                           ; preds = %bb18.i
  %14 = or i32 %4, 2048
  br label %bb42.i

bb28.i:                                           ; preds = %bb18.i
  %15 = or i32 %4, 2304
  br label %bb42.i

bb29.i:                                           ; preds = %bb18.i
  %16 = or i32 %4, 2560
  br label %bb42.i

bb30.i:                                           ; preds = %bb18.i
  %17 = or i32 %4, 2816
  br label %bb42.i

bb31.i:                                           ; preds = %bb19.i
  %_31.i = icmp ult i32 %5, 256000
  %18 = or i32 %4, 3072
  %spec.select.i = select i1 %_31.i, i32 %18, i32 %4
  br label %bb42.i

bb34.i:                                           ; preds = %bb19.i
  %_35.i = icmp ult i32 %5, 65536
  br i1 %_35.i, label %bb35.i, label %bb36.i

bb36.i:                                           ; preds = %bb34.i
  %_38.i = urem i32 %5, 10
  %19 = icmp eq i32 %_38.i, 0
  %_40.i = icmp ult i32 %5, 655360
  %or.cond.i = and i1 %_40.i, %19
  %20 = or i32 %4, 3584
  %spec.select5.i = select i1 %or.cond.i, i32 %20, i32 %4
  br label %bb42.i

bb35.i:                                           ; preds = %bb34.i
  %21 = or i32 %4, 3328
  br label %bb42.i

bb42.i:                                           ; preds = %bb35.i, %bb36.i, %bb31.i, %bb30.i, %bb29.i, %bb28.i, %bb27.i, %bb26.i, %bb25.i, %bb24.i, %bb23.i, %bb22.i, %bb21.i, %bb20.i
  %22 = phi i32 [ %21, %bb35.i ], [ %7, %bb20.i ], [ %8, %bb21.i ], [ %9, %bb22.i ], [ %10, %bb23.i ], [ %11, %bb24.i ], [ %12, %bb25.i ], [ %13, %bb26.i ], [ %14, %bb27.i ], [ %15, %bb28.i ], [ %16, %bb29.i ], [ %17, %bb30.i ], [ %spec.select5.i, %bb36.i ], [ %spec.select.i, %bb31.i ]
  %23 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i64 0, i32 3
  %_45.i = load i8, ptr %23, align 4, !alias.scope !2, !noundef !5
  %mode.i = and i8 %_45.i, 3
  %_46.i = zext i8 %mode.i to i32
  switch i32 %_46.i, label %bb42.unreachabledefault.i [
    i32 0, label %bb43.i
    i32 1, label %bb44.i
    i32 2, label %bb45.i
    i32 3, label %bb46.i
  ]

bb42.unreachabledefault.i:                        ; preds = %bb42.i
  unreachable

bb47.i:                                           ; preds = %bb46.i, %bb45.i, %bb44.i, %bb43.i
  %.sink.i = phi i32 [ %30, %bb43.i ], [ %31, %bb44.i ], [ %32, %bb45.i ], [ %33, %bb46.i ]
  store i32 %.sink.i, ptr %0, align 4, !alias.scope !2
  %24 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !alias.scope !2, !noundef !5
  %26 = add i32 %25, -8
  %27 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %26, i32 30)
  %28 = icmp ult i32 %27, 7
  br i1 %28, label %switch.hole_check, label %_ZN23update_frame_header_lib3src3lib19update_frame_header17hf2bb98200fa02793E.exit

bb43.i:                                           ; preds = %bb42.i
  %29 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i64 0, i32 1
  %self4.i = load i32, ptr %29, align 4, !alias.scope !2, !noundef !5
  %_48.i = shl i32 %self4.i, 4
  %_47.i = add i32 %_48.i, -16
  %30 = or i32 %_47.i, %22
  br label %bb47.i

bb44.i:                                           ; preds = %bb42.i
  %31 = or i32 %22, 128
  br label %bb47.i

bb45.i:                                           ; preds = %bb42.i
  %32 = or i32 %22, 144
  br label %bb47.i

bb46.i:                                           ; preds = %bb42.i
  %33 = or i32 %22, 160
  br label %bb47.i

switch.hole_check:                                ; preds = %bb47.i
  %switch.maskindex = trunc i32 %27 to i8
  %switch.shifted = lshr i8 95, %switch.maskindex
  %34 = and i8 %switch.shifted, 1
  %switch.lobit.not = icmp eq i8 %34, 0
  br i1 %switch.lobit.not, label %_ZN23update_frame_header_lib3src3lib19update_frame_header17hf2bb98200fa02793E.exit, label %switch.lookup

switch.lookup:                                    ; preds = %switch.hole_check
  %35 = sext i32 %27 to i64
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.update_frame_header, i64 0, i64 %35
  %switch.load = load i32, ptr %switch.gep, align 4
  %36 = or i32 %switch.load, %.sink.i
  store i32 %36, ptr %0, align 4, !alias.scope !2
  br label %_ZN23update_frame_header_lib3src3lib19update_frame_header17hf2bb98200fa02793E.exit

_ZN23update_frame_header_lib3src3lib19update_frame_header17hf2bb98200fa02793E.exit: ; preds = %switch.lookup, %switch.hole_check, %bb47.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #1

; Function Attrs: mustprogress nofree nosync nounwind nonlazybind willreturn memory(inaccessiblemem: readwrite) uwtable
define noundef zeroext i1 @run_test_1() unnamed_addr #2 {
start:
  %t = alloca %"src::lib::Tflac", align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %t)
  %0 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i64 0, i32 1
  %1 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i64 0, i32 2
  %2 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i64 0, i32 3
  %3 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i64 0, i32 5
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i64 0, i32 6
  store i32 0, ptr %4, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %t, i8 0, i64 13, i1 false)
  call void @update_frame_header(ptr noundef nonnull %t)
  %_9 = load i32, ptr %t, align 4, !noundef !5
  %5 = icmp eq i32 %_9, 0
  %_11 = load i32, ptr %0, align 4
  %_10 = icmp eq i32 %_11, 0
  %_8.0 = select i1 %5, i1 %_10, i1 false
  %_13 = load i32, ptr %1, align 4
  %_12 = icmp eq i32 %_13, 0
  %or.cond = select i1 %_8.0, i1 %_12, i1 false
  %_15 = load i8, ptr %2, align 4
  %_14 = icmp eq i8 %_15, 0
  %or.cond1 = select i1 %or.cond, i1 %_14, i1 false
  %_17 = load i32, ptr %3, align 4
  %_16 = icmp eq i32 %_17, -16
  %or.cond2 = select i1 %or.cond1, i1 %_16, i1 false
  br i1 %or.cond2, label %bb3, label %bb4

bb3:                                              ; preds = %start
  %_19 = load i32, ptr %4, align 4, !noundef !5
  %_18 = icmp eq i32 %_19, 0
  br label %bb4

bb4:                                              ; preds = %bb3, %start
  %.0 = phi i1 [ %_18, %bb3 ], [ false, %start ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %t)
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree nosync nounwind nonlazybind willreturn memory(inaccessiblemem: readwrite) uwtable
define noundef zeroext i1 @run_test_2() unnamed_addr #2 {
start:
  %t = alloca %"src::lib::Tflac", align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %t)
  store i32 882000, ptr %t, align 4
  %0 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i64 0, i32 1
  store i32 0, ptr %0, align 4
  %1 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i64 0, i32 2
  store i32 0, ptr %1, align 4
  %2 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i64 0, i32 3
  store i8 1, ptr %2, align 4
  %3 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i64 0, i32 5
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i64 0, i32 6
  store i32 192, ptr %4, align 4
  call void @update_frame_header(ptr noundef nonnull %t)
  %_9 = load i32, ptr %t, align 4, !noundef !5
  %5 = icmp eq i32 %_9, 882000
  %_11 = load i32, ptr %0, align 4
  %_10 = icmp eq i32 %_11, 0
  %_8.0 = select i1 %5, i1 %_10, i1 false
  %_13 = load i32, ptr %1, align 4
  %_12 = icmp eq i32 %_13, 0
  %or.cond = select i1 %_8.0, i1 %_12, i1 false
  %_15 = load i8, ptr %2, align 4
  %_14 = icmp eq i8 %_15, 1
  %or.cond1 = select i1 %or.cond, i1 %_14, i1 false
  %_17 = load i32, ptr %3, align 4
  %_16 = icmp eq i32 %_17, -519808
  %or.cond2 = select i1 %or.cond1, i1 %_16, i1 false
  br i1 %or.cond2, label %bb3, label %bb4

bb3:                                              ; preds = %start
  %_19 = load i32, ptr %4, align 4, !noundef !5
  %_18 = icmp eq i32 %_19, 192
  br label %bb4

bb4:                                              ; preds = %bb3, %start
  %.0 = phi i1 [ %_18, %bb3 ], [ false, %start ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %t)
  ret i1 %.0
}

; Function Attrs: mustprogress nofree nosync nounwind nonlazybind willreturn memory(inaccessiblemem: readwrite) uwtable
define noundef zeroext i1 @run_test_3() unnamed_addr #2 {
start:
  %t = alloca %"src::lib::Tflac", align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %t)
  store i32 882000, ptr %t, align 4
  %0 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i64 0, i32 1
  store i32 0, ptr %0, align 4
  %1 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i64 0, i32 2
  store i32 8, ptr %1, align 4
  %2 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i64 0, i32 3
  store i8 1, ptr %2, align 4
  %3 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i64 0, i32 5
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i64 0, i32 6
  store i32 192, ptr %4, align 4
  call void @update_frame_header(ptr noundef nonnull %t)
  %_9 = load i32, ptr %t, align 4, !noundef !5
  %5 = icmp eq i32 %_9, 882000
  %_11 = load i32, ptr %0, align 4
  %_10 = icmp eq i32 %_11, 0
  %_8.0 = select i1 %5, i1 %_10, i1 false
  %_13 = load i32, ptr %1, align 4
  %_12 = icmp eq i32 %_13, 8
  %or.cond = select i1 %_8.0, i1 %_12, i1 false
  %_15 = load i8, ptr %2, align 4
  %_14 = icmp eq i8 %_15, 1
  %or.cond1 = select i1 %or.cond, i1 %_14, i1 false
  %_17 = load i32, ptr %3, align 4
  %_16 = icmp eq i32 %_17, -519806
  %or.cond2 = select i1 %or.cond1, i1 %_16, i1 false
  br i1 %or.cond2, label %bb3, label %bb4

bb3:                                              ; preds = %start
  %_19 = load i32, ptr %4, align 4, !noundef !5
  %_18 = icmp eq i32 %_19, 192
  br label %bb4

bb4:                                              ; preds = %bb3, %start
  %.0 = phi i1 [ %_18, %bb3 ], [ false, %start ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %t)
  ret i1 %.0
}

; Function Attrs: mustprogress nofree nosync nounwind nonlazybind willreturn memory(inaccessiblemem: readwrite) uwtable
define noundef zeroext i1 @run_test_4() unnamed_addr #2 {
start:
  %t = alloca %"src::lib::Tflac", align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %t)
  store i32 882000, ptr %t, align 4
  %0 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i64 0, i32 1
  store i32 0, ptr %0, align 4
  %1 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i64 0, i32 2
  store i32 8, ptr %1, align 4
  %2 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i64 0, i32 3
  store i8 1, ptr %2, align 4
  %3 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i64 0, i32 5
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i64 0, i32 6
  store i32 576, ptr %4, align 4
  call void @update_frame_header(ptr noundef nonnull %t)
  %_9 = load i32, ptr %t, align 4, !noundef !5
  %5 = icmp eq i32 %_9, 882000
  %_11 = load i32, ptr %0, align 4
  %_10 = icmp eq i32 %_11, 0
  %_8.0 = select i1 %5, i1 %_10, i1 false
  %_13 = load i32, ptr %1, align 4
  %_12 = icmp eq i32 %_13, 8
  %or.cond = select i1 %_8.0, i1 %_12, i1 false
  %_15 = load i8, ptr %2, align 4
  %_14 = icmp eq i8 %_15, 1
  %or.cond1 = select i1 %or.cond, i1 %_14, i1 false
  %_17 = load i32, ptr %3, align 4
  %_16 = icmp eq i32 %_17, -515710
  %or.cond2 = select i1 %or.cond1, i1 %_16, i1 false
  br i1 %or.cond2, label %bb3, label %bb4

bb3:                                              ; preds = %start
  %_19 = load i32, ptr %4, align 4, !noundef !5
  %_18 = icmp eq i32 %_19, 576
  br label %bb4

bb4:                                              ; preds = %bb3, %start
  %.0 = phi i1 [ %_18, %bb3 ], [ false, %start ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %t)
  ret i1 %.0
}

; Function Attrs: mustprogress nofree nosync nounwind nonlazybind willreturn memory(inaccessiblemem: readwrite) uwtable
define noundef zeroext i1 @run_test_5() unnamed_addr #2 {
start:
  %t = alloca %"src::lib::Tflac", align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %t)
  store i32 176400, ptr %t, align 4
  %0 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i64 0, i32 1
  store i32 0, ptr %0, align 4
  %1 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i64 0, i32 2
  store i32 8, ptr %1, align 4
  %2 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i64 0, i32 3
  store i8 1, ptr %2, align 4
  %3 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i64 0, i32 5
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %"src::lib::Tflac", ptr %t, i64 0, i32 6
  store i32 576, ptr %4, align 4
  call void @update_frame_header(ptr noundef nonnull %t)
  %_9 = load i32, ptr %t, align 4, !noundef !5
  %5 = icmp eq i32 %_9, 176400
  %_11 = load i32, ptr %0, align 4
  %_10 = icmp eq i32 %_11, 0
  %_8.0 = select i1 %5, i1 %_10, i1 false
  %_13 = load i32, ptr %1, align 4
  %_12 = icmp eq i32 %_13, 8
  %or.cond = select i1 %_8.0, i1 %_12, i1 false
  %_15 = load i8, ptr %2, align 4
  %_14 = icmp eq i8 %_15, 1
  %or.cond1 = select i1 %or.cond, i1 %_14, i1 false
  %_17 = load i32, ptr %3, align 4
  %_16 = icmp eq i32 %_17, -515454
  %or.cond2 = select i1 %or.cond1, i1 %_16, i1 false
  br i1 %or.cond2, label %bb3, label %bb4

bb3:                                              ; preds = %start
  %_19 = load i32, ptr %4, align 4, !noundef !5
  %_18 = icmp eq i32 %_19, 576
  br label %bb4

bb4:                                              ; preds = %bb3, %start
  %.0 = phi i1 [ %_18, %bb3 ], [ false, %start ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %t)
  ret i1 %.0
}

attributes #0 = { mustprogress nofree nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nofree nosync nounwind nonlazybind willreturn memory(inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!3}
!3 = distinct !{!3, !4, !"_ZN23update_frame_header_lib3src3lib19update_frame_header17hf2bb98200fa02793E: %t"}
!4 = distinct !{!4, !"_ZN23update_frame_header_lib3src3lib19update_frame_header17hf2bb98200fa02793E"}
!5 = !{}
