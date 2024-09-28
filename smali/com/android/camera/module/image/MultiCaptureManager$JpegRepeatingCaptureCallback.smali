.class public final Lcom/android/camera/module/image/MultiCaptureManager$JpegRepeatingCaptureCallback;
.super Ljava/lang/Object;
.source "MultiCaptureManager.java"

# interfaces
.implements Lcom/android/camera2/Camera2Proxy$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/image/MultiCaptureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "JpegRepeatingCaptureCallback"
.end annotation


# instance fields
.field public mBurstShotTitle:Ljava/lang/String;

.field public mDropped:Z

.field public mModule:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/Camera2Module;",
            ">;"
        }
    .end annotation
.end field

.field public mParallelParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

.field public mPressDownTitle:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/camera/module/image/MultiCaptureManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/image/MultiCaptureManager;Lcom/android/camera/module/Camera2Module;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/image/MultiCaptureManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegRepeatingCaptureCallback;->mParallelParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    .line 3
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegRepeatingCaptureCallback;->mModule:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private getBurstShotTitle()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegRepeatingCaptureCallback;->mBurstShotTitle:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegRepeatingCaptureCallback;->mBurstShotTitle:Ljava/lang/String;

    .line 4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x13

    if-eq v2, v3, :cond_0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    .line 5
    invoke-static {v0, v1}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegRepeatingCaptureCallback;->mBurstShotTitle:Ljava/lang/String;

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegRepeatingCaptureCallback;->mBurstShotTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_BURST"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/image/MultiCaptureManager;

    iget v1, v1, Lcom/android/camera/module/image/MultiCaptureManager;->mReceivedJpegCallbackNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private tryCheckNeedStop()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/storage/Storage;->isLowStorageAtLastPoint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/image/MultiCaptureManager;

    iget-boolean v1, v0, Lcom/android/camera/module/image/MultiCaptureManager;->mIsWorking:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/module/image/MultiCaptureManager;->stopMultiSnap()V

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public onCaptureStart(Lcom/xiaomi/camera/core/ParallelTaskData;Lcom/android/camera2/CaptureStartParam;)Lcom/xiaomi/camera/core/ParallelTaskData;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegRepeatingCaptureCallback;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    .line 2
    iget-boolean v1, v0, Lcom/android/camera/module/Camera2Module;->mEnableParallelSession:Z

    const-string/jumbo v2, "onCaptureStart: revNum = "

    const/4 v3, 0x1

    const-string v4, "MultiCaptureManager"

    if-eqz v1, :cond_13

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isPaused()Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/image/MultiCaptureManager;

    iget v5, v1, Lcom/android/camera/module/image/MultiCaptureManager;->mReceivedJpegCallbackNum:I

    iget v6, v1, Lcom/android/camera/module/image/MultiCaptureManager;->mTotalJpegCallbackNum:I

    if-ge v5, v6, :cond_13

    iget-boolean v6, v1, Lcom/android/camera/module/image/MultiCaptureManager;->mIsWorking:Z

    if-nez v6, :cond_0

    goto/16 :goto_3

    :cond_0
    if-ne v5, v3, :cond_2

    .line 3
    iget-boolean v1, v1, Lcom/android/camera/module/image/MultiCaptureManager;->mMultiSnapStopRequest:Z

    if-nez v1, :cond_2

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->is3ALocked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/FocusManager;->onShutter()V

    .line 6
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/camera/module/image/MultiCaptureManager$JpegRepeatingCaptureCallback;->getBurstShotTitle()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegRepeatingCaptureCallback;->mPressDownTitle:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lcom/android/camera/storage/ImageSaver;->updateImage(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/image/MultiCaptureManager$JpegRepeatingCaptureCallback;->tryCheckNeedStop()Z

    move-result v1

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    const-string/jumbo p1, "onCaptureStart: need stop multi capture, return null"

    .line 8
    invoke-static {v4, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    .line 9
    :cond_3
    iget-object v1, v0, Lcom/android/camera/module/Camera2Module;->mModuleSizeFormatManager:Lcom/android/camera/module/image/ModuleSizeFormatManager;

    .line 10
    invoke-virtual {p2}, Lcom/android/camera2/CaptureStartParam;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object v6

    .line 11
    iget-object v7, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegRepeatingCaptureCallback;->mParallelParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    const/4 v8, 0x4

    if-nez v7, :cond_b

    .line 12
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onCaptureStart: inputSize = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->isIn3OrMoreSatMode()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isInMultiSurfaceSatMode()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 14
    :cond_4
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/camera/CameraSize;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOo00()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 15
    :cond_5
    iget-object v7, v1, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mAlgorithmOutputSize:Lcom/android/camera/CameraSize;

    if-eqz v7, :cond_6

    invoke-virtual {v7, v6}, Lcom/android/camera/CameraSize;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 16
    :cond_6
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v7

    invoke-interface {v7, v6}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setPictureSize(Lcom/android/camera/CameraSize;)V

    .line 17
    invoke-virtual {p2}, Lcom/android/camera2/CaptureStartParam;->getSatCameraId()I

    move-result v7

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v9

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v10

    invoke-virtual {v1, v6, v7, v9, v10}, Lcom/android/camera/module/image/ModuleSizeFormatManager;->updateOutputSize(Lcom/android/camera/CameraSize;ILcom/android/camera/module/common/ModuleCameraManagerInterface;I)V

    .line 18
    :cond_7
    iget-object v7, v1, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mOutputPictureSize:Lcom/android/camera/CameraSize;

    if-nez v7, :cond_8

    .line 19
    invoke-virtual {v6}, Lcom/android/camera/CameraSize;->toSizeObject()Landroid/util/Size;

    move-result-object v6

    goto :goto_0

    .line 20
    :cond_8
    invoke-virtual {v7}, Lcom/android/camera/CameraSize;->toSizeObject()Landroid/util/Size;

    move-result-object v6

    .line 21
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onCaptureStart: outputSize = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v4, v7}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 22
    iget v7, v1, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mOutputPictureFormat:I

    invoke-static {v7}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->isHeicImageFormat(I)Z

    move-result v7

    .line 23
    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getEncodingQuality(Z)Lcom/android/camera/EncodingQuality;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/android/camera/EncodingQuality;->toInteger(Z)I

    move-result v9

    .line 24
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onCaptureStart: isHeic = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", quality = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_a

    .line 25
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v7

    invoke-static {v7}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportZeroDegreeOrientationImage(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 26
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getJpegRotation()I

    move-result v7

    const/16 v10, 0x5a

    if-eq v7, v10, :cond_9

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getJpegRotation()I

    move-result v7

    const/16 v10, 0x10e

    if-ne v7, v10, :cond_a

    .line 27
    :cond_9
    new-instance v7, Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v10

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-direct {v7, v10, v6}, Landroid/util/Size;-><init>(II)V

    .line 28
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onCaptureStart: switched outputSize: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v7

    .line 29
    :cond_a
    invoke-virtual {v0, p2, v6, v9}, Lcom/android/camera/module/Camera2Module;->createParallelParams(Lcom/android/camera2/CaptureStartParam;Landroid/util/Size;I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegRepeatingCaptureCallback;->mParallelParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    .line 30
    :cond_b
    iget-object p2, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegRepeatingCaptureCallback;->mParallelParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-virtual {p1, p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->fillParameter(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;)V

    .line 31
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object p2

    invoke-virtual {p2}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OO0ooo()Z

    move-result p2

    if-eqz p2, :cond_c

    .line 32
    invoke-virtual {p1, v3}, Lcom/xiaomi/camera/core/ParallelTaskData;->setRequireTuningData(Z)V

    .line 33
    :cond_c
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/storage/ImageSaver;->isSaveQueueFull()Z

    move-result p2

    if-nez p2, :cond_f

    .line 34
    iget-object p2, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/image/MultiCaptureManager;

    iget v6, p2, Lcom/android/camera/module/image/MultiCaptureManager;->mReceivedJpegCallbackNum:I

    add-int/2addr v6, v3

    iput v6, p2, Lcom/android/camera/module/image/MultiCaptureManager;->mReceivedJpegCallbackNum:I

    .line 35
    invoke-virtual {v0, v8}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    .line 36
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object p2

    invoke-virtual {p2}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO()V

    .line 37
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/image/MultiCaptureManager;

    iget v2, v2, Lcom/android/camera/module/image/MultiCaptureManager;->mReceivedJpegCallbackNum:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object p2, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/image/MultiCaptureManager;

    iget-object v2, p2, Lcom/android/camera/module/image/MultiCaptureManager;->mBurstEmitter:Lio/reactivex/ObservableEmitter;

    iget p2, p2, Lcom/android/camera/module/image/MultiCaptureManager;->mReceivedJpegCallbackNum:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v2, p2}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 39
    iget-object p2, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/image/MultiCaptureManager;

    iget v2, p2, Lcom/android/camera/module/image/MultiCaptureManager;->mReceivedJpegCallbackNum:I

    iget p2, p2, Lcom/android/camera/module/image/MultiCaptureManager;->mTotalJpegCallbackNum:I

    if-gt v2, p2, :cond_10

    .line 40
    iget p2, v1, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mOutputPictureFormat:I

    invoke-static {p2}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->isHeicImageFormat(I)Z

    move-result p2

    .line 41
    invoke-direct {p0}, Lcom/android/camera/module/image/MultiCaptureManager$JpegRepeatingCaptureCallback;->getBurstShotTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/camera/storage/Storage;->generateFilepath4Image(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCaptureStart: savePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-virtual {p1, p2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setSavePath(Ljava/lang/String;)V

    .line 44
    iget-object p2, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/image/MultiCaptureManager;

    iget v1, p2, Lcom/android/camera/module/image/MultiCaptureManager;->mReceivedJpegCallbackNum:I

    iget v2, p2, Lcom/android/camera/module/image/MultiCaptureManager;->mTotalJpegCallbackNum:I

    const/4 v4, 0x0

    if-eq v1, v2, :cond_e

    iget-boolean p2, p2, Lcom/android/camera/module/image/MultiCaptureManager;->mMultiSnapStopRequest:Z

    if-nez p2, :cond_e

    iget-boolean p2, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegRepeatingCaptureCallback;->mDropped:Z

    if-eqz p2, :cond_d

    goto :goto_1

    :cond_d
    move v3, v4

    .line 45
    :cond_e
    :goto_1
    invoke-virtual {p1, v3}, Lcom/xiaomi/camera/core/ParallelTaskData;->setNeedThumbnail(Z)V

    .line 46
    invoke-virtual {v0, p1, v4}, Lcom/android/camera/module/Camera2Module;->beginParallelProcess(Lcom/xiaomi/camera/core/ParallelTaskData;Z)V

    .line 47
    iput-boolean v4, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegRepeatingCaptureCallback;->mDropped:Z

    goto :goto_2

    .line 48
    :cond_f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onCaptureStart: queue full and drop "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/image/MultiCaptureManager;

    iget p2, p2, Lcom/android/camera/module/image/MultiCaptureManager;->mReceivedJpegCallbackNum:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iput-boolean v3, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegRepeatingCaptureCallback;->mDropped:Z

    .line 50
    iget-object p1, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/image/MultiCaptureManager;

    iget p2, p1, Lcom/android/camera/module/image/MultiCaptureManager;->mReceivedJpegCallbackNum:I

    iget p1, p1, Lcom/android/camera/module/image/MultiCaptureManager;->mTotalJpegCallbackNum:I

    if-lt p2, p1, :cond_10

    .line 51
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/camera/ThumbnailUpdater;->getLastThumbnailUncached(Z)V

    :cond_10
    move-object p1, v5

    .line 52
    :goto_2
    iget-object p2, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/image/MultiCaptureManager;

    iget v0, p2, Lcom/android/camera/module/image/MultiCaptureManager;->mReceivedJpegCallbackNum:I

    iget v1, p2, Lcom/android/camera/module/image/MultiCaptureManager;->mTotalJpegCallbackNum:I

    if-ge v0, v1, :cond_11

    iget-boolean p2, p2, Lcom/android/camera/module/image/MultiCaptureManager;->mMultiSnapStopRequest:Z

    if-nez p2, :cond_11

    iget-boolean p2, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegRepeatingCaptureCallback;->mDropped:Z

    if-eqz p2, :cond_12

    .line 53
    :cond_11
    iget-object p2, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/image/MultiCaptureManager;

    invoke-virtual {p2}, Lcom/android/camera/module/image/MultiCaptureManager;->stopMultiSnap()V

    :cond_12
    return-object p1

    .line 54
    :cond_13
    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/image/MultiCaptureManager;

    iget v1, v1, Lcom/android/camera/module/image/MultiCaptureManager;->mReceivedJpegCallbackNum:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " paused = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isPaused()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " status = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegRepeatingCaptureCallback;->this$0:Lcom/android/camera/module/image/MultiCaptureManager;

    iget-boolean v0, v0, Lcom/android/camera/module/image/MultiCaptureManager;->mIsWorking:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 56
    invoke-static {v4, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object p2

    invoke-virtual {p2}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OO0ooo()Z

    move-result p2

    if-eqz p2, :cond_14

    .line 58
    invoke-virtual {p1, v3}, Lcom/xiaomi/camera/core/ParallelTaskData;->setRequireTuningData(Z)V

    .line 59
    :cond_14
    invoke-virtual {p1, v3}, Lcom/xiaomi/camera/core/ParallelTaskData;->setAbandoned(Z)V

    return-object p1
.end method

.method public onPictureTakenFinished(ZJI)V
    .locals 1

    .line 1
    iget-object p4, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegRepeatingCaptureCallback;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {p4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/camera/module/Camera2Module;

    invoke-virtual {p4}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p4

    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Lcom/android/camera/ActivityBase;->setPreviewThumbnail(Z)V

    .line 2
    iget-object p4, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegRepeatingCaptureCallback;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {p4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 3
    iget-object p4, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegRepeatingCaptureCallback;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {p4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/camera/module/Camera2Module;

    invoke-virtual {p4, p1, p2, p3}, Lcom/android/camera/module/Camera2Module;->onBurstPictureTakenFinished(ZJ)V

    goto :goto_0

    :cond_0
    const-string p1, "MultiCaptureManager"

    const-string p2, "callback onShotFinished null"

    .line 4
    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
