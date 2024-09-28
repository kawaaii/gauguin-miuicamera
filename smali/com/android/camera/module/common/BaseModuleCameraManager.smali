.class public Lcom/android/camera/module/common/BaseModuleCameraManager;
.super Ljava/lang/Object;
.source "BaseModuleCameraManager.java"

# interfaces
.implements Lcom/android/camera/module/common/ModuleCameraManagerInterface;


# static fields
.field public static final TAG:Ljava/lang/String; = "BaseModuleCameraManager"


# instance fields
.field public m3ALockSupported:Z

.field public m3ALocked:Z

.field public mAELockOnlySupported:Z

.field public mActualCameraId:I

.field public mAeLockSupported:Z

.field public mAwbLockSupported:Z

.field public mBogusCameraId:I

.field public mCamera2Proxy:Lcom/android/camera2/Camera2Proxy;

.field public mCameraDisabled:Z

.field public mCameraDisplayOrientation:I

.field public mCameraHardwareError:Z

.field public mCameraState:I

.field public mCapabilities:Lcom/android/camera2/CameraCapabilities;

.field public mContinuousFocusSupported:Z

.field public final mDeviceLock:Ljava/lang/Object;

.field public mErrorCallback:Lcom/android/camera/CameraErrorCallbackImpl;

.field public mEvState:I

.field public mEvValue:I

.field public volatile mFallbackProcessed:Z

.field public mFocusAreaSupported:Z

.field public mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager;

.field public mFocusOrAELockSupported:Z

.field public final mIsCameraFrameAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public volatile mIsSatFallback:I

.field public volatile mLastSatFallbackRequestId:I

.field public mLastZoomRatio:F

.field public mMeteringAreaSupported:Z

.field public mModule:Lcom/android/camera/module/Module;

.field public mOpenCameraFail:Z

.field public mPictureSize:Lcom/android/camera/CameraSize;

.field public mPreviewSize:Lcom/android/camera/CameraSize;

.field public mSatMasterCameraId:I

.field public mThermalLevel:I

.field public volatile mUltraWideAELocked:Z

.field public mUseLegacyFlashMode:Z

.field public volatile mWaitingSnapshot:Z

.field public mZoomRatio:F

.field public mZoomSupported:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/module/Module;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mSatMasterCameraId:I

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mIsCameraFrameAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    iput v1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mIsSatFallback:I

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mLastSatFallbackRequestId:I

    .line 6
    iput v1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mThermalLevel:I

    .line 7
    iput v1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mCameraState:I

    .line 8
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mDeviceLock:Ljava/lang/Object;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 9
    iput v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mZoomRatio:F

    .line 10
    iput v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mLastZoomRatio:F

    .line 11
    iput-object p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mModule:Lcom/android/camera/module/Module;

    return-void
.end method

.method public static synthetic OooO00o(ZLcom/android/camera2/Camera2Proxy;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lcom/android/camera2/Camera2Proxy;->setHistogramStatsEnabled(Z)V

    return-void
.end method

.method public static synthetic OooO0O0(ZLcom/android/camera2/Camera2Proxy;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lcom/android/camera2/Camera2Proxy;->setVideoLogEnabled(Z)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/module/common/BaseModuleCameraManager;)Lcom/android/camera/module/Module;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mModule:Lcom/android/camera/module/Module;

    return-object p0
.end method

.method private applySatZoomState()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->isSatIsZooming()Z

    move-result v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setSatIsZooming(Z)V

    :cond_0
    return-void
.end method

.method private isDeviceAndModuleAlive()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mModule:Lcom/android/camera/module/Module;

    invoke-interface {v1}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/camera/module/common/ModuleUtil;->logWhenStateError(Lcom/android/camera/module/common/ModuleCameraManagerInterface;Lcom/android/camera/module/common/BaseModuleStateManagerInterface;)V

    :cond_1
    return v0
.end method

.method private isDualCamera()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isDualCamera(I)Z

    move-result v0

    return v0
.end method

.method private updateBeautyLens()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getBeautyLens()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setBeautyLens(I)V

    return-void
.end method

.method private updateBokeh()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentBokeh()Lcom/android/camera/data/data/config/ComponentConfigBokeh;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isPortraitModule()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mModule:Lcom/android/camera/module/Module;

    .line 3
    invoke-interface {v1}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera2/Camera2Proxy;->setSingleBokeh(Z)V

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera2/Camera2Proxy;->setDualBokehEnable(Z)V

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->isSingleCamera()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 7
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o000oo0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isPortraitModule()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera2/Camera2Proxy;->setSingleBokeh(Z)V

    .line 11
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setDualBokehEnable(Z)V

    goto :goto_1

    .line 12
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setSingleBokeh(Z)V

    .line 13
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera2/Camera2Proxy;->setDualBokehEnable(Z)V

    :goto_1
    return-void
.end method

.method private updateColorEnhance()V
    .locals 2

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0O0ooOO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningColorEnhance()Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mModule:Lcom/android/camera/module/Module;

    invoke-interface {v1}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;->isEnabled(I)Z

    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setColorEnhanceEnable(Z)V

    :cond_0
    return-void
.end method

.method private updateExposureTime()V
    .locals 4

    const v0, 0x7f1206ad

    .line 1
    invoke-static {v0}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "pref_qc_camera_exposuretime_key"

    .line 2
    invoke-static {v1, v0}, Lcom/android/camera/module/image/ImageModuleUtil;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/camera2/Camera2Proxy;->setExposureTime(J)V

    return-void
.end method

.method private updateFNumber()V
    .locals 2

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00Oo0O()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->readFNumber()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setFNumber(Ljava/lang/String;)V

    return-void
.end method

.method private updateFaceScore()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    const-string/jumbo v2, "pref_camera_magic_mirror_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setFaceScore(Z)V

    return-void
.end method

.method private updateFrameRatio()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 2
    iget-object v2, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mModule:Lcom/android/camera/module/Module;

    invoke-interface {v2}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v2

    const/16 v3, 0xa3

    if-eq v2, v3, :cond_1

    const/16 v3, 0xad

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigRatio()Lcom/android/camera/data/data/config/ComponentConfigRatio;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mModule:Lcom/android/camera/module/Module;

    .line 4
    invoke-interface {v2}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_2

    return-void

    :cond_2
    const/4 v2, -0x1

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0xc6aa

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v3, v4, :cond_5

    const v4, 0xd1ef

    if-eq v3, v4, :cond_4

    const v4, 0x171fa6

    if-eq v3, v4, :cond_3

    goto :goto_1

    :cond_3
    const-string v3, "16x9"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v2, v6

    goto :goto_1

    :cond_4
    const-string v3, "4x3"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v2, v7

    goto :goto_1

    :cond_5
    const-string v3, "1x1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v2, v5

    :cond_6
    :goto_1
    if-eqz v2, :cond_9

    if-eq v2, v7, :cond_8

    if-eq v2, v6, :cond_7

    const/4 v2, 0x3

    goto :goto_2

    :cond_7
    move v2, v6

    goto :goto_2

    :cond_8
    move v2, v7

    goto :goto_2

    :cond_9
    move v2, v5

    .line 6
    :goto_2
    invoke-virtual {v0, v2}, Lcom/android/camera2/Camera2Proxy;->setFrameRatio(I)V

    new-array v0, v6, [Ljava/lang/Object;

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v5

    aput-object v1, v0, v7

    const-string v1, "BaseModuleCameraManager"

    const-string/jumbo v2, "updateFrameRatio: %d (%s)"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method private updateHFRDeflicker()V
    .locals 2

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00OoO00()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAlgoFPS(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setHFRDeflickerEnable(Z)V

    :cond_0
    return-void
.end method

.method private updateJpegThumbnailSize()V
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/android/camera/module/image/ModuleSizeFormatManager;->getJpegThumbnailSize(Lcom/android/camera/module/common/ModuleCameraManagerInterface;)Lcom/android/camera/CameraSize;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setJpegThumbnailSize(Lcom/android/camera/CameraSize;)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "thumbnailSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseModuleCameraManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateVideoFilter()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportMasterFilter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoMasterFilter()I

    move-result v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->getShaderEffect()I

    move-result v0

    :goto_0
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 4
    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    .line 5
    :cond_1
    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    move v0, v2

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getNullableDevice()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    .line 7
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setVideoFilterId(I)V

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    if-lez v0, :cond_4

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00O0oo0()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    :cond_4
    invoke-virtual {v1, v2}, Lcom/android/camera2/Camera2Proxy;->setVideoFilterRecordControlEnabled(Z)V

    return-void
.end method

.method private updateVideoFpsRangeNeedForHDR()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getVideoHdrSupportSetFreqValue(Lcom/android/camera2/CameraCapabilities;)I

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateVideoFpsRangeNeedForHDR: setFreqValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaseModuleCameraManager"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v3, 0x3

    if-eqz v0, :cond_2

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getBogusCameraId()I

    move-result v0

    if-nez v0, :cond_4

    :goto_0
    move v1, v2

    goto :goto_3

    :cond_2
    :goto_1
    if-ne v0, v3, :cond_4

    goto :goto_0

    .line 4
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->isFrontCamera()Z

    move-result v1

    :cond_4
    :goto_3
    return v1
.end method

.method private updateWatermarkTag()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setNewWatermark(Z)V

    .line 3
    invoke-static {}, Lcom/android/camera/Util;->isGlobalVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->setGlobalWatermark()V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Lcom/android/camera2/Camera2Proxy;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera2/Camera2Proxy;->setVideoSnapshotSize(Lcom/android/camera/CameraSize;)V

    return-void
.end method

.method public applyVideoHdrMode()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mModule:Lcom/android/camera/module/Module;

    invoke-interface {v1}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "normal"

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->applyVideoHdrMode(Z)V

    :cond_1
    return-void
.end method

.method public captureVideoSnapshot(ILcom/android/camera/module/video/JpegPictureCallback;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getNullableDevice()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "BaseModuleCameraManager"

    const-string v1, "capture: start"

    .line 2
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getBogusCameraId()I

    move-result v1

    invoke-static {v1, p1}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result p1

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/camera2/Camera2Proxy;->setJpegRotation(I)V

    .line 5
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/camera2/Camera2Proxy;->setGpsLocation(Landroid/location/Location;)V

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getBogusCameraId()I

    move-result p1

    const/4 v1, 0x2

    invoke-static {p1, v1}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result p1

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jpegQuality="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera2/Camera2Proxy;->setJpegQuality(I)V

    .line 10
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->updateFrontMirror()V

    .line 11
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera2/Camera2Proxy;->captureVideoSnapshot(Lcom/android/camera2/Camera2Proxy$PictureCallback;)V

    .line 12
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->isFrontCamera()Z

    move-result p1

    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackVideoSnapshot(Z)V

    return-void
.end method

.method public consumePreference(I)Z
    .locals 2

    const/16 v0, 0xf

    const/4 v1, 0x1

    if-eq p1, v0, :cond_7

    const/16 v0, 0x10

    if-eq p1, v0, :cond_6

    const/16 v0, 0x13

    if-eq p1, v0, :cond_5

    const/16 v0, 0x14

    if-eq p1, v0, :cond_4

    const/16 v0, 0x44

    if-eq p1, v0, :cond_3

    const/16 v0, 0x45

    if-eq p1, v0, :cond_2

    const/16 v0, 0x5c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x5d

    if-eq p1, v0, :cond_0

    sparse-switch p1, :sswitch_data_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const/4 p1, 0x0

    return p1

    .line 1
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->updateHdr10VideoMode()V

    goto/16 :goto_0

    .line 2
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->updateTargetZoom()V

    goto/16 :goto_0

    .line 3
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->updateSpecshotMode()Z

    goto/16 :goto_0

    .line 4
    :pswitch_3
    invoke-virtual {p0, v1}, Lcom/android/camera/module/common/BaseModuleCameraManager;->updateNearRangeMode(Z)V

    goto/16 :goto_0

    .line 5
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->updateDoDepurple()V

    goto/16 :goto_0

    .line 6
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->updateHistogramStats()V

    goto/16 :goto_0

    .line 7
    :pswitch_6
    invoke-direct {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->updateColorEnhance()V

    goto/16 :goto_0

    .line 8
    :pswitch_7
    invoke-direct {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->updateHFRDeflicker()V

    goto/16 :goto_0

    .line 9
    :pswitch_8
    iget-object p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mModule:Lcom/android/camera/module/Module;

    invoke-interface {p1}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/common/BaseModuleCameraManager;->updateMacroMode(I)V

    goto/16 :goto_0

    .line 10
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->updateAutoZoomMode()V

    goto/16 :goto_0

    .line 11
    :sswitch_0
    invoke-direct {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->updateFrameRatio()V

    goto/16 :goto_0

    .line 12
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->updateVideoLog()V

    goto/16 :goto_0

    .line 13
    :sswitch_2
    invoke-direct {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->updateWatermarkTag()V

    goto :goto_0

    .line 14
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->updateCinematicVideo()V

    goto :goto_0

    .line 15
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->updateUltraPixelPortrait()V

    goto :goto_0

    .line 16
    :sswitch_5
    invoke-direct {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->updateFNumber()V

    goto :goto_0

    .line 17
    :sswitch_6
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->updateSkinColor()V

    goto :goto_0

    .line 18
    :sswitch_7
    invoke-direct {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->updateFaceScore()V

    goto :goto_0

    .line 19
    :sswitch_8
    invoke-direct {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->updateBokeh()V

    goto :goto_0

    .line 20
    :sswitch_9
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getNullableDevice()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LOooO00o/OooO0O0/OooO00o/OooooOo/o000OoOo/OooO0OO;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/OooooOo/o000OoOo/OooO0OO;-><init>(Lcom/android/camera/module/common/BaseModuleCameraManager;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 21
    :sswitch_a
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->updateExposureMeteringMode()V

    goto :goto_0

    .line 22
    :sswitch_b
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->applyVideoHdrMode()V

    goto :goto_0

    .line 23
    :sswitch_c
    invoke-direct {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->updateJpegThumbnailSize()V

    goto :goto_0

    .line 24
    :sswitch_d
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->updateWhiteBalance()V

    goto :goto_0

    .line 25
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->applySatZoomState()V

    goto :goto_0

    .line 26
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->updateBeautyLens()V

    goto :goto_0

    .line 27
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->updateVideoColorRetention()V

    goto :goto_0

    .line 28
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->updateVideoFilter()V

    goto :goto_0

    .line 29
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->updateOIS()V

    goto :goto_0

    .line 30
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->updateFpsRange()V

    goto :goto_0

    .line 31
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->updateExposureTime()V

    goto :goto_0

    .line 32
    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->updateISO()V

    :goto_0
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_d
        0x8 -> :sswitch_c
        0xb -> :sswitch_b
        0x1d -> :sswitch_a
        0x21 -> :sswitch_9
        0x25 -> :sswitch_8
        0x27 -> :sswitch_7
        0x29 -> :sswitch_6
        0x30 -> :sswitch_5
        0x39 -> :sswitch_4
        0x3c -> :sswitch_3
        0x3e -> :sswitch_2
        0x41 -> :sswitch_1
        0xcaff -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4a
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public enableVideoBokeh(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getDeviceLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportVideoBokehAdjust(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    :goto_0
    invoke-virtual {v1, p1}, Lcom/android/camera2/CameraConfigs;->setVideoBokehEnabled(Z)Z

    .line 6
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getActualCameraId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mActualCameraId:I

    return v0
.end method

.method public getBogusCameraId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mBogusCameraId:I

    return v0
.end method

.method public getCamera2Device()Lcom/android/camera2/Camera2Proxy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mCamera2Proxy:Lcom/android/camera2/Camera2Proxy;

    return-object v0
.end method

.method public getCameraDisplayOrientation()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mCameraDisplayOrientation:I

    return v0
.end method

.method public getCameraState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mCameraState:I

    return v0
.end method

.method public getCapabilities()Lcom/android/camera2/CameraCapabilities;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    return-object v0
.end method

.method public getDeviceLock()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mDeviceLock:Ljava/lang/Object;

    return-object v0
.end method

.method public getErrorCallback()Lcom/android/camera/CameraErrorCallbackImpl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mErrorCallback:Lcom/android/camera/CameraErrorCallbackImpl;

    return-object v0
.end method

.method public getEvState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mEvState:I

    return v0
.end method

.method public getEvValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mEvValue:I

    return v0
.end method

.method public getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager;

    return-object v0
.end method

.method public getJpegRotation()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getJpegRotation()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getLastSatFallbackRequestId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mLastSatFallbackRequestId:I

    return v0
.end method

.method public getLastZoomRatio()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mLastZoomRatio:F

    return v0
.end method

.method public getMaxFaceCount()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getMaxFaceCount(Lcom/android/camera2/CameraCapabilities;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getNullableDevice()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/camera2/Camera2Proxy;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mCamera2Proxy:Lcom/android/camera2/Camera2Proxy;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getPictureSize()Lcom/android/camera/CameraSize;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mPictureSize:Lcom/android/camera/CameraSize;

    return-object v0
.end method

.method public getPreviewSize()Lcom/android/camera/CameraSize;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mPreviewSize:Lcom/android/camera/CameraSize;

    return-object v0
.end method

.method public getResultDataCBListener()Lcom/xiaomi/camera/core/IResultDataCallbackListener;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/module/common/BaseModuleCameraManager$1;

    invoke-direct {v0, p0}, Lcom/android/camera/module/common/BaseModuleCameraManager$1;-><init>(Lcom/android/camera/module/common/BaseModuleCameraManager;)V

    return-object v0
.end method

.method public getSatMasterCameraId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mSatMasterCameraId:I

    return v0
.end method

.method public getZoomRatio()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mZoomRatio:F

    return v0
.end method

.method public is3ALockSupported()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->m3ALockSupported:Z

    return v0
.end method

.method public is3ALocked()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->m3ALocked:Z

    return v0
.end method

.method public isAELockOnlySupported()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mAELockOnlySupported:Z

    return v0
.end method

.method public isAeLockSupported()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mAeLockSupported:Z

    return v0
.end method

.method public isAwbLockSupported()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mAwbLockSupported:Z

    return v0
.end method

.method public isBokehFrontCamera()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v0

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getBokehFrontCameraId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCameraDisabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mCameraDisabled:Z

    return v0
.end method

.method public isCameraHardwareError()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mCameraHardwareError:Z

    return v0
.end method

.method public isContinuousFocusSupported()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mContinuousFocusSupported:Z

    return v0
.end method

.method public isDualFrontCamera()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mActualCameraId:I

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getSATFrontCameraId()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mActualCameraId:I

    .line 2
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getBokehFrontCameraId()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isFallbackProcessed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mFallbackProcessed:Z

    return v0
.end method

.method public isFocusAreaSupported()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mFocusAreaSupported:Z

    return v0
.end method

.method public isFocusOrAELockSupported()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mFocusOrAELockSupported:Z

    return v0
.end method

.method public isFrameAvailable()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mIsCameraFrameAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public isFrontCamera()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getBogusCameraId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isInMultiSurfaceSatMode()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->isInMultiSurfaceSatMode()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isInQCFAMode()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportedQcfa(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o000o0o()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMeteringAreaSupported()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mMeteringAreaSupported:Z

    return v0
.end method

.method public isOpenCameraFail()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mOpenCameraFail:Z

    return v0
.end method

.method public isSatFallback()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mIsSatFallback:I

    return v0
.end method

.method public isSingleCamera()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v0

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v0

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getFrontCameraId()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isUWAELocked()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mUltraWideAELocked:Z

    return v0
.end method

.method public isWaitingSnapshot()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mWaitingSnapshot:Z

    return v0
.end method

.method public isZoomRatioBetweenUltraAndWide()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getZoomRatio()F

    move-result v0

    sget v1, Lcom/android/camera/HybridZoomingSystem;->FLOAT_ZOOM_RATIO_ULTR:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getZoomRatio()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isZoomSupported()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mZoomSupported:Z

    return v0
.end method

.method public lockAEAF()V
    .locals 2

    const-string v0, "BaseModuleCameraManager"

    const-string v1, "lockAEAF"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/camera2/FocusManager;->setAeAwbLock(Z)V

    .line 4
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/camera/module/common/BaseModuleCameraManager;->setM3ALocked(Z)V

    return-void
.end method

.method public notifyDualZoom(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-boolean v0, Lcom/android/camera/HybridZoomingSystem;->IS_2_SAT:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera2/Camera2Proxy;->setOpticalZoomToTele(Z)V

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->resumePreview()I

    :cond_1
    return-void
.end method

.method public set3ALockSupported(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->m3ALockSupported:Z

    return-void
.end method

.method public setAELockOnlySupported(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mAELockOnlySupported:Z

    return-void
.end method

.method public setASDEnable(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera2/Camera2Proxy;->setASDEnable(Z)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateASD call setASDEnable with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseModuleCameraManager"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setAWBMode(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->isDeviceAndModuleAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setAWBLock(Z)V

    const-string v0, "manual"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOo00()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/android/camera2/Camera2Proxy;->setAWBMode(I)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera2/Camera2Proxy;->setAWBMode(I)V

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    invoke-static {}, Lcom/android/camera/CameraSettings;->getCustomWB()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/camera2/Camera2Proxy;->setCustomAWB(I)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    .line 8
    invoke-static {p1, v0}, Lcom/android/camera/Util;->parseInt(Ljava/lang/String;I)I

    move-result p1

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedAWBModes(Lcom/android/camera2/CameraCapabilities;)[I

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/camera/Util;->isSupported(I[I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera2/Camera2Proxy;->setAWBMode(I)V

    goto :goto_1

    .line 11
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/camera2/Camera2Proxy;->setAWBMode(I)V

    :goto_1
    return-void
.end method

.method public setAeLockSupported(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mAeLockSupported:Z

    return-void
.end method

.method public setAwbLockSupported(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mAwbLockSupported:Z

    return-void
.end method

.method public setBogusCameraId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mBogusCameraId:I

    return-void
.end method

.method public setCamera2Device(Lcom/android/camera2/Camera2Proxy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mCamera2Proxy:Lcom/android/camera2/Camera2Proxy;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result p1

    iput p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mActualCameraId:I

    .line 3
    iget-object p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mCamera2Proxy:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    :cond_0
    return-void
.end method

.method public setCameraAudioRestriction(Z)V
    .locals 3

    const-string v0, "BaseModuleCameraManager"

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    if-eqz v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->setCameraAudioRestriction(Landroid/hardware/camera2/CameraDevice;I)V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCameraAudioRestriction is enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v1, "CameraDevice was already closed"

    .line 5
    invoke-static {v0, v1, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public setCameraDisabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mCameraDisabled:Z

    return-void
.end method

.method public setCameraDisplayOrientation(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mCameraDisplayOrientation:I

    return-void
.end method

.method public setCameraHardwareError(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mCameraHardwareError:Z

    return-void
.end method

.method public setCameraState(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setCameraState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseModuleCameraManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mCameraState:I

    return-void
.end method

.method public setContinuousFocusSupported(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mContinuousFocusSupported:Z

    return-void
.end method

.method public setErrorCallback(Lcom/android/camera/CameraErrorCallbackImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mErrorCallback:Lcom/android/camera/CameraErrorCallbackImpl;

    return-void
.end method

.method public setEvState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mEvState:I

    return-void
.end method

.method public setEvValue(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mEvValue:I

    return-void
.end method

.method public setFallbackProcessed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mFallbackProcessed:Z

    return-void
.end method

.method public setFocusAreaSupported(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mFocusAreaSupported:Z

    return-void
.end method

.method public setFocusManager(Lcom/android/camera/module/loader/camera2/FocusManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager;

    return-void
.end method

.method public setFocusMode(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->isDeviceAndModuleAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/android/camera/constant/AutoFocus;->convertToFocusMode(Ljava/lang/String;)I

    move-result p1

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedFocusModes(Lcom/android/camera2/CameraCapabilities;)[I

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/Util;->isSupported(I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera2/Camera2Proxy;->setFocusMode(I)V

    :cond_1
    return-void
.end method

.method public setFocusOrAELockSupported(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mFocusOrAELockSupported:Z

    return-void
.end method

.method public setFrameAvailable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mIsCameraFrameAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public setHistogramTagDefault()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getSessionConfigs()Lcom/android/camera2/CaptureSessionConfigurations;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportHistogramTag(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getHistogramValue(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00oOo00()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    sget-object v1, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->CONTROL_HISTOGRAM_FUNCTION_ENABLED:Lcom/android/camera2/vendortag/VendorTag;

    const/4 v2, 0x1

    .line 6
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/android/camera2/CaptureSessionConfigurations;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setLastSatFallbackRequestId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mLastSatFallbackRequestId:I

    return-void
.end method

.method public setLastZoomRatio(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mLastZoomRatio:F

    return-void
.end method

.method public setM3ALocked(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->m3ALocked:Z

    return-void
.end method

.method public setMeteringAreaSupported(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mMeteringAreaSupported:Z

    return-void
.end method

.method public setOpenCameraFail(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mOpenCameraFail:Z

    return-void
.end method

.method public setPictureSize(Lcom/android/camera/CameraSize;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mPictureSize:Lcom/android/camera/CameraSize;

    return-void
.end method

.method public setPreviewSize(Lcom/android/camera/CameraSize;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mPreviewSize:Lcom/android/camera/CameraSize;

    return-void
.end method

.method public setSatFallback(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mIsSatFallback:I

    return-void
.end method

.method public setSatMasterCameraId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mSatMasterCameraId:I

    return-void
.end method

.method public setThermalLevel(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mThermalLevel:I

    return-void
.end method

.method public setUWAELocked(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mUltraWideAELocked:Z

    return-void
.end method

.method public setUseLegacyFlashMode(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mUseLegacyFlashMode:Z

    return-void
.end method

.method public setWaitingSnapshot(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mWaitingSnapshot:Z

    return-void
.end method

.method public setZoomRatio(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mZoomRatio:F

    return-void
.end method

.method public setZoomSupported(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mZoomSupported:Z

    return-void
.end method

.method public unlockAEAF()V
    .locals 5

    const-string v0, "BaseModuleCameraManager"

    const-string/jumbo v1, "unlockAEAF"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v1}, Lcom/android/camera/module/common/BaseModuleCameraManager;->setM3ALocked(Z)V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->isAeLockSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->isDeviceAndModuleAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/Camera2Proxy;->unlockExposure()V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->isUWAELocked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unlockAEAF: focusMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {p0, v2}, Lcom/android/camera/module/common/BaseModuleCameraManager;->setFocusMode(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, v1}, Lcom/android/camera/module/common/BaseModuleCameraManager;->setUWAELocked(Z)V

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/camera2/FocusManager;->setAeAwbLock(Z)V

    :cond_2
    return-void
.end method

.method public updateAutoZoomMode()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAutoZoomEnabled(I)Z

    move-result v0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setAutoZoomMode(I)V

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setAutoZoomScaleOffset(F)V

    :cond_1
    return-void
.end method

.method public updateCinematicVideo()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isCinematicAspectRatioEnabled(I)Z

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setCinematicVideoEnabled(Z)V

    return-void
.end method

.method public updateDoDepurple()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getZoomRatio()F

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v1

    .line 3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0000o0O()Ljava/lang/String;

    move-result-object v2

    .line 4
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 5
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v3

    invoke-virtual {v3}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00OoO0()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    sget v3, Lcom/android/camera/HybridZoomingSystem;->FLOAT_ZOOM_RATIO_ULTR:F

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_0

    .line 6
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getTeleMinZoomRatio()F

    move-result v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    .line 7
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getSATCameraId()I

    move-result v0

    if-eq v1, v0, :cond_6

    :cond_0
    const-string v0, "MACRO"

    .line 8
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getStandaloneMacroCameraId()I

    move-result v0

    if-eq v0, v1, :cond_6

    :cond_1
    const-string v0, "TELE"

    .line 9
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxCameraId()I

    move-result v0

    if-eq v0, v1, :cond_6

    :cond_2
    const-string v0, "ULTRA_TELE"

    .line 10
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraTeleCameraId()I

    move-result v0

    if-eq v0, v1, :cond_6

    :cond_3
    const-string v0, "WIDE"

    .line 11
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v0

    if-eq v0, v1, :cond_6

    :cond_4
    const-string v0, "ULTRA_WIDE"

    .line 12
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v0

    if-eq v0, v1, :cond_6

    :cond_5
    const-string v0, "SAT"

    .line 13
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getSATCameraId()I

    move-result v0

    if-ne v0, v1, :cond_7

    :cond_6
    move v0, v4

    goto :goto_0

    :cond_7
    move v0, v5

    .line 14
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/Camera2Proxy;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->isHDREnabled()Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_1

    :cond_8
    move v4, v0

    .line 15
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->isShotQueueMultitasking()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mModule:Lcom/android/camera/module/Module;

    .line 16
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    const/16 v2, 0xad

    if-ne v0, v2, :cond_a

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o000Ooo0()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    move v4, v5

    :cond_a
    if-eqz v4, :cond_c

    .line 17
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getSATCameraId()I

    move-result v0

    if-ne v0, v1, :cond_b

    .line 18
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getSatPhysicalCameraId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera2/CameraCapabilities;

    goto :goto_2

    .line 19
    :cond_b
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_c

    .line 20
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSensorDepurpleDisable(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_3

    :cond_c
    move v5, v4

    .line 21
    :goto_3
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/camera2/Camera2Proxy;->setDodepurpleEnabled(Z)V

    return-void
.end method

.method public updateExposureMeteringMode()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->isDeviceAndModuleAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->getExposureMeteringMode()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setExposureMeteringMode(I)V

    return-void
.end method

.method public updateFpsRange()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isPortraitModeBackOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getPreferBokehFpsRange(Lcom/android/camera2/CameraCapabilities;)Landroid/util/Range;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setFpsRange(Landroid/util/Range;)V

    :cond_0
    return-void
.end method

.method public updateFpsRange(ZLandroid/util/Range;)V
    .locals 3

    const-string v0, "BaseModuleCameraManager"

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHfrFPSLower = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mHfrFPSUpper = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera2/Camera2Proxy;->setFpsRange(Landroid/util/Range;)V

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera2/Camera2Proxy;->setVideoFpsRange(Landroid/util/Range;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mModule:Lcom/android/camera/module/Module;

    invoke-interface {p2}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/camera/CameraSettings;->isVhdrOn(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportQcomVideoHdr(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    invoke-direct {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->updateVideoFpsRangeNeedForHDR()Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x18

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p2, 0x1e

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object p1

    .line 11
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateFpsRange: vhdrRang = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/camera2/Camera2Proxy;->setFpsRange(Landroid/util/Range;)V

    .line 13
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/camera2/Camera2Proxy;->setVideoFpsRange(Landroid/util/Range;)V

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->updateFpsRangeDefault()V

    :goto_0
    return-void
.end method

.method public updateFpsRangeDefault()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedFpsRange(Lcom/android/camera2/CameraCapabilities;)[Landroid/util/Range;

    move-result-object v1

    const-string v2, "BaseModuleCameraManager"

    if-eqz v1, :cond_c

    .line 3
    array-length v3, v1

    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v3, 0x0

    .line 4
    aget-object v4, v1, v3

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v5

    invoke-static {v5}, Lcom/android/camera/module/video/VideoUtil;->getHSRValue(I)I

    move-result v5

    const/16 v6, 0x3c

    const/16 v7, 0x1e

    if-ne v5, v6, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->isVideoDynamicFpsOn(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    new-instance v1, Landroid/util/Range;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    goto/16 :goto_2

    .line 8
    :cond_1
    new-instance v1, Landroid/util/Range;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    goto/16 :goto_2

    :cond_2
    const/16 v8, 0x18

    if-nez v5, :cond_3

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v9

    invoke-static {v0, v9}, Lcom/android/camera/CameraSettings;->isVideoDynamicFpsOn(II)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 10
    new-instance v1, Landroid/util/Range;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    goto :goto_2

    :cond_3
    if-ne v5, v8, :cond_4

    .line 11
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    goto :goto_2

    .line 12
    :cond_4
    array-length v5, v1

    :goto_0
    if-ge v3, v5, :cond_7

    aget-object v8, v1, v3

    .line 13
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateFpsRange: available fps:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ge v9, v10, :cond_5

    goto :goto_1

    .line 15
    :cond_5
    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v9

    invoke-virtual {v8}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v10

    if-ne v9, v10, :cond_6

    .line 16
    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ge v9, v10, :cond_6

    :goto_1
    move-object v4, v8

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    move-object v1, v4

    .line 17
    :goto_2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOo00()Z

    move-result v3

    if-eqz v3, :cond_b

    if-eqz v1, :cond_b

    const/16 v3, 0xb4

    if-eq v0, v3, :cond_8

    const/16 v3, 0xa9

    if-ne v0, v3, :cond_b

    .line 18
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v3

    invoke-virtual {v3}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00Ooo0O()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 19
    :cond_8
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyET()Lcom/android/camera/data/data/config/ComponentManuallyET;

    move-result-object v3

    .line 20
    invoke-virtual {v3, v0}, Lcom/android/camera/data/data/config/ComponentManuallyET;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 21
    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v6, :cond_9

    const-wide/32 v5, 0xfe5d30

    cmp-long v5, v3, v5

    if-gtz v5, :cond_a

    :cond_9
    if-ne v0, v7, :cond_b

    const-wide/32 v5, 0x1fc1e20

    cmp-long v3, v3, v5

    if-lez v3, :cond_b

    .line 22
    :cond_a
    new-instance v1, Landroid/util/Range;

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 23
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bestRange = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setFpsRange(Landroid/util/Range;)V

    .line 25
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setVideoFpsRange(Landroid/util/Range;)V

    return-void

    :cond_c
    :goto_3
    const-string/jumbo v0, "updateFpsRange: no fps range is available"

    .line 26
    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateFrontMirror()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOO0O()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0O00o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontMirror()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mModule:Lcom/android/camera/module/Module;

    .line 5
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->isFrontCamera()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->getMirrorSettingUiNeed(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setFrontMirror(Z)V

    :cond_1
    return-void
.end method

.method public updateHdr10VideoMode()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigHDR10()Lcom/android/camera/hdr10/ComponentConfigHDR10;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/hdr10/ComponentConfigHDR10;->isSupportedHdr10()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigHDR10()Lcom/android/camera/hdr10/ComponentConfigHDR10;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/hdr10/ComponentConfigHDR10;->isSupportedHdr10Plus()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10VideoModeOn()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10PlusVideoModeOn()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10ProVideoModeOn()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTrueColourVideoModeOn()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 7
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setHdr10VideoMode(Z)V

    :cond_3
    return-void
.end method

.method public updateHistogramStats()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isProVideoHistogramOpen(I)Z

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getNullableDevice()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LOooO00o/OooO0O0/OooO00o/OooooOo/o000OoOo/OooO0O0;

    invoke-direct {v2, v0}, LOooO00o/OooO0O0/OooO00o/OooooOo/o000OoOo/OooO0O0;-><init>(Z)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public updateISO()V
    .locals 3

    const v0, 0x7f120720

    .line 1
    invoke-static {v0}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "pref_qc_camera_iso_key"

    .line 2
    invoke-static {v1, v0}, Lcom/android/camera/module/image/ImageModuleUtil;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-static {v1, v2}, Lcom/android/camera/Util;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->getMaxIso(Lcom/android/camera2/CameraCapabilities;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setISO(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera2/Camera2Proxy;->setISO(I)V

    :goto_0
    return-void
.end method

.method public updateMacroMode(I)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result p1

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera2/Camera2Proxy;->setMacroMode(Z)V

    return-void
.end method

.method public updateNearRangeMode(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSettingNearRangeEnable()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/camera2/Camera2Proxy;->sendSatFallbackDisableRequest(ZZ)V

    return-void
.end method

.method public updateOIS()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isPortraitModeBackOn()Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mModule:Lcom/android/camera/module/Module;

    invoke-interface {v1}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getZoomRatio()F

    move-result v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera2/Camera2Proxy;->setEnableOIS(Z)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    const/16 v3, 0xa7

    if-ne v0, v3, :cond_1

    const v0, 0x7f1206ad

    .line 5
    invoke-static {v0}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "pref_qc_camera_exposuretime_key"

    .line 6
    invoke-static {v3, v0}, Lcom/android/camera/module/image/ImageModuleUtil;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/32 v5, 0x3b9aca00

    cmp-long v0, v3, v5

    if-lez v0, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera2/Camera2Proxy;->setEnableOIS(Z)V

    return-void

    .line 9
    :cond_1
    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0:Z

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    if-nez v0, :cond_2

    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o:Z

    if-nez v0, :cond_2

    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00o0O:Z

    if-nez v0, :cond_2

    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0o0:Z

    if-nez v0, :cond_2

    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00000O0:Z

    if-eqz v0, :cond_3

    .line 10
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->isDualCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    cmpl-float v0, v1, v4

    if-lez v0, :cond_3

    .line 11
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera2/Camera2Proxy;->setEnableOIS(Z)V

    return-void

    .line 12
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->isDualCamera()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isTeleOISSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-nez v0, :cond_4

    cmpl-float v0, v1, v4

    if-lez v0, :cond_4

    .line 14
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera2/Camera2Proxy;->setEnableOIS(Z)V

    return-void

    .line 15
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera2/Camera2Proxy;->setEnableOIS(Z)V

    return-void
.end method

.method public updateSATZooming(Z)V
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0o0Oo()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-boolean v0, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setSatIsZooming(Z)V

    return-void
.end method

.method public updateSkinColor()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->getSkinColorType()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setSkinColor(I)V

    :cond_0
    return-void
.end method

.method public updateSpecshotMode()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mModule:Lcom/android/camera/module/Module;

    invoke-interface {v2}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getZoomRatio()F

    move-result v2

    .line 4
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOo00()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return v4

    :cond_0
    const/16 v3, 0xa3

    if-eq v0, v3, :cond_1

    const/16 v3, 0xaf

    if-ne v0, v3, :cond_3

    .line 5
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_3

    .line 6
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 7
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getSATCameraId()I

    move-result v0

    if-ne v0, v1, :cond_3

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v2, v0

    if-nez v0, :cond_3

    const/4 v4, 0x1

    .line 8
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera2/Camera2Proxy;->setSpecshotModeEnable(Z)V

    return v4
.end method

.method public updateTargetZoom()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->readTargetZoom()F

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setTargetZoom(F)V

    :cond_0
    return-void
.end method

.method public updateThermalLevel()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mThermalLevel:I

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setThermalLevel(I)V

    :cond_0
    return-void
.end method

.method public updateUltraPixelPortrait()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelPortraitFrontOn()Z

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setUltraPixelPortrait(Z)V

    return-void
.end method

.method public updateVideoBokeh(Z)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoBokehRatio()F

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->isFrontCamera()Z

    move-result v1

    const-string v2, "BaseModuleCameraManager"

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "frontVideoBokeh: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setVideoBokehLevelFront(F)V

    goto :goto_0

    :cond_0
    float-to-int v0, v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "backVideoBokeh: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setVideoBokehLevelBack(I)V

    :goto_0
    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoBokehColorRetentionMode()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->isFrontCamera()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/camera2/Camera2Proxy;->setVideoFilterColorRetentionMode(IZ)V

    :cond_1
    return-void
.end method

.method public updateVideoColorRetention()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportMasterFilter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoMasterFilter()I

    move-result v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->getShaderEffect()I

    move-result v0

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->isFrontCamera()Z

    move-result v1

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setVideoFilterColorRetentionFront(Z)V

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setVideoFilterColorRetentionBack(Z)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    if-eqz v1, :cond_3

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setVideoFilterColorRetentionFront(Z)V

    goto :goto_1

    .line 8
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setVideoFilterColorRetentionBack(Z)V

    :goto_1
    return-void
.end method

.method public updateVideoLog()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isProVideoLogOpen(I)Z

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getNullableDevice()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LOooO00o/OooO0O0/OooO00o/OooooOo/o000OoOo/OooO00o;

    invoke-direct {v2, v0}, LOooO00o/OooO0O0/OooO00o/OooooOo/o000OoOo/OooO00o;-><init>(Z)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public updateWhiteBalance()V
    .locals 2

    const-string/jumbo v0, "pref_camera_whitebalance_key"

    const-string v1, "1"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/module/image/ImageModuleUtil;->getManualValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/module/common/BaseModuleCameraManager;->setAWBMode(Ljava/lang/String;)V

    return-void
.end method

.method public useLegacyFlashMode()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/common/BaseModuleCameraManager;->mUseLegacyFlashMode:Z

    return v0
.end method
