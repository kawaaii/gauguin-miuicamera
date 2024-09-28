.class public Lcom/android/camera/dualvideo/DualVideoModuleBase;
.super Lcom/android/camera/module/VideoBase;
.source "DualVideoModuleBase.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$TopConfigProtocol;
.implements Lcom/android/camera/dualvideo/remote/AvailabilityCallback;
.implements Lcom/android/camera/dualvideo/remote/ConnectivityCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/dualvideo/DualVideoModuleBase$MyDualVideoRenderListener;
    }
.end annotation


# instance fields
.field public mAudioMonitorPlayer:Lcom/android/camera/AudioMonitorPlayer;

.field public mCoverAnimNeed:Z

.field public volatile mCurrentTapId:I

.field public mDissmisBlurOneTime:Z

.field public final mFocusCallback:Lcom/android/camera2/Camera2Proxy$FocusCallback;

.field public mIsStopKaraoke:Z

.field public mKeepRecorderWhenSwitching:Z

.field public mMainFrameIsAvailable:Z

.field public mMultiRecorderManager:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

.field public mRecordSuccess:Z

.field public mRecorderBusy:Z

.field public mRecorderPausedTimes:I

.field public mRecorderResumeTimes:I

.field public mRemoteOnlineController:Lcom/android/camera/dualvideo/remote/RemoteOnlineController;

.field public mRenderCaptureTimes:I

.field public mRenderManager:Lcom/android/camera/dualvideo/render/RenderManager;

.field public mRenderTrigger:Lcom/android/camera/dualvideo/render/RenderTrigger;

.field public mRotateAnimator:Lcom/android/camera/dualvideo/view/RotateAnimator;

.field public mSkipMainFrame:Z

.field public mSubCamera2Device:Lcom/android/camera2/Camera2Proxy;

.field public mSubFocusAreaSupported:Z

.field public mSubFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager;

.field public mSubFrameReady:Z

.field public mSubMeteringAreaSupported:Z

.field public mVideoRecordTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoBase;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mSubFrameReady:Z

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mCoverAnimNeed:Z

    .line 4
    iput-boolean p1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mIsStopKaraoke:Z

    .line 5
    iput-boolean p1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mRecorderBusy:Z

    .line 6
    iput-boolean v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mSkipMainFrame:Z

    .line 7
    iput-boolean p1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mDissmisBlurOneTime:Z

    .line 8
    new-instance p1, LOooO00o/OooO0O0/OooO00o/OoooOOo/OooOo00;

    invoke-direct {p1, p0}, LOooO00o/OooO0O0/OooO00o/OoooOOo/OooOo00;-><init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;)V

    iput-object p1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mFocusCallback:Lcom/android/camera2/Camera2Proxy$FocusCallback;

    return-void
.end method

.method public static synthetic OooO(Lcom/android/camera/dualvideo/render/RenderManager;)Ljava/lang/Integer;
    .locals 0

    .line 2
    iget p0, p0, Lcom/android/camera/dualvideo/render/RenderManager;->mStatCaptureTimes:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic OooO(Lcom/android/camera2/Camera2Proxy;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->setAWBLock(Z)V

    return-void
.end method

.method public static synthetic OooO00o(Landroid/view/MotionEvent;Lcom/android/camera/dualvideo/render/RenderManager;)Ljava/lang/Boolean;
    .locals 0

    .line 35
    invoke-virtual {p1, p0}, Lcom/android/camera/dualvideo/render/RenderManager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic OooO00o(Landroid/util/Range;Lcom/android/camera2/Camera2Proxy;)V
    .locals 0

    .line 45
    invoke-virtual {p1, p0}, Lcom/android/camera2/Camera2Proxy;->setFpsRange(Landroid/util/Range;)V

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/dualvideo/DualVideoModuleBase;Lcom/android/camera2/Camera2Proxy;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->applyZoomForDevices(Lcom/android/camera2/Camera2Proxy;)V

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/dualvideo/remote/RemoteDevice;Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;)V
    .locals 3

    .line 47
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAvailabilityStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-virtual {p1, p0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->onAvailabilityStateChanged(Lcom/android/camera/dualvideo/remote/RemoteDevice;)V

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;Z)V
    .locals 0

    .line 16
    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->switchThumbnailFunction(Z)V

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/protocol/ModeProtocol$ModeSelector;Z)V
    .locals 0

    .line 14
    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$ModeSelector;->switchModeOrExternalTipLayout(Z)V

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)V
    .locals 1

    .line 44
    iget v0, p1, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mPresentZoom:F

    iget p1, p1, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mRelativeZoom:F

    div-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->setZoomRatio(F)V

    return-void
.end method

.method public static synthetic OooO00o(Ljava/util/Map;)V
    .locals 2

    const-string v0, "attr_rol_streaming"

    const-string/jumbo v1, "start"

    .line 49
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic OooO00o([ILcom/android/camera2/Camera2Proxy;)V
    .locals 0

    .line 18
    invoke-virtual {p1, p0}, Lcom/android/camera2/Camera2Proxy;->setMtkPipDevices([I)V

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Z
    .locals 1

    .line 46
    iget p0, p0, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mCameraId:I

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooO00o(Lcom/android/camera/dualvideo/util/UserSelectData;Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Z
    .locals 0

    .line 43
    iget-object p1, p1, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mGridLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/util/UserSelectData;->getmGridLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooO00o(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/dualvideo/util/UserSelectData;)Z
    .locals 0

    .line 42
    invoke-virtual {p1}, Lcom/android/camera/dualvideo/util/UserSelectData;->getCameraId()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooO0O0(Lcom/android/camera/dualvideo/remote/RemoteDevice;Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;)V
    .locals 0

    .line 13
    invoke-virtual {p1, p0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->onConnectivityStateChanged(Lcom/android/camera/dualvideo/remote/RemoteDevice;)V

    return-void
.end method

.method public static synthetic OooO0O0(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/dualvideo/util/UserSelectData;)V
    .locals 2

    .line 5
    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getConfigs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooOOo/o0ooOoO;

    invoke-direct {v1, p1}, LOooO00o/OooO0O0/OooO00o/OoooOOo/o0ooOoO;-><init>(Lcom/android/camera/dualvideo/util/UserSelectData;)V

    .line 6
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, LOooO00o/OooO0O0/OooO00o/OoooOOo/OooooO0;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/OoooOOo/OooooO0;-><init>(Lcom/android/camera2/Camera2Proxy;)V

    .line 7
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic OooO0O0(Ljava/util/Map;)V
    .locals 2

    const-string v0, "attr_rol_recording"

    const-string/jumbo v1, "stop"

    .line 3
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic OooO0O0(ZLcom/android/camera/protocol/ModeProtocol$ActionProcessing;)V
    .locals 0

    .line 2
    invoke-interface {p1, p0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->showOrHideBottom(Z)V

    return-void
.end method

.method public static synthetic OooO0O0(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Z
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->getFaceType()Lcom/android/camera/dualvideo/render/FaceType;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/render/FaceType;->FACE_REMOTE:Lcom/android/camera/dualvideo/render/FaceType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooO0Oo(Lcom/android/camera/dualvideo/render/RenderManager;)Landroid/view/Surface;
    .locals 3

    .line 3
    sget-object v0, Lcom/android/camera/dualvideo/util/RenderSourceType;->SUB_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-static {}, Lcom/android/camera/dualvideo/render/RenderUtil;->getSubPreviewSize()Landroid/util/Size;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/dualvideo/render/RenderManager;->genOrUpdateRenderSource(Lcom/android/camera/dualvideo/util/RenderSourceType;Landroid/util/Size;Lio/reactivex/CompletableEmitter;)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic OooO0o(Lcom/android/camera/dualvideo/render/RenderManager;)V
    .locals 1

    const/high16 v0, 0x42160000    # 37.5f

    .line 2
    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/render/RenderManager;->setTopOffset(I)V

    return-void
.end method

.method public static synthetic OooO0o(Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setFocusViewType(Z)V

    return-void
.end method

.method public static synthetic OooO0o(Lcom/android/camera2/Camera2Proxy;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->lockExposure(Z)V

    return-void
.end method

.method public static synthetic OooO0o0(Lcom/android/camera/dualvideo/render/RenderManager;)V
    .locals 1

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/render/RenderManager;->enableDrawBlur(Z)V

    return-void
.end method

.method public static synthetic OooO0oO(Lcom/android/camera/dualvideo/render/RenderManager;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/render/RenderManager;->setTopOffset(I)V

    return-void
.end method

.method public static synthetic OooO0oO(Lcom/android/camera2/Camera2Proxy;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->isFacingFront()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->startFaceDetection()V

    :cond_0
    return-void
.end method

.method public static synthetic OooO0oo(Lcom/android/camera/dualvideo/render/RenderManager;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/RenderManager;->makeMainSourceDrawable()V

    return-void
.end method

.method public static synthetic OooO0oo(Lcom/android/camera2/Camera2Proxy;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->setExposureCompensation(I)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->setAWBLock(Z)V

    .line 4
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetExposure()V

    .line 5
    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->resumePreview()I

    return-void
.end method

.method public static synthetic OooOO0(Lcom/android/camera/dualvideo/render/RenderManager;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/render/RenderManager;->enableDrawBlur(Z)V

    return-void
.end method

.method public static synthetic OooOO0O(Lcom/android/camera/dualvideo/render/RenderManager;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/RenderManager;->updateTextureId()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/dualvideo/DualVideoModuleBase;)Lcom/android/camera/dualvideo/render/RenderTrigger;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mRenderTrigger:Lcom/android/camera/dualvideo/render/RenderTrigger;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/android/camera/dualvideo/DualVideoModuleBase;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mSubFrameReady:Z

    return p1
.end method

.method private addViewForGestureRecognize(Landroid/view/ViewGroup;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/camera/dualvideo/view/TouchEventView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/dualvideo/view/TouchEventView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooOOo/o00O0O;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooOOo/o00O0O;-><init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/dualvideo/view/TouchEventView;->setListener(Lcom/android/camera/dualvideo/view/TouchEventView$TouchEventListener;)V

    .line 3
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private applyZoomForDevices(Lcom/android/camera2/Camera2Proxy;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getSelectedData()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooOOo/OoooO0;

    invoke-direct {v1, p1}, LOooO00o/OooO0O0/OooO00o/OoooOOo/OoooO0;-><init>(Lcom/android/camera2/Camera2Proxy;)V

    .line 2
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooOOo/OooOo0o;

    invoke-direct {v1, p1}, LOooO00o/OooO0O0/OooO00o/OoooOOo/OooOo0o;-><init>(Lcom/android/camera2/Camera2Proxy;)V

    .line 3
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private getFocusManager(I)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Optional<",
            "Lcom/android/camera/module/loader/camera2/FocusManager;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mSubCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mSubFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method private getMainContent()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    .line 2
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method private getModeSelector()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/camera/protocol/ModeProtocol$ModeSelector;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa3

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ModeSelector;

    .line 2
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method private getOperatingMode(Lcom/android/camera2/Camera2Proxy;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->isFacingFront()Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x8009

    return p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportDualVideoOpMode(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x8010

    return p1

    :cond_1
    const p1, 0x8004

    return p1
.end method

.method private initDualVideoController()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x1af

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ModuleContent;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ModuleContent;->getParent()Landroid/view/ViewGroup;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    new-instance v2, LOooO00o/OooO0O0/OooO00o/OoooOOo/o00oO0o;

    invoke-direct {v2, p0, v0}, LOooO00o/OooO0O0/OooO00o/OoooOOo/o00oO0o;-><init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private initRenderTrigger()V
    .locals 3

    .line 1
    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OoooOOo:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    goto :goto_0

    :cond_0
    const/16 v0, 0x1e

    .line 2
    :goto_0
    new-instance v1, Lcom/android/camera/dualvideo/render/RenderTrigger;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/camera/dualvideo/render/RenderTrigger;-><init>(Lcom/android/camera/ui/RenderEngineAdapter;I)V

    iput-object v1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mRenderTrigger:Lcom/android/camera/dualvideo/render/RenderTrigger;

    return-void
.end method

.method private onMediaRecorderReleased()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mRecorderBusy:Z

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/module/AudioController;->restoreAudio(Landroid/content/Context;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_0

    .line 4
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.camera.action.stop_video_recording"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->keepScreenOnAwhile()V

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->doLaterReleaseIfNeed()V

    return-void
.end method

.method private registerRecorderManager()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x1ad

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$StandaloneRecorderProtocol;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImplFactory()Lcom/android/camera/module/impl/ImplFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v1, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/module/impl/ImplFactory;->initModulePersistent(Lcom/android/camera/ActivityBase;[I)V

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$StandaloneRecorderProtocol;

    .line 4
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$StandaloneRecorderProtocol;->getRecorderManager(Lcom/android/camera/storage/ImageSaver;)Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMultiRecorderManager:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    .line 5
    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->isRecording()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderRecording:Z

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-object v1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMultiRecorderManager:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    invoke-virtual {v1}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->isRecordingPaused()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingPaused:Z

    return-void
.end method

.method private registerRemoteService()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x1a6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$RemoteOnlineProtocol;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImplFactory()Lcom/android/camera/module/impl/ImplFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v1, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/module/impl/ImplFactory;->initModulePersistent(Lcom/android/camera/ActivityBase;[I)V

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;

    iput-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mRemoteOnlineController:Lcom/android/camera/dualvideo/remote/RemoteOnlineController;

    return-void
.end method

.method private registerRenderManager()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x1ae

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$DualVideoRenderProtocol;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImplFactory()Lcom/android/camera/module/impl/ImplFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v1, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/module/impl/ImplFactory;->initModulePersistent(Lcom/android/camera/ActivityBase;[I)V

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$DualVideoRenderProtocol;

    .line 4
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$DualVideoRenderProtocol;->getRenderManager()Lcom/android/camera/dualvideo/render/RenderManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mRenderManager:Lcom/android/camera/dualvideo/render/RenderManager;

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooOOo/OooOoOO;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooOOo/OooOoOO;-><init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 6
    new-instance v0, LOooO00o/OooO0O0/OooO00o/OoooOOo/OooOoo0;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/OoooOOo/OooOoo0;-><init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;)V

    invoke-static {v0}, Lio/reactivex/Single;->create(Lio/reactivex/SingleOnSubscribe;)Lio/reactivex/Single;

    move-result-object v0

    .line 7
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooOOo/OooOo0;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooOOo/OooOo0;-><init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;)V

    .line 8
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->setExternalFrameProcessor(Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;)V

    return-void
.end method

.method private showSetupWizard()V
    .locals 2

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00O0ooo()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-static {v0}, Lcom/xiaomi/camera/rcs/network/NetworkDiagnostics;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/xiaomi/camera/rcs/network/NetworkDiagnostics;->isBluetoothEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getSetupWizard()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/OoooOOo/OooO0OO;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooOOo/OooO0OO;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    .line 6
    :cond_3
    :goto_0
    sget-object v1, Lcom/android/camera/fragment/dialog/RemoteOnlineTipsDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->showDialogFragment(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private startMainPreviewSession()V
    .locals 10

    .line 1
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startPreviewSession"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeviceAndModuleAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->checkDisplayOrientation()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera2/Camera2Proxy;->setFocusCallback(Lcom/android/camera2/Camera2Proxy$FocusCallback;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getErrorCallback()Lcom/android/camera/CameraErrorCallbackImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setErrorCallback(Lcom/android/camera2/Camera2Proxy$CameraErrorCallback;)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setPictureSize(Lcom/android/camera/CameraSize;)V

    .line 7
    new-instance v3, Landroid/view/Surface;

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getSurfaceCreatedTimestamp()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->setSurfaceCreatedTimestamp(J)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->setDynamicSkipFrame(I)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 11
    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getOperatingMode(Lcom/android/camera2/Camera2Proxy;)I

    move-result v7

    const/4 v8, 0x0

    move-object v9, p0

    .line 12
    invoke-virtual/range {v2 .. v9}, Lcom/android/camera2/Camera2Proxy;->startVideoPreviewSession(Landroid/view/Surface;IILandroid/view/Surface;IZLcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V

    .line 13
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/FocusManager;->resetFocused()V

    .line 14
    iput-boolean v1, p0, Lcom/android/camera/module/VideoBase;->mPreviewing:Z

    return-void
.end method

.method private startPreviewSession()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->startMainPreviewSession()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/OoooOOo/o00000oO;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooOOo/o00000oO;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 3
    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->initDualVideoController()V

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooOOo/Oooooo0;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooOOo/Oooooo0;-><init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private stopRecorder()V
    .locals 2

    .line 1
    new-instance v0, LOooO00o/OooO0O0/OooO00o/OoooOOo/o0OOO0o;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/OoooOOo/o0OOO0o;-><init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;)V

    invoke-static {v0}, Lio/reactivex/Single;->create(Lio/reactivex/SingleOnSubscribe;)Lio/reactivex/Single;

    move-result-object v0

    .line 2
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooOOo/OooOOo;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooOOo/OooOOo;-><init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;)V

    .line 3
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private trackDualVideo()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00OoOOo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-wide v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mVideoRecordTime:J

    .line 4
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getRecordType()Lcom/android/camera/dualvideo/recorder/RecordType;

    move-result-object v1

    sget-object v2, Lcom/android/camera/dualvideo/recorder/RecordType;->MERGED:Lcom/android/camera/dualvideo/recorder/RecordType;

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "value_record_merged"

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "value_record_standalone"

    :goto_0
    iget v2, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mRecorderPausedTimes:I

    iget v3, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mRecorderResumeTimes:I

    iget v4, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mRenderCaptureTimes:I

    .line 6
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/statistic/CameraStatUtils;->trackMultiCameraDualVideo(Ljava/lang/String;Ljava/lang/String;III)V

    goto :goto_1

    .line 7
    :cond_1
    iget-wide v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mVideoRecordTime:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "attr_video_duration"

    invoke-static {v1, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackDualVideoCommonAttr(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private updateFpsRange()V
    .locals 3

    .line 1
    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OoooOOo:Z

    if-nez v0, :cond_1

    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00oO0O:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x1e

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v0, 0x18

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    .line 4
    :goto_1
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setFpsRange(Landroid/util/Range;)V

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LOooO00o/OooO0O0/OooO00o/OoooOOo/OooOooO;

    invoke-direct {v2, v0}, LOooO00o/OooO0O0/OooO00o/OoooOOo/OooOooO;-><init>(Landroid/util/Range;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private updateRemoteCameraTopIcon()V
    .locals 4

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00O0ooo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0x200

    aput v3, v1, v2

    .line 3
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    :cond_0
    return-void
.end method

.method private updateSubCameraFocusMode(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooOOo/Ooooo00;

    invoke-direct {v1, p0, p1}, LOooO00o/OooO0O0/OooO00o/OoooOOo/Ooooo00;-><init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public synthetic OooO()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->addOrDelRemoteConfig(Z)V

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->switchRenderRemoteItem()V

    return-void
.end method

.method public synthetic OooO00o(ILcom/android/camera2/Camera2Proxy;)V
    .locals 2

    .line 36
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p2}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedFocusModes(Lcom/android/camera2/CameraCapabilities;)[I

    move-result-object v0

    .line 38
    invoke-static {p1, v0}, Lcom/android/camera/Util;->isSupported(I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    invoke-virtual {p2, p1}, Lcom/android/camera2/Camera2Proxy;->setFocusMode(I)V

    :cond_1
    return-void

    .line 40
    :cond_2
    :goto_0
    sget-object p2, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateSubCameraFocusMode: focusMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", but device is null..."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public synthetic OooO00o(Landroid/view/ViewGroup;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->addViewForGestureRecognize(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public synthetic OooO00o(Lcom/android/camera/dualvideo/render/LayoutType;Landroid/graphics/Point;ZLcom/android/camera/module/loader/camera2/FocusManager;)V
    .locals 4

    .line 19
    invoke-virtual {p4, p1}, Lcom/android/camera/FocusManagerAbstract;->setRenderComposeType(Lcom/android/camera/dualvideo/render/LayoutType;)V

    .line 20
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSingleTapUp: id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mCurrentTapId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", is main camera = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mCurrentTapId:I

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 21
    invoke-interface {v3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 22
    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iget p1, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {p4, p1, p2, p3}, Lcom/android/camera/module/loader/camera2/FocusManager;->onSingleTapUp(IIZ)V

    return-void
.end method

.method public synthetic OooO00o(Lcom/android/camera/dualvideo/render/RenderManager;)V
    .locals 1

    .line 11
    new-instance v0, Lcom/android/camera/dualvideo/DualVideoModuleBase$MyDualVideoRenderListener;

    invoke-direct {v0, p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase$MyDualVideoRenderListener;-><init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;)V

    invoke-virtual {p1, v0}, Lcom/android/camera/dualvideo/render/RenderManager;->setListener(Lcom/android/camera/dualvideo/render/RenderManager$DualVideoRenderListener;)V

    return-void
.end method

.method public synthetic OooO00o(Lcom/android/camera/module/loader/camera2/FocusTask;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->getFocusTrigger()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "focusTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->getElapsedTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms focused="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->isSuccess()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " waitForRecording="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mSubFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager;

    .line 4
    invoke-virtual {v3}, Lcom/android/camera/module/loader/camera2/FocusManager;->isFocusingSnapOnFinish()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {}, Lcom/android/camera/module/common/ModuleUtil;->getMainProtocol()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setFocusViewType(Z)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mSubFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/module/loader/camera2/FocusManager;->onFocusResult(Lcom/android/camera/module/loader/camera2/FocusTask;)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SensorStateManager;->reset()V

    .line 9
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/camera/module/VideoBase;->m3ALocked:Z

    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object p1

    sget-object v0, LOooO00o/OooO0O0/OooO00o/OoooOOo/Oooo00O;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooOOo/Oooo00O;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public synthetic OooO00o(Lcom/android/camera2/Camera2Proxy;)V
    .locals 4

    .line 24
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getEvState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 25
    invoke-virtual {p1, v1}, Lcom/android/camera2/Camera2Proxy;->setAWBLock(Z)V

    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getEvState()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getEvState()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getEvValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/camera2/Camera2Proxy;->setExposureCompensation(I)V

    .line 28
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getEvState()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 29
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getEvValue()I

    move-result v0

    if-eqz v0, :cond_2

    .line 30
    invoke-virtual {p1, v2}, Lcom/android/camera2/Camera2Proxy;->setAWBLock(Z)V

    goto :goto_0

    .line 31
    :cond_2
    invoke-virtual {p1, v1}, Lcom/android/camera2/Camera2Proxy;->setAWBLock(Z)V

    .line 32
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->resumePreview()I

    return-void
.end method

.method public synthetic OooO00o(Lio/reactivex/SingleEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientation()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic OooO00o(Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->onMediaRecorderReleased()V

    return-void
.end method

.method public synthetic OooO00o(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/dualvideo/render/RenderManager;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/camera/dualvideo/render/RenderManager;->setOrientation(I)V

    return-void
.end method

.method public synthetic OooO00o(Ljava/lang/String;Lio/reactivex/CompletableEmitter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/dualvideo/render/RenderManager;

    sget-object v1, Lcom/android/camera/dualvideo/util/RenderSourceType;->REMOTE_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    sget-object v2, Lcom/android/camera/dualvideo/render/RenderUtil;->REMOTE_SIZE:Landroid/util/Size;

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/camera/dualvideo/render/RenderManager;->genOrUpdateRenderSource(Lcom/android/camera/dualvideo/util/RenderSourceType;Landroid/util/Size;Lio/reactivex/CompletableEmitter;)Landroid/view/Surface;

    move-result-object p2

    .line 51
    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mRemoteOnlineController:Lcom/android/camera/dualvideo/remote/RemoteOnlineController;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->startStreaming(Ljava/lang/String;Landroid/view/Surface;)V

    return-void
.end method

.method public synthetic OooO00o(ZLcom/android/camera/protocol/ModeProtocol$ActionProcessing;)V
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooOOo/Oooo0oo;

    invoke-direct {v1, p2, p1}, LOooO00o/OooO0O0/OooO00o/OoooOOo/Oooo0oo;-><init>(Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic OooO00o(ZLcom/android/camera/protocol/ModeProtocol$ModeSelector;)V
    .locals 2

    .line 15
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooOOo/OoooO;

    invoke-direct {v1, p2, p1}, LOooO00o/OooO0O0/OooO00o/OoooOOo/OoooO;-><init>(Lcom/android/camera/protocol/ModeProtocol$ModeSelector;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic OooO00o(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 34
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooOOo/Ooooooo;

    invoke-direct {v1, p1}, LOooO00o/OooO0O0/OooO00o/OoooOOo/Ooooooo;-><init>(Landroid/view/MotionEvent;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public synthetic OooO0O0(Lcom/android/camera/dualvideo/render/RenderManager;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientation()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/camera/dualvideo/render/RenderManager;->setOrientation(I)V

    return-void
.end method

.method public synthetic OooO0O0(Lcom/android/camera2/Camera2Proxy;)V
    .locals 9

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/OoooOOo/o0ooOO0;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooOOo/o0ooOO0;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/Surface;

    .line 9
    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getOperatingMode(Lcom/android/camera2/Camera2Proxy;)I

    move-result v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v8, p0

    .line 10
    invoke-virtual/range {v1 .. v8}, Lcom/android/camera2/Camera2Proxy;->startVideoPreviewSession(Landroid/view/Surface;IILandroid/view/Surface;IZLcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V

    return-void
.end method

.method public synthetic OooO0O0(Lio/reactivex/SingleEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMultiRecorderManager:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->stopRecorder(Lio/reactivex/SingleEmitter;)V

    return-void
.end method

.method public synthetic OooO0O0(Ljava/lang/String;Lio/reactivex/CompletableEmitter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 11
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/dualvideo/render/RenderManager;

    sget-object v1, Lcom/android/camera/dualvideo/util/RenderSourceType;->REMOTE_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    sget-object v2, Lcom/android/camera/dualvideo/render/RenderUtil;->REMOTE_SIZE:Landroid/util/Size;

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/camera/dualvideo/render/RenderManager;->genOrUpdateRenderSource(Lcom/android/camera/dualvideo/util/RenderSourceType;Landroid/util/Size;Lio/reactivex/CompletableEmitter;)Landroid/view/Surface;

    move-result-object p2

    .line 12
    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mRemoteOnlineController:Lcom/android/camera/dualvideo/remote/RemoteOnlineController;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->startStreaming(Ljava/lang/String;Landroid/view/Surface;)V

    return-void
.end method

.method public synthetic OooO0OO(Lcom/android/camera/dualvideo/render/RenderManager;)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-static {v0}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO0o()V

    .line 4
    invoke-virtual {p1}, Lcom/android/camera/dualvideo/render/RenderManager;->stopRecording()V

    return-void
.end method

.method public synthetic OooO0OO(Lcom/android/camera2/Camera2Proxy;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mSubFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/camera2/FocusManager;->setAeAwbLock(Z)V

    .line 2
    invoke-virtual {p1, v1}, Lcom/android/camera2/Camera2Proxy;->setAELock(Z)V

    return-void
.end method

.method public synthetic OooO0Oo(Lcom/android/camera2/Camera2Proxy;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->isFacingFront()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v0, v0, Lcom/android/camera/module/video/UserRecordSetting;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    invoke-virtual {p1, v0}, Lcom/android/camera2/Camera2Proxy;->setBeautyValues(Lcom/android/camera/fragment/beauty/BeautyValues;)V

    :cond_0
    return-void
.end method

.method public synthetic OooO0o0(Lcom/android/camera2/Camera2Proxy;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    .line 2
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isFrontCameraId(I)Z

    move-result v1

    .line 3
    invoke-virtual {p1, v0, v1}, Lcom/android/camera2/Camera2Proxy;->setModuleParameter(II)V

    return-void
.end method

.method public synthetic OooO0oo()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->addOrDelRemoteConfig(Z)V

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->switchRenderRemoteItem()V

    return-void
.end method

.method public synthetic OooOO0()V
    .locals 4

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 4
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 5
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getTopAlert()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/OoooOOo/OooO00o;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooOOo/OooO00o;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 7
    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getMainContent()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/OoooOOo/o00000oo;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooOOo/o00000oo;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    .line 8
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public addOrDelRemoteConfig(Z)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getConfigs()Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/OoooOOo/OooOoO;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooOOo/OooOoO;

    .line 3
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    const/16 v1, 0x3e8

    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object v0

    const-string/jumbo v2, "remote"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->addExternalConfig(ILjava/lang/String;)Z

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->removeExternalConfig(I)V

    goto :goto_0

    .line 6
    :cond_1
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v1, "addOrDelRemoteConfig: miss match info!"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz p1, :cond_2

    .line 7
    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object p1

    sget-object v0, Lcom/android/camera/dualvideo/recorder/RecordType;->MERGED:Lcom/android/camera/dualvideo/recorder/RecordType;

    invoke-virtual {p1, v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->setRecordType(Lcom/android/camera/dualvideo/recorder/RecordType;)V

    :cond_2
    return-void
.end method

.method public applyZoomRatio()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getZoomRatio()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->applyZoomRatio(F)V

    return-void
.end method

.method public applyZoomRatio(F)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->isMultiCameraMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->applyZoomRatio(F)V

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->applyZoomForDevices(Lcom/android/camera2/Camera2Proxy;)V

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LOooO00o/OooO0O0/OooO00o/OoooOOo/o00o0O;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/OoooOOo/o00o0O;-><init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public cancelFocus(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeviceAndModuleAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrameAvailable()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    sget-object p1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v0, "cancelFocus: frame not available"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_1
    iget v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mCurrentTapId:I

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 5
    invoke-super {p0, p1}, Lcom/android/camera/module/VideoBase;->cancelFocus(Z)V

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 7
    :cond_3
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelFocus: sub camera resetFocusMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    if-eqz p1, :cond_4

    .line 8
    invoke-direct {p0, v0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->updateSubCameraFocusMode(I)V

    .line 9
    :cond_4
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/camera/SensorStateManager;->setFocusSensorEnabled(Z)V

    .line 10
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {p1, v1}, Lcom/android/camera2/Camera2Proxy;->cancelFocus(I)V

    .line 11
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraState()I

    move-result p1

    if-eq p1, v0, :cond_5

    .line 12
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setCameraState(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public varargs consumePreference([I)V
    .locals 5

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_a

    aget v3, p1, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_9

    const/4 v4, 0x3

    if-eq v3, v4, :cond_8

    const/16 v4, 0x13

    if-eq v3, v4, :cond_7

    const/16 v4, 0x18

    if-eq v3, v4, :cond_6

    const/16 v4, 0x1f

    if-eq v3, v4, :cond_5

    const/16 v4, 0x37

    if-eq v3, v4, :cond_4

    const/16 v4, 0x5f

    if-eq v3, v4, :cond_3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_1

    const/16 v4, 0xa

    if-eq v3, v4, :cond_0

    packed-switch v3, :pswitch_data_0

    goto :goto_2

    .line 2
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->updateVideoFocusMode()V

    goto :goto_2

    .line 3
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->updateBeauty()V

    goto :goto_2

    .line 4
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->setEvValue()V

    goto :goto_2

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->updateFlashPreference()V

    goto :goto_2

    .line 6
    :cond_1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v3

    invoke-virtual {v3}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o000O0oO()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "0"

    goto :goto_1

    .line 7
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->getAntiBanding()Ljava/lang/String;

    move-result-object v3

    .line 8
    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->updateAntiBanding(Ljava/lang/String;)V

    goto :goto_2

    .line 9
    :cond_3
    invoke-virtual {p0, p0}, Lcom/android/camera/module/BaseModule;->initializeMetaDataCallback(Lcom/android/camera/module/BaseModule;)V

    goto :goto_2

    .line 10
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->updateModuleRelated()V

    goto :goto_2

    .line 11
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->updateVideoStabilization()V

    goto :goto_2

    .line 12
    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->applyZoomRatio()V

    goto :goto_2

    .line 13
    :cond_7
    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->updateFpsRange()V

    goto :goto_2

    .line 14
    :cond_8
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->updateFocusArea(Z)V

    goto :goto_2

    .line 15
    :cond_9
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->updatePictureAndPreviewSize()V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public forceTrackLayoutType(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/dualvideo/render/RenderManager;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/RenderManager;->hasMiniComposeType()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "value_preview_mini"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "value_preview_equal"

    :goto_0
    if-nez p1, :cond_1

    .line 2
    sget-object p1, Lcom/android/camera/statistic/CameraStatUtils;->mLayoutType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    const-string p1, "attr_compose_type"

    .line 3
    invoke-static {p1, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackDualVideoCommonAttr(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sput-object v0, Lcom/android/camera/statistic/CameraStatUtils;->mLayoutType:Ljava/lang/String;

    return-void
.end method

.method public getRenderManager()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/camera/dualvideo/render/RenderManager;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mRenderManager:Lcom/android/camera/dualvideo/render/RenderManager;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getSubCamera2Device()Ljava/util/Optional;
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
    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mSubCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getTopAlert()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/camera/protocol/ModeProtocol$TopAlert;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 3
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public handleBackStack()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xab

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    .line 3
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->handleBackStackFromKeyBack()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasRemoteCamera()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getConfigs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/OoooOOo/Ooooo0o;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooOOo/Ooooo0o;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public initializeFocusManager()V
    .locals 8

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->initializeFocusManager()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    .line 4
    new-instance v7, Lcom/android/camera/module/loader/camera2/FocusManager;

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->isFacingFront()Z

    move-result v4

    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isSupportAFSaliency()Z

    move-result v6

    move-object v1, v7

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/module/loader/camera2/FocusManager;-><init>(Lcom/android/camera2/CameraCapabilities;Lcom/android/camera/module/loader/camera2/FocusManager$Listener;ZLandroid/os/Looper;Z)V

    iput-object v7, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mSubFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager;

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->isFacingFront()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    sget-object v1, Lcom/android/camera/dualvideo/render/RenderUtil;->FRONT_PREVIEW:Landroid/util/Size;

    goto :goto_0

    .line 10
    :cond_1
    sget-object v1, Lcom/android/camera/dualvideo/render/RenderUtil;->BACK_PREVIEW:Landroid/util/Size;

    .line 11
    :goto_0
    iget-object v2, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mSubFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/FocusManagerAbstract;->setRenderSize(II)V

    .line 12
    iget-object v2, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mSubFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v2, v3, v1}, Lcom/android/camera/module/loader/camera2/FocusManager;->setPreviewSize(II)V

    .line 13
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera2/Camera2Proxy;

    iget-object v2, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mFocusCallback:Lcom/android/camera2/Camera2Proxy$FocusCallback;

    invoke-virtual {v1, v2}, Lcom/android/camera2/Camera2Proxy;->setFocusCallback(Lcom/android/camera2/Camera2Proxy$FocusCallback;)V

    .line 14
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isAFRegionSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mSubFocusAreaSupported:Z

    .line 15
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isAERegionSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mSubMeteringAreaSupported:Z

    return-void
.end method

.method public isMultiCameraMode()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00OoOOo()Z

    move-result v0

    return v0
.end method

.method public isNeedMute()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v0, v0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean v0, v0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingPaused:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->isNeedMute()Z

    move-result v0

    return v0
.end method

.method public isRecordSuccess()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v1, "DualVideoRecordModule save successed, and ready to DualVideoGridModule"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mRecordSuccess:Z

    return v0
.end method

.method public isRecording()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMultiRecorderManager:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRecordingPaused()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMultiRecorderManager:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->isRecordingPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRenderAnimating()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/OoooOOo/OooO0o0;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooOOo/OooO0o0;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isZoomEnabled()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->isMultiCameraMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v0

    sget-object v2, LOooO00o/OooO0O0/OooO00o/OoooOOo/OooO0oo;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooOOo/OooO0oo;

    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public judgeTapableRectByUiStyle()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public notifyFocusAreaUpdate(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mCurrentTapId:I

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 3
    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->notifyFocusAreaUpdate(Z)V

    goto/16 :goto_1

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isAlive()Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_1

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-nez p1, :cond_3

    .line 6
    sget-object p1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "updateFocusArea: sub camera device is null!"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    .line 8
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getActiveArraySize(Lcom/android/camera2/CameraCapabilities;)Landroid/graphics/Rect;

    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getZoomRatio()F

    move-result v0

    invoke-static {v0, p1}, Lcom/android/camera/HybridZoomingSystem;->toCropRegionConsiderZoomRatio(FLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mSubFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager;

    .line 11
    invoke-virtual {v2, v0, p1}, Lcom/android/camera/module/loader/camera2/FocusManager;->getMeteringAreas(Landroid/graphics/Rect;Landroid/graphics/Rect;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    .line 12
    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/camera/SensorStateManager;->setFocusSensorEnabled(Z)V

    .line 13
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera2/Camera2Proxy;

    iget-object v2, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mSubFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-virtual {v2, v0, p1}, Lcom/android/camera/module/loader/camera2/FocusManager;->getMeteringAreas(Landroid/graphics/Rect;Landroid/graphics/Rect;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera2/Camera2Proxy;->setAERegions([Landroid/hardware/camera2/params/MeteringRectangle;)V

    .line 14
    iget-boolean v1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mSubFocusAreaSupported:Z

    if-eqz v1, :cond_5

    .line 15
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera2/Camera2Proxy;

    iget-object v2, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mSubFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-virtual {v2, v0, p1}, Lcom/android/camera/module/loader/camera2/FocusManager;->getFocusAreas(Landroid/graphics/Rect;Landroid/graphics/Rect;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/camera2/Camera2Proxy;->setAFRegions([Landroid/hardware/camera2/params/MeteringRectangle;)V

    .line 16
    :cond_5
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusMode()Ljava/lang/String;

    move-result-object p1

    .line 17
    iget-boolean v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mSubFocusAreaSupported:Z

    if-eqz v0, :cond_6

    const-string v0, "manual"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 18
    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->resumePreview()I

    :cond_7
    :goto_1
    return-void
.end method

.method public notifyLayoutTypeToRemoteDevice(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mRemoteOnlineController:Lcom/android/camera/dualvideo/remote/RemoteOnlineController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mRemoteOnlineController:Lcom/android/camera/dualvideo/remote/RemoteOnlineController;

    invoke-virtual {v0, p1}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->setLayoutType(I)V

    :cond_0
    return-void
.end method

.method public notifyRecordingStateToRemoteDevice(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mRemoteOnlineController:Lcom/android/camera/dualvideo/remote/RemoteOnlineController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mRemoteOnlineController:Lcom/android/camera/dualvideo/remote/RemoteOnlineController;

    invoke-virtual {v0, p1}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->setRecordingState(I)V

    :cond_0
    return-void
.end method

.method public onActionStop()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mKeepRecorderWhenSwitching:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->onActionStop()V

    return-void
.end method

.method public onAvailabilityStateChanged(Lcom/android/camera/dualvideo/remote/RemoteDevice;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getSetupWizard()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooOOo/Oooo0oO;

    invoke-direct {v1, p1}, LOooO00o/OooO0O0/OooO00o/OoooOOo/Oooo0oO;-><init>(Lcom/android/camera/dualvideo/remote/RemoteDevice;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public onCameraOpened()V
    .locals 4

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOo00()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getDefaultDualVideoCameraIds()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 3
    sget-object v3, Lcom/android/camera/dualvideo/util/RenderSourceType;->SUB_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/android/camera/dualvideo/util/RenderSourceType;->MAIN_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v1, v2

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LOooO00o/OooO0O0/OooO00o/OoooOOo/OooooOo;

    invoke-direct {v2, v1}, LOooO00o/OooO0O0/OooO00o/OoooOOo/OooooOo;-><init>([I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setMtkPipDevices([I)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/OoooOOo/OoooOoo;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooOOo/OoooOoo;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->updateBeauty()V

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->initializeFocusManager()V

    .line 9
    sget-object v0, Lcom/android/camera/constant/UpdateConstant;->VIDEO_TYPES_INIT:[I

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updatePreferenceTrampoline([I)V

    .line 10
    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->onCameraOpened()V

    .line 11
    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->startPreviewSession()V

    .line 12
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v0

    iput v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mCurrentTapId:I

    return-void
.end method

.method public onConnectivityStateChanged(Lcom/android/camera/dualvideo/remote/RemoteDevice;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getSetupWizard()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LOooO00o/OooO0O0/OooO00o/OoooOOo/OooOoo;

    invoke-direct {v2, p1}, LOooO00o/OooO0O0/OooO00o/OoooOOo/OooOoo;-><init>(Lcom/android/camera/dualvideo/remote/RemoteDevice;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mRemoteOnlineController:Lcom/android/camera/dualvideo/remote/RemoteOnlineController;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->isConnectionSuspended()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget v1, p1, Lcom/android/camera/dualvideo/remote/RemoteDevice;->connectivity:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 p1, 0x3

    if-eq v1, p1, :cond_2

    const/4 p1, 0x7

    if-eq v1, p1, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mRemoteOnlineController:Lcom/android/camera/dualvideo/remote/RemoteOnlineController;

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->isStreaming()Z

    move-result p1

    .line 6
    sget-object v1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopStreaming: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_3

    .line 8
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getSetupWizard()Ljava/util/Optional;

    move-result-object p1

    sget-object v0, LOooO00o/OooO0O0/OooO00o/OoooOOo/o00000OO;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooOOo/o00000OO;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mRemoteOnlineController:Lcom/android/camera/dualvideo/remote/RemoteOnlineController;

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->stopStreaming()V

    .line 10
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->releaseRemote()V

    .line 11
    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->updateRemoteCameraTopIcon()V

    goto :goto_0

    .line 12
    :cond_4
    invoke-virtual {p1}, Lcom/android/camera/dualvideo/remote/RemoteDevice;->getUrl()Ljava/lang/String;

    move-result-object p1

    .line 13
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startStreaming"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    sget-object v0, LOooO00o/OooO0O0/OooO00o/OoooOOo/OooOo0O;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooOOo/OooOo0O;

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackRemoteOnlineParams(Lcom/android/camera/statistic/CameraStatUtils$ParameterBuilder;)V

    .line 15
    new-instance v0, LOooO00o/OooO0O0/OooO00o/OoooOOo/oo000o;

    invoke-direct {v0, p0, p1}, LOooO00o/OooO0O0/OooO00o/OoooOOo/oo000o;-><init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    .line 16
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object p1

    new-instance v0, LOooO00o/OooO0O0/OooO00o/OoooOOo/ooOO;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/OoooOOo/ooOO;-><init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;)V

    .line 17
    invoke-virtual {p1, v0}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    :goto_0
    return-void

    .line 18
    :cond_5
    :goto_1
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConnectivityStateChanged: suspended: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(II)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/EffectController;->setEffect(I)V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->initRenderTrigger()V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCookieStore()Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;->getCookies()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;

    .line 5
    sget-object v2, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enumerating: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getLocalCameraId()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    .line 7
    iget-object v3, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v3, :cond_0

    .line 8
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    .line 9
    invoke-virtual {v2}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v2

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getIds()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    sget-object v4, Lcom/android/camera/dualvideo/util/RenderSourceType;->SUB_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 10
    sget-object v2, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setCameraDevice: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object v1, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    iput-object v1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mSubCamera2Device:Lcom/android/camera2/Camera2Proxy;

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/SensorStateManager;->setSensorStateListener(Lcom/android/camera/SensorStateManager$SensorStateListener;)V

    .line 13
    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->registerRenderManager()V

    .line 14
    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->registerRecorderManager()V

    .line 15
    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->registerRemoteService()V

    .line 16
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onCreate(II)V

    const-string p1, "continuous-video"

    .line 17
    iput-object p1, p0, Lcom/android/camera/module/VideoBase;->mVideoFocusMode:Ljava/lang/String;

    .line 18
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->onCameraOpened()V

    return-void
.end method

.method public onDeparted()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onDeparted()V

    return-void
.end method

.method public onLongPress(FF)V
    .locals 0

    return-void
.end method

.method public onOrientationChanged(III)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/module/VideoBase;->onOrientationChanged(III)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mRotateAnimator:Lcom/android/camera/dualvideo/view/RotateAnimator;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1, p2}, Lcom/android/camera/dualvideo/view/RotateAnimator;->onOrientationChanged(I)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    new-instance v1, Lcom/android/camera/dualvideo/DualVideoModuleBase$1;

    invoke-direct {v1, p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase$1;-><init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mRotateAnimator:Lcom/android/camera/dualvideo/view/RotateAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/dualvideo/view/RotateAnimator;->clear()V

    .line 4
    iput-object v1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mRotateAnimator:Lcom/android/camera/dualvideo/view/RotateAnimator;

    .line 5
    :cond_0
    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->onPause()V

    .line 6
    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mRenderTrigger:Lcom/android/camera/dualvideo/render/RenderTrigger;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/RenderTrigger;->release()V

    .line 7
    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mRemoteOnlineController:Lcom/android/camera/dualvideo/remote/RemoteOnlineController;

    invoke-virtual {v0, v1}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->setAvailabilityCallback(Lcom/android/camera/dualvideo/remote/AvailabilityCallback;)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mRemoteOnlineController:Lcom/android/camera/dualvideo/remote/RemoteOnlineController;

    invoke-virtual {v0, v1}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->setConnectivityCallback(Lcom/android/camera/dualvideo/remote/ConnectivityCallback;)V

    return-void
.end method

.method public onPreviewSessionSuccess(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mSubCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->getDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mSubCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x3

    .line 3
    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->updateSubCameraFocusMode(I)V

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object p1

    sget-object v0, LOooO00o/OooO0O0/OooO00o/OoooOOo/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooOOo/OooO0O0;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcom/android/camera/constant/UpdateConstant;->VIDEO_TYPES_ON_PREVIEW_SUCCESS:[I

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    .line 6
    invoke-super {p0, p1}, Lcom/android/camera/module/VideoBase;->onPreviewSessionSuccess(Landroid/hardware/camera2/CameraCaptureSession;)V

    :goto_0
    return-void
.end method

.method public onPreviewStart()V
    .locals 0

    return-void
.end method

.method public onRenderRequested()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mRenderTrigger:Lcom/android/camera/dualvideo/render/RenderTrigger;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mRenderTrigger:Lcom/android/camera/dualvideo/render/RenderTrigger;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/RenderTrigger;->mainFrameAvailable()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/RenderEngineAdapter;->requestRender()V

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->tryAnimBlackCover()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->onResume()V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->registerRenderManager()V

    .line 3
    new-instance v0, Lcom/android/camera/dualvideo/view/RotateAnimator;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientationCompensation()I

    move-result v1

    rsub-int v1, v1, 0x168

    invoke-direct {v0, v1}, Lcom/android/camera/dualvideo/view/RotateAnimator;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mRotateAnimator:Lcom/android/camera/dualvideo/view/RotateAnimator;

    .line 4
    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mRemoteOnlineController:Lcom/android/camera/dualvideo/remote/RemoteOnlineController;

    invoke-virtual {v0, p0}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->setAvailabilityCallback(Lcom/android/camera/dualvideo/remote/AvailabilityCallback;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mRemoteOnlineController:Lcom/android/camera/dualvideo/remote/RemoteOnlineController;

    invoke-virtual {v0, p0}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->setConnectivityCallback(Lcom/android/camera/dualvideo/remote/ConnectivityCallback;)V

    return-void
.end method

.method public onSingleTapUp(IIZ)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isPaused()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 2
    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->hasCameraException()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 5
    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->isPreviewReady()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->isInTapableRect(II)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->isRenderAnimating()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->ismDrawGridWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xab

    .line 9
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    if-eqz v0, :cond_4

    .line 10
    invoke-interface {v0, p1, p2}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->handleBackStackFromTapDown(II)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/dualvideo/render/RenderManager;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/dualvideo/render/RenderManager;->getRenderComposeTypeByPosition(FF)Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v0

    .line 12
    sget-object v3, Lcom/android/camera/dualvideo/render/LayoutType;->UNDEFINED:Lcom/android/camera/dualvideo/render/LayoutType;

    if-ne v0, v3, :cond_3

    return-void

    .line 13
    :cond_3
    invoke-static {}, Lcom/android/camera/module/common/ModuleUtil;->getMainProtocol()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setFocusViewType(Z)V

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/camera/module/VideoBase;->mTouchFocusStartingTime:J

    .line 15
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 16
    invoke-virtual {p0, v3}, Lcom/android/camera/module/BaseModule;->mapTapCoordinate(Ljava/lang/Object;)V

    .line 17
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->unlockAEAF()V

    .line 18
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    const/4 p2, 0x2

    invoke-interface {p1, p2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setCameraState(I)V

    .line 19
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/dualvideo/render/RenderManager;

    invoke-virtual {p1, v1, v2}, Lcom/android/camera/dualvideo/render/RenderManager;->getIdByPosition(FF)I

    move-result p1

    iput p1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mCurrentTapId:I

    .line 20
    iget p1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mCurrentTapId:I

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getFocusManager(I)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, LOooO00o/OooO0O0/OooO00o/OoooOOo/o000oOoO;

    invoke-direct {p2, p0, v0, v3, p3}, LOooO00o/OooO0O0/OooO00o/OoooOOo/o000oOoO;-><init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;Lcom/android/camera/dualvideo/render/LayoutType;Landroid/graphics/Point;Z)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public pausePreview()V
    .locals 0

    return-void
.end method

.method public reStartCurrentModule()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "switchSelecteWindowToRecord: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->isRenderAnimating()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMainFrameIsAvailable:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/OoooOOo/OoooO0O;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooOOo/OoooO0O;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/OoooOOo/OooO0Oo;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooOOo/OooO0Oo;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/RenderEngineAdapter;->requestRender()V

    const/4 v0, 0x0

    const/4 v1, 0x7

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/BaseModule;->switchCameraLens(ZI)V

    :cond_1
    :goto_0
    return-void
.end method

.method public registerProtocol()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->registerProtocol()V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa9

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImplFactory()Lcom/android/camera/module/impl/ImplFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/module/impl/ImplFactory;->initAdditional(Lcom/android/camera/ActivityBase;[I)V

    return-void

    nop

    :array_0
    .array-data 4
        0xa4
        0xae
        0xea
        0xd4
    .end array-data
.end method

.method public releaseRemote()V
    .locals 0

    return-void
.end method

.method public resetEvValue()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->resetEvValue()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/OoooOOo/OoooOoO;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooOOo/OoooOoO;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public resetFocusState(D)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/VideoBase;->resetFocusState(D)V

    .line 2
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetFocusState: isRecording="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->isRecording()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isNeedCancelAutoFocus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mSubFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager;

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v2}, Lcom/android/camera/module/loader/camera2/FocusManager;->isNeedCancelAutoFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mSubFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/FocusManager;->isNeedCancelAutoFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->isRecording()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mSubFocusManager:Lcom/android/camera/module/loader/camera2/FocusManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/module/loader/camera2/FocusManager;->onDeviceKeepMoving(D)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    invoke-static {}, Lcom/android/camera/module/common/ModuleUtil;->getMainProtocol()Ljava/util/Optional;

    move-result-object p1

    sget-object p2, LOooO00o/OooO0O0/OooO00o/OoooOOo/OoooooO;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooOOo/OoooooO;

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1
    return-void
.end method

.method public resumePreview()V
    .locals 0

    return-void
.end method

.method public setEvValue()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mCurrentTapId:I

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/OoooOOo/OooOooo;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooOOo/OooOooo;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 4
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->setEvValue()V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setAWBLock(Z)V

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooOOo/OoooOOo;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooOOo/OoooOOo;-><init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :goto_0
    return-void
.end method

.method public setFlashMode(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->setFlashMode(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getFlashMode()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object p1

    sget-object v0, LOooO00o/OooO0O0/OooO00o/OoooOOo/OooOOoo;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooOOo/OooOOoo;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object p1

    sget-object v0, LOooO00o/OooO0O0/OooO00o/OoooOOo/o00Ooo;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooOOo/o00Ooo;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :goto_0
    return-void
.end method

.method public setFrameAvailable(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/module/VideoBase;->setFrameAvailable(Z)V

    .line 2
    iput-boolean p1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMainFrameIsAvailable:Z

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object p1

    sget-object v0, LOooO00o/OooO0O0/OooO00o/OoooOOo/OoooOO0;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooOOo/OoooOO0;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public setOrientationParameter()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->setOrientationParameter()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooOOo/Oooo000;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooOOo/Oooo000;-><init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setRecordSuccess(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mRecordSuccess:Z

    return-void
.end method

.method public showModeSwitchLayout(Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getModeSelector()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooOOo/Oooo;

    invoke-direct {v1, p0, p1}, LOooO00o/OooO0O0/OooO00o/OoooOOo/Oooo;-><init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;Z)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public showOrHideBottom(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActionProcess()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooOOo/o0OoOo0;

    invoke-direct {v1, p1}, LOooO00o/OooO0O0/OooO00o/OoooOOo/o0OoOo0;-><init>(Z)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public startFocus()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeviceAndModuleAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrameAvailable()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v1, "cancelFocus: frame not available"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_1
    iget v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mCurrentTapId:I

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 5
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->startFocus()V

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startFocus: sub camera"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/SensorStateManager;->setFocusSensorEnabled(Z)V

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera2/Camera2Proxy;

    iget-object v2, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mFocusCallback:Lcom/android/camera2/Camera2Proxy$FocusCallback;

    invoke-virtual {v0, v2}, Lcom/android/camera2/Camera2Proxy;->setFocusCallback(Lcom/android/camera2/Camera2Proxy$FocusCallback;)V

    .line 10
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera2/Camera2Proxy;

    invoke-static {v1}, Lcom/android/camera/module/loader/camera2/FocusTask;->create(I)Lcom/android/camera/module/loader/camera2/FocusTask;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera2/Camera2Proxy;->startFocus(Lcom/android/camera/module/loader/camera2/FocusTask;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public startPreview()V
    .locals 0

    return-void
.end method

.method public stopVideoRecording(Z)V
    .locals 6

    .line 1
    sget-object p1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "stopVideoRecording: "

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->setRecordSuccess(Z)V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v0

    sget-object v2, LOooO00o/OooO0O0/OooO00o/OoooOOo/o0000Ooo;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooOOo/o0000Ooo;

    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->isMultiCameraMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->switchThumbnailFunction(Z)V

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v0

    sget-object v2, LOooO00o/OooO0O0/OooO00o/OoooOOo/OoooO00;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooOOo/OoooO00;

    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mRenderCaptureTimes:I

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LOooO00o/OooO0O0/OooO00o/OoooOOo/o00ooo;

    invoke-direct {v2, p0}, LOooO00o/OooO0O0/OooO00o/OoooOOo/o00ooo;-><init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0, v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setCameraAudioRestriction(Z)V

    .line 10
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v2

    invoke-static {v0, v2, v1}, Lcom/android/camera/SoundSetting;->setNoiseReductionState(Landroid/content/Context;IZ)V

    .line 11
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/camera/SoundSetting;->closeKaraokeState(Landroid/content/Context;I)V

    .line 12
    iget-boolean v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mIsStopKaraoke:Z

    if-eqz v0, :cond_2

    .line 13
    iput-boolean v1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mIsStopKaraoke:Z

    .line 14
    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mAudioMonitorPlayer:Lcom/android/camera/AudioMonitorPlayer;

    if-eqz v0, :cond_2

    .line 15
    invoke-virtual {v0}, Lcom/android/camera/AudioMonitorPlayer;->stopPlay()V

    .line 16
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/camera/SoundSetting;->closeKaraokeEquipment(Landroid/content/Context;I)V

    .line 17
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopVideoRecording>>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMultiRecorderManager:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    invoke-virtual {v3}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->isRecording()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iget-object p1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMultiRecorderManager:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->isRecording()Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 p1, 0x4

    .line 19
    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->notifyRecordingStateToRemoteDevice(I)V

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 21
    invoke-static {}, Lcom/android/camera/module/common/ModuleUtil;->getMainProtocol()Ljava/util/Optional;

    move-result-object p1

    sget-object v0, LOooO00o/OooO0O0/OooO00o/OoooOOo/o0000;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooOOo/o0000;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 22
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    .line 23
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xd4

    .line 24
    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    if-eqz p1, :cond_4

    .line 25
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onFinish()V

    .line 26
    :cond_4
    iget-object p1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMultiRecorderManager:Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;

    iget v0, p1, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->mStatPausedTimes:I

    iput v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mRecorderPausedTimes:I

    .line 27
    iget p1, p1, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->mStatResumeTimes:I

    iput p1, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mRecorderResumeTimes:I

    .line 28
    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->trackDualVideo()V

    const-wide/16 v4, 0x0

    .line 29
    iput-wide v4, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mVideoRecordTime:J

    .line 30
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->hasRemoteCamera()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 31
    sget-object p1, LOooO00o/OooO0O0/OooO00o/OoooOOo/OooOoO0;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooOOo/OooOoO0;

    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackRemoteOnlineParams(Lcom/android/camera/statistic/CameraStatUtils$ParameterBuilder;)V

    .line 32
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->stopRecorder()V

    .line 33
    iget-object p1, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iput-boolean v1, p1, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderRecording:Z

    .line 34
    iget-object p1, p0, Lcom/android/camera/module/VideoBase;->mRecordRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iput-boolean v1, p1, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingPaused:Z

    .line 35
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isPaused()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result p1

    if-nez p1, :cond_6

    const/4 p1, 0x3

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    .line 37
    :cond_6
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {p1}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/AutoLockManager;->hibernateDelayed()V

    .line 38
    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->exitSavePowerMode()V

    .line 39
    sget-object p1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopVideoRecording<<time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->switchToGridWindow(I)V

    .line 41
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz p1, :cond_7

    .line 42
    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/ThumbnailUpdater;->getLastThumbnail()V

    :cond_7
    return-void
.end method

.method public supportMultiCaptureByRunningCondition()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportMultiCaptureByStableCondition()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public switchRemoteCamera()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mRemoteOnlineController:Lcom/android/camera/dualvideo/remote/RemoteOnlineController;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->isStreaming()Z

    move-result v0

    const-string v1, "attr_rol_suw_menu"

    if-nez v0, :cond_2

    const/4 v0, 0x0

    const-string v2, "cam.rcs.debug.streaming_url"

    .line 3
    invoke-static {v2, v0}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    sget-object v1, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startStreaming"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooOOo/o00oO0O;

    invoke-direct {v1, p0, v0}, LOooO00o/OooO0O0/OooO00o/OoooOOo/o00oO0O;-><init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;Ljava/lang/String;)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    .line 7
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooOOo/OooOOo0;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooOOo/OooOOo0;-><init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "open"

    .line 8
    invoke-static {v1, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackRemoteOnlineClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->showSetupWizard()V

    goto :goto_0

    :cond_2
    const-string v0, "close"

    .line 10
    invoke-static {v1, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackRemoteOnlineClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 12
    sget-object v1, Lcom/android/camera/fragment/dialog/RemoteOnlineExitDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->showDialogFragment(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public switchRenderRemoteItem()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->updateRemoteCameraTopIcon()V

    return-void
.end method

.method public switchThumbnailFunction(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActionProcess()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooOOo/OoooOOO;

    invoke-direct {v1, p0, p1}, LOooO00o/OooO0O0/OooO00o/OoooOOo/OoooOOO;-><init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;Z)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public switchToGridWindow(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->isMultiCameraMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->isRenderAnimating()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMainFrameIsAvailable:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/dualvideo/render/RenderManager;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/RenderManager;->isDrawBlur()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningDualVideo()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->ismDrawGridWindow()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->switchThumbnailFunction(Z)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->setmDrawGridWindow(Z)V

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v0

    sget-object v2, LOooO00o/OooO0O0/OooO00o/OoooOOo/Oooooo;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooOOo/Oooooo;

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v0

    sget-object v2, LOooO00o/OooO0O0/OooO00o/OoooOOo/o00000O;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooOOo/o00000O;

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v0

    sget-object v2, LOooO00o/OooO0O0/OooO00o/OoooOOo/o00Oo0;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooOOo/o00Oo0;

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/RenderEngineAdapter;->requestRender()V

    .line 10
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {p0, v1, p1}, Lcom/android/camera/module/BaseModule;->switchCameraLens(ZI)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0, p1}, Lcom/android/camera/module/BaseModule;->switchCameraLens(ZI)V

    :cond_2
    :goto_0
    return-void
.end method

.method public declared-synchronized tryAnimBlackCover()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mSubFrameReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mMainFrameIsAvailable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mCoverAnimNeed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/dualvideo/DualVideoModuleBase;->mCoverAnimNeed:Z

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooOOo/o0ooOOo;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooOOo/o0ooOOo;-><init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unRegisterModulePersistProtocol()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->setExternalFrameProcessor(Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;)V

    .line 2
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->unRegisterModulePersistProtocol()V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getRenderManager()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/OoooOOo/OooO0o;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooOOo/OooO0o;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImplFactory()Lcom/android/camera/module/impl/ImplFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/impl/ImplFactory;->detachModulePersistent()V

    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->unRegisterProtocol()V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa9

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImplFactory()Lcom/android/camera/module/impl/ImplFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/impl/ImplFactory;->detachAdditional()V

    return-void
.end method

.method public unlockAEAF()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/VideoBase;->unlockAEAF()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooOOo/OoooOo0;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooOOo/OoooOo0;-><init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public updateAntiBanding(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->updateAntiBanding(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeviceAndModuleAlive()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getAntiBanding()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/camera2/Camera2Proxy;->setAntiBanding(I)V

    :cond_0
    return-void
.end method

.method public updateBeauty()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v1, v0, Lcom/android/camera/module/video/UserRecordSetting;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/android/camera/fragment/beauty/BeautyValues;

    invoke-direct {v1}, Lcom/android/camera/fragment/beauty/BeautyValues;-><init>()V

    iput-object v1, v0, Lcom/android/camera/module/video/UserRecordSetting;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v0, v0, Lcom/android/camera/module/video/UserRecordSetting;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    const/16 v1, 0x28

    iput v1, v0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySkinSmooth:I

    .line 4
    iput v1, v0, Lcom/android/camera/fragment/beauty/BeautyValues;->mBeautySlimFace:I

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->isFacingFront()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v1, v1, Lcom/android/camera/module/video/UserRecordSetting;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setBeautyValues(Lcom/android/camera/fragment/beauty/BeautyValues;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooOOo/OooooOO;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooOOo/OooooOO;-><init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :goto_0
    return-void
.end method

.method public updateModuleRelated()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->updateModuleRelated()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->getSubCamera2Device()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooOOo/OooOo;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooOOo/OooOo;-><init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public updatePictureAndPreviewSize()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->isFacingFront()Z

    move-result v0

    const/16 v1, 0x780

    const/16 v2, 0x438

    if-nez v0, :cond_2

    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00oO0O:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/dualvideo/DualVideoModuleUtil;->getUIStyle()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/camera/CameraSize;

    const/16 v3, 0x5a0

    invoke-direct {v0, v3, v2}, Lcom/android/camera/CameraSize;-><init>(II)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/camera/CameraSize;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/CameraSize;-><init>(II)V

    .line 3
    :goto_0
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v3, v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setPreviewSize(Lcom/android/camera/CameraSize;)V

    goto :goto_2

    .line 4
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    new-instance v3, Lcom/android/camera/CameraSize;

    const/16 v4, 0x500

    const/16 v5, 0x2d0

    invoke-direct {v3, v4, v5}, Lcom/android/camera/CameraSize;-><init>(II)V

    invoke-interface {v0, v3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setPreviewSize(Lcom/android/camera/CameraSize;)V

    .line 5
    :goto_2
    iget-object v0, p0, Lcom/android/camera/module/VideoBase;->mUserRecordSetting:Lcom/android/camera/module/video/UserRecordSetting;

    new-instance v3, Lcom/android/camera/CameraSize;

    invoke-direct {v3, v1, v2}, Lcom/android/camera/CameraSize;-><init>(II)V

    iput-object v3, v0, Lcom/android/camera/module/video/UserRecordSetting;->mVideoSize:Lcom/android/camera/CameraSize;

    .line 6
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePictureAndPreviewSize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    iget v0, v0, Lcom/android/camera/CameraSize;->width:I

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v1

    iget v1, v1, Lcom/android/camera/CameraSize;->height:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/BaseModule;->updateCameraScreenNailSize(II)V

    return-void
.end method

.method public updateVideoStabilization()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeviceAndModuleAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isMovieSolidOn()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "videoStabilization: EIS"

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera2/Camera2Proxy;->setEnableOIS(Z)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setEnableEIS(Z)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isEISPreviewSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/SurfaceTextureScreenNail;->setVideoStabilizationCropped(Z)V

    goto :goto_0

    .line 8
    :cond_1
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "videoStabilization: OIS"

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera2/Camera2Proxy;->setEnableEIS(Z)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setEnableOIS(Z)V

    .line 11
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/SurfaceTextureScreenNail;->setVideoStabilizationCropped(Z)V

    :cond_2
    :goto_0
    return-void
.end method
